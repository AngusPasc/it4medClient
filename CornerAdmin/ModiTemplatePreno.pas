unit ModiTemplatePreno;

interface

uses
  cxSchedulerEventEditor, cxSchedulerStorage, syScheduler,{}cxGraphics, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxMaskEdit,
  Menus, cxLookAndFeelPainters, AstaDrv2, dxBar, Classes, ActnList,
  AstaClientDataset, cxSpinEdit, cxTimeEdit, StdCtrls, cxButtons,
  cxTrackBar, cxImageComboBox, cxDBEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxHeader, cxSplitter, ExtCtrls,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCheckBox, Controls, cxContainer, cxLabel, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinsdxBarPainter, cxLookAndFeels,
  dxLayoutcxEditAdapters, dxLayoutControl, dxSkinscxPCPainter, cxNavigator,
  dxLayoutContainer, AstaUpdateSQL;

type

  TFModiTemplatePreno = class(TcxSchedulerCustomEventEditor)
    sQyTempEsami: TDataSource;
    Panel2: TPanel;
    Splitter1: TcxSplitter;
    fcLabel1: TcxHeader;
    fcLabel6: TcxHeader;
    EsamixDiagn: TAstaClientDataSet;
    EsamixDiagnSERVIZI_FK: TIntegerField;
    EsamixDiagnFREQUENZA: TIntegerField;
    EsamixDiagnDESCRIZIONE: TStringField;
    EsamixDiagnCODICE: TStringField;
    EsamixDiagnDURATA: TIntegerField;
    EsamixDiagnIDENT_FK: TStringField;
    sEsamixDiagn: TDataSource;
    ActionList1: TActionList;
    aSelezionaTuttiCodici: TAction;
    aSelezionaSingoloCodice: TAction;
    aDeselezionaTuttiCodici: TAction;
    aDeselezionaSingolo: TAction;
    dxBarPopupSeleziona: TdxBarPopupMenu;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarPopupDeseleziona: TdxBarPopupMenu;
    aConferma: TAction;
    EsamixDiagnPKCODICIRAD: TIntegerField;
    lbSettimana: TcxLabel;
    sTipoAttivita: TDataSource;
    edTipo: TcxDBImageComboBox;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxDBGrid2: TcxGridDBTableView;
    cxDBGrid2CODICE: TcxGridDBColumn;
    cxDBGrid2CODICIRAD_FK: TcxGridDBColumn;
    cxDBGrid2DESCRIZIONE: TcxGridDBColumn;
    cxDBGrid2IDENT_FK: TcxGridDBColumn;
    cxDBGrid2DURATA: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGrid2Level1: TcxGridLevel;
    cxDBGrid1: TcxGridDBTableView;
    cxDBGrid1CODICE: TcxGridDBColumn;
    cxDBGrid1DESCRIZIONE: TcxGridDBColumn;
    cxDBGrid1FREQUENZA: TcxGridDBColumn;
    cxDBGrid1PKCODICIRAD: TcxGridDBColumn;
    cxDBGrid1IDENT_FK: TcxGridDBColumn;
    cxDBGrid1DURATA: TcxGridDBColumn;
    cxBloccato: TcxDBCheckBox;
    cxProvenienza: TcxDBLookupComboBox;
    sLkOspedali: TDataSource;
    cxTrackBar1: TcxTrackBar;
    cxTrackBar2: TcxTrackBar;
    cxAttivita: TcxDBLookupComboBox;
    cxCup: TcxDBCheckBox;
    sLkReparti: TDataSource;
    cxRepRich: TcxDBLookupComboBox;
    sLkServizi: TDataSource;
    LkServizi: TAstaClientDataSet;
    LkServiziPKSERVIZI: TIntegerField;
    LkServiziDESCRIZIONE: TStringField;
    LkServiziCODICE: TStringField;
    LkServiziREPARTI_FK: TIntegerField;
    LkServiziTIPO_ATTIVITA_FK: TStringField;
    cxServRich: TcxDBLookupComboBox;
    sServiziRadiologia: TDataSource;
    cxServRad: TcxDBLookupComboBox;
    ServiziRadiologia: TAstaClientDataSet;
    ServiziRadiologiaDIAGNOSTICA_FK: TIntegerField;
    ServiziRadiologiaPKSERVIZI: TIntegerField;
    ServiziRadiologiaDESCRIZIONE: TStringField;
    cxDipartRich: TcxDBLookupComboBox;
    Dipartimenti: TAstaClientDataSet;
    DipartimentiPKDIPARTIMENTI: TIntegerField;
    DipartimentiDESCRIZIONE: TStringField;
    sDipartimenti: TDataSource;
    Panel1: TPanel;
    btSalva: TcxButton;
    btAnnulla: TcxButton;
    sqTempAgende: TDataSource;
    teStart: TcxTimeEdit;
    teFinish: TcxTimeEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControlReparto: TdxLayoutItem;
    dxLayoutControlServizio: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutServRad: TdxLayoutItem;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    qTempAgende: TAstaClientDataSet;
    qTempAgendeSERVIZI_FK: TIntegerField;
    qTempAgendeORA_INIZIO: TDateTimeField;
    qTempAgendeORA_FINE: TDateTimeField;
    qTempAgendePKTEMPAGENDE: TIntegerField;
    qTempAgendeBLOCCATO: TIntegerField;
    qTempAgendeTMPLCALEND_FK: TIntegerField;
    qTempAgendeOSP_RICH: TStringField;
    qTempAgendeOSPEDALE: TStringField;
    qTempAgendeGIORNO: TStringField;
    qTempAgendeTIPO_ATTIVITA_FK: TStringField;
    qTempAgendeTIPOATTIVITA: TStringField;
    qTempAgendePRENOCUP: TIntegerField;
    qTempAgendeREP_RICH_FK: TIntegerField;
    qTempAgendeREPRICHIEDE: TStringField;
    qTempAgendeSERV_RICH_FK: TIntegerField;
    qTempAgendeSERVRICHIEDE: TStringField;
    qTempAgendeDESCRADSERV: TStringField;
    qTempAgendeSERVRAD_FK: TIntegerField;
    qTempAgendeDIPARTIMENTI_FK: TIntegerField;
    qTempAgendeDIPARTIMENTO: TStringField;
    qTempAgendeEVENT_TYPE: TIntegerField;
    qTempAgendeOPTIONS: TIntegerField;
    qTempAgendeCOLORE: TIntegerField;
    qTempAgendeDESCRICH: TStringField;
    qTempAgendeUSER_ID: TIntegerField;
    qTempAgendeSET_COLORI_FK: TIntegerField;
    qTempAgendeTIPO_FATTURA: TIntegerField;
    qTempAgendePROVENIENZA: TStringField;
    qTempAgendeDESCPROVENIENZA: TStringField;
    qTempAgendeICONA: TIntegerField;
    QyTempEsami: TAstaClientDataSet;
    QyTempEsamiCODICIRAD_FK: TIntegerField;
    QyTempEsamiDESCRIZIONE: TStringField;
    QyTempEsamiCODICE: TStringField;
    QyTempEsamiDURATA: TIntegerField;
    QyTempEsamiIDENT_FK: TStringField;
    QyTempEsamiTEMPAGENDE_FK: TIntegerField;
    updQyTempEsami: TAstaUpdateSQL;
    procedure btAnnullaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure aSelezionaTuttiCodiciExecute(Sender: TObject);
    procedure aSelezionaTuttiCodiciUpdate(Sender: TObject);
    procedure aSelezionaSingoloCodiceExecute(Sender: TObject);
    procedure aSelezionaSingoloCodiceUpdate(Sender: TObject);
    procedure aDeselezionaTuttiCodiciExecute(Sender: TObject);
    procedure aDeselezionaTuttiCodiciUpdate(Sender: TObject);
    procedure aDeselezionaSingoloExecute(Sender: TObject);
    procedure aDeselezionaSingoloUpdate(Sender: TObject);
    procedure aConfermaExecute(Sender: TObject);
    procedure aConfermaUpdate(Sender: TObject);
    procedure cxDBGrid2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure cxDBGrid1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure cxDBGrid1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure cxDBGrid2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure cxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edTipoPropertiesCloseUp(Sender: TObject);
    procedure cxTrackBar1PropertiesChange(Sender: TObject);
    procedure cxTrackBar2PropertiesChange(Sender: TObject);
    procedure fcLabel6SectionClick(HeaderControl: TcxCustomHeader;
      Section: TcxHeaderSection);
    procedure fcLabel1SectionClick(HeaderControl: TcxCustomHeader;
      Section: TcxHeaderSection);
    procedure cxAttivitaPropertiesCloseUp(Sender: TObject);
    procedure BaseFormDestroy(Sender: TObject);
    procedure cxProvenienzaPropertiesCloseUp(Sender: TObject);
    procedure EsamixDiagnBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxRepRichPropertiesCloseUp(Sender: TObject);
    procedure cxDipartRichPropertiesCloseUp(Sender: TObject);
    procedure teStartPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure teFinishPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure qTempAgendeBeforePost(DataSet: TDataSet);
    procedure qTempAgendeCalcFields(DataSet: TDataSet);
    procedure qTempAgendeNewRecord(DataSet: TDataSet);
    procedure cxServRichPropertiesCloseUp(Sender: TObject);
    procedure cxServRadPropertiesCloseUp(Sender: TObject);
    procedure qTempAgendeBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure QyTempEsamiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure QyTempEsamiNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
     pk: Variant;
     FIsInsert: Boolean;
     FIntervallo: integer;
     deStart: TDateTime;
     procedure SetIntervallo(Value: integer);
     procedure AbilitaCampi(change: boolean);
     function GetHelper: TcxSchedulerEventEditorCustomizedHelper;
     function HelperIsCustomerInformationFilledHandler: Boolean;
  protected
    procedure DoCreate; override;
    function IsCustomerInformationFilled: Boolean; virtual;
    function GetHelperClass: TcxSchedulerEditorHelperClass; override;
    procedure InitializeHelper(AEvent: TcxSchedulerControlEvent); override;
    procedure LoadEventValuesIntoControls; override;
    procedure UpdateEventValuesFromControls; override;
    procedure Initialize(AEventInfo: TcxSchedulerEventEditInfo;
      AEditingInfo: TcxSchedulerEditingEventInfo); override;
