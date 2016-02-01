unit CodiciRadiologia;

interface

uses
  Forms, BaseGrid, Messages, IInterface, cxGraphics, cxControls, cxLookAndFeels, 
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, 
  cxDataStorage, cxEdit, DB, cxDBData, cxSpinEdit, cxDBLookupComboBox, 
  cxMaskEdit, cxTextEdit, cxCurrencyEdit, cxCalendar, dxPrnDev, dxBar, 
  cxGridCustomPopupMenu, cxGridPopupMenu, rsStorage, rsPropSaver, AstaUpdateSQL, 
  cxClasses, dxPrnDlg, Classes, ActnList, AstaDrv2, AstaClientDataset, 
  cxSplitter, cxGridLevel, cxGridCustomTableView, cxGridTableView, 
  cxGridDBTableView, cxGridCustomView, cxGrid, cxPC, Controls, dxPSGlbl, 
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPSCompsProvider, 
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, 
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPScxEditorProducers, 
  dxPScxExtEditorProducers, dxPScxPageControlProducer, dxPSCore, dxPScxCommon, 
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinsdxBarPainter, 
  rsXmlData, cxNavigator, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPSdxDBOCLnk, dxBarBuiltInMenu, dxPSPrVwRibbon, dxPScxSchedulerLnk,
  dxSkinsdxRibbonPainter, dxPSdxLCLnk, Dialogs, cxLabel, ExtCtrls;

type
  TFCodiciRadiologia = class(TFBaseGrid)
    Metodiche: TAstaClientDataSet;
    sMetodiche: TDataSource;
    ActionList1: TActionList;
    NuovaMetodica: TAction;
    CancellaMetodica: TAction;
    ModificaMetodica: TAction;
    Prestazioni: TAstaClientDataSet;
    sPrestazioni: TDataSource;
    NuovoEsame: TAction;
    ModificaEsame: TAction;
    CancellaEsame: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    cxGridListiniDESCRIZIONE: TcxGridDBColumn;
    LkTariffario: TAstaClientDataSet;
    LkTariffarioIDENT: TStringField;
    LkTariffarioDESCRIZIONE: TStringField;
    cxPageControl: TcxPageControl;
    dxTabMetodiche: TcxTabSheet;
    dxTabElenco: TcxTabSheet;
    NuovoEsameMultiplo: TAction;
    dxBarButton13: TdxBarButton;
    dxTabTariffario: TcxTabSheet;
    sLkTariffario: TDataSource;
    cxGridTariffario: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    LkTariffarioLAST_MOD: TDateTimeField;
    LkTariffarioUSER_ID: TIntegerField;
    cxGridTariffarioIDENT: TcxGridDBColumn;
    cxGridTariffarioDESCRIZIONE: TcxGridDBColumn;
    cxGridTariffarioDATA_FINE: TcxGridDBColumn;
    cxGridTariffarioDATA_INIZIO: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGrid2Level1: TcxGridLevel;
    cxGridCodici: TcxGridDBTableView;
    cxGridCodiciCODICE: TcxGridDBColumn;
    cxGridCodiciDESCRIZIONE: TcxGridDBColumn;
    cxGridCodiciDURATA: TcxGridDBColumn;
    cxGridCodiciDOSE: TcxGridDBColumn;
    cxGridCodiciPKCODICIRAD: TcxGridDBColumn;
    cxGridCodiciGRUPPO: TcxGridDBColumn;
    dxBarDockControl2: TdxBarDockControl;
    rsPropSaver1: TrsPropSaver;
    dxComponentPrinterTariffario: TdxGridReportLink;
    cxGridPopupGruppi: TcxGridPopupMenu;
    dxPopGruppi: TdxBarPopupMenu;
    dxPopCodici: TdxBarPopupMenu;
    dxComponentPrinterRadCodici: TdxGridReportLink;
    ModificaInComposto: TAction;
    ModificaInNormale: TAction;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    cxGridPopupCodiciRad: TcxGridPopupMenu;
    ModificaTariffario: TAction;
    dxBarSubItem4: TdxBarSubItem;
    Personalizza: TAction;
    dxBarButton16: TdxBarButton;
    cxGridCodiciCOMPOSTO: TcxGridDBColumn;
    LkTariffarioEXTRA_TARIFFARIO: TIntegerField;
    cxGridCodiciBRANCA: TcxGridDBColumn;
    cxListini: TcxTabSheet;
    cxGridListini: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    Listini: TAstaClientDataSet;
    ListiniCODICE: TStringField;
    sListini: TDataSource;
    cxGridListiniCODICE: TcxGridDBColumn;
    cxGridListiniDATA_INIZIO: TcxGridDBColumn;
    cxGridListiniDATA_FINE: TcxGridDBColumn;
    TariffeListini: TAstaClientDataSet;
    sTariffeListini: TDataSource;
    cxGrid4Level2: TcxGridLevel;
    cxGridTariffeListini: TcxGridDBTableView;
    TariffeListiniLEG_CODICE: TStringField;
    TariffeListiniPSP_IDENT: TStringField;
    TariffeListiniTAR_TICKET: TFloatField;
    TariffeListiniDESCRIZIONE: TStringField;
    cxGridTariffeListiniLEG_CODICE: TcxGridDBColumn;
    cxGridTariffeListiniPSP_IDENT: TcxGridDBColumn;
    cxGridTariffeListiniTAR_TICKET: TcxGridDBColumn;
    cxGridTariffeListiniDESCRIZIONE: TcxGridDBColumn;
    ListiniDESCRIZIONE: TStringField;
    LkTariffarioDATA_FINE: TDateTimeField;
    LkTariffarioDATA_INIZIO: TDateTimeField;
    aCopiaListino: TAction;
    CopiaListino: TAstaClientDataSet;
    dxCopiaListino: TdxBarButton;
    cxGridPopupListini: TcxGridPopupMenu;
    dxPopListini: TdxBarPopupMenu;
    cxGridCodiciPESO_MEDICO: TcxGridDBColumn;
    MetodicheGRESAMI: TStringField;
    MetodicheDESCRIZIONE: TStringField;
    EsamiRadiologia: TAstaClientDataSet;
    EsamiRadiologiaCODICE: TStringField;
    EsamiRadiologiaDESCRIZIONE: TStringField;
    EsamiRadiologiaPKCODXRAD: TIntegerField;
    EsamiRadiologiaDATA_INIZIO: TDateTimeField;
    EsamiRadiologiaDATA_FINE: TDateTimeField;
    EsamiRadiologiaDURATA: TIntegerField;
    EsamiRadiologiaLAST_MOD: TDateTimeField;
    EsamiRadiologiaUSER_ID: TIntegerField;
    EsamiRadiologiaDOSE: TFloatField;
    EsamiRadiologiaPESO_MEDICO: TFloatField;
    EsamiRadiologiaCOMPOSTO: TIntegerField;
    EsamiRadiologiaBRANCA: TStringField;
    EsamiRadiologiaGRUPPO: TStringField;
    EsamiRadiologiaDESCGRUPPO: TStringField;
    Splitter2: TcxSplitter;
    cxGrid3: TcxGrid;
    GridCodici: TcxGridDBTableView;
    GridCodiciCODICE: TcxGridDBColumn;
    GridCodiciDESCRIZIONE: TcxGridDBColumn;
    cxLevelGruppi: TcxGridLevel;
    PrestazioniCODICE: TStringField;
    PrestazioniDESCRIZIONE: TStringField;
    PrestazioniDATA_INIZIO: TDateTimeField;
    PrestazioniDATA_FINE: TDateTimeField;
    PrestazioniLAST_MOD: TDateTimeField;
    PrestazioniUSER_ID: TIntegerField;
    PrestazioniDOSE: TFloatField;
    PrestazioniPKCODICIRAD: TIntegerField;
    PrestazioniCOMPOSTO: TIntegerField;
    PrestazioniBRANCA: TStringField;
    sEsamiRadiologia: TDataSource;
    EsamiRadiologiaREPARTI_FK: TIntegerField;
    GridCodiciPKCODICIRAD: TcxGridDBColumn;
    EsamiRadiologiaCODICIRAD_FK: TIntegerField;
    ModificaRadEsame: TAction;
    CancellaCodRad: TAction;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    MetodichePKGRESAMI: TIntegerField;
    MetodicheREPARTI_FK: TIntegerField;
    cxMetodicheDB: TcxGridDBTableView;
    cxMetodicheLevel1: TcxGridLevel;
    cxMetodiche: TcxGrid;
    cxMetodicheDBGRESAMI: TcxGridDBColumn;
    cxMetodicheDBDESCRIZIONE: TcxGridDBColumn;
    cxMetodicheDBPKGRESAMI: TcxGridDBColumn;
    cxMetodicheDBREPARTI_FK: TcxGridDBColumn;
    cxGridPopupCodxRad: TcxGridPopupMenu;
    dxBarButton19: TdxBarButton;
    dxPopRadCodici: TdxBarPopupMenu;
    dxBarButton20: TdxBarButton;
    aRefreshListini: TAction;
    MetodichePESO_MEDICO: TFloatField;
    cxMetodicheDBPESO_MEDICO: TcxGridDBColumn;
    dxNonAssegnati: TdxBarButton;
    EsamiRadiologiaPREPTEXT_FK: TIntegerField;
    cxGridCodiciPREPTEXT_FK: TcxGridDBColumn;
    EsamiRadiologiaDESCPREPARAZIONE: TStringField;
    GridCodiciCOMPOSTO: TcxGridDBColumn;
    cxGruppiSpec: TcxTabSheet;
    cxGridSpecLevel1: TcxGridLevel;
    cxGridSpec: TcxGrid;
    Specificazioni: TAstaClientDataSet;
    sSpecificazioni: TDataSource;
    SpecificazioniIDSPECIFICAZIONI: TStringField;
    SpecificazioniDESCRIZIONE: TStringField;
    SpecificazioniPKSPECIFICAZIONI: TIntegerField;
    SpecificazioniDATA_INIZIO: TDateTimeField;
    SpecificazioniDATA_FINE: TDateTimeField;
    cxGridSpecificazioni: TcxGridDBTableView;
    cxGridSpecificazioniIDSPECIFICAZIONI: TcxGridDBColumn;
    cxGridSpecificazioniDESCRIZIONE: TcxGridDBColumn;
    cxGridSpecificazioniPKSPECIFICAZIONI: TcxGridDBColumn;
    cxGridSpecificazioniDATA_INIZIO: TcxGridDBColumn;
    cxGridSpecificazioniDATA_FINE: TcxGridDBColumn;
    dxTuttiEsami: TdxBarButton;
    GridCodiciDATA_FINE: TcxGridDBColumn;
    EsamiRadiologiaPESO_TECNICO: TFloatField;
    cxGridCodiciPESO_TECNICO: TcxGridDBColumn;
    MetodichePESO_TECNICO: TFloatField;
    cxMetodicheDBPESO_TECNICO: TcxGridDBColumn;
    cxGridPopupTariffario: TcxGridPopupMenu;
    dxPopTariffario: TdxBarPopupMenu;
    Nuovotariffario: TAction;
    dxBarButton21: TdxBarButton;
    CancellaTariffario: TAction;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    ModificaListino: TAction;
    dxBarButton24: TdxBarButton;
    CancellaListino: TAction;
    dxBarButton25: TdxBarButton;
    StampaTariffario: TAction;
    dxBarButton26: TdxBarButton;
    dxComponentPrinterGruppiSpec: TdxGridReportLink;
    StampaGruppiSpec: TAction;
    StampaCodiciRad: TAction;
    dxBarButton27: TdxBarButton;
    dxComponentPrinterGruppi: TdxGridReportLink;
    StampaGruppi: TAction;
    dxBarButton28: TdxBarButton;
    AssegnaEsame: TAction;
    dxBarButton29: TdxBarButton;
    LkTariffarioCALCOLO_85: TIntegerField;
    cxGridTariffarioCALCOLO_85: TcxGridDBColumn;
    EsamiRadiologiaIDENT_FK: TStringField;
    cxGridCodiciIDENT_FK: TcxGridDBColumn;
    MetodicheTIPO_MODALITA: TStringField;
    Tipo_Modalita: TAstaClientDataSet;
    Tipo_ModalitaTIPO_MODALITA: TStringField;
    Tipo_ModalitaDESCRIZIONE: TStringField;
    sTipoModalita: TDataSource;
    cxMetodicheDBTIPO_MODALITA: TcxGridDBColumn;
    MetodicheDATA_FINE: TDateTimeField;
    cxMetodicheDBDATA_FINE: TcxGridDBColumn;
    ListiniDATA_INIZIO: TDateTimeField;
    ListiniDATA_FINE: TDateTimeField;
    LkBranche: TAstaClientDataSet;
    LkBrancheDESCRIZIONE: TStringField;
    LkBranchePKBRANCHE: TStringField;
    Componenti: TAstaClientDataSet;
    ComponentiDESCRIZIONE: TStringField;
    ComponentiCODICE: TStringField;
    ComponentiIDENT_FK: TStringField;
    ComponentiDATA_INIZIO: TDateTimeField;
    ComponentiDATA_FINE: TDateTimeField;
    ComponentiDURATA: TIntegerField;
    ComponentiDESCTARIFFARIO: TStringField;
    ComponentiDOSE: TFloatField;
    ComponentiPKCODICIRAD: TIntegerField;
    ComponentiPKGRUPPIPREST: TIntegerField;
    ComponentiCODICIRAD_FK: TIntegerField;
    ComponentiCODICIRAD_DETT: TIntegerField;
    ComponentiREPARTI_FK: TIntegerField;
    PrestazioniIDENT_FK: TStringField;
    PrestazioniGRESAMI_FK: TStringField;
    PrestazioniGRESAMI: TStringField;
    cxTabCodEsEsterni: TcxTabSheet;
    CodEsEsterni: TAstaClientDataSet;
    CodEsEsterniCOD_ESTERNO: TStringField;
    CodEsEsterniIDAUTHORITY: TStringField;
    CodEsEsterniDATA_INIZIO: TDateTimeField;
    CodEsEsterniDATA_FINE: TDateTimeField;
    cxGridCodEsEsterniDBTableView1: TcxGridDBTableView;
    cxGridCodEsEsterniLevel1: TcxGridLevel;
    cxGridCodEsEsterni: TcxGrid;
    sCodEsEsterni: TDataSource;
    cxGridCodEsEsterniDBTableView1CODICIRAD_FK: TcxGridDBColumn;
    cxGridCodEsEsterniDBTableView1COD_ESTERNO: TcxGridDBColumn;
    cxGridCodEsEsterniDBTableView1IDAUTHORITY: TcxGridDBColumn;
    cxGridCodEsEsterniDBTableView1DATA_INIZIO: TcxGridDBColumn;
    cxGridCodEsEsterniDBTableView1DATA_FINE: TcxGridDBColumn;
    cxGridCodEsEsterniDBTableView1DESC_ESTERNA: TcxGridDBColumn;
    qIdAuth: TAstaClientDataSet;
    qIdAuthIDAUTHORITY: TStringField;
    qIdAuthDESCRIZIONE: TStringField;
    sqIdAuth: TDataSource;
    CodEsEsterniDESC_ESTERNA: TStringField;
    PrestazioniCODICIRAD_FK: TIntegerField;
