unit TabGenerale;

interface

uses
  Forms, {}BaseGrid, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxDBLookupComboBox,
  cxMaskEdit, cxCalendar, cxTextEdit, cxSpinEdit, cxImageComboBox,
  cxButtonEdit, cxColorComboBox, cxBlobEdit, cxMemo, cxContainer, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  rsStorage, rsPropSaver, cxPropertiesStore, Dialogs, AstaUpdateSQL, dxBar,
  dxPSCore, dxPScxCommon, cxDBEditRepository, cxGrid, AstaDrv2,
  AstaClientDataset, dxBarExtItems, cxClasses, Classes, ActnList,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxSplitter, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxPC, Controls, rsXmlData, dxPSdxDBOCLnk,
  dxBarBuiltInMenu, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxSchedulerLnk,
  dxPSdxLCLnk, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter;


type
  TFTabGenerale = class(TFBaseGrid)
    ActionList1: TActionList;
    dxBarManagerRadDiagn: TdxBarManager;
    dxBarManagerRadDiagnBar1: TdxBar;    
    cxPageControl: TcxPageControl;
    cxASL: TcxTabSheet;
    cxGridASLDBTableView: TcxGridDBTableView;
    cxGridASLLevel1: TcxGridLevel;
    cxGridASL: TcxGrid;
    qASL: TAstaClientDataSet;
    sqASL: TDataSource;
    qASLREG_CODICE: TStringField;
    qASLCODICE: TStringField;
    qASLDESCRIZIONE: TStringField;
    qASLDATA_FINE: TDateTimeField;
    qASLINDIRIZZO: TStringField;
    qASLCOM_CODICE: TStringField;
    qASLCAP: TStringField;
    cxGridASLDBTableViewREG_CODICE: TcxGridDBColumn;
    cxGridASLDBTableViewCODICE: TcxGridDBColumn;
    cxGridASLDBTableViewDESCRIZIONE: TcxGridDBColumn;
    cxGridASLDBTableViewDATA_FINE: TcxGridDBColumn;
    cxGridASLDBTableViewINDIRIZZO: TcxGridDBColumn;
    cxGridASLDBTableViewCOM_CODICE: TcxGridDBColumn;
    cxGridASLDBTableViewCAP: TcxGridDBColumn;
    LkComuni: TAstaClientDataSet;
    LkComuniDESCRIZIONE: TStringField;
    LkComuniCODICE: TStringField;
    LkComuniSIGLA: TStringField;
    LkComuniCATASTO: TStringField;
    sLkComuni: TDataSource;
    cxGridViewRepository1: TcxGridViewRepository;
    cxLkComune: TcxGridDBTableView;
    cxLkComuneDESCRIZIONE: TcxGridDBColumn;
    cxLkComuneCODICE: TcxGridDBColumn;
    cxLkComuneSIGLA: TcxGridDBColumn;
    LkRegioni: TAstaClientDataSet;
    LkRegioniCODICE: TStringField;
    LkRegioniDESCRIZIONE: TStringField;
    LkRegioniDATA_FINE: TDateTimeField;
    sLkRegioni: TDataSource;
    cxLkRegioni: TcxGridDBTableView;
    cxLkRegioniCODICE: TcxGridDBColumn;
    cxLkRegioniDESCRIZIONE: TcxGridDBColumn;
    cxLkRegioniDATA_FINE: TcxGridDBColumn;
    dxASL: TdxBarButton;
    cxMedici: TcxTabSheet;
    dxMedici: TdxBarButton;
    cxGridMedici: TcxGridDBTableView;
    cxGMediciLevel1: TcxGridLevel;
    cxGMedici: TcxGrid;
    qTipoAttivita: TAstaClientDataSet;
    qTipoAttivitaTIPO_ATTIVITA: TStringField;
    qTipoAttivitaDESCRIZIONE: TStringField;
    qTipoAttivitaATTIVO: TIntegerField;
    qTipoAttivitaPROVENIENZA: TStringField;
    sqTipoAttivita: TDataSource;
    qEsenzioni: TAstaClientDataSet;
    sqEsenzioni: TDataSource;
    cxEsenzioni: TcxTabSheet;
    GridEsenzioni: TcxGrid;
    cxGridEsenzioni: TcxGridDBTableView;
    GridEsenzioniLevel1: TcxGridLevel;
    cxGridEsenzioniIDENT: TcxGridDBColumn;
    cxGridEsenzioniTET_IDENT: TcxGridDBColumn;
    cxGridEsenzioniDESCRIZIONE: TcxGridDBColumn;
    cxGridEsenzioniDATA_INIZIO: TcxGridDBColumn;
    cxGridEsenzioniDATA_FINE: TcxGridDBColumn;
    qEsenzioniTET_IDENT: TIntegerField;
    qEsenzioniDESCRIZIONE: TStringField;
    qEsenzioniDATA_INIZIO: TDateTimeField;
    qEsenzioniDATA_FINE: TDateTimeField;
    qEsenzioniESENTE_QUOTA_FISSA: TIntegerField;
    qEsenzioniETA_MINIMA: TIntegerField;
    qEsenzioniETA_MASSIMA: TIntegerField;
    qEsenzioniPERCENTUALE_INVALIDITA: TIntegerField;
    qEsenzioniGENERALE: TIntegerField;
    qEsenzioniCOND_DATA_INIZIO: TDateTimeField;
    qEsenzioniCON_PRESTAZIONI: TIntegerField;
    LkTipoEsenzione: TAstaClientDataSet;
    LkTipoEsenzioneIDENT: TIntegerField;
    LkTipoEsenzioneDESCRIZIONE: TStringField;
    sLkTipoEsenzione: TDataSource;
    dxEsenzioni: TdxBarButton;
    cxOspedali: TcxTabSheet;
    qOspedali: TAstaClientDataSet;
    qOspedaliCODICE: TStringField;
    qOspedaliDESCRIZIONE: TStringField;
    qOspedaliDATA_INIZIO: TDateTimeField;
    qOspedaliDATA_FINE: TDateTimeField;
    qOspedaliCOM_CODICE: TStringField;
    qOspedaliUSL_CODICE: TStringField;
    qOspedaliINDIRIZZO: TStringField;
    qOspedaliUSL_REG_CODICE: TStringField;
    qOspedaliDESC_COMUNE: TStringField;
    qOspedaliCAP: TStringField;
    qOspedaliDESCRUSL: TStringField;
    qOspedaliTIPO_FATTURA: TIntegerField;
    sqOspedali: TDataSource;
    GridOspedali: TcxGrid;
    cxGridOspedali: TcxGridDBTableView;
    GridOspedaliLevel1: TcxGridLevel;
    cxGridOspedaliCODICE: TcxGridDBColumn;
    cxGridOspedaliDESCRIZIONE: TcxGridDBColumn;
    cxGridOspedaliDATA_INIZIO: TcxGridDBColumn;
    cxGridOspedaliDATA_FINE: TcxGridDBColumn;
    cxGridOspedaliINDIRIZZO: TcxGridDBColumn;
    cxGridOspedaliCOM_CODICE: TcxGridDBColumn;
    cxGridOspedaliCAP: TcxGridDBColumn;
    cxGridOspedaliDESCRUSL: TcxGridDBColumn;
    cxGridOspedaliDESCTIPOFATTURA: TcxGridDBColumn;
    NuovoOspedale: TAction;
    dxOspedali: TdxBarButton;
    cxComuni: TcxTabSheet;
    GridComuni: TcxGrid;
    cxGridComuni: TcxGridDBTableView;
    GridComuniLevel1: TcxGridLevel;
    cxGridComuniDESCRIZIONE: TcxGridDBColumn;
    cxGridComuniCODICE: TcxGridDBColumn;
    cxGridComuniSIGLA: TcxGridDBColumn;
    cxGridComuniCATASTO: TcxGridDBColumn;
    LkComuniCOM_TYPE: TStringField;
    LkComuniNAZ_CODICE: TStringField;
    LkComuniDATA_FINE: TDateTimeField;
    LkComuniCAP: TStringField;
    cxGridComuniDATA_FINE: TcxGridDBColumn;
    cxGridComuniCAP: TcxGridDBColumn;
    LkProvincie: TAstaClientDataSet;
    LkProvincieSIGLA: TStringField;
    LkProvincieDESCRIZIONE: TStringField;
    LkProvincieDATA_FINE: TDateTimeField;
    LkProvincieREG_CODICE: TStringField;
    sLkProvincie: TDataSource;
    cxRegioni: TcxTabSheet;
    cxGridRegioni: TcxGridDBTableView;
    RegioniLevel1: TcxGridLevel;
    GridRegioniProv: TcxGrid;
    cxGridRegioniCODICE: TcxGridDBColumn;
    cxGridRegioniDESCRIZIONE: TcxGridDBColumn;
    cxGridRegioniDATA_FINE: TcxGridDBColumn;
    ProvincieLevel1: TcxGridLevel;
    cxGridProvince: TcxGridDBTableView;
    cxGridProvinceSIGLA: TcxGridDBColumn;
    cxGridProvinceDESCRIZIONE: TcxGridDBColumn;
    cxGridProvinceDATA_FINE: TcxGridDBColumn;
    dxComuni: TdxBarButton;
    dxRegioni: TdxBarButton;
    qNazioni: TAstaClientDataSet;
    qNazioniCODICE: TStringField;
    qNazioniDESCRIZIONE: TStringField;
    qNazioniSIGLA: TStringField;
    qNazioniTNZ_IDENT: TIntegerField;
    qNazioniDATA_FINE: TDateTimeField;
    qNazioniCATASTO: TStringField;
    cxNazioni: TcxTabSheet;
    sqNazioni: TDataSource;
    cxGridNazioni: TcxGridDBTableView;
    GridNazioniLevel1: TcxGridLevel;
    GridNazioni: TcxGrid;
    cxGridNazioniCODICE: TcxGridDBColumn;
    cxGridNazioniDESCRIZIONE: TcxGridDBColumn;
    cxGridNazioniSIGLA: TcxGridDBColumn;
    cxGridNazioniTNZ_IDENT: TcxGridDBColumn;
    cxGridNazioniDATA_FINE: TcxGridDBColumn;
    cxGridNazioniCATASTO: TcxGridDBColumn;
    dxNazioni: TdxBarButton;
    qEsenzioniIDENT: TStringField;
    qEsamiEsenzioni: TAstaClientDataSet;
    qEsamiEsenzioniESENZTICK_FK: TStringField;
    qEsamiEsenzioniPRESTSPEC_FK: TStringField;
    qEsamiEsenzioniDESCRIZIONE: TStringField;
    GridEsenzioniLevel2: TcxGridLevel;
    cxGridEsamiEsenti: TcxGridDBTableView;
    sqEsamiEsenzioni: TDataSource;
    cxGridEsamiEsentiPRESTSPEC_FK: TcxGridDBColumn;
    cxGridEsamiEsentiDESCRIZIONE: TcxGridDBColumn;
    cxEditRepository1: TcxEditRepository;
    repRegione: TcxEditRepositoryLookupComboBoxItem;
    repComuni: TcxEditRepositoryLookupComboBoxItem;
    repProvince: TcxEditRepositoryLookupComboBoxItem;
    qOspedaliTIPO_ATTIVITA_FK: TStringField;
    qOspedaliCOD_RIC: TStringField;
    cxGridOspedaliCOD_RIC: TcxGridDBColumn;
    repAttivita: TcxEditRepositoryLookupComboBoxItem;
    cxGridOspedaliTIPO_ATTIVITA_FK: TcxGridDBColumn;
    qMedici: TAstaClientDataSet;
    sqMedici: TDataSource;
    qMediciDATA_INIZIO: TDateTimeField;
    qMediciDATA_FINE: TDateTimeField;
    cxGridMediciCODICE: TcxGridDBColumn;
    cxGridMediciNOMINATIVO: TcxGridDBColumn;
    cxGridMediciDATA_INIZIO: TcxGridDBColumn;
    cxGridMediciDATA_FINE: TcxGridDBColumn;
    ModiOspedale: TAction;
    qMediciNOMINATIVO: TStringField;
    qOspedaliES_TICKET: TStringField;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentEsenzioni: TdxGridReportLink;
    Stampa: TAction;
    dxComponentASL: TdxGridReportLink;
    dxComponentOspedali: TdxGridReportLink;
    dxComponentComuni: TdxGridReportLink;
    dxComponentRegioni: TdxGridReportLink;
    dxComponentNazioni: TdxGridReportLink;
    dxComponentMedici: TdxGridReportLink;
    dxBarButton1: TdxBarButton;
    cxGridComuniNAZ_CODICE: TcxGridDBColumn;
    qOspedaliCOD_HSP11: TStringField;
    cxGridOspedaliCOD_STS11: TcxGridDBColumn;
    cxGridOspedaliCOD_HSP11: TcxGridDBColumn;
    ApriTutto: TAction;
    ChiudiTutto: TAction;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    cxMotivi: TcxTabSheet;
    dxMotivi: TdxBarButton;
    cxGridMotiviDB: TcxGridDBTableView;
    cxGridMotiviLevel1: TcxGridLevel;
    cxGridMotivi: TcxGrid;
    qMotivi: TAstaClientDataSet;
    sqMotivi: TDataSource;
    cxGridMotiviSTATOVISITA: TcxGridDBColumn;
    cxGridMotiviDESCRIZIONE: TcxGridDBColumn;
    qMotiviSTATOVISITA: TIntegerField;
    qMotiviDESCRIZIONE: TStringField;
    qMotiviFLAG_TIPO: TIntegerField;
    qOspedaliLEG_CODICE: TStringField;
    cxGridOspedaliLEG_CODICE: TcxGridDBColumn;
    ModiMedico: TAction;
    NuovoMedico: TAction;
    cxTipoAttivita: TcxTabSheet;
    qTipoAttivitaIMPEGNATIVA: TIntegerField;
    cxDBGridAttivita: TcxGridDBTableView;
    cxGridAttivitaLevel1: TcxGridLevel;
    cxGridAttivita: TcxGrid;
    cxDBGridAttivitaTIPO_ATTIVITA: TcxGridDBColumn;
    cxDBGridAttivitaDESCRIZIONE: TcxGridDBColumn;
    cxDBGridAttivitaATTIVO: TcxGridDBColumn;
    cxDBGridAttivitaPROVENIENZA: TcxGridDBColumn;
    cxDBGridAttivitaIMPEGNATIVA: TcxGridDBColumn;
    dxAttivita: TdxBarButton;
    qTipoAttivitaTIPO_ACCESSO: TStringField;
    cxDBGridAttivitaTIPO_ACCESSO: TcxGridDBColumn;
    cxTipoTrasporto: TcxTabSheet;
    dxTipoTrasporto: TdxBarButton;
    TipoTrasporto: TAstaClientDataSet;
    TipoTrasportoPKTRASPORTO: TIntegerField;
    TipoTrasportoDESCRIZIONE: TStringField;
    TipoTrasportoIMAGEINDEX: TIntegerField;
    sTipoTrasporto: TDataSource;
    cxDBGridTipoTrasporto: TcxGridDBTableView;
    cxGridTipoTrasportoLevel1: TcxGridLevel;
    cxGridTipoTrasporto: TcxGrid;
    cxDBGridTipoTrasportoPKTRASPORTO: TcxGridDBColumn;
    cxDBGridTipoTrasportoDESCRIZIONE: TcxGridDBColumn;
    cxDBGridTipoTrasportoIMAGEINDEX: TcxGridDBColumn;
    dxTipoUrgenza: TdxBarButton;
    cxTipoUrgenza: TcxTabSheet;
    TipoUrgenza: TAstaClientDataSet;
    TipoUrgenzaPKURGENZA: TIntegerField;
    TipoUrgenzaDESCRIZIONE: TStringField;
    TipoUrgenzaIMAGEINDEX: TIntegerField;
    sTipoUrgenza: TDataSource;
    cxDBGridTipoUrgenza: TcxGridDBTableView;
    cxGridTipoUrgenzaLevel1: TcxGridLevel;
    cxGridTipoUrgenza: TcxGrid;
    cxDBGridTipoUrgenzaPKURGENZA: TcxGridDBColumn;
    cxDBGridTipoUrgenzaDESCRIZIONE: TcxGridDBColumn;
    cxDBGridTipoUrgenzaIMAGEINDEX: TcxGridDBColumn;
    LkComuniDATA_INIZIO: TDateTimeField;
    cxGridComuniDATA_INIZIO: TcxGridDBColumn;
    qOspedaliPROVENIENZA: TStringField;
    cxGridOspedaliPROVENIENZA: TcxGridDBColumn;
    sReparti: TDataSource;
    LkReparti: TAstaClientDataSet;
    LkRepartiPKREPARTI: TIntegerField;
    LkRepartiDESCRIZIONE: TStringField;
    Splitter1: TcxSplitter;
    cxGrid1: TcxGrid;
    cxGridReparti: TcxGridDBTableView;
    cxGridRepartiDESCRIZIONE: TcxGridDBColumn;
    cxGridRepartiPKREPARTI: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    ColorixRep: TAstaClientDataSet;
    ColorixRepREPARTI_FK: TIntegerField;
    ColorixRepURGENZA_FK: TIntegerField;
    ColorixRepDESCRIZIONE: TStringField;
    ColorixRepIMAGEINDEX: TIntegerField;
    sColorixRep: TDataSource;
    cxGridDBColorixRep: TcxGridDBTableView;
    cxGridColorixRep: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBColorixRepREPARTI_FK: TcxGridDBColumn;
    cxGridDBColorixRepURGENZA_FK: TcxGridDBColumn;
    cxGridDBColorixRepDESCRIZIONE: TcxGridDBColumn;
    cxGridDBColorixRepIMAGEINDEX: TcxGridDBColumn;
    cxDBGridAttivitaCOD_IHE: TcxGridDBColumn;
    qNazioniDATA_INIZIO: TDateTimeField;
    cxGridNazioniDATA_INIZIO: TcxGridDBColumn;
    TipoTrasportoCODIHE: TStringField;
    cxDBGridTipoTrasportoCODIHE: TcxGridDBColumn;
    cxSconosciuti: TcxTabSheet;
    Sconosciuti: TAstaClientDataSet;
    SconosciutiCOGNOME: TStringField;
    SconosciutiNOME: TStringField;
    SconosciutiDATA_NASCITA: TDateTimeField;
    SconosciutiSES_CODICE: TStringField;
    sSconosciuti: TDataSource;
    cxGridSconosciutiDBTableView1: TcxGridDBTableView;
    cxGridSconosciutiLevel1: TcxGridLevel;
    cxGridSconosciuti: TcxGrid;
    cxGridSconosciutiDBTableView1COGNOME: TcxGridDBColumn;
    cxGridSconosciutiDBTableView1NOME: TcxGridDBColumn;
    cxGridSconosciutiDBTableView1DATA_NASCITA: TcxGridDBColumn;
    cxGridSconosciutiDBTableView1SES_CODICE: TcxGridDBColumn;
    cxGridSconosciutiDBTableView1PKASSISTIBILI: TcxGridDBColumn;
    SconosciutiASSISTIBILI_FK: TIntegerField;
    aNuovoSconosciuto: TAction;
    dxSconosciuti: TdxBarButton;
    qMediciTIPO_MEDICO: TStringField;
    cxGridMediciTIPO_MEDICO: TcxGridDBColumn;
    cxFeste: TcxTabSheet;
    dxFeste: TdxBarButton;
    cxGridFesteDBTableView1: TcxGridDBTableView;
    cxGridFesteLevel1: TcxGridLevel;
    cxGridFeste: TcxGrid;
    qFeste: TAstaClientDataSet;
    qFesteDATA_FESTA: TDateTimeField;
    qFesteDESCRIZIONE: TStringField;
    sFeste: TDataSource;
    cxGridFesteDBTableView1DATA_FESTA: TcxGridDBColumn;
    cxGridFesteDBTableView1DESCRIZIONE: TcxGridDBColumn;
    cxTipoMedico: TcxTabSheet;
    cxGridTipoMedicoDBTableView1: TcxGridDBTableView;
    cxGridTipoMedicoLevel1: TcxGridLevel;
    cxGridTipoMedico: TcxGrid;
    qTipoMedico: TAstaClientDataSet;
    sTipoMedico: TDataSource;
    qTipoMedicoTIPO_MEDICO: TStringField;
    qTipoMedicoDESCRIZIONE: TStringField;
    dxTipoMedico: TdxBarButton;
    cxGridTipoMedicoDBTableView1TIPO_MEDICO: TcxGridDBColumn;
    cxGridTipoMedicoDBTableView1DESCRIZIONE: TcxGridDBColumn;
    cxTipoAccesso: TcxTabSheet;
    qTipoAccesso: TAstaClientDataSet;
    qTipoAccessoTIPO_ACCESSO: TStringField;
    qTipoAccessoDESCRIZIONE: TStringField;
    qTipoAccessoDATA_INIZIO: TDateTimeField;
    qTipoAccessoDATA_FINE: TDateTimeField;
    sTipoAccesso: TDataSource;
    cxGridTipoAccessoDBTableView1: TcxGridDBTableView;
    cxGridTipoAccessoLevel1: TcxGridLevel;
    cxGridTipoAccesso: TcxGrid;
    cxGridTipoAccessoDBTableView1TIPO_ACCESSO: TcxGridDBColumn;
    cxGridTipoAccessoDBTableView1DESCRIZIONE: TcxGridDBColumn;
    cxGridTipoAccessoDBTableView1DATA_INIZIO: TcxGridDBColumn;
    cxGridTipoAccessoDBTableView1DATA_FINE: TcxGridDBColumn;
    dxTipoAccesso: TdxBarButton;
    qTipoAttivitaCTRL_RICOVERO: TIntegerField;
    cxDBGridAttivitaCTRL_RICOVERO: TcxGridDBColumn;
    LkProvincieCOD_PROVINCIA: TStringField;
    LkProvincieDATA_INIZIO: TDateTimeField;
    cxGridProvinceDATA_INIZIO: TcxGridDBColumn;
    cxGridProvinceCOD_PROVINCIA: TcxGridDBColumn;
    qASLDATA_INIZIO: TDateTimeField;
    cxGridASLDBTableViewDATA_INIZIO: TcxGridDBColumn;
    cxTipoEsenzione: TcxTabSheet;
    cxGridTipoEsenzioneDBTableView1: TcxGridDBTableView;
    cxGridTipoEsenzioneLevel1: TcxGridLevel;
    cxGridTipoEsenzione: TcxGrid;
    LkTipoEsenzioneESENTE: TIntegerField;
    LkTipoEsenzioneCOD_ESTERNO: TStringField;
    LkTipoEsenzioneCE_CODICE: TIntegerField;
    cxGridTipoEsenzioneDBTableView1IDENT: TcxGridDBColumn;
    cxGridTipoEsenzioneDBTableView1DESCRIZIONE: TcxGridDBColumn;
    cxGridTipoEsenzioneDBTableView1ESENTE: TcxGridDBColumn;
    cxGridTipoEsenzioneDBTableView1COD_ESTERNO: TcxGridDBColumn;
    cxGridTipoEsenzioneDBTableView1CE_CODICE: TcxGridDBColumn;
    dxTipoEsenzione: TdxBarButton;
    cxTabBranche: TcxTabSheet;
    cxGridBrancheDBTableView1: TcxGridDBTableView;
    cxGridBrancheLevel1: TcxGridLevel;
    cxGridBranche: TcxGrid;
    qBranche: TAstaClientDataSet;
    sqBranche: TDataSource;
    qBrancheDESCRIZIONE: TStringField;
    qBrancheDATA_FINE: TDateTimeField;
    qBrancheNOTA: TStringField;
    qBranchePKBRANCHE: TStringField;
    qBrancheDATA_INIZIO: TDateTimeField;
    cxGridBrancheDBTableView1DESCRIZIONE: TcxGridDBColumn;
    cxGridBrancheDBTableView1DATA_FINE: TcxGridDBColumn;
    cxGridBrancheDBTableView1NOTA: TcxGridDBColumn;
    cxGridBrancheDBTableView1PKBRANCHE: TcxGridDBColumn;
    cxGridBrancheDBTableView1DATA_INIZIO: TcxGridDBColumn;
    dxBranche: TdxBarButton;
    cxTabACR: TcxTabSheet;
    dxACR: TdxBarButton;
    qAnatomical: TAstaClientDataSet;
    qPatological: TAstaClientDataSet;
    qAnatomicalAID: TStringField;
    qAnatomicalDESCRIPTION: TStringField;
    qPatologicalAID: TStringField;
    qPatologicalDESCRIPTION: TStringField;
    sqAnatomical: TDataSource;
    sqpatological: TDataSource;
    cxGridACRAnatomical: TcxGridDBTableView;
    cxGridACRLevel1: TcxGridLevel;
    cxGridACR: TcxGrid;
    cxGridACRAnatomicalAID: TcxGridDBColumn;
    cxGridACRAnatomicalDESCRIPTION: TcxGridDBColumn;
    cxGridACRLevel2: TcxGridLevel;
    cxGridACRPatological: TcxGridDBTableView;
    cxGridACRPatologicalAID: TcxGridDBColumn;
    cxGridACRPatologicalDESCRIPTION: TcxGridDBColumn;
    qAnatomicalKEY: TStringField;
    qAnatomicalPARENT: TStringField;
    cxGridACRAnatomicalKEY: TcxGridDBColumn;
    cxGridACRAnatomicalPARENT: TcxGridDBColumn;
    qPatologicalKEY: TStringField;
    qPatologicalPARENT: TStringField;
    cxGridACRPatologicalKEY: TcxGridDBColumn;
    cxGridACRPatologicalPARENT: TcxGridDBColumn;
    LkRepartiTIPO_REPARTO: TStringField;
    cxGridRepartiTIPO_REPARTO: TcxGridDBColumn;
    cxTabScreening: TcxTabSheet;
    dxScreening: TdxBarButton;
    scrTipoLivello: TAstaClientDataSet;
    scrTipoLivelloTIPO: TStringField;
    scrTipoLivelloDESCRIZIONE: TStringField;
    scrTipoLivelloLIVELLO: TIntegerField;
    scrTipoLivelloINVIA_REFERTO: TIntegerField;
    sscrTipoLivello: TDataSource;
    cxGridTipoLivello: TcxGridDBTableView;
    cxGridScreeningLevel1: TcxGridLevel;
    cxGridScreening: TcxGrid;
    cxGridTipoLivelloTIPO: TcxGridDBColumn;
    cxGridTipoLivelloDESCRIZIONE: TcxGridDBColumn;
    cxGridTipoLivelloLIVELLO: TcxGridDBColumn;
    cxGridTipoLivelloINVIA_REFERTO: TcxGridDBColumn;
    scrTabEsitoScreening: TAstaClientDataSet;
    scrTabEsitoScreeningCODICE_ESTERNO: TStringField;
    scrTabEsitoScreeningDESCRIZIONE: TStringField;
    scrTabEsitoScreeningPKESITISCR: TIntegerField;
    scrTabEsitoScreeningTIPOLIVELLO_FK: TStringField;
    sscrTabEsitoScreening: TDataSource;
    cxGridScreeningLevel2: TcxGridLevel;
    cxGridEsitoScreening: TcxGridDBTableView;
    cxGridEsitoScreeningCODICE_ESTERNO: TcxGridDBColumn;
    cxGridEsitoScreeningDESCRIZIONE: TcxGridDBColumn;
    cxGridEsitoScreeningPKESITISCR: TcxGridDBColumn;
    cxGridEsitoScreeningTIPOLIVELLO_FK: TcxGridDBColumn;
    scrEsamixlivello: TAstaClientDataSet;
    scrEsamixlivelloCODICIRAD_FK: TIntegerField;
    scrEsamixlivelloTIPOLIVELLO_FK: TStringField;
    scrEsamixlivelloDESCRIZIONE: TStringField;
    scrEsamixlivelloCODICE: TStringField;
    sscrEsamixlivello: TDataSource;
    cxGridScreeningLevel3: TcxGridLevel;
    cxGridEsamixlivello: TcxGridDBTableView;
    cxGridEsamixlivelloCODICIRAD_FK: TcxGridDBColumn;
    cxGridEsamixlivelloTIPOLIVELLO_FK: TcxGridDBColumn;
    cxGridEsamixlivelloDESCRIZIONE: TcxGridDBColumn;
    cxGridEsamixlivelloCODICE: TcxGridDBColumn;
    CodiciRad: TAstaClientDataSet;
    CodiciRadCODICE: TStringField;
    CodiciRadDESCRIZIONE: TStringField;
    CodiciRadPKCODICIRAD: TIntegerField;
    sCodiciRad: TDataSource;
    dxTipoRicetta: TdxBarButton;
    cxTabTipoRicetta: TcxTabSheet;
    qTipoRicetta: TAstaClientDataSet;
    qTipoRicettaTIPO_RICETTA: TStringField;
    qTipoRicettaDESCRIZIONE: TStringField;
    qTipoRicettaTIPO_COM_RES: TStringField;
    qTipoRicettaFLAG_STP: TIntegerField;
    cxGridTipoRicettaDBTableView1: TcxGridDBTableView;
    cxGridTipoRicettaLevel1: TcxGridLevel;
    cxGridTipoRicetta: TcxGrid;
    sTipoRicetta: TDataSource;
    cxGridTipoRicettaDBTableView1TIPO_RICETTA: TcxGridDBColumn;
    cxGridTipoRicettaDBTableView1DESCRIZIONE: TcxGridDBColumn;
    cxGridTipoRicettaDBTableView1TIPO_COM_RES: TcxGridDBColumn;
    cxGridTipoRicettaDBTableView1FLAG_STP: TcxGridDBColumn;
    cxGridComuniCOM_TYPE: TcxGridDBColumn;
    qTipoAttivitaVIEW_REFERTI: TIntegerField;
    cxDBGridAttivitaVIEW_REFERTI: TcxGridDBColumn;
    cxStradario: TcxTabSheet;
    cxGridStradarioDBTableView1: TcxGridDBTableView;
    cxGridStradarioLevel1: TcxGridLevel;
    cxGridStradario: TcxGrid;
    qComStradario: TAstaClientDataSet;
    qStradario: TAstaClientDataSet;
    qComStradarioCOD_COM: TStringField;
    qComStradarioDESCRIZIONE: TStringField;
    sqComStradario: TDataSource;
    sqStradario: TDataSource;
    cxGridStradarioDBTableView1COD_COM: TcxGridDBColumn;
    cxGridStradarioDBTableView1DESCRIZIONE: TcxGridDBColumn;
    cxGridStradarioLevel2: TcxGridLevel;
    cxGridStradarioDBTableView2: TcxGridDBTableView;
    qStradarioCAP: TStringField;
    qStradarioINTERVALLI: TStringField;
    qStradarioNOTE: TStringField;
    qStradarioCOD_COM: TStringField;
    qStradarioINDIRIZZO: TStringField;
    qStradarioCIRCOSCRIZIONE: TStringField;
    qStradarioCOD_REG: TStringField;
    qStradarioCOD_ASL: TStringField;
    cxGridStradarioDBTableView2CAP: TcxGridDBColumn;
    cxGridStradarioDBTableView2INTERVALLI: TcxGridDBColumn;
    cxGridStradarioDBTableView2NOTE: TcxGridDBColumn;
    cxGridStradarioDBTableView2COD_COM: TcxGridDBColumn;
    cxGridStradarioDBTableView2INDIRIZZO: TcxGridDBColumn;
    cxGridStradarioDBTableView2CIRCOSCRIZIONE: TcxGridDBColumn;
    cxGridStradarioDBTableView2COD_REG: TcxGridDBColumn;
    cxGridStradarioDBTableView2COD_ASL: TcxGridDBColumn;
    cxGridStradarioDBTableView2ROWNUM: TcxGridDBColumn;
    dxStradario: TdxBarButton;
    qOspedaliTIPO_ACCESSO: TStringField;
    cxGridOspedaliTIPO_ACCESSO: TcxGridDBColumn;
    scrTabEsitoScreeningDATA_FINE: TDateTimeField;
    cxGridEsitoScreeningDATA_FINE: TcxGridDBColumn;
    cxTipoInvio: TcxTabSheet;
    qTipoInvio: TAstaClientDataSet;
    qTipoInvioPKINVIO: TStringField;
    qTipoInvioDESCRIZIONE: TStringField;
    qTipoInvioATTIVO: TIntegerField;
    sqTipoInvio: TDataSource;
    dxTipoInvio: TdxBarButton;
    cxGridTipoInvioDBTable: TcxGridDBTableView;
    cxGridTipoInvioLevel1: TcxGridLevel;
    cxGridTipoInvio: TcxGrid;
    cxGridTipoInvioDBTablePKINVIO: TcxGridDBColumn;
    cxGridTipoInvioDBTableDESCRIZIONE: TcxGridDBColumn;
    cxGridTipoInvioDBTableATTIVO: TcxGridDBColumn;
    cxSmartCard: TcxTabSheet;
    qSmartCard: TAstaClientDataSet;
    cxGridSmartCard: TcxGrid;
    cxGridSmartCardDBTable: TcxGridDBTableView;
    cxGridSmartCardLevel1: TcxGridLevel;
    sqSmartCard: TDataSource;
    qSmartCardTIPO_CARTA: TIntegerField;
    qSmartCardDESCRIZIONE: TStringField;
    qSmartCardDLL_NAME: TStringField;
    qSmartCardPRIVATE_KEY: TStringField;
    qSmartCardATTIVO: TIntegerField;
    cxGridSmartCardDBTableTIPO_CARTA: TcxGridDBColumn;
    cxGridSmartCardDBTableDESCRIZIONE: TcxGridDBColumn;
    cxGridSmartCardDBTableDLL_NAME: TcxGridDBColumn;
    cxGridSmartCardDBTablePRIVATE_KEY: TcxGridDBColumn;
    cxGridSmartCardDBTableATTIVO: TcxGridDBColumn;
    dxSmartCard: TdxBarButton;
    qUSL_COM: TAstaClientDataSet;
    qUSL_COMCOD_ASL: TStringField;
    qUSL_COMCODCOM: TStringField;
    qUSL_COMREG_CODICE: TStringField;
    sqUSL_COM: TDataSource;
    cxGridASLLevel2: TcxGridLevel;
    cxGridASLCOMDBView: TcxGridDBTableView;
    cxGridASLCOMDBViewCOD_ASL: TcxGridDBColumn;
    cxGridASLCOMDBViewCODCOM: TcxGridDBColumn;
    cxGridASLCOMDBViewREG_CODICE: TcxGridDBColumn;
    qCOM_USL: TAstaClientDataSet;
    qCOM_USLCOD_ASL: TStringField;
    qCOM_USLCODCOM: TStringField;
    qCOM_USLREG_CODICE: TStringField;
    GridComuniLevel2: TcxGridLevel;
    CXGridComuniASL: TcxGridDBTableView;
    sqCOM_USL: TDataSource;
    LkComuniREG_CODICE: TStringField;
    CXGridComuniASLCOD_ASL: TcxGridDBColumn;
    CXGridComuniASLCODCOM: TcxGridDBColumn;
    CXGridComuniASLREG_CODICE: TcxGridDBColumn;
    qLkASL: TAstaClientDataSet;
    qLkASLREG_CODICE: TStringField;
    qLkASLCODICE: TStringField;
    qLkASLDESCRIZIONE: TStringField;
    qLkASLDATA_FINE: TDateTimeField;
    qLkASLINDIRIZZO: TStringField;
    qLkASLCOM_CODICE: TStringField;
    qLkASLCAP: TStringField;
    qLkASLDATA_INIZIO: TDateTimeField;
    sqLkASL: TDataSource;
    qCOM_USLDESCRIZIONE: TStringField;
    CXGridComuniASLDESCRIZIONE: TcxGridDBColumn;
    TipoUrgenzaCODESTERNO: TStringField;
    cxDBGridTipoUrgenzaCODESTERNO: TcxGridDBColumn;
    qTipoAttivitaCOD_IHE: TStringField;
    cxTipoModalita: TcxTabSheet;
    dxTipoModalita: TdxBarButton;
    cxGridTipoModalitaDBTable: TcxGridDBTableView;
    cxGridTipoModalitaLevel1: TcxGridLevel;
    cxGridTipoModalita: TcxGrid;
    qTipo_Modalita: TAstaClientDataSet;
    qTipo_ModalitaTIPO_MODALITA: TStringField;
    qTipo_ModalitaDESCRIZIONE: TStringField;
    sqTipoModalita: TDataSource;
    cxGridTipoModalitaDBTableTIPO_MODALITA: TcxGridDBColumn;
    cxGridTipoModalitaDBTableDESCRIZIONE: TcxGridDBColumn;
    cxIdAuth: TcxTabSheet;
    qIdAuth: TAstaClientDataSet;
    sqIdAuth: TDataSource;
    qIdAuthIDAUTHORITY: TStringField;
    qIdAuthDESCRIZIONE: TStringField;
    cxGridIdAuthDBTable: TcxGridDBTableView;
    cxGridIdAuthLevel1: TcxGridLevel;
    cxGridIdAuth: TcxGrid;
    cxGridIdAuthDBTableIDAUTHORITY: TcxGridDBColumn;
    cxGridIdAuthDBTableDESCRIZIONE: TcxGridDBColumn;
    dxIdAuth: TdxBarButton;
    cxGridTipoRicettaDBTableView1TIPO_ATTIVITA_FK: TcxGridDBColumn;
    qTipoRicettaTIPO_ATTIVITA_FK: TStringField;
    qTipoRicettaDATA_INIZIO: TDateTimeField;
    qTipoRicettaDATA_FINE: TDateTimeField;
    cxGridTipoRicettaDBTableView1DATA_INIZIO: TcxGridDBColumn;
    cxGridTipoRicettaDBTableView1DATA_FINE: TcxGridDBColumn;
    qMediciCODICE: TStringField;
    qOspedaliCOD_STS11: TStringField;
    cxGridMotiviFLAG_TIPO: TcxGridDBColumn;
    cxGridEsitoScreeningSHORTCUT: TcxGridDBColumn;
    scrTabEsitoScreeningSHORTCUT: TStringField;
    qTipoAttivitaCOD_ESTERNO: TStringField;
    cxDBGridAttivitaCOD_ESTERNO: TcxGridDBColumn;
    TipoTrasportoDATA_FINE: TDateTimeField;
    cxDBGridTipoTrasportoDATA_FINE: TcxGridDBColumn;
    TipoUrgenzaDATA_FINE: TDateTimeField;
    cxDBGridTipoUrgenzaDATA_FINE: TcxGridDBColumn;
    dxTipoBlocco: TdxBarButton;
    cxBlocchi: TcxTabSheet;
    cxGridBlocchi: TcxGrid;
    cxGridDBTableBlocchi: TcxGridDBTableView;
    cxGridBlocchiLevel1: TcxGridLevel;
    qBlocchi: TAstaClientDataSet;
    sqBlocchi: TDataSource;
    qBlocchiPKTIPO_BLOCCO: TIntegerField;
    qBlocchiDESCRIZIONE: TStringField;
    cxGridDBTableBlocchiPKTIPO_BLOCCO: TcxGridDBColumn;
    cxGridDBTableBlocchiDESCRIZIONE: TcxGridDBColumn;
    sqSET_COLORI: TDataSource;
    qSET_COLORI: TAstaClientDataSet;
    qSET_COLORIPKSET_COLORI: TIntegerField;
    qSET_COLORICOLORE: TIntegerField;
    dxColori: TdxBarButton;
    cxColori: TcxTabSheet;
    cxGridColori: TcxGrid;
    cxGridDBTableColori: TcxGridDBTableView;
    cxGridColoriLevel1: TcxGridLevel;
    cxGridDBTableColoriPKSET_COLORI: TcxGridDBColumn;
    cxGridDBTableColoriCOLORE: TcxGridDBColumn;
    qSET_COLORIELEMENTO: TStringField;
    cxGridDBTableColoriELEMENTO: TcxGridDBColumn;
    qOspedaliDESCTIPOFATTURA: TStringField;
    scrTabEsitoScreeningREVISORE: TIntegerField;
    cxGridEsitoScreeningREVISORE: TcxGridDBColumn;
    cxProfili: TcxTabSheet;
    qProfili: TAstaClientDataSet;
    qProfiliDESCRIZIONE: TStringField;
    qProfiliPROFILO: TBlobField;
    qProfiliIMMAGINI: TIntegerField;
    qProfiliREFERTO: TIntegerField;
    qProfiliBLOCCHI: TIntegerField;
    qProfiliCUP: TIntegerField;
    qProfiliESEGUITO: TIntegerField;
    qProfiliPKPROFILI: TIntegerField;
    qProfiliSPOSTA: TIntegerField;
    qProfiliSETUP: TIntegerField;
    sqProfili: TDataSource;
    cxGridProfiliDBTableView1: TcxGridDBTableView;
    cxGridProfiliLevel1: TcxGridLevel;
    cxGridProfili: TcxGrid;
    cxGridProfiliDBTableView1DESCRIZIONE: TcxGridDBColumn;
    cxGridProfiliDBTableView1PROFILO: TcxGridDBColumn;
    cxGridProfiliDBTableView1IMMAGINI: TcxGridDBColumn;
    cxGridProfiliDBTableView1REFERTO: TcxGridDBColumn;
    cxGridProfiliDBTableView1BLOCCHI: TcxGridDBColumn;
    cxGridProfiliDBTableView1CUP: TcxGridDBColumn;
    cxGridProfiliDBTableView1ESEGUITO: TcxGridDBColumn;
    cxGridProfiliDBTableView1PKPROFILI: TcxGridDBColumn;
    cxGridProfiliDBTableView1SPOSTA: TcxGridDBColumn;
    cxGridProfiliDBTableView1SETUP: TcxGridDBColumn;
    dxProfiliReparti: TdxBarButton;
    cxAudit: TcxTabSheet;
    dxAudit: TdxBarButton;
    cxGridAuditDBTableView1: TcxGridDBTableView;
    cxGridAuditLevel1: TcxGridLevel;
    cxGridAudit: TcxGrid;
    qAudit: TAstaClientDataSet;
    sqAudit: TDataSource;
    qAuditTABLE_NAME: TStringField;
    qAuditDESCRIZIONE: TStringField;
    qAuditLOG_VAR: TIntegerField;
    cxGridAuditDBTableView1TABLE_NAME: TcxGridDBColumn;
    cxGridAuditDBTableView1DESCRIZIONE: TcxGridDBColumn;
    cxGridAuditDBTableView1LOG_VAR: TcxGridDBColumn;
    updqAudit: TAstaUpdateSQL;
    qFesteReparto: TAstaClientDataSet;
    sqFesteReparto: TDataSource;
    qFesteRepartoDATA_FESTA: TDateTimeField;
    qFesteRepartoDESCRIZIONE: TStringField;
    qFesteRepartoREPARTI_FK: TIntegerField;
    cxGridFesteLevel2: TcxGridLevel;
    cxGridFesteDBTableView2: TcxGridDBTableView;
    cxGridFesteDBTableView2DATA_FESTA: TcxGridDBColumn;
    cxGridFesteDBTableView2DESCRIZIONE: TcxGridDBColumn;
    cxGridFesteDBTableView2REPARTI_FK: TcxGridDBColumn;
    ColorixRepPOSIZIONE: TIntegerField;
    cxGridDBColorixRepPOSIZIONE: TcxGridDBColumn;
    qTipoAttivitaMASK: TStringField;
    cxDBGridAttivitaMASK: TcxGridDBColumn;
    cxVerificaStampe: TcxTabSheet;
    qVerificaStampe: TAstaClientDataSet;
    sqVerificaStampe: TDataSource;
    qVerificaStampePKVERIFICASTAMPE: TIntegerField;
    qVerificaStampeNOMESTAMPA: TStringField;
    qVerificaStampeSTMT: TMemoField;
    cxGridVerificaStampeDBTableView1: TcxGridDBTableView;
    cxGridVerificaStampeLevel1: TcxGridLevel;
    cxGridVerificaStampe: TcxGrid;
    cxGridVerificaStampeDBTableView1PKVERIFICASTAMPE: TcxGridDBColumn;
    cxGridVerificaStampeDBTableView1NOMESTAMPA: TcxGridDBColumn;
    aEditVerificaStampe: TAction;
    aNuovaVerifica: TAction;
    dxBarPopupVerificaStampe: TdxBarPopupMenu;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxVerificaStampe: TdxBarButton;
    CodiciRadIDENT_FK: TStringField;
    qPrestSpec: TAstaClientDataSet;
    qPrestSpecIDENT: TStringField;
    qPrestSpecDESCRIZIONE: TStringField;
    sqPrestSpec: TDataSource;
    cxTabSkin: TcxTabSheet;
    qSkin: TAstaClientDataSet;
    qSkinPKTABSKIN: TIntegerField;
    qSkinNOME: TStringField;
    qSkinSKIN: TBlobField;
    sqSkin: TDataSource;
    cxGridSkinDBTableView1: TcxGridDBTableView;
    cxGridSkinLevel1: TcxGridLevel;
    cxGridSkin: TcxGrid;
    cxGridSkinDBTableView1PKTABSKIN: TcxGridDBColumn;
    cxGridSkinDBTableView1NOME: TcxGridDBColumn;
    cxGridSkinDBTableView1SKIN: TcxGridDBColumn;
    dxSkin: TdxBarButton;
    OpenDialog1: TOpenDialog;
    qSkinTEXTCOLOR: TStringField;
    cxGridSkinDBTableView1TEXTCOLOR: TcxGridDBColumn;
    qTipoAccessoURGENZA_FK: TIntegerField;
    cxGridTipoAccessoDBTableView1URGENZA_FK: TcxGridDBColumn;
    LkTipoRefVoc: TAstaClientDataSet;
    LkTipoRefVocPKTIPO_REFVOC: TIntegerField;
    LkTipoRefVocDESCRIZIONE: TStringField;
    sLkTipoRefVoc: TDataSource;
    LkTipoRefVocATTIVO: TIntegerField;
    LkTipoRefVocDEST_FORM: TIntegerField;
    cxTabTipoRefertazione: TcxTabSheet;
    cxGridTipoRefertazioneDBTableView1: TcxGridDBTableView;
    cxGridTipoRefertazioneLevel1: TcxGridLevel;
    cxGridTipoRefertazione: TcxGrid;
    cxGridTipoRefertazioneDBTableView1PKTIPO_REFVOC: TcxGridDBColumn;
    cxGridTipoRefertazioneDBTableView1DESCRIZIONE: TcxGridDBColumn;
    cxGridTipoRefertazioneDBTableView1ATTIVO: TcxGridDBColumn;
    cxGridTipoRefertazioneDBTableView1DEST_FORM: TcxGridDBColumn;
    dxTipoRefertazione: TdxBarButton;
    updqFesteReparto: TAstaUpdateSQL;
    cxTabStatoReferto: TcxTabSheet;
    TabStatoReferto: TAstaClientDataSet;
    TabStatoRefertoSTATOREFERTO: TIntegerField;
    TabStatoRefertoDESCRIZIONE: TStringField;
    TabStatoRefertoRIGENERA: TIntegerField;
    sTabStatoReferto: TDataSource;
    cxGridStatoRefertoDBTableView1: TcxGridDBTableView;
    cxGridStatoRefertoLevel1: TcxGridLevel;
    cxGridStatoReferto: TcxGrid;
    cxGridStatoRefertoDBTableView1STATOREFERTO: TcxGridDBColumn;
    cxGridStatoRefertoDBTableView1DESCRIZIONE: TcxGridDBColumn;
    cxGridStatoRefertoDBTableView1RIGENERA: TcxGridDBColumn;
    dxStatoReferto: TdxBarButton;
    qMediciMEDCOGNOME: TStringField;
    qMediciMEDNOME: TStringField;
    qComType: TAstaClientDataSet;
    qComTypeCOM_TYPE: TStringField;
    qComTypeDESCRIZIONE: TStringField;
    sqComType: TDataSource;
    qTipoNaz: TAstaClientDataSet;
    qTipoNazTNZ_IDENT: TIntegerField;
    qTipoNazDESCRIZIONE: TStringField;
    sqTipoNaz: TDataSource;
    qTipoImpegn: TAstaClientDataSet;
    qTipoImpegnIMPEGNATIVA: TIntegerField;
    qTipoImpegnDESCRIZIONE: TStringField;
    sqTipoImpegn: TDataSource;
    qTipoRicov: TAstaClientDataSet;
    qTipoRicovCTRL_RICOVERO: TIntegerField;
    qTipoRicovDESCRIZIONE: TStringField;
    sqTipoRicov: TDataSource;
    qRefAtt: TAstaClientDataSet;
    qRefAttVIEW_REFERTI: TIntegerField;
    qRefAttDESCRIZIONE: TStringField;
    sqRefAtt: TDataSource;
    qTbdEsenzione: TAstaClientDataSet;
    qTbdEsenzioneESENTE: TIntegerField;
    qTbdEsenzioneDESCRIZIONE: TStringField;
    sqTbdEsenzione: TDataSource;
    qNazioniMASK_CF: TStringField;
    cxGridNazioniMASK_CF: TcxGridDBColumn;
    cxTabTraduzioni: TcxTabSheet;
    dxBarManagerRadDiagnBar2: TdxBar;
    dxBarDockControl1: TdxBarDockControl;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    qLingue: TAstaClientDataSet;
    qLingueLINGUA: TStringField;
    qLingueDESCRIZIONE: TStringField;
    cxLinguaBase: TcxLookupComboBox;
    sqLingue: TDataSource;
    cxLinguaDaTradurre: TcxLookupComboBox;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    dxTraduzioni: TdxBarButton;
    cxGridTraduzioniDBTableView1: TcxGridDBTableView;
    cxGridTraduzioniLevel1: TcxGridLevel;
    cxGridTraduzioni: TcxGrid;
    qTraduzioniN: TAstaClientDataSet;
    qTraduzioniNTABLE_NAME: TStringField;
    qTraduzioniNDESCTABELLA: TStringField;
    qTraduzioniNFIELD_NAME: TStringField;
    qTraduzioniNDESCCAMPO: TStringField;
    qTraduzioniNLINGUA: TStringField;
    qTraduzioniNCODICE: TIntegerField;
    qTraduzioniNORIGINE: TStringField;
    qTraduzioniNDESCRIZIONE: TStringField;
    sqTraduzioniN: TDataSource;
    cxGridTraduzioniDBTableView1TABLE_NAME: TcxGridDBColumn;
    cxGridTraduzioniDBTableView1DESCTABELLA: TcxGridDBColumn;
    cxGridTraduzioniDBTableView1FIELD_NAME: TcxGridDBColumn;
    cxGridTraduzioniDBTableView1DESCCAMPO: TcxGridDBColumn;
    cxGridTraduzioniDBTableView1LINGUA: TcxGridDBColumn;
    cxGridTraduzioniDBTableView1CODICE: TcxGridDBColumn;
    cxGridTraduzioniDBTableView1ORIGINE: TcxGridDBColumn;
    cxGridTraduzioniDBTableView1DESCRIZIONE: TcxGridDBColumn;
    cxGridTraduzioniDBTableView1TRADOTTO: TcxGridDBColumn;
    cxPropertiesStore1: TcxPropertiesStore;
    cxGridTraduzioniLevel2: TcxGridLevel;
    cxGridTraduzioniDBTableView2: TcxGridDBTableView;
    qTraduzioniC: TAstaClientDataSet;
    qTraduzioniCTABLE_NAME: TStringField;
    qTraduzioniCDESCTABELLA: TStringField;
    qTraduzioniCFIELD_NAME: TStringField;
    qTraduzioniCDESCCAMPO: TStringField;
    qTraduzioniCLINGUA: TStringField;
    qTraduzioniCCODICE: TStringField;
    qTraduzioniCORIGINE: TStringField;
    qTraduzioniCDESCRIZIONE: TStringField;
    sqTraduzioniC: TDataSource;
    cxGridTraduzioniDBTableView2TABLE_NAME: TcxGridDBColumn;
    cxGridTraduzioniDBTableView2DESCTABELLA: TcxGridDBColumn;
    cxGridTraduzioniDBTableView2FIELD_NAME: TcxGridDBColumn;
    cxGridTraduzioniDBTableView2DESCCAMPO: TcxGridDBColumn;
    cxGridTraduzioniDBTableView2LINGUA: TcxGridDBColumn;
    cxGridTraduzioniDBTableView2CODICE: TcxGridDBColumn;
    cxGridTraduzioniDBTableView2ORIGINE: TcxGridDBColumn;
    cxGridTraduzioniDBTableView2DESCRIZIONE: TcxGridDBColumn;
    cxGridTraduzioniDBTableView2TRADOTTO: TcxGridDBColumn;
    qSetDesc: TAstaClientDataSet;
    sqSetDesc: TDataSource;
    qSetDescPKSET_DESCS: TIntegerField;
    qSetDescNOMECAMPO: TStringField;
    qSetDescLABELCAMPO: TStringField;
    qSetDescPADRE: TStringField;
    qSetDescNOTECAMPO: TStringField;
    qSetDescLINGUA: TStringField;
    qSetDescORIGINE: TStringField;
    qSetDescNOTEORIGINE: TStringField;
    cxGridTraduzioniLevel3: TcxGridLevel;
    cxGridTraduzioniDBTableView3: TcxGridDBTableView;
    cxGridTraduzioniDBTableView3PKSET_DESCS: TcxGridDBColumn;
    cxGridTraduzioniDBTableView3NOMECAMPO: TcxGridDBColumn;
    cxGridTraduzioniDBTableView3LABELCAMPO: TcxGridDBColumn;
    cxGridTraduzioniDBTableView3PADRE: TcxGridDBColumn;
    cxGridTraduzioniDBTableView3NOTECAMPO: TcxGridDBColumn;
    cxGridTraduzioniDBTableView3LINGUA: TcxGridDBColumn;
    cxGridTraduzioniDBTableView3ORIGINE: TcxGridDBColumn;
    cxGridTraduzioniDBTableView3NOTEORIGINE: TcxGridDBColumn;
    cxGridTraduzioniDBTableView3TRADOTTO: TcxGridDBColumn;
    qTraduzioniCTRADOTTO: TIntegerField;
    qTraduzioniNTRADOTTO: TIntegerField;
    qSetDescTRADOTTO: TIntegerField;
    rsPropSaver1: TrsPropSaver;
    qStradarioCODICE: TStringField;
    qBrancheDEVICE: TIntegerField;
    cxGridBrancheDBTableView1DEVICE: TcxGridDBColumn;
    procedure LkComuniBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure dxASLClick(Sender: TObject);
    procedure dxMediciClick(Sender: TObject);
    procedure dxEsenzioniClick(Sender: TObject);
    procedure cxGridOspedaliDblClick(Sender: TObject);
    procedure NuovoOspedaleExecute(Sender: TObject);
    procedure dxOspedaliClick(Sender: TObject);
    procedure LkComuniNewRecord(DataSet: TDataSet);
    procedure LkProvincieNewRecord(DataSet: TDataSet);
    procedure dxComuniClick(Sender: TObject);
    procedure dxRegioniClick(Sender: TObject);
    procedure dxNazioniClick(Sender: TObject);
    procedure ModiOspedaleExecute(Sender: TObject);
    procedure cxLkComuneFocusedItemChanged(Sender: TcxCustomGridTableView;
      APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxLkRegioniFocusedItemChanged(Sender: TcxCustomGridTableView;
      APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure StampaExecute(Sender: TObject);
    procedure cxPageControlPageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure ApriTuttoExecute(Sender: TObject);
    procedure ChiudiTuttoExecute(Sender: TObject);
    procedure StampaUpdate(Sender: TObject);
    procedure ApriTuttoUpdate(Sender: TObject);
    procedure ChiudiTuttoUpdate(Sender: TObject);
    procedure dxMotiviClick(Sender: TObject);
    procedure qMotiviNewRecord(DataSet: TDataSet);
    procedure ModiMedicoExecute(Sender: TObject);
    procedure NuovoMedicoExecute(Sender: TObject);
    procedure cxGridMediciDblClick(Sender: TObject);
    procedure dxAttivitaClick(Sender: TObject);
    procedure dxTipoTrasportoClick(Sender: TObject);
    procedure dxTipoUrgenzaClick(Sender: TObject);
    procedure LkRepartiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure sRepartiDataChange(Sender: TObject; Field: TField);
    procedure ColorixRepBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxGridDBColorixRepDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGridDBColorixRepDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxDBGridTipoUrgenzaDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxDBGridTipoUrgenzaDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGridSconosciutiDBTableView1NavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure aNuovoSconosciutoExecute(Sender: TObject);
    procedure dxSconosciutiClick(Sender: TObject);
    procedure cxGridMediciNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cxGridOspedaliNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure dxFesteClick(Sender: TObject);
    procedure dxTipoMedicoClick(Sender: TObject);
    procedure dxTipoAccessoClick(Sender: TObject);
    procedure dxTipoEsenzioneClick(Sender: TObject);
    procedure dxBrancheClick(Sender: TObject);
    procedure qPatologicalNewRecord(DataSet: TDataSet);
    procedure dxACRClick(Sender: TObject);
    procedure dxScreeningClick(Sender: TObject);
    procedure dxTipoRicettaClick(Sender: TObject);
    procedure cxGridStradarioDBTableView2DataControllerDataModeControllerDetailFirst(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
    function cxGridStradarioDBTableView2DataControllerDataModeControllerDetailIsCurrentQuery(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant): Boolean;
    procedure dxStradarioClick(Sender: TObject);
    procedure qStradarioNewRecord(DataSet: TDataSet);
    procedure dxTipoInvioClick(Sender: TObject);
    procedure qSmartCardNewRecord(DataSet: TDataSet);
    procedure dxSmartCardClick(Sender: TObject);
    procedure cxGridASLCOMDBViewDataControllerDataModeControllerDetailFirst(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
    function cxGridASLCOMDBViewDataControllerDataModeControllerDetailIsCurrentQuery(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant): Boolean;
    procedure CXGridComuniASLDataControllerDataModeControllerDetailFirst(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
    function CXGridComuniASLDataControllerDataModeControllerDetailIsCurrentQuery(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant): Boolean;
    procedure qCOM_USLNewRecord(DataSet: TDataSet);
    procedure qUSL_COMNewRecord(DataSet: TDataSet);
    procedure dxTipoModalitaClick(Sender: TObject);
    procedure dxIdAuthClick(Sender: TObject);
    procedure cxGridEsitoScreeningSHORTCUTPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dxTipoBloccoClick(Sender: TObject);
    procedure dxColoriClick(Sender: TObject);
    procedure dxProfiliRepartiClick(Sender: TObject);
    procedure dxAuditClick(Sender: TObject);
    procedure qFesteRepartoNewRecord(DataSet: TDataSet);
    procedure qFesteRepartoBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxGridDBColorixRepStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure cxGridVerificaStampeDBTableView1NavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure aNuovaVerificaExecute(Sender: TObject);
    procedure aEditVerificaStampeExecute(Sender: TObject);
    procedure aEditVerificaStampeUpdate(Sender: TObject);
    procedure dxVerificaStampeClick(Sender: TObject);
    procedure cxGridEsamiEsentiPRESTSPEC_FKPropertiesInitPopup(
      Sender: TObject);
    procedure cxGridEsamixlivelloCODICIRAD_FKPropertiesInitPopup(
      Sender: TObject);
    procedure cxGridSkinDBTableView1SKINPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dxSkinClick(Sender: TObject);
    procedure dxTipoRefertazioneClick(Sender: TObject);
    procedure dxStatoRefertoClick(Sender: TObject);
    procedure qComTypeBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qTbdEsenzioneBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure LkTipoEsenzioneBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qTipoImpegnBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qTipoNazBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qTipoRicovBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qRefAttBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure SconosciutiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure dxTraduzioniClick(Sender: TObject);
    procedure qTraduzioniNBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxLinguaBasePropertiesCloseUp(Sender: TObject);
    procedure cxLinguaDaTradurrePropertiesCloseUp(Sender: TObject);
    procedure qTraduzioniCBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qSetDescBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure qOspedaliBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure CXGridComuniASLInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
  private
    { Private declarations }
    AKeys: Variant;
    procedure ReorderRows(AView: TcxGridTableView; ADestRow: TcxCustomGridRecord);
    procedure SetOrderValue(DS: TDataSet; AValue: Variant);
  protected
    function GetCanClose: Boolean; override;  
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure DoShow; override;
    function CaricaToolBar: TdxBars; override;
  end;

var
  FTabGenerale: TFTabGenerale;

implementation

uses
  DMCommon, Variants, Math, ImgList, Windows, msgdlgs, AstaDBTypes,
  EditOspedale, IIConsts, sysutils, Medici, RicAssistito, dxPrnDlg,
  EditorShortcut, EditVerificaStampe, dxCore, Menus;

{$R *.DFM}

function TFTabGenerale.CaricaToolBar: TdxBars;
begin
  result := dxBarManagerRadDiagn.Bars;
end;

procedure TFTabGenerale.LkComuniBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
//  Sender.Parambyname('NAZ_CODICE','100');

end;


constructor TFTabGenerale.Create(AOwner: TComponent);
begin

    inherited;
    
    cxPageControl.ActivePage := nil;
    cxPageControl.HideTabs := true;
    TipoTrasporto.open;
    TipoUrgenza.open;

end;


procedure TFTabGenerale.dxASLClick(Sender: TObject);
begin
//  if cxPageControl.ActivePage=cxASL then exit;
  cxPageControl.ActivePage := cxASL;

  if not LkComuni.Active then
  begin
     LkComuni.open;
     qComType.Open;
     cxGridComuni.Controller.GoToFirst;
  end;

  if not LkRegioni.Active then
  begin
     LkRegioni.open;
     cxGridRegioni.Controller.GoToFirst;
  end;

  if not qASL.Active then
  begin
     qASL.open;
     qUSL_COM.open;
     ActiveControl := cxGridASLDBTableView.Site;
     cxGridASLDBTableView.Controller.GoToFirst;
  end;

end;

procedure TFTabGenerale.dxMediciClick(Sender: TObject);
begin
//  if cxPageControl.ActivePage=cxMedici then exit;
  cxPageControl.ActivePage := cxMedici;

  if not qMedici.Active then
  begin
     qMedici.open;
     ActiveControl := cxGridMedici.Site;
     cxGridMedici.Controller.GoToFirst;
  end;

end;

procedure TFTabGenerale.dxEsenzioniClick(Sender: TObject);
begin
//  if cxPageControl.ActivePage=cxEsenzioni then exit;
  cxPageControl.ActivePage := cxEsenzioni;

  if not LkTipoEsenzione.Active then
  begin
     LkTipoEsenzione.open;
     qTbdEsenzione.Open;
  end;

  if not qEsenzioni.Active then
  begin
     qEsenzioni.open;
     qEsamiEsenzioni.open;
     ActiveControl := cxGridEsenzioni.Site;
     cxGridEsenzioni.Controller.GoToFirst;
  end;

end;

procedure TFTabGenerale.cxGridOspedaliDblClick(Sender: TObject);
begin
  PostMessage(Handle,SY_DBLCLICK,LongInt(GridOspedali),LongInt(ModiOspedale));
end;

procedure TFTabGenerale.NuovoOspedaleExecute(Sender: TObject);
begin

  if not qEsenzioni.Active then
     qEsenzioni.open;

  FEditOspedale := TFEditOspedale.Create(nil);
  try
     FEditOspedale.sTipoEsenzioni.DataSet := qEsenzioni;
     FEditOspedale.sTipoAttivita.Dataset := qTipoAttivita;

     FEditOspedale.Ospedale.opennofetch;
     FEditOspedale.Ospedale.Insert;
     if FEditOspedale.ShowModal=mrOk then
     begin
        qOspedali.InsertRefresh(FEditOspedale.OspedaleCODICE.AsString);
     end;
  finally
     FEditOspedale.Free;
  end;
end;

procedure TFTabGenerale.dxOspedaliClick(Sender: TObject);
begin
//  if cxPageControl.ActivePage=cxOspedali then exit;
  cxPageControl.ActivePage := cxOspedali;

  if not qTipoAttivita.Active then
  begin
     qTipoAttivita.open;
     qTipoImpegn.Open;
     qTipoRicov.Open;
     qRefAtt.Open;
  end;

  if not LkComuni.Active then
  begin
     LkComuni.open;
     qComType.Open;
     cxGridComuni.Controller.GoToFirst;
  end;

  if not qEsenzioni.Active then
     qEsenzioni.open;

  if not qOspedali.Active then
  begin
     qOspedali.open;
     ActiveControl := cxGridOspedali.Site;
     cxGridOspedali.Controller.GoToFirst;
  end;

end;

procedure TFTabGenerale.LkComuniNewRecord(DataSet: TDataSet);
begin
  LkComuniCOM_TYPE.AsString := '2';
  LkComuniNAZ_CODICE.AsString := '100';
end;

procedure TFTabGenerale.LkProvincieNewRecord(DataSet: TDataSet);
begin
  LkProvincieREG_CODICE.AsString := LkRegioniCODICE.AsString;
end;

procedure TFTabGenerale.dxComuniClick(Sender: TObject);
begin
//  if cxPageControl.ActivePage=cxComuni then exit;
  cxPageControl.ActivePage := cxComuni;

  if not LkProvincie.Active then
  begin
     LkProvincie.open;
  end;

  if not qNazioni.Active then
  begin
     qNazioni.open;
     qTipoNaz.Open;
  end;

  qLkASL.syRefresh;

  if not LkComuni.Active then
  begin
     LkComuni.open;
     qComType.Open;
     ActiveControl := cxGridComuni.Site;
     cxGridComuni.Controller.GoToFirst;
  end;

  qCOM_USL.OpenNoFetch;

end;

procedure TFTabGenerale.dxRegioniClick(Sender: TObject);
begin
//  if cxPageControl.ActivePage=cxRegioni then exit;
  cxPageControl.ActivePage := cxRegioni;

  if not LkRegioni.Active then
  begin
     LkRegioni.open;
     ActiveControl := cxGridRegioni.Site;
     cxGridRegioni.Controller.GoToFirst;
  end;

  if not LkProvincie.Active then
  begin
     LkProvincie.open;
  end;

end;

procedure TFTabGenerale.dxNazioniClick(Sender: TObject);
begin
//  if cxPageControl.ActivePage=cxNazioni then exit;
  cxPageControl.ActivePage := cxNazioni;

  if not qNazioni.Active then
  begin
     qNazioni.open;
     qTipoNaz.Open;
     ActiveControl := cxGridNazioni.Site;
     cxGridNazioni.Controller.GoToFirst;
  end;

end;

procedure TFTabGenerale.ModiOspedaleExecute(Sender: TObject);
begin

  if not qEsenzioni.Active then
     qEsenzioni.open;

  FEditOspedale := TFEditOspedale.Create(nil);
  try
     FEditOspedale.sTipoEsenzioni.DataSet := qEsenzioni;
     FEditOspedale.sTipoAttivita.Dataset := qTipoAttivita;

     FEditOspedale.Ospedale.Parambyname('codice').AsString := qOspedaliCODICE.AsString;
     FEditOspedale.Ospedale.open;
     FEditOspedale.Ospedale.Edit;
     if FEditOspedale.ShowModal=mrOk then
     begin
        qOspedali.RefreshRecord(FEditOspedale.OspedaleCODICE.AsString,'');
     end;
  finally
     FEditOspedale.Free;
  end;
end;

procedure TFTabGenerale.cxLkComuneFocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
{
  AFocusedItem.SortOrder := soAscending;
  APrevFocusedItem.SortOrder := soNone;
  Sender.DataController.UpdateItems(False);
}
end;

procedure TFTabGenerale.cxLkRegioniFocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
{
  AFocusedItem.SortOrder := soAscending;
  APrevFocusedItem.SortOrder := soNone;
  Sender.DataController.UpdateItems(False);
}
end;

procedure TFTabGenerale.StampaExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
  refComponent: TdxGridReportLink;
begin
  if FDMCommon.dxPrintDialog1.Execute then
  begin

    if dxASL.Down then
       refComponent := dxComponentASL
    else if dxMedici.Down then
       refComponent := dxComponentMedici
    else if dxEsenzioni.Down then
    begin
       refComponent := dxComponentEsenzioni;
       GridEsenzioniLevel2.Visible := false;
    end
    else if dxOspedali.Down then
       refComponent := dxComponentOspedali
    else if dxComuni.Down then
       refComponent := dxComponentComuni
    else if dxRegioni.Down then
       refComponent := dxComponentRegioni
    else // if dxNazioni.Down then
       refComponent := dxComponentNazioni;


     if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
        dxComponentPrinter1.Preview(true,refComponent)
     else begin
        AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
        dxComponentPrinter1.Print(false,@AData,refComponent);
     end;

    if dxEsenzioni.Down then
    begin
       GridEsenzioniLevel2.Visible := true;
    end

  end;

end;

procedure TFTabGenerale.cxPageControlPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  if not cxPageControl.Visible then
     cxPageControl.Visible := true;
end;

procedure TFTabGenerale.ApriTuttoExecute(Sender: TObject);
begin
   if cxPageControl.ActivePage=cxASL then
    	 cxGridASLDBTableView.ViewData.Expand(False)
   else if cxPageControl.ActivePage=cxMedici then
    	 cxGridMedici.ViewData.Expand(False)
   else if cxPageControl.ActivePage=cxEsenzioni then
    	 cxGridEsenzioni.ViewData.Expand(False)
   else if cxPageControl.ActivePage=cxOspedali then
    	 cxGridOspedali.ViewData.Expand(False)
   else if cxPageControl.ActivePage=cxComuni then
    	 cxGridComuni.ViewData.Expand(False)
   else if cxPageControl.ActivePage=cxRegioni then
    	 cxGridRegioni.ViewData.Expand(False)
   else if cxPageControl.ActivePage=cxNazioni then
    	 cxGridNazioni.ViewData.Expand(False);

end;

procedure TFTabGenerale.ChiudiTuttoExecute(Sender: TObject);
begin

   if cxPageControl.ActivePage=cxASL then
    	 cxGridASLDBTableView.ViewData.Collapse(False)
   else if cxPageControl.ActivePage=cxMedici then
    	 cxGridMedici.ViewData.Collapse(False)
   else if cxPageControl.ActivePage=cxEsenzioni then
    	 cxGridEsenzioni.ViewData.Collapse(False)
   else if cxPageControl.ActivePage=cxOspedali then
    	 cxGridOspedali.ViewData.Collapse(False)
   else if cxPageControl.ActivePage=cxComuni then
    	 cxGridComuni.ViewData.Collapse(False)
   else if cxPageControl.ActivePage=cxRegioni then
    	 cxGridRegioni.ViewData.Collapse(False)
   else if cxPageControl.ActivePage=cxNazioni then
    	 cxGridNazioni.ViewData.Collapse(False);

end;

procedure TFTabGenerale.StampaUpdate(Sender: TObject);
begin
  Stampa.Enabled := cxPageControl.ActivePage<>nil;
end;

procedure TFTabGenerale.ApriTuttoUpdate(Sender: TObject);
begin
  ApriTutto.Enabled := cxPageControl.ActivePage<>nil;
end;

procedure TFTabGenerale.ChiudiTuttoUpdate(Sender: TObject);
begin
  ChiudiTutto.Enabled := cxPageControl.ActivePage<>nil;
end;

procedure TFTabGenerale.dxMotiviClick(Sender: TObject);
begin
//  if cxPageControl.ActivePage=cxNazioni then exit;
  cxPageControl.ActivePage := cxMotivi;

  if not qMotivi.Active then
  begin
     qMotivi.open;
     ActiveControl := cxGridMotiviDB.Site;
     cxGridMotiviDB.Controller.GoToFirst;
  end;

end;

procedure TFTabGenerale.qMotiviNewRecord(DataSet: TDataSet);
begin
  qMotiviFLAG_TIPO.AsInteger := 1;
end;

procedure TFTabGenerale.ModiMedicoExecute(Sender: TObject);
begin
  FMedici := TFMedici.Create(nil);
  try
     FMedici.sMedici.Dataset := qMedici;
     if FMedici.ShowModal=mrOk then
        qMedici.RefreshRecord;
  finally
     FMedici.Free;
     FMedici := nil;
  end;

end;

procedure TFTabGenerale.NuovoMedicoExecute(Sender: TObject);
begin

  FMedici := TFMedici.Create(nil);
  try
     FMedici.sMedici.Dataset := qMedici;
     FMedici.sMedici.Dataset.Insert;
     if FMedici.ShowModal=mrOk then
        qMedici.RefreshRecord;
  finally
     FMedici.Free;
     FMedici := nil;
  end;

end;

procedure TFTabGenerale.cxGridMediciDblClick(Sender: TObject);
begin
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxGMedici),LongInt(ModiMedico));
end;

procedure TFTabGenerale.dxAttivitaClick(Sender: TObject);
begin

//  if cxPageControl.ActivePage=cxNazioni then exit;
  cxPageControl.ActivePage := cxTipoAttivita;

  if not qTipoAttivita.Active then
  begin
     qTipoAttivita.open;
     qTipoImpegn.Open;
     qTipoRicov.Open;
     qRefAtt.Open;
     ActiveControl := cxDBGridAttivita.Site;
     cxDBGridAttivita.Controller.GoToFirst;
  end;

end;

procedure TFTabGenerale.dxTipoTrasportoClick(Sender: TObject);
begin
  cxPageControl.ActivePage := cxTipoTrasporto;
  ActiveControl := cxDBGridTipoTrasporto.Site;
  cxDBGridTipoTrasporto.Controller.GoToFirst;

end;

procedure TFTabGenerale.dxTipoUrgenzaClick(Sender: TObject);
begin

  cxPageControl.ActivePage := cxTipoUrgenza;
  ActiveControl := cxDBGridTipoUrgenza.Site;
  cxDBGridTipoUrgenza.Controller.GoToFirst;
  LkReparti.open;
  ColorixRep.open;
  cxGridReparti.Controller.GotoFirst;
end;

procedure TFTabGenerale.LkRepartiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('osp_codice').AsString := gblospedale;
end;

procedure TFTabGenerale.sRepartiDataChange(Sender: TObject; Field: TField);
begin

  if (Field=nil) and ColorixRep.Active then
     ColorixRep.syRefresh;

end;

procedure TFTabGenerale.ColorixRepBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := LkRepartiPKREPARTI.AsInteger;
end;

procedure TFTabGenerale.cxGridDBColorixRepDragDrop(Sender, Source: TObject;
  X, Y: Integer);
var
  aSourceView: TcxGridDBTableView;
  i: integer;
  HT: TcxCustomGridHitTest;
  ADestRow: TcxCustomGridRecord;
  ADC: TcxDBDataController;
  AOrderValue: Variant;
  AOrderColumnIndex: Integer;
  Accept: boolean;
begin

  ADestRow := nil;
  aSourceView := FDMCommon.GetRealDragSourceGridView (TcxDragControlObject (Source));
//  aSourceView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));

   with TcxGridSite(Sender) do
   begin
     HT := ViewInfo.GetHitTest(X, Y);
     with TcxGridTableView(GridView) do
     begin
       ADC := TcxDBDataController(DataController);
       Accept := (HT is TcxGridRecordCellHitTest) and (TcxGridRecordCellHitTest(HT).GridRecord.RecordIndex <> GridView.DataController.FocusedRecordIndex);
       if Accept then
       begin
         ADestRow := TcxGridRecordCellHitTest(HT).GridRecord;
         AOrderColumnIndex := TcxGridColumn(ADC.GetItemByFieldName('POSIZIONE')).Index;
         AOrderValue := ADestRow.Values[AOrderColumnIndex];
       end
       else
         AOrderValue := aSourceView.Controller.SelectedRecords[0].Values[cxDBGridTipoUrgenzaPKURGENZA.Index];
     end;
  end;

  if (aSourceView=cxDBGridTipoUrgenza) then
  begin
    if aSourceView.DataController.FocusedRecordIndex<>-1 then
    begin
       for i:=0 to aSourceView.Controller.SelectedRecordCount-1 do
       begin
         ColorixRep.Append;
         ColorixRepREPARTI_FK.AsInteger := LkRepartiPKREPARTI.AsInteger; // aSourceView.Controller.SelectedRecords[i].Values[cxGridRepartiPKREPARTI.Index];
         ColorixRepURGENZA_FK.AsInteger := aSourceView.Controller.SelectedRecords[i].Values[cxDBGridTipoUrgenzaPKURGENZA.Index];
         ColorixRepPOSIZIONE.Value := AOrderValue;
         AOrderValue := AOrderValue+1;
         ColorixRep.Post;
       end;
       ColorixRep.syRefresh;
       ColorixRep.Locate('URGENZA_FK',aSourceView.Controller.SelectedRecords[0].Values[cxDBGridTipoUrgenzaPKURGENZA.Index],[]);
    end;
  end;

  if Assigned(ADestRow) then
  with TcxGridSite(Sender) do
    ReorderRows(TcxGridTableView(GridView), ADestRow);

end;

procedure TFTabGenerale.cxGridDBColorixRepDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  aSourceView: TcxGridDBTableView;
  HT: TcxCustomGridHitTest;
begin
  Accept := false;
  if (Source is TcxDragControlObject) and (Sender is TcxGridSite) then
  begin
     aSourceView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
     Accept := (aSourceView=cxDBGridTipoUrgenza) or (aSourceView=cxGridDBColorixRep);
     if (aSourceView=cxGridDBColorixRep) then
     begin
        with TcxGridSite(Sender) do
        begin
          HT := ViewInfo.GetHitTest(X, Y);
          Accept := (HT is TcxGridRecordCellHitTest) and (TcxGridRecordCellHitTest(HT).GridRecord.RecordIndex <> GridView.DataController.FocusedRecordIndex)
        end;
     end;
  end;
end;

procedure TFTabGenerale.cxDBGridTipoUrgenzaDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  aSourceView: TcxGridDBTableView;
begin

  Accept := false;
  if (Source is TcxDragControlObject) and (Sender is TcxGridSite) then
  begin
     aSourceView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
     Accept := (aSourceView=cxGridDBColorixRep);
  end;

end;

procedure TFTabGenerale.cxDBGridTipoUrgenzaDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  aSourceView: TcxGridDBTableView;
//  SourceData: TAstaClientDataset;
begin

  aSourceView := FDMCommon.GetRealDragSourceGridView (TcxDragControlObject (Source));
//  SourceData := aSourceView.DataController.Datasource.DataSet as TAstaClientDataset;
  aSourceView.Controller.DeleteSelection;
  ColorixRep.syRefresh;

end;

procedure TFTabGenerale.cxGridSconosciutiDBTableView1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
  NBDI_INSERT: begin
//                PostMessage(Handle,SY_DBLCLICK,0,LongInt(NuovaFirma));
                aNuovoSconosciuto.Execute;
                ADone := true;
               end;
  end;

end;

procedure TFTabGenerale.aNuovoSconosciutoExecute(Sender: TObject);
var
  pka,trovato: integer;
begin

  FRicAssistito := TFRicAssistito.Create(nil);
  try

   FRicAssistito.QRicerca.Parambyname('xsan_ident').AsString := '#';
   FRicAssistito.QRicerca.Parambyname('data_decesso').AsString := '#';

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
      try
      Sconosciuti.Append;
      SconosciutiASSISTIBILI_FK.AsInteger := pka;
      Sconosciuti.Post;
      Sconosciuti.RefreshRecord;
      except
         Sconosciuti.Cancel;
      end;
   end;

end;

procedure TFTabGenerale.dxSconosciutiClick(Sender: TObject);
begin

  cxPageControl.ActivePage := cxSconosciuti;
  ActiveControl := cxGridSconosciutiDBTableView1.Site;
  Sconosciuti.syRefresh;
  cxGridSconosciutiDBTableView1.Controller.GoToFirst;

end;

procedure TFTabGenerale.cxGridMediciNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
  NBDI_INSERT: begin
                NuovoMedico.Execute;
                ADone := true;
               end;
  NBDI_EDIT  : begin
                ModiMedico.Execute;
                ADone := true;
               end;
  end;
end;

procedure TFTabGenerale.cxGridOspedaliNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
  NBDI_INSERT: begin
                NuovoOspedale.Execute;
                ADone := true;
               end;
  NBDI_EDIT  : begin
                ModiOspedale.Execute;
                ADone := true;
               end;
  end;

end;

procedure TFTabGenerale.dxFesteClick(Sender: TObject);
begin

  cxPageControl.ActivePage := cxFeste;
  ActiveControl := cxGridFesteDBTableView1.Site;
  qFeste.syRefresh;
  qFesteReparto.syRefresh;
  cxGridFesteDBTableView1.Controller.GoToFirst;

end;

procedure TFTabGenerale.dxTipoMedicoClick(Sender: TObject);
begin

  cxPageControl.ActivePage := cxTipoMedico;
  ActiveControl := cxGridTipoMedicoDBTableView1.Site;
  qTipoMedico.syRefresh;
  cxGridTipoMedicoDBTableView1.Controller.GoToFirst;

end;

procedure TFTabGenerale.dxTipoAccessoClick(Sender: TObject);
begin

  cxPageControl.ActivePage := cxTipoAccesso;
  ActiveControl := cxGridTipoAccessoDBTableView1.Site;
  qTipoAccesso.syRefresh;
  cxGridTipoAccessoDBTableView1.Controller.GoToFirst;

end;

procedure TFTabGenerale.dxTipoEsenzioneClick(Sender: TObject);
begin

  cxPageControl.ActivePage := cxTipoEsenzione;
  ActiveControl := cxGridTipoEsenzioneDBTableView1.Site;
  LkTipoEsenzione.syRefresh;
  qTbdEsenzione.syRefresh;
  cxGridTipoEsenzioneDBTableView1.Controller.GoToFirst;

end;

procedure TFTabGenerale.dxBrancheClick(Sender: TObject);
begin

  cxPageControl.ActivePage := cxTabBranche;
  ActiveControl := cxGridBrancheDBTableView1.Site;
  qBranche.syRefresh;
  cxGridBrancheDBTableView1.Controller.GoToFirst;

end;

procedure TFTabGenerale.qPatologicalNewRecord(DataSet: TDataSet);
begin
  qPatologicalAID.AsString := qAnatomicalAID.AsString;
end;

procedure TFTabGenerale.dxACRClick(Sender: TObject);
begin

  cxPageControl.ActivePage := cxTabACR;
  ActiveControl := cxGridACRAnatomical.Site;

  if not qAnatomical.Active then
  begin
    qAnatomical.syRefresh;
    qPatological.syRefresh;
  end;
  cxGridACRAnatomical.Controller.GoToFirst;

end;

procedure TFTabGenerale.dxScreeningClick(Sender: TObject);
begin

  cxPageControl.ActivePage := cxTabScreening;
  ActiveControl := cxGridTipoLivello.Site;
  scrTipoLivello.syRefresh;
  scrTabEsitoScreening.syRefresh;
  scrEsamixlivello.syRefresh;

  cxGridTipoLivello.Controller.GoToFirst;

end;

procedure TFTabGenerale.dxTipoRicettaClick(Sender: TObject);
begin

  cxPageControl.ActivePage := cxTabTipoRicetta;
  ActiveControl := cxGridTipoRicettaDBTableView1.Site;

  qTipoRicetta.syRefresh;
  if not qTipoAttivita.Active then
  begin
     qTipoAttivita.open;
     qTipoImpegn.Open;
     qTipoRicov.Open;
     qRefAtt.Open;
  end;

  cxGridTipoRicettaDBTableView1.Controller.GoToFirst;

end;


function TFTabGenerale.GetCanClose: Boolean;
begin

  result := inherited GetCanClose;

  if result then
  begin

    if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5) then
    begin
      rsPropSaver1.SaveValues;
      rsPropSaver1.Storage.Save;
    end;
    
    if qAnatomical.Active then
    begin
      FDMCommon.acr_anatomical.syRefresh;
      FDMCommon.acr_patological.syRefresh;
    end;

    if qTipoAttivita.Active then
    begin
       FDMCommon.LkTipoRicetta.syRefresh;
    end;

    if (FDMCommon.LeggiPostoLavoroCHK_CONSEGNA_REF.AsInteger>0) and not FDMCommon.qTipoInvio.Active then
       FDMCommon.qTipoInvio.syRefresh;

  {JRT 4864}
    if qSmartCard.Active then
    begin
       FDMCommon.DllFirma.syRefresh;
    end;
  {}

    if LkTipoRefVoc.Active then
    begin
       FDMCommon.LkTipoRefVoc.syRefresh;
    end;

    if scrTabEsitoScreening.Active then
    begin
          FDMCommon.LkTabEsitoScreening.syRefresh;
          FDMCommon.TabEsitoScreening.syRefresh;
    end;

    if qSkin.Active then
    begin
       FDMCommon.LkSkin.syRefresh;
    end;

    if TabStatoReferto.Active then
    begin
       FDMCommon.TabStatoReferto.syRefresh;
    end;

  end;

end;


procedure TFTabGenerale.cxGridStradarioDBTableView2DataControllerDataModeControllerDetailFirst(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
begin
  FDMCommon.DetailFirst(ADataSet,AMasterDetailKeyFieldNames,AMasterDetailKeyValues,AReopened);
end;

function TFTabGenerale.cxGridStradarioDBTableView2DataControllerDataModeControllerDetailIsCurrentQuery(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant): Boolean;
begin
  result := FDMCommon.DetailIsCurrentQuery(ADataSet,AMasterDetailKeyFieldNames,AMasterDetailKeyValues);
end;

procedure TFTabGenerale.dxStradarioClick(Sender: TObject);
begin

  cxPageControl.ActivePage := cxStradario;
  ActiveControl := cxGridStradarioDBTableView1.Site;

  if not qComStradario.Active then
  begin
     qComStradario.syRefresh;
     qStradario.ParamByName('cod_com').Clear;
     qStradario.syRefresh;
  end;

  cxGridStradarioDBTableView1.Controller.GoToFirst;

end;

procedure TFTabGenerale.qStradarioNewRecord(DataSet: TDataSet);
begin
  qStradarioCOD_COM.AsString := qComStradarioCOD_COM.AsString;
end;

procedure TFTabGenerale.dxTipoInvioClick(Sender: TObject);
begin

  cxPageControl.ActivePage := cxTipoInvio;
  ActiveControl := cxGridTipoInvioDBTable.Site;

  if not qTipoInvio.Active then
  begin
     qTipoInvio.syRefresh;
  end;

  cxGridTipoInvioDBTable.Controller.GoToFirst;

  FDMCommon.qTipoInvio.close;

end;

procedure TFTabGenerale.qSmartCardNewRecord(DataSet: TDataSet);
begin
  qSmartCardATTIVO.AsInteger := 1;
end;

procedure TFTabGenerale.dxSmartCardClick(Sender: TObject);
begin

  cxPageControl.ActivePage := cxSmartCard;
  ActiveControl := cxGridSmartCardDBTable.Site;

  if not qSmartCard.Active then
  begin
     qSmartCard.syRefresh;
  end;

  cxGridSmartCardDBTable.Controller.GoToFirst;

end;

procedure TFTabGenerale.cxGridASLCOMDBViewDataControllerDataModeControllerDetailFirst(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
begin
  with qUSL_COM do
  begin
    if (ParamByName('reg_codice').Value = AMasterDetailKeyValues[0]) and
      (ParamByName('codice').Value = AMasterDetailKeyValues[1]) then
    begin
      First;
    end
    else begin
      Active := False;
      ParamByName('reg_codice').Value := AMasterDetailKeyValues[0];
      ParamByName('codice').Value := AMasterDetailKeyValues[1];
      syRefresh;
      AReopened := True;
    end;
  end;
end;

function TFTabGenerale.cxGridASLCOMDBViewDataControllerDataModeControllerDetailIsCurrentQuery(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant): Boolean;
begin
  with qUSL_COM do
    Result := (ParamByName('reg_codice').Value = AMasterDetailKeyValues[0]) and
              (ParamByName('codice').Value = AMasterDetailKeyValues[1]);
end;

procedure TFTabGenerale.CXGridComuniASLDataControllerDataModeControllerDetailFirst(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
begin
  with qcom_USL do
  begin
    if (ParamByName('codcom').Value = AMasterDetailKeyValues[0]) then
    begin
      First;
    end
    else begin
      Active := False;
      ParamByName('codcom').Value := AMasterDetailKeyValues[0];
      syRefresh;
      AReopened := True;
{
      qLkASL.ParamByName('reg_codice').Value := AMasterDetailKeyValues[1];
      qLkASL.syRefresh;
}
    end;
  end;
end;

function TFTabGenerale.CXGridComuniASLDataControllerDataModeControllerDetailIsCurrentQuery(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant): Boolean;
begin
  with qcom_USL do
  begin
    Result := (ParamByName('codcom').Value = AMasterDetailKeyValues[0]);
{
    if not Result then
    begin
      qLkASL.ParamByName('reg_codice').Value := AMasterDetailKeyValues[1];
      qLkASL.syRefresh;
    end;
}
  end;
end;

procedure TFTabGenerale.qCOM_USLNewRecord(DataSet: TDataSet);
begin
  qCOM_USLREG_CODICE.AsString := LkComuniREG_CODICE.AsString;
  qCOM_USLCODCOM.AsString := LkComuniCODICE.AsString;
end;

procedure TFTabGenerale.qUSL_COMNewRecord(DataSet: TDataSet);
begin
  qUSL_COMCOD_ASL.AsString := qLkASLCODICE.AsString;
  qUSL_COMREG_CODICE.AsString := qLkASLREG_CODICE.AsString;
end;

procedure TFTabGenerale.dxTipoModalitaClick(Sender: TObject);
begin

  cxPageControl.ActivePage := cxTipoModalita;
  ActiveControl := cxGridTipoModalitaDBTable.Site;

  if not qTipo_Modalita.Active then
  begin
     qTipo_Modalita.syRefresh;
  end;

  cxGridTipoModalitaDBTable.Controller.GoToFirst;

end;

procedure TFTabGenerale.dxIdAuthClick(Sender: TObject);
begin

  cxPageControl.ActivePage := cxIdAuth;
  ActiveControl := cxGridIdAuthDBTable.Site;

  if not qIdAuth.Active then
  begin
     qIdAuth.syRefresh;
  end;

  cxGridIdAuthDBTable.Controller.GoToFirst;

end;

procedure TFTabGenerale.cxGridEsitoScreeningSHORTCUTPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  fme: TFEditorShortcut;
begin
{JRT 5528}
  fme := TFEditorShortcut.Create(nil);
  try
    fme.hkyShortCut.HotKey := TextToShortCut(scrTabEsitoScreeningSHORTCUT.AsString);
    if fme.ShowModal=mrOk then
    begin
      if not (scrTabEsitoScreening.State in dsEditModes) then
         scrTabEsitoScreening.Edit;
      scrTabEsitoScreeningSHORTCUT.AsString := ShortCutToText(fme.hkyShortCut.HotKey);
    end;
  finally
    fme.Free;
  end;
{}
end;

procedure TFTabGenerale.dxTipoBloccoClick(Sender: TObject);
begin
  inherited;

  cxPageControl.ActivePage := cxBlocchi;
  ActiveControl := cxGridDBTableBlocchi.Site;

  if not qBlocchi.Active then
  begin
     qBlocchi.syRefresh;
  end;

  cxGridDBTableBlocchi.Controller.GoToFirst;

end;

procedure TFTabGenerale.dxColoriClick(Sender: TObject);
begin
  inherited;

  cxPageControl.ActivePage := cxColori;
  ActiveControl := cxGridDBTableColori.Site;

  if not qSET_COLORI.Active then
  begin
     qSET_COLORI.syRefresh;
  end;

  cxGridDBTableColori.Controller.GoToFirst;

end;

procedure TFTabGenerale.dxProfiliRepartiClick(Sender: TObject);
begin
  inherited;

  cxPageControl.ActivePage := cxProfili;
  ActiveControl := cxGridProfiliDBTableView1.Site;

  if not qProfili.Active then
  begin
     qProfili.syRefresh;
  end;

  cxGridProfiliDBTableView1.Controller.GoToFirst;

end;

procedure TFTabGenerale.dxAuditClick(Sender: TObject);
begin
  inherited;

  cxPageControl.ActivePage := cxAudit;
  ActiveControl := cxGridAuditDBTableView1.Site;

  if not qAudit.Active then
  begin
     qAudit.syRefresh;
  end;

  cxGridAuditDBTableView1.Controller.GoToFirst;

end;

procedure TFTabGenerale.qFesteRepartoNewRecord(DataSet: TDataSet);
begin
  inherited;
  qFesteRepartoREPARTI_FK.AsInteger := gblpkrep;
end;

procedure TFTabGenerale.qFesteRepartoBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFTabGenerale.cxGridDBColorixRepStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  inherited;
  with TcxGridDBTableView(TcxGridSite(Sender).GridView) do
    //AKeys := Controller.FocusedRecord.Values[cxGrid1DBTableView1ID.Index];
    AKeys := DataController.DataSet.FieldValues['URGENZA_FK'];

end;

procedure TFTabGenerale.ReorderRows(AView: TcxGridTableView; ADestRow: TcxCustomGridRecord);
var
  I: Integer;
  ADC: TcxDBDataController;
  AOrderValue: Variant;
  AOrderColumnIndex: Integer;
  IsUpper: Boolean;
begin
  with AView do
  begin
    ADC := TcxDBDataController(DataController);
    AOrderColumnIndex := TcxGridColumn(ADC.GetItemByFieldName('POSIZIONE')).Index;
    AOrderValue := ADestRow.Values[AOrderColumnIndex];
    IsUpper := ADestRow .Index < ADC.GetRowIndexByRecordIndex(ADC.FindRecordIndexByKey(AKeys), False);
  end;
  ADestRow.Focused := True;
  SetOrderValue(ADC.DataSet, AOrderValue - Ord(not IsUpper) + 5); // move dragged record 1 record lower
  ADC.LocateByKey(AKeys); // focus the dragged record in the DataSet
  SetOrderValue(ADC.DataSet, AOrderValue);
  if isUpper then
    ADC.GotoLast
  else
    ADC.GotoFirst;
  I := 0;
  while ADC.Values[ADC.FocusedRecordIndex, AOrderColumnIndex] <> AOrderValue do
  begin
    SetOrderValue(ADC.DataSet, Ord(IsUpper) * ADC.RowCount - Sign(Ord(IsUpper) - 1) * (I + Ord(not IsUpper)));
    Inc(I);
    if IsUpper then
      ADC.GotoPrev
    else
      ADC.GotoNext;
  end;
end;

procedure TFTabGenerale.SetOrderValue(DS: TDataSet; AValue: Variant);
begin;
  DS.Edit;
  DS.FieldByName('POSIZIONE').Value := AValue;
  DS.Post;
end;

procedure TFTabGenerale.cxGridVerificaStampeDBTableView1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
  NBDI_INSERT: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(aNuovaVerifica));
                ADone := true;
               end;
  NBDI_EDIT  : begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(aNuovaVerifica));
                ADone := true;
               end;
  end;



end;

procedure TFTabGenerale.aNuovaVerificaExecute(Sender: TObject);
begin
  inherited;
  FEditVerificaStampe := TFEditVerificaStampe.Create(nil);
  try
     FEditVerificaStampe.sqVerificaStampe.DataSet := qVerificaStampe;
     qVerificaStampe.Insert;
     if FEditVerificaStampe.ShowModal=mrOk then
     begin
       if (qVerificaStampe.State in dsEditModes) then
           qVerificaStampe.Post;
     end;
  finally
     FreeAndNil(FEditVerificaStampe);
  end;

end;

procedure TFTabGenerale.aEditVerificaStampeExecute(Sender: TObject);
begin
  inherited;
  FEditVerificaStampe := TFEditVerificaStampe.Create(nil);
  try
     FEditVerificaStampe.sqVerificaStampe.DataSet := qVerificaStampe;
     qVerificaStampe.Edit;
     if FEditVerificaStampe.ShowModal=mrOk then
     begin
       if (qVerificaStampe.State in dsEditModes) then
           qVerificaStampe.Post;
     end;
  finally
     FreeAndNil(FEditVerificaStampe);
  end;

end;

procedure TFTabGenerale.aEditVerificaStampeUpdate(Sender: TObject);
begin
  inherited;
  aEditVerificaStampe.Enabled := not qVerificaStampe.IsEmpty;
end;

procedure TFTabGenerale.dxVerificaStampeClick(Sender: TObject);
begin
  inherited;
  cxPageControl.ActivePage := cxVerificaStampe;
  ActiveControl := cxGridVerificaStampeDBTableView1.Site;

  if not qVerificaStampe.Active then
  begin
     qVerificaStampe.syRefresh;
  end;

  cxGridVerificaStampeDBTableView1.Controller.GoToFirst;

end;

procedure TFTabGenerale.cxGridEsamiEsentiPRESTSPEC_FKPropertiesInitPopup(
  Sender: TObject);
begin
  inherited;
  if not qPrestSpec.Active then
     qPrestSpec.syRefresh;
end;

procedure TFTabGenerale.cxGridEsamixlivelloCODICIRAD_FKPropertiesInitPopup(
  Sender: TObject);
begin
  inherited;
  if not CodiciRad.Active then
     CodiciRad.syRefresh;
end;

procedure TFTabGenerale.cxGridSkinDBTableView1SKINPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if OpenDialog1.Execute then
  begin
     if not (qSkin.State in dsEditModes) then
        qSkin.Edit;
     qSkinSKIN.LoadFromFile(OpenDialog1.FileName);
     if qSkinNOME.IsNull then
        qSkinNOME.AsString := ExtractFileName(OpenDialog1.FileName);
  end;
end;

procedure TFTabGenerale.dxSkinClick(Sender: TObject);
begin
  inherited;
  cxPageControl.ActivePage := cxTabSkin;
  ActiveControl := cxGridSkinDBTableView1.Site;

  if not qSkin.Active then
  begin
     qSkin.syRefresh;
  end;

  cxGridSkinDBTableView1.Controller.GoToFirst;

end;

procedure TFTabGenerale.dxTipoRefertazioneClick(Sender: TObject);
begin
  inherited;
  cxPageControl.ActivePage := cxTabTipoRefertazione;
  ActiveControl := cxGridTipoRefertazioneDBTableView1.Site;

  if not LkTipoRefVoc.Active then
  begin
     LkTipoRefVoc.syRefresh;
  end;

  cxGridTipoRefertazioneDBTableView1.Controller.GoToFirst;

end;

procedure TFTabGenerale.dxStatoRefertoClick(Sender: TObject);
begin
  inherited;
  cxPageControl.ActivePage := cxTabStatoReferto;
  ActiveControl := cxGridStatoRefertoDBTableView1.Site;

  if not TabStatoReferto.Active then
  begin
     TabStatoReferto.syRefresh;
  end;

  cxGridStatoRefertoDBTableView1.Controller.GoToFirst;

end;

procedure TFTabGenerale.qComTypeBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFTabGenerale.qTbdEsenzioneBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFTabGenerale.LkTipoEsenzioneBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFTabGenerale.qTipoImpegnBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFTabGenerale.qTipoNazBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFTabGenerale.qTipoRicovBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFTabGenerale.qRefAttBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFTabGenerale.SconosciutiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFTabGenerale.dxTraduzioniClick(Sender: TObject);
begin
  inherited;
  cxPageControl.ActivePage := cxTabTraduzioni;
  ActiveControl := cxGridTraduzioniDBTableView1.Site;

  if not qLingue.Active then
  begin
     qLingue.Open;
     if VarIsNull(cxLinguaBase.EditValue) then
     begin
        cxLinguaBase.EditValue := FDMCommon.Param_TicketLINGUA.AsString;
        cxLinguaDaTradurre.EditValue := FDMCommon.Param_TicketLINGUA.AsString;
     end;
     qTraduzioniN.Open;
     qTraduzioniC.Open;
     qSetDesc.Open;
  end;

  cxGridTraduzioniDBTableView2.Controller.GoToFirst;
  cxGridTraduzioniDBTableView3.Controller.GoToFirst;
  cxGridTraduzioniDBTableView1.Controller.GoToFirst;
  
end;

procedure TFTabGenerale.qTraduzioniNBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.ParamByName('linguabase').Value := cxLinguaBase.EditValue;
  Sender.ParamByName('datradurre').Value := cxLinguaDaTradurre.EditValue;
end;

procedure TFTabGenerale.cxLinguaBasePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  qTraduzioniN.syRefresh;
  qTraduzioniC.syRefresh;
  qSetDesc.syRefresh;
end;

procedure TFTabGenerale.cxLinguaDaTradurrePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  qTraduzioniN.syRefresh;
  qTraduzioniC.syRefresh;
  qSetDesc.syRefresh;
end;

procedure TFTabGenerale.qTraduzioniCBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.ParamByName('linguabase').Value := cxLinguaBase.EditValue;
  Sender.ParamByName('datradurre').Value := cxLinguaDaTradurre.EditValue;
end;

procedure TFTabGenerale.qSetDescBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.ParamByName('linguabase').Value := cxLinguaBase.EditValue;
  Sender.ParamByName('datradurre').Value := cxLinguaDaTradurre.EditValue;
end;

procedure TFTabGenerale.qOspedaliBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFTabGenerale.DoShow;
begin
  inherited;
    rsPropSaver1.Storage.Load;
    rsPropSaver1.LoadValues;

    if FDMCommon.LeggiPostoLavoroCHECK_MOTIVOCANC.AsInteger=0 then
       dxMotivi.Visible := ivNever;
    FDMCommon.PopulateImages(TcxImageComboBoxProperties(cxDBGridTipoTrasportoIMAGEINDEX.Properties));
    FDMCommon.PopulateImages(TcxImageComboBoxProperties(cxDBGridTipoUrgenzaIMAGEINDEX.Properties));
    FDMCommon.PopulateImages(TcxImageComboBoxProperties(cxGridDBColorixRepIMAGEINDEX.Properties));

    if FDMCommon.LeggiPostoLavoroCHECK_ACR.AsInteger=0 then
      dxACR.Visible := ivNever;

    if not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=2) then
      dxScreening.Visible := ivNever;

    if (FDMCommon.LeggiPostoLavoroCHK_CONSEGNA_REF.AsInteger=0) then
      dxTipoInvio.Visible := ivNever;

    if not gblSuperUser then
      dxAudit.Visible := ivNever;

    if not gblSuperUser then
       dxTraduzioni.Visible := ivNever;
    
end;

procedure TFTabGenerale.CXGridComuniASLInitEdit(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit);
begin
  inherited;
  qLkASL.CancelRange;
  qLkASL.SetRange([LkComuniREG_CODICE.Value],[LkComuniREG_CODICE.Value]);
end;

initialization
  Classes.RegisterClass(TFTabGenerale);

end.