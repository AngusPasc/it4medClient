unit TCClient;

{JRT}
  {$DEFINE USE_TC_CLIENT_COMMAND_LINE}
  {$DEFINE MULTIPLE_MODULES}
{}
{$LONGSTRINGS ON}

interface

uses {$IFDEF MULTIPLE_MODULES} ShareMem, {$ENDIF} TypInfo, ActiveX;

const
  CMakeAsTCClient = '/MakeAsTCClient';

  function GetIDispatch(AObject: Pointer): IDispatch;

type
  TCallType = (cRegister, cPascal, cCdecl, cStdCall, cSafeCall);
  TMethodType = (mtProc, mtMethod, mtClassMethod, mtConstructor, mtDestructor);
  PArgList = PVariantArgList;
  TPropGetProc = function(Instance : TObject; Index : PArgList) : OleVariant;
  TPropSetProc = procedure(Instance : TObject; Params : PArgList);

const
  PCharTypeInfo     = 1;
  PWideCharTypeInfo = 2;
  RealTypeInfo      = 3;
  UntypedTypeInfo   = 4;
  ArrayOfConstInfo  = 5;
  PointerInfo       = 6;
  PWideCharInfo     = 7;

  TypeInfoPChar         = pointer(PCharTypeInfo);
  TypeInfoPWideChar     = pointer(PWideCharTypeInfo);
  TypeInfoReal          = pointer(RealTypeInfo);
  TypeInfoUntyped       = pointer(UntypedTypeInfo);
  TypeInfoArrayOfConst  = pointer(ArrayOfConstInfo);
  TypeInfoPointer       = pointer(PointerInfo);

  MinVMTOffset = - 200;

var
  NoParams : array [0..0] of PTypeInfo = (pointer(1));

  procedure RegisterProc(AClass : TClass; const ProcName : string; MethodType : TMethodType;
            ProcInfo : PTypeInfo; Params : array of PTypeInfo; addr : pointer; CallType : TCallType);

  procedure RegisterProperty(AClass : TClass; const PropName : string;
            AGetProc : TPropGetProc; ASetProc : TPropSetProc);

  procedure RegisterIndexedProperty(AClass : TClass; const PropName : string;
            AIndexCount : integer; IsDefault : boolean;
            AGetProc : TPropGetProc; ASetProc : TPropSetProc);

  procedure RegRegisterMethod(AClass : TClass; const ProcName : string;
            ProcInfo : PTypeInfo; Params : array of PTypeInfo; addr : pointer);

  procedure RegisterClasses_(AClasses : array of TClass);

  procedure RegisterEvent(ProcInfo : PTypeInfo; Params : array of PTypeInfo);

  function VarFromObject(Instance : TObject) : OleVariant;
  function VarFromSet(const s; size : Integer) : Integer;
  procedure VarToSet(var s; size : Integer; const v : OleVariant);
  function VarToObject(const v : OleVariant) : TObject;
  function VarToChar(const v : OleVariant) : Char;
  function VarToPointer(const v : OleVariant) : Pointer;
  function VarToInterface(const v: Variant): IDispatch;
  function ArrayInfo(TInfo : PTypeInfo) : PTypeInfo;

  procedure RemoveClient;
  procedure InitClient;

implementation

uses Windows, Classes, Controls, Forms, SysUtils, OleCtrls;

type
  TRegisterProc = procedure(AClass : TClass; const ProcName : string; MethodType : TMethodType;
            ProcInfo : PTypeInfo; Params : array of PTypeInfo; addr : pointer; CallType : TCallType);

  TRegisterProperty = procedure(AClass : TClass; const PropName : string;
            AGetProc : TPropGetProc; ASetProc : TPropSetProc);

  TRegisterIndexedProperty = procedure(AClass : TClass; const PropName : string;
            AIndexCount : integer; IsDefault : boolean;
            AGetProc : TPropGetProc; ASetProc : TPropSetProc);

  TRegRegisterMethod = procedure(AClass : TClass; const ProcName : string;
            ProcInfo : PTypeInfo; Params : array of PTypeInfo; addr : pointer);

  TRegisterClasses = procedure(AClasses : array of TClass);

  TRegisterEvent = procedure(ProcInfo : PTypeInfo; Params : array of PTypeInfo);

  TVarFromObject        = function(Instance : TObject) : OleVariant;
  TVarFromSet           = function(const s; size : Integer) : Integer;
  TVarToSet             = procedure(var s; size : Integer; const v : OleVariant);
  TVarToObject          = function(const v : OleVariant) : TObject;
  TVarToChar            = function(const v : OleVariant) : Char;
  TVarToPointer         = function(const v : OleVariant) : Pointer;
  TVarToInterface       = function(const v: Variant) : IDispatch;
  TArrayInfo            = function(TInfo : PTypeInfo) : PTypeInfo;
  TGetIDispatch         = function(AObject: Pointer) : IDispatch; 

