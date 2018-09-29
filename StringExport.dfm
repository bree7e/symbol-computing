object ExportStringForm: TExportStringForm
  Left = 735
  Top = 327
  Width = 578
  Height = 406
  Caption = #1069#1082#1089#1087#1086#1088#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    562
    367)
  PixelsPerInch = 96
  TextHeight = 13
  object btnCancel: TButton
    Left = 308
    Top = 332
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = #1047#1072#1082#1088#1099#1090#1100
    ModalResult = 1
    TabOrder = 0
  end
  object MainMemo: TMemo
    Left = 0
    Top = 0
    Width = 562
    Height = 323
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvSpace
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Consolas'
    Font.Style = []
    Lines.Strings = (
      'MainMemo')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object btnSaveToFile: TButton
    Left = 168
    Top = 332
    Width = 127
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' '#1092#1072#1081#1083
    ModalResult = 1
    TabOrder = 2
    OnClick = btnSaveToFileClick
  end
  object dlgSaveString: TSaveDialog
    DefaultExt = 'txt'
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1077' '#1092#1072#1081#1083#1099'|*.txt'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 16
    Top = 328
  end
end
