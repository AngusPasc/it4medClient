unit ModiCodMultiplo;

interface

uses
  BaseRad, RicRadiologiaPreno, {}cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxControls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxMaskEdit,
  cxContainer, dxLayoutcxEditAdapters, dxLayoutControl, AstaDrv2,
  AstaClientDataset, dxBar, cxClasses, Classes, ActnList,
  cxDBLookupComboBox, cxMemo, cxDBEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxCalendar, cxSpinEdit,
  cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, CSEZForm, StdCtrls,
  cxButtons, Controls, ExtCtrls, cxNavigator, dxLayoutContainer, cxGroupBox;

type
  TFModiCodMultiplo = class(TFBaseRad)
    sPrestazioni: TDataSource;
    ActionList1: TActionList;
    aConferma: TAction;
    aAnnulla: TAction;
    dxBarManager1: TdxBarManager;
    aAggiungiEsame: TAction;
    aCancellaEsame: TAction;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    aZoom: TAction;
    dxBarPopupMenu1: TdxBarPopupMenu;
    Prestazioni: TAstaClientDataSet;
    Componenti: TAstaClientDataSet;
    ComponentiDESCRIZIONE: TStringField;
    ComponentiCODICE: TStringField;
    sComponenti: TDataSource;
    aNegativo: TAction;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODICE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIZIONE: TcxGridDBColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDBMaskEdit1: TcxDBMaskEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBMaskEdit2: TcxDBMaskEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBMaskEdit3: TcxDBMaskEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBMaskEdit4: TcxDBMaskEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxBarDockControl1: TdxBarDockControl;
    ComponentiPKGRUPPIPREST: TIntegerField;
    ComponentiCODICIRAD_FK: TIntegerField;
    ComponentiCODICIRAD_DETT: TIntegerField;
    ComponentiREPARTI_FK: TIntegerField;
    PrestazioniCODICE: TStringField;
    PrestazioniDESCRIZIONE: TStringField;
    PrestazioniIDENT_FK: TStringField;
    PrestazioniCOMPOSTO: TIntegerField;
    PrestazioniBRANCA: TStringField;
    PrestazioniDATA_INIZIO: TDateTimeField;
    PrestazioniDATA_FINE: TDateTimeField;
    PrestazioniLAST_MOD: TDateTimeField;
    PrestazioniUSER_ID: TIntegerField;
    PrestazioniDOSE: TFloatField;
    PrestazioniPKCODICIRAD: TIntegerField;
    PrestazioniREAL_NAME: TStringField;
    PrestazioniDESCTARIFFARIO: TStringField;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBSpinEdit2: TcxDBSpinEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControlCodTariffario: TdxLayoutItem;
    cxTariffario: TcxDBExtLookupComboBox;
    dxLayoutControlGroupTariffario: TdxLayoutGroup;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControlDescTariffario: TdxLayoutItem;
    cxDBLookupBranca: TcxDBLookupComboBox;
    dxLayoutControl1Item12: TdxLayoutItem;
    sLkTariffario: TDataSource;
    sLkBranche: TDataSource;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
dxBarManager1Bar1: TdxBar;
    dxLayoutControl1Group5: TdxLayoutAutoCreatedGroup;
    procedure aConfermaExecute(Sender: TObject);
    procedure aAnnullaExecute(Sender: TObject);
    procedure aCancellaEsameUpdate(Sender: TObject);
    procedure aCancellaEsameExecute(Sender: TObject);
    procedure aAggiungiEsameExecute(Sender: TObject);
    procedure PrestazioniBeforePost(DataSet: TDataSet);
    procedure PrestazioniNewRecord(DataSet: TDataSet);
    procedure ComponentiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure ComponentiNewRecord(DataSet: TDataSet);
    procedure ComponentiBeforePost(DataSet: TDataSet);
    procedure ComponentiBeforeDelete(DataSet: TDataSet);
    procedure BaseFormDestroy(Sender: TObject);
    procedure aConfermaUpdate(Sender: TObject);
    procedure csEZKeys1KeyIntercept(KeyType: TNavigationKey;
      Ctrl: TControl; var Intercept: Boolean);
    procedure cxTariffarioPropertiesCloseUp(Sender: TObject);
    procedure ComponentiBeforeInsert(DataSet: TDataSet);
    procedure cxGrid1DBTableView1NavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
    xPrestazioni: TAstaCustomDataset;
    procedure CaricaCodice(xRad: TFRicRadiologiaPreno); overload;
    procedure CaricaCodice(const codice: string); overload;
  protected
    procedure DoCreate; override;
    procedure DoShow; override;
    procedure StartPersonalizza; override;
    procedure StopPersonalizza; override;
    procedure ResetPersonalizza; override;    
  public
    { Public declarations }
    procedure CopiaDataset(xDataset: TDataset);
   
  end;


