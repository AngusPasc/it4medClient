unit BaseRefer;

interface

uses
  BaseRad, Forms, DMCommon, Messages, IIConsts, IInterface, syForm,{}
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxTextEdit, cxDBLookupComboBox,
  dxLayoutcxEditAdapters, dxLayoutControl, cxRichMemoDlg, dxBar, cxClasses,
  AstaUpdateSQL, AstaDrv2, AstaClientDataset, Classes, ActnList,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxDBEdit, cxMemo, cxDBLabel, cxLabel, CSEZForm,
  StdCtrls, cxButtons, Controls, ExtCtrls, cxBlobEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  cxGridCardView, cxGridDBCardView, cxNavigator, dxLayoutContainer,
  cxGridCustomLayoutView, cxGroupBox;

{$I syVer.inc}

type

  TFBaseRefer = class(TFBaseRad)
    ActionList1: TActionList;
    sEsame: TDataSource;
    Annulla: TAction;
    sPrestazioni: TDataSource;
    Prestazioni: TAstaClientDataSet;
    WPQuesito: TcxDBMemo;
    Referto: TAction;
    PrestazioniPKPRESTAZIONI: TFloatField;
    PrestazioniPROGRESSIVO_RIGA: TIntegerField;
    PrestazioniNUMERO_PRESTAZIONE: TIntegerField;
    PrestazioniSTATO: TIntegerField;
    PrestazioniDESCRIZIONE: TStringField;
    btEtichette: TcxButton;
    RefertaDopo: TAction;
    ControlloTriage: TAstaClientDataSet;
    PrestazioniTRIAGE_FK: TIntegerField;
    DaTrascrivere: TAction;
    fcImageBtn1: TcxButton;
    VisualizzaImmagini: TAction;
    updPrestazioni: TAstaUpdateSQL;
    Esame: TAstaClientDataSet;
    updEsame: TAstaUpdateSQL;
    PrestazioniCODICIRAD_FK: TIntegerField;
    PrestazioniCODICE: TStringField;
    fcImageBtn4: TcxButton;
    Successivo: TAction;
    fcImageBtn5: TcxButton;
    Precedente: TAction;
    dxBarManager1: TdxBarManager;
    dxBarDockControl3: TdxBarDockControl;
    dxBarButton1: TdxBarButton;
    ZoomReferto: TAction;
    dxBarDockControl4: TdxBarDockControl;
    dxBarButton5: TdxBarButton;
    dxBarDockControl5: TdxBarDockControl;
    dxBarButton6: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    ControlloTriageSTATOVISITA: TIntegerField;
    ControlloTriagePKTRIAGE: TIntegerField;
    ControlloTriageCOD_MED_FIRMA: TIntegerField;
    ControlloTriageDIAGNOSTICA_FK: TIntegerField;
    ControlloTriageDATA_VISITA: TDateTimeField;
    ControlloTriageREPARTI_FK: TIntegerField;
    ControlloTriageORA_INIZIO: TDateTimeField;
    ControlloTriageORA_FINE: TDateTimeField;
    ControlloTriageUSER_ID: TIntegerField;
    ControlloTriageDURATA: TIntegerField;
    fcImageBtn3: TcxButton;
    Salva: TAction;
    dxBarButton7: TdxBarButton;
    ControlloTriageIMPEGNATIVE_FK: TIntegerField;
    aTestiStandard: TAction;
    dxBarButton2: TdxBarButton;
    aNegativo: TAction;
    dxBarButton4: TdxBarButton;
    qyPrecedenti: TAstaClientDataSet;
    sqyPrecedenti: TDataSource;
    cxGrid1: TcxGrid;
    GridPrecedenti: TcxGridDBTableView;
    GridPrecedentiDIAGNOSTICA: TcxGridDBColumn;
    GridPrecedentiCEREFERTO: TcxGridDBColumn;
    GridPrecedentiCEIMMAGINI: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxBarPopupPrecedenti: TdxBarPopupMenu;
    cxGridPrestazioni: TcxGrid;
    GridPrestazioni: TcxGridDBTableView;
    GridPrestazioniCODICE: TcxGridDBColumn;
    GridPrestazioniDESCRIZIONE: TcxGridDBColumn;
    cxGridPrestazioniLevel1: TcxGridLevel;
    aImmaginiPrecedenti: TAction;
    aRefertoPrecedenti: TAction;
    GridPrestazioniPKPRESTAZIONI: TcxGridDBColumn;
    cxRichMemoDlg: TcxRichMemoDlg;
    dxBarButton3: TdxBarButton;
    dxBarButton8: TdxBarButton;
    qyPrecedentiDATA_VISITA: TDateTimeField;
    GridPrecedentiDATA_VISITA: TcxGridDBColumn;
    InizioInterattiva: TAction;
    FineInterattiva: TAction;
    qyPrecedentiRIS_STUDY_EUID: TStringField;
    ControlloTriageRIS_STUDY_EUID: TStringField;
    qyPrecedentiDIAGNOSTICA: TStringField;
    aCopiaTitolo: TAction;
    dxBarButton9: TdxBarButton;
    btDoppiaFirma: TcxButton;
    aDoppiaFirma: TAction;
    qyPrecedentiCODICE: TStringField;
    qyPrecedentiDESCRIZIONE: TStringField;
    GridPrecedentiCODICE: TcxGridDBColumn;
    GridPrecedentiDESCRIZIONE: TcxGridDBColumn;
    GetRefertoNegativo: TAstaClientDataSet;
    GetRefertoNegativoREF_NEGATIVO: TBlobField;
    sImpegnativa: TDataSource;
    Impegnativa: TAstaClientDataSet;
    ImpegnativaURGENZA: TIntegerField;
    ImpegnativaASSISTIBILI_FK: TIntegerField;
    ImpegnativaSERVIZIO_RICH_FK: TIntegerField;
    ImpegnativaREP_RICH: TIntegerField;
    ImpegnativaCOD_MED_INT: TIntegerField;
    ImpegnativaREPARTO: TStringField;
    ImpegnativaSERVIZIO: TStringField;
    ImpegnativaMEDICO: TStringField;
    ImpegnativaNOMINATIVO: TStringField;
    ImpegnativaUSER_ID: TIntegerField;
    ImpegnativaTIPO_ATTIVITA_FK: TStringField;
    ImpegnativaPROVENIENZA: TStringField;
    ImpegnativaDATA_NASCITA: TDateTimeField;
    ImpegnativaPKIMPEGNATIVE: TIntegerField;
    EsameIMPEGNATIVE_FK: TIntegerField;
    EsameSTATOVISITA: TIntegerField;
    EsameORA_INIZIO: TDateTimeField;
    EsameORA_FINE: TDateTimeField;
    EsameUSER_ID: TIntegerField;
    EsameCOD_MED_FIRMA: TIntegerField;
    EsameDIAGNOSTICA_FK: TIntegerField;
    EsameDATA_VISITA: TDateTimeField;
    EsameREPARTI_FK: TIntegerField;
    EsameDIFFERITA: TIntegerField;
    EsameTECNICO: TStringField;
    EsameRADIOLOGO: TStringField;
    EsameDIAGNOSTICA: TStringField;
    EsameRIS_STUDY_EUID: TStringField;
    EsameCOD_MED_ESEGUE: TIntegerField;
    EsameMEDESECUTORE: TStringField;
    ControlloTriageSERVIZI_FK: TIntegerField;
    EsameSERVIZI_FK: TIntegerField;
    PrestazioniREFNEGTEXT_FK: TIntegerField;
    aBookmark: TAction;
    dxBarButton10: TdxBarButton;
    AltreFirme: TAstaClientDataSet;
    AltreFirmeCOD_MED_FIRMA: TIntegerField;
    AltreFirmeTRIAGE_FK: TIntegerField;
    AltreFirmeTIPO_FIRMA: TStringField;
    AltreFirmeNOMINATIVO: TStringField;
    ImpegnativaSES_CODICE: TStringField;
    ControlloTriageCEIMMAGINI: TIntegerField;
    EsameCEIMMAGINI: TIntegerField;
    updControlloTriage: TAstaUpdateSQL;
    RefertoProvvisorio: TAction;
    btEstemporaneo: TcxButton;
    aEstemporaneo: TAction;
    ImpegnativaSERVTELEFONO: TStringField;
    ImpegnativaMEDTELEFONO: TStringField;
    Radiologie: TAstaClientDataSet;
    RadiologieREPARTI_FK: TIntegerField;
    RadiologieDESCRIZIONE: TStringField;
    RadiologieOSPEDALE: TStringField;
    qyPrecedentiSITE_NAME: TStringField;
    PrestazioniESITO_SCREENING_FK: TIntegerField;
    PrestazioniTIPOLIVELLO_FK: TStringField;
    GridPrestazioniESITO_SCREENING_FK: TcxGridDBColumn;
    sTabEsitoScreening: TDataSource;
    CopiaDiagnosi: TAction;
    qCopiaDiagnosi: TAstaClientDataSet;
    qCopiaDiagnosiDIAGNOSI: TBlobField;
    dxBarButton11: TdxBarButton;
    ImpegnativaLIV_SCR: TIntegerField;
    aVisualizzaPrecedenti: TAction;
    dxBarButton12: TdxBarButton;
    ControlloTriagePERSONALE_FK: TIntegerField;
    EsamePERSONALE_FK: TIntegerField;
    ZoomNoteEsame: TAction;
    EsameTIPO_REFVOC_FK: TIntegerField;
    ImpegnativaCOD_ESTERNO: TStringField;
    qyRiapri: TAstaClientDataSet;
    PrestazioniMAGART_FK: TIntegerField;
    GridPrestazioniMAGART_FK: TcxGridDBColumn;
    GridPrestazioniQUANTITA: TcxGridDBColumn;
    PrestazioniQUANTITA: TFloatField;
    EsameWORKSTATION_FK: TIntegerField;
    btPrivacy: TcxButton;
    aPrivacy: TAction;
    Oscuramento: TAstaClientDataSet;
    ImpegnativaOSCURAMENTO: TStringField;
    ImpegnativaRADESEGUE: TStringField;
    OscuramentoDESCRIZIONE: TStringField;
    OscuramentoATTIVO: TIntegerField;
    OscuramentoOSCURA_FK: TStringField;
    aBookMarkPrecedenti: TAction;
    dxBarButton13: TdxBarButton;
    EsameGRESAMI_FK: TIntegerField;
    ControlloTriageGRESAMI_FK: TIntegerField;
    Reparto: TcxDBLabel;
    Servizio: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    Medico: TcxDBLabel;
    Nominativo: TcxDBLabel;
    DataNascita: TcxDBLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    PrestazioniCEIMMAGINI: TIntegerField;
    PrestazioniRIS_STUDY_EUID: TStringField;
    GridPrestazioniRIS_STUDY_EUID: TcxGridDBColumn;
    aFondiReferto: TAction;
    dxBarButton14: TdxBarButton;
    updDaFondere: TAstaUpdateSQL;
    qReferto: TAstaClientDataSet;
    qRefertoPKREFERTI: TIntegerField;
    qRefertoNOTE_OSCURE: TBlobField;
    qRefertoDIAGNOSI: TBlobField;
    sqReferto: TDataSource;
    EsameREFERTI_FK: TIntegerField;
    aComparaImmagini: TAction;
    dxBarButton15: TdxBarButton;
    EsameNOTE_TECNICO: TStringField;
    ImpegnativaQUESITO_DIAGN: TStringField;
    GridPrestazioniTRIAGE_FK: TcxGridDBColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControlProvenienza: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group14: TdxLayoutGroup;
    dxLayoutControl1Group15: TdxLayoutGroup;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutControl1Item23: TdxLayoutItem;
    dxLayoutControl1Item24: TdxLayoutItem;
    dxLayoutControl1Group16: TdxLayoutGroup;
    dxLayoutControl1Item25: TdxLayoutItem;
    dxLayoutControl1Item26: TdxLayoutItem;
    dxLayoutControl1Item27: TdxLayoutItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxLayoutControl1Group17: TdxLayoutGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControlServizio: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControlReferto: TdxLayoutGroup;
    dxLayoutControlEditor: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group18: TdxLayoutGroup;
    cxGridEsameDBTableView1: TcxGridDBTableView;
    cxGridEsameLevel1: TcxGridLevel;
    cxGridEsame: TcxGrid;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxGridEsameDBTableView1DATA_VISITA: TcxGridDBColumn;
    cxGridEsameDBTableView1TECNICO: TcxGridDBColumn;
    cxGridEsameDBTableView1RIS_STUDY_EUID: TcxGridDBColumn;
    cxGridEsameDBTableView1MEDESECUTORE: TcxGridDBColumn;
    cxGridEsameDBTableView1NOTE_TECNICO: TcxGridDBColumn;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group21: TdxLayoutGroup;
    dxLayoutControl1Group23: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    ControlloPrestazioni: TAstaClientDataSet;
    ControlloPrestazioniCEIMMAGINI: TIntegerField;
    ControlloPrestazioniRIS_STUDY_EUID: TStringField;
    ControlloPrestazioniPKPRESTAZIONI: TFloatField;
    ControlloPrestazioniPROGRESSIVO_RIGA: TIntegerField;
    ControlloPrestazioniCODICIRAD_FK: TIntegerField;
    ControlloPrestazioniNUMERO_PRESTAZIONE: TIntegerField;
    ControlloPrestazioniTRIAGE_FK: TIntegerField;
    ControlloPrestazioniSTATO: TIntegerField;
    ControlloPrestazioniESITO_SCREENING_FK: TIntegerField;
    ControlloPrestazioniTIPOLIVELLO_FK: TStringField;
    ControlloPrestazioniCODICE: TStringField;
    ControlloPrestazioniDESCRIZIONE: TStringField;
    ControlloPrestazioniREFNEGTEXT_FK: TIntegerField;
    ControlloPrestazioniMAGART_FK: TIntegerField;
    ControlloPrestazioniQUANTITA: TFloatField;
    updControlloPrestazioni: TAstaUpdateSQL;
    dxBarPopupEsecuzione: TdxBarPopupMenu;
    EsameESEGUITO: TIntegerField;
    GridPrecedentiRIS_STUDY_EUID: TcxGridDBColumn;
    DaFondere: TAstaClientDataSet;
    PrestazioniDaFondere: TAstaClientDataSet;
    PrestazioniDaFonderePKPRESTAZIONI: TFloatField;
    PrestazioniDaFonderePROGRESSIVO_RIGA: TIntegerField;
    PrestazioniDaFondereNUMERO_PRESTAZIONE: TIntegerField;
    PrestazioniDaFondereTRIAGE_FK: TIntegerField;
    PrestazioniDaFondereSTATO: TIntegerField;
    PrestazioniDaFondereDESCRIZIONE: TStringField;
    PrestazioniDaFondereCODICIRAD_FK: TIntegerField;
    PrestazioniDaFondereCODICE: TStringField;
    PrestazioniDaFondereREFNEGTEXT_FK: TIntegerField;
    PrestazioniDaFondereESITO_SCREENING_FK: TIntegerField;
    PrestazioniDaFondereTIPOLIVELLO_FK: TStringField;
    PrestazioniDaFondereMAGART_FK: TIntegerField;
    PrestazioniDaFondereQUANTITA: TFloatField;
    PrestazioniDaFondereCEIMMAGINI: TIntegerField;
    PrestazioniDaFondereRIS_STUDY_EUID: TStringField;
    PrestazioniDaFondereREFERTI_FK: TIntegerField;
    DaFonderePKTRIAGE: TIntegerField;
    DaFondereRIS_STUDY_EUID: TStringField;
    DaFondereDATA_VISITA: TDateTimeField;
    DaFondereNOTE_TECNICO: TStringField;
    DaFondereUSER_ID: TIntegerField;
    DaFondereCOD_MED_FIRMA: TIntegerField;
    DaFondereSERVIZI_FK: TIntegerField;
    DaFondereSTATOVISITA: TIntegerField;
    DaFondereDIFFERITA: TIntegerField;
    DaFondereTIPO_REFVOC_FK: TIntegerField;
    DaFondereWORKSTATION_FK: TIntegerField;
    DaFondereDIAGNOSTICA: TStringField;
    DaFondereREFERTI_FK: TIntegerField;
    DaFondereTECNICO: TStringField;
    DaFondereMEDESECUTORE: TStringField;
    DaFondereOLD_REFERTI_FK: TIntegerField;
    DaFondereDIAGNOSTICA_FK: TIntegerField;
    Fusi: TAstaClientDataSet;
    FusiPKTRIAGE: TIntegerField;
    FusiRIS_STUDY_EUID: TStringField;
    FusiDATA_VISITA: TDateTimeField;
    FusiNOTE_TECNICO: TStringField;
    FusiUSER_ID: TIntegerField;
    FusiCOD_MED_FIRMA: TIntegerField;
    FusiSERVIZI_FK: TIntegerField;
    FusiSTATOVISITA: TIntegerField;
    FusiDIFFERITA: TIntegerField;
    FusiTIPO_REFVOC_FK: TIntegerField;
    FusiWORKSTATION_FK: TIntegerField;
    FusiDIAGNOSTICA: TStringField;
    FusiREFERTI_FK: TIntegerField;
    FusiOLD_REFERTI_FK: TIntegerField;
    FusiTECNICO: TStringField;
    FusiMEDESECUTORE: TStringField;
    FusiDIAGNOSTICA_FK: TIntegerField;
    DaFondereIMPEGNATIVE_FK: TIntegerField;
    DaFonderePERSONALE_FK: TIntegerField;
    DaFondereORA_INIZIO: TDateTimeField;
    DaFondereORA_FINE: TDateTimeField;
    DaFondereREPARTI_FK: TIntegerField;
    DaFondereCOD_MED_ESEGUE: TIntegerField;
    DaFondereGRESAMI_FK: TIntegerField;
    FusiIMPEGNATIVE_FK: TIntegerField;
    FusiPERSONALE_FK: TIntegerField;
    FusiORA_INIZIO: TDateTimeField;
    FusiORA_FINE: TDateTimeField;
    FusiREPARTI_FK: TIntegerField;
    FusiCOD_MED_ESEGUE: TIntegerField;
    FusiGRESAMI_FK: TIntegerField;
    EsamePKTRIAGE: TIntegerField;
    ControlloPrestazioniPKTRIAGE: TIntegerField;
    ControlloTriagePACS_FK: TIntegerField;
    EsamePACS_FK: TIntegerField;
    qRefertoAUTOR_CONSULT: TIntegerField;
    qRefertoDAO: TIntegerField;
    OscuramentoREFERTI_FK: TIntegerField;
    cxGridLevel2: TcxGridLevel;
    CardViewPrecedenti: TcxGridDBCardView;
    CardViewPrecedentiCEREFERTO: TcxGridDBCardViewRow;
    CardViewPrecedentiDATA_VISITA: TcxGridDBCardViewRow;
    CardViewPrecedentiRIS_STUDY_EUID: TcxGridDBCardViewRow;
    CardViewPrecedentiDIAGNOSTICA: TcxGridDBCardViewRow;
    CardViewPrecedentiPKTRIAGE: TcxGridDBCardViewRow;
    CardViewPrecedentiCEIMMAGINI: TcxGridDBCardViewRow;
    CardViewPrecedentiSITE_NAME: TcxGridDBCardViewRow;
    CardViewPrecedentiDIAGNOSI: TcxGridDBCardViewRow;
    CardViewPrecedentiPKREFERTI: TcxGridDBCardViewRow;
    GridPrecedentiPKREFERTI: TcxGridDBColumn;
    CardViewPrecedentiDESCRIZIONE: TcxGridDBCardViewRow;
    dxLayoutGroupAnamnesi: TdxLayoutGroup;
    dxBarPopupAnamnesi: TdxBarPopupMenu;
    dxAnamnesi: TdxBarButton;
    aAnamnesi: TAction;
    ImpegnativaANAMNESI_FK: TIntegerField;
    cxGridAnamnesiLevel1: TcxGridLevel;
    cxGridAnamnesi: TcxGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    Anamnesi: TAstaClientDataSet;
    AnamnesiPKANAMNESI: TIntegerField;
    AnamnesiASSISTIBILI_FK: TIntegerField;
    AnamnesiANAMNESI: TStringField;
    AnamnesiDATA_ANAMNESI: TDateTimeField;
    AnamnesiUSER_ANAMNESI: TIntegerField;
    sAnamnesi: TDataSource;
    qyPrecedentiDIAGNOSI: TBlobField;
    aCopiaAnamnesi: TAction;
    dxBarButton16: TdxBarButton;
    cxGridAnamnesiDBTableView1: TcxGridDBTableView;
    cxGridAnamnesiDBTableView1ANAMNESI: TcxGridDBColumn;
    cxGridAnamnesiDBTableView1DATA_ANAMNESI: TcxGridDBColumn;
    aCopiaQuesito: TAction;
    dxBarButton17: TdxBarButton;
    aStoricoPrecedenti: TAction;
    dxBarButton18: TdxBarButton;
    aControlloImmagini: TAction;
    dxBarButton19: TdxBarButton;
    dxBarManager1Bar4: TdxBar;
    dxBarDockControl1: TdxBarDockControl;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    aControlloPrecedenti: TAction;
    dxBarButton20: TdxBarButton;
    cxButton1: TcxButton;
    aSalvaContinua: TAction;
    qyPrecedentiNOMINATIVO: TStringField;
    CardViewPrecedentiNOMINATIVO: TcxGridDBCardViewRow;
    qyPrecedentiRADIOLOGIA: TStringField;
    CardViewPrecedentiRADIOLOGIA: TcxGridDBCardViewRow;
    cxGridEsameDBTableView1CEIMMAGINI: TcxGridDBColumn;
    dxBarButton21: TdxBarButton;
    qyPrecedentiCOD_ESTERNO: TStringField;
    updPrecedenti: TAstaUpdateSQL;
    dxBarManager1Bar3: TdxBar;
