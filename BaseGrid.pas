unit BaseGrid;

interface

uses
  syForm, cxSchedulerCustomControls, cxSchedulerStorage, cxGridDBTableView, AstaClientDataset,
  rsStorage, rsXmlData, Classes;

type

  TpCercaReferto = (tpcrTrovato, tpcrNonTrovato, tpcrStorico, tpcrFiltrato);

  TFBaseGrid = class(TsyForm)
    rsStorage1: TrsStorage;
    rsXMLData1: TrsXMLData;
  private
    { Private declarations }
  protected
    FCustomized: Boolean;
    procedure InsertOperazione(md,dd: TcxGridDBTableView; pk: Integer; pdett: boolean; xRefreshDettagli: TAstaClientDataSet); overload; virtual;
    procedure InsertOperazione(md,dd: TcxGridDBTableView; pk: Integer); overload; virtual;
    procedure DeleteOperazione(md,dd: TcxGridDBTableView; pk: Integer; pdett: boolean); overload; virtual;
    procedure DeleteOperazione(md,dd: TcxGridDBTableView; pk: Integer); overload; virtual;
    procedure RefreshOperazione(md,dd: TcxGridDBTableView; pk: Integer; pdett: boolean; xRefreshDettagli: TAstaClientDataSet); overload; virtual;
    procedure RefreshOperazione(md,dd: TcxGridDBTableView; pk: Integer); overload; virtual;
    function  CercaReferto: TpCercaReferto; virtual;
    procedure rsXMLData1LoadFromStream(Sender: TObject; Stream: TStream;
      var DoStandard: Boolean);
    procedure rsXMLData1SaveToStream(Sender: TObject; Stream: TStream;
      var DoStandard: Boolean);
    procedure Loaded; override;
  public
    { Public declarations }
     function GetResourceByResourceID(AScheduler: TcxCustomScheduler; AResourceID: Variant): TcxSchedulerStorageResourceItem;
     procedure SendPortDataToForm(const s: string; lungh: integer); override;
  end;

var
  FBaseGrid: TFBaseGrid;

implementation
uses cxVariants, AstaDBTypes, DMCommon;

{$R *.dfm}

function  TFBaseGrid.CercaReferto: TpCercaReferto;
begin
   result := tpcrNonTrovato;
end;

procedure TFBaseGrid.SendPortDataToForm(const s: string; lungh: integer);
begin
end;


function TFBaseGrid.GetResourceByResourceID(AScheduler: TcxCustomScheduler;
    AResourceID: Variant): TcxSchedulerStorageResourceItem;
var
  I: Integer;
begin
  Result := nil;
  if AScheduler.Storage = nil then
    Exit;

  with AScheduler.Storage do
    for I := 0 to ResourceCount - 1 do
      if VarEquals(Resources.ResourceItems[I].ResourceID, AResourceID) then
      begin
        Result := Resources.ResourceItems[I];
        Break;
      end;
end;

procedure TFBaseGrid.InsertOperazione(md,dd: TcxGridDBTableView; pk: Integer);
begin
   InsertOperazione(md,dd,pk,false,nil);
end;

procedure TFBaseGrid.InsertOperazione(md,dd: TcxGridDBTableView; pk: Integer; pdett: boolean; xRefreshDettagli: TAstaClientDataSet);
var
  TempMs: TAstaUpdateMethod;
  TempDt: TAstaUpdateMethod;
  ms,dt: TAstaClientDataSet;
begin
    md.DataController.BeginFullUpdate;
    dd.DataController.BeginFullUpdate;
    ms := TAstaClientDataSet(md.DataController.DataSet);
    dt := TAstaClientDataSet(dd.DataController.DataSet);
    ms.DisableControls;
    dt.DisableControls;
    TempMs := ms.UpdateMethod;
    TempDt := dt.UpdateMethod;
    ms.UpdateMethod := umManual;
    dt.UpdateMethod := umManual;
    try
      ms.InsertRefresh(pk);
      if pdett then
      begin
