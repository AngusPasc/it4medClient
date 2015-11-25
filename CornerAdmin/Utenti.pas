unit Utenti;

interface

uses
  BaseGrid, Messages, IIConsts, {}dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxMaskEdit,
  cxTextEdit, cxCheckBox, cxContainer, Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinsdxBarPainter,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxRibbonPainter,
  rsStorage, rsPropSaver, AstaUpdateSQL, dxPSCore, dxPScxCommon, AstaDrv2,
  Classes, ActnList, dxBar, AstaClientDataset, cxClasses, cxSplitter,
  StdCtrls, cxButtons, cxSpinEdit, cxDBEdit, cxDropDownEdit, cxCalendar,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxPC, Controls, rsXmlData, dxPScxSchedulerLnk,
  dxPSdxDBOCLnk, cxDBNavigator, dxPSdxLCLnk;
  
type
  TFUtenti = class(TFBaseGrid)
    dxBarManager1: TdxBarManager;
    Utenti: TAstaClientDataSet;
    UtentiPKPERSONALE: TIntegerField;
    UtentiTITOLO: TStringField;
    UtentiCOGNOME: TStringField;
    UtentiNOME: TStringField;
    UtentiCOD_FUNZIONE: TIntegerField;
    UtentiDATA_INIZIO: TDateTimeField;
    UtentiDATA_FINE: TDateTimeField;
    UtentiPASSWORD: TStringField;
    UtentiMOD_PASSWORD: TDateTimeField;
    UtentiMDP_CODICE: TStringField;
    sUtenti: TDataSource;
    ControlloPswd: TAstaClientDataSet;
    ControlloPswdPKPERSONALE: TIntegerField;
    ControlloPswdCOGNOME: TStringField;
    ControlloPswdNOME: TStringField;
    dxPageControl: TcxPageControl;
    dxTabElenco: TcxTabSheet;
    dxTabScheda: TcxTabSheet;
    TabFunzioni: TAstaClientDataSet;
    sTabFunzioni: TDataSource;
    UtentiD_FUNZIONE: TStringField;
    dxTabDiritti: TcxTabSheet;
    TabFunzioniPKTABFUNZIONI: TIntegerField;
    TabFunzioniDESCRIZIONE: TStringField;
    rsAccessi: TrsStorage;
    rsXMLAccessi: TrsXMLData;
    UtentiISADMIN: TIntegerField;
    dxBarPopupMenu1: TdxBarPopupMenu;
    ActionList1: TActionList;
    UtentiPROFILO_VOCALE: TStringField;
    TabFunzioniPROFILO: TBlobField;
    cxGridFunzioni: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Abilitazioni: TAstaDataSet;
    sAbilitazioni: TDataSource;
    AbilitazioniCHIAVE: TStringField;
    AbilitazioniDESCRIZIONE: TStringField;
    cxGridFunzioniCHIAVE: TcxGridDBColumn;
    cxGridFunzioniDESCRIZIONE: TcxGridDBColumn;
    cxGridFunzioniCHECKED: TcxGridDBColumn;
    AbilitazioniCHECKED: TIntegerField;
    UtentiMATRICOLA: TStringField;
    ControlloPswdMATRICOLA: TStringField;
    cxGrid3: TcxGrid;
    cxGrid3Level1: TcxGridLevel;
    cxGridUtenti: TcxGridDBTableView;
    cxGridUtentiPKPERSONALE: TcxGridDBColumn;
    cxGridUtentiMATRICOLA: TcxGridDBColumn;
    cxGridUtentiCOGNOME: TcxGridDBColumn;
    cxGridUtentiD_FUNZIONE: TcxGridDBColumn;
    cxGridUtentiMDP_CODICE: TcxGridDBColumn;
    cxGridUtentiPROFILO_VOCALE: TcxGridDBColumn;
    cxGridUtentiISADMIN: TcxGridDBColumn;
    StampaUtenti: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    dxBarButton4: TdxBarButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDBMaskEdit1: TcxDBMaskEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBMaskEdit2: TcxDBMaskEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBMaskEdit3: TcxDBMaskEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBMaskEdit4: TcxDBMaskEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBLookupProfilo: TcxDBLookupComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBMaskEdit5: TcxDBMaskEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBDateEdit3: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutAmministratore: TdxLayoutItem;
    cxDBMaskEdit6: TcxDBMaskEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    aStampaLabel: TAction;
    dxBarButton5: TdxBarButton;
    UtentiLOGIN_NT: TStringField;
    cxDBMaskEdit8: TcxDBMaskEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    ControlloNT: TAstaClientDataSet;
    ControlloNTPKPERSONALE: TIntegerField;
    ControlloNTCOGNOME: TStringField;
    ControlloNTNOME: TStringField;
    ControlloNTMATRICOLA: TStringField;
    TabFunzioniREPARTI_FK: TIntegerField;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    cxGrid2: TcxGrid;
    cxGridProfili: TcxGridDBTableView;
    cxGridProfiliCOD_FUNZIONE: TcxGridDBColumn;
    cxGridProfiliDESCRIZIONE: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    UtentiIUT: TStringField;
    cxDBMaskEdit9: TcxDBMaskEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    TabFunzioniIMMAGINI: TIntegerField;
    TabFunzioniREFERTO: TIntegerField;
    cxGridProfiliIMMAGINI: TcxGridDBColumn;
    cxGridProfiliREFERTO: TcxGridDBColumn;
    TabFunzioniBLOCCHI: TIntegerField;
    cxGridProfiliBLOCCHI: TcxGridDBColumn;
    UtentiFUNZ_INTERNI: TIntegerField;
    UtentiADMIN: TIntegerField;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLaySuperUser: TdxLayoutItem;
    UtentiESTRAZIONE_DATI: TIntegerField;
    cxDBCheckBox4: TcxDBCheckBox;
    dxLayoutEstrazioneDati: TdxLayoutItem;
    updUtenti: TAstaUpdateSQL;
    aMemberOf: TAction;
    dxBarButton3: TdxBarButton;
    TabFunzioniCUP: TIntegerField;
    cxGridProfiliCUP: TcxGridDBColumn;
    TabFunzioniESEGUITO: TIntegerField;
    cxGridProfiliESEGUITO: TcxGridDBColumn;
    UtentiSERVIZI_FK: TIntegerField;
    sServizioRadiologia: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutServizio: TdxLayoutItem;
    UtentiREPARTI_FK: TIntegerField;
    UtentiTELEFONO: TStringField;
    cxDBMaskEdit10: TcxDBMaskEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxGridUtentiDATA_FINE: TcxGridDBColumn;
    cxDBFunzione: TcxDBLookupComboBox;
    dxLayoutFunzione: TdxLayoutItem;
    cxGridUtentiFUNZ_INTERNI: TcxGridDBColumn;
    UtentiSERVIZIO: TStringField;
    cxGridUtentiSERVIZIO: TcxGridDBColumn;
    cxGridUtentiLOGIN_NT: TcxGridDBColumn;
    UtentiTIPO_CARTA: TIntegerField;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxSplitter1: TcxSplitter;
    UtentiDBLCLICKTIME: TIntegerField;
    cxDBSpinEdit1: TcxDBSpinEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxButton2: TcxButton;
    dxLayoutControl1Item19: TdxLayoutItem;
    TabFunzioniSPOSTA: TIntegerField;
    cxGridProfiliSPOSTA: TcxGridDBColumn;
    UtentiALLOW_OVERBOOKING: TIntegerField;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControlOverbooking: TdxLayoutItem;
    TabFunzioniSETUP: TIntegerField;
    cxGridProfiliSETUP: TcxGridDBColumn;
    dxLayoutControlFirmaDigitale: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxCodiceFiscale: TcxDBMaskEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxButton3: TcxButton;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    CaricaPrivateKey: TAction;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutTipoSmartcard: TdxLayoutItem;
    sDLLFirma: TDataSource;
    UtentiCODICE_FISCALE: TStringField;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    sqLoginLogout: TDataSource;
    qLoginLogout: TAstaClientDataSet;
    qLoginLogoutPERSONALE_FK: TIntegerField;
    qLoginLogoutDATA_LOGIN: TDateTimeField;
    qLoginLogoutWORKSTATION_FK: TIntegerField;
    qLoginLogoutDATA_LOGOUT: TDateTimeField;
    qLoginLogoutPKLOG_PERSONALE: TIntegerField;
    qLoginLogoutCOMPUTERNAME: TStringField;
    cxGrid4DBTableView1PERSONALE_FK: TcxGridDBColumn;
    cxGrid4DBTableView1DATA_LOGIN: TcxGridDBColumn;
    cxGrid4DBTableView1WORKSTATION_FK: TcxGridDBColumn;
    cxGrid4DBTableView1DATA_LOGOUT: TcxGridDBColumn;
    cxGrid4DBTableView1PKLOG_PERSONALE: TcxGridDBColumn;
    cxGrid4DBTableView1COMPUTERNAME: TcxGridDBColumn;
    qLoginLogoutTIPO_LOG: TIntegerField;
    cxGrid4DBTableView1TIPO_LOG: TcxGridDBColumn;
    UtentiRESET_PSWD: TIntegerField;
    cxDBReset: TcxDBCheckBox;
    dxLayoutControlReset: TdxLayoutItem;
    dxBarManager1Bar3: TdxBar;    
