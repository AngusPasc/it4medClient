unit zRadCodDiagn;

interface

uses
  Forms, {}BaseGrid, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxCheckBox, cxDBLookupComboBox, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  rsStorage, rsPropSaver, dxPSCore, dxPScxCommon, dxBar, cxClasses,
  AstaDrv2, AstaClientDataset, Classes, ActnList, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, ExtCtrls, cxSplitter, cxPC, Controls, rsXmlData,
  dxBarBuiltInMenu, dxPSPrVwAdv, dxPSPrVwRibbon, dxPSdxDBOCLnk,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPScxSchedulerLnk;


type
  TFzRadCodDiagn = class(TFBaseGrid)
    sServizi: TDataSource;
    ActionList1: TActionList;
    EspandiTutto: TAction;
    ChiudiTutto: TAction;
    Servizi: TAstaClientDataSet;
    EsamixDiagn: TAstaClientDataSet;
    sEsamixDiagn: TDataSource;
    sGruppi: TDataSource;
    sPrestazioni: TDataSource;
    qSpostaGruppi: TAstaClientDataSet;
    qSpostaRiga: TAstaClientDataSet;
    ServiziTIPO_SERVIZIO: TStringField;
    dxBarManagerRadDiagn: TdxBarManager;
    Panel1: TPanel;
    Splitter1: TcxSplitter;
    Splitter2: TcxSplitter;
    dxBarPopupSelez: TdxBarPopupMenu;
    EliminaCodice: TAction;
    EliminaTutti: TAction;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    AggiungiCodice: TAction;
    dxBarButton11: TdxBarButton;
    dxBarPopupCodici: TdxBarPopupMenu;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    EsamixDiagnCODICE: TStringField;
    EsamixDiagnDESCRIZIONE: TStringField;
    EsamixDiagnFREQUENZA: TIntegerField;
    EsamixDiagnCODICIRAD_FK: TIntegerField;
    ServiziDESCRIZIONE: TStringField;
    cxGridCodiciLevel1: TcxGridLevel;
    cxGridCodici: TcxGrid;
    GridCodici: TcxGridDBTableView;
    GridCodiciDESCRIZIONE: TcxGridDBColumn;
    GridCodiciCODICE: TcxGridDBColumn;
    GridCodiciPKCODICIRAD: TcxGridDBColumn;
    GridCodiciIDENT_FK: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    GridSelezionati: TcxGridDBTableView;
    GridSelezionatiCODICE: TcxGridDBColumn;
    GridSelezionatiDESCRIZIONE: TcxGridDBColumn;
    GridSelezionatiFREQUENZA: TcxGridDBColumn;
    GridSelezionatiPKPRESTSPECMULT: TcxGridDBColumn;
    cxGridServizi: TcxGrid;
    cxGridServiziLevel1: TcxGridLevel;
    GridServizi: TcxGridDBTableView;
    GridServiziDESCRIZIONE: TcxGridDBColumn;
    GridServiziTIPO_SERVIZIO: TcxGridDBColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    dxStampa: TdxBarButton;
    aStampa: TAction;
    cxPageControl1: TcxPageControl;
    TabAssegna: TcxTabSheet;
    TabVerifica: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridEsami: TcxGridDBTableView;
    cxGridCodiciCODICE: TcxGridDBColumn;
    cxGridCodiciDESCRIZIONE: TcxGridDBColumn;
    cxGridCodiciIDENT_FK: TcxGridDBColumn;
    cxGridCodiciDURATA: TcxGridDBColumn;
    cxGridCodiciPKCODICIRAD: TcxGridDBColumn;
    cxGridCodiciGRUPPO: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    DiagnxEsami: TAstaClientDataSet;
    sDiagnxEsami: TDataSource;
    cxGrid2Level2: TcxGridLevel;
    cxGridDiagnxEsami: TcxGridDBTableView;
    cxGridDiagnxEsamiDIAGNOSTICA: TcxGridDBColumn;
    dxBarDockControl3: TdxBarDockControl;
    dxTutti: TdxBarButton;
    dxNonAssociati: TdxBarButton;
    PrestNonAss: TAstaClientDataSet;
    PrestNonAssCODICE: TStringField;
    PrestNonAssIDENT_FK: TStringField;
    PrestNonAssDATA_INIZIO: TDateTimeField;
    PrestNonAssDATA_FINE: TDateTimeField;
    PrestNonAssCOMPOSTO: TIntegerField;
    PrestNonAssGRUPPO: TStringField;
    PrestNonAssDESCGRUPPO: TStringField;
    PrestNonAssDURATA: TIntegerField;
    PrestNonAssPKCODICIRAD: TIntegerField;
    EsamixDiagnDURATA: TIntegerField;
    GridSelezionatiDURATA: TcxGridDBColumn;
    GridCodiciDURATA: TcxGridDBColumn;
    LkTariffario: TAstaClientDataSet;
    LkTariffarioIDENT: TStringField;
    LkTariffarioDESCRIZIONE: TStringField;
    LkTariffarioDATA_FINE: TDateTimeField;
    LkTariffarioDATA_INIZIO: TDateTimeField;
    LkTariffarioLAST_MOD: TDateTimeField;
    LkTariffarioUSER_ID: TIntegerField;
    LkTariffarioTAR_TICKET: TFloatField;
    EsamixDiagnPRENOTA: TIntegerField;
    GridSelezionatiPRENOTA: TcxGridDBColumn;
    cxGridDiagnxEsamiPRENOTA: TcxGridDBColumn;
    aTogliSelezione: TAction;
    TogliSelezione: TAstaClientDataSet;
    aSelezionaTutti: TAction;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxComponentPrinter1Link2: TdxGridReportLink;
    StampaLista: TAction;
    dxBarButton6: TdxBarButton;
    LkTariffarioEXTRA_TARIFFARIO: TIntegerField;
    LkTariffarioLEG_CODICE: TStringField;
    ServiziSLOT_STANDARD: TIntegerField;
    GridServiziSLOT_STANDARD: TcxGridDBColumn;
    GridCodiciGRUPPO: TcxGridDBColumn;
    GridCodiciCODSUB: TcxGridDBColumn;
    EsamixDiagnPKESAMIXDIAGN: TIntegerField;
    ServiziPKSERVIZI: TIntegerField;
    ServiziREPARTI_FK: TIntegerField;
    EsamixDiagnSERVIZI_FK: TIntegerField;
    PrestNonAssDESCRIZIONE: TStringField;
    EsamixDiagnGRESAMI: TStringField;
    GridSelezionatiGRESAMI: TcxGridDBColumn;
    ModificaDiagnostica: TAction;
    ServiziDATA_FINE: TDateTimeField;
    ServiziDATA_INIZIO: TDateTimeField;
    ServiziESEGUITO: TIntegerField;
    ServiziMAX_TIME_PRENO: TIntegerField;
    ServiziNO_TSRM_IN_REFERTO: TIntegerField;
    ServiziREPARTO: TStringField;
    Prestazioni: TAstaClientDataSet;
    PrestazioniCODICE: TStringField;
    PrestazioniDESCRIZIONE: TStringField;
    PrestazioniPKCODXRAD: TIntegerField;
    PrestazioniPKCODICIRAD: TIntegerField;
    PrestazioniIDENT_FK: TStringField;
    PrestazioniDATA_INIZIO: TDateTimeField;
    PrestazioniDATA_FINE: TDateTimeField;
    PrestazioniCOMPOSTO: TIntegerField;
    PrestazioniDURATA: TIntegerField;
    PrestazioniGRUPPO: TStringField;
    PrestazioniDESCGRUPPO: TStringField;
    GridServiziDATA_FINE: TcxGridDBColumn;
    EsamixDiagnREPARTI_FK: TIntegerField;
    EsamixDiagnPROVENIENZA: TStringField;
    GridSelezionatiREPARTI_FK: TcxGridDBColumn;
    sRadRichieste: TDataSource;
    RadRichieste: TAstaClientDataSet;
    RadRichiesteRADIOLOGIA: TStringField;
    RadRichiestePKREPARTI: TIntegerField;
    GridSelezionatiPROVENIENZA: TcxGridDBColumn;
    EsamixDiagnSTD: TIntegerField;
    GridSelezionatiSTD: TcxGridDBColumn;
    ServiziORE_PRIMA: TIntegerField;
    ServiziALLOCA_MODALITA: TIntegerField;
    cxGridDiagnxEsamiSTD: TcxGridDBColumn;
    cxGridDiagnxEsamiDURATA: TcxGridDBColumn;
    cxGridDiagnxEsamiGRESAMI: TcxGridDBColumn;
    cxGridDiagnxEsamiREPARTI_FK: TcxGridDBColumn;
    cxGridDiagnxEsamiPROVENIENZA: TcxGridDBColumn;
    ServiziCODICE: TStringField;
    GridServiziCODICE: TcxGridDBColumn;
    aInviaTutti: TAction;
    qAssegnaRad: TAstaClientDataSet;
    GridSelezionatiPKESAMIXDIAGN: TcxGridDBColumn;
    dxBarButton3: TdxBarButton;
    aTogliInvio: TAction;
    dxBarButton9: TdxBarButton;
    aDiagnInMemoria: TAction;
    aCopiaEsami: TAction;
    CopiaEsamiDiagn: TAstaClientDataSet;
    dxBarButton10: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarPopupDiagnostiche: TdxBarPopupMenu;
    ServiziUNIFICA_REF: TIntegerField;
    dxNonAssegnati: TdxBarButton;
    dxTuttiEsami: TdxBarButton;
    rsPropSaver1: TrsPropSaver;
    ModificaRadEsame: TAction;
    Gruppi: TAstaClientDataSet;
    GruppiGRESAMI: TStringField;
    GruppiDESCRIZIONE: TStringField;
    GruppiPKGRESAMI: TIntegerField;
    GruppiREPARTI_FK: TIntegerField;
    GruppiPESO_MEDICO: TFloatField;
    GruppiPESO_TECNICO: TFloatField;
    GruppiTIPO_MODALITA: TStringField;
    GruppiDATA_FINE: TDateTimeField;
    dxBarButton1: TdxBarButton;
    LkBranche: TAstaClientDataSet;
    LkBrancheDESCRIZIONE: TStringField;
    LkBranchePKBRANCHE: TStringField;
    DiagnxServ: TAstaClientDataSet;
    DiagnxServDIAGNOSTICA_FK: TIntegerField;
    DiagnxServSERVIZI_FK: TIntegerField;
    dxBarButton2: TdxBarButton;
    ServiziCTRL_ESEGUITO: TIntegerField;
    ServiziCHK_MED_MEMORY: TIntegerField;
    ServiziCHK_OVERBOOKING: TIntegerField;
    ServiziCHK_NON_REFERTARE: TIntegerField;
    ServiziTIPO_DIAGN: TIntegerField;
    ServiziPACS_FK: TIntegerField;
    DiagnxEsamiCODICE: TStringField;
    DiagnxEsamiDESCRIZIONE: TStringField;
    DiagnxEsamiSTD: TIntegerField;
    DiagnxEsamiDURATA: TIntegerField;
    DiagnxEsamiGRESAMI: TStringField;
    DiagnxEsamiPKESAMIXDIAGN: TIntegerField;
    DiagnxEsamiFREQUENZA: TIntegerField;
    DiagnxEsamiSERVIZI_FK: TIntegerField;
    DiagnxEsamiCODICIRAD_FK: TIntegerField;
    DiagnxEsamiPRENOTA: TIntegerField;
    DiagnxEsamiREPARTI_FK: TIntegerField;
    DiagnxEsamiPROVENIENZA: TStringField;
    DiagnxEsamiDIAGNOSTICA: TStringField;
    dxBarManagerRadDiagnBar3: TdxBar;
    dxBarManagerRadDiagnBar2: TdxBar;
    dxBarManagerRadDiagnBar1: TdxBar;
    procedure ServiziNewRecord(DataSet: TDataSet);
    procedure EliminaCodiceExecute(Sender: TObject);
    procedure EliminaTuttiExecute(Sender: TObject);
    procedure AggiungiCodiceUpdate(Sender: TObject);
    procedure ServiziBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure sServiziDataChange(Sender: TObject; Field: TField);
    procedure EliminaCodiceUpdate(Sender: TObject);
    procedure EliminaTuttiUpdate(Sender: TObject);
    procedure cxGridCodiciDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure cxGridCodiciDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure GridSelezionatiDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure GridSelezionatiDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure aStampaExecute(Sender: TObject);
    procedure DiagnxEsamiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxGridDiagnxEsamiDataControllerDataModeControllerDetailFirst(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
    function cxGridDiagnxEsamiDataControllerDataModeControllerDetailIsCurrentQuery(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant): Boolean;
    procedure aTogliSelezioneExecute(Sender: TObject);
    procedure aSelezionaTuttiExecute(Sender: TObject);
    procedure StampaListaExecute(Sender: TObject);
    procedure GridServiziDblClick(Sender: TObject);
    procedure ModificaDiagnosticaExecute(Sender: TObject);
    procedure PrestazioniBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure EsamixDiagnBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure RadRichiesteBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure AggiungiCodiceExecute(Sender: TObject);
    procedure aInviaTuttiExecute(Sender: TObject);
    procedure aInviaTuttiUpdate(Sender: TObject);
    procedure aTogliInvioExecute(Sender: TObject);
    procedure aTogliInvioUpdate(Sender: TObject);
    procedure aDiagnInMemoriaExecute(Sender: TObject);
    procedure aDiagnInMemoriaUpdate(Sender: TObject);
    procedure aCopiaEsamiExecute(Sender: TObject);
    procedure aCopiaEsamiUpdate(Sender: TObject);
    procedure dxNonAssegnatiClick(Sender: TObject);
    procedure dxTuttiEsamiClick(Sender: TObject);
    procedure GridCodiciDESCRIZIONEStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure ModificaRadEsameExecute(Sender: TObject);
    procedure GruppiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure LkTariffarioBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxPageControl1PageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure DiagnxServNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
     oldselTutti: Boolean;
     xCopiaDiagn: Integer;
     procedure AggiungiCodici( wView: TcxGridDBTableView; xController: TcxCustomGridTableController );
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function CaricaToolBar: TdxBars; override;
  end;

var
  FzRadCodDiagn: TFzRadCodDiagn;

implementation

uses
  DMCommon, Windows, IIConsts, SysUtils, ModDiagnostiche, Variants, MsgDlgs,
  InviaA, ModiCodRadEsame, ModiCodRadMultiplo, dxPrnDlg;

{$R *.DFM}

function TFzRadCodDiagn.CaricaToolBar: TdxBars;
begin
  result := dxBarManagerRadDiagn.Bars;
end;

procedure TFzRadCodDiagn.AggiungiCodici( wView: TcxGridDBTableView; xController: TcxCustomGridTableController );
var
  i: integer;
begin

     if wView.Controller.FocusedRow is TcxGridGroupRow then
     begin
         for i:=0 to xController.SelectedRecordCount-1 do
         begin
           qSpostaGruppi.Parambyname('reparti_fk').AsInteger := gblpkrep;
           qSpostaGruppi.Parambyname('xservizi').AsInteger := ServiziPKSERVIZI.AsInteger;
           qSpostaGruppi.Parambyname('gresami').AsString := xController.SelectedRecords[i].Values[0]; // TcxGridGroupRow(wView.Controller.FocusedRow).Value;
           qSpostaGruppi.ExecCommit;
         end;
     end
     else
     for i:=0 to xController.SelectedRecordCount-1 do
       begin
         qSpostaRiga.Parambyname('reparti_fk').AsInteger := gblpkrep;
         qSpostaRiga.Parambyname('xdiagnostiche').AsInteger := ServiziPKSERVIZI.AsInteger;
         qSpostaRiga.Parambyname('codicirad_fk').AsInteger := xController.SelectedRecords[i].Values[GridCodiciPKCODICIRAD.Index];  // pkPrestSpecmult
         qSpostaRiga.ExecCommit;
       end;
end;


procedure TFzRadCodDiagn.ServiziNewRecord(DataSet: TDataSet);
begin
  ServiziREPARTI_FK.AsInteger := gblpkrep;
  ServiziTIPO_SERVIZIO.AsString := 'D';
end;

procedure TFzRadCodDiagn.EliminaCodiceExecute(Sender: TObject);
begin
  GridSelezionati.DataController.DeleteSelection;
//  Prestazioni.syRefresh;
end;

procedure TFzRadCodDiagn.EliminaTuttiExecute(Sender: TObject);
begin
  if MsgDlg(RIS_EliminaEsamiDiagn,'',ktConfirmation,[kbYes,kbNo],dfFirst)=mrYes then
  begin
    GridSelezionati.DataController.SelectAll;
    GridSelezionati.DataController.DeleteSelection;
  //  Prestazioni.syRefresh;
  end;
end;

procedure TFzRadCodDiagn.AggiungiCodiceUpdate(Sender: TObject);
begin
  AggiungiCodice.Enabled := FDMCommon.IsSelected(GridCodici) and (GridCodici.Controller.SelectedRecordCount>0);
end;

procedure TFzRadCodDiagn.ServiziBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFzRadCodDiagn.sServiziDataChange(Sender: TObject;
  Field: TField);
begin
  if (Field=nil) and EsamixDiagn.Active then
  begin
     if EsamixDiagn.Parambyname('servizi_fk').AsInteger<>ServiziPKSERVIZI.AsInteger then
     begin
       EsamixDiagn.Parambyname('servizi_fk').AsInteger := ServiziPKSERVIZI.AsInteger;
       EsamixDiagn.syRefresh;
       if dxNonAssegnati.Down then
          Prestazioni.syRefresh;
     end;
  end;
end;


procedure TFzRadCodDiagn.EliminaCodiceUpdate(Sender: TObject);
begin
  EliminaCodice.Enabled := not EsamixDiagn.IsEmpty and (GridSelezionati.Controller.SelectedRecordCount>0);
end;

procedure TFzRadCodDiagn.EliminaTuttiUpdate(Sender: TObject);
begin
  EliminaTutti.Enabled := not EsamixDiagn.IsEmpty;
end;

procedure TFzRadCodDiagn.cxGridCodiciDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var
  aSourceView: TcxGridDBTableView;
begin

  Accept := false;
  if (Source is TcxDragControlObject) and (Sender is TcxGridSite) then
  begin
     aSourceView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
     Accept := (aSourceView=GridSelezionati);
  end;

end;

procedure TFzRadCodDiagn.cxGridCodiciDragDrop(Sender, Source: TObject; X,
  Y: Integer);
//var
//  aSourceView: TcxGridDBTableView;
begin

//  aSourceView := FDMCommon.GetRealDragSourceGridView (TcxDragControlObject (Source));
//  aSourceView.Controller.DeleteSelection;

  if GridSelezionati.Controller.SelectedRecordCount>0 then
     GridSelezionati.Controller.DeleteSelection;

  if dxNonAssegnati.Down then
     Prestazioni.syRefresh;

end;

procedure TFzRadCodDiagn.GridSelezionatiDragDrop(Sender, Source: TObject;
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

(*
%%%

  - View.Controller.FocusedRecord.Level,
  - View.Controller.FocusedRecord.Index,
  - View.Controller.FocusedRecord.RecordIndex.

%%%%

if TcxGridDBTableView (Sender).Controller.FocusedRow is TcxGridGroupRow then

%%%

Hi Dx-ers,

(N.B. this is my first post, so apologies in advance if I've inadvertently
broken some newsgroup etiquette)

I'm trying to iterate through the Grouped items in a view in their in-built
heirarchy.  what I want is to get the actual value in the underlying data
that has been grouped.  I've adapted the only example that I can find that
does a similar iteration, as you can see from my code fragment:

  //start at the top level:

  AParentDataGroupIndex := -1;

  with cxGrid.ActiveView.DataController.Groups do
  begin
     // get the count of the child groups
     AChildDataGroupsCount := ChildCount[AParentDataGroupIndex];

     //iterate through the children (in this case the items in the top level
group
     for AChildPosition := 0 to AChildDataGroupsCount - 1 do
     begin
         //data group index of a child
        AChildDataGroupIndex := ChildDataGroupIndex[AParentDataGroupIndex,
AChildPosition];
        aStr := ?????  //<------ what should I be extracting here??

        // this doesn't work, so we can't use ChildDataGroupIndex to access
the underlying dataset:
       //aStr := DataController.DisplayTexts[AChildDataGroupIndex,
(cxGrid.ActiveView As TcxCustomGridTableView).GroupedItems[0].Index];

        //do something with aStr

        // check if this level has children

        // if yes then recurse to next level of the group heirarchy
(separate procedure defined to recurse)

     end // for ...
  end; // with ...

  my problem is that I can't seem to find an object or property from which
to extract the value that is being grouped (shown above as "?????")

  i've investigated whether this is created in the Summaries object(s), but
this hasn't borne fruit.

Any suggestions as to where I should be looking.  P.s. I'm in provider mode
using a customdatacontroller.

TIA.
adam russell
adam@d9.com
*)

  if aSourceView.DataController.FocusedRecordIndex<>-1 then
  begin
      AggiungiCodici(aDragView, aSourceView.Controller);
      EsamixDiagn.syRefresh;
      if dxNonAssegnati.Down then
         aSourceView.Controller.DeleteSelection;
  end;

end;

procedure TFzRadCodDiagn.GridSelezionatiDragOver(Sender, Source: TObject;
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
         Accept := Accept and (dxNonAssegnati.Down or not EsamixDiagn.LocateRecord('CODICE',GridCodici.Controller.SelectedRecords[i].Values[GridCodiciCODICE.Index],[]));
         inc(i);
     end;
  end;
end;

procedure TFzRadCodDiagn.aStampaExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
begin
    if FDMCommon.dxPrintDialog1.Execute then
    begin
       dxComponentPrinter1Link1.ReportTitle.Text := ServiziDESCRIZIONE.AsString;
       if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
       begin
         dxComponentPrinter1.Preview(true, dxComponentPrinter1Link1);
       end
       else begin
          AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
          dxComponentPrinter1.Print(false, @AData, dxComponentPrinter1Link1);
       end;
    end;
end;

procedure TFzRadCodDiagn.DiagnxEsamiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFzRadCodDiagn.cxGridDiagnxEsamiDataControllerDataModeControllerDetailFirst(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
begin
  FDMCommon.DetailFirst(ADataSet,AMasterDetailKeyFieldNames,AMasterDetailKeyValues,AReopened);
end;

function TFzRadCodDiagn.cxGridDiagnxEsamiDataControllerDataModeControllerDetailIsCurrentQuery(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant): Boolean;
begin
  result := FDMCommon.DetailIsCurrentQuery(ADataSet,AMasterDetailKeyFieldNames,AMasterDetailKeyValues);
end;


procedure TFzRadCodDiagn.aTogliSelezioneExecute(Sender: TObject);
begin
  TogliSelezione.Parambyname('servizi_fk').AsInteger := ServiziPKSERVIZI.AsInteger;
  TogliSelezione.Parambyname('flag').AsInteger := 0;
  TogliSelezione.ExecCommit;
  EsamixDiagn.syrefresh;
end;

procedure TFzRadCodDiagn.aSelezionaTuttiExecute(Sender: TObject);
begin
  TogliSelezione.Parambyname('servizi_fk').AsInteger := ServiziPKSERVIZI.AsInteger;
  TogliSelezione.Parambyname('flag').AsInteger := 1;
  TogliSelezione.ExecCommit;
  EsamixDiagn.syrefresh;

end;

procedure TFzRadCodDiagn.StampaListaExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
begin
    if FDMCommon.dxPrintDialog1.Execute then
    begin
       if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
       begin
         dxComponentPrinter1.Preview(true, dxComponentPrinter1Link2);
       end
       else begin
          AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
          dxComponentPrinter1.Print(false, @AData, dxComponentPrinter1Link2);
       end;
    end;

end;

procedure TFzRadCodDiagn.GridServiziDblClick(Sender: TObject);
begin
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxGridServizi),LongInt(ModificaDiagnostica));
end;

procedure TFzRadCodDiagn.ModificaDiagnosticaExecute(Sender: TObject);
begin
{ -- ELIMINARE...
  FModDiagnostiche := TFModDiagnostiche.Create(nil);
  try
     FModDiagnostiche.sDiagnostiche.DataSet := Servizi;
     FModDiagnostiche.sDiagnxServ.DataSet := DiagnxServ;
     DiagnxServ.Parambyname('DIAGNOSTICA_FK').AsInteger := ServiziPKSERVIZI.AsInteger;
     DiagnxServ.syRefresh;
     Servizi.Edit;
     if FModDiagnostiche.ShowModal=mrOk then
     begin
        Servizi.RefreshRecord;
     end;
  finally
     FModDiagnostiche.Free;
  end;
}
end;

procedure TFzRadCodDiagn.PrestazioniBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  if dxNonAssegnati.Down then
     Sender.Parambyname('nonass').AsString := format('# and not exists(select 1 from esamixdiagn ed where ed.servizi_fk=%d and ed.codicirad_fk=c.pkcodicirad)',[ServiziPKSERVIZI.AsInteger])
  else
     Sender.Parambyname('nonass').AsString := '#';
end;

procedure TFzRadCodDiagn.EsamixDiagnBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFzRadCodDiagn.RadRichiesteBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

destructor TFzRadCodDiagn.Destroy;
begin
  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5) then
  begin
    rsPropSaver1.SaveValues;
    rsPropSaver1.Storage.Save;
  end;
  FDMCommon.Possibili.syrefresh;
  inherited;
