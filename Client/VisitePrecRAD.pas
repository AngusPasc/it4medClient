unit VisitePrecRAD;

interface

uses
  BaseRad, IInterface, {} cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxBar, cxGridCustomPopupMenu, cxGridPopupMenu,
  dxPrnDlg, dxPSCore, Classes, ActnList, AstaDrv2,
  AstaClientDataset, cxContainer, cxLabel, cxDBLabel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, CSEZForm,
  Controls, ExtCtrls,  dxPScxCommon, cxHyperLinkEdit, AstaUpdateSQL,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxLookAndFeels, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, 
  rsStorage, rsPropSaver, rsXmlData, cxNavigator, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPSdxDBOCLnk, dxPSdxLCLnk, dxPScxPivotGridLnk,
  dxPSPrVwRibbon, dxPScxSchedulerLnk, dxSkinsdxRibbonPainter, cxGroupBox;

{$I syVer.inc}

type
  TFVisitePrecRAD = class(TFBaseRad)
    sArchivio: TDataSource;
    sEsami: TDataSource;
    Archivio: TAstaClientDataSet;
    Esami: TAstaClientDataSet;
    sAnagPaziente: TDataSource;
    ActionList1: TActionList;
    aReferto: TAction;
    qPrintReport: TAstaClientDataSet;
    EsamiDESCRIZIONE: TStringField;
    ArchivioDATA_VISITA: TDateTimeField;
    ArchivioMEDICOFIRMA: TStringField;
    ArchivioREPARTO: TStringField;
    ArchivioSERVIZIO: TStringField;
    ArchivioMEDICO: TStringField;
    ArchivioDIAGNOSTICA: TStringField;
    EspandiTutto: TAction;
    ChiudiTutto: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    Stampa: TAction;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    Immagini: TAction;
    dxBarButton4: TdxBarButton;
    dxBarBtnImmagini: TdxBarButton;
    qPrintReportREFERTO: TBlobField;
    cxGridArchivio: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridArchivioPKTRIAGE: TcxGridDBColumn;
    cxGridArchivioDATA_VISITA: TcxGridDBColumn;
    cxGridArchivioMEDICOFIRMA: TcxGridDBColumn;
    cxGridArchivioREPARTO: TcxGridDBColumn;
    cxGridArchivioSERVIZIO: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    cxGridEsami: TcxGridDBTableView;
    cxGridEsamiPKPRESTAZIONI: TcxGridDBColumn;
    cxGridEsamiSTATO: TcxGridDBColumn;
    cxGridEsamiDESCRIZIONE: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    dxBarPopArchivio: TdxBarPopupMenu;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxGridArchivioCEREFERTO: TcxGridDBColumn;
    ArchivioDESCSTATOESAME: TStringField;
    cxGridArchivioDESCSTATOESAME: TcxGridDBColumn;
    cxGridEsamiCODICE: TcxGridDBColumn;
    EsamiCODICE: TStringField;
    Panel2: TPanel;
    DBText1: TcxDBLabel;
    DBText2: TcxDBLabel;
    ArchivioREPARTOESECUTORE: TStringField;
    cxGridArchivioREPARTOESECUTORE: TcxGridDBColumn;
    ArchivioRIS_STUDY_EUID: TStringField;
    cxGridArchivioCEIMMAGINI: TcxGridDBColumn;
    aAnnulla: TAction;
    AnagPaziente: TAstaClientDataSet;
    AnagPazienteDATA_NASCITA: TDateTimeField;
    ArchivioDATA_ACCETTAZIONE: TDateTimeField;
    ArchivioDATA_REFERTO: TDateTimeField;
    cxGridArchivioDIAGNOSTICA: TcxGridDBColumn;
    cxGridArchivioNR_ARCHIVIO: TcxGridDBColumn;
    ArchivioSITE_NAME: TStringField;
    aStorico: TAction;
    dxBarButton6: TdxBarButton;
    ArchivioNOTE_PRENO: TStringField;
    cxGridArchivioNOTE_PRENO: TcxGridDBColumn;
    updArchivio: TAstaUpdateSQL;
    aInfoOperatore: TAction;
    dxBarButton7: TdxBarButton;
    ArchivioNR_ARCHIVIO: TStringField;
    AnagPazienteNOMINATIVO: TStringField;
