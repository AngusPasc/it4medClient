unit SpostaReferti;

interface

uses
  BaseRad, {}cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxTextEdit, Classes, ActnList,
  AstaDrv2, AstaClientDataset, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxHeader, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, CSEZForm, StdCtrls, cxButtons, Controls,
  ExtCtrls, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxNavigator, cxGroupBox;

type
  TFSpostaReferti = class(TFBaseRad)
    sPrestazioni: TDataSource;
    Spostati: TAstaClientDataSet;
    SpostatiPKPRESTAZIONI: TFloatField;
    SpostatiPROGRESSIVO_RIGA: TIntegerField;
    SpostatiNUMERO_PRESTAZIONE: TIntegerField;
    SpostatiTRIAGE_FK: TIntegerField;
    SpostatiSTATO: TIntegerField;
    SpostatiDESCRIZIONE: TStringField;
    SpostatiCODICIRAD_FK: TIntegerField;
    SpostatiCODICE: TStringField;
    sSpostati: TDataSource;
    ActionList1: TActionList;
    aSelezionaSingoloCodice: TAction;
    aSelezionaTuttiCodici: TAction;
    aDeselezionaTuttiCodici: TAction;
    aDeselezionaSingolo: TAction;
    Panel2: TPanel;
    lblReparto: TcxLabel;
    cxReparti: TcxLookupComboBox;
    sRadiologie: TDataSource;
    cxLabel1: TcxLabel;
    cxRiservato: TcxLookupComboBox;
    LkOperatore: TAstaClientDataSet;
    LkOperatoreOPERATORE: TStringField;
    LkOperatorePKPERSONALE: TIntegerField;
    LkOperatoreTELEFONO: TStringField;
    sLkOperatore: TDataSource;
    aConferma: TAction;
    LeggiCodice: TAstaClientDataSet;
    LeggiCodiceCODICIRAD_FK: TIntegerField;
    Panel3: TPanel;
    fcLabel6: TcxHeader;
    cxGridPrestazioni: TcxGrid;
    GridPrestazioni: TcxGridDBTableView;
    GridPrestazioniCODICE: TcxGridDBColumn;
    GridPrestazioniDESCRIZIONE: TcxGridDBColumn;
    GridPrestazioniPKPRESTAZIONI: TcxGridDBColumn;
    cxGridPrestazioniLevel1: TcxGridLevel;
    Panel4: TPanel;
    fcLabel1: TcxHeader;
    cxGridSpostati: TcxGrid;
    GridSpostati: TcxGridDBTableView;
    GridSpostatiCODICE: TcxGridDBColumn;
    GridSpostatiDESCRIZIONE: TcxGridDBColumn;
    GridSpostatiPKPRESTAZIONI: TcxGridDBColumn;
    cxGridSpostatiLevel1: TcxGridLevel;
    Prestazioni: TAstaClientDataSet;
    PrestazioniPKPRESTAZIONI: TFloatField;
    PrestazioniPROGRESSIVO_RIGA: TIntegerField;
    PrestazioniNUMERO_PRESTAZIONE: TIntegerField;
    PrestazioniTRIAGE_FK: TIntegerField;
    PrestazioniSTATO: TIntegerField;
    PrestazioniDESCRIZIONE: TStringField;
    PrestazioniCODICIRAD_FK: TIntegerField;
    PrestazioniCODICE: TStringField;
    PrestazioniREFNEGTEXT_FK: TIntegerField;
    PrestazioniESITO_SCREENING_FK: TIntegerField;
    PrestazioniTIPOLIVELLO_FK: TStringField;
    PrestazioniMAGART_FK: TIntegerField;
    PrestazioniQUANTITA: TFloatField;
    PrestazioniCEIMMAGINI: TIntegerField;
    PrestazioniRIS_STUDY_EUID: TStringField;
    SpostatiCEIMMAGINI: TIntegerField;
    SpostatiRIS_STUDY_EUID: TStringField;
    SpostatiESITO_SCREENING_FK: TIntegerField;
    SpostatiTIPOLIVELLO_FK: TStringField;
    SpostatiREFNEGTEXT_FK: TIntegerField;
    SpostatiMAGART_FK: TIntegerField;
    SpostatiQUANTITA: TFloatField;
    GridPrestazioniRIS_STUDY_EUID: TcxGridDBColumn;
    GridSpostatiRIS_STUDY_EUID: TcxGridDBColumn;
    PrestazioniQP: TFloatField;
    SpostatiQP: TFloatField;
    procedure fcLabel6SectionClick(HeaderControl: TcxCustomHeader;
      Section: TcxHeaderSection);
    procedure aSelezionaSingoloCodiceExecute(Sender: TObject);
    procedure GridPrestazioniDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure GridSpostatiDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure GridPrestazioniDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure GridSpostatiDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure aSelezionaTuttiCodiciExecute(Sender: TObject);
    procedure aDeselezionaTuttiCodiciExecute(Sender: TObject);
    procedure aDeselezionaSingoloExecute(Sender: TObject);
    procedure aSelezionaSingoloCodiceUpdate(Sender: TObject);
    procedure aSelezionaTuttiCodiciUpdate(Sender: TObject);
    procedure aDeselezionaTuttiCodiciUpdate(Sender: TObject);
    procedure aDeselezionaSingoloUpdate(Sender: TObject);
    procedure cxRepartiPropertiesCloseUp(Sender: TObject);
    procedure GridPrestazioniDblClick(Sender: TObject);
    procedure GridSpostatiDblClick(Sender: TObject);
    procedure fcLabel1SectionClick(HeaderControl: TcxCustomHeader;
      Section: TcxHeaderSection);
    procedure aConfermaExecute(Sender: TObject);
    procedure aConfermaUpdate(Sender: TObject);
    procedure GridPrestazioniEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure GridSpostatiEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  protected
    procedure DoCreate; override;
    procedure DoShow; override;
  public
    { Public declarations }
  end;

