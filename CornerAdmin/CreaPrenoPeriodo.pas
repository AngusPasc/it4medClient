unit CreaPrenoPeriodo;

interface

uses
  BaseRad, cxSchedulerEventEditor,{}cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxStyles, cxEdit, cxScheduler, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerCustomResourceView,
  cxSchedulerDayView, cxSchedulerDateNavigator, cxSchedulerHolidays,
  cxSchedulerTimeGridView, cxSchedulerUtils, cxSchedulerWeekView,
  cxSchedulerYearView, cxSchedulerGanttView, cxSchedulerRecurrence,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxCalendar, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxSchedulerLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  rsStorage, rsXmlData, cxSchedulerDBStorage, dxPSCore, dxPScxCommon,
  AstaDrv2, AstaUpdateSQL, rsPropSaver, dxBar, AstaClientDataset, Classes,
  ActnList, cxBarEditItem, cxClasses, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxPC,
  CSEZForm, StdCtrls, cxButtons, Controls, ExtCtrls, dxBarBuiltInMenu,
  cxSchedulerRibbonStyleEventEditor, cxSchedulerTreeListBrowser,
  dxPSPrVwAdv, dxPSPrVwRibbon, cxImageComboBox, dxPSdxLCLnk, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinscxSchedulerPainter,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSdxDBOCLnk, cxContainer,
  cxGroupBox;

