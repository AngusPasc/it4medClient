{*******************************************************}
{                                                       }
{   Copyright (c) 1995-1996 Classic Software            }
{   All Rights Reserved                                 }
{                                                       }
{*******************************************************}

unit CSEZForm;

{$B-,P+,W-,X+}

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, StdCtrls, dxSkinsForm;

type
  TNavigationKey = (nkEnter, nkUpDnArrows, nkCtrlTab);
  TNavigationKeys = set of TNavigationKey;
  TKeyInterceptEvent = procedure(KeyType: TNavigationKey; Ctrl: TControl;
    var Intercept: Boolean) of object;

  { Forward declarations }
  TcsEZKeys = class;

  { TcsEZForm }

  TcsEZForm = class(TdxSkinForm)
  private
    FFormProperties: TcsEZKeys;
    FHandleNavigationKeys: Boolean;
    FKeyPreview: Boolean;
    FNavigationKeys: TNavigationKeys;
    FOldDefaultButton: TButton;
    FOnKeyIntercept: TKeyInterceptEvent;
    procedure ClearDefaultButtons;
    function DoKeyIntercept(KeyType: TNavigationKey; Ctrl: TControl): Boolean;
    function FindDefaultButton: TButton;
    function FindFormProperties: TcsEZKeys;
    procedure SetHandleNavigationKeys(Value: Boolean);
    procedure SetNavigationKeys(Value: TNavigationKeys);
  protected
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
    procedure Loaded; override;
    procedure UpdateOldDefaultButton;
  public
    constructor Create(AOwner: TComponent); override;
    procedure ClickOldDefaultButton;
    property OldDefaultButton: TButton read FOldDefaultButton write FOldDefaultButton;
  published 
    { Storage and editing of the following properties is done
      through an (optional) TcsEZKeys component on the form.
      This is necessary because published properties of TForm
      descendants are not stored and are not editable at
      design-time using the Object Inspector.
    }
    property HandleNavigationKeys: Boolean read FHandleNavigationKeys write SetHandleNavigationKeys default True;
    property KeyPreview: Boolean read FKeyPreview write FKeyPreview default False;
    property NavigationKeys: TNavigationKeys read FNavigationKeys write SetNavigationKeys
      default [nkEnter, nkUpDnArrows, nkCtrlTab];
    property OnKeyIntercept: TKeyInterceptEvent read FOnKeyIntercept write FOnKeyIntercept;
  end;

  { TcsEZKeys }

  { TcsEZKeys components are used for persistent storage of
    the extra form properties and to allow design-time editing of
    those values.
    If assigning values at run-time the actual form properties
    should be used instead of the equivalent properties in this
    component.
  }
  TcsEZKeys = class(TComponent)
  private
    FForm: TcsEZForm;
    FHandleNavigationKeys: Boolean;
    FKeyPreview: Boolean;
    FNavigationKeys: TNavigationKeys;
    FOnKeyIntercept: TKeyInterceptEvent;
    function FirstOne(AOwner: TComponent): Boolean;
  protected
    procedure Loaded; override;
  public
    constructor Create(AOwner: TComponent); override;
    property Form: TcsEZForm read FForm write FForm;
  published
    property HandleNavigationKeys: Boolean read FHandleNavigationKeys write FHandleNavigationKeys default True;
    property KeyPreview: Boolean read FKeyPreview write FKeyPreview default False;
    property NavigationKeys: TNavigationKeys read FNavigationKeys write FNavigationKeys
      default [nkEnter, nkUpDnArrows, nkCtrlTab];
    property OnKeyIntercept: TKeyInterceptEvent read FOnKeyIntercept write FOnKeyIntercept;
  end;

  { TcsEZForms }
  { A single TcsEZForms object is used to allow global
    enabling/disabling of the enhanced behaviour for all
    TcsEZForm forms.
  }

  TcsEZForms = class(TObject)
  private
    FDefaultNavigationKeys: TNavigationKeys;
    FEnabled: Boolean;
    procedure SetEnabled(Value: Boolean);
  public
    constructor Create;
    property DefaultNavigationKeys: TNavigationKeys read FDefaultNavigationKeys write FDefaultNavigationKeys;
    property Enabled: Boolean read FEnabled write SetEnabled;
  end;

var
  CSEZForms: TcsEZForms;

implementation

