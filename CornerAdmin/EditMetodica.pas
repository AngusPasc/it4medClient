unit EditMetodica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseRad, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, CSEZForm, StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit, cxDBEdit,
  dxLayoutControl, cxTextEdit, cxMaskEdit, DB, cxCalendar, ActnList,
  dxLayoutContainer, cxGroupBox;

type
  TFEditMetodica = class(TFBaseRad)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    sMetodiche: TDataSource;
    cxDBMaskEdit1: TcxDBMaskEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBMaskEdit2: TcxDBMaskEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBSpinEdit1: TcxDBSpinEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBSpinEdit2: TcxDBSpinEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    sTipoModalita: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    ActionList1: TActionList;
    aConferma: TAction;
    procedure aConfermaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FEditMetodica: TFEditMetodica;

implementation

uses
  DMCommon, CodiciRadiologia;

{$R *.dfm}

procedure TFEditMetodica.aConfermaExecute(Sender: TObject);
begin
  inherited;
  sMetodiche.Dataset.Post;
  ModalResult := mrOk;
end;

end.