//    procedure GetEditingEventTime(var AStart, AFinish: TDateTime; var AState: Integer); //override;
    property Helper: TcxSchedulerEventEditorCustomizedHelper read GetHelper;

  public
    { Public declarations }
    property Intervallo: integer read FIntervallo write SetIntervallo;
  end;

var
  FModiTemplatePreno: TFModiTemplatePreno;

implementation

uses DMCommon, Forms, sysutils, dateutils, Variants, Msgdlgs;

{$R *.DFM}

const
 CLRF = #13#10;
 DlgMsg = 'Cannot load data';

{ TFModiTemplatePreno }

procedure TFModiTemplatePreno.Initialize(AEventInfo: TcxSchedulerEventEditInfo;
  AEditingInfo: TcxSchedulerEditingEventInfo);
begin
  inherited;
  Helper.Initialize(AEventInfo, AEditingInfo);
  SetControlLookAndFeel(Self, Helper.LookAndFeel);
end;


function TFModiTemplatePreno.IsCustomerInformationFilled;
begin
 Result := True;
  if False {(QyAgendaORA_INIZIO.AsDateTime>=QyAgendaORA_FINE.AsDateTime)} then
  begin
     MsgDlg(RS_ctrl_iniziofine, '', ktWarning, [kbOK]);
     Result := False;
  end;
