unit DaStampare;

interface

uses
  BaseGrid, IInterface, IIConsts, Messages, cxGraphics, cxControls, 
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, 
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxPrnDev, dxPrnDlg, Menus, 
  UDXPopup, dxBar, rsStorage, rsPropSaver, AstaDrv2, AstaClientDataset, 
  dxBarExtItems, cxClasses, KSEventClient, Classes, ActnList, cxGridLevel, 
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView, 
  cxGrid, cxPC, Controls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, 
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, 
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, 
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPScxPageControlProducer, 
  dxPSCore, dxPScxCommon, dxSkinsCore, dxSkinsDefaultPainters, 
  dxSkinscxPCPainter, dxSkinsdxBarPainter, cxCalendar, cxBarEditItem, 
  cxSpinEdit, rsXmlData, cxNavigator, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxPivotGridLnk, dxPSdxLCLnk, dxPSdxDBOCLnk,
  dxBarBuiltInMenu, dxPSPrVwRibbon, dxPScxSchedulerLnk,
  dxSkinsdxRibbonPainter;

{$I syVer.inc}

type
  TFDaStampare = class(TFBaseGrid)
    ActionList: TActionList;
    sRefertazione: TDataSource;
    AlertEventList1: TKSAstaEventClient;
    Ricerca: TAction;
    dxBarManDaStampare: TdxBarManager;
    dxBarManDaStampareBar1: TdxBar;
    dxBarManDaStampareBar2: TdxBar;
    Radiologico: TdxBarEdit;
    Refertazione: TAstaClientDataSet;
    RefertazionePKTRIAGE: TIntegerField;
    RefertazioneCOD_MED_FIRMA: TIntegerField;
    RefertazioneURGENZA: TIntegerField;
    RefertazioneASSISTIBILI_FK: TIntegerField;
    RefertazioneREPARTI_FK: TIntegerField;
    RefertazioneNOMINATIVO: TStringField;
    RefertazioneSERVIZIO_RICH_FK: TIntegerField;
    RefertazioneREP_RICH: TIntegerField;
    RefertazioneCOD_MED_INT: TIntegerField;
    RefertazioneREPARTO: TStringField;
    RefertazioneSERVIZIO: TStringField;
    RefertazioneMEDRISERVATO: TStringField;
    rsPropSaver1: TrsPropSaver;
    RiportaStandard: TAction;
    Personalizza: TAction;
    dxBarPopupDaStampare: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxDaConsegnare: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    RefertazioneSTATOVISITA: TIntegerField;
    RefertazioneUSER_ID: TIntegerField;
    dxConsegnati: TdxBarButton;
    Storico: TAction;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    RefertazionePKIMPEGNATIVE: TIntegerField;
    dxEsterni: TdxBarButton;
    dxInterni: TdxBarButton;
    dxPS: TdxBarButton;
    dxTutti: TdxBarButton;
    RefertazioneDATA_REFERTO: TDateTimeField;
    Consegnati: TAstaClientDataSet;
    ConsegnatiPKTRIAGE: TIntegerField;
    ConsegnatiCOD_MED_FIRMA: TIntegerField;
    ConsegnatiURGENZA: TIntegerField;
    ConsegnatiASSISTIBILI_FK: TIntegerField;
    ConsegnatiREPARTI_FK: TIntegerField;
    ConsegnatiNOMINATIVO: TStringField;
    ConsegnatiSERVIZIO_RICH_FK: TIntegerField;
    ConsegnatiREP_RICH: TIntegerField;
    ConsegnatiCOD_MED_INT: TIntegerField;
    ConsegnatiREPARTO: TStringField;
    ConsegnatiSERVIZIO: TStringField;
    ConsegnatiMEDRISERVATO: TStringField;
    ConsegnatiSTATOVISITA: TIntegerField;
    ConsegnatiUSER_ID: TIntegerField;
    ConsegnatiPKIMPEGNATIVE: TIntegerField;
    ConsegnatiDATA_REFERTO: TDateTimeField;
    sConsegnati: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabStampare: TcxTabSheet;
    cxGrid1: TcxGrid;
    GridDaRefertare: TcxGridDBTableView;
    GridDaRefertarePKIMPEGNATIVE: TcxGridDBColumn;
    GridDaRefertarePKTRIAGE: TcxGridDBColumn;
    GridDaRefertareDATA_VISITA: TcxGridDBColumn;
    GridDaRefertareNOMINATIVO: TcxGridDBColumn;
    GridDaRefertareREPARTO: TcxGridDBColumn;
    GridDaRefertareSERVIZIO: TcxGridDBColumn;
    GridDaRefertareMEDRISERVATO: TcxGridDBColumn;
    GridDaRefertareSTATOVISITA: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxTabConsegnati: TcxTabSheet;
    cxGrid2: TcxGrid;
    GridConsegnati: TcxGridDBTableView;
    GridConsegnatiPKIMPEGNATIVE: TcxGridDBColumn;
    GridConsegnatiPKTRIAGE: TcxGridDBColumn;
    GridConsegnatiDATA_VISITA: TcxGridDBColumn;
    GridConsegnatiNOMINATIVO: TcxGridDBColumn;
    GridConsegnatiREPARTO: TcxGridDBColumn;
    GridConsegnatiSERVIZIO: TcxGridDBColumn;
    GridConsegnatiMEDRISERVATO: TcxGridDBColumn;
    GridConsegnatiSTATOVISITA: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxBarButton10: TdxBarButton;
    RefertazioneDATA_NASCITA: TDateTimeField;
    GridConsegnatiDATA_NASCITA: TcxGridDBColumn;
    ConsegnatiDATA_NASCITA: TDateTimeField;
    GridDaRefertareDATA_NASCITA: TcxGridDBColumn;
    GridDaRefertareURGENZA: TcxGridDBColumn;
    dxAutoSize: TdxBarButton;
    dxBarPopConsegnati: TdxBarPopupMenu;
    aRitornaDaCons: TAction;
    RitornaDaConsegnare: TAstaClientDataSet;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    aStampaModuli: TAction;
    ConsegnatiPROVENIENZA: TStringField;
    RefertazionePROVENIENZA: TStringField;
    RefertazioneDATA_ACCETTAZIONE: TDateTimeField;
    RefertazioneDATA_VISITA: TDateTimeField;
    ConsegnatiDATA_ACCETTAZIONE: TDateTimeField;
    ConsegnatiDATA_VISITA: TDateTimeField;
    qryUser: TAstaClientDataSet;
    qryUserREAL_NAME: TStringField;
    qryUserUSER_PWD: TStringField;
    qryUserUSER_ID: TIntegerField;
    qryUserMATRICOLA: TStringField;
    qryUserISADMIN: TIntegerField;
    qryUserPROFILO_VOCALE: TStringField;
    qryUserCOD_FUNZIONE: TIntegerField;
    qryUserPKPERSONALE: TIntegerField;
    RefertazioneDIAGNOSTICA: TStringField;
    GridDaRefertareDIAGNOSTICA: TcxGridDBColumn;
    ConsegnatiDIAGNOSTICA: TStringField;
    GridConsegnatiDIAGNOSTICA: TcxGridDBColumn;
    aVisualizzaImmagini: TAction;
    dxBarButton14: TdxBarButton;
    RefertazioneRIS_STUDY_EUID: TStringField;
    ConsegnatiRIS_STUDY_EUID: TStringField;
    ConsegnatiCD_CREATO: TIntegerField;
    GridConsegnatiCD_CREATO: TcxGridDBColumn;
    RefertazioneCD_CREATO: TIntegerField;
    GridDaRefertareCD_CREATO: TcxGridDBColumn;
    RefertazioneCEIMMAGINI: TIntegerField;
    GridDaRefertareCEIMMAGINI: TcxGridDBColumn;
    ConsegnatiCEIMMAGINI: TIntegerField;
    GridConsegnatiCEIMMAGINI: TcxGridDBColumn;
    ConsegnatiDATA_CONSEGNA: TStringField;
    GridConsegnatiDATA_CONSEGNA: TcxGridDBColumn;
    RefertazioneNOTE_PRENO: TStringField;
    GridDaRefertareNOTE_PRENO: TcxGridDBColumn;
    ConsegnatiNOTE_PRENO: TStringField;
    GridConsegnatiNOTE_PRENO: TcxGridDBColumn;
    RefertazioneTIPO_ACCESSO: TStringField;
    ConsegnatiTIPO_ACCESSO: TStringField;
    aConsegnaReferti: TAction;
    RefertazioneDATA_CONSEGNA: TDateTimeField;
    dxBarButton8: TdxBarButton;
    ConsegnatiDESC_INVIO: TStringField;
    RefertazioneDESC_INVIO: TStringField;
    GridDaRefertareDESC_INVIO: TcxGridDBColumn;
    GridConsegnatiDESC_INVIO: TcxGridDBColumn;
    dxAttivaRefresh: TdxBarButton;
    aRefresh: TAction;
    dxBarButton15: TdxBarButton;
    EventLogCD: TKSAstaEventClient;
    aStampaGrigliaSelezionati: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    dxPrintGridDaConsegnare: TdxGridReportLink;
    dxPrintGridConsegnati: TdxGridReportLink;
    dxBarButton17: TdxBarButton;
    GridConsegnatiRIS_STUDY_EUID: TcxGridDBColumn;
    GridDaRefertareRIS_STUDY_EUID: TcxGridDBColumn;
    dxPrintDialogRef: TdxPrintDialog;
    dxDataDal: TcxBarEditItem;
    DettRefertazione: TAstaClientDataSet;
    DettRefertazionePKPRESTAZIONI: TFloatField;
    DettRefertazioneTRIAGE_FK: TIntegerField;
    DettRefertazioneSTATO: TIntegerField;
    DettRefertazioneIDENT_FK: TStringField;
    DettRefertazionePKCODICIRAD: TIntegerField;
    DettRefertazioneCODICE: TStringField;
    DettRefertazioneDESCRIZIONE: TStringField;
    DettRefertazioneDURATA: TIntegerField;
    DettRefertazioneNUMERO_PRESTAZIONE: TIntegerField;
    DettRefertazioneMAGART_FK: TIntegerField;
    DettRefertazioneQR: TFloatField;
    cxGrid1LevelDett: TcxGridLevel;
    GridDettDaRefertare: TcxGridDBTableView;
    sDettRefertazione: TDataSource;
    GridDettDaRefertareSTATO: TcxGridDBColumn;
    GridDettDaRefertareIDENT_FK: TcxGridDBColumn;
    GridDettDaRefertareCODICE: TcxGridDBColumn;
    GridDettDaRefertareDESCRIZIONE: TcxGridDBColumn;
    GridDettDaRefertareDURATA: TcxGridDBColumn;
    GridDettDaRefertareNUMERO_PRESTAZIONE: TcxGridDBColumn;
    GridDettDaRefertareMAGART_FK: TcxGridDBColumn;
    GridDettDaRefertareQR: TcxGridDBColumn;
    dxConEsami: TdxBarButton;
    DettConsegnati: TAstaClientDataSet;
    DettConsegnatiPKPRESTAZIONI: TFloatField;
    DettConsegnatiTRIAGE_FK: TIntegerField;
    DettConsegnatiSTATO: TIntegerField;
    DettConsegnatiIDENT_FK: TStringField;
    DettConsegnatiPKCODICIRAD: TIntegerField;
    DettConsegnatiCODICE: TStringField;
    DettConsegnatiDESCRIZIONE: TStringField;
    DettConsegnatiDURATA: TIntegerField;
    DettConsegnatiNUMERO_PRESTAZIONE: TIntegerField;
    DettConsegnatiMAGART_FK: TIntegerField;
    DettConsegnatiQR: TFloatField;
    sDettConsegnati: TDataSource;
    cxGrid2LevelDett: TcxGridLevel;
    GridDettConsegnati: TcxGridDBTableView;
    GridDettConsegnatiSTATO: TcxGridDBColumn;
    GridDettConsegnatiIDENT_FK: TcxGridDBColumn;
    GridDettConsegnatiCODICE: TcxGridDBColumn;
    GridDettConsegnatiDESCRIZIONE: TcxGridDBColumn;
    GridDettConsegnatiDURATA: TcxGridDBColumn;
    GridDettConsegnatiNUMERO_PRESTAZIONE: TcxGridDBColumn;
    GridDettConsegnatiMAGART_FK: TcxGridDBColumn;
    GridDettConsegnatiQR: TcxGridDBColumn;
    aStampaDaBarCode: TAction;
    aPreparaCdDaBarCode: TAction;
    RefertazioneETICHETTE: TIntegerField;
    GridDaRefertareETICHETTE: TcxGridDBColumn;
    dxBarSubItem2: TdxBarSubItem;
    ConsegnatiETICHETTE: TIntegerField;
    GridConsegnatiETICHETTE: TcxGridDBColumn;
    RefertazioneREF_STAMPATO: TIntegerField;
    ConsegnatiREF_STAMPATO: TIntegerField;
    GridConsegnatiREF_STAMPATO: TcxGridDBColumn;
    GridDaRefertareREF_STAMPATO: TcxGridDBColumn;
    dxSoloConsegna: TdxBarButton;
    dxSelezionaTutto: TdxBarButton;
    dxStampaReferto: TdxBarButton;
    dxCreaCD: TdxBarButton;
    dxStampaEtichette: TdxBarButton;
    dxCreaDocumenti: TdxBarButton;
    aCreaDocumenti: TAction;
    aSelezionaTutti: TAction;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxDataAl: TcxBarEditItem;
    dxAnticipo: TdxBarSpinEdit;
    dxBarDockControl1: TdxBarDockControl;
    dxBarStatic1: TdxBarStatic;
    aApriTutti: TAction;
    aChiudiTutti: TAction;
    dxBarButton3: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarcodeStampaReferto: TdxBarButton;
    dxBarcodeCreaCD: TdxBarButton;
    dxBarcodeEtichette: TdxBarButton;
    RefertazioneRADIOLOGIA: TStringField;
    GridDaRefertareRADIOLOGIA: TcxGridDBColumn;
    ConsegnaReferti: TAstaClientDataSet;
    ConsegnaRefertiRADIOLOGIA: TIntegerField;
    ConsegnaRefertiCONSEGNA_PER: TIntegerField;
    ConsegnatiRADIOLOGIA: TStringField;
    GridConsegnatiRADIOLOGIA: TcxGridDBColumn;
    aReferto: TAction;
    dxBarReferto: TdxBarButton;
    RefertazioneCEREFERTO: TIntegerField;
    ConsegnatiCEREFERTO: TIntegerField;
    GridDaRefertareCEREFERTO: TcxGridDBColumn;
    GridConsegnatiCEREFERTO: TcxGridDBColumn;
    RefertazioneCODICE_FISCALE: TStringField;
    ConsegnatiCODICE_FISCALE: TStringField;
    procedure RicercaUpdate(Sender: TObject);
    procedure RicercaExecute(Sender: TObject);
    procedure RefertazioneBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure RiportaStandardExecute(Sender: TObject);
    procedure PersonalizzaExecute(Sender: TObject);
    procedure dxTuttiRefertiClick(Sender: TObject);
    procedure dxDaConsegnareClick(Sender: TObject);
    procedure AlertEventList1DataSets0AcceptActiveEvent(Sender: ToelItem;
      var op: Char; ParamList: TInternalAstaParamList;
      var Accept: Boolean);
    procedure dxConsegnatiClick(Sender: TObject);
    procedure AlertEventList1AfterRefresh(Sender: TKSAstaEventClient);
    procedure AlertEventList1SetActive(Sender: TKSAstaEventClient);
    procedure StoricoExecute(Sender: TObject);
    procedure StoricoUpdate(Sender: TObject);
    procedure dxTuttiClick(Sender: TObject);
    procedure ConsegnatiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure GridConsegnatiDblClick(Sender: TObject);
    procedure dxAutoSizeClick(Sender: TObject);
    procedure aRitornaDaConsExecute(Sender: TObject);
    procedure aRitornaDaConsUpdate(Sender: TObject);
    procedure aStampaModuliExecute(Sender: TObject);
    procedure qryUserBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure aVisualizzaImmaginiExecute(Sender: TObject);
    procedure aVisualizzaImmaginiUpdate(Sender: TObject);
    procedure aConsegnaRefertiExecute(Sender: TObject);
    procedure aConsegnaRefertiUpdate(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure dxAttivaRefreshClick(Sender: TObject);
    procedure EventLogCDDataSets0AcceptActiveEvent(Sender: ToelItem;
      var op: Char; ParamList: TInternalAstaParamList;
      var Accept: Boolean);
    procedure aStampaGrigliaSelezionatiExecute(Sender: TObject);
    procedure aStampaGrigliaSelezionatiUpdate(Sender: TObject);
    procedure dxPrintDialogRefShow(Sender: TObject);
    procedure dxDataRitiroPropertiesCloseUp(Sender: TObject);
    procedure GridDaRefertareNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure GridConsegnatiNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure RadiologicoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DettRefertazioneBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure RefertazioneAfterPopulate(Sender: TObject);
    procedure dxConEsamiClick(Sender: TObject);
    procedure DettConsegnatiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure ConsegnatiAfterPopulate(Sender: TObject);
    procedure aStampaDaBarCodeExecute(Sender: TObject);
    procedure aPreparaCdDaBarCodeExecute(Sender: TObject);
    procedure aCreaDocumentiExecute(Sender: TObject);
    procedure aCreaDocumentiUpdate(Sender: TObject);
    procedure aSelezionaTuttiExecute(Sender: TObject);
    procedure aSelezionaTuttiUpdate(Sender: TObject);
    procedure dxSoloConsegnaClick(Sender: TObject);
    procedure dxStampaRefertoClick(Sender: TObject);
    procedure dxSoloStampaRefertoClick(Sender: TObject);
    procedure dxSoloCreaCDClick(Sender: TObject);
    procedure dxSoloEtichetteClick(Sender: TObject);
    procedure aApriTuttiExecute(Sender: TObject);
    procedure aApriTuttiUpdate(Sender: TObject);
    procedure aChiudiTuttiExecute(Sender: TObject);
    procedure aChiudiTuttiUpdate(Sender: TObject);
    procedure dxBarcodeStampaRefertoClick(Sender: TObject);
    procedure dxDataAlPropertiesCloseUp(Sender: TObject);
    procedure ConsegnaRefertiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure AlertEventList1BeforeRefresh(Sender: TKSAstaEventClient;
      var Accept: Boolean);
    procedure GridConsegnatiCustomization(Sender: TObject);
    procedure aRefertoExecute(Sender: TObject);
    procedure aRefertoUpdate(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure GridDaRefertareDblClick(Sender: TObject);
    procedure aStampaModuliUpdate(Sender: TObject);
  private
    { Private declarations }
    refData: TAstaClientDataset;
    refGrid: TcxGridDBTableView;
    refDettagli: TcxGridDBTableView;
    lpkt: TStringList;
    FResetEffettuato: boolean;
    FSelStampante: integer;
    procedure LeggiBarCode(var Message: TMessage); message SY_READBARCODE;
    procedure LeggiTessera(var Message: TMessage); message SY_READTESSERA;    
    procedure CaricaTriageSelezionati(Grid: TcxGridDBTableView);
    function RefertazioneEmptyDataset: boolean;
    function ConsegnatiEmptyDataset: boolean;
    function IsEmptyDataSet: Boolean;
    function GridAttuale: TcxGridDBTableView;
    function DatasetAttuale: TAstaClientDataset;
    function MultiRecord: boolean;
    procedure StampaLista;
    procedure StampaReferto(pSelezStampante: boolean);
    procedure PreparaCD;
    procedure StampaEtichette(pSelezStampante: Boolean);
    procedure ConsegnaRefertoDaStampare;
    procedure ConsegnaRefertoConsegnati;

  protected
    function  CercaReferto: TpCercaReferto; override;
    function GetCanClose: Boolean; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure DoShow; override;
    function CaricaToolBar: TdxBars; override;
    procedure SendPortDataToForm(const s: string; lungh: integer); override;
    function IsFormReady: boolean; override;
    function RecordAttuale: integer; override;
  end;

var
  FDaStampare: TFDaStampare;

implementation

uses
  DMCommon, SysUtils, DateUtils, cxStorage, CercaBarCode, AstaDBTypes,
{$IFNDEF MEDICORNER}
  CreaCDMicroprint,
  RefPreview,
{$ELSE}
  RefMedicorner,
{$ENDIF}  
{$IFDEF MADEXCEPT}
     madExcept, madTypes, madStrings,
{$ENDIF}
  ConsegnaRef, Windows, StampaAvvisi, Forms, MsgDlgs; 

{$R *.DFM}

procedure TFDaStampare.CaricaTriageSelezionati(Grid: TcxGridDBTableView);
var
  i: Integer;
  RecIdx: integer;
  pkVal: Variant;
//  pkr: Integer;
begin
    lpkt.Clear;
//    lstato.Clear;
    // -- carico tutti i triage dei pkreferti selezionati
    for i:=0 to Grid.Controller.SelectedRecordCount-1 do
    begin
      RecIdx := Grid.Controller.SelectedRecords[i].RecordIndex;
      pkVal := Grid.DataController.GetRecordId(RecIdx);

      Grid.DataController.Datasource.Dataset.Locate(Grid.DataController.KeyFieldNames, pkVal, []);
      lpkt.Add(Grid.DataController.Datasource.Dataset.FieldByName('PKTRIAGE').AsString);

    end;
end;

function TFDaStampare.RecordAttuale: integer;
var
  ref: TcxCustomGridTableItem;
begin
  if cxPageControl1.ActivePage=cxTabConsegnati then
  begin
    if (GridConsegnati.Controller.SelectedRecordCount=1) and
       (GridConsegnati.Controller.FocusedRecordIndex<>-1) and
       not (GridConsegnati.Controller.FocusedRecord is TcxGridGroupRow) then
    begin
       ref := GridConsegnati.DataController.GetItemByFieldName('PKTRIAGE');
       result := GridConsegnati.Controller.FocusedRecord.Values[ref.Index];
    end
    else
       result := -1;
  end
  else begin
    if (GridDaRefertare.Controller.SelectedRecordCount=1) and
       (GridDaRefertare.Controller.FocusedRecordIndex<>-1) and
       not (GridDaRefertare.Controller.FocusedRecord is TcxGridGroupRow) then
    begin
       ref := GridDaRefertare.DataController.GetItemByFieldName('PKTRIAGE');
       result := GridDaRefertare.Controller.FocusedRecord.Values[ref.Index];
    end
    else
       result := -1;
  end;
end;

function TFDaStampare.MultiRecord: boolean;
begin
  if cxPageControl1.ActivePage=cxTabConsegnati then
  begin
    result := (GridConsegnati.Controller.SelectedRecordCount>=1);
  end
  else begin
    result := (GridDaRefertare.Controller.SelectedRecordCount>=1);
  end;
end;

function TFDaStampare.CaricaToolBar: TdxBars;
begin
  result := dxBarManDaStampare.Bars;
end;


procedure TFDaStampare.StampaReferto(pSelezStampante: boolean);
var
  res: integer;
  i: integer;
begin

   CaricaTriageSelezionati(GridAttuale);

   dxPrintDialogRef.Title := RS_StampaRefertoHint;
   FSelStampante := FDMCommon.IndexStampanteNormale;

   if pSelezStampante then
   begin
     if not dxPrintDialogRef.Execute then
         exit;
   end
   else begin
        dxPrintDevice.PrinterIndex := FDMCommon.IndexStampanteNormale;
//        FDMCommon.SetPrinter(FDMCommon.StampanteNormale);
   end;

   for i:=0 to lpkt.Count-1 do
   begin

     if DatasetAttuale.Locate('PKTRIAGE',lpkt[i],[]) then
     begin

       res := VisualizzaReferto('',DatasetAttuale.FieldByName('PKTRIAGE').AsInteger,DatasetAttuale.FieldByName('NOMINATIVO').AsString,[tbtFirmato,tbtProvvisorio],[tprnStampaBatch,{tprnStampa,}tprnDaCreare]);

       if res=mrCancel then
          break;

       DatasetAttuale.Edit;
       DatasetAttuale.FieldByName('USER_ID').AsInteger := gblCodUtente;
       DatasetAttuale.FieldByName('REF_STAMPATO').AsInteger := 1;
       DatasetAttuale.Post;

     end;

   end;

end;


procedure TFDaStampare.RicercaUpdate(Sender: TObject);
begin
   Ricerca.Enabled := (Radiologico.Text<>'');
end;

procedure TFDaStampare.RicercaExecute(Sender: TObject);
begin
   CercaReferto;
end;

function TFDaStampare.CercaReferto: TpCercaReferto;
var
  oldi: integer;
  RecIdx: integer;
  tempG: TcxGridDBTableView;
  tempD: TAstaClientDataSet;
begin

  if dxConsegnati.Down then
  begin
     tempG := GridConsegnati;
     tempD := Consegnati;
  end
  else begin
     tempG := GridDaRefertare;
     tempD := Refertazione;
  end;

  oldi := tempG.DataController.FocusedRecordIndex;

  if not tempD.Locate('ris_study_euid',FDMCommon.syIntStr(Radiologico.Text),[]) then
  begin
      FCercaBarCode := TFCercaBarCode.Create(nil);
      try
        if FCercaBarCode.CercaSTUDY(Radiologico.Text) then
        begin
           result := tpcrStorico;
           FCercaBarCode.ShowModal;
        end
        else
           result := tpcrNonTrovato;
      finally
         FCercaBarCode.Free;
         FCercaBarCode := nil;
      end;
      GridDaRefertare.DataController.FocusedRecordIndex := oldi;
  end
  else
  begin
      if tempG.OptionsSelection.MultiSelect then
         tempG.DataController.ClearSelection;
      RecIdx := tempG.DataController.FindRecordIndexByKey(tempD.FieldByName('PKTRIAGE').AsInteger);
      if (RecIdx>-1) then
      begin
        tempG.DataController.FocusedRecordIndex := RecIdx;
        if Assigned(tempG.Controller.FocusedRecord) then
           tempG.Controller.FocusedRecord.Selected := true;
      end
      else
        tempG.DataController.FocusedRecordIndex := oldi;
      result := tpcrTrovato;        
  end;

end;


procedure TFDaStampare.DoShow;
begin

  inherited;

  rsPropSaver1.Storage.Load;
  rsPropSaver1.LoadValues;

  if dxDaConsegnare.Down then
     cxPageControl1.ActivePage := cxTabStampare
  else
     cxPageControl1.ActivePage := cxTabConsegnati;

  FDMCommon.SetVisible(GridDaRefertareDESC_INVIO,(FDMCommon.LeggiPostoLavoroCHK_CONSEGNA_REF.AsInteger>0));

  dxDataDal.EditValue := Date() - dxAnticipo.IntValue;
  dxDataAl.EditValue := Date();

  aVisualizzaImmagini.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);

  GridDaRefertare.RestoreFromrsStorage(TcxrsStorageReader.CreateNew(name+'.'+GridDaRefertare.Name,rsPropSaver1.Storage), false, false, [{gsoUseFilter,} {gsoUseSummary}]);
  GridConsegnati.RestoreFromrsStorage(TcxrsStorageReader.CreateNew(name+'.'+GridConsegnati.Name,rsPropSaver1.Storage), false, false, [{gsoUseFilter,} {gsoUseSummary}]);
  GridDaRefertare.OptionsView.CellAutoHeight := dxAutoSize.Down;
  GridDaRefertare.OptionsView.Footer := true;

  FDMCommon.SetVisible(GridDaRefertareNOTE_PRENO,(FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1));
  GridDaRefertare.OptionsBehavior.ImmediateEditor := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);
  GridDaRefertare.OptionsData.Editing := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);
  GridDaRefertare.OptionsSelection.CellSelect := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);

  cxGrid1LevelDett.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down;
  GridDettDaRefertareMAGART_FK.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);
  GridDettDaRefertareQR.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);
  GridDettDaRefertareNUMERO_PRESTAZIONE.Visible := (FDMCommon.LeggiPostoLavoroCHECK_NO_PRESTMULT.AsInteger=0) and not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);

  GridConsegnati.OptionsView.CellAutoHeight := dxAutoSize.Down;
  GridConsegnati.OptionsView.Footer := true;

  FDMCommon.SetVisible(GridConsegnatiNOTE_PRENO,(FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1));
  GridConsegnati.OptionsBehavior.ImmediateEditor := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);
  GridConsegnati.OptionsData.Editing := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);
  GridConsegnati.OptionsSelection.CellSelect := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);

  cxGrid2LevelDett.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down;
  GridDettConsegnatiMAGART_FK.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);
  GridDettConsegnatiQR.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);
  GridDettConsegnatiNUMERO_PRESTAZIONE.Visible := (FDMCommon.LeggiPostoLavoroCHECK_NO_PRESTMULT.AsInteger=0) and not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);

  if FDMCommon.LeggiPostoLavoroCHK_SLITTA_REP.AsInteger=1 then
  begin
     RefertazioneSERVIZIO.DisplayLabel := RS_Reparto;
  end;
  FDMCommon.SetVisible(GridDaRefertareSERVIZIO,(FDMCommon.LeggiPostoLavoroCHK_SLITTA_REP.AsInteger=1));
  FDMCommon.SetVisible(GridConsegnatiSERVIZIO,(FDMCommon.LeggiPostoLavoroCHK_SLITTA_REP.AsInteger=1));

  if dxConsegnati.Down then
  begin
    Consegnati.open;
    ActiveControl := GridConsegnati.Site;
    GridConsegnati.Controller.GotoFirst;
  end
  else begin
    Refertazione.open;
    ActiveControl := GridDaRefertare.Site;
    GridDaRefertare.Controller.GotoFirst;
  end;

  if FDMCommon.cdMaster.IsEmpty then
  begin
    dxBarcodeCreaCD.Down := False;
    dxBarcodeCreaCD.Enabled := False;
    dxCreaCD.Down := False;
    dxCreaCD.Enabled := False;
  end;

  if not FDMCommon.TabStampe.Locate('FUNZIONI_FK',40,[]) then
  begin
     dxBarcodeEtichette.Down := false;
     dxBarcodeEtichette.Enabled := false;
     dxStampaEtichette.Down := false;
     dxStampaEtichette.Enabled := false;
  end;

  ConsegnaReferti.Open;
  GridDaRefertareRADIOLOGIA.Visible := not ConsegnaReferti.IsEmpty and (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5);
  GridDaRefertareRADIOLOGIA.VisibleForCustomization := not ConsegnaReferti.IsEmpty;
  GridConsegnatiRADIOLOGIA.Visible := not ConsegnaReferti.IsEmpty and (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5);
  GridConsegnatiRADIOLOGIA.VisibleForCustomization := not ConsegnaReferti.IsEmpty;

  AlertEventList1.Active := dxAttivaRefresh.Down;

