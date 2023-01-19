object dmRelatoriosOfertas: TdmRelatoriosOfertas
  OldCreateOrder = False
  Height = 526
  Width = 686
  object ppVerbasOferta: TppReport
    AutoStop = False
    DataPipeline = ppDBEmitirDadosOferta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Users\Pablo Oliveira\Desktop\relatorioprice.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 48
    Top = 192
    Version = '17.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEmitirDadosOferta'
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 24871
      mmPrintPosition = 0
      object plbl30: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'plbl1'
        Caption = 'Relat'#243'rio de acompanhamento da Oferta do Comprador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8467
        mmLeft = 42069
        mmTop = 8731
        mmWidth = 194469
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label28'
        AutoSize = False
        Caption = 'C'#243'd.Filial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 791
        mmTop = 20373
        mmWidth = 10054
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label29'
        AutoSize = False
        Caption = 'C'#243'd. Oferta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 11639
        mmTop = 20373
        mmWidth = 12700
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label30'
        AutoSize = False
        Caption = 'Desc.Oferta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 25397
        mmTop = 20373
        mmWidth = 12156
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label31'
        AutoSize = False
        Caption = 'Dt.Ini.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 38620
        mmTop = 20373
        mmWidth = 10583
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label32'
        AutoSize = False
        Caption = 'Dt.Fim.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 50261
        mmTop = 20373
        mmWidth = 10583
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label33'
        AutoSize = False
        Caption = 'C'#243'd.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 61638
        mmTop = 20373
        mmWidth = 11113
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label34'
        AutoSize = False
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 73545
        mmTop = 20373
        mmWidth = 12156
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label35'
        AutoSize = False
        Caption = 'Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 86767
        mmTop = 20373
        mmWidth = 9260
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label36'
        AutoSize = False
        Caption = 'Vl. Oferta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 96557
        mmTop = 20373
        mmWidth = 13494
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label37'
        AutoSize = False
        Caption = 'Vl. Unt. Verba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 111637
        mmTop = 20373
        mmWidth = 14288
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label38'
        AutoSize = False
        Caption = 'Vl. Vend. Con.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 127513
        mmTop = 20373
        mmWidth = 13229
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label39'
        AutoSize = False
        Caption = 'Tipo. Verba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 141794
        mmTop = 20373
        mmWidth = 14552
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label40'
        AutoSize = False
        Caption = 'N. Verba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 157140
        mmTop = 20373
        mmWidth = 12435
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label41'
        AutoSize = False
        Caption = 'Mar. Varejo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 170370
        mmTop = 20373
        mmWidth = 15081
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label42'
        AutoSize = False
        Caption = 'Est.Atual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 186509
        mmTop = 20373
        mmWidth = 14023
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label43'
        AutoSize = False
        Caption = 'Est. Dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 201326
        mmTop = 20373
        mmWidth = 12965
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label44'
        AutoSize = False
        Caption = 'C'#243'd.Comp'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 215349
        mmTop = 20373
        mmWidth = 12156
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label45'
        AutoSize = False
        Caption = 'Comp.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 229104
        mmTop = 20373
        mmWidth = 9790
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label46'
        AutoSize = False
        Caption = 'Status Oferta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 240217
        mmTop = 20373
        mmWidth = 11628
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label47'
        AutoSize = False
        Caption = 'MOTIVOOFERTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 253167
        mmTop = 20108
        mmWidth = 7408
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label49'
        AutoSize = False
        Caption = 'CODFORNEC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 261409
        mmTop = 19844
        mmWidth = 7673
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label50'
        AutoSize = False
        Caption = 'FORNECEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 270405
        mmTop = 19844
        mmWidth = 7673
        BandType = 0
        LayerName = BandLayer4
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object pdbtxtVLOFERTA3: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'pdbtxtVLOFERTA1'
        DataField = 'VLOFERTA'
        DataPipeline = ppDBEmitirDadosOferta
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 96557
        mmTop = 0
        mmWidth = 13494
        BandType = 4
        LayerName = BandLayer4
      end
      object pdbtxtCODPROD2: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'pdbtxtCODPROD1'
        DataField = 'CODPROD'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 61638
        mmTop = 0
        mmWidth = 11113
        BandType = 4
        LayerName = BandLayer4
      end
      object pdbtxtDESCRICAO2: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'pdbtxtDESCRICAO1'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 73545
        mmTop = 0
        mmWidth = 12156
        BandType = 4
        LayerName = BandLayer4
      end
      object pdbtxtCUSTO: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'pdbtxtCUSTO'
        DataField = 'CUSTO'
        DataPipeline = ppDBEmitirDadosOferta
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 86767
        mmTop = 0
        mmWidth = 9260
        BandType = 4
        LayerName = BandLayer4
      end
      object pdbtxtMARGEM_OFERTA_VAREJO: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'pdbtxtMARGEM_OFERTA_VAREJO'
        DataField = 'MARGEM_OFERTA_VAREJO'
        DataPipeline = ppDBEmitirDadosOferta
        DisplayFormat = '0.00 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 170370
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = BandLayer4
      end
      object pdbtxtNUMVERBA: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'pdbtxtNUMVERBA'
        DataField = 'NUMVERBA'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 157140
        mmTop = 0
        mmWidth = 12435
        BandType = 4
        LayerName = BandLayer4
      end
      object pdbtxtTIPOVERBA1: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'pdbtxtTIPOVERBA1'
        DataField = 'TIPOVERBA'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 141794
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = BandLayer4
      end
      object pdbtxtVLUNITARIOVERBA: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'pdbtxtVLUNITARIOVERBA'
        DataField = 'VLUNITARIOVERBA'
        DataPipeline = ppDBEmitirDadosOferta
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 111637
        mmTop = 0
        mmWidth = 14288
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText27'
        DataField = 'CODFILIAL'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 791
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText28'
        DataField = 'QTESTGER'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 186509
        mmTop = 0
        mmWidth = 14023
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText29'
        DataField = 'PVENDAATACCONCORRENTE'
        DataPipeline = ppDBEmitirDadosOferta
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 127513
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText30'
        DataField = 'ESTOQUEEMDIAS'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 201326
        mmTop = 0
        mmWidth = 12965
        BandType = 4
        LayerName = BandLayer4
      end
      object pdbtxtCODOFERTA3: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'pdbtxtCODOFERTA1'
        DataField = 'CODOFERTA'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 11639
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = BandLayer4
      end
      object pdbtxtDESCOFERTA3: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'pdbtxtDESCOFERTA1'
        DataField = 'DESCOFERTA'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 25397
        mmTop = 0
        mmWidth = 12156
        BandType = 4
        LayerName = BandLayer4
      end
      object pdbtxtDTINICIAL2: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'pdbtxtDTINICIAL1'
        DataField = 'DTINICIAL'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 38620
        mmTop = 0
        mmWidth = 10583
        BandType = 4
        LayerName = BandLayer4
      end
      object pdbtxtDTFINAL2: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'pdbtxtDTFINAL1'
        DataField = 'DTFINAL'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 50261
        mmTop = 0
        mmWidth = 10583
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText31'
        DataField = 'CODCOMPRADOR'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 215349
        mmTop = 0
        mmWidth = 12156
        BandType = 4
        LayerName = BandLayer4
      end
      object pdbtxtCOMPRADOR: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'pdbtxtCODCOMPRADOR1'
        DataField = 'COMPRADOR'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 228840
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = BandLayer4
      end
      object pdbtxtSTATUS1: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'pdbtxtSTATUS1'
        DataField = 'STATUS'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 239688
        mmTop = 0
        mmWidth = 12157
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText32'
        DataField = 'MOTIVOOFERTA'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 253167
        mmTop = 0
        mmWidth = 7408
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText34'
        DataField = 'CODFORNEC'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 261409
        mmTop = 0
        mmWidth = 7673
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText35'
        DataField = 'FORNECEDOR'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 270405
        mmTop = 0
        mmWidth = 7673
        BandType = 4
        LayerName = BandLayer4
      end
    end
    object ppFooterBand4: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'BandLayer4'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object dsRelatorioOferta: TUniDataSource
    DataSet = qrRelatorioOferta
    Left = 104
    Top = 72
  end
  object qrRelatorioOferta: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT ITENS.CODFILIAL,'
      '       ITENS.FILIAL,'
      '       ITENS.DESCOFERTA,'
      '       ITENS.DTINICIAL,'
      '       ITENS.DTFINAL,'
      '       ITENS.CODOFERTA,'
      '       ITENS.CODITEM,'
      '       ITENS.CODPROD,'
      '       ITENS.DESCRICAO,'
      '       ITENS.CODAUXILIAR,'
      '       ITENS.VLOFERTA,'
      '       ITENS.VLOFERTAATAC,'
      '       ITENS.GERAVERBA,'
      '       ITENS.VLUNITARIOVERBA,'
      '       ITENS.VLVERBAMARGEMMIN,'
      '       ITENS.MARGEMFUTURA,'
      '       ITENS.QTUNIT,'
      '       ITENS.QTATAC,'
      '       ITENS.PVENDA,'
      '       ITENS.PVENDAATAC,'
      '       ITENS.CUSTOFIN,'
      '       ITENS.QTESTGER,'
      '       ITENS.ESTOQUEEMDIAS,'
      '       ITENS.DATAULTIMACOTACAO,'
      '       ITENS.PVENDACONCORRENTE,'
      '       ITENS.PVENDAATACCONCORRENTE,'
      '       ITENS.MARGEMMINATAC,'
      '       ITENS.MARGEMMINVAREJO,'
      '       DECODE( ITENS.TIPOVERBA,'
      '               '#39'MARGEMDIRETORIA'#39', '#39'M. DIRETORIA'#39','
      '               '#39'DEFINIDO'#39', '#39'DEFINIDO'#39','
      '               ITENS.TIPOVERBA )'
      '             AS TIPOVERBA,'
      
        '       ( ITENS.MARGEMFUTURA - ITENS.MARGEMMINATAC ) AS DIFMARGEM' +
        'ATAC,'
      '       ITENS.CODCOMPRADOR,'
      '       ITENS.COMPRADOR,'
      '       ITENS.STATUS,'
      
        '       ITENS.CODEPTO || '#39' - '#39' || ITENS.DEPARTAMENTO AS DEPARTAME' +
        'NTO,'
      '       ITENS.VLOFERTA,'
      '       ITENS.MARGEM_OFERTA_VAREJO,'
      '       ITENS.MARGEM_OFERTA_ATACADO,'
      '       ITENS.NUMVERBA,'
      '       ROUND( ITENS.CUSTO, 2 ) AS CUSTO,'
      '       ITENS.CODFORNEC,'
      '       ITENS.FORNECEDOR,'
      '       ITENS.PRODPRINCIPAL,'
      '       ITENS.NOMEFUNCORIG,'
      '       ITENS.NOMEFUNCULTALT,'
      '       NVL( ITENS.OFERTAFAMILIA, '#39'N'#39' ) AS OFERTAFAMILIA,'
      '       ITENS.MOTIVOOFERTA'
      '  FROM ( SELECT PCOFERTAPROGRAMADAC.CODFILIAL,'
      '                ( SELECT CODIGO || '#39' / '#39' || FANTASIA'
      '                    FROM PCFILIAL'
      
        '                   WHERE CODIGO = PCOFERTAPROGRAMADAC.CODFILIAL ' +
        ')'
      '                      AS FILIAL,'
      '                PCOFERTAPROGRAMADAC.DESCOFERTA,'
      '                DECODE('
      '                        TRUNC( PCOFERTAPROGRAMADAC.DTINICIAL ),'
      
        '                        TO_DATE( '#39'01/01/2050'#39', '#39'dd/MM/yyyy'#39' ), P' +
        'COFERTAPROGRAMADAC.DTINICIALSUGESTAO,'
      '                        TRUNC( PCOFERTAPROGRAMADAC.DTINICIAL ) )'
      '                      AS "DTINICIAL",'
      '                DECODE('
      '                        TRUNC( PCOFERTAPROGRAMADAC.DTFINAL ),'
      
        '                        TO_DATE( '#39'01/01/2050'#39', '#39'dd/MM/yyyy'#39' ), P' +
        'COFERTAPROGRAMADAC.DTFINALSUGESTAO,'
      '                        TRUNC( PCOFERTAPROGRAMADAC.DTFINAL ) )'
      '                      AS "DTFINAL",'
      
        '                ( PKG_I9UTILITARIO.BUSCACUSTO( PCEMBALAGEM.CODFI' +
        'LIAL,'
      
        '                                               PCEMBALAGEM.CODPR' +
        'OD ) )'
      '                      AS CUSTO,'
      '                PCPRODUT.CODFORNEC,'
      '                ( SELECT FORNECEDOR'
      '                    FROM PCFORNEC'
      '                   WHERE CODFORNEC = PCPRODUT.CODFORNEC )'
      '                      AS FORNECEDOR,'
      '                PCOFERTAPROGRAMADAC.CODFUNCORIG,'
      '                ( SELECT NOME_GUERRA'
      '                    FROM PCEMPR'
      
        '                   WHERE MATRICULA = PCOFERTAPROGRAMADAC.CODFUNC' +
        'ORIG )'
      '                      AS NOMEFUNCORIG,'
      '                PCOFERTAPROGRAMADAC.CODFUNCULTALT,'
      '                ( SELECT NOME_GUERRA'
      '                    FROM PCEMPR'
      
        '                   WHERE MATRICULA = PCOFERTAPROGRAMADAC.CODFUNC' +
        'ULTALT )'
      '                      AS NOMEFUNCULTALT,'
      '                PCOFERTAPROGRAMADAI.CODOFERTA,'
      '                PCOFERTAPROGRAMADAI.CODITEM,'
      '                PCEMBALAGEM.CODPROD,'
      '                NVL( PCOFERTAPROGRAMADAI.OFERTAFAMILIA, '#39'N'#39' )'
      '                      AS OFERTAFAMILIA,'
      '                PCPRODUT.CODPRODPRINC,'
      '                PCPRODUT.DESCRICAO,'
      '                ( SELECT NUMVERBA'
      '                    FROM I9CONFIGVERBAOFERTA'
      '                   WHERE CODFORNEC = PCFORNEC.CODFORNECPRINC'
      
        '                     AND CODOFERTA = PCOFERTAPROGRAMADAC.CODOFER' +
        'TA )'
      '                      AS NUMVERBA,'
      '                PCOFERTAPROGRAMADAI.CODAUXILIAR,'
      '                PCOFERTAPROGRAMADAI.VLOFERTA,'
      '                PCOFERTAPROGRAMADAI.VLOFERTAATAC,'
      '                PCOFERTAPROGRAMADAI.GERAVERBA,'
      '                PCOFERTAPROGRAMADAI.VLUNITARIOVERBA,'
      '                PCOFERTAPROGRAMADAI.VLVERBAMARGEMMIN,'
      '                PCOFERTAPROGRAMADAI.PRODPRINCIPAL,'
      '                PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS('
      
        '                                                          PCOFER' +
        'TAPROGRAMADAI.VLOFERTA,'
      
        '                                                            (   ' +
        'NVL('
      
        '                                                                ' +
        '      PCEST.CUSTOFIN,'
      
        '                                                                ' +
        '      0 )'
      
        '                                                              - ' +
        'NVL('
      
        '                                                                ' +
        '      PCOFERTAPROGRAMADAI.VLUNITARIOVERBA,'
      
        '                                                                ' +
        '      0 ) )'
      
        '                                                          * PCEM' +
        'BALAGEM.QTUNIT )'
      '                      AS MARGEM_OFERTA_VAREJO,'
      '                PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS('
      
        '                                                          PCOFER' +
        'TAPROGRAMADAI.VLOFERTAATAC,'
      
        '                                                            (   ' +
        'NVL('
      
        '                                                                ' +
        '      PCEST.CUSTOFIN,'
      
        '                                                                ' +
        '      0 )'
      
        '                                                              - ' +
        'NVL('
      
        '                                                                ' +
        '      PCOFERTAPROGRAMADAI.VLUNITARIOVERBA,'
      
        '                                                                ' +
        '      0 ) )'
      
        '                                                          * PCEM' +
        'BALAGEM.QTUNIT )'
      '                      AS MARGEM_OFERTA_ATACADO,'
      '                CASE'
      '                      WHEN PKG_I9UTILITARIO.PRODUTO_TEM_ATACADO('
      
        '                                                                ' +
        ' PCOFERTAPROGRAMADAI.CODFILIAL,'
      
        '                                                                ' +
        ' PCOFERTAPROGRAMADAI.CODAUXILIAR ) ='
      '                                 '#39'S'#39
      '                      THEN'
      
        '                            PKG_I9UTILITARIO.DIFERENCA_ENTRE_MAR' +
        'GENS('
      
        '                                                                ' +
        '      PCOFERTAPROGRAMADAI.VLOFERTAATAC,'
      
        '                                                                ' +
        '        (   NVL('
      
        '                                                                ' +
        '                  PCEST.CUSTOFIN,'
      
        '                                                                ' +
        '                  0 )'
      
        '                                                                ' +
        '          - NVL('
      
        '                                                                ' +
        '                  PCOFERTAPROGRAMADAI.VLUNITARIOVERBA,'
      
        '                                                                ' +
        '                  0 ) )'
      
        '                                                                ' +
        '      * PCEMBALAGEM.QTUNIT )'
      '                      ELSE'
      
        '                            PKG_I9UTILITARIO.DIFERENCA_ENTRE_MAR' +
        'GENS('
      
        '                                                                ' +
        '      PCOFERTAPROGRAMADAI.VLOFERTA,'
      
        '                                                                ' +
        '        (   NVL('
      
        '                                                                ' +
        '                  PCEST.CUSTOFIN,'
      
        '                                                                ' +
        '                  0 )'
      
        '                                                                ' +
        '          - NVL('
      
        '                                                                ' +
        '                  PCOFERTAPROGRAMADAI.VLUNITARIOVERBA,'
      
        '                                                                ' +
        '                  0 ) )'
      
        '                                                                ' +
        '      * PCEMBALAGEM.QTUNIT )'
      '                END'
      '                      MARGEMFUTURA,'
      '                PCEMBALAGEM.QTUNIT,'
      '                PCEMBALAGEM.QTMINIMAATACADO QTATAC,'
      '                PCEMBALAGEM.PVENDA,'
      '                PCEMBALAGEM.PVENDAATAC,'
      '                PCEST.CUSTOFIN,'
      '                PCEST.QTESTGER,'
      '                ROUND('
      '                       (   PCEST.QTESTGER'
      
        '                         / DECODE( PCEST.QTGIRODIA, 0, 1, PCEST.' +
        'QTGIRODIA ) ),'
      '                       2 )'
      '                      ESTOQUEEMDIAS,'
      
        '                PKG_I9UTILITARIO.COTACAO_PRECO( PCPRODUT.CODPROD' +
        'PRINC,'
      
        '                                                PCEMBALAGEM.CODF' +
        'ILIAL,'
      '                                                '#39'VAREJO'#39' )'
      '                      PVENDACONCORRENTE,'
      
        '                PKG_I9UTILITARIO.COTACAO_PRECO( PCPRODUT.CODPROD' +
        'PRINC,'
      
        '                                                PCEMBALAGEM.CODF' +
        'ILIAL,'
      '                                                '#39'ATACADO'#39' )'
      '                      PVENDAATACCONCORRENTE,'
      
        '                PKG_I9UTILITARIO.COTACAO_DATA( PCPRODUT.CODPRODP' +
        'RINC,'
      
        '                                               PCEMBALAGEM.CODFI' +
        'LIAL )'
      '                      DATAULTIMACOTACAO,'
      
        '                PKG_I9UTILITARIO.BUSCA_MARGEM_PRODUTO( PCEMBALAG' +
        'EM.CODFILIAL,'
      
        '                                                       PCEMBALAG' +
        'EM.CODPROD,'
      
        '                                                       '#39'MINIMA_A' +
        'TACADO'#39' )'
      '                      AS MARGEMMINATAC,'
      
        '                PKG_I9UTILITARIO.BUSCA_MARGEM_PRODUTO( PCEMBALAG' +
        'EM.CODFILIAL,'
      
        '                                                       PCEMBALAG' +
        'EM.CODPROD,'
      
        '                                                       '#39'MINIMA_V' +
        'AREJO'#39' )'
      '                      AS MARGEMMINVAREJO,'
      '                CASE'
      
        '                      WHEN NVL( PCOFERTAPROGRAMADAI.GERAVERBA, '#39 +
        'N'#39' ) = '#39'S'#39
      '                      THEN'
      '                            ( SELECT MAX( TIPOVERBA )'
      '                                FROM I9CONFIGVERBAOFERTA'
      '                               WHERE CODOFERTA ='
      
        '                                           PCOFERTAPROGRAMADAC.C' +
        'ODOFERTA'
      
        '                                 AND CODFORNEC = PCFORNEC.CODFOR' +
        'NECPRINC )'
      '                      ELSE'
      '                            '#39#39
      '                END'
      '                      TIPOVERBA,'
      '                PCPRODFILIAL.CODCOMPRADOR,'
      '                ( SELECT NOME'
      '                    FROM PCEMPR'
      '                   WHERE MATRICULA = PCPRODFILIAL.CODCOMPRADOR )'
      '                      AS COMPRADOR,'
      '                CASE'
      
        '                      WHEN PCOFERTAPROGRAMADAC.DTCANCEL IS NOT N' +
        'ULL'
      '                      THEN'
      '                            '#39'Cancelado'#39
      
        '                      WHEN PCOFERTAPROGRAMADAC.DTLIBERACAO IS NU' +
        'LL'
      
        '                       AND PCOFERTAPROGRAMADAC.DTREJEICAO IS NUL' +
        'L'
      '                      THEN'
      '                            '#39'Aguardando Aprova'#231#227'o'#39
      
        '                      WHEN PCOFERTAPROGRAMADAC.DTLIBERACAO IS NO' +
        'T NULL'
      '                      THEN'
      '                            '#39'Aprovado'#39
      
        '                      WHEN PCOFERTAPROGRAMADAC.DTREJEICAO IS NOT' +
        ' NULL'
      '                      THEN'
      '                            '#39'Rejeitado'#39
      '                END'
      '                      STATUS,'
      '                PCPRODUT.CODEPTO,'
      '                ( SELECT DESCRICAO'
      '                    FROM PCDEPTO'
      '                   WHERE PCDEPTO.CODEPTO = PCPRODUT.CODEPTO )'
      '                      AS DEPARTAMENTO,'
      '                PCOFERTAPROGRAMADAI.MOTIVOOFERTA'
      '           FROM PCOFERTAPROGRAMADAC,'
      '                PCOFERTAPROGRAMADAI,'
      '                PCEMBALAGEM,'
      '                PCPRODUT,'
      '                PCEST,'
      '                PCPRODFILIAL,'
      '                PCFORNEC'
      
        '          WHERE PCOFERTAPROGRAMADAC.CODOFERTA = PCOFERTAPROGRAMA' +
        'DAI.CODOFERTA'
      
        '            AND PCEMBALAGEM.CODAUXILIAR = PCOFERTAPROGRAMADAI.CO' +
        'DAUXILIAR'
      
        '            AND PCEMBALAGEM.CODFILIAL = PCOFERTAPROGRAMADAC.CODF' +
        'ILIAL'
      '            AND PCPRODUT.CODPROD = PCEMBALAGEM.CODPROD'
      '            AND PCEST.CODPROD = PCEMBALAGEM.CODPROD'
      '            AND PCEST.CODFILIAL = PCEMBALAGEM.CODFILIAL'
      '            AND PCPRODFILIAL.CODPROD = PCEMBALAGEM.CODPROD'
      '            AND PCPRODFILIAL.CODFILIAL = PCEMBALAGEM.CODFILIAL'
      '            AND PCPRODUT.CODFORNEC = PCFORNEC.CODFORNEC'
      '            AND PCEMBALAGEM.QTUNIT = '#39'1'#39
      '         ORDER BY PCOFERTAPROGRAMADAC.CODFILIAL,'
      '                  PCOFERTAPROGRAMADAC.CODOFERTA,'
      '                  PCEMBALAGEM.CODPROD ) ITENS'
      ' WHERE ITENS.PRODPRINCIPAL = '#39'S'#39
      'ORDER BY ITENS.CODFILIAL,'
      '         ITENS.CODOFERTA,'
      '         ITENS.DEPARTAMENTO,'
      '         ITENS.DESCRICAO')
    Left = 104
    Top = 16
  end
  object ppEmitirDadosOferta: TppReport
    AutoStop = False
    DataPipeline = ppDBEmitirDadosOferta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Users\igorbarcelos\Desktop\RELATORIO_MKT_BACKUP.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 160
    Top = 192
    Version = '17.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEmitirDadosOferta'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 23813
      mmPrintPosition = 0
      object plbl13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'plbl1'
        Caption = 'Relat'#243'rio de acompanhamento de ofertas - Gerentes / MKT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8467
        mmLeft = 40481
        mmTop = 8467
        mmWidth = 203994
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 26723
        mmTop = 529
        mmWidth = 38629
        BandType = 0
        LayerName = Foreground1
      end
      object plbl14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'plbl2'
        Caption = 'Dt. Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 1852
        mmTop = 529
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object pdbtxtCODAUXILIAR: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'pdbtxtCODAUXILIAR'
        DataField = 'CODAUXILIAR'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 97631
        mmTop = 265
        mmWidth = 27781
        BandType = 4
        LayerName = Foreground1
      end
      object pdbtxtVLOFERTA: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'pdbtxtVLOFERTA'
        DataField = 'VLOFERTA'
        DataPipeline = ppDBEmitirDadosOferta
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 153988
        mmTop = 265
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground1
      end
      object pdbtxtVLOFERTAATAC: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'pdbtxtVLOFERTAATAC'
        DataField = 'VLOFERTAATAC'
        DataPipeline = ppDBEmitirDadosOferta
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 176477
        mmTop = 265
        mmWidth = 25135
        BandType = 4
        LayerName = Foreground1
      end
      object pdbtxtCODPROD: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'pdbtxtCODPROD'
        DataField = 'CODPROD'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 5556
        mmTop = 265
        mmWidth = 17992
        BandType = 4
        LayerName = Foreground1
      end
      object pdbtxtDESCRICAO: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'pdbtxtDESCRICAO'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 24606
        mmTop = 265
        mmWidth = 70115
        BandType = 4
        LayerName = Foreground1
      end
      object pdbtxtQTATAC: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'pdbtxtQTATAC'
        DataField = 'QTATAC'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 127794
        mmTop = 265
        mmWidth = 22490
        BandType = 4
        LayerName = Foreground1
      end
      object pdbtxtTIPOVERBA: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'pdbtxtTIPOVERBA'
        DataField = 'TIPOVERBA'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 236538
        mmTop = 265
        mmWidth = 30427
        BandType = 4
        LayerName = Foreground1
      end
      object pdbtxtQTESTGER: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'pdbtxtQTESTGER'
        DataField = 'QTESTGER'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 203730
        mmTop = 265
        mmWidth = 29369
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
    end
    object ppGroup8: TppGroup
      BreakName = 'CODFILIAL'
      DataPipeline = ppDBEmitirDadosOferta
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group8'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBEmitirDadosOferta'
      NewFile = False
      object ppGroupHeaderBand8: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object plbl69: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label1'
          AutoSize = False
          Caption = 'Filial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 4763
          mmTop = 529
          mmWidth = 11906
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object pdbtxtFILIAL3: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'pdbtxtFILIAL3'
          DataField = 'FILIAL'
          DataPipeline = ppDBEmitirDadosOferta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBEmitirDadosOferta'
          mmHeight = 4763
          mmLeft = 18785
          mmTop = 529
          mmWidth = 63500
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object plbl43: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'plbl43'
          AutoSize = False
          Caption = 'Comprador:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 84402
          mmTop = 529
          mmWidth = 26458
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object pdbtxtCODCOMPRADOR: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'pdbtxtCODCOMPRADOR'
          DataField = 'COMPRADOR'
          DataPipeline = ppDBEmitirDadosOferta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBEmitirDadosOferta'
          mmHeight = 4763
          mmLeft = 111919
          mmTop = 529
          mmWidth = 81756
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object pln5: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'pln3'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 5821
          mmWidth = 284300
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel27: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label27'
          AutoSize = False
          Caption = 'Inclus'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 194734
          mmTop = 529
          mmWidth = 21696
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText26: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText26'
          DataField = 'NOMEFUNCORIG'
          DataPipeline = ppDBEmitirDadosOferta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBEmitirDadosOferta'
          mmHeight = 4763
          mmLeft = 214842
          mmTop = 529
          mmWidth = 52123
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'CODOFERTA'
      DataPipeline = ppDBEmitirDadosOferta
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBEmitirDadosOferta'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 17463
        mmPrintPosition = 0
        object pln6: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'pln2'
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 5556
          mmTop = 7938
          mmWidth = 270669
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object plbl15: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'plbl11'
          AutoSize = False
          Caption = 'C'#243'd. Oferta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 6350
          mmTop = 2381
          mmWidth = 21431
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object pdbtxtCODOFERTA1: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'pdbtxtCODOFERTA'
          DataField = 'CODOFERTA'
          DataPipeline = ppDBEmitirDadosOferta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBEmitirDadosOferta'
          mmHeight = 4763
          mmLeft = 28310
          mmTop = 2381
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object pdbtxtDESCOFERTA1: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'pdbtxtDESCOFERTA'
          DataField = 'DESCOFERTA'
          DataPipeline = ppDBEmitirDadosOferta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBEmitirDadosOferta'
          mmHeight = 4763
          mmLeft = 48942
          mmTop = 2381
          mmWidth = 71438
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object plbl3: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'plbl12'
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4234
          mmLeft = 44179
          mmTop = 2381
          mmWidth = 3175
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object plbl17: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'plbl17'
          AutoSize = False
          Caption = 'Per'#237'odo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 122231
          mmTop = 2381
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object pdbtxtDTINICIAL: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'pdbtxtDTINICIAL'
          DataField = 'DTINICIAL'
          DataPipeline = ppDBEmitirDadosOferta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBEmitirDadosOferta'
          mmHeight = 4763
          mmLeft = 140477
          mmTop = 2381
          mmWidth = 19315
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object plbl18: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'plbl18'
          AutoSize = False
          Caption = #225
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4763
          mmLeft = 160850
          mmTop = 2381
          mmWidth = 6350
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object pdbtxtDTFINAL: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'pdbtxtDTFINAL'
          DataField = 'DTFINAL'
          DataPipeline = ppDBEmitirDadosOferta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBEmitirDadosOferta'
          mmHeight = 4763
          mmLeft = 168258
          mmTop = 2381
          mmWidth = 19844
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object plbl31: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'plbl31'
          AutoSize = False
          Caption = 'Status Oferta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 189691
          mmTop = 2381
          mmWidth = 24871
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object pdbtxtSTATUS: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'pdbtxtSTATUS'
          DataField = 'STATUS'
          DataPipeline = ppDBEmitirDadosOferta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBEmitirDadosOferta'
          mmHeight = 4763
          mmLeft = 216410
          mmTop = 2381
          mmWidth = 37042
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object plbl71: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'plbl20'
          AutoSize = False
          Caption = 'C'#243'd. Barras'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 98425
          mmTop = 11377
          mmWidth = 27781
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object plbl26: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'plbl26'
          AutoSize = False
          Caption = 'C'#243'd. Prod.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 6350
          mmTop = 11377
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object plbl27: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'plbl27'
          AutoSize = False
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 25400
          mmTop = 11377
          mmWidth = 70115
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object plbl21: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'plbl21'
          AutoSize = False
          Caption = 'Vl. Oferta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 154782
          mmTop = 11377
          mmWidth = 20373
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object plbl22: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'plbl22'
          AutoSize = False
          Caption = 'Vl. Oferta. Atac'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 177271
          mmTop = 11377
          mmWidth = 25135
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object plbl29: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'plbl29'
          AutoSize = False
          Caption = 'Qt. atacado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 128588
          mmTop = 11377
          mmWidth = 22490
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object plbl72: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'plbl46'
          AutoSize = False
          Caption = 'Tipo. Verba'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 236538
          mmTop = 11377
          mmWidth = 30427
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object plbl73: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'plbl47'
          AutoSize = False
          Caption = 'Qt. estoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 204523
          mmTop = 11377
          mmWidth = 29369
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object pln1: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'pln1'
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 5556
          mmTop = 15875
          mmWidth = 262467
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc1'
          DataField = 'CODPROD'
          DataPipeline = ppDBEmitirDadosOferta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup3
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBEmitirDadosOferta'
          mmHeight = 4498
          mmLeft = 29898
          mmTop = 2910
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object pln8: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'pln8'
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 4763
          mmTop = 1058
          mmWidth = 269876
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object plbl28: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'plbl28'
          AutoSize = False
          Caption = 'Total de Itens:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 4763
          mmTop = 2910
          mmWidth = 24077
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppDBEmitirDadosOferta: TppDBPipeline
    DataSource = dsRelatorioOferta
    UserName = 'DBDadosOferta'
    Left = 104
    Top = 128
  end
  object qrRelVerbaDefinido: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      '/* Formatted on 27/06/2019 16:34:00 (QP5 v5.126) */'
      'SELECT PCPEDC.CODFILIAL,'
      '       PCPEDI.CODPROD,'
      '       PCPRODUT.DESCRICAO,'
      '       NVL (PCPEDI.VLCUSTOFIN, 0) AS VLCUSTOFIN,'
      '       SUM (PCPEDI.QT) QT,'
      
        '       TRUNC (SUM ( (PCPEDI.QT) * NVL (PCPEDI.VLCUSTOFIN, 0)), 2' +
        ') AS CUSTOVENDA,'
      
        '       TRUNC (SUM (NVL (PCPEDI.QT, 0) * (NVL (PCPEDI.PVENDA, 0) ' +
        '+ NVL (PCPEDI.VLOUTRASDESP, 0) + NVL (PCPEDI.VLFRETE, 0))), 2) A' +
        'S VLVENDA,'
      '       --CALCULA MARGEM DO PRODUTO'
      
        '        PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS (SUM (NVL (PCPE' +
        'DI.QT, 0) * NVL (PCPEDI.PVENDA, 0)),'
      
        '                                                 ROUND (SUM (NVL' +
        ' (PCPEDI.QT, 0) * NVL (PCPEDI.VLCUSTOFIN, 0)), 2))'
      '           AS MARGEM,'
      '       --FIM CALCULO DA MARGEM'
      
        '       NVL (PCOFERTAPROGRAMADAI.QTESTGERINICIAL, 0) AS ESTOQUE_I' +
        'NICIAL,'
      '       NVL (PCEST.QTESTGER, 0) AS QTEST_ATUAL,'
      
        '       DECODE (I9CONFIGVERBAOFERTA.TIPOVERBA,'#39'MARGEMDIRETORIA'#39','#39 +
        'M. DIRETORIA'#39','#39'DEFINIDO'#39', '#39'DEFINIDO'#39', I9CONFIGVERBAOFERTA.TIPOVE' +
        'RBA) AS TIPOVERBA,'
      '       PCOFERTAPROGRAMADAI.VLUNITARIOVERBA AS VLUNITARIO_VERBA,'
      
        '       SUM (PCPEDI.QT) * PCOFERTAPROGRAMADAI.VLUNITARIOVERBA AS ' +
        'TOTAL_VERBA,'
      
        '       NVL (PCPRODFILIAL.CODCOMPRADOR, PCFORNEC.CODCOMPRADOR) AS' +
        ' "CODCOMPRADOR",'
      '       PCEMPR.NOME AS "COMPRADOR",'
      '       PCPRODUT.CODFORNEC,'
      '       PCFORNEC.FORNECEDOR,'
      '       PCOFERTAPROGRAMADAC.CODOFERTA,'
      '       PCOFERTAPROGRAMADAC.DTINICIAL,'
      '       PCOFERTAPROGRAMADAC.DTFINAL,'
      '       PCOFERTAPROGRAMADAC.DTCANCEL,'
      '       PCOFERTAPROGRAMADAI.MOTIVOOFERTA'
      'FROM PCPEDI,'
      '     PCPEDC,'
      '     PCPRODUT,'
      '     PCFORNEC,'
      '     PCDEPTO,'
      '     PCOFERTAPROGRAMADAI,'
      '     PCOFERTAPROGRAMADAC,'
      '     PCPRODFILIAL,'
      '     PCEMPR,'
      '     PCEST,'
      '     PCFILIAL,'
      '     I9CONFIGVERBAOFERTA'
      'WHERE     0 = 0'
      
        '      AND PCPEDC.DATA BETWEEN PCOFERTAPROGRAMADAC.DTINICIAL AND ' +
        'PCOFERTAPROGRAMADAC.DTFINAL'
      '      AND PCPEDC.NUMPED = PCPEDI.NUMPED'
      '      AND PCPEDC.CODFILIAL = PCPRODFILIAL.CODFILIAL'
      '      AND PCPEDC.CODFILIAL = PCFILIAL.CODIGO'
      '      AND PCPEDI.CODPROD = PCPRODUT.CODPROD'
      '      AND PCPEDI.DATA = PCPEDC.DATA'
      '      AND PCPEDC.DATA BETWEEN :DTINI AND :DTFIM'
      
        '      AND ((PCOFERTAPROGRAMADAC.DTINICIAL BETWEEN :DTINI AND :DT' +
        'FIM) OR (PCOFERTAPROGRAMADAC.DTFINAL BETWEEN :DTINI AND :DTFIM))'
      
        '      AND PCOFERTAPROGRAMADAC.CODOFERTA = PCOFERTAPROGRAMADAI.CO' +
        'DOFERTA'
      
        '      AND PCOFERTAPROGRAMADAC.CODOFERTA = I9CONFIGVERBAOFERTA.CO' +
        'DOFERTA'
      '      AND PCOFERTAPROGRAMADAC.CODFILIAL = PCPEDC.CODFILIAL'
      '      AND PCOFERTAPROGRAMADAI.CODAUXILIAR = PCPEDI.CODAUXILIAR'
      
        '      AND I9CONFIGVERBAOFERTA.CODFORNEC = PCFORNEC.CODFORNECPRIN' +
        'C'
      '      AND PCEST.CODFILIAL = PCPRODFILIAL.CODFILIAL'
      '      AND PCEST.CODPROD = PCPRODUT.CODPROD'
      '      AND I9CONFIGVERBAOFERTA.TIPOVERBA = :TIPOVERBA'
      '      AND PCPRODFILIAL.CODPROD = PCPRODUT.CODPROD'
      
        '      AND PCEMPR.MATRICULA = NVL (PCPRODFILIAL.CODCOMPRADOR, PCF' +
        'ORNEC.CODCOMPRADOR)'
      '      AND PCPRODUT.CODFORNEC = PCFORNEC.CODFORNEC'
      '      AND PCPRODUT.CODEPTO = PCDEPTO.CODEPTO'
      '      --AND PCOFERTAPROGRAMADAC.DTCANCEL IS NULL'
      '      AND NVL (PCOFERTAPROGRAMADAI.GERAVERBA, '#39'N'#39') = '#39'S'#39
      '      AND PCOFERTAPROGRAMADAI.VLUNITARIOVERBA IS NOT NULL'
      '      AND PCPEDC.DTCANCEL IS NULL'
      
        '      AND PCPEDC.CONDVENDA NOT IN (4, 5, 6, 8, 10, 11, 12, 13, 1' +
        '6, 20)'
      ''
      'GROUP BY PCPEDI.CODPROD,'
      '         PCPRODUT.DESCRICAO,'
      '         NVL (PCPEDI.VLCUSTOFIN, 0),'
      '         NVL (PCPRODFILIAL.CODCOMPRADOR, PCFORNEC.CODCOMPRADOR),'
      '         NVL (PCOFERTAPROGRAMADAI.QTESTGERINICIAL, 0),'
      '         NVL (PCEST.QTESTGER, 0),'
      '         I9CONFIGVERBAOFERTA.TIPOVERBA,'
      '         PCEMPR.NOME,'
      '         PCPEDC.CODFILIAL,'
      '         PCPRODUT.CODFORNEC,'
      '         PCFORNEC.FORNECEDOR,'
      '         PCOFERTAPROGRAMADAC.CODOFERTA,'
      '         PCOFERTAPROGRAMADAC.DTINICIAL,'
      '         PCOFERTAPROGRAMADAC.DTFINAL,'
      '         PCOFERTAPROGRAMADAI.VLUNITARIOVERBA,'
      '         PCOFERTAPROGRAMADAC.DTCANCEL,'
      '         PCOFERTAPROGRAMADAI.MOTIVOOFERTA'
      'ORDER BY PCEMPR.NOME,'
      '         PCPEDC.CODFILIAL,'
      '         PCPRODUT.CODFORNEC,'
      '         PCOFERTAPROGRAMADAC.CODOFERTA;')
    Left = 320
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DTINI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTFIM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TIPOVERBA'
        Value = nil
      end>
  end
  object dsRelVerbaDefinido: TUniDataSource
    DataSet = qrRelVerbaDefinido
    Left = 320
    Top = 72
  end
  object ppDBRelVerbaDefinido: TppDBPipeline
    DataSource = dsRelVerbaDefinido
    UserName = 'DBRelVerbaDefinido'
    Left = 320
    Top = 128
  end
  object ppRelVerbaDefinido: TppReport
    AutoStop = False
    DataPipeline = ppDBRelVerbaDefinido
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'ArchiveFile'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.CacheToFile = True
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Acompanhamento de Oferta'
    XLSSettings.WorksheetName = 'Dados'
    Left = 320
    Top = 192
    Version = '17.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRelVerbaDefinido'
    object ppHeaderBand5: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 32808
      mmPrintPosition = 0
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label25'
        Caption = 'Acompanhamento de Oferta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 8467
        mmLeft = 84138
        mmTop = 6085
        mmWidth = 97896
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Filial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 2117
        mmTop = 26988
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label16'
        AutoSize = False
        Caption = 'codprod'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 9523
        mmTop = 26988
        mmWidth = 9260
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label20'
        AutoSize = False
        Caption = 'descricao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 19837
        mmTop = 26988
        mmWidth = 12431
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label19'
        AutoSize = False
        Caption = 'VLCUSTOFIN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 33326
        mmTop = 26988
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label21'
        AutoSize = False
        Caption = 'QT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 42322
        mmTop = 26988
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label22'
        AutoSize = False
        Caption = 'CUSTOVENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 51848
        mmTop = 26988
        mmWidth = 8194
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label1'
        AutoSize = False
        Caption = 'VLVENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 61100
        mmTop = 26988
        mmWidth = 10310
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label7'
        AutoSize = False
        Caption = 'MARGEM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 72733
        mmTop = 26988
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label8'
        AutoSize = False
        Caption = 'ESTOQUE_INICIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 88872
        mmTop = 26988
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label9'
        AutoSize = False
        Caption = 'QTEST_ATUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 106335
        mmTop = 26988
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label10'
        AutoSize = False
        Caption = 'TIPOVERBA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 119829
        mmTop = 26988
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label11'
        AutoSize = False
        Caption = 'VLUNITARIO_VERBA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 132264
        mmTop = 26988
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label12'
        AutoSize = False
        Caption = 'TOTAL_VERBA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 150520
        mmTop = 26988
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label13'
        AutoSize = False
        Caption = 'CODCOMPRADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 166395
        mmTop = 26988
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label14'
        AutoSize = False
        Caption = 'COMPRADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 181741
        mmTop = 26988
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label15'
        AutoSize = False
        Caption = 'CODFORNEC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 195500
        mmTop = 26988
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label17'
        AutoSize = False
        Caption = 'FORNECEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 207406
        mmTop = 26988
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label18'
        AutoSize = False
        Caption = 'CODOFERTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 222487
        mmTop = 26988
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label23'
        AutoSize = False
        Caption = 'DTINICIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 235187
        mmTop = 26988
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label24'
        AutoSize = False
        Caption = 'DTFINAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 247887
        mmTop = 26988
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label26'
        AutoSize = False
        Caption = 'DTCANCEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 260852
        mmTop = 26988
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label48'
        AutoSize = False
        Caption = 'MOTIVOOFERTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 273051
        mmTop = 26988
        mmWidth = 9518
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText14'
        DataField = 'CODPROD'
        DataPipeline = ppDBRelVerbaDefinido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVerbaDefinido'
        mmHeight = 4763
        mmLeft = 9523
        mmTop = 794
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText15'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBRelVerbaDefinido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVerbaDefinido'
        mmHeight = 4763
        mmLeft = 19837
        mmTop = 794
        mmWidth = 12431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText9'
        DataField = 'CODFILIAL'
        DataPipeline = ppDBRelVerbaDefinido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelVerbaDefinido'
        mmHeight = 4763
        mmLeft = 2117
        mmTop = 794
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText8'
        DataField = 'QT'
        DataPipeline = ppDBRelVerbaDefinido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVerbaDefinido'
        mmHeight = 4763
        mmLeft = 42322
        mmTop = 794
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText19'
        DataField = 'CUSTOVENDA'
        DataPipeline = ppDBRelVerbaDefinido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVerbaDefinido'
        mmHeight = 4763
        mmLeft = 51848
        mmTop = 794
        mmWidth = 8194
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText1'
        DataField = 'VLVENDA'
        DataPipeline = ppDBRelVerbaDefinido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVerbaDefinido'
        mmHeight = 4763
        mmLeft = 61100
        mmTop = 794
        mmWidth = 10310
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText6'
        DataField = 'MARGEM'
        DataPipeline = ppDBRelVerbaDefinido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVerbaDefinido'
        mmHeight = 4763
        mmLeft = 72733
        mmTop = 794
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText10'
        DataField = 'ESTOQUE_INICIAL'
        DataPipeline = ppDBRelVerbaDefinido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVerbaDefinido'
        mmHeight = 4763
        mmLeft = 88899
        mmTop = 794
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText11'
        DataField = 'QTEST_ATUAL'
        DataPipeline = ppDBRelVerbaDefinido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVerbaDefinido'
        mmHeight = 4763
        mmLeft = 106335
        mmTop = 794
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText12'
        DataField = 'TIPOVERBA'
        DataPipeline = ppDBRelVerbaDefinido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVerbaDefinido'
        mmHeight = 4763
        mmLeft = 119829
        mmTop = 794
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText13'
        DataField = 'VLUNITARIO_VERBA'
        DataPipeline = ppDBRelVerbaDefinido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVerbaDefinido'
        mmHeight = 4763
        mmLeft = 132264
        mmTop = 794
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText16'
        DataField = 'TOTAL_VERBA'
        DataPipeline = ppDBRelVerbaDefinido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVerbaDefinido'
        mmHeight = 4763
        mmLeft = 150520
        mmTop = 794
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText17'
        DataField = 'CODCOMPRADOR'
        DataPipeline = ppDBRelVerbaDefinido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVerbaDefinido'
        mmHeight = 4763
        mmLeft = 166395
        mmTop = 794
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText18'
        DataField = 'COMPRADOR'
        DataPipeline = ppDBRelVerbaDefinido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVerbaDefinido'
        mmHeight = 4763
        mmLeft = 181741
        mmTop = 794
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText20'
        DataField = 'CODFORNEC'
        DataPipeline = ppDBRelVerbaDefinido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVerbaDefinido'
        mmHeight = 4763
        mmLeft = 195500
        mmTop = 794
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText21'
        DataField = 'FORNECEDOR'
        DataPipeline = ppDBRelVerbaDefinido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVerbaDefinido'
        mmHeight = 4763
        mmLeft = 207406
        mmTop = 794
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText22'
        DataField = 'CODOFERTA'
        DataPipeline = ppDBRelVerbaDefinido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVerbaDefinido'
        mmHeight = 4763
        mmLeft = 222487
        mmTop = 794
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText23'
        DataField = 'DTINICIAL'
        DataPipeline = ppDBRelVerbaDefinido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVerbaDefinido'
        mmHeight = 4763
        mmLeft = 235187
        mmTop = 794
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText24'
        DataField = 'DTFINAL'
        DataPipeline = ppDBRelVerbaDefinido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVerbaDefinido'
        mmHeight = 4763
        mmLeft = 247887
        mmTop = 794
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText25'
        DataField = 'DTCANCEL'
        DataPipeline = ppDBRelVerbaDefinido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVerbaDefinido'
        mmHeight = 4763
        mmLeft = 260852
        mmTop = 794
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText33'
        DataField = 'VLCUSTOFIN'
        DataPipeline = ppDBRelVerbaDefinido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVerbaDefinido'
        mmHeight = 4763
        mmLeft = 33326
        mmTop = 794
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText7'
        DataField = 'MOTIVOOFERTA'
        DataPipeline = ppDBRelVerbaDefinido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVerbaDefinido'
        mmHeight = 4763
        mmLeft = 273051
        mmTop = 794
        mmWidth = 9523
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand5: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
    end
    object ppDesignLayers5: TppDesignLayers
      object ppDesignLayer5: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object qrVendaItemOferta: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT'
      'ITENS.CODOFERTA,'
      'ITENS.DESCOFERTA,'
      'ITENS.DTINICIAL,'
      'ITENS.DTFINAL,'
      'ITENS.VLUNITARIOVERBA,'
      'ITENS.CODFILIAL,'
      'ITENS.FILIAL,'
      'ITENS.CODPROD,'
      'ITENS.DESCRICAO,'
      'ITENS.UNIDADE,'
      'ITENS.CODFORNEC,'
      'ITENS.FORNECEDOR,'
      'ITENS.CODAUXILIAR,'
      'ITENS.CODCOMPRADOR,'
      'ITENS.COMPRADOR,'
      'ITENS.VLVENDA,'
      'ITENS.VLOFERTA,'
      'ITENS.VLOFERTAATAC,'
      'ITENS.VLCUSTOFIN,'
      'ITENS.QT,'
      '(ITENS.QT * ITENS.VLUNITARIOVERBA) AS "TOTALVERBA",'
      'PCOFERTAPROGRAMADAC.DTCANCEL'
      'FROM '
      '(SELECT '
      'PCOFERTAPROGRAMADAC.CODOFERTA,'
      'PCOFERTAPROGRAMADAC.DESCOFERTA,'
      'PCOFERTAPROGRAMADAC.DTINICIAL,'
      'PCOFERTAPROGRAMADAC.DTFINAL,'
      'PCOFERTAPROGRAMADAI.VLUNITARIOVERBA,'
      'PCOFERTAPROGRAMADAI.VLOFERTA,'
      'PCOFERTAPROGRAMADAI.VLOFERTAATAC,'
      'PCPEDC.CODFILIAL,'
      'NVL(PCFILIAL.FANTASIA, PCFILIAL.RAZAOSOCIAL) AS FILIAL,'
      'PCPEDI.CODPROD, '
      'PCPRODUT.DESCRICAO, '
      'PCPRODUT.UNIDADE, '
      'PCPRODUT.CODFORNEC,'
      'PCFORNEC.FORNECEDOR, '
      'PCPEDI.CODAUXILIAR,'
      
        'NVL(PCPRODFILIAL.CODCOMPRADOR, PCFORNEC.CODCOMPRADOR) AS "CODCOM' +
        'PRADOR",'
      'PCEMPR.NOME AS "COMPRADOR",'
      
        'SUM(DECODE(PCPEDC.CONDVENDA,5,0,6,0,11,0,12,0,NVL(PCPEDI.qt,0)*(' +
        'NVL(PCPEDI.pvenda, 0) + nvl(pcpedi.vloutrasdesp,0) + nvl(pcpedi.' +
        'vlfrete,0)))) VLVENDA,'
      
        'SUM((PCPEDI.qt)* DECODE(PCPEDC.CONDVENDA,6,0,11,0,12,0,NVL(PCPED' +
        'I.vlcustofin,0)) ) AS VLCUSTOFIN,'
      
        'SUM(DECODE(PCPEDC.CONDVENDA,5,0,6,0,11,0,12,0,NVL(PCPEDI.QT,0)))' +
        ' QT'
      
        'FROM PCPEDI, PCPEDC, PCPRODUT, PCFORNEC, PCDEPTO, PCOFERTAPROGRA' +
        'MADAI, PCOFERTAPROGRAMADAC, PCPRODFILIAL, PCEMPR, PCFILIAL, I9CO' +
        'NFIGVERBAOFERTA'
      ''
      'WHERE PCPEDI.NUMPED = PCPEDC.NUMPED'
      
        'AND PCOFERTAPROGRAMADAI.CODOFERTA = PCOFERTAPROGRAMADAC.CODOFERT' +
        'A'
      
        'AND I9CONFIGVERBAOFERTA.CODOFERTA = PCOFERTAPROGRAMADAC.CODOFERT' +
        'A'
      
        'AND UPPER(TRIM(I9CONFIGVERBAOFERTA.TIPOVERBA)) = UPPER(TRIM(:TIP' +
        'OVERBA))'
      'AND PCFORNEC.CODFORNECPRINC = I9CONFIGVERBAOFERTA.CODFORNEC'
      'AND PCOFERTAPROGRAMADAI.CODAUXILIAR = PCPEDI.CODAUXILIAR'
      'AND PCPRODFILIAL.CODPROD = PCPRODUT.CODPROD'
      'AND PCPRODFILIAL.CODFILIAL = PCOFERTAPROGRAMADAC.CODFILIAL'
      
        'AND PCEMPR.MATRICULA = NVL(PCPRODFILIAL.CODCOMPRADOR, PCFORNEC.C' +
        'ODCOMPRADOR)'
      'AND PCPEDI.CODPROD = PCPRODUT.CODPROD'
      'AND PCPRODUT.CODFORNEC = PCFORNEC.CODFORNEC'
      'AND PCPEDI.CODPROD = PCPRODUT.CODPROD'
      'AND PCPRODUT.CODEPTO = PCDEPTO.CODEPTO'
      'AND PCPEDC.CODFILIAL = PCOFERTAPROGRAMADAC.CODFILIAL'
      'AND PCFILIAL.CODIGO = PCPEDC.CODFILIAL'
      
        'AND PCPEDC.DATA BETWEEN PCOFERTAPROGRAMADAC.DTINICIAL AND PCOFER' +
        'TAPROGRAMADAC.DTFINAL'
      'AND PCOFERTAPROGRAMADAC.DTCANCEL IS NULL'
      'AND NVL(PCOFERTAPROGRAMADAI.GERAVERBA,'#39'N'#39') = '#39'S'#39
      'AND PCOFERTAPROGRAMADAI.VLUNITARIOVERBA IS NOT NULL'
      'AND PCPEDC.DTCANCEL IS NULL'
      'AND PCPEDC.CONDVENDA IN (1)'
      '--AND PCOFERTAPROGRAMADAC.CODOFERTA = :CODOFERTA'
      ''
      'GROUP BY '
      'PCOFERTAPROGRAMADAC.CODOFERTA,'
      'PCOFERTAPROGRAMADAC.DESCOFERTA,'
      'PCOFERTAPROGRAMADAC.DTINICIAL,'
      'PCOFERTAPROGRAMADAC.DTFINAL,'
      'PCOFERTAPROGRAMADAI.VLOFERTA,'
      'PCOFERTAPROGRAMADAI.VLOFERTAATAC,'
      'NVL(PCFILIAL.FANTASIA, PCFILIAL.RAZAOSOCIAL),'
      'PCPEDC.CODFILIAL,'
      'PCPEDI.CODPROD, '
      'PCOFERTAPROGRAMADAI.VLUNITARIOVERBA,'
      'PCPRODUT.DESCRICAO,'
      'PCPRODUT.EMBALAGEM, '
      'PCPRODUT.UNIDADE, '
      'PCPRODUT.CODFORNEC,'
      'PCFORNEC.FORNECEDOR, '
      'PCPEDI.CODAUXILIAR,'
      'PCPRODUT.CLASSE, '
      'PCPRODUT.CODFAB, '
      'NVL(PCPRODFILIAL.CODCOMPRADOR, PCFORNEC.CODCOMPRADOR), '
      'PCEMPR.NOME'
      'ORDER BY VLVENDA DESC) ITENS,'
      'PCOFERTAPROGRAMADAC'
      'WHERE PCOFERTAPROGRAMADAC.CODOFERTA = ITENS.CODOFERTA'
      'ORDER BY ITENS.CODOFERTA')
    Left = 504
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TIPOVERBA'
        Value = Null
      end>
  end
  object dsVendaItemOferta: TUniDataSource
    DataSet = qrVendaItemOferta
    Left = 504
    Top = 72
  end
  object ppVendaItemOferta: TppReport
    AutoStop = False
    DataPipeline = ppDBVendaItemOferta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 504
    Top = 192
    Version = '17.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBVendaItemOferta'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 26458
      mmPrintPosition = 0
      object plbl23: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'plbl1'
        Caption = 'Relat'#243'rio de Venda parcial de oferta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8467
        mmLeft = 61119
        mmTop = 11377
        mmWidth = 124619
        BandType = 0
        LayerName = BandLayer3
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable1'
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 26723
        mmTop = 529
        mmWidth = 38629
        BandType = 0
        LayerName = BandLayer3
      end
      object plbl24: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'plbl2'
        Caption = 'Dt. Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 1852
        mmTop = 529
        mmWidth = 23813
        BandType = 0
        LayerName = BandLayer3
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object pdbtxtVLOFERTA1: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'pdbtxtVLOFERTA'
        DataField = 'VLUNITARIOVERBA'
        DataPipeline = ppDBVendaItemOferta
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBVendaItemOferta'
        mmHeight = 4763
        mmLeft = 159814
        mmTop = 265
        mmWidth = 29104
        BandType = 4
        LayerName = BandLayer3
      end
      object pdbtxtCODPROD1: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'pdbtxtCODPROD'
        DataField = 'CODPROD'
        DataPipeline = ppDBVendaItemOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBVendaItemOferta'
        mmHeight = 4763
        mmLeft = 8208
        mmTop = 265
        mmWidth = 17198
        BandType = 4
        LayerName = BandLayer3
      end
      object pdbtxtDESCRICAO1: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'pdbtxtDESCRICAO'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBVendaItemOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBVendaItemOferta'
        mmHeight = 4763
        mmLeft = 25935
        mmTop = 265
        mmWidth = 52123
        BandType = 4
        LayerName = BandLayer3
      end
      object pdbtxtCODAUXILIAR1: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'pdbtxtCODAUXILIAR'
        DataField = 'CODAUXILIAR'
        DataPipeline = ppDBVendaItemOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBVendaItemOferta'
        mmHeight = 4763
        mmLeft = 81762
        mmTop = 265
        mmWidth = 27781
        BandType = 4
        LayerName = BandLayer3
      end
      object pdbtxtVLOFERTA2: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'pdbtxtVLOFERTA2'
        DataField = 'VLOFERTA'
        DataPipeline = ppDBVendaItemOferta
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBVendaItemOferta'
        mmHeight = 4763
        mmLeft = 112454
        mmTop = 265
        mmWidth = 18521
        BandType = 4
        LayerName = BandLayer3
      end
      object pdbtxtVLOFERTAATAC1: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'pdbtxtVLOFERTAATAC1'
        DataField = 'VLOFERTAATAC'
        DataPipeline = ppDBVendaItemOferta
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBVendaItemOferta'
        mmHeight = 4763
        mmLeft = 134414
        mmTop = 265
        mmWidth = 23548
        BandType = 4
        LayerName = BandLayer3
      end
      object pdbtxtQT: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'pdbtxtQT'
        DataField = 'QT'
        DataPipeline = ppDBVendaItemOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBVendaItemOferta'
        mmHeight = 4763
        mmLeft = 190241
        mmTop = 265
        mmWidth = 23548
        BandType = 4
        LayerName = BandLayer3
      end
      object pdbtxtTOTALVERBA: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'pdbtxtTOTALVERBA'
        DataField = 'TOTALVERBA'
        DataPipeline = ppDBVendaItemOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBVendaItemOferta'
        mmHeight = 4763
        mmLeft = 214578
        mmTop = 265
        mmWidth = 32808
        BandType = 4
        LayerName = BandLayer3
      end
    end
    object ppFooterBand3: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
    end
    object ppGroup2: TppGroup
      BreakName = 'CODOFERTA'
      DataPipeline = ppDBVendaItemOferta
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBVendaItemOferta'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 26194
        mmPrintPosition = 0
        object pln9: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'pln3'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 1058
          mmWidth = 284300
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object pln10: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'pln2'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 8467
          mmWidth = 284300
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object plbl25: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'plbl11'
          AutoSize = False
          Caption = 'C'#243'd. Oferta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 4763
          mmTop = 2646
          mmWidth = 23813
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object pdbtxtCODOFERTA2: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'pdbtxtCODOFERTA'
          DataField = 'CODOFERTA'
          DataPipeline = ppDBVendaItemOferta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBVendaItemOferta'
          mmHeight = 4763
          mmLeft = 29898
          mmTop = 2646
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object pdbtxtDESCOFERTA2: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'pdbtxtDESCOFERTA'
          DataField = 'DESCOFERTA'
          DataPipeline = ppDBVendaItemOferta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBVendaItemOferta'
          mmHeight = 4763
          mmLeft = 51594
          mmTop = 2646
          mmWidth = 67998
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object plbl32: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'plbl12'
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 47361
          mmTop = 2646
          mmWidth = 3440
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object plbl33: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'plbl17'
          AutoSize = False
          Caption = 'Per'#237'odo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 121973
          mmTop = 2646
          mmWidth = 23813
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object pdbtxtDTINICIAL1: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'pdbtxtDTINICIAL'
          DataField = 'DTINICIAL'
          DataPipeline = ppDBVendaItemOferta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBVendaItemOferta'
          mmHeight = 4763
          mmLeft = 146844
          mmTop = 2646
          mmWidth = 23813
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object plbl34: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'plbl18'
          AutoSize = False
          Caption = #225
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4763
          mmLeft = 171715
          mmTop = 2646
          mmWidth = 6350
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object pdbtxtDTFINAL1: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'pdbtxtDTFINAL'
          DataField = 'DTFINAL'
          DataPipeline = ppDBVendaItemOferta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBVendaItemOferta'
          mmHeight = 4763
          mmLeft = 179123
          mmTop = 2646
          mmWidth = 23019
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object plbl44: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label1'
          AutoSize = False
          Caption = 'Filial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 4763
          mmTop = 11377
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object pdbtxtFILIAL: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText1'
          DataField = 'FILIAL'
          DataPipeline = ppDBVendaItemOferta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBVendaItemOferta'
          mmHeight = 4763
          mmLeft = 18785
          mmTop = 11377
          mmWidth = 191559
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppDBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc1'
          DataField = 'CODPROD'
          DataPipeline = ppDBVendaItemOferta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup2
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBVendaItemOferta'
          mmHeight = 4498
          mmLeft = 29898
          mmTop = 2910
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer3
        end
        object pln12: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'pln8'
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 4763
          mmTop = 1058
          mmWidth = 266171
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer3
        end
        object plbl45: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'plbl28'
          AutoSize = False
          Caption = 'Total de Itens:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 4763
          mmTop = 2910
          mmWidth = 24077
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer3
        end
        object ppDBCalc3: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc2'
          DataField = 'TOTALVERBA'
          DataPipeline = ppDBVendaItemOferta
          DisplayFormat = '$#,0.00;-$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup2
          Transparent = True
          DataPipelineName = 'ppDBVendaItemOferta'
          mmHeight = 4498
          mmLeft = 179123
          mmTop = 2910
          mmWidth = 33338
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer3
        end
        object plbl41: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'plbl41'
          AutoSize = False
          Caption = 'Valor Total de Verba:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 144198
          mmTop = 2910
          mmWidth = 33867
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer3
        end
      end
    end
    object ppGroup6: TppGroup
      BreakName = 'CODCOMPRADOR'
      DataPipeline = ppDBVendaItemOferta
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group6'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBVendaItemOferta'
      NewFile = False
      object ppGroupHeaderBand6: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 7938
        mmPrintPosition = 0
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label2'
          AutoSize = False
          Caption = 'C'#243'd. Comprador:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 5292
          mmTop = 1852
          mmWidth = 33602
          BandType = 3
          GroupNo = 1
          LayerName = BandLayer3
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText2'
          DataField = 'CODCOMPRADOR'
          DataPipeline = ppDBVendaItemOferta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBVendaItemOferta'
          mmHeight = 4763
          mmLeft = 39423
          mmTop = 1852
          mmWidth = 20638
          BandType = 3
          GroupNo = 1
          LayerName = BandLayer3
        end
        object ppLabel3: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label4'
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 61119
          mmTop = 1852
          mmWidth = 3175
          BandType = 3
          GroupNo = 1
          LayerName = BandLayer3
        end
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText3'
          DataField = 'COMPRADOR'
          DataPipeline = ppDBVendaItemOferta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBVendaItemOferta'
          mmHeight = 4763
          mmLeft = 65088
          mmTop = 1852
          mmWidth = 112977
          BandType = 3
          GroupNo = 1
          LayerName = BandLayer3
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'CODFORNEC'
      DataPipeline = ppDBVendaItemOferta
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBVendaItemOferta'
      NewFile = False
      object ppGroupHeaderBand7: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 15610
        mmPrintPosition = 0
        object ppLabel4: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label5'
          AutoSize = False
          Caption = 'C'#243'd. Fornec:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 6615
          mmTop = 1058
          mmWidth = 25400
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object ppDBText4: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText4'
          DataField = 'CODFORNEC'
          DataPipeline = ppDBVendaItemOferta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBVendaItemOferta'
          mmHeight = 4763
          mmLeft = 33867
          mmTop = 1058
          mmWidth = 13229
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object ppLabel5: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label6'
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 47361
          mmTop = 1058
          mmWidth = 3175
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object ppDBText5: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText5'
          DataField = 'FORNECEDOR'
          DataPipeline = ppDBVendaItemOferta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBVendaItemOferta'
          mmHeight = 4763
          mmLeft = 51594
          mmTop = 1058
          mmWidth = 106627
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object plbl36: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'plbl20'
          AutoSize = False
          Caption = 'C'#243'd. Barras'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 81492
          mmTop = 8202
          mmWidth = 27781
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object plbl37: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'plbl26'
          AutoSize = False
          Caption = 'C'#243'd. Prod.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 7938
          mmTop = 8202
          mmWidth = 17198
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object plbl38: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'plbl27'
          AutoSize = False
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 25665
          mmTop = 8202
          mmWidth = 52123
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object plbl39: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'plbl21'
          AutoSize = False
          Caption = 'Vl. Unit'#225'rio Verba'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 159544
          mmTop = 8202
          mmWidth = 29104
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object plbl35: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'plbl35'
          AutoSize = False
          Caption = 'Valor A gerar (Verba)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 214578
          mmTop = 8202
          mmWidth = 33867
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object plbl40: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'plbl40'
          AutoSize = False
          Caption = 'Vl. oferta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 112184
          mmTop = 8202
          mmWidth = 18521
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object plbl42: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'plbl401'
          AutoSize = False
          Caption = 'Vl. oferta. Atac'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 134144
          mmTop = 8202
          mmWidth = 23548
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object plbl2: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label3'
          AutoSize = False
          Caption = 'Qt. Vendida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 189971
          mmTop = 8202
          mmWidth = 23548
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object pln11: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'pln7'
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 4763
          mmTop = 13758
          mmWidth = 266171
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'BandLayer3'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppDBVendaItemOferta: TppDBPipeline
    DataSource = dsVendaItemOferta
    UserName = 'DBVendaItemOferta'
    Left = 504
    Top = 128
    object ppDBVendaItemOfertappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODOFERTA'
      FieldName = 'CODOFERTA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBVendaItemOfertappField2: TppField
      FieldAlias = 'DESCOFERTA'
      FieldName = 'DESCOFERTA'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object ppDBVendaItemOfertappField3: TppField
      FieldAlias = 'DTINICIAL'
      FieldName = 'DTINICIAL'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object ppDBVendaItemOfertappField4: TppField
      FieldAlias = 'DTFINAL'
      FieldName = 'DTFINAL'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object ppDBVendaItemOfertappField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLUNITARIOVERBA'
      FieldName = 'VLUNITARIOVERBA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object ppDBVendaItemOfertappField6: TppField
      FieldAlias = 'CODFILIAL'
      FieldName = 'CODFILIAL'
      FieldLength = 2
      DisplayWidth = 2
      Position = 5
    end
    object ppDBVendaItemOfertappField7: TppField
      FieldAlias = 'FILIAL'
      FieldName = 'FILIAL'
      FieldLength = 40
      DisplayWidth = 40
      Position = 6
    end
    object ppDBVendaItemOfertappField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODPROD'
      FieldName = 'CODPROD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppDBVendaItemOfertappField9: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 8
    end
    object ppDBVendaItemOfertappField10: TppField
      FieldAlias = 'UNIDADE'
      FieldName = 'UNIDADE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 9
    end
    object ppDBVendaItemOfertappField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODFORNEC'
      FieldName = 'CODFORNEC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppDBVendaItemOfertappField12: TppField
      FieldAlias = 'FORNECEDOR'
      FieldName = 'FORNECEDOR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 11
    end
    object ppDBVendaItemOfertappField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODAUXILIAR'
      FieldName = 'CODAUXILIAR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object ppDBVendaItemOfertappField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODCOMPRADOR'
      FieldName = 'CODCOMPRADOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object ppDBVendaItemOfertappField15: TppField
      FieldAlias = 'COMPRADOR'
      FieldName = 'COMPRADOR'
      FieldLength = 40
      DisplayWidth = 40
      Position = 14
    end
    object ppDBVendaItemOfertappField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLVENDA'
      FieldName = 'VLVENDA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object ppDBVendaItemOfertappField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLOFERTA'
      FieldName = 'VLOFERTA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppDBVendaItemOfertappField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLOFERTAATAC'
      FieldName = 'VLOFERTAATAC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object ppDBVendaItemOfertappField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLCUSTOFIN'
      FieldName = 'VLCUSTOFIN'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppDBVendaItemOfertappField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'QT'
      FieldName = 'QT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object ppDBVendaItemOfertappField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALVERBA'
      FieldName = 'TOTALVERBA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object ppDBVendaItemOfertappField22: TppField
      FieldAlias = 'DTCANCEL'
      FieldName = 'DTCANCEL'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 21
    end
  end
  object ppVerbasOfertaPDF: TppReport
    AutoStop = False
    DataPipeline = ppDBEmitirDadosOferta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Users\Pablo Oliveira\Desktop\relatorioprice.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 64
    Top = 280
    Version = '17.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEmitirDadosOferta'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 26194
      mmPrintPosition = 0
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'plbl1'
        Caption = 'Relat'#243'rio de acompanhamento da Oferta do Comprador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8467
        mmLeft = 42069
        mmTop = 8731
        mmWidth = 194469
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label28'
        AutoSize = False
        Caption = 'Filial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 791
        mmTop = 21963
        mmWidth = 10054
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label30'
        AutoSize = False
        Caption = 'Oferta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 11642
        mmTop = 21963
        mmWidth = 14288
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel59: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label35'
        AutoSize = False
        Caption = 'Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 92075
        mmTop = 21960
        mmWidth = 13494
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel64: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label40'
        AutoSize = False
        Caption = 'N. Verba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 106363
        mmTop = 21960
        mmWidth = 14817
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label39'
        AutoSize = False
        Caption = 'Tipo. Verba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 122238
        mmTop = 21960
        mmWidth = 17992
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel60: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label36'
        AutoSize = False
        Caption = 'Vl. Oferta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 141288
        mmTop = 21960
        mmWidth = 16404
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel65: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label41'
        AutoSize = False
        Caption = 'Mar. Var'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 159015
        mmTop = 21960
        mmWidth = 15346
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel66: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label42'
        AutoSize = False
        Caption = 'Est.Atual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 174625
        mmTop = 21960
        mmWidth = 14023
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel67: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label43'
        AutoSize = False
        Caption = 'Est. Dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 189442
        mmTop = 21960
        mmWidth = 14817
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel71: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label47'
        AutoSize = False
        Caption = 'Motivo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 205317
        mmTop = 21960
        mmWidth = 41275
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label31'
        AutoSize = False
        Caption = 'Dt.Ini.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 248178
        mmTop = 21963
        mmWidth = 18521
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label32'
        AutoSize = False
        Caption = 'Dt.Fim.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 266965
        mmTop = 21963
        mmWidth = 17198
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label57'
        AutoSize = False
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 26723
        mmTop = 21960
        mmWidth = 64294
        BandType = 0
        LayerName = BandLayer5
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Color = clGray
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'pdbtxtVLOFERTA1'
        DataField = 'VLOFERTA'
        DataPipeline = ppDBEmitirDadosOferta
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 141288
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'pdbtxtCUSTO'
        DataField = 'CUSTO'
        DataPipeline = ppDBEmitirDadosOferta
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 92075
        mmTop = 265
        mmWidth = 13494
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'pdbtxtMARGEM_OFERTA_VAREJO'
        DataField = 'MARGEM_OFERTA_VAREJO'
        DataPipeline = ppDBEmitirDadosOferta
        DisplayFormat = '0.00 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4233
        mmLeft = 159015
        mmTop = 265
        mmWidth = 15346
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'pdbtxtNUMVERBA'
        DataField = 'NUMVERBA'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 106363
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'pdbtxtTIPOVERBA1'
        DataField = 'TIPOVERBA'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 122238
        mmTop = 0
        mmWidth = 17992
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText27'
        DataField = 'CODFILIAL'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 791
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText28'
        DataField = 'QTESTGER'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4233
        mmLeft = 174625
        mmTop = 0
        mmWidth = 14023
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText30'
        DataField = 'ESTOQUEEMDIAS'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4498
        mmLeft = 189442
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'pdbtxtCODOFERTA1'
        DataField = 'CODOFERTA'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 11639
        mmTop = 0
        mmWidth = 14288
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText50: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'pdbtxtDTINICIAL1'
        DataField = 'DTINICIAL'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4233
        mmLeft = 248178
        mmTop = 529
        mmWidth = 18521
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText51: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'pdbtxtDTFINAL1'
        DataField = 'DTFINAL'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4233
        mmLeft = 266965
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText55: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText32'
        DataField = 'MOTIVOOFERTA'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4498
        mmLeft = 205317
        mmTop = 0
        mmWidth = 41275
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText37'
        DataField = 'CODPROD'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4763
        mmLeft = 26723
        mmTop = 0
        mmWidth = 10848
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText38'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEmitirDadosOferta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBEmitirDadosOferta'
        mmHeight = 4498
        mmLeft = 40215
        mmTop = 0
        mmWidth = 50800
        BandType = 4
        LayerName = BandLayer5
      end
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label58'
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 38363
        mmTop = 0
        mmWidth = 1058
        BandType = 4
        LayerName = BandLayer5
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'BandLayer5'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
