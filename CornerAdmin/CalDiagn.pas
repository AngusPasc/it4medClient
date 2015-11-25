unit CalDiagn;

interface

uses
  BaseGrid, Forms, {}cxSchedulerEventEditor, uVbDiagnList, Types,{}
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxStyles, cxEdit, cxScheduler, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerCustomResourceView,
  cxSchedulerDayView, cxSchedulerDateNavigator, cxSchedulerHolidays,
  cxSchedulerTimeGridView, cxSchedulerUtils, cxSchedulerWeekView,
  cxSchedulerYearView, cxSchedulerGanttView, cxSchedulerRecurrence,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxSchedulerLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPScxCommon,
  cxSchedulerDBStorage, KSEventClient, rsStorage, rsPropSaver, dxBar,
  Classes, ActnList, cxClasses, DB, AstaDrv2, AstaClientDataset, Controls,
  rsXmlData, cxSchedulerRibbonStyleEventEditor, cxSchedulerTreeListBrowser,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPSdxLCLnk, dxPSdxDBOCLnk, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxSchedulerPainter, dxSkinsdxBarPainter,
  dxSkinscxPCPainter, dxSkinsdxRibbonPainter;

type
  TFCalDiagn = class(TFBaseGrid)
    QyLkServizi: TAstaClientDataSet;
    QyLkServiziPKSERVIZI: TIntegerField;
    QyLkServiziDESC_SERVIZIO: TStringField;
    sQyLkServizi: TDataSource;
    dxBarManager1: TdxBarManager;
    sQyAgenda: TDataSource;
    ActionList1: TActionList;
    aBloccaAgenda: TAction;
    aSbloccaAgenda: TAction;
    aCancellaGiornata: TAction;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarPopupItem: TdxBarPopupMenu;
    aCreaAgenda: TAction;
    dxBarButton6: TdxBarButton;
    dxBarPopupGrid: TdxBarPopupMenu;
    QyBloccaPeriodo: TAstaClientDataSet;
    aCancellaAgenda: TAction;
    dxBarButton7: TdxBarButton;
    aModificaAgenda: TAction;
    dxBarButton8: TdxBarButton;
    CreaPeriodo: TAction;
    dxBarButton2: TdxBarButton;
    rsPropSaver1: TrsPropSaver;
    dxBarSubItem3: TdxBarSubItem;
    dxSubDiag: TdxBarSubItem;
    dxPeriodo: TdxBarCombo;
    CancellaGiornataPlanner: TAction;
    dxBarButton9: TdxBarButton;
    QyLkServiziDESC_REPARTO: TStringField;
    QyLkServiziDATA_FINE: TDateTimeField;
    AltreAgende: TAstaClientDataSet;
    AltreAgendeSERVIZI_FK: TIntegerField;
    AltreAgendeORA_INIZIO: TDateTimeField;
    AltreAgendeORA_FINE: TDateTimeField;
    AltreAgendeBLOCCATO: TIntegerField;
    AltreAgendePKAGENDE: TIntegerField;
    AltreAgendeREPARTI_FK: TIntegerField;
    AltreAgendeDESC_REPARTO: TStringField;
    AlertEventList: TKSAstaEventClient;
    sAltreAgende: TDataSource;
    aCancellaDal: TAction;
    qyCancDate: TAstaClientDataSet;
    dxBarButton1: TdxBarButton;
    aBloccaPeriodo: TAction;
    dxBarButton10: TdxBarButton;
    aSbloccaPeriodo: TAction;
    dxBarButton11: TdxBarButton;
    QyLkServiziSLOT_STANDARD: TIntegerField;
    VisualizzaBlocchi: TAction;
    dxBlocchi: TdxBarButton;
    aStoricoAgenda: TAction;
    dxBarButton12: TdxBarButton;
    cxSchedulerDBStorage: TcxSchedulerDBStorage;
    Scheduler: TcxScheduler;
    dxViewSettimana: TdxBarButton;
    dxViewMese: TdxBarButton;
    dxViewAnno: TdxBarButton;
    dxViewGiorno: TdxBarButton;
    aAggiornaVista: TAction;
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
    QyAgendaDESCRICH: TStringField;
    QyAgendaSET_COLORI_FK: TIntegerField;
    QyAgendaSPAZIO: TIntegerField;
    QyAgendaRIMANE: TIntegerField;
    QyAgendaT_DISP: TIntegerField;
    QyAgendaT_ASSEG: TIntegerField;
    QyAgendaPROVENIENZA: TStringField;
    QyAgendaICONA: TIntegerField;
    QyAgendaDESCPROVENIENZA: TStringField;
    AltreAgendePROVENIENZA: TStringField;
    QyLkServiziREP_OWNER: TIntegerField;
    aStampaCalendario: TAction;
    dxBarButton13: TdxBarButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxPrintScheduler: TcxSchedulerReportLink;
    qBlocchi: TAstaClientDataSet;
    qBlocchiPKBLOCCHI: TIntegerField;
    qBlocchiORA_INIZIO: TDateTimeField;
    qBlocchiORA_FINE: TDateTimeField;
    qBlocchiNOTE: TStringField;
    qBlocchiTIPO_BLOCCO_FK: TIntegerField;
    qBlocchiEVENT_TYPE: TIntegerField;
    qBlocchiOPTIONS: TIntegerField;
    qBlocchiDESCBLOCCO: TStringField;
    qBlocchiSERVIZI_FK: TIntegerField;
    qBlocchiDIAGNOSTICA: TStringField;
    qBlocchiCOLORE: TIntegerField;
    qFeste: TAstaClientDataSet;
    qFesteDATA_FESTA: TDateTimeField;
    qFesteDESCRIZIONE: TStringField;
    dxBarManager1Bar1: TdxBar;
    procedure QyLkServiziBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure aBloccaAgendaExecute(Sender: TObject);
    procedure aSbloccaAgendaExecute(Sender: TObject);
    procedure aCancellaGiornataExecute(Sender: TObject);
    procedure aCreaAgendaExecute(Sender: TObject);
    procedure aCancellaAgendaExecute(Sender: TObject);
    procedure aModificaAgendaExecute(Sender: TObject);
    procedure CreaPeriodoExecute(Sender: TObject);
    procedure aBloccaAgendaUpdate(Sender: TObject);
    procedure CancellaGiornataPlannerExecute(Sender: TObject);
    procedure aCreaAgendaUpdate(Sender: TObject);
    procedure QyAgendaBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure AltreAgendeBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure AlertEventListDataSets1AcceptActiveEvent(Sender: ToelItem;
      var op: Char; ParamList: TInternalAstaParamList;
      var Accept: Boolean);
    procedure aCancellaDalExecute(Sender: TObject);
    procedure aBloccaPeriodoExecute(Sender: TObject);
    procedure aSbloccaPeriodoExecute(Sender: TObject);
    procedure VisualizzaBlocchiExecute(Sender: TObject);
    procedure VisualizzaBlocchiUpdate(Sender: TObject);
    procedure CreaPeriodoUpdate(Sender: TObject);
    procedure aStoricoAgendaExecute(Sender: TObject);
    procedure aSbloccaAgendaUpdate(Sender: TObject);
    procedure SchedulerInitEventImages(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent; AImages: TcxSchedulerEventImages);
    procedure aAggiornaVistaExecute(Sender: TObject);
    procedure aCancellaAgendaUpdate(Sender: TObject);
    procedure SchedulerDateNavigatorPeriodChanged(Sender: TObject;
      const AStart, AFinish: TDateTime);
    procedure aModificaAgendaUpdate(Sender: TObject);
    procedure QyAgendaBeforePost(DataSet: TDataSet);
    procedure QyAgendaCalcFields(DataSet: TDataSet);
    procedure dxPeriodoChange(Sender: TObject);
    procedure QyAgendaAfterPost(DataSet: TDataSet);
    procedure SchedulerClick(Sender: TObject);
    procedure SchedulerMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SchedulerBeforeEditing(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent; AInplace: Boolean;
      var Allow: Boolean);
    procedure QyAgendaNewRecord(DataSet: TDataSet);
    procedure SchedulerAfterEditing(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent);
    procedure aStampaCalendarioExecute(Sender: TObject);
    procedure QyAgendaAfterPopulate(Sender: TObject);
    procedure qBlocchiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure SchedulerIsWorkTime(Sender: TObject;
      AResource: TcxSchedulerStorageResourceItem; const ATime: TDateTime;
      var AIsWork: Boolean);
    procedure aBloccaPeriodoUpdate(Sender: TObject);
    procedure aSbloccaPeriodoUpdate(Sender: TObject);
    procedure qFesteBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure SchedulerAfterDragEvent(Sender: TcxCustomScheduler;
      Target: TObject; X, Y: Integer; var Accept: Boolean);
    procedure aStoricoAgendaUpdate(Sender: TObject);
  private
    oldcxEventEditorClass: TcxSchedulerEventEditorClass;
    vbDiagn: TvbDiagnList;
    vSbItem: TList;
    clickPoint: TPoint;
