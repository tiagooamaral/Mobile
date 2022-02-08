unit UnitCompromisso;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ListBox,
  FMX.DateTimeCtrls, FMX.Edit, System.Actions, FMX.ActnList, FMX.TabControl;

type
  TfrmCompromisso = class(TForm)
    Layout1: TLayout;
    lblTitulo: TLabel;
    imgFechar: TImage;
    Layout3: TLayout;
    edtUsuarioLogin: TEdit;
    Layout2: TLayout;
    DateEdit1: TDateEdit;
    TimeEdit1: TTimeEdit;
    Label4: TLabel;
    btnSalvar: TSpeedButton;
    Label1: TLabel;
    imgCadParticipante: TImage;
    lbNotificacoes: TListBox;
    TabControl: TTabControl;
    TabCompromisso: TTabItem;
    TabBusca: TTabItem;
    ActionList1: TActionList;
    actCompromisso: TChangeTabAction;
    actBusca: TChangeTabAction;
    Layout4: TLayout;
    Label2: TLabel;
    imgVoltar: TImage;
    edtBusca: TEdit;
    lbBusca: TListBox;
    Layout5: TLayout;
    SpeedButton1: TSpeedButton;
    procedure imgVoltarClick(Sender: TObject);
    procedure imgCadParticipanteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure imgFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompromisso: TfrmCompromisso;

implementation

{$R *.fmx}

procedure TfrmCompromisso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
  frmCompromisso := nil;
end;

procedure TfrmCompromisso.FormCreate(Sender: TObject);
begin
  TabControl.TabPosition := TTabPosition.None;
  TabControl.ActiveTab := TabCompromisso;
end;

procedure TfrmCompromisso.imgCadParticipanteClick(Sender: TObject);
begin
    actBusca.Execute;
end;

procedure TfrmCompromisso.imgFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCompromisso.imgVoltarClick(Sender: TObject);
begin
  actCompromisso.Execute;
end;

end.
