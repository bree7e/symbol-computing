unit SymbolComputingNode;

interface

uses
  SimpleGraph;

type

  { TCircleBodyNode }

  TCircleBodyNode = class(TEllipticNode)
  public
    FOrderNumber: Byte;
    FMass: string;
    FRVCenter: string;
    FRVPoint: string;
    FSpeed: string;
    FAngleNumbers: string;
    FRotationAngles: string;
    FCoordinates: string;
    FTensor: array[0..2, 0..2] of string;
//    constructor Create;
//    class function GetNodeCount: Word;
  published
    property OrderNumber: Byte read FOrderNumber write FOrderNumber;
    FMass: string;
    FRVCenter: string;
    FRVPoint: string;
    FSpeed: string;
    FAngleNumbers: string;
    FRotationAngles: string;
    FCoordinates: string;
  end;

implementation

const
  NodeCount: Word = 0;

//function TCircleBodyNode.GetNodeCount: Word;
//begin
//  Result := NodeCount;
//end;

initialization
  TSimpleGraph.Register(TCircleBodyNode);

finalization
  TSimpleGraph.Unregister(TCircleBodyNode);

end.