//    FPrecDiag: Integer;
    procedure dxSelezDiagn(Sender: TObject);
    procedure BloccaAgenda(const blocca: boolean);
    function  IsWorkingTime(ATime: TDateTime; ResourceID: integer): Boolean; overload;
    function  IsWorkingTime(ATime: TDateTime): Boolean; overload;
(*
    procedure InserisciNonDB;
    procedure RefreshNonDB(AItem: TPlannerItem);
*)
    procedure BloccaPeriodo(const blocca: boolean);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure DoShow; override;
    procedure ModificaAgenda(aReadOnly: Boolean);
    procedure ApriAgende(xdal,xal: TDateTime);
    procedure SelectEvent(ID: variant; pVisible: Boolean = True);
    function CaricaToolBar: TdxBars; override;
    procedure UpdateReferto(newpk,oldpk: Integer); override;
  end;

var
  FCalDiagn: TFCalDiagn;


implementation

uses
  DMCommon, Variants, cxVariants, Windows, IIConsts, math, ModiPreno, Msgdlgs,
  cxSchedulerDialogs, Sysutils, DateUtils, CreaPrenoPeriodo, syDelQueryForm,
  VediBlocchi, dxPrnDlg, StoricoAgende, AstaDBTypes;

{$R *.DFM}

