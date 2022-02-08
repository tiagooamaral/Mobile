unit UnitNotificacaoFrame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.Layouts;

type
  TFrameNotificacao = class(TFrame)
    Rectangle1: TRectangle;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    lblUsuario: TLabel;
    lblData: TLabel;
    lblTexto: TLabel;
    btnExcluir: TSpeedButton;
    btnAceitar: TSpeedButton;
    cIcone: TCircle;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
