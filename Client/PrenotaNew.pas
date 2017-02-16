unit PrenotaNew;

interface

uses
  Forms, BaseFrame, BaseGrid, CutPaste, uVbDiagnList, IInterface, IIConsts, Messages,
  RicRadiologiaPreno, cxGridDBDataDefinitions, {}dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB,
  cxDBData, cxTextEdit, cxSpinEdit, cxCheckBox, cxCurrencyEdit,
  cxButtonEdit, ComCtrls, dxCore, cxDateUtils, Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer,
  dxSkinsdxBarPainter, cxCalendar, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  AstaUpdateSQL, CSEZForm, dxBar, rsStorage, rsPropSaver,
  Classes, ActnList, AstaDrv2, AstaClientDataset, cxBarEditItem,
  dxBarExtItems, cxClasses, cxDBLookupComboBox, cxMaskEdit, cxDBEdit,
  StdCtrls, cxButtons, cxDropDownEdit, KScxDBLookupDlg, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxLabel, cxDBLabel, cxLookupEdit,
  cxDBLookupEdit, dxLayoutControl, cxPC, Controls, ExtCtrls, rsXmlData,
{$IFNDEF MEDICORNER}
  AltrePreno,
{$ENDIF}
  dxPScxSchedulerLnk, dxPSdxDBOCLnk, cxSplitter, dxPSdxLCLnk;
{$I syVer.inc}
{$DEFINE CON_PRENOTEST}

type

  TFPrenotaNew = class(TFBaseGrid)
    tbSelezione: TAstaDataSet;
    sSelezione: TDataSource;
    cxPageControl: TcxPageControl;
    cxTabPreno: TcxTabSheet;
    QyGiornate: TAstaClientDataSet;
    tbSelezioneDATA_PRENO: TDateField;
    Panel3: TPanel;
    tbSelezioneICONA: TSmallintField;
    QyGiornateDATA_PRENO: TDateTimeField;
    tbSelezioneGG_SET: TStringField;
    ActionList1: TActionList;
    aNuovaPrenotazione: TAction;
    actRicerca: TAction;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    rsPropSaver1: TrsPropSaver;
    dxBarSubItem1: TdxBarSubItem;
    dxGiorni: TcxBarEditItem;
    dxBloccati: TdxBarButton;
    dxLibere: TdxBarButton;
    dxConEsami: TdxBarButton;
    dxBarPopGrid: TdxBarPopupMenu;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    MinimizzaTutte: TAction;
    MassimizzaTutte: TAction;
    dxBarButton5: TdxBarButton;
    ChiudiTutte: TAction;
    dxBarButton6: TdxBarButton;
    dxPeriodo: TdxBarCombo;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    Seleziona: TAction;
    sRichiesti: TDataSource;
    Richiesti: TAstaDataSet;
    RichiestiPKCODICIRAD: TIntegerField;
    RichiestiCODICE: TStringField;
    RichiestiDURATA: TIntegerField;
    RichiestiDESCRIZIONE: TStringField;
    aRicercaPaziente: TAction;
    sEsami: TDataSource;
    aCercaAgende: TAction;
    TPreno: TAstaDataSet;
    sTPreno: TDataSource;
    RichiestiIDENT_FK: TStringField;
    RichiestiDOSE: TFloatField;
    RichiestiPROGRESSIVO_RIGA: TIntegerField;
    TPrenoTIPO_ATTIVITA: TStringField;
    TPrenoLIBRETTO_SAN: TStringField;
    TPrenoCOGNOME: TStringField;
    TPrenoNOME: TStringField;
    TPrenoDATA_NASCITA: TDateTimeField;
    TPrenoPKASSISTIBILI: TIntegerField;
    TPrenoNR_IMPEGNATIVA: TStringField;
    dxSubDiag: TdxBarSubItem;
    QyLkServizi: TAstaClientDataSet;
    QyLkServiziPKSERVIZI: TIntegerField;
    QyLkServiziDESC_SERVIZIO: TStringField;
    QyLkServiziDESC_REPARTO: TStringField;
    sQyLkServizi: TDataSource;
    csEZKeys1: TcsEZKeys;
    Impegnative: TAstaClientDataSet;
    ImpegnativePKIMPEGNATIVE: TIntegerField;
    ImpegnativeASSISTIBILI_FK: TIntegerField;
    ImpegnativeDATA_PRESCRIZIONE: TDateTimeField;
    ImpegnativeUSER_ID: TIntegerField;
    ImpegnativeIMPORTO_TOTALE: TFloatField;
    ImpegnativeIMPORTO_PAGATO: TFloatField;
    ImpegnativeTIPO_ATTIVITA_FK: TStringField;
    TPrenoTES_IDENT: TStringField;
    TPrenoIMPORTO_TOTALE: TFloatField;
    TPrenoIND_COMPLETO: TStringField;
    sLkEsenzione: TDataSource;
    RichiestiIMPORTO: TFloatField;
    CodiciEsenti: TAstaClientDataSet;
    CodiciEsentiIDENT_FK: TStringField;
    TPrenoIMPORTO_PAGATO: TFloatField;
    CancellaEsame: TAction;
    dxBarButton2: TdxBarButton;
    ConfermaPrenotazione: TAction;
    TPrenoTELEFONO: TStringField;
    AnnullaPrenotazioni: TAction;
    TPrenoIMPEGNATIVE_FK: TIntegerField;
    cxTabRicerca: TcxTabSheet;
    sRicPreno: TDataSource;
    QyRicPreno: TAstaClientDataSet;
    QyRicPrenoDURATA: TIntegerField;
    QyRicPrenoDESC_REPARTO: TStringField;
    QyRicPrenoDESC_SERVIZIO: TStringField;
    QyRicPrenoREPARTI_FK: TIntegerField;
    QyRicPrenoPKTRIAGE: TIntegerField;
    QyRicPrenoORA_INIZIO: TDateTimeField;
    QyRicPrenoSTATOVISITA: TIntegerField;
    QyRicPrenoDESCSTATOVISITA: TStringField;
    QyRicPrenoORA_FINE: TDateTimeField;
    QyRicPrenoTIPO_ATTIVITA_FK: TStringField;
    QyRicPrenoPROVENIENZA: TStringField;
    QyRicPrenoDESCATTIVITA: TStringField;
    QyRicPrenoDIAGNOSTICA_FK: TIntegerField;
    QyRicPrenoASSISTIBILI_FK: TIntegerField;
    Composto: TAstaClientDataSet;
    CompostoDESCRIZIONE: TStringField;
    CompostoCODICE: TStringField;
    CompostoDURATA: TIntegerField;
    CompostoDOSE: TFloatField;
    CompostoIDENT_FK: TStringField;
    TPrenoSTATOVISITA: TIntegerField;
    dxCupTelefonico: TdxBarButton;
    dxTuttoVideo: TdxBarButton;
    TPrenoIMP_OBBLIG: TIntegerField;
    TPrenoOSP_RICH: TStringField;
    sLkOspedali: TDataSource;
    ImpegnativeOSP_RICH: TStringField;
    ImpegnativeREPARTI_FK: TIntegerField;
    RichiestiPAGATO: TFloatField;
    QyStorEsami: TAstaClientDataSet;
    sStorEsami: TDataSource;
    QyStorEsamiPKPRESTAZIONI: TFloatField;
    QyStorEsamiPROGRESSIVO_RIGA: TIntegerField;
    QyStorEsamiDESCRIZIONE: TStringField;
    QyStorEsamiDURATA: TIntegerField;
    QyStorEsamiCODICE: TStringField;
    QyStorEsamiIDENT_FK: TStringField;
    QyStorEsamiDIAGNOSTICA: TStringField;
    QyStorEsamiTRIAGE_FK: TIntegerField;
    dxIntervallo: TcxBarEditItem;
    tbSelezioneNUM_POSTI: TSmallintField;
    TPrenoDATA_PRESCRIZIONE: TDateTimeField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutDescTempi: TdxLayoutItem;
    cxProvenienza: TcxDBLookupComboBox;
    dxGroupNumeroImpegnativa: TdxLayoutItem;
    cxNumeroImpegnativa: TcxDBMaskEdit;
    dxLayoutCodEsenzione: TdxLayoutItem;
    cxCodiceEsenzione: TcxDBLookupComboBox;
    dxGroupProvenienza: TdxLayoutGroup;
    dxGroupAnagrafica: TdxLayoutGroup;
    dxLayoutCognome: TdxLayoutItem;
    cxCognome: TcxDBMaskEdit;
    dxLayoutNome: TdxLayoutItem;
    cxNome: TcxDBMaskEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    btnRicPaz: TcxButton;
    dxGroupGrid: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    cdDataNascita: TcxDBLabel;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxIndirizzo: TcxDBLabel;
    dxLayoutGroupMedico: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxCodice: TcxButtonEdit;
    dxLayoutDescrizione: TdxLayoutItem;
    cxDescrizione: TcxButtonEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxGrid1: TcxGrid;
    cxGridPrestazioni: TcxGridDBTableView;
    cxGridPrestazioniPKCODICIRAD: TcxGridDBColumn;
    cxGridPrestazioniCODICE: TcxGridDBColumn;
    cxGridPrestazioniDESCRIZIONE: TcxGridDBColumn;
    cxGridPrestazioniIMPORTO: TcxGridDBColumn;
    cxGridPrestazioniPAGATO: TcxGridDBColumn;
    cxGridPrestazioniDURATA: TcxGridDBColumn;
    cxGridPrestazioniPROGRESSIVO_RIGA: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Item1: TdxLayoutItem;
    cxRicCognome: TcxDBMaskEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    cxRicNome: TcxDBMaskEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    cxRicDataNascita: TcxDBLabel;
    dxLayoutControl2Item4: TdxLayoutItem;
    btnRicPreno: TcxButton;
    dxLayoutControl2Item5: TdxLayoutItem;
    cxRicResidenza: TcxDBLabel;
    dxLayoutControl2Group4: TdxLayoutGroup;
    dxLayoutControl2Group5: TdxLayoutGroup;
    dxLayoutControl2Group3: TdxLayoutGroup;
    dxLayoutControl2Item6: TdxLayoutItem;
    cxGridRicPreno: TcxGrid;
    cxGridRicPrenoPrenotazioni: TcxGridDBTableView;
    cxGridRicPrenoPrenotazioniPKTRIAGE: TcxGridDBColumn;
    cxGridRicPrenoPrenotazioniDESCSTATOVISITA: TcxGridDBColumn;
    cxGridRicPrenoPrenotazioniORA_INIZIO: TcxGridDBColumn;
    cxGridRicPrenoPrenotazioniDURATA: TcxGridDBColumn;
    cxGridRicPrenoPrenotazioniDESC_SERVIZIO: TcxGridDBColumn;
    cxGridRicPrenoPrenotazioniDESC_REPARTO: TcxGridDBColumn;
    cxGridRicPrenoEsami: TcxGridDBTableView;
    cxGridRicPrenoEsamiCODICE: TcxGridDBColumn;
    cxGridRicPrenoEsamiDESCRIZIONE: TcxGridDBColumn;
    cxGridRicPrenoEsamiDURATA: TcxGridDBColumn;
    cxGridRicPrenoEsamiIDENT_FK: TcxGridDBColumn;
    cxGridRicPrenoEsamiDIAGNOSTICA: TcxGridDBColumn;
    cxGridRicPrenoLevel1: TcxGridLevel;
    cxGridRicPrenoLevel2: TcxGridLevel;
    cxDBTextEdit2: TcxDBLabel;
    dxLayoutControl1Item14: TdxLayoutItem;
    TPrenoDESCR_OSPEDALE: TStringField;
    TPrenoMED_BASE: TStringField;
    MedBase: TAstaClientDataSet;
    MedBaseCODICE: TStringField;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxMedicoBase: TKScxDBLookupDlg;
    MedBaseNOMINATIVO: TStringField;
    TPrenoNOMEMEDICO: TStringField;
    RichiestiESENTE: TIntegerField;
    TPrenoESENTE: TIntegerField;
    cxGridPrestazioniESENTE: TcxGridDBColumn;
    ImpegnativeMED_BASE: TStringField;
    qVerificaNumero: TAstaClientDataSet;
    ImpegnativeTES_IDENT: TStringField;
    TPrenoDESCR_ESENZIONE: TStringField;
    cxDBTextEdit1: TcxDBLabel;
    dxLayoutDescEsenzione: TdxLayoutItem;
    aCercaAgePreno: TAction;
    cxTelefono: TcxDBMaskEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    uImpegnative: TAstaUpdateSQL;
    ImpegnativeTELEFONO: TStringField;
    TriagexImp: TAstaClientDataSet;
    TriagexImpDIAGNOSTICA_FK: TIntegerField;
    QyRicPrenoPKIMPEGNATIVE: TIntegerField;
    QyStorEsamiDIAGNOSTICA_FK: TIntegerField;
    QyStorEsamiCODICIRAD_FK: TIntegerField;
    TriagexImpDURATA: TIntegerField;
    TriagexImpPKTRIAGE: TIntegerField;
    cxGridRicPrenoPrenotazioniPKIMPEGNATIVE: TcxGridDBColumn;
    dxBarPopRicPreno: TdxBarPopupMenu;
    dxBarButton8: TdxBarButton;
    aRistampa: TAction;
    aCancellaPreno: TAction;
    cxDataRicerca: TcxDateEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    ImpegnativePROVENIENZA: TStringField;
    TriagexImpORA_INIZIO: TDateTimeField;
    dxLayoutControl1Item17: TdxLayoutItem;
    ksRicSpazio: TcxButton;
    aCercaSpazio: TAction;
    cxDBTextEdit3: TcxDBLabel;
    dxLayoutControl1Item18: TdxLayoutItem;
    QyLkServiziSLOT_STANDARD: TIntegerField;
    ImpegnativeSTATO: TIntegerField;
    Panel1: TPanel;
    ksfcImageBtn1: TcxButton;
    ksfcImageBtn3: TcxButton;
    ksfcImageBtn4: TcxButton;
    Panel2: TPanel;
    ksfcImageBtn5: TcxButton;
    ksfcImageBtn2: TcxButton;
    ksfcImageBtn6: TcxButton;
    TPrenoURGENZA: TIntegerField;
    ImpegnativeURGENZA: TIntegerField;
    TriagexImpOSP_RICH: TStringField;
    TriagexImpTIPO_ATTIVITA_FK: TStringField;
    qVerificaNumeroPKIMPEGNATIVE: TIntegerField;
    qVerificaNumeroDATA_NASCITA: TDateTimeField;
    PazientiInAttesa: TAstaClientDataSet;
    PazientiInAttesaxEsame: TAstaClientDataSet;
    TPrenoPROVIMP: TStringField;
    ImpegnativeREPARTO_RICH_FK: TIntegerField;
    ImpegnativeCOD_MED_INT: TIntegerField;
    TPrenoREPARTO_RICH_FK: TIntegerField;
    TPrenoCOD_MED_INT: TIntegerField;
    MedInterni: TAstaClientDataSet;
    MedInterniPKPERSONALE: TIntegerField;
    MedInterniREPARTI_FK: TIntegerField;
    MedInterniCODICE: TStringField;
    MedInterniNOMINATIVO: TStringField;
    MedBasePKPERSONALE: TStringField;
    MedBaseREPARTI_FK: TStringField;
    TriagexImpREPARTI_FK: TIntegerField;
    QyLkServiziREP_OWNER: TIntegerField;
    ScegliGiorno: TAction;
    MedInterniREPARTO: TStringField;
    TPrenoLEG_CODICE: TStringField;
    ImpegnativeLEG_CODICE: TStringField;
    TPrenoTIPO_FATTURA: TIntegerField;
    RichiestiNUMERO_PRESTAZIONE: TIntegerField;
    cxGridPrestazioniNUMERO_PRESTAZIONE: TcxGridDBColumn;
    aTuttoVideo: TAction;
    altriPresidi: TAction;
    RiapriPreno: TAstaClientDataSet;
    RileggiDiagnostiche: TAstaClientDataSet;
    RileggiDiagnosticheDIAGNOSTICA_FK: TIntegerField;
    RileggiDiagnosticheCODICE: TStringField;
    RileggiDiagnostichePROGRESSIVO_RIGA: TIntegerField;
    RileggiDiagnosticheDURATA: TIntegerField;
    RileggiDiagnosticheSLOT_STANDARD: TIntegerField;
    RileggiDiagnosticheIDENT_FK: TStringField;
    RileggiDiagnosticheDESCRIZIONE: TStringField;
    RileggiDiagnosticheDOSE: TFloatField;
    RileggiDiagnosticheIMPORTO: TFloatField;
    RileggiDiagnostichePAGATO: TFloatField;
    RileggiDiagnosticheESENTE: TIntegerField;
    RileggiDiagnosticheNUMERO_PRESTAZIONE: TIntegerField;
    RileggiDiagnosticheCODICIRAD_FK: TIntegerField;
    RichiestiPRENOTATO: TIntegerField;
    RileggiDiagnosticheORA_INIZIO: TDateTimeField;
    Storico: TAction;
    dxBarButton9: TdxBarButton;
    RileggiDiagnostichePKTRIAGE: TIntegerField;
    QyRicPrenoOSP_RICH: TStringField;
    TPrenoAGENDE_ESCLUSIVE: TIntegerField;
    aAltraPrenotazione: TAction;
    RileggiDiagnosticheAGENDE_ESCLUSIVE: TIntegerField;
    RileggiDiagnosticheOSP_RICH: TStringField;
    RileggiDiagnosticheTIPO_ATTIVITA_FK: TStringField;
    cxDataImpegnativa: TcxDBDateEdit;
    dxLayoutDataImpegnativa: TdxLayoutItem;
    TPrenoDATA_IMPEGNATIVA: TDateTimeField;
    TPrenoTIPO_RICETTA_FK: TStringField;
    TPrenoTIPO_ACCESSO_FK: TStringField;
    sTipoAccesso: TDataSource;
    sTipoRicetta: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutTipoAccesso: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutTipoRicetta: TdxLayoutItem;
    dxGroupDataImpegnativa: TdxLayoutGroup;
    dxLayoutControl1Group14: TdxLayoutGroup;
    ImpegnativeTIPO_RICETTA_FK: TStringField;
    ImpegnativeDATA_IMPEGNATIVA: TDateTimeField;
    RichiestiGRESAMI_FK: TIntegerField;
    RichiestiGRUPPIPREST_FK: TIntegerField;
    CompostoPKGRUPPIPREST: TIntegerField;
    cxMagg: TcxCheckBox;
    dxLayoutControlQuota: TdxLayoutItem;
    TPrenoIMPORTO_QUOTA: TFloatField;
    ImpegnativeIMPORTO_QUOTA: TFloatField;
    Materiali: TAstaDataSet;
    MaterialiQUANTITA: TFloatField;
    MaterialiMAGART_FK: TIntegerField;
    MaterialiTIPO: TIntegerField;
    MaterialiPROGRESSIVO_RIGA: TIntegerField;
    RichiestiRADIOFARMACO: TStringField;
    cxGridPrestazioniRADIOFARMACO: TcxGridDBColumn;
    DistBas: TAstaClientDataSet;
    DistBasMAGART_FK: TIntegerField;
    DistBasQUANTITA: TFloatField;
    RichiestiCODICIRAD_FK: TIntegerField;
    TPrenoUSL_REG_CODICE_ASS: TStringField;
    TPrenoUSL_CODICE_ASS: TStringField;
    ImpegnativeUSL_REG_CODICE_ASS: TStringField;
    ImpegnativeUSL_CODICE_ASS: TStringField;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutCompilazione: TdxLayoutItem;
    TPrenoRICETTA_INF: TIntegerField;
    ImpegnativeRICETTA_INF: TIntegerField;
    ImpegnativeNR_IMPEGNATIVA: TStringField;
    TPrenoTIPO_PRENO: TIntegerField;
    ImpegnativeTIPO_PRENO: TIntegerField;
    cxTelefonica: TcxCheckBox;
    dxLayoutTelefonica: TdxLayoutItem;
    ImpegnativeTIPO_ACCESSO_FK: TStringField;
    aTesseraSanitaria: TAction;
    dxLayoutControlRicercaTessera: TdxLayoutItem;
    cxBtnTessera: TcxButton;
    cxNoInsieme: TcxCheckBox;
    dxDockPanel1: TPanel;
    dxDockPanel2: TPanel;
    dxLayoutControl1Item23: TdxLayoutItem;
    updRicPreno: TAstaUpdateSQL;
    CancellaImpegnativa: TAstaClientDataSet;
    ControllaAltrePreno: TAstaClientDataSet;
    ControllaAltrePrenoPKTRIAGE: TIntegerField;
    ControllaAltrePrenoUSER_ID: TIntegerField;
    ControllaAltrePrenoSTATOVISITA: TIntegerField;
    updControllaAltrePreno: TAstaUpdateSQL;
    QyRicPrenoUSER_ID: TIntegerField;
    QyRicPrenoNOTE_PRENO: TStringField;
    cxAccessionNumber: TcxMaskEdit;
    dxLayoutControl2Item7: TdxLayoutItem;
    QyRicPrenoSERVIZI_FK: TIntegerField;
    LkDiagxWk_old: TAstaClientDataSet;
    LkDiagxWk_oldDESCRIZ: TStringField;
    LkDiagxWk_oldPKSERVIZI: TIntegerField;
    LkDiagxWk_oldSLOT_STANDARD: TIntegerField;
    LkDiagxWk_oldDESC_REPARTO: TStringField;
    LkDiagxWk_oldSERVRAD_FK: TIntegerField;
    LkDiagxWk_oldTIPO_DIAGN: TIntegerField;
    LkDiagxWk_oldPKDIAGXWK: TIntegerField;
    LkDiagxWk_oldSELEZIONATA: TIntegerField;
    dxSingolaDiagn: TdxBarButton;
    dxDataAgenda: TcxBarEditItem;
    TPrenoSAN_IDENT: TIntegerField;
    cxTabTempiDiAttesa: TcxTabSheet;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    cxEsamiDaCercare: TcxButtonEdit;
    dxLayoutControl3Item1: TdxLayoutItem;
    aTempiAttesa: TAction;
    cxDescrTempi: TcxButtonEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutGroup;
    CodicInAttesa: TAstaDataSet;
    CodicInAttesaCODICE: TStringField;
    CodicInAttesaDESCRIZIONE: TStringField;
    sCodicInAttesa: TDataSource;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dxLayoutControl3Item3: TdxLayoutItem;
    cxGrid2DBTableView1CODICE: TcxGridDBColumn;
    cxGrid2DBTableView1DESCRIZIONE: TcxGridDBColumn;
    dxLayoutControl3Group3: TdxLayoutGroup;
    dxLayoutControl3Group4: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutControl3Item4: TdxLayoutItem;
    aCalcolaTempi: TAction;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    dxLayoutControl3Item6: TdxLayoutItem;
    PazientiInAttesaCODICE: TStringField;
    PazientiInAttesaDESCRIZIONE: TStringField;
    sPazientiInAttesa: TDataSource;
    cxGrid3DBTableView1CODICE: TcxGridDBColumn;
    cxGrid3DBTableView1DESCRIZIONE: TcxGridDBColumn;
    cxGrid3DBTableView1NR_PAZIENTI: TcxGridDBColumn;
    cxGrid3DBTableView1GIORNI_ATTESA: TcxGridDBColumn;
    cxGrid3DBTableView1PAZXESAME: TcxGridDBColumn;
    dxBarButton10: TdxBarButton;
    cxButton2: TcxButton;
    dxLayoutControl3Item5: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    aStampaTempi: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinterTempiAttesa: TdxGridReportLink;
    dxAgendeInterni: TdxBarButton;
    qVerificaNumeroNOMINATIVO: TStringField;
    dxBarStatic1: TdxBarStatic;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    cxSelezData: TcxLookupComboBox;
