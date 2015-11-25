unit Struttura;

interface

uses
  Forms, {}BaseGrid, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxMaskEdit,
  cxDBLookupComboBox, cxImageComboBox, cxCalendar, cxSpinEdit, cxBlobEdit,
  cxMemo, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPSdxDBOCLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, rsStorage, rsPropSaver,
  AstaUpdateSQL, Dialogs, Menus, UDXPopup, Classes, ActnList, dxBar,
  dxPScxCommon, dxPSCore, dxPSGraphicLnk, dxPSdxOCLnk, dxBarExtItems,
  cxClasses, AstaDrv2, AstaClientDataset, dxorgchr, dxdborgc, ExtCtrls,
  cxSplitter, cxGridCardView, cxGridDBCardView, cxGridCustomLayoutView,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxPC, Controls, rsXmlData, dxBarBuiltInMenu,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxSchedulerLnk, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSdxLCLnk;

{$I syVer.inc}

type
  TFStruttura = class(TFBaseGrid)
    Sale: TAstaClientDataSet;
    sStruttura: TDataSource;
    sSale: TDataSource;
    Diagnostiche: TAstaClientDataSet;
    DiagnostichePKSERVIZI: TIntegerField;
    DiagnosticheDESCRIZIONE: TStringField;
    DiagnosticheREPARTI_FK: TIntegerField;
    DiagnosticheDATA_FINE: TDateTimeField;
    DiagnosticheDATA_INIZIO: TDateTimeField;
    DiagnosticheTIPO_SERVIZIO: TStringField;
    Modalita: TAstaClientDataSet;
    ModalitaPKMODALITA: TIntegerField;
    ModalitaDESCRIZIONE: TStringField;
    ModalitaDATA_FINE: TDateTimeField;
    ModalitaDATA_INIZIO: TDateTimeField;
    ModalitaTIPO_MODALITA: TStringField;
    ModalitaAETITLE: TStringField;
    dxBarManager1: TdxBarManager;
    DeleteNode1: TdxBarButton;
    ItZoom: TdxBarButton;
    ItRotated: TdxBarButton;
    ItAnimated: TdxBarButton;
    It3D: TdxBarButton;
    ItFullExpand: TdxBarButton;
    ItFullCollapse: TdxBarButton;
    Struttura: TAstaClientDataSet;
    StrutturaPKSTRUTTURA: TIntegerField;
    StrutturaORDINAMENTO: TIntegerField;
    StrutturaAMBULATORI_FK: TIntegerField;
    StrutturaSERVIZI_FK: TIntegerField;
    StrutturaMODALITA_FK: TIntegerField;
    StrutturaDESCRIZIONE: TStringField;
    StrutturaPARENT: TIntegerField;
    sModalita: TDataSource;
    Strutturalivello: TIntegerField;
    dxPage: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    dxTabSheet2: TcxTabSheet;
    sDiagnostiche: TDataSource;
    dxTabSheet3: TcxTabSheet;
    Tipo_Modalita: TAstaClientDataSet;
    Tipo_ModalitaTIPO_MODALITA: TStringField;
    Tipo_ModalitaDESCRIZIONE: TStringField;
    SalePKAMBULATORI: TIntegerField;
    SaleDESCRIZIONE: TStringField;
    SaleDATA_FINE: TDateTimeField;
    SaleDATA_INIZIO: TDateTimeField;
    SaleREPARTI_FK: TIntegerField;
    dxBarButton1: TdxBarButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxPrinterDBTree: TdxDBOrgChartReportLink;
    dxBarButton2: TdxBarButton;
    Modalitadesc_modalita: TStringField;
    dxTabListaRefertazione: TcxTabSheet;
    sStazioni: TDataSource;
    dxBarPopupMenu1: TdxBarPopupMenu;
    ActionList1: TActionList;
    CancellaElemento: TAction;
    Stazioni: TAstaClientDataSet;
    StazioniPKSERVIZI: TIntegerField;
    StazioniDESCRIZIONE: TStringField;
    StazioniREPARTI_FK: TIntegerField;
    StazioniTIPO_SERVIZIO: TStringField;
    Zoom: TAction;
    Ruotato: TAction;
    Espandi: TAction;
    Chiudi: TAction;
    Stampa: TAction;
    dxPopupMenu1: TdxPopupMenu;
    dxBarPopModalita: TdxBarPopupMenu;
    CancellaRecord: TAction;
    ModalitaCODICE: TStringField;
    DiagnosticheESEGUITO: TIntegerField;
    cxModalita: TcxGrid;
    cxModalitaLevel1: TcxGridLevel;
    cxModalitaView: TcxGridDBTableView;
    cxModalitaViewPKMODALITA: TcxGridDBColumn;
    cxModalitaViewDESCRIZIONE: TcxGridDBColumn;
    cxModalitaViewTIPO_MODALITA: TcxGridDBColumn;
    cxModalitaViewAETITLE: TcxGridDBColumn;
    cxModalitaViewREPARTI_FK: TcxGridDBColumn;
    cxDiagnostiche: TcxGrid;
    cxDiagnosticheLevel1: TcxGridLevel;
    cxDiagnosticheView: TcxGridDBTableView;
    cxDiagnosticheViewPKSERVIZI: TcxGridDBColumn;
    cxDiagnosticheViewDESCRIZIONE: TcxGridDBColumn;
    cxDiagnosticheViewREPARTI_FK: TcxGridDBColumn;
    cxDiagnosticheViewDATA_FINE: TcxGridDBColumn;
    cxDiagnosticheViewDATA_INIZIO: TcxGridDBColumn;
    cxDiagnosticheViewTIPO_SERVIZIO: TcxGridDBColumn;
    cxDiagnosticheViewESEGUITO: TcxGridDBColumn;
    cxSale: TcxGrid;
    cxSaleLevel1: TcxGridLevel;
    cxSaleView: TcxGridDBTableView;
    cxSaleViewPKAMBULATORI: TcxGridDBColumn;
    cxSaleViewDESCRIZIONE: TcxGridDBColumn;
    cxSaleViewDATA_FINE: TcxGridDBColumn;
    cxSaleViewDATA_INIZIO: TcxGridDBColumn;
    cxSaleViewREPARTI_FK: TcxGridDBColumn;
    cxStazioni: TcxGrid;
    cxStazioniLevel1: TcxGridLevel;
    cxStazioniView: TcxGridDBTableView;
    cxStazioniViewDESCRIZIONE: TcxGridDBColumn;
    dxPrinterModalita: TdxGridReportLink;
    dxPrinterDiagnostiche: TdxGridReportLink;
    dxPrinterSale: TdxGridReportLink;
    dxPrinterStazioni: TdxGridReportLink;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButtonListaRefer: TdxBarButton;
    dxBarStatic1: TdxBarStatic;
    DiagnosticheMAX_TIME_PRENO: TIntegerField;
    cxDiagnosticheViewMAX_TIME_PRENO: TcxGridDBColumn;
    cxDiagnosticheViewSLOT_STANDARD: TcxGridDBColumn;
    DiagnosticheSLOT_STANDARD: TIntegerField;
    DiagnosticheNO_TSRM_IN_REFERTO: TIntegerField;
    cxDiagnosticheViewNO_TSRM_IN_REFERTO: TcxGridDBColumn;
    Splitter1: TcxSplitter;
    ModalitaREPARTI_FK: TIntegerField;
    StrutturaREPARTI_FK: TIntegerField;
    ModificaDiagnostica: TAction;
    RegistraDiagnostica: TAction;
    sTipoModalita: TDataSource;
    ModalitaSERVIZI_FK: TIntegerField;
    ModificaModalita: TAction;
    RegistraModalita: TAction;
    ModalitaRADIOLOGIA: TStringField;
    ModalitaSERVIZIO: TStringField;
    cxModalitaViewSERVIZIO: TcxGridDBColumn;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarPopDiagnostiche: TdxBarPopupMenu;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    DiagnosticheREPARTO: TStringField;
    cxDiagnosticheViewREPARTO: TcxGridDBColumn;
    Panel1: TPanel;
    DBTree: TdxDbOrgChart;
    dxBarDockControl1: TdxBarDockControl;
    cxModalitaViewSCELTO: TcxGridDBColumn;
    DiagnxServ: TAstaClientDataSet;
    DiagnxServDIAGNOSTICA_FK: TIntegerField;
    DiagnxServSERVIZI_FK: TIntegerField;
    DiagnosticheCHK_MED_MEMORY: TIntegerField;
    DiagnosticheCHK_OVERBOOKING: TIntegerField;
    DiagnosticheALLOCA_MODALITA: TIntegerField;
    DiagnosticheCHK_NON_REFERTARE: TIntegerField;
    DiagnosticheORE_PRIMA: TIntegerField;
    DiagnosticheTIPO_DIAGN: TIntegerField;
    DiagnosticheCODICE: TStringField;
    cxDiagnosticheViewCODICE: TcxGridDBColumn;
    ModalitaMODELLO: TStringField;
    ModalitaFORNITORE: TStringField;
    ModalitaUBICAZIONE: TStringField;
    cxModalitaViewCODICE: TcxGridDBColumn;
    cxModalitaViewFORNITORE: TcxGridDBColumn;
    cxModalitaViewUBICAZIONE: TcxGridDBColumn;
    cxModalitaViewMODELLO: TcxGridDBColumn;
    dxConfiguraGridModalita: TdxBarButton;
    aConfiguraGridModalita: TAction;
    aResetGridModalita: TAction;
    dxResetGridModalita: TdxBarButton;
    DiagnosticheCTRL_ESEGUITO: TIntegerField;
    cdMaster: TAstaClientDataSet;
    cdMasterPKCDMASTER: TIntegerField;
    cdMasterAETITLE: TStringField;
    cdMasterINDIRIZZO: TStringField;
    cdMasterPORTA: TIntegerField;
    cdMasterREPARTI_FK: TIntegerField;
    cdMasterDESCRIZIONE: TStringField;
    sCDMaster: TDataSource;
    dxTabSheet5: TcxTabSheet;
    cxCDMaster: TcxGrid;
    cxCDMasterDBTableView1: TcxGridDBTableView;
    cxCDMasterDBTableView1PKCDMASTER: TcxGridDBColumn;
    cxCDMasterDBTableView1AETITLE: TcxGridDBColumn;
    cxCDMasterDBTableView1INDIRIZZO: TcxGridDBColumn;
    cxCDMasterDBTableView1PORTA: TcxGridDBColumn;
    cxCDMasterDBTableView1REPARTI_FK: TcxGridDBColumn;
    cxCDMasterDBTableView1DESCRIZIONE: TcxGridDBColumn;
    cxCDMasterLevel1: TcxGridLevel;
    dxMasterizzatori: TdxBarButton;
    dxPrinterCD: TdxGridReportLink;
    cxModalitaViewRADIOLOGIA: TcxGridDBColumn;
    cxTabServerCD: TcxTabSheet;
    CreaCD: TAstaClientDataSet;
    CreaCDTIPO_CREA_CD: TIntegerField;
    CreaCDDESCRIZIONE: TStringField;
    sCreaCD: TDataSource;
    CreaCDCD_SERVER_NAME: TStringField;
    CreaCDCD_SERVER_PORTA: TIntegerField;
    cxServerCDDB: TcxGridDBTableView;
    cxServerCDLevel1: TcxGridLevel;
    cxServerCD: TcxGrid;
    cxServerCDDBTIPO_CREA_CD: TcxGridDBColumn;
    cxServerCDDBDESCRIZIONE: TcxGridDBColumn;
    cxServerCDDBCD_SERVER_NAME: TcxGridDBColumn;
    cxServerCDDBCD_SERVER_PORTA: TcxGridDBColumn;
    dxServerCD: TdxBarButton;
    cxCDMasterDBTableView1CREA_CD_FK: TcxGridDBColumn;
    dxPrinterServerCD: TdxGridReportLink;
    dxBarButton11: TdxBarButton;
    ModalitaCHK_MPPS: TIntegerField;
    ModalitaWORKLIST_FK: TIntegerField;
    ModalitaGRPMODE_FK: TIntegerField;
    Worklist: TAstaClientDataSet;
    WorklistPKWL_WORKLIST: TIntegerField;
    WorklistDESCRIZIONE: TStringField;
    sWorklist: TDataSource;
    sGruppoMod: TDataSource;
    GruppoMod: TAstaClientDataSet;
    GruppoModPKGRPMODE: TIntegerField;
    GruppoModDESCRIZIONE: TStringField;
    cxModalitaViewWORKLIST_FK: TcxGridDBColumn;
    ModalitaF_MULTISITE: TIntegerField;
    aEsporta: TAction;
    SaveDialog1: TSaveDialog;
    aElenco: TAction;
    dxBarButton12: TdxBarButton;
    CreaCDPKCREA_CD: TIntegerField;
    cxServerCDDBPKCREA_CD: TcxGridDBColumn;
    cdMasterCREA_CD_FK: TIntegerField;
    cxTabTipoModalita: TcxTabSheet;
    dxTipoModalita: TdxBarButton;
    cxGruppoModDBTableView1: TcxGridDBTableView;
    cxGruppoModLevel1: TcxGridLevel;
    cxGruppoMod: TcxGrid;
    cxGruppoModDBTableView1PKGRPMODE: TcxGridDBColumn;
    cxGruppoModDBTableView1DESCRIZIONE: TcxGridDBColumn;
    DiagnosticheUNIFICA_REF: TIntegerField;
    CreaCDCD_XML: TMemoField;
    cxServerCDDBCD_XML: TcxGridDBColumn;
    updDiagnxServ: TAstaUpdateSQL;
    DiagnostichePACS_FK: TIntegerField;
    cxPacs: TcxTabSheet;
    dxBarPacs: TdxBarButton;
    cxGridPACSLevel1: TcxGridLevel;
    cxGridPACS: TcxGrid;
    sTabPacs: TDataSource;
    qChannelConfig: TAstaClientDataSet;
    qChannelConfigCHANNELNAME: TStringField;
    sqChannelConfig: TDataSource;
    cxGridPACSDBCardView1: TcxGridDBCardView;
    cxGridPACSDBCardView1PKPACS: TcxGridDBCardViewRow;
    cxGridPACSDBCardView1PACS: TcxGridDBCardViewRow;
    cxGridPACSDBCardView1NOME: TcxGridDBCardViewRow;
    cxGridPACSDBCardView1PACS_QR: TcxGridDBCardViewRow;
    cxGridPACSDBCardView1URL_IMMAGINI: TcxGridDBCardViewRow;
    cxGridPACSDBCardView1CANALE_PACS: TcxGridDBCardViewRow;
    PacsxMod: TAstaClientDataSet;
    PacsxModPACS_FK: TIntegerField;
    PacsxModMODALITA_FK: TIntegerField;
    cxGridPACSDBCardView1URL_LOGIN: TcxGridDBCardViewRow;
    cxGridPACSDBCardView1URL_LOGOUT: TcxGridDBCardViewRow;
    cxGridPACSDBCardView1URL_CHIUDI: TcxGridDBCardViewRow;
    cxGridPACSDBCardView1AETITLE: TcxGridDBCardViewRow;
    cxGridPACSDBCardView1PORTA: TcxGridDBCardViewRow;
    TabPacs: TAstaClientDataSet;
    TabPacsPKPACS: TIntegerField;
    TabPacsPACS: TStringField;
    TabPacsNOME: TStringField;
    TabPacsPACS_QR: TStringField;
    TabPacsURL_IMMAGINI: TStringField;
    TabPacsCANALE_PACS: TStringField;
    TabPacsURL_LOGIN: TStringField;
    TabPacsURL_LOGOUT: TStringField;
    TabPacsURL_CHIUDI: TStringField;
    TabPacsAETITLE: TStringField;
    TabPacsPORTA: TIntegerField;
    TabPacsIPDICOM: TStringField;
    cxGridPACSDBCardView1IPDICOM: TcxGridDBCardViewRow;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    ModalitaSCELTO: TIntegerField;
    rsPropSaver1: TrsPropSaver;
    TabPacsDBLINK: TStringField;
    cxGridPACSDBCardView1DBLINK: TcxGridDBCardViewRow;
    DiagnosticheDESCCTRLESEGUITO: TStringField;
    cxDiagnosticheViewDESCCTRLESEGUITO: TcxGridDBColumn;
    procedure SaleNewRecord(DataSet: TDataSet);
    procedure DBTreeLoadNode(Sender: TObject; Node: TdxOcNode);
    procedure SaleBeforeOpen(DataSet: TDataSet);
    procedure DiagnosticheNewRecord(DataSet: TDataSet);
    procedure DBTreeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ItAnimatedClick(Sender: TObject);
    procedure It3DClick(Sender: TObject);
    procedure ItFullExpandClick(Sender: TObject);
    procedure ItFullCollapseClick(Sender: TObject);
    procedure ModalitaNewRecord(DataSet: TDataSet);
    procedure DBTreeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure StrutturaCalcFields(DataSet: TDataSet);
    procedure dxPageChange(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure StazioniNewRecord(DataSet: TDataSet);
    procedure CancellaElementoExecute(Sender: TObject);
    procedure CancellaElementoUpdate(Sender: TObject);
    procedure StazioniBeforeOpen(DataSet: TDataSet);
    procedure ZoomExecute(Sender: TObject);
    procedure RuotatoExecute(Sender: TObject);
    procedure EspandiExecute(Sender: TObject);
    procedure ChiudiExecute(Sender: TObject);
    procedure StampaExecute(Sender: TObject);
    procedure StrutturaNewRecord(DataSet: TDataSet);
    procedure CancellaRecordExecute(Sender: TObject);
    procedure StrutturaBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxModalitaViewDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxModalitaViewDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure syFormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure StazioniBeforeDelete(DataSet: TDataSet);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButtonListaReferClick(Sender: TObject);
    procedure DiagnosticheBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure ModalitaBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxDiagnosticheViewDblClick(Sender: TObject);
    procedure ModificaDiagnosticaExecute(Sender: TObject);
    procedure RegistraDiagnosticaExecute(Sender: TObject);
    procedure ModificaDiagnosticaUpdate(Sender: TObject);
    procedure ModificaModalitaExecute(Sender: TObject);
    procedure ModificaModalitaUpdate(Sender: TObject);
    procedure RegistraModalitaExecute(Sender: TObject);
    procedure cxModalitaViewNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cxModalitaViewDblClick(Sender: TObject);
    procedure DiagnxServNewRecord(DataSet: TDataSet);
    procedure aConfiguraGridModalitaExecute(Sender: TObject);
    procedure aResetGridModalitaExecute(Sender: TObject);
    procedure cdMasterBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cdMasterNewRecord(DataSet: TDataSet);
    procedure dxMasterizzatoriClick(Sender: TObject);
    procedure dxServerCDClick(Sender: TObject);
    procedure cxDiagnosticheViewNavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure cxSaleViewNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cxStazioniViewNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cxCDMasterDBTableView1NavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure aEsportaExecute(Sender: TObject);
    procedure aElencoExecute(Sender: TObject);
    procedure dxTipoModalitaClick(Sender: TObject);
    procedure dxBarPacsClick(Sender: TObject);
    procedure DBTreeNewKey(Sender: TObject; MaxValue: Variant;
      var KeyValue: Variant);
    procedure PacsxModNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    refView: TcxCustomGridTableView; //TcxGridDBTableView;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure DoShow; override;
    function CaricaToolBar: TdxBars; override;
  end;

var
  FStruttura: TFStruttura;

implementation

uses
  Graphics, cxStorage, DMCommon, SysUtils, MsgDlgs, ModDiagnostiche,
  ModModalita, Windows, IIConsts, cxGridExportLink, dxPrnDlg;

{$R *.dfm}

function TFStruttura.CaricaToolBar: TdxBars;
begin
  result := dxBarManager1.Bars;
end;

procedure TFStruttura.SaleNewRecord(DataSet: TDataSet);
begin
  SaleREPARTI_FK.AsInteger := gblpkrep;
end;

procedure TFStruttura.DBTreeLoadNode(Sender: TObject; Node: TdxOcNode);
begin
//    Node.Text := kbMemTableCODICE.Asstring + ' ' + kbMemTableDESCRIZIONE.AsString;
  case Node.Level of
  0: Node.Color := clWhite;
  1: Node.Color := clYellow;
  2: Node.Color := clLime;
  end;
end;

procedure TFStruttura.SaleBeforeOpen(DataSet: TDataSet);
begin
  Sale.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFStruttura.DiagnosticheNewRecord(DataSet: TDataSet);
begin
  DiagnosticheTIPO_SERVIZIO.AsString := 'D';
  DiagnosticheREPARTI_FK.AsInteger := gblpkrep;
  DiagnosticheMAX_TIME_PRENO.AsInteger := 0;
  DiagnosticheSLOT_STANDARD.AsInteger := 30;
  DiagnosticheNO_TSRM_IN_REFERTO.AsInteger := 0;
  DiagnosticheCHK_MED_MEMORY.AsInteger := 0;
  DiagnosticheCHK_OVERBOOKING.AsInteger := 0;
  DiagnosticheALLOCA_MODALITA.AsInteger := 0;
  DiagnosticheTIPO_DIAGN.AsInteger := 0;
  DiagnosticheCHK_NON_REFERTARE.AsInteger := 0;
  DiagnosticheESEGUITO.AsInteger := 0;
  DiagnosticheCTRL_ESEGUITO.AsInteger := 0;  
end;


procedure TFStruttura.DBTreeDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
  N: TdxOcNode;
  aGridView: TcxGridDBTableView;
begin
    N := DBTree.GetNodeAt(X, Y);
    if (Source is TcxDragControlObject) then
    begin
       aGridView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
       Accept := (aGridView<>nil) and
                 ((aGridView=cxModalitaView) and (N=nil)) or
                 ((aGridView=cxDiagnosticheView) and (N<>nil) and (N.Level=0)) or
                 ((aGridView=cxSaleView) and (N<>nil) and (N.Level=1));
    end
//    else if (Sender<>Source) then
    else if Accept and (N<>nil) and (DBTree.Selected<>nil) and (N<>DBTree.Selected) and (State = dsDragMove) then
    begin
      Accept := (N.Level=DBTree.Selected.Level-1);
    end;
end;

procedure TFStruttura.ItAnimatedClick(Sender: TObject);
begin
   if TdxBarButton(Sender).Down then
     DBTree.Options := DBTree.Options + [ocAnimate]
   else
     DBTree.Options := DBTree.Options - [ocAnimate];

end;

procedure TFStruttura.It3DClick(Sender: TObject);
begin
   if TdxBarButton(Sender).Down then
     DBTree.Options := DBTree.Options + [ocRect3D]
   else
     DBTree.Options := DBTree.Options - [ocRect3D];
end;

procedure TFStruttura.ItFullExpandClick(Sender: TObject);
begin
    DBTree.FullExpand;
end;

procedure TFStruttura.ItFullCollapseClick(Sender: TObject);
begin
    DBTree.FullCollapse;
end;

procedure TFStruttura.ModalitaNewRecord(DataSet: TDataSet);
begin
  ModalitaREPARTI_FK.AsInteger := gblpkrep;
  if Worklist.RecordCount=1 then
     ModalitaWORKLIST_FK.AsInteger := WorklistPKWL_WORKLIST.AsInteger;
  ModalitaF_MULTISITE.AsInteger := 0;
  ModalitaCHK_MPPS.AsInteger := 0;
end;

procedure TFStruttura.DBTreeDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  xNode,Node : TdxOcNode;
  aGridView: TcxGridDBTableView;
begin
  if (Source is TcxDragControlObject) then
  begin
    aGridView := FDMCommon.GetRealDragSourceGridView (TcxDragControlObject (Source));
    if (CompareText(aGridView.Name,'cxModalitaView')=0) then
    begin
      if Struttura.LocateRecord('MODALITA_FK',ModalitaPKMODALITA.AsInteger,[]) then
      begin
        MsgDlgPos(RS_Struttura_Gia_Registrata, '',ktError, [kbOk], dfFirst);
        exit;
      end;
      Struttura.DisableControls;
      Struttura.Append;
      if ModalitaCODICE.IsNull then
         StrutturaDESCRIZIONE.AsString := ModalitaDESCRIZIONE.AsString
      else
         StrutturaDESCRIZIONE.AsString := ModalitaCODICE.AsString+' - '+ModalitaDESCRIZIONE.AsString;
      StrutturaMODALITA_FK.AsInteger := ModalitaPKMODALITA.AsInteger;
  {    if (Node <> nil) then
        Node := DBTree.Insert(Node, Nil)
      else}
        Node := DBTree.Add(nil, nil);
      if ModalitaCODICE.IsNull then
         Node.Text := ModalitaDESCRIZIONE.AsString
      else
         Node.Text := ModalitaCODICE.AsString+' - '+ModalitaDESCRIZIONE.AsString;
      Node.Color := clWhite;
      Node.Shape := shRectangle;
      DBTree.Selected := Node;
//      Struttura.Post;
      Struttura.EnableControls;
      Modalita.syRefresh;
   end
   else if (CompareText(aGridView.Name,'cxDiagnosticheView')=0) then
   begin
      xNode := DBTree.GetNodeAt(X, Y);  // DBTree.Selected;
      Struttura.DisableControls;
      Struttura.Append;
      if DiagnosticheCODICE.IsNull then
         StrutturaDESCRIZIONE.AsString := DiagnosticheDESCRIZIONE.AsString
      else
         StrutturaDESCRIZIONE.AsString := DiagnosticheCODICE.AsString + ' - '+DiagnosticheDESCRIZIONE.AsString;
      StrutturaSERVIZI_FK.AsInteger := DiagnostichePKSERVIZI.AsInteger;
//      Struttura.Post;
      if (xNode <> nil) then
        Node := DBTree.AddChild(xNode, Nil)
      else
        Node := DBTree.Add(nil, nil);
      if DiagnosticheCODICE.IsNull then
         Node.Text := DiagnosticheDESCRIZIONE.AsString
      else
         Node.Text := DiagnosticheCODICE.AsString + ' - '+DiagnosticheDESCRIZIONE.AsString;
      Node.Color := clYellow; // clRed; // clWhite;
      Node.Shape := shRectangle;
      if xNode <> nil then xNode.Expanded := True;
      DBTree.Selected := Node;
      Struttura.EnableControls;
   end
   else
   begin
      xNode := DBTree.GetNodeAt(X, Y);  // DBTree.Selected;
      Struttura.DisableControls;
      Struttura.Append;
      StrutturaDESCRIZIONE.AsString := SaleDESCRIZIONE.AsString;
      StrutturaAMBULATORI_FK.AsInteger := SalePKAMBULATORI.AsInteger;
//      Struttura.Post;
      if (xNode <> nil) then
        Node := DBTree.AddChild(xNode, Nil)
      else Node := DBTree.Add(nil, nil);
      Node.Text := SaleDESCRIZIONE.AsString;
      Node.Color := clYellow;  // clWhite;
      Node.Shape := shRectangle;
      if xNode <> nil then xNode.Expanded := True;
      DBTree.Selected := Node;
      Struttura.EnableControls;
   end;
  end;
end;

procedure TFStruttura.StrutturaCalcFields(DataSet: TDataSet);
begin
  if not StrutturaMODALITA_FK.IsNull then
     StrutturaLIVELLO.AsInteger := 0
  else if not StrutturaSERVIZI_FK.IsNull then
     StrutturaLIVELLO.AsInteger := 1
  else
     StrutturaLIVELLO.AsInteger := 2;

end;

procedure TFStruttura.dxPageChange(Sender: TObject);
begin
  case dxPage.ActivePageIndex of
  0: begin
     refView := cxModalitaView;
     end;
  1: begin
     refView := cxDiagnosticheView;
     end;
  2: begin
     refView := cxSaleView;
     end;
  3: begin
     refView := cxStazioniView;
     end;
  4: begin
     refView := cxCDMasterDBTableView1;
     end;
  5: begin
     refView := cxServerCDDB;
     end;
  6: begin
     refView := cxGruppoModDBTableView1;
     end;
  7: begin
     refView := cxGridPACSDBCardView1;
     end;
  end;
end;

procedure TFStruttura.dxBarButton2Click(Sender: TObject);
begin
  dxPrinterDBTree.Preview();
end;

constructor TFStruttura.Create(AOwner: TComponent);
begin

  inherited;
  
  FStruttura := self;
  dxPage.HideTabs := true;

  sale.open;
  tipo_modalita.open;
  Diagnostiche.open;
  Modalita.open;
  Struttura.open;
  Stazioni.open;
  CreaCD.open;
  cdMaster.open;
  Worklist.open;
  GruppoMod.open;
  qChannelConfig.open;

  cxModalitaViewSERVIZIO.Visible := gblMultiServ;

  if not Assigned(sTabPacs.DataSet) then
     sTabPacs.DataSet := FDMCommon.TabPacs;

end;

procedure TFStruttura.StazioniNewRecord(DataSet: TDataSet);
begin
  StazioniREPARTI_FK.AsInteger := gblpkrep;
  StazioniTIPO_SERVIZIO.AsString := 'S';

end;

procedure TFStruttura.CancellaElementoExecute(Sender: TObject);
var
  x: integer;
begin
  x := DBTree.Selected.Level;
  DBTree.Delete(DBTree.Selected);
  if x=0 then
    Modalita.syrefresh;
end;

procedure TFStruttura.CancellaElementoUpdate(Sender: TObject);
begin
    CancellaElemento.Enabled := (DBTree.Selected <> nil);
end;

procedure TFStruttura.StazioniBeforeOpen(DataSet: TDataSet);
begin
  Stazioni.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFStruttura.ZoomExecute(Sender: TObject);
begin
   DBTree.Zoom := TdxBarButton(Sender).Down;
end;

procedure TFStruttura.RuotatoExecute(Sender: TObject);
begin
   DBTree.Rotated := not DBTree.Rotated; // TdxBarButton(Sender).Down;
end;

procedure TFStruttura.EspandiExecute(Sender: TObject);
begin
    DBTree.FullExpand;
end;

procedure TFStruttura.ChiudiExecute(Sender: TObject);
begin
    DBTree.FullCollapse;
end;

procedure TFStruttura.StampaExecute(Sender: TObject);
begin
  dxPrinterDBTree.Preview();
end;

procedure TFStruttura.DoShow;
begin

  inherited;

  rsPropSaver1.Storage.Load;
  rsPropSaver1.LoadValues;

  cxModalitaView.RestoreFromrsStorage(TcxrsStorageReader.CreateNew(name+'.'+cxModalitaView.Name,rsPropSaver1.Storage), false, false, [{gsoUseFilter,} {gsoUseSummary}]);
  cxModalitaView.OptionsView.Footer := true;

  if dxPage.ActivePage<>dxTabSheet1 then
  begin
     dxPage.ActivePage:=dxTabSheet1;
  end;
  refView := cxModalitaView;

  DBTree.FullExpand;
{
  if (FDMCommon.LeggiPostoLavoroTIPO_CREA_CD.AsInteger=0) then
     dxMasterizzatori.Visible := ivNever;
}

  dxTabListaRefertazione.TabVisible := (FDMCommon.LeggiPostoLavoroCHK_LISTA_REFERTAZIONE.AsInteger in [1,2]);
  if not dxTabListaRefertazione.TabVisible then
     dxBarButtonListaRefer.Visible := ivNever;

  FDMCommon.ApplicaDataFine(cxDiagnosticheView, cxDiagnosticheViewDATA_FINE);
{
  cxDiagnosticheView.DataController.Filter.BeginUpdate;
  with cxDiagnosticheView.DataController.Filter.Root do
  begin
    Clear;
    AddItem(cxDiagnosticheViewDATA_FINE, foEqual, Null, '');
  end;
  cxDiagnosticheView.DataController.Filter.Active := True;
  cxDiagnosticheView.DataController.Filter.EndUpdate;
}
end;

procedure TFStruttura.StrutturaNewRecord(DataSet: TDataSet);
begin
  StrutturaREPARTI_FK.AsInteger := gblpkrep;
end;

procedure TFStruttura.CancellaRecordExecute(Sender: TObject);
var
  xmsg: string;
begin
  case dxPage.ActivePageIndex of
  0: xmsg := RS_Struttura_Modalita;
  1: xmsg := RS_Struttura_Diagnostiche;
  2: xmsg := RS_Struttura_Sale;
  3: xmsg := RS_Struttura_Stazioni;
  4: xmsg := RS_Struttura_Masterizzatori;
  end;

 if (MsgDlgPos(format(RS_Struttura_Msg_ConfCanc,[xmsg]), '',ktConfirmation, [kbYes,kbNo], dfFirst)<>mrYes) then
    Abort;

  case dxPage.ActivePageIndex of
  0: Modalita.Delete;
  1: begin
       Diagnostiche.Delete;
       FDMCommon.AstaClientSocket.SendDataSetTransactions(Name,[Diagnostiche]);       
     end;
  2: Sale.Delete;
  3: Stazioni.Delete;
  4: cdMaster.Delete;
  end;

  if dxPage.ActivePageIndex in [0,1] then
  begin
   Struttura.syRefresh;
   DBTree.FullExpand;
  end;

end;

procedure TFStruttura.StrutturaBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFStruttura.cxModalitaViewDragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
  DBTree.Delete(DBTree.Selected);
  if (DBTree.Selected=nil) or (DBTree.Selected.Level=0) then
  begin
     Modalita.syRefresh;
  end;
end;

procedure TFStruttura.cxModalitaViewDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TcxDragControlObject) and
            (TcxDragControlObject(Source).Control is TdxDbOrgChart) and
            (TdxDbOrgChart(TcxDragControlObject(Source).Control)=DBTree) and
            (DBTree.Selected<>nil); // and (DBTree.Selected.Level=0);
