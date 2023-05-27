object Form7: TForm7
  Left = 243
  Top = 115
  Width = 1044
  Height = 592
  Caption = 'Grafik StringGrid Revisi'
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
    Left = 144
    Top = 16
    Width = 136
    Height = 18
    Caption = 'TAHUN ANGKATAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = []
    ParentFont = False
  end
  object l2: TLabel
    Left = 144
    Top = 48
    Width = 146
    Height = 18
    Caption = 'JUMLAH TERDAFTAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = []
    ParentFont = False
  end
  object l3: TLabel
    Left = 144
    Top = 80
    Width = 71
    Height = 18
    Caption = 'FAKULTAS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = []
    ParentFont = False
  end
  object cbb1: TComboBox
    Left = 256
    Top = 16
    Width = 145
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = []
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
      '2022')
  end
  object e1: TEdit
    Left = 256
    Top = 48
    Width = 145
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object cbb2: TComboBox
    Left = 256
    Top = 80
    Width = 145
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = []
    ItemHeight = 18
    ParentFont = False
    TabOrder = 2
    Items.Strings = (
      'Teknik Informatika'
      'Sistem Informasi')
  end
  object b1: TButton
    Left = 144
    Top = 120
    Width = 75
    Height = 25
    Caption = 'ADD DATA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = b1Click
  end
  object b2: TButton
    Left = 248
    Top = 120
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = b2Click
  end
  object b3: TButton
    Left = 352
    Top = 120
    Width = 75
    Height = 25
    Caption = 'CLEAR ALL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = b3Click
  end
  object SG1: TStringGrid
    Left = 480
    Top = 16
    Width = 409
    Height = 137
    TabOrder = 6
  end
  object cht1: TChart
    Left = 144
    Top = 168
    Width = 721
    Height = 329
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'GRAFIK MAHASISWA')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    TabOrder = 7
    object psrsSeries1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Style = smsLabelPercent
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
