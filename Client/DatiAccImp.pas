unit DatiAccImp;

interface

uses
  BaseRad, Messages, IInterface, IIConsts, RicRadiologiaPreno, syForm, Forms,{}
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, DB, cxDBData, cxTextEdit, cxSpinEdit,
  cxCurrencyEdit, cxButtonEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, dxBar, Classes, ActnList,
  cxDBEdit, cxCheckBox, cxDropDownEdit, cxCalendar, cxImageComboBox,
  cxDBLookupComboBox, KScxDBLookupDlg, cxMemo, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxLabel, cxDBLabel, cxLookupEdit,
  cxDBLookupEdit, cxMaskEdit, dxLayoutControl, CSEZForm, AstaUpdateSQL,
  AstaDrv2, AstaClientDataset, StdCtrls, cxButtons, Controls, ExtCtrls,
  cxGroupBox;

{$I syVer.inc}

type

  TFDatiAccImp = class(TFBaseRad)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    ActionList1: TActionList;
    Accettazione: TAstaClientDataSet;
    AccettazioneDATA_PRESCRIZIONE: TDateTimeField;
    AccettazioneTES_IDENT: TStringField;
    AccettazioneUSER_ID: TIntegerField;
    AccettazioneIMPORTO_TOTALE: TFloatField;
    AccettazioneIMPORTO_PAGATO: TFloatField;
    AccettazionePKIMPEGNATIVE: TIntegerField;
    AccettazioneASSISTIBILI_FK: TIntegerField;
    AccettazioneLIBRETTO_SAN: TStringField;
    AccettazioneDESCESENZIONE: TStringField;
    AccettazioneTIPO_ATTIVITA_FK: TStringField;
    UpdAccettazione: TAstaUpdateSQL;
    sAccettazione: TDataSource;
    dxGroupProvenienza: TdxLayoutGroup;
    sPrestazioni: TDataSource;
    Prestazioni: TAstaClientDataSet;
    PrestazioniPKPRESTAZIONI: TFloatField;
    PrestazioniPROGRESSIVO_RIGA: TIntegerField;
    PrestazioniDIAGNOSTICA_FK: TIntegerField;
    PrestazioniTRIAGE_FK: TIntegerField;
    PrestazioniDURATA: TIntegerField;
    PrestazioniCODICE: TStringField;
    PrestazioniCODICIRAD_FK: TIntegerField;
    PrestazioniDOSE: TFloatField;
    PrestazioniIMPEGNATIVE_FK: TIntegerField;
    PrestazioniREPARTI_FK: TIntegerField;
    PrestazioniUSER_ID: TIntegerField;
    PrestazioniORA_INIZIO: TDateTimeField;
    PrestazioniDIAGNOSTICA: TStringField;
    updPrestazioni: TAstaUpdateSQL;
    qVerificaNumero: TAstaClientDataSet;
    CancellaEsame: TAction;
    aRicercaPaziente: TAction;
    cxNumeroImpegnativa: TcxDBMaskEdit;
    lblNumero: TdxLayoutItem;
    sLkEsenzione: TDataSource;
    cxCodiceEsenzione: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxGroupAnagrafica: TdxLayoutGroup;
    cxCognome: TcxDBMaskEdit;
    cxNome: TcxDBMaskEdit;
    cdDataNascita: TcxDBLabel;
    cxIndirizzo: TcxDBLabel;
    dxLayoutCognome: TdxLayoutItem;
    dxLayoutNome: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControlNomePaziente: TdxLayoutGroup;
    btnRicercaPaz: TcxButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutGroupPaziente: TdxLayoutGroup;
    cxCodice: TcxButtonEdit;
    dxLayoutCodice: TdxLayoutItem;
    dxGroupRicercaEsami: TdxLayoutGroup;
    dxLayoutGroupDatiAmm: TdxLayoutGroup;
    cxGrid1: TcxGrid;
    GridPrestazioni: TcxGridDBTableView;
    GridPrestazioniPKCODICIRAD: TcxGridDBColumn;
    GridPrestazioniCODICE: TcxGridDBColumn;
    GridPrestazioniDESCRIZIONE: TcxGridDBColumn;
    GridPrestazioniIMPORTO: TcxGridDBColumn;
    GridPrestazioniDURATA: TcxGridDBColumn;
    GridPrestazioniPROGRESSIVO_RIGA: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    dxLayoutControl1Item12: TdxLayoutItem;
    PrestazioniIMPORTO: TFloatField;
    AccettazioneCOGNOME: TStringField;
    AccettazioneNOME: TStringField;
    AccettazioneDATA_NASCITA: TDateTimeField;
    dxGroupQuesito: TdxLayoutGroup;
    cxDBQuesito: TcxDBMemo;
    dxLayoutControl1Item13: TdxLayoutItem;
    sEsami: TDataSource;
    CodiciEsenti: TAstaClientDataSet;
    CodiciEsentiIDENT_FK: TStringField;
    Conferma: TAction;
    AggiornaStatoVisita: TAstaClientDataSet;
    Composto: TAstaClientDataSet;
    CompostoDESCRIZIONE: TStringField;
    CompostoCODICE: TStringField;
    CompostoDURATA: TIntegerField;
    CompostoDOSE: TFloatField;
    CompostoIDENT_FK: TStringField;
    GridPrestazioniDIAGNOSTICA: TcxGridDBColumn;
    GridPrestazioniORA_INIZIO: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    dxCancellaEsame: TdxBarButton;
    PrestazioniSTATOVISITA: TIntegerField;
    btStampa: TcxButton;
    ConfermaStampa: TAction;
    dxBarPopGrid: TdxBarPopupMenu;
    cxDescrizione: TcxButtonEdit;
    dxLayoutDescrizione: TdxLayoutItem;
    dxLayoutControl1AlignmentConstraint1: TdxLayoutAlignmentConstraint;
    PrestazioniAGENDE_FK: TIntegerField;
    AccettazioneREPARTI_FK: TIntegerField;
    btnPrecedenti: TcxButton;
    Precedenti: TAction;
    cxProvenienza: TcxDBLookupComboBox;
    dxLayoutControl1Item14: TdxLayoutItem;
    AccettazioneOSP_RICH: TStringField;
    sLkOspedali: TDataSource;
    AccettazioneIMP_OBBLIG: TIntegerField;
    PrestazioniPAGATO: TFloatField;
    PrestazioniIDENT_FK: TStringField;
    GridPrestazioniPAGATO: TcxGridDBColumn;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBLabel;
    dxGroupNumeroImpegnativa: TdxLayoutGroup;
    dxLayoutControl1AlignmentConstraint3: TdxLayoutAlignmentConstraint;
    dxLayoutControl1Group13: TdxLayoutGroup;
    AccettazioneDESCR_OSPEDALE: TStringField;
    AccettazioneNOMEMEDICO: TStringField;
    MedBase: TAstaClientDataSet;
    MedBaseNOMINATIVO: TStringField;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxMedicoBase: TKScxDBLookupDlg;
    dxLayoutControl1Group12: TdxLayoutGroup;
    PrestazioniESENTE: TIntegerField;
    GridPrestazioniESENTE: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBLabel;
    dxLayoutControl1Item4: TdxLayoutItem;
    AccettazioneTELEFONO: TStringField;
    cxTelefono: TcxDBMaskEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxGroupMedicoRich: TdxLayoutGroup;
    AccettazionePROVENIENZA: TStringField;
    PrestazioniNUMERO_PRESTAZIONE: TIntegerField;
    cxDBLabel1: TcxDBLabel;
    dxLayoutControl1Item16: TdxLayoutItem;
    AccettazioneSAN_IDENT: TIntegerField;
    qVerificaAccettazione: TAstaClientDataSet;
    qVerificaAccettazioneDIAGNOSTICA_FK: TIntegerField;
    qVerificaAccettazioneNOMEDIAGNOSTICA: TStringField;
    qVerificaAccettazioneORA_INIZIO: TDateTimeField;
    cxDBTextEdit3: TcxDBLabel;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBTextEdit4: TcxDBLabel;
    dxLayoutControl1Item18: TdxLayoutItem;
    AccettazioneURGENZA: TIntegerField;
    qVerificaNumeroPKIMPEGNATIVE: TIntegerField;
    qVerificaNumeroDATA_NASCITA: TDateTimeField;
    qVerificaAccettazioneSTATOVISITA: TIntegerField;
    PrestazioniSTATO: TIntegerField;
    GridPrestazioniSTATO: TcxGridDBColumn;
    AccettazionePROVIMP: TStringField;
    MedInterni: TAstaClientDataSet;
    MedInterniPKPERSONALE: TIntegerField;
    MedBasePKPERSONALE: TStringField;
    MedBaseREPARTI_FK: TStringField;
    MedInterniNOMINATIVO: TStringField;
    AccettazioneCOD_MED_INT: TIntegerField;
    AccettazioneREPARTO_RICH_FK: TIntegerField;
    AccettazioneTIPO_FATTURA: TIntegerField;
    GridPrestazioniNUMERO_PRESTAZIONE: TcxGridDBColumn;
    AccettazioneESENTE: TIntegerField;
    MedInterniREPARTI_FK: TIntegerField;
    MedInterniCODICE: TStringField;
    MedInterniREPARTO: TStringField;
    AccettazioneLEG_CODICE: TStringField;
    cxDiagnostica: TcxLookupComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    sDiagnostica: TDataSource;
    AggiornaStatoVisitaUSER_ID: TIntegerField;
    AggiornaStatoVisitaSTATO: TIntegerField;
    AggiornaStatoVisitaPKIMPEGNATIVE: TIntegerField;
    AggiornaStatoVisitaDATA_EROGAZIONE: TDateTimeField;
    updAggiornaStatoVisita: TAstaUpdateSQL;
    cxDBImageComboBox2: TcxDBImageComboBox;
    dxLayoutControlUrgenza: TdxLayoutItem;
    AggiornaStatoVisitaORA_INIZIO: TDateTimeField;
    cxDataImpegnativa: TcxDBDateEdit;
    dxLayoutDataImpegnativa: TdxLayoutItem;
    AggiornaStatoVisitaCOD_MED_VALIDA: TIntegerField;
    cfrEsami: TAstaClientDataSet;
    cfrEsamiPKPRESTAZIONI: TFloatField;
    cfrEsamiCODICIRAD_FK: TIntegerField;
    cfrEsamiTRIAGE_FK: TIntegerField;
    cfrEsamiCODICE: TStringField;
    cfrEsamiDESCRIZIONE: TStringField;
    qVerificaAccettazionePKTRIAGE: TIntegerField;
    PrestazioniGRESAMI_FK: TIntegerField;
    CompostoGRESAMI_FK: TIntegerField;
    AccettazioneFLAG_ANESTESIA: TIntegerField;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControlAnestesista: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutTipoAccesso: TdxLayoutItem;
    sTipoAccesso: TDataSource;
    AccettazioneTIPO_RICETTA_FK: TStringField;
    cxTipoRicetta: TcxDBLookupComboBox;
    AccettazioneDATA_IMPEGNATIVA: TDateTimeField;
    cxDataRichiesta: TcxDBDateEdit;
    dxLayoutTipoRicetta: TdxLayoutItem;
    sTipoRicetta: TDataSource;
    dxLayoutDataRichiesta: TdxLayoutItem;
    CompostoPKGRUPPIPREST: TIntegerField;
    PrestazioniGRUPPIPREST_FK: TIntegerField;
    dxLayoutGroupDatiImpegnativa: TdxLayoutGroup;
    dxBarButton1: TdxBarButton;
    AccettazioneCOM_RES: TStringField;
    AccettazioneTNRES: TIntegerField;
    AccettazioneCIT_CODICE: TStringField;
    AccettazioneCOM_TYPE: TStringField;
    btnMPPS: TcxButton;
    AccettazioneLIV_SCR: TIntegerField;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutScreening: TdxLayoutItem;
    AccettazioneINVIO_FK: TStringField;
    AccettazioneIND_REF: TStringField;
    AccettazioneCAP_REF: TStringField;
    AccettazioneCOM_REF: TStringField;
    AccettazioneDESC_INVIO: TStringField;
    cxButtonConsegna: TcxDBButtonEdit;
    dxLayoutConsegnaReferto: TdxLayoutItem;
    AccettazioneDES_COMREF: TStringField;
    cxMagg: TcxDBCheckBox;
    dxLayoutControlQuota: TdxLayoutItem;
    AccettazioneIMPORTO_QUOTA: TFloatField;
    PrestazioniRADIOFARMACO: TStringField;
    Materiali: TAstaClientDataSet;
    MaterialiPRESTAZIONI_FK: TIntegerField;
    MaterialiQUANTITA: TFloatField;
    MaterialiMAGART_FK: TIntegerField;
    MaterialiTIPO: TIntegerField;
    GridPrestazioniRADIOFARMACO: TcxGridDBColumn;
    DistBas: TAstaClientDataSet;
    DistBasMAGART_FK: TIntegerField;
    DistBasQUANTITA: TFloatField;
    AccettazioneUSL_REG_CODICE_ASS: TStringField;
    AccettazioneUSL_CODICE_ASS: TStringField;
    AccettazioneTET_IDENT: TIntegerField;
    cxCompilazione: TcxDBLookupComboBox;
    dxLayoutCompilazione: TdxLayoutItem;
    AccettazioneRICETTA_INF: TIntegerField;
    PrestazioniRIS_STUDY_EUID: TStringField;
    AccettazioneCOD_ESTERNO: TStringField;
    AccettazioneSES_CODICE: TStringField;
    dxLayoutControl1Item19: TdxLayoutItem;
    cxDBTextEdit5: TcxDBLabel;
    AccettazionePLACER_ORDER_NUMBER: TStringField;
    cxNrRichiestaEsterna: TcxDBMaskEdit;
    dxNumeroRichiestaEsterna: TdxLayoutItem;
    AccettazioneNR_IMPEGNATIVA: TStringField;
    AccettazioneTIPO_ACCESSO: TStringField;
    MedBaseCODICE: TStringField;
    AccettazioneMED_BASE: TStringField;
    AccettazioneTIPO_PRENO: TIntegerField;
    AccettazioneTIPO_ACCESSO_FK: TStringField;
    aTesseraSanitaria: TAction;
    cxBtnTessera: TcxButton;
    dxLayoutControlRicercaTessera: TdxLayoutItem;
    AltriEsami: TAstaClientDataSet;
    AltriEsamiPKTRIAGE: TIntegerField;
    AltriEsamiDIAGNOSTICA_FK: TIntegerField;
    AltriEsamiDATA_NASCITA: TDateTimeField;
    AltriEsamiNOMINATIVO: TStringField;
    AltriEsamiDIAGNOSTICA: TStringField;
    AltriEsamiORA_INIZIO: TDateTimeField;
    AltriEsamiSTATOVISITA: TIntegerField;
    AltriEsamiDESCSTATOVISITA: TStringField;
    AccettazioneESAMI_IN_REPARTO: TIntegerField;
    cxDBImageComboBox3: TcxDBImageComboBox;
    dxLayoutControlTrasporto: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    aNote: TAction;
    btNote: TcxButton;
    AccettazioneQUESITO_DIAGN: TStringField;
    NoteEsame: TAstaClientDataSet;
    NoteEsameNOTE_PRENO: TStringField;
    NoteEsameIMPEGNATIVE_FK: TIntegerField;
    uNoteEsame: TAstaUpdateSQL;
    CompostoEXTRA_TARIFFARIO: TIntegerField;
    PrestazioniCALCOLO_85: TIntegerField;
    AccettazioneORDERPLACER_ID: TStringField;
    qVerificaNumeroNOMINATIVO: TStringField;
    qLivScr: TAstaClientDataSet;
    sqLivScr: TDataSource;
    qLivScrLIV_SCR: TIntegerField;
    qLivScrDESCRIZIONE: TStringField;
    qRicettaInf: TAstaClientDataSet;
    sqRicettaInf: TDataSource;
    qRicettaInfRICETTA_INF: TIntegerField;
    qRicettaInfDESCRIZIONE: TStringField;
    AccettazioneETA: TIntegerField;
    PrestazioniLIV_SCR: TIntegerField;
    AggiornaStatoVisitaDURATA: TIntegerField;
    AggiornaStatoVisitaCOD_MED_FIRMA: TIntegerField;
    AggiornaStatoVisitaDIAGNOSTICA: TIntegerField;
    AccettazioneANNO_FATT: TIntegerField;
    AccettazioneNR_FATT: TIntegerField;
    AccettazioneALI_IVA: TIntegerField;
    cxNumeroFattura: TcxDBSpinEdit;
    dxLayoutNumeroFattura: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    qNumeroFattura: TAstaClientDataSet;
    qNumeroFatturaNR_FATT: TIntegerField;
    AccettazioneCHECK_QUOTA: TIntegerField;
    AccettazioneDATA_FATT: TDateTimeField;
    dxLayoutDataFattura: TdxLayoutItem;
    cxDataFattura: TcxDBDateEdit;
    dxLayoutGroupFattura: TdxLayoutGroup;
    AccettazioneDESC_COM_RES: TStringField;
    CompostoPKCODICIRAD: TIntegerField;
    PrestazioniBRANCA: TStringField;
    GridPrestazioniBRANCA: TcxGridDBColumn;
    PrestazioniDESCBRANCA: TStringField;
    GridPrestazioniDESCBRANCA: TcxGridDBColumn;
    CompostoBRANCA: TStringField;
    CompostoDESCBRANCA: TStringField;
    aAnnulla: TAction;
    PrestazioniCESPECIFIC: TIntegerField;
    PrestazioniDESCRIZIONE: TStringField;
    qSpecxPrest: TAstaClientDataSet;
    qSpecxPrestPKSPECXPREST: TIntegerField;
    qSpecxPrestSPECIFICAZIONI_FK: TIntegerField;
    qSpecxPrestPRESTAZIONI_FK: TIntegerField;
    qSpecxPrestIDSPECIFICAZIONI: TStringField;
    qSpecxPrestDESCRIZIONE: TStringField;
    qSpecxPrestPREZZO: TFloatField;
    qSpecxPrestCOSTO: TFloatField;
    cxGrid1Level2: TcxGridLevel;
    GridSpecificazioni: TcxGridDBTableView;
    sqSpecxPrest: TDataSource;
    GridSpecificazioniIDSPECIFICAZIONI: TcxGridDBColumn;
    GridSpecificazioniDESCRIZIONE: TcxGridDBColumn;
    GridSpecificazioniPREZZO: TcxGridDBColumn;
    procedure AccettazioneBeforePost(DataSet: TDataSet);
    procedure AccettazioneNewRecord(DataSet: TDataSet);
    procedure PrestazioniBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure PrestazioniNewRecord(DataSet: TDataSet);
    procedure cxNumeroImpegnativaPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure aRicercaPazienteExecute(Sender: TObject);
    procedure aRicercaPazienteUpdate(Sender: TObject);
    procedure BaseFormDestroy(Sender: TObject);
    procedure PrestazioniAfterDelete(DataSet: TDataSet);
    procedure ConfermaExecute(Sender: TObject);
    procedure ConfermaUpdate(Sender: TObject);
    procedure CompostoBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure CancellaEsameExecute(Sender: TObject);
    procedure CancellaEsameUpdate(Sender: TObject);
    procedure csEZKeys1KeyIntercept(KeyType: TNavigationKey;
      Ctrl: TControl; var Intercept: Boolean);
    procedure ConfermaStampaExecute(Sender: TObject);
    procedure ConfermaStampaUpdate(Sender: TObject);
    procedure cxDescrizionePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDescrizioneKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxCodiceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxCognomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrestazioniBeforePost(DataSet: TDataSet);
    procedure PrecedentiExecute(Sender: TObject);
    procedure PrecedentiUpdate(Sender: TObject);
    procedure PrestazioniAfterPost(DataSet: TDataSet);
    procedure GridPrestazioniDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure cxMedicoBaseSearch(Sender: TObject; var trovato: Integer;
      var codice: Variant; const cerca: String);
    procedure cxCodicePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxProvenienzaPropertiesCloseUp(Sender: TObject);
    procedure BaseFormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxCodiceEsenzionePropertiesCloseUp(Sender: TObject);
    procedure GridPrestazioniESENTEPropertiesEditValueChanged(
      Sender: TObject);
    procedure AccettazioneAfterEdit(DataSet: TDataSet);
    procedure cxCognomePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxDiagnosticaPropertiesCloseUp(Sender: TObject);
    procedure cxMedicoBaseNotInList(Sender: TObject; LookupTable: TDataSet;
      NewValue: String; var Accept: Boolean; var codice: Variant);
    procedure cxDBImageComboBox1PropertiesCloseUp(Sender: TObject);
    procedure cxButtonConsegnaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDataImpegnativaPropertiesEditValueChanged(Sender: TObject);
    procedure PrestazioniBeforeInsert(DataSet: TDataSet);
    procedure MaterialiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure MaterialiNewRecord(DataSet: TDataSet);
    procedure GridPrestazioniRADIOFARMACOPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure PrestazioniBeforeDelete(DataSet: TDataSet);
    procedure cxTipoRicettaPropertiesCloseUp(Sender: TObject);
    procedure cxDataImpegnativaPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure aTesseraSanitariaExecute(Sender: TObject);
    procedure aTesseraSanitariaUpdate(Sender: TObject);
    procedure AltriEsamiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure aNoteExecute(Sender: TObject);
    procedure aNoteUpdate(Sender: TObject);
    procedure NoteEsameBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure PrestazioniAfterInsert(DataSet: TDataSet);
    procedure cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure cxNumeroImpegnativaMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxDBQuesitoEnter(Sender: TObject);
    procedure cxDBQuesitoExit(Sender: TObject);
    procedure cxCodiceEnter(Sender: TObject);
    procedure cxCodiceExit(Sender: TObject);
    procedure cxDescrizioneEnter(Sender: TObject);
    procedure cxDescrizioneExit(Sender: TObject);
    procedure cxCognomeEnter(Sender: TObject);
    procedure cxCognomeExit(Sender: TObject);
    procedure cxNomeEnter(Sender: TObject);
    procedure cxNomeExit(Sender: TObject);
    procedure AccettazioneBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qRicettaInfBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qLivScrBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure aAnnullaExecute(Sender: TObject);
    procedure qSpecxPrestBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxCodiceKeyPress(Sender: TObject; var Key: Char);
    procedure cxDescrizioneKeyPress(Sender: TObject; var Key: Char);
    procedure qSpecxPrestNewRecord(DataSet: TDataSet);
    procedure GridPrestazioniNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
    FBollo: Double;
    FRicercaFatta: boolean;
    FLookupMedInt: TStrings;
    FLookupMedEst: TStrings;
    FInRicalcolo: boolean;
    Fcodfirma: integer;
    FPreFilter: string;
    FDIAGNOSTICA_FK: integer;
    xIndirizzo : string;
    procedure CancellaSpecxPrest(prg: Integer);
    function LoadPrestazione(ds: TAstaCustomDataset; pgrprest: integer): boolean;
    procedure ControllaAltriEsami;
    procedure ScegliCodiceEsame;
    function GetDiagSelez: integer;
    procedure SetDiagSelez(Value: integer);
    procedure SetPreFilter(const Value: string);
    procedure PostValore(var Message: TMessage); message SY_CHECKCHANGED;
    procedure RicercaAnagrafica(var Message: TMessage); message SY_RICERCAANAGRAFICA;
    procedure CodiceAutomatico(var Message: TMessage); message SY_CODICEAUTOMATICO;
    procedure AssegnaEsenzione(daSalva: boolean);
    procedure RicalcolaTotale;
    procedure CercoCodice(tpOrd: TtpOrd);
    procedure CaricaCodice(pkcodrad: integer); overload;
    procedure CaricaCodice(xRad: TFRicRadiologiaPreno); overload;
    procedure SalvaTutto;
    procedure FiltraQuery(const cosa: string);
    procedure CodicePress;
    procedure DescrPress;
    procedure AbilitaCampi(change: boolean);