//        xRefreshDettagli.Parambyname('TRIAGE_FK').AsInteger := pk;
        xRefreshDettagli.Params[0].AsInteger := pk;
        xRefreshDettagli.syRefresh;
        dt.DataTransfer(xRefreshDettagli,true,true);
      end;
    finally
      ms.UpdateMethod := TempMs;
      dt.UpdateMethod := TempDt;
      dt.EnableControls;
      ms.EnableControls;
      md.DataController.EndFullUpdate;
      dd.DataController.EndFullUpdate;
    end;
end;

procedure TFBaseGrid.DeleteOperazione(md,dd: TcxGridDBTableView; pk: Integer);
begin
   DeleteOperazione(md,dd,pk,false);
end;

procedure TFBaseGrid.DeleteOperazione(md,dd: TcxGridDBTableView; pk: Integer; pdett: boolean);
var
  TempMs: TAstaUpdateMethod;
  TempDt: TAstaUpdateMethod;
  ms,dt: TAstaClientDataSet;
begin
    ms := TAstaClientDataSet(md.DataController.DataSet);
    dt := TAstaClientDataSet(dd.DataController.DataSet);
    if not ms.IsEmpty then
    begin
      md.DataController.BeginFullUpdate;
      dd.DataController.BeginFullUpdate;
      ms.DisableControls;
      dt.DisableControls;
      try
        TempMs := ms.UpdateMethod;
        TempDt := dt.UpdateMethod;
        ms.UpdateMethod := umManual;
        dt.UpdateMethod := umManual;
        try
          if pdett then
          begin
            dt.CancelRange;
            dt.SetRange([pk],[pk]);
            while not dt.IsEmpty do
                dt.Delete;
            dt.CancelRange;
          end;
          ms.Delete;
        finally
          ms.UpdateMethod := TempMs;
          dt.UpdateMethod := TempDt;
        end;
      finally
        dt.EnableControls;
        ms.EnableControls;
        md.DataController.EndFullUpdate;
        dd.DataController.EndFullUpdate;
      end;
    end;
end;

procedure TFBaseGrid.RefreshOperazione(md,dd: TcxGridDBTableView; pk: Integer);
begin
     RefreshOperazione(md,dd,pk,false,nil);
end;

procedure TFBaseGrid.RefreshOperazione(md,dd: TcxGridDBTableView; pk: Integer; pdett: boolean; xRefreshDettagli: TAstaClientDataSet);
var
  ms,dt: TAstaClientDataSet;
begin
    md.DataController.BeginFullUpdate;
    dd.DataController.BeginFullUpdate;
    ms := TAstaClientDataSet(md.DataController.DataSet);
    dt := TAstaClientDataSet(dd.DataController.DataSet);
    ms.DisableControls;
    dt.DisableControls;
    try
      ms.RefreshRecord;
      if pdett then
      begin
        dt.CancelRange;
        dt.SetRange([pk],[pk]);
        while not dt.IsEmpty do
          dt.Delete;
        xRefreshDettagli.Params[0].AsInteger := pk;
        xRefreshDettagli.syRefresh;
        dt.DataTransfer(xRefreshDettagli,true,true);
        dt.CancelRange;
      end;
    finally
      dt.EnableControls;
      ms.EnableControls;
      md.DataController.EndFullUpdate;
      dd.DataController.EndFullUpdate;
    end;
end;

procedure TFBaseGrid.rsXMLData1LoadFromStream(Sender: TObject;
  Stream: TStream; var DoStandard: Boolean);
begin
  FDMCommon.CaricaLayout(Name,Stream);
  DoStandard := false;

end;

procedure TFBaseGrid.rsXMLData1SaveToStream(Sender: TObject;
  Stream: TStream; var DoStandard: Boolean);
begin
  FDMCommon.SalvaPersonalizza(Name, Stream, gblCodUtente);
  DoStandard := false;

end;

procedure TFBaseGrid.Loaded;
begin
   inherited;
   rsStorage1.rootSection := Name;
   rsXMLData1.OnLoadFromStream := rsXMLData1LoadFromStream;
   rsXMLData1.OnSaveToStream := rsXMLData1SaveToStream;
end;

end.
