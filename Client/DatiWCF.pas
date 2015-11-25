unit DatiWCF;

{$I syVer.inc}

interface

{.$DEFINE UscitaSospensione}

uses
  BaseRad, Messages, IIConsts, {}cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxControls, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxMaskEdit,
  cxSpinEdit, cxTextEdit, cxMemo, dxLayoutcxEditAdapters, dxLayoutControl,
  AstaUpdateSQL, dxBar, cxClasses, AstaDrv2, AstaClientDataset, Classes,
  ActnList, cxImageComboBox, cxDBEdit, cxLabel, cxDBLabel, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, CSEZForm, StdCtrls, cxButtons, Controls,
  ExtCtrls, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, cxNavigator, dxLayoutContainer, cxGroupBox;
  
type
  TFDatiWCF = class(TFBaseRad)
    ActionList1: TActionList;
    sEsame: TDataSource;
    Annulla: TAction;
    Stampe: TAction;
    sPrestazioni: TDataSource;
    Prestazioni: TAstaClientDataSet;
    Eseguito: TAction;
    CancellaEsame: TAction;
    btnPrecedenti: TcxButton;
    Precedenti: TAction;
    btFototimbro: TcxButton;
    btEseguito: TcxButton;
    Conferma: TAction;
    btElimina: TcxButton;
    NonRefertare: TAction;
    updPrestazioni: TAstaUpdateSQL;
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    Esame: TAstaClientDataSet;
    EsamePKTRIAGE: TIntegerField;
    EsameASSISTIBILI_FK: TIntegerField;
    EsameNOMINATIVO: TStringField;
    EsameREPARTO: TStringField;
    updEsame: TAstaUpdateSQL;
    DBText1: TcxDBLabel;
    DBText7: TcxDBLabel;
    EsameSTATOVISITA: TIntegerField;
    EsameUSER_ID: TIntegerField;
    Reparto: TcxDBLabel;
    EsameORA_INIZIO: TDateTimeField;
    dxBarPopupEsami: TdxBarPopupMenu;
    EsamePROVENIENZA: TStringField;
    dxCancEsame: TdxBarButton;
    dxBarButton6: TdxBarButton;
    EsameDATA_NASCITA: TDateTimeField;
    cxDBRichMemo1: TcxDBMemo;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    GridPrestazioni: TcxGridDBTableView;
    EsameRIS_STUDY_EUID: TStringField;
    EsameESEGUITO: TIntegerField;
    EsameCHK_NON_REFERTARE: TIntegerField;
    EsameSAN_IDENT: TIntegerField;
    EsamePID: TStringField;
    EsameQUESITO_DIAGN: TStringField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Item24: TdxLayoutItem;
    dxLayoutControl1Group17: TdxLayoutGroup;
    cxDBMaskEdit1: TcxDBLabel;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBMaskEdit2: TcxDBLabel;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxBarManager1Bar1: TdxBar;
    EsameDIAGNOSTICA: TStringField;
    EsameCONTROLLO: TIntegerField;
    PrestazioniBRANCA: TStringField;
    PrestazioniDESCRIZIONE: TStringField;
    GridPrestazioniBRANCA: TcxGridDBColumn;
    GridPrestazioniDESCRIZIONE: TcxGridDBColumn;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup;
    aInviaWCF: TAction;
    PrestazioniPKT: TIntegerField;
    PrestazioniXSTATO: TIntegerField;
    EsameTIPO_ACCESSO: TStringField;
    EsameDATA_VISITA: TDateTimeField;
    EsamePKIMPEGNATIVE: TIntegerField;
    GridPrestazioniXSTATO: TcxGridDBColumn;
    MisureRichieste: TAstaClientDataSet;
    MisureRichiesteBRANCA: TStringField;
    MisureRichiesteCOD_ESTERNO: TStringField;
    cxGrid1Level2: TcxGridLevel;
    GridMisure: TcxGridDBTableView;
    dsMisureRichieste: TDataSource;
    MisureRichiesteDESC_ESTERNA: TStringField;
    GridMisureBRANCA: TcxGridDBColumn;
    GridMisureCOD_ESTERNO: TcxGridDBColumn;
    GridMisureDESC_ESTERNA: TcxGridDBColumn;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    PrestazioniDEVICE: TIntegerField;
    aChiamaHeS: TAction;
    procedure AnnullaExecute(Sender: TObject);
    procedure AnnullaUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StampeExecute(Sender: TObject);
    procedure PrestazioniAfterPost(DataSet: TDataSet);
    procedure EseguitoExecute(Sender: TObject);
    procedure CancellaEsameExecute(Sender: TObject);
    procedure CancellaEsameUpdate(Sender: TObject);
    procedure PrecedentiExecute(Sender: TObject);
    procedure PrestazioniAfterDelete(DataSet: TDataSet);
    procedure ConfermaExecute(Sender: TObject);
    procedure ConfermaUpdate(Sender: TObject);
    procedure NonRefertareExecute(Sender: TObject);
    procedure PrestazioniBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure EsameBeforePost(DataSet: TDataSet);
    procedure EseguitoUpdate(Sender: TObject);
    procedure StampeUpdate(Sender: TObject);
    procedure NonRefertareUpdate(Sender: TObject);
    procedure GridPrestazioniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BaseFormDestroy(Sender: TObject);
    procedure csEZKeys1KeyIntercept(KeyType: TNavigationKey;
      Ctrl: TControl; var Intercept: Boolean);
    procedure cxDBRichMemo1Enter(Sender: TObject);
    procedure cxDBRichMemo1Exit(Sender: TObject);
    procedure cxDBNoteEsameEnter(Sender: TObject);
    procedure cxDBNoteEsameExit(Sender: TObject);
    procedure aInviaWCFExecute(Sender: TObject);
    procedure GridPrestazioniNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure aInviaWCFUpdate(Sender: TObject);
    procedure MisureRichiesteBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure GridPrestazioniDblClick(Sender: TObject);
    procedure PrestazioniAfterPopulate(Sender: TObject);
    procedure aChiamaHeSExecute(Sender: TObject);
  private
    { Private declarations }
    FInEseguito: boolean;
    FConConferma: boolean;
    FModificato: boolean;
    FTutti: boolean;
    ControlloAttivo: boolean;
    FEseguitoAutomatico: boolean;
    FEsamiNuovidaEseguire: integer;

    procedure ControllaTutti;
    procedure SalvaTutto;
    function ControlloCampi: integer;
    procedure EseguitoEsame(xst: integer; guardiamedica: boolean);
    procedure FocusSulCampo(var Message: TMessage); message SY_FOCUSPRIMOCAMPO;