type
  TFCreaPrenoPeriodo = class(TFBaseRad)
    dxBarManager1: TdxBarManager;
    dxBarSubItem1: TdxBarSubItem;
    dxEsterni: TdxBarButton;
    dxInterni: TdxBarButton;
    dxEntrambi: TdxBarButton;
    ActionList1: TActionList;
    dxBarButton5: TdxBarButton;
    qTempAgende: TAstaClientDataSet;
    qTempAgendeSERVIZI_FK: TIntegerField;
    qTempAgendeORA_INIZIO: TDateTimeField;
    qTempAgendeORA_FINE: TDateTimeField;
    qTempAgendePKTEMPAGENDE: TIntegerField;
    qTempAgendeBLOCCATO: TIntegerField;
    sqTempAgende: TDataSource;
    aCreaPeriodo: TAction;
    aModificaPeriodo: TAction;
    aCancellaPeriodo: TAction;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarPopupItem: TdxBarPopupMenu;
    dxBarPopupGrid: TdxBarPopupMenu;
    QyTempEsami: TAstaClientDataSet;
    QyTempEsamiCODICIRAD_FK: TIntegerField;
    QyTempEsamiDESCRIZIONE: TStringField;
    QyTempEsamiCODICE: TStringField;
    QyTempEsamiDURATA: TIntegerField;
    QyTempEsamiIDENT_FK: TStringField;
    dxSettimanaTipo: TdxBarButton;
    dxGiornoTipo: TdxBarButton;
    aSceltaTipoTemplate: TAction;
    dxBarSubItem2: TdxBarSubItem;
    rsPropSaver1: TrsPropSaver;
    dxBarButton6: TdxBarButton;
    aSalvaTemplate: TAction;
    dxBarButton7: TdxBarButton;
    aLeggiTemplate: TAction;
    dxBarSubItem3: TdxBarSubItem;
    dxPeriodo: TdxBarCombo;
    qTempAgendeTMPLCALEND_FK: TIntegerField;
    updQyTempEsami: TAstaUpdateSQL;
    QyTempTemp: TAstaClientDataSet;
    QyTempTempPKTMPLCALEND: TIntegerField;
    QyTempTempREPARTI_FK: TIntegerField;
    QyTempTempUSER_ID: TIntegerField;
    QyTempTempTIPO: TIntegerField;
    QyTempTempSETT_GIORNO: TIntegerField;
    QyTempTempDIAGNOSTICA_FK: TIntegerField;
    qTempAgendeOSP_RICH: TStringField;
    qTempAgendeOSPEDALE: TStringField;
    aCopia: TAction;
    aIncolla: TAction;
    dxBarButton3: TdxBarButton;
    dxBarButton8: TdxBarButton;
    AstaCut: TAstaDataSet;
    AstaDett: TAstaDataSet;
    AstaCutPKTEMPAGENDE: TIntegerField;
    AstaCutSERVIZI_FK: TIntegerField;
    AstaCutORA_INIZIO: TDateTimeField;
    AstaCutORA_FINE: TDateTimeField;
    AstaCutBLOCCATO: TIntegerField;
    AstaCutTMPLCALEND_FK: TIntegerField;
    AstaCutOSP_RICH: TStringField;
    AstaCutOSPEDALE: TStringField;
    AstaDettCODICIRAD_FK: TIntegerField;
    AstaDettDESCRIZIONE: TStringField;
    AstaDettCODICE: TStringField;
    AstaDettDURATA: TIntegerField;
    AstaDettIDENT_FK: TStringField;
    ksfcImageBtn1: TcxButton;
    aSalva: TAction;
    aAnnulla: TAction;
    cxPageControl: TcxPageControl;
    cxCalendario: TcxTabSheet;
    cxLista: TcxTabSheet;
    cxGiorni: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qTempAgendeGIORNO: TStringField;
    cxGiorniORA_INIZIO: TcxGridDBColumn;
    cxGiorniORA_FINE: TcxGridDBColumn;
    cxGiorniOSPEDALE: TcxGridDBColumn;
    cxGiorniGIORNO: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    cxEsami: TcxGridDBTableView;
    sQyEsami: TDataSource;
    cxEsamiDESCRIZIONE: TcxGridDBColumn;
    cxEsamiCODICE: TcxGridDBColumn;
    cxEsamiDURATA: TcxGridDBColumn;
    cxEsamiIDENT_FK: TcxGridDBColumn;
    dxCalendario: TdxBarButton;
    dxLista: TdxBarButton;
    cxGiorniPROVENIENZA: TcxGridDBColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    Stampa: TAction;
    dxStampa: TdxBarButton;
    dxPrintTemplate: TdxGridReportLink;
    StampaSenza: TAction;
    dxSenza: TdxBarButton;
    aAggiornaAgende: TAction;
    ModificaAgende: TAstaClientDataSet;
    ksfcImageBtn2: TcxButton;
    qTempAgendeTIPO_ATTIVITA_FK: TStringField;
    AstaCutTIPO_ATTIVITA_FK: TStringField;
    qTempAgendeTIPOATTIVITA: TStringField;
    AstaCutTIPOATTIVITA: TStringField;
    qLeggiTemp: TAstaClientDataSet;
    qLeggiTempPKTMPLCALEND: TIntegerField;
    qLeggiTempREPARTI_FK: TIntegerField;
    qLeggiTempUSER_ID: TIntegerField;
    qLeggiTempTIPO: TIntegerField;
    qLeggiTempSETT_GIORNO: TIntegerField;
    qLeggiTempDIAGNOSTICA_FK: TIntegerField;
    QyTempTempDESC_TMPL: TStringField;
    qTempAgendePRENOCUP: TIntegerField;
    AstaCutPRENOCUP: TIntegerField;
    qTempAgendeREP_RICH_FK: TIntegerField;
    qTempAgendeREPRICHIEDE: TStringField;
    AstaCutREP_RICH_FK: TIntegerField;
    AstaCutREPRICHIEDE: TStringField;
    qTempAgendeSERV_RICH_FK: TIntegerField;
    qTempAgendeSERVRICHIEDE: TStringField;
    AstaCutSERV_RICH_FK: TIntegerField;
    AstaCutSERVRICHIEDE: TStringField;
    qTempAgendeDESCRADSERV: TStringField;
    AstaCutDESCRADSERV: TStringField;
    qTempAgendeSERVRAD_FK: TIntegerField;
    AstaCutSERVRAD_FK: TIntegerField;
    cxGiorniREPRICHIEDE: TcxGridDBColumn;
    cxGiorniSERVRICHIEDE: TcxGridDBColumn;
    cxGiorniTIPOATTIVITA: TcxGridDBColumn;
    cxGiorniDESCRADSERV: TcxGridDBColumn;
    updTempAgende: TAstaUpdateSQL;
    qTempAgendeDIPARTIMENTI_FK: TIntegerField;
    qTempAgendeDIPARTIMENTO: TStringField;
    cxGiorniDIPARTIMENTO: TcxGridDBColumn;
    cxSchedulerDBStorage: TcxSchedulerDBStorage;
    Scheduler: TcxScheduler;
    qTempAgendeEVENT_TYPE: TIntegerField;
    qTempAgendeOPTIONS: TIntegerField;
    qTempAgendeCOLORE: TIntegerField;
    qTempAgendeDESCRICH: TStringField;
    qTempAgendeUSER_ID: TIntegerField;
    qTempAgendeSET_COLORI_FK: TIntegerField;
    qTempAgendeTIPO_FATTURA: TIntegerField;
    QyTempEsamiTEMPAGENDE_FK: TIntegerField;
    qTempAgendePROVENIENZA: TStringField;
    qTempAgendeDESCPROVENIENZA: TStringField;
    AstaCutPROVENIENZA: TStringField;
    qTempAgendeICONA: TIntegerField;
    AstaCutSET_COLORI_FK: TIntegerField;
    AstaCutCOLORE: TIntegerField;
    AstaCutICONA: TIntegerField;
    AstaCutDESCPROVENIENZA: TStringField;
    dxDal: TcxBarEditItem;
    dxAl: TcxBarEditItem;
    AstaCutDIPARTIMENTI_FK: TIntegerField;
    AstaCutDESCRICH: TStringField;
    aSalvaConNome: TAction;
    dxBarButton9: TdxBarButton;
    qControlloAgende: TAstaClientDataSet;
    qControlloAgendeDESC_TMPL: TStringField;
    qControlloAgendeORA_INIZIO: TDateTimeField;
    qControlloAgendeORA_FINE: TDateTimeField;
    cxButton1: TcxButton;
    aSalvaNome: TAction;
    qCopiaAgende: TAstaClientDataSet;
    qCopiaAgendePKTEMPAGENDE: TIntegerField;
    qCopiaAgendeSERVIZI_FK: TIntegerField;
    qCopiaAgendeORA_INIZIO: TDateTimeField;
    qCopiaAgendeORA_FINE: TDateTimeField;
    qCopiaAgendePROVENIENZA: TStringField;
    qCopiaAgendeBLOCCATO: TIntegerField;
    qCopiaAgendeTMPLCALEND_FK: TIntegerField;
    qCopiaAgendeTIPO_ATTIVITA_FK: TStringField;
    qCopiaAgendeOSP_RICH: TStringField;
    qCopiaAgendePRENOCUP: TIntegerField;
    qCopiaAgendeREP_RICH_FK: TIntegerField;
    qCopiaAgendeSERV_RICH_FK: TIntegerField;
    qCopiaAgendeSERVRAD_FK: TIntegerField;
    qCopiaAgendeDIPARTIMENTI_FK: TIntegerField;
    qCopiaAgendeUSER_ID: TIntegerField;
    qCopiaAgendeSET_COLORI_FK: TIntegerField;
    qCopiaAgendeEVENT_TYPE: TIntegerField;
    qCopiaAgendeOPTIONS: TIntegerField;
    qCopiaEsami: TAstaClientDataSet;
    qCopiaEsamiCODICIRAD_FK: TIntegerField;
    qCopiaEsamiTEMPAGENDE_FK: TIntegerField;
    dxPrintScheduler: TcxSchedulerReportLink;
    aStampaCalendario: TAction;
    dxBarButton10: TdxBarButton;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
