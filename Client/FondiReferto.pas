unit FondiReferto;

interface

uses
  BaseRad, {}cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  Classes, ActnList, CSEZForm, StdCtrls, cxButtons, Controls, ExtCtrls,
  AstaDrv2, AstaClientDataset, cxHeader, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxContainer, cxNavigator,
  cxGroupBox;

type
  TFFondiReferto = class(TFBaseRad)
    ActionList1: TActionList;
    sDaFondere: TDataSource;
    GridDaFondere: TcxGridDBTableView;
    cxGridDaFondereLevel1: TcxGridLevel;
    cxGridDaFondere: TcxGrid;
    GridDaFonderePKTRIAGE: TcxGridDBColumn;
    GridDaFondereRIS_STUDY_EUID: TcxGridDBColumn;
    GridDaFondereDIAGNOSTICA: TcxGridDBColumn;
    fcLabel6: TcxHeader;
    Panel3: TPanel;
    Panel4: TPanel;
    fcLabel1: TcxHeader;
    cxGridFusi: TcxGrid;
    GridFusi: TcxGridDBTableView;
    cxGridFusiLevel1: TcxGridLevel;
    DaFondere: TAstaClientDataSet;
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
    DaFondereOLD_REFERTI_FK: TIntegerField;
    DaFondereTECNICO: TStringField;
    DaFondereMEDESECUTORE: TStringField;
    Fusi: TAstaClientDataSet;
    sFusi: TDataSource;
    GridFusiPKTRIAGE: TcxGridDBColumn;
    GridFusiRIS_STUDY_EUID: TcxGridDBColumn;
    GridFusiDIAGNOSTICA: TcxGridDBColumn;
    aSelezionaSingoloCodice: TAction;
    aSelezionaTuttiCodici: TAction;
    aDeselezionaTuttiCodici: TAction;
    aDeselezionaSingolo: TAction;
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
    DaFondereDIAGNOSTICA_FK: TIntegerField;
    FusiIMPEGNATIVE_FK: TIntegerField;
    FusiPERSONALE_FK: TIntegerField;
    FusiORA_INIZIO: TDateTimeField;
    FusiORA_FINE: TDateTimeField;
    FusiREPARTI_FK: TIntegerField;
    FusiCOD_MED_ESEGUE: TIntegerField;
    FusiGRESAMI_FK: TIntegerField;
    DaFondereIMPEGNATIVE_FK: TIntegerField;
    DaFonderePERSONALE_FK: TIntegerField;
    DaFondereORA_INIZIO: TDateTimeField;
    DaFondereORA_FINE: TDateTimeField;
    DaFondereREPARTI_FK: TIntegerField;
    DaFondereCOD_MED_ESEGUE: TIntegerField;
    DaFondereGRESAMI_FK: TIntegerField;
    procedure GridDaFondereDblClick(Sender: TObject);
    procedure GridDaFondereDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure GridDaFondereDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure GridFusiDblClick(Sender: TObject);
    procedure GridFusiDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure GridFusiDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure aSelezionaSingoloCodiceExecute(Sender: TObject);
    procedure aSelezionaSingoloCodiceUpdate(Sender: TObject);
    procedure aSelezionaTuttiCodiciExecute(Sender: TObject);
    procedure aSelezionaTuttiCodiciUpdate(Sender: TObject);
    procedure aDeselezionaTuttiCodiciExecute(Sender: TObject);
    procedure aDeselezionaTuttiCodiciUpdate(Sender: TObject);
    procedure aDeselezionaSingoloExecute(Sender: TObject);
    procedure aDeselezionaSingoloUpdate(Sender: TObject);
    procedure GridDaFondereKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridFusiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  protected
    procedure DoCreate; override;
    procedure DoShow; override;
  public
    { Public declarations }
//     xPKREFERTI: Integer;
//     xPrestazioni: TAstaClientDataSet;
  end;

var
  FFondiReferto: TFFondiReferto;

implementation

uses
  BaseRefer, Forms, Windows,IIConsts,AstaDBtypes, DMCommon;

{$R *.dfm}

procedure TFFondiReferto.DoShow;
begin
  inherited;
  ActiveControl := GridDaFondere.Site;
  GridDaFondere.Controller.GotoFirst;

end;

procedure TFFondiReferto.GridDaFondereDblClick(Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxGridDaFondere),LongInt(aSelezionaSingoloCodice));
end;

procedure TFFondiReferto.DoCreate;
begin
  inherited;
  DaFondere.OpenNoFetch;
  Fusi.OpenNoFetch;  
end;

procedure TFFondiReferto.GridDaFondereDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  k: Integer;
  i: integer;
