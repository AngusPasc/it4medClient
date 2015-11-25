unit Medici;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseRad, CSEZForm,   ExtCtrls,
  cxDropDownEdit, cxCalendar, cxDBEdit, dxLayoutControl, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, DB, cxControls, AstaDrv2,
  AstaClientDataset, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxGraphics, dxSkinsCore, dxSkinsDefaultPainters, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxLookAndFeels, dxLayoutcxEditAdapters, dxSkinscxPCPainter,
  dxLayoutContainer, cxGroupBox, ActnList;

type
  TFMedici = class(TFBaseRad)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    sMedici: TDataSource;
    cxDBMaskEdit1: TcxDBMaskEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBMaskEdit2: TcxDBMaskEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    qMedici: TAstaClientDataSet;
    qMediciDATA_INIZIO: TDateTimeField;
    qMediciDATA_FINE: TDateTimeField;
    qTipoMedico: TAstaClientDataSet;
    sTipoMedico: TDataSource;
    qTipoMedicoTIPO_MEDICO: TStringField;
    qTipoMedicoDESCRIZIONE: TStringField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    qMediciTIPO_MEDICO: TStringField;
    qMediciCODICE: TStringField;
    qMediciMEDCOGNOME: TStringField;
    qMediciMEDNOME: TStringField;
    cxDBMaskEdit3: TcxDBMaskEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    ActionList1: TActionList;
    aConferma: TAction;
    aAnnulla: TAction;
    procedure qTipoMedicoBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure aConfermaExecute(Sender: TObject);
    procedure aAnnullaExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure DoCreate; override;
  public
    { Public declarations }
  end;

var
  FMedici: TFMedici;

implementation

uses DMCommon;

{$R *.dfm}

procedure TFMedici.DoCreate;
begin
  inherited;
  qTipoMedico.open;
end;

procedure TFMedici.qTipoMedicoBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  inherited;
  sender.Parambyname('lingua').AsString := gbllingua;
end;

procedure TFMedici.aConfermaExecute(Sender: TObject);
begin
  inherited;

  if (sMedici.Dataset.State in dsEditModes) then
     sMedici.Dataset.Post;
  ModalResult := mrOk;

end;

procedure TFMedici.aAnnullaExecute(Sender: TObject);
begin
  inherited;

  if (sMedici.Dataset.State in dsEditModes) then
     sMedici.Dataset.Cancel;
  ModalResult := mrCancel;

end;

end.