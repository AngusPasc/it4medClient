unit Fusione;

interface

uses
  BaseRad, ArchivioReferti, {}Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CSEZForm,   ExtCtrls, 
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  dxLayoutControl, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxContainer, cxTextEdit, AstaDrv2, AstaClientDataset, dxBar, ActnList,
  Menus, UDXPopup, cxGridCustomPopupMenu, cxGridPopupMenu, cxDataStorage,
  cxImageComboBox, cxHyperLinkEdit, cxSpinEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxLookAndFeels, dxLayoutcxEditAdapters, cxNavigator, dxLayoutContainer,
  cxGroupBox;

type
  TFFusione = class(TFBaseRad)
    QDuplicati: TAstaClientDataSet;
    QDuplicatiDATA_NASCITA: TDateTimeField;
    QDuplicatiDES_NAZCITT: TStringField;
    QDuplicatiUSL_CODICE_APPARTIENE: TStringField;
    QDuplicatiCOGNOME: TStringField;
    QDuplicatiNOME: TStringField;
    QDuplicatiCIT_CODICE: TStringField;
    QDuplicatiPKASSISTIBILI: TIntegerField;
    QDuplicatiTELEFONO: TStringField;
    QDuplicatiDES_COMNASC: TStringField;
    QDuplicatiPRO_NASC: TStringField;
    QDuplicatiDES_NAZNASC: TStringField;
    QDuplicatiINDIRIZZO: TStringField;
    QDuplicatiCAP_COMRES: TStringField;
    QDuplicatiDES_COMRES: TStringField;
    QDuplicatiPRO_RES: TStringField;
    QDuplicatiDES_NAZRES: TStringField;
    QDuplicatiNAZ_NASC: TStringField;
    QDuplicatiNAZ_RES: TStringField;
    QDuplicatiSAN_IDENT: TIntegerField;
    QDuplicatiLIBRETTO_SAN: TStringField;
    QDuplicatiMED_BASE: TStringField;
    QDuplicatiNOMINATIVO: TStringField;
    sDuplicati: TDataSource;
    sSitDuplicati: TDataSource;
    SitDuplicati: TAstaClientDataSet;
    SitDuplicatiDESCSTATOESAME: TStringField;
    SitDuplicatiREPARTORICHIEDENTE: TStringField;
    SitDuplicatiDIAGNOSTICA: TStringField;
    SitDuplicatiRIS_STUDY_EUID: TStringField;
    SitDuplicatiREPARTOESECUTORE: TStringField;
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxGrid1: TcxGrid;
    DupEsami: TcxGridDBTableView;
    DupEsamiIMPEGNATIVE_FK: TcxGridDBColumn;
    DupEsamiPKTRIAGE: TcxGridDBColumn;
    DupEsamiDESCSTATOESAME: TcxGridDBColumn;
    DupEsamiDATA_VISITA: TcxGridDBColumn;
    DupEsamiREPARTORICHIEDENTE: TcxGridDBColumn;
    DupEsamiDIAGNOSTICA: TcxGridDBColumn;
    DupEsamiCEIMMAGINI: TcxGridDBColumn;
    DupEsamiCEREFERTO: TcxGridDBColumn;
    DupEsamiREPARTOESECUTORE: TcxGridDBColumn;
    DupEsamiORA_INIZIO: TcxGridDBColumn;
    cxGridLevel: TcxGridLevel;
    dxBarArchivio: TdxBarManager;
    ActionList1: TActionList;
    VisualizzaImmagini: TAction;
    Referto: TAction;
    Associa: TAction;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    Fusione: TAstaClientDataSet;
    cxGridPopupDuplicati: TcxGridPopupMenu;
    TriagexImpegnative: TAstaClientDataSet;
    TriagexImpegnativePKTRIAGE: TIntegerField;
    TriagexImpegnativeRIS_STUDY_EUID: TStringField;
    Esci: TAction;
    AssociaTutto: TAction;
    QDuplicatiASSISTIBILI_FK: TIntegerField;
    FondiAnag: TAstaClientDataSet;
    fcImageBtn1: TcxButton;
    SitDuplicatiDATA_VISITA: TDateTimeField;
    SitDuplicatiDATA_ACCETTAZIONE: TDateTimeField;
    DupEsamiDATA_ACCETTAZIONE: TcxGridDBColumn;
    QDuplicatiSES_CODICE: TStringField;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    SitDuplicatiSITE_NAME: TStringField;
    dxBarPopDuplicati: TdxBarPopupMenu;
    QDuplicatiETA: TIntegerField;
    SitDuplicatiPKTRIAGE: TIntegerField;
    SitDuplicatiSTATOVISITA: TIntegerField;
    SitDuplicatiIMPEGNATIVE_FK: TIntegerField;
    SitDuplicatiCEIMMAGINI: TIntegerField;
    SitDuplicatiCEREFERTO: TIntegerField;
    DupEsamiRIS_STUDY_EUID: TcxGridDBColumn;
    procedure VisualizzaImmaginiExecute(Sender: TObject);
    procedure VisualizzaImmaginiUpdate(Sender: TObject);
    procedure RefertoExecute(Sender: TObject);
    procedure RefertoUpdate(Sender: TObject);
    procedure AssociaExecute(Sender: TObject);
    procedure cxGridPopupDuplicatiPopupMenus0Popup(ASenderMenu: TComponent;
      AHitTest: TcxCustomGridHitTest; X, Y: Integer);
    procedure BaseFormClose(Sender: TObject; var Action: TCloseAction);
    procedure EsciExecute(Sender: TObject);
    procedure AssociaTuttoExecute(Sender: TObject);
    procedure AssociaTuttoUpdate(Sender: TObject);
    procedure SitDuplicatiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure BaseFormDestroy(Sender: TObject);
    procedure AssociaUpdate(Sender: TObject);
    procedure QDuplicatiBeforeQuery(Sender: TAstaBaseClientDataSet);
  private
    { Private declarations }
    FHandle: THandle;
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }
    refer: TFArchivioReferti;
    constructor Create(AOwner: TComponent); override;
    procedure FondiEsame(pki: integer; pkanew,pkaold: string);
    procedure FondiTutto;
  end;

