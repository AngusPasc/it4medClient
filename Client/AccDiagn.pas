
{@@AccDiagn
  <title Esami da eseguire>

  Si compone di tre schede:

  calendario

  da eseguire

  eseguiti                  }
unit AccDiagn;

interface

uses
  BaseGrid,
  Forms, uVbDiagnList, Graphics, Types, BaseFrame, CutPaste, Messages, IIConsts,
  cxGridDBDataDefinitions, {}dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, cxBlobEdit, cxCalendar, cxTextEdit, cxMemo, cxCheckBox,
  cxContainer, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  cxSpinEdit, DBPlanner, Menus, UDXPopup, dxBar, dxBarExtItems,
  cxBarEditItem, cxClasses, rsStorage, rsPropSaver, Classes, ActnList,
  KSEventClient, AstaUpdateSQL, dxPSCore, dxPScxCommon, ExtCtrls, AstaDrv2,
  AstaClientDataset, cxMaskEdit, cxDropDownEdit, cxCheckComboBox, Planner,
  syDBPlanner, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxPC, Controls, rsXmlData,
  dxPScxSchedulerLnk, dxPSdxDBOCLnk, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
{$IFNDEF MEDICORNER}
AltrePreno,
{$ENDIF}
  dxPSdxLCLnk;
{$I syVer.inc}