dxBarManager1Bar1: TdxBar;
    ArchivioPKTRIAGE: TIntegerField;
    ArchivioASSISTIBILI_FK: TIntegerField;
    ArchivioCEIMMAGINI: TIntegerField;
    ArchivioCEREFERTO: TIntegerField;
    ArchivioPKIMPEGNATIVE: TIntegerField;
    ArchivioUSER_ID: TIntegerField;
    EsamiPKPRESTAZIONI: TIntegerField;
    EsamiPROGRESSIVO_RIGA: TIntegerField;
    EsamiCODICIRAD_FK: TIntegerField;
    EsamiNUMERO_PRESTAZIONE: TIntegerField;
    EsamiTRIAGE_FK: TIntegerField;
    EsamiSTATO: TIntegerField;
    cxGridArchivioRIS_STUDY_EUID: TcxGridDBColumn;
    rsPropSaver1: TrsPropSaver;
    rsStorage1: TrsStorage;
    rsXMLData1: TrsXMLData;
    procedure aRefertoExecute(Sender: TObject);
    procedure aRefertoUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EspandiTuttoExecute(Sender: TObject);
    procedure ChiudiTuttoExecute(Sender: TObject);
    procedure StampaExecute(Sender: TObject);
    procedure StampaUpdate(Sender: TObject);
    procedure ImmaginiExecute(Sender: TObject);
    procedure ImmaginiUpdate(Sender: TObject);
    procedure ArchivioBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure EsamiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxGridPopupMenu1PopupMenus0Popup(ASenderMenu: TComponent;
      AHitTest: TcxCustomGridHitTest; X, Y: Integer);
    procedure cxGridArchivioDblClick(Sender: TObject);
    procedure aAnnullaExecute(Sender: TObject);
    procedure AnagPazienteBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure aStoricoExecute(Sender: TObject);
    procedure ArchivioBeforePost(DataSet: TDataSet);
    procedure aInfoOperatoreExecute(Sender: TObject);
    procedure aInfoOperatoreUpdate(Sender: TObject);
    procedure BaseFormDestroy(Sender: TObject);
    procedure rsXMLData1LoadFromStream(Sender: TObject; Stream: TStream;
      var DoStandard: Boolean);
    procedure rsXMLData1SaveToStream(Sender: TObject; Stream: TStream;
      var DoStandard: Boolean);
  private
    { Private declarations }
  protected
    procedure DoCreate; override;
  public
    { Public declarations }
    daEsterni: boolean;
    xpka: integer;
    xpki: integer;
//    SoloEseguiti: boolean;

  end;

var
  FVisitePrecRAD: TFVisitePrecRAD;

implementation

uses DMCommon,
    {$IFNDEF MEDICORNER}
      RefPreview,
    {$ELSE}
      RefMedicorner,
    {$ENDIF}
Windows, sysutils, IIConsts, CercaBarCode, Note, cxStorage {$IFDEF DELPHI2007x} ,kscxStorage {$ENDIF};

{$R *.DFM}

procedure TFVisitePrecRAD.aRefertoExecute(Sender: TObject);
begin
  inherited;

  VisualizzaReferto(ArchivioSITE_NAME.AsString,ArchivioPKTRIAGE.AsInteger,AnagPazienteNOMINATIVO.AsString,[],[tprnStampa,tprnDaCreare]);

end;

procedure TFVisitePrecRAD.aRefertoUpdate(Sender: TObject);
begin
  aReferto.Enabled := gblViewReferti and not Archivio.IsEmpty
                             and (ArchivioCEREFERTO.AsInteger=1);

end;

procedure TFVisitePrecRAD.FormShow(Sender: TObject);
begin

  cxGridArchivio.RestoreFromrsStorage(TcxrsStorageReader.CreateNew(name+'.'+cxGridArchivio.Name, rsPropSaver1.Storage), false, false, [{gsoUseFilter,} {gsoUseSummary}]);
  cxGridArchivioNOTE_PRENO.Visible := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);
  cxGridArchivio.OptionsBehavior.ImmediateEditor := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);
  cxGridArchivio.OptionsData.Editing := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);
  cxGridArchivio.OptionsSelection.CellSelect := (FDMCommon.LeggiPostoLavoroCHK_NOTE_RICH.AsInteger=1);

  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5) then
  begin
    cxGridArchivioCEIMMAGINI.Visible := False;
    dxBarBtnImmagini.Visible := ivNever;
  end;

//  if not daEsterni or (Sender=nil) then
  begin
    AnagPaziente.open;
    Archivio.open;
//    Esami.Parambyname('triage_fk').AsFloat := -1;
    Esami.open;
    cxGridArchivio.ViewData.Expand(False);
//    cxGridArchivio.ViewData.Collapse(False);
    cxGridArchivio.Controller.GotoFirst;
  end;
end;

procedure TFVisitePrecRAD.EspandiTuttoExecute(Sender: TObject);
begin
  cxGridArchivio.ViewData.Expand(False);
  cxGridArchivio.Controller.GotoFirst;
end;

procedure TFVisitePrecRAD.ChiudiTuttoExecute(Sender: TObject);
begin
  cxGridArchivio.ViewData.Collapse(False);
  cxGridArchivio.Controller.GotoFirst;  
end;

procedure TFVisitePrecRAD.StampaExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
begin

    if FDMCommon.dxPrintDialog1.Execute then
    begin
       if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
       begin
         dxComponentPrinter1.Preview(true, dxComponentPrinter1Link1)
       end
       else begin
          AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
          dxComponentPrinter1.Print(false, @AData, dxComponentPrinter1Link1);
       end;
    end;

end;