var
  FFusione: TFFusione;

implementation

uses DMCommon, msgdlgs
  {$IFNDEF MEDICORNER}
    ,RefPreview
  {$ELSE}
    ,RefMedicorner
  {$ENDIF}
;

{$R *.dfm}

constructor TFFusione.Create(AOwner: TComponent);
begin
   if Assigned(AOwner) then
     FHandle := TWinControl(AOwner).Handle;

   inherited Create(nil);

end;

procedure TFFusione.CreateParams(var Params: TCreateParams);
begin
  inherited;

  if FHandle>0 then
     Params.WndParent := FHandle;

end;

procedure TFFusione.VisualizzaImmaginiExecute(Sender: TObject);
var
  nrf: string;
  pkt: integer;
begin
  inherited;
  if gblViewImmagini then
  begin

     nrf := SitDuplicatiRIS_STUDY_EUID.AsString;
     pkt := SitDuplicatiPKTRIAGE.AsInteger;

     if (nrf<>'') then
        FDMCommon.AccNumber(pkt)
     else
        FDMCommon.Vuoto;
        
  end;

end;

procedure TFFusione.VisualizzaImmaginiUpdate(Sender: TObject);
begin
  inherited;

  VisualizzaImmagini.Enabled := gblViewImmagini and (SitDuplicatiCEIMMAGINI.AsInteger=1);

end;

procedure TFFusione.RefertoExecute(Sender: TObject);
begin
  inherited;
  VisualizzaReferto(SitDuplicatiSITE_NAME.AsString,SitDuplicatiPKTRIAGE.AsInteger,QDuplicatiNOMINATIVO.AsString,[],[tprnStampa,tprnDaCreare])

end;

procedure TFFusione.RefertoUpdate(Sender: TObject);
begin
  inherited;

  Referto.Enabled := (SitDuplicatiCEREFERTO.AsInteger=1);   // (SitDuplicatiSTATOVISITA.AsInteger in [170,180,190])