//    property Tutti: boolean read FTutti write FTutti;

  protected
    procedure DoCreate; override;
    procedure StartPersonalizza; override;
    procedure StopPersonalizza; override;
    procedure ResetPersonalizza; override;    
  public
    { Public declarations }
//    xdata_visita: TDateTime;
    StatoLancio: integer;

    procedure EseguitoPistola(pswd: string);
    property EseguitoAutomatico: boolean read FEseguitoAutomatico write FEseguitoAutomatico;
    property ConConferma: boolean read FConConferma write FConConferma;
  end;


var
  FDatiWCF: TFDatiWCF;


implementation

uses DMCommon, Forms, dateutils, variants, Windows,
     graphics, sysutils, Msgdlgs, AstaDBtypes,
     VisitePrecRAD,
     CallWCF,
{$IFDEF UscitaSospensione}
     UscitaSospensione,
{$ENDIF}
     ConfermaPswdRep,
     StampaAvvisi,
     Anagrafica,
     IInterface;

{$R *.DFM}

procedure TFDatiWCF.SalvaTutto;
begin

  FDMCommon.AstaClientSocket.SendDataSetTransactions(Name,[Prestazioni,Esame]);

  FModificato := false;

end;


procedure TFDatiWCF.AnnullaExecute(Sender: TObject);
begin
  inherited;
  if (Esame.State in dsEditModes) then
     Esame.Cancel;
  ModalResult := mrCancel;
end;

