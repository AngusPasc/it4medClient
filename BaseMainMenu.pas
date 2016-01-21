unit BaseMainMenu;

interface

uses
  dxSkinsForm, Forms, Messages, Windows, IIConsts,{}cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, dxStatusBar, dxRibbonStatusBar, StdCtrls,
  cxButtons, cxProgressBar, cxTextEdit, cxMemo, cxRichEdit, ExtCtrls,
  cxSplitter, dxCustomTileControl, cxClasses, Classes, Controls,
  dxTileControl, dxSkinsCore, dxSkinsDefaultPainters, dxSkinsdxStatusBarPainter;

{JRT 460}
{.$DEFINE TASKUNICO}    // -- Attivare per chiudere i Task non più attivi (vedi problemi sul refresh dei dati in locale e dal server)

type

  TdxTileControlAccess = class (TdxTileControl)
  protected
    procedure DoDeactivateDetail(ADetail: TdxTileControlDetailSite); override;
  end;

  TdxTileControl = class (TdxTileControlAccess);

  TfrmBaseMainMenu = class(TdxSkinForm)
    dxTile: TdxTileControl;
    tlaExit: TdxTileControlActionBarItem;
    tcaBlackTheme: TdxTileControlActionBarItem;
    tcaWhiteTheme: TdxTileControlActionBarItem;
    dxTiledxTileControlGroup1: TdxTileControlGroup;
    dxTiledxTileControlGroup2: TdxTileControlGroup;
    cxSplitter1: TcxSplitter;
    pnlUpgrade: TPanel;
    reUpgrade: TcxRichEdit;
    cxProgressUpdate: TcxProgressBar;
    dxStatusBar: TdxRibbonStatusBar;
    cxButton1: TcxButton;
    tcaLogPanelOn: TdxTileControlActionBarItem;
    tcaLogPanelOff: TdxTileControlActionBarItem;
    procedure cxButton1Click(Sender: TObject);
    procedure tlaExitClick(Sender: TdxTileControlActionBarItem);
    procedure tcaBlackThemeClick(Sender: TdxTileControlActionBarItem);
    procedure tcaWhiteThemeClick(Sender: TdxTileControlActionBarItem);
    procedure tcaLogPanelOnClick(Sender: TdxTileControlActionBarItem);
    procedure tcaLogPanelOffClick(Sender: TdxTileControlActionBarItem);
  private
    FImgList: TcxImageList;
    function GetTileItem(const aFrameName: string): TdxTileControlItem;
(*
    procedure RunTask(const aFrame: string);
*)
    function CheckConnect: boolean;
    procedure WMConfigurationRead(var msg: TMessage); message WM_CONFIGURATION_READ;
    procedure WMApplicationEnd(var msg: TMessage); message WM_APPLICATION_END;
    procedure WMCloseDetail(var msg: TMessage); message WM_CLOSE_DETAIL;
    procedure WMOnActivateDetail(var Message: TMessage); message WM_ON_ACTIVATE_DETAIL;
    procedure WMOnDeactivateDetail(var Message: TMessage); message WM_ON_DEACTIVATE_DETAIL;
  protected
    procedure DoCreate; override;
    procedure WndProc(var Msg: TMessage); override;
    procedure HandleParam(const Param: string);
    procedure CreateParams(var Params: TCreateParams); override;
    procedure DoActivateDetail(Sender: TdxTileControlItem);
    procedure DoDeactivateDetail(Sender: TdxTileControlItem);    
  public
    property ImgList: TcxImageList read FImgList write FImgList;
  end;


implementation

uses //System.Threading, System.UITypes,
     DMCommon, syForm, WUpdate, IdGlobal
     ,SysUtils
//     ,FMX.Overbyte.IniFiles
//     ,USingleInst
     ;

{$R *.dfm}

procedure TfrmBaseMainMenu.CreateParams(var Params: TCreateParams);
begin
  inherited;
//  SingleInst.CreateParams(Params);
end;

procedure TfrmBaseMainMenu.HandleParam(const Param: string);
begin
  //
end;

procedure TfrmBaseMainMenu.WndProc(var Msg: TMessage);
begin
//  if not SingleInst.HandleMessages(Self.Handle, Msg) then
    inherited;
