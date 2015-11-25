unit ModiPreno;

interface

uses
  cxSchedulerEventEditor, cxSchedulerStorage, syScheduler,{}cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxMaskEdit,
  Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, AstaUpdateSQL, dxBar,
  Classes, ActnList, AstaDrv2, AstaClientDataset, cxDBEdit, cxTrackBar,
  cxImageComboBox, cxCheckBox, cxLabel, cxProgressBar, cxDBProgressBar,
  cxContainer, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxHeader, cxSplitter, Controls, ExtCtrls, cxCalendar, cxSpinEdit,
  cxTimeEdit, dxSkinsCore, dxSkinsDefaultPainters, dxSkinsdxBarPainter,
  cxLookAndFeels, dxLayoutcxEditAdapters, dxLayoutControl, cxNavigator,
  dxLayoutContainer;
  
type

  TFModiPreno = class(TcxSchedulerCustomEventEditor)
    sqyAgenda: TDataSource;
    QyEsamiAgenda: TAstaClientDataSet;
    QyEsamiAgendaCODICE: TStringField;
    QyEsamiAgendaDURATA: TIntegerField;
    QyEsamiAgendaPKPRENOESAMI: TIntegerField;
    sQyEsamiAgenda: TDataSource;
    QyEsamiAgendaDESCRIZIONE: TStringField;
    QyEsamiAgendaIDENT_FK: TStringField;
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
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarPopupDeseleziona: TdxBarPopupMenu;
    updAgendaEsami: TAstaUpdateSQL;
    lbGiorno: TcxLabel;
    lbSettimana: TcxLabel;
    lbMese: TcxLabel;
    aConferma: TAction;
    QyEsamiAgendaCODICIRAD_FK: TIntegerField;
    EsamixDiagnPKCODICIRAD: TIntegerField;
    dxBarPopupSeleziona: TdxBarPopupMenu;
    QyEsamiAgendaAGENDE_FK: TIntegerField;
    sTipoAttivita: TDataSource;
    cxBloccato: TcxDBCheckBox;
    edTipo: TcxDBImageComboBox;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxDBGrid2: TcxGridDBTableView;
    cxDBGrid2CODICE: TcxGridDBColumn;
    cxDBGrid2PRESTSPECMULT_FK: TcxGridDBColumn;
    cxDBGrid2CODICIRAD_FK: TcxGridDBColumn;
    cxDBGrid2DESCRIZIONE: TcxGridDBColumn;
    cxDBGrid2IDENT_FK: TcxGridDBColumn;
    cxDBGrid2durata: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGrid2Level1: TcxGridLevel;
    cxDBGrid1: TcxGridDBTableView;
    cxDBGrid1CODICE: TcxGridDBColumn;
    cxDBGrid1DESCRIZIONE: TcxGridDBColumn;
    cxDBGrid1FREQUENZA: TcxGridDBColumn;
    cxDBGrid1PKCODICIRAD: TcxGridDBColumn;
    cxDBGrid1IDENT_FK: TcxGridDBColumn;
    cxDBGrid1DURATA: TcxGridDBColumn;
    sLkOspedali: TDataSource;
    cxProvenienza: TcxDBLookupComboBox;
    cxDBProgressBar1: TcxDBProgressBar;
    cxTrackBar1: TcxTrackBar;
    cxTrackBar2: TcxTrackBar;
    cxAttivita: TcxDBLookupComboBox;
    cxCup: TcxDBCheckBox;
    sLkReparti: TDataSource;
    cxRepRich: TcxDBLookupComboBox;
    cxServRich: TcxDBLookupComboBox;
    sLkServizi: TDataSource;
    LkServizi: TAstaClientDataSet;
    LkServiziPKSERVIZI: TIntegerField;
    LkServiziDESCRIZIONE: TStringField;
    LkServiziCODICE: TStringField;
    LkServiziREPARTI_FK: TIntegerField;
    LkServiziTIPO_ATTIVITA_FK: TStringField;
    sServiziRadiologia: TDataSource;
    cxServRad: TcxDBLookupComboBox;
    ServiziRadiologia: TAstaClientDataSet;
    ServiziRadiologiaDIAGNOSTICA_FK: TIntegerField;
    ServiziRadiologiaPKSERVIZI: TIntegerField;
    ServiziRadiologiaDESCRIZIONE: TStringField;
    cxDipartRich: TcxDBLookupComboBox;
    Dipartimenti: TAstaClientDataSet;
    sDipartimenti: TDataSource;
    DipartimentiPKDIPARTIMENTI: TIntegerField;
    DipartimentiDESCRIZIONE: TStringField;
    Panel1: TPanel;
    btSalva: TcxButton;
    btAnnulla: TcxButton;
    teStart: TcxTimeEdit;
    teFinish: TcxTimeEdit;
    QyAgenda: TAstaClientDataSet;
    QyAgendaSERVIZI_FK: TIntegerField;
    QyAgendaORA_INIZIO: TDateTimeField;
    QyAgendaORA_FINE: TDateTimeField;
    QyAgendaBLOCCATO: TIntegerField;
    QyAgendaPKAGENDE: TIntegerField;
    QyAgendaREPARTI_FK: TIntegerField;
    QyAgendaUSER_ID: TIntegerField;
    QyAgendaOSP_RICH: TStringField;
    QyAgendaOSPEDALE: TStringField;
    QyAgendaPRENOCUP: TIntegerField;
    QyAgendaTIPO_FATTURA: TIntegerField;
    QyAgendaTIPO_ATTIVITA_FK: TStringField;
    QyAgendaREP_RICH_FK: TIntegerField;
    QyAgendaREPRICHIEDE: TStringField;
    QyAgendaSERV_RICH_FK: TIntegerField;
    QyAgendaSERVRICHIEDE: TStringField;
    QyAgendaDESCRADSERV: TStringField;
    QyAgendaSERVRAD_FK: TIntegerField;
    QyAgendaTMPAGENDE_FK: TIntegerField;
    QyAgendaDIPARTIMENTI_FK: TIntegerField;
    QyAgendaDIPARTIMENTO: TStringField;
    QyAgendaEVENT_TYPE: TIntegerField;
    QyAgendaOPTIONS: TIntegerField;
    QyAgendaCOLORE: TIntegerField;
    QyAgendaSET_COLORI_FK: TIntegerField;
    QyAgendaSPAZIO: TIntegerField;
    QyAgendaRIMANE: TIntegerField;
    QyAgendaT_DISP: TIntegerField;
    QyAgendaT_ASSEG: TIntegerField;
    QyAgendaPROVENIENZA: TStringField;
    QyAgendaICONA: TIntegerField;
    QyAgendaDESCPROVENIENZA: TStringField;
    updQyAgenda: TAstaUpdateSQL;
    Panel3: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControlReparto: TdxLayoutItem;
    dxLayoutControlServizio: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutServRad: TdxLayoutItem;
    dxLayoutControl1Item16: TdxLayoutItem;
    Bevel1: TBevel;
    Panel4: TPanel;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControlGroupRiservato: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    QyAgendaDESCRICH: TStringField;
    QyAgendaTIPOATTIVITA: TStringField;
    procedure btAnnullaClick(Sender: TObject);
    procedure QyEsamiAgendaBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure FormShow(Sender: TObject);
    procedure EsamixDiagnBeforeQuery(Sender: TAstaBaseClientDataSet);
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
    procedure QyEsamiAgendaNewRecord(DataSet: TDataSet);
    procedure cxDBGrid2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure cxDBGrid2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure cxDBGrid1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure cxDBGrid1DragOver(Sender, Source: TObject; X, Y: Integer;
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
    procedure BaseFormDestroy(Sender: TObject);
    procedure cxAttivitaPropertiesCloseUp(Sender: TObject);
    procedure EsamixDiagnBeforeInsert(DataSet: TDataSet);
    procedure EsamixDiagnBeforeDelete(DataSet: TDataSet);
    procedure cxRepRichPropertiesCloseUp(Sender: TObject);
    procedure cxDipartRichPropertiesCloseUp(Sender: TObject);
    procedure teStartPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure teFinishPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure QyEsamiAgendaBeforeInsert(DataSet: TDataSet);
    procedure QyEsamiAgendaBeforeDelete(DataSet: TDataSet);
    procedure QyAgendaBeforePost(DataSet: TDataSet);
    procedure QyAgendaCalcFields(DataSet: TDataSet);
    procedure QyAgendaNewRecord(DataSet: TDataSet);
    procedure QyAgendaBeforeEdit(DataSet: TDataSet);
    procedure cxServRadPropertiesCloseUp(Sender: TObject);
    procedure cxProvenienzaPropertiesCloseUp(Sender: TObject);
    procedure cxServRichPropertiesCloseUp(Sender: TObject);
    procedure QyAgendaBeforeQuery(Sender: TAstaBaseClientDataSet);
  private
    { Private declarations }
    pk: Variant;
    FIsInsert: Boolean;
    FIntervallo: integer;
    FAbilitaModifiche: boolean;
    deStart: TDateTime;
    procedure AbilitaCampi(change: boolean);
    procedure SetIntervallo(Value: integer);
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

    property Helper: TcxSchedulerEventEditorCustomizedHelper read GetHelper;

  public
    { Public declarations }
    property Intervallo: integer read FIntervallo write SetIntervallo;
  end;

var
  FModiPreno: TFModiPreno;

implementation

uses DMCommon, Forms, dateutils, sysutils, Variants, Msgdlgs, cxSchedulerDialogs,
     AstaDBTypes;

{$R *.DFM}

const
 CLRF = #13#10;
 DlgMsg = 'Cannot load data';


{ TFModiPreno  }

procedure TFModiPreno.Initialize(AEventInfo: TcxSchedulerEventEditInfo;
  AEditingInfo: TcxSchedulerEditingEventInfo);
begin
  inherited;
  Helper.Initialize(AEventInfo, AEditingInfo);
  SetControlLookAndFeel(Self, Helper.LookAndFeel);
end;


function TFModiPreno.IsCustomerInformationFilled;
begin
 Result := True;
  if (QyAgendaORA_INIZIO.AsDateTime>=QyAgendaORA_FINE.AsDateTime) then
  begin
     MsgDlg(RS_ctrl_iniziofine, '', ktWarning, [kbOK]);
     Result := False;
  end;
end;

function TFModiPreno.GetHelper: TcxSchedulerEventEditorCustomizedHelper;
begin
 Result := TcxSchedulerEventEditorCustomizedHelper(inherited Helper);
end;

function TFModiPreno.HelperIsCustomerInformationFilledHandler: Boolean;
begin
 // helper's OnIsCustomerInformationFilled event handler
 Result := IsCustomerInformationFilled;
end;

function TFModiPreno.GetHelperClass: TcxSchedulerEditorHelperClass;
begin
 // define your own helper class
 Result := TcxSchedulerEventEditorCustomizedHelper;
end;

procedure TFModiPreno.InitializeHelper(
 AEvent: TcxSchedulerControlEvent);
begin
 inherited;
 Helper.OnIsCustomerInformationFilled := HelperIsCustomerInformationFilledHandler;
end;


procedure TFModiPreno.LoadEventValuesIntoControls;
begin
  // invoke the parent’s method to load the data into the inherited editing controls
  // located on the form
  inherited LoadEventValuesIntoControls;
  try
    // load the data into the custom editing controls
    // no checking for a null value is needed.
    // The null value is automatically replaced with empty string in the editing controls
    pk := Event.GetCustomFieldValueByName('PKAGENDE');

    FIsInsert := VarIsNull(pk) or VarIsEmpty(pk);

    if FIsInsert then
    begin
      QyAgenda.OpenNoFetch;
      QyAgenda.Insert;
    end
    else begin
      QyAgenda.ParamByName('PKAGENDE').Value := pk;
      QyAgenda.Open;
    end;

    deStart := DateOf(Event.Start);
    teStart.Time := TimeOf(Event.Start);
    teFinish.Time := TimeOf(Event.Finish);

    FAbilitaModifiche := not Event.ReadOnly;
 except
   on E: Exception do
     MsgDlg(DlgMsg + CLRF + E.Message,'', ktWarning, [kbOK]);
 end;
end;

procedure TFModiPreno.UpdateEventValuesFromControls;
begin
  // invoke the parent’s method to post the data from the inherited editing controls
  // located on the form
  inherited UpdateEventValuesFromControls;
  try
    Event.Caption := QyAgendaDESCPROVENIENZA.AsString;
//    Event.ResourceID := QyAgendaSERVIZI_FK.AsInteger;
    Event.Start := QyAgendaORA_INIZIO.AsDateTime;  // deStart.Date + teStart.Time {+ BiasTime};
    Event.Finish := QyAgendaORA_FINE.AsDateTime;  // deStart.Date + teFinish.Time {+ Ord(cbAllDayEvent.Checked) {+ BiasTime};
    Event.LabelColor := FDMCommon.xcolori[QyAgendaSET_COLORI_FK.AsInteger-1];
    Event.Message := QyAgendaDESCRICH.AsString;
    Event.AllDayEvent := False;

    // post the data from the custom editing controls
    Event.SetCustomFieldValueByName('ICONA', QyAgendaICONA.AsInteger);
    Event.SetCustomFieldValueByName('PKAGENDE', QyAgendaPKAGENDE.AsInteger);
    Event.SetCustomFieldValueByName('USER_ID', QyAgendaUSER_ID.AsVariant);
    Event.SetCustomFieldValueByName('BLOCCATO', QyAgendaBLOCCATO.AsVariant);
    Event.SetCustomFieldValueByName('SET_COLORI_FK', QyAgendaSET_COLORI_FK.AsVariant);
//    Event.SetCustomFieldValueByName('TMPLCALEND_FK', QyAgendaTMPLCALEND_FK.AsVariant);
    Event.SetCustomFieldValueByName('PROVENIENZA', QyAgendaPROVENIENZA.AsVariant);
    Event.SetCustomFieldValueByName('PRENOCUP', QyAgendaPRENOCUP.AsVariant);
    Event.SetCustomFieldValueByName('DIPARTIMENTI_FK', QyAgendaDIPARTIMENTI_FK.AsVariant);
    Event.SetCustomFieldValueByName('SERVRAD_FK', QyAgendaSERVRAD_FK.AsVariant);
    Event.SetCustomFieldValueByName('REP_RICH_FK', QyAgendaREP_RICH_FK.AsVariant);
    Event.SetCustomFieldValueByName('SERV_RICH_FK', QyAgendaSERV_RICH_FK.AsVariant);
    Event.SetCustomFieldValueByName('OSP_RICH', QyAgendaOSP_RICH.AsVariant);
    Event.SetCustomFieldValueByName('TIPO_ATTIVITA_FK', QyAgendaTIPO_ATTIVITA_FK.AsVariant);

    Event.SetCustomFieldValueByName('DESCRADSERV', QyAgendaDESCRADSERV.AsVariant);
    Event.SetCustomFieldValueByName('OSPEDALE', QyAgendaOSPEDALE.AsVariant);
    Event.SetCustomFieldValueByName('DIPARTIMENTO', QyAgendaDIPARTIMENTO.AsVariant);
    Event.SetCustomFieldValueByName('REPRICHIEDE', QyAgendaREPRICHIEDE.AsVariant);
    Event.SetCustomFieldValueByName('SERVRICHIEDE', QyAgendaSERVRICHIEDE.AsVariant);

    Modified := True;
 except
   on E: Exception do
     MsgDlg(DlgMsg + CLRF + E.Message,'', ktWarning, [kbOK]);
 end;

end;

(*
procedure TFModiPreno.GetEditingEventTime(
  var AStart, AFinish: TDateTime; var AState: Integer);
begin
  AStart := deStart + teStart.Time {+ BiasTime};
  AFinish := deStart + teFinish.Time {+ Ord(cbAllDayEvent.Checked) {+ BiasTime};
  AState := 0; //icbShowTimeAs.ItemIndex;
end;
*)

procedure TFModiPreno.SetIntervallo(Value: integer);
begin
  FIntervallo := Value;
  cxTrackBar1.Properties.PageSize := FIntervallo;
  cxTrackBar2.Properties.PageSize := FIntervallo;
end;

procedure TFModiPreno.btAnnullaClick(Sender: TObject);
begin

  if (QyAgenda.State in dsEditModes) then
     QyAgenda.Cancel;
{
  if (QyEsamiAgenda.State in dsEditModes) then
     QyEsamiAgenda.Cancel;
}
	ModalResult := mrCancel;

end;

procedure TFModiPreno.QyEsamiAgendaBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('agende_fk').Value := pk;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFModiPreno.FormShow(Sender: TObject);
var
  anno,mese,giorno: word;
begin

  ServiziRadiologia.Parambyname('diagnostica_fk').AsInteger := Event.ResourceID;
  ServiziRadiologia.open;

  Dipartimenti.Parambyname('reparti_fk').AsInteger := gblpkrep;
  Dipartimenti.open;

  dxLayoutServRad.Visible := (ServiziRadiologia.recordcount>1);

  EsamixDiagn.open;
  QyEsamiAgenda.open;

  { Etichette con le descrizioni }
  DecodeDate(Event.Start, anno, mese, giorno);
  lbGiorno.Caption := IntToStr(giorno);
  lbMese.Caption := LongMonthNames[mese];
  lbSettimana.Caption := LongDayNames[DayOfWeek(Event.Start)];

  cxDBGrid1.Controller.GoToFirst;
  cxDBGrid1.Controller.ClearSelection;

  if (QyAgendaPROVENIENZA.AsString='E') or (QyAgendaPROVENIENZA.AsString='I') then
  begin
      FDMCommon.TipoAttivita.Filtered := false;
      FDMCommon.TipoAttivita.Filter := Format('PROVENIENZA = '#39'%s'#39,[QyAgendaPROVENIENZA.AsString]);
      FDMCommon.TipoAttivita.Filtered := true;
  end
  else
    FDMCommon.TipoAttivita.Filtered := false;

  AbilitaCampi((QyAgenda.State=dsInsert));

  cxTrackBar1.Position := MinuteOfTheDay(teStart.Time); // MinuteOfTheDay(Event.Start);
  cxTrackBar2.Position := MinuteOfTheDay(teFinish.Time); // MinuteOfTheDay(Event.Finish);

  if QyAgendaREP_RICH_FK.IsNull then
     LkServizi.Parambyname('reparti_fk').Clear
  else
     LkServizi.Parambyname('reparti_fk').AsInteger := QyAgendaREP_RICH_FK.AsInteger;
  LkServizi.open;

end;

procedure TFModiPreno.EsamixDiagnBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  Sender.Parambyname('servizi_fk').Value := Event.ResourceID;
  Sender.Parambyname('agende_fk').Value := pk;
end;

procedure TFModiPreno.aSelezionaTuttiCodiciExecute(Sender: TObject);
begin
  cxDBGrid1.DataController.SelectAll;
  cxDBGrid2DragDrop(cxDBGrid2, cxDBGrid1, 0, 0);
end;

procedure TFModiPreno.aSelezionaTuttiCodiciUpdate(Sender: TObject);
begin
  aSelezionaTuttiCodici.Enabled := EsamixDiagn.Active and not EsamixDiagn.IsEmpty;
end;

procedure TFModiPreno.aSelezionaSingoloCodiceExecute(Sender: TObject);
begin
  cxDBGrid2DragDrop(cxDBGrid2, cxDBGrid1, 0, 0);
end;

procedure TFModiPreno.aSelezionaSingoloCodiceUpdate(Sender: TObject);
begin
  aSelezionaSingoloCodice.Enabled := EsamixDiagn.Active and not EsamixDiagn.IsEmpty;
end;

procedure TFModiPreno.aDeselezionaTuttiCodiciExecute(Sender: TObject);
begin
  cxDBGrid2.DataController.SelectAll;
  cxDBGrid1DragDrop(cxDBGrid1, cxDBGrid2, 0, 0);
end;

procedure TFModiPreno.aDeselezionaTuttiCodiciUpdate(Sender: TObject);
begin
  aDeselezionaTuttiCodici.Enabled := QyEsamiAgenda.Active and not QyEsamiAgenda.IsEmpty;
end;

procedure TFModiPreno.aDeselezionaSingoloExecute(Sender: TObject);
begin
  cxDBGrid1DragDrop(cxDBGrid1, cxDBGrid2, 0, 0);
end;

procedure TFModiPreno.aDeselezionaSingoloUpdate(Sender: TObject);
begin
  aDeselezionaSingolo.Enabled := QyEsamiAgenda.Active and not QyEsamiAgenda.IsEmpty;
end;

procedure TFModiPreno.aConfermaExecute(Sender: TObject);
var
  AModalResult: TModalResult;
begin

  { Viene fatto il post per rimanere nella form in caso di errori }
  if (QyAgenda.State in dsEditModes) then
     QyAgenda.Post;

  if (QyEsamiAgenda.State in dsEditModes) then
     QyEsamiAgenda.Post;

	AModalResult := mrOk;

  Helper.Save(AModalResult);

  if AModalResult = mrOk then
  begin

    FDMCommon.AstaClientSocket.SendDataSetTransactions(Name,[QyAgenda,QyEsamiAgenda]);

    ModalResult := mrOk;
    
  end;

end;

procedure TFModiPreno.aConfermaUpdate(Sender: TObject);
begin
  aConferma.Enabled := QyEsamiAgenda.Active and not QyEsamiAgenda.isEmpty and not QyAgendaPROVENIENZA.IsNull;
end;

procedure TFModiPreno.QyEsamiAgendaNewRecord(DataSet: TDataSet);
begin
  QyEsamiAgendaAGENDE_FK.AsInteger := QyAgendaPKAGENDE.AsInteger;
end;


procedure TFModiPreno.cxDBGrid2DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  I: integer;
begin

  Screen.Cursor := crHourGlass;
  EsamixDiagn.DisableControls;
  QyEsamiAgenda.DisableControls;
  try

  for I := 0 to cxDBGrid1.Controller.SelectedRecordCount - 1 do
  begin
    if EsamixDiagn.Locate('PKCODICIRAD',cxDBGrid1.Controller.SelectedRecords[I].Values[cxDBGrid1PKCODICIRAD.Index],[]) then
    begin
      QyEsamiAgenda.Append;
      QyEsamiAgenda.Fieldbyname('CODICIRAD_FK').AsInteger := EsamixDiagn.Fieldbyname('PKCODICIRAD').AsInteger;
      QyEsamiAgenda.Fieldbyname('DESCRIZIONE').AsString := EsamixDiagn.Fieldbyname('DESCRIZIONE').AsString;
      QyEsamiAgenda.Fieldbyname('CODICE').AsString := EsamixDiagn.Fieldbyname('CODICE').AsString;
      QyEsamiAgenda.Fieldbyname('DURATA').AsInteger := EsamixDiagn.Fieldbyname('DURATA').AsInteger;
      QyEsamiAgenda.Fieldbyname('IDENT_FK').AsString := EsamixDiagn.Fieldbyname('IDENT_FK').AsString;
      QyEsamiAgenda.Post;
    end;
  end;

  if cxDBGrid1.Controller.SelectedRecordCount>0 then
  begin
    cxDBGrid1.Controller.DeleteSelection;
  end;

  finally
    QyEsamiAgenda.EnableControls;
    EsamixDiagn.EnableControls;
    if (cxDBGrid1.DataController.RecordCount>0) and Assigned(cxDBGrid1.Controller.FocusedRecord) then
        cxDBGrid1.Controller.FocusedRecord.Selected := true;

    Screen.Cursor := crDefault;
  end;

end;

procedure TFModiPreno.cxDBGrid2DragOver(Sender, Source: TObject; X,
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

procedure TFModiPreno.cxDBGrid1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  I: integer;
begin

  Screen.Cursor := crHourGlass;
  QyEsamiAgenda.DisableControls;
  EsamixDiagn.DisableControls;

  try

  for I := 0 to cxDBGrid2.Controller.SelectedRecordCount - 1 do
  begin
    if QyEsamiAgenda.Locate('CODICIRAD_FK',cxDBGrid2.Controller.SelectedRecords[I].Values[cxDBGrid2CODICIRAD_FK.Index],[]) then
    begin
      EsamixDiagn.Append;
      EsamixDiagn.Fieldbyname('PKCODICIRAD').AsInteger := QyEsamiAgenda.Fieldbyname('CODICIRAD_FK').AsInteger;
      EsamixDiagn.Fieldbyname('DESCRIZIONE').AsString := QyEsamiAgenda.Fieldbyname('DESCRIZIONE').AsString;
      EsamixDiagn.Fieldbyname('CODICE').AsString := QyEsamiAgenda.Fieldbyname('CODICE').AsString;
      EsamixDiagn.Fieldbyname('DURATA').AsInteger := QyEsamiAgenda.Fieldbyname('DURATA').AsInteger;
      EsamixDiagn.Fieldbyname('IDENT_FK').AsString := QyEsamiAgenda.Fieldbyname('IDENT_FK').AsString;
      EsamixDiagn.Post;
    end;
  end;

  if cxDBGrid2.Controller.SelectedRecordCount>0 then
    cxDBGrid2.Controller.DeleteSelection;

  finally
    QyEsamiAgenda.EnableControls;
    EsamixDiagn.EnableControls;
    if (cxDBGrid2.DataController.RecordCount>0) and Assigned(cxDBGrid2.Controller.FocusedRecord) then
        cxDBGrid2.Controller.FocusedRecord.Selected := true;

    Screen.Cursor := crDefault;
  end;

end;

procedure TFModiPreno.cxDBGrid1DragOver(Sender, Source: TObject; X,
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

procedure TFModiPreno.cxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=13 then
     aSelezionaSingoloCodice.Execute;

end;

procedure TFModiPreno.cxDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=13 then
     aDeselezionaSingolo.Execute;

end;

procedure TFModiPreno.edTipoPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  QyAgendaOSP_RICH.Clear;
  QyAgendaTIPO_ATTIVITA_FK.Clear;
  QyAgendaDIPARTIMENTI_FK.Clear;
  QyAgendaREP_RICH_FK.Clear;
  QyAgendaSERV_RICH_FK.Clear;

  FDMCommon.qCaricaProvenienze.Locate('PROVENIENZA',QyAgendaPROVENIENZA.AsString,[]);
  QyAgendaICONA.AsInteger := FDMCommon.qCaricaProvenienzeICONA.AsInteger;
  QyAgendaDESCPROVENIENZA.AsString := FDMCommon.qCaricaProvenienzeDESCRIZIONE.AsString;

  if QyAgendaPROVENIENZA.AsString='E' then
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
  else if QyAgendaPROVENIENZA.AsString='I' then
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

procedure TFModiPreno.AbilitaCampi(change: boolean);
begin

//  cxAttivita.Enabled := (QyPrenoINTERNI.AsInteger in [0,1]);
//  cxProvenienza.Enabled := (QyPrenoINTERNI.AsInteger in [0,1]) and (not qyPrenoTIPO_ATTIVITA_FK.IsNull);

  if change then
  begin
     cxProvenienza.Clear;
     cxAttivita.Clear;
     cxDipartRich.Clear;
     cxRepRich.Clear;
     cxServRich.Clear;
     QyAgendaOSP_RICH.Clear;
     QyAgendaTIPO_ATTIVITA_FK.Clear;
     QyAgendaDIPARTIMENTI_FK.Clear;
     QyAgendaREP_RICH_FK.Clear;
     QyAgendaSERV_RICH_FK.Clear;
  end;

  if QyAgendaPROVENIENZA.AsString='E' then
  begin
      cxAttivita.Enabled := true;
      cxProvenienza.Enabled := false;
      cxDipartRich.Enabled := false;
      cxRepRich.Enabled := false;
      cxServRich.Enabled := false;
  end
  else if QyAgendaPROVENIENZA.AsString='I' then
  begin
      cxAttivita.Enabled := true;
      cxProvenienza.Enabled := false;
      cxDipartRich.Enabled := true;
      cxRepRich.Enabled := QyAgendaDIPARTIMENTI_FK.IsNull;
      cxServRich.Enabled := not QyAgendaREP_RICH_FK.IsNull;
  end
  else begin
      cxAttivita.Enabled := false;
      cxProvenienza.Enabled := false;
      cxDipartRich.Enabled := false;
      cxRepRich.Enabled := false;
      cxServRich.Enabled := false;
  end;

  if QyAgendaPROVENIENZA.AsString='E' then
  begin
    if (cxAttivita.Text<>'') and (cxAttivita.Text<>QyAgendaTIPO_ATTIVITA_FK.AsString) then
    begin
      FDMCommon.LkOspedali.Filtered := false;
      FDMCommon.LkOspedali.Filter := format('TIPO_ATTIVITA_FK = ''%s''',[QyAgendaTIPO_ATTIVITA_FK.AsString]);
      FDMCommon.LkOspedali.Filtered := true;
      cxProvenienza.Enabled := true;
    end
    else if (cxAttivita.Text='') then
    begin
      cxProvenienza.Enabled := false;
    end;
  end;

  dxLayoutControl1Group_Root.Enabled := FAbilitaModifiche;
  aConferma.Enabled := FAbilitaModifiche;

end;

procedure TFModiPreno.DoCreate;
begin
  inherited;
  FIntervallo := 15;
  FAbilitaModifiche := true;

  if not Assigned(sLkReparti.DataSet) then
     sLkReparti.DataSet := FDMCommon.LkReparti;

  cxAttivita.Properties.Grid.DataController.DataModeController.SyncMode := True;
  cxProvenienza.Properties.Grid.DataController.DataModeController.SyncMode := True;

  if FDMCommon.LeggiPostoLavoroCHK_SLITTA_REP.AsInteger=1 then
  begin
     dxLayoutControlReparto.CaptionOptions.Text := RS_Ospedale;
     dxLayoutControlServizio.CaptionOptions.Text := RS_Reparto;
  end;

end;

procedure TFModiPreno.cxTrackBar1PropertiesChange(Sender: TObject);
var
  hh,mm: integer;
begin
  inherited;

  if cxTrackBar1.Enabled and not (QyAgenda.State in dsEditModes) then
     QyAgenda.Edit;
  hh := cxTrackBar1.Position div 60;
  mm := cxTrackBar1.Position - (hh*60);
  if (QyAgenda.State in dsEditModes) then
  begin
      QyAgendaORA_INIZIO.AsDateTime := RecodeDateTime( Event.Start, RecodeLeaveFieldAsIs,RecodeLeaveFieldAsIs,RecodeLeaveFieldAsIs,
                                      hh, mm,
                                      RecodeLeaveFieldAsIs,RecodeLeaveFieldAsIs);
      teStart.Time := TimeOf(QyAgendaORA_INIZIO.AsDateTime);
  end;

end;

procedure TFModiPreno.cxTrackBar2PropertiesChange(Sender: TObject);
var
  hh,mm: integer;
begin
  inherited;
    if cxTrackBar2.Enabled and not (QyAgenda.State in dsEditModes) then
       QyAgenda.Edit;
    hh := cxTrackBar2.Position div 60;
    mm := cxTrackBar2.Position - (hh*60);
    if (QyAgenda.State in dsEditModes) then
    begin
        QyAgendaORA_FINE.AsDateTime := RecodeDateTime( Event.Finish, RecodeLeaveFieldAsIs,RecodeLeaveFieldAsIs,RecodeLeaveFieldAsIs,
                                      hh, mm,
                                      RecodeLeaveFieldAsIs,RecodeLeaveFieldAsIs);
        teFinish.Time := TimeOf(QyAgendaORA_FINE.AsDateTime);
    end;
end;

procedure TFModiPreno.fcLabel6SectionClick(HeaderControl: TcxCustomHeader;
  Section: TcxHeaderSection);
begin
  inherited;
  case Section.Index of
  1: aSelezionaSingoloCodice.Execute;
  2: aSelezionaTuttiCodici.Execute;
  end;

end;

procedure TFModiPreno.fcLabel1SectionClick(HeaderControl: TcxCustomHeader;
  Section: TcxHeaderSection);
begin
  inherited;
  case Section.Index of
  1: aDeSelezionaSingolo.Execute;
  2: aDeSelezionaTuttiCodici.Execute;
  end;

end;

procedure TFModiPreno.BaseFormDestroy(Sender: TObject);
begin
  inherited;

  QyAgenda.BeforeEdit :=  nil;

  FDMCommon.TipoAttivita.Filtered := false;
  FDMCommon.LkOspedali.Filtered := false;
end;

procedure TFModiPreno.cxAttivitaPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if cxAttivita.Text<>'' then
  begin
    FDMCommon.LkOspedali.Filtered := false;
    FDMCommon.LkOspedali.Filter := format('TIPO_ATTIVITA_FK = ''%s''',[QyAgendaTIPO_ATTIVITA_FK.AsString]);
    FDMCommon.LkOspedali.Filtered := true;
    cxProvenienza.Enabled := true;
    cxProvenienza.Clear;
    QyAgendaOSP_RICH.Clear;
    QyAgendaTIPOATTIVITA.AsString := cxAttivita.Text;
  end
  else begin
    cxProvenienza.Enabled := false;
    cxProvenienza.Clear;
    QyAgendaOSP_RICH.Clear;
    QyAgendaTIPOATTIVITA.Clear;
  end;

end;

procedure TFModiPreno.QyAgendaBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not FAbilitaModifiche then
     Abort;

end;

procedure TFModiPreno.EsamixDiagnBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not FAbilitaModifiche then
     Abort;

end;

procedure TFModiPreno.EsamixDiagnBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not FAbilitaModifiche then
     Abort;

end;

procedure TFModiPreno.QyEsamiAgendaBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not FAbilitaModifiche then
     Abort;

end;

procedure TFModiPreno.QyEsamiAgendaBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not FAbilitaModifiche then
     Abort;

end;

procedure TFModiPreno.cxRepRichPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if VarIsNull(cxRepRich.EditValue) or (FDMCommon.VarToInt(cxRepRich.EditValue)=0) then
  begin
     QyAgendaSERV_RICH_FK.Clear;
     QyAgendaREPRICHIEDE.Clear;
     cxServRich.Enabled := false;
  end
  else if LkServizi.Parambyname('reparti_fk').IsNull or (LkServizi.Parambyname('reparti_fk').AsInteger<>FDMCommon.VarToInt(cxRepRich.EditValue)) then
  begin
    QyAgendaREPRICHIEDE.AsString := FDMCommon.LkRepartiDESCRIZIONE.AsString;
    cxServRich.Enabled := true;
    LkServizi.Parambyname('reparti_fk').AsInteger := FDMCommon.VarToInt(cxRepRich.EditValue);
    LkServizi.syRefresh;
    if QyAgenda.Active and not (QyAgenda.State in dsEditModes) then
       QyAgenda.Edit;
    QyAgendaSERV_RICH_FK.Clear;
    QyAgendaSERVRICHIEDE.Clear
  end;

end;

procedure TFModiPreno.cxDipartRichPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if VarIsNull(cxDipartRich.EditValue) or (FDMCommon.VarToInt(cxDipartRich.EditValue)=0) then
  begin
     QyAgendaDIPARTIMENTO.Clear;
     cxRepRich.Enabled := true;
     cxServRich.Enabled := true;
  end
  else begin
     QyAgendaREP_RICH_FK.Clear;
     cxRepRich.Enabled := false;
     QyAgendaSERV_RICH_FK.Clear;
     cxServRich.Enabled := false;
     QyAgendaDIPARTIMENTO.AsString := DipartimentiDESCRIZIONE.AsString;
  end;

end;

procedure TFModiPreno.teStartPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  hh,mm: integer;
begin
  inherited;
  hh := StrToIntDef(Copy(DisplayValue,1,Pos(TimeSeparator,DisplayValue)-1),0);
  mm := StrToIntDef(Copy(DisplayValue,Pos(TimeSeparator,DisplayValue)+1,2),0);
  cxTrackBar1.Position := hh * 60 + mm;

end;

procedure TFModiPreno.teFinishPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  hh,mm: integer;
begin
  inherited;
  hh := StrToIntDef(Copy(DisplayValue,1,Pos(TimeSeparator,DisplayValue)-1),0);
  mm := StrToIntDef(Copy(DisplayValue,Pos(TimeSeparator,DisplayValue)+1,2),0);
  cxTrackBar2.Position := hh * 60 + mm;

end;

procedure TFModiPreno.QyAgendaBeforePost(DataSet: TDataSet);
begin
  QyAgendaUSER_ID.AsInteger := gblCodUtente;

  QyAgendaORA_INIZIO.AsDateTime := deStart + teStart.Time {+ BiasTime};
  QyAgendaORA_FINE.AsDateTime := deStart + teFinish.Time {+ Ord(cbAllDayEvent.Checked) {+ BiasTime};
{
  if (QyAgendaORA_INIZIO.AsDateTime>=QyAgendaORA_FINE.AsDateTime) then
  begin
     MsgDlg(RS_ctrl_iniziofine, '', ktWarning, [kbOK]);
     Abort;
  end;
}
  if QyAgendaBLOCCATO.AsInteger=1 then
    QyAgendaSET_COLORI_FK.AsInteger := 6
  else
    QyAgendaSET_COLORI_FK.AsInteger := 2;

  QyAgendaCOLORE.AsInteger := FDMCommon.xColori[QyAgendaSET_COLORI_FK.AsInteger];

end;

procedure TFModiPreno.QyAgendaCalcFields(DataSet: TDataSet);
var
  xprov: string;
begin
  xprov := '';
  if not QyAgendaSERVRAD_FK.IsNull then
     xprov := xprov + QyAgendaDESCRADSERV.AsString;

  if QyAgendaPROVENIENZA.AsString='E' then
  begin
        if not QyAgendaOSP_RICH.IsNull then
           xprov := xprov + #13 + QyAgendaOSPEDALE.AsString;
  end
  else if QyAgendaPROVENIENZA.AsString='I' then
  begin
        if not QyAgendaDIPARTIMENTI_FK.IsNull then
           xprov := xprov + #13 + 'Dip.: ' + QyAgendaDIPARTIMENTO.AsString;
        if not QyAgendaREP_RICH_FK.IsNull then
           xprov := xprov + #13 + 'Reparto: ' + QyAgendaREPRICHIEDE.AsString;
        if not QyAgendaSERV_RICH_FK.IsNull then
           xprov := xprov + #13 + 'Servizio: ' + QyAgendaSERVRICHIEDE.AsString;
  end;
  QyAgendaDESCRICH.AsString := xprov;

  if QyAgendaT_DISP.AsInteger>QyAgendaT_ASSEG.AsInteger then
  begin
     QyAgendaSpazio.AsInteger := trunc((QyAgendaT_DISP.AsInteger-QyAgendaT_ASSEG.AsInteger) / QyAgendaT_DISP.AsInteger * 100);
     QyAgendaRimane.AsInteger := trunc((QyAgendaT_DISP.AsInteger-QyAgendaT_ASSEG.AsInteger));
  end
  else begin
     QyAgendaSpazio.AsInteger := 0;
     QyAgendaRimane.AsInteger := 0;
  end;

end;

procedure TFModiPreno.QyAgendaNewRecord(DataSet: TDataSet);
begin
   QyAgendaSERVIZI_FK.AsVariant := Event.ResourceID;
   QyAgendaBLOCCATO.AsInteger := 0;
//   QyAgendaPROVENIENZA.AsString := 'E';
   QyAgendaREPARTI_FK.AsInteger := gblpkrep;
   QyAgendaPRENOCUP.AsInteger := 1;
//   QyAgendaDATA_PRENO.AsDateTime := DateOf(Event.Start);

end;

procedure TFModiPreno.cxServRadPropertiesCloseUp(Sender: TObject);
begin
  if VarIsNull(cxServRad.EditValue) or (FDMCommon.VarToInt(cxServRad.EditValue)=0) then
     QyAgendaDESCRADSERV.Clear
  else
     QyAgendaDESCRADSERV.AsString := ServiziRadiologiaDESCRIZIONE.AsString;

end;

procedure TFModiPreno.cxProvenienzaPropertiesCloseUp(Sender: TObject);
begin
  if VarIsNull(cxProvenienza.EditValue) then
    QyAgendaOSPEDALE.Clear
  else
    QyAgendaOSPEDALE.AsString := cxProvenienza.Text;

end;

procedure TFModiPreno.cxServRichPropertiesCloseUp(Sender: TObject);
begin
  if VarIsNull(cxServRich.EditValue) or (FDMCommon.VarToInt(cxServRich.EditValue)=0) then
     QyAgendaSERVRICHIEDE.Clear
  else
     QyAgendaSERVRICHIEDE.AsString := LkServiziDESCRIZIONE.AsString;

end;

procedure TFModiPreno.QyAgendaBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

end.
