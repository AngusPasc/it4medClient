unit StampaAvvisi;

interface

uses
  Windows, IInterface, IIConsts, Messages, BaseRad, {} cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxEdit, DB, cxDBData, AstaDrv2,
  AstaClientDataset, Classes, ActnList, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxProgressBar, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, Controls, StdCtrls, CSEZForm,
    ExtCtrls,  cxCheckBox, cxSpinEdit,
  cxDataStorage, cxImageComboBox, cxLabel, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, Menus, cxLookAndFeelPainters,
  cxButtons, cxLookAndFeels, cxNavigator, dxLayoutcxEditAdapters,
  dxLayoutContainer, dxLayoutControl, cxGroupBox;

{$DEFINE LeggiRegistri}

type

  TCaricaStampeEvent = procedure (Sender: TObject; xDataset: TDataset; var xfunz: integer) of object;

  TFStampaAvvisi = class(TFBaseRad)
    ActionList1: TActionList;
    Stampa: TAction;
    cxStampe: TcxComboBox;
    rDataSource: TDataSource;
    suiProgressBar1: TcxProgressBar;
    btStampa: TcxButton;
    Conferma: TAction;
    cxGrid1: TcxGrid;
    cxSelezionati: TcxGridDBTableView;
    cxSelezionatiORDINE: TcxGridDBColumn;
    cxSelezionatiDESCRIZIONE: TcxGridDBColumn;
    cxSelezionatiPKTABSTAMPE: TcxGridDBColumn;
    cxSelezionatiCOPIE: TcxGridDBColumn;
    cxSelezionatiSTAMPANTE: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxSelezionatiSELEZIONE: TcxGridDBColumn;
    cxSelezionatiITEM_ID_FK: TcxGridDBColumn;
    cxSelezionatiPRESTSPECMULT_FK: TcxGridDBColumn;
    ControlloEsami: TAstaClientDataSet;
    sTabStampe: TDataSource;
    cxSelezionatiVERIFICASTAMPE_FK: TcxGridDBColumn;
    Preview: TAction;
    btPreview: TcxButton;
    CodiciEsami: TAstaClientDataSet;
    cxSelezionatiITEM_TYPE: TcxGridDBColumn;
    cxSelezionatiURL1: TcxGridDBColumn;
    cxSelezionatiURL2: TcxGridDBColumn;
    cxSelezionatiBATCH_PROC1: TcxGridDBColumn;
    cxSelezionatiBATCH_PROC2: TcxGridDBColumn;
    EseguiProc: TAstaClientDataSet;
    cxSelezionatiBEFORE_PROC1: TcxGridDBColumn;
    cxSelezionatiBEFORE_PROC2: TcxGridDBColumn;
    CodiciEsamiNRESAMI: TIntegerField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControlStampante: TdxLayoutItem;
    dxLayoutControlGrid: TdxLayoutItem;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxEtichette: TcxComboBox;
    dxLayoutControlEtichette: TdxLayoutItem;
    aAnnulla: TAction;
    procedure StampaExecute(Sender: TObject);
    procedure StampaUpdate(Sender: TObject);
    procedure ConfermaExecute(Sender: TObject);
    procedure cxSelezionatiSELEZIONEPropertiesEditValueChanged(
      Sender: TObject);
    procedure sTabStampeUpdateData(Sender: TObject);
    procedure BaseFormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BaseFormDestroy(Sender: TObject);
    procedure PreviewExecute(Sender: TObject);
    procedure PreviewUpdate(Sender: TObject);
    procedure aAnnullaExecute(Sender: TObject);
  private
    { Private declarations }
    lpkt: TStringList;
    FAltroSito: Boolean;
    FOnCaricaStampe: TCaricaStampeEvent;
    FdaStampare: integer;
    FNuovoDoc: Boolean;
    FPkImpegnative: Integer;
    FOrder_Number: string;
    FAccNumber: string;
    FDBTableView: TcxGridDBTableView;
    FTuttiRecord: boolean;
    FCaricaStampe: integer;
    procedure LeggiDatiEsame;
    procedure CaricaTriageSelezionati;
    procedure PostValore(var Message: TMessage); message SY_CHECKCHANGED;
    procedure CaricaModuli;
    procedure StampaInternaModuli;
    procedure SetDBTableView(Value: TcxGridDBTableView);
    function GetDataset: TAstaClientDataSet;
    procedure SetDataset( Value: TAstaClientDataSet );
  protected
    procedure DoCreate; override;
    procedure DoShow; override;
  public
    { Public declarations }
    procedure StampaModuli;
    procedure ProcCaricaStampe(cfFunzione: integer);

    property OnCaricaStampe: TCaricaStampeEvent read FOnCaricaStampe write FOnCaricaStampe;
    property DBTableView: TcxGridDBTableView read FDBTableView write SetDBTableView;
    property xDataset: TAstaClientDataSet read GetDataset write SetDataset;
    property TuttiRecord: boolean read FTuttiRecord write FTuttiRecord default false;
    property CaricaStampe: integer read FCaricaStampe write FCaricaStampe;
    property daStampare: integer read FdaStampare;
  end;

