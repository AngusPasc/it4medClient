unit SelezSpec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseRad, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Menus, CSEZForm, StdCtrls,
  cxButtons, cxGroupBox, cxLabel, cxDBLabel, ExtCtrls, DB, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  AstaDrv2, AstaClientDataset, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxSplitter, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, ActnList;

type
  TFSelezSpec = class(TFBaseRad)
    sPrestazioni: TDataSource;
    Panel1: TPanel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    Panel2: TPanel;
    cxGrid6: TcxGrid;
    cxGridDBTableSpecxEsami: TcxGridDBTableView;
    cxGrid6Level1: TcxGridLevel;
    cxSplitter2: TcxSplitter;
    cxGrid7: TcxGrid;
    cxGridDBTableSpecxPrest: TcxGridDBTableView;
    cxGridDBTableSpecxPrestPKSPECXCODRAD: TcxGridDBColumn;
    cxGridDBTableSpecxPrestCODICIRAD_FK: TcxGridDBColumn;
    cxGridDBTableSpecxPrestSPECIFICAZIONI_FK: TcxGridDBColumn;
    cxGridDBTableSpecxPrestIDSPECIFICAZIONI: TcxGridDBColumn;
    cxGridDBTableSpecxPrestDESCRIZIONE: TcxGridDBColumn;
    cxGridDBTableSpecxPrestPREZZO: TcxGridDBColumn;
    cxGridDBTableSpecxPrestCOSTO: TcxGridDBColumn;
    cxGrid7Level1: TcxGridLevel;
    qSpecxEsami: TAstaClientDataSet;
    qSpecxEsamiPKSPECXCODRAD: TIntegerField;
    qSpecxEsamiCODICIRAD_FK: TIntegerField;
    qSpecxEsamiSPECIFICAZIONI_FK: TIntegerField;
    qSpecxEsamiIDSPECIFICAZIONI: TStringField;
    qSpecxEsamiDESCRIZIONE: TStringField;
    qSpecxEsamiPREZZO: TFloatField;
    qSpecxEsamiCOSTO: TFloatField;
    sSpecxEsami: TDataSource;
    cxGridDBTableSpecxEsamiPKSPECXCODRAD: TcxGridDBColumn;
    cxGridDBTableSpecxEsamiCODICIRAD_FK: TcxGridDBColumn;
    cxGridDBTableSpecxEsamiSPECIFICAZIONI_FK: TcxGridDBColumn;
    cxGridDBTableSpecxEsamiIDSPECIFICAZIONI: TcxGridDBColumn;
    cxGridDBTableSpecxEsamiDESCRIZIONE: TcxGridDBColumn;
    cxGridDBTableSpecxEsamiPREZZO: TcxGridDBColumn;
    cxGridDBTableSpecxEsamiCOSTO: TcxGridDBColumn;
    sSpecxPrest: TDataSource;
    ActionList1: TActionList;
    aAnnulla: TAction;
    aConferma: TAction;
    procedure cxGridDBTableSpecxPrestDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGridDBTableSpecxPrestDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxGridDBTableSpecxEsamiDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGridDBTableSpecxEsamiDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxGridDBTableSpecxEsamiDblClick(Sender: TObject);
    procedure qSpecxEsamiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure aConfermaExecute(Sender: TObject);
    procedure aConfermaUpdate(Sender: TObject);
    procedure aAnnullaExecute(Sender: TObject);
  private
    { Private declarations }
    procedure AggiungiSpecificazioni( wView: TcxGridDBTableView; xController: TcxCustomGridTableController );
  protected
    procedure DoCreate; override;
    procedure DoShow; override;
  public
    { Public declarations }
  end;


implementation

uses DatiAccImp, DMCommon;

{$R *.dfm}

procedure TFSelezSpec.cxGridDBTableSpecxPrestDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
//  TargetData: TAstaClientDataset;
  aSourceView,aDragView: TcxGridDBTableView;
//  aTargetView: TcxGridDBTableView;

begin

  aSourceView := FDMCommon.GetRealDragSourceGridView (TcxDragControlObject (Source));

//  aTargetView := TcxGridSite(Sender).GridView as TcxGridDBTableView;
  aDragView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));

//  TargetData := aTargetView.DataController.DataSource.DataSet as TAstaClientDataset;

  if aSourceView.DataController.FocusedRecordIndex<>-1 then
  begin
      AggiungiSpecificazioni(aDragView, aSourceView.Controller);
  end;

end;

procedure TFSelezSpec.AggiungiSpecificazioni( wView: TcxGridDBTableView; xController: TcxCustomGridTableController );
var
  i: integer;
