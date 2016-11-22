unit DMCommon;

interface

{$I syVer.inc}

{.$DEFINE NO_IIS}
{$DEFINE MADEXCEPT_FILE}

uses
  AstaParamList, IInterface, ShellApi, Graphics, IEController, cxGridTableView, Types, Windows, AdPort,
  cxEdit, SHDocVw, sysutils, cxGridDBTableView, cxSchedulerDBStorage,
  cxSchedulerStorage, cxImageComboBox, FirmaDigitale, cxDBData, ClsFirmaCommon, dxLayoutControl,
  cxRichEdit, cxProgressBar,{}
  dxPSGlbl, dxPSUtl, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPgsDlg,
  dxPSCore, dxPSEngn, acClasses, acAwayTimer, AstaUpdateSQL, rsStorage,
  rsPropSaver, KSEventClient, dxLayoutLookAndFeels, WUpdate, rsXmlData, DB,
  AstaDrv2, ExtCtrls, AstaClientDataset, ImgList, Controls, ScktComp,
  AstaCustomSocket, AstaClientSocket, cxVGrid, cxCustomPivotGrid, cxTL,
  cxClasses, cxStyles, dxPScxCommon, cxContainer,
  cxEditRepositoryItems, cxDBEditRepository, Prevchek, Classes,
  dxSkinsForm, dxPrnDlg, dxSkinsCore,
  dxSkinsDefaultPainters, cxHint, WinSock, dxPScxGridLnk, cxLocalization, cxGraphics,
  cxLookAndFeels;

const
  DEF_FONT_NAME: string = 'Source Sans Pro';

type
  TtpLogin = (lmRifiutato,lmAccettato,lmInAttesa,lmNonDisponibile,lmChiudiRemoto);
  TScorrimento = (tsNessuno, tsAvanti, tsIndietro, tsRegistra);

  recShortCut = record
    shc: TShortCut;
    esito: Integer;
  end;

  RefVocException = class(Exception);

  TsyIE = class
  private
     FIEC: OLEVariant; //IWebBrowser2;
     FintHandle: THandle;
     function GetIEVisible: boolean;
     procedure SetIEVisible(Value: boolean);
     procedure Vuoto(ptipo: TpTipoImg = tptChiudi);
     procedure AccNumber(pkt: integer; bookmark: boolean = false; pkc: integer = -1);
  public
     constructor Create(AOwner: TComponent);
     destructor Destroy; override;

//     property IEC: OLEVariant {IWebBrowser2} read FIEC;
     property IEVisible: boolean read GetIEVisible write SetIEVisible;
  end;

  TsyShellEx = class
  private
    LogInfo: TSyLogInfo;
  public
     lpExecInfo: PShellExecuteInfo;
     constructor Create(AOwner: TComponent);
     destructor Destroy; override;
     procedure ShellShow( pkt: integer; bookmark: boolean; pkc: integer );
     procedure ChiudiTask;
     procedure Vuoto(ptipo: TpTipoImg = tptChiudi);
  end;

  TAstaSQLThread = class(TThread)
  private
    Fds: TAstaClientDataSet;  // Internal query
  public
    constructor Create(ds: TAstaClientDataSet);
    procedure Execute; override;
  end;

  TFDMCommon = class(TDataModule,IExcAlert)
    imIcone: TImageList;
    cxImageNavigator16: TcxImageList;
    OneInstance1: TOneInstance;
    QyErrori: TAstaClientDataSet;
    Timer1: TTimer;
    LeggiPostoLavoro: TAstaClientDataSet;
    LeggiPostoLavoroGBLOSPEDALE: TStringField;
    AstaClientSocket: TAstaClientSocket;
    rsStorage1: TrsStorage;
    qLeggiReport: TAstaClientDataSet;
    sqLeggiReport: TDataSource;
    qReferto: TAstaClientDataSet;
    AstaCut: TAstaDataSet;
    AstaDett: TAstaDataSet;
    AstaDettCODICE: TStringField;
    AstaDettDESCRIZIONE: TStringField;
    AstaDettPKCODICIRAD: TIntegerField;
    AstaDettDURATA: TIntegerField;
    AstaDettPKPRESTAZIONI: TFloatField;
    AstaDettTRIAGE_FK: TIntegerField;
    rsXMLData1: TrsXMLData;
    LeggiPostoLavoroCOMPUTERNAME: TStringField;
    WebUpdate1: TWebUpdate;
    qLeggiReportITEM_NAME: TStringField;
    qLeggiReportREPORT: TBlobField;
    qRefertoREFERTO: TBlobField;
    LeggiPostoLavoroPKWORKSTATION: TIntegerField;
    Param_Ticket: TAstaClientDataSet;
    Param_TicketIMPOMAX: TFloatField;
    Param_TicketIMPORTO_BOLLO: TFloatField;
    Param_TicketLIMITE_BOLLO: TFloatField;
    Param_TicketESENZ_ANNI_MAX: TIntegerField;
    Param_TicketESENZ_ANNI_MIN: TIntegerField;
    Param_TicketGGVALIDITA: TIntegerField;
    LeggiPostoLavoroGBLPKPS: TIntegerField;
    LeggiPostoLavoroGBLPKSERVPS: TIntegerField;
    LkReparti: TAstaClientDataSet;
    EditRepository: TcxEditRepository;
    edrepMemo: TcxEditRepositoryMemoItem;
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
    AstaCutTIPO_ATTIVITA_FK: TStringField;
    AstaCutDATA_NASCITA: TDateTimeField;
    AstaCutTELEFONO: TStringField;
    AstaCutPROVENIENZA: TStringField;
    LeggiPostoLavoroPRINTER1: TStringField;
    LeggiPostoLavoroPRINTER2: TStringField;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    LkEsenzione: TAstaClientDataSet;
    LkEsenzioneTET_IDENT: TIntegerField;
    LkEsenzioneESENTE_QUOTA_FISSA: TIntegerField;
    LkEsenzioneETA_MINIMA: TIntegerField;
    LkEsenzioneETA_MASSIMA: TIntegerField;
    LkEsenzioneDESCR: TStringField;
    LkEsenzioneCON_PRESTAZIONI: TIntegerField;
    TabStampe: TAstaClientDataSet;
    TabStampeREPARTI_FK: TIntegerField;
    TabStampeITEM_ID_FK: TIntegerField;
    TabStampeORDINE: TIntegerField;
    TabStampeDESCRIZIONE: TStringField;
    AlertEventList1: TKSAstaEventClient;
    sTabStampe: TDataSource;
    TabStampePKTABSTAMPE: TIntegerField;
    Esami: TAstaClientDataSet;
    EsamiCODICE: TStringField;
    EsamiIDENT_FK: TStringField;
    EsamiDESCRIZIONE: TStringField;
    EsamiDURATA: TIntegerField;
    EsamiPKCODICIRAD: TIntegerField;
    EsamiDOSE: TFloatField;
    EsamiCOMPOSTO: TIntegerField;
    QyErroriPOSTO: TStringField;
    QyErroriNOMEAP: TStringField;
    QyErroriUSER_ID: TIntegerField;
    QyErroriDATA_ERR: TDateTimeField;
    QyErroriVERSIONE: TStringField;
    QyErroriCLASSNAME: TStringField;
    QyErroriTESTOERRORE1: TBlobField;
    LeggiPostoLavoroREFVOCALE: TIntegerField;
    LeggiPostoLavoroCOM_DATABIT: TIntegerField;
    LeggiPostoLavoroOSPEDALE: TStringField;
    LeggiPostoLavoroOSPCOMUNE: TStringField;
    LeggiPostoLavoroDESCREPARTO: TStringField;
    LeggiPostoLavoroDESCREPPS: TStringField;
    LeggiPostoLavoroDESCSERVPS: TStringField;
    LeggiPostoLavoroCOM_SPEED: TStringField;
    LeggiPostoLavoroCOM_PARITY: TStringField;
    LeggiPostoLavoroCOM_STOPBIT: TStringField;
    LeggiPostoLavoroCOM_HWCTRL: TStringField;
    LeggiPostoLavoroCOM_SWCTRL: TStringField;
    Timer2: TTimer;
    edrepCognome: TcxEditRepositoryMaskItem;
    edrepCodiceFiscale: TcxEditRepositoryMaskItem;
    edrepCAP: TcxEditRepositoryMaskItem;
    edrepTelefono: TcxEditRepositoryMaskItem;
    edrepData: TcxEditRepositoryMaskItem;
    LeggiPostoLavoroORE_RIAPRI: TIntegerField;
    edrepCodGruppi: TcxEditRepositoryMaskItem;
    edrepNome: TcxEditRepositoryMaskItem;
    LeggiPostoLavoroCHECK_NASCITA: TIntegerField;
    LeggiPostoLavoroCHECK_RESIDENZA: TIntegerField;
    edrepImageSTATO: TcxEditRepositoryImageComboBoxItem;
    edrepImageIMMAGINI: TcxEditRepositoryImageComboBoxItem;
    edrepImageREFERTO: TcxEditRepositoryImageComboBoxItem;
    LkOspedali: TAstaClientDataSet;
    LkOspedaliCODICE: TStringField;
    LkOspedaliDESCRIZIONE: TStringField;
    LkEsenzioneIDENT: TStringField;
    edrepCODICEESAME: TcxEditRepositoryButtonItem;
    Possibili: TAstaClientDataSet;
    PossibiliCODICE: TStringField;
    PossibiliPKCODICIRAD: TIntegerField;
    sLkOspedali: TDataSource;
    PossibiliSERVIZI_FK: TStringField;
    LeggiPostoLavoroCOM_PORTA: TStringField;
    LkOspedaliCOD_RIC: TStringField;
    LkOspedaliTIPO_ATTIVITA_FK: TStringField;
    sLkEsenzione: TDataSource;
    LeggiPostoLavoroFIRMA_DIGITALE: TIntegerField;
    AssegnaAnagrafica: TAstaClientDataSet;
    LeggiPostoLavoroTIPO_LOGIN: TIntegerField;
    rsPropSaver1: TrsPropSaver;
    LkOspedaliIMPEGNATIVA: TIntegerField;
    LkEsenzioneESENTE: TIntegerField;
    TipoAttivita: TAstaClientDataSet;
    TipoAttivitaTIPO_ATTIVITA: TStringField;
    TipoAttivitaDESCRIZIONE: TStringField;
    TipoAttivitaPROVENIENZA: TStringField;
    TipoAttivitaIMPEGNATIVA: TIntegerField;
    qryUser: TAstaClientDataSet;
    qryUserREAL_NAME: TStringField;
    qryUserUSER_PWD: TStringField;
    qryUserUSER_ID: TIntegerField;
    qryUserLAST_PWD_CHANGE: TDateTimeField;
    qryUserEXPIRATION_DATE: TDateTimeField;
    qryUserISADMIN: TIntegerField;
    qryUserPROFILO_VOCALE: TStringField;
    qryUserCOD_FUNZIONE: TIntegerField;
    qryUserSUPERUSER: TIntegerField;
    edrepCodiceOspedale: TcxEditRepositoryMaskItem;
    edrepCOMPOSTO: TcxEditRepositoryImageComboBoxItem;
    TabStampeCOPIE: TIntegerField;
    TabStampeSTAMPANTE: TIntegerField;
    TabStampeSELEZIONE: TIntegerField;
    TabStampeFUNZIONI_FK: TIntegerField;
    edrepURGENZA: TcxEditRepositoryImageComboBoxItem;
    LkEsenzioneDESCTIPOESENZIONE: TStringField;
    LeggiPostoLavoroTIPO_PRENOTAZIONE: TIntegerField;
    LeggiPostoLavoroMOD_TECNICO_ESEGUITO: TIntegerField;
    LeggiPostoLavoroCHECK_NASCITA_ACC: TIntegerField;
    LeggiPostoLavoroCHECK_RESIDENZA_ACC: TIntegerField;
    LeggiPostoLavoroCHECK_NASCITA_ESEC: TIntegerField;
    LeggiPostoLavoroCHECK_RESIDENZA_ESEC: TIntegerField;
    updqReferto: TAstaUpdateSQL;
    TabStampeVERIFICASTAMPE_FK: TIntegerField;
    EsameInPacs: TAstaClientDataSet;
    AstaMultiSite: TAstaClientSocket;
    PossibiliPRENOTA: TIntegerField;
    CodiceErrore: TAstaClientDataSet;
    CodiceErroreTIPO_BLOCCO: TIntegerField;
    CodiceErroreTESTO_ERRORE: TStringField;
    AstaCutIMPEGNATIVE_FK: TIntegerField;
    LkOspedaliES_TICKET: TStringField;
    CodiceErroreDATA_ERR: TDateTimeField;
    CodiceErroreTECNICO: TStringField;
    PossibiliREP_OWNER: TIntegerField;
    LeggiPostoLavoroCHECK_MED_BASE: TIntegerField;
    LeggiPostoLavoroCHECK_MED_PER_ESAME: TIntegerField;
    qryUserFUNZ_INTERNI: TIntegerField;
    LeggiPostoLavoroVIEW_NR_ARCHIVIO: TIntegerField;
    LeggiPostoLavoroCODICIRAD_FK: TIntegerField;
    LeggiPostoLavoroSALA_OPERATORIA_FK: TIntegerField;
    edrepSINO: TcxEditRepositoryCheckBoxItem;
    edrepVG_SINO: TcxEditRepositoryCheckBoxItem;    
    LeggiPostoLavoroCHECK_I_NASCITA: TIntegerField;
    LeggiPostoLavoroCHECK_I_RESIDENZA: TIntegerField;
    LeggiPostoLavoroCHECK_I_NASCITA_ACC: TIntegerField;
    LeggiPostoLavoroCHECK_I_RESIDENZA_ACC: TIntegerField;
    LeggiPostoLavoroCHECK_I_NASCITA_ESEC: TIntegerField;
    LeggiPostoLavoroCHECK_I_RESIDENZA_ESEC: TIntegerField;
    edrepALETTO: TcxEditRepositoryImageComboBoxItem;
    edrepImageSTATOESAMESENZADESCR: TcxEditRepositoryImageComboBoxItem;
    PutLock: TAstaClientDataSet;
    ReleaseLock: TAstaClientDataSet;
    LkOspedaliPROVENIENZA: TStringField;
    LeggiPostoLavoroGIORNI_RITIRO: TIntegerField;
    LkOspedaliTIPO_FATTURA: TIntegerField;
    LeggiPostoLavoroANAG_SCRITTURA: TIntegerField;
    edrepTIPO_OP_ANAGRAFICA: TcxEditRepositoryImageComboBoxItem;
    qryUserESTRAZIONE_DATI: TIntegerField;
    LeggiPostoLavoroCHECK_NO_PRESTMULT: TIntegerField;
    ReleaseAllLock: TAstaClientDataSet;
    LeggiPostoLavoroIP: TStringField;
    LeggiPostoLavoroLAST_CONNECTION: TDateTimeField;
    LeggiPostoLavoroCHECK_ACR: TIntegerField;
    LeggiPostoLavoroCHECK_MOTIVOCANC: TIntegerField;
    qPacs: TAstaClientDataSet;
    qPacsRIS_STUDY_EUID: TStringField;
    LeggiPostoLavoroDEF_OSP_RICH: TStringField;
    LeggiPostoLavoroLEG_CODICE: TStringField;
    PrestTar: TAstaClientDataSet;
    PrestTarTAR_TICKET: TFloatField;
    PrestTarPSP_IDENT: TStringField;
    LkOspedaliLEG_CODICE: TStringField;
    LeggiPostoLavoroNO_IMG_ESTERNE: TIntegerField;
    LeggiPostoLavoroCHK_QUESITO_EST: TIntegerField;
    LeggiPostoLavoroCHK_QUESITO_INT: TIntegerField;
    LeggiPostoLavoroCHK_QUESITO_REP: TIntegerField;
    AltriEsamixSito: TAstaClientDataSet;
    LeggiPostoLavoroCHK_SLITTA_REP: TIntegerField;
    LeggiPostoLavoroCHK_VISUALIZZA_QUESITO: TIntegerField;
    LeggiPostoLavoroCHK_VISUALIZZA_NOTE: TIntegerField;
    LeggiPostoLavoroCHK_DOPPIA_FIRMA: TIntegerField;
    LeggiPostoLavoroCHK_ATTIVITA_EXTRA: TIntegerField;
    LeggiPostoLavoroCHK_TRASCRIVERE: TIntegerField;
    NuovoTriage: TAstaClientDataSet;
    NuovoTriagePKPRESTAZIONI: TFloatField;
    NuovoTriagePROGRESSIVO_RIGA: TIntegerField;
    NuovoTriageDIAGNOSTICA_FK: TIntegerField;
    NuovoTriageTRIAGE_FK: TIntegerField;
    NuovoTriageDURATA: TIntegerField;
    NuovoTriageCODICIRAD_FK: TIntegerField;
    NuovoTriageDOSE: TFloatField;
    NuovoTriageIMPEGNATIVE_FK: TIntegerField;
    NuovoTriageREPARTI_FK: TIntegerField;
    NuovoTriageUSER_ID: TIntegerField;
    NuovoTriageORA_INIZIO: TDateTimeField;
    NuovoTriageIMPORTO: TFloatField;
    NuovoTriageSTATOVISITA: TIntegerField;
    NuovoTriageAGENDE_FK: TIntegerField;
    NuovoTriagePAGATO: TFloatField;
    NuovoTriageESENTE: TIntegerField;
    NuovoTriageNUMERO_PRESTAZIONE: TIntegerField;
    NuovoTriageSTATO: TIntegerField;
    NuovoTriageORA_FINE: TDateTimeField;
    updNuovoTriage: TAstaUpdateSQL;
    SpostaEsame: TAstaClientDataSet;
    LeggiPostoLavoroCHK_CONSEGNA_CON_PSWD: TIntegerField;
    AstaCutAGENDE_FK: TIntegerField;
    LeggiPostoLavoroPAD_PID: TIntegerField;
    LeggiPostoLavoroCONDIVIDI_AGENDE: TIntegerField;
    LeggiPostoLavoroSET_DEFAULT_PRINTER: TIntegerField;
    LkOspedaliAGENDE_ESCLUSIVE: TIntegerField;
    EsamixAltri: TAstaClientDataSet;
    EsamixAltriCODICE: TStringField;
    EsamixAltriIDENT_FK: TStringField;
    EsamixAltriDESCRIZIONE: TStringField;
    EsamixAltriPKCODICIRAD: TIntegerField;
    EsamixAltriDOSE: TFloatField;
    EsamixAltriCOMPOSTO: TIntegerField;
    acPingTimer: TacAwayTimer;
    LeggiPostoLavoroUSL_REG_CODICE: TStringField;
    LeggiPostoLavoroCOD_AZIENDA: TStringField;
    LeggiPostoLavoroVERSIONE: TStringField;
    QyErroriTIPO_ERRORE: TIntegerField;
    LeggiPostoLavoroMODIFICA_DURATA: TIntegerField;
    qryUserSERVIZI_FK: TIntegerField;
    qryUserREPARTI_FK: TIntegerField;
    LeggiPostoLavoroCHECK_ASSEGNA_REF: TIntegerField;
    LeggiPostoLavoroFLAG_TESTISTD: TIntegerField;
    edrepTIPO_ATTIVITA: TcxEditRepositoryLookupComboBoxItem;
    sTipoAttivita: TDataSource;
    TipoUrgenza: TAstaClientDataSet;
    TipoUrgenzaPKURGENZA: TIntegerField;
    TipoUrgenzaDESCRIZIONE: TStringField;
    TipoTrasporto: TAstaClientDataSet;
    TipoTrasportoPKTRASPORTO: TIntegerField;
    TipoTrasportoDESCRIZIONE: TStringField;
    TabStampeGRESAMI_FK: TIntegerField;
    PossibiliGRESAMI_FK: TIntegerField;
    LkRepartiPKREPARTI: TIntegerField;
    LkRepartiDESCRIZIONE: TStringField;
    qRefertoPKREFERTI: TIntegerField;
    LeggiPostoLavoroCHK_LISTA_REFERTAZIONE: TIntegerField;
    Medici: TAstaClientDataSet;
    MediciCOGNOME: TStringField;
    MediciNOME: TStringField;
    MediciPKPERSONALE: TIntegerField;
    MediciNOMINATIVO: TStringField;
    LeggiPostoLavoroASSEGNAREF_BLOCCO: TIntegerField;
    qryUserTIPO_CARTA: TIntegerField;
    DiagnxRep: TAstaClientDataSet;
    DiagnxRepREPARTI_FK: TIntegerField;
    DiagnxRepSERVIZI_FK: TIntegerField;
    DiagnxRepDESCRIZIONE: TStringField;
    DiagnxRepSLOT_STANDARD: TIntegerField;
    qryUserDESCRSERVIZIO: TStringField;
    LeggiPostoLavoroAETITLE: TStringField;
    AstaCutOSP_RICH: TStringField;
    AstaCutREPARTO_RICH_FK: TIntegerField;
    AstaCutSERVIZIO_RICH_FK: TIntegerField;
    LeggiPostoLavoroMICROPRINT: TIntegerField;
    qRefertoUSER_ID: TIntegerField;
    LeggiPostoLavoroPAD_ACCNR: TIntegerField;
    LeggiPostoLavoroCTRL_RICOVERI: TIntegerField;
    LeggixLogin: TAstaClientDataSet;
    LeggixLoginPKWORKSTATION: TIntegerField;
    LeggixLoginTIPO_LOGIN: TIntegerField;
    DiagnxRepDESC_REPARTO: TStringField;
    qryUserREPARTO: TStringField;
    ServiziRadiologia: TAstaClientDataSet;
    ServiziRadiologiaPKSERVIZI: TIntegerField;
    ServiziRadiologiaDESCRIZIONE: TStringField;
    DiagnxRepSERVRAD_FK: TIntegerField;
    AstaCutSERVIZI_FK: TIntegerField;
    LeggiPostoLavoroFLAG_MN: TIntegerField;
    LeggiPostoLavoroDIAGN_PRENO_FK: TIntegerField;
    LeggiPostoLavoroCTRL_ACCETTAZ: TIntegerField;
    PossibiliREPARTI_FK: TIntegerField;
    PossibiliPROVENIENZA: TStringField;
    qAllocaModalita: TAstaClientDataSet;
    qAllocaModalitaDIAGNOSTICA_FK: TIntegerField;
    qAllocaModalitaNOMEDIAGNOSTICA: TStringField;
    qAllocaModalitaALLOCA_MODALITA: TIntegerField;
    qAllocaModalitaPKTRIAGE: TIntegerField;
    qAllocaModalitaAETITLE: TStringField;
    edrepRICHIESTA_VALIDATA: TcxEditRepositoryImageComboBoxItem;
    LeggiPostoLavoroFLAG_VALIDA_RICH: TIntegerField;
    Radiofarmaci: TAstaClientDataSet;
    RadiofarmaciARTICOLO: TStringField;
    RadiofarmaciPKMAGART: TIntegerField;
    RadiofarmaciDESCRIZIONE: TStringField;
    LeggiPostoLavoroDESCR_AGG_REF: TIntegerField;
    edrepRADIOFARMACO: TcxEditRepositoryLookupComboBoxItem;
    sRadiofarmaci: TDataSource;
    edrepGRIDMEMO: TcxEditRepositoryBlobItem;
    LeggiPostoLavoroCHK_NOTE_RICH: TIntegerField;
    LeggiPostoLavoroCHK_CONF_DRAGDROP: TIntegerField;
    EsamiGRESAMI_FK: TIntegerField;
    EsamixAltriGRESAMI_FK: TIntegerField;
    DiagnxRepTIPO_DIAGN: TIntegerField;
    TipoAttivitaTIPO_ACCESSO: TStringField;
    LeggiPostoLavoroCHK_ESTEMPORANEO: TIntegerField;
    qRefertoREFERTI_FK: TIntegerField;
    LeggiPostoLavoroCHK_DATA_IMPEGNATIVA: TIntegerField;
    LeggiPostoLavoroCHK_SPECIFICAZIONI: TIntegerField;
    LeggiPostoLavoroCHK_ABILITA_ACCETTAZ: TIntegerField;
    LeggiPostoLavoroCHK_MODIFICA_ANAGRAFICA: TIntegerField;
    Param_TicketGG_CTRL_POSTRICOVERI: TIntegerField;
    LkTipoAccesso: TAstaClientDataSet;
    LkTipoAccessoTIPO_ACCESSO: TStringField;
    LkTipoAccessoDESCRIZIONE: TStringField;
    Param_TicketBASE_RICETTA: TStringField;
    acr_anatomical: TAstaClientDataSet;
    acr_anatomicalKEY: TStringField;
    acr_anatomicalPARENT: TStringField;
    acr_anatomicalDESCRIPTION: TStringField;
    acr_anatomicalAID: TStringField;
    acr_patological: TAstaClientDataSet;
    acr_patologicalKEY: TStringField;
    acr_patologicalPARENT: TStringField;
    acr_patologicalDESCRIPTION: TStringField;
    acr_patologicalAID: TStringField;
    MultiSite: TAstaClientDataSet;
    MultiSiteSITE_NAME: TStringField;
    MultiSiteSITE_ADDRESS: TStringField;
    MultiSiteSITE_PORT: TIntegerField;
    Param_TicketSITE_NAME: TStringField;
    edrepTIPO_REPARTO: TcxEditRepositoryImageComboBoxItem;
    qryUserDBLCLICKTIME: TIntegerField;
    SettaDateTime: TAstaClientDataSet;
    SettaDateTimeSYSDATE: TDateTimeField;
    LeggiPostoLavoroCHK_ALLIEVO_TECNICO: TIntegerField;
    LeggiPostoLavoroCDMASTER_FK: TIntegerField;
    cdMaster: TAstaClientDataSet;
    cdMasterPKCDMASTER: TIntegerField;
    cdMasterAETITLE: TStringField;
    cdMasterINDIRIZZO: TStringField;
    cdMasterPORTA: TIntegerField;
    cdMasterREPARTI_FK: TIntegerField;
    cdMasterDESCRIZIONE: TStringField;
    LeggiPostoLavoroCHK_TELEFONO_SERVIZIO: TIntegerField;
    LeggiPostoLavoroTIPO_ATT_SALA_OP: TStringField;
    edrepPRINTMEMO: TcxEditRepositoryMemoItem;
    AstaTestata: TAstaDataSet;
    AstaTestataPKTRIAGE: TIntegerField;
    AstaTestataORA_INIZIO: TDateTimeField;
    AstaTestataSTATOVISITA: TIntegerField;
    AstaTestataDURATA: TIntegerField;
    AstaTestataORA_FINE: TDateTimeField;
    AstaTestataRIC_ANTICIPO: TStringField;
    AstaTestataASSISTIBILI_FK: TIntegerField;
    AstaTestataUSER_ID: TIntegerField;
    AstaTestataREPARTI_FK: TIntegerField;
    AstaTestataDIAGNOSTICA_FK: TIntegerField;
    AstaTestataNOME_PAZIENTE: TStringField;
    AstaTestataTIPO_ATTIVITA_FK: TStringField;
    AstaTestataDATA_NASCITA: TDateTimeField;
    AstaTestataTELEFONO: TStringField;
    AstaTestataPROVENIENZA: TStringField;
    AstaTestataIMPEGNATIVE_FK: TIntegerField;
    AstaTestataAGENDE_FK: TIntegerField;
    AstaTestataOSP_RICH: TStringField;
    AstaTestataREPARTO_RICH_FK: TIntegerField;
    AstaTestataSERVIZIO_RICH_FK: TIntegerField;
    AstaTestataSERVIZI_FK: TIntegerField;
    AstaDettagli: TAstaDataSet;
    AstaDettagliCODICE: TStringField;
    AstaDettagliDESCRIZIONE: TStringField;
    AstaDettagliPKCODICIRAD: TIntegerField;
    AstaDettagliDURATA: TIntegerField;
    AstaDettagliPKPRESTAZIONI: TFloatField;
    AstaDettagliTRIAGE_FK: TIntegerField;
    qryUserALLOW_OVERBOOKING: TIntegerField;
    LkTipoRicetta: TAstaClientDataSet;
    LkTipoRicettaTIPO_RICETTA: TStringField;
    LkTipoRicettaDESCRIZIONE: TStringField;
    LkTipoRicettaTIPO_COM_RES: TStringField;
    LkTipoRicettaFLAG_STP: TIntegerField;
    Param_TicketCODICI_CUP: TIntegerField;
    LeggiPostoLavoroCHK_TRASPORTO: TIntegerField;
    EsamiGRESAMI: TStringField;
    PossibiliGRESAMI: TStringField;
    EsamixAltriGRESAMI: TStringField;
    LeggiPostoLavoroCHK_NR_RICHIESTA_OBB: TIntegerField;
    LeggiPostoLavoroCHK_RICH_IDENT: TIntegerField;
    Param_TicketTRACC_SEPARATI: TIntegerField;
    Param_TicketTRACC_AGG_PID: TIntegerField;
    LeggiPostoLavoroCHK_URGENZA_TECNICO: TIntegerField;
    LeggiPostoLavoroCHK_FIRMA_PROVV: TIntegerField;
    LkOspedaliTIPO_ACCESSO: TStringField;
    LkRepartiFLAG_CTRL_RIC: TIntegerField;
    LkRepartiESAMI_IN_REPARTO: TIntegerField;
    LkRepartiNO_CONTR_ACC: TIntegerField;
    LkRepartiOSP_CODICE: TStringField;
    DipxRep: TAstaClientDataSet;
    DipxRepDIPARTIMENTI_FK: TIntegerField;
    DipxServ: TAstaClientDataSet;
    DipxServDIPARTIMENTI_FK: TIntegerField;
    qTipoInvio: TAstaClientDataSet;
    qTipoInvioPKINVIO: TStringField;
    qTipoInvioDESCRIZIONE: TStringField;
    qTipoInvioATTIVO: TIntegerField;
    LeggiPostoLavoroTIPOINVIO_FK: TStringField;
    Param_TicketANAG_DOMICILIO: TIntegerField;
    LeggiPostoLavoroFLAG_PROVVISORIO: TIntegerField;
    DllFirma: TAstaClientDataSet;
    DllFirmaTIPO_CARTA: TIntegerField;
    DllFirmaDESCRIZIONE: TStringField;
    DllFirmaDLL_NAME: TStringField;
    DllFirmaPRIVATE_KEY: TStringField;
    LeggiPostoLavoroSET_DATA: TIntegerField;
    TabStampeITEM_TYPE: TIntegerField;
    LeggiPostoLavoroCHK_ANNULLATIVO: TIntegerField;
    cdMasterTIPO_CREA_CD: TIntegerField;
    cdMasterCD_SERVER_NAME: TStringField;
    cdMasterCD_SERVER_PORTA: TIntegerField;
    LeggiPostoLavoroTIPO_NR_ARCHIVIO: TIntegerField;
    edrepTIPOSTAT: TcxEditRepositoryImageComboBoxItem;
    Param_TicketANAG_AUTHORITY: TStringField;
    LeggiPostoLavoroDEST_FORM: TIntegerField;
    TabStampeTIPOREFERTO_FK: TIntegerField;
    Param_TicketTIPOREFERTO_FK: TIntegerField;
    LeggiPostoLavoroCHK_ULTIMO_TECNICO: TIntegerField;
    edrepTIPOREFERTAZIONE: TcxEditRepositoryLookupComboBoxItem;
    LeggiPostoLavoroCHK_RIPROPONI_QUESITO: TIntegerField;
    LkRepartiURGENZA_FK: TIntegerField;
    LeggiPostoLavoroURGENZA_FK: TIntegerField;
    qRefertoFIRMATO: TIntegerField;
    edrepRICETTA_INF: TcxEditRepositoryImageComboBoxItem;
    LkTipoRicettaTIPO_ATTIVITA_FK: TStringField;
    MediciSERVIZI_FK: TIntegerField;
    AstaDettNUMERO_PRESTAZIONE: TIntegerField;
    AstaDettagliNUMERO_PRESTAZIONE: TIntegerField;
    LeggiPostoLavoroCOD_STS11: TStringField;
    LeggiPostoLavoroCD_DA_REFERTO: TIntegerField;
    LeggiPostoLavoroCOD_FISC_MED_OBB: TIntegerField;
    LeggiPostoLavoroBOOKMARK_IN_CD: TIntegerField;
    LkRepartiMAX_GG_RICHIESTA: TIntegerField;
    edrepPROFILI: TcxEditRepositoryLookupComboBoxItem;
    sProfili: TDataSource;
    AltriEsamixSitoCODICE: TStringField;
    AltriEsamixSitoDESCRIZIONE: TStringField;
    AltriEsamixSitoIDENT_FK: TStringField;
    AltriEsamixSitoGRESAMI_FK: TIntegerField;
    AltriEsamixSitoGRESAMI: TStringField;
    AltriEsamixSitoPKCODICIRAD: TIntegerField;
    AltriEsamixSitoDOSE: TFloatField;
    AltriEsamixSitoCOMPOSTO: TIntegerField;
    edrepNRALTRE: TcxEditRepositoryImageComboBoxItem;
    Profili: TAstaClientDataSet;
    ProfiliPKPROFILI: TIntegerField;
    ProfiliDESCRIZIONE: TStringField;
    ProfiliIMMAGINI: TIntegerField;
    ProfiliREFERTO: TIntegerField;
    ProfiliBLOCCHI: TIntegerField;
    ProfiliESEGUITO: TIntegerField;
    ProfiliCUP: TIntegerField;
    AssegnaReferti: TAstaClientDataSet;
    AssegnaRefertiCOGNOME: TStringField;
    AssegnaRefertiNOME: TStringField;
    AssegnaRefertiNOMINATIVO: TStringField;
    AssegnaRefertiPKPERSONALE: TIntegerField;
    AssegnaRefertiSERVIZI_FK: TIntegerField;
    LeggiPostoLavoroCHK_NO_FUSIONI: TIntegerField;
    LeggiPostoLavoroNOTE_SISS: TMemoField;
    LeggiPostoLavoroCHK_GUARDIA_MED: TIntegerField;
    edrepPROVENIENZA: TcxEditRepositoryImageComboBoxItem;
    qRefertoXSLTREF: TStringField;
    qRefertoCONTREF: TBlobField;
    qRefertoHASHREF: TStringField;
    edrepANNO_E_NR_ARCHIVIO: TcxEditRepositoryMaskItem;
    edrepNR_ARCHIVIO: TcxEditRepositoryMaskItem;
    LkRepartiPROVENIENZA: TStringField;
    dxSkinController: TdxSkinController;
    qRefertoDATA_REFERTO: TDateTimeField;
    qRefertoURIREF: TStringField;
    LeggixLoginCOMPUTERNAME: TStringField;
    LeggixLoginTIPOWS: TIntegerField;
    uLeggiPostoLavoro: TAstaUpdateSQL;
    qRefertoGUIDREF: TStringField;
    qryUserCODICE_FISCALE: TStringField;
    edrepTIPO_FIRMA: TcxEditRepositoryImageComboBoxItem;
    LeggiPostoLavoroTIPO_FIRMA: TIntegerField;
    LeggiPostoLavoroURL_REPOSITORY: TStringField;
    TabEsitoScreening: TAstaClientDataSet;
    TabEsitoScreeningDESCRIZIONE: TStringField;
    TabEsitoScreeningPKESITISCR: TIntegerField;
    TabEsitoScreeningTIPOLIVELLO_FK: TStringField;
    TabEsitoScreeningSHORTCUT: TStringField;
    LeggiPostoLavoroCHK_REF_PREVIEW: TIntegerField;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    TabStampeURL1: TStringField;
    TabStampeURL2: TStringField;
    TabStampeBATCH_PROC1: TStringField;
    TabStampeBATCH_PROC2: TStringField;
    Param_TicketCHK_RICERCA_REFERTI: TIntegerField;
    qRefertoSTATOREFERTO_FK: TIntegerField;
    qCaricaColori: TAstaClientDataSet;
    qCaricaColoriCOLORE: TIntegerField;
    qCaricaColoriPKSET_COLORI: TIntegerField;
    qCaricaProvenienze: TAstaClientDataSet;
    qCaricaProvenienzePROVENIENZA: TStringField;
    qCaricaProvenienzeDESCRIZIONE: TStringField;
    qCaricaProvenienzeICONA: TIntegerField;
    ErroriInvio: TAstaClientDataSet;
    ErroriInvioUSER_ID: TIntegerField;
    ErroriInvioTESTO_ERRORE: TStringField;
    ErroriInvioTIPO_BLOCCO: TIntegerField;
    ErroriInvioDATA_ERR: TDateTimeField;
    ErroriInvioORA_INIZIO: TDateTimeField;
    ErroriInvioDIAGNOSTICA: TStringField;
    ErroriInvioTECNICO: TStringField;
    ErroriInvioREPARTOESECUTORE: TStringField;
    ErroriInvioPKLOGERRORI: TIntegerField;
    ErroriInvioPAZIENTE: TStringField;
    ErroriInvioPKASSISTIBILI: TIntegerField;
    ErroriInvioSTATO_ERR: TIntegerField;
    ErroriInvioDESCSTATOVISITA: TStringField;
    ErroriInvioRIS_STUDY_EUID: TStringField;
    ErroriInvioPKIMPEGNATIVE: TIntegerField;
    ErroriInvioCEIMMAGINI: TIntegerField;
    ErroriInvioDIAGNOSTICA_FK: TIntegerField;
    ErroriInvioPID: TStringField;
    updErroriInvio: TAstaUpdateSQL;
    ErroriInvioTRIAGE_FK: TIntegerField;
    RitornaDiagn: TAstaClientDataSet;
    PossibiliTIPOPRENO: TStringField;
    DiagnxRepPROVENIENZA: TStringField;
    VisualizzaImmagine: TAstaClientDataSet;
    LeggiPostoLavoroCHK_DATI_IMPEGNATIVA: TIntegerField;
    LeggiPostoLavoroCHK_TIPO_ACCESSO: TIntegerField;
    LeggiPostoLavoroCHK_TIPO_RICETTA: TIntegerField;
    LeggiPostoLavoroCHK_COMPILAZIONE: TIntegerField;
    LeggiPostoLavoroCHK_CONSEGNA_REF: TIntegerField;
    edrepVG_Obblig_Facoltativa: TcxEditRepositoryImageComboBoxItem;
    LeggiPostoLavoroCHK_DATA_RICHIESTA: TIntegerField;
    LeggiPostoLavoroCHK_IDEN_REFER: TIntegerField;
    LeggiPostoLavoroCHK_ESAMI_FILTRABILI: TIntegerField;
    LeggiPostoLavoroCHK_ABILITA_ADDENDUM: TIntegerField;
    LeggiPostoLavoroSHOW_ESEGUITI: TIntegerField;
    LeggiPostoLavoroFMT_ANNO: TStringField;
    LeggiPostoLavoroFMT_NUMERO: TStringField;
    AstaDettPROGRESSIVO_RIGA: TIntegerField;
    AstaDettagliPROGRESSIVO_RIGA: TIntegerField;
    qRefertoSTATOVISITA: TIntegerField;
    qRefertoTRIAGE_FK: TIntegerField;
    dxPSEngineController1: TdxPSEngineController;
    dxPrintStyleManager1: TdxPrintStyleManager;
    dxPrintStyleManager1Style1: TdxPSPrintStyle;
    dxPrintDialog1: TdxPrintDialog;
    qAlertxRep: TAstaClientDataSet;
    qAlertxRepREPARTI_FK: TIntegerField;
    edrepURGENZA_RICH: TcxEditRepositoryImageComboBoxItem;
    qPacsPACS: TStringField;
    qPacsURL_IMMAGINI: TStringField;
    TabStampeCD_AUTOMATICO: TIntegerField;
    qRefertoTIPO_REFERTO_FK: TIntegerField;
    PossibiliEXTRA_TARIFFARIO: TIntegerField;
    EsamiEXTRA_TARIFFARIO: TIntegerField;
    EsamixAltriEXTRA_TARIFFARIO: TIntegerField;
    LeggiPostoLavoroREF_VOCALE: TIntegerField;
    edRepPROVENIENZA_PRENO: TcxEditRepositoryImageComboBoxItem;
    AltriEsamixSitoEXTRA_TARIFFARIO: TIntegerField;
    AltriEsamixSitoSERVIZI_FK: TStringField;
    EsamixAltriSERVIZI_FK: TStringField;
    qRefertoDIAGN_ADD: TBlobField;
    TipoUrgenzaPOSIZIONE: TIntegerField;
    MultiSiteSITE_ADDRESS2: TStringField;
    MultiSiteSITE_PORT2: TIntegerField;
    LeggiPostoLavoroPROVV_DEFINITIVO: TIntegerField;
    LeggiPostoLavoroABILITA_ACC_AMM: TIntegerField;
    LkOspedaliMASK: TStringField;
    edrepNumero: TcxEditRepositoryMaskItem;
    PossibiliCALCOLO_85: TIntegerField;
    EsamiCALCOLO_85: TIntegerField;
    EsamixAltriCALCOLO_85: TIntegerField;
    AltriEsamixSitoCALCOLO_85: TIntegerField;
    LkSkin: TAstaClientDataSet;
    LkSkinPKTABSKIN: TIntegerField;
    LkSkinNOME: TStringField;
    sLkSkin: TDataSource;
    qSaveSkin: TAstaClientDataSet;
    qSaveSkinNOME: TStringField;
    qSaveSkinSKIN: TBlobField;
    LkSkinTEXTCOLOR: TStringField;
    Param_TicketRIS_ID_AUTH: TStringField;
    LkRepartiFLAG_ACC_SCON: TIntegerField;
    qRefertoNOME_DOCUMENTO: TStringField;
    LkTipoAccessoURGENZA_FK: TIntegerField;
    qRefertoSOLO_FIRMA: TIntegerField;
    TabPacs: TAstaClientDataSet;
    TabPacsPKPACS: TIntegerField;
    TabPacsPACS: TStringField;
    TabPacsNOME: TStringField;
    TabPacsPACS_QR: TStringField;
    TabPacsURL_IMMAGINI: TStringField;
    TabPacsCANALE_PACS: TStringField;
    qPacsPID: TStringField;
    LeggiPostoLavoroCHK_FONDI_REFERTO: TIntegerField;
    edrepPACS: TcxEditRepositoryLookupComboBoxItem;
    sTabPacs: TDataSource;
    LeggiPostoLavoroPACS_FK: TIntegerField;
    qPacsNOME_PACS: TStringField;
    LeggiPostoLavoroWPACS_FK: TIntegerField;
    LeggiPostoLavoroCLIENTPACS: TIntegerField;
    qCaricaColoriELEMENTO: TStringField;
    qRefertoIMPEGNATIVE_FK: TIntegerField;
    qRefertoCOD_MED_FIRMA: TIntegerField;
    LkTipoRefVoc: TAstaClientDataSet;
    LkTipoRefVocPKTIPO_REFVOC: TIntegerField;
    LkTipoRefVocDESCRIZIONE: TStringField;
    LkTipoRefVocATTIVO: TIntegerField;
    LkTipoRefVocDEST_FORM: TIntegerField;
    sLkTipoRefVoc: TDataSource;
    LeggiPostoLavoroCHK_QUESITO_REF: TIntegerField;
    LkTabEsitoScreening: TAstaClientDataSet;
    LkTabEsitoScreeningDESCRIZIONE: TStringField;
    LkTabEsitoScreeningPKESITISCR: TIntegerField;
    LkTabEsitoScreeningTIPOLIVELLO_FK: TStringField;
    LkTabEsitoScreeningSHORTCUT: TStringField;
    sLkTabEsitoScreening: TDataSource;
    qRefertoHASHDAO: TStringField;
    qRefertoALGORITMOHASH: TStringField;
    qRefertoSIZEDOCUMENTO: TStringField;
    edrepNumeroLettere: TcxEditRepositoryMaskItem;
    TabStatoReferto: TAstaClientDataSet;
    TabStatoRefertoSTATOREFERTO: TIntegerField;
    TabStatoRefertoDESCRIZIONE: TStringField;
    TabStatoRefertoRIGENERA: TIntegerField;
    LeggiPostoLavoroCHK_ABILITA_RIATTIVA: TIntegerField;
    qPacsPACS_QR: TStringField;
    LeggiPostoLavoroCHK_CHECK_IMG: TIntegerField;
    qryUserLOGIN_NT: TStringField;
    TabPacsURL_LOGIN: TStringField;
    TabPacsURL_LOGOUT: TStringField;
    TabPacsURL_CHIUDI: TStringField;
    TabStampeDESCFUNZIONE: TStringField;
    edrepStampaReferto: TcxEditRepositoryImageComboBoxItem;
    edrepEtichette: TcxEditRepositoryImageComboBoxItem;
    LeggixWS: TAstaClientDataSet;
    LeggixWSREPARTI_FK: TIntegerField;
    LeggixWSWORKSTATION_FK: TIntegerField;
    LeggiPostoLavoroREPARTI_FK: TIntegerField;
    edrepSTATOANAGRAFICA: TcxEditRepositoryLookupComboBoxItem;
    qStatoAnag: TAstaClientDataSet;
    qStatoAnagSAN_IDENT: TIntegerField;
    qStatoAnagDESCRIZIONE: TStringField;
    sqStatoAnag: TDataSource;
    edrepTIPOWS: TcxEditRepositoryLookupComboBoxItem;
    qTipoWS: TAstaClientDataSet;
    sqTipoWS: TDataSource;
    qTipoWSTIPOWS: TIntegerField;
    qTipoWSDESCRIZIONE: TStringField;
    qTipoLogin: TAstaClientDataSet;
    qTipoLoginTIPO_LOGIN: TIntegerField;
    qTipoLoginDESCRIZIONE: TStringField;
    sqTipoLogin: TDataSource;
    edrepTIPO_LOGIN: TcxEditRepositoryLookupComboBoxItem;
    edRepTipoRichiamoImmagini: TcxEditRepositoryLookupComboBoxItem;
    qClientPacs: TAstaClientDataSet;
    qClientPacsDESCRIZIONE: TStringField;
    sqClientPacs: TDataSource;
    edrepSTATOCD: TcxEditRepositoryImageComboBoxItem;
    qStatoCD: TAstaClientDataSet;
    qStatoCDSTATO: TIntegerField;
    qStatoCDDESCRIZIONE: TStringField;
    qCtrlEseguito: TAstaClientDataSet;
    qCtrlEseguitoDESCRIZIONE: TStringField;
    sqCtrlEseguito: TDataSource;
    Param_TicketNAZ_LOCALE: TStringField;
    Param_TicketCALCOLO_CF: TIntegerField;
    qStatoCDICONA: TIntegerField;
    qClientPacsCLIENTPACS: TIntegerField;
    qDefPrint: TAstaClientDataSet;
    qDefPrintDESCRIZIONE: TStringField;
    sqDefPrint: TDataSource;
    edrepDefPrint: TcxEditRepositoryLookupComboBoxItem;
    qDefPrintSET_DEFAULT_PRINTER: TIntegerField;
    qStatoPrestazioni: TAstaClientDataSet;
    qStatoPrestazioniSTATO: TIntegerField;
    qStatoPrestazioniLINGUA: TStringField;
    qStatoPrestazioniDESCRIZIONE: TStringField;
    qStatoPrestazioniICONA: TIntegerField;
    qStatoImmagini: TAstaClientDataSet;
    qEsameComposto: TAstaClientDataSet;
    qStatoImmaginiSTATO: TIntegerField;
    qStatoImmaginiLINGUA: TStringField;
    qStatoImmaginiDESCRIZIONE: TStringField;
    qStatoImmaginiICONA: TIntegerField;
    qEsameCompostoSTATO: TIntegerField;
    qEsameCompostoLINGUA: TStringField;
    qEsameCompostoDESCRIZIONE: TStringField;
    qEsameCompostoICONA: TIntegerField;
    qStatoVisita: TAstaClientDataSet;
    qStatoVisitaSTATOVISITA: TIntegerField;
    qStatoVisitaLINGUA: TStringField;
    qStatoVisitaDESCRIZIONE: TStringField;
    qStatoVisitaICONA: TIntegerField;
    qTipoReparto: TAstaClientDataSet;
    qTipoRepartoTIPO_REPARTO: TStringField;
    qTipoRepartoLINGUA: TStringField;
    qTipoRepartoDESCRIZIONE: TStringField;
    qTipoRepartoICONA: TIntegerField;
    qItemType: TAstaClientDataSet;
    qItemTypeITEM_TYPE: TIntegerField;
    qItemTypeLINGUA: TStringField;
    qItemTypeDESCRIZIONE: TStringField;
    qItemTypeICONA: TIntegerField;
    qRicettaInf: TAstaClientDataSet;
    qRicettaInfRICETTA_INF: TIntegerField;
    qRicettaInfLINGUA: TStringField;
    qRicettaInfDESCRIZIONE: TStringField;
    qRicettaInfICONA: TIntegerField;
    qTipoFirma: TAstaClientDataSet;
    qTipoFirmaTIPO_FIRMA: TIntegerField;
    qTipoFirmaLINGUA: TStringField;
    qTipoFirmaDESCRIZIONE: TStringField;
    qTipoFirmaICONA: TIntegerField;
    qRefStampato: TAstaClientDataSet;
    qRefStampatoREF_STAMPATO: TIntegerField;
    qRefStampatoLINGUA: TStringField;
    qRefStampatoDESCRIZIONE: TStringField;
    qRefStampatoICONA: TIntegerField;
    qEtichStampate: TAstaClientDataSet;
    qEtichStampateETICHETTE: TIntegerField;
    qEtichStampateLINGUA: TStringField;
    qEtichStampateDESCRIZIONE: TStringField;
    qEtichStampateICONA: TIntegerField;
    TipoUrgenzaICONA: TIntegerField;
    TipoTrasportoICONA: TIntegerField;
    qFormLayout: TAstaClientDataSet;
    qFormLayoutFORMNAME: TStringField;
    qFormLayoutLAYOUT: TBlobField;
    Param_TicketLINGUA: TStringField;
    LeggiPostoLavoroSHOW_REFERTATI: TIntegerField;
    LeggiPostoLavoroSKIN_DEF: TIntegerField;
    qCaricaProvenienzePRENO: TIntegerField;
    qCaricaProvenienzeACCET: TIntegerField;
    PossibiliDURATA: TIntegerField;
    TabStampeQE: TIntegerField;
    qAlertxRepDIAGNOSTICA_FK: TIntegerField;
    qAlertxRepURGENZA_FK: TIntegerField;
    qPacsREPARTI_FK: TIntegerField;
    qPacsPACS_FK: TIntegerField;
    qPacsPACS_TRIAGE_FK: TIntegerField;
    qFormLayoutUSER_ID: TIntegerField;
    qFormLayoutTIPO: TIntegerField;
    qFormLayoutREPARTI_FK: TIntegerField;
    LeggiPostoLavoroCOM_RES_DEF: TStringField;
    CeReferto: TAstaClientDataSet;
    CeRefertoREFERTI_FK: TIntegerField;
    CeRefertoSTATOREFERTO_FK: TIntegerField;
    Param_TicketALI_IVA: TIntegerField;
    cxLocalizer1: TcxLocalizer;
    LeggiPostoLavoroWCF_URI: TStringField;
    Diritti: TAstaClientDataSet;
    DirittiPKTABFUNZIONI: TIntegerField;
    DirittiDESCRIZIONE: TStringField;
    DirittiPROFILO: TBlobField;
    DirittiIMMAGINI: TIntegerField;
    DirittiREFERTO: TIntegerField;
    DirittiBLOCCHI: TIntegerField;
    DirittiCUP: TIntegerField;
    DirittiESEGUITO: TIntegerField;
    DirittiSPOSTA: TIntegerField;
    DirittiSETUP: TIntegerField;
    PossibiliDESCBRANCA: TStringField;
    EsamiDESCBRANCA: TStringField;
    PossibiliBRANCA: TStringField;
    EsamiBRANCA: TStringField;
    AstaDettDESCBRANCA: TStringField;
    AstaDettBRANCA: TStringField;
    AstaDettagliDESCBRANCA: TStringField;
    AstaDettagliBRANCA: TStringField;
    Param_TicketWS_URL_DEBURO: TStringField;
    qCercaAppuntamento: TAstaClientDataSet;
    qCercaAppuntamentoDATA_ACCETTAZIONE: TDateTimeField;
    qCercaAppuntamentoASSISTIBILI_FK: TIntegerField;
    qCercaAppuntamentoPKTRIAGE: TIntegerField;
    qCercaAppuntamentoSTATOVISITA: TIntegerField;
    qCercaAppuntamentoORA_INIZIO: TDateTimeField;
    cxImageNavigator32: TcxImageList;
    edrepValuta: TcxEditRepositoryCurrencyItem;
    EsamiCESPECIFIC: TIntegerField;
    EsamixAltriDURATA: TIntegerField;
    EsamixAltriCESPECIFIC: TIntegerField;
    PossibiliCESPECIFIC: TIntegerField;
    edrepCESPECIFIC: TcxEditRepositoryImageComboBoxItem;
    AltriEsamixSitoDURATA: TIntegerField;
    AltriEsamixSitoCESPECIFIC: TIntegerField;
    edrepImageDEVICE: TcxEditRepositoryImageComboBoxItem;
    EsamiDEVICE: TIntegerField;
    PossibiliDEVICE: TIntegerField;
    procedure FDMCommonCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure AstaClientSocketCustomConnect(Sender: TObject);
    procedure WebUpdate1Status(Sender: TObject; statusstr: String;
      statuscode, errcode: Integer);
    procedure LkRepartiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure AstaClientSocketCodedParamList(Sender: TObject;
      MsgID: Integer; Params: TAstaParamList);
    procedure AstaClientSocketConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure EsamiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure Timer2Timer(Sender: TObject);
    procedure LkOspedaliBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure PossibiliBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure rsPropSaver1GetProperty(Sender, Instance: TObject;
      const PropName: String; var Value: Variant; var Allow: Boolean);
    procedure rsPropSaver1SetProperty(Sender, Instance: TObject;
      const PropName: String; var Value: Variant; var Allow: Boolean);
    procedure AstaClientSocketError(Sender: TObject;
      Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
      var ErrorCode: Integer);
    procedure AstaClientSocketDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure AstaMultiSiteDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure AstaMultiSiteError(Sender: TObject;
      Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
      var ErrorCode: Integer);
    procedure AltriEsamixSitoBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure WebUpdate1Success(Sender: TObject);
    procedure acPingTimerSleep(Sender: TObject);
    procedure edrepNomePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure MediciBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure AstaMultiSiteConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure DiagnxRepBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure ServiziRadiologiaBeforeQuery(
      Sender: TAstaBaseClientDataSet);
    procedure RadiofarmaciBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure AstaMultiSiteCodedParamList(Sender: TObject; MsgID: Integer;
      Params: TAstaParamList);
    procedure cdMasterBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure rsXMLData1LoadFromStream(Sender: TObject; Stream: TStream;
      var DoStandard: Boolean);
    procedure rsXMLData1SaveToStream(Sender: TObject; Stream: TStream;
      var DoStandard: Boolean);
    procedure DipxRepBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure DipxServBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure OneInstance1Loaded(Sender: TObject);
    procedure ProfiliNewRecord(DataSet: TDataSet);
    procedure AssegnaRefertiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure WebUpdate1DownloadedWhatsNew(Sender: TObject; Text: TStrings;
      var Res: Integer);
    procedure WebUpdate1AppDoClose(Sender: TObject);
    procedure qPacsBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qAlertxRepBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qCaricaProvenienzeBeforeQuery(
      Sender: TAstaBaseClientDataSet);
    procedure qTipoInvioBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure TabStampeBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure ProfiliBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qCaricaColoriBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure TabStatoRefertoBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure LkEsenzioneBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qTipoLoginBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qTipoWSBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qStatoAnagBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qClientPacsBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qStatoCDBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qCtrlEseguitoBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qDefPrintBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qStatoPrestazioniBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qStatoImmaginiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qEsameCompostoBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure TipoUrgenzaBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qStatoVisitaBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qTipoRepartoBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qItemTypeBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qRicettaInfBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qTipoFirmaBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qRefStampatoBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qEtichStampateBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure TipoTrasportoBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure ErroriInvioBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qFormLayoutBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qFormLayoutNewRecord(DataSet: TDataSet);
    procedure WebUpdate1AppRestart(Sender: TObject; var Allow: Boolean);
    procedure WebUpdate1FileProgress(Sender: TObject; FileName: String;
      Pos, Size: Integer);
    procedure WebUpdate1Progress(Sender: TObject; Action: String);
  private
    { Private declarations }
    FImgList: TcxImageList;
    FpnlUpgrade: TPanel;
    FreUpgrade: TcxRichEdit;
    FcxProgressUpdate: TcxProgressBar;
    FIsConnected: boolean;
    FIsUserLoaded: Boolean;
    FClientPacs: Boolean;
    FReadClientPacs: Boolean;
    FUltimoQuesitoI: string;
    FUltimoQuesitoE: string;
    FAllow_Overbooking: boolean;
    FTipo_Smartcard: integer;
    FCompressione: boolean;
    FServerAttivo: integer;
    FSyncroServer: string;
    FSyncroPorta: integer;
    FSyncroServer2: string;
    FSyncroPorta2: integer;
    FLoginNT: string;
    FServerMulti: Integer;
    FDimNormale: integer;
    FDimAllargata: integer;
    FAlertList: TList;
    lstpar: TStrings;
    FInChiusura: boolean;
    FDblClickTime: integer;
    FIE: TsyIE;
    FShell: TsyShellEx;
    FDoppioMonitor: boolean;
