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
    Clientes: TPanel;
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
    btnSIClientes: TButton;
    btnEClientes: TButton;
    txtID: TEdit;
    Label12: TLabel;
    conn: TFDConnection;
    ds: TDataSource;
    queryClientes: TFDQuery;
    queryIUD: TFDQuery;
    queryUF: TFDQuery;
    queryMUNICIPIOS: TFDQuery;
    queryClientesForm: TFDQuery;
    btnLClientes: TButton;
    Bancos: TPanel;
    Label13: TLabel;
    Button5: TButton;
    btnSIBancos: TButton;
    btnEBancos: TButton;
    btnLBancos: TButton;
    txtIDBANCO: TEdit;
    Label14: TLabel;
    txtNOMEBANCO: TEdit;
    listATIVOBANCO: TComboBox;
    Label15: TLabel;
    Label16: TLabel;
    DBGrid2: TDBGrid;
    queryBancos: TFDQuery;
    ds1: TDataSource;
    queryBancosForm: TFDQuery;
    Contas: TPanel;
    Label17: TLabel;
    txtIDContas: TEdit;
    Label18: TLabel;
    listBancos: TComboBox;
    listClientes: TComboBox;
    txtAgencia: TEdit;
    txtNumConta: TEdit;
    txtSaldoAtual: TEdit;
    txtSaldoAnterior: TEdit;
    txtTotalDebito: TEdit;
    txtTotalCredito: TEdit;
    txtDataCadastro: TEdit;
    txtUltimaAlteracao: TEdit;
    listAtivo: TComboBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    txtDescricaoConta: TEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    querylistBancos: TFDQuery;
    querylistClientes: TFDQuery;
    Button9: TButton;
    btnSIContas: TButton;
    btnEContas: TButton;
    btnLContas: TButton;
    DBGrid3: TDBGrid;
    queryContas: TFDQuery;
    ds2: TDataSource;
    queryHistoricoContas: TFDQuery;
    queryContasForm: TFDQuery;
    procedure Clientes1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEClientesClick(Sender: TObject);
    procedure btnSIClientesClick(Sender: TObject);
    procedure listUFChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnLClientesClick(Sender: TObject);
    procedure Bancos1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure btnLBancosClick(Sender: TObject);
    procedure btnEBancosClick(Sender: TObject);
    procedure btnSIBancosClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Contas1Click(Sender: TObject);
    procedure btnLContasClick(Sender: TObject);
    procedure btnEContasClick(Sender: TObject);
    procedure btnSIContasClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure ClearPanelData(Panel: TPanel);
var
  I: Integer;
  begin
    for I := 0 to Panel.ControlCount - 1 do
      begin
        if Panel.Controls[I] is TEdit then
          TEdit(Panel.Controls[I]).Text := '' // Limpa o texto dos Edit
        else if Panel.Controls[I] is TComboBox then
          TComboBox(Panel.Controls[I]).ItemIndex := -1; // Reseta a sele��o do ComboBox
      end;
  end;

procedure TForm1.FormCreate(Sender: TObject);
var
  repetidor : integer;
  qntRegistros : integer;

begin
  repetidor := 0;
  conn.Connected := True;

  listUF.Items.Clear;
  listMUNICIPIO.Items.Clear;
  listBancos.Items.Clear;
  listClientes.Items.Clear;

  queryUF.SQL.Text := 'SELECT COUNT(id_uf) AS "qntRegistros" FROM uf;';
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

  // -------------------------------------------

  repetidor := 0;

  querylistBancos.SQL.Text := 'SELECT COUNT(id) AS "qntRegistros" FROM bancos;';
  querylistBancos.Open;

  qntRegistros := querylistBancos.FieldByName('qntRegistros').ASInteger;

  querylistBancos.SQL.Text := 'SELECT id, descricao FROM bancos;';
  querylistBancos.Open;

  while repetidor < qntRegistros do
    begin
      listBancos.Items.Add(querylistBancos.FieldByName('descricao').AsString);
      listBancos.Items.Objects[listBancos.Items.Count - 1] := TObject(querylistBancos.FieldByName('id').AsInteger);

      querylistBancos.Next;
      repetidor := repetidor + 1;
    end;

  // -------------------------------------------

  repetidor := 0;

  querylistClientes.SQL.Text := 'SELECT COUNT(id) AS "qntRegistros" FROM clientes;';
  querylistClientes.Open;

  qntRegistros := querylistClientes.FieldByName('qntRegistros').ASInteger;

  querylistClientes.SQL.Text := 'SELECT id, nome FROM clientes;';
  querylistClientes.Open;

  while repetidor < qntRegistros do
    begin
      listClientes.Items.Add(querylistClientes.FieldByName('nome').AsString);
      listClientes.Items.Objects[listClientes.Items.Count - 1] := TObject(querylistClientes.FieldByName('id').AsInteger);

      querylistClientes.Next;
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