dxBarManager1Bar1: TdxBar;
dxBarManager1Bar2: TdxBar;
    PrestazioniQP: TIntegerField;
    PrestazioniDaFondereQP: TIntegerField;
    ControlloPrestazioniQP: TIntegerField;
    qyPrecedentiPKTRIAGE: TIntegerField;
    qyPrecedentiCEREFERTO: TIntegerField;
    qyPrecedentiCEDIAGNOSI: TIntegerField;
    qyPrecedentiCEIMMAGINI: TIntegerField;
    qyPrecedentiPKPRESTAZIONI: TIntegerField;
    qyPrecedentiPKREFERTI: TIntegerField;
    qyPrecedentiUSER_ID: TIntegerField;
    procedure AnnullaExecute(Sender: TObject);
    procedure AnnullaUpdate(Sender: TObject);
    procedure RefertoUpdate(Sender: TObject);
    procedure RefertaDopoExecute(Sender: TObject);
    procedure RefertaDopoUpdate(Sender: TObject);
    procedure DaTrascrivereExecute(Sender: TObject);
    procedure RefertoExecute(Sender: TObject);
    procedure DaTrascrivereUpdate(Sender: TObject);
    procedure VisualizzaImmaginiExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrestazioniBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure SuccessivoExecute(Sender: TObject);
    procedure PrecedenteExecute(Sender: TObject);
    procedure ZoomRefertoExecute(Sender: TObject);
    procedure EsameBeforePost(DataSet: TDataSet);
    procedure SalvaExecute(Sender: TObject);
    procedure SalvaUpdate(Sender: TObject);
    procedure VisualizzaImmaginiUpdate(Sender: TObject);
    procedure BaseFormHide(Sender: TObject);
    procedure EsameBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure aTestiStandardExecute(Sender: TObject);
    procedure aNegativoExecute(Sender: TObject);
    procedure qyPrecedentiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure aImmaginiPrecedentiExecute(Sender: TObject);
    procedure aImmaginiPrecedentiUpdate(Sender: TObject);
    procedure aRefertoPrecedentiExecute(Sender: TObject);
    procedure aRefertoPrecedentiUpdate(Sender: TObject);
    procedure GridPrecedentiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridPrecedentiDblClick(Sender: TObject);
    procedure InizioInterattivaExecute(Sender: TObject);
    procedure InizioInterattivaUpdate(Sender: TObject);
    procedure FineInterattivaExecute(Sender: TObject);
    procedure FineInterattivaUpdate(Sender: TObject);
    procedure SuccessivoUpdate(Sender: TObject);
    procedure PrecedenteUpdate(Sender: TObject);
    procedure aCopiaTitoloExecute(Sender: TObject);
    procedure aCopiaTitoloUpdate(Sender: TObject);
    procedure aDoppiaFirmaExecute(Sender: TObject);
    procedure aNegativoUpdate(Sender: TObject);
    procedure ImpegnativaAfterEdit(DataSet: TDataSet);
    procedure aDoppiaFirmaUpdate(Sender: TObject);
    procedure aBookmarkExecute(Sender: TObject);
    procedure aBookmarkUpdate(Sender: TObject);
    procedure GetRefertoNegativoBeforeQuery(
      Sender: TAstaBaseClientDataSet);
    procedure aEstemporaneoExecute(Sender: TObject);
    procedure CopiaDiagnosiExecute(Sender: TObject);
    procedure CopiaDiagnosiUpdate(Sender: TObject);
    procedure ImpegnativaAfterQuery(Sender: TAstaBaseClientDataSet);
    procedure aEstemporaneoUpdate(Sender: TObject);
    procedure aVisualizzaPrecedentiExecute(Sender: TObject);
    procedure aVisualizzaPrecedentiUpdate(Sender: TObject);
    procedure ZoomNoteEsameExecute(Sender: TObject);
    procedure BaseFormDestroy(Sender: TObject);
    procedure RefertoProvvisorioExecute(Sender: TObject);
    procedure RefertoProvvisorioUpdate(Sender: TObject);
    procedure aPrivacyExecute(Sender: TObject);
    procedure OscuramentoBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure aBookMarkPrecedentiExecute(Sender: TObject);
    procedure aBookMarkPrecedentiUpdate(Sender: TObject);
    procedure aFondiRefertoExecute(Sender: TObject);
    procedure aFondiRefertoUpdate(Sender: TObject);
    procedure qRefertoBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure EsameAfterEdit(DataSet: TDataSet);
    procedure aComparaImmaginiExecute(Sender: TObject);
    procedure aComparaImmaginiUpdate(Sender: TObject);
    procedure DaFondereBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure PrestazioniDaFondereBeforeQuery(
      Sender: TAstaBaseClientDataSet);
    procedure GridPrestazioniInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure WPQuesitoEnter(Sender: TObject);
    procedure WPQuesitoExit(Sender: TObject);
    procedure FusiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure PrestazioniAfterPopulate(Sender: TObject);
    procedure aPrivacyUpdate(Sender: TObject);
    procedure CardViewPrecedentiDblClick(Sender: TObject);
    procedure aAnamnesiExecute(Sender: TObject);
    procedure AnamnesiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure AnamnesiNewRecord(DataSet: TDataSet);
    procedure aCopiaAnamnesiExecute(Sender: TObject);
    procedure aCopiaAnamnesiUpdate(Sender: TObject);
    procedure cxGridAnamnesiDBTableView1NavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure aCopiaQuesitoExecute(Sender: TObject);
    procedure cxGridAnamnesiDBTableView1DblClick(Sender: TObject);
    procedure aStoricoPrecedentiExecute(Sender: TObject);
    procedure aStoricoPrecedentiUpdate(Sender: TObject);
    procedure aSalvaContinuaExecute(Sender: TObject);
    procedure aSalvaContinuaUpdate(Sender: TObject);
    procedure aControlloImmaginiExecute(Sender: TObject);
    procedure aControlloImmaginiUpdate(Sender: TObject);
    procedure aControlloPrecedentiExecute(Sender: TObject);
    procedure aControlloPrecedentiUpdate(Sender: TObject);
    procedure BaseFormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure csEZKeys1KeyIntercept(KeyType: TNavigationKey;
      Ctrl: TControl; var Intercept: Boolean);
    procedure ImpegnativaBeforeQuery(Sender: TAstaBaseClientDataSet);
  private
    { Private declarations }
    FForzaUscita: boolean;
    FOldDiagnosi: string;
    FAnamnesiInserita: Boolean;
    FCeDaSpostare: Boolean;
    xAggiornaLista: Boolean;
    xDiagnPrec: string;
    FInit: TDateTime;
    FDoppiaFirma: boolean;
    FEstemporaneo: boolean;
    FpStatoRef: TpStatoReferto;
    FNoProvvisorio: boolean;
    FStatoUscita: integer;
    FRipristinaImmagini: boolean;
    FSuccEnabled: boolean;
    FPrecEnabled: boolean;
    FStatoEsame: integer;
    att_screening: boolean;
    att_mn: boolean;
    Farerefresh: boolean;
    function RecordPrecedenti: integer;
    procedure CreaAnamnesi(copiaquesito: boolean);
    procedure SalvaTutto;
    procedure FirmaMedico(solosalva: boolean);
    procedure SetStatoRef(Value: TpStatoReferto);
    procedure EseguiReferto(par: integer);
    procedure SettaMN_Screening;
    procedure CopyFromClipBoard(var Message: TMessage); message SY_COPYFROMCLIPBOARD;
    procedure RicalcolaQP;
    function ControlloImmagini(const xris_study: string; xpktriage: integer; const xcod_esterno: string): integer;
  protected
    procedure DoShow; override;
    procedure SyncDettagli;
    procedure StopDettatura; virtual;
    function LeggiReferto: string; virtual;
    procedure ScriviReferto; virtual;
    procedure ScriviTesto(const testo: string); virtual;
    procedure InserisciTesto(const testo: string); virtual;
    procedure CaricaPrecedente; virtual;
    procedure CancellaReferto; virtual;
    procedure FocusOnEditor; virtual;
    procedure StartDettatura; virtual;
    function DettaturaAttiva: boolean; virtual;
    procedure ConnettiDettatura; virtual;
    procedure DisconnettiDettatura; virtual;
    function EsisteReferto: boolean; virtual;
    function Sincronizza(xmove: TScorrimento): boolean;
    function DatiVariati: boolean; virtual;
  protected
    procedure DoCreate; override;
    procedure StartPersonalizza; override;
    procedure StopPersonalizza; override;
    procedure ResetPersonalizza; override;
  public
    { Public declarations }
    continua: boolean;
    xPKREFERTI: Integer;
    xPKTRIAGE: Integer;
    OwnerForm: TsyForm;

    procedure Inizializza; virtual;
    function LanciaRefertazione(xstato: integer; xtitolo: string; xpkr: Integer; xpkt: Integer; Refertazione: TAstaClientDataset; xOwnerForm: TsyForm; xcontinua,xprovvisorio: boolean;
                                xstatoref: TpStatoReferto; xestemporaneo: boolean; xstatouscita: integer; xdiagnosi: string): boolean; virtual;

    property StatoUscita: integer read FStatoUscita write FStatoUscita;
    property NoProvvisorio: boolean read FNoProvvisorio write FNoProvvisorio;
    property pStatoRef: TpStatoReferto read FpStatoRef write SetStatoRef;
    property Estemporaneo: boolean read FEstemporaneo write FEstemporaneo;
    property StatoEsame: integer read FStatoEsame write FStatoEsame;
  end;

  TsyBaseReferClass = class of TFBaseRefer;

