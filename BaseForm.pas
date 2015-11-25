unit BaseForm;

interface

uses
  CSEZForm, Forms, Windows,Messages, Classes,Graphics, Controls,
  ExtCtrls, IIConsts, SysUtils, dxLayoutControl, cxGraphics, AstaClientDataset;

type

  TsyWindows = (syMultiple,sySingole,syUnica,syModal,syMain);

  TBaseForm = class(TcsEZForm)
    private
//        m_Color: TColor;

        FImgList: TcxImageList;
        FInternalActiveControl: TWinControl;
//        FInternalWorkArea: TRect;
        FInternalWindowsMode: TsyWindows;
        FReadBarCode: boolean;
        FoldReadBarCode: Boolean;
        FBufferIn : boolean;
        FBufferKeybIn: Boolean;
        FKeyBuffer : string;
        FCatch: Boolean;
        FPersonalizza: Boolean;
        FPersModified: Boolean;

        procedure InternalSetActiveControl(Control: TWinControl);

        procedure InternalDblClick(var Message: TMessage); message SY_DBLCLICK;
        procedure RefreshAlert(var Message: TMessage); message SY_REFRESHALERT;
        procedure FocusSulCampo(var Message: TMessage); message SY_FOCUSPRIMOCAMPO;
        procedure CMDialogKey(var Msg: TCMDialogKey); message CM_DIALOGKEY;

    protected
        procedure SetImgList(iList: TcxImageList); virtual;
        procedure SetCatch(Value: Boolean); virtual;
        procedure Loaded; override;
        procedure DoShow; override;
        procedure KeyDown(var Key: Word; Shift: TShiftState); override;
        procedure KeyUp(var Key: Word; Shift: TShiftState); override;
        function TrasformaCF(const inp: string): string;
        function ControllaCF(cf: String): String;
        function ControllaPIVA(pi: String): String;
        procedure DoCreate; override;
        procedure StartPersonalizza; virtual;
        procedure StopPersonalizza; virtual;
        procedure ResetPersonalizza; virtual;
        procedure LanciaPersonalizza(dxl: TdxLayoutControl; xds: TAstaClientDataset);

        property Personalizza: Boolean read FPersonalizza write FPersonalizza;
        property PersModified: Boolean read FPersModified write FPersModified;
        property ReadBarCode: Boolean read FReadBarCode write FReadBarCode;
        property oldReadBarCode: boolean read FoldReadBarCode write FoldReadBarCode;
        property BufferIn: Boolean read FBufferIn;
        property KeyBuffer: string read FKeyBuffer;
        property InternalActiveControl: TWinControl read FInternalActiveControl write FInternalActiveControl;
        property Catch: Boolean read FCatch write SetCatch;

    public
        constructor Create(AOwner: TComponent); override;
        constructor CreateNew(AOwner: TComponent; iList: TcxImageList); virtual;
        destructor Destroy; override;
        procedure KeyPress(var Key: Char); override;
        procedure SendPortDataToForm(const s: string; lungh: integer); virtual; abstract;

//        property InternalWorkArea: TRect read FInternalWorkArea write FInternalWorkArea;
        property InternalWindowsMode: TsyWindows read FInternalWindowsMode write FInternalWindowsMode;
        property ImgList: TcxImageList read FImgList;

//    published
//        property BorderColor : TColor read m_Color write m_Color;

  end;

var
  xWindowsMode: TsyWindows;  // 1=Multiple 2=Singole 3=Unica

implementation
uses consts,math, dxBar, ActnList, kseventclient, ehshelprouter, IInterface,
     dxLayoutCustomizeForm, DB, cxGridCustomView, cxGrid, cxGridCustomTableView,
     cxGridDBTableView, cxButtons;

{.$R *.dfm}

type
  TMyForm = class(TCustomForm);

constructor TBaseForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FReadBarCode := True;
  FBufferIn := False;
  FBufferKeybIn := False;
  FCatch := False;
  FPersonalizza := False;
  FPersModified := False;
