unit ConfermaPswdRep;

interface

uses
  BaseRad, Messages, IIConsts, {}cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxControls, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControl, DB, AstaDrv2, AstaClientDataset,
  Classes, ActnList, cxGroupBox, cxRadioGroup, cxSpinEdit, cxDropDownEdit,
  cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxMaskEdit, CSEZForm, StdCtrls, cxButtons, Controls, ExtCtrls,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, ComCtrls,
  dxCore, cxDateUtils, dxLayoutControlAdapters, dxLayoutContainer,
  AstaUpdateSQL;

type
  TFConfermaPswdRep = class(TFBaseRad)
    ActionList1: TActionList;
    Conferma: TAction;
    cxPswd: TcxMaskEdit;
    qryUser: TAstaClientDataSet;
    qryUserREAL_NAME: TStringField;
    qryUserUSER_PWD: TStringField;
    qryUserUSER_ID: TIntegerField;
    qryUserLAST_PWD_CHANGE: TDateTimeField;
    qryUserEXPIRATION_DATE: TDateTimeField;
    qryUserISADMIN: TIntegerField;
    qryUserPROFILO_VOCALE: TStringField;
    qryUserCOD_FUNZIONE: TIntegerField;
    qryUserSUPERUSER: TIntegerField;
    qryUserFUNZ_INTERNI: TIntegerField;
    qryUserESTRAZIONE_DATI: TIntegerField;
    qryUserSERVIZI_FK: TIntegerField;
    cxReparti: TcxLookupComboBox;
    sqryUser: TDataSource;
    aValidaPswd: TAction;
    qryUserREPARTO: TStringField;
    qryUserOSPEDALE: TStringField;
    qryUserTIPO_CARTA: TIntegerField;
    qryUserDESCRSERVIZIO: TStringField;
    qryUserDBLCLICKTIME: TIntegerField;
    qryUserSPOSTA: TIntegerField;
    qryUserALLOW_OVERBOOKING: TIntegerField;
    qryUserREPARTI_FK: TIntegerField;
    qryUserREP_DEF: TIntegerField;
    qryUserESEGUITO: TIntegerField;
    qryUserCODICE_FISCALE: TStringField;
    aModificaPswd: TAction;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutPswd: TdxLayoutItem;
    dxLayoutReparto: TdxLayoutItem;
    dxLayoutBtnModificaPswd: TdxLayoutItem;
    btnModPswd: TcxButton;
    dxLayoutControl1Group8: TdxLayoutGroup;
    qryUserRESET_PSWD: TIntegerField;
    qryUserLOGIN_NT: TStringField;
    cxUtente: TcxMaskEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    cxBtnTestAV: TcxButton;
    qryUserINTESTAREF3: TStringField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ConfermaExecute(Sender: TObject);
    procedure aValidaPswdExecute(Sender: TObject);
    procedure aModificaPswdExecute(Sender: TObject);
    procedure csEZKeys1KeyIntercept(KeyType: TNavigationKey;
      Ctrl: TControl; var Intercept: Boolean);
    procedure ConfermaUpdate(Sender: TObject);
    procedure cxRadioStatoPropertiesChange(Sender: TObject);
    procedure qryUserAfterPopulate(Sender: TObject);
    procedure qryUserBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxPswdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxPswdEnter(Sender: TObject);
    procedure cxPswdExit(Sender: TObject);
    procedure cxRepartiEnter(Sender: TObject);
    procedure cxRepartiExit(Sender: TObject);
    procedure cxRepartiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxUtenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aModificaPswdUpdate(Sender: TObject);
    procedure cxBtnTestAVClick(Sender: TObject);
    procedure BaseFormCreate(Sender: TObject);
    procedure BaseFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FTestAttivato: Boolean;
    FNrErrori: integer;
    xrep_def: integer;
    FEstrazioneDati: boolean;
    FEseguiEsame: boolean;
    FIsMedico: boolean;
    FCod_fisc: string;
    Fuser_id: integer;
    Fusername: string;
//    Fpassword: string;
    Fuserisadmin: boolean;
    FProfiloVocale: string;
