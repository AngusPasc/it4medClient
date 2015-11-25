unit uVbDiagnList;

interface
uses Contnrs,{Classes,}dxBar;

type
  TvbDiagnList = class
  private
    FItemLinks: TdxBarItem;
  protected
    fList: TObjectList;
    function GetItems(_Idx: integer): TdxBarButton;
  public
    constructor Create;
    destructor Destroy; override;
    function Add(_Item: TdxBarButton): integer;
    function Count: integer;
    procedure Clear;
    property Items[_Idx: integer]: TdxBarButton read GetItems; default;
    property ItemLinks: TdxBarItem read FItemLinks write FItemLinks;
  end;


implementation

constructor TvbDiagnList.Create;
begin
  inherited Create;
  fList := TObjectList.Create;
  FItemLinks := nil;
end;

destructor TvbDiagnList.Destroy;
begin
try
  fList.Free;
  inherited;
except
  // -- errore in distruzione bottoni creati a runtime !!!
end;
end;

function TvbDiagnList.Add(_Item: TdxBarButton): integer;
begin
  Result := fList.Add(_Item);
end;

function TvbDiagnList.GetItems(_Idx: integer): TdxBarButton;
begin
  Result := fList[_Idx] as TdxBarButton;
end;

procedure TvbDiagnList.Clear;
var
  i: integer;
begin
try
{ -- serve ancora ???
  if ItemLinks<>nil then
     for i:=0 to fList.Count-1 do
         ItemLinks.DestroyLink(fList[i] as TdxBarButton);
}
  fList.Clear;
except
end;
end;

function TvbDiagnList.Count: integer;
begin
  result := fList.Count;
end;

end.
