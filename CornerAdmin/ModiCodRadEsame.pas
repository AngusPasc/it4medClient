unit ModiCodRadEsame;

interface

uses
  BaseRad, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxMaskEdit, cxSpinEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, AstaUpdateSQL, cxRichMemoDlg,
  dxBar, cxClasses, AstaDrv2, AstaClientDataset, Classes,
  ActnList, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxRichEdit, cxDBRichEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxCheckBox, cxMemo, cxTextEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl,
  CSEZForm, StdCtrls, cxButtons, Controls, ExtCtrls, cxGroupBox;

type
  TFModiCodRadEsame = class(TFBaseRad)
    sPrestazioni: TDataSource;
    sLkTariffario: TDataSource;
    ActionList1: TActionList;
    aConferma: TAction;
    aAnnulla: TAction;
    DistBas: TAstaClientDataSet;
    DistBasMAGART_FK: TIntegerField;
    DistBasQUANTITA: TFloatField;
    DistBasARTICOLO: TStringField;
    DistBasUM: TStringField;
    DistBasDESCRIZIONE: TStringField;
    sDistBas: TDataSource;
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    aModificaMateriali: TAction;
    aCancellaMateriale: TAction;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarDockControl2: TdxBarDockControl;
    aZoom: TAction;
    dxBarButton3: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    Prestazioni: TAstaClientDataSet;
    PrestazioniDESCRIZIONE: TStringField;
    PrestazioniCODICE: TStringField;
    PrestazioniIDENT_FK: TStringField;
    PrestazioniDATA_INIZIO: TDateTimeField;
    PrestazioniDATA_FINE: TDateTimeField;
    PrestazioniDURATA: TIntegerField;
    PrestazioniUSER_ID: TIntegerField;
    PrestazioniREAL_NAME: TStringField;
    PrestazioniLAST_MOD: TDateTimeField;
    PrestazioniDESCTARIFFARIO: TStringField;
    PrestazioniDOSE: TFloatField;
    PrestazioniREPARTI_FK: TIntegerField;
    sGruppo: TDataSource;
    dxBarDockControl3: TdxBarDockControl;
    aNegZoom: TAction;
    dxBarButton4: TdxBarButton;
    Note: TcxDBRichEdit;
    cxRichMemoDlg: TcxRichMemoDlg;
    RefNegativo: TcxDBMemo;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    GridMateriali: TcxGridDBTableView;
    GridMaterialiARTICOLO: TcxGridDBColumn;
    GridMaterialiDESCRIZIONE: TcxGridDBColumn;
    GridMaterialiQUANTITA: TcxGridDBColumn;
    GridMaterialiUM: TcxGridDBColumn;
    PrestazioniMOLTIPLICA: TIntegerField;
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
    cxDBSpinEdit2: TcxDBSpinEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxTariffario: TcxDBLookupComboBox;
    dxLayoutControlCodTariffario: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControlDescTariffario: TdxLayoutItem;
    cxMoltiplicatore: TcxDBSpinEdit;
    dxLayoutControlMoltiplicatore: TdxLayoutItem;
    cxDBMaskEdit4: TcxDBMaskEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBMaskEdit5: TcxDBMaskEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControlGroupTariffario: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutMedPerEsame: TdxLayoutItem;
    DistBasTIPO: TIntegerField;
    DistBasDESCR_AGG: TStringField;
    PrestazioniCOMPOSTO: TIntegerField;
    PrestazioniMEDOBBLIG: TIntegerField;
    PrestazioniBRANCA: TStringField;
    cxDBLookupBranca: TcxDBLookupComboBox;
    dxLayoutControl1Item16: TdxLayoutItem;
    sLkBranche: TDataSource;
    PrestazioniPESO_MEDICO: TFloatField;
    cxDBSpinEdit4: TcxDBSpinEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxLookupPreparazione: TcxDBLookupComboBox;
    Preparazioni: TAstaClientDataSet;
    PreparazioniPKTESTISTD: TIntegerField;
    PreparazioniDESCRIZIONE: TStringField;
    PrestazioniPREPTEXT_FK: TIntegerField;
    PrestazioniPKCODXRAD: TIntegerField;
    sPreparazioni: TDataSource;
    PrestazioniREFNEGTEXT_FK: TIntegerField;
    RefNegativi: TAstaClientDataSet;
    RefNegativiPKTESTISTD: TIntegerField;
    RefNegativiDESCRIZIONE: TStringField;
    sRefNegativi: TDataSource;
    cxLookupRefNegativo: TcxDBLookupComboBox;
    DistBasCODXRAD_FK: TIntegerField;
    PrestazioniGRESAMI_FK: TIntegerField;
    PrestazioniTESTO: TBlobField;
    PrestazioniREF_NEGATIVO: TBlobField;
    PrepTesto: TAstaClientDataSet;
    PrepTestoPKTESTISTD: TIntegerField;
    PrepTestoTESTO: TBlobField;
    updPrestazioni: TAstaUpdateSQL;
    PrestazioniCODICIRAD_FK: TIntegerField;
    PrestazioniPESO_TECNICO: TFloatField;
    cxDBSpinEdit5: TcxDBSpinEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    PrestazioniNO_CTRL: TIntegerField;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    PreparazioniCODICE: TStringField;
    RefNegativiCODICE: TStringField;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    PrestazioniGRSPEC_FK: TIntegerField;
    sLkGrSpec: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControlSpecificazioni: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControlMateriali: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutControl1Item23: TdxLayoutItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxLayoutControl1Group14: TdxLayoutGroup;
    dxBarManager1Bar3: TdxBar;
