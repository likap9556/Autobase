unit uCheckForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uDriver, uOperator,
  Vcl.Mask, Vcl.DBCtrls, Data.DB, Data.Win.ADODB;

type
  TfCheck = class(TForm)
    eLogin: TEdit;
    ePassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    bEnter: TButton;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOQuery: TADOQuery;
    procedure bEnterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCheck: TfCheck;

implementation

{$R *.dfm}

uses uDataModule, uRequestForm;

procedure TfCheck.bEnterClick(Sender: TObject);
var s1: string;
  begin
    fCheck.Hide;
    ADOQuery.Close;
    ADOQuery.SQL.Clear;
    s1:='select * from Users where Login='+QuotedStr(eLogin.text)+'and Password='+QuotedStr(ePassword.text);
    ADOQuery.sql.add(s1);
    ADOQuery.Active:= true;
    ADOQuery.Open;
    if not ADOQuery.IsEmpty then
      begin
        if eLogin.Text <> 'Admin' then
          begin
            fDriver := TFDriver.Create(nil);
            fDriver.ShowModal;
          end
        else
          begin
            fOperator:= TfOperator.Create(nil);
            fOperator.ShowModal;
          end;
      end
    else
      ShowMessage('Данные введены не верно');
  end;

end.
