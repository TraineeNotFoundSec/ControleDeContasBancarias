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
    Relatrios1: TMenuItem;
    Clientes1: TMenuItem;
    Bancos1: TMenuItem;
    Contas1: TMenuItem;
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
    btnXClientes: TButton;
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
    btnXBancos: TButton;
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
    btnXContas: TButton;
    btnSIContas: TButton;
    btnEContas: TButton;
    btnLContas: TButton;
    DBGrid3: TDBGrid;
    queryContas: TFDQuery;
    ds2: TDataSource;
    queryHistoricoContas: TFDQuery;
    queryContasForm: TFDQuery;
    Lancamentos: TPanel;
    listClientesLcmt: TComboBox;
    Label31: TLabel;
    Label32: TLabel;
    listContaLcmt: TComboBox;
    Label33: TLabel;
    txtValorLcmt: TEdit;
    Label34: TLabel;
    listFormaLcmt: TComboBox;
    Label35: TLabel;
    txtObsLcmt: TMemo;
    Label36: TLabel;
    btnRegistrarLcmt: TButton;
    btnXLcmt: TButton;
    DBGrid4: TDBGrid;
    totalSA: TEdit;
    totalD: TEdit;
    totalC: TEdit;
    totalSF: TEdit;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    queryTotalizadores: TFDQuery;
    Consolidado1: TMenuItem;
    Consolidado: TPanel;
    btnXConsolidado: TButton;
    DBGrid5: TDBGrid;
    Label41: TLabel;
    Label42: TLabel;
    DBGrid6: TDBGrid;
    Label43: TLabel;
    DBGrid7: TDBGrid;
    Label44: TLabel;
    DBGrid8: TDBGrid;
    dsConsolidacao: TDataSource;
    queryConsolidacao: TFDQuery;
    btnFiltroConsolidacao: TButton;
    listBancosC: TComboBox;
    listClientesC: TComboBox;
    listContasC: TComboBox;
    Panel1: TPanel;
    Analitico: TPanel;
    btnXAnalitico: TButton;
    listContaA: TComboBox;
    txtDeA: TEdit;
    txtAteA: TEdit;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    btnFiltrarA: TButton;
    cbFiltroData: TCheckBox;
    DBGrid9: TDBGrid;
    procedure Clientes1Click(Sender: TObject);
    procedure btnXClientesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEClientesClick(Sender: TObject);
    procedure btnSIClientesClick(Sender: TObject);
    procedure listUFChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnLClientesClick(Sender: TObject);
    procedure Bancos1Click(Sender: TObject);
    procedure btnXBancosClick(Sender: TObject);
    procedure btnLBancosClick(Sender: TObject);
    procedure btnEBancosClick(Sender: TObject);
    procedure btnSIBancosClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Contas1Click(Sender: TObject);
    procedure btnLContasClick(Sender: TObject);
    procedure btnEContasClick(Sender: TObject);
    procedure btnSIContasClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure btnXContasClick(Sender: TObject);
    procedure Analtico1Click(Sender: TObject);
    procedure listClientesChange(Sender: TObject);
    procedure btnXConsolidadoClick(Sender: TObject);
    procedure Consolidado1Click(Sender: TObject);
    procedure btnFiltroConsolidacaoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnXAnaliticoClick(Sender: TObject);
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
          TComboBox(Panel.Controls[I]).ItemIndex := -1; // Reseta a seleção do ComboBox
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

procedure TForm1.listClientesChange(Sender: TObject);
var
  indexCliente : Integer;
  query1, query2 : string;

