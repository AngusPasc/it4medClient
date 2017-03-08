unit RicAssistito;

interface

uses
  BaseRicNonTh, IIConsts, IInterface,{}cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxControls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxContainer,
  dxLayoutcxEditAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxPSCore, dxPSContainerLnk,
  dxLayoutControl, cxDBEdit, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxMaskEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxBar, cxClasses, CSEZForm, Classes, ActnList, AstaDrv2,
  AstaClientDataset, cxGridLevel, cxGridCustomView, cxGrid, StdCtrls,
  cxButtons, Controls, ExtCtrls, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, cxMemo, 
  dxPScxDBEditorLnks, dxPSTextLnk, cxLabel, cxDBLabel, cxNavigator,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxLayoutContainer, dxPSdxLCLnk,
  dxPSPrVwRibbon, dxPScxSchedulerLnk, dxPSdxDBOCLnk, dxSkinsdxRibbonPainter,
  cxGroupBox;

const
  max_record = 500;

type
  TFRicAssistito = class(TFBaseRicNonTh)
    QRicercaPKASSISTIBILI: TIntegerField;
    QRicercaCOGNOME: TStringField;
    QRicercaNOME: TStringField;
    QRicercaDATA_NASCITA: TDateTimeField;
    QRicercaTELEFONO: TStringField;
    btNuovoItaliano: TcxButton;
    NuovoPaziente: TAction;
    Modifica: TAction;
    btnModifica: TcxButton;
    QRicercaCIT_CODICE: TStringField;
    QRicercaDES_NAZCITT: TStringField;
    QRicercaNOMINATIVO: TStringField;
    QRicercaUSL_CODICE_APPARTIENE: TStringField;
    QRicercaSAN_IDENT: TIntegerField;
    btSconosciuto: TcxButton;
    PazienteSconosciuto: TAction;
    QRicercaLIBRETTO_SAN: TStringField;
    QRicercaMED_BASE: TStringField;
    resultgridPKASSISTIBILI: TcxGridDBColumn;
    resultgridSAN_IDENT: TcxGridDBColumn;
    QRicercaNOMEMEDICO: TStringField;
    resultgridNR_ARCHIVIO: TcxGridDBColumn;
    resultgridNOMINATIVO: TcxGridDBColumn;
    resultgridDATA_NASCITA: TcxGridDBColumn;
    resultgridDES_COM_RES: TcxGridDBColumn;
    QRicercaSES_CODICE: TStringField;
    btPrecedenti: TcxButton;
    Precedenti: TAction;
    QRicercaTELEF_2: TStringField;
    QRicercaCOD_ESTERNO: TStringField;
    resultgridCOD_ESTERNO: TcxGridDBColumn;                
    QRicercaCODICE_FISCALE: TStringField;
    cxCodFisc: TcxDBMaskEdit;
    edCognome: TcxDBMaskEdit;
    edNome: TcxDBMaskEdit;
    edpkass: TcxDBMaskEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    DBText6: TcxDBLabel;
    DBText1: TcxDBLabel;
    DBText9: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinterCartella: TdxCustomContainerReportLink;
    aStampaScheda: TAction;
    cxButton1: TcxButton;
    edDataNascita: TcxDBDateEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutCognome: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    QRicercaETA: TIntegerField;
    QRicercaNR_ARCHIVIO: TIntegerField;
    QRicercaCOM_RES: TStringField;
    QRicercaTNRES: TIntegerField;
    QRicercaCOM_TYPE: TStringField;
    QRicercaDES_COM_RES: TStringField;
    QRicercaDES_COM_DOM: TStringField;
    QRicercaEMAIL: TStringField;
    dxLayoutControl1Group10: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup;
    procedure NuovoPazienteExecute(Sender: TObject);
    procedure ModificaExecute(Sender: TObject);
    procedure ModificaUpdate(Sender: TObject);
    procedure NuovoPazienteUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AttivaRicercaUpdate(Sender: TObject);
    procedure SelezionaExecute(Sender: TObject);
    procedure PazienteSconosciutoExecute(Sender: TObject);
    procedure QRicercaAfterQBE(Sender: TAstaBaseClientDataSet);
    procedure QRicercaBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure resultgridCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure edCognomePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure QRicercaAfterPopulate(Sender: TObject);
    procedure PrecedentiExecute(Sender: TObject);
    procedure PrecedentiUpdate(Sender: TObject);
    procedure edpkassKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDataNascitaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aStampaSchedaExecute(Sender: TObject);
    procedure aStampaSchedaUpdate(Sender: TObject);
    procedure edNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function ModificaAnagrafica: integer;
  protected
    procedure DoCreate; override;
    function AlmenoUno: boolean; override;
    procedure PrimoCampo; override;
    procedure StartPersonalizza; override;
    procedure StopPersonalizza; override;
    procedure ResetPersonalizza; override;
    procedure RegistraNuovo; override;
  public
    { Public declarations }
     xRec: TTessera;
{
     xASSISTIBILI_FK: variant;
     xCOGNOME: variant;
     xNOME: variant;
     xDATA_NASCITA: variant;
     xCODICE_FISC: variant;
}
     Statolancio: integer;
  end;