dxBarManager1Bar2: TdxBar;
    PrestazioniDURATA: TIntegerField;
    CodEsEsterniCODICIRAD_FK: TIntegerField;
    EsamiRadiologiaDESCBRANCA: TStringField;
    cxGridCodiciDESCBRANCA: TcxGridDBColumn;
    cxGridCodiciDATA_FINE: TcxGridDBColumn;
    EsamiRadiologiaCODEAN13: TStringField;
    cxGridCodiciCODEAN13: TcxGridDBColumn;
    aEstraiExcel: TAction;
    SaveDialog: TSaveDialog;
    TariffeListiniTAR_PAGANTI: TFloatField;
    cxGridTariffeListiniTAR_PAGANTI: TcxGridDBColumn;
    EsamiRadiologiaTAR_TICKET: TFloatField;
    cxGridCodiciTAR_TICKET: TcxGridDBColumn;
    SpecificazioniPREZZO: TFloatField;
    SpecificazioniCOSTO: TFloatField;
    cxGridSpecificazioniPREZZO: TcxGridDBColumn;
    cxGridSpecificazioniCOSTO: TcxGridDBColumn;
    cxTabSpecxEsami: TcxTabSheet;
    cxGridDBTableSpecifiche: TcxGridDBTableView;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGridDBTableSpecificheIDSPECIFICAZIONI: TcxGridDBColumn;
    cxGridDBTableSpecificheDESCRIZIONE: TcxGridDBColumn;
    cxGridDBTableSpecifichePKSPECIFICAZIONI: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    Panel1: TPanel;
    cxGridDBTableEsami: TcxGridDBTableView;
    cxGrid6Level1: TcxGridLevel;
    cxGrid6: TcxGrid;
    cxSplitter2: TcxSplitter;
    cxGridDBTableSpecxEsami: TcxGridDBTableView;
    cxGrid7Level1: TcxGridLevel;
    cxGrid7: TcxGrid;
    cxGridDBTableEsamiCODICE: TcxGridDBColumn;
    cxGridDBTableEsamiDESCRIZIONE: TcxGridDBColumn;
    cxGridDBTableEsamiPKSPECIFICAZIONI: TcxGridDBColumn;
    SpecxEsami: TAstaClientDataSet;
    SpecxEsamiPKSPECXCODRAD: TIntegerField;
    SpecxEsamiCODICIRAD_FK: TIntegerField;
    SpecxEsamiSPECIFICAZIONI_FK: TIntegerField;
    SpecxEsamiIDSPECIFICAZIONI: TStringField;
    SpecxEsamiDESCRIZIONE: TStringField;
    sSpecxEsami: TDataSource;
    cxGridDBTableSpecxEsamiPKSPECXCODRAD: TcxGridDBColumn;
    cxGridDBTableSpecxEsamiCODICIRAD_FK: TcxGridDBColumn;
    cxGridDBTableSpecxEsamiSPECIFICAZIONI_FK: TcxGridDBColumn;
    cxGridDBTableSpecxEsamiIDSPECIFICAZIONI: TcxGridDBColumn;
    cxGridDBTableSpecxEsamiDESCRIZIONE: TcxGridDBColumn;
    cxGridDBTableEsamiDATA_FINE: TcxGridDBColumn;
    PrestazioniCESPECIFIC: TIntegerField;
    cxGridDBTableEsamiCESPECIFIC: TcxGridDBColumn;
    SpecxEsamiPREZZO: TFloatField;
    SpecxEsamiCOSTO: TFloatField;
    cxGridDBTableSpecxEsamiPREZZO: TcxGridDBColumn;
    cxGridDBTableSpecxEsamiCOSTO: TcxGridDBColumn;
    cxGridDBTableSpecifichePREZZO: TcxGridDBColumn;
    TariffeListiniPKTARIFFE_PRESTAZIONI: TIntegerField;
    SpecificazioniCOD_ESTERNO: TStringField;
    cxGridSpecificazioniCOD_ESTERNO: TcxGridDBColumn;
    procedure NuovaMetodicaExecute(Sender: TObject);
    procedure ModificaMetodicaExecute(Sender: TObject);
    procedure CancellaMetodicaExecute(Sender: TObject);
    procedure NuovoEsameExecute(Sender: TObject);
    procedure ModificaEsameExecute(Sender: TObject);
    procedure CancellaEsameExecute(Sender: TObject);
    procedure NuovoEsameUpdate(Sender: TObject);
    procedure NuovaMetodicaUpdate(Sender: TObject);
    procedure CancellaEsameUpdate(Sender: TObject);
    procedure ModificaEsameUpdate(Sender: TObject);
    procedure CancellaMetodicaUpdate(Sender: TObject);
    procedure ModificaMetodicaUpdate(Sender: TObject);
    procedure NuovoEsameMultiploExecute(Sender: TObject);
    procedure LkTariffarioBeforePost(DataSet: TDataSet);
    procedure LkTariffarioNewRecord(DataSet: TDataSet);
    procedure GridCodiciKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridPopupMenu1PopupMenus0Popup(ASenderMenu: TComponent;
      AHitTest: TcxCustomGridHitTest; X, Y: Integer);
    procedure cxGridPopupMenu1PopupMenus2Popup(ASenderMenu: TComponent;
      AHitTest: TcxCustomGridHitTest; X, Y: Integer);
    procedure cxGridTariffarioDblClick(Sender: TObject);
    procedure cxGridCodiciKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridCodiciDataControllerSortingChanged(Sender: TObject);
    procedure cxGridTariffarioDataControllerSortingChanged(
      Sender: TObject);
    procedure GridCodiciDataControllerSortingChanged(Sender: TObject);
    procedure GridCodiciDblClick(Sender: TObject);
    procedure ModificaInCompostoExecute(Sender: TObject);
    procedure ModificaInNormaleExecute(Sender: TObject);
    procedure ModificaInCompostoUpdate(Sender: TObject);
    procedure ModificaInNormaleUpdate(Sender: TObject);
    procedure cxGridPopupMenu2PopupMenus0Popup(ASenderMenu: TComponent;
      AHitTest: TcxCustomGridHitTest; X, Y: Integer);
    procedure cxGrid1ActiveTabChanged(Sender: TcxCustomGrid;
      ALevel: TcxGridLevel);
    procedure ModificaTariffarioExecute(Sender: TObject);
    procedure PersonalizzaExecute(Sender: TObject);
    procedure PersonalizzaUpdate(Sender: TObject);
    procedure cxGridTariffeListiniDataControllerDataModeControllerDetailFirst(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
    function cxGridTariffeListiniDataControllerDataModeControllerDetailIsCurrentQuery(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant): Boolean;
    procedure aCopiaListinoExecute(Sender: TObject);
    procedure cxGridPopupMenu3PopupMenus0Popup(ASenderMenu: TComponent;
      AHitTest: TcxCustomGridHitTest; X, Y: Integer);
    procedure cxGridCodiciDblClick(Sender: TObject);
    procedure EsamiRadiologiaBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure PrestazioniBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxGridCodiciDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure cxGridCodiciDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure GridCodiciDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure GridCodiciDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ModificaRadEsameExecute(Sender: TObject);
    procedure CancellaCodRadExecute(Sender: TObject);
    procedure CancellaCodRadUpdate(Sender: TObject);
    procedure MetodicheBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure MetodicheNewRecord(DataSet: TDataSet);
    procedure aRefreshListiniExecute(Sender: TObject);
    procedure dxNonAssegnatiClick(Sender: TObject);
    procedure dxTuttiEsamiClick(Sender: TObject);
    procedure GridCodiciNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure NuovotariffarioExecute(Sender: TObject);
    procedure cxGridTariffarioNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure CancellaTariffarioExecute(Sender: TObject);
    procedure ModificaListinoExecute(Sender: TObject);
    procedure CancellaListinoExecute(Sender: TObject);
    procedure cxGridListiniNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure StampaTariffarioExecute(Sender: TObject);
    procedure StampaGruppiSpecExecute(Sender: TObject);
    procedure StampaCodiciRadExecute(Sender: TObject);
    procedure StampaGruppiExecute(Sender: TObject);
    procedure cxGridCodiciNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure AssegnaEsameExecute(Sender: TObject);
    procedure ModificaTariffarioUpdate(Sender: TObject);
    procedure CancellaTariffarioUpdate(Sender: TObject);
    procedure StampaTariffarioUpdate(Sender: TObject);
    procedure ModificaListinoUpdate(Sender: TObject);
    procedure CancellaListinoUpdate(Sender: TObject);
    procedure AssegnaEsameUpdate(Sender: TObject);
    procedure GridCodiciDESCRIZIONEStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure PrestazioniAfterDelete(DataSet: TDataSet);
    procedure ComponentiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxGruppiDBNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cxMetodicheDBDblClick(Sender: TObject);
    procedure cxPageControlPageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure aEstraiExcelExecute(Sender: TObject);
    procedure TariffeListiniPSP_IDENTChange(Sender: TField);
    procedure cxGridDBTableSpecxEsamiDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGridDBTableSpecxEsamiDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxGridDBTableSpecificheDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGridDBTableSpecificheDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxGridDBTableEsamiFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure SpecxEsamiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxGridDBTableSpecificheDblClick(Sender: TObject);
  private
    { Private declarations }
    oldfiltered: Boolean;
    procedure AggiungiCodici( wView: TcxGridDBTableView; xController: TcxCustomGridTableController );
    procedure ApriCodMultiplo;
    procedure ChiudiCodMultiplo;
    procedure AggiungiSpecificazioni( wView: TcxGridDBTableView; xController: TcxCustomGridTableController );
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure DoShow; override;
    function CaricaToolBar: TdxBars; override;
  end;


var
  FCodiciRadiologia: TFCodiciRadiologia;

implementation

uses
  DMCommon, Windows, sysutils, msgdlgs, Variants, ModiCodEsame, 
  AstaDBTypes, ModiCodMultiplo, ModTariffario, CopiaListino, ModiCodRadEsame, 
  IIConsts, ModiCodRadMultiplo, EditMetodica, cxGridExportLink;

{$R *.DFM}

function TFCodiciRadiologia.CaricaToolBar: TdxBars;
begin
  result := dxBarManager1.Bars;
end;

procedure TFCodiciRadiologia.NuovaMetodicaExecute(Sender: TObject);
begin
  FEditMetodica := TFEditMetodica.Create(nil);
  try
    if not Assigned(FEditMetodica.sMetodiche.DataSet) then
       FEditMetodica.sMetodiche.DataSet := Metodiche;
    if not Assigned(FEditMetodica.sTipoModalita.DataSet) then
       FEditMetodica.sTipoModalita.DataSet := Tipo_Modalita;
    Metodiche.Insert;
    if not (FEditMetodica.ShowModal=mrOk) then
       Metodiche.Cancel;
  finally
     FEditMetodica.Free;
  end;
end;

procedure TFCodiciRadiologia.ModificaMetodicaExecute(Sender: TObject);
begin
  FEditMetodica  := TFEditMetodica.Create(nil);
  try
    if not Assigned(FEditMetodica.sMetodiche.DataSet) then
       FEditMetodica.sMetodiche.DataSet := Metodiche;
    if not Assigned(FEditMetodica.sTipoModalita.DataSet) then
       FEditMetodica.sTipoModalita.DataSet := Tipo_Modalita;
    Metodiche.Edit;
    if not (FEditMetodica.ShowModal=mrOk) then
       Metodiche.Cancel;
  finally
     FEditMetodica.Free;
  end;
end;

procedure TFCodiciRadiologia.CancellaMetodicaExecute(Sender: TObject);
begin
  if (MsgDlgPos(RS_Gene_Msg_ConfCanc, '',ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes) then
     Metodiche.Delete;

end;

procedure TFCodiciRadiologia.NuovoEsameExecute(Sender: TObject);
var
  TempUM: TAstaUpdateMethod;
begin

  FModiCodEsame := TFModiCodEsame.Create(nil);
  try
  FModiCodEsame.sLkTariffario.DataSet := LkTariffario;
  FModiCodEsame.sLkBranche.DataSet := LkBranche;
  FModiCodEsame.Prestazioni.OpenNoFetch;
  FModiCodEsame.Prestazioni.Insert;

  if (cxPageControl.ActivePage=dxTabMetodiche) then
  begin
//      FModiCodEsame.PrestazioniPRESTSPECMULT_FK.Value := SubGruppiPKPRESTSPECMULT.AsInteger;
//      FModiCodEsame.PrestazioniROOT.AsString := GruppiCODICE.asString;
//      FModiCodEsame.PrestazioniSUBGRP.AsString := SubGruppiCODICE.asString;

//      FModiCodEsame.SubGruppi.CancelRange;
//      FModiCodEsame.SubGruppi.SetRange([GruppiPKPRESTSPECMULT.AsInteger],[GruppiPKPRESTSPECMULT.AsInteger]);

  end;

  if FModiCodEsame.ShowModal=mrOk then
  begin
      TempUM := Prestazioni.UpdateMethod;
      Prestazioni.UpdateMethod := umManual;
      try
      Prestazioni.Append;
      PrestazioniPKCODICIRAD.AsInteger := FModiCodEsame.PrestazioniPKCODICIRAD.AsInteger;
      Prestazioni.RefreshRecord;
      Prestazioni.Post;
      finally
      Prestazioni.UpdateMethod := TempUM;
      end;
  end;
  finally
     FModiCodEsame.Free;
     FModiCodEsame := nil;
  end;
end;

procedure TFCodiciRadiologia.ModificaEsameExecute(Sender: TObject);
var
  res: integer;
  refGrid: TcxCustomGridView;  // TcxGridDBTableView;
  esComposto: boolean;
  pkr: Integer;
begin

  esComposto := (PrestazioniCOMPOSTO.AsInteger=1);
  pkr := PrestazioniPKCODICIRAD.AsInteger;

  if not esComposto then
  begin
    FModiCodEsame := TFModiCodEsame.Create(nil);
    try

        FModiCodEsame.sLkTariffario.DataSet := LkTariffario;
        FModiCodEsame.sLkBranche.DataSet := LkBranche;

        FModiCodEsame.Prestazioni.Parambyname('pkcodicirad').AsInteger := pkr;
        FModiCodEsame.Prestazioni.Open;
        FModiCodEsame.Prestazioni.Edit;
        res := FModiCodEsame.ShowModal;
    finally
       FModiCodEsame.Free;
       FModiCodEsame := nil;
    end;
  end
  else begin
    ApriCodMultiplo();
    try

        FModiCodMultiplo.Prestazioni.Parambyname('pkcodicirad').AsInteger := pkr;
        FModiCodMultiplo.Prestazioni.Open;
        FModiCodMultiplo.Componenti.Open;
        FModiCodMultiplo.Prestazioni.Edit;
        FModiCodMultiplo.CopiaDataset(Prestazioni);
        res := FModiCodMultiplo.ShowModal;
    finally
       ChiudiCodMultiplo();
    end;
  end;

  if res=mrOk then
     Prestazioni.RefreshRecord;

  if cxPageControl.ActivePage = dxTabMetodiche then
     refGrid := cxGrid3.FocusedView
  else if cxPageControl.ActivePage = dxTabElenco then
     refGrid := cxGrid2.FocusedView
  else
     refGrid := cxGrid1.FocusedView;

  ActiveControl := refGrid.Site;

end;

procedure TFCodiciRadiologia.DoShow;
begin

  inherited;

  if dxNonAssegnati.Down then
     dxNonAssegnati.Click;

end;

procedure TFCodiciRadiologia.CancellaEsameExecute(Sender: TObject);
begin
  if (MsgDlgPos(RS_EliminazioneEsami, '',ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes) then
      Prestazioni.delete;
end;

procedure TFCodiciRadiologia.NuovoEsameUpdate(Sender: TObject);
begin
  NuovoEsame.Enabled := (cxPageControl.ActivePage=dxTabElenco) or
                             (cxPageControl.ActivePage=dxTabMetodiche);
end;

procedure TFCodiciRadiologia.NuovaMetodicaUpdate(Sender: TObject);
begin
  NuovaMetodica.Enabled := (cxPageControl.ActivePage=dxTabMetodiche);
end;

procedure TFCodiciRadiologia.CancellaEsameUpdate(Sender: TObject);
begin
  CancellaEsame.Enabled := ((cxPageControl.ActivePage=dxTabElenco) and not Prestazioni.IsEmpty);
end;

procedure TFCodiciRadiologia.ModificaEsameUpdate(Sender: TObject);
begin
  ModificaEsame.Enabled := ((cxPageControl.ActivePage=dxTabElenco) and not Prestazioni.IsEmpty);
end;

procedure TFCodiciRadiologia.CancellaMetodicaUpdate(Sender: TObject);
begin
  CancellaMetodica.Enabled := (cxPageControl.ActivePage=dxTabMetodiche) and (cxMetodicheDB.Controller.SelectedRecordCount>0);
end;

procedure TFCodiciRadiologia.ModificaMetodicaUpdate(Sender: TObject);
begin
  ModificaMetodica.Enabled := (cxPageControl.ActivePage=dxTabMetodiche) and (cxMetodicheDB.Controller.SelectedRecordCount>0);
end;

constructor TFCodiciRadiologia.Create(AOwner: TComponent);
begin

  inherited;

  FCodiciRadiologia := Self;

  rsPropSaver1.Storage.Load;
  rsPropSaver1.LoadValues;

  EsamiRadiologia.open;
  Metodiche.open;
  Prestazioni.open;
  Tipo_Modalita.open;
  LkBranche.Open;

  FDMCommon.ApplicaDataFine(cxMetodicheDB, cxMetodicheDBDATA_FINE);
  FDMCommon.ApplicaDataFine(GridCodici, GridCodiciDATA_FINE);
//  FDMCommon.ApplicaDataFine(cxGridCodici, cxGridCodiciDATA_FINE);
  FDMCommon.ApplicaDataFine(cxGridTariffario, cxGridTariffarioDATA_FINE);
  FDMCommon.ApplicaDataFine(cxGridListini, cxGridListiniDATA_FINE);
  FDMCommon.ApplicaDataFine(cxGridSpecificazioni,cxGridSpecificazioniDATA_FINE);
  FDMCommon.ApplicaDataFine(cxGridCodEsEsterniDBTableView1,cxGridCodEsEsterniDBTableView1DATA_FINE);
  FDMCommon.ApplicaDataFine(cxGridDBTableEsami,cxGridDBTableEsamiDATA_FINE);
  
  dxTabMetodiche.TabVisible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);

  dxTabMetodiche.TabVisible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  cxGruppiSpec.TabVisible := (FDMCommon.LeggiPostoLavoroCHK_SPECIFICAZIONI.AsInteger=1);
  cxTabSpecxEsami.TabVisible := (FDMCommon.LeggiPostoLavoroCHK_SPECIFICAZIONI.AsInteger=1);
  cxTabCodEsEsterni.TabVisible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);

  if (FDMCommon.Param_TicketCODICI_CUP.AsInteger=0) then
  begin
     dxTabTariffario.TabVisible := false;
     cxListini.TabVisible := false;
     FDMCommon.SetVisible(cxGridCodiciIDENT_FK,false);
  end;

  cxPageControl.ActivePage := dxTabElenco;
  
end;

procedure TFCodiciRadiologia.ApriCodMultiplo;
begin

  FModiCodMultiplo := TFModiCodMultiplo.Create(nil);
  FModiCodMultiplo.sLkBranche.DataSet := LkBranche;
  FModiCodMultiplo.sLkTariffario.DataSet := LkTariffario;
  oldfiltered := Prestazioni.Filtered;
  if oldfiltered then
     Prestazioni.Filtered := False;
//  Prestazioni.DisableControls;

end;

procedure TFCodiciRadiologia.ChiudiCodMultiplo;
begin

  FreeAndNil(FModiCodMultiplo);
  if oldfiltered then
     Prestazioni.Filtered := True;
//  Prestazioni.EnableControls;

end;

procedure TFCodiciRadiologia.NuovoEsameMultiploExecute(Sender: TObject);
var
  TempUM: TAstaUpdateMethod;
begin

  ApriCodMultiplo();
  try

  FModiCodMultiplo.CopiaDataset(Prestazioni);
  FModiCodMultiplo.Prestazioni.OpenNoFetch;
  FModiCodMultiplo.Componenti.OpenNoFetch;
  FModiCodMultiplo.Prestazioni.Insert;

  if (cxPageControl.ActivePage=dxTabMetodiche) then
  begin
{
      FModiCodMultiplo.PrestazioniPRESTSPECMULT_FK.Value := SubGruppiPKPRESTSPECMULT.AsInteger;
      FModiCodMultiplo.PrestazioniROOT.AsString := GruppiCODICE.asString;
      FModiCodMultiplo.PrestazioniSUBGRP.AsString := SubGruppiCODICE.asString;

      FModiCodMultiplo.SubGruppi.CancelRange;
      FModiCodMultiplo.SubGruppi.SetRange([GruppiPKPRESTSPECMULT.AsInteger],[GruppiPKPRESTSPECMULT.AsInteger]);
}
  end;

  if FModiCodMultiplo.ShowModal=mrOk then
  begin
      TempUM := Prestazioni.UpdateMethod;
      Prestazioni.UpdateMethod := umManual;
      try
        Prestazioni.Append;
        PrestazioniPKCODICIRAD.AsInteger := FModiCodMultiplo.PrestazioniPKCODICIRAD.AsInteger;
        Prestazioni.Post;
        Prestazioni.RefreshRecord;
      finally
        Prestazioni.UpdateMethod := TempUM;
      end;
  end;
  finally

     ChiudiCodMultiplo();

  end;

end;

procedure TFCodiciRadiologia.LkTariffarioBeforePost(DataSet: TDataSet);
begin
  LkTariffarioUSER_ID.AsInteger := gblCodUtente;
end;

procedure TFCodiciRadiologia.LkTariffarioNewRecord(DataSet: TDataSet);
begin
  LkTariffarioEXTRA_TARIFFARIO.AsInteger := 0; // 1;
  LkTariffarioCALCOLO_85.AsInteger := 0;  
end;

procedure TFCodiciRadiologia.GridCodiciKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_RETURN then
     ModificaEsame.Execute;

end;
procedure TFCodiciRadiologia.cxGridPopupMenu1PopupMenus0Popup(
  ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X, Y: Integer);
begin
  dxPopGruppi.Popup(X, Y);
end;

procedure TFCodiciRadiologia.cxGridPopupMenu1PopupMenus2Popup(
  ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X, Y: Integer);
begin
  dxPopCodici.Popup(X, Y);
end;

procedure TFCodiciRadiologia.cxGridTariffarioDblClick(Sender: TObject);
begin
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxGrid1),LongInt(ModificaTariffario));
end;

