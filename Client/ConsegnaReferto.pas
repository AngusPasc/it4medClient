unit ConsegnaReferto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseRad, cxGraphics, dxLayoutControl, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxControls, CSEZForm,  
  ExtCtrls,  DB, cxDBEdit, cxButtonEdit, KScxDBLookupDlg, AstaDrv2,
  AstaClientDataset, cxGroupBox, cxRadioGroup, ActnList, dxSkinsCore,
  dxSkinsDefaultPainters, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxLookAndFeels, dxLayoutcxEditAdapters,
  dxLayoutContainer, dxSkinscxPCPainter;

type
  TFConsegnaReferto = class(TFBaseRad)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    sqTipoInvio: TDataSource;
    sAccettazione: TDataSource;
    dxLayoutPosta: TdxLayoutGroup;
    LkComuniRes: TAstaClientDataSet;
    LkComuniResCODICE: TStringField;
    LkComuniResDESCRIZIONE: TStringField;
    LkComuniResCAP: TStringField;
    LkComuniResCOM_TYPE: TStringField;
    LkComuniResNAZ_CODICE: TStringField;
    LkComuniResSIGLA: TStringField;
    LkComuniResTNZ_IDENT: TIntegerField;
    sLkComuniRes: TDataSource;
    dxLayoutControl1Item3: TdxLayoutItem;
    Com_Residenza: TKScxDBLookupDlg;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxCapRes: TcxDBMaskEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxIndirizzo: TcxButtonEdit;
    dxLayoutControl1Group2: TdxLayoutGroup;
    LkStradario: TAstaClientDataSet;
    LkStradarioINDIRIZZO: TStringField;
    LkStradarioINTERVALLI: TStringField;
    LkStradarioCAP: TStringField;
    LkStradarioCIRCOSCRIZIONE: TStringField;
    LkStradarioCOD_REG: TStringField;
    LkStradarioCOD_ASL: TStringField;
    LkStradarioNOTE: TStringField;
    dxLayoutEMail: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxEMail: TcxMaskEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutFax: TdxLayoutGroup;
    cxFax: TcxMaskEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    ActionList1: TActionList;
    aConferma: TAction;
    cxTipoInvio: TcxDBLookupComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    aAnnulla: TAction;
    LkStradarioROWNUM: TIntegerField;
    procedure Com_ResidenzaCloseDialog(Sender: TObject;
      const Scelto: Boolean);
    procedure cxIndirizzoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxIndirizzoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure csEZKeys1KeyIntercept(KeyType: TNavigationKey;
      Ctrl: TControl; var Intercept: Boolean);
    procedure aConfermaExecute(Sender: TObject);
    procedure aConfermaUpdate(Sender: TObject);
    procedure cxTipoInvioPropertiesCloseUp(Sender: TObject);
    procedure aAnnullaExecute(Sender: TObject);
    procedure Com_ResidenzaNotInList(Sender: TObject;
      LookupTable: TDataSet; NewValue: String; var Accept: Boolean;
      var codice: Variant);
    procedure Com_ResidenzaSearch(Sender: TObject; var trovato: Integer;
      var codice: Variant; const cerca: String);
    procedure cxIndirizzoEnter(Sender: TObject);
    procedure cxIndirizzoExit(Sender: TObject);
  private
    { Private declarations }
    oldTipo: string;
    function TogliNumeri(const ind: string): string;
    procedure CercaInStradario;
    procedure AbilitaControlli;
  protected
    procedure DoCreate; override;
    procedure DoShow; override;
  public
    { Public declarations }
    xIndirizzo: string;
    xcap       : string;
    xcomune    : string;
    xdesccom   : string;

  end;

var
  FConsegnaReferto: TFConsegnaReferto;

implementation

uses DMCommon, ksRicMult, cxCustomData, RicComuni, dxCore;

{$R *.dfm}

procedure TFConsegnaReferto.Com_ResidenzaCloseDialog(Sender: TObject;
  const Scelto: Boolean);
begin
//    sAccettazione.DataSet.FieldByName('CAP_REF').AsString := Com_Residenza.LookupTable.Fieldbyname('CAP').AsString;
end;

procedure TFConsegnaReferto.cxIndirizzoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  case Key of
//  VK_F9: CercoCodice;
  VK_RETURN,VK_TAB,VK_F10: CercaInStradario;
  end;

end;

procedure TFConsegnaReferto.cxIndirizzoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  CercaInStradario;
end;

