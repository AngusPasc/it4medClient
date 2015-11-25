unit FirmaDigitale2;

interface

uses Classes,IInterface,FirmaDigitale,AstaClientDataset;

type

  TDll = record
     DllPath: string;
     PrivateKey: string;
     Controllo: boolean;
  end;

  TFirmaKrill = class(TFirmaDigitale)
  private
    DllPath: array of TDll;
    DLLLoaded: Boolean; { is DLL (dynamically) loaded already? }
    DLLHandle: THandle;
    ErrorMode: Integer;
    Env: Pointer;
    procedure LoadDLL;
    procedure SettaSlot;
  public
    constructor Create( tf: Integer; DllFirma: TAstaClientDataSet);
    destructor Destroy; override;
    function Firma(PassPhrase: string;
                    Nominativo: string;
                    MyStream: TMemoryStream;
                    OutStream: TMemoryStream;
                    var ErrString: string): TpResultFirma; override;
    procedure ApriSessione(PassPhrase: string); override;
    procedure ChiudiSessione; override;
    function LeggiOwner: string; override;
    function DecodeStream(MyStream: TMemoryStream; OutStream: TMemoryStream): integer; override;
  end;


//  function FirmaDecodErrore( const funzione: string; cod: integer ): string;


var

  KpkiInit: function: Pointer cdecl stdcall;

  KpkiSetPrivateKey: function(nFile: PChar; Format: char; Env: Pointer): Integer cdecl stdcall;

  KpkiSetUserCertificate: function(Loc: Char; Id: PChar; Env: Pointer): Integer cdecl stdcall;
  KpkiSignFile: function(FileToSign: PChar; FileSigned: PChar; password: PChar; Env: Pointer): Integer cdecl stdcall;
  KpkiVerifyFile: function(FileToVerify: PChar;
                        FileVerified: PChar;
                        Env: Pointer): Integer cdecl stdcall;
  KpkiFree: function(x: Pointer): Integer cdecl stdcall;
  KpkiSetCACertificate: function(Loc: Char; Id: PChar; Env: Pointer): Integer cdecl stdcall;
  KpkiSignData: function(DataToSign: PChar;
                      var DataSigned: PChar;
                      DataLength: Integer;
                      var DataSignedLength: Integer;
                      password: PChar;
                      Env: Pointer): Integer cdecl stdcall;

  KpkiVerifyData: function(DataToVerify: PChar;
                        var DataVerified: PChar;
                        length: Integer;
                        var Verifiedlength: Integer;
                        Env: Pointer): Integer cdecl stdcall;

//  KpkiGetTokenPubKey: function(PinCode: PChar; var pubKey: PChar; pubKeyLen: integer; Env: Pointer): Integer cdecl stdcall;

  KpkiClose: function(Env: Pointer): Integer cdecl stdcall;

  KpkiGetDestCertSerial: function(Env: Pointer): Integer cdecl stdcall;
  KpkiSetSCEngine: function(Env: Pointer; DllName: PChar; SlotID: SmallInt): Integer cdecl stdcall;
  KpkiSetSCModule: function(ModuleName: PChar; Env: Pointer): Integer cdecl stdcall;
  KpkiSetSCSlot: function(SlotId: Integer; Env: Pointer): Integer cdecl stdcall;
  KpkiSetKeepPKCS11Login: function(SlotId: Integer; Env: Pointer): Integer cdecl stdcall;
  KpkiGetDestCertDN: function(Env: Pointer): PChar cdecl stdcall;
  KpkiGetVerifyCertDescription: function(Env: Pointer): PChar cdecl stdcall;
  KpkiGetDestCertIssuer: function(Env: Pointer): PChar cdecl stdcall;
  KpkiGetVerifyCertDN: function(Env: Pointer): PChar cdecl stdcall;
  KpkiGetVerifyCertValidity: function(Env: Pointer): TDateTime cdecl stdcall;
  KpkiGetVerifyCertNotBefore: function(Env: Pointer): TDateTime cdecl stdcall;

  kpkiErrorMessagesArray: array of string;

var
  Tipo: integer;

const
  maxNrErrori = 197;

implementation
uses Forms,Controls,sysutils,Windows,DMCommon,Msgdlgs;


constructor TFirmaKrill.Create( tf: Integer; DllFirma: TAstaClientDataSet);
//var
//  tmp: WideString;
begin
  Env := nil;
  DLLLoaded := False;
  FTipoFirma := tf;
  try
     DllFirma.Open;
     SetLength(DllPath,DllFirma.RecordCount);
     while not DllFirma.eof do
     begin
        DllPath[DllFirma.FieldbyName('TIPO_CARTA').AsInteger].DllPath := DllFirma.FieldbyName('DLL_NAME').AsString;
        if not DllFirma.FieldbyName('PRIVATE_KEY').IsNull then
        begin
           DllPath[DllFirma.FieldbyName('TIPO_CARTA').AsInteger].PrivateKey := DllFirma.FieldbyName('PRIVATE_KEY').AsString;
           DllPath[DllFirma.FieldbyName('TIPO_CARTA').AsInteger].Controllo := true;
        end
        else begin
           DllPath[DllFirma.FieldbyName('TIPO_CARTA').AsInteger].PrivateKey := gblcodfisc;
           DllPath[DllFirma.FieldbyName('TIPO_CARTA').AsInteger].Controllo := false;
        end;
        DllFirma.Next;
     end;
     FSessioneAperta := False;
     FAttivata := True;
  except
     on E:Exception do begin
        FAttivata := False;
        MsgDlg(E.Message, '', ktError, [kbOk], dfFirst);
     end;
  end;