//    FFunzione: integer;
    FSuperUser: boolean;
    FSposta: boolean;
    FCercaReparto: boolean;
    function VerificaPswd(const uname,pswd: string): integer;
    procedure SyUserBeforeConnect(var Message: TMessage); message SY_USERBEFORECONNECT;
    procedure RicercaUtente;
  protected
    procedure DoCreate; override;
    procedure DoShow; override;     
  public
    { Public declarations }
    res: integer;
    procedure VerificaPistola(pswd: string);

    property userisadmin: boolean read Fuserisadmin write Fuserisadmin;
    property user_id: integer read FUser_id write FUser_id;
    property username: string read Fusername write Fusername;
    property ProfiloVocale: string read FProfiloVocale write FProfiloVocale;
//    property Funzione: integer read FFunzione write FFunzione;
    property SuperUser: boolean read FSuperUser write FSuperUser;
    property Sposta: boolean read FSposta write FSposta;
    property Cod_fisc: string read FCod_fisc write FCod_fisc;
    property IsMedico: boolean read FIsMedico;
    property EstrazioneDati: boolean read FEstrazioneDati;
    property EseguiEsame: boolean read FEseguiEsame write FEseguiEsame;
    property CercaReparto: boolean read FCercaReparto write FCercaReparto;
  end;

var
  FConfermaPswdRep: TFConfermaPswdRep;

implementation
uses DMCommon,sysutils,crypto, MsgDlgs, Windows, ModificaPswdRep, Forms;

{$R *.DFM}

procedure TFConfermaPswdRep.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if ModalResult=mrNone then
     ModalResult := mrCancel;
end;

procedure TFConfermaPswdRep.FormKeyPress(Sender: TObject; var Key: Char);
begin
{
  if Key=#27 then
     ModalResult:=mrCancel;
}
end;

procedure TFConfermaPswdRep.ConfermaExecute(Sender: TObject);
begin

  if (res=-1) then
     aValidaPswd.Execute;

  if (res in [1,2]) then
     res := -1
  else if (res=0) or ((res=3) and dxLayoutReparto.Enabled) then
  begin
      Fuser_id := qryUserUSER_ID.AsInteger;
      FUsername := qryUserREAL_NAME.AsString;
      Fuserisadmin := (qryUserISADMIN.AsInteger=1);
      FProfiloVocale := qryUserPROFILO_VOCALE.AsString;
//      FFunzione := qryUserCOD_FUNZIONE.AsInteger;
      FSuperUser := (qryUserSUPERUSER.AsInteger=1);
      FSposta := (qryUserSPOSTA.AsInteger=1);
      FCod_fisc := qryUserCODICE_FISCALE.AsString;
      FIsMedico := (qryUserFUNZ_INTERNI.AsInteger in [1,3,4]);
      FEstrazioneDati := (qryUserESTRAZIONE_DATI.AsInteger=1);
      FEseguiEsame := (qryUserESEGUITO.AsInteger=1);
      if not FCercaReparto and qryUserCOD_FUNZIONE.IsNull then
      begin
        MsgDlg(RS_NoProfilo, '', ktError, [kbOK]);
      end
      else begin
        FDMCommon.LoginNT := cxUtente.Text;      
        ModalResult := mrOk;
      end;
  end
  else if (res=3) and CercaReparto then
  begin
     dxLayoutReparto.Enabled := true;
     if xrep_def>=0 then
        cxReparti.EditValue := xrep_def;
     cxReparti.SetFocus;
  end;

end;

procedure TFConfermaPswdRep.VerificaPistola(pswd: string);
begin
  qryUser.Parambyname('USER_PWD').AsString := pswd;
  qryUser.syRefresh;
  if not qryUser.IsEmpty then
  begin
      Fuser_id := qryUserUSER_ID.AsInteger;
      FEseguiEsame := (qryUserESEGUITO.AsInteger=1);
      FIsMedico := (qryUserFUNZ_INTERNI.AsInteger in [1,3,4]);
      FUsername := qryUserREAL_NAME.AsString;
      ModalResult := mrOk;
  end
  else
     MsgDlg(RS_UtenteNonTrovato, '', ktError, [kbOk], dfFirst);
end;

