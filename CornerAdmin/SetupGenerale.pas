
unit SetupGenerale;

interface

uses
  BaseRad, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Classes, ActnList, AstaUpdateSQL,
  rsStorage, rsXmlData, rsPropSaver, AstaDrv2, AstaClientDataset, ImgList,
  Controls, Dialogs, dxBarExtItems, dxBar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, dxLayoutControl, cxButtonEdit,
  cxDBEdit, KScxDBLookupDlg, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, cxSpinEdit, Forms, Planner, cxRadioGroup,
  cxCheckBox, cxMaskEdit, cxDropDownEdit, cxContainer, cxTextEdit,
  StdCtrls, cxPC, CSEZForm,  ExtCtrls,
  cxGroupBox, cxImageComboBox, cxRichMemoDlg, cxCurrencyEdit,
  cxLookAndFeelPainters, cxButtons, Menus, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, ComCtrls, cxListView, cxVGrid, cxDBVGrid,
  cxInplaceContainer, cxCheckGroup, cxMemo, cxSplitter, cxColorComboBox,
  cxCalendar, cxLookAndFeels, dxLayoutcxEditAdapters, cxHint, cxBlobEdit,
  cxNavigator, dxLayoutContainer, dxScreenTip, dxCustomHint,
  dxBarBuiltInMenu, BaseGrid;


