unit NodeProp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, SimpleGraph, ExtCtrls, StdCtrls, ComCtrls, ExtDlgs, CheckLst,
  Grids, SymbolComputingNode;

type
  TNodeProperties = class(TForm)
    btnChangeFont: TButton;
    btnOK: TButton;
    btnCancel: TButton;
    FontDialog: TFontDialog;
    btnApply: TButton;
    AllOptions: TCheckListBox;
    LabelMass: TLabel;
    EditMass: TEdit;
    EditRVPoint: TEdit;
    Label1: TLabel;
    EditRVCenter: TEdit;
    Label2: TLabel;
    EditSpeed: TEdit;
    Label3: TLabel;
    EditAngleNumbers: TEdit;
    Label4: TLabel;
    EditAngls: TEdit;
    Label8: TLabel;
    EditCoordinates: TEdit;
    Label9: TLabel;
    GroupBoxTensor: TGroupBox;
    StringGridTensor: TStringGrid;
    LabelNumber: TLabel;
    EditNumber: TEdit;
    procedure NodeBodyColorClick(Sender: TObject);
    procedure NodeBorderColorClick(Sender: TObject);
    procedure btnChangeFontClick(Sender: TObject);
    procedure btnChangBkgndClick(Sender: TObject);
    procedure btnClearBackgroundClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBackgroundMarginsClick(Sender: TObject);
  private
    Backgnd: Integer;
    S: TSimpleGraph;
    N: TGraphObjectList; // w2m - for apply button
    MarginRect: TRect;
    procedure ListRegistredNodeClasses;
    procedure ApplyChanges;
    procedure SetObjectOptions(Value: TGraphObjectOptions);
    function GetObjectOptions: TGraphObjectOptions;
    procedure SetNodeOptions(Value: TGraphNodeOptions);
    function GetNodeOptions: TGraphNodeOptions;
  public
    class function Execute(Nodes: TGraphObjectList): Boolean;
  end;

function PrettyNodeClassName(const AClassName: string): string;

implementation

uses MarginsProp;

{$R *.dfm}

function PrettyNodeClassName(const AClassName: string): string;
var
  I: Integer;
begin
  Result := '';
  for I := 2 to Length(AClassName) do
  begin
    if(UpCase(AClassName[I]) = AClassName[I]) and (Result <> '') then
      Result := Result + ' ' + AClassName[I]
    else
      Result := Result + AClassName[I]
  end;
  Result := StringReplace(Result, ' Node', '', []);
end;

{ TNodeProperties }

class function TNodeProperties.Execute(Nodes: TGraphObjectList): Boolean;
var
  V,W: Byte;
  PrevNode: Integer;
begin
  Result := False;
  with Create(Application) do
  try
    N := Nodes;
    ListRegistredNodeClasses;
    Nodes[0].LinkInputCount;
    with TCircleBodyNode(Nodes[0]) do
    begin
      S := Owner;
      PrevNode := -1;
      if LinkInputCount > 0 then
        PrevNode := TCircleBodyNode(LinkInputs[0].Source).OrderNumber;
      if (LinkInputCount = 0) and (LinkOutputCount > 0) then
        PrevNode := 0;
      EditNumber.Text := IntToStr(PrevNode);
      FontDialog.Font := Font;
      MarginRect := BackgroundMargins;
      SetObjectOptions(Options);
      SetNodeOptions(NodeOptions);
      EditMass.Text := Mass;
      EditRVCenter.Text := RVCenter;
      EditRVPoint.Text := RVPoint;
      EditSpeed.Text := Speed;
      EditAngleNumbers.Text := AngleNumbers;
      EditAngls.Text := RotationAngles;
      EditCoordinates.Text := Coordinates;
      for V := 0 to 2 do
        for W := 0 to 2 do
          StringGridTensor.Cells[W,V] := FTensor[V,W];
    end;
    if ShowModal = mrOK then
    begin
      ApplyChanges;
      Result := True;
    end;
  finally
    Free;
  end;
end;

procedure TNodeProperties.ListRegistredNodeClasses;
var
  I: Integer;
//  NodeClass: TGraphNodeClass;
begin
  for I := 0 to TSimpleGraph.NodeClassCount - 1 do
  begin
//    NodeClass := TSimpleGraph.NodeClasses(I);
//    NodeShape.Items.AddObject(PrettyNodeClassName(NodeClass.ClassName),
//      TObject(NodeClass));
  end;
end;

procedure TNodeProperties.ApplyChanges;
var
  I: Integer;
  V,W: Byte;
begin
  S.BeginUpdate;
  try
    for I := 0 to N.Count - 1 do
      with TCircleBodyNode(N[I]) do
      begin
        BeginUpdate;
        try
