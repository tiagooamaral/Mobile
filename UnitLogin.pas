unit UnitLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Edit, FMX.Controls.Presentation, FMX.Layouts, FMX.TabControl,
  System.Actions, FMX.ActnList;

type
  TfrmLogin = class(TForm)
    Layout1: TLayout;
    Image1: TImage;
    Layout2: TLayout;
    Label1: TLabel;
    Label2: TLabel;
    Layout3: TLayout;
    edtUsuarioLogin: TEdit;
    Rectangle1: TRectangle;
    btnLogin: TSpeedButton;
    Layout4: TLayout;
    Image2: TImage;
    Layout5: TLayout;
    lblCriarConta: TLabel;
    TabControl: TTabControl;
    TabLogin: TTabItem;
    TabNovaConta: TTabItem;
    ActionList1: TActionList;
    actLogin: TChangeTabAction;
    actConta: TChangeTabAction;
    Layout6: TLayout;
    Image3: TImage;
    Layout7: TLayout;
    Label3: TLabel;
    Label5: TLabel;
    Layout8: TLayout;
    Edit2: TEdit;
    Rectangle2: TRectangle;
    btnCriarConta: TSpeedButton;
    Layout9: TLayout;
    Label7: TLabel;
    Layout10: TLayout;
    imgIcone1: TImage;
    imgIcone3: TImage;
    imgIcone4: TImage;
    imgIcone5: TImage;
    imgIcone6: TImage;
    imgIcone7: TImage;
    imgIcone8: TImage;
    imgIcone2: TImage;
    cSelecao: TCircle;
    Layout11: TLayout;
    lblLogin: TLabel;
    Rectangle3: TRectangle;
    Image4: TImage;
    procedure FormCreate(Sender: TObject);
    procedure lblCriarContaClick(Sender: TObject);
    procedure lblLoginClick(Sender: TObject);
    procedure imgIcone1Click(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.fmx}

uses UnitPrincipal;

procedure SelecioneIcone(Sender: TObject);
begin
  with frmLogin do
  begin
    imgIcone1.Tag := 0;
    imgIcone2.Tag := 0;
    imgIcone3.Tag := 0;
    imgIcone4.Tag := 0;
    imgIcone5.Tag := 0;
    imgIcone6.Tag := 0;
    imgIcone7.Tag := 0;
    imgIcone8.Tag := 0;

    Timage(Sender).Tag := 1;

    CSelecao.AnimateFloat('Position.X', TImage(Sender).Position.X + 15, 0.2);

  end;
;
end;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
begin
{Verificar se usuario existe}

  if not Assigned (frmPrincipal) then
    Application.CreateForm(TfrmPrincipal, frmPrincipal);
    Application.MainForm := frmPrincipal;
    frmPrincipal.Show;
    frmLogin.Close;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  TabControl.TabPosition := TTabPosition.None;
  TabControl.ActiveTab := TabLogin;
end;

procedure TfrmLogin.imgIcone1Click(Sender: TObject);
begin
     SelecioneIcone(Sender);
end;

procedure TfrmLogin.lblCriarContaClick(Sender: TObject);
begin
  actConta.Execute;
end;

procedure TfrmLogin.lblLoginClick(Sender: TObject);
begin
  ActLogin.Execute;
end;

end.
