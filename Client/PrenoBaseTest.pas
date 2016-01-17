unit Prenobasetest;

interface

uses
  BaseFrame, Graphics, Types, IInterface, dxBar,{}rsStorage, rsPropSaver, UDXPopup, DB, AstaUpdateSQL, Classes,
  ActnList, KSEventClient, Menus, DBPlanner, AstaDrv2, AstaClientDataset,
  Planner, Controls, ExtCtrls, AdvPanel, syDBPlanner, rsXmlData;

{$I syVer.inc}

type
  TPrenoTest = class(TSyFrame)
    AdvPanel: TAdvPanel;
    QyPreno: TAstaClientDataSet;
    QyPrenoNOME_PAZIENTE: TStringField;
    QyPrenoRIC_ANTICIPO: TStringField;
    QyPrenoDURATA: TIntegerField;
    QyPrenoASSISTIBILI_FK: TIntegerField;
    QyPrenoORA_FINE: TDateTimeField;
    sPreno: TDataSource;
    DBDaySource: TDBDaySource;
    DBPlanner: TsyDBPlanner;
    ResToPos: TAstaClientDataSet;
    ResToPosSERVIZI_FK: TIntegerField;
    ResToPosDESC_SERVIZIO: TStringField;
    mnPreno: TPopupMenu;
    miInfoOpera: TMenuItem;
    miModiPreno: TMenuItem;
    miCancPreno: TMenuItem;
    miTaglPreno: TMenuItem;
    N3: TMenuItem;
    mnStoricoPreno: TMenuItem;
    ResToCal: TAstaClientDataSet;
    ResToCalSERVIZI_FK: TIntegerField;
    ResToCalORA_INIZIO: TDateTimeField;
    ResToCalORA_FINE: TDateTimeField;
    AlertEventList: TKSAstaEventClient;
    ActionList1: TActionList;
    aInfoOperatore: TAction;
    aModificaPrenotazione: TAction;
    aCancellaPrenotazione: TAction;
    aStoricoPrenotazione: TAction;
    ResToCalBLOCCATO: TIntegerField;
    updPreno: TAstaUpdateSQL;
    aCut: TAction;
    aPaste: TAction;
    aEndPaste: TAction;
    mnPlanner: TPopupMenu;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    NrPrenoEsami: TAstaClientDataSet;
    QyPrenoUSER_ID: TIntegerField;
    EsamixPreno: TAstaClientDataSet;
    EsamixPrenoCODICE: TStringField;
    EsamixPrenoDESCRIZIONE: TStringField;
    EsamixPrenoDURATA: TIntegerField;
    QyPrenoPKTRIAGE: TIntegerField;
    QyPrenoORA_INIZIO: TDateTimeField;
    QyPrenoSTATOVISITA: TIntegerField;
    EsamixPrenoPKPRESTAZIONI: TFloatField;
    QyPrenoREPARTI_FK: TIntegerField;
    QyPrenoDIAGNOSTICA_FK: TIntegerField;
    EsamixPrenoTRIAGE_FK: TIntegerField;
    RefreshDettagli: TAstaClientDataSet;
    RefreshDettagliPKPRESTAZIONI: TFloatField;
    RefreshDettagliTRIAGE_FK: TIntegerField;
    RefreshDettagliCODICE: TStringField;
    RefreshDettagliDESCRIZIONE: TStringField;
    RefreshDettagliDURATA: TIntegerField;
    dxPopupPreno: TdxPopupMenu;
    dxPopupPlanner: TdxPopupMenu;
    EsamixPrenoPKCODICIRAD: TIntegerField;
    RefreshDettagliPKCODICIRAD: TIntegerField;
    ResToCalT_DISP: TIntegerField;
    ResToCalT_ASSEG: TIntegerField;
    rsPropSaver1: TrsPropSaver;
    ResToCalPKAGENDE: TIntegerField;
    QyPrenoAGENDE_FK: TIntegerField;
    QyPrenoDATA_NASCITA: TDateTimeField;
    QyPrenoTELEFONO: TStringField;
    QyPrenoPROVENIENZA: TStringField;
    QyPrenoTIPO_ATTIVITA_FK: TStringField;
    RegistraEsami: TAstaClientDataSet;
    RegistraEsamiCODICIRAD_FK: TIntegerField;
    RegistraEsamiDURATA: TIntegerField;
    RegistraEsamiPKPRESTAZIONI: TFloatField;
    RegistraEsamiTRIAGE_FK: TIntegerField;
    RegistraEsamiDOSE: TFloatField;
    QyPrenoIMPEGNATIVE_FK: TIntegerField;
    Stampaprenotazione1: TMenuItem;
    StampaPrenotazione: TAction;
    UpdateStato: TAstaClientDataSet;
    Possibili: TAstaClientDataSet;
    PossibiliPKCODICIRAD: TIntegerField;
    RegistraEsamiIMPORTO: TFloatField;
    RegistraEsamiPAGATO: TFloatField;
    RegistraEsamiESENTE: TIntegerField;
    ResToCalREPARTI_FK: TIntegerField;
    ResToCalMAX_TIME_PRENO: TIntegerField;
    ControllaAltrePreno: TAstaClientDataSet;
    ControllaAltrePrenoPKTRIAGE: TIntegerField;
    CancellaImpegnativa: TAstaClientDataSet;
    ControllaAltrePrenoUSER_ID: TIntegerField;
    updControllaAltrePreno: TAstaUpdateSQL;
    aAltriPresidi: TAction;
    Altripresidi1: TMenuItem;
    SpostaEsame: TAstaClientDataSet;
    SpostaEsamePKTRIAGE: TIntegerField;
    SpostaEsameAGENDE_FK: TIntegerField;
    SpostaEsameORA_INIZIO: TDateTimeField;
    SpostaEsameSTATOVISITA: TIntegerField;
    SpostaEsameDURATA: TIntegerField;
    SpostaEsameORA_FINE: TDateTimeField;
    SpostaEsamePROVENIENZA: TStringField;
    SpostaEsameTIPO_ATTIVITA_FK: TStringField;
    SpostaEsameIMPEGNATIVE_FK: TIntegerField;
    SpostaEsameRIC_ANTICIPO: TStringField;
    SpostaEsameASSISTIBILI_FK: TIntegerField;
    SpostaEsameUSER_ID: TIntegerField;
    SpostaEsameREPARTI_FK: TIntegerField;
    SpostaEsameDIAGNOSTICA_FK: TIntegerField;
    aRiapriPreno: TAction;
    Riapriprenotazione1: TMenuItem;
    PossibiliCODICE: TStringField;
    Altripresidi2: TMenuItem;
    aModiOrarioPreno: TAction;
    aModiOrarioCalend: TAction;
    Visualizzaagenda1: TMenuItem;
    Visualizzaagenda2: TMenuItem;
    QyPrenoTIPO_FATTURA: TIntegerField;
    QyPrenoDESCPROVENIENZA: TStringField;
    PossibiliIDENT_FK: TStringField;
    PossibiliSERVIZI_FK: TIntegerField;
    PossibiliREPARTI_FK: TIntegerField;
    PossibiliPROVENIENZA: TStringField;
    ResToCalOSPEDALE: TStringField;
    ResToCalREPARTO: TStringField;
    ResToCalSERVIZIO: TStringField;
    ResToCalTIPOATTIVITA: TStringField;
    ResToCalDESCSERVRAD: TStringField;
    ResToCalORE_PRIMA: TIntegerField;
    QyPrenoNOTE_PRENO: TStringField;
    ResToCalDIPARTIMENTI_FK: TIntegerField;
    ResToCalDIPARTIMENTO: TStringField;
    aAltrePreno: TAction;
    aAltrePreno1: TMenuItem;
    QyPrenoORA_SOMMIN: TDateTimeField;
    RegistraEsamiIDENT_FK: TStringField;
    RegistraEsamiGRUPPIPREST_FK: TIntegerField;
    N1: TMenuItem;
    aCambiaSomministrazione: TAction;
    Cambiaorasomministrazione1: TMenuItem;
    TriagexImpegnative: TAstaClientDataSet;
    TriagexImpegnativePKTRIAGE: TIntegerField;
    TriagexImpegnativeDURATA: TIntegerField;
    TriagexImpegnativeIMPEGNATIVE_FK: TIntegerField;
    RegistraMateriali: TAstaClientDataSet;
    RegistraMaterialiPRESTAZIONI_FK: TIntegerField;
    RegistraMaterialiQUANTITA: TFloatField;
    RegistraMaterialiMAGART_FK: TIntegerField;
    RegistraMaterialiTIPO: TIntegerField;
    ControllaAltrePrenoSTATOVISITA: TIntegerField;
    N2: TMenuItem;
    Duplicaprenotazione1: TMenuItem;
    QyPrenoSAN_IDENT: TIntegerField;
    QyPrenoTIPO_ACCESSO: TStringField;
    updRefreshDettagli: TAstaUpdateSQL;
    QyPrenoSERVIZI_FK: TIntegerField;
    EsamixPrenoNUMERO_PRESTAZIONE: TIntegerField;
    RefreshDettagliNUMERO_PRESTAZIONE: TIntegerField;
    QyPrenoTIPO_PRENO: TIntegerField;
    QyPrenoINCOMPLETA: TIntegerField;
    ResToCalPROVENIENZA: TStringField;
    ResToCalDESCPROVENIENZA: TStringField;
    RefreshDettagliPROGRESSIVO_RIGA: TIntegerField;
    RegistraEsamiPROGRESSIVO_RIGA: TIntegerField;
    RegistraEsamiNUMERO_PRESTAZIONE: TIntegerField;
    QyPrenoRIS_STUDY_EUID: TStringField;
    ResToCalOSP_RICH: TStringField;
    QyPrenoOSP_RICH: TStringField;
    ResToCalTIPO_ATTIVITA_FK: TStringField;
    QyPrenoDIPARTIMENTI_FK: TIntegerField;
    ResToCalREP_RICH_FK: TIntegerField;
    ResToCalSERV_RICH_FK: TIntegerField;
    QyPrenoREPARTO_RICH_FK: TIntegerField;
    QyPrenoSERVIZIO_RICH_FK: TIntegerField;
    NrPrenoEsamiNR_ESAMI: TIntegerField;
    PossibiliDURATA: TIntegerField;
    RegistraSpecxPrest: TAstaClientDataSet;
    RegistraSpecxPrestPKSPECXPREST: TIntegerField;
    RegistraSpecxPrestSPECIFICAZIONI_FK: TIntegerField;
    RegistraSpecxPrestPRESTAZIONI_FK: TIntegerField;
    RegistraSpecxPrestIDSPECIFICAZIONI: TStringField;
    RegistraSpecxPrestDESCRIZIONE: TStringField;
    RegistraSpecxPrestPREZZO: TFloatField;
    RegistraSpecxPrestCOSTO: TFloatField;
    procedure DBDaySourceFieldsToItem(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure DBDaySourceGetResourceName(Sender: TObject;
      ResourceIndex: Integer; var ResourceName: String);
    procedure DBDaySourceItemToFields(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure DBDaySourcePositionToResource(Sender: TObject;
      Field: TField; Position: Integer);
    procedure DBDaySourceResourceToPosition(Sender: TObject;
      Field: TField; var Position: Integer; var Accept: Boolean);
    procedure DBPlannerItemDblClick(Sender: TObject; Item: TPlannerItem);
    procedure DBDaySourceCreateKey(Sender: TObject;
      APlannerItem: TPlannerItem; var Key: String);
    procedure QyPrenoBeforePost(DataSet: TDataSet);
    procedure DBPlannerPlannerGetBrush(Sender: TObject; Pos,
      Index: Integer; ABrush: TBrush);
    procedure QyPrenoBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure ResToPosBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure aModificaPrenotazioneExecute(Sender: TObject);
    procedure QyPrenoNewRecord(DataSet: TDataSet);
    procedure aCancellaPrenotazioneExecute(Sender: TObject);
    procedure aStoricoPrenotazioneExecute(Sender: TObject);
    procedure DBPlannerItemAnchorClick(Sender: TObject; Item: TPlannerItem;
      Anchor: String);
    procedure ResToCalBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure aCutExecute(Sender: TObject);
    procedure aPasteExecute(Sender: TObject);
    procedure aPasteUpdate(Sender: TObject);
    procedure aEndPasteExecute(Sender: TObject);
    procedure aEndPasteUpdate(Sender: TObject);
    procedure IntMinimize(xobj: TObject);
    procedure IntMaximize(xobj: TObject);
    procedure IntResize(xobj: TObject);
    procedure IntClose(xobj: TObject);
    procedure EsamixPrenoBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure DBDaySourceChangeQuery(Sender: TObject);
    procedure DBPlannerItemHint(Sender: TObject; Item: TPlannerItem;
      var Hint: String);
    procedure aModificaPrenotazioneUpdate(Sender: TObject);
    procedure QyPrenoAfterEdit(DataSet: TDataSet);
    procedure AlertEventListDataSets0AfterActiveEvent(Sender: ToelItem;
      op: Char; ParamList: TInternalAstaParamList);
    procedure QyPrenoBeforeDelete(DataSet: TDataSet);
    procedure AlertEventListDataSets0AcceptActiveEvent(Sender: ToelItem;
      var op: Char; ParamList: TInternalAstaParamList;
      var Accept: Boolean);
    procedure DBPlannerDragOverItem(Sender, Source: TObject; X, Y: Integer;
      APlannerItem: TPlannerItem; State: TDragState; var Accept: Boolean);
    procedure AdvPanelDblClick(Sender: TObject);
    procedure DBPlannerItemDelete(Sender: TObject; Item: TPlannerItem);
    procedure DBPlannerItemInsert(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise: Integer);
    procedure DBDaySourceCodeResourceToPosition(Sender: TObject;
      Code: Integer; var Position: Integer);
    procedure DBPlannerDragDropCell(Sender, Source: TObject; X, Y, mX,
      mY: Integer);
    procedure DBPlannerPlannerDblClick(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise, mX, mY: Integer);
    procedure DBPlannerZoomPosChanged(Sender: TObject);
    procedure DBPlannerDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure DBPlannerPlannerGetZone(Sender: TObject; Pos: Integer;
      xRect: TRect; aZone: TList; var xcolor: TColor);
    procedure DBDaySourceResetFilter(Sender: TObject);
    procedure DBPlannerItemSizing(Sender: TObject; Item: TPlannerItem;
      DeltaBegin, DeltaEnd: Integer; var Allow: Boolean);
    procedure DBPlannerItemMoving(Sender: TObject; Item: TPlannerItem;
      DeltaBegin, DeltaPos: Integer; var Allow: Boolean);
    procedure DBPlannerSideBarDblClick(Sender: TObject; X, Y: Integer;
      Anchor: String);
    procedure StampaPrenotazioneExecute(Sender: TObject);
    procedure DBPlannerPlannerKeyLimit(Sender: TObject; Key: Word);
    procedure aCutUpdate(Sender: TObject);
    procedure DBPlannerPlannerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState; Position, FromSel, FromSelPrecis, ToSel,
      ToSelPrecis: Integer);
    procedure aAltriPresidiExecute(Sender: TObject);
    procedure aAltriPresidiUpdate(Sender: TObject);
    procedure aRiapriPrenoExecute(Sender: TObject);
    procedure StampaPrenotazioneUpdate(Sender: TObject);
    procedure aRiapriPrenoUpdate(Sender: TObject);
    procedure DBPlannerDragDropItem(Sender, Source: TObject; X, Y: Integer;
      PlannerItem: TPlannerItem);
    procedure aModiOrarioPrenoExecute(Sender: TObject);
    procedure aModiOrarioCalendExecute(Sender: TObject);
    procedure aModiOrarioCalendUpdate(Sender: TObject);
    procedure DBPlannerPlannerRightClick(Sender: TObject; Position,
      FromSel, FromSelPrecise, ToSel, ToSelPrecise, mX, mY: Integer);
    procedure DBPlannerPlannerHint(Sender: TObject; ItemBegin,
      ItemPos: Integer; var Hint: String);
    procedure DBPlannerDragOverCell(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean; mx, my: Integer);
    procedure aAltrePrenoExecute(Sender: TObject);
    procedure aAltrePrenoUpdate(Sender: TObject);
    procedure aInfoOperatoreExecute(Sender: TObject);
    procedure aInfoOperatoreUpdate(Sender: TObject);
    procedure aCambiaSomministrazioneExecute(Sender: TObject);
    procedure aCambiaSomministrazioneUpdate(Sender: TObject);
    procedure RegistraMaterialiNewRecord(DataSet: TDataSet);
    procedure aCancellaPrenotazioneUpdate(Sender: TObject);
  private
    { Private declarations }
    vResToPos: Array of integer;
    vResToText: Array of string;
    nr_res: integer;
    dxBarPopupPreno: TdxBarPopupMenu;
    dxBarPopupPlanner: TdxBarPopupMenu;
    xRightTime: TDateTime;
    FStartNow: TDateTime;
//    pkrefer: string;
    FxAltriPresidi: integer;
    procedure CopiaInMemoria;
    function PeriodoBloccato: boolean;
    procedure ModificaPreno(APlannerItem: TPlannerItem);
    function InOrario(xServizi: Integer; xGiorno,xOra: TDateTime): boolean; overload;
    function InOrario(xServizi: Integer; xGiorno,xOra: TDateTime; var xInizio: TdateTime): boolean; overload;
    function CalendarioFromOrario(xServizi: integer; xGiorno,xOra: TDateTime): TPosCalendario;
    procedure SourceInsertItem(Sender: TObject; APlannerItem: TPlannerItem);
    procedure SourceInsertAltraPrenoItem(Sender: TObject;  APlannerItem: TPlannerItem);
//    procedure InsertItemAnticipo(Sender: TObject; APlannerItem: TPlannerItem);
    procedure Incolla(xStartTime: TDateTime);
    procedure AltraPrenotazione(xStartTime: TDateTime);
    procedure Sposta(Sender: TPrenoTest; xPosition,xItemBegin: integer; initTime: TDateTime);
    procedure RefreshEsamixPreno(plIt: TPlannerItem);
    function ValidaModificaItem(AItem: TPlannerItem): boolean;
    procedure IncollaEsame(xServizi: integer; xStartTime: TDateTime);
    procedure ModiAgenda(xres: TPosCalendario);
    procedure ModificaImpegnativa(APlannerItem: TPlannerItem);
    procedure ModificaInterno(APlannerItem: TPlannerItem);
  protected
//    procedure ValidateRename(AComponent: TComponent; const CurName, NewName: string);  override;
     procedure SetDay(Value: TDateTime); override;
     procedure SetNumberofDays(Value: integer); override;
     procedure SetZoomPos(Value: integer); override;
  public
    { Public declarations }
//     paz: TPaziente;
     Preno: TAstaDataSet;
     Richiesti: TAstaDataSet;
     Materiali: TAstaDataSet;
     RichSpecxPrest: TAstaDataSet;
     function CanClose: boolean; override;
     procedure Minimizza; override;
     procedure Massimizza; override;
     procedure ApriClient(xBarManager: TdxBarManager; fp: TFrameProperty); override;
     procedure FrameResize(xHeight,xWidth: integer); override;
     function Sincronizza(xData: TDateTime; conRefresh: boolean): integer; override;
     procedure xSetFocus; override;
     procedure RefreshCalendari; override;
     procedure SelectActualCells; override;
     function CercaInCalendari(xdurata: integer; xStartNow: TDateTime = 0): boolean; override;
     procedure SelezionaPreno(const xpktriage: string); override;
//     constructor Create(AOwner: TComponent); override;
     function RegistraCaricamento: integer; override;
     function RegistrazioneInCorso: boolean; override;
     procedure AnnullaPrenotazioni; override;
     procedure ConfermaPrenotazioni(pkimp: integer); override;
     procedure SpostaInMemoria; override;
     procedure SendPortDataToForm(const s: string; lungh: integer); override;
     procedure SetZoomValue(ZoomValue,ZoomPos: integer); override;
     procedure RiPrenota(const xCaption: string; xrep: integer; xdata: TDateTime); override;
  end;

var
  PrenoTest: TPrenoTest;


implementation
uses math, Grids, AstaDBtypes, Windows, Msgdlgs, Variants, Dateutils, sysutils,
     {ppTypes,} CercaBarCode, cxControls, cxGridDBTableView,
     {ListaAnticipi,} StampaAvvisi, DatiAccImp, DMCommon, CutPaste, IIConsts,
     ConfermaCancella, Note, Anagrafica
{$IFNDEF MEDICORNER}
     ,ModiPreno
     ,DatiAccDiagn
     ,OraInfusione
     ,CalDiagn
{$ENDIF}
;

{.$R Titolo.res}
{.$R Prenobasetest.dfm}
{$R *.dfm}

procedure TPrenoTest.SetZoomValue(ZoomValue,ZoomPos: integer);
begin
end;

procedure TPrenoTest.ConfermaPrenotazioni(pkimp: integer);
var
  i: integer;
begin
  UpdateStato.Parambyname('impegnative_fk').AsInteger := pkimp;
  UpdateStato.Parambyname('user_id').AsInteger := gblcodutente;
  UpdateStato.ExecCommit;
  for i:=0 to DBPlanner.Items.Count-1 do
     if (DBPlanner.Items[i].Status=10) and (DBPlanner.Items[i].UserID=gblcodutente) then
     begin
        DBPlanner.Items.DBItem := DBPlanner.Items[i];
        DBDaySource.GotoDBItem;
        if QyPrenoIMPEGNATIVE_FK.AsInteger=pkimp then
        begin
          FDMCommon.CancellaMemoria(QyPrenoPKTRIAGE.AsInteger);
{$IFNDEF MEDICORNER}
          if FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=1 {in [1,3]} then
          begin
             FOraInfusione := TFOraInfusione.Create(nil);
             try
                FOraInfusione.cxSomministra.Properties.MinDate := Date();
                FOraInfusione.cxSomministra.Date := QyPrenoORA_INIZIO.AsDateTime;
                FOraInfusione.AncheEsecuzione := false;
                if FOraInfusione.ShowModal=mrOk then
                begin
                   QyPreno.Edit;
                   QyPrenoORA_SOMMIN.AsDateTime := FOraInfusione.cxSomministra.Date;
                   QyPreno.Post;
                end;
             finally
                FOraInfusione.Free;
             end;
          end;
{$ENDIF}
          QyPreno.RefreshRecord;
          RefreshEsamixPreno(DBPlanner.Items.DBItem);
//          break;
        end;
     end;
end;


procedure TPrenoTest.AnnullaPrenotazioni;
var
  i: integer;
begin
  for i:=0 to DBPlanner.Items.Count-1 do
     if (DBPlanner.Items[i].Status=10) and (DBPlanner.Items[i].UserID=gblcodutente) then
     begin
        DBPlanner.Items.DBItem := DBPlanner.Items[i];
        DBDaySource.DeleteDBItem(DBPlanner);
        DBPlanner.Refresh;
        break;
     end;
end;

procedure TPrenoTest.SelezionaPreno(const xpktriage: string);
var
 plIt: TPlannerItem;
begin
    plIt := DBPlanner.Items.FindKey(xpktriage);
    if Assigned(plIt) then
    begin
      plIt.Selected := true;
      plIt.Focus := true;
//      pkrefer := plIt.DBKey;
      DBPlanner.FocusItem(plIt,true);
    end;
end;

procedure TPrenoTest.xSetFocus;
var
  i: integer;
begin
//  DBPlanner.PlannerGrid.SetFocus;
  DBPlanner.SelectGrid;
  SelectNext(DBPlanner,true,true);

  for i:=0 to DBPlanner.Items.Count-1 do
     if (DBPlanner.Items[i].Status=10) and (DBPlanner.Items[i].UserID=gblcodutente) then
     begin
        DBPlanner.Items.DBItem := DBPlanner.Items[i];
        DBPlanner.Items.DBItem.Selected := true;
//        DBPlanner.Items.DBItem.Focus := true;
        DBPlanner.FocusItem(DBPlanner.Items.DBItem,true);
//        DBPlanner.Refresh;
        break;
     end;

end;

procedure TPrenoTest.SetDay(Value: TDateTime);
begin
  inherited;
  if DBDaysource.Day<>Value then
     DBDaysource.Day := Value;
end;


procedure TPrenoTest.SetZoomPos(Value: integer);
begin
  if (Value+1)<>DBPlanner.ZoomPos then
     DBPlanner.ZoomPos := (Value+1);
end;

procedure TPrenoTest.SetNumberofDays(Value: integer);
begin

   DBDaySource.NumberOfDays := Value;
   DBDaySource.DayIncrement := Value;

end;

function TPrenoTest.InOrario(xServizi: Integer; xGiorno,xOra: TDateTime): boolean;
var
  xInizio: TdateTime;
begin
  result := InOrario(xServizi,xGiorno,xOra,xInizio);
end;

function TPrenoTest.InOrario(xServizi: Integer; xGiorno,xOra: TDateTime; var xInizio: TdateTime): boolean;
begin
  result := false;
  if not ResToCal.Active then exit;
  ResToCal.Locate('SERVIZI_FK',xServizi,[]);
  while not ResToCal.Eof and not result and
       (ResToCalSERVIZI_FK.AsInteger=xServizi) {and (CompareDate(ResToCalo.AsDateTime,xGiorno)=0)} do
  begin
    result := (CompareDateTime(xOra,ResToCalORA_INIZIO.AsDateTime)>=0) and (CompareDateTime(xOra,ResToCalORA_FINE.AsDateTime)<0);
    if result then
       xInizio := max(ResToCalORA_INIZIO.AsDateTime,FStartNow)
    else
       ResToCal.Next;
  end;
  result := result and not PeriodoBloccato; // (ResToCalBLOCCATO.AsInteger<>1);
end;


function TPrenoTest.CalendarioFromOrario(xServizi: integer; xGiorno,xOra: TDateTime): TPosCalendario;
var
  trovato: boolean;
begin
  result.pkagende := -1;
  if not ResToCal.Active then exit;
//  ResToCal.Locate('DATA_PRENO;SERVIZI_FK',VarArrayOf([xGiorno,xServizi]),[]);
  ResToCal.Locate('SERVIZI_FK',xServizi,[]);
  trovato := false;
  while not ResToCal.Eof and not trovato and
       (ResToCalSERVIZI_FK.AsInteger=xServizi) {and (CompareDateTime(ResToCalDATA_PRENO.AsDateTime,xGiorno)=0)} do
  begin
    trovato := (CompareDateTime(xOra,ResToCalORA_INIZIO.AsDateTime)>=0) and (CompareDateTime(xOra,ResToCalORA_FINE.AsDateTime)<0);
    if trovato then
    begin
       result.pkagende := ResToCalPKAGENDE.AsInteger;
       result.reparti_fk := ResToCalREPARTI_FK.AsInteger;
       result.servizi_fk := ResToCalSERVIZI_FK.AsInteger;
       result.ora_inizio := ResToCalORA_INIZIO.AsDateTime;
       result.max_time_preno := ResToCalMAX_TIME_PRENO.AsInteger;
       ResToPos.Locate('SERVIZI_FK',ResToCalSERVIZI_FK.AsInteger,[]);
    end
    else
       ResToCal.Next;
  end;
end;


procedure TPrenoTest.IntMinimize(xobj: TObject);
begin
//  DBPlanner.Height := 0;
  Height := AdvPanel.Caption.Height;
  Minimized := true;
  PostMessage(TWinControl(Parent.Owner).Handle,SY_RESIZEALL,0,0);
end;

procedure TPrenoTest.IntMaximize(xobj: TObject);
begin
//  DBPlanner.Height := AdvPanel.Height - AdvPanel.Caption.Height;
  Minimized := false;
  PostMessage(TWinControl(Parent.Owner).Handle,SY_RESIZEALL,0,0);
end;

procedure TPrenoTest.IntResize(xobj: TObject);
begin
  DBPlanner.Height := AdvPanel.Height - AdvPanel.Caption.Height;
  DBPlanner.Width := AdvPanel.Width;
end;

procedure TPrenoTest.IntClose(xobj: TObject);
begin
   PostMessage(TWinControl(Parent.Owner).Handle,SY_KILLRICH,0,InternalIndex);
end;

procedure TPrenoTest.SpostaInMemoria;
var
  i: integer;
begin
  for i:=0 to DBPlanner.Items.Count-1 do
     if (DBPlanner.Items[i].Status=10) and (DBPlanner.Items[i].UserID=gblcodutente) then
     begin
        if qyPreno.Locate('PKTRIAGE',DBPlanner.Items[i].DBKey,[]) and
           not FDMCommon.AstaCut.Locate('PKTRIAGE',DBPlanner.Items[i].DBKey,[]) then
        begin
//           pkrefer := DBPlanner.Items[i].DBKey;
           CopiaInMemoria;
        end;
        break;
     end;
end;

function TPrenoTest.RegistrazioneInCorso: boolean;
var
  i: integer;
begin
  result := false;
  for i:=0 to DBPlanner.Items.Count-1 do
     if (DBPlanner.Items[i].Status=10) and (DBPlanner.Items[i].UserID=gblcodutente) then
     begin
        result := true;
        break;
     end;
end;

procedure TPrenoTest.FrameResize(xHeight,xWidth: integer);
begin
   Align := alTop;
   Height := xHeight;
//   Width := xWidth;
end;

procedure TPrenoTest.ApriClient(xBarManager: TdxBarManager; fp: TFrameProperty );
var
  newItem : TdxBarItem;
  z,i: integer;
  gruppo: boolean;
  xBar: array[1..2] of TdxBarPopupMenu;
  xMenu: array[1..2] of TPopupMenu;
Begin

//   vReparti := fp.vReparti; // gblpkrep;
//   pkrefer := '';
   FStartNow := Now();
   DBPlanner.FixedSize := (FDMCommon.LeggiPostoLavoroMODIFICA_DURATA.AsInteger=0) or not (gblUserIsAdmin or gblSuperUser);
   DBPlanner.Overlap := FDMCommon.Allow_Overbooking;
   if FDMCommon.Allow_Overbooking then
       DBPlanner.ItemGap := 11;
//   DBPlanner.DefaultItem.CaptionFont.Name := FDMCommon.xDefFontName;
//   DBPlanner.DefaultItem.CaptionFont.Charset := DEFAULT_CHARSET;

   if not fConEsami then
      DBPlanner.AltezzaMinima := FDMCommon.hMinSenzaEsami
   else
      DBPlanner.AltezzaMinima := FDMCommon.hMinConEsami;
//   vTIPO := fp.vTIPO;
   vCodici := fp.vCodici;
   vNrEsami := fp.NrEsami;
   vRighe := fp.vRighe;
   vDurata := fp.vDurata;
   xIntervallo := fp.xIntervallo;
   Preno := fp.Preno;
   Richiesti := fp.Richiesti;
   Materiali := fp.Materiali;
   RichSpecxPrest := fp.RichSpecxPrest;
   FxAltriPresidi := fp.AltriPresidi;

//   DBPlanner.SetZoomValue(min(DBPlanner.Display.Displayunit,fp.vDurata));

   AdvPanel.Caption.Text := '<P align="center">' + fp.Titolo + '</P>';

//   DBDaySource.NumberOfDays := fp.NumberOfDays;

   dxBarPopupPreno := TdxBarPopupMenu.Create(self);
   dxBarPopupPreno.BarManager := xBarManager;
   xBar[1] := dxBarPopupPreno;
   xMenu[1] := mnPreno;
   dxPopupPreno.dxPopupMenu := dxBarPopupPreno;
   dxBarPopupPlanner := TdxBarPopupMenu.Create(self);
   dxBarPopupPlanner.BarManager := xBarManager;
   xBar[2] := dxBarPopupPlanner;
   xMenu[2] := mnPlanner;
   dxPopupPlanner.dxPopupMenu := dxBarPopupPlanner;

   aCut.Visible := fCopiaVisibile;
//   aPaste.Visible := fCopiaVisibile;
   aEndPaste.Visible := fCopiaVisibile;
   aAltrePreno.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);

   gruppo := false;

   for z:= 1 to 2 do
   for i:=0 to xMenu[z].Items.Count-1 do
   begin
      if xMenu[z].Items[i].Caption='-' then
      begin
        gruppo := true;
      end
      else begin
        newItem := TdxBarButton.Create(nil {self});
        with TdxBarButton(newItem) do begin
          ButtonStyle := bsDefault;
          PaintStyle := psCaptionGlyph;  // psCaption;
          Category := 0;
          Tag := i;
          Action := xMenu[z].Items[i].Action;
        end;
        xBar[z].ItemLinks.Add().Item := newItem;
        if gruppo then
           xBar[z].ItemLinks[xBar[z].ItemLinks.Count-1].BeginGroup := true;
        gruppo := false;
     end;
   end;

   Align := alClient;
   DBPlanner.Top := AdvPanel.Caption.Height;
   DBPlanner.Left := 0;
   DBPlanner.Height := AdvPanel.Height - AdvPanel.Caption.Height;
   DBPlanner.Width := AdvPanel.Width;