//    procedure AssegnaFiltroRicetta;
    procedure cxMaggPropertiesEditValueChanged(Sender: TObject);
  protected
    procedure DoCreate; override;
    procedure DoShow; override;
    procedure StartPersonalizza; override;
    procedure StopPersonalizza; override;
    procedure ResetPersonalizza; override;
  public
    { Public declarations }
     ResToCal: TAstaClientDataSet;
     xReferAcc: TSyForm;
     xDiag: integer;
     xDiagDescr: string;
     xOra_Inizio: TDateTime;
     xAgende: integer;
     Esami: TAstaCustomDataset;
     OldStatoVisita: integer;
     ProxStatoVisita: integer;
     StatoLancio: integer;
     xoggi: TDateTime;
     xPossibili: TAstaCustomDataset;
     xPID: string;
     xCF: string;
     TesseraLetta: TTessera;
     xpktriage: integer;
{JRT 5153}
     xDal: TDateTime;
     xAl: TDateTime;
{}

     procedure SendPortDataToForm(const s: string; lungh: integer); override;
     property codfirma: integer read Fcodfirma write Fcodfirma;
     property PreFilter: string read FPreFilter write SetPreFilter;
     property DiagSelez: integer read GetDiagSelez write SetDiagSelez;
  end;

var
  FDatiAccImp: TFDatiAccImp;

implementation

uses DMCommon,BaseForm,Windows,msgdlgs,dateutils,sysutils,Variants, //Accettazione,
     RicAssistito, VisitePrecRAD, RicMedici, Anagrafica, osFastStrings, SelezSpec,
{$IFNDEF MEDICORNER}
     RicMedInt,
     Radiofarmaco,
{$ENDIF}
     ConfermaPswdRep, ScegliCodiceAcc, ConsegnaReferto,
     RicercaTessera, Note, dxCore;

{$R *.dfm}

function TFDatiAccImp.GetDiagSelez: integer;
begin
  result := FDIAGNOSTICA_FK;
end;

procedure TFDatiAccImp.SetDiagSelez(Value: integer);
begin
  if Value=-1 then
  begin
     FDIAGNOSTICA_FK := -1;
     PreFilter := '';
  end
  else begin
     FDIAGNOSTICA_FK := Value;
     PreFilter := format('SERVIZI_FK = %d',[Value]);
  end;
end;

procedure TFDatiAccImp.SetPreFilter(const Value: string);
begin
  if Value<>'' then
  begin
     xPossibili.Filtered := false;
     xPossibili.Filter := Value;
     xPossibili.Filtered := true;
//     try
        Esami.Free;
//     except
//     end;
     Esami := FDMCommon.FiltraEsami(xPossibili);
     FPreFilter := Value;
  end
  else begin
     xPossibili.Filtered := false;
//     try
        Esami.Free;
//     except
//     end;
     Esami := FDMCommon.FiltraEsami(xPossibili);
     FPreFilter := '';
  end;
end;

procedure TFDatiAccImp.AccettazioneBeforePost(DataSet: TDataSet);
var
  test: string;

  function GiaAccettato(pki,assfk,pkr: integer): boolean;
  var
     xgiorno: string;
     xora: string;
  begin
    result := false;
    Prestazioni.DisableControls;
    try
       with qVerificaAccettazione do
       begin
          Close;
          Parambyname('PKASSISTIBILI').AsInteger := assfk;
          Parambyname('PKIMPEGNATIVE').AsInteger := pki;
          Parambyname('REPARTI_FK').AsInteger := pkr;
          Parambyname('OGGI').AsDateTime := xoggi;
          Open;
       end;
       while not result and not qVerificaAccettazione.eof do
       begin
          Prestazioni.First;
          while not result and not Prestazioni.eof do
          begin
{
              if (PrestazioniDIAGNOSTICA_FK.AsInteger=qVerificaAccettazioneDIAGNOSTICA_FK.AsInteger) then
              begin
                 case qVerificaAccettazioneSTATOVISITA.AsInteger of
                 40,41: begin
                              result := true;
                           end;
                 20,110,120:
                           begin
}
                              cfrEsami.ParamByName('pktriage').AsInteger := qVerificaAccettazionePKTRIAGE.AsInteger;
                              cfrEsami.syRefresh;
                              result := cfrEsami.Locate('CODICE',PrestazioniCODICE.AsString,[]);
{
                           end;
                 end;
              end;
}
              Prestazioni.Next;
          end;
          if not result then
             qVerificaAccettazione.Next;
       end;
       if result then
       begin
             if FDMCommon.LeggiPostoLavoroCTRL_ACCETTAZ.AsInteger=1 then
               case qVerificaAccettazioneSTATOVISITA.AsInteger of
               20:
                 begin
                   DateTimeToString(xgiorno, 'dd/mm/yyyy', qVerificaAccettazioneORA_INIZIO.AsDateTime);
                   DateTimeToString(xora, 'hh:nn', qVerificaAccettazioneORA_INIZIO.AsDateTime);
                   MsgDlg( Format(RAD_AvvisoEsamiPreno,[qVerificaAccettazioneNOMEDIAGNOSTICA.AsString,xgiorno,xora]), '', ktError, [kbOK], dfFirst);
                 end;
               110,120:
                 begin
                   DateTimeToString(xgiorno, 'dd/mm/yyyy', qVerificaAccettazioneORA_INIZIO.AsDateTime);
                   DateTimeToString(xora, 'hh:nn', qVerificaAccettazioneORA_INIZIO.AsDateTime);
                   MsgDlg( Format(RAD_AvvisoEsamiAcc,[qVerificaAccettazioneNOMEDIAGNOSTICA.AsString,xgiorno,xora]), '', ktError, [kbOK], dfFirst);
                 end;
               else
                 MsgDlg( Format(RAD_AvvisoEsamiRich,[qVerificaAccettazioneNOMEDIAGNOSTICA.AsString]), '', ktError, [kbOK], dfFirst);
               end
             else
               case qVerificaAccettazioneSTATOVISITA.AsInteger of
               20:
                 begin
                   DateTimeToString(xgiorno, 'dd/mm/yyyy', qVerificaAccettazioneORA_INIZIO.AsDateTime);
                   DateTimeToString(xora, 'hh:nn', qVerificaAccettazioneORA_INIZIO.AsDateTime);
                   result := (MsgDlg( Format(RAD_AvvisoEsamiPreno,[qVerificaAccettazioneNOMEDIAGNOSTICA.AsString,xgiorno,xora])+RS_Msg_Prosegui, '', ktWarning, [kbYes,kbNo], dfFirst)=mrNo);
                 end;
               120:
                 begin
                   DateTimeToString(xgiorno, 'dd/mm/yyyy', qVerificaAccettazioneORA_INIZIO.AsDateTime);
                   DateTimeToString(xora, 'hh:nn', qVerificaAccettazioneORA_INIZIO.AsDateTime);
                   result := (MsgDlg( Format(RAD_AvvisoEsamiAcc,[qVerificaAccettazioneNOMEDIAGNOSTICA.AsString,xgiorno,xora])+RS_Msg_Prosegui, '', ktWarning, [kbYes,kbNo], dfFirst)=mrNo);
                 end;
               else
                 result := (MsgDlg( Format(RAD_AvvisoEsamiRich,[qVerificaAccettazioneNOMEDIAGNOSTICA.AsString])+RS_Msg_Prosegui, '', ktWarning, [kbYes,kbNo], dfFirst)=mrNo);
               end;
       end;
    finally
       qVerificaAccettazione.Close;
       Prestazioni.EnableControls;
    end;
  end;

  function verificaNroImpegnativa(const nro: String; pki: integer): Boolean;
  begin
    try
       with qVerificaNumero do
       begin
          Close;
          Parambyname('NR_IMPEGNATIVA').AsString := nro;
          Parambyname('PKIMPEGNATIVE').AsInteger := pki;
          Parambyname('REPARTI_FK').AsInteger := gblpkrep;
          Open;
       end;
       result := qVerificaNumero.IsEmpty;
       if not result then
          msgDlg(format(RS_TIC_EsisteImpegnat,[qVerificaNumeroNOMINATIVO.AsString,qVerificaNumeroPKIMPEGNATIVE.AsInteger]),
           '', ktWarning, [kbOK], dfFirst);

    finally
       qVerificaNumero.Close;
    end;
  end;


  function trovaImpegnativa: Boolean;
  begin
    result := true;
    { controllo sull'univocitá dell'impegnativa }
    if not verificaNroImpegnativa(AccettazioneNR_IMPEGNATIVA.asString,
                                  AccettazionePKIMPEGNATIVE.AsInteger)
    then
    begin