end;

function TfrmBaseMainMenu.GetTileItem(const aFrameName: string): TdxTileControlItem;
var
  i: integer;
begin
  result := nil;
  for i:=0 to dxTile.Items.Count-1 do
      if UpperCase(dxTile.Items[i].Name)=aFrameName then
      begin
         result := dxTile.Items[i];
         break;
      end;
end;

procedure TfrmBaseMainMenu.DoCreate;
var
  i: integer;
  vv: tfvi;

  function VersionToString(fvi: tfvi): string;
  begin
    Result := inttostr(hiword(fvi.VersionMS))+'.'+inttostr(loword(fvi.VersionMS))+'.'+
      inttostr(hiword(fvi.VersionLS))+'.'+inttostr(loword(fvi.VersionLS));
  end;

begin

  inherited;

//  SingleInst.OnProcessParam := HandleParam;

//  FConnectType := ctNone;
  dxTile.LookAndFeel.AssignedValues := [];

   for i:=0 to ComponentCount-1 do
   begin
      if (Components[i] is TdxTileControlItem) then
      begin
         TdxTileControlItem(Components[i]).OnActivateDetail := DoActivateDetail;
         TdxTileControlItem(Components[i]).OnDeactivateDetail := DoDeactivateDetail;         
      end;
   end;

   FDMCommon.pnlUpgrade := pnlUpgrade;
   FDMCommon.reUpgrade := reUpgrade;
   FDMCommon.cxProgressUpdate := cxProgressUpdate;

end;

function TfrmBaseMainMenu.CheckConnect: boolean;
begin
    result := True; //FDMCommon.IsConnected;
    if result then
    begin
      PostMessage(Handle,WM_CONFIGURATION_READ,0,0);
    end;
end;

(*
procedure TfrmBaseMainMenu.RunTask(const aFrame: string);
begin
  TTask.Run( procedure
             var
               xBaseFrame: TfrmBase;
               ti: TdxTileControlItem;
             begin
               xBaseFrame := TFrameControl.GetFrameControlClass(aFrame).CreateNew(self,FImgList);
               TFrameControl.RegisterFrame(aFrame, xBaseFrame);
               ti := GetTileItem(aFrame);
               if ti<>nil then
               begin
                  ti.DetailOptions.DetailControl := xBaseFrame;
                  TThread.Queue(nil, procedure
                                     begin
                                        ti.Enabled := True;
                                     end);
               end;
             end
            );
end;
*)

procedure TfrmBaseMainMenu.tcaBlackThemeClick(
  Sender: TdxTileControlActionBarItem);
begin
  FDMCommon.SelectSkin(Sender.Tag);
end;

procedure TfrmBaseMainMenu.tcaWhiteThemeClick(
  Sender: TdxTileControlActionBarItem);
begin
  FDMCommon.SelectSkin(Sender.Tag);
end;

procedure TfrmBaseMainMenu.tlaExitClick(Sender: TdxTileControlActionBarItem);
begin
  Close;
end;

procedure TdxTileControlAccess.DoDeactivateDetail(ADetail: TdxTileControlDetailSite);
begin

  if gblCallCenter then
     Exit;

  if ADetail.TileItem.DetailOptions.DetailControl<>nil then
  begin

    TfrmBaseMainMenu(ADetail.owner.owner).dxStatusBar.Visible := True;
//    TfrmBaseMainMenu(ADetail.owner.owner).pnlUpgrade.Visible := FDMCommon.WebUpdate1.InProgress;

    if TsyForm(ADetail.TileItem.DetailOptions.DetailControl).CanClose then
      ActiveDetail := nil;
	  
  end
  else
      ActiveDetail := nil;

end;

procedure TfrmBaseMainMenu.cxButton1Click(Sender: TObject);
begin
    FDMCommon.WebUpdate1.Cancel;
    pnlUpgrade.Visible := false;
end;

procedure TfrmBaseMainMenu.DoActivateDetail(Sender: TdxTileControlItem);
var
  TFClass: TPersistentClass;
begin

  if Sender.DetailOptions.DetailControl = nil then
  begin
    TFClass := GetClass(Sender.Name);
    if TFClass<>nil then
