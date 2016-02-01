unit ArchivioReferti;

interface

uses
  Forms, BaseGrid, IIConsts, IInterface, Messages, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxButtonEdit,
  cxImageComboBox, cxSpinEdit, cxContainer, dxLayoutcxEditAdapters,
  dxPrnDev, rsStorage, rsPropSaver, AstaUpdateSQL, cxGridCustomPopupMenu,
  cxGridPopupMenu, dxBar, dxBarExtItems, cxClasses, dxPrnDlg, Classes,
  ActnList, AstaDrv2, AstaClientDataset, dxLayoutControl, cxDropDownEdit,
  cxDBEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxPC, Controls, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, dxPSCore,
  dxPScxCommon, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, dxPSContainerLnk,
  cxBarEditItem, cxLabel, cxDBLabel, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, rsXmlData, dxPScxDBEditorLnks, dxPSTextLnk,
  cxNavigator, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPSdxLCLnk,
  dxLayoutContainer, dxPScxPivotGridLnk, dxPSdxDBOCLnk, dxBarBuiltInMenu,
  dxPSPrVwRibbon, dxPScxSchedulerLnk, dxSkinsdxRibbonPainter, Dialogs;

{$I syVer.inc}

type
  TFArchivioReferti = class(TFBaseGrid)
    sSituazione: TDataSource;
    Situazione: TAstaClientDataSet;
    ActionList1: TActionList;
    Referto: TAction;
    RicercaInterna: TAction;
    Esami: TAstaClientDataSet;
    EsamiTRIAGE_FK: TIntegerField;
    EsamiPKPRESTAZIONI: TFloatField;
    EsamiDESCRIZIONE: TStringField;
    sEsami: TDataSource;
    ElencoReferti: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    SituazioneDESCSTATOESAME: TStringField;
    EsamiSTATO: TIntegerField;
    dxBarArchivio: TdxBarManager;
    dxBarArchivioBar1: TdxBar;
    dxBarArchivioBar2: TdxBar;
    dxBarArchivioBar3: TdxBar;
    dxBarArchivioBar4: TdxBar;
    dxBarArchivioBar5: TdxBar;
    dxBarArchivioBar6: TdxBar;
    dxBarArchivioBar7: TdxBar;
    dxBarArchivioBar8: TdxBar;
    dxBarArchivioBar9: TdxBar;
    dxBarArchivioBar10: TdxBar;
    dxBarArchivioBar11: TdxBar;
    dxBarArchivioBar12: TdxBar;
    dxBarArchivioBar13: TdxBar;
    Radiologico: TdxBarEdit;
    dxBarButton3: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    Immagini: TAction;
    Riapri: TAction;
    qyRiapri: TAstaClientDataSet;
    dxBarButton6: TdxBarButton;
    dxDataAccDal: TcxBarEditItem;
    dxPageControl: TcxPageControl;
    dxTabArchivio: TcxTabSheet;
    dxTabOperazioni: TcxTabSheet;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    Operazioni: TAstaClientDataSet;
    sOperazioni: TDataSource;
    dxBarPopReferti: TdxBarPopupMenu;
    cxGridOperazioniLevel1: TcxGridLevel;
    cxGridOperazioni: TcxGrid;
    GridOperazioni: TcxGridDBTableView;
    GridOperazioniPKTRIAGE: TcxGridDBColumn;
    GridOperazioniNOMINATIVO: TcxGridDBColumn;
    GridOperazioniREPARTO: TcxGridDBColumn;
    GridOperazioniSERVIZIO: TcxGridDBColumn;
    GridOperazioniMEDICO: TcxGridDBColumn;
    GridOperazioniDATA_REFERTO: TcxGridDBColumn;
    EsamiCODICE: TStringField;
    cxGridPopupCartella: TcxGridPopupMenu;
    cxGridPopupReferti: TcxGridPopupMenu;
    cxGridOperazioniLevel2: TcxGridLevel;
    GridOperazioniEsami: TcxGridDBTableView;
    RefEsami: TAstaClientDataSet;
    RefEsamiPKPRESTAZIONI: TFloatField;
    RefEsamiDESCRIZIONE: TStringField;
    RefEsamiSTATO: TIntegerField;
    RefEsamiCODICE: TStringField;
    sRefEsami: TDataSource;
    GridOperazioniEsamiDESCRIZIONE: TcxGridDBColumn;
    GridOperazioniEsamiSTATO: TcxGridDBColumn;
    GridOperazioniEsamiCODICE: TcxGridDBColumn;
    GridOperazioniEsamiTRIAGE_FK: TcxGridDBColumn;
    OperazioniPKTRIAGE: TIntegerField;
    OperazioniCOD_MED_FIRMA: TIntegerField;
    OperazioniASSISTIBILI_FK: TIntegerField;
    OperazioniREPARTI_FK: TIntegerField;
    OperazioniURGENZA: TIntegerField;
    OperazioniNOMINATIVO: TStringField;
    OperazioniSERVIZIO_RICH_FK: TIntegerField;
    OperazioniREP_RICH: TIntegerField;
    OperazioniCOD_MED_INT: TIntegerField;
    OperazioniREPARTO: TStringField;
    OperazioniSERVIZIO: TStringField;
    OperazioniMEDICO: TStringField;
    OperazioniDIAGNOSTICA: TStringField;
    OperazioniMEDRISERVATO: TStringField;
    RefEsamiTRIAGE_FK: TIntegerField;
    OperazioniDATA_REFERTO: TDateTimeField;
    SituazioneDATA_REFERTO: TDateTimeField;
    aStampaCartella: TAction;
    dxCartella: TdxBarButton;
    dxComponentPrinterOperazioni: TdxGridReportLink;
    dxComponentPrinterEsamiCartella: TdxGridReportLink;
    SchedaPaziente: TAstaClientDataSet;
    SchedaPazienteNOMINATIVO: TStringField;
    SchedaPazienteDATA_NASCITA: TDateTimeField;
    SchedaPazienteUSL_CODICE_APPARTIENE: TStringField;
    SchedaPazienteCOGNOME: TStringField;
    SchedaPazienteNOME: TStringField;
    SchedaPazientePKASSISTIBILI: TIntegerField;
    SchedaPazienteTELEFONO: TStringField;
    SchedaPazienteSAN_IDENT: TIntegerField;
    SchedaPazienteLIBRETTO_SAN: TStringField;
    sSchedaPaziente: TDataSource;
    ApriTutte: TAction;
    ChiudiTutte: TAction;
    dxBarButton1: TdxBarButton;
    dxBarButton7: TdxBarButton;
    GridOperazioniDIAGNOSTICA: TcxGridDBColumn;
    OperazioniDESCSTATOESAME: TStringField;
    GridOperazioniDESCSTATOESAME: TcxGridDBColumn;
    OperazioniSTATOVISITA: TIntegerField;
    ModificaAnagrafica: TAction;
    dxBarButton8: TdxBarButton;
    SituazioneREPARTORICHIEDENTE: TStringField;
    SchedaPazienteUSER_ID: TIntegerField;
    RiportaDaEseguire: TAction;
    OperazioniUSER_ID: TIntegerField;
    dxBarButton9: TdxBarButton;
    SituazioneDIAGNOSTICA: TStringField;
    dxTabReferti: TcxTabSheet;
    dxBarDockControl3: TdxBarDockControl;
    dxDataRefer: TcxBarEditItem;
    Referti: TAstaClientDataSet;
    RefertiPKTRIAGE: TIntegerField;
    RefertiCOD_MED_FIRMA: TIntegerField;
    RefertiASSISTIBILI_FK: TIntegerField;
    RefertiREPARTI_FK: TIntegerField;
    RefertiURGENZA: TIntegerField;
    RefertiNOMINATIVO: TStringField;
    RefertiSERVIZIO_RICH_FK: TIntegerField;
    RefertiREP_RICH: TIntegerField;
    RefertiCOD_MED_INT: TIntegerField;
    RefertiREPARTO: TStringField;
    RefertiSERVIZIO: TStringField;
    RefertiMEDICO: TStringField;
    RefertiDIAGNOSTICA: TStringField;
    RefertiMEDRISERVATO: TStringField;
    RefertiDATA_REFERTO: TDateTimeField;
    RefertiDESCSTATOESAME: TStringField;
    RefertiSTATOVISITA: TIntegerField;
    RefertiUSER_ID: TIntegerField;
    sReferti: TDataSource;
    cxGridReferti: TcxGrid;
    GridReferti: TcxGridDBTableView;
    GridRefertiPKTRIAGE: TcxGridDBColumn;
    GridRefertiDATA_VISITA: TcxGridDBColumn;
    GridRefertiNOMINATIVO: TcxGridDBColumn;
    GridRefertiDIAGNOSTICA: TcxGridDBColumn;
    GridRefertiREPARTO: TcxGridDBColumn;
    GridRefertiSERVIZIO: TcxGridDBColumn;
    GridRefertiMEDICO: TcxGridDBColumn;
    GridRefertiDESCSTATOESAME: TcxGridDBColumn;
    cxGridRefertiEsami: TcxGridDBTableView;
    cxGridRefertiEsamiTRIAGE_FK: TcxGridDBColumn;
    cxGridRefertiEsamiCODICE: TcxGridDBColumn;
    cxGridRefertiEsamiDESCRIZIONE: TcxGridDBColumn;
    cxGridRefertiEsamiSTATO: TcxGridDBColumn;
    cxGridRefertiLevel1: TcxGridLevel;
    cxGridRefertiLevel2: TcxGridLevel;
    dxComponentPrinterReferti: TdxGridReportLink;
    cxGridPopupOperazioni: TcxGridPopupMenu;
    RefertiDATA_VISITA: TDateTimeField;
    OperazioniDATA_VISITA: TDateTimeField;
    AssociaPazienti: TAction;
    dxDuplicati: TdxBarButton;
    RefertiIMPEGNATIVE_FK: TIntegerField;
    OperazioniIMPEGNATIVE_FK: TIntegerField;
    SituazioneRIS_STUDY_EUID: TStringField;
    GridRefertiCEIMMAGINI: TcxGridDBColumn;
    GridRefertiCEREFERTO: TcxGridDBColumn;
    RefertiRIS_STUDY_EUID: TStringField;
    OperazioniRIS_STUDY_EUID: TStringField;
    GridOperazioniCEREFERTO: TcxGridDBColumn;
    GridOperazioniCEIMMAGINI: TcxGridDBColumn;
    RefertiDATA_NASCITA: TDateTimeField;
    OperazioniDATA_NASCITA: TDateTimeField;
    GridOperazioniDATA_NASCITA: TcxGridDBColumn;
    GridOperazioniURGENZA: TcxGridDBColumn;
    GridRefertiDATA_NASCITA: TcxGridDBColumn;
    GridRefertiURGENZA: TcxGridDBColumn;
    OperazioniPROVENIENZA: TStringField;
    SituazionePROVENIENZA: TStringField;
    SituazioneREPARTOESECUTORE: TStringField;
    OperazioniORA_INIZIO: TDateTimeField;
    SituazioneORA_INIZIO: TDateTimeField;
    GridOperazioniDATA_VISITA: TcxGridDBColumn;
    dxLayoutControlCartellaGroup_Root: TdxLayoutGroup;
    dxLayoutControlCartella: TdxLayoutControl;
    cxCognome: TcxDBMaskEdit;
    dxLayoutControlCognome: TdxLayoutItem;
    cxNome: TcxDBMaskEdit;
    dxLayoutControlNome: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControlCartellaItem3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBLabel;
    dxLayoutControlCartellaItem4: TdxLayoutItem;
    dxLayoutControlCartellaGroup1: TdxLayoutGroup;
    dxLayoutControlCartellaGroup2: TdxLayoutGroup;
    cxDBTextEdit9: TcxDBLabel;
    dxLayoutControlCartellaItem10: TdxLayoutItem;
    cxDBTextEdit10: TcxDBLabel;
    dxLayoutControlCartellaItem11: TdxLayoutItem;
    Riattiva: TAction;
    qyRecupera: TAstaClientDataSet;
    dxBarButton12: TdxBarButton;
    cxGridCartella: TcxGrid;
    GridSituazione: TcxGridDBTableView;
    GridSituazionePKTRIAGE: TcxGridDBColumn;
    GridSituazioneORA_INIZIO: TcxGridDBColumn;
    GridSituazioneDATA_VISITA: TcxGridDBColumn;
    GridSituazioneDATA_REFERTO: TcxGridDBColumn;
    GridSituazioneREPARTORICHIEDENTE: TcxGridDBColumn;
    GridSituazioneDESCSTATOESAME: TcxGridDBColumn;
    GridSituazioneDIAGNOSTICA: TcxGridDBColumn;
    GridSituazioneCEIMMAGINI: TcxGridDBColumn;
    GridSituazioneCEREFERTO: TcxGridDBColumn;
    GridSituazioneREPARTOESECUTORE: TcxGridDBColumn;
    GridEsami: TcxGridDBTableView;
    GridEsamiCODICE: TcxGridDBColumn;
    GridEsamiDESCRIZIONE: TcxGridDBColumn;
    GridEsamiSTATO: TcxGridDBColumn;
    cxGridCartellaLevel1: TcxGridLevel;
    cxGridCartellaLevel3: TcxGridLevel;
    dxBarPopDuplicati: TdxBarPopupMenu;
    cxTabLogErrori: TcxTabSheet;
    dxBarDockControl4: TdxBarDockControl;
    dxDataErrori: TcxBarEditItem;
    ErroriInvio: TAstaClientDataSet;
    ErroriInvioUSER_ID: TIntegerField;
    ErroriInvioTESTO_ERRORE: TStringField;
    ErroriInvioTIPO_BLOCCO: TIntegerField;
    ErroriInvioDATA_ERR: TDateTimeField;
    ErroriInvioORA_INIZIO: TDateTimeField;
    ErroriInvioDIAGNOSTICA: TStringField;
    ErroriInvioTECNICO: TStringField;
    cxGridErrori: TcxGrid;
    GridSitErrori: TcxGridDBTableView;
    GridSitErroriPKTRIAGE: TcxGridDBColumn;
    GridSitErroriORA_INIZIO: TcxGridDBColumn;
    GridSitErroriDATA_ERR: TcxGridDBColumn;
    GridSitErroriTECNICO: TcxGridDBColumn;
    GridSitErroriDIAGNOSTICA: TcxGridDBColumn;
    GridSitErroriTESTO_ERRORE: TcxGridDBColumn;
    GridSitErroriREPARTOESECUTORE: TcxGridDBColumn;
    GridErrEsami: TcxGridDBTableView;
    GridErrEsamiCODICE: TcxGridDBColumn;
    GridErrEsamiDESCRIZIONE: TcxGridDBColumn;
    GridErrEsamiSTATO: TcxGridDBColumn;
    cxGridErroriLevel1: TcxGridLevel;
    cxGridErroriLevel3: TcxGridLevel;
    sErroriInvio: TDataSource;
    ErroriInvioREPARTOESECUTORE: TStringField;
    dxComponentPrinterErrori: TdxGridReportLink;
    ElencoErrori: TAction;
    dxBarButton13: TdxBarButton;
    ErroriInvioPKLOGERRORI: TIntegerField;
    GridSitErroriPKLOGERRORI: TcxGridDBColumn;
    ErroriInvioPAZIENTE: TStringField;
    GridSitErroriPAZIENTE: TcxGridDBColumn;
    GridOperazioniASSISTIBILI_FK: TcxGridDBColumn;
    GridRefertiASSISTIBILI_FK: TcxGridDBColumn;
    ErroriInvioPKASSISTIBILI: TIntegerField;
    GridSitErroriPKASSISTIBILI: TcxGridDBColumn;
    SchedaPazienteSES_CODICE: TStringField;
    AnnullaAnagrafica: TAction;
    dxBarButton14: TdxBarButton;
    ModificaAccettazione: TAction;
    dxBarButton15: TdxBarButton;
    RefertiPROVENIENZA: TStringField;
    ModInternoEsterno: TAction;
    dxBarButton16: TdxBarButton;
    ErroriInvioSTATO_ERR: TIntegerField;
    ErroriInvioDESCSTATOVISITA: TStringField;
    GridSitErroriDESCSTATOVISITA: TcxGridDBColumn;
    GridSitErroriSTATO_ERR: TcxGridDBColumn;
    dxBarPopErrori: TdxBarPopupMenu;
    cxGridPopupErrori: TcxGridPopupMenu;
    ErroriInvioRIS_STUDY_EUID: TStringField;
    cxPrenotazioni: TcxTabSheet;
    Prenotazioni: TAstaClientDataSet;
    PrenotazioniPKTRIAGE: TIntegerField;
    PrenotazioniASSISTIBILI_FK: TIntegerField;
    PrenotazioniREPARTI_FK: TIntegerField;
    PrenotazioniURGENZA: TIntegerField;
    PrenotazioniNOMINATIVO: TStringField;
    PrenotazioniSERVIZIO_RICH_FK: TIntegerField;
    PrenotazioniREP_RICH: TIntegerField;
    PrenotazioniREPARTO: TStringField;
    PrenotazioniSERVIZIO: TStringField;
    PrenotazioniDIAGNOSTICA: TStringField;
    PrenotazioniDATA_REFERTO: TDateTimeField;
    PrenotazioniDESCSTATOESAME: TStringField;
    PrenotazioniSTATOVISITA: TIntegerField;
    PrenotazioniUSER_ID: TIntegerField;
    PrenotazioniDATA_VISITA: TDateTimeField;
    PrenotazioniIMPEGNATIVE_FK: TIntegerField;
    PrenotazioniDATA_NASCITA: TDateTimeField;
    PrenotazioniPROVENIENZA: TStringField;
    PrenotazioniORA_INIZIO: TDateTimeField;
    sPrenotazioni: TDataSource;
    cxGridPrenotazioni: TcxGrid;
    GridPrenotazioni: TcxGridDBTableView;
    GridPrenotazioniPKTRIAGE: TcxGridDBColumn;
    GridPrenotazioniORA_INIZIO: TcxGridDBColumn;
    GridPrenotazioniASSISTIBILI_FK: TcxGridDBColumn;
    GridPrenotazioniNOMINATIVO: TcxGridDBColumn;
    GridPrenotazioniDATA_NASCITA: TcxGridDBColumn;
    GridPrenotazioniDIAGNOSTICA: TcxGridDBColumn;
    GridPrenotazioniREPARTO: TcxGridDBColumn;
    GridPrenotazioniSERVIZIO: TcxGridDBColumn;
    GridPrenotazioniDESCSTATOESAME: TcxGridDBColumn;
    GridPrenotazioniURGENZA: TcxGridDBColumn;
    GridPrenotazioniEsami: TcxGridDBTableView;
    GridPrenotazioniEsamiTRIAGE_FK: TcxGridDBColumn;
    GridPrenotazioniEsamiCODICE: TcxGridDBColumn;
    GridPrenotazioniEsamiDESCRIZIONE: TcxGridDBColumn;
    GridPrenotazioniEsamiSTATO: TcxGridDBColumn;
    cxGridPrenotazioniLevel1: TcxGridLevel;
    cxGridPrenotazioniLevel2: TcxGridLevel;
    dxComponentPrinterPrenotazioni: TdxGridReportLink;
    PrenotazioniDATA_PRESCRIZIONE: TDateTimeField;
    dxBarDockControl5: TdxBarDockControl;
    dxDataPreno: TcxBarEditItem;
    ElencoPrenotazioni: TAction;
    dxBarButton17: TdxBarButton;
    aStorico: TAction;
    dxBarButton18: TdxBarButton;
    dxBarPopPreno: TdxBarPopupMenu;
    cxGridPopupPrenotazioni: TcxGridPopupMenu;
    PrenotazioniCOD_MED_FIRMA: TIntegerField;
    GridPrenotazioniPROVENIENZA: TcxGridDBColumn;
    dxBarPopCartella: TdxBarPopupMenu;
    dxCercaAcc: TdxBarEdit;
    GridSituazioneIMPEGNATIVE_FK: TcxGridDBColumn;
    aStoricoAnag: TAction;
    dxBarButton19: TdxBarButton;
    cxAnagrafica: TcxTabSheet;
    sStoricoAnag: TDataSource;
    dxBarDockControl6: TdxBarDockControl;
    dxAggiornaDal: TcxBarEditItem;
    SituazioneDATA_VISITA: TDateTimeField;
    aStampaPrenotazioni: TAction;
    dxBarButton11: TdxBarButton;
    cxDuplicati: TcxTabSheet;
    Duplicati: TAstaClientDataSet;
    sDuplicati: TDataSource;
    DuplicatiPKASSISTIBILI: TIntegerField;
    DuplicatiCODICE_FISCALE: TStringField;
    DuplicatiCOGNOME: TStringField;
    DuplicatiNOME: TStringField;
    DuplicatiDATA_NASCITA: TDateTimeField;
    DuplicatiCOM_CODICE: TStringField;
    DuplicatiCOM_RES: TStringField;
    DuplicatiDESCNASCITA: TStringField;
    DuplicatiDESCRESIDENZA: TStringField;
    cxGridDuplicatiDBTableView1: TcxGridDBTableView;
    cxGridDuplicatiLevel1: TcxGridLevel;
    cxGridDuplicati: TcxGrid;
    cxGridDuplicatiDBTableView1PKASSISTIBILI: TcxGridDBColumn;
    cxGridDuplicatiDBTableView1CODICE_FISCALE: TcxGridDBColumn;
    cxGridDuplicatiDBTableView1COGNOME: TcxGridDBColumn;
    cxGridDuplicatiDBTableView1NOME: TcxGridDBColumn;
    cxGridDuplicatiDBTableView1DATA_NASCITA: TcxGridDBColumn;
    cxGridDuplicatiDBTableView1DESCNASCITA: TcxGridDBColumn;
    cxGridDuplicatiDBTableView1DESCRESIDENZA: TcxGridDBColumn;
    cxGridDuplicatiDBTableView1NR: TcxGridDBColumn;
    aCut: TAction;
    aPaste: TAction;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    aAnnullaAnagDuplicati: TAction;
    dxBarButton10: TdxBarButton;
    OperazioniTIPO_ATTIVITA_FK: TStringField;
    RefertiTIPO_ATTIVITA_FK: TStringField;
    SituazioneTIPO_ATTIVITA_FK: TStringField;
    aRefreshDup: TAction;
    dxBarButton22: TdxBarButton;
    cxNuoveAnagrafiche: TcxTabSheet;
    NuoveAnag: TAstaClientDataSet;
    NuoveAnagPKASSISTIBILI: TIntegerField;
    NuoveAnagCOGNOME: TStringField;
    NuoveAnagNOME: TStringField;
    NuoveAnagSAN_IDENT: TIntegerField;
    NuoveAnagSES_CODICE: TStringField;
    NuoveAnagCOM_CODICE: TStringField;
    NuoveAnagCODICE_FISCALE: TStringField;
    NuoveAnagDATA_NASCITA: TDateTimeField;
    NuoveAnagUSL_CODICE_APPARTIENE: TStringField;
    NuoveAnagUSL_REG_CODICE_APPARTIENE: TStringField;
    NuoveAnagLIBRETTO_SAN: TStringField;
    NuoveAnagCIT_CODICE: TStringField;
    NuoveAnagTELEFONO: TStringField;
    NuoveAnagLAST_MOD: TDateTimeField;
    NuoveAnagUSER_ID: TIntegerField;
    NuoveAnagCOM_RES: TStringField;
    NuoveAnagIND_RES: TStringField;
    NuoveAnagMED_BASE: TStringField;
    cxNuoveAnagDBTableView1: TcxGridDBTableView;
    cxNuoveAnagLevel1: TcxGridLevel;
    cxNuoveAnag: TcxGrid;
    sNuoveAnag: TDataSource;
    cxNuoveAnagDBTableView1PKASSISTIBILI: TcxGridDBColumn;
    cxNuoveAnagDBTableView1COGNOME: TcxGridDBColumn;
    cxNuoveAnagDBTableView1NOME: TcxGridDBColumn;
    cxNuoveAnagDBTableView1SAN_IDENT: TcxGridDBColumn;
    cxNuoveAnagDBTableView1SES_CODICE: TcxGridDBColumn;
    cxNuoveAnagDBTableView1CODICE_FISCALE: TcxGridDBColumn;
    cxNuoveAnagDBTableView1DATA_NASCITA: TcxGridDBColumn;
    cxNuoveAnagDBTableView1DESCNASCITA: TcxGridDBColumn;
    NuoveAnagDESCNASCITA: TStringField;
    NuoveAnagDESCRESIDENZA: TStringField;
    cxNuoveAnagDBTableView1DESCRESIDENZA: TcxGridDBColumn;
    dxBarPopInserimenti: TdxBarPopupMenu;
    aRileggiInserimenti: TAction;
    dxBarButton23: TdxBarButton;
    aAnnullaAnagInserimenti: TAction;
    dxBarButton24: TdxBarButton;
    cxNuoveAnagDBTableView1NR: TcxGridDBColumn;
    aInserisciAnag: TAction;
    aInserisciTutteAnag: TAction;
    aInviaLogModifiche: TAction;
    dxBarPopStorico: TdxBarPopupMenu;
    cxGridLogStorico: TcxGrid;
    GridLogStorico: TcxGridDBTableView;
    GridLogStoricoDATA_OP: TcxGridDBColumn;
    GridLogStoricoTIPO_OP: TcxGridDBColumn;
    GridLogStoricoNOMINATIVO: TcxGridDBColumn;
    GridLogStoricoCOMMENTS: TcxGridDBColumn;
    GridLogStoricoVALORE_NEW: TcxGridDBColumn;
    GridLogStoricoVALORE_OLD: TcxGridDBColumn;
    GridLogStoricoCOGNOME: TcxGridDBColumn;
    GridLogStoricoNOME: TcxGridDBColumn;
    GridLogStoricoDATA_NASCITA: TcxGridDBColumn;
    cxGridLogStoricoLevel1: TcxGridLevel;
    StoricoAnag: TAstaClientDataSet;
    StoricoAnagNOMINATIVO: TStringField;
    StoricoAnagDATA_OP: TDateTimeField;
    StoricoAnagCAMPO: TStringField;
    StoricoAnagVALORE_NEW: TStringField;
    StoricoAnagVALORE_OLD: TStringField;
    StoricoAnagTIPO_OP: TStringField;
    StoricoAnagCOMMENTS: TStringField;
    StoricoAnagCOGNOME: TStringField;
    StoricoAnagNOME: TStringField;
    StoricoAnagDATA_NASCITA: TDateTimeField;
    StoricoAnagASSISTIBILI_FK: TIntegerField;
    StoricoAnagPKLOG_ANAG: TFloatField;
    aInviaSingolaModifica: TAction;
    dxBarDockControl7: TdxBarDockControl;
    dxSoloCognNomeData: TdxBarButton;
    dxAncheComNasc: TdxBarButton;
    cxGridDuplicatiLevel2: TcxGridLevel;
    cxGridDuplicatiDBTableView2: TcxGridDBTableView;
    SitxDupl: TAstaClientDataSet;
    SitxDuplASSISTIBILI_FK: TIntegerField;
    SitxDuplPKTRIAGE: TIntegerField;
    SitxDuplSTATOVISITA: TIntegerField;
    SitxDuplDESCSTATOESAME: TStringField;
    SitxDuplCOD_MED_FIRMA: TIntegerField;
    SitxDuplDATA_REFERTO: TDateTimeField;
    SitxDuplREPARTORICHIEDENTE: TStringField;
    SitxDuplUSER_ID: TIntegerField;
    SitxDuplDIAGNOSTICA: TStringField;
    SitxDuplIMPEGNATIVE_FK: TIntegerField;
    SitxDuplRIS_STUDY_EUID: TStringField;
    SitxDuplPROVENIENZA: TStringField;
    SitxDuplREPARTOESECUTORE: TStringField;
    SitxDuplORA_INIZIO: TDateTimeField;
    SitxDuplDATA_VISITA: TDateTimeField;
    SitxDuplTIPO_ATTIVITA_FK: TStringField;
    sSitxDupl: TDataSource;
    cxGridDuplicatiDBTableView2ASSISTIBILI_FK: TcxGridDBColumn;
    cxGridDuplicatiDBTableView2PKTRIAGE: TcxGridDBColumn;
    cxGridDuplicatiDBTableView2STATOVISITA: TcxGridDBColumn;
    cxGridDuplicatiDBTableView2DESCSTATOESAME: TcxGridDBColumn;
    cxGridDuplicatiDBTableView2COD_MED_FIRMA: TcxGridDBColumn;
    cxGridDuplicatiDBTableView2DATA_REFERTO: TcxGridDBColumn;
    cxGridDuplicatiDBTableView2DATA_VISITA: TcxGridDBColumn;
    cxGridDuplicatiDBTableView2REPARTORICHIEDENTE: TcxGridDBColumn;
    cxGridDuplicatiDBTableView2USER_ID: TcxGridDBColumn;
    cxGridDuplicatiDBTableView2DIAGNOSTICA: TcxGridDBColumn;
    cxGridDuplicatiDBTableView2IMPEGNATIVE_FK: TcxGridDBColumn;
    cxGridDuplicatiDBTableView2RIS_STUDY_EUID: TcxGridDBColumn;
    cxGridDuplicatiDBTableView2CEIMMAGINI: TcxGridDBColumn;
    cxGridDuplicatiDBTableView2CEREFERTO: TcxGridDBColumn;
    cxGridDuplicatiDBTableView2PROVENIENZA: TcxGridDBColumn;
    cxGridDuplicatiDBTableView2REPARTOESECUTORE: TcxGridDBColumn;
    cxGridDuplicatiDBTableView2ORA_INIZIO: TcxGridDBColumn;
    cxGridDuplicatiDBTableView2TIPO_ATTIVITA_FK: TcxGridDBColumn;
    DuplicatiSAN_IDENT: TIntegerField;
    cxGridDuplicatiDBTableView1SAN_IDENT: TcxGridDBColumn;
    cxStatoAnagrafica: TcxDBLookupComboBox;
    dxLayoutControlCartellaItem13: TdxLayoutItem;
    dxAncheCancellati: TdxBarButton;
    GridLogStoricoASSISTIBILI_FK: TcxGridDBColumn;
    dxAggiornaAl: TcxBarEditItem;
    SchedaPazienteNOMEFUSIONE: TStringField;
    cxDBTextEdit13: TcxDBLabel;
    dxLayoutControlCartellaItem14: TdxLayoutItem;
    cxComboTipoOperazione: TcxImageComboBox;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    dxBarStatic2: TdxBarStatic;
    dxCognomeDupl: TdxBarEdit;
    dxLeggiDuplicati: TdxBarButton;
    dxBarButton30: TdxBarButton;
    aElencoStorico: TAction;
    dxComponentPrinterStoricoAnag: TdxGridReportLink;
    dxBarButton31: TdxBarButton;
    cxGridPopupDuplicati: TcxGridPopupMenu;
    dxBarPopupEsamiDup: TdxBarPopupMenu;
    aCercaDuplicati: TAction;
    ModAnag: TAstaClientDataSet;
    ModAnagPKASSISTIBILI: TIntegerField;
    ModAnagCOGNOME: TStringField;
    ModAnagNOME: TStringField;
    ModAnagSAN_IDENT: TIntegerField;
    ModAnagSES_CODICE: TStringField;
    ModAnagCOM_CODICE: TStringField;
    ModAnagCODICE_FISCALE: TStringField;
    ModAnagDATA_NASCITA: TDateTimeField;
    ModAnagUSL_CODICE_APPARTIENE: TStringField;
    ModAnagUSL_REG_CODICE_APPARTIENE: TStringField;
    ModAnagDATA_DECESSO: TDateTimeField;
    ModAnagLIBRETTO_SAN: TStringField;
    ModAnagCIT_CODICE: TStringField;
    ModAnagTELEFONO: TStringField;
    ModAnagUSER_ID: TIntegerField;
    ModAnagCOM_RES: TStringField;
    ModAnagCOM_DOM: TStringField;
    ModAnagASSISTIBILI_FK: TIntegerField;
    ModAnagIND_RES: TStringField;
    ModAnagIND_DOM: TStringField;
    ModAnagMED_BASE: TStringField;
    ModAnagLAST_MOD: TDateTimeField;
    cxGridDuplicatiDBTableView1DIFFERENTE: TcxGridDBColumn;
    DescrCampi: TAstaClientDataSet;
    DescrCampiCOLUMN_NAME: TStringField;
    DescrCampiCOMMENTS: TStringField;
    OperazioniDATA_ACCETTAZIONE: TDateTimeField;
    SituazioneDATA_ACCETTAZIONE: TDateTimeField;
    SitxDuplDATA_ACCETTAZIONE: TDateTimeField;
    cxModSuReferti: TcxTabSheet;
    RefertiModificati: TAstaClientDataSet;
    RefertiModificatiNOMINATIVO: TStringField;
    RefertiModificatiCOGNOME: TStringField;
    RefertiModificatiNOME: TStringField;
    RefertiModificatiDATA_NASCITA: TDateTimeField;
    sRefertiModificati: TDataSource;
    RefertiModificatiPKTRIAGE: TIntegerField;
    dxBarDockControl8: TdxBarDockControl;
    dxCercaReferti: TdxBarButton;
    cxGridRefModificatiDB: TcxGridDBTableView;
    cxGridRefModificatiLevel1: TcxGridLevel;
    cxGridRefModificati: TcxGrid;
    cxGridRefModificatiDBNOMINATIVO: TcxGridDBColumn;
    cxGridRefModificatiDBCOGNOME: TcxGridDBColumn;
    cxGridRefModificatiDBNOME: TcxGridDBColumn;
    cxGridRefModificatiDBDATA_NASCITA: TcxGridDBColumn;
    cxGridRefModificatiDBPKTRIAGE: TcxGridDBColumn;
    RefertiModificatiCOD_MED_FIRMA: TIntegerField;
    dxBarPopRefModificati: TdxBarPopupMenu;
    aRefertaAncora: TAction;
    RefertiModificatiDATA_REFERTO: TDateTimeField;
    dxBarButton34: TdxBarButton;
    StoricoModRef: TAction;
    dxBarButton35: TdxBarButton;
    dxComponentPrinterRefModificati: TdxGridReportLink;
    ElencoRefertiModificati: TAction;
    dxBarButton36: TdxBarButton;
    RefertiModificatiPKASSISTIBILI: TIntegerField;
    dxArchivio: TdxBarButton;
    dxReferti: TdxBarButton;
    dxBarButtonArchivio: TdxBarButton;
    dxErroriAssociazione: TdxBarButton;
    dxPrenotazioni: TdxBarButton;
    dxStoricoAnag: TdxBarButton;
    dxDuplicatiAnag: TdxBarButton;
    dxAnagDaInviare: TdxBarButton;
    dxRefertiMod: TdxBarButton;
    ErroriInvioPKIMPEGNATIVE: TIntegerField;
    GridSitErroriPKIMPEGNATIVE: TcxGridDBColumn;
    aBookmark: TAction;
    dxBarButton38: TdxBarButton;
    SituazioneMEDRISERVATO: TStringField;
    GridSituazioneMEDRISERVATO: TcxGridDBColumn;
    dxCreaCD: TdxBarButton;
    aCreazioneCD: TAction;
    aTestAssociazione: TAction;
    dxBarButton40: TdxBarButton;
    OperazioniCEIMMAGINI: TIntegerField;
    RefertiCEIMMAGINI: TIntegerField;
    SitxDuplCEIMMAGINI: TIntegerField;
    ErroriInvioCEIMMAGINI: TIntegerField;
    updErroriInvio: TAstaUpdateSQL;
    cxDBTextEdit11: TcxDBLabel;
    dxLayoutControlCartellaItem15: TdxLayoutItem;
    aAddendum: TAction;
    dxBarButton41: TdxBarButton;
    dxBarDockControl9: TdxBarDockControl;
    GridSituazioneCD_CREATO: TcxGridDBColumn;
    PrenoEsami: TAstaClientDataSet;
    PrenoEsamiPKPRESTAZIONI: TFloatField;
    PrenoEsamiDESCRIZIONE: TStringField;
    PrenoEsamiSTATO: TIntegerField;
    PrenoEsamiCODICE: TStringField;
    PrenoEsamiTRIAGE_FK: TIntegerField;
    sPrenoEsami: TDataSource;
    cxSconosciuti: TcxTabSheet;
    cxGridSconosciutiDBSconosciuti: TcxGridDBTableView;
    cxGridSconosciutiLevel1: TcxGridLevel;
    cxGridSconosciuti: TcxGrid;
    Sconosciuti: TAstaClientDataSet;
    SconosciutiRIS_STUDY_EUID: TStringField;
    SconosciutiCOGNOME: TStringField;
    SconosciutiNOME: TStringField;
    SconosciutiDATA_NASCITA: TDateTimeField;
    SconosciutiPROVENIENZA: TStringField;
    SconosciutiDATA_VISITA: TDateTimeField;
    SconosciutiTECNICO: TStringField;
    SconosciutiDIAGNOSTICA: TStringField;
    sSconosciuti: TDataSource;
    SconosciutiPKTRIAGE: TIntegerField;
    SconosciutiPKASSISTIBILI: TIntegerField;
    cxGridSconosciutiDBSconosciutiRIS_STUDY_EUID: TcxGridDBColumn;
    cxGridSconosciutiDBSconosciutiCOGNOME: TcxGridDBColumn;
    cxGridSconosciutiDBSconosciutiNOME: TcxGridDBColumn;
    cxGridSconosciutiDBSconosciutiDATA_NASCITA: TcxGridDBColumn;
    cxGridSconosciutiDBSconosciutiPROVENIENZA: TcxGridDBColumn;
    cxGridSconosciutiDBSconosciutiSTATOVISITA: TcxGridDBColumn;
    cxGridSconosciutiDBSconosciutiDATA_VISITA: TcxGridDBColumn;
    cxGridSconosciutiDBSconosciutiTECNICO: TcxGridDBColumn;
    cxGridSconosciutiDBSconosciutiDIAGNOSTICA: TcxGridDBColumn;
    cxGridSconosciutiDBSconosciutiPKTRIAGE: TcxGridDBColumn;
    cxGridSconosciutiDBSconosciutiPKASSISTIBILI: TcxGridDBColumn;
    AssociaEsame: TAction;
    dxSconosciuti: TdxBarButton;
    dxBarPopSconosciuti: TdxBarPopupMenu;
    cxGridPopupSconosciuti: TcxGridPopupMenu;
    dxBarButton42: TdxBarButton;
    SconosciutiPKIMPEGNATIVE: TIntegerField;
    cxGridSconosciutiDBSconosciutiPLACER_ORDER_NUMBER: TcxGridDBColumn;
    RefertiModificatiSTATOVISITA: TIntegerField;
    SconosciutiCEIMMAGINI: TIntegerField;
    cxGridSconosciutiDBSconosciutiCEIMMAGINI: TcxGridDBColumn;
    cxGridSconosciutiDBSconosciutiCEREFERTO: TcxGridDBColumn;
    SconosciutiSTATOVISITA: TIntegerField;
    SconosciutiDESCSTATOESAME: TStringField;
    SconosciutiANONIMIZZA: TIntegerField;
    cxGridSconosciutiDBSconosciutiANONIMIZZA: TcxGridDBColumn;
    aAssociaImmagini: TAction;
    dxBarButton43: TdxBarButton;
    aRefresh: TAction;
    dxBarButton44: TdxBarButton;
    ErroriInvioPKTRIAGE: TIntegerField;
    updSituazione: TAstaUpdateSQL;
    aContatto: TAction;
    dxBarButton45: TdxBarButton;
    cxTabRicercaTesto: TcxTabSheet;
    dxBarDockControl10: TdxBarDockControl;
    dxTestoRicerca: TdxBarEdit;
    dxLanciaRicerca: TdxBarButton;
    aRicercaTesto: TAction;
    dxCercaRef: TdxBarButton;
    RicercaInReferto: TAstaClientDataSet;
    RicercaInRefertoASSISTIBILI_FK: TIntegerField;
    RicercaInRefertoPKTRIAGE: TIntegerField;
    RicercaInRefertoSTATOVISITA: TIntegerField;
    RicercaInRefertoDESCSTATOESAME: TStringField;
    RicercaInRefertoCOD_MED_FIRMA: TIntegerField;
    RicercaInRefertoDATA_REFERTO: TDateTimeField;
    RicercaInRefertoREPARTORICHIEDENTE: TStringField;
    RicercaInRefertoUSER_ID: TIntegerField;
    RicercaInRefertoDIAGNOSTICA: TStringField;
    RicercaInRefertoIMPEGNATIVE_FK: TIntegerField;
    RicercaInRefertoRIS_STUDY_EUID: TStringField;
    RicercaInRefertoPROVENIENZA: TStringField;
    RicercaInRefertoREPARTOESECUTORE: TStringField;
    RicercaInRefertoORA_INIZIO: TDateTimeField;
    RicercaInRefertoDATA_VISITA: TDateTimeField;
    RicercaInRefertoTIPO_ATTIVITA_FK: TStringField;
    RicercaInRefertoDATA_ACCETTAZIONE: TDateTimeField;
    RicercaInRefertoREPARTI_FK: TIntegerField;
    RicercaInRefertoMEDRISERVATO: TStringField;
    RicercaInRefertoCEIMMAGINI: TIntegerField;
    RicercaInRefertoCD_CREATO: TIntegerField;
    sRicercaInReferto: TDataSource;
    RicercaInRefertoDATA_NASCITA: TDateTimeField;
    RicercaInRefertoSES_CODICE: TStringField;
    cxGridCercaReferto: TcxGrid;
    cxGridDBRicercaReferti: TcxGridDBTableView;
    cxGridDBPKTRIAGE: TcxGridDBColumn;
    cxGridDBORA_INIZIO: TcxGridDBColumn;
    cxGridDBDATA_VISITA: TcxGridDBColumn;
    cxGridDBDATA_REFERTO: TcxGridDBColumn;
    cxGridDBREPARTORICHIEDENTE: TcxGridDBColumn;
    cxGridDBDESCSTATOESAME: TcxGridDBColumn;
    cxGridDBDIAGNOSTICA: TcxGridDBColumn;
    cxGridDBCEIMMAGINI: TcxGridDBColumn;
    cxGridDBCEREFERTO: TcxGridDBColumn;
    cxGridDBREPARTOESECUTORE: TcxGridDBColumn;
    cxGridDBIMPEGNATIVE_FK: TcxGridDBColumn;
    cxGridDBNR_ARCHIVIO: TcxGridDBColumn;
    cxGridDBMEDRISERVATO: TcxGridDBColumn;
    cxGridDBCD_CREATO: TcxGridDBColumn;
    cxGridDBEsamiperRicerca: TcxGridDBTableView;
    cxGridDBEsamiperRicercaCODICE: TcxGridDBColumn;
    cxGridDBEsamiperRicercaDESCRIZIONE: TcxGridDBColumn;
    cxGridDBEsamiperRicercaSTATO: TcxGridDBColumn;
    cxGridCercaRefertoLevel1: TcxGridLevel;
    cxGridCercaRefertoLevel3: TcxGridLevel;
    cxGridPopupRicercaReferto: TcxGridPopupMenu;
    dxBarPopRicercaReferto: TdxBarPopupMenu;
    dxAnd: TdxBarButton;
    dxOr: TdxBarButton;
    dxComponentPrinterRicercaReferti: TdxGridReportLink;
    aStampaElenco: TAction;
    dxStampaElencoRicerca: TdxBarButton;
    cxTabACR: TcxTabSheet;
    sAnatomical: TDataSource;
    sPatological: TDataSource;
    RicercaACR: TAstaClientDataSet;
    RicercaACRASSISTIBILI_FK: TIntegerField;
    RicercaACRPKTRIAGE: TIntegerField;
    RicercaACRSTATOVISITA: TIntegerField;
    RicercaACRDESCSTATOESAME: TStringField;
    RicercaACRCOD_MED_FIRMA: TIntegerField;
    RicercaACRDATA_REFERTO: TDateTimeField;
    RicercaACRREPARTORICHIEDENTE: TStringField;
    RicercaACRUSER_ID: TIntegerField;
    RicercaACRDIAGNOSTICA: TStringField;
    RicercaACRIMPEGNATIVE_FK: TIntegerField;
    RicercaACRRIS_STUDY_EUID: TStringField;
    RicercaACRPROVENIENZA: TStringField;
    RicercaACRREPARTOESECUTORE: TStringField;
    RicercaACRORA_INIZIO: TDateTimeField;
    RicercaACRDATA_VISITA: TDateTimeField;
    RicercaACRTIPO_ATTIVITA_FK: TStringField;
    RicercaACRDATA_ACCETTAZIONE: TDateTimeField;
    RicercaACRREPARTI_FK: TIntegerField;
    RicercaACRMEDRISERVATO: TStringField;
    RicercaACRCEIMMAGINI: TIntegerField;
    RicercaACRCD_CREATO: TIntegerField;
    RicercaACRCOGNOME: TStringField;
    RicercaACRNOME: TStringField;
    RicercaACRDATA_NASCITA: TDateTimeField;
    RicercaACRSES_CODICE: TStringField;
    sRicercaACR: TDataSource;
    dxACR: TdxBarButton;
    dxBarPopRicercaACR: TdxBarPopupMenu;
    cxGridPopupRicercaACR: TcxGridPopupMenu;
    cxGridACR: TcxGrid;
    cxGridDBRefACR: TcxGridDBTableView;
    cxGridDBRefACRPKTRIAGE: TcxGridDBColumn;
    cxGridDBRefACRORA_INIZIO: TcxGridDBColumn;
    cxGridDBRefACRDATA_VISITA: TcxGridDBColumn;
    cxGridDBRefACRDATA_REFERTO: TcxGridDBColumn;
    cxGridDBRefACRREPARTORICHIEDENTE: TcxGridDBColumn;
    cxGridDBRefACRDESCSTATOESAME: TcxGridDBColumn;
    cxGridDBRefACRDIAGNOSTICA: TcxGridDBColumn;
    cxGridDBRefACRCEIMMAGINI: TcxGridDBColumn;
    cxGridDBRefACRCEREFERTO: TcxGridDBColumn;
    cxGridDBRefACRREPARTOESECUTORE: TcxGridDBColumn;
    cxGridDBRefACRIMPEGNATIVE_FK: TcxGridDBColumn;
    cxGridDBRefACRNR_ARCHIVIO: TcxGridDBColumn;
    cxGridDBRefACRMEDRISERVATO: TcxGridDBColumn;
    cxGridDBRefACRCD_CREATO: TcxGridDBColumn;
    cxGridDBEsamiperACR: TcxGridDBTableView;
    cxGridDBEsamiperACRCODICE: TcxGridDBColumn;
    cxGridDBEsamiperACRDESCRIZIONE: TcxGridDBColumn;
    cxGridDBEsamiperACRSTATO: TcxGridDBColumn;
    cxGridACRLevel1: TcxGridLevel;
    cxGridACRLevel3: TcxGridLevel;
    aRicercaACR: TAction;
    aStampaElencoACR: TAction;
    dxComponentPrinterRicercaACR: TdxGridReportLink;
    dxBarDockControl11: TdxBarDockControl;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    sSitEsami: TDataSource;
    SitEsami: TAstaClientDataSet;
    SitEsamiDESCRIZIONE: TStringField;
    SitEsamiCODICE: TStringField;
    SituazioneSITE_NAME: TStringField;
    GridOperazioniORA_INIZIO: TcxGridDBColumn;
    aConsegnaReferto: TAction;
    dxBarButton48: TdxBarButton;
    SituazioneNOTE_PRENO: TStringField;
    GridSituazioneNOTE_PRENO: TcxGridDBColumn;
    RefertiNOTE_PRENO: TStringField;
    GridRefertiNOTE_PRENO: TcxGridDBColumn;
    OperazioniNOTE_PRENO: TStringField;
    GridOperazioniNOTE_PRENO: TcxGridDBColumn;
    SconosciutiDIAGNOSTICA_FK: TIntegerField;
    RicercaACRDIAGNOSTICA_FK: TIntegerField;
    RicercaInRefertoDIAGNOSTICA_FK: TIntegerField;
    PrenotazioniDIAGNOSTICA_FK: TIntegerField;
    ErroriInvioDIAGNOSTICA_FK: TIntegerField;
    RefertiDIAGNOSTICA_FK: TIntegerField;
    OperazioniDIAGNOSTICA_FK: TIntegerField;
    RefertiLIV_SCR: TIntegerField;
    SitxDuplLIV_SCR: TIntegerField;
    GridSituazioneRIS_STUDY_EUID: TcxGridDBColumn;
    GridSituazioneLIV_SCR: TcxGridDBColumn;
    GridSituazioneNUMERO_FIRMA: TcxGridDBColumn;
    RefertiNUMERO_FIRMA: TIntegerField;
    GridRefertiLIV_SCR: TcxGridDBColumn;
    GridRefertiNUMERO_FIRMA: TcxGridDBColumn;
    OperazioniLIV_SCR: TIntegerField;
    OperazioniNUMERO_FIRMA: TIntegerField;
    GridOperazioniLIV_SCR: TcxGridDBColumn;
    GridOperazioniNUMERO_FIRMA: TcxGridDBColumn;
    dxAnatomical: TCustomdxBarCombo;
    dxPatological: TCustomdxBarCombo;
    aCercaCodiceACR: TAction;
    SituazioneSERVIZIORICHIEDENTE: TStringField;
    GridSituazioneSERVIZIORICHIEDENTE: TcxGridDBColumn;
    aConsulenza: TAction;
    dxBarButton25: TdxBarButton;
    aAnnullativo: TAction;
    dxBarButton26: TdxBarButton;
    GridOperazioniRIS_STUDY_EUID: TcxGridDBColumn;
    GridRefertiRIS_STUDY_EUID: TcxGridDBColumn;
    aNuovoNrArchivio: TAction;
    qNuovoNrArchivio: TAstaClientDataSet;
    dxBarButton27: TdxBarButton;
    dxAnnoArch: TdxBarEdit;
    dxNrArchivio: TdxBarEdit;
    qCercaNrArchivio: TAstaClientDataSet;
    qCercaNrArchivioASSISTIBILI_FK: TIntegerField;
    RicercaInRefertoNOMINATIVO: TStringField;
    cxGridDBNOMINATIVO: TcxGridDBColumn;
    RicercaInRefertoCOGNOME: TStringField;
    RicercaInRefertoNOME: TStringField;
    RicercaACRNOMINATIVO: TStringField;
    cxGridDBRefACRNOMINATIVO: TcxGridDBColumn;
    AnnullaAnag: TAstaClientDataSet;
    MettiDaRefertare: TAction;
    dxBarButton29: TdxBarButton;
    aRicercaPaziente: TAction;
    ErroriInvioPID: TStringField;
    RefertiPID: TStringField;
    OperazioniPID: TStringField;
    SituazionePID: TStringField;
    SchedaPazientePID: TStringField;
    GridSitErroriRIS_STUDY_EUID: TcxGridDBColumn;
    GridPrenotazioniRIS_STUDY_EUID: TcxGridDBColumn;
    PrenotazioniRIS_STUDY_EUID: TStringField;
    PrenotazioniPID: TStringField;
    GridPrenotazioniPID: TcxGridDBColumn;
    RefertiModificatiRIS_STUDY_EUID: TStringField;
    cxGridRefModificatiDBRIS_STUDY_EUID: TcxGridDBColumn;
    RicercaInRefertoPID: TStringField;
    cxGridDBRIS_STUDY_EUID: TcxGridDBColumn;
    cxGridDBPID: TcxGridDBColumn;
    RicercaACRPID: TStringField;
    cxGridDBRefACRRIS_STUDY_EUID: TcxGridDBColumn;
    cxGridDBRefACRPID: TcxGridDBColumn;
    GridOperazioniPID: TcxGridDBColumn;
    GridRefertiPID: TcxGridDBColumn;
    GridSitErroriPID: TcxGridDBColumn;
    SchedaPazienteDATA_DECESSO: TDateTimeField;
    dxLayoutControlCartellaItem1: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxBarDockControl12: TdxBarDockControl;
    dxDalSconosciuti: TcxBarEditItem;
    rsPropSaver1: TrsPropSaver;
    RiportaStandard: TAction;
    dxBarButton32: TdxBarButton;
    GridSituazioneNR_ARCH: TcxGridDBColumn;
    aRicercaNrArchivio: TAction;
    aRepositorySISS: TAction;
    dxBarButton33: TdxBarButton;
    SchedaPazienteCODICE_FISCALE: TStringField;
    GridSituazioneREPARTI_FK: TcxGridDBColumn;
    aSostitutivo: TAction;
    dxBarButton37: TdxBarButton;
    ControlloAnnullatoSISS: TAstaClientDataSet;
    DuplicatiDIFFERENTE: TIntegerField;
    RefertiDESCSTATOREFERTO: TStringField;
    GridRefertiDESCSTATOREFERTO: TcxGridDBColumn;
    RicercaInRefertoNR_ARCHIVIO: TStringField;
    RicercaACRNR_ARCHIVIO: TStringField;
    SituazioneNR_ARCH: TStringField;
    aSelezionaTuttiCD: TAction;
    GridSituazioneSTATOVISITA: TcxGridDBColumn;
    dxBarButton49: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItemImmagini: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItemCreazioneCD: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    aStampaAccettazioni: TAction;
    aStampaDiagnostica: TAction;
    dxBarButton50: TdxBarButton;
    dxBarButton51: TdxBarButton;
    aCancellaEsame: TAction;
    dxBarButton52: TdxBarButton;
    TriagexImpegnative: TAstaClientDataSet;
    TriagexImpegnativePKTRIAGE: TIntegerField;
    TriagexImpegnativeDURATA: TIntegerField;
    TriagexImpegnativeIMPEGNATIVE_FK: TIntegerField;
    TriagexImpegnativePROVENIENZA: TStringField;
    TriagexImpegnativeSTATOVISITA: TIntegerField;
    TriagexImpegnativeDIAGNOSTICA_FK: TIntegerField;
    TriagexImpegnativeRIS_STUDY_EUID: TStringField;
    CancellaImpegnativa: TAstaClientDataSet;
    aNuovaAnagrafica: TAction;
    dxBarButton53: TdxBarButton;
    SchedaPazienteASSISTIBILI_FK: TIntegerField;
    SconosciutiORDERPLACER_ID: TStringField;
    SconosciutiPLACER_ORDER_NUMBER: TStringField;
    RefertiModificatiSOLO_FIRMA: TIntegerField;
    cxGridRefModificatiDBSOLO_FIRMA: TcxGridDBColumn;
    dxBarPopGenerale: TdxBarPopupMenu;
    GridRefertiPKREFERTI: TcxGridDBColumn;
    RefertiPKREFERTI: TIntegerField;
    updReferti: TAstaUpdateSQL;
    dxStampaReferto: TdxBarButton;
    dxStampaEtichette: TdxBarButton;
    dxEseguiOperazione: TdxBarButton;
    aCreaDocumenti: TAction;
    dxPrintDialogRef: TdxPrintDialog;
    aAnamnesi: TAction;
    dxBarButton39: TdxBarButton;
    sqStatoAnag: TDataSource;
    SchedaPazienteDESCSESSO: TStringField;
    OperazioniCEREFERTO: TIntegerField;
    RefertiCEREFERTO: TIntegerField;
    SituazionePKTRIAGE: TIntegerField;
    SituazioneSTATOVISITA: TIntegerField;
    SituazioneUSER_ID: TIntegerField;
    SituazioneCOD_MED_FIRMA: TIntegerField;
    SituazioneCD_CREATO: TIntegerField;
    SituazioneDIAGNOSTICA_FK: TIntegerField;
    SituazioneASSISTIBILI_FK: TIntegerField;
    SituazioneREPARTI_FK: TIntegerField;
    SituazioneIMPEGNATIVE_FK: TIntegerField;
    SituazioneANNO: TIntegerField;
    SituazioneNR_ARCHIVIO: TIntegerField;
    SituazioneLIV_SCR: TIntegerField;
    SituazioneNUMERO_FIRMA: TIntegerField;
    SituazioneCEIMMAGINI: TIntegerField;
    SituazioneCEREFERTO: TIntegerField;
    SconosciutiCEREFERTO: TIntegerField;
    NuoveAnagNR: TIntegerField;
    SitEsamiTRIAGE_FK: TIntegerField;
    SitEsamiPKPRESTAZIONI: TIntegerField;
    SitEsamiSTATO: TIntegerField;
    SitxDuplCEREFERTO: TIntegerField;
    DuplicatiNR: TIntegerField;
    RefertiModificatiCEREFERTO: TIntegerField;
    RicercaInRefertoCEREFERTO: TIntegerField;
    RicercaACRCEREFERTO: TIntegerField;
    GridLogStoricoPKLOG_ANAG: TcxGridDBColumn;
    cxDBLabel1: TcxDBLabel;
    dxLayoutControlCartellaItem12: TdxLayoutItem;
    cxDBLabel2: TcxDBLabel;
    dxLayoutControlCartellaItem5: TdxLayoutItem;
    SchedaPazienteCIT_CODICE: TStringField;
    dxLayoutControlCartellaGroup3: TdxLayoutGroup;
    RefEsamiBRANCA: TStringField;
    RefEsamiDESCBRANCA: TStringField;
    cxGridRefertiEsamiDESCBRANCA: TcxGridDBColumn;
    SchedaPazienteDESC_IND_NASC: TStringField;
    SchedaPazienteDESC_IND_RES: TStringField;
    RefertiNOME_DOCUMENTO: TStringField;
    GridRefertiNOME_DOCUMENTO: TcxGridDBColumn;
    GridOperazioniEsamiBRANCA: TcxGridDBColumn;
    cxGridRefertiEsamiBRANCA: TcxGridDBColumn;
    GridOperazioniEsamiDESCBRANCA: TcxGridDBColumn;
    dxLayoutControlCartellaGroup4: TdxLayoutAutoCreatedGroup;
    dxDataAccAl: TcxBarEditItem;
    aEsportaExcel: TAction;
    SaveDialog1: TSaveDialog;
    dxBarButton28: TdxBarButton;
    aImportaReferto: TAction;
    OpenDialog1: TOpenDialog;
    qCaricaReferto: TAstaClientDataSet;
    dxBarPopPrestazioni: TdxBarPopupMenu;
    dxBarBtnCaricaReferto: TdxBarButton;
    updCaricaReferto: TAstaUpdateSQL;
    qCaricaRefertoRIS_STUDY_EUID: TStringField;
    qCaricaRefertoREFERTO: TBlobField;
    qCaricaRefertoPKPRESTAZIONI: TFloatField;
    qCaricaRefertoUSER_ID: TIntegerField;
    procedure RefertoExecute(Sender: TObject);
    procedure RicercaInternaExecute(Sender: TObject);
    procedure RicercaInternaUpdate(Sender: TObject);
    procedure ElencoRefertiExecute(Sender: TObject);
    procedure ElencoRefertiUpdate(Sender: TObject);
    procedure RefertoUpdate(Sender: TObject);
    procedure ImmaginiExecute(Sender: TObject);
    procedure ImmaginiUpdate(Sender: TObject);
    procedure RiapriExecute(Sender: TObject);
    procedure RiapriUpdate(Sender: TObject);
    procedure OperazioniBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure dxDataAccCloseUp(Sender: TObject);
    procedure GridOperazioniDblClick(Sender: TObject);
    function GridEsamiDataControllerDataModeControllerDetailIsCurrentQuery(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant): Boolean;
    procedure GridEsamiDataControllerDataModeControllerDetailFirst(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
    procedure OperazioniAfterQuery(Sender: TAstaBaseClientDataSet);
    procedure cxGridPopupRefertiPopupMenus0Popup(ASenderMenu: TComponent;
      AHitTest: TcxCustomGridHitTest; X, Y: Integer);
    procedure aStampaCartellaUpdate(Sender: TObject);
    procedure aStampaCartellaExecute(Sender: TObject);
    procedure ApriTutteExecute(Sender: TObject);
    procedure ChiudiTutteExecute(Sender: TObject);
    procedure ApriTutteUpdate(Sender: TObject);
    procedure ChiudiTutteUpdate(Sender: TObject);
    procedure ModificaAnagraficaUpdate(Sender: TObject);
    procedure ModificaAnagraficaExecute(Sender: TObject);
    procedure RiportaDaEseguireExecute(Sender: TObject);
    procedure RiportaDaEseguireUpdate(Sender: TObject);
    procedure dxPageControlChange(Sender: TObject);
    procedure SchedaPazienteBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure dxDataReferCloseUp(Sender: TObject);
    procedure RefertiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure RefertiAfterQuery(Sender: TAstaBaseClientDataSet);
    procedure cxGridPopupOperazioniPopupMenus0Popup(
      ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X,
      Y: Integer);
    procedure AssociaPazientiExecute(Sender: TObject);
    procedure AssociaPazientiUpdate(Sender: TObject);
    procedure GridOperazioniEsamiDataControllerDataModeControllerDetailFirst(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
    function GridOperazioniEsamiDataControllerDataModeControllerDetailIsCurrentQuery(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant): Boolean;
    procedure cxGridRefertiEsamiDataControllerDataModeControllerDetailFirst(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
    function cxGridRefertiEsamiDataControllerDataModeControllerDetailIsCurrentQuery(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant): Boolean;
    procedure RadiologicoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RiattivaExecute(Sender: TObject);
    procedure RiattivaUpdate(Sender: TObject);
    procedure GridErrEsamiDataControllerDataModeControllerDetailFirst(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
    function GridErrEsamiDataControllerDataModeControllerDetailIsCurrentQuery(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant): Boolean;
    procedure ErroriInvioBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure dxDataErroriCloseUp(Sender: TObject);
    procedure ElencoErroriExecute(Sender: TObject);
    procedure AnnullaAnagraficaExecute(Sender: TObject);
    procedure AnnullaAnagraficaUpdate(Sender: TObject);
    procedure ModificaAccettazioneExecute(Sender: TObject);
    procedure ModificaAccettazioneUpdate(Sender: TObject);
    procedure ModInternoEsternoExecute(Sender: TObject);
    procedure ModInternoEsternoUpdate(Sender: TObject);
    procedure cxGridPopupErroriPopupMenus0Popup(ASenderMenu: TComponent;
      AHitTest: TcxCustomGridHitTest; X, Y: Integer);
    procedure dxDataPrenoCloseUp(Sender: TObject);
    procedure ElencoPrenotazioniExecute(Sender: TObject);
    procedure PrenotazioniBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure aStoricoExecute(Sender: TObject);
    procedure cxGridPopupPrenotazioniPopupMenus0Popup(
      ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X,
      Y: Integer);
    procedure GridRefertiDblClick(Sender: TObject);
    procedure GridSituazioneDblClick(Sender: TObject);
    procedure dxCercaAccKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aStoricoAnagExecute(Sender: TObject);
    procedure aStoricoAnagUpdate(Sender: TObject);
    procedure StoricoAnagBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure dxAggiornaDalCloseUp(Sender: TObject);
    procedure GridLogStoricoDblClick(Sender: TObject);
    procedure aStampaPrenotazioniExecute(Sender: TObject);
    procedure aCutExecute(Sender: TObject);
    procedure aPasteExecute(Sender: TObject);
    procedure aPasteUpdate(Sender: TObject);
    procedure aAnnullaAnagDuplicatiExecute(Sender: TObject);
    procedure aAnnullaAnagDuplicatiUpdate(Sender: TObject);
    procedure aRefreshDupExecute(Sender: TObject);
    procedure aRileggiInserimentiExecute(Sender: TObject);
    procedure aAnnullaAnagInserimentiExecute(Sender: TObject);
    procedure aAnnullaAnagInserimentiUpdate(Sender: TObject);
    procedure DuplicatiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure dxSoloCognNomeDataClick(Sender: TObject);
    procedure dxAncheComNascClick(Sender: TObject);
    procedure cxGridDuplicatiDBTableView2DataControllerDataModeControllerDetailFirst(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
    function cxGridDuplicatiDBTableView2DataControllerDataModeControllerDetailIsCurrentQuery(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant): Boolean;
    procedure dxAncheCancellatiClick(Sender: TObject);
    procedure dxAggiornaAlCloseUp(Sender: TObject);
    procedure cxComboTipoOperazionePropertiesEditValueChanged(
      Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure aElencoStoricoExecute(Sender: TObject);
    procedure aElencoStoricoUpdate(Sender: TObject);
    procedure cxGridPopupDuplicatiPopupMenus0Popup(ASenderMenu: TComponent;
      AHitTest: TcxCustomGridHitTest; X, Y: Integer);
    procedure cxGridPopupDuplicatiPopupMenus1Popup(ASenderMenu: TComponent;
      AHitTest: TcxCustomGridHitTest; X, Y: Integer);
    procedure aCercaDuplicatiExecute(Sender: TObject);
    procedure dxCognomeDuplKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aStampaPrenotazioniUpdate(Sender: TObject);
    procedure RefertiModificatiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure dxCercaRefertiClick(Sender: TObject);
    procedure aRefertaAncoraExecute(Sender: TObject);
    procedure aRefertaAncoraUpdate(Sender: TObject);
    procedure StoricoModRefExecute(Sender: TObject);
    procedure StoricoModRefUpdate(Sender: TObject);
    procedure ElencoRefertiModificatiExecute(Sender: TObject);
    procedure ElencoRefertiModificatiUpdate(Sender: TObject);
    procedure dxArchivioClick(Sender: TObject);
    procedure aBookmarkExecute(Sender: TObject);
    procedure aBookmarkUpdate(Sender: TObject);
    procedure aCreazioneCDExecute(Sender: TObject);
    procedure aCreazioneCDUpdate(Sender: TObject);
    procedure aTestAssociazioneExecute(Sender: TObject);
    procedure aAddendumExecute(Sender: TObject);
    procedure aAddendumUpdate(Sender: TObject);
    procedure cxGridPopupCartellaPopupMenus0Popup(ASenderMenu: TComponent;
      AHitTest: TcxCustomGridHitTest; X, Y: Integer);
    procedure PrenoEsamiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure AssociaEsameExecute(Sender: TObject);
    procedure cxGridPopupSconosciutiPopupMenus0Popup(
      ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X,
      Y: Integer);
    procedure AssociaEsameUpdate(Sender: TObject);
    procedure SconosciutiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure aAssociaImmaginiExecute(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure aRefreshUpdate(Sender: TObject);
    procedure SituazioneBeforePost(DataSet: TDataSet);
    procedure aContattoExecute(Sender: TObject);
    procedure aContattoUpdate(Sender: TObject);
    procedure cxGridPopupRicercaRefertoPopupMenus0Popup(
      ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X,
      Y: Integer);
    procedure aRicercaTestoExecute(Sender: TObject);
    procedure aRicercaTestoUpdate(Sender: TObject);
    procedure aStampaElencoExecute(Sender: TObject);
    procedure aStampaElencoUpdate(Sender: TObject);
    procedure RicercaInRefertoBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure RicercaACRBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxGridPopupRicercaACRPopupMenus0Popup(
      ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X,
      Y: Integer);
    procedure aRicercaACRExecute(Sender: TObject);
    procedure aRicercaACRUpdate(Sender: TObject);
    procedure aStampaElencoACRUpdate(Sender: TObject);
    procedure aStampaElencoACRExecute(Sender: TObject);
    procedure cxGridDBRicercaRefertiDblClick(Sender: TObject);
    procedure cxGridDBRefACRDblClick(Sender: TObject);
    procedure aStoricoUpdate(Sender: TObject);
    procedure aTestAssociazioneUpdate(Sender: TObject);
    procedure aAssociaImmaginiUpdate(Sender: TObject);
    procedure cxGridDBEsamiperRicercaDataControllerDataModeControllerDetailFirst(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
    function cxGridDBEsamiperRicercaDataControllerDataModeControllerDetailIsCurrentQuery(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant): Boolean;
    procedure cxGridDBEsamiperACRDataControllerDataModeControllerDetailFirst(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
    function cxGridDBEsamiperACRDataControllerDataModeControllerDetailIsCurrentQuery(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant): Boolean;
    procedure aConsegnaRefertoExecute(Sender: TObject);
    procedure aConsegnaRefertoUpdate(Sender: TObject);
    procedure dxTestoRicercaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SituazioneBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure dxAnatomicalDropDown(Sender: TObject);
    procedure aCercaCodiceACRExecute(Sender: TObject);
    procedure dxPatologicalDropDown(Sender: TObject);
    procedure aConsulenzaExecute(Sender: TObject);
    procedure aConsulenzaUpdate(Sender: TObject);
    procedure aAnnullativoExecute(Sender: TObject);
    procedure aAnnullativoUpdate(Sender: TObject);
    procedure aNuovoNrArchivioExecute(Sender: TObject);
    procedure aNuovoNrArchivioUpdate(Sender: TObject);
    procedure dxNrArchivioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qCercaNrArchivioBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure GridSituazioneDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure GridSituazioneDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxCognomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MettiDaRefertareExecute(Sender: TObject);
    procedure MettiDaRefertareUpdate(Sender: TObject);
    procedure aRicercaPazienteUpdate(Sender: TObject);
    procedure aRicercaPazienteExecute(Sender: TObject);
    procedure dxDalSconosciutiCloseUp(Sender: TObject);
    procedure RiportaStandardExecute(Sender: TObject);
    procedure aRicercaNrArchivioExecute(Sender: TObject);
    procedure aRicercaNrArchivioUpdate(Sender: TObject);
    procedure aRepositorySISSExecute(Sender: TObject);
    procedure aRepositorySISSUpdate(Sender: TObject);
    procedure GridSituazioneEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure aSostitutivoExecute(Sender: TObject);
    procedure aSostitutivoUpdate(Sender: TObject);
    procedure GridSituazioneNR_ARCHIVIOPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure GridSituazioneCanSelectRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure aSelezionaTuttiCDExecute(Sender: TObject);
    procedure aSelezionaTuttiCDUpdate(Sender: TObject);
    procedure aStampaAccettazioniExecute(Sender: TObject);
    procedure aStampaAccettazioniUpdate(Sender: TObject);
    procedure aStampaDiagnosticaUpdate(Sender: TObject);
    procedure aStampaDiagnosticaExecute(Sender: TObject);
    procedure aCancellaEsameExecute(Sender: TObject);
    procedure aCancellaEsameUpdate(Sender: TObject);
    procedure aNuovaAnagraficaExecute(Sender: TObject);
    procedure aNuovaAnagraficaUpdate(Sender: TObject);
    procedure aCreaDocumentiExecute(Sender: TObject);
    procedure aCreaDocumentiUpdate(Sender: TObject);
    procedure dxStampaRefertoClick(Sender: TObject);
    procedure dxCreaCDClick(Sender: TObject);
    procedure dxStampaEtichetteClick(Sender: TObject);
    procedure aAnamnesiExecute(Sender: TObject);
    procedure aAnamnesiUpdate(Sender: TObject);
    procedure SitxDuplBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure GridOperazioniCustomization(Sender: TObject);
    procedure GridRefertiCustomization(Sender: TObject);
    procedure GridSituazioneCustomization(Sender: TObject);
    procedure GridSitErroriCustomization(Sender: TObject);
    procedure GridPrenotazioniCustomization(Sender: TObject);
    procedure GridLogStoricoCustomization(Sender: TObject);
    procedure cxGridDuplicatiDBTableView1Customization(Sender: TObject);
    procedure cxNuoveAnagDBTableView1Customization(Sender: TObject);
    procedure cxGridRefModificatiDBCustomization(Sender: TObject);
    procedure cxGridSconosciutiDBSconosciutiCustomization(Sender: TObject);
    procedure cxGridDBRicercaRefertiCustomization(Sender: TObject);
    procedure cxGridDBRefACRCustomization(Sender: TObject);
    procedure dxDataAccAlPropertiesCloseUp(Sender: TObject);
    procedure GridOperazioniNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure aEsportaExcelExecute(Sender: TObject);
    procedure RefEsamiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure aImportaRefertoExecute(Sender: TObject);
    procedure aImportaRefertoUpdate(Sender: TObject);
  private
    { Private declarations }
    lstato: TStringList;
    lpkt: TStringList;
    FResetEffettuato: boolean;
    FShowOperazioni: boolean;
    xAnagRef: Integer;
    xAnagCognome: string;
    xAnagDataNasc: TDateTime;
    refData: TAstaClientDataset;
    refGrid: TcxGridDBTableView;
    refDettagli: TcxGridDBTableView;
    xPossibili: TAstaCustomDataset;
    function IsEmptyDataSet: Boolean;
    function CartellaEmptyDataset: boolean;
    procedure StampaModuli(xstato: Integer; xprovenienza: string);
    function AbilitaAddendum: boolean;
    procedure LeggiBarCode(var Message: TMessage); message SY_READBARCODE;
    procedure LeggiTessera(var Message: TMessage); message SY_READTESSERA;
    procedure FocusSulCampo(var Message: TMessage); message SY_FOCUSPRIMOCAMPO;
    procedure CorreggiImpegnativa;
    procedure ModificaAccInterno( tp: char = 'X' );
    procedure ModificaSalaOp;
    procedure RichiamaImmagini(bookmark: boolean);
    function Referta(xpkt: integer; xstatoref: TpStatoReferto): boolean;
    procedure Immagini_e_Referti;
    procedure RicercaCF(const xCF: string);
    procedure RefreshForm(var Message: TMessage); message SY_REFRESHFORM;
    procedure StampaReferto(pSelezStampante: boolean);
    procedure PreparaCD;
    procedure StampaEtichette(pSelezStampante: Boolean);
    procedure CaricaTriageSelezionati(Grid: TcxGridDBTableView);    
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure DoShow; override;
    function CaricaToolBar: TdxBars; override;
    procedure SendPortDataToForm(const s: string; lungh: integer); override;
    function IsFormReady: boolean; override;
    function RecordAttuale: integer; override;
    property ShowOperazioni: boolean read FShowOperazioni write FShowOperazioni;
  end;

var
  FArchivioReferti: TFArchivioReferti;


implementation

uses DMCommon, Windows, StrUtils,  
     Sysutils, msgdlgs, osFastStrings, CercaBarCode,
     DateUtils, Anagrafica, AstaDBTypes, RicAssistito, Fusione,
{$IFNDEF MEDICORNER}
     DatiAccDiagn,
     DatiSalaOP,
     ScegliIntEst,
     FirmaSISSWay,
     CreaCDMicroprint,
     ContattoxPaz,
     ACRDiag,
     Anamnesi,
     EditNrArch,
     RefPreview,
{$ELSE}
     RefMedicorner,
{$ENDIF}
     StampaAvvisi, DatiAccImp, StoricoAnag,
     Variants, InizializzaRef,
{$IFDEF MADEXCEPT}
     madExcept, madTypes, madStrings,
{$ENDIF}
     ConsegnaRef, ShellAPI, cxStorage {$IFDEF DELPHI2007} ,kscxStorage {$ENDIF},
     ConfermaCancella, cxGridExportLink, cxGridDBDataDefinitions;

{$R *.DFM}

function TFArchivioReferti.CaricaToolBar: TdxBars;
begin
  result := dxBarArchivio.Bars;
end;

function TFArchivioReferti.RecordAttuale: integer;
var
  ref: TcxCustomGridTableItem;
begin
    if Assigned(refGrid) and
       (refGrid.Controller.SelectedRecordCount=1) and
       (refGrid.Controller.FocusedRecordIndex<>-1) and
       not (refGrid.Controller.FocusedRecord is TcxGridGroupRow) then
    begin
       ref := refGrid.DataController.GetItemByFieldName(refGrid.DataController.KeyFieldNames);
       if Assigned(ref) then
          result := refGrid.Controller.FocusedRecord.Values[ref.Index]
       else
          result := -1;
    end
    else
       result := -1;
end;

procedure TFArchivioReferti.RefertoExecute(Sender: TObject);
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

   if dxPageControl.ActivePage=dxTabArchivio then
   begin
      ref := Situazione;
      res := VisualizzaReferto(SituazioneSITE_NAME.AsString,SituazionePKTRIAGE.AsInteger,SchedaPazienteNOMINATIVO.AsString,xescludi,xstampa,tvdEdit);
   end
   else if dxPageControl.ActivePage=dxTabReferti then
   begin
      ref := Referti;
      res := VisualizzaReferto('',RefertiPKTRIAGE.AsInteger,RefertiNOMINATIVO.AsString,xescludi,xstampa,tvdEdit);
   end
   else if dxPageControl.ActivePage=cxDuplicati then
   begin
      ref := SitxDupl;
      res := VisualizzaReferto('',SitxDuplPKTRIAGE.AsInteger,DuplicatiCOGNOME.AsString+' '+DuplicatiNOME.AsString,xescludi,xstampa,tvdEdit);
   end
   else if dxPageControl.ActivePage=cxModSuReferti then
   begin
      ref := RefertiModificati;
      res := VisualizzaReferto('',RefertiModificatiPKTRIAGE.AsInteger,RefertiModificatiCOGNOME.AsString+' '+RefertiModificatiNOME.AsString,xescludi,xstampa,tvdEdit);
   end
   else if dxPageControl.ActivePage=cxSconosciuti then
   begin
      ref := Sconosciuti;
      res := VisualizzaReferto('',SconosciutiPKTRIAGE.AsInteger,SconosciutiCOGNOME.AsString+' '+SconosciutiNOME.AsString,xescludi,xstampa,tvdEdit);
   end
   else if dxPageControl.ActivePage=cxTabRicercaTesto then
   begin
      ref := RicercaInReferto;
      res := VisualizzaReferto('',RicercaInRefertoPKTRIAGE.AsInteger,RicercaInRefertoCOGNOME.AsString+' '+RicercaInRefertoNOME.AsString,xescludi,xstampa,tvdEdit);
   end
   else if dxPageControl.ActivePage=cxTabACR then
   begin
      ref := RicercaACR;
      res := VisualizzaReferto('',RicercaACRPKTRIAGE.AsInteger,RicercaACRCOGNOME.AsString+' '+RicercaACRNOME.AsString,xescludi,xstampa,tvdEdit);
   end
   else
   begin
      ref := Operazioni;
      res := VisualizzaReferto('',OperazioniPKTRIAGE.AsInteger,OperazioniNOMINATIVO.AsString,xescludi,xstampa,tvdEdit);
   end;

   if (res in [mrIgnore,mrAbort,mrNoToAll]) then
   begin
      ref.RefreshRecord;
   end;

   if gblViewImmagini and FDMCommon.DoppioMonitor then
      FDMCommon.Vuoto;

end;

procedure TFArchivioReferti.RicercaInternaExecute(Sender: TObject);
var
  trovato: integer;
begin

  trovato := -1;
  FRicAssistito := TFRicAssistito.Create(nil);
  try

   if gblSuperUser or gblUserIsAdmin then
     FRicAssistito.QRicerca.Parambyname('xsan_ident').AsString := '#'
   else
     FRicAssistito.QRicerca.Parambyname('xsan_ident').AsString := '# (a.SAN_IDENT in (1,2,4,5)) and';

   FRicAssistito.QRicerca.Parambyname('data_decesso').AsString := '#';

   FRicAssistito.QRicerca.Active := false;
   FRicAssistito.QRicerca.QBEMode := true;
   FRicAssistito.QRicerca.Active := true;

   if (cxCognome.Text<>'') and (Length(cxCognome.Text)>=2) then
   begin

     FRicAssistito.QRicercaCOGNOME.AsString := cxCognome.Text;
     FRicAssistito.QRicercaNOME.AsString := cxNome.Text;

     FRicAssistito.AttivaRicerca.Execute;

     if (FRicAssistito.QRicerca.RecordCount=1) then
        trovato := mrCancel; //JRT: ex mrOk;  eliminata seleziona automatica se unico paziente trovato - 07/07/2015
   end;

   if trovato<>mrOk then
      trovato := FRicAssistito.ShowModal;

   if trovato = mrOk then
   begin
     SchedaPaziente.Parambyname('pkassistibili').AsInteger := FRicAssistito.QRicercaPKASSISTIBILI.AsInteger;
     SchedaPaziente.syRefresh;
     Situazione.Parambyname('pkassistibili').AsInteger := FRicAssistito.QRicercaPKASSISTIBILI.AsInteger;
     Situazione.syRefresh;
     GridSituazione.Controller.GotoFirst;
   end;

   finally
      FRicAssistito.Free;
   end;

end;

procedure TFArchivioReferti.RicercaInternaUpdate(Sender: TObject);
begin
  RicercaInterna.Enabled := (dxPageControl.ActivePage=dxTabArchivio);
end;

procedure TFArchivioReferti.ElencoRefertiExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
  refLink: TdxGridReportLink;
begin

    if dxPageControl.ActivePage=dxTabReferti then
    begin
      GridReferti.ViewData.Collapse(False);
      refLink := dxComponentPrinterReferti;
    end
    else begin
      GridOperazioni.ViewData.Collapse(False);
      refLink := dxComponentPrinterOperazioni;
    end;

//    dxComponentPrinter1.Print(True,nil,refLink);
    if FDMCommon.dxPrintDialog1.Execute then
    begin
       if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
          dxComponentPrinter1.Preview(true,refLink)
       else begin
          AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
          dxComponentPrinter1.Print(false,@AData,refLink);
       end;
    end;

end;

procedure TFArchivioReferti.ElencoRefertiUpdate(Sender: TObject);
begin
	ElencoReferti.Enabled := Operazioni.Active and not Operazioni.IsEmpty;
end;

procedure TFArchivioReferti.RefertoUpdate(Sender: TObject);
begin
{
   if dxPageControl.ActivePage=dxTabArchivio then
      Referto.Enabled := gblViewReferti and (SituazioneCEREFERTO.AsInteger=1)   //      (SituazioneSTATOVISITA.AsInteger in [170,171,180,190])
   else if dxPageControl.ActivePage=dxTabReferti then
      Referto.Enabled := gblViewReferti and (RefertiCEREFERTO.AsInteger=1)  // (RefertiSTATOVISITA.AsInteger in [170,171,180,190])
   else if dxPageControl.ActivePage=cxDuplicati then
      Referto.Enabled := gblViewReferti and (SitxDuplCEREFERTO.AsInteger=1)  // (SitxDuplSTATOVISITA.AsInteger in [170,171,180,190])
   else if dxPageControl.ActivePage=cxModSuReferti then
      Referto.Enabled := gblViewReferti and (RefertiModificatiCEREFERTO.AsInteger=1)  // (RefertiModificatiSTATOVISITA.AsInteger in [170,171,180,190])
   else if dxPageControl.ActivePage=cxSconosciuti then
      Referto.Enabled := gblViewReferti and (SconosciutiCEREFERTO.AsInteger=1)  // (SconosciutiSTATOVISITA.AsInteger in [170,171,180,190])
   else if dxPageControl.ActivePage=cxTabRicercaTesto then
      Referto.Enabled := gblViewReferti and (RicercaInRefertoCEREFERTO.AsInteger=1)  // (RicercaInRefertoSTATOVISITA.AsInteger in [170,171,180,190])
   else if dxPageControl.ActivePage=cxTabACR then
      Referto.Enabled := gblViewReferti and (RicercaACRCEREFERTO.AsInteger=1)  // (RicercaACRSTATOVISITA.AsInteger in [170,171,180,190])
   else
      Referto.Enabled := gblViewReferti and (OperazioniCEREFERTO.AsInteger=1)  // (OperazioniSTATOVISITA.AsInteger in [170,171,180,190]);
}

   Referto.Enabled := (RecordAttuale<>-1) and
                       gblViewReferti and
                       Assigned(refData) and (refData.FindField('CEREFERTO')<>nil) and (refData.FieldByName('CEREFERTO').AsInteger=1);

end;

constructor TFArchivioReferti.Create(AOwner: TComponent);
begin

    inherited;

    lstato := TStringList.Create;
    lpkt := TStringList.Create;

    FResetEffettuato := false;
    FShowOperazioni := true;

    FDMCommon.Possibili.Filter := format('REPARTI_FK = %d',[gblpkrep]);
    FDMCommon.Possibili.Filtered := true;

    xPossibili := TAstaCustomDataset.Create(nil);
    xPossibili.CleanCloneFromDataSet(FDMCommon.Possibili);

    FDMCommon.Possibili.Filtered := false;
    FDMCommon.Possibili.Filter := '';

    xAnagRef := -1;
    dxAggiornaDal.EditValue := Date();
    dxAggiornaAl.EditValue := Date();
    dxDataPreno.EditValue := Date();
    dxDataAccDal.EditValue := Date();
    dxDataAccAl.EditValue := Date();
    dxDataRefer.EditValue := Date();
    dxDataErrori.EditValue := Date();
    dxDalSconosciuti.EditValue := IncDay(Date(),30);
{
    Operazioni.Parambyname('data_acc').AsDateTime := dxDataAcc.EditValue;
    Operazioni.open;

    Situazione.Parambyname('pkassistibili').AsInteger := -1;
    Situazione.open;
    Esami.Parambyname('triage_fk').AsInteger := -1;
    Esami.open;

    SitEsami.Parambyname('triage_fk').AsInteger := -1;
    SitEsami.open;
}

    dxPageControl.HideTabs := true;

    if (FDMCommon.LeggiPostoLavoroANAG_SCRITTURA.AsInteger=0) then
    begin
//       dxStoricoAnag.Visible := ivNever;
       dxDuplicatiAnag.Visible := ivNever;
       dxAnagDaInviare.Visible := ivNever;
    end
    else begin
       if (FDMCommon.LeggiPostoLavoroANAG_SCRITTURA.AsInteger=0) then
          dxAnagDaInviare.Visible := ivNever;
    end;

    if FDMCommon.IsUserCup and not gblSuperUser then
    begin
       dxReferti.Visible := ivNever;
       dxErroriAssociazione.Visible := ivNever;
    end;
    if not (gblSuperUser or gblUserIsAdmin or gblIsMedico) then
    begin
       dxRefertiMod.Visible := ivNever;
    end;

//    FDMCommon.ApriAnag;

    FDMCommon.edrepTIPO_OP_ANAGRAFICA.Properties.OnEditValueChanged := cxComboTipoOperazionePropertiesEditValueChanged;

    if FDMCommon.LeggiPostoLavoroCHK_SLITTA_REP.AsInteger=1 then
    begin
       SituazionePROVENIENZA.DisplayLabel := RS_Ospedale;
       SituazioneSERVIZIORICHIEDENTE.DisplayLabel := RS_Reparto;
    end;

    if (FDMCommon.Param_TicketCHK_RICERCA_REFERTI.AsInteger=0) or not gblViewReferti then
       dxCercaRef.Visible := ivNever;

    if (FDMCommon.LeggiPostoLavoroCHECK_ACR.AsInteger=0) or not gblViewReferti then
       dxACR.Visible := ivNever;

   aConsulenza.Visible := false;  // eliminato 23.11.2006  ex: (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=3);

   aAnnullativo.Visible := (FDMCommon.LeggiPostoLavoroCHK_ANNULLATIVO.AsInteger=1);

   aSostitutivo.Visible := (FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger in [5,6]);

  if not Assigned(sqStatoAnag.DataSet) then
     sqStatoAnag.DataSet := FDMCommon.qStatoAnag;

  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5) then
  begin
    dxACR.Visible := ivNever;
    dxCercaRef.Visible := ivNever;
    dxSconosciuti.Visible := ivNever;
    dxRefertiMod.Visible := ivNever;
    dxAnagDaInviare.Visible := ivNever;
    dxDuplicatiAnag.Visible := ivNever;
    dxErroriAssociazione.Visible := ivNever;

    dxBarSubItemImmagini.Visible := ivNever;
    dxBarSubItemCreazioneCD.Visible := ivNever;
    ModInternoEsterno.Visible := False;
  end;

  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5) and not (gblSuperUser or gblUserIsAdmin) then
  begin
    dxStoricoAnag.Visible := ivNever;
  end;

end;

procedure TFArchivioReferti.ImmaginiExecute(Sender: TObject);
begin
  RichiamaImmagini(false);
end;

procedure TFArchivioReferti.ImmaginiUpdate(Sender: TObject);
//var
//  nrf: boolean;
begin

{
   if dxPageControl.ActivePage=dxTabArchivio then
      nrf := SituazioneCEIMMAGINI.AsInteger>0
   else if dxPageControl.ActivePage=dxTabReferti then
      nrf := RefertiCEIMMAGINI.AsInteger>0
   else if dxPageControl.ActivePage=cxDuplicati then
      nrf := SitxDuplCEIMMAGINI.AsInteger>0
   else if dxPageControl.ActivePage=dxTabOperazioni then
      nrf := OperazioniCEIMMAGINI.AsInteger>0
   else if dxPageControl.ActivePage=cxSconosciuti then
      nrf := SconosciutiCEIMMAGINI.AsInteger>0
   else if dxPageControl.ActivePage=cxTabRicercaTesto then
      nrf := RicercaInRefertoCEIMMAGINI.AsInteger>0
   else if dxPageControl.ActivePage=cxTabACR then
      nrf := RicercaACRCEIMMAGINI.AsInteger>0
   else
      nrf := ErroriInvioCEIMMAGINI.AsInteger>0;

   Immagini.Enabled := gblViewImmagini and nrf;
}
   Immagini.Enabled := (RecordAttuale<>-1) and
                       gblViewImmagini and
                       Assigned(refData) and (refData.FindField('CEIMMAGINI')<>nil) and (refData.FieldByName('CEIMMAGINI').AsInteger>0);

end;

procedure TFArchivioReferti.RichiamaImmagini(bookmark: boolean);
var
  nrf: boolean;
  pkt: integer;
begin

     if dxPageControl.ActivePage=dxTabArchivio then
     begin
        nrf := SituazioneCEIMMAGINI.AsInteger>0;
        pkt := SituazionePKTRIAGE.AsInteger;
     end
     else if dxPageControl.ActivePage=dxTabReferti then
     begin
        nrf := RefertiCEIMMAGINI.AsInteger>0;
        pkt := RefertiPKTRIAGE.AsInteger;
     end
     else if dxPageControl.ActivePage=cxDuplicati then
     begin
        nrf := SitxDuplCEIMMAGINI.AsInteger>0;
        pkt := SitxDuplPKTRIAGE.AsInteger;
     end
     else if dxPageControl.ActivePage=dxTabOperazioni then
     begin
        nrf := OperazioniCEIMMAGINI.AsInteger>0;
        pkt := OperazioniPKTRIAGE.AsInteger;
     end
     else if dxPageControl.ActivePage=cxSconosciuti then
     begin
        nrf := SconosciutiCEIMMAGINI.AsInteger>0;
        pkt := SconosciutiPKTRIAGE.AsInteger;
     end
     else if dxPageControl.ActivePage=cxTabRicercaTesto then
     begin
        nrf := RicercaInRefertoCEIMMAGINI.AsInteger>0;
        pkt := RicercaInRefertoPKTRIAGE.AsInteger;
     end
     else if dxPageControl.ActivePage=cxTabACR then
     begin
        nrf := RicercaACRCEIMMAGINI.AsInteger>0;
        pkt := RicercaACRPKTRIAGE.AsInteger;
     end
     else begin
        nrf := ErroriInvioCEIMMAGINI.AsInteger>0;
        pkt := ErroriInvioPKTRIAGE.AsInteger;
     end;

     if (nrf) then
        FDMCommon.AccNumber(pkt,bookmark)
     else
        FDMCommon.Vuoto;

end;


destructor TFArchivioReferti.Destroy;
begin

  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5) and not FResetEffettuato and FCustomized then
  begin
    rsPropSaver1.SaveValues;
    GridOperazioni.StoreTorsStorage(TcxrsStorageWriter.CreateNew(name+'.'+GridOperazioni.Name,rsPropSaver1.Storage), true, [{gsoUseFilter,} gsoUseSummary]);
    GridReferti.StoreTorsStorage(TcxrsStorageWriter.CreateNew(name+'.'+GridReferti.Name,rsPropSaver1.Storage), true, [{gsoUseFilter,} gsoUseSummary]);
    GridSituazione.StoreTorsStorage(TcxrsStorageWriter.CreateNew(name+'.'+GridSituazione.Name,rsPropSaver1.Storage), true, [{gsoUseFilter,} gsoUseSummary]);
    GridSitErrori.StoreTorsStorage(TcxrsStorageWriter.CreateNew(name+'.'+GridSitErrori.Name,rsPropSaver1.Storage), true, [{gsoUseFilter,} gsoUseSummary]);
    rsPropSaver1.Storage.Save;
  end;

  xPossibili.Free;

  FDMCommon.edrepTIPO_OP_ANAGRAFICA.Properties.OnEditValueChanged := nil;

  if FDMCommon.ClientPacs then
     FDMCommon.Vuoto;

  if Assigned(FFusione) then
  begin
     FFusione.Free;
     FFusione := nil;
  end;

  lpkt.Free;
  lstato.Free;

  inherited;

end;

procedure TFArchivioReferti.RiapriExecute(Sender: TObject);
var
  TempUM: TAstaUpdateMethod;
begin
 if MsgDlgPos(RS_ConfRiapri, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes then
 begin
    qyRiapri.Parambyname('pktriage').AsInteger := refdata.Fieldbyname('PKTRIAGE').AsInteger;
    qyRiapri.Parambyname('user_id').AsInteger := gblcodutente;
    if not (gblSuperUser or gblUserIsAdmin) then
       qyRiapri.Parambyname('contenuto').AsString := '# and r.tipo_referto_fk<>1';
    qyRiapri.ExecCommit;
   if dxPageControl.ActivePage=dxTabArchivio then
   begin
      Situazione.RefreshRecord;
   end
   else begin
      TempUM := refData.UpdateMethod;
      refData.UpdateMethod := umManual;
      try
        refData.Delete;
      finally
        refData.UpdateMethod := TempUM;
      end;
   end;

 end;
end;

procedure TFArchivioReferti.RiapriUpdate(Sender: TObject);
begin
  Riapri.Enabled := (RecordAttuale<>-1) and
                   (refdata<>nil) and
                   ((refData.FindField('SITE_NAME')=nil) or (refData.Fieldbyname('SITE_NAME').AsString=FDMCommon.Param_TicketSITE_NAME.AsString)) and
                   ((refData.FindField('STATOVISITA')<>nil) and ((refData.Fieldbyname('STATOVISITA').AsInteger in [{160,161,}165,166,170,171,180{,190}]) or ((refData.Fieldbyname('STATOVISITA').AsInteger=190) and (gblSuperUser or gblUserIsAdmin)))) and
                   ((refData.FindField('REPARTI_FK')<>nil) and (refData.Fieldbyname('REPARTI_FK').AsInteger=gblpkrep)) and
                   ( ((gblSuperUser or gblUserIsAdmin) and (gblore_riapri>=0)) or
                    ((refData.FindField('COD_MED_FIRMA')<>nil) and (gblcodUtente=refData.Fieldbyname('COD_MED_FIRMA').AsInteger) and
                     (   ((gblore_riapri<0) and (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=2) and (refData.FindField('LIV_SCR')<>nil) and (refData.FindField('LIV_SCR').IsNull or (refData.FindField('LIV_SCR').AsInteger=0))) or
                         (gblore_riapri=0) or
                         ((gblore_riapri>0) and (refData.FindField('DATA_REFERTO')<>nil) and (HoursBetween(Now(),refData.Fieldbyname('DATA_REFERTO').AsDateTime)<=gblore_riapri))
                     )
                    )
                    );
end;

function TFArchivioReferti.IsFormReady: boolean;
begin
  result := True; //Active;
end;

procedure TFArchivioReferti.LeggiBarCode(var Message: TMessage);
begin
  inherited;
  if BarCodeLetto<>'' then
     SendPortDataToForm(BarCodeLetto, Length(BarCodeLetto));
end;

procedure TFArchivioReferti.LeggiTessera(var Message: TMessage);
begin
  if TesseraLetta.CodiceFiscale<>'' then
  begin
     SendPortDataToForm(TesseraLetta.CodiceFiscale, Length(TesseraLetta.CodiceFiscale));
     TesseraLetta.CodiceFiscale := '';
  end;
end;

procedure TFArchivioReferti.SendPortDataToForm(const s: string; lungh: integer);
var
  xpk: integer;
  tipo: char;
  anno: integer;
  numero: integer;
  barcode: string;
  res: boolean;
begin

  inherited;

  if lungh=0 then exit;
  tipo := s[1];
  barcode := Copy(s,3,lungh-2);
  numero := StrToIntDef(barcode,-1);

	if lungh in [11,12,16,20] then
  begin

     if dxPageControl.ActivePage<>dxTabArchivio then
     begin
        dxBarButtonArchivio.Down := True;
        dxArchivioClick(dxBarButtonArchivio);
     end;

      case lungh of
      20:  begin
             if (FDMCommon.LeggiPostoLavoroTIPO_NR_ARCHIVIO.AsInteger in [0,2]) then
             begin
                qCercaNrArchivio.Parambyname('xanno').Clear;
                anno := -1;
                numero := StrToIntDef(Copy(s,3,9),-1);
                qCercaNrArchivio.Parambyname('nr_archivio').AsInteger := numero;
             end
             else begin
                anno := StrToIntDef(Copy(s,3,4),-1);
                qCercaNrArchivio.Parambyname('xanno').AsInteger := anno;
                numero := StrToIntDef(Copy(s,8,9),-1);
                qCercaNrArchivio.Parambyname('nr_archivio').AsInteger := numero;
             end;
             qCercaNrArchivio.syRefresh;

             if not qCercaNrArchivio.eof then
             begin
               Situazione.Parambyname('pkassistibili').AsInteger := qCercaNrArchivioASSISTIBILI_FK.AsInteger;
               Situazione.syRefresh;
               if (FDMCommon.LeggiPostoLavoroTIPO_NR_ARCHIVIO.AsInteger in [0,2]) then
                  Situazione.Locate('reparti_fk;nr_archivio',VarArrayOf([gblpkrep,numero]),[])
               else
                  Situazione.Locate('reparti_fk;anno;nr_archivio',VarArrayOf([gblpkrep,anno,numero]),[]);
               SchedaPaziente.Parambyname('pkassistibili').AsInteger := qCercaNrArchivioASSISTIBILI_FK.AsInteger;
               SchedaPaziente.syRefresh;
             end
             else begin
               MsgDlg( RS_NrArchivioNonTrovato, '', ktError, [kbOk], dfFirst);
             end;
           end;

    11,12:  begin
          if (tipo in ['T',' ','@','A']) then
          begin
            FCercaBarCode := TFCercaBarCode.Create(nil);
            try
            if tipo='A' then
            begin
              FCercaBarCode.CercaImpegnativa.Parambyname('pkimpegnative').AsInteger := numero;
              FCercaBarCode.CercaImpegnativa.open;
              if FCercaBarCode.CercaImpegnativa.IsEmpty then
              begin
                 MsgDlg( format(RS_AccNonTrovata,[numero]), '', ktError, [kbOk], dfFirst);
                 xpk := -1;
              end
              else
                 xpk := FCercaBarCode.CercaImpegnativaASSISTIBILI_FK.AsInteger;
            end
            else begin
              if FCercaBarCode.CercaSTUDY(barcode) then
              begin
                 xpk := FCercaBarCode.CercaRISStudyASSISTIBILI_FK.AsInteger;
                 numero := FCercaBarCode.CercaRISStudyPKTRIAGE.AsInteger;
              end
              else
                 xpk := -1;
            end;
            finally
               FCercaBarCode.Release;
               FCercaBarCode := nil;
            end;
            res := (xpk>=0);
            if res then
            begin
               Situazione.Parambyname('pkassistibili').AsInteger := xpk;
               Situazione.syRefresh;
               if tipo='A' then
                  res := Situazione.Locate('impegnative_fk',numero,[])
               else
                  res := Situazione.Locate('ris_study_euid',FDMCommon.syIntStr(barcode),[]);
               if res then
               begin
                 SchedaPaziente.Parambyname('pkassistibili').AsInteger := xpk;
                 SchedaPaziente.syRefresh;
                 GridSituazione.DataController.CheckFocusedSelected;
                 PostMessage( Handle, SY_REFRESHFORM, 0, 0);
               end
            end;
//            if not res then
//               MsgDlg( format(RS_RISSTUDYNonTrovato,[FDMCommon.syIntStr(barcode)]), '', ktError, [kbOk], dfFirst);
          end;
      end;

      16:  begin
               RicercaCF(s);
           end;
      end;

  end;

end;


procedure TFArchivioReferti.OperazioniBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('data_dal').AsDateTime := dxDataAccDal.EditValue;
  Sender.Parambyname('data_al').AsDateTime := dxDataAccAl.EditValue;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFArchivioReferti.dxDataAccCloseUp(Sender: TObject);
begin
  Operazioni.syRefresh;
end;

procedure TFArchivioReferti.GridOperazioniDblClick(Sender: TObject);
begin
  Immagini_e_Referti;
end;

function TFArchivioReferti.GridEsamiDataControllerDataModeControllerDetailIsCurrentQuery(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant): Boolean;
begin
  with (ADataSet as TAstaClientDataset) do
    Result := ParamByName('triage_fk').Value = AMasterDetailKeyValues;

end;

procedure TFArchivioReferti.GridEsamiDataControllerDataModeControllerDetailFirst(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
begin
  FDMCommon.DetailFirst(ADataSet,AMasterDetailKeyFieldNames,AMasterDetailKeyValues,AReopened);
end;

procedure TFArchivioReferti.OperazioniAfterQuery(
  Sender: TAstaBaseClientDataSet);
begin
  RefEsami.Parambyname('triage_fk').AsInteger := -1;
  RefEsami.syRefresh;

end;

procedure TFArchivioReferti.cxGridPopupRefertiPopupMenus0Popup(
  ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X, Y: Integer);
begin
  dxBarPopReferti.Popup(X, Y);
end;

procedure TFArchivioReferti.aStampaCartellaUpdate(Sender: TObject);
begin
	aStampaCartella.Enabled := Situazione.Active and not Situazione.IsEmpty;
end;

procedure TFArchivioReferti.aStampaCartellaExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
begin

    if FDMCommon.dxPrintDialog1.Execute then
    begin

       dxComponentPrinterEsamiCartella.ReportTitle.Text := 'Nominativo: '+SchedaPazienteCOGNOME.AsString + ' ' + SchedaPazienteNOME.AsString + #13 + #10 +
                                                      'Codice: '+SchedaPazientePKASSISTIBILI.AsString+#13+#10 +
//                                                      'Luogo nascita: '+SchedaPazienteDES_COMNASC.AsString+#13+#10 +
                                                      'Data nascita: '+ DateToStr(SchedaPazienteDATA_NASCITA.AsDateTime);

       if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
          dxComponentPrinter1.Preview(true,dxComponentPrinterEsamiCartella)
       else begin
          AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
          dxComponentPrinter1.Print(false,@AData,dxComponentPrinterEsamiCartella);
       end;
    end;

end;

procedure TFArchivioReferti.ApriTutteExecute(Sender: TObject);
begin
   if dxPageControl.ActivePage=dxTabOperazioni then
    	 GridOperazioni.ViewData.Expand(False)
   else if dxPageControl.ActivePage=dxTabReferti then
    	 GridReferti.ViewData.Expand(False)
   else if dxPageControl.ActivePage=dxTabArchivio then
	    GridSituazione.ViewData.Expand(False)
   else if dxPageControl.ActivePage=cxTabRicercaTesto then
    	 cxGridDBRicercaReferti.ViewData.Expand(False)
   else if dxPageControl.ActivePage=cxTabACR then
    	 cxGridDBRefACR.ViewData.Expand(False);
end;

procedure TFArchivioReferti.ChiudiTutteExecute(Sender: TObject);
begin
   if dxPageControl.ActivePage=dxTabOperazioni then
    	 GridOperazioni.ViewData.Collapse(False)
   else if dxPageControl.ActivePage=dxTabReferti then
    	 GridReferti.ViewData.Collapse(False)
   else if dxPageControl.ActivePage=dxTabArchivio then
	    GridSituazione.ViewData.Collapse(False)
   else if dxPageControl.ActivePage=cxTabRicercaTesto then
    	 cxGridDBRicercaReferti.ViewData.Collapse(False)
   else if dxPageControl.ActivePage=cxTabACR then
    	 cxGridDBRefACR.ViewData.Collapse(False);
end;

procedure TFArchivioReferti.ApriTutteUpdate(Sender: TObject);
begin
   if dxPageControl.ActivePage=dxTabOperazioni then
      ApriTutte.Enabled := not Operazioni.IsEmpty
   else if dxPageControl.ActivePage=dxTabReferti then
      ApriTutte.Enabled := not Referti.IsEmpty
   else
      ApriTutte.Enabled := not Situazione.IsEmpty;

end;

procedure TFArchivioReferti.ChiudiTutteUpdate(Sender: TObject);
begin
   if dxPageControl.ActivePage=dxTabOperazioni then
      ChiudiTutte.Enabled := not Operazioni.IsEmpty
   else if dxPageControl.ActivePage=dxTabReferti then
      ChiudiTutte.Enabled := not Referti.IsEmpty
   else
      ChiudiTutte.Enabled := not Situazione.IsEmpty;

end;

procedure TFArchivioReferti.ModificaAnagraficaUpdate(Sender: TObject);
var
  xrefData: TAstaClientDataset;

begin

  if dxPageControl.ActivePage=cxAnagrafica then
       xrefData := StoricoAnag
  else if dxPageControl.ActivePage=dxTabArchivio then
       xrefData := SchedaPaziente
  else if dxPageControl.ActivePage=cxNuoveAnagrafiche then
       xrefData := NuoveAnag
  else if dxPageControl.ActivePage=cxDuplicati then
       xrefData := Duplicati
  else if dxPageControl.ActivePage=cxModSuReferti then
       xrefData := RefertiModificati
  else
       xrefData := nil;

  if not Assigned(xrefData) or xrefData.IsEmpty then
     ModificaAnagrafica.Enabled := false
  else if dxPageControl.ActivePage=dxTabArchivio then
  begin
     ModificaAnagrafica.Enabled := not SchedaPaziente.Eof and {(RecordAttuale<>-1) and} ((SchedaPazientePKASSISTIBILI.AsInteger>0) or gblSuperUser) and (FDMCommon.LeggiPostoLavoroANAG_SCRITTURA.AsInteger=1){and not (SchedaPazienteSAN_IDENT.AsInteger=3)};
  end
  else
     ModificaAnagrafica.Enabled := (RecordAttuale<>-1) and (FDMCommon.LeggiPostoLavoroANAG_SCRITTURA.AsInteger=1);

end;

procedure TFArchivioReferti.ModificaAnagraficaExecute(Sender: TObject);
var
  pka: integer;
begin

    if dxPageControl.ActivePage=cxAnagrafica then
        pka := StoricoAnagASSISTIBILI_FK.AsInteger
    else if dxPageControl.ActivePage=dxTabArchivio then
        pka := SchedaPazientePKASSISTIBILI.AsInteger
    else if dxPageControl.ActivePage=cxDuplicati then
        pka := DuplicatiPKASSISTIBILI.AsInteger
    else if dxPageControl.ActivePage=cxNuoveAnagrafiche then
        pka := NuoveAnagPKASSISTIBILI.AsInteger
    else if dxPageControl.ActivePage=cxModSuReferti then
        pka := RefertiModificatiPKASSISTIBILI.AsInteger
    else
        exit;

    if not FDMCommon.LockRecord( pka,gblCodUtente,2 ) then
       exit;

    FAnagrafica := TFAnagrafica.Create(nil);
    try
       FAnagrafica.Assistibili.Parambyname('pkassistibili').AsInteger := pka;
       FAnagrafica.Assistibili.open;
//       FAnagrafica.Assistibili.Edit;
//       if daAccettazione then
//          FAnagrafica.AssistibiliSAN_IDENT.AsInteger := 2;           // anagrafica convalidata
       FAnagrafica.CheckNascita := (FDMCommon.LeggiPostoLavoroCHECK_NASCITA.AsInteger=1);
       FAnagrafica.CheckResidenza := (FDMCommon.LeggiPostoLavoroCHECK_RESIDENZA.AsInteger=1);

       if FAnagrafica.ShowModal=mrOk then
       begin
{          if dxPageControl.ActivePage=cxAnagrafica then
              pka := StoricoAnagASSISTIBILI_FK.AsInteger
          else} if dxPageControl.ActivePage=dxTabArchivio then
              SchedaPaziente.syRefresh
          else if dxPageControl.ActivePage=cxDuplicati then
              Duplicati.RefreshRecord
          else if dxPageControl.ActivePage=cxNuoveAnagrafiche then
              NuoveAnag.RefreshRecord;

       end;
    finally
       FAnagrafica.Free;
       FAnagrafica := nil;
       FDMCommon.UnLockRecord(pka,gblCodUtente,2);
    end;

end;

procedure TFArchivioReferti.DoShow;
//var
//  xmanno: string;
//  xmnumero: string;
//  xmlength: Integer;
begin

    inherited;

    rsPropSaver1.Storage.Load;
    rsPropSaver1.LoadValues;
    GridOperazioni.RestoreFromrsStorage(TcxrsStorageReader.CreateNew(name+'.'+GridOperazioni.Name,rsPropSaver1.Storage), false, false, [{gsoUseFilter,} {gsoUseSummary}]);
    GridReferti.RestoreFromrsStorage(TcxrsStorageReader.CreateNew(name+'.'+GridReferti.Name,rsPropSaver1.Storage), false, false, [{gsoUseFilter,} {gsoUseSummary}]);
    GridSituazione.RestoreFromrsStorage(TcxrsStorageReader.CreateNew(name+'.'+GridSituazione.Name,rsPropSaver1.Storage), false, false, [{gsoUseFilter,} {gsoUseSummary}]);
    GridSitErrori.RestoreFromrsStorage(TcxrsStorageReader.CreateNew(name+'.'+GridSitErrori.Name,rsPropSaver1.Storage), false, false, [{gsoUseFilter,} {gsoUseSummary}]);

    GridOperazioniLIV_SCR.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=2);
    GridOperazioniLIV_SCR.VisibleForCustomization := GridOperazioniLIV_SCR.Visible;
    GridOperazioniNUMERO_FIRMA.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=2);
    GridOperazioniNUMERO_FIRMA.VisibleForCustomization := GridOperazioniNUMERO_FIRMA.Visible;

    GridOperazioniSERVIZIO.Visible := (FDMCommon.LeggiPostoLavoroCHK_SLITTA_REP.AsInteger=1);
//    GridOperazioniRIS_STUDY_EUID.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=3);

    GridSituazioneNR_ARCH.Visible := (FDMCommon.LeggiPostoLavoroVIEW_NR_ARCHIVIO.AsInteger>0);
    GridSituazioneNR_ARCH.VisibleForCustomization := not (FDMCommon.LeggiPostoLavoroVIEW_NR_ARCHIVIO.AsInteger=0);
    aNuovoNrArchivio.Visible := (FDMCommon.LeggiPostoLavoroVIEW_NR_ARCHIVIO.AsInteger>0);

{
    if (FDMCommon.LeggiPostoLavoroTIPO_NR_ARCHIVIO.AsInteger in [0,2]) then
       GridSituazioneNR_ARCHIVIO.RepositoryItem := FDMCommon.edrepNR_ARCHIVIO
    else
       GridSituazioneNR_ARCHIVIO.RepositoryItem := FDMCommon.edrepANNO_E_NR_ARCHIVIO;
}
(*
    xmlength := 0;
    if (FDMCommon.LeggiPostoLavoroTIPO_NR_ARCHIVIO.AsInteger in [1,3]) then
    begin
       if FDMCommon.LeggiPostoLavoroFMT_ANNO.IsNull then
          xmanno := DupeString('\d',4) + '/'
       else
          xmanno := DupeString('\d',Length(FDMCommon.LeggiPostoLavoroFMT_ANNO.AsString)) + '/';
       xmlength := (Length(xmanno)-1) div 2;
    end
    else
       xmanno := '';

    if FDMCommon.LeggiPostoLavoroFMT_NUMERO.IsNull then
       xmnumero := DupeString('\d',9)
    else
       xmnumero := DupeString('\d',Length(FDMCommon.LeggiPostoLavoroFMT_NUMERO.AsString));
    xmlength := xmlength + (Length(xmnumero) div 2);
    TcxMaskEditProperties(GridSituazioneNR_ARCHIVIO.Properties).EditFormat := xmanno+xmnumero;
*)
{
    TcxMaskEditProperties(GridSituazioneNR_ARCHIVIO.RepositoryItem).EditMask := xmanno+xmnumero;
    TcxMaskEditProperties(GridSituazioneNR_ARCHIVIO.RepositoryItem).MaxLength := xmlength;
}
    GridSituazioneNOTE_PRENO.Visible := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);

    GridSituazioneLIV_SCR.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=2);
    GridSituazioneLIV_SCR.VisibleForCustomization := GridSituazioneLIV_SCR.Visible;
    GridSituazioneNUMERO_FIRMA.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=2);
    GridSituazioneNUMERO_FIRMA.VisibleForCustomization := GridSituazioneNUMERO_FIRMA.Visible;

    GridSituazione.OptionsBehavior.ImmediateEditor := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1) or (FDMCommon.LeggiPostoLavoroVIEW_NR_ARCHIVIO.AsInteger>0);
    GridSituazione.OptionsData.Editing := ((FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1) or (FDMCommon.LeggiPostoLavoroVIEW_NR_ARCHIVIO.AsInteger>0)) and (gblSuperUser or gblUserIsAdmin);
    GridSituazione.OptionsSelection.CellSelect := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1) or (FDMCommon.LeggiPostoLavoroVIEW_NR_ARCHIVIO.AsInteger>0);

    GridSituazioneSERVIZIORICHIEDENTE.Visible := (FDMCommon.LeggiPostoLavoroCHK_SLITTA_REP.AsInteger=1);

    GridOperazioniNOTE_PRENO.Visible := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);
    GridOperazioni.OptionsBehavior.ImmediateEditor := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);
    GridOperazioni.OptionsData.Editing := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);
    GridOperazioni.OptionsSelection.CellSelect := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);

    GridRefertiNOTE_PRENO.Visible := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);

    GridRefertiLIV_SCR.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=2);
    GridRefertiLIV_SCR.VisibleForCustomization := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=2);
    GridRefertiNUMERO_FIRMA.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=2);
    GridRefertiNUMERO_FIRMA.VisibleForCustomization := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=2);

    GridRefertiSERVIZIO.Visible := (FDMCommon.LeggiPostoLavoroCHK_SLITTA_REP.AsInteger=1);

    GridReferti.OptionsBehavior.ImmediateEditor := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);
    GridReferti.OptionsData.Editing := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);
    GridReferti.OptionsSelection.CellSelect := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);

