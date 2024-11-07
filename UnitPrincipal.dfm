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
  TextHeight = 15
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 393
    Height = 329
    Caption = 'Panel1'
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 369
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
      Left = 8
      Top = 35
      Width = 33
      Height = 15
      Caption = 'Nome'
    end
    object Label3: TLabel
      Left = 8
      Top = 91
      Width = 21
      Height = 15
      Caption = 'CPF'
    end
    object Label4: TLabel
      Left = 135
      Top = 155
      Width = 49
      Height = 15
      Caption = 'Endere'#231'o'
    end
    object Label5: TLabel
      Left = 8
      Top = 211
      Width = 44
      Height = 15
      Caption = 'N'#250'mero'
    end
    object Label6: TLabel
      Left = 135
      Top = 211
      Width = 31
      Height = 15
      Caption = 'Bairro'
    end
    object Label7: TLabel
      Left = 8
      Top = 269
      Width = 101
      Height = 15
      Caption = 'Unidade Federativa'
    end
    object Label8: TLabel
      Left = 135
      Top = 269
      Width = 54
      Height = 15
      Caption = 'Munic'#237'pio'
    end
    object Label9: TLabel
      Left = 8
      Top = 155
      Width = 21
      Height = 15
      Caption = 'CEP'
    end
    object Label10: TLabel
      Left = 135
      Top = 91
      Width = 69
      Height = 15
      Caption = 'Telefone Fixo'
    end
    object Label11: TLabel
      Left = 262
      Top = 91
      Width = 80
      Height = 15
      Caption = 'Telefone M'#243'vel'
    end
    object Edit1: TEdit
      Left = 8
      Top = 56
      Width = 377
      Height = 23
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 8
      Top = 112
      Width = 121
      Height = 23
      TabOrder = 1
      Text = 'Edit1'
    end
    object Edit3: TEdit
      Left = 135
      Top = 176
      Width = 250
      Height = 23
      TabOrder = 2
      Text = 'Edit1'
    end
    object Edit4: TEdit
      Left = 8
      Top = 232
      Width = 121
      Height = 23
      TabOrder = 3
      Text = 'Edit1'
    end
    object Edit5: TEdit
      Left = 135
      Top = 232
      Width = 250
      Height = 23
      TabOrder = 4
      Text = 'Edit1'
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 290
      Width = 121
      Height = 23
      TabOrder = 5
      Text = 'ComboBox1'
    end
    object ComboBox2: TComboBox
      Left = 135
      Top = 290
      Width = 250
      Height = 23
      TabOrder = 6
      Text = 'ComboBox1'
    end
    object Edit6: TEdit
      Left = 8
      Top = 176
      Width = 121
      Height = 23
      TabOrder = 7
      Text = 'Edit1'
    end
    object Edit7: TEdit
      Left = 135
      Top = 112
      Width = 121
      Height = 23
      TabOrder = 8
      Text = 'Edit1'
    end
    object Edit8: TEdit
      Left = 262
      Top = 112
      Width = 121
      Height = 23
      TabOrder = 9
      Text = 'Edit1'
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 422
    Width = 624
    Height = 19
    Panels = <>
    ExplicitLeft = 320
    ExplicitTop = 240
    ExplicitWidth = 0
  end
  object MainMenu1: TMainMenu
    Left = 560
    Top = 352
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
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
end
