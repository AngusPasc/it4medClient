unit RefMedicorner;

interface

uses
  BaseRad, SBMIME, IInterface, gtViewerTypes, {}cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinsDefaultPainters,
  cxControls, cxContainer, cxEdit, dxSkinscxPCPainter, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxHyperLinkEdit, dxLayoutContainer, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxSkinsdxBarPainter, gtPDFClasses, gtCstPDFDoc,
  gtExPDFDoc, gtExProPDFDoc, gtPDFDoc, AstaDrv2, UDXPopup, dxBar, Dialogs,
  ExtCtrls, AstaClientDataset, Classes, ActnList, gtScrollingPanel,
  gtPDFViewer, Buttons, cxDBEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxMemo, dxLayoutControl, cxCheckBox, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDropDownEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  cxLabel, CSEZForm, StdCtrls, cxButtons, Controls, gtPDFPrinter,
  cxGroupBox;

{.$DEFINE PRINTWITHSHELL}

{$I syVer.inc}

const
  ZoomIncrement = 25;

type

  TprnOpzioni = (tprnStampa,tprnStampaBatch,tprnDaCreare,tprnStampaProvvisorio,tprnStampaProvvisorioBatch,tprnStampaDefinitivo,tprnStampaDefinitivoBatch);
  TprnScelte  = set of TprnOpzioni;
  TvedoDiagnosi = (tvdNo,tvdDisplay,tvdEdit);

  TFRefMedicorner = class(TFBaseRad)
    btProvvisorio: TcxButton;
    ActionList1: TActionList;
    aStampa: TAction;
    btStampa: TcxButton;
    aFirmato: TAction;
    aProvvisorio: TAction;
    cxCopie: TcxSpinEdit;
    lblNumero: TcxLabel;
    cxStampe: TcxComboBox;
    lblStampante: TcxLabel;
    qPrintReport: TAstaClientDataSet;
    qPrintReportREFERTO: TBlobField;
    GetReportDataSet: TAstaClientDataSet;
    TimerStampa: TTimer;
    AggiornaStato: TAstaClientDataSet;
    qPrintReportTRIAGE_FK: TIntegerField;
    sqPrintReport: TDataSource;
    aUscita: TAction;
    qPrintReportPKREFERTI: TIntegerField;
    aLoadFromFile: TAction;
    OpenDialog1: TOpenDialog;
    Diagnosi: TAstaClientDataSet;
    sDiagnosi: TDataSource;
    DiagnosiLOCALIZZ: TStringField;
    DiagnosiPATOLOG: TStringField;
    cxDBCheckExtra: TcxDBCheckBox;
    dxBarManager1: TdxBarManager;
    dxSelectAll: TdxBarButton;
    xxFReparti: TdxBarButton;
    dxBarPopReferto: TdxBarPopupMenu;
    dxPopReferto: TdxPopupMenu;
    dxPopCDA: TdxPopupMenu;
    dxBarCDASelez: TdxBarButton;
    dxBarCDACopia: TdxBarButton;
    GetCDA2: TAstaClientDataSet;
    ElencoReferti: TAstaDataSet;
    sElencoReferti: TDataSource;
    ElencoRefertiDESCR_REFERTO: TStringField;
    ElencoRefertiPKREFERTI: TIntegerField;
    ElencoRefertiDATA_REFERTO: TDateTimeField;
    qPrintTestata: TAstaClientDataSet;
    qPrintTestataSTATOVISITA: TIntegerField;
    qPrintTestataCOD_MED_FIRMA: TIntegerField;
    qPrintTestataREPARTI_FK: TIntegerField;
    sqPrintTestata: TDataSource;
    qPrintReportDATA_REFERTO: TDateTimeField;
    dxBarButton1: TdxBarButton;
    GetAddendumFK: TAstaClientDataSet;
    qPrintTestataPKTRIAGE: TIntegerField;
    DiagnosiTRIAGE_FK: TIntegerField;
    DiagnosiACR_ANATOMICAL: TStringField;
    DiagnosiACR_PATOLOGICAL: TStringField;
    AttivitaExtra: TAstaClientDataSet;
    AttivitaExtraCOD_MED_FIRMA: TIntegerField;
    AttivitaExtraATTIVITA_EXTRA: TIntegerField;
    AttivitaExtraPKIMPEGNATIVE: TIntegerField;
    AttivitaExtraUSER_ID: TIntegerField;
    AttivitaExtraPKTRIAGE: TIntegerField;
    sAttivitaExtra: TDataSource;
    aNuovaDiagnosi: TAction;
    DiagnosiCOD_MED_FIRMA: TIntegerField;
    ElencoRefertiIMPEGNATIVA: TIntegerField;
    qPrintReportSTATOVISITA: TIntegerField;
    ElencoRefertiSTATOVISITA: TIntegerField;
    aSelezionaTutto: TAction;
    aCopiaInMemoria: TAction;
    qPrintReportDIAGNOSI: TBlobField;
    dxBarPopACR: TdxBarPopupMenu;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    aStampaProvvisorio: TAction;
    btStampaProvv: TcxButton;
    gtPDFDocument: TgtPDFDocument;
    Panel2: TPanel;
    BtnFirstPage: TSpeedButton;
    BtnPriorPage: TSpeedButton;
    BtnNextPage: TSpeedButton;
    BtnLastPage: TSpeedButton;
    BtnFitPage: TSpeedButton;
    BtnActualSize: TSpeedButton;
    btnFitWidth: TSpeedButton;
    BtnZoomOut: TSpeedButton;
    BtnZoomIn: TSpeedButton;
    GetPDF: TAstaClientDataSet;
    qPrintReportFIRMATO: TIntegerField;
    sCDMaster: TDataSource;
    SoloBookmark: TcxCheckBox;
    qPrintReportSTATOREFERTO_FK: TIntegerField;
    gtPDFViewer: TgtPDFViewer;
    qPrintTestataNOTE_TECNICO: TStringField;
    qPrintTestataQUESITO_DIAGN: TStringField;
    qPrintReportTIPO_REFERTO_FK: TIntegerField;
    qPrintReportREPARTI_FK: TIntegerField;
    qPrintReportDESCSTATOREFERTO: TStringField;
    qPrintReportNOME_DOCUMENTO: TStringField;
    qPrintTestataPKIMPEGNATIVE: TIntegerField;
    btDefinitivo: TcxButton;
    aDefinitivo: TAction;
    btStampaDefinitivo: TcxButton;
    aStampaDefinitivo: TAction;
    qPrintTestataPROVENIENZA: TStringField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    qPrintTestataANAMNESI: TStringField;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    RefxTriage: TAstaClientDataSet;
    RefxTriageTRIAGE_FK: TIntegerField;
    GetAddendumFKPRECREF: TIntegerField;
    qPrintReportIMPEGNATIVA: TIntegerField;
    aCancellaDiagnosi: TAction;
    aModificaDiagnosi: TAction;
    dxBarButton4: TdxBarButton;
    gtPDFPrinter: TgtPDFPrinter;
    procedure aStampaExecute(Sender: TObject);
    procedure aFirmatoExecute(Sender: TObject);
    procedure aProvvisorioExecute(Sender: TObject);
    procedure BaseFormDestroy(Sender: TObject);
    procedure aStampaUpdate(Sender: TObject);
    procedure TimerStampaTimer(Sender: TObject);
    procedure aUscitaExecute(Sender: TObject);
    procedure aLoadFromFileExecute(Sender: TObject);
    procedure aLoadFromFileUpdate(Sender: TObject);
    procedure aProvvisorioUpdate(Sender: TObject);
    procedure aFirmatoUpdate(Sender: TObject);
    procedure sElencoRefertiDataChange(Sender: TObject; Field: TField);
    procedure DiagnosiNewRecord(DataSet: TDataSet);
    procedure AttivitaExtraBeforePost(DataSet: TDataSet);
    procedure cxGrid1DBTableView1NavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure aNuovaDiagnosiExecute(Sender: TObject);
    procedure aCopiaInMemoriaExecute(Sender: TObject);
    procedure aStampaProvvisorioExecute(Sender: TObject);
    procedure aStampaProvvisorioUpdate(Sender: TObject);
    procedure BtnActualSizeClick(Sender: TObject);
    procedure btnFitWidthClick(Sender: TObject);
    procedure BtnFitPageClick(Sender: TObject);
    procedure BtnFirstPageClick(Sender: TObject);
    procedure BtnPriorPageClick(Sender: TObject);
    procedure BtnNextPageClick(Sender: TObject);
    procedure BtnLastPageClick(Sender: TObject);
    procedure BtnZoomInClick(Sender: TObject);
    procedure BtnZoomOutClick(Sender: TObject);
    procedure qPrintReportBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxStampePropertiesCloseUp(Sender: TObject);
    procedure aSelezionaTuttoExecute(Sender: TObject);
    procedure cxPDFShow(Sender: TObject);
    procedure gtPDFViewerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gtPDFViewerPageChange(Sender: TgtPDFViewer;
      const CurrentPageIndex: TPageIndex);
    procedure aDefinitivoExecute(Sender: TObject);
    procedure aStampaDefinitivoExecute(Sender: TObject);
    procedure aStampaDefinitivoUpdate(Sender: TObject);
    procedure aCancellaDiagnosiExecute(Sender: TObject);
    procedure aCancellaDiagnosiUpdate(Sender: TObject);
    procedure aModificaDiagnosiExecute(Sender: TObject);
    procedure aModificaDiagnosiUpdate(Sender: TObject);
  private
    { Private declarations }
    FActiveRef: string;
    refrCarica: boolean;
    FStampante: string;
    xpktriage: integer;
    xpkimpegnative: integer;
    xfunz: integer;
    xescludi: TbtnEscludi;
    xProvenienza: string;
    edZoom: string;
    fMsg: TElMessage;
    FMyStream: TMemoryStream;
    FOutStream: TMemoryStream;
    FTitolo: string;
    FInStampa: boolean;
    FStampaBatch: boolean;
    FTipoReferto: integer;
    FTipoStampa: integer;
    FxCreaCD: boolean;
    FCDAutomatico: Boolean;
    FxCopie: integer;
    procedure SetStampante(Value: string);
    procedure SetMyStream(Value: TMemoryStream);
    procedure ProcStampa(tipo: integer);
    procedure UpdateButton;
    procedure UpdateStatusBar;
    procedure GeneraReferto( xpkreferti: Integer; NomeDocumento: string; xStatoReferto: integer );
    procedure SetxCopie(Value: integer);
    procedure SetActiveRef(Value: string);
    procedure PrintWithShell( doc: TgtPDFDocument );
  protected
    procedure DoCreate; override;
    procedure DoShow; override;
    procedure StartPersonalizza; override;
    procedure StopPersonalizza; override;
    procedure ResetPersonalizza; override;

    property xcopie: integer read Fxcopie write SetxCopie;
    property ActiveRef: string read FActiveRef write SetActiveRef;
  public
    { Public declarations }
    dacreare: boolean;
    daReparti: boolean;
    function SincronizzaReferto: boolean;
    procedure KeyPress(var Key: Char); override;
    property MyStream: TMemoryStream read FMyStream write SetMyStream;
    property OutStream: TMemoryStream read FOutStream write FOutStream;
    property Titolo: string read FTitolo write FTitolo;
    property InStampa: boolean read FInStampa write FInStampa;
    property StampaBatch: boolean read FStampaBatch write FStampaBatch;
    property TipoReferto: integer read FTipoReferto write FTipoReferto;
    property CDAutomatico: Boolean read FCDAutomatico write FCDAutomatico;
    property xCreaCD: boolean read FxCreaCD write FxCreaCD;
    property Stampante: string read FStampante write SetStampante;
  end;

  function VisualizzaReferto(const SiteName: string; pk: integer; const xTitolo: string; escludi: TbtnEscludi = []; stampa: TprnScelte = []; pdiagnosi: TvedoDiagnosi = tvdNo): integer;
  function SalvaReferto(pStatoRef: TpStatoReferto; pkref: integer; const xTitolo: string; Provenienza: string; escludi: TbtnEscludi = []; creaCD: boolean = false; refout: TStream {TStringStream} = nil): integer;
  function TipoRef(provenienza: string; escludi: TbtnEscludi = []): integer;
  function TipoMod(provenienza: string; escludi: TbtnEscludi = []): integer;

