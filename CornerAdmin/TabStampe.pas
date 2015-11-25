unit TabStampe;

interface

uses
  Forms, IInterface, BaseGrid, {} cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxSpinEdit, cxTextEdit,
  cxImageComboBox, cxDBLookupComboBox, cxCheckBox, cxTL, cxMaskEdit,
  AstaUpdateSQL, Menus, UDXPopup, dxBar, AstaDrv2, AstaClientDataset,
  Classes, ActnList, cxInplaceContainer, cxDBTL, cxTLData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ExtCtrls, Controls, cxSplitter,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, cxTLdxBarBuiltInMenu, cxLookAndFeels,
  cxLookAndFeelPainters, rsStorage, rsPropSaver, rsXmlData, cxNavigator;


type
  TFTabStampe = class(TFBaseGrid)
    sFunzioni: TDataSource;
    ActionList1: TActionList;
    EspandiTutto: TAction;
    ChiudiTutto: TAction;
    TabStampe: TAstaClientDataSet;
    sTabStampe: TDataSource;
    qSpostaRiga: TAstaClientDataSet;
    dxBarManagerRadDiagn: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    Panel1: TPanel;
    Splitter1: TcxSplitter;
    Splitter2: TcxSplitter;
    dxBarPopupSelez: TdxBarPopupMenu;
    EliminaStampa: TAction;
    EliminaTutte: TAction;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarPopupCodici: TdxBarPopupMenu;
    dxBarDockControl1: TdxBarDockControl;
    dxSelezionati: TdxPopupMenu;
    Folder: TAstaClientDataSet;
    dsFolder: TDataSource;
    TabStampeREPARTI_FK: TIntegerField;
    TabStampeITEM_ID_FK: TIntegerField;
    TabStampePKTABSTAMPE: TIntegerField;
    TabStampeFUNZIONI_FK: TIntegerField;
    Funzioni: TAstaClientDataSet;
    FunzioniPKFUNZIONI: TIntegerField;
    FunzioniDESCRIZIONE: TStringField;
    TabStampeORDINE: TIntegerField;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxSelezionati: TcxGridDBTableView;
    cxSelezionatiORDINE: TcxGridDBColumn;
    cxSelezionatiDESCRIZIONE: TcxGridDBColumn;
    cxSelezionatiPKTABSTAMPE: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGrid2Level1: TcxGridLevel;
    cxServizi: TcxGridDBTableView;
    cxServiziPKFUNZIONI: TcxGridDBColumn;
    cxServiziDESCRIZIONE: TcxGridDBColumn;
    Item: TAstaClientDataSet;
    ItemITEM_ID: TIntegerField;
    ItemFOLDER_ID: TIntegerField;
    ItemDESCRIZIONE: TStringField;
    FolderFOLDER_ID: TIntegerField;
    FolderFOLDER_NAME: TStringField;
    FolderPARENT_ID: TIntegerField;
    dsItem: TDataSource;
    TabStampeCOPIE: TIntegerField;
    TabStampeSTAMPANTE: TIntegerField;
    cxSelezionatiCOPIE: TcxGridDBColumn;
    cxSelezionatiSTAMPANTE: TcxGridDBColumn;
    cxSelezionatiGRESAMI_FK: TcxGridDBColumn;
    GruppoEsami: TAstaClientDataSet;
    GruppoEsamiDESCRIZIONE: TStringField;
    sGruppoEsami: TDataSource;
    TabStampeSELEZIONE: TIntegerField;
    cxSelezionatiSELEZIONE: TcxGridDBColumn;
    TabStampeDESCRIZIONE: TStringField;
    TabStampeVERIFICASTAMPE_FK: TIntegerField;
    cxSelezionatiVERIFICASTAMPE_FK: TcxGridDBColumn;
    TipoVerifica: TAstaClientDataSet;
    TipoVerificaPKVERIFICASTAMPE: TIntegerField;
    TipoVerificaNOMESTAMPA: TStringField;
    sTipoVerifica: TDataSource;
    TabStampeGRESAMI_FK: TIntegerField;
    GruppoEsamiPKGRESAMI: TIntegerField;
    GruppoEsamiGRESAMI: TStringField;
    esamixstampe: TAstaClientDataSet;
    esamixstampeCODICIRAD_FK: TIntegerField;
    esamixstampePKESAMIXSTAMPE: TIntegerField;
    esamixstampeCODICE: TStringField;
    esamixstampeDESCRIZIONE: TStringField;
    sesamixstampe: TDataSource;
    cxGrid1Level2: TcxGridLevel;
    cxEsamixStampe: TcxGridDBTableView;
    cxEsamixStampeTABSTAMPE_FK: TcxGridDBColumn;
    cxEsamixStampePKESAMIXSTAMPE: TcxGridDBColumn;
    cxEsamixStampeCODICIRAD_FK: TcxGridDBColumn;
    cxEsamixStampeDESCRIZIONE: TcxGridDBColumn;
    CodiciEsame: TAstaClientDataSet;
    sCodiciEsame: TDataSource;
    CodiciEsameCODICE: TStringField;
    CodiciEsameDESCRIZIONE: TStringField;
    CodiciEsamePKCODICIRAD: TIntegerField;
    qFolderItem: TAstaClientDataSet;
    qFolderItemDESCRIZIONE: TStringField;
    sqFolderItem: TDataSource;
    cxFolderItem: TcxDBTreeList;
    cxFolderItemFOLDER_ID: TcxDBTreeListColumn;
    cxFolderItemDESCRIZIONE: TcxDBTreeListColumn;
    cxFolderItemPARENT_ID: TcxDBTreeListColumn;
    cxFolderItemTIPO: TcxDBTreeListColumn;
    aModificaStampaDaTree: TAction;
    aNuovaStampaDaTree: TAction;
    aCancellaStampaDaTree: TAction;
    updFolderItem: TAstaUpdateSQL;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    aCopiaStampa: TAction;
    aSalvaStampaSuFile: TAction;
    aCaricaDaFile: TAction;
    TabStampeITEM_TYPE: TIntegerField;
    cxSelezionatiITEM_TYPE: TcxGridDBColumn;
    dxBarButton6: TdxBarButton;
    dxBarButton9: TdxBarButton;
    TabStampeTIPOREFERTO_FK: TIntegerField;
    cxSelezionatiTIPOREFERTO_FK: TcxGridDBColumn;
    qTipoReferto: TAstaClientDataSet;
    qTipoRefertoTIPOREFERTO: TIntegerField;
    qTipoRefertoDESCRIZIONE: TStringField;
    sqTipoReferto: TDataSource;
    aModificaStampaDaGrid: TAction;
    TabStampeITEM_ID: TIntegerField;
    dxBarButton10: TdxBarButton;
    AttivaEdit: TAction;
    esamixstampeITEM_ID_FK: TIntegerField;
    TabStampeCD_AUTOMATICO: TIntegerField;
    cxSelezionatiCD_AUTOMATICO: TcxGridDBColumn;
    esamixstampeINCLUDI: TIntegerField;
    cxEsamixStampeINCLUDI: TcxGridDBColumn;
    dxBarManagerRadDiagnBar1: TdxBar;
    dxBarManagerRadDiagnBar2: TdxBar;
    qFolderItemFOLDER_ID: TIntegerField;
    qFolderItemPARENT_ID: TIntegerField;
    qFolderItemTIPO: TIntegerField;
    qFolderItemITEM_TYPE: TIntegerField;
    rsPropSaver1: TrsPropSaver;
    procedure EspandiTuttoExecute(Sender: TObject);
    procedure ChiudiTuttoExecute(Sender: TObject);
    procedure EliminaStampaExecute(Sender: TObject);
    procedure EliminaTutteExecute(Sender: TObject);
    procedure TabStampeBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure sFunzioniDataChange(Sender: TObject; Field: TField);
    procedure EliminaStampaUpdate(Sender: TObject);
    procedure EliminaTutteUpdate(Sender: TObject);
    procedure cxSelezionatiDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxSelezionatiDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure GruppoEsamiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure TabStampeAfterPopulate(Sender: TObject);
    procedure esamixstampeBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure CodiciEsameBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxFolderItemDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure cxFolderItemDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure aNuovaStampaDaTreeExecute(Sender: TObject);
    procedure aModificaStampaDaTreeExecute(Sender: TObject);
    procedure aModificaStampaDaTreeUpdate(Sender: TObject);
    procedure aCancellaStampaDaTreeExecute(Sender: TObject);
    procedure aCancellaStampaDaTreeUpdate(Sender: TObject);
    procedure aCopiaStampaExecute(Sender: TObject);
    procedure aCopiaStampaUpdate(Sender: TObject);
    procedure aSalvaStampaSuFileExecute(Sender: TObject);
    procedure aSalvaStampaSuFileUpdate(Sender: TObject);
    procedure aCaricaDaFileExecute(Sender: TObject);
    procedure aCaricaDaFileUpdate(Sender: TObject);
    procedure cxFolderItemDblClick(Sender: TObject);
    procedure TabStampeBeforePost(DataSet: TDataSet);
    procedure syFormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure aModificaStampaDaGridExecute(Sender: TObject);
    procedure aModificaStampaDaGridUpdate(Sender: TObject);
    procedure cxSelezionatiDblClick(Sender: TObject);
    procedure AttivaEditExecute(Sender: TObject);
    procedure esamixstampeCODICIRAD_FKChange(Sender: TField);
    procedure cxEsamixStampeDataControllerDataModeControllerDetailFirst(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
    function cxEsamixStampeDataControllerDataModeControllerDetailIsCurrentQuery(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant): Boolean;
    procedure esamixstampeNewRecord(DataSet: TDataSet);
    procedure FunzioniBeforeQuery(Sender: TAstaBaseClientDataSet);
  private
    { Private declarations }
    procedure ModificaStampa(Id,IType: integer);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function CaricaToolBar: TdxBars; override;
  end;

var
  FTabStampe: TFTabStampe;

implementation

uses DMCommon, DbConsts, msgdlgs,
{$IFNDEF MEDICORNER}
RunStat,
myReport,
{$ENDIF}
Windows, IIConsts, sysutils;

{$R *.DFM}

function TFTabStampe.CaricaToolBar: TdxBars;
begin
  result := dxBarManagerRadDiagn.Bars;
end;

procedure TFTabStampe.EspandiTuttoExecute(Sender: TObject);
begin
	cxFolderItem.FullExpand;
end;

procedure TFTabStampe.ChiudiTuttoExecute(Sender: TObject);
begin
  cxFolderItem.FullCollapse;
end;

procedure TFTabStampe.EliminaStampaExecute(Sender: TObject);
begin
  cxSelezionati.Controller.DeleteSelection;
  TabStampe.ApplyUpdates();
end;

procedure TFTabStampe.EliminaTutteExecute(Sender: TObject);
begin
  cxSelezionati.DataController.SelectAll;
  cxSelezionati.Controller.DeleteSelection;
  TabStampe.ApplyUpdates();
end;

procedure TFTabStampe.TabStampeBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  Sender.Parambyname('funzioni_fk').AsInteger := FunzioniPKFUNZIONI.AsInteger;
end;

procedure TFTabStampe.sFunzioniDataChange(Sender: TObject;
  Field: TField);
begin
  if (Field=nil) and TabStampe.Active then
  begin
     TabStampe.Parambyname('funzioni_fk').AsInteger := FunzioniPKFUNZIONI.AsInteger;
     TabStampe.syRefresh;
  end;
end;

procedure TFTabStampe.EliminaStampaUpdate(Sender: TObject);
begin
  EliminaStampa.Enabled := not TabStampe.IsEmpty {and (cxSelezionati.SelectedCount>0)};
end;

procedure TFTabStampe.EliminaTutteUpdate(Sender: TObject);
begin
  EliminaTutte.Enabled := not TabStampe.IsEmpty;
end;

procedure TFTabStampe.cxSelezionatiDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  Id: integer;
begin
  Id := (abs(qFolderItemFOLDER_ID.AsInteger) div 10);
  qSpostaRiga.Parambyname('item_id_fk').AsInteger := Id;  // abs(ItemITEM_ID.AsInteger);
  qSpostaRiga.Parambyname('funzioni_fk').AsInteger := FunzioniPKFUNZIONI.AsInteger;
  qSpostaRiga.Parambyname('reparti_fk').AsInteger := gblpkrep;
  qSpostaRiga.ExecCommit;
  TabStampe.syRefresh;
  TabStampe.Locate('ITEM_ID_FK',Id,[]);

  if cxSelezionatiTIPOREFERTO_FK.Visible and TabStampeTIPOREFERTO_FK.IsNull then
  begin
     PostMessage(Handle,SY_DBLCLICK,0,LongInt(AttivaEdit));
  end;

end;

procedure TFTabStampe.cxSelezionatiDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TcxDBTreeList) and (Sender is TcxGridSite);
  if Accept then
  begin
     if (FunzioniPKFUNZIONI.AsInteger in [70..75]) then
        Accept := (qFolderItemITEM_TYPE.AsInteger in [1,3])
     else
        Accept := (qFolderItemITEM_TYPE.AsInteger in [1,2,4]);
  end;