//var
//  FBaseRefer: TFBaseRefer;


implementation

uses Variants, DbConsts,AstaDBTypes,DateUtils,
{$IFNDEF MEDICORNER}
     Anamnesi,
     AltreFirme,
     RefPreview,
{$ELSE}
     RefMedicorner,
{$ENDIF}
     sysutils, Msgdlgs, Windows, CercaBarCode,
     TreeTestiRic, Graphics, ConfermaPswdRep, SpostaReferti,
     VisitePrecRAD, AssegnaReferti, Privacy, FondiReferto;

{$R *.DFM}

function TFBaseRefer.DatiVariati: boolean;
begin

  result := ((FOldDiagnosi<>LeggiReferto) or not ControlloPrestazioni.IsEmpty or not ControlloTriage.IsEmpty or Fusi.HasChanged or Anamnesi.HasChanged or Impegnativa.HasChanged);

end;

procedure TFBaseRefer.CopyFromClipBoard(var Message: TMessage);
begin
  if Assigned(FTreeTestiRic) then
     InserisciTesto(FTreeTestiRic.TestiStandardDIAGNOSI.AsString);
end;

procedure TFBaseRefer.StopDettatura;
begin
end;

function TFBaseRefer.LeggiReferto: string;
begin
  result := '';
end;

procedure TFBaseRefer.ScriviReferto;
begin
end;

procedure TFBaseRefer.ScriviTesto(const testo: string);
begin
{
  if not (Esame.State in dsEditModes) then
     Esame.Edit;
}
end;

procedure TFBaseRefer.InserisciTesto(const testo: string);
begin
end;

procedure TFBaseRefer.CancellaReferto;
begin
end;

procedure TFBaseRefer.FocusOnEditor;
begin
end;

procedure TFBaseRefer.StartDettatura;
begin
end;

function TFBaseRefer.DettaturaAttiva: boolean;
begin
  result := false;
end;

procedure TFBaseRefer.ConnettiDettatura;
begin
end;

procedure TFBaseRefer.DisconnettiDettatura;
begin
end;

function TFBaseRefer.EsisteReferto: boolean;
begin
  result := att_screening;
end;

procedure TFBaseRefer.SalvaTutto;
begin

  if Assigned(OwnerForm) and DaFondere.HasDeleted then
  begin
     DaFondere.OldValuesDataSet.First;
     while not DaFondere.OldValuesDataSet.Eof do
     begin
//        if DaFondere.Locate('OLD_REFERTI_FK',DaFondere.OldValuesDataSet.FieldByName('REFERTI_FK').AsInteger,[]) then
//           PostMessage(TCustomForm(OwnerForm).Handle,SY_UPDATERECORD,DaFondereREFERTI_FK.AsInteger,DaFondere.OldValuesDataSet.FieldByName('REFERTI_FK').AsInteger);
        if (DaFondere.OldValuesDataSet.FieldbyName('Delta').asInteger = Ord(dtDelete)) then
           PostMessage(TCustomForm(OwnerForm).Handle,SY_UPDATERECORD,DaFondere.OldValuesDataSet.FieldByName('REFERTI_FK').AsInteger,DaFondere.OldValuesDataSet.FieldByName('OLD_REFERTI_FK').AsInteger);
        DaFondere.OldValuesDataSet.Next;
     end;
  end;

  FDMCommon.AstaClientSocket.SendDataSetTransactions(Name,[qReferto,Anamnesi,Impegnativa,Esame,ControlloTriage,ControlloPrestazioni,Prestazioni,AltreFirme,Oscuramento,DaFondere,qyPrecedenti]);

  Farerefresh := true;

end;


procedure TFBaseRefer.AnnullaExecute(Sender: TObject);
begin
  inherited;
  if (Esame.State in dsEditModes) then
      Esame.Cancel;

  if not FForzaUscita and DatiVariati then
  begin
    if (MsgDlgPos(RIS_DatiVariati, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes) then
       aSalvaContinua.Execute;
    FForzaUscita := true;
  end;

  ModalResult := mrCancel;

end;

procedure TFBaseRefer.AnnullaUpdate(Sender: TObject);
begin
  inherited;
//  Annulla.Enabled := FAnnulla or (pStatoRef in [tpaAddendum,tpaAnnullativo,tpaSostitutivo]);
end;

procedure TFBaseRefer.DoShow;
begin
  inherited;

  ControlloTriage.Empty;
  ControlloPrestazioni.Empty;
  AggiustaFormShow(FDMCommon.ClientPacs,FDMCommon.DoppioMonitor);

  RefertoProvvisorio.Visible := not NoProvvisorio;
  Successivo.Visible := continua;
  Precedente.Visible := continua;
  FSuccEnabled := true;
  FPrecEnabled := true;

  Farerefresh := false;
  aEstemporaneo.Visible := (FDMCommon.LeggiPostoLavoroCHK_ESTEMPORANEO.AsInteger=1) and Estemporaneo;  //and not Addendum;
  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=3) then
  begin
     cxGridEsameDBTableView1NOTE_TECNICO.Visible := false;
  end
  else begin
     ZoomNoteEsame.Visible := false;
  end;

  aPrivacy.Visible := (FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger in [3,4,5,6]);
  if (FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger in [3,4,5,6]) then
  begin
     Oscuramento.syRefresh;
  end
  else
     Oscuramento.OpenNoFetch;

  SyncDettagli;
  FocusOnEditor;
{
  if Assigned(OwnerForm) then
     PostMessage(TCustomForm(OwnerForm.Parent.Owner).Handle,SY_SHOWELAPSED,0,MilliSecondsBetween(Now(), Finit));
}
  if FDMCommon.LeggiPostoLavoroFLAG_TESTISTD.AsInteger in [0,2] then
     aTestiStandard.Caption := RS_TestiStd
  else
     aTestiStandard.Caption := RS_TestiMedico;

  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>4) then
  begin
     dxLayoutControlProvenienza.CaptionOptions.Text := RS_BaseProvenienza;
     Reparto.DataBinding.DataField := 'REPARTO';
  end
  else begin
     dxLayoutControlProvenienza.CaptionOptions.Text := RS_BaseGuardiaMed;
     Reparto.DataBinding.DataField := 'RADESEGUE';
  end;

  if (FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger in [3,4,5,6]) then
  begin
     if not (qReferto.State in dsEditModes) then
         qReferto.Edit;
     if (ImpegnativaOSCURAMENTO.AsString='V') and (qRefertoAUTOR_CONSULT.AsInteger=0) then
         qRefertoAUTOR_CONSULT.AsInteger := 1
{???     else
         qRefertoAUTOR_CONSULT.AsInteger := 0}
         ;
     if qRefertoNOTE_OSCURE.IsNull and not FDMCommon.LeggiPostoLavoroNOTE_SISS.IsNull then
         qRefertoNOTE_OSCURE.AsString := FDMCommon.LeggiPostoLavoroNOTE_SISS.AsString;
  end;

  if Esame.RecordCount>1 then
     GridPrestazioniRIS_STUDY_EUID.Visible := True;

  aFondiReferto.Visible := (FDMCommon.LeggiPostoLavoroCHK_FONDI_REFERTO.AsInteger=1);

{JRT 6536}
  WPQuesito.Properties.ReadOnly := (FDMCommon.LeggiPostoLavoroCHK_QUESITO_REF.AsInteger=0);
{}

{ ??? non c'è più proprietà in 14.2.2
  if cxGrid1.ViewInfo.DetailsSiteViewInfo.TabsViewInfo.TabControl.TabIndex<>0 then
     cxGrid1.ViewInfo.DetailsSiteViewInfo.TabsViewInfo.TabControl.TabIndex := 0;
}

  if dxLayoutControl1Group11.ItemIndex<>0 then
     dxLayoutControl1Group11.ItemIndex := 0;

  cxGridAnamnesiDBTableView1.Controller.GoToFirst();
  FAnamnesiInserita := not ImpegnativaANAMNESI_FK.IsNull and not Anamnesi.IsEmpty and (AnamnesiPKANAMNESI.AsInteger=ImpegnativaANAMNESI_FK.AsInteger);

  FOldDiagnosi := LeggiReferto;

end;

procedure TFBaseRefer.SettaMN_Screening;
begin

  att_screening := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=2) and (ImpegnativaLIV_SCR.AsInteger in [1,2]);
  att_mn := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);

  GridPrestazioniESITO_SCREENING_FK.Visible := att_screening;

  GridPrestazioniMAGART_FK.Visible := att_mn;
  GridPrestazioniQUANTITA.Visible := att_mn;
//  PrestazioniMAGART_FK.Required := att_mn;
//  PrestazioniQUANTITA.Required := att_mn;

  GridPrestazioni.OptionsData.Editing := (att_screening or att_mn);
  GridPrestazioni.OptionsBehavior.ImmediateEditor := (att_screening or att_mn);
  GridPrestazioni.OptionsSelection.MultiSelect := not (att_screening or att_mn);
  GridPrestazioni.OptionsSelection.CellSelect := (att_screening or att_mn);
//  GridPrestazioni.OptionsView.Header := att_screening or att_mn or (Esame.RecordCount>1);
  GridPrestazioni.Navigator.Visible := (att_screening or att_mn);

  if att_screening then
     sTabEsitoScreening.DataSet := FDMCommon.TabEsitoScreening;

end;


function TFBaseRefer.Sincronizza(xmove: TScorrimento): boolean;
var
  precPK: Variant;
  avanti,indietro: boolean;
begin

  result := true;
  ModalResult := mrNone;
  if xmove=tsNessuno then
  begin
     precPK := 0;
     StatoUscita := -1;
  end
  else if OwnerForm<>nil then
     precPK := OwnerForm.RecordAttuale;

  case xmove of
  tsRegistra:
      begin
        avanti := false;
        if continua and (FDMCommon.LeggiPostoLavoroDEST_FORM.AsInteger=0) then
          repeat
             avanti := OwnerForm.GotoNext;
          until not avanti or (OwnerForm.RecordAttuale<>precPK);
        if not avanti or not continua or (FDMCommon.LeggiPostoLavoroDEST_FORM.AsInteger=1) then
           ModalResult := mrOk
        else begin
          FPrecEnabled := true;
          xPKREFERTI := OwnerForm.RecordAttuale;
          xPKTRIAGE := OwnerForm.TriageAttuale;
          FStatoEsame := OwnerForm.StatoAttuale;
        end;
      end;
  tsAvanti:
      begin
        FRipristinaImmagini := false;
        repeat
           avanti := OwnerForm.GotoNext;
        until not avanti or (OwnerForm.RecordAttuale<>precPK);
        if not avanti then
        begin
           FSuccEnabled := false;
           result := false;
           ModalResult := mrOk;
        end;
        FPrecEnabled := true;
        xPKREFERTI := OwnerForm.RecordAttuale;
        xPKTRIAGE := OwnerForm.TriageAttuale;
        FStatoEsame := OwnerForm.StatoAttuale;
      end;
  tsIndietro:
      begin
        FRipristinaImmagini := false;
        repeat
           indietro := OwnerForm.GotoPrev;
        until not indietro or (OwnerForm.RecordAttuale<>precPK);
        if not indietro then
        begin
           FPrecEnabled := false;
           result := false;
           ModalResult := mrOk;
        end;
        FSuccEnabled := true;
        xPKREFERTI := OwnerForm.RecordAttuale;
        xPKTRIAGE := OwnerForm.TriageAttuale;
        FStatoEsame := OwnerForm.StatoAttuale;
      end;
  end;

  if ModalResult<>mrNone then
  begin
     FForzaUscita := true;  
     exit;
  end;

  if xPKREFERTI=0 then
  begin
     ModalResult := mrOk;
     exit;
  end;

  if (OwnerForm=nil) or (precPK<>OwnerForm.RecordAttuale) then
  begin
    if precPK>0 then
       FDMCommon.UnLockRecord(precPK,gblCodUtente,1);
    Esame.Parambyname('PKREFERTI').AsInteger := xPKREFERTI;
    Esame.syRefresh;
    if Esame.IsEmpty then
    begin
       MsgDlg(format(RS_EsameNonDisponibile, [xPKREFERTI]), '', ktError, [kbOk]);
       ModalResult := mrOk;
       result := false;
       exit;
    end
//    else if (FStatoEsame<>'') and not (Pos(EsameSTATOVISITA.AsString,FStatoEsame)>0) then
    else if (FStatoEsame>0) and (EsameSTATOVISITA.AsInteger<>FStatoEsame) then
    begin
       MsgDlg(format(RS_EsameGiaRefertato, [EsamePKTRIAGE.AsInteger]), '', ktError, [kbOk]);
       ModalResult := mrOk;
       result := false;
       exit;
    end
    else if ((precPK>0) and not FDMCommon.LockRecord(EsamePKTRIAGE.AsInteger,gblCodUtente,1,EsameSTATOVISITA.AsInteger)) then
    begin
       ModalResult := mrOk;
       result := false;
       exit;
    end;
//    FocusOnEditor;
  end;