end;

procedure TFzRadCodDiagn.AggiungiCodiceExecute(Sender: TObject);
begin

   AggiungiCodici(GridCodici,GridCodici.Controller);
   EsamixDiagn.syRefresh;
   if dxNonAssegnati.Down then
      GridCodici.Controller.DeleteSelection;

end;

procedure TFzRadCodDiagn.aInviaTuttiExecute(Sender: TObject);
var
  i: integer;
begin

  FInviaA := TFInviaA.Create(nil);
  try
     FInviaA.sRadRichieste.Dataset := RadRichieste;
     if FInviaA.ShowModal=mrOk then
     begin
         for i:=0 to GridSelezionati.Controller.SelectedRecordCount-1 do
         begin
           qAssegnaRad.Parambyname('reparti_fk').AsInteger := varAsType(FInviaA.cxLookupRadiologia.EditValue,varInteger);
           if not VarIsNull(FInviaA.cxProvenienza.EditValue) then
              qAssegnaRad.Parambyname('provenienza').AsString := varAsType(FInviaA.cxProvenienza.EditValue,varString)
           else
              qAssegnaRad.Parambyname('provenienza').Clear;
           qAssegnaRad.Parambyname('pkesamixdiagn').AsInteger := GridSelezionati.Controller.SelectedRecords[i].Values[GridSelezionatiPKESAMIXDIAGN.Index];
           qAssegnaRad.ExecCommit;
         end;
         EsamixDiagn.syRefresh;
     end;
  finally
     FInviaA.Free;
  end;