var
  FModiCodMultiplo: TFModiCodMultiplo;

implementation

uses DMCommon, IInterface, IIConsts, msgdlgs, sysutils, Variants, Windows;

{$R *.dfm}


procedure TFModiCodMultiplo.aConfermaExecute(Sender: TObject);
begin
  inherited;

  FDMCommon.AstaClientSocket.SendDataSetTransactions(Name,[Prestazioni,Componenti]);
  ModalResult := mrOk;

end;

procedure TFModiCodMultiplo.aAnnullaExecute(Sender: TObject);
begin
  inherited;

  ModalResult := mrCancel;

end;

procedure TFModiCodMultiplo.aCancellaEsameUpdate(Sender: TObject);
begin
  inherited;
  aCancellaEsame.Enabled := not Componenti.IsEmpty;
end;

procedure TFModiCodMultiplo.aCancellaEsameExecute(Sender: TObject);
begin
  inherited;
  Componenti.Delete;
end;

procedure TFModiCodMultiplo.CaricaCodice(xRad: TFRicRadiologiaPreno);
var
  i: integer;
  codice: string;
begin
  for i:=1 to xRad.cxGridCodici.Controller.SelectedRecordCount do
  begin
     codice := xRad.cxGridCodici.Controller.SelectedRecords[i-1].Values[0];
     CaricaCodice(codice);
  end;
end;

procedure TFModiCodMultiplo.CaricaCodice(const codice: string);
begin
   if not Componenti.Locate('CODICE',codice,[]) then
   begin
     xPrestazioni.Locate('CODICE',codice,[]);
     Componenti.Insert;
     ComponentiCODICE.AsString := xPrestazioni.Fieldbyname('CODICE').AsString;
     ComponentiCODICIRAD_FK.AsInteger := PrestazioniPKCODICIRAD.AsInteger;
     ComponentiCODICIRAD_DETT.AsInteger := xPrestazioni.Fieldbyname('PKCODICIRAD').AsInteger;
     ComponentiDESCRIZIONE.AsString := xPrestazioni.Fieldbyname('DESCRIZIONE').AsString;
//     ComponentiDURATA.AsInteger := xPrestazioni.Fieldbyname('DURATA').AsInteger;
     Componenti.Post;
   end
   else
    MsgDlg(RS_Msg_CodiceGiaPresente,'', ktWarning, [kbOK]);
end;

procedure TFModiCodMultiplo.aAggiungiEsameExecute(Sender: TObject);
begin
  inherited;
  if (FRicRadiologiaPreno.ShowModal = mrOk) then
  begin
     CaricaCodice(FRicRadiologiaPreno);
  end;
end;

procedure TFModiCodMultiplo.PrestazioniBeforePost(DataSet: TDataSet);
begin
  inherited;
  PrestazioniUSER_ID.AsInteger := gblCodUtente;
end;

procedure TFModiCodMultiplo.PrestazioniNewRecord(DataSet: TDataSet);
begin
  inherited;
  PrestazioniCOMPOSTO.AsInteger := 1;
  PrestazioniDOSE.AsFloat := 0;
end;

procedure TFModiCodMultiplo.ComponentiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('codicirad_fk').AsInteger := PrestazioniPKCODICIRAD.AsInteger;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFModiCodMultiplo.ComponentiNewRecord(DataSet: TDataSet);
begin
  inherited;
  ComponentiREPARTI_FK.AsInteger := gblpkrep;
end;

procedure TFModiCodMultiplo.ComponentiBeforePost(DataSet: TDataSet);
begin
  inherited;
{
  if Componenti.State=dsInsert then
     PrestazioniDURATA.AsInteger := PrestazioniDURATA.AsInteger+ComponentiDURATA.AsInteger
  else begin
     if Componenti.OldValuesDataSet.Locate('PKGRUPPIPREST',ComponentiPKGRUPPIPREST.AsInteger,[]) then
        PrestazioniDURATA.AsInteger := PrestazioniDURATA.AsInteger - VarAsType(Componenti.OldValuesDataSet.Fieldbyname('DURATA').OldValue,varInteger);
     PrestazioniDURATA.AsInteger := PrestazioniDURATA.AsInteger + ComponentiDURATA.AsInteger;
}
end;