dxBarManager1Bar2: TdxBar;
    sProfili: TDataSource;
    UtentiNOMINATIVO: TStringField;
    rsPropSaver1: TrsPropSaver;
    aModificaUtente: TAction;
    cxDBNavigator1: TcxDBNavigator;
    UtentiEMAIL: TStringField;
    cxDBMaskEdit7: TcxDBMaskEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group12: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group8: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group11: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group14: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group13: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group15: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group16: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group17: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group9: TdxLayoutAutoCreatedGroup;
    procedure UtentiBeforePost(DataSet: TDataSet);
    procedure UtentiNewRecord(DataSet: TDataSet);
    procedure UtentiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure UtentiPASSWORDGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure UtentiPASSWORDSetText(Sender: TField; const Text: String);
    procedure rsXMLAccessiAfterLoad(Sender: TObject);
    procedure rsXMLAccessiBeforeSave(Sender: TObject);
    procedure StampaUtentiExecute(Sender: TObject);
    procedure UtentiBeforeEdit(DataSet: TDataSet);
    procedure aStampaLabelExecute(Sender: TObject);
    procedure cxDBMaskEdit8Enter(Sender: TObject);
    procedure TabFunzioniBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure TabFunzioniNewRecord(DataSet: TDataSet);
    procedure TabFunzioniBeforeDelete(DataSet: TDataSet);
    procedure cxGridProfiliFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGridFunzioniCHECKEDPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure aMemberOfExecute(Sender: TObject);
    procedure aMemberOfUpdate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure dxLayoutControl1DblClick(Sender: TObject);
    procedure rsXMLAccessiLoadFromStream(Sender: TObject; Stream: TStream;
      var DoStandard: Boolean);
    procedure rsXMLAccessiSaveToStream(Sender: TObject; Stream: TStream;
      var DoStandard: Boolean);
    procedure CaricaPrivateKeyExecute(Sender: TObject);
    procedure CaricaPrivateKeyUpdate(Sender: TObject);
    procedure qLoginLogoutBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure sUtentiDataChange(Sender: TObject; Field: TField);
    procedure dxPageControlPageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure cxDBCheckBox3PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure aStampaLabelUpdate(Sender: TObject);
    procedure StampaUtentiUpdate(Sender: TObject);
    procedure cxGridUtentiNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cxGridUtentiDblClick(Sender: TObject);
    procedure aModificaUtenteExecute(Sender: TObject);
    procedure aModificaUtenteUpdate(Sender: TObject);
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
    FUserToken: THandle;
    FOldUser: string;
    FOldPswd: string;
    procedure CaricaProfilo(rs: TrsStorage); overload;
    procedure CaricaProfilo(rs: TrsPropSaver); overload;
    function CercaDescrizione(const cosa: string): string;
    procedure PostValore(var Message: TMessage); message SY_CHECKCHANGED;
    function EmptyDataset: boolean;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure DoShow; override;
    function CaricaToolBar: TdxBars; override;
  end;