end;

constructor TFDaStampare.Create(AOwner: TComponent);
begin

  inherited;

  lpkt := TStringList.Create;
  FResetEffettuato := false;

  GridDaRefertare.DataController.DataModeController.SyncMode := true;
  GridDaRefertare.DataController.DataModeController.SmartRefresh := false;

  cxPageControl1.HideTabs := true;

  if FDMCommon.LeggiPostoLavoroCHK_CONSEGNA_CON_PSWD.AsInteger=1 then
     qryUser.open;

  cxPageControl1.Properties.ActivePage := cxTabStampare;
  refData := Refertazione;

  if FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5 then
  begin
     dxBarStatic1.Visible := ivNever;
     dxEsterni.Visible := ivNever;
     dxInterni.Visible := ivNever;
     dxPS.Visible := ivNever;
     dxTutti.Visible := ivNever;

     dxEsterni.Down := False;
     dxInterni.Down  := False;
     dxPS.Down := False;
     dxTutti.Down := True;
//     dxBarManDaStampareBar2.Visible := False;
  end;

end;

function TFDaStampare.GetCanClose: Boolean;
begin

  result := inherited GetCanClose;

  if result then
  begin
    if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5) and not FResetEffettuato and FCustomized then
    begin
       rsPropSaver1.SaveValues;
       GridConsegnati.StoreTorsStorage(TcxrsStorageWriter.CreateNew(name+'.'+GridConsegnati.Name,rsPropSaver1.Storage), true, [{gsoUseFilter,} gsoUseSummary]);
       GridDaRefertare.StoreTorsStorage(TcxrsStorageWriter.CreateNew(name+'.'+GridDaRefertare.Name,rsPropSaver1.Storage), true, [{gsoUseFilter,} gsoUseSummary]);
       rsPropSaver1.Storage.Save;
    end;
  end;

