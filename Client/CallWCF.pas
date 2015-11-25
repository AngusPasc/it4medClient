unit CallWCF;

interface

function PostWCF(const pUrl: string; const pidApp: string; const pidExamType: string; const pidMeasureTypes: string): boolean;


implementation

uses DMCommon, IdHTTP, Classes, SysUtils, IdException, Msgdlgs;


function PostWCF(const pUrl: string; const pidApp: string; const pidExamType: string; const pidMeasureTypes: string): boolean;
var
  lHTTP: TIdHTTP;
  lParamList: TStringList;
begin
  lParamList := TStringList.Create;
//  lParamList.Text := format('{"appName":"","appParams":[{"Name":"IdAppointmentToStart","Value":%s},{"Name":"IdExamTypeToStart","Value":%s}]}',[pidApp,pidExamType]);

  lParamList.Text := format('{"appName":"","appParams":[{"Name":"IdAppointmentToStart","Value":%s},{"Name":"IdExamTypeToStart","Value":%s},{"Name":"IdMeasureTypes","Value":[%s]}]}',[pidApp,pidExamType,pidMeasureTypes]);

  lHTTP := TIdHTTP.Create(nil);
  lHTTP.ConnectTimeout := 5000;
  Result := False;
  try
  try
    lHTTP.Request.ContentType := 'application/json; charset=utf-8';
    Result := lHTTP.Post(format('http://%s',[pUrl]), lParamList) = '{"OpenApplicationResult":true}';
  finally
    lHTTP.Free;
    lParamList.Free;
  end;
  except
    on E: EIdSocketError do
       MsgDlg(Format(RAD_ErrSocket,[E.Message]),'', ktWarning, [kbOK]);
    else
       raise;
  end
end;

end.