procedure TForm1.Bancos1Click(Sender: TObject);
begin
  Bancos.Visible := not Bancos.Visible;

  ClearPanelData(Bancos);

  queryBancos.SQL.Text := 'SELECT id AS "ID", descricao as "Nome" FROM bancos ORDER BY descricao;';
  queryBancos.Open;
  queryBancos.Refresh;
end;

procedure TForm1.btnSIContasClick(Sender: TObject);
begin
  if (txtIDContas.Text = '') then
      begin
        queryIUD.SQL.Text := 'INSERT INTO public.contas(id_banco, id_cliente, agencia, numero, saldo_atual, descricao)'+
        'VALUES (:id_banco, :id_cliente, :agencia, :numero, :saldo_atual, :descricao);';

        queryIUD.ParamByName('id_banco').AsInteger := Integer(listBancos.Items.Objects[listBancos.ItemIndex]);
        queryIUD.ParamByName('id_cliente').AsInteger := Integer(listClientes.Items.Objects[listClientes.ItemIndex]);
        queryIUD.ParamByName('agencia').AsString := (txtAgencia.Text);
        queryIUD.ParamByName('numero').AsString := (txtNumero.Text);
        // queryIUD.ParamByName('saldo_anterior').AsString := (txtSaldoAnterior.Text);
        queryIUD.ParamByName('saldo_atual').AsFloat := StrToFloat(txtSaldoAtual.Text);
        // queryIUD.ParamByName('total_debito').AsString := (txtTotalDebito.Text);
        // queryIUD.ParamByName('total_credito').AsString := (txtTotalCredito.Text);
        // queryIUD.ParamByName('data_ultimo_movimento').AsString := (txtUltimaAlteracao.Text);
        queryIUD.ParamByName('descricao').AsString := (txtDescricaoConta.Text);

        queryIUD.ExecSQL;
      end

    else
      begin
        queryHistoricoContas.SQL.Text := 'SELECT id, id_banco, id_cliente, agencia, numero, saldo_anterior, saldo_atual, total_debito, total_credito, data_ultimo_movimento, data_criacao, ativo, descricao '+
        'FROM public.contas WHERE id = :id;';
        queryHistoricoContas.ParamByName('id').AsInteger := StrToInt(txtIDContas.Text);
        queryHistoricoContas.Open;

        queryIUD.SQL.Text := 'UPDATE contas ' +
	      'SET id_banco= :id_banco, id_cliente= :id_cliente, agencia= :agencia, numero= :numero, saldo_anterior= :saldo_anterior, saldo_atual= :saldo_atual, total_debito= :total_debito, total_credito= :total_credito, data_ultimo_movimento= :data_ultimo_movimento, ativo= :ativo, descricao= :descricao '+
        'WHERE id = :id;';

        queryIUD.ParamByName('id').AsInteger := StrToInt(txtIDContas.Text);
        queryIUD.ParamByName('id_banco').AsInteger := Integer(listBancos.Items.Objects[listBancos.ItemIndex]);
        queryIUD.ParamByName('id_cliente').AsInteger := Integer(listClientes.Items.Objects[listClientes.ItemIndex]);
        queryIUD.ParamByName('agencia').AsString := (txtAgencia.Text);
        queryIUD.ParamByName('numero').AsString := (txtNumero.Text);
        queryIUD.ParamByName('saldo_anterior').AsFloat := queryHistoricoContas.FieldByName('saldo_atual').AsFloat;
        queryIUD.ParamByName('saldo_atual').AsFloat := StrToFloat(txtSaldoAtual.Text);

        if (StrToFloat(txtSaldoAtual.Text) > queryHistoricoContas.FieldByName('saldo_atual').AsFloat) then
          begin
            queryIUD.ParamByName('total_debito').AsFloat := queryHistoricoContas.FieldByName('total_debito').AsFloat;
            queryIUD.ParamByName('total_credito').AsFloat := (StrToFloat(txtTotalCredito.Text)+(StrToFloat(txtSaldoAtual.Text)-queryHistoricoContas.FieldByName('saldo_atual').AsFloat));
          end

        else
          begin
            queryIUD.ParamByName('total_credito').AsFloat := queryHistoricoContas.FieldByName('total_credito').AsFloat;
            queryIUD.ParamByName('total_debito').AsFloat := (StrToFloat(txtTotalDebito.Text)+queryHistoricoContas.FieldByName('saldo_atual').AsFloat)-(StrToFloat(txtSaldoAtual.Text));
          end;

        {queryIUD.ParamByName('total_debito').AsString := (txtTotalDebito.Text);
                queryIUD.ParamByName('total_credito').AsString := (txtTotalCredito.Text);}

        queryIUD.ParamByName('data_ultimo_movimento').AsDateTime := Now;
        queryIUD.ParamByName('descricao').AsString := (txtDescricaoConta.Text);

        if listAtivo.Text = 'Sim' then
          begin
            queryIUD.ParamByName('ativo').AsString := 'S';
          end
        else
          begin
            queryIUD.ParamByName('ativo').AsString := 'N';
          end;

        queryIUD.ExecSQL;
      end;

  queryContas.Open;
  queryContas.Refresh;

  ClearPanelData(Contas);