begin
  {query1 := 'SELECT contas.id AS "ID", clientes.nome As "CLIENTE", bancos.descricao As "BANCO",'+
            ' contas.numero As "NR CONTA", contas.saldo_anterior As "SALDO ANTERIOR",'+
            ' contas.total_debito As "TOTAL DEBITO", contas.total_credito As "TOTAL CREDITO",'+
            ' contas.saldo_atual As "SALDO FINAL" '+
            ' From contas '+
            ' Inner Join bancos On bancos.id = contas.id_banco Inner Join clientes On clientes.id = contas.id_cliente'+
            ' WHERE 1=1 ';

  query2 := 'SELECT Sum(contas.saldo_anterior) As "total_SA",'+
            ' SUM(contas.total_debito) As "total_D",'+
            ' SUM(contas.total_credito) As "total_C",'+
            ' SUM(contas.saldo_atual) As "total_SF"'+
            ' FROM contas'+
            ' WHERE 1=1';


  if listClientes.Text = '' then
    begin
      indexCliente := 0;

      query1 := query1 + ' ORDER BY id;';
      query2 := query2 + ' GROUP BY contas.id_cliente;';

      queryContas.SQL.Text := query1;
      queryTotalizadores.SQL.Text := query2;

      totalSA.Text := '';
      totalD.Text := '';
      totalC.Text := '';
      totalSF.Text := '';
    end

  else
    begin
      indexCliente := Integer(listClientes.Items.Objects[listClientes.ItemIndex]);

      query1 := query1 + ' AND id_cliente = :indexCliente ORDER BY contas.id';
      query2 := query2 + ' AND id_cliente = :indexCliente GROUP BY contas.id_cliente;';

      queryContas.SQL.Text := query1;
      queryTotalizadores.SQL.Text := query2;

      queryContas.ParamByName('indexCliente').AsInteger := indexCliente;
      queryTotalizadores.ParamByName('indexCliente').AsInteger := indexCliente;
    end;

  totalSA.Text := queryTotalizadores.FieldByName('total_SA').AsString;
  totalD.Text := queryTotalizadores.FieldByName('total_D').AsString;
  totalC.Text := queryTotalizadores.FieldByName('total_C').AsString;
  totalSF.Text := queryTotalizadores.FieldByName('total_SF').AsString;

  queryTotalizadores.Open;
  queryContas.Open;}
end;

procedure TForm1.listUFChange(Sender: TObject);
var
  repetidor : integer;
  qntRegistros : integer;
  indexUF : integer;

begin
  repetidor := 0;

  listMUNICIPIO.Items.Clear;

  if listUF.Text = '' then
    begin
      indexUF := 0;
    end

  else
    begin
      indexUF := Integer(listUF.Items.Objects[listUF.ItemIndex]);
    end;

  queryMUNICIPIOS.SQL.Text := 'SELECT COUNT(id_cidade) AS qntRegistros FROM cidade WHERE id_uf = :id_uf';
  queryMUNICIPIOS.ParamByName('id_uf').AsInteger := indexUF;
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

procedure TForm1.Analtico1Click(Sender: TObject);
begin
  Clientes.Visible := False;
  Contas.Visible := False;
  Bancos.Visible := False;
  Consolidado.Visible := False;
  Analitico.Visible := not Analitico.Visible;

  ClearPanelData(Contas);
  ClearPanelData(Bancos);
  ClearPanelData(Clientes);
  ClearPanelData(Consolidado);
  ClearPanelData(Analitico);
end;

procedure TForm1.Bancos1Click(Sender: TObject);
begin
  Clientes.Visible := False;
  Contas.Visible := False;
  Bancos.Visible := not Bancos.Visible;
  Consolidado.Visible := False;
  Analitico.Visible := False;

  ClearPanelData(Contas);
  ClearPanelData(Bancos);
  ClearPanelData(Clientes);
  ClearPanelData(Consolidado);
  ClearPanelData(Analitico);

  queryBancos.SQL.Text := 'SELECT id AS "ID", descricao as "Nome" FROM bancos ORDER BY descricao;';
  queryBancos.Open;
  queryBancos.Refresh;
end;

procedure TForm1.btnSIContasClick(Sender: TObject);
var
  acao: string;