var
  FUtenti: TFUtenti;

implementation

uses
  DMCommon, Windows, Msgdlgs, crypto, sysutils, Variants, StampaAvvisi,
  MemberOfRad, PrivateKey, {MainMenu,} dxCustomTileControl,
{$IFNDEF MEDICORNER}
  FirmaSISS,
  FirmaSISSWay,
{$ENDIF}  
  Forms, dxPrnDlg, IInterface;

{$R *.dfm}

function TFUtenti.CaricaToolBar: TdxBars;
begin
  result := dxBarManager1.Bars;
end;

procedure TFUtenti.UtentiBeforePost(DataSet: TDataSet);
begin

  if UtentiDATA_FINE.IsNull and UtentiPASSWORD.IsNull then
  begin
     MsgDlg(format(RIS_CampoObbligatorio,[UtentiPASSWORD.DisplayLabel]), '', ktWarning, [kbOK]);
     UtentiPASSWORD.FocusControl;
     Abort;
  end;

{JRT 5050 : controlli da spostati nel DB: ma su errore si punta sempre sul primo record}
  if not UtentiPASSWORD.IsNull and not UtentiLOGIN_NT.IsNull then
  begin
    ControlloPswd.Parambyname('LOGIN_NT').AsString := UtentiLOGIN_NT.AsString;
    ControlloPswd.Parambyname('PASSWORD').AsString := Encrypt(UtentiPASSWORD.AsString);
    ControlloPswd.Parambyname('PKPERSONALE').AsInteger := UtentiPKPERSONALE.AsInteger;
    ControlloPswd.syRefresh;

    if not ControlloPswd.IsEmpty then
    begin
       MsgDlg(RS_PasswordUsata, '', ktError, [kbOK]);
       UtentiPASSWORD.FocusControl;
       Abort;
    end;
  end;
  
