unit RicMedici;

interface

uses
  BaseRicNonTh, {}cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxContainer, dxLayoutcxEditAdapters,
  dxLayoutControl, cxTextEdit, cxMaskEdit, cxDBEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, dxBar, cxClasses, CSEZForm, Classes,
  ActnList, AstaDrv2, AstaClientDataset, cxGridLevel, cxGridCustomView,
  cxGrid, StdCtrls, cxButtons, Controls, ExtCtrls, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  cxNavigator, dxLayoutContainer, cxGroupBox;

type
  TFRicMedici = class(TFBaseRicNonTh)
    edDescrizione: TcxDBMaskEdit;
    edCap: TcxDBMaskEdit;
    QRicercaNOMINATIVO: TStringField;
    resultgridCODICE: TcxGridDBColumn;
    resultgridNOMINATIVO: TcxGridDBColumn;
    btnModifica: TcxButton;
    Modifica: TAction;
    QRicercaDATA_INIZIO: TDateTimeField;
    QRicercaDATA_FINE: TDateTimeField;
    btNuovoItaliano: TcxButton;
    NuovoMedico: TAction;
    QRicercaCODICE: TStringField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure QRicercaAfterQBE(Sender: TAstaBaseClientDataSet);
    procedure ModificaExecute(Sender: TObject);
    procedure NuovoMedicoExecute(Sender: TObject);
    procedure NuovoMedicoUpdate(Sender: TObject);
    procedure ModificaUpdate(Sender: TObject);
    procedure edDescrizioneKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCapKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  protected
    procedure DoCreate; override;
    procedure StartPersonalizza; override;
    procedure StopPersonalizza; override;
    procedure ResetPersonalizza; override;
    procedure PrimoCampo; override;
  public
    { Public declarations }
  end;

var
  FRicMedici: TFRicMedici;

implementation
uses DMCommon,Windows,IIConsts,Medici,sysutils,Forms;

{$R *.DFM}

procedure TFRicMedici.PrimoCampo;
begin
  if edDescrizione.CanFocus then
     edDescrizione.SetFocus;
end;

procedure TFRicMedici.FormShow(Sender: TObject);
begin
  inherited;
  if not QRicerca.Active then
	   QRicerca.Open;

end;

procedure TFRicMedici.QRicercaAfterQBE(Sender: TAstaBaseClientDataSet);
begin
  inherited;

  if Sender.FindParam('statement_prova')<>nil then
     Sender.ParamByName('statement_prova').AsString := '#';

end;

procedure TFRicMedici.ModificaExecute(Sender: TObject);
begin
  inherited;

  FMedici := TFMedici.Create(nil);
  try
     FMedici.qMedici.Parambyname('codice').AsString := qRicercaCODICE.AsString;
     FMedici.qMedici.open;
     if FMedici.ShowModal=mrOk then
     begin
        QRicerca.AnnullaQBE;
        QRicerca.AddQBEToQuery;
        QRicerca.QBEMode := true;
        QRicercaCODICE.AsString := FMedici.qMediciCODICE.AsString;
        AttivaRicerca.Execute;
     end;
  finally
     FMedici.Free;
     FMedici := nil;
  end;

end;

procedure TFRicMedici.NuovoMedicoExecute(Sender: TObject);
begin
  inherited;
  FMedici := TFMedici.Create(nil);
  try
     FMedici.qMedici.opennofetch;
     FMedici.sMedici.Dataset.Insert;
     if FMedici.ShowModal=mrOk then
     begin
        QRicerca.QBEMode := true;
        AzzeraCampi.Enabled := true;
        AzzeraCampi.Execute;
        QRicercaCODICE.AsString := FMedici.qMediciCODICE.AsString;
        ApriTutti := true;
        AttivaRicerca.Execute;
//        while not RicercaEffettuata do
//            Application.ProcessMessages;
        QRicerca.QBEMode := false;
        ModalResult := mrOk;
     end;
  finally
     FMedici.Free;
     FMedici := nil;
  end;

end;

procedure TFRicMedici.NuovoMedicoUpdate(Sender: TObject);
begin
  inherited;
  NuovoMedico.Enabled := RicercaEffettuata;
end;

procedure TFRicMedici.ModificaUpdate(Sender: TObject);
begin
  inherited;
  Modifica.Enabled := not QRicerca.IsEmpty and not qRicercaCODICE.IsNull;
end;

procedure TFRicMedici.edDescrizioneKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=VK_RETURN) then
      PostMessage(Handle,SY_DBLCLICK,0,LongInt(AttivaRicerca));
end;

procedure TFRicMedici.edCapKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=VK_RETURN) then
      PostMessage(Handle,SY_DBLCLICK,0,LongInt(AttivaRicerca));
end;

procedure TFRicMedici.DoCreate;
begin
  inherited;
  CaricaLista(dxLayoutControl1);
//  Personalizza := gblSuperUser;
  FDMCommon.CaricaLayout(Name,dxLayoutControl1);
end;

procedure TFRicMedici.StartPersonalizza;
begin
  LanciaPersonalizza(dxLayoutControl1,FDMCommon.qFormLayout);
end;

procedure TFRicMedici.StopPersonalizza;
begin
  FDMCommon.SalvaPersonalizza(Name,dxLayoutControl1,gblcodutente);
end;

procedure TFRicMedici.ResetPersonalizza;
begin
  if FDMCommon.ResetLayout(Name,dxLayoutControl1) then
     ModalResult := mrCancel;
end;

end.