end;

constructor TBaseForm.CreateNew(AOwner: TComponent; iList: TcxImageList);
begin
//  FOwner := AOwner;
  FImgList := iList;

  inherited Create(AOwner);

end;

procedure TBaseForm.SetCatch(Value: Boolean);
var
  myForm: TMyForm;
begin
  FCatch := Value;
  if (InternalWindowsMode=syUnica) and (Parent<>nil) and (Parent.Owner<>nil)
     and (Parent.Owner is TBaseForm) then
  begin
    myForm := TMyForm(Parent.Owner);
    TBaseForm(myForm).Catch := Value;
  end;
end;

procedure TBaseForm.InternalDblClick(var Message: TMessage);
var
  APoint: TPoint;
  AHitTest: TcxCustomGridHitTest;
//  ARecord: TcxCustomGridRecord;
begin
  if (Message.LParam>0) then
  begin
    TAction(Message.LParam).Execute;
  end
(*
  if (Message.WParam=0) then
  begin
    TAction(Message.LParam).Execute;
  end
  else begin
    GetCursorPos(APoint);
    with TcxGrid(Message.WParam).FocusedView.Site do
    begin
      APoint := ScreenToClient(APoint);
      AHitTest := ViewInfo.GetHitTest(APoint);
      if AHitTest is TcxGridRecordHitTest then
      begin
  //      ARecord := TcxGridRecordHitTest(AHitTest).GridRecord;
        //Call your procedure to activate an edit dialog
        //for the clicked record
  //      OpenEditRecordDialog(ARecord);
        TAction(Message.LParam).Execute;
      end;
    end;
  end;
*)
end;

procedure TBaseForm.RefreshAlert(var Message: TMessage);
begin
   TKSAstaEventClient(Message.LParam).IdleRefresh;
end;

procedure TBaseForm.DoShow;
begin
  inherited;
  if (FInternalWindowsMode in [sySingole,syMultiple,syModal]) and
     Assigned(FInternalActiveControl) and
     FInternalActiveControl.CanFocus then
       InternalSetActiveControl(FInternalActiveControl);
end;


procedure TBaseForm.InternalSetActiveControl(Control: TWinControl);
begin

//  if ActiveControl <> Control then
  begin
    if not ((Control = nil) or (Control <> Self) and
      (GetParentForm(Control) = Self) and ((csLoading in ComponentState) or
        Control.CanFocus)) then
      raise EInvalidOperation.Create(SCannotFocus);
//    FActiveControl := Control;
    if not (csLoading in ComponentState) then
    begin
//      if Active then
      begin
(*
        Windows.SetFocus(Control.Handle);
        if GetFocus = Control.Handle then
           Control.Perform(CM_UIACTIVATE, 0, 0);
*)
        PostMessage(Handle,SY_FOCUSPRIMOCAMPO,0,LongInt(Control));
      end;
//      ActiveChanged;
    end;
  end;

end;

procedure TBaseForm.FocusSulCampo(var Message: TMessage);
begin
  inherited;
  TWinControl(Message.LParam).SetFocus;
end;

procedure TBaseForm.Loaded;
var
  ref,i: integer;
  x: integer;
  refG: TcxGridDBTableView;
begin

   FInternalActiveControl := ActiveControl;

   inherited;

   if (csDesigning in ComponentState) then exit;

   if (FInternalWindowsMode in [sySingole,syMultiple,syModal,syMain]) then
   begin
       if ScegliMonitor then
       begin
          DefaultMonitor := dmDesktop;
          Position := poDefaultSizeOnly;
          i:=-1;
          repeat
            inc(i);
          until (i=Screen.Monitorcount) or Screen.Monitors[i].Primary;
          if (i=Screen.Monitorcount) then
             i := 0;
          ref := abs(Screen.Monitors[i].WorkAreaRect.Right - Screen.Monitors[i].WorkAreaRect.Left);
          i:=-1;
          repeat
            inc(i);
          until (i=Screen.Monitorcount) or (abs(Screen.Monitors[i].WorkAreaRect.Right - Screen.Monitors[i].WorkAreaRect.Left)<>ref);
          if (i=Screen.Monitorcount) then
             i := 0;