//       msgDlg(RS_TIC_EsisteImpegnat, '', ktWarning, [kbOK], dfFirst);
       cxNumeroImpegnativa.SetFocus;
       result := false;
    end;
  end;

  function VerificaDataImp: Boolean;
  begin
    result := true;

       if (AccettazioneDATA_IMPEGNATIVA.asDateTime > 0) and
          (AccettazioneDATA_PRESCRIZIONE.asDateTime > 0) and
          (FDMCommon.Param_ticketGGVALIDITA.asInteger > 0) then
       begin
          if (AccettazioneDATA_PRESCRIZIONE.asDateTime < AccettazioneDATA_IMPEGNATIVA.asDateTime) then
          begin
             msgDlg(RS_TIC_DataRichiestaNOK, '', ktWarning, [kbOK], dfFirst);
             cxDataImpegnativa.SetFocus;
             result := False;
             Exit;
          end;

          if (DaysBetween(AccettazioneDATA_IMPEGNATIVA.asDateTime,AccettazioneDATA_PRESCRIZIONE.asDateTime) > FDMCommon.Param_ticketGGVALIDITA.asInteger) then
          begin
             msgDlg( Format(RS_TIC_DataImpegnNOK, [FDMCommon.Param_ticketGGVALIDITA.asInteger]), '', ktWarning, [kbOK], dfFirst);
             cxDataImpegnativa.SetFocus;
             result := False;
          end;
       end;

  end;

begin
  inherited;

  if codfirma=-1 then
     AccettazioneUSER_ID.AsInteger := gblCodUtente
  else
     AccettazioneUSER_ID.AsInteger := codfirma;

{
  if AccettazioneOSP_RICH.IsNull then
  begin
    MsgDlg(format(RIS_CampoObbligatorio,[AccettazioneOSP_RICH.DisplayLabel]), '', ktWarning, [kbOK]);
    AccettazioneOSP_RICH.FocusControl;
    Abort;
  end;
}

  if ((StatoLancio>0) or (gblTipo_Preno=1)) and (FDMCommon.LeggiPostoLavoroCHK_DATI_IMPEGNATIVA.AsInteger=1) {JRT 498} and (AccettazioneTIPO_FATTURA.AsInteger<>3) then
  begin
    if (AccettazioneDATA_IMPEGNATIVA.asDateTime=0) and (FDMCommon.LeggiPostoLavoroCHK_DATA_IMPEGNATIVA.AsInteger=1) then
    begin
      MsgDlg(format(RIS_CampoObbligatorio,[AccettazioneDATA_IMPEGNATIVA.DisplayLabel]), '', ktWarning, [kbOK]);
      AccettazioneDATA_IMPEGNATIVA.FocusControl;
      Abort;
    end;
    if AccettazioneTIPO_ACCESSO_FK.IsNull and (FDMCommon.LeggiPostoLavoroCHK_TIPO_ACCESSO.AsInteger=1) then
    begin
      MsgDlg(format(RIS_CampoObbligatorio,[AccettazioneTIPO_ACCESSO_FK.DisplayLabel]), '', ktWarning, [kbOK]);
      AccettazioneTIPO_ACCESSO_FK.FocusControl;
      Abort;
    end;
    if AccettazioneTIPO_RICETTA_FK.IsNull and (FDMCommon.LeggiPostoLavoroCHK_TIPO_RICETTA.AsInteger=1) then
    begin
      MsgDlg(format(RIS_CampoObbligatorio,[AccettazioneTIPO_RICETTA_FK.DisplayLabel]), '', ktWarning, [kbOK]);
      AccettazioneTIPO_RICETTA_FK.FocusControl;
      Abort;
    end;
    {JRT 3126}
    if AccettazioneRICETTA_INF.IsNull and (FDMCommon.LeggiPostoLavoroCHK_COMPILAZIONE.AsInteger=1) then
    begin
      MsgDlg(format(RIS_CampoObbligatorio,[AccettazioneRICETTA_INF.DisplayLabel]), '', ktWarning, [kbOK]);
      AccettazioneRICETTA_INF.FocusControl;
      Abort;
    end;
    if AccettazioneDESC_INVIO.IsNull and (FDMCommon.LeggiPostoLavoroCHK_CONSEGNA_REF.AsInteger=1) then
    begin
      MsgDlg(format(RIS_CampoObbligatorio,[AccettazioneDESC_INVIO.DisplayLabel]), '', ktWarning, [kbOK]);
      AccettazioneDESC_INVIO.FocusControl;
      Abort;
    end;
    if (AccettazioneDATA_PRESCRIZIONE.AsDateTime=0) and (FDMCommon.LeggiPostoLavoroCHK_DATA_RICHIESTA.AsInteger=1) then
    begin
      MsgDlg(format(RIS_CampoObbligatorio,[AccettazioneDATA_PRESCRIZIONE.DisplayLabel]), '', ktWarning, [kbOK]);
      AccettazioneDATA_PRESCRIZIONE.FocusControl;
      Abort;
    end;
  end;

    {
      if (AccettazioneDATA_PRESCRIZIONE.asDateTime=0) then
      begin
        MsgDlg(format(RIS_CampoObbligatorio,[AccettazioneDATA_PRESCRIZIONE.DisplayLabel]), '', ktWarning, [kbOK]);
        AccettazioneDATA_PRESCRIZIONE.FocusControl;
        Abort;
      end;
    }

  if (AccettazioneIMP_OBBLIG.AsInteger=0) then
  begin

    if (FDMCommon.LeggiPostoLavoroCTRL_ACCETTAZ.AsInteger in [1,2]) and
       (Accettazione.State=dsInsert) and
       (AccettazioneASSISTIBILI_FK.AsInteger>0) and
       GiaAccettato(AccettazionePKIMPEGNATIVE.AsInteger,AccettazioneASSISTIBILI_FK.AsInteger,AccettazioneREPARTI_FK.AsInteger) then
    begin
       Abort;
    end;

  end
  else if (StatoLancio>0) or (gblTipo_Preno=1) then
  begin

      if (AccettazioneNR_IMPEGNATIVA.AsString='') and (AccettazioneIMP_OBBLIG.AsInteger=1) then
      begin
        MsgDlg(format(RIS_CampoObbligatorio,[AccettazioneNR_IMPEGNATIVA.DisplayLabel]), '', ktWarning, [kbOK]);
        AccettazioneNR_IMPEGNATIVA.FocusControl;
        Abort;
      end;

      if (AccettazioneNR_IMPEGNATIVA.AsString<>'') and not trovaImpegnativa then
      begin
         Abort;
      end;

  end;

  if ((StatoLancio>0) or (gblTipo_Preno=1)) and (FDMCommon.LeggiPostoLavoroCHK_DATA_IMPEGNATIVA.AsInteger>=1) and (AccettazioneTIPO_FATTURA.AsInteger<>3) then
  begin
      if not VerificaDataImp then
      begin
         Abort;
      end;
  end;

  if ((StatoLancio>0) or (gblTipo_Preno=1)) and (FDMCommon.LeggiPostoLavoroCHECK_MED_BASE.AsInteger=1) and cxMedicoBase.Visible and cxMedicoBase.Enabled then
  begin
      if ((AccettazionePROVIMP.AsString<>'I') and (AccettazioneMED_BASE.IsNull)) or
         ((AccettazionePROVIMP.AsString='I') and (AccettazioneTIPO_FATTURA.AsInteger<>3) and (AccettazioneCOD_MED_INT.IsNull)) then
      begin
        MsgDlg(format(RIS_CampoObbligatorio,[AccettazioneMED_BASE.DisplayLabel]), '', ktWarning, [kbOK]);
        AccettazioneNOMEMEDICO.FocusControl;
        Abort;
      end;
  end;

  if AccettazioneQUESITO_DIAGN.Required then
  begin
     test := BMStringReplace(AccettazioneQUESITO_DIAGN.AsString,#13#10,' ',[]);
     if length(Trim(test))=0 then
        AccettazioneQUESITO_DIAGN.Clear;

  end;

  if Assigned(ResToCal) and not FDMCommon.ControllaTipoAgenda(ResToCal,Accettazione) then
     Abort;

  FDMCommon.UltimoQuesitoE := AccettazioneQUESITO_DIAGN.AsString;

end;

procedure TFDatiAccImp.AccettazioneNewRecord(DataSet: TDataSet);
begin
  inherited;

  AccettazioneESENTE.AsInteger := 0;
  AccettazioneIMPORTO_TOTALE.asInteger := 0;
  AccettazioneIMPORTO_PAGATO.asInteger := 0;
  AccettazioneIMPORTO_QUOTA.AsFloat := 0;
  AccettazioneREPARTI_FK.AsInteger := gblpkrep;
  AccettazionePROVENIENZA.AsString := 'E';  // -- esterni...
  AccettazioneFLAG_ANESTESIA.AsInteger := 0;
  if not FDMCommon.LeggiPostoLavoroDEF_OSP_RICH.IsNull then
  begin
    AccettazioneOSP_RICH.AsString := FDMCommon.LeggiPostoLavoroDEF_OSP_RICH.AsString;
    if FDMCommon.LkOspedali.Locate('CODICE',AccettazioneOSP_RICH.AsString,[]) then
    begin
       AccettazioneTIPO_ATTIVITA_FK.AsString := FDMCommon.LkOspedaliTIPO_ATTIVITA_FK.AsString;
       AccettazioneTIPO_ACCESSO.AsString := FDMCommon.LkOspedaliTIPO_ACCESSO.AsString;
       AccettazioneDESCR_OSPEDALE.AsString := FDMCommon.LkOspedaliDESCRIZIONE.AsString;
       cxProvenienzaPropertiesCloseUp(self);
    end;
  end;
  AccettazionePROVIMP.AsString  := 'E';
  AccettazioneDATA_PRESCRIZIONE.AsDateTime := Now();

  if (FDMCommon.LeggiPostoLavoroCHK_CONSEGNA_REF.AsInteger>0) and not FDMCommon.LeggiPostoLavoroTIPOINVIO_FK.IsNull then
     AccettazioneINVIO_FK.AsString := FDMCommon.LeggiPostoLavoroTIPOINVIO_FK.AsString;

  if FDMCommon.LeggiPostoLavoroCHK_RIPROPONI_QUESITO.AsInteger=1 then
     AccettazioneQUESITO_DIAGN.AsString := FDMCommon.UltimoQuesitoE;

  if not FDMCommon.LeggiPostoLavoroURGENZA_FK.IsNull then
     AccettazioneURGENZA.AsInteger := FDMCommon.LeggiPostoLavoroURGENZA_FK.AsInteger;

end;

procedure TFDatiAccImp.PrestazioniBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('impegnative_fk').AsInteger := AccettazionePKIMPEGNATIVE.AsInteger;
  Sender.Parambyname('pktriage').Clear;
  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) then
  begin
     Sender.Parambyname('m_n').AsString := '# '#39'RadioFarmaco'#39;
     if xpktriage>0 then
        Sender.Parambyname('pktriage').AsInteger := xpktriage;
  end;
end;

procedure TFDatiAccImp.PrestazioniNewRecord(DataSet: TDataSet);
begin
  inherited;
  PrestazioniIMPEGNATIVE_FK.AsInteger := AccettazionePKIMPEGNATIVE.AsInteger;
//  PrestazioniDIAGNOSTICA_FK.AsInteger := AccettazioneDIAGNOSTICA_FK.AsInteger;
  PrestazioniPROGRESSIVO_RIGA.AsInteger := Prestazioni.recordcount+1;
  PrestazioniREPARTI_FK.AsInteger := AccettazioneREPARTI_FK.AsInteger; // gblpkrep;
//  PrestazioniUSER_ID.AsInteger := gblCodUtente;
  PrestazioniSTATOVISITA.AsInteger := ProxStatoVisita;
  PrestazioniPAGATO.asFloat := 0;
  PrestazioniNUMERO_PRESTAZIONE.AsInteger := 1;
  PrestazioniIMPORTO.asFloat := 0;
  if ProxStatoVisita = 1000 then
     PrestazioniSTATO.AsInteger := 1;
  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) then
     PrestazioniRADIOFARMACO.AsString := 'RadioFarmaco';
  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=2) then
     PrestazioniLIV_SCR.AsInteger := AccettazioneLIV_SCR.AsInteger
  else
     PrestazioniLIV_SCR.AsInteger := -1;
end;

procedure TFDatiAccImp.cxNumeroImpegnativaPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
//var
//  lung: integer;
begin
  inherited;

{
  Error := false;
  lung := Length(DisplayValue);

  if (VarIsNull(DisplayValue) or (lung=0)) then
  begin
     Error := true;
     ErrorText := format(RS_TIC_LengthField,[AccettazioneNR_IMPEGNATIVA.DisplayLabel]);
  end;
}
end;

procedure TFDatiAccImp.RicercaAnagrafica(var Message: TMessage);
begin
  aRicercaPaziente.Execute;

  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=2) and (not FDMCommon.LeggiPostoLavoroCODICIRAD_FK.IsNull) then
  begin
     if xPossibili.Locate('PKCODICIRAD',FDMCommon.LeggiPostoLavoroCODICIRAD_FK.AsInteger,[]) then
     begin
       AccettazioneLIV_SCR.AsInteger := 1;
       cxCodice.Text := xPossibili.Fieldbyname('CODICE').AsString;
       CodicePress;
     end;
  end;