type
  TFAccDiagn = class(TFBaseGrid)
    ActionList: TActionList;
    EsecuzioneEsame: TAction;
    sQyPreno: TDataSource;
    AlertEventList1: TKSAstaEventClient;
    TutteDiagnostiche: TAction;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarButton1: TdxBarButton;
    dxPageControl: TcxPageControl;
    dxTabPreno: TcxTabSheet;
    DBPlanner: TsyDBPlanner;
    DBDaySource: TDBDaySource;
    ResToPos: TAstaClientDataSet;
    ResToPosSERVIZI_FK: TIntegerField;
    ResToPosDESC_SERVIZIO: TStringField;
    dxEseguiti: TdxBarButton;
    dxCalendario: TdxBarButton;
    dxSubDiag: TdxBarSubItem;
    dxTutte: TdxBarButton;
    QyPreno: TAstaClientDataSet;
    rsPropSaver1: TrsPropSaver;
    dxBarSubItem1: TdxBarSubItem;
    dxConEsami: TdxBarButton;
    QyPrenoORA_INIZIO: TDateTimeField;
    QyPrenoORA_FINE: TDateTimeField;
    QyPrenoDATA_VISITA: TDateTimeField;
    QyPrenoNOME_PAZIENTE: TStringField;
    QyPrenoREPARTO: TStringField;
    QyPrenoSERVIZIO: TStringField;
    QyPrenoDIAGNOSTICA: TStringField;
    AccettaInterni: TAction;
    CancellaAccettato: TAction;
    RefreshDettagli: TAstaClientDataSet;
    RefreshDettagliPKPRESTAZIONI: TFloatField;
    RefreshDettagliTRIAGE_FK: TIntegerField;
    RefreshDettagliCODICE: TStringField;
    RefreshDettagliDESCRIZIONE: TStringField;
    RefreshDettagliDURATA: TIntegerField;
    RefreshDettagliPKCODICIRAD: TIntegerField;
    dxBarPopPreno: TdxBarPopupMenu;
    dxPopPreno: TdxPopupMenu;
    dxBarPopPlanner: TdxBarPopupMenu;
    dxPopPlanner: TdxPopupMenu;
    dxBarButton2: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton3: TdxBarButton;
    dxPeriodo: TdxBarCombo;
    QyPrenoDATA_NASCITA: TDateTimeField;
    aCut: TAction;
    aPaste: TAction;
    aEndPaste: TAction;
    AstaCut: TAstaDataSet;
    AstaDett: TAstaDataSet;
    AstaDettCODICE: TStringField;
    AstaDettDESCRIZIONE: TStringField;
    AstaDettPKCODICIRAD: TIntegerField;
    AstaDettDURATA: TIntegerField;
    AstaDettPKPRESTAZIONI: TFloatField;
    AstaDettTRIAGE_FK: TIntegerField;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    QyPrenoPROVENIENZA: TStringField;
    AstaCutPKTRIAGE: TIntegerField;
    AstaCutORA_INIZIO: TDateTimeField;
    AstaCutSTATOVISITA: TIntegerField;
    AstaCutDURATA: TIntegerField;
    AstaCutORA_FINE: TDateTimeField;
    AstaCutRIC_ANTICIPO: TStringField;
    AstaCutASSISTIBILI_FK: TIntegerField;
    AstaCutUSER_ID: TIntegerField;
    AstaCutREPARTI_FK: TIntegerField;
    AstaCutDIAGNOSTICA_FK: TIntegerField;
    AstaCutNOME_PAZIENTE: TStringField;
    AstaCutDATA_NASCITA: TDateTimeField;
    AstaCutTELEFONO: TStringField;
    AstaCutPROVENIENZA: TStringField;
    AccettaEsterni: TAction;
    TriagexImpegnative: TAstaClientDataSet;
    TriagexImpegnativePKTRIAGE: TIntegerField;
    dxBarButton7: TdxBarButton;
    AccettaPS: TAction;
    dxBarButton8: TdxBarButton;
    TriagexImpegnativeDURATA: TIntegerField;
    StampaEtichette: TAction;
    dxStmpaEtichette: TdxBarButton;
    ModificaxImpegnative: TAstaClientDataSet;
    ModificaxImpegnativePKTRIAGE: TIntegerField;
    ModificaxImpegnativeDURATA: TIntegerField;
    dxTabElenco: TcxTabSheet;
    cxGridDaEseguire: TcxGrid;
    GridDaEseguire: TcxGridDBTableView;
    GridDaEseguireORA_INIZIO: TcxGridDBColumn;
    GridDaEseguireNOMEDIAGNOSTICA: TcxGridDBColumn;
    GridDaEseguireNOME_PAZIENTE: TcxGridDBColumn;
    GridDaEseguireDATA_NASCITA: TcxGridDBColumn;
    GridDaEseguireREPARTO: TcxGridDBColumn;
    GridDaEseguireSERVIZIO: TcxGridDBColumn;
    cxGridDaEseguireLevel1: TcxGridLevel;
    dxDaEseguire: TdxBarButton;
    GridDaEseguirePKTRIAGE: TcxGridDBColumn;
    QyEseguiti: TAstaClientDataSet;
    QyEseguitiPKTRIAGE: TIntegerField;
    QyEseguitiURGENZA: TIntegerField;
    QyEseguitiDIAGNOSTICA_FK: TIntegerField;
    QyEseguitiORA_INIZIO: TDateTimeField;
    QyEseguitiORA_FINE: TDateTimeField;
    QyEseguitiDATA_VISITA: TDateTimeField;
    QyEseguitiUSER_ID: TIntegerField;
    QyEseguitiSTATOVISITA: TIntegerField;
    QyEseguitiREPARTI_FK: TIntegerField;
    QyEseguitiASSISTIBILI_FK: TIntegerField;
    QyEseguitiNOME_PAZIENTE: TStringField;
    QyEseguitiREPARTO: TStringField;
    QyEseguitiSERVIZIO: TStringField;
    QyEseguitiDIAGNOSTICA: TStringField;
    QyEseguitiDURATA: TIntegerField;
    QyEseguitiDATA_NASCITA: TDateTimeField;
    QyEseguitiPROVENIENZA: TStringField;
    QyEseguitiIMPEGNATIVE_FK: TIntegerField;
    sQyEseguiti: TDataSource;
    dxBarPopElenco: TdxBarPopupMenu;
    Timer1: TTimer;
    aCorreggiAccettazione: TAction;
    dxBarButton9: TdxBarButton;
    RiportaStandard: TAction;
    dxBarButton10: TdxBarButton;
    Personalizza: TAction;
    dxBarButton11: TdxBarButton;
    dxTabEseguiti: TcxTabSheet;
    cxGridEseguiti: TcxGrid;
    GridEseguiti: TcxGridDBTableView;
    GridEseguitiPKTRIAGE: TcxGridDBColumn;
    GridEseguitiORA_INIZIO: TcxGridDBColumn;
    GridEseguitiNOMEDIAGNOSTICA: TcxGridDBColumn;
    GridEseguitiNOME_PAZIENTE: TcxGridDBColumn;
    GridEseguitiDATA_NASCITA: TcxGridDBColumn;
    GridEseguitiREPARTO: TcxGridDBColumn;
    GridEseguitiSERVIZIO: TcxGridDBColumn;
    GridEseguitiDESCSTATOVISITA: TcxGridDBColumn;
    GridEseguitiSTATOVISITA: TcxGridDBColumn;
    cxGridEseguitiLevel1: TcxGridLevel;
    QyEseguitiDESCSTATOVISITA: TStringField;
    GridDaEseguireSTATOVISITA: TcxGridDBColumn;
    RiportaDaEseguire: TAction;
    dxBarButton12: TdxBarButton;
    dxBarPopEseguiti: TdxBarPopupMenu;
    TriagexImpegnativeSTATOVISITA: TIntegerField;
    ModificaxImpegnativeSTATOVISITA: TIntegerField;
    Aggiorna: TAction;
    dxRefresh: TdxBarButton;
    QyPrenoDESCSTATOVISITA: TStringField;
    GridDaEseguireDESCSTATOVISITA: TcxGridDBColumn;
    aRitornoInRichieste: TAction;
    RitornaDaAcc: TAstaClientDataSet;
    dxBarButton13: TdxBarButton;
    Storico: TAction;
    dxBarButton14: TdxBarButton;
    ModificaAnagrafica: TAction;
    dxBarButton15: TdxBarButton;
    qryUser: TAstaClientDataSet;
    qryUserREAL_NAME: TStringField;
    qryUserUSER_PWD: TStringField;
    qryUserUSER_ID: TIntegerField;
    qryUserMATRICOLA: TStringField;
    qryUserISADMIN: TIntegerField;
    qryUserPROFILO_VOCALE: TStringField;
    qryUserCOD_FUNZIONE: TIntegerField;
    qryUserPKPERSONALE: TIntegerField;
    TriagexImpegnativeIMPEGNATIVE_FK: TIntegerField;
    TriagexImpegnativePROVENIENZA: TStringField;
    LkDiagxWk: TAstaClientDataSet;
    LkDiagxWkDESCRIZ: TStringField;
    LkDiagxWkPKSERVIZI: TIntegerField;
    GridEseguitiURGENZA: TcxGridDBColumn;
    GridDaEseguireURGENZA: TcxGridDBColumn;
    dxAutoSize: TdxBarButton;
    GridEseguitiPROVENIENZA: TcxGridDBColumn;
    StampaGrigliaDaEseguire: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    dxPrintListaAccettati: TdxGridReportLink;
    dxPrintListaPrenotati: TdxGridReportLink;
    dxBarButton16: TdxBarButton;
    StampaGrigliaEseguiti: TAction;
    dxBarButton17: TdxBarButton;
    cxGridDaEseguireLevel2: TcxGridLevel;
    GridDaEseguireDettagli: TcxGridDBTableView;
    sqDettEseguiti: TDataSource;
    GridDaEseguireDettagliCODICE: TcxGridDBColumn;
    GridDaEseguireDettagliDESCRIZIONE: TcxGridDBColumn;
    GridDaEseguireDettagliDURATA: TcxGridDBColumn;
    qCancVisita: TAstaClientDataSet;
    AstaCutIMPEGNATIVE_FK: TIntegerField;
    QyDaAcc: TAstaClientDataSet;
    QyDaAccPKTRIAGE: TIntegerField;
    QyDaAccORA_INIZIO: TDateTimeField;
    QyDaAccDURATA: TIntegerField;
    QyDaAccPROVENIENZA: TStringField;
    QyDaAccIMPEGNATIVE_FK: TIntegerField;
    QyDaAccDIAGNOSTICA_FK: TIntegerField;
    QyDaAccNOME_PAZIENTE: TStringField;
    QyDaAccDATA_NASCITA: TDateTimeField;
    QyDaAccSTATOVISITA: TIntegerField;
    QyDaAccDIAGNOSTICA: TStringField;
    QyDaAccUSER_ID: TIntegerField;
    sQyDaAcc: TDataSource;
    QyDaAccDATA_PRESCRIZIONE: TDateTimeField;
    QyDaAccNOMEREPARTO: TStringField;
    QyDaAccEsami: TAstaClientDataSet;
    QyDaAccEsamiCODICE: TStringField;
    QyDaAccEsamiDESCRIZIONE: TStringField;
    QyDaAccEsamiDURATA: TIntegerField;
    QyDaAccEsamiPKPRESTAZIONI: TFloatField;
    QyDaAccEsamiTRIAGE_FK: TIntegerField;
    QyDaAccEsamiPKCODICIRAD: TIntegerField;
    QyDaAccEsamiIDENT_FK: TStringField;
    sQyDaAccEsami: TDataSource;
    QyDaAccORA_FINE: TDateTimeField;
    QyEseguitiREPARTO_RICH_FK: TIntegerField;
    TriagexImpegnativeDIAGNOSTICA_FK: TIntegerField;
    QyDaAccURGENZA: TIntegerField;
    dxBarPopRiaccetta: TdxBarPopupMenu;
    ApriTutti: TAction;
    ChiudiTutti: TAction;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    LkDiagxWkSLOT_STANDARD: TIntegerField;
    QyEseguitiAGENDE_FK: TIntegerField;
    QyEseguitiTIPO_ATTIVITA_FK: TStringField;
    AstaCutTIPO_ATTIVITA_FK: TStringField;
    QyPrenoTIPO_ATTIVITA_FK: TStringField;
    QyDaAccTIPO_ATTIVITA_FK: TStringField;
    qUpdQyDaAcc: TAstaUpdateSQL;
    aSalaOperatoria: TAction;
    dxScopieInSala: TdxBarButton;
    GridDaEseguireESAMI_IN_REPARTO: TcxGridDBColumn;
    QyEseguitiESAMI_IN_REPARTO: TIntegerField;
    GridEseguitiESAMI_IN_REPARTO: TcxGridDBColumn;
    QyDaAccESAMI_IN_REPARTO: TIntegerField;
    aRitornaPrenotato: TAction;
    dxBarButton21: TdxBarButton;
    QyDaAccDATA_ACCETTAZIONE: TDateTimeField;
    QyPrenoDATA_ACCETTAZIONE: TDateTimeField;
    aCancellaRichiesta: TAction;
    dxBarButton22: TdxBarButton;
    aStoricoRichieste: TAction;
    dxBarButton23: TdxBarButton;
    ModInternoEsterno: TAction;
    dxBarButton24: TdxBarButton;
    GridDaEseguireQUESITO_DIAGN: TcxGridDBColumn;
    cxGridEseguitiLevel2: TcxGridLevel;
    GridEseguitiDettagli: TcxGridDBTableView;
    GridEseguitiDettagliCODICE: TcxGridDBColumn;
    GridEseguitiDettagliDESCRIZIONE: TcxGridDBColumn;
    dxPrintListaRichieste: TdxGridReportLink;
    StampaListaRichieste: TAction;
    dxBarButton25: TdxBarButton;
    qyPrenoDett: TAstaClientDataSet;
    qyPrenoDettPKPRESTAZIONI: TFloatField;
    qyPrenoDettCODICE: TStringField;
    qyPrenoDettDESCRIZIONE: TStringField;
    qyPrenoDettDOSE: TFloatField;
    sqyPrenoDett: TDataSource;
    aModRichiesta: TAction;
    QyPrenoDESCTIPOATTIVITA: TStringField;
    GridDaEseguireDESCTIPOATTIVITA: TcxGridDBColumn;
    QyEseguitiDESCTIPOATTIVITA: TStringField;
    GridEseguitiDESCTIPOATTIVITA: TcxGridDBColumn;
    GridDaEseguireASSISTIBILI_FK: TcxGridDBColumn;
    dxAttivaQuesito: TdxBarButton;
    aAttivaQuesito: TAction;
    GridDaEseguirePROVENIENZA: TcxGridDBColumn;
    QyPrenoSERVRAD: TStringField;
    GridDaEseguireSERVRAD: TcxGridDBColumn;
    QyEseguitiSERVRAD: TStringField;
    GridEseguitiSERVRAD: TcxGridDBColumn;
    dxSingolaDiagn: TdxBarButton;
    QyPrenoRIS_STUDY_EUID: TStringField;
    GridDaEseguireORA_SOMMIN: TcxGridDBColumn;
    QyDaAccORA_SOMMIN: TDateTimeField;
    QyPrenoORA_SOMMIN: TDateTimeField;
    aCambiaSomministrazione: TAction;
    dxBarButton26: TdxBarButton;
    QyEseguitiMEDFIRMA: TStringField;
    GridEseguitiMEDFIRMA: TcxGridDBColumn;
    LkDiagxWkDESC_REPARTO: TStringField;
    AstaCutAGENDE_FK: TIntegerField;
    QyDaAccAGENDE_FK: TIntegerField;
    dxAvvisi: TdxBarButton;
    dxBarButton27: TdxBarButton;
    LkDiagxWkSERVRAD_FK: TIntegerField;
    QyEseguitiTECNICO: TStringField;
    GridEseguitiTECNICO: TcxGridDBColumn;
    aModServizio: TAction;
    dxBarButton28: TdxBarButton;
    aPrecedenti: TAction;
    dxBarButton29: TdxBarButton;
    GridEseguitiDATA_VISITA: TcxGridDBColumn;
    GridDaEseguireDettagliMAGART_FK: TcxGridDBColumn;
    GridDaEseguireDettagliQR: TcxGridDBColumn;
    QyPrenoNOTE_PRENO: TStringField;
    GridDaEseguireNOTE_PRENO: TcxGridDBColumn;
    QyDaAccNOTE_PRENO: TStringField;
    LkDiagxWkTIPO_DIAGN: TIntegerField;
    dxAttivaRefresh: TdxBarButton;
    GridDaEseguireDettagliSTATO: TcxGridDBColumn;
    GridEseguitiDettagliSTATO: TcxGridDBColumn;
    RefreshDettagliSTATO: TIntegerField;
    QyPrenoPLACER_ORDER_NUMBER: TStringField;
    QyEseguitiPLACER_ORDER_NUMBER: TStringField;
    QyDaAccPLACER_ORDER_NUMBER: TStringField;
    QyEseguitiNOTE_PRENO: TStringField;
    GridEseguitiNOTE_PRENO: TcxGridDBColumn;
    aModTecnicoEsecutore: TAction;
    QyEseguitiPERSONALE_FK: TIntegerField;
    dxBarButton30: TdxBarButton;
    AssegnaMedico: TAction;
    QyEseguitiCOD_MED_FIRMA: TIntegerField;
    dxBarButton31: TdxBarButton;
    GridDaEseguireLIV_SCR: TcxGridDBColumn;
    GridDaEseguireNUMERO_FIRMA: TcxGridDBColumn;
    RefreshDettagliIDENT_FK: TStringField;
    GridEseguitiDettagliIDENT_FK: TcxGridDBColumn;
    qyPrenoDettIDENT_FK: TStringField;
    GridDaEseguireDettagliIDENT_FK: TcxGridDBColumn;
    dxDettaglioEspanso: TdxBarButton;
    AllieviTecnici: TAstaClientDataSet;
    AllieviTecniciCOGNOME: TStringField;
    AllieviTecniciNOME: TStringField;
    AllieviTecniciPKPERSONALE: TIntegerField;
    AllieviTecniciNOMINATIVO: TStringField;
    LkListeRefertazione: TAstaClientDataSet;
    LkListeRefertazioneDESCRIZ: TStringField;
    LkListeRefertazionePKSERVIZI: TIntegerField;
    aInfoOperatore: TAction;
    dxBarButton32: TdxBarButton;
    QyPrenoTIPO_ACCESSO: TStringField;
    QyEseguitiTIPO_ACCESSO: TStringField;
    QyDaAccTIPO_ACCESSO: TStringField;
    qyPrenoDettQR: TFloatField;
    QyDaAccEsamiMAGART_FK: TIntegerField;
    QyDaAccEsamiQR: TFloatField;
    AstaDettMAGART_FK: TIntegerField;
    AstaDettQR: TFloatField;
    GridDaEseguireRIS_STUDY_EUID: TcxGridDBColumn;
    dxgiornilista: TcxBarEditItem;
    dxGiorniRicerca: TcxBarEditItem;
    aCambiaGiorniSelezione: TAction;
    cxGridRichieste: TcxGrid;
    GridRichieste: TcxGridDBTableView;
    GridRichiesteDATA_PRESCRIZIONE: TcxGridDBColumn;
    GridRichiesteNOMEREPARTO: TcxGridDBColumn;
    GridRichiestePKTRIAGE: TcxGridDBColumn;
    GridRichiesteNOME_PAZIENTE: TcxGridDBColumn;
    GridRichiesteDATA_NASCITA: TcxGridDBColumn;
    GridRichiesteIMPEGNATIVE_FK: TcxGridDBColumn;
    GridRichiesteDIAGNOSTICA_FK: TcxGridDBColumn;
    GridRichiesteDIAGNOSTICA: TcxGridDBColumn;
    GridRichiesteURGENZA: TcxGridDBColumn;
    GridRichiesteESAMI_IN_REPARTO: TcxGridDBColumn;
    GridRichiesteQUESITO_DIAGN: TcxGridDBColumn;
    GridRichiesteTIPO_ATTIVITA_FK: TcxGridDBColumn;
    GridRichiesteNOTE_PRENO: TcxGridDBColumn;
    GridRichiesteDettagli: TcxGridDBTableView;
    GridRichiesteDettagliCODICE: TcxGridDBColumn;
    GridRichiesteDettagliDESCRIZIONE: TcxGridDBColumn;
    GridRichiesteDettagliDURATA: TcxGridDBColumn;
    GridRichiesteDettagliPKPRESTAZIONI: TcxGridDBColumn;
    GridRichiesteDettagliTRIAGE_FK: TcxGridDBColumn;
    GridRichiesteDettagliPKCODICIRAD: TcxGridDBColumn;
    GridRichiesteDettagliIDENT_FK: TcxGridDBColumn;
    GridRichiesteDettagliMAGART_FK: TcxGridDBColumn;
    GridRichiesteDettagliQR: TcxGridDBColumn;
    cxGridRichiesteLevel1: TcxGridLevel;
    cxGridRichiesteLevel2: TcxGridLevel;
    dxBarDockControl1: TdxBarDockControl;
    dxVisualizzaPreno: TdxBarButton;
    RefreshDettagliMAGART_FK: TIntegerField;
    RefreshDettagliQR: TFloatField;
    GridEseguitiDettagliMAGART_FK: TcxGridDBColumn;
    GridEseguitiDettagliQR: TcxGridDBColumn;
    aControllaImmagini: TAction;
    dxBarButton35: TdxBarButton;
    qryUserSUPERUSER: TIntegerField;
    qryUserESEGUITO: TIntegerField;
    QyEseguitiRIS_STUDY_EUID: TStringField;
    QyDaAccRIS_STUDY_EUID: TStringField;
    GridEseguitiRIS_STUDY_EUID: TcxGridDBColumn;
    QyPrenoPID: TStringField;
    GridDaEseguirePID: TcxGridDBColumn;
    QyDaAccSAN_IDENT: TIntegerField;
    QyDaAccASSISTIBILI_FK: TIntegerField;
    QyDaAccSERVIZI_FK: TIntegerField;
    RefreshDettagliNUMERO_PRESTAZIONE: TIntegerField;
    GridEseguitiDettagliNUMERO_PRESTAZIONE: TcxGridDBColumn;
    GridDaEseguireDettagliNUMERO_PRESTAZIONE: TcxGridDBColumn;
    QyDaAccEsamiNUMERO_PRESTAZIONE: TIntegerField;
    GridRichiesteDettagliNUMERO_PRESTAZIONE: TcxGridDBColumn;
    AstaDettNUMERO_PRESTAZIONE: TIntegerField;
    aCreazioneCD: TAction;
    QyEseguitiCEIMMAGINI: TIntegerField;
    dxBarButton36: TdxBarButton;
    EventLogCD: TKSAstaEventClient;
    QyEseguitiCD_CREATO: TIntegerField;
    GridEseguitiCD_CREATO: TcxGridDBColumn;
    aAttivaAltreRich: TAction;
    dxAltreRichieste: TdxBarButton;
    GridRichiesteNRALTRE: TcxGridDBColumn;
    aAltreRichieste: TAction;
    dxBarButton37: TdxBarButton;
    dxGiorniDal: TcxBarEditItem;
    aCambiaDataSelezione: TAction;
    QyDaAccREPARTO: TStringField;
    QyDaAccINCOMPLETA: TIntegerField;
    dxDockPanel1: TPanel;
    dxDockPanel2: TPanel;
    LkDiagxWkPKDIAGXWK: TIntegerField;
    LkDiagxWkSELEZIONATA: TIntegerField;
    QyPrenoPKTRIAGE: TIntegerField;
    QyPrenoURGENZA: TIntegerField;
    QyPrenoESAMI_IN_REPARTO: TIntegerField;
    QyPrenoREPARTO_RICH_FK: TIntegerField;
    QyPrenoDIAGNOSTICA_FK: TIntegerField;
    QyPrenoUSER_ID: TIntegerField;
    QyPrenoSTATOVISITA: TIntegerField;
    QyPrenoREPARTI_FK: TIntegerField;
    QyPrenoIMPEGNATIVE_FK: TIntegerField;
    QyPrenoASSISTIBILI_FK: TIntegerField;
    QyPrenoCOD_MED_VALIDA: TIntegerField;
    QyPrenoNUMERO_FIRMA: TIntegerField;
    QyPrenoLIV_SCR: TIntegerField;
    QyPrenoDURATA: TIntegerField;
    QyPrenoAGENDE_FK: TIntegerField;
    QyPrenoSERVIZI_FK: TIntegerField;
    QyPrenoSAN_IDENT: TIntegerField;
    QyPrenoTIPO_FATTURA: TIntegerField;
    QyPrenoINCOMPLETA: TIntegerField;
    qyPrenoDettTRIAGE_FK: TIntegerField;
    qyPrenoDettSTATO: TIntegerField;
    qyPrenoDettPKCODICIRAD: TIntegerField;
    qyPrenoDettDURATA: TIntegerField;
    qyPrenoDettNUMERO_PRESTAZIONE: TIntegerField;
    qyPrenoDettMAGART_FK: TIntegerField;
    qDettEseguiti: TAstaClientDataSet;
    qDettEseguitiPKPRESTAZIONI: TFloatField;
    qDettEseguitiTRIAGE_FK: TIntegerField;
    qDettEseguitiPKCODICIRAD: TIntegerField;
    qDettEseguitiCODICE: TStringField;
    qDettEseguitiDESCRIZIONE: TStringField;
    qDettEseguitiDURATA: TIntegerField;
    qDettEseguitiSTATO: TIntegerField;
    qDettEseguitiIDENT_FK: TStringField;
    qDettEseguitiNUMERO_PRESTAZIONE: TIntegerField;
    qDettEseguitiMAGART_FK: TIntegerField;
    qDettEseguitiQR: TFloatField;
    QyDaAccEsamiDOSE: TFloatField;
    sLkDiagxWk: TDataSource;
    QyPrenoCOLORE: TIntegerField;
    QyPrenoICONA: TIntegerField;
    QyPrenoDESCPROVENIENZA: TStringField;
    QyPrenoSET_COLORI_FK: TIntegerField;
    QyPrenoEVENT_TYPE: TIntegerField;
    QyPrenoOPTIONS: TIntegerField;
    AstaDettPROGRESSIVO_RIGA: TIntegerField;
    RefreshDettagliPROGRESSIVO_RIGA: TIntegerField;
    qyPrenoDettPROGRESSIVO_RIGA: TIntegerField;
    qDettEseguitiPROGRESSIVO_RIGA: TIntegerField;
    QyDaAccEsamiPROGRESSIVO_RIGA: TIntegerField;
    QyDaAccREPARTI_FK: TIntegerField;
    dxData: TcxBarEditItem;
    dxRichDal: TcxBarEditItem;
    dxRichAl: TcxBarEditItem;
    QyDaAccQUESITO_DIAGN: TStringField;
    QyPrenoQUESITO_DIAGN: TStringField;
    QyPrenoIMAGEINDEX: TIntegerField;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    cxCheckEsami: TcxCheckComboBox;
    dxBarlblEsami: TdxBarStatic;
    QyEseguitiTIPO_FATTURA: TIntegerField;
    QyDaAccTIPO_FATTURA: TIntegerField;
    dxChiudiTutte: TdxBarButton;
    DeselezionaTutte: TAction;
    GridDaEseguireTIPO_ACCESSO: TcxGridDBColumn;
    GridEseguitiTIPO_ACCESSO: TcxGridDBColumn;
    QyDaAccREPARTO_RICH_FK: TIntegerField;
    QyDaAccPID: TStringField;
    GridRichiestePID: TcxGridDBColumn;
    aNoteRichiesta: TAction;
    dxBarButton38: TdxBarButton;
    GridDaEseguireDESCESAME: TcxGridDBColumn;
    dxAnchePreno: TdxBarButton;
    QyPrenoPROG_ACC: TIntegerField;
    GridDaEseguirePROG_ACC: TcxGridDBColumn;
    QyEseguitiPROG_ACC: TIntegerField;
    GridEseguitiPROG_ACC: TcxGridDBColumn;
    dxProgAcc: TdxBarButton;
    aSelezionaTutti: TAction;
    dxBarButton33: TdxBarButton;
    QyEseguitiPID: TStringField;
    qyPrenoDettBRANCA: TStringField;
    qDettEseguitiBRANCA: TStringField;
    qyPrenoDettDESCBRANCA: TStringField;
    GridDaEseguireDettagliDESCBRANCA: TcxGridDBColumn;
    qDettEseguitiDESCBRANCA: TStringField;
    GridEseguitiDettagliDESCBRANCA: TcxGridDBColumn;
    QyPrenoCODICE_FISCALE: TStringField;
    QyEseguitiCODICE_FISCALE: TStringField;
    QyDaAccCODICE_FISCALE: TStringField;
    qyPrenoDettDEVICE: TIntegerField;
    GridDaEseguireDettagliDEVICE: TcxGridDBColumn;
    qDettEseguitiDEVICE: TIntegerField;
    GridEseguitiDettagliDEVICE: TcxGridDBColumn;
    RefreshDettagliBRANCA: TStringField;
    RefreshDettagliDESCBRANCA: TStringField;
    RefreshDettagliDEVICE: TIntegerField;
    procedure EsecuzioneEsameExecute(Sender: TObject);
    procedure EsecuzioneEsameUpdate(Sender: TObject);
    procedure TutteDiagnosticheExecute(Sender: TObject);
    procedure DBDaySourceFieldsToItem(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure DBDaySourceGetResourceName(Sender: TObject;
      ResourceIndex: Integer; var ResourceName: String);
    procedure DBDaySourcePositionToResource(Sender: TObject; Field: TField;
      Position: Integer);
    procedure DBDaySourceResourceToPosition(Sender: TObject; Field: TField;
      var Position: Integer; var Accept: Boolean);
    procedure dxEseguitiClick(Sender: TObject);
    procedure dxCalendarioClick(Sender: TObject);
    procedure DBPlannerItemDblClick(Sender: TObject; Item: TPlannerItem);
    procedure ResToPosBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure DBPlannerPlannerGetBrush(Sender: TObject; Pos,
      Index: Integer; ABrush: TBrush);
    procedure QyPrenoBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure dxConEsamiClick(Sender: TObject);
    procedure QyPrenoNewRecord(DataSet: TDataSet);
    procedure DBDaySourceCreateKey(Sender: TObject;
      APlannerItem: TPlannerItem; var Key: String);
    procedure DBDaySourceItemToFields(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure DBPlannerItemHint(Sender: TObject; Item: TPlannerItem;
      var Hint: String);
    procedure DBDaySourceChangeQuery(Sender: TObject);
    procedure AccettaInterniExecute(Sender: TObject);
    procedure CancellaAccettatoExecute(Sender: TObject);
    procedure QyPrenoBeforePost(DataSet: TDataSet);
    procedure AlertEventList1DataSets0AfterActiveEvent(Sender: ToelItem;
      op: Char; ParamList: TInternalAstaParamList);
    procedure AlertEventList1DataSets0AcceptActiveEvent(Sender: ToelItem;
      var op: Char; ParamList: TInternalAstaParamList;
      var Accept: Boolean);
    procedure CancellaAccettatoUpdate(Sender: TObject);
    procedure DBDaySourceCodeResourceToPosition(Sender: TObject;
      Code: Integer; var Position: Integer);
    procedure DBPlannerPlannerDblClick(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise, mX, mY: Integer);
    procedure DBPlannerDragDropCell(Sender, Source: TObject; X, Y, mX,
      mY: Integer);
    procedure DBPlannerDragOverItem(Sender, Source: TObject; X, Y: Integer;
      APlannerItem: TPlannerItem; State: TDragState; var Accept: Boolean);
    procedure dxPeriodoChange(Sender: TObject);
    procedure DBPlannerPlannerGetZone(Sender: TObject; Pos: Integer;
      xRect: TRect; aZone: TList; var xcolor: TColor);
    procedure DBDaySourceResetFilter(Sender: TObject);
    procedure AccettaInterniUpdate(Sender: TObject);
    procedure DBPlannerItemMoving(Sender: TObject; Item: TPlannerItem;
      DeltaBegin, DeltaPos: Integer; var Allow: Boolean);
    procedure DBPlannerItemSizing(Sender: TObject; Item: TPlannerItem;
      DeltaBegin, DeltaEnd: Integer; var Allow: Boolean);
    procedure DBPlannerSideBarDblClick(Sender: TObject; X, Y: Integer;
      Anchor: String);
    procedure aCutExecute(Sender: TObject);
    procedure aCutUpdate(Sender: TObject);
    procedure aPasteExecute(Sender: TObject);
    procedure aPasteUpdate(Sender: TObject);
    procedure aEndPasteExecute(Sender: TObject);
    procedure aEndPasteUpdate(Sender: TObject);
    procedure ChiudiCutPaste(var Message: TMessage); message SY_CHIUDICUTPASTE;
    procedure AccettaEsterniExecute(Sender: TObject);
    procedure AccettaPSExecute(Sender: TObject);
    procedure StampaEtichetteExecute(Sender: TObject);
    procedure AccettaPSUpdate(Sender: TObject);
    procedure dxDaEseguireClick(Sender: TObject);
    procedure StampaEtichetteUpdate(Sender: TObject);
    procedure GridDaEseguireDblClick(Sender: TObject);
    procedure QyEseguitiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure Timer1Timer(Sender: TObject);
    procedure aCorreggiAccettazioneExecute(Sender: TObject);
    procedure aCorreggiAccettazioneUpdate(Sender: TObject);
    procedure RiportaStandardExecute(Sender: TObject);
    procedure PersonalizzaExecute(Sender: TObject);
    procedure GridDaEseguireKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AlertEventList1SetActive(Sender: TKSAstaEventClient);
    procedure GridEseguitiDblClick(Sender: TObject);
    procedure GridEseguitiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AlertEventList1DataSets1AcceptActiveEvent(Sender: ToelItem;
      var op: Char; ParamList: TInternalAstaParamList;
      var Accept: Boolean);
    procedure AccettaEsterniUpdate(Sender: TObject);
    procedure RiportaDaEseguireExecute(Sender: TObject);
    procedure RiportaDaEseguireUpdate(Sender: TObject);
    procedure AggiornaExecute(Sender: TObject);
    procedure aRitornoInRichiesteExecute(Sender: TObject);
    procedure aRitornoInRichiesteUpdate(Sender: TObject);
    procedure StoricoExecute(Sender: TObject);
    procedure StoricoUpdate(Sender: TObject);
    procedure ModificaAnagraficaExecute(Sender: TObject);
    procedure ModificaAnagraficaUpdate(Sender: TObject);
    procedure qryUserBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure LkDiagxWkBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure dxAutoSizeClick(Sender: TObject);
    procedure StampaGrigliaDaEseguireExecute(Sender: TObject);
    procedure StampaGrigliaDaEseguireUpdate(Sender: TObject);
    procedure StampaGrigliaEseguitiExecute(Sender: TObject);
    procedure StampaGrigliaEseguitiUpdate(Sender: TObject);
    procedure DBPlannerDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure QyDaAccBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure AlertEventList1DataSets2AcceptActiveEvent(Sender: ToelItem;
      var op: Char; ParamList: TInternalAstaParamList;
      var Accept: Boolean);
    procedure ApriTuttiExecute(Sender: TObject);
    procedure ChiudiTuttiExecute(Sender: TObject);
    procedure AlertEventList1DataSets2AfterActiveEvent(Sender: ToelItem;
      op: Char; ParamList: TInternalAstaParamList);
    procedure aSalaOperatoriaExecute(Sender: TObject);
    procedure aSalaOperatoriaUpdate(Sender: TObject);
    procedure aRitornaPrenotatoExecute(Sender: TObject);
    procedure aRitornaPrenotatoUpdate(Sender: TObject);
    procedure aCancellaRichiestaExecute(Sender: TObject);
    procedure aCancellaRichiestaUpdate(Sender: TObject);
    procedure aStoricoRichiesteExecute(Sender: TObject);
    procedure aStoricoRichiesteUpdate(Sender: TObject);
    procedure ModInternoEsternoExecute(Sender: TObject);
    procedure ModInternoEsternoUpdate(Sender: TObject);
    procedure DBPlannerDragDropItem(Sender, Source: TObject; X, Y: Integer;
      PlannerItem: TPlannerItem);
    procedure StampaListaRichiesteExecute(Sender: TObject);
    procedure qyPrenoDettBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure aModRichiestaExecute(Sender: TObject);
    procedure GridRichiesteDblClick(Sender: TObject);
    procedure aModRichiestaUpdate(Sender: TObject);
    procedure GridRichiesteDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure GridRichiesteDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure aAttivaQuesitoExecute(Sender: TObject);
    procedure dxSingolaDiagnClick(Sender: TObject);
    procedure aCambiaSomministrazioneExecute(Sender: TObject);
    procedure aCambiaSomministrazioneUpdate(Sender: TObject);
    procedure aModServizioExecute(Sender: TObject);
    procedure aModServizioUpdate(Sender: TObject);
    procedure aPrecedentiExecute(Sender: TObject);
    procedure DBPlannerDragOverCell(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean; mx, my: Integer);
    procedure aModTecnicoEsecutoreExecute(Sender: TObject);
    procedure aModTecnicoEsecutoreUpdate(Sender: TObject);
    procedure AssegnaMedicoExecute(Sender: TObject);
    procedure AssegnaMedicoUpdate(Sender: TObject);
    procedure GridRichiesteNOTE_PRENOPropertiesPopup(Sender: TObject);
    procedure GridRichiesteNOTE_PRENOPropertiesCloseUp(
      Sender: TObject);
    procedure GridDaEseguireNOTE_PRENOPropertiesPopup(Sender: TObject);
    procedure GridDaEseguireNOTE_PRENOPropertiesCloseUp(Sender: TObject);
    procedure GridEseguitiNOTE_PRENOPropertiesPopup(Sender: TObject);
    procedure GridEseguitiNOTE_PRENOPropertiesCloseUp(Sender: TObject);
    procedure AllieviTecniciBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure LkListeRefertazioneBeforeQuery(
      Sender: TAstaBaseClientDataSet);
    procedure aInfoOperatoreExecute(Sender: TObject);
    procedure aInfoOperatoreUpdate(Sender: TObject);
    procedure DBPlannerItemAnchorClick(Sender: TObject; Item: TPlannerItem;
      Anchor: String);
    procedure dxgiornilistaChange(Sender: TObject);
    procedure aCambiaGiorniSelezioneExecute(Sender: TObject);
    procedure dxVisualizzaPrenoClick(Sender: TObject);
    procedure aControllaImmaginiExecute(Sender: TObject);
    procedure aControllaImmaginiUpdate(Sender: TObject);
    procedure aCreazioneCDExecute(Sender: TObject);
    procedure aCreazioneCDUpdate(Sender: TObject);
    procedure EventLogCDDataSets0AcceptActiveEvent(Sender: ToelItem;
      var op: Char; ParamList: TInternalAstaParamList;
      var Accept: Boolean);
    procedure aAttivaAltreRichExecute(Sender: TObject);
    procedure aAltreRichiesteExecute(Sender: TObject);
    procedure aAltreRichiesteUpdate(Sender: TObject);
    procedure aCambiaDataSelezioneExecute(Sender: TObject);
    procedure dxGiorniDalCurChange(Sender: TObject);
    procedure dxGiorniRicercaCurChange(Sender: TObject);
    procedure dxSubDiagCloseUp(Sender: TObject);
    procedure qDettEseguitiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure QyDaAccEsamiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure dxDataPropertiesCloseUp(Sender: TObject);
    procedure dxRichDalPropertiesCloseUp(Sender: TObject);
    procedure dxRichAlPropertiesCloseUp(Sender: TObject);
    procedure DBPlannerPlannerRightClick(Sender: TObject; Position,
      FromSel, FromSelPrecise, ToSel, ToSelPrecise, mX, mY: Integer);
    procedure GridEseguitiNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure GridDaEseguireNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure GridRichiesteNavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure qyPrenoDettAfterPopulate(Sender: TObject);
    procedure cxCheckEsamiPropertiesCloseUp(Sender: TObject);
    procedure DeselezionaTutteExecute(Sender: TObject);
    procedure ApriTuttiUpdate(Sender: TObject);
    procedure ChiudiTuttiUpdate(Sender: TObject);
    procedure aPrecedentiUpdate(Sender: TObject);
    procedure StampaListaRichiesteUpdate(Sender: TObject);
    procedure GridDaEseguireDataControllerFilterChanged(Sender: TObject);
    procedure GridDaEseguireMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure aNoteRichiestaExecute(Sender: TObject);
    procedure aNoteRichiestaUpdate(Sender: TObject);
    procedure GridRichiesteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxAnchePrenoClick(Sender: TObject);
    procedure AlertEventList1DataSets2InsertActiveEvent(Sender: ToelItem;
      op: Char; ParamList: TInternalAstaParamList; var Done: Boolean);
    procedure AlertEventList1DataSets2DeleteActiveEvent(Sender: ToelItem;
      op: Char; ParamList: TInternalAstaParamList; var Done: Boolean);
    procedure AlertEventList1DataSets2UpdateActiveEvent(Sender: ToelItem;
      op: Char; ParamList: TInternalAstaParamList; trovato: Boolean;
      var Done: Boolean);
    procedure AlertEventList1BeforeRefresh(Sender: TKSAstaEventClient;
      var Accept: Boolean);
    procedure dxAttivaRefreshClick(Sender: TObject);
    procedure dxProgAccClick(Sender: TObject);
    procedure aSelezionaTuttiExecute(Sender: TObject);
    procedure aSelezionaTuttiUpdate(Sender: TObject);
    procedure rsPropSaver1SetUserProperty(Sender: TObject;
      const PropName: String; var Value: Variant);
    procedure rsPropSaver1SetProperty(Sender, Instance: TObject;
      const PropName: String; var Value: Variant; var Allow: Boolean);
    procedure GridRichiesteCustomization(Sender: TObject);
    procedure GridDaEseguireCustomization(Sender: TObject);
    procedure GridEseguitiCustomization(Sender: TObject);
  private
    { Private declarations }
    oldqyDaAccText: string;
    FDiagnSelezionate: Boolean;
    mslot: Integer;
    FFiltroInterno: boolean;
    nr_res: integer;
    vResToPos: Array of integer;
    vResToText: Array of string;
    vbDiagn: TvbDiagnList;
    FCutPaste: TFCutPaste;
    FStartNow: TDateTime;
    FResetEffettuato: boolean;
    refData: TAstaClientDataset;
    refGrid: TcxGridDBTableView;
    FCodiceDiag: string;
    xPossibili: TAstaCustomDataset;
    pop_position: Integer;
    function GetAncheDettagli: boolean;
    procedure AnchePreno(dt: TAstaClientDataset);
    procedure ApplicaFiltro;
    function GetAncheEseguiti: boolean;
    procedure CheckAllItems(Sender: TObject; AButtonIndex: Integer);
    procedure FiltraCodici;
    procedure RefreshForm(var Message: TMessage); message SY_REFRESHFORM;
    procedure EspandiDettagli(var Message: TMessage); message SY_ESPANDIDETTAGLI;
    procedure Eseguito(pk: integer);
    procedure LeggiBarCode(var Message: TMessage); message SY_READBARCODE;
    procedure LeggiTessera(var Message: TMessage); message SY_READTESSERA;
    procedure ApriTutteDiagnostiche;
    procedure ChiudiTutte;
    procedure AggiungiFiltri(const xdiag: string; ref: TcxGridDBDataController; rfCol: TObject; conClear: boolean = false);
    procedure FiltraDiagnostica(const xdiag: string);
    function GetDiagAperte: string;
    procedure dxSelezDiagn(Sender: TObject);
    procedure Inizializza(noPreno: boolean);
    procedure Sposta(xPosition,xItemBegin: integer; initTime: TDateTime);
    procedure RefreshEsamixPreno(plIt: TPlannerItem);
    procedure SourceInsertItem(Sender: TObject; APlannerItem: TPlannerItem);
    procedure Incolla;
    procedure IncollaEsame(xServizi: integer; xStartTime: TDateTime);
    procedure RegistraImpegnativa(xDiag: integer;const xDiagDescr: string; xOra_Inizio: TDateTime; pid: string = '');
    procedure RegistraInterni(xDiag: integer;const xDiagDescr: string; xOra_Inizio: TDateTime; ps: boolean);
    procedure RefreshImpegnative(pkimp: integer; accettazione,modifica,stampa: boolean);
    procedure ChangeDisplayUnit(var Message: TMessage); message SY_CHANGEDISPLAYUNIT;
    function CorreggiImpegnativa(accetta: boolean = true): integer;
    function ModificaAccInterno(accetta: boolean = true; tp: char = 'X'): integer;
    procedure ModificaSalaOp(accetta: boolean = true);
    procedure ConfiguraCalendario;
    procedure IncollaPrenoEst(inizio: TDateTime; xpos: integer);
    procedure DBPrenoSourceInsertItem(Sender: TObject; APlannerItem: TPlannerItem);
    function CeEsame(xcal,pkt: integer; dd: TcxGridDBTableView; lrefData: TAstaClientDataset): boolean;
    function DiagnosticaUsata(code: integer): boolean;
    procedure CancellaMemoria(pkt: integer);
    procedure SYRefreshRichieste(var Message: TMessage); message SY_REFRESHRICHIESTE;
    procedure SYAltreRichieste(var Message: TMessage); message SY_ALTRERICHIESTE;
    procedure RefreshCalendari(var Message: TMessage); message SY_REFRESHCALENDARI;
    procedure SetSelezione(psingola,value: Boolean);
    function EmptyDataset(xdata: TAstaClientDataset): boolean;
    procedure EseguiWCF;
    procedure EseguiRIS;

    procedure AggiornaFiltro;
    property AncheDettagli: boolean read GetAncheDettagli;
  protected
    procedure InsertOperazione(md,dd: TcxGridDBTableView; pk: Integer); override;
    procedure DeleteOperazione(md,dd: TcxGridDBTableView; pk: Integer); override;
    procedure RefreshOperazione(md,dd: TcxGridDBTableView; pk: Integer); override;
    function GetCanClose: Boolean; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure DoShow; override;
    procedure CercaInCalendari(Prestazioni: TAstaClientDataset; xdiag: integer);  override;
    procedure SelezionaDiagnostiche(const lista: string);
    function CaricaToolBar: TdxBars; override;
    procedure SendPortDataToForm(const s: string; lungh: integer); override;
    function IsFormReady: boolean; override;
    function RecordAttuale: integer; override;
    property xDiagAperte: string read GetDiagAperte;
    property AncheEseguiti: boolean read GetAncheEseguiti;
//  published
//    property CodiceDiag: string read FCodiceDiag write FCodiceDiag;
  end;

var
  FAccDiagn: TFAccDiagn;

implementation

uses
  cxStorage, DMCommon, DatiAccImp,
{$IFNDEF MEDICORNER}
  DatiDiag,
  DatiAccDiagn,
  DatiSalaOP,
  OraInfusione,
  RichReparti,
  AltreRichieste,
  ScegliIntEst,
  CreaCDMicroprint, 
{$ENDIF}
  osFastStrings,
  ConfermaCancella, Variants, ConfermaPswdRep,
  CercaBarCode, SysUtils, DateUtils, StampaAvvisi, Windows,
  RicAssistito, Math, MsgDlgs, Anagrafica, AstaDBTypes, dxPrnDlg,
  AssegnaServizio, VisitePrecRAD, AssegnaReferti, Note,
  DatiWCF;

{$R *.DFM}


type
  myTcxFilterCriteriaItemList = class(TcxFilterCriteriaItemList);


function TFAccDiagn.GetAncheDettagli: boolean;
begin
  result := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down
end;

function TFAccDiagn.GetAncheEseguiti: boolean;
begin
  result := (FDMCommon.LeggiPostoLavoroSHOW_ESEGUITI.AsInteger=1) and (dxPageControl.ActivePage=dxTabPreno);
end;

function TFAccDiagn.RecordAttuale: integer;
var
  ref: TcxCustomGridTableItem;
begin
  if (dxPageControl.ActivePage=dxTabElenco) or (dxPageControl.ActivePage=dxTabEseguiti) then
  begin
    if (refGrid.Controller.SelectedRecordCount=1) and
       (refGrid.Controller.FocusedRecordIndex<>-1) and
       not (refGrid.Controller.FocusedRecord is TcxGridGroupRow) then
    begin
       ref := refGrid.DataController.GetItemByFieldName('PKTRIAGE');
       result := refGrid.Controller.FocusedRecord.Values[ref.Index];
    end
    else
       result := -1;
  end
  else begin
    if EmptyDataset(refdata) then
       result := -1
    else
       result := refData.RecNo;
  end;
end;

function TFAccDiagn.CaricaToolBar: TdxBars;
begin
  result := dxBarManager1.Bars;
end;


function TFAccDiagn.CorreggiImpegnativa(accetta: boolean): integer;
begin

  AlertEventList1.Active := false;
  FDatiAccImp := TFDatiAccImp.Create(nil);

  try

       FDatiAccImp.xDiag := 0; // refData.Fieldbyname('DIAGNOSTICA_FK').AsInteger; // 0;
       FDatiAccImp.xDiagDescr := ''; //refData.Fieldbyname('DIAGNOSTICA').AsString; // '';

       if not accetta then
       begin
          FDatiAccImp.OldStatoVisita := refData.Fieldbyname('STATOVISITA').AsInteger;
          FDatiAccImp.ProxStatoVisita := refData.Fieldbyname('STATOVISITA').AsInteger;
          if refData.Fieldbyname('STATOVISITA').AsInteger = 130 then
          begin
             FDatiAccImp.StatoLancio := 2;
             FDatiAccImp.ProxStatoVisita := 1000;
             FDatiAccImp.xDiag := refData.Fieldbyname('DIAGNOSTICA_FK').AsInteger; //0;
          end;
       end
       else
         case refData.Fieldbyname('STATOVISITA').AsInteger of
         20:  begin
                FDatiAccImp.StatoLancio := 1;
                if FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=1 then
                   FDatiAccImp.ProxStatoVisita := 110
                else if FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=3 then
                   FDatiAccImp.ProxStatoVisita := 120 // 130
                else if FDMCommon.LeggiPostoLavoroABILITA_ACC_AMM.AsInteger=1 then
                   FDatiAccImp.ProxStatoVisita := 100
                else
                   FDatiAccImp.ProxStatoVisita := 120;
              end;
         110: begin
                   FDatiAccImp.StatoLancio := 1;
                   FDatiAccImp.ProxStatoVisita := 120;
              end;
         130: begin
                   FDatiAccImp.StatoLancio := 2;
                   FDatiAccImp.ProxStatoVisita := 1000;
                   FDatiAccImp.xDiag := refData.Fieldbyname('DIAGNOSTICA_FK').AsInteger; //0;
              end;
         else begin
                   FDatiAccImp.StatoLancio := 2;
                   FDatiAccImp.ProxStatoVisita := refData.Fieldbyname('STATOVISITA').AsInteger;
              end;
         end;

       FDatiAccImp.sDiagnostica.Dataset := LkDiagxWk;

       FDatiAccImp.xOra_Inizio := refData.Fieldbyname('ORA_INIZIO').AsDateTime;
       FDatiAccImp.xPossibili := xPossibili;
       FDatiAccImp.Esami := FDMCommon.FiltraEsami(xPossibili);
       FDatiAccImp.xReferAcc := self;
       FDatiAccImp.Accettazione.Parambyname('pkimpegnative').AsInteger := refData.Fieldbyname('IMPEGNATIVE_FK').AsInteger;
       FDatiAccImp.Accettazione.open;
       FDatiAccImp.Accettazione.edit;
       FDatiAccImp.xoggi := dxData.EditValue;
       FDatiAccImp.xpktriage := refData.Fieldbyname('PKTRIAGE').AsInteger;

       ModificaxImpegnative.Parambyname('impegnative_fk').AsInteger := refData.Fieldbyname('IMPEGNATIVE_FK').AsInteger;
       ModificaxImpegnative.syrefresh;

       FDatiAccImp.xDal := dxRichDal.EditValue;
       FDatiAccImp.xAl := dxRichAl.EditValue;

       result := FDatiAccImp.ShowModal;
       if (result in [mrOk,mrRetry]) then
       begin
{JRT 5144}
          if AstaCut.Locate('PKTRIAGE',FDatiAccImp.xpktriage,[]) then
          begin
             CancellaMemoria(FDatiAccImp.xpktriage);
             aCut.Execute;
          end;
{}
          RefreshImpegnative(FDatiAccImp.AccettazionePKIMPEGNATIVE.AsInteger,(refData.Fieldbyname('STATOVISITA').AsInteger<100),true,(result=mrRetry));
       end;

  finally
//     Possibili.Filtered := false;
//     Possibili.Filter := '';
     FDatiAccImp.Free;
     FDatiAccImp := nil;
     AlertEventList1.Active := dxAttivaRefresh.Down;
//     DBDaysource.EndUpdate;
  end;

end;

function TFAccDiagn.ModificaAccInterno(accetta: boolean; tp: char): integer;
begin
{$IFNDEF MEDICORNER}
  FDatiAccDiagn := TFDatiAccDiagn.Create(nil);
  AlertEventList1.Active := false;
{ -- filtrato per modifica interni
  xPossibili.Filtered := false;
  xPossibili.Filter := format('SERVIZI_FK = %d',[refData.Fieldbyname('DIAGNOSTICA_FK').AsInteger]);
  xPossibili.Filtered := true;
{}
  try

     FDatiAccDiagn.xDiag := 0; //refData.Fieldbyname('DIAGNOSTICA_FK').AsInteger; // 0;
     FDatiAccDiagn.xDiagDescr := ''; //refData.Fieldbyname('DIAGNOSTICA').AsString; // '';

     if not accetta then
     begin
        FDatiAccDiagn.OldStatoVisita := refData.Fieldbyname('STATOVISITA').AsInteger;
        FDatiAccDiagn.ProxStatoVisita := refData.Fieldbyname('STATOVISITA').AsInteger;
        if refData.Fieldbyname('STATOVISITA').AsInteger = 130 then
        begin
           FDatiAccDiagn.StatoLancio := 12;
           FDatiAccDiagn.ProxStatoVisita := 1000;
           FDatiAccDiagn.xDiag := refData.Fieldbyname('DIAGNOSTICA_FK').AsInteger; //0;
        end;
     end
     else
       case refData.Fieldbyname('STATOVISITA').AsInteger of
       20:  begin
              FDatiAccDiagn.StatoLancio := 11;
              if FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=1 then
                 FDatiAccDiagn.ProxStatoVisita := 110
              else if FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=3 then
                 FDatiAccDiagn.ProxStatoVisita := 120 // 130
              else if FDMCommon.LeggiPostoLavoroABILITA_ACC_AMM.AsInteger=1 then
                 FDatiAccDiagn.ProxStatoVisita := 100
              else
                 FDatiAccDiagn.ProxStatoVisita := 120;
            end;
       110: begin
                 FDatiAccDiagn.StatoLancio := 11;
                 FDatiAccDiagn.ProxStatoVisita := 120;
            end;
       130: begin
                 FDatiAccDiagn.StatoLancio := 12;
                 FDatiAccDiagn.ProxStatoVisita := 1000;
                 FDatiAccDiagn.xDiag := refData.Fieldbyname('DIAGNOSTICA_FK').AsInteger; //0;
            end;
       else begin
                 FDatiAccDiagn.StatoLancio := 12;
                 FDatiAccDiagn.ProxStatoVisita := refData.Fieldbyname('STATOVISITA').AsInteger;
            end;
       end;

     FDatiAccDiagn.xPossibili := xPossibili;
     FDatiAccDiagn.Esami := FDMCommon.FiltraEsami(xPossibili);
     FDatiAccDiagn.sDiagnostica.Dataset := LkDiagxWk;
     FDatiAccDiagn.xOra_Inizio := refData.Fieldbyname('ORA_INIZIO').AsDateTime;
     FDatiAccDiagn.xReferAcc := self;
     FDatiAccDiagn.xpktriage := refData.Fieldbyname('PKTRIAGE').AsInteger;

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
         end;
         FDatiAccDiagn.AccettazionePROVENIENZA.AsString := 'P';
         FDatiAccDiagn.Prestazioni.open;
         FDatiAccDiagn.RicalcolaTotale;
       end;
     end;

     FDatiAccDiagn.xoggi := dxData.EditValue;

     ModificaxImpegnative.Parambyname('impegnative_fk').AsInteger := refData.Fieldbyname('IMPEGNATIVE_FK').AsInteger;
     ModificaxImpegnative.syrefresh;

     FDatiAccDiagn.xDal := dxRichDal.EditValue;
     FDatiAccDiagn.xAl := dxRichAl.EditValue;

     result := FDatiAccDiagn.ShowModal;
     if (result in [mrOk,mrRetry]) then
     begin
{JRT 5144}
        if AstaCut.Locate('PKTRIAGE',FDatiAccDiagn.xpktriage,[]) then
        begin
           CancellaMemoria(FDatiAccDiagn.xpktriage);
           aCut.Execute;
        end;
{}
        RefreshImpegnative(FDatiAccDiagn.AccettazionePKIMPEGNATIVE.AsInteger,(refData.Fieldbyname('STATOVISITA').AsInteger<100),true,(result=mrRetry));
     end;

  finally
     xPossibili.Filtered := false;
     xPossibili.Filter := '';
     FDatiAccDiagn.Free;
     FDatiAccDiagn := nil;
     FDMCommon.LkReparti.Filtered := false;
     AlertEventList1.Active := dxAttivaRefresh.Down;
  end;
{$ENDIF}
end;

procedure TFAccDiagn.EsecuzioneEsameExecute(Sender: TObject);
var
//  AItem: TPlannerItem;
  xnr,pk,res: integer;
begin

//  AlertEventList1.Active := false;
//  try
  xnr := refData.FieldByName('PKTRIAGE').AsInteger;

  if not FDMCommon.LockRecord(xnr,gblCodUtente,1,refData.FieldByName('STATOVISITA').AsInteger) then
     exit;

  try
  if refData.FieldByName('STATOVISITA').AsInteger in [20,40,41,110] then
  begin
     if (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,4,5,6]) then
     begin
       if (refData.FieldByName('PROVENIENZA').AsString='E') then
          CorreggiImpegnativa()
       else
          ModificaAccInterno();
     end;
  end
  else if (refData.FieldByName('TIPO_ATTIVITA_FK').AsString=FDMCommon.LeggiPostoLavoroTIPO_ATT_SALA_OP.AsString) then
  begin

     ModificaSalaOp;

  end
  else if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5) then
  begin
     EseguiWCF;
  end
  else
  begin
     EseguiRIS
  end;

  finally
    FDMCommon.UnLockRecord(xnr,gblCodUtente,1);
  end;

end;

procedure TFAccDiagn.EseguiRIS;
var
  pk,res: integer;
begin
{$IFNDEF MEDICORNER}
    AlertEventList1.Active := false;
    FDatiDiag := TFDatiDiag.Create(nil);
    if not Assigned(FDatiDiag.sAllieviTecnici.DataSet) then
       FDatiDiag.sAllieviTecnici.DataSet := AllieviTecnici;

    if not Assigned(FDatiDiag.sLkListeRefertazione.DataSet) then
       FDatiDiag.sLkListeRefertazione.DataSet := LkListeRefertazione;

    try
       FDatiDiag.StatoLancio := refData.Fieldbyname('STATOVISITA').AsInteger;
//       FDatiDiag.sMedici.Dataset := FDMCommon.Medici;
       FDatiDiag.dxTipoEsame.Enabled := false;

{JRT 5298 - ex:       FDatiDiag.xdata_visita := Now();  // dxData.EditValue;  {JRT 1687}
       FDatiDiag.Esame.Parambyname('PKTRIAGE').AsInteger := refData.Fieldbyname('PKTRIAGE').AsInteger;
       FDatiDiag.Esame.open;
       FDatiDiag.Esame.Edit;
       FDatiDiag.EsameDURATA.AsInteger := 0;  // per forzare aggiornamento...
       FDatiDiag.Reparto.Enabled := false;
       FDatiDiag.Servizio.Enabled := false;
       FDatiDiag.Medico.Enabled := false;
{
       ModificaxImpegnative.Parambyname('impegnative_fk').AsInteger := refData.Fieldbyname('IMPEGNATIVE_FK').AsInteger;
       ModificaxImpegnative.syrefresh;
}

       res := FDatiDiag.ShowModal;
       case res of
       mrNo:   // -- Non refertare
         begin
            if (refData=QyPreno) then
            begin
              pk := QyPrenoPKTRIAGE.AsInteger;
              if not AncheEseguiti then
              begin
                DeleteOperazione(GridDaEseguire,GridDaEseguireDettagli,pk);
                if AncheDettagli then
                   AggiornaFiltro;
              end
              else
                RefreshOperazione(GridDaEseguire,GridDaEseguireDettagli,pk);
              InsertOperazione(GridEseguiti,GridEseguitiDettagli,pk);
            end
            else
              refData.RefreshRecord;
         end;
       mrIgnore: // -- eseguito parziale
         begin
            if (refData=QyPreno) then
            begin
              pk := QyPrenoPKTRIAGE.AsInteger;
              QyPreno.RefreshRecord;
              InsertOperazione(GridEseguiti,GridEseguitiDettagli,pk);
            end;
         end;
       mrOk:  // -- salva...
         begin
            if (refData=QyEseguiti) and (FDatiDiag.EsameSTATOVISITA.AsInteger<130) then
            begin
                pk := QyEseguitiPKTRIAGE.AsInteger;
                DeleteOperazione(GridEseguiti,GridEseguitiDettagli,pk);
                InsertOperazione(GridDaEseguire,GridDaEseguireDettagli,pk);
            end
            else begin
                pk := QyPrenoPKTRIAGE.AsInteger;
                RefreshOperazione(GridDaEseguire,GridDaEseguireDettagli,pk);
            end;
         end;
       mrYes:  // -- eseguito...
         begin
            if (refData=QyPreno) then
              Eseguito(QyPrenoPKTRIAGE.AsInteger)
            else
              QyEseguiti.RefreshRecord;
         end;
       end;

       if (dxPageControl.ActivePage=dxTabPreno) then
          DBPlanner.Refresh;

    finally
       FDatiDiag.Free;
       FDatiDiag := nil;
       AlertEventList1.Active := dxAttivaRefresh.Down;
    end;
{$ENDIF}
end;


procedure TFAccDiagn.EseguiWCF;
var
  pk,res: integer;
begin

    AlertEventList1.Active := false;
    FDatiWCF := TFDatiWCF.Create(nil);

    try
       FDatiWCF.StatoLancio := refData.Fieldbyname('STATOVISITA').AsInteger;

       FDatiWCF.Esame.Parambyname('PKTRIAGE').AsInteger := refData.Fieldbyname('PKTRIAGE').AsInteger;
       FDatiWCF.Esame.open;
       FDatiWCF.Esame.Edit;
//       FDatiWCF.EsameDURATA.AsInteger := 0;  // per forzare aggiornamento...

       res := FDatiWCF.ShowModal;
       case res of
       mrNo:   // -- Non refertare
         begin
            if (refData=QyPreno) then
            begin
              Eseguito(QyPrenoPKTRIAGE.AsInteger);
            end
            else
              refData.RefreshRecord;
         end;
       mrIgnore: // -- eseguito parziale
         begin
            if (refData=QyPreno) then
            begin
              pk := QyPrenoPKTRIAGE.AsInteger;
              QyPreno.RefreshRecord;
              InsertOperazione(GridEseguiti,GridEseguitiDettagli,pk);
            end;
         end;
       mrOk:  // -- salva...
         begin
            if (refData=QyEseguiti) and (FDatiWCF.EsameSTATOVISITA.AsInteger<=130) then
            begin
                pk := QyEseguitiPKTRIAGE.AsInteger;
                DeleteOperazione(GridEseguiti,GridEseguitiDettagli,pk);
                InsertOperazione(GridDaEseguire,GridDaEseguireDettagli,pk);
            end
            else begin
                pk := QyPrenoPKTRIAGE.AsInteger;
                RefreshOperazione(GridDaEseguire,GridDaEseguireDettagli,pk);
            end;
         end;
       mrYes:  // -- eseguito...
         begin
            if (refData=QyPreno) then
              Eseguito(QyPrenoPKTRIAGE.AsInteger)
            else
              QyEseguiti.RefreshRecord;
         end;
       end;

       if (dxPageControl.ActivePage=dxTabPreno) then
          DBPlanner.Refresh;

    finally
       FDatiWCF.Free;
       FDatiWCF := nil;
       AlertEventList1.Active := dxAttivaRefresh.Down;
    end;
end;

procedure TFAccDiagn.Eseguito(pk: integer);
begin
    if (QyPrenoSTATOVISITA.AsInteger in [120,121,122]) then
    begin
       if not AncheEseguiti then
       begin
         DeleteOperazione(GridDaEseguire,GridDaEseguireDettagli,pk);
         if AncheDettagli then
            AggiornaFiltro;
       end
       else
         RefreshOperazione(GridDaEseguire,GridDaEseguireDettagli,pk);
       InsertOperazione(GridEseguiti,GridEseguitiDettagli,pk);
    end
    else
      RefreshOperazione(GridDaEseguire,GridDaEseguireDettagli,pk);
//      QyPreno.refreshrecord;

    if (dxPageControl.ActivePage=dxTabPreno) then
       DBPlanner.Refresh;
end;


procedure TFAccDiagn.EsecuzioneEsameUpdate(Sender: TObject);
var
  xstato: integer;
begin

  if (dxPageControl.ActivePage=dxTabElenco) or (dxPageControl.ActivePage=dxTabEseguiti) then
  begin
      xstato := refData.FieldByName('STATOVISITA').AsInteger;
      EsecuzioneEsame.Enabled := (RecordAttuale<>-1) and (( ((xstato in [20,40,41,100]) and (gblSuperUser or not (CompareDate(Date(),dxData.EditValue)=LessThanValue))) or
                                                            ((xstato in [110,120,121,122]) and gblEseguiEsami and (gblSuperUser or not (CompareDate(Date(),dxData.EditValue)=LessThanValue))) or
                                                            ((xstato=130) and gblEseguiEsami and gblModTecnicoEseguito)));
  end
  else
      EsecuzioneEsame.Enabled := not EmptyDataset(refData) and
                                    (DBPlanner.Items.DBItem<>nil) and
                                     DBPlanner.Items.DBItem.Selected and
                                     ( ((DBPlanner.Items.DBItem.Status in [20,40,41,100]) and (gblSuperUser or not (CompareDate(Date(),dxData.EditValue)=LessThanValue))) or
                                       ((DBPlanner.Items.DBItem.Status in [110,120,121,122]) and gblEseguiEsami and (gblSuperUser or not (CompareDate(Date(),dxData.EditValue)=LessThanValue))) or
                                       ((DBPlanner.Items.DBItem.Status=130) and gblEseguiEsami and gblModTecnicoEseguito));
end;

procedure TFAccDiagn.DoShow;
begin

  inherited;

{JRT 5853}
  if not (((FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down) and (FDMCommon.LeggiPostoLavoroCHK_ESAMI_FILTRABILI.AsInteger=1)) then
  begin
     dxBarlblEsami.Visible := ivNever;
     dxBarControlContainerItem1.Visible := ivNever;
  end;
{}

  aAttivaQuesito.Execute;
  aAttivaAltreRich.Execute;
{
  if dxDaEseguire.Down then
  begin
    refData := QyPreno;
    refGrid := GridDaEseguire;
  end
  else if dxCalendario.Down then
  begin
    refData := QyPreno;
    refGrid := GridDaEseguire;
  end
  else begin
    refData := QyEseguiti;
    refGrid := GridEseguiti;
  end;
}

  if not (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,5]) then
  begin
     dxVisualizzaPreno.Down := false;
     dxVisualizzaPreno.Enabled := false;
     dxVisualizzaPreno.Visible := ivNever;
     dxDockPanel1.Visible := false;
  end
  else begin
    dxDockPanel1.Visible := dxVisualizzaPreno.Down;
  end;

  if dxCalendario.Down then
  begin
     DBPlanner.PosizionaGrid(Now);
//     DBPlanner.SelectGrid;
  end;

  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) then
     dxConEsami.Enabled := False;

  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger = 5) then
  begin
     dxSubDiag.Visible := ivNever;
     dxCalendario.Visible := ivNever;
  end;

  dxPageControl.ActivePage := dxTabElenco;
       
  PostMessage( Handle, SY_REFRESHFORM, 0, 0);
{ ==> da: error 1400 Handle non valido...
  if dxDaEseguire.Down then
     dxDaEseguireClick(self)
  else if dxCalendario.Down then
     dxCalendarioClick(self)
  else dxEseguitiClick(self);
}

  ApriTutti.Enabled := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down;
  ChiudiTutti.Enabled := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down;
  aModTecnicoEsecutore.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5);
  AssegnaMedico.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5);

  PostMessage( Handle, SY_ESPANDIDETTAGLI, 0, 0);

