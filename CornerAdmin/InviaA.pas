unit InviaA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseRad, CSEZForm,   ExtCtrls, 
  dxSkinsCore, dxSkinsDefaultPainters, cxGraphics,
  dxLayoutControl, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB,
  cxControls, cxImageComboBox, ActnList, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxLookAndFeels, dxLayoutcxEditAdapters,
  dxLayoutContainer, dxSkinscxPCPainter, cxGroupBox;

type
  TFInviaA = class(TFBaseRad)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    sRadRichieste: TDataSource;
    cxLookupRadiologia: TcxLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxProvenienza: TcxImageComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    ActionList1: TActionList;
    aConferma: TAction;
    procedure aConfermaExecute(Sender: TObject);
    procedure aConfermaUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInviaA: TFInviaA;

implementation

uses DMCommon;

{$R *.dfm}

procedure TFInviaA.aConfermaExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TFInviaA.aConfermaUpdate(Sender: TObject);
begin
  inherited;
  aConferma.Enabled := not VarIsNull(cxLookupRadiologia.EditValue);
end;

end.