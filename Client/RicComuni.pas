unit RicComuni;

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
  TFRicComuni = class(TFBaseRicNonTh)
    NuovoComune: TAction;
    Modifica: TAction;
    QRicercaCODICE: TStringField;
    QRicercaDESCRIZIONE: TStringField;
    QRicercaCAP: TStringField;
    QRicercaCOM_TYPE: TStringField;
    edDescrizione: TcxDBMaskEdit;
    edCap: TcxDBMaskEdit;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    QRicercaSIGLA: TStringField;
    QRicercaNAZSIGLA: TStringField;
    edCodice: TcxDBMaskEdit;
    resultgridCODICE: TcxGridDBColumn;
    resultgridDESCRIZIONE: TcxGridDBColumn;
    resultgridCAP: TcxGridDBColumn;
    resultgridSIGLA: TcxGridDBColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure NuovoComuneExecute(Sender: TObject);
    procedure NuovoComuneUpdate(Sender: TObject);
    procedure ModificaExecute(Sender: TObject);
    procedure ModificaUpdate(Sender: TObject);
    procedure QRicercaAfterQBE(Sender: TAstaBaseClientDataSet);
    procedure edDescrizioneKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCapKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCodiceKeyDown(Sender: TObject; var Key: Word;
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
  FRicComuni: TFRicComuni;

implementation
uses DMCommon,Forms,Windows,IIConsts;

{$R *.DFM}

procedure TFRicComuni.PrimoCampo;
begin
  if edDescrizione.CanFocus then
     edDescrizione.SetFocus;
end;

procedure TFRicComuni.FormShow(Sender: TObject);
begin
  inherited;
  if not QRicerca.Active then
	   QRicerca.Open;

end;

procedure TFRicComuni.NuovoComuneExecute(Sender: TObject);
begin
  inherited;
{
    FComuneEstero := TFComuneEstero.Create(nil);
    try
       FComuneEstero.Comuni.OpenNoFetch;
       FComuneEstero.Comuni.Insert;
       FComuneEstero.ComuniNAZ_CODICE.AsString := QRicerca.GetVariable('NAZ_CODICE');
       if FComuneEstero.ShowModal = mrOk then
       begin
        QRicerca.QBEMode := true;
        AzzeraCampi.Enabled := true;
        AzzeraCampi.Execute;
        QRicercaCODICE.AsString := FComuneEstero.ComuniCODICE.AsString;
        ApriTutti := true;
        AttivaRicerca.Execute;
//        while not RicercaEffettuata do
//            Application.ProcessMessages;
        ModalResult := mrOk;
       end;
    finally
       FComuneEstero.Free;
    end;
}
end;

procedure TFRicComuni.NuovoComuneUpdate(Sender: TObject);
begin
  inherited;
//  NuovoComune.Enabled := RicercaEffettuata and not (QRicerca.GetVariable('NAZ_CODICE')='100');
end;

procedure TFRicComuni.ModificaExecute(Sender: TObject);
begin
  inherited;
{
    FComuneEstero := TFComuneEstero.Create(nil);
    try
       FComuneEstero.Comuni.Parambyname('CODICE',QRicercaCODICE.AsString);
       FComuneEstero.Comuni.open;
       FComuneEstero.Comuni.Edit;
       if FComuneEstero.ShowModal=mrOk then
       begin
          QRicerca.AnnullaQBE;
          QRicerca.AddQBEToQuery;
          QRicerca.QBEMode := true;
          QRicercaCODICE.AsString := FComuneEstero.ComuniCODICE.AsString;
          AttivaRicerca.Execute;
       end;

    finally
       FComuneEstero.Free;
    end;
}
end;

procedure TFRicComuni.ModificaUpdate(Sender: TObject);
begin
  inherited;
//  Modifica.Enabled := RicercaEffettuata and not (QRicerca.GetVariable('NAZ_CODICE')='100');
end;

procedure TFRicComuni.QRicercaAfterQBE(Sender: TAstaBaseClientDataSet);
begin
  inherited;

  if Sender.FindParam('statement_prova')<>nil then
     Sender.ParamByName('statement_prova').AsString := '#';

end;

procedure TFRicComuni.edDescrizioneKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=VK_RETURN) then
      PostMessage(Handle,SY_DBLCLICK,0,LongInt(AttivaRicerca));
end;

procedure TFRicComuni.edCapKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=VK_RETURN) then
      PostMessage(Handle,SY_DBLCLICK,0,LongInt(AttivaRicerca));
end;

procedure TFRicComuni.edCodiceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=VK_RETURN) then
      PostMessage(Handle,SY_DBLCLICK,0,LongInt(AttivaRicerca));
end;

procedure TFRicComuni.DoCreate;
begin
  inherited;
  CaricaLista(dxLayoutControl1);
//  Personalizza := gblSuperUser;
  FDMCommon.CaricaLayout(Name,dxLayoutControl1);
end;

procedure TFRicComuni.StartPersonalizza;
begin
  LanciaPersonalizza(dxLayoutControl1,FDMCommon.qFormLayout);
end;

procedure TFRicComuni.StopPersonalizza;
begin
  FDMCommon.SalvaPersonalizza(Name,dxLayoutControl1,gblcodutente);
end;

procedure TFRicComuni.ResetPersonalizza;
begin
  if FDMCommon.ResetLayout(Name,dxLayoutControl1) then
     ModalResult := mrCancel;
end;


end.