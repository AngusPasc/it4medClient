unit AssegnaReferti;

interface

uses
  BaseRad, Messages, IIConsts, {}DB, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  CSEZForm,   Classes, Controls, ExtCtrls,
  cxGraphics, ActnList, dxSkinsCore, dxSkinsDefaultPainters, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxLookAndFeels,
  dxLayoutcxEditAdapters, dxLayoutControl, dxLayoutContainer, cxGroupBox;

type
  TFAssegnaReferti = class(TFBaseRad)
    sAssegnaReferti: TDataSource;
    cxMedFirma: TcxLookupComboBox;
    ActionList1: TActionList;
    aConferma: TAction;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
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
  FAssegnaReferti: TFAssegnaReferti;

implementation

uses DMCommon, Windows, Variants;

{$R *.dfm}

procedure TFAssegnaReferti.DoCreate;
begin
  inherited;
  sAssegnaReferti.DataSet := FDMCommon.AssegnaReferti;
  cxMedFirma.Properties.Grid.DataController.DataModeController.SyncMode := True;
  if not FDMCommon.AssegnaReferti.Active then
     FDMCommon.AssegnaReferti.open;

end;

procedure TFAssegnaReferti.aConfermaExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TFAssegnaReferti.aConfermaUpdate(Sender: TObject);
begin
  inherited;
  aConferma.Enabled := not VarIsNull(cxMedFirma.EditValue);
end;

end.
