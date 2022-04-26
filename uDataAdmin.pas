unit uDataAdmin;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule1 = class(TDataModule)
    adoCars: TADOQuery;
    adoFlights: TADOQuery;
    adoRequest: TADOQuery;
    adoNewRequests: TADOQuery;
    adoUsers: TADOQuery;
    dsCars: TDataSource;
    ADOConnection: TADOConnection;
    dsFlights: TDataSource;
    dsNewRequests: TDataSource;
    dsRequest: TDataSource;
    dsUsers: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