end;

destructor TFDaStampare.Destroy;
begin

  lpkt.Free;
{$IFNDEF MEDICORNER}
  if Assigned(FCreaCDMicroprint) then
     FreeAndNil(FCreaCDMicroprint);
{$ENDIF}
  inherited;

end;

procedure TFDaStampare.RefertazioneBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  Sender.Parambyname('dal').AsDateTime := dxDataDal.EditValue;
  Sender.Parambyname('al').AsDateTime := dxDataAl.EditValue;
  if dxEsterni.Down then
     Sender.Parambyname('provenienza').AsString := '# and ta.tipo_accesso = '+#39+'E'+#39
  else if dxInterni.Down then
     Sender.Parambyname('provenienza').AsString := '# and ta.tipo_accesso = '+#39+'I'+#39
  else if dxPS.Down then
     Sender.Parambyname('provenienza').AsString := '# and ta.tipo_accesso = '+#39+'P'+#39
  else
     Sender.Parambyname('provenienza').AsString := '#';

end;

procedure TFDaStampare.RiportaStandardExecute(Sender: TObject);
begin

   FResetEffettuato := true;
   rsPropSaver1.Storage.SectionClear(rsPropSaver1.RootSection);
   rsPropSaver1.Storage.SectionClear(name+'.'+GridConsegnati.Name);
   rsPropSaver1.Storage.SectionClear(name+'.'+GridDaRefertare.Name);
   GridConsegnati.OptionsView.DataRowHeight := 0;
   GridDaRefertare.OptionsView.DataRowHeight := 0;
   PostMessage(Application.MainForm.Handle,SY_REFRESHFORM,0,LongInt(self));