//    GridRefertiRIS_STUDY_EUID.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=3);

    GridSituazioneRIS_STUDY_EUID.Options.Editing := gblSuperUser;

    if (FDMCommon.LeggiPostoLavoroVIEW_NR_ARCHIVIO.AsInteger=0) or (FDMCommon.LeggiPostoLavoroTIPO_NR_ARCHIVIO.AsInteger in [0,2]) then
        dxAnnoArch.Visible := ivNever
    else
        dxAnnoArch.Text := IntToStr(YearOf(Date()));

    if (FDMCommon.LeggiPostoLavoroVIEW_NR_ARCHIVIO.AsInteger=0) then
        dxNrArchivio.Visible := ivNever;

    if FShowOperazioni then
    begin
      if dxPageControl.ActivePage<>dxTabArchivio then
         dxPageControl.ActivePage := dxTabArchivio;

      dxPageControlChange(self);
{
      refData := Situazione;
      refGrid := GridSituazione;
      refDettagli := GridEsami;

      if not Operazioni.Active then
      begin
        Operazioni.Parambyname('data_acc').AsDateTime := dxDataAcc.EditValue;
        Operazioni.open;
      end;

      ActiveControl := GridSituazione.Site;
      GridSituazione.Controller.GotoFirst;
}

    end;

    aRepositorySISS.Visible := (FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger in [3,4,5,6]);
    if FDMCommon.cdMaster.IsEmpty then
    begin
       dxCreaCD.Down := false;
       dxCreaCD.Enabled := False;

    end;