begin
  if (txtIDContas.Text = '') then
      begin
        queryIUD.SQL.Text := 'INSERT INTO contas(id_banco, id_cliente, agencia, numero, saldo_atual, descricao, total_credito, total_debito)'+
        'VALUES (:id_banco, :id_cliente, :agencia, :numero, :saldo_atual, :descricao, :total_credito, :total_debito);';

        queryIUD.ParamByName('id_banco').AsInteger := Integer(listBancos.Items.Objects[listBancos.ItemIndex]);
        queryIUD.ParamByName('id_cliente').AsInteger := Integer(listClientes.Items.Objects[listClientes.ItemIndex]);
        queryIUD.ParamByName('agencia').AsString := (txtAgencia.Text);
        queryIUD.ParamByName('numero').AsString := (txtNumConta.Text);
        // queryIUD.ParamByName('saldo_anterior').AsString := (txtSaldoAnterior.Text);
        queryIUD.ParamByName('saldo_atual').AsFloat := StrToFloat(txtSaldoAtual.Text);

        if StrToFloat(txtSaldoAtual.Text) > 0 then
          begin
          queryIUD.ParamByName('total_credito').AsFloat := StrToFloat(txtSaldoAtual.Text);
          // queryIUD.ParamByName('total_credito').AsFloat := 0.00;
          queryIUD.ParamByName('total_debito').AsFloat := 0.00;
          end

        else
          begin
            queryIUD.ParamByName('total_debito').AsFloat := StrToFloat(txtSaldoAtual.Text);
            // queryIUD.ParamByName('total_debito').AsFloat := 0.00;
            queryIUD.ParamByName('total_credito').AsFloat := 0.00;
          end;

        // queryIUD.ParamByName('data_ultimo_movimento').AsString := (txtUltimaAlteracao.Text);
        queryIUD.ParamByName('descricao').AsString := (txtDescricaoConta.Text);

        queryIUD.ExecSQL;

        queryHistoricoContas.SQL.Text := 'SELECT currval(''conta_id_seq'') AS "id_corrente";';
        // queryHistoricoContas.SQL.Text := 'SELECT id AS "id_corrente" FROM contas ORDER BY id DESC LIMIT 1';
        queryHistoricoContas.Open;

        queryIUD.SQL.Text := 'INSERT INTO historico(id_conta, saldo, acao, valor, forma, observacoes)'+
	      'VALUES (:id_conta, :saldo, :acao, :valor, :forma, :observacoes);';

        queryIUD.ParamByName('id_conta').AsInteger := queryHistoricoContas.FieldByName('id_corrente').AsInteger;
        queryIUD.ParamByName('saldo').AsFloat := 0.00;

        if StrToFloat(txtSaldoAtual.Text) > 0 then
          begin
            queryIUD.ParamByName('acao').AsString := 'E';
          end

        else
          begin
            queryIUD.ParamByName('acao').AsString := 'S';
          end;

        queryIUD.ParamByName('valor').AsFloat := StrToFloat(txtSaldoAtual.Text);
        queryIUD.ParamByName('forma').AsString := 'AUTO';
        queryIUD.ParamByName('observacoes').AsString := 'Ajuste inicial de conta';

        // queryIUD.ExecSQL;
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
        queryIUD.ParamByName('numero').AsString := (txtNumConta.Text);
        queryIUD.ParamByName('descricao').AsString := (txtDescricaoConta.Text);

        {if listAtivo.Text = 'Sim' then
                  begin
                              queryIUD.ParamByName('ativo').AsString := 'S';
                                        end
                                                else
                                                          begin
                                                                      queryIUD.ParamByName('ativo').AsString := 'N';
                                                                                end;}

        if listAtivo.Text = 'Sim' then
          begin
            queryIUD.ParamByName('ativo').AsString := 'S';
            if (StrToFloat(txtSaldoAtual.Text) > queryHistoricoContas.FieldByName('saldo_atual').AsFloat) then
              begin
                queryIUD.ParamByName('data_ultimo_movimento').AsDateTime := Now;
                queryIUD.ParamByName('saldo_anterior').AsFloat := queryHistoricoContas.FieldByName('saldo_atual').AsFloat;
                queryIUD.ParamByName('saldo_atual').AsFloat := StrToFloat(txtSaldoAtual.Text);

                queryIUD.ParamByName('total_debito').AsFloat := queryHistoricoContas.FieldByName('total_debito').AsFloat;
                queryIUD.ParamByName('total_credito').AsFloat := (StrToFloat(txtTotalCredito.Text)+(StrToFloat(txtSaldoAtual.Text)-queryHistoricoContas.FieldByName('saldo_atual').AsFloat));

                queryIUD.ExecSQL;

                acao := 'E'; // entrada

                queryIUD.SQL.Text := 'INSERT INTO public.historico(id_conta, saldo, acao, valor)'+
                'VALUES (:id_conta, :saldo, :acao, :valor);';

                queryIUD.ParamByName('id_conta').AsInteger := StrToInt(txtIDContas.Text);
                queryIUD.ParamByName('saldo').AsFloat := StrToFloat(txtSaldoAtual.Text);
                queryIUD.ParamByName('acao').AsString := acao;
                queryIUD.ParamByName('valor').AsFloat := StrToFloat(txtSaldoAtual.Text)-queryHistoricoContas.FieldByName('saldo_atual').AsFloat;

                queryIUD.ExecSQL;
              end

            else if (StrToFloat(txtSaldoAtual.Text) < queryHistoricoContas.FieldByName('saldo_atual').AsFloat) then
              begin
                queryIUD.ParamByName('data_ultimo_movimento').AsDateTime := Now;
                queryIUD.ParamByName('saldo_anterior').AsFloat := queryHistoricoContas.FieldByName('saldo_atual').AsFloat;
                queryIUD.ParamByName('saldo_atual').AsFloat := StrToFloat(txtSaldoAtual.Text);

                queryIUD.ParamByName('total_credito').AsFloat := queryHistoricoContas.FieldByName('total_credito').AsFloat;
                queryIUD.ParamByName('total_debito').AsFloat := (StrToFloat(txtTotalDebito.Text)+queryHistoricoContas.FieldByName('saldo_atual').AsFloat)-(StrToFloat(txtSaldoAtual.Text));

                queryIUD.ExecSQL;

                acao := 'S'; // saida

                queryIUD.SQL.Text := 'INSERT INTO public.historico(id_conta, saldo, acao, valor)'+
                'VALUES (:id_conta, :saldo, :acao, :valor);';

                queryIUD.ParamByName('id_conta').AsInteger := StrToInt(txtIDContas.Text);
                queryIUD.ParamByName('saldo').AsFloat := StrToFloat(txtSaldoAtual.Text);
                queryIUD.ParamByName('acao').AsString := acao;
                queryIUD.ParamByName('valor').AsFloat := StrToFloat(txtSaldoAtual.Text)-queryHistoricoContas.FieldByName('saldo_atual').AsFloat;

                queryIUD.ExecSQL;
              end

            else
              begin
                queryIUD.ParamByName('total_credito').AsFloat := queryHistoricoContas.FieldByName('total_credito').AsFloat;
                queryIUD.ParamByName('total_debito').AsFloat := queryHistoricoContas.FieldByName('total_debito').AsFloat;
                queryIUD.ParamByName('data_ultimo_movimento').AsDateTime := queryHistoricoContas.FieldByName('data_ultimo_movimento').AsDateTime;
                queryIUD.ParamByName('saldo_anterior').AsFloat := queryHistoricoContas.FieldByName('saldo_anterior').AsFloat;
                queryIUD.ParamByName('saldo_atual').AsFloat := queryHistoricoContas.FieldByName('saldo_atual').AsFloat;

                queryIUD.ExecSQL;
              end;
          end
        else
          begin
            queryIUD.ParamByName('ativo').AsString := 'N';
            queryIUD.ParamByName('total_credito').AsFloat := queryHistoricoContas.FieldByName('total_credito').AsFloat;
            queryIUD.ParamByName('total_debito').AsFloat := queryHistoricoContas.FieldByName('total_debito').AsFloat;
            queryIUD.ParamByName('data_ultimo_movimento').AsDateTime := queryHistoricoContas.FieldByName('data_ultimo_movimento').AsDateTime;
            queryIUD.ParamByName('saldo_anterior').AsFloat := queryHistoricoContas.FieldByName('saldo_anterior').AsFloat;
            queryIUD.ParamByName('saldo_atual').AsFloat := queryHistoricoContas.FieldByName('saldo_atual').AsFloat;

            queryIUD.ExecSQL;

            ShowMessage('Não é possível alterar o saldo com a conta desativada');
          end;
      end;

  queryContas.Open;
  queryContas.Refresh;

  ClearPanelData(Contas);
  listClientesChange(nil);
