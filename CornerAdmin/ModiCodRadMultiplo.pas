unit ModiCodRadMultiplo;

interface

uses
  BaseRad, RicRadiologiaPreno,{} cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxMaskEdit,
  cxSpinEdit, AstaUpdateSQL, cxRichMemoDlg, AstaDrv2, AstaClientDataset,
  Menus, dxBar, Classes, ActnList, dxLayoutControl, cxCheckBox,
  cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxMemo, Controls, StdCtrls, CSEZForm, 
   ExtCtrls,  cxRichEdit, cxDBRichEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, cxLookAndFeelPainters, cxButtons, cxLookAndFeels,
  dxLayoutcxEditAdapters, cxNavigator, dxLayoutContainer, cxGroupBox;

type
  TFModiCodRadMultiplo = class(TFBaseRad)
    sPrestazioni: TDataSource;
    ActionList1: TActionList;
    aConferma: TAction;
    aAnnulla: TAction;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar3: TdxBar;
    aAggiungiEsame: TAction;
    aCancellaEsame: TAction;
    dxBarDockControl2: TdxBarDockControl;
    aZoom: TAction;
    dxBarButton3: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    Prestazioni: TAstaClientDataSet;
    Componenti: TAstaClientDataSet;
    ComponentiDESCRIZIONE: TStringField;
    ComponentiCODICE: TStringField;
    ComponentiIDENT_FK: TStringField;
    ComponentiDATA_INIZIO: TDateTimeField;
    ComponentiDATA_FINE: TDateTimeField;
    ComponentiDURATA: TIntegerField;
    ComponentiDESCTARIFFARIO: TStringField;
    ComponentiDOSE: TFloatField;
    ComponentiPKCODICIRAD: TIntegerField;
    sComponenti: TDataSource;
    sGruppo: TDataSource;
    dxBarDockControl3: TdxBarDockControl;
    aNegativo: TAction;
    dxBarButton4: TdxBarButton;
    RefNegativo: TcxDBMemo;
    Note: TcxDBRichEdit;
    cxRichMemoDlg: TcxRichMemoDlg;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODICE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIZIONE: TcxGridDBColumn;
    cxGrid1DBTableView1DURATA: TcxGridDBColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGruppo: TcxDBLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBMaskEdit1: TcxDBMaskEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBMaskEdit2: TcxDBMaskEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBSpinEdit1: TcxDBSpinEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBMaskEdit3: TcxDBMaskEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBMaskEdit4: TcxDBMaskEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutMedPerEsame: TdxLayoutItem;
    ComponentiPKGRUPPIPREST: TIntegerField;
    ComponentiCODICIRAD_FK: TIntegerField;
    ComponentiCODICIRAD_DETT: TIntegerField;
    ComponentiREPARTI_FK: TIntegerField;
    PrestazioniPKCODXRAD: TIntegerField;
    PrestazioniCODICIRAD_FK: TIntegerField;
    PrestazioniREPARTI_FK: TIntegerField;
    PrestazioniPREPTEXT_FK: TIntegerField;
    PrestazioniREFNEGTEXT_FK: TIntegerField;
    PrestazioniTESTO: TBlobField;
    PrestazioniREF_NEGATIVO: TBlobField;
    PrestazioniLAST_MOD: TDateTimeField;
    PrestazioniUSER_ID: TIntegerField;
    PrestazioniCODICE: TStringField;
    PrestazioniDESCRIZIONE: TStringField;
    PrestazioniIDENT_FK: TStringField;
    PrestazioniCOMPOSTO: TIntegerField;
    PrestazioniMOLTIPLICA: TIntegerField;
    PrestazioniMEDOBBLIG: TIntegerField;
    PrestazioniBRANCA: TStringField;
    PrestazioniDATA_INIZIO: TDateTimeField;
    PrestazioniDATA_FINE: TDateTimeField;
    PrestazioniGRESAMI_FK: TIntegerField;
    PrestazioniDURATA: TIntegerField;
    PrestazioniDOSE: TFloatField;
    PrestazioniREAL_NAME: TStringField;
    PrestazioniDESCTARIFFARIO: TStringField;
    Preparazioni: TAstaClientDataSet;
    PreparazioniPKTESTISTD: TIntegerField;
    PreparazioniDESCRIZIONE: TStringField;
    sPreparazioni: TDataSource;
    cxLookupPreparazione: TcxDBLookupComboBox;
    RefNegativi: TAstaClientDataSet;
    RefNegativiPKTESTISTD: TIntegerField;
    RefNegativiDESCRIZIONE: TStringField;
    sRefNegativi: TDataSource;
    cxLookupRefNegativo: TcxDBLookupComboBox;
    PrepTesto: TAstaClientDataSet;
    PrepTestoPKTESTISTD: TIntegerField;
    PrepTestoTESTO: TBlobField;
    updPrestazioni: TAstaUpdateSQL;
    PrestazioniNO_CTRL: TIntegerField;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    PreparazioniCODICE: TStringField;
    RefNegativiCODICE: TStringField;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxBarManager1Bar2: TdxBar;
    procedure aConfermaExecute(Sender: TObject);
    procedure aAnnullaExecute(Sender: TObject);
    procedure aCancellaEsameUpdate(Sender: TObject);
    procedure aCancellaEsameExecute(Sender: TObject);
    procedure aZoomExecute(Sender: TObject);
    procedure aAggiungiEsameExecute(Sender: TObject);
    procedure PrestazioniBeforePost(DataSet: TDataSet);
    procedure PrestazioniNewRecord(DataSet: TDataSet);
    procedure ComponentiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure ComponentiNewRecord(DataSet: TDataSet);
    procedure ComponentiBeforePost(DataSet: TDataSet);
    procedure ComponentiBeforeDelete(DataSet: TDataSet);
    procedure BaseFormDestroy(Sender: TObject);
    procedure aNegativoExecute(Sender: TObject);
    procedure aNegativoUpdate(Sender: TObject);
    procedure aConfermaUpdate(Sender: TObject);
    procedure csEZKeys1KeyIntercept(KeyType: TNavigationKey;
      Ctrl: TControl; var Intercept: Boolean);
    procedure PreparazioniBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxLookupPreparazionePropertiesCloseUp(Sender: TObject);
    procedure RefNegativiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxLookupRefNegativoPropertiesCloseUp(Sender: TObject);
    procedure ComponentiBeforeInsert(DataSet: TDataSet);
    procedure cxGrid1DBTableView1NavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
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
    xPrestazioni: TAstaCustomDataset;

  end;