begin
     sSpecxPrest.DataSet.DisableControls;
     try
     for i:=0 to xController.SelectedRecordCount-1 do
       begin
         if not TAstaClientDataSet(sSpecxPrest.DataSet).LocateRecord('IDSPECIFICAZIONI',xController.SelectedRecords[i].Values[cxGridDBTableSpecxEsamiIDSPECIFICAZIONI.Index],[]) then
         begin
           sSpecxPrest.DataSet.Append;
//           sSpecxPrest.DataSet.FieldByName('PRESTAZIONI_FK').AsInteger := sPrestazioni.DataSet.FieldByName('PKPRESTAZIONI').AsInteger;
           sSpecxPrest.DataSet.FieldByName('SPECIFICAZIONI_FK').AsInteger := xController.SelectedRecords[i].Values[cxGridDBTableSpecxEsamiSPECIFICAZIONI_FK.Index];
           sSpecxPrest.DataSet.FieldByName('IDSPECIFICAZIONI').AsString := xController.SelectedRecords[i].Values[cxGridDBTableSpecxEsamiIDSPECIFICAZIONI.Index];
           sSpecxPrest.DataSet.FieldByName('DESCRIZIONE').AsString := xController.SelectedRecords[i].Values[cxGridDBTableSpecxEsamiDESCRIZIONE.Index];
           sSpecxPrest.DataSet.FieldByName('PREZZO').AsFloat := xController.SelectedRecords[i].Values[cxGridDBTableSpecxEsamiPREZZO.Index];
           sSpecxPrest.DataSet.Post;
         end;
       end;
       finally
          sSpecxPrest.DataSet.EnableControls;
       end;
end;

procedure TFSelezSpec.cxGridDBTableSpecxPrestDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  aSourceView: TcxGridDBTableView;
begin
  Accept := false;
  if (Source is TcxDragControlObject) and (Sender is TcxGridSite) then
  begin
     aSourceView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
     Accept := (aSourceView=cxGridDBTableSpecxEsami);
  end;

end;

procedure TFSelezSpec.DoCreate;
begin
  inherited;

end;

procedure TFSelezSpec.DoShow;
begin
  inherited;

  qSpecxEsami.syRefresh;
  cxGridDBTableSpecxPrest.OptionsView.Footer := (sPrestazioni.DataSet.FieldByName('CESPECIFIC').AsInteger=2);
  cxGridDBTableSpecxEsamiPREZZO.Visible := (sPrestazioni.DataSet.FieldByName('CESPECIFIC').AsInteger=2);
  cxGridDBTableSpecxPrestPREZZO.Visible := (sPrestazioni.DataSet.FieldByName('CESPECIFIC').AsInteger=2);

end;

procedure TFSelezSpec.cxGridDBTableSpecxEsamiDragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
  inherited;

  if cxGridDBTableSpecxPrest.Controller.SelectedRecordCount>0 then
     cxGridDBTableSpecxPrest.Controller.DeleteSelection;

end;

procedure TFSelezSpec.cxGridDBTableSpecxEsamiDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  aSourceView: TcxGridDBTableView;
begin

  Accept := false;
  if (Source is TcxDragControlObject) and (Sender is TcxGridSite) then
  begin
     aSourceView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
     Accept := (aSourceView=cxGridDBTableSpecxPrest);
  end;

end;

procedure TFSelezSpec.cxGridDBTableSpecxEsamiDblClick(Sender: TObject);
begin
  inherited;
  AggiungiSpecificazioni(cxGridDBTableSpecxEsami, cxGridDBTableSpecxEsami.Controller);

end;

procedure TFSelezSpec.qSpecxEsamiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.ParamByName('CODICIRAD_FK').AsInteger := sPrestazioni.DataSet.FieldByName('CODICIRAD_FK').AsInteger;
end;

procedure TFSelezSpec.aConfermaExecute(Sender: TObject);
var
  AIndex: integer;
  AValue: Variant;
begin
  inherited;
  if (sPrestazioni.DataSet.FieldByName('CESPECIFIC').AsInteger=2) then
  begin
      AIndex := cxGridDBTableSpecxPrest.DataController.Summary.FooterSummaryItems.IndexOfItemLink(cxGridDBTableSpecxPrestPREZZO);
      AValue :=  cxGridDBTableSpecxPrest.DataController.Summary.FooterSummaryValues[AIndex];
     sPrestazioni.DataSet.FieldByName('IMPORTO').AsVariant := AValue;
  end;
  Modalresult := mrOK;
end;

procedure TFSelezSpec.aConfermaUpdate(Sender: TObject);
begin
  inherited;
  aConferma.Enabled := not sSpecxPrest.DataSet.IsEmpty;
end;

procedure TFSelezSpec.aAnnullaExecute(Sender: TObject);
begin
  inherited;
  Modalresult := mrCancel;
end;

end.
