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
    Seleziona: TAction;
    dxBarManager1: TdxBarManager;
    dxBarButton3: TdxBarButton;
    aAzzeraRichieste: TAction;
    dxAzzeraRichieste: TdxBarButton;
    aConferma: TAction;
    Esami: TAstaDataSet;
    dxCodice: TcxButtonEdit;
    dxDescrizione: TcxButtonEdit;
    dxTariffario: TcxButtonEdit;
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
    cxGridCodiciDESCSPEC: TcxGridDBColumn;
    cxGridCodiciGRESAMI: TcxGridDBColumn;
    cxGridCodiciQR: TcxGridDBColumn;
    cxGridCodiciDESCRADIOFARMACO: TcxGridDBColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutTariffario: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
dxBarManager1Bar1: TdxBar;
    cxGridCodiciDESCBRANCA: TcxGridDBColumn;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxTipoEsame: TcxButtonEdit;
    aAnnulla: TAction;
    procedure csEZKeys1KeyIntercept(KeyType: TNavigationKey;
      Ctrl: TControl; var Intercept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure aAzzeraRichiesteExecute(Sender: TObject);
    procedure aConfermaUpdate(Sender: TObject);
    procedure aConfermaExecute(Sender: TObject);
    procedure dxCodiceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxCodicePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dxDescrizioneKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDescrizionePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dxTariffarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxTariffarioPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridCodiciDblClick(Sender: TObject);
    procedure cxGridCodiciKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxCodiceEnter(Sender: TObject);
    procedure dxCodiceExit(Sender: TObject);
    procedure dxDescrizioneEnter(Sender: TObject);
    procedure dxDescrizioneExit(Sender: TObject);
    procedure dxTariffarioEnter(Sender: TObject);
    procedure dxTariffarioExit(Sender: TObject);
    procedure dxTipoEsameEnter(Sender: TObject);
    procedure dxTipoEsameExit(Sender: TObject);
    procedure dxTipoEsameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxTipoEsamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure aAnnullaExecute(Sender: TObject);
  private
    { Private declarations }
    FPreFilter: string;
    FIsFiltered: boolean;
    procedure FiltraQuery(const cosa: string);
    procedure TariffPress;
    procedure CodicePress;
    procedure DescrPress;
    procedure TipoEsamePress;
    procedure AnnullaFiltro;
  protected
    procedure DoCreate; override;
  public
    { Public declarations }
    procedure CopiaDataset(xDataset: TDataset; tpOrd: TtpOrd);

    property PreFilter: string read FPreFilter write FPreFilter;
  end;

var
  FRicRadiologiaPreno: TFRicRadiologiaPreno;

implementation

uses DMCommon, Windows, Forms, IIConsts, dxCore;

{$R *.DFM}


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

  if FIsFiltered {and (old_recordcount>0)} then
  begin
     Esami.Filter := xDataset.Filter;
     Esami.Filtered := true;
  end;

  for i:=0 to Esami.fieldcount-1 do
     Esami.Fields[i].DisplayLabel := xDataset.Fields[i].DisplayLabel;

  if tpOrd=tpCodice then
  begin
      cxGridCodiciCODICE.SortOrder := soAscending;
      cxGridCodiciDESCRIZIONE.SortOrder := soNone;
  end
  else begin
      cxGridCodiciCODICE.SortOrder := soNone;
      cxGridCodiciDESCRIZIONE.SortOrder := soAscending;
  end;

  finally
    cxGridCodici.EndUpdate;
  end;
end;

procedure TFRicRadiologiaPreno.csEZKeys1KeyIntercept(KeyType: TNavigationKey;
  Ctrl: TControl; var Intercept: Boolean);
begin
  inherited;
  Intercept := Intercept and (Ctrl<>nil) and not ((Ctrl is TcxCustomInnerTextEdit) and (Ctrl.Owner is TcxButtonEdit) and
                    (TcxButtonEdit(Ctrl.Owner).Text<>''));

end;

procedure TFRicRadiologiaPreno.FiltraQuery(const cosa: string);
var
  xfiltro: string;
begin
     if PreFilter<>'' then
        xfiltro := PreFilter + ' AND '+cosa
     else
        xfiltro := cosa;

     Esami.Filtered := false;
     Esami.Filter := xfiltro;
     Esami.Filtered := true;
     FIsFiltered := true;

     if Esami.RecordCount=1 then
        aConferma.Execute
     else begin
       cxGridCodici.Controller.GotoFirst;
       cxGridCodici.Site.SetFocus;
     end;
end;


procedure TFRicRadiologiaPreno.FormShow(Sender: TObject);
begin
  inherited;

  cxGridCodiciQR.Visible := false; //(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);
  cxGridCodiciDESCRADIOFARMACO.Visible := false; //(FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger in [1,3]);

  cxGridCodici.Controller.GotoFirst;
{
  if dxCodice.Text='' then
     PostMessage(Handle,SY_FOCUSPRIMOCAMPO,0,LongInt(dxCodice))
  else}
     PostMessage(Handle,SY_FOCUSPRIMOCAMPO,0,LongInt(cxGridCodici.Site))
end;

procedure TFRicRadiologiaPreno.AnnullaFiltro;
begin
  Esami.Filtered := false;
  Esami.Filter := PreFilter;
  if PreFilter<>'' then
     Esami.Filtered := true;
  FIsFiltered := false;
end;

procedure TFRicRadiologiaPreno.aAzzeraRichiesteExecute(Sender: TObject);
begin
  inherited;
  dxCodice.Text := '';
  dxDescrizione.Text := '';
  dxTariffario.Text := '';
  AnnullaFiltro;
  if dxCodice.CanFocus then
     dxCodice.SetFocus;
//  dxDBTreeList.FullCollapse;
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

procedure TFRicRadiologiaPreno.CodicePress;
begin
  if dxCodice.Text<>'' then
     FiltraQuery('CODICE LIKE '+#39+dxCodice.Text+'%'+#39);
end;

procedure TFRicRadiologiaPreno.DescrPress;
begin
  if (dxDescrizione.Text<>'') then
     FiltraQuery('DESCRIZIONE LIKE '+#39+'%'+dxDescrizione.Text+'%'+#39);
end;

procedure TFRicRadiologiaPreno.TariffPress;
begin
  if (dxTariffario.Text<>'') then
     FiltraQuery('IDENT_FK LIKE '+#39+dxTariffario.Text+'%'+#39);

end;

procedure TFRicRadiologiaPreno.TipoEsamePress;
begin
  if (dxTipoEsame.Text<>'') then
     FiltraQuery('DESCBRANCA LIKE '+#39+dxTipoEsame.Text+'%'+#39);

end;

procedure TFRicRadiologiaPreno.dxCodiceKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  case Key of
  VK_RETURN,VK_TAB,VK_F10: CodicePress;
  end;
end;

procedure TFRicRadiologiaPreno.dxCodicePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  CodicePress;
end;

procedure TFRicRadiologiaPreno.dxDescrizioneKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  case Key of
  VK_RETURN,VK_TAB,VK_F10: DescrPress;
  end;
end;

procedure TFRicRadiologiaPreno.dxDescrizionePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  DescrPress;

end;

procedure TFRicRadiologiaPreno.dxTariffarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  case Key of
  VK_RETURN,VK_TAB,VK_F10: TariffPress;
  end;
end;

procedure TFRicRadiologiaPreno.dxTariffarioPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TariffPress;
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
//  cxGridCodiciDESCSPEC.Visible := (FDMCommon.LeggiPostoLavoroCHK_SPECIFICAZIONI.AsInteger=1);
  if (FDMCommon.Param_TicketCODICI_CUP.AsInteger=0) then
  begin
     dxLayoutTariffario.Visible := False;
  end;
end;

procedure TFRicRadiologiaPreno.dxCodiceEnter(Sender: TObject);
begin
  inherited;
  Catch := True;
end;

procedure TFRicRadiologiaPreno.dxCodiceExit(Sender: TObject);
begin
  inherited;
  Catch := False;
end;

procedure TFRicRadiologiaPreno.dxDescrizioneEnter(Sender: TObject);
begin
  inherited;
  Catch := True;
end;

procedure TFRicRadiologiaPreno.dxDescrizioneExit(Sender: TObject);
begin
  inherited;
  Catch := False;
end;

procedure TFRicRadiologiaPreno.dxTariffarioEnter(Sender: TObject);
begin
  inherited;
  Catch := True;
end;

procedure TFRicRadiologiaPreno.dxTariffarioExit(Sender: TObject);
begin
  inherited;
  Catch := False;
end;

procedure TFRicRadiologiaPreno.dxTipoEsameEnter(Sender: TObject);
begin
  inherited;
  Catch := True;
end;

procedure TFRicRadiologiaPreno.dxTipoEsameExit(Sender: TObject);
begin
  inherited;
  Catch := False;
end;

procedure TFRicRadiologiaPreno.dxTipoEsameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  case Key of
  VK_RETURN,VK_TAB,VK_F10: TipoEsamePress;
  end;
end;

procedure TFRicRadiologiaPreno.dxTipoEsamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TipoEsamePress;
end;

procedure TFRicRadiologiaPreno.aAnnullaExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

end.