//          case cbAlignment.ItemIndex of
//            0: Alignment := taLeftJustify;
//            1: Alignment := taCenter;
//            2: Alignment := taRightJustify;
//          end;
//          case cbLayout.ItemIndex of
//            0: Layout := tlTop;
//            1: Layout := tlCenter;
//            2: Layout := tlBottom;
//          end;
//          Margin := UpDownMargin.Position;
//          Text := NodeText.Lines.Text;
          Text := IntToStr(OrderNumber);
          Mass := EditMass.Text;
          RVCenter := EditRVCenter.Text;
          RVPoint := EditRVPoint.Text;
          Speed := EditSpeed.Text;
          AngleNumbers := EditAngleNumbers.Text;
          RotationAngles := EditAngls.Text;
          Coordinates := EditCoordinates.Text;
          for V := 0 to 2 do begin
            for W := 0 to 2 do
              FTensor[W,V] := StringGridTensor.Cells[V,W];
          end;

//          Brush.Color := BodyColor.Brush.Color;
//          Pen.Color := BorderColor.Brush.Color;
//          Brush.Style := TBrushStyle(FillStyle.ItemIndex);
//          Pen.Style := TPenStyle(BorderStyle.ItemIndex);
          
          Font := FontDialog.Font;
          if Backgnd = 1 then
//            Background.LoadFromFile(OpenPictureDialog.FileName)
          else if Backgnd = 2 then
            Background.Graphic := nil;
          BackgroundMargins := MarginRect;
          Options := GetObjectOptions;
          NodeOptions := GetNodeOptions;
          S.Modified := True;
        finally
          EndUpdate;
        end;
//        if NodeShape.ItemIndex >= 0 then
//          ConvertTo(TSimpleGraph.NodeClasses(NodeShape.ItemIndex));
      end;
  finally
    S.EndUpdate;
    Backgnd := 0;
  end;
end;

procedure TNodeProperties.NodeBodyColorClick(Sender: TObject);
begin
//  ColorDialog.Color := BodyColor.Brush.Color;
//  if ColorDialog.Execute then
//    BodyColor.Brush.Color := ColorDialog.Color;
end;

procedure TNodeProperties.NodeBorderColorClick(Sender: TObject);
begin
//  ColorDialog.Color := BorderColor.Brush.Color;
//  if ColorDialog.Execute then
//    BorderColor.Brush.Color := ColorDialog.Color;
end;

procedure TNodeProperties.btnChangeFontClick(Sender: TObject);
begin
  FontDialog.Execute;
end;

procedure TNodeProperties.btnChangBkgndClick(Sender: TObject);
begin
//  if OpenPictureDialog.Execute then
    Backgnd := 1;
end;

procedure TNodeProperties.btnClearBackgroundClick(Sender: TObject);
begin
  Backgnd := 2;
end;

procedure TNodeProperties.btnApplyClick(Sender: TObject);
begin
  ApplyChanges;
end;

procedure TNodeProperties.FormCreate(Sender: TObject);
begin
  SetBounds(Screen.Width - Width - 30, 50, Width, Height);
end;

function TNodeProperties.GetObjectOptions: TGraphObjectOptions;
var
  Option: TGraphObjectOption;
begin
  Result := [];
  for Option := Low(TGraphObjectOption) to High(TGraphObjectOption) do
    if AllOptions.Checked[Ord(Option)] then
      Include(Result, Option);
end;

procedure TNodeProperties.SetObjectOptions(Value: TGraphObjectOptions);
var
  Option: TGraphObjectOption;
begin
  for Option := Low(TGraphObjectOption) to High(TGraphObjectOption) do
    AllOptions.Checked[Ord(Option)] := Option in Value;
end;

function TNodeProperties.GetNodeOptions: TGraphNodeOptions;
var
  Option: TGraphNodeOption;
begin
  Result := [];
  for Option := Low(TGraphNodeOption) to High(TGraphNodeOption) do
    if AllOptions.Checked[Ord(Option) + Ord(High(TGraphObjectOption)) + 1] then
      Include(Result, Option);
end;

procedure TNodeProperties.SetNodeOptions(Value: TGraphNodeOptions);
var
  Option: TGraphNodeOption;
begin
  for Option := Low(TGraphNodeOption) to High(TGraphNodeOption) do
    AllOptions.Checked[Ord(Option) + Ord(High(TGraphObjectOption)) + 1] := Option in Value;
end;

procedure TNodeProperties.btnBackgroundMarginsClick(Sender: TObject);
begin
  TMarginDialog.Execute(MarginRect);
end;

end.

