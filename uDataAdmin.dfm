object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 360
  Width = 413
  object adoCars: TADOQuery
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM [Cars]')
    Left = 163
    Top = 16
  end
  object adoFlights: TADOQuery
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM [Flights]')
    Left = 163
    Top = 72
  end
  object adoRequest: TADOQuery
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM [Request]')
    Left = 163
    Top = 184
  end
  object adoNewRequests: TADOQuery
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM [NewRequests]')
    Left = 163
    Top = 128
  end
  object adoUsers: TADOQuery
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM [Users]')
    Left = 163
    Top = 240
  end
  object dsCars: TDataSource
    DataSet = adoCars
    Left = 80
    Top = 16
  end
  object ADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\AVP\Deskto' +
      'p\Delphi\'#1087#1086' '#1082#1083#1072#1089#1089#1072#1084'\19\Win32\Debug\Request.mdb;Persist Security ' +
      'Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 280
    Top = 136
  end
  object dsFlights: TDataSource
    DataSet = adoFlights
    Left = 72
    Top = 80
  end
  object dsNewRequests: TDataSource
    DataSet = adoNewRequests
    Left = 72
    Top = 136
  end
  object dsRequest: TDataSource
    DataSet = adoRequest
    Left = 72
    Top = 192
  end
  object dsUsers: TDataSource
    DataSet = adoUsers
    Left = 80
    Top = 240
  end
end