end;

function TFModiTemplatePreno.GetHelper: TcxSchedulerEventEditorCustomizedHelper;
begin
 Result := TcxSchedulerEventEditorCustomizedHelper(inherited Helper);
end;

function TFModiTemplatePreno.HelperIsCustomerInformationFilledHandler: Boolean;
begin
 // helper's OnIsCustomerInformationFilled event handler
 Result := IsCustomerInformationFilled;
end;

function TFModiTemplatePreno.GetHelperClass: TcxSchedulerEditorHelperClass;
begin
 // define your own helper class
 Result := TcxSchedulerEventEditorCustomizedHelper;
end;

procedure TFModiTemplatePreno.InitializeHelper(
 AEvent: TcxSchedulerControlEvent);
begin
 inherited;
 Helper.OnIsCustomerInformationFilled := HelperIsCustomerInformationFilledHandler;
end;


procedure TFModiTemplatePreno.LoadEventValuesIntoControls;
begin
  // invoke the parent’s method to load the data into the inherited editing controls
  // located on the form
  inherited LoadEventValuesIntoControls;
  try
    // load the data into the custom editing controls
    // no checking for a null value is needed.
    // The null value is automatically replaced with empty string in the editing controls

    pk := Event.GetCustomFieldValueByName('PKTEMPAGENDE');
    FIsInsert := VarIsNull(pk) or VarIsEmpty(pk);

    if FIsInsert then
    begin
      qTempAgende.OpenNoFetch;
      qTempAgende.Insert;
    end
    else begin
      qTempAgende.ParamByName('PKTEMPAGENDE').Value := pk;
      qTempAgende.Open;
    end;

    if FIsInsert then
    begin
      qTempAgendeSERVIZI_FK.AsVariant := Event.ResourceID;
      qTempAgendeBLOCCATO.AsInteger := 0;
      qTempAgendePRENOCUP.AsInteger := 1;
      qTempAgendeTMPLCALEND_FK.AsVariant := Event.GetCustomFieldValueByName('TMPLCALEND_FK');
      qTempAgendePROVENIENZA.AsVariant := Event.GetCustomFieldValueByName('PROVENIENZA');
      qTempAgendeICONA.AsVariant := Event.GetCustomFieldValueByName('ICONA');
      qTempAgendeDESCPROVENIENZA.AsVariant := Event.GetCustomFieldValueByName('DESCPROVENIENZA');
//      qTempAgende.SequenceField.Apply;
    end;

    deStart := DateOf(Event.Start);
    teStart.Time := TimeOf(Event.Start);
    teFinish.Time := TimeOf(Event.Finish);

 except
   on E: Exception do
     MsgDlg(DlgMsg + CLRF + E.Message,'', ktWarning, [kbOK]);
 end;
end;

procedure TFModiTemplatePreno.UpdateEventValuesFromControls;
begin
  // invoke the parent’s method to post the data from the inherited editing controls
  // located on the form
  inherited UpdateEventValuesFromControls;
  try
//    Event.ID := qTempAgendePKTEMPAGENDE.AsVariant;
    Event.Caption := qTempAgendeDESCPROVENIENZA.AsString;
    Event.ResourceID := qTempAgendeSERVIZI_FK.AsInteger;
    Event.Start := qTempAgendeORA_INIZIO.AsDateTime;  // deStart.Date + teStart.Time {+ BiasTime};
    Event.Finish := qTempAgendeORA_FINE.AsDateTime;  // deStart.Date + teFinish.Time {+ Ord(cbAllDayEvent.Checked) {+ BiasTime};
    Event.LabelColor := FDMCommon.xcolori[qTempAgendeSET_COLORI_FK.AsInteger-1];
    Event.Message := qTempAgendeDESCRICH.AsString;
    // --
    Event.AllDayEvent := False;

    Event.SetCustomFieldValueByName('ICONA', qTempAgendeICONA.AsVariant);
    Event.SetCustomFieldValueByName('PKTEMPAGENDE', qTempAgendePKTEMPAGENDE.AsVariant);
    Event.SetCustomFieldValueByName('USER_ID', qTempAgendeUSER_ID.AsVariant);
    Event.SetCustomFieldValueByName('BLOCCATO', qTempAgendeBLOCCATO.AsVariant);
    Event.SetCustomFieldValueByName('SET_COLORI_FK', qTempAgendeSET_COLORI_FK.AsVariant);
    Event.SetCustomFieldValueByName('TMPLCALEND_FK', qTempAgendeTMPLCALEND_FK.AsVariant);
    Event.SetCustomFieldValueByName('PROVENIENZA', qTempAgendePROVENIENZA.AsVariant);
    Event.SetCustomFieldValueByName('PRENOCUP', qTempAgendePRENOCUP.AsVariant);
    Event.SetCustomFieldValueByName('DIPARTIMENTI_FK', qTempAgendeDIPARTIMENTI_FK.AsVariant);
    Event.SetCustomFieldValueByName('SERVRAD_FK', qTempAgendeSERVRAD_FK.AsVariant);
    Event.SetCustomFieldValueByName('REP_RICH_FK', qTempAgendeREP_RICH_FK.AsVariant);
    Event.SetCustomFieldValueByName('SERV_RICH_FK', qTempAgendeSERV_RICH_FK.AsVariant);
    Event.SetCustomFieldValueByName('OSP_RICH', qTempAgendeOSP_RICH.AsVariant);
    Event.SetCustomFieldValueByName('TIPO_ATTIVITA_FK', qTempAgendeTIPO_ATTIVITA_FK.AsVariant);

    Event.SetCustomFieldValueByName('DESCRADSERV', qTempAgendeDESCRADSERV.AsVariant);
    Event.SetCustomFieldValueByName('OSPEDALE', qTempAgendeOSPEDALE.AsVariant);
    Event.SetCustomFieldValueByName('DIPARTIMENTO', qTempAgendeDIPARTIMENTO.AsVariant);
    Event.SetCustomFieldValueByName('REPRICHIEDE', qTempAgendeREPRICHIEDE.AsVariant);
    Event.SetCustomFieldValueByName('SERVRICHIEDE', qTempAgendeSERVRICHIEDE.AsVariant);

    Modified := True;

 except
   on E: Exception do
     MsgDlg(DlgMsg + CLRF + E.Message,'', ktWarning, [kbOK]);
 end;

