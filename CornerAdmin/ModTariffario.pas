unit ModTariffario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseRad, CSEZForm,   ExtCtrls, 
  dxLayoutControl, cxControls, DB, cxDBEdit, cxDropDownEdit, cxCalendar,
  cxCurrencyEdit, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, AstaDrv2,
  AstaClientDataset, cxCheckBox, cxSpinEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxGraphics, cxLookAndFeels, dxLayoutcxEditAdapters,
  ActnList, dxLayoutContainer, cxGroupBox;

type
  TFModTariffario = class(TFBaseRad)
    sLkTariffario: TDataSource;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDBMaskEdit1: TcxDBMaskEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBMaskEdit2: TcxDBMaskEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    ActionList1: TActionList;
    aConferma: TAction;
    Annulla: TAction;
    procedure aConfermaExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure DoCreate; override;
    procedure StartPersonalizza; override;
    procedure StopPersonalizza; override;
    procedure ResetPersonalizza; override;    
  public
    { Public declarations }
   
  end;

var
  FModTariffario: TFModTariffario;

implementation

uses CodiciRadiologia, DMCommon;

{$R *.dfm}

procedure TFModTariffario.aConfermaExecute(Sender: TObject);
begin
  inherited;
  sLkTariffario.Dataset.Post;
  ModalResult := mrOk;
end;

procedure TFModTariffario.DoCreate;
begin
  inherited;
//  Personalizza := gblSuperUser;
  FDMCommon.CaricaLayout(Name,dxLayoutControl1);

end;

procedure TFModTariffario.StartPersonalizza;
begin
  LanciaPersonalizza(dxLayoutControl1,FDMCommon.qFormLayout);
end;

procedure TFModTariffario.StopPersonalizza;
begin
  FDMCommon.SalvaPersonalizza(Name,dxLayoutControl1,gblcodutente);
end;

procedure TFModTariffario.ResetPersonalizza;
begin
  if FDMCommon.ResetLayout(Name,dxLayoutControl1) then
     ModalResult := mrCancel;
end;

end.