//       Sender.DetailOptions.DetailControl := TFrameControl.GetFrameControlClass(Sender.Name).CreateNew(self,FImgList)
       Sender.DetailOptions.DetailControl := TsyFormClass(TFClass).CreateNew(self,FImgList)
    else
//       MessageDlg(format('Funzione non definita (%s)',[Sender.Name]), mtError, [mbOK], 0);
       raise Exception.Create(format('Funzione non definita (%s)',[Sender.Name]));
  end;

  if Sender.DetailOptions.DetailControl<>nil then
  begin
     dxStatusBar.Visible := false;
     pnlUpgrade.Visible := false;
     TsyForm(Sender.DetailOptions.DetailControl).DoShow;
     PostMessage(Handle, WM_ON_ACTIVATE_DETAIL, 0, Integer(Sender.DetailOptions.DetailControl));
  end;

end;

procedure TfrmBaseMainMenu.DoDeactivateDetail(Sender: TdxTileControlItem);
begin
{JRT 460}
{$IFDEF TASKUNICO}
      PostMessage(Handle, WM_ON_DEACTIVATE_DETAIL, 0, Integer(Sender.DetailOptions));
{$ENDIF}
{}
end;

procedure TfrmBaseMainMenu.WMConfigurationRead(var msg: TMessage);
var
  Key: string;
  ti: TdxTileControlItem;
  cnt: string;
begin

{$IFNDEF VIRTUALUI}
  if not gblDebugMode then
  begin
//    pnlUpgrade.Visible := True;
    FDMCommon.pnlUpgrade := pnlUpgrade;
    FDMCommon.reUpgrade := reUpgrade;
    FDMCommon.cxProgressUpdate := cxProgressUpdate;
//    FDMCommon.Update;
  end
  else
{$ENDIF}
    pnlUpgrade.Visible := False;
	
	
  FDMCommon.ProceduraConnessione;

  if not FDMCommon.IsConnected then
  begin
     TdxStatusBarStateIndicatorPanelStyle(dxStatusBar.Panels[0].PanelStyle).Indicators.Items[0].IndicatorType := sitRed;
     cnt := 'Non collegato';
  end
  else begin
     TdxStatusBarStateIndicatorPanelStyle(dxStatusBar.Panels[0].PanelStyle).Indicators.Items[0].IndicatorType := sitGreen;
//     cnt := format('Collegato a %s:%s - %s',[TCMDLineOptions.Server,TCMDLineOptions.Porta.ToString,TCMDLineOptions.NomeDB]);
     cnt := 'Collegato';
  end;
  dxStatusBar.Panels[1].Text := cnt;

  PostMessage(Handle,SY_USERCONNECTED,0,0);

(*
  if FDMCommon.IsConnected then
  begin
     for Key in TFrameControl.AFrameOpen.Keys do
      begin
        if TFrameControl.AFrameOpen.Items[Key] then
        begin
           ti := GetTileItem(Key);
           if ti<>nil then
           begin
              ti.Enabled := false;
              RunTask( Key );
           end;
        end;
      end;
  end;
*)
end;

procedure TfrmBaseMainMenu.WMApplicationEnd(var msg: TMessage);
begin
   Application.Terminate;
end;


procedure TfrmBaseMainMenu.tcaLogPanelOnClick(
  Sender: TdxTileControlActionBarItem);
begin
  pnlUpgrade.Visible := True;
end;

procedure TfrmBaseMainMenu.tcaLogPanelOffClick(
  Sender: TdxTileControlActionBarItem);
begin
  pnlUpgrade.Visible := false;
end;

procedure TfrmBaseMainMenu.WMCloseDetail(var msg: TMessage);
begin
  dxTile.ActiveDetail := nil;
end;

procedure TfrmBaseMainMenu.WMOnActivateDetail(var Message: TMessage);
begin
  TsyForm(Message.LParam).DoOnActivate;
end;

procedure TfrmBaseMainMenu.WMOnDeactivateDetail(var Message: TMessage);
begin
//  TsyForm(TdxTileControlItemDetailOptions(Message.LParam).DetailControl).Free;
  TdxTileControlItemDetailOptions(Message.LParam).DetailControl.Free;
  TdxTileControlItemDetailOptions(Message.LParam).DetailControl := nil;

end;

end.
