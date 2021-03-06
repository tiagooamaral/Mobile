unit UnitPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, uCustomCalendar,
  FMX.Layouts, FMX.ListBox, FMX.StdCtrls, FMX.Objects, FMX.Controls.Presentation,
  DateUtils, unitCompromissoDados, FMX.Edit;

type
  TfrmPrincipal = class(TForm)
    rctMenu: TRectangle;
    lytBtnColeta: TLayout;
    lblIMS: TLabel;
    btnSair: TSpeedButton;
    lytBusca: TLayout;
    edtBusca: TEdit;
    btnBuscar: TSpeedButton;
    lytDadosBusca: TLayout;
    btnNovaColeta: TSpeedButton;
    lytMenu: TLayout;
    imgLogo: TImage;
    procedure FormShow(Sender: TObject);
    procedure DayClick(Sender:TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure imgProximoClick(Sender: TObject);
    procedure imgAnteriorClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnNovaColetaClick(Sender: TObject);
  private
    { Private declarations }
    cal : TCustomCalendar;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

uses UnitColeta, UnitLogin;
{
procedure CriaFrame (n : TCompromisso);
var
  f : TFrameCompromisso;
  item : TListBoxItem;
begin
  item := TListBoxItem.Create(nil);
  item.text := '';
  item.Height := 120;
  item.Align := TAlignLayout.Client;
  item.tag := n.seq_compromisso;

  f := TFrameCompromisso.create(item);
  f.parent := item;
  f.Align := TAlignLayout.Client;

  f.lblDescricao.Text := n.descricao;
  f.lblUsuario.Text := n.cod_usuario;
  f.lblHora.Text := n.hora;
  f.lblQtd.Text := n.qtd_partic.ToString;

  if n.ind_concluido = 'S' then
    f.imgConcluido.Visible := true
  else
    f.imgConcluido.Visible := false;


  frmPrincipal.lbCompromisso.AddOBject(item);
end;

procedure TfrmPrincipal.ListarCompromisso();
var
  c : TCompromisso;
  x : integer;

begin
  lblMes.Text := cal.MonthName;
  lblDia.Text := 'Eventos: Dia -' + FormatDateTime(' DD/MM ', cal.SelectedDate);
  frmPrincipal.lbCompromisso.Items.Clear;

  cal.AddMarker(6);
  cal.AddMarker(27);

  if (DayOf (cal.SelectedDate) = 6) or
     (DayOf (cal.SelectedDate) = 27) then
  begin
    lytComCompromisso.Visible := true;
    lytSemCompromisso.Visible := false;
  end
  else
  begin
    lytComCompromisso.Visible := false;
    lytSemCompromisso.Visible := true;
    lblSemCompromisso.Text := 'N?o h? eventos hoje:' + FormatDateTime(' DD/MM', cal.SelectedDate);
  end;

  begin
  for x:=1 to 5 do
  begin
    c.seq_compromisso := x;
    c.cod_usuario := 'Heber';
    c.data := '06.01';
    c.hora := '16:00hs';
    c.descricao := 'Reuni?o no escritorio' + X.ToString;
    c.ind_concluido := 'S';
    c.qtd_partic := 1;


    CriaFrame(c);
  end;

end;

end;
                      }

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
   if not Assigned (frmLogin) then
    Application.CreateForm(TfrmLogin, frmLogin);
    Application.MainForm := frmLogin;
    frmLogin.Show;
    frmPrincipal.Close;
end;

procedure TfrmPrincipal.DayClick(Sender:TObject);
begin
{  //Load day events
  ListarCompromisso;}


end;

procedure TfrmPrincipal.btnNovaColetaClick(Sender: TObject);
  begin
   if not Assigned (frmColeta) then
    Application.CreateForm(TfrmColeta, frmColeta);
    frmColeta.Show;
  end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cal.DisposeOf;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
{}
end;

procedure TfrmPrincipal.imgAnteriorClick(Sender: TObject);
begin
{}
end;
  {
procedure TfrmPrincipal.imgCadCompromissoClick(Sender: TObject);
begin
   if not Assigned (frmCompromisso) then
    Application.CreateForm(TfrmCompromisso, frmCompromisso);
    frmCompromisso.Show;
end;

procedure TfrmPrincipal.imgDicaClick(Sender: TObject);
begin
   if not Assigned (frmCompromisso) then
    Application.CreateForm(TfrmCompromisso, frmCompromisso);
    frmCompromisso.Show;
end;   }


procedure TfrmPrincipal.imgProximoClick(Sender: TObject);
begin
{  cal.NextMonth;
  ListarCompromisso;}
end;

end.
