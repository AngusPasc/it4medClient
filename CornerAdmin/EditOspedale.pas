unit EditOspedale;

interface

uses
  BaseRad, Menus, cxLookAndFeelPainters, cxGraphics, DB, AstaDrv2,
  AstaClientDataset, dxLayoutControl, cxDBEdit, cxCheckBox, cxDropDownEdit,
  cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxButtonEdit, KScxDBLookupDlg, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxControls, CSEZForm, StdCtrls, cxButtons, Controls,
  ExtCtrls, Classes, cxLookAndFeels, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxGroupBox;

type
  TFEditOspedale = class(TFBaseRad)
    Ospedale: TAstaClientDataSet;
    OspedaleCODICE: TStringField;
    OspedaleDESCRIZIONE: TStringField;
    OspedaleDATA_INIZIO: TDateTimeField;
    OspedaleDATA_FINE: TDateTimeField;
    OspedaleCOM_CODICE: TStringField;
    OspedaleUSL_CODICE: TStringField;
    OspedaleINDIRIZZO: TStringField;
    OspedaleUSL_REG_CODICE: TStringField;
    sOspedale: TDataSource;
    OspedaleDESC_COMUNE: TStringField;
    LkStradario: TAstaClientDataSet;
    LkStradarioINDIRIZZO: TStringField;
    LkStradarioCAP: TStringField;
    LkStradarioINTERVALLI: TStringField;
    OspedaleCAP: TStringField;
    LkUsl: TAstaClientDataSet;
    LkUslDESCRUSL: TStringField;
    LkUslREG_CODICE: TStringField;
    LkUslCODICE: TStringField;
    sLkUsl: TDataSource;
    LkComuni: TAstaClientDataSet;
    LkComuniCODICE: TStringField;
    LkComuniDESCRIZIONE: TStringField;
    LkComuniCAP: TStringField;
    LkComuniCOM_TYPE: TStringField;
    LkComuniNAZ_CODICE: TStringField;
    LkComuniSIGLA: TStringField;
    OspedaleDESCRUSL: TStringField;
    LkStradarioNOTE: TStringField;
    dxLayoutControl1: TdxLayoutControl;
    CodiceOspedale: TcxDBMaskEdit;
    DescOspedale: TcxDBMaskEdit;
    Comune_Ospedale: TKScxDBLookupDlg;
    Indirizzo: TKScxDBLookupDlg;
    CAP_COMRES: TcxDBMaskEdit;
    ASLAppartiene: TcxDBLookupComboBox;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    OspedaleTIPO_FATTURA: TIntegerField;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    OspedaleTIPO_ATTIVITA_FK: TStringField;
    OspedaleCOD_RIC: TStringField;
    CodiceRicerca: TcxDBMaskEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    Attivita: TcxDBLookupComboBox;
    dxLayoutControl1Item11: TdxLayoutItem;
    OspedaleES_TICKET: TStringField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBMaskEdit1: TcxDBMaskEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    OspedaleCOD_AZIENDA: TStringField;
    cxDBMaskEdit2: TcxDBMaskEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    OspedaleCOD_HSP11: TStringField;
    Listini: TAstaClientDataSet;
    ListiniCODICE: TStringField;
    ListiniDESCRIZIONE: TStringField;
    sListini: TDataSource;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item17: TdxLayoutItem;
    OspedaleLEG_CODICE: TStringField;
    sTipoAttivita: TDataSource;
    sTipoEsenzioni: TDataSource;
    OspedaleAGENDE_ESCLUSIVE: TIntegerField;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item18: TdxLayoutItem;
    OspedaleCODICE_EST: TStringField;
    cxDBMaskEdit3: TcxDBMaskEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    OspedalePERC_ONCO: TIntegerField;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutControl1Item20: TdxLayoutItem;
    OspedaleCOD_STS11: TStringField;
    LkTipoFattura: TAstaClientDataSet;
    LkTipoFatturaPKTIPO_FATTURA: TIntegerField;
    LkTipoFatturaDESCRIZIONE: TStringField;
    cxDBLookupTipoFattura: TcxDBLookupComboBox;
    dxLayoutControl1Item21: TdxLayoutItem;
    sLkTipoFattura: TDataSource;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    procedure LkComuniBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure LkStradarioBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure IndirizzoCloseDialog(Sender: TObject; const Scelto: Boolean);
    procedure Comune_OspedaleCloseDialog(Sender: TObject;
      const Scelto: Boolean);
    procedure LkUslBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure btSalvaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ASLAppartienePropertiesCloseUp(Sender: TObject);
    procedure OspedaleNewRecord(DataSet: TDataSet);
    procedure BaseFormDestroy(Sender: TObject);
    procedure LkTipoFatturaBeforeQuery(Sender: TAstaBaseClientDataSet);
  private
    { Private declarations }
  protected
    procedure DoCreate; override;
    procedure StartPersonalizza; override;
    procedure StopPersonalizza; override;
    procedure ResetPersonalizza; override;    
  public
    { Public declarations }
    
  end;