end;

procedure TFzRadCodDiagn.aInviaTuttiUpdate(Sender: TObject);
begin
  aInviaTutti.Enabled := not EsamixDiagn.IsEmpty and (GridSelezionati.Controller.SelectedRecordCount>0);
end;

procedure TFzRadCodDiagn.aTogliInvioExecute(Sender: TObject);
var
  i: integer;
begin
  if (MsgDlgPos(RS_Msg_ConfTogliInviaA, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes) then
  begin
         for i:=0 to GridSelezionati.Controller.SelectedRecordCount-1 do
         begin
           if not VarIsNull(GridSelezionati.Controller.SelectedRecords[i].Values[GridSelezionatiREPARTI_FK.Index]) then
           begin
             qAssegnaRad.Parambyname('reparti_fk').Clear;
             qAssegnaRad.Parambyname('provenienza').Clear;
             qAssegnaRad.Parambyname('pkesamixdiagn').AsInteger := GridSelezionati.Controller.SelectedRecords[i].Values[GridSelezionatiPKESAMIXDIAGN.Index];
             qAssegnaRad.ExecCommit;
           end;
         end;
         EsamixDiagn.syRefresh;
  end;

end;

procedure TFzRadCodDiagn.aTogliInvioUpdate(Sender: TObject);
begin
  aTogliInvio.Enabled := not EsamixDiagn.IsEmpty and (GridSelezionati.Controller.SelectedRecordCount>0);
end;

procedure TFzRadCodDiagn.aDiagnInMemoriaExecute(Sender: TObject);
begin
  inherited;
  xCopiaDiagn := ServiziPKSERVIZI.AsInteger;
  MsgDlg(format(RS_EsamixDiagnInMemoria,[ServiziDESCRIZIONE.AsString]),'',ktInformation,[kbOk],dfFirst);
end;

procedure TFzRadCodDiagn.aDiagnInMemoriaUpdate(Sender: TObject);
begin
  inherited;
  aDiagnInMemoria.Enabled := FDMCommon.IsSelected(GridServizi);
end;

constructor TFzRadCodDiagn.Create(AOwner: TComponent);
begin
  inherited;
  xCopiaDiagn := -1;
  rsPropSaver1.Storage.Load;
  rsPropSaver1.LoadValues;

    RadRichieste.open;
    Servizi.open;
    EsamixDiagn.Parambyname('servizi_fk').AsInteger := ServiziPKSERVIZI.AsInteger;
    EsamixDiagn.open;
    Prestazioni.open;
//    DiagnxEsami.open;
    Gruppi.open;
    LkTariffario.open;
    LkBranche.Open;
    oldselTutti := dxTuttiEsami.Down;
    cxPageControl1.ActivePage := TabAssegna;
    GridServizi.Controller.GotoFirst;
end;

procedure TFzRadCodDiagn.aCopiaEsamiExecute(Sender: TObject);
begin
  inherited;

  if MsgDlg(Format(RS_ConfCopiaEsamixDiagn,[ServiziDESCRIZIONE.AsString]),'',ktConfirmation,[kbYes,kbNo],dfFirst)=mrYes then
  begin
    CopiaEsamiDiagn.ParamByName('diagnfrom_fk').AsInteger := xCopiaDiagn;
    CopiaEsamiDiagn.ParamByName('xdiagnostiche').AsInteger := ServiziPKSERVIZI.AsInteger;
    CopiaEsamiDiagn.ExecCommit;
    EsamixDiagn.syRefresh;
  end;

end;

procedure TFzRadCodDiagn.aCopiaEsamiUpdate(Sender: TObject);
begin
  inherited;
  aCopiaEsami.Enabled := (xCopiaDiagn>0) and FDMCommon.IsSelected(GridServizi) and (ServiziPKSERVIZI.AsInteger<>xCopiaDiagn);
end;

procedure TFzRadCodDiagn.dxNonAssegnatiClick(Sender: TObject);
begin
  inherited;
  Prestazioni.syRefresh;
end;

procedure TFzRadCodDiagn.dxTuttiEsamiClick(Sender: TObject);
begin
  inherited;
  Prestazioni.syRefresh;
end;

procedure TFzRadCodDiagn.GridCodiciDESCRIZIONEStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
{$IFNDEF MEDICORNER}
  if (dxTuttiEsami.Down and EsamixDiagn.Active and EsamixDiagn.LocateRecord('CODICE',ARecord.Values[GridCodiciCODICE.Index],[])) then
     AStyle := FDMCommon.cxStyle104;
{$ENDIF}
end;

procedure TFzRadCodDiagn.ModificaRadEsameExecute(Sender: TObject);
var
  res: integer;
  esComposto: boolean;
begin

  esComposto := (PrestazioniCOMPOSTO.AsInteger=1);

  if not esComposto then
  begin
    FModiCodRadEsame := TFModiCodRadEsame.Create(nil);
    try

        FModiCodRadEsame.sGruppo.Dataset := Gruppi;
        FModiCodRadEsame.sLkTariffario.Dataset := LkTariffario;
        FModiCodRadEsame.sLkBranche.Dataset := LkBranche;
        Gruppi.Filter := 'DATA_FINE is null';
        Gruppi.Filtered := true;
        FModiCodRadEsame.Prestazioni.Parambyname('pkcodxrad').AsInteger := PrestazioniPKCODXRAD.AsInteger;
        FModiCodRadEsame.Prestazioni.Open;
        FModiCodRadEsame.Prestazioni.Edit;
        res := FModiCodRadEsame.ShowModal;
    finally
       Gruppi.Filtered := false;
       FModiCodRadEsame.Free;
       FModiCodRadEsame := nil;
    end;
  end
  else begin
    FModiCodRadMultiplo := TFModiCodRadMultiplo.Create(nil);
    try
//        CaricaGruppi(FModiCodMultiplo.Gruppi,FModiCodMultiplo.SubGruppi,FModiCodMultiplo.xPrestazioni);

        FModiCodRadMultiplo.xPrestazioni.CleanCloneFromDataSet(FDMCommon.Esami);
        FModiCodRadMultiplo.sGruppo.Dataset := Gruppi;
        Gruppi.Filter := 'DATA_FINE is null';
        Gruppi.Filtered := true;
        FModiCodRadMultiplo.Prestazioni.Parambyname('pkcodxrad').AsInteger := PrestazioniPKCODXRAD.AsInteger;
        FModiCodRadMultiplo.Prestazioni.Open;
        FModiCodRadMultiplo.Componenti.Open;
        FModiCodRadMultiplo.Prestazioni.Edit;
        res := FModiCodRadMultiplo.ShowModal;
    finally
       Gruppi.Filtered := false;
       FModiCodRadMultiplo.Free;
       FModiCodRadMultiplo := nil;
    end;
  end;

  if res=mrOk then
     Prestazioni.RefreshRecord;

  ActiveControl := cxGridCodici.FocusedView.Site;

end;

procedure TFzRadCodDiagn.GruppiBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  inherited;
	Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFzRadCodDiagn.LkTariffarioBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('leg_codice').AsString := FDMCommon.LeggiPostoLavoroLEG_CODICE.AsString;
end;

procedure TFzRadCodDiagn.cxPageControl1PageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if NewPage=TabVerifica then
  begin
     oldselTutti := dxTuttiEsami.Down;
     if not oldselTutti then
     begin
        dxTuttiEsami.Down := True;
        Prestazioni.syRefresh;
     end;
     DiagnxEsami.ParamByName('codicirad_fk').AsInteger := -1;
     DiagnxEsami.syRefresh;
  end
  else if NewPage=TabAssegna then
  begin
     if oldselTutti<>dxTuttiEsami.Down then
     begin
        if oldselTutti then
        begin
           dxTuttiEsami.Down := True;
           Prestazioni.syRefresh;
        end
        else begin
           dxTuttiEsami.Down := False;
           Prestazioni.syRefresh;
        end;
     end;
  end;

end;

procedure TFzRadCodDiagn.DiagnxServNewRecord(DataSet: TDataSet);
begin
  inherited;
  DiagnxServDIAGNOSTICA_FK.AsInteger := ServiziPKSERVIZI.AsInteger;
end;

initialization
  Classes.RegisterClass(TFzRadCodDiagn);

end.