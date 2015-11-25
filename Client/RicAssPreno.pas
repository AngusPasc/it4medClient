unit RicAssPreno;

interface

uses
  BaseRicNonTh, IIConsts, {}cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxControls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxContainer,
  dxLayoutcxEditAdapters, dxLayoutControl, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, dxBar, cxClasses, CSEZForm, Classes, ActnList,
  AstaDrv2, AstaClientDataset, cxGridLevel, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, Controls, ExtCtrls, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxMemo,
  cxLabel, cxDBLabel, cxNavigator, dxLayoutContainer, cxGroupBox;

const
  max_record = 500;
type
  TFRicAssPreno = class(TFBaseRicNonTh)
    QRicercaPKASSISTIBILI: TIntegerField;
    QRicercaCOGNOME: TStringField;
    QRicercaNOME: TStringField;
    QRicercaDATA_NASCITA: TDateTimeField;
    QRicercaTELEFONO: TStringField;
    btNuovoItaliano: TcxButton;
    btnModifica: TcxButton;
    QRicercaNOMINATIVO: TStringField;
    QRicercaUSL_CODICE_APPARTIENE: TStringField;
    edpkass: TcxDBMaskEdit;
    edCognome: TcxDBMaskEdit;
    edNome: TcxDBMaskEdit;
    QRicercaSAN_IDENT: TIntegerField;
    QRicercaLIBRETTO_SAN: TStringField;
    NuovoPaziente: TAction;
    Modifica: TAction;
    resultgridPKASSISTIBILI: TcxGridDBColumn;
    QRicercaSES_CODICE: TStringField;
    QRicercaTELEF_2: TStringField;
    QRicercaCOD_ESTERNO: TStringField;
    resultgridCOD_ESTERNO: TcxGridDBColumn;
    cxCodFisc: TcxDBMaskEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    DBText9: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    QRicercaCODICE_FISCALE: TStringField;
    edDataNascita: TcxDBDateEdit;
    resultgridSAN_IDENT: TcxGridDBColumn;
    resultgridNOMINATIVO: TcxGridDBColumn;
    resultgridDATA_NASCITA: TcxGridDBColumn;
    resultgridDES_COM_RES: TcxGridDBColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutCognome: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    QRicercaCIT_CODICE: TStringField;
    DBText6: TcxDBLabel;
    dxLayoutControl1Item1: TdxLayoutItem;
    DBText1: TcxDBLabel;
    dxLayoutControl1Group14: TdxLayoutGroup;
    dxLayoutControl1Group15: TdxLayoutGroup;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group16: TdxLayoutGroup;
    dxLayoutControl1Group17: TdxLayoutGroup;
    QRicercaDES_COM_RES: TStringField;
    dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group8: TdxLayoutAutoCreatedGroup;
    procedure FormShow(Sender: TObject);
    procedure AttivaRicercaUpdate(Sender: TObject);
    procedure SelezionaExecute(Sender: TObject);
    procedure QRicercaAfterQBE(Sender: TAstaBaseClientDataSet);
    procedure QRicercaBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure NuovoPazienteExecute(Sender: TObject);
    procedure NuovoPazienteUpdate(Sender: TObject);
    procedure ModificaExecute(Sender: TObject);
    procedure ModificaUpdate(Sender: TObject);
    procedure edCognomePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure QRicercaAfterPopulate(Sender: TObject);
    procedure edpkassKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDataNascitaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  protected
    procedure DoCreate; override;
    procedure StartPersonalizza; override;
    procedure StopPersonalizza; override;
    procedure ResetPersonalizza; override;
    function AlmenoUno: boolean; override;
    procedure PrimoCampo; override;
  public
    { Public declarations }
     xASSISTIBILI_FK: variant;
     xCOGNOME: variant;
     xNOME: variant;
     xDATA_NASCITA: variant;
     xCODICE_FISC: Variant;
     statolancio: integer;     
  end;

var
  FRicAssPreno: TFRicAssPreno;

implementation

uses DMCommon, Windows, Msgdlgs, Variants, Forms, sysutils, Anagrafica, strutils;


{$R *.DFM}

procedure TFRicAssPreno.PrimoCampo;
begin
  if edCognome.CanFocus then
     edCognome.SetFocus;
end;

procedure TFRicAssPreno.DoCreate;
begin
  inherited;
  xASSISTIBILI_FK := null;
  xCOGNOME := null;
  xNOME := null;
  xDATA_NASCITA := null;
  xCODICE_FISC := null;
  CaricaLista(dxLayoutControl1);
