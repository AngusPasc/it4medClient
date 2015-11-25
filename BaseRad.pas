unit BaseRad;

interface

uses
  BaseForm, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, CSEZForm, StdCtrls, cxButtons, Classes,
  Controls, cxGroupBox;

type
  TFBaseRad = class(TBaseForm)
    btSalva: TcxButton;
    btAnnulla: TcxButton;
    csEZKeys1: TcsEZKeys;
    PopupMenuPersonalizza: TPopupMenu;
    ResetForm: TMenuItem;
    cxPersonalizza: TcxButton;
    cxGroupBox1: TcxGroupBox;
    procedure csEZKeys1KeyIntercept(KeyType: TNavigationKey;
      Ctrl: TControl; var Intercept: Boolean);
    procedure cxPersonalizzaClick(Sender: TObject);
    procedure ResetFormClick(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure KeyUp(var Key: Word; Shift: TShiftState); override;
    procedure AggiustaFormShow(xSynapse,xDoppioMonitor: Boolean); virtual;
    procedure DoCreate; override;
    procedure DoShow; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure KeyPress(var Key: Char); override;
    procedure SendPortDataToForm(const s: string; lungh: integer); override;
  end;

var
  FBaseRad: TFBaseRad;

implementation
uses DMCommon, MsgDlgs, sysutils, Forms, Windows;

{$R *.DFM}


constructor TFBaseRad.Create(AOwner: TComponent);
begin

    // -- forzata a singole per form modali... (31/10/2002)
    InternalWindowsMode := syModal;
    inherited CreateNew(AOwner,FDMCommon.ImgList);

end;


procedure TFBaseRad.csEZKeys1KeyIntercept(KeyType: TNavigationKey;
  Ctrl: TControl; var Intercept: Boolean);
begin
	Intercept := Intercept and (Ctrl<>nil) {and not (Ctrl is TcxRichInnerMemo)} and not (Ctrl is TcxButton);
end;


procedure TFBaseRad.AggiustaFormShow(xSynapse,xDoppioMonitor: Boolean);
var
  Rect : TRect;

    function GetWorkAreaRect() : TRect;
    begin
    {$WARNINGS OFF}
        SystemParametersInfo(SPI_GETWORKAREA, 0, @Result, 0);
    {$WARNINGS ON}
    end;
begin
(*
{JRT 5200}
//  if FDMCommon.Synapse and FDMCommon.DoppioMonitor and (Self.WindowState=wsMaximized) then
  if xSynapse and {xDoppioMonitor and} (Self.WindowState=wsMaximized) then
  begin
    Rect := GetWorkAreaRect();
    self.Constraints.MaxHeight := Rect.Bottom - Rect.Top;
    self.Constraints.MaxWidth := Rect.Right - Rect.Left;
  end;
{}
*)
  Rect := GetWorkAreaRect();
  if Height > (Rect.Bottom - Rect.Top) then
  begin
     Height := (Rect.Bottom - Rect.Top);
  end;
end;

procedure TFBaseRad.KeyUp(var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (ssShift in Shift) and (ssCtrl in Shift) and (Key=VK_F12) then
  begin
      MessageBox(0,PChar(Format('Form [%s]', [Self.Name])),
        PChar('Form Infos'),0);
  end;
end;

procedure TFBaseRad.KeyPress(var Key: Char);
begin
  if Key=#27 then
  begin
     Key := #0;
     ModalResult := mrCancel;
//     Close;
  end
  else
     inherited;
end;

procedure TFBaseRad.SendPortDataToForm(const s: string; lungh: integer);
begin
  if Assigned(Application.MainForm) then
  begin
     TBaseForm(Application.MainForm).SendPortDataToForm(s,lungh);
  end;
end;

procedure TFBaseRad.DoShow;
begin
  inherited;
  cxPersonalizza.Visible := False;  //Personalizza;
  AggiustaFormShow(True,False);
end;

procedure TFBaseRad.cxPersonalizzaClick(Sender: TObject);
begin
  StartPersonalizza;
end;

procedure TFBaseRad.ResetFormClick(Sender: TObject);
begin
  ResetPersonalizza;
end;

procedure TFBaseRad.DoCreate;
begin
  inherited;
  cxGroupBox1.Style.LookAndFeel.SkinName := gblSkinName;
  Personalizza := gblSuperUser;
end;

end.
