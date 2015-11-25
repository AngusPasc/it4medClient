unit uSSLUtils;

interface

uses Windows, SysUtils, Classes {, libeay32, OpenSSLUtils};


type
  TSSLUtils = class
  public
//    function GetVersion: string;
    function GetTempDir: string;
    function CreateTempFile: TFileName;
    procedure ExtractPKCS7File(InFilename, OutFilename: String);
    function StreamRefertoDaFile(fName: TFileName): TMemoryStream;
    function StreamReferto(inStream: TMemoryStream): TMemoryStream;
    function DecodeStream(MyStream: TMemoryStream; OutStream: TMemoryStream): integer;
  end;

var
  SSLUtils: TSSLUtils;

implementation

uses ClsFirmaCommon, OpenSSLUtils;

(*
function TSSLUtils.GetVersion: string;
var
  v: cardinal;
  s: PChar;
begin
  v := SSLeay;
  s := SSLeay_version(_SSLEAY_CFLAGS);
  result := s + ' (' + IntToHex(v, 9) + ')';
end;
*)

function TSSLUtils.GetTempDir: string;
var
  lng: DWORD;
  thePath: string;
begin
  SetLength(thePath, MAX_PATH) ;
  lng := GetTempPath(MAX_PATH, PChar(thePath)) ;
  SetLength(thePath, lng) ;
  Result := thePath;
end;

function TSSLUtils.CreateTempFile: TFileName;
var
  TempFileName: array [0..MAX_PATH-1] of char;
begin
  if GetTempFileName(PChar(GetTempDir), '~', 0, TempFileName) = 0 then
    raise Exception.Create(SysErrorMessage(GetLastError));
  Result := TempFileName;
end;

procedure TSSLUtils.ExtractPKCS7File(InFilename, OutFilename: String);
var
  reader: TPKCS7;
begin
  reader := TPKCS7.Create;
  try
    reader.Open(InFilename);
    reader.SaveContent(OutFileName);
  finally
    reader.Free;
  end;
end;


function TSSLUtils.StreamRefertoDaFile(fName: TFileName): TMemoryStream;
var
  f: TFileName;
begin
  f := CreateTempFile;
  try
    AppStartup;   // init crypto function
    ExtractPKCS7File(fName, f);
    Result := TMemoryStream.Create;
    Result.LoadFromFile(f);
  finally
    SysUtils.DeleteFile(f);
  end;
end;


function TSSLUtils.StreamReferto(inStream: TMemoryStream): TMemoryStream;
var
  f: TFileName;
begin
{
  if Copy(StreamToString(inStream),1,4) = '%PDF' then
  begin
    Result := inStream;
    Exit;
  end;
}
  f := CreateTempFile;
  try
    inStream.SaveToFile(f);
    Result := StreamRefertoDaFile(f);
  finally
    SysUtils.DeleteFile(f);
  end;
end;

function TSSLUtils.DecodeStream(MyStream: TMemoryStream; OutStream: TMemoryStream): integer;
var
  finp: TFileName;
  fout: TFileName;
begin

  result := 0;
  try
  finp := CreateTempFile;
  fout := CreateTempFile;
  try
    MyStream.Position := 0;
    MyStream.SaveToFile(finp);
    AppStartup;   // init crypto function
    ExtractPKCS7File(finp, fout);
    OutStream.Position := 0;
    OutStream.LoadFromFile(fout);
  finally
    SysUtils.DeleteFile(finp);
    SysUtils.DeleteFile(fout);
  end;
  except
    on E:Exception do
       begin
         result := -1;
         raise;
       end;
  end;

end;

end.