{
  ControlloNT.Parambyname('LOGIN_NT').AsString := UtentiLOGIN_NT.AsString;
  ControlloNT.Parambyname('PKPERSONALE').AsInteger := UtentiPKPERSONALE.AsInteger;
  ControlloNT.syRefresh;

  if not ControlloNT.IsEmpty then
  begin
     MsgDlg(RS_LoginNTUsato, '', ktError, [kbOK]);
     UtentiLOGIN_NT.FocusControl;
     Abort;
  end;
}
 try
  except
     on E: Exception do
        MsgDlg(E.Message, '', ktError, [kbOk], dfFirst);
  end;

end;

constructor TFUtenti.Create(AOwner: TComponent);
begin

  inherited;

  cxGridProfili.OptionsData.Appending := gblSuperUser or gblUserIsAdmin;
  cxGridProfili.OptionsData.Deleting := gblSuperUser or gblUserIsAdmin;
  cxGridProfili.OptionsData.Editing := gblSuperUser or gblUserIsAdmin;
  cxGridProfili.OptionsData.Inserting := gblSuperUser or gblUserIsAdmin;

  cxGridFunzioni.OptionsData.Appending := gblSuperUser;
  cxGridFunzioni.OptionsData.Deleting := gblSuperUser;
  cxGridFunzioni.OptionsData.Editing := gblSuperUser or gblUserIsAdmin;
  cxGridFunzioni.OptionsData.Inserting := gblSuperUser;

  dxLayoutServizio.Visible := gblMultiServ;
  TabFunzioni.open;
  Utenti.open;
  Abilitazioni.open;
  FUserToken := 0;

  dxLaySuperUser.Visible := gblSuperUser;
  dxLayoutFunzione.Visible := gblSuperUser or gblUserIsAdmin;
  dxLayoutEstrazioneDati.Visible := gblSuperUser or gblUserIsAdmin;
  dxLayoutAmministratore.Visible := gblSuperUser or gblUserIsAdmin;

  cxDBLookupProfilo.Properties.Grid.DataController.DataModeController.SyncMode := True;

  dxLayoutControlFirmaDigitale.Visible := (FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger>0);
  dxLayoutTipoSmartcard.Enabled := not (FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger in [3,4,5,6]);
  dxLayoutControlReset.Visible := gblSuperUser or gblUserIsAdmin;
  sServizioRadiologia.DataSet := FDMCommon.ServiziRadiologia;
  if not Assigned(sProfili.DataSet) then
     sProfili.DataSet := FDMCommon.Profili;

end;

procedure TFUtenti.UtentiNewRecord(DataSet: TDataSet);
begin
  UtentiREPARTI_FK.AsInteger := gblpkrep;
  UtentiISADMIN.AsInteger := 0;
  UtentiFUNZ_INTERNI.AsInteger := 1;
  UtentiADMIN.AsInteger := 0;
  UtentiESTRAZIONE_DATI.AsInteger := 0;
  UtentiDBLCLICKTIME.AsInteger := 250;
  if not dxLayoutServizio.Visible then
     UtentiSERVIZI_FK.AsInteger := FDMCommon.ServiziRadiologiaPKSERVIZI.AsInteger;
  UtentiALLOW_OVERBOOKING.AsInteger := 0;

end;

procedure TFUtenti.UtentiBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
  if gblSuperUser then
     Sender.Parambyname('admin').AsString := '#'
  else
     Sender.Parambyname('admin').AsString := '# and p.admin=0';

end;

procedure TFUtenti.UtentiPASSWORDGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text := Decrypt(Sender.AsString);
end;

procedure TFUtenti.UtentiPASSWORDSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString := Encrypt(Text);
end;

procedure TFUtenti.DoShow;
begin

  inherited;

  rsPropSaver1.Storage.Load;
  rsPropSaver1.LoadValues;

  FDMCommon.ApplicaDataFine(cxGridUtenti, cxGridUtentiDATA_FINE);

  dxPageControl.Properties.ActivePage := dxTabElenco;
  ActiveControl := cxGridUtenti.Site;
  cxGridUtenti.Controller.GotoFirst;
end;