procedure TFModiCodMultiplo.ComponentiBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not (Prestazioni.State in dsEditModes) then
     Prestazioni.Edit;
//  PrestazioniDURATA.AsInteger := PrestazioniDURATA.AsInteger - ComponentiDURATA.AsInteger;

end;

procedure TFModiCodMultiplo.BaseFormDestroy(Sender: TObject);
begin
  if Assigned(FRicRadiologiaPreno) then
  begin
     FreeAndNil(FRicRadiologiaPreno);
  end;
  FreeAndNil(xPrestazioni);
  inherited;
end;

procedure TFModiCodMultiplo.DoShow;
begin
  inherited;

  xPrestazioni.Filter := 'COMPOSTO = 0';
  xPrestazioni.Filtered := true;
  FRicRadiologiaPreno.CopiaDataset(xPrestazioni,tpCodice);
  FRicRadiologiaPreno.PreFilter := 'COMPOSTO = 0';

  if not sLkTariffario.Dataset.Active then
  begin
    sLkTariffario.Dataset.open;
  end;

  if (Prestazioni.State=dsInsert) then
     PrestazioniCODICE.FocusControl;

end;

procedure TFModiCodMultiplo.DoCreate;
begin
  inherited;
//  Personalizza := gblSuperUser;
  FDMCommon.CaricaLayout(Name,dxLayoutControl1);

  xPrestazioni := TAstaCustomDataset.Create(nil);

  FRicRadiologiaPreno := TFRicRadiologiaPreno.Create(nil);

  if (FDMCommon.Param_TicketCODICI_CUP.AsInteger=0) then
  begin
    dxLayoutControlGroupTariffario.ShowCaption := false;
    dxLayoutControlCodTariffario.Visible := false;
    dxLayoutControlDescTariffario.Visible := false;
  end;

  ReadBarCode := False;
    
end;

procedure TFModiCodMultiplo.aConfermaUpdate(Sender: TObject);
begin
  inherited;
  aConferma.Enabled := not Componenti.IsEmpty;
end;

procedure TFModiCodMultiplo.csEZKeys1KeyIntercept(KeyType: TNavigationKey;
  Ctrl: TControl; var Intercept: Boolean);
begin
  inherited;
//  Intercept := Intercept and not (Ctrl is TcxRichInnerEdit);
end;

procedure TFModiCodMultiplo.cxTariffarioPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if Prestazioni.Active and (Prestazioni.State in dsEditModes) then
  begin
     PrestazioniDESCTARIFFARIO.AsString := sLkTariffario.Dataset.Fieldbyname('DESCRIZIONE').AsString;
     if sLkBranche.DataSet.recordcount=1 then
     begin
        PrestazioniBRANCA.AsString := sLkBranche.DataSet.FieldByName('PKBRANCHE').AsString;
     end
     else
        PrestazioniBRANCA.Clear;
  end;

end;

procedure TFModiCodMultiplo.ComponentiBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not (Prestazioni.State in dsEditModes) then
     Prestazioni.Edit;

end;

procedure TFModiCodMultiplo.cxGrid1DBTableView1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
  NBDI_INSERT: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(aAggiungiEsame));
                ADone := true;
             end;
  NBDI_DELETE: begin
                PostMessage(Handle,SY_DBLCLICK,0,LongInt(aCancellaEsame));
                ADone := true;
              end;
  end;

end;

procedure TFModiCodMultiplo.CopiaDataset(xDataset: TDataset);
var
  i: integer;
begin
  xPrestazioni.CleanCloneFromDataSet(xDataset);
  for i:=0 to xPrestazioni.fieldcount-1 do
     xPrestazioni.Fields[i].DisplayLabel := xDataset.Fields[i].DisplayLabel;

end;

procedure TFModiCodMultiplo.StartPersonalizza;
begin
  LanciaPersonalizza(dxLayoutControl1,FDMCommon.qFormLayout);
end;

procedure TFModiCodMultiplo.StopPersonalizza;
begin
  FDMCommon.SalvaPersonalizza(Name,dxLayoutControl1,gblcodutente);
end;

procedure TFModiCodMultiplo.ResetPersonalizza;
begin
  if FDMCommon.ResetLayout(Name,dxLayoutControl1) then
     aAnnulla.Execute;
end;

end.