//  Esame.Edit;

//  RefertaDopo.Visible := (EsameSTATOVISITA.AsInteger=130);

  if FDMCommon.ClientPacs and FDMCommon.DoppioMonitor then
  begin
     if (EsameCEIMMAGINI.AsInteger>0) then
     begin
        FDMCommon.AccNumber(EsamePKTRIAGE.AsInteger);
     end
     else
        FDMCommon.Vuoto;
  end;

  if ControlloTriage.Active then
  begin
     ControlloTriage.Close;
     ControlloPrestazioni.Close;
  end;
  ControlloTriage.openNoFetch;
  ControlloPrestazioni.openNoFetch;
  ControlloTriage.Empty;
  ControlloPrestazioni.Empty;

end;

procedure TFBaseRefer.RefertoUpdate(Sender: TObject);
begin
  inherited;
  Referto.Enabled := EsisteReferto;
end;

procedure TFBaseRefer.RefertaDopoExecute(Sender: TObject);
var
//  qOldPrestazioni,qSpostati: integer;
  i: integer;
//  sel: Integer;
//  pkt: Integer;
  lpktSpost: TStringList;
  xpkt: Integer;
  x: Integer;
//  avanti: Boolean;
begin
  inherited;

//  qSpostati := 0;
//  qOldPrestazioni := Prestazioni.Recordcount;

  Prestazioni.DisableControls;
  lpktSpost := TStringList.Create;
  FSpostaReferti := TFSpostaReferti.Create(nil);
  try

      Prestazioni.First;
      while not Prestazioni.eof do
      begin
        if PrestazioniQP.AsInteger>1 then
        begin
          FSpostaReferti.Prestazioni.Insert;
          for i:=0 to FSpostaReferti.Prestazioni.FieldCount-1 do
              if (Prestazioni.FindField(FSpostaReferti.Prestazioni.Fields[i].FieldName)<>nil) then
                    FSpostaReferti.Prestazioni.Fields[i].Value := Prestazioni.FieldByName(FSpostaReferti.Prestazioni.Fields[i].FieldName).Value;
          FSpostaReferti.Prestazioni.Post;
        end;
        Prestazioni.Next;
      end;

      if Prestazioni.HasDeleted then
      begin
        FSpostaReferti.Spostati.TempUM := True;
        try
        Prestazioni.OldValuesDataset.First;
        while not Prestazioni.OldValuesDataset.eof do
        begin
          if (Prestazioni.OldValuesDataSet.FieldbyName('Delta').asInteger = Ord(dtDelete)) and
             not Prestazioni.OldValuesDataset.FieldByName('PKPRESTAZIONI').IsNull and Esame.Locate('PKTRIAGE',Prestazioni.OldValuesDataset.FieldByName('TRIAGE_FK').AsInteger,[]) then
          begin
            FSpostaReferti.Spostati.Insert;
            for i:=0 to FSpostaReferti.Spostati.FieldCount-1 do
                if (Prestazioni.OldValuesDataset.FindField(FSpostaReferti.Spostati.Fields[i].FieldName)<>nil) then
                      FSpostaReferti.Spostati.Fields[i].Value := Prestazioni.OldValuesDataset.FieldByName(FSpostaReferti.Spostati.Fields[i].FieldName).Value;
            FSpostaReferti.Spostati.Post;
          end;
          Prestazioni.OldValuesDataset.Next;
        end;
        finally
          FSpostaReferti.Spostati.TempUM := False;
        end;
      end;

      FSpostaReferti.sRadiologie.Dataset := Radiologie;

      if (Radiologie.RecordCount<=1) then
      begin
        FSpostaReferti.lblReparto.Visible := false;
        FSpostaReferti.cxReparti.Visible := false;
        FSpostaReferti.cxReparti.EditValue := gblpkrep;
        FSpostaReferti.LkOperatore.Parambyname('reparti_fk').AsInteger := gblpkrep;
        FSpostaReferti.LkOperatore.syRefresh;
      end
      else begin
           if RadiologieREPARTI_FK.AsInteger=gblpkrep then
              Radiologie.Next;
           FSpostaReferti.cxReparti.EditValue := RadiologieREPARTI_FK.AsInteger;
           FSpostaReferti.LkOperatore.Parambyname('reparti_fk').AsInteger := RadiologieREPARTI_FK.AsInteger;
           FSpostaReferti.LkOperatore.syRefresh;
      end;

      if FSpostaReferti.ShowModal=mrOk then
      begin

        xAggiornaLista := True;
        FSpostaReferti.Spostati.First;
        while not FSpostaReferti.Spostati.Eof do
        begin
            xpkt := FSpostaReferti.SpostatiTRIAGE_FK.AsInteger;
            lpktSpost.Add( IntToStr(FSpostaReferti.SpostatiTRIAGE_FK.AsInteger) );
            while not FSpostaReferti.Spostati.Eof and (FSpostaReferti.SpostatiTRIAGE_FK.AsInteger=xpkt) do
                  FSpostaReferti.Spostati.Next;
        end;

//        qSpostati := FSpostaReferti.Spostati.RecordCount;

        for x:=0 to lpktSpost.Count-1 do
        begin

            Esame.Locate('PKTRIAGE',lpktSpost[x],[]);
            if not ControlloTriage.Locate('PKTRIAGE',lpktSpost[x],[]) then
            begin
              ControlloTriage.Insert;
              for i:=0 to ControlloTriage.FieldCount-1 do
                  if (Esame.FindField(ControlloTriage.Fields[i].FieldName)<>nil) and
                     (CompareText(ControlloTriage.Fields[i].FieldName,'pktriage')<>0) then
                     {(CompareText(ControlloTriage.Fields[i].FieldName,'reparti_fk')<>0) and
                     (CompareText(ControlloTriage.Fields[i].FieldName,'cod_med_firma')<>0)}
                        ControlloTriage.Fields[i].Value := Esame.FieldByName(ControlloTriage.Fields[i].FieldName).Value;
            end
            else
              ControlloTriage.Edit;

            ControlloTriageDURATA.AsInteger := 0;

            ControlloTriageUSER_ID.AsInteger := gblCodUtente;
            if not VarIsNull(FSpostaReferti.cxReparti.EditValue) then
               ControlloTriageREPARTI_FK.AsInteger := FDMCommon.VarToInt(FSpostaReferti.cxReparti.EditValue)
            else
               ControlloTriageREPARTI_FK.AsInteger := gblpkrep;

            if not VarIsNull(FSpostaReferti.cxRiservato.EditValue) then
               ControlloTriageCOD_MED_FIRMA.AsInteger := FDMCommon.VarToInt(FSpostaReferti.cxRiservato.EditValue);

            ControlloTriage.Post;

  {JRT 5573}
            FSpostaReferti.Spostati.First;
  {}
            while not FSpostaReferti.Spostati.Eof do
            begin
               if Prestazioni.Locate('pkprestazioni',FSpostaReferti.SpostatiPKPRESTAZIONI.AsInteger,[]) and (PrestazioniTRIAGE_FK.AsInteger=EsamePKTRIAGE.AsInteger) then
               begin
                  ControlloPrestazioni.Insert;
                  for i:=0 to ControlloPrestazioni.FieldCount-1 do
                      if (Prestazioni.FindField(ControlloPrestazioni.Fields[i].FieldName)<>nil) and
                         (CompareText(Prestazioni.Fields[i].FieldName,'PKPRESTAZIONI')<>0) then
                             ControlloPrestazioni.Fields[i].Value := Prestazioni.FieldByName(ControlloPrestazioni.Fields[i].FieldName).Value;
                  ControlloPrestazioniPKPRESTAZIONI.AsInteger := PrestazioniPKPRESTAZIONI.AsInteger;
                  ControlloPrestazioniPKTRIAGE.AsInteger := ControlloTriagePKTRIAGE.AsInteger;
                  ControlloPrestazioni.Post;
                  Prestazioni.Delete;
               end;
               FSpostaReferti.Spostati.Next;
            end;

        end;

        if FSpostaReferti.Spostati.HasDeleted then
        begin
          ControlloPrestazioni.First;
          while not ControlloPrestazioni.Eof do
          begin
             if FSpostaReferti.Spostati.FindDeletedOldValue('PKPRESTAZIONI',ControlloPrestazioniPKPRESTAZIONI.AsInteger) then
             begin
                Prestazioni.Insert;
                for i:=0 to Prestazioni.FieldCount-1 do
                    if (ControlloPrestazioni.FindField(Prestazioni.Fields[i].FieldName)<>nil) then
                          Prestazioni.Fields[i].Value := ControlloPrestazioni.FieldByName(Prestazioni.Fields[i].FieldName).Value;
                Prestazioni.Post;
                if Assigned(Prestazioni.OldValuesDataset) and Prestazioni.OldValuesDataset.Locate('PKPRESTAZIONI',ControlloPrestazioniPKPRESTAZIONI.AsInteger,[]) then
                   Prestazioni.OldValuesDataset.Delete;
                ControlloPrestazioni.Delete;
             end
             else
                ControlloPrestazioni.Next;
          end;
        end;

        for x:=0 to lpktSpost.Count-1 do
        begin

          if Esame.Locate('PKTRIAGE',lpktSpost[x],[]) and
             not Prestazioni.Locate('TRIAGE_FK',lpktSpost[x],[]) then
          begin
             Esame.TempUM := True;
             Esame.Delete;
             Esame.TempUM := False;
          end
          else if not Esame.Locate('PKTRIAGE',lpktSpost[x],[]) and
                  Prestazioni.Locate('TRIAGE_FK',lpktSpost[x],[]) then
          begin
             Esame.TempUM := True;
             Esame.Insert;
             for i:=0 to Esame.FieldCount-1 do
                 if (ControlloTriage.FindField(Esame.Fields[i].FieldName)<>nil) {and
                    (CompareText(ControlloTriage.Fields[i].FieldName,'reparti_fk')<>0) and
                    (CompareText(ControlloTriage.Fields[i].FieldName,'pktriage')<>0) and
                    (CompareText(ControlloTriage.Fields[i].FieldName,'cod_med_firma')<>0)} then
                       Esame.Fields[i].Value := ControlloTriage.FieldByName(Esame.Fields[i].FieldName).Value;
             Esame.Post;
             Esame.TempUM := False;
             if Esame.FindDeletedOldValue('PKTRIAGE',lpktSpost[x]) then
                Esame.OldValuesDataset.Delete;
          end;

        end;

        ControlloTriage.First;
        while not ControlloTriage.eof do
        begin
          if not ControlloPrestazioni.Locate('PKTRIAGE',ControlloTriagePKTRIAGE.AsInteger,[]) then
             ControlloTriage.Delete
          else
             ControlloTriage.Next;
        end;

    end;

  finally
     lpktSpost.Free;
     FreeAndNil(FSpostaReferti);
     Prestazioni.EnableControls;
     Esame.First;
  end;

//  if (qSpostati=qOldPrestazioni) then
  if (Prestazioni.Recordcount=0) then
  begin
     PostMessage(OwnerForm.Handle,SY_AGGIORNALISTA,0,0);
     FStatoUscita := 198; //-- dummy per fare refresh...
     farerefresh := true;
     ModalResult := mrOk;
  end;

end;

procedure TFBaseRefer.RefertaDopoUpdate(Sender: TObject);
begin
  inherited;
  RefertaDopo.Enabled := {(GridPrestazioni.Controller.SelectedRecordCount>0) and}
                         (EsameSTATOVISITA.AsInteger in [130,171]) and
                         ((Radiologie.RecordCount>1) or (Prestazioni.recordcount>1) or Prestazioni.HasDeleted) and
                         FCeDaSpostare
                         ;
end;

procedure TFBaseRefer.DaTrascrivereExecute(Sender: TObject);
begin
  inherited;

  if MsgDlgPos( RAD_ConfermaTrascrizione, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes then
  begin

        Esame.First;
        while not Esame.Eof do
        begin
            Esame.Edit;
            FirmaMedico(false);
    //        EsameSERVIZI_FK.AsInteger := gblpkserv; //FDMCommon.AssegnaServizio;
            EsameSTATOVISITA.AsInteger := 140;  // da trascrivere
            EsameDIFFERITA.AsInteger := 1;
            Esame.Post;
            Esame.Next;
        end;

        StopDettatura;

        ScriviReferto;
        SalvaTutto;

        Sincronizza(tsRegistra);
        SyncDettagli;

        StatoUscita := 140;

  end;

end;

procedure TFBaseRefer.FirmaMedico(solosalva: boolean);
begin
  if not gblIsMedico or (gblSpecializ and EsameCOD_MED_FIRMA.IsNull) then
  begin
    if not solosalva then
    begin
      FAssegnaReferti := TFAssegnaReferti.Create(nil);
      try
         if gblMedRefertante>=0 then
         begin
            FAssegnaReferti.sAssegnaReferti.DataSet.Locate('PKPERSONALE',gblMedRefertante,[]);
            FAssegnaReferti.cxMedFirma.EditValue := gblMedRefertante;
         end;
         if FAssegnaReferti.ShowModal=mrOk then
         begin
            EsameCOD_MED_FIRMA.AsInteger := FAssegnaReferti.sAssegnaReferti.DataSet.FieldByName('PKPERSONALE').AsInteger;
            EsameSERVIZI_FK.AsInteger := FAssegnaReferti.sAssegnaReferti.DataSet.FieldByName('SERVIZI_FK').AsInteger;
            gblMedRefertante := EsameCOD_MED_FIRMA.AsInteger;
         end
         else
            Abort;
      finally
         FAssegnaReferti.Free;
      end;
    end
    else begin
     EsameCOD_MED_FIRMA.AsInteger := gblCodUtente;
     EsameSERVIZI_FK.AsInteger := gblpkserv;
    end
  end
  else if not gblSpecializ then
  begin
     EsameCOD_MED_FIRMA.AsInteger := gblCodUtente;
     EsameSERVIZI_FK.AsInteger := gblpkserv;
  end
  else {JRT 6031}if (FDMCommon.LeggiPostoLavoroCHK_DOPPIA_FIRMA.AsInteger=1) and not solosalva then
  begin
     if EsameCOD_MED_FIRMA.IsNull then
        EsameCOD_MED_FIRMA.AsInteger := gblCodUtente;
     EsameSERVIZI_FK.AsInteger := gblpkserv;
     if not AltreFirme.Locate('COD_MED_FIRMA',gblCodUtente,[]) then
     begin
        AltreFirme.Append;
        AltreFirmeTRIAGE_FK.AsInteger := EsamePKTRIAGE.AsInteger;
        AltreFirmeCOD_MED_FIRMA.AsInteger := gblCodUtente;
        AltreFirmeNOMINATIVO.AsString := gblNomeUtente;
        AltreFirme.Post;
     end;
  end;
end;

procedure TFBaseRefer.RefertoExecute(Sender: TObject);
begin
  if (FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger in [3,4,5,6]) and (qRefertoNOTE_OSCURE.IsNull or (qRefertoNOTE_OSCURE.AsString = '')) and (FDMCommon.LeggiPostoLavoroNOTE_SISS.AsString = '') then
  begin
    MsgDlgPos( RAD_NoNoteReperibilita, '', ktWarning, [kbOK], dfFirst);
    exit;    
  end;
  EseguiReferto(1);
end;

procedure TFBaseRefer.EseguiReferto(par: integer);
var
  res: integer;
  xcreaCD: boolean;
  xtbt: TbtnEscludi;
begin
  inherited;

  Referto.Enabled := false;
  aDoppiaFirma.Enabled := false;
  try

  if {JRT 5519}not att_screening and{} (LeggiReferto='') then
  begin
     MsgDlgPos( RAD_NessunReferto, '', ktWarning, [kbOk], dfFirst);
     Abort;
  end;

  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=2) and (ImpegnativaLIV_SCR.AsInteger in [1,2]) then
  begin
     Prestazioni.DisableControls;
     try
     Prestazioni.First;
     while not Prestazioni.eof do
     begin
        if PrestazioniESITO_SCREENING_FK.IsNull then
        begin
           MsgDlg(format(SFieldRequired, [PrestazioniESITO_SCREENING_FK.DisplayName]), '', ktError, [kbOk]);
           Abort;
        end;
        Prestazioni.Next;
     end;
     finally
        Prestazioni.EnableControls;
     end;

  end;

  StopDettatura;

  Esame.First;
  while not Esame.Eof do
  begin
     Esame.Edit;
     FirmaMedico(false);