type
  TcxVerticalGridAccess = class(TcxVerticalGrid);
  
  TFSetupGenerale = class(TFBaseGrid)
    dxBarManager1: TdxBarManager;
    cxPageControl: TcxPageControl;
    FontDialog: TFontDialog;
    rsPropSaver1: TrsPropSaver;
    sLeggiPostoLavoro: TDataSource;
    LkOspedali: TAstaClientDataSet;
    LkOspedaliCODICE: TStringField;
    LkOspedaliDESCRIZIONE: TStringField;
    LkServizi: TAstaClientDataSet;
    LkServiziPKSERVIZI: TIntegerField;
    LkServiziDESCRIZIONE: TStringField;
    LkServiziCODICE: TStringField;
    LkServiziREPARTI_FK: TIntegerField;
    sLkServizi: TDataSource;
    LkRepPs: TAstaClientDataSet;
    LkRepPsPKREPARTI: TIntegerField;
    LkRepPsDESCRIZIONE: TStringField;
    sLkRepPs: TDataSource;
    LkServPs: TAstaClientDataSet;
    LkServPsPKSERVIZI: TIntegerField;
    LkServPsDESCRIZIONE: TStringField;
    LkServPsCODICE: TStringField;
    LkServPsREPARTI_FK: TIntegerField;
    sLkServPs: TDataSource;
    LkOspedaliUSL_REG_CODICE: TStringField;
    LkOspedaliUSL_CODICE: TStringField;
    dxTabGenerale: TcxTabSheet;
    fcLabel1: TLabel;
    DBText1: TcxDBTextEdit;
    fcLabel4: TLabel;
    fcVersione: TLabel;
    Applicazioni: TAstaClientDataSet;
    sApplicazioni: TDataSource;
    ApplicazioniORE_RIAPRI: TIntegerField;
    ApplicazioniCHECK_NASCITA: TIntegerField;
    ApplicazioniCHECK_RESIDENZA: TIntegerField;
    ApplicazioniFIRMA_DIGITALE: TIntegerField;
    ApplicazioniTIPO_PRENOTAZIONE: TIntegerField;
    ApplicazioniMOD_TECNICO_ESEGUITO: TIntegerField;
    ApplicazioniCHECK_NASCITA_ACC: TIntegerField;
    ApplicazioniCHECK_RESIDENZA_ACC: TIntegerField;
    ApplicazioniCHECK_NASCITA_ESEC: TIntegerField;
    ApplicazioniCHECK_RESIDENZA_ESEC: TIntegerField;
    ApplicazioniGIORNI_RITIRO: TIntegerField;
    ApplicazioniGBLPKPS: TIntegerField;
    ApplicazioniGBLPKSERVPS: TIntegerField;
    ApplicazioniCHECK_MED_BASE: TIntegerField;
    ApplicazioniCHECK_MED_PER_ESAME: TIntegerField;
    ApplicazioniVIEW_NR_ARCHIVIO: TIntegerField;
    ApplicazioniSALA_OPERATORIA_FK: TIntegerField;
    ApplicazioniCODICIRAD_FK: TIntegerField;
    ApplicazioniNOMEREPARTO: TStringField;
    ApplicazioniCODICE: TStringField;
    ApplicazioniOSPEDALE: TStringField;
    Esami: TAstaClientDataSet;
    EsamiCODICE: TStringField;
    EsamiDESCRIZIONE: TStringField;
    sEsami: TDataSource;
    EsamiPKCODICIRAD: TIntegerField;
    LkDiagnostiche: TAstaClientDataSet;
    LkDiagnosticheDESCRIZIONE: TStringField;
    LkDiagnosticheCODICE: TStringField;
    sLkDiagnostiche: TDataSource;
    ApplicazioniCHECK_I_NASCITA: TIntegerField;
    ApplicazioniCHECK_I_RESIDENZA: TIntegerField;
    ApplicazioniCHECK_I_NASCITA_ACC: TIntegerField;
    ApplicazioniCHECK_I_RESIDENZA_ACC: TIntegerField;
    ApplicazioniCHECK_I_NASCITA_ESEC: TIntegerField;
    ApplicazioniCHECK_I_RESIDENZA_ESEC: TIntegerField;
    ApplicazioniANAG_SCRITTURA: TIntegerField;
    ApplicazioniCHECK_NO_PRESTMULT: TIntegerField;
    ApplicazioniCHECK_ACR: TIntegerField;
    ApplicazioniCHECK_MOTIVOCANC: TIntegerField;
    ModuloReparti: TAstaClientDataSet;
    ModuloRepartiREPARTI_FK: TIntegerField;
    ModuloRepartiCHECK_NASCITA: TIntegerField;
    ModuloRepartiCHECK_RESIDENZA: TIntegerField;
    ModuloRepartiTIPO_APP: TIntegerField;
    ModuloRepartiNOMEREPARTO: TStringField;
    ModuloRepartiANAG_SCRITTURA: TIntegerField;
    ModuloRepartiCHECK_MOTIVOCANC: TIntegerField;
    sModuloReparti: TDataSource;
    dxLayoutControl2: TdxLayoutControl;
    cxDBCheckBox27: TcxDBCheckBox;
    cxDBCheckBox30: TcxDBCheckBox;
    cxNomeReparto: TcxDBMaskEdit;
    cxDBRadioGroup8: TcxDBRadioGroup;
    cxDBCheckBox52: TcxDBCheckBox;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem42: TdxLayoutItem;
    cxGridModuloRepartiDBTableView1: TcxGridDBTableView;
    cxGridModuloRepartiLevel1: TcxGridLevel;
    cxGridModuloReparti: TcxGrid;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    cxGridModuloRepartiDBTableView1REPARTI_FK: TcxGridDBColumn;
    cxGridModuloRepartiDBTableView1NOMEREPARTO: TcxGridDBColumn;
    RadRichieste: TAstaClientDataSet;
    RichiestePossibili: TAstaClientDataSet;
    RadRichiesteREPARTI_FK: TIntegerField;
    RichiestePossibiliREPARTI_FK: TIntegerField;
    cxRadRichiesteDBTableView: TcxGridDBTableView;
    cxRadRichiesteLevel1: TcxGridLevel;
    cxRadRichieste: TcxGrid;
    dxLayoutControl2Item2: TdxLayoutItem;
    sRadRichieste: TDataSource;
    cxRadRichiesteDBTableViewREPARTI_FK: TcxGridDBColumn;
    cxRadRichiesteDBTableViewRADIOLOGIA: TcxGridDBColumn;
    cxRichiestePossibiliDBTableView: TcxGridDBTableView;
    cxRichiestePossibiliLevel1: TcxGridLevel;
    cxRichiestePossibili: TcxGrid;
    dxLayoutControl2Item3: TdxLayoutItem;
    sRichiestePossibili: TDataSource;
    cxRichiestePossibiliDBTableViewRAD_DISP: TcxGridDBColumn;
    cxRichiestePossibiliDBTableViewREPARTO: TcxGridDBColumn;
    RichiestePossibiliRAD_DISP: TIntegerField;
    GruppoEsami: TAstaClientDataSet;
    StringField2: TStringField;
    sGruppoEsami: TDataSource;
    ActionList1: TActionList;
    sLkOspedali: TDataSource;
    ApplicazioniDEF_OSP_RICH: TStringField;
    ApplicazioniLEG_CODICE: TStringField;
    Listini: TAstaClientDataSet;
    ListiniCODICE: TStringField;
    ListiniDESCRIZIONE: TStringField;
    sListini: TDataSource;
    ApplicazioniNO_IMG_ESTERNE: TIntegerField;
    ApplicazioniCHK_QUESITO_EST: TIntegerField;
    ApplicazioniCHK_QUESITO_INT: TIntegerField;
    ApplicazioniCHK_QUESITO_REP: TIntegerField;
    ApplicazioniTIPO_NR_ARCHIVIO: TIntegerField;
    ApplicazioniCHK_SLITTA_REP: TIntegerField;
    ApplicazioniCHK_VISUALIZZA_QUESITO: TIntegerField;
    ApplicazioniCHK_VISUALIZZA_NOTE: TIntegerField;
    ApplicazioniCHK_DOPPIA_FIRMA: TIntegerField;
    ApplicazioniCHK_ATTIVITA_EXTRA: TIntegerField;
    ApplicazioniCHK_TRASCRIVERE: TIntegerField;
    ApplicazioniCHK_CONSEGNA_CON_PSWD: TIntegerField;
    aSelezionaSingoloCodice: TAction;
    aDeselezionaSingolo: TAction;
    ApplicazioniPAD_PID: TIntegerField;
    ApplicazioniCONDIVIDI_AGENDE: TIntegerField;
    ApplicazioniMODIFICA_DURATA: TIntegerField;
    ModuloRepartiPSWD_PER_MEDICO: TIntegerField;
    cxDBCheckBox39: TcxDBCheckBox;
    dxLayoutControlPswdMedico: TdxLayoutItem;
    GruppoEsamiGRESAMI: TStringField;
    ApplicazioniREPARTI_FK: TIntegerField;
    LkDiagnostichePKSERVIZI: TIntegerField;
    ApplicazioniCHECK_ASSEGNA_REF: TIntegerField;
    RadRichiesteRADIOLOGIA: TStringField;
    RichiestePossibiliRADIOLOGIA: TStringField;
    ApplicazioniFLAG_TESTISTD: TIntegerField;
    GruppoEsamiPKGRESAMI: TIntegerField;
    ApplicazioniCHK_LISTA_REFERTAZIONE: TIntegerField;
    ApplicazioniPAD_ACCNR: TIntegerField;
    ApplicazioniCTRL_RICOVERI: TIntegerField;
    ApplicazioniFLAG_MN: TIntegerField;
    ApplicazioniCTRL_ACCETTAZ: TIntegerField;
    ApplicazioniDESCR_AGG_REF: TIntegerField;
    ApplicazioniFLAG_VALIDA_RICH: TIntegerField;
    ApplicazioniDIAGN_PRENO_FK: TIntegerField;
    LkDiagnPreno: TAstaClientDataSet;
    LkDiagnPrenoDESCRIZIONE: TStringField;
    LkDiagnPrenoCODICE: TStringField;
    LkDiagnPrenoPKSERVIZI: TIntegerField;
    sLkDiagnPreno: TDataSource;
    ApplicazioniCHK_NOTE_RICH: TIntegerField;
    ApplicazioniCHK_CONF_DRAGDROP: TIntegerField;
    ApplicazioniEMAIL_PRENO_CONFERMA: TMemoField;
    ApplicazioniEMAIL_PRENO_CANCELLA: TMemoField;
    cxRichMemoDlg: TcxRichMemoDlg;
    ApplicazioniCHK_ESTEMPORANEO: TIntegerField;
    ApplicazioniCHK_DATA_IMPEGNATIVA: TIntegerField;
    ApplicazioniCHK_SPECIFICAZIONI: TIntegerField;
    ApplicazioniCHK_ABILITA_ACCETTAZ: TIntegerField;
    ApplicazioniCHK_MODIFICA_ANAGRAFICA: TIntegerField;
    cxConfigura: TcxTabSheet;
    qParamTicket: TAstaClientDataSet;
    sqParamTicket: TDataSource;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    cxDBMaskEdit2: TcxDBMaskEdit;
    lcTicketNumbaseRicetta: TdxLayoutItem;
    cxDBSpinEdit7: TcxDBSpinEdit;
    lcInternoGGPostRicovero: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    lcTicketImportoMassimo: TdxLayoutItem;
    cxDBTextEdit6: TcxDBLookupComboBox;
    lcSitoNome: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    lcEmailServer: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    lcEmailSender: TdxLayoutItem;
    tipo_errori: TAstaClientDataSet;
    tipo_erroriPKTIPOERRORI: TIntegerField;
    tipo_erroriDESCRIZIONE: TStringField;
    tipo_erroriFLAG_SEND: TIntegerField;
    sTipo_Errori: TDataSource;
    EmailUsers: TAstaClientDataSet;
    EmailUsersPKEMAILUSERS: TIntegerField;
    EmailUsersDESCRIZIONE: TStringField;
    EmailUsersEMAIL: TStringField;
    sEmailUsers: TDataSource;
    sMapErrori: TDataSource;
    MapErrori: TAstaClientDataSet;
    MapErroriTIPO_ERRORE: TIntegerField;
    MapErroriEMAILUSERS_FK: TIntegerField;
    MapErroriDESCRIZIONE: TStringField;
    MapErroriEMAIL: TStringField;
    tipo_erroriEMAIL_OBJECT: TStringField;
    cxDBTextEdit9: TcxDBTextEdit;
    lcEmailSubject: TdxLayoutItem;
    aAttivaTuttiJobs: TAction;
    AttivaTuttiJobs: TAstaClientDataSet;
    lgInterno: TdxLayoutGroup;
    cxDBCheckBox53: TcxDBCheckBox;
    lcSitoMultisite: TdxLayoutItem;
    Jobs: TAstaClientDataSet;
    sJobs: TDataSource;
    ConsegnaRefertiPer: TAstaClientDataSet;
    ConsegnaRefertiPerRADIOLOGIA: TIntegerField;
    ConsegnaRefertiPerCONSEGNA_PER: TIntegerField;
    sConsegnaRefertiPer: TDataSource;
    LkAltreRad: TAstaClientDataSet;
    LkAltreRadPKREPARTI: TIntegerField;
    LkAltreRadDESCRIZIONE: TStringField;
    sLkAltreRad: TDataSource;
    ApplicazioniASSEGNAREF_BLOCCO: TIntegerField;
    ModuloRepartiCHK_SPECIFICAZIONI: TIntegerField;
    cxDBCheckBox55: TcxDBCheckBox;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutGroup;
    cxDBTextEdit11: TcxDBTextEdit;
    lcWorklistUID: TdxLayoutItem;
    ApplicazioniCHK_ALLIEVO_TECNICO: TIntegerField;
    sCDMaster: TDataSource;
    ApplicazioniCHK_TELEFONO_SERVIZIO: TIntegerField;
    ModuloRepartiCHK_TELEFONO_SERVIZIO: TIntegerField;
    cxDBCheckBox57: TcxDBCheckBox;
    dxLayoutControl2Item7: TdxLayoutItem;
    dxLayoutControl2Group4: TdxLayoutGroup;
    ApplicazioniTIPO_ATT_SALA_OP: TStringField;
    TipoAttivita: TAstaClientDataSet;
    sTipoAttivita: TDataSource;
    TipoAttivitaTIPO_ATTIVITA: TStringField;
    TipoAttivitaDESCRIZIONE: TStringField;
    qServiziRadiologia: TAstaClientDataSet;
    qServiziRadiologiaPKSERVIZI: TIntegerField;
    qServiziRadiologiaDESCRIZIONE: TStringField;
    sqServiziRadiologia: TDataSource;
    qServiziRadiologiaINTESTAREF3: TStringField;
    qServiziRadiologiaPRIMARIO_FK: TIntegerField;
    Utenti: TAstaClientDataSet;
    UtentiPKPERSONALE: TIntegerField;
    sUtenti: TDataSource;
    UtentiNOMINATIVO: TStringField;
    cxDBCheckBox46: TcxDBCheckBox;
    lcTicketTariffarioGestione: TdxLayoutItem;
    ApplicazioniCHK_TRASPORTO: TIntegerField;
    ApplicazioniCHK_NR_RICHIESTA_OBB: TIntegerField;
    ApplicazioniCHK_RICH_IDENT: TIntegerField;
    ApplicazioniCHK_URGENZA_TECNICO: TIntegerField;
    ApplicazioniCHK_FIRMA_PROVV: TIntegerField;
    lgPACS: TdxLayoutGroup;
    ApplicazioniTIPOINVIO_FK: TStringField;
    sqTipoInvio: TDataSource;
    cxDBCheckBox58: TcxDBCheckBox;
    lcAnaDomicilio: TdxLayoutItem;
    ApplicazioniFLAG_PROVVISORIO: TIntegerField;
    ApplicazioniCHK_ANNULLATIVO: TIntegerField;
    qParamTicketPKPARAMTICKET: TIntegerField;
    qParamTicketIMPOMAX: TFloatField;
    qParamTicketIMPORTO_BOLLO: TFloatField;
    qParamTicketLIMITE_BOLLO: TFloatField;
    qParamTicketESENZ_ANNI_MAX: TIntegerField;
    qParamTicketESENZ_ANNI_MIN: TIntegerField;
    qParamTicketGGVALIDITA: TIntegerField;
    qParamTicketSENDER_EMAIL: TStringField;
    qParamTicketSERVER_SMTP: TStringField;
    qParamTicketPROC_CODSYSTEM: TStringField;
    qParamTicketPROCSTEP_CODSYSYTEM: TStringField;
    qParamTicketGG_CTRL_POSTRICOVERI: TIntegerField;
    qParamTicketBASE_RICETTA: TStringField;
    qParamTicketSITE_NAME: TStringField;
    qParamTicketF_MULTISITE: TIntegerField;
    qParamTicketEMAIL_OBJECT: TStringField;
    qParamTicketWL_UID: TStringField;
    qParamTicketCODICI_CUP: TIntegerField;
    qParamTicketANAG_DOMICILIO: TIntegerField;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    lcTicketQuotaAggiuntiva: TdxLayoutItem;
    lgTicket: TdxLayoutGroup;
    TabArchivio: TAstaClientDataSet;
    sTabArchivio: TDataSource;
    TabArchivioREPARTI_FK: TIntegerField;
    TabArchivioNUMERO: TIntegerField;
    TabArchivioANNO: TIntegerField;
    RicalcolaNrArch: TAstaClientDataSet;
    qIdAuth: TAstaClientDataSet;
    qIdAuthIDAUTHORITY: TStringField;
    qIdAuthDESCRIZIONE: TStringField;
    sqIdAuth: TDataSource;
    qParamTicketANAG_AUTHORITY: TStringField;
    cxDBLookupComboBox9: TcxDBLookupComboBox;
    lcPACSAnagrafica: TdxLayoutItem;
    qParamTicketRIS_ID_AUTH: TStringField;
    cxDBLookupComboBox10: TcxDBLookupComboBox;
    lcAnaIDAuthority: TdxLayoutItem;
    qServiziRadiologiaINTESTAREF1: TStringField;
    qServiziRadiologiaINTESTAREF2: TStringField;
    qServiziRadiologiaINTESTAREF4: TStringField;
    IntestazioniReferto: TAction;
    qTipoReferto: TAstaClientDataSet;
    qTipoRefertoTIPOREFERTO: TIntegerField;
    qTipoRefertoDESCRIZIONE: TStringField;
    sqTipoReferto: TDataSource;
    cxDBLookupComboBox11: TcxDBLookupComboBox;
    lcRefertiTipodefault: TdxLayoutItem;
    qParamTicketTIPOREFERTO_FK: TIntegerField;
    dxBarPopupControlli: TdxBarPopupMenu;
    aEditControlli: TAction;
    dxBarButton1: TdxBarButton;
    tipo_erroriEXEC_TIME: TIntegerField;
    tipo_erroriFLAG_ERR: TIntegerField;
    aInsertControlli: TAction;
    dxBarButton2: TdxBarButton;
    aBloccaTuttiJobs: TAction;
    DisattivaControlli: TAstaClientDataSet;
    qParamTicketNAZ_SCON: TStringField;
    qParamTicketCOM_SCON: TStringField;
    qParamTicketPROV_SCON: TStringField;
    ApplicazioniCHK_ULTIMO_TECNICO: TIntegerField;
    ApplicazioniCHK_RIPROPONI_QUESITO: TIntegerField;
    qServiziRadiologiaREPARTI_FK: TIntegerField;
    qServiziRadiologiaTIPO_SERVIZIO: TStringField;
    ApplicazioniCD_DA_REFERTO: TIntegerField;
    ApplicazioniCOD_FISC_MED_OBB: TIntegerField;
    ApplicazioniBOOKMARK_IN_CD: TIntegerField;
    ApplicazioniFMT_ANNO: TStringField;
    ApplicazioniFMT_NUMERO: TStringField;
    ApplicazioniCHK_NO_FUSIONI: TIntegerField;
    ApplicazioniNOTE_SISS: TMemoField;
    ApplicazioniURL_REPOSITORY: TStringField;
    ApplicazioniCHK_GUARDIA_MED: TIntegerField;
    ApplicazioniCHK_REF_PREVIEW: TIntegerField;
    qParamTicketREG_SCON: TStringField;
    qParamTicketWEBSERVICES_PACS: TStringField;
    qParamTicketMATCH_ANAG: TIntegerField;
    cxDBMaskEdit5: TcxDBMaskEdit;
    lcPACSWebServices: TdxLayoutItem;
    cxDBCheckBox48: TcxDBCheckBox;
    lcAnaMatch: TdxLayoutItem;
    cxGroupBox1: TcxGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    cxSpeed: TcxDBComboBox;
    cxPorta: TcxDBComboBox;
    Label6: TLabel;
    cxDataBits: TcxDBComboBox;
    Label7: TLabel;
    cxParita: TcxDBComboBox;
    Label9: TLabel;
    cxHWFlow: TcxDBComboBox;
    Label8: TLabel;
    cxStop: TcxDBComboBox;
    Label10: TLabel;
    cxSWFlow: TcxDBComboBox;
    cxGroupBox2: TcxGroupBox;
    Label3: TLabel;
    cxCDMasterLookup: TcxDBLookupComboBox;
    cxGroupBox3: TcxGroupBox;
    lblNumero: TLabel;
    cxStampe: TcxDBComboBox;
    Label11: TLabel;
    cxStampanteDefault: TcxDBLookupComboBox;
    Label12: TLabel;
    cxMicroPrint: TcxDBCheckBox;
    Label1: TLabel;
    cxEtichette: TcxDBComboBox;
    Label2: TLabel;
    cxRefertazioneVocale: TcxDBLookupComboBox;
    tsRadiologia: TcxTabSheet;
    pnlRadMain: TPanel;
    sSetDescs: TDataSource;
    qSetDescs: TAstaClientDataSet;
    qSetDescsNOMECAMPO: TStringField;
    qSetDescsLABELCAMPO: TStringField;
    vgAppInfo: TcxDBVerticalGrid;
    vgcrowAnagrafica: TcxCategoryRow;
    vgcrowNascitaObb: TcxCategoryRow;
    vgAppInfoCHECK_NASCITA: TcxDBEditorRow;
    vgAppInfoCHECK_I_NASCITA: TcxDBEditorRow;
    vgAppInfoCHECK_NASCITA_ACC: TcxDBEditorRow;
    vgAppInfoCHECK_I_NASCITA_ACC: TcxDBEditorRow;
    vgAppInfoCHECK_NASCITA_ESEC: TcxDBEditorRow;
    vgAppInfoCHECK_I_NASCITA_ESEC: TcxDBEditorRow;
    vgcrowResidenzaObb: TcxCategoryRow;
    vgAppInfoCHECK_RESIDENZA: TcxDBEditorRow;
    vgAppInfoCHECK_I_RESIDENZA: TcxDBEditorRow;
    vgAppInfoCHECK_RESIDENZA_ACC: TcxDBEditorRow;
    vgAppInfoCHECK_I_RESIDENZA_ACC: TcxDBEditorRow;
    vgAppInfoCHECK_RESIDENZA_ESEC: TcxDBEditorRow;
    vgAppInfoCHECK_I_RESIDENZA_ESEC: TcxDBEditorRow;
    vgcrowAnagraficaEsterna: TcxCategoryRow;
    vgAppInfoANAG_SCRITTURA: TcxDBEditorRow;
    vgAppInfoFIRMA_DIGITALE: TcxDBEditorRow;
    vgAppInfoPACS_FK: TcxDBEditorRow;
    vgAppInfoTIPO_PRENOTAZIONE: TcxDBEditorRow;
    vgAppInfoMOD_TECNICO_ESEGUITO: TcxDBEditorRow;
    vgAppInfoGIORNI_RITIRO: TcxDBEditorRow;
    vgAppInfoGBLPKPS: TcxDBEditorRow;
    vgAppInfoGBLPKSERVPS: TcxDBEditorRow;
    vgAppInfoCHECK_MED_BASE: TcxDBEditorRow;
    vgAppInfoCHECK_MED_PER_ESAME: TcxDBEditorRow;
    vgAppInfoVIEW_NR_ARCHIVIO: TcxDBEditorRow;
    vgAppInfoSALA_OPERATORIA_FK: TcxDBEditorRow;
    vgAppInfoCODICIRAD_FK: TcxDBEditorRow;
    vgAppInfoCHECK_NO_PRESTMULT: TcxDBEditorRow;
    vgAppInfoCHECK_ACR: TcxDBEditorRow;
    vgAppInfoCHECK_MOTIVOCANC: TcxDBEditorRow;
    vgAppInfoDEF_OSP_RICH: TcxDBEditorRow;
    vgAppInfoLEG_CODICE: TcxDBEditorRow;
    vgAppInfoNO_IMG_ESTERNE: TcxDBEditorRow;
    vgAppInfoCHK_QUESITO_EST: TcxDBEditorRow;
    vgAppInfoCHK_QUESITO_INT: TcxDBEditorRow;
    vgAppInfoCHK_QUESITO_REP: TcxDBEditorRow;
    vgAppInfoTIPO_NR_ARCHIVIO: TcxDBEditorRow;
    vgAppInfoCHK_SLITTA_REP: TcxDBEditorRow;
    vgAppInfoCHK_VISUALIZZA_QUESITO: TcxDBEditorRow;
    vgAppInfoCHK_VISUALIZZA_NOTE: TcxDBEditorRow;
    vgAppInfoCHK_DOPPIA_FIRMA: TcxDBEditorRow;
    vgAppInfoCHK_ATTIVITA_EXTRA: TcxDBEditorRow;
    vgAppInfoCHK_TRASCRIVERE: TcxDBEditorRow;
    vgAppInfoCHK_CONSEGNA_CON_PSWD: TcxDBEditorRow;
    vgAppInfoPAD_PID: TcxDBEditorRow;
    vgAppInfoCONDIVIDI_AGENDE: TcxDBEditorRow;
    vgAppInfoMODIFICA_DURATA: TcxDBEditorRow;
    vgAppInfoCHECK_ASSEGNA_REF: TcxDBEditorRow;
    vgAppInfoFLAG_TESTISTD: TcxDBEditorRow;
    vgAppInfoCHK_LISTA_REFERTAZIONE: TcxDBEditorRow;
    vgAppInfoPAD_ACCNR: TcxDBEditorRow;
    vgAppInfoCTRL_RICOVERI: TcxDBEditorRow;
    vgAppInfoFLAG_MN: TcxDBEditorRow;
    vgAppInfoCTRL_ACCETTAZ: TcxDBEditorRow;
    vgAppInfoDESCR_AGG_REF: TcxDBEditorRow;
    vgAppInfoFLAG_VALIDA_RICH: TcxDBEditorRow;
    vgAppInfoDIAGN_PRENO_FK: TcxDBEditorRow;
    vgAppInfoCHK_NOTE_RICH: TcxDBEditorRow;
    vgAppInfoCHK_CONF_DRAGDROP: TcxDBEditorRow;
    vgAppInfoEMAIL_PRENO_CONFERMA: TcxDBEditorRow;
    vgAppInfoEMAIL_PRENO_CANCELLA: TcxDBEditorRow;
    vgAppInfoCHK_ESTEMPORANEO: TcxDBEditorRow;
    vgAppInfoCHK_DATA_IMPEGNATIVA: TcxDBEditorRow;
    vgAppInfoCHK_SPECIFICAZIONI: TcxDBEditorRow;
    vgAppInfoCHK_ABILITA_ACCETTAZ: TcxDBEditorRow;
    vgAppInfoCHK_MODIFICA_ANAGRAFICA: TcxDBEditorRow;
    vgAppInfoASSEGNAREF_BLOCCO: TcxDBEditorRow;
    vgAppInfoCHK_ALLIEVO_TECNICO: TcxDBEditorRow;
    vgAppInfoCHK_TELEFONO_SERVIZIO: TcxDBEditorRow;
    vgAppInfoTIPO_ATT_SALA_OP: TcxDBEditorRow;
    vgAppInfoCHK_TRASPORTO: TcxDBEditorRow;
    vgAppInfoCHK_NR_RICHIESTA_OBB: TcxDBEditorRow;
    vgAppInfoCHK_RICH_IDENT: TcxDBEditorRow;
    vgAppInfoCHK_URGENZA_TECNICO: TcxDBEditorRow;
    vgAppInfoCHK_FIRMA_PROVV: TcxDBEditorRow;
    vgAppInfoTIPOINVIO_FK: TcxDBEditorRow;
    vgAppInfoFLAG_PROVVISORIO: TcxDBEditorRow;
    vgAppInfoCHK_ANNULLATIVO: TcxDBEditorRow;
    vgAppInfoCHK_ULTIMO_TECNICO: TcxDBEditorRow;
    vgAppInfoCHK_RIPROPONI_QUESITO: TcxDBEditorRow;
    vgAppInfoCD_DA_REFERTO: TcxDBEditorRow;
    vgAppInfoCOD_FISC_MED_OBB: TcxDBEditorRow;
    vgAppInfoBOOKMARK_IN_CD: TcxDBEditorRow;
    vgAppInfoFMT_ANNO: TcxDBEditorRow;
    vgAppInfoFMT_NUMERO: TcxDBEditorRow;
    vgAppInfoCHK_NO_FUSIONI: TcxDBEditorRow;
    vgAppInfoNOTE_SISS: TcxDBEditorRow;
    vgAppInfoURL_REPOSITORY: TcxDBEditorRow;
    vgAppInfoCHK_GUARDIA_MED: TcxDBEditorRow;
    vgAppInfoCHK_REF_PREVIEW: TcxDBEditorRow;
    vgAppInfoORE_RIAPRI: TcxDBEditorRow;
    teFiltro: TcxTextEdit;
    pnlRadTop: TPanel;
    pnlradRight: TPanel;
    cxmDescrizione: TcxMemo;
    cbHeaderSearch: TcxCheckBox;
    vgcrowRefertazione: TcxCategoryRow;
    vgcrowNumeratori: TcxCategoryRow;
    vgcrowQuesitoDiag: TcxCategoryRow;
    vgcrowPacs: TcxCategoryRow;
    vgcrowPrenotazione: TcxCategoryRow;
    vgcrowAccettazione: TcxCategoryRow;
    vgcrowEsecuzione: TcxCategoryRow;
    vgcrowUtenti: TcxCategoryRow;
    vgcrowSkin: TcxCategoryRow;
    vgcrowGeneralePAER: TcxCategoryRow;
    vgcrowSalaOperatoria: TcxCategoryRow;
    vgcrowPS: TcxCategoryRow;
    vgcrowCD: TcxCategoryRow;
    pnlRadRightBottom: TPanel;
    btnDescOk: TcxButton;
    btnDescCancel: TcxButton;
    teDesclabel: TcxTextEdit;
    lblDescNomeCampo: TcxLabel;
    qSetDescsPKSET_DESCS: TIntegerField;
    spltrUno: TcxSplitter;
    cbCercaFieldName: TcxCheckBox;
    pnlRadGriglie: TPanel;
    cxServiziRad: TcxGrid;
    cxServiziRadDBTableView1: TcxGridDBTableView;
    cxServiziRadDBTableView1PKSERVIZI: TcxGridDBColumn;
    cxServiziRadDBTableView1DESCRIZIONE: TcxGridDBColumn;
    cxServiziRadDBTableView1INTESTAREF3: TcxGridDBColumn;
    cxServiziRadDBTableView1PRIMARIO_FK: TcxGridDBColumn;
    cxServiziRadLevel1: TcxGridLevel;
    lblGridServiziInterni: TcxLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1RADIOLOGIA: TcxGridDBColumn;
    cxGrid1DBTableView1CONSEGNA_PER: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    lblConsegnaPer: TcxLabel;
    cxGridNrArchivio: TcxGrid;
    cxGridNrArchivioDBTableView1: TcxGridDBTableView;
    cxGridNrArchivioDBTableView1REPARTI_FK: TcxGridDBColumn;
    cxGridNrArchivioDBTableView1ANNO: TcxGridDBColumn;
    cxGridNrArchivioDBTableView1NUMERO: TcxGridDBColumn;
    cxGridNrArchivioLevel1: TcxGridLevel;
    lblNumeratori: TcxLabel;
    bvlGriglie: TBevel;
    cbShowFieldName: TcxCheckBox;
    cbCampoPadreDesc: TcxComboBox;
    qSetDescsPADRE: TStringField;
    cbDescrizioneDa: TcxComboBox;
    lblDescrizioneDa: TcxLabel;
    sqSiteName: TDataSource;
    qParamTicketCHK_RICERCA_REFERTI: TIntegerField;
    cxDBRicercaTesto: TcxDBLookupComboBox;
    lcRefertiRicercatesto: TdxLayoutItem;
    dxBarPopupJobs: TdxBarPopupMenu;
    dxBarButton3: TdxBarButton;
    aAttivaJob: TAction;
    aBloccaJob: TAction;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    uJobs: TAstaUpdateSQL;
    JobsJOB_NAME: TStringField;
    JobsJOB_ACTION: TStringField;
    JobsSTART_DATE: TDateTimeField;
    JobsNEXT_RUN_DATE: TDateTimeField;
    JobsFREQUENZA: TStringField;
    JobsENABLED: TStringField;
    JobsSTATE: TStringField;
    AttivaJob: TAstaClientDataSet;
    Log_Jobs: TAstaClientDataSet;
    sLog_Jobs: TDataSource;
    Log_JobsJOB_NAME: TStringField;
    Log_JobsLOG_DATE: TDateTimeField;
    Log_JobsOPERATION: TStringField;
    Log_JobsSTATUS: TStringField;
    Log_JobsADDITIONAL_INFO: TStringField;
    dxBarPopupRadiologia: TdxBarPopupMenu;
    aApriTuttoRadiologia: TAction;
    aChiudiTuttoRadiologia: TAction;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    cxLabel1: TcxLabel;
    cxPageJobs: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxJobs: TcxGrid;
    cxJobsDBTableView1: TcxGridDBTableView;
    cxJobsDBTableView1JOB_NAME: TcxGridDBColumn;
    cxJobsDBTableView1JOB_ACTION: TcxGridDBColumn;
    cxJobsDBTableView1ENABLED: TcxGridDBColumn;
    cxJobsDBTableView1FREQUENZA: TcxGridDBColumn;
    cxJobsDBTableView1INTERVALLO: TcxGridDBColumn;
    cxJobsDBTableView1START_DATE: TcxGridDBColumn;
    cxJobsDBTableView1NEXT_RUN_DATE: TcxGridDBColumn;
    cxJobsDBTableView1STATE: TcxGridDBColumn;
    cxJobsDBTableView1ALARM: TcxGridDBColumn;
    cxJobsDBTableView2: TcxGridDBTableView;
    cxJobsDBTableView2JOB_NAME: TcxGridDBColumn;
    cxJobsDBTableView2LOG_ID: TcxGridDBColumn;
    cxJobsDBTableView2LOG_DATE: TcxGridDBColumn;
    cxJobsDBTableView2OPERATION: TcxGridDBColumn;
    cxJobsDBTableView2STATUS: TcxGridDBColumn;
    cxJobsDBTableView2ADDITIONAL_INFO: TcxGridDBColumn;
    cxJobsLevel1: TcxGridLevel;
    cxJobsLevel2: TcxGridLevel;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxGestioneErrori: TcxGrid;
    cxGestioneErroriDBTableView1: TcxGridDBTableView;
    cxGestioneErroriDBTableView1PKTIPOERRORI: TcxGridDBColumn;
    cxGestioneErroriDBTableView1DESCRIZIONE: TcxGridDBColumn;
    cxGestioneErroriDBTableView1EMAIL_OBJECT: TcxGridDBColumn;
    cxGestioneErroriDBTableView1FLAG_SEND: TcxGridDBColumn;
    cxGestioneErroriDBTableView1EXEC_TIME: TcxGridDBColumn;
    cxGestioneErroriDBTableView1FLAG_ERR: TcxGridDBColumn;
    cxGestioneErroriDBTableView2: TcxGridDBTableView;
    cxGestioneErroriDBTableView2TIPO_ERRORE: TcxGridDBColumn;
    cxGestioneErroriDBTableView2EMAILUSERS_FK: TcxGridDBColumn;
    cxGestioneErroriDBTableView2DESCRIZIONE: TcxGridDBColumn;
    cxGestioneErroriDBTableView2EMAIL: TcxGridDBColumn;
    cxGestioneErroriLevel1: TcxGridLevel;
    cxGestioneErroriLevel2: TcxGridLevel;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxUsers: TcxGrid;
    cxUsersDBTableView1: TcxGridDBTableView;
    cxUsersDBTableView1PKEMAILUSERS: TcxGridDBColumn;
    cxUsersDBTableView1DESCRIZIONE: TcxGridDBColumn;
    cxUsersDBTableView1EMAIL: TcxGridDBColumn;
    cxUsersLevel1: TcxGridLevel;
    dxLayoutControl1Group2: TdxLayoutGroup;
    lcNazScono: TdxLayoutItem;
    Nazione_Scon: TKScxDBLookupDlg;
    LkNazioni: TAstaClientDataSet;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    qParamTicketNAZ_CIT: TStringField;
    LkRegioni: TAstaClientDataSet;
    LkRegioniCODICE: TStringField;
    LkRegioniDESCRIZIONE: TStringField;
    LkRegioniDATA_FINE: TDateTimeField;
    sLkRegioni: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    lcRegioneScono: TdxLayoutItem;
    LkProvincie: TAstaClientDataSet;
    LkProvincieSIGLA: TStringField;
    LkProvincieDESCRIZIONE: TStringField;
    LkProvincieDATA_FINE: TDateTimeField;
    LkProvincieREG_CODICE: TStringField;
    LkProvincieCOD_PROVINCIA: TStringField;
    LkProvincieDATA_INIZIO: TDateTimeField;
    sLkProvincie: TDataSource;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    lcProvScono: TdxLayoutItem;
    LkComuni: TAstaClientDataSet;
    LkComuniDESCRIZIONE: TStringField;
    LkComuniCODICE: TStringField;
    LkComuniSIGLA: TStringField;
    LkComuniCATASTO: TStringField;
    LkComuniNAZ_CODICE: TStringField;
    LkComuniNAZSIGLA: TStringField;
    lcComuneScono: TdxLayoutItem;
    Comune_Scon: TKScxDBLookupDlg;
    qParamTicketDESCCOMSCON: TStringField;
    ApplicazioniEMAIL_PRENO_REFERTO: TMemoField;
    ApplicazioniEMAIL_PRENO_ADDENDUM: TMemoField;
    vgAppInfoEMAIL_PRENO_REFERTO: TcxDBEditorRow;
    vgAppInfoEMAIL_PRENO_ADDENDUM: TcxDBEditorRow;
    ApplicazioniCHK_DATI_IMPEGNATIVA: TIntegerField;
    ApplicazioniCHK_TIPO_ACCESSO: TIntegerField;
    ApplicazioniCHK_TIPO_RICETTA: TIntegerField;
    ApplicazioniCHK_COMPILAZIONE: TIntegerField;
    ApplicazioniCHK_CONSEGNA_REF: TIntegerField;
    vgAppInfoCHK_DATI_IMPEGNATIVA: TcxDBEditorRow;
    vgAppInfoCHK_TIPO_ACCESSO: TcxDBEditorRow;
    vgAppInfoCHK_TIPO_RICETTA: TcxDBEditorRow;
    vgAppInfoCHK_COMPILAZIONE: TcxDBEditorRow;
    vgAppInfoCHK_CONSEGNA_REF: TcxDBEditorRow;
    ApplicazioniCHK_DATA_RICHIESTA: TIntegerField;
    vgAppInfoCHK_DATA_RICHIESTA: TcxDBEditorRow;
    ApplicazioniCHK_IDEN_REFER: TIntegerField;
    vgAppInfoCHK_IDEN_REFER: TcxDBEditorRow;
    ApplicazioniCHK_ESAMI_FILTRABILI: TIntegerField;
    vgAppInfoCHK_ESAMI_FILTRABILI: TcxDBEditorRow;
    ApplicazioniCHK_ABILITA_ADDENDUM: TIntegerField;
    vgAppInfoCHK_ABILITA_ADDENDUM: TcxDBEditorRow;
    qSetDescsNOTECAMPO: TStringField;
    ApplicazioniCANALE_ARC: TStringField;
    vgAppInfoCANALE_ARC: TcxDBEditorRow;
    ModuloRepartiCHK_NOTE_RICH: TIntegerField;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl2Item4: TdxLayoutItem;
    cxModuloReparti: TcxTabSheet;
    lgLocaScono: TdxLayoutGroup;
    lgSito: TdxLayoutGroup;
    lgReferti: TdxLayoutGroup;
    lgEmail: TdxLayoutGroup;
    lgAnagrafica: TdxLayoutGroup;
    lgWorklist: TdxLayoutGroup;
    lgEsami: TdxLayoutGroup;
    ApplicazioniREF_VOCALE: TIntegerField;
    vgAppInfoREF_VOCALE: TcxDBEditorRow;
    ApplicazioniPROVV_DEFINITIVO: TIntegerField;
    vgAppInfoPROVV_DEFINITIVO: TcxDBEditorRow;
    ApplicazioniABILITA_ACC_AMM: TIntegerField;
    vgAppInfoABILITA_ACC_AMM: TcxDBEditorRow;
    ApplicazioniSKIN_DEF: TIntegerField;
    vgAppInfoSKIN_DEF: TcxDBEditorRow;
    sLkSkin: TDataSource;
    cxHintStyleController1: TcxHintStyleController;
    Timer1: TTimer;
    ApplicazioniURGENZA_FK: TIntegerField;
    vgAppInfoURGENZA_FK: TcxDBEditorRow;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl3Group2: TdxLayoutGroup;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    ApplicazioniPACS_FK: TIntegerField;
    ApplicazioniCHK_FONDI_REFERTO: TIntegerField;
    vgAppInfoCHK_FONDI_REFERTO: TcxDBEditorRow;
    ApplicazioniCHK_QUESITO_REF: TIntegerField;
    vgAppInfoCHK_QUESITO_REF: TcxDBEditorRow;
    LkLookAltreRad: TAstaClientDataSet;
    LkLookAltreRadPKREPARTI: TIntegerField;
    LkLookAltreRadDESCRIZIONE: TStringField;
    sLkLookAltreRad: TDataSource;
    ApplicazioniCHK_PRESTAZ_SISS: TIntegerField;
    vgAppInfoCHK_PRESTAZ_SISS: TcxDBEditorRow;
    ApplicazioniCHK_ABILITA_RIATTIVA: TIntegerField;
    vgAppInfoCHK_ABILITA_RIATTIVA: TcxDBEditorRow;
    ApplicazioniCHK_CHECK_IMG: TIntegerField;
    vgAppInfoCHK_CHECK_IMG: TcxDBEditorRow;
    sLkTipoRefVoc: TDataSource;
    aCancellaControllo: TAction;
    dxBarButton9: TdxBarButton;
    aSalvaDesc: TAction;
    aAnnullaDesc: TAction;
    ApplicazioniCHK_PACS_CD: TIntegerField;
    vgAppInfoCHK_PACS_CD: TcxDBEditorRow;
    sqDefPrint: TDataSource;
    qRicRef: TAstaClientDataSet;
    qRicRefCHK_RICERCA_REFERTI: TIntegerField;
    qRicRefDESCRIZIONE: TStringField;
    sqRicRef: TDataSource;
    qParamTicketNAZ_LOCALE: TStringField;
    qParamTicketLINGUA: TStringField;
    qLingue: TAstaClientDataSet;
    sqLingue: TDataSource;
    qLingueLINGUA: TStringField;
    qLingueDESCRIZIONE: TStringField;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl3Item1: TdxLayoutItem;
    qParamTicketCALCOLO_CF: TIntegerField;
    cxDBCheckBox2: TcxDBCheckBox;
    lcCalcolaCF: TdxLayoutItem;
    dxLayoutControl3Group3: TdxLayoutGroup;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutControl3Item2: TdxLayoutItem;
    LkNazLocale: TAstaClientDataSet;
    sLkNazLocale: TDataSource;
    LkNazLocaleCODICE: TStringField;
    LkNazLocaleDESCRIZIONE: TStringField;
    LkNazLocaleSIGLA: TStringField;
    JobsINTERVALLO: TIntegerField;
    JobsALARM: TIntegerField;
    Log_JobsLOG_ID: TIntegerField;
    ApplicazioniCOM_RES_DEF: TStringField;
    vgAppInfoCOM_RES_DEF: TcxDBEditorRow;
    cxAliquotaIva: TcxDBSpinEdit;
    dxLayoutAliquotaIva: TdxLayoutItem;
    qParamTicketALI_IVA: TIntegerField;
    Panel1: TPanel;
    bvlTasti: TBevel;
    btSalva: TcxButton;
    btAnnulla: TcxButton;
    cxPersonalizza: TcxButton;
    procedure btSalvaClick(Sender: TObject);
    procedure rsPropSaver1AfterLoad(Sender: TObject);
    procedure OspedaleCloseDialog(Sender: TObject;
      const Scelto: Boolean);
    procedure Planner1ItemSelect(Sender: TObject; Item: TPlannerItem);
    procedure LkRepPsBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure LkServPsBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure RepPsPropertiesCloseUp(Sender: TObject);
    procedure EsamiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure ServizioPropertiesCloseUp(Sender: TObject);
    procedure cxPageControlPageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure LkDiagnosticheBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure ApplicazioniBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure ApplicazioniAfterPopulate(Sender: TObject);
    procedure ModuloRepartiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure ModuloRepartiNewRecord(DataSet: TDataSet);
    procedure ModuloRepartiAfterPopulate(Sender: TObject);
    procedure cxRichiestePossibiliDBTableViewDragDrop(Sender,
      Source: TObject; X, Y: Integer);
    procedure cxRichiestePossibiliDBTableViewDragOver(Sender,
      Source: TObject; X, Y: Integer; State: TDragState;
      var Accept: Boolean);
    procedure cxRadRichiesteDBTableViewDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxRadRichiesteDBTableViewDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure RichiestePossibiliBeforeQuery(
      Sender: TAstaBaseClientDataSet);
    procedure RadRichiesteBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxGridModuloRepartiDBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxRadRichiesteDBTableViewDblClick(Sender: TObject);
    procedure aSelezionaSingoloCodiceExecute(Sender: TObject);
    procedure aDeselezionaSingoloExecute(Sender: TObject);
    procedure cxRichiestePossibiliDBTableViewDblClick(Sender: TObject);
    procedure ApplicazioniBeforePost(DataSet: TDataSet);
    procedure GruppoEsamiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure LkDiagnPrenoBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxGestioneErroriDBTableView2DragDrop(Sender, Source: TObject;
      X, Y: Integer);
    procedure cxUsersDBTableView1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGestioneErroriDBTableView1DragDrop(Sender, Source: TObject;
      X, Y: Integer);
    procedure tipo_erroriNewRecord(DataSet: TDataSet);
    procedure cxGestioneErroriDBTableView1DragOver(Sender, Source: TObject;
      X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxUsersDBTableView1DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxGestioneErroriDBTableView2DragOver(Sender, Source: TObject;
      X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure aAttivaTuttiJobsExecute(Sender: TObject);
    procedure ConsegnaRefertiPerBeforeQuery(
      Sender: TAstaBaseClientDataSet);
    procedure ConsegnaRefertiPerNewRecord(DataSet: TDataSet);
    procedure LkAltreRadBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qServiziRadiologiaBeforeQuery(
      Sender: TAstaBaseClientDataSet);
    procedure UtentiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxGestioneErroriDBTableView2NavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure TabArchivioBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure TabArchivioNewRecord(DataSet: TDataSet);
    procedure cxDBRadioGroup2PropertiesEditValueChanged(Sender: TObject);
    procedure cxDBRadioGroup5PropertiesEditValueChanged(Sender: TObject);
    procedure cxGridNrArchivioDBTableView1NavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure cxJobsDBTableView1NavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure JobsNewRecord(DataSet: TDataSet);
    procedure cxServiziRadDBTableView1INTESTAREF3PropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure IntestazioniRefertoExecute(Sender: TObject);
    procedure aEditControlliExecute(Sender: TObject);
    procedure aEditControlliUpdate(Sender: TObject);
    procedure cxGestioneErroriDBTableView1NavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure cxGestioneErroriDBTableView1DblClick(Sender: TObject);
    procedure aInsertControlliExecute(Sender: TObject);
    procedure aBloccaTuttiJobsExecute(Sender: TObject);
    procedure qServiziRadiologiaNewRecord(DataSet: TDataSet);
    procedure teFiltroPropertiesChange(Sender: TObject);
    procedure vgAppInfoDrawRowHeader(Sender: TObject; ACanvas: TcxCanvas;
      APainter: TcxvgPainter; AHeaderViewInfo: TcxCustomRowHeaderInfo;
      var Done: Boolean);
    procedure tsRadiologiaShow(Sender: TObject);
    procedure vgAppInfoItemChanged(Sender: TObject; AOldRow: TcxCustomRow;
      AOldCellIndex: Integer);
    procedure btnDescCancelClick(Sender: TObject);
    procedure vgAppInfoURL_REPOSITORYEditPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure vgAppInfoNOTE_SISSEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbHeaderSearchClick(Sender: TObject);
    procedure vgAppInfoEMAIL_PRENO_CONFERMAEditPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure vgAppInfoEMAIL_PRENO_CANCELLAEditPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cbCercaFieldNamePropertiesChange(Sender: TObject);
    procedure cbShowFieldNamePropertiesChange(Sender: TObject);
    procedure aAttivaJobExecute(Sender: TObject);
    procedure aBloccaJobExecute(Sender: TObject);
    procedure aAttivaJobUpdate(Sender: TObject);
    procedure aBloccaJobUpdate(Sender: TObject);
    procedure JobsAfterPost(DataSet: TDataSet);
    procedure aAttivaTuttiJobsUpdate(Sender: TObject);
    procedure aBloccaTuttiJobsUpdate(Sender: TObject);
    procedure cxJobsDBTableView2DataControllerDataModeControllerDetailFirst(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
    function cxJobsDBTableView2DataControllerDataModeControllerDetailIsCurrentQuery(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant): Boolean;
    procedure aApriTuttoRadiologiaExecute(Sender: TObject);
    procedure aChiudiTuttoRadiologiaExecute(Sender: TObject);
    procedure RichiestePossibiliBeforePost(DataSet: TDataSet);
    procedure vgAppInfoEMAIL_PRENO_REFERTOEditPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure vgAppInfoEMAIL_PRENO_ADDENDUMEditPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure vgAppInfoGBLPKSERVPSEditPropertiesInitPopup(Sender: TObject);
    procedure vgAppInfoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxHintStyleController1ShowHintEx(Sender: TObject;
      var Caption, HintStr: String; var CanShow: Boolean;
      var HintInfo: THintInfo);
    procedure Timer1Timer(Sender: TObject);
    procedure cxGrid1DBTableView1InitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure LkLookAltreRadBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure aCancellaControlloExecute(Sender: TObject);
    procedure aCancellaControlloUpdate(Sender: TObject);
    procedure aSalvaDescExecute(Sender: TObject);
    procedure aSalvaDescUpdate(Sender: TObject);
    procedure aAnnullaDescExecute(Sender: TObject);
    procedure aAnnullaDescUpdate(Sender: TObject);
    procedure cxmDescrizionePropertiesChange(Sender: TObject);
    procedure TipoAttivitaBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qSetDescsBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qRicRefBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure btAnnullaClick(Sender: TObject);
    procedure vgAppInfoCOM_RES_DEFEditPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure Log_JobsBeforeQuery(Sender: TAstaBaseClientDataSet);
  private
    arsDescsLabel:  array of string;  // label campi
    arsDescsCampo:  array of string;  // nome campo UCS_APP_INFO
    arsDescsDesc:   array of string;  // descrizione da SET_DESCS.DESCCAMPO
    arsDescsKey:    array of Integer; // valori chiave primaria SET_DESCS.PKSET_DESCS
    arsDescsPadre:  array of string;  // campi padre da SET_DESCS.PADRE
    actualDescIdx:  Integer;
    FItem: TcxRowValueInfo;
    FHintDisplayed: Boolean;
    FDescVariata: Boolean;
    procedure ConfiguraNrArch;
    procedure CaricaDatiCampo;
    function EditMemoConRichEdit(fldmemo: TField): Boolean;
    procedure vgAppInfoGetEditProperties(Sender: TcxCustomEditorRowProperties;
      ARecordIndex: Integer; var AProperties: TcxCustomEditProperties);
    procedure ApplicaFiltro(Sender: TObject);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure DoShow; override;
  end;

var
  FSetupGenerale: TFSetupGenerale;

implementation

uses DMCommon,AstaDBTypes,msgdlgs,sysutils,Variants, VersInfo, Windows,IIConsts,cxGridDBDataDefinitions,IntestaRef,
  EditControlli, StrUtils, Math, Printers, RicComuni, DateUtils;

{$R *.dfm}


procedure TFSetupGenerale.DoShow;
var
  verInfo: TVersionInfoResource;

begin
  inherited;

  qIdAuth.open;
  qTipoReferto.open;

  if not FDMCommon.qTipoInvio.Active then
     FDMCommon.qTipoInvio.syRefresh;

  FDMCommon.LeggiPostoLavoro.Edit;

  verInfo := TVersionInfoResource.KSCreate( Application.ExeName );
  try
  fcVersione.Caption :=verInfo.FileVersion.AsString;
  except
    {per non visualizzare errori dei progetti che non hanno numero di versione}
//    xversione := '';
  end;
  verInfo.Free;

  cxStampe.Properties.Items.Assign(Printer.Printers);
{
  dove := cxStampe.Properties.Items.IndexOf(FDMCommon.StampanteNormale);
  if dove>=0 then
     cxStampe.Text := cxStampe.Properties.Items[dove];
}
  cxEtichette.Properties.Items.Assign(Printer.Printers);
{
  dove := cxEtichette.Properties.Items.IndexOf(FDMCommon.StampanteEtichette);
  if dove>=0 then
     cxEtichette.Text := cxEtichette.Properties.Items[dove];
}

  // -- disattivata: vedi anche codice in RichReparti.pas riga 1411
  dxLayoutControlPswdMedico.Visible := false;

  vgAppInfo.FullCollapse;

  pnlRadRightBottom.Visible := gblSuperUser;
  cxmDescrizione.Properties.ReadOnly := not gblSuperUser;
  btnDescOk.Visible := gblSuperUser;
  btnDescCancel.Visible := gblSuperUser;
  lblDescNomeCampo.Caption := '';
  teDesclabel.Text := '';
  cbCercaFieldName.Visible := gblSuperUser;
  cbShowFieldName.Visible := gblSuperUser;
end;

procedure TFSetupGenerale.btSalvaClick(Sender: TObject);
begin
  inherited;

  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5) then
  begin
    rsPropSaver1.SaveValues;
    rsStorage1.Save;
  end;
  
  if (Applicazioni.State in dsEditModes) then
     Applicazioni.Post;

  if (qParamTicket.State in dsEditModes) then
     qParamTicket.Post;

  if (tipo_errori.State in dsEditModes) then
     tipo_errori.Post;

  if (EmailUsers.State in dsEditModes) then
     EmailUsers.Post;

  if (MapErrori.State in dsEditModes) then
     MapErrori.Post;

  if (FDMCommon.LeggiPostoLavoro.State in dsEditModes) then
     FDMCommon.LeggiPostoLavoro.Post;

  if (ModuloReparti.State in dsEditModes) then
     ModuloReparti.Post;

   FDMCommon.LeggiPostoLavoro.syRefresh;
   FDMCommon.Param_Ticket.syRefresh;

   gblTipoLogin := FDMCommon.LeggiPostoLavoroTIPO_LOGIN.AsInteger;
   gblospedale := FDMCommon.LeggiPostoLavoroGBLOSPEDALE.AsString;
   gblore_riapri := FDMCommon.LeggiPostoLavoroORE_RIAPRI.AsInteger;

   gblTipo_Preno := FDMCommon.LeggiPostoLavoroTIPO_PRENOTAZIONE.AsInteger;
   gblModTecnicoEseguito := (FDMCommon.LeggiPostoLavoroMOD_TECNICO_ESEGUITO.AsInteger=1);

   gblpkworkstation := FDMCommon.LeggiPostoLavoroPKWORKSTATION.AsInteger;

//     if not LeggiPostoLavoroGBLPKREP.IsNull then
//        gblpkrep := LeggiPostoLavoroGBLPKREP.AsInteger;
   if not FDMCommon.LeggiPostoLavoroGBLPKPS.IsNull then
      gblpkrepps := FDMCommon.LeggiPostoLavoroGBLPKPS.AsInteger;
   if not FDMCommon.LeggiPostoLavoroGBLPKSERVPS.IsNull then
      gblpkservps := FDMCommon.LeggiPostoLavoroGBLPKSERVPS.AsInteger;

   FDMCommon.RefertazioneVocale := FDMCommon.LeggiPostoLavoroREFVOCALE.AsInteger;

//   FDMCommon.StampanteNormale := FDMCommon.LeggiPostoLavoroPRINTER1.AsString;
//   FDMCommon.StampanteEtichette := FDMCommon.LeggiPostoLavoroPRINTER2.AsString;
   if not FDMCommon.LeggiPostoLavoroCOM_PORTA.IsNull then
   begin
     FDMCommon.PortaSeriale := FDMCommon.LeggiPostoLavoroCOM_PORTA.AsInteger;
     FDMCommon.ComSpeed := FDMCommon.LeggiPostoLavoroCOM_SPEED.AsString;
     FDMCommon.Databits := FDMCommon.LeggiPostoLavoroCOM_DATABIT.AsInteger;
     FDMCommon.Parita := FDMCommon.LeggiPostoLavoroCOM_PARITY.AsString;
     FDMCommon.BitStop := FDMCommon.LeggiPostoLavoroCOM_STOPBIT.AsInteger;
     FDMCommon.HwCtrl := FDMCommon.LeggiPostoLavoroCOM_HWCTRL.AsString;
     FDMCommon.SwCtrl := FDMCommon.LeggiPostoLavoroCOM_SWCTRL.AsString;
   end;

   FDMCommon.RefertazioneVocale := FDMCommon.LeggiPostoLavoroREFVOCALE.AsInteger;

//  Modalresult := mrOk;
   Close;

end;

procedure TFSetupGenerale.rsPropSaver1AfterLoad(Sender: TObject);
//var
//  xt,fine: TDateTime;
//  increm: word;
//  i: integer;
begin
  inherited;
{
   if dxTimeDal.Items.Count=0 then  // dxTimeDal.Text='' then
   begin
     dxTimeDal.Text := '00.00';
     dxTimeAl.Text := '23.30';

//     dxTimeDal.Items.Clear;
//     dxTimeAl.Items.Clear;

     increm := 30;  // FDMCommon.DecodUnit(dxUnit.ItemIndex);
     xt := FDMCommon.xStrToTime(dxTimeDal.Text);  // EncodeTime(0,0,0,0);
     fine := FDMCommon.xStrToTime(dxTimeAl.Text);  // EncodeTime(24,0,0,0);
     repeat
       dxTimeDal.Items.Add(FormatDateTime('hh.mm',xt));
       dxTimeAl.Items.Add(FormatDateTime('hh.mm',xt));
       xt := IncMinute(xt,increm);
     until xt>fine;
     dxTimeDal.ItemIndex := 0;
     dxTimeAl.ItemIndex := dxTimeAl.Items.Count-1;

   end;
}
end;


constructor TFSetupGenerale.Create(AOwner: TComponent);
var
  x, i: Integer;
  ARow: TcxDBEditorRow;

begin
  inherited;
//???  LeggiPostoLavoro.Open;

//  rsStorage1.Load;

  FDescVariata := False;
  cxCDMasterLookup.Properties.Grid.DataController.DataModeController.SyncMode := True;
  cxPageControl.ActivePage := dxTabGenerale;

  rsStorage1.Load;
  rsPropSaver1.LoadValues;

  tsRadiologia.TabVisible := gblSuperUser;
  cxModuloReparti.TabVisible := gblSuperUser;
  cxConfigura.TabVisible := gblSuperUser;
  dxTabGenerale.TabVisible := gblSuperUser;

  sCDMaster.DataSet := FDMCommon.cdMaster;
  sLkSkin.Dataset := FDMCommon.LkSkin;
  sqSiteName.DataSet := FDMCommon.qDefPrint;

  qSetDescs.Close;
  qSetDescs.Open;
  x := qSetDescs.RecordCount;
  SetLength(arsDescsLabel, x);
  SetLength(arsDescsPadre, x);
  SetLength(arsDescsCampo, x);
  SetLength(arsDescsDesc,  x);
  SetLength(arsDescsKey,  x);
  x := 0;
  cbCampoPadreDesc.Properties.Items.Clear;
  while not qSetDescs.Eof do
  begin
    arsDescsLabel[x] := qSetDescsLABELCAMPO.AsString;
    arsDescsCampo[x] := qSetDescsNOMECAMPO.AsString;
    arsDescsDesc[x]  := qSetDescsNOTECAMPO.AsString;
    arsDescsPadre[x]  := qSetDescsPADRE.AsString;
    arsDescsKey[x]  := qSetDescsPKSET_DESCS.AsInteger;
    cbCampoPadreDesc.Properties.Items.Add(arsDescsCampo[x]);
    qSetDescs.Next;
    Inc(x);
  end;

  // scorre tutti gli elementi della VerticalGrid e imposta un handler generale
  // per la OnGetEditProperties.
  // Viene usata per allineare a sinistra tutti gli elementi numerici
  //
  for i := 0 to vgAppInfo.Rows.Count - 1 do
  begin
    if vgAppInfo.Rows[i] is TcxDBEditorRow then
    begin
      ARow := vgAppInfo.Rows[i] as TcxDBEditorRow;
      ARow.Properties.OnGetEditProperties := vgAppInfoGetEditProperties;
    end;
  end;

  cxModuloReparti.TabVisible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  
end;

procedure TFSetupGenerale.OspedaleCloseDialog(Sender: TObject;
  const Scelto: Boolean);
begin
  inherited;

  {
  RepPs.Clear;
  ServPs.Clear;

  if scelto then
  begin
     LkServizi.syRefresh;
     LkDiagnostiche.syRefresh;
     LkDiagnPreno.syRefresh;
     LkRepPS.syRefresh;
     LkServPs.syRefresh;
  end;
  }
end;

procedure TFSetupGenerale.Planner1ItemSelect(Sender: TObject;
  Item: TPlannerItem);
begin
  inherited;
  Item.SelectColor := Item.Color;
end;

procedure TFSetupGenerale.LkRepPsBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('osp_codice').AsString := ApplicazioniCODICE.AsString;
end;

procedure TFSetupGenerale.LkServPsBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := ApplicazioniGBLPKPS.AsInteger;
end;

procedure TFSetupGenerale.RepPsPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  ApplicazioniGBLPKSERVPS.Clear;
end;

procedure TFSetupGenerale.EsamiBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  inherited;
	Sender.Parambyname('reparti_fk').AsInteger := gblpkrep; // ApplicazioniGBLPKREP.AsInteger;

end;

procedure TFSetupGenerale.ServizioPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  Esami.syRefresh;
end;

procedure TFSetupGenerale.cxPageControlPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if (NewPage=tsRadiologia) and not Applicazioni.Active then
  begin
     Applicazioni.open;
     if not Applicazioni.IsEmpty then
     begin
        Applicazioni.Edit;
     end;
     if not GruppoEsami.Active then
        GruppoEsami.open;
     if not TipoAttivita.Active then
        TipoAttivita.open;
     if not sLkOspedali.Dataset.Filtered then
     begin
        sLkOspedali.Dataset.Filter := 'TIPO_ACCESSO='+#39+'E'+#39;
        sLkOspedali.Dataset.Filtered := true;
     end;
     if not Listini.Active then
        Listini.open;
     if not ConsegnaRefertiPer.Active then
     begin
        ConsegnaRefertiPer.open;
        LkAltreRad.open;
     end;
     if not qServiziRadiologia.Active then
     begin
        qServiziRadiologia.open;
        Utenti.open;
     end;
     if not TabArchivio.Active then
        TabArchivio.open;
     ConfiguraNrArch;
//     vgAppInfoNOTE_SISS.Visible := (ApplicazioniFIRMA_DIGITALE.AsInteger in [3,4,5,6]);
//     vgAppInfoURL_REPOSITORY.Visible := (ApplicazioniFIRMA_DIGITALE.AsInteger in [3,4,5,6]);
  end;
  if (NewPage=cxModuloReparti) and not ModuloReparti.Active then
  begin
     ModuloReparti.open;
  end;
  if (NewPage=cxConfigura) and not qParamTicket.Active then
  begin
     qParamTicket.open;
     if not qParamTicket.IsEmpty then
     begin
        qParamTicket.Edit;
     end;
     LkNazioni.Open;
     LkRegioni.Open;
     LkProvincie.Open;
     LkComuni.Open;
     qRicRef.Open;
     qLingue.Open;
     LkNazLocale.Open;
  end;
  if (NewPage=cxPageJobs) and not Jobs.Active then
  begin
     tipo_errori.open;
     EmailUsers.open;
     MapErrori.open;
     Jobs.open;
     Log_Jobs.ParamByName('job_name').AsString := JobsJOB_NAME.AsString;
     Log_Jobs.open;
  end;

end;

procedure TFSetupGenerale.LkDiagnosticheBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;

end;

procedure TFSetupGenerale.ApplicazioniBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFSetupGenerale.ApplicazioniAfterPopulate(Sender: TObject);
begin
  inherited;
    LkServizi.syRefresh;
    LkDiagnostiche.syRefresh;
    LkDiagnPreno.syRefresh;
    LkRepPs.syRefresh;
    LkServPs.syRefresh;
    Esami.syRefresh;
end;

procedure TFSetupGenerale.ModuloRepartiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('ospedale').AsString := gblospedale;
end;

procedure TFSetupGenerale.ModuloRepartiNewRecord(DataSet: TDataSet);
begin
  inherited;
  ModuloRepartiTIPO_APP.AsInteger := 2;
  ModuloRepartiCHECK_NASCITA.AsInteger := 0;
  ModuloRepartiCHECK_RESIDENZA.AsInteger := 0;
  ModuloRepartiPSWD_PER_MEDICO.AsInteger := 1;
  ModuloRepartiCHECK_MOTIVOCANC.AsInteger := 0;
  ModuloRepartiANAG_SCRITTURA.AsInteger := 0;
  ModuloRepartiCHK_SPECIFICAZIONI.AsInteger := 0;
  ModuloRepartiCHK_TELEFONO_SERVIZIO.AsInteger := 1;

  RadRichieste.syRefresh;
  RichiestePossibili.syRefresh;  

end;

procedure TFSetupGenerale.ModuloRepartiAfterPopulate(Sender: TObject);
begin
  inherited;
  cxGridModuloRepartiDBTableView1.Controller.GotoFirst;
end;

procedure TFSetupGenerale.cxRichiestePossibiliDBTableViewDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  I: integer;
  pkm: integer;
begin
  inherited;
  RadRichieste.DisableControls;
  RichiestePossibili.DisableControls;
  try
  for I := 0 to cxRadRichiesteDBTableView.Controller.SelectedRecordCount - 1 do
  begin
    pkm := cxRadRichiesteDBTableView.Controller.SelectedRecords[i].Values[cxRadRichiesteDBTableViewREPARTI_FK.Index];
    if not RichiestePossibili.Locate('REPARTI_FK',pkm,[]) then
    begin
      RadRichieste.Locate('REPARTI_FK',pkm,[]);
      RichiestePossibili.Append;
      RichiestePossibiliREPARTI_FK.AsInteger := ModuloRepartiREPARTI_FK.AsInteger;
      RichiestePossibiliRAD_DISP.AsInteger := RadRichiesteREPARTI_FK.AsInteger;
      RichiestePossibiliRADIOLOGIA.AsString := RadRichiesteRADIOLOGIA.AsString;
      RichiestePossibili.Post;
    end;
  end;
  cxRadRichiesteDBTableView.Controller.DeleteSelection;
  finally
     RadRichieste.EnableControls;
     RichiestePossibili.EnableControls;
     if (cxRadRichiesteDBTableView.DataController.RecordCount>0) and Assigned(cxRadRichiesteDBTableView.Controller.FocusedRecord) then
         cxRadRichiesteDBTableView.Controller.FocusedRecord.Selected := true;
  end;

end;

procedure TFSetupGenerale.cxRichiestePossibiliDBTableViewDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  aSourceView: TcxGridDBTableView;
begin
  inherited;
  Accept := false;
  if (Source is TcxDragControlObject) and (Sender is TcxGridSite) then
  begin
     aSourceView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
     Accept := (aSourceView=cxRadRichiesteDBTableView) and not ModuloRepartiREPARTI_FK.IsNull;
  end;

end;

procedure TFSetupGenerale.cxRadRichiesteDBTableViewDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  I: integer;
  pkm: integer;
begin
  inherited;
  RadRichieste.DisableControls;
  RichiestePossibili.DisableControls;
  try
  for I := 0 to cxRichiestePossibiliDBTableView.Controller.SelectedRecordCount - 1 do
  begin
    pkm := cxRichiestePossibiliDBTableView.Controller.SelectedRecords[i].Values[cxRichiestePossibiliDBTableViewRAD_DISP.Index];
    if not RadRichieste.Locate('REPARTI_FK',pkm,[]) then
    begin
      RichiestePossibili.Locate('REPARTI_FK',pkm,[]);
      RadRichieste.Append;
      RadRichiesteREPARTI_FK.AsInteger := RichiestePossibiliRAD_DISP.AsInteger;
      RadRichiesteRADIOLOGIA.AsString := RichiestePossibiliRADIOLOGIA.AsString;
      RadRichieste.Post;
    end;
  end;
  cxRichiestePossibiliDBTableView.Controller.DeleteSelection;

  finally
     RadRichieste.EnableControls;
     RichiestePossibili.EnableControls;
     if (cxRichiestePossibiliDBTableView.DataController.RecordCount>0) and Assigned(cxRichiestePossibiliDBTableView.Controller.FocusedRecord) then
         cxRichiestePossibiliDBTableView.Controller.FocusedRecord.Selected := true;
  end;

end;

procedure TFSetupGenerale.cxRadRichiesteDBTableViewDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  aSourceView: TcxGridDBTableView;
begin
  inherited;
  Accept := false;
  if (Source is TcxDragControlObject) and (Sender is TcxGridSite) then
  begin
     aSourceView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
     Accept := (aSourceView=cxRichiestePossibiliDBTableView);
  end;

end;

procedure TFSetupGenerale.RichiestePossibiliBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := ModuloRepartiREPARTI_FK.AsInteger;
end;

procedure TFSetupGenerale.RadRichiesteBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := ModuloRepartiREPARTI_FK.AsInteger;
end;

procedure TFSetupGenerale.cxGridModuloRepartiDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;

  if (APrevFocusedRecord<>AFocusedRecord) then
  begin
     RadRichieste.syRefresh;
     RichiestePossibili.syRefresh;
  end;

end;


destructor TFSetupGenerale.Destroy;
begin

  if sLkOspedali.Dataset.Filtered then
  begin
     sLkOspedali.Dataset.Filtered := false;
     sLkOspedali.Dataset.Filter := '';
  end;

  inherited;

end;

procedure TFSetupGenerale.cxRadRichiesteDBTableViewDblClick(
  Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxRadRichieste),LongInt(aSelezionaSingoloCodice));
end;

procedure TFSetupGenerale.aSelezionaSingoloCodiceExecute(Sender: TObject);
begin
  inherited;
  cxRichiestePossibiliDBTableViewDragDrop(self, cxRadRichiesteDBTableView, 0, 0);
end;

procedure TFSetupGenerale.aDeselezionaSingoloExecute(Sender: TObject);
begin
  inherited;
  cxRadRichiesteDBTableViewDragDrop(self, cxRichiestePossibiliDBTableView, 0, 0);
end;

procedure TFSetupGenerale.cxRichiestePossibiliDBTableViewDblClick(
  Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxRichiestePossibili),LongInt(aDeselezionaSingolo));
