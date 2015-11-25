unit CercaBarCode;

interface

uses
  BaseRad, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxImageComboBox,
  dxLayoutcxEditAdapters, dxLayoutControl, dxPrnDev, dxPrnDlg, Classes,
  ActnList, AstaDrv2, AstaClientDataset, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, cxDBEdit, CSEZForm, StdCtrls,
  cxButtons, Controls, ExtCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxPSCore, dxPScxCommon,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxNavigator, dxLayoutContainer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPSdxLCLnk, dxPScxSchedulerLnk, dxPSPrVwRibbon, cxGroupBox;

type
  TFCercaBarCode = class(TFBaseRad)
    CercaBarCode: TAstaClientDataSet;
    CercaBarCodeNOME_PAZIENTE: TStringField;
    CercaBarCodeDESCSTATOVISITA: TStringField;
    sCercaBarCode: TDataSource;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextPaziente: TcxDBTextEdit;
    dxLayoutPaziente: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    sStorico: TDataSource;
    cxGridDBEsami: TcxGridDBTableView;
    cxGridEsamiLevel1: TcxGridLevel;
    cxGridEsami: TcxGrid;
    dxLayoutControl1Item7: TdxLayoutItem;
    CercaImpegnativa: TAstaClientDataSet;
    Storico: TAstaClientDataSet;
    StoricoINIZIO: TDateTimeField;
    StoricoUTENTE: TStringField;
    StoricoDESCRIZIONE: TStringField;
    StoricoDIAGNOSTICA: TStringField;
    StoricoDATA_OP: TDateTimeField;
    cxGridDBEsamiUTENTE: TcxGridDBColumn;
    cxGridDBEsamiDESCRIZIONE: TcxGridDBColumn;
    cxGridDBEsamiDIAGNOSTICA: TcxGridDBColumn;
    cxGridDBEsamiDATA_OP: TcxGridDBColumn;
    AltriEsami: TAstaClientDataSet;
    AltriEsamiPKTRIAGE: TIntegerField;
    AltriEsamiNOMEDIAGNOSTICA: TStringField;
    AltriEsamiDESCSTATOVISITA: TStringField;
    AltriEsamiORA_INIZIO: TDateTimeField;
    AltriEsamiDATA_VISITA: TDateTimeField;
    sAltriEsami: TDataSource;
    dxLayoutControlEsamiCollegati: TdxLayoutItem;
    cxGridAltriEsami: TcxGrid;
    cxGridDBAltriEsami: TcxGridDBTableView;
    cxGridDBAltriEsamiPKTRIAGE: TcxGridDBColumn;
    cxGridDBAltriEsamiORA_INIZIO: TcxGridDBColumn;
    cxGridDBAltriEsamiDATA_VISITA: TcxGridDBColumn;
    cxGridDBAltriEsamiNOMEDIAGNOSTICA: TcxGridDBColumn;
    cxGridDBAltriEsamiDESCSTATOVISITA: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxLayoutControl1Group1: TdxLayoutGroup;
    CercaBarCodeORA_INIZIO: TDateTimeField;
    CercaBarCodeDIAGNOSTICA: TStringField;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEsame: TcxDBTextEdit;
    dxLayoutControlEsame: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    CercaBarCodeDATA_REFERTO: TDateTimeField;
    cxGridDBEsamiINIZIO: TcxGridDBColumn;
    CercaBarCodeDATA_ACCETTAZIONE: TDateTimeField;
    CercaImpegnativaDATA_ACCETTAZIONE: TDateTimeField;
    ActionList1: TActionList;
    aStampaStorico: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinterStorico: TdxGridReportLink;
    StoricoREPARTO: TStringField;
    cxGridDBEsamiREPARTO: TcxGridDBColumn;
    AltriEsamiREPARTO: TStringField;
    cxGridDBAltriEsamiREPARTO: TcxGridDBColumn;
    StoricoREPOPERATORE: TStringField;
    cxGridDBEsamiREPOPERATORE: TcxGridDBColumn;
    log_modifiche: TAstaClientDataSet;
    log_modificheCAMPO: TStringField;
    log_modificheVALORE_NEW: TStringField;
    log_modificheVALORE_OLD: TStringField;
    log_modificheDESCCAMPO: TStringField;
    slog_modifiche: TDataSource;
    cxGridEsamiLevel2: TcxGridLevel;
    cxGridDBLogModifiche: TcxGridDBTableView;
    cxGridDBLogModificheSTATOVISITA_FK: TcxGridDBColumn;
    cxGridDBLogModificheCAMPO: TcxGridDBColumn;
    cxGridDBLogModificheVALORE_NEW: TcxGridDBColumn;
    cxGridDBLogModificheVALORE_OLD: TcxGridDBColumn;
    cxGridDBLogModificheTIPO_LOG: TcxGridDBColumn;
    cxGridDBLogModificheDESCCAMPO: TcxGridDBColumn;
    CercaOrderNumber: TAstaClientDataSet;
    CercaOrderNumberPKTRIAGE: TIntegerField;
    CercaOrderNumberASSISTIBILI_FK: TIntegerField;
    CercaOrderNumberDATA_ACCETTAZIONE: TDateTimeField;
    AltriEsamiNUMERO_FIRMA: TIntegerField;
    AltriEsamiLIV_SCR: TIntegerField;
    AltriEsamiMEDICOFIRMA: TStringField;
    cxGridDBAltriEsamiLIV_SCR: TcxGridDBColumn;
    cxGridDBAltriEsamiNUMERO_FIRMA: TcxGridDBColumn;
    cxGridDBAltriEsamiMEDICOFIRMA: TcxGridDBColumn;
    cxGridEsamiLevel3: TcxGridLevel;
    LeggiStatoCD: TAstaClientDataSet;
    LeggiStatoCDOID: TStringField;
    LeggiStatoCDDATA_OP: TDateTimeField;
    LeggiStatoCDSTATO: TIntegerField;
    LeggiStatoCDMSG: TStringField;
    LeggiStatoCDUSER_ID: TIntegerField;
    sLeggiStatoCD: TDataSource;
    cxGridDBStoricoCD: TcxGridDBTableView;
    cxGridDBStoricoCDOID: TcxGridDBColumn;
    cxGridDBStoricoCDDATA_OP: TcxGridDBColumn;
    cxGridDBStoricoCDSTATO: TcxGridDBColumn;
    cxGridDBStoricoCDMSG: TcxGridDBColumn;
    LeggiStatoCDPROGRESS: TIntegerField;
    LeggiStatoCDUTENTE: TStringField;
    cxGridDBStoricoPROGRESS: TcxGridDBColumn;
    cxGridDBStoricoCDUTENTE: TcxGridDBColumn;
    CercaRISStudy: TAstaClientDataSet;
    CercaRISStudyPKTRIAGE: TIntegerField;
    CercaRISStudyIMPEGNATIVE_FK: TIntegerField;
    CercaRISStudySTATOVISITA: TIntegerField;
    CercaRISStudyASSISTIBILI_FK: TIntegerField;
    AltriEsamiRIS_STUDY_EUID: TStringField;
    cxGridDBAltriEsamiRIS_STUDY_EUID: TcxGridDBColumn;
    btEseguito: TcxButton;
    CercaBarCodePKIMPEGNATIVE: TIntegerField;
    CercaBarCodeASSISTIBILI_FK: TIntegerField;
    CercaBarCodePKTRIAGE: TIntegerField;
    CercaBarCodeSTATOVISITA: TIntegerField;
    CercaImpegnativaASSISTIBILI_FK: TIntegerField;
    CercaImpegnativaPKTRIAGE: TIntegerField;
    log_modificheSTATOVISITA_FK: TIntegerField;
    log_modificheTIPO_LOG: TIntegerField;
    StoricoPKSTATOVISITA: TIntegerField;
    StoricoTRIAGE_FK: TIntegerField;
    procedure CercaBarCodeAfterQuery(Sender: TAstaBaseClientDataSet);
    procedure BaseFormDestroy(Sender: TObject);
    procedure aStampaStoricoExecute(Sender: TObject);
    procedure AltriEsamiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure CercaBarCodeBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure StoricoBeforeQuery(Sender: TAstaBaseClientDataSet);
  private
    { Private declarations }
    procedure ApriTutto( pkt: integer; pki: integer );
  protected
    procedure DoShow; override;  
  public
    { Public declarations }
    function CercaSTUDY(const xrisstudy: string): boolean;
   
  end;

  procedure StoricoOperazione(pkey: integer);
  procedure StoricoOperazioneImp(pkey: integer);