uses {JRT: ex DBCtrls,} Grids, {JRT: ex DBGrids,} Mask {$IFDEF EVALUATION}, CSEval {$ENDIF};

const
  AllNavigationKeys: TNavigationKeys = [nkEnter, nkUpDnArrows, nkCtrlTab];
  K_ENTER = #13;
  K_NULL  = #0;

type
  { TCustomGridProxy allows reference to protected Options property }
  TCustomGridProxy = class(TCustomGrid);
  { TCustomDBGridProxy allows reference to protected Options property }
{JRT: ex  TCustomDBGridProxy = class(TCustomDBGrid);}
  { TCustomMemoProxy allows reference to protected WantReturns property }
{JRT: ex    TCustomMemoProxy = class(TCustomMemo);}

{ TcsEZForm }

constructor TcsEZForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FOldDefaultButton := FindDefaultButton;
  { turn on the form's original KeyPreview (always) }
  inherited KeyPreview := True;
  if CSEZForms.Enabled and FHandleNavigationKeys then
    { turn off Default button if Enter in keys }
    if (FOldDefaultButton <> nil) and (nkEnter in NavigationKeys) then
      ClearDefaultButtons;
end;

procedure TcsEZForm.Loaded;
begin
  inherited Loaded;
  FFormProperties := FindFormProperties;
  if FFormProperties = nil then
  begin
    FHandleNavigationKeys := True;
    FNavigationKeys := CSEZForms.DefaultNavigationKeys;
    FKeyPreview := False;
    FOnKeyIntercept := nil;
  end
  else
    FFormProperties.Form := Self;
end;

function TcsEZForm.FindFormProperties: TcsEZKeys;
var AComponent: TComponent;
    I: Integer;
begin
  Result := nil;
  for I := 0 to ComponentCount - 1 do
  begin
    AComponent := Components[I];
    if (AComponent is TcsEZKeys) then
    begin
      Result := TcsEZKeys(AComponent);
      Break;
    end;
  end;
end;

function TcsEZForm.FindDefaultButton: TButton;
var AComponent: TComponent;
    I: Integer;
begin
  Result := nil;
  for I := 0 to ComponentCount - 1 do
  begin
    AComponent := Components[I];
    if (AComponent is TButton) and TButton(AComponent).Default then
    begin
      Result := TButton(AComponent);
      Break;
    end;
  end;
end;

procedure TcsEZForm.ClearDefaultButtons;
var AComponent: TComponent;
    I: Integer;
begin
  for I := 0 to ComponentCount - 1 do
  begin
    AComponent := Components[I];
    if (AComponent is TButton) and TButton(AComponent).Default then
      TButton(AComponent).Default := False;
  end;
end;

function TcsEZForm.DoKeyIntercept(KeyType: TNavigationKey; Ctrl: TControl): Boolean;
begin
  Result := False;
  if CSEZForms.Enabled and FHandleNavigationKeys and (KeyType in NavigationKeys) then
  begin
    case KeyType of
      nkEnter:
        { Memo and Grid controls may need the Enter key for themselves }
        Result := not ( {JRT: ex ((Ctrl is TCustomMemo) and TCustomMemoProxy(Ctrl).WantReturns) or
                       ((Ctrl is TCustomDBGrid) and
                        (dgEditing in TCustomDBGridProxy(Ctrl).Options)) or}
                       ((Ctrl is TCustomGrid) and
                        (goEditing in TCustomGridProxy(Ctrl).Options)));
      nkUpDnArrows: Result :=
                      ((Ctrl is TEdit) or
                       (Ctrl is TCustomMaskEdit));
      nkCtrlTab:    Result := True;
    end;
    if Assigned(FOnKeyIntercept) then
      FOnKeyIntercept(KeyType, Ctrl, Result);
  end;
end;

procedure TcsEZForm.KeyDown(var Key: Word; Shift: TShiftState);
begin

  if FKeyPreview then
    inherited KeyDown(Key, Shift);

  if CSEZForms.Enabled and Visible and FHandleNavigationKeys then
  begin
    if not (Key = 0) then
    begin
      if (Key = VK_DOWN) or (Key = VK_UP) then
      begin
        if DoKeyIntercept(nkUpDnArrows, ActiveControl) then
          SelectNext(ActiveControl, (Key = VK_DOWN), True);
      end
      else
      if (ssCtrl in Shift) and (Key = VK_TAB) and
        DoKeyIntercept(nkCtrlTab, ActiveControl) then
      begin
        { Set Key to 0 to stop spurious Tab keystrokes
          going to Memo controls when Ctrl+Tab is held
          down to cycle through all controls.
        }
        Key := 0;
        SelectNext(ActiveControl, (not (ssShift in Shift)), True);
      end;
    end;
  end;
end;

procedure TcsEZForm.KeyPress(var Key: Char);
begin
  if FKeyPreview then
    inherited KeyPress(Key);

  if CSEZForms.Enabled and Visible and FHandleNavigationKeys then
  begin
    if not (Key = #0) then
      if ((Key = K_ENTER) and DoKeyIntercept(nkEnter, ActiveControl)) then
      begin
        Key := K_NULL; { consume the key }
        SelectNext(ActiveControl, True, True);
      end;
  end;
end;

procedure TcsEZForm.SetNavigationKeys(Value: TNavigationKeys);
begin
  FNavigationKeys := Value;
  { change Default property for original default button }
  UpdateOldDefaultButton;
end;

procedure TcsEZForm.ClickOldDefaultButton;
var ClickHandler: TNotifyEvent;
begin
  if (FOldDefaultButton <> nil) then
  begin
    ClickHandler := FOldDefaultButton.OnClick;
    if Assigned(ClickHandler) then
      ClickHandler(Self);
  end;
end;

procedure TcsEZForm.SetHandleNavigationKeys(Value: Boolean);
begin
  if (FHandleNavigationKeys <> Value) then
  begin
    FHandleNavigationKeys := Value;
    UpdateOldDefaultButton;
  end;
end;

procedure TcsEZForm.UpdateOldDefaultButton;
begin
  if (OldDefaultButton <> nil) then
    OldDefaultButton.Default := not (CSEZForms.Enabled and FHandleNavigationKeys and
                                      (nkEnter in FNavigationKeys));
end;

{ TcsEZKeys }

constructor TcsEZKeys.Create(AOwner: TComponent);
begin
  if not ((csLoading in AOwner.ComponentState) or
          (csDesigning in AOwner.ComponentState)) then
    raise Exception.Create(ClassName +
      ' components can only be added to forms at design-time');

  { check there is not already a component of this type on the form }
  if FirstOne(AOwner) then
    inherited Create(AOwner)
  else
    raise Exception.Create('Can''t add ' + ClassName + ' component.  ' +
      'There is already a component of this type on the form');

  FHandleNavigationKeys := True;
  FNavigationKeys := CSEZForms.DefaultNavigationKeys;
  FOnKeyIntercept := nil;
end;

{ Returns true if this is the first component of this type to be
  added to the form, i.e. there are no components of this type
  currently on the form.
}
function TcsEZKeys.FirstOne(AOwner: TComponent): Boolean;
var I: Integer;
begin
  Result := True;
  for I := 0 to AOwner.ComponentCount - 1 do
    if (AOwner.Components[I] is ClassType) then
    begin
      Result := False;
      Break;
    end;
end;

procedure TcsEZKeys.Loaded;
begin
  if FForm <> nil then
  begin
    FForm.HandleNavigationKeys := FHandleNavigationKeys;
    FForm.KeyPreview := FKeyPreview;
    FForm.NavigationKeys := FNavigationKeys;
    FForm.OnKeyIntercept := FOnKeyIntercept;
  end;
end;

{ TcsCSEZForms }

constructor TcsEZForms.Create;
begin
  inherited Create;
  FEnabled := True;
  FDefaultNavigationKeys := AllNavigationKeys;
end;

procedure TcsEZForms.SetEnabled(Value: Boolean);
var I: Integer;
begin
  FEnabled := Value;
  { Reflect new status in all open TcsEZForms }
  for I := 0 to Screen.FormCount - 1 do
  begin
    if (Screen.Forms[I] is TcsEZForm) then
      with TcsEZForm(Screen.Forms[I]) do
        UpdateOldDefaultButton;
  end;
end;

procedure DoneCSEZForms; far;
begin
  CSEZForms.Free;
end;

initialization
  CSEZForms := TcsEZForms.Create;
{$IFDEF WIN32}
finalization
  DoneCSEZForms;
{$ELSE}
  AddExitProc(DoneCSEZForms);
{$ENDIF}  

end.