var
  FRefMedicorner: TFRefMedicorner;

implementation

uses DMCommon, Forms, Windows, MsgDlgs, IIConsts, sysutils, variants, PrintFromShell,
{$IFNDEF MEDICORNER}
     FirmaSISS,
     FirmaSISSWay,
     CreaCDMicroprint,
     ACRDiag,
{$ENDIF}
     Printers,
     Clipbrd, Math, dxPrnDev,
     ConfermaPswdRep, PDIGDIPlus;

{$R *.dfm}

function TipoRef(provenienza: string; escludi: TbtnEscludi = []): integer;
var
  xnr: integer;
begin

     xnr := TipoMod(provenienza,escludi);

     if not xnr in [70..75] then
        raise Exception.Create(format('tipo referto errato (%d)',[xnr]))
     else
        result := gblMod[xnr,3];

end;

function TipoMod(provenienza: string; escludi: TbtnEscludi = []): integer;
begin
     if (tbtconsulenza in escludi) then
        result := 74
     else if Provenienza='E' then
        result := 70
     else if Provenienza='I' then
        result := 71
     else if Provenienza='P' then
        result := 72
     else if Provenienza='X' then
        result := 73
     else
        result := -1;

end;

function SalvaReferto(pStatoRef: TpStatoReferto; pkref: integer; const xTitolo: string; Provenienza: string; escludi: TbtnEscludi; creaCD: boolean; refout: TStream {TStringStream}): integer;
var
  ErrStr: string;
  x: Integer;
  res: TpResultFirma;
  xfirma: boolean;
  xnr: integer;
  xMyStream: TMemoryStream;
  xidenrefer: Integer;
  xStatoRefRich: Integer;
begin

  xMyStream := nil;
  result := mrCancel;
  FRefMedicorner := TFRefMedicorner.Create(nil);

  FRefMedicorner.xescludi := escludi;
  FRefMedicorner.xProvenienza := Provenienza;
  FRefMedicorner.xCreaCD := creaCD;

  if not (tbtaddendum in escludi)
     {and not (tbtFirmaBlocco in escludi)} then
  begin
    FDMCommon.qReferto.Parambyname('pkreferti').AsInteger := pkref;
    FDMCommon.qReferto.syRefresh;
    FDMCommon.qReferto.Edit;
  end;

  FRefMedicorner.xpktriage := FDMCommon.qRefertoTRIAGE_FK.AsInteger;
  FRefMedicorner.xpkimpegnative := FDMCommon.qRefertoIMPEGNATIVE_FK.AsInteger;
  FRefMedicorner.qPrintTestata.Parambyname('PKTRIAGE').AsInteger := FDMCommon.qRefertoTRIAGE_FK.AsInteger;
  FRefMedicorner.qPrintTestata.open;
  xidenrefer := FRefMedicorner.qPrintTestataCOD_MED_FIRMA.AsInteger;

  try

     with FRefMedicorner do
     begin

       xnr := TipoMod(Provenienza,escludi);

       if xnr=-1 then
          raise Exception.Create(format(RAD_RefertoNonDefinito,['']));

       FRefMedicorner.xfunz  := gblMod[xnr,1];  // pk modello stampa
       FRefMedicorner.xcopie := gblMod[xnr,2];  // nr. copie
       TipoReferto := gblMod[xnr,3];  // tipo referto
       CDAutomatico := (gblMod[xnr,4]=1);  // creazione automatica CD

       if xfunz=-1 then
          raise Exception.Create(format(RAD_RefertoNonDefinito,[gblDescMod[xnr]]));

       case TipoReferto of
       4,5: ActiveRef := 'dxLayoutPDFViewer';
       else
          raise Exception.Create(format(RAD_TipoRefertoNonDefinito,[TipoReferto]));
       end;

       aDefinitivo.Visible := (FDMCommon.LeggiPostoLavoroPROVV_DEFINITIVO.AsInteger=1) and not (tbtDefinitivo in escludi);
       aStampaDefinitivo.Visible := (FDMCommon.LeggiPostoLavoroPROVV_DEFINITIVO.AsInteger=1) and not (tbtStampaDefinitivo in escludi);

       if aStampaDefinitivo.Visible and not aDefinitivo.Visible then
       begin
          aStampaDefinitivo.Caption := RS_StampaReferto;
          aStampaDefinitivo.Hint := RS_StampaRefertoHint;
       end;

       if (tbtfirmato in escludi) {and (tbtGiaProvvisorio in escludi)} then
       begin
          aFirmato.Enabled := false;
          aFirmato.Visible := false;
          aStampa.Caption := RS_StampaReferto;
          aStampa.Hint := RS_StampaRefertoHint;
       end;
       if daReparti then
       begin
          aProvvisorio.Enabled := false;
          aProvvisorio.Visible := false;
          aStampaProvvisorio.Enabled := false;
          aStampaProvvisorio.Visible := false;
       end
       else if (tbtprovvisorio in escludi) then
       begin
          aProvvisorio.Enabled := false;
          aProvvisorio.Visible := false;
          aStampaProvvisorio.Enabled := false;
          aStampaProvvisorio.Visible := false;
       end;
       if (tbtannulla in escludi) then
       begin
          btAnnulla.Enabled := false;
          btAnnulla.Visible := false;
       end;
       if (tbtstampa in escludi) then
       begin
          aStampa.Enabled := false;
          aStampa.Visible := false;
       end;
     end;

     // -- rigenero il referto se non viene visualizzato
     xStatoRefRich := GetStatoReferto(pStatoRef);
     FDMCommon.TabStatoReferto.Locate('STATOREFERTO',xStatoRefRich,[]);
     if FRefMedicorner.daReparti or
        (not FDMCommon.qRefertoSOLO_FIRMA.IsNull and (FDMCommon.qRefertoSOLO_FIRMA.AsInteger=1)) or
        (FDMCommon.TabStatoRefertoRIGENERA.AsInteger=0) then
     begin
        xMyStream := TMemoryStream.Create;
        FDMCommon.qRefertoREFERTO.SaveToStream(xMyStream);
        FRefMedicorner.MyStream := xMyStream;
     end
     else
        FRefMedicorner.GeneraReferto(FDMCommon.qRefertoPKREFERTI.AsInteger,FDMCommon.qRefertoNOME_DOCUMENTO.AsString,xStatoRefRich);

     if (not (tbtFirmaBlocco in escludi) and not (tbtVisualizza in escludi)) or not Assigned(refout) then
     begin

           FRefMedicorner.Titolo := xTitolo;
           FRefMedicorner.cxCopie.Value := FRefMedicorner.xcopie;

           if not ((tbtVisualizza in escludi) or (tbtFirmaBlocco in escludi)) then
              result := FRefMedicorner.ShowModal
           else
              result := mrOk;

           if FDMCommon.LeggiPostoLavoroCHK_FIRMA_PROVV.AsInteger=1 then
              xfirma := (result in [mrOk,mrIgnore,mrRetry,mrAbort]) and (FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger>0) and not gblSpecializ
           else
              xfirma := (result in [mrOk,mrIgnore]) and (FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger>0) and not gblSpecializ;

           if xfirma and (FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger in [1,2]) then
           begin
             if FDMCommon.PassPhrase='' then
             begin
               MsgDlg(RAD_MancaPIN,'', ktWarning, [kbOK]);
               result := mrCancel;
             end;
           end;

           if (result in [mrOk,mrIgnore,mrRetry,mrAbort,mrYes,mrNoToAll]) then
           begin

             if (tbtGiaProvvisorio in escludi) then
             begin
                case result of
                mrOk:      result := mrRetry;
                mrIgnore:  result := mrAbort;
                end;
             end;

             case result of
             mrOk:      if Provenienza='X' then
                           FDMCommon.qRefertoSTATOVISITA.AsInteger := 171   // estemporaneo
                        else
                           FDMCommon.qRefertoSTATOVISITA.AsInteger := 170;  // firmato

             mrRetry:     FDMCommon.qRefertoSTATOVISITA.AsInteger := 160;  // firmato provvisorio
             mrAbort:     FDMCommon.qRefertoSTATOVISITA.AsInteger := 161;  // stampato provvisorio

             mrIgnore:  if Provenienza='X' then
                           FDMCommon.qRefertoSTATOVISITA.AsInteger := 171  // estemporaneo
                        else
                           FDMCommon.qRefertoSTATOVISITA.AsInteger := 180;  // stampato
             mrYes:     FDMCommon.qRefertoSTATOVISITA.AsInteger := 165;  // definitivo
             mrNoToAll: FDMCommon.qRefertoSTATOVISITA.AsInteger := 166;  // stampato definitivo
             end;
             FDMCommon.qRefertoUSER_ID.AsInteger := gblCodUtente;

             if (Result in [mrOk,mrIgnore]) and (Provenienza<>'X')
                and (FDMCommon.qRefertoSTATOREFERTO_FK.AsInteger in [92,97,98,99]) then
             begin
               case FDMCommon.qRefertoSTATOREFERTO_FK.AsInteger of
               92,97: FDMCommon.qRefertoSTATOREFERTO_FK.AsInteger := 90;
               98: FDMCommon.qRefertoSTATOREFERTO_FK.AsInteger := 93;
               99: FDMCommon.qRefertoSTATOREFERTO_FK.AsInteger := 96;
               end;
             end
             else
             if (tbtaddendum in escludi) then
             begin
                if Result in [mrYes,mrNoToAll] then
                   FDMCommon.qRefertoSTATOREFERTO_FK.AsInteger := 98
                else
                   FDMCommon.qRefertoSTATOREFERTO_FK.AsInteger := 93;
             end
             else if (tbtconsulenza in escludi) then
                FDMCommon.qRefertoSTATOREFERTO_FK.AsInteger := 95
             else if (tbtannullativo in escludi) then
             begin
                if Result in [mrYes,mrNoToAll] then
                   FDMCommon.qRefertoSTATOREFERTO_FK.AsInteger := 99
                else
                   FDMCommon.qRefertoSTATOREFERTO_FK.AsInteger := 96;
             end
             else if (FDMCommon.qRefertoSTATOVISITA.AsInteger in [160,161]) then
                FDMCommon.qRefertoSTATOREFERTO_FK.AsInteger := 92
             else if (FDMCommon.qRefertoSTATOVISITA.AsInteger in [165,166]) then
                FDMCommon.qRefertoSTATOREFERTO_FK.AsInteger := 97
             else if Provenienza='X' then
                FDMCommon.qRefertoSTATOREFERTO_FK.AsInteger := 94
             else
                FDMCommon.qRefertoSTATOREFERTO_FK.AsInteger := 90;