end;

procedure TFArchivioReferti.RiportaDaEseguireExecute(Sender: TObject);
begin
 if MsgDlgPos(RS_Msg_ConfRitornaEsecuzione, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes then
 begin
   FDMCommon.RitornaDiagn.Parambyname('pstatovisita').AsInteger := 120;
   FDMCommon.RitornaDiagn.Parambyname('ppktriage').AsInteger := refData.Fieldbyname('PKTRIAGE').AsInteger;
   FDMCommon.RitornaDiagn.Parambyname('puser_id').AsInteger := gblcodutente;
   FDMCommon.RitornaDiagn.ExecSQL;

   refData.RefreshRecord;
 end;

end;

procedure TFArchivioReferti.RiportaDaEseguireUpdate(Sender: TObject);
begin

  RiportaDaEseguire.Enabled := (RecordAttuale<>-1) and
                              (refData<>nil) and (refData.FindField('STATOVISITA')<>nil) and
                              ((refData.FindField('SITE_NAME')=nil) or (refData.Fieldbyname('SITE_NAME').AsString=FDMCommon.Param_TicketSITE_NAME.AsString)) and
                              not refData.IsEmpty and (gblIsMedico or gblUserIsAdmin or gblSuperUser)
                              and (refData.Fieldbyname('STATOVISITA').AsInteger in [130,198])
                              and (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,4,5,6]);

