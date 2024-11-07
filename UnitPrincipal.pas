unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

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
    txtNOME: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txtCPF: TEdit;
    Label4: TLabel;
    txtENDERECO: TEdit;
    txtNUMERO: TEdit;
    Label5: TLabel;
    txtBAIRRO: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    listUF: TComboBox;
    listMUNICIPIO: TComboBox;
    Label8: TLabel;
    txtCEP: TEdit;
    Label9: TLabel;
    txtFIXO: TEdit;
    txtMOVEL: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    txtID: TEdit;
    Label12: TLabel;
    conn: TFDConnection;
    ds: TDataSource;
    query1: TFDQuery;
    query2: TFDQuery;
    procedure Clientes1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  conn.Connected := True;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Panel1.Visible := Not Panel1.Visible;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if (txtID.Text = '') then
    begin
      query2.SQL.Text := 'INSERT INTO clientes(id, nome, cpf, fixo, celular, cep, endereco, numero, bairro, id_uf, id_municipio)'+
	    'VALUES (:id, :nome, :cpf, :fixo, :celular, :cep, :endereco, :numero, :bairro, :id_uf, :id_municipio);';
      query2.ParamByName('id').AsInteger := StrToInt(txtID.Text);
      query2.ParamByName('nome').AsString := (txtNOME.Text);
      query2.ParamByName('cpf').AsString := (txtCPF.Text);
      query2.ParamByName('fixo').AsString := (txtFIXO.Text);
      query2.ParamByName('celular').AsString := (txtMOVEL.Text);
      query2.ParamByName('cep').AsString := (txtCEP.Text);
      query2.ParamByName('endereco').AsString := (txtENDERECO.Text);
      query2.ParamByName('numero').AsString := (txtNUMERO.Text);
      query2.ParamByName('bairro').AsString := (txtBAIRRO.Text);
      query2.ParamByName('id_uf').AsInteger := StrToInt(listUF.Text);
      query2.ParamByName('id_municipio').AsInteger := StrToInt(listMUNICIPIO.Text);
      query2.ExecSQL;
    end
  else
    begin
      query2.SQL.Text := 'UPDATE public.clientes'+
	    'SET id=:id, nome=:nome, cpf=:cpf, fixo=;fixo, celular=:movel, cep=:cep, endereco=:endereco, numero=:numero, bairro=:bairro, id_uf=:id_uf, id_municipio=:id_municipio'+
	    'WHERE id = :id;';
      query2.ParamByName('id').AsInteger := StrToInt(txtID.Text);
      query2.ParamByName('nome').AsString := (txtNOME.Text);
      query2.ParamByName('cpf').AsString := (txtCPF.Text);
      query2.ParamByName('fixo').AsString := (txtFIXO.Text);
      query2.ParamByName('celular').AsString := (txtMOVEL.Text);
      query2.ParamByName('cep').AsString := (txtCEP.Text);
      query2.ParamByName('endereco').AsString := (txtENDERECO.Text);
      query2.ParamByName('numero').AsString := (txtNUMERO.Text);
      query2.ParamByName('bairro').AsString := (txtBAIRRO.Text);
      query2.ParamByName('id_uf').AsInteger := StrToInt(listUF.Text);
      query2.ParamByName('id_municipio').AsInteger := StrToInt(listMUNICIPIO.Text);
      query2.ExecSQL;
    end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if (txtID.Text = '') then
    begin
      ShowMessage('N�o foi poss�vel excluir o registro corrente');
    end
  else
    begin
      query2.SQL.Text := 'DELETE FROM clientes WHERE id = :id';
      query2.ParamByName('id').AsInteger := StrToInt(txtID.Text);
      query2.ExecSQL;
    end;
end;

procedure TForm1.Clientes1Click(Sender: TObject);
begin
 Panel1.Visible := Not Panel1.Visible;

 query1.SQL.Text := 'SELECT id AS "ID", nome AS "Nome" FROM clientes ORDER BY nome ASC';
 query1.Open;

end;
// fim
end.