procedure TFUtenti.rsXMLAccessiAfterLoad(Sender: TObject);
var
  i: integer;
  maxp: integer;
  aggiunto: boolean;
begin
(*
  if rsAccessi.SectionCount>0 then
  begin
     CaricaProfilo(rsAccessi);
      TfrmMainMenu(Owner).rsPropAccessi.RootSection := 'MainMenu';
      maxp := TfrmMainMenu(Owner).rsPropAccessi.Properties.Count-1;
      aggiunto := false;
      for i:=0 to maxp do
      begin
        if not Abilitazioni.Locate('CHIAVE',TfrmMainMenu(Owner).rsPropAccessi.Properties[i],[]) then
        begin
          Abilitazioni.Append;
          AbilitazioniCHIAVE.AsString := TfrmMainMenu(Owner).rsPropAccessi.Properties[i];
          AbilitazioniDESCRIZIONE.AsString := CercaDescrizione(TfrmMainMenu(Owner).rsPropAccessi.Properties[i]);
          AbilitazioniCHECKED.AsInteger := 0;
          Abilitazioni.Post;
          aggiunto := true;
        end;
      end;
      if aggiunto then
         rsAccessi.Save;
  end;
*)
end;

procedure TFUtenti.CaricaProfilo(rs: TrsPropSaver);
var
  i: integer;
begin
//  Abilitazioni.Empty;
  rsAccessi.SectionAdd('MainMenu');
  rsAccessi.RootSection := 'MainMenu';
  for i:=0 to rs.Properties.Count-1 do
  begin
    rsAccessi.Values[rs.Properties[i]] := 1;
  end;

end;

function TFUtenti.CercaDescrizione(const cosa: string): string;
var
   dove: integer;
   rf: TComponent;
begin
   result := '';
(*
   dove := Pos('.',cosa)-1;
   if dove>0 then
   begin
      rf := TfrmMainMenu(Owner).FindComponent(Copy(cosa,1,dove));
      if (rf<>nil) and (rf is TdxTileControlItem) then
         result := TdxTileControlItem(rf).Text1.Value;
   end;
*)
end;

procedure TFUtenti.CaricaProfilo(rs: TrsStorage);
var
  z,i: integer;
  ds,sn,kn: string;
begin
  Abilitazioni.Empty;
  rs.SectionFirst;
  for i:=1 to rs.SectionCount do
  begin
     sn := rs.SectionWrapper.FullName;
     rs.RootSection := sn;
     rs.KeyFirst;
     for z:=1 to rs.KeyCount do
     begin
        kn := rs.KeyWrapper.Name;
        ds := CercaDescrizione(kn);
        if ds<>'' then
        begin
          Abilitazioni.Append;
          AbilitazioniCHIAVE.AsString := kn;
          AbilitazioniDESCRIZIONE.AsString := ds;
          AbilitazioniCHECKED.AsInteger := rs.KeyWrapper.AsInteger;
          Abilitazioni.Post;
          rs.KeyNext;
        end
        else
          rs.KeyDelete(kn);
     end;
     rs.SectionNext;
  end;

end;


procedure TFUtenti.rsXMLAccessiBeforeSave(Sender: TObject);
var
  i: integer;
begin
  if (Abilitazioni.State in dsEditModes) then
     Abilitazioni.Post;
  Abilitazioni.DisableControls;
  Abilitazioni.First;
  for i:=1 to Abilitazioni.recordcount do
  begin
     rsAccessi.Values[AbilitazioniCHIAVE.AsString] := AbilitazioniCHECKED.AsVariant;
     Abilitazioni.Next;
  end;
  Abilitazioni.EnableControls;
end;

procedure TFUtenti.StampaUtentiExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
begin

    if FDMCommon.dxPrintDialog1.Execute then
    begin
       if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
          dxComponentPrinter1.Preview(true,dxComponentPrinter1Link1)
       else begin
          AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
          dxComponentPrinter1.Print(false,@AData,dxComponentPrinter1Link1);
       end;
    end;

end;

procedure TFUtenti.UtentiBeforeEdit(DataSet: TDataSet);
begin
  FOldUser := UtentiLOGIN_NT.AsString;
  FOldPswd := UtentiPASSWORD.AsString;
end;

procedure TFUtenti.aStampaLabelExecute(Sender: TObject);
begin
      FStampaAvvisi := TFStampaAvvisi.Create(nil);
      try
         FStampaAvvisi.Conferma.Visible := false;
         FStampaAvvisi.Conferma.Enabled := false;