//type
//  TcxSchedulerControlEventAccess = class(TcxSchedulerControlEvent);


procedure TFCalDiagn.UpdateReferto(newpk,oldpk: Integer);
begin
end;


function TFCalDiagn.CaricaToolBar: TdxBars;
begin
  result := dxBarManager1.Bars;
end;


procedure TFCalDiagn.ApriAgende(xdal,xal: TDateTime);
var
  oldcurs: TCursor;
  Resource: TcxSchedulerStorageResourceItem;
begin

  oldcurs := Screen.Cursor;
  Screen.Cursor := crHourGlass;

  try

	if (dxSubDiag.Tag>0) then
  begin
    Resource := GetResourceByResourceID(Scheduler, dxSubDiag.Tag);
    Scheduler.MakeResourceVisible(Resource);

    if not QyAgenda.Active or (QyAgenda.Parambyname('data_preno').AsDateTime<>xdal) or (QyAgenda.Parambyname('servizi_fk').AsInteger<>dxSubDiag.Tag) then
    begin
       AltreAgende.Parambyname('data_preno').AsDateTime := xdal;
       AltreAgende.Parambyname('data_fine').AsDateTime := xal;
       AltreAgende.syRefresh;
       QyAgenda.Parambyname('data_preno').AsDateTime := xdal;
       QyAgenda.Parambyname('data_fine').AsDateTime := xal;
       QyAgenda.syRefresh;
//       cxSchedulerDBStorage.FullRefresh;
    end;

  end;

  finally
     Screen.Cursor := oldcurs;
  end;

end;


procedure TFCalDiagn.BloccaAgenda(const blocca: boolean);
var
  i: Integer;
begin

  AlertEventList.Active := false;
  Scheduler.BeginUpdate;
//  QyAgenda.TempUM := true;
  try

  for i:=0 to Scheduler.SelectedEventCount-1 do
  begin
     if QyAgenda.Locate('PKAGENDE',Scheduler.SelectedEvents[i].ID,[]) then
     begin
         QyAgenda.Edit;
         if blocca then
         begin
            QyAgendaSET_COLORI_FK.AsInteger := 6;
            QyAgendaBLOCCATO.AsInteger := 1;
         end
         else begin
            QyAgendaSET_COLORI_FK.AsInteger := 2;
            QyAgendaBLOCCATO.AsInteger := 0;
         end;
         QyAgenda.Post;
         QyAgenda.RefreshRecord;
         // -- trucco per fare il refresh sullo Scheduler
         FDMCommon.RefreshScheduler(cxSchedulerDBStorage,Scheduler.SelectedEvents[i]);
     end;
  end;

  finally
    Scheduler.EndUpdate;
    Scheduler.FullRefresh;
//    QyAgenda.TempUM := false;
    AlertEventList.Active := true;
  end;

end;


procedure TFCalDiagn.BloccaPeriodo(const blocca: boolean);
var
  xdal,xal: TDateTime;
begin
  try
  xdal := Scheduler.SelStart;
  xal := Scheduler.SelStart;
  if not syInputPeriodo(RS_Pren_Blocca, xDal, xAl {,FDMCommon.cxEditStyleController1}) then exit;
	if blocca then
  begin
  	QyBloccaPeriodo.Parambyname('blocold').AsInteger := 0;
  	QyBloccaPeriodo.Parambyname('blocnew').AsInteger := 1;
  end
  else
  begin
  	QyBloccaPeriodo.Parambyname('blocold').AsInteger := 1;
  	QyBloccaPeriodo.Parambyname('blocnew').AsInteger := 0;
  end;
  QyBloccaPeriodo.Parambyname('data_ini').AsDateTime := StartOfTheDay(xDal);
  QyBloccaPeriodo.Parambyname('data_fine').AsDateTime := EndOfTheDay(xAl);
  QyBloccaPeriodo.Parambyname('user_id').AsInteger := gblcodutente;
  QyBloccaPeriodo.Parambyname('xserv').AsInteger := dxSubDiag.Tag;
  QyBloccaPeriodo.ExecCommit;
  finally
    QyAgenda.syRefresh;
    cxSchedulerDBStorage.FullRefresh;
  end;
end;

procedure TFCalDiagn.dxSelezDiagn(Sender: TObject);
begin

  if TdxBarButton(Sender).Down then
  begin

    dxSubDiag.Tag := TdxBarButton(Sender).Tag;
	  ApriAgende(Scheduler.DateNavigator.RealFirstDate,Scheduler.DateNavigator.RealLastDate);

  end;

end;

constructor TFCalDiagn.Create(AOwner: TComponent);
var
  I: integer;
  tb: TdxBarButton;
begin

  inherited;

