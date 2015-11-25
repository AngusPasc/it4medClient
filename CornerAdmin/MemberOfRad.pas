unit MemberOfRad;

interface

uses
  Windows, Messages, IIConsts, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseRad, CSEZForm,   ExtCtrls, 
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxSplitter, AstaDrv2, AstaClientDataset, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, ActnList, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxLookAndFeels, cxDBLookupComboBox, cxContainer,
  cxNavigator, cxGroupBox;

type
  TFMemberOfRad = class(TFBaseRad)
    cxGridReparti: TcxGridDBTableView;
    cxRepartiLevel1: TcxGridLevel;
    cxReparti: TcxGrid;
    cxGridAccessi: TcxGridDBTableView;
    cxAccessiLevel1: TcxGridLevel;
    cxAccessi: TcxGrid;
    Reparti: TAstaClientDataSet;
    Splitter1: TcxSplitter;
    sReparti: TDataSource;
    RepartiPKREPARTI: TIntegerField;
    RepartiDESCRIZIONE: TStringField;
    cxGridRepartiPKREPARTI: TcxGridDBColumn;
    cxGridRepartiDESCRIZIONE: TcxGridDBColumn;
    Accessi: TAstaClientDataSet;
    sAccessi: TDataSource;
    AccessiDESCRIZIONE: TStringField;
    cxGridAccessiREPARTI_FK: TcxGridDBColumn;
    cxGridAccessiDESCRIZIONE: TcxGridDBColumn;
    AccessiREPARTI_FK: TIntegerField;
    AccessiPERSONALE_FK: TIntegerField;
    ActionList1: TActionList;
    aDeselezionaSingolo: TAction;
    aSelezionaSingoloCodice: TAction;
    aConferma: TAction;
    RepartiOSPEDALE: TStringField;
    cxGridRepartiOSPEDALE: TcxGridDBColumn;
    AccessiOSPEDALE: TStringField;
    cxGridAccessiOSPEDALE: TcxGridDBColumn;
    RepartiTIPO_REPARTO: TStringField;
    cxGridRepartiTIPO_REPARTO: TcxGridDBColumn;
    AccessiTIPO_REPARTO: TStringField;
    cxGridAccessiTIPO_REPARTO: TcxGridDBColumn;
    AccessiREP_DEF: TIntegerField;
    cxGridAccessiREP_DEF: TcxGridDBColumn;
    RepartiPKSERVIZI: TIntegerField;
    RepartiSERVRAD: TStringField;
    cxGridRepartiSERVRAD: TcxGridDBColumn;
    AccessiSERVIZI_FK: TIntegerField;
    AccessiDESCSERV: TStringField;
    AccessiTIPO_SERVIZIO: TStringField;
    cxGridAccessiDESCSERV: TcxGridDBColumn;
    RepartiTIPO_SERVIZIO: TStringField;
    cxGridRepartiPKSERVIZI: TcxGridDBColumn;
    AccessiCOD_FUNZIONE: TIntegerField;
    cxGridAccessiCOD_FUNZIONE: TcxGridDBColumn;
    TabFunzioni: TAstaClientDataSet;
    sTabFunzioni: TDataSource;
    TabFunzioniPKTABFUNZIONI: TIntegerField;
    TabFunzioniDESCRIZIONE: TStringField;
    TabFunzioniREPARTI_FK: TIntegerField;
    LkTabFunzioni: TAstaClientDataSet;
    sLkTabFunzioni: TDataSource;
    LkTabFunzioniPKTABFUNZIONI: TIntegerField;
    LkTabFunzioniDESCRIZIONE: TStringField;
    LkTabFunzioniREPARTI_FK: TIntegerField;
    procedure cxGridAccessiDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure AccessiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure RepartiBeforeQuery(Sender: TAstaBaseClientDataSet);
    procedure cxGridAccessiDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxGridAccessiDblClick(Sender: TObject);
    procedure aDeselezionaSingoloExecute(Sender: TObject);
    procedure aDeselezionaSingoloUpdate(Sender: TObject);
    procedure cxGridRepartiDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGridRepartiDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxGridRepartiDblClick(Sender: TObject);
    procedure aSelezionaSingoloCodiceExecute(Sender: TObject);
    procedure aSelezionaSingoloCodiceUpdate(Sender: TObject);
    procedure aConfermaExecute(Sender: TObject);
    procedure aConfermaUpdate(Sender: TObject);
    procedure BaseFormDestroy(Sender: TObject);
    procedure cxGridAccessiInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
  private
    { Private declarations }
    procedure cxGridAccessiREP_DEFEditValueChanged(Sender: TObject);
    procedure AggiornaSelezione(var Message: TMessage); message SY_AGGIORNALISTA;
  protected
    procedure DoCreate; override;
    procedure DoShow; override;
  public
    { Public declarations }
    xpkpersonale: integer;
    xtipo_reparto: string;
    
  end;

var
  FMemberOfRad: TFMemberOfRad;

