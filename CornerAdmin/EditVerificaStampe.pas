unit EditVerificaStampe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseRad, CSEZForm,   ExtCtrls, 
  cxDBEdit, dxLayoutControl, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxControls, DB, AstaDrv2, AstaClientDataset, cxMemo,
  cxCheckBox, ActnList, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxGraphics, cxDropDownEdit, cxImageComboBox, dxSkinsCore,
  dxSkinsDefaultPainters, cxLookAndFeels, dxLayoutcxEditAdapters,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutControlAdapters, dxLayoutContainer, cxGroupBox;

type
  TFEditVerificaStampe = class(TFBaseRad)
    sqVerificaStampe: TDataSource;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDBSpinEdit1: TcxDBSpinEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBSTMT: TcxDBMemo;
    dxLayoutControl1Item5: TdxLayoutItem;
    ActionList1: TActionList;
    aConferma: TAction;
    cxButton1: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    aTestControllo: TAction;
    TestControllo: TAstaClientDataSet;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxCheckSelezione: TcxCheckBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxNumAcc: TcxMaskEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    GruppoEsami: TAstaClientDataSet;
    GruppoEsamiDESCRIZIONE: TStringField;
    GruppoEsamiPKGRESAMI: TIntegerField;
    GruppoEsamiGRESAMI: TStringField;
    sGruppoEsami: TDataSource;
    cxLookupMetodica: TcxLookupComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    procedure aConfermaExecute(Sender: TObject);
    procedure aConfermaUpdate(Sender: TObject);
    procedure aTestControlloExecute(Sender: TObject);
    procedure aTestControlloUpdate(Sender: TObject);
    procedure GruppoEsamiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure csEZKeys1KeyIntercept(KeyType: TNavigationKey;
      Ctrl: TControl; var Intercept: Boolean);
  private
    { Private declarations }
  protected
    procedure DoCreate; override;
    procedure DoShow; override;
  public
    { Public declarations }
    
  end;

var
  FEditVerificaStampe: TFEditVerificaStampe;

implementation

uses DMCommon,MsgDlgs, TabGenerale;

{$R *.dfm}

procedure TFEditVerificaStampe.aConfermaExecute(Sender: TObject);
begin
  inherited;
  if (sqVerificaStampe.DataSet.State in dsEditModes) then
     sqVerificaStampe.DataSet.Post;
  ModalResult := mrOk;
end;

procedure TFEditVerificaStampe.aConfermaUpdate(Sender: TObject);
begin
  inherited;
  aConferma.Enabled := (sqVerificaStampe.DataSet.State in dsEditModes);
end;

procedure TFEditVerificaStampe.aTestControlloExecute(Sender: TObject);
begin
  inherited;
  if (sqVerificaStampe.DataSet.State in dsEditModes) then
     sqVerificaStampe.DataSet.Post;
  TestControllo.ParamByName('codst').AsInteger := sqVerificaStampe.DataSet.FieldbyName('PKVERIFICASTAMPE').AsInteger;
  if cxNumAcc.EditValue<>'' then
     TestControllo.ParamByName('pki').AsInteger := FDMCommon.VarToInt(cxNumAcc.EditValue);
  if cxLookupMetodica.EditValue<>'' then
     TestControllo.ParamByName('xgresami').AsInteger := FDMCommon.VarToInt(cxLookupMetodica.EditValue);
  if cxCheckSelezione.Checked then
     TestControllo.ParamByName('seleziona').AsInteger := 1
  else
     TestControllo.ParamByName('seleziona').AsInteger := 0;
  try
  TestControllo.ExecSQL;
  cxCheckSelezione.EditValue := TestControllo.ParamByName('seleziona').AsInteger;
  except
     on E: Exception do
        MsgDlgPos(E.Message, '', ktError, [kbOk], dfFirst);
  end;
//  sqVerificaStampe.DataSet.RefreshRecord;
end;

procedure TFEditVerificaStampe.aTestControlloUpdate(Sender: TObject);
begin
  inherited;
  aTestControllo.Enabled := (cxDBSTMT.Lines.Count>0);
end;

procedure TFEditVerificaStampe.GruppoEsamiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFEditVerificaStampe.DoShow;
begin
  inherited;
  GruppoEsami.Open;
end;

procedure TFEditVerificaStampe.csEZKeys1KeyIntercept(
  KeyType: TNavigationKey; Ctrl: TControl; var Intercept: Boolean);
begin
  inherited;
  Intercept := Intercept and Assigned(Ctrl) and not (Ctrl is TcxCustomInnerMemo);
end;

procedure TFEditVerificaStampe.DoCreate;
begin
  inherited;
  ReadBarCode := False;
end;

end.