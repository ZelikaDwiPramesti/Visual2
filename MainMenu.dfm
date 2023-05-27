object Form1: TForm1
  Left = 325
  Top = 185
  Width = 744
  Height = 540
  Caption = 'Main Menu'
  Color = clAqua
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 48
    Top = 40
    object File1: TMenuItem
      Caption = 'File'
      object Keluar1: TMenuItem
        Caption = 'Keluar'
        OnClick = Keluar1Click
      end
    end
    object Latihan1: TMenuItem
      Caption = 'Latihan'
      object Latihan11: TMenuItem
        Caption = 'Latihan 1'
        OnClick = Latihan11Click
      end
      object Latihan21: TMenuItem
        Caption = 'Latihan 2'
        OnClick = Latihan21Click
      end
      object Kondisional11: TMenuItem
        Caption = 'Kondisional 1'
        OnClick = Kondisional11Click
      end
      object Kondisional21: TMenuItem
        Caption = 'Kondisional 2'
        OnClick = Kondisional21Click
      end
      object GrafikStringGrid1: TMenuItem
        Caption = 'Grafik StringGrid'
        OnClick = GrafikStringGrid1Click
      end
      object GrafikStringGridRevisi1: TMenuItem
        Caption = 'Grafik StringGrid Revisi'
        OnClick = GrafikStringGridRevisi1Click
      end
      object LatihanDatabase1: TMenuItem
        Caption = 'Latihan Database'
        OnClick = LatihanDatabase1Click
      end
    end
    object Database1: TMenuItem
      Caption = 'Database'
    end
  end
end