procedure TFCodiciRadiologia.cxGridCodiciKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_RETURN then
     ModificaRadEsame.Execute;
end;

procedure TFCodiciRadiologia.cxGridCodiciDataControllerSortingChanged(
  Sender: TObject);
begin
{ non serve più ?
  if cxGridCodici.OptionsBehavior.IncSearch then
     cxGridCodici.OptionsBehavior.IncSearchItem := cxGridCodici.Controller.PressedColumn;
}
end;

procedure TFCodiciRadiologia.cxGridTariffarioDataControllerSortingChanged(
  Sender: TObject);
begin
{ non serve più ?
  if cxGridTariffario.OptionsBehavior.IncSearch then
     cxGridTariffario.OptionsBehavior.IncSearchItem := cxGridTariffario.Controller.PressedColumn;
}
end;

procedure TFCodiciRadiologia.GridCodiciDataControllerSortingChanged(
  Sender: TObject);
begin
{ non serve più ?
  if GridCodici.OptionsBehavior.IncSearch then
     GridCodici.OptionsBehavior.IncSearchItem := GridCodici.Controller.PressedColumn;
}
end;



procedure TFCodiciRadiologia.GridCodiciDblClick(Sender: TObject);
begin
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxGrid3),LongInt(ModificaEsame));
end;