end;

procedure TFStruttura.syFormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (refView<>nil) then
     if refView is TcxGridDBTableView then
     begin
        with TcxGridDBTableView(refView).DataController.DataSource.DataSet do
        if (State in dsEditModes) then
           Post;
     end
     else if refView is TcxGridDBCardView then
     begin
        with TcxGridDBCardView(refView).DataController.DataSource.DataSet do
        if (State in dsEditModes) then
           Post;
     end;
end;

procedure TFStruttura.StazioniBeforeDelete(DataSet: TDataSet);
begin
    if not (MsgDlgPos(RS_Gene_Msg_ConfCanc, '',ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes) then
       Abort;

end;

procedure TFStruttura.dxBarButton3Click(Sender: TObject);
begin
  dxPage.ActivePageIndex := 0;
  dxPageChange(self);
end;

procedure TFStruttura.dxBarButton4Click(Sender: TObject);
begin
  dxPage.ActivePageIndex := 1;
  dxPageChange(self);
end;

procedure TFStruttura.dxBarButton5Click(Sender: TObject);
begin
  dxPage.ActivePageIndex := 2;
  dxPageChange(self);
end;

procedure TFStruttura.dxBarButtonListaReferClick(Sender: TObject);
begin
  dxPage.ActivePageIndex := 3;
  dxPageChange(self);
end;

procedure TFStruttura.DiagnosticheBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  Sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFStruttura.ModalitaBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  Modalita.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFStruttura.cxDiagnosticheViewDblClick(Sender: TObject);
begin
   PostMessage(Handle,SY_DBLCLICK,LongInt(cxDiagnostiche),LongInt(ModificaDiagnostica));
end;

procedure TFStruttura.ModificaDiagnosticaExecute(Sender: TObject);
begin
  FModDiagnostiche := TFModDiagnostiche.Create(nil);
  try
     FModDiagnostiche.sDiagnostiche.DataSet := Diagnostiche;
     FModDiagnostiche.sDiagnxServ.DataSet := DiagnxServ;
     Diagnostiche.Edit;
     DiagnxServ.Parambyname('DIAGNOSTICA_FK').AsInteger := DiagnostichePKSERVIZI.AsInteger;
     DiagnxServ.syRefresh;
     FModDiagnostiche.dxServxRad.Visible := gblMultiServ;

     if FModDiagnostiche.ShowModal=mrOk then
     begin
        Diagnostiche.RefreshRecord;
     end;
  finally
     FModDiagnostiche.Free;
  end;

end;

procedure TFStruttura.RegistraDiagnosticaExecute(Sender: TObject);
var
  i: integer;
begin
  FModDiagnostiche := TFModDiagnostiche.Create(nil);
  try
     FModDiagnostiche.sDiagnostiche.DataSet := Diagnostiche;
     FModDiagnostiche.sDiagnxServ.DataSet := DiagnxServ;
     Diagnostiche.Append;
     DiagnxServ.Parambyname('DIAGNOSTICA_FK').AsInteger := DiagnostichePKSERVIZI.AsInteger;
     DiagnxServ.syRefresh;
     FModDiagnostiche.dxServxRad.Visible := gblMultiServ;
     FDMCommon.ServiziRadiologia.First;
     for i:=1 to FDMCommon.ServiziRadiologia.RecordCount do
     begin
        DiagnxServ.Append;
        DiagnxServSERVIZI_FK.AsInteger := FDMCommon.ServiziRadiologiaPKSERVIZI.AsInteger;
        DiagnxServ.Post;
        FDMCommon.ServiziRadiologia.Next;
     end;
     if FModDiagnostiche.ShowModal=mrOk then
        Diagnostiche.RefreshRecord;
  finally
     FModDiagnostiche.Free;
  end;

end;

procedure TFStruttura.ModificaDiagnosticaUpdate(Sender: TObject);
begin
  ModificaDiagnostica.Enabled := not Diagnostiche.IsEmpty;
end;

procedure TFStruttura.ModificaModalitaExecute(Sender: TObject);
begin
  FModModalita := TFModModalita.Create(nil);
  try
     FModModalita.LkServizi.Parambyname('reparti_fk').AsInteger := ModalitaREPARTI_FK.AsInteger;
     FModModalita.LkServizi.open;
     Modalita.Edit;
     if not Assigned(FModModalita.sPacsxMod.DataSet) then
        FModModalita.sPacsxMod.DataSet := PacsxMod;
     PacsxMod.Parambyname('MODALITA_FK').AsInteger := ModalitaPKMODALITA.AsInteger;
     PacsxMod.syRefresh;
//     if FModModalita.ShowModal=mrOk then
     FModModalita.ShowModal;
        Modalita.RefreshRecord;

  finally
     FModModalita.Free;
  end;

end;

procedure TFStruttura.ModificaModalitaUpdate(Sender: TObject);
begin
  ModificaModalita.Enabled := not Modalita.IsEmpty;
end;

procedure TFStruttura.RegistraModalitaExecute(Sender: TObject);
begin
  FModModalita := TFModModalita.Create(nil);
  try
     Modalita.Append;
     FModModalita.LkServizi.Parambyname('reparti_fk').AsInteger := gblpkrep;
     FModModalita.LkServizi.open;
     if {not gblMultiServ and} (FModModalita.LkServizi.recordcount=1) then
     begin
        FModModalita.dxLayoutServRadiologia.Visible := false;
        ModalitaSERVIZI_FK.AsInteger := FModModalita.LkServiziPKSERVIZI.AsInteger;
     end;
     if not Assigned(FModModalita.sPacsxMod.DataSet) then
        FModModalita.sPacsxMod.DataSet := PacsxMod;
     PacsxMod.Parambyname('MODALITA_FK').AsInteger := ModalitaPKMODALITA.AsInteger;
     PacsxMod.syRefresh;
     if FModModalita.ShowModal=mrOk then
        Modalita.RefreshRecord;

  finally
     FModModalita.Free;
  end;

end;

procedure TFStruttura.cxModalitaViewNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
  NBDI_EDIT: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(ModificaModalita));
                ADone := true;
             end;
  NBDI_INSERT: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(RegistraModalita));
                ADone := true;
              end;
  NBDI_DELETE: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(CancellaRecord));
                ADone := true;
              end;
  end;

