unit ModificaPswdRep;

interface

uses
  BaseRad, Messages, IInterface, {} DB, AstaDrv2, AstaClientDataset, Classes, ActnList, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, Controls, StdCtrls, 
  CSEZForm,   ExtCtrls,  cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl,
  dxSkinsCore, dxSkinsDefaultPainters, Menus,
  cxLookAndFeelPainters, cxButtons, cxGraphics, cxLookAndFeels,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxGroupBox;

type
  TFModificaPswdRep = class(TFBaseRad)
    ActionList1: TActionList;
    Conferma: TAction;
    qryUser: TAstaClientDataSet;
    qryUserREAL_NAME: TStringField;
    qryUserEXPIRATION_DATE: TDateTimeField;
    qryUserISADMIN: TIntegerField;
    qryUserCOD_FUNZIONE: TIntegerField;
    qryUserSUPERUSER: TIntegerField;
    qryUserREPARTI_FK: TIntegerField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    qryUserFUNZ_INTERNI: TIntegerField;
    sqryUser: TDataSource;
    NewPswd1: TcxMaskEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    NewPswd2: TcxMaskEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    qryUserPKPERSONALE: TIntegerField;
    qryUserPASSWORD: TStringField;
    qryUserMOD_PASSWORD: TDateTimeField;
    ControlloPswd: TAstaClientDataSet;
    ControlloPswdPKPERSONALE: TIntegerField;
    ControlloPswdCOGNOME: TStringField;
    ControlloPswdNOME: TStringField;
    ControlloPswdMATRICOLA: TStringField;
    qryUserRESET_PSWD: TIntegerField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ConfermaExecute(Sender: TObject);
    procedure ConfermaUpdate(Sender: TObject);
  private
    { Private declarations }
    function VerificaPswd: integer;
  public
    { Public declarations }
    uName: string;
    uPswd: string;

  end;

var
  FModificaPswdRep: TFModificaPswdRep;

implementation
uses DMCommon,sysutils,crypto, MsgDlgs, Windows;

{$R *.DFM}


procedure TFModificaPswdRep.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if ModalResult=mrNone then
     ModalResult := mrCancel;
end;

procedure TFModificaPswdRep.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then ModalResult:=mrCancel;
end;

procedure TFModificaPswdRep.ConfermaExecute(Sender: TObject);
var
  res: integer;
begin

   res := VerificaPswd;

   case res of
   0,3: begin
        if NewPswd1.Text<>NewPswd2.Text then
        begin
          MsgDlg(RS_ltPswdVerifyFail, '', ktError, [kbOK]);
          NewPswd1.Text := '';
          NewPswd2.Text := '';
          NewPswd1.SetFocus;
        end
        else if NewPswd1.Text=uPswd then
        begin
          MsgDlg(RS_ltPswdUguale, '', ktError, [kbOK]);
          NewPswd1.Text := '';
          NewPswd2.Text := '';
          NewPswd1.SetFocus;
        end
        else begin
          ControlloPswd.Parambyname('PASSWORD').AsString := Encrypt(NewPswd1.Text);
          ControlloPswd.Parambyname('PKPERSONALE').AsInteger := qryUserPKPERSONALE.AsInteger;
          ControlloPswd.syRefresh;
          if not ControlloPswd.IsEmpty then
          begin
            MsgDlg(RS_PasswordUsata, '', ktError, [kbOK]);
            NewPswd1.Text := '';
            NewPswd2.Text := '';
            NewPswd1.SetFocus;
          end
          else begin
            qryUser.Edit;
            qryUserPASSWORD.AsString := Encrypt(NewPswd1.Text);
            if qryUserRESET_PSWD.AsInteger=1 then
               qryUserRESET_PSWD.AsInteger:=0;
            qryUser.Post;
            MsgDlg(RS_PswdCambiata, '', ktInformation, [kbOK]);
            ModalResult := mrOk;
          end;
        end;
      end;
   2:
     begin
      MsgDlg(RS_ltPswdScaduta, '', ktError, [kbOK]);
//      Pswd.Text := '';
//      Pswd.SetFocus;
     end;
   1:
     begin
      MsgDlg(RS_ltUserOrPswdVerifyFail, '', ktError, [kbOK]);
//      Pswd.Text := '';
//      Pswd.SetFocus;
     end;
  end;

end;

function TFModificaPswdRep.VerificaPswd: integer;
begin
  qryUser.Parambyname('USER_NAME').AsString := uName;
  qryUser.Parambyname('USER_PWD').AsString := Encrypt(uPswd);
//  qryUser.Parambyname('LOGIN_NT').AsString := cxNomeUtente.Text;
  qryUser.syrefresh;
  if qryUser.IsEmpty then
     result := 1
  else if qryUser.recordcount>1 then
     result := 3
  else if not qryUserExpiration_Date.IsNull and (qryUserExpiration_Date.AsDateTime<=Date) then
     result := 2
  else begin
     result := 0;
  end;
end;

procedure TFModificaPswdRep.ConfermaUpdate(Sender: TObject);
begin
  inherited;
  Conferma.Enabled := (NewPswd1.Text<>'') and (NewPswd2.Text<>'') and (NewPswd1.Text=NewPswd2.Text);
end;

end.