var
  FModiCodRadMultiplo: TFModiCodRadMultiplo;

implementation

uses DMCommon, IInterface, IIConsts, msgdlgs, sysutils, Variants;

{$R *.dfm}


procedure TFModiCodRadMultiplo.aConfermaExecute(Sender: TObject);
begin
  inherited;

  FDMCommon.AstaClientSocket.SendDataSetTransactions(Name,[Prestazioni,Componenti]);
  ModalResult := mrOk;

end;

procedure TFModiCodRadMultiplo.aAnnullaExecute(Sender: TObject);
begin
  inherited;

  ModalResult := mrCancel;

end;

procedure TFModiCodRadMultiplo.aCancellaEsameUpdate(Sender: TObject);
begin
  inherited;
  aCancellaEsame.Enabled := not Componenti.IsEmpty;
end;

procedure TFModiCodRadMultiplo.aCancellaEsameExecute(Sender: TObject);
begin
  inherited;
  Componenti.Delete;
end;

procedure TFModiCodRadMultiplo.aZoomExecute(Sender: TObject);
begin
  inherited;
  strRichMemoText := TStringStream.Create('');
  strRichMemoText.WriteString(Note.Text);

  cxRichMemoDlg.Execute(false);

  strRichMemoText.Free;
  strRichMemoText := nil;

end;

