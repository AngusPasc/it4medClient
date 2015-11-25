unit TreeTestiRic;

interface

uses
  BaseRad, Forms, {}cxGraphics, cxCustomData, cxStyles, cxTL, cxMaskEdit,
  cxMemo, cxInplaceContainer, cxDBTL, cxTLData, dxBar, Menus, DB, AstaDrv2,
  AstaClientDataset, ImgList, Controls, Classes, ActnList, cxContainer,
  cxEdit, cxTextEdit, cxDBEdit, cxControls, cxSplitter, CSEZForm,
    ExtCtrls,  dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinsdxBarPainter, cxClasses,
  cxTLdxBarBuiltInMenu, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxLookAndFeels, cxGroupBox;

type
  TFTreeTestiRic = class(TFBaseRad)
    ActionList1: TActionList;
    EspandiTutto: TAction;
    ChiudiTutto: TAction;
    sTestiStandard: TDataSource;
    Seleziona: TAction;
    Annulla: TAction;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    Splitter1: TcxSplitter;
    cxTesto: TcxDBMemo;
    TestiStandard: TAstaClientDataSet;
    TestiStandardPKTESTISTD: TIntegerField;
    TestiStandardDESCRIZIONE: TStringField;
    TestiStandardUSER_ID: TIntegerField;
    TestiStandardTIPOTESTO: TIntegerField;
    TestiStandardREPARTI_FK: TIntegerField;
    dxBarPopStandard: TdxBarPopupMenu;
    TestiStandardDIAGNOSI: TStringField;
    TestiStandardTESTISTD_FK: TIntegerField;
    cxTestiStd: TcxDBTreeList;
    cxDBTreeList1PKTESTISTD: TcxDBTreeListColumn;
    cxDBTreeList1DESCRIZIONE: TcxDBTreeListColumn;
    cxDBTreeList1USER_ID: TcxDBTreeListColumn;
    cxDBTreeList1CODICE: TcxDBTreeListColumn;
    cxDBTreeList1TIPOTESTO: TcxDBTreeListColumn;
    cxDBTreeList1REPARTI_FK: TcxDBTreeListColumn;
    cxDBTreeList1DIAGNOSI: TcxDBTreeListColumn;
    cxDBTreeList1TESTISTD_FK: TcxDBTreeListColumn;
    aNuovoTesto: TAction;
    dxBarButton4: TdxBarButton;
    aInserisciTesto: TAction;
    aCancella: TAction;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    aModifica: TAction;
    dxBarButton9: TdxBarButton;
    TestiStandardTIPOFOLDER: TFloatField;
    aImportaTesto: TAction;
    dxBarButton3: TdxBarButton;
    dxBarPopTesto: TdxBarPopupMenu;
    TestiStandardCODICE: TStringField;
dxBarManager1Bar1: TdxBar;    
    procedure EspandiTuttoExecute(Sender: TObject);
    procedure ChiudiTuttoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AnnullaExecute(Sender: TObject);
    procedure SelezionaUpdate(Sender: TObject);
    procedure BaseFormClose(Sender: TObject; var Action: TCloseAction);
    procedure TestiStandardBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure TestiStandardNewRecord(DataSet: TDataSet);
    procedure cxTestiStdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxTestiStdDblClick(Sender: TObject);
    procedure cxTestiStdDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure aNuovoTestoExecute(Sender: TObject);
    procedure SelezionaExecute(Sender: TObject);
    procedure aInserisciTestoExecute(Sender: TObject);
    procedure aCancellaExecute(Sender: TObject);
    procedure aCancellaUpdate(Sender: TObject);
    procedure aInserisciTestoUpdate(Sender: TObject);
    procedure aModificaExecute(Sender: TObject);
    procedure aModificaUpdate(Sender: TObject);
    procedure TestiStandardCalcFields(DataSet: TDataSet);
    procedure aImportaTestoExecute(Sender: TObject);
    procedure aImportaTestoUpdate(Sender: TObject);
    procedure aNuovoTestoUpdate(Sender: TObject);
    procedure cxTestiStdFocusedNodeChanged(Sender: TcxCustomTreeList;
      APrevFocusedNode, AFocusedNode: TcxTreeListNode);
    procedure cxTestiStdInitInsertingRecord(Sender: TcxCustomDBTreeList;
      AFocusedNode: TcxDBTreeListNode; var AHandled: Boolean);
  private
    { Private declarations }
    FModificabile: boolean;
    procedure SetModificabile(Value: boolean);
    function IsHitAtNode(ATreeList: TcxDBTreeList; X, Y: Integer): Boolean;
  protected
    procedure DoCreate; override;
  public
    { Public declarations }
    FormChiama: TCustomForm;
    xgblCodUtente: integer;
        
    property Modificabile: boolean read FModificabile write SetModificabile default true;
  end;