procedure TFCodiciRadiologia.ModificaInCompostoExecute(Sender: TObject);
var
 pkr: Integer;
begin
  if (MsgDlgPos(RS_Gene_Msg_ConfInComposto, '',ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes) then
  begin
    pkr := PrestazioniPKCODICIRAD.AsInteger;
    ApriCodMultiplo();
    try

        FModiCodMultiplo.Prestazioni.Parambyname('pkcodicirad').AsInteger := pkr;
        FModiCodMultiplo.Prestazioni.Open;
        FModiCodMultiplo.Componenti.Open;
        FModiCodMultiplo.CopiaDataset(Prestazioni);
        FModiCodMultiplo.Prestazioni.Edit;
        FModiCodMultiplo.PrestazioniCOMPOSTO.AsInteger := 1;
        if FModiCodMultiplo.ShowModal=mrOk then
           Prestazioni.RefreshRecord;

    finally
       ChiudiCodMultiplo();
    end;

  end;
end;

procedure TFCodiciRadiologia.ModificaInNormaleExecute(Sender: TObject);
begin
  if (MsgDlgPos(RS_Gene_Msg_ConfInNormale, '',ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes) then
  begin
    FModiCodEsame := TFModiCodEsame.Create(nil);
    try

        FModiCodEsame.sLkTariffario.DataSet := LkTariffario;
        FModiCodEsame.sLkBranche.DataSet := LkBranche;

        FModiCodEsame.Prestazioni.Parambyname('pkcodicirad').AsInteger := PrestazioniPKCODICIRAD.AsInteger;
        FModiCodEsame.Prestazioni.Open;
        FModiCodEsame.Prestazioni.Edit;
        FModiCodEsame.PrestazioniCOMPOSTO.AsInteger := 0;
        if FModiCodEsame.ShowModal=mrOk then
           Prestazioni.RefreshRecord;

    finally
       FModiCodEsame.Free;
       FModiCodEsame := nil;
    end;

  end;
end;

procedure TFCodiciRadiologia.ModificaInCompostoUpdate(Sender: TObject);
begin
  ModificaInComposto.Enabled := ((cxPageControl.ActivePage=dxTabElenco) and not Prestazioni.IsEmpty and (PrestazioniCOMPOSTO.AsInteger=0));

end;

procedure TFCodiciRadiologia.ModificaInNormaleUpdate(Sender: TObject);
begin
  ModificaInNormale.Enabled := ((cxPageControl.ActivePage=dxTabElenco) and not Prestazioni.IsEmpty and (PrestazioniCOMPOSTO.AsInteger=1));

end;

procedure TFCodiciRadiologia.cxGridPopupMenu2PopupMenus0Popup(
  ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X, Y: Integer);
begin
  dxPopCodici.Popup(X, Y);
end;

procedure TFCodiciRadiologia.cxGrid1ActiveTabChanged(Sender: TcxCustomGrid;
  ALevel: TcxGridLevel);
begin
  ALevel.GridView.DataController.UpdateItems(False);
end;

procedure TFCodiciRadiologia.ModificaTariffarioExecute(Sender: TObject);
begin
  FModTariffario := TFModTariffario.Create(nil);
  try
     FModTariffario.sLkTariffario.DataSet := LkTariffario;
     if not (FModTariffario.ShowModal=mrOk) then
        LkTariffario.Cancel;
  finally
     FModTariffario.Free;
     FModTariffario := nil;
  end;

end;

procedure TFCodiciRadiologia.PersonalizzaExecute(Sender: TObject);
begin

   if cxPageControl.ActivePage=dxTabElenco then
   begin
     cxGridCodici.OptionsView.ColumnAutoWidth := false;
     cxGridCodici.Controller.Customization := true;
   end
   else if cxPageControl.ActivePage=dxTabTariffario then
   begin
     cxGridTariffario.OptionsView.ColumnAutoWidth := false;
     cxGridTariffario.Controller.Customization := true;
   end;

end;

procedure TFCodiciRadiologia.PersonalizzaUpdate(Sender: TObject);
begin
  Personalizza.Enabled := (cxPageControl.ActivePage=dxTabElenco) or (cxPageControl.ActivePage=dxTabTariffario);

end;

procedure TFCodiciRadiologia.cxGridTariffeListiniDataControllerDataModeControllerDetailFirst(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
begin
  FDMCommon.DetailFirst(ADataSet,AMasterDetailKeyFieldNames,AMasterDetailKeyValues,AReopened);
end;

function TFCodiciRadiologia.cxGridTariffeListiniDataControllerDataModeControllerDetailIsCurrentQuery(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant): Boolean;
begin
  result := FDMCommon.DetailIsCurrentQuery(ADataSet,AMasterDetailKeyFieldNames,AMasterDetailKeyValues);
end;

procedure TFCodiciRadiologia.aCopiaListinoExecute(Sender: TObject);
var
  lprec: string;
begin
  FCopiaListino := TFCopiaListino.Create(nil);
  try
     lprec := ListiniCODICE.AsString;
     Listini.Insert;
     FCopiaListino.sListini.Dataset := Listini;
     FCopiaListino.ActiveControl := FCopiaListino.cxCodice;
     if FCopiaListino.ShowModal=mrOk then
     begin
        try
        Listini.Post;
        CopiaListino.Parambyname('old_codice').AsString := lprec;
        CopiaListino.Parambyname('new_codice').AsString := ListiniCODICE.AsString;
        CopiaListino.ExecCommit;
        except
           Listini.Cancel;
           raise;
        end;
     end
     else
        Listini.Cancel;
  finally
       FCopiaListino.Free;
       FCopiaListino := nil;
  end;

end;

procedure TFCodiciRadiologia.cxGridPopupMenu3PopupMenus0Popup(
  ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X, Y: Integer);
begin
  dxPopListini.Popup(X, Y);
end;

procedure TFCodiciRadiologia.cxGridCodiciDblClick(Sender: TObject);
begin
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxGrid2),LongInt(ModificaRadEsame));
end;

procedure TFCodiciRadiologia.EsamiRadiologiaBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFCodiciRadiologia.PrestazioniBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFCodiciRadiologia.cxGridCodiciDragDrop(Sender, Source: TObject;
  X, Y: Integer);
var
//  TargetData: TAstaClientDataset;
  aSourceView,aDragView: TcxGridDBTableView;
//  aTargetView: TcxGridDBTableView;

begin

  aSourceView := FDMCommon.GetRealDragSourceGridView (TcxDragControlObject (Source));
//  aTargetView := TcxGridSite(Sender).GridView as TcxGridDBTableView;
  aDragView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));

