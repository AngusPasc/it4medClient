unit ModModalita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseRad, dxLayoutControl, cxContainer, cxEdit, cxTextEdit,
  cxDBEdit, cxControls, CSEZForm,   ExtCtrls,
   DB, cxCheckBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, AstaDrv2, AstaClientDataset,
  cxImageComboBox, cxGraphics, dxSkinsCore, dxSkinsDefaultPainters,
  Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxLookAndFeels,
  dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  ActnList, cxNavigator, dxLayoutContainer, cxGroupBox;

type
  TFModModalita = class(TFBaseRad)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    sModalita: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBMaskEdit1: TcxDBMaskEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxRadiologia: TcxDBLookupComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    LkServizi: TAstaClientDataSet;
    sRadiologie: TDataSource;
    LkRadiologie: TAstaClientDataSet;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutServRadiologia: TdxLayoutItem;
    sServizi: TDataSource;
    LkRadiologiePKREPARTI: TIntegerField;
    LkRadiologieDESCRIZIONE: TStringField;
    LkServiziPKSERVIZI: TIntegerField;
    LkServiziDESCRIZIONE: TStringField;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutWorklist: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl1Item7: TdxLayoutItem;
    sPacsxMod: TDataSource;
    cxGrid1DBTableView1PACS_FK: TcxGridDBColumn;
    cxGrid1DBTableView1MODALITA_FK: TcxGridDBColumn;
    sWorklist: TDataSource;
    sTipoModalita: TDataSource;
    sGruppoMod: TDataSource;
    ActionList1: TActionList;
    aAnnulla: TAction;
    aConferma: TAction;
    procedure LkRadiologieBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxDBLookupComboBox2PropertiesCloseUp(Sender: TObject);
    procedure btSalvaClick(Sender: TObject);
    procedure aAnnullaExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure DoShow; override;
    procedure DoCreate; override;
    procedure StartPersonalizza; override;
    procedure StopPersonalizza; override;
    procedure ResetPersonalizza; override;    
  public
    { Public declarations }
   
  end;

var
  FModModalita: TFModModalita;

implementation

uses Struttura, DMCommon;

{$R *.dfm}

procedure TFModModalita.LkRadiologieBeforeQuery(
  Sender: TAstaBaseClientDataSet);
begin
  inherited;
//  Sender.Parambyname('osp_codice').AsString := gblospedale;
end;

procedure TFModModalita.DoCreate;
begin
  inherited;

//  Personalizza := gblSuperUser;
  FDMCommon.CaricaLayout(Name,dxLayoutControl1);

  if not Assigned(sWorklist.Dataset) then
     sWorklist.DataSet := FStruttura.Worklist;
  if not Assigned(sTipoModalita.Dataset) then
     sTipoModalita.DataSet := FStruttura.Tipo_Modalita;
  if not Assigned(sGruppoMod.Dataset) then
     sGruppoMod.Dataset := FStruttura.GruppoMod;
  LkRadiologie.open;
end;

procedure TFModModalita.cxDBLookupComboBox2PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  if (LkServizi.Parambyname('reparti_fk').AsInteger<>FDMCommon.VarToInt(cxRadiologia.EditValue)) then
  begin
    LkServizi.Parambyname('reparti_fk').AsInteger := FDMCommon.VarToInt(cxRadiologia.EditValue);
    LkServizi.syRefresh;
    if LkServizi.recordcount=1 then
       sModalita.DataSet.FieldByName('SERVIZI_FK').AsInteger := LkServiziPKSERVIZI.AsInteger;
  end;
end;

procedure TFModModalita.btSalvaClick(Sender: TObject);
begin
  inherited;

  sModalita.Dataset.Post;
  if (sPacsxMod.DataSet.State in dsEditModes) then
     sPacsxMod.DataSet.Post;
  FDMCommon.AstaClientSocket.SendDataSetTransactions(Name,[sModalita.Dataset,sPacsxMod.DataSet]);
  ModalResult := mrOk;

end;

procedure TFModModalita.aAnnullaExecute(Sender: TObject);
begin
  inherited;
  sModalita.Dataset.Cancel;
  ModalResult := mrCancel;
end;

procedure TFModModalita.DoShow;
begin
  inherited;
  dxLayoutWorklist.Visible := (FStruttura.sWorklist.DataSet.RecordCount>0);
  FStruttura.ModalitaWORKLIST_FK.Required := dxLayoutWorklist.Visible;
end;

procedure TFModModalita.StartPersonalizza;
begin
  LanciaPersonalizza(dxLayoutControl1,FDMCommon.qFormLayout);
end;

procedure TFModModalita.StopPersonalizza;
begin
  FDMCommon.SalvaPersonalizza(Name,dxLayoutControl1,gblcodutente);
end;

procedure TFModModalita.ResetPersonalizza;
begin
  if FDMCommon.ResetLayout(Name,dxLayoutControl1) then
     aAnnulla.Execute;
end;

end.