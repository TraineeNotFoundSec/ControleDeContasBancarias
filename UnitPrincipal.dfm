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
  object Bancos: TPanel
    Left = 223
    Top = 8
    Width = 393
    Height = 408
    TabOrder = 2
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
    object Button5: TButton
      Left = 358
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
      TabOrder = 0
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 359
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
      TabOrder = 1
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 327
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
      TabOrder = 2
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 295
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
      TabOrder = 3
      OnClick = Button8Click
    end
    object txtIDBANCO: TEdit
      Left = 8
      Top = 56
      Width = 50
      Height = 23
      ReadOnly = True
      TabOrder = 4
    end
    object txtNOMEBANCO: TEdit
      Left = 64
      Top = 56
      Width = 321
      Height = 23
      TabOrder = 5
    end
    object listATIVOBANCO: TComboBox
      Left = 8
      Top = 101
      Width = 99
      Height = 23
      TabOrder = 6
      Items.Strings = (
        'Sim'
        'N'#227'o')
    end
    object DBGrid2: TDBGrid
      Left = 8
      Top = 130
      Width = 377
      Height = 239
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
  object Clientes: TPanel
    Left = 8
    Top = 8
    Width = 393
    Height = 408
    TabOrder = 1
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
      Left = 135
      Top = 130
      Width = 49
      Height = 15
      Caption = 'Endere'#231'o'
    end
    object Label5: TLabel
      Left = 8
      Top = 177
      Width = 44
      Height = 15
      Caption = 'N'#250'mero'
    end
    object Label6: TLabel
      Left = 135
      Top = 177
      Width = 31
      Height = 15
      Caption = 'Bairro'
    end
    object Label7: TLabel
      Left = 8
      Top = 228
      Width = 101
      Height = 15
      Caption = 'Unidade Federativa'
    end
    object Label8: TLabel
      Left = 135
      Top = 228
      Width = 54
      Height = 15
      Caption = 'Munic'#237'pio'
    end
    object Label9: TLabel
      Left = 8
      Top = 130
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
      Width = 321
      Height = 23
      TabOrder = 0
    end
    object txtCPF: TEdit
      Left = 8
      Top = 101
      Width = 121
      Height = 23
      TabOrder = 1
    end
    object txtENDERECO: TEdit
      Left = 135
      Top = 146
      Width = 250
      Height = 23
      TabOrder = 2
    end
    object txtNUMERO: TEdit
      Left = 8
      Top = 193
      Width = 121
      Height = 23
      TabOrder = 3
    end
    object txtBAIRRO: TEdit
      Left = 135
      Top = 193
      Width = 250
      Height = 23
      TabOrder = 4
    end
    object listUF: TComboBox
      Left = 8
      Top = 244
      Width = 121
      Height = 23
      TabOrder = 5
      OnChange = listUFChange
    end
    object listMUNICIPIO: TComboBox
      Left = 135
      Top = 244
      Width = 250
      Height = 23
      TabOrder = 6
    end
    object txtCEP: TEdit
      Left = 8
      Top = 146
      Width = 121
      Height = 23
      TabOrder = 7
    end
    object txtFIXO: TEdit
      Left = 135
      Top = 101
      Width = 121
      Height = 23
      TabOrder = 8
    end
    object txtMOVEL: TEdit
      Left = 262
      Top = 101
      Width = 123
      Height = 23
      TabOrder = 9
    end
    object Button1: TButton
      Left = 360
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
      TabOrder = 10
      OnClick = Button1Click
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 273
      Width = 377
      Height = 96
      DataSource = ds
      TabOrder = 11
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
    end
    object Button2: TButton
      Left = 359
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
      TabOrder = 12
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 327
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
      TabOrder = 13
      OnClick = Button3Click
    end
    object txtID: TEdit
      Left = 8
      Top = 56
      Width = 50
      Height = 23
      ReadOnly = True
      TabOrder = 14
    end
    object Button4: TButton
      Left = 295
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
      TabOrder = 15
      OnClick = Button4Click
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
      Left = 115
      Top = 130
      Width = 60
      Height = 15
      Caption = 'Saldo Atual'
    end
    object Label25: TLabel
      Left = 8
      Top = 178
      Width = 90
      Height = 15
      Caption = 'Data de Cadastro'
    end
    object Label26: TLabel
      Left = 115
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
      Left = 223
      Top = 130
      Width = 63
      Height = 15
      Caption = 'Total D'#233'bito'
    end
    object Label29: TLabel
      Left = 331
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
    object Edit1: TEdit
      Left = 8
      Top = 56
      Width = 49
      Height = 23
      ReadOnly = True
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 63
      Top = 56
      Width = 154
      Height = 23
      TabOrder = 1
    end
    object ComboBox2: TComboBox
      Left = 223
      Top = 56
      Width = 377
      Height = 23
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 8
      Top = 101
      Width = 101
      Height = 23
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 115
      Top = 101
      Width = 102
      Height = 23
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 115
      Top = 148
      Width = 102
      Height = 23
      TabOrder = 5
    end
    object Edit5: TEdit
      Left = 8
      Top = 148
      Width = 101
      Height = 23
      ReadOnly = True
      TabOrder = 6
    end
    object Edit6: TEdit
      Left = 223
      Top = 148
      Width = 102
      Height = 23
      ReadOnly = True
      TabOrder = 7
    end
    object Edit7: TEdit
      Left = 331
      Top = 148
      Width = 102
      Height = 23
      ReadOnly = True
      TabOrder = 8
    end
    object Edit8: TEdit
      Left = 8
      Top = 193
      Width = 101
      Height = 23
      ReadOnly = True
      TabOrder = 9
    end
    object Edit9: TEdit
      Left = 115
      Top = 193
      Width = 102
      Height = 23
      ReadOnly = True
      TabOrder = 10
    end
    object ComboBox3: TComboBox
      Left = 498
      Top = 148
      Width = 102
      Height = 23
      TabOrder = 11
      Items.Strings = (
        'Sim'
        'N'#227'o')
    end
    object Edit10: TEdit
      Left = 223
      Top = 101
      Width = 377
      Height = 23
      TabOrder = 12
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 422
    Width = 624
    Height = 19
    Panels = <>
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
    object lanamentos1: TMenuItem
      Caption = 'Lan'#231'amentos'
      object MovBancria1: TMenuItem
        Caption = 'Mov. Banc'#225'ria'
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Extrato1: TMenuItem
        Caption = 'Contas'
        object Analtico1: TMenuItem
          Caption = 'Anal'#237'tico'
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
    Left = 104
    Top = 416
  end
  object queryIUD: TFDQuery
    Connection = conn
    Left = 168
    Top = 416
  end
  object queryUF: TFDQuery
    Connection = conn
    Left = 200
    Top = 416
  end
  object queryMUNICIPIOS: TFDQuery
    Connection = conn
    Left = 232
    Top = 416
  end
  object queryClientesForm: TFDQuery
    Connection = conn
    Left = 136
    Top = 416
  end
  object queryBancos: TFDQuery
    Connection = conn
    Left = 264
    Top = 416
  end
  object ds1: TDataSource
    DataSet = queryBancos
    Left = 72
    Top = 416
  end
  object queryBancosForm: TFDQuery
    Connection = conn
    Left = 295
    Top = 416
  end
end