//  EsameSERVIZI_FK.AsInteger := gblpkserv; //FDMCommon.AssegnaServizio;
     Esame.Post;
     Esame.Next;
  end;
  ScriviReferto;

  SalvaTutto;

  xcreaCD := (EsameCEIMMAGINI.AsInteger=1) and (FDMCommon.LeggiPostoLavoroCD_DA_REFERTO.AsInteger>=1);

  case pStatoRef of
  tpaAddendum:
      begin
         if (EsameSTATOVISITA.AsInteger in [165,166]) then
            xtbt := [tbtprovvisorio,tbtaddendum,tbtfirmato,tbtstampa]
         else
            xtbt := [tbtprovvisorio,tbtaddendum{,tbtDefinitivo,tbtStampaDefinitivo}];
         res := SalvaReferto(pStatoRef,EsameREFERTI_FK.AsInteger,ImpegnativaNOMINATIVO.AsString,ImpegnativaPROVENIENZA.AsString,xtbt,xcreaCD);
      end;

  tpaAnnullativo:
      begin
         if (EsameSTATOVISITA.AsInteger in [165,166]) then
            xtbt := [tbtprovvisorio,tbtannullativo,tbtfirmato,tbtstampa]
         else
            xtbt := [tbtprovvisorio,tbtannullativo{,tbtDefinitivo,tbtStampaDefinitivo}];
         res := SalvaReferto(pStatoRef,EsameREFERTI_FK.AsInteger,ImpegnativaNOMINATIVO.AsString,ImpegnativaPROVENIENZA.AsString,xtbt,xcreaCD);
      end;

  tpaConsulenza: // refertazione con consulenza per MN/TN (23.11.2006)
      begin
         res := SalvaReferto(pStatoRef,EsameREFERTI_FK.AsInteger,ImpegnativaNOMINATIVO.AsString,ImpegnativaPROVENIENZA.AsString,[tbtDefinitivo,tbtStampaDefinitivo],xcreaCD);
         if not EsameNOTE_TECNICO.IsNull and (res in [mrOk,mrRetry,mrIgnore,mrAbort]) then
         begin
            res := SalvaReferto(pStatoRef,EsameREFERTI_FK.AsInteger,ImpegnativaNOMINATIVO.AsString,ImpegnativaPROVENIENZA.AsString,[tbtprovvisorio,tbtconsulenza,tbtDefinitivo,tbtStampaDefinitivo],xcreaCD);
    {-- Annullato dal Preview. Serve?
            if (res=mrCancel) then
            begin
                qyRiapri.Parambyname('pkreferti').AsInteger := EsamePKREFERTI.AsInteger;
                qyRiapri.ExecCommit;
            end;
    }
         end;
      end;
  tpaSostitutivo:
      begin
         if (EsameSTATOVISITA.AsInteger in [165,166]) then
            xtbt := [tbtprovvisorio,tbtsostitutivo,tbtfirmato,tbtstampa]
         else
            xtbt := [tbtprovvisorio,tbtsostitutivo{,tbtDefinitivo,tbtStampaDefinitivo}];

         res := SalvaReferto(pStatoRef,EsameREFERTI_FK.AsInteger,ImpegnativaNOMINATIVO.AsString,ImpegnativaPROVENIENZA.AsString,xtbt,xcreaCD);
      end;
  else
      case par of
      1:  // -- referto normale
          begin
             if gblSpecializ then
                xtbt := [tbtfirmato,tbtstampa,tbtGiaProvvisorio,tbtDefinitivo,tbtStampaDefinitivo]
             else
                xtbt := [];
             if NoProvvisorio then
                Include(xtbt,tbtprovvisorio);
             if FDMCommon.LeggiPostoLavoroCHK_REF_PREVIEW.AsInteger=0 then
                Include(xtbt,tbtVisualizza);
             res := SalvaReferto(pStatoRef,EsameREFERTI_FK.AsInteger,ImpegnativaNOMINATIVO.AsString,ImpegnativaPROVENIENZA.AsString,xtbt,xcreaCD);
          end;
      2:  // -- referto estemporaneo
         res := SalvaReferto(tpaEstemporaneo,EsameREFERTI_FK.AsInteger,ImpegnativaNOMINATIVO.AsString,'X',[tbtprovvisorio],xcreaCD);
      else // if par=3 then  // -- referto provvisorio
         res := SalvaReferto(tpaProvvisorio,EsameREFERTI_FK.AsInteger,ImpegnativaNOMINATIVO.AsString,ImpegnativaPROVENIENZA.AsString,[tbtfirmato,tbtstampa,tbtGiaProvvisorio,tbtDefinitivo,tbtStampaDefinitivo],xcreaCD);
      end;
   end;

   if (res in [mrOk,mrRetry,mrIgnore,mrAbort,mrYes,mrNoToAll]) then
   begin
     if StatoUscita=-1 then
//        StatoUscita := EsameSTATOVISITA.AsInteger;
     case res of
     mrOk:      StatoUscita := 170;  // firmato
     mrRetry:   StatoUscita := 160;  // firmato provvisorio
     mrAbort:   StatoUscita := 161;  // stampato provvisorio
     mrIgnore:  StatoUscita := 180;  // stampato
     mrYes:     StatoUscita := 165;  // definitivo
     mrNoToAll: StatoUscita := 166;  // stampato definitivo
     end;

     Sincronizza(tsRegistra);
     if (FDMCommon.LeggiPostoLavoroDEST_FORM.AsInteger=0) then
        SyncDettagli;
   end;

  finally
     Referto.Enabled := true;
     aDoppiaFirma.Enabled := {not FAddendum and} FDoppiaFirma;
  end;

end;

procedure TFBaseRefer.DaTrascrivereUpdate(Sender: TObject);
begin
  inherited;
//	DaTrascrivere.Enabled := not EsisteReferto;
end;

procedure TFBaseRefer.VisualizzaImmaginiExecute(Sender: TObject);
begin
  inherited;

  if FDMCommon.ClientPacs then
  begin
     if (PrestazioniCEIMMAGINI.AsInteger>0) then
          FDMCommon.AccNumber(EsamePKTRIAGE.AsInteger)
     else
          FDMCommon.Vuoto;
  end;

end;

procedure TFBaseRefer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FDMCommon.UnLockRecord(EsamePKTRIAGE.AsInteger,gblCodUtente,1);
  if FDMCommon.ClientPacs then
     FDMCommon.Vuoto;
end;

procedure TFBaseRefer.PrestazioniBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('pkreferti').AsInteger := EsameREFERTI_FK.AsInteger;
end;

procedure TFBaseRefer.SuccessivoExecute(Sender: TObject);
begin
  inherited;

  if Sincronizza(tsAvanti) then
     SyncDettagli;

end;

procedure TFBaseRefer.PrecedenteExecute(Sender: TObject);
begin
  inherited;

  if Sincronizza(tsIndietro) then
     SyncDettagli;

end;


procedure TFBaseRefer.ZoomRefertoExecute(Sender: TObject);
begin
  inherited;

  StopDettatura;

  strRichMemoText := TStringStream.Create('');
  strRichMemoText.WriteString(LeggiReferto);

  if cxRichMemoDlg.Execute(false) then
  begin
     CancellaReferto;
     ScriviTesto(FDMCommon.RTFToANSI(strRichMemoText.DataString));
  end;
  strRichMemoText.Free;
  strRichMemoText := nil;

end;

procedure TFBaseRefer.EsameBeforePost(DataSet: TDataSet);
begin
  inherited;
  EsameUSER_ID.AsInteger := gblCodUtente;
  EsameTIPO_REFVOC_FK.AsInteger := FDMCommon.RefertazioneVocale;
  EsameWORKSTATION_FK.AsInteger := gblpkworkstation;
end;

procedure TFBaseRefer.SalvaExecute(Sender: TObject);
begin
  inherited;

  StopDettatura;

  Esame.First;
  while not Esame.Eof do
  begin
     Esame.Edit;
     FirmaMedico((FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>3));
//  EsameSERVIZI_FK.AsInteger := gblpkserv; // FDMCommon.AssegnaServizio;
     Esame.Post;
     Esame.Next;
  end;
  if not xAggiornaLista and (Esame.recordcount>1) then
     xAggiornaLista := true;
  Esame.First;
  ScriviReferto;
  Esame.Post;
  SalvaTutto;
  Sincronizza(tsRegistra);
  SyncDettagli;
  if xAggiornaLista then
     PostMessage(OwnerForm.Handle,SY_AGGIORNALISTA,0,0);

  FForzaUscita := true;
       
end;

procedure TFBaseRefer.SalvaUpdate(Sender: TObject);
begin
  inherited;
  Salva.Enabled := EsisteReferto or not ControlloPrestazioni.IsEmpty or not ControlloTriage.IsEmpty or Fusi.HasChanged or Anamnesi.HasChanged or Impegnativa.HasChanged;
end;

procedure TFBaseRefer.VisualizzaImmaginiUpdate(Sender: TObject);
begin
  inherited;
  VisualizzaImmagini.Enabled := FDMCommon.ClientPacs and (EsameCEIMMAGINI.AsInteger>0);
end;

procedure TFBaseRefer.BaseFormHide(Sender: TObject);
begin
  inherited;
  StopDettatura;
  FForzaUscita := false;  
end;

procedure TFBaseRefer.EsameBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  inherited;
  if Visible then
  begin
    StopDettatura;
    if not (LeggiReferto='') then
       CancellaReferto;
  end;
end;

procedure TFBaseRefer.aTestiStandardExecute(Sender: TObject);
begin
  inherited;
  FTreeTestiRic := TFTreeTestiRic.Create(nil);
  try
     if FDMCommon.LeggiPostoLavoroFLAG_TESTISTD.AsInteger=1 then
     begin
        if gblSpecializ and not EsameCOD_MED_FIRMA.IsNull then
           FTreeTestiRic.xgblCodUtente := EsameCOD_MED_FIRMA.AsInteger
        else
           FTreeTestiRic.xgblCodUtente := gblCodUtente;
     end
     else begin
        FTreeTestiRic.xgblCodUtente := 0;
        FTreeTestiRic.Modificabile := (FDMCommon.LeggiPostoLavoroFLAG_TESTISTD.AsInteger=0) or ((FDMCommon.LeggiPostoLavoroFLAG_TESTISTD.AsInteger=2) and (gblUserIsAdmin or gblSuperUser));
     end;
     FTreeTestiRic.FormChiama := self;
     FTreeTestiRic.ActiveControl := FTreeTestiRic.cxTestiStd;

     if FTreeTestiRic.ShowModal=mrOk then
     begin
    	  InserisciTesto(FDMCommon.RTFToANSI(FTreeTestiRic.TestiStandardDIAGNOSI.AsString));
     end;
  finally
     FTreeTestiRic.Free;
     FTreeTestiRic := nil;
  end;

end;

procedure TFBaseRefer.aNegativoExecute(Sender: TObject);
begin
  inherited;
  GetRefertoNegativo.Parambyname('pkcodicirad').AsInteger := PrestazioniCODICIRAD_FK.AsInteger;
  GetRefertoNegativo.syrefresh;
  if GetRefertoNegativoREF_NEGATIVO.IsNull then
     MsgDlgPos( RAD_NessunRefNegativo, '', ktInformation, [kbOk], dfFirst)
  else
     InserisciTesto(FDMCommon.RTFToANSI(GetRefertoNegativoREF_NEGATIVO.AsString));
end;

procedure TFBaseRefer.SyncDettagli;
begin
  Impegnativa.Parambyname('pkimpegnative').AsInteger := EsameIMPEGNATIVE_FK.AsInteger;
  Impegnativa.syRefresh;
//ToDo: altrefirme su più triage...
  AltreFirme.Parambyname('TRIAGE_FK').AsInteger := EsamePKTRIAGE.AsInteger;
  AltreFirme.syRefresh;
  Radiologie.Parambyname('DIAGNOSTICA_FK').AsInteger := EsameDIAGNOSTICA_FK.AsInteger;
  Radiologie.syRefresh;

  Prestazioni.syRefresh;
  GridPrestazioni.Controller.GoToFirst;
  qyPrecedenti.syRefresh;
  GridPrecedenti.Controller.GoToFirst;

  if not qRefertoDIAGNOSI.IsNull then
     CaricaPrecedente
  else
     CancellaReferto;

end;


procedure TFBaseRefer.CaricaPrecedente;
begin
end;

procedure TFBaseRefer.qyPrecedentiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  Sender.Parambyname('pkassistibili').AsInteger := ImpegnativaASSISTIBILI_FK.AsInteger;
  Sender.Parambyname('pkreferti').Value := xPKREFERTI;
end;

procedure TFBaseRefer.aImmaginiPrecedentiExecute(Sender: TObject);
begin
  inherited;

  if FDMCommon.ClientPacs then
  begin
     if (QyPrecedentiCEIMMAGINI.AsInteger>0) then
        FDMCommon.AccNumber(QyPrecedentiPKTRIAGE.AsInteger)
     else
        FDMCommon.Vuoto;
  end;

end;

procedure TFBaseRefer.aImmaginiPrecedentiUpdate(Sender: TObject);
begin
  inherited;
  aImmaginiPrecedenti.Enabled := not qyPrecedenti.IsEmpty and (qyPrecedentiCEIMMAGINI.AsInteger=1);