var
  FStampaAvvisi: TFStampaAvvisi;

implementation

uses DMCommon, Variants, sysutils, Printers, msgdlgs, ShellAPI, osFastStrings
{$IFDEF LeggiRegistri} , Registry {$ENDIF}
{$IFNDEF MEDICORNER} ,RunStat  {$ENDIF}
     ,RBViewer
;

{$R *.dfm}

function WinExecAndWait32(FileName: string): boolean;
var
  zAppName: array[0..512] of Char;
//  zCurDir: array[0..255] of Char;
//  WorkDir: string;
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
  Browser: string;
{$IFNDEF LeggiRegistri}
  ErrorCode: Cardinal;
  tmp : PChar;
{$ENDIF}
begin

  Result := True;
{$IFDEF LeggiRegistri}
   Browser := '';
   with TRegistry.Create do
   try
     RootKey := HKEY_CLASSES_ROOT;
     Access := KEY_QUERY_VALUE;
     if OpenKey('\htmlfile\shell\open\command', False) then
       Browser := ReadString('') ;
     CloseKey;
   finally
     Free;
   end;
   if Browser<>'' then
{$ELSE}
  tmp := StrAlloc(255);
  GetTempPath(255,tmp);

  if FileExists(tmp+'htmpl.htm') or (FileCreate(tmp+'htmpl.htm')<>-1) then
  begin
    SetLength(Browser, MAX_PATH);
    ErrorCode := FindExecutable('htmpl.htm',tmp,PChar(Browser));
    if ErrorCode > 32 then
{$ENDIF}

    begin
      StrPCopy(zAppName, Trim(Browser)+' '+FileName);
