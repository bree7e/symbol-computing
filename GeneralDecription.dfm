object GeneralDescriptionForm: TGeneralDescriptionForm
  Left = 970
  Top = 318
  Width = 374
  Height = 424
  Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1084#1077#1093#1072#1085#1080#1095#1077#1089#1082#1086#1081' '#1089#1080#1089#1090#1077#1084#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    358
    385)
  PixelsPerInch = 96
  TextHeight = 13
  object lblMass: TLabel
    Left = 16
    Top = 129
    Width = 273
    Height = 13
    Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1076#1077#1081#1089#1090#1074#1080#1103' '#1087#1086#1083#1103' '#1089#1080#1083' '#1087#1086#1089#1090#1086#1103#1085#1085#1086#1081' '#1090#1103#1078#1077#1089#1090#1080
  end
  object lbl1: TLabel
    Left = 16
    Top = 177
    Width = 199
    Height = 13
    Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1087#1086#1090#1077#1085#1094#1080#1072#1083#1100#1085#1099#1077' '#1089#1080#1083#1099
  end
  object lbl2: TLabel
    Left = 16
    Top = 233
    Width = 80
    Height = 13
    Caption = #1060#1091#1085#1082#1094#1080#1103' '#1056#1077#1083#1077#1103
  end
  object lbl3: TLabel
    Left = 16
    Top = 289
    Width = 216
    Height = 13
    Caption = #1053#1077#1087#1086#1090#1077#1085#1094#1080#1072#1083#1100#1085#1099#1077' '#1085#1077#1076#1080#1089#1089#1080#1087#1072#1090#1080#1074#1085#1099#1077' '#1089#1080#1083#1099
  end
  object RadioGroupPotentialForces: TRadioGroup
    Left = 16
    Top = 16
    Width = 321
    Height = 105
    Caption = #1055#1086#1090#1077#1085#1094#1080#1072#1083#1100#1085#1099#1077' '#1089#1080#1083#1099', '#1076#1077#1081#1089#1090#1074#1091#1102#1097#1080#1077' '#1085#1072' '#1089#1080#1089#1090#1077#1084#1091
    ItemIndex = 0
    Items.Strings = (
      #1055#1086#1083#1077' '#1089#1080#1083' '#1087#1086#1089#1090#1086#1103#1085#1085#1086#1081' '#1090#1103#1078#1077#1089#1090#1080
      #1062#1077#1085#1090#1088#1072#1083#1100#1085#1086#1077' '#1085#1100#1102#1090#1086#1085#1086#1074#1089#1082#1086#1077' '#1087#1086#1083#1077' '#1090#1103#1075#1086#1090#1077#1085#1080#1103
      #1057#1080#1083#1086#1074#1086#1077' '#1087#1086#1083#1077' '#1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090)
    TabOrder = 0
  end
  object EditDirection: TEdit
    Left = 16
    Top = 145
    Width = 321
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object EditAdditionalPotentialForces: TEdit
    Left = 16
    Top = 193
    Width = 321
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object EditRelayFunction: TEdit
    Left = 16
    Top = 249
    Width = 321
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object EditNonPotentialForces: TEdit
    Left = 16
    Top = 305
    Width = 321
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object btnOK: TButton
    Left = 180
    Top = 344
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 5
  end
  object btnCancel: TButton
    Left = 263
    Top = 344
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 6
  end
end
