unit SymbolComputingNode;

interface

uses
  SimpleGraph;

type

  { TCircleBodyNode }

  TCircleBodyNode = class(TEllipticNode)
  public
    OrderNumber: Byte;
    Mass: string;
    RVCenter: string;
    RVPoint: string;
    Speed: string;
    AngleNumbers: string;
    RotationAngles: string;
    Coordinates: string;
    Tensor: array[0..2, 0..2] of string;
//    constructor Create;
//    class function GetNodeCount: Word;
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

