unit BaseRicNonTh;

interface

uses
  BaseForm, IIConsts, Messages, dxLayoutControl,{}cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxControls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxBar, cxClasses,
  CSEZForm, Classes, ActnList, AstaDrv2, AstaClientDataset, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, Controls, ExtCtrls,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, cxNavigator, cxGroupBox, cxContainer;

type

  TFBaseRicNonTh = class(TBaseForm)
    QRicerca: TAstaClientDataSet;
    sRicerca: TDataSource;
    ActionList1: TActionList;
    AttivaRicerca: TAction;
    AzzeraCampi: TAction;
    Seleziona: TAction;
    csEZKeys1: TcsEZKeys;
    cxGroupBox1: TcxGroupBox;
    btConferma: TcxButton;
    btAnnulla: TcxButton;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    cxGrid1: TcxGrid;
    cxGridLevel: TcxGridLevel;
    resultgrid: TcxGridDBTableView;
    dxBarManager1Bar1: TdxBar;
    cxPersonalizza: TcxButton;
    PopupMenuPersonalizza: TPopupMenu;
    ResetForm: TMenuItem;
    aAnnulla: TAction;
    procedure btRicercaClick(Sender: TObject);
    procedure btClrfldClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SelezionaExecute(Sender: TObject);
    procedure SelezionaUpdate(Sender: TObject);
    procedure AzzeraCampiUpdate(Sender: TObject);
    procedure QRicercaAfterQBE(Sender: TAstaBaseClientDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QRicercaAfterPopulate(Sender: TObject);
    procedure AttivaRicercaUpdate(Sender: TObject);
    procedure resultgridDblClick(Sender: TObject);
    procedure resultgridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QRicercaBeforeEdit(DataSet: TDataSet);
    procedure cxPersonalizzaClick(Sender: TObject);
    procedure ResetFormClick(Sender: TObject);
    procedure aAnnullaExecute(Sender: TObject);
  private
    { Private declarations }
    FApriTutti: boolean;
    listactrl: TList;
    FNuovaRegistrazione: Boolean;
    procedure FineQBE(Sender: TObject);
    procedure DisattivaTutto(controllo: TWinControl);
    procedure RiattivaTutto;
    procedure FocusPrimoCampo(var Message: TMessage); message SY_FOCUSPRIMOCAMPO;
//    procedure InternalDblClick(var Message: TMessage); message SY_DBLCLICK;
  protected
    procedure DoCreate; override;
    procedure DoShow; override;
    function AlmenoUno: boolean; virtual;
    procedure xKeyDown;
    procedure PrimoCampo; virtual; abstract;
    procedure CaricaLista(dxL: TdxLayoutControl); virtual;
    procedure RegistraNuovo; virtual; abstract;
  public
    { Public declarations }
    RicercaEffettuata: boolean;
    constructor Create(AOwner: TComponent); override;
    procedure KeyPress(var Key: Char); override;
    procedure SendPortDataToForm(const s: string; lungh: integer); override;
    property ApriTutti: boolean read FApriTutti write FApriTutti;
    property NuovaRegistrazione: Boolean read FNuovaRegistrazione write FNuovaRegistrazione default False;
  end;

var
  FBaseRicNonTh: TFBaseRicNonTh;


implementation

uses MsgDlgs, ComCtrls, sysutils, Windows, cxDBEdit, Forms, DMCommon;

{$R *.DFM}


constructor TFBaseRicNonTh.Create(AOwner: TComponent);
begin

    // -- forzata a singole per form modali... (31/10/2002)
    InternalWindowsMode := syModal;

    inherited;

    FNuovaRegistrazione := False;

end;

{
procedure TFBaseRicNonTh.InternalDblClick(var Message: TMessage);
begin
  TAction(Message.LParam).Execute;
end;
}

procedure TFBaseRicNonTh.FineQBE(Sender: TObject);
begin
  RiattivaTutto;

	if not QRicerca.QBEMode then
  begin
     { Verifica che vi siano dei dati }
     RicercaEffettuata := true;
     if Visible then
     begin
         if QRicerca.IsEmpty then
         begin
//            RicercaEffettuata := false;
            MsgDlg(RS_Gene_Msg_NoDt, '', ktWarning, [kbOk], dfFirst);
            PostMessage(Handle,SY_FOCUSPRIMOCAMPO,0,0)
         end
         else {if ResultGrid.CanFocus then
            ResultGrid.ViewData.SetFocus;}
            ActiveControl := resultGrid.Site;
     end
     else
         if QRicerca.IsEmpty then
         begin
              if FNuovaRegistrazione then
              begin
                if MsgDlg(format(RS_Gene_Msg_NoDtReg,['']), '', ktWarning, [kbYes,kbNo], dfFirst)=mrYes then
                begin
                   RegistraNuovo;
                end;
              end
              else
                MsgDlg(RS_Gene_Msg_NoDt, '', ktWarning, [kbOk], dfFirst);
         end;

     if QRicerca.IsEmpty then
        QRicerca.QBEMode := true;

  end;

end;

{ Disattiva tutti i controlli }
procedure TFBaseRicNonTh.DisattivaTutto(controllo: TWinControl);
//var
//	i: integer;
begin
{
	for cnt := 0 to controllo.ControlCount - 1 do
  begin
  	if (controllo.Controls[cnt] is TWinControl) then
     begin
        if controllo.Controls[cnt].Enabled then
     	   listactrl.Add(controllo.Controls[cnt]);

        controllo.Controls[cnt].Enabled := false;
     end;
  end;
}

{
  ActiveControl := nil; // cx???
	for i := 0 to listactrl.Count - 1 do
	   TcxCustomEdit(listactrl[i]).Enabled := false
}
end;

{ Riattiva tutti i controlli che sono stati disattivati }
procedure TFBaseRicNonTh.RiattivaTutto;
//var
//	i: integer;
begin
{
	for i := 0 to listactrl.Count - 1 do
 	   TcxCustomEdit(listactrl[i]).Enabled := true
}
end;


procedure TFBaseRicNonTh.DoCreate;
begin

  inherited;

  listactrl := TList.Create;
  FApriTutti := false;
  RicercaEffettuata := false;

//  QRicerca.Open;
end;

procedure TFBaseRicNonTh.btRicercaClick(Sender: TObject);
begin
	if QRicerca.QBEMode and not AlmenoUno then
  begin
  	{ RS = 'Specificare almeno un campo per la ricerca' }
     MsgDlg(RS_Ric_Msg_SCam, '', ktWarning, [kbOk], dfFirst);
     PostMessage(Handle,SY_FOCUSPRIMOCAMPO,0,0)
  end
	else if QRicerca.QBEMode then
  begin
     RicercaEffettuata := false;
//		listactrl.Clear;
     DisattivaTutto(Self);
     QRicerca.ExecuteQBE;
     FineQBE(self);
  end
  else if RicercaEffettuata then
  begin
  	QRicerca.QBEMode := true;
    PostMessage(Handle,SY_FOCUSPRIMOCAMPO,0,0)
  end;
end;

procedure TFBaseRicNonTh.btClrfldClick(Sender: TObject);
var
  i: integer;
begin
  RicercaEffettuata := false;
  QRicerca.close;
	if not QRicerca.QBEMode then
  	QRicerca.QBEMode := true;
  QRicerca.opennofetch;
{
  for i := 0 to listactrl.Count-1 do
     if (TcxCustomEdit(listactrl[i]) is TcxDBMaskEdit) then
        QRicerca.Fieldbyname(TcxDBMaskEdit(listactrl[i]).DataBinding.DataField).Clear
     else if (TcxCustomEdit(listactrl[i]) is TcxDBDateEdit) then
        QRicerca.Fieldbyname(TcxDBDateEdit(listactrl[i]).DataBinding.DataField).Clear;
}
  for i := 0 to QRicerca.FieldCount-1 do
     QRicerca.Fields[i].Clear;

  PostMessage(Handle,SY_FOCUSPRIMOCAMPO,0,0)

end;

function TFBaseRicNonTh.AlmenoUno: boolean;
var
  i: integer;
begin
	{ Verifica che almeno un campo contenga dati per la ricerca }
  result := ApriTutti;
	i := 0;
	while not result and (i < listactrl.Count) do
  begin
     if TcxCustomEdit(listactrl[i]) is TcxDBMaskEdit then
		   result := TcxDBMaskEdit(listactrl[i]).Text<>''
     else if TcxCustomEdit(listactrl[i]) is TcxDBDateEdit then
        result := TcxDBDateEdit(listactrl[i]).Date <> 0;
     inc(i);
  end;
end;

procedure TFBaseRicNonTh.FormDestroy(Sender: TObject);
begin
	if Assigned(listactrl) then
  begin
  	listactrl.Free;
     listactrl := nil;
  end;
end;


procedure TFBaseRicNonTh.FocusPrimoCampo;
(*
var
  i: integer;
  ref: TcxCustomEdit;
*)
begin

  if not Visible then exit;
(*
  ref := nil;
  for i := 0 to listactrl.Count-1 do
      if (ref=nil) or (TcxCustomEdit(listactrl[i]).TabOrder<ref.Taborder) then
         ref := TcxCustomEdit(listactrl[i]);

  if (ref<>nil) and ref.CanFocus then
     ref.SetFocus;
*)
  PrimoCampo;
end;

procedure TFBaseRicNonTh.FormShow(Sender: TObject);
begin

  if RicercaEffettuata and not Qricerca.IsEmpty then
  begin
{     if resultGrid.CanFocus then
        resultGrid.SetFocus;
}
     ActiveControl := resultGrid.Site;
  end
  else
     PostMessage(Handle,SY_FOCUSPRIMOCAMPO,0,0)
end;

procedure TFBaseRicNonTh.SelezionaExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;


procedure TFBaseRicNonTh.xKeyDown;
begin
  PostMessage(btConferma.Handle,WM_KEYDOWN,32,0);
end;

procedure TFBaseRicNonTh.SelezionaUpdate(Sender: TObject);
begin
	Seleziona.Enabled := QRicerca.Active and not Qricerca.IsEmpty and (not QRicerca.QBEMode);
end;

procedure TFBaseRicNonTh.AzzeraCampiUpdate(Sender: TObject);
begin
//  AzzeraCampi.Enabled := QRicerca.QBEMode;
end;

procedure TFBaseRicNonTh.QRicercaAfterQBE(Sender: TAstaBaseClientDataSet);
var
  i: integer;
{
	function CambiaCaratteri(const testo: string): string;
  const
  	tabconv: array [1..9, 1..2] of string = (
                ('À', 'A'''),
                ('Ä', 'AE'),
                ('È', 'E'''),
                ('Ì', 'I'''),
                ('Ò', 'O'''),
                ('Ö', 'OE'),
                ('Ù', 'U'''),
                ('Ü', 'UE'),
                ('ß', 'SS')
               );

  var
  	cnt: integer;
  begin
  	result := testo;
     for cnt := Low(tabconv) to High(tabconv) do
     	result := BMStringReplace(result, tabconv[cnt, 1], tabconv[cnt, 2], [rfReplaceAll]);
  end;
}
begin
{
  if Sender.FindParam('statement_prova')<>nil then
     Sender.ParamByName('statement_prova').AsString := '#';
}
  if not AlmenoUno then
  begin
  	{ RS = 'Specificare almeno un campo per la ricerca' }
     MsgDlg(RS_Ric_Msg_SCam, '', ktWarning, [kbOk], dfFirst);
     Abort;
  end;

  { Trasformazione caratteri accentati e con dieresi ed eliminazione degli spazi }
	for i := 0 to listactrl.Count-1 do
  begin
     if (TcxCustomEdit(listactrl[i]) is TcxDBMaskEdit) and
        not QRicerca.Fieldbyname(TcxDBMaskEdit(listactrl[i]).DataBinding.DataField).IsNull and
        (QRicerca.Fieldbyname(TcxDBMaskEdit(listactrl[i]).DataBinding.DataField).Datatype=ftString) then
		   QRicerca.Fieldbyname(TcxDBMaskEdit(listactrl[i]).DataBinding.DataField).AsString :=
              Trim({CambiaCaratteri(}QRicerca.Fieldbyname(TcxDBMaskEdit(listactrl[i]).DataBinding.DataField).AsString{)});
  end;

end;

procedure TFBaseRicNonTh.FormKeyPress(Sender: TObject; var Key: Char);
begin
  	if (ActiveControl<>nil) and
        (ActiveControl is TcxCustomEdit) and
         not QRicerca.QbeMode and
         not RicercaEffettuata then
  	         QRicerca.QBEMode := true;

end;

procedure TFBaseRicNonTh.QRicercaAfterPopulate(Sender: TObject);
begin
  resultGrid.Controller.GotoFirst;
end;

procedure TFBaseRicNonTh.AttivaRicercaUpdate(Sender: TObject);
begin
  AttivaRicerca.Enabled := {not RicercaEffettuata and} QRicerca.QBEMode and (QRicerca.State=dsInsert);
end;

procedure TFBaseRicNonTh.KeyPress(var Key: Char);
begin
  inherited;
  if Key=#27 then
  begin
     Key := #0;
     Close;
  end;
end;

procedure TFBaseRicNonTh.resultgridDblClick(Sender: TObject);
begin
  Seleziona.Execute;
end;

procedure TFBaseRicNonTh.resultgridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=13) and not QRicerca.Eof then
  begin
     Key := 0;