var
  FEditOspedale: TFEditOspedale;

implementation

uses DMCommon, TabGenerale;

{$R *.dfm}

procedure TFEditOspedale.LkComuniBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('NAZ_CODICE').AsString := '100';

end;

procedure TFEditOspedale.LkStradarioBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('COD_COM').AsString := OspedaleCOM_CODICE.AsString;
end;

procedure TFEditOspedale.IndirizzoCloseDialog(Sender: TObject;
  const Scelto: Boolean);
begin
  inherited;
//  if Indirizzo.Lookuptable.Fieldbyname('CAP').AsString<>'' then
//     OspedaleCAP.AsString := Indirizzo.Lookuptable.Fieldbyname('CAP').AsString;

end;

procedure TFEditOspedale.Comune_OspedaleCloseDialog(Sender: TObject;
  const Scelto: Boolean);
begin
  inherited;
  OspedaleCAP.AsString := Comune_Ospedale.LookupTable.Fieldbyname('CAP').AsString;
  LkUsl.syRefresh;
  if LkUsl.RecordCount=1 then
  begin
    OspedaleUSL_CODICE.AsString := LkUslCODICE.AsString;
    OspedaleUSL_REG_CODICE.AsString := LkUslREG_CODICE.AsString;
    ASLAppartiene.Text := LkUslDESCRUSL.AsString;
  end
  else if Ospedale.State=dsInsert then
    ASLAppartiene.Clear;

end;

procedure TFEditOspedale.LkUslBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('COM_CODICE').AsString := OspedaleCOM_CODICE.AsString;

end;

procedure TFEditOspedale.btSalvaClick(Sender: TObject);
begin
  inherited;
  Ospedale.Post;
  ModalResult := mrOk;
end;

procedure TFEditOspedale.FormShow(Sender: TObject);
begin
  inherited;
  sTipoAttivita.Dataset.Filter := 'ATTIVO = 1';
  sTipoAttivita.Dataset.Filtered := true;
  LkUsl.Open;
  Listini.open;
  LkTipoFattura.Open;
end;

procedure TFEditOspedale.DoCreate;
begin
  inherited;
//  Personalizza := gblSuperUser;
  FDMCommon.CaricaLayout(Name,dxLayoutControl1);

  ASLAppartiene.Properties.Grid.DataController.DataModeController.SyncMode := True;
end;

procedure TFEditOspedale.ASLAppartienePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if Ospedale.Active and (Ospedale.State in dsEditModes) then
     OspedaleUSL_REG_CODICE.AsString := LkUslREG_CODICE.AsString;

end;

procedure TFEditOspedale.OspedaleNewRecord(DataSet: TDataSet);
begin
  inherited;
  OspedaleTIPO_FATTURA.AsInteger := 0;
  OspedaleAGENDE_ESCLUSIVE.AsInteger := 0;
  OspedalePERC_ONCO.AsInteger := 0;
end;

procedure TFEditOspedale.BaseFormDestroy(Sender: TObject);
begin
  inherited;
  sTipoAttivita.Dataset.Filtered := false;
  sTipoAttivita.Dataset.Filter := '';
end;

procedure TFEditOspedale.LkTipoFatturaBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFEditOspedale.StartPersonalizza;
begin
  LanciaPersonalizza(dxLayoutControl1,FDMCommon.qFormLayout);
end;

procedure TFEditOspedale.StopPersonalizza;
begin
  FDMCommon.SalvaPersonalizza(Name,dxLayoutControl1,gblcodutente);
end;

procedure TFEditOspedale.ResetPersonalizza;
begin
  if FDMCommon.ResetLayout(Name,dxLayoutControl1) then
     ModalResult := mrCancel;
end;

end.