//         FStampaAvvisi.xDataset := Utenti;
         FStampaAvvisi.DBTableView := cxGridUtenti;
         FStampaAvvisi.Caption := 'Etichette identificative';
         FStampaAvvisi.CaricaStampe := 80;
//         FStampaAvvisi.TuttiRecord := true;
         FStampaAvvisi.ShowModal;
      finally
         FStampaAvvisi.Free;
         FStampaAvvisi := nil;
      end;

end;

procedure TFUtenti.cxDBMaskEdit8Enter(Sender: TObject);
begin
  if UtentiLOGIN_NT.AsString='' then
  begin
     if not (Utenti.State in dsEditModes) then
        Utenti.Edit;
//     UtentiLOGIN_NT.AsString := Copy(UtentiCOGNOME.AsString+' '+UtentiNOME.AsString,1,20);
//     UtentiLOGIN_NT.AsString := LowerCase(Copy(UtentiNOME.AsString,1,1)+'.'+UtentiCOGNOME.AsString);
     UtentiLOGIN_NT.AsString := LowerCase(UtentiNOME.AsString+'.'+UtentiCOGNOME.AsString);
  end;
end;

procedure TFUtenti.TabFunzioniBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFUtenti.TabFunzioniNewRecord(DataSet: TDataSet);
begin
  TabFunzioniREPARTI_FK.AsInteger := gblpkrep;
  TabFunzioniIMMAGINI.AsInteger := 1;
  TabFunzioniREFERTO.AsInteger := 1;
  TabFunzioniBLOCCHI.AsInteger := 0;
  TabFunzioniCUP.AsInteger := 0;
  TabFunzioniESEGUITO.AsInteger := 1;
  TabFunzioniSPOSTA.AsInteger := 1;
  TabFunzioniSETUP.AsInteger := 0;
end;

procedure TFUtenti.TabFunzioniBeforeDelete(DataSet: TDataSet);
begin
    if not (MsgDlgPos(RS_Gene_Msg_ConfCanc, '',ktConfirmation, [kbYes,kbNo], dfFirst)=mrYes) then
       Abort;
end;

procedure TFUtenti.cxGridProfiliFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  if Assigned(dxPageControl.ActivePage) and (dxPageControl.ActivePage=dxTabDiritti) and (not Assigned(APrevFocusedRecord) or (APrevFocusedRecord.Index<>AFocusedRecord.Index)) then
  begin
//    TabFunzioni.Locate('cod_funzione',cxFunzioni.EditValue,[]);
    rsAccessi.Load;
  end;
end;

procedure TFUtenti.cxGridFunzioniCHECKEDPropertiesEditValueChanged(
  Sender: TObject);
begin
  PostMessage(Handle,SY_CHECKCHANGED,0,0);
end;

function TFUtenti.EmptyDataset: boolean;
begin
  Result := (cxGridUtenti.DataController.FilteredRecordCount=0);
end;

procedure TFUtenti.PostValore(var Message: TMessage);
var
  pk: string;
begin
  if (Abilitazioni.State in dsEditModes) then
     Abilitazioni.Post;

  pk := AbilitazioniCHIAVE.AsString;
  cxGridFunzioni.BeginUpdate;
  cxGridFunzioni.DataController.BeginLocate;
  rsAccessi.Save;
//  Abilitazioni.LocateRecord('CHIAVE',pk,[]);
//  cxGridFunzioni.DataController.LocateByKey(pk);
  cxGridFunzioni.DataController.EndLocate;
  cxGridFunzioni.EndUpdate;
  Abilitazioni.Locate('CHIAVE',pk,[]);

end;

procedure TFUtenti.cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
begin
  if UtentiD_FUNZIONE.AsString<>TabFunzioniDESCRIZIONE.AsString then
  begin
     if not (Utenti.State in dsEditModes) then
        Utenti.Edit;
     UtentiD_FUNZIONE.AsString := TabFunzioniDESCRIZIONE.AsString;
  end;
end;

procedure TFUtenti.aMemberOfExecute(Sender: TObject);
begin
  FMemberOfRad := TFMemberOfRad.Create(nil);
  try
     FMemberOfRad.xpkpersonale := UtentiPKPERSONALE.AsInteger;
     if UtentiISADMIN.AsInteger=1 then
        FMemberOfRad.xtipo_reparto := '#'#39'R'#39','#39'M'#39
     else
        FMemberOfRad.xtipo_reparto := '#'#39'R'#39;
     if FMemberOfRad.ShowModal=mrOk then
     begin
        if not FMemberOfRad.Accessi.Locate('REPARTI_FK',gblpkrep,[]) then
           Utenti.syRefresh;
     end;
  finally
     FMemberOfRad.Free;
  end;