var
  _RegisterProc                  : TRegisterProc;
  _RegisterProperty              : TRegisterProperty;
  _RegisterIndexedProperty       : TRegisterIndexedProperty;
  _RegisterClasses               : TRegisterClasses;
  _RegisterEvent                 : TRegisterEvent;
  _RegRegisterMethod             : TRegRegisterMethod;

  _VarFromObject                 : TVarFromObject;
  _VarFromSet                    : TVarFromSet;
  _VarToSet                      : TVarToSet;
  _VarToObject                   : TVarToObject;
  _VarToChar                     : TVarToChar;
  _VarToPointer                  : TVarToPointer;
  _VarToInterface                : TVarToInterface;
  _ArrayInfo                     : TArrayInfo;
  _GetIDispatch                  : TGetIDispatch;
  DllHandle                      : THandle;

function TComponent_GetComponentCount(FComponent: Pointer): Integer;
begin
  Result := TComponent(FComponent).ComponentCount;
end;

function TComponent_GetComponents(FComponent: Pointer; Index: Integer): Pointer;
begin
  Result := TComponent(FComponent).Components[Index];
end;

function TComponent_GetName(FComponent: Pointer): String;
begin
  Result := TComponent(FComponent).Name;
end;

function TComponent_GetOwner(FComponent: Pointer): Pointer;
begin
  Result := TComponent(FComponent).Owner;
end;

function TComponent_FunFindComponent(FComponent: Pointer; Name: String): Pointer;
begin
  Result := TComponent(FComponent).FindComponent(String(Name));
end;

procedure TControl_FunClientToScreen(FControl: Pointer; var Point: TPoint);
begin
  Point := TControl(FControl).ClientToScreen(Point);
end;

procedure TControl_FunScreenToClient(FControl: Pointer; var Point: TPoint);
begin
  Point := TControl(FControl).ScreenToClient(Point);
end;

function TControl_GetParent(FControl: Pointer): Pointer;
begin
  Result := TControl(FControl).Parent;
end;

function TControl_GetEnabled(FControl: Pointer): Boolean;
begin
  Result := TControl(FControl).Enabled;
end;

function TControl_GetVisible(FControl: Pointer): Boolean;
begin
  Result := TControl(FControl).Visible;
end;

function TControl_GetWidth(FControl: Pointer): Integer;
begin
  Result := TControl(FControl).Width;
end;

function TControl_GetHeight(FControl: Pointer): Integer;
begin
  Result := TControl(FControl).Height;
end;

function TControl_GetLeft(FControl: Pointer): Integer;
begin
  Result := TControl(FControl).Left;
end;

function TControl_GetTop(FControl: Pointer): Integer;
begin
  Result := TControl(FControl).Top;
end;

type
  TWinControlEx = class(TWinControl)
    function _Handle: HWND;
  end;

  function TWinControlEx._Handle: HWND;
  begin
    Result := WindowHandle;
  end;

function TWinControl_GetHandle(FWinControl: Pointer): Integer;
begin
  Result := TWinControlEx(FWinControl)._Handle;
end;

function TWinControl_FunControlAtPos(FWinControl: Pointer; Pos: TPoint): Pointer;
begin
  Result := TWinControl(FWinControl).ControlAtPos(Pos, True);
end;

function TOleControl_GetOleObject(FOleControl: Pointer): Variant;
begin
  Result := TOleControl(FOleControl).OleObject;
end;

function TScreen_GetDataModules(Index: Integer): Pointer;
begin
  Result := Screen.DataModules[Index];
end;