end;


procedure TFAccDiagn.EspandiDettagli(var Message: TMessage);
begin

  if dxDettaglioEspanso.Down and ApriTutti.Enabled then
  begin
     GridRichieste.ViewData.Expand(False);
     GridDaEseguire.ViewData.Expand(False);
     GridEseguiti.ViewData.Expand(False);
  end;

end;


procedure TFAccDiagn.RefreshForm(var Message: TMessage);
begin

  if dxDaEseguire.Down then
     dxDaEseguireClick(self)
  else if dxCalendario.Down then
     dxCalendarioClick(self)
  else dxEseguitiClick(self);

end;


function TFAccDiagn.GetDiagAperte: string;
begin
  if FCodiceDiag<>'' then
     result := BMStringReplace(FCodiceDiag,';',',',[]);
end;

procedure TFAccDiagn.dxSelezDiagn(Sender: TObject);
begin
  FDiagnSelezionate := True;
end;

procedure TFAccDiagn.CercaInCalendari(Prestazioni: TAstaClientDataset; xdiag: integer);
begin
   CercaInCalendari(QyPreno,Prestazioni,xPossibili,vResToPos,vResToText,dxData.EditValue,xdiag);
end;

procedure TFAccDiagn.ChiudiTutte;
begin

  SetSelezione(False,False);
  FDiagnSelezionate := True;

end;

procedure TFAccDiagn.ApriTutteDiagnostiche;
begin

  SetSelezione(False,True);
  FDiagnSelezionate := True;
  if not dxTutte.Down then
     dxTutte.Down := True;
     
end;

procedure TFAccDiagn.TutteDiagnosticheExecute(Sender: TObject);
begin
  ApriTutteDiagnostiche;
end;


constructor TFAccDiagn.Create(AOwner: TComponent);
var
  ACheckAllButton : TcxEditButton;
  i: Integer;
  sel: Integer;
begin

   inherited;

   pop_position := -1;
   FCodiceDiag := '';
   FDiagnSelezionate := False;
   vbDiagn := TvbDiagnList.Create;
   vbDiagn.ItemLinks := dxSubDiag;
   FFiltroInterno := false;
   xPossibili := TAstaCustomDataset.Create(nil);
   DBPlanner.FixedSize := (FDMCommon.LeggiPostoLavoroMODIFICA_DURATA.AsInteger=0) or not (gblUserIsAdmin or gblSuperUser);
   DBPlanner.Overlap := FDMCommon.Allow_Overbooking;
   if FDMCommon.Allow_Overbooking then
       DBPlanner.ItemGap := 11;
//   DBPlanner.DefaultItem.CaptionFont.Name := FDMCommon.xDefFontName;
//   DBPlanner.DefaultItem.CaptionFont.Charset := DEFAULT_CHARSET;
   DBPlanner.BtnPrev.Enabled := false;
   dxPageControl.HideTabs := true;

   if not False {fConEsami} then
      DBPlanner.AltezzaMinima := FDMCommon.hMinSenzaEsami
   else
      DBPlanner.AltezzaMinima := FDMCommon.hMinConEsami;

   aModServizio.Visible := gblMultiServ;
   dxRichDal.EditValue := IncDay(Date(),-dxGiorniDal.EditValue);
   dxRichAl.EditValue := IncDay(Date(),dxGiorniRicerca.EditValue);

   AstaCut.Open;
   AstaDett.Open;
   qryUser.open;

   FCutPaste := nil;
   FResetEffettuato := false;

  GridRichieste.DataController.DataModeController.SyncMode := true;
  GridRichieste.DataController.DataModeController.SmartRefresh := false;
  GridDaEseguire.DataController.DataModeController.SyncMode := true;
  GridDaEseguire.DataController.DataModeController.SmartRefresh := false;
  GridEseguiti.DataController.DataModeController.SyncMode := true;
  GridEseguiti.DataController.DataModeController.SmartRefresh := false;

  aCambiaSomministrazione.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=1); // in [1,3]);

  if FDMCommon.LeggiPostoLavoroCHK_ALLIEVO_TECNICO.AsInteger=1 then
     AllieviTecnici.open;

  ACheckAllButton := cxCheckEsami.Properties.Buttons.Add;
  ACheckAllButton.Kind := bkText;
  ACheckAllButton.Caption := 'Togli filtro';
  cxCheckEsami.Properties.OnButtonClick := CheckAllItems;

  if gblDebugMode then
     Timer1.Interval := 10000;
  Timer1.Enabled := true;

  // -- da DoShow:

  rsPropSaver1.Storage.Load;
  rsPropSaver1.LoadValues;

  // -- portare sempre in da eseguire!!!
  dxDaEseguire.Down := true;

  // -- disabilitato per lentezza
  dxDettaglioEspanso.Down := false;

  AnchePreno(qyPreno);
  AnchePreno(qyPrenoDett);

  GridDaEseguire.RestoreFromrsStorage(TcxrsStorageReader.CreateNew(name+'.'+GridDaEseguire.Name,rsPropSaver1.Storage), false, false, [{gsoUseFilter,} {gsoUseSummary}]);
  GridEseguiti.RestoreFromrsStorage(TcxrsStorageReader.CreateNew(name+'.'+GridEseguiti.Name,rsPropSaver1.Storage), false, false, [{gsoUseFilter,} {gsoUseSummary}]);
  GridRichieste.RestoreFromrsStorage(TcxrsStorageReader.CreateNew(name+'.'+GridRichieste.Name,rsPropSaver1.Storage), false, false, [{gsoUseFilter,} {gsoUseSummary}]);

  GridDaEseguire.OptionsView.CellAutoHeight := dxAutoSize.Down;
  GridDaEseguire.OptionsView.Footer := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5);
  GridEseguiti.OptionsView.CellAutoHeight := dxAutoSize.Down;
  GridEseguiti.OptionsView.Footer := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5);
  GridRichieste.OptionsView.CellAutoHeight := dxAutoSize.Down;
  GridRichieste.OptionsView.Footer := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5);

  FDMCommon.SetVisible(GridRichiesteDettagliMAGART_FK,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]));
  FDMCommon.SetVisible(GridRichiesteDettagliQR,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]));

  FDMCommon.SetVisible(GridDaEseguireSERVRAD,gblMultiServ);
  FDMCommon.SetVisible(GridDaEseguireDESCTIPOATTIVITA,not gblMultiServ and (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5));
  FDMCommon.SetVisible(GridDaEseguireORA_SOMMIN,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=1)); // in [1,3]);
  FDMCommon.SetVisible(GridDaEseguireNOTE_PRENO,(FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1));

  GridDaEseguire.OptionsBehavior.ImmediateEditor := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);
  GridDaEseguire.OptionsData.Editing := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1) {and (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2])};
  GridDaEseguire.OptionsSelection.CellSelect := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);

  GridEseguiti.OptionsBehavior.ImmediateEditor := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);
  GridEseguiti.OptionsData.Editing := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1) {and (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2])};
  GridEseguiti.OptionsSelection.CellSelect := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);

  FDMCommon.SetVisible(GridDaEseguireDettagliMAGART_FK,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]));
  FDMCommon.SetVisible(GridDaEseguireDettagliQR,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]));
  FDMCommon.SetVisible(GridDaEseguireLIV_SCR,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=2));
  FDMCommon.SetVisible(GridDaEseguireNUMERO_FIRMA,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=2));
  FDMCommon.SetVisible(GridDaEseguireESAMI_IN_REPARTO,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5));
  FDMCommon.SetVisible(GridDaEseguireURGENZA,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5));
  FDMCommon.SetVisible(GridDaEseguireNOMEDIAGNOSTICA,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5));

  FDMCommon.SetVisible(GridEseguitiSERVRAD,gblMultiServ);
  FDMCommon.SetVisible(GridEseguitiDESCTIPOATTIVITA,not gblMultiServ and (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5));
  FDMCommon.SetVisible(GridEseguitiPROG_ACC,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5));
  FDMCommon.SetVisible(GridEseguitiNOTE_PRENO,(FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1));
  FDMCommon.SetVisible(GridEseguitiESAMI_IN_REPARTO,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5));
  FDMCommon.SetVisible(GridEseguitiURGENZA,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5));
  FDMCommon.SetVisible(GridEseguitiNOMEDIAGNOSTICA,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5));

  GridDaEseguire.Preview.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);
  cxGridDaEseguireLevel2.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down;
  cxGridEseguitiLevel2.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down;
  cxGridRichiesteLevel2.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down;

  FDMCommon.SetVisible(GridRichiesteDIAGNOSTICA,gblDebugMode or gblUserIsAdmin or gblSuperUser);
  FDMCommon.SetVisible(GridRichiesteNOTE_PRENO,(FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1));
  GridRichieste.OptionsBehavior.ImmediateEditor := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);
  GridRichieste.OptionsData.Editing := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1) {and (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2])};
  GridRichieste.OptionsSelection.CellSelect := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);

  GridRichieste.Preview.Visible := dxAttivaQuesito.Down;

  FDMCommon.SetVisible(GridEseguitiDettagliMAGART_FK,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]));
  FDMCommon.SetVisible(GridEseguitiDettagliQR,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]));
  FDMCommon.SetVisible(GridEseguitiDettagliIDENT_FK,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5));
  FDMCommon.SetVisible(GridEseguitiDettagliDESCBRANCA,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5));

  FDMCommon.SetVisible(GridDaEseguireDettagliMAGART_FK,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]));
  FDMCommon.SetVisible(GridDaEseguireDettagliQR,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]));
  FDMCommon.SetVisible(GridDaEseguireDettagliIDENT_FK,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5));
  FDMCommon.SetVisible(GridDaEseguireDettagliDESCBRANCA,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5));

  dxProgAccClick(self);

  if FDMCommon.LeggiPostoLavoroCHK_SLITTA_REP.AsInteger=1 then
  begin
//     QyPrenoREPARTO.DisplayLabel := RS_Ospedale;
//     QyEseguitiREPARTO.DisplayLabel := RS_Ospedale;
     QyPrenoSERVIZIO.DisplayLabel := RS_Reparto;
     QyEseguitiSERVIZIO.DisplayLabel := RS_Reparto;
  end;
  FDMCommon.SetVisible(GridDaEseguireSERVIZIO,(FDMCommon.LeggiPostoLavoroCHK_SLITTA_REP.AsInteger=1));
  FDMCommon.SetVisible(GridEseguitiSERVIZIO,(FDMCommon.LeggiPostoLavoroCHK_SLITTA_REP.AsInteger=1));

  FDMCommon.SetVisible(GridEseguitiDettagliNUMERO_PRESTAZIONE,(FDMCommon.LeggiPostoLavoroCHECK_NO_PRESTMULT.AsInteger=0) and not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]));
  FDMCommon.SetVisible(GridDaEseguireDettagliNUMERO_PRESTAZIONE,(FDMCommon.LeggiPostoLavoroCHECK_NO_PRESTMULT.AsInteger=0) and not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]));
  FDMCommon.SetVisible(GridRichiesteDettagliNUMERO_PRESTAZIONE,(FDMCommon.LeggiPostoLavoroCHECK_NO_PRESTMULT.AsInteger=0) and not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]));

  aCreazioneCD.Visible := (FDMCommon.LeggiPostoLavoroCD_DA_REFERTO.AsInteger=3);
  FDMCommon.SetVisible(GridEseguitiCD_CREATO,(FDMCommon.LeggiPostoLavoroCD_DA_REFERTO.AsInteger=3));
  EventLogCD.Active := (FDMCommon.LeggiPostoLavoroCD_DA_REFERTO.AsInteger=3);

  AccettaInterni.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  AccettaPS.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  aSalaOperatoria.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  aRitornoInRichieste.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  ModInternoEsterno.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  aControllaImmagini.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);

  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5) then
  begin
     dxAvvisi.Visible := ivNever;
     dxAltreRichieste.Visible := ivNever;
  end;

  dxData.EditValue := Date();

(*
// ToDo: aprire tutte le diagnostiche per Admin e SuperAdmin
  if gblUserIsAdmin or gblSuperUser then
  begin
     rfdiag := LkDiagnostiche;
     LkDiagnostiche.syRefresh;
  end
  else begin
    LkDiagxWk.syRefresh;
    if LkDiagxWk.IsEmpty {or not LkDiagxWk.Locate('REPARTI_FK',gblpkrep,[])} then
    begin
       rfdiag := LkDiagnostiche;
       LkDiagnostiche.syRefresh;
    end
    else begin
      rfdiag := LkDiagxWk;
    end;
  end;

  if not rfdiag.Active then
     rfdiag.open;
*)
  LkDiagxWk.syRefresh;
  vbDiagn.Clear;
  LkDiagxWk.First;
  mslot := 999;

  FCodiceDiag := '';
  sel := 0;
  for I := 0 to LkDiagxWk.recordcount - 1 do
  begin
    vbDiagn.Add(TdxBarButton.Create(nil {Self}));
    vbDiagn[I].ButtonStyle := bsChecked;
    vbDiagn[I].Caption := LkDiagxWkDESCRIZ.AsString;
    if LkDiagxWkDESC_REPARTO.AsString<>'' then
        vbDiagn[I].Caption := vbDiagn[I].Caption + ' (' + LkDiagxWkDESC_REPARTO.AsString +')';
    vbDiagn[I].Tag := LkDiagxWkPKSERVIZI.AsInteger;
    vbDiagn[I].OnClick := dxSelezDiagn;
{JRT 4988}
    vbDiagn[I].CloseSubMenuOnClick := False;
{}
    if dxSingolaDiagn.Down then
       vbDiagn[I].GroupIndex := 1;
    if LkDiagxWkSELEZIONATA.AsInteger=1 then
    begin
      sel := sel+1;
      vbDiagn[I].Down := true;
      if FCodiceDiag='' then
         FCodiceDiag := IntToStr(vbDiagn[I].Tag)
      else
         FCodiceDiag := FCodiceDiag + ';' + IntToStr(vbDiagn[I].Tag);
      if mslot>LkDiagxWkSLOT_STANDARD.AsInteger then
         mslot := LkDiagxWkSLOT_STANDARD.AsInteger;
    end;
    dxSubDiag.ItemLinks.Add.Item := vbDiagn[I];
    if i=0 then
       dxSubDiag.ItemLinks[dxSubDiag.ItemLinks.Count-1].BeginGroup := true;
    LkDiagxWk.Next;
  end;

  if (sel=LkDiagxWk.recordcount) then
  begin
     FCodiceDiag := '';
  end
  else if sel=0 then
     FCodiceDiag := '-1';

{ -- ???
  if (FCodiceDiag='') then
  begin
    LkDiagxWk.First;
    mslot := 999;
    for I := 0 to LkDiagxWk.recordcount - 1 do
    begin
      if mslot>LkDiagxWkSLOT_STANDARD.AsInteger then
         mslot := LkDiagxWkSLOT_STANDARD.AsInteger;
      LkDiagxWk.Next;
    end;
  end;
}

  Inizializza(True);
  dxTutte.Down := (FCodiceDiag='');
  FiltraDiagnostica(BMStringReplace(FCodiceDiag,';',',',[]));

  if DBPlanner.ScrollBarStyle.Style=ssflat then
  begin
    DBPlanner.ScrollBarStyle.Flat := false;
    DBPlanner.ScrollBarStyle.Style := ssflat;
    DBPlanner.ScrollBarStyle.Flat := true;
  end;

  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) then
     dxConEsami.Enabled := False;

  if (FDMCommon.LeggiPostoLavoroCHK_LISTA_REFERTAZIONE.AsInteger in [1,2]) then
     LkListeRefertazione.open;

  AlertEventList1.Active := dxAttivaRefresh.Down;

end;


procedure TFAccDiagn.AggiungiFiltri(const xdiag: string; ref: TcxGridDBDataController; rfCol: TObject; conClear: boolean = false);
var
  i: integer;
  FLista: TstringList;

begin
//  ref.Filter.Active := false;
  ref.Filter.BeginUpdate;
  if conClear then
     ref.Filter.Clear;
  FLista := TstringList.Create;
  try
    FLista.DelimitedText := xdiag;
    if FLista.Count>0 then
      with ref.Filter.Root do
      begin
//        Clear;
        BoolOperatorKind := fboAnd; //fboOr;
        with InsertItemList(fboAnd {fboOr}) do
//        with AddItemList(fboAnd {fboOr}) do
        begin
          Clear;
          BoolOperatorKind := fboOr;
          mslot := 999;
          for i:=0 to FLista.Count-1 do
          begin
            if FLista[i]='-1' then
            begin
                AddItem(rfCol, foEqual, '-1', 'Nessuna');
            end
            else if LkDiagxWk.Locate('PKSERVIZI',FLista[i],[]) then
            begin
                if mslot>LkDiagxWkSLOT_STANDARD.AsInteger then
                   mslot := LkDiagxWkSLOT_STANDARD.AsInteger;
                AddItem(rfCol, foEqual, LkDiagxWkDESCRIZ.AsString, LkDiagxWkDESCRIZ.AsString);
            end;
          end;
        end;
      end;
  finally
     FLista.Free;
     ref.Filter.EndUpdate;
     ref.Filter.Active := true;
  end;
end;

procedure TFAccDiagn.FiltraDiagnostica(const xdiag: string);
var
  z: Integer;
  k: Integer;
//  x: Integer;
  rfCol: TcxGridDBColumn;
  ref: TcxGridDBDataController;
  AItem: TcxFilterCriteriaItem;
  AList: TcxFilterCriteriaItemList;
begin
  FFiltroInterno := true;
  cxGridRichieste.Enabled := xdiag<>'-1';
  cxGridDaEseguire.Enabled := xdiag<>'-1';
  cxGridEseguiti.Enabled := xdiag<>'-1';

  for k:=1 to 3 do
  begin

    case k of
    1: begin
        ref := GridRichieste.DataController;
        rfCol := GridRichiesteDIAGNOSTICA;
       end;
    2: begin
        ref := GridDaEseguire.DataController;
        rfCol := GridDaEseguireNOMEDIAGNOSTICA;
       end;
    3: begin
        ref := GridEseguiti.DataController;
        rfCol := GridEseguitiNOMEDIAGNOSTICA;
       end;
    else
       begin
        ref := nil;
        rfCol := nil;
       end;
    end;

    for z:=0 to ref.Filter.Root.Count-1 do
    begin
        if ref.Filter.Root.Items[z] is TcxFilterCriteriaItemList then
        begin
          AList := TcxFilterCriteriaItemList(ref.Filter.Root.Items[z]);
          AItem := TcxFilterCriteriaItem(AList.Items[0]);
          if TField(AItem.ItemLink).Name=rfCol.Name then
          begin
             myTcxFilterCriteriaItemList(ref.Filter.Root).RemoveItem(ref.Filter.Root.Items[z]);
             Break;
          end;
        end;
    end;

    AggiungiFiltri(xdiag,ref,rfCol,False);

  end;
  FFiltroInterno := false;

end;


procedure TFAccDiagn.SelezionaDiagnostiche(const lista: string);
begin

  FCodiceDiag := BMStringReplace(lista,',',';',[]);

  Inizializza(False);
  dxTutte.Down := (FCodiceDiag='');
  FiltraDiagnostica(BMStringReplace(FCodiceDiag,';',',',[]));

  ConfiguraCalendario;
  FiltraCodici;
  
  if dxCalendario.Down then
  begin
//     DBPlanner.Refresh;
     DBPlanner.PosizionaGrid(Now);
     DBPlanner.SelectGrid;
  end
  ;

end;