//          FInternalWorkArea := Screen.Monitors[i].WorkAreaRect;

          Left := Screen.Monitors[i].WorkAreaRect.Left +
                ((Screen.Monitors[i].WorkAreaRect.Right - Screen.Monitors[i].WorkAreaRect.Left) div 2) -
                (Width div 2);
          Top  := Screen.Monitors[i].WorkAreaRect.Top +
                ((Screen.Monitors[i].WorkAreaRect.Bottom - Screen.Monitors[i].WorkAreaRect.Top) div 2) -
                (Height div 2);

      //    ShowMsg(format('l: %d t: %d',[Left,Top]));
       end
       else begin
         DefaultMonitor := dmPrimary;  // dmMainForm;  // dmActiveForm;
//         FInternalWorkArea := Screen.WorkAreaRect;
       end;

//       BorderStyle := bsNone;
//       BorderWidth := m_Width;
//       ClientHeight := ClientHeight + 10; // m_TitleBar.Height;

  end;

  // -- DPI Aware...

  if not (csDesigning in ComponentState) and (Screen.PixelsPerInch<>96) then
  begin

   // -- ChangeScale non modifica Width delle colonne DevExp (ver. 14.xx)
   //    e se non c'è ColumnAutoWidth attivo...
   for i:=0 to ComponentCount-1 do
   begin
       if (Components[i] is TcxGridDBTableView) then
       begin
          refG := TcxGridDBTableView(Components[i]);
          if not refG.OptionsView.ColumnAutoWidth then
          begin
            for x:=0 to refG.ColumnCount-1 do
                refG.Columns[x].Width := MulDiv(refG.Columns[x].Width, Screen.PixelsPerInch, 96);
          end;
       end
       else if (Components[i] is TdxBarManager) then
       begin
            TdxBarManager(Components[i]).Font.Size := 14; // Self.Font.Size; sempre a 7 ?!?
       end
       else if (Components[i] is TdxBar) then
       begin
            TdxBar(Components[i]).Font.Size := 14; // Self.Font.Size; sempre a 7 ?!?
       end;
   end;

//   ChangeScale(Screen.PixelsPerInch, 96);

   SetImgList( FImgList );

  end;

end;


procedure TBaseForm.KeyDown(var Key: Word; Shift: TShiftState);
{
    procedure DisplayHelpOnKeyword(keyword: string);
    var
      Command: array[0..255] of Char;
    begin
      StrLcopy(Command, pchar(keyword), SizeOf(Command) - 1);
      Application.helpcommand(HELP_KEY, Longint(@Command));
    end;
}
begin

  if Key = VK_F1 then
  begin
     Key := 0;
//     DisplayHelpOnKeyword( csFormPanel1.Form.Name );
     if Assigned(GLOBAL_HELPROUTER) then
        GLOBAL_HELPROUTER.HelpKLink( Caption );

  end
  else
     inherited;

end;

function TBaseForm.TrasformaCF(const inp: string): string;
const
   digits = '0123456789 ABCDEFGHIJKLMNOPQRSTUVWXYZ';
var
  i: integer;
  index: integer;
begin
  result := '';
  if Length(inp)>=32 then
  begin
    for i:=0 to 15 do
    begin
          index := StrToInt(Copy(inp,(i*2)+1,2));
          result := result + digits[index+1];
    end;

    if ControllaCF(result)<>'' then
       result := '';
  end;
end;

//*************************************************
//	Funzione per il controllo del codice fiscale.
//	Linguaggio: Delphi/Object Pascal.
//	Versione del: 2003-06-30
//	Contributo di Luca Leoncavallo <lleoncavalloATeconb.com>
//**************************************************/

