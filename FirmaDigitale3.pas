unit FirmaDigitale3;

interface

uses Classes,IInterface,CCypher_TLB,FirmaDigitale;

type

  TFirmaCompEd = class(TFirmaDigitale)
  private
    Digest1: TDigest;
    certID: integer;
    keyID: integer;
    procedure StreamToVariant (Stream : TMemoryStream; var v : OleVariant);
    procedure VariantToStream (const v : olevariant; Stream : TMemoryStream);
  public
    constructor Create( tf: Integer ); override;
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

implementation
uses Variants, sysutils, ComObj, Msgdlgs, DMCommon;


procedure TFirmaCompEd.StreamToVariant (Stream : TMemoryStream; var v : OleVariant);
var
  p : pointer;
begin
  v := VarArrayCreate ([0, Stream.Size - 1], varByte);
  p := VarArrayLock (v);
  Stream.Position := 0;
  Stream.Read (p^, Stream.Size);
  VarArrayUnlock (v);
end;

procedure TFirmaCompEd.VariantToStream (const v : olevariant;
                                  Stream : TMemoryStream);
var
  p : pointer;
begin
  Stream.Position := 0;
  Stream.Size := VarArrayHighBound (v, 1) - VarArrayLowBound(v,  1) + 1;
  p := VarArrayLock (v);
  Stream.Write (p^, Stream.Size);
  VarArrayUnlock (v);
  Stream.Position := 0;
end;

constructor TFirmaCompEd.Create( tf: Integer );
var
  tmp: WideString;
begin
  FTipoFirma := tf;
  try
  Digest1 := TDigest.Create(nil);
  {Set DigitalSign parameters to hide GUI and rise exceptions}
  Digest1.SetParam(DS_GUI,0);
  Digest1.SetParam(DS_RAISE_EXCEPTIONS,1);
  {Open default certificate database}
  Digest1.GetDefaultConnectionString(tmp);
  Digest1.OpenDb(tmp);
  FSessioneAperta := False;
  FAttivata := True;
  except
     on E:Exception do begin
        Digest1 := nil;
        MsgDlg(E.Message, '', ktError, [kbOk], dfFirst);
     end;
  end;
end;

destructor TFirmaCompEd.Destroy;
begin
  if Assigned(Digest1) then
  try
     Digest1.Free;
     Digest1 := nil;
  except
     // -- do nothing...
  end;
  inherited;
end;

procedure TFirmaCompEd.ApriSessione(PassPhrase: string);
begin
    {Perform logon}
    try
      if not FSessioneAperta and FAttivata then
      begin
          if PassPhrase='' then
             Digest1.Logon(1)
          else
             Digest1.UnattendedLogon(PassPhrase,0);

          {Obtain the ID of signature certificate}
          Digest1.GetSmartCardCertificate('', KTC_SIGN, certID, keyID);
          FSessioneAperta := True;
      end
      else begin
          raise Exception.Create(RS_SmartcardNonDisp);
      end;
    except
      on E:Exception do
      begin
        MsgDlg(E.Message, '', ktError, [kbOk], dfFirst);
      end;
    end;
end;

procedure TFirmaCompEd.ChiudiSessione;
begin
    certID := 0;
    keyID := 0;
    FSessioneAperta := False;
end;


function TFirmaCompEd.LeggiOwner: string;
var
  owner: OleVariant;
begin

    {leggo l'utente sulla smartcard}
    try
      if Assigned(Digest1) then
      begin
        Digest1.GetParam(DS_SC_OWNER_NAME, owner);
        result := owner;
      end
      else
        raise Exception.Create(RS_SmartcardNonDisp);
    except
      on E:Exception do
      begin
        MsgDlg(E.Message, '', ktError, [kbOk], dfFirst);
        result := '';
      end;
    end;

end;


function TFirmaCompEd.Firma(PassPhrase: string;
                            Nominativo: string;
                            MyStream: TMemoryStream;
                            OutStream: TMemoryStream;
                            var ErrString: string): TpResultFirma;
var
  p7k: integer;
//  p7x: integer;
  buf: OleVariant;
  owner: string;
begin

  try

    if not FAttivata then
       raise Exception.Create(RS_SmartcardNonDisp);

    ApriSessione(PassPhrase);

    {verifico l'utente rispetto alla smartcard}
    owner := LeggiOwner;

    if (Nominativo<>'') and (Uppercase(Nominativo)<>Uppercase(owner)) then
    begin
//       result := -194;
       result := tprErrore;
       ErrString := format(RS_SmartcardNoUtente,[owner]);
    end
    else begin
      {Save the document in the buffer}
      StreamToVariant(MyStream,buf);
      {create the new signed p7m document}
      Digest1.P7kNew(p7k);
      Digest1.P7kSetType(p7k, P7kSigned);
      {add signature}
      Digest1.P7kAddSignature(p7k, HTC_SHA1, certID);
      {set the content}
      Digest1.P7kContentInit(p7k);
      Digest1.P7kContentWriteFromBuf(p7k,buf);
      Digest1.P7kContentFinish(p7k);
      {free memory buffer}
      VarClear(buf);
      {Save signed p7m to buffer}
      Digest1.P7kSaveToBuf(p7k, buf);
      {free p7m object}
      Digest1.P7kFree(p7k);

      VariantToStream(buf,OutStream);

      result := tprOk;
    end;

  except
  on E:EOleException do
     begin
       result := tprErrore;
       ErrString := E.Message;
     end;
  on E:Exception do
     begin
       result := tprErrore;
       ErrString := E.Message;
     end;
  end;

(*
  {now we are going to put timestamp on it}

  {Set DigitalSign parameters to show timestamp progress dialog}
  Digest1.SetParam(DS_GUI,1);

  {create new p7x object}
  Digest1.P7xNew(p7x);
  {set the content}
  Digest1.P7xContentWriteFromBuf(p7x,buf,FName);
  {free memory buffer}
  VarClear(buf);
  {Add the timestamp using the default TSA provider}
  Digest1.P7xAddTS(p7x,0);
  {Save resulting p7x to buffer}
  Digest1.P7xSaveToBuf(p7x, FP7xBuf);
  {free p7x object}
  Digest1.P7xFree(p7x);
*)

(*
  {Open the new p7x document in DigitalSign ActiveX}
  DigitalSignViewer1.CloseDocument;
  DigitalSignViewer1.P7mOpenFromBuffer(FP7xBuf);
*)
end;

function TFirmaCompEd.DecodeStream(MyStream: TMemoryStream; OutStream: TMemoryStream): integer;
var
  p7x: integer;
  buf: OleVariant;
begin
  try
  {create new p7x object}
  Digest1.P7xNew(p7x);
  {copio lo stream di input nel buffer}
  StreamToVariant(MyStream,buf);
  {set the content}
  Digest1.P7xContentWriteFromBuf(p7x,buf,'temp');
  {free memory buffer}
  VarClear(buf);
  {estraggo il contenuto in un buffer}
  Digest1.P7xContentReadToBuf(p7x,buf,0);
  {copio il buffer nello stream di output}
  VariantToStream(buf,OutStream);
  {free memory buffer}
  VarClear(buf);
  result := 0;
  except
  on E:Exception do
     begin
       result := -1;
       MsgDlg(E.Message, '', ktError, [kbOk], dfFirst);
     end;
  end;
end;


end.
