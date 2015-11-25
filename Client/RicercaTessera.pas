unit RicercaTessera;

interface

{$DEFINE READTIMER}

uses
  BaseRad, IIConsts, {}Classes, ActnList, dxLayoutControl, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxControls, CSEZForm,
   Controls, ExtCtrls,  dxSkinsCore,
  dxSkinsDefaultPainters, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxGraphics, cxLookAndFeels, dxLayoutcxEditAdapters,
  dxSkinscxPCPainter, dxLayoutContainer, cxGroupBox;

type
  TFRicercaTessera = class(TFBaseRad)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxCodFisc: TcxMaskEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    ActionList1: TActionList;
    aConferma: TAction;
    Timer1: TTimer;
    procedure BaseFormKeyPress(Sender: TObject; var Key: Char);
    procedure aConfermaExecute(Sender: TObject);
    procedure aConfermaUpdate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SendPortDataToForm(const s: string; lungh: integer); override;

  end;

var
  FRicercaTessera: TFRicercaTessera;

implementation

uses DMCommon, Windows;

{$R *.dfm}

procedure TFRicercaTessera.BaseFormKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
{$IFDEF READTIMER}
  if not Timer1.Enabled then
     Timer1.Enabled := true;
{$ENDIF}
end;

procedure TFRicercaTessera.aConfermaExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TFRicercaTessera.aConfermaUpdate(Sender: TObject);
begin
  inherited;
  aConferma.Enabled := (Length(cxCodFisc.Text)=16);
end;

procedure TFRicercaTessera.Timer1Timer(Sender: TObject);
var
  temp: string;
begin
  inherited;

  Timer1.Enabled := false;
  temp := TrasformaCF(KeyBuffer);
  if temp<>'' then
     SendPortDataToForm(temp, Length(temp));

end;

procedure TFRicercaTessera.SendPortDataToForm(const s: string; lungh: integer);
begin
   inherited;

   cxCodFisc.Text := s;
   PostMessage(Handle,SY_DBLCLICK,0,LongInt(aConferma));
end;

end.