end;

procedure TFArchivioReferti.dxPageControlChange(Sender: TObject);
begin
   if dxPageControl.ActivePage=dxTabOperazioni then
   begin
      refData := Operazioni;
      refGrid := GridOperazioni;
      refDettagli := GridOperazioniEsami;
      if not Operazioni.Active then
      begin
        Operazioni.Parambyname('data_dal').AsDateTime := dxDataAccDal.EditValue;
        Operazioni.Parambyname('data_al').AsDateTime := dxDataAccAl.EditValue;
        Operazioni.open;
      end;
   end
   else if dxPageControl.ActivePage=dxTabReferti then
   begin
      refData := Referti;
      refGrid := GridReferti;
      refDettagli := cxGridRefertiEsami;
      if not Referti.Active then
      begin
        Referti.Parambyname('data_referto').AsDateTime := dxDataRefer.EditValue;
        Referti.open;
        GridReferti.ViewData.Collapse(False);
      end;
   end
   else if dxPageControl.ActivePage=dxTabArchivio then
   begin
      refData := Situazione;
      refGrid := GridSituazione;
      refDettagli := GridEsami;
      if not SitEsami.Active then
      begin
        SitEsami.Parambyname('triage_fk').AsInteger := -1;
        SitEsami.open;
      end;
      if not SchedaPaziente.Active then
      begin
        SchedaPaziente.ParamByName('pkassistibili').Clear;
        SchedaPaziente.Active := false;
        SchedaPaziente.QBEMode := true;
        SchedaPaziente.Active := true;
      end;
      PostMessage(Handle,SY_FOCUSPRIMOCAMPO,0,LongInt(cxCognome));
   end
   else if dxPageControl.ActivePage=cxTabLogErrori then
   begin
      refData := ErroriInvio;
      refGrid := GridSitErrori;
      refDettagli := GridErrEsami;
      ErroriInvio.syrefresh;
   end
   else if dxPageControl.ActivePage=cxPrenotazioni then
   begin
      refData := Prenotazioni;
      refGrid := GridPrenotazioni;
      refDettagli := GridPrenotazioniEsami;
      if not Prenotazioni.Active then
      begin
         Prenotazioni.syrefresh;
         PrenoEsami.syrefresh;
      end;
   end
   else if dxPageControl.ActivePage=cxAnagrafica then
   begin
      refData := nil;
      refGrid := GridLogStorico;
      refDettagli := nil;
   end
   else if dxPageControl.ActivePage=cxDuplicati then
   begin
      refData := nil;
      refGrid := cxGridDuplicatiDBTableView1;
      refDettagli := cxGridDuplicatiDBTableView2;
      if not Duplicati.Active then
      begin