procedure TFAccDiagn.FiltraCodici;
begin
  FDMCommon.Possibili.Filtered := false;
  if (FCodiceDiag<>'') then
  begin
    FDMCommon.Possibili.Filter := format('REPARTI_FK = %d and SERVIZI_FK in ( ''%s'' )',[gblpkrep,BMStringReplace(xDiagAperte,',',#39+','+#39,[])]);
    FDMCommon.Possibili.Filtered := true;
  end
  else begin
    FDMCommon.Possibili.Filter := format('REPARTI_FK = %d',[gblpkrep]);
    FDMCommon.Possibili.Filtered := true;
  end;

//  try
  xPossibili.Free;
//  except
//  end;
  xPossibili := TAstaCustomDataset.Create(nil);
  xPossibili.CleanCloneFromDataSet(FDMCommon.Possibili);

  FDMCommon.Possibili.Filtered := false;
  FDMCommon.Possibili.Filter := '';
end;

procedure TFAccDiagn.Inizializza(noPreno: boolean);
begin

  DBDaysource.BeginUpdate;
  QyEseguiti.syRefresh;
  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down then
  begin
     qDettEseguiti.syRefresh;
  end;
  if not noPreno then
  begin
    QyPreno.syRefresh;
    if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down then
    begin
       qyPrenoDett.syRefresh;
    end;
  end;
{JRT 5779}
  if dxVisualizzaPreno.Down then
  begin
{}
    QyDaAcc.syRefresh;
    if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down then
    begin
       QyDaAccEsami.syRefresh;
    end;
  end;
  RefreshDettagli.Parambyname('triage_fk').AsInteger := -1;
  RefreshDettagli.syRefresh;

  DBDaysource.EndUpdate;
  ConfiguraCalendario;

  FiltraCodici;

  FStartNow := DBPlanner.CellToTime(0,max(0,DBPlanner.AbsTimeToCell(Now)-1));

end;

procedure TFAccDiagn.ConfiguraCalendario;
var
  z: integer;
//  xDisplayUnit: integer;
begin

  ResToPos.syRefresh;

  nr_res := ResToPos.RecordCount;
  SetLength(vResToPos,nr_res);
  SetLength(vResToText,nr_res);

  for z:=0 to nr_res-1 do
  begin
     vResToPos[z] := ResToPosSERVIZI_FK.AsInteger;
     vResToText[z] := ResToPosDESC_SERVIZIO.AsString;
     ResToPos.Next;
  end;

   if (nr_res=0) then
   begin
      if FCodiceDiag<>'-1' then
         MsgDlg(RS_Gene_NessunaDiagnostica,'', ktWarning, [kbOK]);
      exit;
   end;

  DBDaysource.BeginUpdate;

  DBDaysource.NumberOfResources := nr_res;

  DBPlanner.SetZoomValue(mslot);
  DBPlanner.Display.Displayunit := mslot;
  dxPeriodo.ItemIndex := DBPlanner.ZoomPos-1;

{
  if DBPlanner.ZoomPos>0 then
     xDisplayUnit := dZoom[DBPlanner.ZoomPos]
  else
     xDisplayUnit := dZoom[MAXPOSZOOM];

  QyPreno.DisableControls;

  for i:=1 to QyPreno.recordcount do
  begin
     if QyPrenoDURATA.AsInteger<xDisplayUnit then
        xDisplayUnit := QyPrenoDURATA.AsInteger;
     QyPreno.Next;
  end;
  QyPreno.EnableControls;

  DBPlanner.SetZoomValue(xDisplayUnit);
}
//  FStartNow := DBPlanner.CellToTime(0,max(0,DBPlanner.AbsTimeToCell(Now)));

  DBDaysource.EndUpdate;

  if DBDaysource.Day<>dxData.EditValue then
     DBDaysource.Day := dxData.EditValue
  else if dxPageControl.ActivePage=dxTabPreno then
     DBPlanner.Refresh;

end;

procedure TFAccDiagn.DBDaySourceFieldsToItem(Sender: TObject;
  Fields: TFields; Item: TPlannerItem);
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
  
  TsyPlannerItem(Item).DescProvenienza := Fields.FieldByName('REPARTO').AsString;
  TsyPlannerItem(Item).RisStudyEuid := Fields.FieldByName('RIS_STUDY_EUID').AsString;

  if not Fields.FieldByName('ORA_SOMMIN').IsNull then
     TsyPlannerItem(Item).Ora_Sommin :=  Fields.FieldByName('ORA_SOMMIN').AsString;

  if Fields.FieldByName('PROVENIENZA').AsString='P' then
//     Item.ImageID := 7
     Item.ImageID := Fields.FieldByName('IMAGEINDEX').AsInteger
  else if Fields.FieldByName('PROVENIENZA').AsString='I' then
     Item.ImageID := 39
  else if (Fields.FieldByName('TIPO_FATTURA').asinteger=3) then
  begin
     Item.ImageID := 5;
  end
  else begin
     Item.ImageID := -1;
  end;

  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down then
  begin
    GridDaEseguireDettagli.DataController.BeginUpdate;
    qyPrenoDett.DisableControls;
    qyPrenoDett.CancelRange;
    qyPrenoDett.SetRange([Fields.FieldByName('PKTRIAGE').AsInteger],[Fields.FieldByName('PKTRIAGE').AsInteger]);
    try
    if not qyPrenoDett.IsEmpty then
    begin
      Item.Text.Text := Item.Text.Text + '<P align="left"><UL>';
      while not qyPrenoDett.eof do
      begin
         Item.Text.Text := Item.Text.Text + '<LI>' + {qyPrenoDettCODICE.AsString + ' - ' +} qyPrenoDettDESCRIZIONE.AsString + '<BR>';
         qyPrenoDett.Next;
      end;
      Item.Text.Text := Item.Text.Text + '</UL></P>';
    end;
    finally
       qyPrenoDett.CancelRange;
       qyPrenoDett.EnableControls;
       GridDaEseguireDettagli.DataController.EndUpdate;
    end;
  end;

  if not AstaCut.IsEmpty and AstaCut.Locate('PKTRIAGE',Fields.FieldByName('PKTRIAGE').AsInteger,[]) then
     Item.Color := FDMCommon.ColorItem(99)
  else
     Item.Color := FDMCommon.ColorItem(Fields.FieldByName('STATOVISITA').AsInteger,(Fields.FieldByName('INCOMPLETA').AsInteger=1));
  Item.SelectColor := Item.Color;
end;

procedure TFAccDiagn.DBDaySourceGetResourceName(Sender: TObject;
  ResourceIndex: Integer; var ResourceName: String);
begin
  if ResToPos.IsEmpty then
     ResourceName := ' '
  else
     ResourceName := vResToText[ResourceIndex-1];
end;

procedure TFAccDiagn.DBDaySourcePositionToResource(Sender: TObject;
  Field: TField; Position: Integer);
begin
   { -- lasciare vuoto, altrimenti ricalcola la risorsa internamente (sbagliata)... --}
end;

procedure TFAccDiagn.DBDaySourceResourceToPosition(Sender: TObject;
  Field: TField; var Position: Integer; var Accept: Boolean);
var
  z: integer;
begin
  Accept := false;
  z:=0;
  while (z<nr_res) and not Accept do
  begin
     Accept := (vResToPos[z]=Field.AsInteger);
     if Accept then
        Position := z;
     inc(z);
  end;
end;

procedure TFAccDiagn.dxEseguitiClick(Sender: TObject);
begin

//  if dxPageControl.ActivePage=dxTabEseguiti then exit;

  dxPageControl.ActivePage := dxTabEseguiti;
  refData := QyEseguiti;
  refGrid := GridEseguiti;
  DBPlanner.Visible := false;

  try
//  GridDaEseguire.DataController.Filter.Clear;
  ActiveControl := GridEseguiti.Site;
  GridEseguiti.Controller.GoToFirst;

  except
     // -- per catturare ActiveControl se non visibile...
  end;
  
end;

procedure TFAccDiagn.dxCalendarioClick(Sender: TObject);
var
// PrecrefGrid: TcxGridDBTableView;
 AItem: TPlannerItem;
 pk: string;
begin

//  if dxPageControl.ActivePage = dxTabPreno then exit;

  dxPageControl.ActivePage := dxTabPreno;

//  PrecrefGrid := refGrid;
  refData := QyPreno;
  refGrid := GridDaEseguire;

  DBPlanner.Visible := true;
//  DBPlanner.Refresh;
  GridRichieste.Controller.GoToFirst;

  try

    if dxDockPanel1.Visible then
    begin
       ActiveControl := GridRichieste.Site;
    end;

  //  if PrecrefGrid=cxGridPrenotati then
    begin
       AItem := DBPlanner.Items.FindKey(pk);
       if AItem<>nil then
          DBPlanner.FocusItem(AItem,true)
       else if IsSameDay(Now,dxData.EditValue) then
          DBPlanner.PosizionaGrid(Now);
    end;
  {  else if IsSameDay(Now,dxData.EditValue) then
         DBPlanner.PosizionaGrid(Now);
  }

  except
     // -- per catturare ActiveControl se non visibile...
  end;

  if not QyPrenoDett.Active or (FDMCommon.LeggiPostoLavoroSHOW_ESEGUITI.AsInteger=1) then
  begin
      if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down then
          QyPrenoDett.syRefresh;
  end;
  if not QyPreno.Active or (FDMCommon.LeggiPostoLavoroSHOW_ESEGUITI.AsInteger=1) then
  begin
     QyPreno.syRefresh;
  end;
  DBPlanner.Refresh;

{ex: ...
  if PrecrefGrid=GridDaEseguire then
  begin
     pk := FDMCommon.vFieldByName(PrecrefGrid,'PKTRIAGE',varString);
     AItem := DBPlanner.Items.FindKey(pk);
     if AItem<>nil then
        DBPlanner.FocusItem(AItem,true)
     else if IsSameDay(Now,dxData.EditValue) then
        DBPlanner.PosizionaGrid(Now);
  end
  else if IsSameDay(Now,dxData.EditValue) then
       DBPlanner.PosizionaGrid(Now);
{}

end;

procedure TFAccDiagn.DBPlannerItemDblClick(Sender: TObject;
  Item: TPlannerItem);
begin
  EsecuzioneEsame.Execute;
end;

procedure TFAccDiagn.ResToPosBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('workstation_fk').AsInteger := gblpkworkstation;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;  
end;


procedure TFAccDiagn.QyPrenoBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('lingua').AsString := gbllingua;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  Sender.Parambyname('workstation_fk').AsInteger := gblpkworkstation;
  Sender.Parambyname('gglista').AsInteger := dxgiornilista.EditValue;
  Sender.Parambyname('data_preno').AsDateTime := dxData.EditValue;
  if not AncheEseguiti then
  {$IFDEF MEDICORNER}
     Sender.Parambyname('show_eseguiti').AsString := '#(100,120,121,122,130)'
  {$ELSE}
     Sender.Parambyname('show_eseguiti').AsString := '#(100,120,121,122)'
  {$ENDIF}
  else
     Sender.Parambyname('show_eseguiti').AsString := '#(100,120,121,122,130,140,150,160,161,165,166,170,171,180,190,198)';
end;

procedure TFAccDiagn.dxConEsamiClick(Sender: TObject);
begin
  if dxConEsami.Down then
  begin
    qyPrenoDett.syRefresh;
    qDettEseguiti.syRefresh;
    QyDaAccEsami.syRefresh;
  end
  else begin
    qyPrenoDett.close;
    qDettEseguiti.close;
    QyDaAccEsami.close;
  end;

  cxGridDaEseguireLevel2.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down;
  cxGridEseguitiLevel2.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down;
  cxGridRichiesteLevel2.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down;

{JRT 5853}
  if not (((FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down) and (FDMCommon.LeggiPostoLavoroCHK_ESAMI_FILTRABILI.AsInteger=1)) then
  begin
     dxBarlblEsami.Visible := ivNever;
     dxBarControlContainerItem1.Visible := ivNever;
  end
  else begin
    dxBarlblEsami.Visible := ivAlways;
    dxBarControlContainerItem1.Visible := ivAlways;
  end;
{}

  if (dxPageControl.ActivePage=dxTabPreno) then
    DBPlanner.Refresh;
end;

procedure TFAccDiagn.QyPrenoNewRecord(DataSet: TDataSet);
begin
  QyPrenoUSER_ID.AsInteger := gblCodUtente;
  QyPrenoSTATOVISITA.AsInteger := 10;
  QyPrenoREPARTI_FK.AsInteger := gblpkrep;
  QyPrenoASSISTIBILI_FK.AsInteger := 0;
//  if IsSameDay(Date(),dxData.EditValue) then
     QyPrenoDATA_VISITA.AsDateTime := Now()
//  else
//     QyPrenoDATA_VISITA.AsDateTime := dxData.EditValue;
end;

procedure TFAccDiagn.DBDaySourceCreateKey(Sender: TObject;
  APlannerItem: TPlannerItem; var Key: String);
begin
  Key := QyPrenoPKTRIAGE.AsString;
end;

procedure TFAccDiagn.DBDaySourceItemToFields(Sender: TObject;
  Fields: TFields; Item: TPlannerItem);
begin
    QyPrenoDIAGNOSTICA_FK.AsInteger := vResToPos[DBDaySource.PosToRes(Item.ItemPos)];
    QyPrenoDURATA.AsInteger := MinutesBetween(QyPrenoORA_FINE.AsDateTime, QyPrenoORA_INIZIO.AsDateTime);

    QyPrenoAGENDE_FK.Clear;

    if (QyPrenoSAN_IDENT.AsInteger=1) and not ConfermaAnagrafica(QyPrenoASSISTIBILI_FK.AsInteger,FDMCommon.CalcolaStatolancio(QyPrenoSTATOVISITA.AsInteger,QyPrenoTIPO_ACCESSO.AsString)) then
    begin
       MsgDlg(RS_AnagraficaIncompleta,'', ktWarning, [kbOK]);
       Abort;
    end;

end;

procedure TFAccDiagn.DBPlannerItemHint(Sender: TObject; Item: TPlannerItem;
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

  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=1) {in [1,3])} then
  begin
     Hint := Hint + '<B> Somministra: ' + TsyPlannerItem(Item).Ora_Sommin + '</B><BR>';
  end;

  Hint := Hint + '</P>';

  if not ((FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down) then
  begin
    RefreshDettagli.Parambyname('TRIAGE_FK').AsInteger := StrToIntDef(Item.DBKey,-1);
    RefreshDettagli.syrefresh;
    if not RefreshDettagli.IsEmpty then
    begin
      Hint := Hint + '<P align="left"><UL>';
      while not RefreshDettagli.eof do
      begin
         Hint := Hint + '<LI>' + RefreshDettagliCODICE.AsString + ' - ' + RefreshDettagliDESCRIZIONE.AsString + '<BR>';
         RefreshDettagli.Next;
      end;
      Hint := Hint + '</UL></P>';
    end;
  end
  else begin
      GridDaEseguireDettagli.DataController.BeginUpdate;
      qyPrenoDett.CancelRange;
      try
      qyPrenoDett.SetRange([Item.DBKey],[Item.DBKey]);
      if not qyPrenoDett.IsEmpty then
      begin
        Hint := Hint + '<P align="left"><UL>';
        while not qyPrenoDett.eof do
        begin
           Hint := Hint + '<LI>' + qyPrenoDettCODICE.AsString + ' - ' + qyPrenoDettDESCRIZIONE.AsString + '<BR>';
           qyPrenoDett.Next;
        end;
        Hint := Hint + '</UL></P>';
      end;
      finally
         qyPrenoDett.CancelRange;
         GridDaEseguireDettagli.DataController.EndUpdate;
      end;
  end;

end;

procedure TFAccDiagn.DBDaySourceChangeQuery(Sender: TObject);
begin
  dxData.EditValue := DBDaySource.Day;
  dxDataPropertiesCloseUp(Sender);
{
  DBPlanner.BtnPrev.Enabled := CompareDate(DBDaySource.Day,Date())>0;
  DBPlanner.BtnNext.Enabled := CompareDate(DBDaySource.Day,Date())=0;
}
end;

procedure TFAccDiagn.AccettaInterniExecute(Sender: TObject);
begin

   if (FCodiceDiag='-1') then
   begin
     MsgDlg(RS_Gene_NessunaDiagnSelez,'', ktWarning, [kbOK]);
     exit;
   end;

  if dxEseguiti.Down then
     dxDaEseguire.Click;

  if not IsSameDay(Date(),dxData.EditValue) and (MsgDlgPos(RS_Msg_AttentoGiornoReg, '', ktConfirmation, [kbYes,kbNo], dfFirst)<>mrYes) then
     Abort;

//  AlertEventList1.Active := false;
  try
     if pop_position>=0 then
     begin
        RegistraInterni(vResToPos[DBDaySource.PosToRes(pop_position)], vResToText[DBDaySource.PosToRes(pop_position)],
                            DBPlanner.xStartTime, false);
        pop_position := -1;
     end
     else begin
          RegistraInterni(0, '', 0, false);
     end;
  finally
//    AlertEventList1.Active := dxAttivaRefresh.Down;
  end;
end;


procedure TFAccDiagn.CancellaAccettatoExecute(Sender: TObject);
var
  TempUM: TAstaUpdateMethod;
//  TempUM1: TAstaUpdateMethod;
//  i: integer;
//  tp_ctrl: integer;
  pkimp: integer;
  pkt,rr,tecnico,servizio,motivocanc: integer;
//  errtxt: string;
//  notecanc: string;
  avanti: boolean;
begin

  AlertEventList1.Active := false;
  TempUM := refData.UpdateMethod;
  refData.UpdateMethod := umManual;
  try
    if FDMCommon.LeggiPostoLavoroCHECK_MOTIVOCANC.AsInteger=1 then
    begin
      FConfermaCancella := TFConfermaCancella.Create(nil);
      try
        FConfermaCancella.xpk := refData.FieldByName('PKTRIAGE').AsInteger;
        rr := FConfermaCancella.ShowModal;
        avanti := (rr=mrOk);
        tecnico := FConfermaCancella.Userid;
        servizio := FConfermaCancella.Servid;
        motivocanc := FConfermaCancella.Motivo;
//        notecanc := FConfermaCancella.cxNote.Text;
      finally
        FConfermaCancella.Free;
        FConfermaCancella := nil;
      end
    end
    else begin
      avanti := (MsgDlgPos(RS_Msg_ConfCancAcc, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes);
      tecnico := gblCodUtente;
      servizio := gblpkserv;
      motivocanc := 0;
//      notecanc := '';
    end;

    if avanti then
    begin

       pkimp := refData.Fieldbyname('IMPEGNATIVE_FK').AsInteger;
       pkt := refData.FieldByName('PKTRIAGE').AsInteger;

       qCancVisita.Parambyname('pktriage').AsInteger := pkt;
       qCancVisita.Parambyname('user_id').AsInteger := tecnico;
       qCancVisita.Parambyname('servizi_fk').AsInteger := servizio;
       qCancVisita.Parambyname('statovisita').AsInteger := motivocanc;
       qCancVisita.Parambyname('pkimpegnative').AsInteger := pkimp;
       qCancVisita.ExecCommit;

{JRT 5144}
      if AstaCut.Locate('PKTRIAGE',pkt,[]) then
      begin
         CancellaMemoria(pkt);
      end;
{}
       refData.Delete;

       InsertOperazione(GridEseguiti,GridEseguitiDettagli,pkt);
{
        TempUM1 := QyEseguiti.UpdateMethod;
        QyEseguiti.UpdateMethod := umManual;
        try
          QyEseguiti.InsertRefresh(pkt);
        finally
          QyEseguiti.UpdateMethod := TempUM1;
        end;
}
       if (dxPageControl.ActivePage=dxTabPreno) then
          DBPlanner.Refresh

     end;

  finally
     refData.UpdateMethod := TempUM;
     AlertEventList1.Active := dxAttivaRefresh.Down;
  end;

end;

procedure TFAccDiagn.QyPrenoBeforePost(DataSet: TDataSet);
begin
  QyPrenoUSER_ID.AsInteger := gblCodUtente;
end;


procedure TFAccDiagn.RefreshEsamixPreno(plIt: TPlannerItem);
begin
    if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down then
    begin
      GridDaEseguireDettagli.DataController.BeginUpdate;
      try
      qyPrenoDett.CancelRange;
      qyPrenoDett.SetRange([plIt.DBKey],[plIt.DBKey]);
      while not qyPrenoDett.IsEmpty do
          qyPrenoDett.Delete;
      qyPrenoDett.CancelRange;

      RefreshDettagli.Parambyname('TRIAGE_FK').AsInteger := StrToIntDef(plIt.DBKey,-1);
      RefreshDettagli.syRefresh;
      qyPrenoDett.DataTransfer(RefreshDettagli,true,true);

      if (dxPageControl.ActivePage=dxTabPreno) then
         DBDaySource.OnFieldsToItem(self,QyPreno.Fields,plIt);

      AggiornaFiltro;
      
      finally
         GridDaEseguireDettagli.DataController.EndUpdate;
      end;
    end;
    if (dxPageControl.ActivePage=dxTabPreno) then
       DBPlanner.Refresh;
end;


procedure TFAccDiagn.AlertEventList1DataSets0AfterActiveEvent(
  Sender: ToelItem; op: Char; ParamList: TInternalAstaParamList);
var
 plIt: TPlannerItem;
begin

  if (dxPageControl.ActivePage=dxTabPreno) then
    case op of
    'D': DBPlanner.Refresh;
    'I','U','A': begin
                   plIt := DBPlanner.Items.FindKey(ParamList.ParamByName('pkvalue').AsString);
                   if Assigned(plIt) then
                      RefreshEsamixPreno(plIt);
                 end;
    end
    ;

end;

procedure TFAccDiagn.AlertEventList1DataSets0AcceptActiveEvent(
  Sender: ToelItem; var op: Char; ParamList: TInternalAstaParamList;
  var Accept: Boolean);
var
  xstato: set of 10..198;
begin

  Accept := (ParamList.ParamByName('reparti_fk').AsInteger=gblpkrep) and DiagnosticaUsata(ParamList.ParamByName('diagnostica_fk').AsInteger);
  if not Accept then exit;

  if dxAnchePreno.Down then
     xstato := [20]
  else
     xstato := [];
  xstato := xstato + [100,110,120,121,122];
{$IFDEF MEDICORNER}
  xstato := xstato + [130];
{$ENDIF}
  if AncheEseguiti then
     xstato := xstato + [120,121,122,130,140,150,160,161,165,166,170,171,180,190,198];

  case op of

  'D': Accept := true;
  'I': Accept := (ParamList.ParamByName('statovisita').AsInteger in xstato);

  'U','A': begin
              if not (ParamList.ParamByName('statovisita').AsInteger in xstato) then
                 op := 'D';
           end;
  end;

end;

procedure TFAccDiagn.CancellaMemoria(pkt: integer);
begin
  if AstaCut.Locate('PKTRIAGE',pkt,[]) then
  begin
    AstaCut.Delete;
    AstaDett.Locate('TRIAGE_FK',pkt,[]);
    while not AstaDett.eof and (AstaDettTRIAGE_FK.AsInteger=pkt) do
          AstaDett.Delete;
  end;
end;


function TFAccDiagn.DiagnosticaUsata(code: integer): boolean;
begin
//   result := (xDiagAperte='') or ( Pos(IntToStr(code)+',', xDiagAperte+',')>0 );
   result := LkDiagxWk.Locate('PKSERVIZI',code,[]) and (LkDiagxWkSELEZIONATA.AsInteger=1);
end;


procedure TFAccDiagn.CancellaAccettatoUpdate(Sender: TObject);
var
  xstato: integer;
begin

  if (dxPageControl.ActivePage=dxTabElenco) or (dxPageControl.ActivePage=dxTabEseguiti) then
  begin
      xstato := refData.FieldByName('STATOVISITA').AsInteger;
      CancellaAccettato.Enabled := (RecordAttuale<>-1) and (xstato in [20,100,110,120]) and (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,4,5,6]);
  end
  else
      CancellaAccettato.Enabled := not EmptyDataset(refdata) and
                                    (DBPlanner.Items.DBItem<>nil) and
                                     DBPlanner.Items.DBItem.Selected and
                                    (DBPlanner.Items.DBItem.Status in [20,100,110,120]) and
                                    (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,4,5,6])
end;

procedure TFAccDiagn.DBDaySourceCodeResourceToPosition(Sender: TObject;
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

procedure TFAccDiagn.DBPlannerPlannerDblClick(Sender: TObject; Position,
  FromSel, FromSelPrecise, ToSel, ToSelPrecise, mX, mY: Integer);
var
  tini: TDateTime;
  res: integer;
  cell: TPoint;
begin
{$IFNDEF MEDICORNER}
  if not (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,6]) then exit;

  cell := DBPlanner.XYToCell(mX, mY);
  tini := DBPlanner.CellToTime(Position,cell.Y);

  if not ResToPos.IsEmpty and
     (IsSameDay(Date(),dxData.EditValue) or (MsgDlgPos(RS_Msg_AttentoGiornoReg, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes)) then
  begin
     DBPlanner.xStartTime := tini;  // DBPlanner.AbsPixelToTime(DBDaySource.PosToDay(Position),mY);
     FScegliIntEst := TFScegliIntEst.Create(nil);
     try
        FScegliIntEst.cxInterno.Checked := true;
        res := FScegliIntEst.ShowModal;
        if res=mrOk then
        begin
           if FScegliIntEst.cxEsterno.Checked then
              RegistraImpegnativa(vResToPos[DBDaySource.PosToRes(Position)], vResToText[DBDaySource.PosToRes(Position)],
                                  DBPlanner.xStartTime)
           else if FScegliIntEst.cxInterno.Checked then
              RegistraInterni(vResToPos[DBDaySource.PosToRes(Position)], vResToText[DBDaySource.PosToRes(Position)],
                                  DBPlanner.xStartTime, false)
           else if FScegliIntEst.cxPS.Checked then
              RegistraInterni(vResToPos[DBDaySource.PosToRes(Position)], vResToText[DBDaySource.PosToRes(Position)],
                                  DBPlanner.xStartTime, true);

        end;
     finally
        FScegliIntEst.Free;
     end;

  end;
{$ENDIF}  
end;

procedure TFAccDiagn.DBPlannerDragDropCell(Sender, Source: TObject; X, Y,
  mX, mY: Integer);
var
  xStartTime: TDateTime;
  xPlanner: TDBPlanner;
  aGridView: TcxGridDBTableView;
  cell: TPoint;
  xServizi: integer;
begin
  xPlanner := (Sender as TDBPlanner);
  xPlanner.SelPosition := x;
  xPlanner.SelItemend := y + 1;
  xPlanner.SelItemBegin := y;

  cell := DBPlanner.XYToCell(mX, mY);
  xStartTime := DBPlanner.CellToTime(x,cell.Y);

  if Source is TcxDragControlObject then
     aGridView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source))
  else
     aGridView := nil;

  if (Source is TPlannerGrid) then
  begin
     Sposta(x,y, xStartTime);
  end
  else if (aGridView<>nil) and (CompareText(aGridView.Name,'GridRichieste')=0) then
  begin
     IncollaPrenoEst(xStartTime,x);
  end
  else if (aGridView<>nil) then // Cut & Paste
  begin
      xServizi := -1;
      if not ResToPos.IsEmpty then
      begin
         xServizi := vResToPos[DBDaySource.PosToRes(x)];
      end;

      if aGridView.Name='cxGridEsami' then
         IncollaEsame(xServizi,xStartTime)
      else
         Incolla;
  end;

end;

procedure TFAccDiagn.IncollaEsame(xServizi: integer; xStartTime: TDateTime);
var
  avanti: boolean;
begin
    AlertEventList1.Active := false;

    try
    { controllo se si può eseguire lo spostamento }
    avanti := xPossibili.Locate('CODICE;SERVIZI_FK',
                      VarArrayOf([AstaDettCODICE.AsString,xServizi]),[]);
    if not avanti then
    begin
       MsgDlg(
       format(RS_CodiceNonUtilizzabile,[AstaDettCODICE.AsString,AstaDettDESCRIZIONE.AsString]),
       '', ktWarning, [kbOK]);
    end;

    if avanti then
    begin

      ModificaxImpegnative.Parambyname('impegnative_fk').AsInteger := AstaCutIMPEGNATIVE_FK.AsInteger;
      ModificaxImpegnative.syrefresh;

      FDMCommon.NuovoTriage.Parambyname('pktriage').AsInteger := AstaCutPKTRIAGE.AsInteger;
      FDMCommon.NuovoTriage.Parambyname('pkprestazioni').AsInteger := AstaDettPKPRESTAZIONI.AsInteger;
      FDMCommon.NuovoTriage.syRefresh;
      if not FDMCommon.NuovoTriage.Eof then
      begin
          FDMCommon.NuovoTriage.Edit;
          FDMCommon.NuovoTriageDIAGNOSTICA_FK.AsInteger := xServizi;
          FDMCommon.NuovoTriageORA_INIZIO.AsDateTime := xStartTime;
          FDMCommon.NuovoTriageORA_FINE.AsDateTime := IncMinute(xStartTime,AstaDettDURATA.AsInteger);
          FDMCommon.NuovoTriageDURATA.AsInteger := AstaDettDURATA.AsInteger;
          FDMCommon.NuovoTriageSTATOVISITA.AsInteger := AstaCutSTATOVISITA.AsInteger;
          FDMCommon.NuovoTriageUSER_ID.AsInteger := gblcodutente;
          FDMCommon.NuovoTriageREPARTI_FK.AsInteger := gblpkrep;
          FDMCommon.NuovoTriageIMPEGNATIVE_FK.AsInteger := AstaCutIMPEGNATIVE_FK.AsInteger;
          FDMCommon.NuovoTriage.Post;
      end;

      RefreshImpegnative(AstaCutIMPEGNATIVE_FK.AsInteger,false,true,false);

      if Assigned(FCutPaste) then
        PostMessage( FCutPaste.Handle,SY_CANCDETTCUTPASTE,AstaCutPKTRIAGE.AsInteger,AstaDettPKPRESTAZIONI.AsInteger);

    end;

    finally
       AlertEventList1.Active := dxAttivaRefresh.Down;
    end;

end;


procedure TFAccDiagn.Sposta(xPosition,xItemBegin: integer; initTime: TDateTime);
var
  AItem: TPlannerItem;
  lrefData: TAstaClientDataset;
begin

  if ((FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down) then
  begin
    qyPrenoDett.CancelRange;
    qyPrenoDett.SetRange([QyPrenoPKTRIAGE.AsInteger],[QyPrenoPKTRIAGE.AsInteger]);
    lrefData := qyPrenoDett;
  end
  else begin
    RefreshDettagli.Parambyname('TRIAGE_FK').AsInteger := QyPrenoPKTRIAGE.AsInteger;
    RefreshDettagli.syRefresh;
    lrefData := RefreshDettagli;
  end;

  if CeEsame(vResToPos[xPosition],QyPrenoPKTRIAGE.AsInteger,GridDaEseguireDettagli,lrefData) then
  begin
     try
     try
     QyPreno.Edit;
     QyPrenoDIAGNOSTICA_FK.AsInteger := vResToPos[xPosition];
     QyPrenoORA_INIZIO.AsDateTime := initTime; // DBPlanner.CellToTime(xPosition,xItemBegin);
     QyPrenoORA_FINE.AsDateTime := IncMinute(QyPrenoORA_INIZIO.AsDateTime, QyPrenoDURATA.AsInteger);
     QyPreno.Post;
     QyPreno.RefreshRecord;
     except
        QyPreno.Cancel;
        raise;
     end
     finally
        DBPlanner.Refresh;
     end;
     AItem := DBPlanner.Items.FindKey(QyPrenoPKTRIAGE.AsString);
     if AItem<>nil then
     begin
        DBPlanner.FocusItem(AItem,false {true});
     end;
  end;

  if ((FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down) then
  begin
    qyPrenoDett.CancelRange;
  end;
  
end;

procedure TFAccDiagn.DBPlannerDragOverItem(Sender, Source: TObject; X,
  Y: Integer; APlannerItem: TPlannerItem; State: TDragState;
  var Accept: Boolean);
var
  aDragView: TcxGridDBTableView;
begin
  if (Source is TcxDragControlObject) then
  begin
    Accept :=
              (APlannerItem.Status in [100,110,120]) and
              not AstaCut.IsEmpty and
              (APlannerItem.DBKey<>AstaCutPKTRIAGE.AsString);
    if Accept then
    begin
      aDragView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
      Accept :=  (aDragView<>nil) and (aDragView.Name='cxGridEsami') and
                 (qyPreno.Lookup('PKTRIAGE',APlannerItem.DBKey,'ASSISTIBILI_FK')=AstaCutASSISTIBILI_FK.AsInteger);
  //ex:               (qyPreno.Lookup('PKTRIAGE',APlannerItem.DBKey,'IMPEGNATIVE_FK')=AstaCutIMPEGNATIVE_FK.AsInteger);
    end;
  end
  else if (Source is TPlannerGrid) then
  begin
    Accept := (DBPlanner.Items.Selected<>nil) and
              (APlannerItem.DBKey=DBPlanner.Items.Selected.DBKey);
  end;

(* ex...
  if (Source is TPlannerGrid) then
  begin
    Accept := (DBPlanner.Items.Selected<>nil) and
              (APlannerItem.DBKey=DBPlanner.Items.Selected.DBKey);
  end
  else
    Accept := false;
*)
end;

procedure TFAccDiagn.dxPeriodoChange(Sender: TObject);
begin

  if (dxPeriodo.ItemIndex+1)<>DBPlanner.ZoomPos then
     DBPlanner.ZoomPos := (dxPeriodo.ItemIndex+1);
     
end;

procedure TFAccDiagn.DBPlannerPlannerGetBrush(Sender: TObject; Pos,
  Index: Integer; ABrush: TBrush);
begin
  ABrush.Color := DBPlanner.Display.ColorActive;
end;

procedure TFAccDiagn.DBPlannerPlannerGetZone(Sender: TObject; Pos: Integer;
  xRect: TRect; aZone: TList; var xcolor: TColor);
var
  xgiorno,tini,tfine: TDateTime;
  xz: TsyZone;
begin
     xgiorno := DBDaySource.PosToDay(Pos);
     tini := DBPlanner.AbsPixelToTime(xgiorno,xRect.Top);
     tfine := DBPlanner.AbsPixelToTime(xgiorno,xRect.Bottom);
     xz := TsyZone.Create;
     xz.Rect.Top := DBPlanner.AbsTimeToPixel(tini);
     xz.Rect.Bottom := DBPlanner.AbsTimeToPixel(tfine);
     xz.Rect.Left := xRect.Left;
     xz.Rect.Right := xRect.Right;
     if (CompareDateTime(tfine,{FStartNow} Now())<0) and IsSameDay(tfine,Now()) then
        xz.Color := DBPlanner.Display.ColorNonActive
//             else if (ResToCalBLOCCATO.AsInteger=1) then
//                xz.Color := FDMCommon.ColorItem(50)
     else
        xz.Color := xcolor;  // DBPlanner.Display.ColorActive;
     aZone.Add( xz );

    xcolor := DBPlanner.Display.ColorNonActive;
end;

procedure TFAccDiagn.DBDaySourceResetFilter(Sender: TObject);
begin
  DBPlanner.Ricalcola;
end;

procedure TFAccDiagn.AccettaInterniUpdate(Sender: TObject);
begin
  AccettaInterni.Enabled := (nr_res>0) and (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,6]) and (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>2);
end;

procedure TFAccDiagn.DBPlannerItemMoving(Sender: TObject;
  Item: TPlannerItem; DeltaBegin, DeltaPos: Integer; var Allow: Boolean);
begin
  Allow := (Item.Status in [{20,}100,110,120]);
end;

procedure TFAccDiagn.DBPlannerItemSizing(Sender: TObject;
  Item: TPlannerItem; DeltaBegin, DeltaEnd: Integer; var Allow: Boolean);
begin
  Allow := (Item.Status in [{20,}100,110,120]);
end;


function TFAccDiagn.IsFormReady: boolean;
begin
  result := True; //Active;
end;

procedure TFAccDiagn.LeggiBarCode(var Message: TMessage);
begin
  inherited;
  if BarCodeLetto<>'' then
     SendPortDataToForm(BarCodeLetto, Length(BarCodeLetto));
end;

procedure TFAccDiagn.LeggiTessera(var Message: TMessage);
begin
  if TesseraLetta.CodiceFiscale<>'' then
  begin
     SendPortDataToForm(TesseraLetta.CodiceFiscale, Length(TesseraLetta.CodiceFiscale));
     TesseraLetta.CodiceFiscale := '';
  end;
end;

procedure TFAccDiagn.SendPortDataToForm(const s: string; lungh: integer);
var
  trovato: boolean;
  tipo: char;
  xstato: integer;
  numero: integer;
  barcode: string;
begin

  inherited;

//  tipo := Copy(s,1,1);
  if lungh=0 then exit;
  tipo := s[1];
  barcode := Copy(s,3,9);
  numero := StrToIntDef(barcode,-1);

  AlertEventList1.Active := false;
  try

  if Assigned(FDatiAccImp) then
  begin
    if (lungh = 16) then
    begin
        FDatiAccImp.TesseraLetta := TesseraLetta;
        FDatiAccImp.SendPortDataToForm(s,lungh);
    end
    else if (lungh in [7,9,5,10]) then
    begin
        FDatiAccImp.SendPortDataToForm(s,lungh);
    end
    else if tipo='P' then
    begin
        if qryUser.Locate('pkpersonale',numero,[]) then
        begin
           FDatiAccImp.codFirma := qryUserUSER_ID.AsInteger;
           FDatiAccImp.Conferma.Execute;
        end
        else
           MsgDlg(RS_UtenteNonTrovato, '', ktError, [kbOk], dfFirst);
    end
    else if (lungh=11) then
    begin
//        if (tipo in ['T',' ','@']) and FDatiAccImp.Prestazioni.Locate('TRIAGE_FK',numero,[]) then
        if (tipo in ['T',' ','@']) and FDatiAccImp.Prestazioni.Locate('RIS_STUDY_EUID',FDMCommon.syIntStr(barcode),[]) then
        begin
            FDatiAccImp.Conferma.Execute;
        end;
    end
    else if (lungh=8) then
    begin
        if (numero=FDatiAccImp.AccettazioneASSISTIBILI_FK.AsInteger) then
        begin
            FDatiAccImp.Conferma.Execute;
        end;
    end
    else if not (tipo in ['T',' ','@']) then
    begin
        if qryUser.Locate('matricola',s,[]) then
        begin
           FDatiAccImp.codFirma := qryUserUSER_ID.AsInteger;
           FDatiAccImp.Conferma.Execute;
        end
        else
           MsgDlg(RS_UtenteNonTrovato, '', ktError, [kbOk], dfFirst);
    end
  end
{$IFNDEF MEDICORNER}
  else if Assigned(FDatiSalaOp) then
  begin
    if not (tipo in ['T',' ','@']) then
    begin
        if lungh in [7,11,12] then
        begin
           FDatiSalaOp.SendPortDataToForm(s,lungh);
        end;
    end;
  end
  else if Assigned(FDatiAccDiagn) then
  begin
    if tipo='P' then
    begin
        if qryUser.Locate('pkpersonale',numero,[]) then
        begin
           FDatiAccDiagn.codFirma := qryUserUSER_ID.AsInteger;
           FDatiAccDiagn.Conferma.Execute;
        end
        else
           MsgDlg(RS_UtenteNonTrovato, '', ktError, [kbOk], dfFirst);
    end
    else if not (tipo in ['T',' ','@']) then
    begin
        if lungh in [7,11,12] then
        begin
           FDatiAccDiagn.SendPortDataToForm(s,lungh);
        end
        else if qryUser.Locate('matricola',s,[]) then
        begin
           FDatiAccDiagn.codFirma := qryUserUSER_ID.AsInteger;
           FDatiAccDiagn.Conferma.Execute;
        end
        else
           MsgDlg(RS_UtenteNonTrovato, '', ktError, [kbOk], dfFirst);
    end
    else if (lungh=11) then
    begin
        if (tipo in ['T',' ','@']) and FDatiAccDiagn.Prestazioni.Locate('RIS_STUDY_EUID',FDMCommon.syIntStr(barcode),[]) then
            FDatiAccDiagn.Conferma.Execute;
    end;
  end
  else if Assigned(FDatiDiag) then
  begin
      if (tipo='P') then
      begin
          if qryUser.Locate('pkpersonale',numero,[]) then
          begin
             if not ((qryUserESEGUITO.AsInteger=1) or (qryUserISADMIN.AsInteger=1) or (qryUserSUPERUSER.AsInteger=1)) then
                MsgDlg(RS_UtenteNonAbilitatoEseguito,'', ktError, [kbOK])
             else begin
               FDatiDiag.EseguitoAutomatico := true;
               FDatiDiag.codfirma := qryUserUSER_ID.AsInteger;
               FDatiDiag.EseguitoPistola(qryUserUSER_PWD.AsString);
             end;
          end
          else
            MsgDlg(RS_UtenteNonTrovato, '', ktError, [kbOk], dfFirst);
      end
      else if not (tipo in ['T',' ','@']) then
      begin
          if qryUser.Locate('matricola',s,[]) then
          begin
             if not ((qryUserESEGUITO.AsInteger=1) or (qryUserISADMIN.AsInteger=1) or (qryUserSUPERUSER.AsInteger=1)) then
                MsgDlg(RS_UtenteNonAbilitatoEseguito,'', ktError, [kbOK])
             else begin
               FDatiDiag.EseguitoAutomatico := true;
               FDatiDiag.codfirma := qryUserUSER_ID.AsInteger;
               FDatiDiag.EseguitoPistola(qryUserUSER_PWD.AsString);
             end;
          end
          else
             MsgDlg(RS_UtenteNonTrovato, '', ktError, [kbOk], dfFirst);
      end
  end
{$ENDIF}
  else if Assigned(FConfermaPswdRep) then
  begin
      if (tipo='P') then
      begin
        if qryUser.Locate('pkpersonale',numero,[]) then
           FConfermaPswdRep.VerificaPistola(qryUserUSER_PWD.AsString)
        else
           MsgDlg(RS_UtenteNonTrovato, '', ktError, [kbOk], dfFirst);
      end
      else if not (tipo in ['T',' ','@']) then
      begin
        if qryUser.Locate('matricola',barcode {numero},[]) then
           FConfermaPswdRep.VerificaPistola(qryUserUSER_PWD.AsString)
        else
           MsgDlg(RS_UtenteNonTrovato, '', ktError, [kbOk], dfFirst);
      end;
  end

  else if (lungh=16) then  // -- ricerca su codice fiscale
  begin
      refData.DisableControls;
      trovato := refData.Locate('CODICE_FISCALE',s,[]);
      if trovato then
         xstato := refData.Fieldbyname('STATOVISITA').AsInteger
      else
         xstato := -1;
      refData.EnableControls;

      if trovato then
      begin
        refGrid.DataController.CheckFocusedSelected;
        if (xstato in [20,100,110,120,121,122,130]) then
           EsecuzioneEsame.Execute;
      end
      else begin// -- provo a registrare accettazione diretta
        if MsgDlg(RS_Gene_Msg_NoDtAcc, '', ktWarning, [kbYes,kbNo], dfFirst)=mrYes then
        begin
           RegistraImpegnativa(0, '', dxData.EditValue,'*');
        end;
      end;
  end
  else if (lungh>=12) and (lungh<=32) then  // -- ricerca su placer_order_number
  begin
      refData.DisableControls;
      trovato := refData.Locate('placer_order_number',s,[]);
      if trovato then
         xstato := refData.Fieldbyname('STATOVISITA').AsInteger
      else
         xstato := -1;
      refData.EnableControls;

      if trovato then
      begin
        refGrid.DataController.CheckFocusedSelected;
        if (xstato in [100,110,120,121,122,130]) then
           EsecuzioneEsame.Execute;
      end
      else begin
        if Assigned(FCercaBarCode) then
        begin
           FCercaBarCode.ModalResult := mrCancel;
           FCercaBarCode.Release;
        end
        else begin
          FCercaBarCode := TFCercaBarCode.Create(nil);
          try
              FCercaBarCode.CercaOrderNumber.Parambyname('order_number').AsString := s;
              FCercaBarCode.CercaOrderNumber.open;
              if FCercaBarCode.CercaOrderNumber.IsEmpty then
                 MsgDlg( format(RS_RichNonTrovata,[s]), '', ktError, [kbOk], dfFirst)
              else begin
                 FCercaBarCode.CercaBarCode.Parambyname('pktriage').AsInteger := FCercaBarCode.CercaOrderNumberPKTRIAGE.AsInteger;
                 FCercaBarCode.CercaBarCode.open;
                 if FCercaBarCode.CercaBarCode.IsEmpty then
                    MsgDlg(format(RS_EsameNonTrovato,[FCercaBarCode.CercaOrderNumberPKTRIAGE.AsInteger]), '', ktError, [kbOk], dfFirst)
                 else
                    FCercaBarCode.ShowModal;
              end;
          finally
             FCercaBarCode.Release;
             FCercaBarCode := nil;
          end;
        end;
      end;
  end
  else if (lungh=11) then
  begin
      xstato := -1;
      trovato := false;
      if (tipo in ['T',' ','@']) then
      begin
//        Radiologico.Text := IntToStr(numero);
        refData.DisableControls;
        trovato := refData.Locate('ris_study_euid',FDMCommon.syIntStr(barcode),[]);
        if trovato then
           xstato := refData.Fieldbyname('STATOVISITA').AsInteger
        else
           xstato := -1;
        refData.EnableControls;
      end;
      if trovato then
      begin
        refGrid.DataController.CheckFocusedSelected;
        if (xstato in [100,110,120,121,122,130]) then
           EsecuzioneEsame.Execute
        else begin
           if xstato in [20,40,41] then
           begin
             if (refData.Fieldbyname('PROVENIENZA').AsString='E') then
                  CorreggiImpegnativa
             else
                  ModificaAccInterno;
           end;
        end;
      end
      else if (tipo in ['T',' ','@']) then
      begin
        if Assigned(FCercaBarCode) then
        begin
           FCercaBarCode.ModalResult := mrCancel;
           FCercaBarCode.Release;
        end
        else begin
          FCercaBarCode := TFCercaBarCode.Create(nil);
          try
          if FCercaBarCode.CercaSTUDY(barcode) then
             FCercaBarCode.ShowModal;
          finally
             FCercaBarCode.Release;
             FCercaBarCode := nil;
          end;
        end;
      end;
  end
  else if {not Assigned(FDatiDiag) and} (lungh=8) then
  begin
    if dxEseguiti.Down then
       dxDaEseguire.Click;

    if not IsSameDay(Date(),dxData.EditValue) and (MsgDlgPos(RS_Msg_AttentoGiornoReg, '', ktConfirmation, [kbYes,kbNo], dfFirst)<>mrYes) then
       Abort;

    RegistraImpegnativa(0, '', dxData.EditValue, s);

  end;

  finally
    AlertEventList1.Active := dxAttivaRefresh.Down;
  end;

end;

procedure TFAccDiagn.DBPlannerSideBarDblClick(Sender: TObject; X,
  Y: Integer; Anchor: String);
begin
  DBPlanner.PosizionaGrid(Now);
end;

procedure TFAccDiagn.aCutExecute(Sender: TObject);
var
  i: integer;
  AItem: TPlannerItem;
begin

  if AstaCut.Locate('PKTRIAGE',QyPrenoPKTRIAGE.AsInteger,[]) then
  begin
     CancellaMemoria(QyPrenoPKTRIAGE.AsInteger);
     DBPlanner.Refresh;
     exit;
  end
  else
     AstaCut.Append;

  for i:=0 to QyPreno.FieldCount-1 do
      if AstaCut.FindField(QyPreno.Fields[i].FieldName)<>nil then
         AstaCut.FieldbyName(QyPreno.Fields[i].FieldName).Value := QyPreno.Fields[i].Value;
  AstaCut.Post;
  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down then
  begin
    GridDaEseguireDettagli.DataController.BeginUpdate;
    qyPrenoDett.CancelRange;
    try
    qyPrenoDett.SetRange([QyPrenoPKTRIAGE.AsInteger],[QyPrenoPKTRIAGE.AsInteger]);
    while not qyPrenoDett.eof do
    begin
       AstaDett.Append;
       for i:=0 to qyPrenoDett.FieldCount-1 do
        if AstaDett.FindField(qyPrenoDett.Fields[i].FieldName)<>nil then
           AstaDett.FieldbyName(qyPrenoDett.Fields[i].FieldName).Value := qyPrenoDett.Fields[i].Value;
       AstaDett.Post;
       qyPrenoDett.Next;
    end;
    finally
        qyPrenoDett.CancelRange;
        GridDaEseguireDettagli.DataController.EndUpdate;
    end;
  end
  else begin
        RefreshDettagli.Parambyname('TRIAGE_FK').AsInteger := QyPrenoPKTRIAGE.AsInteger;
        RefreshDettagli.syRefresh;
        while not RefreshDettagli.eof do
        begin
           AstaDett.Append;
           for i:=0 to RefreshDettagli.FieldCount-1 do
            if AstaDett.FindField(RefreshDettagli.Fields[i].FieldName)<>nil then
               AstaDett.FieldbyName(RefreshDettagli.Fields[i].FieldName).Value := RefreshDettagli.Fields[i].Value;
           AstaDett.Post;
           RefreshDettagli.Next;
        end;
//        RefreshDettagli.close;
  end;

  DBPlanner.Refresh;
  AItem := DBPlanner.Items.FindKey(QyPrenoPKTRIAGE.AsString);
  if AItem<>nil then
     DBPlanner.FocusItem(AItem,false {true});

end;

procedure TFAccDiagn.aCutUpdate(Sender: TObject);
begin
  aCut.Enabled := (DBPlanner.Items.DBItem.Status in [{20,}100,110,120]);
end;

procedure TFAccDiagn.aPasteExecute(Sender: TObject);
begin
  if AstaCut.Recordcount>1 then
     aEndPaste.Execute
  else
     Incolla;

end;

procedure TFAccDiagn.aPasteUpdate(Sender: TObject);
begin
  aPaste.Enabled := not AstaCut.IsEmpty;
end;

procedure TFAccDiagn.aEndPasteExecute(Sender: TObject);
begin
   FCutPaste := TFCutPaste.Create(self);
   FCutPaste.sAstaCut.Dataset := AstaCut;
   FCutPaste.sAstaDett.Dataset := AstaDett;
   FCutPaste.CercaSpazio.Visible := false;
   FCutPaste.CercaSpazio.Enabled := false;
   FCutPaste.Show;

end;

procedure TFAccDiagn.aEndPasteUpdate(Sender: TObject);
begin
  aEndPaste.Enabled := not AstaCut.IsEmpty;
end;

destructor TFAccDiagn.Destroy;
begin

   AlertEventList1.Active := false;
//  try
  xPossibili.Free;
//  except
//  end;

  if Assigned(FCutPaste) then
  begin
     FCutPaste.Free;
     FCutPaste := nil;
  end;

  vbDiagn.Free;

  inherited;

end;

procedure TFAccDiagn.Incolla;
var
  i: integer;
  avanti: boolean;
  AItem: TPlannerItem;
  TempUM: TAstaUpdateMethod;
begin
    AlertEventList1.Active := false;

    QyPreno.DisableControls;
    DBDaySource.OnInsertItem := SourceInsertItem;
    try
    if not QyPreno.Locate('PKTRIAGE',AstaCut.Fieldbyname('PKTRIAGE').AsInteger,[]) then
    begin
        DBPlanner.xStartTime := DBPlanner.Items.TrovaTempoMax(DBPlanner.CellToTime(DBPlanner.SelPosition,DBPlanner.SelItemBegin), DBPlanner.SelPosition,DBPlanner.SelItemBegin,AstaCutDURATA.AsInteger);
        if DBPlanner.xStartTime>0 then
        begin
          TempUM := QyPreno.UpdateMethod;
          QyPreno.UpdateMethod := umManual;
          QyPreno.Append;
          for i:=0 to AstaCut.FieldCount-1 do
              if (QyPreno.FindField(AstaCut.Fields[i].FieldName)<>nil) and
                 (AstaCut.Fields[i].FieldName<>'ORA_INIZIO') and
                 (AstaCut.Fields[i].FieldName<>'ORA_FINE') and
                 (AstaCut.Fields[i].FieldName<>'DIAGNOSTICA_FK') and
  //               (AstaCut.Fields[i].FieldName<>'AGENDE_FK') and
                 (AstaCut.Fields[i].FieldName<>'REPARTI_FK') then

                 QyPreno.FieldbyName(AstaCut.Fields[i].FieldName).Value := AstaCut.Fields[i].Value;
          QyPreno.Post;
          QyPreno.UpdateMethod := TempUM;
        end;
    end
    else
        DBPlanner.xStartTime := DBPlanner.Items.TrovaTempoMax(DBPlanner.CellToTime(DBPlanner.SelPosition,DBPlanner.SelItemBegin),DBPlanner.SelPosition,DBPlanner.SelItemBegin,QyPrenoDURATA.AsInteger, DBPlanner.Items.Selected);

    if DBPlanner.xStartTime=0 then
    begin
       MsgDlg(RS_OperazioneNonPossibile,'', ktWarning, [kbOK]);
       exit;
    end;

    try
      DBPlanner.InternalCreateItemAtSelection;
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

      { controllo se si può eseguire lo spostamento }
      avanti := true;
      AstaCut.DisableControls;
      AstaDett.DisableControls;
      AstaDett.Locate('TRIAGE_FK',QyPrenoPKTRIAGE.AsInteger,[]);
      while avanti and not AstaDett.eof and (AstaDettTRIAGE_FK.AsInteger=QyPrenoPKTRIAGE.AsInteger) do
      begin
        avanti := xPossibili.Locate('CODICE;SERVIZI_FK',
                          VarArrayOf([AstaDettCODICE.AsString,QyPrenoDIAGNOSTICA_FK.AsInteger]),[]);
        if not avanti then
        begin
           MsgDlg(
           format(RS_CodiceNonUtilizzabile,[AstaDettCODICE.AsString,AstaDettDESCRIZIONE.AsString]),
           '', ktWarning, [kbOK]);
        end;
        AstaDett.Next;
      end;
      AstaCut.Locate('PKTRIAGE',QyPrenoPKTRIAGE.AsInteger,[]);
      AstaDett.Locate('TRIAGE_FK',QyPrenoPKTRIAGE.AsInteger,[]);
      AstaDett.EnableControls;
      AstaCut.EnableControls;

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
            if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down then
            begin
               qyPrenoDett.syRefresh;
            end;
            raise;
          end;

          CancellaMemoria(AstaCutPKTRIAGE.AsInteger);

          if AstaCut.IsEmpty then
             PostMessage(Handle,SY_CHIUDICUTPASTE,0,0);

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
//       Possibili.Filtered := false;
       DBDaySource.OnInsertItem := nil;
       QyPreno.EnableControls;
       AlertEventList1.Active := dxAttivaRefresh.Down;
    end;

end;

procedure TFAccDiagn.SourceInsertItem(Sender: TObject;
  APlannerItem: TPlannerItem);
begin
  // -- utilizzato per spostamenti da memoria (cut&paste)
  QyPreno.Edit;
  QyPrenoORA_INIZIO.AsDateTime := DBPlanner.xStartTime; // APlannerItem.ItemStartTime;
  QyPrenoORA_FINE.AsDateTime := IncMinute(QyPrenoORA_INIZIO.AsDateTime,QyPrenoDURATA.AsInteger); // APlannerItem.ItemEndTime;
{$IFNDEF MEDICORNER}
  if ((FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=1) and (QyPrenoSTATOVISITA.AsInteger=110))
      {or (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=3)} then
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
  if (QyPrenoSTATOVISITA.AsInteger in [100,110,120]) and not IsSameDay(QyPrenoDATA_ACCETTAZIONE.AsDateTime,dxData.EditValue) then
     QyPrenoDATA_ACCETTAZIONE.AsDateTime := dxData.EditValue;
  APlannerItem.DBKey := QyPrenoPKTRIAGE.AsString;
  DBDaySource.OnItemToFields(Self, QyPreno.Fields, APlannerItem);
end;

procedure TFAccDiagn.ChiudiCutPaste(var Message: TMessage);
begin
   if Assigned(FCutPaste) then
   begin
      FCutPaste.Free;
      FCutPaste := nil;
   end;
end;

procedure TFAccDiagn.AccettaEsterniExecute(Sender: TObject);
begin

   if (FCodiceDiag='-1') then
   begin
     MsgDlg(RS_Gene_NessunaDiagnSelez,'', ktWarning, [kbOK]);
     exit;
   end;

   if dxEseguiti.Down then
      dxDaEseguire.Click;

   if not IsSameDay(Date(),dxData.EditValue) and (MsgDlgPos(RS_Msg_AttentoGiornoReg, '', ktConfirmation, [kbYes,kbNo], dfFirst)<>mrYes) then
      Abort;

   if pop_position>=0 then
   begin
      RegistraImpegnativa(vResToPos[DBDaySource.PosToRes(pop_position)], vResToText[DBDaySource.PosToRes(pop_position)],
                          DBPlanner.xStartTime);
      pop_position := -1;
   end
   else begin
      RegistraImpegnativa(0, '', dxData.EditValue);
   end;

end;


procedure TFAccDiagn.RegistraImpegnativa(xDiag: integer;const xDiagDescr: string; xOra_Inizio: TDateTime; pid: string = '');
var
  res: integer;
begin

  AlertEventList1.Active := false;
  FDatiAccImp := TFDatiAccImp.Create(nil);

  if xdiag>0 then
  begin
    xPossibili.Indexes[1].Selected := true;
    xPossibili.CancelRange;
    xPossibili.SetRange([xdiag],[xdiag]);
  end;

  try

     FDatiAccImp.StatoLancio := 1;
     if FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=1 then
        FDatiAccImp.ProxStatoVisita := 110
     else if FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=3 then
        FDatiAccImp.ProxStatoVisita := 120 // 130
     else if FDMCommon.LeggiPostoLavoroABILITA_ACC_AMM.AsInteger=1 then
        FDatiAccImp.ProxStatoVisita := 100
     else
        FDatiAccImp.ProxStatoVisita := 120;

     FDatiAccImp.xPossibili := xPossibili;
     FDatiAccImp.Esami := FDMCommon.FiltraEsami(xPossibili);
     FDatiAccImp.xDiag := xDiag;
     FDatiAccImp.xDiagDescr := xDiagDescr;
     FDatiAccImp.xOra_Inizio := xOra_Inizio;
     FDatiAccImp.xReferAcc := self;
     FDatiAccImp.Accettazione.OpenNoFetch;
     FDatiAccImp.Accettazione.Insert;

     FDatiAccImp.xoggi := dxData.EditValue;
     if pid='*' then
     begin
        FDatiAccImp.TesseraLetta := TesseraLetta;
        PostMessage(Handle,SY_READTESSERA,0,0);
     end
     else if pid<>'' then
        FDatiAccImp.xPID := pid;

     FDatiAccImp.xDal := dxRichDal.EditValue;
     FDatiAccImp.xAl := dxRichAl.EditValue;

     res := FDatiAccImp.ShowModal;
     if (res in [mrOk,mrRetry]) then
     begin
        RefreshImpegnative(FDatiAccImp.AccettazionePKIMPEGNATIVE.AsInteger,false,false,(res=mrRetry));
     end;

  finally
     FreeAndNil(FDatiAccImp);

     if xdiag>0 then
     begin
      xPossibili.Indexes[0].Selected := true;
      xPossibili.CancelRange;
{
      xPossibili.Filtered := false;
      xPossibili.Filter := '';
}
     end;
     AlertEventList1.Active := dxAttivaRefresh.Down;
  end;
  if refGrid<>nil then
     FDMCommon.vLocate(refGrid, refdata.Fieldbyname('PKTRIAGE').AsInteger);

end;


procedure TFAccDiagn.RegistraInterni(xDiag: integer;const xDiagDescr: string; xOra_Inizio: TDateTime; ps: boolean);
var
  res: integer;
begin
{$IFNDEF MEDICORNER}
  AlertEventList1.Active := false;
  FDatiAccDiagn := TFDatiAccDiagn.Create(nil);

  if xdiag>0 then
  begin
    xPossibili.Indexes[1].Selected := true;
    xPossibili.CancelRange;
    xPossibili.SetRange([xdiag],[xdiag]);
  end;

  try

     FDatiAccDiagn.StatoLancio := 11;
     if FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=1 then
        FDatiAccDiagn.ProxStatoVisita := 110
     else if FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=3 then
        FDatiAccDiagn.ProxStatoVisita := 120
     else if FDMCommon.LeggiPostoLavoroABILITA_ACC_AMM.AsInteger=1 then
        FDatiAccDiagn.ProxStatoVisita := 100
     else
        FDatiAccDiagn.ProxStatoVisita := 120;

     FDatiAccDiagn.xPossibili := xPossibili;
     FDatiAccDiagn.Esami := FDMCommon.FiltraEsami(xPossibili);
     FDatiAccDiagn.sDiagnostica.Dataset := LkDiagxWk;
     FDatiAccDiagn.xDiag := xDiag;
     FDatiAccDiagn.xDiagDescr := xDiagDescr;
     FDatiAccDiagn.xOra_Inizio := xOra_Inizio;
     FDatiAccDiagn.xReferAcc := self;

     FDatiAccDiagn.Accettazione.opennofetch;
     FDatiAccDiagn.Accettazione.Insert;
     FDatiAccDiagn.xoggi := dxData.EditValue;

     if ps and not VarIsNull(gblpkrepps) then
     begin
        FDatiAccDiagn.AccettazioneREPARTO_RICH_FK.AsInteger := gblpkrepps;
        FDatiAccDiagn.AccettazionePROVENIENZA.AsString := 'P';

        if (FDMCommon.LeggiPostoLavoroCHK_SLITTA_REP.AsInteger=0) then
        begin
          FDMCommon.LkReparti.Filtered := false;
          FDMCommon.LkReparti.Filter   := format('PKREPARTI = %d',[gblpkrepps]);
          FDMCommon.LkReparti.Filtered := true;
        end;

        FDatiAccDiagn.LkServizi.Parambyname('reparti_fk').AsInteger := gblpkrepps;
        FDatiAccDiagn.LkServizi.syRefresh;
        if not VarIsNull(gblpkservps) then
        begin
           FDatiAccDiagn.AccettazioneSERVIZIO_RICH_FK.AsInteger := gblpkservps;
           FDatiAccDiagn.LkServizi.Locate('PKSERVIZI',gblpkservps,[]);
           FDatiAccDiagn.cxServizioPropertiesCloseUp(self);
        end;
     end
     else begin
        FDatiAccDiagn.AccettazionePROVENIENZA.AsString := 'I';
        if (FDMCommon.LeggiPostoLavoroCHK_SLITTA_REP.AsInteger=1) then
        begin
           if FDMCommon.LkReparti.Locate('OSP_CODICE',gblospedale,[]) then
              FDatiAccDiagn.AccettazioneREPARTO_RICH_FK.AsInteger := FDMCommon.LkRepartiPKREPARTI.AsInteger
        end
        else if not VarIsNull(gblpkrepps) then
        begin
          FDMCommon.LkReparti.Filtered := false;
          FDMCommon.LkReparti.Filter   := format('PKREPARTI <> %d',[gblpkrepps]);
          FDMCommon.LkReparti.Filtered := true;
        end;

     end;

     FDatiAccDiagn.xDal := dxRichDal.EditValue;
     FDatiAccDiagn.xAl := dxRichAl.EditValue;

     res := FDatiAccDiagn.ShowModal;
     if (res in [mrOk,mrRetry]) then
     begin
        RefreshImpegnative(FDatiAccDiagn.AccettazionePKIMPEGNATIVE.AsInteger,false,false,(res=mrRetry));
     end;


  finally
     FDatiAccDiagn.Free;
     FDatiAccDiagn := nil;
     if xdiag>0 then
     begin
      xPossibili.Indexes[0].Selected := true;
      xPossibili.CancelRange;
{
      xPossibili.Filtered := false;
      xPossibili.Filter := '';
}
     end;
     FDMCommon.LkReparti.Filtered := false;
     AlertEventList1.Active := dxAttivaRefresh.Down;
  end;
  if refGrid<>nil then
     FDMCommon.vLocate(refGrid, refdata.Fieldbyname('PKTRIAGE').AsInteger);
{$ENDIF}
end;


procedure TFAccDiagn.RefreshImpegnative(pkimp: integer; accettazione,modifica,stampa: boolean);
var
  x,i: integer;
  RefItem: string;
  AItem: TPlannerItem;
//  xdurata: integer;
  TempUM: TAstaUpdateMethod;
  pk: integer;
  old_filtered: boolean;
begin
   RefItem := '';
   TriagexImpegnative.Parambyname('impegnative_fk').AsInteger := pkimp;
   TriagexImpegnative.syrefresh;
//   xdurata := DBPlanner.Display.Displayunit;
   if accettazione and (dxPageControl.ActivePage<>dxTabPreno) then
   begin
     for i:=1 to TriagexImpegnative.recordcount do
     begin
        pk := TriagexImpegnativePKTRIAGE.AsInteger;
        old_filtered := QyPreno.Filtered;
        QyPreno.Filtered := false;
        if QyPreno.Locate('PKTRIAGE',pk,[]) then
        begin
          QyPreno.RefreshRecord;
          AItem := DBPlanner.Items.FindKey(TriagexImpegnativePKTRIAGE.AsString);
          if AItem<>nil then
             RefreshEsamixPreno(AItem);
        end;
        if old_filtered then
           QyPreno.Filtered := true;
        TriagexImpegnative.Next;
     end;
   end
   else begin
     for i:=1 to TriagexImpegnative.recordcount do
     begin
       pk := TriagexImpegnativePKTRIAGE.AsInteger;
       AItem := DBPlanner.Items.FindKey(TriagexImpegnativePKTRIAGE.AsString);
       if AItem<>nil then
       begin
          if RefItem='' then
          begin
             RefItem := AItem.DBKey;
  //           xdurata := TriagexImpegnativeDURATA.AsInteger;
          end;
          refData.RefreshRecord;
          if Assigned(AItem) and (AItem.DBKey<>'') then
             RefreshEsamixPreno(AItem);
       end
       else begin
          if (not AncheEseguiti and (TriagexImpegnativeSTATOVISITA.AsInteger in [100,120,121,122])) or
             (AncheEseguiti and (TriagexImpegnativeSTATOVISITA.AsInteger in [100,120,121,122,130,140,150,160,161,165,166,170,171,180,190,198])) then
          begin
            InsertOperazione(GridDaEseguire,GridDaEseguireDettagli,pk);
          end;
          if (TriagexImpegnativeSTATOVISITA.AsInteger>=130) and (TriagexImpegnativeSTATOVISITA.AsInteger<=198) then
          begin
            InsertOperazione(GridEseguiti,GridEseguitiDettagli,pk);
          end;
       end;
       TriagexImpegnative.Next;
     end;
   end;

   // -- cancello Item non più esistenti...
   if modifica then
   begin
     ModificaxImpegnative.First;
     for x:=1 to ModificaxImpegnative.Recordcount do
     begin
       if not TriagexImpegnative.Locate('PKTRIAGE',ModificaxImpegnativePKTRIAGE.AsInteger,[]) then
       begin
{
          AItem := DBPlanner.Items.FindKey(ModificaxImpegnativePKTRIAGE.AsString);
          if AItem<>nil then
          begin
              TempUM := QyPreno.UpdateMethod;
              QyPreno.UpdateMethod := umManual;
              try
                DBPlanner.Items.DBItem := AItem;
                DBDaySource.DeleteDBItem(DBPlanner);
              finally
                QyPreno.UpdateMethod := TempUM;
              end;
          end;
}
          if QyPreno.Locate('PKTRIAGE',ModificaxImpegnativePKTRIAGE.AsInteger,[]) then
          begin
              TempUM := QyPreno.UpdateMethod;
              QyPreno.UpdateMethod := umManual;
              try
                QyPreno.Delete;
//                DBDaySource.DeleteDBItem(DBPlanner);
              finally
                QyPreno.UpdateMethod := TempUM;
              end;
          end;

       end;
       ModificaxImpegnative.Next;
     end;
   end;

   if refData=QyPreno then
   begin
     if RefItem<>'' then
     begin
        DBPlanner.Refresh;
        AItem := DBPlanner.Items.FindKey(RefItem);
        if (AItem<>nil) and (dxPageControl.ActivePage=dxTabPreno) then
           DBPlanner.FocusItem(AItem,true);
     end
     else
        DBPlanner.Refresh;
   end;

   if stampa then
   begin
      FStampaAvvisi := TFStampaAvvisi.Create(nil);
      try
         FStampaAvvisi.Conferma.Visible := false;
         FStampaAvvisi.Conferma.Enabled := false;
         FStampaAvvisi.xDataset := TriagexImpegnative;
         FStampaAvvisi.Caption := 'Stampe diagnostica';
         if TriagexImpegnativePROVENIENZA.AsString='E' then
            FStampaAvvisi.CaricaStampe := 30
         else if TriagexImpegnativePROVENIENZA.AsString='I' then
            FStampaAvvisi.CaricaStampe := 31
         else // if TriagexImpegnativePROVENIENZA.AsString='P' then
            FStampaAvvisi.CaricaStampe := 32;
         FStampaAvvisi.TuttiRecord := true;
         FStampaAvvisi.ShowModal;
      finally
         FStampaAvvisi.Free;
         FStampaAvvisi := nil;
      end;
   end;

end;

procedure TFAccDiagn.AccettaPSExecute(Sender: TObject);
begin

   if (FCodiceDiag='-1') then
   begin
     MsgDlg(RS_Gene_NessunaDiagnSelez,'', ktWarning, [kbOK]);
     exit;
   end;

  if dxEseguiti.Down then
     dxDaEseguire.Click;

  if not IsSameDay(Date(),dxData.EditValue) and (MsgDlgPos(RS_Msg_AttentoGiornoReg, '', ktConfirmation, [kbYes,kbNo], dfFirst)<>mrYes) then
     Abort;

//  AlertEventList1.Active := false;
  try
     if pop_position>=0 then
     begin
        RegistraInterni(vResToPos[DBDaySource.PosToRes(pop_position)], vResToText[DBDaySource.PosToRes(pop_position)],
                            DBPlanner.xStartTime, true);
        pop_position := -1;
     end
     else begin
          RegistraInterni(0, '', 0, true);
     end;
  finally
//    AlertEventList1.Active := dxAttivaRefresh.Down;
  end;
end;

procedure TFAccDiagn.ChangeDisplayUnit(var Message: TMessage);
begin
  dxPeriodo.OnChange := nil;
  dxPeriodo.ItemIndex := Message.LParam-1;
  dxPeriodo.OnChange := dxPeriodoChange;
end;

procedure TFAccDiagn.StampaEtichetteExecute(Sender: TObject);
begin
  AlertEventList1.Active := false;
  try
  FStampaAvvisi := TFStampaAvvisi.Create(nil);
  try
     FStampaAvvisi.Conferma.Visible := false;
     FStampaAvvisi.Conferma.Enabled := false;
     if (dxPageControl.ActivePage=dxTabPreno) then
        FStampaAvvisi.xDataset := QyPreno
     else
        FStampaAvvisi.DBTableView := refGrid;
     FStampaAvvisi.Caption := 'Stampe esami da gestire';

     case refData.Fieldbyname('STATOVISITA').AsInteger of
     20:
         begin
           if refData.FieldByName('PROVENIENZA').AsString='E' then
              FStampaAvvisi.CaricaStampe := 10
           else
              FStampaAvvisi.CaricaStampe := 12;
         end;
     130:
         begin
              FStampaAvvisi.CaricaStampe := 40;
         end;
     else
       begin
         if refData.Fieldbyname('PROVENIENZA').AsString='E' then
            FStampaAvvisi.CaricaStampe := 30
         else if refData.Fieldbyname('PROVENIENZA').AsString='I' then
            FStampaAvvisi.CaricaStampe := 31
         else // if TriagexImpegnativePROVENIENZA.AsString='P' then
            FStampaAvvisi.CaricaStampe := 32;
       end;
     end;
     FStampaAvvisi.ShowModal;
  finally
     FStampaAvvisi.Free;
     FStampaAvvisi := nil;
  end;
  finally
    AlertEventList1.Active := dxAttivaRefresh.Down;
  end;

end;

procedure TFAccDiagn.AccettaPSUpdate(Sender: TObject);
begin
  AccettaPS.Enabled := (nr_res>0) and not (gblpkrepps=-1) and (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,6])
                             and (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>2);
end;

procedure TFAccDiagn.dxDaEseguireClick(Sender: TObject);
var
 PrecrefData: TAstaClientDataset;
begin

//  if dxPageControl.ActivePage=dxTabElenco then exit;

  dxPageControl.ActivePage := dxTabElenco;

  PrecrefData := refData;
  refData := QyPreno;
  refGrid := GridDaEseguire;
  DBPlanner.Visible := false;

  try
  ActiveControl := GridDaEseguire.Site;
  if PrecrefData=QyPreno then
     FDMCommon.vLocate(GridDaEseguire, PrecrefData.Fieldbyname('PKTRIAGE').AsInteger);
//  else

//    GridDaEseguire.Controller.GoToFirst;
  except
     // -- per catturare ActiveControl se non visibile...
  end;

  if not QyPrenoDett.Active or (FDMCommon.LeggiPostoLavoroSHOW_ESEGUITI.AsInteger=1) then
  begin
      if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down then
          QyPrenoDett.syRefresh;
  end;
  if not QyPreno.Active or (FDMCommon.LeggiPostoLavoroSHOW_ESEGUITI.AsInteger=1) then
  begin
     QyPreno.syRefresh;
  end;

end;

procedure TFAccDiagn.StampaEtichetteUpdate(Sender: TObject);
//var
//  xstato: integer;
begin

  StampaEtichette.Enabled := not EmptyDataset(refData);
(*
  if (dxPageControl.ActivePage=dxTabElenco) or (dxPageControl.ActivePage=dxTabEseguiti) then
  begin
      xstato := refData.FieldByName('STATOVISITA').AsInteger;
      StampaEtichette.Enabled := (RecordAttuale<>-1) and (xstato in [20,40,41,100,110,120,121,122,130,140,150,160,161,165,166,170,171,180,190]);
  end
  else
      StampaEtichette.Enabled := not EmptyDataset(refdata) and
                                    (DBPlanner.Items.DBItem<>nil) and
                                     DBPlanner.Items.DBItem.Selected and
                                    (DBPlanner.Items.DBItem.Status in [20,40,41,100,110,120,121,122,130,140,150,160,161,165,166,170,171,180,190]);
*)
end;

procedure TFAccDiagn.GridDaEseguireDblClick(Sender: TObject);
begin
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxGridDaEseguire),LongInt(EsecuzioneEsame));
end;

procedure TFAccDiagn.QyEseguitiBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
//  Sender.Parambyname('lingua').AsString := gbllingua;
{$IFNDEF MEDICORNER }
  Sender.Parambyname('statoinizio').AsInteger := 130;
{$ELSE}
  Sender.Parambyname('statoinizio').AsInteger := 140;
{$ENDIF}
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  Sender.Parambyname('workstation_fk').AsInteger := gblpkworkstation;
  Sender.Parambyname('data_preno').AsDateTime := dxData.EditValue;
end;

procedure TFAccDiagn.Timer1Timer(Sender: TObject);
begin

     FStartNow := Now();

     if {gblDebugMode or} (not IsSameDay(FStartNow,dxData.EditValue) and (FStartNow>dxData.EditValue)) then
     begin
        dxData.EditValue := Date(); //ex: FStartNow;  {JRT 5576}
        dxDataPropertiesCloseUp(Sender);
     end;

     Timer1.Enabled := true;

end;

procedure TFAccDiagn.aCorreggiAccettazioneExecute(Sender: TObject);
var
  xnr,xnt,xns: integer;
begin

 xnr := refData.FieldByName('IMPEGNATIVE_FK').AsInteger;
 xnt := refData.FieldByName('PKTRIAGE').AsInteger;
 xns := refData.FieldByName('STATOVISITA').AsInteger;

 if not FDMCommon.LockRecord(xnr,gblCodUtente,3) then
    exit;

 try

 if not FDMCommon.LockRecord(xnt,gblCodUtente,1,xns) then
 begin
    exit;
 end;

 if (refData.FieldByName('PROVENIENZA').AsString='E') then
    CorreggiImpegnativa(false)
 else if (refData.FieldByName('TIPO_ATTIVITA_FK').AsString=FDMCommon.LeggiPostoLavoroTIPO_ATT_SALA_OP.AsString) then
    ModificaSalaOp(false)
 else
    ModificaAccInterno(false);

 finally
    FDMCommon.UnLockRecord(xnt,gblCodUtente,1);
    FDMCommon.UnLockRecord(xnr,gblCodUtente,3);
 end;

end;

procedure TFAccDiagn.aCorreggiAccettazioneUpdate(Sender: TObject);
var
  xstato: integer;
begin

  if (dxPageControl.ActivePage=dxTabElenco) or (dxPageControl.ActivePage=dxTabEseguiti) then
  begin
      xstato := refData.FieldByName('STATOVISITA').AsInteger;
      aCorreggiAccettazione.Enabled := (RecordAttuale<>-1) and (xstato in [100,110,120])
                                       {and (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2])}
                                        ;
  end
  else
      aCorreggiAccettazione.Enabled := not EmptyDataset(refdata) and
                                    (DBPlanner.Items.DBItem<>nil) and
                                     DBPlanner.Items.DBItem.Selected and
                                    (DBPlanner.Items.DBItem.Status in [100,110,120])
                                    {and (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2])}
                                    ;