end;

procedure TForm1.btnEContasClick(Sender: TObject);
begin
  if (txtIDContas.Text = '') then
    begin
      ShowMessage('Não foi possível excluir o registro corrente');
    end
  else
    begin
      queryIUD.SQL.Text := 'DELETE FROM contas WHERE id = :id';
      queryIUD.ParamByName('id').AsInteger := StrToInt(txtIDContas.Text);

      try
        queryIUD.ExecSQL;
        ShowMessage('Registro excluído com sucesso!')
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
  listClientesChange(nil);
end;

procedure TForm1.btnFiltroConsolidacaoClick(Sender: TObject);
var
  query, queryAdicional : string;
begin
  query :=  'SELECT clientes.nome AS "CLIENTE", bancos.descricao AS "BANCO", contas.numero AS "NRO CONTA",'+
            ' contas.saldo_anterior AS "SALDO ANTERIOR", contas.total_debito AS "TOTAL DEBITO",'+
            ' contas.total_credito AS "TOTAL CREDITO", contas.saldo_atual AS "SALDO FINAL"'+
            ' From contas'+
            ' Inner Join clientes On clientes.id = contas.id_cliente'+
            ' Inner Join bancos On bancos.id = contas.id_banco'+
            ' Where 1 = 1';

  queryAdicional := 'SELECT SUM(contas.saldo_anterior) As "SALDO ANTERIOR",'+
                    'Sum(contas.total_debito) As "TOTAL DEBITO",'+
                    'Sum(contas.total_credito) As "TOTAL CREDITO",'+
                    'Sum(contas.saldo_atual) As "SALDO FINAL" '+
                    'From contas '+
                    'Where 1 = 1';

  // ------------------------------------------------------------------------
  if listBancosC.Text <> '' then
    begin
     query := query + ' AND bancos.id = '+ IntToStr(Integer(listBancosC.Items.Objects[listBancosC.ItemIndex]));
     queryAdicional := queryAdicional + ' AND id_banco = '+ IntToStr(Integer(listBancosC.Items.Objects[listBancosC.ItemIndex]));
    end;

  if listClientesC.Text <> '' then
    begin
      query := query + ' AND clientes.id = '+ IntToStr(Integer(listClientesC.Items.Objects[listClientesC.ItemIndex]));
      queryAdicional := queryAdicional + ' AND id_cliente = '+ IntToStr(Integer(listClientesC.Items.Objects[listClientesC.ItemIndex]));
    end;

  if listContasC.Text <> '' then
    begin
      query := query + ' AND contas.id = '+ IntToStr(Integer(listContasC.Items.Objects[listContasC.ItemIndex]));
      queryAdicional := queryAdicional + ' AND id = '+ IntToStr(Integer(listContasC.Items.Objects[listContasC.ItemIndex]));
    end;

  query := query + ' ORDER BY contas.id;';
  // queryAdicional := queryAdicional + ' ORDER BY contas.id;';

  // ShowMessage(query);

  queryConsolidacao.SQL.Text := query;
  queryConsolidacao.Open;

  // ShowMessage(queryAdicional);

  queryTotalizadores.SQL.Text := queryAdicional;
  queryTotalizadores.Open;

  queryConsolidacao.Append;

  queryConsolidacao.FieldByName('CLIENTE').AsString := 'Total do cliente';
  queryConsolidacao.FieldByName('SALDO ANTERIOR').AsString := queryTotalizadores.FieldByName('SALDO ANTERIOR').AsString;
  queryConsolidacao.FieldByName('TOTAL CREDITO').AsString := queryTotalizadores.FieldByName('TOTAL CREDITO').AsString;
  queryConsolidacao.FieldByName('SALDO FINAL').AsString := queryTotalizadores.FieldByName('SALDO FINAL').AsString;
  queryConsolidacao.FieldByName('TOTAL DEBITO').AsString := queryTotalizadores.FieldByName('TOTAL DEBITO').AsString;

  // ------------------------------------------------------------------------


  DBGrid8.Columns[0].Width := 100;
  DBGrid8.Columns[1].Width := 90;
  DBGrid8.Columns[2].Width := 75;
  DBGrid8.Columns[3].Width := 100;
  DBGrid8.Columns[4].Width := 80;
  DBGrid8.Columns[5].Width := 90;
  DBGrid8.Columns[6].Width := 75;

