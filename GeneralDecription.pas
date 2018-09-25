unit GeneralDecription;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TGeneralDescription = class(TForm)
    RadioGroupPotentialForces: TRadioGroup;
    lblMass: TLabel;
    EditDirection: TEdit;
    lbl1: TLabel;
    EditAdditionalPotentialForces: TEdit;
    lbl2: TLabel;
    EditRelayFunction: TEdit;
    lbl3: TLabel;
    EditNonPotentialForces: TEdit;
    btnOK: TButton;
    btnCancel: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GeneralDescription: TGeneralDescription;

implementation

{$R *.dfm}

end.