end;


(*
procedure TFModiTemplatePreno.GetEditingEventTime(
  var AStart, AFinish: TDateTime; var AState: Integer);
begin
  AStart := deStart + teStart.Time {+ BiasTime};
  AFinish := deStart + teFinish.Time {+ Ord(cbAllDayEvent.Checked) {+ BiasTime};
  AState := 0; //icbShowTimeAs.ItemIndex;
end;
*)

procedure TFModiTemplatePreno.SetIntervallo(Value: integer);
begin
  FIntervallo := Value;
  cxTrackBar1.Properties.PageSize := FIntervallo;
  cxTrackBar2.Properties.PageSize := FIntervallo;
end;

procedure TFModiTemplatePreno.btAnnullaClick(Sender: TObject);
begin
  if (sqTempAgende.DataSet.State in dsEditModes) then
     sqTempAgende.DataSet.Cancel;

	ModalResult := mrCancel;

end;

procedure TFModiTemplatePreno.FormShow(Sender: TObject);
begin

  ServiziRadiologia.Parambyname('diagnostica_fk').Value := Event.ResourceID;
  ServiziRadiologia.open;

  Dipartimenti.Parambyname('reparti_fk').AsInteger := gblpkrep;
  Dipartimenti.open;

  dxLayoutServRad.Visible := (ServiziRadiologia.recordcount>1);

  EsamixDiagn.open;
  QyTempEsami.Open;
  
  lbSettimana.Caption := LongDayNames[DayOfWeek(Event.Start)];

  cxTrackBar1.Position := MinuteOfTheDay(teStart.Time); // MinuteOfTheDay(Event.Start);
  cxTrackBar2.Position := MinuteOfTheDay(teFinish.Time); // MinuteOfTheDay(Event.Finish);


  if (qTempAgendePROVENIENZA.AsString='E') or (qTempAgendePROVENIENZA.AsString='I') then
  begin
      FDMCommon.TipoAttivita.Filtered := false;
      FDMCommon.TipoAttivita.Filter := Format('PROVENIENZA = '#39'%s'#39,[qTempAgendePROVENIENZA.AsString]);
      FDMCommon.TipoAttivita.Filtered := true;
  end
  else
    FDMCommon.TipoAttivita.Filtered := false;

  if qTempAgendeREP_RICH_FK.IsNull then
     LkServizi.Parambyname('reparti_fk').Clear
  else
     LkServizi.Parambyname('reparti_fk').AsInteger := qTempAgendeREP_RICH_FK.AsInteger;
  LkServizi.open;

  AbilitaCampi(FIsInsert);

end;

procedure TFModiTemplatePreno.aSelezionaTuttiCodiciExecute(Sender: TObject);
begin
  cxDBGrid1.DataController.SelectAll;
  cxDBGrid2DragDrop(cxDBGrid2, cxDBGrid1, 0, 0);
end;

procedure TFModiTemplatePreno.aSelezionaTuttiCodiciUpdate(Sender: TObject);
begin
  aSelezionaTuttiCodici.Enabled := EsamixDiagn.Active and not EsamixDiagn.IsEmpty;
end;

procedure TFModiTemplatePreno.aSelezionaSingoloCodiceExecute(Sender: TObject);
begin
  cxDBGrid2DragDrop(cxDBGrid2, cxDBGrid1, 0, 0);
end;

procedure TFModiTemplatePreno.aSelezionaSingoloCodiceUpdate(Sender: TObject);
begin
  aSelezionaSingoloCodice.Enabled := EsamixDiagn.Active and not EsamixDiagn.IsEmpty;
end;

procedure TFModiTemplatePreno.aDeselezionaTuttiCodiciExecute(Sender: TObject);
begin
  cxDBGrid2.DataController.SelectAll;
  cxDBGrid1DragDrop(cxDBGrid1, cxDBGrid2, 0, 0);
end;

procedure TFModiTemplatePreno.aDeselezionaTuttiCodiciUpdate(Sender: TObject);
begin
  aDeselezionaTuttiCodici.Enabled := sqTempAgende.DataSet.Active and not sqTempAgende.DataSet.IsEmpty;
end;

procedure TFModiTemplatePreno.aDeselezionaSingoloExecute(Sender: TObject);
begin
  cxDBGrid1DragDrop(cxDBGrid1, cxDBGrid2, 0, 0);
end;

procedure TFModiTemplatePreno.aDeselezionaSingoloUpdate(Sender: TObject);
begin
  aDeselezionaSingolo.Enabled := sqTempAgende.DataSet.Active and not sqTempAgende.DataSet.IsEmpty;
end;

procedure TFModiTemplatePreno.aConfermaExecute(Sender: TObject);
var
  AModalResult: TModalResult;
begin

  { Viene fatto il post per rimanere nella form in caso di errori }
  if (sqTempAgende.DataSet.State in dsEditModes) then
     sqTempAgende.DataSet.Post;

	AModalResult := mrOk;

  Helper.Save(AModalResult);

  if AModalResult = mrOk then
  begin

    FDMCommon.AstaClientSocket.SendDataSetTransactions(Name,[qTempAgende,QyTempEsami]);
	  ModalResult := mrOk;
    
  end;

end;

procedure TFModiTemplatePreno.aConfermaUpdate(Sender: TObject);
begin
  aConferma.Enabled := sqTempAgende.DataSet.Active and not sqTempAgende.DataSet.IsEmpty and not qTempAgendePROVENIENZA.IsNull and not QyTempEsami.IsEmpty;
end;

procedure TFModiTemplatePreno.DoCreate;
begin
  inherited;

  FIntervallo := 15;

  cxAttivita.Properties.Grid.DataController.DataModeController.SyncMode := True;
  cxProvenienza.Properties.Grid.DataController.DataModeController.SyncMode := True;

  if not Assigned(sLkReparti.DataSet) then
     sLkReparti.DataSet := FDMCommon.LkReparti;

  FDMCommon.TipoAttivita.Filtered := false;
  FDMCommon.TipoAttivita.Filter := 'PROVENIENZA = ''E''';
  FDMCommon.TipoAttivita.Filtered := true;

  if FDMCommon.LeggiPostoLavoroCHK_SLITTA_REP.AsInteger=1 then
  begin
     dxLayoutControlReparto.CaptionOptions.Text := RS_Ospedale;
     dxLayoutControlServizio.CaptionOptions.Text := RS_Reparto;
  end;

end;

procedure TFModiTemplatePreno.cxDBGrid2DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  I: integer;
begin

  Screen.Cursor := crHourGlass;
  EsamixDiagn.DisableControls;
  sQyTempEsami.DataSet.DisableControls;
  try

  for I := 0 to cxDBGrid1.Controller.SelectedRecordCount - 1 do
  begin
    if EsamixDiagn.Locate('PKCODICIRAD',cxDBGrid1.Controller.SelectedRecords[I].Values[cxDBGrid1PKCODICIRAD.Index],[]) then
    begin
      sQyTempEsami.DataSet.Append;
      sQyTempEsami.DataSet.Fieldbyname('CODICIRAD_FK').AsInteger := EsamixDiagn.Fieldbyname('PKCODICIRAD').AsInteger;
      sQyTempEsami.DataSet.Fieldbyname('DESCRIZIONE').AsString := EsamixDiagn.Fieldbyname('DESCRIZIONE').AsString;
      sQyTempEsami.DataSet.Fieldbyname('CODICE').AsString := EsamixDiagn.Fieldbyname('CODICE').AsString;
      sQyTempEsami.DataSet.Fieldbyname('DURATA').AsInteger := EsamixDiagn.Fieldbyname('DURATA').AsInteger;
      sQyTempEsami.DataSet.Fieldbyname('IDENT_FK').AsString := EsamixDiagn.Fieldbyname('IDENT_FK').AsString;
      sQyTempEsami.DataSet.Post;
    end;
  end;

  if cxDBGrid1.Controller.SelectedRecordCount>0 then
     cxDBGrid1.Controller.DeleteSelection;

  finally
    sQyTempEsami.DataSet.EnableControls;
    EsamixDiagn.EnableControls;
    if (cxDBGrid1.DataController.RecordCount>0) and Assigned(cxDBGrid1.Controller.FocusedRecord) then
        cxDBGrid1.Controller.FocusedRecord.Selected := true;

    Screen.Cursor := crDefault;
  end;


end;

procedure TFModiTemplatePreno.cxDBGrid1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  I: integer;
begin

  Screen.Cursor := crHourGlass;
  sQyTempEsami.DataSet.DisableControls;
  EsamixDiagn.DisableControls;

  try

  for I := 0 to cxDBGrid2.Controller.SelectedRecordCount - 1 do
  begin
    if sQyTempEsami.DataSet.Locate('CODICIRAD_FK',cxDBGrid2.Controller.SelectedRecords[I].Values[cxDBGrid2CODICIRAD_FK.Index],[]) then
    begin
      EsamixDiagn.Append;
      EsamixDiagn.Fieldbyname('PKCODICIRAD').AsInteger := sQyTempEsami.DataSet.Fieldbyname('CODICIRAD_FK').AsInteger;
      EsamixDiagn.Fieldbyname('DESCRIZIONE').AsString := sQyTempEsami.DataSet.Fieldbyname('DESCRIZIONE').AsString;
      EsamixDiagn.Fieldbyname('CODICE').AsString := sQyTempEsami.DataSet.Fieldbyname('CODICE').AsString;
      EsamixDiagn.Fieldbyname('DURATA').AsInteger := sQyTempEsami.DataSet.Fieldbyname('DURATA').AsInteger;
      EsamixDiagn.Fieldbyname('IDENT_FK').AsString := sQyTempEsami.DataSet.Fieldbyname('IDENT_FK').AsString;
      EsamixDiagn.Post;
    end;
  end;

  if cxDBGrid2.Controller.SelectedRecordCount>0 then
    cxDBGrid2.Controller.DeleteSelection;

  finally
    sQyTempEsami.DataSet.EnableControls;
    EsamixDiagn.EnableControls;
    if (cxDBGrid2.DataController.RecordCount>0) and Assigned(cxDBGrid2.Controller.FocusedRecord) then
        cxDBGrid2.Controller.FocusedRecord.Selected := true;
    Screen.Cursor := crDefault;
  end;


end;

procedure TFModiTemplatePreno.cxDBGrid1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var
  aSourceView: TcxGridDBTableView;
begin
  inherited;
  Accept := false;
  if (Source is TcxDragControlObject) and (Sender is TcxGridSite) then
  begin
     aSourceView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
     Accept := (aSourceView=cxDBGrid2);
  end;
end;

procedure TFModiTemplatePreno.cxDBGrid2DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var
  aSourceView: TcxGridDBTableView;
begin
  inherited;
  Accept := false;
  if (Source is TcxDragControlObject) and (Sender is TcxGridSite) then
  begin
     aSourceView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
     Accept := (aSourceView=cxDBGrid1);
  end;
end;

procedure TFModiTemplatePreno.cxDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=13 then
     aSelezionaSingoloCodice.Execute;

end;

procedure TFModiTemplatePreno.cxDBGrid2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=13 then
     aDeselezionaSingolo.Execute;

end;

procedure TFModiTemplatePreno.edTipoPropertiesCloseUp(Sender: TObject);
begin
  inherited;
//  sPreno.Dataset.Fieldbyname('OSP_RICH').Clear;

  qTempAgendeOSP_RICH.Clear;
  qTempAgendeTIPO_ATTIVITA_FK.Clear;
  qTempAgendeREP_RICH_FK.Clear;

  FDMCommon.qCaricaProvenienze.Locate('PROVENIENZA',qTempAgendePROVENIENZA.AsString,[]);
  qTempAgendeICONA.AsInteger := FDMCommon.qCaricaProvenienzeICONA.AsInteger;
  qTempAgendeDESCPROVENIENZA.AsString := FDMCommon.qCaricaProvenienzeDESCRIZIONE.AsString;

  if (qTempAgendePROVENIENZA.AsString='E') then
  begin
        FDMCommon.TipoAttivita.Filtered := false;
        FDMCommon.TipoAttivita.Filter := 'PROVENIENZA = ''E''';
        FDMCommon.TipoAttivita.Filtered := true;
        cxAttivita.Enabled := true;
        cxProvenienza.Enabled := false;
        cxDipartRich.Enabled := false;
        cxRepRich.Enabled := false;
        cxServRich.Enabled := false;
  end
  else if qTempAgendePROVENIENZA.AsString='I' then
  begin
        FDMCommon.TipoAttivita.Filtered := false;
        FDMCommon.TipoAttivita.Filter := 'PROVENIENZA = ''I''';
        FDMCommon.TipoAttivita.Filtered := true;
        cxAttivita.Enabled := true;
        cxProvenienza.Enabled := false;
        cxDipartRich.Enabled := true;
        cxRepRich.Enabled := true;
        cxServRich.Enabled := false;
  end
  else begin
    FDMCommon.TipoAttivita.Filtered := false;
    cxAttivita.Enabled := false;
    cxProvenienza.Enabled := false;
    cxDipartRich.Enabled := false;
    cxRepRich.Enabled := false;
    cxServRich.Enabled := false;
  end;

  AbilitaCampi(true);

end;

procedure TFModiTemplatePreno.AbilitaCampi(change: boolean);
begin

//  cxAttivita.Enabled := (sPreno.Dataset.Fieldbyname('INTERNI').AsInteger in [0,1]);

  if change then
  begin
     cxProvenienza.Clear;
     cxAttivita.Clear;
     cxDipartRich.Clear;
     cxRepRich.Clear;
     cxServRich.Clear;
     qTempAgendeOSP_RICH.Clear;
     qTempAgendeTIPO_ATTIVITA_FK.Clear;
     qTempAgendeREP_RICH_FK.Clear;
  end;

  if qTempAgendePROVENIENZA.AsString='E' then
  begin
    cxAttivita.Enabled := true;
    cxProvenienza.Enabled := false;
    cxDipartRich.Enabled := false;
    cxRepRich.Enabled := false;
    cxServRich.Enabled := false;

    if (cxAttivita.Text<>'') and (cxAttivita.Text<>qTempAgendeTIPO_ATTIVITA_FK.AsString) then
    begin
      FDMCommon.LkOspedali.Filtered := false;
      FDMCommon.LkOspedali.Filter := format('TIPO_ATTIVITA_FK = ''%s''',[qTempAgendeTIPO_ATTIVITA_FK.AsString]);
      FDMCommon.LkOspedali.Filtered := true;
      cxProvenienza.Enabled := true;
    end
    else if (cxAttivita.Text='') then
    begin
      cxProvenienza.Enabled := false;
    end;
  end
  else if qTempAgendePROVENIENZA.AsString='I' then
  begin
    cxAttivita.Enabled := true;
    cxProvenienza.Enabled := false;
    cxDipartRich.Enabled := true;
    cxRepRich.Enabled := qTempAgendeDIPARTIMENTI_FK.IsNull;
    cxServRich.Enabled := not qTempAgendeREP_RICH_FK.IsNull;
  end
  else begin
    cxAttivita.Enabled := false;
    cxProvenienza.Enabled := false;
    cxDipartRich.Enabled := false;
    cxRepRich.Enabled := false;
    cxServRich.Enabled := false;
  end;

end;

procedure TFModiTemplatePreno.cxTrackBar1PropertiesChange(Sender: TObject);
var
  hh,mm: integer;
begin
  inherited;

  if cxTrackBar1.Enabled and not (sqTempAgende.DataSet.State in dsEditModes) then
     sqTempAgende.DataSet.Edit;

    hh := cxTrackBar1.Position div 60;
    mm := cxTrackBar1.Position - (hh*60);
    qTempAgendeORA_INIZIO.AsDateTime := RecodeDateTime( Event.Start, RecodeLeaveFieldAsIs,RecodeLeaveFieldAsIs,RecodeLeaveFieldAsIs,
                                                        hh, mm,
                                                        RecodeLeaveFieldAsIs,RecodeLeaveFieldAsIs);
    teStart.Time := TimeOf(qTempAgendeORA_INIZIO.AsDateTime);

end;

procedure TFModiTemplatePreno.cxTrackBar2PropertiesChange(Sender: TObject);
var
  hh,mm: integer;
begin
  inherited;

  if cxTrackBar2.Enabled and not (sqTempAgende.DataSet.State in dsEditModes) then
     sqTempAgende.DataSet.Edit;

    hh := cxTrackBar2.Position div 60;
    mm := cxTrackBar2.Position - (hh*60);
    qTempAgendeORA_FINE.AsDateTime := RecodeDateTime( Event.Finish, RecodeLeaveFieldAsIs,RecodeLeaveFieldAsIs,RecodeLeaveFieldAsIs,
                                                      hh, mm,
                                                      RecodeLeaveFieldAsIs,RecodeLeaveFieldAsIs);
    teFinish.Time := TimeOf(qTempAgendeORA_FINE.AsDateTime);

end;

procedure TFModiTemplatePreno.fcLabel6SectionClick(
  HeaderControl: TcxCustomHeader; Section: TcxHeaderSection);
begin
  inherited;
  case Section.Index of
  1: aSelezionaSingoloCodice.Execute;
  2: aSelezionaTuttiCodici.Execute;
  end;

end;

procedure TFModiTemplatePreno.fcLabel1SectionClick(
  HeaderControl: TcxCustomHeader; Section: TcxHeaderSection);
begin
  inherited;
  case Section.Index of
  1: aDeSelezionaSingolo.Execute;
  2: aDeSelezionaTuttiCodici.Execute;
  end;

end;

procedure TFModiTemplatePreno.cxAttivitaPropertiesCloseUp(Sender: TObject);
begin
  inherited;

  if cxAttivita.Text<>'' then
  begin
    FDMCommon.LkOspedali.Filtered := false;
    FDMCommon.LkOspedali.Filter := format('TIPO_ATTIVITA_FK = ''%s''',[qTempAgendeTIPO_ATTIVITA_FK.AsString]);
    FDMCommon.LkOspedali.Filtered := true;
    cxProvenienza.Enabled := true;
    cxProvenienza.Clear;
    qTempAgendeTIPOATTIVITA.AsString := cxAttivita.Text;
    qTempAgendeOSP_RICH.Clear;
  end
  else begin
    cxProvenienza.Enabled := false;
    cxProvenienza.Clear;
    qTempAgendeTIPOATTIVITA.Clear;
    qTempAgendeOSP_RICH.Clear;
  end;

end;

procedure TFModiTemplatePreno.BaseFormDestroy(Sender: TObject);
begin
  inherited;
  FDMCommon.TipoAttivita.Filtered := false;
  FDMCommon.LkOspedali.Filtered := false;
end;

procedure TFModiTemplatePreno.cxProvenienzaPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  if VarIsNull(cxProvenienza.EditValue) then
    qTempAgendeOSPEDALE.Clear
  else
    qTempAgendeOSPEDALE.AsString := cxProvenienza.Text;

end;

procedure TFModiTemplatePreno.EsamixDiagnBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  Sender.Parambyname('servizi_fk').Value := Event.ResourceID;
  Sender.Parambyname('tempagende_fk').Value := pk;
end;

procedure TFModiTemplatePreno.cxRepRichPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if VarIsNull(cxRepRich.EditValue) or (FDMCommon.VarToInt(cxRepRich.EditValue)=0) then
  begin
     qTempAgendeSERV_RICH_FK.Clear;
     qTempAgendeREPRICHIEDE.Clear;
     cxServRich.Enabled := false;
  end
  else if LkServizi.Parambyname('reparti_fk').IsNull or (LkServizi.Parambyname('reparti_fk').AsInteger<>FDMCommon.VarToInt(cxRepRich.EditValue)) then
  begin
    qTempAgendeREPRICHIEDE.AsString := FDMCommon.LkRepartiDESCRIZIONE.AsString;
    cxServRich.Enabled := true;
    LkServizi.Parambyname('reparti_fk').AsInteger := FDMCommon.VarToInt(cxRepRich.EditValue);
    LkServizi.syRefresh;
    if sqTempAgende.DataSet.Active and not (sqTempAgende.DataSet.State in dsEditModes) then
       sqTempAgende.DataSet.Edit;
    qTempAgendeSERV_RICH_FK.Clear;
    qTempAgendeSERVRICHIEDE.Clear
  end;

end;

procedure TFModiTemplatePreno.cxDipartRichPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  if VarIsNull(cxDipartRich.EditValue) or (FDMCommon.VarToInt(cxDipartRich.EditValue)=0) then
  begin
     qTempAgendeDIPARTIMENTO.Clear;
     cxRepRich.Enabled := true;
     cxServRich.Enabled := true;
  end
  else begin
     qTempAgendeREP_RICH_FK.Clear;
     cxRepRich.Enabled := false;
     qTempAgendeSERV_RICH_FK.Clear;
     cxServRich.Enabled := false;
     qTempAgendeDIPARTIMENTO.AsString := DipartimentiDESCRIZIONE.AsString;
  end;

end;

procedure TFModiTemplatePreno.teStartPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  hh,mm: integer;
begin
  inherited;
  hh := StrToIntDef(Copy(DisplayValue,1,Pos(TimeSeparator,DisplayValue)-1),0);
  mm := StrToIntDef(Copy(DisplayValue,Pos(TimeSeparator,DisplayValue)+1,2),0);
  cxTrackBar1.Position := hh * 60 + mm;

end;

procedure TFModiTemplatePreno.teFinishPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  hh,mm: integer;
begin
  inherited;
  hh := StrToIntDef(Copy(DisplayValue,1,Pos(TimeSeparator,DisplayValue)-1),0);
  mm := StrToIntDef(Copy(DisplayValue,Pos(TimeSeparator,DisplayValue)+1,2),0);
  cxTrackBar2.Position := hh * 60 + mm;

end;

procedure TFModiTemplatePreno.qTempAgendeBeforePost(DataSet: TDataSet);
begin

  qTempAgendeORA_INIZIO.AsDateTime := deStart + teStart.Time {+ BiasTime};
  qTempAgendeORA_FINE.AsDateTime := deStart + teFinish.Time {+ Ord(cbAllDayEvent.Checked) {+ BiasTime};

  if (qTempAgendeORA_INIZIO.AsDateTime>qTempAgendeORA_FINE.AsDateTime) then
  begin
     MsgDlg(RS_ctrl_iniziofine, '', ktError, [kbOK]);
     Abort;
  end;
  qTempAgendeUSER_ID.AsInteger := gblCodUtente;

  if qTempAgendeBLOCCATO.AsInteger=1 then
    qTempAgendeSET_COLORI_FK.AsInteger := 6
  else
    qTempAgendeSET_COLORI_FK.AsInteger := 2;

  qTempAgendeCOLORE.AsInteger := FDMCommon.xColori[qTempAgendeSET_COLORI_FK.AsInteger];

end;

procedure TFModiTemplatePreno.qTempAgendeCalcFields(DataSet: TDataSet);
var
  xprov: string;
begin
  xprov := '';
  if not qTempAgendeSERVRAD_FK.IsNull then
     xprov := xprov + qTempAgendeDESCRADSERV.AsString;

  if qTempAgendePROVENIENZA.AsString='E' then
  begin
        if not qTempAgendeOSP_RICH.IsNull then
           xprov := xprov + #13 + qTempAgendeOSPEDALE.AsString;
  end
  else if qTempAgendePROVENIENZA.AsString='I' then
  begin
        if not qTempAgendeDIPARTIMENTI_FK.IsNull then
           xprov := xprov + #13 + 'Dip.: ' + qTempAgendeDIPARTIMENTO.AsString;
        if not qTempAgendeREP_RICH_FK.IsNull then
           xprov := xprov + #13 + 'Reparto: ' + qTempAgendeREPRICHIEDE.AsString;
        if not qTempAgendeSERV_RICH_FK.IsNull then
           xprov := xprov + #13 + 'Servizio: ' + qTempAgendeSERVRICHIEDE.AsString;
  end;
  qTempAgendeDESCRICH.AsString := xprov;

end;

procedure TFModiTemplatePreno.qTempAgendeNewRecord(DataSet: TDataSet);
begin
  qTempAgendeEVENT_TYPE.AsInteger := 0;
  qTempAgendeOPTIONS.AsInteger := 0;
end;

procedure TFModiTemplatePreno.cxServRichPropertiesCloseUp(Sender: TObject);
begin
  if VarIsNull(cxServRich.EditValue) or (FDMCommon.VarToInt(cxServRich.EditValue)=0) then
     qTempAgendeSERVRICHIEDE.Clear
  else
     qTempAgendeSERVRICHIEDE.AsString := LkServiziDESCRIZIONE.AsString;
end;

procedure TFModiTemplatePreno.cxServRadPropertiesCloseUp(Sender: TObject);
begin
  if VarIsNull(cxServRad.EditValue) or (FDMCommon.VarToInt(cxServRad.EditValue)=0) then
     qTempAgendeDESCRADSERV.Clear
  else
     qTempAgendeDESCRADSERV.AsString := ServiziRadiologiaDESCRIZIONE.AsString;
end;

procedure TFModiTemplatePreno.qTempAgendeBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFModiTemplatePreno.QyTempEsamiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  if FIsInsert then
     Sender.Parambyname('tempagende_fk').Clear
  else
     Sender.Parambyname('tempagende_fk').AsInteger := pk;
end;

procedure TFModiTemplatePreno.QyTempEsamiNewRecord(DataSet: TDataSet);
begin
  QyTempEsamiTEMPAGENDE_FK.AsInteger := qTempAgendePKTEMPAGENDE.AsInteger;
end;

end.