end;

procedure TFDatiAccImp.aRicercaPazienteExecute(Sender: TObject);
var
  trovato: integer;
begin

//  if (cxCodice.IsFocused or cxDescrizione.IsFocused) then exit;

  if InternalWindowsMode=syUnica then
  begin
     if (Parent<>nil) and (Parent.Owner<>nil) and (Parent.Owner is TCustomForm) and
        (TCustomForm(Parent.Owner).ActiveControl<>nil) then
        SendMessage(TWinControl(TCustomForm(parent.owner).activecontrol.owner).Handle, CM_EXIT, 0, 0)
  end
  else begin
    if Assigned(ActiveControl) then
        SendMessage(TWinControl(ActiveControl.Owner).Handle, CM_EXIT, 0, 0);
  end;

  FRicAssistito := TFRicAssistito.Create(nil);
  try

   FRicAssistito.QRicerca.Active := false;
   FRicAssistito.QRicerca.QBEMode := true;
   FRicAssistito.QRicerca.Active := true;
   FRicAssistito.StatoLancio := StatoLancio;
   FRicAssistito.PazienteSconosciuto.Visible := false;
   trovato := mrCancel;

   if xPID<>'' then
   begin
      FRicAssistito.qRicercaPKASSISTIBILI.AsInteger := StrToIntDef(xPID,-1);
      FRicAssistito.AttivaRicerca.Execute;
      if (FRicAssistito.qRicerca.Recordcount=1) then
         trovato := mrCancel;  //JRT: ex mrOk;  eliminata seleziona automatica se unico paziente trovato - 07/07/2015
   end
   else if xCF<>'' then
   begin
      FRicAssistito.QRicercaCODICE_FISCALE.AsString := xCF;
      if TesseraLetta.CodiceFiscale<>'' then
         FRicAssistito.xRec := TesseraLetta;
      FRicAssistito.AttivaRicerca.Execute;
      if (FRicAssistito.qRicerca.Recordcount=1) then
         trovato := mrOk;
   end
   else if (cxCognome.Text<>'') and (Length(cxCognome.Text)>=2) then
   begin

     FRicAssistito.QRicercaCOGNOME.AsString := AccettazioneCOGNOME.AsString;
     if not AccettazioneNOME.IsNull then
        FRicAssistito.QRicercaNOME.AsString := AccettazioneNOME.AsString
     else
        FRicAssistito.QRicercaNOME.Clear;

//   if not AccettazioneDATA_NASCITA.IsNull then
//      FRicAssistito.QRicercaDATA_NASCITA.AsDateTime := AccettazioneDATA_NASCITA.AsDateTime;

     // -- per passare valori per registrazione immediata
     if not AccettazioneCOGNOME.IsNull then
        FRicAssistito.xRec.Cognome := AccettazioneCOGNOME.AsString;
     if not AccettazioneNOME.IsNull then
        FRicAssistito.xRec.Nome := AccettazioneNOME.AsString;
//     if not AccettazioneDATA_NASCITA.IsNull then
//        FRicAssistito.xRec.DataNascita := AccettazioneDATA_NASCITA.AsDateTime;
{
     if xCF<>'' then
        FRicAssistito.xRec.CodiceFiscale := xCF;
}
     FRicAssistito.AttivaRicerca.Execute;

     if (FRicAssistito.qRicerca.Recordcount=0) then
        trovato := mrRetry
     else if (FRicAssistito.qRicerca.Recordcount=1) and not FRicercaFatta then
        trovato := mrCancel //JRT: ex mrOk;  eliminata seleziona automatica se unico paziente trovato - 07/07/2015
     else if (FRicAssistito.qRicerca.Recordcount=1) and FRicercaFatta then
        trovato := mrCancel
     else if not AccettazioneASSISTIBILI_FK.IsNull and FRicercaFatta then
          FRicAssistito.QRicerca.Locate('PKASSISTIBILI',AccettazioneASSISTIBILI_FK.AsInteger,[]);

   end;

   if not (trovato in [mrOk,mrRetry]) then
   begin
     // -- per registrazione nuovo paziente...
     if not AccettazioneCOGNOME.IsNull then
        FRicAssistito.xRec.Cognome := AccettazioneCOGNOME.AsString;
     if not AccettazioneNOME.IsNull then
        FRicAssistito.xRec.Nome := AccettazioneNOME.AsString;
     if not AccettazioneDATA_NASCITA.IsNull then
        FRicAssistito.xRec.DataNascita := AccettazioneDATA_NASCITA.AsDateTime;
//     if xCF<>'' then
//        FRicAssistito.xRec.CodiceFiscale := xCF;

     FRicAssistito.StatoLancio := StatoLancio;
     trovato := FRicAssistito.ShowModal;
   end;

   case trovato of
   mrCancel: begin
              if cxCognome.CanFocus then
                 cxCognome.SetFocus;
             end;
   mrOk:
   begin
      AccettazioneASSISTIBILI_FK.AsInteger := FRicAssistito.QRicercaPKASSISTIBILI.AsInteger;
      AccettazioneCOGNOME.AsString := FRicAssistito.QRicercaCOGNOME.AsString;
      AccettazioneNOME.AsString := FRicAssistito.QRicercaNOME.AsString;
      AccettazioneLIBRETTO_SAN.AsString := FRicAssistito.QRicercaLIBRETTO_SAN.AsString;
      AccettazioneDATA_NASCITA.AsDateTime := FRicAssistito.QRicercaDATA_NASCITA.AsDateTime;
      AccettazioneSES_CODICE.AsString := FRicAssistito.QRicercaSES_CODICE.AsString;
      AccettazioneCOD_ESTERNO.AsString := FRicAssistito.QRicercaCOD_ESTERNO.AsString;
      if not FRicAssistito.QRicercaDES_COM_DOM.IsNull then
      begin
        xIndirizzo := FRicAssistito.QRicercaDES_COM_DOM.AsString;
      end
      else begin
        xIndirizzo := FRicAssistito.QRicercaDES_COM_RES.AsString;
      end;
      AccettazioneTELEFONO.AsString := FRicAssistito.QRicercaTELEFONO.AsString;
      AccettazioneSAN_IDENT.AsInteger := FRicAssistito.QRicercaSAN_IDENT.AsInteger;
      AccettazioneETA.AsInteger := FRicAssistito.QRicercaETA.AsInteger;
      if not FRicAssistito.QRicercaMED_BASE.IsNull and cxMedicoBase.Visible and cxMedicoBase.Enabled and not ((AccettazionePROVIMP.AsString='I') and (AccettazioneTIPO_FATTURA.AsInteger<>3)) then
      begin
         AccettazioneMED_BASE.AsString := FRicAssistito.QRicercaMED_BASE.AsString;
         cxMedicoBase.SincronizzaDati(AccettazioneMED_BASE.AsString);
      end
      else begin
         AccettazioneMED_BASE.Clear;
         AccettazioneNOMEMEDICO.Clear;
      end;

      // -- assegnazione Tipo ricetta
      AccettazioneCOM_RES.AsString := FRicAssistito.QRicercaCOM_RES.AsString;
      AccettazioneTNRES.AsInteger  := FRicAssistito.QRicercaTNRES.AsInteger;
      AccettazioneCIT_CODICE.AsString := FRicAssistito.QRicercaCIT_CODICE.AsString;
      AccettazioneCOM_TYPE.AsString := FRicAssistito.QRicercaCOM_TYPE.AsString;

//      AssegnaFiltroRicetta;

      btnRicercaPaz.Glyph.ReleaseHandle;
      FDMCommon.imIcone.GetBitmap(40,btnRicercaPaz.Glyph);
      if cxBtnTessera.Visible then
         SelectNext(cxBtnTessera,True,True)
      else
         SelectNext(btnRicercaPaz,True,True);
      FRicercaFatta := true;

   end;
   end;

   finally
      FRicAssistito.Free;
      xCF := '';
      xPID := '';
   end;

end;

(*
procedure TFDatiAccImp.AssegnaFiltroRicetta;
var
  xfiltro: string;
  xstp: string;
begin
    if AccettazioneCOM_TYPE.AsString='2' then
       xfiltro := '1'
    else begin
       if AccettazioneCOM_TYPE.AsString='3' then
          xstp := ' AND FLAG_STP=1'
       else
          xstp := ' AND FLAG_STP=0';
       xfiltro := AccettazioneTNRES.AsString;
    end;

    FDMCommon.LkTipoRicetta.Filtered := false;
    if xfiltro<>'' then
    begin
      FDMCommon.LkTipoRicetta.Filter   := 'TIPO_COM_RES like '+#39+'%'+xfiltro+'%'+#39;
      if xstp<>'' then
         FDMCommon.LkTipoRicetta.Filter := FDMCommon.LkTipoRicetta.Filter+xstp;
      FDMCommon.LkTipoRicetta.Filtered := true;
    end;
end;
*)

procedure TFDatiAccImp.aRicercaPazienteUpdate(Sender: TObject);
begin
  inherited;
  aRicercaPaziente.Enabled := (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,6]) and ((ProxStatoVisita<=130) or gblSuperUser or gblUserIsAdmin or gblEstrazioneDati)
                   {JRT 6018} and (AccettazionePLACER_ORDER_NUMBER.IsNull or (FDMCommon.LeggiPostoLavoroCHK_MODIFICA_ANAGRAFICA.AsInteger=1)){};
  dxGroupAnagrafica.Enabled := aRicercaPaziente.Enabled;
end;

procedure TFDatiAccImp.CercoCodice(tpOrd: TtpOrd);
begin
  if Assigned(FRicRadiologiaPreno) then exit;
  FRicRadiologiaPreno := TFRicRadiologiaPreno.Create(nil);
  try
     FRicRadiologiaPreno.CopiaDataset(Esami,tpOrd);
{JRT 6611}
     if tpOrd=tpCodice then
     begin
        FRicRadiologiaPreno.DaCercare := cxCodice.Text;
     end
     else begin
        FRicRadiologiaPreno.DaCercare := cxDescrizione.Text;
     end;
{}
     if FRicRadiologiaPreno.ShowModal=mrOk then
     begin
        CaricaCodice(FRicRadiologiaPreno);
     end;
  finally
     Esami.Filtered := false;
     FRicRadiologiaPreno.Free;
     FRicRadiologiaPreno := nil;
  end;
end;

procedure TFDatiAccImp.CaricaCodice(xRad: TFRicRadiologiaPreno);
var
  i: integer;
  pkcod: integer;
begin
  for i:=0 to xRad.cxGridCodici.Controller.SelectedRecordCount-1 do
  begin
     pkcod := xRad.cxGridCodici.Controller.SelectedRecords[i].Values[xRad.cxGridCodiciPKCODICIRAD.Index];
     CaricaCodice(pkcod);
  end;
end;


function TFDatiAccImp.LoadPrestazione(ds: TAstaCustomDataset; pgrprest: integer): boolean;
var
  FSelezSpec: TFSelezSpec;
begin
        result := True;
{$IFNDEF MEDICORNER}
        if not ds.Fieldbyname('EXTRA_TARIFFARIO').IsNull and (ds.Fieldbyname('EXTRA_TARIFFARIO').AsInteger=1) then
        begin
           MsgDlg( RAD_AvvisoEsamiExtra, '', ktError, [kbOK], dfFirst);
           Abort;
        end;
{$ENDIF}
        Prestazioni.Append;
        PrestazioniCODICIRAD_FK.AsInteger := ds.Fieldbyname('PKCODICIRAD').AsInteger;
        PrestazioniCODICE.AsString := ds.Fieldbyname('CODICE').AsString;
        PrestazioniDESCRIZIONE.AsString := ds.Fieldbyname('DESCRIZIONE').AsString;

        if pgrprest>0 then
           PrestazioniGRUPPIPREST_FK.AsInteger := pgrprest;

        if (ds.FindField('CESPECIFIC')<>nil) and (ds.Fieldbyname('CESPECIFIC').AsInteger>0) then
        begin
           PrestazioniCESPECIFIC.AsInteger := ds.Fieldbyname('CESPECIFIC').AsInteger;
        end
        else begin
           PrestazioniCESPECIFIC.AsInteger := 0;
        end;

        if PrestazioniCESPECIFIC.AsInteger>0 then
        begin
            FSelezSpec := TFSelezSpec.Create(nil);
            qSpecxPrest.Filtered := False;
            qSpecxPrest.Filter := format('PRESTAZIONI_FK = %d',[PrestazioniPKPRESTAZIONI.AsInteger]);
            qSpecxPrest.Filtered := True;
            try
               FSelezSpec.sSpecxPrest.Dataset := qSpecxPrest;
               FSelezSpec.sPrestazioni.DataSet := Prestazioni;
               Result := (FSelezSpec.ShowModal=mrOk);
               if not Result then
               begin
                  CancellaSpecxPrest(PrestazioniPKPRESTAZIONI.AsInteger);
                  Prestazioni.Cancel;
                  Exit;
               end;
            finally
               qSpecxPrest.Filtered := False;
               FSelezSpec.Free;
            end;
        end;

        PrestazioniDURATA.AsInteger := ds.Fieldbyname('DURATA').AsInteger;
        PrestazioniDOSE.AsFloat := ds.Fieldbyname('DOSE').AsFloat;
        if not ds.Fieldbyname('IDENT_FK').IsNull then
           PrestazioniIDENT_FK.AsString := ds.Fieldbyname('IDENT_FK').AsString;

        if not ds.Fieldbyname('GRESAMI_FK').IsNull then
           PrestazioniGRESAMI_FK.AsInteger := ds.Fieldbyname('GRESAMI_FK').AsInteger;

        if ds.FindField('CALCOLO_85')<>nil then
           PrestazioniCALCOLO_85.AsInteger := ds.Fieldbyname('CALCOLO_85').AsInteger;

        PrestazioniORA_INIZIO.AsDateTime := xOra_Inizio;
        if xDiag>0 then
        begin
          PrestazioniDIAGNOSTICA_FK.AsInteger := xDiag;
          PrestazioniDIAGNOSTICA.AsString := xDiagDescr;
          if xAgende>0 then
             PrestazioniAGENDE_FK.AsInteger := xAgende;
          if xPossibili.Locate('CODICE;SERVIZI_FK',VarArrayOf([ds.Fieldbyname('CODICE').AsString,xDiag]),[]) then
             PrestazioniDURATA.AsInteger := xPossibili.Fieldbyname('DURATA').AsInteger;
        end;

        if not PrestazioniIDENT_FK.IsNull and (PrestazioniCESPECIFIC.AsInteger<>2) then
        begin
            FDMCommon.PrestTar.close;
            FDMCommon.PrestTar.Parambyname('IDENT_FK').AsString := PrestazioniIDENT_FK.AsString;
            FDMCommon.PrestTar.Parambyname('LEG_CODICE').AsString := AccettazioneLEG_CODICE.AsString;
            FDMCommon.PrestTar.open;
            if not FDMCommon.PrestTar.IsEmpty then
               PrestazioniIMPORTO.asFloat := FDMCommon.PrestTarTAR_TICKET.asFloat;
        end;

        if (AccettazioneESENTE.AsInteger=1) or
           ((AccettazioneESENTE.AsInteger=2) and
            (not CodiciEsenti.Active or
             (not ds.Fieldbyname('IDENT_FK').IsNull and CodiciEsenti.Locate('IDENT_FK',PrestazioniIDENT_FK.AsString,[])))) then
            PrestazioniESENTE.AsInteger := 1
        else
            PrestazioniESENTE.AsInteger := 0;
        if (ProxStatoVisita>=130) then
            PrestazioniSTATO.AsInteger := 1
        else
            PrestazioniSTATO.AsInteger := 0;

        PrestazioniBRANCA.AsString := ds.Fieldbyname('BRANCA').AsString;
        PrestazioniDESCBRANCA.AsString := ds.Fieldbyname('DESCBRANCA').AsString;
{
        if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) and not ds.Fieldbyname('MAGART_FK').IsNull then
        begin
           PrestazioniMAGART_FK.AsInteger := ds.Fieldbyname('MAGART_FK').AsInteger;
           PrestazioniQR.AsFloat := ds.Fieldbyname('QR').AsFloat;
        end;
}
        Prestazioni.Post;