function TFConfermaPswdRep.VerificaPswd(const uname,pswd: string): integer;
begin
//  qryUser.Close;
  qryUser.Parambyname('USER_NAME').AsString := uname;
  qryUser.Parambyname('USER_PWD').AsString := Encrypt(pswd);
  qryUser.syRefresh;
  if qryUser.IsEmpty then
     result := 1
  else if qryUserRESET_PSWD.AsInteger=1 then
     result := 4
  else if (qryUser.recordcount>1) and CercaReparto then
  begin
     if xrep_def>=0 then
        qryUser.Locate('REPARTI_FK',xrep_def,[]);
     result := 3;
  end
  else if ({(qryUserUSER_EXPIRE.AsString='1') and}
            not qryUserExpiration_Date.IsNull and (qryUserExpiration_Date.AsDateTime<=Date)) then
     result := 2
  else begin
    result := 0;
  end;
//  qryUser.close;
end;

procedure TFConfermaPswdRep.DoShow;
begin
  inherited;
//  Pswd.SetFocus;

//  ActiveControl := Pswd;
//  PostMessage(Handle,WM_ACTIVATE,0,0);
  if (res=3) and CercaReparto then
  begin
//     dxLayoutReparto.Enabled := true;
     if xrep_def>0 then
     begin
        cxReparti.EditValue := xrep_def;
        qryUser.Locate('REPARTI_FK',xrep_def,[]);
     end;
     cxReparti.SetFocus;
  end;
  PostMessage(Handle,SY_USERBEFORECONNECT,0,0);
end;

procedure TFConfermaPswdRep.SyUserBeforeConnect(var Message: TMessage);
begin

  if not cxPswd.Enabled and dxLayoutReparto.Enabled then
     cxReparti.SetFocus
  else
//  if cxPswd.Enabled then
//    cxPswd.SetFocus;
  if cxUtente.Enabled then
    cxUtente.SetFocus;

end;

procedure TFConfermaPswdRep.DoCreate;
begin
  inherited;
  cxReparti.Properties.Grid.DataController.DataModeController.SyncMode := True;
  res := -1;
  FCercaReparto := false;
  xrep_def := -1;
  FNrErrori := 0;
  dxLayoutReparto.Enabled := False;
  Caption := Application.Title;
end;

procedure TFConfermaPswdRep.aValidaPswdExecute(Sender: TObject);
begin
  inherited;

   res := VerificaPswd(cxUtente.Text,cxPswd.Text);
   case res of
   4: begin
         MsgDlg(RS_ltPswdDaCambiare, '', ktInformation, [kbOK]);
         aModificaPswd.Execute;
      end;
   3: begin
//        dxLayoutReparti.Visible := true;
//        cxReparti.EditValue := qryUserREPARTI_FK.AsInteger;
//        cxReparti.SetFocus;
      end;
   0:
     begin
//      ModalResult := mrOk;
        Conferma.Execute;
     end;
   2:
     begin
      FNrErrori := FNrErrori+1;
      MsgDlg(RS_ltPswdScaduta, '', ktError, [kbOK]);
      cxPswd.SelectAll;
      cxPswd.Text := '';
      cxPswd.SetFocus;
     end;
   1:
     begin
      FNrErrori := FNrErrori+1;
      MsgDlg(RS_ltUserOrPswdVerifyFail, '', ktError, [kbOK]);
//      MessageDlg(RS_ltUserOrPswdVerifyFail, mtError, [mbOK], 0);
//      Application.MessageBox(PChar(RS_ltUserOrPswdVerifyFail), PChar(RAD_Errore), MB_OK);
      cxPswd.SelectAll;
      cxPswd.Text := '';
      cxPswd.SetFocus;
     end;
   end;

{JRT 4969}
   if FNrErrori=3 then
     ModalResult := mrCancel;
{}
end;

procedure TFConfermaPswdRep.aModificaPswdExecute(Sender: TObject);
begin
  inherited;

  if VerificaPswd(cxUtente.Text, cxPswd.Text)>0 then

  FModificaPswdRep := TFModificaPswdRep.Create(nil);
  try
     FModificaPswdRep.uName := cxUtente.Text;
     FModificaPswdRep.uPswd := cxPswd.Text;
     if FModificaPswdRep.ShowModal=mrOk then
     begin
        cxPswd.Text := FModificaPswdRep.NewPswd1.Text;
     end;
     cxPswd.SetFocus;
     res := -1;
  finally
     FreeAndNil(FModificaPswdRep);
  end;
