unit RicRadiologiaPreno;

interface

uses
  BaseRad, IInterface, {}cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxMaskEdit, cxTextEdit, dxBar,
  AstaDrv2, cxClasses, Classes, ActnList, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxButtonEdit, StdCtrls, CSEZForm, cxButtons,
  Controls, ExtCtrls, cxLabel, dxLayoutcxEditAdapters, dxLayoutControl,
  cxNavigator, dxLayoutContainer, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, cxGroupBox;

type
  TFRicRadiologiaPreno = class(TFBaseRad)
    sEsami: TDataSource;
    ActionList1: TActionList;
    dxBarManager1: TdxBarManager;
    dxBarButton3: TdxBarButton;
    aConferma: TAction;
    Esami: TAstaDataSet;
    dxBarPopLista: TdxBarPopupMenu;
    cxGrid2: TcxGrid;
    cxGridCodici: TcxGridDBTableView;
    cxGridCodiciCODICE: TcxGridDBColumn;
    cxGridCodiciDESCRIZIONE: TcxGridDBColumn;
    cxGridCodiciIDENT_FK: TcxGridDBColumn;
    cxGridCodiciDURATA: TcxGridDBColumn;
    cxGridCodiciPKCODICIRAD: TcxGridDBColumn;
    cxGridCodiciGRUPPO: TcxGridDBColumn;
    cxGridCodiciCOMPOSTO: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGridCodiciGRESAMI: TcxGridDBColumn;
    cxGridCodiciQR: TcxGridDBColumn;
    cxGridCodiciDESCRADIOFARMACO: TcxGridDBColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxGridCodiciDESCBRANCA: TcxGridDBColumn;
    aAnnulla: TAction;
    procedure csEZKeys1KeyIntercept(KeyType: TNavigationKey;
      Ctrl: TControl; var Intercept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure aConfermaUpdate(Sender: TObject);
    procedure aConfermaExecute(Sender: TObject);
    procedure cxGridCodiciDblClick(Sender: TObject);
    procedure cxGridCodiciKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aAnnullaExecute(Sender: TObject);
  private
    { Private declarations }
    FPreFilter: string;
    FIsFiltered: boolean;
    FDaCercare: string;
    procedure SetDaCercare(Value: string);
  protected
    procedure DoCreate; override;
  public
    { Public declarations }
    procedure CopiaDataset(xDataset: TDataset; tpOrd: TtpOrd);

    property PreFilter: string read FPreFilter write FPreFilter;
    property DaCercare: string read FDaCercare write SetDaCercare;
  end;

var
  FRicRadiologiaPreno: TFRicRadiologiaPreno;

implementation

uses DMCommon, Windows, Forms, IIConsts, dxCore;

{$R *.DFM}

procedure TFRicRadiologiaPreno.SetDaCercare(Value: string);
begin
   FDaCercare := Value;
end;

procedure TFRicRadiologiaPreno.CopiaDataset(xDataset: TDataset; tpOrd: TtpOrd);
var
  i: integer;
//  old_recordcount: integer;
begin
//  old_recordcount := xDataset.recordcount;
  FIsFiltered := xDataset.Filtered;
  if FIsFiltered then
     xDataset.Filtered := false;
  cxGridCodici.BeginUpdate;
  try
  Esami.CleanCloneFromDataSet(xDataset);
  Esami.AddIndex('PKCODICIRAD',false);
{
  if FIsFiltered then
  begin
     Esami.Filter := xDataset.Filter;
     Esami.Filtered := true;
  end;
}
  for i:=0 to Esami.fieldcount-1 do
     Esami.Fields[i].DisplayLabel := xDataset.Fields[i].DisplayLabel;

{
  if tpOrd=tpCodice then
  begin
      cxGridCodiciCODICE.SortOrder := soAscending;
      cxGridCodiciDESCRIZIONE.SortOrder := soNone;
  end
  else begin
      cxGridCodiciCODICE.SortOrder := soNone;
      cxGridCodiciDESCRIZIONE.SortOrder := soAscending;
  end;
}
  finally
    cxGridCodici.EndUpdate;
  end;
end;

procedure TFRicRadiologiaPreno.csEZKeys1KeyIntercept(KeyType: TNavigationKey;
  Ctrl: TControl; var Intercept: Boolean);
begin
  inherited;
{
  Intercept := Intercept and (Ctrl<>nil) and not ((Ctrl is TcxCustomInnerTextEdit) and (Ctrl.Owner is TcxButtonEdit) and
                    (TcxButtonEdit(Ctrl.Owner).Text<>''));
}
end;


procedure TFRicRadiologiaPreno.FormShow(Sender: TObject);
begin
  inherited;

  cxGridCodiciQR.Visible := false; //(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);
  cxGridCodiciDESCRADIOFARMACO.Visible := false; //(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);

  if FDaCercare<>'' then
     cxGridCodici.Controller.ApplyFindFilterText(FDaCercare);

  cxGridCodici.Controller.GotoFirst;
{
  if dxCodice.Text='' then
     PostMessage(Handle,SY_FOCUSPRIMOCAMPO,0,LongInt(dxCodice))
  else}
     PostMessage(Handle,SY_FOCUSPRIMOCAMPO,0,LongInt(cxGridCodici.Site))
end;


procedure TFRicRadiologiaPreno.aConfermaUpdate(Sender: TObject);
begin
  inherited;

	aConferma.Enabled := (cxGridCodici.Controller.SelectedRecordCount>0);

end;

procedure TFRicRadiologiaPreno.aConfermaExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk
end;


procedure TFRicRadiologiaPreno.cxGridCodiciDblClick(Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxGrid2),LongInt(aConferma));
end;

procedure TFRicRadiologiaPreno.cxGridCodiciKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key=13) {and (cxGridCodici.Controller.SelectedRecordCount>0)} then
  begin
      aConferma.Execute;
//      Key := #0;
  end;

end;

procedure TFRicRadiologiaPreno.DoCreate;
begin
  inherited;
  FIsFiltered := false;
end;

procedure TFRicRadiologiaPreno.aAnnullaExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

end.