function TScreen_GetDataModuleCount: Integer;
begin
  Result := Screen.DataModuleCount;
end;

function FunFindControl(Handle: HWnd): Pointer;
begin
  Result := FindControl(Handle);
end;

procedure FunGetMemoryManager(var MemMgr: TMemoryManager);
begin
  GetMemoryManager(MemMgr);
end;

// ----------------------------------------

function GetIDispatch(AObject: Pointer): IDispatch;
begin
  if DllHandle <> 0 then
    Result := _GetIDispatch(AObject);
end;

procedure RegisterProc(AClass : TClass; const ProcName : string; MethodType : TMethodType;
            ProcInfo : PTypeInfo; Params : array of PTypeInfo; addr : pointer; CallType : TCallType);
begin
  if DllHandle <> 0 then
    _RegisterProc(AClass, ProcName, MethodType, ProcInfo, Params, addr, CallType);
end;

procedure RegisterProperty(AClass : TClass; const PropName : string;
            AGetProc : TPropGetProc; ASetProc : TPropSetProc);
begin
  if DllHandle <> 0 then
    _RegisterProperty(AClass, PropName, AGetProc, ASetProc);
end;

procedure RegisterIndexedProperty(AClass : TClass; const PropName : string;
            AIndexCount : integer; IsDefault : boolean;
            AGetProc : TPropGetProc; ASetProc : TPropSetProc);
begin
  if DllHandle <> 0 then
    _RegisterIndexedProperty(AClass, PropName, AIndexCount, IsDefault, AGetProc, ASetProc);
end;

procedure RegRegisterMethod(AClass : TClass; const ProcName : string;
            ProcInfo : PTypeInfo; Params : array of PTypeInfo; addr : pointer);
begin
  if DllHandle <> 0 then
    _RegRegisterMethod(AClass, ProcName, ProcInfo, Params, addr);
end;

procedure RegisterClasses_(AClasses : array of TClass);
begin
  if DllHandle <> 0 then
    _RegisterClasses(AClasses);
end;

procedure RegisterEvent(ProcInfo : PTypeInfo; Params : array of PTypeInfo);
begin
  if DllHandle <> 0 then
    _RegisterEvent(ProcInfo, Params);
end;

function VarFromObject(Instance : TObject) : OleVariant;
begin
  if DllHandle <> 0 then
    Result := _VarFromObject(Instance);
end;

function VarFromSet(const s; size : Integer) : Integer;
begin
  if DllHandle <> 0 then
    Result := _VarFromSet(s, size)
  else
    Result := 0;
end;

procedure VarToSet(var s; size : Integer; const v : OleVariant);
begin
  if DllHandle <> 0 then
    _VarToSet(s, size, v);
end;

function VarToObject(const v : OleVariant) : TObject;
begin
  if DllHandle <> 0 then
    Result := _VarToObject(v)
  else
    Result := nil;
end;

function VarToChar(const v : OleVariant) : Char;
begin
  if DllHandle <> 0 then
    Result := _VarToChar(v)
  else
    Result := #0;
end;

function VarToPointer(const v : OleVariant) : Pointer;
begin
  if DllHandle <> 0 then
    Result := _VarToPointer(v)
  else
    Result := nil;
end;

function VarToInterface(const v: Variant): IDispatch;
begin
  if DllHandle <> 0 then
    Result := _VarToInterface(V);
end;

function ArrayInfo(TInfo : PTypeInfo) : PTypeInfo;
begin
  if DllHandle <> 0 then
    Result := _ArrayInfo(TInfo)
  else
    Result := nil;
end;

