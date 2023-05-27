object Form6: TForm6
  Left = 218
  Top = 135
  Width = 875
  Height = 540
  Caption = 'Grafik StringGrid'
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 32
    Top = 24
    Width = 138
    Height = 18
    Caption = 'TAHUN ANGKATAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l2: TLabel
    Left = 16
    Top = 56
    Width = 153
    Height = 18
    Caption = 'JUMLAH TERDAFTAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l3: TLabel
    Left = 96
    Top = 88
    Width = 74
    Height = 18
    Caption = 'FAKULTAS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cbb1: TComboBox
    Left = 192
    Top = 24
    Width = 145
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ItemHeight = 18
    ParentFont = False
    TabOrder = 0
    Items.Strings = (
      '2015'
      '2016'
      '2017'
      '2018'
      '2019'
      '2020'
      '2021'
      '2021')
  end
  object e1: TEdit
    Left = 192
    Top = 56
    Width = 145
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object cbb2: TComboBox
    Left = 192
    Top = 88
    Width = 145
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ItemHeight = 18
    ParentFont = False
    TabOrder = 2
    Items.Strings = (
      'TI'
      'SI')
  end
  object b1: TButton
    Left = 80
    Top = 136
    Width = 105
    Height = 25
    Caption = 'ADD DATA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = b1Click
  end
  object b2: TButton
    Left = 208
    Top = 136
    Width = 129
    Height = 25
    Caption = 'VIEW GRAFIK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = b2Click
  end
  object SG1: TStringGrid
    Left = 360
    Top = 24
    Width = 465
    Height = 137
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    ColWidths = (
      64
      82
      80
      106
      103)
    RowHeights = (
      24
      24
      24
      24
      24)
  end
  object cht1: TChart
    Left = 96
    Top = 176
    Width = 665
    Height = 289
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'GRAFIK JUMLAH MAHASISWA')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    TabOrder = 6
    object psrs1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      SeriesColor = clRed
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
    end
  end
end