end;

procedure TFFusione.AssociaExecute(Sender: TObject);
begin
 inherited;
 if MsgDlgPos(format(RS_ConfermaFusione,[format('%10.10d',[SitDuplicatiPKTRIAGE.AsInteger]),QDuplicatiPKASSISTIBILI.AsInteger,QDuplicatiCOGNOME.AsString,qDuplicatiNOME.AsString,
              refer.SchedaPazientePKASSISTIBILI.AsInteger,refer.SchedaPazienteCOGNOME.AsString,refer.SchedaPazienteNOME.AsString]), '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes then
 begin

   FondiEsame(SitDuplicatiIMPEGNATIVE_FK.AsInteger,refer.SchedaPazientePKASSISTIBILI.AsString,QDuplicatiPKASSISTIBILI.AsString);
   SitDuplicati.syRefresh;
   refer.situazione.syrefresh;

 end;

end;


procedure TFFusione.cxGridPopupDuplicatiPopupMenus0Popup(
  ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest; X, Y: Integer);
begin
  inherited;
  dxBarPopDuplicati.Popup(X, Y);
end;

procedure TFFusione.BaseFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFFusione.EsciExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFFusione.AssociaTuttoExecute(Sender: TObject);
begin
  inherited;
  if MsgDlgPos(RS_ConfermaFusioneTutto, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes then
  begin
{
     QDuplicati.Edit;
     QDuplicatiSAN_IDENT.AsInteger := 3;
     QDuplicatiASSISTIBILI_FK.AsInteger := refer.SchedaPazientePKASSISTIBILI.AsInteger;
     QDuplicatiUSER_ID.AsInteger := gblCodUtente;
     QDuplicati.Post;
}

    FondiTutto;

    refer.situazione.syrefresh;

    Close;

  end;

end;


procedure TFFusione.FondiTutto;
begin
{
     SitDuplicati.First;
     while not SitDuplicati.Eof do
     begin
        FondiEsame;
        SitDuplicati.Next;
     end;
}
//    if (FDMCommon.LeggiPostoLavoroANAG_SCRITTURA.AsInteger=1) then
    begin
      FondiAnag.Parambyname('user_id').AsInteger := gblCodUtente;
      FondiAnag.Parambyname('vecchio').AsInteger := qDuplicatiPKASSISTIBILI.AsInteger;
      FondiAnag.Parambyname('nuovo').AsInteger := refer.SchedaPazientePKASSISTIBILI.AsInteger;
      FondiAnag.ExecCommit;

    end;

end;

procedure TFFusione.AssociaTuttoUpdate(Sender: TObject);
begin
  inherited;
  AssociaTutto.Enabled := (FDMCommon.LeggiPostoLavoroANAG_SCRITTURA.AsInteger=1) and (QDuplicatiPKASSISTIBILI.AsInteger>0) and (FDMCommon.LeggiPostoLavoroCHK_NO_FUSIONI.AsInteger=0);
end;

procedure TFFusione.FondiEsame(pki: integer; pkanew,pkaold: string);
begin

   Fusione.Parambyname('pknewass').AsInteger := StrToInt(pkanew);
   Fusione.Parambyname('pkoldass').AsInteger := StrToInt(pkaold);
   Fusione.Parambyname('user_id').AsInteger := gblcodutente;
   Fusione.Parambyname('pkimpegnative').AsInteger := pki;
   Fusione.ExecCommit;

end;

procedure TFFusione.SitDuplicatiBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  sender.Parambyname('lingua').AsString := gbllingua;  
end;

procedure TFFusione.BaseFormDestroy(Sender: TObject);
begin
  inherited;
  FFusione := nil;
end;

procedure TFFusione.AssociaUpdate(Sender: TObject);
begin
  inherited;
  Associa.Enabled := SitDuplicatiSITE_NAME.IsNull or (SitDuplicatiSITE_NAME.AsString=FDMCommon.Param_TicketSITE_NAME.AsString);
end;

procedure TFFusione.QDuplicatiBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

end.