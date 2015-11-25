unit MainMenu;

interface

uses
  BaseMainMenu, Forms, Messages, IIConsts, MD_PCSC, MD_PCSCDef, Types,{}
  cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Menus, dxCustomTileControl,
  dxStatusBar, dxRibbonStatusBar, StdCtrls, cxButtons, cxProgressBar,
  cxTextEdit, cxMemo, cxRichEdit, ExtCtrls, cxSplitter, cxClasses, Classes,
  Controls, dxTileControl, dxSkinsCore, dxSkinsDefaultPainters, rsStorage,
  rsPropSaver, rsXmlData, htmlhint, ImgList;

type
  TfrmMainMenu = class(TfrmBaseMainMenu)
    TFDaStampare: TdxTileControlItem;
    TFPrenotaNew: TdxTileControlItem;
    TFArchivioReferti: TdxTileControlItem;
    TFAccDiagn: TdxTileControlItem;
    rsAccessi: TrsStorage;
    rsXMLAccessi: TrsXMLData;
    rsPropAccessi: TrsPropSaver;
    HTMLHint1: THTMLHint;
    cxImageList1: TcxImageList;
    procedure FormDestroy(Sender: TObject);
    procedure rsXMLAccessiLoadFromStream(Sender: TObject; Stream: TStream;
      var DoStandard: Boolean);
    procedure FormShow(Sender: TObject);
  private
    FOnIdle: TIdleEvent;
    FPCSC: TPCSC;
    ReaderListBox: TStringList;
    procedure SyUserConnected(var Message: TMessage); message SY_USERCONNECTED;

    // -- gestione Tessera Sanitaria

    procedure ProcessEvents(Sender: TObject; var Done: boolean);
    procedure AddLogMemo(Msg: string);
    procedure UpdatePCSCReaderList;
    function ErrorToString(ErrorCode: DWORD): string;

    procedure ReaderFound(Sender: TObject; ReaderName: string);
    procedure ReaderRemoved(Sender: TObject; ReaderName: string);
    procedure CardInserted(Sender: TObject; ReaderName: string; ATR: TBytes);
    procedure CardRemoved(Sender: TObject; ReaderName: string);
    procedure CardError(Sender: TObject; ReaderName: string);
    procedure CardStateChanged(Sender: TObject; ReaderName: string);

    function SendCommand(PCSCReader: TPCSCReader; const cmd: string): DWORD; overload;
    function SendCommand(PCSCReader: TPCSCReader; const cmd: string; var DataOut: TBytes): DWORD; overload;
    procedure LeggiDati;

  protected
    procedure DoCreate; override;
    procedure DoShow; override;

  public
    { Public declarations }
  end;

var
  frmMainMenu: TfrmMainMenu;

implementation

uses DMCommon, IInterface, BaseGrid, Windows, SysUtils, MD_Tools, DateUtils, gtPDFUtils;

{$R *.dfm}


procedure TfrmMainMenu.DoCreate;
begin
  inherited;
  ReaderListBox := TStringList.Create;
  FOnIdle := Application.OnIdle;
  Application.OnIdle := ProcessEvents;
  FPCSC := TPCSC.Create;
end;

procedure TfrmMainMenu.FormDestroy(Sender: TObject);
begin

  ReaderListBox.Free;
  ReaderListBox := nil;
  FPCSC.Free;
  FPCSC := nil;
  ImgList := nil;  
  inherited;

end;


procedure TfrmMainMenu.SyUserConnected(var Message: TMessage);
begin

//  FFormClosed := false;
  dxStatusBar.Panels[1].Text := gblDescrServizio+ ' ('+gblNomeUtente+')'; // FDMCommon.LeggiPostoLavoroDESCSERVIZIO.AsString+ ' ('+gblNomeUtente+')'; // FDMCommon.LeggiPostoLavoroDESCREPARTO.AsString;

//  rsAccessi.ClearAll;
//  rsAccessi.Load;
//  rsPropAccessi.LoadValues;

  if gblSuperUser {gblUserIsAdmin} then
  begin
     gblViewReferti := true;
     gblViewImmagini := true;
     gblForzaBlocchi := true;
     gblEseguiEsami := true;
     gblSetup := true;
     if gblDebugMode then
        dxStatusBar.Panels[1].Text := dxStatusBar.Panels[1].Text + ' ( '+format('%g',[CPixelsPerInch])+' DPI)';
