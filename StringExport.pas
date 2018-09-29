unit StringExport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TExportStringForm = class(TForm)
    btnCancel: TButton;
    MainMemo: TMemo;
    btnSaveToFile: TButton;
    dlgSaveString: TSaveDialog;
    procedure btnSaveToFileClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SetString (AData: TStrings);
  end;

var
  ExportStringForm: TExportStringForm;

implementation

{$R *.dfm}

procedure TExportStringForm.SetString(AData: TStrings);
begin
  MainMemo.Lines := AData;
end ;

procedure TExportStringForm.btnSaveToFileClick(Sender: TObject);
begin
  if dlgSaveString.Execute then
  begin
    MainMemo.Lines.SaveToFile(dlgSaveString.FileName);
  end;
end;

end.
