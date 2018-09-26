unit GeneralDecription;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TGeneralDescriptionForm = class(TForm)
    RadioGroupPotentialForces: TRadioGroup;
    EditDirection: TEdit;
    EditAdditionalPotentialForces: TEdit;
    EditRelayFunction: TEdit;
    EditNonPotentialForces: TEdit;
    lblMass: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    btnOK: TButton;
    btnCancel: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GeneralDescriptionForm: TGeneralDescriptionForm;

implementation

{$R *.dfm}

end.
