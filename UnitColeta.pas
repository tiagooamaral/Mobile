unit UnitColeta;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ListBox,
  UnitColetaDados, System.Math.Vectors, FMX.TabControl, FMX.Controls3D,
  FMX.Layers3D, FMX.Edit, System.Actions, FMX.ActnList;

type
  TfrmColeta = class(TForm)
    lytMenuCadastro: TLayout;
    imgFechar: TImage;
    lytDados: TLayout;
    edtUsuarioLogin: TEdit;
    lblPreenchimento: TLabel;
    edtDescricaoProd: TEdit;
    lytProduto: TLayout;
    lblProduto: TLabel;
    Layout3D1: TLayout3D;
    TabControl: TTabControl;
    TabCadastro: TTabItem;
    TabColeta: TTabItem;
    lblCadastro: TLabel;
    lytMenu: TLayout;
    lblColeta: TLabel;
    imgVoltar: TImage;
    lblNumeroContagem: TLabel;
    lytDadosColeta: TLayout;
    edtCodProd: TEdit;
    lblPreenchimentoColeta: TLabel;
    edtQuantidade: TEdit;
    edtLocal: TEdit;
    imgConfirmaColeta: TImage;
    lblBuscaRegistro: TLabel;
    lblContagem: TLabel;
    imgCadastroProd: TImage;
    ActionList1: TActionList;
    actColeta: TChangeTabAction;
    actCadastro: TChangeTabAction;
    lytContagem: TLayout;
    Rectangle1: TRectangle;
    btnFinalizar: TSpeedButton;
    imgCancelaColeta: TImage;
    lytbtns: TLayout;
    Layout1: TLayout;
    Image1: TImage;
    Image2: TImage;
    procedure imgFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure imgCadastroProdClick(Sender: TObject);
    procedure imgVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmColeta: TfrmColeta;

implementation

{$R *.fmx}

 {
procedure CriaFrame (n : TColeta);
var
  f : TColeta;
  item : TListBoxItem;
begin
  item := TListBoxItem.Create(nil);
  item.text := '';
  item.Height := 120;
  item.Align := TAlignLayout.Client;
  item.tag := n.id;

  f := TFrameNotificacao.create(item);
  f.parent := item;
  f.Align := TAlignLayout.Client;

  f.cIcone.Fill.Bitmap.Bitmap := n.icone;
  f.lblUsuario.text := n.cod_usuario;
  f.lblData.text := n.data;
  f.lblTexto.text := n.texto;

  if n.tipo = 'C' then
    f.btnAceitar.Visible := true
  else
    f.btnAceitar.Visible := false;


  frmNotificacao.lbNotificacoes.AddOBject(item);
end;

procedure ListarNotificacao();
var
  n : TNotificacao;
    x : integer;
    begin
      frmNotificacao.lbNotificacoes.Items.Clear;

      for x:=1 to 5 do
        begin
            n.id := x;
                n.icone := frmNotificacao.imgFechar.bitmap;
                    n.cod_usuario := 'Joao';
                        n.data := '15.01';
                            n.texto := 'O usu?rio Jo?o est? convidando voc? para o evento Reuni?o de Trabalho. Deseja participar?';
                                n.tipo := 'C';

                                    CriaFrame(n);

                                      end;

                                      end;}

procedure TfrmColeta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
  frmColeta := nil;
end;

procedure TfrmColeta.FormCreate(Sender: TObject);
begin
  TabControl.TabPosition := TTabPosition.None;
  TabControl.ActiveTab := TabColeta;
end;

procedure TfrmColeta.FormShow(Sender: TObject);
begin
{}
end;

procedure TfrmColeta.imgVoltarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmColeta.imgCadastroProdClick(Sender: TObject);
begin
   actCadastro.Execute;
end;

procedure TfrmColeta.imgFecharClick(Sender: TObject);
begin
  actColeta.Execute;
end;

end.