end;

procedure TFDaStampare.PersonalizzaExecute(Sender: TObject);
begin
  if dxConsegnati.Down then
     GridConsegnati.Controller.Customization := true
  else
     GridDaRefertare.Controller.Customization := true;
end;

procedure TFDaStampare.dxTuttiRefertiClick(Sender: TObject);
begin
  Refertazione.syRefresh;
end;


function TFDaStampare.IsFormReady: boolean;
begin
  result := True; //Active;
end;

procedure TFDaStampare.LeggiBarCode(var Message: TMessage);
begin
  inherited;
  if BarCodeLetto<>'' then
     SendPortDataToForm(BarCodeLetto, Length(BarCodeLetto));
end;

procedure TFDaStampare.LeggiTessera(var Message: TMessage);
begin
  if TesseraLetta.CodiceFiscale<>'' then
  begin
     SendPortDataToForm(TesseraLetta.CodiceFiscale, Length(TesseraLetta.CodiceFiscale));
     TesseraLetta.CodiceFiscale := '';
  end;
end;

procedure TFDaStampare.SendPortDataToForm(const s: string; lungh: integer);
var
  trovato,trova2: boolean;
  tipo: char;
  numero: integer;
  barcode: string;
begin

  inherited;
  
  if lungh=0 then exit;
  tipo := s[1];
  barcode := Copy(s,3,9);
  numero := StrToIntDef(barcode,-1);

  if not ((lungh=16) or (tipo in ['T',' ','@','A','P'])) then exit;

  if Assigned(FCercaBarCode) then
  begin
     FCercaBarCode.ModalResult := mrCancel;
     FCercaBarCode.Release;
  end
{$IFNDEF MEDICORNER}
  else if Assigned(FRefPreview) and dxConsegnati.Down and (numero=ConsegnatiPKIMPEGNATIVE.AsInteger) then
    FRefPreview.aStampa.Execute
  else if Assigned(FRefPreview) and not dxConsegnati.Down and (tipo in ['T',' ','@']) and (FDMCommon.syIntStr(barcode)=RefertazioneRIS_STUDY_EUID.AsString) then
    FRefPreview.aStampa.Execute
  else if Assigned(FRefPreview) and not dxConsegnati.Down and (tipo in ['A']) and (numero=RefertazionePKIMPEGNATIVE.AsInteger) then
    FRefPreview.aStampa.Execute
{$ELSE}
  else if Assigned(FRefMedicorner) and dxConsegnati.Down and (numero=ConsegnatiPKIMPEGNATIVE.AsInteger) then
    FRefMedicorner.aStampa.Execute
  else if Assigned(FRefMedicorner) and not dxConsegnati.Down and (tipo in ['T',' ','@']) and (FDMCommon.syIntStr(barcode)=RefertazioneRIS_STUDY_EUID.AsString) then
    FRefMedicorner.aStampa.Execute
  else if Assigned(FRefMedicorner) and not dxConsegnati.Down and (tipo in ['A']) and (numero=RefertazionePKIMPEGNATIVE.AsInteger) then
    FRefMedicorner.aStampa.Execute
{$ENDIF}
//  else if Assigned(FConsegnaRef) and dxConsegnati.Down and (tipo in ['T',' ','@']) and (numero=ConsegnatiPKTRIAGE.AsInteger) then
  else if Assigned(FConsegnaRef) and dxConsegnati.Down and (tipo in ['T',' ','@']) and (FDMCommon.syIntStr(barcode)=ConsegnatiRIS_STUDY_EUID.AsString) then
    FConsegnaRef.aConferma.Execute
  else if Assigned(FConsegnaRef) and dxConsegnati.Down and (tipo in ['A']) and (numero=ConsegnatiPKIMPEGNATIVE.AsInteger) then
    FConsegnaRef.aConferma.Execute
  else if Assigned(FConsegnaRef) and not dxConsegnati.Down and (tipo='P') then
  begin
       if qryUser.Locate('pkpersonale',numero,[]) then
       begin
          FConsegnaRef.xCodUtente := qryUserUSER_ID.AsInteger;
          FConsegnaRef.EseguitoAutomatico := true;
          FConsegnaRef.aConferma.Execute;
       end
       else
          MsgDlg(RS_UtenteNonTrovato, '', ktError, [kbOk], dfFirst);
  end
  else if Assigned(FConsegnaRef) and not dxConsegnati.Down and not (tipo in ['T',' ','@']) then
  begin
       if qryUser.Locate('matricola',barcode,[]) then
       begin
          FConsegnaRef.xCodUtente := qryUserUSER_ID.AsInteger;
          FConsegnaRef.EseguitoAutomatico := true;
          FConsegnaRef.aConferma.Execute;
       end
       else
          MsgDlg(RS_UtenteNonTrovato, '', ktError, [kbOk], dfFirst);
  end
  else if Assigned(FConsegnaRef) and not dxConsegnati.Down and (numero=RefertazionePKIMPEGNATIVE.AsInteger) then
  begin
       FConsegnaRef.aConferma.Execute;
  end
  else begin
    Radiologico.Text := IntToStr(numero);
    if not dxConsegnati.Down then
    begin
        if (tipo='A') then
           trovato := Refertazione.Locate('pkimpegnative',numero,[])
        else if (lungh=16) then
        begin
           trovato := Refertazione.Locate('CODICE_FISCALE',s,[]);
        end
        else
           trovato := Refertazione.Locate('ris_study_euid',FDMCommon.syIntStr(barcode),[]);
        if trovato then
           GridDaRefertare.DataController.CheckFocusedSelected;
    end
    else begin
        if (tipo='A') then
           trovato := Consegnati.Locate('pkimpegnative',numero,[])
        else if (lungh=16) then
        begin
           trovato := Refertazione.Locate('CODICE_FISCALE',s,[]);
        end
        else
           trovato := Consegnati.Locate('ris_study_euid',FDMCommon.syIntStr(barcode),[]);
        if trovato then
           GridConsegnati.DataController.CheckFocusedSelected;
    end;

    if trovato then
    begin
        if dxSoloConsegna.Down then
        begin
           PostMessage(Handle,SY_DBLCLICK,0,LongInt(aConsegnaReferti));
        end
        else // if not dxConsegnati.Down then
        begin
            if lungh=16 then
            begin
               PostMessage(Handle,SY_DBLCLICK,0,LongInt(aReferto));
               Exit;
            end;

            if dxBarcodeStampaReferto.Down {$IFNDEF MEDICORNER}and not Assigned(FCreaCDMicroprint){$ENDIF} then