end;

procedure TFDatiAccImp.CaricaCodice(pkcodrad: integer);
var
  res: boolean;
begin
  Esami.Filtered := false;
  if not Esami.Locate('PKCODICIRAD', pkcodrad,[]) then
     exit;
  if (FDMCommon.LeggiPostoLavoroCHECK_NO_PRESTMULT.AsInteger=0) and
      Prestazioni.Locate('CODICE',Esami.Fieldbyname('CODICE').AsString,[]) then
  begin
      MsgDlg(format(RS_PrestGiaCaricata,[Esami.Fieldbyname('CODICE').AsString]),'', ktWarning, [kbOK]);
      exit;
  end;

{$IFDEF MEDICORNER}
  if (Esami.Fieldbyname('DEVICE').AsInteger>0) and Prestazioni.Locate('BRANCA',Esami.Fieldbyname('BRANCA').AsString,[]) then
  begin
      MsgDlg(format(RS_TipoEsameGiaCaricato,[Esami.Fieldbyname('BRANCA').AsString]),'', ktWarning, [kbOK]);
      exit;
  end;
{$ENDIF}

  res := True;

  if Esami.Fieldbyname('COMPOSTO').AsInteger=0 then
  begin

        res := LoadPrestazione(Esami, -1);

        cxCodice.Text := '';
        cxDescrizione.Text := '';
  end
  else begin
      Composto.Parambyname('codicirad_fk').AsInteger := Esami.Fieldbyname('PKCODICIRAD').AsInteger;
      Composto.open;
      try
         while res and not Composto.eof do
         begin
            res := LoadPrestazione(Composto, CompostoPKGRUPPIPREST.AsInteger);
            Composto.Next;
         end;
      finally
         Composto.close;
      end;
      cxCodice.Text := '';
      cxDescrizione.Text := '';
  end;

  // -- assegnazione diagnostica...
  if res and (xDiag=0) then
  begin
    if Assigned(xReferAcc) then
    begin
      FInRicalcolo := true;
      try
        xReferAcc.CercaInCalendari(Prestazioni,DiagSelez);
        xOra_Inizio := PrestazioniORA_INIZIO.AsDateTime;
      finally
        FInRicalcolo := false;
      end;
    end
    else begin
        if xPossibili.Locate('CODICE',Esami.Fieldbyname('CODICE').AsString,[]) then
        begin
          Prestazioni.Edit;
          PrestazioniDIAGNOSTICA_FK.AsInteger := xPossibili.Fieldbyname('SERVIZI_FK').AsInteger;
          Prestazioni.Post;
        end;
    end;
  end;

end;

procedure TFDatiAccImp.RicalcolaTotale;
var
  xcalc85: Integer;
begin

  Prestazioni.DisableControls;
  try
  if not (Accettazione.state in dsEditModes) then
     Accettazione.Edit;
  AccettazioneIMPORTO_TOTALE.asFloat := 0;
  AccettazioneIMPORTO_PAGATO.asFloat := 0;
  AccettazioneIMPORTO_QUOTA.AsFloat := 0;

  xcalc85 := 0;
  with Prestazioni do
  begin
        First;
        while not eof do
        begin
           if not PrestazioniCALCOLO_85.IsNull and (PrestazioniCALCOLO_85.AsInteger>0) then
              xcalc85 := xcalc85+1;
           Next;
        end;
  end;

  with Prestazioni do
  begin
        First;
        while not eof do
        begin
           Edit;
           if (xcalc85>1) and not PrestazioniCALCOLO_85.IsNull and (PrestazioniCALCOLO_85.AsInteger>0) then
              PrestazioniIMPORTO.asFloat := PrestazioniIMPORTO.asFloat * 0.85;

           if (PrestazioniESENTE.AsInteger=1) or not (PrestazioniSTATO.AsInteger in [0,1]) then
              PrestazioniPAGATO.asFloat := 0
           else
              PrestazioniPAGATO.asFloat := PrestazioniIMPORTO.asFloat * PrestazioniNUMERO_PRESTAZIONE.AsInteger;

           if PrestazioniSTATO.AsInteger in [0,1] then
              AccettazioneIMPORTO_TOTALE.asFloat := AccettazioneIMPORTO_TOTALE.asFloat +
                                                    PrestazioniIMPORTO.asFloat * PrestazioniNUMERO_PRESTAZIONE.AsInteger;
           AccettazioneIMPORTO_PAGATO.asFloat := AccettazioneIMPORTO_PAGATO.asFloat + PrestazioniPAGATO.asFloat;

           Post;
           Next;
        end;

  end;

  if (AccettazioneESENTE.AsInteger in [0,2]) and
     (AccettazioneTIPO_FATTURA.AsInteger in [0,2]) and
     (AccettazioneIMPORTO_TOTALE.asFloat>0) then
  begin
     if (AccettazioneIMPORTO_PAGATO.asFloat > FDMCommon.Param_TicketIMPOMAX.asFloat) then
        AccettazioneIMPORTO_PAGATO.asFloat := FDMCommon.Param_TicketIMPOMAX.asFloat;

     if cxMagg.Checked and (AccettazioneIMPORTO_PAGATO.asFloat>0) and (FBollo>0) then
     begin
        AccettazioneIMPORTO_QUOTA.AsFloat := FBollo;
        AccettazioneIMPORTO_PAGATO.asFloat := AccettazioneIMPORTO_PAGATO.asFloat + FBollo;
     end;
  end;

  finally
     Prestazioni.EnableControls;
  end;

end;

procedure TFDatiAccImp.cxCodicePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if cxCodice.Text<>'' then
     CodicePress
  else
     CercoCodice(tpCodice);
end;

procedure TFDatiAccImp.DoShow;
var
  xDiagAperte: string;
  tl: TStringList;
begin
  inherited;

//  Esami := TFAccettazione(xReferAcc).Possibili;
  sEsami.Dataset := Esami;

  if not Prestazioni.Active then
  begin
     if Accettazione.State=dsInsert then
     begin
        Prestazioni.opennofetch;
        NoteEsame.opennofetch;
        qSpecxPrest.opennofetch;
     end
     else begin
        Prestazioni.open;
        NoteEsame.Open;
        qSpecxPrest.Open;
     end;
  end;

  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) then
  begin
     if not Materiali.Active then
       if Accettazione.State=dsInsert then
          Materiali.opennofetch
       else
          Materiali.open;
  end;

  if (ProxStatoVisita>130) then
  begin
      tl := TStringList.Create;
      xDiagAperte := '';
      Prestazioni.DisableControls;
      Prestazioni.First;
      while not Prestazioni.Eof do
      begin
        if (PrestazioniSTATO.AsInteger in [0,1]) and
           (tl.IndexOf(PrestazioniDIAGNOSTICA_FK.AsString)<0) then
        begin
           if xDiagAperte='' then
              xDiagAperte := PrestazioniDIAGNOSTICA_FK.AsString
           else
              xDiagAperte := xDiagAperte + ',' + PrestazioniDIAGNOSTICA_FK.AsString;
           tl.Add(PrestazioniDIAGNOSTICA_FK.AsString);
        end;
        Prestazioni.Next;
      end;
      Prestazioni.EnableControls;

      if Assigned(xPossibili) then
      begin
        xPossibili.Filtered := false;
        xPossibili.Filter := format('SERVIZI_FK in ( ''%s'' )',[BMStringReplace(xDiagAperte,',',#39+','+#39,[])]);
        xPossibili.Filtered := true;

        Esami := FDMCommon.FiltraEsami(xPossibili);
      end;

      tl.Free;
  end;

  case ProxStatoVisita of
10,20:  Caption := RIS_Prenotazione;
   41:  Caption := RIS_Richiesta;
   100,110: Caption := RIS_Accettazione_Esterni;
   120,130: if FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=1 then
               Caption := RIS_Somministrazione
            else
               Caption := RIS_Accettazione_Esterni;
  end;


  if ProxStatoVisita=OldStatoVisita then
  begin
     Conferma.Caption := RIS_Salva;
     Conferma.Hint := RIS_ConfermaOp;
     if AccettazionePROVENIENZA.AsString='I' then
       AccettazioneQUESITO_DIAGN.Required := ((FDMCommon.LeggiPostoLavoroCHK_QUESITO_INT.AsInteger=1) and (ProxStatoVisita in [100,110,120,130])) or
                                             ((FDMCommon.LeggiPostoLavoroCHK_QUESITO_REP.AsInteger=1) and (ProxStatoVisita in [41]))
     else
       AccettazioneQUESITO_DIAGN.Required := ((FDMCommon.LeggiPostoLavoroCHK_QUESITO_EST.AsInteger=1) and (ProxStatoVisita in [100,110,120,130])) or
                                             ((FDMCommon.LeggiPostoLavoroCHK_QUESITO_REP.AsInteger=1) and (ProxStatoVisita in [41]));
  end
  else
    case ProxStatoVisita of
 10,20:
      begin
         Conferma.Caption := RIS_Prenota;
         Conferma.Hint := RIS_ConfermaPreno;
      end;
    41:
      begin
         Conferma.Caption := RIS_Conferma;
         Conferma.Hint := RIS_ConfermaOp;
         AccettazioneQUESITO_DIAGN.Required := (FDMCommon.LeggiPostoLavoroCHK_QUESITO_REP.AsInteger=1);
      end;
    100,110:
      begin
         Conferma.Caption := RIS_Accetta;
         Conferma.Hint := RIS_ConfermaAccettazione;
         if AccettazionePROVENIENZA.AsString='I' then
           AccettazioneQUESITO_DIAGN.Required := (FDMCommon.LeggiPostoLavoroCHK_QUESITO_INT.AsInteger=1)
         else
           AccettazioneQUESITO_DIAGN.Required := (FDMCommon.LeggiPostoLavoroCHK_QUESITO_EST.AsInteger=1);
      end;
    120,130:
      begin
         if FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=1 then
         begin
           Conferma.Caption := RIS_Somministra;
           Conferma.Hint := RIS_ConfermaSomministrazione;
         end
         else begin
           Conferma.Caption := RIS_Accetta;
           Conferma.Hint := RIS_ConfermaAccettazione;
         end;
         if AccettazionePROVENIENZA.AsString='I' then
           AccettazioneQUESITO_DIAGN.Required := (FDMCommon.LeggiPostoLavoroCHK_QUESITO_INT.AsInteger=1)
         else
           AccettazioneQUESITO_DIAGN.Required := (FDMCommon.LeggiPostoLavoroCHK_QUESITO_EST.AsInteger=1);
      end;
    else
      begin
         Conferma.Caption := RIS_Salva;
         Conferma.Hint := RIS_ConfermaOp;
         if AccettazionePROVENIENZA.AsString='I' then
           AccettazioneQUESITO_DIAGN.Required := (FDMCommon.LeggiPostoLavoroCHK_QUESITO_INT.AsInteger=1)
         else
           AccettazioneQUESITO_DIAGN.Required := (FDMCommon.LeggiPostoLavoroCHK_QUESITO_EST.AsInteger=1);
      end;
    end;

// ConfermaStampa.Caption := Conferma.Caption;
 
  {-- refresh descrizione per registrazione...}
  if Accettazione.State=dsInsert then
  begin
    AccettazioneDESCR_OSPEDALE.AsString := '';
  end
  else begin
    FDMCommon.LkOspedali.Locate('CODICE',AccettazioneOSP_RICH.AsString,[]);
    AccettazioneDESCR_OSPEDALE.AsString := FDMCommon.LkOspedaliDESCRIZIONE.AsString;
  end;

  if not AccettazioneTES_IDENT.IsNull then
  begin
    FDMCommon.LkEsenzione.Locate('IDENT',AccettazioneTES_IDENT.AsString,[]);
    GridPrestazioniESENTE.Options.Editing := (FDMCommon.LkEsenzioneESENTE.AsInteger=2);
    if FDMCommon.LkEsenzioneCON_PRESTAZIONI.AsInteger=1 then
    begin
      CodiciEsenti.Parambyname('esenztick_fk').AsString := VarToStr(cxCodiceEsenzione.EditValue);
      CodiciEsenti.open;
    end;
  end
  else
    GridPrestazioniESENTE.Options.Editing := false;

  AbilitaCampi((Accettazione.State=dsInsert));

  dxLayoutScreening.Enabled := (Accettazione.State=dsInsert);
  dxNumeroRichiestaEsterna.Enabled := (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,6]);
  GridPrestazioni.OptionsData.Editing := (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,6]);

{JRT 7416}
  dxLayoutGroupDatiAmm.Enabled := (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,6]) and ((ProxStatoVisita<=130) or gblSuperUser or gblUserIsAdmin or gblEstrazioneDati);
  dxLayoutGroupDatiImpegnativa.Enabled := (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,6]) and ((ProxStatoVisita<=130) or gblSuperUser or gblUserIsAdmin or gblEstrazioneDati);
  dxGroupRicercaEsami.Enabled := (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,6]) and ((ProxStatoVisita<=130) or gblSuperUser or gblUserIsAdmin or gblEstrazioneDati);
{}

  cxBtnTessera.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);

  if (AccettazionePROVIMP.AsString='I') and (AccettazioneTIPO_FATTURA.AsInteger<>3) then
  begin
     cxMedicoBase.LookupTable := MedInterni;
     cxMedicoBase.LookupPK := 'PKPERSONALE';
     cxMedicoBase.AllowNotInList := false;
//     AccettazioneMED_BASE.Clear;
//     AccettazioneNOMEMEDICO.Clear;
  end
  else if (AccettazionePROVIMP.AsString<>'I') then
  begin
     cxMedicoBase.LookupTable := MedBase;
     cxMedicoBase.LookupPK := 'CODICE';
     cxMedicoBase.AllowNotInList := true;
//     AccettazioneCOD_MED_INT.Clear;
//     AccettazioneNOMEMEDICO.Clear;
  end;

  if Accettazione.State<>dsInsert then
  begin
     if AccettazioneURGENZA.IsNull and not FDMCommon.LeggiPostoLavoroURGENZA_FK.IsNull then
        AccettazioneURGENZA.AsInteger := FDMCommon.LeggiPostoLavoroURGENZA_FK.AsInteger;
     if not PrestazioniDIAGNOSTICA_FK.IsNull then
        cxDiagnostica.EditValue := PrestazioniDIAGNOSTICA_FK.AsInteger;