type
  TComponent_ComponentCount     = function(FComponent: Pointer): Integer;
  TComponent_Components         = function(FComponent: Pointer; Index: Integer): Pointer;
  TComponent_Name               = function(FComponent: Pointer): String;
  TComponent_Owner              = function(FComponent: Pointer): Pointer;
  TComponent_FindComponent      = function(FComponent: Pointer; Name: String): Pointer;

  TControl_ClientToScreen       = procedure(FControl: Pointer; var Point: TPoint);
  TControl_ScreenToClient       = procedure(FControl: Pointer; var Point: TPoint);
  TControl_Parent               = function(FControl: Pointer): Pointer;
  TControl_Enabled              = function(FControl: Pointer): Boolean;
  TControl_Visible              = function(FControl: Pointer): Boolean;
  TControl_Width                = function(FControl: Pointer): Integer;
  TControl_Height               = function(FControl: Pointer): Integer;
  TControl_Left                 = function(FControl: Pointer): Integer;
  TControl_Top                  = function(FControl: Pointer): Integer;

  TWinControl_Handle            = function(FWinControl: Pointer): Integer;
  TWinControl_ControlAtPos      = function(FWinControl: Pointer; Pos: TPoint): Pointer;

  TOleControl_OleObject         = function(FOleControl: Pointer): Variant;

  TScreen_DataModules           = function(Index: Integer): Pointer;
  TScreen_DataModuleCount       = function: Integer;

  T_FindControl                 = function(Handle: HWnd): Pointer;
  T_GetMemoryManager            = procedure(var MemMgr: TMemoryManager);


  TDelphiClient = record
    Version                     : Integer;
    PComponent_ComponentCount   : TComponent_ComponentCount;
    PComponent_Components       : TComponent_Components;
    PComponent_Name             : TComponent_Name;
    PComponent_Owner            : TComponent_Owner;
    PComponent_FindComponent    : TComponent_FindComponent;

    PControl_ClientToScreen     : TControl_ClientToScreen;
    PControl_ScreenToClient     : TControl_ScreenToClient;
    PControl_Parent             : TControl_Parent;
    PControl_Enabled            : TControl_Enabled;
    PControl_Visible            : TControl_Visible;
    PControl_Width              : TControl_Width;
    PControl_Height             : TControl_Height;
    PControl_Left               : TControl_Left;
    PControl_Top                : TControl_Top;

    PWinControl_Handle          : TWinControl_Handle;
    PWinControl_ControlAtPos    : TWinControl_ControlAtPos;

    PScreen_DataModules         : TScreen_DataModules;
    PScreen_DataModuleCount     : TScreen_DataModuleCount;

    PFindControl                : T_FindControl;
    POleControl_OleObject       : TOleControl_OleObject;

    PGetMemoryManager           : T_GetMemoryManager;

    PBoolean_TypeInfo           : Pointer;
    POleVariant_TypeInfo        : Pointer;
    PVariant_TypeInfo           : Pointer;
    PShortString_TypeInfo       : Pointer;
    PString_TypeInfo            : Pointer;
    PSingle_TypeInfo            : Pointer;
    PTObject_TypeInfo           : Pointer;

    HInstance                   : DWORD;
    PvmtSelfPtr                 : Integer;
    PvmtTypeInfo                : Integer;
    PvmtClassName               : Integer;
    PvmtInstanceSize            : Integer;
    PvmtParent                  : Integer;
    PCallDynaInstAddr           : Pointer;
  end;

  TAddDelphiClient = procedure (const dc: TDelphiClient); stdcall;
  TRemoveDelphiClient = procedure; stdcall;

var
  dc: TDelphiClient;
  a : TAddDelphiClient;
  r : TRemoveDelphiClient;

const
  ClientsDLL = 'tcclients.dll';

procedure ShowError;
begin
{$IFNDEF HIDE_TC_CLIENT_ERROR}
  MessageBox(Application.Handle, 'Could not load ' + ClientsDLL + ' library', 'Error', MB_OK or MB_ICONSTOP)
{$ENDIF}
end;

function IsCommandParameter(const Param: string): Boolean;
var
  i: Integer;
begin
  Result := True;
  for i := 1 to ParamCount do
    if ParamStr(i) = Param then Exit;
  Result := False;
end;

function GetCallDynaInstAddr: Pointer;
asm
  lea eax, System.@CallDynaInst
end;