procedure TFDatiWCF.AnnullaUpdate(Sender: TObject);
begin
  inherited;
//  Annulla.Enabled := not FModificato;       ToDo:  gestire no annullamento in modifica
end;

procedure TFDatiWCF.FormShow(Sender: TObject);
//var
//  i: integer;
begin
  inherited;

	Prestazioni.open;
  MisureRichieste.open;
  try
    ControlloAttivo := false;
{
    Prestazioni.DisableControls;
    while not Prestazioni.eof do
    begin
       Prestazioni.Edit;
       PrestazioniPROGRESSIVO_RIGA.AsInteger := Prestazioni.recno;
//       if PrestazioniSTATO.AsInteger=0 then
//          PrestazioniSTATO.AsInteger := 1;
       Prestazioni.Post;
       Prestazioni.Next;
    end;
}
  finally
     ControlloAttivo := true;
//     Prestazioni.EnableControls;
  end;

  ControllaTutti;

//  NonRefertare.Enabled := (EsameCHK_NON_REFERTARE.AsInteger=1) or gblUserIsAdmin or gblSuperUser;
//  NonRefertare.Visible := (EsameCHK_NON_REFERTARE.AsInteger=1) or gblUserIsAdmin or gblSuperUser;

(*
  if EsameSTATOVISITA.AsInteger=100 then
  begin
     Conferma.Caption := RIS_Accetta;
//     ActiveControl := btSalva;
     PostMessage(Handle,SY_FOCUSPRIMOCAMPO,0,LongInt(btSalva));
  end
  else
     PostMessage(Handle,SY_FOCUSPRIMOCAMPO,0,LongInt(btEseguito));
*)

  GridPrestazioni.ViewData.Collapse(False);

end;

procedure TFDatiWCF.StampeExecute(Sender: TObject);
var
  res: integer;
  xstato: Integer;
begin
  inherited;

  if not (Esame.State in dsEditModes) then
     Esame.Edit;

  xstato := ControlloCampi;
 	EsameSTATOVISITA.AsInteger := xstato;
  SalvaTutto;

  if xstato=130 then
  begin
      FStampaAvvisi := TFStampaAvvisi.Create(nil);
      try
         FStampaAvvisi.Conferma.Visible := false;
         FStampaAvvisi.Conferma.Enabled := false;
         FStampaAvvisi.xDataset := Esame;
         FStampaAvvisi.Caption := 'Stampe esecuzione esame';
         if EsamePROVENIENZA.AsString='E' then
            FStampaAvvisi.CaricaStampe := 40
         else if EsamePROVENIENZA.AsString='I' then
            FStampaAvvisi.CaricaStampe := 41
         else // if EsamePROVENIENZA.AsString='P' then
            FStampaAvvisi.CaricaStampe := 42;
         res := FStampaAvvisi.ShowModal;
      finally
         FStampaAvvisi.Free;
         FStampaAvvisi := nil;
      end;
    {
      if res=mrOk then
         ModalResult := mrOk;
    }
  end;

  case xstato of
  198:  ModalResult := mrNo;   // -- Non refertare
  120:  ModalResult := mrOk;   // -- Da eseguire
  130:  ModalResult := mrOk;   //mrYes;  // -- Attesa conferma ricezione dati
  else
      ModalResult := mrOk;
  end;

end;

procedure TFDatiWCF.PrestazioniAfterPost(DataSet: TDataSet);
begin
  inherited;

  FModificato := true;
  if ControlloAttivo then
  begin
     ControlloAttivo := False;
     try
		   ControllaTutti;
     finally
        ControlloAttivo := True;
     end;
  end;
  
end;


procedure TFDatiWCF.ControllaTutti;
var
  pkp: string;
begin
  Prestazioni.DisableControls;
  pkp := PrestazioniBRANCA.AsString;
  Prestazioni.First;
  Ftutti := true;
  while not Prestazioni.eof do
  begin
     Ftutti := Ftutti and (PrestazioniXSTATO.AsInteger>0);  // in [1,2,3]);
     Prestazioni.Next;
  end;
