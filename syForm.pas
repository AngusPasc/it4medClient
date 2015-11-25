unit syForm;

interface

uses
  BaseForm, Forms, Windows,Messages, Classes, dxBar, Controls, AstaClientDataset, IIConsts, IInterface,
  cxGridDBTableView, AstaDrv2, cxGraphics;

{.$DEFINE OLD_CERCA}

type
  TsyForm = class(TFrame,ICaricaToolbar)
  private
    FBufferIn : boolean;
    FBufferKeybIn: Boolean;
    FKeyBuffer : string;
    FReadBarCode: boolean;
    FPersModified: Boolean;
    FCatch: Boolean;
    FActiveControl: TWinControl;
    FImgList: TcxImageList;
    procedure LeggiBarCode(var Message: TMessage); message SY_READBARCODE;
    procedure RefreshAlert(var Message: TMessage); message SY_REFRESHALERT;
    procedure InternalAggiornaLista(var Message: TMessage); message SY_AGGIORNALISTA;
    procedure SYSetFocusedRecord(var Msg: TMessage); message SY_SETFOCUSEDRECORD;
    procedure SYUpdateRecord(var Msg: TMessage); message SY_UPDATERECORD;
    procedure InternalDblClick(var Message: TMessage); message SY_DBLCLICK;
    procedure SetActiveControl(Control: TWinControl);
  protected
    procedure SetCatch(Value: Boolean); virtual;
    function CaricaToolBar: TdxBars; virtual;
//	  procedure CreateParams( var Params: TCreateParams ); override ;
    procedure SetParent(AParent: TWinControl); override;
    procedure CercaSlot(QyPreno: TAstaClientDataset; dxDataValue: Variant; xdiag: integer; xdurata: integer; var inizio: TDateTime); virtual;
//    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyUp(var Key: Word; Shift: TShiftState); override;
    function TrasformaCF(const inp: string): string;
    function ControllaCF(cf: String): String;
    function GetCanClose: boolean; virtual;
    procedure Show; virtual; //abstract;
    procedure Close; virtual;
    procedure SetImgList(iList: TcxImageList); virtual;
    procedure Loaded; override;

    property BufferIn: Boolean read FBufferIn;
    property KeyBuffer: string read FKeyBuffer;
    property ReadBarCode: Boolean read FReadBarCode write FReadBarCode;
    property PersModified: Boolean read FPersModified write FPersModified;
    property Catch: Boolean read FCatch write SetCatch;

  public
    BarCodeLetto: string;
    TesseraLetta: TTessera;
    procedure KeyPress(var Key: Char); override;
(*
    procedure DoShow; override;
    procedure DoClose(var Action: TCloseAction); override;
*)
    procedure DoShow; virtual;

    constructor Create(AOwner: TComponent); override;
    constructor CreateNew(AOwner: TComponent; iList: TcxImageList); virtual;

    destructor Destroy; override;
    function IsFormReady: boolean; virtual;
    function RecordAttuale: integer; virtual;
    function StatoAttuale: integer; virtual;
    function TriageAttuale: integer; virtual;
    function GotoNext: boolean; virtual;
    function GotoPrev: boolean; virtual;
    procedure UpdateReferto(newpk,oldpk: Integer); virtual; abstract;
    procedure CercaInCalendari(Prestazioni: TAstaClientDataset; xdiag: integer);  overload; virtual;
{$IFDEF OLD_CERCA}
    procedure CercaInCalendari(QyPreno,Prestazioni: TAstaClientDataset;
                               xPossibili: TAstaCustomDataset;
                               vResToPos: Array of integer; vResToText: Array of string; dxDataValue: Variant;
                               xdiag: integer); overload; virtual;
{$ELSE}
    procedure CercaInCalendari(pQyPreno,pPrestazioni: TAstaClientDataset;
                               xPossibili: TAstaCustomDataset;
                               vResToPos: Array of integer; vResToText: Array of string; dxDataValue: Variant;
                               xdiag: integer); overload; virtual;
{$ENDIF}
    procedure SYAggiornaLista(view: TcxGridDBTableView; detail: TcxGridDBTableView = nil; anchedett: boolean = false);

    procedure SendPortDataToForm(const s: string; lungh: integer); virtual; abstract;
    procedure DoOnActivate; virtual;
    procedure ChangeScale(M, D: Integer); override;

    property CanClose: boolean read GetCanClose;
    property ActiveControl: TWinControl read FActiveControl write SetActiveControl;
    property ImgList: TcxImageList read FImgList;    
  end;

  TsyFormClass = class of TsyForm;

implementation
uses CSEZForm, kseventclient, DateUtils, SysUtils, Math, AstaDBTypes, cxGridCustomView, cxGrid, cxGridCustomTableView,
     ActnList, cxButtons, cxDBNavigator;

{$R *.dfm}

type
  TMyForm = class(TCustomForm);


constructor TsyForm.Create(AOwner: TComponent);
begin

//   InternalWindowsMode := xWindowsMode;

   inherited;
{
   if not (csDesigning in ComponentState) then
   begin
        WindowState := wsMaximized;
   end;
}
  FReadBarCode := True;
  FBufferIn := False;
  FBufferKeybIn := False;
  FCatch := False;
//  FPersonalizza := False;
  FPersModified := False;
//  ChangeScale(Screen.PixelsPerInch, 96);
end;