//  FPrecDiag := -1;
  vSbItem := TList.Create;
  // to use the cxEventEditorClass constant, specify the cxSchedulerDialogs unit in the uses clause
  // indicate that the new Event dialog will be invoked at runtime
  oldcxEventEditorClass := cxEventEditorClass;
  cxEventEditorClass := TFModiPreno;
  Scheduler.OptionsBehavior.ModalDialogs := True;

  vbDiagn := TvbDiagnList.Create;
  vbDiagn.ItemLinks := dxSubDiag;
//   QyLkServizi.Parambyname('solo_admin').AsString := format('# (rs.REP_OWNER = %d) and',[gblpkrep]);
  QyLkServizi.syRefresh;

  // -- da DoShow

  rsPropSaver1.Storage.Load;
  rsPropSaver1.LoadValues;
  vbDiagn.Clear;

  if not QyLkServizi.Locate('PKSERVIZI',dxSubDiag.Tag,[]) then
     dxSubDiag.Tag := 0;

  QyLkServizi.First;
  for I := 0 to QyLkServizi.recordcount - 1 do
  begin
    if QyLkServiziREP_OWNER.AsInteger=gblpkrep then
    begin
      tb := TdxBarButton.Create(nil {Self});
      tb.ButtonStyle := bsChecked;
      tb.Caption := QyLkServiziDESC_SERVIZIO.AsString;
      if QyLkServiziDESC_REPARTO.AsString<>'' then
          tb.Caption := tb.Caption + ' (' + QyLkServiziDESC_REPARTO.AsString +')';
      tb.Tag := QyLkServiziPKSERVIZI.AsInteger;
      tb.OnClick := dxSelezDiagn;
      tb.GroupIndex := 1;
      if (not (dxSubDiag.Tag=0) and (dxSubDiag.Tag=tb.Tag)) or
         ((dxSubDiag.Tag=0) and (I=0)) then
      begin
        tb.Down := true;
        if dxSubDiag.Tag=0 then
          dxSubDiag.Tag := QyLkServiziPKSERVIZI.AsInteger;
      end;
      dxSubDiag.ItemLinks.Add.Item := tb;
      vbDiagn.Add( tb );
    end;
    QyLkServizi.Next;
  end;

  if (dxSubDiag.Tag=0) and (vbDiagn.Count>0) then
  begin
     dxSubDiag.Tag := vbDiagn[0].Tag;
     vbDiagn[0].Down := True;
  end;

  Scheduler.DateNavigator.Date := Date();
  aAggiornaVista.Execute;

	ApriAgende(Scheduler.DateNavigator.RealFirstDate,Scheduler.DateNavigator.RealLastDate);
  
end;

procedure TFCalDiagn.QyLkServiziBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
 	Sender.Parambyname('REPARTI_FK').AsInteger := gblpkrep;
//  if (FDMCommon.LeggiPostoLavoroCONDIVIDI_AGENDE.AsInteger=0) then
     Sender.Parambyname('solo_rep').AsString := format('# rs.rep_owner = %d and ',[gblpkrep])
//  else
//     Sender.Parambyname('solo_rep').AsString := '#';

end;

procedure TFCalDiagn.aBloccaAgendaExecute(Sender: TObject);
begin
	BloccaAgenda(true);
end;

procedure TFCalDiagn.aSbloccaAgendaExecute(Sender: TObject);
begin
	BloccaAgenda(false);
end;

procedure TFCalDiagn.aCancellaGiornataExecute(Sender: TObject);
var
  xData: TDateTime;
begin

  xData := Scheduler.SelStart;  // Scheduler.DateNavigator.Date;
  if MsgDlgPos(format(RS_Cale_Msg_CCGi,[DateToStr(xData)]), '',
            ktConfirmation,[kbYes, kbNo], dfSecond) = mrYes then
  begin
     qyCancDate.Parambyname('data_preno').AsDateTime := StartOfTheDay(xData);
     qyCancDate.Parambyname('data_fine').AsDateTime := EndOfTheDay(xData);
  	qyCancDate.Parambyname('servizi_fk').AsInteger := dxSubDiag.Tag;
     qyCancDate.ExecCommit;
     QyAgenda.syRefresh;
     cxSchedulerDBStorage.FullRefresh;
	end;

end;

procedure TFCalDiagn.aCreaAgendaExecute(Sender: TObject);
//var
//  eEvent: TcxSchedulerControlEvent;
begin
  AlertEventList.Active := false;
  QyAgenda.TempUM := true;
  try
     Scheduler.CreateEventUsingDialog();
//     Scheduler.FullRefresh;
  finally
     QyAgenda.TempUM := false;
     AlertEventList.Active := true;
  end;
end;

procedure TFCalDiagn.aCancellaAgendaExecute(Sender: TObject);
begin

  if MsgDlgPos(RS_Gene_Msg_ConfCanc, '',
            ktConfirmation,[kbYes, kbNo]) = mrYes then
  begin
      Scheduler.DeleteSelectedEvents(False);
  end;

end;