//  Tutti := FTutti;
  Prestazioni.Locate('BRANCA',pkp,[]);
  Prestazioni.EnableControls;
end;


procedure TFDatiWCF.EseguitoExecute(Sender: TObject);
begin
  if FInEseguito then exit;
  FInEseguito := true;
  try
    EseguitoEsame(130,false);
  finally
    FInEseguito := false;
  end;
end;


procedure TFDatiWCF.EseguitoEsame(xst: integer; guardiamedica: boolean);
var
  StatoEsame: integer;
begin
  inherited;

 StatoEsame := ControlloCampi;

 if {not} ConConferma and not EseguitoAutomatico and (MsgDlgPos(RS_Gene_Msg_ConfEseguito, '', ktConfirmation, [kbYes,kbNo], dfFirst)<>mrYes) then
        exit;

 if (EsameSAN_IDENT.AsInteger=1) and not ConfermaAnagrafica(EsameASSISTIBILI_FK.AsInteger,FDMCommon.CalcolaStatolancio(130,EsameTIPO_ACCESSO.AsString)) then
 begin
    MsgDlg(RS_AnagraficaIncompleta,'', ktWarning, [kbOK]);
    Abort;
 end;

  if not (Esame.State in dsEditModes) then
     Esame.Edit;

  if (EsameESEGUITO.AsInteger=2) or (StatoEsame=198) then
 	   EsameSTATOVISITA.AsInteger := 198
  else
 	   EsameSTATOVISITA.AsInteger := xst;

{JRT 5298 - ex:
  EsameDATA_VISITA.AsDateTime := Now();
}
     EsameDATA_VISITA.Clear;
{}

  SalvaTutto;
  if xst=130 then
  begin
     ModalResult := mrOk;  //mrYes;
  end
  else if xst=110 then
  begin
     ModalResult := mrYes;
  end
  else
     ModalResult := mrIgnore;

end;


procedure TFDatiWCF.DoCreate;
begin
  inherited;