var
  FSpostaReferti: TFSpostaReferti;

implementation

uses DMCommon, Forms, Windows, SysUtils, Msgdlgs, IIConsts, BaseRefer;

{$R *.dfm}

procedure TFSpostaReferti.fcLabel6SectionClick(
  HeaderControl: TcxCustomHeader; Section: TcxHeaderSection);
begin
  inherited;
  case Section.Index of
  1: aSelezionaSingoloCodice.Execute;
  2: aSelezionaTuttiCodici.Execute;
  end;

end;

procedure TFSpostaReferti.aSelezionaSingoloCodiceExecute(Sender: TObject);
begin
  inherited;
  GridSpostatiDragDrop(GridSpostati, GridPrestazioni, 0, 0);
end;

procedure TFSpostaReferti.GridPrestazioniDragDrop(Sender, Source: TObject;
  X, Y: Integer);
var
  k: Integer;
  i: integer;
begin

  Screen.Cursor := crHourGlass;
  Spostati.DisableControls;
  Prestazioni.DisableControls;

  try

  for k := 0 to GridSpostati.Controller.SelectedRecordCount - 1 do
  begin
    if Spostati.Locate('PKPRESTAZIONI',GridSpostati.Controller.SelectedRecords[k].Values[GridSpostatiPKPRESTAZIONI.Index],[]) then
    begin
      Prestazioni.Append;
      for i:=0 to Prestazioni.FieldCount-1 do
          if (Spostati.FindField(Prestazioni.Fields[i].FieldName)<>nil) then
                Prestazioni.Fields[i].Value := Spostati.FieldByName(Prestazioni.Fields[i].FieldName).Value;
      Prestazioni.Post;
    end;
  end;

  if GridSpostati.Controller.SelectedRecordCount>0 then
    GridSpostati.Controller.DeleteSelection;

  finally
    Spostati.EnableControls;
    Prestazioni.EnableControls;
    if (GridSpostati.DataController.RecordCount>0) and Assigned(GridSpostati.Controller.FocusedRecord) then
        GridSpostati.Controller.FocusedRecord.Selected := true;

    Screen.Cursor := crDefault;
  end;

end;

procedure TFSpostaReferti.GridPrestazioniDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  aSourceView: TcxGridDBTableView;
begin
  inherited;
  Accept := false;
  if (Source is TcxDragControlObject) and (Sender is TcxGridSite) then
  begin
     aSourceView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
     Accept := (aSourceView=GridSpostati);
  end;

end;

procedure TFSpostaReferti.GridSpostatiDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  k: integer;
  i: integer;
begin

  Screen.Cursor := crHourGlass;
  Prestazioni.DisableControls;
  Spostati.DisableControls;
  try

  for k := 0 to GridPrestazioni.Controller.SelectedRecordCount - 1 do
  begin
    if Prestazioni.Locate('PKPRESTAZIONI',GridPrestazioni.Controller.SelectedRecords[k].Values[GridPrestazioniPKPRESTAZIONI.Index],[]) then
    begin
      Spostati.Append;
      for i:=0 to Spostati.FieldCount-1 do
          if (Prestazioni.FindField(Spostati.Fields[i].FieldName)<>nil) then
                Spostati.Fields[i].Value := Prestazioni.FieldByName(Spostati.Fields[i].FieldName).Value;
      Spostati.Post;
    end;
  end;

  if GridPrestazioni.Controller.SelectedRecordCount>0 then
  begin
    GridPrestazioni.Controller.DeleteSelection;
  end;

  finally
    Spostati.EnableControls;
    Prestazioni.EnableControls;
    if (GridPrestazioni.DataController.RecordCount>0) and Assigned(GridPrestazioni.Controller.FocusedRecord) then
        GridPrestazioni.Controller.FocusedRecord.Selected := true;

    Screen.Cursor := crDefault;
  end;

end;


procedure TFSpostaReferti.GridSpostatiDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var
  aSourceView: TcxGridDBTableView;
begin
  inherited;
  Accept := false;
  if (Source is TcxDragControlObject) and (Sender is TcxGridSite) then
  begin
     aSourceView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
     Accept := (aSourceView=GridPrestazioni);
  end;