dxBarManager1Bar1: TdxBar;
    rsStorage1: TrsStorage;
    rsXMLData1: TrsXMLData;
    procedure FormShow(Sender: TObject);
    procedure aCreaPeriodoExecute(Sender: TObject);
    procedure aModificaPeriodoExecute(Sender: TObject);
    procedure aCancellaPeriodoExecute(Sender: TObject);
    procedure aSceltaTipoTemplateExecute(Sender: TObject);
    procedure aSalvaTemplateExecute(Sender: TObject);
    procedure aLeggiTemplateExecute(Sender: TObject);
    procedure aSalvaTemplateUpdate(Sender: TObject);
    procedure qTempAgendeBeforePost(DataSet: TDataSet);
    procedure dxPeriodoChange(Sender: TObject);
    procedure qTempAgendeBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure QyTempEsamiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure QyTempEsamiNewRecord(DataSet: TDataSet);
    procedure aCopiaExecute(Sender: TObject);
    procedure aIncollaExecute(Sender: TObject);
    procedure aIncollaUpdate(Sender: TObject);
    procedure qTempAgendeAfterPost(DataSet: TDataSet);
    procedure qTempAgendeAfterDelete(DataSet: TDataSet);
    procedure aSalvaExecute(Sender: TObject);
    procedure aSalvaUpdate(Sender: TObject);
    procedure aAnnullaExecute(Sender: TObject);
    procedure dxCalendarioClick(Sender: TObject);
    procedure dxListaClick(Sender: TObject);
    procedure StampaExecute(Sender: TObject);
    procedure StampaSenzaExecute(Sender: TObject);
    procedure qTempAgendeCalcFields(DataSet: TDataSet);
    procedure aAggiornaAgendeExecute(Sender: TObject);
    procedure QyTempTempNewRecord(DataSet: TDataSet);
    procedure qLeggiTempBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure aAggiornaAgendeUpdate(Sender: TObject);
    procedure aCopiaUpdate(Sender: TObject);
{ ToDo: no spostamento tra giorni
    procedure DBPlannerItemMoving(Sender: TObject; Item: TPlannerItem;
      DeltaBegin, DeltaPos: Integer; var Allow: Boolean);
}
    procedure SchedulerCustomDrawDayHeader(Sender: TObject;
      ACanvas: TcxCanvas; AViewInfo: TcxSchedulerDayHeaderCellViewInfo;
      var ADone: Boolean);
    procedure BaseFormDestroy(Sender: TObject);
    procedure aCancellaPeriodoUpdate(Sender: TObject);
    procedure cxSchedulerDBStorageEventModified(Sender: TObject;
      AEvent: TcxSchedulerEvent; var AHandled: Boolean);
    procedure cxSchedulerDBStorageEventInserted(Sender: TObject;
      AEvent: TcxSchedulerEvent; var AHandled: Boolean);
    procedure SchedulerInitEventImages(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent; AImages: TcxSchedulerEventImages);
    procedure qTempAgendeBeforeDelete(DataSet: TDataSet);
    procedure SchedulerBeforeEditing(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent; AInplace: Boolean;
      var Allow: Boolean);
    procedure aSalvaConNomeExecute(Sender: TObject);
    procedure aSalvaConNomeUpdate(Sender: TObject);
    procedure QyTempTempAfterPopulate(Sender: TObject);
    procedure aSalvaNomeExecute(Sender: TObject);
    procedure aSalvaNomeUpdate(Sender: TObject);
    procedure QyTempTempAfterPost(DataSet: TDataSet);
    procedure aStampaCalendarioExecute(Sender: TObject);
    procedure SchedulerIsWorkTime(Sender: TObject;
      AResource: TcxSchedulerStorageResourceItem; const ATime: TDateTime;
      var AIsWork: Boolean);
    procedure aModificaPeriodoUpdate(Sender: TObject);
    procedure rsXMLData1LoadFromStream(Sender: TObject; Stream: TStream;
      var DoStandard: Boolean);
    procedure rsXMLData1SaveToStream(Sender: TObject; Stream: TStream;
      var DoStandard: Boolean);
  private
    { Private declarations }
    oldcxEventEditorClass: TcxSchedulerEventEditorClass;
//    FModified: boolean;
    function ModificazioneAgende: boolean;
{ToDo: Spostamenti da memoria di transito
    procedure DBDaySourceInsertItem(Sender: TObject; APlannerItem: TPlannerItem);
}
    procedure ExStampa(tipo: integer);
    procedure ControlloAgende( ds: TAstaClientDataSet );
  protected
    procedure DoCreate; override;  
  public
    { Public declarations }
    kServiziDATA_FINE: TDateTime;
    kPKSERVIZI: Integer;
    kDESCDIAGN: string;
    kSlot_Standard: integer;

  end;

var
  FCreaPrenoPeriodo: TFCreaPrenoPeriodo;
  
implementation

uses
  DMCommon, Forms, Msgdlgs, Sysutils, dateutils, graphics, ModiTemplatePreno, 
  cxSchedulerDialogs, dxPrnDlg, TmplCalend, syQueryForm, AstaDBtypes, Variants;

{$R *.DFM}

type
//  TcxSchedulerStorageAccess = class(TcxSchedulerStorage);
  TcxSchedulerDBStorageAccess = class(TcxSchedulerDBStorage);

procedure TFCreaPrenoPeriodo.FormShow(Sender: TObject);
begin

  aSceltaTipoTemplate.Execute;

  qLeggiTemp.open;
  if qLeggiTemp.IsEmpty then
  begin
     QyTempTemp.OpenNoFetch;
     QyTempTemp.Insert;
     QyTempTemp.Post;   // -- per poter salvare direttamente i template
     QyTempTemp.Edit;
  end
  else begin
     QyTempTemp.Parambyname('pktmplcalend').AsInteger := QLeggiTempPKTMPLCALEND.AsInteger;
     QyTempTemp.Open;
  end;

  qTempAgende.open;
  QyTempEsami.open;

  aSceltaTipoTemplate.Execute;

  if kSLOT_STANDARD>0 then
  begin
//    DBPlanner.SetZoomValue(kSLOT_STANDARD);
//    DBPlanner.Display.Displayunit := kSLOT_STANDARD;
  end;

end;

procedure TFCreaPrenoPeriodo.DoCreate;
begin

   inherited;
   // to use the cxEventEditorClass constant, specify the cxSchedulerDialogs unit in the uses clause
   // indicate that the new Event dialog will be invoked at runtime
   oldcxEventEditorClass := cxEventEditorClass;
   cxEventEditorClass := TFModiTemplatePreno;
   Scheduler.OptionsBehavior.ModalDialogs := True;

   rsPropSaver1.Storage.Load;
   rsPropSaver1.LoadValues;

//   FModified := false;
   dxDal.EditValue := Date();
   dxAl.EditValue := Date();
   AstaCut.open;
   AstaDett.open;

   cxPageControl.HideTabs := true;

   if cxPageControl.ActivePage<>cxCalendario then
      cxPageControl.ActivePage := cxCalendario;