end;

procedure TFSetupGenerale.ApplicazioniBeforePost(DataSet: TDataSet);
begin
  inherited;
{
  if (ApplicazioniORE_RIAPRI.AsInteger<0) then
  begin
     msgDlg(format(RS_Gene_Positivo,[ApplicazioniORE_RIAPRI.DisplayLabel]), '', ktWarning, [kbOK], dfFirst);
     ApplicazioniORE_RIAPRI.FocusControl;
     Abort;
  end
}

  if not ApplicazioniGBLPKPS.IsNull and ApplicazioniGBLPKSERVPS.IsNull then
  begin
     msgDlg(format(RIS_CampoObbligatorio,[ApplicazioniGBLPKSERVPS.DisplayLabel]), '', ktWarning, [kbOK], dfFirst);
     ApplicazioniGBLPKSERVPS.FocusControl;
     Abort;
  end;

end;

procedure TFSetupGenerale.GruppoEsamiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;

end;

procedure TFSetupGenerale.LkDiagnPrenoBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFSetupGenerale.cxGestioneErroriDBTableView2DragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  ADestView: TcxGridDBTableView;
  AMasterDC: TcxGridDBDataController;
  AMasterRecorIndex: Integer;
  AMasterID: Variant;
begin

  ADestView := TcxGridDBTableView(TcxGridSite(Sender).GridView);
  AMasterDC := ADestView.DataController.GetMasterDataController as TcxGridDBDataController;
  AMasterRecorIndex := ADestView.DataController.GetMasterRecordIndex;

  with AMasterDC do
    AMasterID := GetRecordId(AMasterRecorIndex);

  cxGestioneErrori.BeginUpdate;

  with ADestView.DataController do
  begin
    DataSet.Insert;
