unit DocPreview;

interface

uses
  gtViewerTypes, dxSkinsForm, gtPDFViewer, gtPDFDoc, gtPDFPrinter,{}
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, ImgList, Controls, Classes, ActnList,
  Buttons, ExtCtrls, cxSpinEdit, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, StdCtrls, cxButtons, cxGroupBox;


{.$I syVer.inc}

const
  ZoomIncrement = 25;

type

  TfDocPreview = class(TdxSkinForm)
    ActionList1: TActionList;
    aStampa: TAction;
    Panel2: TPanel;
    BtnFirstPage: TSpeedButton;
    BtnPriorPage: TSpeedButton;
    BtnNextPage: TSpeedButton;
    BtnLastPage: TSpeedButton;
    BtnFitPage: TSpeedButton;
    BtnActualSize: TSpeedButton;
    btnFitWidth: TSpeedButton;
    BtnZoomOut: TSpeedButton;
    BtnZoomIn: TSpeedButton;
    cxStampe: TcxComboBox;
    lblStampante: TcxLabel;
    cxCopie: TcxSpinEdit;
    lblNumero: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    btSalva: TcxButton;
    btAnnulla: TcxButton;
    procedure aStampaExecute(Sender: TObject);
    procedure aStampaUpdate(Sender: TObject);
    procedure BtnActualSizeClick(Sender: TObject);
    procedure btnFitWidthClick(Sender: TObject);
    procedure BtnFitPageClick(Sender: TObject);
    procedure BtnFirstPageClick(Sender: TObject);
    procedure BtnPriorPageClick(Sender: TObject);
    procedure BtnNextPageClick(Sender: TObject);
    procedure BtnLastPageClick(Sender: TObject);
    procedure BtnZoomInClick(Sender: TObject);
    procedure BtnZoomOutClick(Sender: TObject);
    procedure cxStampePropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
    FStampante: string;
    edZoom: string;
    FMyStream: TMemoryStream;
    FTitolo: string;
    FInStampa: boolean;
    FTipoReferto: integer;
    gtPDFViewer: TgtPDFViewer;
    gtPDFDocument: TgtPDFDocument;
    gtPDFPrinter: TgtPDFPrinter;
    procedure SetStampante(Value: string);
    procedure SetMyStream(Value: TMemoryStream);
    procedure UpdateButton;
    procedure UpdateStatusBar;
    procedure gtPDFViewerPageChange(Sender: TgtPDFViewer; const CurrentPageIndex: TPageIndex);
    procedure gtPDFViewerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  protected
    procedure DoCreate; override;
    procedure DoShow; override;
  public
    { Public declarations }
	  constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;    

    procedure KeyPress(var Key: Char); override;
    procedure ProcStampa;
    
    property MyStream: TMemoryStream read FMyStream write SetMyStream;
    property Titolo: string read FTitolo write FTitolo;
    property InStampa: boolean read FInStampa write FInStampa;
    property Stampante: string read FStampante write SetStampante;
    property TipoReferto: integer read FTipoReferto write FTipoReferto;
  end;

resourcestring
  Doc_ErroreStampa = 'Errore in fase di stampa. Prego controllare la stampante.'#13#10'(%s)';
  Doc_ErrorePDF = 'Errore nel documento PDF.'#13#10'(%s)';

implementation

uses Printers, Math, sysutils, {PDIGDIPlus,} gtCstPDFDoc, Graphics, Dialogs,
  DMCommon;

{$R *.dfm}

procedure TfDocPreview.SetStampante(Value: string);
begin
  FStampante := Value;
  if Value<>cxStampe.Text then
     cxStampe.Text := Value;
end;

procedure TfDocPreview.SetMyStream(Value: TMemoryStream);
var
  res: integer;
  PdfStream: TMemoryStream;
begin
  FMyStream := Value;
  Value.Position := 0;
//      if gtPDFDocument.LoadFromExternalStream(Value) then
  if gtPDFDocument.LoadFromStream(Value) then
  begin
    if Assigned(gtPDFViewer.PDFDocument) then
        gtPDFViewer.Reset;
    gtPDFViewer.PDFDocument := gtPDFDocument;
    if gtPDFDocument.IsLoaded then
    begin
      gtPDFViewer.PageNo := 1;
//      gtPDFViewer.RotationAngle := ra0;
      gtPDFViewer.Zoom := gtPDFViewer.GetStandardZoomValue(sztFitWidth);
      if Visible and gtPDFViewer.CanFocus then
         gtPDFViewer.Active := True;
      UpdateButton;
      UpdateStatusBar;
    end;
  end;
end;


procedure TfDocPreview.aStampaExecute(Sender: TObject);
begin
  ProcStampa;
end;

procedure TfDocPreview.ProcStampa;
var
  x: integer;
begin

  FInStampa := True;
  try

  if Stampante<>'' then
  begin
     x := Printer.Printers.IndexOf(Stampante);
     if (x>=0) and (Printer.PrinterIndex<>x) then
     begin