//    FStampanteNormale: string;
//    FStampanteEtichette: string;
    FPortaSeriale: integer;
    FComSpeed: string;
    FDatabits: integer;
    FParita: string;
    FBitStop: integer;
    FHwCtrl: string;
    FSwCtrl: string;
    xWorkAreaRect: TRect;
    FLoginAccettato: TtpLogin;
    FComputerGiaConnesso: string;
    FIPGiaConnesso: string;
    FConnessioneInterna: boolean;
    FPassPhrase: string;
//    FCACertificate: string;
//    FUserCertificate: string;
//    FPrivateKey: string;
    FNomeWebUpdate: string;
    FMsLoginAccettato: TtpLogin;
    FMsGiaConnesso: string;
    FNomeComputer: string;
//    function GetRegistryData(RootKey: HKEY; Key, Value: string): variant;
    procedure CaricaEsami;
    function VerificaEsame(pkt: Integer; pkc: Integer; bookmark: boolean; var aURL: OleVariant): Boolean;
    procedure ConnettiServer(var volte,res: integer);
    procedure ConnettiMultiSite(var volte,res: integer);
    procedure SetSyncroServer(Value: string);
    function GetSyncroServer: string;
    procedure SetSyncroPorta(Value: integer);
    function GetSyncroPorta: integer;
    function GetNomeWebUpdate: string;
    procedure SetNomeWebUpdate(Value: string);
    procedure LeggiErrori;
    procedure ShowProgress(value: integer);
    procedure ApriControlloExplorer;
    function GetPassPhrase: string;
    procedure SetPassPhrase(Value: string);
    function GetClientPacs: boolean;
    function GetCePacs: boolean;    
    function GetIsUserCup: boolean;
    function GetUserModAgende: boolean;
    function GetStampanteNormale: string;
    function GetIndexStampanteNormale: integer;
    function GetStampanteEtichette: string;
    function GetIndexStampanteEtichette: integer;
    function RegistraWorkstation: Boolean;
    function RegistraWorkxRad: boolean;

  protected
    procedure Loaded; override;
  public
    { Public declarations }
    xColori: array[0..9] of TColor;
    xDescColori: array[0..9] of string;
    dShortCut: Array of recShortCut;
    xDefFontName: string;
    hMinConEsami: Integer;
    hMinSenzaEsami: Integer;
    RefertazioneVocale: integer;
    EsamiPreno: TAstaCustomDataset;
    MsgReceived: string;
    FirmaDig: TFirmaDigitale;
    function FiltroTrovato(const cosa: string; ref: TcxDBDataController; rfCol: TObject): boolean;
    function SoloNome(const name: string): string;
    procedure CreaReferto(pkt: Integer; var xpkref: integer; var xdiagnosi: string);
    function ControllaTipoAgenda(ResToCal,QyPreno: TAstaClientDataset): boolean;
    procedure LoadSkin( nr: Integer );
    function CaricaPostoLavoro: boolean;
    procedure CaricaUser(var res: Integer; var volte: integer; scegli: boolean);
    procedure ApplicaDataFine(xView: TcxGridDBTableView; xColumn: TcxGridDBColumn);
    procedure ApplicaFiltro(xView: TcxGridDBTableView; xColumn: TcxGridDBColumn; Value: Variant; const xDescr: string; xclear: boolean = true);
    function GetAccNumb(xField: TField; const rsu: string): string;
    procedure CaricaUrgenze(xpkrep: Integer);
    procedure CaricaLingua;
    procedure PopulateImages(AImageComboBoxProperties: TcxImageComboBoxProperties);
    function GeneraAlert(xREPARTI_FK: Integer; xURGENZA: Integer; xDIAGNOSTICA_FK: integer): boolean;
    procedure CaricaReferti(pkrep: integer);
    procedure AllocaModalita(pki: integer);
//    function SetupConfiguraAsta: boolean;
    procedure CancellaMemoria(pkt: integer);
    procedure CancellaAltrePreno(pkt: integer);
    procedure RefreshErrori;
//    procedure RefertoVocale( const WPRichText: TWPCustomRichText;  const lingua: string );
    procedure CaricaDefault;
    function SetLocalTime(Value: TDateTime): boolean;
	  function ProceduraConnessione: boolean;
    function NomeUtente: string;
    function NomeComputer: string;
    function xStrToTime(const sTime: string): TDateTime;
    function TimeToItem(const x: string): integer;
    procedure SelectSkin(pSkin: integer);
    function PadAN( xField: TField ): string;
    procedure ResendAlert;
    procedure AddAlert( xAlert: TKSAstaEventClient );
    procedure DeleteAlert( xAlert: TKSAstaEventClient );
    constructor Create( AOwner: TComponent ); override;
    destructor Destroy; override;

