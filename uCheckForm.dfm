object fCheck: TfCheck
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1042#1093#1086#1076' '#1074' '#1089#1080#1089#1090#1077#1084#1091
  ClientHeight = 173
  ClientWidth = 265
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 64
    Top = 24
    Width = 34
    Height = 14
    Caption = #1051#1086#1075#1080#1085
  end
  object Label2: TLabel
    Left = 64
    Top = 70
    Width = 41
    Height = 14
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object eLogin: TEdit
    Left = 64
    Top = 43
    Width = 121
    Height = 22
    TabOrder = 0
    Text = 'Voitov'
  end
  object ePassword: TEdit
    Left = 64
    Top = 89
    Width = 121
    Height = 22
    TabOrder = 1
    Text = '2222'
  end
  object bEnter: TButton
    Left = 64
    Top = 122
    Width = 75
    Height = 25
    Caption = #1042#1074#1086#1076
    TabOrder = 2
    OnClick = bEnterClick
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\AVP\Deskto' +
      'p\Delphi\'#1087#1086' '#1082#1083#1072#1089#1089#1072#1084'\19\Win32\Debug\Request.mdb;Persist Security ' +
      'Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 168
    Top = 184
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery
    Left = 104
    Top = 184
  end
  object ADOQuery: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM [Users] ORDER BY Driver')
    Left = 40
    Top = 184
  end
end
