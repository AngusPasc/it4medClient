unit ConsegnaRef;

interface

uses
  BaseRad, AstaUpdateSQL, Classes, ActnList, DB, AstaDrv2,
  AstaClientDataset, dxLayoutControl, cxDBEdit, cxMemo, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxControls,
  CSEZForm,   Controls, ExtCtrls, 
  dxSkinsCore, dxSkinsDefaultPainters,
  IInterface, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxGraphics, cxLookAndFeels, dxLayoutcxEditAdapters, dxLayoutContainer,
  cxGroupBox;

type
  TFConsegnaRef = class(TFBaseRad)
    sConsegna: TDataSource;
    Consegna: TAstaClientDataSet;
    ConsegnaDATA_CONSEGNA: TDateTimeField;
    ConsegnaNOTE: TBlobField;
    ConsegnaPKREFERTI: TIntegerField;
    ActionList1: TActionList;
    aStampa: TAction;
    ksfcImageBtn1: TcxButton;
    ConsegnaTRIAGE_FK: TIntegerField;
    dxLayoutControl1: TdxLayoutControl;
    cxDataConsegna: TcxDBDateEdit;
    cxDBRichMemo1: TcxDBMemo;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    ConsegnaNOMINATIVO: TStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    aConferma: TAction;
    ConsegnaPKIMPEGNATIVE: TIntegerField;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    updConsegna: TAstaUpdateSQL;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ConsegnaTES_IDENT: TStringField;
    ConsegnaDESCESENZIONE: TStringField;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControlEsenzione: TdxLayoutGroup;
    ConsegnaUSER_ID: TIntegerField;
    ConsegnaDATA_NASCITA: TDateTimeField;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    procedure aStampaExecute(Sender: TObject);
    procedure aStampaUpdate(Sender: TObject);
    procedure btAnnullaClick(Sender: TObject);
    procedure aConfermaExecute(Sender: TObject);
    procedure csEZKeys1KeyIntercept(KeyType: TNavigationKey;
      Ctrl: TControl; var Intercept: Boolean);
    procedure cxDBRichMemo1Enter(Sender: TObject);
    procedure cxDBRichMemo1Exit(Sender: TObject);
    procedure ConsegnaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    FEseguitoAutomatico: boolean;
  protected
    procedure DoCreate; override;  
  public
    { Public declarations }
    xCodUtente: integer;
        
    property EseguitoAutomatico: boolean read FEseguitoAutomatico write FEseguitoAutomatico;
  end;

var
  FConsegnaRef: TFConsegnaRef;

implementation

uses DMCommon,
{$IFNDEF MEDICORNER}
  RefPreview,
{$ELSE}
  RefMedicorner,
{$ENDIF}
ConfermaPswdRep, sysutils;

{$R *.dfm}

procedure TFConsegnaRef.aStampaExecute(Sender: TObject);
var
  res: integer;
begin
  inherited;

  res := VisualizzaReferto('',ConsegnaTRIAGE_FK.AsInteger,ConsegnaNOMINATIVO.AsString,[tbtFirmato,tbtProvvisorio],[tprnStampa,tprnDaCreare]);

  if res=mrIgnore then
  begin
    if not (Consegna.State in dsEditModes) then
       Consegna.Edit;
    Consegna.Post;

    ModalResult := mrRetry;
  end;

end;

procedure TFConsegnaRef.aStampaUpdate(Sender: TObject);
begin
  inherited;
  aStampa.Enabled := Consegna.Active and not ConsegnaDATA_CONSEGNA.IsNull;
end;

procedure TFConsegnaRef.btAnnullaClick(Sender: TObject);
begin
  inherited;
  if (Consegna.State in dsEditModes) then
     Consegna.Cancel;

  ModalResult := mrCancel;

end;

procedure TFConsegnaRef.aConfermaExecute(Sender: TObject);
var
  rr,tecnico: integer;
begin
  inherited;

  if not EseguitoAutomatico then
  begin
    if FDMCommon.LeggiPostoLavoroCHK_CONSEGNA_CON_PSWD.AsInteger=1 then
    begin
      FConfermaPswdRep := TFConfermaPswdRep.Create(nil);
      try
        rr := FConfermaPswdRep.ShowModal;
        tecnico := FConfermaPswdRep.User_id;
      finally
        FConfermaPswdRep.Free;
        FConfermaPswdRep := nil;
      end;
      if rr=mrCancel then
         Abort
      else begin
         xCodUtente := tecnico;
      end;
    end
    else
      xCodUtente := gblCodUtente;
  end;

  if (Consegna.State in dsEditModes) then
     Consegna.Post;

  ModalResult := mrOk;

end;

procedure TFConsegnaRef.DoCreate;
begin
  inherited;
  FEseguitoAutomatico := false;
  dxLayoutControlEsenzione.Visible := (FDMCommon.LeggiPostoLavoroFLAG_MN.AsInteger<>5);
end;

procedure TFConsegnaRef.csEZKeys1KeyIntercept(KeyType: TNavigationKey;
  Ctrl: TControl; var Intercept: Boolean);
begin
  inherited;
  Intercept := Intercept and not (Ctrl is TcxCustomInnerMemo);
end;

procedure TFConsegnaRef.cxDBRichMemo1Enter(Sender: TObject);
begin
  inherited;
  oldReadBarCode := ReadBarCode;
  ReadBarCode := False;
end;

procedure TFConsegnaRef.cxDBRichMemo1Exit(Sender: TObject);
begin
  inherited;
  ReadBarCode := oldReadBarCode;
end;

procedure TFConsegnaRef.ConsegnaBeforePost(DataSet: TDataSet);
begin
  inherited;
  ConsegnaUSER_ID.AsInteger := xCodUtente;
end;

end.