dxBarManager1Bar1: TdxBar;
    qRicettaInf: TAstaClientDataSet;
    qRicettaInfRICETTA_INF: TIntegerField;
    qRicettaInfDESCRIZIONE: TStringField;
    sqRicettaInf: TDataSource;
    PazientiInAttesaNR_PAZIENTI: TIntegerField;
    PazientiInAttesaGIORNI_ATTESA: TIntegerField;
    PazientiInAttesaPAZXESAME: TIntegerField;
    PazientiInAttesaxEsameQUANTI: TIntegerField;
    TPrenoETA: TIntegerField;
    cxPersonalizza: TcxButton;
    PopupMenuPersonalizza: TPopupMenu;
    ResetForm: TMenuItem;
    CompostoPKCODICIRAD: TIntegerField;
    RichiestiBRANCA: TStringField;
    RichiestiDESCBRANCA: TStringField;
    cxSplitter1: TcxSplitter;
    cxGridPrestazioniDESCBRANCA: TcxGridDBColumn;
    CompostoBRANCA: TStringField;
    CompostoDESCBRANCA: TStringField;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    RichiestiCESPECIFIC: TIntegerField;
    RichSpecxPrest: TAstaDataSet;
    RichSpecxPrestSPECIFICAZIONI_FK: TIntegerField;
    RichSpecxPrestIDSPECIFICAZIONI: TStringField;
    RichSpecxPrestDESCRIZIONE: TStringField;
    RichSpecxPrestPREZZO: TFloatField;
    RichSpecxPrestCOSTO: TFloatField;
    RichSpecxPrestPROGRESSIVO_RIGA: TIntegerField;
    cxGrid1Level2: TcxGridLevel;
    GridSpecificazioni: TcxGridDBTableView;
    sRichSpecxPrest: TDataSource;
    GridSpecificazioniIDSPECIFICAZIONI: TcxGridDBColumn;
    GridSpecificazioniDESCRIZIONE: TcxGridDBColumn;
    GridSpecificazioniPREZZO: TcxGridDBColumn;
    procedure aNuovaPrenotazioneExecute(Sender: TObject);
    procedure actRicercaExecute(Sender: TObject);
    procedure QyGiornateBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure btBloccateClick(Sender: TObject);
    procedure dxLibereClick(Sender: TObject);
    procedure dxConEsamiClick(Sender: TObject);
    procedure MinimizzaTutteExecute(Sender: TObject);
    procedure MassimizzaTutteExecute(Sender: TObject);
    procedure ChiudiTutteExecute(Sender: TObject);
    procedure dxPeriodoChange(Sender: TObject);
    procedure MassimizzaTutteUpdate(Sender: TObject);
    procedure SelezionaUpdate(Sender: TObject);
    procedure aRicercaPazienteExecute(Sender: TObject);
    procedure aCercaAgendeExecute(Sender: TObject);
    procedure aCercaAgendeUpdate(Sender: TObject);
    procedure RichiestiNewRecord(DataSet: TDataSet);
    procedure aRicercaPazienteUpdate(Sender: TObject);
    procedure TPrenoNewRecord(DataSet: TDataSet);
    procedure QyLkServiziBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure csEZKeys1KeyIntercept(KeyType: TNavigationKey;
      Ctrl: TControl; var Intercept: Boolean);
    procedure cxNumeroImpegnativaPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure RichiestiAfterDelete(DataSet: TDataSet);
    procedure RichiestiAfterPost(DataSet: TDataSet);
    procedure CancellaEsameExecute(Sender: TObject);
    procedure CancellaEsameUpdate(Sender: TObject);
    procedure ConfermaPrenotazioneExecute(Sender: TObject);
    procedure ConfermaPrenotazioneUpdate(Sender: TObject);
    procedure AnnullaPrenotazioniExecute(Sender: TObject);
    procedure AnnullaPrenotazioniUpdate(Sender: TObject);
    procedure QyRicPrenoBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure QyRicPrenoAfterQuery(Sender: TAstaBaseClientDataSet);
    procedure cxCodiceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDescrizioneKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CompostoBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure TPrenoBeforePost(DataSet: TDataSet);
    procedure cxCognomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxRicCognomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid1DBTableView1DataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure tbSelezioneNewRecord(DataSet: TDataSet);
    procedure cxMedicoBaseSearch(Sender: TObject; var trovato: Integer;
      var codice: Variant; const cerca: String);
    procedure cxCodicePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxCodiceEsenzionePropertiesCloseUp(Sender: TObject);
    procedure cxProvenienzaPropertiesCloseUp(Sender: TObject);
    procedure aCercaAgePrenoExecute(Sender: TObject);
    procedure aCercaAgePrenoUpdate(Sender: TObject);
    procedure cxDescrizionePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure aRistampaExecute(Sender: TObject);
    procedure aRistampaUpdate(Sender: TObject);
    procedure aCancellaPrenoExecute(Sender: TObject);
    procedure aCancellaPrenoUpdate(Sender: TObject);
    procedure cxGridRicPrenoEsamiDataControllerDataModeControllerDetailFirst(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
    function cxGridRicPrenoEsamiDataControllerDataModeControllerDetailIsCurrentQuery(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant): Boolean;
    procedure cxGridPrestazioniESENTEPropertiesEditValueChanged(
      Sender: TObject);
    procedure aCercaSpazioExecute(Sender: TObject);
    procedure aCercaSpazioUpdate(Sender: TObject);
    procedure cxRepGridEsenzioniFocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure syFormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDataAgendaCloseUp(Sender: TObject);
    procedure ImpegnativeBeforeDelete(DataSet: TDataSet);
    procedure ScegliGiornoExecute(Sender: TObject);
    procedure aTuttoVideoExecute(Sender: TObject);
    procedure altriPresidiExecute(Sender: TObject);
    procedure altriPresidiUpdate(Sender: TObject);
    procedure cxCodiceKeyPress(Sender: TObject; var Key: Char);
    procedure cxDescrizioneKeyPress(Sender: TObject; var Key: Char);
    procedure StoricoExecute(Sender: TObject);
    procedure StoricoUpdate(Sender: TObject);
    procedure aAltraPrenotazioneExecute(Sender: TObject);
    procedure cxMedicoBaseNotInList(Sender: TObject; LookupTable: TDataSet;
      NewValue: String; var Accept: Boolean; var codice: Variant);
    procedure cxCognomePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxDataImpegnativaPropertiesEditValueChanged(Sender: TObject);
    procedure RichiestiBeforeInsert(DataSet: TDataSet);
    procedure MaterialiNewRecord(DataSet: TDataSet);
    procedure cxGridPrestazioniRADIOFARMACOPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure RichiestiBeforeDelete(DataSet: TDataSet);
    procedure RichiestiBeforePost(DataSet: TDataSet);
    procedure cxDataImpegnativaPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure aTesseraSanitariaExecute(Sender: TObject);
    procedure cxAccessionNumberKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aTesseraSanitariaUpdate(Sender: TObject);
    procedure LkDiagxWk_oldBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure dxSingolaDiagnClick(Sender: TObject);
    procedure dxSubDiagCloseUp(Sender: TObject);
    procedure dxGiorniPropertiesEditValueChanged(Sender: TObject);
    procedure cxNumeroImpegnativaMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure aTempiAttesaExecute(Sender: TObject);
    procedure cxPageControlPageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure cxEsamiDaCercarePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDescrTempiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDescrTempiKeyPress(Sender: TObject; var Key: Char);
    procedure cxEsamiDaCercareKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxEsamiDaCercareKeyPress(Sender: TObject; var Key: Char);
    procedure aCalcolaTempiExecute(Sender: TObject);
    procedure aCalcolaTempiUpdate(Sender: TObject);
    procedure aStampaTempiExecute(Sender: TObject);
    procedure aStampaTempiUpdate(Sender: TObject);
    procedure dxAgendeInterniClick(Sender: TObject);
    procedure aNuovaPrenotazioneUpdate(Sender: TObject);
    procedure cxNomeEnter(Sender: TObject);
    procedure cxNomeExit(Sender: TObject);
    procedure cxSelezDatePropertiesCloseUp(Sender: TObject);
    procedure qRicettaInfBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure actRicercaUpdate(Sender: TObject);
    procedure aTempiAttesaUpdate(Sender: TObject);
    procedure cxRicNomeKeyPress(Sender: TObject; var Key: Char);
    procedure cxPersonalizzaClick(Sender: TObject);
    procedure ResetFormClick(Sender: TObject);
    procedure TPrenoOSP_RICHChange(Sender: TField);
    procedure RichSpecxPrestNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    FPersModified: Boolean;
//    FDiagnSelezionate: Boolean;
    FCodiceDiag: string;
    FBollo: Double;
    prgriga: integer;
    FRicercaFatta: boolean;
    FLookupMedInt: TStrings;
    FLookupMedEst: TStrings;
{$IFNDEF MEDICORNER}
    FAltrePreno: TFAltrePreno;
{$ENDIF}
    LettoConPistola: boolean;
    FInRegistrazione: boolean;
    FInRicalcolo: boolean;
    Esami: TAstaCustomDataset;
    FListaRich: TSyFrameList;
    FCutPaste: TFCutPaste;
    vbDiagn: TvbDiagnList;
    vSbItem: TList;
    FxAltriPresidi: integer;
    procedure CancellaSpecxPrest(prg: Integer);
    function LoadPrestazione(ds: TAstaCustomDataset; pgrprest: integer): boolean;
    procedure SelezionaDiagnostiche(const lista: string);
    procedure SelezioneSingola;
    procedure Inizializza;
    procedure Apertura;
    procedure ControllaImpegnativa;
    procedure ScegliFinestra(Key: integer);
    procedure PostValore(var Message: TMessage); message SY_CHECKCHANGED;
    procedure LeggiBarCode(var Message: TMessage); message SY_READBARCODE;
    procedure LeggiTessera(var Message: TMessage); message SY_READTESSERA;
    procedure AnnullaPreno;
    procedure ChangeGiorni(var Message: TMessage); message SY_CHANGECALENDARDAY;
    procedure ResizeAll(var Message: TMessage); message SY_RESIZEALL;
    procedure SYKillRich(var Message: TMessage); message SY_KILLRICH;
    procedure SY2KillRich(var Message: TMessage); message SY2_KILLRICH;
    procedure ApriCutPaste(var Message: TMessage); message SY_APRICUTPASTE;
    procedure ChiudiCutPaste(var Message: TMessage); message SY_CHIUDICUTPASTE;
    procedure ChiudiAltrePreno(var Message: TMessage); message SY_CHIUDIALTREPRENO;
    procedure RefreshCalendari(var Message: TMessage); message SY_REFRESHCALENDARI;
    procedure msgCercaInCalendari(var Message: TMessage); message SY_CERCAINCALENDARI;
    procedure ChangeDisplayUnit(var Message: TMessage); message SY_CHANGEDISPLAYUNIT;
    procedure CancellaDettaglio(var Message: TMessage); message SY_CANCDETTCUTPASTE;
    procedure SyRiprenota(var Message: TMessage); message SY_RIPRENOTA;
    procedure SyRiapriPreno(var Message: TMessage); message SY_RIAPRIPRENO;
    procedure ApriAltrePreno(var Message: TMessage); message SY_APRIALTREPRENO;
    {
    function AssegnaFiltro(xpkcodicirad: integer; const xdescrizione: string; xdurata: integer): boolean;
    procedure CaricaTabella;
}
{$IFNDEF CON_PRENOTEST}
    procedure CaricaTabDiagn(xData: TDateTime; xdiag: integer);
{$ENDIF}
    procedure EditCodici(prenota: boolean);
    procedure dxSelezDiagn(Sender: TObject);
    function AssegnaDiagn(const xstrservizi: string): boolean;
    procedure SettaTutti;
    procedure PrenotaCodici(const codici,righe,titolo: string; nr_esami,durata,slot,xpkrep: integer);
    procedure RicalcolaTotale;
    procedure AssegnaEsenzione;
    procedure CercoCodice(tpOrd: TtpOrd);
    procedure CaricaCodice(const cod: string); overload;
    procedure CaricaCodice(xRad: TFRicRadiologiaPreno); overload;
    procedure PuntaDiagnostica;
//    procedure SettaBottone(xserv: integer; cosa: boolean);
    procedure FiltraQuery(const cosa: string);
    procedure CodicePress;
    procedure DescrPress;
    procedure AbilitaCampi;
    function  InRegistrazione: boolean;
    procedure PuntaPazientePrenotato(ricerca: boolean);
    procedure cxMaggPropertiesEditValueChanged(Sender: TObject);
    procedure CodicePressTempi;
    procedure DescrPressTempi;
    procedure CercoCodiceTempi(tpOrd: TtpOrd);
    procedure CaricaCodiceTempi(const cod: string); overload;
    procedure CaricaCodiceTempi(xRad: TFRicRadiologiaPreno); overload;
  protected
    function GetCanClose: Boolean; override;
  public
    { Public declarations }
    xCF: string;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure DoShow; override;
    procedure AzzeraPaziente;
    procedure RicaricaPaziente;
    function CaricaToolBar: TdxBars; override;
    procedure CercaInCalendari(Prestazioni: TAstaClientDataset; xdiag: integer); override;
    procedure SendPortDataToForm(const s: string; lungh: integer); override;
    function IsFormReady: boolean; override;
    procedure DoOnActivate; override;
  end;

var
  FPrenotaNew: TFPrenotaNew;

implementation

uses
  Windows, BaseForm, Variants, Msgdlgs, Sysutils, Anagrafica, dateutils, Types,
  Planner, AstaDBTypes, StrUtils, dxPrnDlg, Prenobasediagn, Prenobasetest, math,
  cxMemo, RicAssistito, StampaAvvisi, RicAssPreno, RicMedici, SelezSpec,
  CercaBarCode,
{$IFNDEF MEDICORNER}
  AltriPresidi,
  Radiofarmaco,
  RicMedInt,   
{$ENDIF}
  RicercaTessera,
  ConfermaCancella,
  DMCommon, dxLayoutCustomizeForm;


{$R *.DFM}


function TFPrenotaNew.CaricaToolBar: TdxBars;
begin
  result := dxBarManager1.Bars;
end;


{ Richiama la form per impostare i codici da cercare }
procedure TFPrenotaNew.EditCodici(prenota: boolean);
var
	data_preno: TDateTime;
  k,j,i,x,m,temp,z: integer;
  inizio,fine: TDateTime;
  trovato: boolean;
  xcod,xriga: string;
  dAperte: Array of Array of integer;
  dTrovate: Array of Array of integer;
  dRiga: Array of integer;
  durata: Array of array of integer;
  dDurata: array of integer;
  dCodici: Array of string;
  dCodRic: Array of Array of Array of string;
  dCodRiga: Array of Array of Array of integer;
  card_trovata,rep: integer;
  errore: boolean;
  initDate: TDateTime;
  xpkrep: integer;
  xtitolo: string;
  qq: integer;
  diversi,card,quante,volte: integer;
  dCard: Array of integer;
  dProva: Array of Array of integer;
  intRicerca: integer;

  function UgualeA(x,i: integer): boolean;
  var
    j: integer;
  begin
     result := false;
     j:=i-1;
     while not result and (j>=Low(dTrovate[x])) do
     begin
       result := (dTrovate[x][j]=dTrovate[x][i]);
       dec(j);
     end;
  end;

  function Cardinalita(xmin: integer): integer;
  var
    i: integer;
  begin
    result := 1;
    for i:=xmin to High(dAperte) do
        result := result * Length(dAperte[i]);
  end;

begin

  if dxTuttoVideo.Down then
  begin
    dxDockPanel1.Visible := false;
  end;

	tbSelezione.DisableControls;
  try
     tbSelezione.Empty;

    // -- raggruppo esami per diagnostiche
     Richiesti.First;
//     durata := 0;

     // -- raggruppo esami per diagnostiche
     z := 0;
     for j:=0 to Richiesti.RecordCount-1 do
     begin
//       if not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) and (not FDMCommon.LeggiPostoLavoroCODICIRAD_FK.IsNull) and (FDMCommon.LeggiPostoLavoroCODICIRAD_FK.AsInteger<>RichiestiCODICIRAD_FK.AsInteger) then
       begin

         SetLength(dAperte,z+1);
         SetLength(dCodici,z+1);
         SetLength(dDurata,z+1);
         SetLength(dRiga,z+1);

         dRiga[z] := RichiestiPROGRESSIVO_RIGA.AsInteger;
         dDurata[z] := RichiestiDURATA.AsInteger;
         dCodici[z] := RichiestiCODICE.AsString;

         FDMCommon.Possibili.Filtered := false;
         if FDMCommon.IsUserCup then
           FDMCommon.Possibili.Filter := format('CODICE = ''%s'' AND DURATA>0 AND PRENOTA=1 AND TIPOPRENO IN (''E'',''T'')',[RichiestiCODICE.AsString])
         else
           FDMCommon.Possibili.Filter := format('CODICE = ''%s'' AND DURATA>0 AND PRENOTA=1',[RichiestiCODICE.AsString]);
         FDMCommon.Possibili.Filtered := true;

         for x:=0 to FDMCommon.Possibili.recordcount-1 do
         begin
           SetLength(dAperte[z],x+1);
           dAperte[z][High(dAperte[z])] := FDMCommon.PossibiliSERVIZI_FK.AsInteger;
           FDMCommon.Possibili.Next;
         end;

         inc(z);
       end;
       Richiesti.Next;
     end;

     card := Cardinalita(Low(dAperte));

     SetLength(dTrovate,card);
     for i:=0 to card-1 do
        SetLength(dTrovate[i],Length(dAperte));

    for i:=Low(dAperte) to High(dAperte) do
    begin
       quante := Length(dAperte[i]);
       z:=0;
       while z<card do
       begin
           if i=High(dAperte) then
           begin
              j := (z mod quante);
              dTrovate[z][i] := dAperte[i][j];
              inc(z);
           end
           else begin
              volte := Cardinalita(i+1);
              for m:=1 to quante do
                for x:=1 to volte do
                begin
                    dTrovate[z][i] := dAperte[i][m-1];
                    inc(z);
                end;
           end;
       end;
    end;

    SetLength(dCard,card);
    SetLength(dProva,card);
    SetLength(dCodRic,card);
    SetLength(dCodRiga,card);
    SetLength(durata,card);
    for x:=0 to card-1 do
    begin
      diversi := 1;
      for i:=2 to Length(dAperte) do
        if not UgualeA(x,i-1) then
           inc(diversi);
      dCard[x] := diversi;
    end;

    card := 1;
//    quante := 0;
    card_trovata := -1;
    while (card_trovata<0) and (card<=Length(dAperte)) {and (quante<=2)} do
    begin
      for i:=Low(dCard) to High(dCard) do
      if dCard[i]=card then
      begin
        card_trovata := i;
        m:=Low(dTrovate[i]);
        repeat
            trovato := false;
            z:=Low(dCard);
            repeat
                if Length(dProva[z])>0 then
                begin
                   trovato := true;
                   for x:=Low(dProva[z]) to High(dProva[z]) do
                       trovato := trovato and (dProva[z][x]=dTrovate[i][m]);
                end;
                inc(z);
            until trovato or (z>High(dCard));
            inc(m);
        until trovato or (m>High(dTrovate[i]));
        if not trovato then
        begin
          for m:=Low(dTrovate[i]) to High(dTrovate[i]) do
          begin
             trovato := false;
    {JRT 5375}
             if not cxNoInsieme.Checked  or (High(dTrovate[i])=1) then
             begin
    {}
                 z:=Low(dProva[i]);
                 while (z<=High(dProva[i])) and not trovato do
                 begin
                  trovato := (dTrovate[i][m]=dProva[i][z]);
                  if trovato then
                  begin
                     SetLength(dCodRic[i][z],Length(dCodRic[i][z])+1);
                     dCodRic[i][z][High(dCodRic[i][z])] := dCodici[m];
                     SetLength(dCodRiga[i][z],Length(dCodRiga[i][z])+1);
                     dCodRiga[i][z][High(dCodRiga[i][z])] := dRiga[m];
                     durata[i][z] := durata[i][z] + dDurata[m];
                  end
                  else
                     inc(z);
                 end;
    {JRT 5375}
             end
             else
             begin
                  z := High(dProva[i]);
                  inc(z);
             end;
    {}
             if not trovato then
             begin
                 SetLength(dProva[i],Length(dProva[i])+1);
                 SetLength(dCodRic[i],Length(dCodRic[i])+1);
                 SetLength(dCodRiga[i],Length(dCodRiga[i])+1);
                 SetLength(durata[i],Length(durata[i])+1);
                 dProva[i][High(dProva[i])] := dTrovate[i][m];
                 SetLength(dCodRic[i][z],Length(dCodRic[i][z])+1);
                 SetLength(dCodRiga[i][z],Length(dCodRiga[i][z])+1);
                 dCodRic[i][z][High(dCodRic[i][z])] := dCodici[m];
                 dCodRiga[i][z][High(dCodRiga[i][z])] := dRiga[m];
                 durata[i][High(durata[i])] := dDurata[m];
             end;
          end;
        end;
        if card_trovata>=0 then
           break;
      end;
      inc(card);
      if card_trovata>=0 then
         break;
    end;

    if (card_trovata<0) then
    begin
         MsgDlg(RS_CodiciNonInAgende,'', ktWarning, [kbOK]);
         errore := true;
    end;

    if errore then
       exit;

     initDate := cxDataRicerca.Date;
     xpkrep := gblpkrep;
     xtitolo := FDMCommon.LeggiPostoLavoroDESCREPARTO.AsString;
{$IFNDEF MEDICORNER}
     if dxCupTelefonico.down then
     begin

        FAltriPresidi := TFAltriPresidi.Create(nil);
        try
           FAltriPresidi.fBloccate := false;
           FAltriPresidi.fAttivita := TPrenoTIPO_ATTIVITA.AsString;
           FAltriPresidi.fOspRich  := TPrenoOSP_RICH.AsString;
           FAltriPresidi.fAgendeEsclusive := (TPrenoAGENDE_ESCLUSIVE.AsInteger=1);
           FAltriPresidi.fAncheInterni := dxAgendeInterni.Down;
           FAltriPresidi.xday := cxDataRicerca.Date;
           FAltriPresidi.xdal := cxDataRicerca.Date;
           FAltriPresidi.xpkrep := gblpkrep;
           FAltriPresidi.xIntervallo := dxIntervallo.EditValue;
           FAltriPresidi.fSoloAltri := false;

             card := card_trovata;
             for m:=Low(dProva[card]) to High(dProva[card]) do
             begin

                 for z:=1 to Length(dCodRic[card][m]) do
                    xcod := xcod + dCodRic[card][m][z-1] + ',';

                 if xcod<>'' then
                    xcod := Copy(xcod,1,Length(xcod)-1);

               FAltriPresidi.vCodici.Add(xcod);
               FAltriPresidi.vdurata.Add(IntToStr(durata[card][m]));

           end;

           errore := (FAltriPresidi.ShowModal<>mrOk);
           if not errore then
           begin
              initDate := FAltriPresidi.tbSelezioneDATA_PRENO.AsDateTime;
              xpkrep := FAltriPresidi.tbSelezioneREPARTI_FK.AsInteger;
              xtitolo := FAltriPresidi.tbSelezioneDESC_REPARTO.AsString;
           end;

        finally
           FAltriPresidi.Free;
           FAltriPresidi := nil;
        end;

     end;

     if errore then
        exit;
{$ENDIF}
     card := card_trovata;

     fine := IncDay(initDate,dxIntervallo.EditValue);
     for m:=Low(dProva[card]) to High(dProva[card]) do
     begin

       inizio := initDate;
      { Cerco il primo giorno libero per il primo esame... }
       xcod := '';
       xriga := '';
       qq := 0;

       for z:=1 to Length(dCodRic[card][m]) do
       begin
          xcod := xcod + dCodRic[card][m][z-1] + ',';
          xriga := xriga + IntToStr(dCodRiga[card][m][z-1]) + ',';
          inc(qq);
       end;

       // -- tolgo l'ultima virgola
       if xcod<>'' then
       begin
          xcod := Copy(xcod,1,Length(xcod)-1);
          xriga := Copy(xriga,1,Length(xriga)-1);
       end;

       QyLkServizi.Locate('PKSERVIZI',dProva[card][m],[]);

       PrenotaCodici(xcod, xriga, xtitolo, qq, durata[card][m], QyLkServiziSLOT_STANDARD.AsInteger, xpkrep);

       QyGiornate.Close;
       QyGiornate.Parambyname('xreparti_fk').AsInteger := xpkrep;

       QyGiornate.Parambyname('xcodici').AsString := xcod;
       QyGiornate.Parambyname('xqq').AsInteger := qq;

       if (FDMCommon.LeggiPostoLavoroCONDIVIDI_AGENDE.AsInteger=0) then
          QyGiornate.Parambyname('xsolo_rep').AsInteger := xpkrep
       else
          QyGiornate.Parambyname('xsolo_rep').Clear;

       intRicerca := dxIntervallo.EditValue;
       repeat
         fine := IncDay(inizio,dxIntervallo.EditValue);
         QyGiornate.Parambyname('xdataini').AsDateTime := inizio;
         QyGiornate.Parambyname('xdatafine').AsDateTime := fine;
         QyGiornate.Parambyname('xdurata').AsInteger := durata[card][m];
         QyGiornate.syRefresh;
         inizio := fine;
       until not QyGiornate.IsEmpty or (MsgDlg(format(RS_Gene_NessunaAgenda,[intRicerca,intRicerca]),'', ktWarning, [kbYes,kbNo])=mrNo);

       if QyGiornate.IsEmpty then
       begin
          FListaRich.Clear;
          exit;
       end;

        QyGiornate.First;
        while not QyGiornate.EOF do
        begin
           data_preno := QyGiornateDATA_PRENO.AsDateTime;
           if tbSelezione.Locate('DATA_PRENO', data_preno, []) then
           begin
              tbSelezione.Edit;
              tbSelezioneNUM_POSTI.AsInteger := tbSelezioneNUM_POSTI.AsInteger + 1;
           end
           else
           begin
              tbSelezione.Append;
              tbSelezioneDATA_PRENO.AsDateTime := data_preno;
              tbSelezioneGG_SET.AsString := ShortDayNames[DayOfWeek(data_preno)];
              tbSelezioneNUM_POSTI.AsInteger := 1;
           end;
           tbSelezione.Post;

           QyGiornate.Next;
        end;

     end;

     tbSelezione.First;
     trovato := false;
     i := FListaRich.Count;
     data_preno := tbSelezioneDATA_PRENO.AsDateTime;
     repeat
       if tbSelezione.Locate('NUM_POSTI',i,[]) then
       begin
          data_preno := tbSelezioneDATA_PRENO.AsDateTime;
          trovato := true;
       end;
       dec(i);
     until trovato or (i<=0);
     if trovato then
        cxSelezData.EditValue := data_preno;

  finally
     tbSelezione.EnableControls;
  end;


  if not tbSelezione.IsEmpty then
  begin

     if FListaRich.Count>0 then
     begin

        if prenota then
        begin
          TPreno.Edit;
          Impegnative.close;

          if not TPrenoIMPEGNATIVE_FK.IsNull then
          begin
            Impegnative.Parambyname('pkimpegnative').AsInteger := TPrenoIMPEGNATIVE_FK.AsInteger;
            Impegnative.open;
            Impegnative.Edit;
          end
          else begin
            Impegnative.opennofetch;
            Impegnative.Insert;
          end;

           ImpegnativeNR_IMPEGNATIVA.AsString := TPrenoNR_IMPEGNATIVA.AsString;
           ImpegnativeASSISTIBILI_FK.AsInteger := TPrenoPKASSISTIBILI.AsInteger;
           ImpegnativeDATA_PRESCRIZIONE.AsDateTime := TPrenoDATA_PRESCRIZIONE.AsDateTime;
           ImpegnativeTES_IDENT.AsString := TPrenoTES_IDENT.AsString;
           ImpegnativeUSER_ID.AsInteger := gblCodUtente;
           ImpegnativeREPARTI_FK.AsInteger := xpkrep;
           ImpegnativeIMPORTO_TOTALE.AsFloat := TPrenoIMPORTO_TOTALE.AsFloat;
           ImpegnativeIMPORTO_PAGATO.AsFloat := TPrenoIMPORTO_PAGATO.AsFloat;
           ImpegnativeIMPORTO_QUOTA.AsFloat := TPrenoIMPORTO_QUOTA.asFloat;
           ImpegnativeTIPO_ATTIVITA_FK.AsString := TPrenoTIPO_ATTIVITA.AsString;
           ImpegnativeOSP_RICH.AsString := TPrenoOSP_RICH.AsString;
//           ImpegnativeTIPO_ESENZIONE.AsInteger := TPrenoTIPO_ESENZIONE.AsInteger;
           ImpegnativeMED_BASE.AsString := TPrenoMED_BASE.AsString;
           ImpegnativeTELEFONO.AsString := TPrenoTELEFONO.AsString;
           ImpegnativePROVENIENZA.AsString := 'E';
           ImpegnativeSTATO.AsInteger := 1;
           ImpegnativeURGENZA.AsInteger := TPrenoURGENZA.AsInteger;
           ImpegnativeLEG_CODICE.AsString := TPrenoLEG_CODICE.AsString;
           if not TPrenoREPARTO_RICH_FK.IsNull then
              ImpegnativeREPARTO_RICH_FK.AsInteger := TPrenoREPARTO_RICH_FK.AsInteger;
           if not TPrenoCOD_MED_INT.IsNull then
              ImpegnativeCOD_MED_INT.AsInteger := TPrenoCOD_MED_INT.AsInteger;
           ImpegnativeTIPO_PRENO.AsInteger := TPrenoTIPO_PRENO.AsInteger;
           if (FDMCommon.LeggiPostoLavoroCHK_DATI_IMPEGNATIVA.AsInteger=1) then
           begin
              {JRT 497}
              if not TPrenoDATA_IMPEGNATIVA.IsNull then
                 ImpegnativeDATA_IMPEGNATIVA.AsDateTime := TPrenoDATA_IMPEGNATIVA.AsDateTime;
              if not TPrenoTIPO_ACCESSO_FK.IsNull then
                 ImpegnativeTIPO_ACCESSO_FK.AsString := TPrenoTIPO_ACCESSO_FK.AsString;
              if not TPrenoTIPO_RICETTA_FK.IsNull then
                 ImpegnativeTIPO_RICETTA_FK.AsString := TPrenoTIPO_RICETTA_FK.AsString;
              {JRT 3126}
              if not TPrenoRICETTA_INF.IsNull then
                 ImpegnativeRICETTA_INF.AsInteger := TPrenoRICETTA_INF.AsInteger;
           end;

           Impegnative.Post;
           TPrenoIMPEGNATIVE_FK.AsInteger := ImpegnativePKIMPEGNATIVE.AsInteger;
           FInRegistrazione := true;

           errore := false;
           if (TPrenoIMP_OBBLIG.AsInteger in [1,3]) and not TPrenoNR_IMPEGNATIVA.IsNull then  // (gblTipo_Preno=1)
            try
               with qVerificaNumero do
               begin
                  Close;
                  Parambyname('NR_IMPEGNATIVA').AsString := TPrenoNR_IMPEGNATIVA.AsString;
                  Parambyname('PKIMPEGNATIVE').AsInteger := TPrenoIMPEGNATIVE_FK.AsInteger;
                  Parambyname('REPARTI_FK').AsInteger := gblpkrep;
                  Open;
               end;
               if not qVerificaNumero.IsEmpty then
               begin
                  errore := true;
                  msgDlg(format(RS_TIC_EsisteImpegnat,[qVerificaNumeroNOMINATIVO.AsString,qVerificaNumeroPKIMPEGNATIVE.AsInteger]),
                   '', ktWarning, [kbOK], dfFirst);
               end;

            finally
               qVerificaNumero.Close;
            end;

       end;

        if errore then
       begin
          FListaRich.Clear;
//          exit;
       end;

       for z:=0 to FListaRich.Count-1 do
       begin

         repeat

           FListaRich[z].xDay := data_preno;
           FListaRich[z].Sincronizza(data_preno,false);
           FListaRich[z].RefreshCalendari;

           trovato := FListaRich[z].CercaInCalendari(durata[card][z]);

           if not trovato then
           begin
                 data_preno := IncDay(data_preno, dxIntervallo.EditValue);
                 if data_preno>=fine then
                 begin
                    MsgDlg(RS_Gene_NessunaAgenda2,'', ktWarning, [kbOk]);
                    FListaRich.Clear;
                    trovato := true;
                 end;
           end;

         until trovato;

         if FListaRich.Count>0 then
         begin
            if prenota then
            begin
              rep := FListaRich[z].RegistraCaricamento;
              if rep<>ImpegnativeREPARTI_FK.AsInteger then
              begin
                Impegnative.Edit;
                ImpegnativeREPARTI_FK.AsInteger := rep;
                Impegnative.Post;
              end;
            end
            else begin
               FListaRich[z].RefreshCalendari;
               FListaRich[z].SelectActualCells;
            end;
         end;

       end;

       MassimizzaTutte.Execute;
       if FListaRich.Count>0 then
       begin
         for z:=0 to FListaRich.Count-1 do
             FListaRich[z].xSetFocus;
         FInRegistrazione := true;
       end
       else begin
          // -- cancello eventuale impegnativa creata..
          if not TPrenoIMPEGNATIVE_FK.IsNull and not Impegnative.IsEmpty then
          begin
             Impegnative.Delete;
          end;
       end;

     end;

  end;

end;


procedure TFPrenotaNew.ResizeAll(var Message: TMessage);
var
  quanti,totale,z: integer;
begin

   totale := Panel3.Height;

   quanti := 0;
   for z:=0 to FListaRich.Count-1 do
       if FListaRich[z].Minimized and (FListaRich.Count>1) then
       begin
          totale := totale - FListaRich[z].Height;
          inc(quanti);
       end;

   for z:=0 to FListaRich.Count-1 do
       if not FListaRich[z].Minimized or (FListaRich.Count=1) then
          FListaRich[z].FrameResize(totale div (FListaRich.Count-quanti),Panel3.Width);

end;


{ Assegna i valori alla tabella di filtro }
procedure TFPrenotaNew.PrenotaCodici(const codici,righe,titolo: string; nr_esami,durata,slot,xpkrep: integer);
var
  Item: TPrenoTest;
  fp: TFrameProperty;
  i: integer;
begin

   Item := TPrenoTest.Create(nil);
   Item.Parent := Panel3;
   Item.InternalIndex := FListaRich.Count;
   FListaRich.Add(Item);

//   fp.vTIPO := Richiesti.Fieldbyname('pkcodicirad').AsInteger;
   fp.vCodici := codici;
   fp.NrEsami := nr_esami;
   fp.vRighe := righe;

//   fp.Titolo := desccodici;
   fp.Titolo := titolo;

{
   fp.Titolo := Richiesti.Fieldbyname('codice').AsString + ' - ' +
                Richiesti.Fieldbyname('descrizione').AsString + ' ('+
                descattivita + ')';
}
//   fp.vReparti := xpkrep;
   fp.vDurata := durata;
   fp.NumberOfDays := dxGiorni.EditValue;
   fp.ZoomValue := slot;
//   fp.ZoomPos := dxPeriodo.ItemIndex+1;
   for i:=1 to MAXPOSZOOM do
      if dZoom[i]>=fp.ZoomValue then
      begin
         fp.ZoomPos := i;
         break;
      end;
   if fp.ZoomPos>0 then
      dxPeriodo.ItemIndex := fp.ZoomPos-1;
   fp.Preno := TPreno;
   fp.Richiesti := Richiesti;
   fp.Materiali := Materiali;
   fp.RichSpecxPrest := RichSpecxPrest;
   if xpkrep<>gblpkrep then
      fp.AltriPresidi := 2
   else
      fp.AltriPresidi := FxAltriPresidi;
   fp.xIntervallo := dxIntervallo.EditValue;
//   fp.Tipo_attivita := TPrenoTIPO_ATTIVITA.AsString;

   Item.xCambiaSomministrazione := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);
   Item.fConEsami := dxConEsami.Down;
   Item.fBloccate := false; //dxBloccati.Down;
