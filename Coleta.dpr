program Coleta;

uses
  System.StartUpCopy,
  FMX.Forms,
  UnitLogin in 'UnitLogin.pas' {frmLogin},
  UnitPrincipal in 'UnitPrincipal.pas' {frmPrincipal},
  UnitColeta in 'UnitColeta.pas' {frmColeta},
  UnitColetaDados in 'UnitColetaDados.pas',
  UnitDM in 'UnitDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait];
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
