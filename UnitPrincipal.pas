unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

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
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label8: TLabel;
    Edit6: TEdit;
    Label9: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    Edit9: TEdit;
    Label12: TLabel;
    procedure Clientes1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Panel1.Visible := Not Panel1.Visible;
end;

procedure TForm1.Clientes1Click(Sender: TObject);
begin
 Panel1.Visible := Not Panel1.Visible;
end;

end.
