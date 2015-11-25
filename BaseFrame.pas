unit BaseFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  dxBar, AstaDrv2, AstaClientDataset, IInterface, IIConsts, rsStorage,
  rsXmlData;

type
{
  TPaziente = record
    cognome: string;
    nome: string;
    data_nascita: TDateTime;
    telefono: string;
    pkass: integer;
  end;
}
  TFrameProperty = record
//   Paz: TPaziente;
   vTIPO: integer;
   vCodici: string;
   NrEsami: integer;
   vRighe: string;
//   vServizi: integer;
   vStrServizi: string;
   vRadiologia: integer;
   Titolo: string;
   vDurata: integer;
   NumberOfDays: integer;
   ZoomPos: integer;
   ZoomValue: integer;   
   Preno: TAstaDataSet;
   Richiesti: TAstaDataSet;
   Materiali: TAstaDataSet;
   AltriPresidi: integer;
   xIntervallo: integer;
   Telefonica: integer;
  end;

  TSyFrame = class;

  TSyFrameList = class(TList)
     private
       function GetItems(AIndex: Integer): TSyFrame;
       procedure SetItems(AIndex: Integer; AItem: TSyFrame);
     public
       constructor Create;
       destructor Destroy; override;
       function Add(AItem: TSyFrame): Integer;
       procedure Clear; override;
       function CanClose: boolean;
       function Extract(AItem: TSyFrame): TSyFrame;
       function First: TSyFrame;
       function IndexOf(AItem: TSyFrame): Integer;
       procedure Insert(AIndex: Integer; AItem: TSyFrame);
       function Last: TSyFrame;
       function Remove(AItem: TSyFrame): boolean;
       property Items[AIndex: Integer]: TSyFrame read GetItems write SetItems; default;
    end;

  TSyFrame = class(TFrame)
    rsStorage1: TrsStorage;
    rsXMLData1: TrsXMLData;
    procedure rsXMLData1LoadFromStream(Sender: TObject; Stream: TStream;
      var DoStandard: Boolean);
    procedure rsXMLData1SaveToStream(Sender: TObject; Stream: TStream;
      var DoStandard: Boolean);
  private
    { Private declarations }
     FinDragDrop: boolean;
     FDay: TDateTime;
     procedure RefreshAlert(var Message: TMessage); message SY_REFRESHALERT;
  protected
     function GetDay: TDateTime; {virtual; {abstract;}
     procedure SetDay(Value: TDateTime); virtual; {abstract;}
     function GetNumberofDays: integer; virtual; {abstract;}
     procedure SetNumberofDays(Value: integer); virtual; {abstract;}
     procedure SetZoomPos(Value: integer); virtual; {abstract;}
  public
    { Public declarations }
     Intfp: TFrameProperty;
     vTipo: integer;
     vCodici: string;
     vNrEsami: integer;
     vRighe: string;
//     vServizi: integer;
     vStrServizi: string;
     vRadiologia: integer;
     fConEsami: boolean;
     fBloccate: boolean;
     fAltreRichieste: boolean;
     fAttivita: string;
     fOspRich: string;
     fAgendeEsclusive: boolean;
     fSoloLibere: boolean;
     fAncheInterni: boolean;
     fCopiaVisibile: boolean;
     InternalIndex: integer;
     Minimized: boolean;
     vdurata: integer;
     xIntervallo: integer;
     xCambiaSomministrazione: boolean;
     constructor Create(AOwner: TComponent); override;
     function CanClose: boolean; virtual;
     procedure Minimizza; virtual; abstract;
     procedure Massimizza; virtual; abstract;
     procedure ApriClient(xBarManager: TdxBarManager; fp: TFrameProperty); virtual; abstract;
     procedure FrameResize(xHeight,xWidth: integer); virtual; abstract;
     function Sincronizza(xData: TDateTime; conRefresh: boolean): integer; virtual; abstract;
     procedure xSetFocus; virtual; abstract;
     procedure RefreshCalendari; virtual; abstract;
     function CercaInCalendari(xdurata: integer; xStartNow: TDateTime = 0): boolean; virtual; abstract;
     function RegistraCaricamento: integer; virtual; abstract;
     procedure AnnullaPrenotazioni; virtual; abstract;
     procedure ConfermaPrenotazioni(pkimp: integer); virtual; abstract;
     function RegistrazioneInCorso: boolean; virtual; abstract;
     procedure SelezionaPreno(const xpktriage: string); virtual; abstract;
     procedure SpostaInMemoria; virtual; abstract;
     procedure SendPortDataToForm(const s: string; lungh: integer); virtual; abstract;
     procedure SetZoomValue(ZoomValue,ZoomPos: integer); virtual; abstract;
     procedure RiPrenota(const xCaption: string; xrep: integer; xdata: TDateTime); virtual; abstract;
     procedure SelectActualCells; virtual; abstract;

     property xDay: TDateTime read GetDay write SetDay;
     property NumberofDays: integer read GetNumberofDays write SetNumberofDays;
     property xZoomPos: integer write SetZoomPos;
     property InDragDrop: boolean read FinDragDrop write FinDragDrop;
  end;

implementation
uses kseventclient, DMCommon;

{$R *.dfm}

constructor TSyFrameList.Create;
begin
    inherited Create;
end;

destructor TSyFrameList.Destroy;
begin
    Clear;
    inherited Destroy;
end;

procedure TSyFrameList.Clear;
var
    I: Integer;
begin
    for I := Count - 1 downto 0 do
    begin
        Items[I].Visible := false;
        try
        Items[I].Free;
        except
        end;
//        Delete(I);
    end;

    inherited Clear;
end;

function TSyFrameList.CanClose: boolean;
var
    I: Integer;
begin
    result := true;
    I := Count - 1;
    while result and (I>=0) do
    begin
        result := Items[I].CanClose;
        dec(I);
    end;
end;

function TSyFrameList.Add(AItem: TSyFrame): Integer;
begin
    Result := inherited Add(Pointer(AItem));
end;

function TSyFrameList.Extract(AItem: TSyFrame): TSyFrame;
begin
    Result := TSyFrame(inherited Extract(AItem));
end;

function TSyFrameList.First: TSyFrame;
begin
    Result := TSyFrame(inherited First);
end;

function TSyFrameList.IndexOf(AItem: TSyFrame): Integer;
begin
    Result := inherited IndexOf(Pointer(AItem));
end;

procedure TSyFrameList.Insert(AIndex: Integer; AItem: TSyFrame);
begin
    inherited Insert(AIndex, Pointer(AItem));
end;

function TSyFrameList.Last: TSyFrame;
begin
    Result := TSyFrame(inherited Last);
end;

function TSyFrameList.Remove(AItem: TSyFrame): boolean;
var
  x: integer;
begin
    if AItem.CanClose then
    begin
      AItem.Visible := false;
      AItem.Free;
      inherited Remove(Pointer(AItem));
      for x:=0 to Count-1 do
        TSyFrame(Items[x]).InternalIndex := x;
      result := true;
    end
    else
      result := false;
end;

function TSyFrameList.GetItems(AIndex: Integer): TSyFrame;
begin
    Result := TSyFrame(inherited Items[AIndex]);
end;

procedure TSyFrameList.SetItems(AIndex: Integer; AItem: TSyFrame);
begin
    inherited Items[AIndex] := Pointer(AItem);
end;


constructor TSyFrame.Create(AOwner: TComponent);
begin
  inherited;
  FinDragDrop := false;
end;

function TSyFrame.CanClose: boolean;
begin
  result := true;
end;

function TSyFrame.GetDay: TDateTime;
begin
  result := FDay;
end;

procedure TSyFrame.SetDay(Value: TDateTime);
begin
  FDay := Value;
end;

procedure TSyFrame.RefreshAlert(var Message: TMessage);
begin
   TKSAstaEventClient(Message.LParam).IdleRefresh;
end;

function TSyFrame.GetNumberofDays: integer;
begin
  result := 0;
end;

procedure TSyFrame.SetNumberofDays(Value: integer);
begin
end;

procedure TSyFrame.SetZoomPos(Value: integer);
begin
end;

procedure TSyFrame.rsXMLData1LoadFromStream(Sender: TObject;
  Stream: TStream; var DoStandard: Boolean);
begin
  FDMCommon.CaricaLayout(Name,Stream);
  DoStandard := false;
end;

procedure TSyFrame.rsXMLData1SaveToStream(Sender: TObject; Stream: TStream;
  var DoStandard: Boolean);
begin
  FDMCommon.SalvaPersonalizza(Name, Stream, gblCodUtente);
  DoStandard := false;
end;

end.