implementation

uses DMCommon, cxCheckBox, Msgdlgs;

{$R *.dfm}

procedure TFMemberOfRad.cxGridAccessiDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  I: integer;
  pkm: integer;
  srv: integer;
begin
  inherited;

  Reparti.DisableControls;
  Accessi.DisableControls;
  try
  for I := 0 to cxGridReparti.Controller.SelectedRecordCount - 1 do
  begin
    pkm := cxGridReparti.Controller.SelectedRecords[i].Values[cxGridRepartiPKREPARTI.Index];
    srv := cxGridReparti.Controller.SelectedRecords[i].Values[cxGridRepartiPKSERVIZI.Index];
    if not Accessi.Locate('REPARTI_FK;SERVIZI_FK',VarArrayOf([pkm,srv]),[]) then
    begin
      Reparti.Locate('PKREPARTI;PKSERVIZI',VarArrayOf([pkm,srv]),[]);
      Accessi.Append;
      AccessiREPARTI_FK.AsInteger := RepartiPKREPARTI.AsInteger;
      AccessiPERSONALE_FK.AsInteger := xpkpersonale;
      AccessiDESCRIZIONE.AsString := RepartiDESCRIZIONE.AsString;
      AccessiTIPO_REPARTO.AsString := RepartiTIPO_REPARTO.AsString;
      if not RepartiPKSERVIZI.IsNull then
      begin
         AccessiSERVIZI_FK.AsInteger := RepartiPKSERVIZI.AsInteger;
         AccessiDESCSERV.AsString := RepartiSERVRAD.AsString;
         AccessiTIPO_SERVIZIO.AsString := RepartiTIPO_SERVIZIO.AsString;
      end;
      Accessi.Post;
    end;
  end;
  cxGridReparti.Controller.DeleteSelection;

  Reparti.First;
  while not Reparti.Eof do
  begin
     if Accessi.Locate('REPARTI_FK',RepartiPKREPARTI.AsInteger,[]) then
        Reparti.Delete
     else
        Reparti.Next;
  end;

  finally
     Reparti.EnableControls;
     Accessi.EnableControls;
     if (cxGridReparti.DataController.RecordCount>0) and Assigned(cxGridReparti.Controller.FocusedRecord) then
         cxGridReparti.Controller.FocusedRecord.Selected := true;
  end;

end;

procedure TFMemberOfRad.AccessiBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('personale_fk').AsInteger := xpkpersonale;
end;

procedure TFMemberOfRad.RepartiBeforeQuery(Sender: TAstaBaseClientDataSet);
begin
  inherited;
  Sender.Parambyname('personale_fk').AsInteger := xpkpersonale;
  Sender.Parambyname('tipo_reparto').AsString := xtipo_reparto;

end;

procedure TFMemberOfRad.DoShow;
begin
  inherited;
  Reparti.open;
  Accessi.open;
  FDMCommon.ApplicaFiltro(cxGridAccessi, cxGridAccessiTIPO_REPARTO, 'R', 'Radiologia');

end;

procedure TFMemberOfRad.cxGridAccessiDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  aSourceView: TcxGridDBTableView;
begin
  inherited;
  Accept := false;
  if (Source is TcxDragControlObject) and (Sender is TcxGridSite) then
  begin
     aSourceView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
     Accept := (aSourceView=cxGridReparti);
  end;
end;

procedure TFMemberOfRad.cxGridAccessiDblClick(Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxAccessi),LongInt(aDeselezionaSingolo));
end;

procedure TFMemberOfRad.aDeselezionaSingoloExecute(Sender: TObject);
begin
  inherited;
  cxGridRepartiDragDrop(self, cxGridAccessi, 0, 0);
end;

procedure TFMemberOfRad.aDeselezionaSingoloUpdate(Sender: TObject);
begin
  inherited;
  aDeselezionaSingolo.Enabled := not Accessi.IsEmpty;
end;

procedure TFMemberOfRad.cxGridRepartiDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  I: integer;
  pkm: integer;
begin
  inherited;

//  Reparti.DisableControls;
//  Accessi.DisableControls;
  cxGridAccessi.BeginUpdate;
  cxGridReparti.BeginUpdate;
  try
  for I := 0 to cxGridAccessi.Controller.SelectedRecordCount - 1 do
  begin
    pkm := cxGridAccessi.Controller.SelectedRecords[i].Values[cxGridAccessiREPARTI_FK.Index];
    if not Reparti.Locate('PKREPARTI',pkm,[]) then
    begin
      Accessi.Locate('REPARTI_FK',pkm,[]);
      Reparti.Append;
      RepartiPKREPARTI.AsInteger := AccessiREPARTI_FK.AsInteger;
      RepartiDESCRIZIONE.AsString := AccessiDESCRIZIONE.AsString;
      RepartiTIPO_REPARTO.AsString := AccessiTIPO_REPARTO.AsString;
      if not AccessiSERVIZI_FK.IsNull then
      begin
         RepartiPKSERVIZI.AsInteger := AccessiSERVIZI_FK.AsInteger;
         RepartiSERVRAD.AsString := AccessiDESCSERV.AsString;
         RepartiTIPO_SERVIZIO.AsString := AccessiTIPO_SERVIZIO.AsString;
      end;
      Reparti.Post;
    end;
  end;
  cxGridAccessi.Controller.DeleteSelection;

  finally