end;

procedure TFBaseRefer.aRefertoPrecedentiExecute(Sender: TObject);
begin

  VisualizzaReferto(qyPrecedentiSITE_NAME.AsString,qyPrecedentiPKTRIAGE.AsInteger,ImpegnativaNOMINATIVO.AsString,
                    [tbtfirmato,tbtprovvisorio,tbtDefinitivo,tbtStampaDefinitivo],[tprnStampa,tprnDaCreare]);
  // -- riattiva immagine attuale...
  if FRipristinaImmagini and FDMCommon.ClientPacs and FDMCommon.DoppioMonitor then
  begin
     PostMessage(Handle,SY_DBLCLICK,0,LongInt(VisualizzaImmagini));
     FRipristinaImmagini := false;
  end;

end;

procedure TFBaseRefer.aRefertoPrecedentiUpdate(Sender: TObject);
begin
  inherited;
  aRefertoPrecedenti.Enabled := not qyPrecedenti.IsEmpty and (qyPrecedentiCEREFERTO.AsInteger=1);
end;

procedure TFBaseRefer.GridPrecedentiKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=VK_RETURN then
  begin
    PostMessage(Handle,SY_DBLCLICK,0,LongInt(aRefertoPrecedenti));
    if FDMCommon.ClientPacs and FDMCommon.DoppioMonitor then
    begin
       PostMessage(Handle,SY_DBLCLICK,0,LongInt(aImmaginiPrecedenti));
       FRipristinaImmagini := true;
    end;
  end;

end;

procedure TFBaseRefer.GridPrecedentiDblClick(Sender: TObject);
begin
  inherited;
{ ??? non c'è più proprietà in 14.2.2
  cxGrid1.ViewInfo.DetailsSiteViewInfo.TabsViewInfo.TabControl.TabIndex := 1;
}
{
  PostMessage(Handle,SY_DBLCLICK,0,LongInt(aRefertoPrecedenti));
  if FDMCommon.ClientPacs and FDMCommon.DoppioMonitor then
  begin
     PostMessage(Handle,SY_DBLCLICK,0,LongInt(aImmaginiPrecedenti));
     FRipristinaImmagini := true;
  end;
}
end;

procedure TFBaseRefer.InizioInterattivaExecute(Sender: TObject);
begin
  inherited;
  FocusOnEditor;
  StartDettatura;
end;

procedure TFBaseRefer.InizioInterattivaUpdate(Sender: TObject);
begin
  inherited;
  InizioInterattiva.Enabled := true;  //not DettaturaAttiva;
end;

procedure TFBaseRefer.FineInterattivaExecute(Sender: TObject);
begin
  inherited;
  StopDettatura;
end;

procedure TFBaseRefer.FineInterattivaUpdate(Sender: TObject);
begin
  inherited;
  FineInterattiva.Enabled := true; // DettaturaAttiva;
end;

procedure TFBaseRefer.SuccessivoUpdate(Sender: TObject);
begin
  inherited;
  Successivo.Enabled := continua and FSuccEnabled;
end;

procedure TFBaseRefer.PrecedenteUpdate(Sender: TObject);
begin
  inherited;
  Precedente.Enabled := continua and FPrecEnabled;
end;

procedure TFBaseRefer.DoCreate;
begin
  inherited;

//  Personalizza := gblSuperUser;
  FDMCommon.CaricaLayout(Name,dxLayoutControl1);

  FForzaUscita := false;
  FAnamnesiInserita := False;
  FCeDaSpostare := False;
  xAggiornaLista := False;
  att_screening := false;
  att_mn := false;

  FEstemporaneo := false;
  FpStatoRef := tpaNone;
  FRipristinaImmagini := false;
  ConnettiDettatura;
  DaTrascrivere.Visible := (FDMCommon.LeggiPostoLavoroCHK_TRASCRIVERE.AsInteger=1);
  FDoppiaFirma := (FDMCommon.LeggiPostoLavoroCHK_DOPPIA_FIRMA.AsInteger=1) and (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>2);
  aDoppiaFirma.Visible := FDoppiaFirma;

  if FDMCommon.LeggiPostoLavoroCHK_SLITTA_REP.AsInteger=1 then
     dxLayoutControlServizio.CaptionOptions.Text := RS_Reparto;

  cxGridEsameDBTableView1MEDESECUTORE.Visible := (FDMCommon.LeggiPostoLavoroCHECK_MED_PER_ESAME.AsInteger=1);
  aBookmark.Visible := (FDMCommon.LeggiPostoLavoroBOOKMARK_IN_CD.AsInteger>0);
  aBookMarkPrecedenti.Visible := (FDMCommon.LeggiPostoLavoroBOOKMARK_IN_CD.AsInteger>0);
    

end;

procedure TFBaseRefer.aCopiaTitoloExecute(Sender: TObject);
begin
  inherited;
  InserisciTesto(PrestazioniDESCRIZIONE.AsString+chr(13)+chr(10));
end;

procedure TFBaseRefer.aCopiaTitoloUpdate(Sender: TObject);
begin
  inherited;
  aCopiaTitolo.Enabled := not Prestazioni.IsEmpty;
end;

procedure TFBaseRefer.aDoppiaFirmaExecute(Sender: TObject);
{
var
  rr,cod_med2: integer;
}
begin
  inherited;
{$IFNDEF MEDICORNER}
  Esame.First;
  while not Esame.Eof do
  begin
     Esame.Edit;
     // -- per inserire la firma dello specializzando tra le altre firme quando firma come principale
     if gblIsMedico then
        FirmaMedico(false);
     Esame.Post;
     Esame.Next;
  end;

  FAltreFirme := TFAltreFirme.Create(nil);
  try
     FAltreFirme.sAltreFirme.DataSet := AltreFirme;
     FAltreFirme.xpkt := EsamePKTRIAGE.AsInteger;
     if FAltreFirme.ShowModal=mrOk then
     begin
        if (AltreFirme.State in dsEditModes) then
           AltreFirme.Post;
     end
     else begin
        if (AltreFirme.State in dsEditModes) then
           AltreFirme.Cancel;
     end;
  finally
     FAltreFirme.Free;
  end;
{$ENDIF}
end;

procedure TFBaseRefer.aNegativoUpdate(Sender: TObject);
begin
  inherited;
  aNegativo.Enabled := not Prestazioni.IsEmpty and not PrestazioniREFNEGTEXT_FK.IsNull;
end;

procedure TFBaseRefer.ImpegnativaAfterEdit(DataSet: TDataSet);
begin
  inherited;
  ImpegnativaUSER_ID.AsInteger := gblCodUtente;
end;

procedure TFBaseRefer.aDoppiaFirmaUpdate(Sender: TObject);
begin
  inherited;
  aDoppiaFirma.Enabled := EsisteReferto;
end;

procedure TFBaseRefer.aBookmarkExecute(Sender: TObject);
begin
  inherited;

  if FDMCommon.ClientPacs then
  begin
     if (EsameCEIMMAGINI.AsInteger>0) then
          FDMCommon.AccNumber(EsamePKTRIAGE.AsInteger,true)
     else
          FDMCommon.Vuoto;
  end;

end;

procedure TFBaseRefer.aBookmarkUpdate(Sender: TObject);
begin
  inherited;
  aBookmark.Enabled := FDMCommon.ClientPacs and (EsameCEIMMAGINI.AsInteger>0);
end;

procedure TFBaseRefer.GetRefertoNegativoBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFBaseRefer.SetStatoRef(Value: TpStatoReferto);
begin
  if Value<>FpStatoRef then
  begin
     FpStatoRef := Value;

     DaTrascrivere.Enabled := FpStatoRef=tpaNone;
     DaTrascrivere.Visible := FpStatoRef=tpaNone;

     RefertaDopo.Enabled := FpStatoRef=tpaNone;
     RefertaDopo.Visible := FpStatoRef=tpaNone;

     aFondiReferto.Enabled := FpStatoRef=tpaNone;
     aFondiReferto.Visible := FpStatoRef=tpaNone;

     Salva.Enabled := (FpStatoRef=tpaNone); //or ((FpStatoRef=tpaAddendum) and (FDMCommon.LeggiPostoLavoroPROVV_DEFINITIVO.AsInteger=1));
     Salva.Visible := (FpStatoRef=tpaNone); //or ((FpStatoRef=tpaAddendum) and (FDMCommon.LeggiPostoLavoroPROVV_DEFINITIVO.AsInteger=1));

  end;
end;

procedure TFBaseRefer.aEstemporaneoExecute(Sender: TObject);
begin
  inherited;
  EseguiReferto(2);
end;

procedure TFBaseRefer.CopiaDiagnosiExecute(Sender: TObject);
var
  cDiagnosi: string;
begin
  inherited;

  if (qyPrecedentiSITE_NAME.AsString<>'') and (qyPrecedentiSITE_NAME.AsString<>FDMCommon.Param_TicketSITE_NAME.AsString) then
  begin
     if FDMCommon.ApriMultiSite(qyPrecedentiSITE_NAME.AsString) then
     begin
        qCopiaDiagnosi.close;
        qCopiaDiagnosi.AstaClientSocket := FDMCommon.AstaMultiSite;
     end
     else begin
        MsgDlg(format(RAD_SitoNonRaggiungibile,[qyPrecedentiSITE_NAME.AsString]),'', ktError, [kbOK]);
        exit;
     end;
     qCopiaDiagnosi.Parambyname('triage_fk').AsInteger := qyPrecedentiPKTRIAGE.AsInteger;
     qCopiaDiagnosi.syRefresh;
     cDiagnosi := qCopiaDiagnosiDIAGNOSI.AsString;
  end
  else begin
    qCopiaDiagnosi.close;
    qCopiaDiagnosi.AstaClientSocket := FDMCommon.AstaClientSocket;
    qCopiaDiagnosi.Parambyname('triage_fk').AsInteger := qyPrecedentiPKTRIAGE.AsInteger;
    qCopiaDiagnosi.syRefresh;
    cDiagnosi := qCopiaDiagnosiDIAGNOSI.AsString;
  end;

  if (cDiagnosi<>'') then
  begin
     InserisciTesto(cDiagnosi);
  end;

end;

procedure TFBaseRefer.CopiaDiagnosiUpdate(Sender: TObject);
begin
  inherited;
  CopiaDiagnosi.Enabled := not qyPrecedenti.IsEmpty and (qyPrecedentiCEDIAGNOSI.AsInteger=1);
end;

procedure TFBaseRefer.ImpegnativaAfterQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  FAnamnesiInserita := False;
{$IFNDEF MEDICORNER}
  Anamnesi.syRefresh;
  DaFondere.syRefresh;
  Fusi.syRefresh;
  PrestazioniDaFondere.syRefresh;
  SettaMN_Screening;
{$ENDIF}
  qReferto.syRefresh;
  if xDiagnPrec<>'' then
  begin
    if not (qReferto.State in dsEditModes) then
       qReferto.Edit;
    qRefertoDIAGNOSI.AsString := xDiagnPrec;
  end;
end;

procedure TFBaseRefer.aEstemporaneoUpdate(Sender: TObject);
begin
  inherited;
  aEstemporaneo.Enabled := EsisteReferto;
end;

procedure TFBaseRefer.aVisualizzaPrecedentiExecute(Sender: TObject);
begin
  inherited;
  FVisitePrecRAD := TFVisitePrecRAD.Create(nil);
  try
     FVisitePrecRAD.xpka := ImpegnativaASSISTIBILI_FK.AsInteger;
     FVisitePrecRAD.xpki := ImpegnativaPKIMPEGNATIVE.AsInteger;
     FVisitePrecRAD.ShowModal;
  finally
     FVisitePrecRAD.Free;
     FVisitePrecRAD := nil;
  end;

end;

procedure TFBaseRefer.aVisualizzaPrecedentiUpdate(Sender: TObject);
begin
  inherited;
  aVisualizzaPrecedenti.Enabled := not qyPrecedenti.IsEmpty;
end;

procedure TFBaseRefer.ZoomNoteEsameExecute(Sender: TObject);
begin
  inherited;

  strRichMemoText := TStringStream.Create('');
  strRichMemoText.WriteString(EsameNOTE_TECNICO.AsString);

  if cxRichMemoDlg.Execute(false) then
  begin
      Esame.First;
      while not Esame.Eof do
      begin
         Esame.Edit;
         EsameNOTE_TECNICO.AsString := FDMCommon.RTFToANSI(strRichMemoText.DataString);
         Esame.Post;
         Esame.Next;
      end;
  end;
  strRichMemoText.Free;
  strRichMemoText := nil;

end;

procedure TFBaseRefer.BaseFormDestroy(Sender: TObject);
begin
  DisconnettiDettatura;
  inherited;
end;

procedure TFBaseRefer.Inizializza;
begin
end;

function TFBaseRefer.LanciaRefertazione(xstato: integer; xtitolo: string; xpkr: Integer; xpkt: Integer; Refertazione: TAstaClientDataset; xOwnerForm: TsyForm; xcontinua,xprovvisorio: boolean;
                                        xstatoref: TpStatoReferto; xestemporaneo: boolean; xstatouscita: integer; xdiagnosi: string): boolean;
begin

  FInit := Now();
//  try

     xDiagnPrec := xdiagnosi;
     Caption := xtitolo;
     OwnerForm := xOwnerForm;
     continua := xContinua;
     xPKREFERTI := xpkr;
     xPKTRIAGE := xpkt;

     NoProvvisorio := not xprovvisorio;
     pStatoRef := xstatoref;
     Estemporaneo := xestemporaneo;
     StatoEsame := xstato;

     result := false;

     if Sincronizza(tsNessuno) then
     begin

       result := not (ShowModal=mrCancel);

       if (Result or FareRefresh) and Assigned(Refertazione) then
       begin
          if xContinua then
          begin
             if (FDMCommon.LeggiPostoLavoroDEST_FORM.AsInteger=0) then
                 Refertazione.syRefresh;
          end
          else if (StatoUscita>=xstatouscita) then
          begin
             Refertazione.TempUM := True;
             try
               Esame.First;
               while not Esame.Eof do
               begin
                 if Refertazione.Locate('PKTRIAGE',EsamePKTRIAGE.AsInteger,[]) then
                    Refertazione.Delete;
                 Esame.Next;
               end;
             finally
               Refertazione.TempUM := False;
             end;
          end
          else begin
               Refertazione.Locate('PKREFERTI',xPKREFERTI,[]);
               while not Refertazione.eof and (Refertazione.FieldByName('PKREFERTI').AsInteger=xPKREFERTI) do
               begin
                 if not Esame.Locate('PKTRIAGE',Refertazione.FieldByName('PKTRIAGE').AsInteger,[]) then
                    Refertazione.Delete
                 else
                    Refertazione.Next;
               end;
               Esame.First;
               while not Esame.Eof do
               begin
                 if Refertazione.Locate('PKTRIAGE',EsamePKTRIAGE.AsInteger,[]) then
                    Refertazione.RefreshRecord(EsamePKTRIAGE.AsString,'PKTRIAGE')
                 else
                    Refertazione.InsertRefresh(EsamePKTRIAGE.AsString,'PKTRIAGE');
                 Esame.Next;
               end;
               ControlloTriage.First;
               while not ControlloTriage.Eof do
               begin
                 if not Refertazione.Locate('PKTRIAGE',EsamePKTRIAGE.AsInteger,[]) then
                    Refertazione.InsertRefresh(EsamePKTRIAGE.AsString,'PKTRIAGE');
                 ControlloTriage.Next;
               end;
          end;
          Farerefresh := false;            
       end;

     end;