//   DBPlanner.ZoomPos := fp.ZoomPos;

   if fp.ZoomValue>0 then
   begin
      DBPlanner.SetZoomValue(fp.ZoomValue);
      DBPlanner.Display.Displayunit := fp.ZoomValue;
   end
   else begin
      DBPlanner.SetZoomValue(vDurata);
      DBPlanner.Display.Displayunit := vDurata;
   end;

   Visible := true;
   NumberOfDays := fp.NumberOfDays;

  if DBPlanner.ScrollBarStyle.Style=ssflat then
  begin
    DBPlanner.ScrollBarStyle.Flat := false;
    DBPlanner.ScrollBarStyle.Style := ssflat;
    DBPlanner.ScrollBarStyle.Flat := true;
  end;

  aCambiaSomministrazione.Visible := xCambiaSomministrazione;
{$IFDEF MEDICORNER}
  aModiOrarioPreno.Visible := False;
  aModiOrarioCalend.Visible := False;
{$ENDIF}

End;

{
procedure TPrenoTest.ValidateRename(AComponent: TComponent;
  const CurName, NewName: string);
begin
  if (AComponent <> nil) and (CompareText(CurName, NewName) <> 0) and
    (FindComponent(NewName) <> nil) then
    raise EComponentError.CreateFmt('A component named %s already exists.', [NewName]);
end;
}


procedure TPrenoTest.DBDaySourceFieldsToItem(Sender: TObject;
  Fields: TFields; Item: TPlannerItem);
var
  xstatovisita: integer;
begin

  Item.UserID := Fields.FieldByName('USER_ID').AsInteger;
  Item.Status := Fields.FieldByName('STATOVISITA').AsInteger;
  Item.Provenienza := Fields.FieldByName('PROVENIENZA').AsString;  
  Item.CaptionText := Fields.FieldByName('NOME_PAZIENTE').AsString;

  if (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1) and not Fields.FieldByName('NOTE_PRENO').IsNull and (Fields.FieldByName('NOTE_PRENO').AsString<>'') then
     Item.Text.Text := '<A href="action">Note</A><BR>'
  else
     Item.Text.Text := '';

  Item.Text.Text := Item.Text.Text + '<LI>' + RIS_AccNumber + ': '+Fields.FieldByName('RIS_STUDY_EUID').AsString + '<BR>';
  
  TsyPlannerItem(Item).DescProvenienza := Fields.FieldByName('DESCPROVENIENZA').AsString;
  TsyPlannerItem(Item).RisStudyEuid := Fields.FieldByName('RIS_STUDY_EUID').AsString;  
  if Fields.FieldByName('PROVENIENZA').AsString='P' then
     Item.ImageID := 7
  else if Fields.FieldByName('PROVENIENZA').AsString='I' then
     Item.ImageID := 39
  else if (Fields.FieldByName('TIPO_FATTURA').asinteger=3) then
  begin
     Item.ImageID := 5;
  end
  else begin
     Item.ImageID := -1;
  end;

  if fConEsami then
  begin
    EsamixPreno.CancelRange;
    EsamixPreno.SetRange([Fields.FieldByName('PKTRIAGE').AsInteger],[Fields.FieldByName('PKTRIAGE').AsInteger]);
    if not EsamixPreno.IsEmpty then
    begin
      Item.Text.Text := Item.Text.Text + '<P align="left"><UL>';
      while not EsamixPreno.eof do
      begin
         Item.Text.Text := Item.Text.Text + '<LI>' + {EsamixPrenoCODICE.AsString + ' - ' +} EsamixPrenoDESCRIZIONE.AsString + '<BR>';
         EsamixPreno.Next;
      end;
      Item.Text.Text := Item.Text.Text + '</UL></P>';
    end;
  end;

  xstatovisita := Fields.FieldByName('STATOVISITA').AsInteger;
  if (xstatovisita<>10) and{fCopiaVisibile and} not FDMCommon.AstaCut.IsEmpty and FDMCommon.AstaCut.Locate('PKTRIAGE',Fields.FieldByName('PKTRIAGE').AsInteger,[]) then
     Item.Color := FDMCommon.ColorItem(99)
  else begin
    Item.Color := FDMCommon.ColorItem(xstatovisita,(Fields.FieldByName('INCOMPLETA').AsInteger=1));
  end;
  Item.SelectColor := Item.Color;
end;

procedure TPrenoTest.DBDaySourceGetResourceName(Sender: TObject;
  ResourceIndex: Integer; var ResourceName: String);
begin
  if (ResourceIndex>=1) and (ResourceIndex<=nr_res) then
     ResourceName := vResToText[ResourceIndex-1]
  else
     ResourceName := '';
end;

procedure TPrenoTest.DBDaySourceItemToFields(Sender: TObject;
  Fields: TFields; Item: TPlannerItem);
var
  res: TPosCalendario;
begin
      if QyPreno.State=dsInsert then
      begin

         if DBPlanner.xStartTime=0 then
            QyPrenoORA_INIZIO.AsDateTime := DBPlanner.TrovaInizio(Item)
         else
            QyPrenoORA_INIZIO.AsDateTime := DBPlanner.xStartTime;

         QyPrenoDIAGNOSTICA_FK.AsInteger := vResToPos[DBDaySource.PosToRes(Item.ItemPos)];
         res := CalendarioFromOrario(QyPrenoDIAGNOSTICA_FK.AsInteger,
                                                               DateOf(QyPrenoORA_INIZIO.AsDateTime),
                                                               QyPrenoORA_INIZIO.AsDateTime);

          if (res.max_time_preno>0) {and (res.max_time_preno<>QyPrenoDURATA.AsInteger)} then
          begin
            QyPrenoDURATA.AsInteger := res.max_time_preno;
            QyPrenoORA_FINE.AsDateTime := IncMinute(QyPrenoORA_INIZIO.AsDateTime,res.max_time_preno);
          end
          else begin