end;

procedure TFTabStampe.GruppoEsamiBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFTabStampe.TabStampeAfterPopulate(Sender: TObject);
begin
  cxSelezionatiTIPOREFERTO_FK.Visible := (FunzioniPKFUNZIONI.AsInteger in [70..75]);
  TabStampeTIPOREFERTO_FK.Required := cxSelezionatiTIPOREFERTO_FK.Visible;
  cxSelezionatiCD_AUTOMATICO.Visible := (FunzioniPKFUNZIONI.AsInteger in [70..72]);
end;

procedure TFTabStampe.esamixstampeBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('item_id_fk').AsInteger := TabStampeITEM_ID_FK.AsInteger;
end;

procedure TFTabStampe.CodiciEsameBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFTabStampe.cxFolderItemDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  cxSelezionati.Controller.DeleteSelection;
end;

procedure TFTabStampe.cxFolderItemDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var
  aSourceView: TcxGridDBTableView;
begin
  Accept := false;
  if (Source is TcxDragControlObject) and (Sender is TcxDBTreeList) then
  begin
     aSourceView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
     Accept := (aSourceView=cxSelezionati);
  end;

end;

procedure TFTabStampe.aNuovaStampaDaTreeExecute(Sender: TObject);
begin
{$IFNDEF MEDICORNER}
  FRunStat := TFRunStat.Create(nil);
  try
     FRunStat.Statistica.OpenNoFetch;
     FRunStat.Statistica.Insert;
     if FRunStat.ShowModal=mrOk then
     begin
        cxFolderItem.BeginUpdate;
        qFolderItem.syRefresh;
        qFolderItem.Locate('FOLDER_ID', -(FRunStat.StatisticaITEM_ID.AsInteger*10),[]);
        cxFolderItem.EndUpdate;
     end;
  finally
     FRunStat.Free;
  end;
{$ENDIF}
end;