var
  FCercaBarCode: TFCercaBarCode;

implementation

uses DMCommon, msgdlgs, SysUtils;

{$R *.dfm}

procedure StoricoOperazione(pkey: integer);
begin
    FCercaBarCode := TFCercaBarCode.Create(nil);
    try
      FCercaBarCode.CercaBarCode.Parambyname('pktriage').AsInteger := pkey;
      FCercaBarCode.CercaBarCode.open;
      if FCercaBarCode.CercaBarCode.IsEmpty then
         MsgDlg(format(RS_EsameNonTrovato,[pkey]), '', ktError, [kbOk], dfFirst)
      else
         FCercaBarCode.ShowModal;
    finally
       FCercaBarCode.Free;
       FCercaBarCode := nil;
    end;
end;

procedure StoricoOperazioneImp(pkey: integer);
begin
    FCercaBarCode := TFCercaBarCode.Create(nil);
    try
      FCercaBarCode.CercaImpegnativa.Parambyname('pkimpegnative').AsInteger := pkey;
      FCercaBarCode.CercaImpegnativa.open;
      if FCercaBarCode.CercaImpegnativa.IsEmpty then
         MsgDlg( format(RS_AccNonTrovata,[pkey]), '', ktError, [kbOk], dfFirst)
      else begin
          FCercaBarCode.CercaBarCode.Parambyname('pktriage').AsInteger := FCercaBarCode.CercaImpegnativaPKTRIAGE.AsInteger;
          FCercaBarCode.CercaBarCode.open;
          if FCercaBarCode.CercaBarCode.IsEmpty then
             MsgDlg(format(RS_EsameNonTrovato,[FCercaBarCode.CercaImpegnativaPKTRIAGE.AsInteger]), '', ktError, [kbOk], dfFirst)
          else
             FCercaBarCode.ShowModal;
      end;
    finally
       FCercaBarCode.Free;
       FCercaBarCode := nil;
    end;