//   if TPrenoTIPO_ATTIVITA.AsString='D' then
   begin
     Item.fAttivita := TPrenoTIPO_ATTIVITA.AsString;
     Item.fOspRich := TPrenoOSP_RICH.AsString;
   end;
   Item.fAgendeEsclusive := (TPrenoAGENDE_ESCLUSIVE.AsInteger=1);
   Item.fSoloLibere := false; // dxLibere.Down;
   Item.fCopiaVisibile := true; //false;
   Item.fAncheInterni := dxAgendeInterni.Down;
   Item.ApriClient(dxBarManager1,fp);
{
   if multifiltro then
      MassimizzaTutte.Execute;
}

end;


{ Azzera il buffer con i dati del paziente }
procedure TFPrenotaNew.AzzeraPaziente;
begin

  if not dxDockPanel1.Visible then
     dxDockPanel1.Visible := true;

  if (TPreno.State in dsEditModes) then
     TPreno.Cancel;

  TPreno.Empty;
  TPreno.Append;

  FDMCommon.AstaCut.Empty;
  FDMCommon.AstaDett.Empty;

  if (Richiesti.State in dsEditModes) then
    Richiesti.Cancel;
  Richiesti.Empty;
  RichSpecxPrest.Empty;
  Materiali.Empty;
  cxCodice.Text := '';

  QyRicPreno.syRefresh;

  Esami.Filtered := false;
  Esami.Filter := '';

  if FDMCommon.IsUserCup then
  begin
     dxAgendeInterni.Visible := ivNever;
  end;

  if TPrenoOSP_RICH.AsString='' then
  begin
    if cxProvenienza.CanFocus then
       cxProvenienza.SetFocus;
  end
  else begin
    if cxCognome.CanFocus then
       cxCognome.SetFocus;
  end;
  
  FBollo := FDMCommon.Param_TicketIMPORTO_BOLLO.asFloat;

  dxLayoutGroupMedico.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5);
  dxLayoutControlQuota.Visible := (FDMCommon.Param_TicketCODICI_CUP.AsInteger=1) and (FBollo>0) and (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5);
  cxMagg.Checked := dxLayoutControlQuota.Visible;

  dxAgendeInterni.Down := false;
  cxGridPrestazioni.DataController.Summary.FooterSummaryValues[0] := 0;

end;


procedure TFPrenotaNew.RicaricaPaziente;
begin

  if not dxDockPanel1.Visible then
     dxDockPanel1.Visible := true;

  if (TPreno.State in dsEditModes) then
     TPreno.Cancel;

  TPreno.Empty;
  TPreno.Append;

  FDMCommon.AstaCut.Empty;
  FDMCommon.AstaDett.Empty;

  if (Richiesti.State in dsEditModes) then
    Richiesti.Cancel;
  Richiesti.Empty;
  RichSpecxPrest.Empty;
  Materiali.Empty;
  cxCodice.Text := '';

  QyRicPreno.syRefresh;

  Esami.Filtered := false;
  Esami.Filter := '';

  if FDMCommon.IsUserCup then
  begin
     dxAgendeInterni.Visible := ivNever;
  end;

  if cxProvenienza.CanFocus then
     cxProvenienza.SetFocus;

end;

procedure TFPrenotaNew.DoShow;
begin

  inherited;

  FDMCommon.edrepCODICEESAME.Properties.OnButtonClick := cxCodicePropertiesButtonClick;

end;

constructor TFPrenotaNew.Create(AOwner: TComponent);
begin

  inherited;

  FDMCommon.CaricaLayout(Name,dxLayoutControl1);

  FPersModified := False;
//  FDiagnSelezionate := False;
  prgriga := 0;
  sTipoRicetta.DataSet := FDMCommon.LkTipoRicetta;
  sTipoAccesso.DataSet := FDMCommon.LkTipoAccesso;

  case FDMCommon.LeggiPostoLavoroCONDIVIDI_AGENDE.AsInteger of
  0: FxAltriPresidi := 0;
1,2: FxAltriPresidi := 2;  // permette solo ricerca "secondaria" negli altri presidi
  end;
  vSbItem := TList.Create;

  vbDiagn := TvbDiagnList.Create;
  vbDiagn.ItemLinks := dxSubDiag;
  FLookupMedInt := TStringList.Create;
  FLookupMedEst := TStringList.Create;
  FLookupMedInt.Assign(MedInterni.SQL);
  FLookupMedEst.Assign(MedBase.SQL);

//  Esami := TAstaCustomDataset.Create(nil);
  FListaRich := TsyFrameList.Create;

  cxPageControl.HideTabs := true;

  sTipoRicetta.DataSet := FDMCommon.LkTipoRicetta;
  sTipoAccesso.DataSet := FDMCommon.LkTipoAccesso;

  sLkEsenzione.DataSet := FDMCommon.LkEsenzione;
  sLkOspedali.DataSet  := FDMCommon.LkOspedali;
  sEsami.DataSet       := FDMCommon.Esami;

  FDMCommon.LkOspedali.Filter := 'TIPO_ACCESSO='+#39+'E'+#39;
  FDMCommon.LkOspedali.Filtered := true;

  QyStorEsami.Parambyname('triage_fk').AsInteger := -1;
  QyStorEsami.open;

  Materiali.open;
  Richiesti.open;
  RichSpecxPrest.Open;
  tbSelezione.Open;
  TPreno.open;
  FInRegistrazione := false;

{$IFNDEF MEDICORNER}
  FAltrePreno := nil;
{$ENDIF}
  FCutPaste := nil;
  aRicercaPaziente.Caption := '';

  FDMCommon.ApriEsamiPreno;
  Esami := FDMCommon.EsamiPreno;

  FInRicalcolo := false;

  cxDataRicerca.Date := IncDay(Date(),1); // Date(); 
  dxDataAgenda.EditValue := Date();
  cxGridPrestazioniNUMERO_PRESTAZIONE.Visible := (FDMCommon.LeggiPostoLavoroCHECK_NO_PRESTMULT.AsInteger=0);
  cxGridPrestazioniIMPORTO.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  cxGridPrestazioniESENTE.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  cxTabTempiDiAttesa.TabVisible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);

  if FDMCommon.IsUserCup then
  begin
     dxAgendeInterni.Visible := ivNever;
  end;

  dxGroupNumeroImpegnativa.Visible := (FDMCommon.LeggiPostoLavoroCHK_DATI_IMPEGNATIVA.AsInteger=1);
  dxLayoutCodEsenzione.Visible := (FDMCommon.LeggiPostoLavoroCHK_DATI_IMPEGNATIVA.AsInteger=1);
  dxLayoutDescEsenzione.Visible := (FDMCommon.LeggiPostoLavoroCHK_DATI_IMPEGNATIVA.AsInteger=1);
  dxGroupDataImpegnativa.Visible := (FDMCommon.LeggiPostoLavoroCHK_DATI_IMPEGNATIVA.AsInteger=1);
  dxLayoutControlRicercaTessera.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  if dxGroupDataImpegnativa.Visible then
  begin
    dxLayoutDataImpegnativa.Visible := (FDMCommon.LeggiPostoLavoroCHK_DATA_IMPEGNATIVA.AsInteger>=1);
    dxLayoutTipoAccesso.Visible := (FDMCommon.LeggiPostoLavoroCHK_TIPO_ACCESSO.AsInteger>=1);
    dxLayoutTipoRicetta.Visible := (FDMCommon.LeggiPostoLavoroCHK_TIPO_RICETTA.AsInteger>=1);
    dxLayoutCompilazione.Visible := (FDMCommon.LeggiPostoLavoroCHK_COMPILAZIONE.AsInteger>=1);
  end;
  if dxLayoutCompilazione.Visible then
     qRicettaInf.Open;

//  dxGroupMedicoRich.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);

  FDMCommon.LkTipoRicetta.Filtered := false;

  cxMagg.Properties.OnEditValueChanged := cxMaggPropertiesEditValueChanged;

  cxGridPrestazioni.OptionsSelection.CellSelect := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);

  // -- spostato da DoShow:

  rsPropSaver1.Storage.Load;
  rsPropSaver1.LoadValues;

  CodicInAttesa.Open;
  dxLayoutTelefonica.Visible := (gblTipo_Preno=0);
  if not dxLayoutTelefonica.Visible then
     cxTelefonica.Checked := false;

  if (FDMCommon.LeggiPostoLavoroCONDIVIDI_AGENDE.AsInteger=0) then
  begin
     dxCupTelefonico.Down := false;
     dxCupTelefonico.Visible := ivNever;
  end;

  aTempiAttesa.Visible := gblUserIsAdmin or gblSuperUser or gblEstrazioneDati;

//  aNuovaPrenotazione.Execute;

  cxGridPrestazioniRADIOFARMACO.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);

  cxTabPreno.Enabled := (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,6]);

  cxPersonalizza.Visible := False; //gblSuperUser;
  cxNoInsieme.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  dxLayoutTelefonica.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  aTesseraSanitaria.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5) then
  begin
    altriPresidi.Visible := False;
    dxAgendeInterni.Visible := ivNever;
  end;

  dxLayoutDescrizione.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5);
  dxLayoutDescTempi.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5);

  Apertura;

end;

function TFPrenotaNew.GetCanClose: Boolean;
begin

  result := inherited GetCanClose;

  if result and dxDockPanel1.Visible and InRegistrazione then
  begin
     MsgDlg(RS_PrenotazioneNonConfermata,'', ktWarning, [kbOK]);
     result := false;
  end;

  if result then
  begin
    if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5) then
    begin
      if PersModified then
         FDMCommon.SalvaPersonalizza(Name,dxLayoutControl1,gblcodutente);

      rsPropSaver1.SaveValues;
      rsPropSaver1.Storage.Save;
    end;
    
    FDMCommon.edrepCODICEESAME.Properties.OnButtonClick := nil;
    FDMCommon.Possibili.Filtered := false;
    FDMCommon.LkOspedali.Filtered := false;

    FDMCommon.edrepCODICEESAME.Properties.OnButtonClick := nil;

  end;

end;


destructor TFPrenotaNew.Destroy;
begin


  try
// ver. 3 ?! =>
{
  for i:=0 to vSbItem.Count-1 do
      dxSubDiag.DestroyLink(TdxBarSubItem(vSbItem[i]));
}
  vSbItem.Clear;
  vSbItem.Free;
  except
  end;

  FLookupMedInt.Free;
  FLookupMedEst.Free;

  tbSelezione.Close;

  FListaRich.Clear;
  FListaRich.Free;
{$IFNDEF MEDICORNER}
  if Assigned(FAltrePreno) then
  begin
     FAltrePreno.Free;
     FAltrePreno := nil;
  end;
{$ENDIF}
  if Assigned(FCutPaste) then
  begin
     FCutPaste.Free;
     FCutPaste := nil;
  end;

  vbDiagn.Free;

  cxMagg.Properties.OnEditValueChanged := nil;

  inherited;

end;

procedure TFPrenotaNew.Apertura;
var
  i: Integer;
  tb: TdxBarButton;
  ref: integer;
  tsb: TdxBarSubItem;
begin

  FCodiceDiag := '';
  vbDiagn.Clear;

  QyLkServizi.syRefresh;
(*
  LkDiagxWk.First;
  for I := 0 to LkDiagxWk.recordcount - 1 do
  begin
    vbDiagn.Add( TdxBarButton.Create(nil {Self}) );
    vbDiagn[I].ButtonStyle := bsChecked;
    vbDiagn[I].Caption := LkDiagxWk.Fieldbyname('DESCRIZ').AsString;
    if LkDiagxWkDESC_REPARTO.AsString<>'' then
        vbDiagn[I].Caption := vbDiagn[I].Caption + ' (' + LkDiagxWkDESC_REPARTO.AsString +')';
    vbDiagn[I].Tag := LkDiagxWkPKSERVIZI.AsInteger;
    vbDiagn[I].OnClick := dxSelezDiagn;
{JRT 4988}
    vbDiagn[I].CloseSubMenuOnClick := False;
{}
    if LkDiagxWkSELEZIONATA.AsInteger=1 then
    begin
      vbDiagn[I].Down := true;
      if FCodiceDiag='' then
         FCodiceDiag := IntToStr(vbDiagn[I].Tag)
      else
         FCodiceDiag := FCodiceDiag + ',' + IntToStr(vbDiagn[I].Tag);
    end;
    if dxSingolaDiagn.Down then
       vbDiagn[I].GroupIndex := 1;
    dxSubAgende.ItemLinks.Add.Item := vbDiagn[I];
    if i=0 then
       dxSubAgende.ItemLinks[dxSubAgende.ItemLinks.Count-1].BeginGroup := true;

    LkDiagxWk.Next;
  end;
*)

  if {(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5) or} (QyLkServizi.recordcount=1) then
      dxSingolaDiagn.Down := True;

  for i := 0 to QyLkServizi.recordcount - 1 do
  begin
    if QyLkServiziREP_OWNER.AsInteger=gblpkrep then
    begin
      tb := TdxBarButton.Create(nil {Self});
      tb.ButtonStyle := bsChecked;
      tb.Caption := QyLkServiziDESC_SERVIZIO.AsString;
