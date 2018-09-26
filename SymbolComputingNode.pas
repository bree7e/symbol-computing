unit SymbolComputingNode;

interface

uses SimpleGraph;

type

  { TCircleBodyNode }

  TCircleBodyNode = class(TEllipticNode)
  public
    isRoot: boolean;
    Mass: string;
    RVCenter: string;
    RVPoint: string;
    Speed: string;
    AngleNumbers: string;
    RotationAngles: string;
    Coordinates: string;
    Tensor: array[0..2,0..2] of string;
  end;

implementation


end.