//               PostMessage(Handle,SY_DBLCLICK,0,LongInt(aStampaDaBarCode));
               SendMessage(Handle,SY_DBLCLICK,0,LongInt(aStampaDaBarCode));
{$IFNDEF MEDICORNER}
            if dxBarcodeCreaCD.Down then
            begin
               if Assigned(FCreaCDMicroprint) then
               begin
                  FCreaCDMicroprint.daBarCode := true;
                  FCreaCDMicroprint.aIniziaCreazione.Execute;
               end
               else begin
//                  PostMessage(Handle,SY_DBLCLICK,0,LongInt(aPreparaCdDaBarCode));
                  SendMessage(Handle,SY_DBLCLICK,0,LongInt(aPreparaCdDaBarCode));
               end;
            end;
{$ENDIF}
            if dxBarcodeEtichette.Down {$IFNDEF MEDICORNER}and not Assigned(FCreaCDMicroprint){$ENDIF} then
//               PostMessage(Handle,SY_DBLCLICK,0,LongInt(aStampaModuli));
               SendMessage(Handle,SY_DBLCLICK,0,LongInt(aStampaModuli));
        end;
    end
    else begin
      FCercaBarCode := TFCercaBarCode.Create(nil);
      try
        trova2 := false;
        if tipo='A' then
        begin
          FCercaBarCode.CercaImpegnativa.Parambyname('pkimpegnative').AsInteger := numero;
          FCercaBarCode.CercaImpegnativa.open;
          if FCercaBarCode.CercaImpegnativa.IsEmpty then
             MsgDlg( format(RS_AccNonTrovata,[numero]), '', ktError, [kbOk], dfFirst)
          else begin
             FCercaBarCode.CercaBarCode.Parambyname('pktriage').AsInteger := FCercaBarCode.CercaImpegnativaPKTRIAGE.AsInteger;
             FCercaBarCode.CercaBarCode.open;
             if FCercaBarCode.CercaBarCode.IsEmpty then
                trova2 := true
             else
                MsgDlg( format(RS_RISSTUDYNonTrovato,[FDMCommon.syIntStr(barcode)]), '', ktError, [kbOk], dfFirst);

          end;
        end
        else begin
          if FCercaBarCode.CercaSTUDY(barcode) then
             trova2 := true;
        end;

        if trova2 then
           FCercaBarCode.ShowModal;

      finally
         FCercaBarCode.Free;
         FCercaBarCode := nil;
      end;
    end;
  end;

end;

procedure TFDaStampare.dxDaConsegnareClick(Sender: TObject);
begin
  if cxPageControl1.ActivePage<>cxTabStampare then
  begin
     cxPageControl1.ActivePage := cxTabStampare;
  end;
  Refertazione.syrefresh;
end;

procedure TFDaStampare.AlertEventList1DataSets0AcceptActiveEvent(
  Sender: ToelItem; var op: Char; ParamList: TInternalAstaParamList;
  var Accept: Boolean);
var
  xAccept: boolean;
begin

  Accept := ParamList.ParamByName('reparti_fk').AsInteger=gblpkrep;
  if not Accept then exit;

  if dxDaConsegnare.Down then
     xAccept := (ParamList.ParamByName('statovisita').AsInteger in [170,180])
  else
     xAccept := (ParamList.ParamByName('statovisita').AsInteger=190);

  case op of
  'D','E': Accept := true;
  'I': Accept := xAccept;
  'U','A':
       begin
           if {Accept and} (not xAccept) then
              op := 'D';
       end;
  end;

end;

procedure TFDaStampare.dxConsegnatiClick(Sender: TObject);
begin
  if cxPageControl1.ActivePage<>cxTabConsegnati then
  begin
    cxPageControl1.ActivePage := cxTabConsegnati;
    Consegnati.syrefresh;
  end;
end;

procedure TFDaStampare.AlertEventList1AfterRefresh(
  Sender: TKSAstaEventClient);
begin
{
     GridDaRefertare.DataController.EndLocate;
     GridDaRefertare.EndUpdate;
     GridDaRefertare.DataController.UpdateItems(False);
}
end;

procedure TFDaStampare.AlertEventList1SetActive(
  Sender: TKSAstaEventClient);
begin
  if not AlertEventList1.Active then
  begin
//     GridDaRefertare.BeginUpdate;
//     GridDaRefertare.DataController.BeginLocate;
  end
  else begin