//    DataSet.FieldByName(MasterKeyFieldNames).Value := AMasterID;
    MapErroriTIPO_ERRORE.AsInteger := AMasterID;  // tipo_erroriPKTIPOERRORI.AsInteger;
    MapErroriEMAILUSERS_FK.AsInteger := EmailUsersPKEMAILUSERS.AsInteger;
    MapErroriDESCRIZIONE.AsString := EmailUsersDESCRIZIONE.AsString;
    MapErroriEMAIL.AsString := EmailUsersEMAIL.AsString;
    DataSet.Post;
  end;

  cxGestioneErrori.EndUpdate;

end;

procedure TFSetupGenerale.cxUsersDBTableView1DragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
  inherited;
  MapErrori.Delete;
  cxGestioneErroriDBTableView1.DataController.UpdateItems(False);
//  cxGestioneErroriDBTableView2.DataController.UpdateItems(False);
end;

procedure TFSetupGenerale.cxGestioneErroriDBTableView1DragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  Site: TcxGridSite;
  HitTest: TcxCustomGridHitTest;
//  Item: TcxCustomGridTableItem;
  Rec: TcxCustomGridRecord;
  ID: integer;
begin
  Site := Sender as TcxGridSite;
  HitTest := Site.GridView.ViewInfo.GetHitTest(X, Y);

  if HitTest is TcxGridRecordCellHitTest then
  begin