end;

procedure TForm1.btnEContasClick(Sender: TObject);
begin
  if (txtIDContas.Text = '') then
    begin
      ShowMessage('N�o foi poss�vel excluir o registro corrente');
    end
  else
    begin
      queryIUD.SQL.Text := 'DELETE FROM contas WHERE id = :id';
      queryIUD.ParamByName('id').AsInteger := StrToInt(txtIDContas.Text);

      try
        queryIUD.ExecSQL;
        ShowMessage('Registro exclu�do com sucesso!')
      except

      on E: Exception do
        begin
          // ShowMessage('Ocorreu um erro ao executar o comando: ' + E.Message);
          ShowMessage('Erro! O registro atual pode estar sendo utilizado');
        end;

      end;

    end;

  queryContas.Open;
  queryContas.Refresh;

  ClearPanelData(Contas);
end;

procedure TForm1.btnLContasClick(Sender: TObject);
begin
  ClearPanelData(Contas);

  queryContas.Open;
  queryContas.Refresh;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Clientes.Visible := not Clientes.Visible;

  ClearPanelData(Clientes);
end;

procedure TForm1.btnSIClientesClick(Sender: TObject);
begin
  if (txtID.Text = '') then
    begin
      queryIUD.SQL.Text := 'INSERT INTO clientes(nome, cpf, fixo, celular, cep, endereco, numero, bairro, id_uf, id_municipio) VALUES (:nome, :cpf, :fixo, :celular, :cep, :endereco, :numero, :bairro, :id_uf, :id_municipio);';
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
      queryIUD.SQL.Text := 'UPDATE public.clientes SET nome=:nome, cpf=:cpf, fixo=:fixo, celular=:celular, cep=:cep, endereco=:endereco, numero=:numero, bairro=:bairro, id_uf=:id_uf, id_municipio=:id_municipio WHERE id = :id;';
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

  ClearPanelData(Clientes);
end;

procedure TForm1.btnLClientesClick(Sender: TObject);
begin
  ClearPanelData(Clientes);

  queryClientes.Open;
  queryClientes.Refresh;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Bancos.Visible := Not Bancos.Visible;

  ClearPanelData(Bancos);
end;

procedure TForm1.btnSIBancosClick(Sender: TObject);
begin
  if (txtIDBANCO.Text = '') then
    begin
      queryIUD.SQL.Text := 'INSERT INTO bancos(descricao, ativo) VALUES (:descricao, :ativo);';
      queryIUD.ParamByName('descricao').AsString := (txtNOMEBANCO.Text);

      if listATIVOBANCO.Text = 'Sim' then
        begin
          queryIUD.ParamByName('ativo').AsString := 'S';
        end
      else
        begin
          queryIUD.ParamByName('ativo').AsString := 'N';
        end;

      queryIUD.ExecSQL;
    end

  else
    begin
      queryIUD.SQL.Text := 'UPDATE bancos SET descricao=:descricao, ativo=:ativo WHERE id = :id;';
      queryIUD.ParamByName('id').AsInteger := StrToInt(txtIDBANCO.Text);
      queryIUD.ParamByName('descricao').AsString := (txtNOMEBANCO.Text);

      if listATIVOBANCO.Text = 'Sim' then
        begin
          queryIUD.ParamByName('ativo').AsString := 'S';
        end
      else
        begin
          queryIUD.ParamByName('ativo').AsString := 'N';
        end;

      queryIUD.ExecSQL;
    end;

  queryBancos.Open;
  queryBancos.Refresh;

  ClearPanelData(Bancos);
end;