end;

procedure TFCercaBarCode.CercaBarCodeAfterQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;

  ApriTutto(CercaBarCodePKTRIAGE.AsInteger,CercaBarCodePKIMPEGNATIVE.AsInteger);

end;


procedure TFCercaBarCode.BaseFormDestroy(Sender: TObject);
begin
  inherited;
  FCercaBarCode := nil;
end;

procedure TFCercaBarCode.aStampaStoricoExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
begin

  if FDMCommon.dxPrintDialog1.Execute then
  begin
     dxComponentPrinterStorico.ReportTitle.Text := dxLayoutPaziente.Caption+': '+cxDBTextPaziente.Text+#13+#10+
                                                   dxLayoutControlEsame.Caption+': '+cxDBTextEsame.Text;
     if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
        dxComponentPrinter1.Preview(true,dxComponentPrinterStorico)
     else begin
        AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
        dxComponentPrinter1.Print(false,@AData,dxComponentPrinterStorico);
     end;
  end;

end;

procedure TFCercaBarCode.DoShow;
begin
  inherited;
  cxGridDBAltriEsamiLIV_SCR.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=2);
  cxGridDBAltriEsamiNUMERO_FIRMA.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=2);
  cxGridDBEsamiDIAGNOSTICA.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  dxLayoutControlEsamiCollegati.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
  cxGridEsamiLevel3.Visible := not (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger=5);
end;

function TFCercaBarCode.CercaSTUDY(const xrisstudy: string): boolean;
begin
    CercaRISStudy.Parambyname('ris_study_euid').AsString := FDMCommon.syIntStr(xrisstudy);
    CercaRISStudy.open;
    if CercaRISStudy.IsEmpty then
    begin
       MsgDlg(format(RS_RISSTUDYNonTrovato,[FDMCommon.syIntStr(xrisstudy)]), '', ktError, [kbOk], dfFirst);
       result := false;
    end
    else begin
       CercaBarCode.Parambyname('pktriage').AsInteger := CercaRISStudyPKTRIAGE.AsInteger;
       CercaBarCode.open;
//       ApriTutto(CercaRISStudyPKTRIAGE.AsInteger,CercaRISStudyIMPEGNATIVE_FK.AsInteger);
       result := true;
    end;
end;

procedure TFCercaBarCode.ApriTutto( pkt: integer; pki: integer );
begin
  Storico.Parambyname('triage_fk').AsInteger := pkt;
  Storico.open;

  AltriEsami.Parambyname('pkimpegnative').AsInteger := pki;
  AltriEsami.Parambyname('pktriage').AsInteger := pkt;
  AltriEsami.open;

  log_modifiche.ParamByName('triage_fk').AsInteger := pkt;
  log_modifiche.open;

	cxGridDBEsami.ViewData.Collapse(False);

  LeggiStatoCD.Parambyname('pktriage').AsInteger := pkt;
  LeggiStatoCD.open;
end;

procedure TFCercaBarCode.AltriEsamiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFCercaBarCode.CercaBarCodeBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFCercaBarCode.StoricoBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

end.