//        if (FDMCommon.LeggiPostoLavoroSET_DEFAULT_PRINTER.AsInteger=2) then
//            FDMCommon.SetPrinter(Stampante);
        Printer.PrinterIndex := x;
     end;
  end;

  try
//  for x:=1 to FRefPreview.cxCopie.Value do
  begin
     gtPDFDocument.DocInfo.Title := FTitolo;   //Format(RS_RefertoNr,[qPrintReportPKREFERTI.AsInteger]);
//     gtPDFViewer.PrintDoc(false);
     if Stampante<>'' then
        gtPDFPrinter.SelectPrinterByName(Stampante);
     gtPDFPrinter.Scaling := psFitPage;
     gtPDFPrinter.Copies := cxCopie.Value;
     gtPDFPrinter.PrintDoc;
  end;
  except
    on E:EPrinter do
       MessageDlg(Format(DOC_ErroreStampa,[E.Message]), mtError, [mbOK],0);
{
    on E:EGPLoadError do
       MessageDlg(Format(DOC_ErrorePDF,[E.Message]), mtError, [mbOK],0);
}
    else
       raise;
  end;

  ModalResult := mrOk;

  finally
      FInStampa := False;
  end;

end;

procedure TfDocPreview.DoCreate;

  function GetStampante: string;
  var
    OldPrinter: integer;
  begin
    try
       OldPrinter := Printer.PrinterIndex;
    except
       OldPrinter := -1;
    end;
     if OldPrinter<>-1 then
        result := Printer.Printers[OldPrinter]
     else
        result := '';
  end;

begin
  inherited;

  Caption := FTitolo;
  FInStampa := False;
  FMyStream := nil;
  cxStampe.Properties.Items.Assign(Printer.Printers);
  cxStampe.Text := GetStampante;
  Stampante := cxStampe.Text;

  FTipoReferto := 4;

  with gtPDFDocument do begin
//    About = 'Gnostice PDFtoolkit (www.gnostice.com)'
//    Version = '5.0.0.153'
    OpenAfterSave := False;
    MergeOptions := [moIncludeOutlines, moIncludeFormFields];
    EMailAfterSave := False;
    ShowSetupDialog := False;
  end;

    gtPDFViewer.Parent := self;
    with gtPDFViewer do begin
      Left := 85;
      Top := 12;
      Width := 1729;
      Height := 573;
      Align := alClient;
      Cursor := 1;
      Color := clGray;
      DockOrientation := doNoOrient;
      ParentColor := False;
      TabOrder := 1;
      TabStop := True;
      OnKeyDown := gtPDFViewerKeyDown;
//      About := 'Gnostice PDFtoolkit (www.gnostice.com)'
      Status := 'PDF Viewer loaded Successfully.';
      PDFDocument := gtPDFDocument;
      SearchHighlightColor := clGray;
//      Version := '5.0.0.153'
      OnPageChange := gtPDFViewerPageChange;
      ViewerMode := vmHand;
      AllowImageCopy := False;
      SelectedRegionColor := clSkyBlue;
      HighlightRegionColor := clYellow;
      HighlightRegionShape := stRectangle;
      BackgroundRendering := False;
      Caching.Enabled := True;
      Caching.DocumentCount := 10;
      DoubleBuffered := False;
      HighlightFormFields := False;
    end;

    with gtPDFPrinter do begin
      Collate := True;
      Copies := 1;
      Options := [poPageNums];
  //    About := 'Gnostice PDFtoolkit (www.gnostice.com)'
      PDFDocument := gtPDFDocument;
  //    Version := '5.0.0.153'
      AutoRotate := False;
      IgnoreHardMargin := False;
    end;

end;