//      if QyLkServiziDESC_REPARTO.AsString<>'' then
//          tb.Caption := tb.Caption + ' (' + QyLkServiziDESC_REPARTO.AsString +')';
      tb.Tag := QyLkServiziPKSERVIZI.AsInteger;
      tb.OnClick := dxSelezDiagn;

      if dxSingolaDiagn.Down {or (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5)} then
      begin
         tb.GroupIndex := 1;
         tb.CloseSubMenuOnClick := true;
      end
      else
{JRT 4988}
      tb.CloseSubMenuOnClick := false;
{}

      dxSubDiag.ItemLinks.Add.Item := tb;
      if vbDiagn.Count=0 then
         dxSubDiag.ItemLinks[dxSubDiag.ItemLinks.Count-1].BeginGroup := true;
      vbDiagn.Add( tb );
    end;
    QyLkServizi.Next;
  end;

  if (FDMCommon.LeggiPostoLavoroCONDIVIDI_AGENDE.AsInteger>0) then
  begin
    QyLkServizi.First;
    while not QyLkServizi.Eof do
    begin
      if (QyLkServiziREP_OWNER.AsInteger<>gblpkrep) then
      begin
        if FxAltriPresidi=0 then
           FxAltriPresidi := 2;
        ref := QyLkServiziREP_OWNER.AsInteger;
        tsb := TdxBarSubItem.Create(nil {Self});
        tsb.Caption := QyLkServiziDESC_REPARTO.AsString;
        vSbItem.Add( tsb );
        dxSubDiag.ItemLinks.Add.Item := tsb;
        while not QyLkServizi.Eof and (ref=QyLkServiziREP_OWNER.AsInteger) do
        begin
          tb := TdxBarButton.Create(nil {Self});
          tb.ButtonStyle := bsChecked;
          tb.Caption := QyLkServiziDESC_SERVIZIO.AsString;
  //        if QyLkServiziDESC_REPARTO.AsString<>'' then
  //            tb.Caption := tb.Caption + ' (' + QyLkServiziDESC_REPARTO.AsString +')';
          tb.Tag := QyLkServiziPKSERVIZI.AsInteger;
          tb.OnClick := dxSelezDiagn;
          if dxSingolaDiagn.Down then
          begin
             tb.GroupIndex := 1;
             tb.CloseSubMenuOnClick := true;
          end
          else
{JRT 4988}
          tb.CloseSubMenuOnClick := False;
{}
          tsb.ItemLinks.Add.Item := tb;
          vbDiagn.Add( tb );
          QyLkServizi.Next;
        end;
      end
      else
        QyLkServizi.Next;
    end;
  end;

  Inizializza;

//  if FCodiceDiag<>'' then
//     AssegnaDiagn(FCodiceDiag);

end;

procedure TFPrenotaNew.SettaTutti;
//var
//  i: integer;
begin
  FListaRich.Clear;
{
  for i:=0 to vbDiagn.Count-1 do
  try
      if Assigned(vbDiagn[I]) and vbDiagn[i].Down then
         vbDiagn[i].Down := false;
  except
  end;
}
end;

function TFPrenotaNew.AssegnaDiagn(const xstrservizi: string): boolean;
var
  Item: TPrenoDiagn;
  fp: TFrameProperty;
  i: integer;
  slot: integer;
  trovate: integer;
begin
  result := true;
  trovate := 0;

  if not FListaRich.CanClose then
  begin
     result := false;
     exit;
  end;

  slot := 0;
  for I := 0 to vbDiagn.Count-1 do
  begin
    if Assigned(vbDiagn[I]) and vbDiagn[I].Down then
    begin
//       LkDiagxWk.Locate('PKSERVIZI',vbDiagn[I].Tag,[]);
//       slot := max(slot,LkDiagxWkSLOT_STANDARD.AsInteger);
       QyLkServizi.Locate('PKSERVIZI',vbDiagn[I].Tag,[]);
       slot := max(slot,QyLkServiziSLOT_STANDARD.AsInteger);
    end;
  end;

//   SettaTutti;

   dxDockPanel1.Visible := false;

   if FListaRich.Count=0 then
   begin
     Item := TPrenoDiagn.Create(nil);
     Item.Parent := Panel3;
     Item.InternalIndex := FListaRich.Count;
     FListaRich.Add(Item);

//     PostMessage(Handle,SY_RESIZEALL,0,0);
     fp.vStrServizi := xstrservizi;

{
     QyLkServizi.Locate('PKSERVIZI',xservizi,[]);
     if cxTelefonica.Checked then
        fp.Telefonica := 1
     else
        fp.Telefonica := 0;
     fp.vServizi := xservizi;
     fp.vReparti := QyLkServiziREP_OWNER.AsInteger;
     fp.Titolo := xnome;
     if QyLkServiziDESC_REPARTO.AsString<>'' then
        fp.Titolo := QyLkServiziDESC_REPARTO.AsString + ' - ' + fp.Titolo;
}
     fp.NumberOfDays := dxGiorni.EditValue;
//     fp.ZoomValue := QyLkServiziSLOT_STANDARD.AsInteger;
     fp.ZoomValue := slot;

  //   fp.ZoomPos := dxPeriodo.ItemIndex+1;
     fp.ZoomPos := 0;
     for i:=1 to MAXPOSZOOM do
        if dZoom[i]>=fp.ZoomValue then
        begin
           fp.ZoomPos := i;
           break;
        end;
     if fp.ZoomPos>0 then
        dxPeriodo.ItemIndex := fp.ZoomPos-1;

     Item.fConEsami := dxConEsami.Down;
     Item.fBloccate := dxBloccati.Down;
     Item.xCambiaSomministrazione := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);
  {
     if TPrenoTIPO_ATTIVITA.AsString='D' then
     begin
       Item.fAttivita := TPrenoTIPO_ATTIVITA.AsString;
       Item.fOspRich := TPrenoOSP_RICH.AsString;
     end;
  }
     Item.fSoloLibere := false; // dxLibere.Down;
     Item.fCopiaVisibile := true;
     Item.fAncheInterni := dxAgendeInterni.Down;
     Item.ApriClient(dxBarManager1,fp);
     trovate := trovate + Item.Sincronizza(dxDataAgenda.EditValue,false);
     Item.xDay := dxDataAgenda.EditValue;
     Item.RefreshCalendari;
   end
   else begin
     FListaRich[0].fAncheInterni := dxAgendeInterni.Down;
     FListaRich[0].SetZoomValue(slot,dxPeriodo.ItemIndex+1);
     FListaRich[0].vStrServizi := '# '+xstrservizi;
     trovate := trovate + FListaRich[0].Sincronizza(dxDataAgenda.EditValue,false);
     FListaRich[0].xDay := dxDataAgenda.EditValue;
     FListaRich[0].RefreshCalendari;
   end;

   if trovate=0 then
      MsgDlg(RS_NonAgendeDisponibili,'', ktWarning, [kbOK]);

end;

{$IFNDEF CON_PRENOTEST}
procedure TFPrenotaNew.CaricaTabDiagn(xData: TDateTime; xdiag: integer);
begin

     if FListaRich.Count>0 then
     begin
       FListaRich[FListaRich.Count-1].Sincronizza(xdata,false);
       FListaRich[FListaRich.Count-1].xDay := xdata;

       FListaRich[FListaRich.Count-1].xSetFocus;
     end;

end;
{$ENDIF}

procedure TFPrenotaNew.dxSelezDiagn(Sender: TObject);
//var
//  i,Item: integer;
begin

//  FDiagnSelezionate := True;
(*
  if TdxBarButton(Sender).Down then
  begin
    if AssegnaDiagn(TdxBarButton(Sender).Tag) then
    begin
       CaricaTabDiagn(dxDataAgenda.EditValue,TdxBarButton(Sender).Tag);
       dxBarLookupData.Visible := ivNever;
       dxDataAgenda.Visible := ivAlways;
       TdxBarButton(Sender).Down := true;
    end
    else
      TdxBarButton(Sender).Down := false;
  end
  else begin
      Item := -1;
      for i:=0 to FListaRich.Count-1 do
      begin
         if (FListaRich[i] is TPrenoDiagn) then
         begin
            if FListaRich[i].vServizi=TdxBarButton(Sender).Tag then
            begin
               Item := i;
               break;
            end;
         end;
      end;
      if Item>=0 then
         PostMessage(Handle,SY2_KILLRICH,0,Item);
  end;
*)
end;

procedure TFPrenotaNew.aNuovaPrenotazioneExecute(Sender: TObject);
begin
  if not FListaRich.CanClose then
     exit;

  FRicercaFatta := false;
//  SettaTutti;

  if not dxDockPanel1.Visible then
     dxDockPanel1.Visible := true;

  if cxPageControl.ActivePage<>cxTabPreno then
  begin
     cxPageControl.ActivePage := cxTabPreno;
     SettaTutti;
  end;

	AzzeraPaziente();
  btnRicPaz.Glyph.ReleaseHandle;
  FDMCommon.imIcone.GetBitmap(46,btnRicPaz.Glyph);
  dxBarStatic1.Visible := ivAlways;
  dxBarControlContainerItem1.Visible := ivAlways;
  dxDataAgenda.Visible := ivNever;

  cxGridPrestazioniESENTE.Options.Editing := false;

  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) and (not FDMCommon.LeggiPostoLavoroCODICIRAD_FK.IsNull) then
  begin
    if Esami.Locate('PKCODICIRAD',FDMCommon.LeggiPostoLavoroCODICIRAD_FK.AsInteger,[]) then
    begin
       cxCodice.Text := Esami.Fieldbyname('CODICE').AsString;
       CodicePress;
    end;
  end;

end;

procedure TFPrenotaNew.actRicercaExecute(Sender: TObject);
begin

  if not FListaRich.CanClose then
     exit;

  FRicercaFatta := false;
  SettaTutti;

  if not dxDockPanel1.Visible then
     dxDockPanel1.Visible := true;

  if cxPageControl.ActivePage<>cxTabRicerca then
     cxPageControl.ActivePage := cxTabRicerca;

//	AzzeraPaziente();
  if cxRicCognome.CanFocus then
     cxRicCognome.SetFocus;

  btnRicPreno.Glyph.ReleaseHandle;
  FDMCommon.imIcone.GetBitmap(46,btnRicPreno.Glyph);

  dxBarStatic1.Visible := ivAlways;
  dxBarControlContainerItem1.Visible := ivAlways;
  dxDataAgenda.Visible := ivNever;

end;


procedure TFPrenotaNew.ChangeDisplayUnit(var Message: TMessage);
begin
  dxPeriodo.OnChange := nil;
  dxPeriodo.ItemIndex := Message.LParam-1;
  dxPeriodo.OnChange := dxPeriodoChange;
end;



procedure TFPrenotaNew.SYKillRich(var Message: TMessage);
begin
  inherited;
  if FListaRich.Remove(FListaRich[Message.LParam]) then
     PostMessage(Handle,SY_RESIZEALL,0,0);
end;

procedure TFPrenotaNew.SY2KillRich(var Message: TMessage);
begin
  inherited;
//  SettaBottone(FListaRich[Message.LParam].vServizi,false);
  FListaRich.Remove(FListaRich[Message.LParam]);
  PostMessage(Handle,SY_RESIZEALL,0,0);
end;

procedure TFPrenotaNew.QyGiornateBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  if dxBloccati.Down then
     Sender.Parambyname('xbloccate').AsInteger := 0
  else
     Sender.Parambyname('xbloccate').AsInteger := 1;

  Sender.Parambyname('xtipo_attivita').AsString := TPrenoTIPO_ATTIVITA.AsString;
//  if (TPrenoTIPO_ATTIVITA.AsString='G') or (TPrenoTIPO_ATTIVITA.AsString='L') then
  Sender.Parambyname('xAgendeEsclusive').AsInteger := TPrenoAGENDE_ESCLUSIVE.AsInteger;
  Sender.Parambyname('xOSP_RICH').AsString := TPrenoOSP_RICH.AsString;

  if FDMCommon.IsUserCup then
 	   Sender.Parambyname('xPRENOCUP').AsInteger:=1
  else
 	   Sender.Parambyname('xPRENOCUP').AsInteger:=0;

  if dxAgendeInterni.Down then
     Sender.Parambyname('xinterni').AsInteger:=1
  else
     Sender.Parambyname('xinterni').AsInteger:=0;

end;

procedure TFPrenotaNew.ScegliGiornoExecute(Sender: TObject);
var
  z: integer;
begin
{
  if InRegistrazione then
  begin
     MsgDlg(RS_PrenotazioneNonConfermata,'', ktWarning, [kbOK]);
     exit;
  end;
}
  if tbSelezioneDATA_PRENO.AsDateTime>0 then
  begin
     if FListaRich.Count>0 then
     begin
       for z:=0 to FListaRich.Count-1 do
       begin
//          if FListaRich[z].RegistrazioneInCorso then
//             FListaRich[z].SpostaInMemoria;
          FListaRich[z].Sincronizza(tbSelezioneDATA_PRENO.AsDateTime,false);
          FListaRich[z].xDay := tbSelezioneDATA_PRENO.AsDateTime;
          FListaRich[z].CercaInCalendari(FListaRich[z].vDurata);          
       end;
       FListaRich[FListaRich.Count-1].xSetFocus;
     end;
  end;

end;

procedure TFPrenotaNew.btBloccateClick(Sender: TObject);
var
  z: integer;
begin

   for z:=0 to FListaRich.Count-1 do
   begin
     TPrenoTest(FListaRich[z]).fBloccate := dxBloccati.Down;
     TPrenoTest(FListaRich[z]).Sincronizza(tbSelezioneDATA_PRENO.AsDateTime,true);
   end;

end;

procedure TFPrenotaNew.dxLibereClick(Sender: TObject);
//var
//  i: integer;
begin
{ ????????
     for i:=0 to FListaRich.Count-1 do
        if FListaRich[i] is TPrenoTest then
           CaricaTabella
        else if FListaRich[i] is TPrenoDiagn then
           CaricaTabDiagn(Date());
}
end;

procedure TFPrenotaNew.ChangeGiorni;
var
  i: integer;
begin

   Apertura;

   for i:=0 to FListaRich.Count-1 do
      if FListaRich[i].NumberOfDays<>dxGiorni.EditValue then
         FListaRich[i].NumberOfDays := dxGiorni.EditValue;

end;

procedure TFPrenotaNew.dxConEsamiClick(Sender: TObject);
var
  i: integer;
begin
   for i:=0 to FListaRich.Count-1 do
   begin
     FListaRich[i].fConEsami := dxConEsami.Down;
     FListaRich[i].Sincronizza(FListaRich[i].xDay,true);
     FListaRich[i].RefreshCalendari;
   end;
end;

procedure TFPrenotaNew.ApriCutPaste(var Message: TMessage);
begin
  inherited;
   if not Assigned(FCutPaste) then
   begin
      FCutPaste := TFCutPaste.Create(self);
      FCutPaste.sAstaCut.Dataset := FDMCommon.AstaCut;
      FCutPaste.sAstaDett.Dataset := FDMCommon.AstaDett;
   end;
   FCutPaste.Show;
end;

procedure TFPrenotaNew.ChiudiCutPaste(var Message: TMessage);
begin
   if Assigned(FCutPaste) then
   begin
      FCutPaste.Free;
      FCutPaste := nil;
   end;
end;


procedure TFPrenotaNew.ChiudiAltrePreno(var Message: TMessage);
begin
{$IFNDEF MEDICORNER}
   if Assigned(FAltrePreno) then
   begin
      FAltrePreno.Free;
      FAltrePreno := nil;
   end;
{$ENDIF}
end;

procedure TFPrenotaNew.RefreshCalendari(var Message: TMessage);
var
  i: integer;
begin
   for i:=0 to FListaRich.Count-1 do
     FListaRich[i].RefreshCalendari;

end;

procedure TFPrenotaNew.msgCercaInCalendari(var Message: TMessage);
begin
  CercaInCalendari(nil,-1);
end;

procedure TFPrenotaNew.CercaInCalendari(Prestazioni: TAstaClientDataset; xdiag: integer);
begin
end;

procedure TFPrenotaNew.MinimizzaTutteExecute(Sender: TObject);
var
  i: integer;
begin

   for i:=0 to FListaRich.Count-1 do
     FListaRich[i].Minimizza;
   PostMessage(Handle,SY_RESIZEALL,0,0);
end;

procedure TFPrenotaNew.MassimizzaTutteExecute(Sender: TObject);
var
  i: integer;
begin

   for i:=0 to FListaRich.Count-1 do
     FListaRich[i].Massimizza;
   PostMessage(Handle,SY_RESIZEALL,0,0);
end;

procedure TFPrenotaNew.ChiudiTutteExecute(Sender: TObject);
begin
  if not FListaRich.CanClose then
     exit;

  aNuovaPrenotazione.Execute;
  
end;

procedure TFPrenotaNew.dxPeriodoChange(Sender: TObject);
var
  i: integer;
begin
   for i:=0 to FListaRich.Count-1 do
      FListaRich[i].xZoomPos := dxPeriodo.ItemIndex;

end;


procedure TFPrenotaNew.MassimizzaTutteUpdate(Sender: TObject);
begin
  MassimizzaTutte.Enabled := FListaRich.Count>0;
end;

procedure TFPrenotaNew.SelezionaUpdate(Sender: TObject);
begin
//	Seleziona.Enabled := (Richiesti.recordcount<9);

end;

procedure TFPrenotaNew.AssegnaEsenzione;
begin

  Richiesti.DisableControls;
  FInRicalcolo := true;
  try
  with Richiesti do
  begin
        First;
        while not eof do
        begin
           Edit;
           if (TPrenoESENTE.AsInteger=1) or
              ((TPrenoESENTE.AsInteger=2) and
               (not CodiciEsenti.Active or CodiciEsenti.Locate('IDENT_FK',RichiestiIDENT_FK.AsString,[]))) then
               RichiestiESENTE.AsInteger := 1
           else
               RichiestiESENTE.AsInteger := 0;
           Post;
           Next;
        end;
  end;

{JRT 2723}
  if cxMagg.Checked and dxLayoutControlQuota.Visible and not (TPrenoESENTE.AsInteger in [0,2]) then
     cxMagg.Checked := false;
{}

  RicalcolaTotale;

  finally
     Richiesti.EnableControls;
     FInRicalcolo := false;
  end;

end;


procedure TFPrenotaNew.RicalcolaTotale;
begin

  Richiesti.DisableControls;
  FInRicalcolo := true;
  try
  if not (TPreno.state in dsEditModes) then
     TPreno.Edit;
  TPrenoIMPORTO_TOTALE.asFloat := 0;
  TPrenoIMPORTO_PAGATO.asFloat := 0;
  TPrenoIMPORTO_QUOTA.asFloat := 0;

  with Richiesti do
  begin
        First;
        while not eof do
        begin
           Edit;
           if RichiestiESENTE.AsInteger=1 then
              RichiestiPAGATO.asFloat := 0
           else
              RichiestiPAGATO.asFloat := (RichiestiIMPORTO.asFloat * RichiestiNUMERO_PRESTAZIONE.AsInteger);
           Post;
           TPrenoIMPORTO_TOTALE.asFloat := TPrenoIMPORTO_TOTALE.asFloat +
                                                 (RichiestiIMPORTO.asFloat * RichiestiNUMERO_PRESTAZIONE.AsInteger);
           TPrenoIMPORTO_PAGATO.asFloat := TPrenoIMPORTO_PAGATO.asFloat +
                                                 RichiestiPAGATO.asFloat;

           Next;
        end;

  end;

  if (TPrenoESENTE.AsInteger in [0,2]) and
     (TPrenoTIPO_FATTURA.AsInteger in [0,2]) and
     (TPrenoIMPORTO_TOTALE.asFloat>0) then
  begin
     if (TPrenoIMPORTO_PAGATO.asFloat > FDMCommon.Param_TicketIMPOMAX.asFloat) then
         TPrenoIMPORTO_PAGATO.asFloat := FDMCommon.Param_TicketIMPOMAX.asFloat;

     if cxMagg.Checked and (TPrenoIMPORTO_PAGATO.asFloat>0) then
     begin
        TPrenoIMPORTO_QUOTA.asFloat := FBollo;
        TPrenoIMPORTO_PAGATO.asFloat := TPrenoIMPORTO_PAGATO.asFloat + FBollo;
     end;
  end;

  finally
     Richiesti.EnableControls;
     FInRicalcolo := false;
  end;

end;


procedure TFPrenotaNew.aRicercaPazienteExecute(Sender: TObject);
var
  trovato: integer;
begin
(*
  if Assigned(ActiveControl) then
      SendMessage(TWinControl(ActiveControl.Owner).Handle, CM_EXIT, 0, 0);
*)
  if cxPageControl.ActivePage=cxTabPreno then
  begin
      FRicAssistito := TFRicAssistito.Create(nil);
      try

       FRicAssistito.NuovaRegistrazione := True;
       FRicAssistito.QRicerca.Active := false;
       FRicAssistito.QRicerca.QBEMode := true;
       FRicAssistito.QRicerca.Active := true;
       FRicAssistito.StatoLancio := 0;
       FRicAssistito.PazienteSconosciuto.Visible := false;
       trovato := mrCancel;

       if xCF<>'' then
       begin
          FRicAssistito.QRicercaCODICE_FISCALE.AsString := xCF;
          if TesseraLetta.CodiceFiscale<>'' then
             FRicAssistito.xRec := TesseraLetta;
          FRicAssistito.AttivaRicerca.Execute;
          if (FRicAssistito.qRicerca.Recordcount=1) then
             trovato := mrOk;
{}
       end
       else if (cxCognome.Text<>'') and (Length(cxCognome.Text)>=2) then
       begin
           FRicAssistito.QRicercaCOGNOME.AsString := cxCognome.Text;
           if cxNome.Text<>'' then
             FRicAssistito.QRicercaNOME.AsString := cxNome.Text
           else
             FRicAssistito.QRicercaNOME.Clear;

           // -- per passare valori per registrazione immediata
           if cxCognome.Text<>'' then
              FRicAssistito.xRec.Cognome := cxCognome.Text;
           if cxNome.Text<>'' then
              FRicAssistito.xRec.Nome := cxNome.Text;
