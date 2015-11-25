unit AssegnaServizio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseRad, CSEZForm,   ExtCtrls, 
  DB, AstaDrv2, AstaClientDataset, cxLabel, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, ActnList, cxGraphics, dxSkinsCore,
  dxSkinsDefaultPainters, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxLookAndFeels, dxLayoutcxEditAdapters, dxLayoutControl,
  dxLayoutContainer, cxGroupBox;

type
  TFAssegnaServizio = class(TFBaseRad)
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    LkServizi: TAstaClientDataSet;
    LkServiziPKSERVIZI: TIntegerField;
    LkServiziDESCRIZIONE: TStringField;
    sServizi: TDataSource;
    sQyPreno: TDataSource;
    ActionList1: TActionList;
    aConferma: TAction;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    procedure LkServiziBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure btAnnullaClick(Sender: TObject);
    procedure aConfermaExecute(Sender: TObject);
    procedure aConfermaUpdate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure DoCreate; override;
  public
    { Public declarations }

  end;

var
  FAssegnaServizio: TFAssegnaServizio;

implementation

uses DMCommon;

{$R *.dfm}

procedure TFAssegnaServizio.LkServiziBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFAssegnaServizio.DoCreate;
begin
  inherited;
  LkServizi.open;
end;

procedure TFAssegnaServizio.btAnnullaClick(Sender: TObject);
begin
  inherited;
  sQyPreno.Dataset.Cancel;
  ModalResult := mrCancel;
end;

procedure TFAssegnaServizio.aConfermaExecute(Sender: TObject);
begin
  inherited;
  sQyPreno.Dataset.Post;
  ModalResult := mrOk;

end;

procedure TFAssegnaServizio.aConfermaUpdate(Sender: TObject);
begin
  inherited;
  aConferma.Enabled := not VarIsNull(cxDBLookupComboBox1.EditValue);
end;

end.