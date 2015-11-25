unit FirmaDigitale4;

interface

uses Classes,IInterface,FirmaDigitale,uSSLUtils;

type

  TFirmaLettura = class(TFirmaDigitale)
  private
    tsu: TSSLUtils;
  public
    constructor Create( tf: Integer); override;
    destructor Destroy; override;
    function Firma(PassPhrase: string;
                    Nominativo: string;
                    MyStream: TMemoryStream;
                    OutStream: TMemoryStream;
                    var ErrString: string): TpResultFirma; override;
    function LeggiOwner: string; override;
    procedure ChiudiSessione; override;
    procedure ApriSessione(PassPhrase: string); override;
    function DecodeStream(MyStream: TMemoryStream; OutStream: TMemoryStream): integer; override;
  end;


implementation
uses Forms,Controls,sysutils,Windows,Msgdlgs;


constructor TFirmaLettura.Create( tf: Integer );
begin
  tsu := TSSLUtils.Create;
end;

destructor TFirmaLettura.Destroy;
begin
  tsu.Free;
  inherited;
end;

function TFirmaLettura.DecodeStream(MyStream: TMemoryStream; OutStream: TMemoryStream): integer;
begin

  Screen.Cursor := crHourGlass;
  try
  try
     result := tsu.DecodeStream(MyStream, OutStream);

  finally
     Screen.Cursor := crDefault;
  end;

  except
  on E:Exception do
     begin
       result := -1;
       MsgDlg(E.Message, '', ktError, [kbOk], dfFirst);
     end;
  end;

end;


procedure TFirmaLettura.ApriSessione(PassPhrase: string);
begin
end;

procedure TFirmaLettura.ChiudiSessione;
begin
end;

function TFirmaLettura.Firma(PassPhrase: string;
                Nominativo: string;
                MyStream: TMemoryStream;
                OutStream: TMemoryStream;
                var ErrString: string): TpResultFirma;
begin
  Result := tprErrore;
end;

function TFirmaLettura.LeggiOwner: string;
begin
  Result := '';
end;


end.