end;

procedure TFAccDiagn.RiportaStandardExecute(Sender: TObject);
begin

   FResetEffettuato := true;
   rsPropSaver1.Storage.SectionClear(rsPropSaver1.RootSection);
   rsPropSaver1.Storage.SectionClear(name+'.'+GridDaEseguire.Name);
   rsPropSaver1.Storage.SectionClear(name+'.'+GridEseguiti.Name);
   rsPropSaver1.Storage.SectionClear(name+'.'+GridRichieste.Name);
   GridDaEseguire.OptionsView.DataRowHeight := 0;
   GridEseguiti.OptionsView.DataRowHeight := 0;
   GridRichieste.OptionsView.DataRowHeight := 0;

   rsPropSaver1.Storage.SectionClear(name+'.rsPropSaver1');

   PostMessage(Application.MainForm.Handle,SY_REFRESHFORM,0,LongInt(self));

end;

procedure TFAccDiagn.PersonalizzaExecute(Sender: TObject);
begin

 if (dxPageControl.ActivePage=dxTabPreno) then
 begin
    GridRichieste.Controller.Customization := true;
 end
 else if (dxPageControl.ActivePage=dxTabElenco) then
 begin
    GridDaEseguire.Controller.Customization := true;
 end
 else if (dxPageControl.ActivePage=dxTabEseguiti) then
 begin
    GridEseguiti.Controller.Customization := true;
 end;

