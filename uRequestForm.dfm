object fRequest: TfRequest
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1047#1072#1103#1074#1082#1072' '#1085#1072' '#1088#1077#1084#1086#1085#1090
  ClientHeight = 180
  ClientWidth = 346
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 45
    Top = 46
    Width = 61
    Height = 13
    Caption = #1040#1074#1090#1086#1084#1086#1073#1080#1083#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 45
    Top = 73
    Width = 52
    Height = 26
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1087#1086#1083#1086#1084#1082#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object bSendRequest: TButton
    Left = 120
    Top = 134
    Width = 75
    Height = 25
    Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 0
  end
  object dbeDriver: TDBEdit
    Left = 120
    Top = 0
    Width = 177
    Height = 21
    DataField = 'Driver'
    DataSource = fDriver.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
  end
  object dbeCar: TDBEdit
    Left = 120
    Top = 43
    Width = 177
    Height = 21
    DataField = 'Car'
    DataSource = fDriver.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object dbeMessage: TDBEdit
    Left = 120
    Top = 70
    Width = 177
    Height = 21
    DataField = 'Message'
    DataSource = fDriver.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object dbeStatus: TDBEdit
    Left = 120
    Top = 99
    Width = 177
    Height = 21
    DataField = 'Status'
    DataSource = fDriver.DataSource1
    ReadOnly = True
    TabOrder = 4
    Visible = False
  end
  object bCancel: TButton
    Left = 219
    Top = 135
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = bCancelClick
  end
end