constructor TsyForm.CreateNew(AOwner: TComponent; iList: TcxImageList);
begin
//  FOwner := AOwner;
  FImgList := iList;

  {inherited} Create(AOwner);

end;

procedure TsyForm.SetCatch(Value: Boolean);
var
  myForm: TMyForm;
begin
  FCatch := Value;
(*
  if (InternalWindowsMode=syUnica) and (Parent<>nil) and (Parent.Owner<>nil)
     and (Parent.Owner is TBaseForm) then
  begin
    myForm := TMyForm(Parent.Owner);
    TBaseForm(myForm).Catch := Value;
  end;
*)  
end;

destructor TsyForm.Destroy;
var
  i: integer;
  myForm: TMyForm;
begin

(*
  if (InternalWindowsMode=syUnica) and (Parent<>nil) and (Parent.Owner<>nil)
     and (Parent.Owner is TBaseForm) then
  begin
    myForm := TMyForm(Parent.Owner);
    if (FActionLists <> nil) then
    begin
       for i:=0 to FActionLists.Count-1 do
           myForm.Notification(FActionLists[i],opRemove);
    end;

    TBaseForm(myForm).OnKeyIntercept := nil;
    TBaseForm(myForm).OnKeyPress := nil;

  end;
*)
  inherited;

end;

procedure TsyForm.DoShow;
begin
{ -- va chiamato solo quando si entra davvero nel SubFrame...
  if (FSubFrame<>nil) then
     FSubFrame.Show;
}
   Visible := True;
end;

procedure TsyForm.LeggiBarCode(var Message: TMessage);
begin
end;

procedure TsyForm.InternalAggiornaLista(var Message: TMessage);
begin
end;

procedure TsyForm.RefreshAlert(var Message: TMessage);
begin
   TKSAstaEventClient(Message.LParam).IdleRefresh;
end;

(*
procedure TsyForm.DoShow;
begin
  inherited;
{
  if (InternalWindowsMode in [sySingole,syMultiple]) then
     TitleBar.DblClick;
}
end;
*)

procedure TsyForm.SetParent(AParent: TWinControl);
var
  i: integer;
  myForm: TMyForm;
  kobj: TcsEZKeys;
begin
  inherited;
(*
  if (InternalWindowsMode=syUnica) and (Parent<>nil) and (Parent.Owner<>nil)
     and (Parent.Owner is TBaseForm) then
  begin
    myForm := TMyForm(Parent.Owner);
    if (FActionLists <> nil) then
    begin
       for i:=0 to FActionLists.Count-1 do
           myForm.Notification(FActionLists[i],opInsert);
    end;

    kobj := nil;
    for i:=0 to ComponentCount-1 do
       if Components[i] is TcsEZKeys then
       begin
          kobj := TcsEZKeys(Components[i]);
          break;
       end;
    if (kobj<>nil) and Assigned(kobj.OnKeyIntercept) then
        TBaseForm(myForm).OnKeyIntercept := kobj.OnKeyIntercept;

    TBaseForm(myForm).OnKeyPress := self.OnKeyPress;

  end;
*)
end;

(*
procedure TsyForm.DoClose(var Action: TCloseAction);
begin

//  if Assigned(Application.MainForm) then
     PostMessage(Application.MainForm.Handle,SY_CLOSEFORM,0,LongInt(self));
//  else begin

//     Action := caFree;
     inherited DoClose(Action);
//  end;
end;
*)

(*
procedure TsyForm.KeyPress(var Key: Char);
begin
  inherited;
  if Key=#27 then
  begin
     Key := #0;
     Close;
  end;
end;
*)

function TsyForm.CaricaToolBar: TdxBars;
begin
  result := nil;