end;

procedure TForm1.btnLContasClick(Sender: TObject);
begin
  ClearPanelData(Contas);

  queryContas.Open;
  queryContas.Refresh;
  listClientesChange(nil);
end;

procedure TForm1.btnXClientesClick(Sender: TObject);
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

procedure TForm1.btnXAnaliticoClick(Sender: TObject);
begin
  ClearPanelData(Analitico);

  Analitico.Visible := Not Analitico.Visible;
end;

procedure TForm1.btnXBancosClick(Sender: TObject);
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
      ShowMessage('Não foi possível excluir o registro corrente');
    end
  else
    begin
      queryIUD.SQL.Text := 'DELETE FROM bancos WHERE id = :id';
      queryIUD.ParamByName('id').AsInteger := StrToInt(txtIDBANCO.Text);

      try
        queryIUD.ExecSQL;
        ShowMessage('Registro excluído com sucesso!')
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



procedure TForm1.btnXContasClick(Sender: TObject);
begin
  Contas.Visible := Not Contas.Visible;

  ClearPanelData(Contas);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
    Analitico.Visible := not Analitico.Visible;
end;

procedure TForm1.btnXConsolidadoClick(Sender: TObject);
begin
  ClearPanelData(Consolidado);

  Consolidado.Visible := not Consolidado.Visible;
