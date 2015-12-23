unit CutPaste;

interface

uses
  BaseRad, IInterface, IIConsts, Forms, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxEdit,
  DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  Classes, ActnList, Menus, dxBar, CSEZForm, 
   Controls, ExtCtrls,  cxDataStorage, Messages,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxLookAndFeels, cxContainer, cxNavigator, cxGroupBox;

type
  TFCutPaste = class(TFBaseRad)
    sAstaCut: TDataSource;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    ActionList1: TActionList;
    AzzeraMemoria: TAction;
    dxBarButton1: TdxBarButton;
    CercaSpazio: TAction;
    dxBarButton2: TdxBarButton;
    sAstaDett: TDataSource;
    EspandiTutto: TAction;
    ChiudiTutto: TAction;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    cxGrid1: TcxGrid;
    cxGridAnticipi: TcxGridDBTableView;
    cxGridAnticipiNOME_PAZIENTE: TcxGridDBColumn;
    cxGridAnticipiDATA_NASCITA: TcxGridDBColumn;
    cxGridAnticipiTELEFONO: TcxGridDBColumn;
    cxGridAnticipiPKTRIAGE: TcxGridDBColumn;
    cxGridAnticipiORA_INIZIO: TcxGridDBColumn;
    cxGridEsami: TcxGridDBTableView;
    cxGridEsamiCODICE: TcxGridDBColumn;
    cxGridEsamiDESCRIZIONE: TcxGridDBColumn;
    cxGridEsamiDURATA: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    Esci: TAction;
    cxGridAnticipiSTATOVISITA: TcxGridDBColumn;
dxBarManager1Bar1: TdxBar;    
    procedure AzzeraMemoriaExecute(Sender: TObject);
    procedure AzzeraMemoriaUpdate(Sender: TObject);
    procedure EspandiTuttoExecute(Sender: TObject);
    procedure ChiudiTuttoExecute(Sender: TObject);
    procedure CercaSpazioUpdate(Sender: TObject);
    procedure CercaSpazioExecute(Sender: TObject);
    procedure BaseFormClose(Sender: TObject; var Action: TCloseAction);
    procedure EsciExecute(Sender: TObject);
  private
    { Private declarations }
    FHandle: THandle;
    procedure CancellaDettaglio(var Message: TMessage); message SY_CANCDETTCUTPASTE;
  protected
     procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

// var
//  FCutPaste: TFCutPaste;

implementation

uses AstaDrv2,Windows,sysutils, DMCommon;

{$R *.dfm}

constructor TFCutPaste.Create(AOwner: TComponent);
begin
   FHandle := TWinControl(AOwner).Handle;
   inherited Create(nil);

end;

procedure TFCutPaste.AzzeraMemoriaExecute(Sender: TObject);
begin
  inherited;
  TAstaDataset(sAstaCut.Dataset).Empty;
  TAstaDataset(sAstaDett.Dataset).Empty;
//  PostMessage(FHandle,SY_CHIUDICUTPASTE,0,0);
  PostMessage(FHandle,SY_REFRESHCALENDARI,0,0);
end;

procedure TFCutPaste.CreateParams(var Params: TCreateParams);
begin
  inherited;

  with Params do begin
       WndParent := FHandle;
  end;

end;

procedure TFCutPaste.AzzeraMemoriaUpdate(Sender: TObject);
begin
  inherited;
  AzzeraMemoria.Enabled := not TAstaDataset(sAstaCut.Dataset).IsEmpty;
end;

procedure TFCutPaste.EspandiTuttoExecute(Sender: TObject);
begin
  inherited;
	cxGridAnticipi.ViewData.Expand(False);
end;

procedure TFCutPaste.ChiudiTuttoExecute(Sender: TObject);
begin
  inherited;
	cxGridAnticipi.ViewData.Collapse(False);
end;

procedure TFCutPaste.CercaSpazioUpdate(Sender: TObject);
begin
  inherited;
  CercaSpazio.Enabled := not TAstaDataset(sAstaCut.Dataset).IsEmpty;
end;

procedure TFCutPaste.CercaSpazioExecute(Sender: TObject);
begin
  inherited;
  PostMessage(FHandle,SY_CERCAINCALENDARI,0,0);
end;

procedure TFCutPaste.BaseFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
//  Action := caFree;
  Action := caHide;
  PostMessage(FHandle,SY_CHIUDICUTPASTE,0,0);
end;

procedure TFCutPaste.EsciExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFCutPaste.CancellaDettaglio(var Message: TMessage);
begin

  sAstaCut.Dataset.DisableControls;
  sAstaDett.Dataset.DisableControls;
  try
    if sAstaDett.Dataset.Locate('PKPRESTAZIONI',Message.LParam,[]) then
    begin
       sAstaDett.Dataset.Delete;
       TAstaDataSet(sAstaDett.Dataset).CancelRange;
       TAstaDataSet(sAstaDett.Dataset).SetRange([Message.WParam],[Message.WParam]);
       if sAstaDett.Dataset.IsEmpty then
       begin
         if sAstaCut.Dataset.Locate('PKTRIAGE',Message.WParam,[]) then
            sAstaCut.Dataset.Delete;
       end;
       TAstaDataSet(sAstaDett.Dataset).CancelRange;
       if sAstaCut.Dataset.IsEmpty then
          Close;
    end;
  finally
    sAstaDett.Dataset.EnableControls;
    sAstaCut.Dataset.EnableControls;
  end;

end;

end.