end;

procedure TFCreaPrenoPeriodo.aCreaPeriodoExecute(Sender: TObject);
var
  eEvent: TcxSchedulerControlEvent;
begin
  eEvent := TcxSchedulerControlEvent.Create(cxSchedulerDBStorage.CreateEvent);
  try
     // Customize other event settings...
     Scheduler.EditEventUsingDialog(eEvent,false);
  finally
     FreeAndNil(eEvent); // To release the consumed memory
  end;
end;

procedure TFCreaPrenoPeriodo.aModificaPeriodoExecute(Sender: TObject);
var
  eEvent: TcxSchedulerControlEvent;
begin
  eEvent := Scheduler.SelectedEvents[0];
  if (eEvent = nil) then
    Exit;
  Scheduler.EditEventUsingDialog(eEvent, True, eEvent.EventType = etPattern);
end;

procedure TFCreaPrenoPeriodo.aCancellaPeriodoExecute(Sender: TObject);
begin
  if MsgDlgPos(RS_Gene_Msg_ConfCanc, '',
            ktConfirmation,[kbYes, kbNo]) = mrYes then
  begin
      Scheduler.DeleteSelectedEvents(False);
  end;
end;

procedure TFCreaPrenoPeriodo.aSceltaTipoTemplateExecute(Sender: TObject);
begin
  if dxSettimanaTipo.Down then
  begin
     Scheduler.SelectDays(EncodeDate(2002, 4, 15),EncodeDate(2002, 4, 21),True);
     Scheduler.ViewDay.DayHeaderArea := True;
  end
  else begin
     Scheduler.SelectDays(EncodeDate(2002, 4, 15),EncodeDate(2002, 4, 15),True);
     Scheduler.ViewDay.DayHeaderArea := False;
  end;
end;

{JRT 6630}
procedure TFCreaPrenoPeriodo.ControlloAgende( ds: TAstaClientDataSet );
var
  avanti: boolean;
begin
  avanti := false;
  ds.First;
  while not ds.Eof and not avanti do
  begin
     qControlloAgende.ParamByName('SERVIZI_FK').AsInteger := ds.FieldByName('SERVIZI_FK').AsInteger;
     if not qTempAgendePKTEMPAGENDE.IsNull then
        qControlloAgende.ParamByName('PKTEMPAGENDE').AsInteger := ds.FieldByName('PKTEMPAGENDE').AsInteger;
     qControlloAgende.ParamByName('ORA_INIZIO').AsDateTime := ds.FieldByName('ORA_INIZIO').AsDateTime;
     qControlloAgende.ParamByName('ORA_FINE').AsDateTime := ds.FieldByName('ORA_FINE').AsDateTime;
     qControlloAgende.syRefresh;
     if not qControlloAgende.IsEmpty then
     begin
        if MsgDlg( format(RIS_CtrlTemplate,[LongDayNames[DayOfWeek(qControlloAgendeORA_INIZIO.AsDateTime)],TimeToStr(ds.FieldByName('ORA_INIZIO').AsDateTime),TimeToStr(ds.FieldByName('ORA_FINE').AsDateTime),qControlloAgendeDESC_TMPL.AsString]), '',
                     ktInformation, [kbYes,kbNo], dfFirst)=mrNo then
           Abort
//        else
//           avanti := true
           ;

     end;
     ds.Next;
  end;
end;
{}

procedure TFCreaPrenoPeriodo.aSalvaTemplateExecute(Sender: TObject);
var
  NewString: string;
//  avanti: boolean;
begin

//  ControlloAgende(qTempAgende);    -> non serve più: lavoriamo direttamente sui dati...

  if (QyTempTempTIPO.AsInteger=2) then
  begin
     if not (QyTempTemp.State in dsEditModes) then
        QyTempTemp.Edit;
     if dxSettimanaTipo.Down then
        QyTempTempSETT_GIORNO.AsInteger := 1
     else
        QyTempTempSETT_GIORNO.AsInteger := 2;
     QyTempTemp.Post;
  end
  else if (QyTempTempTIPO.AsInteger=3) then
  begin
     if not syInputQuery(RIS_SalvaTemplate, RIS_NomeTemplate, {FDMCommon.cxEditStyleController1,} NewString) then
        Abort;
     if not (QyTempTemp.State in dsEditModes) then
        QyTempTemp.Edit;
     QyTempTempTIPO.AsInteger := 2;
     QyTempTempDESC_TMPL.AsString := NewString;
     if dxSettimanaTipo.Down then
        QyTempTempSETT_GIORNO.AsInteger := 1
     else
        QyTempTempSETT_GIORNO.AsInteger := 2;
     QyTempTemp.Post;
  end;

  FDMCommon.AstaClientSocket.SendDataSetTransactions(Name,[{QyTempTemp,}qTempAgende,QyTempEsami]);

end;

procedure TFCreaPrenoPeriodo.aLeggiTemplateExecute(Sender: TObject);
begin
    FTmplCalend := TFTmplCalend.Create(nil);
    try
       FTmplCalend.QyTmplcalend.Parambyname('diagnostica').AsString := format('# t.DIAGNOSTICA_FK=%d and ',[kPKSERVIZI]);
       FTmplCalend.QyTmplcalend.Parambyname('TIPO').AsInteger := 2;
       if (FTmplCalend.ShowModal=mrOk) and not FTmplCalend.QyTmplcalend.IsEmpty then
       begin
         QyTempTemp.Parambyname('pktmplcalend').AsInteger := FTmplCalend.QyTmplcalendPKTMPLCALEND.AsInteger;
         QyTempTemp.syRefresh;
//         kTMPLCALEND_FK := FTmplCalend.QyTmplcalendPKTMPLCALEND.AsInteger;
         if qyTempTempSETT_GIORNO.AsInteger=1 then
            dxSettimanaTipo.Down := true
         else
            dxGiornoTipo.Down := true;
         aSceltaTipoTemplateExecute(self);
         qTempAgende.syRefresh;
         QyTempEsami.syRefresh;
         qTempAgende.First;
         cxSchedulerDBStorage.FullRefresh;
