unit Anagrafica;

interface

uses
  BaseRad, IInterface, Classes, ActnList, AstaUpdateSQL, DB, AstaDrv2,
  AstaClientDataset, dxLayoutControl, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit, cxDBEdit,
  KScxDBLookupDlg, cxRadioGroup, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxControls, CSEZForm,
  Controls, ExtCtrls,  cxGroupBox, cxGraphics, cxImageComboBox,
  cxCalendar, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Menus, StdCtrls, cxButtons, cxLookAndFeels,
  dxLayoutcxEditAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxPSCore, dxPSContainerLnk,
  cxLabel, cxDBLabel, dxPScxDBEditorLnks, dxPSTextLnk, cxMemo,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPSdxLCLnk, cxNavigator,
  dxLayoutControlAdapters, dxLayoutContainer, dxPSPrVwRibbon,
  dxPScxSchedulerLnk, dxPSdxDBOCLnk, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter;


type
  TFAnagrafica = class(TFBaseRad)
    sAssistibili: TDataSource;
    Assistibili: TAstaClientDataSet;
    LkComuniNasc: TAstaClientDataSet;
    LkComuniNascDESCRIZIONE: TStringField;
    LkComuniNascCODICE: TStringField;
    LkComuniRes: TAstaClientDataSet;
    LkComuniResCODICE: TStringField;
    LkComuniResDESCRIZIONE: TStringField;
    LkComuniResCAP: TStringField;
    LkNazCitt: TAstaClientDataSet;
    LkNazCittSIGLA: TStringField;
    LkNazCittDESCRIZIONE: TStringField;
    LkNazCittCODICE: TStringField;
    sLkComuniRes: TDataSource;
    LkStradario: TAstaClientDataSet;
    LkStradarioINDIRIZZO: TStringField;
    LkStradarioCAP: TStringField;
    LkStradarioINTERVALLI: TStringField;
    LkUsl: TAstaClientDataSet;
    LkUslDESCRUSL: TStringField;
    LkUslREG_CODICE: TStringField;
    LkUslCODICE: TStringField;
    LkComuniResNAZ_CODICE: TStringField;
    sLkUsl: TDataSource;
    updAssistibili: TAstaUpdateSQL;
    AssistibiliPKASSISTIBILI: TIntegerField;
    AssistibiliCOGNOME: TStringField;
    AssistibiliNOME: TStringField;
    AssistibiliDATA_NASCITA: TDateTimeField;
    AssistibiliTELEFONO: TStringField;
    AssistibiliEMAIL: TStringField;    
    AssistibiliSES_CODICE: TStringField;
    AssistibiliCOM_CODICE: TStringField;
    AssistibiliCIT_CODICE: TStringField;
    AssistibiliSAN_IDENT: TIntegerField;
    AssistibiliLIBRETTO_SAN: TStringField;
    AssistibiliCODICE_FISCALE: TStringField;
    AssistibiliUSL_CODICE_APPARTIENE: TStringField;
    AssistibiliUSL_REG_CODICE_APPARTIENE: TStringField;
    AssistibiliNAZRES_CODICE: TStringField;
    AssistibiliDES_COMRES: TStringField;
    AssistibiliDES_COMNASC: TStringField;
    LkComuniNascSIGLA: TStringField;
    LkComuniResSIGLA: TStringField;
    LkComuniNascCATASTO: TStringField;
    AssistibiliCATASTO: TStringField;
    AssistibiliDES_NAZCIT: TStringField;
    AssistibiliNAZ_CIT: TStringField;
    AssistibiliUSER_ID: TIntegerField;
    ActionList1: TActionList;
    aConferma: TAction;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutCognome: TdxLayoutItem;
    Cognome: TcxDBMaskEdit;
    dxLayoutNome: TdxLayoutItem;
    Nome: TcxDBMaskEdit;
    dxLayoutLibretto: TdxLayoutItem;
    Libretto: TcxDBMaskEdit;
    dxLayoutControl1AlignmentConstraint1: TdxLayoutAlignmentConstraint;
    dxLayoutDatiNascita: TdxLayoutGroup;
    dxLayoutComuneNascita: TdxLayoutItem;
    Comune_Nasc: TKScxDBLookupDlg;
    dxLayoutCittadinanza: TdxLayoutItem;
    Cittadinanza: TKScxDBLookupDlg;
    dxLayoutDescCittadinanza: TdxLayoutItem;
    dxLayoutControl1Item99: TdxLayoutItem;
    DescCittadinanza: TcxDBLabel;
    dxLayoutResidenza: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutComuneResidenza: TdxLayoutItem;
    Com_Residenza: TKScxDBLookupDlg;
    dxlIndirizzo: TdxLayoutItem;
    cxIndirizzo: TcxDBButtonEdit;
    dxLayoutControl1AlignmentConstraint2: TdxLayoutAlignmentConstraint;
    dxlCAP: TdxLayoutItem;
    cxCapRes: TcxDBMaskEdit;
    dxlASLAppartenenza: TdxLayoutItem;
    cxASLAppartiene: TcxDBLookupComboBox;
    dxlTelefono: TdxLayoutItem;
    cxTelefono: TcxDBMaskEdit;
    MedBase: TAstaClientDataSet;
    MedBaseNOMINATIVO: TStringField;
    dxlMedicoBase: TdxLayoutItem;
    cxMedicoBase: TKScxDBLookupDlg;
    AssistibiliNOMEMEDICO: TStringField;
    LkComuniNascNAZ_CODICE: TStringField;
    LkComuniNascNAZSIGLA: TStringField;
    cxCodiceFiscale: TcxDBButtonEdit;
    dxLayoutCodFiscale: TdxLayoutItem;
    ControlloDuplicati: TAstaClientDataSet;
    ControlloDuplicatiPKASSISTIBILI: TIntegerField;
    ControlloDuplicatiCOM_CODICE: TStringField;
    ControlloDuplicatiCOM_RES: TStringField;
    cxDBTextEdit1: TcxDBLabel;
    dxLayoutControl1Item4: TdxLayoutItem;
    AssistibiliIND_RES: TStringField;
    AssistibiliCOM_RES: TStringField;
    AssistibiliCAP_RES: TStringField;
    dxLayoutTesseraEuropea: TdxLayoutGroup;
    AssistibiliTE_ID_CIT: TStringField;
    AssistibiliTE_COD_IST: TStringField;
    AssistibiliTE_NR_ID: TStringField;
    AssistibiliTE_DATA_SCAD: TDateTimeField;
    AssistibiliTE_QUAL_BEN: TStringField;
    cxDBMaskEdit2: TcxDBMaskEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBMaskEdit3: TcxDBMaskEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item13: TdxLayoutItem;
    LkComuniResTNZ_IDENT: TIntegerField;
    AssistibiliTNZ_IDENT: TIntegerField;
    cxStatoAnagrafica: TcxDBLookupComboBox;
    dxLayoutStatoAnagrafica: TdxLayoutItem;
    AssistibiliTELEF_2: TStringField;
    cxAltroTelefono: TcxDBMaskEdit;
    dxlAltroTelefono: TdxLayoutItem;
    LkStradarioCIRCOSCRIZIONE: TStringField;
    LkStradarioCOD_REG: TStringField;
    LkStradarioCOD_ASL: TStringField;
    LkStradarioNOTE: TStringField;
    AssistibiliCOM_DOM: TStringField;
    AssistibiliCAP_DOM: TStringField;
    AssistibiliIND_DOM: TStringField;
    AssistibiliDES_COMDOM: TStringField;
    dxLayoutDomicilio: TdxLayoutGroup;
    Com_Domicilio: TKScxDBLookupDlg;
    dxLayoutComuneDomicilio: TdxLayoutItem;
    cxIndDom: TcxDBButtonEdit;
    dxLayoutIndDomicilio: TdxLayoutItem;
    cxCapDom: TcxDBMaskEdit;
    dxLayoutCapDomicilio: TdxLayoutItem;
    AnagEsterne: TAstaClientDataSet;
    AnagEsterneIDAUTHORITY: TStringField;
    AnagEsterneCOD_ESTERNO: TStringField;
    AnagEsterneASSISTIBILI_FK: TIntegerField;
    AnagEsterneDATA_OP: TDateTimeField;
    sAnagEsterne: TDataSource;
    cxGridAnagEstDBTableView1: TcxGridDBTableView;
    cxGridAnagEstLevel1: TcxGridLevel;
    cxGridAnagEst: TcxGrid;
    dxLayoutControlAnagEst: TdxLayoutItem;
    dxLayoutControlCognomeNome: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxGridAnagEstDBTableView1IDAUTHORITY: TcxGridDBColumn;
    cxGridAnagEstDBTableView1COD_ESTERNO: TcxGridDBColumn;
    cxGridAnagEstDBTableView1ASSISTIBILI_FK: TcxGridDBColumn;
    cxGridAnagEstDBTableView1DATA_OP: TcxGridDBColumn;
    AssistibiliPID: TStringField;
    dxLayoutControlPKASS: TdxLayoutItem;
    cxDBTextEdit2: TcxDBLabel;
    AssistibiliASSISTIBILI_FK: TIntegerField;
    AssistibiliDATA_DECESSO: TDateTimeField;
    dxLayoutDataDecesso: TdxLayoutItem;
    cxDBMaskEdit4: TcxDBMaskEdit;
    dxLayoutControl1Group20: TdxLayoutGroup;
    MedBaseCODICE: TStringField;
    AssistibiliMED_BASE: TStringField;
    AssistibiliOSCURAMENTO: TStringField;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControlOscuramento: TdxLayoutItem;
    cxBtnTessera: TcxButton;
    dxLayoutControlRicCodFisc: TdxLayoutItem;
    aTesseraSanitaria: TAction;
    CercoComuneNasc: TAstaClientDataSet;
    CercoComuneNascCODICE: TStringField;
    CercoComuneNascDESCRIZIONE: TStringField;
    CercoComuneNascSIGLA: TStringField;
    CercoComuneNascCATASTO: TStringField;
    CercoComuneNascNAZ_CODICE: TStringField;
    CercoComuneNascNAZSIGLA: TStringField;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinterAnagrafica: TdxLayoutControlReportLink;
    cxButton1: TcxButton;
    aStampa: TAction;
    Data_nascita: TcxDBDateEdit;
    dxLayoutDataNascita: TdxLayoutItem;
    AssistibiliRIS_ID_AUTH: TStringField;
    AssistibiliNOMEFUSIONE: TStringField;
    cxDBMaskEdit5: TcxDBLabel;
    dxLayoutSchedaAssociata: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group21: TdxLayoutGroup;
    dxLayoutControl1Group22: TdxLayoutGroup;
    cxDBMaskEdit1: TcxDBMaskEdit;
    qOscuramento: TAstaClientDataSet;
    qOscuramentoOSCURAMENTO: TStringField;
    qOscuramentoDESCRIZIONE: TStringField;
    sqOscuramento: TDataSource;
    qQualifica: TAstaClientDataSet;
    qQualificaTE_QUAL_BEN: TStringField;
    qQualificaDESCRIZIONE: TStringField;
    sqQualifica: TDataSource;
    LkSesso: TAstaClientDataSet;
    LkSessoSES_CODICE: TStringField;
    LkSessoDESCRIZIONE: TStringField;
    sLkSesso: TDataSource;
    cxSesso: TcxDBLookupComboBox;
    dxLayoutSesso: TdxLayoutItem;
    LkNazCittMASK_CF: TStringField;
    LkStradarioCODICE: TStringField;
    dxLayoutControl1Group14: TdxLayoutGroup;
    AssistibiliNR_CIVICO_RES: TStringField;
    AssistibiliNR_CIVICO_DOM: TStringField;
    cxNumeroCivico: TcxDBMaskEdit;
    dxlNumeroCivico: TdxLayoutItem;
    dxLayoutRicercaResidenza: TdxLayoutGroup;
    cxDBMaskEdit10: TcxDBMaskEdit;
    dxLayoutCivicoDom: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutWizardResidenza: TdxLayoutGroup;
    dxLayoutWizardNascita: TdxLayoutGroup;
    dxLayoutControlCittadinanza: TdxLayoutGroup;
    dxLayoutRicercaDomicilio: TdxLayoutGroup;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxLayoutWizardDomicilio: TdxLayoutGroup;
    dxLayoutAltriDatiResidenza: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup;
    cxEMail: TcxDBMaskEdit;
    dxLayoutControleMail: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutAutoCreatedGroup;
    CercoComuneNascCAP: TStringField;
    AssistibiliCONT1_NOME: TStringField;
    AssistibiliCONT1_EMAIL: TStringField;
    AssistibiliCONT1_TEL: TStringField;
    AssistibiliCONT2_NOME: TStringField;
    AssistibiliCONT2_EMAIL: TStringField;
    AssistibiliCONT2_TEL: TStringField;
    dxLayoutGroupContatto1: TdxLayoutGroup;
    cxContatto1: TcxDBMaskEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxTelContatto1: TcxDBMaskEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxMailContatto1: TcxDBMaskEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group17: TdxLayoutAutoCreatedGroup;
    dxLayoutGroupContatto2: TdxLayoutGroup;
    dxLayoutControl1Group19: TdxLayoutAutoCreatedGroup;
    cxContatto2: TcxDBMaskEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxTelContatto2: TcxDBMaskEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxMailContatto2: TcxDBMaskEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group18: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    aAnnulla: TAction;
    procedure AssistibiliNewRecord(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure AssistibiliBeforePost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Com_ResidenzaSearch(Sender: TObject; var trovato: Integer;
      var codice: Variant; const cerca: String);
    procedure Comune_NascSearch(Sender: TObject; var trovato: Integer;
      var codice: Variant; const cerca: String);
    procedure Com_ResidenzaCloseDialog(Sender: TObject;
      const Scelto: Boolean);
    procedure LkUslBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure COD_FISCEnter(Sender: TObject);
    procedure CittadinanzaCloseDialog(Sender: TObject;
      const Scelto: Boolean);
    procedure aConfermaExecute(Sender: TObject);
    procedure Data_nascitaPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure ASLAppartienePropertiesCloseUp(Sender: TObject);
    procedure cxMedicoBaseSearch(Sender: TObject; var trovato: Integer;
      var codice: Variant; const cerca: String);
    procedure Comune_NascCloseDialog(Sender: TObject;
      const Scelto: Boolean);
    procedure Comune_NascNotInList(Sender: TObject; LookupTable: TDataSet;
      NewValue: String; var Accept: Boolean; var codice: Variant);
    procedure Com_ResidenzaNotInList(Sender: TObject;
      LookupTable: TDataSet; NewValue: String; var Accept: Boolean;
      var codice: Variant);
    procedure BaseFormDestroy(Sender: TObject);
    procedure CognomePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure NomePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure aConfermaUpdate(Sender: TObject);
    procedure cxIndirizzoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxIndirizzoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure csEZKeys1KeyIntercept(KeyType: TNavigationKey;
      Ctrl: TControl; var Intercept: Boolean);
    procedure Com_DomicilioCloseDialog(Sender: TObject;
      const Scelto: Boolean);
    procedure Com_DomicilioNotInList(Sender: TObject;
      LookupTable: TDataSet; NewValue: String; var Accept: Boolean;
      var codice: Variant);
    procedure Com_DomicilioSearch(Sender: TObject; var trovato: Integer;
      var codice: Variant; const cerca: String);
    procedure cxIndDomKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AnagEsterneBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure AssistibiliBeforeEdit(DataSet: TDataSet);
    procedure aTesseraSanitariaExecute(Sender: TObject);
    procedure aStampaExecute(Sender: TObject);
    procedure cxIndirizzoEnter(Sender: TObject);
    procedure cxIndirizzoExit(Sender: TObject);
    procedure cxIndDomEnter(Sender: TObject);
    procedure cxIndDomExit(Sender: TObject);
    procedure LkSessoBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxDBLookupComboBox3PropertiesEditValueChanged(
      Sender: TObject);
    procedure cxCodiceFiscalePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure qOscuramentoBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qQualificaBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxIndDomPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure aAnnullaExecute(Sender: TObject);
    procedure cxMailContatto1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BaseFormCreate(Sender: TObject);
    procedure AssistibiliNAZRES_CODICEChange(Sender: TField);
    procedure AssistibiliNAZ_CITChange(Sender: TField);
    procedure CittadinanzaExit(Sender: TObject);
  private
    { Private declarations }
    FoldCOGNOME: string;
    FoldNOME: string;
    FoldCOM_CODICE: string;
    FoldDATA_NASCITA: TDateTime;
    FcheckIndRes: Boolean;
    function CalcolaCodice: string;
    function TogliNumeri(const ind: string): string;
    procedure AssegnaMask;
    procedure AssegnaValoreRes;
    procedure AssegnaValoreDom;
    procedure SetCheckIndRes(Value: Boolean);
  protected
    procedure DoCreate; override;
    procedure DoShow; override;
    procedure StartPersonalizza; override;
    procedure StopPersonalizza; override;
    procedure ResetPersonalizza; override;
  public
    { Public declarations }
    CheckNascita: boolean;
    CheckResidenza: boolean;
    function ValidaNascita: boolean;
    function ValidaResidenza: boolean;

    procedure DecodificaCodiceFiscale(const xcf: string); overload;
    procedure DecodificaCodiceFiscale(xrec: TTessera); overload;
    function CercaInStradario(const xcod_com: string; const xIndirizzo: string): Integer; overload;
    function CercaInStradario(const xcod_com: string; const xIndirizzo: string; var xIndTrovato,xCapTrovato: string): Integer; overload;

    property checkIndRes: Boolean read FcheckIndRes write SetcheckIndRes;
  end;

function ConfermaAnagrafica(pka: integer; statolancio: integer): boolean;

var
  FAnagrafica: TFAnagrafica;


implementation

uses SysUtils, Windows, osFastStrings, MsgDlgs, DMCommon, SendKey, DbConsts, {ComuneEstero,}
     RicComuni, Variants, RicMedici,ksRicMult, RicercaTessera, DateUtils, dxPrnDlg, dxLayoutCustomizeForm,
     dxCore;

{$R *.DFM}

procedure TFAnagrafica.AssistibiliNewRecord(DataSet: TDataSet);
begin

    AssistibiliRIS_ID_AUTH.AsString := FDMCommon.Param_TicketRIS_ID_AUTH.AsString;
    AssistibiliSAN_IDENT.AsInteger := 1;           // anagrafica non convalidata

    AssistibiliNAZRES_CODICE.AsString := FDMCommon.Param_TicketNAZ_LOCALE.AsString;

end;

procedure TFAnagrafica.FormKeyPress(Sender: TObject; var Key: Char);
(*
const
   tabconv: array [1..17, 1..3] of char = (
              ('À', 'A', ''''),
              ('Ä', 'A', 'E'),
              ('È', 'E', ''''),
              ('Ì', 'I', ''''),
              ('Ò', 'O', ''''),
              ('Ö', 'O', 'E'),
              ('Ù', 'U', ''''),
              ('Ü', 'U', 'E'),
              ('ß', 'S', 'S'),
              ('à', 'A', ''''),
              ('ä', 'A', 'E'),
              ('è', 'E', ''''),
              ('ì', 'I', ''''),
              ('ò', 'O', ''''),
              ('ö', 'O', 'E'),
              ('ù', 'U', ''''),
              ('ü', 'U', 'E')
             );

var
   trovato,cnt: integer;
*)
begin
(*
   trovato := -1;
   for cnt := Low(tabconv) to High(tabconv) do
      if tabconv[cnt, 1]=Key then
      begin
         trovato := cnt;
         break;
      end;

   if trovato>0 then
   begin
      Key := tabconv[cnt, 2];
      SendText(tabconv[cnt, 3]);
   end;
*)
end;


function TFAnagrafica.ValidaNascita: boolean;
begin
  result := true;
  if Comune_Nasc.Visible and (AssistibiliCOM_CODICE.IsNull or (AssistibiliCOM_CODICE.AsString='')) then
  begin
     result := false;
  end;

  if Cittadinanza.Visible and (AssistibiliCIT_CODICE.IsNull or (AssistibiliCIT_CODICE.AsString='')) then
  begin
     result := false;
  end;

  if cxCodiceFiscale.Enabled and (AssistibiliCODICE_FISCALE.IsNull or (AssistibiliCODICE_FISCALE.AsString='')) then
  begin
     result := false;
  end;

  if (AssistibiliDATA_NASCITA.AsDateTime>Date()) or (AssistibiliDATA_NASCITA.AsDateTime<EncodeDate(1870, 1, 1)) then
  begin
     result := false;
  end;

  if AssistibiliSES_CODICE.IsNull or not ((AssistibiliSES_CODICE.AsString='M') or (AssistibiliSES_CODICE.AsString='F')) then
  begin
     result := false;
  end;

end;

function TFAnagrafica.ValidaResidenza: boolean;
begin
  result := true;
  if Com_Residenza.Enabled and (AssistibiliCOM_RES.IsNull or (AssistibiliCOM_RES.AsString='')) then
  begin
     result := false;
  end;

  if cxASLAppartiene.Visible and AssistibiliUSL_CODICE_APPARTIENE.IsNull then
  begin
     result := false;
  end;

  if cxIndirizzo.Enabled and (AssistibiliIND_RES.IsNull or (AssistibiliIND_RES.AsString='')) then
  begin
     result := false;
  end;

end;


procedure TFAnagrafica.AssistibiliBeforePost(DataSet: TDataSet);
var
  TestNascita,TestResidenza: boolean;
begin

  while Pos('  ',AssistibiliCOGNOME.AsString)>0 do
       AssistibiliCOGNOME.AsString := BMStringReplace(AssistibiliCOGNOME.AsString,'  ',' ',[rfReplaceAll]);
  while Pos('  ',AssistibiliNOME.AsString)>0 do
       AssistibiliNOME.AsString := BMStringReplace(AssistibiliNOME.AsString,'  ',' ',[rfReplaceAll]);

  AssistibiliCOGNOME.AsString := Trim(AssistibiliCOGNOME.AsString);
  AssistibiliNOME.AsString := Trim(AssistibiliNOME.AsString);

  AssistibiliUSER_ID.AsInteger := gblcodutente;

  if AssistibiliDATA_NASCITA.IsNull or (AssistibiliDATA_NASCITA.AsFloat=0) then
  begin
    AssistibiliDATA_NASCITA.FocusControl;
    MsgDlg(format(SFieldRequired, [AssistibiliDATA_NASCITA.DisplayName]), '', ktError, [kbOk]);
    Abort;
  end;

  if (AssistibiliDATA_NASCITA.AsDateTime>Date()) or (AssistibiliDATA_NASCITA.AsDateTime<EncodeDate(1870, 1, 1)) then
  begin
    AssistibiliDATA_NASCITA.FocusControl;
    MsgDlg(RS_DataNonValida, '', ktError, [kbOk]);
    Abort;
  end;

  if cxSesso.Visible and (AssistibiliSES_CODICE.IsNull or not ((AssistibiliSES_CODICE.AsString='M') or (AssistibiliSES_CODICE.AsString='F'))) then
  begin
    cxSesso.SetFocus;
    MsgDlg(RS_SessoObbligatorio, '', ktError, [kbOk]);
    Abort;
  end;

  if cxCodiceFiscale.Enabled then
  begin
     if not AssistibiliCIT_CODICE.IsNull and (AssistibiliCIT_CODICE.AsString=FDMCommon.Param_TicketNAZ_LOCALE.AsString) and
     AssistibiliCODICE_FISCALE.IsNull and (FDMCommon.Param_TicketCALCOLO_CF.AsInteger=1) then
     begin
        AssistibiliCODICE_FISCALE.AsString := CalcolaCodice;
     end
     else if (AssistibiliCIT_CODICE.AsString<>FDMCommon.Param_TicketNAZ_LOCALE.AsString) and
             (AssistibiliCODICE_FISCALE.IsNull or (AssistibiliCODICE_FISCALE.AsString='')) then
     begin
//        AssistibiliCODICE_FISCALE.AsString := '9999999999999999';
     end;
  end;

  if (AssistibiliSAN_IDENT.AsInteger=3) and (AssistibiliPKASSISTIBILI.AsInteger=0) then
  begin
    MsgDlg(RS_NoCancSconosciuto, '', ktError, [kbOk]);
    Abort;
  end;

    if (CheckNascita) then
    begin
        TestNascita := false;
        if Comune_Nasc.Visible and (AssistibiliCOM_CODICE.IsNull or (AssistibiliCOM_CODICE.AsString='')) then
        begin
          AssistibiliDES_COMNASC.FocusControl;
          MsgDlg(format(SFieldRequired, [AssistibiliDES_COMNASC.DisplayName]), '', ktError, [kbOk]);
          Abort;
        end;

        if Cittadinanza.Visible and (AssistibiliCIT_CODICE.IsNull or (AssistibiliCIT_CODICE.AsString='')) then
        begin
          AssistibiliNAZ_CIT.FocusControl;
          MsgDlg(format(SFieldRequired, [AssistibiliCIT_CODICE.DisplayName]), '', ktError, [kbOk]);
          Abort;
        end;

        if cxCodiceFiscale.Enabled and (AssistibiliCODICE_FISCALE.IsNull or (AssistibiliCODICE_FISCALE.AsString='')) then
        begin
          AssistibiliCODICE_FISCALE.FocusControl;
          MsgDlg(format(SFieldRequired, [AssistibiliCODICE_FISCALE.DisplayName]), '', ktError, [kbOk]);
          Abort;
        end;

        TestNascita := true;
    end
    else
        TestNascita := True;

    if (CheckResidenza) then
    begin
        TestResidenza := false;
        if Com_Residenza.Enabled and (AssistibiliCOM_RES.IsNull or (AssistibiliCOM_RES.AsString='')) then
        begin
          AssistibiliDES_COMRES.FocusControl;
          MsgDlg(format(SFieldRequired, [AssistibiliCOM_RES.DisplayName]), '', ktError, [kbOk]);
          Abort;
        end;

        if cxASLAppartiene.Visible and ((AssistibiliNAZRES_CODICE.AsString=FDMCommon.Param_TicketNAZ_LOCALE.AsString) and AssistibiliUSL_CODICE_APPARTIENE.IsNull) then
        begin
          AssistibiliUSL_CODICE_APPARTIENE.FocusControl;
          MsgDlg(format(SFieldRequired, [AssistibiliUSL_CODICE_APPARTIENE.DisplayName]), '', ktError, [kbOk]);
          Abort;
        end;

        if cxIndirizzo.Enabled and ((AssistibiliNAZRES_CODICE.AsString=FDMCommon.Param_TicketNAZ_LOCALE.AsString) and (AssistibiliIND_RES.IsNull or (AssistibiliIND_RES.AsString=''))) then
        begin
          cxIndirizzo.SetFocus;
          MsgDlg(format(SFieldRequired, [AssistibiliIND_RES.DisplayName]), '', ktError, [kbOk]);
          Abort;
        end;

        TestResidenza := true;
    end
    else
        TestResidenza := true;

{$IFDEF MEDICORNER}
        if AssistibiliTELEFONO.IsNull and AssistibiliEMAIL.IsNull then
        begin
          if AssistibiliTELEFONO.IsNull then
             cxTelefono.SetFocus
          else
             cxEMail.SetFocus;
          MsgDlg(Format(RAD_TelefonoEmail,[RAD_Paziente]), '', ktError, [kbOk]);
          Abort;
        end;

        if not AssistibiliCONT1_NOME.IsNull and (AssistibiliCONT1_EMAIL.IsNull and AssistibiliCONT1_TEL.IsNull) then
        begin
          if AssistibiliCONT1_TEL.IsNull then
             cxMailContatto1.SetFocus
          else
             cxTelContatto1.SetFocus;
          MsgDlg(Format(RAD_TelefonoEmail,[RAD_Contatto]), '', ktError, [kbOk]);
          Abort;
        end;

        if not AssistibiliCONT2_NOME.IsNull and (AssistibiliCONT2_EMAIL.IsNull and AssistibiliCONT2_TEL.IsNull) then
        begin
          if AssistibiliCONT2_TEL.IsNull then
             cxMailContatto2.SetFocus
          else
             cxTelContatto2.SetFocus;
          MsgDlg(Format(RAD_TelefonoEmail,[RAD_Contatto]), '', ktError, [kbOk]);
          Abort;
        end;
{$ENDIF}

    if (TestNascita and TestResidenza) then
       AssistibiliSAN_IDENT.AsInteger := 2
    else if (CheckNascita and not TestNascita) or (CheckResidenza and not TestResidenza) then
       AssistibiliSAN_IDENT.AsInteger := 1;


  if (AssistibiliSAN_IDENT.AsInteger<>3) and not AssistibiliASSISTIBILI_FK.IsNull then
     AssistibiliASSISTIBILI_FK.Clear;

    if (Assistibili.State=dsInsert) or
       (AssistibiliCOGNOME.AsString<>FoldCOGNOME) or
       (AssistibiliNOME.AsString<>FoldNOME) or
       ((not AssistibiliCOM_CODICE.IsNull and (FoldCOM_CODICE='')) or (AssistibiliCOM_CODICE.AsString<>FoldCOM_CODICE)) or
       (AssistibiliDATA_NASCITA.AsDateTime<>FoldDATA_NASCITA) then
    begin

        ControlloDuplicati.Parambyname('cognome').AsString := AssistibiliCOGNOME.AsString;
        ControlloDuplicati.Parambyname('nome').AsString := AssistibiliNOME.AsString;
        if AssistibiliCOM_CODICE.IsNull then
           ControlloDuplicati.Parambyname('com_codice').Clear
        else
           ControlloDuplicati.Parambyname('com_codice').AsString := AssistibiliCOM_CODICE.AsString;
        ControlloDuplicati.Parambyname('data_nascita').AsDateTime := AssistibiliDATA_NASCITA.AsDateTime;
        if (Assistibili.State=dsInsert) then
           ControlloDuplicati.Parambyname('pkassistibili').Clear
        else
           ControlloDuplicati.Parambyname('pkassistibili').AsInteger := AssistibiliPKASSISTIBILI.AsInteger;
        ControlloDuplicati.syRefresh;

        if not ControlloDuplicati.IsEmpty then
        begin
           if not (Assistibili.State=dsInsert) then
           begin
              MsgDlg(RIS_AnagGiaCaricataNoSelez, '', ktError, [kbOk]);
              Abort;
           end
           else if MsgDlg(RIS_AnagGiaCaricataSelez, '', ktInformation, [kbYes,kbNo])=mrNo then
              Abort
           else begin
              Assistibili.Cancel;
              Assistibili.Parambyname('pkassistibili').AsInteger := ControlloDuplicatiPKASSISTIBILI.AsInteger;
              Assistibili.syRefresh;
              Assistibili.Edit;
              Abort;
           end;
        end;

    end;

end;

procedure TFAnagrafica.DoShow;
begin
  inherited;
  LkSesso.Open;
  LkUsl.Open;
  if dxLayoutControlAnagEst.Visible then
     AnagEsterne.open;
  qOscuramento.Open;
  qQualifica.Open;

  if not (Assistibili.State=dsInsert) then
  begin
    if AssistibiliSAN_IDENT.AsInteger=4 then
    begin
     dxLayoutControlCognomeNome.Enabled := false;
     dxLayoutDatiNascita.Enabled := false;
     dxLayoutResidenza.Enabled := false;
     dxLayoutDomicilio.Enabled := false;
     dxLayoutTesseraEuropea.Enabled := false;
    end
    else begin
      dxLayoutTesseraEuropea.Enabled := (AssistibiliTNZ_IDENT.AsInteger=1);
//      checkIndRes := (AssistibiliNAZRES_CODICE.AsString=FDMCommon.Param_TicketNAZ_LOCALE.AsString);
      AssegnaMask;
    end;
  end;

  dxLayoutCognome.Enabled := (AssistibiliPKASSISTIBILI.AsInteger>0);
  dxLayoutNome.Enabled := (AssistibiliPKASSISTIBILI.AsInteger>0);

  Data_nascita.Properties.MaxDate := Date();
  Data_nascita.Properties.MinDate := IncYear(Date(),-120);

  cxDBDateEdit1.Properties.MinDate := IncDay(Date(),-30);

  dxLayoutControlAnagEst.Visible := gblSuperUser or gblUserIsAdmin;
  dxLayoutControlPKASS.Visible := gblSuperUser;
  dxLayoutSchedaAssociata.Enabled := not (Assistibili.State=dsInsert) and not AssistibiliASSISTIBILI_FK.IsNull;
  dxlAltroTelefono.Enabled := dxlAltroTelefono.Enabled and not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);

end;

procedure TFAnagrafica.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Assistibili.Cancel;
end;

procedure TFAnagrafica.Com_ResidenzaSearch(Sender: TObject;
  var trovato: Integer; var codice: Variant; const cerca: String);
begin

   FRicComuni := TFRicComuni.Create(nil);
   try
//     FRicComuni.QRicerca.Parambyname('NAZ_CODICE',AssistibiliNAZRES_CODICE.AsString);
     FRicComuni.QRicerca.OpenNoFetch;
     if cerca<>'' then
     begin
       FRicComuni.QRicercaDESCRIZIONE.AsString := cerca;
       FRicComuni.AttivaRicerca.Execute;
     end;
     trovato := FRicComuni.ShowModal;
     if trovato=mrOk then
        codice := FRicComuni.QRicercaCODICE.Value;

   finally
     FRicComuni.Free;
   end;

end;

procedure TFAnagrafica.Comune_NascSearch(Sender: TObject;
  var trovato: Integer; var codice: Variant; const cerca: String);
begin

   FRicComuni := TFRicComuni.Create(nil);
   try
     FRicComuni.QRicerca.Active := false;
     FRicComuni.QRicerca.QBEMode := true;
     FRicComuni.QRicerca.Active := true;
     if cerca<>'' then
     begin
       FRicComuni.QRicercaDESCRIZIONE.AsString := cerca;
       FRicComuni.AttivaRicerca.Execute;
     end;
     trovato := FRicComuni.ShowModal;
     if trovato=mrOk then
        codice := FRicComuni.QRicercaCODICE.Value;
   finally
     FRicComuni.Free;
   end;

end;

procedure TFAnagrafica.Com_ResidenzaCloseDialog(Sender: TObject;
  const Scelto: Boolean);
var
  ripunta: boolean;
begin
    if not (Assistibili.State in dsEditModes) then
       Assistibili.Edit;

    AssistibiliCAP_RES.AsString := Com_Residenza.LookupTable.Fieldbyname('CAP').AsString;
    dxLayoutTesseraEuropea.Enabled := (LkComuniResTNZ_IDENT.AsInteger=1);
    if dxlASLAppartenenza.Visible then
    begin
      LkUsl.syRefresh;
      if LkUsl.RecordCount=1 then
      begin
        AssistibiliUSL_CODICE_APPARTIENE.AsString := LkUslCODICE.AsString;
        AssistibiliUSL_REG_CODICE_APPARTIENE.AsString := LkUslREG_CODICE.AsString;
        cxASLAppartiene.Text := LkUslDESCRUSL.AsString;
      end
      else if Assistibili.State=dsInsert then
        cxASLAppartiene.Clear;
    end;

//    checkIndRes := (AssistibiliNAZRES_CODICE.AsString=FDMCommon.Param_TicketNAZ_LOCALE.AsString);
//    if not dxlIndirizzo.Enabled
        SelectNext(Com_Residenza, True, True);

end;

procedure TFAnagrafica.LkUslBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('COM_CODICE').AsString := AssistibiliCOM_RES.AsString;

end;

function TFAnagrafica.CalcolaCodice: string;
const
  mesi: array[1..12] of char = ('A','B','C','D','E','H','L','M','P','R','S','T');
  ContrChar: array[1..36] of char = ('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F','G','H','I','J','K',
  'L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
  ContrPari: array[1..36] of integer = (0,1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25);
  ContrDisp: array[1..36] of integer = (1,0,5,7,9,13,15,17,19,21,1,0,5,7,9,13,15,17,19,21,2,4,18,20,11,3,6,8,12,14,16,10,22,25,24,23);
var
  aa,mm,gg: word;
  anno: string;
  numero,q,quoz,code1,code2,l,z: integer;

  function PreparaCognome(const valore: string): string;
  var
     buffer: string;
     k: integer;
  begin
    buffer := valore;
    result := '';
    k:=1;
    while (k<=Length(buffer)) and (Length(result)<3) do
    begin
       if not (buffer[k] in ['A','E','I','O','U',' ',#39]) then
          result := result + buffer[k];
       inc(k);
    end;
    k:=1;
    while (k<=Length(buffer)) and (Length(result)<3) do
    begin
       if (buffer[k] in ['A','E','I','O','U']) then
          result := result + buffer[k];
       inc(k);
    end;
    for k:=Length(result)+1 to 3 do
        result := result + 'X';
  end;

  function PreparaNome(const valore: string): string;
  var
     buffer: string;
     v,k: integer;
     totcons: integer;
  begin
    buffer := valore;
    result := '';
    totcons:=0;
    for k:=1 to Length(buffer) do
       if not (buffer[k] in ['A','E','I','O','U',' ',#39]) then
          inc(totcons);
    v:=0;
    k:=1;
    while (k<=Length(buffer)) and (Length(result)<3) do
    begin
       if not (buffer[k] in ['A','E','I','O','U',' ',#39]) then
       begin
          if (totcons<=3) or (v<>1) then
              result := result + buffer[k];
          inc(v);
       end;
       inc(k);
    end;
    k:=1;
    while (k<=Length(buffer)) and (Length(result)<3) do
    begin
       if (buffer[k] in ['A','E','I','O','U']) then
          result := result + buffer[k];
       inc(k);
    end;
    for k:=Length(result)+1 to 3 do
        result := result + 'X';
  end;

begin

  if (AssistibiliCOM_CODICE.AsString='999999') or (AssistibiliCOM_CODICE.AsString='999998') then
  begin
     exit;
  end
  else if (Copy(AssistibiliCOM_CODICE.AsString,1,3)='STP') then
  begin
     result := 'STP9999999999999';
     exit;
  end
  else if (AssistibiliCATASTO.AsString='') then
  begin
     exit;
  end;

  result := PreparaCognome(AssistibiliCOGNOME.AsString);
  result := result + PreparaNome(AssistibiliNOME.AsString);
  DecodeDate(AssistibiliDATA_NASCITA.AsDateTime,aa,mm,gg);
  anno := IntToStr(aa);
  result := result + Copy(anno,3,2);
  result := result + Mesi[mm];

  if AssistibiliSES_CODICE.AsString='F' then
     result := result + IntToStr(gg+40)
  else if gg<10 then
     result := result + '0' + IntToStr(gg)
  else
     result := result + IntToStr(gg);
     result := result + AssistibiliCATASTO.AsString;
  l:=2;
  code1 := 0;
  while l<=14 do
  begin
     for z:=1 to 36 do
        if result[l]=ContrChar[z] then
        begin
          code1 := code1 + ContrPari[z];
          break;
        end;
     l := l+2;
  end;
  l:=1;
  code2 := 0;
  while l<=15 do
  begin
     for z:=1 to 36 do
        if result[l]=ContrChar[z] then
        begin
          code2 := code2 + ContrDisp[z];
          break;
        end;
     l := l+2;
  end;
  numero := code1 + code2;
  q := numero div 26;
  quoz := numero - ( q * 26 );
  result := result + CHR( 65 + quoz );

end;

procedure TFAnagrafica.COD_FISCEnter(Sender: TObject);
begin
  inherited;
  if (AssistibiliCODICE_FISCALE.AsString='') and
     (AssistibiliCOM_CODICE.AsString<>'') and
     (not AssistibiliSES_CODICE.IsNull) and
     (not AssistibiliDATA_NASCITA.IsNull) and
     (FDMCommon.Param_TicketCALCOLO_CF.AsInteger=1) then
  begin
     if not (Assistibili.State in dsEditModes) then
        Assistibili.Edit;
     AssistibiliCODICE_FISCALE.AsString := CalcolaCodice;
  end;
//  dxLayoutCodFiscale.Enabled := (AssistibiliCIT_CODICE.AsString='100');
end;

procedure TFAnagrafica.AssegnaMask;
begin

   cxCodiceFiscale.Properties.EditMask := LkNazCittMASK_CF.AsString;

end;

procedure TFAnagrafica.CittadinanzaCloseDialog(Sender: TObject;
  const Scelto: Boolean);
begin
  inherited;

   if not (Assistibili.State in dsEditModes) then
      Assistibili.Edit;

   if scelto then
   begin
     AssegnaMask;
     if (FDMCommon.Param_TicketCALCOLO_CF.AsInteger=1) then
        AssistibiliCODICE_FISCALE.Clear;

   end;

end;

procedure TFAnagrafica.SetCheckIndRes(Value: Boolean);
begin
    FcheckIndRes := Value;

//    dxLayoutComuneResidenza.Enabled := checkIndRes;
    dxlIndirizzo.Enabled := checkIndRes;
    dxlNumeroCivico.Enabled := checkIndRes;
    dxlCAP.Enabled := checkIndRes;
    dxlASLAppartenenza.Enabled := checkIndRes;
//    dxlTelefono.Enabled := checkIndRes;
//    dxlAltroTelefono.Enabled := checkIndRes;
    dxlMedicoBase.Enabled := checkIndRes;

    if not checkIndRes then
    begin
      cxIndirizzo.Clear;
      cxNumeroCivico.Clear;
      cxCapRes.Clear;
      cxASLAppartiene.Clear;
//      cxTelefono.Clear;
//      cxAltroTelefono.Clear;
      cxMedicoBase.Clear;
    end;

end;

procedure TFAnagrafica.aConfermaExecute(Sender: TObject);
begin
  inherited;
  if (Assistibili.State in dsEditModes) then
     Assistibili.Post;

  ModalResult := mrOk;

end;

procedure TFAnagrafica.Data_nascitaPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;

  if not VarIsNull(DisplayValue) and not (DisplayValue='') then
  begin
     try
        Error := (StrToDate(DisplayValue)>Date);
     except
        Error := TRUE;
     end;
     if Error then
        ErrorText := RS_DataNonValida;
  end;

  if (Assistibili.State in dsEditModes) and (FDMCommon.Param_TicketCALCOLO_CF.AsInteger=1) then
     AssistibiliCODICE_FISCALE.Clear;

end;

procedure TFAnagrafica.DoCreate;
begin
  inherited;

  FDMCommon.CaricaLayout(Name,dxLayoutControl1);

  CheckNascita := false;
  CheckResidenza := false;
  cxASLAppartiene.Properties.Grid.DataController.DataModeController.SyncMode := True;
  FDMCommon.edrepCognome.Properties.OnValidate := CognomePropertiesValidate;
  FDMCommon.edrepNome.Properties.OnValidate := NomePropertiesValidate;
  FDMCommon.edrepData.Properties.OnValidate := Data_nascitaPropertiesValidate;

  if (gblSuperUser or gblUserIsAdmin) and (FDMCommon.LeggiPostoLavoroANAG_SCRITTURA.AsInteger=1) then
  begin
     dxLayoutStatoAnagrafica.Enabled := true;
     dxLayoutDataDecesso.Enabled := true;
  end;

  if FDMCommon.Param_TicketANAG_DOMICILIO.AsInteger=0 then
  begin
     dxLayoutDomicilio.Visible := false;
//     Width := Width - 300;
  end;

  dxLayoutTesseraEuropea.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  dxLayoutLibretto.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  dxlASLAppartenenza.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  dxLayoutDataDecesso.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  dxLayoutControlOscuramento.Visible := (FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger in [3,4,5,6]);
  dxLayoutGroupContatto1.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  dxLayoutGroupContatto2.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  dxLayoutSchedaAssociata.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  dxLayoutDataDecesso.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  
end;

procedure TFAnagrafica.ASLAppartienePropertiesCloseUp(Sender: TObject);
begin
  inherited;

  if not (Assistibili.State in dsEditModes) then
     Assistibili.Edit;

  AssistibiliUSL_REG_CODICE_APPARTIENE.AsString := LkUslREG_CODICE.AsString;

end;

procedure TFAnagrafica.cxMedicoBaseSearch(Sender: TObject;
  var trovato: Integer; var codice: Variant; const cerca: String);
begin
  inherited;
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

end;

procedure TFAnagrafica.Comune_NascCloseDialog(Sender: TObject;
  const Scelto: Boolean);
begin
  inherited;

  if not (Assistibili.State in dsEditModes) then
     Assistibili.Edit;

  if scelto then
  begin
     Cittadinanza.sincronizzaDati(LkComuniNascNAZ_CODICE.AsString);
     if (Assistibili.State in dsEditModes) and (FDMCommon.Param_TicketCALCOLO_CF.AsInteger=1) then
        AssistibiliCODICE_FISCALE.Clear;
  end
  else begin
     Cittadinanza.AggiornaFields(true);
     AssistibiliNAZ_CIT.Clear;
     if (FDMCommon.Param_TicketCALCOLO_CF.AsInteger=1) then
        AssistibiliCODICE_FISCALE.Clear;
  end;

end;

procedure TFAnagrafica.Comune_NascNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean;
  var codice: Variant);
begin
  inherited;

   FRicComuni := TFRicComuni.Create(nil);
   try
     FRicComuni.QRicerca.OpenNoFetch;
     if NewValue<>'' then
     begin
       FRicComuni.QRicercaDESCRIZIONE.AsString := NewValue;
       FRicComuni.AttivaRicerca.Execute;
     end;
     Accept := (FRicComuni.ShowModal=mrOk);
     if Accept then
        codice := FRicComuni.QRicercaCODICE.Value;
   finally
     FRicComuni.Free;
     FRicComuni := nil;
   end;

end;

procedure TFAnagrafica.Com_ResidenzaNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean;
  var codice: Variant);
begin
  inherited;

   FRicComuni := TFRicComuni.Create(nil);
   try
     FRicComuni.QRicerca.OpenNoFetch;
     if NewValue<>'' then
     begin
       FRicComuni.QRicercaDESCRIZIONE.AsString := NewValue;
       FRicComuni.AttivaRicerca.Execute;
     end;
     Accept := (FRicComuni.ShowModal=mrOk);
     if Accept then
        codice := FRicComuni.QRicercaCODICE.Value;
   finally
     FRicComuni.Free;
     FRicComuni := nil;
   end;

end;

procedure TFAnagrafica.BaseFormDestroy(Sender: TObject);
begin
  inherited;

  FDMCommon.edrepCognome.Properties.OnValidate := nil;
  FDMCommon.edrepNome.Properties.OnValidate := nil;
  FDMCommon.edrepData.Properties.OnValidate := nil;

end;

procedure TFAnagrafica.CognomePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  cogn: string;
begin
  inherited;
  cogn := VarAsType(DisplayValue,varString);
  if (Length(cogn)>0) and (Length(cogn)<2) then
  begin
     Error := TRUE;
     ErrorText := format(RS_Almeno2CaratteriAnag,[dxLayoutCognome.Caption]);
  end
  else if (Assistibili.State in dsEditModes) and (FDMCommon.Param_TicketCALCOLO_CF.AsInteger=1) then
     AssistibiliCODICE_FISCALE.Clear;
end;

procedure TFAnagrafica.NomePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if (Assistibili.State in dsEditModes) and (FDMCommon.Param_TicketCALCOLO_CF.AsInteger=1) then
     AssistibiliCODICE_FISCALE.Clear;
end;

procedure TFAnagrafica.aConfermaUpdate(Sender: TObject);
begin
  inherited;
  aConferma.Enabled := (FDMCommon.LeggiPostoLavoroANAG_SCRITTURA.AsInteger=1);
end;

procedure TFAnagrafica.AssegnaValoreRes;
begin
  if not LkStradario.IsEmpty then
  begin
    if not LkStradarioCAP.IsNull then
       AssistibiliCAP_RES.AsString := LkStradarioCAP.AsString;
    if Length(LkStradarioINDIRIZZO.AsString)>Length(AssistibiliIND_RES.AsString) then
       AssistibiliIND_RES.AsString := LkStradarioINDIRIZZO.AsString;
    if not LkStradarioCOD_REG.IsNull then
    begin
       if LkUsl.Locate('REG_CODICE;CODICE',VarArrayOf([LkStradarioCOD_REG.AsString,LkStradarioCOD_ASL.AsString]),[]) then
       begin
          AssistibiliUSL_REG_CODICE_APPARTIENE.AsString := LkUslREG_CODICE.AsString;
          AssistibiliUSL_CODICE_APPARTIENE.AsString := LkUslCODICE.AsString;
       end;
    end;
  end;
  if cxCapRes.Text='' then
     cxCapRes.SetFocus
  else if cxASLAppartiene.Text='' then
     cxASLAppartiene.SetFocus
  else
     cxTelefono.SetFocus;
end;

function TFAnagrafica.CercaInStradario(const xcod_com: string; const xIndirizzo: string): Integer;
var
  xIndTrovato: string;
  xCapTrovato: string;
begin
  Result := CercaInStradario(xcod_com, xIndirizzo, xIndTrovato, xCapTrovato);
end;


function TFAnagrafica.CercaInStradario(const xcod_com: string; const xIndirizzo: string; var xIndTrovato,xCapTrovato: string): Integer;
var
  x: integer;
begin
  inherited;

  Result := mrCancel;

   if not (Assistibili.State in dsEditModes) then
      Assistibili.Edit;

   LkStradarioCOD_REG.Visible := cxASLAppartiene.Visible;
   LkStradarioCOD_ASL.Visible := cxASLAppartiene.Visible;

   LkStradario.Parambyname('COD_COM').AsString := xcod_com;
(*
   if xIndirizzo<>'' then
      LkStradario.ParamByName('indirizzo').AsString := xIndirizzo  // TogliNumeri(xIndirizzo)
   else
      LkStradario.ParamByName('indirizzo').Clear;
*)
   LkStradario.syRefresh;

   if LkStradario.recordcount=0 then
   begin
//      MsgDlg(RS_Gene_Msg_NoDt, '', ktInformation, [kbOk], dfFirst);
   end
   else
   begin
       FksRicMult := TFksRicMult.Create(nil);
       try
          FksRicMult.sDatasource.Dataset := LkStradario;
          FksRicMult.cxGridSelezione.DataController.KeyFieldNames := 'CODICE';

          for x:=0 to LkStradario.FieldCount-1 do
            with FksRicMult.cxGridSelezione.CreateColumn do
            begin
                Name := 'GridSelezione'+LkStradario.Fields[x].FieldName;
                DataBinding.FieldName := LkStradario.Fields[x].FieldName;
                Caption := LkStradario.Fields[x].DisplayLabel;
                Visible := (LkStradario.Fields[x].Visible);
            end;

            for x:=0 to LkStradario.FieldCount-1 do
                if FksRicMult.cxGridSelezione.Columns[x].Visible then
                begin
                    FksRicMult.cxGridSelezione.Columns[x].SortOrder := soAscending;
                    break;
                end;

            FksRicMult.cxGridSelezione.ApplyBestFit;
            if xIndirizzo<>'' then
               LkStradario.Locate('INDIRIZZO',xIndirizzo,[])
            else
               FksRicMult.cxGridSelezione.Controller.GoToFirst;

            Result := FksRicMult.ShowModal;

       finally
          FksRicMult.Free;
       end;
   end;

   if Result=mrOk then
   begin
      xIndTrovato := LkStradarioINDIRIZZO.AsString;
      xCapTrovato := LkStradarioCAP.AsString;
   end;

end;

function TFAnagrafica.TogliNumeri(const ind: string): string;
const
  togli: array[1..13] of char = ('0','1','2','3','4','5','6','7','8','9','/','.','-');
var
  i: integer;
begin
  result := ind;
  for i:=1 to 13 do
  begin
      result := StringReplace(result,togli[i],'',[rfReplaceAll]);
  end;
  result := Trim(result)+'%';
end;

procedure TFAnagrafica.cxIndirizzoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
//  VK_F9: CercoCodice;
  VK_RETURN,VK_TAB,VK_F10: begin
                             if CercaInStradario(AssistibiliCOM_RES.AsString,cxIndirizzo.Text)=mrOk then
                                AssegnaValoreRes;
//                             Key := #0;
                           end;
  end;

end;

procedure TFAnagrafica.cxIndirizzoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if CercaInStradario(AssistibiliCOM_RES.AsString,cxIndirizzo.Text)=mrOk then
     AssegnaValoreRes;
end;

procedure TFAnagrafica.csEZKeys1KeyIntercept(KeyType: TNavigationKey;
  Ctrl: TControl; var Intercept: Boolean);
begin
  inherited;
  Intercept := Intercept and Assigned(Ctrl)
               and not ((Ctrl.Owner is TcxDBButtonEdit) and ((TcxDBButtonEdit(Ctrl.Owner).Name='cxIndirizzo') or (TcxDBButtonEdit(Ctrl.Owner).Name='cxIndDom')));
end;

procedure TFAnagrafica.Com_DomicilioCloseDialog(Sender: TObject;
  const Scelto: Boolean);
begin
//    AssistibiliCAP_DOM.AsString := Com_Domicilio.LookupTable.Fieldbyname('CAP').AsString;
end;

procedure TFAnagrafica.Com_DomicilioNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean;
  var codice: Variant);
begin
  inherited;

   FRicComuni := TFRicComuni.Create(nil);
   try
     FRicComuni.QRicerca.OpenNoFetch;
     if NewValue<>'' then
     begin
       FRicComuni.QRicercaDESCRIZIONE.AsString := NewValue;
       FRicComuni.AttivaRicerca.Execute;
     end;
     Accept := (FRicComuni.ShowModal=mrOk);
     if Accept then
        codice := FRicComuni.QRicercaCODICE.Value;
   finally
     FRicComuni.Free;
     FRicComuni := nil;
   end;

end;

procedure TFAnagrafica.Com_DomicilioSearch(Sender: TObject;
  var trovato: Integer; var codice: Variant; const cerca: String);
begin
  inherited;

   FRicComuni := TFRicComuni.Create(nil);
   try
//     FRicComuni.QRicerca.Parambyname('NAZ_CODICE',AssistibiliNAZRES_CODICE.AsString);
     FRicComuni.QRicerca.OpenNoFetch;
     if cerca<>'' then
     begin
       FRicComuni.QRicercaDESCRIZIONE.AsString := cerca;
       FRicComuni.AttivaRicerca.Execute;
     end;
     trovato := FRicComuni.ShowModal;
     if trovato=mrOk then
        codice := FRicComuni.QRicercaCODICE.Value;

   finally
     FRicComuni.Free;
   end;

end;

procedure TFAnagrafica.AssegnaValoreDom;
begin
  if not LkStradario.IsEmpty then
  begin
    AssistibiliCAP_DOM.AsString := LkStradarioCAP.AsString;
    if Length(LkStradarioINDIRIZZO.AsString)>Length(AssistibiliIND_DOM.AsString) then
       AssistibiliIND_DOM.AsString := LkStradarioINDIRIZZO.AsString;
  end;
  if cxCapDom.Text='' then
     cxCapDom.SetFocus;
end;


procedure TFAnagrafica.cxIndDomKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
//  VK_F9: CercoCodice;
  VK_RETURN,VK_TAB,VK_F10: begin
                             if CercaInStradario(AssistibiliCOM_DOM.AsString,cxIndDom.Text)=mrOk then
                                AssegnaValoreDom;
                           end;
  end;

end;

procedure TFAnagrafica.AnagEsterneBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  if AssistibiliPKASSISTIBILI.IsNull then
     sender.ParamByName('assistibili_fk').Clear
  else
     sender.ParamByName('assistibili_fk').AsInteger := AssistibiliPKASSISTIBILI.AsInteger;
end;

procedure TFAnagrafica.AssistibiliBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if (FDMCommon.LeggiPostoLavoroANAG_SCRITTURA.AsInteger=0) or
     ((AssistibiliPKASSISTIBILI.AsInteger=0) and not gblSuperUser) then
       Abort;

  FoldCOGNOME := AssistibiliCOGNOME.AsString;
  FoldNOME := AssistibiliNOME.AsString;
  FoldCOM_CODICE := AssistibiliCOM_CODICE.AsString;
  FoldDATA_NASCITA := AssistibiliDATA_NASCITA.AsDateTime;
end;

function ConfermaAnagrafica(pka: integer; statolancio: integer): boolean;
begin

    if (FDMCommon.LeggiPostoLavoroANAG_SCRITTURA.AsInteger=0) then
    begin
       result := true;
    end
    else begin

        FAnagrafica := TFAnagrafica.Create(nil);
        try
           FAnagrafica.Assistibili.Parambyname('pkassistibili').AsInteger := pka;
           FAnagrafica.Assistibili.open;
    //       FAnagrafica.Assistibili.Edit;

           case StatoLancio of
           -1:
           begin
             FAnagrafica.CheckNascita := false;
             FAnagrafica.CheckResidenza := false;
           end;
           0:    // -- Prenotazione esterni e richieste reparti
           begin
             FAnagrafica.CheckNascita := (FDMCommon.LeggiPostoLavoroCHECK_NASCITA.AsInteger=1);
             FAnagrafica.CheckResidenza := (FDMCommon.LeggiPostoLavoroCHECK_RESIDENZA.AsInteger=1);
           end;
           1:    // -- Accettazione esterni
           begin
             FAnagrafica.CheckNascita := (FDMCommon.LeggiPostoLavoroCHECK_NASCITA_ACC.AsInteger=1);
             FAnagrafica.CheckResidenza := (FDMCommon.LeggiPostoLavoroCHECK_RESIDENZA_ACC.AsInteger=1);
           end;
           2:    // -- Esecuzione esterni
           begin
             FAnagrafica.CheckNascita := (FDMCommon.LeggiPostoLavoroCHECK_NASCITA_ESEC.AsInteger=1);
             FAnagrafica.CheckResidenza := (FDMCommon.LeggiPostoLavoroCHECK_RESIDENZA_ESEC.AsInteger=1);
           end;
           10:   // -- Prenotazione interni
           begin
             FAnagrafica.CheckNascita := (FDMCommon.LeggiPostoLavoroCHECK_I_NASCITA.AsInteger=1);
             FAnagrafica.CheckResidenza := (FDMCommon.LeggiPostoLavoroCHECK_I_RESIDENZA.AsInteger=1);
           end;
           11:   // -- Accettazione interni
           begin
             FAnagrafica.CheckNascita := (FDMCommon.LeggiPostoLavoroCHECK_I_NASCITA_ACC.AsInteger=1);
             FAnagrafica.CheckResidenza := (FDMCommon.LeggiPostoLavoroCHECK_I_RESIDENZA_ACC.AsInteger=1);
           end;
           12:   // -- Esecuzione interni
           begin
             FAnagrafica.CheckNascita := (FDMCommon.LeggiPostoLavoroCHECK_I_NASCITA_ESEC.AsInteger=1);
             FAnagrafica.CheckResidenza := (FDMCommon.LeggiPostoLavoroCHECK_I_RESIDENZA_ESEC.AsInteger=1);
           end;
           else begin
             FAnagrafica.CheckNascita := false;
             FAnagrafica.CheckResidenza := false;
           end;
           end;

           if (FAnagrafica.AssistibiliSAN_IDENT.AsInteger=1) and
              ((FAnagrafica.CheckNascita and not FAnagrafica.ValidaNascita) or
               (FAnagrafica.CheckResidenza and not FAnagrafica.ValidaResidenza)) then
           begin
              if (MsgDlg(RIS_ValidaAnagrafica, '', ktInformation, [kbYes,kbNo])=mrYes) then
              begin
                FAnagrafica.Assistibili.Edit;   // -- edit indispensabile per attivare i controlli lanciati dal before post
                result := (FAnagrafica.ShowModal=mrOk);
              end
              else
                result := false;              
           end
           else
              result := true;

        finally
           FAnagrafica.Free;
           FAnagrafica := nil;
        end;

    end;

end;

procedure TFAnagrafica.aTesseraSanitariaExecute(Sender: TObject);
begin
  inherited;
  FRicercaTessera := TFRicercaTessera.Create(nil);
  try
     if FRicercaTessera.ShowModal=mrOk then
     begin
        if not (Assistibili.State in dsEditModes) then
           Assistibili.Edit;
        DecodificaCodiceFiscale(FRicercaTessera.cxCodFisc.Text);
     end;
  finally
     FRicercaTessera.Free;
  end;

end;

procedure TFAnagrafica.DecodificaCodiceFiscale(xrec: TTessera);
begin
    if (xrec.CodiceFiscale='') then
       Exit;

    DecodificaCodiceFiscale(xrec.CodiceFiscale);
    // -- decodifica residenza
    CercoComuneNasc.ParamByName('catasto').AsString := xrec.ComuneResidenza;
    CercoComuneNasc.syRefresh;
    if not CercoComuneNasc.IsEmpty then
    begin
       AssistibiliCOM_RES.AsString := CercoComuneNascCODICE.AsString;
       AssistibiliDES_COMRES.AsString := CercoComuneNascDESCRIZIONE.AsString;
       AssistibiliCAP_RES.AsString := CercoComuneNascCAP.AsString;
       AssistibiliIND_RES.AsString := xrec.IndirizzoResidenza;
       AssistibiliNAZRES_CODICE.AsString := CercoComuneNascNAZ_CODICE.AsString;
    end;

end;

procedure TFAnagrafica.DecodificaCodiceFiscale(const xcf: string);
const
  mesi: array[1..12] of char = ('A','B','C','D','E','H','L','M','P','R','S','T');
var
  temp: string;
  anno: Integer;
  mese: Integer;
  i: Integer;
  giorno: Integer;
begin
  // -- estraggo data di nascita
  temp := Copy(xcf,7,5);
  anno := StrToInt(Copy(temp,1,2));
  if (anno>=0) and (anno<=(YearOf(Date())-2000)) then
     anno := anno + 2000
  else
     anno := anno + 1900;
  giorno := StrToInt(Copy(temp,4,2));
  if giorno>40 then
  begin
     AssistibiliSES_CODICE.AsString := 'F';
     giorno := giorno-40;
  end
  else begin
     AssistibiliSES_CODICE.AsString := 'M';
  end;
  temp := Copy(temp,3,1);
  mese := -1;
  for i:=1 to 12 do
  begin
     if mesi[i]=temp then
     begin
        mese := i;
        Break;
     end;
  end;
  AssistibiliDATA_NASCITA.AsDateTime := EncodeDate(anno, mese, giorno);
  // -- ricerca comune nascita
  temp := Copy(xcf,12,4);
  CercoComuneNasc.ParamByName('catasto').AsString := temp;
  CercoComuneNasc.syRefresh;
  if not CercoComuneNasc.IsEmpty then
  begin
     AssistibiliCOM_CODICE.AsString := CercoComuneNascCODICE.AsString;
     AssistibiliDES_COMNASC.AsString := CercoComuneNascDESCRIZIONE.AsString;
     AssistibiliCATASTO.AsString := CercoComuneNascCATASTO.AsString;
     Cittadinanza.sincronizzaDati(CercoComuneNascNAZ_CODICE.AsString);
  end;
  AssistibiliCODICE_FISCALE.AsString := xcf;

end;

procedure TFAnagrafica.aStampaExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
begin

  if FDMCommon.dxPrintDialog1.Execute then
  begin

     if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
        dxComponentPrinter1.Preview(true,dxComponentPrinterAnagrafica)
     else begin
        AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
        dxComponentPrinter1.Print(false,@AData,dxComponentPrinterAnagrafica);
     end;

  end;

end;

procedure TFAnagrafica.cxIndirizzoEnter(Sender: TObject);
begin
  inherited;
  Catch := True;
end;

procedure TFAnagrafica.cxIndirizzoExit(Sender: TObject);
begin
  inherited;
  Catch := False;
end;

procedure TFAnagrafica.cxIndDomEnter(Sender: TObject);
begin
  inherited;
  Catch := True;
end;

procedure TFAnagrafica.cxIndDomExit(Sender: TObject);
begin
  inherited;
  Catch := False;
end;

procedure TFAnagrafica.LkSessoBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFAnagrafica.cxDBLookupComboBox3PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if (Assistibili.State in dsEditModes) and (FDMCommon.Param_TicketCALCOLO_CF.AsInteger=1) then
     AssistibiliCODICE_FISCALE.Clear;
end;

procedure TFAnagrafica.cxCodiceFiscalePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;

  if (AssistibiliCOM_CODICE.AsString<>'') and
     (not AssistibiliSES_CODICE.IsNull) and
     (not AssistibiliDATA_NASCITA.IsNull) and
     (FDMCommon.Param_TicketCALCOLO_CF.AsInteger=1) then
  begin
     if not (Assistibili.State in dsEditModes) then
        Assistibili.Edit;
     AssistibiliCODICE_FISCALE.AsString := CalcolaCodice;
  end;

end;

procedure TFAnagrafica.qOscuramentoBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFAnagrafica.qQualificaBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFAnagrafica.StartPersonalizza;
begin
  LanciaPersonalizza(dxLayoutControl1,FDMCommon.qFormLayout);
end;

procedure TFAnagrafica.StopPersonalizza;
begin
  FDMCommon.SalvaPersonalizza(Name,dxLayoutControl1,gblcodutente);
end;

procedure TFAnagrafica.ResetPersonalizza;
begin
  if FDMCommon.ResetLayout(Name,dxLayoutControl1) then
     ModalResult := mrCancel;
end;

procedure TFAnagrafica.cxIndDomPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if CercaInStradario(AssistibiliCOM_DOM.AsString,cxIndDom.Text)=mrOk then
     AssegnaValoreDom;
end;

procedure TFAnagrafica.aAnnullaExecute(Sender: TObject);
begin
  inherited;
  if (Assistibili.State in dsEditModes) then
     Assistibili.Cancel;
  ModalResult := mrCancel;
end;

procedure TFAnagrafica.cxMailContatto1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ff: Word;
begin
  inherited;
  if (Key=192) and (ssCtrl in Shift) then
  begin
      ff := StrToWord('@');
      PostKeyEx( TcxCustomInnerTextEdit(sender).Handle, ff, [], False );
      Key := 0;
  end;

end;

procedure TFAnagrafica.BaseFormCreate(Sender: TObject);
begin
  inherited;
  FcheckIndRes := False;
end;

procedure TFAnagrafica.AssistibiliNAZRES_CODICEChange(Sender: TField);
begin
  inherited;
  checkIndRes := (AssistibiliNAZRES_CODICE.AsString=FDMCommon.Param_TicketNAZ_LOCALE.AsString);
end;

procedure TFAnagrafica.AssistibiliNAZ_CITChange(Sender: TField);
begin
  inherited;
  cxCodiceFiscale.Enabled := (AssistibiliCIT_CODICE.AsString=FDMCommon.Param_TicketNAZ_LOCALE.AsString);
  cxBtnTessera.Enabled := cxCodiceFiscale.Enabled;
end;

procedure TFAnagrafica.CittadinanzaExit(Sender: TObject);
begin
  inherited;
  SelectNext(Cittadinanza, True, True);
end;

end.