//     EnableButton( dxBarManager1.Bars[0].ItemLinks, true );
  end;

  gblViewImmagini := gblViewImmagini and FDMCommon.ClientPacs;

(*
  if (gblTipoLogin in [1,2]) then
  begin
     Login.Visible := false;
     Logout.Visible := false;
  end;
*)

//  xxFDaFirmare.Enabled := xxFDaFirmare.Enabled and ((FDMCommon.LeggiPostoLavoroCHK_ESTEMPORANEO.AsInteger=1) or (FDMCommon.LeggiPostoLavoroFLAG_PROVVISORIO.AsInteger=1) or (FDMCommon.LeggiPostoLavoroCHK_TRASCRIVERE.AsInteger=1));
//  xxFDaTrascrivere.Enabled := xxFDaTrascrivere.Enabled and (FDMCommon.LeggiPostoLavoroCHK_TRASCRIVERE.AsInteger=1);

//  FDMCommon.ConnettiSeriale(ApdComPort1);

(*
  if False and FDMCommon.rsStorage1.KeyExist('\Manual\UltimaForm') and not gblDebugMode then
     UltimaForm := FDMCommon.rsStorage1['\Manual\UltimaForm'];

  if (UltimaForm<>'') then
  begin
       xButton := TrovaButton( dxBarManager1.Bars[0].ItemLinks, UltimaForm );
       if Assigned(xButton) and xButton.Enabled and self.Visible then
          xButton.Click
       else
          UltimaForm := '';
  end;
*)

{
  if gblIsMedico and (FDMCommon.LeggiPostoLavoroDEST_FORM.AsInteger=0) then
  begin
     InitFormRef(False);
     PostMessage(Handle,SY_SHOWELAPSED,0,-1);
     FElapsedCrea := 0;
  end;
}


(*  if FDMCommon.LeggiPostoLavoroFLAG_TESTISTD.AsInteger in [0,2] then
     xxFRadTestiStd.Caption := RS_TestiStd
  else
     xxFRadTestiStd.Caption := RS_TestiMedico;
*)

(*
{JRT 6475}
  if (gblpkworkstation>=0) then
  begin
{}
    if qLoginLogout.Active then
       qLoginLogout.Close;
    qLoginLogout.OpenNoFetch;
    qLoginLogout.Insert;
    qLoginLogoutTIPO_LOG.AsInteger := 1;
    qLoginLogoutPERSONALE_FK.AsInteger := gblCodUtente;
    qLoginLogoutWORKSTATION_FK.AsInteger := gblpkworkstation;
    qLoginLogout.Post;
  end;

  vbConn.Clear;
  if FDMCommon.qryUser.Active then
  begin
    with FDMCommon.qryUser do
    begin
        First;
        for x := 0 to recordcount - 1 do
        begin
          vbConn.Add(TdxBarButton.Create(nil));
          vbConn[x].ButtonStyle := bsChecked;
          vbConn[x].Caption := FDMCommon.qryUserREPARTO.AsString;
  //        if LkDiagxWkDESC_REPARTO.AsString<>'' then
  //           vbDiagn[I].Caption := vbDiagn[I].Caption + ' (' + LkDiagxWkDESC_REPARTO.AsString +')';
          vbConn[x].Tag := FDMCommon.qryUserREPARTI_FK.AsInteger;
          vbConn[x].OnClick := dxSelezConn;
          vbConn[x].GroupIndex := 9;
          if vbConn[x].Tag=gblpkrep then
             vbConn[x].Down := True;
          dxBarCollegati.ItemLinks.Add.Item := vbConn[x];
          Next;
        end;
    end;

    dxBarCollegati.Enabled := (FDMCommon.qryUser.recordcount>1) {JRT 6664}and FDMCommon.AstaClientSocket.Active{};

    if Assigned(FDMCommon.FirmaDig) and FDMCommon.FirmaDig.Attivata and (FDMCommon.FirmaDig.TipoFirma=2) then
       PostMessage(Handle,SY_ATTIVATIMERCARTA,0,0);

  //  FDMCommon.IsUserLoaded := True;
  end;
*)
  gblMedRefertante := -1;