procedure TForm1.btnEBancosClick(Sender: TObject);
begin
  if (txtIDBANCO.Text = '') then
    begin
      ShowMessage('N�o foi poss�vel excluir o registro corrente');
    end
  else
    begin
      queryIUD.SQL.Text := 'DELETE FROM bancos WHERE id = :id';
      queryIUD.ParamByName('id').AsInteger := StrToInt(txtIDBANCO.Text);

      try
        queryIUD.ExecSQL;
        ShowMessage('Registro exclu�do com sucesso!')
      except

      on E: Exception do
        begin
          // ShowMessage('Ocorreu um erro ao executar o comando: ' + E.Message);
          ShowMessage('Erro! O registro atual pode estar sendo utilizado');
        end;

      end;

    end;

  queryBancos.Open;
  queryBancos.Refresh;

  ClearPanelData(Bancos);
end;

procedure TForm1.btnLBancosClick(Sender: TObject);
begin
  ClearPanelData(Bancos);

  queryBancos.Open;
  queryBancos.Refresh;
end;



procedure TForm1.Button9Click(Sender: TObject);
begin
  Contas.Visible := Not Contas.Visible;

  ClearPanelData(Contas);
end;

procedure TForm1.btnEClientesClick(Sender: TObject);
begin
  if (txtID.Text = '') then
    begin
      ShowMessage('N�o foi poss�vel excluir o registro corrente');
    end
  else
    begin
      queryIUD.SQL.Text := 'DELETE FROM clientes WHERE id = :id';
      queryIUD.ParamByName('id').AsInteger := StrToInt(txtID.Text);

      try
        queryIUD.ExecSQL;
        ShowMessage('Registro exclu�do com sucesso!')
      except

      on E: Exception do
        begin
          // ShowMessage('Ocorreu um erro ao executar o comando: ' + E.Message);
          ShowMessage('Erro! O registro atual pode estar sendo utilizado');
        end;

      end;

    end;

  queryClientes.Open;
  queryClientes.Refresh;

  ClearPanelData(Clientes);
end;

procedure TForm1.Clientes1Click(Sender: TObject);
begin
 Clientes.Visible := Not Clientes.Visible;

 ClearPanelData(Clientes);

 queryClientes.SQL.Text := 'SELECT id AS "ID", nome as "Nome" FROM clientes ORDER BY nome;';
 queryClientes.Open;
end;

procedure TForm1.Contas1Click(Sender: TObject);
begin
  Contas.Visible := Not Contas.Visible;
  Clientes.Visible := False;
  Bancos.Visible := False;

  ClearPanelData(Contas);
  ClearPanelData(Clientes);
  ClearPanelData(Bancos);

  queryContas.SQL.Text := 'SELECT contas.id As "ID", bancos.descricao As "BANCO", clientes.nome As "CLIENTE",'+
  'contas.descricao As "DESCRICAO", contas.agencia As AGENCIA, contas.numero As "NUMERO DA CONTA", contas.saldo_anterior As "SALDO ANTERIOR",'+
  'contas.saldo_atual As "SALDO ATUAL", contas.total_debito As "TOTAL DEBITO", contas.total_credito As "TOTAL CREDITO",'+
  'contas.data_ultimo_movimento As "DATA DA ULTIMA ALTERA��O", contas.data_criacao As "DATA CADASTRO" '+
  'From contas '+
  'Inner Join bancos On bancos.id = contas.id_banco Inner Join clientes On clientes.id = contas.id_cliente;';

  queryContas.Open;
  queryBancos.Open;
  queryClientes.Open;
end;

procedure TForm1.DBGrid1DblClick(Sender: TObject);
var
  UFIndex, MunicipioIndex, repetidor, qntRegistros: Integer;