dxBarManager1Bar1: TdxBar;    
dxBarManager1Bar2: TdxBar;
    dxLayoutControl1Group15: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group8: TdxLayoutAutoCreatedGroup;
    procedure aConfermaExecute(Sender: TObject);
    procedure aAnnullaExecute(Sender: TObject);
    procedure DistBasBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure aCancellaMaterialeUpdate(Sender: TObject);
    procedure aCancellaMaterialeExecute(Sender: TObject);
    procedure aZoomExecute(Sender: TObject);
    procedure aModificaMaterialiExecute(Sender: TObject);
    procedure DistBasNewRecord(DataSet: TDataSet);
    procedure PrestazioniBeforePost(DataSet: TDataSet);
    procedure PrestazioniNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure aNegZoomExecute(Sender: TObject);
    procedure aNegZoomUpdate(Sender: TObject);
    procedure cxTariffarioPropertiesCloseUp(Sender: TObject);
    procedure PreparazioniBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure cxLookupRefNegativoPropertiesCloseUp(Sender: TObject);
    procedure RefNegativiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure csEZKeys1KeyIntercept(KeyType: TNavigationKey;
      Ctrl: TControl; var Intercept: Boolean);
  private
    { Private declarations }
  protected
    procedure DoCreate; override;
    procedure StartPersonalizza; override;
    procedure StopPersonalizza; override;
    procedure ResetPersonalizza; override;    
  public
    { Public declarations }
    
  end;

  function ViewCodEsame(xd: TAstaClientDataset): integer;

var
  FModiCodRadEsame: TFModiCodRadEsame;

implementation

uses DMCommon, MsgDlgs, sysutils, variants,
{$IFNDEF MEDICORNER}
AssociaMateriali,
{$ENDIF}
dxCore;

{$R *.dfm}

function ViewCodEsame(xd: TAstaClientDataset): integer;
begin
  FModiCodRadEsame := TFModiCodRadEsame.Create(nil);
  try
//     FModiCodEsame.sPrestazioni.Dataset := xd;
     result := FModiCodRadEsame.ShowModal;
  finally
     FModiCodRadEsame.Free;
  end;
end;

procedure TFModiCodRadEsame.aConfermaExecute(Sender: TObject);
begin
  inherited;

  FDMCommon.AstaClientSocket.SendDataSetTransactions(Name,[Prestazioni,DistBas]);
  ModalResult := mrOk;

end;

procedure TFModiCodRadEsame.aAnnullaExecute(Sender: TObject);
begin
  inherited;
  if (Prestazioni.State in dsEditModes) then
     Prestazioni.Cancel;

  ModalResult := mrCancel;

end;

procedure TFModiCodRadEsame.DistBasBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('codxrad_fk').AsInteger := PrestazioniPKCODXRAD.AsInteger;
end;

procedure TFModiCodRadEsame.aCancellaMaterialeUpdate(Sender: TObject);
begin
  inherited;
  aCancellaMateriale.Enabled := not DistBas.IsEmpty {and (GridMateriali.SelectedCount>0)}; 
end;

procedure TFModiCodRadEsame.aCancellaMaterialeExecute(Sender: TObject);
begin
  inherited;
//  DistBas.Delete;
  GridMateriali.Controller.DeleteSelection;
end;

procedure TFModiCodRadEsame.aZoomExecute(Sender: TObject);
begin
  inherited;
  strRichMemoText := TStringStream.Create('');
  strRichMemoText.WriteString(Note.Text);

  cxRichMemoDlg.Execute(false);

  strRichMemoText.Free;
  strRichMemoText := nil;

end;

procedure TFModiCodRadEsame.aModificaMaterialiExecute(Sender: TObject);
begin
  inherited;
{$IFNDEF MEDICORNER}
  FAssociaMateriali := TFAssociaMateriali.Create(nil);
  try
     FAssociaMateriali.sEsSelezionati.Dataset := DistBas;
     FAssociaMateriali.ShowModal;
  finally
     FAssociaMateriali.Free;
  end;
{$ENDIF}
end;

procedure TFModiCodRadEsame.DistBasNewRecord(DataSet: TDataSet);
begin
  inherited;
  DistBasCODXRAD_FK.AsInteger := PrestazioniPKCODXRAD.AsInteger;
end;