end;

procedure TfrmMainMenu.rsXMLAccessiLoadFromStream(Sender: TObject;
  Stream: TStream; var DoStandard: Boolean);
begin
  inherited;
  FDMCommon.CaricaProfilo(Stream);
end;

procedure TfrmMainMenu.DoShow;
var
  x: Integer;
  auno: Boolean;
begin

  inherited;

//  vv := FDMCommon.WebUpdate1.GetFileVersion(paramstr(0));
//  dxStatusBar.Panels[2].Text := {'ver. '+}VersionToString(vv);
  dxStatusBar.Panels[2].Text := {'ver. '+}xVersione;

(* solo per connessioni sincrone
  if not CheckConnect then
     PostMessage(Handle,WM_APPLICATION_END,0,0);
*)

  rsAccessi.ClearAll;
  rsAccessi.Load;
  rsPropAccessi.LoadValues;
(*
  // -- Adeguamento menù iniziale
  auno := True;
  for x:=0 to dxTile.Items.Count-1 do
      if dxTile.Items[x].GroupIndex=dxTiledxTileControlGroup1.Index then
         auno := auno and dxTile.Items[x].Visible;

  if not auno then
  begin
    dxTiledxTileControlGroup2.Caption.Text := '';
    dxTiledxTileControlGroup2.Indent := 50;
    dxTiledxTileControlGroup1.Visible := False;
    dxTile.OptionsView.GroupMaxRowCount := 2;
    for x:=0 to dxTile.Items.Count-1 do
        if dxTile.Items[x].GroupIndex=dxTiledxTileControlGroup2.Index then
           dxTile.Items[x].Size := tcisExtraLarge;
  end;
*)  
end;

// -- gestione lettore Tessera Sanitaria

procedure TfrmMainMenu.ProcessEvents(Sender: TObject; var Done: boolean);
begin
  if FPCSC.Valid then FPCSC.ProcessEvent;
  if Assigned(FOnIdle) then FOnIdle(Sender, Done);
end;


procedure TfrmMainMenu.FormShow(Sender: TObject);
begin
  inherited;

  if not(FPCSC.Valid) then AddLogMemo('SCardEstablishContext failed.')
  else begin
    AddLogMemo('SCardEstablishContext succeeded.');
    FPCSC.OnReaderFound := ReaderFound;
    FPCSC.OnReaderRemoved := ReaderRemoved;
    FPCSC.OnCardStateChanged := CardStateChanged;
    FPCSC.OnCardInserted := CardInserted;
    FPCSC.OnCardRemoved := CardRemoved;
    FPCSC.OnCardError := CardError;

    FPCSC.Start;
  end;

end;

procedure TfrmMainMenu.AddLogMemo(Msg: string);
begin
//  if pnlUpgrade.Visible then
     reUpgrade.Lines.Add(Msg);
end;

procedure TfrmMainMenu.ReaderFound(Sender: TObject; ReaderName: string);
begin
  AddLogMemo('New reader found: ' + ReaderName);
  UpdatePCSCReaderList;
end;

procedure TfrmMainMenu.ReaderRemoved(Sender: TObject; ReaderName: string);
begin
  AddLogMemo('Reader removed: ' + ReaderName);
  UpdatePCSCReaderList;
end;

procedure TfrmMainMenu.CardInserted(Sender: TObject; ReaderName: string; ATR: TBytes);
var
  PCSCReader: TPCSCReader;
begin
  AddLogMemo('Card inserted in ' + ReaderName);
  PCSCReader := TPCSCReader(FPCSC.GetPCSCReader(ReaderName));
  if PCSCReader <> nil then begin
    if length(ATR) > 0 then AddLogMemo('ATR = ' + BufferToHexString(ATR));
  end;
end;

procedure TfrmMainMenu.CardRemoved(Sender: TObject; ReaderName: string);
begin
  AddLogMemo('Card removed from ' + ReaderName);
end;

procedure TfrmMainMenu.CardError(Sender: TObject; ReaderName: string);
begin
  AddLogMemo('Card error in ' + ReaderName);
end;

