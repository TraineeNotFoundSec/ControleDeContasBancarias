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
    queryClientes: TFDQuery;
    queryIUD: TFDQuery;
    queryUF: TFDQuery;
    queryMUNICIPIOS: TFDQuery;
    procedure Clientes1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure listUFChange(Sender: TObject);
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
var
  repetidor : integer;
  qntRegistros : integer;

begin
  repetidor := 0;
  conn.Connected := True;

  listUF.Items.Clear;
  listMUNICIPIO.Items.Clear;

  queryUF.SQL.Text := 'SELECT COUNT(id_uf) AS "qntRegistros" from uf;';
  queryUF.Open;
  qntRegistros := queryUF.FieldByName('qntRegistros').AsInteger;

  queryUF.SQL.Text := 'SELECT id_uf,  nome_uf FROM uf ORDER BY nome_uf ASC;';
  queryUF.Open;

  while repetidor < qntRegistros do
    begin
      listUF.Items.Add(queryUF.FieldByName('nome_uf').AsString);
      listUF.Items.Objects[listUF.Items.Count - 1] := TObject(queryUF.FieldByName('id_uf').AsInteger);

      queryUF.Next;
      repetidor := repetidor + 1;
    end;
end;

procedure TForm1.listUFChange(Sender: TObject);
var
  repetidor : integer;
  qntRegistros : integer;

begin
  repetidor := 0;

  listMUNICIPIO.Items.Clear;

  queryMUNICIPIOS.SQL.Text := 'SELECT COUNT(id_cidade) AS qntRegistros FROM cidade WHERE id_uf = :id_uf';
  queryMUNICIPIOS.ParamByName('id_uf').AsInteger := Integer(listUF.Items.Objects[listUF.ItemIndex]);
  queryMUNICIPIOS.Open;
  qntRegistros := queryMUNICIPIOS.FieldByName('qntRegistros').AsInteger;

  queryMUNICIPIOS.SQL.Text := 'SELECT id_cidade, nome_cidade FROM cidade WHERE id_uf = :id_uf';
  queryMUNICIPIOS.ParamByName('id_uf').AsInteger := Integer(listUF.Items.Objects[listUF.ItemIndex]);
  queryMUNICIPIOS.Open;

  while repetidor < qntRegistros do
    begin
      listMUNICIPIO.Items.Add(queryMUNICIPIOS.FieldByName('nome_cidade').AsString);
      listMUNICIPIO.Items.Objects[listMUNICIPIO.Items.Count - 1] := TObject(queryMUNICIPIOS.FieldByName('id_cidade').AsInteger);

      queryMUNICIPIOS.Next;
      repetidor := repetidor + 1;
    end;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Panel1.Visible := Not Panel1.Visible;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if (txtID.Text = '') then
    begin
      queryIUD.SQL.Text := 'INSERT INTO clientes(nome, cpf, fixo, celular, cep, endereco, numero, bairro, id_uf, id_municipio)'+
	    'VALUES (:nome, :cpf, :fixo, :celular, :cep, :endereco, :numero, :bairro, :id_uf, :id_municipio);';
      queryIUD.ParamByName('nome').AsString := (txtNOME.Text);
      queryIUD.ParamByName('cpf').AsString := (txtCPF.Text);
      queryIUD.ParamByName('fixo').AsString := (txtFIXO.Text);
      queryIUD.ParamByName('celular').AsString := (txtMOVEL.Text);
      queryIUD.ParamByName('cep').AsString := (txtCEP.Text);
      queryIUD.ParamByName('endereco').AsString := (txtENDERECO.Text);
      queryIUD.ParamByName('numero').AsString := (txtNUMERO.Text);
      queryIUD.ParamByName('bairro').AsString := (txtBAIRRO.Text);
      queryIUD.ParamByName('id_uf').AsInteger := Integer(listUF.Items.Objects[listUF.ItemIndex]);
      queryIUD.ParamByName('id_municipio').AsInteger := Integer(listMUNICIPIO.Items.Objects[listMUNICIPIO.ItemIndex]);
      queryIUD.ExecSQL;
    end
  else
    begin
      queryIUD.SQL.Text := 'UPDATE public.clientes'+
	    'SET id=:id, nome=:nome, cpf=:cpf, fixo=:fixo, celular=:movel, cep=:cep, endereco=:endereco, numero=:numero, bairro=:bairro, id_uf=:id_uf, id_municipio=:id_municipio'+
	    'WHERE id = :id;';
      queryIUD.ParamByName('id').AsInteger := StrToInt(txtID.Text);
      queryIUD.ParamByName('nome').AsString := (txtNOME.Text);
      queryIUD.ParamByName('cpf').AsString := (txtCPF.Text);
      queryIUD.ParamByName('fixo').AsString := (txtFIXO.Text);
      queryIUD.ParamByName('celular').AsString := (txtMOVEL.Text);
      queryIUD.ParamByName('cep').AsString := (txtCEP.Text);
      queryIUD.ParamByName('endereco').AsString := (txtENDERECO.Text);
      queryIUD.ParamByName('numero').AsString := (txtNUMERO.Text);
      queryIUD.ParamByName('bairro').AsString := (txtBAIRRO.Text);
      queryIUD.ParamByName('id_uf').AsInteger := Integer(listUF.Items.Objects[listUF.ItemIndex]);
      queryIUD.ParamByName('id_municipio').AsInteger := Integer(listMUNICIPIO.Items.Objects[listMUNICIPIO.ItemIndex]);
      queryIUD.ExecSQL;
    end;
  queryClientes.Open;
  queryClientes.Refresh;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if (txtID.Text = '') then
    begin
      ShowMessage('N�o foi poss�vel excluir o registro corrente');
    end
  else
    begin
      queryIUD.SQL.Text := 'DELETE FROM clientes WHERE id = :id';
      queryIUD.ParamByName('id').AsInteger := StrToInt(txtID.Text);
      queryIUD.ExecSQL;
    end;

  queryClientes.Open;
  queryClientes.Refresh;
end;

procedure TForm1.Clientes1Click(Sender: TObject);
begin
 Panel1.Visible := Not Panel1.Visible;

 queryClientes.SQL.Text := 'SELECT id AS "ID", nome AS "Nome" FROM clientes ORDER BY nome ASC';
 queryClientes.Open;

end;
// fim
end.