//         DBPlanner.PosizionaGrid(qTempAgendeORA_INIZIO.AsDateTime);
       end;
    finally
       FTmplCalend.Free;
    end;
end;

procedure TFCreaPrenoPeriodo.aSalvaTemplateUpdate(Sender: TObject);
begin
  aSalvaTemplate.Enabled := qTempAgende.Active and (qTempAgende.HasChanged or QyTempEsami.HasChanged);
end;

procedure TFCreaPrenoPeriodo.qTempAgendeBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (qTempAgendeORA_INIZIO.AsDateTime>qTempAgendeORA_FINE.AsDateTime) then
  begin
     MsgDlg(RS_ctrl_iniziofine, '', ktError, [kbOK]);
     Abort;
  end;
end;

procedure TFCreaPrenoPeriodo.dxPeriodoChange(Sender: TObject);
  function ItemToTime( x: Integer ): Integer;
  begin
     case x of
     0: result := 5;
     1: result := 6;
     2: result := 10;
     3: result := 15;
     4: result := 20;
     5: result := 30;
     else {6:} result := 60;
     end;
  end;
begin
  if ItemToTime(dxPeriodo.ItemIndex)<>Scheduler.ViewDay.TimeScale then
     Scheduler.ViewDay.TimeScale := ItemToTime(dxPeriodo.ItemIndex);

end;

procedure TFCreaPrenoPeriodo.qTempAgendeBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
  Sender.Parambyname('tmplcalend_fk').AsInteger := QyTempTempPKTMPLCALEND.AsInteger;  // kTMPLCALEND_FK;
end;

procedure TFCreaPrenoPeriodo.QyTempEsamiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  Sender.Parambyname('tmplcalend_fk').AsInteger := QyTempTempPKTMPLCALEND.AsInteger;  // kTMPLCALEND_FK;
end;

procedure TFCreaPrenoPeriodo.QyTempEsamiNewRecord(DataSet: TDataSet);
begin
  inherited;
  QyTempEsamiTEMPAGENDE_FK.AsInteger := qTempAgendePKTEMPAGENDE.AsInteger;
end;

procedure TFCreaPrenoPeriodo.aCopiaExecute(Sender: TObject);
var
  i: integer;
  eEvent: TcxSchedulerControlEvent;
begin

  AstaCut.Empty;
  AstaDett.Empty;

  eEvent := Scheduler.SelectedEvents[0];
  if (eEvent = nil) or not TcxSchedulerDBStorageAccess(cxSchedulerDBStorage).MakeFocused(eEvent.Source) then
    Exit;

  AstaCut.Append;
  for i:=0 to qTempAgende.FieldCount-1 do
      if AstaCut.FindField(qTempAgende.Fields[i].FieldName)<>nil then
         AstaCut.FieldbyName(qTempAgende.Fields[i].FieldName).Value := qTempAgende.Fields[i].Value;
  AstaCut.Post;

  QyTempEsami.Locate('tempagende_fk',qTempAgendePKTEMPAGENDE.AsInteger,[]);
  while not QyTempEsami.eof and (QyTempEsamiTEMPAGENDE_FK.AsInteger=qTempAgendePKTEMPAGENDE.AsInteger) do
  begin
     AstaDett.Append;
     for i:=0 to QyTempEsami.FieldCount-1 do
      if AstaDett.FindField(QyTempEsami.Fields[i].FieldName)<>nil then
         AstaDett.FieldbyName(QyTempEsami.Fields[i].FieldName).Value := QyTempEsami.Fields[i].Value;
     AstaDett.Post;
     QyTempEsami.Next;
  end;

end;

{ToDo: Spostamenti da memoria di transito
procedure TFCreaPrenoPeriodo.DBDaySourceInsertItem(Sender: TObject;
  APlannerItem: TPlannerItem);
var
  diff: integer;
begin
  // -- utilizzato per spostamenti da memoria (cut&paste)
  diff := MinutesBetween(qTempAgendeORA_INIZIO.AsDateTime,qTempAgendeORA_FINE.AsDateTime);
  qTempAgende.Edit;
  qTempAgendeORA_INIZIO.AsDateTime := APlannerItem.ItemStartTime;
  qTempAgendeORA_FINE.AsDateTime := IncMinute(qTempAgendeORA_INIZIO.AsDateTime,diff); // APlannerItem.ItemEndTime;
  APlannerItem.DBKey := qTempAgendePKTEMPAGENDE.AsString;
  DBDaySource.OnItemToFields(Self, qTempAgende.Fields, APlannerItem);
end;
}

procedure TFCreaPrenoPeriodo.aIncollaExecute(Sender: TObject);
var
  i: integer;
  diff: integer;
//  eEvent: TcxSchedulerControlEvent;
  eEvent: TcxSchedulerEvent;
//  pkta: integer;
begin
  inherited;

  Scheduler.BeginUpdate;

//  cxSchedulerDBStorage.BeginUpdate;

//  eEvent := TcxSchedulerControlEvent.Create(cxSchedulerDBStorage.CreateEvent);
//  eEvent := TcxSchedulerControlEvent.Create(cxSchedulerDBStorage);
//  eEvent := TcxSchedulerEvent.Create(cxSchedulerDBStorage.CreateEvent);

    eEvent := cxSchedulerDBStorage.CreateEvent;

  try
  try

