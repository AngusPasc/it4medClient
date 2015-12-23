unit ModDiagnostiche;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseRad, CSEZForm,   ExtCtrls, 
  cxDropDownEdit, cxImageComboBox, cxDBEdit, DB, dxLayoutControl,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxControls, cxCheckBox,
  cxSpinEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, AstaDrv2,
  AstaClientDataset, cxCalendar, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxLookAndFeels, dxLayoutcxEditAdapters, ActnList,
  cxNavigator, dxLayoutContainer, cxGroupBox;

type
  TFModDiagnostiche = class(TFBaseRad)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDescrizione: TcxDBMaskEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    sDiagnostiche: TDataSource;
    cxTipo: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBSpinEdit1: TcxDBSpinEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    sDiagnxServ: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxServxRad: TdxLayoutItem;
    cxGrid1DBTableView1DIAGNOSTICA_FK: TcxGridDBColumn;
    cxGrid1DBTableView1SERVIZI_FK: TcxGridDBColumn;
    sServizi: TDataSource;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBCheckBox4: TcxDBCheckBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBCheckBox5: TcxDBCheckBox;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBCheckBox6: TcxDBCheckBox;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBSpinEdit3: TcxDBSpinEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBCheckBox8: TcxDBCheckBox;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControlRefUnico: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item18: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item20: TdxLayoutItem;
    qTipoEsecuzione: TAstaClientDataSet;
    sqTipoEsecuzione: TDataSource;
    qTipoEsecuzioneESEGUITO: TIntegerField;
    qTipoEsecuzioneDESCRIZIONE: TStringField;
    qSlot: TAstaClientDataSet;
    sqSlot: TDataSource;
    qSlotSLOT_STANDARD: TIntegerField;
    qSlotDESCRIZIONE: TStringField;
    sTabPacs: TDataSource;
    ActionList1: TActionList;
    aAnnulla: TAction;
    qCtrlEseguito: TAstaClientDataSet;
    sqCtrlEseguito: TDataSource;
    qCtrlEseguitoCTRL_ESEGUITO: TIntegerField;
    qCtrlEseguitoDESCRIZIONE: TStringField;
    aConferma: TAction;
    procedure qTipoEsecuzioneBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qSlotBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure aAnnullaExecute(Sender: TObject);
    procedure qCtrlEseguitoBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure aConfermaExecute(Sender: TObject);
    procedure aConfermaUpdate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure DoCreate; override;
    procedure DoShow; override;
    procedure StartPersonalizza; override;
    procedure StopPersonalizza; override;
    procedure ResetPersonalizza; override;    
  public
    { Public declarations }
   
  end;

var
  FModDiagnostiche: TFModDiagnostiche;

implementation

uses DMCommon, Struttura;

{$R *.dfm}

procedure TFModDiagnostiche.DoShow;
begin
  inherited;
  dxLayoutControlRefUnico.Visible := (FDMCommon.LeggiPostoLavoroCHK_FONDI_REFERTO.AsInteger=1);
  qTipoEsecuzione.Open;
  qCtrlEseguito.Open;
  qSlot.Open;
end;

procedure TFModDiagnostiche.DoCreate;
begin
  inherited;
//  Personalizza := gblSuperUser;
  FDMCommon.CaricaLayout(Name,dxLayoutControl1);

  if not FStruttura.TabPacs.Active then
     FStruttura.TabPacs.Open;
  if not Assigned(sTabPacs.DataSet) then
     sTabPacs.DataSet := FStruttura.TabPacs;
  if not Assigned(sDiagnxServ.DataSet) then
     sDiagnxServ.DataSet := FStruttura.DiagnxServ;
  if not Assigned(sDiagnostiche.DataSet) then
     sDiagnostiche.DataSet := FStruttura.Diagnostiche;

end;

procedure TFModDiagnostiche.qTipoEsecuzioneBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFModDiagnostiche.qSlotBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFModDiagnostiche.aAnnullaExecute(Sender: TObject);
begin
  inherited;
  sDiagnostiche.Dataset.Cancel;
  TAstaClientDataSet(sDiagnxServ.DataSet).CancelUpdates;
  ModalResult := mrCancel;
end;

procedure TFModDiagnostiche.StartPersonalizza;
begin
  LanciaPersonalizza(dxLayoutControl1,FDMCommon.qFormLayout);
end;

procedure TFModDiagnostiche.StopPersonalizza;
begin
  FDMCommon.SalvaPersonalizza(Name,dxLayoutControl1,gblcodutente);
end;

procedure TFModDiagnostiche.ResetPersonalizza;
begin
  if FDMCommon.ResetLayout(Name,dxLayoutControl1) then
     aAnnulla.Execute;
end;

procedure TFModDiagnostiche.qCtrlEseguitoBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFModDiagnostiche.aConfermaExecute(Sender: TObject);
begin
  inherited;
  sDiagnostiche.Dataset.Post;
  if (sDiagnxServ.DataSet.State in dsEditModes) then
     sDiagnxServ.DataSet.Post;
  try
  FDMCommon.AstaClientSocket.SendDataSetTransactions(Name,[sDiagnostiche.Dataset,sDiagnxServ.DataSet]);
  ModalResult := mrOk;
  except
     TAstaClientDataSet(sDiagnostiche.Dataset).syRevertRecord;
     raise;
  end;
end;

procedure TFModDiagnostiche.aConfermaUpdate(Sender: TObject);
begin
  inherited;
//  aConferma.Enabled := TAstaClientDataSet(sDiagnostiche.Dataset).HasChanged;
end;

end.