procedure TFCalDiagn.aModificaAgendaExecute(Sender: TObject);
begin
   ModificaAgenda(False);
end;

procedure TFCalDiagn.ModificaAgenda(aReadOnly: Boolean);
var
  pk: Variant;
  eEvent: TcxSchedulerControlEvent;
begin
  eEvent := Scheduler.SelectedEvents[0];
  if (eEvent = nil) then
    Exit;
  pk := eEvent.GetCustomFieldValueByName('PKAGENDE');
  AlertEventList.Active := false;
  QyAgenda.TempUM := true;
  eEvent.ReadOnly := aReadOnly;
  try
     Scheduler.EditEventUsingDialog({TcxSchedulerControlEventAccess(}eEvent{)}, aReadOnly, eEvent.EventType = etPattern);
  finally
    eEvent.ReadOnly := false;
    QyAgenda.TempUM := false;
    AlertEventList.Active := true;
  end;
end;


procedure TFCalDiagn.SelectEvent(ID: variant; pVisible: Boolean = True);
var
  Event: TcxSchedulerEvent;
  iEventCount: Integer;
begin
  //get event via ID
  Event := Scheduler.Storage.GetEventByID(ID);

  //position calendar to event date
  if Scheduler.CurrentView is TcxSchedulerDayView then
    Scheduler.GoToDate(Event.Start)
  else
    if Scheduler.CurrentView is TcxSchedulerWeekView then
      Scheduler.GoToDate(Event.Start, vmWeek)
    else
      if Scheduler.CurrentView is TcxSchedulerWeeksView then
        Scheduler.GoToDate(Event.Start, vmMonth);

   //cycle through events on visible days ..
   //    VisibleEventCount is actually count of events that are
   //      scheudled for visible DAYS
   for iEventCount := 0 to Scheduler.VisibleEventCount - 1 do
   begin
     if Scheduler.VisibleEvents[iEventCount].Source = Event then
     begin
        Scheduler.SelectEvent(Scheduler.VisibleEvents[iEventCount]);
        if pVisible then
           Scheduler.MakeEventVisible(Scheduler.VisibleEvents[iEventCount]);
       Break;
     end;
  end;
end;


procedure TFCalDiagn.CreaPeriodoExecute(Sender: TObject);
begin
  AlertEventList.Active := false;
  FCreaPrenoPeriodo := TFCreaPrenoPeriodo.Create(nil);
  try
    FCreaPrenoPeriodo.kPKSERVIZI := dxSubDiag.Tag;
    FCreaPrenoPeriodo.kServiziDATA_FINE := qyLkServiziDATA_FINE.AsDateTime;
    if QyLkServiziDESC_REPARTO.AsString<>'' then
        FCreaPrenoPeriodo.kDESCDIAGN := QyLkServiziDESC_SERVIZIO.AsString + ' (' + QyLkServiziDESC_REPARTO.AsString +')'
    else
        FCreaPrenoPeriodo.kDESCDIAGN := QyLkServiziDESC_SERVIZIO.AsString;
    FCreaPrenoPeriodo.kSlot_Standard := qyLkServiziSLOT_STANDARD.AsInteger;
    if FCreaPrenoPeriodo.ShowModal=mrOk then
    begin
        QyAgenda.syRefresh;
        cxSchedulerDBStorage.FullRefresh;
    end;
  finally
    FCreaPrenoPeriodo.Free;
    AlertEventList.Active := true;
  end;

end;

procedure TFCalDiagn.aBloccaAgendaUpdate(Sender: TObject);
begin
  aBloccaAgenda.Enabled := (dxSubDiag.Tag>0) and (Scheduler.SelectedEventCount=1) and (Scheduler.SelectedEvents[0].GetCustomFieldValueByName('BLOCCATO')=0);

end;

procedure TFCalDiagn.DoShow;
begin

  inherited;

end;


procedure TFCalDiagn.CancellaGiornataPlannerExecute(Sender: TObject);
var
  xData: TDateTime;
begin

  xData := Scheduler.SelStart;  // Scheduler.DateNavigator.Date;
  if MsgDlgPos(format(RS_Cale_Msg_CCGi,[DateToStr(xData)]), '',
            ktConfirmation,[kbYes, kbNo], dfSecond) = mrYes then
  begin
     qyCancDate.Parambyname('data_preno').AsDateTime := StartOfTheDay(xData);
     qyCancDate.Parambyname('data_fine').AsDateTime := EndOfTheDay(xData);
  	qyCancDate.Parambyname('servizi_fk').AsInteger := dxSubDiag.Tag;
     qyCancDate.ExecCommit;
     QyAgenda.syRefresh;
     cxSchedulerDBStorage.FullRefresh;
	end;

end;

procedure TFCalDiagn.aCreaAgendaUpdate(Sender: TObject);
begin
  aCreaAgenda.Enabled := not (dxSubDiag.Tag=0) and IsWorkingTime(Scheduler.SelStart);
end;