//    Item := TcxGridRecordCellHitTest(HitTest).Item;
    Rec := TcxGridRecordCellHitTest(HitTest).GridRecord;

    ID := Rec.Values[cxGestioneErroriDBTableView1PKTIPOERRORI.Index];

    cxGestioneErrori.BeginUpdate;
    MapErrori.Insert;
    MapErroriTIPO_ERRORE.AsInteger := ID;  // tipo_erroriPKTIPOERRORI.AsInteger;
    MapErroriEMAILUSERS_FK.AsInteger := EmailUsersPKEMAILUSERS.AsInteger;
    MapErroriDESCRIZIONE.AsString := EmailUsersDESCRIZIONE.AsString;
    MapErroriEMAIL.AsString := EmailUsersEMAIL.AsString;
    MapErrori.Post;
    cxGestioneErrori.EndUpdate;

  end;

end;

procedure TFSetupGenerale.tipo_erroriNewRecord(DataSet: TDataSet);
begin
  inherited;
  tipo_erroriFLAG_SEND.AsInteger := 1;
end;

procedure TFSetupGenerale.cxGestioneErroriDBTableView1DragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  Accept := true;
end;

procedure TFSetupGenerale.cxUsersDBTableView1DragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  Accept := true;
end;

procedure TFSetupGenerale.cxGestioneErroriDBTableView2DragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  Accept := true;
end;

