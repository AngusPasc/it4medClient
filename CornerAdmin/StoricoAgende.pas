unit StoricoAgende;

interface

uses
  BaseRad, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxImageComboBox, AstaDrv2,
  AstaClientDataset, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  CSEZForm,   Classes, Controls, ExtCtrls, 
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxLookAndFeels, cxNavigator,
  cxContainer, cxGroupBox;

type
  TFStoricoAgende = class(TFBaseRad)
    StoricoAgenda: TAstaClientDataSet;
    sStoricoAnag: TDataSource;
    StoricoAgendaNOMINATIVO: TStringField;
    StoricoAgendaDATA_OP: TDateTimeField;
    StoricoAgendaCAMPO: TStringField;
    StoricoAgendaVALORE_NEW: TStringField;
    StoricoAgendaVALORE_OLD: TStringField;
    StoricoAgendaTIPO_OP: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1NOMINATIVO: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_OP: TcxGridDBColumn;
    cxGrid1DBTableView1COMMENTS: TcxGridDBColumn;
    cxGrid1DBTableView1VALORE_NEW: TcxGridDBColumn;
    cxGrid1DBTableView1VALORE_OLD: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_OP: TcxGridDBColumn;
    StoricoAgendaCOMMENTS: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FStoricoAgende: TFStoricoAgende;

implementation

uses DMCommon;

{$R *.dfm}

end.