end;

procedure TFSpostaReferti.aSelezionaTuttiCodiciExecute(Sender: TObject);
begin
  inherited;
  GridPrestazioni.DataController.SelectAll;
  GridSpostatiDragDrop(GridSpostati, GridPrestazioni, 0, 0);

end;

procedure TFSpostaReferti.aDeselezionaTuttiCodiciExecute(Sender: TObject);
begin
  inherited;
  GridSpostati.DataController.SelectAll;
  GridPrestazioniDragDrop(GridPrestazioni, GridSpostati, 0, 0);

end;

procedure TFSpostaReferti.aDeselezionaSingoloExecute(Sender: TObject);
begin
  inherited;
  GridPrestazioniDragDrop(GridPrestazioni, GridSpostati, 0, 0);
end;

procedure TFSpostaReferti.aSelezionaSingoloCodiceUpdate(Sender: TObject);
begin
  inherited;
  aSelezionaSingoloCodice.Enabled := Prestazioni.Active and not Prestazioni.IsEmpty;
end;

procedure TFSpostaReferti.aSelezionaTuttiCodiciUpdate(Sender: TObject);
begin
  inherited;
  aSelezionaTuttiCodici.Enabled := Prestazioni.Active and not Prestazioni.IsEmpty;
end;

procedure TFSpostaReferti.aDeselezionaTuttiCodiciUpdate(Sender: TObject);
begin
  inherited;
  aDeselezionaTuttiCodici.Enabled := Spostati.Active and not Spostati.IsEmpty;
end;

procedure TFSpostaReferti.aDeselezionaSingoloUpdate(Sender: TObject);
begin
  inherited;
  aDeselezionaSingolo.Enabled := Spostati.Active and not Spostati.IsEmpty;
end;

procedure TFSpostaReferti.DoCreate;
begin
  inherited;
  cxReparti.Properties.Grid.DataController.DataModeController.SyncMode := True;
  cxRiservato.Properties.Grid.DataController.DataModeController.SyncMode := True;
  Prestazioni.OpenNoFetch;
  Spostati.OpenNoFetch;
end;

procedure TFSpostaReferti.cxRepartiPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  LkOperatore.Parambyname('reparti_fk').AsInteger := FDMCommon.VarToInt(cxReparti.EditValue);
  LkOperatore.syRefresh;

end;

procedure TFSpostaReferti.GridPrestazioniDblClick(Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxGridPrestazioni),LongInt(aSelezionaSingoloCodice));
end;

procedure TFSpostaReferti.GridSpostatiDblClick(Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxGridSpostati),LongInt(aDeselezionaSingolo));
end;

procedure TFSpostaReferti.fcLabel1SectionClick(
  HeaderControl: TcxCustomHeader; Section: TcxHeaderSection);
begin
  inherited;
  case Section.Index of
  1: aDeselezionaSingolo.Execute;
  2: aDeselezionaTuttiCodici.Execute;
  end;

end;

procedure TFSpostaReferti.aConfermaExecute(Sender: TObject);
var
  avanti: boolean;
begin
  inherited;

  avanti := true;

  if cxReparti.Visible then
  begin
    Spostati.DisableControls;
    try
    Spostati.First;
    while avanti and not Spostati.Eof do
    begin
       LeggiCodice.Parambyname('reparti_fk').AsInteger := cxReparti.EditValue;
       LeggiCodice.Parambyname('codice').AsString := SpostatiCODICE.AsString;
       LeggiCodice.syRefresh;
       if LeggiCodice.Eof then
       begin
          MsgDlgPos( format(RAD_EsameNonPresente,[SpostatiCODICE.AsString,sRadiologie.DataSet.Fieldbyname('DESCRIZIONE').AsString]), '', ktError, [kbOk], dfFirst);
          avanti := false;
       end;
       Spostati.Edit;
       SpostatiCODICIRAD_FK.AsInteger := LeggiCodiceCODICIRAD_FK.AsInteger;
       Spostati.Post;
       Spostati.Next;
    end;
    finally
       Spostati.EnableControls;
    end;
  end;

  if avanti then
     ModalResult := mrOk;

end;

procedure TFSpostaReferti.aConfermaUpdate(Sender: TObject);
begin
  inherited;
  aConferma.Enabled := (not cxReparti.Visible or (cxReparti.Text<>'')) {and (Spostati.recordcount>0)} and (cxReparti.Visible or not Prestazioni.IsEmpty);
end;

procedure TFSpostaReferti.DoShow;
begin
  inherited;

  if GridPrestazioni.Controller.SelectedRecordCount>0 then
     GridSpostatiDragDrop(GridSpostati, GridPrestazioni, 0, 0);

end;

procedure TFSpostaReferti.GridPrestazioniEditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=VK_RETURN then
     aSelezionaSingoloCodice.Execute;

end;

procedure TFSpostaReferti.GridSpostatiEditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=VK_RETURN then
     aDeselezionaSingolo.Execute;

end;

end.