procedure TFSetupGenerale.aAttivaTuttiJobsExecute(Sender: TObject);
begin
  inherited;
  if (Jobs.State in dsEditModes) then
     Jobs.Post;
  try
  AttivaTuttiJobs.ExecSQL;
  except
     on E: Exception do
        MsgDlgPos(E.Message, '', ktError, [kbOk], dfFirst);
  end;
  Jobs.syRefresh;

end;

procedure TFSetupGenerale.ConsegnaRefertiPerBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFSetupGenerale.ConsegnaRefertiPerNewRecord(DataSet: TDataSet);
begin
  inherited;
  ConsegnaRefertiPerRADIOLOGIA.AsInteger := gblpkrep;

end;

procedure TFSetupGenerale.LkAltreRadBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFSetupGenerale.qServiziRadiologiaBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFSetupGenerale.UtentiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFSetupGenerale.cxGestioneErroriDBTableView2NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;

  if AButtonIndex=NBDI_DELETE then
  begin
    MapErrori.Delete;
    cxGestioneErroriDBTableView1.DataController.UpdateItems(False);
    ADone := true;
  end;

end;

procedure TFSetupGenerale.TabArchivioBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
	Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFSetupGenerale.TabArchivioNewRecord(DataSet: TDataSet);
begin
  inherited;
  TabArchivioREPARTI_FK.AsInteger := gblpkrep;