//           if xCF<>'' then
//              FRicAssistito.xRec.CodiceFiscale := xCF;

             FRicAssistito.AttivaRicerca.Execute;

             if (FRicAssistito.qRicerca.Recordcount=0) then
                trovato := mrRetry
             else if (FRicAssistito.qRicerca.Recordcount=1) and not FRicercaFatta then
                trovato := mrCancel  //JRT: ex mrOk;  eliminata seleziona automatica se unico paziente trovato - 07/07/2015
             else if (FRicAssistito.qRicerca.Recordcount=1) and FRicercaFatta then
                trovato := mrCancel
             else if not TPrenoPKASSISTIBILI.IsNull and FRicercaFatta then
                FRicAssistito.QRicerca.Locate('PKASSISTIBILI',TPrenoPKASSISTIBILI.AsInteger,[]);

       end;

       if not (trovato in [mrOk,mrRetry]) then
       begin
{
         if cxCognome.Text<>'' then
            FRicAssistito.xRec.Cognome := cxCognome.Text;
         if cxNome.Text<>'' then
            FRicAssistito.xRec.Nome := cxNome.Text;
         if xCF<>'' then
            FRicAssistito.xRec.CodiceFiscale := xCF;
}
         trovato := FRicAssistito.ShowModal;
       end;

       case trovato of
       mrCancel: begin
                    if cxCognome.CanFocus then
                       cxCognome.SetFocus;
                 end;
       mrOk:
       begin
          TPrenoPKASSISTIBILI.AsInteger := FRicAssistito.QRicercaPKASSISTIBILI.AsInteger;
          TPrenoCOGNOME.AsString := FRicAssistito.QRicercaCOGNOME.AsString;
          TPrenoNOME.AsString := FRicAssistito.QRicercaNOME.AsString;
          TPrenoLIBRETTO_SAN.AsString := FRicAssistito.QRicercaLIBRETTO_SAN.AsString;
          TPrenoDATA_NASCITA.AsDateTime := FRicAssistito.QRicercaDATA_NASCITA.AsDateTime;
          TPrenoIND_COMPLETO.AsString := FRicAssistito.QRicercaDES_COM_RES.AsString;
          TPrenoTELEFONO.AsString := FRicAssistito.QRicercaTELEFONO.AsString;
          TPrenoETA.AsInteger := FRicAssistito.QRicercaETA.AsInteger;
          if not FRicAssistito.QRicercaMED_BASE.IsNull and cxMedicoBase.Enabled and not ((TPrenoPROVIMP.AsString='I') and (TPrenoTIPO_FATTURA.AsInteger<>3)) then
          begin
             TPrenoMED_BASE.AsString := FRicAssistito.QRicercaMED_BASE.AsString;
             cxMedicoBase.SincronizzaDati(TPrenoMED_BASE.AsString);
          end
          else begin
             TPrenoMED_BASE.Clear;
             TPrenoNOMEMEDICO.Clear;
          end;
          TPrenoSAN_IDENT.AsInteger := FRicAssistito.QRicercaSAN_IDENT.AsInteger;

{
          // -- assegnazione Tipo ricetta
          if FRicAssistito.QRicercaCOM_TYPE.AsString='2' then
             xfiltro := '1'
          else begin
             if FRicAssistito.QRicercaCOM_TYPE.AsString='3' then
                xstp := ' AND FLAG_STP=1'
             else
                xstp := ' AND FLAG_STP=0';
             xfiltro := FRicAssistito.QRicercaTNRES.AsString;
          end;

          FDMCommon.qTipoRicetta.Filtered := false;
          if xfiltro<>'' then
          begin
            FDMCommon.qTipoRicetta.Filter   := 'TIPO_COM_RES like '+#39+'%'+xfiltro+'%'+#39;
            if xstp<>'' then
               FDMCommon.qTipoRicetta.Filter := FDMCommon.qTipoRicetta.Filter+xstp;
            FDMCommon.qTipoRicetta.Filtered := true;
          end;
}
          btnRicPaz.Glyph.ReleaseHandle;
          FDMCommon.imIcone.GetBitmap(40,btnRicPaz.Glyph);
{
          if cxMedicoBase.CanFocus then
             cxMedicoBase.SetFocus
          else
          if cxTelefono.CanFocus then
             cxTelefono.SetFocus
          else if cxCodice.CanFocus then
             cxCodice.SetFocus;
}
          if cxBtnTessera.Visible then
             SelectNext(cxBtnTessera,True,True)
          else
             SelectNext(btnRicPaz,True,True);

          FRicercaFatta := true;

       end;
       end;

       finally
          FRicAssistito.Free;
          xCF := '';
       end;
   end
   else begin

        PuntaPazientePrenotato(true);

   end;

end;

procedure TFPrenotaNew.PuntaPazientePrenotato(ricerca: boolean);
var
  trovato: integer;
begin

      FRicAssPreno := TFRicAssPreno.Create(nil);
      try

       FRicAssPreno.QRicerca.Active := false;
       FRicAssPreno.QRicerca.QBEMode := true;
       FRicAssPreno.QRicerca.Active := true;
       if cxRicCognome.Text<>'' then
       begin
         FRicAssPreno.QRicercaCOGNOME.AsString := cxRicCognome.Text;
         if cxRicNome.Text<>'' then
            FRicAssPreno.QRicercaNOME.AsString := cxRicNome.Text
         else
            FRicAssPreno.QRicercaNOME.Clear;
       end
       else begin
         FRicAssPreno.QRicercaPKASSISTIBILI.AsInteger := TPrenoPKASSISTIBILI.AsInteger;
       end;

       FRicAssPreno.QRicerca.Parambyname('LOCALE1').AsString := '# ,repserv rs';
       FRicAssPreno.QRicerca.Parambyname('LOCALE2').AsString := format('# and i.REPARTI_FK = rs.rep_owner and rs.reparti_fk = %d ',[gblpkrep]);
       FRicAssPreno.QRicerca.Parambyname('SOLOPRENO').AsString := '# and t.statovisita in (10,20)';
       FRicAssPreno.AttivaRicerca.Execute;

       FRicAssPreno.statolancio := 0;

       if ricerca and (FRicAssPreno.qRicerca.Recordcount>1) then
       begin

          if not TPrenoPKASSISTIBILI.IsNull and FRicercaFatta then
             FRicAssPreno.QRicerca.Locate('PKASSISTIBILI',TPrenoPKASSISTIBILI.AsInteger,[]);

          trovato := FRicAssPreno.ShowModal;
       end
       else if (FRicAssPreno.qRicerca.Recordcount=1) then
          trovato := mrOk
       else
          trovato := mrCancel;

       case trovato of
       mrCancel: begin
                    if cxRicCognome.CanFocus then
                       cxRicCognome.SetFocus;
                 end;
       mrOk:
         begin
            if not (TPreno.State in dsEditModes) then
            begin
             TPreno.Empty;
             TPreno.Append;
            end;
            TPrenoPKASSISTIBILI.AsInteger := FRicAssPreno.QRicercaPKASSISTIBILI.AsInteger;
            TPrenoCOGNOME.AsString := FRicAssPreno.QRicercaCOGNOME.AsString;
            TPrenoNOME.AsString := FRicAssPreno.QRicercaNOME.AsString;
            TPrenoLIBRETTO_SAN.AsString := FRicAssPreno.QRicercaLIBRETTO_SAN.AsString;
            TPrenoDATA_NASCITA.AsDateTime := FRicAssPreno.QRicercaDATA_NASCITA.AsDateTime;
            TPrenoIND_COMPLETO.AsString := FRicAssPreno.QRicercaDES_COM_RES.AsString;

            btnRicPreno.Glyph.ReleaseHandle;
            FDMCommon.imIcone.GetBitmap(40,btnRicPreno.Glyph);
            QyRicPreno.syRefresh;
            QyStorEsami.Parambyname('triage_fk').AsInteger := -1;
            QyStorEsami.syRefresh;

            cxGridRicPrenoPrenotazioni.Controller.GoToLast(false);
            if cxGridRicPreno.CanFocus then
               cxGridRicPreno.SetFocus;
            FRicercaFatta := true;

         end;
       end;

       finally
          FRicAssPreno.Free;
          FRicAssPreno := nil;
       end;

end;

procedure TFPrenotaNew.aCercaAgendeExecute(Sender: TObject);
begin

  if (TPreno.State in dsEditModes) then
     TPreno.Post;
  SettaTutti;
  EditCodici(true);
  aNuovaPrenotazione.Execute;
end;

procedure TFPrenotaNew.aCercaAgendeUpdate(Sender: TObject);
begin

     aCercaAgende.Enabled := not Richiesti.IsEmpty and {(Richiesti.recordcount<9) and}
                             not TPrenoPKASSISTIBILI.IsNull and not InRegistrazione and
                             not (TPrenoOSP_RICH.IsNull or (TPrenoOSP_RICH.AsString=''))
                             and (cxDataRicerca.Date>0)
                             ;

end;

procedure TFPrenotaNew.RichiestiNewRecord(DataSet: TDataSet);
begin
  inc(prgriga);
  RichiestiPROGRESSIVO_RIGA.AsInteger := prgriga;
  RichiestiPAGATO.asFloat := 0;
  RichiestiIMPORTO.asFloat := 0;
  RichiestiNUMERO_PRESTAZIONE.AsInteger := 1;
  RichiestiPRENOTATO.AsInteger := 0;
  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) then
     RichiestiRADIOFARMACO.AsString := 'RadioFarmaco';
end;

procedure TFPrenotaNew.aRicercaPazienteUpdate(Sender: TObject);
begin
{
  if cxPageControl.ActivePage=cxTabPreno then
     aRicercaPaziente.Enabled := (cxCognome.Text<>'') and (Length(cxCognome.Text)>=2)
  else
     aRicercaPaziente.Enabled := (cxRicCognome.Text<>'') and (Length(cxRicCognome.Text)>=2);
}
  aRicercaPaziente.Enabled := (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,6]) {and (ProxStatoVisita<=130)};
  dxGroupAnagrafica.Enabled := aRicercaPaziente.Enabled;

end;

procedure TFPrenotaNew.TPrenoNewRecord(DataSet: TDataSet);
begin
  if cxTelefonica.Checked then
     TPrenoTIPO_PRENO.AsInteger := 1
  else
     TPrenoTIPO_PRENO.AsInteger := 0;

  FDMCommon.LkOspedali.Locate('CODICE',FDMCommon.LeggiPostoLavoroDEF_OSP_RICH.AsString,[]);
  TPrenoOSP_RICH.AsString := FDMCommon.LeggiPostoLavoroDEF_OSP_RICH.AsString;
//  cxProvenienzaPropertiesCloseUp(self);

  TPrenoSTATOVISITA.AsInteger := 10;
  TPrenoDATA_PRESCRIZIONE.AsDateTime := Date();
//  TPrenoTIPO_ESENZIONE.AsInteger := 2;
  if not FDMCommon.LeggiPostoLavoroURGENZA_FK.IsNull then
     TPrenoURGENZA.AsInteger := FDMCommon.LeggiPostoLavoroURGENZA_FK.AsInteger;

  LettoConPistola := false;

  FDMCommon.AstaCut.Empty;
  FDMCommon.AstaDett.Filtered := false;
  FDMCommon.AstaDett.Empty;

end;

procedure TFPrenotaNew.QyLkServiziBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
 	Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
(*
  if (FDMCommon.LeggiPostoLavoroCONDIVIDI_AGENDE.AsInteger=0) then
     Sender.Parambyname('solo_rep').AsString := format('# rs.rep_owner = %d and ',[gblpkrep])
  else
     Sender.Parambyname('solo_rep').AsString := '#';
*)
  if not FDMCommon.IsUserCup then
 	   Sender.Parambyname('prenocup').AsString := format('# rs.rep_owner = %d and ',[gblpkrep])
  else
 	   Sender.Parambyname('prenocup').AsString := '#';

  if dxAgendeInterni.Down then
     Sender.Parambyname('anche_interni').AsString := '# (''E'',''T'',''I'')'
  else
     Sender.Parambyname('anche_interni').AsString := '# (''E'',''T'')';

  if FDMCommon.IsUserCup then
 	   Sender.Parambyname('PRENOCUP').AsString := '# c.PRENOCUP=1 and'
  else
 	   Sender.Parambyname('PRENOCUP').AsString := '#';

  Sender.Parambyname('data_preno').AsDateTime := dxDataAgenda.EditValue;
  Sender.Parambyname('data_fine').AsDateTime := IncDay(dxDataAgenda.EditValue,dxIntervallo.EditValue-1);

end;

procedure TFPrenotaNew.csEZKeys1KeyIntercept(KeyType: TNavigationKey;
  Ctrl: TControl; var Intercept: Boolean);
begin
  Intercept := Assigned(Ctrl)
               and
               not BufferIn
               and
                 not (Ctrl is TPlannerGrid)
               and
                 not (Ctrl is TcxButton)
               and
                 not (Ctrl is TcxCustomInnerMemo)
               and
                 not (
                     ((Ctrl.Owner is TcxButtonEdit) and ((TcxButtonEdit(Ctrl.Owner).Text<>'') or (TcxButtonEdit(Ctrl.Owner).Name='cxDescrizione')))
                     or
                     ((Ctrl.Owner is TcxDBMaskEdit) and (TcxDBMaskEdit(Ctrl.Owner).Name='cxNome') and not FRicercaFatta)
                     );
end;

procedure TFPrenotaNew.cxNumeroImpegnativaPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
//var
//  lung: integer;
begin

{
  Error := false;
  lung := Length(DisplayValue);
  if VarIsNull(DisplayValue) or (lung=0) then
  begin
     Error := TRUE;
     ErrorText := format(RS_TIC_LengthField,[TPrenoNR_IMPEGNATIVA.DisplayLabel]);
  end;
}
end;

procedure TFPrenotaNew.RichiestiAfterDelete(DataSet: TDataSet);
begin
  RicalcolaTotale;
end;

procedure TFPrenotaNew.RichiestiAfterPost(DataSet: TDataSet);
begin
  if not FInRicalcolo then
     RicalcolaTotale;
end;

procedure TFPrenotaNew.CodicePress;
begin
  if (cxCodice.Text<>'') then
  begin
     FiltraQuery('CODICE LIKE '+#39+cxCodice.Text+'%'+#39);
     if Esami.RecordCount=1 then
        CaricaCodice(Esami.Fieldbyname('CODICE').AsString)
     else
        CercoCodice(tpCodice);
  end
  else
     CercoCodice(tpCodice);
end;


procedure TFPrenotaNew.DescrPress;
begin
  if (cxDescrizione.Text<>'') then
  begin
     FiltraQuery('DESCRIZIONE LIKE '+#39+'%'+cxDescrizione.Text+'%'+#39);
     if Esami.RecordCount=1 then
        CaricaCodice(Esami.Fieldbyname('CODICE').AsString)
     else
        CercoCodice(tpDescrizione);
  end
  else
     CercoCodice(tpDescrizione);
end;

procedure TFPrenotaNew.cxCodicePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if cxCodice.Text<>'' then
     CodicePress
  else
     CercoCodice(tpCodice);
end;

procedure TFPrenotaNew.CercoCodice(tpOrd: TtpOrd);
//var
//  trovato: integer;
begin
  if Assigned(FRicRadiologiaPreno) then exit;
  FRicRadiologiaPreno := TFRicRadiologiaPreno.CreateNew(nil,FDMCommon.ImgList);
  try
     FRicRadiologiaPreno.CopiaDataset(Esami,tpOrd);
{JRT 6611}
     if tpOrd=tpCodice then
        FRicRadiologiaPreno.DaCercare := cxCodice.Text
     else
        FRicRadiologiaPreno.DaCercare := cxDescrizione.Text;
{}
     if FRicRadiologiaPreno.ShowModal=mrOk then
        CaricaCodice(FRicRadiologiaPreno);
  finally
     Esami.Filtered := false;
     FRicRadiologiaPreno.Free;
     FRicRadiologiaPreno := nil;
  end;

end;

procedure TFPrenotaNew.CaricaCodice(xRad: TFRicRadiologiaPreno);
var
  i: integer;
  codice: string;
begin
  for i:=1 to xRad.cxGridCodici.Controller.SelectedRecordCount do
  begin
     codice := xRad.cxGridCodici.Controller.SelectedRecords[i-1].Values[0];
     CaricaCodice(codice);
  end;
end;

function TFPrenotaNew.LoadPrestazione(ds: TAstaCustomDataset; pgrprest: integer): boolean;
var
  FSelezSpec: TFSelezSpec;
begin
    Richiesti.Append;
    RichiestiCODICE.AsString := ds.Fieldbyname('CODICE').AsString;
    RichiestiDESCRIZIONE.AsString := ds.Fieldbyname('DESCRIZIONE').AsString;
    RichiestiDURATA.AsInteger := ds.Fieldbyname('DURATA').AsInteger;
    RichiestiDOSE.AsFloat := ds.Fieldbyname('DOSE').AsFloat;
    if not ds.Fieldbyname('IDENT_FK').IsNull then
       RichiestiIDENT_FK.AsString := ds.Fieldbyname('IDENT_FK').AsString;
    RichiestiCODICIRAD_FK.AsInteger := ds.Fieldbyname('PKCODICIRAD').AsInteger;
{
    if not ds.Fieldbyname('GRESAMI_FK').IsNull then
       RichiestiGRESAMI_FK.AsInteger := ds.Fieldbyname('GRESAMI_FK').AsInteger;
}

    if (ds.FindField('CESPECIFIC')<>nil) and (ds.Fieldbyname('CESPECIFIC').AsInteger>0) then
    begin
       RichiestiCESPECIFIC.AsInteger := ds.Fieldbyname('CESPECIFIC').AsInteger;
    end
    else begin
       RichiestiCESPECIFIC.AsInteger := 0;
    end;

    if RichiestiCESPECIFIC.AsInteger>0 then
    begin
        FSelezSpec := TFSelezSpec.Create(nil);
        RichSpecxPrest.Filtered := False;
        RichSpecxPrest.Filter := format('PROGRESSIVO_RIGA = %d',[RichiestiPROGRESSIVO_RIGA.AsInteger]);
        RichSpecxPrest.Filtered := True;
        try
           FSelezSpec.sSpecxPrest.Dataset := RichSpecxPrest;
           FSelezSpec.sPrestazioni.DataSet := Richiesti;
           if not FSelezSpec.CaricaSpecxEsami then
           begin
             if FSelezSpec.ShowModal=mrCancel then
             begin
                CancellaSpecxPrest(RichiestiPROGRESSIVO_RIGA.AsInteger);
                Richiesti.Cancel;
                Exit;
             end;
           end;
        finally
           RichSpecxPrest.Filtered := False;
           FSelezSpec.Free;
        end;
    end;

    if (RichiestiCESPECIFIC.AsInteger<>2) then
    begin
      FDMCommon.PrestTar.close;
      FDMCommon.PrestTar.Parambyname('IDENT_FK').AsString := ds.Fieldbyname('IDENT_FK').AsString;
      FDMCommon.PrestTar.Parambyname('LEG_CODICE').AsString := TPrenoLEG_CODICE.AsString;
      FDMCommon.PrestTar.open;
      RichiestiIMPORTO.asFloat := FDMCommon.PrestTarTAR_TICKET.asFloat;
    end;

    if (TPrenoESENTE.AsInteger=1) or
       ((TPrenoESENTE.AsInteger=2) and
        (not CodiciEsenti.Active or
         CodiciEsenti.Locate('IDENT_FK',RichiestiIDENT_FK.AsString,[]))) then
        RichiestiESENTE.AsInteger := 1
    else
        RichiestiESENTE.AsInteger := 0;

    RichiestiBRANCA.AsString := ds.Fieldbyname('BRANCA').AsString;
    RichiestiDESCBRANCA.AsString := ds.Fieldbyname('DESCBRANCA').AsString;

{
    if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) and not ds.Fieldbyname('MAGART_FK').IsNull then
    begin
       RichiestiMAGART_FK.AsInteger := ds.Fieldbyname('MAGART_FK').AsInteger;
       RichiestiQR.AsFloat := ds.Fieldbyname('QR').AsFloat;
    end;
}
    Richiesti.Post;
end;

procedure TFPrenotaNew.CancellaSpecxPrest(prg: Integer);
begin
    RichSpecxPrest.Filtered := False;
    RichSpecxPrest.Filter := format('PROGRESSIVO_RIGA = %d',[prg]);
    RichSpecxPrest.Filtered := True;
    while not RichSpecxPrest.eof do
        RichSpecxPrest.Delete;
end;

procedure TFPrenotaNew.CaricaCodice(const cod: string);
begin
  Esami.Filtered := false;
  if not Esami.Locate('CODICE',cod,[]) then
     exit;
  if (FDMCommon.LeggiPostoLavoroCHECK_NO_PRESTMULT.AsInteger=0) and
      Richiesti.Locate('CODICE',cod,[]) then
  begin
      MsgDlg(format(RS_PrestGiaCaricata,[cod]),'', ktWarning, [kbOK]);
      exit;
  end;


{$IFDEF MEDICORNER}
  if (Esami.Fieldbyname('DEVICE').AsInteger>0) and Richiesti.Locate('BRANCA',Esami.Fieldbyname('BRANCA').AsString,[]) then
  begin
      MsgDlg(format(RS_TipoEsameGiaCaricato,[Esami.Fieldbyname('BRANCA').AsString]),'', ktWarning, [kbOK]);
      exit;
  end;
{$ENDIF}


  if Esami.Fieldbyname('COMPOSTO').AsInteger=0 then
  begin

    LoadPrestazione(Esami, -1);

    cxCodice.Text := '';
    cxDescrizione.Text := '';
  end
  else begin
      Composto.Parambyname('codicirad_fk').AsInteger := Esami.Fieldbyname('PKCODICIRAD').AsInteger;
      Composto.open;
      try
         while not Composto.eof do
         begin
            LoadPrestazione(Composto, CompostoPKGRUPPIPREST.AsInteger);
            Composto.Next;
         end;
      finally
         Composto.close;
      end;
      cxCodice.Text := '';
      cxDescrizione.Text := '';
  end;

end;


procedure TFPrenotaNew.CancellaEsameExecute(Sender: TObject);
begin
  Richiesti.Delete;
end;

procedure TFPrenotaNew.CancellaEsameUpdate(Sender: TObject);
begin
  CancellaEsame.Enabled := not Richiesti.IsEmpty;
end;

procedure TFPrenotaNew.ConfermaPrenotazioneExecute(Sender: TObject);
var
  i: integer;
begin

  FStampaAvvisi := TFStampaAvvisi.Create(nil);
  try
    FStampaAvvisi.xDataset := TAstaClientDataset(TPreno);
    FStampaAvvisi.Caption := 'Stampe prenotazione';
    FStampaAvvisi.CaricaStampe := 10;
    if {(FStampaAvvisi.daStampare=0) or}
       (FStampaAvvisi.ShowModal=mrOk) then
    begin
       FInRegistrazione := false;
       for i:=0 to FListaRich.Count-1 do
          FListaRich[i].ConfermaPrenotazioni(TPrenoIMPEGNATIVE_FK.AsInteger);
    end;

  finally
    FStampaAvvisi.Free;
    FStampaAvvisi := nil;
  end;

  if not FInRegistrazione then
     aNuovaPrenotazione.Execute;

end;

procedure TFPrenotaNew.ConfermaPrenotazioneUpdate(Sender: TObject);
begin
  ConfermaPrenotazione.Enabled := InRegistrazione;
end;

function TFPrenotaNew.InRegistrazione: boolean;
var
  i: integer;
begin
   result := not FDMCommon.AstaCut.IsEmpty and (cxPageControl.ActivePage=cxTabPreno);
   i:=0;
   while not result and (i<FListaRich.Count) do
   begin
     result := FListaRich[i].RegistrazioneInCorso;
     inc(i);
   end;
{
   if not result and FInRegistrazione then
   begin
     AnnullaPreno;
   end;
}
end;


procedure TFPrenotaNew.AnnullaPrenotazioniExecute(Sender: TObject);
begin
  if (MsgDlgPos(RS_Pren_Msg_CCan, '', ktConfirmation, [kbYes, kbNo], dfSecond) = mrYes) then
  begin
     AnnullaPreno;
  end;

end;

procedure TFPrenotaNew.AnnullaPreno;
var
  i: integer;
begin
    for i:=0 to FListaRich.Count-1 do
       FListaRich[i].AnnullaPrenotazioni;

    FDMCommon.AstaCut.Empty;
    FDMCommon.AstaDett.Empty;

    Impegnative.Parambyname('pkimpegnative').AsInteger := TPrenoIMPEGNATIVE_FK.AsInteger;
    Impegnative.syRefresh;
    if not Impegnative.IsEmpty then
    begin
       Impegnative.delete;
    end;
    TPrenoIMPEGNATIVE_FK.Clear;

    SettaTutti;
    FInRegistrazione := false;

    if not dxDockPanel1.Visible then
       aNuovaPrenotazione.Execute;

end;


procedure TFPrenotaNew.AnnullaPrenotazioniUpdate(Sender: TObject);
begin
  AnnullaPrenotazioni.Enabled := InRegistrazione;
end;

procedure TFPrenotaNew.QyRicPrenoBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
	Sender.Parambyname('assistibili_fk').AsInteger := TPrenoPKASSISTIBILI.AsInteger;
	Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  sender.Parambyname('lingua').AsString := gbllingua;
end;


procedure TFPrenotaNew.PuntaDiagnostica;
var
  Item: TsyFrame;
  i: integer;
{$IFDEF CON_PRENOTEST}
  pkref: string;
  qq,rf: integer;
  xcod, xriga: string;
  durata: integer;
  slstd: integer;
  dtp: TDateTime;
{$ENDIF}
  fp: TFrameProperty;
begin

//  SettaBottone(QyRicPrenoDIAGNOSTICA_FK.AsInteger,true);
  TriagexImp.Parambyname('pkimpegnative').AsInteger := qyRicPrenoPKIMPEGNATIVE.AsInteger;
  TriagexImp.syRefresh;

  FListaRich.Clear;

//  QyStorEsami.DisableControls;

// 	 cxGridRicPrenoPrenotazioni.Controller.FocusedRecord.Expand(True);
  cxGridRicPrenoEsami.BeginUpdate;
  cxGridRicPrenoEsami.DataController.BeginLocate;

{$IFDEF CON_PRENOTEST}

    RileggiDiagnostiche.Parambyname('impegnative_fk').AsInteger := qyRicPrenoPKIMPEGNATIVE.AsInteger;
    RileggiDiagnostiche.syRefresh;

    while not RileggiDiagnostiche.eof do
    begin
       rf := RileggiDiagnosticheDIAGNOSTICA_FK.AsInteger;
       pkref := RileggiDiagnostichePKTRIAGE.AsString;
       xcod := '';
       xriga := '';
       durata := 0;
       slstd := RileggiDiagnosticheSLOT_STANDARD.AsInteger;
       dtp := DateOf(RileggiDiagnosticheORA_INIZIO.AsDateTime);
       qq := 0;

       Item := TPrenoTest.Create(nil);
       Item.Parent := Panel3;
       Item.InternalIndex := FListaRich.Count;
       FListaRich.Add(Item);

       Item.xCambiaSomministrazione := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);
       Item.fConEsami := dxConEsami.Down;
       Item.fBloccate := true; //dxBloccati.Down;