procedure TFConsegnaReferto.CercaInStradario;
var
  x: integer;

  procedure AssegnaValore;
  begin
    if not LkStradario.IsEmpty then
    begin
      sAccettazione.DataSet.FieldByName('CAP_REF').AsString := LkStradarioCAP.AsString;
    end;
    if cxCapRes.Text='' then
       cxCapRes.SetFocus;
  end;

begin
  inherited;

  if cxIndirizzo.Text<>'' then
  begin

     LkStradario.ParamByName('indirizzo').AsString := TogliNumeri(cxIndirizzo.Text);
     LkStradario.syRefresh;
     if LkStradario.recordcount<=1 then
     begin
        AssegnaValore;
     end
     else if LkStradario.recordcount>1 then
     begin
         FksRicMult := TFksRicMult.Create(nil);
         try
            FksRicMult.sDatasource.Dataset := LkStradario;
            FksRicMult.cxGridSelezione.DataController.KeyFieldNames := 'ROWNUM';

            for x:=0 to LkStradario.FieldCount-1 do
              with FksRicMult.cxGridSelezione.CreateColumn do
              begin
                  Name := 'GridSelezione'+LkStradario.Fields[x].FieldName;
                  DataBinding.FieldName := LkStradario.Fields[x].FieldName;
                  Caption := LkStradario.Fields[x].DisplayLabel;
                  Visible := (LkStradario.Fields[x].Visible);
              end;

              for x:=0 to LkStradario.FieldCount-1 do
                  if FksRicMult.cxGridSelezione.Columns[x].Visible then
                  begin
                      FksRicMult.cxGridSelezione.Columns[x].SortOrder := soAscending;
                      break;
                  end;

              FksRicMult.cxGridSelezione.ApplyBestFit;
              FksRicMult.cxGridSelezione.Controller.GoToFirst;

              if (FksRicMult.ShowModal=mrOk) then
                  AssegnaValore;

         finally
            FksRicMult.Free;
         end;
     end;

  end;

end;

procedure TFConsegnaReferto.csEZKeys1KeyIntercept(KeyType: TNavigationKey;
  Ctrl: TControl; var Intercept: Boolean);
begin
  inherited;
  Intercept := Intercept and Assigned(Ctrl)
               and not ((Ctrl.Owner is TcxButtonEdit) and (TcxButtonEdit(Ctrl.Owner).Name='cxIndirizzo'));

end;

procedure TFConsegnaReferto.AbilitaControlli;
begin
  if VarIsNull(cxTipoInvio.EditValue) or (cxTipoInvio.EditValue='D') then
  begin
     dxLayoutPosta.Enabled := false;
     dxLayoutEMail.Enabled := false;
     dxLayoutFax.Enabled := false;
     cxIndirizzo.Clear;
     Com_Residenza.Clear;
     cxCapRes.Clear;
     cxEMail.Text := '';
     cxFax.Text := '';
  end
  else if cxTipoInvio.EditValue='P' then
  begin
     dxLayoutPosta.Enabled := true;
     dxLayoutEMail.Enabled := false;
     dxLayoutFax.Enabled := false;
     cxIndirizzo.Text := xIndirizzo;
     if xIndirizzo='' then
     begin
        Com_Residenza.Clear;
        cxCapRes.Clear;
     end
     else begin
        sAccettazione.DataSet.FieldByName('COM_REF').AsString := xcomune;
        sAccettazione.DataSet.FieldByName('DES_COMREF').AsString := xdesccom;
     end;
//     Com_Residenza.Text := xdesccom;
     cxCapRes.Text := xcap;
     Com_Residenza.SetFocus;
     cxEMail.Text := '';
     cxFax.Text := '';
  end
  else if cxTipoInvio.EditValue='E' then
  begin
     dxLayoutPosta.Enabled := false;
     dxLayoutEMail.Enabled := true;
     dxLayoutFax.Enabled := false;
     cxEMail.Text := xIndirizzo;
     cxEMail.SetFocus;
     cxIndirizzo.Clear;
     Com_Residenza.Clear;
     cxCapRes.Clear;
     cxFax.Text := '';
  end
  else if cxTipoInvio.EditValue='F' then
  begin
     dxLayoutPosta.Enabled := false;
     dxLayoutEMail.Enabled := false;
     dxLayoutFax.Enabled := true;
     cxFax.Text := xIndirizzo;
     cxFax.SetFocus;
     cxIndirizzo.Clear;
     Com_Residenza.Clear;
     cxCapRes.Clear;
     cxEMail.Text := '';
  end;

end;