//    procedure DecodZoom(x: integer; var w,z: integer);
    function ColorItem(x: integer; incompl: boolean = false): TColor;
    function ItemHint(xstato: integer): string;
    function GetColor(BColor, EColor: TColor; N, H: Integer): TColor;
    function FiltraEsami(Possibili: TAstaCustomDataset): TAstaCustomDataset; overload;
    function FiltraEsami(Possibili: TAstaCustomDataset; xpkrep: integer): TAstaCustomDataset; overload;
    procedure ConnettiSeriale(ComPort: TApdComPort);
    function vLocate(Grid: TcxGridDBTableView; pkKey: Integer): boolean;
    function vFieldByName(Grid: TcxGridDBTableView; const nField: string; AVarType: TVarType): Variant;
    function GetRealDragSourceGridView(const aSource: TObject): TcxGridDBTableView;
    function GetDragSourceGridView(const aSource: TObject): TcxGridDBTableView;
    function IsSelected( Grid: TcxGridDBTableView ): boolean;
    procedure DetailFirst(ADataSet: TDataSet; const AMasterDetailKeyFieldNames: String;
              const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
    function DetailIsCurrentQuery(ADataSet: TDataSet; const AMasterDetailKeyFieldNames: String;
        const AMasterDetailKeyValues: Variant): Boolean;

    function CalcolaStatolancio(xstatovisita: integer; const xtipo_accesso: string): integer;

    procedure AggiornaBatch;
    procedure LogoutBatch;
    procedure Vuoto(ptipo: TpTipoImg = tptChiudi);
    procedure AccNumber(pkt: integer; bookmark: boolean = false; pkc: integer = -1);
    function  CercaApplicazione(const nomeapp: string): HWND;

    procedure SetIEVisible(Value: boolean);
    function GetIEVisible: boolean;
    function SetPrinter(const PrinterName: String): boolean;

    function LockRecord( pkt,user_id,tipo: integer; stato: integer = -1): boolean;
    function UnLockRecord( pkt,user_id,tipo: integer ): boolean;

    function VarToInt(val: Variant): Integer;
    function VarToStr(val: Variant): string;
    function VarVuoto( val: Variant ): Boolean;

    function ApriMultiSite(const SiteName: string): boolean;
    procedure ChiudiMultiSite;
    procedure AssegnaCheckAnagrafica(StatoLancio: integer; var CheckNascita,CheckResidenza: boolean);
    procedure ApriEsamiPreno;
    function RTFToANSI(const input: string): string;
    procedure SwitchAsta;
    function GetDipartimento(xrep,xserv: integer): integer; // dipartimento del reparto/servizio richiedente
    function syIntStr(const xbarcode: string): string;
    procedure SetVisible(xColumn: TcxGridDBColumn; Value: boolean);
    procedure RefreshScheduler(cxSchedulerDBStorage: TcxSchedulerDBStorage; eEvent: TcxSchedulerControlEvent);
    function ControlloImmagini(const risstudy: string; const pid: string): boolean;
    procedure SalvaPersonalizza(const FormName: string; dxl: TdxLayoutControl; xuser: integer); overload;
    procedure SalvaPersonalizza(const FormName: string; Stream: TStream; xuser: integer); overload;
    procedure CaricaLayout(const FormName: string; dxl: TdxLayoutControl); overload;
    procedure CaricaLayout(const FormName: string; Stream: TStream); overload;
    function ResetLayout(const FormName: string; dxl: TdxLayoutControl): boolean;
    procedure CaricaProfilo( Stream: TStream );
    function CercaAppuntamento(const cf: string; var trec: TTessera): Integer;

    property IsUserLoaded: boolean read FIsUserLoaded write FIsUserLoaded;
//    property IEVisible: boolean read GetIEVisible write SetIEVisible;
    property AlertList: TList read FAlertList;
    property DimNormale: integer read FDimNormale;
    property DimAllargata: integer read FDimAllargata;
    property IE: TsyIE read FIE;
    property DoppioMonitor: boolean read FDoppioMonitor;
    property StampanteNormale: string read GetStampanteNormale;
    property IndexStampanteNormale: integer read GetIndexStampanteNormale;
    property StampanteEtichette: string read GetStampanteEtichette;
    property IndexStampanteEtichette: integer read GetIndexStampanteEtichette;
    property ClientPacs: boolean read GetClientPacs;
    property Pacs: Boolean read GetCePacs;
    property PortaSeriale: integer read FPortaSeriale write FPortaSeriale;
    property ComSpeed: string read FComSpeed write FComSpeed;
    property Databits: integer read FDatabits write FDatabits;
    property Parita: string read FParita write FParita;
    property BitStop: integer read FBitStop write FBitStop;
    property HwCtrl: string read FHwCtrl write FHwCtrl;
    property SwCtrl: string read FSwCtrl write FSwCtrl;
    property ConnessioneInterna: boolean read FConnessioneInterna write FConnessioneInterna;
    property PassPhrase: string read GetPassPhrase write SetPassPhrase;
//    property CACertificate: string read FCACertificate;
//    property UserCertificate: string read FUserCertificate;
//    property PrivateKey: string read FPrivateKey;
    property SyncroServer: string read GetSyncroServer write SetSyncroServer;
    property SyncroPorta: integer read GetSyncroPorta write SetSyncroPorta;
    property SyncroServer2: string read FSyncroServer2 write FSyncroServer2;
    property SyncroPorta2: integer read FSyncroPorta2 write FSyncroPorta2;
    property LoginNT: string read FLoginNT write FLoginNT;
    property Compressione: boolean read FCompressione write FCompressione;
    property NomeWebUpdate: string read GetNomeWebUpdate write SetNomeWebUpdate;
    property InChiusura: boolean read FInChiusura write FInChiusura;
    property IsUserCup: boolean read GetIsUserCup;
    property UserModAgende: Boolean read GetUserModAgende;
    property Tipo_Smartcard: integer read FTipo_Smartcard;
    property Allow_Overbooking: boolean read FAllow_Overbooking write FAllow_Overbooking;
    property UltimoQuesitoI: string read FUltimoQuesitoI write FUltimoQuesitoI;
    property UltimoQuesitoE: string read FUltimoQuesitoE write FUltimoQuesitoE;
    property IsConnected: boolean read FIsConnected;

    property pnlUpgrade: TPanel read FpnlUpgrade write FpnlUpgrade;
    property reUpgrade: TcxRichEdit read FreUpgrade write FreUpgrade;
    property cxProgressUpdate: TcxProgressBar read FcxProgressUpdate write FcxProgressUpdate;
    property ImgList: TcxImageList read FImgList;

  end;

var
  FDMCommon: TFDMCommon;
  xversione: string;
  gbllingua: string;
  gblpkrep: integer;    // pk del reparto
  gblNomeReparto: string; // nome reparto
  gblpkserv: integer;    // pk del servizio
  gblMultiServ: boolean;
  gblpkworkstation: integer;  // pk della workstation
  gblTipoLogin: integer;
  gblospedale: string;  // codice ospedale
  gblore_riapri: integer; // ore entro le quali si puo' riaprire il referto
  gblTipo_Preno: integer;
  gblfirmainst: Boolean;
  gblModTecnicoEseguito: boolean;

  gblpkrepps: integer;    // pk del reparto pronto soccorso
  gblpkservps: integer;    // pk del servizio pronto soccorso
  gblMedRefertante: integer;
  gblCodUtente: integer;
  gblDescrServizio: string;
  gblProfiloVocale: string;
  updtest: boolean;
  gblFunzione: integer;
  gblcodfisc: string;
  gblNomeUtente: string;
  gblLoginNT: string;
  gblpswd: string;
  gblUserIsAdmin: boolean;
  gblSuperUser: boolean;
  gblSetup: boolean;
  gblIsMedico: boolean;
  gblSpecializ: boolean;
  gblViewReferti: boolean;
  gblViewImmagini: boolean;
  gblForzaBlocchi: boolean;
  gblEseguiEsami: boolean;
  gblSpostaEsami: boolean;
  gblEstrazioneDati: boolean;
  gblUserCup: boolean;
  gblSkinName: string;
  gblColorName: string;
{$IFDEF MEDICORNER}
  gblCallCenter: Boolean;
{$ENDIF}

  { parametro DEBUGMODE da riga di comando }
  gblDebugMode: boolean;

  xServInterni: string;

  {@@DMCommon.gblMod
    Associazione stampe per funzione.

    Prende i dati da TABSTAMPE e da FUNZIONISTAMPE.

    Da FUNZIONISTAMPE prende i record con PK da 70 a 74 che
    devono corrispondere a:
    
    70 = referto esterni
    
    71 = referto interni
    
    72 = referto P.S.
    
    73 = referto estemporaneo
    
    74 = referto consulenza
    
    
    
    Nella seconda parte dell'array mette rispettivamente:

    pos.1: ITEM_ID_FK \> RISDBA.RB_ITEM.ITEM_ID

    ogni ITEM_ID puo' essere di tipo RB_ITEM.ITEM_TYPE: 1=Report
    Builder, 2=PivotGrid, 3=CDA

    pos.2: COPIE

    pos.3: TIPO_REFERTO_FK \> RISDBA.TIPO_REFERTO

    tabella fissa con 0=HTML, 1=CDA precedenti, 2=HTML+MIME,
    3=CDA HTML, 4=PDF, 5=CDA PDF                                }
  gblMod: array[70..75 , 1..4] of integer;
  gblDescMod: array[70..75] of string;

  function StrToWord(const Value: String): Word;
  procedure PostKeyEx( hWindow: HWnd; key: Word; Const shift: TShiftState; specialkey: Boolean );


resourcestring

  RS_RefertoCaricato = 'Referto importato!';
  Tessera_NonTrovatoPreno = 'Nessun appuntamento trovato.'#13'Vuoi fare una prenotazione ?';
  Tessera_NonTrovatoAccet = 'Nessun appuntamento trovato.'#13'Vuoi fare una accettazione diretta ?';
  RS_AV = 'Si è verificato un problema.'#13'L''applicazione verrà riavviata';
  RAD_ErrSocket = 'Errore in connessione a H&S'#13'%s';
  RAD_TelefonoEmail = 'Telefono o email obbligatori %s!';
  RAD_Paziente = 'per il paziente';
  RAD_Contatto = 'per il contatto';
  RAD_AppRestart = 'Confermi la chiusura del programma per effettuare l''aggiornamento ?';
  RS_UriWCFNonDefinito = 'Indirizzo di chiamata al servizio non definito';
  RS_ChiamataWCFNonRiuscita = 'La chiamata al servizio non è riuscita';
  RAD_ConfermaReset = 'Confermi reset del layout? La Form verrà chiusa.';
  RIS_DatiVariati = 'I dati sono stati variati: vuoi salvare?';
  RS_OperazioneNonPossibile = 'Operazione non possibile';
  RS_RefertoNr = 'Referto %d';
  RS_StampaEtichetteHint = 'Stampa etichette';
  RIS_AccNumber = 'Nr. Esame';  // 'Acc. Number';
  RS_RefertoNonModificabile = 'Referto %d non modificabile!'#13'Operazione non possibile.';
  RIS_WebUpdateNonRiuscito = 'Collegamento non riuscito a %s';
  RS_PACSNonConfigurato = 'PACS non configurato nell''Unità organizzativa';
  RS_NonAgendeDisponibili = 'Non esistono agende disponibili nel periodo di tempo selezionato';
  RS_SelezionePeriodo = 'Selezione periodo';
  RIS_ErroreGeneraReferto = 'Errore nella generazione del referto (%d)';
  RIS_EliminaEsamiDiagn = 'Confermi l''eliminazione di tutti gli esami?';
  RS_ctrl_profilo = 'Obbligatorio indicare i profili dell''utente';
  RIS_SalvaTemplate = 'Salva template';
  RIS_NomeTemplate = 'Nome del template';
  RIS_SalvaConNome = 'Salva con nome';
  RIS_CtrlTemplate = 'L''agenda di %s dalle %s alle %s e'' già presente nel template %s'#13'Prosegui lo stesso?';
  RIS_CaptionTemplate = 'Template agende - ';
  RS_NonDiagnDisponibili = 'Non ci sono diagnostiche disponibili per il reparto richiedente';
  RS_SmartcardNoUtente = 'La smartcard non corrisponde all''utente !'#13'(%s)';
  RIS_SmartCardInserita = 'Dispositivo di firma di %s';
  RIS_SmartCardNonInserita = 'Dispositivo di firma non inserito';
  RS_Msg_ConfSostituzione = 'Confermi sostituzione della statistica %s?';
  RS_NoUrlNuovoDocumento = 'Non definito Url per nuovo documento';
  RS_NoUrlRistampaDocumento = 'Non definito Url per ristampa documento';
  RS_NoProfilo = 'Profilo non registrato - login non possibile';

  RS_SmartcardNonDisp = 'Smartcard o lettore non disponibile';
  RS_ErroreLibrerieFirma = 'Nella workstation non e'' stata configurata la libreria per la firma digitale!'#13'Refertazione impossibile!';
  RS_ErroreModuloRefertazione = 'Errore in modulo refertazione'#13'(%s)';

  RS_GiaAnnullatoSISS = 'Già prodotto referto annullativo. Esame non più refertabile.';
  RS_PivotGrid_Esclusi = 'Esclusi';

  RS_Msg_ConfTogliInviaA = 'Conferma eliminazione di Invia a... ?';
  RS_BaseProvenienza = 'Provenienza';
  RS_BaseGuardiaMed = 'Farmacia esecuzione';

  RS_MancaChiave = 'Attenzione: non e'' stata definita la chiave nel file %s';
  RS_MancaWizard = 'Attenzione: non e'' stato definito il wizard per il file %s';
  RS_TestiStd = 'Testi standard';
  RS_TestiMedico = 'Testi personali';
  RS_PeriodoTroppoGrande = 'Non e'' possibile selezionare un periodo maggiore di un anno.';  
  RS_NoCancSconosciuto = 'Non e'' possibile cancellare il paziente sconosciuto';

  RS_Msg_ConfControlloImmagini = 'Confermi il controllo delle immagini per gli esami selezionati ?';
  RS_SQLModificato = 'SQL modificato. Confermi la modifica ?';
  RS_RicalcolaNrArch = 'Ricalcolo numeri archivio ?';
  RS_MaxEsamixImp = 'Non e'' possibile introdurre più di 8 esami per impegnativa !';
  RS_NrArchivioNonTrovato = 'Numero archivio non trovato';
  RS_ErroreInCreazioneCD = 'Errore durante la creazione del CD'#13#10'paziente: %s'#13#10'%s';
  RS_NuovoNrArchivio = 'Confermi la creazione di un nuovo numero di archivio per tutti gli esami del paziente ?';
  RS_RefertazioneVocaleAssente = 'Errore nella refertazione vocale.'#13#10'Attivata modalità standard';

  RS_FirmaTuttiReferti = 'Confermi la firma di tutti i referti selezionati ?';
  RIS_GiornoInizio = 'Giorno inizio obbligatorio';
  RIS_GiornoFine  = 'Giorno fine obbligatorio';
  RIS_Prenotazione = 'Prenotazione';
  RIS_Richiesta = 'Richiesta';
  RIS_Prenota = 'Prenota';
  RIS_ConfermaPreno = 'Conferma prenotazione paziente';
{$IFDEF MEDICORNER}
  RIS_Accettazione_Esterni = 'Accettazione';
{$ELSE}
  RIS_Accettazione_Esterni = 'Accettazione Esterni';
{$ENDIF}
  RIS_Accettazione_Interni = 'Accettazione Interni';
  RIS_Accettazione_PS = 'Accettazione P.S.';
  RIS_Accetta = 'Accetta';
  RIS_ConfermaAccettazione = 'Conferma accettazione paziente';
  RIS_ConfermaAssegnazioneReferto = 'Confermi assegnazione referto ?';

  RIS_Somministrazione = 'Somministrazione';
  RIS_Somministra = 'Somministra';
  RIS_ConfermaSomministrazione = 'Conferma somministrazione paziente';

  RIS_Esegui = 'Esegui';
  RIS_ConfermaEsecuzione = 'Conferma esecuzione esame';

  RIS_Salva = 'Salva';
  RIS_Conferma = 'Conferma';
  RIS_ConfermaOp = 'Conferma operazione';

  RS_FirmaPrecedente = 'Firma prec.';
  RS_DataMinima = 'Data minima %s';
  RIS_it4med= 'it4med';
  RS_Ospedale = 'Ospedale';
  RS_Reparto = 'Reparto';
  RIS_RicercaIncompleta = 'Attenzione: ricerca incompleta.'#13#10'Usare dei criteri di ricerca più restrittivi !';

  RS_ConfDragDrop = 'Confermi prenotazione del paziente %s ?';

  RAD_SitoNonRaggiungibile = '%s non raggiungibile. Il referto non e'' visualizzabile.';
  RS_Gene_SpecObbligatoria = 'Obbligatorio inserire una specificazione !';
  RS_Gene_Msg_ConfDaValidare = 'Confermi ritorno richiesta in stato da validare ?';
  RAD_EsameNonPresente = 'L''esame %s non e'' eseguibile in %s.'#13#10'Esame non spostabile !';
  RS_ImmaginiInviate = 'Esame %s'#13#10'Immagini verificate nel PACS: %s';
  RS_ConfermaCreazioneCD = 'Confermi creazione CD ?';
  RS_ErrorePEG = 'Errore in creazione CD'#13#10'(codice: %s'#13#10'%s)';
  RS_CD_Ok = 'Iniziata creazione CD per esame %d';
  RS_CD_NoImmagini = 'Esame %d: CD non creabile, non esistono immagini in archivio';
  RS_CodiceNonUtilizzabile = 'Non e'' possibile effettuare l''esame %s %s nella diagnostica selezionata';
  RS_ConfermaTogliAssegnazione = 'Confermi eliminazione assegnazione dagli esami selezionati ?';
  RS_EsamiDaRefertare = 'Esame da refertare';
  RS_EsamiDaFirmare = 'Referto da firmare';
  RS_Addendum = 'Addendum';
  RS_Consulenza = 'Consulenza';
  RS_Sostitutivo = 'Referto sostitutivo';
  RS_EsameAnnullativo = 'Referto annullativo';
  RS_EliminazioneEsami = 'Attenzione: l''esame verrà eliminato da tutte le radiologie.'#13#10'Confermi l''operazione ?';
  RS_EliminazioneEsamiRad = 'Attenzione: l''esame verrà eliminato da tutte le diagnostiche e le agende.'#13#10'Confermi l''operazione ?';
  RS_EtichettaReparti = 'E'' stata letta un''etichetta di ricovero';
  RS_EtichettaPS = 'E'' stata letta un''etichetta di P.S.';
  RS_EtichettaNonRiconosciuta = 'Etichetta non riconosciuta';
  RS_PazienteDimesso = 'Il paziente e'' già stato dimesso.';
  RS_PazienteNonRicoverato = 'Il paziente non e'' ricoverato.';
  RS_RepartoRicoveroDifferente = 'Il paziente e'' ricoverato in un altro reparto.';
  RS_TipoAttivitaDifferente = 'Non esiste un ricovero per il tipo di richiesta.';
  RS_ControlloContinua = #13#10'Vuoi continuare ?';

  RS_DataRichiesta = 'La data della richiesta non può essere antecedente ad oggi !';
  RS_Msg_AttentoGiornoReg = 'Attenzione: accettazione non in data odierna'#13#10'Vuoi proseguire ?';
  RS_Msg_Prosegui = #13#10'Vuoi proseguire ?';
  RAD_ErroreCreazioneReferto = 'Errore nella creazione del referto: prego riprovare';
  RS_UtenteNonTrovato = 'Utente non riconosciuto';
  RS_ErroreDoppiaFirma = 'La seconda firma deve essere eseguita da un radiologo differente';
  RIS_PACSNonConf = 'PACS non configurato';
  RS_ControlloNonEseguito = 'Controllo dell''esame non eseguito.';
  RS_FusioneNonEseguita = 'Fusione dell''esame non eseguita.';
  RS_Almeno2CaratteriAnag = 'Inserire almeno due caratteri per il cognome';
  RS_Almeno2Caratteri = 'Inserire almeno due caratteri per la ricerca';
  RIS_NoImgEsterne = 'Le immagini sono archiviate in un altro presidio e non sono consultabili';
  RS_AnagNonDisp = 'Il collegamento all''anagrafica esterna non e'' disponibile';
  RS_MotivoObbligatorio = 'Obbligatorio inserire il motivo della cancellazione';
  RS_Salva = 'Salva';
  RS_SalvaHint = 'Conferma operazione';
  RS_ConfCampiDifferenti = 'Differenti i campi:'#13#10'%s';
  RS_ConfCopiaAnagEsterna = 'Confermi copia anagrafica esterna ?';
  RS_ConfCopiaEsamixDiagn = 'Confermi la copia degli esami della diagnostica %s ?';
  RS_EsamixDiagnInMemoria = 'Confermi la copia degli esami della diagnostica %s ?';
  RS_EsistonoErrori = 'Rilevati errori. Controllare i dati prima di effettuare l''estrazione !';
  RS_PrestGiaCaricata = 'Esame %s già registrato !';
  RS_TipoEsameGiaCaricato = 'Non è possibile caricare due esami dello stesso tipo (%s)';
  RS_AnagEsternaNonTrovata = 'Anagrafica esterna non trovata !';
  RS_ConfInvioSingModificheAnagEst = 'Confermi invio della singola modifica all''anagrafica esterna ?';
  RS_ConfInvioTutteModificheAnagEst = 'Confermi invio di tutte le modifiche all''anagrafica esterna ?';
  RS_ConfInserimentoSingAnag = 'Confermi invio dell''anagrafica ?';
  RS_ConfInserimentoTutteAnag = 'Confermi invio di tutte le anagrafiche ?';
  RS_ConfFusione = 'Confermi la copia dell''anagrafica'#13#10'%s'#13#10'nell''anagrafica'#13#10'%s';
  RS_ConfermaMarcaturaInviati = 'Confermi marcatura di tutti i record come "inviati" ?';
  RS_ConfermaMarcaturaDaInviare = 'Confermi marcatura di tutti i record come "da inviare" ?';
  RAD_RefertoLockato = 'L''esame e'' consultato al momento dall''utente %s'#13#10'nella stazione %s %s';
  RAD_AnagraficaLockata = 'L''anagrafica e'' consultata al momento dall''utente %s'#13#10'nella stazione %s %s';
  RAD_StatoNonCoerente = 'L''esame non e'' più nello stato della lista.'#13#10'Effettuare un''aggiornamento della lista di lavoro.';
  RS_ConfermaCreazioneEstrazione = 'Confermi la generazione dei dati per %s ?';
  RIS_MedicoEsecutoreObbligatorio = 'E'' obbligatorio inserire il nome del medico che esegue l''esame';
  RS_ArrivataRichiesta = 'E'' arrivata una richiesta dal reparto %s'#13#10'%s';
  RS_ArrivatoReferto = 'E'' arrivato un esame da refertare dal reparto %s'#13#10'%s';
  RS_Msg_NonPrenotabile = 'Accettazione diretta ! Non si può riportare in prenotazione';
  RIS_ERRORE_PACS = 'Attenzione: il tecnico %s ha dato l''eseguito all''esame il %s nonostante il seguente errore:'#13#10'%s';
  RAD_Upgrade = 'Attenzione: tra %d minuti il programma verrà aggiornato. Terminare le operazioni.';
  RAD_Logout = 'Attenzione: tra %d minuti il sistema verrà chiuso per manutenzione. Terminare le operazioni.';
  RAD_Manutenzione = 'Il server e'' in manutenzione. Riprovare più tardi il collegamento.(SY002)';
  RS_ServerNonDisponibile = 'Il collegamento non e'' attualmente disponibile. Riprovare più tardi.(SY003)';
  RAD_ErroreStampa = 'Errore in fase di stampa. Prego controllare la stampante.'#13#10'(%s)';
  RAD_ErrorePDF = 'Errore nel documento PDF.'#13#10'(%s)';
  RS_Diagnostica = 'Diagnostica: ';
  RS_FoglioLavoro = 'Foglio di lavoro: ';
  RS_NonAperturaInOrario = 'L''orario di chiusura deve essere maggiore di almeno 15 minuti all''orario di apertura';
  RS_PeriodoSovrapposto = 'Orario di apertura già presente';
  RS_AgendeSovrapposte = 'Non e'' possibile creare piu'' agende nello stesso orario';
  RS_ConfRiapri = 'Conferma riapertura referto ?';
  RS_ConfRecupero = 'Conferma recupero operazione ?';
  RS_CodiceNonInAgende = 'Codice esame %s non presente nelle agende';
  RS_CodiciNonInAgende = 'Codici esame non presenti nelle agende';

  RS_Ric_Msg_SCam = 'Inserire almeno un valore di ricerca';

  RAD_NessunReferto = 'Non e'' stato inserito nessun referto. Firma impossibile.';
  RAD_RefertoNonTrovato = 'Referto non trovato (%d)';
//  RAD_ErroreInFirmaDigitale = 'Errore nella firma digitale del referto (%s)';
  RAD_MancaPIN = 'Obbligatorio introdurre il PIN. Referto non firmato.';

  RS_Struttura_Msg_ConfCanc = 'Confermi cancellazione %s e di tutti i dati collegati ?';
  RS_Struttura_Sale = 'della sala';
  RS_Struttura_Diagnostiche = 'della diagnostica';
  RS_Struttura_Modalita = 'della modalità';
  RS_Struttura_Stazioni = 'della stazione di refertazione';
  RS_Struttura_Gia_Registrata = 'Modalità già presente nella struttura !';

  RS_Struttura_Masterizzatori = 'del masterizzatore';

  RIS_ErroreUnicita = 'E''già stato registrato un altro record con lo stesso valore';
  RIS_ErroreForeign = 'La cancellazione non e'' possibile. Esistono delle registrazioni nella tabella %s';
  RIS_GiornoTipo = 'giornata tipo';
  RS_ConfDiagErrata = 'Configurazione errata della diagnostica. Impossibile dare l''eseguito.';

  RIS_CampoObbligatorio = 'Il campo %s e'' obbligatorio';

//  RIS_ImmaginiNonInArchivio = 'Le immagini non sono state associate correttamente all''esame in fase di esecuzione.'#13#10'Effettuare una ricerca manuale ?';
//  RIS_ImmaginiNonInArchivio = 'Le immagini non sono state associate correttamente all''esame in fase di esecuzione';
  RIS_ImmaginiNonInArchivio = 'Immagini non trovate nel PACS: %s'#13#10'(A.N.: %s - Indirizzo: %s)';
  RAD_AvvisoEsamiExtra = 'Esame extra-tariffario.'#13#10'Non utilizzabile per pazienti esterni.';
  RIS_ValidaAnagrafica = 'Anagrafica incompleta.'#13#10'Vuoi completarla?';

  { Stringhe messaggi generici }
  RS_UserPresente = 'Accesso non possibile. Utente già collegato in %s'#13#10'Vuoi terminare l''altra connessione ?';
  RS_ComputerNonRegistrato  = 'La workstation %s non e'' stata registrata.';
  RS_ComputerNonAttivo = 'La workstation %s non e'' stata attivata nella Farmacia.';
  RS_Gene_Msg_OTer = 'Operazione terminata';
  RS_Gene_Cap_ARic = 'Attiva ricerca';
  RS_Gene_Msg_SCam = 'Specificare almeno un campo per la ricerca';
  RS_Gene_Cap_NRic = 'Nuova ricerca';
  RS_Gene_Msg_NoDt = 'Dati non trovati';
  RS_Gene_Msg_NoDtReg = 'Dati anagrafici non trovati.'#13#10'Vuoi creare una nuova anagrafica ?';
  RS_Gene_Msg_NoDtAcc = 'Dati appuntamento non trovati.'#13#10'Vuoi registrare una nuova accettazione ?';
  RS_Gene_Msg_Inte = 'Interruzione in corso...';
  RS_Gene_Msg_Conf = 'Confermi abbandono ricerca ?';
  RS_Gene_Msg_ConfUscita = 'Dati modificati - Confermi abbandono ?';
  RS_Gene_Msg_ConfUtente = 'Confermi la cancellazione dell''utente?'#13#10'Attenzione: l''operazione puo'' impiegare molto tempo e bloccare le altre operazioni!';
  RS_Gene_Msg_ConfCanc = 'Confermi cancellazione ?';
  RS_Anag_Msg_ConfCanc = 'Confermi cancellazione dell''anagrafica ?';
  RS_Gene_Msg_ConfInComposto = 'Confermi la trasformazione in Esame composto ?';
  RS_Gene_Msg_ConfInNormale = 'Confermi la trasformazione in Esame normale ?';
  RS_Gene_GiaPresente = 'Il paziente ha già una %s nella diagnostica %s il %s';
  RS_GiaInviato = 'Nr. Esame %s'#13#10'Impossibile cancellare l''esame. Le immagini sono già state inviate in archivio!';
  RS_QGiaInviato = 'Nr. Esame %s'#13#10'Le immagini sono già state inviate in archivio! Vuoi comunque cancellare l''esame ?';
  RS_NonInviato = 'Nr. Esame %s'#13#10'Impossibile dare l''eseguito all''esame. Le immagini non sono state inviate in archivio !';
  RS_QNonInviato = 'Nr. Esame %s'#13#10'Le immagini non sono state inviate in archivio. Vuoi dare comunque l''eseguito ?';
  RS_PID_Differenti = 'Nr. Esame %s'#13#10'L''immagine risulta associata ad un paziente differente:'#13#10'%s %s (PID: %s)';
  RS_PID_QDifferenti = 'Nr. Esame %s'#13#10'L''immagine risulta associata ad un paziente differente:'#13#10'%s %s (PID: %s)'#13#10'Vuoi dare comunque l''eseguito ?';

  RS_ImmaginiNonArrivate = 'Nr. Esame %s'#13#10'Immagini non trovate nel PACS: %s';
  RS_ImmaginiQNonArrivate = 'Nr. Esame %s'#13#10'Immagini non trovate nel PACS: %s'#13#10'Vuoi dare comunque l''eseguito ?';
  RS_MODALITA_Differenti = 'Nr. Esame %s'#13#10'L''immagine risulta associata ad una modalità differente:'#13#10'%s invece di %s';
  RS_MODALITA_QDifferenti = 'Nr. Esame %s'#13#10'L''immagine risulta associata ad una modalità differente:'#13#10'%s invece di %s'#13#10'Vuoi dare comunque l''eseguito ?';
  RIS_AnagGiaCaricataNoSelez = 'Esiste già un paziente registrato con gli stessi dati !';
  RIS_AnagGiaCaricataSelez = 'Esiste già un paziente registrato con gli stessi dati !'#13#10'Vuoi selezionarlo ?';

  RS_ConfermaFusione = 'Confermi associazione dell''esame %s del paziente'#13#10'PID %d %s %s'#13#10'nel paziente'#13#10'PID %d %s %s ?';
  RS_ConfermaFusioneTutto = 'Confermi associazione dell''anagrafica ?';

  RS_UserNoLogin = 'La password non corrisponde all''utente collegato.';
  RS_ltVerifyFail = 'Nome utente o password errati';
  RS_ltPswdScaduta = 'Password scaduta';
  RS_ltPswdDaCambiare = 'Attenzione: cambiare la password';
  RS_Gene_NessunaAgenda = 'Nessuna agenda disponibile entro i %d giorni di ricerca.'+#13#10+'Riprovare nei %d giorni successivi ?';
  RS_Gene_NessunaAgenda2 = 'Nessuna agenda disponibile.';
  RS_Gene_NessunaDiagnostica = 'Nessuna diagnostica aperta';
  RS_Gene_NessunaDiagnSelez = 'Nessuna diagnostica selezionata';
  RS_Gene_NessunaDiagnAperta = 'Nessuna diagnostica aperta per l''esame richiesto';
  RS_ltPswdVerifyFail = 'Verifica password fallita';
  RS_ltPswdUguale = 'La nuova password e'' uguale a quella vecchia';
  RS_PswdCambiata = 'Password modificata';
  RS_ltUserOrPswdVerifyFail = 'Nome utente o password errati';
  RS_PasswordUsata = 'Nome utente e password gia'' utilizzate da un altro utente';
  RS_LoginNTUsato = 'Il nome utente e'' già in uso';
  RS_AnagraficaIncompleta = 'Anagrafica incompleta. Impossibile eseguire l''operazione';

  { Stringhe gestione calendari }
  RS_Cale_Msg_EOFi = 'L''ora finale deve essere maggiore di quella iniziale.';
  RS_Cale_Msg_EDPe = 'La durata deve essere maggiore di 0.';
  RS_Cale_Msg_EVPe = 'Il numero delle visite deve essere maggiore di 0.';
  RS_Cale_Msg_EVUr = 'Il numero delle visite urgenti deve essere maggiore o uguale a 0.';
  RS_Cale_Msg_EOBr = 'L''orario e'' troppo breve per generare almeno una visita.';
  RS_Cale_Msg_EGgg = 'Data finale del periodo da generare inferiore alla data iniziale';
  RS_Cale_Msg_EOIn = 'L''orario non consente di creare un numero intero di visite.' +
                      #13#10 + 'Continuare?';
  RS_Cale_Msg_EGio = 'Esiste già un periodo per il giorno %s.' +
                     #13#10 + 'Sostituisco?';
  RS_Cale_Msg_EGPr = 'La giornata del %s esiste già ed ha delle prenotazioni assegnate.';
  RS_Cale_Msg_CCGi = 'Confermi la cancellazione della giornata %s?';
  RS_Cale_Msg_CCPr = 'Confermi la cancellazione di tutti gli orari delle giornate dal %s ?';
  RS_Cale_Msg_CCAg = 'Confermi la cancellazione di tutte le agende dal %s ?';
  RS_Cale_Msg_CCAgDalAl = 'Confermi la cancellazione di tutte le agende dal %s al %s ?';
  RS_Cale_Msg_Agende = 'Confermi la cancellazione dell''orario e di tutte le agende di prenotazione ?';
  RS_Cale_Msg_PrOc = 'Alcune delle prenotazioni sono occupate.' +
                     #13#10 + 'Cancellazione non consentita.';
  RS_Cale_Msg_SoTe = 'Sovrascrivere il template esistente?';
  RS_Cale_Msg_NoInFoglio = 'La data selezionata (%s) non e'' compresa nel periodo del foglio di lavoro.';
  RS_Cale_Msg_ServNonAttivo = 'Il servizio selezionato non e'' piu attivo dal %s';
  RS_Cale_Msg_ServAssente = 'Obbligatorio specificare il servizio nella Vista dati';

  RS_ConfCanc_Blocco = 'Confermi la cancellazione del blocco ?';
  RS_EPre_Msg_ECog = 'Cognome: campo obbligatorio';
  RS_EPre_Msg_ENom = 'Nome: campo obbligatorio';
  RS_Pren_Msg_StPr = 'Stampo la prenotazione?';

  { Decodifiche tipi di operazione }
  RS_Deco_TOpe_Dele = 'Cancellata';
  RS_Deco_TOpe_Inse = 'Inserita';
  RS_Deco_TOpe_Upda = 'Modificata';

  { Stringhe ricerca prenotazione }
  RS_RPre_Msg_NoPr = 'Non ci sono prenotazioni';
  RS_Pren_Msg_CCan = 'Confermi la cancellazione della prenotazione?';

  RS_LAnt_Msg_CAnt = 'Confermi l''anticipo della prenotazione?';
  RS_RicAnticipi   = 'Vuoi ricercare eventuali richieste di anticipo?';
  RS_Pren_Msg_NoAn = 'Non ci sono richieste di anticipo';

  RS_CancellaAltrePreno = 'Esistono altre prenotazioni per questa impegnativa. Vuoi cancellarle ?';

  RS_Pren_Hin_ViTu = 'Sia visite private che non';
  RS_Pren_Hin_ViPr = 'Solo visite private';
  RS_Pren_Hin_GiTu = 'Sia giorni liberi che pieni';
  RS_Pren_Hin_GiLi = 'Solo giorni liberi';
  RS_Pren_Hin_BlSi = 'Visualizza anche le visite libere bloccate';
  RS_Pren_Hin_BlNo = 'Non visualizza le visite libere bloccate';

  RS_Pren_Blocca = 'Blocca/sblocca periodo selezionato';

  RS_ctrl_iniziofine = 'Orario finale maggiore o uguale dell''orario iniziale';
  RS_RicercaPrenotazioni = 'Ricerca prenotazioni';
  RS_NonEsameInOrario = 'Nell''orario selezionato non e'' possibile effettuare l''esame'+#13#10+' %s  - %s';
  RS_NonRichiedenteRep = 'L''agenda e'' riservata alle prenotazioni con provenienza %s';
  RS_NonRichiedenteTipo = 'L''agenda e'' riservata alle prenotazioni di tipo %s';
  RS_NonRichiedenteServRad = 'L''agenda e'' riservata a %s';
  RS_NonRichiedenteDip = 'L''agenda e'' riservata al dipartimento %s';

  RS_EsamiSelezionati = 'Esami selezionati per %s';
  RS_Gene_Positivo = 'Il valore del campo %s non può essere negativo';

  RS_TIC_NotEsenzione    = 'Attenzione !  Sono presenti prestazione non appartenenti all'' esenzione selezionata.'
                           + #13#10 + 'Codice < %s >' + #13#10 +
                           'Proseguire eliminando le prestazioni non corrette ?';
  RS_TIC_LengthField     = 'Campo %s incompleto';
  RS_TIC_USLNotCorrect   = 'Codice ASL errato o non in archivio !';
  RS_TIC_EsisteImpegnat  = 'E'' già stata registrata un''impegnativa con lo stesso numero per il paziente'#13#10'%s'#13#10'Nr. Accettazione %d';
  RS_TIC_DataRichiestaNOK  = 'La data dell''impegnativa e'' maggiore della data della richiesta';
  RS_TIC_DataPrestazNOK  = 'La data del''impegnativa e'' maggiore della data della prestazione';
  RS_TIC_DataImpegnNOK   = 'Impegnativa scaduta. La validita'' e'' di %d giorni';
  RAD_NessunRefNegativo  = 'Referto negativo non creato';
  RS_Gene_Msg_ConfEseguito = 'Conferma esecuzione esame ?';
  RS_Msg_ConfCancAcc = 'Confermi cancellazione dell''accettazione ?';
  RS_Gene_Msg_ConfNonRef = 'Confermi chiusura esame da non refertare ?';
  RS_Msg_ConfRitorno = 'Confermi ritorno in Esami da eseguire ?';
  RS_Msg_ConfRitornoAccettazione = 'Confermi ritorno in accettazione esami ?';
  RS_Msg_ConfRitDaConsegnare = 'Confermi ritorno in da consegnare ?';
  RS_Data_Richiesta = 'La data della richiesta non può essere maggiore di %d giorni';

  RAD_Firma_ControlloReferto  = 'Obbligatorio introdurre il referto';
  RAD_ConfermaRitornoSegreteria = 'Conferma ritorno in esame da trascrivere ?';
  RAD_ConfermaFirma = 'Conferma chiusura referto ?';
  RAD_ConfermaTrascrizione = 'Conferma invio referto alla trascrizione ?';
  RAD_ConfermaSelezionatiTrascrizione = 'Conferma invio referti selezionati in trascrizione ?';  
  RAD_ConfermaInFirma = 'Conferma invio referto in firma ?';
  RS_PrenotazioneNonConfermata = 'Esistono delle richieste aperte: confermare o annullare le prenotazioni';
  RAD_ConfermaSpostaEsami = 'Conferma refertazione separata degli esami della diagnostica %s?';
  RAD_ConfermaRefertaUgualmente = 'Attenzione: il paziente ha degli esami ancora non eseguiti in diagnostica %s !'#13#10'Confermi ugualmente la refertazione ?';
  RAD_AlmenoUnEsame = 'Deve esistere almeno un esame eseguito o da eseguire...';

  RS_GruppiArticoli = 'Gruppi articoli';
  RS_GruppiCodiciRad = 'Gruppi';
  RS_SottoGruppiCodiciRad = 'Sottogruppi';

  RS_GruppiTestiStd = 'Gruppi';
  RS_SottoGruppiTestiStd = 'Sottogruppi';

  RS_Reparti = 'Reparto';
  RS_Servizi = 'Servizio';
  RS_Utente = 'Utente';

  RAD_AvvisoEsamiRich = 'Attenzione !'#13#10+'il paziente ha una richiesta in corso'+#13#10+
                        'nella diagnostica %s';

  RAD_AvvisoEsamiPreno = 'Attenzione !'#13#10+'il paziente e'' prenotato per lo stesso esame'+#13#10+
                         'nella diagnostica %s il giorno %s alle ore %s';

  RAD_AvvisoPrenoDiag = 'Attenzione !'#13#10+'il paziente e'' prenotato nella diagnostica %s il giorno %s alle ore %s';

  RAD_AvvisoEsamiAcc = 'Attenzione !'#13#10+'il paziente e'' accettato per lo stesso esame'+#13#10+
                       'nella diagnostica %s il giorno %s alle ore %s';
  RAD_AvvisoEsamiDiag = 'Attenzione !'#13#10+'il paziente e'' accettato nella diagnostica %s il giorno %s alle ore %s';

  RAD_AvvisoStazione = 'Obbligatorio indicare la stazione di refertazione';

  LP_Bands_Caption1 = 'Dati del paziente';
  LP_Bands_Caption2 = 'Dati della visita';
  RS_Msg_ConfRitornoAcc = 'Conferma ritorno in richieste da reparti ?';
  RS_Msg_ConfRitornoPre = 'Conferma ritorno in prenotazioni ?';
  RAD_Lock = 'Operazione non possibile. I dati vengono utilizzati in questo momento da un altro utente.';

  RS_DataNonValida = 'Data non valida';
  RS_RefertoRiservato = 'Referto riservato dal dott. %s';
  RS_ErrorePhonemaOCX = 'Errore %d nella refertazione vocale (profilo vocale: %s)';
  RS_EsameNonTrovato = 'Esame %d non trovato in archivio';
  RS_AccNonTrovata = 'Accettazione %d non trovata in archivio';
  RS_RichNonTrovata = 'Richiesta %s non trovata in archivio';
  RS_RISSTUDYNonTrovato = 'Nr. Esame %s non trovato in archivio';

  RS_EsameNonDisponibile = 'Esame non disponibile (referto %d)';
  RS_EsameGiaRefertato = 'Esame %d già refertato';

  RAD_ConfermaSpostaReferti = 'Conferma refertazione separata degli esami selezionati?';

  RS_Msg_ConfRitornaRefertazione = 'Conferma ritorno in esami da refertare ?';
  RS_Msg_ConfRitornaEsecuzione = 'Conferma ritorno in esami da eseguire ?';
  RS_Msg_ConfInDaRefertare = 'Conferma spostamento in esami da refertare ?';
  RS_Msg_CodiceGiaPresente = 'Codice già selezionato!';

  RAD_RefertoNonDefinito = 'Attenzione: il modulo del referto per %s non e'' stato definito.'#13#10'Il referto non può essere creato';
  RAD_TipoRefertoNonDefinito = 'Tipo referto non definito (%d)';
  RAD_PortaSeriale = 'Porta seriale %d non collegabile';

  RAD_ConfermaUscitaPacs = 'Attivare il PACS ?';
  RS_SessoObbligatorio = 'Obbligatorio indicare il sesso del paziente';

  RS_StampaReferto = 'Stampa';
  RS_StampaRefertoHint = 'Stampa referto';
  RS_StampaEConsegna = 'Consegna';
  RS_StampaEConsegnaHint = 'Stampa e consegna';  
  RS_StampaTuttiReferti = 'Stampa di tutti i referti selezionati';
  RS_ListaRefertiConsegnati = 'Lista referti consegnati';
  RS_ConsegnaTuttiReferti = 'Confermi la consegna di tutti i referti selezionati ?';
  RS_Msg_ConfStampaAccPreno = 'Confermi la stampa delle prenotazioni ?';

  RS_PeriodoNonDefinito = 'Periodo di selezione non definito nella Vista dati';

  RS_InizioCreazione = 'lancio creazione cd';
  RS_AccodamentoCD = 'cd in coda per la masterizzazione';
  RS_UtenteNonAbilitatoEseguito = 'Utente non abilitato a dare l''eseguito';
  RS_UtenteNonAbilitatoFirmare = 'Utente non abilitato a firmare un esame';

  RAD_NoNoteReperibilita = 'Attenzione !'#13#10+'Note di Reperibilità non presenti.'+#13#10+
                        'Accedere alla maschera "Gestione Privacy" ed introdurle, ' + #13#10 +
                        'oppure impostare il testo standard in configurazione Farmacia.';

//  RAD_Siss_LogFileCreateError = 'Errore in creazione del file di log';
//  RAD_Siss_LogFileWriteError = 'Errore in scrittura del file di log';  
//  RAD_Siss_LogFileFolderError = 'Impossibile creare la cartella dei log.' + #13#10 + 'Cartella: %';
  RAD_SissWay_ErroreIUP = 'Impossibile ottenere IUP.' + #13#10 + '[%s]';

implementation
uses Forms, Menus, IniFiles,
{$IFDEF TRADUZIONI}
     LocOnFly, KLocales,
{$ENDIF}
     DateUtils, BaseForm, Msgdlgs, Mask, osFastStrings,
     FirmaDigitale2, FirmaDigitale3, FirmaDigitale4,
     crypto, VersInfo, AstaGetIP, AstaStringLine, Variants, cxFilter,
     AstaSmartWait, AstaUtil, IIConsts, Registry, cxRadioGroup,
     ConfermaPswdRep, rsUtils, syQueryForm, Printers, WinTypes, Messages,
{$IFDEF MADEXCEPT}
     madExcept, madTypes, madStrings,
{$ENDIF}
//   ConfiguraAsta,
     ComObj, StdCtrls,
     CxCustomData,cxGridCustomTableView,cxControls,cxGridCustomView,cxFormats,
{$IFDEF NO_IIS}
     IDHTTP,
{$ENDIF}
  Metropolis_GM, {MetropolisDark,}
{$IFNDEF MEDICORNER}
  AssegnaModalita,
{$ENDIF}
  Splash;

{$R *.DFM}
{$R GRID6_ITA.RES}

const
//  NPAR_USRNAM = 'USRNAME';  // Nome parametro con nome utente
//  NPAR_USRPWD = 'USRPWD';   // Nome parametro con password utente
  NPAR_LOCALE = 'LOCAL';  // Lancio su stessa macchina di AstaServer...
  NPAR_PKUSER = 'PKUSER';   // Forza collegamento con pkutente...
  NPAR_CUPUSER = 'CUPUSER';  // Forza come utente cup
  NPAR_USER = 'USER';   // Forza collegamento come utente normale
  NPAR_WEBUPDATE = 'WEBUPDATE'; // Nome del server con IIS che gestisce upgrade applicazione
  NPAR_HOST = 'HOST';   // Nome del computer a cui collegarsi
  NPAR_PORT = 'PORTA';   // numero della porta di collegamento
  NUPD_TEST   = 'UPDTEST';   // Nome parametro per funzionamento di test
  NPAR_COMPUTER = 'COMPUTER';   // Nome parametro con nome del computer
  NPAR_UPGRADE = 'NOUPGRADE';  // Non effettua upgrade automatico
  NPAR_COMPRESS = 'COMPRESS';  // Compressione
  NPAR_DEBUGMODE = 'DEBUGMODE';  // DebugMode
  NPAR_RADIOLOGIA = 'RADIOLOGIA';  // pkreparti della radiologia nella quale si sta cercando di installare l'eseguibile.


type
  TmyAstaClientSocket = class(TAstaClientSocket);

  TcxSchedulerDBStorageAccess = class(TcxSchedulerDBStorage);

{$IFDEF MADEXCEPT}
procedure ExceptionHiddenFilter(const exceptIntf : IMEException;
                          var handled      : boolean);
begin

  if (exceptIntf.exceptObject<>nil) and
     ((exceptIntf.exceptObject is EConvertError) or (exceptIntf.exceptObject is EAbort)) then
     exit;

  if (exceptIntf.exceptObject<>nil) and (exceptIntf.exceptObject is ESocketError) then
     if Application<>nil then
        Application.MessageBox(pchar(MadException(exceptIntf.exceptObject).Message), 'Errore...', MB_ICONERROR)
     else
        MessageBox(0, pchar(MadException(exceptIntf.exceptObject).Message), 'Errore...', MB_ICONERROR);
//     MsgDlg(MadException(exceptObject).Message, '', ktError, [kbOk], dfFirst);

  exceptIntf.BeginUpdate;
  exceptIntf.BugReportHeader.Insert(0,'*** inizio errore ***', '***');
(*
  if (GetCurrentThreadID = MainThreadID) and (Application<>nil) and (Application.MainForm<>nil) and (Application.MainForm is TFMain) then
  begin
       if (TFMain(Application.MainForm).csFormPanel1.Form<>nil) then
           exceptIntf.BugReportSections.Add('Form attiva (hidden):', TFMain(Application.MainForm).csFormPanel1.Form.Name)
       else
           exceptIntf.BugReportSections.Add('Form attiva (hidden):', Application.MainForm.Name);
  end;
*)
  exceptIntf.BugReportSections.Add('utente', gblNomeUtente + ' ('+IntToStr(gblCodUtente)+')');
  exceptIntf.BugReportSections.Add('*** fine errore ***','***');
  exceptIntf.EndUpdate;

  AutoSaveBugReport(exceptIntf.bugReport);
  handled := true;

end;


procedure ExceptionFilter(const exceptIntf : IMEException;
                          var handled      : boolean);
var
   dove: integer;
   ExceptionMessage: string;
   vShow: integer;   // -- 0= no show; 1=show locale; 2=show handler
   vContinue,vLog: boolean;
begin

  exceptIntf.BeginUpdate;
  exceptIntf.BugReportHeader.Insert(0,'*** inizio errore ***', '***');
  exceptIntf.BugReportHeader.Insert(1,'utente: ', gblNomeUtente + ' ('+IntToStr(gblCodUtente)+')');
(*
  if (GetCurrentThreadID = MainThreadID) and (Application<>nil) and (Application.MainForm<>nil) and (Application.MainForm is TFMain) then
  begin
       if (TFMain(Application.MainForm).csFormPanel1.Form<>nil) then
           exceptIntf.BugReportHeader.Insert(2,'Form attiva', TFMain(Application.MainForm).csFormPanel1.Form.Name)
       else
           exceptIntf.BugReportHeader.Insert(2,'Form attiva', Application.MainForm.Name);
  end;
*)
  exceptIntf.BugReportSections.Add('*** fine errore ***','***');
  exceptIntf.EndUpdate;

  if (exceptIntf.ExceptType=etFrozen) then
  begin
     AutoSaveBugReport(exceptIntf.bugReport);
     exit;
  end;

  if (exceptIntf.exceptObject = nil) then exit;

  ExceptionMessage := MadException(exceptIntf.exceptObject).Message;
  vShow := 1;
  vLog := true;
  vContinue := true;

  if (exceptIntf.exceptObject is EAccessViolation) or
     (exceptIntf.exceptObject is EInvalidPointer) or
     (exceptIntf.exceptObject is EAbstractError) or
     (exceptIntf.exceptObject is EInvalidOperation) or
     (exceptIntf.exceptObject is EcxInvalidDataControllerOperation) then
  begin
//     vShow := 3;  // 3=reset applicazione 2=rimane dentro;
     if gbldebugmode then
        vShow := 2
     else
        vShow := 4;  // 4=chiudi applicazione 2=rimane dentro;
  end;

  if (exceptIntf.exceptObject is EDBEditError) or
     (exceptIntf.exceptObject is EcxEditValidationError) then
  begin
     vLog := false;
  end;

  if (frmSplash<>nil) and
     ((exceptIntf.exceptObject is ESocketError) or
      (exceptIntf.exceptObject is EDataBaseError) or
      (exceptIntf.exceptObject is EAstaProtocolError)
     ) then
  begin
     frmSplash.Free;
     frmSplash := nil;
  end;

  if (exceptIntf.exceptObject is ESocketError) then
  begin
     vContinue := gbldebugmode; // false;
//     ExceptionMessage := format(ExceptionMessage+#13#10+'(%s)',[FDMCommon.AstaClientSocket.Address]);
  end;

  if (Pos('List index out of bounds',ExceptionMessage)>0) then
       vShow := 0
{JRT 5488: eliminato
  else if (exceptIntf.exceptObject is RefVocException) then
       vShow := 0
}
  else if ((exceptIntf.exceptObject is EDataBaseError) or (exceptIntf.exceptObject is EAstaProtocolError)) then
  begin

    vShow := 2;

    dove := Pos('ORA-20001',ExceptionMessage);
    if dove>0 then
    begin
       ExceptionMessage := Copy(ExceptionMessage,dove+11,Length(ExceptionMessage)-(dove+10));
       dove := Pos(#10,ExceptionMessage);
       if dove>0 then
          ExceptionMessage := Copy(ExceptionMessage,1,dove-1);
       vLog := false;
       vShow := 1;
    end;

    dove := Pos('ORA-20002',ExceptionMessage);
    if dove>0 then
    begin
       ExceptionMessage := Copy(ExceptionMessage,dove+11,Length(ExceptionMessage)-(dove+10));
       dove := Pos(#10,ExceptionMessage);
       if dove>0 then
          ExceptionMessage := Copy(ExceptionMessage,1,dove-1);
       vLog := true;
       vShow := 1;
    end;

    dove := Pos('ORA-00001',ExceptionMessage);
    if dove>0 then
    begin
       ExceptionMessage := RIS_ErroreUnicita;
       vLog := false;
       vShow := 1;
    end;

    dove := Pos('ORA-02292',ExceptionMessage);
    if dove>0 then
    begin
       dove := Pos('(',ExceptionMessage);
       ExceptionMessage := Copy(ExceptionMessage,dove+1,Length(ExceptionMessage)-dove);
       dove := Pos(')',ExceptionMessage);
       ExceptionMessage := Copy(ExceptionMessage,1,dove-1);
       ExceptionMessage := format(RIS_ErroreForeign,[ExceptionMessage]);
       vLog := false;
       vShow := 1;
    end;

    dove := Pos('(SY001)',ExceptionMessage);
    if dove>0 then
    begin
       ExceptionMessage := Copy(ExceptionMessage,1,dove-1);
       vContinue := false;
       vShow := 3;
    end;

    dove := Pos('(SY002)',ExceptionMessage);
    if dove>0 then
    begin
       ExceptionMessage := Copy(ExceptionMessage,1,dove-1);
       vContinue := false;
       vShow := 4;
    end;

    dove := Pos('(SY003)',ExceptionMessage);
    if dove>0 then
    begin
       ExceptionMessage := Copy(ExceptionMessage,1,dove-1);
       vContinue := false;
       vShow := 4;
    end;

    if (vShow=2) and ((Pos('ORA-03114',ExceptionMessage)>0) or
        (Pos('Not logged on',ExceptionMessage)>0) or
        ((Pos('ORA-03113',ExceptionMessage)>0) and not (Pos('ORA-02050',exceptIntf.bugReport)>0)) or
        (Pos('ORA-12535',ExceptionMessage)>0) or
        (Pos('ORA-12500',ExceptionMessage)>0) or
        (Pos('ORA-12203',ExceptionMessage)>0) or
        (Pos('ORA-01089',ExceptionMessage)>0) or
        (Pos('ORA-01033',ExceptionMessage)>0) or
        (Pos('ORA-01034',ExceptionMessage)>0) or
        (Pos('ORA-01012',ExceptionMessage)>0) or
        (Pos('ORA-12570',ExceptionMessage)>0) or
        (Pos('ORA-12571',ExceptionMessage)>0)) then
    begin
        ExceptionMessage := RS_ServerNonDisponibile;
        vContinue := false;
        vShow := 4;
    end;

  end;

  MadException(exceptIntf.exceptObject).Message := ExceptionMessage;

  if gblDebugMode then
     vShow := 5
  else if vLog then
  begin
{$IFDEF MADEXCEPT_FILE}
     AutoSaveBugReport(exceptIntf.bugReport,exceptIntf);
{$ELSE}
     AutoSendBugReport(exceptIntf.bugReport,exceptIntf.ScreenShot);
{$ENDIF}
  end;

  case vShow of
  0:begin
     handled := true;
    end;
  1,2:begin
     handled := true;
     if not (GetCurrentThreadID = MainThreadID) then
        MessageBox(0, pchar(ExceptionMessage), 'Errore...', MB_ICONERROR)
     else
        MsgDlg(ExceptionMessage, '', ktError, [kbOk], dfFirst);
    end;
  3:begin
     handled := true;
     if not (GetCurrentThreadID = MainThreadID) then
        MessageBox(0, pchar(ExceptionMessage), 'Errore...', MB_ICONERROR)
     else
        if MsgDlg(ExceptionMessage, '', ktError, [kbYes,kbNo], dfFirst)=mrNo then
           vShow := 4;
    end;
  4:begin
     handled := true;
//     if not (GetCurrentThreadID = MainThreadID) then
        MessageBox(0, pchar(RS_AV), 'Errore...', MB_ICONERROR)
//     else
//        MsgDlg(RS_AV, '', ktError, [kbOk], dfFirst);
    end;
  5:begin
      exceptIntf.AutoShowBugReport := True;
      handled := false;
    end;
  end;

  exceptIntf.canContinue    := vContinue;
  if gblDebugMode then
     exceptIntf.AutoClose      := 1
  else
     exceptIntf.AutoClose      := 0;
  exceptIntf.AutoShowBugReport := gblDebugMode;
  case vShow of
  3: RestartApplication;
  4: CloseApplication;
  end;

end;
{$ENDIF}


constructor TAstaSQLThread.Create(ds: TAstaClientDataSet);
begin

  inherited Create(False);

  // ini
  Self.FreeOnTerminate := False;

  // the Query
  Fds := ds;

end;


procedure TAstaSQLThread.Execute;
begin

  inherited;

  try
    // Ejecutar la consulta
    Self.Fds.syRefresh;
  except
    // Error al ejecutar
    raise;
  end;
end;

(*
function ForceForegroundWindow(hwnd: THandle): Boolean;
const
  SPI_GETFOREGROUNDLOCKTIMEOUT = $2000;
  SPI_SETFOREGROUNDLOCKTIMEOUT = $2001;
var
  ForegroundThreadID: DWORD;
  ThisThreadID: DWORD;
  timeout: DWORD;
begin
  if IsIconic(hwnd) then ShowWindow(hwnd, SW_RESTORE);

  if GetForegroundWindow = hwnd then Result := True
  else
  begin
    // Windows 98/2000 doesn't want to foreground a window when some other
    // window has keyboard focus

    if ((Win32Platform = VER_PLATFORM_WIN32_NT) and (Win32MajorVersion > 4)) or
      ((Win32Platform = VER_PLATFORM_WIN32_WINDOWS) and
      ((Win32MajorVersion > 4) or ((Win32MajorVersion = 4) and
      (Win32MinorVersion > 0)))) then
    begin
      // Code from Karl E. Peterson, www.mvps.org/vb/sample.htm
      // Converted to Delphi by Ray Lischner
      // Published in The Delphi Magazine 55, page 16

      Result := False;
      ForegroundThreadID := Windows.GetWindowThreadProcessID(GetForegroundWindow, nil);
      ThisThreadID := Windows.GetWindowThreadPRocessId(hwnd, nil);
      if AttachThreadInput(ThisThreadID, ForegroundThreadID, True) then
      begin
        BringWindowToTop(hwnd); // IE 5.5 related hack
        SetForegroundWindow(hwnd);
        AttachThreadInput(ThisThreadID, ForegroundThreadID, False);
        Result := (GetForegroundWindow = hwnd);
      end;
      if not Result then
      begin
        // Code by Daniel P. Stasinski
        SystemParametersInfo(SPI_GETFOREGROUNDLOCKTIMEOUT, 0, @timeout, 0);
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, TObject(0),
          SPIF_SENDCHANGE);
        BringWindowToTop(hwnd); // IE 5.5 related hack
        SetForegroundWindow(hWnd);
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, TObject(timeout), SPIF_SENDCHANGE);
      end;
    end
    else
    begin
      BringWindowToTop(hwnd); // IE 5.5 related hack
      SetForegroundWindow(hwnd);
    end;

    Result := (GetForegroundWindow = hwnd);
  end;
end; { ForceForegroundWindow }
*)

function TFDMCommon.SoloNome(const name: string): string;
var
   dove: integer;
begin
   dove := Pos('.',name);
   if dove>0 then
      result := Copy(name,1,dove-1)
   else
      result := name;
end;


function TFDMCommon.LockRecord( pkt,user_id,tipo: integer; stato: integer = -1): boolean;
var
  xMsg: string;
  res: integer;
begin

    PutLock.Parambyname('p_user').AsInteger := user_id;
    PutLock.Parambyname('p_pkt').AsInteger := pkt;
    case tipo of
    1: begin
        PutLock.Parambyname('p_tablename').AsString := 'TRIAGE';
        xMsg := RAD_RefertoLockato;
       end;
    2: begin
        PutLock.Parambyname('p_tablename').AsString := 'ASSISTIBILI';
        xMsg := RAD_AnagraficaLockata;
       end;
    3: begin
        PutLock.Parambyname('p_tablename').AsString := 'IMPEGNATIVE';
        xMsg := RAD_RefertoLockato;
       end;
    end;
    PutLock.Parambyname('p_workstation').AsString := NomeComputer;
    if stato>=0 then
       PutLock.Parambyname('p_stato').AsInteger := stato
    else
       PutLock.Parambyname('p_stato').Clear;
    PutLock.ExecSQL;
    res := PutLock.Parambyname('result').AsInteger;
    if res>=0 then
    begin
       MsgDlgPos( format(xMsg,[PutLock.Parambyname('p_LockUserName').AsString,
                                             PutLock.Parambyname('p_workstation').AsString,
                                             PutLock.Parambyname('p_workdescr').AsString]), '', ktWarning, [kbOk], dfFirst );
       result := false;
    end
    else if res=-2 then
    begin
       MsgDlgPos( RAD_StatoNonCoerente, '', ktError, [kbOk], dfFirst );
       result := false;
    end
    else
       result := true;

end;


function TFDMCommon.UnLockRecord( pkt,user_id,tipo: integer ): boolean;
begin
    ReleaseLock.Parambyname('p_user').AsInteger := user_id;
    ReleaseLock.Parambyname('p_pkt').AsInteger := pkt;
    case tipo of
    1: ReleaseLock.Parambyname('p_tablename').AsString := 'TRIAGE';
    2: ReleaseLock.Parambyname('p_tablename').AsString := 'ASSISTIBILI';
    3: ReleaseLock.Parambyname('p_tablename').AsString := 'IMPEGNATIVE';    
    end;
    ReleaseLock.ExecSQL;
    result := true;

end;


function TFDMCommon.PadAN( xField: TField ): string;
begin
   if LeggiPostoLavoroPAD_ACCNR.AsInteger=0 then
      result := xField.AsString
   else
      result := format('%'+LeggiPostoLavoroPAD_ACCNR.AsString+'.'+LeggiPostoLavoroPAD_ACCNR.AsString+'d',[xField.AsInteger]);
end;


procedure TFDMCommon.ResendAlert;
var
  ParamList: TAstaParamList;
  z,i: integer;
  xAlert: TKSAstaEventClient;
  xItem: ToelItem;
begin
  for z:=0 to FAlertList.Count-1 do
  begin
    xAlert := TKSAstaEventClient(FAlertList[z]);
    for i:=1 to xAlert.DataSets.Count do
    begin
        xItem := ToelItem(xAlert.DataSets[i-1]);
        ParamList := TAstaParamList.Create;
        try
           if xitem.xpkrep=0 then
              ParamList.FastAdd('pkreparti', gblpkrep)
           else
              ParamList.FastAdd('pkreparti', xitem.xpkrep);
           ParamList.FastAdd('pkuser', gblCodUtente);
           ParamList.FastAdd('tabella', ToelItem(xAlert.DataSets[i-1]).NomeTable);
           AstaClientSocket.SendCodedParamList(1002, ParamList);
        finally
          ParamList.Free;
        end;
    end;
  end;
end;

procedure TFDMCommon.AddAlert( xAlert: TKSAstaEventClient );
var
  ParamList: TAstaParamList;
  i: integer;
  xItem: ToelItem;
begin
  FAlertList.Add( xAlert );
  for i:=1 to xAlert.DataSets.Count do
  begin
      xItem := ToelItem(xAlert.DataSets[i-1]);
      ParamList := TAstaParamList.Create;
      try
       if xitem.xpkrep=0 then
          ParamList.FastAdd('pkreparti', gblpkrep)
       else
          ParamList.FastAdd('pkreparti', xitem.xpkrep);
         ParamList.FastAdd('pkuser', gblCodUtente);
         ParamList.FastAdd('tabella', xitem.NomeTable);
         AstaClientSocket.SendCodedParamList(1002, ParamList);
      finally
        ParamList.Free;
      end;
  end;
end;


procedure TFDMCommon.DeleteAlert( xAlert: TKSAstaEventClient );
var
  dove: integer;
  ParamList: TAstaParamList;
  i: integer;
  xItem: ToelItem;
begin
  if (csDestroying in Componentstate) or not AstaClientSocket.Active then
     exit;
  dove := FAlertList.IndexOf(xAlert);
  if dove>=0 then
  begin
      FAlertList.Delete(dove);
      for i:=1 to xAlert.DataSets.Count do
      begin
          xItem := ToelItem(xAlert.DataSets[i-1]);
          ParamList := TAstaParamList.Create;
          try
             ParamList.FastAdd('pkreparti', xItem.xpkrep);
             ParamList.FastAdd('pkuser', gblCodUtente);
             ParamList.FastAdd('tabella', xItem.NomeTable);
             AstaClientSocket.SendCodedParamList(1003, ParamList);
          finally
            ParamList.Free;
          end;
      end;
  end;
end;


procedure TFDMCommon.ApriControlloExplorer;
begin
  case LeggiPostoLavoroCLIENTPACS.AsInteger of
  1:  FIE := TsyIE.Create(Application);
  2:  begin
        FShell := TsyShellEx.Create(nil);
      end;
  end;
  Vuoto(tptLogin);
end;

procedure TFDMCommon.SetSyncroServer(Value: string);
begin
   if (lstpar<>nil) and (lstpar.IndexOfName(NPAR_HOST)=-1) then
      FSyncroServer := Value;
end;

function TFDMCommon.GetSyncroServer: string;
var
  temp: string;
begin
   if (lstpar<>nil) and (lstpar.IndexOfName(NPAR_HOST) >= 0) then
      temp := lstpar.Values[NPAR_HOST]
   else
      temp := FSyncroServer;

   if FServerAttivo=1 then
   begin
        result := temp;
   end
   else begin
        if FSyncroServer2='' then
           result := temp
        else
           result := FSyncroServer2;
   end;

end;

procedure TFDMCommon.SetSyncroPorta(Value: integer);
begin
  if (lstpar<>nil) and (lstpar.IndexOfName(NPAR_PORT) >= 0) then
     FSyncroPorta := StrToInt(lstpar.Values[NPAR_PORT])
  else
     FSyncroPorta := 9000;
end;

function TFDMCommon.GetSyncroPorta: integer;
begin

   if FServerAttivo=1 then
   begin
       if (lstpar<>nil) and (lstpar.IndexOfName(NPAR_PORT) >= 0) then
          result := StrToInt(lstpar.Values[NPAR_PORT])
       else
          result := FSyncroPorta;
   end
   else begin
       if (lstpar<>nil) and (lstpar.IndexOfName(NPAR_PORT) >= 0) then
          result := StrToInt(lstpar.Values[NPAR_PORT])
       else
          result := FSyncroPorta2;
   end;

end;

procedure TFDMCommon.SwitchAsta;
begin
   if FServerAttivo=1 then
      FServerAttivo:=2
   else
      FServerAttivo:=1;
   AstaClientSocket.Active := false;
   AstaClientSocket.Address := SyncroServer;
   AstaClientSocket.Port := SyncroPorta;
   AstaClientSocket.FastConnectprimative(true, false, false);
end;

function TFDMCommon.GetDipartimento(xrep,xserv: integer): integer; // dipartimento del reparto
begin
  if FDMCommon.LeggiPostoLavoroCHK_SLITTA_REP.AsInteger=0 then
  begin
    DipxRep.Parambyname('reparti_fk').AsInteger := xrep;
    DipxRep.syRefresh;
    if DipxRep.IsEmpty then
       result := -1
    else begin
       result := DipxRepDIPARTIMENTI_FK.AsInteger;
    end;
  end
  else begin
    DipxServ.Parambyname('servizi_fk').AsInteger := xserv;
    DipxServ.syRefresh;
    if DipxServ.IsEmpty then
       result := -1
    else begin
       result := DipxServDIPARTIMENTI_FK.AsInteger;
    end;
  end;
end;

function TFDMCommon.syIntStr(const xbarcode: string): string;
begin
  try
     if FDMCommon.LeggiPostoLavoroPAD_ACCNR.AsInteger=0 then
        result := IntToStr(StrToInt(Trim(xbarcode)))
     else
        result := format('%'+FDMCommon.LeggiPostoLavoroPAD_ACCNR.AsString+'.'+FDMCommon.LeggiPostoLavoroPAD_ACCNR.AsString+'d',[StrToIntDef(Trim(xbarcode),0)]);
  except
     result := '';
  end;
end;


function TFDMCommon.GetNomeWebUpdate: string;
begin
   if (lstpar<>nil) and (lstpar.IndexOfName(NPAR_WEBUPDATE) >= 0) then
      result := lstpar.Values[NPAR_WEBUPDATE]
   else if FNomeWebUpdate='' then
      result := SyncroServer
   else
      result := FNomeWebUpdate;
end;

procedure TFDMCommon.SetNomeWebUpdate(Value: string);
begin
   if (lstpar<>nil) and (lstpar.IndexOfName(NPAR_WEBUPDATE)=-1) then
      FNomeWebUpdate := Value;
end;


procedure TFDMCommon.ShowProgress(value: integer);
begin
  if frmSplash<>nil then
     frmSplash.Progress := value;

end;


constructor TFDMCommon.Create( AOwner: TComponent );
var
  cnt: integer;
begin

  FIsUserLoaded := False;
  FReadClientPacs := false;
  FClientPacs := false;

  FCompressione := false;
  FIE := nil;

{$IFDEF MADEXCEPT}
  MESettings.BugReportFile := ChangeFileExt(Application.ExeName,'.erx');
{$ENDIF}

  DateSeparator := '/';
  ShortDateFormat := 'dd/MM/yyyy';
  LongDateFormat := 'dddd d MMMM yyyy';

  ShowProgress(10);

  FAlertList := TList.Create;

	{ Determinazione parametri }
  lstpar := TStringList.Create;
  for cnt := 1 to ParamCount do
      lstpar.Add(ParamStr(cnt));

  updtest := (lstpar.IndexOf(NUPD_TEST) >= 0);

  gblDebugMode := (lstpar.IndexOf(NPAR_DEBUGMODE) >= 0);
{
  if gblDebugMode and Assigned(frmSplash) then
  begin
    frmSplash.Free;
    frmSplash := nil;
  end;
}
  inherited;

  ShowProgress(30);

end;

destructor TFDMCommon.Destroy;
begin
//   AstaClientSocket.CloseTheSocket;
//   SetDoubleClickTime(FoldDblClickTime);

   FAlertList.Free;
   lstpar.Free;
   inherited;
end;

procedure TFDMCommon.Loaded;
begin
  inherited;

  ShowProgress(20);


end;

function TFDMCommon.xStrToTime(const sTime: string): TDateTime;
var
  oldTimeSep: Char;
begin
  oldTimeSep := TimeSeparator;
  TimeSeparator := '.';
  result := StrToTime( sTime );                   
  TimeSeparator := oldTimeSep;
end;


function TFDMCommon.TimeToItem(const x: string): integer;
var
  Hour, Min, Sec, MSec: Word;
begin
  DecodeTime(xStrToTime(x), Hour, Min, Sec, MSec );
  result := ((Hour * 60) + Min);  //  div DBPlanner.Display.DisplayUnit;
{
  if newstart<>DBPlanner.Display.DisplayStart then
     DBPlanner.Display.DisplayStart := newstart;
}
end;

{
procedure TFDMCommon.DecodZoom(x: integer; var w,z: integer);
begin
  case x of
  0: begin
       w := FDimNormale;
       z := 0;
     end;
  1: begin
      w := FDimNormale;
      z := FDimAllargata;
     end;
  else begin
       w := FDimAllargata;
       z := 0;
     end;
  end;
end;
}

function TFDMCommon.ColorItem(x: integer; incompl: boolean): TColor;
begin
  case x of
  10: begin
       result := xColori[7];  // in fase di prenotazione
     end;
  20: begin
       if incompl then
          result := xColori[4]  // prenotazione incompleta
       else
          result := xColori[0];  // prenotato
     end;
  100: begin
       result := xColori[9];  // accettato amministrativo
     end;
  120: begin
       result := xColori[1];  // da eseguire
     end;
  110: begin
       result := xColori[8];  // da infondere
     end;
  130: begin
       result := xColori[2];  // eseguito
     end;
  140..190: begin
       result := xColori[3];  // refertato
     end;
  50: begin
       result := xColori[5];  // periodo bloccato
     end;
  99: begin
       result := xColori[6];  // in spostamento
     end;
  else begin
       result := xColori[5];  // clNone;
     end;
  end;
end;

function TFDMCommon.ItemHint(xstato: integer): string;
begin
  case xstato of
  10: begin
       result := xDescColori[7];  // in fase di prenotazione
     end;
  -20,20: begin
       if xstato=-20 then
          result := xDescColori[4]  // prenotazione incompleta
       else
          result := xDescColori[0];  // prenotato
     end;
  100: begin
       result := xDescColori[9];  // accettato amministrativo
     end;
  120: begin
       result := xDescColori[1];  // da eseguire
     end;
  110: begin
       result := xDescColori[8];  // da infondere
     end;
  130: begin
       result := xDescColori[2];  // eseguito
     end;
  140..190: begin
       result := xDescColori[3];  // refertato
     end;
  50: begin
       result := xDescColori[5];  // periodo bloccato
     end;
  99: begin
       result := xDescColori[6];  // in spostamento
     end;
  else begin
       result := xDescColori[5];  // clNone;
     end;
  end;
end;

function TFDMCommon.GetColor(BColor, EColor: TColor; N, H: Integer): TColor;
begin
  Result := RGB(Trunc(GetRValue(BColor) + (GetRValue(EColor)-GetRValue(BColor)) * N / H),
    Trunc(GetGValue(BColor) + (GetGValue(EColor)-GetGValue(BColor)) * N / H),
    Trunc(GetBValue(BColor) + (GetBValue(EColor)-GetBValue(BColor)) * N / H));
end;
(*
function TFDMCommon.SetupConfiguraAsta: boolean;
begin
      FConfiguraAsta := TFConfiguraAsta.Create(nil);
      try
         FConfiguraAsta.cxAsta1.Text := FSyncroServer; //SyncroServer;
         FConfiguraAsta.cxPorta1.Value := FSyncroPorta; //SyncroPorta;
         FConfiguraAsta.cxAsta2.Text := FSyncroServer2; //SyncroServer2;
         FConfiguraAsta.cxPorta2.Value := FSyncroPorta2; //SyncroPorta2;
         FConfiguraAsta.cxUpdate.Text := NomeWebUpdate;
         FConfiguraAsta.cxCompressione.Checked := Compressione;

        result := (FConfiguraAsta.ShowModal=mrOk);
        if result then
        begin
           FSyncroServer := FConfiguraAsta.cxAsta1.Text;
           FSyncroPorta := FConfiguraAsta.cxPorta1.Value;
           FSyncroServer2 := FConfiguraAsta.cxAsta2.Text;
           FSyncroPorta2 := FConfiguraAsta.cxPorta2.Value;
           NomeWebUpdate := FConfiguraAsta.cxUpdate.Text;
           Compressione  := FConfiguraAsta.cxCompressione.Checked;
           rsPropSaver1.SaveValues;
           rsStorage1.Save;
        end;
      finally
        FConfiguraAsta.Free;
      end;
end;
*)
procedure TFDMCommon.FDMCommonCreate(Sender: TObject);
var
  i: integer;
  verInfo: TVersionInfoResource;
  avanti: boolean;
  sURL: string;
{$IFDEF NO_IIS}
  sNewVersion: string;
  sHost, sPort: string;
  sidHTTP: TIdHTTP;
  T: TStringStream;
  buf: TStringList;

  function url_encode(const url:string):string;
    var
    i: integer;
  begin
    result:='';
    for i:=1 to length(url) do begin
      case url[i] of
      'a'..'z','A'..'Z','0'..'9','/','.','&','-'
      (* maybe some more are allowed *)
      : result:=result+ url[i];
      else result:=result+'%'+uppercase(inttohex(ord(url[i]),2));
    end;
    end;
  end;

  function PortTCP_IsOpen(dwPort : Word; ipAddressStr:AnsiString) : boolean;
  var
    client : sockaddr_in;
    sock   : Integer;

    ret    : Integer;
    wsdata : WSAData;
  begin
   Result:=False;
   ret := WSAStartup($0002, wsdata); //initiates use of the Winsock DLL
    if ret<>0 then exit;
    try
      client.sin_family      := AF_INET;  //Set the protocol to use , in this case (IPv4)
      client.sin_port        := htons(dwPort); //convert to TCP/IP network byte order (big-endian)
      client.sin_addr.s_addr := inet_addr(PAnsiChar(ipAddressStr));  //convert to IN_ADDR  structure
      sock  :=socket(AF_INET, SOCK_STREAM, 0);    //creates a socket
      Result:=connect(sock,client,SizeOf(client))=0;  //establishes a connection to a specified socket
    finally
    WSACleanup;
    end;
  end;
{$ENDIF}

begin

  if (Screen.PixelsPerInch>96) then
      FImgList := cxImageNavigator32
  else
      FImgList := cxImageNavigator16;


  for i:=0 to ComponentCount-1 do
     if Components[i] is TcxEditRepositoryImageComboBoxItem then
        TcxEditRepositoryImageComboBoxItem(Components[i]).Properties.Images := FImgList;

  gblSkinName := 'Metropolis';

  AstaClientSocket.SetSmartWaitTickLimit(120000);
  AstaMultiSite.SetSmartWaitTickLimit(120000);

  if not gblDebugMode and OneInstance1.PrecAttivato then exit;

  FirmaDig := nil;
  FAllow_Overbooking := false;
  FTipo_Smartcard := 0;
  FServerAttivo := 1;
//  FoldDblClickTime := GetDoubleClickTime;
//  SetDoubleClickTime(250);

{$IFDEF TRADUZIONI}
  if LocalizerOnFly.LangList.Count>0 then
  begin
    for i:=0 to LocalizerOnFly.LangList.Count-1 do
    begin
       if LocalizerOnFly.CurrentLocale=LocalizerOnFly.LangList[i].Locale then
       begin
          if LocalizerOnFly.CurrentLocale<>LocalizerOnFly.NativeLocale then
          begin
             LocalizerOnFly.SwitchTo(LocalizerOnFly.CurrentLocale);
             SetThreadLocale(LocalizerOnFly.CurrentLocale);
             GetFormatSettings;
          end;
       end;
    end;
    gbllingua := CountryISOCodeByLocale(LocalizerOnFly.CurrentLocale);
  end
  else
{$ENDIF}
  begin
     gbllingua := 'IT';
  end;

  cxLocalizer1.Active:= True;
  cxLocalizer1.Locale:= 1040;

  EsamiPreno := nil;  // TAstaCustomDataset.Create(nil);
  FInChiusura := false;

  if (lstpar.IndexOf(NPAR_LOCALE)>=0) then
     AstaSmartWait.aLocal := true;

  application.helpfile := changefileext(application.exename, '.hlp');
  LongTimeFormat := 'hh.nn';

  verInfo := TVersionInfoResource.KSCreate( Application.ExeName );
  try
  xversione := verInfo.FileVersion.AsString;
  except
    {per non visualizzare errori dei progetti che non hanno numero di versione}
    xversione := '';
  end;
  verInfo.Free;

  FConnessioneInterna := true;
  FPassPhrase := '';

  dxSkinController.SkinName := gblSkinName;
  dxLayoutSkinLookAndFeel1.LookAndFeel.SkinName := gblSkinName;
  {$IFDEF VIRTUALUIx}
  dxSkinController.UseImageSet := imsAlternate;
  {$ENDIF}

  try

  ShowProgress(40);

  gblpkrep := -1;
  gblpkserv := -1;
  gblMultiServ := false;
//  gblservref := -1;
  gblpkrepps := -1;
  gblpkservps := -1;
  gblMedRefertante := -1;

  gblTipoLogin := 0;
  gblospedale := '';      // codice ospedale
  gblore_riapri := 0;
  gblTipo_Preno := 0;     // telefonica
  gblfirmainst := False;
  gblModTecnicoEseguito := false;
  gblpkworkstation := -1;
//  gblRefVocItaliana := 'c:\Program Files\Mve';
//  gblRefVocTedesca  := 'c:\Program Files\Mve';
//  gblCodUtente := 0;
  gblFunzione  := -1;
  gblcodfisc := '';
  gblDescrServizio := '';

//  gblNomeUtente := '';
  gblViewReferti := true;
  gblViewImmagini:= true;
  gblForzaBlocchi:= false;
  gblEstrazioneDati := false;
  gblUserCup := false;
  gblEseguiEsami := true;
  gblSpostaEsami := true;

  if lstpar.IndexOfName(NPAR_COMPUTER) >= 0 then
  begin
    FNomeComputer := lstpar.Values[NPAR_COMPUTER];
  end;;

  ShowProgress(45);
{
  if (gblSkinName<>'') then
     if (gblColorName<>'') then
        dxLayoutSkinLookAndFeel1.ItemOptions.CaptionOptions.TextColor := StringToColor(gblColorName)
     else
        dxLayoutSkinLookAndFeel1.ItemOptions.CaptionOptions.TextColor := clDefault;
  ShowProgress(50);
}
  FDoppioMonitor := (Screen.Monitorcount>1) or gblDebugMode;

  if FDoppioMonitor then
  begin
    if ScegliMonitor then
    begin
      i:=-1;
      repeat
        inc(i);
      until (i=Screen.Monitorcount) or Screen.Monitors[i].Primary;
      if (i=Screen.Monitorcount) then
         i := 0;
      xWorkAreaRect := Screen.Monitors[i].WorkAreaRect;
    end
    else begin
      i:=-1;
      repeat
        inc(i);
      until (i=Screen.Monitorcount) or Screen.Monitors[i].Primary;
      if (i=Screen.Monitorcount) then
         i := 0
      else if (i=Screen.Monitorcount-1) then
         i := 0
      else
         inc(i);
      xWorkAreaRect := Screen.Monitors[i].WorkAreaRect;
    end;
  end
  else
    xWorkAreaRect := Screen.Monitors[0].WorkAreaRect;

  ShowProgress(55);

  rsStorage1.Load;
  rsPropSaver1.LoadValues;

  if Compressione or (lstpar.IndexOf(NPAR_COMPRESS) >= 0) then
  begin
     AstaClientSocket.Compression := acAstaZLib;
  end
  else begin
     AstaClientSocket.Compression := acNoCompression;
  end;

  if SyncroServer='' then
  begin

     avanti := False; //SetupConfiguraAsta;

     if not avanti then
     begin
       Application.Terminate;
       Application.ProcessMessages;
       exit;
     end;
  end;

  AstaClientSocket.Address := SyncroServer;
  AstaClientSocket.Port := SyncroPorta;

//  ShowText(SyncroServer+':'+IntToStr(SyncroPorta));

(*
    if (lstpar.IndexOf(NPAR_UPGRADE)=-1) then
    begin

{$IFDEF NO_IIS}
      sURL := Format('http://%s/pls/UTILS/document_api.get_updateinf?app=%s&wks=%s&ver=%s',
        [NomeWebUpdate, UpperCase(SoloNome(ExtractFileName(Application.ExeName))), url_encode(GetTheComputerName),
        url_encode(xversione) ]);

      WebUpdate1.ExtractCAB := True;
      WebUpdate1.URL := sURL;
      WebUpdate1.ForceUpdate := False;
      WebUpdate1.UpdateType := httpUpdate;

      sURL := Format('http://%s/pls/UTILS/document_api.get_newversion?app=%s&wks=%s',
        [NomeWebUpdate, UpperCase(SoloNome(ExtractFileName(Application.ExeName))), url_encode(GetTheComputerName)]);

      if Pos(':', NomeWebUpdate) > 0 then
      begin
        sHost := Copy(NomeWebUpdate,1,Pos(':', NomeWebUpdate)-1);
        sPort := Trim(Copy(NomeWebUpdate,Pos(':', NomeWebUpdate)+1, 5));
      end
      else
      begin
        sHost := NomeWebUpdate;
        sPort := '80';
      end;

      sidHTTP := TIdHTTP.Create(Self);
      buf := TStringList.Create;
      T := TStringStream.Create('');
      try
        try
          sidHTTP.Get(sURL, T);
        except
          // collegamento con il server non avvenuto
          WebUpdate1Status(self, Format(RIS_WebUpdateNonRiuscito,[sURL]),0,0);
        end;
        if Assigned(T) then
        begin
          buf.Text := Trim(T.DataString);
          sNewVersion := BMStringReplace(buf.Values['newversion'],',','.',[]);
        end;
      finally
        FreeAndNil(T);
        FreeAndNil(buf);
        FreeAndNil(sidHTTP);
      end;

      if (sNewVersion <> '') and (sNewVersion <> xversione) then
      begin
        WebUpdate1.DoUpdate(True);
      end;

{$ELSE}

      sURL := format('http://%s/%s.inf',[NomeWebUpdate,SoloNome(ExtractFileName(Application.ExeName))]);
      WebUpdate1.ExtractCAB := True;
      WebUpdate1.URL := sURL;
      WebUpdate1.ForceUpdate := False;
      WebUpdate1.UpdateType := httpUpdate;
      WebUpdate1.DoUpdate(True);
//      WebUpdate1.DoThreadUpdate;

{$ENDIF}

      Application.ProcessMessages;
    end;

    WebUpdate1Status(self, AstaClientSocket.Address+':'+IntToStr(AstaClientSocket.Port),0,0);

  ShowProgress(56);
*)
  SelectSkin(0);

  AstaClientSocket.FastConnectprimative(true, false, false);

  except
     on E: Exception do
        raise;
  end;

end;

procedure TFDMCommon.WebUpdate1AppDoClose(Sender: TObject);
begin
  Application.Terminate;
end;


procedure TFDMCommon.CaricaDefault;
begin
  xDefFontName := DEF_FONT_NAME;
  hMinConEsami := 55 * 2;
  hMinSenzaEsami := 40 * 2;

  qCaricaColori.syRefresh;
  while not qCaricaColori.Eof do
  begin
    if (qCaricaColoriPKSET_COLORI.AsInteger>0) and (qCaricaColoriPKSET_COLORI.AsInteger<=10) then
    begin
       xColori[qCaricaColoriPKSET_COLORI.AsInteger-1] := qCaricaColoriCOLORE.AsInteger;
       xDescColori[qCaricaColoriPKSET_COLORI.AsInteger-1] := qCaricaColoriELEMENTO.AsString;
    end;
    qCaricaColori.Next;
  end;
  qCaricaColori.Close;
end;


function TFDMCommon.GetPassPhrase: string;
begin
  if (FPassPhrase='') and not gblSpecializ then
  begin
     syInputQuery('Firma digitale', 'PIN', {cxEditStyleController1,} FPassPhrase, true);
     Application.ProcessMessages;
  end;
  result := FPassPhrase;
end;

procedure TFDMCommon.SetPassPhrase(Value: string);
begin
  FPassPhrase := Value;
end;

function TFDMCommon.GetStampanteNormale: string;
var
  OldPrinter: integer;
begin
  if not LeggiPostoLavoroPRINTER1.IsNull and (Printer.Printers.IndexOf(LeggiPostoLavoroPRINTER1.AsString)>=0) then
     result := LeggiPostoLavoroPRINTER1.AsString
  else begin
    try
       OldPrinter := Printer.PrinterIndex;
    except
       OldPrinter := -1;
    end;
     if OldPrinter<>-1 then
        result := Printer.Printers[OldPrinter]
     else
        result := '';
  end;
end;

function TFDMCommon.GetIndexStampanteNormale: integer;
begin
  result := Printer.Printers.IndexOf(StampanteNormale);
end;

function TFDMCommon.GetStampanteEtichette: string;
var
  OldPrinter: integer;
begin
  if not LeggiPostoLavoroPRINTER2.IsNull and (Printer.Printers.IndexOf(LeggiPostoLavoroPRINTER2.AsString)>=0) then
     result := LeggiPostoLavoroPRINTER2.AsString
  else begin
    try
       OldPrinter := Printer.PrinterIndex;
    except
       OldPrinter := -1;
    end;
     if OldPrinter<>-1 then
        result := Printer.Printers[OldPrinter]
     else
        result := '';
  end;
end;

function TFDMCommon.GetIndexStampanteEtichette: integer;
begin
  result := Printer.Printers.IndexOf(StampanteEtichette);
end;

(*
function TFDMCommon.GetRegistryData(RootKey: HKEY; Key, Value: string): variant;
var
  Reg: TRegistry;
  RegDataType: TRegDataType;
  DataSize, Len: integer;
  s: string;
label cantread;
begin
  Reg := nil;
  try
    Reg := TRegistry.Create(KEY_QUERY_VALUE);
    Reg.RootKey := RootKey;
    if Reg.OpenKeyReadOnly(Key) then begin
      try
        RegDataType := Reg.GetDataType(Value);
        if (RegDataType = rdString) or
           (RegDataType = rdExpandString) then
          Result := Reg.ReadString(Value)
        else if RegDataType = rdInteger then
          Result := Reg.ReadInteger(Value)
        else if RegDataType = rdBinary then begin
          DataSize := Reg.GetDataSize(Value);
          if DataSize = -1 then goto cantread;
          SetLength(s, DataSize);
          Len := Reg.ReadBinaryData(Value, PChar(s)^, DataSize);
          if Len <> DataSize then goto cantread;
          Result := s;
        end else
cantread:
          raise Exception.Create(SysErrorMessage(ERROR_CANTREAD));
      except
        s := ''; // Deallocates memory if allocated
        Reg.CloseKey;
        raise;
      end;
      Reg.CloseKey;
    end else
      raise Exception.Create(SysErrorMessage(GetLastError));
  except
    Reg.Free;
    raise;
  end;
  Reg.Free;
end;
*)

function TFDMCommon.GetClientPacs: boolean;
//var
//  Version: string;
begin

  if not FReadClientPacs then
  begin
    if Pacs then
    begin
{
      try
         Version := GetRegistryData(HKEY_CURRENT_USER,'\Software\Fuji Medical Systems USA\Synapse\Workstation', 'InstalledVersion');
      except
         Version := '';
      end;
      FClientPacs := (Version<>'');
}
      FClientPacs := (LeggiPostoLavoroCLIENTPACS.AsInteger>0);
    end;
    FReadClientPacs := true;
  end;

  result := FClientPacs;

end;

function TFDMCommon.GetCePacs: boolean;
begin
    result := not LeggiPostoLavoroPACS_FK.IsNull and (LeggiPostoLavoroPACS_FK.AsInteger>0);
end;

function TFDMCommon.GetIsUserCup: boolean;
begin
  result := (gblUserCup or (lstpar.IndexOf(NPAR_CUPUSER)>=0)) and (FDMCommon.LeggiPostoLavoroCONDIVIDI_AGENDE.AsInteger>0);
end;

function TFDMCommon.GetUserModAgende: boolean;
begin
  result := (gblUserIsAdmin or gblSuperUser or gblForzaBlocchi) and not FDMCommon.IsUserCup;
end;

{*------------------------------------------------------------------------------
  1. Apre il file di errori contenuto nella proprietà BugReportFile di MESettings
  (it4med.erx) e cerca la stringa "*** inizio errore ***".
  2. Salva tutto il contenuto, fino a "*** fine errore ***", in una variabile.
  3. Esegue un Insert nella tabella KSERRORI tramite l'oggetto QyErrori
  4. Cancella il BugReportFile dal filesystem della PdL

------------------------------------------------------------------------------*}
procedure TFDMCommon.LeggiErrori;
var
  esci: boolean;
  OldShortDateFormat: string;
  OldShortTimeFormat: string;
  OldDateSeparator: char;
  OldTimeSeparator: char;
	S: string;
  StrList1: TStringList;
  BS: TMemoryStream;
  tF: TextFile;
//  Buffer : Pointer;
//  iBytesRead : integer;
  xUserId: string;
  dove,finoa: integer;

  function EstraiValore(const cosa,dadove: string): string;
  var
     dove,fine: integer;
  begin
     dove := Pos(cosa,dadove);
     if dove>0 then
     begin
        fine := Pos(#13+#10,Copy(dadove,dove,length(dadove)-dove+1));
        result := Copy(dadove,dove+length(cosa),fine-length(cosa)-1);
     end
     else
        result := '';
  end;

begin

{-- caricamento file errori in tabelle di sistema --}

{$IFDEF MADEXCEPT_FILE}
if FileExists(MESettings.BugReportFile) and not gblDebugMode then
begin

 	StrList1 := TStringList.Create;
 	BS := TMemoryStream.Create;

	try

     QyErrori.openNoFetch;
     AssignFile(tF,MESettings.BugReportFile);
     Reset(tF);

     try

     while not Eof(tF) do  // and (S='[Errore]') do
     begin

         {-- mi porto sulla prima riga con [Errore] --}
        repeat
           ReadLn(tF,S);
        until Eof(tF) or ((Length(S)>=21) and (Copy(S,1,21)='*** inizio errore ***'));

        if Eof(tF) then break;

       	  StrList1.Clear;
          BS.Clear;
          repeat
             ReadLn(tF,S);
             esci := Eof(tF) or ((Length(S)>=19) and (Copy(S,1,19)='*** fine errore ***'));
             if not esci then
                StrList1.Add( S );
          until esci;

          StrList1.SaveToStream( BS );
          BS.Seek( 0, soFromBeginning );

          QyErrori.Insert;
          if Pos('hidden:',StrList1.Text)>0 then
             QyErroriTIPO_ERRORE.AsInteger := 2
          else
             QyErroriTIPO_ERRORE.AsInteger := 0;
          QyErroriNomeAp.AsString := Uppercase(ExtractFileName(Application.ExeName));
          QyErroriversione.AsString := Trim(EstraiValore('version               :',StrList1.Text));
          xUserId := EstraiValore('utente: ',StrList1.Text);
          if Pos('(',xUserId)>0 then
          begin
             dove := Pos('(',xUserId)+1;
             finoa := Pos(')',xUserId)-1;
             QyErroriUSER_ID.AsInteger := StrToIntDef(Copy(xUserId,dove,finoa-dove+1),0);
          end
          else
             QyErroriUSER_ID.AsInteger := gblCodUtente;
          QyErroriPOSTO.AsString := NomeComputer;
          OldShortDateFormat := ShortDateFormat;
          ShortDateFormat := 'yyyy-mm-dd';
          OldShortTimeFormat := ShortTimeFormat;
          ShortTimeFormat := 'hh:nn:ss';
          OldDateSeparator := DateSeparator;
          DateSeparator := '-';
          OldTimeSeparator := TimeSeparator;
          TimeSeparator := ':';
          QyErroriData_err.AsDateTime := StrToDateTimeDef(EstraiValore('date/time             :',StrList1.Text),Now());
          ShortDateFormat := OldShortDateFormat;
          ShortTimeFormat := OldShortTimeFormat;
          DateSeparator := OldDateSeparator;
          TimeSeparator := OldTimeSeparator;
          QyErroriTESTOERRORE1.LoadFromStream(BS);
          QyErrori.Post;

     end;
     CloseFile(tF);

     except
         // -- no errori su caricamento file errori...
          CloseFile(tF);
//          QyErroriTESTOERRORE1.LoadFromFile(MESettings.BugReportFile);
//          QyErrori.Post;
     end;

     QyErrori.close;

	finally
     BS.Free;
     StrList1.Free;
     Sysutils.Deletefile(MESettings.BugReportFile);
	end;

end;
{$ENDIF}

end;


function TFDMCommon.GetIEVisible: boolean;
begin

  case LeggiPostoLavoroCLIENTPACS.AsInteger of
  1:  begin
        if Assigned(FIE) then
           result := FIE.IEVisible
        else
           result := false;
      end;
  2:  result := true//;
  else
      result := false;
  end;

end;

procedure TFDMCommon.SetIEVisible(Value: boolean);
begin

  case LeggiPostoLavoroCLIENTPACS.AsInteger of
  1:  begin
        if Assigned(FIE) then
           FIE.IEVisible := Value;
      end;
  2: //;
  end;

end;

procedure TFDMCommon.Vuoto(ptipo: TpTipoImg = tptChiudi);
begin

  case LeggiPostoLavoroCLIENTPACS.AsInteger of
  1:  begin
        if Assigned(FIE) then
           FIE.Vuoto(ptipo);
      end;
  2:  begin
        if Assigned(FShell) then
           FShell.Vuoto(ptipo);
      end;
  end;
//  ForceForegroundWindow(Application.Handle);
  SetForegroundWindow(Application.MainForm.Handle);

end;


function TFDMCommon.CercaApplicazione(const nomeapp: string): HWND;
var
  xWnd: HWND;
  WindowName: Array[0..255] of Char;  
begin
    result := 0;
    xWnd := GetTopWindow(0);
    while xWnd>0 do
    begin
        if GetWindowText(xWnd, WindowName, SizeOf(WindowName)) > 0 then
        begin
           if strlcomp(WindowName, PChar(nomeapp), Length(nomeapp))=0 then
              if IsWindow(xWnd) then
              begin
//                 result := GetWindow( xWnd ,GW_OWNER);
//                 if result=0 then
                    result := xWnd;
                 break;
              end;
        end;
        xWnd := GetNextWindow( xWnd, GW_HWNDNEXT);
    end;
end;

procedure TFDMCommon.AccNumber(pkt: integer; bookmark: boolean; pkc: integer);
begin

  case LeggiPostoLavoroCLIENTPACS.AsInteger of
  1:  begin
        if not Assigned(FIE) then
           ApriControlloExplorer;
        if Assigned(FIE) then
        begin
           FIE.AccNumber(pkt,bookmark,pkc);
      {JRT 5037 - Storicizzazione accesso immagini}
           VisualizzaImmagine.ParamByName('pktriage').AsInteger := pkt;
           VisualizzaImmagine.ParamByName('statovisita').AsInteger := 905;
           VisualizzaImmagine.ParamByName('user_id').AsInteger := gblCodUtente;
           VisualizzaImmagine.ExecCommit;
        end;
      {}
     end;
  2: begin
        if not Assigned(FShell) then
           ApriControlloExplorer;
        if Assigned(FShell) then
           FShell.ShellShow(pkt,bookmark,pkc);
     end;
  end;

end;


procedure TFDMCommon.DataModuleDestroy(Sender: TObject);
begin
(* -- Non serve per Farmacia...
  if AstaClientSocket.Active then
  begin
   rsPropSaver1.SaveValues;
   rsStorage1.Save;
  end;
*)

{
    if AstaClientSocket.Active then
    begin
//     LeggiErrori;
    end;
}

  if Assigned(EsamiPreno) then
     EsamiPreno.Free;

  case LeggiPostoLavoroCLIENTPACS.AsInteger of
  1:  begin
        try
    //          FIE.IEVisible := false;
         if Assigned(FIE) then
         begin
            FIE.Free;
            FIE := nil;
         end;
        except
          FIE := nil;
        end;
      end;
  2:  begin
        if Assigned(FShell) then
           FreeAndNil(FShell);
      end;
  end;

  if (gblTipoLogin in [2,4]) and not gblSuperUser {NickB -- and not WebUpdate1.AppClose} then
  begin

     ExitWindowsEx(EWX_LOGOFF,0);
(*
     if true or not FDMCommon.DoppioMonitor or (MsgDlg(RAD_ConfermaUscitaPacs, '',
            ktConfirmation, [kbYes,kbNo], dfSecond)=mrNo) then
        ExitWindowsEx(EWX_LOGOFF,0)
     else begin
       fpatch := 'explorer.exe /e,/root,::{1FBD11EF-1260-11D1-87A7-444553540001}';

       GetStartupInfo(SI);
       SI.dwFlags := STARTF_USESHOWWINDOW ;//or STARTF_FORCEONFEEDBACK;
       SI.wShowWindow := SW_SHOW;

       CreateProcess(nil, PChar(fpatch), nil, nil,
                     False, 0, nil, nil {PChar(dirref)}, SI, PI);
     end;
*)
  end;

  if Assigned(FirmaDig) then
     FreeAndNil(FirmaDig);

end;


procedure TFDMCommon.CancellaMemoria(pkt: integer);
begin
  AstaCut.DisableControls;
  AstaDett.DisableControls;
  try
  if AstaCut.Locate('PKTRIAGE',pkt,[]) then
  begin
    AstaDett.Locate('TRIAGE_FK',pkt,[]);
    while not AstaDett.eof and (AstaDettTRIAGE_FK.AsInteger=pkt) do
          AstaDett.Delete;
    AstaCut.Delete;
  end;
  finally
    AstaDett.EnableControls;
    AstaCut.EnableControls;
  end;
end;


procedure TFDMCommon.CancellaAltrePreno(pkt: integer);
begin
  if AstaTestata.Locate('PKTRIAGE',pkt,[]) then
  begin
    AstaTestata.Delete;
    AstaDettagli.Locate('TRIAGE_FK',pkt,[]);
    while not AstaDettagli.eof and (AstaDettagliTRIAGE_FK.AsInteger=pkt) do
          AstaDettagli.Delete;
  end;
end;

procedure TFDMCommon.RefreshErrori;
begin

  LeggiErrori;

end;

procedure TFDMCommon.Timer1Timer(Sender: TObject);
begin
  RefreshErrori;
  Timer1.Enabled := true;
end;

procedure TFDMCommon.ConnettiServer(var volte,res: integer);
var
  ParamList: TAstaParamList;
  timeIn: TDateTime;
  xTimeOut: integer;
begin

  if gblDebugMode then
    xTimeOut := 120
  else
    xTimeOut := 15;

  FLoginAccettato := lmInAttesa;
  repeat

      if FLoginAccettato=lmInAttesa then
      begin
        ParamList := TAstaParamList.Create;
        try
          ParamList.FastAdd('pkuser', gblCodUtente);
          ParamList.FastAdd('username', gblNomeUtente);
          ParamList.FastAdd('computername', NomeComputer);
          ParamList.FastAdd('versione', xversione);
          AstaClientSocket.SendCodedParamList(1001, ParamList);
        finally
          ParamList.Free;
        end;
      end;

      timeIn := Now();
      while (FLoginAccettato in [lmInAttesa,lmChiudiRemoto]) and (SecondsBetween(Now(),TimeIn)<xTimeOut) do
           Application.HandleMessage;   // ex: Application.ProcessMessages;

      case FLoginAccettato of
      lmRifiutato:
      begin
         if MsgDlg(format(RS_UserPresente,[FComputerGiaConnesso,FIPGiaConnesso]),'', ktWarning, [kbYes,kbNo])=mrYes then
         begin
            ParamList := TAstaParamList.Create;
            try
              ParamList.FastAdd('pkuser', gblCodUtente);
              ParamList.FastAdd('username', gblNomeUtente);
              ParamList.FastAdd('computername', FComputerGiaConnesso);
              ParamList.FastAdd('ipaddress', FIPGiaConnesso);
              ParamList.FastAdd('versione', xversione);
              AstaClientSocket.SendCodedParamList(1004, ParamList);
            finally
              ParamList.Free;
            end;
            FLoginAccettato := lmChiudiRemoto;
            res := mrCancel;
            volte := 0;
         end
         else begin
           res := mrRetry;
           if (gblTipoLogin in [1,2,4]) then
             volte := 3;
         end;
      end;
      lmInAttesa:
      begin
         MsgDlg(format(RS_ServerNonDisponibile,[AstaClientSocket.Address]),'', ktError, [kbOK]);
         res := mrCancel;
         volte := 3;
      end;
      lmNonDisponibile:
      begin
         if FServerAttivo=1 then
         begin
            FServerAttivo := 2;
            res := mrCancel;
            volte := 1;
            AstaClientSocket.Active := false;
            AstaClientSocket.Address := SyncroServer;
            AstaClientSocket.Port := SyncroPorta;
            WebUpdate1Status(self, AstaClientSocket.Address+':'+IntToStr(AstaClientSocket.Port),0,0);
            AstaClientSocket.FastConnectprimative(true, false, false);
         end
         else begin
           MsgDlg(RS_ServerNonDisponibile,'', ktInformation, [kbOK]);
           res := mrCancel;
           volte := 3;
         end;
      end;
      else
           res := mrOk;
      end;
  until (res=mrOk) or ((res=mrCancel) and (volte=3)) or (res=mrRetry);

end;

function TFDMCommon.SetLocalTime(Value: TDateTime): boolean;
{I admit that this routine is a little more complicated than the one
in Indy 8.0.  However, this routine does support Windows NT privillages
meaning it will work if you have administrative rights under that OS

Original author Kerry G. Neighbour with modifications and testing
from J. Peter Mugaas}
var
   dSysTime: TSystemTime;
   buffer: DWord;
   tkp, tpko: TTokenPrivileges;
   hToken: THandle;
begin
  Result := False;
  if SysUtils.Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
    if not Windows.OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY,
      hToken) then
    begin
      exit;
    end;
    Windows.LookupPrivilegeValue(nil, 'SE_SYSTEMTIME_NAME', tkp.Privileges[0].Luid);    {Do not Localize}
    tkp.PrivilegeCount := 1;
    tkp.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED;
    if not Windows.AdjustTokenPrivileges(hToken, FALSE, tkp, sizeof(tkp), tpko, buffer) then
    begin
      exit;
    end;
  end;
  DateTimeToSystemTime(Value, dSysTime);
  Result := Windows.SetLocalTime(dSysTime);
  {Undo the Process Privillage change we had done for the set time
  and close the handle that was allocated}
  if SysUtils.Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
    Windows.AdjustTokenPrivileges(hToken, FALSE,tpko, sizeOf(tpko), tkp, Buffer);
    Windows.CloseHandle(hToken);
  end;
end;

function TFDMCommon.RegistraWorkstation: Boolean;
begin
     if lstpar.IndexOfName(NPAR_RADIOLOGIA) >= 0 then
     begin
       LeggixLogin.Insert;
       LeggixLoginCOMPUTERNAME.AsString := UpperCase(NomeComputer);
       LeggixLoginTIPO_LOGIN.AsInteger := 0;
       LeggixLoginTIPOWS.AsInteger := 1;
       LeggixLogin.Post;

       RegistraWorkxRad();

       result := True;
     end
     else
        result := False;
end;


function TFDMCommon.RegistraWorkxRad: boolean;
begin
     if lstpar.IndexOfName(NPAR_RADIOLOGIA) >= 0 then
     begin
       LeggiPostoLavoro.OpenNoFetch;
       LeggiPostoLavoro.Insert;
       LeggiPostoLavoroREPARTI_FK.AsInteger := StrToIntDef(lstpar.Values[NPAR_RADIOLOGIA],-1);
       LeggiPostoLavoroPKWORKSTATION.AsInteger := LeggixLoginPKWORKSTATION.AsInteger;
       LeggiPostoLavoro.Post;
       result := True;
     end
     else
        result := False;
end;

procedure TFDMCommon.CaricaUser(var res: Integer; var volte: integer; scegli: boolean);
begin
      gblNomeUtente := qryUserREAL_NAME.AsString;
      gblCodUtente := qryUserUSER_ID.AsInteger;
      gblProfiloVocale := qryUserPROFILO_VOCALE.AsString;
      gblcodfisc := qryUserCODICE_FISCALE.AsString;
      FTipo_Smartcard := qryUserTIPO_CARTA.AsInteger;
      FAllow_Overbooking := (qryUserALLOW_OVERBOOKING.AsInteger=1);
      gblUserIsAdmin := (qryUserISADMIN.AsInteger=1);
      gblSuperUser := (qryUserSUPERUSER.AsInteger=1);
      gblIsMedico  := (qryUserFUNZ_INTERNI.AsInteger in [1,3,4]);
      gblSpecializ := (qryUserFUNZ_INTERNI.AsInteger in [3,4]);
      gblEstrazioneDati := (qryUserESTRAZIONE_DATI.AsInteger=1) or gblSuperUser;
      gblLoginNT := qryUserLOGIN_NT.AsString;
      gblpswd := Decrypt(qryUserUSER_PWD.AsString);
{$IFDEF MEDICORNER}
      gblCallCenter  := (qryUserFUNZ_INTERNI.AsInteger = 6);
{$ENDIF}

      if (qryUser.recordcount>1) and scegli then
      begin
        FConfermaPswdRep := TFConfermaPswdRep.Create(nil);
        try
          FConfermaPswdRep.CercaReparto := true;
          FConfermaPswdRep.dxLayoutPswd.Enabled := false;
          FConfermaPswdRep.dxLayoutReparto.Enabled := true;
          FConfermaPswdRep.cxPswd.Text := Decrypt(qryUserUSER_PWD.AsString);
          FConfermaPswdRep.qryUser.Parambyname('USER_PWD').AsString := qryUserUSER_PWD.AsString;
          FConfermaPswdRep.qryUser.Parambyname('funz_interni').AsString := '# and (r.tipo_reparto=''R'')';
          FConfermaPswdRep.qryUser.open;
          FConfermaPswdRep.res := 3;
          res := FConfermaPswdRep.ShowModal;
          if res=mrCancel then
          begin
             volte := 3;
          end
          else begin
            gblpkrep := FConfermaPswdRep.qryUserREPARTI_FK.AsInteger;
            gblNomeReparto := FConfermaPswdRep.qryUserREPARTO.AsString;
            gblpkserv := FConfermaPswdRep.qryUserSERVIZI_FK.AsInteger;
            gblDescrServizio := FConfermaPswdRep.qryUserDESCRSERVIZIO.AsString;
            if not FConfermaPswdRep.qryUserCOD_FUNZIONE.IsNull then
               gblfunzione := FConfermaPswdRep.qryUserCOD_FUNZIONE.AsInteger
            else
               gblFunzione  := -1;
            FDblClickTime := FConfermaPswdRep.qryUserDBLCLICKTIME.AsInteger;
          end;
        finally
            FreeAndNil(FConfermaPswdRep);
        end;
      end
      else begin
        gblpkrep := qryUserREPARTI_FK.AsInteger;
        gblNomeReparto := qryUserREPARTO.AsString;
        gblDescrServizio := qryUserDESCRSERVIZIO.AsString;
        gblpkserv := qryUserSERVIZI_FK.AsInteger;
        if not qryUserCOD_FUNZIONE.IsNull then
           gblfunzione := qryUserCOD_FUNZIONE.AsInteger
        else
           gblFunzione  := -1;
        FDblClickTime := qryUserDBLCLICKTIME.AsInteger;
      end;
      FIsUserLoaded := True;
end;


function TFDMCommon.ProceduraConnessione: boolean;
var
  res, volte: integer;
  sURL: string;
begin

  result := false;

//  if OneInstance1.PrecAttivato then exit;

  ShowProgress(58);

  LeggixLogin.Close;
  LeggixLogin.Parambyname('computername').AsString := UpperCase(NomeComputer);
  LeggixLogin.Open;
  if LeggixLogin.IsEmpty then
  begin
     if not RegistraWorkstation() then
     begin
       MsgDlg(format(RS_ComputerNonRegistrato,[NomeComputer]),'', ktWarning, [kbOK]);
       Application.Terminate;
       Application.ProcessMessages;
       exit;
     end;
  end;

  gblTipoLogin := LeggixLoginTIPO_LOGIN.AsInteger;

  ShowProgress(60);

  volte := 1;
  res := mrCancel;

  while (volte<=3) and (res<>mrOk) do
  begin

      if FIsUserLoaded then
         res := mrOk
      else if (gblTipoLogin in [1,2,3,4]) then
      begin
          qryUser.Parambyname('campo').AsString := '# U.LOGIN_NT';
          qryUser.Parambyname('LOGIN').AsString := NomeUtente; // LowerCase(NomeUtente);
          qryUser.syRefresh;

          CaricaUser(res,volte,true);

          if volte=3 then
          begin
             // do nothing...
          end
          else if qryUser.IsEmpty then
          begin
             MsgDlg(RS_ltVerifyFail, '', ktError, [kbOK]);
             if gblTipoLogin in [3,4] then
                volte := 3
             else begin
                gblTipoLogin := 0;
                FIsUserLoaded := False;
             end;
          end
          else if not qryUserExpiration_Date.IsNull and (qryUserExpiration_Date.AsDateTime<=Date) then
          begin
             MsgDlg(RS_ltPswdScaduta, '', ktError, [kbOK]);
             if gblTipoLogin in [3,4] then
                volte := 3
             else
                gblTipoLogin := 0;
          end
          else begin
            res := mrOk;
          end;
      end
      else if (FConfermaPswdRep=nil) then
      begin

        FConfermaPswdRep := TFConfermaPswdRep.Create(nil);
        try
          FConfermaPswdRep.CercaReparto := true;
          FConfermaPswdRep.qryUser.Parambyname('funz_interni').AsString := '# and (r.tipo_reparto=''R'')';
          res := FConfermaPswdRep.ShowModal;
          if res=mrCancel then
          begin
             volte := 3;
          end
          else begin
            gblNomeUtente := FConfermaPswdRep.qryUserREAL_NAME.AsString;
            gblDescrServizio := FConfermaPswdRep.qryUserDESCRSERVIZIO.AsString;
            gblCodUtente := FConfermaPswdRep.user_id;
            gblcodfisc := FConfermaPswdRep.qryUserCODICE_FISCALE.AsString;
            FTipo_Smartcard := FConfermaPswdRep.qryUserTIPO_CARTA.AsInteger;
            FAllow_Overbooking := (FConfermaPswdRep.qryUserALLOW_OVERBOOKING.AsInteger=1);
            gblProfiloVocale := FConfermaPswdRep.ProfiloVocale;
            if not FConfermaPswdRep.qryUserCOD_FUNZIONE.IsNull then
               gblfunzione := FConfermaPswdRep.qryUserCOD_FUNZIONE.AsInteger
            else
               gblFunzione  := -1;
            gblIsMedico  := FConfermaPswdRep.IsMedico;
            gblUserIsAdmin := FConfermaPswdRep.userIsAdmin and (lstpar.IndexOf(NPAR_USER)=-1);
            gblSuperUser := FConfermaPswdRep.SuperUser and (lstpar.IndexOf(NPAR_USER)=-1);
            gblSpecializ := (FConfermaPswdRep.qryUserFUNZ_INTERNI.AsInteger in [3,4]);
            gblEstrazioneDati := FConfermaPswdRep.EstrazioneDati or gblSuperUser;
{$IFDEF MEDICORNER}
            gblCallCenter  := (FConfermaPswdRep.qryUserFUNZ_INTERNI.AsInteger = 6);
{$ENDIF}
            gblpkrep := FConfermaPswdRep.qryUserREPARTI_FK.AsInteger;
            gblNomeReparto := FConfermaPswdRep.qryUserREPARTO.AsString;
            gblpkserv := FConfermaPswdRep.qryUserSERVIZI_FK.AsInteger;
            FDblClickTime := FConfermaPswdRep.qryUserDBLCLICKTIME.AsInteger;
            gblLoginNT := FConfermaPswdRep.qryUserLOGIN_NT.AsString;
            gblpswd := Decrypt(FConfermaPswdRep.qryUserUSER_PWD.AsString);

            qryUser.Parambyname('campo').AsString := '# U.PASSWORD';
            qryUser.Parambyname('LOGIN').AsString := FConfermaPswdRep.qryUserUSER_PWD.AsString;
            qryUser.syRefresh;
            FIsUserLoaded := True;

          end;
        finally
            FConfermaPswdRep.Free;
            FConfermaPswdRep := nil;
        end;
      end;

    if res=mrOk then
    begin

        if CaricaPostoLavoro then
           ConnettiServer( volte, res );

    end;

    inc(volte);

  end;

  result := (res=mrOk);
  FIsConnected := result;
  if not result then
//    if FConnessioneInterna or (gblTipoLogin in [1,2]) then
    begin
      if (gblTipoLogin in [2,4]) then
         ExitWindowsEx(EWX_LOGOFF,0)
      else begin
         AstaClientSocket.SetSmartWaitTickLimit(1000);  // per non far bloccare su seConnect che arriva...
         Application.Terminate;
         Application.ProcessMessages;
      end;
      exit;
    end;
//    else
//       exit;

  if (lstpar.IndexOf(NPAR_USER)>=0) then
     gblTipoLogin := 0;

  if (lstpar.IndexOfName(NPAR_PKUSER)>=0) then
     gblCodUtente := StrToInt(lstpar.Values[NPAR_PKUSER]);

//  ErrNomeUtente := gblNomeUtente + ' ('+IntToStr(gblCodUtente)+')';

{$IFDEF MADEXCEPT}
  if gblSuperUser then
     MESettings.ShowBtnVisible := true;
{$ENDIF}

  ShowProgress(90);

  LeggiErrori;

  ShowProgress(95);

  CaricaDefault;

  if (LeggiPostoLavoroSET_DEFAULT_PRINTER.AsInteger=1) and (StampanteNormale<>'') then
     SetPrinter(StampanteNormale);

(*
  { spostata dopo connessione per parametrizzarne l'utilizzo (10/10/2006)}
  if LeggiPostoLavoroSET_DATA.AsInteger=1 then
  begin
    SettaDateTime.open;
    if SettaDateTimeSYSDATE.AsDateTime>0 then
    begin
      LBufTime := SettaDateTimeSYSDATE.AsDateTime;
      SetLocalTime(LBufTime);
    end;
  end;
*)
  ShowProgress(100);

  Application.ShowMainForm := true;
  Application.MainForm.Visible := true;

  if Assigned(frmSplash) then
  begin
    frmSplash.Free;
    frmSplash := nil;
  end;

  if (lstpar.IndexOf(NPAR_UPGRADE)=-1) then
  begin
      sURL := format('http://%s/%s.inf',[NomeWebUpdate,SoloNome(ExtractFileName(Application.ExeName))]);
      WebUpdate1.URL := sURL;
      WebUpdate1.DoUpdate;
//      WebUpdate1.DoThreadUpdate;
  end;

end;

{JRT 6216}
procedure TFDMCommon.LoadSkin( nr: Integer );
var
  fIni: TIniFile;
  skinIniFile: string;
  skinFile: string;
begin
  LkSkin.Locate('PKTABSKIN',nr,[]);
  if not LkSkin.eof and (LkSkinNOME.AsString<>gblSkinName) then
  begin
    gblSkinName := LkSkinNOME.AsString;
    gblColorName := LkSkinTEXTCOLOR.AsString;
    skinIniFile := ExtractFilePath(Application.ExeName) + 'skin.ini';
    fIni := TIniFile.Create(skinIniFile);
    try
      fIni.WriteString('files', 'name', gblSkinName);
      fIni.WriteString('files', 'color', gblColorName);
    finally
      FreeAndNil(fIni);
    end;
    skinFile := ExtractFilePath(Application.ExeName)+gblSkinName;
    if not FileExists(skinFile) then
    begin
       qSaveSkin.ParamByName('pktabskin').AsInteger := nr;
       qSaveSkin.syRefresh;
       qSaveSkinSKIN.SaveToFile(skinFile);
    end;
    dxSkinsUserSkinLoadFromFile(gblSkinName,'');
{
    if (gblColorName<>'') then
       FDMCommon.dxLayoutSkinLookAndFeel1.ItemOptions.CaptionOptions.TextColor := StringToColor(gblColorName)
    else
       FDMCommon.dxLayoutSkinLookAndFeel1.ItemOptions.CaptionOptions.TextColor := clDefault;
}       
  end;
end;
{}

function TFDMCommon.CaricaPostoLavoro: boolean;
var
  z: Integer;
begin

  result := True;

  SetDoubleClickTime(FDblClickTime);

  ShowProgress(65);

  LkSkin.syRefresh;

  if not gblSuperUser then
  begin
    LeggixWS.Parambyname('reparti_fk').AsInteger := gblpkrep;
    LeggixWS.Parambyname('pkworkstation').AsInteger := LeggixLoginPKWORKSTATION.AsInteger;
    LeggixWS.syRefresh;
    if LeggixWS.IsEmpty then
    begin
         MsgDlg(format(RS_ComputerNonAttivo,[NomeComputer]),'', ktWarning, [kbOK]);
         Application.Terminate;
         Application.ProcessMessages;
         result := False;
         exit;
    end;
  end;
  
  LeggiPostoLavoro.Close;

  LeggiPostoLavoro.Parambyname('computername').AsString := UpperCase(NomeComputer);
  LeggiPostoLavoro.Parambyname('reparti_fk').AsInteger := gblpkrep;
  LeggiPostoLavoro.Open;
  if not LeggiPostoLavoro.IsEmpty then
  begin
(*
{JRT 6216}
     if not LeggiPostoLavoroSKIN_DEF.IsNull then
     begin
        dxSkinController.NativeStyle := False;
        dxSkinController.UseSkins := True;
        LoadSkin(LeggiPostoLavoroSKIN_DEF.AsInteger);
     end
     else begin
        dxSkinController.UseSkins := False;
        dxSkinController.NativeStyle := True;
     end;
{}
*)
//     StampanteNormale := LeggiPostoLavoroPRINTER1.AsString;
//     StampanteEtichette := LeggiPostoLavoroPRINTER2.AsString;
     if not LeggiPostoLavoroCOM_PORTA.IsNull then
     begin
       {JRT 362}
       try
         PortaSeriale := LeggiPostoLavoroCOM_PORTA.AsInteger;
         ComSpeed := LeggiPostoLavoroCOM_SPEED.AsString;
         Databits := LeggiPostoLavoroCOM_DATABIT.AsInteger;
         Parita := LeggiPostoLavoroCOM_PARITY.AsString;
         BitStop := LeggiPostoLavoroCOM_STOPBIT.AsInteger;
         HwCtrl := LeggiPostoLavoroCOM_HWCTRL.AsString;
         SwCtrl := LeggiPostoLavoroCOM_SWCTRL.AsString;
       except
         PortaSeriale := -1;
       end;
     end
     else
       PortaSeriale := -1;

//     gblTipoLogin := LeggiPostoLavoroTIPO_LOGIN.AsInteger;
     gblospedale := LeggiPostoLavoroGBLOSPEDALE.AsString;
     gblore_riapri := LeggiPostoLavoroORE_RIAPRI.AsInteger;

     gblTipo_Preno := LeggiPostoLavoroTIPO_PRENOTAZIONE.AsInteger;
     gblModTecnicoEseguito := (LeggiPostoLavoroMOD_TECNICO_ESEGUITO.AsInteger=1) or gblUserIsAdmin or gblSuperUser;

     gblpkworkstation := LeggiPostoLavoroPKWORKSTATION.AsInteger;

     if not LeggiPostoLavoroGBLPKPS.IsNull then
        gblpkrepps := LeggiPostoLavoroGBLPKPS.AsInteger;
     if not LeggiPostoLavoroGBLPKSERVPS.IsNull then
        gblpkservps := LeggiPostoLavoroGBLPKSERVPS.AsInteger;

     if not (LeggiPostoLavoroREFVOCALE.AsInteger in [0,6]) and (gblProfiloVocale='') then
        RefertazioneVocale := 6  // -- editor testo avanzato se refertazione vocale sulla macchina ma non settato profilo...
     else
        RefertazioneVocale := LeggiPostoLavoroREFVOCALE.AsInteger;
  end
  else // if not gblDebugMode then
  begin
     if not RegistraWorkxRad then
     begin
       MsgDlg(format(RS_ComputerNonAttivo,[NomeComputer]),'', ktWarning, [kbOK]);
       Application.Terminate;
       Application.ProcessMessages;
       result := False;
       exit;
     end;
  end;

  if not gblDebugMode then
  begin
    LeggiPostoLavoro.Edit;
    LeggiPostoLavoroIP.AsString := GetThePCsIPAddress;
    LeggiPostoLavoroLAST_CONNECTION.AsDateTime := Now();
    LeggiPostoLavoroVERSIONE.AsString := xVersione;
    LeggiPostoLavoro.Post;
  end;

  ReleaseAllLock.Parambyname('p_user').AsInteger := gblCodUtente;
  ReleaseAllLock.ExecSQL;

  if (LeggiPostoLavoroFIRMA_DIGITALE.AsInteger in [1,2]) then
    case LeggiPostoLavoroTIPO_FIRMA.AsInteger of
    1:  // -- Krill
      begin
        FirmaDig := TFirmaKrill.Create(LeggiPostoLavoroTIPO_FIRMA.AsInteger,DllFirma);
      end;
    2:  // -- CompED
      begin
        FirmaDig := TFirmaCompEd.Create(LeggiPostoLavoroTIPO_FIRMA.AsInteger);
      end;
    else
        FirmaDig := TFirmaLettura.Create(LeggiPostoLavoroTIPO_FIRMA.AsInteger);
    end
  else
    FirmaDig := TFirmaLettura.Create(LeggiPostoLavoroTIPO_FIRMA.AsInteger);

  gblfirmainst := ((FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger=0) or (FDMCommon.LeggiPostoLavoroTIPO_FIRMA.AsInteger>0));

  ShowProgress(80);

  CaricaEsami;

  AstaCut.close;
  AstaDett.close;
  AstaTestata.close;
  AstaDettagli.close;
  AstaCut.open;
  AstaDett.open;
  AstaTestata.open;
  AstaDettagli.open;
  Param_Ticket.syrefresh;
  qFormLayout.syRefresh;
  MultiSite.syrefresh;
  LkReparti.syrefresh;
  LkEsenzione.syrefresh;
  LkTipoAccesso.syrefresh;
  LkTipoRicetta.syrefresh;
  TabPacs.syrefresh;
  LkTipoRefVoc.syrefresh;

  CaricaReferti(gblpkrep);

  LkOspedali.syrefresh;
  TipoAttivita.syrefresh;
  Medici.syrefresh;

  ServiziRadiologia.syrefresh;
  gblMultiServ := (ServiziRadiologia.RecordCount>1);
  xServInterni := '';
  while not ServiziRadiologia.eof do
  begin
      if xServInterni<>'' then
         xServInterni := xServInterni + ',';
      xServInterni := xServInterni + ServiziRadiologiaPKSERVIZI.AsString;
      ServiziRadiologia.Next;
  end;

 case LeggiPostoLavoroFLAG_MN.AsInteger of
 1,3: begin
        Radiofarmaci.syrefresh;
      end;
 2:   begin
        LkTabEsitoScreening.syRefresh;
        SetLength(dShortCut,0);
        TabEsitoScreening.syRefresh;
        for z:=0 to TabEsitoScreening.RecordCount-1 do
        begin
           if not TabEsitoScreeningSHORTCUT.IsNull then
           begin
              SetLength(dShortCut,Length(dShortCut)+1);
              dShortCut[High(dShortCut)].shc   := TextToShortCut(TabEsitoScreeningSHORTCUT.AsString);
              dShortCut[High(dShortCut)].esito := TabEsitoScreeningPKESITISCR.AsInteger;
           end;
           TabEsitoScreening.Next;
        end;
     end;
 end;

 cdMaster.syRefresh;

 CaricaLingua;

 qCtrlEseguito.syRefresh;
 qAlertxRep.syRefresh;

 // acr_anatomical.syRefresh;
//  acr_patological.syRefresh;
 qStatoAnag.syRefresh;
 qTipoWS.syRefresh;
 qTipoLogin.syRefresh;
 qClientPacs.syRefresh;
 qDefPrint.syRefresh;

 if ClientPacs and ((LeggiPostoLavoroCLIENTPACS.AsInteger=1) or DoppioMonitor) then
 begin
    ApriControlloExplorer;
 end;

end;

type
 TCaricaEsamiThread = class(TThread)
  private
    ia: array of TAstaClientDataSet;
  public
    constructor Create(ds: array of const);
    procedure Execute; override;
  end;

constructor TCaricaEsamiThread.Create(ds: array of const);
var
  i: integer;
begin
  inherited Create(false);

  SetLength(ia, High(ds));
  for i:=Low(ds) to High(ds) do
      ia[i] := TAstaClientDataset(ds[i].VInteger);
end;

procedure TCaricaEsamiThread.Execute;
var
  i: integer;
begin

  inherited;

  try
    // Ejecutar la consulta
    for i := Low(ia) to High(ia) do
        ia[i].syrefresh;
  except
    // Error al ejecutar
    raise;
  end;
end;

procedure TFDMCommon.CaricaEsami;
begin

  Esami.syrefresh;
  Possibili.syrefresh;
  DiagnxRep.syrefresh;

//  TCaricaEsamiThread.Create([Esami,Possibili,DiagnxRep]);

end;

procedure TFDMCommon.CaricaLingua;

  procedure LeggiValori(edrep: TcxEditRepositoryImageComboBoxItem; xds: TAstaClientDataSet; const pkey,icona: string; const pfilter: string = '');
  begin
      edrep.Properties.Items.Clear;
      xds.syRefresh;
      if pfilter<>'' then
      begin
         xds.Filter := pfilter;
         xds.Filtered := True;
      end;
      while not xds.eof do
      begin
         with TcxImageComboBoxItem(edrep.Properties.Items.Add) do
         begin
              Description := xds.FieldByName('DESCRIZIONE').AsString;
              if not xds.FieldByName(icona).IsNull then
                 ImageIndex := xds.FieldByName(icona).AsInteger
              else
                 ImageIndex := -1;
              Value := xds.FieldByName(pkey).Value;
         end;
         xds.Next;
      end;
//      xds.close;
  end;

begin
//  LeggiValori(edrepURGENZA, TipoUrgenza, 'PKURGENZA', 'ICONA');
//  LeggiValori(edrepALETTO, TipoTrasporto, 'PKTRASPORTO', 'ICONA');
//*  LeggiValori(edrepImageSTATO, qStatoPrestazioni, 'STATO', 'ICONA');
//*  LeggiValori(edrepImageSTATOESAMESENZADESCR, qStatoPrestazioni, 'STATO', 'ICONA');
  LeggiValori(edrepImageIMMAGINI, qStatoImmagini, 'STATO', 'ICONA');
  LeggiValori(edrepCOMPOSTO, qEsameComposto, 'STATO', 'ICONA');
//  LeggiValori(edrepSTATOCD, qStatoCD, 'STATO', 'ICONA');
//  LeggiValori(edrepRICHIESTA_VALIDATA, qStatoVisita, 'STATOVISITA', 'ICONA');
//  LeggiValori(edrepTIPO_REPARTO, qTipoReparto, 'TIPO_REPARTO', 'ICONA');
  LeggiValori(edrepTIPOSTAT, qItemType, 'ITEM_TYPE', 'ICONA');
//  LeggiValori(edrepRICETTA_INF, qRicettaInf, 'RICETTA_INF', 'ICONA');
  LeggiValori(edRepPROVENIENZA_PRENO, qCaricaProvenienze, 'PROVENIENZA', 'ICONA', 'PRENO=1');
//*  LeggiValori(edrepPROVENIENZA, qCaricaProvenienze, 'PROVENIENZA', 'ICONA', 'ACCET=1');
//  LeggiValori(edrepTIPO_FIRMA, qTipoFirma, 'TIPO_FIRMA', 'ICONA');
//*  LeggiValori(edrepStampaReferto, qRefStampato, 'REF_STAMPATO', 'ICONA');
//  LeggiValori(edrepEtichette, qEtichStampate, 'ETICHETTE', 'ICONA');

  Profili.syRefresh;

  if (LeggiPostoLavoroCHK_CONSEGNA_REF.AsInteger>0) then
     qTipoInvio.syRefresh;

end;

procedure TFDMCommon.CaricaUrgenze(xpkrep: Integer);
begin
  edrepURGENZA_RICH.Properties.Items.Clear;
  TipoUrgenza.close;
  TipoUrgenza.Parambyname('reparti_fk').AsInteger := xpkrep;
  TipoUrgenza.open;
  while not TipoUrgenza.eof do
  begin
     with TcxImageComboBoxItem(edrepURGENZA_RICH.Properties.Items.Add) do
     begin
          Description := TipoUrgenzaDESCRIZIONE.AsString;
          if not TipoUrgenzaICONA.IsNull then
             ImageIndex := TipoUrgenzaICONA.AsInteger
          else
             ImageIndex := -1;
          Value := TipoUrgenzaPKURGENZA.AsInteger;
     end;
     TipoUrgenza.Next;
  end;
  TipoUrgenza.close;
end;

procedure TFDMCommon.CaricaReferti(pkrep: integer);
var
  k: integer;
begin
  TabStampe.Parambyname('reparti_fk').AsInteger := pkrep;
  TabStampe.syrefresh;
  for k:=70 to 75 do
  begin
    if TabStampe.Locate('FUNZIONI_FK',k,[]) then
    begin
       gblMod[k,1] := TabStampeITEM_ID_FK.AsInteger;
       gblMod[k,2] := TabStampeCOPIE.AsInteger;
       gblMod[k,3] := TabStampeTIPOREFERTO_FK.AsInteger;
       gblMod[k,4] := TabStampeCD_AUTOMATICO.AsInteger;
       gblDescMod[k] := TabStampeDESCFUNZIONE.AsString;
    end
    else begin
       gblMod[k,1] := -1;
       gblMod[k,2] := 0;
       gblMod[k,3] := -1;
       gblMod[k,4] := 0;
       gblDescMod[k] := '';
    end;
  end;
  TabStatoReferto.syRefresh;
end;

function TFDMCommon.ApriMultiSite(const SiteName: string): boolean;
var
  LastActivity: TDateTime;
begin

  result := false;

  if MultiSite.Locate('SITE_NAME',SiteName,[]) then
  begin
    if (SiteName<>'') and AstaMultiSite.Active and (AstaMultiSite.Address=MultiSiteSITE_ADDRESS.AsString) then
       result := true
    else if (SiteName<>'') then
    begin
      if AstaMultiSite.Active then
         AstaMultiSite.Active := false;
      FServerMulti := 1;
      AstaMultiSite.Address := MultiSiteSITE_ADDRESS.AsString;
      AstaMultiSite.Port := MultiSiteSITE_PORT.AsInteger;
      AstaMultiSite.FastConnectprimative(true, false, false);

      result := AstaMultiSite.Active;
      if not result then
      begin
         LastActivity := Now();
         while not AstaMultiSite.Active and (MilliSecondsBetween(Now,LastActivity)<AstaMultiSite.ReconnectDelayTime) do
               Application.ProcessMessages;
         result := AstaMultiSite.Active;
      end;

    end;
  end;

end;


procedure TFDMCommon.ChiudiMultiSite;
begin
  AstaMultiSite.Active := false;
end;

{ Legge il nome dell'utente di Windows }
function TFDMCommon.NomeUtente: string;
begin
  Result := GetTheUserName;
end;

{ Legge il nome del computer }
function TFDMCommon.NomeComputer: string;
begin
  if FNomeComputer='' then
     FNomeComputer := GetTheComputerName;
  Result := FNomeComputer;
end;

procedure TFDMCommon.AstaClientSocketCustomConnect(Sender: TObject);
begin
{
   if lstpar.IndexOfName(NPAR_HOST) >= 0 then
      AstaClientSocket.Address := lstpar.Values[NPAR_HOST]
   else
      AstaClientSocket.Address := 'it4med';

   if lstpar.IndexOfName(NPAR_PORT) >= 0 then
      AstaClientSocket.Port := StrToInt(lstpar.Values[NPAR_PORT])
   else
      AstaClientSocket.Port := 9000;

   if lstpar.IndexOfName(NCOMPRESS) >= 0 then
      AstaClientSocket.Compression := acNoCompression;  // acAstaZLib;
}


end;

procedure TFDMCommon.WebUpdate1Status(Sender: TObject; statusstr: String;
  statuscode, errcode: Integer);
begin
  if (FpnlUpgrade<>nil) {and FpnlUpgrade.Visible} then
    case StatusCode of
    WebUpdateNoNewVersion:  FreUpgrade.Lines.Add( 'Nessuna nuova versione disponibile' );
    WebUpdateNotFound:      FreUpgrade.Lines.Add( 'Sito di aggiornamento non disponibile' );
    else
      FreUpgrade.Lines.Add( StatusStr );
    end;
end;


procedure TFDMCommon.LkRepartiBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  if LeggiPostoLavoroCHK_SLITTA_REP.AsInteger=1 then
     Sender.Parambyname('osp_codice').AsString := '#'
  else
     Sender.Parambyname('osp_codice').AsString := format('# r.osp_codice = ''%s'' and ',[gblospedale]);
end;

procedure TFDMCommon.AstaClientSocketCodedParamList(Sender: TObject;
  MsgID: Integer; Params: TAstaParamList);
var
  Index: integer;
begin

  case MsgId of
   1000: begin
           for Index:=0 to AlertList.Count-1 do
           try
              if Assigned(AlertList[Index]) then
                 TKSAstaEventClient(AlertList[Index]).ksOnEventEvent(Params);
           except
              on E: Exception do
              begin
                E.Message := E.Message + format(' (count: %d index: %d)',[AlertList.Count,Index]);
//              raise;
              end;
           end;
         end;
   1001: begin
           case Params[0].AsInteger of
           0: FLoginAccettato := lmAccettato;
           1: begin
                 FLoginAccettato := lmRifiutato;
                 if Params.FindParam('computername')<>nil then
                 begin
                    FComputerGiaConnesso := Params.Parambyname('computername').AsString;
                    FIPGiaConnesso := Params.Parambyname('ipaddress').AsString;
                 end
                 else begin
                    FComputerGiaConnesso := '';
                    FIPGiaConnesso := '';
                 end;
              end;
           2: FLoginAccettato := lmNonDisponibile;
           end;
         end;
   1090: begin
           case Params[0].AsInteger of
           0: FLoginAccettato := lmAccettato;
           1: begin
                 FLoginAccettato := lmRifiutato;
                 if Params.FindParam('computername')<>nil then
                 begin
                    FComputerGiaConnesso := Params.Parambyname('computername').AsString;
                    FIPGiaConnesso := Params.Parambyname('ipaddress').AsString;
                 end
                 else begin
                    FComputerGiaConnesso := '';
                    FIPGiaConnesso := '';
                 end;
              end;
           2: FLoginAccettato := lmNonDisponibile;
           end;
         end;
   1095: begin
           case Params[0].AsInteger of
           1: PostMessage(Application.MainForm.Handle,SY_UPGRADEAPPLICATION,0,0);
           2: begin
                 if Params.FindParam('messaggio')<>nil then
                    MsgReceived := Params.FindParam('messaggio').AsString
                 else
                    MsgReceived := '';
                 PostMessage(Application.MainForm.Handle,SY_LOGOUT,0,0);
              end;
           3: PostMessage(Application.MainForm.Handle,SY_SWITCHASTA,0,0);
           4: PostMessage(Application.MainForm.Handle,SY_QUIT,0,0);
           end;
         end;
  end;

end;


procedure TFDMCommon.AstaClientSocketConnect(Sender: TObject;
  Socket: TCustomWinSocket);
var
  res,volte: integer;
  LBufTime: TDateTime;
begin

  if AstaClientSocket.ReconnectTrial>0 then
  begin
    res := mrOk;
    volte := 0;
    ConnettiServer(volte,res);
    if res=mrOk then
    begin
      AstaClientSocket.ReconnectTrial := 0;
      ResendAlert;
      PostMessage(Application.MainForm.Handle,WM_CONFIGURATION_READ,0,0);
    end;
    exit;
  end;

  AstaClientSocket.ReconnectTrial := 0;

(*
{ spostata dopo connessione per parametrizzarne l'utilizzo (10/10/2006)
  SettaDateTime.open;
  if SettaDateTimeSYSDATE.AsDateTime>0 then
  begin
    LBufTime := SettaDateTimeSYSDATE.AsDateTime;
    SetLocalTime(LBufTime);
  end;
}
  if not ProceduraConnessione then exit;
{
  if (lstpar.IndexOf(NPAR_UPGRADE)=-1) then
  begin
     WebUpdate1.URL := format('http://%s/it4medUpdates/%s/update.inf',[NomeWebUpdate,SoloNome(ExtractFileName(Application.ExeName))]);
     WebUpdate1.DoUpdate;
     Application.ProcessMessages;
  end;
}
  ShowProgress(90);

  LeggiErrori;

  ShowProgress(95);

  CaricaDefault;

  if (LeggiPostoLavoroSET_DEFAULT_PRINTER.AsInteger=1) and (StampanteNormale<>'') then
     SetPrinter(StampanteNormale);

  { spostata dopo connessione per parametrizzarne l'utilizzo (10/10/2006)}
  if LeggiPostoLavoroSET_DATA.AsInteger=1 then
  begin
    SettaDateTime.open;
    if SettaDateTimeSYSDATE.AsDateTime>0 then
    begin
      LBufTime := SettaDateTimeSYSDATE.AsDateTime;
      SetLocalTime(LBufTime);
    end;
  end;

  ShowProgress(100);

  Application.ShowMainForm := true;
  Application.MainForm.Visible := true;

  if Assigned(frmSplash) then
  begin
    frmSplash.Free;
    frmSplash := nil;
  end;
*)

  PostMessage(Application.MainForm.Handle,WM_CONFIGURATION_READ,0,0);

  if gblDebugMode then
     AstaClientSocket.ReconnectMaxAttempt := AstaClientSocket.ReconnectMaxAttempt * 10;

end;

procedure TFDMCommon.EsamiBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
	Sender.Parambyname('pkreparti').AsInteger := gblpkrep;
//  if LeggiPostoLavoroCONDIVIDI_AGENDE.AsInteger=0 then
{     Sender.Parambyname('solo_rep').AsInteger := gblpkrep}
//  else
//     Sender.Parambyname('solo_rep').Clear;

end;


function TFDMCommon.FiltraEsami(Possibili: TAstaCustomDataset): TAstaCustomDataset;
begin
  result := FiltraEsami(Possibili, gblpkrep);
end;

function TFDMCommon.FiltraEsami(Possibili: TAstaCustomDataset; xpkrep: integer): TAstaCustomDataset;
var
//  ref: TAstaCustomDataset;
  i: integer;
  xEsami: TAstaClientDataset;
begin
  inherited;

  if xpkrep=gblpkrep then
     xEsami := Esami
  else begin
	   EsamixAltri.Parambyname('reparti_fk').AsInteger := xpkrep;
     EsamixAltri.syRefresh;
     xEsami := EsamixAltri;
  end;

  result := TAstaCustomDataset.Create(nil);
  result.FilterOptions := [foCaseInsensitive];
  result.CleanCloneFromDataSet(xEsami);
  result.First;
//  ref := TAstaCustomDataset.Create(nil);

  // -- tolgo gli esami non ammissibili...
  while not result.eof do
  begin
     if not Possibili.LocateRecord('PKCODICIRAD',result.Fieldbyname('PKCODICIRAD').AsInteger,[]) then
        result.Delete
     else
        result.Next;
  end;

  for i:=0 to result.fieldcount-1 do
     result.Fields[i].DisplayLabel := xEsami.Fields[i].DisplayLabel;

end;

(** Old...
function TFDMCommon.FiltraEsami(Possibili: TAstaCustomDataset; xpkrep: integer): TAstaCustomDataset;
var
  ref: TAstaCustomDataset;
  i: integer;
  xEsami: TAstaClientDataset;
begin
  inherited;

  if xpkrep=gblpkrep then
     xEsami := Esami
  else begin
	   EsamixAltri.Parambyname('reparti_fk').AsInteger := xpkrep;
     EsamixAltri.syRefresh;
     xEsami := EsamixAltri;
  end;

  result := TAstaCustomDataset.Create(nil);
  result.CleanCloneFromDataSet(xEsami);
  result.Filtered := false;
  result.Filter := 'LIVELLO = 3';
  result.Filtered := true;
  result.First;
  ref := TAstaCustomDataset.Create(nil);
  try
  // -- tolgo gli esami non ammissibili...
  while not result.eof do
  begin
     if not Possibili.LocateRecord('PKCODICIRAD',result.Fieldbyname('PKCODICIRAD').AsInteger,[]) then
        result.Delete
     else
        result.Next;
  end;
  result.Filtered := false;
  ref.CleanCloneFromDataSet(result);
  ref.Filtered := false;
  ref.Filter := 'LIVELLO = 3';
  ref.Filtered := true;
  // -- tolgo il livello superiore...
  result.Filtered := false;
  result.Filter := 'LIVELLO = 2';
  result.Filtered := true;
  result.First;
  while not result.eof do
  begin
     if not ref.LocateRecord('PRESTSPECMULT_FK',result.Fieldbyname('PKPRESTSPECMULT').AsInteger,[]) then
        result.Delete
     else
        result.Next;
  end;
  ref.Empty;
  result.Filtered := false;
  ref.CleanCloneFromDataSet(result);
  ref.Filtered := false;
  ref.Filter := 'LIVELLO = 2';
  ref.Filtered := true;
  // -- tolgo il primo livello...
  result.Filtered := false;
  result.Filter := 'LIVELLO = 1';
  result.Filtered := true;
  result.First;
  while not result.eof do
  begin
     if not ref.LocateRecord('PRESTSPECMULT_FK',result.Fieldbyname('PKPRESTSPECMULT').AsInteger,[]) then
        result.Delete
     else
        result.Next;
  end;

  for i:=0 to result.fieldcount-1 do
     result.Fields[i].DisplayLabel := xEsami.Fields[i].DisplayLabel;

  finally
     result.Filtered := false;
     result.Filter := '';
     result.FilterOptions := [foCaseInsensitive];
     ref.Free;
  end;

end;
*)

procedure TFDMCommon.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled := false;
end;

procedure TFDMCommon.ConnettiSeriale(ComPort: TApdComPort);
begin
  if ComPort.Open then
     ComPort.Open := false;

  if FDMCommon.PortaSeriale>0 then
  begin
     ComPort.ComNumber := FDMCommon.PortaSeriale;
     ComPort.Baud := StrToIntDef( FDMCommon.ComSpeed, 0 );
     ComPort.Databits := FDMCommon.DataBits;
     if FDMCommon.Parita='None' then
        ComPort.Parity :=   pNone
     else if FDMCommon.Parita='Odd' then
        ComPort.Parity :=   pOdd
     else if FDMCommon.Parita='Even' then
        ComPort.Parity :=   pEven
     else if FDMCommon.Parita='Mark' then
        ComPort.Parity :=   pMark
     else
        ComPort.Parity :=   pSpace;

     ComPort.StopBits := FDMCommon.BitStop;

     if FDMCommon.HwCtrl='None' then
        ComPort.HWFlowOptions := []
     else if FDMCommon.HwCtrl='RTS/CTS' then
        ComPort.HWFlowOptions := [hwfUseRTS]
     else
        ComPort.HWFlowOptions := [hwfUseRTS,hwfUseDTR];

     if FDMCommon.SwCtrl='None' then
        ComPort.SWFlowOptions := swfNone
     else
        ComPort.SWFlowOptions := swfReceive;

     try
        if not ComPort.Open then
           ComPort.Open := true;
     except
        MsgDlg(Format(RAD_PortaSeriale,[FDMCommon.PortaSeriale]), '', ktError, [kbOK]);
     end;

  end;

end;

function TFDMCommon.vLocate(Grid: TcxGridDBTableView; pkKey: Integer): boolean;
var
  RecIdx: integer;
begin

    if (Grid=nil) then
      result := false
    else if not Grid.DataController.DataModeController.SyncMode then
      result := Grid.DataController.LocateByKey(pkKey)
    else begin
      result := Grid.DataController.LocateByKey(pkKey);
      if result then
      begin
        RecIdx := Grid.DataController.FindRecordIndexByKey(pkKey);
        if RecIdx<>-1 then
        begin
           if Grid.OptionsSelection.MultiSelect then
              Grid.DataController.ClearSelection;
           Grid.DataController.FocusedRecordIndex := RecIdx;
           Grid.Controller.FocusedRecord.Selected := true;
        end;
      end;
    end;
end;


function TFDMCommon.vFieldByName(Grid: TcxGridDBTableView; const nField: string; AVarType: TVarType): Variant;
var
  RecIdx: integer;
  ref: TcxCustomGridTableItem;
begin

      RecIdx := Grid.Controller.FocusedRecordIndex;
      ref := Grid.DataController.GetItemByFieldName(nField);

      if (RecIdx>=0) and (ref<>nil) and not (Grid.Controller.FocusedRecord is TcxGridGroupRow)
         and not VarIsNull(Grid.Controller.FocusedRecord.Values[ref.Index]) then
         result := varAsType(Grid.Controller.FocusedRecord.Values[ref.Index],AVarType)
      else
         case AVarType of
            varSmallInt,
            varInteger,
            varSingle,
            varShortInt,
            varDouble,
            varCurrency: result := -1;
            varDate:     result := varAsType(0, AVarType);
            varString,
            varOleStr:   result := '';
            varBoolean:  result := false;
            varByte,
            varWord,
            varLongWord,
            varInt64:    result := -1;
         else
            result := VarNull;
         end;
end;


function TFDMCommon.VarVuoto( val: Variant ): Boolean;
begin
  result := VarIsNull(val) or VarIsEmpty(val) or VarIsClear(val) or (val='');
end;

function TFDMCommon.VarToInt(val: Variant): Integer;
begin
  if not VarIsNull(val) and not VarIsEmpty(val) and not VarIsClear(val) then
     result := varAsType(val,varInteger)
  else
     result := -1;
end;

function TFDMCommon.VarToStr(val: Variant): string;
begin
  if not VarIsNull(val) and not VarIsEmpty(val) and not VarIsClear(val) then
     result := varAsType(val,varString)
  else
     result := '';
end;

function TFDMCommon.GetRealDragSourceGridView(const aSource: TObject): TcxGridDBTableView;
begin
  result := nil;
  if (TcxDragControlObject (aSource).Control is TcxGridSite) then begin
    result := TcxGridSite (TcxDragControlObject (aSource).Control).GridView as TcxGridDBTableView;
  end;
end;

function TFDMCommon.GetDragSourceGridView(const aSource: TObject): TcxGridDBTableView;
begin
  result := GetRealDragSourceGridView (aSource);
  if (result<>nil) and result.IsDetail then
    result := result.PatternGridView as TcxGridDBTableView;
end;

procedure TFDMCommon.LkOspedaliBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
//  Sender.Parambyname('osp_codice',gblospedale);
end;

function TFDMCommon.IsSelected( Grid: TcxGridDBTableView ): boolean;
var
  j: integer;
begin
  if Grid.CloneCount=0 then
  begin
     result := TcxGridDBTableView(Grid).Controller.SelectedRecordCount>0;
  end
  else begin
    result := false;
    j := 0;
    while not result and (j<Grid.CloneCount) do
    begin
       result := TcxGridDBTableView(Grid.Clones[j]).Controller.SelectedRecordCount>0;
       inc(j);
    end;
  end;
end;

procedure TFDMCommon.PossibiliBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('workstation_fk').AsInteger := gblpkworkstation;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  if LeggiPostoLavoroCONDIVIDI_AGENDE.AsInteger=0 then
  begin
     Sender.Parambyname('solo_rep').AsInteger := gblpkrep;
     Sender.Parambyname('codxrad_fk').AsString := '# and r.reparti_fk = rs.REPARTI_FK';
  end
  else begin
     Sender.Parambyname('solo_rep').Clear;
     Sender.Parambyname('codxrad_fk').AsString := '# and r.reparti_fk = s.reparti_fk';      
  end;
end;

procedure TFDMCommon.DetailFirst(ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
begin
  with (ADataSet as TAstaClientDataset) do
  begin
    if Active and (ParamByName(AMasterDetailKeyFieldNames).Value = AMasterDetailKeyValues) then
    begin
      First;
      Exit;
    end;
//    DisableControls;  --> viene già fatto in syRefresh...
//    try
      Active := False;
      ParamByName(AMasterDetailKeyFieldNames).Value := AMasterDetailKeyValues;
      syRefresh;
//    finally
//      EnableControls;
//    end;
    AReopened := True;
  end;
end;

function TFDMCommon.DetailIsCurrentQuery(ADataSet: TDataSet; const AMasterDetailKeyFieldNames: String;
        const AMasterDetailKeyValues: Variant): Boolean;
begin
  with (ADataSet as TAstaClientDataset) do
    Result := Active and (ParamByName(AMasterDetailKeyFieldNames).Value = AMasterDetailKeyValues);

end;

function TFDMCommon.CalcolaStatolancio(xstatovisita: integer; const xtipo_accesso: string): integer;
begin
    case xstatovisita of
    10,20,40,41: result := 0;
    100,110,120,121,122: result := 1;
    130: result := 2
    else
       result := -1;
    end;

    if (result>0) and ((xtipo_accesso='I') or (xtipo_accesso='P')) then
       result := result + 10; 

end;

procedure TFDMCommon.rsPropSaver1GetProperty(Sender, Instance: TObject;
  const PropName: String; var Value: Variant; var Allow: Boolean);
begin
  if PropName='SyncroServer' then
     Value := FSyncroServer
  else if PropName='SyncroPorta' then
     Value := FSyncroPorta
  else if PropName='Compressione' then
     Value := Compressione
  else if PropName='NomeWebUpdate' then
     Value := NomeWebUpdate
  else if PropName='SyncroServer2' then
     Value := FSyncroServer2
  else if PropName='SyncroPorta2' then
     Value := FSyncroPorta2
  else if PropName='LoginNT' then
     Value := FLoginNT;

end;

procedure TFDMCommon.rsPropSaver1SetProperty(Sender, Instance: TObject;
  const PropName: String; var Value: Variant; var Allow: Boolean);
begin
  if PropName='SyncroServer' then
     FSyncroServer := Value
  else if PropName='SyncroPorta' then
     FSyncroPorta := Value
  else if PropName='Compressione' then
     Compressione := Value
  else if PropName='NomeWebUpdate' then
     NomeWebUpdate := Value
  else if PropName='SyncroServer2' then
     FSyncroServer2 := Value
  else if PropName='SyncroPorta2' then
     FSyncroPorta2 := Value
  else if PropName='LoginNT' then
     FLoginNT := Value;

end;

procedure TFDMCommon.AstaClientSocketError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
var
  avanti: boolean;
//  SI: TStartupInfo;
//  PI: TProcessInformation;
//  fpatch: string;
begin
     avanti := false;

     case ErrorEvent of
     eeDisconnect,
     eeSend  : if AstaClientSocket.ReconnectTrial=0 then
               begin
                 AstaClientSocket.ServerHasResponded(True);
                 AstaClientSocket.CloseTheSocket;
                 PostMessage(Application.MainForm.Handle,SY_USERDISCONNECTED,0,0);
                 if AstaClientSocket.ReconnectMaxAttempt>0 then
                    exit;
               end;
     end;

     if (SyncroServer<>'') and (AstaClientSocket.ReconnectTrial<AstaClientSocket.ReconnectMaxAttempt) then
     begin
        AstaClientSocket.ReconnectTrial := AstaClientSocket.ReconnectTrial+1;
        AstaClientSocket.TimerReconnect(AstaClientSocket.ReconnectDelayTime);
        exit;
     end;

     if (FServerAttivo=1) then
     begin
        FServerAttivo := 2;
        AstaClientSocket.Active := false;
        AstaClientSocket.Address := SyncroServer;
        AstaClientSocket.Port := SyncroPorta;
        AstaClientSocket.ReconnectTrial := 0;
        WebUpdate1Status(self, AstaClientSocket.Address+':'+IntToStr(AstaClientSocket.Port),0,0);
        AstaClientSocket.FastConnectprimative(true, false, false);
//        AstaClientSocket.TimerReconnect(AstaClientSocket.ReconnectDelayTime);
        exit;
     end;

     AstaClientSocket.OnError := nil;
     try
     TmyAstaClientSocket(AstaClientSocket).DoError(Sender,Socket,ErrorEvent,ErrorCode);
     except
        on E: Exception do
//           MessageBox(0, pchar(E.Message), 'Errore...', MB_ICONERROR);
        raise;
     end;

     AstaClientSocket.OnError := AstaClientSocketError;

    if (SyncroServer='') then
    begin

      avanti := False; //SetupConfiguraAsta;

      if avanti then
      begin
        AstaClientSocket.Address := SyncroServer;
        AstaClientSocket.Port := SyncroPorta;
        WebUpdate1Status(self, AstaClientSocket.Address+':'+IntToStr(AstaClientSocket.Port),0,0);
        AstaClientSocket.FastConnectprimative(true, false, false);
      end;

    end;

  if not avanti then
  begin

     if (gblTipoLogin in [2,4]) then
     begin
         ExitWindowsEx(EWX_LOGOFF,0)
     end;

     if Assigned(FConfermaPswdRep) then
       FConfermaPswdRep.Close
     else begin
       Application.Terminate;
       Application.ProcessMessages;
     end;
     
  end;

end;

procedure TFDMCommon.AggiornaBatch;
begin
(*   per forzare aggiornamento da Asta ? => rivedere
     if Assigned(refW) then
     begin
        refW.Free;
        refW := nil;
     end;

     frmSplash := TfrmSplash.Create(Application);
     frmSplash.Show;
     frmsplash.Update;

     WebUpdate1.URL := format('http://%s/it4medUpdates/%s/update.inf',[NomeWebUpdate,SoloNome(ExtractFileName(Application.ExeName))]);
     WebUpdate1.DoUpdate;
     Application.ProcessMessages;

     if Assigned(frmSplash) then
     begin
        frmSplash.Free;
        frmSplash := nil;
     end;
*)
end;

procedure TFDMCommon.LogoutBatch;
begin

     FInChiusura := true;
     if Assigned(refW) then
     begin
        refW.Free;
        refW := nil;
     end;
     AstaClientSocket.Active := false;
     AstaMultiSite.Active := false;

//     MsgDlg(RAD_Manutenzione,'', ktInformation, [kbOk]);

     if (gblTipoLogin in [2,4]) then
        ExitWindowsEx(EWX_LOGOFF,0);
     Application.Terminate;
     Application.ProcessMessages;

end;

function TFDMCommon.SetPrinter(const PrinterName: String): boolean;
var
  s2 : string;
  dum1 : Pchar;
  xx, qq : integer;
const
  cs1 : pchar = 'Windows';
  cs2 : pchar = 'Device';
  cs3 : pchar = 'Devices';
  cs4 : pchar = #0;

begin
  xx := 254;
  GetMem( dum1, xx);
  Result := False;
  try
    qq := GetProfileString( cs3, pchar( printerName ), #0, dum1, xx);
    if (qq > 0) and (trim( strpas( dum1 )) <> '')
    then begin
      s2 := PrinterName + ',' + strpas( dum1 );
      while GetProfileString( cs1, cs2, cs4, dum1, xx) > 0 do
        WriteProfileString( cs1, cs2, #0);
      WriteProfileString( cs1, cs2, pchar( s2 ));
      case Win32Platform of
       VER_PLATFORM_WIN32_NT :
         SendMessage( HWND_BROADCAST, WM_WININICHANGE, 0, LongInt(cs1));
       VER_PLATFORM_WIN32_WINDOWS :
         SendMessage( HWND_BROADCAST, WM_SETTINGCHANGE, 0, LongInt(cs1));
      end;
      Result := True;
    end;
finally
  FreeMem( dum1 );
end;
end;

procedure TFDMCommon.AstaClientSocketDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
   if not FInChiusura and (AstaClientSocket.ReconnectMaxAttempt>0) and (AstaClientSocket.ReconnectTrial=0) then
   begin
      PostMessage(Application.MainForm.Handle,SY_USERDISCONNECTED,0,0);
      AstaClientSocket.ReconnectTrial := AstaClientSocket.ReconnectTrial+1;
      AstaClientSocket.TimerReconnect(AstaClientSocket.ReconnectDelayTime);
   end;
end;


procedure TFDMCommon.AstaMultiSiteDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
{
   if not FInChiusura and (AstaMultiSite.ReconnectMaxAttempt>0) and (AstaMultiSite.ReconnectTrial=0) then
   begin
      AstaMultiSite.ReconnectTrial := AstaMultiSite.ReconnectTrial+1;
      AstaMultiSite.TimerReconnect(AstaMultiSite.ReconnectDelayTime);
   end;
}
end;

procedure TFDMCommon.AssegnaCheckAnagrafica(StatoLancio: integer; var CheckNascita,CheckResidenza: boolean);
begin

     case StatoLancio of
     0:
     begin
       CheckNascita := (FDMCommon.LeggiPostoLavoroCHECK_NASCITA.AsInteger=1);
       CheckResidenza := (FDMCommon.LeggiPostoLavoroCHECK_RESIDENZA.AsInteger=1);
     end;
     1:
     begin
       CheckNascita := (FDMCommon.LeggiPostoLavoroCHECK_NASCITA_ACC.AsInteger=1);
       CheckResidenza := (FDMCommon.LeggiPostoLavoroCHECK_RESIDENZA_ACC.AsInteger=1);
     end;
     2:
     begin
       CheckNascita := (FDMCommon.LeggiPostoLavoroCHECK_NASCITA_ESEC.AsInteger=1);
       CheckResidenza := (FDMCommon.LeggiPostoLavoroCHECK_RESIDENZA_ESEC.AsInteger=1);
     end;
     10:
     begin
       CheckNascita := (FDMCommon.LeggiPostoLavoroCHECK_I_NASCITA.AsInteger=1);
       CheckResidenza := (FDMCommon.LeggiPostoLavoroCHECK_I_RESIDENZA.AsInteger=1);
     end;
     11:
     begin
       CheckNascita := (FDMCommon.LeggiPostoLavoroCHECK_I_NASCITA_ACC.AsInteger=1);
       CheckResidenza := (FDMCommon.LeggiPostoLavoroCHECK_I_RESIDENZA_ACC.AsInteger=1);
     end;
     12:
     begin
       CheckNascita := (FDMCommon.LeggiPostoLavoroCHECK_I_NASCITA_ESEC.AsInteger=1);
       CheckResidenza := (FDMCommon.LeggiPostoLavoroCHECK_I_RESIDENZA_ESEC.AsInteger=1);
     end;
     else begin
       CheckNascita := false;
       CheckResidenza := false;
     end
     end;

end;


procedure TFDMCommon.AstaMultiSiteError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
     case ErrorEvent of
     eeDisconnect,
     eeSend  : if AstaMultiSite.ReconnectTrial=0 then
               begin
                 AstaMultiSite.ServerHasResponded(True);
                 AstaMultiSite.CloseTheSocket;
                 if AstaMultiSite.ReconnectMaxAttempt>0 then
                    exit;
               end;
     end;

     if (AstaMultiSite.ReconnectTrial<AstaMultiSite.ReconnectMaxAttempt) then
     begin
        AstaMultiSite.ReconnectTrial := AstaMultiSite.ReconnectTrial+1;
        AstaMultiSite.TimerReconnect(AstaMultiSite.ReconnectDelayTime);
        exit;
     end;

     if (FServerMulti=1) then
     begin
        FServerMulti := 2;
        AstaMultiSite.Active := false;
        AstaMultiSite.Address := MultiSiteSITE_ADDRESS2.AsString;
        AstaMultiSite.Port := MultiSiteSITE_PORT2.AsInteger;
        AstaMultiSite.ReconnectTrial := 0;
        WebUpdate1Status(self, AstaMultiSite.Address+':'+IntToStr(AstaMultiSite.Port),0,0);
        AstaMultiSite.FastConnectprimative(true, false, false);
//        AstaClientSocket.TimerReconnect(AstaClientSocket.ReconnectDelayTime);
        exit;
     end;

     AstaMultiSite.OnError := nil;
     try
        TmyAstaClientSocket(AstaMultiSite).DoError(Sender,Socket,ErrorEvent,ErrorCode);
        AstaMultiSite.ReconnectTrial := 0;
     except
        on E: Exception do
           MessageBox(0, pchar(E.Message), 'Errore...', MB_ICONERROR);
//        raise;
     end;

     AstaMultiSite.OnError := AstaMultiSiteError;

end;


procedure TFDMCommon.AltriEsamixSitoBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
	Sender.Parambyname('pkreparti').AsInteger := gblpkrep;
end;

procedure TFDMCommon.ApriEsamiPreno;
var
  i: integer;
begin
  if not Assigned(EsamiPreno) then
  begin
    Possibili.Filter := format('REP_OWNER = %d',[gblpkrep]);
    Possibili.Filtered := true;
    EsamiPreno := FiltraEsami(Possibili,gblpkrep);
    if FDMCommon.IsUserCup then
    begin
      AltriEsamixSito.syrefresh;
      while not AltriEsamixSito.Eof do
      begin
          if not EsamiPreno.Locate('CODICE',AltriEsamixSitoCODICE.AsString,[]) then
          begin
             EsamiPreno.Insert;
             for i:=0 to AltriEsamixSito.Fieldcount-1 do
                 if EsamiPreno.FindField(AltriEsamixSito.Fields[i].FieldName)<>nil then
                    EsamiPreno.FieldbyName(AltriEsamixSito.Fields[i].FieldName).Value := AltriEsamixSito.Fields[i].Value;
             EsamiPreno.Post;
          end;
          AltriEsamixSito.Next;
      end;
    end;
    Possibili.Filtered := false;
  end;
end;

{ Converts RTF to ANSI  }

function TFDMCommon.RTFToANSI(const input: string): string;
var
  C: Char;
  source, dest: PChar;
  Hidden, NeedSpace: Boolean;
  l: Integer;
  procedure PROCEED(SKIPPING: BOOLEAN);
    function PARSERTFKEYWORD(P: PCHAR): BOOLEAN;
    var
      com: string;
      b: Integer;
      procedure CODEHEX(CH: CHAR);
      begin
        if (ch >= '0') and (ch <= '9') then
          b := b + Integer(ch) - Integer('0')
        else if (ch >= 'a') and (ch <= 'f') then
          b := b + 10 + Integer(ch) - Integer('a')
        else if (ch >= 'A') and (ch <= 'F') then
          b := b + 10 + Integer(ch) - Integer('A');
      end;
    begin
      com := '';
      Result := FALSE;
      if p^ = #39 then { Found Hex code }
      begin
        inc(p);
        if p^ = #0 then exit;
        b := 0;
        CodeHex(p^);
        b := b * 16;
        inc(p);
        if p^ = #0 then exit;
        CodeHex(p^);
        if b > 0 then
        begin
          dest^ := Char(b);
          inc(dest);
          inc(l);
        end;
        inc(p);
        Source := p;
        exit;
      end;


      while (Integer(p^) > 32) and (p^ <> '\') and (p^ <> '{') and (p^ <> '}')
        do
      begin
        com := com + p^;
        inc(p);
      end;

      if (com = 'fonttbl') or (com = '*') or
        (com = 'footnote') or (com = 'field') or
        (com = 'pict') or (com = 'footer') or
        (com = 'header') then
        Result := TRUE
      else
      begin
        if com = 'par' then
        begin
          dest^ := #13; inc(dest); dest^ := #10; inc(dest); inc(l, 2);
        end
        else if com = 'lin' then
        begin
          dest^ := #10; inc(dest); inc(l);
        end
        else if com = 'v' then
          Hidden := TRUE
        else if com = 'pard' then
          Hidden := FALSE
        else if com = 'plain' then
          Hidden := FALSE;
      end;

      if p^ = #32 then inc(p);
      if com = '' then
      begin
        if (p^ = '\') or (p^ = '{') or (p^ = '}') then
        begin
          dest^ := p^;
          inc(dest);
          inc(l);
          inc(p);
        end;
      end;
      Source := p;
    end;
  begin
    while TRUE do
    begin
      C := source^;
      if c = #0 then
        exit
      else if C = '}' then
      begin
        inc(source);
        NeedSpace := FALSE; //?
        exit;
      end
      else if C = '{' then
      begin
        inc(source); Proceed(Skipping);
      end
      else if C = '\' then
      begin
        if Skipping then
          inc(source)
        else
          Skipping := ParseRTFKeyword(source + 1)
      end
      else if not Skipping and not Hidden then
      begin
        if source^ >= #32 then
        begin
          if NeedSpace then
          begin
            dest^ := #32;
            inc(dest);
            NeedSpace := FALSE;
          end;
          dest^ := source^;
          inc(dest);
          inc(l);
        end
        else if (Source^ = #13) or (Source^ = #10) then
        begin
          NeedSpace := FALSE; //JRT: ex TRUE;
        end;
        inc(source);
      end
      else
        inc(source);
    end;
  end;
begin
  if Copy(input,1,5)='{\rtf' then
  begin
    NeedSpace := FALSE;
    l := Length(input);
    SetLength(Result, l);
    source := PChar(input);
    Dest := PChar(Result);
    l := 0;
    Proceed(FALSE);
    SetLength(Result, l);
    Result := trim(Result);
  end
  else
    Result := input;
end;

procedure TFDMCommon.WebUpdate1Success(Sender: TObject);
begin
    //
end;

procedure TFDMCommon.acPingTimerSleep(Sender: TObject);
begin
  if AstaClientSocket.Active then
     AstaClientSocket.SendCodedMessage(-1,'');

end;

procedure TFDMCommon.edrepNomePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  nome: string;
begin
  nome := VarAsType(DisplayValue,varString);
  if Error and (Length(nome)=1) then
  begin
     Error := False;
  end;
end;

procedure TFDMCommon.MediciBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  if not gblSuperUser then
     Sender.Parambyname('escludi').AsString := '# and u.admin=0';

end;

procedure TFDMCommon.ConnettiMultiSite(var volte,res: integer);
var
  ParamList: TAstaParamList;
  timeIn: TDateTime;
  xTimeOut: integer;  
begin

  if gblDebugMode then
    xTimeOut := 120
  else
    xTimeOut := 15;

  FMsLoginAccettato := lmInAttesa;
  repeat

      if FMsLoginAccettato=lmInAttesa then
      begin
        ParamList := TAstaParamList.Create;
        try
          ParamList.FastAdd('pkuser', gblCodUtente);
          ParamList.FastAdd('username', gblNomeUtente);
          ParamList.FastAdd('computername', NomeComputer);
          ParamList.FastAdd('versione', xversione);
          AstaMultiSite.SendCodedParamList(1001, ParamList);
        finally
          ParamList.Free;
        end;
      end;

      timeIn := Now();
      while (FMsLoginAccettato in [lmInAttesa,lmChiudiRemoto]) and (SecondsBetween(Now(),TimeIn)<xTimeOut) do
             Application.HandleMessage; // ex: Application.ProcessMessages;

      case FMsLoginAccettato of
      lmRifiutato:
      begin
         if MsgDlg(format(RS_UserPresente,[FComputerGiaConnesso,FIPGiaConnesso]),'', ktWarning, [kbYes,kbNo])=mrYes then
         begin
            ParamList := TAstaParamList.Create;
            try
              ParamList.FastAdd('pkuser', gblCodUtente);
              ParamList.FastAdd('username', gblNomeUtente);
              ParamList.FastAdd('computername', FComputerGiaConnesso);
              ParamList.FastAdd('ipaddress', FIPGiaConnesso);
              ParamList.FastAdd('versione', xversione);
              AstaClientSocket.SendCodedParamList(1004, ParamList);
            finally
              ParamList.Free;
            end;
            FLoginAccettato := lmChiudiRemoto;
            res := mrCancel;
            volte := 0;
         end
         else begin
           res := mrRetry;
//           if (gblTipoLogin in [1,2]) then
             volte := 3;
         end;
      end;
      lmInAttesa:
      begin
         MsgDlg(format(RS_ServerNonDisponibile,[AstaClientSocket.Address]),'', ktError, [kbOK]);
         res := mrCancel;
         volte := 3;
      end;
{
      lmNonDisponibile:
      begin
         if FServerAttivo=1 then
         begin
            FServerAttivo := 2;
            res := mrCancel;
            volte := 1;
            AstaClientSocket.Close;
            AstaClientSocket.Address := SyncroServer;
            AstaClientSocket.Port := SyncroPorta;
            WebUpdate1Status(self, AstaClientSocket.Address+':'+IntToStr(AstaClientSocket.Port),0,0);
            AstaClientSocket.FastConnectprimative(true, false, false);
         end
         else begin
           MsgDlg(RS_ServerNonDisponibile,'', ktInformation, [kbOK]);
           res := mrCancel;
           volte := 3;
         end;
      end;
}
      else
           res := mrOk;
      end;
  until (res=mrOk) or ((res=mrCancel) and (volte=3)) or (res=mrRetry);

end;

procedure TFDMCommon.AstaMultiSiteConnect(Sender: TObject;
  Socket: TCustomWinSocket);
var
  res,volte: integer;
begin

  res := mrOk;
  volte := 0;
  ConnettiMultiSite(volte,res);
  if res=mrOk then
  begin
    AstaMultiSite.ReconnectTrial := 0;
  end;

  AstaMultiSite.ReconnectTrial := 0;

  if gblDebugMode then
     AstaMultiSite.ReconnectMaxAttempt := AstaMultiSite.ReconnectMaxAttempt * 10;

end;

procedure TFDMCommon.DiagnxRepBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
	Sender.Parambyname('pkreparti').AsInteger := gblpkrep;
  Sender.Parambyname('workstation_fk').AsInteger := gblpkworkstation;  
end;

// -----------------------------------------------------------------------------

constructor TsyIE.Create(AOwner: TComponent);
begin
  FIEC := CreateOleObject('InternetExplorer.Application'); // as IWebBrowser2;
  FintHandle := FIEC.hwnd;
end;

destructor TsyIE.Destroy;
var
  pID : DWORD;
  Process : THandle;
begin
  Windows.GetWindowThreadProcessId(FintHandle, @pID);
  Process := OpenProcess(PROCESS_ALL_ACCESS, false, pID);
  TerminateProcess(Process, 0);
  FIEC := Unassigned;   // nil;
  inherited;
end;

function TsyIE.GetIEVisible: boolean;
begin
  try
  result := FIEC.Visible;
  except
     result := false;
  end;
end;

procedure TsyIE.SetIEVisible(Value: boolean);
begin
  try
     FIEC.Visible := Value;
  except
  end;
end;

procedure TsyIE.Vuoto(ptipo: TpTipoImg = tptChiudi);
begin
//  if Assigned(FIEC) then
    try
     FIEC.Visible := false;
    except
    end;
end;


procedure TsyIE.AccNumber(pkt: integer; bookmark: boolean; pkc: integer);
var
  WinHanlde : HWnd;
  aURL: OleVariant;
  nrm: integer;
//  FullScreenX: string;

  function GetIEVersion(): integer;
  var
    Reg: TRegistry;
    temp: string;
  begin
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_LOCAL_MACHINE;
      Reg.OpenKey('Software\Microsoft\Internet Explorer', False);
      try
        temp := Reg.ReadString('Version');
        Result := StrToInt(Copy(temp,1,Pos('.',temp)-1));
      except
        Result := 0;
      end;
      Reg.CloseKey;
    finally
      Reg.Free;
    end;
  end;


  procedure Visualizza;
  var
      Flags, TargetFrameName, PostData, Headers: OleVariant;
  begin

  case GetIEVersion() of
  6: begin
{
      FIEC.FullScreen := false; // not gblDebugMode;
      FIEC.AddressBar := true; // gblDebugMode;
      FIEC.MenuBar := False;
      FIEC.StatusBar := False;
      FIEC.ToolBar := 0; // true; // gblDebugMode;
      FIEC.Resizable := True;
}
      FIEC.Top := FDMCommon.xWorkAreaRect.Top;  // 0;
      FIEC.Left := FDMCommon.xWorkAreaRect.Left;  // 0;
      FIEC.Height := FDMCommon.xWorkAreaRect.Bottom - FDMCommon.xWorkAreaRect.Top +1;
      if Screen.Monitorcount>1 then
         nrm := Screen.Monitorcount-1
      else
         nrm := 1;
      FIEC.Width := (FDMCommon.xWorkAreaRect.Right - FDMCommon.xWorkAreaRect.Left +1) * nrm;
//      FIEC.Resizable := false;
     end;
  7,8: begin
      FIEC.FullScreen := false;
      FIEC.AddressBar := gblSuperUser;
//      FIEC.MenuBar := False;
//      FIEC.StatusBar := False;
//      FIEC.ToolBar := false;
//      FIEC.Resizable := False;
//      FIEC.TheaterMode := True;
{
      try
         FullScreenX := FDMCommon.GetRegistryData(HKEY_LOCAL_MACHINE,'\Software\Fuji Medical Systems USA\Synapse\Workstation\Monitor Configuration', 'FullScreenX');
      except
         FullScreenX := '';
         raise;
      end;
}
      FIEC.Top := FDMCommon.xWorkAreaRect.Top;  // 0;
      FIEC.Left := FDMCommon.xWorkAreaRect.Left; //StrToIntDef(FullScreenX,0);
      FIEC.Height := FDMCommon.xWorkAreaRect.Bottom - FDMCommon.xWorkAreaRect.Top +1;
      if Screen.Monitorcount>1 then
         nrm := Screen.Monitorcount-1
      else
         nrm := 1;
      FIEC.Width := (FDMCommon.xWorkAreaRect.Right - FDMCommon.xWorkAreaRect.Left +1) * nrm;
     end;
  end;

  FIEC.Navigate2(aUrl,Flags,TargetFrameName,PostData,Headers);
  FIEC.Visible := true;

  end;

begin

      if FDMCommon.VerificaEsame(pkt, pkc, bookmark, aURL) then
      begin
        WinHanlde := FindWindow('IEFrame', nil);
        if (WinHanlde<>0) then
        begin
          try
          Visualizza;
          SetForegroundWindow(WinHanlde);
          except
//            if FIEC<>Unassigned then
               FIEC := Unassigned;   // nil;
            FIEC := CreateOleObject('InternetExplorer.Application'); // as IWebBrowser2;
            FintHandle := FIEC.hwnd;
            Visualizza;
          end;
        end
        else
        begin
//          if FIEC<>Unassigned then
             FIEC := Unassigned;   // nil;
          FIEC := CreateOleObject('InternetExplorer.Application'); // as IWebBrowser2;
          FintHandle := FIEC.hwnd;
          Visualizza;
    //      SetForegroundWindow(WinHanlde);
        end;
      end;

end;


function TFDMCommon.VerificaEsame(pkt: Integer; pkc: Integer; bookmark: boolean; var aURL: OleVariant): Boolean;
var
  accnumc: string;
begin

  result := false;
  accnumc := '';
  if pkc>0 then
  begin
    FDMCommon.qPacs.Parambyname('pktriage').AsInteger := pkc;
    FDMCommon.qPacs.syRefresh;
    if not (FDMCommon.qPacsPACS.IsNull or (FDMCommon.qPacsPACS.AsString='') or FDMCommon.qPacsRIS_STUDY_EUID.IsNull) then
       accnumc := ','+FDMCommon.qPacsRIS_STUDY_EUID.AsString;
  end;

  FDMCommon.qPacs.Parambyname('pktriage').AsInteger := pkt;
  FDMCommon.qPacs.syRefresh;
  if FDMCommon.qPacsPACS.IsNull or (FDMCommon.qPacsPACS.AsString='') then
  begin
     MsgDlg(RIS_PACSNonConf, '', ktError, [kbOk], dfFirst);
     exit;
  end;

  if (FDMCommon.qPacsREPARTI_FK.AsInteger<>gblpkrep) and (FDMCommon.LeggiPostoLavoroNO_IMG_ESTERNE.AsInteger=1) then
  begin
     MsgDlg(RIS_NoImgEsterne, '', ktInformation, [kbOk], dfFirst);
     exit;
  end;

  if not FDMCommon.qPacsPACS_QR.IsNull and
     (FDMCommon.LeggiPostoLavoroCHK_CHECK_IMG.AsInteger=1) and
     (FDMCommon.qPacsPACS_FK.AsInteger<>FDMCommon.qPacsPACS_TRIAGE_FK.AsInteger) then
  begin
    FDMCommon.EsameInPacs.Parambyname('pris_study_euid').AsString := FDMCommon.qPacsRIS_STUDY_EUID.AsString;
    FDMCommon.EsameInPacs.Parambyname('ppid').AsString := FDMCommon.qPacsPID.AsString;
    FDMCommon.EsameInPacs.Parambyname('ppacs_fk').AsInteger := FDMCommon.qPacsPACS_FK.AsInteger;
    FDMCommon.EsameInPacs.Parambyname('ptipo_modalita').Clear;
    FDMCommon.EsameInPacs.ExecSQL;
    result := (FDMCommon.EsameInPacs.Parambyname('res').AsInteger<>1);
  end
  else
     result := true;

  if result then
  begin
    FDMCommon.CodiceErrore.Parambyname('triage_fk').AsInteger := pkt;
    FDMCommon.CodiceErrore.syrefresh;
    if not FDMCommon.CodiceErrore.Eof and (FDMCommon.CodiceErroreTIPO_BLOCCO.AsInteger in [2,3]) then
       MsgDlg(format(RIS_ERRORE_PACS,[FDMCommon.CodiceErroreTECNICO.AsString,FDMCommon.CodiceErroreDATA_ERR.AsString,FDMCommon.CodiceErroreTESTO_ERRORE.AsString]),'',ktInformation,[kbOk]);

    aURL := BMStringReplace(FDMCommon.qPacsURL_IMMAGINI.AsString,'%PACSIP%',FDMCommon.qPacsPACS.AsString,[]);
    aURL := BMStringReplace(aURL,'%COMPUTER%',FDMCommon.NomeComputer,[]);
    aURL := BMStringReplace(aURL,'%PID%',FDMCommon.qPacsPID.AsString,[]);
    aURL := BMStringReplace(aURL,'%USER%',gblLoginNT,[]);
    aURL := BMStringReplace(aURL,'%PSWD%',gblpswd,[]);

    if not bookmark then
       aURL := BMStringReplace(aURL,'%ACCNUM%',FDMCommon.qPacsRIS_STUDY_EUID.AsString+accnumc,[])
    else
       aURL := BMStringReplace(aURL,'%ACCNUM%',FDMCommon.qPacsRIS_STUDY_EUID.AsString+'/Bookmarks',[]);
  end
  else //if not bookmark then
  begin
       MsgDlg(Format(RIS_ImmaginiNonInArchivio,[FDMCommon.qPacsNOME_PACS.AsString,FDMCommon.qPacsRIS_STUDY_EUID.AsString,FDMCommon.qPacsPACS.AsString]),'',ktError,[kboK]);
  end;

end;


constructor TsyShellEx.Create(AOwner: TComponent);
begin
    New(lpExecInfo);
    ZeroMemory(lpExecInfo,SizeOf(TShellExecuteInfo));
    lpExecInfo.cbSize:=SizeOf(TShellExecuteInfo);

    with lpExecInfo^ do
    begin
        fMask := SEE_MASK_NOCLOSEPROCESS;
        Wnd := Application.Handle;
        lpVerb := 'open';
        lpParameters := nil;
        lpDirectory := nil;
        hInstApp := 0; //Handle all'instanza di Applicazione - ritorno
        lpIDList := nil;
        lpClass := nil;
        hkeyClass := 0; // GetKey('\CLSID\{1FBD11EF-1260-11D1-87A7-444553540001}');
        dwHotKey := 0;
        hProcess := 0;
        if FDMCommon.DoppioMonitor then
           nShow := SW_SHOWNOACTIVATE
        else
           nShow := SW_SHOWNORMAL;
    end;

    if gbldebugmode then
    begin
      LogInfo := TSyLogInfo.Create(GetTheComputerName,True,True);
      LogInfo.LogEnabled := true;
//      LogInfo.ImmediateWrite := true;
    end;

end;

destructor TsyShellEx.Destroy;
begin
  ChiudiTask;
  Dispose(lpExecInfo);
  if gblDebugMode then
     LogInfo.CloseLogFile;
  inherited;
end;

procedure TsyShellEx.ChiudiTask;
begin
  try
//  CloseHandle(lpExecInfo.hProcess);
//    Vuoto(tptLogout);
  except
  end;
end;

procedure TsyShellEx.Vuoto(ptipo: TpTipoImg = tptChiudi);
var
  xURL: string;
  res: BOOL;
begin
    if not FDMCommon.LeggiPostoLavoroWPACS_FK.IsNull then
    begin
      FDMCommon.TabPacs.Locate('PKPACS',FDMCommon.LeggiPostoLavoroWPACS_FK.AsInteger,[]);
      xURL := '';
      case ptipo of
      tptLogin:  xURL := FDMCommon.TabPacsURL_LOGIN.AsString;
      tptChiudi: xURL := FDMCommon.TabPacsURL_CHIUDI.AsString;
      tptLogout: xURL := FDMCommon.TabPacsURL_LOGOUT.AsString;
      end;

      if xURL<>'' then
      begin
        xURL := BMStringReplace(xURL,'%PACSIP%',FDMCommon.TabPacsPACS.AsString,[]);
        xURL := BMStringReplace(xURL,'%COMPUTER%',FDMCommon.NomeComputer,[]);
        xURL := BMStringReplace(xURL,'%USER%',gblLoginNT,[]);
        xURL := BMStringReplace(xURL,'%PSWD%',gblpswd,[]);

        lpExecInfo.lpFile := PChar(xURL);

        if gbldebugmode then
           LogInfo.Add(xURL);

        res := ShellExecuteEx(lpExecInfo);
        if not res then
        begin
    //           MsgDlg(Format('Errore %d',[res]), '', ktError, [kbOk], dfFirst);
           MsgDlg(SysErrorMessage(GetLastError), '', ktError, [kbOk], dfFirst);
        end;
      end;

    end;
end;

procedure TsyShellEx.ShellShow( pkt: integer; bookmark: boolean; pkc: integer );
var
  aURL: OleVariant;
  tempUrl: string;
  res: BOOL;
begin

    if FDMCommon.VerificaEsame(pkt, pkc, bookmark, aURL) then
    begin
        tempUrl := aUrl;

        if gbldebugmode then
           LogInfo.Add(tempUrl);

        lpExecInfo.lpFile := PChar(tempUrl);
        res := ShellExecuteEx(lpExecInfo);
        if not res then
        begin
//           MsgDlg(Format('Errore %d',[res]), '', ktError, [kbOk], dfFirst);
           MsgDlg(SysErrorMessage(GetLastError), '', ktError, [kbOk], dfFirst);
        end;
    end;

end;

// ---------------------------------------------------------------

procedure TFDMCommon.ServiziRadiologiaBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFDMCommon.AllocaModalita(pki: integer);
var
   i: integer;
begin
{$IFNDEF MEDICORNER}
   qAllocaModalita.Parambyname('pkimpegnative').AsInteger := pki;
   qAllocaModalita.syRefresh;
   while not qAllocaModalita.eof do
   begin
      if qAllocaModalitaALLOCA_MODALITA.AsInteger=1 then
      begin
          FAssegnaModalita := TFAssegnaModalita.Create(nil);
          try
             FAssegnaModalita.ModxDiagn.Parambyname('diagnostica_fk').AsInteger := qAllocaModalitaDIAGNOSTICA_FK.AsInteger;
             FAssegnaModalita.ModxDiagn.syrefresh;
             FAssegnaModalita.CaricaRadioGroup;
             if not qAllocaModalitaAETITLE.IsNull then
             begin
                for i:=0 to FAssegnaModalita.cxModalita.Properties.Items.Count-1 do
                if TcxRadioGroupItem(FAssegnaModalita.cxModalita.Properties.Items[i]).Value=qAllocaModalitaAETITLE.AsString then
                begin
                   FAssegnaModalita.cxModalita.ItemIndex := i;
                end;
             end;

             if FAssegnaModalita.ShowModal=mrOk then
             begin
                qAllocaModalita.Edit;
                qAllocaModalitaAETITLE.AsString := TcxRadioGroupItem(FAssegnaModalita.cxModalita.Properties.Items[FAssegnaModalita.cxModalita.ItemIndex]).Value;
                qAllocaModalita.Post;
             end;
          finally
             FAssegnaModalita.Free;
          end;
      end;
      qAllocaModalita.Next;
   end;
{$ENDIF}
end;

procedure TFDMCommon.RadiofarmaciBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.ParamByName('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFDMCommon.AstaMultiSiteCodedParamList(Sender: TObject;
  MsgID: Integer; Params: TAstaParamList);
begin
  case MsgId of
   1001: begin
           case Params[0].AsInteger of
           0: FMsLoginAccettato := lmAccettato;
           1: begin
                 FMsLoginAccettato := lmRifiutato;
                 if Params.FindParam('computername')<>nil then
                    FMsGiaConnesso := Params.Parambyname('computername').AsString+' ('+Params.Parambyname('ipaddress').AsString+')'
                 else
                    FMsGiaConnesso := '';
              end;
           2: FMsLoginAccettato := lmNonDisponibile;
           end;
         end;
   1090: begin
           case Params[0].AsInteger of
           0: FMsLoginAccettato := lmAccettato;
           1: begin
                 FMsLoginAccettato := lmRifiutato;
                 if Params.FindParam('computername')<>nil then
                    FMsGiaConnesso := Params.Parambyname('computername').AsString+' ('+Params.Parambyname('ipaddress').AsString+')'
                 else
                    FMsGiaConnesso := '';
              end;
           2: FMsLoginAccettato := lmNonDisponibile;
           end;
         end;
{
   1095: begin
           case Params[0].AsInteger of
           1: PostMessage(Application.MainForm.Handle,SY_UPGRADEAPPLICATION,0,0);
           2: begin
                 if Params.FindParam('messaggio')<>nil then
                    MsgReceived := Params.FindParam('messaggio').AsString
                 else
                    MsgReceived := '';
                 PostMessage(Application.MainForm.Handle,SY_LOGOUT,0,0);
              end;
           3: PostMessage(Application.MainForm.Handle,SY_SWITCHASTA,0,0);
           end;
         end;
}
  end;

end;

procedure TFDMCommon.cdMasterBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;


procedure TFDMCommon.rsXMLData1LoadFromStream(Sender: TObject;
  Stream: TStream; var DoStandard: Boolean);
begin
{
    if AstaClientSocket.Active then
    begin
       qPreferenze.Parambyname('user_id', gblCodUtente);
       qPreferenze.open;
       if not qPreferenze.IsEmpty and not qPreferenzePREFERENZE.IsNull then
         qPreferenzePREFERENZE.SaveToStream(Stream);
       qPreferenze.close;
    end;
}
  DoStandard := true;

end;

procedure TFDMCommon.rsXMLData1SaveToStream(Sender: TObject;
  Stream: TStream; var DoStandard: Boolean);
begin
{
    if AstaClientSocket.Active then
    begin
       qPreferenze.Parambyname('user_id', gblCodUtente);
       qPreferenze.open;
       if not qPreferenze.IsEmpty then
       begin
         qPreferenze.Edit;
         qPreferenzePREFERENZE.LoadFromStream(Stream);
         qPreferenze.Post;
       end;
       qPreferenze.close;
    end;
}
  DoStandard := true;

end;

procedure TFDMCommon.DipxRepBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('radiologia').AsInteger := gblpkrep;
end;

procedure TFDMCommon.DipxServBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('radiologia').AsInteger := gblpkrep;
end;

procedure TFDMCommon.OneInstance1Loaded(Sender: TObject);
begin
  if gblDebugMode then
     OneInstance1.Active := false;

end;

procedure TFDMCommon.ProfiliNewRecord(DataSet: TDataSet);
begin
    ProfiliIMMAGINI.AsInteger := 0;
    ProfiliREFERTO.AsInteger := 0;
    ProfiliBLOCCHI.AsInteger := 0;
    ProfiliESEGUITO.AsInteger := 0;
    ProfiliCUP.AsInteger := 0;

end;

procedure TFDMCommon.AssegnaRefertiBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  if not gblSuperUser then
     Sender.Parambyname('escludi').AsString := '# and u.admin=0';
end;

procedure TFDMCommon.SetVisible(xColumn: TcxGridDBColumn; Value: boolean);
begin

  if xColumn.Visible<>Value then
    xColumn.Visible := Value;

  xColumn.VisibleForCustomization := False;  //Value;
  xColumn.Options.Filtering := Value and not (xColumn.DataBinding.Field.DataType in [ftSmallint,ftInteger,ftWord,ftFloat,ftCurrency,ftBlob,ftMemo,ftOraBlob,ftOraClob]);

end;

procedure TFDMCommon.WebUpdate1DownloadedWhatsNew(Sender: TObject;
  Text: TStrings; var Res: Integer);
begin
  MsgDlg(Text.Text, 'News it4med', ktInformation, [kbOK]);
  Res := mrOk;
end;

// -- per fare il refresh sullo Scheduler da un Dataset
procedure TFDMCommon.RefreshScheduler(cxSchedulerDBStorage: TcxSchedulerDBStorage; eEvent: TcxSchedulerControlEvent);
var
   Field: TcxSchedulerDBStorageField;
   x: Integer;
begin
(*
   // -- trucco per fare il refresh sullo Scheduler
   cxSchedulerDBStorage.BeginUpdate;
   with cxSchedulerDBStorage.DataSource do
   for x:=0 to DataSet.Fields.Count-1 do
   begin
     Field := TcxSchedulerDBStorageField(TcxSchedulerDBStorageAccess(cxSchedulerDBStorage).DataController.GetItemByFieldName(Dataset.Fields[x].FieldName));
     if Assigned(Field) then
        with TcxSchedulerDBStorageAccess(cxSchedulerDBStorage) do
//        if MakeFocused(eEvent.Source) then
           DataController.Values[DataController.FocusedRecordIndex, Field.Index] := Dataset.Fields[x].Value;
   end;
   cxSchedulerDBStorage.EndUpdate;
*)
end;

function TFDMCommon.GeneraAlert(xREPARTI_FK: Integer; xURGENZA: Integer; xDIAGNOSTICA_FK: integer): boolean;
begin
   result := qAlertxRep.Locate('REPARTI_FK;URGENZA_FK;DIAGNOSTICA_FK',VarArrayOf([xREPARTI_FK, -1, -1]),[]);
   if not result then
   begin
      result := qAlertxRep.Locate('REPARTI_FK;URGENZA_FK;DIAGNOSTICA_FK',VarArrayOf([xREPARTI_FK, xURGENZA, -1]),[]);
      if not result then
      begin
         result := qAlertxRep.Locate('REPARTI_FK;URGENZA_FK;DIAGNOSTICA_FK',VarArrayOf([xREPARTI_FK, xURGENZA, xDIAGNOSTICA_FK]),[]);
      end;
   end;
end;


procedure TFDMCommon.PopulateImages(AImageComboBoxProperties: TcxImageComboBoxProperties);
var
  I: Integer;
  ACurrentImages: TCustomImageList;
  AImages: TCustomImageList;
begin
  AImages := AImageComboBoxProperties.Images;
  if (AImages = nil) then
    Exit;
  ACurrentImages := AImages;
  AImageComboBoxProperties.Items.Clear;
  with TcxImageComboBoxItem(AImageComboBoxProperties.Items.Add) do
  begin
    ImageIndex := -1;
    Value := -1;
  end;
  for I := 0 to ACurrentImages.Count - 1 do
    with TcxImageComboBoxItem(AImageComboBoxProperties.Items.Add) do
    begin
      ImageIndex := I;
      Value := I;
    end;
end;

function TFDMCommon.GetAccNumb(xField: TField; const rsu: string): string;
begin
   if rsu='' then
     result := FDMCommon.PadAN(xField)
   else
     result := rsu;
end;

procedure TFDMCommon.ApplicaDataFine(xView: TcxGridDBTableView; xColumn: TcxGridDBColumn);
begin
  xView.DataController.Filter.BeginUpdate;
  with xView.DataController.Filter.Root do
  begin
    with AddItemList(fboAnd) do
    begin
      Clear;
      BoolOperatorKind := fboOr;
      AddItem(xColumn, foEqual, null, '');
      AddItem(xColumn, foGreater, Date(), DateToStr(Date()));
    end;
  end;
  xView.DataController.Filter.Active := True;
  xView.DataController.Filter.EndUpdate;
end;

procedure TFDMCommon.ApplicaFiltro(xView: TcxGridDBTableView; xColumn: TcxGridDBColumn; Value: Variant; const xDescr: string; xclear: boolean = true);
begin
  xView.DataController.Filter.BeginUpdate;
  with xView.DataController.Filter.Root do
  begin
    if xclear then
       Clear;
    if VarIsNull(Value) then
       AddItem(xColumn, foEqual, Null, '')
    else
       AddItem(xColumn, foEqual, Value, xDescr)
  end;
  xView.DataController.Filter.Active := True;
  xView.DataController.Filter.EndUpdate;
end;

function TFDMCommon.ControllaTipoAgenda(ResToCal,QyPreno: TAstaClientDataset): boolean;
begin

    Result := True;
    if ResToCal.FieldbyName('PROVENIENZA').AsString='E' then
       begin
         if (ResToCal.FieldbyName('OSP_RICH').AsString<>'') and (ResToCal.FieldbyName('OSP_RICH').AsString<>QyPreno.FieldbyName('OSP_RICH').AsString) then
         begin
            if gblUserIsAdmin or gblSuperUser then
            begin
              result := MsgDlg(format(RS_NonRichiedenteRep,[ResToCal.FieldbyName('OSPEDALE').AsString])+#13+'Vuoi continuare ?','', ktWarning, [kbYes,kbNo], dfSecond)=mrYes;
            end
            else begin
              result := false;
              MsgDlg(format(RS_NonRichiedenteRep,[ResToCal.FieldbyName('OSPEDALE').AsString]),'', ktWarning, [kbOK]);
            end;
         end;
         if result and (ResToCal.FieldbyName('TIPO_ATTIVITA_FK').AsString<>'') and (ResToCal.FieldbyName('TIPO_ATTIVITA_FK').AsString<>QyPreno.FieldbyName('TIPO_ATTIVITA_FK').AsString) then
         begin
            if gblUserIsAdmin or gblSuperUser then
            begin
              result := MsgDlg(format(RS_NonRichiedenteTipo,[ResToCal.FieldbyName('TIPOATTIVITA').AsString])+#13+'Vuoi continuare ?','', ktWarning, [kbYes,kbNo], dfSecond)=mrYes;
            end
            else begin
              result := false;
              MsgDlg(format(RS_NonRichiedenteTipo,[ResToCal.FieldbyName('TIPOATTIVITA').AsString]),'', ktWarning, [kbOK]);
            end;
         end;
       end
    else if ResToCal.FieldbyName('PROVENIENZA').AsString='I' then
       begin
         if not ResToCal.FieldbyName('DIPARTIMENTI_FK').IsNull and (ResToCal.FieldbyName('DIPARTIMENTI_FK').AsInteger>=0) and (QyPreno.FieldbyName('DIPARTIMENTI_FK').IsNull or (ResToCal.FieldbyName('DIPARTIMENTI_FK').AsInteger<>QyPreno.FieldbyName('DIPARTIMENTI_FK').AsInteger)) then
         begin
            if gblUserIsAdmin or gblSuperUser then
            begin
              result := MsgDlg(format(RS_NonRichiedenteDip,[ResToCal.FieldbyName('DIPARTIMENTO').AsString])+#13+'Vuoi continuare ?','', ktWarning, [kbYes,kbNo], dfSecond)=mrYes;
            end
            else begin
              result := false;
              MsgDlg(format(RS_NonRichiedenteRep,[ResToCal.FieldbyName('DIPARTIMENTO').AsString]),'', ktWarning, [kbOK]);
            end;
         end;
         if result and not ResToCal.FieldbyName('REP_RICH_FK').IsNull and (ResToCal.FieldbyName('REP_RICH_FK').AsInteger>=0) and (ResToCal.FieldbyName('REP_RICH_FK').AsInteger<>QyPreno.FieldbyName('REPARTO_RICH_FK').AsInteger) then
         begin
            if gblUserIsAdmin or gblSuperUser then
            begin
              result := MsgDlg(format(RS_NonRichiedenteRep,[ResToCal.FieldbyName('REPARTO').AsString])+#13+'Vuoi continuare ?','', ktWarning, [kbYes,kbNo], dfSecond)=mrYes;
            end
            else begin
              result := false;
              MsgDlg(format(RS_NonRichiedenteRep,[ResToCal.FieldbyName('REPARTO').AsString]),'', ktWarning, [kbOK]);
            end;
         end;
         if result and not ResToCal.FieldbyName('SERV_RICH_FK').IsNull and (ResToCal.FieldbyName('SERV_RICH_FK').AsInteger>=0) and (ResToCal.FieldbyName('SERV_RICH_FK').AsInteger<>QyPreno.FieldbyName('SERVIZIO_RICH_FK').AsInteger) then
         begin
            if gblUserIsAdmin or gblSuperUser then
            begin
              result := MsgDlg(format(RS_NonRichiedenteRep,[ResToCal.FieldbyName('REPARTO').AsString+' - '+ResToCal.FieldbyName('SERVIZIO').AsString])+#13+'Vuoi continuare ?','', ktWarning, [kbYes,kbNo], dfSecond)=mrYes;
            end
            else begin
              result := false;
              MsgDlg(format(RS_NonRichiedenteRep,[ResToCal.FieldbyName('REPARTO').AsString+' - '+ResToCal.FieldbyName('SERVIZIO').AsString]),'', ktWarning, [kbOK]);
            end;
         end;
         if result and (ResToCal.FieldbyName('TIPO_ATTIVITA_FK').AsString<>'') and (ResToCal.FieldbyName('TIPO_ATTIVITA_FK').AsString<>QyPreno.FieldbyName('TIPO_ATTIVITA_FK').AsString) then
         begin
            if gblUserIsAdmin or gblSuperUser then
            begin
              result := MsgDlg(format(RS_NonRichiedenteTipo,[ResToCal.FieldbyName('TIPOATTIVITA').AsString])+#13+'Vuoi continuare ?','', ktWarning, [kbYes,kbNo], dfSecond)=mrYes;
            end
            else begin
              result := false;
              MsgDlg(format(RS_NonRichiedenteTipo,[ResToCal.FieldbyName('TIPOATTIVITA').AsString]),'', ktWarning, [kbOK]);
            end;
         end;
       end;

end;


procedure TFDMCommon.CreaReferto(pkt: Integer; var xpkref: integer; var xdiagnosi: string);
begin

    CeReferto.ParambyName('triage_fk').AsInteger := pkt;
    CeReferto.syRefresh;

    if CeReferto.IsEmpty then
    begin
      qReferto.openNoFetch;
      qReferto.Insert;
      qReferto.Post;
      xpkref := qRefertoPKREFERTI.AsInteger;
    end
    else if CeRefertoSTATOREFERTO_FK.AsInteger=0 then
    begin
      xpkref := CeRefertoREFERTI_FK.AsInteger;
    end
    else begin
      qReferto.openNoFetch;
      qReferto.Insert;
      qRefertoREFERTI_FK.AsInteger := CeRefertoREFERTI_FK.AsInteger;
      qReferto.Post;
      xpkref := qRefertoPKREFERTI.AsInteger;
    end;
    qReferto.Parambyname('pkreferti').AsInteger := xpkref;
    qReferto.syRefresh;
    qReferto.Edit;
    if not qRefertoDIAGN_ADD.IsNull then
       xdiagnosi := qRefertoDIAGN_ADD.AsString;

end;

procedure TFDMCommon.qPacsBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
    FDMCommon.qPacs.Parambyname('pkworkstation').AsInteger := gblpkworkstation;
end;


procedure TFDMCommon.qAlertxRepBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  Sender.ParamByName('radiologia_fk').AsInteger := gblpkrep;
end;

function TFDMCommon.FiltroTrovato(const cosa: string; ref: TcxDBDataController; rfCol: TObject): boolean;
var
   z,x: integer;
begin
    result := false;
    z:=0;
    while not result and (z<ref.Filter.Root.Count) do
    begin
      if ref.Filter.Root.Items[z].IsItemList then
      begin
         for x:=0 to TcxFilterCriteriaItemList(ref.Filter.Root.Items[z]).Count-1 do
           if TcxFilterCriteriaItem(TcxFilterCriteriaItemList(ref.Filter.Root.Items[z]).Items[x]).ItemLink=rfCol then
           begin
                result := TcxFilterCriteriaItem(TcxFilterCriteriaItemList(ref.Filter.Root.Items[z]).Items[x]).Value=cosa;
                if result then
                   break;
           end;
      end
      else begin
         if TcxFilterCriteriaItem(ref.Filter.Root.Items[z]).ItemLink=rfCol then
         begin
              result := TcxFilterCriteriaItem(ref.Filter.Root.Items[z]).Value=cosa;
         end;
      end;
    inc(z);
  end;
end;


function TFDMCommon.ControlloImmagini(const risstudy: string; const pid: string): boolean;
var
  err: integer;
  errtxt: string;
begin

    EsameInPacs.Parambyname('pris_study_euid').AsString := risstudy;
    EsameInPacs.Parambyname('ppid').AsString := pid;
    if not LeggiPostoLavoroWPACS_FK.IsNull then
       EsameInPacs.Parambyname('ppacs_fk').AsInteger := LeggiPostoLavoroWPACS_FK.AsInteger;
    EsameInPacs.Parambyname('ptipo_modalita').Clear;
  //        EsameInPacs.Parambyname('ptipo_modalita').AsString := ...;
    EsameInPacs.ExecSQL;
    err := EsameInPacs.Parambyname('res').AsInteger;

    case err of
    0:
    begin
      MsgDlg(format(RS_ImmaginiInviate,[ErroriInvioRIS_STUDY_EUID.AsString,EsameInPacs.Parambyname('xname').AsString]),'', ktInformation, [kbOK]);
    end;
    1:
    begin
      errtxt := format(RS_ImmaginiNonArrivate,[ErroriInvioRIS_STUDY_EUID.AsString,EsameInPacs.Parambyname('xname').AsString]);
      MsgDlg(errtxt,'', ktWarning, [kbOK]);
    end;
    2:
    begin
      errtxt := format(RS_PID_Differenti,[ErroriInvioRIS_STUDY_EUID.AsString,
                                          EsameInPacs.Parambyname('xlast_name').AsString,
                                          EsameInPacs.Parambyname('xfirst_name').AsString,
                                          EsameInPacs.Parambyname('xexternal_eid').AsString]);
      MsgDlg(errtxt,'', ktWarning, [kbOK]);
    end;
  {
    3:
    begin
      errtxt := format(RS_MODALITA_Differenti,[ErroriInvioRIS_STUDY_EUID.AsString,EsameInPacsxname.AsString,EsameTIPO_MODALITA.AsString]);
      if tp_ctrl=1 then
      begin
        MsgDlg(errtxt,'', ktWarning, [kbOK]);
        esci := false;
      end
      else if MsgDlg(format(RS_MODALITA_QDifferenti,[ErroriInvioRIS_STUDY_EUID.AsString,EsameInPacsxname.AsString,EsameTIPO_MODALITA.AsString]),'', ktConfirmation, [kbYes,kbNo],dfSecond)=mrYes then
      begin
         esci := true;
      end;
    end;
  }
    4:
    begin
      errtxt := format(RS_ImmaginiNonArrivate,[ErroriInvioRIS_STUDY_EUID.AsString,EsameInPacs.Parambyname('xname').AsString]);
      MsgDlg(errtxt,'', ktWarning, [kbOK]);
    end;
    end;

    result := (err=0);

end;

procedure TFDMCommon.SalvaPersonalizza(const FormName: string; dxl: TdxLayoutControl; xuser: integer);
begin
  if dxl.CanRestore then
  begin
    if not qFormLayout.Locate('FORMNAME;TIPO',VarArrayOf([FormName,1]),[]) then
    begin
       qFormLayout.Insert;
       qFormLayoutTIPO.AsInteger := 1;
    end
    else
       qFormLayout.Edit;
    qFormLayoutUSER_ID.AsInteger := xuser;
    qFormLayoutFORMNAME.AsString := FormName;
    qFormLayoutLAYOUT.LoadFromStream(dxl.StoredStream);
    qFormLayout.Post;
  end;
end;

procedure TFDMCommon.CaricaLayout(const FormName: string; dxl: TdxLayoutControl);
begin
  if qFormLayout.Locate('FORMNAME;TIPO',VarArrayOf([FormName,1]),[]) and not qFormLayoutLAYOUT.IsNull then
  begin
     qFormLayoutLAYOUT.SaveToStream(dxl.StoredStream);
     dxl.StoredStream.Position := 0;
     dxl.LoadFromStream(dxl.StoredStream);
  end;
end;

function TFDMCommon.ResetLayout(const FormName: string; dxl: TdxLayoutControl): boolean;
begin
  Result := (MsgDlgPos( RAD_ConfermaReset, '', ktConfirmation, [kbYes,kbNo], dfFirst )=mrYes);
  if Result and qFormLayout.Locate('FORMNAME;TIPO',VarArrayOf([FormName,1]),[]) {and not qFormLayoutLAYOUT.IsNull} then
  begin
     qFormLayout.Delete;
  end;
end;


procedure TFDMCommon.SalvaPersonalizza(const FormName: string; Stream: TStream; xuser: integer);
begin
{$IFNDEF MEDICORNER}
  if not qFormLayout.Locate('FORMNAME;TIPO',VarArrayOf([FormName,2]),[]) then
  begin
     qFormLayout.Insert;
     qFormLayoutTIPO.AsInteger := 2;
  end
  else
     qFormLayout.Edit;
  qFormLayoutUSER_ID.AsInteger := xuser;
  qFormLayoutFORMNAME.AsString := FormName;
  qFormLayoutLAYOUT.LoadFromStream(Stream);
  qFormLayout.Post;
{$ENDIF}
end;


procedure TFDMCommon.CaricaLayout(const FormName: string; Stream: TStream);
begin
{$IFNDEF MEDICORNER}
  if qFormLayout.Locate('FORMNAME;TIPO',VarArrayOf([FormName,2]),[]) and not qFormLayoutLAYOUT.IsNull then
     qFormLayoutLAYOUT.SaveToStream(Stream);
{$ENDIF}
end;

procedure TFDMCommon.qCaricaProvenienzeBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.qTipoInvioBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.TabStampeBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.ProfiliBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
   sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.qCaricaColoriBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.TabStatoRefertoBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.LkEsenzioneBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.qTipoLoginBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.qTipoWSBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.qStatoAnagBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.qClientPacsBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.qStatoCDBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.qCtrlEseguitoBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.qDefPrintBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.qStatoPrestazioniBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.qStatoImmaginiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.qEsameCompostoBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.TipoUrgenzaBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
  sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFDMCommon.qStatoVisitaBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.qTipoRepartoBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.qItemTypeBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.qRicettaInfBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.qTipoFirmaBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.qRefStampatoBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.qEtichStampateBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.TipoTrasportoBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.ErroriInvioBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDMCommon.qFormLayoutBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
	Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFDMCommon.qFormLayoutNewRecord(DataSet: TDataSet);
begin
  qFormLayoutREPARTI_FK.AsInteger := gblpkrep;
end;

procedure TFDMCommon.SelectSkin(pSkin: integer);
const
  SkinNames: array[0..1] of string = ('Metropolis', 'MetropolisDark');  // 'MetroWhite.skinres',
var
  FSkinSelected: string;
begin

  FSkinSelected := SkinNames[pSkin];
  dxSkinController.Kind := lfUltraFlat;
  dxSkinController.NativeStyle := False;
  dxSkinController.SkinName := FSkinSelected;
  dxLayoutSkinLookAndFeel1.LookAndFeel.Kind := lfUltraFlat;
  dxLayoutSkinLookAndFeel1.LookAndFeel.NativeStyle := False;
  dxLayoutSkinLookAndFeel1.LookAndFeel.SkinName := FSkinSelected;
  gblSkinName := FSkinSelected;
end;

procedure TFDMCommon.WebUpdate1AppRestart(Sender: TObject;
  var Allow: Boolean);
begin
//  Allow := MsgDlg(RAD_AppRestart, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes;
  Allow := True;
end;

procedure TFDMCommon.WebUpdate1FileProgress(Sender: TObject;
  FileName: String; Pos, Size: Integer);
begin
  if cxProgressUpdate<>nil then
  begin
    cxProgressUpdate.Properties.Max := size;
    cxProgressUpdate.Position := pos;
  end;
end;

procedure TFDMCommon.WebUpdate1Progress(Sender: TObject; Action: String);
begin
  //
end;

procedure TFDMCommon.CaricaProfilo( Stream: TStream );
begin
  Diritti.Parambyname('cod_funzione').AsInteger := gblfunzione;
  Diritti.open;
  DirittiPROFILO.SaveToStream(Stream);
  gblViewReferti := (DirittiREFERTO.AsInteger=1) or gblUserIsAdmin or gblSuperUser;
  gblViewImmagini := ((DirittiIMMAGINI.AsInteger=1) or gblUserIsAdmin or gblSuperUser);
  gblForzaBlocchi := (DirittiBLOCCHI.AsInteger=1) or gblUserIsAdmin or gblSuperUser;
  gblEseguiEsami := (DirittiESEGUITO.AsInteger=1) or gblUserIsAdmin or gblSuperUser;
  gblSpostaEsami := (DirittiSPOSTA.AsInteger=1) or gblUserIsAdmin or gblSuperUser;
  gblUserCup := (DirittiCUP.AsInteger=1);
  gblSetup := (DirittiSETUP.AsInteger=1) {or gblUserIsAdmin} or gblSuperUser;
  Diritti.close;
end;

function TFDMCommon.CercaAppuntamento(const cf: string; var trec: TTessera): Integer;
begin
   qCercaAppuntamento.ParamByName('cf').AsString := cf;
   qCercaAppuntamento.ParamByName('reparti_fk').AsInteger := gblpkrep;
   qCercaAppuntamento.syRefresh;
   if qCercaAppuntamento.IsEmpty then
      result := -1
   else begin
      trec.DataEsame := qCercaAppuntamentoORA_INIZIO.AsDateTime;
      trec.xassistibili_fk := qCercaAppuntamentoASSISTIBILI_FK.AsInteger;
//      pDataEsame := qCercaAppuntamentoDATA_ACCETTAZIONE.AsDateTime;
      result := qCercaAppuntamentoSTATOVISITA.AsInteger;
   end;
end;

function StrToWord(const Value: String): Word;
begin
//  if Length(Value) > 1 then begin
    {$IFDEF STRING_IS_UNICODE}
    Result := TwoCharToWord(Value[1], Value[2]);
    {$ELSE}
    Result := PWord(Pointer(Value))^;
    {$ENDIF}
//  end else begin
//    Result := 0;
//  end;
end;

{************************************************* ***********
* Procedure PostKeyEx
*
* Parameters:
* hWindow: target window to be send the keystroke
* key : virtual keycode of the key to send. For printable
* keys this is simply the ANSI code (Ord(character)).
* shift : state of the modifier keys. This is a set, so you
* can set several of these keys (shift, control, alt,
* mouse buttons) in tandem. The TShiftState type is
* declared in the Classes Unit.
* specialkey: normally this should be False. Set it to True to
* specify a key on the numeric keypad, for example.
* If this parameter is true, bit 24 of the lparam for
* the posted WM_KEY* messages will be set.
* Description:
* This procedure sets up Windows key state array to correctly
* reflect the requested pattern of modifier keys and then posts
* a WM_KEYDOWN/WM_KEYUP message pair to the target window. Then
* Application.ProcessMessages is called to process the messages
* before the keyboard state is restored.
* Error Conditions:
* May fail due to lack of memory for the two key state buffers.
* Will raise an exception in this case.
* NOTE:
* Setting the keyboard state will not work across applications
* running in different memory spaces on Win32 unless AttachThreadInput
* is used to connect to the target thread first.
*Created: 02/21/96 16:39:00 by P. Below
************************************************** **********}
Procedure PostKeyEx( hWindow: HWnd; key: Word; Const shift: TShiftState; specialkey: Boolean );
Type
  TBuffers = Array [0..1] of TKeyboardState;
Var
  pKeyBuffers : ^TBuffers;
  lparam: LongInt;
Begin
  (* check if the target window exists *)
  If IsWindow(hWindow) Then
  Begin
    (* set local variables to default values *)
//    pKeyBuffers := Nil;
    lparam := MakeLong(0, MapVirtualKey(key, 0));

    (* modify lparam if special key requested *)
    If specialkey Then
       lparam := lparam or $1000000;

    (* allocate space for the key state buffers *)
    New(pKeyBuffers);
    try
      (* Fill buffer 1 with current state so we can later restore it.
      Null out buffer 0 to get a "no key pressed" state. *)
      GetKeyboardState( pKeyBuffers^[1] );
      FillChar(pKeyBuffers^[0], Sizeof(TKeyboardState), 0);

      (* set the requested modifier keys to "down" state in the buffer *)
      If ssShift In shift Then
        pKeyBuffers^[0][VK_SHIFT] := $80;
      If ssAlt In shift Then Begin
        (* Alt needs special treatment since a bit in lparam needs also be
        set *)
        pKeyBuffers^[0][VK_MENU] := $80;
        lparam := lparam or $20000000;
      End;
      If ssCtrl In shift Then
        pKeyBuffers^[0][VK_CONTROL] := $80;
      If ssLeft In shift Then
        pKeyBuffers^[0][VK_LBUTTON] := $80;
      If ssRight In shift Then
        pKeyBuffers^[0][VK_RBUTTON] := $80;
      If ssMiddle In shift Then
        pKeyBuffers^[0][VK_MBUTTON] := $80;

      (* make out new key state array the active key state map *)
      SetKeyboardState( pKeyBuffers^[0] );

      (* post the key messages *)
      If ssAlt In Shift Then Begin
        PostMessage( hWindow, WM_SYSKEYDOWN, key, lparam);
        PostMessage( hWindow, WM_SYSKEYUP, key, lparam or $C0000000);
      End
      Else Begin
        PostMessage( hWindow, WM_KEYDOWN, key, lparam);
        PostMessage( hWindow, WM_KEYUP, key, lparam or $C0000000);
      End;
      (* process the messages *)
      Application.ProcessMessages;

      (* restore the old key state map *)
      SetKeyboardState( pKeyBuffers^[1] );
    finally
      (* free the memory for the key state buffers *)
      If pKeyBuffers <> Nil Then
         Dispose( pKeyBuffers );
    End; { If }
  End;
End; { PostKeyEx }

initialization
{$IFDEF MADEXCEPT}
  RegisterExceptionHandler(ExceptionFilter,stTrySyncCallAlways);
//  RegisterHiddenExceptionHandler(ExceptionHiddenFilter,stTrySyncCallOnSuccess);
(*
  // -- patch per aggiornamenti successivi alla 3.0.5.19 (togliere)
  if (Win32Platform=VER_PLATFORM_WIN32_NT) and
     (Win32MajorVersion=5) and (Win32MinorVersion>0) then   // -- cancello gdiplus per Windows XP e successivi...
  begin
     Sysutils.Deletefile('.\gdiplus.dll');
  end;
*)
{$ENDIF}

  cxFormatController.UseDelphiDateTimeFormats := True;

//  SetProcessDPIAware;

end.
