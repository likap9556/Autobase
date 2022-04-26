unit uMuClasses;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uOperator;

type
  TRequest = record
    FAuto: string;
    FDriver: string;
    FMessage: string;
  end;

//type TCar = class
//  private
//    Fname: string;
//
//  public
//    FCondition: boolean;
//    constructor Create(AName: string);
//end;

type
  TDriver = class

   private

    FName: string;
    FLogin: string;
    FPassword: integer;
//    FCar: TCar;

   public
    constructor Create(AName: string; ALogin: string; APassword: integer);

    procedure SendRequest(Request: TRequest);
    function ShowMyRequests: TStringList;

    //function AutoCondition(Car: TCar): boolean;
    //function EndFlight: boolean;

    property Name: string read FName write FName;
    property Login: string read FLogin write FLogin;
    property Password: integer read FPassword write FPassword;

  end;

var
 ReqList: TStringList;
 Text: string;


implementation

constructor TDriver.Create(AName: string; ALogin: string; APassword: integer);

  begin
    AName:= FName;
    ALogin:= FLogin;
    APassword:= FPassword;
  end;

procedure TDriver.SendRequest(Request: TRequest);

  begin
    Text:= 'Автомобиль ' + Request.FAuto + '; Данные водителя: ' + Request.FDriver + '; Описание поломки: ' + Request.FMessage;
    try
      ReqList:= TStringList.Create;
      ReqList.LoadFromFile('C:\Users\AVP\Desktop\Delphi\по классам\19\Заявки на ремонт.txt');
      ReqList.Add(Text);
      ReqList.SaveToFile('C:\Users\AVP\Desktop\Delphi\по классам\19\Заявки на ремонт.txt');
    finally
      FreeAndNil(ReqList);
    end;
  end;

function TDriver.ShowMyRequests: TStringList;

  begin

  end;

end.