//     GridDaRefertare.DataController.EndLocate;
//     GridDaRefertare.EndUpdate;
  end;

end;

procedure TFDaStampare.StoricoExecute(Sender: TObject);
begin
  if dxConsegnati.Down then
  begin
     StoricoOperazione(ConsegnatiPKTRIAGE.AsInteger);
  end
  else begin
     StoricoOperazione(RefertazionePKTRIAGE.AsInteger);
  end;

end;

procedure TFDaStampare.StoricoUpdate(Sender: TObject);
begin
  Storico.Enabled := (RecordAttuale<>-1);
end;

procedure TFDaStampare.dxTuttiClick(Sender: TObject);
begin
  if cxPageControl1.ActivePage=cxTabStampare then
     Refertazione.syrefresh
  else
     Consegnati.syrefresh;
end;

procedure TFDaStampare.ConsegnatiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  Sender.Parambyname('dal').AsDateTime := dxDataDal.EditValue;
  Sender.Parambyname('al').AsDateTime := dxDataAl.EditValue;
  if dxEsterni.Down then
     Sender.Parambyname('provenienza').AsString := '# and ta.tipo_accesso = '+#39+'E'+#39
  else if dxInterni.Down then
     Sender.Parambyname('provenienza').AsString := '# and ta.tipo_accesso = '+#39+'I'+#39
  else if dxPS.Down then
     Sender.Parambyname('provenienza').AsString := '# and ta.tipo_accesso = '+#39+'P'+#39
  else
     Sender.Parambyname('provenienza').AsString := '#';

end;

procedure TFDaStampare.GridConsegnatiDblClick(Sender: TObject);
begin

  PostMessage(Handle,SY_DBLCLICK,LongInt(cxGrid2),LongInt(aConsegnaReferti));

end;

procedure TFDaStampare.dxAutoSizeClick(Sender: TObject);
begin
  GridConsegnati.OptionsView.CellAutoHeight := not GridConsegnati.OptionsView.CellAutoHeight;
  GridDaRefertare.OptionsView.CellAutoHeight := not GridDaRefertare.OptionsView.CellAutoHeight;
end;

procedure TFDaStampare.aRitornaDaConsExecute(Sender: TObject);
var
  TempUM: TAstaUpdateMethod;
  i: Integer;
begin

 AlertEventList1.Active := false;
 try

   CaricaTriageSelezionati(GridConsegnati);

   if MsgDlgPos(RS_Msg_ConfRitDaConsegnare, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes then
   begin

       for i:=0 to lpkt.Count-1 do
       begin

         if Consegnati.Locate('PKTRIAGE',lpkt[i],[]) then
         begin

           RitornaDaConsegnare.Parambyname('pktriage').AsInteger := ConsegnatiPKTRIAGE.AsInteger;
           RitornaDaConsegnare.Parambyname('user_id').AsInteger := gblcodutente;
           RitornaDaConsegnare.ExecCommit;

         end;

       end;
       TempUM := Consegnati.UpdateMethod;
       Consegnati.UpdateMethod := umManual;
       try
          GridConsegnati.Controller.DeleteSelection;
       finally
          Consegnati.UpdateMethod := TempUM;
       end;

   end;

 finally
     AlertEventList1.Active := dxAttivaRefresh.Down;
 end;

end;

procedure TFDaStampare.aRitornaDaConsUpdate(Sender: TObject);
begin
  aRitornaDaCons.Enabled := MultiRecord;
end;

procedure TFDaStampare.aStampaModuliExecute(Sender: TObject);
begin
  StampaEtichette(true);
end;

procedure TFDaStampare.qryUserBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFDaStampare.aVisualizzaImmaginiExecute(Sender: TObject);
var
  nrf: boolean;
  pkt: integer;
begin

  if gblViewImmagini then
  begin

     if cxPageControl1.ActivePage=cxTabStampare then
     begin
        nrf := RefertazioneCEIMMAGINI.AsInteger>0;
        pkt := RefertazionePKTRIAGE.AsInteger;
     end
     else begin
        nrf := ConsegnatiCEIMMAGINI.AsInteger>0;
        pkt := ConsegnatiPKTRIAGE.AsInteger;
     end;

     if nrf then
        FDMCommon.AccNumber(pkt)
     else
        FDMCommon.Vuoto;

  end;

end;

procedure TFDaStampare.aVisualizzaImmaginiUpdate(Sender: TObject);
var
  nrf: boolean;
begin

   if cxPageControl1.ActivePage=cxTabStampare then
      nrf := RefertazioneCEIMMAGINI.AsInteger>0
   else
      nrf := ConsegnatiCEIMMAGINI.AsInteger>0;

   aVisualizzaImmagini.Enabled := (RecordAttuale<>-1) and gblViewImmagini and nrf;

end;



procedure TFDaStampare.aConsegnaRefertiExecute(Sender: TObject);
begin
  if dxDaConsegnare.Down then
     ConsegnaRefertoDaStampare
  else
     ConsegnaRefertoConsegnati;
end;

procedure TFDaStampare.ConsegnaRefertoDaStampare;
var
  TempUM: TAstaUpdateMethod;
  avanti: boolean;
  i: integer;
begin
  AlertEventList1.Active := false;
  Refertazione.DisableControls;
  try

  avanti := true;
  CaricaTriageSelezionati(GridDaRefertare);

  if lpkt.Count=1 then
  begin

    FConsegnaRef := TFConsegnaRef.Create(nil);
    try
       FConsegnaRef.Consegna.Parambyname('pktriage').AsInteger := RefertazionePKTRIAGE.AsInteger;
       FConsegnaRef.Consegna.open;
       FConsegnaRef.Consegna.Edit;
       FConsegnaRef.ConsegnaDATA_CONSEGNA.AsDateTime := Date();

       avanti := (FConsegnaRef.ShowModal in [mrOk,mrRetry]);

    finally
       FConsegnaRef.Free;
       FConsegnaRef := nil;
    end;

  end else
  begin

    if not (MsgDlg( RS_ConsegnaTuttiReferti, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes) then
       exit;

    i := 0;
    while avanti and (i<lpkt.Count) do
    begin

       if Refertazione.Locate('PKTRIAGE',lpkt[i],[]) then
       begin
         Refertazione.Edit;
         RefertazioneUSER_ID.AsInteger := gblcodutente;
         RefertazioneSTATOVISITA.AsInteger := 190;
         RefertazioneDATA_CONSEGNA.AsDateTime := Date();
         Refertazione.Post;
       end;
       inc(i);

    end;

  end;

  if avanti then
  begin
    TempUM := Refertazione.UpdateMethod;
    Refertazione.UpdateMethod := umManual;
    try
       GridDaRefertare.Controller.DeleteSelection;
    finally
       Refertazione.UpdateMethod := TempUM;
    end;
  end;

  finally
     Refertazione.EnableControls;
     AlertEventList1.Active := dxAttivaRefresh.Down;
  end;

end;

procedure TFDaStampare.ConsegnaRefertoConsegnati;
begin

  AlertEventList1.Active := false;
  try

    FConsegnaRef := TFConsegnaRef.Create(nil);
    try
       FConsegnaRef.Consegna.Parambyname('pktriage').AsInteger := ConsegnatiPKTRIAGE.AsInteger;
       FConsegnaRef.Consegna.open;
//       FConsegnaRef.Consegna.Edit;
//       FConsegnaRef.ConsegnaDATA_CONSEGNA.AsDateTime := Date();

       FConsegnaRef.ShowModal;

    finally
       FConsegnaRef.Free;
       FConsegnaRef := nil;
    end;

  finally
     AlertEventList1.Active := dxAttivaRefresh.Down;
  end;

end;

procedure TFDaStampare.aConsegnaRefertiUpdate(Sender: TObject);
begin

  aConsegnaReferti.Enabled := not IsEmptyDataSet;

end;

procedure TFDaStampare.aRefreshExecute(Sender: TObject);
begin
  if cxPageControl1.ActivePage=cxTabConsegnati then
  begin
     Consegnati.syRefresh;
  end
  else begin
     Refertazione.syRefresh;
  end;
end;

procedure TFDaStampare.dxAttivaRefreshClick(Sender: TObject);
begin
   AlertEventList1.Active := dxAttivaRefresh.Down;
end;

procedure TFDaStampare.EventLogCDDataSets0AcceptActiveEvent(
  Sender: ToelItem; var op: Char; ParamList: TInternalAstaParamList;
  var Accept: Boolean);
var
  xstato: integer;
  TempUM: TAstaUpdateMethod;

  function CeRecord(pkKey: Variant): boolean;
  begin

     result := ((cxPageControl1.ActivePage=cxTabConsegnati) and (GridConsegnati.DataController.FindRecordIndexByKey(pkKey)<>-1)) or
               ((cxPageControl1.ActivePage=cxTabStampare) and (GridDaRefertare.DataController.FindRecordIndexByKey(pkKey)<>-1));

  end;

  procedure AggiornaRefertazione( cdstato: integer );
  var
     Grid: TcxGridDBTableView;
     ds: TAstaClientDataSet;
  begin
     if (cxPageControl1.ActivePage=cxTabConsegnati) then
     begin
         Grid := GridConsegnati;
     end
     else begin
         Grid := GridDaRefertare;
     end;

     ds := TAstaClientDataSet(Grid.DataController.DataSource.Dataset);
     Grid.BeginUpdate;
     TempUM := ds.UpdateMethod;
     ds.UpdateMethod := umManual;
     try
       if ds.Locate('PKTRIAGE',ParamList.ParamByName('PKValue').AsInteger,[]) then
       begin
         ds.Edit;
         ds.FieldbyName('CD_CREATO').AsInteger := cdstato;
         ds.Post;
       end;
     finally
       ds.UpdateMethod := TempUM;
       Grid.EndUpdate;
     end;
  end;

begin

  Accept := (ParamList.ParamByName('reparti_fk').AsInteger=gblpkrep) and CeRecord(ParamList.ParamByName('PKValue').AsInteger);
  if not Accept then exit;

  xstato := ParamList.ParamByName('stato_cd').AsInteger;

  case op of
  'U': case xstato of
       10:  begin
              MsgDlgBeep(format(RS_ErroreInCreazioneCD,[ParamList.ParamByName('paziente').AsString,ParamList.ParamByName('msg').AsString]), '', ktError, [kbOk], dfFirst);
            end;
       20:  begin
              AggiornaRefertazione(2);
              MsgDlgBeep(format(RS_ErroreInCreazioneCD,[ParamList.ParamByName('paziente').AsString,ParamList.ParamByName('msg').AsString]), '', ktError, [kbOk], dfFirst);
            end;
       30:  AggiornaRefertazione(1);
       end;
  end;

  Accept := false;

end;

procedure TFDaStampare.aStampaGrigliaSelezionatiExecute(Sender: TObject);
begin

  StampaLista;

end;

procedure TFDaStampare.StampaLista;
var
  AData: TdxPrintDlgData;
  rcmpGrid: TdxGridReportLink;
begin

  AlertEventList1.Active := false;
  try

    if cxPageControl1.ActivePage=cxTabStampare then
      rcmpGrid := dxPrintGridDaConsegnare
    else
      rcmpGrid := dxPrintGridConsegnati;

    if FDMCommon.dxPrintDialog1.Execute then
    begin

       if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
          dxComponentPrinter1.Preview(true,rcmpGrid)
       else begin
          AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
          dxComponentPrinter1.Print(false,@AData,rcmpGrid);
       end;

    end;

  finally
     AlertEventList1.Active := dxAttivaRefresh.Down;
  end;

end;


procedure TFDaStampare.aStampaGrigliaSelezionatiUpdate(Sender: TObject);
begin
  aStampaGrigliaSelezionati.Enabled := not IsEmptyDataSet;
end;

procedure TFDaStampare.dxPrintDialogRefShow(Sender: TObject);
begin
  try
     with TdxfmPrintDialog(Sender) do begin
       if cbxPrinters.Enabled then
       begin
          cbxPrinters.ItemIndex := FSelStampante; // FDMCommon.IndexStampanteNormale;
          cbxPrintersChange(cbxPrinters);
       end;
     end;
  except
     // -- per evitare errori se non esistono stampanti definite...
  end;
end;

procedure TFDaStampare.dxDataRitiroPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if (cxPageControl1.ActivePage=cxTabStampare) then
     Refertazione.syrefresh
  else
     Consegnati.syRefresh;
end;

procedure TFDaStampare.GridDaRefertareNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
  NBDI_REFRESH: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(aRefresh));
                ADone := true;
             end;
  end;

end;

procedure TFDaStampare.GridConsegnatiNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
  NBDI_REFRESH: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(aRefresh));
                ADone := true;
             end;
  end;

