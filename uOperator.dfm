object fOperator: TfOperator
  Left = 0
  Top = 0
  Caption = #1040#1074#1090#1086#1073#1072#1079#1072
  ClientHeight = 616
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  DesignSize = (
    750
    616)
  PixelsPerInch = 96
  TextHeight = 13
  object dbgCars: TDBGrid
    Left = 0
    Top = 0
    Width = 569
    Height = 616
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataModule1.dsCars
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'Car'
        Title.Caption = #1052#1072#1096#1080#1085#1099
        Width = 100
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
        FieldName = 'Tonnage'
        Title.Alignment = taRightJustify
        Title.Caption = #1043#1088#1091#1079#1086#1087#1086#1076#1098#1077#1084#1085#1086#1089#1090#1100
        Visible = True
      end>
  end
  object pAdminFunc: TPanel
    Left = 568
    Top = 0
    Width = 182
    Height = 616
    Align = alRight
    TabOrder = 1
    object Label1: TLabel
      Left = 43
      Top = 6
      Width = 97
      Height = 16
      Caption = #1050' '#1087#1077#1088#1074#1086#1081' '#1079#1072#1087#1080#1089#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 43
      Top = 32
      Width = 130
      Height = 16
      Caption = #1050' '#1087#1088#1077#1076#1099#1076#1091#1097#1077#1081' '#1079#1072#1087#1080#1089#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 43
      Top = 64
      Width = 123
      Height = 16
      Caption = #1050' '#1089#1083#1077#1076#1091#1102#1097#1077#1081' '#1079#1072#1087#1080#1089#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 43
      Top = 94
      Width = 117
      Height = 16
      Caption = #1050' '#1087#1086#1089#1083#1077#1076#1085#1077#1081' '#1079#1072#1087#1080#1089#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 43
      Top = 123
      Width = 101
      Height = 16
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 43
      Top = 149
      Width = 92
      Height = 16
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 43
      Top = 176
      Width = 132
      Height = 16
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 43
      Top = 208
      Width = 125
      Height = 16
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1088#1077#1079#1091#1083#1100#1090#1072#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 43
      Top = 239
      Width = 57
      Height = 16
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 43
      Top = 267
      Width = 57
      Height = 16
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBN: TDBNavigator
      Left = 0
      Top = 0
      Width = 32
      Height = 290
      DataSource = DataModule1.dsRequest
      Kind = dbnVertical
      TabOrder = 0
    end
  end
  object dbgFlights: TDBGrid
    Left = 0
    Top = 0
    Width = 569
    Height = 616
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataModule1.dsFlights
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
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Driver'
        Title.Caption = #1042#1086#1076#1080#1090#1077#1083#1100
        Width = 100
        Visible = True
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
  object dbgNewRequests: TDBGrid
    Left = 0
    Top = 0
    Width = 569
    Height = 616
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataModule1.dsNewRequests
    TabOrder = 3
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
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Address'
        Title.Caption = #1040#1076#1088#1077#1089
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tonnage'
        Title.Caption = #1043#1088#1091#1079#1086#1087#1086#1076#1098#1077#1084#1085#1086#1089#1090#1100
        Visible = True
      end>
  end
  object dbgRequest: TDBGrid
    Left = 0
    Top = 0
    Width = 569
    Height = 616
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataModule1.dsRequest
    TabOrder = 4
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
        Title.Caption = #1042#1086#1076#1080#1090#1077#1083#1100
        Width = 70
        Visible = True
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
        FieldName = 'Message'
        Title.Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1086#1083#1086#1084#1082#1077
        Width = 130
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
  object dbgUsers: TDBGrid
    Left = 0
    Top = 0
    Width = 569
    Height = 616
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataModule1.dsUsers
    TabOrder = 5
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
        Title.Caption = #1042#1086#1076#1080#1090#1077#1083#1100
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Login'
        Title.Caption = #1051#1086#1075#1080#1085
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Password'
        Title.Caption = #1055#1072#1088#1086#1083#1100
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status'
        Title.Caption = #1057#1090#1072#1090#1091#1089
        Width = 150
        Visible = True
      end>
  end
  object MainMenu1: TMainMenu
    Left = 688
    Top = 528
    object N1: TMenuItem
      Caption = #1047#1072#1103#1074#1082#1080
      object N2: TMenuItem
        Caption = #1056#1077#1084#1086#1085#1090
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1044#1086#1089#1090#1072#1074#1082#1072
        OnClick = N3Click
      end
    end
    object N4: TMenuItem
      Caption = #1042#1086#1076#1080#1090#1077#1083#1080
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #1040#1074#1090#1086#1084#1086#1073#1080#1083#1080
      OnClick = N5Click
    end
    object N6: TMenuItem
      Caption = #1056#1077#1081#1089#1099
      OnClick = N6Click
    end
  end
end