procedure InitClient;
begin
  if DllHandle <> 0 then
    Exit;

  {$IFDEF USE_TC_CLIENT_COMMAND_LINE}
  if not IsCommandParameter(CMakeAsTCClient) then
    Exit;
  {$ENDIF}

  {$IFDEF MULTIPLE_MODULES}
  dc.Version                    := 2;
  {$ELSE}
  dc.Version                    := 1;
  {$ENDIF}
  dc.PComponent_ComponentCount  := @TComponent_GetComponentCount;
  dc.PComponent_Components      := @TComponent_GetComponents;
  dc.PComponent_Name            := @TComponent_GetName;
  dc.PComponent_Owner           := @TComponent_GetOwner;
  dc.PComponent_FindComponent   := @TComponent_FunFindComponent;
  dc.PControl_ClientToScreen    := @TControl_FunClientToScreen;
  dc.PControl_ScreenToClient    := @TControl_FunScreenToClient;

  dc.PControl_Parent            := @TControl_GetParent;
  dc.PControl_Enabled           := @TControl_GetEnabled;
  dc.PControl_Visible           := @TControl_GetVisible;
  dc.PControl_Width             := @TControl_GetWidth;
  dc.PControl_Height            := @TControl_GetHeight;
  dc.PControl_Left              := @TControl_GetLeft;
  dc.PControl_Top               := @TControl_GetTop;

  dc.PWinControl_Handle         := @TWinControl_GetHandle;
  dc.PWinControl_ControlAtPos   := @TWinControl_FunControlAtPos;

  dc.PScreen_DataModules        := @TScreen_GetDataModules;
  dc.PScreen_DataModuleCount    := @TScreen_GetDataModuleCount;

  dc.PFindControl               := @FunFindControl;
  dc.POleControl_OleObject      := @TOleControl_GetOleObject;

  dc.PGetMemoryManager          := @FunGetMemoryManager;

  dc.PBoolean_TypeInfo          := TypeInfo(Boolean);
  dc.POleVariant_TypeInfo       := TypeInfo(OleVariant);
  dc.PVariant_TypeInfo          := TypeInfo(Variant);
  dc.PShortString_TypeInfo      := TypeInfo(ShortString);
  dc.PString_TypeInfo           := TypeInfo(String);
  dc.PSingle_TypeInfo           := TypeInfo(Single);
  dc.PTObject_TypeInfo          := TypeInfo(TObject);

  dc.HInstance                  := HInstance;
  dc.PvmtSelfPtr                := vmtSelfPtr;
  dc.PvmtTypeInfo               := vmtTypeInfo;
  dc.PvmtClassName              := vmtClassName;
  dc.PvmtInstanceSize           := vmtInstanceSize;
  dc.PvmtParent                 := vmtParent;
  dc.PCallDynaInstAddr          := GetCallDynaInstAddr;

  DllHandle := LoadLibrary(ClientsDLL);
  if DllHandle <> 0 then
  begin
    a := GetProcAddress(DllHandle, 'AddDelphiClient');
    a(dc);

    _RegisterProc            := GetProcAddress(DllHandle, 'RegisterProc');
    _RegisterProperty        := GetProcAddress(DllHandle, 'RegisterProperty');
    _RegisterIndexedProperty := GetProcAddress(DllHandle, 'RegisterIndexedProperty');
    _RegisterClasses         := GetProcAddress(DllHandle, 'RegisterClasses');
    _RegisterEvent           := GetProcAddress(DllHandle, 'RegisterEvent');
    _RegRegisterMethod       := GetProcAddress(DllHandle, 'RegRegisterMethod');

    _VarFromObject := GetProcAddress(DllHandle, 'VarFromObject');
    _VarFromSet    := GetProcAddress(DllHandle, 'VarFromSet');
    _VarToSet      := GetProcAddress(DllHandle, 'VarToSet');
    _VarToObject   := GetProcAddress(DllHandle, 'VarToObject');
    _VarToChar     := GetProcAddress(DllHandle, 'VarToChar');
    _VarToPointer  := GetProcAddress(DllHandle, 'VarToPointer');
    _VarToInterface:= GetProcAddress(DllHandle, 'VarToInterface');
    _ArrayInfo     := GetProcAddress(DllHandle, 'ArrayInfo');
    _GetIDispatch  := GetProcAddress(DllHandle, 'GetIDispatch');

  end else
    ShowError;
end;

procedure RemoveClient;
begin
  if DllHandle <> 0 then
  begin
    r := GetProcAddress(DllHandle, 'RemoveDelphiClient');
    r();
{JRT}
    FreeLibrary(DllHandle);
{}
    DllHandle := 0;
  end;
end;

initialization
  InitClient;

finalization
  RemoveClient;

end.