end;

procedure TFConfermaPswdRep.RicercaUtente;
begin
  inherited;
   res := -1;
   if dxLayoutReparto.Enabled then
   begin
      cxReparti.Clear;
      dxLayoutReparto.Enabled := False;
   end;
   Conferma.Execute;
end;

procedure TFConfermaPswdRep.csEZKeys1KeyIntercept(KeyType: TNavigationKey;
  Ctrl: TControl; var Intercept: Boolean);
begin
  inherited;
  Intercept := not (Ctrl is TcxButton) and
               not ((Ctrl.Owner is TcxMaskEdit) and (TcxMaskEdit(Ctrl.Owner).Name='cxPswd')) and
               not ((Ctrl.Owner is TcxLookupComboBox) and (TcxLookupComboBox(Ctrl.Owner).Name='cxReparti'));

end;

procedure TFConfermaPswdRep.ConfermaUpdate(Sender: TObject);
begin
  inherited;
  Conferma.Enabled := ((CercaReparto and (not dxLayoutReparto.Enabled or (cxReparti.Text<>''))) or not CercaReparto)
                      and (cxUtente.Text<>'') and (cxPswd.Text<>'');
end;

procedure TFConfermaPswdRep.cxRadioStatoPropertiesChange(Sender: TObject);
begin
  inherited;
//  cxLookupMedici.Enabled := (cxRadioStato.ItemIndex=0);
//  if not cxLookupMedici.Enabled then
//     cxLookupMedici.Clear;
end;

procedure TFConfermaPswdRep.qryUserAfterPopulate(Sender: TObject);
begin
  inherited;
  qryUser.First;
  while not qryUser.eof do
  begin
     if qryUserREP_DEF.AsInteger=1 then
     begin
        xrep_def := qryUserREPARTI_FK.AsInteger;
        break;
     end;
     qryUser.Next;
  end;
end;

procedure TFConfermaPswdRep.qryUserBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  if not FCercaReparto then
	   Sender.Parambyname('reparti_fk').AsInteger := gblpkrep
  else
	   Sender.Parambyname('reparti_fk').Clear;
end;

procedure TFConfermaPswdRep.cxPswdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key in [VK_RETURN,VK_TAB]) then
     RicercaUtente;
end;

procedure TFConfermaPswdRep.cxPswdEnter(Sender: TObject);
begin
  inherited;
  Catch := True;
end;

procedure TFConfermaPswdRep.cxPswdExit(Sender: TObject);
begin
  inherited;
  Catch := False;
end;

procedure TFConfermaPswdRep.cxRepartiEnter(Sender: TObject);
begin
  inherited;
  Catch := True;
end;

procedure TFConfermaPswdRep.cxRepartiExit(Sender: TObject);
begin
  inherited;
  Catch := False;
end;

procedure TFConfermaPswdRep.cxRepartiKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key in [VK_RETURN,VK_TAB]) then
     Conferma.Execute;
end;

procedure TFConfermaPswdRep.cxUtenteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key in [VK_RETURN,VK_TAB]) then
     SelectNext(cxUtente,True,True);
end;

procedure TFConfermaPswdRep.aModificaPswdUpdate(Sender: TObject);
begin
  inherited;
  aModificaPswd.Enabled := (cxUtente.Text<>'') and (cxPswd.Text<>'');
  cxBtnTestAV.Visible := FTestAttivato;
end;

procedure TFConfermaPswdRep.cxBtnTestAVClick(Sender: TObject);
begin
  inherited;
  raise Exception.Create('Prova AV');
//  raise EInvalidOperation.Create('Prova Invalid Operation'); 
end;

procedure TFConfermaPswdRep.BaseFormCreate(Sender: TObject);
begin
  inherited;
  FTestAttivato := False;
  cxUtente.Text := FDMCommon.LoginNT;
end;

procedure TFConfermaPswdRep.BaseFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=VK_F12) and (ssCtrl in Shift) then
     FTestAttivato := not FTestAttivato;
end;

end.