//            QyPrenoDURATA.AsInteger := vDurata;
            QyPrenoORA_FINE.AsDateTime := IncMinute(QyPrenoORA_INIZIO.AsDateTime,vDurata);
            QyPrenoDURATA.AsInteger := MinutesBetween(QyPrenoORA_FINE.AsDateTime, QyPrenoORA_INIZIO.AsDateTime); {+1;}
          end;

         Item.ItemStartTime := QyPrenoORA_INIZIO.AsDateTime;
         Item.ItemRealStartTime := QyPrenoORA_INIZIO.AsDateTime;
         Item.ItemEndTime := QyPrenoORA_FINE.AsDateTime;
         Item.ItemRealEndTime := QyPrenoORA_FINE.AsDateTime;
      end
      else begin
         QyPrenoDURATA.AsInteger := MinutesBetween(QyPrenoORA_FINE.AsDateTime, QyPrenoORA_INIZIO.AsDateTime); {+1;}
         QyPrenoDIAGNOSTICA_FK.AsInteger := vResToPos[DBDaySource.PosToRes(Item.ItemPos)];
         res := CalendarioFromOrario(QyPrenoDIAGNOSTICA_FK.AsInteger,
                                                               DateOf(QyPrenoORA_INIZIO.AsDateTime),
                                                               QyPrenoORA_INIZIO.AsDateTime);
      end;

      QyPrenoAGENDE_FK.AsInteger := res.pkagende;
      QyPrenoREPARTI_FK.AsInteger := res.reparti_fk;
//      if not QyPrenoREPARTO_RICH_FK.IsNull then
//         QyPrenoREPARTO_RICH_FK.AsInteger := res.reparti_fk;

end;

procedure TPrenoTest.DBDaySourcePositionToResource(Sender: TObject;
  Field: TField; Position: Integer);
begin

   { -- lasciare vuoto, altrimenti ricalcola la risorsa internamente (sbagliata)... --}

end;

procedure TPrenoTest.DBDaySourceResourceToPosition(Sender: TObject;
  Field: TField; var Position: Integer; var Accept: Boolean);
var
  z: integer;
begin
  Accept := false;
  z:=0;
  Position := 0;
  while (z<nr_res) and not Accept do
  begin
     Accept := (vResToPos[z]=Field.AsInteger);
     if Accept then
        Position := z;
     inc(z);
  end;

end;

procedure TPrenoTest.DBPlannerItemDblClick(Sender: TObject;
  Item: TPlannerItem);
begin
  if ValidaModificaItem(Item) {and qyPreno.Locate(DBDaySource.KeyField,DBPlanner.Items.DBItem.DBKey,[])} then
    ModificaPreno(Item);
end;

function TPrenoTest.Sincronizza(xData: TDateTime; conRefresh: boolean): integer;
var
  z: integer;
  xFine: TDateTime;
begin

  xFine := IncDay(xData,DBDaySource.NumberOfDays-1);
//  if not conRefresh and (DBDaysource.Day = xData) then exit;

//  if not conRefresh then
     DBDaySource.BeginUpdate;

  if not fConEsami then
     DBPlanner.AltezzaMinima := FDMCommon.hMinSenzaEsami
  else
     DBPlanner.AltezzaMinima := FDMCommon.hMinConEsami;

  ResToCal.Parambyname('data_preno').AsDateTime := xData;
  ResToCal.Parambyname('data_fine').AsDateTime :=  xFine;

  if vNrEsami=1 then
  ResToCal.Parambyname('xcodici').AsString := format('# exists( select 1 from PrenoEsami e,CodiciRad cr where e.agende_fk = c.pkagende and e.prenota=1 and e.codicirad_fk=cr.pkcodicirad and cr.codice=''%s'') and',
                                                     [vCodici])
  else
  ResToCal.Parambyname('xcodici').AsString := format('# exists( select e.agende_fk from PrenoEsami e,CodiciRad cr, TABLE( ris.str2tblstr( ''%s'' ) ) ax'+
                                                     ' where e.agende_fk = c.pkagende and e.prenota=1 and e.codicirad_fk=cr.pkcodicirad and cr.codice = ax.codice'+
                                                     ' group by e.agende_fk having count(*)>=%d) and',
                                                     [vCodici,vNrEsami]);
  ResToCal.syRefresh;

  ResToPos.Parambyname('data_preno').AsDateTime := xData;
  ResToPos.Parambyname('data_fine').AsDateTime := xFine;

  if vNrEsami=1 then
  ResToPos.Parambyname('xcodici').AsString := format('# exists( select 1 from PrenoEsami e,CodiciRad cr where e.agende_fk = c.pkagende and e.prenota=1 and e.codicirad_fk=cr.pkcodicirad and cr.codice=''%s'') and',
                                                     [vCodici])
  else
  ResToPos.Parambyname('xcodici').AsString := format('# exists( select e.agende_fk from PrenoEsami e,CodiciRad cr, TABLE( ris.str2tblstr( ''%s'' ) ) ax'+
                                                     ' where e.agende_fk = c.pkagende and e.prenota=1 and e.codicirad_fk=cr.pkcodicirad and cr.codice = ax.codice'+
                                                     ' group by e.agende_fk having count(*)>=%d) and',
                                                     [vCodici,vNrEsami]);

  ResToPos.syRefresh;

  if fConEsami then
  begin
    EsamixPreno.Parambyname('data_preno').AsDateTime := xData;
    EsamixPreno.Parambyname('data_fine').AsDateTime := xFine;

    if vNrEsami=1 then
    EsamixPreno.Parambyname('xcodici').AsString := format('# exists( select 1 from PrenoEsami e,CodiciRad cr where e.agende_fk = c.pkagende and e.prenota=1 and e.codicirad_fk=cr.pkcodicirad and cr.codice=''%s'') and',
                                                       [vCodici])
    else
    EsamixPreno.Parambyname('xcodici').AsString := format('# exists( select e.agende_fk from PrenoEsami e,CodiciRad cr, TABLE( ris.str2tblstr( ''%s'' ) ) ax'+
                                                       ' where e.agende_fk = c.pkagende and e.prenota=1 and e.codicirad_fk=cr.pkcodicirad and cr.codice = ax.codice'+
                                                       ' group by e.agende_fk having count(*)>=%d) and',
                                                       [vCodici,vNrEsami]);

    EsamixPreno.syRefresh;

  end;

  nr_res := max(ResToPos.RecordCount,0);
  DBDaysource.NumberOfResources := nr_res;
  SetLength(vResToPos,nr_res);
  SetLength(vResToText,nr_res);
  for z:=0 to nr_res-1 do
  begin
     vResToPos[z] := ResToPosSERVIZI_FK.AsInteger;
     vResToText[z] := ResToPosDESC_SERVIZIO.AsString;
     ResToPos.Next;
  end;

  QyPreno.Parambyname('data_preno').AsDateTime := xData;
  QyPreno.Parambyname('data_fine').AsDateTime := xFine;

  if vNrEsami=1 then
  QyPreno.Parambyname('xcodici').AsString := format('# exists( select 1 from PrenoEsami e,CodiciRad cr where e.agende_fk = c.pkagende and e.prenota=1 and e.codicirad_fk=cr.pkcodicirad and cr.codice=''%s'') and',
                                                     [vCodici])
  else
  QyPreno.Parambyname('xcodici').AsString := format('# exists( select e.agende_fk from PrenoEsami e,CodiciRad cr, TABLE( ris.str2tblstr( ''%s'' ) ) ax'+
                                                     ' where e.agende_fk = c.pkagende and e.prenota=1 and e.codicirad_fk=cr.pkcodicirad and cr.codice = ax.codice'+
                                                     ' group by e.agende_fk having count(*)>=%d) and',
                                                     [vCodici,vNrEsami]);

  if QyPreno.Active then
     QyPreno.syRefresh
  else begin
     QyPreno.Open;
     rsPropSaver1.Storage.Load;
     rsPropSaver1.LoadValues;
  end;

  z := min(vdurata,DBPlanner.Display.Displayunit);
  QyPreno.DisableControls;
  while not QyPreno.Eof do
  begin
     if QyPrenoDURATA.AsInteger<z then
        z := QyPrenoDURATA.AsInteger;
     QyPreno.Next;
  end;
  QyPreno.EnableControls;
{
  if z<DBPlanner.Display.Displayunit then
     DBPlanner.Display.Displayunit := z;
}
//  if not conRefresh then
     DBDaySource.EndUpdate;

//  DBDaysource.Day := xData;

//  if oggi then
//     DBPlanner.PosizionaGrid(Now);

  result := nr_res;
  
end;


procedure TPrenoTest.ModificaPreno(APlannerItem: TPlannerItem);
var
  xnr,xni,xnt: integer;
begin

  xni := QyPrenoIMPEGNATIVE_FK.AsInteger;
  xnr := QyPrenoPKTRIAGE.AsInteger;
  xnt := QyPrenoSTATOVISITA.AsInteger;

  if not FDMCommon.LockRecord(xni,gblCodUtente,3) then
     exit;

  AlertEventList.Active := false;

  // -- per puntare ResToCal
  InOrario(QyPrenoDIAGNOSTICA_FK.AsInteger,DateOf(QyPrenoORA_INIZIO.AsDateTime),QyPrenoORA_INIZIO.AsDateTime);
  try

  if not FDMCommon.LockRecord(xnr,gblCodUtente,1,xnt) then
     exit;

  if (QyPrenoPROVENIENZA.AsString='E') then
     ModificaImpegnativa(APlannerItem)
  else
     ModificaInterno(APlannerItem);

  finally
     FDMCommon.UnLockRecord(xnr,gblCodUtente,1);
     FDMCommon.UnLockRecord(xni,gblCodUtente,3);
     AlertEventList.Active := true;
  end;

end;


procedure TPrenoTest.ModificaImpegnativa(APlannerItem: TPlannerItem);
var
  res: integer;
begin

  FDatiAccImp := TFDatiAccImp.Create(nil);

  try

       Possibili.Parambyname('agende_fk').AsInteger := QyPrenoAGENDE_FK.ASInteger;
       Possibili.syRefresh;

       FDatiAccImp.StatoLancio := 0;
       FDatiAccImp.OldStatoVisita := QyPrenoSTATOVISITA.AsInteger;
       FDatiAccImp.ProxStatoVisita := QyPrenoSTATOVISITA.AsInteger;
       FDatiAccImp.xPossibili := Possibili;
       FDatiAccImp.Esami := FDMCommon.FiltraEsami(Possibili,gblpkrep);
       FDatiAccImp.xDiag := QyPrenoDIAGNOSTICA_FK.AsInteger;
       resToPos.Locate('SERVIZI_FK',QyPrenoDIAGNOSTICA_FK.AsInteger,[]);
       FDatiAccImp.xDiagDescr := resToPosDESC_SERVIZIO.AsString;
       FDatiAccImp.xOra_Inizio := QyPrenoORA_INIZIO.AsDateTime;
       FDatiAccImp.xAgende := QyPrenoAGENDE_FK.AsInteger;
       FDatiAccImp.xoggi := DateOf(QyPrenoORA_INIZIO.AsDateTime);
//       FDatiAccImp.xReferAcc := self;
       FDatiAccImp.xpktriage := QyPrenoPKTRIAGE.AsInteger;
       FDatiAccImp.Accettazione.Parambyname('pkimpegnative').AsInteger := QyPrenoIMPEGNATIVE_FK.AsInteger;
       FDatiAccImp.Accettazione.open;
       FDatiAccImp.Accettazione.edit;

//       ModificaxImpegnative.Parambyname('impegnative_fk').AsInteger := QyPrenoIMPEGNATIVE_FK.AsInteger;
//       ModificaxImpegnative.syrefresh;

       FDatiAccImp.ResToCal := ResToCal;

       res := FDatiAccImp.ShowModal;
       if (res in [mrOk,mrRetry]) then
       begin

         QyPreno.RefreshRecord;
         RefreshEsamixPreno(APlannerItem);

{JRT 5144}
         if FDMCommon.AstaCut.Locate('PKTRIAGE',QyPrenoPKTRIAGE.AsInteger,[]) then
         begin
           FDMCommon.CancellaMemoria(QyPrenoPKTRIAGE.AsInteger);
           aCut.Execute;
         end;
{}

         if (res=mrRetry) then
         begin
          FStampaAvvisi := TFStampaAvvisi.Create(nil);
          try
            FStampaAvvisi.Conferma.Visible := false;
            FStampaAvvisi.Conferma.Enabled := false;
//            FStampaAvvisi.ReportDataSource.Dataset := QyPreno;
            FStampaAvvisi.xDataset := QyPreno;
            FStampaAvvisi.Caption := 'Stampe prenotazione';
            FStampaAvvisi.CaricaStampe := 10;
            FStampaAvvisi.ShowModal;
          finally
            FStampaAvvisi.Free;
            FStampaAvvisi := nil;
          end;
         end;

       end;

  finally
//     Possibili.Filtered := false;
//     Possibili.Filter := '';
     FDatiAccImp.Free;
     FDatiAccImp := nil;
  end;

end;

procedure TPrenoTest.ModificaInterno(APlannerItem: TPlannerItem);
var
  res: integer;
begin
{$IFNDEF MEDICORNER}
  FDatiAccDiagn := TFDatiAccDiagn.Create(nil);
  try

	   Possibili.Parambyname('agende_fk').AsInteger := qyPrenoAGENDE_FK.AsInteger;
     Possibili.syRefresh;

//     FDatiAccDiagn.ProxStatoVisita := 20;
     FDatiAccDiagn.OldStatoVisita := QyPrenoSTATOVISITA.AsInteger;
     FDatiAccDiagn.ProxStatoVisita := QyPrenoSTATOVISITA.AsInteger;
     FDatiAccDiagn.xPossibili := Possibili;
     FDatiAccDiagn.Esami := FDMCommon.FiltraEsami(Possibili,gblpkrep);
     FDatiAccDiagn.xDiag := QyPrenoDIAGNOSTICA_FK.AsInteger;
     resToPos.Locate('SERVIZI_FK',QyPrenoDIAGNOSTICA_FK.AsInteger,[]);
     FDatiAccDiagn.xDiagDescr := resToPosDESC_SERVIZIO.AsString;
     FDatiAccDiagn.xOra_Inizio := QyPrenoORA_INIZIO.AsDateTime;
     FDatiAccDiagn.xAgende := QyPrenoAGENDE_FK.AsInteger;
     FDatiAccDiagn.xpktriage := QyPrenoPKTRIAGE.AsInteger;

     FDatiAccDiagn.Accettazione.Parambyname('pkimpegnative').AsInteger := QyPrenoIMPEGNATIVE_FK.AsInteger;
     FDatiAccDiagn.Accettazione.open;
     FDatiAccDiagn.Accettazione.Edit;

     if (FDMCommon.LeggiPostoLavoroCHK_SLITTA_REP.AsInteger=0) then
     begin
       if QyPrenoPROVENIENZA.AsString='I' then
       begin
           if not VarIsNull(gblpkrepps) then
           begin
             FDMCommon.LkReparti.Filtered := false;
             FDMCommon.LkReparti.Filter   := format('PKREPARTI <> %d',[gblpkrepps]);
             FDMCommon.LkReparti.Filtered := true;
           end;
       end
       else if QyPrenoPROVENIENZA.AsString='P' then
       begin
           FDMCommon.LkReparti.Filtered := false;
           FDMCommon.LkReparti.Filter   := format('PKREPARTI = %d',[gblpkrepps]);
           FDMCommon.LkReparti.Filtered := true;
       end;
     end;

     FDatiAccDiagn.ResToCal := ResToCal;
     
     res := FDatiAccDiagn.ShowModal;
     if (res in [mrOk,mrRetry]) then
     begin

       QyPreno.RefreshRecord;
       RefreshEsamixPreno(APlannerItem);

{JRT 5144}
         if FDMCommon.AstaCut.Locate('PKTRIAGE',QyPrenoPKTRIAGE.AsInteger,[]) then
         begin
           FDMCommon.CancellaMemoria(QyPrenoPKTRIAGE.AsInteger);
           aCut.Execute;
         end;
{}

       if (res=mrRetry) then
       begin
        FStampaAvvisi := TFStampaAvvisi.Create(nil);
        try
          FStampaAvvisi.Conferma.Visible := false;
          FStampaAvvisi.Conferma.Enabled := false;
//          FStampaAvvisi.ReportDataSource.Dataset := QyPreno;
          FStampaAvvisi.xDataset := QyPreno;
          FStampaAvvisi.Caption := 'Stampe prenotazione';
          FStampaAvvisi.CaricaStampe := 12;
          FStampaAvvisi.ShowModal;
        finally
          FStampaAvvisi.Free;
          FStampaAvvisi := nil;
        end;
       end;

     end;

  finally
//     Possibili.Filtered := false;
//     Possibili.Filter := '';
     FDatiAccDiagn.Free;
     FDatiAccDiagn := nil;
     FDMCommon.LkReparti.Filtered := false;
  end;
{$ENDIF}
end;


procedure TPrenoTest.RefreshEsamixPreno(plIt: TPlannerItem);
begin
    if fConEsami then
    begin
      EsamixPreno.CancelRange;
      EsamixPreno.SetRange([plIt.DBKey],[plIt.DBKey]);
{
      EsamixPreno.Filtered := false;
      EsamixPreno.Filter := format('TRIAGE_FK = %s',[plIt.DBKey]);
      EsamixPreno.Filtered := true;
}
      while not EsamixPreno.IsEmpty do
          EsamixPreno.Delete;

      RefreshDettagli.Parambyname('TRIAGE_FK').AsInteger := StrToIntDef(plIt.DBKey,-1);
      RefreshDettagli.open;
      EsamixPreno.DataTransfer(RefreshDettagli,true,true);
      RefreshDettagli.close;
    end;
    DBDaySource.OnFieldsToItem(self,QyPreno.Fields,plIt);
    DBPlanner.Refresh;
end;

procedure TPrenoTest.DBDaySourceCreateKey(Sender: TObject;
  APlannerItem: TPlannerItem; var Key: String);
begin
  Key := QyPrenoPKTRIAGE.AsString;
end;

procedure TPrenoTest.QyPrenoBeforePost(DataSet: TDataSet);
begin

  if (QyPreno.updatemethod<>umManual) and (QyPreno.UpdateObject<>nil) and
     not InOrario(QyPrenoDIAGNOSTICA_FK.AsInteger,DateOf(QyPrenoORA_INIZIO.AsDateTime),QyPrenoORA_INIZIO.AsDateTime) then
        Abort;

  if QyPreno.UpdateMethod<>umManual then
     QyPrenoUSER_ID.AsInteger := gblCodUtente;
        
end;