end;

procedure TFUtenti.aMemberOfUpdate(Sender: TObject);
begin
  aMemberOf.Enabled := not Utenti.IsEmpty and (gblSuperUser or gblUserIsAdmin);
end;

procedure TFUtenti.cxButton2Click(Sender: TObject);
begin
  SetDoubleClickTime(UtentiDBLCLICKTIME.AsInteger);
end;

procedure TFUtenti.dxLayoutControl1DblClick(Sender: TObject);
begin
  MsgDlg('', '', ktInformation, [kbOK]);
end;

procedure TFUtenti.rsXMLAccessiLoadFromStream(Sender: TObject;
  Stream: TStream; var DoStandard: Boolean);
begin
(*
   if TabFunzioniPROFILO.IsNull or (TabFunzioniPROFILO.asstring='') then
   begin
//      DoStandard := true;
      CaricaProfilo(TfrmMainMenu(Owner).rsPropAccessi);
   end
   else
     TabFunzioniPROFILO.SaveToStream(Stream);
*)
end;

procedure TFUtenti.rsXMLAccessiSaveToStream(Sender: TObject;
  Stream: TStream; var DoStandard: Boolean);
begin
   TabFunzioni.Edit;
   TabFunzioniPROFILO.LoadFromStream(Stream);
   TabFunzioni.Post;
end;

procedure TFUtenti.CaricaPrivateKeyExecute(Sender: TObject);
var
  temp: string;
  codiceFiscale: string;
  cognome: string;
  nome: string;
  idUnivoco: string;
  ErrorString: string;
  res: integer;
begin

   res := mrCancel;

   case FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger of
   3,4:
     begin
{$IFNDEF MEDICORNER}
        if LeggiDatiCartaSISS(true,codiceFiscale,cognome,nome,idUnivoco,ErrorString)=tprOk then
        begin
           FPrivateKey := TFPrivateKey.Create(nil);
           try
             FPrivateKey.cxMemo1.Text := 'Cognome: '+cognome+#13+'Nome: '+nome+#13+'Codice Fiscale: '+codiceFiscale+#13+'IUT: '+idUnivoco;
             res := FPrivateKey.ShowModal;
           finally
             FPrivateKey.Free;
           end;
        end
        else begin
             MsgDlg( ErrorString, '', ktError, [kbOk], dfFirst);
        end;
{$ENDIF}
     end;

   5,6:
     begin
{$IFNDEF MEDICORNER}
      if LeggiDatiCartaSISSWay(false,codiceFiscale,cognome,nome,idUnivoco,ErrorString) then
      begin
         FPrivateKey := TFPrivateKey.Create(nil);
         try
           FPrivateKey.cxMemo1.Text := 'Cognome: '+cognome+#13+'Nome: '+nome+#13+'Codice Fiscale: '+codiceFiscale+#13+'IUT: '+idUnivoco;
           res := FPrivateKey.ShowModal;
         finally
           FPrivateKey.Free;
         end;
      end
      else begin
           MsgDlg( ErrorString, '', ktError, [kbOk], dfFirst);
      end;
{$ENDIF}
     end;

   1,2:
     begin
       case FDMCommon.LeggiPostoLavoroTIPO_FIRMA.AsInteger of
(*
       1: begin
             ChiudiSlot;
             FirmaDigitale2.Tipo := UtentiTIPO_CARTA.AsInteger;

             if FDMCommon.PassPhrase='' then
             begin
               MsgDlg(RAD_MancaPIN,'', ktWarning, [kbOK]);
               exit;
             end;

             temp := LeggiPrivateKey(FDMCommon.PassPhrase);
             FPrivateKey := TFPrivateKey.Create(nil);
             try
               FPrivateKey.cxMemo1.Text := temp;
               res := FPrivateKey.ShowModal;
             finally
               FPrivateKey.Free;
             end;

             FDMCommon.PassPhrase := '';
        end;
*)
       1,2: begin
             FDMCommon.FirmaDig.ChiudiSessione;
             FDMCommon.FirmaDig.ApriSessione('');
             temp := FDMCommon.FirmaDig.LeggiOwner;
             FPrivateKey := TFPrivateKey.Create(nil);
             try
               FPrivateKey.cxMemo1.Text := temp;
               res := FPrivateKey.ShowModal;
             finally
               FPrivateKey.Free;
             end;
             FDMCommon.FirmaDig.ChiudiSessione;
          end;
       end;
     end;

   else
     res := mrCancel;

  end;

  if res=mrOk then
   case FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger of
   3,4,5,6:
     begin
        if not (Utenti.State in dsEditModes) then
           Utenti.Edit;
        UtentiCODICE_FISCALE.AsString := codiceFiscale;
        UtentiIUT.AsString := idUnivoco;
     end;
   1,2:
     begin
          if not (Utenti.State in dsEditModes) then
             Utenti.Edit;
          UtentiCODICE_FISCALE.AsString := temp;
     end;
  end;