begin
  ClearPanelData(Clientes);

  queryClientesForm.SQL.Text := 'SELECT id, nome, cpf, fixo, celular, cep, endereco, numero, bairro, id_uf, id_municipio FROM clientes WHERE id = :id;';
  queryClientesForm.ParamByName('id').AsInteger := queryClientes.FieldByName('ID').AsInteger;
  queryClientesForm.Open;

  txtID.Text := queryClientesForm.FieldByName('id').AsString;
  txtNOME.Text := queryClientesForm.FieldByName('nome').AsString;
  txtCPF.Text := queryClientesForm.FieldByName('cpf').AsString;
  txtFIXO.Text := queryClientesForm.FieldByName('fixo').AsString;
  txtMOVEL.Text := queryClientesForm.FieldByName('celular').AsString;
  txtCEP.Text := queryClientesForm.FieldByName('cep').AsString;
  txtENDERECO.Text := queryClientesForm.FieldByName('endereco').AsString;
  txtNUMERO.Text := queryClientesForm.FieldByName('numero').AsString;
  txtBAIRRO.Text := queryClientesForm.FieldByName('bairro').AsString;

  UFIndex := listUF.Items.IndexOfObject(TObject(queryClientesForm.FieldByName('id_uf').AsInteger));
  if UFIndex <> -1 then
    listUF.ItemIndex := UFIndex; // Define o ItemIndex com o �ndice correto da UF

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

  // Atribui o id_municipio ao objeto do item selecionado na listMUNICIPIO
  MunicipioIndex := listMUNICIPIO.Items.IndexOfObject(TObject(queryClientesForm.FieldByName('id_municipio').AsInteger));
  if MunicipioIndex <> -1 then
    listMUNICIPIO.ItemIndex := MunicipioIndex; // Define o ItemIndex com o �ndice correto do Munic�pio



  {listUF.Items.Objects[listUF.ItemIndex] := TObject(queryClientesForm.FieldByName('id_uf').AsInteger);
  listMUNICIPIO.Items.Objects[listMUNICIPIO.ItemIndex] := TObject(queryClientesForm.FieldByName('id_municipio').AsInteger);}

  {listUF.Items.Objects[listUF.ItemIndex] := TObject(queryClientesForm.FieldByName('id_uf').AsInteger);
  listMUNICIPIO.Items.Objects[listMUNICIPIO.ItemIndex] := TObject(queryClientesForm.FieldByName('id_municipio').AsInteger);}
end;

procedure TForm1.DBGrid2DblClick(Sender: TObject);
begin
  ClearPanelData(Bancos);

  queryBancosForm.SQL.Text := 'SELECT id, descricao, ativo FROM bancos WHERE id = :id;';
  queryBancosForm.ParamByName('id').AsInteger := queryBancos.FieldByName('ID').AsInteger;
  queryBancosForm.Open;

  txtIDBANCO.Text := queryBancosForm.FieldByName('id').AsString;
  txtNOMEBANCO.Text := queryBancosForm.FieldByName('descricao').AsString;

  if queryBancosForm.FieldByName('ativo').AsString = 'S' then
    begin
      listATIVOBANCO.Text := 'Sim';
    end

  else
    begin
      listATIVOBANCO.Text := 'N�o';
    end;

end;



procedure TForm1.DBGrid3DblClick(Sender: TObject); // ADAPTAR PARA O CONTAINER DE CONTAS
var
  BancoIndex, ClienteIndex, repetidor, qntRegistros: Integer;
begin
  ClearPanelData(Contas);

  queryContasForm.SQL.Text := 'SELECT id, id_banco, id_cliente, agencia, numero, saldo_anterior, saldo_atual, total_debito, total_credito, data_ultimo_movimento, data_criacao, ativo, descricao '+
	'FROM contas WHERE id = :id;';
  queryContasForm.ParamByName('id').AsInteger := queryContas.FieldByName('ID').AsInteger;
  queryContasForm.Open;

  txtIDContas.Text := queryContasForm.FieldByName('id').AsString;

  BancoIndex := listBancos.Items.IndexOfObject(TObject(queryContasForm.FieldByName('id_banco').AsInteger));
  if BancoIndex <> -1 then
    listBancos.ItemIndex := BancoIndex;

  ClienteIndex := listClientes.Items.IndexOfObject(TObject(queryContasForm.FieldByName('id_cliente').AsInteger));
  if ClienteIndex <> -1 then
    listClientes.ItemIndex := ClienteIndex;

  txtAgencia.Text := queryContasForm.FieldByName('agencia').AsString;
  txtNumConta.Text := queryContasForm.FieldByName('numero').AsString;
  txtSaldoAnterior.Text := queryContasForm.FieldByName('saldo_anterior').AsString;
  txtSaldoAtual.Text := queryContasForm.FieldByName('saldo_atual').AsString;
  txtTotalDebito.Text := queryContasForm.FieldByName('total_debito').AsString;
  txtTotalCredito.Text := queryContasForm.FieldByName('total_credito').AsString;
  txtUltimaAlteracao.Text := queryContasForm.FieldByName('data_ultimo_movimento').AsString;
  txtDataCadastro.Text := queryContasForm.FieldByName('data_criacao').AsString;
  txtDescricaoConta.Text := queryContasForm.FieldByName('descricao').AsString;

  if queryContasForm.FieldByName('ativo').AsString = 'S' then
    begin
      listAtivo.Text := 'Sim';
    end

  else
    begin
      listAtivo.Text := 'N�o';
    end;

end;

end.