procedure TFModiCodRadEsame.PrestazioniBeforePost(DataSet: TDataSet);
begin
  inherited;
  PrestazioniUSER_ID.AsInteger := gblCodUtente;
  PrestazioniLAST_MOD.AsDateTime := Now();
  if PrestazioniDOSE.AsInteger<0 then
  begin
     MsgDlg(format(RS_Gene_Positivo,[PrestazioniDOSE.DisplayLabel]), '',ktWarning, [kbOk], dfFirst);
     Abort;
  end;
end;

procedure TFModiCodRadEsame.PrestazioniNewRecord(DataSet: TDataSet);
begin
  inherited;
  PrestazioniDURATA.AsInteger := 15;
  PrestazioniREPARTI_FK.AsInteger := gblpkrep;
  PrestazioniDOSE.AsFloat := 0;
  PrestazioniPESO_MEDICO.AsFloat := 0;
  PrestazioniPESO_TECNICO.AsFloat := 0;  
  PrestazioniMOLTIPLICA.AsInteger := 1;
  PrestazioniCOMPOSTO.AsInteger := 0;
  PrestazioniMEDOBBLIG.AsInteger := 0;
end;

procedure TFModiCodRadEsame.FormShow(Sender: TObject);
begin
  inherited;
  if not sLkTariffario.Dataset.Active then
  begin
    sLkTariffario.Dataset.open;
  end;

  DistBas.open;

end;

procedure TFModiCodRadEsame.aNegZoomExecute(Sender: TObject);
begin
  inherited;

  strRichMemoText := TStringStream.Create('');
  strRichMemoText.WriteString(RefNegativo.Text);

  cxRichMemoDlg.Execute(false);

  strRichMemoText.Free;
  strRichMemoText := nil;

end;

procedure TFModiCodRadEsame.aNegZoomUpdate(Sender: TObject);
begin
  inherited;
//  aNegZoom.Enabled := gblfunzione=1;
end;

procedure TFModiCodRadEsame.DoCreate;
begin
  inherited;

//  Personalizza := gblSuperUser;
  FDMCommon.CaricaLayout(Name,dxLayoutControl1);

  cxGruppo.Properties.Grid.DataController.DataModeController.SyncMode := True;
  cxLookupPreparazione.Properties.Grid.DataController.DataModeController.SyncMode := True;
  cxLookupRefNegativo.Properties.Grid.DataController.DataModeController.SyncMode := True;

  dxLayoutMedPerEsame.Visible := (FDMCommon.LeggiPostoLavoroCHECK_MED_PER_ESAME.AsInteger=1);
  Preparazioni.open;
  RefNegativi.open;

  if (FDMCommon.Param_TicketCODICI_CUP.AsInteger=0) then
  begin
    dxLayoutControlGroupTariffario.ShowCaption := false;
    dxLayoutControlCodTariffario.Visible := false;
    dxLayoutControlDescTariffario.Visible := false;
  end;

  if (FDMCommon.LeggiPostoLavoroCHK_SPECIFICAZIONI.AsInteger=0) then
     dxLayoutControlSpecificazioni.Visible := false;

  ReadBarCode := False;
  dxLayoutControlMateriali.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5);
  dxLayoutControlMoltiplicatore.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5);
  
end;

procedure TFModiCodRadEsame.cxTariffarioPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if Prestazioni.Active and (Prestazioni.State in dsEditModes) then
  begin
     PrestazioniDESCTARIFFARIO.AsString := sLkTariffario.Dataset.Fieldbyname('DESCRIZIONE').AsString;
     if sLkBranche.Dataset.recordcount=1 then
     begin
        PrestazioniBRANCA.AsString := sLkBranche.Dataset.FieldByName('PKBRANCHE').AsString;
     end
{     else
        PrestazioniBRANCA.Clear};     
  end;

end;

procedure TFModiCodRadEsame.PreparazioniBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFModiCodRadEsame.cxDBLookupComboBox1PropertiesCloseUp(
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

procedure TFModiCodRadEsame.cxLookupRefNegativoPropertiesCloseUp(
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

procedure TFModiCodRadEsame.RefNegativiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFModiCodRadEsame.csEZKeys1KeyIntercept(KeyType: TNavigationKey;
  Ctrl: TControl; var Intercept: Boolean);
begin
  inherited;
  Intercept := Intercept {ex: and not (Ctrl is TcxRichInnerEdit)} and not (Ctrl is TcxCustomInnerMemo);
end;

procedure TFModiCodRadEsame.StartPersonalizza;
begin
  LanciaPersonalizza(dxLayoutControl1,FDMCommon.qFormLayout);
end;

procedure TFModiCodRadEsame.StopPersonalizza;
begin
  FDMCommon.SalvaPersonalizza(Name,dxLayoutControl1,gblcodutente);
end;

procedure TFModiCodRadEsame.ResetPersonalizza;
begin
  if FDMCommon.ResetLayout(Name,dxLayoutControl1) then
     aAnnulla.Execute;
end;

end.