procedure TfDocPreview.KeyPress(var Key: Char);
begin
  if (Key=#27) {and not btAnnulla.Enabled} then
     Key := #0
  else
     inherited;
end;

procedure TfDocPreview.aStampaUpdate(Sender: TObject);
begin
  inherited;
  aStampa.Enabled := (Stampante<>'') and not FInStampa; //and (xcopie>0)
end;


procedure TfDocPreview.BtnActualSizeClick(Sender: TObject);
begin
  inherited;
  gtPDFViewer.Zoom := gtPDFViewer.GetStandardZoomValue(sztActualSize);
  UpdateStatusBar;
end;

procedure TfDocPreview.btnFitWidthClick(Sender: TObject);
begin
  inherited;
  gtPDFViewer.Zoom := gtPDFViewer.GetStandardZoomValue(sztFitWidth);
  UpdateStatusBar;
end;

procedure TfDocPreview.BtnFitPageClick(Sender: TObject);
begin
  inherited;
  gtPDFViewer.Zoom := gtPDFViewer.GetStandardZoomValue(sztFitPage);
  UpdateStatusBar;
end;

procedure TfDocPreview.BtnFirstPageClick(Sender: TObject);
begin
  inherited;
  gtPDFViewer.First;
//  UpdateButton;
//  UpdateStatusBar
end;

procedure TfDocPreview.BtnPriorPageClick(Sender: TObject);
begin
  inherited;
  gtPDFViewer.Prior;
//  UpdateButton;
//  UpdateStatusBar
end;

procedure TfDocPreview.BtnNextPageClick(Sender: TObject);
begin
  inherited;
  gtPDFViewer.Next;
//  UpdateButton;
//  UpdateStatusBar
end;

procedure TfDocPreview.BtnLastPageClick(Sender: TObject);
begin
  inherited;
  gtPDFViewer.Last;
//  UpdateButton;
//  UpdateStatusBar
end;

procedure TfDocPreview.BtnZoomInClick(Sender: TObject);
var
  Lfactor: Integer;
begin
  if edZoom = '' then
  begin
    gtPDFViewer.Zoom := 1;
    UpdateStatusBar;
  end
  else
  begin
    Lfactor := Floor((gtPDFViewer.Zoom)/ ZoomIncrement);
    if ((gtPDFViewer.Zoom) - (ZoomIncrement * Lfactor)) = 0 then
      gtPDFViewer.Zoom := (ZoomIncrement * (Lfactor-1))
    else
      gtPDFViewer.Zoom := (ZoomIncrement * (Lfactor));

    BtnActualSize.Down := False;
    BtnFitPage.Down := False;
    btnFitWidth.Down := false;

    UpdateStatusBar;
  end;
end;

procedure TfDocPreview.BtnZoomOutClick(Sender: TObject);
var
  Lfactor: Integer;
begin
  if edZoom = '' then
  begin
    gtPDFViewer.Zoom := ZoomIncrement;
    UpdateStatusBar;
  end
  else
  begin
    Lfactor := Floor(strtofloat(edZoom)/ ZoomIncrement);
    gtPDFViewer.Zoom := (ZoomIncrement * (Lfactor+1));
    BtnActualSize.Down := False;
    BtnFitPage.Down := False;
    btnFitWidth.Down := false;
    UpdateStatusBar;
  end;
end;

procedure TfDocPreview.UpdateStatusBar;
begin
//  SbPageNo.Panels[0].Text := Format('Pagina %d di %d',[gtPDFViewer.PageNo,gtPDFViewer.PDFDocument.PageCount ]);
  edZoom := FormatFloat('#.##', gtPDFViewer.Zoom);
  BtnZoomIn.Enabled := (StrToFloat(edZoom)) <> 1 ;
end;

procedure TfDocPreview.UpdateButton;
begin
  BtnFirstPage.Enabled := not gtPDFViewer.IsFirst;
  BtnPriorPage.Enabled := not gtPDFViewer.IsFirst;
  BtnNextPage.Enabled := not gtPDFViewer.IsLast;
  BtnLastPage.Enabled := not gtPDFViewer.IsLast;
//  BtnActive.Enabled := True;
  BtnFitPage.Enabled := True;
  btnFitWidth.Enabled := True;
  BtnActualSize.Enabled := True;
  
  if round(gtPDFViewer.Zoom) = round(gtPDFViewer.GetStandardZoomValue(sztActualSize)) then
    BtnActualSize.Down := True
  else if round(gtPDFViewer.Zoom) = round(gtPDFViewer.GetStandardZoomValue(sztFitPage)) then
    BtnFitPage.Down := True
  else if round(gtPDFViewer.Zoom) = round(gtPDFViewer.GetStandardZoomValue(sztFitWidth)) then
    btnFitWidth.Down := True;


//  SearchButton.Enabled := True;
  BtnZoomOut.Enabled := True;
  BtnZoomIn.Enabled := True;
//  EdtGotoPage.Enabled := True;
//  edZoom.Enabled := True;
//  BtnRotate.Enabled := True;
end;

procedure TfDocPreview.cxStampePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  Stampante := cxStampe.Text;
end;

procedure TfDocPreview.gtPDFViewerKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case Key of
  33: BtnPriorPage.Click;
  34: BtnNextPage.Click;
  35: BtnLastPage.Click;
  36: BtnFirstPage.Click;
  end;

end;

procedure TfDocPreview.gtPDFViewerPageChange(Sender: TgtPDFViewer;
  const CurrentPageIndex: TPageIndex);
begin
  inherited;
  UpdateButton;
  UpdateStatusBar;
end;

procedure TfDocPreview.DoShow;
begin
  inherited;
  if not gtPDFViewer.Active then
     gtPDFViewer.Active := True;
  gtPDFViewer.SetFocus;
end;

constructor TfDocPreview.Create(AOwner: TComponent);
begin

  gtPDFDocument := TgtPDFDocument.Create(nil);
	gtPDFViewer := TgtPDFViewer.Create(nil);
  gtPDFPrinter := TgtPDFPrinter.Create(nil);

	inherited;

end;

destructor TfDocPreview.Destroy;
begin

	gtPDFViewer.Free;
  gtPDFPrinter.Free;
  gtPDFDocument.Free;

  inherited;

end;

end.