end;

procedure TFAccDiagn.GridDaEseguireKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
//     aCorreggiAccettazione.Execute;
     EsecuzioneEsame.Execute;
end;

procedure TFAccDiagn.AlertEventList1SetActive(Sender: TKSAstaEventClient);
begin
  if not AlertEventList1.Active then
  begin
{
     if (dxPageControl.ActivePage=dxTabElenco) then
     begin
       GridDaEseguire.BeginUpdate;
       GridDaEseguire.DataController.BeginLocate;
     end
     else if (dxPageControl.ActivePage=dxTabEseguiti) then
     begin
       GridEseguiti.BeginUpdate;
       GridEseguiti.DataController.BeginLocate;
     end;
}
  end
  else begin
     if (dxPageControl.ActivePage=dxTabPreno) then
     begin
//       GridRichieste.DataController.EndLocate;
//       GridRichieste.EndUpdate;
       GridRichieste.DataController.UpdateItems(False);
       DBPlanner.refresh;
     end
     else if (dxPageControl.ActivePage=dxTabElenco) then
     begin
//       GridDaEseguire.DataController.EndLocate;
//       GridDaEseguire.EndUpdate;
       GridDaEseguire.DataController.UpdateItems(False);
     end
     else if (dxPageControl.ActivePage=dxTabEseguiti) then
     begin
//       GridEseguiti.DataController.EndLocate;
//       GridEseguiti.EndUpdate;
       GridEseguiti.DataController.UpdateItems(False);
     end;
  end;
end;

procedure TFAccDiagn.GridEseguitiDblClick(Sender: TObject);
begin
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxGridEseguiti),LongInt(EsecuzioneEsame));
end;

procedure TFAccDiagn.GridEseguitiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
     EsecuzioneEsame.Execute;

end;

procedure TFAccDiagn.AlertEventList1DataSets1AcceptActiveEvent(
  Sender: ToelItem; var op: Char; ParamList: TInternalAstaParamList;
  var Accept: Boolean);

begin

  Accept := (ParamList.ParamByName('reparti_fk').AsInteger=gblpkrep) and DiagnosticaUsata(ParamList.ParamByName('diagnostica_fk').AsInteger);
  if not Accept then exit;
{$IFDEF MEDICORNER}
  case op of

  'D': Accept := true;
  'I': Accept := (ParamList.ParamByName('statovisita').AsInteger>130);

  'U','A': begin
       Accept := not (ParamList.ParamByName('statovisita').AsInteger in [100,110,120,121,122,130]);
       if Accept and (ParamList.ParamByName('statovisita').AsInteger<=130) then
            op := 'D';
       end;
  end;
{$ELSE}
  case op of

  'D': Accept := true;
  'I': Accept := (ParamList.ParamByName('statovisita').AsInteger>122);

  'U','A': begin
       Accept := not (ParamList.ParamByName('statovisita').AsInteger in [100,110,120,121,122]);
       if Accept and (ParamList.ParamByName('statovisita').AsInteger<130) then
            op := 'D';
       end;
  end;
{$ENDIF}
end;

procedure TFAccDiagn.AccettaEsterniUpdate(Sender: TObject);
begin
  AccettaEsterni.Enabled := (nr_res>0) and (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,6]);
end;


procedure TFAccDiagn.RiportaDaEseguireExecute(Sender: TObject);
var
  pk: integer;
  rr: integer;
  tecnico: integer;
  xesegui: boolean;
  xnr: integer;
begin

{$IFDEF MEDICORNER}
 if not MsgDlgPos(RS_Msg_ConfRitorno, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes then
     Exit;
{$ENDIF}

 AlertEventList1.Active := false;
 xnr := refData.FieldByName('PKTRIAGE').AsInteger;
 try

      if not FDMCommon.LockRecord(xnr,gblCodUtente,1,refData.FieldByName('STATOVISITA').AsInteger) then
         exit;

{$IFNDEF MEDICORNER}
      FConfermaPswdRep := TFConfermaPswdRep.Create(nil);
      try
        rr := FConfermaPswdRep.ShowModal;
        tecnico := FConfermaPswdRep.User_id;
        xesegui  := (FConfermaPswdRep.EseguiEsame or FConfermaPswdRep.userIsAdmin or FConfermaPswdRep.SuperUser);
      finally
        FConfermaPswdRep.Free;
        FConfermaPswdRep := nil;
      end;
      if rr=mrCancel then
         Abort
      else if not xesegui then
      begin
         MsgDlg(RS_UtenteNonAbilitatoEseguito,'', ktError, [kbOK]);
         Abort;
      end
      else begin
        QyEseguiti.Edit;
        QyEseguitiSTATOVISITA.AsInteger := 120;
        QyEseguitiUSER_ID.AsInteger := tecnico;
        if QyEseguitiREPARTI_FK.AsInteger<>gblpkrep then
           QyEseguitiREPARTI_FK.AsInteger := gblpkrep;
        QyEseguiti.Post;
        pk := QyEseguitiPKTRIAGE.AsInteger;
        DeleteOperazione(GridEseguiti,GridEseguitiDettagli,pk);
        InsertOperazione(GridDaEseguire,GridDaEseguireDettagli,pk);
        if (dxPageControl.ActivePage=dxTabPreno) then
           DBPlanner.Refresh;
      end;
{$ELSE}

     RitornaDaAcc.Parambyname('user_id').AsInteger := gblcodutente;
     RitornaDaAcc.Parambyname('pktriage').AsInteger := xnr;
     RitornaDaAcc.Parambyname('statovisita').AsInteger := 120;
     RitornaDaAcc.ExecCommit;
     DeleteOperazione(GridEseguiti,GridEseguitiDettagli,xnr);
     InsertOperazione(GridDaEseguire,GridDaEseguireDettagli,xnr);

{$ENDIF}

 finally
   FDMCommon.UnLockRecord(xnr,gblCodUtente,1);
   AlertEventList1.Active := dxAttivaRefresh.Down;
 end;

end;

procedure TFAccDiagn.RiportaDaEseguireUpdate(Sender: TObject);
var
  xstato: integer;
begin

  if (dxPageControl.ActivePage=dxTabEseguiti) then
  begin
      xstato := refData.FieldByName('STATOVISITA').AsInteger;
      RiportaDaEseguire.Enabled := (RecordAttuale<>-1) and ((xstato=198) or ((xstato=130) and gblModTecnicoEseguito));
  end
  else
      RiportaDaEseguire.Enabled := false;
end;

procedure TFAccDiagn.AggiornaExecute(Sender: TObject);
begin

  AlertEventList1.Active := false;
  try
  if (dxPageControl.ActivePage<>dxTabEseguiti) then
  begin
//     QyPreno.syRefresh;
     SYAggiornaLista(GridDaEseguire,GridDaEseguireDettagli,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down);
     if dxCalendario.Down then
     begin
//       qyDaAcc.syRefresh;
       SYAggiornaLista(GridRichieste,GridRichiesteDettagli,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down);
       DBPlanner.Refresh;

     end
     ;
  end
  else begin
//     qyEseguiti.syRefresh;
     SYAggiornaLista(GridEseguiti,GridEseguitiDettagli,(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down);
//     GridEseguiti.DataController.UpdateItems(False)
  end;
  finally
     AlertEventList1.Active := dxAttivaRefresh.Down;
  end;
end;

procedure TFAccDiagn.aRitornoInRichiesteExecute(Sender: TObject);
var
  TempUM: TAstaUpdateMethod;
  xstato,pkimp: integer;
{
  procedure RitornaAcc(xpk,xstato,xdiagn: integer);
  var
     ParamList: TAstaParamList;
  begin
      ParamList := TAstaParamList.Create;
      try
         ParamList.AddNamedParam('tabella','triage');
         ParamList.AddNamedParam('operazione','A');
         ParamList.AddNamedParam('pkvalue',xpk);
         ParamList.AddNamedParam('pkfield','PKTRIAGE');
         ParamList.AddNamedParam('user_id',-1);
         ParamList.AddNamedParam('statovisita',xstato);
         ParamList.AddNamedParam('diagnostica_fk',xdiagn);
         ParamList.AddNamedParam('reparti_fk',gblpkrep);
         AlertEventList1.ksOnEventEvent(ParamList);
      finally
         ParamList.Free;
      end;
  end;
}
begin

 if MsgDlgPos(RS_Msg_ConfRitornoAcc, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes then
 begin
  AlertEventList1.Active := false;
{
  if refData.FieldByName('AGENDE_FK').IsNull then
  begin
     MsgDlg(RS_Msg_NonPrenotabile, '', ktInformation, [kbOk]);
     AlertEventList1.Active := dxAttivaRefresh.Down;
     exit;
  end;
}
  TempUM := refData.UpdateMethod;
  refData.UpdateMethod := umManual;
  try

     pkimp := refData.Fieldbyname('PKTRIAGE').AsInteger;
     if refData.FieldByName('COD_MED_VALIDA').IsNull then
        xstato := 40
     else
        xstato := 41;

     RitornaDaAcc.Parambyname('user_id').AsInteger := gblcodutente;
     RitornaDaAcc.Parambyname('pktriage').AsInteger := pkimp;
     RitornaDaAcc.Parambyname('statovisita').AsInteger := xstato;
     RitornaDaAcc.ExecCommit;

//     PostMessage(Handle,SY_REFRESHRICHIESTE,40,refData.Fieldbyname('IMPEGNATIVE_FK').AsInteger);
     PostMessage(Handle,SY_REFRESHRICHIESTE,40,pkimp);
//     refData.Delete;

{
     TriagexImpegnative.Parambyname('impegnative_fk').AsInteger := pkimp;
     TriagexImpegnative.syrefresh;
//     if (xstato=40) then
     begin
       for i:=1 to TriagexImpegnative.recordcount do
       begin
          if refData.Locate('pktriage',TriagexImpegnativePKTRIAGE.AsInteger,[]) then
          begin
             refData.Delete;
             RitornaAcc(TriagexImpegnativePKTRIAGE.AsInteger,xstato,TriagexImpegnativeDIAGNOSTICA_FK.AsInteger);
          end;
          TriagexImpegnative.Next;
       end;
     end;
}

//     refData.RefreshRecord;

{
     if dxPageControl.ActivePage=dxTabPreno then
        DBPlanner.Refresh;
}
  finally
     refData.UpdateMethod := TempUM;
     AlertEventList1.Active := dxAttivaRefresh.Down;
  end;

 end;

end;

procedure TFAccDiagn.aRitornoInRichiesteUpdate(Sender: TObject);
var
  xstato: integer;
  xcepreno: boolean;
begin

  if (dxPageControl.ActivePage=dxTabElenco) or (dxPageControl.ActivePage=dxTabEseguiti) then
  begin
      xstato := refData.FieldByName('STATOVISITA').AsInteger;
      xcepreno := {JRT 3735 refData.FieldByName('AGENDE_FK').IsNull and} ((FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or not (refData.FieldByName('PROVENIENZA').AsString='E'));
      aRitornoInRichieste.Enabled := dxVisualizzaPreno.Down and
                                     (RecordAttuale<>-1) and (xstato in [20,100,110,120]) and xcepreno and (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,5]);
  end
  else
      aRitornoInRichieste.Enabled := dxVisualizzaPreno.Down and
                                     not EmptyDataset(refdata) and
                                    {JRT 3735 refData.FieldByName('AGENDE_FK').IsNull and}
                                    (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,5]) and
                                    ((FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or not (refData.FieldByName('PROVENIENZA').AsString='E')) and
                                    (DBPlanner.Items.DBItem<>nil) and
                                     DBPlanner.Items.DBItem.Selected and
                                    (DBPlanner.Items.DBItem.Status in [20,100,110,120]);

end;

procedure TFAccDiagn.StoricoExecute(Sender: TObject);
begin
  StoricoOperazione(refData.Fieldbyname('PKTRIAGE').AsInteger);
end;

procedure TFAccDiagn.StoricoUpdate(Sender: TObject);
begin
  if (dxPageControl.ActivePage=dxTabElenco) or (dxPageControl.ActivePage=dxTabEseguiti) then
  begin
      Storico.Enabled := (RecordAttuale<>-1);
  end
  else
      Storico.Enabled := not EmptyDataset(refdata) and
                                    (DBPlanner.Items.DBItem<>nil) and
                                     DBPlanner.Items.DBItem.Selected;
end;

procedure TFAccDiagn.ModificaAnagraficaExecute(Sender: TObject);
var
  trovato: integer;
  pkimp: integer;
  pkass: integer;
  xnr: integer;
begin

  AlertEventList1.Active := false;
  xnr := refData.FieldByName('PKTRIAGE').AsInteger;  
  try

  if not FDMCommon.LockRecord(xnr,gblCodUtente,1,refData.FieldByName('STATOVISITA').AsInteger) then
     exit;

  pkimp := refData.Fieldbyname('IMPEGNATIVE_FK').AsInteger;
  pkass := refData.Fieldbyname('ASSISTIBILI_FK').AsInteger;

  FRicAssistito := TFRicAssistito.Create(nil);
  try

   FRicAssistito.NuovaRegistrazione := False;
   FRicAssistito.QRicerca.Active := false;
   FRicAssistito.QRicerca.QBEMode := true;
   FRicAssistito.QRicerca.Active := true;
   FRicAssistito.PazienteSconosciuto.Visible := false;

   if refdata.Fieldbyname('PROVENIENZA').AsString='E' then
     case refData.Fieldbyname('STATOVISITA').AsInteger of
     20:  FRicAssistito.StatoLancio := 0;
     110: FRicAssistito.StatoLancio := 1;
     else
          FRicAssistito.StatoLancio := 2;
     end
   else
     case refData.Fieldbyname('STATOVISITA').AsInteger of
     20:  FRicAssistito.StatoLancio := 10;
     110: FRicAssistito.StatoLancio := 11;
     else
          FRicAssistito.StatoLancio := 12;
     end;


   FRicAssistito.QRicercaPKASSISTIBILI.AsInteger := pkass;
   FRicAssistito.AttivaRicerca.Execute;

   trovato := FRicAssistito.ShowModal;

   if trovato = mrOk then
   begin

     FDMCommon.AssegnaAnagrafica.Parambyname('pkassistibili').AsInteger := FRicAssistito.QRicercaPKASSISTIBILI.AsInteger;
     FDMCommon.AssegnaAnagrafica.Parambyname('pkimpegnative').AsInteger := pkimp;
     FDMCommon.AssegnaAnagrafica.Parambyname('user_id').AsInteger := gblcodutente;
     FDMCommon.AssegnaAnagrafica.ExecCommit;

     RefreshImpegnative(pkimp,false,false,false);

   end;

   finally
      FRicAssistito.Free;
      AlertEventList1.Active := dxAttivaRefresh.Down;
   end;

 finally
   FDMCommon.UnLockRecord(xnr,gblCodUtente,1);
   AlertEventList1.Active := dxAttivaRefresh.Down;
 end;

end;

procedure TFAccDiagn.ModificaAnagraficaUpdate(Sender: TObject);
var
//  xpka: integer;
  xstato: integer;
begin

  if (dxPageControl.ActivePage=dxTabElenco) or (dxPageControl.ActivePage=dxTabEseguiti) then
  begin
//      xpka := refData.FieldByName('ASSISTIBILI_FK').AsInteger;
      xstato := refData.FieldByName('STATOVISITA').AsInteger;
      ModificaAnagrafica.Enabled := (RecordAttuale<>-1) and {(xpka=0) and} (xstato<=130) and (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,6])
                                                                              {JRT 6018} and (refData.FieldByName('PLACER_ORDER_NUMBER').IsNull or (FDMCommon.LeggiPostoLavoroCHK_MODIFICA_ANAGRAFICA.AsInteger=1));
  end
  else
      ModificaAnagrafica.Enabled := not EmptyDataset(refdata) and
                                     {(refData.FieldByname('ASSISTIBILI_FK').AsInteger=0) and}
                                     (refData.FieldByname('STATOVISITA').AsInteger<=130) and (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,6])
                                                                              {JRT 6018} and (refData.FieldByName('PLACER_ORDER_NUMBER').IsNull or (FDMCommon.LeggiPostoLavoroCHK_MODIFICA_ANAGRAFICA.AsInteger=1));
end;

procedure TFAccDiagn.qryUserBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFAccDiagn.LkDiagxWkBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('workstation_fk').AsInteger := gblpkworkstation;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;  
end;

procedure TFAccDiagn.dxAutoSizeClick(Sender: TObject);
begin
  GridDaEseguire.OptionsView.CellAutoHeight := not GridDaEseguire.OptionsView.CellAutoHeight;
  GridEseguiti.OptionsView.CellAutoHeight := not GridEseguiti.OptionsView.CellAutoHeight;
  GridRichieste.OptionsView.CellAutoHeight := not GridRichieste.OptionsView.CellAutoHeight;
end;

procedure TFAccDiagn.StampaGrigliaDaEseguireExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
  oldvis: boolean;
  oldlungh: integer;
  subst1: string;
  subst2: string;
  oldqyPrenoText: string;
  xField: TStringField;
  i: integer;
begin

  if FDMCommon.dxPrintDialog1.Execute then
  begin
     oldvis := cxGridDaEseguireLevel2.Visible;
     oldlungh := GridDaEseguireNOTE_PRENO.Width;
     try

     if oldvis then
     begin
        cxGridDaEseguireLevel2.Visible := false;
     end;

     GridDaEseguireNOTE_PRENO.RepositoryItem := FDMCommon.edrepPRINTMEMO;
     GridDaEseguireNOTE_PRENO.Width := 70;

     dxPrintListaPrenotati.OptionsSelection.ProcessSelection := (GridDaEseguire.Controller.SelectedRecordCount>1);

     oldqyPrenoText := qyPreno.SQL.Text;

     subst1 := ',AX.DescEsame';
     subst2 :=
              'join ('+
              'select p.triage_fk,'+
//              'ris.TO_STRING( CAST( COLLECT( NVL2(p.specificazioni_fk,c.descrizione||'+#39+' '+#39+'||sp.descrizione,c.descrizione)) AS ntt_varchar2 ) ) as DescEsame '+
              'c.descrizione as DescEsame '+
              'from diagxwk d '+
              'join servizi s on s.pkservizi = d.servizi_fk '+
              'join triage t on t.diagnostica_fk=s.PKSERVIZI '+
              'join prestazioni p on p.triage_fk = t.pktriage '+
              'left join codicirad c on c.pkcodicirad=p.codicirad_fk '+
//              'left join specificazioni sp on sp.pkspecificazioni = p.specificazioni_fk '+
              'where d.workstation_fk=:workstation_fk '+
              'and d.attiva=1 '+
              'and s.reparti_fk = :reparti_fk '+
              'and ('+
              '(t.statovisita in :show_eseguiti and t.ora_inizio between (trunc(:data_preno)-:gglista) and to_date(to_char(:data_preno,'+#39+'DDMMYYYY'+#39+')||'+#39+'2359'+#39+','+#39+'DDMMYYYYHH24MI'+#39+') ) '+
              ' or '+
              '(t.statovisita in (20,110) and t.ora_inizio between :data_preno and to_date(to_char(:data_preno,'+#39+'DDMMYYYY'+#39+')||'#39'2359'#39','#39'DDMMYYYYHH24MI'#39'))) '+
              'GROUP BY p.triage_fk '+
              ') AX on AX.triage_fk = t.pktriage ';

     qyPreno.SQL.Text := StringReplace(qyPreno.SQL.Text,'/* subst1 */',subst1,[]);
     qyPreno.SQL.Text := StringReplace(qyPreno.SQL.Text,'/* subst2 */',subst2,[]);

     qyPreno.close;
     qyPreno.FastFields.Add('DESCESAME' + ',' + 'ftString' + ',' + '4000');
     xField := TStringField.Create(qyPreno);
     xField.Name := 'qyPrenoDESCESAME';
     xField.FieldName := 'DESCESAME';
     xField.DisplayLabel := 'Descrizione';
     xField.DataSet := qyPreno;
     xField.FieldKind := fkData;
     GridDaEseguireDESCESAME.DataBinding.FieldName := 'DESCESAME';
     GridDaEseguireDESCESAME.Visible := True;
     qyPreno.open;
     dxPrintListaPrenotati.OptionsPreview.Visible := GridDaEseguire.Preview.Visible;

     if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
        dxComponentPrinter1.Preview(true,dxPrintListaPrenotati)
     else begin
        AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
        dxComponentPrinter1.Print(false,@AData,dxPrintListaPrenotati);
     end;
     finally
       if oldvis then
       begin
          cxGridDaEseguireLevel2.Visible := true;
       end;

  //     GridDaEseguireQUESITO_DIAGN.Visible := false;
       GridDaEseguireNOTE_PRENO.Width := oldlungh;
       GridDaEseguireNOTE_PRENO.RepositoryItem := nil;
       GridDaEseguireDESCESAME.Visible := false;

       qyPreno.close;
       qyPreno.SQL.Text := oldqyPrenoText;
       i := qyPreno.FastFields.IndexOf('DESCESAME,1,4000');
       if i>=0 then
       begin
         qyPreno.FastFields.Delete(i);
         xField := TStringField(qyPreno.Fieldbyname('DESCESAME'));
         qyPreno.Fields.Remove(xField);
         xField.Free;
       end;
       qyPreno.open;
     end;
  end;

end;

procedure TFAccDiagn.StampaGrigliaDaEseguireUpdate(Sender: TObject);
begin
  StampaGrigliaDaEseguire.Enabled := (dxPageControl.ActivePage=dxTabElenco) and not EmptyDataset(QyPreno);
end;

procedure TFAccDiagn.StampaGrigliaEseguitiExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
  oldlungh: integer;
begin
  if FDMCommon.dxPrintDialog1.Execute then
  begin

     oldlungh := GridEseguitiNOTE_PRENO.Width;
     try

       GridEseguitiNOTE_PRENO.RepositoryItem := FDMCommon.edrepPRINTMEMO;
       GridEseguitiNOTE_PRENO.Width := 70;

       dxPrintListaAccettati.OptionsSelection.ProcessSelection := (GridEseguiti.Controller.SelectedRecordCount>1);

       if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
          dxComponentPrinter1.Preview(true,dxPrintListaAccettati)
       else begin
          AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
          dxComponentPrinter1.Print(false,@AData,dxPrintListaAccettati);
       end;

     finally
       GridEseguitiNOTE_PRENO.Width := oldlungh;
       GridEseguitiNOTE_PRENO.RepositoryItem := nil;

     end;

  end;

end;

procedure TFAccDiagn.StampaGrigliaEseguitiUpdate(Sender: TObject);
begin
  StampaGrigliaEseguiti.Enabled := (dxPageControl.ActivePage=dxTabEseguiti) and not EmptyDataset(QyEseguiti);
end;


procedure TFAccDiagn.DBPlannerDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin

  Accept := (X>DBPlanner.Sidebar.Width) and (X<(DBPlanner.Width-DBPlanner.ScrollBarStyle.Width)) and
            (Y<(DBPlanner.PlannerGrid.VisibleRowCount*DBPlanner.Display.DisplayScale)) and
            (not (Source is TcxDragControlObject) or (CompareDate(dxData.EditValue,Date())<=0));


end;

procedure TFAccDiagn.QyDaAccBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
  Sender.Parambyname('workstation_fk').AsInteger := gblpkworkstation;
  Sender.Parambyname('data_dal').AsDateTime := dxRichDal.EditValue;
  Sender.Parambyname('data_prescr').AsDateTime := dxRichAl.EditValue;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;  
end;

procedure TFAccDiagn.IncollaPrenoEst(inizio: TDateTime; xpos: integer);
//var
//  ParamList: TAstaParamList;
//  TempUM: TAstaUpdateMethod;
begin
        AlertEventList1.Active := false;
        QyDaAcc.DisableControls;
        DBDaySource.OnInsertItem := DBPrenoSourceInsertItem;
        try
        try

          RefreshDettagli.Parambyname('TRIAGE_FK').AsInteger := QyDaAccPKTRIAGE.AsInteger;
          RefreshDettagli.syrefresh;

          if (xpos>=0) and CeEsame(vResToPos[xpos],QyDaAccPKTRIAGE.AsInteger,GridRichiesteDettagli,RefreshDettagli) then
          begin
            DBPlanner.SelPosition := xpos;
            DBPlanner.SelItemBegin := DBPlanner.AbsTimeToCell(inizio);
            DBPlanner.SelItemend := DBPlanner.SelItemBegin + 1;
            DBPlanner.InternalCreateItemAtSelection;
            QyDaAcc.Post;
            FDMCommon.AllocaModalita(QyDaAccIMPEGNATIVE_FK.AsInteger);
            PostMessage(Handle,SY_REFRESHRICHIESTE,120,QyDaAccPKTRIAGE.AsInteger);
{
            if dxAltreRichieste.Down then
               PostMessage(Handle,SY_ALTRERICHIESTE,QyDaAccPKTRIAGE.AsInteger,0);    attivare ???
}
            if DBPlanner.Items.DBItem<>nil then
               DBPlanner.FocusItem(DBPlanner.Items.DBItem,false {true});
{
            TempUM := QyDaAcc.UpdateMethod;
            QyDaAcc.UpdateMethod := umManual;
            QyDaAcc.Delete;
            QyDaAcc.UpdateMethod := TempUM;
}
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

        finally
         DBDaySource.OnInsertItem := nil;
         QyDaAcc.EnableControls;
         AlertEventList1.Active := dxAttivaRefresh.Down;
        end;

end;

procedure TFAccDiagn.AlertEventList1DataSets2AcceptActiveEvent(
  Sender: ToelItem; var op: Char; ParamList: TInternalAstaParamList;
  var Accept: Boolean);

begin

  Accept := DiagnosticaUsata(ParamList.ParamByName('diagnostica_fk').AsInteger);
  if not Accept then exit;

  case op of

  'D': Accept := true;
  'I': Accept := (ParamList.ParamByName('statovisita').AsInteger in [40,41]);

  'U','A': begin
       if {Accept and} not (ParamList.ParamByName('statovisita').AsInteger in [40,41]) then
            op := 'D';
       end;
  end;

end;

procedure TFAccDiagn.DBPrenoSourceInsertItem(Sender: TObject;
  APlannerItem: TPlannerItem);
var
  oldRefData: TAstaClientDataset;
  rx: integer;
begin
  QyDaAcc.Edit;
  QyDaAccORA_INIZIO.AsDateTime := DBPlanner.TrovaInizio(APlannerItem);
  QyDaAccUSER_ID.AsInteger := gblcodutente;
  QyDaAccDATA_ACCETTAZIONE.AsDateTime := dxData.EditValue; // Now();

  if FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=3 then
  begin
     if FDMCommon.LeggiPostoLavoroABILITA_ACC_AMM.AsInteger=1 then
        QyDaAccSTATOVISITA.AsInteger := 100
     else
        QyDaAccSTATOVISITA.AsInteger := 120;
  end
{$IFNDEF MEDICORNER}
  else if FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=1 {in [1,3]} then
  begin
     QyDaAccSTATOVISITA.AsInteger := 110;
     FOraInfusione := TFOraInfusione.Create(nil);
     try
        FOraInfusione.cxSomministra.Properties.MinDate := Date();
        FOraInfusione.cxSomministra.Date := QyDaAccORA_INIZIO.AsDateTime;
        FOraInfusione.AncheEsecuzione := false;
        if FOraInfusione.ShowModal=mrOk then
        begin
           QyDaAccORA_SOMMIN.AsDateTime := FOraInfusione.cxSomministra.Date;
        end;
     finally
        FOraInfusione.Free;
     end;
  end
{$ENDIF}
  else if FDMCommon.LeggiPostoLavoroABILITA_ACC_AMM.AsInteger=1 then
     QyDaAccSTATOVISITA.AsInteger := 100
  else
     QyDaAccSTATOVISITA.AsInteger := 120;

  APlannerItem.DBKey := QyDaAccPKTRIAGE.AsString;

  QyDaAccDIAGNOSTICA_FK.AsInteger := vResToPos[DBDaySource.PosToRes(APlannerItem.ItemPos)];
  QyDaAccORA_FINE.AsDateTime := IncMinute(QyDaAccORA_INIZIO.AsDateTime,QyDaAccDURATA.AsInteger);
  QyDaAccAGENDE_FK.Clear;

  if (QyDaAccSAN_IDENT.AsInteger=1) and not ConfermaAnagrafica(QyDaAccASSISTIBILI_FK.AsInteger,FDMCommon.CalcolaStatolancio(QyDaAccSTATOVISITA.AsInteger,QyDaAccTIPO_ACCESSO.AsString)) then
  begin
     MsgDlg(RS_AnagraficaIncompleta,'', ktWarning, [kbOK]);
     Abort;
  end;

  // -- chiamata form di accettazione per accessi esterni per controllo dati amministrativi
  if (QyDaAccTIPO_ACCESSO.AsString='E') and (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,6]) then
  begin
     oldRefData := refData;
     refData := QyDaAcc;
     try
     if QyDaAccPROVENIENZA.AsString='E' then
        rx := CorreggiImpegnativa()
     else
        rx := ModificaAccInterno();
     finally
        refData := oldRefData;
     end;
     if not (rx in [mrOk,mrRetry]) then
        Abort;
  end;