end;
(*
procedure TsyForm.CreateParams( var Params: TCreateParams );
begin

	inherited;

  if (InternalWindowsMode in [sySingole,syMultiple]) then
  with Params do
  begin
      if (FormStyle = fsNormal) and not (csDesigning in ComponentState) then
      begin
         { Form sempre sopra applicazione
         Style := Style or ws_Overlapped;
         WndParent := Application.MainForm.Handle;
         {}
         { Form nella taskbar }
         ExStyle := ExStyle OR WS_EX_APPWINDOW;
      end;
  end;

end;
*)

procedure TsyForm.SYAggiornaLista(view: TcxGridDBTableView; detail: TcxGridDBTableView = nil; anchedett: boolean = false);
begin
  PostMessage(Handle, SY_SETFOCUSEDRECORD, Integer(view), MakeLParam(view.Controller.FocusedRowIndex, view.Controller.TopRowIndex));
  TAstaClientDataset(view.DataController.Datasource.Dataset).syRefresh;
  if anchedett then
     TAstaClientDataset(detail.DataController.Datasource.Dataset).syRefresh;
end;

procedure TsyForm.SYSetFocusedRecord(var Msg: TMessage);
begin
  TcxGridDBTableView(msg.WParam).Controller.FocusedRowIndex := Msg.LParamLo;
  TcxGridDBTableView(msg.WParam).Controller.TopRowIndex := Msg.LParamHi;
end;

procedure TsyForm.SYUpdateRecord(var Msg: TMessage);
begin

  UpdateReferto(msg.WParam,msg.LParam);

end;

function TsyForm.IsFormReady: boolean;
begin
  result := false;
end;

procedure TsyForm.CercaInCalendari(Prestazioni: TAstaClientDataset; xdiag: integer);
begin
end;

{$IFDEF OLD_CERCA}

procedure TsyForm.CercaInCalendari(QyPreno,Prestazioni: TAstaClientDataset;
                                   xPossibili: TAstaCustomDataset;
                                   vResToPos: Array of integer; vResToText: Array of string; dxDataValue: Variant;
                                   xdiag: integer);
var
  inizio: TDateTime;
  m,x,z,i,j: integer;
//  aperta: boolean;
  dAperte: Array of Array of integer;
  dCodici: Array of string;
//  dOrari: Array of TDateTime;
  durata: Array of array of integer;
  dDurata: array of integer;
  dTrovate: Array of Array of integer;
  dCodRic: Array of Array of Array of string;
  trovato: boolean;
  temp,cerco,volte,diversi,card,quante: integer;
  dCard: Array of integer;
  dDiagEsiste: Array of integer;
  dProva: Array of Array of integer;
  dInizio: array of array of TDateTime;
  xTempoTrovato, xTempoTot: TDateTime;
  fatto: Boolean;
  LevCard: Integer;
  esiste: Integer;

    function UgualeA(x,i: integer): boolean;
    var
      j: integer;
    begin
       result := false;
       j:=i-1;
       while not result and (j>=Low(dTrovate[x])) do
       begin
         result := (dTrovate[x][j]=dTrovate[x][i]);
         dec(j);
       end;
    end;

    function Cardinalita(xmin: integer): integer;
    var
      i: integer;
    begin
      result := 1;
      for i:=xmin to High(dAperte) do
          result := result * Length(dAperte[i]);
    end;

begin

  QyPreno.DisableControls;
  QyPreno.IndexName := 'qyPrenoIDX_CALENDARIO';

  Prestazioni.DisableControls;

  try

    // -- raggruppo esami per diagnostiche
    SetLength(dAperte,Prestazioni.RecordCount);
    SetLength(dCodici,Prestazioni.RecordCount);
    SetLength(dDurata,Prestazioni.RecordCount);

    Prestazioni.First;
    for z:=0 to Prestazioni.RecordCount-1 do
    begin
         // -- cerco le diagnostiche per l'esame...
         dCodici[z] := Prestazioni.Fieldbyname('CODICE').AsString;
{ JRT 1852: nuovo...}
         xPossibili.CancelRange;
         xPossibili.SetRange([Prestazioni.Fieldbyname('CODICE').AsString],[Prestazioni.Fieldbyname('CODICE').AsString]);
//         trovato := false;
         while not xPossibili.eof do
         begin
           if (xdiag=-1) or (xPossibili.Fieldbyname('SERVIZI_FK').AsInteger=xdiag) then
           begin
             SetLength(dAperte[z],Length(dAperte[z])+1);
             dAperte[z][High(dAperte[z])] := xPossibili.Fieldbyname('SERVIZI_FK').AsInteger;
             dDurata[z] := xPossibili.Fieldbyname('DURATA').AsInteger;
           end;
           xPossibili.Next;
         end;
         xPossibili.CancelRange;
{}
         Prestazioni.Next;
    end;

    card := Cardinalita(Low(dAperte));

    SetLength(dTrovate,card);
    for i:=0 to card-1 do
       SetLength(dTrovate[i],Prestazioni.recordcount);

    for i:=Low(dAperte) to High(dAperte) do
    begin
       quante := Length(dAperte[i]);
       z:=0;
       while z<card do
       begin
           if i=High(dAperte) then
           begin
              j := (z mod quante);
              dTrovate[z][i] := dAperte[i][j];
              inc(z);
           end
           else begin
              volte := Cardinalita(i+1);
              for m:=1 to quante do
                for x:=1 to volte do
                begin
                    dTrovate[z][i] := dAperte[i][m-1];
                    inc(z);
                end;
           end;
       end;
    end;

    SetLength(dCard,card);
    SetLength(dDiagEsiste,card);
    SetLength(dProva,card);
    SetLength(dCodRic,card);
    SetLength(durata,card);
    SetLength(dInizio,card);
    for x:=0 to card-1 do
    begin
      diversi := 1;
      for i:=2 to Prestazioni.recordcount do
        if not UgualeA(x,i-1) then
           inc(diversi);
      dCard[x] := diversi;
      dDiagEsiste[x] := 0;
    end;

    fatto := False;
    LevCard := 1;
    while (LevCard<=Prestazioni.recordcount) and not fatto do
    begin
      for i:=Low(dCard) to High(dCard) do
      if dCard[i]=LevCard then
      begin
        fatto := True;
        m:=Low(dTrovate[i]);
        repeat
            trovato := false;
            z:=Low(dCard);
            repeat
                if Length(dProva[z])>0 then
                begin
                   trovato := true;
                   for x:=Low(dProva[z]) to High(dProva[z]) do
                       trovato := trovato and (dProva[z][x]=dTrovate[i][m]);
                end;
                inc(z);
            until trovato or (z>High(dCard));
            inc(m);
        until trovato or (m>High(dTrovate[i]));
        if not trovato then
        begin
            for m:=Low(dTrovate[i]) to High(dTrovate[i]) do
            begin
               trovato := false;
               z:=Low(dProva[i]);
               while (z<=High(dProva[i])) and not trovato do
               begin
                trovato := (dTrovate[i][m]=dProva[i][z]);
                if trovato then
                begin
                   SetLength(dCodRic[i][z],Length(dCodRic[i][z])+1);
                   dCodRic[i][z][High(dCodRic[i][z])] := dCodici[m];
                   durata[i][z] := durata[i][z] + dDurata[m];
                end
                else
                   inc(z);
               end;
               if not trovato then
               begin
                   SetLength(dProva[i],Length(dProva[i])+1);
                   SetLength(dCodRic[i],Length(dCodRic[i])+1);
                   SetLength(durata[i],Length(durata[i])+1);
                   dProva[i][High(dProva[i])] := dTrovate[i][m];
                   SetLength(dCodRic[i][z],Length(dCodRic[i][z])+1);
                   dCodRic[i][z][High(dCodRic[i][z])] := dCodici[m];
                   durata[i][High(durata[i])] := dDurata[m];
                   SetLength(dInizio[i],Length(dInizio[i])+1);
               end;
            end;
          end;
        for m:=Low(dProva[i]) to High(dProva[i]) do
        begin
          if Prestazioni.Locate('DIAGNOSTICA_FK',dProva[i][m],[]) then
             inizio := Prestazioni.FieldByName('ORA_INIZIO').AsDateTime
          else if Prestazioni.OldValuesDataSet.Locate('DIAGNOSTICA_FK',dProva[i][m],[]) then
             inizio := Prestazioni.OldValuesDataSet.FieldByName('ORA_INIZIO').AsDateTime
          else begin
             inizio := 0;
             CercaSlot(QyPreno,dxDataValue,dProva[i][m],durata[i][m],inizio);
          end;
          dInizio[i][m] := inizio;
        end;
      end;
      if not fatto then
         inc(LevCard);
    end;

    // -- attribuisco la cardinalità sulle diagnostiche già presenti nella richiesta
    //    per il livello di cardinalità trovato
    for i:=Low(dCard) to High(dCard) do
      if dCard[i]=LevCard then
      begin
         esiste := 0;
         for m:=Low(dProva[i]) to High(dProva[i]) do
             if Prestazioni.Locate('DIAGNOSTICA_FK',dProva[i][m],[]) or
                Prestazioni.OldValuesDataSet.Locate('DIAGNOSTICA_FK',dProva[i][m],[]) then
                   Inc(esiste);
         dDiagEsiste[i] := esiste;
     end;

    // -- scelgo la combinazione di diagnostiche del livello di cardinalità trovato
    //    e privilegiando le diagnostiche già presenti nella richiesta
    esiste := 0;
    for i:=Low(dDiagEsiste) to High(dDiagEsiste) do
      if dDiagEsiste[i]>esiste then
         esiste := dDiagEsiste[i];

    card := -1;
    for i:=Low(dDiagEsiste) to High(dDiagEsiste) do
      if dDiagEsiste[i]=esiste then
      begin
        card := i;
        Break;
      end;

    if card<>-1 then
    for m:=Low(dProva[card]) to High(dProva[card]) do
    for z:=1 to Length(dCodRic[card][m]) do
    begin
      Prestazioni.First;
      for i:=1 to Prestazioni.recordcount do
      begin
         if (Prestazioni.Fieldbyname('CODICE').AsString=dCodRic[card][m][z-1]) and
            (Prestazioni.Fieldbyname('DIAGNOSTICA_FK').IsNull or (Prestazioni.Fieldbyname('DIAGNOSTICA_FK').AsInteger<>dProva[card][m])) then
         begin
           Prestazioni.Edit;
           Prestazioni.Fieldbyname('DIAGNOSTICA_FK').AsInteger := dProva[card][m];
           Prestazioni.Fieldbyname('ORA_INIZIO').AsDateTime := dinizio[card][m];
           for x:=Low(vResToPos) to High(vResToPos) do
              if vResToPos[x]=dProva[card][m] then
              begin
                 Prestazioni.Fieldbyname('DIAGNOSTICA').AsString := vResToText[x];
                 break;
              end;
           Prestazioni.Post;
         end;
         Prestazioni.Next;
      end;
    end;

  finally
    QyPreno.IndexName := 'qyPrenoIDX_PKTRIAGE';
    QyPreno.EnableControls;
    Prestazioni.EnableControls;
  end;
end;

{$ELSE}

procedure TsyForm.CercaInCalendari(pQyPreno,pPrestazioni: TAstaClientDataset;
                                   xPossibili: TAstaCustomDataset;
                                   vResToPos: Array of integer; vResToText: Array of string; dxDataValue: Variant;
                                   xdiag: integer);
var
  inizio: TDateTime;
  t,q,k,m,x,z,i,j: integer;
//  aperta: boolean;
//  dAperte: Array of Array of integer;
  dCodici: Array of string;
//  dOrari: Array of TDateTime;
  durata: Array of integer;
//  dDurata: array of integer;
  dTrovate: Array of integer;
  dDiagn: Array of integer;
//  dCodRic: Array of Array of Array of string;
  dCodxDiagn: Array of Array of string;
//  trovato: boolean;
//  temp: integer;
//  cerco,volte: integer;
  diversi,card,quante: integer;
//  dCard: Array of integer;
  dDiagEsiste: Array of integer;
//  dProva: Array of Array of integer;
  dInizio: array of TDateTime;
  xTempoTrovato, xTempoTot: TDateTime;
  uguale: Boolean;
  LevCard: Integer;
  esiste: Integer;
  quanti: Integer;
  dmax: Integer;
  dove: integer;

  function FindVectorS(vect: array of string; cosa: string): integer;
  var
     x: integer;
  begin
     result := -1;
     x:=Low(vect);
     while (result=-1) and (x<=High(vect)) do
     begin
         if (vect[x]=cosa) then
            result := x;
         inc(x);
     end;
  end;

  function FindVectorI(vect: array of integer; cosa: integer): integer;
  var
     x: integer;
  begin
     result := -1;
     x:=Low(vect);
     while (result=-1) and (x<=High(vect)) do
     begin
         if (vect[x]=cosa) then
            result := x;
         inc(x);
     end;
  end;

begin

  pQyPreno.DisableControls;
  pQyPreno.IndexName := 'qyPrenoIDX_CALENDARIO';

  pPrestazioni.DisableControls;

  try

    // -- diagnostiche disponibili per ogni prestazione (n)
//    SetLength(dAperte,pPrestazioni.RecordCount);
    // -- codice esame di ogni prestazione (n)
    SetLength(dCodici,pPrestazioni.RecordCount);
    // -- durata esame di ogni prestazione (n)
//    SetLength(dDurata,pPrestazioni.RecordCount);
    // -- diagnostiche già presenti nella richiesta
    SetLength(dDiagEsiste,pPrestazioni.RecordCount);

    pPrestazioni.First;
    for z:=0 to pPrestazioni.RecordCount-1 do
    begin
         // -- carico l'esame della prestazione
         dCodici[z] := pPrestazioni.Fieldbyname('CODICE').AsString;
         if not pPrestazioni.Fieldbyname('DIAGNOSTICA_FK').IsNull and not (FindVectorI(dDiagEsiste,pPrestazioni.Fieldbyname('DIAGNOSTICA_FK').AsInteger)>=0) then
         begin
            SetLength(dDiagEsiste,Length(dDiagEsiste)+1);
            dDiagEsiste[High(dDiagEsiste)] := pPrestazioni.Fieldbyname('DIAGNOSTICA_FK').AsInteger;
         end;
         // -- cerco le diagnostiche disponibili per l'esame
         xPossibili.CancelRange;
         xPossibili.SetRange([pPrestazioni.Fieldbyname('CODICE').AsString],[pPrestazioni.Fieldbyname('CODICE').AsString]);
         while not xPossibili.eof do
         begin
           if (xdiag=-1) or (xPossibili.Fieldbyname('SERVIZI_FK').AsInteger=xdiag) then
           begin

(*             SetLength(dAperte[z],Length(dAperte[z])+1);
             dAperte[z][High(dAperte[z])] := xPossibili.Fieldbyname('SERVIZI_FK').AsInteger;
             dDurata[z] := xPossibili.Fieldbyname('DURATA').AsInteger;
*)
             dove := FindVectorI( dTrovate, xPossibili.Fieldbyname('SERVIZI_FK').AsInteger );
             if dove=-1 then
             begin
               SetLength(dTrovate,Length(dTrovate)+1);
               SetLength(durata,Length(durata)+1);
               SetLength(dCodxDiagn,Length(dCodxDiagn)+1);
               dove := High(dTrovate);
               durata[dove] := 0;
               dTrovate[dove] := xPossibili.Fieldbyname('SERVIZI_FK').AsInteger;
             end;
             durata[dove] := durata[dove] + xPossibili.Fieldbyname('DURATA').AsInteger;
//             q := FindVectorS( dCodxDiagn[dove], pPrestazioni.Fieldbyname('CODICE').AsString );
//             if q=-1 then
             begin
               SetLength(dCodxDiagn[dove],Length(dCodxDiagn[dove])+1);
               dCodxDiagn[dove][High(dCodxDiagn[dove])] := pPrestazioni.Fieldbyname('CODICE').AsString;
             end;
           end;
           xPossibili.Next;
         end;
         xPossibili.CancelRange;
         pPrestazioni.Next;
    end;

    if Assigned(pPrestazioni.OldValuesDataSet) then
    begin
      pPrestazioni.OldValuesDataSet.First;
      while not pPrestazioni.OldValuesDataSet.Eof do
      begin
        if (pPrestazioni.OldValuesDataSet.FieldbyName('Delta').asInteger = Ord(dtDelete)) and
           not pPrestazioni.OldValuesDataSet.Fieldbyname('DIAGNOSTICA_FK').IsNull and
           not (FindVectorI(dDiagEsiste,pPrestazioni.OldValuesDataSet.Fieldbyname('DIAGNOSTICA_FK').AsInteger)>=0) then
        begin
           SetLength(dDiagEsiste,Length(dDiagEsiste)+1);
           dDiagEsiste[High(dDiagEsiste)] := pPrestazioni.OldValuesDataSet.Fieldbyname('DIAGNOSTICA_FK').AsInteger;
        end;
        pPrestazioni.OldValuesDataSet.Next;
      end;
    end;

    quanti := 0;
    repeat

      // -- trovo la diagnostica (j) che contiene il massimo numero di esami ancora da eseguire (dmax)
      dmax := 0;
      j := -1;
      for i:=Low(dCodxDiagn) to High(dCodxDiagn) do
      begin
          if (FindVectorI(dDiagn, i)=-1) then
          begin
            q := 0;
            for k:=Low(dCodxDiagn[i]) to High(dCodxDiagn[i]) do
                if FindVectorS(dCodici,dCodxDiagn[i][k])>=0 then
                   inc(q);
            if (q>dmax) then
            begin
               dmax := q;
               j := i;
            end;
          end;
      end;

      // -- verifico se, a parità di esami, si può assegnare una diagnostica già usata
      if j>=0 then
        for i:=Low(dCodxDiagn) to High(dCodxDiagn) do
        begin
            if i<>j then
            begin
              q := Low(dCodxDiagn[i]);
              uguale := (Length(dCodxDiagn[j])=Length(dCodxDiagn[i]));
              while uguale and (q<=High(dCodxDiagn[i])) do
              begin
                   uguale := (FindVectorS(dCodxDiagn[j],dCodxDiagn[i][q])>=0);
                   inc(q);
              end;
              if uguale and (FindVectorI(dDiagEsiste,dTrovate[i])>=0) then
              begin
                 j := i;
                 Break;
              end;
            end;
        end;

      if j>=0 then
      begin
        // -- dDiagn: vettore delle posizioni delle diagnostiche scelte rispetto a dTrovate e dCodxDiagn (n)
        SetLength(dDiagn,Length(dDiagn)+1);
        dDiagn[High(dDiagn)] := j;
        // -- elimino i codici esami trovati
        for z:=Low(dCodxDiagn[j]) to High(dCodxDiagn[j]) do
        begin
            q := FindVectorS(dCodici,dCodxDiagn[j][z]);
            if q>=0 then
            begin
               dCodici[q] := '';
               inc(quanti);
            end;
        end;
      end
      else begin
        // -- non ci sono più diagnostiche utilizzabili!
        Break;
      end;

    until quanti=pPrestazioni.RecordCount;

    // -- dInizio: struttura degli orari iniziali per diagnostica (n)
    SetLength(dInizio,Length(dDiagn));
    for m:=Low(dDiagn) to High(dDiagn) do
    begin
      if pPrestazioni.Locate('DIAGNOSTICA_FK',dTrovate[dDiagn[m]],[]) then
         inizio := pPrestazioni.FieldByName('ORA_INIZIO').AsDateTime
      else if pPrestazioni.FindDeletedOldValue('DIAGNOSTICA_FK',dTrovate[dDiagn[m]]) then
         inizio := pPrestazioni.OldValuesDataSet.FieldByName('ORA_INIZIO').AsDateTime
      else begin
         inizio := 0;
         CercaSlot(pQyPreno,dxDataValue,dTrovate[dDiagn[m]],durata[dDiagn[m]],inizio);
      end;
      dInizio[m] := inizio;
    end;

    // -- assegno la diagnostica trovata ad ogni prestazione
    pPrestazioni.First;
    for t:=1 to pPrestazioni.recordcount do
    begin
         pPrestazioni.Edit;
         for m:=Low(dDiagn) to High(dDiagn) do
         begin
             for k:=Low(dCodxDiagn[dDiagn[m]]) to High(dCodxDiagn[dDiagn[m]]) do
                 if dCodxDiagn[dDiagn[m]][k]=pPrestazioni.Fieldbyname('CODICE').AsString then
                 begin
                    pPrestazioni.Fieldbyname('DIAGNOSTICA_FK').AsInteger := dTrovate[dDiagn[m]];
                    pPrestazioni.Fieldbyname('ORA_INIZIO').AsDateTime := dinizio[m];
                    Break;
                 end;
         end;
         for x:=Low(vResToPos) to High(vResToPos) do
            if vResToPos[x]=pPrestazioni.Fieldbyname('DIAGNOSTICA_FK').AsInteger then
            begin
               pPrestazioni.Fieldbyname('DIAGNOSTICA').AsString := vResToText[x];
               break;
            end;
         pPrestazioni.Post;
         pPrestazioni.Next;
    end;

  finally
    pPrestazioni.EnableControls;
    pQyPreno.IndexName := 'qyPrenoIDX_PKTRIAGE';
    pQyPreno.EnableControls;
  end;
end;

{$ENDIF}

procedure TsyForm.CercaSlot(QyPreno: TAstaClientDataset; dxDataValue: Variant; xdiag: integer; xdurata: integer; var inizio: TDateTime);
var
  finite: boolean;
  fine: TDateTime;
  trovato: boolean;
begin

     if not IsSameDay(Date(),dxDataValue) then
     begin
        inizio := Date();
     end
     else begin
        inizio := Now();
     end;

     QyPreno.Locate('DIAGNOSTICA_FK',xdiag,[]);
     while not QyPreno.Eof and (QyPreno.FieldByName('DIAGNOSTICA_FK').AsInteger=xdiag) and
           (CompareDateTime(QyPreno.FieldByName('ORA_INIZIO').AsDateTime,inizio)<=0) do
     begin
         inizio := max(QyPreno.FieldByName('ORA_FINE').AsDateTime,inizio);
         QyPreno.Next;
     end;

     repeat
       finite := QyPreno.eof or not (QyPreno.FieldByName('DIAGNOSTICA_FK').AsInteger=xdiag);
       if not finite then
          fine := QyPreno.FieldByName('ORA_INIZIO').AsDateTime
       else
          fine := EndOfTheDay(Date());

       trovato := (fine>inizio) {and ((MinutesBetween(inizio,fine)+1)>=xdurata)};

       if not trovato and not finite then
       begin
         inizio := QyPreno.FieldByName('ORA_FINE').AsDateTime;
         // -- controllo che la prenotazione non sia nel successivo orario di apertura
         if (inizio>EndOfTheDay(Date())) or (MinutesBetween(inizio,EndOfTheDay(Date()))<xdurata) then
         begin
               finite := true
{
            else begin
               inizio := Date();
               while not QyPreno.Eof and (QyPreno.FieldByName('DIAGNOSTICA_FK').AsInteger=xdiag) and
                     (CompareDateTime(QyPreno.FieldByName('ORA_INIZIO').AsDateTime,Date())<0) do
               begin
                  QyPreno.Next;
               end;
            end;
}
         end
         else
            repeat
              QyPreno.Next;
            until QyPreno.eof or not (QyPreno.FieldByName('DIAGNOSTICA_FK').AsInteger=xdiag) or (QyPreno.FieldByName('ORA_INIZIO').AsDateTime>=inizio);
       end;
    until trovato or finite;

   if not trovato and finite then
   begin
      // -- gestione overbooking...
      if not IsSameDay(Date(),dxDataValue) then
      begin
        inizio := Date();
      end
      else begin
        inizio := {FStartNow} Now();
      end;
   end;

end;

function TsyForm.RecordAttuale: integer;
begin
  result := -1;
end;

function TsyForm.StatoAttuale: integer;
begin
  result := -1;
end;

function TsyForm.TriageAttuale: integer;
begin
  result := -1;
end;

function TsyForm.GotoNext: boolean;
begin
  result := false;
end;

function TsyForm.GotoPrev: boolean;
begin
  result := false;
end;

procedure TsyForm.KeyPress(var Key: Char);
var
   temp: string;
begin
  inherited;
  if FReadBarCode then
  begin
    // -- Lettura Tessera Sanitaria
    if (Key=';') and not FBufferIn then
    begin
       FBufferIn := true;
       FKeyBuffer := '';
       Key := #0;
    end
    else if (Key='?') and FBufferIn then
    begin
      Key := #0;
      FBufferIn := false;
      temp := TrasformaCF(FKeyBuffer);

      if temp<>'' then
         SendPortDataToForm(temp, Length(temp));
    end
    else if FBufferIn then
    begin
          {JRT 3899 - vengono filtrati i caratteri non ASCII}
  //        if Key in [32..126] then
             FKeyBuffer := FKeyBuffer + Key;
          Key := #0;
    end;
  end;
end;

procedure TsyForm.KeyUp(var Key: Word; Shift: TShiftState);
begin
  // -- Emulazione da tastiera della lettura barcode:
  //    inizio lettura = con Ctrl + Alt + @
  //    fine lettura = Ctrl + Alt + #

  if not FBufferIn and
     ((Shift=[ssAlt..ssCtrl]) and (Key=192)) then
  begin
     FBufferKeybIn := true;
     FKeyBuffer := '';
     Key := 0;
  end
  else if FBufferKeybIn then
  begin
     if ((Shift=[ssAlt..ssCtrl]) and (Key=222)) then
     begin
        SendPortDataToForm(FKeyBuffer, Length(FKeyBuffer));
        FBufferKeybIn := false;
     end
     else begin
        if Key in [32..126] then
           FKeyBuffer := FKeyBuffer + chr(Key);
     end;
     Key := 0;
  end;
  inherited;
end;

function TsyForm.TrasformaCF(const inp: string): string;
const
   digits = '0123456789 ABCDEFGHIJKLMNOPQRSTUVWXYZ';
var
  i: integer;
  index: integer;
begin
  result := '';
  if Length(inp)>=32 then
  begin
    for i:=0 to 15 do
    begin
          index := StrToInt(Copy(inp,(i*2)+1,2));
          result := result + digits[index+1];
    end;

    if ControllaCF(result)<>'' then
       result := '';
  end;
end;

function TsyForm.ControllaCF(cf: String): String;
Const SetDisp : Array [0..25] of Integer = (1, 0, 5, 7, 9, 13, 15, 17, 19, 21, 2, 4, 18, 20,
		11, 3, 6, 8, 12, 14, 16, 10, 22, 25, 24, 23);
Var	i, n, s : Integer;
    cf2 : String;
Begin
  Result:='';
	if Length(cf)=0 Then Exit;
	if Length(cf)<>16 Then
   Begin
    Result:='La lunghezza del codice fiscale non è corretta: il codice '+
            'fiscale dovrebbe essere lungo esattamente 16 caratteri.';
    Exit;
   End;

	cf2 := UpperCase(cf);

  For I:=1 to 16 do
   If Not(((cf2[I]>='0')And(cf2[I]<='9'))or((cf2[I]>='A')And(cf2[I]<='Z')))
    Then Begin
     Result:='Il codice fiscale contiene dei caratteri non validi: '+
		         'i soli caratteri validi sono le lettere e le cifre.';
     Exit;
    End;

	s := 0;
  For I:=2 to 14 do If Not Odd(I) Then
   Begin
     n := Ord(cf2[I]);
     If ((cf2[I]>='0')And(cf2[I]<='9'))
       Then s := s + n - Ord('0')
       Else s := s + n - Ord('A');
   End;

  For I:=1 to 15 do If Odd(I) Then
   Begin
     n := Ord(cf2[I]);
     If ((cf2[I]>='0')And(cf2[I]<='9')) Then n := n - Ord('0') + Ord('A');
     s := s + SetDisp[n-Ord('A')];
   End;

  n := (s Mod 26) + Ord('A');

  If Chr(n)<>cf2[16] Then Result:='Il codice fiscale non è corretto: '+
                'il codice di controllo non corrisponde.';
End;

procedure TsyForm.Show;
begin
   Visible := True;
end;

function TsyForm.GetCanClose: boolean;
begin

   result := True;
(*
   if (FSubFrame<>nil) and FSubFrame.Visible then
   begin
      result := FSubFrame.CanClose;
      if result then
      begin
         FSubFrame.Visible := false;
         // -- se è aperto il Sub-Frame, prima chiudo solo quello...
         result := False;
      end;
   end;

   if result and (FFrameDoc<>nil) then
   begin
      result := FFrameDoc.CanClose;
      if result then
      begin
         FFrameDoc.Hide;
         // -- se è aperto il Documento, prima chiudo solo quello...
         result := False;
      end;
   end;
*)
end;

procedure TsyForm.InternalDblClick(var Message: TMessage);
var
  APoint: TPoint;
  AHitTest: TcxCustomGridHitTest;
//  ARecord: TcxCustomGridRecord;
begin
  if (Message.WParam=0) then
  begin
    TAction(Message.LParam).Execute;
  end
  else begin
    GetCursorPos(APoint);
    with TcxGrid(Message.WParam).FocusedView.Site do
    begin
      APoint := ScreenToClient(APoint);
      AHitTest := ViewInfo.GetHitTest(APoint);
      if AHitTest is TcxGridRecordHitTest then
      begin
  //      ARecord := TcxGridRecordHitTest(AHitTest).GridRecord;
        //Call your procedure to activate an edit dialog
        //for the clicked record
  //      OpenEditRecordDialog(ARecord);
        TAction(Message.LParam).Execute;
      end;
    end;
  end;
end;

procedure TsyForm.SetActiveControl(Control: TWinControl);
begin
  if FActiveControl <> Control then
  begin
    FActiveControl := Control;

    if Parent<>nil then
       PostMessage(Parent.Handle,SY_FOCUSPRIMOCAMPO,0,LongInt(Control))
    else
       PostMessage(Handle,SY_FOCUSPRIMOCAMPO,0,LongInt(Control));

  end;
end;

procedure TsyForm.Close;
begin
  if Parent<>nil then
     PostMessage(Parent.Parent.Parent.Handle,WM_CLOSE_DETAIL,0,0);
end;

procedure TsyForm.DoOnActivate;
begin
end;

procedure TsyForm.ChangeScale(M, D: Integer);
begin
  inherited ChangeScale(M, D);
end;

procedure TsyForm.SetImgList(iList: TcxImageList);
var
  i: integer;
begin

   for i:=0 to ComponentCount-1 do
   begin
       if (Components[i] is TcxGridDBTableView) then
       begin
          TcxGridDBTableView(Components[i]).Navigator.Buttons.Images := iList;
       end
       else if (Components[i] is TcxButton) then
       begin
          TcxButton(Components[i]).OptionsImage.Images := iList;
       end
       else if (Components[i] is TdxBarManager) then
       begin
          TdxBarManager(Components[i]).ImageOptions.Images := iList;
       end
       else if (Components[i] is TcxDBNavigator) then
       begin
          TcxDBNavigator(Components[i]).Buttons.Images := iList;
       end
       else if (Components[i] is TActionList) then
       begin
          TActionList(Components[i]).Images := iList;
       end;
   end;

end;

procedure TsyForm.Loaded;
var
  i: integer;
  x: integer;
  refG: TcxGridDBTableView;
begin

  inherited Loaded;

  if not (csDesigning in ComponentState) and (Screen.PixelsPerInch<>96) then
  begin

   // -- ChangeScale non modifica Width delle colonne DevExp (ver. 14.xx)
   //    e se non c'è ColumnAutoWidth attivo...
   for i:=0 to ComponentCount-1 do
   begin
       if (Components[i] is TcxGridDBTableView) then
       begin
          refG := TcxGridDBTableView(Components[i]);
          if not refG.OptionsView.ColumnAutoWidth then
          begin
            for x:=0 to refG.ColumnCount-1 do
                refG.Columns[x].Width := MulDiv(refG.Columns[x].Width, Screen.PixelsPerInch, 96);
          end;
       end
       else if (Components[i] is TdxBarManager) then
       begin
            TdxBarManager(Components[i]).Font.Size := 14; // Self.Font.Size; sempre a 7 ?!?
       end
       else if (Components[i] is TdxBar) then
       begin
            TdxBar(Components[i]).Font.Size := 14; // Self.Font.Size; sempre a 7 ?!?
       end;
   end;

   ChangeScale(Screen.PixelsPerInch, 96);

   SetImgList( FImgList );

  end;

end;

end.
