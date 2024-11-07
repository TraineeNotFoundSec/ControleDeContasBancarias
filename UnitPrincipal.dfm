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
  object MainMenu1: TMainMenu
    Left = 392
    Top = 200
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