begin
  inherited;

  Screen.Cursor := crHourGlass;
  Fusi.DisableControls;
  daFondere.DisableControls;

  try

  for k := 0 to GridFusi.Controller.SelectedRecordCount - 1 do
  begin
    if Fusi.Locate('PKTRIAGE',GridFusi.Controller.SelectedRecords[k].Values[GridFusiPKTRIAGE.Index],[]) then
    begin
      daFondere.Append;
      for i:=0 to daFondere.FieldCount-1 do
          if (Fusi.FindField(daFondere.Fields[i].FieldName)<>nil) then
                daFondere.Fields[i].Value := Fusi.FieldByName(daFondere.Fields[i].FieldName).Value;
      daFondere.Post;
    end;
  end;

  if GridFusi.Controller.SelectedRecordCount>0 then
    GridFusi.Controller.DeleteSelection;

  finally
    Fusi.EnableControls;
    daFondere.EnableControls;
    if (GridFusi.DataController.RecordCount>0) and Assigned(GridFusi.Controller.FocusedRecord) then
        GridFusi.Controller.FocusedRecord.Selected := true;

    Screen.Cursor := crDefault;
  end;


end;

procedure TFFondiReferto.GridDaFondereDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var
  aSourceView: TcxGridDBTableView;
begin
  inherited;
  Accept := false;
  if (Source is TcxDragControlObject) and (Sender is TcxGridSite) then
  begin
     aSourceView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
     Accept := (aSourceView=GridFusi);
  end;

end;

procedure TFFondiReferto.GridFusiDblClick(Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxGridFusi),LongInt(aDeselezionaSingolo));
end;

procedure TFFondiReferto.GridFusiDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  k: integer;
  i: integer;
begin
  inherited;

  Screen.Cursor := crHourGlass;
  daFondere.DisableControls;
  Fusi.DisableControls;
  try

  for k := 0 to GriddaFondere.Controller.SelectedRecordCount - 1 do
  begin
    if daFondere.Locate('PKTRIAGE',GriddaFondere.Controller.SelectedRecords[k].Values[GriddaFonderePKTRIAGE.Index],[]) then
    begin
      Fusi.Append;
      for i:=0 to Fusi.FieldCount-1 do
          if (daFondere.FindField(Fusi.Fields[i].FieldName)<>nil) then
                Fusi.Fields[i].Value := daFondere.FieldByName(Fusi.Fields[i].FieldName).Value;
      Fusi.Post;
    end;
  end;

  if GriddaFondere.Controller.SelectedRecordCount>0 then
  begin
    GriddaFondere.Controller.DeleteSelection;
  end;

  finally
    Fusi.EnableControls;
    daFondere.EnableControls;
    if (GriddaFondere.DataController.RecordCount>0) and Assigned(GriddaFondere.Controller.FocusedRecord) then
        GriddaFondere.Controller.FocusedRecord.Selected := true;

    Screen.Cursor := crDefault;
  end;

end;

procedure TFFondiReferto.GridFusiDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var
  aSourceView: TcxGridDBTableView;
begin
  inherited;
  Accept := false;
  if (Source is TcxDragControlObject) and (Sender is TcxGridSite) then
  begin
     aSourceView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
     Accept := (aSourceView=GridDaFondere);
  end;

end;

procedure TFFondiReferto.aSelezionaSingoloCodiceExecute(Sender: TObject);
begin
  inherited;
  GridFusiDragDrop(GridFusi, GridDaFondere, 0, 0);
end;

procedure TFFondiReferto.aSelezionaSingoloCodiceUpdate(Sender: TObject);
begin
  inherited;
  aSelezionaSingoloCodice.Enabled := DaFondere.Active and not DaFondere.IsEmpty;
end;

procedure TFFondiReferto.aSelezionaTuttiCodiciExecute(Sender: TObject);
begin
  inherited;
  GridDaFondere.DataController.SelectAll;
  GridFusiDragDrop(GridFusi, GridDaFondere, 0, 0);

end;

procedure TFFondiReferto.aSelezionaTuttiCodiciUpdate(Sender: TObject);
begin
  inherited;
  aSelezionaTuttiCodici.Enabled := DaFondere.Active and not DaFondere.IsEmpty;
end;

procedure TFFondiReferto.aDeselezionaTuttiCodiciExecute(Sender: TObject);
begin
  inherited;
  GridFusi.DataController.SelectAll;
  GridDaFondereDragDrop(GridDaFondere, GridFusi, 0, 0);

end;

procedure TFFondiReferto.aDeselezionaTuttiCodiciUpdate(Sender: TObject);
begin
  inherited;
  aDeselezionaTuttiCodici.Enabled := Fusi.Active and not Fusi.IsEmpty;
end;

procedure TFFondiReferto.aDeselezionaSingoloExecute(Sender: TObject);
begin
  inherited;
  GridDaFondereDragDrop(GridDaFondere, GridFusi, 0, 0);
end;

procedure TFFondiReferto.aDeselezionaSingoloUpdate(Sender: TObject);
begin
  inherited;
  aDeselezionaSingolo.Enabled := Fusi.Active and not Fusi.IsEmpty;
end;

procedure TFFondiReferto.GridDaFondereKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=VK_RETURN then
     aSelezionaSingoloCodice.Execute;

end;

procedure TFFondiReferto.GridFusiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_RETURN then
     aDeselezionaSingolo.Execute;

end;

end.
