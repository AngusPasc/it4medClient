unit Splash;

interface

uses
  dxSkinsForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  cxTextEdit, cxMemo, cxProgressBar, cxLabel, dxLayoutContainer,
  dxGDIPlusClasses, cxImage, Classes, Controls, dxLayoutControl;


type
  TfrmSplash = class(TdxSkinForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    imgLogo: TcxImage;
    dxLayoutControl1Item2: TdxLayoutItem;
    fcVersione: TcxLabel;
    dxLayoutControl1Item3: TdxLayoutItem;
    lblCopyright: TcxLabel;
    dxLayoutControl1Item4: TdxLayoutItem;
    ProgressBar: TcxProgressBar;
  private
    { Private declarations }
    function GetProgress: Double;
    procedure SetProgress(AValue: Double);
  protected
    procedure Loaded; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure InizioAggiornamento;
    procedure FineAggiornamento;
//    procedure SetSkin;
    property Progress: Double read GetProgress write SetProgress;
  end;

var
  frmSplash: TfrmSplash;

implementation
uses math, sysutils, VersInfo, IInterface, Forms, Graphics, IniFiles, DMCommon;

{$R *.dfm}

procedure TfrmSplash.Loaded;
var
  ref,i,xwidth,xheight: integer;
  verInfo: TVersionInfoResource;
begin

 inherited;

 if Screen.Monitorcount>1 then
 begin
   ref := -1;
   for i:=0 to Screen.Monitorcount-1 do
   begin
     if (ref=-1) or (abs(Screen.Monitors[i].WorkAreaRect.Right - Screen.Monitors[i].WorkAreaRect.Left)<ref) then
        ref := abs(Screen.Monitors[i].WorkAreaRect.Right - Screen.Monitors[i].WorkAreaRect.Left);
   end;

   i:=-1;
   repeat
     inc(i);
   until (i=Screen.Monitorcount) or Screen.Monitors[i].Primary;
   if (i<Screen.Monitorcount) and (ref<>abs(Screen.Monitors[i].WorkAreaRect.Right - Screen.Monitors[i].WorkAreaRect.Left)) then
      ScegliMonitor := true;
 end;

{6.6.2006 -- eliminata gestione con ScegliMonitor !!!}
 ScegliMonitor := false;
{}

 if ScegliMonitor then
 begin
    DefaultMonitor := dmDesktop;
    Position := poDefaultSizeOnly;

    i:=-1;
    repeat
      inc(i);
    until (i=Screen.Monitorcount) or Screen.Monitors[i].Primary;
    if (i=Screen.Monitorcount) then
       i := 0;
    ref := abs(Screen.Monitors[i].WorkAreaRect.Right - Screen.Monitors[i].WorkAreaRect.Left);
    i:=-1;
    repeat
      inc(i);
    until (i=Screen.Monitorcount) or (abs(Screen.Monitors[i].WorkAreaRect.Right - Screen.Monitors[i].WorkAreaRect.Left)<>ref);
    if (i=Screen.Monitorcount) then
       i := 0;

    xHeight := (Screen.Monitors[i].WorkAreaRect.Bottom - Screen.Monitors[i].WorkAreaRect.Top) div 2;
    xWidth := (Screen.Monitors[i].WorkAreaRect.Right - Screen.Monitors[i].WorkAreaRect.Left) div 2;
    Left := Screen.Monitors[i].WorkAreaRect.Left + max((xWidth - (Width div 2)),0);
    Top  := Screen.Monitors[i].WorkAreaRect.Top + max((xHeight - (Height div 2)),0);
//    ShowMsg(format('l: %d t: %d',[Left,Top]));
 end
 else begin
   DefaultMonitor := dmPrimary;  // dmMainForm;  // dmActiveForm;
   Position := poScreenCenter;
 end;

  verInfo := TVersionInfoResource.KSCreate( Application.ExeName );
  try
     fcVersione.Caption := {Application.Title +} ' ver. '+format('%s',[verInfo.FileVersion.AsString]);
  except
    {per non visualizzare errori dei progetti che non hanno numero di versione}
//    xversione := '';
  end;
  verInfo.Free;

end;

function TfrmSplash.GetProgress: Double;
begin
  Result := ProgressBar.Position;
end;

procedure TfrmSplash.SetProgress(AValue: Double);
begin
  ProgressBar.Position := AValue;
  Update;
end;

constructor TfrmSplash.Create(AOwner: TComponent);
begin
  inherited;
  ProgressBar.Position := 0;
  if gblDebugMode then
     Self.FormStyle := fsNormal;
end;

destructor TfrmSplash.Destroy;
begin
  inherited;
end;


procedure TfrmSplash.InizioAggiornamento;
begin
{
  if not PnlUpgrade.Visible then
  begin
    PnlUpgrade.Left := PnlLoad.Left;
    PnlUpgrade.Top := PnlLoad.Top;
    PnlUpgrade.Height := PnlLoad.Height;
    PnlUpgrade.Width := PnlLoad.Width;
    PnlLoad.Visible := false;
    PnlUpgrade.Visible := true;
    Animate1.Active := true;
  end;
}
end;

procedure TfrmSplash.FineAggiornamento;
begin
{
  if PnlUpgrade.Visible then
  begin
    Animate1.Active := false;
    PnlUpgrade.Visible := false;
    PnlLoad.Visible := true;
  end;
}
end;


procedure LoadSkin;
var
  fIni: TIniFile;
  skinIniFile: string;
begin
(*
  gblSkinName := '';
  gblColorName := '';
  skinIniFile := ExtractFilePath(Application.ExeName) + 'skin.ini';
  if FileExists(skinIniFile) then
  begin
    fIni := TIniFile.Create(skinIniFile);
    try
      gblSkinName := fIni.ReadString('files', 'name', '');
      if not FileExists(gblSkinName) then
      begin
         gblSkinName := '';
         gblColorName := '';
      end
      else begin
         gblColorName := fIni.ReadString('files', 'color', '');
      end;
    finally
      FreeAndNil(fIni);
    end;
  end;

  if (gblSkinName='') and FileExists('SkinIt4Med.skinres') then
      gblSkinName := 'SkinIt4Med.skinres';

  if (gblSkinName <> '') then
     dxSkinsUserSkinLoadFromFile(gblSkinName,'')
*)

//  gblSkinName := 'Metropolis';

(*
  FSkinSelected := SkinNames[pSkin];
  dxSkinController.Kind := lfUltraFlat;
  dxSkinController.NativeStyle := False;
  dxSkinController.SkinName := FSkinSelected;
  dxLayoutSkinLookAndFeel1.LookAndFeel.Kind := lfUltraFlat;
  dxLayoutSkinLookAndFeel1.LookAndFeel.NativeStyle := False;
  dxLayoutSkinLookAndFeel1.LookAndFeel.SkinName := FSkinSelected;
*)

end;

initialization
  LoadSkin;
end.
