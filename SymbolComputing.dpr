program GraphEditor;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  DesignProp in 'DesignProp.pas' {DesignerProperties},
  ObjectProp in 'ObjectProp.pas' {ObjectProperties},
  LinkProp in 'LinkProp.pas' {LinkProperties},
  NodeProp in 'NodeProp.pas' {NodeProperties},
  About in 'About.pas' {About},
  UsageHelp in 'UsageHelp.pas' {HelpOnActions},
  MarginsProp in 'MarginsProp.pas' {MarginDialog},
  AlignDlg in 'AlignDlg.pas' {AlignDialog},
  SizeDlg in 'SizeDlg.pas' {SizeDialog},
  StringExport in 'StringExport.pas' {ExportStringForm},
  SymbolComputingNode in 'SymbolComputingNode.pas',
  GeneralDecription in 'GeneralDecription.pas' {GeneralDescription};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Symbolic Computing For Mechanical System';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TExportStringForm, ExportStringForm);
  Application.CreateForm(TGeneralDescription, GeneralDescription);
  Application.Run;
end.
