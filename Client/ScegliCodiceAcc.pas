unit ScegliCodiceAcc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseRad, CSEZForm,   ExtCtrls, 
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, ActnList, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, dxLayoutControl, cxContainer, cxTextEdit, cxDBEdit, AstaDrv2,
  AstaClientDataset, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxLookAndFeels, dxLayoutcxEditAdapters, cxNavigator,
  dxLayoutContainer, cxGroupBox;

type
  TFScegliCodiceAcc = class(TFBaseRad)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    sTariffario: TDataSource;
    Tariffario: TAstaClientDataSet;
    TariffarioIDENT: TStringField;
    TariffarioDESCRIZIONE: TStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    sScelte: TDataSource;
    Scelte: TAstaClientDataSet;
    cxGridCodiciRadDBTableView1: TcxGridDBTableView;
    cxGridCodiciRadLevel1: TcxGridLevel;
    cxGridCodiciRad: TcxGrid;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    ScelteCODICE: TStringField;
    ScelteDESCRIZIONE: TStringField;
    cxGridCodiciRadDBTableView1CODICE: TcxGridDBColumn;
    cxGridCodiciRadDBTableView1DESCRIZIONE: TcxGridDBColumn;
    ActionList1: TActionList;
    aConferma: TAction;
    SceltePKCODICIRAD: TIntegerField;
    procedure cxGridCodiciRadDBTableView1DblClick(Sender: TObject);
    procedure aConfermaExecute(Sender: TObject);
    procedure aConfermaUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FScegliCodiceAcc: TFScegliCodiceAcc;

implementation

uses DMCommon, IIConsts;

{$R *.dfm}

procedure TFScegliCodiceAcc.cxGridCodiciRadDBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxGridCodiciRad),LongInt(aConferma));
end;

procedure TFScegliCodiceAcc.aConfermaExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TFScegliCodiceAcc.aConfermaUpdate(Sender: TObject);
begin
  inherited;
  aConferma.Enabled := not Scelte.IsEmpty;
end;

end.