procedure TFConsegnaReferto.aConfermaExecute(Sender: TObject);
begin
  inherited;
  if sAccettazione.DataSet.FieldByName('INVIO_FK').AsString='D' then
  begin
     sAccettazione.DataSet.FieldByName('IND_REF').Clear;
  end
  else if sAccettazione.DataSet.FieldByName('INVIO_FK').AsString='P' then
  begin
     sAccettazione.DataSet.FieldByName('IND_REF').AsString := FConsegnaReferto.cxIndirizzo.Text;
  end
  else if sAccettazione.DataSet.FieldByName('INVIO_FK').AsString='E' then
  begin
     sAccettazione.DataSet.FieldByName('IND_REF').AsString := FConsegnaReferto.cxEMail.Text;
  end
  else if sAccettazione.DataSet.FieldByName('INVIO_FK').AsString='F' then
  begin
     sAccettazione.DataSet.FieldByName('IND_REF').AsString := FConsegnaReferto.cxFax.Text;
  end;
  ModalResult := mrOk;

end;

procedure TFConsegnaReferto.aConfermaUpdate(Sender: TObject);
begin
  inherited;
  if cxTipoInvio.EditValue='D' then
  begin
     aConferma.Enabled := true;
  end
  else if cxTipoInvio.EditValue='P' then
  begin
     aConferma.Enabled := (Com_Residenza.Text<>'') and (cxIndirizzo.Text<>'') and (cxCapRes.Text<>'');
  end
  else if cxTipoInvio.EditValue='E' then
  begin
     aConferma.Enabled := (cxEMail.Text<>'');
  end
  else if cxTipoInvio.EditValue='F' then
  begin
     aConferma.Enabled := (cxFax.Text<>'');
  end;

end;

function TFConsegnaReferto.TogliNumeri(const ind: string): string;
const
  togli: array[1..13] of char = ('0','1','2','3','4','5','6','7','8','9','/','.','-');
var
  i: integer;
begin
  result := ind;
  for i:=1 to 13 do
  begin
      result := StringReplace(result,togli[i],'',[rfReplaceAll]);
  end;
  result := Trim(result)+'%';
end;


procedure TFConsegnaReferto.DoCreate;
begin
  inherited;
  cxTipoInvio.Properties.Grid.DataController.DataModeController.SyncMode := True;
end;

procedure TFConsegnaReferto.cxTipoInvioPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  xIndirizzo := '';
  AbilitaControlli;
end;

procedure TFConsegnaReferto.DoShow;
begin
  inherited;
  oldTipo := sAccettazione.DataSet.FieldByName('INVIO_FK').AsString;
  AbilitaControlli;
end;

procedure TFConsegnaReferto.aAnnullaExecute(Sender: TObject);
begin
  inherited;
  sAccettazione.DataSet.FieldByName('INVIO_FK').AsString := oldTipo;
  AbilitaControlli;
end;

procedure TFConsegnaReferto.Com_ResidenzaNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean;
  var codice: Variant);
begin
  inherited;
   FRicComuni := TFRicComuni.Create(nil);
   try
//     FRicComuni.QRicerca.Parambyname('NAZ_CODICE',AssistibiliNAZ_CODICE.AsString);
     FRicComuni.QRicerca.OpenNoFetch;
     if NewValue<>'' then
     begin
       FRicComuni.QRicercaDESCRIZIONE.AsString := NewValue;
       FRicComuni.AttivaRicerca.Execute;
     end;
     Accept := (FRicComuni.ShowModal=mrOk);
     if Accept then
        codice := FRicComuni.QRicercaCODICE.Value;
   finally
     FRicComuni.Free;
     FRicComuni := nil;
   end;

end;

procedure TFConsegnaReferto.Com_ResidenzaSearch(Sender: TObject;
  var trovato: Integer; var codice: Variant; const cerca: String);
begin
  inherited;
   FRicComuni := TFRicComuni.Create(nil);
   try
//     FRicComuni.QRicerca.Parambyname('NAZ_CODICE',AssistibiliNAZRES_CODICE.AsString);
     FRicComuni.QRicerca.OpenNoFetch;
     if cerca<>'' then
     begin
       FRicComuni.QRicercaDESCRIZIONE.AsString := cerca;
       FRicComuni.AttivaRicerca.Execute;
     end;
     trovato := FRicComuni.ShowModal;
     if trovato=mrOk then
        codice := FRicComuni.QRicercaCODICE.Value;

   finally
     FRicComuni.Free;
   end;

end;

procedure TFConsegnaReferto.cxIndirizzoEnter(Sender: TObject);
begin
  inherited;
  Catch := True;
end;

procedure TFConsegnaReferto.cxIndirizzoExit(Sender: TObject);
begin
  inherited;
  Catch := False;
end;

end.