procedure TfrmMainMenu.UpdatePCSCReaderList;
var
  i, j: Integer;
  Found: boolean;
  ReaderName: string;
begin
  for i := ReaderListBox.Count - 1 downto 0 do begin
    ReaderName := ReaderListBox[i];
    Found := false;
    for j := 0 to FPCSC.ReaderList.Count - 1 do begin
      if ReaderName = FPCSC.ReaderList[j] then begin
        Found := true;
        break;
      end;
    end;
    if not Found then ReaderListBox.Delete(i);
  end;

  for i := 0 to FPCSC.ReaderList.Count - 1 do begin
    Found := false;
    for j := 0 to ReaderListBox.Count - 1 do begin
      ReaderName := ReaderListBox[j];
      if ReaderName = FPCSC.ReaderList[i] then begin
        Found := true;
        break;
      end;
    end;
    if not Found then begin
      ReaderName := FPCSC.ReaderList[i];
      ReaderListBox.Add(ReaderName);
    end;
  end;
end;

procedure TfrmMainMenu.CardStateChanged(Sender: TObject; ReaderName: string);
var
  CardState: TCardState;
  PCSCReader: TPCSCReader;
  sState: string;
begin
  PCSCReader := TPCSC(Sender).GetPCSCReader(ReaderName);
  if PCSCReader = nil then exit;

  CardState := PCSCReader.CardState;
  ReaderName := PCSCReader.ReaderName;
  case CardState of
    csExclusive: sState := 'exclusive';
    csShared: sState := 'shared';
    csAvailable: sState := 'available';
    csBadCard: sState := 'bad card';
    csNoCard: sState := 'no card';
  else sState := 'unknown';
  end;
  AddLogMemo('Card State changed in ' + ReaderName + ' to ' + sState);

  case CardState of
  csAvailable:  begin
                  LeggiDati;
                end;
  end;

end;

procedure TfrmMainMenu.LeggiDati;
const
  Sezioni : array[1..16] of string = (
'Codice Emettitore',
'Data di emissione',
'Data di scadenza',
'Cognome',
'Nome',
'Data di Nascita',
'Sesso',
'Statura (cm)',
'Codice fiscale',
'Cittadinanza',
'Comune di Nascita',
'Stato estero di Nascita',
'Estremi atto di nascita',
'Comune di residenza',
'Indirizzo di residenza',
'Annotazione'
) ;

var
  PCSCResult: DWORD;
  PCSCReader: TPCSCReader;
  DataOut: TBytes;
  buffer: string;

  lstringa: Integer;
  lraw: string;
  z: Integer;
  lprox: Integer;
  idx: Integer;
  trec: TTessera;
  res: Integer;
  pDataEsame: TDate;

  function HexStringToInt(hexnum:string):integer;
  var
   s:char; s_ord:integer; i, j:integer;  hnum:integer; sixteen: integer;
  begin
       result:=0; hnum:=0;
       for i:=length(hexnum) downto 1 do begin
           s:=hexnum[i]; s_ord:=ord(s);
           case s_ord of
                ord('0') : hnum:=0;
                ord('1') : hnum:=1;
                ord('2') : hnum:=2;
                ord('3') : hnum:=3;
                ord('4') : hnum:=4;
                ord('5') : hnum:=5;
                ord('6') : hnum:=6;
                ord('7') : hnum:=7;
                ord('8') : hnum:=8;
                ord('9') : hnum:=9;
                ord('A') : hnum:=10;
                ord('a') : hnum:=10;
                ord('B') : hnum:=11;
                ord('b') : hnum:=11;
                ord('C') : hnum:=12;
                ord('c') : hnum:=12;
                ord('D') : hnum:=13;
                ord('d') : hnum:=13;
                ord('E') : hnum:=14;
                ord('e') : hnum:=14;
                ord('F') : hnum:=15;
                ord('f') : hnum:=15;
           end; {case}
           if i=length(hexnum) then result:=hnum  {simulate exponential function}
           else begin
               sixteen:=1;
               for j:=length(hexnum)-i downto 1 do
               sixteen := sixteen * 16;
               result:=result + (hnum * sixteen);
           end;

        end;  {for loop}
  end; {hext to int function}

  function LeggiBufferStr(Buffer: string; inizio: integer; lungh: integer): string;
  var
    i: integer;
  begin
    result := '';
    for i := inizio to (inizio+lungh-1) do
        result := result + Chr(HexStringToInt(Copy(Buffer,(i*2)+1, 2)));
  end;

  function LeggiBufferInt(Buffer: string; inizio: integer; lungh: integer): integer;
  var
    temp: string;
  begin
    temp := LeggiBufferStr(Buffer, inizio, lungh);
    result := HexStringToInt(temp);
  end;

  function StrBufferToHexString(Buffer: TBytes): string;
  var
    i: integer;
  begin
    result := '';
    for i := 0 to length(Buffer) - 1 do result := result + IntToHex(Buffer[i], 2);
    result := trim(result);
  end;

  function AnyStringToDate(const dt,fmt: String) : TDateTime;
  var
    fs : TFormatSettings;
  Begin