end;

procedure TFDaStampare.RadiologicoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_RETURN then
//    Ricerca.Execute;
     PostMessage(Handle,SY_DBLCLICK,0,LongInt(Ricerca));
end;

procedure TFDaStampare.DettRefertazioneBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  Sender.Parambyname('dal').AsDateTime := dxDataDal.EditValue;
  Sender.Parambyname('al').AsDateTime := dxDataAl.EditValue;
  if dxEsterni.Down then
     Sender.Parambyname('provenienza').AsString := '# and ta.tipo_accesso = '+#39+'E'+#39
  else if dxInterni.Down then
     Sender.Parambyname('provenienza').AsString := '# and ta.tipo_accesso = '+#39+'I'+#39
  else if dxPS.Down then
     Sender.Parambyname('provenienza').AsString := '# and ta.tipo_accesso = '+#39+'P'+#39
  else
     Sender.Parambyname('provenienza').AsString := '#';

end;

procedure TFDaStampare.RefertazioneAfterPopulate(Sender: TObject);
begin
  inherited;
  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down then
  begin
     DettRefertazione.syRefresh;
  end;
end;

procedure TFDaStampare.dxConEsamiClick(Sender: TObject);
begin
  inherited;
  if dxConEsami.Down then
  begin
    DettRefertazione.syRefresh;
    DettConsegnati.syRefresh;
  end
  else begin
    DettRefertazione.Close;
    DettConsegnati.Close;
  end;

  cxGrid1LevelDett.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down;
  cxGrid2LevelDett.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down;

end;

procedure TFDaStampare.DettConsegnatiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  Sender.Parambyname('dal').AsDateTime := dxDataDal.EditValue;
  Sender.Parambyname('al').AsDateTime := dxDataAl.EditValue;
  if dxEsterni.Down then
     Sender.Parambyname('provenienza').AsString := '# and ta.tipo_accesso = '+#39+'E'+#39
  else if dxInterni.Down then
     Sender.Parambyname('provenienza').AsString := '# and ta.tipo_accesso = '+#39+'I'+#39
  else if dxPS.Down then
     Sender.Parambyname('provenienza').AsString := '# and ta.tipo_accesso = '+#39+'P'+#39
  else
     Sender.Parambyname('provenienza').AsString := '#';

end;

procedure TFDaStampare.ConsegnatiAfterPopulate(Sender: TObject);
begin
  inherited;
  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down then
  begin
     DettConsegnati.syRefresh;
  end;
end;

function TFDaStampare.RefertazioneEmptyDataset: boolean;
begin
  Result := (GridDaRefertare.DataController.FilteredRecordCount=0);
end;

function TFDaStampare.GridAttuale: TcxGridDBTableView;
begin
  if (cxPageControl1.ActivePage=cxTabStampare) then
     Result := GridDaRefertare
  else
     Result := GridConsegnati;
end;

function TFDaStampare.DatasetAttuale: TAstaClientDataset;
begin
  if (cxPageControl1.ActivePage=cxTabStampare) then
     Result := Refertazione
  else
     Result := Consegnati;
end;

function TFDaStampare.IsEmptyDataSet: Boolean;
begin
  if (cxPageControl1.ActivePage=cxTabStampare) then
     Result := RefertazioneEmptyDataset
  else
     Result := ConsegnatiEmptyDataset;
end;

function TFDaStampare.ConsegnatiEmptyDataset: boolean;
begin
  Result := (GridConsegnati.DataController.FilteredRecordCount=0);
end;

procedure TFDaStampare.aStampaDaBarCodeExecute(Sender: TObject);
begin
  inherited;
  StampaReferto(False);
end;

procedure TFDaStampare.aPreparaCdDaBarCodeExecute(Sender: TObject);
begin
  inherited;
  PreparaCD;
end;

procedure TFDaStampare.aCreaDocumentiExecute(Sender: TObject);
begin
  inherited;
  AlertEventList1.Active := false;
//  Refertazione.DisableControls;
  try
    if dxStampaReferto.Down then
    try
       StampaReferto(true);
    except
{$IFDEF MADEXCEPT}
       on E: Exception do
          AutoSaveBugReport(E.Message);
{$ELSE}
       raise;
{$ENDIF}
    end;
    if dxCreaCD.Down then
    try
       PreparaCD;
    except
{$IFDEF MADEXCEPT}
       on E: Exception do
          AutoSaveBugReport(E.Message);
{$ELSE}
       raise;
{$ENDIF}
    end;
    if dxStampaEtichette.Down then
    try
       StampaEtichette(true);
    except
{$IFDEF MADEXCEPT}
       on E: Exception do
          AutoSaveBugReport(E.Message);
{$ELSE}
       raise;
{$ENDIF}
    end;
  finally
//     Refertazione.EnableControls;
     AlertEventList1.Active := dxAttivaRefresh.Down;
  end;

end;

procedure TFDaStampare.aCreaDocumentiUpdate(Sender: TObject);
begin
  inherited;
  aCreaDocumenti.Enabled := (dxStampaReferto.Down or dxCreaCD.Down or dxStampaEtichette.Down) and not IsEmptyDataset;
end;

procedure TFDaStampare.aSelezionaTuttiExecute(Sender: TObject);
begin
  inherited;
  if (cxPageControl1.ActivePage=cxTabStampare) then
     GridDaRefertare.Controller.SelectAll
  else
     GridConsegnati.Controller.SelectAll;
end;

procedure TFDaStampare.aSelezionaTuttiUpdate(Sender: TObject);
begin
  inherited;
  aSelezionaTutti.Enabled := not IsEmptyDataset;