//             if (FDMCommon.qRefertoSTATOVISITA.AsInteger in [165,166]) then
//                FDMCommon.qRefertoSOLO_FIRMA.AsInteger := 1;

             if not ((tbtVisualizza in escludi) or (tbtFirmaBlocco in escludi)) then
             begin
                if FDMCommon.TabStatoReferto.Locate('STATOREFERTO',FDMCommon.qRefertoSTATOREFERTO_FK.AsInteger,[]) and
                   (FDMCommon.TabStatoRefertoRIGENERA.AsInteger=1) then
                       FRefMedicorner.GeneraReferto(FDMCommon.qRefertoPKREFERTI.AsInteger,FDMCommon.qRefertoNOME_DOCUMENTO.AsString,FDMCommon.qRefertoSTATOREFERTO_FK.AsInteger);
             end;
{eliminata la generazione referto: viene già fatta sempre prima della visualizzazione (JRT 3551)
             if (result in [mrRetry,mrAbort]) and not (tbGiaProvvisorio in escludi) then
             begin
                escludi := escludi + [tbGiaProvvisorio];
                FRefMedicorner.GeneraReferto(FDMCommon.qRefertoPKREFERTI.AsInteger);
             end;
{}
             if xfirma then

             case FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger of
             // Firma gestita da SyncroMed
             1,2:
               begin
                 res := FDMCommon.FirmaDig.Firma(FDMCommon.PassPhrase,
                                                 gblcodfisc,  // gblNomeUtente,
                                                 FRefMedicorner.MyStream,
                                                 FRefMedicorner.OutStream,
                                                 ErrStr);
                 { cancella PIN per gestione non cache }
                 if (FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger=2) then
                     FDMCommon.PassPhrase := '';

                 if res<>tprOk then
                 begin
                     FDMCommon.FirmaDig.ChiudiSessione;
                     FDMCommon.PassPhrase := '';
                 end
                 else
                     PostMessage(Application.MainForm.Handle,SY_ATTIVATIMERCARTA,0,0);
               end;
             // Firma tramite SISS
             3,4:
               begin
{$IFNDEF MEDICORNER}
                 SetLength(referti,1);
//                 referti[0].idReferto := FDMCommon.qRefertoTRIAGE_FK.AsInteger;
                 referti[0].idReferto := FDMCommon.qRefertoPKREFERTI.AsInteger;
                 referti[0].refertoOriginale := Copy(TStringStream(FRefMedicorner.MyStream).DataString,1,TStringStream(FRefMedicorner.MyStream).Size);
                 referti[0].UriReferto := FDMCommon.qRefertoURIREF.AsString;

                 res := FirmaLottoConSISS((FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger=4),
                                           gblcodfisc,
                                           referti,
                                           escludi,
                                           ErrStr);

                 if res=tprOk then
                 begin
                      TStringStream(FRefMedicorner.OutStream).Seek(0, soFromBeginning);
                      TStringStream(FRefMedicorner.OutStream).WriteString( referti[0].refertoFirmato );

                      FDMCommon.qRefertoXSLTREF.AsString := referti[0].XSLTREF;
                      FDMCommon.qRefertoHASHREF.AsString := referti[0].HASHREF;
                      FDMCommon.qRefertoCONTREF.AsString := referti[0].CONTREF;
                      FDMCommon.qRefertoHASHDAO.AsString := referti[0].HASHDAO;
                      FDMCommon.qRefertoALGORITMOHASH.AsString := referti[0].ALGORITMOHASH;
                      FDMCommon.qRefertoSIZEDOCUMENTO.AsString := referti[0].SIZEDOCUMENTO;
                      FDMCommon.qRefertoDATA_REFERTO.AsDateTime := referti[0].DATA_REFERTO;
                 end;
{$ENDIF}
               end;

             // Firma tramite SISS-Way
             5,6:
               begin
{$IFNDEF MEDICORNER}
                 SetLength(referti,1);
                 referti[0].idReferto := FDMCommon.qRefertoTRIAGE_FK.AsInteger;
                 referti[0].refertoOriginale := Copy(TStringStream(FRefMedicorner.MyStream).DataString,1,TStringStream(FRefMedicorner.MyStream).Size);
                 referti[0].UriReferto := FDMCommon.qRefertoURIREF.AsString;
                 referti[0].idGuid := FDMCommon.qRefertoGUIDREF.AsString;

                 res := FirmaLottoConSISSWay((FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger=6),
                                              gblcodfisc,
                                              referti,
                                              escludi,
                                              ErrStr);

                 if res=tprOk then
                 begin
                      TStringStream(FRefMedicorner.OutStream).Seek(0, soFromBeginning);
                      TStringStream(FRefMedicorner.OutStream).WriteString( referti[0].refertoFirmato );

                      FDMCommon.qRefertoXSLTREF.AsString := referti[0].XSLTREF;
                      FDMCommon.qRefertoHASHREF.AsString := referti[0].HASHREF;
                      FDMCommon.qRefertoCONTREF.AsString := referti[0].CONTREF;
                      FDMCommon.qRefertoDATA_REFERTO.AsDateTime := referti[0].DATA_REFERTO;
                      FDMCommon.qRefertoURIREF.AsString := referti[0].UriReferto;
                      FDMCommon.qRefertoGUIDREF.AsString := referti[0].idGuid;
                 end;
{$ENDIF}
               end;

             else
               res := tprOk;
             end
{JRT 5616}
             else if FDMCommon.LeggiPostoLavoroCHK_IDEN_REFER.AsInteger=1 then
             begin
                FConfermaPswdRep := TFConfermaPswdRep.Create(nil);
                try
                  if FConfermaPswdRep.ShowModal=mrOk then
                  begin
                     if FConfermaPswdRep.user_id<>gblCodUtente then
                     begin
                        ErrStr := RS_UserNoLogin;
                        res := tprErrore;
                     end
                     else if FConfermaPswdRep.IsMedico then
                     begin
                        xidenrefer := FConfermaPswdRep.user_id;
                        res := tprOk;
                     end
                     else begin
                        ErrStr := RS_UtenteNonAbilitatoFirmare;
                        res := tprErrore;
                     end;
                  end
                  else begin
                        ErrStr := RS_Gene_Msg_OTer;
                        res := tprErrore;
                  end;
                finally
                  FConfermaPswdRep.Free;
                  FConfermaPswdRep := nil;
                end;
             end
{}
             else
               res := tprOk;

             if res=tprErrore then
             begin
(*
                {
                  Kryl manda in crash madExcept se viene sollevato un Raise
                }
                if (FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger in [1,2]) and
                  (FDMCommon.LeggiPostoLavoroTIPO_FIRMA.ASInteger = 1) then
                  MsgDlg( ErrStr, '', ktError, [kbOk], dfFirst)
                else
                  Raise Exception.Create(ErrStr);
*)
             // -- Gli errori in fase di firma vengono solo visualizzati
                MsgDlg( ErrStr, '', ktError, [kbOk], dfFirst);
                Result := mrCancel;
             end
             else if res=tprOk then
             begin

                   FDMCommon.qRefertoTIPO_REFERTO_FK.AsInteger := FRefMedicorner.TipoReferto;
                   if xfirma then
                      FDMCommon.qRefertoFIRMATO.AsInteger := 1
                   else
                      FDMCommon.qRefertoFIRMATO.AsInteger := 0;

                   if xfirma then
                      FDMCommon.qRefertoREFERTO.LoadFromStream(FRefMedicorner.OutStream)
                   else
                      FDMCommon.qRefertoREFERTO.LoadFromStream(FRefMedicorner.MyStream);
                   FDMCommon.qRefertoCOD_MED_FIRMA.AsInteger := xidenrefer;

                   FDMCommon.qReferto.Post;

                   if (tbtAddendum in escludi) then
                   begin
                     FRefMedicorner.AggiornaStato.Parambyname('user_id').AsInteger := gblCodUtente;
                     FRefMedicorner.AggiornaStato.Parambyname('pktriage').AsInteger := FDMCommon.qRefertoTRIAGE_FK.AsInteger;
                     FRefMedicorner.AggiornaStato.Parambyname('oldstato').AsInteger := -1;
                     FRefMedicorner.AggiornaStato.Parambyname('statovisita').AsInteger := 903;
                     FRefMedicorner.AggiornaStato.ExecCommit;
                   end;

                 // -- uscita con richiesta stampa...
                 if (result in [mrIgnore,mrAbort,mrNoToAll]) then
                 begin

                    case result of
                    mrIgnore: FRefMedicorner.FTipoStampa := 1;
                    mrAbort: FRefMedicorner.FTipoStampa := 2;
                    mrNoToAll: FRefMedicorner.FTipoStampa := 3;
                    end;

                    if FRefMedicorner.Stampante<>'' then
                    begin
                       x := Printer.Printers.IndexOf(FRefMedicorner.Stampante);
                       if (x>=0) and (Printer.PrinterIndex<>x) then
                       begin
                          if (FDMCommon.LeggiPostoLavoroSET_DEFAULT_PRINTER.AsInteger=2) then
                              FDMCommon.SetPrinter(FRefMedicorner.Stampante);
                          Printer.PrinterIndex := x;
                       end;
                    end;

                    case FRefMedicorner.TipoReferto of
                   4,5:
                      begin
                        try
//                        for x:=1 to FRefMedicorner.cxCopie.Value do
                        begin
//                           FRefMedicorner.gtPDFViewer.PrintDoc(false);
                             if FRefMedicorner.Stampante<>'' then
                                FRefMedicorner.gtPDFPrinter.SelectPrinterByName(FRefMedicorner.Stampante);
                             FRefMedicorner.gtPDFPrinter.PrinterCapabilities.PaperSize := 9;  // -- A4
                             FRefMedicorner.gtPDFPrinter.Scaling := psFitPage;
                             FRefMedicorner.gtPDFPrinter.Copies := FRefMedicorner.cxCopie.Value;
                             FRefMedicorner.gtPDFPrinter.PrintDoc;
                        end;
                        except
                          on E:EPrinter do
                             MsgDlg(Format(RAD_ErroreStampa,[E.Message]),'', ktError, [kbOK]);
                          on E:EGPLoadError do
                             MsgDlg(Format(RAD_ErrorePDF,[E.Message]),'', ktError, [kbOK]);
                          else
                             raise;
                        end;
                      end;
                    end;
                  end;

                 if (FRefMedicorner.Diagnosi.State in dsEditModes) then
                     FRefMedicorner.Diagnosi.Post;
                 if (FRefMedicorner.AttivitaExtra.State in dsEditModes) then
                     FRefMedicorner.AttivitaExtra.Post;
             end
             else
                Result := mrCancel;

             if Assigned(FRefMedicorner.OutStream) then
                FRefMedicorner.OutStream.Free;

          end;
     end
     else if Assigned(refout) then
     begin

          refout.CopyFrom(FRefMedicorner.MyStream,0);

     end;

    finally
       if not ((tbtaddendum in escludi) or (tbtannullativo in escludi) or (tbtsostitutivo in escludi)) and
          not (tbtFirmaBlocco in escludi) then
       begin
         if (FDMCommon.qReferto.State in dsEditModes) then
            FDMCommon.qReferto.Cancel;
         FDMCommon.qReferto.Close;
       end;
       FreeAndNil(FRefMedicorner);
       if Assigned(xMyStream) then
          xMyStream.Free;
    end;

end;



function VisualizzaReferto(const SiteName: string; pk: integer; const xTitolo: string; escludi: TbtnEscludi; stampa: TprnScelte; pdiagnosi: TvedoDiagnosi): integer;
var
  caricato: boolean;
  multisite: boolean;
  xnr: integer;
begin

    result := mrCancel;
    if ((tprnStampa in stampa) or (tprnStampaProvvisorio in stampa) or (tprnStampaDefinitivo in stampa)) and Assigned(FRefMedicorner) then exit;  // -- chiamato due volte da bottone ???

    if (tprnDaCreare in stampa) then
    begin
       FRefMedicorner := TFRefMedicorner.Create(nil);
//       FRefMedicorner.xpktriage := pk;
//       FRefMedicorner.xescludi := escludi;
//       FRefMedicorner.xProvenienza := Provenienza;
    end;

    multisite := false;
    try

       if (SiteName<>'') and (SiteName<>FDMCommon.Param_TicketSITE_NAME.AsString) then
       begin
         if FDMCommon.ApriMultiSite(SiteName) then
         begin
            FRefMedicorner.qPrintTestata.AstaClientSocket := FDMCommon.AstaMultiSite;
            FRefMedicorner.qPrintReport.AstaClientSocket := FDMCommon.AstaMultiSite;
            FRefMedicorner.GetCDA2.AstaClientSocket := FDMCommon.AstaMultiSite;
            FRefMedicorner.GetPDF.AstaClientSocket := FDMCommon.AstaMultiSite;
            FRefMedicorner.GetReportDataSet.AstaClientSocket := FDMCommon.AstaMultiSite;
            FDMCommon.TabStampe.AstaClientSocket := FDMCommon.AstaMultiSite;
            multisite := true;
         end
         else begin
            MsgDlg(format(RAD_SitoNonRaggiungibile,[SiteName]),'', ktError, [kbOK]);
            exit;
         end;
       end;

       if ((tprnStampa in stampa) or (tprnStampaProvvisorio in stampa) or (tprnStampaDefinitivo in stampa) or (tbtDaReparti in escludi)) then
          FRefMedicorner.InStampa := true;

       if (tprnStampaBatch in stampa) or (tprnStampaProvvisorioBatch in stampa) or (tprnStampaDefinitivoBatch in stampa) then
       begin
          FRefMedicorner.StampaBatch := true;
          FRefMedicorner.Stampante := dxPrintDevice.CurrentDevice;
       end;

       with FRefMedicorner do begin

       aDefinitivo.Visible := (FDMCommon.LeggiPostoLavoroPROVV_DEFINITIVO.AsInteger=1) and not (tbtDefinitivo in escludi);
       aStampaDefinitivo.Visible := (FDMCommon.LeggiPostoLavoroPROVV_DEFINITIVO.AsInteger=1) and not (tbtStampaDefinitivo in escludi);
       if aStampaDefinitivo.Visible then
       begin
         if qPrintTestataSTATOVISITA.AsInteger in [165,166] then
         begin
            aStampaDefinitivo.Caption := RS_StampaReferto;
            aStampaDefinitivo.Hint := RS_StampaRefertoHint;
         end;
       end;

       if (tbtfirmato in escludi) {and not (tbtGiaProvvisorio in escludi)} then
       begin
          aFirmato.Enabled := false;
          aFirmato.Visible := false;
          aStampa.Caption := RS_StampaReferto;
          aStampa.Hint := RS_StampaRefertoHint;
       end;
       if daReparti then
       begin
          aProvvisorio.Enabled := false;
          aProvvisorio.Visible := false;
          aStampaProvvisorio.Enabled := false;
          aStampaProvvisorio.Visible := false;
       end
       else if (tbtprovvisorio in escludi) then
       begin
          aProvvisorio.Enabled := false;
          aProvvisorio.Visible := false;
          aStampaProvvisorio.Enabled := false;
          aStampaProvvisorio.Visible := false;
       end;
       if (tbtannulla in escludi) then
       begin
          btAnnulla.Enabled := false;
          btAnnulla.Visible := false;
       end;
       if (tbtstampa in escludi) then
       begin
          aStampa.Enabled := false;
          aStampa.Visible := false;
       end;
       end;

       if (tbtDaReparti in escludi) then
          FRefMedicorner.daReparti := true;

       FRefMedicorner.Titolo := xTitolo;

       FRefMedicorner.qPrintTestata.Parambyname('PKTRIAGE').AsInteger := pk;
       FRefMedicorner.qPrintTestata.open;

       xnr := TipoMod(FRefMedicorner.qPrintTestataPROVENIENZA.AsString,escludi);
       if xnr=-1 then
          raise Exception.Create(format(RAD_RefertoNonDefinito,['']));
       FRefMedicorner.xcopie := gblMod[xnr,2];  // nr. copie
       FRefMedicorner.cxCopie.Value := FRefMedicorner.xcopie;

       FRefMedicorner.xpktriage := pk;
       FRefMedicorner.xescludi := escludi;
       FRefMedicorner.xpkimpegnative := FRefMedicorner.qPrintTestataPKIMPEGNATIVE.AsInteger;

       FRefMedicorner.qPrintReport.Parambyname('PKTRIAGE').AsInteger := pk;
       FRefMedicorner.qPrintReport.open;

       if FRefMedicorner.qPrintReport.IsEmpty then
       begin
          MsgDlg(format(RAD_RefertoNonTrovato,[pk]),'', ktError, [kbOK]);
//          caricato := false;
       end
       else begin

//         if FRefMedicorner.qPrintReport.recordcount>1 then
         begin
            FRefMedicorner.ElencoReferti.open;
            while not FRefMedicorner.qPrintReport.eof do
            begin
                FRefMedicorner.ElencoReferti.Append;
                FRefMedicorner.ElencoRefertiDESCR_REFERTO.AsString := FRefMedicorner.qPrintReportDESCSTATOREFERTO.AsString;
                FRefMedicorner.ElencoRefertiPKREFERTI.AsInteger := FRefMedicorner.qPrintReportPKREFERTI.AsInteger;
                FRefMedicorner.ElencoRefertiDATA_REFERTO.AsDateTime := FRefMedicorner.qPrintReportDATA_REFERTO.AsDateTime;
                FRefMedicorner.ElencoRefertiIMPEGNATIVA.AsInteger := FRefMedicorner.qPrintReportIMPEGNATIVA.AsInteger;
                FRefMedicorner.ElencoRefertiSTATOVISITA.AsInteger := FRefMedicorner.qPrintReportSTATOVISITA.AsInteger;
                FRefMedicorner.ElencoReferti.Post;
                FRefMedicorner.qPrintReport.Next;
            end;
            FRefMedicorner.qPrintReport.First;
         end;
(* -----
         if FRefMedicorner.qPrintReport.recordcount>1 then
         begin
            FRefMedicorner.dxLayoutReferti.Visible := true;
            FRefMedicorner.ActiveControl := FRefMedicorner.cxGridDBReferti.Site;
         end
         else
            FRefMedicorner.dxLayoutReferti.Visible := false;
----- *)
         repeat

           caricato := FRefMedicorner.SincronizzaReferto;

           if caricato then
           begin
             FRefMedicorner.aFirmato.Enabled := false;
             FRefMedicorner.aFirmato.Visible := false;
             FRefMedicorner.aStampa.Visible := FRefMedicorner.aStampa.Visible and
                                             not ((tprnStampaProvvisorio in stampa) or (tprnStampaProvvisorioBatch in stampa) or
                                                  (tprnStampaDefinitivo in stampa) or (tprnStampaDefinitivoBatch in stampa));

             if FRefMedicorner.aStampa.Visible then
             begin
               if FRefMedicorner.qPrintTestataSTATOVISITA.AsInteger=170 then
               begin
                  FRefMedicorner.aStampa.Caption := RS_StampaReferto;
                  FRefMedicorner.aStampa.Hint := RS_StampaRefertoHint;
               end;
             end;

             FRefMedicorner.aStampaProvvisorio.Visible := (tprnStampaProvvisorio in stampa);
             if FRefMedicorner.aStampaProvvisorio.Visible then
             begin
               if FRefMedicorner.qPrintTestataSTATOVISITA.AsInteger in [160,161] then
               begin
                  FRefMedicorner.aStampaProvvisorio.Caption := RS_StampaReferto;
                  FRefMedicorner.aStampaProvvisorio.Hint := RS_StampaRefertoHint;
               end;
             end;

             FRefMedicorner.aStampaDefinitivo.Visible := (tprnStampaDefinitivo in stampa);
             if FRefMedicorner.aStampaDefinitivo.Visible then
             begin
               if FRefMedicorner.qPrintTestataSTATOVISITA.AsInteger in [165,166] then
               begin
                  FRefMedicorner.aStampaDefinitivo.Caption := RS_StampaReferto;
                  FRefMedicorner.aStampaDefinitivo.Hint := RS_StampaRefertoHint;
               end;
             end;

             if (tprnStampaBatch in stampa) or (tprnStampaProvvisorioBatch in stampa) or (tprnStampaDefinitivoBatch in stampa) then
                FRefMedicorner.TimerStampa.Enabled := true;

             if (tprnDaCreare in stampa) then
             begin
               FRefMedicorner.dacreare := true;

               if (pDiagnosi<>tvdNo) then
               begin

                 if (FDMCommon.LeggiPostoLavoroCHECK_ACR.AsInteger>=1) and (FRefMedicorner.qPrintTestataREPARTI_FK.AsInteger=gblpkrep) then
                 begin
                   FRefMedicorner.Diagnosi.Parambyname('pktriage').AsInteger := pk;
                   FRefMedicorner.Diagnosi.open;
                   FRefMedicorner.aProvvisorio.Caption := RS_Salva;
                   FRefMedicorner.aProvvisorio.Hint := RS_SalvaHint;
                   FRefMedicorner.aProvvisorio.Visible := true;
    //               FRefMedicorner.StampaProvvisorio.Visible := true;
                 end;

                 if (FDMCommon.LeggiPostoLavoroCHK_ATTIVITA_EXTRA.AsInteger=1) and (FRefMedicorner.qPrintTestataREPARTI_FK.AsInteger=gblpkrep) then
                 begin
                   FRefMedicorner.AttivitaExtra.Parambyname('pktriage').AsInteger := pk;
                   FRefMedicorner.AttivitaExtra.open;
                   FRefMedicorner.aProvvisorio.Caption := RS_Salva;
                   FRefMedicorner.aProvvisorio.Hint := RS_SalvaHint;
                   FRefMedicorner.aProvvisorio.Visible := true;
    //               FRefMedicorner.StampaProvvisorio.Visible := true;
                 end;

               end;

               if (tprnStampaBatch in stampa) then
               begin
                 FRefMedicorner.aStampa.Execute;
                 result := mrIgnore;
               end
               else if (tprnStampaProvvisorioBatch in stampa) then
               begin
                 FRefMedicorner.aStampa.Execute;
                 result := mrAbort;
               end
               else if (tprnStampaDefinitivoBatch in stampa) then
               begin
                 FRefMedicorner.aStampa.Execute;
                 result := mrNoToAll;
               end
               else
                 result := FRefMedicorner.ShowModal;

               if not multisite then
               begin
                 // -- uscita con richiesta stampa...
                 if (result in [mrIgnore,mrAbort,mrNoToAll]) then
                 begin
                   FRefMedicorner.AggiornaStato.Parambyname('user_id').AsInteger := gblCodUtente;
                   FRefMedicorner.AggiornaStato.Parambyname('pktriage').AsInteger := FRefMedicorner.qPrintTestataPKTRIAGE.AsInteger;
                   FRefMedicorner.AggiornaStato.Parambyname('oldstato').AsInteger := FRefMedicorner.qPrintTestataSTATOVISITA.AsInteger;
                   case FRefMedicorner.qPrintTestataSTATOVISITA.AsInteger of
                   160: FRefMedicorner.AggiornaStato.Parambyname('statovisita').AsInteger := 161;
                   165: FRefMedicorner.AggiornaStato.Parambyname('statovisita').AsInteger := 166;
                   170: FRefMedicorner.AggiornaStato.Parambyname('statovisita').AsInteger := 180;
                   else
                      FRefMedicorner.AggiornaStato.Parambyname('statovisita').AsInteger := FRefMedicorner.qPrintTestataSTATOVISITA.AsInteger;
                   end;
(*
                   case result of
                   mrIgnore:  FRefMedicorner.AggiornaStato.Parambyname('statovisita').AsInteger := 180;
                   mrAbort:   FRefMedicorner.AggiornaStato.Parambyname('statovisita').AsInteger := 161;
                   mrNoToAll: FRefMedicorner.AggiornaStato.Parambyname('statovisita').AsInteger := 166;
                   end;
*)
                   FRefMedicorner.AggiornaStato.ExecCommit;
                 end
                 else //if (result<>mrCancel) then
                 begin
                   if (FRefMedicorner.Diagnosi.State in dsEditModes) then
                       FRefMedicorner.Diagnosi.Post;
                   if (FRefMedicorner.AttivitaExtra.State in dsEditModes) then
                       FRefMedicorner.AttivitaExtra.Post;
                   FRefMedicorner.AggiornaStato.Parambyname('user_id').AsInteger := gblCodUtente;
                   FRefMedicorner.AggiornaStato.Parambyname('pktriage').AsInteger := FRefMedicorner.qPrintTestataPKTRIAGE.AsInteger;
                   FRefMedicorner.AggiornaStato.Parambyname('oldstato').AsInteger := FRefMedicorner.qPrintTestataSTATOVISITA.AsInteger;
                   FRefMedicorner.AggiornaStato.Parambyname('statovisita').AsInteger := 900;
                   FRefMedicorner.AggiornaStato.ExecCommit;
                 end;
              end;
             end
             else begin
                FRefMedicorner.dacreare := false;
                FRefMedicorner.Show;
             end;

           end;

           FRefMedicorner.qPrintReport.Next;

        until FRefMedicorner.qPrintReport.eof or not (tprnStampaBatch in stampa);
     end;

    finally

       if multisite then
       begin
          FDMCommon.ChiudiMultiSite;
          FRefMedicorner.qPrintTestata.AstaClientSocket := FDMCommon.AstaClientSocket;
          FRefMedicorner.qPrintReport.AstaClientSocket := FDMCommon.AstaClientSocket;
          FRefMedicorner.GetCDA2.AstaClientSocket := FDMCommon.AstaClientSocket;
          FRefMedicorner.GetPDF.AstaClientSocket := FDMCommon.AstaClientSocket;
          FRefMedicorner.GetReportDataSet.AstaClientSocket := FDMCommon.AstaClientSocket;
          FDMCommon.TabStampe.AstaClientSocket := FDMCommon.AstaClientSocket;
       end;
       if FRefMedicorner.refrCarica then
          FDMCommon.CaricaReferti(gblpkrep);

       if (tprnDaCreare in stampa) then
       begin
//         FRefMedicorner.Release;
         FreeAndNil(FRefMedicorner);
       end;
    end;

end;

procedure TFRefMedicorner.SetStampante(Value: string);
begin
  FStampante := Value;
  if Value<>cxStampe.Text then
     cxStampe.Text := Value;
end;

procedure TFRefMedicorner.SetMyStream(Value: TMemoryStream);
var
  res: integer;
  PdfStream: TMemoryStream;
begin
  FMyStream := Value;
  case TipoReferto of
  4: begin
      Value.Position := 0;
//      if gtPDFDocument.LoadFromExternalStream(Value) then
      if gtPDFDocument.LoadFromStream(Value) then
      begin
        if Assigned(gtPDFViewer.PDFDocument) then
            gtPDFViewer.Reset;
        gtPDFViewer.PDFDocument := gtPDFDocument;
        if gtPDFDocument.IsLoaded then
        begin
          gtPDFViewer.PageNo := 1;
          gtPDFViewer.RotationAngle := ra0;
          gtPDFViewer.Zoom := gtPDFViewer.GetStandardZoomValue(sztFitWidth);
          if Visible and gtPDFViewer.CanFocus then
             gtPDFViewer.Active := True;
          UpdateButton;
          UpdateStatusBar;
        end;
     end;
   end;
  5: begin
       Value.Position := 0;
       res := fMsg.ParseMessage(
              Value,
              '', //fDefaultHeaderCharset,
              '', //fDefaultBodyCharset,
              [mpoStoreStream, mpoLoadData, mpoCalcDataSize, mpoRaiseError],
              False,
              False,
              false //fDefaultActivatePartHandlers
                             );
       if res=0 then
       begin
          PdfStream := TMemoryStream.Create;
          try
            fMsg.MainPart.GetPart(2).SaveDataToStream(PdfStream);
            PdfStream.Position := 0;
//            if gtPDFDocument.LoadFromExternalStream(PdfStream) then
            if gtPDFDocument.LoadFromStream(PdfStream) then
            begin
              if Assigned(gtPDFViewer.PDFDocument) then
                  gtPDFViewer.Reset;
              gtPDFViewer.PDFDocument := gtPDFDocument;
              if gtPDFDocument.IsLoaded then
              begin
                gtPDFViewer.PageNo := 1;
                gtPDFViewer.RotationAngle := ra0;
                gtPDFViewer.Zoom := gtPDFViewer.GetStandardZoomValue(sztFitWidth);
                if Visible and gtPDFViewer.CanFocus then
                   gtPDFViewer.Active := True;
                UpdateButton;
                UpdateStatusBar;
              end;
            end;
          finally
            PdfStream.Free;
          end;
       end;
   end;

  end;
end;


procedure TFRefMedicorner.aStampaExecute(Sender: TObject);
begin
  ProcStampa(1);
end;

procedure TFRefMedicorner.aStampaProvvisorioExecute(Sender: TObject);
begin
  ProcStampa(2);
end;

procedure TFRefMedicorner.PrintWithShell( doc: TgtPDFDocument );
var
  fname: string;
  fpath: string;
begin
  fname:= GetTempFile('.pdf');
  fpath := ExtractFilePath(fname);
  Deletefiles(fpath, '.pdf');
  doc.SaveToFile( fname );
  PrintUsingShell( fname );
end;

procedure TFRefMedicorner.ProcStampa(tipo: integer);
var
  x: integer;
begin

  FTipoStampa := tipo;

  {JRT 3700 - rigenero referto per scritta "provvisorio"}
  if (tipo=2) and not (tbtGiaProvvisorio in xescludi) then
  begin
     xescludi := xescludi + [tbtGiaProvvisorio];
     FRefMedicorner.GeneraReferto(FDMCommon.qRefertoPKREFERTI.AsInteger,FDMCommon.qRefertoNOME_DOCUMENTO.AsString,FDMCommon.qRefertoSTATOREFERTO_FK.AsInteger);
  end;
  {}

  if InStampa or StampaBatch {or not FDMCommon.FirmaDigitale} then
  begin
    if Stampante<>'' then
    begin
       x := Printer.Printers.IndexOf(Stampante);
       if (x>=0) and (Printer.PrinterIndex<>x) then
       begin
          if (FDMCommon.LeggiPostoLavoroSET_DEFAULT_PRINTER.AsInteger=2) then
              FDMCommon.SetPrinter(Stampante);
          Printer.PrinterIndex := x;
       end;
    end;

    case TipoReferto of
  4,5:
      begin
        try
//        for x:=1 to cxCopie.Value do
        begin
{$IFDEF PRINTWITHSHELL}
           PrintWithShell( gtPDFDocument );
{$ELSE}
           gtPDFDocument.DocInfo.Title := Format(RS_RefertoNr,[qPrintReportPKREFERTI.AsInteger]);
//           gtPDFViewer.PrintDoc(false);
           if Stampante<>'' then
              gtPDFPrinter.SelectPrinterByName(Stampante);
           gtPDFPrinter.PrinterCapabilities.PaperSize := 9;  // -- A4
           gtPDFPrinter.Scaling := psFitPage;
           gtPDFPrinter.Copies := cxCopie.Value;
           gtPDFPrinter.PrintDoc;
{$ENDIF}
        end;
        except
          on E:EPrinter do
             MsgDlg(Format(RAD_ErroreStampa,[E.Message]),'', ktError, [kbOK]);
          on E:EGPLoadError do
             MsgDlg(Format(RAD_ErrorePDF,[E.Message]),'', ktError, [kbOK]);
          else
             raise;
        end;
      end;
    end;

  end;

{$IFNDEF MEDICORNER}
  case tipo of
  1: ModalResult := mrIgnore;    // stampa firmato
  2: ModalResult := mrAbort;     // stampa provvisorio
  3: ModalResult := mrNoToAll    // stampa definitivo
  end;
{$ENDIF}
end;

procedure TFRefMedicorner.aFirmatoExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TFRefMedicorner.aProvvisorioExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrRetry;
end;

procedure TFRefMedicorner.DoCreate;
//var
//  dove: integer;
begin
  inherited;
//  Personalizza := gblSuperUser;
  FDMCommon.CaricaLayout(Name,dxLayoutControl1);

  refrCarica := false;
  FMyStream := nil;
  FOutStream:= TMemoryStream.Create;
  cxStampe.Properties.Items.Assign(Printer.Printers);
  cxStampe.Text := FDMCommon.StampanteNormale;
  Stampante := cxStampe.Text;
  FStampaBatch := false;
  FInStampa := false;
  dacreare := false;
  daReparti := false;

  fMsg := TElMessage.Create;

  sCDMaster.DataSet := FDMCommon.cdMaster;

  FxCreaCD := false;
  ReadBarCode := False;
  {$IFDEF PRINTWITHSHELL}
  cxCopie.Visible := False;
  lblNumero.Visible := False;
  {$ENDIF}
end;

procedure TFRefMedicorner.BaseFormDestroy(Sender: TObject);
begin
{
  if (OldPrinter<>-1) and (FDMCommon.LeggiPostoLavoroSET_DEFAULT_PRINTER.AsInteger<>2) then
     Printer.PrinterIndex := OldPrinter;
}
  fMsg.Free;
{
  if Assigned(FMyStream) then
     FreeAndNil(FMyStream);
}
//  FRefMedicorner := nil;

  inherited;  
end;

procedure TFRefMedicorner.KeyPress(var Key: Char);
begin
  if (Key=#27) and not btAnnulla.Enabled then
     Key := #0
  else
     inherited;
end;

procedure TFRefMedicorner.aStampaUpdate(Sender: TObject);
begin
  inherited;
  aStampa.Enabled := (Stampante<>'') and not (gblSpecializ and not InStampa) and (xcopie>0)
                     and ((tbtfirmato in xescludi) or gblfirmainst)
                     {and not (daReparti and (ElencoRefertiIMPEGNATIVA.AsInteger=1))};
end;

procedure TFRefMedicorner.TimerStampaTimer(Sender: TObject);
begin
  inherited;
{
  if not btStampa.Visible then
     aStampaProvvisorio.Execute
  else
     aStampa.Execute;
}
end;

procedure TFRefMedicorner.aUscitaExecute(Sender: TObject);
begin
  inherited;
  if dacreare then
     ModalResult := mrCancel
  else
     Close;
end;

procedure TFRefMedicorner.aLoadFromFileExecute(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
  begin
     qPrintReport.Edit;
     qPrintReportREFERTO.LoadFromFile(OpenDialog1.FileName);
     qPrintReport.Post;
  end;
end;

procedure TFRefMedicorner.aLoadFromFileUpdate(Sender: TObject);
begin
  inherited;
  aLoadFromFile.Enabled := false;
end;

procedure TFRefMedicorner.aProvvisorioUpdate(Sender: TObject);
begin
  inherited;
  aProvvisorio.Enabled := (not dacreare or (Diagnosi.State in dsEditModes) or (AttivitaExtra.State in dsEditModes))
                          and ((FDMCommon.LeggiPostoLavoroCHK_FIRMA_PROVV.AsInteger=0) or gblfirmainst);
end;

procedure TFRefMedicorner.aFirmatoUpdate(Sender: TObject);
begin
  inherited;
  aFirmato.Enabled := not gblSpecializ and gblfirmainst;
end;

function TFRefMedicorner.SincronizzaReferto: boolean;
var
  xMyStream: TMemoryStream;
  ret: integer;
//  ErrStr: string;
begin

     result := true;

     if qPrintReportTIPO_REFERTO_FK.AsInteger=1 then
     begin
       // -- per referti precedenti carica sempre configurazione dell'unità organizzativa che l'ha prodotto
       // -- se diversa dall'attuale
       if qPrintReportREPARTI_FK.AsInteger<>gblpkrep then
       begin
          refrCarica := true;
          FDMCommon.CaricaReferti(qPrintReportREPARTI_FK.AsInteger);
       end;
       xfunz  := gblMod[75,1];  // pk modello stampa
       xcopie := gblMod[75,2];  // nr. copie
       TipoReferto := gblMod[75,3];  // tipo referto
       xProvenienza := '*';
       GeneraReferto(qPrintReportPKREFERTI.AsInteger,qPrintReportNOME_DOCUMENTO.AsString,qPrintReportSTATOREFERTO_FK.AsInteger);
     end
     else begin

       TipoReferto := qPrintReportTIPO_REFERTO_FK.AsInteger;
       xMyStream := TMemoryStream.Create;
       try

       qPrintReportREFERTO.SaveToStream(xMyStream);

       if (qPrintReportFIRMATO.AsInteger=1) then
       begin
         {JRT 5398}
         if Assigned(FRefMedicorner.OutStream) and (FRefMedicorner.OutStream.Size>0) then
         begin
            FRefMedicorner.OutStream.Free;
            FRefMedicorner.OutStream := TMemoryStream.Create;
         end;
         {JRT 5398}

         ret := FDMCommon.FirmaDig.DecodeStream(xMyStream,FRefMedicorner.OutStream);

         if (ret<>0) then
            result := false
         else
            MyStream := FRefMedicorner.OutStream;
       end
       else
         MyStream := xMyStream;

      finally
         xMyStream.Free;
      end;

  end;

  case TipoReferto of
  4,5: ActiveRef := 'dxLayoutPDFViewer';
  else
     raise Exception.Create(format(RAD_TipoRefertoNonDefinito,[TipoReferto]));
  end;

end;

procedure TFRefMedicorner.sElencoRefertiDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (Field=nil) and (qPrintReport.recordcount>1) then
  begin
    if qPrintReport.Active and qPrintReport.Locate('PKREFERTI',ElencoRefertiPKREFERTI.AsInteger,[]) and (ActiveRef<>'') then
       SincronizzaReferto;
  end;
end;

procedure TFRefMedicorner.DiagnosiNewRecord(DataSet: TDataSet);
begin
  inherited;
  DiagnosiTRIAGE_FK.AsInteger := Diagnosi.Parambyname('pktriage').AsInteger;
end;

procedure TFRefMedicorner.AttivitaExtraBeforePost(DataSet: TDataSet);
begin
  inherited;
  AttivitaExtraUSER_ID.AsInteger := gblCodUtente;
end;

procedure TFRefMedicorner.cxGrid1DBTableView1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
  NBDI_INSERT: begin
                aNuovaDiagnosi.Execute;
                ADone := true;
               end;
  NBDI_EDIT : begin
                aModificaDiagnosi.Execute;
                ADone := true;
               end;
  NBDI_DELETE : begin
                aCancellaDiagnosi.Execute;
                ADone := true;
               end;
  end;

end;

procedure TFRefMedicorner.aNuovaDiagnosiExecute(Sender: TObject);
begin
  inherited;
{$IFNDEF MEDICORNER}
  FACRDiag := TFACRDiag.Create(nil);
  try
     FACRDiag.RicercaParziale := (FDMCommon.LeggiPostoLavoroCHECK_ACR.AsInteger=2);
     FACRDiag.sDiagnosi.Dataset := Diagnosi;
     Diagnosi.Insert;
     if FACRDiag.ShowModal=mrOk then
        Diagnosi.Post
     else
        Diagnosi.Cancel;
  finally
     FACRDiag.Free;
  end;
{$ENDIF}
end;

procedure TFRefMedicorner.aCopiaInMemoriaExecute(Sender: TObject);
begin
  inherited;
     case TipoReferto of
       4,5: Clipboard.AsText := qPrintReportDIAGNOSI.AsString;
     end;
end;

procedure TFRefMedicorner.aStampaProvvisorioUpdate(Sender: TObject);
begin
  inherited;
  aStampaProvvisorio.Enabled := (Stampante<>'') and not (gblSpecializ and not InStampa) and not daReparti and (xcopie>0);

end;

procedure TFRefMedicorner.BtnActualSizeClick(Sender: TObject);
begin
  inherited;
  gtPDFViewer.Zoom := gtPDFViewer.GetStandardZoomValue(sztActualSize);
  UpdateStatusBar;
end;

procedure TFRefMedicorner.btnFitWidthClick(Sender: TObject);
begin
  inherited;
  gtPDFViewer.Zoom := gtPDFViewer.GetStandardZoomValue(sztFitWidth);
  UpdateStatusBar;
end;

procedure TFRefMedicorner.BtnFitPageClick(Sender: TObject);
begin
  inherited;
  gtPDFViewer.Zoom := gtPDFViewer.GetStandardZoomValue(sztFitPage);
  UpdateStatusBar;
end;

procedure TFRefMedicorner.BtnFirstPageClick(Sender: TObject);
begin
  inherited;
  gtPDFViewer.First;
//  UpdateButton;
//  UpdateStatusBar
end;

procedure TFRefMedicorner.BtnPriorPageClick(Sender: TObject);
begin
  inherited;
  gtPDFViewer.Prior;
//  UpdateButton;
//  UpdateStatusBar
end;

procedure TFRefMedicorner.BtnNextPageClick(Sender: TObject);
begin
  inherited;
  gtPDFViewer.Next;
//  UpdateButton;
//  UpdateStatusBar
end;

procedure TFRefMedicorner.BtnLastPageClick(Sender: TObject);
begin
  inherited;
  gtPDFViewer.Last;
//  UpdateButton;
//  UpdateStatusBar
end;

procedure TFRefMedicorner.BtnZoomInClick(Sender: TObject);
var
  Lfactor: Integer;
begin
  if edZoom = '' then
  begin
    gtPDFViewer.Zoom := 1;
    UpdateStatusBar;
  end
  else
  begin
    Lfactor := Floor((gtPDFViewer.Zoom)/ ZoomIncrement);
    if ((gtPDFViewer.Zoom) - (ZoomIncrement * Lfactor)) = 0 then
      gtPDFViewer.Zoom := (ZoomIncrement * (Lfactor-1))
    else
      gtPDFViewer.Zoom := (ZoomIncrement * (Lfactor));

    BtnActualSize.Down := False;
    BtnFitPage.Down := False;
    btnFitWidth.Down := false;

    UpdateStatusBar;
  end;
end;

procedure TFRefMedicorner.BtnZoomOutClick(Sender: TObject);
var
  Lfactor: Integer;
begin
  if edZoom = '' then
  begin
    gtPDFViewer.Zoom := ZoomIncrement;
    UpdateStatusBar;
  end
  else
  begin
    Lfactor := Floor(strtofloat(edZoom)/ ZoomIncrement);
    gtPDFViewer.Zoom := (ZoomIncrement * (Lfactor+1));
    BtnActualSize.Down := False;
    BtnFitPage.Down := False;
    btnFitWidth.Down := false;
    UpdateStatusBar;
  end;
end;

procedure TFRefMedicorner.UpdateStatusBar;
begin
//  SbPageNo.Panels[0].Text := Format('Pagina %d di %d',[gtPDFViewer.PageNo,gtPDFViewer.PDFDocument.PageCount ]);
  edZoom := FormatFloat('#.##', gtPDFViewer.Zoom);
  BtnZoomIn.Enabled := (StrToFloat(edZoom)) <> 1 ;
end;

procedure TFRefMedicorner.UpdateButton;
begin
  BtnFirstPage.Enabled := not gtPDFViewer.IsFirst;
  BtnPriorPage.Enabled := not gtPDFViewer.IsFirst;
  BtnNextPage.Enabled := not gtPDFViewer.IsLast;
  BtnLastPage.Enabled := not gtPDFViewer.IsLast;
//  BtnActive.Enabled := True;
  BtnFitPage.Enabled := True;
  btnFitWidth.Enabled := True;
  BtnActualSize.Enabled := True;
  
  if round(gtPDFViewer.Zoom) = round(gtPDFViewer.GetStandardZoomValue(sztActualSize)) then
    BtnActualSize.Down := True
  else if round(gtPDFViewer.Zoom) = round(gtPDFViewer.GetStandardZoomValue(sztFitPage)) then
    BtnFitPage.Down := True
  else if round(gtPDFViewer.Zoom) = round(gtPDFViewer.GetStandardZoomValue(sztFitWidth)) then
    btnFitWidth.Down := True;


//  SearchButton.Enabled := True;
  BtnZoomOut.Enabled := True;
  BtnZoomIn.Enabled := True;
//  EdtGotoPage.Enabled := True;
//  edZoom.Enabled := True;
//  BtnRotate.Enabled := True;
end;

procedure TFRefMedicorner.qPrintReportBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.ParamByName('statoreferto_fk').AsString := '# (90,92,93,94,95,96,97,98,99)';
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFRefMedicorner.DoShow;
begin
  inherited;

  AggiustaFormShow(FDMCommon.ClientPacs,FDMCommon.DoppioMonitor);
  if not gtPDFViewer.Active then
     gtPDFViewer.Active := True;


end;

procedure TFRefMedicorner.SetxCopie(Value: integer);
begin
  FxCopie := Value;
  if FxCopie<=0 then
  begin
     cxCopie.Enabled := False;
     cxStampe.Enabled := False;
  end;
end;

procedure TFRefMedicorner.SetActiveRef(Value: string);
begin
  if FActiveRef<>Value then
  begin
    FActiveRef := Value;
  end;
end;

procedure TFRefMedicorner.GeneraReferto( xpkreferti: Integer; NomeDocumento: string; xStatoReferto: integer );
begin

try
     case TipoReferto of
     4:
       with GetReportDataSet do begin
        Close;
        if NomeDocumento<>'' then
           ParamByName('nome_documento').AsString := NomeDocumento;
        ParamByName('pkimpegnative').AsInteger := xpkimpegnative;
        ParamByName('pktriage').AsInteger := xpktriage;
        ParamByName('item_id_fk').AsInteger := xfunz;
        ParamByName('tiporeferto').AsInteger := TipoReferto;

        ParamByName('pkreferti').AsInteger := xpkreferti;
        ParamByName('referti_fk').Clear;
        if (xProvenienza<>'X') and (xProvenienza<>'*') then
        begin
           GetAddendumFK.Parambyname('triage_fk').AsInteger := xpktriage;
           GetAddendumFK.syRefresh;
           if not GetAddendumFKPRECREF.IsNull then
           begin
              ParamByName('referti_fk').AsInteger := GetAddendumFKPRECREF.AsInteger;
              FDMCommon.qRefertoREFERTI_FK.AsInteger := GetAddendumFKPRECREF.AsInteger;
           end;
        end;
{
        if (tbtaddendum in xescludi) then
           ParamByName('ref_tipo').AsInteger := 93
        else if (tbtconsulenza in xescludi) then
           ParamByName('ref_tipo').AsInteger := 95
        else if (tbtannullativo in xescludi) then
           ParamByName('ref_tipo').AsInteger := 96
        else if (tbtGiaProvvisorio in xescludi) then
           ParamByName('ref_tipo').AsInteger := 92
        else if xProvenienza='X' then
           ParamByName('ref_tipo').AsInteger := 94
        else
           ParamByName('ref_tipo').AsInteger := 90;
}
        ParamByName('ref_tipo').AsInteger := xStatoReferto;
        Open;
        if ParambyName('referto').IsNull then
              raise Exception.Create(RAD_ErroreCreazioneReferto);
        MyStream := ParambyName('referto').AsStream  as TMemoryStream;

       end;

     5:
       with GetPDF do begin
        Close;
        if NomeDocumento<>'' then
           ParamByName('nome_documento').AsString := NomeDocumento;
        ParamByName('pkimpegnative').AsInteger := xpkimpegnative;
        ParamByName('pktriage').AsInteger := xpktriage;
        ParamByName('pkreferti').AsInteger := xpkreferti;
        ParamByName('referti_fk').Clear;

        if xProvenienza='E' then
           ParamByName('tipo').AsInteger := 70
        else if xProvenienza='I' then
           ParamByName('tipo').AsInteger := 71
        else if xProvenienza='P' then
           ParamByName('tipo').AsInteger := 72
        else if xProvenienza='X' then
           ParamByName('tipo').AsInteger := 73;

        if (xProvenienza<>'X') and (xProvenienza<>'*') then
        begin
           GetAddendumFK.Parambyname('triage_fk').AsInteger := xpktriage;
           GetAddendumFK.syRefresh;
           if not GetAddendumFKPRECREF.IsNull then
           begin
              ParamByName('referti_fk').AsInteger := GetAddendumFKPRECREF.AsInteger;
              FDMCommon.qRefertoREFERTI_FK.AsInteger := GetAddendumFKPRECREF.AsInteger;
           end;
        end;
{
        if (tbtaddendum in xescludi) then
           ParamByName('ref_tipo').AsInteger := 93
        else if (tbtconsulenza in xescludi) then
           ParamByName('ref_tipo').AsInteger := 95
        else if (tbtannullativo in xescludi) then
           ParamByName('ref_tipo').AsInteger := 96
        else if (tbtGiaProvvisorio in xescludi) then
           ParamByName('ref_tipo').AsInteger := 92
        else if xProvenienza='X' then
           ParamByName('ref_tipo').AsInteger := 94
        else
           ParamByName('ref_tipo').AsInteger := 90;
}
        ParamByName('ref_tipo').AsInteger := xStatoReferto;
        Open;
        if ParambyName('mime').IsNull then
           raise Exception.Create(RAD_ErroreCreazioneReferto);

        MyStream := GetPDF.ParambyName('mime').AsStream  as TMemoryStream;
       end;

     end;
except
  on EAccessViolation do
     raise Exception.Create(format(RIS_ErroreGeneraReferto,[xpkreferti]));
  on E:EGPLoadError do
     MsgDlg(Format(RAD_ErrorePDF,[E.Message]),'', ktError, [kbOK]);
  else
     raise;
end;

end;

procedure TFRefMedicorner.cxStampePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  Stampante := cxStampe.Text;
end;

procedure TFRefMedicorner.aSelezionaTuttoExecute(Sender: TObject);
begin
  inherited;
(*
     case TipoReferto of
//       4,5: ???;
     end;
*)
end;

procedure TFRefMedicorner.cxPDFShow(Sender: TObject);
begin
  inherited;
  gtPDFViewer.SetFocus;
end;

procedure TFRefMedicorner.gtPDFViewerKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
  33: BtnPriorPage.Click;
  34: BtnNextPage.Click;
  35: BtnLastPage.Click;
  36: BtnFirstPage.Click;
  end;

end;

procedure TFRefMedicorner.gtPDFViewerPageChange(Sender: TgtPDFViewer;
  const CurrentPageIndex: TPageIndex);
begin
  inherited;
  UpdateButton;
  UpdateStatusBar;
end;

procedure TFRefMedicorner.aDefinitivoExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrYes;
end;

procedure TFRefMedicorner.aStampaDefinitivoExecute(Sender: TObject);
begin
  inherited;
  ProcStampa(3);
end;

procedure TFRefMedicorner.aStampaDefinitivoUpdate(Sender: TObject);
begin
  inherited;
  aStampaDefinitivo.Enabled := (Stampante<>'') and not (gblSpecializ and not InStampa) and not daReparti and (xcopie>0);
end;

procedure TFRefMedicorner.StartPersonalizza;
begin
  LanciaPersonalizza(dxLayoutControl1,FDMCommon.qFormLayout);
end;

procedure TFRefMedicorner.StopPersonalizza;
begin
  FDMCommon.SalvaPersonalizza(Name,dxLayoutControl1,gblcodutente);
end;

procedure TFRefMedicorner.ResetPersonalizza;
begin
  if FDMCommon.ResetLayout(Name,dxLayoutControl1) then
     aUscita.Execute;
end;

procedure TFRefMedicorner.aCancellaDiagnosiExecute(Sender: TObject);
begin
  inherited;
  if (MsgDlgPos(RS_Gene_Msg_ConfCanc, '',ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes) then
     Diagnosi.Delete;
end;

procedure TFRefMedicorner.aCancellaDiagnosiUpdate(Sender: TObject);
begin
  inherited;
  aCancellaDiagnosi.Enabled := not Diagnosi.IsEmpty;
end;

procedure TFRefMedicorner.aModificaDiagnosiExecute(Sender: TObject);
begin
  inherited;
{$IFNDEF MEDICORNER}
  FACRDiag := TFACRDiag.Create(nil);
  try
     FACRDiag.RicercaParziale := (FDMCommon.LeggiPostoLavoroCHECK_ACR.AsInteger=2);
     FACRDiag.sDiagnosi.Dataset := Diagnosi;
     Diagnosi.Edit;
     FDMCommon.acr_anatomical.Locate('KEY',DiagnosiACR_ANATOMICAL.AsString,[]);
     FACRDiag.FiltraPatologie;
     FDMCommon.acr_patological.Locate('KEY',DiagnosiACR_PATOLOGICAL.AsString,[]);
     if FACRDiag.ShowModal=mrOk then
        Diagnosi.Post
     else
        Diagnosi.Cancel;
  finally
     FACRDiag.Free;
  end;
{$ENDIF}
end;

procedure TFRefMedicorner.aModificaDiagnosiUpdate(Sender: TObject);
begin
  inherited;
  aModificaDiagnosi.Enabled := not Diagnosi.IsEmpty;
end;

end.