procedure TFTabStampe.aModificaStampaDaTreeExecute(Sender: TObject);
begin
  ModificaStampa(abs(qFolderItemFOLDER_ID.AsInteger) div 10 , qFolderItemITEM_TYPE.AsInteger);
end;


procedure TFTabStampe.aModificaStampaDaTreeUpdate(Sender: TObject);
begin
  aModificaStampaDaTree.Enabled := not qFolderItem.IsEmpty and (qFolderItemITEM_TYPE.AsInteger in [1,2]);
end;

procedure TFTabStampe.ModificaStampa(Id,IType: integer);
begin
{$IFNDEF MEDICORNER}
  if (IType=2) then
  begin
    FRunStat := TFRunStat.Create(nil);
    try
       FRunStat.Statistica.Parambyname('item_id').AsInteger := Id;
       FRunStat.Statistica.Open;
       if FRunStat.ShowModal=mrOk then
       begin
        cxFolderItem.BeginUpdate;
        qFolderItem.syRefresh;
        qFolderItem.Locate('FOLDER_ID', -(Id*10),[]);
        cxFolderItem.EndUpdate;
       end;
    finally
       FRunStat.Free;
    end;
  end
  else begin
      CreaMyReport;
      FmyReport.ParentWindow := Handle;
      FmyReport.ApriDizionario;
      FmyReport.tblFolder.syRefresh;
      FmyReport.tblItem.Parambyname('item_id').AsInteger := Id;
      FmyReport.tblItem.syRefresh;

      FmyReport.ppReportExplorer1.Open(FmyReport.tblItemITEM_NAME.AsString,FmyReport.tblItemFOLDER_ID.AsInteger);
  end;
{$ENDIF}
end;