var
  FTreeTestiRic: TFTreeTestiRic;

implementation

uses DMCommon, sysutils, Windows, ModificaTestoStd, IIConsts;


{$R *.DFM}

procedure TFTreeTestiRic.SetModificabile(Value: boolean);
begin
  FModificabile := Value;
  if Value then
     cxTestiStd.DragMode := dmAutomatic
  else
     cxTestiStd.DragMode := dmManual;
end;

procedure TFTreeTestiRic.EspandiTuttoExecute(Sender: TObject);
begin
	cxTestiStd.FullExpand;
end;

procedure TFTreeTestiRic.ChiudiTuttoExecute(Sender: TObject);
begin
	cxTestiStd.FullCollapse;
end;

procedure TFTreeTestiRic.FormShow(Sender: TObject);
begin
  TestiStandard.open;
  aImportaTesto.Visible := Assigned(FormChiama);
  cxTestiStd.FullCollapse;
  if FDMCommon.LeggiPostoLavoroFLAG_TESTISTD.AsInteger=0 then
     Caption := RS_TestiStd
  else
     Caption := RS_TestiMedico;
  PostMessage(Handle,SY_FOCUSPRIMOCAMPO,0,LongInt(cxTestiStd))     
end;

procedure TFTreeTestiRic.AnnullaExecute(Sender: TObject);
begin
  if (TestiStandard.State in dsEditModes) then
     TestiStandard.Cancel;
  ModalResult := mrCancel;
end;


procedure TFTreeTestiRic.SelezionaUpdate(Sender: TObject);
begin
  Seleziona.Enabled := Assigned(cxTestiStd.FocusedNode) and {not cxTestiStd.FocusedNode.HasChildren and}
                            {(TestiStandardTIPOTESTO.AsInteger=1) and} not (TestiStandardDIAGNOSI.IsNull or (TestiStandardDIAGNOSI.AsString=''));
end;

procedure TFTreeTestiRic.BaseFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if (TestiStandard.State in dsEditModes) then
     TestiStandard.Post;
end;

procedure TFTreeTestiRic.TestiStandardBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  inherited;
  if FDMCommon.LeggiPostoLavoroFLAG_TESTISTD.AsInteger=1 then
     Sender.Parambyname('where').AsString := format('# and user_id = %d',[xgblCodUtente])
  else
     Sender.Parambyname('where').AsString := format('# and reparti_fk = %d',[gblpkrep]);
end;

procedure TFTreeTestiRic.TestiStandardNewRecord(DataSet: TDataSet);
begin
  inherited;
  TestiStandardUSER_ID.AsInteger := xgblCodUtente;
  TestiStandardREPARTI_FK.AsInteger := gblpkrep;
  TestiStandardTIPOTESTO.AsInteger := 1;
end;

procedure TFTreeTestiRic.cxTestiStdKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key=VK_RETURN) then
  begin
      Seleziona.Execute;
//      Key := #0;
  end;

end;

procedure TFTreeTestiRic.cxTestiStdDblClick(Sender: TObject);
begin
  inherited;
  aModifica.Execute;
end;

procedure TFTreeTestiRic.cxTestiStdDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  Accept := IsHitAtNode(TcxDBTreeList(Sender), X, Y);
end;

function TFTreeTestiRic.IsHitAtNode(ATreeList: TcxDBTreeList; X,
  Y: Integer): Boolean;
begin
  with ATreeList do
  begin
    HitTest.ReCalculate(Point(X,Y));
    Result := HitTest.HitAtNode;
  end;
end;

procedure TFTreeTestiRic.aNuovoTestoExecute(Sender: TObject);
var
  ParentId: integer;
begin
  inherited;

  if not TestiStandardTESTISTD_FK.IsNull then
     ParentId := TestiStandardTESTISTD_FK.AsInteger
  else
     ParentId := -1;
  TestiStandard.Append;
//  TestiStandardTIPOTESTO.AsInteger := 1;
  if ParentId>=0 then
     TestiStandardTESTISTD_FK.AsInteger := ParentId
  else
     TestiStandardTESTISTD_FK.Clear;

  FModificaTestoStd := TFModificaTestoStd.Create(nil);
  try
     FModificaTestoStd.TestoStandard.DataBinding.DataField := 'DIAGNOSI';
     FModificaTestoStd.sTestiStd.Dataset := TestiStandard;
     FModificaTestoStd.ShowModal;
  finally
     FModificaTestoStd.Free;
  end;
