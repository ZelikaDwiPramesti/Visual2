object Form8: TForm8
  Left = 190
  Top = 71
  Width = 1063
  Height = 710
  Caption = 'Latihan Database'
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object b1: TBitBtn
    Left = 584
    Top = 16
    Width = 209
    Height = 49
    Caption = 'TAMPILKAN DATA GRAFIK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = b1Click
  end
  object dg1: TDBGrid
    Left = 64
    Top = 88
    Width = 825
    Height = 265
    DataSource = ds1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cht1: TChart
    Left = 64
    Top = 355
    Width = 825
    Height = 250
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Foot.Font.Charset = ANSI_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -11
    Foot.Font.Name = 'Comic Sans MS'
    Foot.Font.Style = [fsBold]
    Title.Text.Strings = (
      '')
    View3D = False
    TabOrder = 2
    object brsrsSeries1: TBarSeries
      ColorEachPoint = True
      HorizAxis = aBothHorizAxis
      Marks.ArrowLength = 20
      Marks.Style = smsLabelPercent
      Marks.Visible = True
      SeriesColor = clRed
      VertAxis = aBothVertAxis
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object b3: TButton
    Left = 304
    Top = 16
    Width = 99
    Height = 49
    Caption = 'LOAD DATA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = b3Click
  end
  object b4: TButton
    Left = 96
    Top = 16
    Width = 177
    Height = 49
    Caption = 'TAMBAH DATA BARU'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = b4Click
  end
  object b5: TButton
    Left = 440
    Top = 16
    Width = 121
    Height = 49
    Caption = 'VIEW REPORT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = b5Click
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\PV' +
      'isual2\crud_db.mdb;Mode=Share Deny None;Persist Security Info=Fa' +
      'lse;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet ' +
      'OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Dat' +
      'abase Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLE' +
      'DB:Global Bulk Transactions=1;Jet OLEDB:New Database Password=""' +
      ';Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Databa' +
      'se=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:' +
      'Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 88
  end
  object qry1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from jadwal_table')
    Left = 24
    Top = 136
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 24
    Top = 192
  end
  object qry2: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from jadwal_table')
    Left = 952
    Top = 112
  end
  object frxdDBjadwal: TfrxDBDataset
    UserName = 'frxDBjadwal'
    CloseDataSource = False
    DataSet = qry1
    BCDToCurrency = False
    Left = 952
    Top = 216
  end
  object frxjadwal: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45073.491619953700000000
    ReportOptions.LastChange = 45073.549764814800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnClickObject = frxjadwalClickObject
    Left = 952
    Top = 160
    Datasets = <
      item
        DataSet = frxdDBjadwal
        DataSetName = 'frxDBjadwal'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 170.078850000000000000
          Top = 3.779530000000000000
          Width = 377.953000000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA PRAKTIKUM SEMESTER GANJIL 2019')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 34.015770000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frxdDBjadwal
        DataSetName = 'frxDBjadwal'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 37.795300000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxdDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 37.795300000000000000
          Width = 151.181200000000000000
          Height = 34.015770000000000000
          ShowHint = False
          TagStr = '[frxDBjadwal."kelas"]'
          DataField = 'kelas'
          DataSet = frxdDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBjadwal."kelas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 188.976500000000000000
          Width = 207.874150000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'matkul'
          DataSet = frxdDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBjadwal."matkul"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 604.724800000000000000
          Width = 113.385900000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'kehadiran_total'
          DataSet = frxdDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBjadwal."kehadiran_total"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 396.850650000000000000
          Width = 207.874150000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'tanggal'
          DataSet = frxdDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBjadwal."tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Width = 37.795300000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 37.795300000000000000
          Width = 151.181200000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA KELAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 188.976500000000000000
          Width = 207.874150000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'MATA KULIAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 604.724800000000000000
          Width = 113.385900000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH KEHADIRAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 396.850650000000000000
          Width = 207.874150000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 49.133890000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Left = 604.724800000000000000
          Width = 113.385900000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DataSet = frxdDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBjadwal."kehadiran_total">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 396.850650000000000000
          Width = 207.874150000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DataSet = frxdDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8 = (
            'TOTAL KEHADIRAN PRAKTEK')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object frxDetailJadwal: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45073.491619953700000000
    ReportOptions.LastChange = 45073.549929224500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 952
    Top = 280
    Datasets = <
      item
        DataSet = frxdDBDataJadwal
        DataSetName = 'frxDBDetailJadwal'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 170.078850000000000000
          Top = 3.779530000000000000
          Width = 377.953000000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DETAIL DATA PRAKTIKUM SEMESTER GANJIL 2019')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 34.015770000000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = frxdDBDataJadwal
        DataSetName = 'frxDBDetailJadwal'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 37.795300000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxdDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'kelas'
          DataSet = frxdDBDataJadwal
          DataSetName = 'frxDBDetailJadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDefault
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDetailJadwal."kelas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 151.181200000000000000
          Width = 173.858380000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'matkul'
          DataSet = frxdDBDataJadwal
          DataSetName = 'frxDBDetailJadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDetailJadwal."matkul"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 604.724800000000000000
          Width = 113.385900000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'kehadiran_total'
          DataSet = frxdDBDataJadwal
          DataSetName = 'frxDBDetailJadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDetailJadwal."kehadiran_total"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 472.441250000000000000
          Width = 132.283550000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'tanggal'
          DataSet = frxdDBDataJadwal
          DataSetName = 'frxDBDetailJadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDetailJadwal."tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 325.039580000000000000
          Width = 71.811070000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'jam_mulai'
          DataSet = frxdDBDataJadwal
          DataSetName = 'frxDBDetailJadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDetailJadwal."jam_mulai"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 396.850650000000000000
          Width = 75.590600000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'jam_akhir'
          DataSet = frxdDBDataJadwal
          DataSetName = 'frxDBDetailJadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDetailJadwal."jam_akhir"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 49.133890000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Width = 37.795300000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA KELAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 151.181200000000000000
          Width = 173.858380000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'MATA KULIAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 604.724800000000000000
          Width = 113.385900000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH KEHADIRAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 472.441250000000000000
          Width = 132.283550000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 325.039580000000000000
          Width = 147.401670000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'WAKTU')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 325.039580000000000000
          Top = 22.677180000000000000
          Width = 71.811070000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'MULAI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 396.850650000000000000
          Top = 22.677180000000000000
          Width = 75.590600000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'AKHIR')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 49.133890000000000000
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Left = 604.724800000000000000
          Width = 113.385900000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DataSet = frxdDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBDetailJadwal."kehadiran_total">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 396.850650000000000000
          Width = 207.874150000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DataSet = frxdDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8 = (
            'TOTAL KEHADIRAN PRAKTEK')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 377.953000000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object frxdDBDataJadwal: TfrxDBDataset
    UserName = 'frxDBDetailJadwal'
    CloseDataSource = False
    DataSet = qry2
    BCDToCurrency = False
    Left = 952
    Top = 336
  end
end