function TBaseForm.ControllaCF(cf: String): String;
Const SetDisp : Array [0..25] of Integer = (1, 0, 5, 7, 9, 13, 15, 17, 19, 21, 2, 4, 18, 20,
		11, 3, 6, 8, 12, 14, 16, 10, 22, 25, 24, 23);
Var	i, n, s : Integer;
    cf2 : String;
Begin
  Result:='';
	if Length(cf)=0 Then Exit;
	if Length(cf)<>16 Then
   Begin
    Result:='La lunghezza del codice fiscale non è corretta: il codice '+
            'fiscale dovrebbe essere lungo esattamente 16 caratteri.';
    Exit;
   End;

	cf2 := UpperCase(cf);

  For I:=1 to 16 do
   If Not(((cf2[I]>='0')And(cf2[I]<='9'))or((cf2[I]>='A')And(cf2[I]<='Z')))
    Then Begin
     Result:='Il codice fiscale contiene dei caratteri non validi: '+
		         'i soli caratteri validi sono le lettere e le cifre.';
     Exit;
    End;

	s := 0;
  For I:=2 to 14 do If Not Odd(I) Then
   Begin
     n := Ord(cf2[I]);
     If ((cf2[I]>='0')And(cf2[I]<='9'))
       Then s := s + n - Ord('0')
       Else s := s + n - Ord('A');
   End;

  For I:=1 to 15 do If Odd(I) Then
   Begin
     n := Ord(cf2[I]);
     If ((cf2[I]>='0')And(cf2[I]<='9')) Then n := n - Ord('0') + Ord('A');
     s := s + SetDisp[n-Ord('A')];
   End;

  n := (s Mod 26) + Ord('A');

  If Chr(n)<>cf2[16] Then Result:='Il codice fiscale non è corretto: '+
                'il codice di controllo non corrisponde.';
End;

//****************************************************
//	Funzione per il controllo della partita IVA.
//	Linguaggio: Delphi/Object Pascal.
//	Versione del: 2003-06-30
//	Contributo di Luca Leoncavallo <lleoncavalloATeconb.com>
//*****************************************************

function TBaseForm.ControllaPIVA(pi: String): String;
Var i, c, s : Integer;
Begin
  Result:='';
	if Length(pi)=0 Then Exit;
  if Length(pi)<>11 Then
   Begin
    Result:='La lunghezza della partita IVA non è corretta: la partita '+
           'IVA dovrebbe essere lunga esattamente 11 caratteri.';
    Exit;
   End;
  For I:=1 to 11 do
   if (pi[i]<'0')Or(pi[i]>'9') Then
    Begin
     Result:='La partita IVA contiene dei caratteri non ammessi: '+
            'la partita IVA dovrebbe contenere solo cifre.';
     Exit;
    End;

	s:=0;
  For I:=1 to 10 do
   If Odd(I) Then s:=s+StrToInt(pi[I]);

  For I:=1 to 10 do
   If Not Odd(I) Then
    Begin
     c:=2*StrToInt(pi[I]);
     If c>9 Then c:=c-9;
     s:=s+c;
    End;

  c:=s Mod 10;
  c:=(10-c) Mod 10;

  If StrToInt(pi[11])<>c Then Result:='La partita IVA non è valida: '+
      'il codice di controllo non corrisponde.';
End;

procedure TBaseForm.DoCreate;
begin
//  Assert(not Scaled, 'TForm.Scaled property sucks, you should set it to False!');
  if Screen.PixelsPerInch <> PixelsPerInch then
  begin
    ScaleBy(Screen.PixelsPerInch, PixelsPerInch);
  end;

  inherited;

end;

procedure TBaseForm.KeyPress(var Key: Char);
var
   temp: string;
begin
  inherited;
  if FReadBarCode then
  begin
    // -- Lettura Tessera Sanitaria
    if (Key=';') and not FBufferIn then
    begin
       FBufferIn := true;
       FKeyBuffer := '';
       Key := #0;
    end
    else if (Key='?') and FBufferIn then
    begin
      Key := #0;
      FBufferIn := false;
      temp := TrasformaCF(FKeyBuffer);

      if temp<>'' then
         SendPortDataToForm(temp, Length(temp));
    end
    else if FBufferIn then
    begin
          {JRT 3899 - vengono filtrati i caratteri non ASCII}
  //        if Key in [32..126] then
             FKeyBuffer := FKeyBuffer + Key;
          Key := #0;
    end;
  end;