end;

procedure TFTreeTestiRic.SelezionaExecute(Sender: TObject);
begin
  inherited;
  if (TestiStandard.State in dsEditModes) then
     TestiStandard.Post;
  ModalResult := mrOk;
end;

procedure TFTreeTestiRic.aInserisciTestoExecute(Sender: TObject);
var
  ParentId: integer;
begin
  inherited;
  ParentId := TestiStandardPKTESTISTD.AsInteger;
  TestiStandard.Append;
//  TestiStandardTIPOTESTO.AsInteger := 1;
  TestiStandardTESTISTD_FK.AsInteger := ParentId;
  FModificaTestoStd := TFModificaTestoStd.Create(nil);
  try
     FModificaTestoStd.TestoStandard.DataBinding.DataField := 'DIAGNOSI';
     FModificaTestoStd.sTestiStd.Dataset := TestiStandard;
     FModificaTestoStd.ShowModal;
  finally
     FModificaTestoStd.Free;
  end;

end;

procedure TFTreeTestiRic.aCancellaExecute(Sender: TObject);
begin
  cxTestiStd.BeginUpdate;
  cxTestiStd.FocusedNode.Delete;
  cxTestiStd.EndUpdate;
end;

procedure TFTreeTestiRic.aCancellaUpdate(Sender: TObject);
begin
  inherited;
  aCancella.Enabled := Assigned(cxTestiStd.FocusedNode) and Modificabile;
end;

procedure TFTreeTestiRic.aInserisciTestoUpdate(Sender: TObject);
begin
  inherited;
  aInserisciTesto.Enabled := Assigned(cxTestiStd.FocusedNode) and Modificabile;
end;

procedure TFTreeTestiRic.aModificaExecute(Sender: TObject);
begin
  inherited;
  FModificaTestoStd := TFModificaTestoStd.Create(nil);
  try
     FModificaTestoStd.TestoStandard.DataBinding.DataField := 'DIAGNOSI';
     FModificaTestoStd.sTestiStd.Dataset := TestiStandard;
     FModificaTestoStd.ShowModal;
  finally
     FModificaTestoStd.Free;
  end;

end;

procedure TFTreeTestiRic.aModificaUpdate(Sender: TObject);
begin
  inherited;
  aModifica.Enabled := Assigned(cxTestiStd.FocusedNode) and Modificabile;
end;

procedure TFTreeTestiRic.TestiStandardCalcFields(DataSet: TDataSet);
begin
  inherited;
//  if TestiStandardTIPOTESTO.AsInteger=1 then
  if (TestiStandardDIAGNOSI.IsNull or (TestiStandardDIAGNOSI.AsString='')) then
     TestiStandardTIPOFOLDER.AsInteger := 28
  else
     TestiStandardTIPOFOLDER.AsInteger := 6;

end;

procedure TFTreeTestiRic.aImportaTestoExecute(Sender: TObject);
begin
  inherited;
  PostMessage( FormChiama.Handle, SY_COPYFROMCLIPBOARD, 0, 0);
end;

procedure TFTreeTestiRic.aImportaTestoUpdate(Sender: TObject);
begin
  inherited;
  aImportaTesto.Enabled := Assigned(FormChiama) and Modificabile and not TestiStandard.IsEmpty and not (TestiStandardDIAGNOSI.IsNull or (TestiStandardDIAGNOSI.AsString=''));
end;

procedure TFTreeTestiRic.DoCreate;
begin
  inherited;
  TestiStandard.Parambyname('TIPOTESTO').AsInteger := 1;
  FModificabile := true;
  ReadBarCode := False;  
end;

procedure TFTreeTestiRic.aNuovoTestoUpdate(Sender: TObject);
begin
  inherited;
  aNuovoTesto.Enabled := Modificabile;
end;

procedure TFTreeTestiRic.cxTestiStdFocusedNodeChanged(
  Sender: TcxCustomTreeList; APrevFocusedNode,
  AFocusedNode: TcxTreeListNode);
begin
  inherited;

//  cxTesto.Enabled := (APrevFocusedNode<>nil) and (AFocusedNode<>nil) and (TestiStandardTIPOTESTO.AsInteger=1); // not AFocusedNode.HasChildren;

end;

procedure TFTreeTestiRic.cxTestiStdInitInsertingRecord(
  Sender: TcxCustomDBTreeList; AFocusedNode: TcxDBTreeListNode;
  var AHandled: Boolean);
begin
  inherited;
  if AFocusedNode <> nil then
    TestiStandardTESTISTD_FK.Value := AFocusedNode.ParentKeyValue;

end;

end.