end;

function TFAccDiagn.CeEsame(xcal,pkt: integer; dd: TcxGridDBTableView; lrefData: TAstaClientDataset): boolean;
begin
  result := true;
  dd.DataController.BeginUpdate;
  try
  lrefData.First;
  while result and not lrefData.eof do
  begin
    result := xPossibili.Locate('CODICE;SERVIZI_FK',VarArrayOf([lrefData.FieldByName('CODICE').AsString,xcal]),[]);
    if not result then
    begin
       MsgDlg(
       format(RS_CodiceNonUtilizzabile,[lrefData.FieldByName('CODICE').AsString,lrefData.FieldByName('DESCRIZIONE').AsString]),
       '', ktWarning, [kbOK]);
    end;
    lrefData.Next;
  end;
  finally
    dd.DataController.EndUpdate;
  end;
end;

procedure TFAccDiagn.ApriTuttiExecute(Sender: TObject);
begin
  if dxPageControl.ActivePage=dxTabPreno then
     GridRichieste.ViewData.Expand(False)
  else if dxPageControl.ActivePage=dxTabElenco then
     GridDaEseguire.ViewData.Expand(False)
  else if dxPageControl.ActivePage=dxTabEseguiti then
     GridEseguiti.ViewData.Expand(False);
end;

procedure TFAccDiagn.ChiudiTuttiExecute(Sender: TObject);
begin
  if dxPageControl.ActivePage=dxTabPreno then
     GridRichieste.ViewData.Collapse(False)
  else if dxPageControl.ActivePage=dxTabElenco then
     GridDaEseguire.ViewData.Collapse(False)
  else if dxPageControl.ActivePage=dxTabEseguiti then
     GridEseguiti.ViewData.Collapse(False);
end;


procedure TFAccDiagn.AlertEventList1DataSets2AfterActiveEvent(
  Sender: ToelItem; op: Char; ParamList: TInternalAstaParamList);
begin

  if dxAvvisi.Down and (op='I') then
  begin
     if FDMCommon.GeneraAlert(QyDaAccREPARTO_RICH_FK.AsInteger,QyDaAccURGENZA.AsInteger,QyDaAccDIAGNOSTICA_FK.AsInteger) then
        MsgDlgBeep(format(RS_ArrivataRichiesta,[QyDaAccNOMEREPARTO.AsString,QyDaAccNOME_PAZIENTE.AsString]),'', ktInformation, [kbOK]);
  end;

end;

procedure TFAccDiagn.aSalaOperatoriaExecute(Sender: TObject);
var
  res: integer;
begin
{$IFNDEF MEDICORNER}
  AlertEventList1.Active := false;
  FDatiSalaOP := TFDatiSalaOP.Create(nil);
  try

     FDatiSalaOP.StatoLancio := 11;
     FDatiSalaOP.ProxStatoVisita := 120;

     FDatiSalaOP.Accettazione.opennofetch;
     FDatiSalaOP.Accettazione.Insert;
     FDatiSalaOP.xoggi := dxData.EditValue;

     FDatiSalaOP.AccettazioneTIPO_ATTIVITA_FK.AsString := FDMCommon.LeggiPostoLavoroTIPO_ATT_SALA_OP.AsString;  // sala operatoria...
     FDatiSalaOP.AccettazionePROVENIENZA.AsString := 'I';

     if (FDMCommon.LeggiPostoLavoroCHK_SLITTA_REP.AsInteger=1) then
     begin
        if FDMCommon.LkReparti.Locate('OSP_CODICE',gblospedale,[]) then
           FDatiSalaOP.AccettazioneREPARTO_RICH_FK.AsInteger := FDMCommon.LkRepartiPKREPARTI.AsInteger
     end;

     res := FDatiSalaOP.ShowModal;
     if (res in [mrOk,{mrRetry,}mrIgnore]) then
     begin
        RefreshImpegnative(FDatiSalaOP.AccettazionePKIMPEGNATIVE.AsInteger,false,false,(res=mrRetry));
     end;


  finally
     FDatiSalaOP.Free;
     FDatiSalaOP := nil;
     AlertEventList1.Active := dxAttivaRefresh.Down;
  end;
  if refGrid<>nil then
     FDMCommon.vLocate(refGrid, refdata.Fieldbyname('PKTRIAGE').AsInteger);
{$ENDIF}
end;

procedure TFAccDiagn.aSalaOperatoriaUpdate(Sender: TObject);
begin
  aSalaOperatoria.Enabled := (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,5]) and
                             (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>2) and
                             not (FDMCommon.LeggiPostoLavoroSALA_OPERATORIA_FK.IsNull or FDMCommon.LeggiPostoLavoroCODICIRAD_FK.IsNull) and
                             DiagnosticaUsata(FDMCommon.LeggiPostoLavoroSALA_OPERATORIA_FK.AsInteger);

end;

procedure TFAccDiagn.ModificaSalaOp(accetta: boolean);
var
  xnr,xnt,xns,res: integer;
begin
{$IFNDEF MEDICORNER}
  xnr := refData.FieldByName('IMPEGNATIVE_FK').AsInteger;
  xnt := refData.FieldByName('PKTRIAGE').AsInteger;
  xns := refData.FieldByName('STATOVISITA').AsInteger;

  if not FDMCommon.LockRecord(xnr,gblCodUtente,3) then
     exit;

  AlertEventList1.Active := false;
{ -- non filtrare: vedi accettazione su più diagnostiche...
  Possibili.Filtered := false;
  Possibili.Filter := format('SERVIZI_FK = %d',[refData.Fieldbyname('DIAGNOSTICA_FK').AsInteger]);
  Possibili.Filtered := true;
}
  FDatiSalaOP := TFDatiSalaOP.Create(nil);
  try

   if not FDMCommon.LockRecord(xnt,gblCodUtente,1,xns) then
   begin
      exit;
   end;

     if not accetta then
     begin
        FDatiSalaOP.OldStatoVisita := refData.Fieldbyname('STATOVISITA').AsInteger;
        FDatiSalaOP.ProxStatoVisita := refData.Fieldbyname('STATOVISITA').AsInteger;
     end
     else begin
       case refData.Fieldbyname('STATOVISITA').AsInteger of
       20,110: FDatiSalaOP.ProxStatoVisita := 120;
       120:    FDatiSalaOP.ProxStatoVisita := 198;
       else
          FDatiSalaOP.ProxStatoVisita := refData.Fieldbyname('STATOVISITA').AsInteger;
       end;
     end;

     case refData.Fieldbyname('STATOVISITA').AsInteger of
     20:  FDatiSalaOP.StatoLancio := 10;
     110: FDatiSalaOP.StatoLancio := 11;
     else
          FDatiSalaOP.StatoLancio := 12;
     end;

     FDatiSalaOP.Accettazione.Parambyname('pkimpegnative').AsInteger := refData.Fieldbyname('IMPEGNATIVE_FK').AsInteger;
     FDatiSalaOP.Accettazione.open;
     FDatiSalaOP.Accettazione.Edit;
     FDatiSalaOP.xoggi := dxData.EditValue;

     ModificaxImpegnative.Parambyname('impegnative_fk').AsInteger := refData.Fieldbyname('IMPEGNATIVE_FK').AsInteger;
     ModificaxImpegnative.syrefresh;

     res := FDatiSalaOP.ShowModal;
     if (res in [mrOk{,mrRetry},mrIgnore]) then
     begin
        if (res=mrOk) then
          QyPreno.RefreshRecord
        else if (refData=QyPreno) then
          Eseguito(QyPrenoPKTRIAGE.AsInteger)
        else
          QyEseguiti.RefreshRecord;
     end;

  finally
//     Possibili.Filtered := false;
//     Possibili.Filter := '';
     FDatiSalaOP.Free;
     FDatiSalaOP := nil;
     FDMCommon.UnLockRecord(xnt,gblCodUtente,1);
     FDMCommon.UnLockRecord(xnr,gblCodUtente,3);
     AlertEventList1.Active := dxAttivaRefresh.Down;
  end;
{$ENDIF}
end;

procedure TFAccDiagn.aRitornaPrenotatoExecute(Sender: TObject);
var
  TempUM: TAstaUpdateMethod;
  pk: integer;
begin

 if MsgDlgPos(RS_Msg_ConfRitornoPre, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes then
 begin
  AlertEventList1.Active := false;
{
  if refData.FieldByName('AGENDE_FK').IsNull then
  begin
     MsgDlg(RS_Msg_NonPrenotabile, '', ktInformation, [kbOk]);
     AlertEventList1.Active := dxAttivaRefresh.Down;
     exit;
  end;
}
  TempUM := refData.UpdateMethod;
  refData.UpdateMethod := umManual;
  try

     pk := refData.Fieldbyname('PKTRIAGE').AsInteger;
     RitornaDaAcc.Parambyname('user_id').AsInteger := gblcodutente;
     RitornaDaAcc.Parambyname('pktriage').AsInteger := pk;
     RitornaDaAcc.Parambyname('statovisita').AsInteger := 20;
     RitornaDaAcc.ExecCommit;

     DeleteOperazione(GridEseguiti,GridEseguitiDettagli,pk);
     InsertOperazione(GridDaEseguire,GridDaEseguireDettagli,pk);
     if dxPageControl.ActivePage=dxTabPreno then
        DBPlanner.Refresh;

  finally
     refData.UpdateMethod := TempUM;
     AlertEventList1.Active := dxAttivaRefresh.Down;
  end;

 end;

end;

procedure TFAccDiagn.aRitornaPrenotatoUpdate(Sender: TObject);
var
  xstato: integer;
  xcepreno: boolean;
begin

  xcepreno := (refData.FieldByName('PROVENIENZA').AsString='E') or ((refData.FieldByName('PROVENIENZA').AsString='I') and not refData.FieldByName('AGENDE_FK').IsNull);
  if (dxPageControl.ActivePage=dxTabElenco) or (dxPageControl.ActivePage=dxTabEseguiti) then
  begin
      xstato := refData.FieldByName('STATOVISITA').AsInteger;
      aRitornaPrenotato.Enabled := (RecordAttuale<>-1) and (xstato in [100,110,120]) and xcepreno and (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,4,5,6])
  end
  else
      aRitornaPrenotato.Enabled := not EmptyDataset(refdata) and
                                   xcepreno and
                                   (DBPlanner.Items.DBItem<>nil) and
                                    DBPlanner.Items.DBItem.Selected and
                                   (DBPlanner.Items.DBItem.Status in [100,110,120]) and (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,4,5,6]);

end;

procedure TFAccDiagn.aCancellaRichiestaExecute(Sender: TObject);
var
  avanti: boolean;
  rr,tecnico,servizio,motivocanc: integer;
  TempUM: TAstaUpdateMethod;
//  notecanc: string;
begin

  AlertEventList1.Active := false;

  try
  if FDMCommon.LeggiPostoLavoroCHECK_MOTIVOCANC.AsInteger=1 then
  begin
    FConfermaCancella := TFConfermaCancella.Create(nil);
    try
      FConfermaCancella.xpk := QyDaAccPKTRIAGE.AsInteger;
      if FDMCommon.LeggiPostoLavoroCHECK_MOTIVOCANC.AsInteger=0 then
      begin
         FConfermaCancella.dxLayoutControlMotivo.Visible := false;
      end;
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
//      notecanc := '';
  end;

  if avanti then
  begin
    TempUM := QyDaAcc.UpdateMethod;
    QyDaAcc.UpdateMethod := umManual;
    QyDaAcc.Edit;
    QyDaAccSTATOVISITA.AsInteger := motivocanc;
    QyDaAccUSER_ID.AsInteger := tecnico;
    QyDaAccSERVIZI_FK.AsInteger := servizio;
{
    if notecanc<>'' then
       QyDaAccNOTE_PRENO.AsString := notecanc
    else
       QyDaAccNOTE_PRENO.Clear;
}
    QyDaAcc.Post;
    QyDaAcc.UpdateMethod := TempUM;

    try
    QyDaAcc.Delete;
    PostMessage(Handle,SY_REFRESHRICHIESTE,0,QyDaAccPKTRIAGE.AsInteger);
    except
       QyDaAcc.RefreshRecord;
       raise;
    end;

  end;

 finally
  AlertEventList1.Active := dxAttivaRefresh.Down;
 end;

end;


procedure TFAccDiagn.SYRefreshRichieste(var Message: TMessage);
var
  FocusedRow, TopRow: Integer;
  View: TcxGridTableView;
  DataController: TcxGridDataController;
begin

  if Message.WParam in [40,41] then
  begin
     InsertOperazione(GridRichieste,GridRichiesteDettagli,Message.LParam);
     if refData=QyPreno then
     begin
        DeleteOperazione(GridDaEseguire,GridDaEseguireDettagli,Message.LParam);
        if AncheDettagli then
           AggiornaFiltro;
     end
     else
        DeleteOperazione(GridEseguiti,GridEseguitiDettagli,Message.LParam);
  end
  else begin

    if Message.WParam=120 then
    begin
      InsertOperazione(GridDaEseguire,GridDaEseguireDettagli,Message.LParam);
    end;

    View := cxGridRichieste.FocusedView as TcxGridTableView;
    DataController := View.DataController;

    // Remember the top row (the vertical scrollbar position)
    TopRow := View.Controller.TopRowIndex;
    // Remember the focused row(!) index
    FocusedRow := DataController.FocusedRowIndex;

    if Message.WParam in [0,120] then
    begin
       DeleteOperazione(GridRichieste,GridRichiesteDettagli,QyDaAccPKTRIAGE.AsInteger);
    end
    else begin
       DeleteOperazione(GridDaEseguire,GridDaEseguireDettagli,QyPrenoPKTRIAGE.AsInteger);
       if AncheDettagli then
          AggiornaFiltro;
    end;

    // After deletion the same row must be focused,
    // although it will correspond to a different data record
    DataController.FocusedRowIndex := FocusedRow;
    // Restore the top row
    View.Controller.TopRowIndex := TopRow;

  end;

  if (dxPageControl.ActivePage=dxTabPreno) or (dxPageControl.ActivePage=dxTabElenco) then
     DBPlanner.Refresh;

end;

procedure TFAccDiagn.SYAltreRichieste(var Message: TMessage);
begin
{$IFNDEF MEDICORNER}
  CercaAltreRichieste(Message.WParam);
{$ENDIF}
end;

procedure TFAccDiagn.aCancellaRichiestaUpdate(Sender: TObject);
begin
  aCancellaRichiesta.Enabled := (GridRichieste.Controller.SelectedRecordCount=1) and
                                (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,4,5]) and
                                (gblUserIsAdmin or gblSuperUser or (FDMCommon.LeggiPostoLavoroCHECK_MOTIVOCANC.AsInteger=1));
end;

procedure TFAccDiagn.aStoricoRichiesteExecute(Sender: TObject);
begin
  StoricoOperazione(qyDaAccPKTRIAGE.AsInteger);
end;

procedure TFAccDiagn.aStoricoRichiesteUpdate(Sender: TObject);
begin
  aStoricoRichieste.Enabled := (GridRichieste.Controller.SelectedRecordCount=1);
end;

procedure TFAccDiagn.ModInternoEsternoExecute(Sender: TObject);
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
 'I','P': ModificaAccInterno(false,tp);
{$ENDIF}
 'E': CorreggiImpegnativa(false);
 end;

end;

procedure TFAccDiagn.ModInternoEsternoUpdate(Sender: TObject);
begin
  ModInternoEsterno.Enabled := not EmptyDataset(refdata)
                             and (RecordAttuale<>-1)
                             and (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger=1)
                             and (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>2)
                             and not (refData.FieldByName('TIPO_ATTIVITA_FK').AsString=FDMCommon.LeggiPostoLavoroTIPO_ATT_SALA_OP.AsString)
                             and (refData.FieldByName('STATOVISITA').AsInteger=130);
                             ;
end;

procedure TFAccDiagn.DBPlannerDragDropItem(Sender, Source: TObject; X,
  Y: Integer; PlannerItem: TPlannerItem);
var
  xStartTime: TDateTime;
  avanti: boolean;  
begin

    AlertEventList1.Active := false;

    try
      if (Source is TPlannerGrid) then
      begin
        // -- spostamento su se stesso...
        xStartTime := DBPlanner.Items.TrovaTempoMax(DBPlanner.CellToTime(x,y), x,y, TsyPlannerItem(PlannerItem).Durata, PlannerItem {DBPlanner.Items.selected});
        Sposta(x,y, xStartTime);
      end
      else begin
        DBPlanner.Items.DBItem := PlannerItem;
        DBDaySource.GotoDBItem;
      { controllo se si può eseguire lo spostamento }
      avanti := xPossibili.Locate('CODICE;SERVIZI_FK',
                        VarArrayOf([AstaDettCODICE.AsString,QyPrenoDIAGNOSTICA_FK.AsInteger]),[]);
      if not avanti then
      begin
         MsgDlg(
         format(RS_CodiceNonUtilizzabile,[AstaDettCODICE.AsString,AstaDettDESCRIZIONE.AsString]),
         '', ktWarning, [kbOK]);
      end;

      if avanti then
      begin

        ModificaxImpegnative.Parambyname('impegnative_fk').AsInteger := AstaCutIMPEGNATIVE_FK.AsInteger;
        ModificaxImpegnative.syrefresh;

        FDMCommon.SpostaEsame.Parambyname('triage_old').AsInteger := AstaCutPKTRIAGE.AsInteger;
        FDMCommon.SpostaEsame.Parambyname('triage_new').AsInteger := qyPrenoPKTRIAGE.AsInteger;
        FDMCommon.SpostaEsame.Parambyname('pkprestazioni').AsInteger := AstaDettPKPRESTAZIONI.AsInteger;
        FDMCommon.SpostaEsame.Parambyname('user_id').AsInteger := gblCodUtente;
        FDMCommon.SpostaEsame.ExecCommit;

        RefreshImpegnative(AstaCutIMPEGNATIVE_FK.AsInteger,false,true,false);

        if Assigned(FCutPaste) then
          PostMessage( FCutPaste.Handle,SY_CANCDETTCUTPASTE,AstaCutPKTRIAGE.AsInteger,AstaDettPKPRESTAZIONI.AsInteger);

      end;
    end;

    finally
       AlertEventList1.Active := dxAttivaRefresh.Down;
    end;

end;

procedure TFAccDiagn.StampaListaRichiesteExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
begin
  if FDMCommon.dxPrintDialog1.Execute then
  begin
     dxPrintListaRichieste.OptionsPreview.Visible := GridRichieste.Preview.Visible;
     if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
        dxComponentPrinter1.Preview(true,dxPrintListaRichieste)
     else begin
        AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
        dxComponentPrinter1.Print(false,@AData,dxPrintListaRichieste);
     end;
  end;

end;

procedure TFAccDiagn.qyPrenoDettBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  Sender.Parambyname('workstation_fk').AsInteger := gblpkworkstation;
  Sender.Parambyname('gglista').AsInteger := dxgiornilista.EditValue;
  Sender.Parambyname('data_preno').AsDateTime := dxData.EditValue;
  if not AncheEseguiti then
  {$IFDEF MEDICORNER}
     Sender.Parambyname('show_eseguiti').AsString := '#(100,120,121,122,130)'
  {$ELSE}
     Sender.Parambyname('show_eseguiti').AsString := '#(100,120,121,122)'
  {$ENDIF}
  else
     Sender.Parambyname('show_eseguiti').AsString := '#(100,120,121,122,130,140,150,160,161,165,166,170,171,180,190,198)';
end;

procedure TFAccDiagn.aModRichiestaExecute(Sender: TObject);
var
  res: integer;
  pki,pkt,pks: integer;
begin
  pki := QyDaAccIMPEGNATIVE_FK.AsInteger;
  pkt := QyDaAccPKTRIAGE.AsInteger;
  pks := QyDaAccSTATOVISITA.AsInteger;

  if not FDMCommon.LockRecord(pki,gblCodUtente,3) then
     exit;

  AlertEventList1.Active := false;
  try

  if not FDMCommon.LockRecord(pkt,gblCodUtente,1,pks) then
     exit;

  if QyDaAccPROVENIENZA.AsString='E' then
  begin
    FDatiAccImp := TFDatiAccImp.Create(nil);
    try

         FDatiAccImp.StatoLancio := 0;
         FDatiAccImp.ProxStatoVisita := 1000; //20;
//         FDatiAccImp.xPossibili := xPossibili;
//         FDatiAccImp.Esami := FDMCommon.FiltraEsami(xPossibili);
         FDatiAccImp.xReferAcc := self;
         FDatiAccImp.Accettazione.Parambyname('pkimpegnative').AsInteger := QyDaAccIMPEGNATIVE_FK.AsInteger;
         FDatiAccImp.Accettazione.open;
         FDatiAccImp.Accettazione.edit;
         FDatiAccImp.xoggi := dxData.EditValue;
         FDatiAccImp.xpktriage := QyDaAccPKTRIAGE.AsInteger;

         FDatiAccImp.xDal := dxRichDal.EditValue;
         FDatiAccImp.xAl := dxRichAl.EditValue;

         res := FDatiAccImp.ShowModal;
         if (res in [mrOk,mrRetry]) then
         begin
            QyDaAcc.refreshrecord;
         end;

    finally
       FDatiAccImp.Free;
       FDatiAccImp := nil;
    end;
  end
  else begin
{$IFNDEF MEDICORNER}
    FRichReparti := TFRichReparti.Create(nil);
  { -- filtrato per modifica interni
    xPossibili.Filtered := false;
    xPossibili.Filter := format('SERVIZI_FK = %d',[QyDaAccDIAGNOSTICA_FK.AsInteger]);
    xPossibili.Filtered := true;
  {}
    try
       FRichReparti.Statolancio := 10;
       FRichReparti.ProxStatoVisita := QyDaAccSTATOVISITA.AsInteger;
       FRichReparti.xPossibili := xPossibili;
       FRichReparti.Esami := FDMCommon.FiltraEsami(xPossibili);
       FRichReparti.xDiag := QyDaAccDIAGNOSTICA_FK.AsInteger; // 0;
       FRichReparti.xpktriage := QyDaAccPKTRIAGE.AsInteger;

       FRichReparti.Accettazione.Parambyname('pktriage').AsInteger := QyDaAccPKTRIAGE.AsInteger;
       FRichReparti.Accettazione.open;
       FRichReparti.Accettazione.Edit;

       FRichReparti.rfdiag := LkDiagxWk;

       res := FRichReparti.ShowModal;
       if res in [mrOk,mrRetry] then
       begin
          QyDaAcc.RefreshRecord;
          if res=mrRetry then
          begin
            FStampaAvvisi := TFStampaAvvisi.Create(nil);
            try
//               FStampaAvvisi.xDataset := QyDaAcc;
               FStampaAvvisi.DBTableView := GridRichieste;
               FStampaAvvisi.Caption := 'Stampe richieste reparti';
               FStampaAvvisi.CaricaStampe := 1;
               FStampaAvvisi.ShowModal;
            finally
               FStampaAvvisi.Free;
               FStampaAvvisi := nil;
            end;
          end;
      end;

    finally
       xPossibili.Filtered := false;
       xPossibili.Filter := '';
       FRichReparti.Free;
       FRichReparti := nil;
    end;
{$ENDIF}
  end;

  finally
     FDMCommon.UnLockRecord(pkt,gblCodUtente,1);
     FDMCommon.UnLockRecord(pki,gblCodUtente,3);
     AlertEventList1.Active := dxAttivaRefresh.Down;
  end;

end;

procedure TFAccDiagn.GridRichiesteDblClick(Sender: TObject);
begin
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxGridRichieste),LongInt(aModRichiesta));
end;

procedure TFAccDiagn.aModRichiestaUpdate(Sender: TObject);
begin
  aModRichiesta.Enabled := (GridRichieste.Controller.SelectedRecordCount=1) {and (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger=1)};
end;

procedure TFAccDiagn.GridRichiesteDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TPlannerGrid) and (TDBPlanner(TPlannerGrid(source).owner).items.selected.Status in [20,100,110,120]);
end;

procedure TFAccDiagn.GridRichiesteDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  aRitornoInRichieste.Execute;
end;

procedure TFAccDiagn.aAttivaQuesitoExecute(Sender: TObject);
begin

   GridRichieste.Preview.Visible := dxAttivaQuesito.Down;
   GridDaEseguire.Preview.Visible := dxAttivaQuesito.Down;

end;

procedure TFAccDiagn.dxSingolaDiagnClick(Sender: TObject);
begin
  SetSelezione(True,False);
  FDiagnSelezionate := True;  
end;

procedure TFAccDiagn.SetSelezione(psingola,value: Boolean);
var
  I: integer;
  olddown: boolean;
begin
  for I := 0 to vbDiagn.count - 1 do
  begin
    if psingola then
    begin
       olddown := vbDiagn[I].Down;
       vbDiagn[I].GroupIndex := 1;
       vbDiagn[I].Down := olddown;
    end
    else begin
       vbDiagn[I].GroupIndex := 0;
       vbDiagn[I].Down := value;
    end;
  end;
end;

procedure TFAccDiagn.aCambiaSomministrazioneExecute(Sender: TObject);
var
  xnr,xnt,xns: integer;
begin
{$IFNDEF MEDICORNER}
 xnr := refData.FieldByName('IMPEGNATIVE_FK').AsInteger;
 xnt := refData.FieldByName('PKTRIAGE').AsInteger;
 xns := refData.FieldByName('STATOVISITA').AsInteger;

 if not FDMCommon.LockRecord(xnr,gblCodUtente,3) then
    exit;

 try
 if not FDMCommon.LockRecord(xnt,gblCodUtente,1,xns) then
    exit;

 FOraInfusione := TFOraInfusione.Create(nil);
 try

    FOraInfusione.cxSomministra.Properties.MinDate := Date();
    if refData.FieldByName('ORA_SOMMIN').IsNull then
       FOraInfusione.cxSomministra.Date := refData.FieldByName('ORA_INIZIO').AsDateTime
    else
       FOraInfusione.cxSomministra.Date := refData.FieldByName('ORA_SOMMIN').AsDateTime;
//    FOraInfusione.cxEsecuzione.Date := refData.FieldByName('ORA_INIZIO').AsDateTime;
    FOraInfusione.AncheEsecuzione := false; //true;
    if FOraInfusione.ShowModal=mrOk then
    begin
      refData.Edit;
      refData.FieldByName('ORA_SOMMIN').AsDateTime := FOraInfusione.cxSomministra.Date;
  //    refData.FieldByName('ORA_INIZIO').AsDateTime := FOraInfusione.cxEsecuzione.Date;
      refData.Post;
    end;
 finally
    FOraInfusione.Free;
 end;

 finally
    FDMCommon.UnLockRecord(xnt,gblCodUtente,1);
    FDMCommon.UnLockRecord(xnr,gblCodUtente,3);
 end;
{$ENDIF}
end;

procedure TFAccDiagn.aCambiaSomministrazioneUpdate(Sender: TObject);
var
//  xpka: integer;
  xstato: integer;
begin

  if (dxPageControl.ActivePage=dxTabElenco) or (dxPageControl.ActivePage=dxTabEseguiti) then
  begin
//      xpka := refData.FieldByName('ASSISTIBILI_FK').AsInteger;
      xstato := refData.FieldByName('STATOVISITA').AsInteger;
      aCambiaSomministrazione.Enabled := (RecordAttuale<>-1) and {(xpka=0) and} (xstato in [20,110]);
  end
  else
      aCambiaSomministrazione.Enabled := not EmptyDataset(refdata) and
                                    (DBPlanner.Items.DBItem<>nil) and
                                     DBPlanner.Items.DBItem.Selected and
                                    (DBPlanner.Items.DBItem.Status in [20,110]);

end;

procedure TFAccDiagn.aModServizioExecute(Sender: TObject);
begin

  AlertEventList1.Active := false;
  FAssegnaServizio := TFAssegnaServizio.Create(nil);
  try
     FAssegnaServizio.sQyPreno.DataSet := QyPreno;
     if FAssegnaServizio.ShowModal=mrOk then
        QyPreno.RefreshRecord;
  finally
     FAssegnaServizio.Free;
     AlertEventList1.Active := dxAttivaRefresh.Down;
  end;

end;

procedure TFAccDiagn.aModServizioUpdate(Sender: TObject);
begin
   aModServizio.Enabled := not EmptyDataset(QyPreno) and (gblDebugMode or gblUserIsAdmin or gblSuperUser);
end;

procedure TFAccDiagn.aPrecedentiExecute(Sender: TObject);
begin
  FVisitePrecRAD := TFVisitePrecRAD.Create(nil);
  try
//     FVisitePrecRAD.SoloEseguiti := false;
     FVisitePrecRAD.xpka := refData.FieldByName('ASSISTIBILI_FK').AsInteger;
     FVisitePrecRAD.xpki := refData.FieldByName('IMPEGNATIVE_FK').AsInteger;
     FVisitePrecRAD.ShowModal;
  finally
     FVisitePrecRAD.Free;
     FVisitePrecRAD := nil;
  end

end;

procedure TFAccDiagn.DBPlannerDragOverCell(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean; mx, my: Integer);
begin
  // -- lasciare anche vuoto altrimenti non attiva Accept interno...
  Accept := ((Source is TcxDragControlObject) or (Source is TPlannerGrid)) and
            not ResToPos.IsEmpty;
end;

procedure TFAccDiagn.aModTecnicoEsecutoreExecute(Sender: TObject);
var
  rr: integer;
  tecnico: integer;
  i: integer;
  RecIdx: integer;
  pkVal: Variant;
  pk: integer;

begin

  AlertEventList1.Active := false;
  try

    FConfermaPswdRep := TFConfermaPswdRep.Create(nil);
    try
      rr := FConfermaPswdRep.ShowModal;
      tecnico := FConfermaPswdRep.User_id;
    finally
      FConfermaPswdRep.Free;
      FConfermaPswdRep := nil;
    end;

    if rr=mrOk then
    begin

      for i:=0 to GridEseguiti.Controller.SelectedRecordCount-1 do
      begin
        RecIdx := GridEseguiti.Controller.SelectedRecords[i].RecordIndex;
        pkVal := GridEseguiti.DataController.GetRecordId(RecIdx);

        GridEseguiti.DataController.Datasource.Dataset.Locate(GridEseguiti.DataController.KeyFieldNames, pkVal, []);

        QyEseguiti.Edit;
        QyEseguitiPERSONALE_FK.AsInteger := tecnico;
        QyEseguiti.Post;
      end;

      if GridEseguiti.Controller.SelectedRecordCount=1 then
         QyEseguiti.RefreshRecord
      else begin
         pk := QyEseguitiPKTRIAGE.AsInteger;
         QyEseguiti.syRefresh;
         QyEseguiti.Locate('PKTRIAGE',pk,[]);
      end;

      GridEseguiti.DataController.UpdateItems(False);

    end;

  finally
    AlertEventList1.Active := dxAttivaRefresh.Down;
  end;

end;

procedure TFAccDiagn.aModTecnicoEsecutoreUpdate(Sender: TObject);
var
  xstato: integer;
begin

  xstato := refData.FieldByName('STATOVISITA').AsInteger;
  aModTecnicoEsecutore.Enabled := {(gblSuperUser or gblUserIsAdmin) and} (RecordAttuale<>-1) and (xstato<=150);

end;

procedure TFAccDiagn.AssegnaMedicoExecute(Sender: TObject);
var
  i,res: integer;
  cm: integer;
  RecIdx: integer;
  pkVal: Variant;
  pk: integer;
  rr: integer;
//  tecnico: integer;
begin

  AlertEventList1.Active := false;
  try

    FConfermaPswdRep := TFConfermaPswdRep.Create(nil);
    try
      rr := FConfermaPswdRep.ShowModal;
//      tecnico := FConfermaPswdRep.User_id;
    finally
      FConfermaPswdRep.Free;
      FConfermaPswdRep := nil;
    end;

    if rr=mrOk then
    begin

      FAssegnaReferti := TFAssegnaReferti.Create(nil);
      try
         res := FAssegnaReferti.ShowModal;
         if res=mrOk then
            cm := FAssegnaReferti.cxMedFirma.EditValue
         else
            cm := -1;
      finally
         FAssegnaReferti.Free;
      end;

      if res=mrOk then
      begin
        for i:=0 to GridEseguiti.Controller.SelectedRecordCount-1 do
        begin
          RecIdx := GridEseguiti.Controller.SelectedRecords[i].RecordIndex;
          pkVal := GridEseguiti.DataController.GetRecordId(RecIdx);

          GridEseguiti.DataController.Datasource.Dataset.Locate(GridEseguiti.DataController.KeyFieldNames, pkVal, []);

          QyEseguiti.Edit;
          QyEseguitiCOD_MED_FIRMA.AsInteger := cm; //gblCodUtente;
          QyEseguiti.Post;
        end;

        if GridEseguiti.Controller.SelectedRecordCount=1 then
           QyEseguiti.RefreshRecord
        else begin
           pk := QyEseguitiPKTRIAGE.AsInteger;
           QyEseguiti.syRefresh;
           QyEseguiti.Locate('PKTRIAGE',pk,[]);
        end;

        GridEseguiti.DataController.UpdateItems(False);
      end;

    end;

  finally
    AlertEventList1.Active := dxAttivaRefresh.Down;
  end;