end;

procedure TFUtenti.CaricaPrivateKeyUpdate(Sender: TObject);
begin
  case FDMCommon.LeggiPostoLavoroFIRMA_DIGITALE.AsInteger of
  3,4,5,6:  CaricaPrivateKey.Enabled := true;
  1,2: begin
          if FDMCommon.LeggiPostoLavoroTIPO_FIRMA.AsInteger=1 then
//             CaricaPrivateKey.Enabled := (UtentiTIPO_CARTA.AsInteger>0) and FDMCommon.DllFirma.Active and (DllPath[UtentiTIPO_CARTA.AsInteger].Controllo)
             CaricaPrivateKey.Enabled := (UtentiTIPO_CARTA.AsInteger>0) and Assigned(FDMCommon.FirmaDig) and FDMCommon.FirmaDig.Attivata
          else
             CaricaPrivateKey.Enabled := true;
       end;
  else
     CaricaPrivateKey.Enabled := false;
  end;
end;

procedure TFUtenti.qLoginLogoutBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  Sender.ParamByName('personale_fk').AsInteger := UtentiPKPERSONALE.AsInteger;
end;

procedure TFUtenti.sUtentiDataChange(Sender: TObject; Field: TField);
begin
  if (Field=nil) and (dxPageControl.ActivePage=dxTabScheda) then
  begin
     qLoginLogout.syRefresh;
     dxLayoutAmministratore.Enabled := not (UtentiADMIN.AsInteger=1);     
  end;
end;

procedure TFUtenti.dxPageControlPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  if (NewPage=dxTabScheda) then
  begin
     qLoginLogout.syRefresh;
  end
  else if (NewPage=dxTabDiritti) then
  begin
     rsAccessi.Load;
  end;
end;

procedure TFUtenti.cxDBCheckBox3PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if cxDBCheckBox3.Checked and not cxDBCheckBox1.Checked then
  begin
     if not (Utenti.State in dsEditModes) then
        Utenti.Edit;
     UtentiISADMIN.AsInteger := 1;
  end;
  dxLayoutAmministratore.Enabled := not cxDBCheckBox3.Checked;
end;

procedure TFUtenti.aStampaLabelUpdate(Sender: TObject);
begin
  inherited;
  aStampaLabel.Enabled := not EmptyDataset;
end;

procedure TFUtenti.StampaUtentiUpdate(Sender: TObject);
begin
  inherited;
  StampaUtenti.Enabled := not EmptyDataset;
end;

destructor TFUtenti.Destroy;
begin
  if (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5) then
  begin
    rsPropSaver1.SaveValues;
    rsPropSaver1.Storage.Save;
  end;
  inherited;
end;

procedure TFUtenti.cxGridUtentiNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
  NBDI_INSERT:    begin
                    dxPageControl.Properties.TabIndex := 1;
                  end;
  NBDI_REFRESH:   begin
                  Utenti.syRefresh;
                  ADone := True;
                  end;
  NBDI_FILTER+1:   begin
                  StampaUtenti.Execute;
                  ADone := True;
                  end;
  NBDI_FILTER+2:   begin
                  aStampaLabel.Execute;
                  ADone := True;
                  end;
  end;
end;

procedure TFUtenti.cxGridUtentiDblClick(Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxGrid3),LongInt(aModificaUtente));
end;

procedure TFUtenti.aModificaUtenteExecute(Sender: TObject);
begin
  inherited;
  dxPageControl.Properties.TabIndex := 1;
end;

procedure TFUtenti.aModificaUtenteUpdate(Sender: TObject);
begin
  inherited;
  aModificaUtente.Enabled := not Utenti.IsEmpty;
end;

procedure TFUtenti.cxDBNavigator1ButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case AButtonIndex of
  NBDI_INSERT:    begin
                    dxPageControl.Properties.TabIndex := 1;
                  end;
  NBDI_REFRESH:   begin
                  Utenti.syRefresh;
                  ADone := True;
                  end;
  NBDI_FILTER+1:   begin
                  StampaUtenti.Execute;
                  ADone := True;
                  end;
  NBDI_FILTER+2:   begin
                  aStampaLabel.Execute;
                  ADone := True;
                  end;
  end;
end;

initialization
  Classes.RegisterClass(TFUtenti);

end.
