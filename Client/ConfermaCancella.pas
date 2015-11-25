unit ConfermaCancella;

interface

uses
  BaseRad, Messages, IInterface, IIConsts, {}cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxControls, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, DB, AstaDrv2, AstaClientDataset, Classes,
  ActnList, dxLayoutControl, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxTextEdit, cxDBEdit, CSEZForm, StdCtrls,
  cxButtons, Controls, ExtCtrls, dxLayoutContainer, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxGroupBox;

type
  TFConfermaCancella = class(TFBaseRad)
    ActionList1: TActionList;
    Conferma: TAction;
    Pswd: TcxMaskEdit;
    qryUser: TAstaClientDataSet;
    qMotivi: TAstaClientDataSet;
    sqMotivi: TDataSource;
    cxLookupMotivo: TcxLookupComboBox;
    qMotiviSTATOVISITA: TIntegerField;
    qMotiviDESCRIZIONE: TStringField;
    DatiPaziente: TAstaClientDataSet;
    DatiPazientePKTRIAGE: TIntegerField;
    DatiPazienteNOME_PAZIENTE: TStringField;
    DatiPazienteDIAGNOSTICA: TStringField;
    cxDBTextPaziente: TcxDBTextEdit;
    sDatiPaziente: TDataSource;
    cxDBTextEsame: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    qryUserUSER_PWD: TStringField;
    qryUserUSER_ID: TIntegerField;
    qryUserLAST_PWD_CHANGE: TDateTimeField;
    qryUserEXPIRATION_DATE: TDateTimeField;
    qryUserSERVIZI_FK: TIntegerField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutPassword: TdxLayoutItem;
    dxLayoutControlMotivo: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    DatiPazienteDATA_NASCITA: TDateTimeField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    procedure PswdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ConfermaExecute(Sender: TObject);
    procedure cxLookupMotivoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ConfermaUpdate(Sender: TObject);
    procedure qryUserBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qMotiviBeforeQuery(Sender: TAstaBaseClientDataSet);
  private
    { Private declarations }
    Fuserid: integer;
    Fservid: integer;
    function VerificaPswd(const pswd: string): integer;
    function GetMotivo: integer;
    procedure SyUserBeforeConnect(var Message: TMessage); message SY_USERBEFORECONNECT;
    procedure Setxpk(Value: integer);
  protected
    procedure DoCreate; override;
    procedure DoShow; override;
    procedure StartPersonalizza; override;
    procedure StopPersonalizza; override;
    procedure ResetPersonalizza; override;
  public
    { Public declarations }
//    procedure VerificaPistola(codfirma: integer);

    property userId: integer read FUserid; //write FUseid;
    property servId: integer read FServid;
    property xpk: integer write Setxpk;
    property Motivo: integer read GetMotivo;
  end;

var
  FConfermaCancella: TFConfermaCancella;

implementation
uses DMCommon,sysutils,crypto, MsgDlgs, Windows, variants;

{$R *.DFM}

procedure TFConfermaCancella.PswdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=13) and not cxLookupMotivo.Visible then
     Conferma.Execute;
end;

procedure TFConfermaCancella.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if ModalResult=mrNone then
     ModalResult := mrCancel;
end;

procedure TFConfermaCancella.FormKeyPress(Sender: TObject; var Key: Char);
begin
{
  if Key=#27 then
     ModalResult:=mrCancel;
}
end;

procedure TFConfermaCancella.ConfermaExecute(Sender: TObject);
var
  res: integer;
begin

   if (Pswd.Text<>'') then
      res := VerificaPswd(Pswd.Text)
   else begin
      res := 0;
      Fuserid := gblCodUtente;
      Fservid := gblpkserv;
   end;

   if res=0 then
   begin
      ModalResult := mrOk;
   end
   else if res=2 then
   begin
      MsgDlg(RS_ltPswdScaduta, '', ktError, [kbOK]);
      Pswd.Text := '';
      Pswd.SetFocus;
   end
   else
   begin
      MsgDlg(RS_ltVerifyFail, '', ktError, [kbOK]);
      Pswd.Text := '';
      Pswd.SetFocus;
   end;

   if (ModalResult=mrOk) and cxLookupMotivo.Visible and
      (cxLookupMotivo.Text='') then
//      VarIsNull(cxLookupMotivo.EditValue) then
   begin
     MsgDlg(RS_MotivoObbligatorio, '', ktError, [kbOK]);
     ModalResult := mrNone;
     cxLookupMotivo.SetFocus;
   end;

end;

{
procedure TFConfermaCancella.VerificaPistola(codfirma: integer);
begin
   Fuserid := codfirma;
   ModalResult := mrOk;
end;
}

function TFConfermaCancella.GetMotivo: integer;
begin
   if VarIsNull(cxLookupMotivo.EditValue) then
      result := 0
   else
      result := FDMCommon.VarToInt(cxLookupMotivo.EditValue);
end;

function TFConfermaCancella.VerificaPswd(const pswd: string): integer;
begin
//  qryUser.Close;
  qryUser.Parambyname('USER_PWD').AsString := Encrypt(pswd);
  qryUser.syRefresh;
  if qryUser.IsEmpty then
     result := 1
  else if ({(qryUserUSER_EXPIRE.AsString='1') and}
            not qryUserExpiration_Date.IsNull and (qryUserExpiration_Date.AsDateTime<=Date)) then
     result := 2
  else begin
    result := 0;
    Fuserid := qryUserUSER_ID.AsInteger;
    Fservid := qryUserSERVIZI_FK.AsInteger;
  end;
//  qryUser.close;
end;

procedure TFConfermaCancella.DoShow;
begin
  inherited;
//  Pswd.SetFocus;

//  ActiveControl := Pswd;
//  PostMessage(Handle,WM_ACTIVATE,0,0);
//  PostMessage(Handle,SY_USERBEFORECONNECT,0,0);

  if cxLookupMotivo.Visible then
     qMotivi.open;

end;

procedure TFConfermaCancella.SyUserBeforeConnect(var Message: TMessage);
begin
  //
end;

procedure TFConfermaCancella.Setxpk(Value: integer);
begin
   DatiPaziente.Parambyname('pktriage').AsInteger := Value;
   DatiPaziente.syRefresh;
end;

procedure TFConfermaCancella.cxLookupMotivoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=13 then
     Conferma.Execute;

end;

procedure TFConfermaCancella.ConfermaUpdate(Sender: TObject);
begin
  inherited;
  Conferma.Enabled := {(Pswd.Text<>'') and} (not cxLookupMotivo.Visible or (cxLookupMotivo.Text<>''));
end;

procedure TFConfermaCancella.qryUserBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFConfermaCancella.qMotiviBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFConfermaCancella.DoCreate;
begin
  inherited;
//  Personalizza := gblSuperUser;

  FDMCommon.CaricaLayout(Name,dxLayoutControl1);

end;

procedure TFConfermaCancella.StartPersonalizza;
begin
  LanciaPersonalizza(dxLayoutControl1,FDMCommon.qFormLayout);
end;

procedure TFConfermaCancella.StopPersonalizza;
begin
  FDMCommon.SalvaPersonalizza(Name,dxLayoutControl1,gblcodutente);
end;

procedure TFConfermaCancella.ResetPersonalizza;
begin
  if FDMCommon.ResetLayout(Name,dxLayoutControl1) then
     ModalResult := mrCancel;
end;

end.