//  Personalizza := gblSuperUser;
  FDMCommon.CaricaLayout(Name,dxLayoutControl1);
  edpkass.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);  
end;

procedure TFRicAssPreno.FormShow(Sender: TObject);
begin
  inherited;
	if not VarIsNull(xASSISTIBILI_FK) then
  begin
  	QRicercaPKASSISTIBILI.AsVariant := xASSISTIBILI_FK;
     ApriTutti := true;
     AttivaRicerca.Execute;
  end
  else if not VarIsNull(xCOGNOME) and (QRicerca.State in dsEditModes) then
  begin
     // -- per ripristinare sostituzioni (JRT 3613)
     QRicercaCOGNOME.AsVariant := xCOGNOME;
     QRicercaNOME.AsVariant := xNOME;
//     QRicercaDATA_NASCITA.AsVariant := xDATA_NASCITA;
//     ApriTutti := true;
//     AttivaRicerca.Execute;
  end;

end;

procedure TFRicAssPreno.AttivaRicercaUpdate(Sender: TObject);
begin
//  inherited;
	AttivaRicerca.Enabled :=  {not RicercaEffettuata and} QRicerca.QBEMode and (QRicerca.State in dsEditModes) and
                           ((edCognome.Text<>'')
                             or (edpkass.Text<>'') or (not qRicercaDATA_NASCITA.IsNull) or
                             not qRicercaPKASSISTIBILI.IsNull or
                            not qRicercaDATA_NASCITA.IsNull or
                            (cxCodFisc.Text<>'')
                           );
end;

procedure TFRicAssPreno.SelezionaExecute(Sender: TObject);
begin
//  inherited;
  ModalResult := mrOk;

end;

procedure TFRicAssPreno.QRicercaAfterQBE(Sender: TAstaBaseClientDataSet);
begin
  inherited;
  if Sender.FindParam('statement_prova')<>nil then
     Sender.ParamByName('statement_prova').AsString := '#';

  if (qRicerca.State in dsEditModes) then
  begin
    qRicercaCOGNOME.AsString := AnsiReplaceStr(qRicercaCOGNOME.AsString,' ','%');
    qRicercaNOME.AsString := AnsiReplaceStr(qRicercaNOME.AsString,' ','%');
  end;

end;

procedure TFRicAssPreno.QRicercaBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
  Sender.Parambyname('max_record').AsInteger := max_record;
//  Sender.Parambyname('reparti_fk',gblpkrep);
end;

procedure TFRicAssPreno.NuovoPazienteExecute(Sender: TObject);
var
  cNascita,cResidenza: boolean;
begin
  inherited;
{
   if not qRicercaCOGNOME.IsNull then
      xCOGNOME := qRicercaCOGNOME.AsString;
   if not qRicercaNOME.IsNull then
      xNOME := qRicercaNOME.AsString;
//   if not qRicercaDATA_NASCITA.IsNull then
//      xDATA_NASCITA := qRicercaDATA_NASCITA.AsDateTime;
}
  FAnagrafica := TFAnagrafica.Create(nil);
  try

     FDMCommon.AssegnaCheckAnagrafica(StatoLancio,cNascita,cResidenza);
     FAnagrafica.CheckNascita := cNascita;
     FAnagrafica.CheckResidenza := cResidenza;

     FAnagrafica.Assistibili.OpenNoFetch;
     FAnagrafica.Assistibili.Insert;
     FAnagrafica.AssistibiliSAN_IDENT.AsInteger := 1;           // anagrafica non convalidata
{
     FAnagrafica.AssistibiliCOGNOME.AsString := edCognome.Text;
     FAnagrafica.AssistibiliNOME.AsString := edNome.Text;
}
     if not VarIsNull(xCOGNOME) then
        FAnagrafica.AssistibiliCOGNOME.AsString := xCOGNOME;
     if not VarIsNull(xNOME) then
        FAnagrafica.AssistibiliNOME.AsString := xNOME;
     if not VarIsNull(xDATA_NASCITA) then
        FAnagrafica.AssistibiliDATA_NASCITA.AsVariant := xDATA_NASCITA;
     if not VarIsNull(xCODICE_FISC) then
        FAnagrafica.DecodificaCodiceFiscale(xCODICE_FISC);

     if FAnagrafica.ShowModal=mrOk then
     begin
        QRicerca.QBEMode := true;
        AzzeraCampi.Enabled := true;
        AzzeraCampi.Execute;
        QRicercaPKASSISTIBILI.AsInteger := FAnagrafica.AssistibiliPKASSISTIBILI.AsInteger;
        ApriTutti := true;
        AttivaRicerca.Execute;