//  TargetData := aTargetView.DataController.DataSource.DataSet as TAstaClientDataset;

  if aSourceView.DataController.FocusedRecordIndex<>-1 then
  begin
      AggiungiCodici(aDragView, aSourceView.Controller);
//      TargetData.syRefresh;
  end;

end;

procedure TFCodiciRadiologia.cxGridCodiciDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  aSourceView: TcxGridDBTableView;
  i: integer;
begin
  Accept := false;
  if (Source is TcxDragControlObject) and (Sender is TcxGridSite) then
  begin
     aSourceView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
     Accept := (aSourceView=GridCodici);
     i := 0;
     while Accept and (i<GridCodici.Controller.SelectedRecordCount) do
     begin
         Accept := Accept and VarIsNull(GridCodici.Controller.SelectedRecords[i].Values[GridCodiciDATA_FINE.Index])
                   and (dxNonAssegnati.Down or not EsamiRadiologia.LocateRecord('CODICE',GridCodici.Controller.SelectedRecords[i].Values[GridCodiciCODICE.Index],[]));
         inc(i);
     end;
  end;

end;

procedure TFCodiciRadiologia.GridCodiciDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  aSourceView: TcxGridDBTableView;
//  SourceData: TAstaClientDataset;
  puntamento: string;
begin

  if (MsgDlgPos(RS_EliminazioneEsamiRad, '',ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes) then
  begin
    aSourceView := FDMCommon.GetRealDragSourceGridView (TcxDragControlObject (Source));
//    SourceData := aSourceView.DataController.Datasource.DataSet as TAstaClientDataset;
    if aSourceView.Controller.SelectedRecordCount>0 then
       puntamento := aSourceView.Controller.SelectedRecords[0].Values[cxGridCodiciCODICE.Index];
    aSourceView.Controller.DeleteSelection;
  //  SourceData.syRefresh;
    Prestazioni.syRefresh;
    if puntamento<>'' then
       Prestazioni.Locate('CODICE',puntamento,[]);
  end;

end;

procedure TFCodiciRadiologia.GridCodiciDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var
  aSourceView: TcxGridDBTableView;
begin

  Accept := false;
  if (Source is TcxDragControlObject) and (Sender is TcxGridSite) then
  begin
     aSourceView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
     Accept := (aSourceView=cxGridCodici);
  end;

end;

procedure TFCodiciRadiologia.AggiungiCodici( wView: TcxGridDBTableView; xController: TcxCustomGridTableController );
var
  z,i: integer;
  TempUM: TAstaUpdateMethod;
  puntamento: integer;
  lAssociati: TStringList;
begin
     puntamento := -1;
     cxGridCodici.BeginUpdate;
//     TempUM := Prestazioni.UpdateMethod;
//     Prestazioni.UpdateMethod := umManual;
     lAssociati := TStringList.Create;
     try

     for i:=0 to xController.SelectedRecordCount-1 do
     begin
         EsamiRadiologia.Append;
         try
         EsamiRadiologiaCODICIRAD_FK.AsInteger := xController.SelectedRecords[i].Values[GridCodiciPKCODICIRAD.Index];
         EsamiRadiologiaREPARTI_FK.AsInteger := gblpkrep;
         EsamiRadiologia.Post;
         EsamiRadiologia.RefreshRecord;

         if puntamento=-1 then
            puntamento := EsamiRadiologiaPKCODXRAD.AsInteger;
         if xController.SelectedRecords[i].Values[GridCodiciCOMPOSTO.Index]=1 then
         begin
            Componenti.Parambyname('codicirad_fk').AsInteger := xController.SelectedRecords[i].Values[GridCodiciPKCODICIRAD.Index];
            Componenti.syRefresh;
            while not Componenti.eof do
            begin
              if not EsamiRadiologia.Locate('CODICIRAD_FK',ComponentiPKCODICIRAD.AsInteger,[]) then
              begin
                 EsamiRadiologia.Append;
                 EsamiRadiologiaCODICIRAD_FK.AsInteger := ComponentiPKCODICIRAD.AsInteger;
                 EsamiRadiologiaREPARTI_FK.AsInteger := gblpkrep;
                 EsamiRadiologia.Post;
                 lAssociati.Add(IntToStr(ComponentiPKCODICIRAD.AsInteger));
              end;
              Componenti.Next;
            end;
         end;

         except
           EsamiRadiologia.Cancel;
//           raise;
         end;
     end;
{
     if dxNonAssegnati.Down then
     begin
         xController.DeleteSelection;
         // -- elimino eventuali componenti associati
         for z:=0 to lAssociati.Count-1 do
            if Prestazioni.Locate('PKCODICIRAD',lAssociati[z],[]) then
               Prestazioni.Delete;
     end;
}
     Prestazioni.syRefresh;
     finally
//       Prestazioni.UpdateMethod := TempUM;
       cxGridCodici.EndUpdate;
       lAssociati.Free;
       if (xController.SelectedRecordCount>0) and (puntamento>0) then
  //        EsamiRadiologia.Locate('CODICE',xController.SelectedRecords[0].Values[GridCodiciCODICE.Index],[]);
          FDMCommon.vLocate(cxGridCodici,puntamento);
     end;
end;

procedure TFCodiciRadiologia.ModificaRadEsameExecute(Sender: TObject);
var
  res: integer;
  refGrid: TcxCustomGridView;  // TcxGridDBTableView;
  esComposto: boolean;
begin

  esComposto := (EsamiRadiologiaCOMPOSTO.AsInteger=1);

  if not esComposto then
  begin
    FModiCodRadEsame := TFModiCodRadEsame.Create(nil);
    try

        FModiCodRadEsame.sGruppo.Dataset := Metodiche;
        FModiCodRadEsame.sLkTariffario.Dataset := LkTariffario;
        FModiCodRadEsame.sLkBranche.Dataset := LkBranche;
        Metodiche.Filter := 'DATA_FINE is null';
        Metodiche.Filtered := true;
        FModiCodRadEsame.Prestazioni.Parambyname('pkcodxrad').AsInteger := EsamiRadiologiaPKCODXRAD.AsInteger;
        FModiCodRadEsame.Prestazioni.Open;
        FModiCodRadEsame.Prestazioni.Edit;
        res := FModiCodRadEsame.ShowModal;
    finally
       Metodiche.Filtered := false;
       FModiCodRadEsame.Free;
       FModiCodRadEsame := nil;
    end;
  end
  else begin
    FModiCodRadMultiplo := TFModiCodRadMultiplo.Create(nil);
    try

        FModiCodRadMultiplo.xPrestazioni.CleanCloneFromDataSet(Prestazioni);
        FModiCodRadMultiplo.sGruppo.Dataset := Metodiche;
        Metodiche.Filter := 'DATA_FINE IS NULL';
        Metodiche.Filtered := true;
        FModiCodRadMultiplo.Prestazioni.Parambyname('pkcodxrad').AsInteger := EsamiRadiologiaPKCODXRAD.AsInteger;
        FModiCodRadMultiplo.Prestazioni.Open;
        FModiCodRadMultiplo.Componenti.Open;
        FModiCodRadMultiplo.Prestazioni.Edit;
        res := FModiCodRadMultiplo.ShowModal;
    finally
       Metodiche.Filtered := false;
       FModiCodRadMultiplo.Free;
       FModiCodRadMultiplo := nil;
    end;
  end;

  if res=mrOk then
     EsamiRadiologia.RefreshRecord;

  if cxPageControl.ActivePage = dxTabMetodiche then
     refGrid := cxGrid3.FocusedView
  else if cxPageControl.ActivePage = dxTabElenco then
     refGrid := cxGrid2.FocusedView
  else
     refGrid := cxGrid1.FocusedView;

  ActiveControl := refGrid.Site;

end;

procedure TFCodiciRadiologia.CancellaCodRadExecute(Sender: TObject);
begin
  if (MsgDlgPos(RS_EliminazioneEsamiRad, '',ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes) then
  begin
      EsamiRadiologia.delete;
      Prestazioni.syRefresh;
  end;

end;

procedure TFCodiciRadiologia.CancellaCodRadUpdate(Sender: TObject);
begin
  CancellaCodRad.Enabled := not EsamiRadiologia.IsEmpty;

end;

procedure TFCodiciRadiologia.MetodicheBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
	Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFCodiciRadiologia.MetodicheNewRecord(DataSet: TDataSet);
begin
  MetodicheREPARTI_FK.AsInteger := gblpkrep;
end;

procedure TFCodiciRadiologia.aRefreshListiniExecute(Sender: TObject);
begin
  TariffeListini.syRefresh;
end;

procedure TFCodiciRadiologia.dxNonAssegnatiClick(Sender: TObject);
begin
  Prestazioni.Filter := 'CODICIRAD_FK is NULL';
  Prestazioni.Filtered := true;
end;

procedure TFCodiciRadiologia.dxTuttiEsamiClick(Sender: TObject);
begin
  Prestazioni.Filter := '';
  Prestazioni.Filtered := false;
end;

procedure TFCodiciRadiologia.GridCodiciNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin

  case AButtonIndex of
  NBDI_EDIT: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(ModificaEsame));
                ADone := true;
             end;
  NBDI_INSERT: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(NuovoEsame));
                ADone := true;
              end;
  NBDI_DELETE: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(CancellaEsame));
                ADone := true;
              end;
  end;

