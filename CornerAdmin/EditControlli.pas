unit EditControlli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseRad, CSEZForm,   ExtCtrls, 
  cxDBEdit, dxLayoutControl, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxControls, DB, AstaDrv2, AstaClientDataset, cxMemo,
  cxCheckBox, ActnList, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxGraphics, cxDropDownEdit, cxImageComboBox, dxSkinsCore,
  dxSkinsDefaultPainters, cxLookAndFeels, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, cxGroupBox;

type
  TFEditControlli = class(TFBaseRad)
    sControlli: TDataSource;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDBSpinEdit1: TcxDBSpinEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBSTMT: TcxDBMemo;
    dxLayoutControl1Item5: TdxLayoutItem;
    Controlli: TAstaClientDataSet;
    ControlliPKTIPOERRORI: TIntegerField;
    ControlliDESCRIZIONE: TStringField;
    ControlliFLAG_SEND: TIntegerField;
    ControlliEMAIL_OBJECT: TStringField;
    ControlliEXEC_TIME: TIntegerField;
    ControlliFLAG_ERR: TIntegerField;
    ControlliSTMT: TStringField;
    ControlliUPD: TStringField;
    ActionList1: TActionList;
    aConferma: TAction;
    cxButton1: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    aTestControllo: TAction;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBSpinEdit2: TcxDBSpinEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    TestControllo: TAstaClientDataSet;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item9: TdxLayoutItem;
    ControlliDESCR_ERR: TStringField;
    cxDBUPD: TcxDBMemo;
    dxLayoutControl1Item10: TdxLayoutItem;
    procedure aConfermaExecute(Sender: TObject);
    procedure aConfermaUpdate(Sender: TObject);
    procedure aTestControlloExecute(Sender: TObject);
    procedure aTestControlloUpdate(Sender: TObject);
    procedure csEZKeys1KeyIntercept(KeyType: TNavigationKey;
      Ctrl: TControl; var Intercept: Boolean);
  private
    { Private declarations }
  protected
    procedure DoCreate; override;
  public
    { Public declarations }
    
  end;

var
  FEditControlli: TFEditControlli;

implementation

uses DMCommon,MsgDlgs;

{$R *.dfm}

procedure TFEditControlli.aConfermaExecute(Sender: TObject);
begin
  inherited;
  if (Controlli.State in dsEditModes) then
     Controlli.Post;
  ModalResult := mrOk;
end;

procedure TFEditControlli.aConfermaUpdate(Sender: TObject);
begin
  inherited;
  aConferma.Enabled := (Controlli.State in dsEditModes);
end;

procedure TFEditControlli.aTestControlloExecute(Sender: TObject);
begin
  inherited;
  if (Controlli.State in dsEditModes) then
     Controlli.Post;
  TestControllo.ParamByName('pkterr').AsInteger := ControlliPKTIPOERRORI.AsInteger;
  try
  TestControllo.ExecSQL;
  except
     on E: Exception do
        MsgDlgPos(E.Message, '', ktError, [kbOk], dfFirst);
  end;
  Controlli.RefreshRecord;
end;

procedure TFEditControlli.aTestControlloUpdate(Sender: TObject);
begin
  inherited;
  aTestControllo.Enabled := (cxDBSTMT.Lines.Count>0);
end;

procedure TFEditControlli.csEZKeys1KeyIntercept(KeyType: TNavigationKey;
  Ctrl: TControl; var Intercept: Boolean);
begin
  inherited;
  Intercept := Intercept and Assigned(Ctrl) and not (Ctrl is TcxCustomInnerMemo);
end;

procedure TFEditControlli.DoCreate;
begin
  inherited;
  ReadBarCode := False;
end;

end.