procedure TFModiCodRadMultiplo.CaricaCodice(xRad: TFRicRadiologiaPreno);
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

procedure TFModiCodRadMultiplo.CaricaCodice(const codice: string);
begin
   if not Componenti.Locate('CODICE',codice,[]) then
   begin
     xPrestazioni.Locate('CODICE',codice,[]);
     Componenti.Insert;
     ComponentiCODICE.AsString := xPrestazioni.Fieldbyname('CODICE').AsString;
     ComponentiCODICIRAD_FK.AsInteger := PrestazioniCODICIRAD_FK.AsInteger;
     ComponentiCODICIRAD_DETT.AsInteger := xPrestazioni.Fieldbyname('PKCODICIRAD').AsInteger;
     ComponentiDESCRIZIONE.AsString := xPrestazioni.Fieldbyname('DESCRIZIONE').AsString;
     ComponentiDURATA.AsInteger := xPrestazioni.Fieldbyname('DURATA').AsInteger;
     Componenti.Post;
   end
   else
    MsgDlg(RS_Msg_CodiceGiaPresente,'', ktWarning, [kbOK]);
end;

procedure TFModiCodRadMultiplo.aAggiungiEsameExecute(Sender: TObject);
begin
  inherited;
  if (FRicRadiologiaPreno.ShowModal = mrOk) then
  begin
     CaricaCodice(FRicRadiologiaPreno);
  end;
end;

procedure TFModiCodRadMultiplo.PrestazioniBeforePost(DataSet: TDataSet);
begin
  inherited;
  PrestazioniUSER_ID.AsInteger := gblCodUtente;
end;

procedure TFModiCodRadMultiplo.PrestazioniNewRecord(DataSet: TDataSet);
begin
  inherited;
  PrestazioniREPARTI_FK.AsInteger := gblpkrep;
  PrestazioniCOMPOSTO.AsInteger := 1;
  PrestazioniDOSE.AsFloat := 0;
  PrestazioniMEDOBBLIG.AsInteger := 0;
 
end;

procedure TFModiCodRadMultiplo.ComponentiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('codicirad_fk').AsInteger := PrestazioniCODICIRAD_FK.AsInteger;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFModiCodRadMultiplo.ComponentiNewRecord(DataSet: TDataSet);
begin
  inherited;
  ComponentiREPARTI_FK.AsInteger := gblpkrep;
end;

procedure TFModiCodRadMultiplo.ComponentiBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Componenti.State=dsInsert then
     PrestazioniDURATA.AsInteger := PrestazioniDURATA.AsInteger+ComponentiDURATA.AsInteger
  else
     PrestazioniDURATA.AsInteger := PrestazioniDURATA.AsInteger - VarAsType(ComponentiDURATA.OldValue,varInteger) + ComponentiDURATA.AsInteger;
end;

procedure TFModiCodRadMultiplo.ComponentiBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not (Prestazioni.State in dsEditModes) then
     Prestazioni.Edit;
  PrestazioniDURATA.AsInteger := PrestazioniDURATA.AsInteger - ComponentiDURATA.AsInteger;
end;

procedure TFModiCodRadMultiplo.BaseFormDestroy(Sender: TObject);
begin
  inherited;
//  sSubGruppo.Dataset.Filtered := false;
  xPrestazioni.Free;
//  FCodiciRadiologia.Prestazioni.Filter := '';
//  FCodiciRadiologia.Prestazioni.Filtered := false;
  if Assigned(FRicRadiologiaPreno) then
  begin
     FRicRadiologiaPreno.Free;
     FRicRadiologiaPreno := nil;
  end;

end;

procedure TFModiCodRadMultiplo.DoShow;
begin
  inherited;

  xPrestazioni.Filter := 'COMPOSTO = 0';
  xPrestazioni.Filtered := true;
  FRicRadiologiaPreno.CopiaDataset(xPrestazioni,tpCodice);

  if (Prestazioni.State=dsInsert) and not PrestazioniGRESAMI_FK.IsNull then
     PrestazioniCODICE.FocusControl
  else
     PrestazioniGRESAMI_FK.FocusControl;