end;

procedure TFDaStampare.PreparaCD;
begin
{$IFNDEF MEDICORNER}
     FCreaCDMicroprint := TFCreaCDMicroprint.Create(nil);
     try

        with FCreaCDMicroprint do
        begin

            if cxPageControl1.ActivePage=cxTabConsegnati then
            begin
               ref := GridConsegnati;
               SiteName := '';
            end
            else begin
               ref := GridDaRefertare;
               SiteName := '';
            end;

            ShowModal;
//            aIniziaCreazione.Execute;

            if ref.Controller.SelectedRecordCount=1 then
               TAstaClientDataset(ref.DataController.DataSet).RefreshRecord
            else
               TAstaClientDataset(ref.DataController.DataSet).syRefresh;

        end;

     finally
        FCreaCDMicroprint.Free;
        FCreaCDMicroprint := nil;
     end;
{$ENDIF}
end;

procedure TFDaStampare.StampaEtichette(pSelezStampante: Boolean);
var
  i: integer;
begin

   CaricaTriageSelezionati(GridAttuale);

   dxPrintDialogRef.Title := RS_StampaEtichetteHint;
   FSelStampante := FDMCommon.IndexStampanteEtichette;
{
   if pSelezStampante then
   begin
     if not dxPrintDialogRef.Execute then
         exit;
   end
   else begin
        dxPrintDevice.PrinterIndex := FDMCommon.IndexStampanteNormale;
//        FDMCommon.SetPrinter(FDMCommon.StampanteEtichette);
   end;
}
  FStampaAvvisi := TFStampaAvvisi.Create(nil);
  try

//   FStampaAvvisi.cxStampe.Text := dxPrintDevice.CurrentDevice;
//   FStampaAvvisi.cxEtichette.Text := dxPrintDevice.CurrentDevice;

   for i:=0 to lpkt.Count-1 do
   begin

     if DatasetAttuale.Locate('PKTRIAGE',lpkt[i],[]) then
     begin

       FStampaAvvisi.TuttiRecord := false;
       FStampaAvvisi.Conferma.Visible := false;
       FStampaAvvisi.Conferma.Enabled := false;
//       FStampaAvvisi.xDataset := DatasetAttuale;
       FStampaAvvisi.DBTableView := GridAttuale;
       FStampaAvvisi.Caption := RS_StampaEtichetteHint;
       FStampaAvvisi.CaricaStampe := 40;
       if pSelezStampante then
          FStampaAvvisi.ShowModal
       else
          FStampaAvvisi.StampaModuli;

       DatasetAttuale.Edit;
       DatasetAttuale.FieldByName('USER_ID').AsInteger := gblCodUtente;
       DatasetAttuale.FieldByName('ETICHETTE').AsInteger := 1;
       DatasetAttuale.Post;

     end;

   end;

  finally
     FStampaAvvisi.Free;
     FStampaAvvisi := nil;
  end;

end;

procedure TFDaStampare.dxSoloConsegnaClick(Sender: TObject);
begin
  inherited;
  dxBarcodeStampaReferto.Down := not dxSoloConsegna.Down;
  dxBarcodeCreaCD.Down := not dxSoloConsegna.Down;
  if dxBarcodeEtichette.Enabled then
     dxBarcodeEtichette.Down := not dxSoloConsegna.Down;
end;

procedure TFDaStampare.dxStampaRefertoClick(Sender: TObject);
begin
  inherited;
  aCreaDocumentiUpdate(Sender);
end;

procedure TFDaStampare.dxSoloStampaRefertoClick(Sender: TObject);
begin
  inherited;
  dxSoloConsegna.Down := false;
end;

procedure TFDaStampare.dxSoloCreaCDClick(Sender: TObject);
begin
  inherited;
  dxSoloConsegna.Down := false;
end;

procedure TFDaStampare.dxSoloEtichetteClick(Sender: TObject);
begin
  inherited;
  dxSoloConsegna.Down := false;
end;

procedure TFDaStampare.aApriTuttiExecute(Sender: TObject);
begin
  inherited;
  if (cxPageControl1.ActivePage=cxTabStampare) then
     GridDaRefertare.ViewData.Expand(False)
  else
     GridConsegnati.ViewData.Expand(False);
end;

procedure TFDaStampare.aApriTuttiUpdate(Sender: TObject);
begin
  inherited;
  aApriTutti.Enabled := not IsEmptyDataset;
end;

procedure TFDaStampare.aChiudiTuttiExecute(Sender: TObject);
begin
  inherited;
  if (cxPageControl1.ActivePage=cxTabStampare) then
     GridDaRefertare.ViewData.Collapse(False)
  else
     GridConsegnati.ViewData.Collapse(False);
end;

procedure TFDaStampare.aChiudiTuttiUpdate(Sender: TObject);
begin
  inherited;
  aChiudiTutti.Enabled := not IsEmptyDataset;
end;

procedure TFDaStampare.dxBarcodeStampaRefertoClick(Sender: TObject);
begin
  inherited;
  dxSoloConsegna.Down := false;
end;

procedure TFDaStampare.dxDataAlPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if (cxPageControl1.ActivePage=cxTabStampare) then
     Refertazione.syrefresh
  else
     Consegnati.syRefresh;
end;

procedure TFDaStampare.ConsegnaRefertiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFDaStampare.AlertEventList1BeforeRefresh(
  Sender: TKSAstaEventClient; var Accept: Boolean);
begin
  inherited;
     Accept := Assigned(GridDaRefertare) and
               not GridDaRefertare.Controller.IsIncSearching and
               not GridDaRefertare.Controller.IsDragging and
               not GridDaRefertare.DataController.Filter.IsInFiltering and
               not Assigned(FCercaBarCode);

end;

procedure TFDaStampare.GridConsegnatiCustomization(Sender: TObject);
begin
  inherited;
  FCustomized := True;
end;

procedure TFDaStampare.aRefertoExecute(Sender: TObject);
var
  xescludi: TbtnEscludi;
  xstampa: TprnScelte;
  res: integer;
  ref: TAstaClientDataSet;
begin
  inherited;

   xstampa := [tprnStampa,tprnDaCreare];
   xescludi := [];

   case refData.FieldByName('STATOVISITA').AsInteger of
   160,161: begin
               xescludi := xescludi + [tbtstampa];
            end;
   165:     begin
               xstampa := xstampa + [tprnStampaDefinitivo];
               xescludi := xescludi + [tbtProvvisorio,tbtDefinitivo];
            end;
   166:     begin
               xstampa := xstampa + [tprnStampaDefinitivo];
               xescludi := xescludi + [tbtProvvisorio,tbtDefinitivo];
            end;
 170..190:  begin
//               xstampa := xstampa + [tprnStampaDefinitivo];
               xescludi := xescludi + [tbtfirmato,tbtProvvisorio,tbtDefinitivo];
            end;
   else
       xescludi := xescludi + [tbtprovvisorio];
   end;

   if cxPageControl1.ActivePage=cxTabStampare then
   begin
      ref := Refertazione;
      res := VisualizzaReferto({RefertazioneSITE_NAME.AsString}'',RefertazionePKTRIAGE.AsInteger,RefertazioneNOMINATIVO.AsString,xescludi,xstampa,tvdEdit);
   end
   else //if cxPageControl1.ActivePage=cxTabConsegnati then
   begin
      ref := Consegnati;
      res := VisualizzaReferto('',ConsegnatiPKTRIAGE.AsInteger,ConsegnatiNOMINATIVO.AsString,xescludi,xstampa,tvdEdit);
   end;

   if (res in [mrIgnore,mrAbort,mrNoToAll]) then
   begin
      ref.RefreshRecord;
   end;

   if gblViewImmagini and FDMCommon.DoppioMonitor then
      FDMCommon.Vuoto;

end;

procedure TFDaStampare.aRefertoUpdate(Sender: TObject);
begin
  inherited;
  aReferto.Enabled := (RecordAttuale<>-1) and
                       gblViewReferti and
                       Assigned(refData) and (refData.FindField('CEREFERTO')<>nil) and (refData.FieldByName('CEREFERTO').AsInteger=1);

end;

procedure TFDaStampare.cxPageControl1Change(Sender: TObject);
begin
  inherited;
   if cxPageControl1.ActivePage=cxTabStampare then
   begin
      refData := Refertazione;
      refGrid := GridDaRefertare;
      refDettagli := GridDettDaRefertare;
      if not Refertazione.Active then
      begin
        Refertazione.syRefresh;
      end;
   end
   else if cxPageControl1.ActivePage=cxTabConsegnati then
   begin
      refData := Consegnati;
      refGrid := GridConsegnati;
      refDettagli := GridDettConsegnati;
      if not Consegnati.Active then
      begin
        Consegnati.syRefresh;
      end;
   end

end;

procedure TFDaStampare.GridDaRefertareDblClick(Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_DBLCLICK,0,LongInt(aReferto));
end;

procedure TFDaStampare.aStampaModuliUpdate(Sender: TObject);
begin
  inherited;
  aStampaModuli.Enabled := not IsEmptyDataSet;
end;

initialization
  Classes.RegisterClass(TFDaStampare);

end.