end;

procedure TForm1.btnEClientesClick(Sender: TObject);
begin
  if (txtID.Text = '') then
    begin
      ShowMessage('Não foi possível excluir o registro corrente');
    end
  else
    begin
      queryIUD.SQL.Text := 'DELETE FROM clientes WHERE id = :id';
      queryIUD.ParamByName('id').AsInteger := StrToInt(txtID.Text);

      try
        queryIUD.ExecSQL;
        ShowMessage('Registro excluído com sucesso!')
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
  Contas.Visible := False;
  Bancos.Visible := False;
  Consolidado.Visible := False;
  Analitico.Visible := False;

  ClearPanelData(Contas);
  ClearPanelData(Bancos);
  ClearPanelData(Clientes);
  ClearPanelData(Consolidado);
  ClearPanelData(Analitico);

  queryClientes.SQL.Text := 'SELECT id AS "ID", nome as "Nome" FROM clientes ORDER BY nome;';
  queryClientes.Open;
end;

procedure TForm1.Consolidado1Click(Sender: TObject);
var
  repetidor, qntRegistros : integer;
  listagem : string;

begin
  Clientes.Visible := False;
  Contas.Visible := False;
  Bancos.Visible := False;
  Consolidado.Visible := not Consolidado.Visible;
  Analitico.Visible := False;

  ClearPanelData(Contas);
  ClearPanelData(Bancos);
  ClearPanelData(Clientes);
  ClearPanelData(Consolidado);
  ClearPanelData(Analitico);

  listBancosC.Items.Clear;
  listClientesC.Items.Clear;
  listContasC.Items.Clear;

  repetidor := 0;

  queryBancos.SQL.Text := 'SELECT COUNT(id) AS "qntRegistros" FROM bancos;';
  queryBancos.Open;

  qntRegistros := queryBancos.FieldByName('qntRegistros').AsInteger;

  queryBancos.SQL.Text := 'SELECT id, descricao FROM bancos ORDER BY descricao;';
  queryBancos.Open;

  while repetidor < qntRegistros do
    begin
      listBancosC.Items.Add(queryBancos.FieldByName('descricao').AsString);
      listBancosC.Items.Objects[listBancosC.Items.Count - 1] := TObject(queryBancos.FieldByName('id').AsInteger);

      queryBancos.Next;
      repetidor := repetidor + 1;
    end;

  //-----------------------------------------------------------------------

  repetidor := 0;

  queryClientes.SQL.Text := 'SELECT COUNT(id) AS "qntRegistros" FROM clientes;';
  queryClientes.Open;

  qntRegistros := queryClientes.FieldByName('qntRegistros').AsInteger;

  queryClientes.SQL.Text := 'SELECT id, nome FROM clientes ORDER BY nome;';
  queryClientes.Open;

  while repetidor < qntRegistros do
    begin
      listClientesC.Items.Add(queryClientes.FieldByName('nome').AsString);
      listClientesC.Items.Objects[listClientesC.Items.Count - 1] := TObject(queryClientes.FieldByName('id').AsInteger);

      queryClientes.Next;
      repetidor := repetidor + 1;
    end;

  //-----------------------------------------------------------------------

  repetidor := 0;

  queryContas.SQL.Text := 'SELECT COUNT(id) AS "qntRegistros" FROM contas;';
  queryContas.Open;

  qntRegistros := queryContas.FieldByName('qntRegistros').AsInteger;

  queryContas.SQL.Text := 'SELECT contas.id, clientes.nome AS "CLIENTE", bancos.descricao AS "BANCO",'+
  'contas.numero AS "NR CONTA"'+ // erro aqui
  'From contas '+
  'Inner Join bancos On bancos.id = contas.id_banco Inner Join clientes On clientes.id = contas.id_cliente;';
  queryContas.Open;



  while repetidor < qntRegistros do
    begin
      listagem := 'Cliente: ' + queryContas.FieldByName('CLIENTE').AsString + ' - Banco: ' + queryContas.FieldByName('BANCO').AsString + ' - Conta: ' + queryContas.FieldByName('NR CONTA').AsString;
      listContasC.Items.Add(listagem);
      listContasC.Items.Objects[listContasC.Items.Count - 1] := TObject(queryContas.FieldByName('id').AsInteger);

      queryContas.Next;
      repetidor := repetidor + 1;
    end;

  //-----------------------------------------------------------------------

  queryBancos.SQL.Text := 'SELECT id AS "ID", descricao as "Nome" FROM bancos ORDER BY descricao;';
  queryBancos.Open;

  queryClientes.SQL.Text := 'SELECT id AS "ID", nome as "Nome" FROM clientes ORDER BY nome;';
  queryClientes.Open;

  queryContas.SQL.Text := 'SELECT contas.id AS "ID", clientes.nome As "CLIENTE", bancos.descricao As "BANCO",'+
  'contas.numero As "NR CONTA"'+
  'From contas '+
  'Inner Join bancos On bancos.id = contas.id_banco Inner Join clientes On clientes.id = contas.id_cliente;';

  queryContas.Open;