end;

procedure TFBaseRefer.RefertoProvvisorioExecute(Sender: TObject);
begin
  inherited;
   EseguiReferto(3);
end;

procedure TFBaseRefer.RefertoProvvisorioUpdate(Sender: TObject);
begin
  inherited;
  RefertoProvvisorio.Enabled := EsisteReferto;
end;

procedure TFBaseRefer.aPrivacyExecute(Sender: TObject);
begin
  inherited;
  FPrivacy := TFPrivacy.Create(nil);
  try
    if not Assigned(FPrivacy.sOscuramento.Dataset) then
       FPrivacy.sOscuramento.Dataset := Oscuramento;
    if not Assigned(FPrivacy.sImpegnativa.Dataset) then
       FPrivacy.sImpegnativa.DataSet := Impegnativa;
    if not Assigned(FPrivacy.sqReferto.Dataset) then
       FPrivacy.sqReferto.DataSet := qReferto;
    FPrivacy.ShowModal;
  finally
     FPrivacy.Free;
     FPrivacy := nil;
  end;

end;

procedure TFBaseRefer.OscuramentoBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('referti_fk').AsInteger := xPKREFERTI;
end;

procedure TFBaseRefer.aBookMarkPrecedentiExecute(Sender: TObject);
begin
  inherited;
  if FDMCommon.ClientPacs then
  begin
     if (qyPrecedentiCEIMMAGINI.AsInteger>0) then
          FDMCommon.AccNumber(qyPrecedentiPKTRIAGE.AsInteger,true)
     else
          FDMCommon.Vuoto;
  end;

end;

procedure TFBaseRefer.aBookMarkPrecedentiUpdate(Sender: TObject);
begin
  inherited;
  aBookMarkPrecedenti.Enabled := not qyPrecedenti.IsEmpty and (qyPrecedentiCEIMMAGINI.AsInteger=1);
end;

procedure TFBaseRefer.aFondiRefertoExecute(Sender: TObject);
var
  i: integer;
  z: integer;
  DeltaFlag: Integer;
  HotSpot: Integer;
  CurrentDataSet: TAstaDataSet;
  fatto: Boolean;
begin
  inherited;
  FFondiReferto := TFFondiReferto.Create(nil);

  try
      FFondiReferto.DaFondere.TempUM := true;
      try
      DaFondere.First;
      while not DaFondere.eof do
      begin
        FFondiReferto.DaFondere.Insert;
        for i:=0 to FFondiReferto.DaFondere.FieldCount-1 do
            if (DaFondere.FindField(FFondiReferto.DaFondere.Fields[i].FieldName)<>nil) then
                  FFondiReferto.DaFondere.Fields[i].Value := DaFondere.FieldByName(FFondiReferto.DaFondere.Fields[i].FieldName).Value;
        FFondiReferto.DaFondere.Post;

        DaFondere.Next;
      end;
      finally
         FFondiReferto.DaFondere.TempUM := false;
      end;

      FFondiReferto.Fusi.TempUM := True;
      try
      Fusi.First;
      while not Fusi.eof do
      begin
        FFondiReferto.Fusi.Insert;
        for i:=0 to FFondiReferto.Fusi.FieldCount-1 do
            if (Fusi.FindField(FFondiReferto.Fusi.Fields[i].FieldName)<>nil) then
                  FFondiReferto.Fusi.Fields[i].Value := Fusi.FieldByName(FFondiReferto.Fusi.Fields[i].FieldName).Value;
        FFondiReferto.Fusi.Post;
        Fusi.Next;
      end;
      finally
        FFondiReferto.Fusi.TempUM := False;
      end;

     if FFondiReferto.ShowModal=mrOk then
     begin

        xAggiornaLista := True;
        Farerefresh := true;
        CurrentDataSet := FFondiReferto.Fusi.DeltaDataSetCurrentValueDataSet;

        if Assigned(FFondiReferto.Fusi.OldValuesDataSet) then
        begin
          FFondiReferto.Fusi.OldValuesDataSet.First;
          while not FFondiReferto.Fusi.OldValuesDataSet.Eof do
          begin
              DeltaFlag := FFondiReferto.Fusi.BookMarkDeltaChanged;
              HotSpot := FFondiReferto.Fusi.OldValuesDataSet.FieldByName('BookMark').AsInteger;
              if (TDeltaType(DeltaFlag) in [dtEdit, dtAppend]) and not
                CurrentDataSet.Locate('BookMark', HotSpot, []) then
                  exit; // We have a problem.....

             if (TDeltaType(DeltaFlag) = dtAppend) then
             begin
                if not (Esame.Locate('RIS_STUDY_EUID',CurrentDataSet.FieldByName('RIS_STUDY_EUID').AsString,[]) and
                       (EsameDIAGNOSTICA_FK.AsInteger=CurrentDataSet.FieldByName('DIAGNOSTICA_FK').AsInteger)) then
                begin
                  fatto := Esame.FindDeletedOldValue('PKTRIAGE',FFondiReferto.Fusi.FieldByName('PKTRIAGE').AsInteger);
                  if fatto then
                     Esame.OldValuesDataset.Delete;

                  // -- se non esiste l'A.N. sulla stessa diagnostica lo creo nuovo
                  Esame.TempUM := fatto;
                  Esame.Insert;
                  for z:=0 to CurrentDataSet.FieldCount-1 do
                      if (Esame.FindField(CurrentDataSet.Fields[z].FieldName)<>nil) and
                         (CurrentDataSet.Fields[z].FieldName<>'REFERTI_FK') then
                            Esame.FieldbyName(CurrentDataSet.Fields[z].FieldName).Value := CurrentDataSet.Fields[z].Value;
                  Esame.FieldbyName('REFERTI_FK').AsInteger := xPKREFERTI;
                  Esame.FieldbyName('PKTRIAGE').AsInteger := FFondiReferto.Fusi.FieldByName('PKTRIAGE').AsInteger;
                  Esame.Post;
                  Esame.TempUM := False;
                end;
                fatto := DaFondere.FindInsertedOldValue('PKTRIAGE',FFondiReferto.Fusi.FieldByName('PKTRIAGE').AsInteger);
                DaFondere.TempUM := fatto;
                if DaFondere.Locate('PKTRIAGE',FFondiReferto.Fusi.FieldByName('PKTRIAGE').AsInteger,[]) then
                   DaFondere.Delete;
                DaFondere.TempUM := False;

                // -- carico le prestazioni fuse
                PrestazioniDaFondere.Locate('TRIAGE_FK',FFondiReferto.Fusi.FieldByName('PKTRIAGE').AsInteger,[]);
                while not PrestazioniDaFondere.eof and (PrestazioniDaFondereTRIAGE_FK.AsInteger=FFondiReferto.Fusi.FieldByName('PKTRIAGE').AsInteger) do
                begin
//                    if (PrestazioniDaFondereREFERTI_FK.AsInteger=FFondiReferto.Fusi.FieldByName('REFERTI_FK').AsInteger) and
                    if not Prestazioni.Locate('PKPRESTAZIONI',PrestazioniDaFonderePKPRESTAZIONI.AsInteger,[]) then
                    begin
                      Prestazioni.Append;
                      for z:=0 to PrestazioniDaFondere.FieldCount-1 do
                          if (Prestazioni.FindField(PrestazioniDaFondere.Fields[z].FieldName)<>nil) and
                             (PrestazioniDaFondere.Fields[z].FieldName<>'TRIAGE_FK') then
                                Prestazioni.FieldbyName(PrestazioniDaFondere.Fields[z].FieldName).Value := PrestazioniDaFondere.Fields[z].Value;
                      PrestazioniTRIAGE_FK.AsInteger := EsamePKTRIAGE.AsInteger;
                      Prestazioni.Post;
  //                    PrestazioniDaFondere.Delete;
                    end;
                    PrestazioniDaFondere.Next;
                end;

                FFondiReferto.Fusi.First;
                while not FFondiReferto.Fusi.eof do
                begin
                  fatto := Fusi.FindDeletedOldValue('PKTRIAGE',FFondiReferto.FusiPKTRIAGE.AsInteger);
                  if fatto then
                     Fusi.OldValuesDataSet.Delete;
                  if not Fusi.Locate('PKTRIAGE',FFondiReferto.FusiPKTRIAGE.AsInteger,[]) then
                  begin
                      Fusi.TempUM := fatto;
                      Fusi.Insert;
                      for i:=0 to Fusi.FieldCount-1 do
                          if (FFondiReferto.Fusi.FindField(Fusi.Fields[i].FieldName)<>nil) then
                                Fusi.Fields[i].Value := FFondiReferto.Fusi.FieldByName(Fusi.Fields[i].FieldName).Value;
                      Fusi.Post;
                      Fusi.TempUM := False;
                  end;
                  FFondiReferto.Fusi.Next;
                end;

             end;
             FFondiReferto.Fusi.OldValuesDataSet.Next;
           end;

         end;

         // -- gestione togli fusione
         if FFondiReferto.Fusi.HasDeleted then
         begin
            FFondiReferto.Fusi.OldValuesDataSet.First;
            while not FFondiReferto.Fusi.OldValuesDataSet.Eof do
            begin
              if (FFondiReferto.Fusi.OldValuesDataSet.FieldbyName('Delta').asInteger = Ord(dtDelete)) then
              begin
                // -- elimino le prestazioni aggiunte
                Prestazioni.TempUM := True;
                PrestazioniDaFondere.Locate('TRIAGE_FK',FFondiReferto.Fusi.OldValuesDataSet.FieldByName('PKTRIAGE').AsInteger,[]);
                while not PrestazioniDaFondere.eof and
                      (PrestazioniDaFondereTRIAGE_FK.AsInteger=FFondiReferto.Fusi.OldValuesDataSet.FieldByName('PKTRIAGE').AsInteger) do
                begin
                    if Prestazioni.Locate('PKPRESTAZIONI',PrestazioniDaFonderePKPRESTAZIONI.AsInteger,[]) then
                    begin
                      Prestazioni.Delete;
                    end
                    else begin
                        // -- tolgo le eventuali prestazioni già spostate
                        if ControlloPrestazioni.Locate('PKPRESTAZIONI',PrestazioniDaFonderePKPRESTAZIONI.AsInteger,[]) then
                        begin
                            if Assigned(Prestazioni.OldValuesDataset) and Prestazioni.OldValuesDataset.Locate('PKPRESTAZIONI',PrestazioniDaFonderePKPRESTAZIONI.AsInteger,[]) then
                               Prestazioni.OldValuesDataset.Delete;
                            ControlloPrestazioni.Delete;
                        end;
                    end;
                    PrestazioniDaFondere.Next;
                end;
                Prestazioni.TempUM := False;

                ControlloTriage.First;
                while not ControlloTriage.eof do
                begin
                  if not ControlloPrestazioni.Locate('PKTRIAGE',ControlloTriagePKTRIAGE.AsInteger,[]) then
                     ControlloTriage.Delete
                  else
                     ControlloTriage.Next;
                end;

                // -- elimino Esame, se non ha più prestazioni attaccate
                if Esame.Locate('PKTRIAGE',FFondiReferto.Fusi.OldValuesDataSet.FieldByName('PKTRIAGE').AsInteger,[]) then
                   Esame.Delete;

                fatto := Fusi.FindDeletedOldValue('PKTRIAGE',FFondiReferto.Fusi.OldValuesDataSet.FieldByName('PKTRIAGE').AsInteger);
                if fatto then
                   Fusi.OldValuesDataSet.Delete;

                Fusi.TempUM := fatto;
                if Fusi.Locate('PKTRIAGE',FFondiReferto.Fusi.OldValuesDataSet.FieldByName('PKTRIAGE').AsInteger,[]) then
                   Fusi.Delete;
                Fusi.TempUM := False;

                // -- riattivo il triage che può essere fuso
                fatto := DaFondere.FindDeletedOldValue('PKTRIAGE',FFondiReferto.Fusi.OldValuesDataSet.FieldByName('PKTRIAGE').AsInteger);
                if fatto then
                   DaFondere.OldValuesDataSet.Delete;

                DaFondere.TempUM := fatto;
                DaFondere.Insert;
                for i:=0 to DaFondere.FieldCount-1 do
                    if (FFondiReferto.Fusi.OldValuesDataset.FindField(DaFondere.Fields[i].FieldName)<>nil) then
                          DaFondere.Fields[i].Value := FFondiReferto.Fusi.OldValuesDataset.FieldByName(DaFondere.Fields[i].FieldName).Value;
                DaFondere.Post;
                DaFondere.TempUM := False;

              end;
              FFondiReferto.Fusi.OldValuesDataSet.Next;
            end;
         end;
         if Assigned(CurrentDataset) then
           CurrentDataset.Free;
         RicalcolaQP;
     end;

  finally
     FreeAndNil(FFondiReferto);
  end;

end;

procedure TFBaseRefer.aFondiRefertoUpdate(Sender: TObject);
begin
  inherited;
  aFondiReferto.Enabled := {DaFondere.Active and} not DaFondere.IsEmpty or not Fusi.IsEmpty;
end;

procedure TFBaseRefer.qRefertoBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('PKREFERTI').AsInteger := xPKREFERTI;
end;

procedure TFBaseRefer.EsameAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not (qReferto.State in dsEditModes) then
     qReferto.Edit;
end;

procedure TFBaseRefer.aComparaImmaginiExecute(Sender: TObject);
begin
  inherited;

  if FDMCommon.ClientPacs then
  begin
     if (QyPrecedentiCEIMMAGINI.AsInteger>0) and (PrestazioniCEIMMAGINI.AsInteger>0) then
        FDMCommon.AccNumber(PrestazioniTRIAGE_FK.AsInteger,False,qyPrecedentiPKTRIAGE.AsInteger)
     else
        FDMCommon.Vuoto;
  end;

end;

procedure TFBaseRefer.aComparaImmaginiUpdate(Sender: TObject);
begin
  inherited;
  aComparaImmagini.Enabled := not qyPrecedenti.IsEmpty and (qyPrecedentiCEIMMAGINI.AsInteger=1) and not qyPrecedentiRIS_STUDY_EUID.IsNull;