//         Duplicati.syrefresh;
//         cxGridDuplicatiDBTableView1.Controller.GotoFirst;
         SitxDupl.Parambyname('assistibili_fk').AsInteger := -1;
         SitxDupl.syRefresh;
      end;
   end
   else if dxPageControl.ActivePage=cxNuoveAnagrafiche then
   begin
      refData := nil;
      refGrid := cxNuoveAnagDBTableView1;
      refDettagli := nil;
      if not NuoveAnag.Active then
      begin
         NuoveAnag.syrefresh;
         cxNuoveAnagDBTableView1.Controller.GotoFirst;
      end;
   end
   else if dxPageControl.ActivePage=cxModSuReferti then
   begin
      refData := RefertiModificati;
      refGrid := cxGridRefModificatiDB;
      refDettagli := nil;
   end
   else if dxPageControl.ActivePage=cxSconosciuti then
   begin
      refData := Sconosciuti;
      refGrid := cxGridSconosciutiDBSconosciuti;
      refDettagli := nil;
      Sconosciuti.open;
   end
   else if dxPageControl.ActivePage=cxTabRicercaTesto then
   begin
      refData := RicercaInReferto;
      refGrid := cxGridDBRicercaReferti;
      refDettagli := cxGridDBEsamiperRicerca;
      if not Esami.Active then
      begin
        Esami.Parambyname('triage_fk').AsInteger := -1;
        Esami.open;
      end;
   end
   else if dxPageControl.ActivePage=cxTabACR then
   begin
      refData := RicercaACR;
      refGrid := cxGridDBRefACR;
      refDettagli := cxGridDBEsamiperACR;
//      dxAnatomical.Text := '';
//      dxPatological.Text := '';
      if not Esami.Active then
      begin
        Esami.Parambyname('triage_fk').AsInteger := -1;
        Esami.open;
      end;
   end
   else begin
      refData := nil;
      refGrid := nil;
      refDettagli := nil;
   end;

end;

procedure TFArchivioReferti.SchedaPazienteBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFArchivioReferti.dxDataReferCloseUp(Sender: TObject);
begin
  Referti.Parambyname('data_referto').AsDateTime := dxDataRefer.EditValue;
  Referti.syRefresh;

end;

procedure TFArchivioReferti.RefertiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  sender.Parambyname('lingua').AsString := gbllingua;

end;

procedure TFArchivioReferti.RefertiAfterQuery(
  Sender: TAstaBaseClientDataSet);
begin

  RefEsami.Parambyname('triage_fk').AsInteger := -1;
  RefEsami.syRefresh;

end;

procedure TFArchivioReferti.cxGridPopupOperazioniPopupMenus0Popup(
  ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X, Y: Integer);
begin
  dxBarPopReferti.Popup(X, Y);
end;

procedure TFArchivioReferti.AssociaPazientiExecute(Sender: TObject);
var
  pka,trovato: integer;
begin

  FRicAssistito := TFRicAssistito.Create(nil);
  try

   if (gblSuperUser or gblUserIsAdmin) then
     FRicAssistito.QRicerca.Parambyname('xsan_ident').AsString := '#'
   else
     FRicAssistito.QRicerca.Parambyname('xsan_ident').AsString := '# (a.SAN_IDENT in (1,2,4,5)) and';

   FRicAssistito.QRicerca.Parambyname('data_decesso').AsString := '#';
   FRicAssistito.QRicerca.Parambyname('Esclusione').AsString := format('# a.pkassistibili<>%d and',[SchedaPazientePKASSISTIBILI.AsInteger]);

   FRicAssistito.QRicerca.Active := false;
   FRicAssistito.QRicerca.QBEMode := true;
   FRicAssistito.QRicerca.Active := true;
   trovato := FRicAssistito.ShowModal;

   pka := FRicAssistito.QRicercaPKASSISTIBILI.AsInteger;

   finally
      FRicAssistito.Free;
      FRicAssistito := nil;
   end;

   if trovato=mrOk then
   begin
     FFusione := TFFusione.Create(self);

     FFusione.refer := self;
     FFusione.qDuplicati.Parambyname('pkassistibili').AsInteger := pka;
     FFusione.qDuplicati.syRefresh;
     FFusione.sitDuplicati.Parambyname('assistibili_fk').AsInteger := pka;
     FFusione.sitDuplicati.syRefresh;

     FFusione.Show;

   end;

end;

procedure TFArchivioReferti.AssociaPazientiUpdate(Sender: TObject);
begin
  AssociaPazienti.Enabled := not SchedaPaziente.Eof {and not (SchedaPazienteSAN_IDENT.AsInteger=3)} and ((SchedaPazientePKASSISTIBILI.AsInteger>0))
                             and SchedaPazienteASSISTIBILI_FK.IsNull
                             and (RecordAttuale<>-1)
                             and (gblUserIsAdmin or gblSuperUser or gblEstrazioneDati {or (gblSpostaEsami and gblViewReferti and gblViewImmagini)})  
{                             and (refdata<>nil) and
                             ((refData.FindField('SITE_NAME')=nil) or (refData.Fieldbyname('SITE_NAME').AsString=FDMCommon.Param_TicketSITE_NAME.AsString))};
end;