//     AssegnaFiltroRicetta;
//     cxMagg.Checked := (AccettazioneIMPORTO_QUOTA.AsFloat>0);
     if (FDMCommon.Param_TicketIMPORTO_BOLLO.asFloat>0) then
        FBollo := FDMCommon.Param_TicketIMPORTO_BOLLO.asFloat
     else if (AccettazioneIMPORTO_QUOTA.AsFloat>0) then
        FBollo := AccettazioneIMPORTO_QUOTA.AsFloat
     else
        FBollo := 0;
  end
  else begin
     FDMCommon.LkTipoRicetta.Filtered := false;
     if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) and (not FDMCommon.LeggiPostoLavoroCODICIRAD_FK.IsNull) then
        PostMessage(Handle,SY_CODICEAUTOMATICO,0,0);
     FBollo := FDMCommon.Param_TicketIMPORTO_BOLLO.asFloat;
//     cxMagg.Checked := dxLayoutControlQuota.Visible;
  end;
//  dxLayoutControlQuota.Visible := (FBollo>0);
  ScegliCodiceEsame;

  cxMagg.Properties.OnEditValueChanged := cxMaggPropertiesEditValueChanged;

  if xPID<>'' then
  begin
     PostMessage(Handle,SY_RICERCAANAGRAFICA,0,0);
  end
  else if Accettazione.State<>dsInsert then
     InternalActiveControl := btSalva;

  aNote.Visible := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);

{JRT 6995}
  cxDataRichiesta.Properties.MaxDate := Date();
  cxDataRichiesta.Properties.MinDate := IncMonth(Date(),-6);
  cxDataImpegnativa.Properties.MaxDate := Date();
  cxDataImpegnativa.Properties.MinDate := IncMonth(Date(),-6);
{}

  GridPrestazioni.ViewData.Collapse(False)

end;


procedure TFDatiAccImp.CodiceAutomatico(var Message: TMessage);
begin

   if xPossibili.Locate('PKCODICIRAD',FDMCommon.LeggiPostoLavoroCODICIRAD_FK.AsInteger,[]) then
   begin
     cxCodice.Text := xPossibili.Fieldbyname('CODICE').AsString;
     CodicePress;
   end;

end;

procedure TFDatiAccImp.ScegliCodiceEsame;
begin

  Prestazioni.DisableControls;
  FInRicalcolo := true;
  try

  with Prestazioni do
  begin
        First;
        while not eof do
        begin
           if PrestazioniCODICIRAD_FK.IsNull and not PrestazioniIDENT_FK.IsNull then
           begin
              FScegliCodiceAcc := TFScegliCodiceAcc.Create(nil);
              try
                 FScegliCodiceAcc.Tariffario.Parambyname('ident_fk').AsString := PrestazioniIDENT_FK.AsString;
                 FScegliCodiceAcc.Tariffario.open;
                 FScegliCodiceAcc.Scelte.Parambyname('ident_fk').AsString := PrestazioniIDENT_FK.AsString;
                 FScegliCodiceAcc.Scelte.open;
                 if FScegliCodiceAcc.ShowModal=mrOk then
                 begin
                    Edit;
                    PrestazioniCODICIRAD_FK.AsInteger := FScegliCodiceAcc.SceltePKCODICIRAD.AsInteger;
                    PrestazioniCODICE.AsString := FScegliCodiceAcc.ScelteCODICE.AsString;
                    PrestazioniDESCRIZIONE.AsString := FScegliCodiceAcc.ScelteDESCRIZIONE.AsString;
                    Post;
                 end;
              finally
                 FScegliCodiceAcc.Free;
              end;
           end;
           Next;
        end;
  end;

  finally
     Prestazioni.EnableControls;
     FInRicalcolo := false;
  end;

end;


procedure TFDatiAccImp.DoCreate;
begin
  inherited;

//  Personalizza := gblSuperUser;
  FDMCommon.CaricaLayout(Name,dxLayoutControl1);

  ResToCal := nil;
  xpktriage := -1;
  OldStatoVisita := 0;
  FLookupMedInt := TStringList.Create;
  FLookupMedEst := TStringList.Create;
  FLookupMedInt.Assign(MedInterni.SQL);
  FLookupMedEst.Assign(MedBase.SQL);

  Esami := nil;
  xPossibili := nil;
  Fcodfirma := -1;
  FDIAGNOSTICA_FK := -1;

  sTipoRicetta.DataSet := FDMCommon.LkTipoRicetta;
  sTipoAccesso.DataSet := FDMCommon.LkTipoAccesso;

  sLkEsenzione.DataSet := FDMCommon.LkEsenzione;
  sLkOspedali.DataSet  := FDMCommon.LkOspedali;
  sEsami.DataSet       := FDMCommon.Esami;

  FDMCommon.edrepCODICEESAME.Properties.OnButtonClick := cxCodicePropertiesButtonClick;

  FInRicalcolo := false;
  GridPrestazioniNUMERO_PRESTAZIONE.Visible := (FDMCommon.LeggiPostoLavoroCHECK_NO_PRESTMULT.AsInteger=0) and not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);
  FRicercaFatta := (Accettazione.State=dsEdit);

  GridPrestazioni.OptionsBehavior.ImmediateEditor := false; //(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);
//  GridPrestazioni.Navigator.Visible := false; //(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);
//  GridPrestazioniMAGART_FK.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);
//  GridPrestazioniQR.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);
  GridPrestazioniRADIOFARMACO.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);
  GridPrestazioniESENTE.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  GridPrestazioniDESCBRANCA.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  GridPrestazioniDIAGNOSTICA.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);

  cxDiagnostica.Properties.Grid.DataController.DataModeController.SyncMode := True;
  cxDiagnostica.EditValue := -1;

  cxTipoRicetta.Properties.Grid.DataController.DataModeController.SyncMode := True;
  dxLayoutControlRicercaTessera.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
      
//  FDMCommon.LkOspedali.Filter := 'PROVENIENZA='+#39+'E'+#39;
  FDMCommon.LkOspedali.Filter := 'TIPO_ACCESSO='+#39+'E'+#39;
  FDMCommon.LkOspedali.Filtered := true;

  dxGroupNumeroImpegnativa.Visible := (FDMCommon.LeggiPostoLavoroCHK_DATI_IMPEGNATIVA.AsInteger=1);
  dxLayoutGroupDatiImpegnativa.Visible := (FDMCommon.LeggiPostoLavoroCHK_DATI_IMPEGNATIVA.AsInteger=1);
  if dxLayoutGroupDatiImpegnativa.Visible then
  begin
    dxLayoutDataImpegnativa.Visible := (FDMCommon.LeggiPostoLavoroCHK_DATA_IMPEGNATIVA.AsInteger>=1);
    dxLayoutTipoAccesso.Visible := (FDMCommon.LeggiPostoLavoroCHK_TIPO_ACCESSO.AsInteger>=1);
    dxLayoutTipoRicetta.Visible := (FDMCommon.LeggiPostoLavoroCHK_TIPO_RICETTA.AsInteger>=1);
    dxLayoutCompilazione.Visible := (FDMCommon.LeggiPostoLavoroCHK_COMPILAZIONE.AsInteger>=1);
    dxLayoutConsegnaReferto.Visible := (FDMCommon.LeggiPostoLavoroCHK_CONSEGNA_REF.AsInteger>=1);
  end;
  dxLayoutDataRichiesta.Visible := (FDMCommon.LeggiPostoLavoroCHK_DATA_RICHIESTA.AsInteger>=1);
  dxLayoutControlTrasporto.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  dxLayoutControlUrgenza.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  dxLayoutControlAnestesista.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  dxLayoutControlQuota.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  dxGroupMedicoRich.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);

  GridPrestazioniIMPORTO.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  GridPrestazioniESENTE.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);

  if dxLayoutCompilazione.Visible then
     qRicettaInf.Open;

  dxLayoutScreening.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=2);
  AccettazioneLIV_SCR.Required := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=2);
  if dxLayoutScreening.Visible then
     qLivScr.Open;



{JRT 880: tolto il blocco su aggiunta esami
  dxLayoutCodice.Enabled := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>2);
  dxLayoutDescrizione.Enabled := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>2);
}

  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) then
  begin
     PrestazioniORA_INIZIO.DisplayFormat := 'ddddd hh:nn';
  end;

end;

procedure TFDatiAccImp.BaseFormDestroy(Sender: TObject);
begin

  FDMCommon.LkOspedali.Filtered := false;
  FDMCommon.edrepCODICEESAME.Properties.OnButtonClick := nil;

  if Assigned(xPossibili) then
     xPossibili.Filtered := false;

  if Assigned(Esami) then
  begin
     Esami.Free;
     Esami := nil;
  end;

  FLookupMedInt.Free;
  FLookupMedEst.Free;

  cxMagg.Properties.OnEditValueChanged := nil;

end;

procedure TFDatiAccImp.SendPortDataToForm(const s: string; lungh: integer);
begin

//  inherited;   // -- no inherited su BaseRad !
  
  if (lungh in [5,10,16]) then
  begin
     if not (Accettazione.State in dsEditModes) then
        Accettazione.Edit;
     case lungh of
   5: begin
          if AccettazioneIMP_OBBLIG.AsInteger=0 then
          begin
            AccettazioneOSP_RICH.AsString := FDMCommon.LeggiPostoLavoroDEF_OSP_RICH.AsString;
            FDMCommon.LkOspedali.Locate('CODICE',AccettazioneOSP_RICH.AsString,[]);
            cxProvenienzaPropertiesCloseUp(self);
          end;
          AccettazioneNR_IMPEGNATIVA.AsString := s + Copy(AccettazioneNR_IMPEGNATIVA.AsString,6,10);
      end;
  10: begin
          if AccettazioneIMP_OBBLIG.AsInteger=0 then
          begin
            AccettazioneOSP_RICH.AsString := FDMCommon.LeggiPostoLavoroDEF_OSP_RICH.AsString;
            FDMCommon.LkOspedali.Locate('CODICE',AccettazioneOSP_RICH.AsString,[]);
            cxProvenienzaPropertiesCloseUp(self);
          end;
          AccettazioneNR_IMPEGNATIVA.AsString := Copy(AccettazioneNR_IMPEGNATIVA.AsString,1,5) + s;
          if cxCodiceEsenzione.CanFocus then
             cxCodiceEsenzione.SetFocus;
      end;
  16: begin
         xCF := s;
         aRicercaPaziente.Execute;
      end;
     end;
  end;
end;

procedure TFDatiAccImp.PrestazioniAfterDelete(DataSet: TDataSet);
begin
  inherited;
    FInRicalcolo := true;
    try
      with Prestazioni do
      begin
        DisableControls;
        First;
        while not eof do
        begin
           Edit;
           PrestazioniPROGRESSIVO_RIGA.AsInteger := Prestazioni.recno;
           Post;
           Next;
        end;
        EnableControls;
      end;
      RicalcolaTotale;
    finally
      FInRicalcolo := false;
    end;

end;

procedure TFDatiAccImp.ConfermaExecute(Sender: TObject);
begin
  inherited;
  SalvaTutto;
  ModalResult := mrOk;

end;

procedure TFDatiAccImp.ConfermaUpdate(Sender: TObject);
begin
  inherited;
  Conferma.Enabled := (Prestazioni.recordcount>0) {and (Prestazioni.recordcount<9)} and
                              not AccettazioneASSISTIBILI_FK.IsNull;

end;


procedure TFDatiAccImp.SalvaTutto;
var
  xdtpro: TDateTime;
  xuid: integer;
  xdiagn: integer;
  xcod_med: integer;
  xdurata: integer;
  xpki: integer;

begin

  xuid := gblcodutente;
  xdiagn := -1;
  xdtpro := 0;
  xcod_med := -1;
  xdurata := 0;
  xpki := AccettazionePKIMPEGNATIVE.AsInteger;

  if (AccettazioneSAN_IDENT.AsInteger=1) and not ConfermaAnagrafica(AccettazioneASSISTIBILI_FK.AsInteger,FDMCommon.CalcolaStatolancio(ProxStatoVisita,AccettazioneTIPO_ACCESSO.AsString)) then
  begin
     MsgDlg(RS_AnagraficaIncompleta,'', ktWarning, [kbOK]);
     Abort;
  end;

  if (Prestazioni.State in dsEditModes) then
      Prestazioni.Post;
{$IFNDEF MEDICORNER}
  if (ProxStatoVisita=120) and (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=1 {in [1,3]}) then
  begin
    FConfermaPswdRep := TFConfermaPswdRep.Create(nil);
    try
      FConfermaPswdRep.AttivaProsecuzione;
      FConfermaPswdRep.cxRadioStato.ItemIndex := 1;
//      FConfermaPswdRep.cxTempo := xdurata;
      rr := FConfermaPswdRep.ShowModal;
      xuid := FConfermaPswdRep.User_id;
      xdtpro := FConfermaPswdRep.cxDataProsegui.Date;
      if not VarIsNull(FConfermaPswdRep.cxDiagnostica.EditValue) then
         xdiagn := FConfermaPswdRep.cxDiagnostica.EditValue;
      if FConfermaPswdRep.cxTempo.Value>0 then
         xdurata := FConfermaPswdRep.cxTempo.Value;
      if not VarIsNull(FConfermaPswdRep.cxLookupMedici.EditValue) then
         xcod_med := FConfermaPswdRep.cxLookupMedici.EditValue;
      ProxStatoVisita := FConfermaPswdRep.cxRadioStato.Properties.Items[FConfermaPswdRep.cxRadioStato.ItemIndex].Value;
    finally
      FConfermaPswdRep.Free;
      FConfermaPswdRep := nil;
    end;
    if rr=mrCancel then
       Abort;
  end;
{$ENDIF}
  AssegnaEsenzione(true);

  if (Accettazione.State in dsEditModes) then
  	 Accettazione.Post;

  // -- aggiorna blob e statovisita
  if ProxStatoVisita<1000 then
  begin
    // -- patch per registrazioni in corso...
    if ProxStatoVisita=10 then
       ProxStatoVisita := 20;

    AggiornaStatoVisita.opennofetch;
    AggiornaStatoVisita.insert;
    if xdiagn>0 then
       AggiornaStatoVisitaDIAGNOSTICA.AsInteger := xdiagn
    else
       AggiornaStatoVisitaDIAGNOSTICA.Clear;
    if xdtpro>0 then
    begin
       AggiornaStatoVisitaORA_INIZIO.AsDateTime := xdtpro;
    end
    else begin
