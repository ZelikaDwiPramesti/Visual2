object Form3: TForm3
  Left = 307
  Top = 172
  Width = 1044
  Height = 540
  Caption = 'Operator'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 152
    Top = 48
    Width = 73
    Height = 18
    Caption = 'INPUTAN1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l2: TLabel
    Left = 152
    Top = 88
    Width = 75
    Height = 18
    Caption = 'INPUTAN2'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object e1: TEdit
    Left = 256
    Top = 48
    Width = 121
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object e2: TEdit
    Left = 256
    Top = 88
    Width = 121
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object b1: TButton
    Left = 424
    Top = 64
    Width = 161
    Height = 41
    Caption = 'PROSES SEMUA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = b1Click
  end
  object grp1: TGroupBox
    Left = 144
    Top = 152
    Width = 489
    Height = 225
    Caption = 'NILAI DI PROSES'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object l3: TLabel
      Left = 24
      Top = 32
      Width = 113
      Height = 18
      Caption = 'HASIL TAMBAH'
    end
    object l4: TLabel
      Left = 24
      Top = 72
      Width = 115
      Height = 18
      Caption = 'HASIL KURANG'
    end
    object l5: TLabel
      Left = 24
      Top = 112
      Width = 136
      Height = 18
      Caption = 'HASIL PERKALIAN'
    end
    object l6: TLabel
      Left = 24
      Top = 152
      Width = 140
      Height = 18
      Caption = 'HASIL PEMBAGIAN'
    end
    object e3: TEdit
      Left = 216
      Top = 32
      Width = 121
      Height = 26
      TabOrder = 0
    end
    object e4: TEdit
      Left = 216
      Top = 72
      Width = 121
      Height = 26
      TabOrder = 1
    end
    object e5: TEdit
      Left = 216
      Top = 112
      Width = 121
      Height = 26
      TabOrder = 2
    end
    object e6: TEdit
      Left = 216
      Top = 152
      Width = 121
      Height = 26
      TabOrder = 3
    end
    object b2: TButton
      Left = 384
      Top = 32
      Width = 81
      Height = 33
      Caption = '+'
      TabOrder = 4
      OnClick = b2Click
    end
    object b3: TButton
      Left = 384
      Top = 72
      Width = 81
      Height = 33
      Caption = '-'
      TabOrder = 5
      OnClick = b3Click
    end
    object b4: TButton
      Left = 384
      Top = 112
      Width = 81
      Height = 33
      Caption = 'X'
      TabOrder = 6
      OnClick = b4Click
    end
    object b5: TButton
      Left = 384
      Top = 152
      Width = 81
      Height = 33
      Caption = '/'
      TabOrder = 7
      OnClick = b5Click
    end
  end
end
