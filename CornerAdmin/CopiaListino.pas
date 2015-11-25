unit CopiaListino;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseRad, CSEZForm,   ExtCtrls, 
  ActnList, DB, dxLayoutControl, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDBEdit, cxControls, cxDropDownEdit, cxCalendar,
  dxSkinsCore, dxSkinsDefaultPainters, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxGraphics, cxLookAndFeels,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxGroupBox;

type
  TFCopiaListino = class(TFBaseRad)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxCodice: TcxDBMaskEdit;
    dxLayoutCodice: TdxLayoutItem;
    sListini: TDataSource;
    cxDescrizione: TcxDBMaskEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    ActionList1: TActionList;
    aConferma: TAction;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutFineValidita: TdxLayoutItem;
    procedure aConfermaExecute(Sender: TObject);
    procedure aConfermaUpdate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure DoShow; override;  
  public
    { Public declarations }
    
  end;

var
  FCopiaListino: TFCopiaListino;

implementation

uses DMCommon;

{$R *.dfm}

procedure TFCopiaListino.aConfermaExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TFCopiaListino.aConfermaUpdate(Sender: TObject);
begin
  inherited;
  aConferma.Enabled := (cxCodice.Text<>'') and (cxDescrizione.Text<>'') and (cxDBDateEdit1.Date>0);
end;

procedure TFCopiaListino.DoShow;
begin
  inherited;
  cxDBDateEdit1.Date := Date();
  cxDBDateEdit1.Properties.MinDate := Date();
end;

end.