end;

procedure TFStruttura.cxModalitaViewDblClick(Sender: TObject);
begin
   PostMessage(Handle,SY_DBLCLICK,LongInt(cxModalita),LongInt(ModificaModalita));
end;

procedure TFStruttura.DiagnxServNewRecord(DataSet: TDataSet);
begin
  DiagnxServDIAGNOSTICA_FK.AsInteger := DiagnostichePKSERVIZI.AsInteger;
end;

procedure TFStruttura.aConfiguraGridModalitaExecute(Sender: TObject);
begin
  cxModalitaView.Controller.Customization := true;
end;

procedure TFStruttura.aResetGridModalitaExecute(Sender: TObject);
begin
   rsPropSaver1.Storage.SectionClear(name+'.'+cxModalitaView.Name);
   cxModalitaView.RestoreFromrsStorage(TcxrsStorageReader.CreateNew(name+'.'+cxModalitaView.Name,rsPropSaver1.Storage), false, false, [{gsoUseFilter,} {gsoUseSummary}]);
   cxModalitaView.OptionsView.Footer := true;
end;

destructor TFStruttura.Destroy;
begin
  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5) then
  begin
    rsPropSaver1.SaveValues;
    cxModalitaView.StoreTorsStorage(TcxrsStorageWriter.CreateNew(name+'.'+cxModalitaView.Name,rsPropSaver1.Storage), true, [{gsoUseFilter,} gsoUseSummary]);
    rsPropSaver1.Storage.Save;
  end;
  
  FDMCommon.cdMaster.syRefresh;
  if TabPacs.Active then
     FDMCommon.TabPacs.syRefresh;
  inherited;