end;

procedure TFCodiciRadiologia.NuovotariffarioExecute(Sender: TObject);
begin
     LkTariffario.Insert;
     FModTariffario := TFModTariffario.Create(nil);
     try
     FModTariffario.sLkTariffario.DataSet := LkTariffario;
     if not (FModTariffario.ShowModal=mrOk) then
        LkTariffario.Cancel;
     finally
        FModTariffario.Free;
        FModTariffario := nil;
     end;
end;

procedure TFCodiciRadiologia.cxGridTariffarioNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
  NBDI_EDIT: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(ModificaTariffario));
                ADone := true;
             end;
  NBDI_INSERT: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(NuovoTariffario));
                ADone := true;
              end;
  NBDI_DELETE: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(CancellaTariffario));
                ADone := true;
              end;
  end;

end;

procedure TFCodiciRadiologia.CancellaTariffarioExecute(Sender: TObject);
begin
  if (MsgDlgPos(RS_Gene_Msg_ConfCanc, '',ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes) then
  begin
     LkTariffario.Delete;
  end;

end;

procedure TFCodiciRadiologia.ModificaListinoExecute(Sender: TObject);
begin

    FCopiaListino := TFCopiaListino.Create(nil);
    try
       Listini.Edit;
       FCopiaListino.dxLayoutFineValidita.Visible := true;
       FCopiaListino.dxLayoutCodice.Enabled := false;
       FCopiaListino.sListini.Dataset := Listini;
       FCopiaListino.ActiveControl := FCopiaListino.cxDescrizione;
       if FCopiaListino.ShowModal=mrOk then
       begin
          Listini.Post;
       end
       else
          Listini.Cancel;
    finally
       FCopiaListino.Free;
       FCopiaListino := nil;
    end;

end;

procedure TFCodiciRadiologia.CancellaListinoExecute(Sender: TObject);
begin

  if (MsgDlgPos(RS_Gene_Msg_ConfCanc, '',ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes) then
  begin
     Listini.Delete
  end;

end;

procedure TFCodiciRadiologia.cxGridListiniNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin

  case AButtonIndex of
  NBDI_EDIT: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(ModificaListino));
                ADone := true;
             end;
  NBDI_INSERT: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(aCopiaListino));
                ADone := true;
              end;
  NBDI_DELETE: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(CancellaListino));
                ADone := true;
              end;
  end;