end;

procedure TFModiCodRadMultiplo.aNegativoExecute(Sender: TObject);
begin
  inherited;

  strRichMemoText := TStringStream.Create('');
  strRichMemoText.WriteString(RefNegativo.Text);

  cxRichMemoDlg.Execute(false);

  strRichMemoText.Free;
  strRichMemoText := nil;

end;

procedure TFModiCodRadMultiplo.aNegativoUpdate(Sender: TObject);
begin
  inherited;
//  aNegativo.Enabled := gblfunzione=1;
end;

procedure TFModiCodRadMultiplo.DoCreate;
begin
  inherited;
//  Personalizza := gblSuperUser;
  FDMCommon.CaricaLayout(Name,dxLayoutControl1);

  xPrestazioni := TAstaCustomDataset.Create(nil);
  cxGruppo.Properties.Grid.DataController.DataModeController.SyncMode := True;
  FRicRadiologiaPreno := TFRicRadiologiaPreno.Create(nil);

  dxLayoutMedPerEsame.Visible := (FDMCommon.LeggiPostoLavoroCHECK_MED_PER_ESAME.AsInteger=1);

  ReadBarCode := False;
    
end;

procedure TFModiCodRadMultiplo.aConfermaUpdate(Sender: TObject);
begin
  inherited;
  aConferma.Enabled := not Componenti.IsEmpty;
end;

procedure TFModiCodRadMultiplo.csEZKeys1KeyIntercept(KeyType: TNavigationKey;
  Ctrl: TControl; var Intercept: Boolean);
begin
  inherited;
  Intercept := Intercept {ex: and not (Ctrl is TcxRichInnerEdit)} and not (Ctrl is TcxCustomInnerMemo);
end;

procedure TFModiCodRadMultiplo.PreparazioniBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFModiCodRadMultiplo.cxLookupPreparazionePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  if VarIsNull(cxLookupPreparazione.EditValue) then
     PrestazioniTESTO.Clear
  else begin
     PrepTesto.Close;
     PrepTesto.Parambyname('pktestistd').AsInteger := PreparazioniPKTESTISTD.AsInteger;
     PrepTesto.open;
     PrestazioniTESTO.AsString := PrepTestoTESTO.AsString;
  end;

end;

procedure TFModiCodRadMultiplo.RefNegativiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFModiCodRadMultiplo.cxLookupRefNegativoPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  if VarIsNull(cxLookupRefNegativo.EditValue) then
     PrestazioniREF_NEGATIVO.Clear
  else begin
     PrepTesto.Close;
     PrepTesto.Parambyname('pktestistd').AsInteger := RefNegativiPKTESTISTD.AsInteger;
     PrepTesto.open;
     PrestazioniREF_NEGATIVO.AsString := PrepTestoTESTO.AsString;
  end;

end;

procedure TFModiCodRadMultiplo.ComponentiBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not (Prestazioni.State in dsEditModes) then
     Prestazioni.Edit;
end;

procedure TFModiCodRadMultiplo.StartPersonalizza;
begin
  LanciaPersonalizza(dxLayoutControl1,FDMCommon.qFormLayout);
end;

procedure TFModiCodRadMultiplo.StopPersonalizza;
begin
  FDMCommon.SalvaPersonalizza(Name,dxLayoutControl1,gblcodutente);
end;

procedure TFModiCodRadMultiplo.ResetPersonalizza;
begin
  if FDMCommon.ResetLayout(Name,dxLayoutControl1) then
     aAnnulla.Execute;
end;

procedure TFModiCodRadMultiplo.cxGrid1DBTableView1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
  NBDI_INSERT: begin
                  aAggiungiEsame.Execute;
                  ADone := True;
               end;
  NBDI_DELETE: begin
                  aCancellaEsame.Execute;
                  ADone := True;
               end;
  end;
end;

end.