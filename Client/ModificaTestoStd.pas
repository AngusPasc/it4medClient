unit ModificaTestoStd;

interface

uses
  BaseRad, cxRichMemoDlg, dxBar, DB, cxMemo, cxDBEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, Controls, StdCtrls,
  CSEZForm,   Classes, ExtCtrls, 
  dxLayoutControl, ActnList, cxRichEdit, cxDBRichEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinsdxBarPainter,
  cxClasses, Menus, cxLookAndFeelPainters, cxButtons, cxGraphics,
  cxLookAndFeels, dxLayoutcxEditAdapters, dxLayoutContainer, cxGroupBox;

type
  TFModificaTestoStd = class(TFBaseRad)
    sTestiStd: TDataSource;
    cxRichMemoDlg: TcxRichMemoDlg;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxCodice: TcxDBMaskEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxDescrizione: TcxDBMaskEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    TestoStandard: TcxDBRichEdit;
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxBarButton1: TdxBarButton;
    ActionList1: TActionList;
    aZoom: TAction;
dxBarManager1Bar1: TdxBar;
    aConferma: TAction;
    aAnnulla: TAction;
    procedure btSalvaClick(Sender: TObject);
    procedure btAnnullaClick(Sender: TObject);
    procedure csEZKeys1KeyIntercept(KeyType: TNavigationKey;
      Ctrl: TControl; var Intercept: Boolean);
    procedure aZoomExecute(Sender: TObject);
  private
    { Private declarations }
    FRTF: boolean;
  protected
    procedure DoCreate; override;
    procedure DoShow; override;
  public
    { Public declarations }

    property RTF: boolean read FRTF write FRTF;
  end;

var
  FModificaTestoStd: TFModificaTestoStd;

implementation

uses DMCommon;


{$R *.DFM}

procedure TFModificaTestoStd.btSalvaClick(Sender: TObject);
begin
  inherited;
  if (sTestiStd.Dataset.State in dsEditModes) then
     sTestiStd.Dataset.Post;
  ModalResult := mrOk;
end;

procedure TFModificaTestoStd.btAnnullaClick(Sender: TObject);
begin
  inherited;
  if (sTestiStd.Dataset.State in dsEditModes) then
     sTestiStd.Dataset.Cancel;
  Modalresult := mrCancel;
end;

procedure TFModificaTestoStd.csEZKeys1KeyIntercept(KeyType: TNavigationKey;
  Ctrl: TControl; var Intercept: Boolean);
begin
  inherited;
//  Intercept := Intercept and not (Ctrl is TcxCustomInnerMemo {ex: per RichEdit TcxRichInnerEdit});
{JRT 5126}
  Intercept := Intercept and Assigned(Ctrl) and not (Ctrl is TcxRichInnerEdit);
{}
end;

procedure TFModificaTestoStd.aZoomExecute(Sender: TObject);
begin
  inherited;
  strRichMemoText := TStringStream.Create('');
  strRichMemoText.WriteString(TestoStandard.Text);

  if cxRichMemoDlg.Execute(false) then
  begin
     if not (sTestiStd.DataSet.State in dsEditModes) then
        sTestiStd.DataSet.Edit;
     if not RTF then
        TestoStandard.Text := FDMCommon.RTFToANSI(strRichMemoText.DataString)
     else
        TestoStandard.Text := strRichMemoText.DataString;
  end;
  strRichMemoText.Free;
  strRichMemoText := nil;

end;

procedure TFModificaTestoStd.DoCreate;
begin
  inherited;
  FRTF := false;
end;

procedure TFModificaTestoStd.DoShow;
begin
  inherited;
  TestoStandard.Properties.MemoMode := not RTF;
end;

end.