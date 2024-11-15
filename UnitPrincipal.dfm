object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Controle de Contas Banc'#225'rias'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OnCreate = FormCreate
  TextHeight = 15
  object Clientes: TPanel
    Left = 8
    Top = 8
    Width = 608
    Height = 408
    TabOrder = 0
    Visible = False
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 155
      Height = 21
      Alignment = taCenter
      Caption = 'Cadastro de Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 64
      Top = 40
      Width = 89
      Height = 15
      Caption = 'Nome Completo'
    end
    object Label3: TLabel
      Left = 8
      Top = 85
      Width = 21
      Height = 15
      Caption = 'CPF'
    end
    object Label4: TLabel
      Left = 262
      Top = 130
      Width = 49
      Height = 15
      Caption = 'Endere'#231'o'
    end
    object Label5: TLabel
      Left = 518
      Top = 85
      Width = 44
      Height = 15
      Caption = 'N'#250'mero'
    end
    object Label6: TLabel
      Left = 8
      Top = 132
      Width = 31
      Height = 15
      Caption = 'Bairro'
    end
    object Label7: TLabel
      Left = 9
      Top = 177
      Width = 101
      Height = 15
      Caption = 'Unidade Federativa'
    end
    object Label8: TLabel
      Left = 135
      Top = 177
      Width = 54
      Height = 15
      Caption = 'Munic'#237'pio'
    end
    object Label9: TLabel
      Left = 402
      Top = 85
      Width = 21
      Height = 15
      Caption = 'CEP'
    end
    object Label10: TLabel
      Left = 135
      Top = 85
      Width = 69
      Height = 15
      Caption = 'Telefone Fixo'
    end
    object Label11: TLabel
      Left = 262
      Top = 85
      Width = 80
      Height = 15
      Caption = 'Telefone M'#243'vel'
    end
    object Label12: TLabel
      Left = 8
      Top = 40
      Width = 11
      Height = 15
      Caption = 'ID'
    end
    object txtNOME: TEdit
      Left = 64
      Top = 56
      Width = 536
      Height = 23
      TabOrder = 1
    end
    object txtENDERECO: TEdit
      Left = 262
      Top = 148
      Width = 338
      Height = 23
      TabOrder = 8
    end
    object txtNUMERO: TEdit
      Left = 518
      Top = 101
      Width = 82
      Height = 23
      TabOrder = 6
    end
    object txtBAIRRO: TEdit
      Left = 8
      Top = 148
      Width = 250
      Height = 23
      TabOrder = 7
    end
    object listUF: TComboBox
      Left = 8
      Top = 193
      Width = 121
      Height = 23
      TabOrder = 9
      OnChange = listUFChange
    end
    object listMUNICIPIO: TComboBox
      Left = 135
      Top = 193
      Width = 465
      Height = 23
      TabOrder = 10
    end
    object btnXClientes: TButton
      Left = 575
      Top = 9
      Width = 25
      Height = 25
      Hint = 'Fechar'
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      OnClick = btnXClientesClick
    end
    object DBGrid1: TDBGrid
      Left = 9
      Top = 222
      Width = 592
      Height = 147
      DataSource = ds
      TabOrder = 15
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
    end
    object btnSIClientes: TButton
      Left = 573
      Top = 375
      Width = 26
      Height = 25
      Hint = 'Salvar/Incluir'
      Caption = 'S/I'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = btnSIClientesClick
    end
    object btnEClientes: TButton
      Left = 541
      Top = 375
      Width = 26
      Height = 25
      Hint = 'Excluir'
      Caption = 'E'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnClick = btnEClientesClick
    end
    object txtID: TEdit
      Left = 8
      Top = 56
      Width = 50
      Height = 23
      Enabled = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 0
    end
    object btnLClientes: TButton
      Left = 509
      Top = 375
      Width = 26
      Height = 25
      Hint = 'Excluir'
      Caption = 'L'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = btnLClientesClick
    end
    object txtCPF: TMaskEdit
      Left = 8
      Top = 101
      Width = 120
      Height = 23
      EditMask = '000.000.000-00'
      MaxLength = 14
      TabOrder = 2
      Text = '   .   .   -  '
    end
    object txtFIXO: TMaskEdit
      Left = 134
      Top = 101
      Width = 124
      Height = 23
      EditMask = '(00) 0000-0000'
      MaxLength = 14
      TabOrder = 3
      Text = '(  )     -    '
    end
    object txtMOVEL: TMaskEdit
      Left = 262
      Top = 101
      Width = 113
      Height = 23
      EditMask = '(00) 0 0000-0000'
      MaxLength = 16
      TabOrder = 4
      Text = '(  )       -    '
    end
    object txtCEP: TMaskEdit
      Left = 402
      Top = 101
      Width = 110
      Height = 23
      EditMask = '00000-000'
      MaxLength = 9
      TabOrder = 5
      Text = '     -   '
    end
  end
  object Lancamentos: TPanel
    Left = 8
    Top = 8
    Width = 534
    Height = 369
    TabOrder = 2
    Visible = False
    object Label31: TLabel
      Left = 8
      Top = 8
      Width = 101
      Height = 21
      Caption = 'Lan'#231'amentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label32: TLabel
      Left = 8
      Top = 40
      Width = 37
      Height = 15
      Caption = 'Cliente'
    end
    object Label33: TLabel
      Left = 183
      Top = 40
      Width = 32
      Height = 15
      Caption = 'Conta'
    end
    object Label34: TLabel
      Left = 8
      Top = 85
      Width = 26
      Height = 15
      Caption = 'Valor'
    end
    object Label35: TLabel
      Left = 183
      Top = 85
      Width = 34
      Height = 15
      Caption = 'Forma'
    end
    object Label36: TLabel
      Left = 358
      Top = 40
      Width = 67
      Height = 15
      Caption = 'Observa'#231#245'es'
    end
    object listClientesLcmt: TComboBox
      Left = 8
      Top = 56
      Width = 169
      Height = 23
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
    end
    object listContaLcmt: TComboBox
      Left = 183
      Top = 56
      Width = 169
      Height = 23
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
    end
    object txtValorLcmt: TEdit
      Left = 8
      Top = 101
      Width = 169
      Height = 23
      TabOrder = 2
    end
    object listFormaLcmt: TComboBox
      Left = 183
      Top = 101
      Width = 169
      Height = 23
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
    end
    object txtObsLcmt: TMemo
      Left = 358
      Top = 56
      Width = 169
      Height = 68
      Lines.Strings = (
        'txtObsLcmt')
      TabOrder = 4
    end
    object btnRegistrarLcmt: TButton
      Left = 445
      Top = 130
      Width = 82
      Height = 25
      Caption = 'REGISTRAR'
      TabOrder = 5
    end
    object btnXLcmt: TButton
      Left = 502
      Top = 9
      Width = 25
      Height = 25
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object DBGrid4: TDBGrid
      Left = 8
      Top = 161
      Width = 519
      Height = 200
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object Bancos: TPanel
    Left = 8
    Top = 8
    Width = 608
    Height = 408
    TabOrder = 1
    Visible = False
    object Label13: TLabel
      Left = 8
      Top = 8
      Width = 148
      Height = 21
      Caption = 'Cadastro de Bancos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 8
      Top = 40
      Width = 11
      Height = 15
      Caption = 'ID'
    end
    object Label15: TLabel
      Left = 64
      Top = 40
      Width = 51
      Height = 15
      Caption = 'Descri'#231#227'o'
    end
    object Label16: TLabel
      Left = 10
      Top = 85
      Width = 28
      Height = 15
      Caption = 'Ativo'
    end
    object btnXBancos: TButton
      Left = 573
      Top = 9
      Width = 27
      Height = 25
      Hint = 'Fechar'
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnXBancosClick
    end
    object btnSIBancos: TButton
      Left = 573
      Top = 375
      Width = 27
      Height = 25
      Hint = 'Salvar/Incluir'
      Caption = 'S/I'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnSIBancosClick
    end
    object btnEBancos: TButton
      Left = 541
      Top = 375
      Width = 26
      Height = 25
      Hint = 'Excluir'
      Caption = 'E'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnEBancosClick
    end
    object btnLBancos: TButton
      Left = 509
      Top = 375
      Width = 26
      Height = 25
      Hint = 'Limpar'
      Caption = 'L'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnLBancosClick
    end
    object txtIDBANCO: TEdit
      Left = 8
      Top = 56
      Width = 50
      Height = 23
      Enabled = False
      ReadOnly = True
      TabOrder = 0
    end
    object txtNOMEBANCO: TEdit
      Left = 64
      Top = 56
      Width = 536
      Height = 23
      TabOrder = 1
    end
    object listATIVOBANCO: TComboBox
      Left = 8
      Top = 101
      Width = 99
      Height = 23
      TabOrder = 6
      Visible = False
      Items.Strings = (
        'Sim'
        'N'#227'o')
    end
    object DBGrid2: TDBGrid
      Left = 8
      Top = 85
      Width = 592
      Height = 284
      DataSource = ds1
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = DBGrid2DblClick
    end
  end
  object Contas: TPanel
    Left = 8
    Top = 8
    Width = 608
    Height = 408
    TabOrder = 3
    Visible = False
    object Label17: TLabel
      Left = 8
      Top = 8
      Width = 146
      Height = 21
      Caption = 'Cadastro de Contas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 8
      Top = 40
      Width = 11
      Height = 15
      Caption = 'ID'
    end
    object Label19: TLabel
      Left = 64
      Top = 40
      Width = 33
      Height = 15
      Caption = 'Banco'
    end
    object Label20: TLabel
      Left = 223
      Top = 40
      Width = 37
      Height = 15
      Caption = 'Cliente'
    end
    object Label21: TLabel
      Left = 8
      Top = 85
      Width = 43
      Height = 15
      Caption = 'Ag'#234'ncia'
    end
    object Label22: TLabel
      Left = 115
      Top = 85
      Width = 65
      Height = 15
      Caption = 'Num. Conta'
    end
    object Label23: TLabel
      Left = 9
      Top = 132
      Width = 75
      Height = 15
      Caption = 'Saldo Anterior'
    end
    object Label24: TLabel
      Left = 331
      Top = 130
      Width = 57
      Height = 15
      Caption = 'Saldo Final'
    end
    object Label25: TLabel
      Left = 8
      Top = 178
      Width = 90
      Height = 15
      Caption = 'Data de Cadastro'
    end
    object Label26: TLabel
      Left = 223
      Top = 177
      Width = 88
      Height = 15
      Caption = #218'ltima Altera'#231#227'o'
    end
    object Label27: TLabel
      Left = 223
      Top = 85
      Width = 51
      Height = 15
      Caption = 'Descri'#231#227'o'
    end
    object Label28: TLabel
      Left = 115
      Top = 130
      Width = 63
      Height = 15
      Caption = 'Total D'#233'bito'
    end
    object Label29: TLabel
      Left = 223
      Top = 130
      Width = 67
      Height = 15
      Caption = 'Total Cr'#233'dito'
    end
    object Label30: TLabel
      Left = 498
      Top = 130
      Width = 28
      Height = 15
      Caption = 'Ativo'
    end
    object Label37: TLabel
      Left = 8
      Top = 359
      Width = 75
      Height = 15
      Caption = 'Saldo Anterior'
      Visible = False
    end
    object Label38: TLabel
      Left = 115
      Top = 359
      Width = 63
      Height = 15
      Caption = 'Total D'#233'bito'
      Visible = False
    end
    object Label39: TLabel
      Left = 223
      Top = 359
      Width = 67
      Height = 15
      Caption = 'Total Cr'#233'dito'
      Visible = False
    end
    object Label40: TLabel
      Left = 331
      Top = 359
      Width = 57
      Height = 15
      Caption = 'Saldo Final'
      Visible = False
    end
    object txtIDContas: TEdit
      Left = 8
      Top = 56
      Width = 49
      Height = 23
      Enabled = False
      ReadOnly = True
      TabOrder = 0
    end
    object listBancos: TComboBox
      Left = 63
      Top = 56
      Width = 154
      Height = 23
      TabOrder = 1
    end
    object listClientes: TComboBox
      Left = 223
      Top = 56
      Width = 377
      Height = 23
      TabOrder = 2
      OnChange = listClientesChange
    end
    object txtAgencia: TEdit
      Left = 8
      Top = 101
      Width = 101
      Height = 23
      TabOrder = 3
    end
    object txtNumConta: TEdit
      Left = 115
      Top = 101
      Width = 102
      Height = 23
      TabOrder = 4
    end
    object txtSaldoAnterior: TEdit
      Left = 8
      Top = 148
      Width = 101
      Height = 23
      Enabled = False
      ReadOnly = True
      TabOrder = 7
    end
    object txtTotalDebito: TEdit
      Left = 115
      Top = 148
      Width = 102
      Height = 23
      Enabled = False
      ReadOnly = True
      TabOrder = 8
    end
    object txtTotalCredito: TEdit
      Left = 223
      Top = 148
      Width = 102
      Height = 23
      Enabled = False
      ReadOnly = True
      TabOrder = 9
    end
    object txtDataCadastro: TEdit
      Left = 8
      Top = 193
      Width = 209
      Height = 23
      Enabled = False
      ReadOnly = True
      TabOrder = 11
    end
    object txtUltimaAlteracao: TEdit
      Left = 223
      Top = 193
      Width = 210
      Height = 23
      Enabled = False
      ReadOnly = True
      TabOrder = 12
    end
    object listAtivo: TComboBox
      Left = 498
      Top = 148
      Width = 102
      Height = 23
      TabOrder = 10
      Items.Strings = (
        'Sim'
        'N'#227'o')
    end
    object txtDescricaoConta: TEdit
      Left = 223
      Top = 101
      Width = 377
      Height = 23
      TabOrder = 5
    end
    object btnXContas: TButton
      Left = 576
      Top = 9
      Width = 25
      Height = 25
      Hint = 'Fechar'
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
      OnClick = btnXContasClick
    end
    object btnSIContas: TButton
      Left = 576
      Top = 375
      Width = 25
      Height = 25
      Hint = 'Salvar/Inserir'
      Caption = 'S/I'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = btnSIContasClick
    end
    object btnEContas: TButton
      Left = 545
      Top = 375
      Width = 25
      Height = 25
      Hint = 'Entrar'
      Caption = 'E'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      OnClick = btnEContasClick
    end
    object btnLContas: TButton
      Left = 514
      Top = 375
      Width = 25
      Height = 25
      Hint = 'Limpar'
      Caption = 'L'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
      OnClick = btnLContasClick
    end
    object DBGrid3: TDBGrid
      Left = 9
      Top = 222
      Width = 593
      Height = 147
      DataSource = ds2
      TabOrder = 17
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = DBGrid3DblClick
    end
    object totalSA: TEdit
      Left = 8
      Top = 375
      Width = 101
      Height = 23
      Enabled = False
      ReadOnly = True
      TabOrder = 18
      Visible = False
    end
    object totalD: TEdit
      Left = 115
      Top = 375
      Width = 102
      Height = 23
      Enabled = False
      ReadOnly = True
      TabOrder = 19
      Visible = False
    end
    object totalC: TEdit
      Left = 223
      Top = 375
      Width = 102
      Height = 23
      Enabled = False
      ReadOnly = True
      TabOrder = 20
      Visible = False
    end
    object totalSF: TEdit
      Left = 331
      Top = 375
      Width = 102
      Height = 23
      Color = clLightcyan
      Enabled = False
      TabOrder = 21
      Visible = False
    end
    object txtSaldoAtual: TMaskEdit
      Left = 331
      Top = 148
      Width = 100
      Height = 23
      Color = clSkyBlue
      TabOrder = 6
      Text = ''
    end
  end
  object Consolidado: TPanel
    Left = 8
    Top = 8
    Width = 608
    Height = 408
    TabOrder = 4
    Visible = False
    object Label41: TLabel
      Left = 8
      Top = 8
      Width = 184
      Height = 21
      Caption = 'Consolida'#231#227'o dos dados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label42: TLabel
      Left = 8
      Top = 35
      Width = 38
      Height = 15
      Caption = 'Bancos'
    end
    object Label43: TLabel
      Left = 310
      Top = 35
      Width = 42
      Height = 15
      Caption = 'Clientes'
    end
    object Label44: TLabel
      Left = 7
      Top = 85
      Width = 37
      Height = 15
      Caption = 'Contas'
    end
    object DBGrid5: TDBGrid
      Left = 46
      Top = 245
      Width = 296
      Height = 72
      DataSource = ds1
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Visible = False
    end
    object DBGrid6: TDBGrid
      Left = 249
      Top = 265
      Width = 290
      Height = 72
      DataSource = ds
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Visible = False
    end
    object btnXConsolidado: TButton
      Left = 576
      Top = 9
      Width = 25
      Height = 25
      Hint = 'Fechar'
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnXConsolidadoClick
    end
    object DBGrid7: TDBGrid
      Left = 8
      Top = 222
      Width = 593
      Height = 111
      DataSource = ds2
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Visible = False
    end
    object DBGrid8: TDBGrid
      Left = 8
      Top = 161
      Width = 593
      Height = 237
      DataSource = dsConsolidacao
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object btnFiltroConsolidacao: TButton
      Left = 524
      Top = 130
      Width = 75
      Height = 25
      Caption = 'FITRAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnFiltroConsolidacaoClick
    end
    object listBancosC: TComboBox
      Left = 8
      Top = 52
      Width = 296
      Height = 23
      TabOrder = 6
    end
    object listClientesC: TComboBox
      Left = 311
      Top = 52
      Width = 290
      Height = 23
      TabOrder = 7
    end
    object listContasC: TComboBox
      Left = 8
      Top = 101
      Width = 592
      Height = 23
      TabOrder = 8
    end
  end
  object Analitico: TPanel
    Left = 8
    Top = 8
    Width = 608
    Height = 408
    TabOrder = 7
    Visible = False
    object Label45: TLabel
      Left = 13
      Top = 40
      Width = 32
      Height = 15
      Caption = 'Conta'
    end
    object Label46: TLabel
      Left = 311
      Top = 40
      Width = 14
      Height = 15
      Caption = 'De'
    end
    object Label47: TLabel
      Left = 8
      Top = 8
      Width = 69
      Height = 21
      Caption = 'Anal'#237'tico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label48: TLabel
      Left = 418
      Top = 40
      Width = 18
      Height = 15
      Caption = 'At'#233
    end
    object btnXAnalitico: TButton
      Left = 574
      Top = 9
      Width = 25
      Height = 25
      Hint = 'Fechar'
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnXAnaliticoClick
    end
    object listContaA: TComboBox
      Left = 13
      Top = 56
      Width = 292
      Height = 23
      TabOrder = 1
    end
    object btnFiltrarA: TButton
      Left = 524
      Top = 54
      Width = 75
      Height = 25
      Caption = 'FILTRAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnFiltrarAClick
    end
    object DBGrid9: TDBGrid
      Left = 13
      Top = 85
      Width = 586
      Height = 313
      DataSource = dsAnalitico
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object txtDeA: TMaskEdit
      Left = 311
      Top = 56
      Width = 100
      Height = 23
      EditMask = '00/00/0000'
      MaxLength = 10
      TabOrder = 4
      Text = '  /  /    '
    end
    object txtAteA: TMaskEdit
      Left = 418
      Top = 56
      Width = 100
      Height = 23
      EditMask = '00/00/0000'
      MaxLength = 10
      TabOrder = 5
      Text = '  /  /    '
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 422
    Width = 624
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 24
    Top = 432
    Width = 185
    Height = 41
    Caption = 'Panel1'
    TabOrder = 5
  end
  object MainMenu1: TMainMenu
    Left = 584
    Top = 416
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
      object Bancos1: TMenuItem
        Caption = 'Bancos'
        OnClick = Bancos1Click
      end
      object Contas1: TMenuItem
        Caption = 'Contas'
        OnClick = Contas1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Extrato1: TMenuItem
        Caption = 'Contas'
        object Analtico1: TMenuItem
          Caption = 'Anal'#237'tico'
          OnClick = Analtico1Click
        end
        object Consolidado1: TMenuItem
          Caption = 'Consolidado'
          OnClick = Consolidado1Click
        end
      end
    end
  end
  object conn: TFDConnection
    Params.Strings = (
      'Database=ControleDeContas'
      'User_Name=postgres'
      'Password=EC8d@731ca'
      'Server=localhost'
      'CharacterSet=UTF8'
      'DriverID=PG')
    Left = 8
    Top = 416
  end
  object ds: TDataSource
    DataSet = queryClientes
    Left = 40
    Top = 416
  end
  object queryClientes: TFDQuery
    Connection = conn
    Left = 168
    Top = 416
  end
  object queryIUD: TFDQuery
    Connection = conn
    Left = 232
    Top = 416
  end
  object queryUF: TFDQuery
    Connection = conn
    Left = 264
    Top = 416
  end
  object queryMUNICIPIOS: TFDQuery
    Connection = conn
    Left = 296
    Top = 416
  end
  object queryClientesForm: TFDQuery
    Connection = conn
    Left = 200
    Top = 416
  end
  object queryBancos: TFDQuery
    Connection = conn
    Left = 328
    Top = 416
  end
  object ds1: TDataSource
    DataSet = queryBancos
    Left = 72
    Top = 416
  end
  object queryBancosForm: TFDQuery
    Connection = conn
    Left = 359
    Top = 416
  end
  object querylistBancos: TFDQuery
    Connection = conn
    Left = 392
    Top = 416
  end
  object querylistClientes: TFDQuery
    Connection = conn
    Left = 424
    Top = 416
  end
  object queryContas: TFDQuery
    Connection = conn
    Left = 456
    Top = 416
  end
  object ds2: TDataSource
    DataSet = queryContas
    Left = 136
    Top = 416
  end
  object queryHistoricoContas: TFDQuery
    Connection = conn
    Left = 520
    Top = 416
  end
  object queryContasForm: TFDQuery
    Connection = conn
    Left = 488
    Top = 416
  end
  object queryTotalizadores: TFDQuery
    Connection = conn
    Left = 448
    Top = 368
  end
  object dsConsolidacao: TDataSource
    DataSet = queryConsolidacao
    Left = 104
    Top = 416
  end
  object queryConsolidacao: TFDQuery
    Connection = conn
    Left = 552
    Top = 416
  end
  object dsAnalitico: TDataSource
    DataSet = queryAnalitico
    Left = 440
    Top = 248
  end
  object queryAnalitico: TFDQuery
    Connection = conn
    Left = 472
    Top = 248
  end
end