//     Seleziona.Execute;
//     PostMessage(btConferma.Handle,WM_KEYDOWN,32,0);
     PostMessage(Handle,SY_DBLCLICK,0,LongInt(Seleziona));
  end;

end;

procedure TFBaseRicNonTh.QRicercaBeforeEdit(DataSet: TDataSet);
begin

  if RicercaEffettuata then
  begin
    RicercaEffettuata := false;
//    QRicerca.close;
    if not QRicerca.QBEMode then
       QRicerca.QBEMode := true;
//    QRicerca.opennofetch;
  end;

end;

procedure TFBaseRicNonTh.SendPortDataToForm(const s: string; lungh: integer);
begin
end;

procedure TFBaseRicNonTh.cxPersonalizzaClick(Sender: TObject);
begin
  StartPersonalizza;
end;

procedure TFBaseRicNonTh.CaricaLista(dxL: TdxLayoutControl);
var
	cnt: integer;
begin

	for cnt := 0 to dxL.ControlCount - 1 do
  begin
     if (dxL.Controls[cnt] is TcxCustomEdit) then
     begin
        if dxL.Controls[cnt].Enabled then
     	   listactrl.Add(dxL.Controls[cnt]);
     end;
  end;

end;

procedure TFBaseRicNonTh.ResetFormClick(Sender: TObject);
begin
  ResetPersonalizza;
end;

procedure TFBaseRicNonTh.aAnnullaExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFBaseRicNonTh.DoShow;
begin
  inherited;
  cxPersonalizza.Visible := False; //Personalizza;
end;

end.