end;


procedure TForm1.Contas1Click(Sender: TObject);
begin
  Clientes.Visible := False;
  Contas.Visible := not Contas.Visible;
  Bancos.Visible := False;
  Consolidado.Visible := False;
  Analitico.Visible := False;

  ClearPanelData(Contas);
  ClearPanelData(Bancos);
  ClearPanelData(Clientes);
  ClearPanelData(Consolidado);
  ClearPanelData(Analitico);

  queryContas.SQL.Text := 'SELECT contas.id AS "ID", clientes.nome As "CLIENTE", bancos.descricao As "BANCO",'+
  'contas.numero As "NR CONTA", contas.saldo_anterior As "SALDO ANTERIOR",'+
  'contas.total_debito As "TOTAL DEBITO", contas.total_credito As "TOTAL CREDITO",'+
  'contas.saldo_atual As "SALDO FINAL" '+
  'From contas '+
  'Inner Join bancos On bancos.id = contas.id_banco Inner Join clientes On clientes.id = contas.id_cliente;';

  queryContas.Open;

  // --------------------------------------------------------------

  Form1.FormCreate(nil);


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
    listUF.ItemIndex := UFIndex; // Define o ItemIndex com o índice correto da UF

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
    listMUNICIPIO.ItemIndex := MunicipioIndex; // Define o ItemIndex com o índice correto do Município



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
      listATIVOBANCO.Text := 'Não';
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
      listAtivo.Text := 'Não';
    end;

  listClientesChange(nil);
end;

end.