//       AggiornaStatoVisitaORA_INIZIO.Clear;
       AggiornaStatoVisitaORA_INIZIO.AsDateTime := xOra_Inizio;
    end;
    if xcod_med>0 then
       AggiornaStatoVisitaCOD_MED_FIRMA.AsInteger := xcod_med
    else
       AggiornaStatoVisitaCOD_MED_FIRMA.Clear;
    if xdurata>0 then
       AggiornaStatoVisitaDURATA.AsInteger := xdurata
    else
       AggiornaStatoVisitaDURATA.Clear;
    AggiornaStatoVisitaUSER_ID.AsInteger := xuid;
    AggiornaStatoVisitaSTATO.AsInteger := ProxStatoVisita;
    AggiornaStatoVisitaPKIMPEGNATIVE.AsInteger := xpki;
    AggiornaStatoVisitaDATA_EROGAZIONE.AsDateTime := xoggi;

    if ProxStatoVisita=41 then
       AggiornaStatoVisitaCOD_MED_VALIDA.AsInteger := gblcodutente;

    AggiornaStatoVisita.Post;

  end;

  try
     if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) then
        FDMCommon.AstaClientSocket.SendDataSetTransactions(Name,[Accettazione,Prestazioni,NoteEsame,Materiali,AggiornaStatoVisita,qSpecxPrest])
     else
        FDMCommon.AstaClientSocket.SendDataSetTransactions(Name,[Accettazione,Prestazioni,NoteEsame,AggiornaStatoVisita,qSpecxPrest]);
  finally
     AggiornaStatoVisita.Close;
  end;

  ControllaAltriEsami;  
  FDMCommon.AllocaModalita(xpki);

end;

procedure TFDatiAccImp.CompostoBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  inherited;
	Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;

end;

procedure TFDatiAccImp.CancellaEsameExecute(Sender: TObject);
begin
  inherited;
  Prestazioni.Delete;
  FInRicalcolo := true;
  try
    if Assigned(xReferAcc) then
       xReferAcc.CercaInCalendari(Prestazioni,DiagSelez);
  finally
    FInRicalcolo := false;
  end;
end;

procedure TFDatiAccImp.CancellaEsameUpdate(Sender: TObject);
begin
  inherited;
  CancellaEsame.Enabled := not Prestazioni.IsEmpty and (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,6]) and
                             (((PrestazioniSTATO.AsInteger=0) and (ProxStatoVisita<=130)) or (ProxStatoVisita=1000)) and
                             ((ProxStatoVisita<=130) or gblSuperUser or gblUserIsAdmin or gblEstrazioneDati);
end;

procedure TFDatiAccImp.csEZKeys1KeyIntercept(KeyType: TNavigationKey;
  Ctrl: TControl; var Intercept: Boolean);
begin
  Intercept := Assigned(Ctrl)
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

procedure TFDatiAccImp.ConfermaStampaExecute(Sender: TObject);
begin
  inherited;
  SalvaTutto;
  ModalResult := mrRetry;
end;

procedure TFDatiAccImp.ConfermaStampaUpdate(Sender: TObject);
begin
  inherited;
  ConfermaStampa.Enabled := (Prestazioni.recordcount>0) {and (Prestazioni.recordcount<9)} and
                              not AccettazioneASSISTIBILI_FK.IsNull and not gblCallCenter;

end;

procedure TFDatiAccImp.CodicePress;
begin
  if (cxCodice.Text<>'') then
  begin
     FiltraQuery('CODICE LIKE '+#39+cxCodice.Text+'%'+#39);
     if (Esami.RecordCount=1) then
        CaricaCodice(Esami.Fieldbyname('PKCODICIRAD').AsInteger)
     else
        CercoCodice(tpCodice);
  end
  else
     CercoCodice(tpCodice);
end;


procedure TFDatiAccImp.DescrPress;
begin
  if (cxDescrizione.Text<>'') then
  begin
     FiltraQuery('DESCRIZIONE LIKE '+#39+'%'+cxDescrizione.Text+'%'+#39);
     if (Esami.RecordCount=1) then
        CaricaCodice(Esami.Fieldbyname('PKCODICIRAD').AsInteger)
     else
        CercoCodice(tpDescrizione);
  end
  else
     CercoCodice(tpDescrizione);
end;

procedure TFDatiAccImp.FiltraQuery(const cosa: string);
begin
     Esami.Filtered := false;
     Esami.Filter := cosa;
     Esami.Filtered := true;
end;

procedure TFDatiAccImp.cxDescrizionePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  DescrPress;
end;

procedure TFDatiAccImp.cxDescrizioneKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
  VK_F10: DescrPress;
  end;
end;

procedure TFDatiAccImp.cxCodiceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
  VK_F10: CodicePress;
  VK_RETURN:  Key := VK_TAB;
  end;
end;

procedure TFDatiAccImp.cxCognomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if not (Key in [VK_F10,VK_RETURN,VK_TAB]) then
     FRicercaFatta := false;
end;

procedure TFDatiAccImp.cxNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if not (Key in [VK_F10,VK_RETURN,VK_TAB]) then
     FRicercaFatta := false
  else if (Key in [VK_F10,VK_RETURN,VK_TAB]) and not FRicercaFatta then
     aRicercaPaziente.Execute;
end;

procedure TFDatiAccImp.PrestazioniBeforePost(DataSet: TDataSet);
begin
  inherited;
  if codfirma=-1 then
     PrestazioniUSER_ID.AsInteger := gblCodUtente
  else
     PrestazioniUSER_ID.AsInteger := codfirma;

  if (Prestazioni.State=dsInsert) and (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) then
  begin
    DistBas.Parambyname('codicirad_fk').AsInteger := PrestazioniCODICIRAD_FK.AsInteger;
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

{JRT 6378}
  if (Prestazioni.State=dsEdit) then
  begin
    if Prestazioni.OldValuesDataSet.Locate('PKPRESTAZIONI',PrestazioniPKPRESTAZIONI.AsInteger,[]) and
      (Prestazioni.OldValuesDataSet.Fieldbyname('DIAGNOSTICA_FK').AsInteger<>PrestazioniDIAGNOSTICA_FK.AsInteger) then
           PrestazioniTRIAGE_FK.Clear;
  end;
{}

end;

procedure TFDatiAccImp.PrecedentiExecute(Sender: TObject);
begin
  inherited;
  FVisitePrecRAD := TFVisitePrecRAD.Create(nil);
  try
//     FVisitePrecRAD.SoloEseguiti := false;
     FVisitePrecRAD.xpka := AccettazioneASSISTIBILI_FK.AsInteger;
     FVisitePrecRAD.xpki := AccettazionePKIMPEGNATIVE.AsInteger;
     FVisitePrecRAD.ShowModal;
  finally
     FVisitePrecRAD.Free;
     FVisitePrecRAD := nil;
  end

end;

procedure TFDatiAccImp.PrecedentiUpdate(Sender: TObject);
begin
  inherited;
  Precedenti.Enabled := not AccettazioneASSISTIBILI_FK.IsNull;
end;

procedure TFDatiAccImp.PrestazioniAfterPost(DataSet: TDataSet);
begin
  inherited;
  if not FInRicalcolo then
  begin
    FInRicalcolo := true;
    try
       RicalcolaTotale;
    finally
       FInRicalcolo := false;
    end;
  end;
end;

procedure TFDatiAccImp.AbilitaCampi(change: boolean);
begin

  AccettazioneIMP_OBBLIG.AsInteger := FDMCommon.LkOspedaliIMPEGNATIVA.AsInteger;
  cxNumeroImpegnativa.Enabled := (AccettazioneIMP_OBBLIG.AsInteger in [1,3]) and (cxProvenienza.Text<>'');
  if (FDMCommon.LkOspedaliMASK.AsString<>cxNumeroImpegnativa.Properties.EditMask) then
     cxNumeroImpegnativa.Properties.EditMask := FDMCommon.LkOspedaliMASK.AsString;

  cxCodiceEsenzione.Enabled := (AccettazioneTIPO_FATTURA.AsInteger<>3) and (cxProvenienza.Text<>'');
  cxMedicoBase.Enabled := (AccettazioneTIPO_FATTURA.AsInteger<>3) and (cxProvenienza.Text<>'');

  dxLayoutGroupDatiImpegnativa.Enabled := (FDMCommon.LeggiPostoLavoroCHK_DATI_IMPEGNATIVA.AsInteger=1) and (AccettazioneTIPO_FATTURA.AsInteger in [0,2]) and (cxProvenienza.Text<>'');
  dxLayoutControlQuota.Enabled := dxLayoutGroupDatiImpegnativa.Enabled;

  if change then
  begin
{ -- non cancello...
    if not cxNumeroImpegnativa.Enabled then
    begin
      cxNumeroImpegnativa.Clear;
      AccettazioneNR_IMPEGNATIVA.Clear;
    end;
}
    if (FDMCommon.LeggiPostoLavoroCHK_DATI_IMPEGNATIVA.AsInteger=1) and not dxLayoutGroupDatiImpegnativa.Enabled then
    begin
       AccettazioneDATA_IMPEGNATIVA.Clear;
       AccettazioneTIPO_ACCESSO_FK.Clear;
       AccettazioneTIPO_RICETTA_FK.Clear;
       AccettazioneDESC_INVIO.Clear;
       {JRT 3126}
       AccettazioneRICETTA_INF.Clear;
    end;

  end;

end;

procedure TFDatiAccImp.GridPrestazioniDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  inherited;
  GridPrestazioni.DataController.Summary.FooterSummaryValues[0] := AccettazioneIMPORTO_PAGATO.AsFloat;
end;

procedure TFDatiAccImp.cxProvenienzaPropertiesCloseUp(Sender: TObject);
var
  variato: boolean;
begin
  AccettazioneDESCR_OSPEDALE.AsString := FDMCommon.LkOspedaliDESCRIZIONE.AsString;
  AccettazioneTIPO_ATTIVITA_FK.AsString := FDMCommon.LkOspedaliTIPO_ATTIVITA_FK.AsString;
  AccettazioneTIPO_ACCESSO.AsString := FDMCommon.LkOspedaliTIPO_ACCESSO.AsString;
  variato := AccettazionePROVIMP.IsNull or (AccettazionePROVIMP.AsString<>FDMCommon.LkOspedaliPROVENIENZA.AsString) or (AccettazioneTIPO_FATTURA.AsInteger<>FDMCommon.LkOspedaliTIPO_FATTURA.AsInteger);
  AccettazionePROVIMP.AsString := FDMCommon.LkOspedaliPROVENIENZA.AsString;
  AccettazioneTIPO_FATTURA.AsInteger := FDMCommon.LkOspedaliTIPO_FATTURA.AsInteger;
  if not FDMCommon.LkOspedaliLEG_CODICE.IsNull then
     AccettazioneLEG_CODICE.AsString := FDMCommon.LkOspedaliLEG_CODICE.AsString
  else
     AccettazioneLEG_CODICE.AsString := FDMCommon.LeggiPostoLavoroLEG_CODICE.AsString;

  if variato then
  begin
    if (AccettazionePROVIMP.AsString='I') and (AccettazioneTIPO_FATTURA.AsInteger<>3) then
    begin
       MedInterni.SQL.Assign(FLookupMedInt);
       cxMedicoBase.LookupTable := MedInterni;
       cxMedicoBase.LookupPK := 'PKPERSONALE';
       cxMedicoBase.AllowNotInList := false;
       AccettazioneMED_BASE.Clear;
       AccettazioneNOMEMEDICO.Clear;
    end
    else if (AccettazionePROVIMP.AsString<>'I') then
    begin
       MedBase.SQL.Assign(FLookupMedEst);
       cxMedicoBase.LookupTable := MedBase;
       cxMedicoBase.LookupPK := 'CODICE';
       cxMedicoBase.AllowNotInList := true;
       AccettazioneCOD_MED_INT.Clear;
       AccettazioneNOMEMEDICO.Clear;
    end
    else begin
       AccettazioneCOD_MED_INT.Clear;
       AccettazioneNOMEMEDICO.Clear;
    end;
  end;

  if not FDMCommon.LkOspedaliES_TICKET.IsNull then
  begin
     AccettazioneTES_IDENT.AsString := FDMCommon.LkOspedaliES_TICKET.AsString;
     sLkEsenzione.DataSet.Locate('IDENT',AccettazioneTES_IDENT.AsString,[]);
  end
  else
     AccettazioneTES_IDENT.Clear;

  cxCodiceEsenzionePropertiesCloseUp(Sender);

  AbilitaCampi(true);

end;

procedure TFDatiAccImp.AssegnaEsenzione(daSalva: boolean);
begin

  if not Prestazioni.Active then exit;

  Prestazioni.DisableControls;
  FInRicalcolo := true;
  try

  if not daSalva then
  begin
      with Prestazioni do
      begin
            First;
            while not eof do
            begin
               Edit;
               if (AccettazioneESENTE.AsInteger=1) or
                  ((AccettazioneESENTE.AsInteger=2) and
                   (not CodiciEsenti.Active or
                    CodiciEsenti.Locate('IDENT_FK',PrestazioniIDENT_FK.AsString,[]))) then
                   PrestazioniESENTE.AsInteger := 1
               else
                   PrestazioniESENTE.AsInteger := 0;
               Post;
               Next;
            end;
      end;
  end;

{JRT 2723}
  if cxMagg.Checked and dxLayoutControlQuota.Visible and not (AccettazioneESENTE.AsInteger in [0,2]) then
     cxMagg.Checked := false;
{}

  RicalcolaTotale;

  finally
     Prestazioni.EnableControls;
     FInRicalcolo := false;
  end;

end;

procedure TFDatiAccImp.cxMedicoBaseSearch(Sender: TObject;
  var trovato: Integer; var codice: Variant; const cerca: String);
begin
  inherited;

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
       FRicMedici := nil;
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

procedure TFDatiAccImp.BaseFormClose(Sender: TObject;
  var Action: TCloseAction);
begin

//  FDMCommon.Possibili.Filtered := false;

  inherited;

end;

procedure TFDatiAccImp.cxCodiceEsenzionePropertiesCloseUp(Sender: TObject);
begin
  inherited;

  if cxCodiceEsenzione.text='' then
  begin
    AccettazioneESENTE.AsInteger := 0;
    AccettazioneTET_IDENT.Clear;
    AccettazioneDESCESENZIONE.Clear;
    CodiciEsenti.close;
    GridPrestazioniESENTE.Options.Editing := false;
  end
  else begin
    GridPrestazioniESENTE.Options.Editing := (FDMCommon.LkEsenzioneESENTE.AsInteger=2);
    AccettazioneESENTE.AsInteger := FDMCommon.LkEsenzioneESENTE.AsInteger;
    AccettazioneTET_IDENT.AsInteger := FDMCommon.LkEsenzioneTET_IDENT.AsInteger;
    AccettazioneDESCESENZIONE.AsString := FDMCommon.LkEsenzioneDESCR.AsString;
    CodiciEsenti.close;
    if FDMCommon.LkEsenzioneCON_PRESTAZIONI.AsInteger=1 then
    begin
      CodiciEsenti.Parambyname('esenztick_fk').AsString := VarToStr(cxCodiceEsenzione.EditValue);
      CodiciEsenti.open;
    end;
  end;

  AssegnaEsenzione(false);

  dxLayoutNumeroFattura.Enabled := (AccettazioneTIPO_FATTURA.AsInteger<>0);

//  if (AccettazioneTIPO_FATTURA.AsInteger=3) and change then
  if dxLayoutNumeroFattura.Enabled and dxLayoutNumeroFattura.Visible and (AccettazioneESENTE.AsInteger in [0,3]) then
  begin
     if (AccettazioneNR_FATT.AsInteger=0) then
     begin
          AccettazioneALI_IVA.AsInteger := FDMCommon.Param_TicketALI_IVA.AsInteger;
          AccettazioneANNO_FATT.AsInteger := YearOf(Date());
          AccettazioneDATA_FATT.AsDateTime := Date();
          with qNumeroFattura do
          begin
              Close;
              Parambyname('ANNO_FATT').AsInteger := AccettazioneANNO_FATT.AsInteger;
              Parambyname('PKIMPEGNATIVE').AsInteger := AccettazionePKIMPEGNATIVE.AsInteger;
              Parambyname('REPARTI_FK').AsInteger := gblpkrep;
              Open;
          end;
          AccettazioneNR_FATT.AsInteger := qNumeroFatturaNR_FATT.AsInteger+1;
     end
  end
  else begin
      AccettazioneALI_IVA.Clear;
      AccettazioneANNO_FATT.Clear;
      AccettazioneNR_FATT.Clear;
      AccettazioneDATA_FATT.Clear;
  end;

end;

procedure TFDatiAccImp.GridPrestazioniESENTEPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_CHECKCHANGED,0,0);
end;

procedure TFDatiAccImp.PostValore(var Message: TMessage);
begin
  if (Prestazioni.State in dsEditModes) then
     Prestazioni.Post;
end;

procedure TFDatiAccImp.AccettazioneAfterEdit(DataSet: TDataSet);
begin
  inherited;
  // -- override per passaggio interni...
  if AccettazionePROVENIENZA.AsString<>'E' then
  begin
     AccettazioneOSP_RICH.Clear;
     AccettazionePROVENIENZA.AsString := 'E';
//     AccettazionePLACER_ORDER_NUMBER.Clear;
     Prestazioni.open;
     FInRicalcolo := true;
     try
       RicalcolaTotale;
     finally
       FInRicalcolo := false;
     end;
  end;

end;

procedure TFDatiAccImp.cxCognomePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  cogn: string;
begin
  inherited;
  cogn := VarAsType(DisplayValue,varString);
  if (Length(cogn)>0) and (Length(cogn)<2) then
  begin
     Error := TRUE;
     ErrorText := format(RS_Almeno2Caratteri,[dxLayoutCognome.Caption]);
  end;

end;

procedure TFDatiAccImp.cxDiagnosticaPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  DiagSelez := FDMCommon.VarToInt(cxDiagnostica.EditValue);
end;

procedure TFDatiAccImp.cxMedicoBaseNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean;
  var codice: Variant);