end;

procedure TFCodiciRadiologia.StampaTariffarioExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
begin
    if FDMCommon.dxPrintDialog1.Execute then
    begin
       if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
       begin
           dxComponentPrinter1.Preview(true, dxComponentPrinterTariffario);
       end
       else begin
         AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
         dxComponentPrinter1.Print(false, @AData, dxComponentPrinterTariffario);
       end;
    end;
end;

procedure TFCodiciRadiologia.StampaGruppiSpecExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
begin
    if FDMCommon.dxPrintDialog1.Execute then
    begin
       if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
       begin
           dxComponentPrinter1.Preview(true, dxComponentPrinterGruppiSpec);
       end
       else begin
         AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
         dxComponentPrinter1.Print(false, @AData, dxComponentPrinterGruppiSpec);
       end;
    end;

end;

procedure TFCodiciRadiologia.StampaCodiciRadExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
begin
    if FDMCommon.dxPrintDialog1.Execute then
    begin
       if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
       begin
           dxComponentPrinter1.Preview(true, dxComponentPrinterRadCodici);
       end
       else begin
         AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
         dxComponentPrinter1.Print(false, @AData, dxComponentPrinterRadCodici);
       end;
    end;

end;

procedure TFCodiciRadiologia.StampaGruppiExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
begin
    if FDMCommon.dxPrintDialog1.Execute then
    begin
       if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
       begin
           dxComponentPrinter1.Preview(true, dxComponentPrinterGruppi);
       end
       else begin
         AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
         dxComponentPrinter1.Print(false, @AData, dxComponentPrinterGruppi);
       end;
    end;

end;

procedure TFCodiciRadiologia.cxGridCodiciNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
  NBDI_EDIT: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(ModificaRadEsame));
                ADone := true;
             end;
  NBDI_DELETE: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(CancellaCodRad));
                ADone := true;
              end;
  NBDI_FILTER+1: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(aEstraiExcel));
                ADone := true;
              end;
  NBDI_REFRESH: begin
                EsamiRadiologia.syRefresh;
                ADone := true;
              end;
  end;

end;

procedure TFCodiciRadiologia.AssegnaEsameExecute(Sender: TObject);
begin
  cxGridCodiciDragDrop(GridCodici,cxGridCodici,0,0);
end;

procedure TFCodiciRadiologia.ModificaTariffarioUpdate(Sender: TObject);
begin
  ModificaTariffario.Enabled := not LkTariffario.IsEmpty;
end;

procedure TFCodiciRadiologia.CancellaTariffarioUpdate(Sender: TObject);
begin
  CancellaTariffario.Enabled := not LkTariffario.IsEmpty;
end;

procedure TFCodiciRadiologia.StampaTariffarioUpdate(Sender: TObject);
begin
  StampaTariffario.Enabled := not LkTariffario.IsEmpty;
end;

procedure TFCodiciRadiologia.ModificaListinoUpdate(Sender: TObject);
begin
  ModificaListino.Enabled := not Listini.IsEmpty;