end;

procedure TFSetupGenerale.ConfiguraNrArch;
begin
  vgAppInfoVIEW_NR_ARCHIVIO.Visible := ApplicazioniVIEW_NR_ARCHIVIO.AsInteger > 0;
  // cxGridNrArchivioDBTableView1ANNO.Visible := (ApplicazioniTIPO_NR_ARCHIVIO.AsInteger in [1,3]);
  TabArchivioANNO.Required := (ApplicazioniTIPO_NR_ARCHIVIO.AsInteger in [1,3]);
  // cxDBRadioGroupTipoNrArch.Enabled := ApplicazioniVIEW_NR_ARCHIVIO.AsInteger > 0;
end;

procedure TFSetupGenerale.cxDBRadioGroup2PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  ConfiguraNrArch;
end;

procedure TFSetupGenerale.cxDBRadioGroup5PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  ConfiguraNrArch;
end;

procedure TFSetupGenerale.cxGridNrArchivioDBTableView1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  if AButtonIndex=NBDI_REFRESH then
  begin
    if msgDlg(RS_RicalcolaNrArch, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes then
    begin
      RicalcolaNrArch.Parambyname('tipo_nr_archivio').AsInteger := ApplicazioniTIPO_NR_ARCHIVIO.AsInteger;
      RicalcolaNrArch.Parambyname('reparti_fk').AsInteger := gblpkrep;
      RicalcolaNrArch.ExecCommit;
      TabArchivio.syRefresh;
    end;
    ADone := true;
  end;

end;

procedure TFSetupGenerale.cxJobsDBTableView1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
  NBDI_REFRESH: begin
//                PostMessage(Handle,SY_DBLCLICK,0,LongInt(aAttivaControlli));
                Jobs.syRefresh;
                ADone := true;
               end;
  end;
end;

procedure TFSetupGenerale.JobsNewRecord(DataSet: TDataSet);
begin
  inherited;
  JobsENABLED.AsString := 'ENABLED';
end;

procedure TFSetupGenerale.cxServiziRadDBTableView1INTESTAREF3PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxServiziRad),LongInt(IntestazioniReferto));
end;

procedure TFSetupGenerale.IntestazioniRefertoExecute(Sender: TObject);
var
  res: integer;
begin
  inherited;
  FIntestaRef := TFIntestaRef.Create(nil);
  try
     if not Assigned(FIntestaRef.sqServiziRadiologia.DataSet) then
        FIntestaRef.sqServiziRadiologia.DataSet := qServiziRadiologia;

     res := FIntestaRef.ShowModal;
     if (qServiziRadiologia.State in dsEditModes) then
     begin
        if (res=mrOk) then
           qServiziRadiologia.Post
        else
           qServiziRadiologia.Cancel;
     end;
  finally
     FIntestaRef.Free;
  end;

end;

procedure TFSetupGenerale.aEditControlliExecute(Sender: TObject);
begin
  inherited;
  FEditControlli := TFEditControlli.Create(nil);
  try
     FEditControlli.Controlli.Parambyname('pktipoerrori').AsInteger := tipo_erroriPKTIPOERRORI.AsInteger;
     FEditControlli.Controlli.Open;
     if FEditControlli.ShowModal=mrOk then
        tipo_errori.refreshrecord;
  finally
     FEditControlli.Free;
  end;

end;

procedure TFSetupGenerale.aEditControlliUpdate(Sender: TObject);
begin
  inherited;
  aEditControlli.Enabled := (tipo_erroriPKTIPOERRORI.AsInteger>=10);
end;

procedure TFSetupGenerale.cxGestioneErroriDBTableView1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
  NBDI_INSERT: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(aInsertControlli));
                ADone := true;
             end;
  NBDI_EDIT: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(aEditControlli));
                ADone := true;
             end;
  NBDI_REFRESH: begin
                tipo_errori.syRefresh;
                ADone := true;
               end;
  end;

end;

procedure TFSetupGenerale.cxGestioneErroriDBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxGestioneErrori),LongInt(aEditControlli));
end;

procedure TFSetupGenerale.aInsertControlliExecute(Sender: TObject);
var
  TempUM: TAstaUpdateMethod;
begin
  inherited;
  FEditControlli := TFEditControlli.Create(nil);
  try
     FEditControlli.Controlli.OpenNoFetch;
     FEditControlli.Controlli.Insert;
     if FEditControlli.ShowModal=mrOk then
     begin
        TempUM := tipo_errori.UpdateMethod;
        tipo_errori.UpdateMethod := umManual;
        try
          tipo_errori.InsertRefresh(FEditControlli.ControlliPKTIPOERRORI.AsInteger);
        finally
          tipo_errori.UpdateMethod := TempUM;
        end;
     end;
  finally
     FEditControlli.Free;
  end;

end;

procedure TFSetupGenerale.aBloccaTuttiJobsExecute(Sender: TObject);
begin
  inherited;
  if (Jobs.State in dsEditModes) then
     Jobs.Post;
  try
  DisattivaControlli.ExecSQL;
  except
     on E: Exception do
        MsgDlgPos(E.Message, '', ktError, [kbOk], dfFirst);
  end;
  Jobs.syRefresh;

end;

procedure TFSetupGenerale.qServiziRadiologiaNewRecord(DataSet: TDataSet);
begin
  inherited;
  qServiziRadiologiaREPARTI_FK.AsInteger := gblpkrep;
  qServiziRadiologiaTIPO_SERVIZIO.AsString := 'I';

end;

procedure TFSetupGenerale.teFiltroPropertiesChange(Sender: TObject);
begin
  inherited;
  ApplicaFiltro(Sender);
end;

{*------------------------------------------------------------------------------
  Applica il filtro sui dati della VerticalGrid.

  Se cbHeaderSearch è checked effettua la ricerca anche sulle caption
  delle CategoryRow, altrimenti cerca solo nelle caption delle righe.
  Le caption delle righe sono prese dagli array associati.

  Se cbCercaFieldName è checked effettua la ricerca sui nomi dei campi e non
  sulle label contenute nell'array o nelle caption delle CategoryRow.

  @param Sender   padre
  @return None   ResultDescription
------------------------------------------------------------------------------*}
procedure TFSetupGenerale.ApplicaFiltro(Sender: TObject);
var
  x, i: Integer;
  s, sFiltro: string;

begin
  inherited;
  if cbCercaFieldName.Checked then
    cbHeaderSearch.Checked := False;

  vgAppInfo.BeginUpdate;
  sFiltro := Trim(teFiltro.Text);
  if sFiltro = '' then
  begin
    for x := 0 to vgAppInfo.Rows.Count-1 do
    begin
      vgAppInfo.Rows[x].Visible := True;
      vgAppInfo.Rows[x].Tag := 0;
    end;
  end
  else
  begin
    vgAppInfo.FullExpand;
    for x := 0 to vgAppInfo.Rows.Count-1 do
    begin
      if (vgAppInfo.Rows[x] is TcxCategoryRow) then
      begin
        if not vgAppInfo.Rows[x].Expanded then
          vgAppInfo.Rows[x].Expand(True);
        vgAppInfo.Rows[x].Visible := True;
        if cbHeaderSearch.Checked then
        begin
          if (vgAppInfo.Rows[x].Parent is TcxCategoryRow) and (vgAppInfo.Rows[x].Parent.Tag=1) then
            vgAppInfo.Rows[x].Tag := 1
          else
          begin
            s := TcxCategoryRow(vgAppInfo.Rows[x]).Properties.Caption;
            vgAppInfo.Rows[x].Tag := IfThen(Pos(UpperCase(sFiltro), UpperCase(s)) <> 0, 1, 0);
          end;
        end;
      end
      else
      begin
        if cbHeaderSearch.Checked and (vgAppInfo.Rows[x].Parent is TcxCategoryRow) and (vgAppInfo.Rows[x].Parent.Tag=1) then
          vgAppInfo.Rows[x].Visible := True
        else
        begin
          s := TcxDBEditorRow(vgAppInfo.Rows[x]).Properties.DataBinding.FieldName;
          if cbCercaFieldName.Checked then
          begin
            vgAppInfo.Rows[x].Visible := Pos(UpperCase(sFiltro), UpperCase(s)) <> 0;
          end
          else
          begin
            i := AnsiIndexText(s, arsDescsCampo);
            if i > 0 then
            begin
              s := arsDescsLabel[i];
              vgAppInfo.Rows[x].Visible := Pos(UpperCase(sFiltro), UpperCase(s)) <> 0;
            end
            else
              vgAppInfo.Rows[x].Visible := False;
          end;
        end;
      end;
    end;

    // Cicla tutte le righe all'inverso per impostare a visibile i gruppi che hanno
    // figli visibili oppure che la CategoryRow è padre di una CategoryRow visibile
    //
    for x := vgAppInfo.Rows.Count-1 downto 0 do
    begin
      if (vgAppInfo.Rows[x] is TcxCategoryRow) then
        vgAppInfo.Rows[x].Visible := (vgAppInfo.Rows[x].Tag=1) or (vgAppInfo.Rows[x].HasVisibleChildren)
{JRT 6239}
      else if vgAppInfo.Rows[x].Visible and Assigned(vgAppInfo.Rows[x].Parent) and not vgAppInfo.Rows[x].Parent.Visible then
           vgAppInfo.Rows[x].Parent.Visible := True;
{}
    end;
  end;
  vgAppInfo.EndUpdate;
end;

{*------------------------------------------------------------------------------
  Imposta l'header corretto in base all'array delle descrizioni
  @param Sender   padre
  @param ACanvas   ParameterDescription
  @param APainter   ParameterDescription
  @param AHeaderViewInfo   ParameterDescription
  @param Done   ParameterDescription
  @return None   ResultDescription
------------------------------------------------------------------------------*}
procedure TFSetupGenerale.vgAppInfoDrawRowHeader(Sender: TObject;
  ACanvas: TcxCanvas; APainter: TcxvgPainter;
  AHeaderViewInfo: TcxCustomRowHeaderInfo; var Done: Boolean);
var
  x: Integer;
  s: string;
begin
  inherited;
  if AHeaderViewInfo.Row is TcxDBEditorRow then
  begin
    s := TcxDBEditorRow(AHeaderViewInfo.Row).Properties.DataBinding.FieldName;
    if (not cbShowFieldName.Enabled) or (not cbShowFieldName.Checked) then
    begin
      x := AnsiIndexText(s, arsDescsCampo);
      if x >= 0 then
      begin
        s := arsDescsLabel[x];
      end;
    end;
    AHeaderViewInfo.CaptionsInfo.Items[0].Caption := s;
  end;
end;

procedure TFSetupGenerale.tsRadiologiaShow(Sender: TObject);
begin
  inherited;
  teFiltro.SetFocus;
end;

{*------------------------------------------------------------------------------
  Cerca la chiave primaria associata alla riga attualmente in editing.
  Se la ricerca ha esito positivo effettua l'update e committa i dati.
  @param Sender   padre
  @return None   
------------------------------------------------------------------------------*}
procedure TFSetupGenerale.vgAppInfoItemChanged(Sender: TObject;
  AOldRow: TcxCustomRow; AOldCellIndex: Integer);
begin
  CaricaDatiCampo;
end;

procedure TFSetupGenerale.btnDescCancelClick(Sender: TObject);
begin
  inherited;

end;

{*------------------------------------------------------------------------------
  Se c'è una riga selezionata ed è di tipo EditorRow carica i dati di
  label, descrizione e nome campo dagli array relativi
  @return None   ResultDescription
------------------------------------------------------------------------------*}
procedure TFSetupGenerale.CaricaDatiCampo;
var
  s: string;
  x, i: Integer;
begin
  inherited;
  if (vgAppInfo.FocusedRow = nil) then
    Exit;

  FDescVariata := false;
  if (vgAppInfo.FocusedRow is TcxCategoryRow) then
  begin
      cxLabel3.Enabled := False;
      cxmDescrizione.Enabled := False;
  end
  else if (vgAppInfo.FocusedRow is TcxDBEditorRow) then
  begin
    cxLabel3.Enabled := true;
    cxmDescrizione.Enabled := true;
    s := TcxDBEditorRow(vgAppInfo.FocusedRow).Properties.DataBinding.FieldName;
    i := AnsiIndexText(s, arsDescsCampo);
    x := -1;
    if i >= 0 then
    begin
      actualDescIdx := i;
      s := arsDescsDesc[i];
      cxmDescrizione.Lines.Text := s;
      teDesclabel.Text := arsDescsLabel[i];
      lblDescNomeCampo.Caption := arsDescsCampo[i];
    end;
    if x > -1 then
    begin
      cbDescrizioneDa.ItemIndex := 1;
      cbCampoPadreDesc.ItemIndex := x;
    end
    else
    begin
      cbDescrizioneDa.ItemIndex := 0;
      cbCampoPadreDesc.ItemIndex := -1;
    end;
  end;
end;


