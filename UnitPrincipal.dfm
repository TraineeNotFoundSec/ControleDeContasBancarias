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
  object Panel1: TPanel
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
    object Edit1: TEdit
      Left = 64
      Top = 56
      Width = 321
      Height = 23
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 8
      Top = 101
      Width = 121
      Height = 23
      TabOrder = 1
      Text = 'Edit1'
    end
    object Edit3: TEdit
      Left = 135
      Top = 146
      Width = 250
      Height = 23
      TabOrder = 2
      Text = 'Edit1'
    end
    object Edit4: TEdit
      Left = 8
      Top = 193
      Width = 121
      Height = 23
      TabOrder = 3
      Text = 'Edit1'
    end
    object Edit5: TEdit
      Left = 135
      Top = 193
      Width = 250
      Height = 23
      TabOrder = 4
      Text = 'Edit1'
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 244
      Width = 121
      Height = 23
      TabOrder = 5
      Text = 'ComboBox1'
    end
    object ComboBox2: TComboBox
      Left = 135
      Top = 244
      Width = 250
      Height = 23
      TabOrder = 6
      Text = 'ComboBox1'
    end
    object Edit6: TEdit
      Left = 8
      Top = 146
      Width = 121
      Height = 23
      TabOrder = 7
      Text = 'Edit1'
    end
    object Edit7: TEdit
      Left = 135
      Top = 101
      Width = 121
      Height = 23
      TabOrder = 8
      Text = 'Edit1'
    end
    object Edit8: TEdit
      Left = 262
      Top = 101
      Width = 121
      Height = 23
      TabOrder = 9
      Text = 'Edit1'
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
      Height = 127
      DataSource = ds
      TabOrder = 11
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object Button2: TButton
      Left = 328
      Top = 9
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
    end
    object Button3: TButton
      Left = 296
      Top = 9
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
    object Edit9: TEdit
      Left = 8
      Top = 56
      Width = 50
      Height = 23
      ReadOnly = True
      TabOrder = 14
      Text = 'Edit1'
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
    Left = 560
    Top = 352
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
      object Bancos1: TMenuItem
        Caption = 'Bancos'
      end
      object Contas1: TMenuItem
        Caption = 'Contas'
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
    Left = 472
    Top = 144
  end
  object ds: TDataSource
    DataSet = query1
    Left = 552
    Top = 144
  end
  object query1: TFDQuery
    Connection = conn
    Left = 512
    Top = 144
  end
  object query2: TFDQuery
    Connection = conn
    Left = 512
    Top = 200
  end
end