end;

destructor TFirmaKrill.Destroy;
begin
  if DLLLoaded then
     FreeLibrary(DLLHandle);
  inherited;
end;

const
  KPKI_P12 = #1;
  KPKIONFILE = #1;
  KPKIONSC = #4;
  KPKI_PINPROTECTED = #4;
  KPKI_P12_ON_SC = #6;
{
  DllPath1 = '.\IpmPki32_1202.dll';  // -- driver del lettore smartcard: versione 1202
  DllPath2 = '.\IpmPki32.dll';  // -- driver del lettore smartcard: versione 1203
  DllPath3 = '.\cvP11_M4.dll';  // -- driver del lettore smartcard: versione 16xx      => Sign_Keypair0
  DllPath4 = '.\incryptoki2.dll';  // -- driver del lettore smartcard: versione 1204   => DS0
  DllPath5 = '.\SI_PKCS11.dll';  // -- driver del lettore smartcard: versione 14/15 Siemens  => DS0
}


procedure TFirmaKrill.LoadDLL;
begin
  if DLLLoaded then Exit;
  ErrorMode := SetErrorMode($8000{SEM_NoOpenFileErrorBox});
  DLLHandle := LoadLibrary('KPKI.DLL');
  if DLLHandle >= 32 then
  begin
    DLLLoaded := True;
    @KpkiInit := GetProcAddress(DLLHandle,'KpkiInit');
  {$IFDEF WIN32}
    Assert(@KpkiInit <> nil);
  {$ENDIF}
    @KpkiSetPrivateKey := GetProcAddress(DLLHandle,'KpkiSetPrivateKey');
  {$IFDEF WIN32}
    Assert(@KpkiSetPrivateKey <> nil);
  {$ENDIF}

    @KpkiSetUserCertificate := GetProcAddress(DLLHandle,'KpkiSetUserCertificate');
  {$IFDEF WIN32}
    Assert(@KpkiSetUserCertificate <> nil);
  {$ENDIF}
    @KpkiSignFile := GetProcAddress(DLLHandle,'KpkiSignFile');
  {$IFDEF WIN32}
    Assert(@KpkiSignFile <> nil);
  {$ENDIF}
    @KpkiVerifyFile := GetProcAddress(DLLHandle,'KpkiVerifyFile');
  {$IFDEF WIN32}
    Assert(@KpkiVerifyFile <> nil);
  {$ENDIF}
    @KpkiFree := GetProcAddress(DLLHandle,'KpkiFree');
  {$IFDEF WIN32}
    Assert(@KpkiFree <> nil);
  {$ENDIF}
    @KpkiSetCACertificate := GetProcAddress(DLLHandle,'KpkiSetCACertificate');
  {$IFDEF WIN32}
    Assert(@KpkiSetCACertificate <> nil);
  {$ENDIF}
    @KpkiSignData := GetProcAddress(DLLHandle,'KpkiSignData');
  {$IFDEF WIN32}
    Assert(@KpkiSignData <> nil);
  {$ENDIF}
    @KpkiVerifyData := GetProcAddress(DLLHandle,'KpkiVerifyData');
  {$IFDEF WIN32}
    Assert(@KpkiVerifyData <> nil);
  {$ENDIF}
    @KpkiClose := GetProcAddress(DLLHandle,'KpkiClose');
  {$IFDEF WIN32}
    Assert(@KpkiClose <> nil);
  {$ENDIF}
(*
    @KpkiGetTokenPubKey := GetProcAddress(DLLHandle,'KpkiGetTokenPubKey');
  {$IFDEF WIN32}
    Assert(@KpkiGetTokenPubKey <> nil);
  {$ENDIF}
*)
    @KpkiGetDestCertSerial := GetProcAddress(DLLHandle,'KpkiGetDestCertSerial');
  {$IFDEF WIN32}
    Assert(@KpkiGetDestCertSerial <> nil);
  {$ENDIF}

    @KpkiGetDestCertDN := GetProcAddress(DLLHandle,'KpkiGetDestCertDN');
  {$IFDEF WIN32}
    Assert(@KpkiGetDestCertDN <> nil);
  {$ENDIF}

    @KpkiGetVerifyCertDescription := GetProcAddress(DLLHandle,'KpkiGetVerifyCertDescription');
  {$IFDEF WIN32}
    Assert(@KpkiGetVerifyCertDescription <> nil);
  {$ENDIF}

    @KpkiGetDestCertIssuer := GetProcAddress(DLLHandle,'KpkiGetDestCertIssuer');
  {$IFDEF WIN32}
    Assert(@KpkiGetDestCertIssuer <> nil);
  {$ENDIF}

    @KpkiGetVerifyCertDN := GetProcAddress(DLLHandle,'KpkiGetVerifyCertDN');
  {$IFDEF WIN32}
    Assert(@KpkiGetVerifyCertDN <> nil);
  {$ENDIF}

    @KpkiGetVerifyCertValidity := GetProcAddress(DLLHandle,'KpkiGetVerifyCertValidity');
  {$IFDEF WIN32}
    Assert(@KpkiGetVerifyCertValidity <> nil);
  {$ENDIF}

    @KpkiGetVerifyCertNotBefore := GetProcAddress(DLLHandle,'KpkiGetVerifyCertNotBefore');
  {$IFDEF WIN32}
    Assert(@KpkiGetVerifyCertNotBefore <> nil);
  {$ENDIF}

    @KpkiSetSCEngine := GetProcAddress(DLLHandle,'KpkiSetSCEngine');
  {$IFDEF WIN32}
    Assert(@KpkiSetSCEngine <> nil);
  {$ENDIF}
    @KpkiSetSCModule := GetProcAddress(DLLHandle,'KpkiSetSCModule');
  {$IFDEF WIN32}
    Assert(@KpkiSetSCModule <> nil);
  {$ENDIF}
    @KpkiSetSCSlot := GetProcAddress(DLLHandle,'KpkiSetSCSlot');
  {$IFDEF WIN32}
    Assert(@KpkiSetSCSlot <> nil);
  {$ENDIF}
  end
  else
  begin
    DLLLoaded := False;
    { Error: Kpki.DLL could not be loaded !! }
  end;
  SetErrorMode(ErrorMode)