begin
  inherited;
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

procedure TFDatiAccImp.cxDBImageComboBox1PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;

//  dxLayoutCodice.Enabled := (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,6]);
//  dxLayoutDescrizione.Enabled := (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,6]);

  Prestazioni.DisableControls;
  Prestazioni.First;
  while not Prestazioni.Eof do
  begin
    if (PrestazioniLIV_SCR.AsInteger<>AccettazioneLIV_SCR.AsInteger) then
    begin
       Prestazioni.Edit;
       PrestazioniLIV_SCR.AsInteger:=AccettazioneLIV_SCR.AsInteger;
       Prestazioni.Post;
    end;
    Prestazioni.Next;
  end;
  Prestazioni.EnableControls;

end;

procedure TFDatiAccImp.cxButtonConsegnaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FConsegnaReferto := TFConsegnaReferto.Create(nil);
  try
     FConsegnaReferto.sAccettazione.DataSet := Accettazione;
(* ToDo: allineare alla gestione dell'indirizzo completo dell'anagrafica (spostare indirizzi in tabella a parte?)
     if (Accettazione.State=dsInsert) then
     begin
        FConsegnaReferto.xIndirizzo := xIndirizzo;
        FConsegnaReferto.xcap       := xcap;
        FConsegnaReferto.xcomune    := xcomune;
        FConsegnaReferto.xdesccom   := xdesccom;
     end
     else begin
        FConsegnaReferto.xIndirizzo := AccettazioneIND_REF.AsString;
        FConsegnaReferto.xcap       := AccettazioneCAP_REF.AsString;
        FConsegnaReferto.xcomune    := AccettazioneCOM_REF.AsString;
        FConsegnaReferto.xdesccom   := AccettazioneDES_COMREF.AsString;
     end;
*)
     if FConsegnaReferto.ShowModal=mrOk then
     begin
        AccettazioneDESC_INVIO.AsString := FConsegnaReferto.cxTipoInvio.Text;
     end;

  finally
     FConsegnaReferto.Free;
  end;

end;

procedure TFDatiAccImp.cxDataImpegnativaPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  cxMagg.Checked :=  dxLayoutControlQuota.Visible and (FDMCommon.LeggiPostoLavoroCHK_DATA_IMPEGNATIVA.AsInteger=0) or (YearOf(cxDataImpegnativa.Date)=0) or (YearOf(cxDataImpegnativa.Date)>=2007);
end;

procedure TFDatiAccImp.cxMaggPropertiesEditValueChanged(Sender: TObject);
begin
  if Prestazioni.Active and not FInRicalcolo then
  begin
    FInRicalcolo := true;
    try
       RicalcolaTotale;
    finally
       FInRicalcolo := false;
    end;
  end;
end;

procedure TFDatiAccImp.PrestazioniBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if (AccettazioneTIPO_FATTURA.AsInteger=2) and (Prestazioni.recordcount>=8) then
  begin
     msgDlg(RS_MaxEsamixImp, '', ktError, [kbOK], dfFirst);
     Abort;
  end;
end;

procedure TFDatiAccImp.MaterialiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('impegnative_fk').AsInteger := AccettazionePKIMPEGNATIVE.AsInteger;
end;

procedure TFDatiAccImp.MaterialiNewRecord(DataSet: TDataSet);
begin
  inherited;
  MaterialiPRESTAZIONI_FK.AsInteger := PrestazioniPKPRESTAZIONI.AsInteger;
  MaterialiTIPO.AsInteger := 1;

end;

procedure TFDatiAccImp.GridPrestazioniRADIOFARMACOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
{$IFNDEF MEDICORNER}
var
  i: integer;
{$ENDIF}
begin
  inherited;
{$IFNDEF MEDICORNER}
  Materiali.Filtered := false;
  Materiali.Filter := format('PRESTAZIONI_FK = %d',[PrestazioniPKPRESTAZIONI.AsInteger]);
  Materiali.Filtered := true;

  FRadiofarmaco := TFRadiofarmaco.Create(nil);
  try

     FRadiofarmaco.sPrestazioni.DataSet := Prestazioni;
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

procedure TFDatiAccImp.PrestazioniBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]) then
  begin
    Materiali.Filtered := false;
    Materiali.Filter := format('PRESTAZIONI_FK = %d',[PrestazioniPKPRESTAZIONI.AsInteger]);
    Materiali.Filtered := true;
    while not Materiali.eof do
          Materiali.Delete;
    Materiali.Filtered := false;
  end;
  CancellaSpecxPrest(PrestazioniPKPRESTAZIONI.AsInteger);
end;

procedure TFDatiAccImp.CancellaSpecxPrest(prg: Integer);
begin
    qSpecxPrest.Filtered := False;
    qSpecxPrest.Filter := format('PRESTAZIONI_FK = %d',[prg]);
    qSpecxPrest.Filtered := True;
    while not qSpecxPrest.eof do
        qSpecxPrest.Delete;
end;

procedure TFDatiAccImp.cxTipoRicettaPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if not AccettazioneTIPO_RICETTA_FK.IsNull and not FDMCommon.LkTipoRicettaTIPO_ATTIVITA_FK.IsNull then
  begin
     AccettazioneTIPO_ATTIVITA_FK.AsString := FDMCommon.LkTipoRicettaTIPO_ATTIVITA_FK.AsString;
     AccettazioneTIPO_ACCESSO.AsString := FDMCommon.LkOspedaliTIPO_ACCESSO.AsString;     
  end;

end;

procedure TFDatiAccImp.cxDataImpegnativaPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := (DisplayValue > Date());
  if Error then
     ErrorText := RS_TIC_DataPrestazNOK;
end;

procedure TFDatiAccImp.aTesseraSanitariaExecute(Sender: TObject);
begin
  inherited;
  FRicercaTessera := TFRicercaTessera.Create(nil);
  try
     if FRicercaTessera.ShowModal=mrOk then
        SendPortDataToForm(FRicercaTessera.cxCodFisc.Text, Length(FRicercaTessera.cxCodFisc.Text));
  finally
     FRicercaTessera.Free;
  end;
end;

procedure TFDatiAccImp.aTesseraSanitariaUpdate(Sender: TObject);
begin
  inherited;
  aTesseraSanitaria.Enabled := (FDMCommon.LeggiPostoLavoroCHK_ABILITA_ACCETTAZ.AsInteger in [1,2,6])
                    {JRT 6018} and dxGroupAnagrafica.Enabled{};
end;

procedure TFDatiAccImp.AltriEsamiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  Sender.Parambyname('assistibili_fk').AsInteger := AccettazioneASSISTIBILI_FK.AsInteger;
  Sender.Parambyname('pkimpegnative').AsInteger := AccettazionePKIMPEGNATIVE.AsInteger;
  Sender.Parambyname('data1').AsDateTime := Date();
  if xDal=0 then
     Sender.Parambyname('xdal').AsDateTime := IncDay(Date(),-60)
  else
     Sender.Parambyname('xdal').AsDateTime := xDal;
  if xAl=0 then
     Sender.Parambyname('xal').AsDateTime := IncDay(Date(),30)
  else
     Sender.Parambyname('xal').AsDateTime := xAl;
end;

procedure TFDatiAccImp.ControllaAltriEsami;
var
  xgiorno,xora: string;
begin
  AltriEsami.syRefresh;
  if not AltriEsami.IsEmpty then
  begin
     case AltriEsamiSTATOVISITA.AsInteger of
     20:
       begin
         DateTimeToString(xgiorno, 'dd/mm/yyyy', AltriEsamiORA_INIZIO.AsDateTime);
         DateTimeToString(xora, 'hh:nn', AltriEsamiORA_INIZIO.AsDateTime);
         MsgDlg( Format(RAD_AvvisoPrenoDiag,[AltriEsamiDIAGNOSTICA.AsString,xgiorno,xora]), '', ktWarning, [kbOK], dfFirst);
       end;
     120:
       begin
         DateTimeToString(xgiorno, 'dd/mm/yyyy', AltriEsamiORA_INIZIO.AsDateTime);
         DateTimeToString(xora, 'hh:nn', AltriEsamiORA_INIZIO.AsDateTime);
         MsgDlg( Format(RAD_AvvisoEsamiDiag,[AltriEsamiDIAGNOSTICA.AsString,xgiorno,xora]), '', ktWarning, [kbOK], dfFirst);
       end;
     else
       MsgDlg( Format(RAD_AvvisoEsamiRich,[AltriEsamiDIAGNOSTICA.AsString]), '', ktWarning, [kbOK], dfFirst);
     end;
  end;
end;

procedure TFDatiAccImp.aNoteExecute(Sender: TObject);
begin
  inherited;
  FNote := TFNote.Create(nil);
  try
     FNote.sNote.Dataset := NoteEsame;
     if not (NoteEsame.State in dsEditModes) then
        NoteEsame.Edit;
     if FNote.ShowModal=mrOk then
        NoteEsame.Post
     else
        NoteEsame.Cancel;
  finally
     FNote.Free;
  end;

end;

procedure TFDatiAccImp.aNoteUpdate(Sender: TObject);
begin
  inherited;
  aNote.Enabled := not NoteEsame.IsEmpty;
  if aNote.Enabled and not NoteEsameNOTE_PRENO.IsNull then
     aNote.ImageIndex := 51
  else
     aNote.ImageIndex := 52;

end;

procedure TFDatiAccImp.NoteEsameBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('impegnative_fk').AsInteger := AccettazionePKIMPEGNATIVE.AsInteger;
end;

procedure TFDatiAccImp.PrestazioniAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if NoteEsame.IsEmpty then
  begin
     NoteEsame.Insert;
     NoteEsameIMPEGNATIVE_FK.AsInteger := AccettazionePKIMPEGNATIVE.AsInteger;
  end;

end;

procedure TFDatiAccImp.cxDBLookupComboBox1PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  if not FDMCommon.LkTipoAccessoURGENZA_FK.IsNull then
     AccettazioneURGENZA.AsInteger := FDMCommon.LkTipoAccessoURGENZA_FK.AsInteger;
end;

procedure TFDatiAccImp.cxNumeroImpegnativaMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  cxNumeroImpegnativa.SelectAll;
end;

procedure TFDatiAccImp.cxDBQuesitoEnter(Sender: TObject);
begin
  inherited;
  oldReadBarCode := ReadBarCode;
  ReadBarCode := False;
end;

procedure TFDatiAccImp.cxDBQuesitoExit(Sender: TObject);
begin
  inherited;
  ReadBarCode := oldReadBarCode;
end;

procedure TFDatiAccImp.cxCodiceEnter(Sender: TObject);
begin
  inherited;
  Catch := True;
end;

procedure TFDatiAccImp.cxCodiceExit(Sender: TObject);
begin
  inherited;
  Catch := False;
end;

procedure TFDatiAccImp.cxDescrizioneEnter(Sender: TObject);
begin
  inherited;
  Catch := True;
end;

procedure TFDatiAccImp.cxDescrizioneExit(Sender: TObject);
begin
  inherited;
  Catch := False;
end;

procedure TFDatiAccImp.cxCognomeEnter(Sender: TObject);
begin
  inherited;
//  Catch := True;
end;

procedure TFDatiAccImp.cxCognomeExit(Sender: TObject);
begin
  inherited;
//  Catch := False;
end;

procedure TFDatiAccImp.cxNomeEnter(Sender: TObject);
begin
  inherited;
  Catch := True;
end;

procedure TFDatiAccImp.cxNomeExit(Sender: TObject);
begin
  inherited;
  Catch := False;
end;

procedure TFDatiAccImp.AccettazioneBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDatiAccImp.qRicettaInfBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDatiAccImp.qLivScrBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFDatiAccImp.StartPersonalizza;
begin
  LanciaPersonalizza(dxLayoutControl1,FDMCommon.qFormLayout);
end;

procedure TFDatiAccImp.StopPersonalizza;
begin
  FDMCommon.SalvaPersonalizza(Name,dxLayoutControl1,gblcodutente);
end;

procedure TFDatiAccImp.ResetPersonalizza;
begin
  if FDMCommon.ResetLayout(Name,dxLayoutControl1) then
     ModalResult := mrCancel;
end;

procedure TFDatiAccImp.aAnnullaExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TFDatiAccImp.qSpecxPrestBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('impegnative_fk').AsInteger := AccettazionePKIMPEGNATIVE.AsInteger;

end;

procedure TFDatiAccImp.cxCodiceKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then
     CodicePress;
end;

procedure TFDatiAccImp.cxDescrizioneKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then
     DescrPress;
end;

procedure TFDatiAccImp.qSpecxPrestNewRecord(DataSet: TDataSet);
begin
  inherited;
  qSpecxPrestPRESTAZIONI_FK.AsInteger := PrestazioniPKPRESTAZIONI.AsInteger;
end;

procedure TFDatiAccImp.GridPrestazioniNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
  NBDI_DELETE: begin
                 CancellaEsame.Execute;
                 ADone := True;                 
               end;
  end;
end;

end.