//  Personalizza := gblSuperUser;
  FDMCommon.CaricaLayout(Name,dxLayoutControl1);

  ControlloAttivo := true;
  FInEseguito := false;
  FModificato := false;
  FEseguitoAutomatico := false;
  FEsamiNuovidaEseguire := 0;
{ ???
  FDMCommon.TipoAttivita.Filtered := false;
  FDMCommon.TipoAttivita.Filter := format('PROVENIENZA = '#39'%s'#39,[EsamePROVENIENZA.AsString]);
  FDMCommon.TipoAttivita.Filtered := true;
}

end;

procedure TFDatiWCF.CancellaEsameExecute(Sender: TObject);
begin
  inherited;
  if MsgDlgPos( RS_Gene_Msg_ConfCanc, '', ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes then
  begin
      Prestazioni.Delete;
{
      Prestazioni.Edit;
      PrestazioniSTATO.AsInteger := 4;
      Prestazioni.Post;
}
  end;

end;

procedure TFDatiWCF.CancellaEsameUpdate(Sender: TObject);
begin
  inherited;
  CancellaEsame.Enabled := not Prestazioni.IsEmpty and {(GridPrestazioni.SelectedCount>0) and} ((PrestazioniXSTATO.AsInteger=0) or ((PrestazioniXSTATO.AsInteger=1) and (PrestazioniDEVICE.AsInteger=0)));
end;

procedure TFDatiWCF.PrecedentiExecute(Sender: TObject);
begin
  inherited;
  FVisitePrecRAD := TFVisitePrecRAD.Create(nil);
  try
     FVisitePrecRAD.xpka := EsameASSISTIBILI_FK.AsInteger;
     FVisitePrecRAD.xpki := EsamePKIMPEGNATIVE.AsInteger;
     FVisitePrecRAD.ShowModal;
  finally
     FVisitePrecRAD.Free;
     FVisitePrecRAD := nil;
  end;

end;

procedure TFDatiWCF.PrestazioniAfterDelete(DataSet: TDataSet);
begin
  inherited;
{
    Prestazioni.DisableControls;
    Prestazioni.First;
    while not Prestazioni.eof do
    begin
       Prestazioni.Edit;
       PrestazioniPROGRESSIVO_RIGA.AsInteger := Prestazioni.recno;
       Prestazioni.Post;
       Prestazioni.Next;
    end;
    Prestazioni.EnableControls;
}
end;

procedure TFDatiWCF.ConfermaExecute(Sender: TObject);
var
  xstato: integer;
begin
  inherited;

  if not (Esame.State in dsEditModes) then
     Esame.Edit;

  xstato := ControlloCampi;
(*
  case xstato of
  130:
      try
        ControlloAttivo := false;
        Prestazioni.DisableControls;
        Prestazioni.First;
        while not Prestazioni.eof and (xstato=130) do
        begin
           if (PrestazioniXSTATO.AsInteger=0) then
              xstato := 120;
           Prestazioni.Next;
        end;
      finally
         ControlloAttivo := true;
         Prestazioni.EnableControls;
      end;
//  100: EsameSTATOVISITA.AsInteger := 120;
  end;
*)
 	EsameSTATOVISITA.AsInteger := xstato;
//  EsameDATA_VISITA.Clear;
//  EsameDATA_VISITA.AsDateTime := Now();

  SalvaTutto;
  case xstato of
  198:  ModalResult := mrNo;   // -- Non refertare
  120:  ModalResult := mrOk;
  130:  ModalResult := mrOk;  //mrYes;
  else
      ModalResult := mrOk;
  end;

end;

procedure TFDatiWCF.ConfermaUpdate(Sender: TObject);
begin
  inherited;
  Conferma.Enabled := not Prestazioni.IsEmpty and (Prestazioni.HasChanged);
end;

procedure TFDatiWCF.NonRefertareExecute(Sender: TObject);
begin
  inherited;

  ControlloCampi;

  if {not} ConConferma and not EseguitoAutomatico and (MsgDlgPos( RS_Gene_Msg_ConfNonRef, '', ktConfirmation, [kbYes,kbNo], dfFirst)<>mrYes) then
        exit;

  if not (Esame.State in dsEditModes) then
     Esame.Edit;

 	EsameSTATOVISITA.AsInteger := 198; // 99;

{JRT 5298 - ex:
  EsameDATA_VISITA.AsDateTime := Now();
}
     EsameDATA_VISITA.Clear;
{}

  try
    ControlloAttivo := false;
    Prestazioni.DisableControls;
    Prestazioni.First;
    while not Prestazioni.eof do
    begin
       if (PrestazioniXSTATO.AsInteger=0) then
       begin
       	  Prestazioni.Edit;
          PrestazioniXSTATO.AsInteger := 1;
       	  Prestazioni.Post;
       end;
       Prestazioni.Next;
    end;
  finally
     ControlloAttivo := true;
     Prestazioni.EnableControls;
  end;

  SalvaTutto;
  ModalResult := mrNo;

end;

procedure TFDatiWCF.PrestazioniBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('pktriage').AsInteger := EsamePKTRIAGE.AsInteger;
end;

procedure TFDatiWCF.EsameBeforePost(DataSet: TDataSet);
begin
  inherited;

  EsameUSER_ID.AsInteger := gblCodUtente;

end;


function TFDatiWCF.ControlloCampi: integer;
var
  almenouno: boolean;
  qNoDevice: Integer;
  qTutti: Integer;
  qFatti: Integer;
  qNonRefer: Integer;
begin
{ -- eliminato: edit non più possibile
    if ((EsamePROVENIENZA.AsString='I') or (EsamePROVENIENZA.AsString='P')) and EsameREPARTO_RICH_FK.IsNull then
    begin
      MsgDlg(format(RIS_CampoObbligatorio,[EsameREPARTO_RICH_FK.DisplayLabel]), '', ktWarning, [kbOK]);
      EsameREPARTO_RICH_FK.FocusControl;
      Abort;
    end;
    if ((EsamePROVENIENZA.AsString='I') or (EsamePROVENIENZA.AsString='P')) and EsameSERVIZIO_RICH_FK.IsNull then
    begin
      MsgDlg(format(RIS_CampoObbligatorio,[EsameSERVIZIO_RICH_FK.DisplayLabel]), '', ktWarning, [kbOK]);
      EsameSERVIZIO_RICH_FK.FocusControl;
      Abort;
    end;
}
{
    if ((EsamePROVENIENZA.AsString='I') or (EsamePROVENIENZA.AsString='P')) and EsameCOD_MED_INT.IsNull then
    begin
      MsgDlg(format(RIS_CampoObbligatorio,[EsameCOD_MED_INT.DisplayLabel]), '', ktWarning, [kbOK]);
      EsameCOD_MED_INT.FocusControl;
      Abort;
    end;
}

  try
    ControlloAttivo := false;
    Prestazioni.DisableControls;
    Prestazioni.First;
    almenouno := false;
    qNoDevice := 0;
    qTutti := 0;
    qFatti := 0;
    result := 120;
    qNonRefer := 0;

    while not Prestazioni.eof {and not almenouno} do
    begin
       if (PrestazioniDEVICE.AsInteger=0) then
       begin
           Prestazioni.Edit;
           PrestazioniXSTATO.AsInteger := 1;
           Prestazioni.Post;
           Inc(qNoDevice);
       end
       else if PrestazioniXSTATO.AsInteger=1 then
       begin
           if (PrestazioniDEVICE.AsInteger=2) then
              Inc(qNonRefer)
           else
              Inc(qFatti);
       end;

       Inc(qTutti);
       if not almenouno then
          almenouno := (PrestazioniXSTATO.AsInteger in [0,1,2,3]);
       Prestazioni.Next;
    end;

    if (qNoDevice = qTutti) then
        result := 198
    else if (qNoDevice+qNonRefer+qFatti)=qTutti then
        result := 130
    else
        Result := 120;

  finally
     ControlloAttivo := true;
     Prestazioni.EnableControls;
  end;

  if not almenouno then
  begin
    MsgDlg(RAD_AlmenoUnEsame,'', ktWarning, [kbOK]);
    Abort;
  end;

end;


procedure TFDatiWCF.EseguitoUpdate(Sender: TObject);
begin
  inherited;
//  Eseguito.Enabled := not Prestazioni.IsEmpty and FTutti and {(EsameNON_REFERTARE.AsInteger=0) and} (FEsamiNuovidaEseguire=0) and not (StatoLancio=130) and not FInEseguito and not (EsameSTATOVISITA.AsInteger=100);
end;

procedure TFDatiWCF.StampeUpdate(Sender: TObject);
begin
  inherited;
//  Stampe.Enabled := not Prestazioni.IsEmpty and (Prestazioni.HasChanged);
  Stampe.Enabled := not Prestazioni.IsEmpty and Ftutti;
end;

procedure TFDatiWCF.NonRefertareUpdate(Sender: TObject);
begin
  inherited;
//  NonRefertare.Enabled := not Prestazioni.IsEmpty;
end;

procedure TFDatiWCF.EseguitoPistola(pswd: string);
begin
   if Assigned(FConfermaPswdRep) then
      FConfermaPswdRep.VerificaPistola(pswd)
   else //if EsameNON_REFERTARE.AsInteger=0 then
      Eseguito.Execute
{   else
      NonRefertare.Execute};
end;

procedure TFDatiWCF.GridPrestazioniKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=VK_RETURN) then
     aInviaWCF.Execute;

end;

procedure TFDatiWCF.BaseFormDestroy(Sender: TObject);
begin
  inherited;
  if Application.MainForm.WindowState = wsMinimized then
     Application.MainForm.WindowState := wsMaximized;
end;


procedure TFDatiWCF.csEZKeys1KeyIntercept(KeyType: TNavigationKey;
  Ctrl: TControl; var Intercept: Boolean);
begin
  inherited;
  Intercept := Intercept and Assigned(Ctrl) and not (Ctrl is TcxCustomInnerMemo);
end;

procedure TFDatiWCF.FocusSulCampo(var Message: TMessage);
begin
  inherited;
  TWinControl(Message.LParam).SetFocus;
end;

procedure TFDatiWCF.cxDBRichMemo1Enter(Sender: TObject);
begin
  inherited;
  oldReadBarCode := ReadBarCode;
  ReadBarCode := False;
end;

procedure TFDatiWCF.cxDBRichMemo1Exit(Sender: TObject);
begin
  inherited;
  ReadBarCode := oldReadBarCode;
end;

procedure TFDatiWCF.cxDBNoteEsameEnter(Sender: TObject);
begin
  inherited;
  oldReadBarCode := ReadBarCode;
  ReadBarCode := False;
end;

procedure TFDatiWCF.cxDBNoteEsameExit(Sender: TObject);
begin
  inherited;
  ReadBarCode := oldReadBarCode;
end;

procedure TFDatiWCF.StartPersonalizza;
begin
  LanciaPersonalizza(dxLayoutControl1,FDMCommon.qFormLayout);
end;

procedure TFDatiWCF.StopPersonalizza;
begin
  FDMCommon.SalvaPersonalizza(Name,dxLayoutControl1,gblcodutente);
end;

procedure TFDatiWCF.ResetPersonalizza;
begin
  if FDMCommon.ResetLayout(Name,dxLayoutControl1) then
     Annulla.Execute;
end;

procedure TFDatiWCF.aInviaWCFExecute(Sender: TObject);
begin
  PostMessage(Handle,SY_DBLCLICK,LongInt(GridPrestazioni),LongInt(aChiamaHeS));
end;


procedure TFDatiWCF.GridPrestazioniNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
  NBDI_DELETE:    begin
                     CancellaEsame.Execute;
                     ADone := True;
                  end;
  NBDI_FILTER+1:  aInviaWCF.Execute;
  end;
end;

procedure TFDatiWCF.aInviaWCFUpdate(Sender: TObject);
begin
  inherited;
  aInviaWCF.Enabled := not Prestazioni.IsEmpty and (PrestazioniXSTATO.AsInteger in [0,1]) and (PrestazioniDEVICE.AsInteger in [1,2]);
end;

procedure TFDatiWCF.MisureRichiesteBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('pktriage').AsInteger := EsamePKTRIAGE.AsInteger;
end;

procedure TFDatiWCF.GridPrestazioniDblClick(Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_DBLCLICK,LongInt(GridPrestazioni),LongInt(aInviaWCF));
end;

procedure TFDatiWCF.PrestazioniAfterPopulate(Sender: TObject);
begin
  inherited;
  ControlloCampi;
end;

procedure TFDatiWCF.aChiamaHeSExecute(Sender: TObject);
var
  misure: string;
  pbranca: string;
begin

  if FDMCommon.LeggiPostoLavoroWCF_URI.IsNull then
  begin
      MsgDlg(RS_UriWCFNonDefinito,'', ktWarning, [kbOK]);
      Exit;
  end;

  pbranca := PrestazioniBRANCA.AsString;
  GridPrestazioni.BeginUpdate();
  MisureRichieste.CancelRange;
  try
  MisureRichieste.SetRange([pbranca],[pbranca]);
  if not MisureRichieste.IsEmpty then
  begin
    misure := '';
    while not MisureRichieste.eof do
    begin
       if misure<>'' then
          misure := misure + ',';
       misure := misure + MisureRichiesteCOD_ESTERNO.AsString;
       MisureRichieste.Next;
    end;
  end;
  finally
     MisureRichieste.CancelRange;
  end;

  Prestazioni.Locate('BRANCA',pbranca,[]);
//  GridPrestazioni.EndUpdate();
  GridPrestazioni.ViewData.Collapse(False);
  GridPrestazioni.CancelUpdate;

  if PostWCF(FDMCommon.LeggiPostoLavoroWCF_URI.AsString, EsameRIS_STUDY_EUID.AsString, pbranca, misure) then
  begin
     Prestazioni.Edit;
     PrestazioniXSTATO.AsInteger := 1;
     Prestazioni.Post;
//  end
//  else begin
//     MsgDlg(RS_ChiamataWCFNonRiuscita,'', ktWarning, [kbOK]);
  end;

end;

end.