procedure TFCalDiagn.QyAgendaBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
   sender.Parambyname('lingua').AsString := gbllingua;
   Sender.Parambyname('servizi_fk').AsInteger := dxSubDiag.Tag;
   Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFCalDiagn.AltreAgendeBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
	Sender.Parambyname('servizi_fk').AsInteger := dxSubDiag.Tag;
end;


procedure TFCalDiagn.AlertEventListDataSets1AcceptActiveEvent(
  Sender: ToelItem; var op: Char; ParamList: TInternalAstaParamList;
  var Accept: Boolean);
begin

  case op of

  'I': Accept := (ParamList.ParamByName('reparti_fk').AsInteger<>gblpkrep);

  'D','U': Accept := (AltreAgende.LocateRecord('pkagende',ParamList.ParamByName('pkvalue').AsInteger,[]));

  end;

end;

procedure TFCalDiagn.aCancellaDalExecute(Sender: TObject);
var
  xdal,xal: TDateTime;
begin
  xdal := Scheduler.SelStart;  // Scheduler.DateNavigator.Date;
  xal := xdal;
  if syInputPeriodo(format(RS_Cale_Msg_CCAg,[DateToStr(xdal)]), xDal, xAl{, FDMCommon.cxEditStyleController1}) then
  begin
     qyCancDate.Parambyname('data_preno').AsDateTime := StartOfTheDay(xdal);
     qyCancDate.Parambyname('data_fine').AsDateTime := EndOfTheDay(xal);
  	qyCancDate.Parambyname('servizi_fk').AsInteger := dxSubDiag.Tag;
     qyCancDate.ExecCommit;
     QyAgenda.syRefresh;
     cxSchedulerDBStorage.FullRefresh;
  end;

end;

procedure TFCalDiagn.aBloccaPeriodoExecute(Sender: TObject);
begin
	BloccaPeriodo(true);
end;

procedure TFCalDiagn.aSbloccaPeriodoExecute(Sender: TObject);
begin
	BloccaPeriodo(false);
end;

procedure TFCalDiagn.VisualizzaBlocchiExecute(Sender: TObject);
begin
  FVediBlocchi := TFVediBlocchi.Create(nil);
  try
     FVediBlocchi.NomeDiagnostica := qyLkServiziDESC_SERVIZIO.AsString;
     FVediBlocchi.Blocchi.Parambyname('servizi_fk').AsInteger := dxSubDiag.Tag;
     FVediBlocchi.Blocchi.Parambyname('dal').AsDateTime := Scheduler.SelStart;
     FVediBlocchi.Blocchi.open;
     FVediBlocchi.ShowModal;
  finally
     FVediBlocchi.Free;
  end;

end;

procedure TFCalDiagn.VisualizzaBlocchiUpdate(Sender: TObject);
begin
  VisualizzaBlocchi.Enabled := dxSubDiag.Tag>0;
end;

destructor TFCalDiagn.Destroy;
//var
//  i: Integer;
begin

  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5) then
  begin
    rsPropSaver1.SaveValues;
    rsPropSaver1.Storage.Save;
  end;
  
// ver. 3 ?! =>
(*
  for i:=0 to vSbItem.Count-1 do
      dxSubDiag.DestroyLink(TdxBarSubItem(vSbItem[i]));
*)
  vSbItem.Clear;
  vSbItem.Free;

  cxEventEditorClass := oldcxEventEditorClass;
  vbDiagn.Free;

  inherited;

end;

procedure TFCalDiagn.CreaPeriodoUpdate(Sender: TObject);
begin
  CreaPeriodo.Enabled := not (dxSubDiag.Tag=0);
end;

procedure TFCalDiagn.aStoricoAgendaExecute(Sender: TObject);
begin

  FStoricoAgende := TFStoricoAgende.Create(nil);
  try
     FStoricoAgende.StoricoAgenda.Parambyname('agende_fk').AsInteger := QyAgendaPKAGENDE.AsInteger;
     FStoricoAgende.StoricoAgenda.open; 
     FStoricoAgende.ShowModal;
  finally
     FStoricoAgende.Free;
  end;

end;

procedure TFCalDiagn.aSbloccaAgendaUpdate(Sender: TObject);
begin
  aSbloccaAgenda.Enabled := (dxSubDiag.Tag>0) and (Scheduler.SelectedEventCount=1) and IsWorkingTime(Scheduler.SelectedEvents[0].Start,Scheduler.SelectedEvents[0].ResourceID) and (Scheduler.SelectedEvents[0].GetCustomFieldValueByName('BLOCCATO')=1);
end;

procedure TFCalDiagn.SchedulerInitEventImages(Sender: TcxCustomScheduler;
  AEvent: TcxSchedulerControlEvent; AImages: TcxSchedulerEventImages);
var
  picon: Integer;
begin
  inherited;

  picon := AEvent.GetCustomFieldValueByName('ICONA');
  if not VarIsNull(picon) then
     AImages.Add(picon, False);

end;

procedure TFCalDiagn.aAggiornaVistaExecute(Sender: TObject);
var
  AnchorDate: TDateTime;
  Resource: TcxSchedulerStorageResourceItem;  