end;

procedure TFStruttura.cdMasterBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  FDMCommon.cdMaster.syRefresh;
end;

procedure TFStruttura.cdMasterNewRecord(DataSet: TDataSet);
begin
  cdMasterREPARTI_FK.AsInteger := gblpkrep;
end;

procedure TFStruttura.dxMasterizzatoriClick(Sender: TObject);
begin
  dxPage.ActivePageIndex := 4;
  dxPageChange(self);

end;

procedure TFStruttura.dxServerCDClick(Sender: TObject);
begin
  dxPage.ActivePageIndex := 5;
  dxPageChange(self);

end;

procedure TFStruttura.cxDiagnosticheViewNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
  NBDI_EDIT: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(ModificaDiagnostica));
                ADone := true;
             end;
  NBDI_INSERT: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(RegistraDiagnostica));
                ADone := true;
              end;
  NBDI_DELETE: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(CancellaRecord));
                ADone := true;
              end;
  end;

end;

procedure TFStruttura.cxSaleViewNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
  NBDI_DELETE: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(CancellaRecord));
                ADone := true;
              end;
  end;

end;

procedure TFStruttura.cxStazioniViewNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
  NBDI_DELETE: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(CancellaRecord));
                ADone := true;
              end;
  end;

end;

procedure TFStruttura.cxCDMasterDBTableView1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
  NBDI_DELETE: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(CancellaRecord));
                ADone := true;
              end;
  end;

