unit UnitCompromissoFrame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, unitCompromissoDados;

type
  TFrameCompromisso = class(TFrame)
    Layout1: TLayout;
    Rectangle1: TRectangle;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    lblDescricao: TLabel;
    lblData: TLabel;
    lblUsuario: TLabel;
    lblHora: TLabel;
    imgQuantidade: TImage;
    imgConcluido: TImage;
    lblQtd: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