end {LoadDLL};


function FirmaDecodErrore( const funzione: string; cod: integer ): string;
begin
  if (-cod>=0) and (-cod<maxNrErrori) then
     result := kpkiErrorMessagesArray[-cod]
  else
     result := format('Errore durante la firma (funzione %s - codice %d)',[funzione,cod]);
end;


function TFirmaKrill.DecodeStream(MyStream: TMemoryStream; OutStream: TMemoryStream): integer;
var
  DataSigned: PChar;
  DataSignedLength: Integer;
begin

  Screen.Cursor := crHourGlass;
  try
  if not Assigned(Env) then
  begin
     ApriSessione('');
  end;
{
  if SettaSlot(ErrString)<>0 then
        exit;
}

  MyStream.Position := 0;
  result := KpkiVerifyData(MyStream.Memory,
                        DataSigned,
                        MyStream.Size,
                        DataSignedLength,
                        Env);

  OutStream.Position := 0;
  OutStream.WriteBuffer(DataSigned[0],DataSignedLength);
  OutStream.Position := 0;

  try
  KpkiFree(DataSigned);
  except
//     KpkiClose(Env);
  end;

  if not ((result=0) or (result=-77)) then
  begin
     raise Exception.Create(FirmaDecodErrore('KpkiVerifyData',result));
  end
  else
     result := 0;

  Screen.Cursor := crDefault;

  except
  on E:Exception do
     begin
       Screen.Cursor := crDefault;
       result := -1;
       MsgDlg(E.Message, '', ktError, [kbOk], dfFirst);
     end;
  end;

end;


procedure TFirmaKrill.SettaSlot;
var
  result: Integer;
