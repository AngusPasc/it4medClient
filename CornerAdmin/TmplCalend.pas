unit TmplCalend;

interface

uses
  BaseRad, {}cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxMaskEdit, cxTextEdit, Classes, ActnList,
  AstaDrv2, AstaClientDataset, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  CSEZForm, StdCtrls, cxButtons, Controls, ExtCtrls, cxNavigator,
  cxContainer, cxGroupBox;

type
  TFTmplCalend = class(TFBaseRad)
    QyTmplcalend: TAstaClientDataSet;
    QyTmplcalendPKTMPLCALEND: TIntegerField;
    QyTmplcalendREPARTI_FK: TIntegerField;
    QyTmplcalendDESC_TMPL: TStringField;
    sTmplcalend: TDataSource;
    QyTmplcalendUSER_ID: TIntegerField;
    QyTmplcalendDATA_OPER: TDateTimeField;
    QyTmplcalendREAL_NAME: TStringField;
    ActionList1: TActionList;
    aSeleziona: TAction;
    QyTmplcalendTIPO: TIntegerField;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1PKTMPLCALEND: TcxGridDBColumn;
    cxGrid1DBTableView1DESC_TMPL: TcxGridDBColumn;
    cxGrid1DBTableView1REAL_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_OPER: TcxGridDBColumn;
    QyTmplcalendSETT_GIORNO: TIntegerField;
    QyTmplcalendDIAGNOSTICA_FK: TIntegerField;
    procedure QyTmplcalendBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure QyTmplcalendNewRecord(DataSet: TDataSet);
    procedure btAnnullaClick(Sender: TObject);
    procedure QyTmplcalendBeforePost(DataSet: TDataSet);
    procedure aSelezionaExecute(Sender: TObject);
    procedure aSelezionaUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   
  end;

var
  FTmplCalend: TFTmplCalend;

implementation

uses DMCommon,Windows, IIConsts, sysutils, msgdlgs;

{$R *.dfm}

procedure TFTmplCalend.QyTmplcalendBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('reparti_fk').AsInteger := gblpkrep;
end;

procedure TFTmplCalend.QyTmplcalendNewRecord(DataSet: TDataSet);
begin
  inherited;
	QyTmplcalendREPARTI_FK.AsInteger := gblpkrep;
end;

procedure TFTmplCalend.btAnnullaClick(Sender: TObject);
begin
  inherited;
	if QyTmplcalend.State in [dsInsert, dsEdit] then
  	QyTmplcalend.Cancel;
	ModalResult := mrCancel;

end;

procedure TFTmplCalend.QyTmplcalendBeforePost(DataSet: TDataSet);
begin
  inherited;
  QyTmplCalendUSER_ID.AsInteger := gblCodUtente;
  QyTmplCalendDATA_OPER.AsDateTime := Now();
end;

procedure TFTmplCalend.aSelezionaExecute(Sender: TObject);
begin
  inherited;
	if QyTmplcalend.State in [dsInsert, dsEdit] then
  	QyTmplcalend.Post;

	ModalResult := mrOk;

end;

procedure TFTmplCalend.aSelezionaUpdate(Sender: TObject);
begin
  inherited;
  aSeleziona.Enabled := QyTmplcalend.Active and not QyTmplcalend.IsEmpty;
end;

procedure TFTmplCalend.FormShow(Sender: TObject);
begin
  inherited;
  QyTmplcalend.open;
end;

procedure TFTmplCalend.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxGrid1),LongInt(aSeleziona));
end;

end.