procedure TPrenoTest.QyPrenoBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  if fBloccate then
     Sender.Parambyname('bloccate').AsString := '#'
  else
     Sender.Parambyname('bloccate').AsString := '# c.BLOCCATO=0 AND ';

  if fAttivita=chr(1) then
  begin
     Sender.Parambyname('tipo_attivita').AsString := '#';
     Sender.Parambyname('osp_rich').AsString := '#';
  end
  else begin
      Sender.Parambyname('tipo_attivita').AsString := '# (c.tipo_attivita_fk is null or c.tipo_attivita_fk='+#39+fAttivita+#39+') and';
      if fAgendeEsclusive then
         Sender.Parambyname('osp_rich').AsString := '# c.osp_rich='+#39+fOspRich+#39+' and'
      else
         Sender.Parambyname('osp_rich').AsString := '# (c.osp_rich is null or c.osp_rich='+#39+fOspRich+#39+') and';
  end;

  if fAncheInterni then
     Sender.Parambyname('anche_interni').AsString := '# (''E'',''T'',''I'')'
  else
     Sender.Parambyname('anche_interni').AsString := '# (''E'',''T'')';

  if FxAltriPresidi=0 then
     Sender.Parambyname('solo_rep').AsString := format('# r.rep_owner = %d AND ',[gblpkrep])
  else
     Sender.Parambyname('solo_rep').AsString := '#';

  if FDMCommon.IsUserCup then
 	   Sender.Parambyname('PRENOCUP').AsString := '# /*s.prenocup and*/ c.prenocup=1 and'
  else
 	   Sender.Parambyname('PRENOCUP').AsString := '#';

  if (FDMCommon.LeggiPostoLavoroSHOW_REFERTATI.AsInteger=0) then
     Sender.Parambyname('show_eseguiti').AsString := '# in (10,20)'
  else
     Sender.Parambyname('show_eseguiti').AsString := '# between 10 and 198';
     
end;

procedure TPrenoTest.ResToPosBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  if fBloccate then
     Sender.Parambyname('bloccate').AsString := '#'
  else
     Sender.Parambyname('bloccate').AsString := '# c.BLOCCATO=0 AND ';

  if fAttivita=chr(1) then
  begin
     Sender.Parambyname('tipo_attivita').AsString := '#';
     Sender.Parambyname('osp_rich').AsString := '#';
  end
  else begin
      Sender.Parambyname('tipo_attivita').AsString := '# (c.tipo_attivita_fk is null or c.tipo_attivita_fk='+#39+fAttivita+#39+') and';
{
      if (fAttivita='G') or (fAttivita='L') then
         Sender.Parambyname('osp_rich').AsString := '# c.osp_rich='+#39+fOspRich+#39+' and'
      else
         Sender.Parambyname('osp_rich').AsString := '# c.osp_rich is null and';
}
      if fAgendeEsclusive then
         Sender.Parambyname('osp_rich').AsString := '# c.osp_rich='+#39+fOspRich+#39+' and'
      else
         Sender.Parambyname('osp_rich').AsString := '# (c.osp_rich is null or c.osp_rich='+#39+fOspRich+#39+') and';
  end;

{
  if fSoloLibere then
     Sender.Parambyname('liberi','# c.t_disp>c.t_asseg AND ')
  else
     Sender.Parambyname('liberi','#');
}
  if fAncheInterni then
     Sender.Parambyname('anche_interni').AsString := '# (''I'',''T'',''E'')'
  else
     Sender.Parambyname('anche_interni').AsString := '# (''E'',''T'')';

//  Sender.Parambyname('xdurata',vDurata);
  if FxAltriPresidi=0 then
     Sender.Parambyname('solo_rep').AsString := format('# r.rep_owner = %d AND ',[gblpkrep])
  else
     Sender.Parambyname('solo_rep').AsString := '#';

  if FDMCommon.IsUserCup then
 	   Sender.Parambyname('PRENOCUP').AsString := '# /*s.prenocup and*/ c.prenocup=1 and'
  else
 	   Sender.Parambyname('PRENOCUP').AsString := '#';

end;

procedure TPrenoTest.aModificaPrenotazioneExecute(Sender: TObject);
begin
  if qyPreno.Locate(DBDaySource.KeyField,DBPlanner.Items.DBItem.DBKey,[]) then
     ModificaPreno(DBPlanner.Items.DBItem);
end;


procedure TPrenoTest.QyPrenoNewRecord(DataSet: TDataSet);
begin
  if Preno<>nil then
  begin
    QyPrenoPROVENIENZA.AsString := 'E';
    QyPrenoSTATOVISITA.AsInteger := Preno.Fieldbyname('STATOVISITA').AsInteger;
    QyPrenoUSER_ID.AsInteger := gblCodUtente;
//    QyPrenoREPARTI_FK.AsInteger := vReparti;
    QyPrenoASSISTIBILI_FK.AsInteger := Preno.Fieldbyname('PKASSISTIBILI').AsInteger;
    QyPrenoTIPO_ATTIVITA_FK.AsString := Preno.Fieldbyname('TIPO_ATTIVITA').AsString;
    QyPrenoIMPEGNATIVE_FK.AsInteger := Preno.Fieldbyname('IMPEGNATIVE_FK').AsInteger;
    QyPrenoSAN_IDENT.AsInteger := Preno.Fieldbyname('SAN_IDENT').AsInteger;
  end;
end;

procedure TPrenoTest.aCancellaPrenotazioneExecute(Sender: TObject);
var
  pki,i: integer;
  TempUM: TAstaUpdateMethod;
  anchealtre: boolean;
  avanti: boolean;
  rr: integer;
  tecnico: integer;
  servizio: integer;
  motivocanc: integer;
//  notecanc: string;
begin

  AlertEventList.Active := false;
  try
  if qyPreno.Locate(DBDaySource.KeyField,DBPlanner.Items.DBItem.DBKey,[]) then
  begin

    if (FDMCommon.LeggiPostoLavoroCHECK_MOTIVOCANC.AsInteger=1) and (QyPrenoSTATOVISITA.AsInteger>10) then
    begin
      FConfermaCancella := TFConfermaCancella.Create(nil);
      try
        FConfermaCancella.xpk := qyPrenoPKTRIAGE.AsInteger;
        rr := FConfermaCancella.ShowModal;
        tecnico := FConfermaCancella.Userid;
     	servizio := FConfermaCancella.Servid;
        motivocanc := FConfermaCancella.Motivo;