var
  FRicAssistito: TFRicAssistito;

  
implementation

uses DMCommon, Windows, Msgdlgs, Variants, Anagrafica, Forms, graphics, sysutils, strutils,dxPrnDlg,
  VisitePrecRAD;


{$R *.DFM}

procedure TFRicAssistito.PrimoCampo;
begin
  if edCognome.CanFocus then
     edCognome.SetFocus;
end;

procedure TFRicAssistito.DoCreate;
begin
  inherited;
  xRec.xassistibili_fk := Null;
  CaricaLista(dxLayoutControl1);

//  if FDMCommon.LeggiPostoLavoroVIEW_NR_ARCHIVIO.AsInteger=0 then
     resultgridNR_ARCHIVIO.Visible := false;

//  Personalizza := gblSuperUser;
  FDMCommon.CaricaLayout(Name,dxLayoutControl1);
  edpkass.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);

end;

procedure TFRicAssistito.RegistraNuovo;
var
  cNascita,cResidenza: boolean;
begin
  FAnagrafica := TFAnagrafica.Create(nil);
  try
     FAnagrafica.Assistibili.OpenNoFetch;
     FAnagrafica.Assistibili.Insert;

     FDMCommon.AssegnaCheckAnagrafica(StatoLancio,cNascita,cResidenza);

     FAnagrafica.CheckNascita := cNascita;
     FAnagrafica.CheckResidenza := cResidenza;

     FAnagrafica.AssistibiliCOGNOME.AsString := xRec.Cognome;
     FAnagrafica.AssistibiliNOME.AsString := xRec.Nome;
     FAnagrafica.AssistibiliDATA_NASCITA.AsDateTime := xRec.DataNascita;
     FAnagrafica.DecodificaCodiceFiscale(xRec);

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

procedure TFRicAssistito.NuovoPazienteExecute(Sender: TObject);
begin
  inherited;

  RegistraNuovo;

end;

procedure TFRicAssistito.ModificaExecute(Sender: TObject);
begin
  inherited;

  ModificaAnagrafica;

end;

function TFRicAssistito.ModificaAnagrafica: integer;
var
  cNascita,cResidenza: boolean;
  pka: integer;
begin

    result := mrCancel;
    pka := QRicercaPKASSISTIBILI.AsInteger;
    if not FDMCommon.LockRecord( pka,gblCodUtente,2 ) then
       exit;

    FAnagrafica := TFAnagrafica.Create(nil);
    try
       FAnagrafica.Assistibili.Parambyname('pkassistibili').AsInteger := QRicercaPKASSISTIBILI.AsInteger;
       FAnagrafica.Assistibili.open;
//       FAnagrafica.Assistibili.Edit;

       FDMCommon.AssegnaCheckAnagrafica(StatoLancio,cNascita,cResidenza);
       FAnagrafica.CheckNascita := cNascita;
       FAnagrafica.CheckResidenza := cResidenza;

       result := FAnagrafica.ShowModal;
       if result=mrOk then
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