//    fs := TFormatSettings.Create;
    fs.ShortDateFormat := fmt;

    result := StrToDateDef(dt, 0, fs);
  End;

begin

  if ReaderListBox.Count=0 then exit;
  PCSCReader := FPCSC.GetPCSCReader(ReaderListBox[0 {ReaderListBox.ItemIndex}]);
  if PCSCReader = nil then exit;

  PCSCResult := PCSCReader.Connect(SCARD_SHARE_SHARED);
  if PCSCResult <> SCARD_S_SUCCESS then
  begin
    AddLogMemo(Format('SCardConnect (shared) failed with error code %s (%s)', [IntToHex(PCSCResult, 8), ErrorToString(PCSCResult)]));
    Exit;
  end;
  AddLogMemo('SCardConnect (shared) succeeded.');
  TdxStatusBarStateIndicatorPanelStyle(dxStatusBar.Panels[0].PanelStyle).Indicators.Items[1].IndicatorType := sitBlue;

  // -- SELECT_MF
  PCSCResult := SendCommand(PCSCReader,'00A40000023F00');
  if not PCSCResult = SCARD_S_SUCCESS then Exit;

  // -- SELECT_DF1
  PCSCResult := SendCommand(PCSCReader,'00A40000021100');
  if not PCSCResult = SCARD_S_SUCCESS then Exit;

  // -- SELECT_EF_PERS
  PCSCResult := SendCommand(PCSCReader,'00A40000021102');
  if not PCSCResult = SCARD_S_SUCCESS then Exit;

  // -- READ_BIN
  PCSCResult := SendCommand(PCSCReader,'00B00000000000',DataOut);
  if not PCSCResult = SCARD_S_SUCCESS then Exit;

  buffer := StrBufferToHexString(DataOut);
  AddLogMemo(Format('stringa ritornata: %s', [buffer]));

  lraw := LeggiBufferStr(buffer,0,6);
  lstringa := LeggiBufferInt(buffer,0,6);
  AddLogMemo(Format('Lunghezza stringa %d (%s)', [lstringa,lraw]));

  idx := 1;
  z := 6;
  while z < lstringa do
  begin
      lprox := LeggiBufferInt(buffer,z,2);
      if lprox>0 then
      begin
        lraw := LeggiBufferStr(buffer,z+2,lprox);
      end
      else
        lraw := '';
      AddLogMemo(Format('%d. %s => %s (%d)', [idx,Sezioni[idx],lraw,lprox]));
      case idx of
      1: trec.Emettitore := lraw;
      2: trec.DataEmissione := AnyStringToDate(lraw,'DDMMYYYY');
      3: trec.DataScadenza := AnyStringToDate(lraw,'DDMMYYYY');
      4: trec.Cognome := lraw;
      5: trec.Nome := lraw;
      6: trec.DataNascita := AnyStringToDate(lraw,'DDMMYYYY');
      7: trec.Sesso := lraw;
      8: trec.Statura := lraw;
      9: trec.CodiceFiscale := lraw;
     10: trec.Cittadinanza := lraw;
     11: trec.ComuneNascita := lraw;
     12: trec.StatoEsteroNascita := lraw;
     13: trec.EstremiAttoNascita := lraw;
     14: trec.ComuneResidenza := lraw;
     15: trec.IndirizzoResidenza := lraw;
     16: trec.Annotazione := lraw;
      end;
      z := z + 2 + lprox;
      inc(idx);
  end;
{
  for z:=0 to dxTile.Items.Count-1 do
      if dxTile.Items[z].DetailOptions.DetailControl<>nil then
      begin
         if TFBaseGrid(dxTile.Items[z].DetailOptions.DetailControl).Visible then
         begin
           TFBaseGrid(dxTile.Items[z].DetailOptions.DetailControl).TesseraLetta := trec;
           PostMessage(TFBaseGrid(dxTile.Items[z].DetailOptions.DetailControl).Handle,SY_READTESSERA,0,0);
           break;
         end;
      end;
}
  if (dxTile.ActiveDetail=nil) then
  begin
     res := FDMCommon.CercaAppuntamento(trec.CodiceFiscale,trec);

     // -- se prenotato ma non per oggi mando in archivio
     if (res=20) and (CompareDate(trec.DataEsame,Date())<>EqualsValue) then
         res := 10;

     case res of
     -1,
     10: begin
            TFPrenotaNew.ActivateDetail;
         end;
     20,
     100,
     120: begin
            TFAccDiagn.ActivateDetail;
          end;