procedure TFTabStampe.aCancellaStampaDaTreeExecute(Sender: TObject);
begin

  if (MsgDlgPos(RS_Gene_Msg_ConfCanc, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes) then
  begin
     qFolderItem.Delete;
  end;

end;

procedure TFTabStampe.aCancellaStampaDaTreeUpdate(Sender: TObject);
begin
  aCancellaStampaDaTree.Enabled := not qFolderItem.IsEmpty and (qFolderItemITEM_TYPE.AsInteger in [1,2]);
end;

procedure TFTabStampe.aCopiaStampaExecute(Sender: TObject);
var
  res: integer;
begin
{$IFNDEF MEDICORNER}
  res := CopiaStatistica(abs(qFolderItemFOLDER_ID.AsInteger) div 10);
  if res>0 then
  begin
        cxFolderItem.BeginUpdate;
        qFolderItem.syRefresh;
        qFolderItem.Locate('FOLDER_ID', -(FRunStat.StatisticaITEM_ID.AsInteger*10),[]);
        cxFolderItem.EndUpdate;
  end;
{$ENDIF}
end;

procedure TFTabStampe.aCopiaStampaUpdate(Sender: TObject);
begin
  aCopiaStampa.Enabled := not qFolderItem.IsEmpty and (qFolderItemITEM_TYPE.AsInteger=2);
end;

procedure TFTabStampe.aSalvaStampaSuFileExecute(Sender: TObject);
begin
{$IFNDEF MEDICORNER}
  SalvaSuFile(abs(qFolderItemFOLDER_ID.AsInteger) div 10);
{$ENDIF}
end;

procedure TFTabStampe.aSalvaStampaSuFileUpdate(Sender: TObject);
begin
  aSalvaStampaSuFile.Enabled := not qFolderItem.IsEmpty and (qFolderItemITEM_TYPE.AsInteger=2);
end;

procedure TFTabStampe.aCaricaDaFileExecute(Sender: TObject);
var
  res: integer;
begin
{$IFNDEF MEDICORNER}
  res := CaricaDaFile;
  if res>0 then
  begin
    cxFolderItem.BeginUpdate;
    qFolderItem.syRefresh;
    qFolderItem.Locate('FOLDER_ID', -(res*10),[]);
    cxFolderItem.EndUpdate;
  end;
{$ENDIF}
end;

procedure TFTabStampe.aCaricaDaFileUpdate(Sender: TObject);
begin
//  aCaricaDaFile.Enabled := not qFolderItem.IsEmpty and (qFolderItemITEM_TYPE.AsInteger=2);
end;

procedure TFTabStampe.cxFolderItemDblClick(Sender: TObject);
begin
  PostMessage(Handle,SY_DBLCLICK,0,LongInt(aModificaStampaDaTree));
end;

procedure TFTabStampe.TabStampeBeforePost(DataSet: TDataSet);
begin
  if (FunzioniPKFUNZIONI.AsInteger in [70..75]) and (TabStampeTIPOREFERTO_FK.IsNull) then
  begin
//    TabStampeTIPOREFERTO_FK.FocusControl;
    MsgDlg(format(SFieldRequired, [TabStampeTIPOREFERTO_FK.DisplayName]), '', ktError, [kbOk]);
    Abort;
  end;

end;

destructor TFTabStampe.Destroy;
begin
  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5) then
  begin
    rsPropSaver1.SaveValues;
    rsPropSaver1.Storage.Save;
  end;
  inherited;