procedure TFArchivioReferti.GridOperazioniEsamiDataControllerDataModeControllerDetailFirst(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
begin
  FDMCommon.DetailFirst(ADataSet,AMasterDetailKeyFieldNames,AMasterDetailKeyValues,AReopened);
end;

function TFArchivioReferti.GridOperazioniEsamiDataControllerDataModeControllerDetailIsCurrentQuery(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant): Boolean;
begin
  result := FDMCommon.DetailIsCurrentQuery(ADataSet,AMasterDetailKeyFieldNames,AMasterDetailKeyValues);
end;

procedure TFArchivioReferti.cxGridRefertiEsamiDataControllerDataModeControllerDetailFirst(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
begin
  FDMCommon.DetailFirst(ADataSet,AMasterDetailKeyFieldNames,AMasterDetailKeyValues,AReopened);
end;

function TFArchivioReferti.cxGridRefertiEsamiDataControllerDataModeControllerDetailIsCurrentQuery(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant): Boolean;
begin
  result := FDMCommon.DetailIsCurrentQuery(ADataSet,AMasterDetailKeyFieldNames,AMasterDetailKeyValues);
end;

procedure TFArchivioReferti.RadiologicoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_RETURN) and (Radiologico.CurText<>'') then
  begin
     if FDMCommon.LeggiPostoLavoroPAD_ACCNR.AsInteger>0 then
        SendPortDataToForm('T '+format('%'+FDMCommon.LeggiPostoLavoroPAD_ACCNR.AsString+'.'+FDMCommon.LeggiPostoLavoroPAD_ACCNR.AsString+'d',[StrToIntDef(Radiologico.CurText,0)]) , 12)
     else
        SendPortDataToForm( LeftStr('T '+Radiologico.CurText+StringOfChar(' ', 10),11) , 11 );
  end;
end;

procedure TFArchivioReferti.RiattivaExecute(Sender: TObject);
begin
 if MsgDlgPos(RS_ConfRecupero, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes then
 begin
   qyRecupera.Parambyname('pktriage').AsInteger := refdata.Fieldbyname('PKTRIAGE').AsInteger;
   qyRecupera.Parambyname('user_id').AsInteger := gblcodutente;
   qyRecupera.ExecCommit;
   if dxPageControl.ActivePage=dxTabArchivio then
   begin
      Situazione.RefreshRecord;
   end
   else begin
      refData.RefreshRecord;
   end;

 end;

end;

procedure TFArchivioReferti.RiattivaUpdate(Sender: TObject);
begin
  Riattiva.Enabled :=  (RecordAttuale<>-1) and
                       (FDMCommon.LeggiPostoLavoroCHK_ABILITA_RIATTIVA.AsInteger=1) and
                       (refData<>nil) and (refData.FindField('STATOVISITA')<>nil) and
                       ((refdata.Fieldbyname('STATOVISITA').AsInteger=0) or (refdata.Fieldbyname('STATOVISITA').AsInteger>=2000));
end;

procedure TFArchivioReferti.GridErrEsamiDataControllerDataModeControllerDetailFirst(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
begin
  FDMCommon.DetailFirst(ADataSet,AMasterDetailKeyFieldNames,AMasterDetailKeyValues,AReopened);
end;

function TFArchivioReferti.GridErrEsamiDataControllerDataModeControllerDetailIsCurrentQuery(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant): Boolean;
begin
  result := FDMCommon.DetailIsCurrentQuery(ADataSet,AMasterDetailKeyFieldNames,AMasterDetailKeyValues);
end;

procedure TFArchivioReferti.ErroriInvioBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('data_err').AsDateTime := dxDataErrori.EditValue;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  sender.Parambyname('lingua').AsString := gbllingua;  
end;

procedure TFArchivioReferti.dxDataErroriCloseUp(Sender: TObject);
begin
  ErroriInvio.syrefresh;
end;

procedure TFArchivioReferti.ElencoErroriExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
begin

  try
//    cxGridErrori.Visible := false;
//    GridSitErrori.Styles.StyleSheet := FDMCommon.cxGridTableViewForm;

    cxGridErroriLevel3.Visible := false;

    if FDMCommon.dxPrintDialog1.Execute then
    begin
       if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
          dxComponentPrinter1.Preview(true,dxComponentPrinterErrori)
       else begin
          AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
          dxComponentPrinter1.Print(false,@AData,dxComponentPrinterErrori);
       end;
    end;

  finally
     cxGridErroriLevel3.Visible := true;
  end;

end;

procedure TFArchivioReferti.AnnullaAnagraficaExecute(Sender: TObject);
begin
  if MsgDlg(RS_Anag_Msg_ConfCanc, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes then
  begin
{
     SchedaPaziente.Edit;
     SchedaPazienteSAN_IDENT.AsInteger := 3;
     SchedaPazienteUSER_ID.AsInteger := gblCodUtente;
     SchedaPaziente.Post;
}
     AnnullaAnag.Parambyname('pkassistibili').AsInteger := NuoveAnagPKASSISTIBILI.AsInteger;
     AnnullaAnag.Parambyname('user_id').AsInteger := gblCodUtente;
     AnnullaAnag.ExecCommit;

  end;

end;

procedure TFArchivioReferti.AnnullaAnagraficaUpdate(Sender: TObject);
begin
  AnnullaAnagrafica.Enabled := (gblSuperUser or gblUserIsAdmin) and
                              not SchedaPaziente.Eof {and Situazione.IsEmpty}
                              and not (SchedaPazienteSAN_IDENT.AsInteger=3)
                              and (FDMCommon.LeggiPostoLavoroANAG_SCRITTURA.AsInteger=1);
end;

procedure TFArchivioReferti.ModificaAccettazioneExecute(Sender: TObject);
var
  xnr: integer;
begin

 xnr := refData.Fieldbyname('IMPEGNATIVE_FK').AsInteger;
 if not FDMCommon.LockRecord(xnr,gblCodUtente,3) then
    exit;

 try
 if (refData.Fieldbyname('PROVENIENZA').AsString='E') then
    CorreggiImpegnativa
 else if (refData.FieldByName('TIPO_ATTIVITA_FK').AsString=FDMCommon.LeggiPostoLavoroTIPO_ATT_SALA_OP.AsString) then
    ModificaSalaOp
 else
    ModificaAccInterno;

 finally
    FDMCommon.UnLockRecord(xnr,gblCodUtente,3);
 end;

end;

procedure TFArchivioReferti.ModificaSalaOp;
var
  res: integer;
begin
{$IFNDEF MEDICORNER}
  FDatiSalaOP := TFDatiSalaOP.Create(nil);
  try

     FDatiSalaOP.ProxStatoVisita := 1000; // refData.Fieldbyname('STATOVISITA').AsInteger;
     FDatiSalaOP.StatoLancio := 120;
     FDatiSalaOP.Accettazione.Parambyname('pkimpegnative').AsInteger := refData.Fieldbyname('IMPEGNATIVE_FK').AsInteger;
     FDatiSalaOP.Accettazione.open;
     FDatiSalaOP.Accettazione.Edit;
//     FDatiSalaOP.xoggi := dxData.EditValue;

     res := FDatiSalaOP.ShowModal;
     if (res in [mrOk,mrRetry]) then
     begin
        refData.RefreshRecord;
     end;

  finally
     FDatiSalaOP.Free;
     FDatiSalaOP := nil;
  end;
{$ENDIF}
end;

procedure TFArchivioReferti.ModificaAccInterno( tp: char );
var
  res: integer;
begin
{$IFNDEF MEDICORNER}
  FDatiAccDiagn := TFDatiAccDiagn.Create(nil);
{ -- filtrato per modifica interni
  xPossibili.Filtered := false;
  xPossibili.Filter := format('SERVIZI_FK = %d',[refData.Fieldbyname('DIAGNOSTICA_FK').AsInteger]);
  xPossibili.Filtered := true;
{}
  try

     FDatiAccDiagn.StatoLancio := 12;
     FDatiAccDiagn.ProxStatoVisita := 1000; // refData.Fieldbyname('STATOVISITA').AsInteger;
     FDatiAccDiagn.xPossibili := xPossibili;
//     FDatiAccDiagn.Esami := FDMCommon.FiltraEsami(xPossibili);
     FDatiAccDiagn.xDiag := refData.Fieldbyname('DIAGNOSTICA_FK').AsInteger; //0;
//     FDatiAccDiagn.xDiagDescr := '';
     FDatiAccDiagn.xOra_Inizio := 0;
//     FDatiAccDiagn.xReferAcc := self;

     FDatiAccDiagn.Accettazione.Parambyname('pkimpegnative').AsInteger := refData.Fieldbyname('IMPEGNATIVE_FK').AsInteger;
     FDatiAccDiagn.Accettazione.open;
     FDatiAccDiagn.Accettazione.Edit;

     case tp of
     'I':
       begin
         if (FDMCommon.LeggiPostoLavoroCHK_SLITTA_REP.AsInteger=0) then
         begin
           if not VarIsNull(gblpkrepps) then
           begin
             FDMCommon.LkReparti.Filtered := false;
             FDMCommon.LkReparti.Filter   := format('PKREPARTI <> %d',[gblpkrepps]);
             FDMCommon.LkReparti.Filtered := true;
           end;
         end;
         FDatiAccDiagn.AccettazioneOSP_RICH.AsString := gblospedale;
         FDatiAccDiagn.AccettazioneREPARTO_RICH_FK.Clear;
         FDatiAccDiagn.AccettazioneSERVIZIO_RICH_FK.Clear;
//         FDatiAccDiagn.AccettazioneTIPO_ATTIVITA_FK.AsString := 'I';
         FDatiAccDiagn.AccettazionePROVENIENZA.AsString := 'I';
         FDatiAccDiagn.Prestazioni.open;
         FDatiAccDiagn.RicalcolaTotale;
       end;
     'P':
       begin
         if (FDMCommon.LeggiPostoLavoroCHK_SLITTA_REP.AsInteger=0) then
         begin
           FDMCommon.LkReparti.Filtered := false;
           FDMCommon.LkReparti.Filter   := format('PKREPARTI = %d',[gblpkrepps]);
           FDMCommon.LkReparti.Filtered := true;
         end;
         FDatiAccDiagn.AccettazioneOSP_RICH.AsString := gblospedale;
         FDatiAccDiagn.AccettazioneREPARTO_RICH_FK.AsInteger := gblpkrepps;
         if not VarIsNull(gblpkservps) then
         begin
            FDatiAccDiagn.AccettazioneSERVIZIO_RICH_FK.AsInteger := gblpkservps;
            FDatiAccDiagn.AccettazioneTIPO_ATTIVITA_FK.AsString := 'P';  // p.s.
         end;
         FDatiAccDiagn.AccettazionePROVENIENZA.AsString := 'P';
//         FDatiAccDiagn.AccettazioneURGENZA.AsInteger := 1;
         FDatiAccDiagn.Prestazioni.open;
         FDatiAccDiagn.RicalcolaTotale;
       end;
     end;

     res := FDatiAccDiagn.ShowModal;
     if (res in [mrOk,mrRetry]) then
     begin
        refData.RefreshRecord;
     end;

     if (res = mrRetry) then
     begin
        FStampaAvvisi := TFStampaAvvisi.Create(nil);
        try
           FStampaAvvisi.Conferma.Visible := false;
           FStampaAvvisi.Conferma.Enabled := false;
           FStampaAvvisi.xDataset := refdata;
           FStampaAvvisi.Caption := 'Stampe accettazione';
           if refdata.Fieldbyname('PROVENIENZA').AsString='E' then
              FStampaAvvisi.CaricaStampe := 20
           else if refdata.Fieldbyname('PROVENIENZA').AsString='I' then
              FStampaAvvisi.CaricaStampe := 21
           else // if refdata.Fieldbyname('PROVENIENZA').AsString='P' then
              FStampaAvvisi.CaricaStampe := 22;
           FStampaAvvisi.TuttiRecord := false;
           FStampaAvvisi.ShowModal;
        finally
           FStampaAvvisi.Free;
           FStampaAvvisi := nil;
        end;
     end;

  finally
     xPossibili.Filtered := false;
     xPossibili.Filter := '';
     FDatiAccDiagn.Free;
     FDatiAccDiagn := nil;
     FDMCommon.LkReparti.Filtered := false;
  end;
{$ENDIF}
end;


procedure TFArchivioReferti.CorreggiImpegnativa;
var
  res: integer;
begin

  FDatiAccImp := TFDatiAccImp.Create(nil);
  try

     FDatiAccImp.StatoLancio := 2;
     FDatiAccImp.ProxStatoVisita := 1000; // refData.Fieldbyname('STATOVISITA').AsInteger;
     FDatiAccImp.xPossibili := xPossibili;
//     FDatiAccImp.Esami := FDMCommon.FiltraEsami(xPossibili);
//     FDatiAccImp.xReferAcc := self;
     FDatiAccImp.xDiag := refData.Fieldbyname('DIAGNOSTICA_FK').AsInteger; //0;
     FDatiAccImp.Accettazione.Parambyname('pkimpegnative').AsInteger := refData.Fieldbyname('IMPEGNATIVE_FK').AsInteger;
     FDatiAccImp.Accettazione.open;
     FDatiAccImp.Accettazione.edit;

     res := FDatiAccImp.ShowModal;
     if (res in [mrOk,mrRetry]) then
     begin
        refData.RefreshRecord;
     end;

     if (res = mrRetry) then
     begin
        FStampaAvvisi := TFStampaAvvisi.Create(nil);
        try
           FStampaAvvisi.Conferma.Visible := false;
           FStampaAvvisi.Conferma.Enabled := false;
           FStampaAvvisi.xDataset := refdata;
           FStampaAvvisi.Caption := 'Stampe accettazione';
           if refdata.Fieldbyname('PROVENIENZA').AsString='E' then
              FStampaAvvisi.CaricaStampe := 20
           else if refdata.Fieldbyname('PROVENIENZA').AsString='I' then
              FStampaAvvisi.CaricaStampe := 21
           else // if refdata.Fieldbyname('PROVENIENZA').AsString='P' then
              FStampaAvvisi.CaricaStampe := 22;
           FStampaAvvisi.TuttiRecord := false;
           FStampaAvvisi.ShowModal;
        finally
           FStampaAvvisi.Free;
           FStampaAvvisi := nil;
        end;
     end;

  finally
     FDatiAccImp.Free;
     FDatiAccImp := nil;
  end;

end;

procedure TFArchivioReferti.ModificaAccettazioneUpdate(Sender: TObject);
begin
  ModificaAccettazione.Enabled := (RecordAttuale<>-1) and
                             (refdata<>nil) and (refData.FindField('STATOVISITA')<>nil) and
                             ((refData.FindField('SITE_NAME')=nil) or (refData.Fieldbyname('SITE_NAME').AsString=FDMCommon.Param_TicketSITE_NAME.AsString)) and
                             (refdata.Fieldbyname('STATOVISITA').AsInteger>0) and
//                             (refdata.Fieldbyname('STATOVISITA').AsInteger>=130) and
                             (refdata.Fieldbyname('STATOVISITA').AsInteger<2000) and
                             ((refdata.FindField('REPARTI_FK')<>nil) and (refdata.Fieldbyname('REPARTI_FK').AsInteger=gblpkrep))
                             and gblEstrazioneDati
//                             and (gblUserIsAdmin or gblSuperUser)
                             ;
end;

procedure TFArchivioReferti.ModInternoEsternoExecute(Sender: TObject);
var
  res: integer;
  tp: char;
begin
{$IFNDEF MEDICORNER}
 FScegliIntEst := TFScegliIntEst.Create(nil);
 try
    if (refData.Fieldbyname('PROVENIENZA').AsString='E') then
       FScegliIntEst.cxEsterno.Enabled := false
    else if (refData.Fieldbyname('PROVENIENZA').AsString='I') then
       FScegliIntEst.cxInterno.Enabled := false
    else if (refData.Fieldbyname('PROVENIENZA').AsString='P') then
       FScegliIntEst.cxPS.Enabled := false;

    tp := 'X';
    res := FScegliIntEst.ShowModal;
    if res=mrOk then
    begin
       if FScegliIntEst.cxEsterno.Checked then
         tp := 'E'
       else if FScegliIntEst.cxInterno.Checked then
         tp := 'I'
       else if FScegliIntEst.cxPS.Checked then
         tp := 'P';
    end;

 finally
    FScegliIntEst.Free;
 end;
{$ENDIF}
 case tp of
 {$IFNDEF MEDICORNER}
 'I','P': ModificaAccInterno(tp);
 {$ENDIF}
 'E': CorreggiImpegnativa;
 end;

end;

procedure TFArchivioReferti.ModInternoEsternoUpdate(Sender: TObject);
begin
  ModInternoEsterno.Enabled := (RecordAttuale<>-1) and
                             (refdata<>nil) and (refData.FindField('STATOVISITA')<>nil) and
                             not FDMCommon.IsUserCup and
                             (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger=1) and
                             (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>2) and
                             ((refData.FindField('SITE_NAME')=nil) or (refData.Fieldbyname('SITE_NAME').AsString=FDMCommon.Param_TicketSITE_NAME.AsString)) and
                             (refdata.Fieldbyname('STATOVISITA').AsInteger>=10) and
                             (refdata.Fieldbyname('STATOVISITA').AsInteger<200) and
                             (refdata.Fieldbyname('REPARTI_FK').AsInteger=gblpkrep);
end;

procedure TFArchivioReferti.cxGridPopupErroriPopupMenus0Popup(
  ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X, Y: Integer);
begin
  dxBarPopErrori.Popup(X, Y);
end;

procedure TFArchivioReferti.dxDataPrenoCloseUp(Sender: TObject);
begin
  Prenotazioni.syRefresh;
  PrenoEsami.syrefresh;
end;

procedure TFArchivioReferti.ElencoPrenotazioniExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
begin

  try

//    cxGridPrenotazioniLevel2.Visible := false;

    if FDMCommon.dxPrintDialog1.Execute then
    begin
       if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
          dxComponentPrinter1.Preview(true,dxComponentPrinterPrenotazioni)
       else begin
          AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
          dxComponentPrinter1.Print(false,@AData,dxComponentPrinterPrenotazioni);
       end;
    end;

  finally
//     cxGridPrenotazioniLevel2.Visible := true;
  end;

end;

procedure TFArchivioReferti.PrenotazioniBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('data_acc').AsDateTime := dxDataPreno.EditValue;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFArchivioReferti.aStoricoExecute(Sender: TObject);
begin
  StoricoOperazione(refdata.Fieldbyname('PKTRIAGE').AsInteger);

end;

procedure TFArchivioReferti.cxGridPopupPrenotazioniPopupMenus0Popup(
  ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X, Y: Integer);
begin
  dxBarPopPreno.Popup(X, Y);
end;

procedure TFArchivioReferti.GridRefertiDblClick(Sender: TObject);
begin
   Immagini_e_Referti;
end;

procedure TFArchivioReferti.Immagini_e_Referti;
begin
{JRT 5149: ex
  if gblViewImmagini and FDMCommon.DoppioMonitor then
     PostMessage(Handle,SY_DBLCLICK,0,LongInt(Immagini));
  PostMessage(Handle,SY_DBLCLICK,0,LongInt(Referto));
}
  if gblViewImmagini and FDMCommon.DoppioMonitor then
     RichiamaImmagini(false);
  PostMessage(Handle,SY_DBLCLICK,0,LongInt(Referto));
{}
end;

procedure TFArchivioReferti.GridSituazioneDblClick(Sender: TObject);
begin
  Immagini_e_Referti;
end;

procedure TFArchivioReferti.dxCercaAccKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_RETURN) and (dxCercaAcc.CurText<>'') then
     SendPortDataToForm(format('A%10.10d',[StrToIntDef(dxCercaAcc.CurText,0)]), 11);

end;

procedure TFArchivioReferti.aStoricoAnagExecute(Sender: TObject);
begin

  FStoricoAnag := TFStoricoAnag.Create(nil);
  try
     if dxPageControl.ActivePage=dxTabArchivio then
        FStoricoAnag.StoricoAnag.Parambyname('assistibili_fk').AsInteger := SchedaPazientePKASSISTIBILI.AsInteger
     else if dxPageControl.ActivePage=cxDuplicati then
        FStoricoAnag.StoricoAnag.Parambyname('assistibili_fk').AsInteger := DuplicatiPKASSISTIBILI.AsInteger
     else if dxPageControl.ActivePage=cxNuoveAnagrafiche then
        FStoricoAnag.StoricoAnag.Parambyname('assistibili_fk').AsInteger := NuoveAnagPKASSISTIBILI.AsInteger
     else if dxPageControl.ActivePage=cxAnagrafica then
        FStoricoAnag.StoricoAnag.Parambyname('assistibili_fk').AsInteger := StoricoAnagASSISTIBILI_FK.AsInteger
     else if dxPageControl.ActivePage=cxModSuReferti then
        FStoricoAnag.StoricoAnag.Parambyname('assistibili_fk').AsInteger := RefertiModificatiPKASSISTIBILI.AsInteger;

     FStoricoAnag.StoricoAnag.open;
     FStoricoAnag.ShowModal;
  finally
     FStoricoAnag.Free;
     FStoricoAnag := nil;
  end;

end;

procedure TFArchivioReferti.aStoricoAnagUpdate(Sender: TObject);
begin

     if dxPageControl.ActivePage=dxTabArchivio then
        aStoricoAnag.Enabled := not SchedaPaziente.Eof
     else if dxPageControl.ActivePage=cxDuplicati then
        aStoricoAnag.Enabled := (RecordAttuale<>-1)
     else if dxPageControl.ActivePage=cxNuoveAnagrafiche then
        aStoricoAnag.Enabled := (RecordAttuale<>-1)
     else if dxPageControl.ActivePage=cxModSuReferti then
       aStoricoAnag.Enabled := (RecordAttuale<>-1)
     else if dxPageControl.ActivePage=cxAnagrafica then
       aStoricoAnag.Enabled := (RecordAttuale<>-1);

end;

procedure TFArchivioReferti.StoricoAnagBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('data_op1').AsDateTime := dxAggiornaDal.EditValue;
  Sender.Parambyname('data_op2').AsDateTime := dxAggiornaAl.EditValue;

  if cxComboTipoOperazione.ItemIndex=-1 then
     Sender.Parambyname('xfiltro_op').AsString := '#'
  else
     Sender.Parambyname('xfiltro_op').AsString := format('# and a.tipo_op='+#39+'%s'+#39,[cxComboTipoOperazione.EditValue]);

end;

procedure TFArchivioReferti.dxAggiornaDalCloseUp(Sender: TObject);
begin
//  dxAggiornaAl.EditValue := dxAggiornaDal.EditValue;
//  StoricoAnag.syRefresh;
end;

procedure TFArchivioReferti.GridLogStoricoDblClick(Sender: TObject);
begin
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxGridLogStorico),LongInt(ModificaAnagrafica));
end;

procedure TFArchivioReferti.StampaModuli(xstato: Integer; xprovenienza: string);
begin

  FStampaAvvisi := TFStampaAvvisi.Create(nil);
  try
     FStampaAvvisi.TuttiRecord := false;
     FStampaAvvisi.Conferma.Visible := false;
     FStampaAvvisi.Conferma.Enabled := false;
     FStampaAvvisi.xDataset := refdata;
     FStampaAvvisi.Caption := 'Stampa moduli';

     case xstato of
     20: begin
           if xprovenienza='E' then
              FStampaAvvisi.CaricaStampe := 10
           else
              FStampaAvvisi.CaricaStampe := 12;
         end;
     120: begin
           if xprovenienza='E' then
              FStampaAvvisi.CaricaStampe := 20
           else if xprovenienza='I' then
              FStampaAvvisi.CaricaStampe := 21
           else // if xprovenienza='P' then
              FStampaAvvisi.CaricaStampe := 22;
          end;
     130: begin
           if xprovenienza='E' then
              FStampaAvvisi.CaricaStampe := 30
           else if xprovenienza='I' then
              FStampaAvvisi.CaricaStampe := 31
           else // if xprovenienza='P' then
              FStampaAvvisi.CaricaStampe := 32;
          end;
     else
        // --
     end;
     FStampaAvvisi.ShowModal;
  finally
     FStampaAvvisi.Free;
     FStampaAvvisi := nil;
  end;

end;

procedure TFArchivioReferti.aStampaPrenotazioniExecute(Sender: TObject);
begin

  StampaModuli(20, refData.Fieldbyname('PROVENIENZA').AsString);

end;

procedure TFArchivioReferti.aStampaPrenotazioniUpdate(Sender: TObject);
begin
  aStampaPrenotazioni.Enabled := (refdata<>nil) and (refData.FindField('STATOVISITA')<>nil) and (refData.FindField('PROVENIENZA')<>nil) and (refdata.Fieldbyname('REPARTI_FK').AsInteger=gblpkrep)
                            and (refData.Fieldbyname('STATOVISITA').AsInteger>=20) and (refData.Fieldbyname('STATOVISITA').AsInteger<2000);
end;

procedure TFArchivioReferti.aStampaAccettazioniExecute(Sender: TObject);
begin
  inherited;
  StampaModuli(120, refData.Fieldbyname('PROVENIENZA').AsString);
end;

procedure TFArchivioReferti.aStampaAccettazioniUpdate(Sender: TObject);
begin
  inherited;
  aStampaAccettazioni.Enabled := (refdata<>nil) and (refData.FindField('STATOVISITA')<>nil) and (refData.FindField('PROVENIENZA')<>nil) and (refdata.Fieldbyname('REPARTI_FK').AsInteger=gblpkrep)
                            and (refData.Fieldbyname('STATOVISITA').AsInteger>20) {and (refData.FieldByName('STATOVISITA').AsInteger <= 122)} and (refData.Fieldbyname('STATOVISITA').AsInteger<2000);
end;

procedure TFArchivioReferti.aStampaDiagnosticaExecute(Sender: TObject);
begin
  inherited;
  StampaModuli(130, refData.Fieldbyname('PROVENIENZA').AsString);
end;

procedure TFArchivioReferti.aStampaDiagnosticaUpdate(Sender: TObject);
begin
  inherited;
  aStampaDiagnostica.Enabled := (refdata<>nil) and (refData.FindField('STATOVISITA')<>nil) and (refData.FindField('PROVENIENZA')<>nil) and (refdata.Fieldbyname('REPARTI_FK').AsInteger=gblpkrep)
                                and (refData.Fieldbyname('STATOVISITA').AsInteger>122) {and (refData.FieldByName('STATOVISITA').AsInteger <= 198)} and (refData.Fieldbyname('STATOVISITA').AsInteger<2000);

end;

procedure TFArchivioReferti.aCutExecute(Sender: TObject);
begin
  xAnagRef := DuplicatiPKASSISTIBILI.AsInteger;
  xAnagCognome := DuplicatiCOGNOME.AsString;
  xAnagDataNasc := DuplicatiDATA_NASCITA.AsDateTime;
end;

procedure TFArchivioReferti.aPasteExecute(Sender: TObject);
var
  a1,a2: string;
  xref: integer;
begin

 Duplicati.DisableControls;
 try
 a2 := DuplicatiPKASSISTIBILI.AsString + ' ' + DuplicatiCOGNOME.AsString + ' ' + DuplicatiNOME.AsString;
 xref := DuplicatiPKASSISTIBILI.AsInteger;
 Duplicati.Locate('PKASSISTIBILI',xAnagRef,[]);
 a1 := DuplicatiPKASSISTIBILI.AsString + ' ' + DuplicatiCOGNOME.AsString + ' ' + DuplicatiNOME.AsString;

 if MsgDlgPos(format(RS_ConfFusione,[a1,a2]), '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes then
 begin

   SchedaPaziente.Parambyname('pkassistibili').AsInteger := xref;
   SchedaPaziente.syRefresh;
   Situazione.Parambyname('pkassistibili').AsInteger := xref;
   Situazione.syRefresh;

   FFusione := TFFusione.Create(nil);
   try

   FFusione.refer := self;
   FFusione.qDuplicati.Parambyname('pkassistibili').AsInteger := xAnagRef;
   FFusione.qDuplicati.syRefresh;
   FFusione.sitDuplicati.Parambyname('assistibili_fk').AsInteger := xAnagRef;
   FFusione.sitDuplicati.syRefresh;

   FFusione.FondiTutto;
   Situazione.syRefresh;

    xAnagRef := -1;
    Duplicati.Delete;
    Duplicati.Locate('PKASSISTIBILI',xref,[]);
    Duplicati.Delete;

    finally
      FFusione.Free;
      FFusione := nil;
    end;

 end;
 finally

   Duplicati.EnableControls;
 end;

end;

procedure TFArchivioReferti.aPasteUpdate(Sender: TObject);
begin

  aPaste.Enabled := (xAnagRef>=0) and (xAnagRef<>DuplicatiPKASSISTIBILI.AsInteger)
                              and (xAnagCognome=DuplicatiCOGNOME.AsString)
                              and (xAnagDataNasc=DuplicatiDATA_NASCITA.AsDateTime)
                              and (FDMCommon.LeggiPostoLavoroANAG_SCRITTURA.AsInteger=1);

end;

procedure TFArchivioReferti.aAnnullaAnagDuplicatiExecute(Sender: TObject);
begin

  if MsgDlg(RS_Anag_Msg_ConfCanc, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes then
  begin
{
     SchedaPaziente.Parambyname('pkassistibili').AsInteger := DuplicatiPKASSISTIBILI.AsInteger;
     SchedaPaziente.syRefresh;
     SchedaPaziente.Edit;
     SchedaPazienteSAN_IDENT.AsInteger := 3;
     SchedaPazienteUSER_ID.AsInteger := gblCodUtente;
     SchedaPaziente.Post;
     SchedaPaziente.Empty;
}
     AnnullaAnag.Parambyname('pkassistibili').AsInteger := DuplicatiPKASSISTIBILI.AsInteger;
     AnnullaAnag.Parambyname('user_id').AsInteger := gblCodUtente;
     AnnullaAnag.ExecCommit;
     Duplicati.Delete;
  end;

end;

procedure TFArchivioReferti.aAnnullaAnagDuplicatiUpdate(Sender: TObject);
begin

  aAnnullaAnagDuplicati.Enabled := (not Duplicati.IsEmpty) and (DuplicatiNR.AsInteger=0);

end;

procedure TFArchivioReferti.aRefreshDupExecute(Sender: TObject);
begin
  Duplicati.syRefresh;
  cxGridDuplicatiDBTableView1.Controller.GotoFirst;  
end;

procedure TFArchivioReferti.aRileggiInserimentiExecute(Sender: TObject);
begin
  NuoveAnag.syRefresh;
end;

procedure TFArchivioReferti.aAnnullaAnagInserimentiExecute(
  Sender: TObject);
begin

  if MsgDlg(RS_Anag_Msg_ConfCanc, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes then
  begin
{
     SchedaPaziente.Parambyname('pkassistibili').AsInteger := NuoveAnagPKASSISTIBILI.AsInteger;
     SchedaPaziente.syRefresh;
     SchedaPaziente.Edit;
     SchedaPazienteSAN_IDENT.AsInteger := 3;
     SchedaPazienteUSER_ID.AsInteger := gblCodUtente;
     SchedaPaziente.Post;
     SchedaPaziente.Empty;
}
     AnnullaAnag.Parambyname('pkassistibili').AsInteger := NuoveAnagPKASSISTIBILI.AsInteger;
     AnnullaAnag.Parambyname('user_id').AsInteger := gblCodUtente;
     AnnullaAnag.ExecCommit;
  end;

end;

procedure TFArchivioReferti.aAnnullaAnagInserimentiUpdate(Sender: TObject);
begin

  aAnnullaAnagInserimenti.Enabled := (not NuoveAnag.IsEmpty) and (NuoveAnagNR.AsInteger=0);

end;


procedure TFArchivioReferti.DuplicatiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  if dxAncheComNasc.Down then
  begin
     Sender.Parambyname('xcom_codice').AsString := '# ,a.com_codice';
     Sender.Parambyname('wh_com_codice').AsString := '# and t.com_codice=AX.com_codice';
  end
  else begin
     Sender.Parambyname('xcom_codice').AsString := '#';
     Sender.Parambyname('wh_com_codice').AsString := '#';
  end;

  if dxAncheCancellati.Down then
  begin
     Sender.Parambyname('xanche_canc1').AsString := '#';
     Sender.Parambyname('xanche_canc2').AsString := '#';
  end
  else begin
     Sender.Parambyname('xanche_canc1').AsString := '# and a.san_ident<>3';
     Sender.Parambyname('xanche_canc2').AsString := '# and t.san_ident<>3';
  end;

  if dxCognomeDupl.Text='' then
     Sender.Parambyname('xcognome').Clear
  else
     Sender.Parambyname('xcognome').AsString := UpperCase(dxCognomeDupl.Text);

end;

procedure TFArchivioReferti.dxSoloCognNomeDataClick(Sender: TObject);
begin
{
  Duplicati.syRefresh;
  cxGridDuplicatiDBTableView1.Controller.GotoFirst;
}
end;

procedure TFArchivioReferti.dxAncheComNascClick(Sender: TObject);
begin
{
  Duplicati.syRefresh;
  cxGridDuplicatiDBTableView1.Controller.GotoFirst;
}
end;

procedure TFArchivioReferti.cxGridDuplicatiDBTableView2DataControllerDataModeControllerDetailFirst(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
begin
  FDMCommon.DetailFirst(ADataSet,AMasterDetailKeyFieldNames,AMasterDetailKeyValues,AReopened);
end;

function TFArchivioReferti.cxGridDuplicatiDBTableView2DataControllerDataModeControllerDetailIsCurrentQuery(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant): Boolean;
begin
  result := FDMCommon.DetailIsCurrentQuery(ADataSet,AMasterDetailKeyFieldNames,AMasterDetailKeyValues);
end;

procedure TFArchivioReferti.dxAncheCancellatiClick(Sender: TObject);
begin
{
  Duplicati.syRefresh;
  cxGridDuplicatiDBTableView1.Controller.GotoFirst;
}
end;

procedure TFArchivioReferti.dxAggiornaAlCloseUp(Sender: TObject);
begin
//  StoricoAnag.syRefresh;
end;

procedure TFArchivioReferti.cxComboTipoOperazionePropertiesEditValueChanged(
  Sender: TObject);
begin
//  StoricoAnag.syRefresh;
end;

procedure TFArchivioReferti.dxBarButton30Click(Sender: TObject);
begin
  StoricoAnag.syRefresh;
end;

procedure TFArchivioReferti.aElencoStoricoExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
begin

    if FDMCommon.dxPrintDialog1.Execute then
    begin
       if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
          dxComponentPrinter1.Preview(true,dxComponentPrinterStoricoAnag)
       else begin
          AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
          dxComponentPrinter1.Print(false,@AData,dxComponentPrinterStoricoAnag);
       end;
    end;

end;

procedure TFArchivioReferti.aElencoStoricoUpdate(Sender: TObject);
begin
  aElencoStorico.Enabled := not StoricoAnag.IsEmpty;
end;

procedure TFArchivioReferti.cxGridPopupDuplicatiPopupMenus0Popup(
  ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X, Y: Integer);
begin
  dxBarPopDuplicati.Popup(X, Y);
end;

procedure TFArchivioReferti.cxGridPopupDuplicatiPopupMenus1Popup(
  ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X, Y: Integer);
begin
  dxBarPopupEsamiDup.Popup(X, Y);
end;

procedure TFArchivioReferti.aCercaDuplicatiExecute(Sender: TObject);
begin
  Duplicati.syRefresh;
  cxGridDuplicatiDBTableView1.Controller.GotoFirst;
end;

procedure TFArchivioReferti.dxCognomeDuplKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_RETURN) and (dxCognomeDupl.Text<>'') then
     aCercaDuplicati.Execute;

end;


procedure TFArchivioReferti.RefertiModificatiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
  Sender.Parambyname('data_op1').AsDateTime := dxAggiornaDal.EditValue;
  Sender.Parambyname('data_op2').AsDateTime := dxAggiornaAl.EditValue;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFArchivioReferti.dxCercaRefertiClick(Sender: TObject);
begin
  RefertiModificati.syRefresh;
end;

procedure TFArchivioReferti.aRefertaAncoraExecute(Sender: TObject);
(*
var
  xpkt: integer;
  xpkr: integer;
  xdiagnosi: string;
*)
begin
(*
  xpkt := RefertiModificatiPKTRIAGE.AsInteger;
  if not FDMCommon.LockRecord(xpkt,gblCodUtente,1) then
  begin
     exit;
  end;

  qyRiapri.Parambyname('pktriage').AsInteger := xpkt;
  qyRiapri.Parambyname('user_id').AsInteger := gblcodutente;
  if not (gblSuperUser or gblUserIsAdmin) then
     qyRiapri.Parambyname('contenuto').AsString := '# and r.tipo_referto_fk<>1';
  qyRiapri.ExecCommit;

  FDMCommon.CreaReferto(xpkt, xpkr, xdiagnosi);

  if not LanciaRefer(130,RS_Addendum, xpkr, xpkt, nil, nil, false, false, tpaNone, False, False, 0, xdiagnosi) then
  begin
     if (FDMCommon.qReferto.State in dsEditModes) then
        FDMCommon.qReferto.Cancel;
     FDMCommon.qReferto.Delete;
  end;
*)
end;

procedure TFArchivioReferti.aRefertaAncoraUpdate(Sender: TObject);
begin
(*
  aRefertaAncora.Enabled :=  (RecordAttuale<>-1) and
                             not RefertiModificati.IsEmpty and
                             (RefertiModificatiSOLO_FIRMA.IsNull or (RefertiModificatiSOLO_FIRMA.AsInteger=0)) and
                              gblIsMedico and
                             (gblSuperUser or ((gblUserIsAdmin or (gblcodUtente=RefertiModificatiCOD_MED_FIRMA.AsInteger))
                              and ((gblore_riapri=0) or ((gblore_riapri>0) and (HoursBetween(Now(),RefertiModificatiDATA_REFERTO.AsDateTime)<=gblore_riapri)))));
*)
end;

procedure TFArchivioReferti.StoricoModRefExecute(Sender: TObject);
begin
  StoricoOperazione(RefertiModificatiPKTRIAGE.AsInteger);
end;

procedure TFArchivioReferti.StoricoModRefUpdate(Sender: TObject);
begin
  StoricoModRef.Enabled := (RecordAttuale<>-1);
end;

procedure TFArchivioReferti.ElencoRefertiModificatiExecute(
  Sender: TObject);
var
  AData: TdxPrintDlgData;
begin

    if FDMCommon.dxPrintDialog1.Execute then
    begin
       if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
          dxComponentPrinter1.Preview(true,dxComponentPrinterRefModificati)
       else begin
          AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
          dxComponentPrinter1.Print(false,@AData,dxComponentPrinterRefModificati);
       end;
    end;

end;

procedure TFArchivioReferti.ElencoRefertiModificatiUpdate(Sender: TObject);
begin
  ElencoRefertiModificati.Enabled :=  not RefertiModificati.IsEmpty;
end;

procedure TFArchivioReferti.dxArchivioClick(Sender: TObject);
begin
  dxPageControl.ActivePageIndex := TdxBarButton(Sender).Tag;
  dxPageControlChange(self);

end;

procedure TFArchivioReferti.aBookmarkExecute(Sender: TObject);
begin
  RichiamaImmagini(true);
end;

procedure TFArchivioReferti.aBookmarkUpdate(Sender: TObject);
//var
//  nrf: boolean;
begin
{
   if dxPageControl.ActivePage=dxTabArchivio then
      nrf := SituazioneCEIMMAGINI.AsInteger>0
   else if dxPageControl.ActivePage=dxTabReferti then
      nrf := RefertiCEIMMAGINI.AsInteger>0
   else if dxPageControl.ActivePage=cxDuplicati then
      nrf := SitxDuplCEIMMAGINI.AsInteger>0
   else if dxPageControl.ActivePage=dxTabOperazioni then
      nrf := OperazioniCEIMMAGINI.AsInteger>0
   else if dxPageControl.ActivePage=cxTabRicercaTesto then
      nrf := RicercaInRefertoCEIMMAGINI.AsInteger>0
   else if dxPageControl.ActivePage=cxTabACR then
      nrf := RicercaACRCEIMMAGINI.AsInteger>0
   else
      nrf := ErroriInvioCEIMMAGINI.AsInteger>0;

   aBookmark.Enabled := gblViewImmagini and nrf;
}
   aBookmark.Enabled := (RecordAttuale<>-1) and
                       gblViewImmagini and
                       Assigned(refData) and (refData.FindField('CEIMMAGINI')<>nil) and (refData.FieldByName('CEIMMAGINI').AsInteger>0);

end;

procedure TFArchivioReferti.aCreazioneCDExecute(Sender: TObject);
begin
   PreparaCD;
end;

procedure TFArchivioReferti.aCreazioneCDUpdate(Sender: TObject);
begin
  aCreazioneCD.Enabled := not FDMCommon.cdMaster.IsEmpty and
                             (
                              ((dxPageControl.ActivePage=dxTabOperazioni) and
                               (GridOperazioni.Controller.SelectedRecordCount>0) and (OperazioniCEIMMAGINI.AsInteger=1)
                               {and (OperazioniSTATOVISITA.AsInteger in [170,171,180,190,198])}) or
                              ((dxPageControl.ActivePage=dxTabReferti) and
                               (GridReferti.Controller.SelectedRecordCount>0) and (RefertiCEIMMAGINI.AsInteger=1)
                               {and (RefertiSTATOVISITA.AsInteger in [170,171,180,190,198])}) or
                              ((dxPageControl.ActivePage=dxTabArchivio) and
                               (GridSituazione.Controller.SelectedRecordCount>0)) or
                              ((dxPageControl.ActivePage=cxTabRicercaTesto) and
                               (cxGridDBRicercaReferti.Controller.SelectedRecordCount>0) and (RicercaInRefertoCEIMMAGINI.AsInteger=1)
                               {and (RicercaInRefertoSTATOVISITA.AsInteger in [170,171,180,190,198])}) or
                              ((dxPageControl.ActivePage=cxTabACR) and
                               (cxGridDBRefACR.Controller.SelectedRecordCount>0) and (RicercaACRCEIMMAGINI.AsInteger=1)
                               {and (RicercaACRSTATOVISITA.AsInteger in [170,171,180,190,198])})
                             )
                             ;

end;

procedure TFArchivioReferti.aTestAssociazioneExecute(Sender: TObject);
var
  err: integer;
  errtxt: string;
begin

    FDMCommon.EsameInPacs.Parambyname('pris_study_euid').AsString := ErroriInvioRIS_STUDY_EUID.AsString;
    FDMCommon.EsameInPacs.Parambyname('ppid').AsString := ErroriInvioPID.AsString;
    if not FDMCommon.LeggiPostoLavoroWPACS_FK.IsNull then
       FDMCommon.EsameInPacs.Parambyname('ppacs_fk').AsInteger := FDMCommon.LeggiPostoLavoroWPACS_FK.AsInteger;
    FDMCommon.EsameInPacs.Parambyname('ptipo_modalita').Clear;
  //        FDMCommon.EsameInPacs.Parambyname('ptipo_modalita').AsString := ...;
    FDMCommon.EsameInPacs.ExecSQL;
    err := FDMCommon.EsameInPacs.Parambyname('res').AsInteger;

    case err of
    0:
    begin
      MsgDlg(format(RS_ImmaginiInviate,[ErroriInvioRIS_STUDY_EUID.AsString,FDMCommon.EsameInPacs.Parambyname('xname').AsString]),'', ktInformation, [kbOK]);
    end;
    1:
    begin
      errtxt := format(RS_ImmaginiNonArrivate,[ErroriInvioRIS_STUDY_EUID.AsString,FDMCommon.EsameInPacs.Parambyname('xname').AsString]);
      MsgDlg(errtxt,'', ktWarning, [kbOK]);
    end;
    2:
    begin
      errtxt := format(RS_PID_Differenti,[ErroriInvioRIS_STUDY_EUID.AsString,
                                          FDMCommon.EsameInPacs.Parambyname('xlast_name').AsString,
                                          FDMCommon.EsameInPacs.Parambyname('xfirst_name').AsString,
                                          FDMCommon.EsameInPacs.Parambyname('xexternal_eid').AsString]);
      MsgDlg(errtxt,'', ktWarning, [kbOK]);
    end;
  {
    3:
    begin
      errtxt := format(RS_MODALITA_Differenti,[ErroriInvioRIS_STUDY_EUID.AsString,FDMCommon.EsameInPacsxname.AsString,EsameTIPO_MODALITA.AsString]);
      if tp_ctrl=1 then
      begin
        MsgDlg(errtxt,'', ktWarning, [kbOK]);
        esci := false;
      end
      else if MsgDlg(format(RS_MODALITA_QDifferenti,[ErroriInvioRIS_STUDY_EUID.AsString,FDMCommon.EsameInPacsxname.AsString,EsameTIPO_MODALITA.AsString]),'', ktConfirmation, [kbYes,kbNo],dfSecond)=mrYes then
      begin
         esci := true;
      end;
    end;
  }
    4:
    begin
      errtxt := format(RS_ImmaginiNonArrivate,[ErroriInvioRIS_STUDY_EUID.AsString,FDMCommon.EsameInPacs.Parambyname('xname').AsString]);
      MsgDlg(errtxt,'', ktWarning, [kbOK]);
    end;
    end;

    if (err>0) then
    begin
      ErroriInvio.Edit;
      ErroriInvioTESTO_ERRORE.AsString := errtxt;
      ErroriInvioTIPO_BLOCCO.AsInteger := err;
      ErroriInvioSTATO_ERR.AsInteger := 2;
      ErroriInvioUSER_ID.AsInteger := gblCodUtente;
      ErroriInvio.Post;
    end
    else begin
      ErroriInvio.Edit;
  //          ErroriInvioTESTO_ERRORE.AsString := errtxt;
      ErroriInvioSTATO_ERR.AsInteger := 1;
      ErroriInvioUSER_ID.AsInteger := gblCodUtente;
      ErroriInvio.Post;
    end;

end;

procedure TFArchivioReferti.aAddendumExecute(Sender: TObject);
begin

   if dxPageControl.ActivePage=dxTabArchivio then
   begin
      if Referta(SituazionePKTRIAGE.AsInteger,tpaAddendum) then
         Situazione.RefreshRecord;
   end
   else if dxPageControl.ActivePage=dxTabReferti then
   begin
      if Referta(RefertiPKTRIAGE.AsInteger,tpaAddendum) then
         Referti.InsertRefresh(FDMCommon.qRefertoPKREFERTI.AsInteger);
   end
   else if dxPageControl.ActivePage=cxDuplicati then
   begin
      if Referta(SitxDuplPKTRIAGE.AsInteger,tpaAddendum) then
         SitxDupl.RefreshRecord;
   end
   else begin
      if Referta(OperazioniPKTRIAGE.AsInteger,tpaAddendum) then
         Operazioni.RefreshRecord;
   end;

end;

function TFArchivioReferti.AbilitaAddendum: boolean;
begin

   result := ((refData<>nil) and (refData.FindField('REPARTI_FK')<>nil) and (refData.Fieldbyname('REPARTI_FK').AsInteger=gblpkrep)) and
             not ((FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=2) and (refData.FindField('LIV_SCR')<>nil) and (refData.FindField('LIV_SCR').IsNull or (refData.FindField('LIV_SCR').AsInteger=0))) and
             (   (gblore_riapri<=0) or
                 ((gblore_riapri>0) and (refData.FindField('DATA_REFERTO')<>nil) and (HoursBetween(Now(),refData.Fieldbyname('DATA_REFERTO').AsDateTime)>gblore_riapri))
             )

             ;

   if result then
   begin
     if dxPageControl.ActivePage=dxTabArchivio then
        result := gblViewReferti and gblIsMedico and (SituazioneSTATOVISITA.AsInteger in [165,166,170,180,190]) and ((FDMCommon.LeggiPostoLavoroCHK_ABILITA_ADDENDUM.AsInteger=0) or (gblCodUtente=SituazioneCOD_MED_FIRMA.AsInteger))
     else if dxPageControl.ActivePage=dxTabReferti then
        result := gblViewReferti and gblIsMedico and (RefertiSTATOVISITA.AsInteger in [165,166,170,180,190]) and ((FDMCommon.LeggiPostoLavoroCHK_ABILITA_ADDENDUM.AsInteger=0) or (gblCodUtente=RefertiCOD_MED_FIRMA.AsInteger))
     else if dxPageControl.ActivePage=cxDuplicati then
        result := gblViewReferti and gblIsMedico and (SitxDuplSTATOVISITA.AsInteger in [165,166,170,180,190]) and ((FDMCommon.LeggiPostoLavoroCHK_ABILITA_ADDENDUM.AsInteger=0) or (gblCodUtente=SitxDuplCOD_MED_FIRMA.AsInteger))
     else
        result := gblViewReferti and gblIsMedico and (OperazioniSTATOVISITA.AsInteger in [165,166,170,180,190]) and ((FDMCommon.LeggiPostoLavoroCHK_ABILITA_ADDENDUM.AsInteger=0) or (gblCodUtente=OperazioniCOD_MED_FIRMA.AsInteger));
   end;

   if result and (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=2) then
   begin
       if dxPageControl.ActivePage=dxTabArchivio then
          result := (SituazioneLIV_SCR.IsNull or (SituazioneLIV_SCR.AsInteger in [0,2]))
       else if dxPageControl.ActivePage=dxTabReferti then
          result := (RefertiLIV_SCR.IsNull or (RefertiLIV_SCR.AsInteger in [0,2]))
       else if dxPageControl.ActivePage=cxDuplicati then
          result := (SitxDuplLIV_SCR.IsNull or (SitxDuplLIV_SCR.AsInteger in [0,2]))
       else
          result := false
   end;

end;

procedure TFArchivioReferti.aAddendumUpdate(Sender: TObject);
begin

   aAddendum.Enabled := (RecordAttuale<>-1) and AbilitaAddendum;

end;


function TFArchivioReferti.Referta(xpkt: integer; xstatoref: TpStatoReferto): boolean;
var
  titolo: string;
  xpkr: Integer;
  xdiagnosi: string;
begin

  result := False;

  if (FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger in [3,4,5,6]) then
  begin
     ControlloAnnullatoSISS.ParambyName('triage_fk').AsInteger := xpkt;
     ControlloAnnullatoSISS.syRefresh;
     if not ControlloAnnullatoSISS.IsEmpty then
     begin
         MsgDlgPos(RS_GiaAnnullatoSISS, '', ktError, [kbOk], dfFirst);
         exit;
     end;
  end;

  if not FDMCommon.LockRecord(xpkt,gblCodUtente,1) then
  begin
     exit;
  end;

  case xstatoref of
  tpaAddendum: titolo := RS_Addendum;
//  2: titolo := 'Consulenza';
  tpaAnnullativo: titolo := RS_EsameAnnullativo;
  tpaConsulenza: titolo := RS_Consulenza;
  tpaSostitutivo: titolo := RS_Sostitutivo;
  end;

  FDMCommon.CreaReferto(xpkt, xpkr, xdiagnosi);

  result := LanciaRefer(0,titolo, xpkr, xpkt, nil, nil, false, false, xstatoref, False, False, 0, xdiagnosi);
  if not result then
  begin
     if (FDMCommon.qReferto.State in dsEditModes) then
        FDMCommon.qReferto.Cancel;
     FDMCommon.qReferto.Delete;
  end;

end;

procedure TFArchivioReferti.cxGridPopupCartellaPopupMenus0Popup(
  ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X, Y: Integer);
begin
  dxBarPopCartella.Popup(X, Y);
end;

procedure TFArchivioReferti.PrenoEsamiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('data_acc').AsDateTime := dxDataPreno.EditValue;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;

end;

procedure TFArchivioReferti.AssociaEsameExecute(Sender: TObject);
var
  trovato: integer;
begin

    FRicAssistito := TFRicAssistito.Create(nil);
    try

     if (gblSuperUser or gblUserIsAdmin) then
       FRicAssistito.QRicerca.Parambyname('xsan_ident').AsString := '#'
     else
       FRicAssistito.QRicerca.Parambyname('xsan_ident').AsString := '# (a.SAN_IDENT in (1,2,4,5)) and';

     FRicAssistito.QRicerca.Parambyname('data_decesso').AsString := '#';

     FRicAssistito.QRicerca.Active := false;
     FRicAssistito.QRicerca.QBEMode := true;
     FRicAssistito.QRicerca.Active := true;
     trovato := FRicAssistito.ShowModal;

     if (trovato=mrOk) and
        (MsgDlg(format(RS_ConfermaFusione,[format('%s',[SconosciutiRIS_STUDY_EUID.AsString]),SconosciutiPKASSISTIBILI.AsInteger,SconosciutiCOGNOME.AsString,SconosciutiNOME.AsString,
        FRicAssistito.QRicercaPKASSISTIBILI.AsInteger,FRicAssistito.QRicercaCOGNOME.AsString,FRicAssistito.QRicercaNOME.AsString]), '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes)
     then
     begin
       FFusione := TFFusione.Create(nil);
       try
       FFusione.FondiEsame(SconosciutiPKIMPEGNATIVE.AsInteger,FRicAssistito.QRicercaPKASSISTIBILI.AsString,SconosciutiPKASSISTIBILI.AsString);
       finally
       FFusione.Free;
       end;
       Sconosciuti.syRefresh;
     end;

   finally
      FRicAssistito.Free;
      FRicAssistito := nil;
   end;

end;

procedure TFArchivioReferti.cxGridPopupSconosciutiPopupMenus0Popup(
  ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X, Y: Integer);
begin
  dxBarPopSconosciuti.Popup(X, Y);
end;

procedure TFArchivioReferti.AssociaEsameUpdate(Sender: TObject);
begin
  AssociaEsame.Enabled := (RecordAttuale<>-1) and {not Sconosciuti.IsEmpty and} (gblSuperUser or gblUserIsAdmin);
end;

procedure TFArchivioReferti.SconosciutiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  Sender.Parambyname('ora_inizio').AsDateTime := dxDalSconosciuti.EditValue;
  sender.Parambyname('lingua').AsString := gbllingua;  
end;

procedure TFArchivioReferti.aAssociaImmaginiExecute(Sender: TObject);
var
  err: integer;
  errtxt: string;
begin

        FDMCommon.qPacs.Parambyname('pktriage').AsInteger := refData.FieldByname('PKTRIAGE').AsInteger;
        FDMCommon.qPacs.syRefresh;
        if FDMCommon.qPacsPACS.IsNull or (FDMCommon.qPacsPACS.AsString='') then
        begin
           MsgDlg(RIS_PACSNonConf, '', ktError, [kbOk], dfFirst);
           exit;
        end;

        FDMCommon.EsameInPacs.Parambyname('pris_study_euid').AsString := refData.FieldByname('RIS_STUDY_EUID').AsString;
        FDMCommon.EsameInPacs.Parambyname('ppid').AsString := refData.FieldByname('PID').AsString;
        if not FDMCommon.LeggiPostoLavoroWPACS_FK.IsNull then
           FDMCommon.EsameInPacs.Parambyname('ppacs_fk').AsInteger := FDMCommon.LeggiPostoLavoroWPACS_FK.AsInteger;
        FDMCommon.EsameInPacs.Parambyname('ptipo_modalita').Clear;
//        FDMCommon.EsameInPacs.Parambyname('ptipo_modalita').AsString := ...;
        FDMCommon.EsameInPacs.ExecSQL;
        err := FDMCommon.EsameInPacs.Parambyname('res').AsInteger;

        case err of
        0:
        begin
          MsgDlg(format(RS_ImmaginiInviate,[refData.FieldByname('RIS_STUDY_EUID').AsString,FDMCommon.EsameInPacs.Parambyname('xname').AsString]),'', ktInformation, [kbOK]);
        end;
        1:
        begin
          errtxt := format(RS_ImmaginiNonArrivate,[refData.FieldByname('RIS_STUDY_EUID').AsString,FDMCommon.EsameInPacs.Parambyname('xname').AsString]);
          MsgDlg(errtxt,'', ktWarning, [kbOK]);
        end;
        2:
        begin
          errtxt := format(RS_PID_Differenti,[refData.FieldByname('RIS_STUDY_EUID').AsString,
                                              FDMCommon.EsameInPacs.Parambyname('xlast_name').AsString,
                                              FDMCommon.EsameInPacs.Parambyname('xfirst_name').AsString,
                                              FDMCommon.EsameInPacs.Parambyname('xexternal_eid').AsString]);
          MsgDlg(errtxt,'', ktWarning, [kbOK]);
        end;
{
        3:
        begin
          errtxt := format(RS_MODALITA_Differenti,[refData.FieldByname('RIS_STUDY_EUID').AsString,FDMCommon.EsameInPacsxname.AsString,EsameTIPO_MODALITA.AsString]);
          if tp_ctrl=1 then
          begin
            MsgDlg(errtxt,'', ktWarning, [kbOK]);
            esci := false;
          end
          else if MsgDlg(format(RS_MODALITA_QDifferenti,[refData.FieldByname('RIS_STUDY_EUID').AsString,FDMCommon.EsameInPacsxname.AsString,EsameTIPO_MODALITA.AsString]),'', ktConfirmation, [kbYes,kbNo],dfSecond)=mrYes then
          begin
             esci := true;
          end;
        end;
}
        end;

        if (err=0) then
        begin
          if not (refData.State in dsEditModes) then
             refData.Edit;
          refData.FieldByname('CEIMMAGINI').AsInteger := 1;
          refData.FieldByname('USER_ID').AsInteger := gblCodUtente;
          refData.Post;
        end
        else begin
          if not (refData.State in dsEditModes) then
             refData.Edit;
          refData.FieldByname('CEIMMAGINI').AsInteger := 2;
          refData.FieldByname('USER_ID').AsInteger := gblCodUtente;
          refData.Post;
        end;

        FDMCommon.ErroriInvio.ParamByName('triage_fk').AsInteger := refData.FieldByname('PKTRIAGE').AsInteger;
        FDMCommon.ErroriInvio.syRefresh;
        if not FDMCommon.ErroriInvio.IsEmpty then
        begin
          if (err=0) then
          begin
            FDMCommon.ErroriInvio.Edit;
            FDMCommon.ErroriInvioCEIMMAGINI.AsInteger := 1;
            FDMCommon.ErroriInvioUSER_ID.AsInteger := gblcodutente;
            FDMCommon.ErroriInvio.Post;
          end
          else begin
            FDMCommon.ErroriInvio.Edit;
            FDMCommon.ErroriInvioCEIMMAGINI.AsInteger := 2;
            FDMCommon.ErroriInvioUSER_ID.AsInteger := gblcodutente;
            FDMCommon.ErroriInvio.Post;
          end;
        end;

end;

procedure TFArchivioReferti.aRefreshExecute(Sender: TObject);
begin
   SYAggiornaLista(refGrid,refDettagli,Assigned(refDettagli));
end;

procedure TFArchivioReferti.aRefreshUpdate(Sender: TObject);
begin
  aRefresh.Enabled := not (refData=nil);
end;

procedure TFArchivioReferti.SituazioneBeforePost(DataSet: TDataSet);
begin
  SituazioneUSER_ID.AsInteger := gblCodUtente;
end;

procedure TFArchivioReferti.aContattoExecute(Sender: TObject);
begin
{$IFNDEF MEDICORNER}
  FContattoxPaz := TFContattoxPaz.Create(nil);
  try
     FContattoxPaz.qContatti.Parambyname('assistibili_fk').AsInteger := SchedaPazientePKASSISTIBILI.AsInteger;
     FContattoxPaz.qContatti.open;
     FContattoxPaz.qContattiStorico.Parambyname('assistibili_fk').AsInteger := SchedaPazientePKASSISTIBILI.AsInteger;
     FContattoxPaz.qContattiStorico.open;
     FContattoxPaz.ShowModal;
  finally
     FContattoxPaz.Free;
  end;
{$ENDIF}
end;

procedure TFArchivioReferti.aContattoUpdate(Sender: TObject);
begin
	aContatto.Enabled := SchedaPaziente.Active and not SchedaPaziente.Eof;
end;

procedure TFArchivioReferti.cxGridPopupRicercaRefertoPopupMenus0Popup(
  ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X, Y: Integer);
begin
  dxBarPopRicercaReferto.Popup(X, Y);
end;

procedure TFArchivioReferti.aRicercaTestoExecute(Sender: TObject);
var
  xcerca: string;
  lCerca: TStringList;
  i: integer;
  ctesto: string;
  temp: string;
begin

  if (dxTestoRicerca.Text='') then exit;

  case FDMCommon.Param_TicketCHK_RICERCA_REFERTI.AsInteger of
  1: ctesto := 'ts.diagnosi';
  2: ctesto := 'rf.diagnosi';
  end;

  lCerca := TStringList.Create;
  try
     lCerca.Delimiter := ',';
     lCerca.CommaText := BMStringReplace(dxTestoRicerca.Text,' ',',',[]);
     temp := '';
     for i:=1 to lCerca.Count do
     begin
       if lCerca[i-1]<>'' then
       begin
         if temp<>'' then
         begin
            if dxAnd.Down then
               temp := temp + ' AND '
            else
               temp := temp + ' OR ';
         end;
         temp := temp + 'CONTAINS('+ctesto+','+#39+lCerca[i-1]+#39+')>0';
       end;
     end;

     if temp<>'' then
     begin
       xcerca := '# AND (' + temp + ')';
       RicercaInReferto.Parambyname('ricerca').AsString := xcerca;
       RicercaInReferto.syRefresh;
     end;

  finally
     lCerca.Free;
  end;

end;

procedure TFArchivioReferti.aRicercaTestoUpdate(Sender: TObject);
begin
//  aRicercaTesto.Enabled := (dxTestoRicerca.Text<>'')
end;

procedure TFArchivioReferti.aStampaElencoExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
begin

    if FDMCommon.dxPrintDialog1.Execute then
    begin
       if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
          dxComponentPrinter1.Preview(true,dxComponentPrinterRicercaReferti)
       else begin
          AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
          dxComponentPrinter1.Print(false,@AData,dxComponentPrinterRicercaReferti);
       end;
    end;

end;

procedure TFArchivioReferti.aStampaElencoUpdate(Sender: TObject);
begin
  aStampaElenco.Enabled := not RicercaInReferto.IsEmpty;
end;

procedure TFArchivioReferti.RicercaInRefertoBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  case FDMCommon.Param_TicketCHK_RICERCA_REFERTI.AsInteger of
  1: begin
       Sender.Parambyname('ref1').AsString := '# text_search ts,';
       Sender.Parambyname('ref2').AsString := '# and ts.pktriage=t.pktriage';
     end;
  2: begin
       Sender.Parambyname('ref1').AsString := '# refxtriage rt, referti rf,';
       if (FDMCommon.LeggiPostoLavoroPROVV_DEFINITIVO.AsInteger=0) then
           Sender.Parambyname('ref2').AsString := '# and rt.triage_fk=t.pktriage and rf.pkreferti=rt.referti_fk and rf.statoreferto_fk in (90,93,94,95,96,97,98,99)'
       else
           Sender.Parambyname('ref2').AsString := '# and rt.triage_fk=t.pktriage and rf.pkreferti=rt.referti_fk and rf.statoreferto_fk in (90,92,93,94,95,96,97,98,99)';
     end;
  end;
end;

procedure TFArchivioReferti.RicercaACRBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  sender.Parambyname('lingua').AsString := gbllingua;  
end;

procedure TFArchivioReferti.cxGridPopupRicercaACRPopupMenus0Popup(
  ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X, Y: Integer);
begin
  dxBarPopRicercaACR.Popup(X, Y);
end;

procedure TFArchivioReferti.aRicercaACRExecute(Sender: TObject);
begin
  RicercaACR.Parambyname('acr_anatomical').AsString := dxAnatomical.Text+'%';
  RicercaACR.Parambyname('acr_patological').AsString := dxPatological.Text+'%';
  RicercaACR.syRefresh;
  if RicercaACR.IsEmpty then
     MsgDlg(RS_Gene_Msg_NoDt, '', ktInformation, [kbOk], dfFirst);

end;

procedure TFArchivioReferti.aRicercaACRUpdate(Sender: TObject);
begin
  aRicercaACR.Enabled := (dxAnatomical.Text<>'') and (dxPatological.Text<>'');
end;

procedure TFArchivioReferti.aStampaElencoACRExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
begin

    if FDMCommon.dxPrintDialog1.Execute then
    begin
       if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
          dxComponentPrinter1.Preview(true,dxComponentPrinterRicercaACR)
       else begin
          AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
          dxComponentPrinter1.Print(false,@AData,dxComponentPrinterRicercaACR);
       end;
    end;

end;

procedure TFArchivioReferti.aStampaElencoACRUpdate(Sender: TObject);
begin
  aStampaElencoACR.Enabled := not RicercaACR.IsEmpty;
end;

procedure TFArchivioReferti.cxGridDBRicercaRefertiDblClick(
  Sender: TObject);
begin
  Immagini_e_Referti;
end;

procedure TFArchivioReferti.cxGridDBRefACRDblClick(Sender: TObject);
begin
  Immagini_e_Referti;
end;

procedure TFArchivioReferti.aStoricoUpdate(Sender: TObject);
begin
     aStorico.Enabled := (RecordAttuale<>-1) and
                         (refdata<>nil) {and
                         ((refData.FindField('SITE_NAME')=nil) or (refData.Fieldbyname('SITE_NAME').AsString=FDMCommon.Param_TicketSITE_NAME.AsString))};
end;

procedure TFArchivioReferti.aTestAssociazioneUpdate(Sender: TObject);
begin
     aTestAssociazione.Enabled := (RecordAttuale<>-1) and
                                  (refdata<>nil) and FDMCommon.Pacs and
                                  ((refData.FindField('SITE_NAME')=nil) or (refData.Fieldbyname('SITE_NAME').AsString=FDMCommon.Param_TicketSITE_NAME.AsString));
end;

procedure TFArchivioReferti.aAssociaImmaginiUpdate(Sender: TObject);
begin
     aAssociaImmagini.Enabled := (RecordAttuale<>-1) and
                                (refdata<>nil) and FDMCommon.Pacs and
                                ((refData.FindField('SITE_NAME')=nil) or (refData.Fieldbyname('SITE_NAME').AsString=FDMCommon.Param_TicketSITE_NAME.AsString)) {and
                                ((refData.FindField('CEIMMAGINI')<>nil) and (refData.Fieldbyname('CEIMMAGINI').AsInteger in [0,2]))}
                                ;

end;

procedure TFArchivioReferti.cxGridDBEsamiperRicercaDataControllerDataModeControllerDetailFirst(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
begin
  FDMCommon.DetailFirst(ADataSet,AMasterDetailKeyFieldNames,AMasterDetailKeyValues,AReopened);
end;

function TFArchivioReferti.cxGridDBEsamiperRicercaDataControllerDataModeControllerDetailIsCurrentQuery(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant): Boolean;
begin
  with (ADataSet as TAstaClientDataset) do
    Result := ParamByName('triage_fk').Value = AMasterDetailKeyValues;

end;

procedure TFArchivioReferti.cxGridDBEsamiperACRDataControllerDataModeControllerDetailFirst(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
begin
  FDMCommon.DetailFirst(ADataSet,AMasterDetailKeyFieldNames,AMasterDetailKeyValues,AReopened);
end;

function TFArchivioReferti.cxGridDBEsamiperACRDataControllerDataModeControllerDetailIsCurrentQuery(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant): Boolean;
begin
  with (ADataSet as TAstaClientDataset) do
    Result := ParamByName('triage_fk').Value = AMasterDetailKeyValues;

end;

procedure TFArchivioReferti.aConsegnaRefertoExecute(Sender: TObject);
var
  TempUM: TAstaUpdateMethod;
begin

  FConsegnaRef := TFConsegnaRef.Create(nil);
  try
     FConsegnaRef.Consegna.Parambyname('pktriage').AsInteger := SituazionePKTRIAGE.AsInteger;
     FConsegnaRef.Consegna.open;
     FConsegnaRef.Consegna.Edit;
     FConsegnaRef.ConsegnaDATA_CONSEGNA.AsDateTime := Date();

     if (FConsegnaRef.ShowModal in [mrOk,mrRetry]) then
     begin
//        if dxDaConsegnare.Down then
        begin

          TempUM := Situazione.UpdateMethod;
          try
          Situazione.Edit;
          SituazioneSTATOVISITA.AsInteger := 190;
          Situazione.Post;
          finally
             Situazione.UpdateMethod := TempUM;
          end;

          GridSituazione.DataController.UpdateItems(False);
        end;
     end;
  finally
     FConsegnaRef.Free;
     FConsegnaRef := nil;
  end;

end;

procedure TFArchivioReferti.aConsegnaRefertoUpdate(Sender: TObject);
begin
  aConsegnaReferto.Enabled := ( (dxPageControl.ActivePage=dxTabArchivio) and
                               (RecordAttuale<>-1) and
                               (SituazioneCEREFERTO.AsInteger=1) and
                               (GridSituazione.Controller.SelectedRecordCount=1) and
                               (SituazioneSTATOVISITA.AsInteger in [170,180,190]) and
                               (SituazioneREPARTI_FK.AsInteger=gblpkrep)
                             );

end;

procedure TFArchivioReferti.dxTestoRicercaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=13) then
  begin
//     PostMessage(Handle,WM_NEXTDLGCTL,0,0);
     PostMessage(Handle,SY_DBLCLICK,0,LongInt(aRicercaTesto));
  end;

end;

procedure TFArchivioReferti.SituazioneBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  sender.Parambyname('lingua').AsString := gbllingua;  
end;

procedure TFArchivioReferti.dxAnatomicalDropDown(Sender: TObject);
begin
  aCercaCodiceACR.Execute;
end;

procedure TFArchivioReferti.aCercaCodiceACRExecute(Sender: TObject);
begin
{$IFNDEF MEDICORNER}
  FACRDiag := TFACRDiag.Create(nil);
  try
     FACRDiag.RicercaParziale := true;

     if dxAnatomical.Text<>'' then
     begin
       FDMCommon.acr_anatomical.Locate('KEY',dxAnatomical.Text,[]);
       FACRDiag.FiltraPatologie;
       if dxPatological.Text<>'' then
          FDMCommon.acr_patological.Locate('KEY',dxPatological.Text,[]);
     end;
     if FACRDiag.ShowModal=mrOk then
     begin
        dxAnatomical.Text := FDMCommon.acr_anatomicalKEY.AsString;
        dxPatological.Text := FDMCommon.acr_patologicalKEY.AsString;
     end;
  finally
     FACRDiag.Free;
  end;
{$ENDIF}
end;

procedure TFArchivioReferti.dxPatologicalDropDown(Sender: TObject);
begin
  aCercaCodiceACR.Execute;
end;

procedure TFArchivioReferti.aConsulenzaExecute(Sender: TObject);
begin

   if dxPageControl.ActivePage=dxTabArchivio then
      Referta(SituazionePKTRIAGE.AsInteger,tpaConsulenza)
   else if dxPageControl.ActivePage=dxTabReferti then
   begin
      if Referta(RefertiPKTRIAGE.AsInteger,tpaConsulenza) then
         Referti.InsertRefresh(FDMCommon.qRefertoPKREFERTI.AsInteger);
   end
   else if dxPageControl.ActivePage=cxDuplicati then
      Referta(SitxDuplPKTRIAGE.AsInteger,tpaConsulenza)
   else
      Referta(OperazioniPKTRIAGE.AsInteger,tpaConsulenza);

end;

procedure TFArchivioReferti.aConsulenzaUpdate(Sender: TObject);
var
  abilita: boolean;
begin

   abilita := (RecordAttuale<>-1) and ((refData<>nil) and (refData.FindField('REPARTI_FK')<>nil) and (refData.Fieldbyname('REPARTI_FK').AsInteger=gblpkrep));

   if abilita then
   begin
     if dxPageControl.ActivePage=dxTabArchivio then
        abilita := gblViewReferti {and gblIsMedico} and (SituazioneSTATOVISITA.AsInteger in [170,180,190])
     else if dxPageControl.ActivePage=dxTabReferti then
        abilita := gblViewReferti {and gblIsMedico} and (RefertiSTATOVISITA.AsInteger in [170,180,190])
     else if dxPageControl.ActivePage=cxDuplicati then
        abilita := gblViewReferti {and gblIsMedico} and (SitxDuplSTATOVISITA.AsInteger in [170,180,190])
     else
        abilita := gblViewReferti {and gblIsMedico} and (OperazioniSTATOVISITA.AsInteger in [170,180,190]);
   end;

   aConsulenza.Enabled := abilita;

end;

procedure TFArchivioReferti.aAnnullativoExecute(Sender: TObject);
begin

   if dxPageControl.ActivePage=dxTabArchivio then
   begin
      if Referta(SituazionePKTRIAGE.AsInteger,tpaAnnullativo) then
         Situazione.RefreshRecord;
   end
   else if dxPageControl.ActivePage=dxTabReferti then
   begin
      if Referta(RefertiPKTRIAGE.AsInteger,tpaAnnullativo) then
         Referti.InsertRefresh(FDMCommon.qRefertoPKREFERTI.AsInteger);
   end
   else if dxPageControl.ActivePage=cxDuplicati then
   begin
      if Referta(SitxDuplPKTRIAGE.AsInteger,tpaAnnullativo) then
         SitxDupl.RefreshRecord;
   end
   else begin
      if Referta(OperazioniPKTRIAGE.AsInteger,tpaAnnullativo) then
         Operazioni.RefreshRecord;
   end;

end;

procedure TFArchivioReferti.aAnnullativoUpdate(Sender: TObject);
begin

   aAnnullativo.Enabled := (RecordAttuale<>-1) and AbilitaAddendum and (FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger in [3,4,5,6]);

end;

procedure TFArchivioReferti.aNuovoNrArchivioExecute(Sender: TObject);
var
  pkt: integer;
begin
  if MsgDlgPos(RS_NuovoNrArchivio, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes then
  begin
     qNuovoNrArchivio.ParamByName('assistibili_fk').AsInteger := SituazioneASSISTIBILI_FK.AsInteger;
     qNuovoNrArchivio.ParamByName('reparti_fk').AsInteger := SituazioneREPARTI_FK.AsInteger;
     if SituazioneANNO.IsNull then
        qNuovoNrArchivio.ParamByName('anno').Clear
     else
        qNuovoNrArchivio.ParamByName('anno').AsInteger := SituazioneANNO.AsInteger;
     qNuovoNrArchivio.ExecCommit;
     pkt := SituazionePKTRIAGE.AsInteger;
     GridSituazione.BeginUpdate;
     try
        Situazione.syRefresh;
        Situazione.Locate('PKTRIAGE',pkt,[]);
     finally
        GridSituazione.EndUpdate;
     end;
  end;
end;

procedure TFArchivioReferti.aNuovoNrArchivioUpdate(Sender: TObject);
begin
  aNuovoNrArchivio.Enabled := (RecordAttuale<>-1) and
                             not Situazione.IsEmpty and
                             (SituazioneSITE_NAME.AsString=FDMCommon.Param_TicketSITE_NAME.AsString) and
                             (SituazioneREPARTI_FK.AsInteger=gblpkrep) and
                             not SituazioneDATA_ACCETTAZIONE.IsNull;

end;

procedure TFArchivioReferti.dxNrArchivioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_RETURN) then
  begin
     PostMessage(Handle,SY_DBLCLICK,0,LongInt(aRicercaNrArchivio));
  end;
end;

procedure TFArchivioReferti.qCercaNrArchivioBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFArchivioReferti.GridSituazioneDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TcxDragControlObject);
end;

procedure TFArchivioReferti.GridSituazioneDragDrop(Sender, Source: TObject;
  X, Y: Integer);
var
  pk: integer;
begin
  if Assigned(FFusione) then
  begin
     pk := FFusione.SitDuplicatiPKTRIAGE.AsInteger;
     FFusione.Associa.Execute;
     Situazione.Locate('pktriage',pk,[]);
  end;
end;

procedure TFArchivioReferti.cxNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_RETURN) then
      RicercaInterna.Execute;
end;

procedure TFArchivioReferti.cxCognomeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_RETURN) then
     PostMessage(Handle,SY_FOCUSPRIMOCAMPO,0,LongInt(cxNome));
end;

procedure TFArchivioReferti.FocusSulCampo(var Message: TMessage);
begin
  inherited;
  TWinControl(Message.LParam).SetFocus;
end;

procedure TFArchivioReferti.MettiDaRefertareExecute(Sender: TObject);
begin
 if MsgDlgPos(RS_Msg_ConfInDaRefertare, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes then
 begin
    refData.Edit;
    refData.Fieldbyname('STATOVISITA').AsInteger := 130;
    refData.Fieldbyname('USER_ID').AsInteger := gblcodutente;
    refData.Post;
    refData.RefreshRecord;
 end;

end;

procedure TFArchivioReferti.MettiDaRefertareUpdate(Sender: TObject);
begin

  MettiDaRefertare.Enabled := (RecordAttuale<>-1) and
                             (refData<>nil) and (refData.FindField('STATOVISITA')<>nil) and
                             ((refData.FindField('SITE_NAME')=nil) or (refData.Fieldbyname('SITE_NAME').AsString=FDMCommon.Param_TicketSITE_NAME.AsString)) and
                              not refData.IsEmpty and (gblIsMedico or gblUserIsAdmin or gblSuperUser)
                              and (refData.Fieldbyname('STATOVISITA').AsInteger=198);

end;

procedure TFArchivioReferti.aRicercaPazienteUpdate(Sender: TObject);
begin
  aRicercaPaziente.Enabled := (dxPageControl.ActivePage=dxTabArchivio);
end;

procedure TFArchivioReferti.aRicercaPazienteExecute(Sender: TObject);
begin
     cxCognome.Text := '';
     cxNome.Text := '';
     RicercaInterna.Execute;

end;

procedure TFArchivioReferti.dxDalSconosciutiCloseUp(Sender: TObject);
begin
  Sconosciuti.syrefresh;
end;


procedure TFArchivioReferti.RiportaStandardExecute(Sender: TObject);
begin
   FResetEffettuato := true;
   rsPropSaver1.Storage.SectionClear(rsPropSaver1.RootSection);
   rsPropSaver1.Storage.SectionClear(name+'.'+GridOperazioni.Name);
   rsPropSaver1.Storage.SectionClear(name+'.'+GridReferti.Name);
   rsPropSaver1.Storage.SectionClear(name+'.'+GridSituazione.Name);
   rsPropSaver1.Storage.SectionClear(name+'.'+GridSitErrori.Name);
   GridOperazioni.OptionsView.DataRowHeight := 0;
   GridReferti.OptionsView.DataRowHeight := 0;
   GridSituazione.OptionsView.DataRowHeight := 0;
   GridSitErrori.OptionsView.DataRowHeight := 0;
   PostMessage(Application.MainForm.Handle,SY_REFRESHFORM,0,LongInt(self));

end;

procedure TFArchivioReferti.aRicercaNrArchivioExecute(Sender: TObject);
begin
   if (FDMCommon.LeggiPostoLavoroTIPO_NR_ARCHIVIO.AsInteger in [0,2]) then
      SendPortDataToForm(format('AA%9.9d',[StrToIntDef(dxNrArchivio.Text,0)]), 20)
   else
      SendPortDataToForm(format('AA%4.4d %9.9d',[StrToIntDef(dxAnnoArch.Text,0),StrToIntDef(dxNrArchivio.Text,0)]), 20);
end;

procedure TFArchivioReferti.aRicercaNrArchivioUpdate(Sender: TObject);
begin
  aRicercaNrArchivio.Enabled := (dxNrArchivio.Text<>'');
end;

procedure TFArchivioReferti.aRepositorySISSExecute(Sender: TObject);
var
  AText: string;
  ErrString: string;
begin
{$IFNDEF MEDICORNER}
  AText := Trim(FDMCommon.LeggiPostoLavoroURL_REPOSITORY.AsString);
  if AText <> '' then
  begin
    AText := BMStringReplace(AText,'%PID%',SchedaPazienteCODICE_FISCALE.AsString,[]);
    AText := BMStringReplace(AText,'%TESSERASAN%', SchedaPazienteLIBRETTO_SAN.AsString, []);
    ShellExecute(0, 'OPEN', PChar(AText), nil, nil, SW_SHOWMAXIMIZED);
  end
  else
  begin
    if (FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger in [5,6]) then
    begin
      if not ConsultaStorico(SchedaPazienteNOME.AsString,
        SchedaPazienteCOGNOME.AsString, SchedaPazienteCODICE_FISCALE.AsString,
        SchedaPazienteLIBRETTO_SAN.AsString,
        FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger=6, ErrString ) then
      begin
        MsgDlg(ErrString, '', ktError, [kbOK]);
        Abort;
      end;
    end
  end;
{$ENDIF}
end;

procedure TFArchivioReferti.aRepositorySISSUpdate(Sender: TObject);
begin
  {*----------------------------------------------------------------------------------------------------------------------------------
    Archivio Repository è abilitato se URL_REPOSITORY è compilata oppure se in integrazione con SissWay (5,6)
   ----------------------------------------------------------------------------------------------------------------------------------}
  aRepositorySISS.Enabled := (not FDMCommon.LeggiPostoLavoroURL_REPOSITORY.IsNull or (FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger in [5,6])) and
                             (not SchedaPaziente.IsEmpty and (SchedaPazientePKASSISTIBILI.AsInteger>0))
                             ;

end;

procedure TFArchivioReferti.GridSituazioneEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin

  AAllow := (varAsType(GridSituazione.Controller.FocusedRecord.Values[GridSituazioneREPARTI_FK.Index],varInteger) = gblpkrep);

  if AAllow then
  begin
     GridSituazioneNOTE_PRENO.Editing := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);
     GridSituazioneNR_ARCH.Editing := (gblSuperUser or gblUserIsAdmin or gblSpostaEsami);
  end;

end;

procedure TFArchivioReferti.aSostitutivoExecute(Sender: TObject);
begin

   if dxPageControl.ActivePage=dxTabArchivio then
   begin
      if Referta(SituazionePKTRIAGE.AsInteger,tpaSostitutivo) then
         Situazione.RefreshRecord;
   end
   else if dxPageControl.ActivePage=dxTabReferti then
   begin
      if Referta(RefertiPKTRIAGE.AsInteger,tpaSostitutivo) then
         Referti.InsertRefresh(FDMCommon.qRefertoPKREFERTI.AsInteger);
   end
   else if dxPageControl.ActivePage=cxDuplicati then
   begin
      if Referta(SitxDuplPKTRIAGE.AsInteger,tpaSostitutivo) then
        SitxDupl.RefreshRecord;
   end
   else begin
      if Referta(OperazioniPKTRIAGE.AsInteger,tpaSostitutivo) then
         Operazioni.RefreshRecord;
   end;

end;

procedure TFArchivioReferti.aSostitutivoUpdate(Sender: TObject);
begin

   aSostitutivo.Enabled := (RecordAttuale<>-1) and AbilitaAddendum and (FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger in [3,4,5,6]);

end;

procedure TFArchivioReferti.RicercaCF(const xCF: string);
var
  trovato: Integer;
begin
  inherited;
  FRicAssistito := TFRicAssistito.Create(nil);
  try

    FRicAssistito.QRicerca.Active := false;
    FRicAssistito.QRicerca.QBEMode := true;
    FRicAssistito.QRicerca.Active := true;
    FRicAssistito.StatoLancio := 0;
    FRicAssistito.PazienteSconosciuto.Visible := false;
    trovato := mrCancel;

    FRicAssistito.QRicercaCODICE_FISCALE.AsString := xCF;
    FRicAssistito.AttivaRicerca.Execute;
    if (FRicAssistito.qRicerca.Recordcount=1) then
      trovato := mrCancel; //JRT: ex mrOk;  eliminata seleziona automatica se unico paziente trovato - 07/07/2015

    if trovato<>mrOk then
    begin
{
     if cxCognome.Text<>'' then
        FRicAssistito.xCOGNOME := cxCognome.Text;
     if cxNome.Text<>'' then
        FRicAssistito.xNOME := cxNome.Text;
}
     if xCF<>'' then
        FRicAssistito.xRec.CodiceFiscale := xCF;

     trovato := FRicAssistito.ShowModal;
    end;

    if trovato = mrOk then
    begin
      SchedaPaziente.Parambyname('pkassistibili').AsInteger := FRicAssistito.QRicercaPKASSISTIBILI.AsInteger;
      SchedaPaziente.syRefresh;
      Situazione.Parambyname('pkassistibili').AsInteger := FRicAssistito.QRicercaPKASSISTIBILI.AsInteger;
      Situazione.syRefresh;
      GridSituazione.Controller.GotoFirst;
    end;

  finally
      FRicAssistito.Free;
  end;

end;

procedure TFArchivioReferti.GridSituazioneNR_ARCHIVIOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
{$IFNDEF MEDICORNER}
  FEditNrArch := TFEditNrArch.Create(nil);
  try
    if (FDMCommon.LeggiPostoLavoroTIPO_NR_ARCHIVIO.AsInteger in [1,3]) then
    begin
       if FDMCommon.LeggiPostoLavoroFMT_ANNO.IsNull then
          FEditNrArch.cxAnno.Properties.EditMask := DupeString('\d',4)
       else
          FEditNrArch.cxAnno.Properties.EditMask := DupeString('\d',Length(FDMCommon.LeggiPostoLavoroFMT_ANNO.AsString));
       FEditNrArch.cxAnno.Text := SituazioneANNO.AsString;
    end
    else
       FEditNrArch.dxLayoutAnno.Visible := false;

    if FDMCommon.LeggiPostoLavoroFMT_NUMERO.IsNull then
       FEditNrArch.cxNumero.Properties.EditMask := DupeString('\d',9)
    else
       FEditNrArch.cxNumero.Properties.EditMask := DupeString('\d',Length(FDMCommon.LeggiPostoLavoroFMT_NUMERO.AsString));
    FEditNrArch.cxNumero.Text := SituazioneNR_ARCHIVIO.AsString;
    if FEditNrArch.ShowModal=mrOk then
    begin
       Situazione.Edit;
       if FEditNrArch.dxLayoutAnno.Visible then
          SituazioneNR_ARCHIVIO.AsString := FEditNrArch.cxAnno.Text + '/' + FEditNrArch.cxNumero.Text
       else
          SituazioneNR_ARCHIVIO.AsString := FEditNrArch.cxNumero.Text;
       Situazione.Post;
    end;
  finally
     FEditNrArch.Free;
  end;
{$ENDIF}
end;

procedure TFArchivioReferti.GridSituazioneCanSelectRecord(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  var AAllow: Boolean);
begin
  inherited;
//  AAllow := (FDMCommon.VarToInt(ARecord.Values[GridSituazioneCEIMMAGINI.Index])=1) and (FDMCommon.VarToInt(ARecord.Values[GridSituazioneSTATOVISITA.Index]) in [170,171,180,190,198]);
end;

procedure TFArchivioReferti.aSelezionaTuttiCDExecute(Sender: TObject);
var
  I: Integer;
begin
  inherited;

  GridSituazione.BeginUpdate;
  try

  with GridSituazione.DataController do
  begin
    ClearSelection();
    for I := 0 to RecordCount - 1 do
    begin
      if (FDMCommon.VarToInt(Values[I, GridSituazioneCEIMMAGINI.Index])=1) or
         (FDMCommon.VarToInt(Values[I, GridSituazioneCEREFERTO.Index])=1) then
//         (FDMCommon.VarToInt(Values[I, GridSituazioneSTATOVISITA.Index]) in [170,171,180,190,198]) then
           ChangeRowSelection(GetRowIndexByRecordIndex(I, True), True);
    end;
  end;

  finally
     GridSituazione.EndUpdate;
  end;

end;

procedure TFArchivioReferti.aSelezionaTuttiCDUpdate(Sender: TObject);
begin
  inherited;
  aSelezionaTuttiCD.Enabled := Situazione.Active and not Situazione.IsEmpty;
end;


procedure TFArchivioReferti.aCancellaEsameExecute(Sender: TObject);
var
  TempUM: TAstaUpdateMethod;
//  tp_ctrl,i: integer;
  pkimp,pkt: integer;
//  errtxt: string;
  avanti: boolean;
  rr,tecnico,servizio,motivocanc: integer;
//  notecanc: string;
begin

  if FDMCommon.LeggiPostoLavoroCHECK_MOTIVOCANC.AsInteger=1 then
  begin
    FConfermaCancella := TFConfermaCancella.Create(nil);
    try
      FConfermaCancella.xpk := refData.Fieldbyname('PKTRIAGE').AsInteger;
      rr := FConfermaCancella.ShowModal;
      tecnico := FConfermaCancella.Userid;
      servizio := FConfermaCancella.Servid;
      motivocanc := FConfermaCancella.Motivo;
//      notecanc := FConfermaCancella.cxNote.Text;
    finally
      FConfermaCancella.Free;
      FConfermaCancella := nil;
    end;
    avanti := (rr<>mrCancel);
  end
  else begin
    avanti := (MsgDlgPos(RS_Msg_ConfCancAcc, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes);
    tecnico := gblCodUtente;
    servizio := gblpkserv;
    motivocanc := 0;
//    notecanc := '';
  end;

 if avanti then
 begin

  TempUM := refData.UpdateMethod;
  refData.UpdateMethod := umManual;
  try
     pkimp := refData.Fieldbyname('IMPEGNATIVE_FK').AsInteger;
     pkt := refData.Fieldbyname('PKTRIAGE').AsInteger;
//     xstato := refData.Fieldbyname('STATOVISITA').AsInteger;
     TriagexImpegnative.Parambyname('impegnative_fk').AsInteger := pkimp;
     TriagexImpegnative.syrefresh;

     CancellaImpegnativa.Parambyname('pktriage').AsInteger := pkt;
     CancellaImpegnativa.Parambyname('pkimpegnative').AsInteger := pkimp;
     CancellaImpegnativa.Parambyname('user_id').AsInteger := tecnico;
     CancellaImpegnativa.Parambyname('servizi_fk').AsInteger := servizio;
     CancellaImpegnativa.Parambyname('statovisita').AsInteger := motivocanc;
     CancellaImpegnativa.ExecCommit;
     refData.RefreshRecord;

  finally
     refData.UpdateMethod := TempUM;
  end;
 end;

end;

procedure TFArchivioReferti.aCancellaEsameUpdate(Sender: TObject);
begin
  inherited;
  aCancellaEsame.Enabled :=  (RecordAttuale<>-1) and
                             (refData<>nil) and (refData.FindField('STATOVISITA')<>nil) and
                             ((refData.FindField('SITE_NAME')=nil) or (refData.Fieldbyname('SITE_NAME').AsString=FDMCommon.Param_TicketSITE_NAME.AsString)) and
                              not refData.IsEmpty {and (gblIsMedico or gblUserIsAdmin or gblSuperUser)}
                              and (refData.Fieldbyname('STATOVISITA').AsInteger = 120)
                              and (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,3,6]);

end;

procedure TFArchivioReferti.aNuovaAnagraficaExecute(Sender: TObject);
var
  cNascita,cResidenza: boolean;
  StatoLancio: Integer;
begin
  inherited;

  FAnagrafica := TFAnagrafica.Create(nil);
  try
     FAnagrafica.Assistibili.OpenNoFetch;
     FAnagrafica.Assistibili.Insert;

     StatoLancio := -1;
     FDMCommon.AssegnaCheckAnagrafica(StatoLancio,cNascita,cResidenza);

     FAnagrafica.CheckNascita := cNascita;
     FAnagrafica.CheckResidenza := cResidenza;

     if FAnagrafica.ShowModal=mrOk then
     begin
         SchedaPaziente.Parambyname('pkassistibili').AsInteger := FAnagrafica.AssistibiliPKASSISTIBILI.AsInteger;
         SchedaPaziente.syRefresh;
         Situazione.Parambyname('pkassistibili').AsInteger := FAnagrafica.AssistibiliPKASSISTIBILI.AsInteger;
         Situazione.syRefresh;
         GridSituazione.Controller.GotoFirst;
     end;
  finally
     FAnagrafica.Free;
  end;

end;

procedure TFArchivioReferti.aNuovaAnagraficaUpdate(Sender: TObject);
begin
  inherited;
  aNuovaAnagrafica.Enabled := (FDMCommon.LeggiPostoLavoroANAG_SCRITTURA.AsInteger=1);
end;

procedure TFArchivioReferti.RefreshForm(var Message: TMessage);
var
  Control: TWinControl;
begin
   Control := nil;
   if dxPageControl.ActivePage=dxTabOperazioni then
   begin
      Control := GridOperazioni.Site;
   end
   else if dxPageControl.ActivePage=dxTabReferti then
   begin
      Control := GridReferti.Site;
   end
   else if dxPageControl.ActivePage=dxTabArchivio then
   begin
      Control := GridSituazione.Site;
   end
   else if dxPageControl.ActivePage=cxTabLogErrori then
   begin
      Control := GridSitErrori.Site;
   end
   else if dxPageControl.ActivePage=cxPrenotazioni then
   begin
      Control := GridPrenotazioni.Site;
   end;

   if Assigned(Control) then
   begin
      ActiveControl := Control;
   end;

end;

procedure TFArchivioReferti.aCreaDocumentiExecute(Sender: TObject);
begin
  inherited;
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
end;

procedure TFArchivioReferti.aCreaDocumentiUpdate(Sender: TObject);
begin
  inherited;
  aCreaDocumenti.Enabled := (dxStampaReferto.Down or dxCreaCD.Down or dxStampaEtichette.Down) and not IsEmptyDataset;
end;

procedure TFArchivioReferti.dxStampaRefertoClick(Sender: TObject);
begin
  inherited;
  aCreaDocumentiUpdate(Sender);
end;

procedure TFArchivioReferti.dxCreaCDClick(Sender: TObject);
begin
  inherited;
  aCreaDocumentiUpdate(Sender);
end;

procedure TFArchivioReferti.dxStampaEtichetteClick(Sender: TObject);
begin
  inherited;
  aCreaDocumentiUpdate(Sender);
end;

procedure TFArchivioReferti.CaricaTriageSelezionati(Grid: TcxGridDBTableView);
var
  i: Integer;
  RecIdx: integer;
  pkVal: Variant;
begin
    lpkt.Clear;
    lstato.Clear;
    // -- carico tutti i triage dei pkreferti selezionati
    for i:=0 to Grid.Controller.SelectedRecordCount-1 do
    begin
      RecIdx := Grid.Controller.SelectedRecords[i].RecordIndex;
      pkVal := Grid.DataController.GetRecordId(RecIdx);

      Grid.DataController.Datasource.Dataset.Locate(Grid.DataController.KeyFieldNames, pkVal, []);
      lpkt.Add(Grid.DataController.Datasource.Dataset.FieldByName('PKTRIAGE').AsString);
      lstato.Add(Grid.DataController.Datasource.Dataset.FieldByName('STATOVISITA').AsString);

    end;
end;

procedure TFArchivioReferti.StampaReferto(pSelezStampante: boolean);
var
  res: integer;
  i: integer;
begin

   CaricaTriageSelezionati(GridSituazione);

   dxPrintDialogRef.Title := RS_StampaRefertoHint;

   if pSelezStampante then
   begin
     if not dxPrintDialogRef.Execute then
         exit;
   end;

   for i:=0 to lpkt.Count-1 do
   begin

     if Situazione.Locate('PKTRIAGE',lpkt[i],[]) and (SituazioneCEREFERTO.AsInteger=1) then
     begin

       res := VisualizzaReferto('',SituazionePKTRIAGE.AsInteger,SchedaPazienteNOMINATIVO.AsString,[tbtFirmato,tbtProvvisorio],[tprnStampaBatch,{tprnStampa,}tprnDaCreare]);

       if res=mrCancel then
          break;
{
       Situazione.Edit;
       SituazioneUSER_ID.AsInteger := gblCodUtente;
       SituazioneREF_STAMPATO.AsInteger := 1;
       Situazione.Post;
}
     end;

   end;

end;

procedure TFArchivioReferti.PreparaCD;
begin
{$IFNDEF MEDICORNER}
     FCreaCDMicroprint := TFCreaCDMicroprint.Create(nil);
     try

        with FCreaCDMicroprint do
        begin

            if dxPageControl.ActivePage=dxTabOperazioni then
            begin
              ref := GridOperazioni;
              SiteName := '';
            end
            else if dxPageControl.ActivePage=dxTabReferti then
            begin
              ref := GridReferti;
              SiteName := '';
            end
            else if dxPageControl.ActivePage=dxTabArchivio then
            begin
              ref := GridSituazione;
              SiteName := SituazioneSITE_NAME.AsString;
            end
            else if dxPageControl.ActivePage=cxTabRicercaTesto then
            begin
              ref := cxGridDBRicercaReferti;
              SiteName := '';
            end
            else if dxPageControl.ActivePage=cxTabACR then
            begin
              ref := cxGridDBRefACR;
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
     end;
{$ENDIF}
end;


procedure TFArchivioReferti.StampaEtichette(pSelezStampante: Boolean);
var
  i: integer;
begin

   CaricaTriageSelezionati(GridSituazione);

   dxPrintDialogRef.Title := RS_StampaEtichetteHint;

   if pSelezStampante then
   begin
     if not dxPrintDialogRef.Execute then
         exit;
   end;

  FStampaAvvisi := TFStampaAvvisi.Create(nil);
  try

//   FStampaAvvisi.cxStampe.Text := dxPrintDevice.CurrentDevice;
//   FStampaAvvisi.cxEtichette.Text := dxPrintDevice.CurrentDevice;

   for i:=0 to lpkt.Count-1 do
   begin

     if Situazione.Locate('PKTRIAGE',lpkt[i],[]) then
     begin

       FStampaAvvisi.TuttiRecord := false;
       FStampaAvvisi.Conferma.Visible := false;
       FStampaAvvisi.Conferma.Enabled := false;

       FStampaAvvisi.xDataset := Situazione;
       FStampaAvvisi.Caption := RS_StampaEtichetteHint;
       FStampaAvvisi.CaricaStampe := 40;
  //     FStampaAvvisi.ShowModal;
       FStampaAvvisi.StampaModuli;
{
       Situazione.Edit;
       SituazioneUSER_ID.AsInteger := gblCodUtente;
       SituazioneETICHETTE.AsInteger := 1;
       Situazione.Post;
}
     end;

   end;

  finally
     FStampaAvvisi.Free;
     FStampaAvvisi := nil;
  end;

end;

function TFArchivioReferti.IsEmptyDataSet: Boolean;
begin
  if (dxPageControl.ActivePage=dxTabArchivio) then
     Result := CartellaEmptyDataset
  else
     Result := true;
end;

function TFArchivioReferti.CartellaEmptyDataset: boolean;
begin
  Result := (GridSituazione.DataController.FilteredRecordCount=0);
end;

procedure TFArchivioReferti.aAnamnesiExecute(Sender: TObject);
begin
  inherited;
{$IFNDEF MEDICORNER}
  InitAnamnesi(false,nil,'',SchedaPazientePKASSISTIBILI.AsInteger,true);
{$ENDIF}
end;

procedure TFArchivioReferti.aAnamnesiUpdate(Sender: TObject);
begin
  inherited;
  aAnamnesi.Enabled := (dxPageControl.ActivePage=dxTabArchivio) and
                        not SchedaPaziente.Eof and
                        (RecordAttuale<>-1) and
                        (SchedaPazientePKASSISTIBILI.AsInteger>0);

end;

procedure TFArchivioReferti.SitxDuplBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFArchivioReferti.GridOperazioniCustomization(Sender: TObject);
begin
  inherited;
  FCustomized := True;
end;

procedure TFArchivioReferti.GridRefertiCustomization(Sender: TObject);
begin
  inherited;
  FCustomized := True;
end;

procedure TFArchivioReferti.GridSituazioneCustomization(Sender: TObject);
begin
  inherited;
  FCustomized := True;
end;

procedure TFArchivioReferti.GridSitErroriCustomization(Sender: TObject);
begin
  inherited;
  FCustomized := True;
end;

procedure TFArchivioReferti.GridPrenotazioniCustomization(Sender: TObject);
begin
  inherited;
  FCustomized := True;
end;

procedure TFArchivioReferti.GridLogStoricoCustomization(Sender: TObject);
begin
  inherited;
  FCustomized := True;
end;

procedure TFArchivioReferti.cxGridDuplicatiDBTableView1Customization(
  Sender: TObject);
begin
  inherited;
  FCustomized := True;
end;

procedure TFArchivioReferti.cxNuoveAnagDBTableView1Customization(
  Sender: TObject);
begin
  inherited;
  FCustomized := True;
end;

procedure TFArchivioReferti.cxGridRefModificatiDBCustomization(
  Sender: TObject);
begin
  inherited;
  FCustomized := True;
end;

procedure TFArchivioReferti.cxGridSconosciutiDBSconosciutiCustomization(
  Sender: TObject);
begin
  inherited;
  FCustomized := True;
end;

procedure TFArchivioReferti.cxGridDBRicercaRefertiCustomization(
  Sender: TObject);
begin
  inherited;
  FCustomized := True;
end;

procedure TFArchivioReferti.cxGridDBRefACRCustomization(Sender: TObject);
begin
  inherited;
  FCustomized := True;
end;

procedure TFArchivioReferti.dxDataAccAlPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  Operazioni.Parambyname('data_dal').AsDateTime := dxDataAccDal.EditValue;
  Operazioni.Parambyname('data_al').AsDateTime := dxDataAccAl.EditValue;
  Operazioni.syRefresh;
end;

procedure TFArchivioReferti.GridOperazioniNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
  NBDI_FILTER+1:  begin
                      aEsportaExcel.Execute;
                      ADone := True;
                    end;
  end;
end;

procedure TFArchivioReferti.aEsportaExcelExecute(Sender: TObject);
var
  rf: TcxGrid;
  ADataController: TcxCustomDataController;
  AView: TcxGridDBTableView;
begin
  inherited;
  SaveDialog1.FileName := dxPageControl.Properties.ActivePage.Caption;
  rf := cxGridOperazioni;
  if SaveDialog1.Execute then
      begin
{ -- non va...
        with GridOperazioni.DataController do
        ADataController := GetDetailDataController(FocusedRecordIndex, 0);
        AView := TcxGridDBDataController(ADataController).GridView as TcxGridDBTableView;
        AView.MasterGridRecord.Expand(false);
        rf.FocusedView := AView;
        rf.ActiveLevel := TcxGridLevel(AView.Level);
}
        ExportGridToExcel(SaveDialog1.FileName, rf);
      end;

end;

procedure TFArchivioReferti.RefEsamiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
{
  Sender.Parambyname('data_dal').AsDateTime := dxDataAccDal.EditValue;
  Sender.Parambyname('data_al').AsDateTime := dxDataAccAl.EditValue;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
}
end;

procedure TFArchivioReferti.aImportaRefertoExecute(Sender: TObject);
var
  ms: TMemoryStream;
begin
  inherited;
  if OpenDialog1.Execute then
  begin
     Screen.Cursor := crHourGlass;
     ms := TMemoryStream.Create;
     try
       ms.LoadFromFile(OpenDialog1.FileName);
       ms.Position := 0;
{
       qCaricaReferto.ParamByName('pstudyuid').AsString := SituazioneRIS_STUDY_EUID.AsString;
       qCaricaReferto.ParamByName('preferto').AsStream := ms;
       qCaricaReferto.ParamByName('pprestazioni').AsInteger := SitEsamiPKPRESTAZIONI.AsInteger;
       qCaricaReferto.ParamByName('puserid').AsInteger := gblCodUtente;
       qCaricaReferto.ExecCommit;
}
       qCaricaReferto.Close;
       qCaricaReferto.OpenNoFetch;
       qCaricaReferto.Append;
       qCaricaRefertoRIS_STUDY_EUID.AsString := SituazioneRIS_STUDY_EUID.AsString;
       TBlobField(qCaricaRefertoREFERTO).LoadFromFile(OpenDialog1.FileName);
       qCaricaRefertoPKPRESTAZIONI.AsInteger := SitEsamiPKPRESTAZIONI.AsInteger;
       qCaricaRefertoUSER_ID.AsInteger := gblCodUtente;
       qCaricaReferto.Post;
       Situazione.RefreshRecord;
       ShowMessage(RS_RefertoCaricato);
     finally
        Screen.Cursor := crDefault;     
        ms.Free;
     end;
  end;
end;

procedure TFArchivioReferti.aImportaRefertoUpdate(Sender: TObject);
begin
  inherited;
  aImportaReferto.Enabled := (SitEsamiSTATO.AsInteger in [1,2]);
end;

initialization
  Classes.RegisterClass(TFArchivioReferti);

end.