begin
  inherited;

  if not dxViewSettimana.Down then
    AnchorDate := Scheduler.SelectedDays[0]
  else
    AnchorDate := Scheduler.DateNavigator.Date;

  if dxViewGiorno.Down then
  begin
      Scheduler.ViewDay.Active := True;
      Scheduler.SelectDays([AnchorDate], True);
      Resource := GetResourceByResourceID(Scheduler, dxSubDiag.Tag);
      Scheduler.MakeResourceVisible(Resource);
  end
  else if dxViewSettimana.Down then
  begin
      Scheduler.SelectDays([AnchorDate,IncDay(AnchorDate,6)],True);
      Scheduler.SelectWorkDays(AnchorDate);
      Resource := GetResourceByResourceID(Scheduler, dxSubDiag.Tag);
      Scheduler.MakeResourceVisible(Resource);
  end
  else if dxViewMese.Down then
  begin
      Scheduler.SelectDays([AnchorDate], False);
      Scheduler.GoToDate(Scheduler.SelectedDays[0], vmMonth);
  end
  else if dxViewAnno.Down then
  begin
      Scheduler.SelectDays([AnchorDate], False);
      Scheduler.ViewYear.Active := True;
  end;

end;

procedure TFCalDiagn.aCancellaAgendaUpdate(Sender: TObject);
begin
  aBloccaAgenda.Enabled := (dxSubDiag.Tag>0) and (Scheduler.SelectedEventCount>0);
end;

procedure TFCalDiagn.SchedulerDateNavigatorPeriodChanged(Sender: TObject;
  const AStart, AFinish: TDateTime);
begin
  inherited;
  if Assigned(QyAgenda) and QyAgenda.Active then
  begin
     ApriAgende(AStart,AFinish);
  end;
end;

procedure TFCalDiagn.aModificaAgendaUpdate(Sender: TObject);
begin
  inherited;
  aModificaAgenda.Enabled := (dxSubDiag.Tag>0) and (Scheduler.SelectedEventCount=1);
end;

procedure TFCalDiagn.QyAgendaBeforePost(DataSet: TDataSet);
begin
  inherited;
  QyAgendaUSER_ID.AsInteger := gblCodUtente;
  if (QyAgendaORA_INIZIO.AsDateTime>=QyAgendaORA_FINE.AsDateTime) then
  begin
     MsgDlg(RS_ctrl_iniziofine, '', ktWarning, [kbOK]);
     Abort;
  end;

end;

procedure TFCalDiagn.QyAgendaCalcFields(DataSet: TDataSet);
var
  xprov: string;
begin
  inherited;

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

(*
  Hint := // '<P><B>' + TimeToStr(Item.ItemRealStartTime) + ' - ' + TimeToStr(Item.ItemRealEndTime) + '</B><BR>' +
          '<B>' + Item.GetCaptionString + '</B><BR>' +
          TsyPlannerItem(Item).DescProvenienza;
  if gblSuperUser then
  begin
     Hint := Hint + '<B>(pkagende: ' + Item.DBKey + ')</B><BR>';
     QyAgenda.Locate('PKAGENDE',Item.DBKey,[]);
     Hint := Hint + '<B>(tmpagende_fk: ' + QyAgendaTMPAGENDE_FK.AsString + ')</B><BR>';
  end;
*)
end;

procedure TFCalDiagn.dxPeriodoChange(Sender: TObject);
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

procedure TFCalDiagn.QyAgendaAfterPost(DataSet: TDataSet);
begin
  inherited;
//  if Assigned(eLastEvent) then
//     FDMCommon.RefreshScheduler(QyAgenda,cxSchedulerDBStorage,eLastEvent);
end;

procedure TFCalDiagn.SchedulerClick(Sender: TObject);
var
  ht: TcxSchedulerDateNavigatorHitTest;
begin
  if dxViewSettimana.Down then
  begin
    with TcxScheduler(Sender).DateNavigator do
    begin
      ht := HitTest;
      ht.HitPoint := Point(clickPoint.X - Bounds.Left, clickPoint.Y - Bounds.Top);
    end;

    if ht.HitAtTime then  // Day is clicked
    begin
      Scheduler.SelectDays([ht.Time,IncDay(ht.Time,6)],True);
      Scheduler.SelectWorkDays(ht.Time);
    end;
  end;
end;

procedure TFCalDiagn.SchedulerMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if dxViewSettimana.Down then
     clickPoint := Point(X, Y);
end;

procedure TFCalDiagn.SchedulerBeforeEditing(Sender: TcxCustomScheduler;
  AEvent: TcxSchedulerControlEvent; AInplace: Boolean; var Allow: Boolean);
begin
  inherited;
  if VarIsNull(AEvent.ResourceID) then
  begin
    AEvent.ResourceID := dxSubDiag.Tag;
    AEvent.Start  := Scheduler.SelStart;
    AEvent.Finish := Scheduler.SelFinish;
  end;

  if QyAgenda.UpdateMethod<>umManual then
  begin
    QyAgenda.TempUM := true;
  end;

end;

