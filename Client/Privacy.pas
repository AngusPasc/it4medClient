unit Privacy;

interface

uses
  BaseRad, dxSkinsCore, dxSkinsDefaultPainters,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxLayoutControl, cxTextEdit, cxMemo,
  cxDBEdit, cxContainer, cxCheckBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, CSEZForm,   Classes,
  Controls, ExtCtrls,  Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxLookAndFeels, dxLayoutcxEditAdapters, cxNavigator,
  dxLayoutContainer, cxGroupBox;

type
  TFPrivacy = class(TFBaseRad)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    sOscuramento: TDataSource;
    cxGrid1DBTableView1DESCRIZIONE: TcxGridDBColumn;
    cxGrid1DBTableView1ATTIVO: TcxGridDBColumn;
    cxDBCheckCittadino: TcxDBCheckBox;
    dxLayoutControlCittadino: TdxLayoutItem;
    cxDBMemoReperibilita: TcxDBMemo;
    dxLayoutControl1Item3: TdxLayoutItem;
    sImpegnativa: TDataSource;
    cbDAO: TcxDBCheckBox;
    dxLayoutControlDAO: TdxLayoutItem;
    sqReferto: TDataSource;
    procedure cbDAOClick(Sender: TObject);
    procedure cxGrid1DBTableView1Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
  private
    procedure EnableDisableDAO;
    { Private declarations }
  protected
    procedure DoCreate; override;
    procedure DoShow; override;
  public
    bOscuramentoDaAssistibili: boolean;
    { Public declarations }
   
  end;

var
  FPrivacy: TFPrivacy;

implementation

uses DMCommon, BaseRefer;

{$R *.dfm}

procedure TFPrivacy.DoShow;
begin
  inherited;

  bOscuramentoDaAssistibili := False;
  EnableDisableDAO;

end;

procedure TFPrivacy.cbDAOClick(Sender: TObject);
begin
  inherited;
  EnableDisableDAO;
end;

procedure TFPrivacy.EnableDisableDAO;
var
  sOscuramento: string;
begin
  {
    Oscuramento volontario da parte del cittadino
  }

  {
    Non disabilito più il checkbox relativo all'autorizzazione alla consultazione da parte del cittadino.
    Come da richiesta di Vimercate del 09 feb 2009

  if dxLayoutControlCittadino.Enabled then
    dxLayoutControlCittadino.Enabled := (sImpegnativa.DataSet.FieldByName('OSCURAMENTO').AsString='V');
  }

  sOscuramento := sImpegnativa.DataSet.FieldByName('OSCURAMENTO').AsString;

  if sOscuramento = 'V' then
  begin
    bOscuramentoDaAssistibili := True;
    if cxGrid1DBTableView1.DataController.DataSet.Locate('OSCURA_FK', '50', []) then
    begin
      cxGrid1DBTableView1.DataController.DataSet.Edit;
      cxGrid1DBTableView1.DataController.DataSet.FieldByName('ATTIVO').Value := 1;
      cxGrid1DBTableView1.DataController.DataSet.Post;
    end;
    cbDAO.DataBinding.DataSource.DataSet.FieldByName(cbDAO.DataBinding.DataField).AsInteger := 1;
    cbDAO.Checked := True;
    cbDAO.Enabled := False;
  end;

  dxLayoutControl1Item1.Enabled := cbDAO.Checked;
  dxLayoutControl1Item3.Enabled := cbDAO.Checked;
  dxLayoutControlCittadino.Enabled := cbDAO.Checked;

  
end;

procedure TFPrivacy.cxGrid1DBTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  {
    Verifico se mi trovo sull'ultimo record (Oscuramento volontario del cittadino)
  }
  if Sender.Controller.FocusedRecord.IsLast then
  begin
    {
      Se l'oscuramento deriva dalla scelta presente in ASSISTIBILI non consento l'editing
    }
    if bOscuramentoDaAssistibili then
      AAllow := False;
  end;
end;

procedure TFPrivacy.DoCreate;
begin
  inherited;
  ReadBarCode := False;
end;

end.
