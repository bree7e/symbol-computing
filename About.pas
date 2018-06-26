unit About;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TAbout = class(TForm)
    Bevel1: TBevel;
    btnOk: TButton;
    Label1: TLabel;
    Shape1: TShape;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
  end;


implementation

{$R *.dfm}

procedure TAbout.FormCreate(Sender: TObject);
begin
  SetBounds(Screen.Width - Width - 30, 50, Width, Height);
end;

end.
