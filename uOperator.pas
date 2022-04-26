unit uOperator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfOperator = class(TForm)
    dbgCars: TDBGrid;
    pAdminFunc: TPanel;
    DBN: TDBNavigator;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    dbgNewRequests: TDBGrid;
    dbgRequest: TDBGrid;
    dbgUsers: TDBGrid;
    dbgFlights: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOperator: TfOperator;
  i: integer;
implementation

{$R *.dfm}

uses uCheckForm, uDataAdmin;

procedure TfOperator.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    fCheck.Close;
  end;

procedure TfOperator.N2Click(Sender: TObject);

  begin
    dbgCars.Visible:= False; dbgFlights.Visible:= False;
    dbgNewRequests.Visible:= False; dbgUsers.Visible:= False;
    DBN.DataSource := DataModule1.dsRequest;
    dbgRequest.Visible:= True;
  end;

procedure TfOperator.N3Click(Sender: TObject);

  begin
    dbgCars.Visible:= False; dbgFlights.Visible:= False;
    dbgRequest.Visible:= False; dbgUsers.Visible:= False;
    DBN.DataSource := DataModule1.dsNewRequests;
    dbgNewRequests.Visible:= True;
  end;

procedure TfOperator.N4Click(Sender: TObject);

  begin
    dbgCars.Visible:= False; dbgFlights.Visible:= False;
    dbgNewRequests.Visible:= False; dbgRequest.Visible:= False;
    DBN.DataSource := DataModule1.dsUsers;
    dbgUsers.Visible:= True;
  end;

procedure TfOperator.N5Click(Sender: TObject);

  begin
    dbgRequest.Visible:= False; dbgFlights.Visible:= False;
    dbgNewRequests.Visible:= False; dbgUsers.Visible:= False;
    DBN.DataSource := DataModule1.dsCars;
    dbgCars.Visible:= True;
  end;

procedure TfOperator.N6Click(Sender: TObject);

  begin
    dbgCars.Visible:= False; dbgRequest.Visible:= False;
    dbgNewRequests.Visible:= False; dbgUsers.Visible:= False;
    DBN.DataSource := DataModule1.dsFlights;
    dbgFlights.Visible:= True;
  end;

end.