//        notecanc := FConfermaCancella.cxNote.Text;
      finally
        FConfermaCancella.Free;
        FConfermaCancella := nil;
      end;
      avanti := (rr<>mrCancel);
    end
    else begin
      avanti := (MsgDlgPos(RS_Pren_Msg_CCan, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes);
      tecnico := gblCodUtente;
   	 servizio := gblpkserv;
      motivocanc := 0;
//      notecanc := '';
    end;

    if avanti then
    begin

     pki := QyPrenoIMPEGNATIVE_FK.AsInteger;
     anchealtre := false;
     ControllaAltrePreno.Parambyname('impegnative_fk').AsInteger := pki;
     ControllaAltrePreno.Parambyname('pktriage').AsInteger := QyPrenoPKTRIAGE.AsInteger;
     ControllaAltrePreno.syRefresh;
     if not ControllaAltrePreno.IsEmpty and (MsgDlgPos(RS_CancellaAltrePreno, '', ktConfirmation, [kbYes, kbNo], dfSecond) = mrYes) then
     begin
        anchealtre := true;
        ControllaAltrePreno.First;
        for i:=1 to ControllaAltrePreno.recordcount do
        begin
           TempUM := ControllaAltrePreno.UpdateMethod;
           ControllaAltrePreno.UpdateMethod := umManual;
           ControllaAltrePreno.Edit;
           ControllaAltrePrenoUSER_ID.AsInteger := tecnico;
           ControllaAltrePrenoSTATOVISITA.AsInteger := motivocanc;
           ControllaAltrePreno.Post;
           ControllaAltrePreno.UpdateMethod := TempUM;
           ControllaAltrePreno.Delete;
           ControllaAltrePreno.Next;
        end;
     end;

{JRT 5144}
     if FDMCommon.AstaCut.Locate('PKTRIAGE',QyPrenoPKTRIAGE.AsInteger,[]) then
     begin
       FDMCommon.CancellaMemoria(QyPrenoPKTRIAGE.AsInteger);
     end;
{}
     
//     if (oldStato<>1) then
     begin
       TempUM := QyPreno.UpdateMethod;
       QyPreno.UpdateMethod := umManual;
       QyPreno.Edit;
       qyPrenoSTATOVISITA.AsInteger := motivocanc;
       qyPrenoUSER_ID.AsInteger := tecnico;
       QyPrenoSERVIZI_FK.AsInteger := servizio;
{
       if notecanc<>'' then
          QyPrenoNOTE_PRENO.AsString := notecanc
       else
          QyPrenoNOTE_PRENO.Clear;
}
       QyPreno.Post;
       QyPreno.UpdateMethod := TempUM;
     end;
     QyPreno.Delete;

     CancellaImpegnativa.Parambyname('pkimpegnative').AsInteger := pki;
     CancellaImpegnativa.Parambyname('user_id').AsInteger := gblcodutente;
     CancellaImpegnativa.ExecCommit;

     if anchealtre then
        qyPreno.syRefresh;

(*
     if (oldStato<>1) and (MsgDlgPos(RS_RicAnticipi, '', ktConfirmation, [kbYes, kbNo], dfSecond) = mrYes) then
     begin
        FListaAnticipi := TFListaAnticipi.Create(nil);
        try
            FListaAnticipi.QyAnticipi.Parambyname('reparti_fk', gblpkrep);
            FListaAnticipi.QyAnticipi.Parambyname('data_preno', oldData);
            FListaAnticipi.QyAnticipi.Parambyname('diagnostica_fk', vServizi);
            FListaAnticipi.QyAnticipi.Parambyname('durata', oldDurata);
            FListaAnticipi.QyAnticipi.open;
            if FListaAnticipi.QyAnticipi.IsEmpty then
            begin
               ShowMsg(RS_Pren_Msg_NoAn);  { RS = 'Non ci sono richieste di anticipo' }
            end
            else begin
               FListaAnticipi.QyEsami.open;
               if FListaAnticipi.ShowModal=mrOk then
               begin
                  if QyPreno.Locate('PKTRIAGE',FListaAnticipi.QyAnticipiPKTRIAGE.AsInteger,[]) then
                  begin
                    QyPreno.Edit;
                    QyPrenoORA_INIZIO.AsDateTime := oldInizio;
                    QyPrenoAGENDE_FK.AsInteger := oldAgende;
                    QyPrenoORA_FINE.AsDateTime := IncMinute(QyPrenoORA_INIZIO.AsDateTime,QyPrenoDURATA.AsInteger);
                    QyPrenoRIC_ANTICIPO.AsString := 'N';
                    QyPreno.Post;
                  end
                  else begin
                    TempUM := QyPreno.UpdateMethod;
                    QyPreno.UpdateMethod := umManual;
                    DBPlanner.xStartTime := oldInizio;
                    QyPreno.Append;
                    QyPrenoPKTRIAGE.AsInteger := FListaAnticipi.QyAnticipiPKTRIAGE.AsInteger;
                    QyPreno.Post;
                    QyPreno.UpdateMethod := TempUM;
                    QyPreno.Edit;
                    QyPrenoORA_INIZIO.AsDateTime := oldInizio;
                    QyPrenoAGENDE_FK.AsInteger := oldAgende;
                    QyPrenoRIC_ANTICIPO.AsString := 'N';
                    QyPrenoDURATA.AsInteger := FListaAnticipi.QyAnticipiDURATA.AsInteger;
                    QyPrenoORA_FINE.AsDateTime := IncMinute(QyPrenoORA_INIZIO.AsDateTime,QyPrenoDURATA.AsInteger);
                    QyPreno.Post;
                    QyPreno.RefreshRecord;
                    try
                    try
                      DBDaySource.OnInsertItem := InsertItemAnticipo;
                      DBPlanner.InternalCreateItemAtSelection;
                      RefreshEsamixPreno(DBPlanner.Items.DBItem);
                    finally
                      DBDaySource.OnInsertItem := nil;
                    end;
                    except
                       on E:EAbort do
                       begin
                          if (QyPreno.State in dsEditModes) then
                              QyPreno.Cancel;
                          DBDaySource.EndUpdate;
                          DBPlanner.Items.ResetUpdate;
                          DBPlanner.Refresh;
                       end;
                       on E:Exception do
                       begin
                          if (QyPreno.State in dsEditModes) then
                              QyPreno.Cancel;
                          DBDaySource.EndUpdate;
                          DBPlanner.Items.ResetUpdate;
                          DBPlanner.Refresh;
                          raise;
                       end;
                    end;

                  end;
               end;
            end;
        finally
           FListaAnticipi.Free;
        end;
     end;
*)
   end;

  end;
  finally
     DBPlanner.Refresh;
     AlertEventList.Active := true;
  end;

end;

(*
procedure TPrenoTest.InsertItemAnticipo(Sender: TObject;
  APlannerItem: TPlannerItem);
begin
  // -- utilizzato per spostamenti da memoria (cut&paste)
//  QyPreno.Edit;
//  QyPrenoORA_INIZIO.AsDateTime := APlannerItem.ItemStartTime;
//  QyPrenoORA_FINE.AsDateTime := IncMinute(QyPrenoORA_INIZIO.AsDateTime,QyPrenoDURATA.AsInteger); // APlannerItem.ItemEndTime;
  APlannerItem.DBKey := QyPrenoPKTRIAGE.AsString;
//  DBDaySource.OnItemToFields(Self, QyPreno.Fields, APlannerItem);
  APlannerItem.ItemStartTime := QyPrenoORA_INIZIO.AsDateTime;
  APlannerItem.ItemRealStartTime := QyPrenoORA_INIZIO.AsDateTime;
  APlannerItem.ItemEndTime := QyPrenoORA_FINE.AsDateTime;
  APlannerItem.ItemRealEndTime := QyPrenoORA_FINE.AsDateTime;

end;
*)

procedure TPrenoTest.aStoricoPrenotazioneExecute(Sender: TObject);
begin
  if qyPreno.Locate(DBDaySource.KeyField,DBPlanner.Items.DBItem.DBKey,[]) then
  begin
     StoricoOperazione(QyPrenoPKTRIAGE.AsInteger);
  end;
end;

procedure TPrenoTest.DBPlannerItemAnchorClick(Sender: TObject;
  Item: TPlannerItem; Anchor: String);
begin
  aInfoOperatore.Execute;
end;

procedure TPrenoTest.ResToCalBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  if fBloccate then
     Sender.Parambyname('bloccate').AsString := '#'
  else
     Sender.Parambyname('bloccate').AsString := '# c.BLOCCATO=0 AND ';

  if fAttivita=chr(1) then
  begin
     Sender.Parambyname('tipo_attivita').AsString := '#';
     Sender.Parambyname('osp_rich').AsString := '#';
  end
  else begin
      Sender.Parambyname('tipo_attivita').AsString := '# (c.tipo_attivita_fk is null or c.tipo_attivita_fk='+#39+fAttivita+#39+') and';
{
      if (fAttivita='G') or (fAttivita='L') then
         Sender.Parambyname('osp_rich').AsString := '# c.osp_rich='+#39+fOspRich+#39+' and'
      else
         Sender.Parambyname('osp_rich').AsString := '# c.osp_rich is null and';
}
      if fAgendeEsclusive then
         Sender.Parambyname('osp_rich').AsString := '# c.osp_rich='+#39+fOspRich+#39+' and'
      else
         Sender.Parambyname('osp_rich').AsString := '# (c.osp_rich is null or c.osp_rich='+#39+fOspRich+#39+') and';
  end;

{
  if fSoloLibere then
     Sender.Parambyname('liberi','# c.t_disp>c.t_asseg AND ')
  else
     Sender.Parambyname('liberi','#');
}
  if fAncheInterni then
     Sender.Parambyname('anche_interni').AsString := '# (''I'',''T'',''E'')'
  else
     Sender.Parambyname('anche_interni').AsString := '# (''E'',''T'')';

//  Sender.Parambyname('xdurata',vDurata);
  if FxAltriPresidi=0 then
     Sender.Parambyname('solo_rep').AsString := format('# r.rep_owner = %d AND ',[gblpkrep])
  else
     Sender.Parambyname('solo_rep').AsString := '#';

  if FDMCommon.IsUserCup then
 	   Sender.Parambyname('PRENOCUP').AsString := '# /*s.prenocup and*/ c.prenocup=1 and'
  else
 	   Sender.Parambyname('PRENOCUP').AsString := '#';

end;

procedure TPrenoTest.Sposta(Sender: TPrenoTest; xPosition,xItemBegin: integer; initTime: TDateTime);
//var
//  xcolor: TColor;

      function CeEsame(xcal: integer): boolean;
      begin
        result := true;
        if not Sender.fConEsami then
        begin
          RefreshDettagli.Parambyname('TRIAGE_FK').AsInteger := Sender.QyPrenoPKTRIAGE.AsInteger;
          RefreshDettagli.open;
          Sender.EsamixPreno.OpenNoFetch;
          Sender.EsamixPreno.DataTransfer(RefreshDettagli,true,true);
          RefreshDettagli.close;
        end
        else begin
          Sender.EsamixPreno.CancelRange;
          Sender.EsamixPreno.SetRange([Sender.QyPrenoPKTRIAGE.AsInteger],[Sender.QyPrenoPKTRIAGE.AsInteger]);
{
          Sender.EsamixPreno.Filtered := false;
          Sender.EsamixPreno.Filter := format('TRIAGE_FK = %d',[Sender.QyPrenoPKTRIAGE.AsInteger]);
          Sender.EsamixPreno.Filtered := true;
}
        end;
        Sender.EsamixPreno.First;
        while result and not Sender.EsamixPreno.eof do
        begin
          NrPrenoEsami.Parambyname('agende_fk').AsInteger := xcal;
          NrPrenoEsami.Parambyname('codicirad_fk').AsInteger := Sender.EsamixPrenoPKCODICIRAD.AsInteger;
          NrPrenoEsami.open;
          result := not (NrPrenoEsami.IsEmpty or (NrPrenoEsamiNR_ESAMI.AsInteger=0));
          if not result then
          begin
             MsgDlg(
             format(RS_NonEsameInOrario,[Sender.EsamixPrenoCODICE.AsString,Sender.EsamixPrenoDESCRIZIONE.AsString]),
             '', ktWarning, [kbOK]);
          end;
          NrPrenoEsami.close;
          Sender.EsamixPreno.Next;
        end;
        if not Sender.fConEsami then
           Sender.EsamixPreno.close;

        result := result and FDMCommon.ControllaTipoAgenda(ResToCal,QyPreno);

   end;

begin

  if CeEsame(ResToCalPKAGENDE.AsInteger) then
  begin
     Sender.DBDaySource.BeginUpdate;
     try
     try
     Sender.QyPreno.Edit;
     Sender.QyPrenoREPARTI_FK.AsInteger := ResToCalREPARTI_FK.AsInteger;
//     if not Sender.QyPrenoREPARTO_RICH_FK.IsNull then
//        Sender.QyPrenoREPARTO_RICH_FK.AsInteger := ResToCalREPARTI_FK.AsInteger;
     Sender.QyPrenoDIAGNOSTICA_FK.AsInteger := ResToCalSERVIZI_FK.AsInteger;
     Sender.QyPrenoAGENDE_FK.AsInteger := ResToCalPKAGENDE.AsInteger;
     Sender.QyPrenoORA_INIZIO.AsDateTime := initTime;   // DBPlanner.CellToTime(xPosition,xItemBegin);
     Sender.QyPrenoORA_FINE.AsDateTime := IncMinute(Sender.QyPrenoORA_INIZIO.AsDateTime, Sender.QyPrenoDURATA.AsInteger);
     Sender.QyPreno.Post;
     Sender.QyPreno.RefreshRecord;
     except
        Sender.QyPreno.Cancel;
        Sincronizza(DBDaySource.Day,true);
        raise;
     end
     finally
       Sender.DBDaySource.EndUpdate;
       if Sender.DBPlanner<>DBPlanner then
       begin
          Sender.Sincronizza(Sender.DBDaySource.Day,true);
          Sincronizza(DBDaySource.Day,true);
       end
       else
          DBPlanner.Refresh;
     end;
  end;

end;

procedure TPrenoTest.aCutExecute(Sender: TObject);
begin
  CopiaInMemoria;
end;

procedure TPrenoTest.CopiaInMemoria;
var
  i: integer;
begin

  if FDMCommon.AstaCut.Locate('PKTRIAGE',QyPrenoPKTRIAGE.AsInteger,[]) then
  begin
     FDMCommon.CancellaMemoria(QyPrenoPKTRIAGE.AsInteger);
     DBPlanner.Refresh;
     exit;
  end
  else
     FDMCommon.AstaCut.Append;

//  pkrefer := QyPrenoPKTRIAGE.AsString;

  FDMCommon.AstaCut.Append;
  for i:=0 to QyPreno.FieldCount-1 do
      if FDMCommon.AstaCut.FindField(QyPreno.Fields[i].FieldName)<>nil then
         FDMCommon.AstaCut.FieldbyName(QyPreno.Fields[i].FieldName).Value := QyPreno.Fields[i].Value;
  FDMCommon.AstaCut.Post;
  if fConEsami then
  begin
    EsamixPreno.CancelRange;
    EsamixPreno.SetRange([QyPrenoPKTRIAGE.AsInteger],[QyPrenoPKTRIAGE.AsInteger]);
{
    EsamixPreno.Filtered := false;
    EsamixPreno.Filter := format('TRIAGE_FK = %d',[QyPrenoPKTRIAGE.AsInteger]);
    EsamixPreno.Filtered := true;
}
    while not EsamixPreno.eof do
    begin
       FDMCommon.AstaDett.Append;
       for i:=0 to EsamixPreno.FieldCount-1 do
        if FDMCommon.AstaDett.FindField(EsamixPreno.Fields[i].FieldName)<>nil then
           FDMCommon.AstaDett.FieldbyName(EsamixPreno.Fields[i].FieldName).Value := EsamixPreno.Fields[i].Value;
       FDMCommon.AstaDett.Post;
       EsamixPreno.Next;
    end;
  end
  else begin
        RefreshDettagli.Parambyname('TRIAGE_FK').AsInteger := QyPrenoPKTRIAGE.AsInteger;
        RefreshDettagli.open;
        while not RefreshDettagli.eof do
        begin
           FDMCommon.AstaDett.Append;
           for i:=0 to RefreshDettagli.FieldCount-1 do
            if FDMCommon.AstaDett.FindField(RefreshDettagli.Fields[i].FieldName)<>nil then
               FDMCommon.AstaDett.FieldbyName(RefreshDettagli.Fields[i].FieldName).Value := RefreshDettagli.Fields[i].Value;
           FDMCommon.AstaDett.Post;
           RefreshDettagli.Next;
        end;
        RefreshDettagli.close;
  end;

  DBPlanner.Refresh;

end;

procedure TPrenoTest.SourceInsertItem(Sender: TObject;
  APlannerItem: TPlannerItem);
begin
  // -- utilizzato per spostamenti da memoria (cut&paste)
  QyPreno.Edit;
  QyPrenoORA_INIZIO.AsDateTime := DBPlanner.xStartTime; // APlannerItem.ItemStartTime;
{$IFNDEF MEDICORNER}
  if FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=1 {in [1,3]} then
  begin
     FOraInfusione := TFOraInfusione.Create(nil);
     try
        FOraInfusione.cxSomministra.Properties.MinDate := Date();
        FOraInfusione.cxSomministra.Date := QyPrenoORA_INIZIO.AsDateTime;
        FOraInfusione.AncheEsecuzione := false;
        if FOraInfusione.ShowModal=mrOk then
        begin
           QyPrenoORA_SOMMIN.AsDateTime := FOraInfusione.cxSomministra.Date;
        end;
     finally
        FOraInfusione.Free;
     end;
  end;
{$ENDIF}
  QyPrenoORA_FINE.AsDateTime := IncMinute(QyPrenoORA_INIZIO.AsDateTime,QyPrenoDURATA.AsInteger); // APlannerItem.ItemEndTime;
  APlannerItem.DBKey := QyPrenoPKTRIAGE.AsString;
  DBDaySource.OnItemToFields(Self, QyPreno.Fields, APlannerItem);
end;

procedure TPrenoTest.aPasteExecute(Sender: TObject);
var
  xServizi: integer;
  xStartTime,xTimeCell,iper: TDateTime;

  procedure CalcolaInizio(xMouseTime: TDateTime);
  begin
    xTimeCell := DBPlanner.CellToTime(DBPlanner.SelPosition,DBPlanner.SelItemBegin);
    xServizi := -1;
    if not ResToPos.IsEmpty then
    begin
       xServizi := vResToPos[DBDaySource.PosToRes(DBPlanner.SelPosition)];
       InOrario(xServizi,Trunc(xMouseTime),xMouseTime,iper);
       if CompareDateTime(iper,xTimeCell)=GreaterThanValue then
          xTimeCell := iper;
    end;
  end;
begin
  if fCopiaVisibile and (FDMCommon.AstaCut.Recordcount>1) then
     aEndPaste.Execute
  else begin
     InDragDrop := true;
     try
       if xRightTime>0 then
          xStartTime := xRightTime
       else
          xStartTime := DBPlanner.CellToTime(DBPlanner.SelPosition,DBPlanner.SelItemBegin);
       CalcolaInizio(xStartTime);
       Incolla(xTimeCell);
     finally
       InDragDrop := false;
     end;
  end;
end;


procedure TPrenoTest.Incolla(xStartTime: TDateTime);
var
  i: integer;
  avanti: boolean;
  TempUM: TAstaUpdateMethod;
  AItem: TPlannerItem;
begin
    AlertEventList.Active := false;

    DBPlanner.xStartTime := xStartTime;

    DBDaySource.OnInsertItem := SourceInsertItem;
    try
    if not QyPreno.Locate('PKTRIAGE',FDMCommon.AstaCut.Fieldbyname('PKTRIAGE').AsInteger,[]) then
    begin
//        DBPlanner.xStartTime := DBPlanner.Items.TrovaTempoMax(DBPlanner.CellToTime(DBPlanner.SelPosition,DBPlanner.SelItemBegin), DBPlanner.SelPosition,DBPlanner.SelItemBegin,FDMCommon.AstaCutDURATA.AsInteger);
        TempUM := QyPreno.UpdateMethod;
        QyPreno.UpdateMethod := umManual;
        QyPreno.Append;
        for i:=0 to FDMCommon.AstaCut.FieldCount-1 do
            if (QyPreno.FindField(FDMCommon.AstaCut.Fields[i].FieldName)<>nil) and
               (FDMCommon.AstaCut.Fields[i].FieldName<>'ORA_INIZIO') and
               (FDMCommon.AstaCut.Fields[i].FieldName<>'ORA_FINE') and
               (FDMCommon.AstaCut.Fields[i].FieldName<>'DIAGNOSTICA_FK') and
               (FDMCommon.AstaCut.Fields[i].FieldName<>'AGENDE_FK') then

               QyPreno.FieldbyName(FDMCommon.AstaCut.Fields[i].FieldName).Value := FDMCommon.AstaCut.Fields[i].Value;

        QyPreno.Post;
        QyPreno.UpdateMethod := TempUM;
    end;
//    else
//        DBPlanner.xStartTime := DBPlanner.Items.TrovaTempoMax(DBPlanner.CellToTime(DBPlanner.SelPosition,DBPlanner.SelItemBegin), DBPlanner.SelPosition,DBPlanner.SelItemBegin,QyPrenoDURATA.AsInteger, DBPlanner.Items.Selected);
    try
      DBPlanner.InternalCreateItemAtSelection;
    except
       on E:EAbort do
       begin
          if (QyPreno.State in dsEditModes) then
              QyPreno.Cancel;
          DBDaySource.EndUpdate;
          DBPlanner.Refresh;
       end;
       on E:Exception do
       begin
          if (QyPreno.State in dsEditModes) then
              QyPreno.Cancel;
          DBDaySource.EndUpdate;
          DBPlanner.Items.ResetUpdate;
          DBPlanner.Refresh;
          raise;
       end;
    end;

      { controllo se si può eseguire lo spostamento }
      avanti := true;
      FDMCommon.AstaCut.DisableControls;
      FDMCommon.AstaDett.DisableControls;
      FDMCommon.AstaDett.Locate('TRIAGE_FK',QyPrenoPKTRIAGE.AsInteger,[]);
      while avanti and not FDMCommon.AstaDett.eof and (FDMCommon.AstaDettTRIAGE_FK.AsInteger=QyPrenoPKTRIAGE.AsInteger) do
      begin
        NrPrenoEsami.Parambyname('agende_fk').AsInteger := QyPrenoAGENDE_FK.AsInteger;
        NrPrenoEsami.Parambyname('codicirad_fk').AsInteger := FDMCommon.AstaDettPKCODICIRAD.AsInteger;
        NrPrenoEsami.open;
        avanti := not (NrPrenoEsami.IsEmpty or (NrPrenoEsamiNR_ESAMI.AsInteger=0));
        if not avanti then
        begin
           MsgDlg(
           format(RS_NonEsameInOrario,[FDMCommon.AstaDettCODICE.AsString,FDMCommon.AstaDettDESCRIZIONE.AsString]),
           '', ktWarning, [kbOK]);
        end;
        NrPrenoEsami.close;
        FDMCommon.AstaDett.Next;
      end;
      FDMCommon.AstaCut.Locate('PKTRIAGE',QyPrenoPKTRIAGE.AsInteger,[]);
      FDMCommon.AstaDett.Locate('TRIAGE_FK',QyPrenoPKTRIAGE.AsInteger,[]);
      FDMCommon.AstaDett.EnableControls;
      FDMCommon.AstaCut.EnableControls;

      try
      if not avanti then
      //           DBDaySource.DeleteDBItem(DBPlanner); // -- per cancellare item...
         QyPreno.Cancel
      else begin
          try
          QyPreno.Post;
          QyPreno.RefreshRecord;
          except
            if (QyPreno.State in dsEditModes) then
                QyPreno.Cancel;
            QyPreno.syRefresh;
            raise;
          end;

          if (FDMCommon.AstaCutSTATOVISITA.AsInteger<>10) then
          begin
            FDMCommon.CancellaMemoria(FDMCommon.AstaCutPKTRIAGE.AsInteger);

            if FDMCommon.AstaCut.IsEmpty then
               PostMessage(TWinControl(Parent.Owner).Handle,SY_CHIUDICUTPASTE,0,0);
          end;
      end;

      finally
        DBPlanner.Refresh;
      end;
      AItem := DBPlanner.Items.FindKey(QyPrenoPKTRIAGE.AsString);
      if AItem<>nil then
      begin
         RefreshEsamixPreno(AItem);
         DBPlanner.FocusItem(AItem,false {true});
      end;

    finally
       DBDaySource.OnInsertItem := nil;
       AlertEventList.Active := true;
    end;

end;


procedure TPrenoTest.aPasteUpdate(Sender: TObject);
var
  iper,xStartTime: TDateTime;
begin

  if xRightTime>0 then
     xStartTime := xRightTime
  else
     xStartTime := DBPlanner.CellToTime(DBPlanner.SelPosition,DBPlanner.SelItemBegin);
     
  aPaste.Enabled := not FDMCommon.AstaCut.IsEmpty and not ResToPos.IsEmpty and InOrario(vResToPos[DBDaySource.PosToRes(DBPlanner.SelPosition)],Trunc(xStartTime),xStartTime,iper);

end;

procedure TPrenoTest.aEndPasteExecute(Sender: TObject);
begin
   PostMessage(TWinControl(Parent.Owner).Handle,SY_APRICUTPASTE,0,0);

end;

procedure TPrenoTest.aEndPasteUpdate(Sender: TObject);
begin
  aEndPaste.Enabled := {(Preno=nil) and} not FDMCommon.AstaCut.IsEmpty;
end;

procedure TPrenoTest.EsamixPrenoBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  if fBloccate then
     Sender.Parambyname('bloccate').AsString := '#'
  else
     Sender.Parambyname('bloccate').AsString := '# c.BLOCCATO=0 AND ';
  if fAttivita=chr(1) then
  begin
     Sender.Parambyname('tipo_attivita').AsString := '#';
     Sender.Parambyname('osp_rich').AsString := '#';
  end
  else begin
      Sender.Parambyname('tipo_attivita').AsString := '# (c.tipo_attivita_fk is null or c.tipo_attivita_fk='+#39+fAttivita+#39+') and';
      if fAgendeEsclusive then
         Sender.Parambyname('osp_rich').AsString := '# c.osp_rich='+#39+fOspRich+#39+' and'
      else
         Sender.Parambyname('osp_rich').AsString := '# (c.osp_rich is null or c.osp_rich='+#39+fOspRich+#39+') and';
  end;


  if fAncheInterni then
     Sender.Parambyname('anche_interni').AsString := '# (''I'',''T'',''E'')'
  else
     Sender.Parambyname('anche_interni').AsString := '# (''E'',''T'')';

  if FxAltriPresidi=0 then
     Sender.Parambyname('solo_rep').AsString := format('# r.rep_owner = %d AND ',[gblpkrep])
  else
     Sender.Parambyname('solo_rep').AsString := '#';

  if FDMCommon.IsUserCup then
 	   Sender.Parambyname('PRENOCUP').AsString := '# /*s.prenocup and*/ c.prenocup=1 and'
  else
 	   Sender.Parambyname('PRENOCUP').AsString := '#';

  if (FDMCommon.LeggiPostoLavoroSHOW_REFERTATI.AsInteger=0) then
     Sender.Parambyname('show_eseguiti').AsString := '# in (10,20)'
  else
     Sender.Parambyname('show_eseguiti').AsString := '# between 10 and 198';
     
end;

procedure TPrenoTest.DBDaySourceChangeQuery(Sender: TObject);
var
  avanti: boolean;
begin
  avanti := (CompareDate(QyPreno.Parambyname('data_preno').AsDateTime,DBDaySource.Day)=LessThanValue);
  Sincronizza(DBDaySource.Day,false);
  DBPlanner.Refresh;
  if avanti then
     DBPlanner.SelectCells(DBPlanner.PlannerGrid.Row, DBPlanner.PlannerGrid.Row, 0)
  else
     DBPlanner.SelectCells(DBPlanner.PlannerGrid.Row, DBPlanner.PlannerGrid.Row, DBDaySource.NumberOfDays-1);
end;

procedure TPrenoTest.DBPlannerItemHint(Sender: TObject; Item: TPlannerItem;
  var Hint: String);
begin

  Hint := '<P><B>' + TimeToStr(Item.ItemRealStartTime) + ' - ' + TimeToStr(Item.ItemRealEndTime) + '</B><BR>' +
          '<B>' + Item.GetCaptionString + '</B><BR>' +
          'stato: ' + FDMCommon.ItemHint(Item.Status) + '<BR>'+RIS_AccNumber+': '+TsyPlannerItem(Item).RisStudyEuid+ '<BR>'; // </P>'+ Hint;
//{JRT 4916 ex:        'stato: ' + FDMCommon.ItemHint(Item.Color) + '<BR>nr. esame: '+Item.DBKey+ '<BR>'; // </P>'+ Hint;

//  if Item.ImageID=5 then
  begin
     Hint := Hint + '<B>' + TsyPlannerItem(Item).DescProvenienza + '</B><BR>';
  end;

  Hint := Hint + '</P>';

  if not fConEsami then
  begin
    RefreshDettagli.Parambyname('TRIAGE_FK').AsInteger := StrToIntDef(Item.DBKey,-1);
    RefreshDettagli.open;
    EsamixPreno.OpenNoFetch;
    EsamixPreno.DataTransfer(RefreshDettagli,true,true);
    EsamixPreno.First;
    if not EsamixPreno.IsEmpty then
    begin
      Hint := Hint + '<P align="left"><UL>';
      while not EsamixPreno.eof do
      begin
         Hint := Hint + '<LI>' + EsamixPrenoCODICE.AsString + ' - ' + EsamixPrenoDESCRIZIONE.AsString + '<BR>';
         EsamixPreno.Next;
      end;
      Hint := Hint + '</UL></P>';
    end;
    RefreshDettagli.close;
    EsamixPreno.Empty;
    EsamixPreno.Close;
  end
  else begin
      EsamixPreno.CancelRange;
      EsamixPreno.SetRange([Item.DBKey],[Item.DBKey]);
      if not EsamixPreno.IsEmpty then
      begin
        Hint := Hint + '<P align="left"><UL>';
        while not EsamixPreno.eof do
        begin
           Hint := Hint + '<LI>' + EsamixPrenoCODICE.AsString + ' - ' + EsamixPrenoDESCRIZIONE.AsString + '<BR>';
           EsamixPreno.Next;
        end;
        Hint := Hint + '</UL></P>';
      end;
  end;

end;

procedure TPrenoTest.aModificaPrenotazioneUpdate(Sender: TObject);
begin
  aModificaPrenotazione.Enabled := (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,6]) and ValidaModificaItem(DBPlanner.Items.DBItem);
end;

function TPrenoTest.ValidaModificaItem(AItem: TPlannerItem): boolean;
begin
   result := (AItem<>nil) and ((AItem.Status=20) or
                               ((AItem.Status=10) and ((AItem.UserID=gblCodUtente) or gblUserIsAdmin)));
end;

procedure TPrenoTest.QyPrenoAfterEdit(DataSet: TDataSet);
begin
{
  if QyPreno.UpdateMethod<>umManual then
     QyPrenoUSER_ID.AsInteger := gblCodUtente;
}
end;

procedure TPrenoTest.AlertEventListDataSets0AfterActiveEvent(
  Sender: ToelItem; op: Char; ParamList: TInternalAstaParamList);
var
 plIt: TPlannerItem;
begin

  case op of
  'D','I': DBPlanner.Refresh;
  'U','A': if fConEsami then
        begin
          plIt := DBPlanner.Items.FindKey(ParamList.ParamByName('pkvalue').AsString);
          if Assigned(plIt) then
          begin
             RefreshEsamixPreno(plIt);
          end;
        end;
  end;

end;

procedure TPrenoTest.QyPrenoBeforeDelete(DataSet: TDataSet);
var
  TempUM: TAstaUpdateMethod;