{*------------------------------------------------------------------------------
  Apre la form cxRichMemoDlg per effettuare l'editing della stringa/memo
  contenuta nel campo passato come parametro
  @param fldmemo   campo di tipo TField
  @return Boolean   True se cxRichMemoDlg si è chiuso con il pulsante "Conferma"
------------------------------------------------------------------------------*}
function TFSetupGenerale.EditMemoConRichEdit(fldmemo: TField): Boolean;
begin
  Result := True;
  strRichMemoText := TStringStream.Create('');
  try
    strRichMemoText.WriteString(fldmemo.AsString);

    if cxRichMemoDlg.Execute(false) then
    begin
      if not (fldmemo.DataSet.State in dsEditModes) then
        fldmemo.DataSet.Edit;
      fldmemo.AsString := FDMCommon.RTFToANSI(strRichMemoText.DataString);
    end
    else
      Result := False;
  finally
    strRichMemoText.Free;
    strRichMemoText := nil;
  end;
end;


procedure TFSetupGenerale.vgAppInfoURL_REPOSITORYEditPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  EditMemoConRichEdit(ApplicazioniURL_REPOSITORY)
end;

procedure TFSetupGenerale.vgAppInfoNOTE_SISSEditPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  EditMemoConRichEdit(ApplicazioniNOTE_SISS);
end;


{*------------------------------------------------------------------------------
  cbCercaFieldName e cdHeaderSearch sono mutuamente esclusivi
  @param Sender   padre
  @return None   ResultDescription
------------------------------------------------------------------------------*}
procedure TFSetupGenerale.cbHeaderSearchClick(Sender: TObject);
begin
  inherited;
  if cbHeaderSearch.Checked then
    cbCercaFieldName.Checked := False;
  ApplicaFiltro(Sender);
end;

procedure TFSetupGenerale.vgAppInfoEMAIL_PRENO_CONFERMAEditPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  EditMemoConRichEdit(ApplicazioniEMAIL_PRENO_CONFERMA);
end;

procedure TFSetupGenerale.vgAppInfoEMAIL_PRENO_CANCELLAEditPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  EditMemoConRichEdit(ApplicazioniEMAIL_PRENO_CANCELLA);
end;

{*------------------------------------------------------------------------------
  Imposta l'allineamento a sinistra dei ImageComboBox e l'ImmediatePost a True
  @param Sender   padre
  @param ARecordIndex   Record Index
  @param AProperties   Properties controllo
  @return None   ResultDescription  
------------------------------------------------------------------------------*}
procedure TFSetupGenerale.vgAppInfoGetEditProperties(
  Sender: TcxCustomEditorRowProperties; ARecordIndex: Integer;
  var AProperties: TcxCustomEditProperties);
begin
  if TcxDBEditorRow(Sender.Row).Properties.EditProperties is TcxImageComboBoxProperties then
  begin
    TcxImageComboBoxProperties(AProperties).Alignment.Horz := taLeftJustify;
    TcxImageComboBoxProperties(AProperties).ImmediatePost := True;
  end;
end;


procedure TFSetupGenerale.cbCercaFieldNamePropertiesChange(
  Sender: TObject);
begin
  inherited;
  cbHeaderSearch.Checked := not cbCercaFieldName.Checked;
  // cbShowFieldName.Enabled := cbCercaFieldName.Checked;
  ApplicaFiltro(Sender);
end;

procedure TFSetupGenerale.cbShowFieldNamePropertiesChange(Sender: TObject);
begin
  inherited;
  ApplicaFiltro(Sender);
end;

procedure TFSetupGenerale.aAttivaJobExecute(Sender: TObject);
begin
  inherited;
  AttivaJob.ParamByName('attiva').AsInteger := 1;
  AttivaJob.ParamByName('job_name').AsString := JobsJOB_NAME.AsString;
  AttivaJob.ExecSQL;
  Jobs.RefreshRecord;
end;

procedure TFSetupGenerale.aBloccaJobExecute(Sender: TObject);
begin
  inherited;
  AttivaJob.ParamByName('attiva').AsInteger := 0;
  AttivaJob.ParamByName('job_name').AsString := JobsJOB_NAME.AsString;
  AttivaJob.ExecSQL;
  Jobs.RefreshRecord;  
end;

procedure TFSetupGenerale.aAttivaJobUpdate(Sender: TObject);
begin
  inherited;
  aAttivaJob.Enabled := not Jobs.IsEmpty and (JobsALARM.AsInteger in [0,2]);
end;

procedure TFSetupGenerale.aBloccaJobUpdate(Sender: TObject);
begin
  inherited;
  aBloccaJob.Enabled := not Jobs.IsEmpty and (JobsALARM.AsInteger=1);
end;

procedure TFSetupGenerale.JobsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if not (Jobs.UpdateMethod=umManual) then
     Jobs.RefreshRecord(JobsJOB_ACTION.AsString,'JOB_ACTION');
end;

procedure TFSetupGenerale.aAttivaTuttiJobsUpdate(Sender: TObject);
begin
  inherited;
  aAttivaTuttiJobs.Enabled := not Jobs.IsEmpty
end;

procedure TFSetupGenerale.aBloccaTuttiJobsUpdate(Sender: TObject);
begin
  inherited;
  aBloccaTuttiJobs.Enabled := not Jobs.IsEmpty
end;

procedure TFSetupGenerale.cxJobsDBTableView2DataControllerDataModeControllerDetailFirst(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
begin
  inherited;
  FDMCommon.DetailFirst(ADataSet,AMasterDetailKeyFieldNames,AMasterDetailKeyValues,AReopened);
end;

function TFSetupGenerale.cxJobsDBTableView2DataControllerDataModeControllerDetailIsCurrentQuery(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant): Boolean;
begin
  inherited;
  result := FDMCommon.DetailIsCurrentQuery(ADataSet,AMasterDetailKeyFieldNames,AMasterDetailKeyValues);
end;

procedure TFSetupGenerale.aApriTuttoRadiologiaExecute(Sender: TObject);
begin
  inherited;
  vgAppInfo.FullExpand;
end;

procedure TFSetupGenerale.aChiudiTuttoRadiologiaExecute(Sender: TObject);
begin
  inherited;
  vgAppInfo.FullCollapse;
end;

procedure TFSetupGenerale.RichiestePossibiliBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (ModuloReparti.State in dsEditModes) then
     ModuloReparti.Post;
end;

procedure TFSetupGenerale.vgAppInfoEMAIL_PRENO_REFERTOEditPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  EditMemoConRichEdit(ApplicazioniEMAIL_PRENO_REFERTO);
end;

procedure TFSetupGenerale.vgAppInfoEMAIL_PRENO_ADDENDUMEditPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  EditMemoConRichEdit(ApplicazioniEMAIL_PRENO_ADDENDUM);
end;

procedure TFSetupGenerale.vgAppInfoGBLPKSERVPSEditPropertiesInitPopup(
  Sender: TObject);
begin
  inherited;
  LkServPs.syRefresh;
end;

procedure TFSetupGenerale.vgAppInfoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  AText: String;
  AVGrid : TcxDBVerticalGrid;
begin
  AVGrid := Sender as TcxDBVerticalGrid;
  if (AVGrid.HitTest.HitAtValue) and (FItem <> AVGrid.HitTest.HitTestItem) and not FHintDisplayed then
    begin
      cxHintStyleController1.HideHint;
      Timer1.Enabled := False;
      //store the current record and column
      FItem := AVGrid.HitTest.HitTestItem as TcxRowValueInfo;
      AText := VarToStr(FItem.DisplayValue);
      //obtain the current cell display text
      with AVGrid.ClientToScreen(FItem.BoundsRect.TopLeft) do
      begin
        FHintDisplayed := True;
        // show hint
        cxHintStyleController1.ShowHint(X, Y, '', AText);
      end;
      //start the hide hint timer
      Timer1.Enabled := True;
    end
  else
    begin
      Timer1.Enabled := False;
      cxHintStyleController1.HideHint;
      Exit;
    end;

end;

procedure TFSetupGenerale.cxHintStyleController1ShowHintEx(Sender: TObject;
  var Caption, HintStr: String; var CanShow: Boolean;
  var HintInfo: THintInfo);
begin
  inherited;
  if Assigned(FItem) then
  begin
    HintInfo.HintMaxWidth := FItem.VisibleRect.Right - FItem.VisibleRect.Left;
    CanShow := true;
  end;
end;

procedure TFSetupGenerale.Timer1Timer(Sender: TObject);
begin
  inherited;
  Timer1.Enabled := False;
  cxHintStyleController1.HideHint;
  Application.ProcessMessages;
  FHintDisplayed := False;
end;

procedure TFSetupGenerale.cxGrid1DBTableView1InitEdit(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit);
var
  LookupProp: TcxLookupComboBoxProperties;
begin
  inherited;

  if AItem = cxGrid1DBTableView1CONSEGNA_PER then
  begin

    // Way 1 - Using an extra filtered dataset/query
    LookupProp := TcxLookupComboBox(AEdit).Properties;
    LookupProp.ListSource := sLkLookAltreRad;
    LkLookAltreRad.syRefresh;
    
  end;

end;

procedure TFSetupGenerale.LkLookAltreRadBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFSetupGenerale.aCancellaControlloExecute(Sender: TObject);
begin
  inherited;
  if (MsgDlgPos(RS_Gene_Msg_ConfCanc, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes) then
     Tipo_Errori.Delete;
end;

procedure TFSetupGenerale.aCancellaControlloUpdate(Sender: TObject);
begin
  inherited;
  aCancellaControllo.Enabled := (tipo_erroriPKTIPOERRORI.AsInteger>=10);
end;

procedure TFSetupGenerale.aSalvaDescExecute(Sender: TObject);
begin
  inherited;
  qSetDescs.Open;
  if qSetDescs.FindKey([arsDescsKey[actualDescIdx]]) then
  begin
    qSetDescs.Edit;
    qSetDescsLABELCAMPO.Value := teDesclabel.Text;
    qSetDescsNOTECAMPO.AsString := Trim(cxmDescrizione.Lines.Text);
    if (qSetDescsNOTECAMPO.AsString <> '') and (cbCampoPadreDesc.ItemIndex > -1) then
      qSetDescsPADRE.AsString := cbCampoPadreDesc.Text;
    qSetDescs.Post;
    qSetDescs.ApplyUpdates();
    TcxDBEditorRow(vgAppInfo.FocusedRow).Properties.Caption := teDesclabel.Text;
    arsDescsLabel[actualDescIdx] := teDesclabel.Text;
    arsDescsDesc[actualDescIdx] := cxmDescrizione.Lines.Text;
  end;
end;

procedure TFSetupGenerale.aSalvaDescUpdate(Sender: TObject);
begin
  inherited;
  aSalvaDesc.Enabled := FDescVariata and (actualDescIdx>=0);
end;

procedure TFSetupGenerale.aAnnullaDescExecute(Sender: TObject);
begin
  inherited;
  CaricaDatiCampo;
end;

procedure TFSetupGenerale.aAnnullaDescUpdate(Sender: TObject);
begin
  inherited;
  aAnnullaDesc.Enabled := FDescVariata and (actualDescIdx>=0);
end;

procedure TFSetupGenerale.cxmDescrizionePropertiesChange(Sender: TObject);
begin
  inherited;
  if cxmDescrizione.IsFocused then
     FDescVariata := true;
end;

procedure TFSetupGenerale.TipoAttivitaBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFSetupGenerale.qSetDescsBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFSetupGenerale.qRicRefBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFSetupGenerale.btAnnullaClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFSetupGenerale.vgAppInfoCOM_RES_DEFEditPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
   trovato: integer;
   cerca: string;
begin
   inherited;
   cerca := ApplicazioniCOM_RES_DEF.AsString;
   FRicComuni := TFRicComuni.Create(nil);
   try
//     FRicComuni.QRicerca.Parambyname('NAZ_CODICE',AssistibiliNAZRES_CODICE.AsString);
     FRicComuni.QRicerca.OpenNoFetch;
     if cerca<>'' then
     begin
       FRicComuni.QRicercaCODICE.AsString := cerca;
       FRicComuni.AttivaRicerca.Execute;
     end;
     trovato := FRicComuni.ShowModal;
     if trovato=mrOk then
     begin
        if not (Applicazioni.State in dsEditModes) then
               Applicazioni.Edit;
        ApplicazioniCOM_RES_DEF.AsString := FRicComuni.QRicercaCODICE.Value;
     end;
     
   finally
     FRicComuni.Free;
   end;

end;

procedure TFSetupGenerale.Log_JobsBeforeQuery(
  Sender: TAstaBaseClientDataSet);

  function CalcolaInizio: TDateTime;
  begin
    if JobsFREQUENZA.AsString='SECONDLY' then
       result := IncMinute( Now(), -60 )
    else if JobsFREQUENZA.AsString='MINUTELY' then
       result := IncMinute( Now(), -120 )
    else if JobsFREQUENZA.AsString='HOURLY' then
       result := IncMinute( Now(), -60*10 )
    else if JobsFREQUENZA.AsString='DAILY' then
       result := IncDay( Now(), -15 )
    else
       result := IncDay( Now(), -30*2 )
    ;
  end;

begin
  inherited;
  Log_Jobs.ParamByName('dinizio').AsDateTime := CalcolaInizio;
end;

initialization
  Classes.RegisterClass(TFSetupGenerale);

end.