//  eEvent.BeginEditing;
//  pkta := qTempAgende.SequenceField.GetSequenceValue;
  eEvent.ID := qTempAgende.SequenceField.GetSequenceValue;
  eEvent.Caption := AstaCutDESCPROVENIENZA.AsString;
  eEvent.ResourceID := AstaCutSERVIZI_FK.AsInteger;
  eEvent.Start := Scheduler.SelStart;
  diff := MinutesBetween(qTempAgendeORA_INIZIO.AsDateTime,qTempAgendeORA_FINE.AsDateTime);
  eEvent.Finish := IncMinute(Scheduler.SelStart,diff);
  eEvent.LabelColor := FDMCommon.xcolori[AstaCutSET_COLORI_FK.AsInteger-1];
  eEvent.Message := AstaCutDESCRICH.AsString;
  eEvent.AllDayEvent := False;

  eEvent.SetCustomFieldValueByName('ICONA', AstaCutICONA.AsInteger);
  eEvent.SetCustomFieldValueByName('PKTEMPAGENDE', eEvent.ID);
  eEvent.SetCustomFieldValueByName('USER_ID', gblCodUtente);
  eEvent.SetCustomFieldValueByName('BLOCCATO', 0);
  eEvent.SetCustomFieldValueByName('TMPLCALEND_FK', AstaCutTMPLCALEND_FK.AsInteger);
  eEvent.SetCustomFieldValueByName('SET_COLORI_FK', 2);
  eEvent.SetCustomFieldValueByName('PROVENIENZA', AstaCutPROVENIENZA.AsVariant);
  eEvent.SetCustomFieldValueByName('PRENOCUP', AstaCutPRENOCUP.AsVariant);
  eEvent.SetCustomFieldValueByName('DIPARTIMENTI_FK', AstaCutDIPARTIMENTI_FK.AsVariant);
  eEvent.SetCustomFieldValueByName('SERVRAD_FK', AstaCutSERVRAD_FK.AsVariant);
  eEvent.SetCustomFieldValueByName('REP_RICH_FK', AstaCutREP_RICH_FK.AsVariant);
  eEvent.SetCustomFieldValueByName('SERV_RICH_FK', AstaCutSERV_RICH_FK.AsVariant);
  eEvent.SetCustomFieldValueByName('OSP_RICH', AstaCutOSP_RICH.AsVariant);
  eEvent.SetCustomFieldValueByName('TIPO_ATTIVITA_FK', AstaCutTIPO_ATTIVITA_FK.AsVariant);
//  eEvent.EventType := etNone;

(*
  eEvent.Source.BeginEditing;
  eEvent.Source.Assign(eEvent);
  eEvent.EventType := etNone;
  eEvent.Source.EndEditing;
*)
    eEvent.Post;
//    cxSchedulerDBStorage.PostEvents;

    AstaDett.First;
    while not AstaDett.eof do
    begin
       QyTempEsami.Append;
       QyTempEsamiTEMPAGENDE_FK.AsInteger := qTempAgendePKTEMPAGENDE.AsInteger;
       for i:=0 to AstaDett.FieldCount-1 do
        if (QyTempEsami.FindField(AstaDett.Fields[i].FieldName)<>nil) and (AstaDett.Fields[i].FieldName<>'TEMPAGENDE_FK') then
           QyTempEsami.FieldbyName(QyTempEsami.Fields[i].FieldName).Value := AstaDett.Fields[i].Value;
       QyTempEsami.Post;
       AstaDett.Next;
    end;
//  FDMCommon.RefreshScheduler(cxSchedulerDBStorage,eEvent);

  except
     on E:EAbort do
     begin
        if (qTempAgende.State in dsEditModes) then
            qTempAgende.Cancel;
     end;
     on E:Exception do
     begin
        if (qTempAgende.State in dsEditModes) then
            qTempAgende.Cancel;
        raise;
     end;
  end;
  finally
//    cxSchedulerDBStorage.EndUpdate;
    Scheduler.EndUpdate;
//    Scheduler.FullRefresh;
//    FreeAndNil(eEvent);
  end;

end;

procedure TFCreaPrenoPeriodo.aIncollaUpdate(Sender: TObject);
begin
  inherited;
  aIncolla.Enabled := not AstaCut.IsEmpty;
end;

procedure TFCreaPrenoPeriodo.qTempAgendeAfterPost(DataSet: TDataSet);
begin
  inherited;
//  FModified := true;
end;

procedure TFCreaPrenoPeriodo.qTempAgendeAfterDelete(DataSet: TDataSet);
begin
  inherited;
//  FModified := true;
end;

procedure TFCreaPrenoPeriodo.aSalvaExecute(Sender: TObject);
begin
  inherited;
  aSalvaTemplate.Execute;
  Modalresult := mrOk;
end;

procedure TFCreaPrenoPeriodo.aSalvaUpdate(Sender: TObject);
begin
  inherited;
  aSalva.Enabled := (qTempAgende.HasChanged or QyTempEsami.HasChanged); //FModified;
end;

