unit VediBlocchi;

interface

uses
  BaseRad, {}
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, 
  DB, cxDBData, cxImageComboBox, dxPrnDev, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, 
  dxBkgnd, dxWrap, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, 
  dxPSCore, Classes, ActnList, dxPrnDlg, AstaDrv2, AstaClientDataset, 
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, 
  cxClasses, cxControls, cxGridCustomView, cxGrid, CSEZForm, Controls, ExtCtrls, 
  dxPScxCommon, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, Menus, 
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxLookAndFeels, dxPSPDFExportCore, 
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, 
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPScxPageControlProducer,
  cxNavigator, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxSchedulerLnk,
  cxContainer, dxPSPrVwRibbon, cxGroupBox;

type
  TFVediBlocchi = class(TFBaseRad)
    Blocchi: TAstaClientDataSet;
    BlocchiPKAGENDE: TIntegerField;
    BlocchiSERVIZI_FK: TIntegerField;
    BlocchiORA_INIZIO: TDateTimeField;
    BlocchiORA_FINE: TDateTimeField;
    BlocchiREPARTI_FK: TIntegerField;
    BlocchiUSER_ID: TIntegerField;
    sBlocchi: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ORA_INIZIO: TcxGridDBColumn;
    cxGrid1DBTableView1ORA_FINE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCPROVENIENZA: TcxGridDBColumn;
    cxGrid1DBTableView1OPERATORE: TcxGridDBColumn;
    BlocchiOPERATORE: TStringField;
    ActionList1: TActionList;
    Esci: TAction;
    Stampa: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    BlocchiPROVENIENZA: TStringField;
    BlocchiDESCPROVENIENZA: TStringField;
    procedure StampaExecute(Sender: TObject);
    procedure BlocchiBeforeQuery(Sender: TAstaBaseClientDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    NomeDiagnostica: string;

  end;

var
  FVediBlocchi: TFVediBlocchi;

implementation

uses
  DMCommon;

{$R *.dfm}

procedure TFVediBlocchi.StampaExecute(Sender: TObject);
var
  AData: TdxPrintDlgData;
begin

    if FDMCommon.dxPrintDialog1.Execute then
    begin
       dxComponentPrinter1Link1.ReportTitle.Text := NomeDiagnostica;
       if FDMCommon.dxPrintDialog1.PreviewBtnClicked then
          dxComponentPrinter1.Preview(true,dxComponentPrinter1Link1)
       else begin
          AData.DialogData := FDMCommon.dxPrintDialog1.DialogData;
          dxComponentPrinter1.Print(false,@AData,dxComponentPrinter1Link1);
       end;
    end;

end;

procedure TFVediBlocchi.BlocchiBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

end.