procedure TFRicAssistito.ModificaUpdate(Sender: TObject);
begin
  inherited;
  Modifica.Enabled := {(FDMCommon.LeggiPostoLavoroANAG_SCRITTURA.AsInteger=1) and} not QRicerca.IsEmpty and (QRicercaPKASSISTIBILI.AsInteger>0);
end;

procedure TFRicAssistito.NuovoPazienteUpdate(Sender: TObject);
begin
  inherited;
  NuovoPaziente.Enabled := (FDMCommon.LeggiPostoLavoroANAG_SCRITTURA.AsInteger=1) and RicercaEffettuata;
end;

procedure TFRicAssistito.FormShow(Sender: TObject);
begin
  inherited;
	if not VarIsNull(xRec.xassistibili_fk) then
  begin
  	QRicercaPKASSISTIBILI.AsVariant := xRec.xassistibili_fk;
     ApriTutti := true;
     AttivaRicerca.Execute;
  end
  else if not (xRec.Cognome='') and (QRicerca.State in dsEditModes) then
  begin
     // -- per ripristinare sostituzioni (JRT 3613)
     QRicercaCOGNOME.AsString := xRec.Cognome;
     QRicercaNOME.AsString := xRec.Nome;
//     QRicercaDATA_NASCITA.AsVariant := xDATA_NASCITA;
//     ApriTutti := true;
//     AttivaRicerca.Execute;
  end;

end;

procedure TFRicAssistito.AttivaRicercaUpdate(Sender: TObject);
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

procedure TFRicAssistito.SelezionaExecute(Sender: TObject);
begin
{ -- controllo su anagrafiche già caricate...
   if daAccettazione and (QRicercaSAN_IDENT.AsInteger=1) then
   begin
      if ModificaAnagrafica=mrOk then
        ModalResult := mrOk;
   end
   else
{}
     ModalResult := mrOk;

end;

procedure TFRicAssistito.PazienteSconosciutoExecute(Sender: TObject);
begin
  inherited;
//  QRicerca.close;
  QRicerca.Parambyname('sconosciuto').AsString := '# a.pkassistibili = 0 and';
  AzzeraCampi.Enabled := true;
  AzzeraCampi.Execute;
	QRicercaPKASSISTIBILI.AsInteger := 0;
  AttivaRicerca.Execute;
  if not QRicerca.QBEMode then
     ModalResult := mrOk;
end;

procedure TFRicAssistito.QRicercaAfterQBE(Sender: TAstaBaseClientDataSet);
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

procedure TFRicAssistito.QRicercaBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
  Sender.Parambyname('max_record').AsString := Format('# rownum <= %d',[max_record]);
  if not PazienteSconosciuto.Visible then
     Sender.Parambyname('xsconosciuti').AsString := '# not exists(select 1 from anag_sconosciuti sc where a.pkassistibili=sc.assistibili_fk) and '
  else
     Sender.Parambyname('xsconosciuti').AsString := '#';

{ -- TROPPO LENTO !!!
  if FDMCommon.LeggiPostoLavoroVIEW_NR_ARCHIVIO.AsInteger>0 then
  begin
     Sender.Parambyname('xcampo').AsString := '# , AX.nr_archivio';
     Sender.Parambyname('xfrom').AsString := '# ,(SELECT i.assistibili_fk,max(i.nr_archivio) as nr_archivio from impegnative i group by i.assistibili_fk) AX';
     Sender.Parambyname('xwhere').AsString := '# AX.assistibili_fk (+) = a.pkassistibili and';
  end
  else begin
}
     Sender.Parambyname('xcampo').AsString := '# , 0 as nr_archivio';
     Sender.Parambyname('xfrom').AsString := '#';
     Sender.Parambyname('xwhere').AsString := '#';
//  end;

end;

function TFRicAssistito.AlmenoUno: boolean;
begin
  result := inherited AlmenoUno or (QRicerca.Parambyname('sconosciuto').AsString<>'');
end;

procedure TFRicAssistito.resultgridCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARecord: TcxCustomGridRecord;
  AView: TcxGridDBTableView;
begin
  AView := TcxGridDBTableView(Sender);
  ARecord := AViewInfo.GridRecord;
  if ARecord = nil then
    Exit;
{
  if ARecord is TcxGridGroupRow then
    Exit;
}
  if ARecord.Values[AView.GetColumnByFieldName('SAN_IDENT').Index] = 3 then
  begin
    if (not ARecord.Selected) or AViewInfo.Item.Focused then
    begin
      ACanvas.Brush.Color := clRed; // clBlue;
      ACanvas.Font.Color := clYellow;
    end;
    ACanvas.Font.Style := [fsBold];
  end;

end;

procedure TFRicAssistito.edCognomePropertiesValidate(Sender: TObject;
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

procedure TFRicAssistito.QRicercaAfterPopulate(Sender: TObject);
begin
  inherited;
  if QRicerca.recordcount=max_record then
     MsgDlg(RIS_RicercaIncompleta, '', ktInformation, [kbOk], dfFirst);
end;

procedure TFRicAssistito.PrecedentiExecute(Sender: TObject);
begin
  inherited;
  FVisitePrecRAD := TFVisitePrecRAD.Create(nil);
  try
     FVisitePrecRAD.daEsterni := true;
     FVisitePrecRAD.xpka := qRicercaPKASSISTIBILI.AsInteger;
//     FVisitePrecRAD.xpki := AccettazionePKIMPEGNATIVE.AsInteger;
     FVisitePrecRAD.ShowModal;
  finally
     FVisitePrecRAD.Free;
     FVisitePrecRAD := nil;
  end

end;

procedure TFRicAssistito.PrecedentiUpdate(Sender: TObject);
begin
  inherited;
  Precedenti.Enabled := not QRicerca.IsEmpty and not qRicercaPKASSISTIBILI.IsNull;
end;

procedure TFRicAssistito.edpkassKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=VK_RETURN) then
      PostMessage(Handle,SY_DBLCLICK,0,LongInt(AttivaRicerca));

end;

procedure TFRicAssistito.edDataNascitaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key=VK_RETURN) then
      PostMessage(Handle,SY_DBLCLICK,0,LongInt(AttivaRicerca));