begin
{ -- si può anche evitare...
  if fConEsami then
  begin
    EsamixPreno.CancelRange;
    EsamixPreno.SetRange([QyPrenoPKTRIAGE.AsInteger],[QyPrenoPKTRIAGE.AsInteger]);
//    EsamixPreno.Filtered := false;
//    EsamixPreno.Filter := format('TRIAGE_FK = %d',[QyPrenoPKTRIAGE.AsInteger]);
//    EsamixPreno.Filtered := true;
    while not EsamixPreno.IsEmpty do
    begin
        EsamixPreno.Delete;
    end;
  end;
}
  if QyPrenoSTATOVISITA.AsInteger=10 then
  begin
    TempUM := QyPreno.UpdateMethod;
    QyPreno.UpdateMethod := umManual;
    try
      if not (QyPreno.State in dsEditModes) then
         QyPreno.Edit;
      QyPrenoSTATOVISITA.AsInteger := 0;
      QyPreno.Post;
    finally
      QyPreno.UpdateMethod := TempUM;
    end;
  end;

end;

procedure TPrenoTest.AlertEventListDataSets0AcceptActiveEvent(
  Sender: ToelItem; var op: Char; ParamList: TInternalAstaParamList;
  var Accept: Boolean);
begin
  case op of

  'D': Accept := (ResToCal.LocateRecord('pkagende',ParamList.ParamByName('agende_fk').AsInteger,[]));
  'I': Accept := (ParamList.ParamByName('statovisita').AsInteger in [10,20]) and (ResToCal.LocateRecord('pkagende',ParamList.ParamByName('agende_fk').AsInteger,[]));

  'U','A': begin
       Accept := (ParamList.ParamByName('statovisita').AsInteger in [0,10,20]) and (ResToCal.LocateRecord('pkagende',ParamList.ParamByName('agende_fk').AsInteger,[]));

       if (ParamList.ParamByName('statovisita').AsInteger=0) then
          op := 'D'

       end;

  end;

end;

procedure TPrenoTest.SelectActualCells;
begin
   DBPlanner.SelectCells(DBPlanner.PlannerGrid.Row{-1}, DBPlanner.PlannerGrid.Row{-1}, DBPlanner.PlannerGrid.Col-1);
end;

procedure TPrenoTest.RefreshCalendari;
begin
  DBPlanner.Refresh;
end;

procedure TPrenoTest.DBPlannerDragOverItem(Sender, Source: TObject; X,
  Y: Integer; APlannerItem: TPlannerItem; State: TDragState;
  var Accept: Boolean);
var
  aDragView: TcxGridDBTableView;
begin
  inherited;

  if (Source is TcxDragControlObject) then
  begin
    Accept :=
              (APlannerItem.Status=20) and
              not FDMCommon.AstaCut.IsEmpty and
              (APlannerItem.DBKey<>FDMCommon.AstaCutPKTRIAGE.AsString);
    if Accept then
    begin
      aDragView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
      Accept :=  (aDragView<>nil) and (aDragView.Name='cxGridEsami') and
                 (qyPreno.Lookup('PKTRIAGE',APlannerItem.DBKey,'ASSISTIBILI_FK')=FDMCommon.AstaCutASSISTIBILI_FK.AsInteger);
  //ex:               (qyPreno.Lookup('PKTRIAGE',APlannerItem.DBKey,'IMPEGNATIVE_FK')=FDMCommon.AstaCutIMPEGNATIVE_FK.AsInteger);
    end;
  end
  else if (Source is TPlannerGrid) then
  begin
    Accept := (DBPlanner.Items.Selected<>nil) and
              (APlannerItem.DBKey=DBPlanner.Items.Selected.DBKey);
  end;

end;

function TPrenoTest.CercaInCalendari(xdurata: integer; xStartNow: TDateTime): boolean;
type
  TTrovate = record
     tinizio: TDateTime;
     tcode: integer;
  end;
var
  inizio,fine: TDateTime;
  code,i,z: integer;
  finite: boolean;
  dTrovate: array of TTrovate;
  avanti: boolean;
  FStartNow: TDateTime;
begin
//  DBDaySource.BeginUpdate;
  if xStartNow=0 then
     FStartNow := Now()
  else
     FStartNow := xStartNow;
       
  QyPreno.DisableControls;
  QyPreno.IndexName := 'qyPrenoIDX_AGENDE';
  try
    ResToCal.First;
    repeat

    result := false;
    code := ResToCalSERVIZI_FK.AsInteger;
    if ResToCalMAX_TIME_PRENO.AsInteger>0 then
       xdurata := ResToCalMAX_TIME_PRENO.AsInteger;
    QyPreno.CancelRange;
    QyPreno.SetRange([ResToCalPKAGENDE.AsInteger],[ResToCalPKAGENDE.AsInteger]);
//    QyPreno.Locate('AGENDE_FK',ResToCalPKAGENDE.AsInteger,[]);
    if not QyPreno.Eof then
    begin
       if ((MinutesBetween(ResToCalORA_INIZIO.AsDateTime,QyPrenoORA_INIZIO.AsDateTime)+1)>=xdurata) then
       begin
          inizio := ResToCalORA_INIZIO.AsDateTime;
          code := ResToCalSERVIZI_FK.AsInteger;
          result := true;
       end
       else begin
         repeat
            inizio := QyPrenoORA_FINE.AsDateTime;
            QyPreno.Next;
         until QyPreno.Eof or {(QyPrenoAGENDE_FK.AsInteger=ResToCalPKAGENDE.AsInteger) and}
              (CompareDateTime(QyPrenoORA_INIZIO.AsDateTime,FStartNow)>0)
       end;
     end
     else
       inizio := max(ResToCalORA_INIZIO.AsDateTime,FStartNow);

    finite := false;
    if not result then
      repeat
        finite := QyPreno.eof {or not (QyPrenoAGENDE_FK.AsInteger=ResToCalPKAGENDE.AsInteger)};
        if not finite then
           fine := QyPrenoORA_INIZIO.AsDateTime
        else
           fine := ResToCalORA_FINE.AsDateTime;

        result := (fine>inizio) and ((MinutesBetween(inizio,fine)+1)>=xdurata);

        if not result and not finite then
        begin
           inizio := QyPrenoORA_FINE.AsDateTime;
           code := ResToCalSERVIZI_FK.AsInteger;
           // -- controllo che la prenotazione non sia nel successivo calendario
           finite := (inizio>ResToCalORA_FINE.AsDateTime);
           finite := finite or (MinutesBetween(inizio,ResToCalORA_FINE.AsDateTime)<xdurata);
           if not finite then
             QyPreno.Next;
        end;
      until result or finite;

    avanti := false;
    if result then
    begin
       SetLength(dTrovate,Length(dTrovate)+1);
       dTrovate[Length(dTrovate)-1].tinizio := inizio;
       dTrovate[Length(dTrovate)-1].tcode := code;
       // -- verifico eventuale disponibilità prima su stessa giornata per diagnostica differente
       ResToCal.Next;
       avanti := not ResToCal.Eof and (DateOf(ResToCalORA_INIZIO.AsDateTime)=DateOf(inizio));
    end
    else if (finite and (Length(dTrovate)=0)) then
    begin
       // -- non trovata disponibilità in questo calendario
       ResToCal.Next;
       avanti := not ResToCal.Eof;
    end;

    until not avanti;

    result := Length(dTrovate)>0;
    if result then
    begin
      // -- cerco l'orario migliore...
      z := 0;
      for i:=1 to Length(dTrovate)-1 do
         if dTrovate[i].tinizio<dTrovate[z].tinizio then
            z := i;

       if DBPlanner.Display.Displayunit>xdurata then
       begin
          DBPlanner.Display.Displayunit := xdurata;
//          DBPlanner.Refresh;
          PostMessage(TWinControl(Parent.Owner).Handle,SY_CHANGEDISPLAYUNIT,0,DBPlanner.ZoomPos);
       end;
       DBPlanner.SelectCellFromTime(dTrovate[z].tinizio,dTrovate[z].tcode);
       DBPlanner.xStartTime := dTrovate[z].tinizio;
    end;

  finally
    QyPreno.CancelRange;
    QyPreno.IndexName := 'qyPrenoIDX_PKTRIAGE';
    QyPreno.EnableControls;
//    DBDaySource.EndUpdate;
  end;
end;

procedure TPrenoTest.AdvPanelDblClick(Sender: TObject);
begin
  inherited;
  if not Minimized then
    Height := AdvPanel.Caption.Height;
  Minimized := not Minimized;
  PostMessage(TWinControl(Parent.Owner).Handle,SY_RESIZEALL,0,0);
end;

function TPrenoTest.CanClose: boolean;
var
  i: integer;
begin
  result := true;
  for i:=0 to DBPlanner.Items.Count-1 do
  if (DBPlanner.Items[i].Status=10) and (DBPlanner.Items[i].UserID=gblcodutente) then
  begin
     MsgDlg(RS_PrenotazioneNonConfermata,'', ktWarning, [kbOK]);
     result := false;
     break;
  end;
end;

procedure TPrenoTest.Minimizza;
begin
  Height := AdvPanel.Caption.Height;
  Minimized := true;
end;

procedure TPrenoTest.Massimizza;
begin
  Minimized := false;
end;

procedure TPrenoTest.DBPlannerItemDelete(Sender: TObject;
  Item: TPlannerItem);
begin
  inherited;
  aCancellaPrenotazione.Execute;
end;

procedure TPrenoTest.DBPlannerItemInsert(Sender: TObject; Position,
  FromSel, FromSelPrecise, ToSel, ToSelPrecise: Integer);
//var
//  xgiorno,tini,iper: TDateTime;
begin
{
  xgiorno := DBDaySource.PosToDay(Position);
  tini := DBPlanner.CellToTime(Position,FromSel);
  if (InOrario(vResToPos[DBDaySource.PosToRes(Position)],xgiorno,tini,iper) or
      InOrario(vResToPos[DBDaySource.PosToRes(Position)],xgiorno,DBPlanner.CellToTime(Position,ToSel),iper)) then
  begin
//     DBPlanner.xStartTime := max(tini,iper);
     DBPlanner.xStartTime := 0;
     aNuovaPrenotazione.Execute;
  end;
}
end;

procedure TPrenoTest.DBDaySourceCodeResourceToPosition(Sender: TObject;
  Code: Integer; var Position: Integer);
var
  z: integer;
  Accept: boolean;
begin
  Accept := false;
  z:=0;
  Position := 0;
  while (z<nr_res) and not Accept do
  begin
     Accept := (vResToPos[z]=Code);
     if Accept then
        Position := z;
     inc(z);
  end;

end;

procedure TPrenoTest.DBPlannerDragDropCell(Sender, Source: TObject; X, Y,
  mX, mY: Integer);
var
  xTimeCell,iper: TDateTime;
  xPlanner: TDBPlanner;
  aDragView: TcxGridDBTableView;
  xServizi: integer;
//  cell: TPoint;

  procedure CalcolaInizio(xMouseTime: TDateTime; xDurata: integer);
  begin
    if DBPlanner.Overlap then
       xTimeCell := DBPlanner.CellToTime(x,y)
    else
       xTimeCell := DBPlanner.Items.TrovaTempoMax(DBPlanner.AbsPixelToTime(DBDaySource.PosToDay(x),mY), x,y, xDurata, DBPlanner.Items.selected);
    xServizi := -1;
    if not ResToPos.IsEmpty then
    begin
       xServizi := vResToPos[DBDaySource.PosToRes(x)];
       InOrario(xServizi,Trunc(xMouseTime),xMouseTime,iper);
       if CompareDateTime(iper,xTimeCell)=GreaterThanValue then
          xTimeCell := iper;
    end;
  end;

begin
  inherited;

  InDragDrop := true;
  try
  xPlanner := (Sender as TDBPlanner);
  xPlanner.SelPosition := x;
  xPlanner.SelItemend := y + 1;
  xPlanner.SelItemBegin := y;

//  xStartTime := xPlanner.AggiustaTempo(xPlanner.AbsPixelToTime(DBDaySource.PosToDay(x),mY));
//  cell := DBPlanner.XYToCell(mX, mY);
//  xStartTime := DBPlanner.CellToTime(x,cell.Y);


  if Source is TcxDragControlObject then
     aDragView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source))
  else
     aDragView := nil;

  if (Source is TPlannerGrid) then
  begin
     CalcolaInizio(DBPlanner.AbsPixelToTime(DBDaySource.PosToDay(x),mY),TsyPlannerItem(DBPlanner.Items.selected).Durata);
     Sposta(TPrenoTest(TPlannerGrid(Source).Owner.Owner),x,y, xTimeCell {xStartTime});
  end
  else if (aDragView<>nil) then // Cut & Paste
  begin
      if (aDragView.Name='cxGridEsami') then
      begin
        CalcolaInizio(DBPlanner.AbsPixelToTime(DBDaySource.PosToDay(x),mY),FDMCommon.AstaCutDURATA.AsInteger);
        IncollaEsame(xServizi,xTimeCell);
      end
      else if ((aDragView.Name='cxGridTestataAltre') or (aDragView.Name='cxGridDettagliAltre')) then
      begin
        CalcolaInizio(DBPlanner.AbsPixelToTime(DBDaySource.PosToDay(x),mY),FDMCommon.AstaTestataDURATA.AsInteger);
        AltraPrenotazione(xTimeCell {xStartTime});
      end
      else // if (aDragView.Name='cxGridAnticipi') then
      begin
        xPlanner.xStartTime := xPlanner.Items.TrovaTempoMax(xPlanner.CellToTime(xPlanner.SelPosition,xPlanner.SelItemBegin), xPlanner.SelPosition,xPlanner.SelItemBegin,FDMCommon.AstaCutDURATA.AsInteger);
        CalcolaInizio(xPlanner.xStartTime,FDMCommon.AstaCutDURATA.AsInteger);
        Incolla(xTimeCell);
      end;
  end;
  finally
    InDragDrop := false;
  end;

end;


procedure TPrenoTest.SourceInsertAltraPrenoItem(Sender: TObject;  APlannerItem: TPlannerItem);
begin
  // -- utilizzato per spostamenti da memoria (cut&paste)
  QyPreno.Edit;
  QyPrenoORA_INIZIO.AsDateTime := DBPlanner.xStartTime; // APlannerItem.ItemStartTime;
{$IFNDEF MEDICORNER}
  if FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=1 {in [1,3]} then
  begin
     FOraInfusione := TFOraInfusione.Create(nil);
     try
        FOraInfusione.cxSomministra.Properties.MinDate := Date();
        FOraInfusione.cxSomministra.Date := QyPrenoORA_INIZIO.AsDateTime;
        FOraInfusione.AncheEsecuzione := false;
        if FOraInfusione.ShowModal=mrOk then
        begin
           QyPrenoORA_SOMMIN.AsDateTime := FOraInfusione.cxSomministra.Date;
        end;
     finally
        FOraInfusione.Free;
     end;
  end;
{$ENDIF}
  QyPrenoORA_FINE.AsDateTime := IncMinute(QyPrenoORA_INIZIO.AsDateTime,QyPrenoDURATA.AsInteger); // APlannerItem.ItemEndTime;
  APlannerItem.DBKey := QyPrenoPKTRIAGE.AsString;
  DBDaySource.OnItemToFields(Self, QyPreno.Fields, APlannerItem);
end;


procedure TPrenoTest.AltraPrenotazione(xStartTime: TDateTime);
var
  i: integer;
  avanti: boolean;
  TempUM: TAstaUpdateMethod;
  AItem: TPlannerItem;
  pkt: integer;
begin
    AlertEventList.Active := false;

    DBPlanner.xStartTime := xStartTime;

    DBDaySource.OnInsertItem := SourceInsertAltraPrenoItem;

    try

      { controllo se si può eseguire lo spostamento }
      avanti := true;
      pkt := FDMCommon.AstaTestataPKTRIAGE.AsInteger;
      FDMCommon.AstaTestata.DisableControls;
      FDMCommon.AstaDettagli.DisableControls;
      FDMCommon.AstaDettagli.Locate('TRIAGE_FK',pkt,[]);
      while avanti and not FDMCommon.AstaDettagli.eof and (FDMCommon.AstaDettagliTRIAGE_FK.AsInteger=pkt) do
      begin
        NrPrenoEsami.Parambyname('agende_fk').AsInteger := QyPrenoAGENDE_FK.AsInteger; // -- FDMCommon.AstaTestataAGENDE_FK.AsInteger;
        NrPrenoEsami.Parambyname('codicirad_fk').AsInteger := FDMCommon.AstaDettagliPKCODICIRAD.AsInteger;
        NrPrenoEsami.open;
        avanti := not (NrPrenoEsami.IsEmpty or (NrPrenoEsamiNR_ESAMI.AsInteger=0));
        if not avanti then
        begin
           MsgDlg(
           format(RS_NonEsameInOrario,[FDMCommon.AstaDettagliCODICE.AsString,FDMCommon.AstaDettagliDESCRIZIONE.AsString]),
           '', ktWarning, [kbOK]);
        end;
        NrPrenoEsami.close;
        FDMCommon.AstaDettagli.Next;
      end;
      FDMCommon.AstaTestata.Locate('PKTRIAGE',pkt,[]);
      FDMCommon.AstaDettagli.Locate('TRIAGE_FK',pkt,[]);
      FDMCommon.AstaDettagli.EnableControls;
      FDMCommon.AstaTestata.EnableControls;

      if not avanti then
        exit;

//      if not QyPreno.Locate('PKTRIAGE',pkt,[]) then
      begin
        TempUM := QyPreno.UpdateMethod;
        try
        QyPreno.UpdateMethod := umAfterPost;
        QyPreno.DirectModify := [tsyInsert,tsyUpdate];
        QyPreno.UpdateObject := nil;
        QyPreno.Append;
        for i:=0 to FDMCommon.AstaTestata.FieldCount-1 do
            if (QyPreno.FindField(FDMCommon.AstaTestata.Fields[i].FieldName)<>nil) and
//               (FDMCommon.AstaTestata.Fields[i].FieldName<>'ORA_INIZIO') and
//               (FDMCommon.AstaTestata.Fields[i].FieldName<>'ORA_FINE') and
//               (FDMCommon.AstaTestata.Fields[i].FieldName<>'DIAGNOSTICA_FK') and
//               (FDMCommon.AstaTestata.Fields[i].FieldName<>'AGENDE_FK') and
               (FDMCommon.AstaTestata.Fields[i].FieldName<>'PKTRIAGE') then

               QyPreno.FieldbyName(FDMCommon.AstaTestata.Fields[i].FieldName).Value := FDMCommon.AstaTestata.Fields[i].Value;

        QyPreno.Post;
        finally
         QyPreno.UpdateObject := updPreno;
         QyPreno.DirectModify := [tsyUpdate];
         QyPreno.UpdateMethod := TempUM;
        end;
      end;

