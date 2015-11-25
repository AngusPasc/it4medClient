unit FirmaDigitale;

interface

uses Classes, IInterface;

type

  TFirmaDigitale = class
  protected
     FTipoFirma: Integer;
     FAttivata: Boolean;
     FSessioneAperta: Boolean;
  public
     constructor Create( tf: Integer ); virtual; abstract;
     function Firma(PassPhrase: string;
                    Nominativo: string;
                    MyStream: TMemoryStream;
                    OutStream: TMemoryStream;
                    var ErrString: string): TpResultFirma; virtual; abstract;
     procedure ApriSessione(PassPhrase: string); virtual; abstract;
     procedure ChiudiSessione; virtual; abstract;
     function LeggiOwner: string; virtual; abstract;
     function DecodeStream(MyStream: TMemoryStream; OutStream: TMemoryStream): integer; virtual; abstract;
  
     property TipoFirma: Integer read FTipoFirma write FTipoFirma;
     property Attivata: boolean read FAttivata;
     property SessioneAperta: Boolean read FSessioneAperta;
  end;

implementation

end.
