program pMotor_depot;

uses
  Vcl.Forms,
  uOperator in 'uOperator.pas' {fOperator},
  uCheckForm in 'uCheckForm.pas' {fCheck},
  uDriver in 'uDriver.pas' {fDriver},
  uRequestForm in 'uRequestForm.pas' {fRequest},
  uDataAdmin in 'uDataAdmin.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfCheck, fCheck);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