end;

procedure TFCodiciRadiologia.CancellaListinoUpdate(Sender: TObject);
begin
  CancellaListino.Enabled := not Listini.IsEmpty;
end;

procedure TFCodiciRadiologia.AssegnaEsameUpdate(Sender: TObject);
begin
  AssegnaEsame.Enabled := ((cxPageControl.ActivePage=dxTabElenco) and not Prestazioni.IsEmpty);
end;

procedure TFCodiciRadiologia.GridCodiciDESCRIZIONEStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
{
  if (dxTuttiEsami.Down and EsamiRadiologia.Active and EsamiRadiologia.LocateRecord('CODICE',ARecord.Values[GridCodiciCODICE.Index],[])) then
     AStyle := FDMCommon.cxStyle104;
}
end;

procedure TFCodiciRadiologia.PrestazioniAfterDelete(DataSet: TDataSet);
begin
  inherited;
  EsamiRadiologia.syRefresh;
end;

procedure TFCodiciRadiologia.ComponentiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFCodiciRadiologia.cxGruppiDBNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;

  case AButtonIndex of
  NBDI_EDIT: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(ModificaMetodica));
                ADone := true;
             end;
  NBDI_INSERT: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(NuovaMetodica));
                ADone := true;
              end;
  NBDI_DELETE: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(CancellaMetodica));
                ADone := true;
              end;
  end;

end;

procedure TFCodiciRadiologia.cxMetodicheDBDblClick(Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxMetodiche),LongInt(ModificaMetodica));
end;

destructor TFCodiciRadiologia.Destroy;
begin

  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5) then
  begin
    rsPropSaver1.SaveValues;
    rsPropSaver1.Storage.Save;
  end;

  inherited;

end;

procedure TFCodiciRadiologia.cxPageControlPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  inherited;

//  FDMCommon.edrepCESPECIFIC.Properties.ShowDescriptions := True;

  if NewPage=dxTabTariffario then
  begin
    if not LkTariffario.Active then
    begin
       LkTariffario.open;
       cxGridTariffario.Controller.GotoFirst;
    end;
//    ActiveControl := cxGridTariffario.Site;
  end
  else if NewPage=cxListini then
  begin
    if not LkTariffario.Active then
    begin
       LkTariffario.open;
    end;
    if not Listini.Active then
    begin
       Listini.open;
       TariffeListini.open;
       cxGridListini.Controller.GotoFirst;
    end;
  end
  else if NewPage=cxGruppiSpec then
  begin
    if not Specificazioni.Active then
    begin
       Specificazioni.open;
       cxGridSpecificazioni.Controller.GotoFirst;
    end;
  end
  else if NewPage=cxTabCodEsEsterni then
  begin
    if not CodEsEsterni.Active then
    begin
       CodEsEsterni.Open;
       qIdAuth.Open;
       cxGridCodEsEsterniDBTableView1.Controller.GotoFirst;
    end;
  end
  else if NewPage=cxTabSpecxEsami then
  begin
    Prestazioni.Filter := '';
    Prestazioni.Filtered := false;
//    FDMCommon.edrepCESPECIFIC.Properties.ShowDescriptions := False;
    if not Specificazioni.Active then
    begin
       Specificazioni.open;
       cxGridSpecificazioni.Controller.GotoFirst;
    end;
    cxGridDBTableEsami.Controller.GotoFirst;
{
    if not SpecxEsami.Active then
    begin
       SpecxEsami.Open;
//       cxGridDBTableEsami.Controller.GotoFirst;
    end;
}
  end;
end;

procedure TFCodiciRadiologia.aEstraiExcelExecute(Sender: TObject);
begin
  inherited;
  SaveDialog.FileName := cxGrid2.ActiveLevel.Caption;
  if SaveDialog.Execute then
  begin
      cxGrid2.BeginUpdate();
      ExportGridToXLSX(SaveDialog.FileName, cxGrid2); //, AExpand: Boolean = True; ASaveAll: Boolean = True; AUseNativeFormat: Boolean = True; const AFileExt: string = 'xlsx');
      cxGrid2.EndUpdate();
  end;
end;

procedure TFCodiciRadiologia.TariffeListiniPSP_IDENTChange(Sender: TField);
begin
  inherited;
  TariffeListiniDESCRIZIONE.AsString := LkTariffarioDESCRIZIONE.AsString;
end;

procedure TFCodiciRadiologia.cxGridDBTableSpecxEsamiDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
//  TargetData: TAstaClientDataset;
  aSourceView,aDragView: TcxGridDBTableView;
//  aTargetView: TcxGridDBTableView;

begin

  aSourceView := FDMCommon.GetRealDragSourceGridView (TcxDragControlObject (Source));

//  aTargetView := TcxGridSite(Sender).GridView as TcxGridDBTableView;
  aDragView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));

//  TargetData := aTargetView.DataController.DataSource.DataSet as TAstaClientDataset;

  if aSourceView.DataController.FocusedRecordIndex<>-1 then
  begin
      AggiungiSpecificazioni(aDragView, aSourceView.Controller);
  end;

end;

procedure TFCodiciRadiologia.AggiungiSpecificazioni( wView: TcxGridDBTableView; xController: TcxCustomGridTableController );
var
  i: integer;
begin
     SpecxEsami.DisableControls;
     try
     for i:=0 to xController.SelectedRecordCount-1 do
       begin
{
         qSpostaRiga.Parambyname('reparti_fk').AsInteger := gblpkrep;
         qSpostaRiga.Parambyname('xdiagnostiche').AsInteger := ServiziPKSERVIZI.AsInteger;
         qSpostaRiga.Parambyname('codicirad_fk').AsInteger := xController.SelectedRecords[i].Values[GridCodiciPKCODICIRAD.Index];  // pkPrestSpecmult
         qSpostaRiga.ExecCommit;
}
         if not SpecxEsami.LocateRecord('IDSPECIFICAZIONI',xController.SelectedRecords[i].Values[cxGridDBTableSpecificheIDSPECIFICAZIONI.Index],[]) then
         begin
           SpecxEsami.Append;
           SpecxEsamiSPECIFICAZIONI_FK.AsInteger := xController.SelectedRecords[i].Values[cxGridDBTableSpecifichePKSPECIFICAZIONI.Index];
           SpecxEsamiCODICIRAD_FK.AsInteger := PrestazioniPKCODICIRAD.AsInteger;
           SpecxEsami.Post;
           if PrestazioniCESPECIFIC.AsInteger=0 then
           begin
             Prestazioni.Edit;
             PrestazioniCESPECIFIC.AsInteger := 1;
             Prestazioni.Post;
           end;
         end;
       end;
       SpecxEsami.syRefresh;
       finally
          SpecxEsami.EnableControls;
       end;
end;

procedure TFCodiciRadiologia.cxGridDBTableSpecxEsamiDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  aSourceView: TcxGridDBTableView;
begin
  Accept := false;
  if (Source is TcxDragControlObject) and (Sender is TcxGridSite) then
  begin
     aSourceView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
     Accept := (aSourceView=cxGridDBTableSpecifiche);
  end;

end;

procedure TFCodiciRadiologia.cxGridDBTableSpecificheDragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
  inherited;
  if cxGridDBTableSpecxEsami.Controller.SelectedRecordCount>0 then
     cxGridDBTableSpecxEsami.Controller.DeleteSelection;

   if SpecxEsami.IsEmpty and (PrestazioniCESPECIFIC.AsInteger>0) then
   begin
     Prestazioni.Edit;
     PrestazioniCESPECIFIC.AsInteger := 0;
     Prestazioni.Post;
   end;


end;

procedure TFCodiciRadiologia.cxGridDBTableSpecificheDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  aSourceView: TcxGridDBTableView;
begin

  Accept := false;
  if (Source is TcxDragControlObject) and (Sender is TcxGridSite) then
  begin
     aSourceView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
     Accept := (aSourceView=cxGridDBTableSpecxEsami);
  end;

end;

procedure TFCodiciRadiologia.cxGridDBTableEsamiFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if (APrevFocusedRecord=nil) or (APrevFocusedRecord<>AFocusedRecord) then
  begin
     SpecxEsami.syRefresh;  
  end;
end;

procedure TFCodiciRadiologia.SpecxEsamiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('codicirad_fk').AsInteger := PrestazioniPKCODICIRAD.AsInteger;
end;

procedure TFCodiciRadiologia.cxGridDBTableSpecificheDblClick(
  Sender: TObject);
begin
  inherited;

  AggiungiSpecificazioni(cxGridDBTableSpecifiche, cxGridDBTableSpecifiche.Controller);

end;

initialization
  Classes.RegisterClass(TFCodiciRadiologia);

end.
