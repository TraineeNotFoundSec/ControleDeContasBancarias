unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    lanamentos1: TMenuItem;
    Relatrios1: TMenuItem;
    Clientes1: TMenuItem;
    Bancos1: TMenuItem;
    Contas1: TMenuItem;
    MovBancria1: TMenuItem;
    Extrato1: TMenuItem;
    Analtico1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