procedure TFCalDiagn.QyAgendaNewRecord(DataSet: TDataSet);
begin
  inherited;
  QyAgendaREPARTI_FK.AsInteger := gblpkrep;
end;

procedure TFCalDiagn.SchedulerAfterEditing(Sender: TcxCustomScheduler;
  AEvent: TcxSchedulerControlEvent);
begin
  inherited;
  if QyAgenda.UpdateMethod=umManual then
  begin
    QyAgenda.TempUM := false;
  end;

end;

procedure TFCalDiagn.aStampaCalendarioExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
  xdal,xal: TDateTime;
begin

  xdal := Scheduler.DateNavigator.Date;
  xal := IncDay(xdal,6);

  if syInputPeriodo(RS_SelezionePeriodo, xDal, xAl{, FDMCommon.cxEditStyleController1}) then
  begin
    if FDMCommon.dxPrintDialog1.Execute then
    begin
       dxPrintScheduler.PrintRange.PrintFrom := xdal;
       dxPrintScheduler.PrintRange.PrintTo   := xal;
       if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
          dxComponentPrinter1.Preview(true,dxPrintScheduler)
       else begin
          AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
          dxComponentPrinter1.Print(false,@AData,dxPrintScheduler);
       end;
    end;
  end;
end;

procedure TFCalDiagn.QyAgendaAfterPopulate(Sender: TObject);
begin
  inherited;
  qBlocchi.syRefresh;
  qFeste.syRefresh;
end;

procedure TFCalDiagn.qBlocchiBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  inherited;
   Sender.Parambyname('data_preno').AsDateTime := QyAgenda.Parambyname('data_preno').AsDateTime;
   Sender.Parambyname('data_fine').AsDateTime := QyAgenda.Parambyname('data_fine').AsDateTime;
   Sender.Parambyname('servizi_fk').AsInteger := dxSubDiag.Tag;
end;

procedure TFCalDiagn.SchedulerIsWorkTime(Sender: TObject;
  AResource: TcxSchedulerStorageResourceItem; const ATime: TDateTime;
  var AIsWork: Boolean);
begin
  inherited;

  if Assigned(AResource) then
     AIsWork := IsWorkingTime(ATime,AResource.ResourceID);
end;

function  TFCalDiagn.IsWorkingTime(ATime: TDateTime; ResourceID: integer): Boolean;
begin
  result := True;
  if not qBlocchi.Active then Exit;
  qBlocchi.Locate('SERVIZI_FK',ResourceID,[]);
  while not qBlocchi.Eof and result and
       (qBlocchiSERVIZI_FK.AsInteger=ResourceID) do
  begin
    result := not ((CompareDateTime(ATime,qBlocchiORA_INIZIO.AsDateTime)>=0) and (CompareDateTime(ATime,qBlocchiORA_FINE.AsDateTime)<0));
    if result then
       qBlocchi.Next;
  end;
  if Result then
  begin
    qFeste.First;
    while not qFeste.Eof and result do
    begin
      result := not IsSameDay(ATime,qFesteDATA_FESTA.AsDateTime);
      if result then
         qFeste.Next;
    end;
  end;
end;

function  TFCalDiagn.IsWorkingTime(ATime: TDateTime): Boolean;
var
  HitTest: TcxSchedulerViewHitTest;
begin
  result := False;
  HitTest := Scheduler.CurrentView.HitTest;
  if HitTest.HitAtResource then
  begin
     result := IsWorkingTime(ATime,HitTest.Resource.ResourceID);
  end;
end;

procedure TFCalDiagn.aBloccaPeriodoUpdate(Sender: TObject);
begin
  aBloccaPeriodo.Enabled := not (dxSubDiag.Tag=0) and IsWorkingTime(Scheduler.SelStart);
end;

procedure TFCalDiagn.aSbloccaPeriodoUpdate(Sender: TObject);
begin
  aSbloccaPeriodo.Enabled := not (dxSubDiag.Tag=0) and IsWorkingTime(Scheduler.SelStart);
end;

procedure TFCalDiagn.qFesteBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('data_preno').AsDateTime := QyAgenda.Parambyname('data_preno').AsDateTime;
  Sender.Parambyname('data_fine').AsDateTime := QyAgenda.Parambyname('data_fine').AsDateTime;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFCalDiagn.SchedulerAfterDragEvent(Sender: TcxCustomScheduler;
  Target: TObject; X, Y: Integer; var Accept: Boolean);
var
  HitTest: TcxSchedulerViewHitTest;
begin
  HitTest := Scheduler.CurrentView.HitTest;
  HitTest.HitPoint := Point(X, Y);
  if HitTest.HitAtResource then
  begin
     Accept := IsWorkingTime(HitTest.Time,HitTest.Resource.ResourceID);
  end;

end;

procedure TFCalDiagn.aStoricoAgendaUpdate(Sender: TObject);
begin
  inherited;
  aStoricoAgenda.Enabled := (dxSubDiag.Tag>0) and (Scheduler.SelectedEventCount=1);
end;

initialization
  Classes.RegisterClass(TFCalDiagn);

end.