//JRT 2675     Item.fAttivita := RileggiDiagnosticheTIPO_ATTIVITA_FK.AsString; // chr(1);
       Item.fAttivita := chr(1);
//
       Item.fOspRich := RileggiDiagnosticheOSP_RICH.AsString;   // ''
       Item.fAgendeEsclusive := (RileggiDiagnosticheAGENDE_ESCLUSIVE.AsInteger=1);
       Item.fSoloLibere := false; // dxLibere.Down;
       Item.fCopiaVisibile := true;
       Item.fAncheInterni := dxAgendeInterni.Down;

       repeat
          if qq>0 then
          begin
             xcod := xcod + ',' + RileggiDiagnosticheCODICE.AsString;
             xriga := xriga + ',' + RileggiDiagnostichePROGRESSIVO_RIGA.AsString;
          end
          else begin
             xcod := RileggiDiagnosticheCODICE.AsString;
             xriga := RileggiDiagnostichePROGRESSIVO_RIGA.AsString;
          end;
          durata := durata + RileggiDiagnosticheDURATA.AsInteger;
          inc(qq);
          RileggiDiagnostiche.Next;
       until RileggiDiagnostiche.eof or (rf<>RileggiDiagnosticheDIAGNOSTICA_FK.AsInteger);

    //   fp.vTIPO := Richiesti.Fieldbyname('pkcodicirad').AsInteger;
//       fp.vReparti := qyRicPrenoREPARTI_FK.AsInteger;
       fp.vCodici := xcod;
       fp.NrEsami := qq;
       fp.vRighe := xriga;
       fp.Titolo := qyRicPrenoDESC_REPARTO.AsString;

    {
       fp.Titolo := Richiesti.Fieldbyname('codice').AsString + ' - ' +
                    Richiesti.Fieldbyname('descrizione').AsString + ' ('+
                    descattivita + ')';
    }
       fp.vDurata := durata;
       fp.NumberOfDays := dxGiorni.EditValue;
       fp.ZoomValue := slstd;
//       fp.ZoomPos := dxPeriodo.ItemIndex+1;
       fp.ZoomPos := 0;
       for i:=1 to MAXPOSZOOM do
          if dZoom[i]>=fp.ZoomValue then
          begin
             fp.ZoomPos := i;
             break;
          end;
       if fp.ZoomPos>0 then
          dxPeriodo.ItemIndex := fp.ZoomPos-1;

       fp.Preno := nil; // TPreno;
       fp.Richiesti := nil; // Richiesti;
       fp.RichSpecxPrest := nil;
       fp.AltriPresidi := FxAltriPresidi;
       fp.xIntervallo := dxIntervallo.EditValue;

       Item.ApriClient(dxBarManager1,fp);

       Item.Sincronizza(dtp,false);
       Item.xDay := dtp;
       Item.SelezionaPreno(pkref);

    end;

{$ELSE}

  for i:=1 to TriagexImp.recordcount do
  begin

   Item := TPrenoDiagn.Create(nil);
   Item.Parent := Panel3;
   Item.InternalIndex := FListaRich.Count;
   FListaRich.Add(Item);

   QyLkServizi.Locate('PKSERVIZI',TriagexImpDIAGNOSTICA_FK.AsInteger,[]);
   fp.ZoomValue := QyLkServiziSLOT_STANDARD.AsInteger;
   fp.ZoomPos := dxPeriodo.ItemIndex+1;
   fp.Titolo := QyLkServiziDESC_SERVIZIO.AsString;
   fp.vServizi := TriagexImpDIAGNOSTICA_FK.AsInteger;
   fp.vReparti := TriagexImpREPARTI_FK.AsInteger;
   fp.vDurata := TriagexImpDURATA.AsInteger;
   fp.NumberOfDays := dxGiorni.IntValue;

   fp.Preno := nil;
   Item.fAttivita := TriagexImpTIPO_ATTIVITA_FK.AsString;
   Item.fOspRich := TriagexImpOSP_RICH.AsString;
   Item.xCambiaSomministrazione := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);

   Item.fConEsami := dxConEsami.Down;
   Item.fBloccate := true; //dxBloccati.Down;
   Item.fSoloLibere := false; // dxLibere.Down;
   Item.fCopiaVisibile := true;
   Item.fAncheInterni := dxAgendeInterni.Down;
   Item.ApriClient(dxBarManager1,fp);
   CaricaTabDiagn(DateOf(TriagexImpORA_INIZIO.AsDateTime),TriagexImpDIAGNOSTICA_FK.AsInteger);
   Item.SelezionaPreno(TriagexImpPKTRIAGE.AsString);

   TriagexImp.Next;

  end;

{$ENDIF}

   cxGridRicPrenoEsami.DataController.EndLocate;
   cxGridRicPrenoEsami.EndUpdate;

  PostMessage(Handle,SY_RESIZEALL,0,0);

//  QyStorEsami.Filtered := false;
//  QyStorEsami.EnableControls;

end;

(*
procedure TFPrenotaNew.SettaBottone(xserv: integer; cosa: boolean);
var
  i: integer;
begin
  for i:=0 to vbDiagn.Count-1 do
     if Assigned(vbDiagn[i]) and (vbDiagn[i].Tag=xserv) then
     begin
        vbDiagn[i].Down := cosa;
        break;
     end;
end;
*)

procedure TFPrenotaNew.QyRicPrenoAfterQuery(
  Sender: TAstaBaseClientDataSet);
begin
//     QyStoppre.syRefresh;
//     QyStorEsami.syRefresh;

end;

procedure TFPrenotaNew.SendPortDataToForm(const s: string; lungh: integer);
var
  i,xpk: integer;
  tipo: char;
  numero: integer;
  barcode: string;
begin

  inherited;

  if (lungh=16) and (TesseraLetta.CodiceFiscale<>'') and (TesseraLetta.DataEsame<>0) and (CompareDate(TesseraLetta.DataEsame,Date())<>EqualsValue) then
     cxPageControl.ActivePage := cxTabRicerca;

    if (lungh in [5,10,16]) and (dxDataAgenda.Visible=ivAlways) then
    begin
       for i:=1 to FListaRich.Count do
           FListaRich[i-1].SendPortDataToForm(s,lungh);
    end
    else if (lungh in [5,10,16]) and (cxPageControl.ActivePage=cxTabPreno) then
     case lungh of
   5: begin
          LettoConPistola := true;
          if TPrenoIMP_OBBLIG.AsInteger=0 then
          begin
            TPrenoOSP_RICH.AsString := FDMCommon.LeggiPostoLavoroDEF_OSP_RICH.AsString;
            FDMCommon.LkOspedali.Locate('CODICE',TPrenoOSP_RICH.AsString,[]);
//            cxProvenienzaPropertiesCloseUp(self);
          end;
          TPrenoNR_IMPEGNATIVA.AsString := s + TPrenoNR_IMPEGNATIVA.AsString;
      end;
  10: begin
          if TPrenoIMP_OBBLIG.AsInteger=0 then
          begin
            TPrenoOSP_RICH.AsString := FDMCommon.LeggiPostoLavoroDEF_OSP_RICH.AsString;
            FDMCommon.LkOspedali.Locate('CODICE',TPrenoOSP_RICH.AsString,[]);
//            cxProvenienzaPropertiesCloseUp(self);
          end;
          TPrenoNR_IMPEGNATIVA.AsString := Copy(TPrenoNR_IMPEGNATIVA.AsString,1,5) + s;
//          cxCognome.SetFocus;
          if cxCodiceEsenzione.CanFocus then
             cxCodiceEsenzione.SetFocus;
      end;
  16: begin
         xCF := s;
         aRicercaPaziente.Execute;
      end;
     end
  else if (lungh in [11,16]) and (cxPageControl.ActivePage=cxTabRicerca) then
  begin
     tipo := s[1];
     barcode := Copy(s,3,lungh-2);
     numero := StrToIntDef(barcode,-1);
     if (lungh=16) or (tipo in ['T',' ','@','A']) then
     begin
        if Assigned(FCercaBarCode) then
        begin
           FCercaBarCode.ModalResult := mrCancel;
           FCercaBarCode.Release;
        end
        else begin
          if (tipo in ['T',' ','@','A']) then
          begin
            FCercaBarCode := TFCercaBarCode.Create(nil);
            try
              xpk := -1;
              if tipo='A' then
              begin
                FCercaBarCode.CercaImpegnativa.Parambyname('pkimpegnative').AsInteger := numero;
                FCercaBarCode.CercaImpegnativa.open;
                if FCercaBarCode.CercaImpegnativa.IsEmpty then
                   MsgDlg( format(RS_AccNonTrovata,[numero]), '', ktError, [kbOk], dfFirst)
                else if (FCercaBarCode.CercaBarCodeSTATOVISITA.AsInteger<>20) then
                   FCercaBarCode.ShowModal
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
                 FCercaBarCode.Free;
                 FCercaBarCode := nil;
            end;
          end
          else begin
            xpk := TesseraLetta.xassistibili_fk;
          end;
           if xpk>=0 then
           begin
             TPrenoPKASSISTIBILI.AsInteger := xpk;
             PuntaPazientePrenotato(false);
             if tipo='A' then
             begin
                if QyRicPreno.Locate('PKIMPEGNATIVE',numero,[]) then
                   PuntaDiagnostica;
             end
             else begin
                if QyRicPreno.Locate('PKTRIAGE',numero,[]) then
                   PuntaDiagnostica;
             end;
           end;
        end;
     end;
  end;
end;


function TFPrenotaNew.IsFormReady: boolean;
begin
  result := {Active and} (FListaRich.Count=0);
end;

procedure TFPrenotaNew.cxCodiceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
  VK_F10: CodicePress;
  VK_RETURN:  if dxLayoutDescrizione.Visible then
                 Key := VK_TAB
              else
                 CodicePress;
  end;
end;

procedure TFPrenotaNew.cxDescrizioneKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
  VK_F10: DescrPress;
  end;
end;

procedure TFPrenotaNew.FiltraQuery(const cosa: string);
begin
     Esami.Filtered := false;
     Esami.Filter := cosa;
     Esami.Filtered := true;
end;

procedure TFPrenotaNew.CompostoBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
	Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;

end;

procedure TFPrenotaNew.TPrenoBeforePost(DataSet: TDataSet);
begin

  if TPrenoOSP_RICH.IsNull then
  begin
    MsgDlg(format(RIS_CampoObbligatorio,[TPrenoOSP_RICH.DisplayLabel]), '', ktWarning, [kbOK]);
    TPrenoOSP_RICH.FocusControl;
    Abort;
  end;

  if (TPrenoSAN_IDENT.AsInteger=1) and not ConfermaAnagrafica(TPrenoPKASSISTIBILI.AsInteger,FDMCommon.CalcolaStatolancio(10,'E')) then
  begin
     MsgDlg(RS_AnagraficaIncompleta,'', ktWarning, [kbOK]);
     Abort;
  end;

  ControllaImpegnativa;

end;

procedure TFPrenotaNew.ControllaImpegnativa;

  function verificaNroImpegnativa(const nro: string; pki: integer): Boolean;
  begin
    try
       with qVerificaNumero do
       begin
          Close;
          Parambyname('NR_IMPEGNATIVA').AsString := nro;
          Parambyname('PKIMPEGNATIVE').AsInteger := pki;
          Open;
       end;
       result := not qVerificaNumero.IsEmpty;
       if not result then
          msgDlg(format(RS_TIC_EsisteImpegnat,[qVerificaNumeroNOMINATIVO.AsString,qVerificaNumeroPKIMPEGNATIVE.AsInteger]),
           '', ktWarning, [kbOK], dfFirst);

    finally
       qVerificaNumero.Close;
    end;
  end;

  function VerificaDataImp: Boolean;
  begin
    result := true;

       if (FDMCommon.LeggiPostoLavoroCHK_DATA_IMPEGNATIVA.AsInteger=1) and
          (TPrenoDATA_IMPEGNATIVA.asDateTime > 0) and
          (TPrenoDATA_PRESCRIZIONE.asDateTime > 0) and
          (FDMCommon.Param_ticketGGVALIDITA.asInteger > 0) then
       begin
          if (TPrenoDATA_PRESCRIZIONE.asDateTime < TPrenoDATA_IMPEGNATIVA.asDateTime) then
          begin
             msgDlg(RS_TIC_DataRichiestaNOK, '', ktWarning, [kbOK], dfFirst);
             cxDataImpegnativa.SetFocus;
             result := False;
             Exit;
          end;

          if (DaysBetween(TPrenoDATA_IMPEGNATIVA.asDateTime,TPrenoDATA_PRESCRIZIONE.asDateTime) > FDMCommon.Param_ticketGGVALIDITA.asInteger) then
          begin
             msgDlg( Format(RS_TIC_DataImpegnNOK, [FDMCommon.Param_ticketGGVALIDITA.asInteger]), '', ktWarning, [kbOK], dfFirst);
             cxDataImpegnativa.SetFocus;
             result := False;
          end;
       end;

  end;

begin

  if (TPrenoIMP_OBBLIG.AsInteger in [1,3]) and (gblTipo_Preno=1) then
  begin

      if (TPrenoNR_IMPEGNATIVA.AsString='') then
      begin
        MsgDlg(format(RIS_CampoObbligatorio,[TPrenoNR_IMPEGNATIVA.DisplayLabel]), '', ktWarning, [kbOK]);
        TPrenoNR_IMPEGNATIVA.FocusControl;
        Abort;
      end;
    {
      if (TPrenoDATA_PRESCRIZIONE.asDateTime=0) then
      begin
        MsgDlg(format(RIS_CampoObbligatorio,[TPrenoDATA_PRESCRIZIONE.DisplayLabel]), '', ktWarning, [kbOK]);
        TPrenoDATA_PRESCRIZIONE.FocusControl;
        Abort;
      end;
    }

{
      if not trovaImpegnativa then
      begin
         Abort;
      end;

      if not VerificaDataImp then
      begin
         Abort;
      end;
}

  end;

  if (gblTipo_Preno=1) and (FDMCommon.LeggiPostoLavoroCHK_DATA_IMPEGNATIVA.AsInteger=1) {JRT 498} and (TPrenoTIPO_FATTURA.AsInteger<>3) then
  begin
    if (TPrenoDATA_IMPEGNATIVA.asDateTime=0) then
    begin
      MsgDlg(format(RIS_CampoObbligatorio,[TPrenoDATA_IMPEGNATIVA.DisplayLabel]), '', ktWarning, [kbOK]);
      TPrenoDATA_IMPEGNATIVA.FocusControl;
      Abort;
    end;
    if TPrenoTIPO_ACCESSO_FK.IsNull then
    begin
      MsgDlg(format(RIS_CampoObbligatorio,[TPrenoTIPO_ACCESSO_FK.DisplayLabel]), '', ktWarning, [kbOK]);
      TPrenoTIPO_ACCESSO_FK.FocusControl;
      Abort;
    end;
    if TPrenoTIPO_RICETTA_FK.IsNull then
    begin
      MsgDlg(format(RIS_CampoObbligatorio,[TPrenoTIPO_RICETTA_FK.DisplayLabel]), '', ktWarning, [kbOK]);
      TPrenoTIPO_RICETTA_FK.FocusControl;
      Abort;
    end;
  end;

  if (gblTipo_Preno=1) and (FDMCommon.LeggiPostoLavoroCHECK_MED_BASE.AsInteger=1) and cxMedicoBase.Enabled then
  begin
      if ((TPrenoPROVIMP.AsString<>'I') and (TPrenoMED_BASE.IsNull)) or
         ((TPrenoPROVIMP.AsString='I') and (TPrenoTIPO_FATTURA.AsInteger<>3) and (TPrenoCOD_MED_INT.IsNull)) then
      begin
        MsgDlg(format(RIS_CampoObbligatorio,[TPrenoMED_BASE.DisplayLabel]), '', ktWarning, [kbOK]);
        TPrenoNOMEMEDICO.FocusControl;
        Abort;
      end;
  end;

end;


procedure TFPrenotaNew.cxCognomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not (Key in [VK_F10,VK_RETURN,VK_TAB]) then
     FRicercaFatta := false
  else if (Key=VK_RETURN) then
     Key := VK_TAB;
end;

procedure TFPrenotaNew.cxNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not (Key in [VK_F10,VK_RETURN,VK_TAB]) then
     FRicercaFatta := false
  else if (Key in [VK_F10,VK_RETURN,VK_TAB]) and not FRicercaFatta then
     aRicercaPaziente.Execute;
end;

procedure TFPrenotaNew.cxRicCognomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not (Key in [VK_F10,VK_RETURN,VK_TAB]) then
     FRicercaFatta := false
  else if (Key=VK_RETURN) then
     Key := VK_TAB;
end;

procedure TFPrenotaNew.AbilitaCampi;
begin

  TPrenoIMP_OBBLIG.AsInteger := FDMCommon.LkOspedaliIMPEGNATIVA.AsInteger;
  cxNumeroImpegnativa.Enabled := (TPrenoIMP_OBBLIG.AsInteger in [1,3]) and (cxProvenienza.Text<>'');
  if (FDMCommon.LkOspedaliMASK.AsString<>cxNumeroImpegnativa.Properties.EditMask) then
     cxNumeroImpegnativa.Properties.EditMask := FDMCommon.LkOspedaliMASK.AsString;

  cxCodiceEsenzione.Enabled := (TPrenoTIPO_FATTURA.AsInteger<>3) and (cxProvenienza.Text<>'');
  cxMedicoBase.Enabled := (TPrenoTIPO_FATTURA.AsInteger<>3) and (cxProvenienza.Text<>'');

  cxNumeroImpegnativa.Clear;
  TPrenoNR_IMPEGNATIVA.Clear;

  dxGroupDataImpegnativa.Enabled := (FDMCommon.LeggiPostoLavoroCHK_DATA_IMPEGNATIVA.AsInteger>=1) and (TPrenoTIPO_FATTURA.AsInteger<>3) and (cxProvenienza.Text<>'');

  {JRT 498}
  if (FDMCommon.LeggiPostoLavoroCHK_DATI_IMPEGNATIVA.AsInteger=1) and not dxGroupDataImpegnativa.Enabled then
  begin
     TPrenoDATA_IMPEGNATIVA.Clear;
     TPrenoTIPO_ACCESSO_FK.Clear;
     TPrenoTIPO_RICETTA_FK.Clear;
     {JRT 3126}
     TPrenoRICETTA_INF.Clear
  end;

end;

procedure TFPrenotaNew.cxGrid1DBTableView1DataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  cxGridPrestazioni.DataController.Summary.FooterSummaryValues[0] := TPrenoIMPORTO_PAGATO.AsFloat;
end;

procedure TFPrenotaNew.tbSelezioneNewRecord(DataSet: TDataSet);
begin
  tbSelezioneNUM_POSTI.AsInteger := 0;
end;

procedure TFPrenotaNew.cxProvenienzaPropertiesCloseUp(Sender: TObject);
begin
  //
end;


procedure TFPrenotaNew.cxMedicoBaseSearch(Sender: TObject;
  var trovato: Integer; var codice: Variant; const cerca: String);
begin

   if cxMedicoBase.LookupTable=MedBase then
   begin
     FRicMedici := TFRicMedici.Create(nil);
     try
       FRicMedici.QRicerca.OpenNoFetch;
       if cerca<>'' then
       begin
         FRicMedici.QRicercaNOMINATIVO.AsString := cerca;
         FRicMedici.AttivaRicerca.Execute;
       end;
       trovato := FRicMedici.ShowModal;
       if trovato=mrOk then
          codice := FRicMedici.QRicercaCODICE.Value;

     finally
       FRicMedici.Free;
     end;
   end
   else begin
{$IFNDEF MEDICORNER}
     FRicMedInt := TFRicMedInt.Create(nil);
     try
       FRicMedInt.QRicerca.OpenNoFetch;
       if cerca<>'' then
       begin
         FRicMedInt.QRicercaNOMINATIVO.AsString := cerca;
         FRicMedInt.AttivaRicerca.Execute;
       end;
       trovato := FRicMedInt.ShowModal;
       if trovato=mrOk then
          codice := FRicMedInt.QRicercaPKPERSONALE.Value;

     finally
       FRicMedInt.Free;
       FRicMedInt := nil;
     end;
{$ENDIF}
   end;

end;

procedure TFPrenotaNew.cxCodiceEsenzionePropertiesCloseUp(Sender: TObject);
begin

  if cxCodiceEsenzione.text='' then
  begin
    TPrenoESENTE.Clear;
//    TPrenoTIPO_ESENZIONE.AsInteger := 2;
    TPrenoDESCR_ESENZIONE.Clear;
    CodiciEsenti.close;
    cxGridPrestazioniESENTE.Options.Editing := false;
  end
  else begin
    cxGridPrestazioniESENTE.Options.Editing := (FDMCommon.LkEsenzioneESENTE.AsInteger=2);
    TPrenoESENTE.AsInteger := FDMCommon.LkEsenzioneESENTE.AsInteger;
//    TPrenoTIPO_ESENZIONE.AsInteger := FDMCommon.LkEsenzioneTET_IDENT.AsInteger;
    TPrenoDESCR_ESENZIONE.AsString := FDMCommon.LkEsenzioneDESCR.AsString;

    CodiciEsenti.close;
    if FDMCommon.LkEsenzioneCON_PRESTAZIONI.AsInteger=1 then
    begin
      CodiciEsenti.Parambyname('esenztick_fk').AsString := VarToStr(cxCodiceEsenzione.EditValue);
      CodiciEsenti.open;
    end;
  end;
  AssegnaEsenzione;

end;

procedure TFPrenotaNew.aCercaAgePrenoExecute(Sender: TObject);
begin
  PuntaDiagnostica;

end;

procedure TFPrenotaNew.aCercaAgePrenoUpdate(Sender: TObject);
begin

  aCercaAgePreno.Enabled := not QyRicPreno.IsEmpty;

end;

procedure TFPrenotaNew.cxDescrizionePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  DescrPress;
end;

procedure TFPrenotaNew.LeggiBarCode(var Message: TMessage);
begin
  inherited;
  if BarCodeLetto<>'' then
     SendPortDataToForm(BarCodeLetto, Length(BarCodeLetto));
end;