//     Reparti.EnableControls;
//     Accessi.EnableControls;
     cxGridAccessi.EndUpdate;
     cxGridReparti.EndUpdate;
     if (cxGridAccessi.DataController.RecordCount>0) and Assigned(cxGridAccessi.Controller.FocusedRecord) then
         cxGridAccessi.Controller.FocusedRecord.Selected := true;
  end;

end;

procedure TFMemberOfRad.cxGridRepartiDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  aSourceView: TcxGridDBTableView;
begin
  inherited;
  Accept := false;
  if (Source is TcxDragControlObject) and (Sender is TcxGridSite) then
  begin
     aSourceView := FDMCommon.GetDragSourceGridView (TcxDragControlObject (Source));
     Accept := (aSourceView=cxGridAccessi);
  end;
end;

procedure TFMemberOfRad.cxGridRepartiDblClick(Sender: TObject);
begin
  inherited;
  PostMessage(Handle,SY_DBLCLICK,LongInt(cxReparti),LongInt(aSelezionaSingoloCodice));
end;

procedure TFMemberOfRad.aSelezionaSingoloCodiceExecute(Sender: TObject);
begin
  inherited;
  cxGridAccessiDragDrop(self, cxGridReparti, 0, 0);

end;

procedure TFMemberOfRad.aSelezionaSingoloCodiceUpdate(Sender: TObject);
begin
  inherited;
  aSelezionaSingoloCodice.Enabled := FDMCommon.IsSelected(cxGridReparti);
end;

procedure TFMemberOfRad.aConfermaExecute(Sender: TObject);
begin
  inherited;
{JRT 6667}
  // -- controllo esistenza profili
  if Accessi.State in dsEditModes then
     Accessi.Post;
  Accessi.DisableControls;
  try
  Accessi.First;
  while not Accessi.eof do
  begin
     if (AccessiTIPO_REPARTO.AsString='R') and  AccessiCOD_FUNZIONE.IsNull then
     begin
        MsgDlg(RS_ctrl_profilo, '', ktError, [kbOK]);
        Abort;
     end;
     Accessi.Next;
  end;
  finally
     Accessi.EnableControls;
  end;
{}
  FDMCommon.AstaClientSocket.SendDataSetTransactions(Name,[Accessi]);
  ModalResult := mrOk;
end;

procedure TFMemberOfRad.aConfermaUpdate(Sender: TObject);
begin
  inherited;
  aConferma.Enabled := not Accessi.IsEmpty;
end;

procedure TFMemberOfRad.cxGridAccessiREP_DEFEditValueChanged(Sender: TObject);
begin
//  if (AccessiREP_DEF.AsInteger=1) and (Accessi.State in dsEditModes) then
  if TcxCheckBox(Sender).EditValue=1 then
  begin
    PostMessage(Handle,SY_AGGIORNALISTA,0,AccessiREPARTI_FK.AsInteger);
  end;
end;

procedure TFMemberOfRad.AggiornaSelezione(var Message: TMessage);
begin
  inherited;

  Accessi.DisableControls;
  Accessi.First;
  while not Accessi.Eof do
  begin
     if AccessiREPARTI_FK.AsInteger<>Message.LParam then
     begin
       Accessi.Edit;
       AccessiREP_DEF.AsInteger := 0;
       Accessi.Post;
     end;
     Accessi.Next;
  end;
  Accessi.Locate('REPARTI_FK',Message.LParam,[]);
  Accessi.EnableControls;

end;

procedure TFMemberOfRad.DoCreate;
begin
  inherited;
  TabFunzioni.Open;
  FDMCommon.edrepSINO.Properties.OnEditValueChanged := cxGridAccessiREP_DEFEditValueChanged;
end;

procedure TFMemberOfRad.BaseFormDestroy(Sender: TObject);
begin
  inherited;
  FDMCommon.edrepSINO.Properties.OnEditValueChanged := nil;
end;

procedure TFMemberOfRad.cxGridAccessiInitEdit(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit);
var
  LookupProp: TcxLookupComboBoxProperties;
begin
  inherited;

  if AItem = cxGridAccessiCOD_FUNZIONE then
  begin
    // Way 1 - Using an extra filtered dataset/query
    LookupProp := TcxLookupComboBox(AEdit).Properties;
    LookupProp.ListSource := sLkTabFunzioni;
    LkTabFunzioni.ParamByName('REPARTI_FK').AsInteger := AccessiREPARTI_FK.AsInteger;
    LkTabFunzioni.syRefresh;
  end;

end;

end.