begin

  try
{
  result := KpkiGetDestCertSerial ( Env );
  if result=0 then
  begin
     raise Exception.Create( := 'Nessun certificato nella smartcard';
     raise Exception.Create(raise Exception.Create();
  end;
}
  if Length(DllPath)=0 then
  begin
     result := -196;
     raise Exception.Create( FirmaDecodErrore('DllPath',result) );
  end;

  result := KpkiSetSCEngine(Env,PChar(DllPath[Tipo].DllPath),0);
  if result<>0 then
  begin
     raise Exception.Create( FirmaDecodErrore('KpkiSetSCEngine',result) );
  end;

  result := KpkiSetSCModule (PChar(DllPath[Tipo].DllPath), Env );
  if result<>0 then
  begin
     raise Exception.Create( FirmaDecodErrore('KpkiSetSCModule',result) );
  end;

  result := KpkiSetSCSlot( 1, Env );
  if result<>0 then
  begin
     raise Exception.Create( FirmaDecodErrore('KpkiSetSCSlot',result) );
  end;

	result := KpkiSetUserCertificate(KpkiONSC, PChar(DllPath[Tipo].PrivateKey) {PChar(UserCertificate)}, Env);
  if result<>0 then
  begin
     raise Exception.Create( FirmaDecodErrore('KpkiSetUserCertificate',result) );
  end;

	result := KpkiSetCACertificate (KpkiONSC, PChar(DllPath[Tipo].PrivateKey) {PChar(CACertificate)}, Env);
  if result<>0 then
  begin
     raise Exception.Create( FirmaDecodErrore('KpkiSetCACertificate',result) );
  end;

  result := KpkiSetPrivateKey (PChar(DllPath[Tipo].PrivateKey) {PChar(PrivateKey)}, Kpki_P12_ON_SC, Env);
  if result<>0 then
  begin
     raise Exception.Create( FirmaDecodErrore('KpkiSetPrivateKey',result) );
  end;

  except
    on E:Exception do
    begin
      MsgDlg(E.Message, '', ktError, [kbOk], dfFirst);
    end;
  end;

end;

procedure TFirmaKrill.ApriSessione(PassPhrase: string);
begin
    try
    if not FSessioneAperta and FAttivata then
    begin
        {Perform logon}
        if not DLLLoaded then
        begin
            LoadDLL;
            if not DLLLoaded then
               raise Exception.Create('KPKI.DLL non trovata');
        end;
        Env := KpkiInit();
        if not Assigned(Env) then
           raise Exception.Create('Errore in KpkiInit');
        FSessioneAperta := True;
    end
    else begin
        raise Exception.Create(RS_SmartcardNonDisp);
    end;
    except
      on E:Exception do
      begin
        MsgDlg(E.Message, '', ktError, [kbOk], dfFirst);
        FSessioneAperta := False;
      end;
    end;
end;

procedure TFirmaKrill.ChiudiSessione;
begin
  if Env<>nil then
  begin
  // -- Access Violation in chiusura !
{
     try
     KpkiClose(Env);
     except
     end;
}
     Env := nil;
     {res :=} FreeLibrary(DLLHandle);
     DLLLoaded := False;
  end;
    FSessioneAperta := False;
end;



function TFirmaKrill.Firma(PassPhrase: string;
                           Nominativo: string;
                           MyStream: TMemoryStream;
                           OutStream: TMemoryStream;
                           var ErrString: string): TpResultFirma;
var
  DataSignedLength: Integer;
  DataSigned: PChar;
  DataVerifiedLength: Integer;
  DataVerified: PChar;
  temp: string;
//  DataInizioValidita,DataFineValidita: TDateTime;
  res: Integer;
begin

  Screen.Cursor := crHourGlass;
//  result := -9999;

  if not FSessioneAperta then
     ApriSessione('');

  SettaSlot;

  try

  // -- inizio firma su stream...
  res := KpkiSignData(MyStream.Memory,
                      DataSigned,
                      MyStream.Size,
                      DataSignedLength,
                      PChar(PassPhrase),
                      Env);

  if res<>0 then
  begin
     ErrString := FirmaDecodErrore('KpkiSignData',res);
     ChiudiSessione;
     result := tprErrore;
//     raise Exception.Create(ErrString);
//     exit;
  end
  else begin
    result := tprOk;
    OutStream.WriteBuffer(DataSigned[0],DataSignedLength);
    OutStream.Position := 0;

//  try
  KpkiFree(DataSigned);
//  except
//  end;

{    res :=} KpkiVerifyData(OutStream.Memory,
                          DataVerified,
                          OutStream.Size,
                          DataVerifiedLength,
                          Env);

    if res<>0 then
    begin
       result := tprErrore;
       ErrString := FirmaDecodErrore('KpkiVerifyData',res);
//       raise Exception.Create(ErrString);
//       exit;
    end
    else begin
        result := tprOk;
        //  try
          KpkiFree(DataVerified);
        //  except
        //  end;

        // -- verifico l'utente
        if DllPath[Tipo].Controllo then
        begin
          temp := KpkiGetVerifyCertDN(Env);
          if (Nominativo<>'') and (Pos(Nominativo,temp)=0) then
          begin
             result := tprErrore;
             res := -194;
             ErrString := format(FirmaDecodErrore('KpkiGetVerifyCertDN',res),[temp]);
          end
          else begin
  (*
            // -- verifico la validità del certificato
            DataInizioValidita := KpkiGetVerifyCertNotBefore(Env);
            DataFineValidita := KpkiGetVerifyCertValidity(Env);
            if {(Date()<DataInizioValidita) or} (Date()>DataFineValidita) then
            begin
             result := -195;
             ErrString := format( FirmaDecodErrore('KpkiGetVerifyCertValidity',result), [DateTimeToStr(DataInizioValidita),DateTimeToStr(DataFineValidita)]);
            end;
  *)
          end;
        end;
     end;
  end;

{
  if result<>0 then
  begin
     ErrString := FirmaDecodErrore('KpkiClose',result);
     raise Exception.Create(ErrString);
  end;
}

{
  if result=-47 then
  begin
     ChiudiSessione;
     FDMCommon.PassPhrase := '';
  end;
}
  finally
     // ChiudiSessione({Env});
  end;
  Screen.Cursor := crDefault;

end;

function TFirmaKrill.LeggiOwner: string;
var
  DataSignedLength: Integer;
  DataSigned: PChar;
  DataVerifiedLength: Integer;
  DataVerified: PChar;
//  temp: string;
//  DataInizioValidita,DataFineValidita: TDateTime;
  MyStream: TMemoryStream;
  OutStream: TMemoryStream;
  ErrString: string;
  res: integer;
  xPassPhrase: string;
begin

  if not Assigned(Env) then
  begin
     ApriSessione('');
  end;

  SettaSlot;

  MyStream := TMemoryStream.Create;;
  OutStream:= TMemoryStream.Create;

  try

  // -- inizio firma su stream...
  res := KpkiSignData(MyStream.Memory,
                      DataSigned,
                      MyStream.Size,
                      DataSignedLength,
                      PChar(xPassPhrase),
                      Env);

  if res<>0 then
  begin
     ErrString := FirmaDecodErrore('KpkiSignData',res);
     ChiudiSessione;
     raise Exception.Create(ErrString);
  end
  else begin
    OutStream.WriteBuffer(DataSigned[0],DataSignedLength);
    OutStream.Position := 0;

//  try
  KpkiFree(DataSigned);
//  except
//  end;

{    res :=} KpkiVerifyData(OutStream.Memory,
                          DataVerified,
                          OutStream.Size,
                          DataVerifiedLength,
                          Env);

    if res<>0 then
    begin
       ErrString := FirmaDecodErrore('KpkiVerifyData',res);
       raise Exception.Create(ErrString);
    end
    else begin

        //  try
          KpkiFree(DataVerified);
        //  except
        //  end;

        // -- verifico l'utente
        result := KpkiGetVerifyCertDN(Env);

     end;
  end;

  finally
    MyStream.Free;
    OutStream.Free;
  end;

end;

initialization
  SetLength(kpkiErrorMessagesArray,maxNrErrori);
  kpkiErrorMessagesArray[0] := 'Operazione riuscita correttamente';
  kpkiErrorMessagesArray[1] := 'KPKI non è stato inizializzato';
  kpkiErrorMessagesArray[2] := 'Errore nell''allocazione della memoria';
  kpkiErrorMessagesArray[3] := 'Il meccanismo non è supportato dalla smartcard';
  kpkiErrorMessagesArray[4] := 'Non è stato specificato l''algoritmo asimmetrico';
  kpkiErrorMessagesArray[5] := 'Non è stato specificato l''algoritmo di firma';
  kpkiErrorMessagesArray[6] := 'Non è stato specificato l''algoritmo simmetrico';
  kpkiErrorMessagesArray[7] := 'Non è supportata questa lunghezza per la chiave asimmetrica';
  kpkiErrorMessagesArray[8] := 'Non è supportata questa lunghezza per la chiave simmetrica';
  kpkiErrorMessagesArray[9] := 'Non è stata specificata la versione del protocollo ldap';
  kpkiErrorMessagesArray[10] := 'Non è stato specificato il formato per la richiesta del certificato';
  kpkiErrorMessagesArray[11] := 'Non è stato specificato il formato della chiave privata';
  kpkiErrorMessagesArray[12] := 'Non è stato specificato il nome o la locazione del certificato';
  kpkiErrorMessagesArray[13] := 'La lunghezza della chiave non è supportata dalla smartcard';
  kpkiErrorMessagesArray[14] := 'E'' fallito il caricamento del certificato crittato';
  kpkiErrorMessagesArray[15] := 'La chiave privata non può essere estratta dalla smartcard';
  kpkiErrorMessagesArray[16] := 'Non è stato specificato il motore di crittazione';
  kpkiErrorMessagesArray[17] := 'Non è stato specificato se si vuole usare LDAP';
  kpkiErrorMessagesArray[18] := 'Non è stato specificato l''indirizzo del server X500';
  kpkiErrorMessagesArray[19] := 'Non è stato specificato quale certificato cercare sul server X500';
  kpkiErrorMessagesArray[20] := 'Errore nella decrittazione della chiave pubblica RSA';
  kpkiErrorMessagesArray[21] := 'I dati crittati non sono in formato PKCS#7';
  kpkiErrorMessagesArray[22] := 'I dati in formato PKCS#7 non sono stati imbustati';
  kpkiErrorMessagesArray[23] := 'Errore nella decrittazione della chiave simmetrica';
  kpkiErrorMessagesArray[24] := 'Errore nella lettura del file di input';
  kpkiErrorMessagesArray[25] := 'Il file di input non è stato specificato oppure è vuoto';
  kpkiErrorMessagesArray[26] := 'Non e stata specificata la password';
  kpkiErrorMessagesArray[27] := 'Non è stato specificato il nome della chiave privata';
  kpkiErrorMessagesArray[28] := 'Non è stato specificato il file di output';
  kpkiErrorMessagesArray[29] := 'Errore nella creazione del file di output';
  kpkiErrorMessagesArray[30] := 'Non ci sono dati in ingresso oppure la lunghezza dei dati in ingresso è nulla';
  kpkiErrorMessagesArray[31] := 'Non è stata impostata la chiave privata';
  kpkiErrorMessagesArray[32] := 'Errore nella lettura del file della chiave privata';
  kpkiErrorMessagesArray[33] := 'Il file di input contenente la chiave privata non è in formato PKCS#12';
  kpkiErrorMessagesArray[34] := 'Password errata';
  kpkiErrorMessagesArray[35] := 'La chiave PKCS#8 selezionata non supporta l''algoritmo RSA';
  kpkiErrorMessagesArray[36] := 'E'' fallita la generazione della chiave';
  kpkiErrorMessagesArray[37] := 'Errore nella creazione di un oggetto PKCS#12';
  kpkiErrorMessagesArray[38] := 'Errore nella scrittura su un file di output';
  kpkiErrorMessagesArray[39] := 'Errore nella creazione di un oggetto PKCS#8';
  kpkiErrorMessagesArray[40] := 'Errore nel caricamento della libreria per la smartcard';
  kpkiErrorMessagesArray[41] := 'Errore nell''accesso ad una funzione della smartcard';
  kpkiErrorMessagesArray[42] := 'E'' fallito l''accesso alla lista delle funzioni della smartcard';
  kpkiErrorMessagesArray[43] := 'E'' fallita l''inizializzazione della smartcard';
  kpkiErrorMessagesArray[44] := 'E'' fallita l''apertura di sessione della smartcard';
  kpkiErrorMessagesArray[45] := 'E'' fallita la chiusura di sessione della smartcard';
  kpkiErrorMessagesArray[46] := 'E'' fallita la chiusura della smartcard';
  kpkiErrorMessagesArray[47] := 'E'' fallito il login sulla smartcard. Al terzo fallimento consecutivo la SmartCard si blocca automaticamente';
  kpkiErrorMessagesArray[48] := 'E'' fallito il logout sulla smartcard';
  kpkiErrorMessagesArray[49] := 'E'' fallita l''inizializzazione del digest sulla smartcard';
  kpkiErrorMessagesArray[50] := 'E'' fallito il digest sulla smartcard';
  kpkiErrorMessagesArray[51] := 'E'' fallita l''inizializzazione della firma sulla smartcard';
  kpkiErrorMessagesArray[52] := 'E'' fallita la firma sulla smartcard';
  kpkiErrorMessagesArray[53] := 'E'' fallita la generazione della coppia di chiavi sulla smartcard';
  kpkiErrorMessagesArray[54] := 'E'' fallita l''inizializzazione della ricerca di oggetti sulla smartcard';
  kpkiErrorMessagesArray[55] := 'E'' fallita la ricerca di oggetti sulla smartcard';
  kpkiErrorMessagesArray[56] := 'Non è stata trovata la chiave privata sulla smartcard';
  kpkiErrorMessagesArray[57] := 'Errore irreversibile';
  kpkiErrorMessagesArray[58] := 'Non è possibile ottenere il valore dell''attributo';
  kpkiErrorMessagesArray[59] := 'La chiave privata è troppo lunga';
  kpkiErrorMessagesArray[60] := 'E'' fallita l''inizializzazione della decrittazione sulla smartcard';
  kpkiErrorMessagesArray[61] := 'E'' fallita la decrittazione sulla smartcard';
  kpkiErrorMessagesArray[62] := 'Non è possibile ottenere la lista dei meccanismi';
  kpkiErrorMessagesArray[63] := 'Non è supportato alcun meccanismo';
  kpkiErrorMessagesArray[64] := 'Non è possibile ottenere informazioni sui meccanismi';
  kpkiErrorMessagesArray[65] := 'Non è stato trovato il certificato nella smartcard'#13'(private key errata)';
  kpkiErrorMessagesArray[66] := 'E'' fallita la creazione dell''oggetto sulla smartcard';
  kpkiErrorMessagesArray[67] := 'Non è possibile convertire il certificato dell''utente nel formato X509';
  kpkiErrorMessagesArray[68] := 'Non è possibile convertire il certificato del destinatario nel formato X509';
  kpkiErrorMessagesArray[69] := 'Non è possibile convertire il certificato della CA nel formato X509';
  kpkiErrorMessagesArray[70] := 'I dati firmati e crittati non sono in formato X509';
  kpkiErrorMessagesArray[71] := 'I dati in formato PKCS#7 non sono firmati e imbustati';
  kpkiErrorMessagesArray[72] := 'Non è stato specificato il certificato dell''utente';
  kpkiErrorMessagesArray[73] := 'Non è stata verificata la firma';
  kpkiErrorMessagesArray[74] := 'Non è possibile convertire il certificato del firmatario nel formato X509';
  kpkiErrorMessagesArray[75] := 'Non è possibile convertire il certificato della CA del firmatario nel formato X509';
  kpkiErrorMessagesArray[76] := 'Non è stato verificato il certificato del firmatario';
  kpkiErrorMessagesArray[77] := 'Non è disponibile il certificato della CA del firmatario';
  kpkiErrorMessagesArray[78] := 'Non è possibile estrarre il Distinguished Name della CA del firmatario';
  kpkiErrorMessagesArray[79] := 'Non è possibile estrarre il Common Name della CA del firmatario';
  kpkiErrorMessagesArray[80] := 'Errore nella scrittura sul file di output';
  kpkiErrorMessagesArray[81] := 'Non è possibile creare il pacchetto di informazioni sul firmatario';
  kpkiErrorMessagesArray[82] := 'Non è possibile aggiungere le informazioni del firmatario allo standard PKCS#7';
  kpkiErrorMessagesArray[83] := 'I dati firmati non sono in formato PKCS#7';
  kpkiErrorMessagesArray[84] := 'I dati in formato PKCS#7 non sono firmati';
  kpkiErrorMessagesArray[85] := 'Non è possibile estrarre il certificato dell''utente dallo standard PKCS#7';
  kpkiErrorMessagesArray[86] := 'Non è stato specificato l''algortimo di hashing';
  kpkiErrorMessagesArray[87] := 'Errore nel caricamento del certificato dell''utente';
  kpkiErrorMessagesArray[88] := 'Errore nel caricamento del certificato della CA';
  kpkiErrorMessagesArray[89] := 'Non è stato specificato il certificato dell''utente';
  kpkiErrorMessagesArray[90] := 'Non è stato specificato il certificato della CA';
  kpkiErrorMessagesArray[91] := 'Non è stato specificato il certificato del destinatario';
  kpkiErrorMessagesArray[92] := 'Il motore software non consente la gestione di chiavi su smartcard';
  kpkiErrorMessagesArray[93] := 'Non è stata specificata la chiave privata';
  kpkiErrorMessagesArray[94] := 'Il motore smartcard non consente la gestione di chiavi software';
  kpkiErrorMessagesArray[95] := 'Non è stata specificata la modalità stringa';
  kpkiErrorMessagesArray[96] := 'Non è stato specificato il certificato del destinatario';
  kpkiErrorMessagesArray[97] := 'Il certificato del destinatario è vuoto';
  kpkiErrorMessagesArray[98] := 'Non è possibile estrarre le informazioni dal certificato del destinatario';
  kpkiErrorMessagesArray[99] := 'Non è stato definito il server X500';
  kpkiErrorMessagesArray[100] := 'E'' fallita l''apertura del protocollo LDAP';
  kpkiErrorMessagesArray[101] := 'E'' fallita l''inizializzazione della ricerca in LDAP';
  kpkiErrorMessagesArray[102] := 'E'' fallita la ricerca in LDAP';
  kpkiErrorMessagesArray[103] := 'Il server non è quello di una Certification Authority';
  kpkiErrorMessagesArray[104] := 'Il certificato è vuoto';
  kpkiErrorMessagesArray[105] := 'Non è possibile scrivere sul flusso di dati in uscita';
  kpkiErrorMessagesArray[106] := 'Il certificato non è del tipo X509';
  kpkiErrorMessagesArray[107] := 'Non è possibile convertire la chiave selezionata';
  kpkiErrorMessagesArray[108] := 'Non è possibile aggiungere la chiave pubblica alla richiesta di certificato';
  kpkiErrorMessagesArray[109] := 'Non è possibile firmare la richiesta di certificato';
  kpkiErrorMessagesArray[110] := 'Non è possibile convertire la richiesta di certificato in formato DER';
  kpkiErrorMessagesArray[111] := 'Non è possibile creare l''algoritmo';
  kpkiErrorMessagesArray[112] := 'Non è possibile convertire la chiave pubblica in formato ASN1';
  kpkiErrorMessagesArray[113] := 'Non è possibile scrivere la richiesta di certificato su file';
  kpkiErrorMessagesArray[114] := 'Non è possibile specificare la versione nella richiesta di certificato';
  kpkiErrorMessagesArray[115] := 'Non è possibile specificare la nazione nella richiesta di certificato';
  kpkiErrorMessagesArray[116] := 'Non è possibile specificare la provincia nella richiesta di certificato';
  kpkiErrorMessagesArray[117] := 'Non è possibile specificare la città nella richiesta di certificato';
  kpkiErrorMessagesArray[118] := 'Non è possibile specificare l''organizzazione nella richiesta di certificato';
  kpkiErrorMessagesArray[119] := 'Non è possibile specificare il dipartimento nella richiesta di certificato';
  kpkiErrorMessagesArray[120] := 'Non è possibile specificare il Common Name nella richiesta di certificato';
  kpkiErrorMessagesArray[121] := 'Non è possibile specificare l''indirizzo email nella richiesta di certificato';
  kpkiErrorMessagesArray[122] := 'Non è possibile convertire i dati dal formato DER al formato PEM';
  kpkiErrorMessagesArray[123] := 'Non è stato riconosciuto il formato  della CRL';
  kpkiErrorMessagesArray[124] := 'Non è possibile trovare il Serial Number della CRL';
  kpkiErrorMessagesArray[125] := 'Non è possibile ottenere il CRL Count';
  kpkiErrorMessagesArray[126] := 'I dati della CRL sono vuoti';
  kpkiErrorMessagesArray[127] := 'Il certificato è stato revocato';
  kpkiErrorMessagesArray[128] := 'La CRL non è stata verificata';
  kpkiErrorMessagesArray[129] := 'La funzione non è supportata';
  kpkiErrorMessagesArray[130] := 'Non è possibile specificare la Description nella richiesta di certificato';
  kpkiErrorMessagesArray[131] := 'Impossibile scrivere sul buffer di output';
  kpkiErrorMessagesArray[132] := 'Non è possibile estrarre il certificato della CA dallo standard PKCS#7';
  kpkiErrorMessagesArray[133] := 'Numero di firma non valido';
  kpkiErrorMessagesArray[134] := 'I dati non sono in formato PKCS7';
  kpkiErrorMessagesArray[135] := 'Dimensione della cache non ammessa';
  kpkiErrorMessagesArray[136] := 'Impossibile inizializzare la cache';
  kpkiErrorMessagesArray[137] := 'Non è stata specificata la locazione della cache';
  kpkiErrorMessagesArray[138] := 'Non è stato specificato lo stato della cache';
  kpkiErrorMessagesArray[139] := 'Formato della chiave privata errato';
  kpkiErrorMessagesArray[140] := 'Impossibile imbustare il digest in PKCS#1';
  kpkiErrorMessagesArray[141] := 'Il file di input contenente la chiave privata non è in formato PKCS#8';
  kpkiErrorMessagesArray[142] := 'E'' fallito il cambiamento del PIN della SmartCard';
  kpkiErrorMessagesArray[143] := 'Non è stata settata la chiave simmetrica di cifratura';
  kpkiErrorMessagesArray[144] := 'Destinatario non valido';
  kpkiErrorMessagesArray[145] := 'L''estensione Key Usage non è presente';
  kpkiErrorMessagesArray[146] := 'Utilizzo del certificato non consentito';
  kpkiErrorMessagesArray[147] := 'Certificato non trovato';
  kpkiErrorMessagesArray[148] := 'Fallita l''inizializzazione del socket';
  kpkiErrorMessagesArray[149] := 'Fallita l''inizializzazione del socket SSL';
  kpkiErrorMessagesArray[150] := 'La negoziazione SSL non è riuscita';
  kpkiErrorMessagesArray[151] := 'Impossibile effettuare la connessione SSL';
  kpkiErrorMessagesArray[152] := 'Risposta HTTP non valida';
  kpkiErrorMessagesArray[153] := 'Protocollo sconosciuto';
  kpkiErrorMessagesArray[154] := 'Ricezione impossibile su canale SSL';
  kpkiErrorMessagesArray[155] := 'Header HTTP non valido';
  kpkiErrorMessagesArray[156] := 'Impossibile inviare comandi HTTP';
  kpkiErrorMessagesArray[157] := 'Impossibile inviare comandi HTTP sul canale SSL';
  kpkiErrorMessagesArray[158] := 'Impossibile ricevere comandi HTTP sul canale SSL';
  kpkiErrorMessagesArray[159] := 'La CRL non è stata trovata';
  kpkiErrorMessagesArray[160] := 'Percorso di ricerca certificato non valido';
  kpkiErrorMessagesArray[161] := 'Certificato sconosciuto. Certificato non affidabile.';
  kpkiErrorMessagesArray[162] := 'URL del server OCSP non fornito';
  kpkiErrorMessagesArray[163] := 'Certificato dell''emittente non fornito';
  kpkiErrorMessagesArray[164] := 'OCSP responder: il certificato dell''OCSP responder non è stato specificato';
  kpkiErrorMessagesArray[165] := 'OCSP responder: la richiesta ricevuta non è conforme alla sintassi OCSP';
  kpkiErrorMessagesArray[166] := 'OCSP responder: errore interno al server';
  kpkiErrorMessagesArray[167] := 'OCSP responder: è occupato, riprovare più tardi';
  kpkiErrorMessagesArray[168] := 'OCSP responder: la richesta del client deve essere firmata';
  kpkiErrorMessagesArray[169] := 'OCSP responder: questo client non è autorizzato';
  kpkiErrorMessagesArray[170] := 'Risposta dell''OCSP responder sconosciuta';
  kpkiErrorMessagesArray[171] := 'Il certificato non è in formato X509';
  kpkiErrorMessagesArray[172] := 'La sintassi URL del server OCSP non è valida';
  kpkiErrorMessagesArray[173] := 'La sintassi URL dell''host OCSP non è valida';
  kpkiErrorMessagesArray[174] := 'Il numero di porta del server OCSP non è valido';
  kpkiErrorMessagesArray[175] := 'La sintassi URL del path OCSP non è valida';
  kpkiErrorMessagesArray[176] := 'Meccanismo di trasporto OCSP non supportato';
  kpkiErrorMessagesArray[177] := 'Impossibile esaminare la catena della fiducia del responder OCSP';
  kpkiErrorMessagesArray[178] := 'Impossibile aggiungere il certificato alla richiesta OCSP';
  kpkiErrorMessagesArray[179] := 'Impossibile aggiungere il numero di serie del certificato alla richiesta OCSP';
  kpkiErrorMessagesArray[180] := 'Impossibile aggiungere il certificato o il numero di serie del certificato alla richiesta OCSP';
  kpkiErrorMessagesArray[181] := 'Non è stato specificato nessun certificato o numero di serie su cui generare la richiesta';
  kpkiErrorMessagesArray[182] := 'Certificato dell''issuer non valido';
  kpkiErrorMessagesArray[183] := 'Configurazione client OCSP incompleta';
  kpkiErrorMessagesArray[184] := 'OCSP server irraggiungibile';
  kpkiErrorMessagesArray[185] := 'La connessione sicura al server OCSP è fallita';
  kpkiErrorMessagesArray[186] := 'La connessione al server OCSP è fallita';
  kpkiErrorMessagesArray[187] := 'L''invio della richiesta OCSP è fallito';
  kpkiErrorMessagesArray[188] := 'La catena della fiducia del responder OCSP non è valida';
  kpkiErrorMessagesArray[189] := 'Impossibile interpretare la risposta OCSP';
  kpkiErrorMessagesArray[190] := 'Richiesta persa. Impossibile verificare la risposta';
  kpkiErrorMessagesArray[191] := 'La verifica del nonce OCSP è fallita';
  kpkiErrorMessagesArray[192] := 'Risposta OCSP non valida';
  kpkiErrorMessagesArray[193] := 'Errore sconosciuto';
  kpkiErrorMessagesArray[194] := 'La smartcard non corrisponde all''utente !'#13'(%s)';
  kpkiErrorMessagesArray[195] := 'Controllo validità certificato fallito: validità dal %s al %s ';
  kpkiErrorMessagesArray[196] := 'Dati per le Dll di firma non caricati';

end.
