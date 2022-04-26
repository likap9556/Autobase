object fDriver: TfDriver
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akBottom]
  Caption = #1051#1080#1095#1085#1099#1081' '#1082#1072#1073#1080#1085#1077#1090
  ClientHeight = 606
  ClientWidth = 753
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    753
    606)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 569
    Top = 49
    Width = 123
    Height = 16
    Caption = #1057#1084#1077#1085#1072' '#1089#1090#1072#1090#1091#1089#1072' '#1088#1077#1081#1089#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object pMenu: TPanel
    Left = 0
    Top = 0
    Width = 753
    Height = 33
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 487
    DesignSize = (
      753
      33)
    object lDriver: TLabel
      Left = 224
      Top = 8
      Width = 31
      Height = 13
      Caption = 'lDriver'
    end
    object bMyFlight: TButton
      Left = 5
      Top = 3
      Width = 75
      Height = 25
      Caption = #1052#1086#1080' '#1088#1077#1081#1089#1099
      TabOrder = 0
      OnClick = bMyFlightClick
    end
    object bMyRequest: TButton
      Left = 86
      Top = 3
      Width = 75
      Height = 25
      Caption = #1052#1086#1080' '#1079#1072#1103#1074#1082#1080
      TabOrder = 1
      OnClick = bMyRequestClick
    end
    object bNewRequest: TButton
      Left = 569
      Top = 3
      Width = 175
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1054#1092#1086#1088#1084#1080#1090#1100' '#1079#1072#1103#1074#1082#1091' '#1085#1072' '#1088#1077#1084#1086#1085#1090
      TabOrder = 2
      OnClick = bNewRequestClick
      ExplicitLeft = 303
    end
  end
  object dbgMyRequests: TDBGrid
    Left = 0
    Top = 33
    Width = 753
    Height = 573
    Align = alClient
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = #1050#1086#1076
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Driver'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Car'
        Title.Caption = #1052#1072#1096#1080#1085#1072
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Message'
        Title.Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1086#1083#1086#1084#1082#1077
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status'
        Title.Caption = #1057#1090#1072#1090#1091#1089
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ReqNumber'
        Visible = False
      end>
  end
  object dbgMyFlights: TDBGrid
    Left = 0
    Top = 34
    Width = 521
    Height = 573
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource2
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = #1050#1086#1076
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Address'
        Title.Caption = #1040#1076#1088#1077#1089
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tonnage'
        Title.Caption = #1043#1088#1091#1079#1086#1087#1086#1076#1098#1077#1084#1085#1086#1089#1090#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Driver'
        Title.Caption = #1042#1086#1076#1080#1090#1077#1083#1100
        Width = -1
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Car'
        Title.Caption = #1052#1072#1096#1080#1085#1072
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status'
        Title.Caption = #1057#1090#1072#1090#1091#1089
        Width = 100
        Visible = True
      end>
  end
  object dbcbStatus: TDBComboBox
    Left = 527
    Top = 71
    Width = 218
    Height = 21
    DataField = 'Status'
    DataSource = DataSource2
    Items.Strings = (
      #1042' '#1088#1072#1073#1086#1090#1077
      #1047#1072#1074#1077#1088#1096#1077#1085
      #1042#1086#1079#1085#1080#1082#1083#1080' '#1087#1088#1086#1073#1083#1077#1084#1099)
    TabOrder = 3
    Visible = False
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\AVP\Desktop\Delphi\'#1087#1086' '#1082#1083#1072#1089#1089#1072#1084'\19\Win32\Debug\Request.mdb;Mod' +
      'e=Share Deny None;Persist Security Info=False;Jet OLEDB:System d' +
      'atabase="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Passwor' +
      'd="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;J' +
      'et OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transac' +
      'tions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create Syst' +
      'em Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don' +
      #39't Copy Locale on Compact=False;Jet OLEDB:Compact Without Replic' +
      'a Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 704
    Top = 317
  end
  object ADORequests: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filtered = True
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM [Request] ORDER BY Driver')
    Left = 632
    Top = 357
  end
  object DataSource1: TDataSource
    DataSet = ADORequests
    Left = 568
    Top = 357
  end
  object ADOFlidhts: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filtered = True
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM [Flights] ORDER BY Driver')
    Left = 632
    Top = 301
  end
  object DataSource2: TDataSource
    DataSet = ADOFlidhts
    Left = 568
    Top = 301
  end
end
