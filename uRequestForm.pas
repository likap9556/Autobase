unit uRequestForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ComObj, uMuClasses, Data.DB, Data.Win.ADODB,
  Vcl.Grids, Vcl.DBGrids, uDataModule, Vcl.Mask, Vcl.DBCtrls;
type
  TfRequest = class(TForm)
    bSendRequest: TButton;
    Label2: TLabel;
    Label3: TLabel;
    dbeDriver: TDBEdit;
    dbeCar: TDBEdit;
    dbeMessage: TDBEdit;
    dbeStatus: TDBEdit;
    bCancel: TButton;
    procedure bSendRequestClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRequest: TfRequest;
  Driver: TDriver;
  Request: TRequest;
  DataModule1: TDataModule1;
  implementation

{$R *.dfm}

uses uDriver, uCheckForm, uOperator;

procedure TfRequest.bCancelClick(Sender: TObject);

  begin
    fRequest.CloseModal;
  end;

procedure TfRequest.bSendRequestClick(Sender: TObject);
  begin
    if (dbeCar.Text <> '') or (dbeMessage.Text <> '') then
      fRequest.CloseModal;
  end;

procedure TfRequest.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    if fDriver.ADORequests.Modified then
      fDriver.ADORequests.Post;

    fDriver.Visible:= True;
  end;

procedure TfRequest.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var result: integer;
begin
  if (dbeCar.Text = '') or (dbeMessage.Text = '') then
    begin
      Result:= MessageDlg('Выйти без корректно заполненных полей?',mtConfirmation,[mbYes,mbNo],0);
      If Result = mrYes then
        CanClose:=True
      else
        CanClose:=False;
    end;
end;

procedure TfRequest.FormShow(Sender: TObject);
  begin
    if fDriver.ADORequests.Modified then
      fDriver.ADORequests.Post;

    dbeDriver.Text:= fCheck.eLogin.Text;
    fDriver.ADORequests.Append;
    dbeStatus.Text:= 'На рассмотрении';
    dbeDriver.Text:= fDriver.lDriver.Caption;
    fDriver.ADORequests.Post;
    fDriver.Visible:= False;
  end;

end.