end;

procedure TFBaseRefer.DaFondereBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.ParamByName('impegnative_fk').AsInteger := ImpegnativaPKIMPEGNATIVE.AsInteger;
  Sender.ParamByName('referti_fk').AsInteger := xPKREFERTI;
end;

procedure TFBaseRefer.PrestazioniDaFondereBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.ParamByName('impegnative_fk').AsInteger := ImpegnativaPKIMPEGNATIVE.AsInteger;
end;

procedure TFBaseRefer.GridPrestazioniInitEdit(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit);
var
  LookupProp: TcxLookupComboBoxProperties;
begin
  inherited;

  if AItem = GridPrestazioniESITO_SCREENING_FK then
  begin
    // Way 1 - Using an extra filtered dataset/query
    LookupProp := TcxLookupComboBox(AEdit).Properties;
    LookupProp.ListSource := FDMCommon.sLkTabEsitoScreening;
    FDMCommon.LkTabEsitoScreening.Filtered := false;
    FDMCommon.LkTabEsitoScreening.Filter   := format('TIPOLIVELLO_FK = '#39'%s'#39,[PrestazioniTIPOLIVELLO_FK.AsString]);
    FDMCommon.LkTabEsitoScreening.Filtered := true;
  end;

end;

procedure TFBaseRefer.WPQuesitoEnter(Sender: TObject);
begin
  inherited;
  oldReadBarCode := ReadBarCode;
  ReadBarCode := False;
end;

procedure TFBaseRefer.WPQuesitoExit(Sender: TObject);
begin
  inherited;
  ReadBarCode := oldReadBarCode;
end;

procedure TFBaseRefer.FusiBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.ParamByName('impegnative_fk').AsInteger := ImpegnativaPKIMPEGNATIVE.AsInteger;
  Sender.ParamByName('referti_fk').AsInteger := xPKREFERTI;
  Sender.ParamByName('pktriage').AsInteger := xPKTRIAGE;
end;

procedure TFBaseRefer.PrestazioniAfterPopulate(Sender: TObject);
begin
  inherited;
  RicalcolaQP;
end;

procedure TFBaseRefer.RicalcolaQP;
begin
  FCeDaSpostare := False;
  Prestazioni.DisableControls;
  Prestazioni.First;
  while not FCeDaSpostare and not Prestazioni.Eof do
  begin
    FCeDaSpostare := (PrestazioniQP.AsInteger>1);
    Prestazioni.Next;
  end;
  Prestazioni.EnableControls;
end;

procedure TFBaseRefer.aPrivacyUpdate(Sender: TObject);
begin
  inherited;
  aPrivacy.Enabled := (pStatoRef<>tpaAnnullativo);

end;

procedure TFBaseRefer.CardViewPrecedentiDblClick(Sender: TObject);
begin
  inherited;
{ ??? non c'è più proprietà in 14.2.2
  cxGrid1.ViewInfo.DetailsSiteViewInfo.TabsViewInfo.TabControl.TabIndex := 0;
}
end;

procedure TFBaseRefer.aAnamnesiExecute(Sender: TObject);
begin
  inherited;
  CreaAnamnesi(false);
end;

procedure TFBaseRefer.CreaAnamnesi(copiaquesito: boolean);
begin
{$IFNDEF MEDICORNER}
  if FAnamnesiInserita then
  begin
     cxGridAnamnesiDBTableView1.Controller.GoToFirst();
     Anamnesi.Edit;
  end
  else
     Anamnesi.Insert;

  if InitAnamnesi(copiaquesito,Anamnesi,ImpegnativaQUESITO_DIAGN.AsString,ImpegnativaASSISTIBILI_FK.AsInteger,false)=mrOk then
  begin
     Anamnesi.Post;
     if not FAnamnesiInserita then
     begin
        if not (Impegnativa.State in dsEditModes) then
           Impegnativa.Edit;
        ImpegnativaANAMNESI_FK.AsInteger := AnamnesiPKANAMNESI.AsInteger;
        FAnamnesiInserita := True;
     end;
  end
  else begin
     Anamnesi.Cancel;
  end;
{$ENDIF}
end;

procedure TFBaseRefer.AnamnesiBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.ParamByName('assistibili_fk').AsInteger := ImpegnativaASSISTIBILI_FK.AsInteger;
end;

procedure TFBaseRefer.AnamnesiNewRecord(DataSet: TDataSet);
begin
  inherited;
  AnamnesiASSISTIBILI_FK.AsInteger := ImpegnativaASSISTIBILI_FK.AsInteger;
  AnamnesiUSER_ANAMNESI.AsInteger := gblCodUtente;
  AnamnesiDATA_ANAMNESI.AsDateTime := Date();  
end;

procedure TFBaseRefer.aCopiaAnamnesiExecute(Sender: TObject);
begin
  inherited;
  InserisciTesto(AnamnesiANAMNESI.AsString);
end;

procedure TFBaseRefer.aCopiaAnamnesiUpdate(Sender: TObject);
begin
  inherited;
  aCopiaAnamnesi.Enabled := not Anamnesi.IsEmpty;
end;

procedure TFBaseRefer.cxGridAnamnesiDBTableView1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
  NBDI_INSERT : begin
                  PostMessage(Handle,SY_DBLCLICK,0,LongInt(aAnamnesi));
                  ADone := true;
                end;
  end;
end;

procedure TFBaseRefer.aCopiaQuesitoExecute(Sender: TObject);
begin
  inherited;
  CreaAnamnesi(true);
end;

procedure TFBaseRefer.cxGridAnamnesiDBTableView1DblClick(Sender: TObject);
var
  P: TPoint;
  AHitTest: TcxCustomGridHitTest;
begin
  inherited;
  GetCursorPos(P);
  P := TcxGridSite(Sender).ScreenToClient(P);
  AHitTest := TcxGridSite(Sender).GridView.ViewInfo.GetHitTest(P);
  if AHitTest.HitTestCode = htNavigator then //check if a navigator button has been clicked
    Exit;
  PostMessage(Handle,SY_DBLCLICK,0,LongInt(aAnamnesi));
end;

procedure TFBaseRefer.aStoricoPrecedentiExecute(Sender: TObject);
begin
  inherited;
  StoricoOperazione(qyPrecedentiPKTRIAGE.AsInteger);
end;

procedure TFBaseRefer.aStoricoPrecedentiUpdate(Sender: TObject);
begin
  inherited;
  aStoricoPrecedenti.Enabled := (RecordPrecedenti<>-1);
end;

function TFBaseRefer.RecordPrecedenti: integer;
begin
  if (GridPrecedenti.Controller.SelectedRecordCount=1) and
     (GridPrecedenti.Controller.FocusedRecordIndex<>-1) and
     not (GridPrecedenti.Controller.FocusedRecord is TcxGridGroupRow) then
     result := GridPrecedenti.Controller.FocusedRecord.Values[GridPrecedentiPKREFERTI.Index]
  else
     result := -1;
end;

procedure TFBaseRefer.aSalvaContinuaExecute(Sender: TObject);
begin
  inherited;
  Esame.First;
  while not Esame.Eof do
  begin
     Esame.Edit;
     FirmaMedico(false);
//  EsameSERVIZI_FK.AsInteger := gblpkserv; //FDMCommon.AssegnaServizio;
     Esame.Post;
     Esame.Next;
  end;
  Esame.First;
  ScriviReferto;
  Esame.Post;
  SalvaTutto;
  FOldDiagnosi := LeggiReferto;
end;

procedure TFBaseRefer.aSalvaContinuaUpdate(Sender: TObject);
begin
  inherited;
//  aSalvaContinua.Enabled := ((FOldDiagnosi<>LeggiReferto) or not ControlloPrestazioni.IsEmpty or not ControlloTriage.IsEmpty or Fusi.HasChanged or Anamnesi.HasChanged or Impegnativa.HasChanged);
end;

procedure TFBaseRefer.aControlloImmaginiExecute(Sender: TObject);
var
  res: integer;
begin
   res := ControlloImmagini(EsameRIS_STUDY_EUID.AsString,EsamePKTRIAGE.AsInteger,ImpegnativaCOD_ESTERNO.AsString);
   if res>=0 then
   begin
     Esame.Edit;
     if (res=0) then
       EsameCEIMMAGINI.AsInteger := 1
     else
       EsameCEIMMAGINI.AsInteger := 2;
     EsameUSER_ID.AsInteger := gblCodUtente;
     Esame.Post;
  //      Refertazione.RefreshRecord(lpkt[i],'PKTRIAGE');
   end;
end;

function TFBaseRefer.ControlloImmagini(const xris_study: string; xpktriage: integer; const xcod_esterno: string): integer;
var
  errtxt: string;
begin

    result := -1;
    FDMCommon.qPacs.Parambyname('pktriage').AsInteger := xpktriage;
    FDMCommon.qPacs.syRefresh;
    if FDMCommon.qPacsPACS.IsNull or (FDMCommon.qPacsPACS.AsString='') then
    begin
       MsgDlg(RIS_PACSNonConf, '', ktError, [kbOk], dfFirst);
       exit;
    end;

    FDMCommon.EsameInPacs.Parambyname('pris_study_euid').AsString := xris_study;
    FDMCommon.EsameInPacs.Parambyname('ppid').AsString := xcod_esterno;
    if not FDMCommon.LeggiPostoLavoroWPACS_FK.IsNull then
       FDMCommon.EsameInPacs.Parambyname('ppacs_fk').AsInteger := FDMCommon.LeggiPostoLavoroWPACS_FK.AsInteger;
    FDMCommon.EsameInPacs.Parambyname('ptipo_modalita').Clear;
    FDMCommon.EsameInPacs.ExecSQL;
    result := FDMCommon.EsameInPacs.Parambyname('res').AsInteger;

    case result of
    0:
    begin
      MsgDlg(format(RS_ImmaginiInviate,[EsameRIS_STUDY_EUID.AsString,FDMCommon.EsameInPacs.Parambyname('xname').AsString]),'', ktInformation, [kbOK]);
    end;
    1:
    begin
      errtxt := format(RS_ImmaginiNonArrivate,[EsameRIS_STUDY_EUID.AsString,FDMCommon.EsameInPacs.Parambyname('xname').AsString]);
      MsgDlg(errtxt,'', ktWarning, [kbOK]);
    end;
    2:
    begin
      errtxt := format(RS_PID_Differenti,[xris_study,
                                          FDMCommon.EsameInPacs.Parambyname('xlast_name').AsString,
                                          FDMCommon.EsameInPacs.Parambyname('xfirst_name').AsString,
                                          FDMCommon.EsameInPacs.Parambyname('xexternal_eid').AsString]);
      MsgDlg(errtxt,'', ktWarning, [kbOK]);
    end;
{
    3:
    begin
      errtxt := format(RS_MODALITA_Differenti,[RefertazioneRIS_STUDY_EUID.AsString,FDMCommon.EsameInPacsxname.AsString,EsameTIPO_MODALITA.AsString]);
      if tp_ctrl=1 then
      begin
        MsgDlg(errtxt,'', ktWarning, [kbOK]);
        esci := false;
      end
      else if MsgDlg(format(RS_MODALITA_QDifferenti,[RefertazioneRIS_STUDY_EUID.AsString,FDMCommon.EsameInPacsxname.AsString,EsameTIPO_MODALITA.AsString]),'', ktConfirmation, [kbYes,kbNo],dfSecond)=mrYes then
      begin
         esci := true;
      end;
    end;
}
    4:
    begin
      errtxt := format(RS_ImmaginiNonArrivate,[xris_study,FDMCommon.EsameInPacs.Parambyname('xname').AsString]);
      MsgDlg(errtxt,'', ktWarning, [kbOK]);
    end;
    end;

    FDMCommon.ErroriInvio.ParamByName('triage_fk').AsInteger := xpktriage;
    FDMCommon.ErroriInvio.syRefresh;
    if not FDMCommon.ErroriInvio.IsEmpty then
    begin
      FDMCommon.ErroriInvio.Edit;
      if (result=0) then
        FDMCommon.ErroriInvioCEIMMAGINI.AsInteger := 1
      else
        FDMCommon.ErroriInvioCEIMMAGINI.AsInteger := 2;
      FDMCommon.ErroriInvioUSER_ID.AsInteger := gblcodutente;
      FDMCommon.ErroriInvio.Post;
    end;

end;

procedure TFBaseRefer.aControlloImmaginiUpdate(Sender: TObject);
begin
  inherited;
   aControlloImmagini.Enabled := FDMCommon.Pacs and not Esame.IsEmpty {and (EsameCEIMMAGINI.AsInteger in [0,2])};
end;

procedure TFBaseRefer.aControlloPrecedentiExecute(Sender: TObject);
var
  res: integer;
begin
   res := ControlloImmagini(qyPrecedentiRIS_STUDY_EUID.AsString,qyPrecedentiPKTRIAGE.AsInteger,qyPrecedentiCOD_ESTERNO.AsString);
   qyPrecedenti.Edit;
   if res>=0 then
   begin
     if (res=0) then
       qyPrecedentiCEIMMAGINI.AsInteger := 1
     else
       qyPrecedentiCEIMMAGINI.AsInteger := 2;
     qyPrecedentiUSER_ID.AsInteger := gblCodUtente;
     qyPrecedenti.Post;
  //      Refertazione.RefreshRecord(lpkt[i],'PKTRIAGE');
   end;
end;

procedure TFBaseRefer.aControlloPrecedentiUpdate(Sender: TObject);
begin
  inherited;
   aControlloPrecedenti.Enabled := FDMCommon.Pacs and not qyPrecedenti.IsEmpty {and (qyPrecedentiCEIMMAGINI.AsInteger in [0,2])};
end;

procedure TFBaseRefer.BaseFormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;

  if not FForzaUscita and DatiVariati then
  begin
    if (MsgDlgPos(RIS_DatiVariati, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes) then
       aSalvaContinua.Execute;
    FForzaUscita := true;
  end;

end;

procedure TFBaseRefer.csEZKeys1KeyIntercept(KeyType: TNavigationKey;
  Ctrl: TControl; var Intercept: Boolean);
begin
  inherited;
  Intercept := Assigned(Ctrl)
               and
                 not (Ctrl is TcxButton)
               and
                 not (Ctrl is TcxCustomInnerMemo);
end;

procedure TFBaseRefer.ImpegnativaBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFBaseRefer.StartPersonalizza;
begin
  LanciaPersonalizza(dxLayoutControl1,FDMCommon.qFormLayout);
end;

procedure TFBaseRefer.StopPersonalizza;
begin
  FDMCommon.SalvaPersonalizza(Name,dxLayoutControl1,gblcodutente);
end;

procedure TFBaseRefer.ResetPersonalizza;
begin
  if FDMCommon.ResetLayout(Name,dxLayoutControl1) then
     Annulla.Execute;
end;

end.