//        while not RicercaEffettuata do
//            Application.ProcessMessages;
        QRicerca.QBEMode := false;
        ModalResult := mrOk;
     end;
  finally
     FAnagrafica.Free;
  end;

end;

procedure TFRicAssPreno.NuovoPazienteUpdate(Sender: TObject);
begin
  inherited;
  NuovoPaziente.Enabled := (FDMCommon.LeggiPostoLavoroANAG_SCRITTURA.AsInteger=1) and RicercaEffettuata;
end;

procedure TFRicAssPreno.ModificaExecute(Sender: TObject);
var
  cNascita,cResidenza: boolean;
  pka: integer;  
begin
  inherited;

    pka := QRicercaPKASSISTIBILI.AsInteger;
    if not FDMCommon.LockRecord( pka,gblCodUtente,2 ) then
       exit;

    FAnagrafica := TFAnagrafica.Create(nil);
    try

       FDMCommon.AssegnaCheckAnagrafica(StatoLancio,cNascita,cResidenza);
       FAnagrafica.CheckNascita := cNascita;
       FAnagrafica.CheckResidenza := cResidenza;

       FAnagrafica.Assistibili.Parambyname('pkassistibili').AsInteger := QRicercaPKASSISTIBILI.AsInteger;
       FAnagrafica.Assistibili.open;
//       FAnagrafica.Assistibili.Edit;

       if FAnagrafica.ShowModal=mrOk then
       begin
          QRicerca.AnnullaQBE;
          QRicerca.AddQBEToQuery;
          QRicerca.QBEMode := true;
          QRicercaPKASSISTIBILI.AsInteger := FAnagrafica.AssistibiliPKASSISTIBILI.AsInteger;
          AttivaRicerca.Execute;
       end;
    finally
       FAnagrafica.Free;
       FDMCommon.UnLockRecord(pka,gblCodUtente,2);
    end;

end;

procedure TFRicAssPreno.ModificaUpdate(Sender: TObject);
begin
  inherited;
  Modifica.Enabled := {(FDMCommon.LeggiPostoLavoroANAG_SCRITTURA.AsInteger=1) and} not QRicerca.IsEmpty and (QRicercaPKASSISTIBILI.AsInteger>0);
end;

procedure TFRicAssPreno.edCognomePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  cogn: string;
begin
  inherited;
  cogn := VarAsType(DisplayValue,varString);
  if (Length(cogn)>0) and (Length(cogn)<2) then
  begin
     Error := TRUE;
     ErrorText := format(RS_Almeno2Caratteri,[dxLayoutCognome.CaptionOptions.Text]);
  end;

end;

procedure TFRicAssPreno.QRicercaAfterPopulate(Sender: TObject);
begin
  inherited;
  if QRicerca.recordcount=max_record then
     MsgDlg(RIS_RicercaIncompleta, '', ktInformation, [kbOk], dfFirst);

end;

procedure TFRicAssPreno.edpkassKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=VK_RETURN) then
      PostMessage(Handle,SY_DBLCLICK,0,LongInt(AttivaRicerca));
end;

procedure TFRicAssPreno.edDataNascitaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key=VK_RETURN) then
      PostMessage(Handle,SY_DBLCLICK,0,LongInt(AttivaRicerca));
end;

function TFRicAssPreno.AlmenoUno: boolean;
begin
  result := inherited AlmenoUno or (QRicerca.Parambyname('sconosciuto').AsString<>'');
end;

procedure TFRicAssPreno.StartPersonalizza;
begin
  LanciaPersonalizza(dxLayoutControl1,FDMCommon.qFormLayout);
end;

procedure TFRicAssPreno.StopPersonalizza;
begin
  FDMCommon.SalvaPersonalizza(Name,dxLayoutControl1,gblcodutente);
end;

procedure TFRicAssPreno.ResetPersonalizza;
begin
  if FDMCommon.ResetLayout(Name,dxLayoutControl1) then
     ModalResult := mrCancel;
end;

procedure TFRicAssPreno.edNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=VK_RETURN) then
      PostMessage(Handle,SY_DBLCLICK,0,LongInt(AttivaRicerca));

end;

end.