end;

procedure TFTabStampe.syFormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  FDMCommon.CaricaReferti(gblpkrep);
end;

procedure TFTabStampe.aModificaStampaDaGridExecute(Sender: TObject);
begin
  ModificaStampa(TabStampeITEM_ID.AsInteger , TabStampeITEM_TYPE.AsInteger);
end;

procedure TFTabStampe.aModificaStampaDaGridUpdate(Sender: TObject);
begin
  aModificaStampaDaGrid.Enabled := not TabStampe.IsEmpty and (TabStampeITEM_TYPE.AsInteger in [1,2]);
end;

procedure TFTabStampe.cxSelezionatiDblClick(Sender: TObject);
begin
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxGrid1),LongInt(aModificaStampaDaGrid));
end;

procedure TFTabStampe.AttivaEditExecute(Sender: TObject);
begin
//     TabStampe.Edit;
     cxGrid1.SetFocus;
     cxSelezionati.DataController.Edit;
     cxSelezionatiTIPOREFERTO_FK.Focused := true;
     cxSelezionati.Controller.EditingController.ShowEdit;

end;

constructor TFTabStampe.Create(AOwner: TComponent);
begin
  inherited;
  TcxLookupComboBoxProperties(cxEsamixStampe.GetColumnByFieldName('CODICIRAD_FK').Properties).Grid.DataController.DataModeController.SyncMode := True;
  rsPropSaver1.Storage.Load;
  rsPropSaver1.LoadValues;

  Funzioni.open;
  qFolderItem.open;
  Folder.open;
  Item.open;
  TabStampe.open;
  GruppoEsami.open;
  TipoVerifica.open;
  CodiciEsame.open;
  qTipoReferto.Open;

  aCaricaDaFile.Visible := {gblUserIsAdmin or} gblSuperUser;
  aSalvaStampaSuFile.Visible := {gblUserIsAdmin or} gblSuperUser;
  aCopiaStampa.Visible := {gblUserIsAdmin or} gblSuperUser;
  aCancellaStampaDaTree.Visible := {gblUserIsAdmin or} gblSuperUser;
  aModificaStampaDaTree.Visible := {gblUserIsAdmin or} gblSuperUser;
  aNuovaStampaDaTree.Visible := {gblUserIsAdmin or} gblSuperUser;

end;

procedure TFTabStampe.esamixstampeCODICIRAD_FKChange(Sender: TField);
begin
  esamixstampeDESCRIZIONE.AsString := CodiciEsame.Lookup('PKCODICIRAD',esamixstampeCODICIRAD_FK.AsInteger,'DESCRIZIONE');
end;

procedure TFTabStampe.cxEsamixStampeDataControllerDataModeControllerDetailFirst(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
begin
  FDMCommon.DetailFirst(ADataSet,AMasterDetailKeyFieldNames,AMasterDetailKeyValues,AReopened);
end;

function TFTabStampe.cxEsamixStampeDataControllerDataModeControllerDetailIsCurrentQuery(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant): Boolean;
begin
  result := FDMCommon.DetailIsCurrentQuery(ADataSet,AMasterDetailKeyFieldNames,AMasterDetailKeyValues);
end;

procedure TFTabStampe.esamixstampeNewRecord(DataSet: TDataSet);
begin
  inherited;
  esamixstampeINCLUDI.AsInteger := 1;
end;

procedure TFTabStampe.FunzioniBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

initialization
  Classes.RegisterClass(TFTabStampe);

end.
