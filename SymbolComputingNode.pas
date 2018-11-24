unit SymbolComputingNode;

interface

uses
  SimpleGraph;

type
  TTensorArray = array[0..2, 0..2] of string;

type

  { TCircleBodyNode }

  TCircleBodyNode = class(TEllipticNode)
  private
    FOrderNumber: Byte;
    FMass: string;
    FRVCenter: string;
    FRVPoint: string;
    FSpeed: string;
    FAngleNumbers: string;
    FRotationAngles: string;
    FCoordinates: string;
    procedure SetTensor(Value: TTensorArray);
    function GetTensor(): TTensorArray;
  public
    FTensor: TTensorArray;
  published
    property OrderNumber: Byte read FOrderNumber write FOrderNumber;
    property Mass: string read FMass write FMass;
    property RVCenter: string read FRVCenter write FRVCenter;
    property RVPoint: string read FRVPoint write FRVPoint;
    property Speed: string read FSpeed write FSpeed;
    property AngleNumbers: string read FAngleNumbers write FAngleNumbers;
    property RotationAngles: string read FRotationAngles write FRotationAngles;
    property Coordinates: string read FCoordinates write FCoordinates;
  end;

implementation

const
  NodeCount: Word = 0;

procedure TCircleBodyNode.SetTensor(Value: TTensorArray);
var
  V,W: Byte;
  S: string;
begin
  S := '';
  for V := 0 to 2 do
    for W := 0 to 2 do
      FTensor[V,W] := FTensor[V,W];
end;


function TCircleBodyNode.GetTensor: TTensorArray;
var
  V,W: Byte;
  S: string;
begin
  S := '';
  for V := 0 to 2 do
    for W := 0 to 2 do
      S := FTensor[V,W];
end;

initialization
  TSimpleGraph.Register(TCircleBodyNode);

finalization
  TSimpleGraph.Unregister(TCircleBodyNode);

end.

//      for V := 0 to 2 do
//        for W := 0 to 2 do
//          StringGridTensor.Cells[W,V] := FTensor[V,W];


//function ArrayToString(const Data: array of string): string;
//var
//  SL: TStringList;
//  S: string;
//begin
//  SL := TStringList.Create;
//  try
//    for S in Data do
//      SL.Add(S);
//    Result := SL.Text;
//  finally
//    SL.Free;
//  end;
//end;

