
unit ModiCodEsame;

interface

uses
  BaseRad, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, dxLayoutcxEditAdapters, DB, AstaDrv2,
  AstaClientDataset, Classes, ActnList, dxLayoutContainer, cxMemo,
  cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCalendar, cxSpinEdit, cxTextEdit, cxMaskEdit,
  dxLayoutControl, CSEZForm, StdCtrls, cxButtons, Controls, ExtCtrls,
  cxGroupBox;

type
  TFModiCodEsame = class(TFBaseRad)
    sPrestazioni: TDataSource;
    sLkTariffario: TDataSource;
    ActionList1: TActionList;
    aConferma: TAction;
    aAnnulla: TAction;
    Prestazioni: TAstaClientDataSet;
    PrestazioniCODICE: TStringField;
    PrestazioniIDENT_FK: TStringField;
    PrestazioniDATA_INIZIO: TDateTimeField;
    PrestazioniDATA_FINE: TDateTimeField;
    PrestazioniUSER_ID: TIntegerField;
    PrestazioniREAL_NAME: TStringField;
    PrestazioniLAST_MOD: TDateTimeField;
    PrestazioniDESCTARIFFARIO: TStringField;
    PrestazioniPKCODICIRAD: TIntegerField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDBMaskEdit1: TcxDBMaskEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBMaskEdit2: TcxDBMaskEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBSpinEdit2: TcxDBSpinEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxTariffario: TcxDBLookupComboBox;
    dxLayoutControlCodTariffario: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControlDescTariffario: TdxLayoutItem;
    cxDBMaskEdit4: TcxDBMaskEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBMaskEdit5: TcxDBMaskEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControlGroupTariffario: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    PrestazioniCOMPOSTO: TIntegerField;
    PrestazioniBRANCA: TStringField;
    cxDBLookupBranca: TcxDBLookupComboBox;
    dxLayoutControl1Item16: TdxLayoutItem;
    sLkBranche: TDataSource;
    PrestazioniDESCRIZIONE: TStringField;
    PrestazioniDOSE: TFloatField;
    sLkGrSpec: TDataSource;
    dxLayoutControlSpecificazioni: TdxLayoutGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    PrestazioniGRSPEC_FK: TIntegerField;
    PrestazioniPESO_MEDICO: TFloatField;
    PrestazioniPESO_TECNICO: TFloatField;
    cxDBSpinEdit1: TcxDBSpinEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBSpinEdit3: TcxDBSpinEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    procedure aConfermaExecute(Sender: TObject);
    procedure aAnnullaExecute(Sender: TObject);
    procedure PrestazioniBeforePost(DataSet: TDataSet);
    procedure PrestazioniNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure aNegZoomUpdate(Sender: TObject);
    procedure cxTariffarioPropertiesCloseUp(Sender: TObject);
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
  FModiCodEsame: TFModiCodEsame;

implementation

uses DMCommon, MsgDlgs, sysutils, dxCore;

{$R *.dfm}

function ViewCodEsame(xd: TAstaClientDataset): integer;
begin
  FModiCodEsame := TFModiCodEsame.Create(nil);
  try
//     FModiCodEsame.sPrestazioni.Dataset := xd;
     result := FModiCodEsame.ShowModal;
  finally
     FModiCodEsame.Free;
  end;
end;

procedure TFModiCodEsame.aConfermaExecute(Sender: TObject);
begin
  inherited;

  FDMCommon.AstaClientSocket.SendDataSetTransactions(Name,[Prestazioni]);
  ModalResult := mrOk;

end;

procedure TFModiCodEsame.aAnnullaExecute(Sender: TObject);
begin
  inherited;
  if (Prestazioni.State in dsEditModes) then
     Prestazioni.Cancel;

  ModalResult := mrCancel;

end;

procedure TFModiCodEsame.PrestazioniBeforePost(DataSet: TDataSet);
begin
  inherited;
  PrestazioniUSER_ID.AsInteger := gblCodUtente;
  if PrestazioniDOSE.AsInteger<0 then
  begin
     MsgDlg(format(RS_Gene_Positivo,[PrestazioniDOSE.DisplayLabel]), '',ktWarning, [kbOk], dfFirst);
     Abort;
  end;
end;

procedure TFModiCodEsame.PrestazioniNewRecord(DataSet: TDataSet);
begin
  inherited;
  PrestazioniDOSE.AsFloat := 0;
  PrestazioniCOMPOSTO.AsInteger := 0;
end;

procedure TFModiCodEsame.FormShow(Sender: TObject);
begin
  inherited;

  if not sLkTariffario.Dataset.Active then
  begin
    sLkTariffario.Dataset.open;
  end;

  if (Prestazioni.State=dsInsert) then
     PrestazioniCODICE.FocusControl;

end;

procedure TFModiCodEsame.aNegZoomUpdate(Sender: TObject);
begin
  inherited;
//  aNegZoom.Enabled := gblfunzione=1;
end;

procedure TFModiCodEsame.DoCreate;
begin
  inherited;

//  Personalizza := gblSuperUser;
  FDMCommon.CaricaLayout(Name,dxLayoutControl1);

  if (FDMCommon.LeggiPostoLavoroCHK_SPECIFICAZIONI.AsInteger=0) then
     dxLayoutControlSpecificazioni.Visible := false;

  if (FDMCommon.Param_TicketCODICI_CUP.AsInteger=0) then
  begin
    dxLayoutControlGroupTariffario.ShowCaption := false;
    dxLayoutControlCodTariffario.Visible := false;
    dxLayoutControlDescTariffario.Visible := false;
  end;

  ReadBarCode := False;
    
end;

procedure TFModiCodEsame.cxTariffarioPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if Prestazioni.Active and (Prestazioni.State in dsEditModes) then
  begin
     PrestazioniDESCTARIFFARIO.AsString := sLkTariffario.Dataset.Fieldbyname('DESCRIZIONE').AsString;
     if sLkBranche.DataSet.recordcount=1 then
     begin
        PrestazioniBRANCA.AsString := sLkBranche.Dataset.FieldByName('PKBRANCHE').AsString;
     end
     else
        PrestazioniBRANCA.Clear;     
  end;

end;

procedure TFModiCodEsame.StartPersonalizza;
begin
  LanciaPersonalizza(dxLayoutControl1,FDMCommon.qFormLayout);
end;

procedure TFModiCodEsame.StopPersonalizza;
begin
  FDMCommon.SalvaPersonalizza(Name,dxLayoutControl1,gblcodutente);
end;

procedure TFModiCodEsame.ResetPersonalizza;
begin
  if FDMCommon.ResetLayout(Name,dxLayoutControl1) then
     aAnnulla.Execute;
end;

end.
