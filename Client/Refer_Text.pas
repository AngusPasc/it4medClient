unit Refer_Text;

interface

uses
  Forms, BaseRefer, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxDBLookupComboBox,
  cxRichMemoDlg, Menus, UDXPopup, dxBar, AstaUpdateSQL, AstaDrv2,
  AstaClientDataset, Classes, ActnList, CSEZForm, cxDBEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxMemo,
  ExtCtrls,  cxLabel, Controls, cxContainer, cxDBLabel,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxLookAndFeels, cxGroupBox, dxLayoutcxEditAdapters, dxLayoutControl,
  cxBlobEdit, cxGridCardView, cxGridDBCardView, cxNavigator,
  dxLayoutContainer, cxGridCustomLayoutView;

type
  TFRefer_Text = class(TFBaseRefer)
    WPReferto: TcxDBMemo;
    procedure csEZKeys1KeyIntercept(KeyType: TNavigationKey;
      Ctrl: TControl; var Intercept: Boolean);
    procedure WPRefertoEnter(Sender: TObject);
    procedure WPRefertoExit(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure StopDettatura; override;
    function LeggiReferto: string; override;
    procedure ScriviReferto; override;
    procedure ScriviTesto(const testo: string); override;
    procedure InserisciTesto(const testo: string); override;
    procedure CaricaPrecedente; override;
    procedure CancellaReferto; override;
    procedure FocusOnEditor; override;
    procedure StartDettatura; override;
    function DettaturaAttiva: boolean; override;
    procedure ConnettiDettatura; override;
    function EsisteReferto: boolean; override;
  public
    { Public declarations }
  end;

//var
//  FRefer_Text: TFRefer_Text;

implementation
uses Clipbrd;

{$R *.dfm}

procedure TFRefer_Text.StopDettatura;
begin
end;

function TFRefer_Text.LeggiReferto: string;
begin
  result := WPReferto.Text;
end;

procedure TFRefer_Text.ScriviReferto;
begin
end;

procedure TFRefer_Text.CaricaPrecedente;
begin
end;

procedure TFRefer_Text.ScriviTesto(const testo: string);
//var
//  temp: string;
begin

{JRT 1386}
  Clipboard.AsText := testo;
  if not WPReferto.Focused then
     WPReferto.SetFocus;
  WPReferto.Properties.BeginUpdate;
  WPReferto.PasteFromClipboard;
  WPReferto.Properties.EndUpdate;
{}

{ex:
  temp := LeggiReferto;
  if (Length(temp)>0) and (Copy(temp,Length(temp),1)<>#10) then
      temp := temp + #13 + #10;
  if not (Esame.State in dsEditModes) then
     Esame.Edit;
  qRefertoDIAGNOSI.AsString := temp + testo;
}
end;

procedure TFRefer_Text.InserisciTesto(const testo: string);
begin
   ScriviTesto(testo);
end;

procedure TFRefer_Text.CancellaReferto;
begin
   WPReferto.Clear;
end;

procedure TFRefer_Text.FocusOnEditor;
begin
   WPReferto.SetFocus;
end;

procedure TFRefer_Text.StartDettatura;
begin
end;

function TFRefer_Text.DettaturaAttiva: boolean;
begin
  result := false;
end;

procedure TFRefer_Text.ConnettiDettatura;
begin
end;

function TFRefer_Text.EsisteReferto: boolean;
begin
  result := inherited EsisteReferto or (Length(WPReferto.Text)>0);
end;

procedure TFRefer_Text.csEZKeys1KeyIntercept(KeyType: TNavigationKey;
  Ctrl: TControl; var Intercept: Boolean);
begin
  inherited;
  Intercept := Intercept and not (Ctrl is TcxCustomInnerMemo);
end;

procedure TFRefer_Text.WPRefertoEnter(Sender: TObject);
begin
  inherited;
  oldReadBarCode := ReadBarCode;
  ReadBarCode := False;
end;

procedure TFRefer_Text.WPRefertoExit(Sender: TObject);
begin
  inherited;
  ReadBarCode := oldReadBarCode;
end;

initialization
  Classes.RegisterClass(TFRefer_Text);

end.