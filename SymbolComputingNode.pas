unit SymbolComputingNode;

interface

uses
  SimpleGraph, Classes;

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
    procedure WriteTensor(Writer: TWriter);
    procedure ReadTensor(Reader: TReader);
  protected
    procedure DefineProperties(Filer: TFiler); override;
  public
    FTensor: TTensorArray;
//    property Tensor: TTensorArray read FTensor write FTensor;
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

procedure TCircleBodyNode.DefineProperties(Filer: TFiler);
begin
  inherited DefineProperties(Filer);
  Filer.DefineProperty('Tensor', ReadTensor, WriteTensor, True);
end;

procedure TCircleBodyNode.WriteTensor(Writer: TWriter);
var
  V,W: Byte;
begin
  Writer.WriteListBegin;
  for V := 0 to 2 do
    for W := 0 to 2 do
      Writer.WriteString(FTensor[V,W]);
  Writer.WriteListEnd;
end;


procedure TCircleBodyNode.ReadTensor(Reader: TReader);
var
  V,W: Byte;
begin
  Reader.ReadListBegin;
  for V := 0 to 2 do
    for W := 0 to 2 do
      FTensor[V,W] := Reader.ReadString;
  Reader.ReadListEnd;
end;

initialization
  TSimpleGraph.Register(TCircleBodyNode);

finalization
  TSimpleGraph.Unregister(TCircleBodyNode);

end.