procedure TFPrenotaNew.LeggiTessera(var Message: TMessage);
begin
  if TesseraLetta.CodiceFiscale<>'' then
  begin
     SendPortDataToForm(TesseraLetta.CodiceFiscale, Length(TesseraLetta.CodiceFiscale));
     TesseraLetta.CodiceFiscale := '';
  end;
end;


procedure TFPrenotaNew.aRistampaExecute(Sender: TObject);
//var
//  i: integer;
begin

  FStampaAvvisi := TFStampaAvvisi.Create(nil);
  try
    FStampaAvvisi.TuttiRecord := false;
    FStampaAvvisi.xDataset := qyRicPreno;
//    FStampaAvvisi.ReportDataSource.Dataset := qyRicPreno;
    FStampaAvvisi.Caption := 'Stampe prenotazione';
    FStampaAvvisi.CaricaStampe := 10;
    FStampaAvvisi.Conferma.Enabled := false;
    FStampaAvvisi.Conferma.Visible := false;
    FStampaAvvisi.ShowModal;
{
    if ((FStampaAvvisi.ListStampe.Count=0) and (FStampaAvvisi.ListEtichette.Count=0)) or
       (FStampaAvvisi.ShowModal=mrOk) then
    begin
       FInRegistrazione := false;
       for i:=0 to FListaRich.Count-1 do
          FListaRich[i].ConfermaPrenotazioni(qyRicPrenoPKIMPEGNATIVE.AsInteger);
    end;
}
  finally
    FStampaAvvisi.Free;
    FStampaAvvisi := nil;
  end;

end;

procedure TFPrenotaNew.aRistampaUpdate(Sender: TObject);
begin
  aRistampa.Enabled := (FListaRich.Count>0) and not gblCallCenter;
end;

procedure TFPrenotaNew.aCancellaPrenoExecute(Sender: TObject);
var
  i: integer;
  avanti: boolean;
  rr: integer;
  tecnico: integer;
  servizio: integer;
  motivocanc: integer;
  anchealtre: boolean;
  pki: Integer;
  TempUM: TAstaUpdateMethod;
begin

{JRT 5462}
  if (FDMCommon.LeggiPostoLavoroCHECK_MOTIVOCANC.AsInteger=1) then
  begin
    FConfermaCancella := TFConfermaCancella.Create(nil);
    try
      FConfermaCancella.xpk := QyRicPrenoPKTRIAGE.AsInteger;
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
     avanti := (MsgDlgPos(RS_Pren_Msg_CCan, '', ktConfirmation, [kbYes, kbNo], dfSecond) = mrYes);
     tecnico := gblCodUtente;
     servizio := gblpkserv;
     motivocanc := 0;
  end;
{}

  if avanti then
  begin

     anchealtre := false;
     pki := qyRicPrenoPKIMPEGNATIVE.AsInteger;
     ControllaAltrePreno.Parambyname('impegnative_fk').AsInteger := pki;
     ControllaAltrePreno.Parambyname('pktriage').AsInteger := QyRicPrenoPKTRIAGE.AsInteger;
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

//     if (oldStato<>1) then
     begin
       TempUM := QyRicPreno.UpdateMethod;
       QyRicPreno.UpdateMethod := umManual;
       QyRicPreno.Edit;
       QyRicPrenoSTATOVISITA.AsInteger := motivocanc;
       QyRicPrenoUSER_ID.AsInteger := tecnico;
       QyRicPrenoSERVIZI_FK.AsInteger := servizio;
{
       if notecanc<>'' then
          QyPrenoNOTE_PRENO.AsString := notecanc
       else
          QyPrenoNOTE_PRENO.Clear;
}
       QyRicPreno.Post;
       QyRicPreno.UpdateMethod := TempUM;
     end;
     QyRicPreno.Delete;

     CancellaImpegnativa.Parambyname('pkimpegnative').AsInteger := pki;
     CancellaImpegnativa.Parambyname('user_id').AsInteger := gblcodutente;
     CancellaImpegnativa.ExecCommit;

     if anchealtre then
        qyRicPreno.syRefresh;

    FListaRich.Clear;

    FDMCommon.AstaCut.Empty;
    FDMCommon.AstaDett.Empty;
    PostMessage(Handle,SY_REFRESHCALENDARI,0,0);

  end;

end;

procedure TFPrenotaNew.aCancellaPrenoUpdate(Sender: TObject);
begin
  aCancellaPreno.Enabled := (FListaRich.Count>0);
end;

procedure TFPrenotaNew.cxGridRicPrenoEsamiDataControllerDataModeControllerDetailFirst(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
begin
  FDMCommon.DetailFirst(ADataSet,AMasterDetailKeyFieldNames,AMasterDetailKeyValues,AReopened);
end;

function TFPrenotaNew.cxGridRicPrenoEsamiDataControllerDataModeControllerDetailIsCurrentQuery(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant): Boolean;
begin
  with (ADataSet as TAstaClientDataset) do
    Result := ParamByName('triage_fk').Value = AMasterDetailKeyValues;

end;

procedure TFPrenotaNew.cxGridPrestazioniESENTEPropertiesEditValueChanged(
  Sender: TObject);
begin
  PostMessage(Handle,SY_CHECKCHANGED,0,0);
end;

procedure TFPrenotaNew.PostValore(var Message: TMessage);
begin
  if (Richiesti.State in dsEditModes) then
     Richiesti.Post;
end;

procedure TFPrenotaNew.aCercaSpazioExecute(Sender: TObject);
begin

//  if (TPreno.State in dsEditModes) then
//     TPreno.Post;
  SettaTutti;
  EditCodici(false);

end;

procedure TFPrenotaNew.aCercaSpazioUpdate(Sender: TObject);
begin
  aCercaSpazio.Enabled := not Richiesti.IsEmpty and not InRegistrazione and (cxDataRicerca.Date>0);
end;

procedure TFPrenotaNew.cxRepGridEsenzioniFocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
{
  AFocusedItem.SortOrder := soAscending;
  APrevFocusedItem.SortOrder := soNone;
  Sender.DataController.UpdateItems(False);
}
end;

procedure TFPrenotaNew.syFormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (Key in [49..57]) then
     ScegliFinestra(Key-48);
end;

procedure TFPrenotaNew.ScegliFinestra(Key: integer);
begin
  if FListaRich.Count>=Key then
     FListaRich[Key-1].xSetFocus;
end;


procedure TFPrenotaNew.dxDataAgendaCloseUp(Sender: TObject);
var
  z: integer;
begin
   for z:=0 to FListaRich.Count-1 do
   begin
     FListaRich[z].Sincronizza(dxDataAgenda.EditValue,false);
     FListaRich[z].xDay := dxDataAgenda.EditValue;
   end;

end;

procedure TFPrenotaNew.ImpegnativeBeforeDelete(DataSet: TDataSet);
var
  TempUM: TAstaUpdateMethod;
begin
   TempUM := Impegnative.UpdateMethod;
   Impegnative.UpdateMethod := umManual;
   Impegnative.Edit;
   ImpegnativeUSER_ID.AsInteger := gblcodutente;
   Impegnative.Post;
   Impegnative.UpdateMethod := TempUM;
end;



procedure TFPrenotaNew.CancellaDettaglio(var Message: TMessage);
begin

   if Assigned(FCutPaste) then
   begin
      SendMessage( FCutPaste.Handle,SY_CANCDETTCUTPASTE,Message.WParam,Message.LParam );
   end;

end;

procedure TFPrenotaNew.aTuttoVideoExecute(Sender: TObject);
begin

  if not FInRegistrazione then exit;

  if dxDockPanel1.Visible then
  begin
     dxDockPanel1.Visible := false;
  end
  else begin
    dxDockPanel1.Visible := true;
  end;

end;

procedure TFPrenotaNew.SyRiprenota(var Message: TMessage);
begin
  altriPresidi.Execute;
end;


procedure TFPrenotaNew.SyRiapriPreno(var Message: TMessage);
var
  rf: integer;
  xcod, xriga: string;
  durata: integer;
  qq,slstd: integer;
  dtp: TDateTime;
begin

    FDMCommon.AstaCut.Empty;
    FDMCommon.AstaDett.Empty;

    SettaTutti;
    FInRegistrazione := false;

    aNuovaPrenotazione.Execute;
    Impegnative.Parambyname('pkimpegnative').AsInteger := Longint(Message.LParam);
    Impegnative.syRefresh;

    TPrenoNR_IMPEGNATIVA.AsString := ImpegnativeNR_IMPEGNATIVA.AsString;
    TPrenoPKASSISTIBILI.AsInteger := ImpegnativeASSISTIBILI_FK.AsInteger;
    TPrenoDATA_PRESCRIZIONE.AsDateTime := ImpegnativeDATA_PRESCRIZIONE.AsDateTime;
    if not ImpegnativeTES_IDENT.IsNull then
       TPrenoTES_IDENT.AsString := ImpegnativeTES_IDENT.AsString;
    TPrenoIMPORTO_TOTALE.AsFloat := ImpegnativeIMPORTO_TOTALE.AsFloat;
    TPrenoIMPORTO_PAGATO.AsFloat := ImpegnativeIMPORTO_PAGATO.AsFloat;
    TPrenoIMPORTO_QUOTA.asFloat := ImpegnativeIMPORTO_QUOTA.AsFloat;
    TPrenoTIPO_ATTIVITA.AsString := ImpegnativeTIPO_ATTIVITA_FK.AsString;
    TPrenoOSP_RICH.AsString := ImpegnativeOSP_RICH.AsString;
//           ImpegnativeTIPO_ESENZIONE.AsInteger := TPrenoTIPO_ESENZIONE.AsInteger;
    TPrenoMED_BASE.AsString := ImpegnativeMED_BASE.AsString;
    TPrenoTELEFONO.AsString := ImpegnativeTELEFONO.AsString;
//           ImpegnativePROVENIENZA.AsString := 'E';
//           ImpegnativeSTATO.AsInteger := 1;
    TPrenoURGENZA.AsInteger := ImpegnativeURGENZA.AsInteger;
    TPrenoLEG_CODICE.AsString := ImpegnativeLEG_CODICE.AsString;
    if not ImpegnativeREPARTO_RICH_FK.IsNull then
       TPrenoREPARTO_RICH_FK.AsInteger := ImpegnativeREPARTO_RICH_FK.AsInteger;
    if not ImpegnativeCOD_MED_INT.IsNull then
       TPrenoCOD_MED_INT.AsInteger := ImpegnativeCOD_MED_INT.AsInteger;
    TPrenoIMPEGNATIVE_FK.AsInteger := ImpegnativePKIMPEGNATIVE.AsInteger;

    RiapriPreno.Parambyname('user_id').AsInteger := gblcodutente;
    RiapriPreno.Parambyname('impegnative_fk').AsInteger := Longint(Message.LParam);
    RiapriPreno.ExecCommit;

    RileggiDiagnostiche.Parambyname('impegnative_fk').AsInteger := Longint(Message.LParam);
    RileggiDiagnostiche.syRefresh;
    FBollo := TPrenoIMPORTO_QUOTA.asFloat;
    cxMagg.Checked := (TPrenoIMPORTO_QUOTA.asFloat>0);
    dxLayoutControlQuota.Visible := cxMagg.Checked;
    if not TPrenoTES_IDENT.IsNull then
    begin
      FDMCommon.LkEsenzione.Locate('IDENT',TPrenoTES_IDENT.AsString,[]);
      cxGridPrestazioniESENTE.Options.Editing := (FDMCommon.LkEsenzioneESENTE.AsInteger=2);
    end
    else
      cxGridPrestazioniESENTE.Options.Editing := false;

    FInRicalcolo := true;
    Richiesti.Empty;

    while not RileggiDiagnostiche.eof do
    begin
       rf := RileggiDiagnosticheDIAGNOSTICA_FK.AsInteger;
       xcod := '';
       xriga := '';
       durata := 0;
       slstd := RileggiDiagnosticheSLOT_STANDARD.AsInteger;
       dtp := RileggiDiagnosticheORA_INIZIO.AsDateTime;
       qq := 0;
       repeat
          Richiesti.Append;
          RichiestiPKCODICIRAD.AsInteger := RileggiDiagnosticheCODICIRAD_FK.AsInteger;
          RichiestiCODICE.AsString := RileggiDiagnosticheCODICE.AsString;
          RichiestiDURATA.AsInteger := RileggiDiagnosticheDURATA.AsInteger;
          RichiestiDESCRIZIONE.AsString := RileggiDiagnosticheDESCRIZIONE.AsString;
          RichiestiIDENT_FK.AsString := RileggiDiagnosticheIDENT_FK.AsString;
          RichiestiDOSE.AsFloat := RileggiDiagnosticheDOSE.AsFloat;
          RichiestiPROGRESSIVO_RIGA.AsInteger := RileggiDiagnostichePROGRESSIVO_RIGA.AsInteger;
          RichiestiIMPORTO.AsFloat := RileggiDiagnosticheIMPORTO.AsFloat;
          RichiestiPAGATO.AsFloat := RileggiDiagnostichePAGATO.AsFloat;
          RichiestiESENTE.AsInteger := RileggiDiagnosticheESENTE.AsInteger;
          RichiestiNUMERO_PRESTAZIONE.AsInteger := RileggiDiagnosticheNUMERO_PRESTAZIONE.AsInteger;
          RichiestiPRENOTATO.AsInteger := 1;
          Richiesti.Post;
          if qq>0 then
          begin
             xcod := xcod + ',' + RileggiDiagnosticheCODICE.AsString;
             xriga := xriga + ',' + RileggiDiagnostichePROGRESSIVO_RIGA.AsString;
          end
          else begin
             xcod := RileggiDiagnosticheCODICE.AsString;
             xriga := RileggiDiagnostichePROGRESSIVO_RIGA.AsString;
          end;
          durata := durata + RileggiDiagnosticheDURATA.AsInteger;
          inc(qq);
          RileggiDiagnostiche.Next;
       until RileggiDiagnostiche.eof or (rf<>RileggiDiagnosticheDIAGNOSTICA_FK.AsInteger);
       PrenotaCodici(xcod, xriga, FDMCommon.LeggiPostoLavoroDESCREPARTO.AsString, qq, durata, slstd, ImpegnativeREPARTI_FK.AsInteger);
       FListaRich[FListaRich.Count-1].Sincronizza(dtp,false);
    end;
    FInRicalcolo := false;
//    RicalcolaTotale;
    FInRegistrazione := true;
end;

procedure TFPrenotaNew.ApriAltrePreno(var Message: TMessage);
begin
  inherited;
{$IFNDEF MEDICORNER}
   if not Assigned(FAltrePreno) then
   begin
      FAltrePreno := TFAltrePreno.Create(self);
      FAltrePreno.sAstaCut.Dataset := FDMCommon.AstaTestata;
      FAltrePreno.sAstaDett.Dataset := FDMCommon.AstaDettagli;
   end;
   FAltrePreno.Show;
{$ENDIF}
end;

procedure TFPrenotaNew.altriPresidiExecute(Sender: TObject);
var
  z: integer;
begin
{$IFNDEF MEDICORNER}
  FAltriPresidi := TFAltriPresidi.Create(nil);
  try
     FAltriPresidi.fBloccate := false;
     FAltriPresidi.fAttivita := TPrenoTIPO_ATTIVITA.AsString;
     FAltriPresidi.fOspRich  := TPrenoOSP_RICH.AsString;
     FAltriPresidi.fAgendeEsclusive := (TPrenoAGENDE_ESCLUSIVE.AsInteger=1);
     FAltriPresidi.fAncheInterni := dxAgendeInterni.Down;
     FAltriPresidi.xday := cxDataRicerca.Date;
     FAltriPresidi.xdal := cxDataRicerca.Date;
     FAltriPresidi.xpkrep := gblpkrep; // FListaRich[0].vReparti;
     FAltriPresidi.xIntervallo := max(dxIntervallo.EditValue, DaysBetween(cxDataRicerca.Date,QyGiornate.Parambyname('datafine').AsDateTime {FListaRich[0].xFine}));
     FAltriPresidi.fSoloAltri := true;

     for z:=0 to FListaRich.Count-1 do
     begin
         FAltriPresidi.vCodici.Add(FListaRich[z].vCodici);
         FAltriPresidi.vdurata.Add(IntToStr(FListaRich[z].vdurata));
     end;

     if FAltriPresidi.ShowModal=mrOk then
     begin
        for z:=0 to FListaRich.Count-1 do
          FListaRich[z].RiPrenota( FAltriPresidi.tbSelezioneDESC_REPARTO.AsString,
                                   FAltriPresidi.tbSelezioneREPARTI_FK.AsInteger,
                                   FAltriPresidi.tbSelezioneDATA_PRENO.AsDateTime );
     end;
  finally
     FAltriPresidi.Free;
     FAltriPresidi := nil;
  end;
{$ENDIF}
end;

procedure TFPrenotaNew.altriPresidiUpdate(Sender: TObject);
begin
  altriPresidi.Enabled := (FListaRich.Count>0) and FInRegistrazione and (FxAltriPresidi=2);
end;

procedure TFPrenotaNew.cxCodiceKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
     CodicePress;
end;

procedure TFPrenotaNew.cxDescrizioneKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
     DescrPress;
end;

procedure TFPrenotaNew.StoricoExecute(Sender: TObject);
begin
  StoricoOperazione(QyRicPrenoPKTRIAGE.AsInteger);
end;

procedure TFPrenotaNew.StoricoUpdate(Sender: TObject);
begin
  Storico.Enabled := not QyRicPreno.IsEmpty;
end;

procedure TFPrenotaNew.aAltraPrenotazioneExecute(Sender: TObject);
begin

  if not FListaRich.CanClose then
     exit;

  FRicercaFatta := false;
  SettaTutti;

  if not dxDockPanel1.Visible then
     dxDockPanel1.Visible := true;

  if cxPageControl.ActivePage<>cxTabPreno then
     cxPageControl.ActivePage := cxTabPreno;

	RicaricaPaziente();
  btnRicPaz.Glyph.ReleaseHandle;
  FDMCommon.imIcone.GetBitmap(46,btnRicPaz.Glyph);
  dxBarStatic1.Visible := ivAlways;
  dxBarControlContainerItem1.Visible := ivAlways;
  dxDataAgenda.Visible := ivNever;

  cxGridPrestazioniESENTE.Options.Editing := false;

end;

procedure TFPrenotaNew.cxMedicoBaseNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean;
  var codice: Variant);
begin
   if cxMedicoBase.LookupTable=MedBase then
   begin
     FRicMedici := TFRicMedici.Create(nil);
     try
       FRicMedici.QRicerca.OpenNoFetch;
       if NewValue<>'' then
       begin
         FRicMedici.QRicercaNOMINATIVO.AsString := NewValue;
         FRicMedici.AttivaRicerca.Execute;
       end;
       Accept := (FRicMedici.ShowModal=mrOk);
       if Accept then
          codice := FRicMedici.QRicercaCODICE.Value;
     finally
       FRicMedici.Free;
       FRicMedici := nil;
     end;
   end;
end;

procedure TFPrenotaNew.cxCognomePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  cogn: string;
begin
  cogn := VarAsType(DisplayValue,varString);
  if (Length(cogn)>0) and (Length(cogn)<2) then
  begin
     Error := TRUE;
     ErrorText := format(RS_Almeno2Caratteri,[dxLayoutCognome.Caption]);
  end;
end;

procedure TFPrenotaNew.cxDataImpegnativaPropertiesEditValueChanged(
  Sender: TObject);
begin
  cxMagg.Checked :=  dxLayoutControlQuota.Visible and (FDMCommon.LeggiPostoLavoroCHK_DATA_IMPEGNATIVA.AsInteger=0) or (YearOf(cxDataImpegnativa.Date)=0) or (YearOf(cxDataImpegnativa.Date)>=2007);
end;

procedure TFPrenotaNew.cxMaggPropertiesEditValueChanged(Sender: TObject);
begin
  if not FInRicalcolo then
     RicalcolaTotale;
end;

procedure TFPrenotaNew.RichiestiBeforeInsert(DataSet: TDataSet);
begin
  if (TPrenoTIPO_FATTURA.AsInteger=2) and(Richiesti.recordcount>=8) then
  begin
     msgDlg(RS_MaxEsamixImp, '', ktError, [kbOK], dfFirst);
     Abort;
  end;
end;

procedure TFPrenotaNew.MaterialiNewRecord(DataSet: TDataSet);
begin
  MaterialiPROGRESSIVO_RIGA.AsInteger := RichiestiPROGRESSIVO_RIGA.AsInteger;
  MaterialiTIPO.AsInteger := 1;

end;

procedure TFPrenotaNew.cxGridPrestazioniRADIOFARMACOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: integer;
begin
  inherited;
{$IFNDEF MEDICORNER}
  Materiali.Filtered := false;
  Materiali.Filter := format('PROGRESSIVO_RIGA = %d',[RichiestiPROGRESSIVO_RIGA.AsInteger]);
  Materiali.Filtered := true;

  FRadiofarmaco := TFRadiofarmaco.Create(nil);
  try

     FRadiofarmaco.sPrestazioni.DataSet := Richiesti;
     FRadiofarmaco.Materiali.DisableControls;
     Materiali.First;
     while not Materiali.Eof do
     begin
        FRadiofarmaco.Materiali.Insert;
        for i:=0 to FRadiofarmaco.Materiali.FieldCount-1 do
            if Materiali.FindField(FRadiofarmaco.Materiali.Fields[i].FieldName)<>nil then
               FRadiofarmaco.Materiali.Fields[i].Value := Materiali.FieldbyName(FRadiofarmaco.Materiali.Fields[i].FieldName).Value;
        FRadiofarmaco.Materiali.Post;
        Materiali.Next;
     end;
     FRadiofarmaco.Materiali.EnableControls;

     if FRadiofarmaco.ShowModal=mrOk then
     begin

          FRadiofarmaco.Materiali.DisableControls;
          Materiali.First;
          while not Materiali.Eof do
          begin
             if not FRadiofarmaco.Materiali.Locate('MAGART_FK',MaterialiMAGART_FK.AsInteger,[]) then
                 Materiali.Delete
             else
                 Materiali.Next;
          end;

          FRadiofarmaco.Materiali.First;
          while not FRadiofarmaco.Materiali.eof do
          begin
             if not Materiali.Locate('MAGART_FK',FRadiofarmaco.MaterialiMAGART_FK.AsInteger,[]) then
               Materiali.Insert
             else
               Materiali.Edit;

             for i:=0 to Materiali.FieldCount-1 do
                 if FRadiofarmaco.Materiali.FindField(Materiali.Fields[i].FieldName)<>nil then
                    Materiali.Fields[i].Value := FRadiofarmaco.Materiali.FieldbyName(Materiali.Fields[i].FieldName).Value;

             Materiali.Post;
             FRadiofarmaco.Materiali.Next;
          end;

     end;

  finally
     FreeAndNil(FRadiofarmaco);
     Materiali.Filtered := false;
  end;
{$ENDIF}
end;

procedure TFPrenotaNew.RichiestiBeforeDelete(DataSet: TDataSet);
begin
  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) then
  begin
    Materiali.Filtered := false;
    Materiali.Filter := format('PROGRESSIVO_RIGA = %d',[RichiestiPROGRESSIVO_RIGA.AsInteger]);
    Materiali.Filtered := true;
    while not Materiali.eof do
          Materiali.Delete;
    Materiali.Filtered := false;
  end;
  CancellaSpecxPrest(RichiestiPROGRESSIVO_RIGA.AsInteger);
end;

procedure TFPrenotaNew.RichiestiBeforePost(DataSet: TDataSet);
begin
  if (Richiesti.State=dsInsert) and (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) then
  begin
    DistBas.Parambyname('codicirad_fk').AsInteger := RichiestiCODICIRAD_FK.AsInteger;
    DistBas.syRefresh;
    Materiali.DisableControls;
//    TempUM := Materiali.UpdateMethod;
//    Materiali.UpdateMethod := umManual;
    try
    while not DistBas.Eof do
    begin
       Materiali.Append;
       MaterialiQUANTITA.AsFloat := DistBasQUANTITA.AsFloat;
       MaterialiMAGART_FK.AsInteger := DistBasMAGART_FK.AsInteger;
       Materiali.Post;
       DistBas.Next;
    end;
    finally
      Materiali.EnableControls;