end;

procedure TFAccDiagn.AssegnaMedicoUpdate(Sender: TObject);
var
  xstato: integer;
begin

  xstato := refData.FieldByName('STATOVISITA').AsInteger;
  AssegnaMedico.Enabled := (RecordAttuale<>-1) and (xstato=130);

end;

procedure TFAccDiagn.GridRichiesteNOTE_PRENOPropertiesPopup(
  Sender: TObject);
begin
    AlertEventList1.Active := false;
    if not (QyDaAcc.State in dsEditModes) then
       QyDaAcc.Edit;
    QyDaAccUSER_ID.AsInteger := gblcodutente;
end;

procedure TFAccDiagn.GridRichiesteNOTE_PRENOPropertiesCloseUp(
  Sender: TObject);
begin
    if (QyDaAcc.State in dsEditModes) then
       QyDaAcc.Post;
    AlertEventList1.Active := dxAttivaRefresh.Down;
end;

procedure TFAccDiagn.GridDaEseguireNOTE_PRENOPropertiesPopup(
  Sender: TObject);
begin
    AlertEventList1.Active := false;
    if not (QyPreno.State in dsEditModes) then
       QyPreno.Edit;
    QyPrenoUSER_ID.AsInteger := gblcodutente;
end;

procedure TFAccDiagn.GridDaEseguireNOTE_PRENOPropertiesCloseUp(
  Sender: TObject);
begin
    if (QyPreno.State in dsEditModes) then
       QyPreno.Post;
    AlertEventList1.Active := dxAttivaRefresh.Down;

end;

procedure TFAccDiagn.GridEseguitiNOTE_PRENOPropertiesPopup(
  Sender: TObject);
begin
    AlertEventList1.Active := false;
    if not (QyEseguiti.State in dsEditModes) then
       QyEseguiti.Edit;
    QyEseguitiUSER_ID.AsInteger := gblcodutente;
end;

procedure TFAccDiagn.GridEseguitiNOTE_PRENOPropertiesCloseUp(
  Sender: TObject);
begin

    if (QyEseguiti.State in dsEditModes) then
       QyEseguiti.Post;
    AlertEventList1.Active := dxAttivaRefresh.Down;

end;

procedure TFAccDiagn.RefreshCalendari(var Message: TMessage);
begin

  DBPlanner.Refresh;

end;

procedure TFAccDiagn.AllieviTecniciBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
	Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFAccDiagn.LkListeRefertazioneBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
	Sender.Parambyname('pkreparti').AsInteger := gblpkrep;
end;

procedure TFAccDiagn.aInfoOperatoreExecute(Sender: TObject);
begin
  FNote := TFNote.Create(nil);
  try
     FNote.sNote.Dataset := refdata;
     FNote.ShowModal;
  finally
     FNote.Free;
  end;

end;

procedure TFAccDiagn.aInfoOperatoreUpdate(Sender: TObject);
begin
  aInfoOperatore.Enabled := (RecordAttuale<>-1); // and (not QyPrenoNOTE_PRENO.IsNull and (QyPrenoNOTE_PRENO.AsString<>''));
end;

procedure TFAccDiagn.DBPlannerItemAnchorClick(Sender: TObject;
  Item: TPlannerItem; Anchor: String);
begin
  aInfoOperatore.Execute;
end;

procedure TFAccDiagn.dxgiornilistaChange(Sender: TObject);
begin
  if QyPreno.Active then
     QyPreno.syRefresh;
end;

procedure TFAccDiagn.aCambiaGiorniSelezioneExecute(Sender: TObject);
begin
  dxRichDal.EditValue := IncDay(Date(),-dxGiorniDal.EditValue);
  dxRichAl.EditValue := IncDay(Date(),dxGiorniRicerca.EditValue);
  QyDaAcc.syRefresh;
end;

procedure TFAccDiagn.dxVisualizzaPrenoClick(Sender: TObject);
begin
  dxDockPanel1.Visible := dxVisualizzaPreno.Down;
  if dxDockPanel1.Visible and not QyDaAcc.Active then
  begin
    QyDaAcc.syRefresh;
    if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down then
    begin
       QyDaAccEsami.syRefresh;
    end;
  end;
end;

procedure TFAccDiagn.aControllaImmaginiExecute(Sender: TObject);
var
  err: integer;
  errtxt: string;
//  ADC: TcxDBDataController;
  AKeys: string;
  APID: string;
  i: integer;
  RecIdx: integer;
  pkVal: Variant;
begin

 AlertEventList1.Active := false;
 QyPreno.DisableControls;
 try

 if MsgDlgPos(RS_Msg_ConfControlloImmagini, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes then
 begin

    for i:=0 to refGrid.Controller.SelectedRecordCount-1 do
    begin

        RecIdx := refGrid.Controller.SelectedRecords[i].RecordIndex;
        pkVal := refGrid.DataController.GetRecordId(RecIdx);
        refGrid.DataController.Datasource.Dataset.Locate(refGrid.DataController.KeyFieldNames, pkVal, []);

        AKeys := refdata.FieldByName('RIS_STUDY_EUID').AsString;
        APID  := refdata.FieldByName('PID').AsString;

        FDMCommon.EsameInPacs.Parambyname('pris_study_euid').AsString := AKeys;
        FDMCommon.EsameInPacs.Parambyname('ppid').AsString := APID;
        if not FDMCommon.LeggiPostoLavoroWPACS_FK.IsNull then
           FDMCommon.EsameInPacs.Parambyname('ppacs_fk').AsInteger := FDMCommon.LeggiPostoLavoroWPACS_FK.AsInteger;
        FDMCommon.EsameInPacs.Parambyname('ptipo_modalita').Clear;
//        FDMCommon.EsameInPacs.Parambyname('ptipo_modalita').AsString := ErroriInvioPKASSISTIBILI.AsString;
        FDMCommon.EsameInPacs.ExecSQL;
        err := FDMCommon.EsameInPacs.Parambyname('res').AsInteger;

        case err of
        0:
        begin
          MsgDlg(format(RS_ImmaginiInviate,[AKeys,FDMCommon.EsameInPacs.Parambyname('xname').AsString]),'', ktInformation, [kbOK]);
        end;
        1:
        begin
          errtxt := format(RS_ImmaginiNonArrivate,[AKeys,FDMCommon.EsameInPacs.Parambyname('xname').AsString]);
          MsgDlg(errtxt,'', ktWarning, [kbOK]);
        end;
        2:
        begin
          errtxt := format(RS_PID_Differenti,[AKeys,
                                              FDMCommon.EsameInPacs.Parambyname('xlast_name').AsString,
                                              FDMCommon.EsameInPacs.Parambyname('xfirst_name').AsString,
                                              FDMCommon.EsameInPacs.Parambyname('xexternal_eid').AsString]);
          MsgDlg(errtxt,'', ktWarning, [kbOK]);
        end;
{
        3:
        begin
          errtxt := format(RS_MODALITA_Differenti,[AKeys,FDMCommon.EsameInPacsxname.AsString,EsameTIPO_MODALITA.AsString]);
          if tp_ctrl=1 then
          begin
            MsgDlg(errtxt,'', ktWarning, [kbOK]);
            esci := false;
          end
          else if MsgDlg(format(RS_MODALITA_QDifferenti,[AKeys,FDMCommon.EsameInPacsxname.AsString,EsameTIPO_MODALITA.AsString]),'', ktConfirmation, [kbYes,kbNo],dfSecond)=mrYes then
          begin
             esci := true;
          end;
        end;
}
        4:
        begin
          errtxt := format(RS_ImmaginiNonArrivate,[AKeys,FDMCommon.EsameInPacs.Parambyname('xname').AsString]);
          MsgDlg(errtxt,'', ktWarning, [kbOK]);
        end;
        end;

  end;

  end;

  finally
     QyPreno.EnableControls;
     AlertEventList1.Active := true;
  end;

end;

procedure TFAccDiagn.aControllaImmaginiUpdate(Sender: TObject);
begin
   aControllaImmagini.Enabled := FDMCommon.Pacs and (RecordAttuale<>-1);
end;

procedure TFAccDiagn.aCreazioneCDExecute(Sender: TObject);
begin
{$IFNDEF MEDICORNER}
     FCreaCDMicroprint := TFCreaCDMicroprint.Create(nil);
     try

          with FCreaCDMicroprint do
          begin

            ref := GridEseguiti;
            SiteName := '';

            ShowModal;

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

procedure TFAccDiagn.aCreazioneCDUpdate(Sender: TObject);
begin
  aCreazioneCD.Enabled := not FDMCommon.cdMaster.IsEmpty and
                             (((dxPageControl.ActivePage=dxTabEseguiti) and
                               (GridEseguiti.Controller.SelectedRecordCount>0) and (QyEseguitiCEIMMAGINI.AsInteger=1) and
                               (QyEseguitiSTATOVISITA.AsInteger in [130,170,171,180,190,198]))
                              );

end;

procedure TFAccDiagn.EventLogCDDataSets0AcceptActiveEvent(Sender: ToelItem;
  var op: Char; ParamList: TInternalAstaParamList; var Accept: Boolean);
var
  xstato: integer;
  TempUM: TAstaUpdateMethod;

  function CeRecord(pkKey: Variant): boolean;
  begin

     result := ((dxPageControl.ActivePage=dxTabEseguiti) and (GridEseguiti.DataController.FindRecordIndexByKey(pkKey)<>-1));

  end;

  procedure AggiornaRefertazione( cdstato: integer );
  var
     Grid: TcxGridDBTableView;
     ds: TAstaClientDataSet;
  begin
     Grid := GridEseguiti;

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

  Accept := ParamList.ParamByName('reparti_fk').AsInteger=gblpkrep;

  Accept := Accept and CeRecord(ParamList.ParamByName('PKValue').AsInteger);

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

procedure TFAccDiagn.aAttivaAltreRichExecute(Sender: TObject);
var
  xField: TFloatField;
  i: integer;
  oldact: boolean;
  subst: string;
begin

   if dxAltreRichieste.Down then
   begin
     oldact := qyDaAcc.Active;
     if oldact then
        qyDaAcc.close;

     if oldqyDaAccText='' then
        oldqyDaAccText := qyDaAcc.SQL.Text;

     subst :=
        ',decode((select count(*) '+
        'from diagxwk dw2 '+
        'join servizi s2 on s2.pkservizi = dw2.servizi_fk '+
        'join triage t2 on t2.diagnostica_fk=dw2.servizi_fk '+
        'join impegnative i2 on i2.pkimpegnative=t2.impegnative_fk '+
        'where dw2.workstation_fk = :workstation_fk and dw2.selezionata=1 and '+
        's2.REPARTI_FK=:reparti_fk and '+
        'i2.pkimpegnative<>i.pkimpegnative and '+
        'i2.assistibili_fk=i.assistibili_fk and '+
        'i2.data_prescrizione between :data_dal and to_date(to_char(:data_prescr,''DDMMYYYY'')||''2359'',''DDMMYYYYHH24MI'') and '+
        't2.statovisita in (20,40,41)),0,0,1) as NrAltre ';

     qyDaAcc.SQL.Text := StringReplace(qyDaAcc.SQL.Text,'/*wdiagn2*/',subst,[]);

     qyDaAcc.FastFields.Add('NRALTRE' + ',' + 'ftFloat' + ',' + '0');
     xField := TFloatField.Create(qyDaAcc);
     xField.Name := 'qyDaAccNRALTRE';
     xField.FieldName := 'NRALTRE';
     xField.DataSet := qyDaAcc;
     xField.FieldKind := fkData;
     GridRichiesteNRALTRE.DataBinding.FieldName := 'NRALTRE';
     GridRichiesteNRALTRE.Options.Filtering := True;
     if oldact then
        qyDaAcc.open;
   end
   else begin
     oldact := qyDaAcc.Active;
     if oldact then
        qyDaAcc.close;
     if oldqyDaAccText<>'' then
        qyDaAcc.SQL.Text := oldqyDaAccText;
     i := qyDaAcc.FastFields.IndexOf('NRALTRE,6,25');
     if i>=0 then
     begin
       qyDaAcc.FastFields.Delete(i);
       xField := TFloatField(qyDaAcc.Fieldbyname('nraltre'));
       qyDaAcc.Fields.Remove(xField);
       xField.Free;
     end;
     if oldact then
        qyDaAcc.open;
   end;

   GridRichiesteNRALTRE.Visible := dxAltreRichieste.Down;

end;

procedure TFAccDiagn.aAltreRichiesteExecute(Sender: TObject);
begin
  PostMessage(Handle,SY_ALTRERICHIESTE,qyDaAccPKTRIAGE.AsInteger,0);
end;

procedure TFAccDiagn.aAltreRichiesteUpdate(Sender: TObject);
begin
  aAltreRichieste.Enabled := dxAltreRichieste.Down and (qyDaAcc.FieldByName('NRALTRE').AsInteger>0);
end;


procedure TFAccDiagn.aCambiaDataSelezioneExecute(Sender: TObject);
begin
  dxGiorniDal.EditValue := DaysBetween(dxRichDal.EditValue,Date());
  dxGiorniRicerca.EditValue := DaysBetween(Date(),dxRichAl.EditValue);
  QyDaAcc.syRefresh;
end;

procedure TFAccDiagn.dxGiorniDalCurChange(Sender: TObject);
begin
  PostMessage(Handle,SY_DBLCLICK,0,LongInt(aCambiaGiorniSelezione));
end;

procedure TFAccDiagn.dxGiorniRicercaCurChange(Sender: TObject);
begin
  PostMessage(Handle,SY_DBLCLICK,0,LongInt(aCambiaGiorniSelezione));
end;

procedure TFAccDiagn.dxSubDiagCloseUp(Sender: TObject);
var
  I: integer;
  sel: integer;
begin
  inherited;

  if FDiagnSelezionate then
  begin
    AlertEventList1.Active := false;
    FCodiceDiag := '';
    sel := 0;
    try
    for I := 0 to vbDiagn.Count-1 do
    begin
      LkDiagxWk.Locate('PKSERVIZI',vbDiagn[I].Tag,[]);
      LkDiagxWk.Edit;
      if Assigned(vbDiagn[I]) and vbDiagn[I].Down then
      begin
         sel := sel+1;
         if FCodiceDiag='' then
            FCodiceDiag := IntToStr(vbDiagn[I].Tag)
         else
            FCodiceDiag := FCodiceDiag + ';' + IntToStr(vbDiagn[I].Tag);
         LkDiagxWkSELEZIONATA.AsInteger := 1;
      end
      else
         LkDiagxWkSELEZIONATA.AsInteger := 0;
      LkDiagxWk.Post;
    end;
    LkDiagxWk.ApplyUpdates();
    if sel=vbDiagn.Count then
    begin
       FCodiceDiag := '';
    end
    else if sel=0 then
       FCodiceDiag := '-1';

    SelezionaDiagnostiche(FCodiceDiag);
    finally
       FDiagnSelezionate := False;
       AlertEventList1.Active := dxAttivaRefresh.Down;
    end;
  end;
end;

procedure TFAccDiagn.qDettEseguitiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
{$IFNDEF MEDICORNER }
  Sender.Parambyname('statoinizio').AsInteger := 130;
{$ELSE}
  Sender.Parambyname('statoinizio').AsInteger := 140;
{$ENDIF}
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  Sender.Parambyname('workstation_fk').AsInteger := gblpkworkstation;
  Sender.Parambyname('data_preno').AsDateTime := dxData.EditValue;
end;

procedure TFAccDiagn.QyDaAccEsamiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('workstation_fk').AsInteger := gblpkworkstation;
  Sender.Parambyname('data_dal').AsDateTime := dxRichDal.EditValue;
  Sender.Parambyname('data_prescr').AsDateTime := dxRichAl.EditValue;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;  
end;


procedure TFAccDiagn.dxDataPropertiesCloseUp(Sender: TObject);
begin
  inherited;

  Inizializza(False);
  dxTutte.Down := (FCodiceDiag='');
  FiltraDiagnostica(BMStringReplace(FCodiceDiag,';',',',[]));

  if dxCalendario.Down then
  begin
     DBPlanner.Refresh;
//     DBPlanner.PosizionaGrid(Now)
  end
  ;

  Timer1.Enabled := IsSameDay(dxData.EditValue,Date());

  DBPlanner.BtnPrev.Enabled := CompareDate(dxData.EditValue,Date())>0;
//  DBPlanner.BtnNext.Enabled := CompareDate(dxData.EditValue,Date())=0;

end;

procedure TFAccDiagn.dxRichDalPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_DBLCLICK,0,LongInt(aCambiaDataSelezione));
end;

procedure TFAccDiagn.dxRichAlPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_DBLCLICK,0,LongInt(aCambiaDataSelezione));
end;

procedure TFAccDiagn.DBPlannerPlannerRightClick(Sender: TObject; Position,
  FromSel, FromSelPrecise, ToSel, ToSelPrecise, mX, mY: Integer);
var
  pop_cell: TPoint;
begin
  inherited;
  pop_cell := DBPlanner.XYToCell(mX, mY);
  pop_position := Position;
  DBPlanner.xStartTime := DBPlanner.CellToTime(Position,pop_cell.Y);

end;

procedure TFAccDiagn.GridEseguitiNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
  NBDI_REFRESH: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(Aggiorna));
                ADone := true;
             end;
  end;
end;

procedure TFAccDiagn.GridDaEseguireNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
  NBDI_REFRESH: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(Aggiorna));
                ADone := true;
             end;
  end;

end;

procedure TFAccDiagn.GridRichiesteNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
  NBDI_REFRESH: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(Aggiorna));
                ADone := true;
             end;
  end;

end;

procedure TFAccDiagn.qyPrenoDettAfterPopulate(Sender: TObject);
begin
  inherited;
  AggiornaFiltro;
end;

procedure TFAccDiagn.AggiornaFiltro;
var
  oldIdxName: string;
  tempL: TStringList;
  tempOld: TStringList;
  i: integer;
  dove: integer;
begin
  if ((FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down) and (FDMCommon.LeggiPostoLavoroCHK_ESAMI_FILTRABILI.AsInteger=1) then
  begin
    tempOld := TStringList.Create;
    tempL := TStringList.Create;
    cxGridDaEseguire.BeginUpdate;
    cxCheckEsami.Properties.Items.BeginUpdate;

    // -- salvataggio vecchi filtri
    with cxCheckEsami.Properties do
    for i := 0 to Items.Count - 1 do
      if cxCheckEsami.States[i] = cbsChecked then
      begin
         tempOld.Add( Items[i].Description );
      end;

    qyPrenoDett.Filtered := False;
    cxCheckEsami.Properties.Items.Clear;
    oldIdxName := qyPrenoDett.IndexName;
    qyPrenoDett.IndexName := 'Idx_PrenoCodice';
    qyPrenoDett.First;
    while not qyPrenoDett.Eof do
    begin
       if tempL.IndexOf(qyPrenoDettCODICE.AsString)<0 then
       begin
         cxCheckEsami.Properties.Items.AddCheckItem(qyPrenoDettCODICE.AsString);
         tempL.Add(qyPrenoDettCODICE.AsString);
       end;
       qyPrenoDett.Next;
    end;

    // -- tolgo filtri inesistenti
    i := 0;
    while i<tempOld.Count do
    begin
      if tempL.IndexOf(tempOld[i])<0 then
         tempOld.Delete( i )
      else
         inc(i);
    end;

    // -- riapplico filtri
    i := 0;
    while i<tempOld.Count do
    begin
      dove := tempL.IndexOf(tempOld[i]);
      if dove>=0 then
         cxCheckEsami.States[dove] := cbsChecked;
      inc(i);
    end;

    cxCheckEsami.Properties.Items.EndUpdate;
    cxGridDaEseguire.EndUpdate;
    qyPrenoDett.IndexName := oldIdxName;
    tempL.Free;
    tempOld.Free;
    ApplicaFiltro;
  end;
end;

procedure TFAccDiagn.cxCheckEsamiPropertiesCloseUp(Sender: TObject);
begin
  ApplicaFiltro;
end;

procedure TFAccDiagn.ApplicaFiltro;
var
  I: Integer;
  sel: Boolean;
  temp: string;
begin
  inherited;

  cxGridDaEseguire.BeginUpdate;
  qyPrenoDett.Filtered := False;
  sel := False;
  temp := '';
  with cxCheckEsami.Properties do
    for I := 0 to Items.Count - 1 do
      if cxCheckEsami.States[I] = cbsChecked then
      begin
          sel := True;
          if temp='' then
             temp := #39 + Items[I].Description + #39
          else
             temp := temp + ',' + #39 + Items[I].Description + #39;
      end;

  if sel then
  begin
     qyPrenoDett.Filter := 'CODICE in ( '+temp+' )';
     qyPrenoDett.Filtered := True;
     qyPrenoDett.First;
     temp := '';
     while not qyPrenoDett.eof do
     begin
        if temp='' then
           temp := 'PKTRIAGE='+qyPrenoDettTRIAGE_FK.AsString
        else
           temp := temp + ' or PKTRIAGE='+qyPrenoDettTRIAGE_FK.AsString;
        qyPrenoDett.Next;
     end;
     if temp<>'' then
     begin
       QyPreno.Filtered := False;
       QyPreno.Filter := '( '+ temp +' )';
       QyPreno.Filtered := True;
     end;
  end
  else begin
     QyPreno.Filtered := False;
     qyPrenoDett.Filtered := False;
  end;
  cxGridDaEseguire.EndUpdate;

end;

procedure TFAccDiagn.CheckAllItems(Sender: TObject; AButtonIndex: Integer);
var
  I : integer;
begin
if AButtonIndex = 1 then
  for I := 0 to (Sender as TcxCheckComboBox).Properties.Items.Count - 1 do
    (Sender as TcxCheckComboBox).States[I] := cbsUnchecked; // cbsChecked;

  cxCheckEsamiPropertiesCloseUp(Self);

end;

procedure TFAccDiagn.DeselezionaTutteExecute(Sender: TObject);
begin
  inherited;
  ChiudiTutte;
end;

procedure TFAccDiagn.ApriTuttiUpdate(Sender: TObject);
begin
  inherited;
  ApriTutti.Enabled := ((FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down) and not EmptyDataset(refData);
end;

procedure TFAccDiagn.ChiudiTuttiUpdate(Sender: TObject);
begin
  inherited;
  ChiudiTutti.Enabled := ((FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) or dxConEsami.Down) and not EmptyDataset(refData);
end;

function TFAccDiagn.EmptyDataset(xdata: TAstaClientDataset): boolean;
begin
  if xdata=QyPreno then
     Result := (GridDaEseguire.DataController.FilteredRecordCount=0)
  else if xdata=QyEseguiti then
     Result := (GridEseguiti.DataController.FilteredRecordCount=0)
  else if xdata=qyDaAcc then
     Result := (GridRichieste.DataController.FilteredRecordCount=0)
  else
     Result := False;
end;

procedure TFAccDiagn.aPrecedentiUpdate(Sender: TObject);
begin
  inherited;
  aPrecedenti.Enabled := (RecordAttuale<>-1);  // not EmptyDataset(refData);
end;

procedure TFAccDiagn.StampaListaRichiesteUpdate(Sender: TObject);
begin
  inherited;
  StampaListaRichieste.Enabled := not EmptyDataset(qyDaAcc);
end;

procedure TFAccDiagn.GridDaEseguireDataControllerFilterChanged(
  Sender: TObject);
var
  i: integer;
  ref: TcxDBDataController;
  rfCol: TObject;
  trovato: boolean;

begin
  inherited;

  if FFiltroInterno then exit;

  if (Sender is TcxDBDataFilterCriteria) then
     ref := TcxDBDataFilterCriteria(sender).DataController
  else if (Sender is TcxGridDBDataController) then
     ref := TcxGridDBDataController(Sender)
  else
     exit;

    if ref=GridEseguiti.DataController then
       rfCol := GridEseguitiNOMEDIAGNOSTICA
    else if ref=GridDaEseguire.DataController then
       rfCol := GridDaEseguireNOMEDIAGNOSTICA
    else
       rfCol := GridRichiesteDIAGNOSTICA;

    // -- cerco filtro sulla diagnostica...
    trovato := false;
    i := 0;
    while not trovato and (i<vbDiagn.Count) do
    begin
      trovato := Assigned(vbDiagn[I]) and FDMCommon.FiltroTrovato(vbDiagn[I].Caption,ref,rfCol);
      inc(i);
    end;

    if not trovato and not dxTutte.Down then
    begin
       ApriTutteDiagnostiche;
       FDiagnSelezionate := True;
       dxSubDiagCloseUp(Self);
    end;

end;

procedure TFAccDiagn.GridDaEseguireMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  AHitTest: TcxCustomGridHitTest;
begin
  AHitTest := TcxGridSite(Sender).ViewInfo.GetHitTest(X, Y);
  if AHitTest.HitTestCode = htFilterActivateButton then
  begin
     ApriTutteDiagnostiche;
     FDiagnSelezionate := True;
     dxSubDiagCloseUp(Self);
  end;
end;

procedure TFAccDiagn.aNoteRichiestaExecute(Sender: TObject);
begin
  inherited;
  FNote := TFNote.Create(nil);
  try
     FNote.sNote.Dataset := QyDaAcc;
     FNote.ShowModal;
  finally
     FNote.Free;
  end;

end;

procedure TFAccDiagn.aNoteRichiestaUpdate(Sender: TObject);
begin
  inherited;
  aNoteRichiesta.Enabled := (GridRichieste.Controller.SelectedRecordCount=1);
end;

procedure TFAccDiagn.GridRichiesteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=VK_RETURN then
     aModRichiesta.Execute;

end;

procedure TFAccDiagn.dxAnchePrenoClick(Sender: TObject);
begin
   AnchePreno(qyPreno);
   AnchePreno(qyPrenoDett);
end;

procedure TFAccDiagn.AnchePreno(dt: TAstaClientDataset);
var
  i,f: integer;
  xanchep: string;
  olda: boolean;
begin

  xanchep := '/*subst4*/ or (t.statovisita in (20,110) and t.ora_inizio between :data_preno and to_date(to_char(:data_preno,'#39'DDMMYYYY'#39')||'#39'2359'#39','#39'DDMMYYYYHH24MI'#39'))/*subst5*/';

  olda := dt.Active;
  if olda then
     dt.Close;
  if dxAnchePreno.Down then
     dt.SQL.Text := StringReplace(dt.SQL.Text,'/* subst3 */',xanchep,[])
  else begin
     i := Pos('/*subst4*/',dt.SQL.Text);
     f := Pos('/*subst5*/',dt.SQL.Text);
     if i>0 then
        dt.SQL.Text := Copy(dt.SQL.Text,1,i-1) + Copy(dt.SQL.Text,f+10,Length(dt.SQL.Text));
  end;
  if olda then
     dt.Open;

end;

procedure TFAccDiagn.AlertEventList1DataSets2InsertActiveEvent(
  Sender: ToelItem; op: Char; ParamList: TInternalAstaParamList;
  var Done: Boolean);
begin
  inherited;
  InsertOperazione(GridRichieste,GridRichiesteDettagli,ParamList.ParamByName('pkvalue').Value);
  Done := True;
end;

procedure TFAccDiagn.AlertEventList1DataSets2DeleteActiveEvent(
  Sender: ToelItem; op: Char; ParamList: TInternalAstaParamList;
  var Done: Boolean);
begin
  inherited;
  DeleteOperazione(GridRichieste,GridRichiesteDettagli,ParamList.ParamByName('pkvalue').Value);
  Done := True;
end;

procedure TFAccDiagn.AlertEventList1DataSets2UpdateActiveEvent(
  Sender: ToelItem; op: Char; ParamList: TInternalAstaParamList;
  trovato: Boolean; var Done: Boolean);
begin
  inherited;
   if trovato then
      RefreshOperazione(GridRichieste,GridRichiesteDettagli,ParamList.ParamByName('pkvalue').Value)
   else if op='A' then
      InsertOperazione(GridRichieste,GridRichiesteDettagli,ParamList.ParamByName('pkvalue').Value);
   Done := True;
end;

procedure TFAccDiagn.AlertEventList1BeforeRefresh(
  Sender: TKSAstaEventClient; var Accept: Boolean);
begin
  inherited;
{
     Accept := Assigned(GridDaEseguire) and
               Assigned(GridEseguiti) and
               Assigned(GridRichieste) and
               not GridDaEseguire.Controller.IsIncSearching and
               not GridDaEseguire.Controller.IsDragging and
               not GridEseguiti.Controller.IsIncSearching and
               not GridEseguiti.Controller.IsDragging and
               not GridRichieste.Controller.IsIncSearching and
               not GridRichieste.Controller.IsDragging and
               not GridRichieste.DataController.Filter.IsInFiltering and
               not Assigned(FCercaBarCode);
}
    Accept := Assigned(refGrid) and not refGrid.Controller.IsIncSearching and not refGrid.Controller.IsDragging and not refGrid.DataController.Filter.IsInFiltering;
end;

procedure TFAccDiagn.dxAttivaRefreshClick(Sender: TObject);
begin
  inherited;
  AlertEventList1.Active := dxAttivaRefresh.Down;
end;

procedure TFAccDiagn.DeleteOperazione(md,dd: TcxGridDBTableView; pk: Integer);
begin
  DeleteOperazione(md,dd,pk,AncheDettagli);
  if (dd=GridDaEseguireDettagli) and AncheDettagli then
     AggiornaFiltro;
end;

procedure TFAccDiagn.InsertOperazione(md,dd: TcxGridDBTableView; pk: Integer);
begin
   InsertOperazione(md,dd,pk,AncheDettagli,RefreshDettagli);
end;

procedure TFAccDiagn.RefreshOperazione(md,dd: TcxGridDBTableView; pk: Integer);
begin
   RefreshOperazione(md,dd,pk,AncheDettagli,RefreshDettagli)
end;

procedure TFAccDiagn.dxProgAccClick(Sender: TObject);
begin
  inherited;
  FDMCommon.SetVisible(GridDaEseguirePROG_ACC,(dxProgAcc.Down));
  FDMCommon.SetVisible(GridEseguitiPROG_ACC,(dxProgAcc.Down));
end;

procedure TFAccDiagn.aSelezionaTuttiExecute(Sender: TObject);
begin
  inherited;
  refGrid.Controller.SelectAll;
end;

procedure TFAccDiagn.aSelezionaTuttiUpdate(Sender: TObject);
begin
  inherited;
  aSelezionaTutti.Enabled := not EmptyDataset(refdata);
end;


function TFAccDiagn.GetCanClose: Boolean;
begin

  result := inherited GetCanClose;

  if Result then
  begin
    if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5) and not FResetEffettuato and FCustomized then
    begin
       rsPropSaver1.SaveValues;
  {
      //  GridDaEseguire.DataController.Filter.Clear;
       GridDaEseguire.DataController.Filter.RemoveItemByItemLink(GridDaEseguireSTATOVISITA);
  }
       GridDaEseguire.StoreTorsStorage(TcxrsStorageWriter.CreateNew(name+'.'+GridDaEseguire.Name,rsPropSaver1.Storage), true, [{gsoUseFilter,} gsoUseSummary]);
       GridEseguiti.StoreTorsStorage(TcxrsStorageWriter.CreateNew(name+'.'+GridEseguiti.Name,rsPropSaver1.Storage), true, [{gsoUseFilter,} gsoUseSummary]);
       GridRichieste.StoreTorsStorage(TcxrsStorageWriter.CreateNew(name+'.'+GridRichieste.Name,rsPropSaver1.Storage), true, [{gsoUseFilter,} gsoUseSummary]);

       rsPropSaver1.Storage.Save;
    end;
  end;

end;

procedure TFAccDiagn.rsPropSaver1SetUserProperty(Sender: TObject;
  const PropName: String; var Value: Variant);
begin
  inherited;
  //
end;

procedure TFAccDiagn.rsPropSaver1SetProperty(Sender, Instance: TObject;
  const PropName: String; var Value: Variant; var Allow: Boolean);
begin
  inherited;
  //
end;

procedure TFAccDiagn.GridRichiesteCustomization(Sender: TObject);
begin
  inherited;
  FCustomized := True;
end;

procedure TFAccDiagn.GridDaEseguireCustomization(Sender: TObject);
begin
  inherited;
  FCustomized := True;
end;

procedure TFAccDiagn.GridEseguitiCustomization(Sender: TObject);
begin
  inherited;
  FCustomized := True;
end;

initialization
  Classes.RegisterClass(TFAccDiagn);

end.
