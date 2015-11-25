unit StoricoAnag;

interface

uses
  BaseRad, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxImageComboBox, AstaDrv2,
  AstaClientDataset, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  CSEZForm,   Classes, Controls, ExtCtrls, 
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxLookAndFeels, cxContainer,
  cxNavigator, cxGroupBox;

type
  TFStoricoAnag = class(TFBaseRad)
    StoricoAnag: TAstaClientDataSet;
    sStoricoAnag: TDataSource;
    StoricoAnagNOMINATIVO: TStringField;
    StoricoAnagDATA_OP: TDateTimeField;
    StoricoAnagCAMPO: TStringField;
    StoricoAnagVALORE_NEW: TStringField;
    StoricoAnagVALORE_OLD: TStringField;
    StoricoAnagTIPO_OP: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1NOMINATIVO: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_OP: TcxGridDBColumn;
    cxGrid1DBTableView1COMMENTS: TcxGridDBColumn;
    cxGrid1DBTableView1VALORE_NEW: TcxGridDBColumn;
    cxGrid1DBTableView1VALORE_OLD: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_OP: TcxGridDBColumn;
    StoricoAnagCOMMENTS: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    
  end;

var
  FStoricoAnag: TFStoricoAnag;

implementation

uses DMCommon;

{$R *.dfm}

end.