{ -- vecchia gestione radiofarmaco...
      EsamixPreno.close;
      EsamixPreno.openNoFetch;
      TempUM := EsamixPreno.UpdateMethod;
      try
         EsamixPreno.UpdateMethod := umAfterPost;
         FDMCommon.AstaDettagli.Locate('TRIAGE_FK',pkt,[]);
         while not FDMCommon.AstaDettagli.eof and (FDMCommon.AstaDettagliTRIAGE_FK.AsInteger=pkt) do
         begin
           EsamixPreno.Append;
           EsamixPrenoTRIAGE_FK.AsInteger := QyPrenoPKTRIAGE.AsInteger;
           EsamixPrenoPKCODICIRAD.AsInteger := FDMCommon.AstaDettagliPKCODICIRAD.AsInteger;
           EsamixPrenoDURATA.AsInteger := FDMCommon.AstaDettagliDURATA.AsInteger;
           if not FDMCommon.AstaDettagliMAGART_FK.IsNull then
           begin
             EsamixPrenoMAGART_FK.AsInteger := FDMCommon.AstaDettagliMAGART_FK.AsInteger;
             EsamixPrenoQR.AsFloat := FDMCommon.AstaDettagliQR.AsInteger;
           end;
           EsamixPreno.Post;
           FDMCommon.AstaDettagli.Next;
         end;
      finally
         EsamixPreno.UpdateMethod := TempUM;
      end;
}

      RefreshDettagli.Parambyname('TRIAGE_FK').AsInteger := pkt;
      RefreshDettagli.open;

      TempUM := RefreshDettagli.UpdateMethod;
      try
         RefreshDettagli.UpdateMethod := umCached;
         while not RefreshDettagli.eof do
         begin
           RefreshDettagli.Edit;
           RefreshDettagliTRIAGE_FK.AsInteger := QyPrenoPKTRIAGE.AsInteger;
           RefreshDettagli.Post;
           RefreshDettagli.Next;
         end;
         FDMCommon.AstaClientSocket.SendDataSetTransactions(Name,[RefreshDettagli]);
      finally
         RefreshDettagli.UpdateMethod := TempUM;
      end;

    AItem := nil; 
    try
      AItem := DBPlanner.InternalCreateItemAtSelection;
    except
       on E:EAbort do
       begin
          if (QyPreno.State in dsEditModes) then
              QyPreno.Cancel;
          DBDaySource.EndUpdate;
          DBPlanner.Items.ResetUpdate;
          DBPlanner.Refresh;
       end;
       on E:Exception do
       begin
          if (QyPreno.State in dsEditModes) then
              QyPreno.Cancel;
          if Assigned(AItem) and (AItem.DBKey<>'') and QyPreno.Locate(DBDaySource.KeyField,AItem.DBKey,[]) then
             DBDaySource.DeleteDBItem(DBPlanner);
          DBDaySource.EndUpdate;
          DBPlanner.Items.ResetUpdate;
          DBPlanner.Refresh;
          raise;
       end;
    end;

    try
      if not avanti then
         QyPreno.Cancel
      else begin
          try
          QyPreno.Post;
          QyPreno.RefreshRecord;
          except
            if (QyPreno.State in dsEditModes) then
                QyPreno.Cancel;
            QyPreno.syRefresh;
            raise;
          end;
{-- form rimane aperta  JRT 1772
          FDMCommon.CancellaAltrePreno(FDMCommon.AstaTestataPKTRIAGE.AsInteger);

          if FDMCommon.AstaTestata.IsEmpty then
             PostMessage(Handle,SY_CHIUDIALTREPRENO,0,0);
}
      end;
    finally
      DBPlanner.Refresh;
    end;

    AItem := DBPlanner.Items.FindKey(QyPrenoPKTRIAGE.AsString);
    if AItem<>nil then
    begin
       RefreshEsamixPreno(AItem);
       DBPlanner.FocusItem(AItem,false {true});
    end;

  finally
     DBDaySource.OnInsertItem := nil;
     AlertEventList.Active := true;
  end;

end;



procedure TPrenoTest.IncollaEsame(xServizi: integer; xStartTime: TDateTime);
var
  avanti: boolean;
  res: TPosCalendario;
begin

    AlertEventList.Active := false;

    try

    res := CalendarioFromOrario(xServizi,DateOf(xStartTime),xStartTime);
    avanti := true;
(*
    { controllo se si può eseguire lo spostamento }
    Possibili.Parambyname('agende_fk').AsInteger := res.agende_fk;
    Possibili.syRefresh;

    avanti := Possibili.Locate('CODICE',[AstaDettCODICE.AsString],[]);
    if not avanti then
    begin
       MsgDlg(
       format(RS_NonEsameInOrario,[AstaDettCODICE.AsString,AstaDettDESCRIZIONE.AsString]),
       '', ktWarning, [kbOK]);
    end;
*)
    if avanti then
    begin

//      ModificaxImpegnative.Parambyname('impegnative_fk').AsInteger := AstaCutIMPEGNATIVE_FK.AsInteger;
//      ModificaxImpegnative.syrefresh;

      FDMCommon.NuovoTriage.Parambyname('pktriage').AsInteger := FDMCommon.AstaCutPKTRIAGE.AsInteger;
      FDMCommon.NuovoTriage.Parambyname('pkprestazioni').AsInteger := FDMCommon.AstaDettPKPRESTAZIONI.AsInteger;
      FDMCommon.NuovoTriage.syRefresh;
      if not FDMCommon.NuovoTriage.Eof then
      begin
          FDMCommon.NuovoTriage.Edit;
          FDMCommon.NuovoTriageDIAGNOSTICA_FK.AsInteger := xServizi;
          FDMCommon.NuovoTriageORA_INIZIO.AsDateTime := xStartTime;
          FDMCommon.NuovoTriageORA_FINE.AsDateTime := IncMinute(xStartTime,FDMCommon.AstaDettDURATA.AsInteger);
          FDMCommon.NuovoTriageDURATA.AsInteger := FDMCommon.AstaDettDURATA.AsInteger;
          FDMCommon.NuovoTriageSTATOVISITA.AsInteger := FDMCommon.AstaCutSTATOVISITA.AsInteger;
          FDMCommon.NuovoTriageUSER_ID.AsInteger := gblcodutente;
          FDMCommon.NuovoTriageAGENDE_FK.AsInteger := res.pkagende;
          FDMCommon.NuovoTriageREPARTI_FK.AsInteger := res.reparti_fk;
          FDMCommon.NuovoTriageIMPEGNATIVE_FK.AsInteger := FDMCommon.AstaCutIMPEGNATIVE_FK.AsInteger;
          FDMCommon.NuovoTriage.Post;
      end;

      SendMessage(TWinControl(Parent.Owner).Handle,SY_CANCDETTCUTPASTE,FDMCommon.AstaCutPKTRIAGE.AsInteger,FDMCommon.AstaDettPKPRESTAZIONI.AsInteger);
//      RefreshImpegnative(AstaCutIMPEGNATIVE_FK.AsInteger,false,true,false);
      QyPreno.syRefresh;
      DBPlanner.Refresh;

    end;

    finally
       AlertEventList.Active := true;
    end;

end;

procedure TPrenoTest.DBPlannerPlannerDblClick(Sender: TObject; Position,
  FromSel, FromSelPrecise, ToSel, ToSelPrecise, mX, mY: Integer);
//var
//  xgiorno,tini,iper: TDateTime;
begin
{
  xgiorno := DBDaySource.PosToDay(Position);
  tini := DBPlanner.AbsPixelToTime(xgiorno,mY);
  if InOrario(vResToPos[DBDaySource.PosToRes(Position)],xgiorno,tini,iper) then
  begin
//     DBPlanner.xStartTime := max(DBPlanner.CellToTime(Position,FromSel-DBPlanner.Display.DisplayStart),iper);
     DBPlanner.xStartTime := 0;
     aNuovaPrenotazione.Execute;
  end;
}
end;

procedure TPrenoTest.DBPlannerZoomPosChanged(Sender: TObject);
begin
  inherited;
  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5) then
  begin
    rsPropSaver1.SaveValues;
    rsPropSaver1.Storage.Save;
  end;
end;

procedure TPrenoTest.DBPlannerDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var
  GridCoord: TGridCoord;
begin
  inherited;
  GridCoord := TPlanner(Sender).PlannerGrid.MouseCoord(X, Y);
  Accept := ((Source is TcxDragControlObject) or ((Source is TPlannerGrid) and (TPlannerGrid(Source).Owner.Owner is TPrenoTest))) and
            InOrario(vResToPos[DBDaySource.PosToRes(GridCoord.X-1)],
                     DBDaySource.PosToDay(GridCoord.X-1),
                     TPlanner(Sender).AbsPixelToTime(DBDaySource.PosToDay(GridCoord.X-1),Y));

end;

procedure TPrenoTest.DBPlannerPlannerGetBrush(Sender: TObject; Pos,
  Index: Integer; ABrush: TBrush);
begin
  ABrush.Color := DBPlanner.Display.ColorActive;
end;

procedure TPrenoTest.DBPlannerPlannerGetZone(Sender: TObject; Pos: Integer;
  xRect: TRect; aZone: TList; var xcolor: TColor);
var
  xgiorno,tini,tfine,temp: TDateTime;
  xz: TsyZone;
  xservizi: integer;
begin

    if not InDragDrop and ResToCal.Active and (ResToCal.recordcount>0) then
    begin
      xgiorno := DBDaySource.PosToDay(Pos);
      tini := DBPlanner.AbsPixelToTime(xgiorno,xRect.Top);
      tfine := DBPlanner.AbsPixelToTime(xgiorno,xRect.Bottom);
      xservizi := vResToPos[DBDaySource.PosToRes(Pos)];
//      ResToCal.Locate('DATA_PRENO;SERVIZI_FK',VarArrayOf([xGiorno,xServizi]),[]);
      ResToCal.Locate('SERVIZI_FK',xServizi,[]);
      while not ResToCal.Eof and
         (ResToCalSERVIZI_FK.AsInteger=xServizi)
         {and (CompareDate(ResToCalDATA_PRENO.AsDateTime,xGiorno)=0)} do
      begin
        if ((CompareDateTime(ResToCalORA_INIZIO.AsDateTime,tini)>=0) and
            (CompareDateTime(ResToCalORA_INIZIO.AsDateTime,tfine)<0)) or

           ((CompareDateTime(ResToCalORA_FINE.AsDateTime,tini)>0) and
            (CompareDateTime(ResToCalORA_FINE.AsDateTime,tfine)<=0)) or

           ((CompareDateTime(ResToCalORA_INIZIO.AsDateTime,tini)<0) and
            (CompareDateTime(ResToCalORA_FINE.AsDateTime,tfine)>0)) then
        begin
             xz := TsyZone.Create;
             temp := max(ResToCalORA_INIZIO.AsDateTime,tini);
             xz.Rect.Top := DBPlanner.AbsTimeToPixel(temp);
             temp := min(ResToCalORA_FINE.AsDateTime,tfine);
             xz.Rect.Bottom := DBPlanner.AbsTimeToPixel(temp);
             xz.Rect.Left := xRect.Left;
             xz.Rect.Right := xRect.Right;
             if (CompareDateTime(tfine,FStartNow)<0) then
                xz.Color := DBPlanner.Display.ColorNonActive
             else if PeriodoBloccato then
                xz.Color := FDMCommon.ColorItem(50)
             else
                xz.Color := xcolor;  // DBPlanner.Display.ColorActive;
             aZone.Add( xz );
        end;
        ResToCal.Next;
      end;
    end;
    xcolor := DBPlanner.Display.ColorNonActive;
end;

function TPrenoTest.PeriodoBloccato: boolean;
begin
   result := (ResToCalBLOCCATO.AsInteger=1) or
             (not (gblUserIsAdmin or gblSuperUser or gblUserCup) and
              ((ResToCalORE_PRIMA.AsInteger>0) and (CompareDateTime(IncHour(ResToCalORA_INIZIO.AsDateTime, -(ResToCalORE_PRIMA.AsInteger div 24)) , Now()) <=0)));
end;

procedure TPrenoTest.DBDaySourceResetFilter(Sender: TObject);
begin
  inherited;
  DBPlanner.Ricalcola(ResToCal);
end;

procedure TPrenoTest.DBPlannerItemSizing(Sender: TObject;
  Item: TPlannerItem; DeltaBegin, DeltaEnd: Integer; var Allow: Boolean);
begin
  inherited;
  Allow := false;  // ValidaModificaItem(Item); // or ((Item<>nil) and (Item.Status=10) and (Item.UserID=gblCodUtente));
end;

procedure TPrenoTest.DBPlannerItemMoving(Sender: TObject;
  Item: TPlannerItem; DeltaBegin, DeltaPos: Integer; var Allow: Boolean);
begin
  inherited;
  Allow := (Item<>nil) and (((Item.Status=20) and fCopiaVisibile) or
                             ((Item.Status=10) and ((Item.UserID=gblCodUtente) or gblUserIsAdmin)));
end;

procedure TPrenoTest.DBPlannerSideBarDblClick(Sender: TObject; X,
  Y: Integer; Anchor: String);
begin
  inherited;
  DBPlanner.PosizionaGrid(Now);
  DBPlanner.SelectGrid;
end;


function TPrenoTest.RegistraCaricamento: integer;
var
  xItem: TPlannerItem;
  xKey: string;
  codici: TStringList;
  x: integer;
begin
    result := -1;
    AlertEventList.Active := false;
    codici := TStringList.Create;
    try
    try
       xItem := DBPlanner.InternalCreateItemAtSelection;
       xKey := xItem.DBKey;
       result := QyPrenoREPARTI_FK.AsInteger;
       RegistraEsami.openNoFetch;
       if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3])  then
           RegistraMateriali.openNoFetch;
       codici.CommaText := vRighe;
       for x:=1 to codici.count do
       begin
        if (Richiesti.Fieldbyname('PRENOTATO').AsInteger=0) and Richiesti.Locate('PROGRESSIVO_RIGA',codici[x-1],[]) then
        begin
          RegistraEsami.Insert;
          RegistraEsamiTRIAGE_FK.AsString := xKey;
          RegistraEsamiDURATA.AsInteger := Richiesti.Fieldbyname('DURATA').AsInteger;
          RegistraEsamiDOSE.AsFloat := Richiesti.Fieldbyname('DOSE').AsFloat;
          RegistraEsamiIMPORTO.AsFloat := Richiesti.Fieldbyname('IMPORTO').AsFloat;
          RegistraEsamiPAGATO.AsFloat := Richiesti.Fieldbyname('PAGATO').AsFloat;
          RegistraEsamiESENTE.AsInteger := Richiesti.Fieldbyname('ESENTE').AsInteger;
          if not Richiesti.Fieldbyname('IDENT_FK').IsNull then
             RegistraEsamiIDENT_FK.AsString := Richiesti.Fieldbyname('IDENT_FK').AsString;
          RegistraEsamiCODICIRAD_FK.AsInteger := Richiesti.Fieldbyname('CODICIRAD_FK').AsInteger;
          if not Richiesti.Fieldbyname('GRUPPIPREST_FK').IsNull then
             RegistraEsamiGRUPPIPREST_FK.AsInteger := Richiesti.Fieldbyname('GRUPPIPREST_FK').AsInteger;
          RegistraEsamiPROGRESSIVO_RIGA.AsInteger := Richiesti.Fieldbyname('PROGRESSIVO_RIGA').AsInteger;
          RegistraEsamiNUMERO_PRESTAZIONE.AsInteger := Richiesti.Fieldbyname('NUMERO_PRESTAZIONE').AsInteger;
          RegistraEsami.Post;

          RichSpecxPrest.Filtered := False;
          RichSpecxPrest.Filter := format('PROGRESSIVO_RIGA = %d',[Richiesti.Fieldbyname('PROGRESSIVO_RIGA').AsInteger]);
          RichSpecxPrest.Filtered := True;

          while not RichSpecxPrest.Eof do
          begin
            RegistraSpecxPrest.Append;
            RegistraSpecxPrestSPECIFICAZIONI_FK.AsInteger := RichSpecxPrest.Fieldbyname('SPECIFICAZIONI_FK').AsInteger;
            RegistraSpecxPrestPRESTAZIONI_FK.AsInteger := RegistraEsamiPKPRESTAZIONI.AsInteger;
            RegistraSpecxPrest.Post;
            RichSpecxPrest.Next;
          end;

          if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) and Materiali.Locate('PROGRESSIVO_RIGA',codici[x-1],[]) then
          begin
              RegistraMateriali.Append;
              RegistraMaterialiMAGART_FK.AsInteger := Materiali.Fieldbyname('MAGART_FK').AsInteger;
              RegistraMaterialiQUANTITA.asFloat := Materiali.Fieldbyname('QUANTITA').AsFloat;
              RegistraMateriali.Post;
          end;

        end;
        Richiesti.Next;
       end;
       if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) then
          FDMCommon.AstaClientSocket.SendDataSetTransactions(Name,[RegistraEsami,RegistraMateriali,RegistraSpecxPrest])
       else
          FDMCommon.AstaClientSocket.SendDataSetTransactions(Name,[RegistraEsami,RegistraSpecxPrest]);
       QyPreno.RefreshRecord;
       RefreshEsamixPreno(xItem);
       SpostaInMemoria;
    except
       on E:EAbort do
       begin
          if (QyPreno.State in dsEditModes) then
              QyPreno.Cancel;
          DBDaySource.EndUpdate;
          DBPlanner.Refresh;
       end;
       on E:Exception do
       begin
          if (QyPreno.State in dsEditModes) then
              QyPreno.Cancel;
          if (xKey<>'') and QyPreno.Locate(DBDaySource.KeyField,xKey,[]) then
             DBDaySource.DeleteDBItem(DBPlanner);
          DBDaySource.EndUpdate;
          DBPlanner.Items.ResetUpdate;
          DBPlanner.Refresh;
          raise;
       end;
    end;
    finally
        RichSpecxPrest.Filtered := False;
        AlertEventList.Active := true;
        codici.free;
    end;
end;

procedure TPrenoTest.StampaPrenotazioneExecute(Sender: TObject);
begin
  inherited;

  AlertEventList.Active := false;
  FStampaAvvisi := TFStampaAvvisi.Create(nil);
  try
//     FStampaAvvisi.ReportDataSource.Dataset := QyPreno;
     FStampaAvvisi.xDataset := QyPreno;
     FStampaAvvisi.Caption := 'Stampe prenotazione';
     FStampaAvvisi.CaricaStampe := 10;
     FStampaAvvisi.ShowModal;
     if QyPrenoSTATOVISITA.AsInteger=10 then
        ConfermaPrenotazioni(QyPrenoIMPEGNATIVE_FK.AsInteger);
  finally
     FStampaAvvisi.Free;
     FStampaAvvisi := nil;
     AlertEventList.Active := true;
  end;

end;

procedure TPrenoTest.DBPlannerPlannerKeyLimit(Sender: TObject; Key: Word);
begin
  inherited;
  case Key of
  VK_LEFT:  DBDaySource.Prev;
  VK_RIGHT: DBDaySource.Next;
  end;

end;

procedure TPrenoTest.aCutUpdate(Sender: TObject);
begin
  inherited;
  aCut.Enabled := ((Preno=nil) and ValidaModificaItem(DBPlanner.Items.DBItem)) or
                             ( (DBPlanner.Items.DBItem<>nil) and (DBPlanner.Items.DBItem.Status<>10)
                               {and ( ((DBPlanner.Items.DBItem.Status=10) and (DBPlanner.Items.DBItem.UserID=gblCodUtente))}
                                 {or (pkrefer=DBPlanner.Items.DBItem.DBKey))});