end;

procedure TFRicAssistito.aStampaSchedaExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
begin

    if FDMCommon.dxPrintDialog1.Execute then
    begin
{
       dxComponentPrinterArchivio.ReportTitle.Text := 'Nominativo: '+SchedaPazienteCOGNOME.AsString + ' ' + SchedaPazienteNOME.AsString + #13 +
                                                      'Codice: '+SchedaPazientePKASSISTIBILI.AsString+#13+
                                                      'Luogo nascita: '+SchedaPazienteDES_COMNASC.AsString+#13+
                                                      'Data nascita: '+ DateToStr(SchedaPazienteDATA_NASCITA.AsDateTime);
}
       if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
          dxComponentPrinter1.Preview(true,dxComponentPrinterCartella)
       else begin
          AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
          dxComponentPrinter1.Print(false,@AData,dxComponentPrinterCartella);
       end;
    end;

end;

procedure TFRicAssistito.aStampaSchedaUpdate(Sender: TObject);
begin
  inherited;
  aStampaScheda.Enabled := QRicerca.Active and not QRicerca.IsEmpty and (QRicercaPKASSISTIBILI.AsInteger>0);
end;

procedure TFRicAssistito.StartPersonalizza;
begin
  LanciaPersonalizza(dxLayoutControl1,FDMCommon.qFormLayout);
end;

procedure TFRicAssistito.StopPersonalizza;
begin
  FDMCommon.SalvaPersonalizza(Name,dxLayoutControl1,gblcodutente);
end;

procedure TFRicAssistito.ResetPersonalizza;
begin
  if FDMCommon.ResetLayout(Name,dxLayoutControl1) then
     ModalResult := mrCancel;
end;

procedure TFRicAssistito.edNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=VK_RETURN) then
      PostMessage(Handle,SY_DBLCLICK,0,LongInt(AttivaRicerca));
end;

end.