end;

procedure TFStruttura.aEsportaExecute(Sender: TObject);
begin

  SaveDialog1.FileName := dxPage.ActivePage.Caption;
  if SaveDialog1.Execute then
        case dxPage.ActivePageIndex of
        0: ExportGridToExcel(SaveDialog1.FileName, cxModalita);
        1: ExportGridToExcel(SaveDialog1.FileName, cxDiagnostiche);
        2: ExportGridToExcel(SaveDialog1.FileName, cxSale);
        3: ExportGridToExcel(SaveDialog1.FileName, cxStazioni);
        4: ExportGridToExcel(SaveDialog1.FileName, cxCDMaster);
        5: ExportGridToExcel(SaveDialog1.FileName, cxServerCD);
        end

end;

procedure TFStruttura.aElencoExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
begin

  if FDMCommon.dxPrintDialog1.Execute then
  begin
     if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
        case dxPage.ActivePageIndex of
        0: dxComponentPrinter1.Preview(true,dxPrinterModalita);
        1: dxComponentPrinter1.Preview(true,dxPrinterDiagnostiche);
        2: dxComponentPrinter1.Preview(true,dxPrinterSale);
        3: dxComponentPrinter1.Preview(true,dxPrinterStazioni);
        4: dxComponentPrinter1.Preview(true,dxPrinterCD);
        5: dxComponentPrinter1.Preview(true,dxPrinterServerCD);
        end
     else begin
        AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
        case dxPage.ActivePageIndex of
        0: dxComponentPrinter1.Print(false,@AData,dxPrinterModalita);
        1: dxComponentPrinter1.Print(false,@AData,dxPrinterDiagnostiche);
        2: dxComponentPrinter1.Print(false,@AData,dxPrinterSale);
        3: dxComponentPrinter1.Print(false,@AData,dxPrinterStazioni);
        4: dxComponentPrinter1.Print(false,@AData,dxPrinterCD);
        5: dxComponentPrinter1.Print(false,@AData,dxPrinterServerCD);
        end;
     end;
  end;

end;

procedure TFStruttura.dxTipoModalitaClick(Sender: TObject);
begin
  inherited;
  dxPage.ActivePageIndex := 6;
  dxPageChange(self);

end;

procedure TFStruttura.dxBarPacsClick(Sender: TObject);
begin
  inherited;
  dxPage.ActivePageIndex := 7;
  dxPageChange(self);
  if not TabPacs.Active then
     TabPacs.Open;

end;

procedure TFStruttura.DBTreeNewKey(Sender: TObject; MaxValue: Variant;
  var KeyValue: Variant);
begin
  inherited;
  KeyValue := StrutturaPKSTRUTTURA.AsVariant;
end;

procedure TFStruttura.PacsxModNewRecord(DataSet: TDataSet);
begin
  inherited;
  PacsxModMODALITA_FK.AsInteger := ModalitaPKMODALITA.AsInteger;
end;

initialization
  Classes.RegisterClass(TFStruttura);

end.