end;


procedure TBaseForm.KeyUp(var Key: Word; Shift: TShiftState);
begin
  // -- Emulazione da tastiera della lettura barcode:
  //    inizio lettura = con Ctrl + Alt + @
  //    fine lettura = Ctrl + Alt + #

  if not FBufferIn and
     ((Shift=[ssAlt..ssCtrl]) and (Key=192)) then
  begin
     FBufferKeybIn := true;
     FKeyBuffer := '';
     Key := 0;
  end
  else if FBufferKeybIn then
  begin
     if ((Shift=[ssAlt..ssCtrl]) and (Key=222)) then
     begin
        SendPortDataToForm(FKeyBuffer, Length(FKeyBuffer));
        FBufferKeybIn := false;
     end
     else begin
        if Key in [32..126] then
           FKeyBuffer := FKeyBuffer + chr(Key);
     end;
     Key := 0;
  end;
  inherited;
end;

procedure TBaseForm.CMDialogKey(var Msg: TCMDialogKey);
var
  ShiftState: TShiftState;
begin
  ShiftState := KeyDataToShiftState(Msg.KeyData);
  if not ((Msg.CharCode=VK_TAB) and (ShiftState=[])) or (not Catch) then
     inherited;
end;

procedure TBaseForm.StartPersonalizza;
begin
end;

procedure TBaseForm.ResetPersonalizza;
begin
end;

procedure TBaseForm.LanciaPersonalizza(dxl: TdxLayoutControl; xds: TAstaClientDataset);
begin
  dxl.Customization := True;
//  dxl.CustomizeForm.Left := Left - dxl.CustomizeForm.Width;
//  dxl.CustomizeForm.Top := Top;
  TdxLayoutControlCustomizeForm(dxl.CustomizeForm).acTreeViewItemRename.Visible := False;
  TdxLayoutControlCustomizeForm(dxl.CustomizeForm).acTreeViewItemRename.Enabled := False;
  TdxLayoutControlCustomizeForm(dxl.CustomizeForm).acAvailableItemRename.Visible := False;
  TdxLayoutControlCustomizeForm(dxl.CustomizeForm).acAvailableItemRename.Enabled := False;
{
  if xds.Locate('FORMNAME',Name,[]) and not xds.FieldByName('LAYOUT').IsNull then
  begin
     TBlobField(xds.FieldByName('LAYOUT')).SaveToStream(dxl.StoredStream);
     dxl.LoadFromStream(dxl.StoredStream);
  end;
}
  PersModified := True;
end;

destructor TBaseForm.Destroy;
begin
  if FPersModified then
  begin
     StopPersonalizza;
  end;
  inherited;
end;

procedure TBaseForm.StopPersonalizza;
begin
end;

procedure TBaseForm.SetImgList(iList: TcxImageList);
var
  i: integer;
begin

   for i:=0 to ComponentCount-1 do
   begin
       if (Components[i] is TcxGridDBTableView) then
       begin
          TcxGridDBTableView(Components[i]).Navigator.Buttons.Images := iList;
       end
       else if (Components[i] is TcxButton) then
       begin
          TcxButton(Components[i]).OptionsImage.Images := iList;
       end
       else if (Components[i] is TdxBarManager) then
       begin
          TdxBarManager(Components[i]).ImageOptions.Images := iList;
       end
{
       else if (Components[i] is TgmDBNavigator) then
       begin
          TgmDBNavigator(Components[i]).Buttons.Images := iList;
       end
}
       else if (Components[i] is TActionList) then
       begin
          TActionList(Components[i]).Images := iList;
       end;
   end;

end;

initialization
  xWindowsMode := syUnica;

end.
