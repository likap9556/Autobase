unit uDriver;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls, uRequestForm,
  Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, uMuClasses,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfDriver = class(TForm)
    pMenu: TPanel;
    bMyFlight: TButton;
    bMyRequest: TButton;
    bNewRequest: TButton;
    dbgMyRequests: TDBGrid;
    lDriver: TLabel;
    ADOConnection1: TADOConnection;
    ADORequests: TADOQuery;
    DataSource1: TDataSource;
    dbgMyFlights: TDBGrid;
    ADOFlidhts: TADOQuery;
    DataSource2: TDataSource;
    dbcbStatus: TDBComboBox;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bNewRequestClick(Sender: TObject);
    procedure bMyRequestClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bMyFlightClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDriver: TfDriver;
implementation

{$R *.dfm}

uses uCheckForm;



procedure TfDriver.bMyFlightClick(Sender: TObject);

  begin
    ADOFlidhts.Filter:= 'Driver LIKE ''%'+lDriver.Caption+'%''';
    ADOFlidhts.Filtered:= True;

    dbgMyRequests.Visible:= False;
    dbgMyFlights.Visible:= True;
    dbcbStatus.Visible:= True;
    Label1.Visible:= True;
  end;

procedure TfDriver.bMyRequestClick(Sender: TObject);

  begin
    ADORequests.Filter:= 'Driver LIKE ''%'+lDriver.Caption+'%''';
    ADORequests.Filtered:= True;

    dbgMyRequests.Visible:= True;
    dbcbStatus.Visible:= False;
    dbgMyFlights.Visible:= False;
    label1.Visible:= False;
  end;

procedure TfDriver.bNewRequestClick(Sender: TObject);

  begin
    fRequest:= TfRequest.Create(nil);
    fRequest.ShowModal;
  end;

procedure TfDriver.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    fCheck.Close;
  end;

procedure TfDriver.FormShow(Sender: TObject);

  begin
    lDriver.Caption:= fCheck.eLogin.Text;
  end;

end.