//     130,
//     140,
     170: begin
            TFDaStampare.ActivateDetail;
          end;
     130,
     140,
     190: begin
            TFArchivioReferti.ActivateDetail;
          end;
     end;
  end;

  if (dxTile.ActiveDetail<>nil) and (dxTile.ActiveDetail.ActiveControl<>nil) then
  begin
     TFBaseGrid(dxTile.ActiveDetail.ActiveControl).TesseraLetta := trec;
     PostMessage(TFBaseGrid(dxTile.ActiveDetail.ActiveControl).Handle,SY_READTESSERA,0,0);
  end;

end;

function TfrmMainMenu.ErrorToString(ErrorCode: DWORD): string;
begin
  if ErrorCode >= $80000000 then result := PCSCErrorToString(ErrorCode)
  else result := WindowsErrorToString(ErrorCode);
end;

function TfrmMainMenu.SendCommand(PCSCReader: TPCSCReader; const cmd: string): DWORD;
var
  DataOut: TBytes;
begin
  Result := SendCommand(PCSCReader, cmd, DataOut);
end;

function TfrmMainMenu.SendCommand(PCSCReader: TPCSCReader; const cmd: string; var DataOut: TBytes): DWORD;
var
  DataIn: TBytes;
  SW12: Word;
  daleggere: string;

label
  Ritenta;

begin
  daleggere := cmd;

Ritenta:
  DataIn := HexStringToBuffer(daleggere);

  if PCSCReader.Protocol = prRaw then begin
    AddLogMemo('Sending Escape command to reader: ' + BufferToHexString(DataIn));
    Result := PCSCReader.IOCTL(IOCTL_CCID_ESCAPE, DataIn, DataOut);
    if Result = SCARD_S_SUCCESS then begin
      AddLogMemo('SCardControl succeeded.');
      if length(DataOut) > 0 then AddLogMemo('Response data: ' + BufferToHexString(DataOut));
    end
    else AddLogMemo(Format('SCardControl failed with error code %s (%s)', [IntToHex(Result, 8), ErrorToString(Result)]));
  end
  else begin
    AddLogMemo('Sending APDU to card: ' + BufferToHexString(DataIn));
    Result := PCSCReader.TransmitSW(DataIn, DataOut, SW12);
    if Result = SCARD_S_SUCCESS then begin
      AddLogMemo('SCardTransmit succeeded.');
      AddLogMemo('Card response status word: ' + IntToHex(SW12, 4) + ' (' + CardErrorToString(SW12) + ')');
      if length(DataOut) > 0 then AddLogMemo('Card response data: ' + BufferToHexString(DataOut));
    // -- patch per lunghezza differente nelle smartcard per il comando di lettura bin
      if (IntToHex(SW12, 4)='6700') and (Length(daleggere)>2) then
      begin
         daleggere := Copy(daleggere,1,Length(daleggere)-2);
         goto Ritenta;
      end;
    end
    else AddLogMemo(Format('SCardTransmit failed with error code %s (%s)', [IntToHex(Result, 8), ErrorToString(Result)]));
  end;

end;

end.