//      GetDir(0, WorkDir);
//      StrPCopy(zCurDir, WorkDir);
      FillChar(StartupInfo, SizeOf(StartupInfo), #0);
      StartupInfo.cb          := SizeOf(StartupInfo);
      StartupInfo.dwFlags     := STARTF_USESHOWWINDOW;
      StartupInfo.wShowWindow := SW_SHOWMAXIMIZED;
      if not CreateProcess(nil,
        zAppName, // pointer to command line string
        nil, // pointer to process security attributes
        nil, // pointer to thread security attributes
        False, // handle inheritance flag
        CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, // creation flags
        nil, //pointer to new environment block
        nil, // pointer to current directory name
        StartupInfo, // pointer to STARTUPINFO
        ProcessInfo) // pointer to PROCESS_INF
        then begin
           Result := False;
           MsgDlg('Browser non accessibile','',ktError,[kbOK]);
        end
      else
      begin
        WaitForSingleObject(ProcessInfo.hProcess, INFINITE);
//        GetExitCodeProcess(ProcessInfo.hProcess, Result);
        CloseHandle(ProcessInfo.hProcess);
        CloseHandle(ProcessInfo.hThread);
      end;
    end
    else begin
       Result := False;
       MsgDlg('Browser non trovato','',ktError,[kbOK]);
    end;
{$IFNDEF LeggiRegistri}
  end
  else begin
     Result := False;
     MsgDlg('File temporaneo non creabile','',ktError,[kbOK]);
  end
{$ELSE}
  ;
{$ENDIF}

end; { WinExecAndWait32 }


procedure TFStampaAvvisi.CaricaTriageSelezionati;
var
  i: Integer;
  RecIdx: integer;
  pkVal: Variant;
begin
    lpkt.Clear;
    if Assigned(FDBTableView) then
    begin
      for i:=0 to FDBTableView.Controller.SelectedRecordCount-1 do
      begin
        RecIdx := FDBTableView.Controller.SelectedRecords[i].RecordIndex;
        pkVal := FDBTableView.DataController.GetRecordId(RecIdx);
        lpkt.Add(pkVal);
      end;
    end
    else if Assigned(xDataset) then
    begin
        if FTuttiRecord then
        begin
            xDataset.First;
            while not xDataset.Eof do
            begin
               pkVal := xDataSet.FieldByName(xDataSet.PrimeFields[0]).AsString;
               lpkt.Add(pkVal);
               if FTuttiRecord then
                  xDataset.Next
               else
                  break;
            end;
        end
        else begin
            lpkt.Add('***');
        end;
    end;
end;

procedure TFStampaAvvisi.SetDBTableView(Value: TcxGridDBTableView);
begin
    FDBTableView := Value;
    if Assigned(FDBTableView) then
    begin
       xDataSet := TAstaClientDataset(FDBTableView.DataController.DataSet);
    end;
end;

function TFStampaAvvisi.GetDataset: TAstaClientDataSet;
begin
   result := TAstaClientDataSet(rDataSource.DataSet);
end;

procedure TFStampaAvvisi.SetDataset( Value: TAstaClientDataSet );
begin
  rDataSource.DataSet := Value;
  if (rDataSource.DataSet.FindField('REPARTI_FK')<>nil) and (rDataSource.DataSet.FieldByName('reparti_fk').AsInteger<>gblpkrep) then
  begin
     FAltroSito := True;
     FDMCommon.TabStampe.Parambyname('reparti_fk').AsInteger := rDataSource.DataSet.FieldByName('reparti_fk').AsInteger;
     FDMCommon.TabStampe.syRefresh;
  end;
end;

procedure TFStampaAvvisi.ProcCaricaStampe(cfFunzione: integer);
var
  xselez: integer;
begin
  with FDMCommon do
  begin
    tabStampe.CancelRange;
    tabStampe.SetRange([cfFunzione],[cfFunzione]);
  end;

  FdaStampare := 0;

  LeggiDatiEsame;

  FDMCommon.TabStampe.First;
  while not FDMCommon.TabStampe.eof do
  begin
      if not FDMCommon.TabStampeVERIFICASTAMPE_FK.IsNull and (FDMCommon.TabStampeVERIFICASTAMPE_FK.AsInteger>0) then
      begin

        ControlloEsami.ParamByName('codst').AsInteger := FDMCommon.TabStampeVERIFICASTAMPE_FK.AsInteger;
        ControlloEsami.ParamByName('pki').AsInteger := FPkImpegnative;

        if not FDMCommon.TabStampeGRESAMI_FK.IsNull then
             ControlloEsami.ParamByName('xgresami').AsInteger := FDMCommon.TabStampeGRESAMI_FK.AsInteger
        else
             ControlloEsami.ParamByName('xgresami').Clear;
        ControlloEsami.Parambyname('SELEZIONA').AsInteger := FDMCommon.TabStampeSELEZIONE.AsInteger;

        ControlloEsami.ExecSQL;
        if ControlloEsami.Parambyname('SELEZIONA').AsInteger<>FDMCommon.TabStampeSELEZIONE.AsInteger then
        begin
           FDMCommon.TabStampe.Edit;
           FDMCommon.TabStampeSELEZIONE.AsInteger := ControlloEsami.Parambyname('SELEZIONA').AsInteger;
           FDMCommon.TabStampe.Post;
        end;

      end
      else if FDMCommon.TabStampeQE.AsInteger>0 then
      begin
        CodiciEsami.ParamByName('item_id_fk').AsInteger := FDMCommon.TabStampeITEM_ID_FK.AsInteger;
        CodiciEsami.ParamByName('impegnative_fk').AsInteger := FPkImpegnative;
{JRT 2802  -- test per esclusione}
        CodiciEsami.ParamByName('includi').AsInteger := 0;
        CodiciEsami.syRefresh;
        if CodiciEsamiNRESAMI.AsInteger>0 then
           xselez := 0
        else begin
{}
          CodiciEsami.ParamByName('includi').AsInteger := 1;
          CodiciEsami.syRefresh;
          if CodiciEsamiNRESAMI.AsInteger>0 then
             xselez := 1
          else
             xselez := 0;
        end;

        if xselez<>FDMCommon.TabStampeSELEZIONE.AsInteger then
        begin
           FDMCommon.TabStampe.Edit;
           FDMCommon.TabStampeSELEZIONE.AsInteger := xselez;
           FDMCommon.TabStampe.Post;
        end;

      end;

      if FDMCommon.TabStampeSELEZIONE.AsInteger=1 then
         inc(FdaStampare);
      FDMCommon.TabStampe.Next;

  end;

  cxSelezionati.DataController.UpdateItems(False);
  cxSelezionati.Controller.GoToFirst;

end;


procedure TFStampaAvvisi.LeggiDatiEsame;
begin

  if rDataSource.Dataset.FindField('pkimpegnative')<>nil then
     FPkImpegnative := rDataSource.Dataset.Fieldbyname('pkimpegnative').AsInteger
  else if rDataSource.Dataset.FindField('impegnative_fk')<>nil then
     FPkImpegnative := rDataSource.Dataset.Fieldbyname('impegnative_fk').AsInteger
  else
     FPkImpegnative := -1;

  if rDataSource.Dataset.FindField('PLACER_ORDER_NUMBER')<>nil then
     FOrder_Number := rDataSource.Dataset.Fieldbyname('PLACER_ORDER_NUMBER').AsString;

  FNuovoDoc := (FOrder_Number='');

  if rDataSource.Dataset.FindField('RIS_STUDY_EUID')<>nil then
     FAccNumber := rDataSource.Dataset.Fieldbyname('RIS_STUDY_EUID').AsString;

end;


procedure TFStampaAvvisi.DoCreate;
begin
  inherited;

  lpkt := TStringList.Create;
  FDBTableView := nil;
  FAltroSito := False;
  FOnCaricaStampe := nil;
  FTuttiRecord := false;
{
  FPrinterList := ppPrinters;
  cxStampe.Properties.Items.Assign(FPrinterList.PrinterNames);
}
  cxStampe.Properties.Items.Assign(Printer.Printers);
  cxStampe.Text := FDMCommon.StampanteNormale;

  cxEtichette.Properties.Items.Assign(Printer.Printers);
  cxEtichette.Text := FDMCommon.StampanteEtichette;

end;

procedure TFStampaAvvisi.StampaExecute(Sender: TObject);
begin
   StampaInternaModuli;
   ModalResult := mrOk;
end;

procedure TFStampaAvvisi.StampaModuli;
begin
  CaricaTriageSelezionati;
  CaricaModuli;
  StampaInternaModuli;
end;

procedure TFStampaAvvisi.StampaInternaModuli;
var
  RecIdx: integer;
  xcopie: integer;
  xfunzione: integer;
  sttype: integer;
  AText: string;
  z: integer;
  tempParam: string;
begin
  inherited;

  if (FDMCommon.TabStampe.State in dsEditModes) then
     FDMCommon.TabStampe.Post;
(*
  if cxStampe.Text<>'' then
     KSReportPro1.PrinterName := cxStampe.Text;
  if cxEtichette.Text<>'' then
     KSReportPro2.PrinterName := cxEtichette.Text;
*)
  suiProgressBar1.Position := 0;
{
  if FTuttiRecord then
     suiProgressBar1.Properties.Max := FdaStampare * ReportDataSource.DataSet.recordcount
  else
}
  suiProgressBar1.Properties.Max := FdaStampare;
  suiProgressBar1.Visible := true;

  if (cxSelezionati.DataController.EditState <> []) then
     cxSelezionati.DataController.Post;

  for z:=0 to lpkt.Count-1 do
  begin

    if Assigned(FDBTableView) then
       FDBTableView.DataController.Datasource.Dataset.Locate(FDBTableView.DataController.KeyFieldNames, lpkt[z], [])
    else if FTuttiRecord then
       xDataSet.Locate(xDataSet.PrimeFields[0],lpkt[z],[]);

    LeggiDatiEsame;
(*
    if (FAccNumber<>'') then
    begin
       KSReportPro1.DocumentName := FAccNumber;
       KSReportPro2.DocumentName := FAccNumber;
    end;
*)
    for RecIdx := 0 to cxSelezionati.DataController.RecordCount-1 do
    begin
        if VarAsType(cxSelezionati.DataController.Values[RecIdx,cxSelezionatiSELEZIONE.Index],varInteger)=1 then
        begin
           sttype := VarAsType(cxSelezionati.DataController.Values[RecIdx,cxSelezionatiITEM_TYPE.Index],varInteger);
           case sttype of
           1:
           begin
(*
              if VarAsType(cxSelezionati.DataController.Values[RecIdx,cxSelezionatiSTAMPANTE.Index],varInteger)=1 then
                 xReportPro := KSReportPro1
              else
                 xReportPro := KSReportPro2;
*)
              suiProgressBar1.Position := suiProgressBar1.Position + 1;
              xcopie := VarAsType(cxSelezionati.DataController.Values[RecIdx,cxSelezionatiCOPIE.Index],varInteger);

              tempParam := LoadParameters(FDMCommon.Param_TicketWS_URL_DEBURO.AsString, cxSelezionati.DataController.Values[RecIdx,cxSelezionatiITEM_ID_FK.Index], rDataSource.Dataset);

              if tempParam<>'' then
                 PrintDoc(FDMCommon.Param_TicketWS_URL_DEBURO.AsString, cxSelezionati.DataController.Values[RecIdx,cxSelezionatiITEM_ID_FK.Index], tempParam, cxStampe.Text );

           end;
           2:
           begin
{$IFNDEF MEDICORNER}
              FRunStat := TFRunStat.Create(nil);
              try
                 FRunStat.DefaultEndDate := dfEndDay;
                 FRunStat.Statistica.Parambyname('item_id').AsInteger := VarAsType(cxSelezionati.DataController.Values[RecIdx,cxSelezionatiITEM_ID_FK.Index],varInteger);
                 FRunStat.Statistica.Open;
                 FRunStat.ShowModal;
              finally
                 FRunStat.Free;
              end;
{$ENDIF}
           end;
           4:
           begin
             if FNuovoDoc then
             begin
              if not VarIsNull(cxSelezionati.DataController.Values[RecIdx,cxSelezionatiBEFORE_PROC1.Index]) then
              begin
                AText := Trim(VarAsType(cxSelezionati.DataController.Values[RecIdx,cxSelezionatiBEFORE_PROC1.Index],varString));
                EseguiProc.StoredProcedure := AText;
                EseguiProc.ParamByName('xpkimpegnative').AsInteger := FPkImpegnative;
                EseguiProc.ExecSQL;
              end;
              if not VarIsNull(cxSelezionati.DataController.Values[RecIdx,cxSelezionatiURL1.Index]) then
              begin
                AText := Trim(VarAsType(cxSelezionati.DataController.Values[RecIdx,cxSelezionatiURL1.Index],varString));
                AText := BMStringReplace(AText,'%PKIMPEGNATIVE%',IntToStr(FPkImpegnative),[]);
//                ShellExecute(0, 'OPEN', PChar(AText), nil, nil, SW_SHOWMAXIMIZED);
                if WinExecAndWait32(AText) then
                begin
                   if not VarIsNull(cxSelezionati.DataController.Values[RecIdx,cxSelezionatiBATCH_PROC1.Index]) then
                   begin
                      AText := Trim(VarAsType(cxSelezionati.DataController.Values[RecIdx,cxSelezionatiBATCH_PROC1.Index],varString));
                      EseguiProc.StoredProcedure := AText;
                      EseguiProc.ParamByName('xpkimpegnative').AsInteger := FPkImpegnative;
                      EseguiProc.ExecSQL;
                   end;
                end;
              end
              else
                 MsgDlg(RS_NoUrlNuovoDocumento,'', ktError, [kbOK]);
             end
             else begin
              if not VarIsNull(cxSelezionati.DataController.Values[RecIdx,cxSelezionatiBEFORE_PROC2.Index]) then
              begin
                 AText := Trim(VarAsType(cxSelezionati.DataController.Values[RecIdx,cxSelezionatiBEFORE_PROC2.Index],varString));
                 EseguiProc.StoredProcedure := AText;
                 EseguiProc.ParamByName('xpkimpegnative').AsInteger := FPkImpegnative;
                 EseguiProc.ExecSQL;
              end;
              if not VarIsNull(cxSelezionati.DataController.Values[RecIdx,cxSelezionatiURL2.Index]) then
              begin
                AText := Trim(VarAsType(cxSelezionati.DataController.Values[RecIdx,cxSelezionatiURL2.Index],varString));
                AText := BMStringReplace(AText,'%PKIMPEGNATIVE%',IntToStr(FPkImpegnative),[]);
                AText := BMStringReplace(AText,'%ORDER_NUMBER%',FOrder_Number,[]);
//                ShellExecute(0, 'OPEN', PChar(AText), nil, nil, SW_SHOWMAXIMIZED);
                if WinExecAndWait32(AText) then
                begin
                   if not VarIsNull(cxSelezionati.DataController.Values[RecIdx,cxSelezionatiBATCH_PROC2.Index]) then
                   begin
                      AText := Trim(VarAsType(cxSelezionati.DataController.Values[RecIdx,cxSelezionatiBATCH_PROC2.Index],varString));
                      EseguiProc.StoredProcedure := AText;
                      EseguiProc.ParamByName('xpkimpegnative').AsInteger := FPkImpegnative;
                      EseguiProc.ExecSQL;
                   end;
                end;
              end
              else
                 MsgDlg(RS_NoUrlRistampaDocumento,'', ktError, [kbOK]);
             end;
           end;
         end;
        end;
    end;

    if Assigned(FOnCaricaStampe) then
    begin
       FOnCaricaStampe(self,rDataSource.DataSet,xfunzione);
       ProcCaricaStampe(xfunzione)
    end;

  end;

end;

procedure TFStampaAvvisi.StampaUpdate(Sender: TObject);
begin
  inherited;
{
  suiProgressBar1.Max := 0;
  for i:=0 to suiCheckStampe.Items.Count-1 do
  if suiCheckStampe.Checked[i] then
    suiProgressBar1.Max := suiProgressBar1.Max + 1;

  for i:=0 to suiCheckEtichette.Items.Count-1 do
  if suiCheckEtichette.Checked[i] then
    suiProgressBar1.Max := suiProgressBar1.Max + 1;

  suiProgressBar1.Max := suiProgressBar1.Max * cxCopie.Value;

}
  Stampa.Enabled := FdaStampare>0;

end;

procedure TFStampaAvvisi.ConfermaExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TFStampaAvvisi.CaricaModuli;
var
  xfunzione: integer;
begin
  inherited;

  if Assigned(FOnCaricaStampe) then
  begin
     FOnCaricaStampe(self,rDataSource.DataSet,xfunzione);
     ProcCaricaStampe(xfunzione)
  end
  else
     ProcCaricaStampe(FCaricaStampe);
{
  if gblDebugMode then
     cxLabel1.Caption := IntToStr(fDaStampare);
}
end;

procedure TFStampaAvvisi.DoShow;
begin
  inherited;

  CaricaTriageSelezionati;
  CaricaModuli;
  cxSelezionati.Site.SetFocus;

end;


procedure TFStampaAvvisi.cxSelezionatiSELEZIONEPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
//  suiProgressBar1.Max := suiProgressBar1.Max - VarAsType(Grid.DataController.Values[RecIdx,cxSelezionatiCOPIE.Index],varInteger);
{
  if VarAsType(cxSelezionati.Controller.FocusedRecord.Values[cxSelezionatiSELEZIONE.Index],varInteger)=1 then
     dec(fDaStampare)
  else
     inc(fDaStampare);
}
  PostMessage(Handle,SY_CHECKCHANGED,0,0);
end;

procedure TFStampaAvvisi.sTabStampeUpdateData(Sender: TObject);
begin
  inherited;
{
  if VarAsType(cxSelezionati.Controller.FocusedRecord.Values[cxSelezionatiSELEZIONE.Index],varInteger)=1 then
     inc(fDaStampare)
  else
     dec(fDaStampare);
}
end;

procedure TFStampaAvvisi.PostValore(var Message: TMessage);
var
  i: integer;
begin
{
  if (sTabStampe.Dataset.State in dsEditModes) then
     sTabStampe.Dataset.Post;
}
{
  if (cxSelezionati.DataController.EditState <> []) then
     cxSelezionati.DataController.Post;
}

{
  if VarAsType(cxSelezionati.Controller.FocusedRecord.Values[cxSelezionatiSELEZIONE.Index],varInteger)=0 then
     inc(fDaStampare)
  else begin
     if fDaStampare>0 then
        dec(fDaStampare);
  end;
}

(*
//  cxSelezionati.DataController.BeginUpdate;
//  cxSelezionati.DataController.UpdateItems(False);
  fDaStampare := 0;
  if cxSelezionati.Controller.GoToFirst then
  repeat
     if VarAsType(cxSelezionati.Controller.FocusedRecord.Values[cxSelezionatiSELEZIONE.Index],varInteger)=0 then
        inc(fDaStampare);
  until not cxSelezionati.Controller.GoToNext(false);
//  cxSelezionati.DataController.EndUpdate;

*)

  fDaStampare := 0;
  for i := 0 to cxSelezionati.DataController.RecordCount-1 do
     if VarAsType(cxSelezionati.DataController.Values[i,cxSelezionatiSELEZIONE.Index],varInteger)=1 then
        inc(fDaStampare);

end;

procedure TFStampaAvvisi.BaseFormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  FDMCommon.TabStampe.CancelUpdates;
end;

procedure TFStampaAvvisi.BaseFormDestroy(Sender: TObject);
begin
  inherited;
  if FAltroSito then
  begin
     FDMCommon.TabStampe.Parambyname('reparti_fk').AsInteger := gblpkrep;
     FDMCommon.TabStampe.syRefresh;
  end;
  FDMCommon.TabStampe.CancelRange;
//  FDMCommon.TabStampe.Filtered := false;
  lpkt.Free;
end;

procedure TFStampaAvvisi.PreviewExecute(Sender: TObject);
var
  RecIdx: integer;
  sttype: integer;
  tempParam: string;
begin

  RecIdx := cxSelezionati.DataController.FocusedRecordIndex;

  sttype := VarAsType(cxSelezionati.DataController.Values[RecIdx,cxSelezionatiITEM_TYPE.Index],varInteger);
  case sttype of
  1:
    begin
(*
//        if VarAsType(cxSelezionati.DataController.Values[RecIdx,cxSelezionatiSTAMPANTE.Index],varInteger)=1 then
           xReportPro := KSReportPro1;
*)
          tempParam := LoadParameters(FDMCommon.Param_TicketWS_URL_DEBURO.AsString, cxSelezionati.DataController.Values[RecIdx,cxSelezionatiITEM_ID_FK.Index], rDataSource.Dataset);

          if tempParam<>'' then
             ShowDoc(FDMCommon.Param_TicketWS_URL_DEBURO.AsString, cxSelezionati.DataController.Values[RecIdx,cxSelezionatiITEM_ID_FK.Index], tempParam );

    end;
  2:
    begin
{$IFNDEF MEDICORNER}
      FRunStat := TFRunStat.Create(nil);
      try
         FRunStat.DefaultEndDate := dfEndDay;
         FRunStat.Statistica.Parambyname('item_id').AsInteger := VarAsType(cxSelezionati.DataController.Values[RecIdx,cxSelezionatiITEM_ID_FK.Index],varInteger);
         FRunStat.Statistica.Open;
         FRunStat.ShowModal;
      finally
         FRunStat.Free;
      end;
{$ENDIF}      
    end;
  end;

end;

procedure TFStampaAvvisi.PreviewUpdate(Sender: TObject);
var
  RecIdx: Integer;
  itype: Integer;
begin
  inherited;
  RecIdx := cxSelezionati.DataController.FocusedRecordIndex;
  if (RecIdx<>-1) then
     itype := (VarAsType(cxSelezionati.DataController.Values[RecIdx,cxSelezionatiITEM_TYPE.Index],varInteger))
  else
     itype := 0;
  Preview.Enabled := (RecIdx<>-1) and (itype in [1,2]);
end;

procedure TFStampaAvvisi.aAnnullaExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

end.