//      Materiali.UpdateMethod := TempUM;
    end;
  end;

end;

(*
procedure TFPrenotaNew.dxDockPanel1CanResize(Sender: TdxCustomDockControl;
  NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  Resize := FListaRich.Count>0;
end;
*)

procedure TFPrenotaNew.cxDataImpegnativaPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error := (DisplayValue > Date());
  if Error then
     ErrorText := RS_TIC_DataPrestazNOK;
end;

procedure TFPrenotaNew.aTesseraSanitariaExecute(Sender: TObject);
begin
  FRicercaTessera := TFRicercaTessera.Create(nil);
  try
     if FRicercaTessera.ShowModal=mrOk then
        SendPortDataToForm(FRicercaTessera.cxCodFisc.Text, Length(FRicercaTessera.cxCodFisc.Text));
  finally
     FRicercaTessera.Free;
  end;

end;

procedure TFPrenotaNew.cxAccessionNumberKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key=VK_RETURN) and (cxAccessionNumber.Text<>'') then
  begin
     if FDMCommon.LeggiPostoLavoroPAD_ACCNR.AsInteger>0 then
        SendPortDataToForm('T '+format('%'+FDMCommon.LeggiPostoLavoroPAD_ACCNR.AsString+'.'+FDMCommon.LeggiPostoLavoroPAD_ACCNR.AsString+'d',[StrToIntDef(cxAccessionNumber.Text,0)]) , 12)
     else
        SendPortDataToForm( LeftStr('T '+cxAccessionNumber.Text+StringOfChar(' ', 10),11) , 11 );
  end;
end;

procedure TFPrenotaNew.aTesseraSanitariaUpdate(Sender: TObject);
begin
  inherited;
  aTesseraSanitaria.Enabled := (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,6]) and dxGroupAnagrafica.Enabled;
end;

procedure TFPrenotaNew.LkDiagxWk_oldBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('workstation_fk').AsInteger := gblpkworkstation;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  if (FDMCommon.LeggiPostoLavoroCONDIVIDI_AGENDE.AsInteger in [0,1]) then
     Sender.Parambyname('solo_rep').AsString := format('# and rs.rep_owner = %d ',[gblpkrep])
  else
     Sender.Parambyname('solo_rep').AsString := '#';
end;

procedure TFPrenotaNew.Inizializza;
//var
//  solorep: string;
begin
(*
  dxTutte.Down := (FCodiceDiag='');
//  FiltraDiagnostica(BMStringReplace(FCodiceDiag,';',',',[]));
  FiltraDiagnostica(FCodiceDiag);

  qRichieste.syrefresh;
  qRichEsami.syrefresh;

//  try
  xPossibili.Free;
//  except
//  end;
  xPossibili := TAstaCustomDataset.Create(nil);

  FDMCommon.Possibili.Filtered := false;

  if (FDMCommon.LeggiPostoLavoroCONDIVIDI_AGENDE.AsInteger in [0,1]) then
     solorep := format('REPARTI_FK=%d and ',[gblpkrep])
  else
     solorep := '';

  if (FCodiceDiag<>'') then
    FDMCommon.Possibili.Filter := format(solorep + ' TIPOPRENO IN (''I'',''T'') AND PRENOTA=1 AND SERVIZI_FK in ( ''%s'' )',[BMStringReplace(xDiagAperte {+ ',' + xServInterni},',',#39+','+#39,[])])
  else
    FDMCommon.Possibili.Filter := solorep + ' TIPOPRENO IN (''I'',''T'') AND PRENOTA=1';
  FDMCommon.Possibili.Filtered := true;

  xPossibili.CleanCloneFromDataSet(FDMCommon.Possibili);
  xPossibili.IndexName := FDMCommon.Possibili.IndexName;
  FDMCommon.Possibili.Filtered := false;
  FDMCommon.Possibili.Filter := '';

//  FStartNow := DBPlanner.CellToTime(0,max(0,DBPlanner.AbsTimeToCell(Now)-1));
*)
end;

procedure TFPrenotaNew.dxSingolaDiagnClick(Sender: TObject);
begin
  inherited;
//  FDiagnSelezionate := True;
  SelezioneSingola;
end;

procedure TFPrenotaNew.SelezioneSingola;
var
  I: integer;
  olddown: boolean;
begin
  for I := 0 to vbDiagn.count - 1 do
  begin
    if dxSingolaDiagn.Down then
    begin
       olddown := vbDiagn[I].Down;
       vbDiagn[I].GroupIndex := 1;
       vbDiagn[I].Down := olddown;
    end
    else begin
       olddown := vbDiagn[I].Down;
       vbDiagn[I].GroupIndex := 0;
       vbDiagn[I].Down := olddown;
//       vbDiagn[I].Down := True;
    end;
  end;
end;


procedure TFPrenotaNew.dxSubDiagCloseUp(Sender: TObject);
var
  I: integer;
  xFCodiceDiag: string;
//  sel: integer;
begin
  inherited;

//  if FDiagnSelezionate then
  begin
//    AlertRichieste.Active := false;
    xFCodiceDiag := '';
//    sel := 0;
    try
    for I := 0 to vbDiagn.Count-1 do
    begin
//      QyLkServizi.Locate('PKSERVIZI',vbDiagn[I].Tag,[]);
//      QyLkServizi.Edit;
      if Assigned(vbDiagn[I]) and vbDiagn[I].Down then
      begin
//         sel := sel+1;
         if xFCodiceDiag='' then
            xFCodiceDiag := IntToStr(vbDiagn[I].Tag)
         else
            xFCodiceDiag := xFCodiceDiag + ',' + IntToStr(vbDiagn[I].Tag);
//         QyLkServiziSELEZIONATA.AsInteger := 1;
      end;
//      else
//         QyLkServiziSELEZIONATA.AsInteger := 0;
//      QyLkServizi.Post;
    end;
//    QyLkServizi.ApplyUpdates();
//    if sel=vbDiagn.Count then
//       xFCodiceDiag := '';
    if xFCodiceDiag<>'' then
       SelezionaDiagnostiche(xFCodiceDiag);
    finally
//       FDiagnSelezionate := False;
//       AlertRichieste.Active := dxAttivaRefresh.Down;
    end;
  end;

end;

procedure TFPrenotaNew.SelezionaDiagnostiche(const lista: string);
begin

  FCodiceDiag := lista;
//  dxTutte.Down := (FCodiceDiag='');

  Inizializza;

  if FCodiceDiag<>'' then
     AssegnaDiagn(FCodiceDiag);

end;

procedure TFPrenotaNew.dxGiorniPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_CHANGECALENDARDAY,0,0);
end;

procedure TFPrenotaNew.cxNumeroImpegnativaMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  cxNumeroImpegnativa.SelectAll;
end;

procedure TFPrenotaNew.aTempiAttesaExecute(Sender: TObject);
begin
  inherited;

  if not dxDockPanel1.Visible then
     dxDockPanel1.Visible := true;

  if cxPageControl.ActivePage<>cxTabTempiDiAttesa then
     cxPageControl.ActivePage := cxTabTempiDiAttesa;

  if cxEsamiDaCercare.CanFocus then
     cxEsamiDaCercare.SetFocus;

end;

procedure TFPrenotaNew.cxPageControlPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if NewPage=cxTabTempiDiAttesa then
  begin
     FDMCommon.edrepCODICEESAME.Properties.OnButtonClick := cxEsamiDaCercarePropertiesButtonClick;
  end
  else if NewPage=cxTabPreno then
  begin
     FDMCommon.edrepCODICEESAME.Properties.OnButtonClick := cxCodicePropertiesButtonClick;
  end;
end;

procedure TFPrenotaNew.cxEsamiDaCercarePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if cxEsamiDaCercare.Text<>'' then
     CodicePressTempi
  else
     CercoCodiceTempi(tpCodice);
end;

procedure TFPrenotaNew.CodicePressTempi;
begin
  if (cxEsamiDaCercare.Text<>'') then
  begin
     FiltraQuery('CODICE LIKE '+#39+cxEsamiDaCercare.Text+'%'+#39);
     if Esami.RecordCount=1 then
        CaricaCodiceTempi(Esami.Fieldbyname('CODICE').AsString)
     else
        CercoCodiceTempi(tpCodice);
  end
  else
     CercoCodiceTempi(tpCodice);
end;

procedure TFPrenotaNew.CercoCodiceTempi(tpOrd: TtpOrd);
//var
//  trovato: integer;
begin
  if Assigned(FRicRadiologiaPreno) then exit;
  FRicRadiologiaPreno := TFRicRadiologiaPreno.Create(nil);
  try
     FRicRadiologiaPreno.CopiaDataset(Esami,tpOrd);
{JRT 6611}
     if tpOrd=tpCodice then
        FRicRadiologiaPreno.DaCercare := cxEsamiDaCercare.Text
     else
        FRicRadiologiaPreno.DaCercare := cxDescrTempi.Text;
{}
     if FRicRadiologiaPreno.ShowModal=mrOk then
        CaricaCodiceTempi(FRicRadiologiaPreno);
  finally
     Esami.Filtered := false;
     FRicRadiologiaPreno.Free;
     FRicRadiologiaPreno := nil;
  end;

end;

procedure TFPrenotaNew.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  DescrPressTempi;
end;

procedure TFPrenotaNew.DescrPressTempi;
begin
  if (cxDescrTempi.Text<>'') then
  begin
     FiltraQuery('DESCRIZIONE LIKE '+#39+'%'+cxDescrTempi.Text+'%'+#39);
     if Esami.RecordCount=1 then
        CaricaCodiceTempi(Esami.Fieldbyname('CODICE').AsString)
     else
        CercoCodiceTempi(tpDescrizione);
  end
  else
     CercoCodiceTempi(tpDescrizione);
end;

procedure TFPrenotaNew.cxDescrTempiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
  VK_F10: DescrPressTempi;
  end;
end;

procedure TFPrenotaNew.cxDescrTempiKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then
     DescrPressTempi;
end;

procedure TFPrenotaNew.cxEsamiDaCercareKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  case Key of
  VK_F10: CodicePressTempi;
  VK_RETURN:  if dxLayoutDescTempi.Visible then
                 Key := VK_TAB
              else
                 CodicePressTempi;
  end;
end;

procedure TFPrenotaNew.cxEsamiDaCercareKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then
     CodicePressTempi;
end;


procedure TFPrenotaNew.CaricaCodiceTempi(xRad: TFRicRadiologiaPreno);
var
  i: integer;
  codice: string;
begin
  for i:=1 to xRad.cxGridCodici.Controller.SelectedRecordCount do
  begin
     codice := xRad.cxGridCodici.Controller.SelectedRecords[i-1].Values[0];
     CaricaCodiceTempi(codice);
  end;
end;

procedure TFPrenotaNew.CaricaCodiceTempi(const cod: string);
begin
  Esami.Filtered := false;
  if not Esami.Locate('CODICE',cod,[]) then
     exit;
  if (FDMCommon.LeggiPostoLavoroCHECK_NO_PRESTMULT.AsInteger=0) and
      Richiesti.Locate('CODICE',cod,[]) then
  begin
      MsgDlg(format(RS_PrestGiaCaricata,[cod]),'', ktWarning, [kbOK]);
      exit;
  end;

{$IFDEF MEDICORNER}
  if (Esami.Fieldbyname('DEVICE').AsInteger>0) and Richiesti.Locate('BRANCA',Esami.Fieldbyname('BRANCA').AsString,[]) then
  begin
      MsgDlg(format(RS_TipoEsameGiaCaricato,[Esami.Fieldbyname('BRANCA').AsString]),'', ktWarning, [kbOK]);
      exit;
  end;
{$ENDIF}

  if Esami.Fieldbyname('COMPOSTO').AsInteger=0 then
  begin
    CodicInAttesa.Append;
    CodicInAttesaCODICE.AsString := Esami.Fieldbyname('CODICE').AsString;
    CodicInAttesaDESCRIZIONE.AsString := Esami.Fieldbyname('DESCRIZIONE').AsString;
//    CodicInAttesaDURATA.AsInteger := Esami.Fieldbyname('DURATA').AsInteger;
//    CodicInAttesaCODICIRAD_FK.AsInteger := Esami.Fieldbyname('PKCODICIRAD').AsInteger;
    CodicInAttesa.Post;
    cxEsamiDaCercare.Text := '';
    cxDescrTempi.Text := '';
  end
  else begin
      Composto.Parambyname('codicirad_fk').AsInteger := Esami.Fieldbyname('PKCODICIRAD').AsInteger;
      Composto.open;
      try
         while not Composto.eof do
         begin
            CodicInAttesa.Append;
            CodicInAttesaCODICE.AsString := CompostoCODICE.AsString;
            CodicInAttesaDESCRIZIONE.AsString := CompostoDESCRIZIONE.AsString;
//            CodicInAttesaDURATA.AsInteger := CompostoDURATA.AsInteger;
//            CodicInAttesaDOSE.AsFloat := CompostoDOSE.AsFloat;
            CodicInAttesa.Post;
            Composto.Next;
         end;
      finally
         Composto.close;
      end;
      cxEsamiDaCercare.Text := '';
      cxDescrTempi.Text := '';
  end;

end;

procedure TFPrenotaNew.aCalcolaTempiExecute(Sender: TObject);
var
  xcod: string;
  qq: Integer;
begin
  inherited;

      xcod := '';
      qq := 0;
      CodicInAttesa.First;
      while not CodicInAttesa.Eof do
      begin
           if qq>0 then
              xcod := xcod + ',' + CodicInAttesaCODICE.AsString
           else
              xcod := CodicInAttesaCODICE.AsString;
           Inc(qq);
           CodicInAttesa.Next;
      end;

      PazientiInAttesa.Parambyname('xreparti_fk').AsInteger := gblpkrep;
      PazientiInAttesa.Parambyname('xtipo_attivita').AsString := TPrenoTIPO_ATTIVITA.AsString;
      PazientiInAttesa.Parambyname('xAgendeEsclusive').AsInteger := TPrenoAGENDE_ESCLUSIVE.AsInteger;
      PazientiInAttesa.Parambyname('xosp_rich').AsString := TPrenoOSP_RICH.asString;
      if dxAgendeInterni.Down then
         PazientiInAttesa.Parambyname('xAncheInterni').AsInteger := 1
      else
         PazientiInAttesa.Parambyname('xAncheInterni').AsInteger := 0;

      PazientiInAttesa.Parambyname('xdataini').AsDateTime := cxDataRicerca.Date;
      PazientiInAttesa.Parambyname('xintervallo').Value := dxIntervallo.EditValue;
      PazientiInAttesa.Parambyname('xcodici').AsString := xcod;
      PazientiInAttesa.Parambyname('xqq').AsInteger := qq;

       if (FDMCommon.LeggiPostoLavoroCONDIVIDI_AGENDE.AsInteger=0) then
          PazientiInAttesa.Parambyname('xsolo_rep').AsInteger := gblpkrep
       else
          PazientiInAttesa.Parambyname('xsolo_rep').Clear;

      PazientiInAttesa.syRefresh;

{
      PazientiInAttesaxEsame.Parambyname('data_preno').AsDateTime := cxDataRicerca.Date;
      PazientiInAttesaxEsame.Parambyname('data_fine').AsDateTime := tbSelezioneDATA_PRENO.AsDateTime;
      if qq=1 then
      PazientiInAttesaxEsame.Parambyname('xcodici').AsString := format('# exists( select 1 from PrenoEsami e,CodiciRad cr where e.agende_fk = c.pkagende and e.prenota=1 and e.codicirad_fk=cr.pkcodicirad and cr.codice=''%s'') and',
                                                         [xcod])
      else
      PazientiInAttesaxEsame.Parambyname('xcodici').AsString := format('# exists( select e.agende_fk from PrenoEsami e,CodiciRad cr, TABLE( ris.str2tblstr( ''%s'' ) ) ax'+
                                                         ' where e.agende_fk = c.pkagende and e.prenota=1 and e.codicirad_fk=cr.pkcodicirad and cr.codice = ax.codice'+
                                                         ' group by e.agende_fk having count(*)>=%d) and',
                                                         [xcod,qq]);

      PazientiInAttesaxEsame.Parambyname('xcodpre').AsString := format('# cr.codice in (select cx.codice from TABLE( ris.str2tblstr( ''%s'' ) ) cx)',
                                               [xCod]);

  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  Sender.Parambyname('bloccate').AsString := '# c.BLOCCATO=0 AND ';

  Sender.Parambyname('tipo_attivita').AsString := TPrenoTIPO_ATTIVITA.AsString;
  if (TPrenoAGENDE_ESCLUSIVE.AsInteger=1) then
  begin
     Sender.Parambyname('osp_rich').AsString := '# (c.osp_rich='+#39+TPrenoOSP_RICH.asString+#39+') AND ';
  end
  else begin
     Sender.Parambyname('osp_rich').AsString := '# (c.osp_rich is null or c.osp_rich='+#39+TPrenoOSP_RICH.asString+#39+') AND ';
  end;

  if dxAgendeInterni.Down then
     Sender.Parambyname('interni').AsString := '#'
  else
     Sender.Parambyname('interni').AsString := '# c.PROVENIENZA in ('#39'E'#39','#39'T'#39') and ';

//  Sender.Parambyname('xdurata',vDurata);

      PazientiInAttesaxEsame.syRefresh;
}

end;

procedure TFPrenotaNew.aCalcolaTempiUpdate(Sender: TObject);
begin
  inherited;
  aCalcolaTempi.Enabled := not CodicInAttesa.IsEmpty;
end;

procedure TFPrenotaNew.aStampaTempiExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
begin
  inherited;
  if FDMCommon.dxPrintDialog1.Execute then
  begin
   if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
      dxComponentPrinter1.Preview(true,dxComponentPrinterTempiAttesa)
   else begin
      AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
      dxComponentPrinter1.Print(false,@AData,dxComponentPrinterTempiAttesa);
   end;
  end;
end;

procedure TFPrenotaNew.aStampaTempiUpdate(Sender: TObject);
begin
  inherited;
  aStampaTempi.Enabled := not PazientiInAttesa.IsEmpty and not gblCallCenter;
end;

procedure TFPrenotaNew.dxAgendeInterniClick(Sender: TObject);
begin
  inherited;
  QyLkServizi.syRefresh;
  Apertura;
end;

procedure TFPrenotaNew.aNuovaPrenotazioneUpdate(Sender: TObject);
begin
  inherited;
  aNuovaPrenotazione.Enabled := (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,6]) and not FInRegistrazione;
end;

procedure TFPrenotaNew.cxNomeEnter(Sender: TObject);
begin
  inherited;
  Catch := True;
end;

procedure TFPrenotaNew.cxNomeExit(Sender: TObject);
begin
  inherited;
  Catch := False;
end;

procedure TFPrenotaNew.cxSelezDatePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_DBLCLICK,0,LongInt(ScegliGiorno));
end;

procedure TFPrenotaNew.qRicettaInfBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFPrenotaNew.actRicercaUpdate(Sender: TObject);
begin
  inherited;
  actRicerca.Enabled := not FInRegistrazione;
end;

procedure TFPrenotaNew.aTempiAttesaUpdate(Sender: TObject);
begin
  inherited;
  aTempiAttesa.Enabled := not FInRegistrazione;
end;

procedure TFPrenotaNew.cxRicNomeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Ord(Key) in [{VK_F10,}VK_RETURN]) and not FRicercaFatta then
      aRicercaPaziente.Execute;

end;

procedure TFPrenotaNew.cxPersonalizzaClick(Sender: TObject);
begin
  inherited;
//  LanciaPersonalizza(dxLayoutControl1,FDMCommon.qFormLayout);
  dxLayoutControl1.Customization := True;
  TdxLayoutControlCustomizeForm(dxLayoutControl1.CustomizeForm).acTreeViewItemRename.Visible := False;
  TdxLayoutControlCustomizeForm(dxLayoutControl1.CustomizeForm).acTreeViewItemRename.Enabled := False;
  TdxLayoutControlCustomizeForm(dxLayoutControl1.CustomizeForm).acAvailableItemRename.Visible := False;
  TdxLayoutControlCustomizeForm(dxLayoutControl1.CustomizeForm).acAvailableItemRename.Enabled := False;
  PersModified := True;
end;


procedure TFPrenotaNew.ResetFormClick(Sender: TObject);
begin
  inherited;
  if FDMCommon.ResetLayout(Name,dxLayoutControl1) then
     PersModified := True;
end;

procedure TFPrenotaNew.TPrenoOSP_RICHChange(Sender: TField);
var
  variato: boolean;
begin
  TPrenoDESCR_OSPEDALE.AsString := FDMCommon.LkOspedaliDESCRIZIONE.AsString;
  TPrenoTIPO_ATTIVITA.AsString := FDMCommon.LkOspedaliTIPO_ATTIVITA_FK.AsString;
  variato := TPrenoPROVIMP.IsNull or (TPrenoPROVIMP.AsString<>FDMCommon.LkOspedaliPROVENIENZA.AsString) or (TPrenoTIPO_FATTURA.AsInteger<>FDMCommon.LkOspedaliTIPO_FATTURA.AsInteger);
  TPrenoPROVIMP.AsString := FDMCommon.LkOspedaliPROVENIENZA.AsString;
  TPrenoTIPO_FATTURA.AsInteger := FDMCommon.LkOspedaliTIPO_FATTURA.AsInteger;
  TPrenoAGENDE_ESCLUSIVE.AsInteger := FDMCommon.LkOspedaliAGENDE_ESCLUSIVE.AsInteger;
  if not FDMCommon.LkOspedaliLEG_CODICE.IsNull then
     TPrenoLEG_CODICE.AsString := FDMCommon.LkOspedaliLEG_CODICE.AsString
  else
     TPrenoLEG_CODICE.AsString := FDMCommon.LeggiPostoLavoroLEG_CODICE.AsString;

  if variato then
  begin
    if (TPrenoPROVIMP.AsString='I') and (TPrenoTIPO_FATTURA.AsInteger<>3) then
    begin
       MedInterni.SQL.Assign(FLookupMedInt);
       cxMedicoBase.LookupTable := MedInterni;
       cxMedicoBase.LookupPK := 'PKPERSONALE';
       cxMedicoBase.AllowNotInList := false;
       TPrenoMED_BASE.Clear;
       TPrenoNOMEMEDICO.Clear;
    end
    else if (TPrenoPROVIMP.AsString<>'I') then
    begin
       MedBase.SQL.Assign(FLookupMedEst);
       cxMedicoBase.LookupTable := MedBase;
       cxMedicoBase.LookupPK := 'CODICE';
       cxMedicoBase.AllowNotInList := true;
       TPrenoCOD_MED_INT.Clear;
       TPrenoNOMEMEDICO.Clear;
    end
    else begin
       TPrenoCOD_MED_INT.Clear;
       TPrenoNOMEMEDICO.Clear;
    end;
  end;

  if TPrenoTIPO_ATTIVITA.AsString='H' then
     TPrenoURGENZA.AsInteger := 5
  else if TPrenoTIPO_ATTIVITA.AsString='R' then
     TPrenoURGENZA.AsInteger := 6
  else
     TPrenoURGENZA.AsInteger := 4;

  if not FDMCommon.LkOspedaliES_TICKET.IsNull then
  begin
     TPrenoTES_IDENT.AsString := FDMCommon.LkOspedaliES_TICKET.AsString;
     sLkEsenzione.DataSet.Locate('IDENT',TPrenoTES_IDENT.AsString,[]);
  end
  else
     TPrenoTES_IDENT.Clear;
  cxCodiceEsenzionePropertiesCloseUp(Sender);

  AbilitaCampi;

end;

procedure TFPrenotaNew.DoOnActivate;
begin
  inherited;
  aNuovaPrenotazione.Execute;
end;

procedure TFPrenotaNew.RichSpecxPrestNewRecord(DataSet: TDataSet);
begin
  inherited;
  RichSpecxPrestPROGRESSIVO_RIGA.AsInteger := RichiestiPROGRESSIVO_RIGA.AsInteger;
end;

initialization
  Classes.RegisterClass(TFPrenotaNew);

end.