end;

procedure TPrenoTest.SendPortDataToForm(const s: string; lungh: integer);
begin
    inherited;
end;

procedure TPrenoTest.DBPlannerPlannerKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState; Position, FromSel, FromSelPrecis,
  ToSel, ToSelPrecis: Integer);
var
  oldcopiavis: boolean;
begin
  inherited;
  if Key=VK_RETURN then
  begin
     oldcopiavis := fCopiaVisibile;
     fCopiaVisibile := false;
     try
       aPaste.Execute;
       xSetFocus;
     finally
        fCopiaVisibile := oldcopiavis;
     end;
  end;
end;

procedure TPrenoTest.aAltriPresidiExecute(Sender: TObject);
begin
  inherited;
  PostMessage(TWinControl(Parent.Owner).Handle,SY_RIPRENOTA,0,0);
end;

procedure TPrenoTest.aAltriPresidiUpdate(Sender: TObject);
begin
  inherited;
  aAltriPresidi.Enabled := (FxAltriPresidi=2) {and not fCopiaVisibile};
end;


procedure TPrenoTest.RiPrenota(const xCaption: string; xrep: integer; xdata: TDateTime);
var
  i: integer;
  pkt: integer;
begin
    AdvPanel.Caption.Text := '<P align="center">' + xCaption + '</P>';
//    vReparti := xrep;
    pkt := -1;

    for i:=0 to DBPlanner.Items.Count-1 do
       if (DBPlanner.Items[i].Status=10) and (DBPlanner.Items[i].UserID=gblcodutente) then
       begin
          if qyPreno.Locate('PKTRIAGE',DBPlanner.Items[i].DBKey,[]) then
          begin
             pkt := qyPrenoPKTRIAGE.AsInteger;
             qyPreno.Edit;
             qyPrenoREPARTI_FK.AsInteger := xrep;
             qyPreno.Post;
             if FDMCommon.AstaCut.Locate('PKTRIAGE',DBPlanner.Items[i].DBKey,[]) then
             begin
                FDMCommon.AstaCut.Edit;
                FDMCommon.AstaCutREPARTI_FK.AsInteger := xrep;
                FDMCommon.AstaCut.Post;
             end;
             break;
          end;
       end;

    Sincronizza(xdata,false);
    xDay := xdata;

    DBPlanner.Refresh;

    if pkt>0 then
    begin
      InDragDrop := true;
      try
        CercaInCalendari(vdurata);
        Incolla(DBPlanner.xStartTime);
      finally
        InDragDrop := false;
      end;
    end;

end;


procedure TPrenoTest.aRiapriPrenoExecute(Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_RIAPRIPRENO,0,QyPrenoIMPEGNATIVE_FK.AsInteger);
end;

procedure TPrenoTest.StampaPrenotazioneUpdate(Sender: TObject);
begin
  inherited;
  StampaPrenotazione.Enabled := ValidaModificaItem(DBPlanner.Items.DBItem);
end;

procedure TPrenoTest.aRiapriPrenoUpdate(Sender: TObject);
begin
  inherited;
  aRiapriPreno.Enabled := (Preno<>nil);
end;

procedure TPrenoTest.DBPlannerDragDropItem(Sender, Source: TObject; X,
  Y: Integer; PlannerItem: TPlannerItem);
var
  avanti: boolean;
  xStartTime: TDateTime;
begin
  inherited;

    AlertEventList.Active := false;
    try

    if (Source is TPlannerGrid) then
    begin
       // -- spostamento su se stesso...
       xStartTime := DBPlanner.Items.TrovaTempoMax(DBPlanner.CellToTime(x,y), x,y, TsyPlannerItem(PlannerItem).Durata, PlannerItem {DBPlanner.Items.selected});
       Sposta(TPrenoTest(TPlannerGrid(Source).Owner.Owner),x,y, xStartTime)
    end
    else begin
      DBPlanner.Items.DBItem := PlannerItem;
      DBDaySource.GotoDBItem;

      { controllo se si può eseguire lo spostamento }
      avanti := true;
  (*
      avanti := Possibili.Locate('CODICE;SERVIZI_FK',
                        VarArrayOf([AstaDettCODICE.AsString,QyPrenoDIAGNOSTICA_FK.AsInteger]),[]);
      if not avanti then
      begin
         MsgDlg(
         format(RS_NonEsameInOrario,[AstaDettCODICE.AsString,AstaDettDESCRIZIONE.AsString]),
         '', ktWarning, [kbOK]);
      end;
  *)
      if avanti then
      begin

  //      ModificaxImpegnative.Parambyname('impegnative_fk').AsInteger := AstaCutIMPEGNATIVE_FK.AsInteger;
  //      ModificaxImpegnative.syrefresh;

        FDMCommon.SpostaEsame.Parambyname('triage_old').AsInteger := FDMCommon.AstaCutPKTRIAGE.AsInteger;
        FDMCommon.SpostaEsame.Parambyname('triage_new').AsInteger := qyPrenoPKTRIAGE.AsInteger;
        FDMCommon.SpostaEsame.Parambyname('pkprestazioni').AsInteger := FDMCommon.AstaDettPKPRESTAZIONI.AsInteger;
        FDMCommon.SpostaEsame.Parambyname('user_id').AsInteger := gblCodUtente;
        FDMCommon.SpostaEsame.ExecCommit;

        SendMessage(TWinControl(Parent.Owner).Handle,SY_CANCDETTCUTPASTE,FDMCommon.AstaCutPKTRIAGE.AsInteger,FDMCommon.AstaDettPKPRESTAZIONI.AsInteger);
  //      RefreshImpegnative(AstaCutIMPEGNATIVE_FK.AsInteger,false,true,false);
        qyPreno.syRefresh;
        DBPlanner.Refresh;

      end;
    end;

    finally
       AlertEventList.Active := true;
    end;

end;

procedure TPrenoTest.ModiAgenda(xres: TPosCalendario);
begin
{$IFNDEF MEDICORNER}
  FCalDiagn := TFCalDiagn.Create(nil);
  with FCalDiagn do
  try

    if not QyLkServizi.Locate('PKSERVIZI',xres.servizi_fk,[]) then
       Exit;

    dxSubDiag.Tag := QyLkServiziPKSERVIZI.AsInteger;
    Scheduler.DateNavigator.Date := xres.ora_inizio;
//    aAggiornaVista.Execute;
//	  ApriAgende(Scheduler.DateNavigator.RealFirstDate,Scheduler.DateNavigator.RealLastDate);
    SelectEvent(xres.pkagende,False);
    ModificaAgenda(not FDMCommon.UserModAgende);

  finally
     FreeAndNil(FCalDiagn);
  end;
{$ENDIF}
end;

procedure TPrenoTest.aModiOrarioPrenoExecute(Sender: TObject);
var
  xres: TPosCalendario;
begin
  xres.pkagende := QyPrenoAGENDE_FK.AsInteger;
  xres.servizi_fk := QyPrenoDIAGNOSTICA_FK.AsInteger;
  xres.ora_inizio := QyPrenoORA_INIZIO.AsDateTime;
  ModiAgenda(xres);
end;

procedure TPrenoTest.aModiOrarioCalendExecute(Sender: TObject);
var
  res: TPosCalendario;
  iper,xStartTime: TDateTime;
  xServizi: integer;
begin

  xStartTime := xRightTime;  // DBPlanner.CellToTime(DBPlanner.SelPosition,DBPlanner.SelItemBegin);
  xServizi := -1;
  // -- per puntare restocal
  if not ResToPos.IsEmpty then
  begin
     xServizi := vResToPos[DBDaySource.PosToRes(DBPlanner.SelPosition)];
     InOrario(xServizi,Trunc(xStartTime),xStartTime,iper);
  end;

  res := CalendarioFromOrario(xServizi,DateOf(xStartTime),xStartTime);

  ModiAgenda(res);

end;

procedure TPrenoTest.aModiOrarioCalendUpdate(Sender: TObject);
var
  iper,xStartTime: TDateTime;
begin

  xStartTime := xRightTime;  // DBPlanner.CellToTime(DBPlanner.SelPosition,DBPlanner.SelItemBegin);
  aModiOrarioCalend.Enabled := not ResToPos.IsEmpty and InOrario(vResToPos[DBDaySource.PosToRes(DBPlanner.SelPosition)],Trunc(xStartTime),xStartTime,iper);

end;

procedure TPrenoTest.DBPlannerPlannerRightClick(Sender: TObject; Position,
  FromSel, FromSelPrecise, ToSel, ToSelPrecise, mX, mY: Integer);
begin
  inherited;
  xRightTime := DBPlanner.AbsPixelToTime(DBDaySource.PosToDay(Position),mY);
end;

procedure TPrenoTest.DBPlannerPlannerHint(Sender: TObject; ItemBegin,
  ItemPos: Integer; var Hint: String);
var
//  xgiorno: TDateTime;
  tini: TDateTime;
  trovato: boolean;
  xservizi: integer;
  xres: integer;
begin

    trovato := false;
    if ResToCal.Active and (ResToCal.recordcount>0) then
    begin
//      xgiorno := DBDaySource.PosToDay(ItemPos);
      tini := DBPlanner.CellToTime(ItemPos,ItemBegin);
      xres := DBDaySource.PosToRes(ItemPos);
      if (xres>=0) and (xres<nr_res) then
      begin
        xservizi := vResToPos[xres];
//        ResToCal.Locate('DATA_PRENO;SERVIZI_FK',VarArrayOf([xGiorno,xServizi]),[]);
        ResToCal.Locate('SERVIZI_FK',xServizi,[]);
        while not ResToCal.Eof and
           (ResToCalSERVIZI_FK.AsInteger=xServizi)
           {and (CompareDate(ResToCalDATA_PRENO.AsDateTime,xGiorno)=0)} do
        begin
          if (CompareTime(ResToCalORA_INIZIO.AsDateTime,tini)<=0) and
             (CompareTime(ResToCalORA_FINE.AsDateTime,tini)>0) then
          begin
               trovato := true;
               break;
          end;
          if not trovato then
             ResToCal.Next;
       end;
      end;
    end;

    if trovato then
    begin

      Hint := '<P><B>' + TimeToStr(ResToCalORA_INIZIO.AsDateTime) + ' - ' + TimeToStr(ResToCalORA_FINE.AsDateTime) + '</B><BR>' +
              '<B>' + ResToCalDESCSERVRAD.AsString + '</B><BR>';

      Hint := Hint + '<BR>' + 'Accesso: ' + ResToCalDESCPROVENIENZA.AsString + '</B><BR>';

      if not ResToCalTIPOATTIVITA.IsNull then
      begin
         Hint := Hint + '<B>Tipo: ' + ResToCalTIPOATTIVITA.AsString + '</B><BR>';
      end;

      if ResToCalPROVENIENZA.AsString='E' then
      begin
        if not ResToCalOSPEDALE.IsNull then
        begin
           Hint := Hint + '<B>Provenienza: ' + ResToCalOSPEDALE.AsString + '</B><BR>';
        end;
      end
      else if ResToCalPROVENIENZA.AsString='I' then
      begin
        if not ResToCalDIPARTIMENTO.IsNull then
        begin
           Hint := Hint + '<B>Dip.: ' + ResToCalDIPARTIMENTO.AsString + '</B><BR>';
        end;
        if not ResToCalREPARTO.IsNull then
        begin
           Hint := Hint + '<B>Reparto: ' + ResToCalREPARTO.AsString + '</B><BR>';
        end;
        if not ResToCalSERVIZIO.IsNull then
        begin
           Hint := Hint + '<B>Servizio: ' + ResToCalSERVIZIO.AsString + '</B><BR>';
        end;
      end;

      Hint := Hint + '</P>';

    end;

end;

procedure TPrenoTest.DBPlannerDragOverCell(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean; mx, my: Integer);
var
  xMouseTime,xTimeCell,iper: TDateTime;
  xServizi: integer;
begin
  inherited;

  if ResToPos.IsEmpty then
  begin
     Accept := false;
     exit;
  end;

  xTimeCell := DBPlanner.CellToTime(x,y);
  xServizi := vResToPos[DBDaySource.PosToRes(x)];
  xMouseTime := DBPlanner.AbsPixelToTime(DBDaySource.PosToDay(x),mY);
  Accept := InOrario(xServizi,Trunc(xMouseTime),xMouseTime,iper);
  if CompareDateTime(iper,xTimeCell)=GreaterThanValue then
     xTimeCell := iper;

  if Accept then
  begin
    if (Source is TPlannerGrid) then
        Accept := (DBPlanner.Items.TrovaTempoMax(xTimeCell, x,y, TsyPlannerItem(DBPlanner.Items.selected).Durata, DBPlanner.Items.selected)>0)
    else if (Source is TcxDragControlObject) then
        Accept := (DBPlanner.Items.TrovaTempoMax(xTimeCell, x,y, FDMCommon.AstaCutDURATA.AsInteger)>0)
    else
        Accept := false;
  end;

{
  if (Source is TPlannerGrid) then
      Accept := not ResToPos.IsEmpty and
                InOrario(vResToPos[DBDaySource.PosToRes(X)],
                     DBDaySource.PosToDay(X),
                     TPlanner(Sender).CellToTime(X,Y)) and
                (DBPlanner.Items.TrovaTempoMax(DBPlanner.CellToTime(x,y), x,y, TsyPlannerItem(DBPlanner.Items.selected).Durata, DBPlanner.Items.selected)>0)
  else if (Source is TcxDragControlObject) then
      Accept := not ResToPos.IsEmpty and
                InOrario(vResToPos[DBDaySource.PosToRes(X)],
                     DBDaySource.PosToDay(X),
                     TPlanner(Sender).CellToTime(X,Y)) and
                (DBPlanner.Items.TrovaTempoMax(DBPlanner.CellToTime(x,y), x,y, FDMCommon.AstaCutDURATA.AsInteger)>0)
  else
     Accept := false;
}
end;

procedure TPrenoTest.aAltrePrenoExecute(Sender: TObject);
var
  i: integer;
begin

  if FDMCommon.AstaTestata.recordcount>0 then
  begin
     FDMCommon.AstaTestata.Empty;
     FDMCommon.AstaDettagli.Empty;
//     DBPlanner.Refresh;
//     exit;
  end;
  FDMCommon.AstaTestata.Append;

  for i:=0 to QyPreno.FieldCount-1 do
      if FDMCommon.AstaTestata.FindField(QyPreno.Fields[i].FieldName)<>nil then
         FDMCommon.AstaTestata.FieldbyName(QyPreno.Fields[i].FieldName).Value := QyPreno.Fields[i].Value;
  FDMCommon.AstaTestata.Post;
  if fConEsami then
  begin
    EsamixPreno.CancelRange;
    EsamixPreno.SetRange([QyPrenoPKTRIAGE.AsInteger],[QyPrenoPKTRIAGE.AsInteger]);
{
    EsamixPreno.Filtered := false;
    EsamixPreno.Filter := format('TRIAGE_FK = %d',[QyPrenoPKTRIAGE.AsInteger]);
    EsamixPreno.Filtered := true;
}
    while not EsamixPreno.eof do
    begin
       FDMCommon.AstaDettagli.Append;
       for i:=0 to EsamixPreno.FieldCount-1 do
        if FDMCommon.AstaDettagli.FindField(EsamixPreno.Fields[i].FieldName)<>nil then
           FDMCommon.AstaDettagli.FieldbyName(EsamixPreno.Fields[i].FieldName).Value := EsamixPreno.Fields[i].Value;
       FDMCommon.AstaDettagli.Post;
       EsamixPreno.Next;
    end;
  end
  else begin
        RefreshDettagli.Parambyname('TRIAGE_FK').AsInteger := QyPrenoPKTRIAGE.AsInteger;
        RefreshDettagli.open;
        while not RefreshDettagli.eof do
        begin
           FDMCommon.AstaDettagli.Append;
           for i:=0 to RefreshDettagli.FieldCount-1 do
            if FDMCommon.AstaDettagli.FindField(RefreshDettagli.Fields[i].FieldName)<>nil then
               FDMCommon.AstaDettagli.FieldbyName(RefreshDettagli.Fields[i].FieldName).Value := RefreshDettagli.Fields[i].Value;
           FDMCommon.AstaDettagli.Post;
           RefreshDettagli.Next;
        end;
        RefreshDettagli.close;
  end;
  DBPlanner.Refresh;

  PostMessage(TWinControl(Parent.Owner).Handle,SY_APRIALTREPRENO,0,0);

end;

procedure TPrenoTest.aAltrePrenoUpdate(Sender: TObject);
begin
  inherited;
  aAltrePreno.Enabled := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) and ValidaModificaItem(DBPlanner.Items.DBItem);
end;

procedure TPrenoTest.aInfoOperatoreExecute(Sender: TObject);
begin
  inherited;
  FNote := TFNote.Create(nil);
  try
     FNote.sNote.Dataset := QyPreno;
     FNote.ShowModal;
  finally
     FNote.Free;
  end;

end;

procedure TPrenoTest.aInfoOperatoreUpdate(Sender: TObject);
begin
  inherited;
  aInfoOperatore.Enabled := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1) and not QyPreno.IsEmpty; //and (not QyPrenoNOTE_PRENO.IsNull and (QyPrenoNOTE_PRENO.AsString<>''));
end;

procedure TPrenoTest.aCambiaSomministrazioneExecute(Sender: TObject);
begin
{$IFNDEF MEDICORNER}
 FOraInfusione := TFOraInfusione.Create(nil);
 try
    FOraInfusione.cxSomministra.Properties.MinDate := Date();
    FOraInfusione.cxSomministra.Date := QyPrenoORA_SOMMIN.AsDateTime;
//    FOraInfusione.cxEsecuzione.Date := refData.FieldByName('ORA_INIZIO').AsDateTime;
    FOraInfusione.AncheEsecuzione := false; //true;
    if FOraInfusione.ShowModal=mrOk then
    begin
      QyPreno.Edit;
      QyPrenoORA_SOMMIN.AsDateTime := FOraInfusione.cxSomministra.Date;
  //    refData.FieldByName('ORA_INIZIO').AsDateTime := FOraInfusione.cxEsecuzione.Date;
      QyPreno.Post;
    end;
 finally
    FOraInfusione.Free;
 end;
{$ENDIF}
end;

procedure TPrenoTest.aCambiaSomministrazioneUpdate(Sender: TObject);
begin
  aCambiaSomministrazione.Enabled := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) and not QyPreno.IsEmpty and (QyPrenoSTATOVISITA.AsInteger in [20,110]);
end;

procedure TPrenoTest.RegistraMaterialiNewRecord(DataSet: TDataSet);
begin
  inherited;
  RegistraMaterialiPRESTAZIONI_FK.AsInteger := RegistraEsamiPKPRESTAZIONI.AsInteger;
  RegistraMaterialiTIPO.AsInteger := 1;

end;

procedure TPrenoTest.aCancellaPrenotazioneUpdate(Sender: TObject);
begin
  inherited;
  aCancellaPrenotazione.Enabled := (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,6]) and ValidaModificaItem(DBPlanner.Items.DBItem);
end;

end.
