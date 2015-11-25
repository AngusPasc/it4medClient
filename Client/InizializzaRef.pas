unit InizializzaRef;

interface

uses AstaClientDataset, syForm, BaseRefer, IInterface;

function RefertazioneAttiva: boolean;
procedure RefreshStato;
procedure InitFormRef(xscreening: Boolean);
//procedure InizializzaTesto;
procedure CloseFormRef;
function LanciaRefer(xstato: integer; xtitolo: string; xpkr: Integer; xpkt: Integer; Refertazione: TAstaClientDataset; xOwnerForm: TsyForm; xcontinua,xprovvisorio: boolean;
                     xstatoref: TpStatoReferto; xestemporaneo,xscreening: boolean; xstatouscita: integer; xdiagnosi: string = ''): boolean;

var
  xBaseReferForm: TFBaseRefer;

implementation
uses DMCommon, Classes, MsgDlgs, sysutils, DateUtils, {Main,}
{$IFDEF MADEXCEPT}
     madExcept, madTypes, madStrings,
{$ENDIF}
Windows, IIConsts;

function RefertazioneAttiva: boolean;
begin
  result := Assigned(xBaseReferForm) and xBaseReferForm.Visible;
end;


procedure RefreshStato;
begin
  if Assigned(xBaseReferForm) then
     xBaseReferForm.StatoUscita := 130;
end;


procedure InitFormRef(xscreening: Boolean);
var
  TFClass: TPersistentClass;
  nclass: string;
  riuscito: boolean;
//  init: TDateTime;
label ErrInitRefer;
begin

ErrInitRefer:

//  init := Now();
  riuscito := false;
//  FLancioRefVocale := TFLancioRefVocale.Create(nil);
  TFClass := nil;

  while not Assigned(TFClass) do
  begin
      if xscreening then
         nclass := 'TFRefer_Screening'
      else
      if FDMCommon.LeggiPostoLavoroREF_VOCALE.AsInteger=0 then
         nclass := 'TFRefer_Text3'
      else
      case FDMCommon.RefertazioneVocale of
      0: nclass := 'TFRefer_Text';
//      1: nclass := 'TFRefer_Phonema1';
      2: nclass := 'TFRefer_HyperSpeech';
//      3: nclass := 'TFRefer_Phoneidos';
      4: nclass := 'TFRefer_Philips';
      5: nclass := 'TFRefer_Phoneidos2';
      6: nclass := 'TFRefer_Text3';
      else
         nclass := '***';
      end;

      TFClass := GetClass(nclass);
      if TFClass=nil then
      begin
         MsgDlg(format('Classe %s non trovata',[nclass]), '', ktError, [kbOK]);
         if FDMCommon.RefertazioneVocale=0 then
            exit
         else
            FDMCommon.RefertazioneVocale := 0;
      end;
  end;

  try

  xBaseReferForm := TsyBaseReferClass(TFClass).Create(nil);
  xBaseReferForm.Inizializza;
  riuscito := true;

//  PostMessage(FMain.Handle,SY_SHOWELAPSED,MilliSecondsBetween(Now(), init),0);

  except
     on E: Exception do
     if (FDMCommon.RefertazioneVocale>0) then
     begin
        MsgDlg(RS_RefertazioneVocaleAssente+#13+E.Message, '', ktError, [kbOk], dfFirst);
        FDMCommon.RefertazioneVocale := 0;
//        InizializzaTesto;
     end
     else
       exit;
  end;

  if not riuscito then
     goto ErrInitRefer;

end;

{
procedure InizializzaTesto;
begin
  FRefer_Text3 := TFRefer_Text3.Create(nil);
end;
}

procedure CloseFormRef;
begin

//  FLancioRefVocale := TFLancioRefVocale.Create(nil);
//  try

//  FLancioRefVocale.Caption := 'Chiusura refertazione vocale...';

  if Assigned(xBaseReferForm) then
  begin
{ ???
      if (FDMCommon.RefertazioneVocale in [1,2,3,4,5]) then
      begin
        FLancioRefVocale.Show;
        FLancioRefVocale.Update;
      end;
}
    try
      // -- patch per chiusura refertazione vocale..
      xBaseReferForm.ActiveControl := nil;
      xBaseReferForm.Free;
      xBaseReferForm := nil;
    except
      // -- ignoro errori in distruzione form..
    end;
  end;

//  finally
//     FLancioRefVocale.Release;
//  end;

end;

function LanciaRefer(xstato: integer; xtitolo: string; xpkr: Integer; xpkt: Integer; Refertazione: TAstaClientDataset; xOwnerForm: TsyForm; xcontinua,xprovvisorio: boolean;
                     xstatoref: TpStatoReferto; xestemporaneo,xscreening: boolean; xstatouscita: integer; xdiagnosi: string = ''): boolean;
var
  ripeti: boolean;

label ErrRefer;
begin

  result := False;

ErrRefer:

  if not Assigned(xBaseReferForm) then
     InitFormRef(xscreening);

  ripeti := false;
  try
     result := xBaseReferForm.LanciaRefertazione(xstato,xtitolo,xpkr,xpkt,Refertazione,xOwnerForm,xcontinua,xprovvisorio,xstatoref,xestemporaneo,xstatouscita,xdiagnosi);
  except
     on E:RefVocException do
     begin
          MsgDlg(e.Message+#13+RS_RefertazioneVocaleAssente, '', ktError, [kbOk], dfFirst);
{$IFDEF MADEXCEPT}
{JRT 5639}
          AutoSaveBugReport(e.Message+#13+RS_RefertazioneVocaleAssente);
{}
{$ELSE}
          raise Exception.Create(e.Message+#13+RS_RefertazioneVocaleAssente);
{$ENDIF}
          try
             CloseFormRef;
          except
          end;
          FDMCommon.RefertazioneVocale := 0;
          ripeti := true;
      //    InizializzaTesto;
      end;
  end;

  if ripeti then
     goto ErrRefer;

  if (FDMCommon.LeggiPostoLavoroDEST_FORM.AsInteger=1) then
     try
       CloseFormRef;
    except
    end
  else
       xBaseReferForm.Hide;

end;

end.