procedure TFCreaPrenoPeriodo.aAnnullaExecute(Sender: TObject);
begin
  inherited;
  if not (qTempAgende.HasChanged or QyTempEsami.HasChanged) {FModified} or (MsgDlgPos(RS_Gene_Msg_ConfUscita, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes) then
  begin
     if {FModified and} (QyTempTempTIPO.AsInteger=3) then
        QyTempTemp.Delete;
     ModalResult := mrCancel;
  end;

end;

procedure TFCreaPrenoPeriodo.dxCalendarioClick(Sender: TObject);
begin
  inherited;
  cxPageControl.ActivePage := cxCalendario;
end;

procedure TFCreaPrenoPeriodo.dxListaClick(Sender: TObject);
begin
  inherited;
  if cxPageControl.ActivePage<>cxLista then
     cxPageControl.ActivePage:=cxLista;
end;

procedure TFCreaPrenoPeriodo.StampaExecute(Sender: TObject);
begin
  ExStampa(1);
end;

procedure TFCreaPrenoPeriodo.ExStampa(tipo: integer);
var
  AData: TdxPrintDlgData;
begin
  if cxPageControl.ActivePage<>cxLista then
     cxPageControl.ActivePage:=cxLista;
  if tipo=2 then
     cxGrid1Level2.Visible := false;
  if FDMCommon.dxPrintDialog1.Execute then
  begin
     dxPrintTemplate.ReportTitle.Text := kDESCDIAGN; //QyLkServiziDESC_SERVIZIO.AsString;
     if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
        dxComponentPrinter1.Preview(true,dxPrintTemplate)
     else begin
        AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
        dxComponentPrinter1.Print(false,@AData,dxPrintTemplate);
     end;
  end;
  if tipo=2 then
     cxGrid1Level2.Visible := true;

end;

procedure TFCreaPrenoPeriodo.StampaSenzaExecute(Sender: TObject);
begin
  inherited;
  ExStampa(2);
end;

procedure TFCreaPrenoPeriodo.qTempAgendeCalcFields(DataSet: TDataSet);
var
  gg: integer;
  xprov: string;
begin
  inherited;
  gg := DayOfWeek(qTempAgendeORA_INIZIO.AsDateTime);
  qTempAgendeGIORNO.AsString := IntToStr(gg-1)+'. '+LongDayNames[gg];

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

procedure TFCreaPrenoPeriodo.aAggiornaAgendeExecute(Sender: TObject);
begin
  inherited;

	if ModificazioneAgende then
     ModalResult := mrOk;

end;

{ modifica le agende }
function TFCreaPrenoPeriodo.ModificazioneAgende: boolean;
var
  oldcurs: TCursor;
begin

  result := false;
  if kPKSERVIZI=0 then
  begin
     MsgDlg(RS_Cale_Msg_ServAssente, '',
                     ktError, [kbOk], dfFirst);
     exit;
  end;

  if dxAl.EditValue < dxDal.EditValue then
  begin
     MsgDlg(RS_Cale_Msg_EGgg, '',
                     ktError, [kbOk], dfFirst);
     exit;
  end;

  oldcurs := Screen.Cursor;
  Screen.Cursor := crHourGlass;

  try

  aSalvaTemplate.Execute;

  ModificaAgende.Parambyname('pkt').AsInteger := QyTempTempPKTMPLCALEND.AsInteger;  // kTMPLCALEND_FK;
  ModificaAgende.Parambyname('inizio').AsDateTime := dxDal.EditValue;
  ModificaAgende.Parambyname('fine').AsDateTime := dxAl.EditValue;
  ModificaAgende.ExecSQL;
  MsgDlg(RS_Gene_Msg_OTer,'',ktInformation,[kbOk]);  {RS = 'Operazione terminata' }
  result := true;

  finally
//     QyTempEsami.Filtered := true;
     Screen.Cursor := oldcurs;
  end;

end;

procedure TFCreaPrenoPeriodo.QyTempTempNewRecord(DataSet: TDataSet);
begin
  inherited;
  QyTempTempDIAGNOSTICA_FK.AsInteger := kPKSERVIZI;
  QyTempTempTIPO.AsInteger := 3;
  QyTempTempUSER_ID.AsInteger := gblCodUtente;
  QyTempTempREPARTI_FK.AsInteger := gblpkrep;
end;

procedure TFCreaPrenoPeriodo.qLeggiTempBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  Sender.Parambyname('diagnostica_fk').AsInteger := kPKSERVIZI;

end;

procedure TFCreaPrenoPeriodo.aAggiornaAgendeUpdate(Sender: TObject);
begin
  inherited;
  aAggiornaAgende.Enabled := qTempAgende.Active and not qTempAgende.IsEmpty;

end;

procedure TFCreaPrenoPeriodo.aCopiaUpdate(Sender: TObject);
begin
  inherited;
  aCopia.Enabled := (Scheduler.SelectedEventCount=1);  // not qTempAgende.IsEmpty and not qTempAgendePKTEMPAGENDE.IsNull and ;
end;

{ ToDo: no spostamento tra giorni
procedure TFCreaPrenoPeriodo.DBPlannerItemMoving(Sender: TObject;
  Item: TPlannerItem; DeltaBegin, DeltaPos: Integer; var Allow: Boolean);
begin
  inherited;
  Allow := (DeltaPos=0);
end;
}
procedure TFCreaPrenoPeriodo.SchedulerCustomDrawDayHeader(Sender: TObject;
  ACanvas: TcxCanvas; AViewInfo: TcxSchedulerDayHeaderCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
  AViewInfo.DisplayText := ShortDayNames[DayOfWeek(AViewInfo.DateTime)];
end;

procedure TFCreaPrenoPeriodo.BaseFormDestroy(Sender: TObject);
begin
  inherited;
  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5) then
  begin
    rsPropSaver1.SaveValues;
    rsPropSaver1.Storage.Save;
  end;
  cxEventEditorClass := oldcxEventEditorClass;
end;

procedure TFCreaPrenoPeriodo.aCancellaPeriodoUpdate(Sender: TObject);
begin
  inherited;
  aCancellaPeriodo.Enabled := (Scheduler.SelectedEventCount>0);
end;

procedure TFCreaPrenoPeriodo.cxSchedulerDBStorageEventModified(
  Sender: TObject; AEvent: TcxSchedulerEvent; var AHandled: Boolean);
begin
  inherited;
//???  AHandled := True;
end;

procedure TFCreaPrenoPeriodo.cxSchedulerDBStorageEventInserted(
  Sender: TObject; AEvent: TcxSchedulerEvent; var AHandled: Boolean);
begin
  inherited;
//???  TcxSchedulerStorageAccess(Sender).SetEventRecordInfo(AEvent,-1,qTempAgendePKTEMPAGENDE.AsVariant);
//???  AHandled := True;
end;

procedure TFCreaPrenoPeriodo.SchedulerInitEventImages(
  Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent;
  AImages: TcxSchedulerEventImages);
var
  picon: Variant;
begin
  inherited;

  picon := AEvent.GetCustomFieldValueByName('ICONA');
  if not VarIsNull(picon) then
     AImages.Add(picon, False);

end;

procedure TFCreaPrenoPeriodo.qTempAgendeBeforeDelete(DataSet: TDataSet);
begin
  inherited;
{JRT 6615}
  QyTempEsami.Locate('tempagende_fk',qTempAgendePKTEMPAGENDE.AsInteger,[]);
  while not QyTempEsami.eof and (QyTempEsamiTEMPAGENDE_FK.AsInteger=qTempAgendePKTEMPAGENDE.AsInteger) do
  begin
     QyTempEsami.Delete;
  end;
{}
end;

procedure TFCreaPrenoPeriodo.SchedulerBeforeEditing(
  Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent;
  AInplace: Boolean; var Allow: Boolean);
var
  prov: string;
begin
  inherited;

   if VarIsNull(AEvent.ResourceID) then
   begin
     // -- Nuova registrazione
     AEvent.ResourceID := kPKSERVIZI;
     AEvent.Start  := Scheduler.SelStart;
     AEvent.Finish := Scheduler.SelFinish;
     AEvent.SetCustomFieldValueByName('TMPLCALEND_FK',QyTempTempPKTMPLCALEND.AsInteger);
     if dxEsterni.Down then
        prov := 'E'
     else if dxInterni.Down then
        prov := 'I'
     else
        prov := 'T';
     AEvent.SetCustomFieldValueByName('PROVENIENZA',prov);
     FDMCommon.qCaricaProvenienze.Locate('PROVENIENZA',prov,[]);
     AEvent.SetCustomFieldValueByName('ICONA', FDMCommon.qCaricaProvenienzeICONA.AsInteger);
     AEvent.SetCustomFieldValueByName('DESCPROVENIENZA', FDMCommon.qCaricaProvenienzeDESCRIZIONE.AsString);

   end
   else
     TcxSchedulerDBStorageAccess(cxSchedulerDBStorage).MakeFocused(AEvent.Source);

end;

procedure TFCreaPrenoPeriodo.aSalvaConNomeExecute(Sender: TObject);
var
  NewString: string;
  newpk: Integer;
  i: Integer;
begin
  inherited;

  if not syInputQuery(RIS_SalvaConNome, RIS_NomeTemplate, {FDMCommon.cxEditStyleController1,} NewString) then
     Abort;

   if (QyTempTemp.State in dsEditModes) then
      QyTempTemp.Post;
   QyTempTemp.Insert;
   newpk := QyTempTempPKTMPLCALEND.AsInteger;
   QyTempTempDESC_TMPL.AsString := NewString;
   if dxSettimanaTipo.Down then
      QyTempTempSETT_GIORNO.AsInteger := 1
   else
      QyTempTempSETT_GIORNO.AsInteger := 2;
   QyTempTempTIPO.AsInteger := 2;
   QyTempTemp.Post;
   qCopiaAgende.OpenNoFetch;
   qTempAgende.First;
   while not qTempAgende.Eof do
   begin
     qCopiaAgende.Insert;
     for i:=0 to qTempAgende.FieldCount-1 do
          if (qTempAgende.Fields[i].FieldName<>'TMPLCALEND_FK') and
             (qTempAgende.Fields[i].FieldName<>'PKTEMPAGENDE') and
             (qCopiaAgende.FindField(qTempAgende.Fields[i].FieldName)<>nil) then
                 qCopiaAgende.FieldbyName(qTempAgende.Fields[i].FieldName).Value := qTempAgende.Fields[i].Value;
     qCopiaAgendeTMPLCALEND_FK.AsInteger := newpk;
     qCopiaAgende.Post;

     qCopiaEsami.OpenNoFetch;
     QyTempEsami.Locate('tempagende_fk',qTempAgendePKTEMPAGENDE.AsInteger,[]);
     while not QyTempEsami.eof and (QyTempEsamiTEMPAGENDE_FK.AsInteger=qTempAgendePKTEMPAGENDE.AsInteger) do
     begin
       qCopiaEsami.Insert;
       qCopiaEsamiCODICIRAD_FK.AsInteger := QyTempEsamiCODICIRAD_FK.AsInteger;
       qCopiaEsamiTEMPAGENDE_FK.AsInteger := qCopiaAgendePKTEMPAGENDE.AsInteger;
       qCopiaEsami.Post;
       QyTempEsami.Next;
     end;
     qTempAgende.Next;
   end;

  ControlloAgende(qCopiaAgende);

  FDMCommon.AstaClientSocket.SendDataSetTransactions(Name,[{QyTempTemp,}qCopiaAgende,qCopiaEsami]);
  qCopiaAgende.Close;
  qCopiaEsami.Close;
  qTempAgende.syRefresh;
  QyTempEsami.syRefresh;

end;

procedure TFCreaPrenoPeriodo.aSalvaConNomeUpdate(Sender: TObject);
begin
  inherited;
  aSalvaConNome.Enabled := qTempAgende.Active and {not qTempAgende.HasChanged and} not qTempAgende.IsEmpty and (QyTempTempTIPO.AsInteger=2);
end;

procedure TFCreaPrenoPeriodo.QyTempTempAfterPopulate(Sender: TObject);
begin
  inherited;
  Caption := RIS_CaptionTemplate + QyTempTempDESC_TMPL.AsString;
end;

procedure TFCreaPrenoPeriodo.aSalvaNomeExecute(Sender: TObject);
begin
  inherited;
  aSalvaConNome.Execute;
  Modalresult := mrOk;
end;

procedure TFCreaPrenoPeriodo.aSalvaNomeUpdate(Sender: TObject);
begin
  inherited;
  aSalvaNome.Enabled := qTempAgende.Active and not qTempAgende.IsEmpty and (QyTempTempTIPO.AsInteger=2);
end;

procedure TFCreaPrenoPeriodo.QyTempTempAfterPost(DataSet: TDataSet);
begin
  inherited;
  Caption := RIS_CaptionTemplate + QyTempTempDESC_TMPL.AsString;
end;

procedure TFCreaPrenoPeriodo.aStampaCalendarioExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
begin
  if FDMCommon.dxPrintDialog1.Execute then
  begin
     if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
        dxComponentPrinter1.Preview(true,dxPrintScheduler)
     else begin
        AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
        dxComponentPrinter1.Print(false,@AData,dxPrintScheduler);
     end;
  end;
end;

procedure TFCreaPrenoPeriodo.SchedulerIsWorkTime(Sender: TObject;
  AResource: TcxSchedulerStorageResourceItem; const ATime: TDateTime;
  var AIsWork: Boolean);
begin
  inherited;
  AIsWork := True;
end;

procedure TFCreaPrenoPeriodo.aModificaPeriodoUpdate(Sender: TObject);
begin
  inherited;
  aModificaPeriodo.Enabled := (Scheduler.SelectedEventCount=1);
end;

procedure TFCreaPrenoPeriodo.rsXMLData1LoadFromStream(Sender: TObject;
  Stream: TStream; var DoStandard: Boolean);
begin
  inherited;
  FDMCommon.CaricaLayout(Name,Stream);
  DoStandard := false;

end;

procedure TFCreaPrenoPeriodo.rsXMLData1SaveToStream(Sender: TObject;
  Stream: TStream; var DoStandard: Boolean);
begin
  inherited;
  FDMCommon.SalvaPersonalizza(Name, Stream, gblCodUtente);
  DoStandard := false;

end;

end.