procedure TFVisitePrecRAD.StampaUpdate(Sender: TObject);
begin
	Stampa.Enabled := Archivio.Active and not Archivio.IsEmpty;
end;

procedure TFVisitePrecRAD.ImmaginiExecute(Sender: TObject);
begin

   if gblViewImmagini and (ArchivioCEIMMAGINI.AsInteger>0) then
      FDMCommon.AccNumber(ArchivioPKTRIAGE.AsInteger)
   else
      FDMCommon.Vuoto
end;

procedure TFVisitePrecRAD.ImmaginiUpdate(Sender: TObject);
begin
  Immagini.Enabled := gblViewImmagini and not Archivio.IsEmpty
                             and (ArchivioCEIMMAGINI.AsInteger=1);

end;

procedure TFVisitePrecRAD.ArchivioBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  sender.Parambyname('lingua').AsString := gbllingua;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  Sender.Parambyname('pkassistibili').AsInteger := xpka;
  if not daEsterni then
     Sender.Parambyname('ximpegnative').AsString := format('#'+' where z.pkimpegnative<>%d',[xpki])
  else
     Sender.Parambyname('ximpegnative').AsString := '#';
{
  if SoloEseguiti then
     Sender.Parambyname('xstatovisita').AsString := '# z.statovisita between 140 and 190 and'
  else
     Sender.Parambyname('xstatovisita').AsString := '#';
}
end;

procedure TFVisitePrecRAD.EsamiBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('pkassistibili').AsInteger := xpka;
{
  if not daEsterni then
     Sender.Parambyname('ximpegnative').AsString := format('#'+' where z.pkimpegnative<>%d',[xpki])
  else
     Sender.Parambyname('ximpegnative').AsString := '#';
}
end;

procedure TFVisitePrecRAD.cxGridPopupMenu1PopupMenus0Popup(
  ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X, Y: Integer);
begin
  inherited;
  dxBarPopArchivio.Popup(X, Y);
end;

procedure TFVisitePrecRAD.cxGridArchivioDblClick(Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxGrid1),LongInt(aReferto));
  if FDMCommon.DoppioMonitor then
     PostMessage(Handle,SY_DBLCLICK,LongInt(cxGrid1),LongInt(Immagini));

end;

procedure TFVisitePrecRAD.DoCreate;
begin
  inherited;
  rsPropSaver1.Storage.Load;
  rsPropSaver1.LoadValues;
  daEsterni := false;
//  SoloEseguiti := true;
  FDMCommon.SetVisible(cxGridArchivioNR_ARCHIVIO,(FDMCommon.LeggiPostoLavoroVIEW_NR_ARCHIVIO.AsInteger>0));
end;

procedure TFVisitePrecRAD.aAnnullaExecute(Sender: TObject);
begin
  inherited;
  if not daEsterni then
     Modalresult := mrCancel
  else
     Close;
end;

procedure TFVisitePrecRAD.AnagPazienteBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('pkassistibili').AsInteger := xpka;
end;

procedure TFVisitePrecRAD.aStoricoExecute(Sender: TObject);
begin
  inherited;
  StoricoOperazione(ArchivioPKTRIAGE.AsInteger);

end;

procedure TFVisitePrecRAD.ArchivioBeforePost(DataSet: TDataSet);
begin
  inherited;
  ArchivioUSER_ID.AsInteger := gblCodUtente;
end;

procedure TFVisitePrecRAD.aInfoOperatoreExecute(Sender: TObject);
begin
  inherited;
  FNote := TFNote.Create(nil);
  try
     FNote.sNote.Dataset := Archivio;
     FNote.ShowModal;
  finally
     FNote.Free;
  end;

end;

procedure TFVisitePrecRAD.aInfoOperatoreUpdate(Sender: TObject);
begin
  inherited;
  aInfoOperatore.Enabled := not Archivio.IsEmpty and (not ArchivioNOTE_PRENO.IsNull and (ArchivioNOTE_PRENO.AsString<>''));
end;

procedure TFVisitePrecRAD.BaseFormDestroy(Sender: TObject);
begin
  inherited;
  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5) then
  begin
    rsPropSaver1.SaveValues;
    cxGridArchivio.StoreTorsStorage(TcxrsStorageWriter.CreateNew(name+'.'+cxGridArchivio.Name,rsPropSaver1.Storage), true, [{gsoUseFilter,} gsoUseSummary]);
    rsPropSaver1.Storage.Save;
  end;
end;

procedure TFVisitePrecRAD.rsXMLData1LoadFromStream(Sender: TObject;
  Stream: TStream; var DoStandard: Boolean);
begin
  inherited;
  FDMCommon.CaricaLayout(Name,Stream);
  DoStandard := false;

end;

procedure TFVisitePrecRAD.rsXMLData1SaveToStream(Sender: TObject;
  Stream: TStream; var DoStandard: Boolean);
begin
  inherited;
  FDMCommon.SalvaPersonalizza(Name, Stream, gblCodUtente);
  DoStandard := false;

end;

end.
