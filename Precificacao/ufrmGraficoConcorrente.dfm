object frmGraficoConcorrente: TfrmGraficoConcorrente
  Left = 0
  Top = 0
  Caption = 'Hist'#243'rico de pre'#231'o de concorrentes'
  ClientHeight = 451
  ClientWidth = 1094
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxBox: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'Hist'#243'rico de pre'#231'o de concorrentes'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Transparent = True
    DesignSize = (
      1094
      444)
    Height = 451
    Width = 1094
    object Label1: TLabel
      Left = 17
      Top = 26
      Width = 31
      Height = 16
      Caption = 'Data:'
    end
    object Label2: TLabel
      Left = 184
      Top = 26
      Width = 7
      Height = 16
      Caption = 'a'
    end
    object btnCancelar: TcxButton
      Left = 920
      Top = 384
      Width = 157
      Height = 38
      Action = actFechar
      Anchors = [akRight, akBottom]
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.SkinName = 'Office2010Silver'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
        76E4120852AD06031B4D0000000E000000030000000000000000000000000000
        000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
        C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
        03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
        D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
        5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
        BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
        A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
        CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
        BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
        EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
        CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
        E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
        D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
        E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
        D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
        E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
        DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
        EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
        DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
        D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
        D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
        A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
        79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
        BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
        050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
        EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
        000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
        EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
        000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
        B5D040437D951212223000000004000000010000000000000000}
      TabOrder = 0
    end
    object cxGrid1: TcxGrid
      Left = 13
      Top = 56
      Width = 1064
      Height = 322
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      LookAndFeel.SkinName = 'VisualStudio2013Light'
      object tblHistoricoConcorrente: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsHistoricoConcorrente
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.NoDataToDisplayInfoText = 'Sem dados a serem exibidos'
        OptionsView.GroupByBox = False
        object tblHistoricoConcorrenteCODFILIAL: TcxGridDBColumn
          Caption = 'Cod. Filial'
          DataBinding.FieldName = 'CODFILIAL'
          Options.Editing = False
          Width = 47
        end
        object tblHistoricoConcorrenteDATALANC: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'DATALANC'
          Options.Editing = False
          Width = 74
        end
        object tblHistoricoConcorrenteCODPROD: TcxGridDBColumn
          Caption = 'Cod. Prod'
          DataBinding.FieldName = 'CODPROD'
          Options.Editing = False
        end
        object tblHistoricoConcorrenteCODAUXILIAR: TcxGridDBColumn
          Caption = 'Cod. Auxiliar'
          DataBinding.FieldName = 'CODAUXILIAR'
          Options.Editing = False
          Width = 98
        end
        object tblHistoricoConcorrenteEMBALAGEM: TcxGridDBColumn
          Caption = 'Emb.'
          DataBinding.FieldName = 'EMBALAGEM'
          Options.Editing = False
          Width = 42
        end
        object tblHistoricoConcorrenteQTUNIT: TcxGridDBColumn
          Caption = 'Qt. Unit.'
          DataBinding.FieldName = 'QTUNIT'
          Options.Editing = False
          Width = 40
        end
        object tblHistoricoConcorrenteDESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Options.Editing = False
          Width = 171
        end
        object tblHistoricoConcorrentePVENDACONCORRENTE: TcxGridDBColumn
          Caption = 'Pr. Venda Concorrente'
          DataBinding.FieldName = 'PVENDACONCORRENTE'
          Options.Editing = False
          Width = 71
        end
        object tblHistoricoConcorrentePVENDAATACCONCORRENTE: TcxGridDBColumn
          Caption = 'Pr. Atac. Concorrente'
          DataBinding.FieldName = 'PVENDAATACCONCORRENTE'
          Options.Editing = False
          Width = 70
        end
        object tblHistoricoConcorrentePVENDACRMCONCORRENTE: TcxGridDBColumn
          Caption = 'Pr. CRM Concorrente'
          DataBinding.FieldName = 'PVENDACRMCONCORRENTE'
          Width = 73
        end
        object tblHistoricoConcorrenteCONCORRENTE: TcxGridDBColumn
          Caption = 'Concorrente'
          DataBinding.FieldName = 'CONCORRENTE'
          Options.Editing = False
          Width = 107
        end
        object tblHistoricoConcorrenteI9PRODUTOFIFO: TcxGridDBColumn
          Caption = 'Fifo'
          DataBinding.FieldName = 'I9PRODUTOFIFO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Options.Editing = False
          Width = 43
        end
        object tblHistoricoConcorrenteI9PRODUTOOFERTA: TcxGridDBColumn
          Caption = 'Oferta'
          DataBinding.FieldName = 'I9PRODUTOOFERTA'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Options.Editing = False
          Width = 46
        end
        object tblHistoricoConcorrenteTEMFOTO: TcxGridDBColumn
          Caption = 'Foto'
          DataBinding.FieldName = 'TEMFOTO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Width = 36
        end
        object tblHistoricoConcorrenteI9URLFOTO: TcxGridDBColumn
          Caption = 'Visualizar'
          DataBinding.FieldName = 'I9URLFOTO'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000090000
                000D0000000E0000000E0000000F0000000F0000000F0000000F0000000F0000
                000F0000000F0000000F0000000F0000000F0000000E00000009825C4EC0B67F
                6CFFB57E6BFFB47D6BFFB47C6AFFB47C69FFB37B68FFB37A68FFB27A67FFB279
                67FFB17866FFB17866FFB17765FFB17765FFB07764FF7E5548C1BF8D79FFFCFA
                F8FFF6EFEBFFF6EFEBFFF5EFEAFFF6EFEAFFF5EFEBFFF6EFEAFFF6EFEAFFF5EF
                EAFFF6EFEAFFF5EEEAFFF5EFEAFFF6EFEAFFF6EFEAFFBB8874FFC0907DFFFCFB
                F9FF278AD7FF3192DAFF3A9BDFFF45A4E4FF50B0EAFF6EC6F0FF8BD7F5FF9EE2
                F8FF8BD8F6FF6EC6F0FF50B1EAFF44A4E4FFF6EFEBFFBC8A76FFC29480FFFDFB
                FAFF2380C0FF3498D5FF41ABE6FF4DB4EAFF5CC3F1FF7AD6F6FFA9E8FAFFC7EF
                FCFFA9E7FAFF7AD6F6FF5CC3F0FF47AFE8FFF6F0ECFFBF8D79FFC49784FFFDFC
                FBFF1B6696FF25719BFF307BA1FF4091B5FF57ABCBFF78C9E0FFB5E6F2FFC8F3
                FDFFBCEFFCFF86E1FAFF68CFF5FF50BAECFFF7F1ECFFC0907DFFC69A87FFFEFD
                FCFF0B284BFF143150FF1E3C59FF355A7AFF56839FFF78AFC5FFC0E1EAFFF9FA
                FCFFCDF1FBFF95D9F5FF7EC2ECFF5B9EDCFFF7F2EEFFC2937FFFC89D8BFFFEFD
                FDFF134B91FF286BB5FF4188D1FF5699DAFF6EAFE4FF84C6ECFF90D4F2FF94D9
                F3FF90D3F2FF84C6ECFF6DAFE3FF5093D6FFF8F3EFFFC49683FFCBA18FFFFEFE
                FDFF135AB9FF246CC4FF367BCBFF4789D2FF5798D8FF6AA9E0FF77B6E5FF7ABA
                E7FF77B6E5FF6AA9E0FF5897D8FF4384CEFFF9F3F0FFC69A87FFCCA492FFFEFE
                FEFF0D50B4FF1A62BEFF286DC4FF3779CAFF4584CFFF4F8ED3FF5695D7FF5B99
                D8FF5794D6FF4E8DD3FF4485CEFF3373C5FFF9F4F1FFC89D8BFFCEA796FFFFFE
                FEFF1153B4FF3572C5FF4984CCFF568FD1FF6197D5FF699FD9FF6AA0D9FF659B
                D7FF5E97D5FF538ED1FF4381CCFF2969BFFFF9F5F3FFCAA18EFFD0A998FFFFFF
                FEFF6093D0FF6193D0FF6295D1FF6698D3FF6799D5FF699BD5FF689AD5FF6799
                D4FF6296D4FF5D91D0FF558ACDFF4B83C9FFFAF5F3FFCCA392FFD1AB9AFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFFFE
                FEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFCEA695FF9F8A80C0D6BA
                ADFFD6BAADFFD6BAACFFD6B9ACFFD5B9ABFFD5B8ABFFD5B7AAFFD4B7AAFFD5B7
                A9FFD4B7A9FFD4B6A8FFD4B5A8FFD3B4A6FFD3B4A6FF9D857BC1000000030000
                0004000000050000000500000005000000050000000500000005000000050000
                0005000000050000000500000005000000050000000500000003}
              Kind = bkGlyph
            end>
          Properties.ViewStyle = vsButtonsAutoWidth
          Properties.OnButtonClick = tblHistoricoConcorrenteI9URLFOTOPropertiesButtonClick
          Options.ShowEditButtons = isebAlways
          Width = 60
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = tblHistoricoConcorrente
      end
    end
    object dtInicial: TcxDateEdit
      Left = 54
      Top = 24
      TabOrder = 2
      Width = 121
    end
    object btnFiltros: TcxButton
      AlignWithMargins = True
      Left = 326
      Top = 22
      Width = 150
      Height = 27
      Margins.Left = 5
      Margins.Right = 5
      Caption = 'Pesquisar'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
        00000000000100000004000000090000000D0000000F0000000F0000000C0000
        00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
        0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
        1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
        02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
        50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
        3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
        C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
        7CFFEFE6DFFFCDA67CFFCDA26BFFE3C28CFFEDD5A2FFE7CD9EFFD3B182FFD0AE
        88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
        C9FFDDC1A8FFC99865FFE8BE83FFE9C388FFEDCA97FFEFD3A7FFF2D9B0FFD5B1
        87FFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
        F2FFC79873FFDEAB77FFEFCDABFFF0D0B1FFEDC9A1FFECC69AFFEFCFA9FFE9C9
        A4FFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
        FCFFBE875FFFEDCFB9FFF5DFD2FFF2D6C1FFF1CFB4FFEDC6A4FFECC19BFFEFC8
        A6FFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
        F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FFF3D4C2FFF0CBB2FFEBB78EFFE5B7
        92FFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
        D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FFF6DDD3FFF1C8B2FFEBAF88FFC98E
        6CFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
        A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88865FFCE9D
        84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
        4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
        F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
        020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
        A2FC62504B900404031000000002000000000000000000000000000000000000
        000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
        1F3E000000060000000100000000000000000000000000000000}
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnFiltrosClick
    end
  end
  object dtFinal: TcxDateEdit
    Left = 197
    Top = 32
    TabOrder = 1
    Width = 121
  end
  object ActionList1: TActionList
    Left = 63
    Top = 312
    object actFechar: TAction
      Caption = 'Fechar (F2)'
      ShortCut = 113
      OnExecute = actFecharExecute
    end
  end
  object qryHistoricoConcorrente: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '       PCCOTAI.DATALANC,'
      '       PCCOTAI.CODFILIAL,'
      '       PCCOTAI.CODPROD,'
      '       PCCOTAI.CODAUXILIAR,'
      
        '       NVL (PCEMBALAGEM.DESCRICAOECF, PCPRODUT.DESCRICAO) DESCRI' +
        'CAO,'
      '       PCEMBALAGEM.EMBALAGEM,'
      '       PCEMBALAGEM.QTUNIT,'
      
        '       PCCOTAI.CODCONCOR || '#39' - '#39' || PCCONCOR.CONCORRENTE CONCOR' +
        'RENTE,'
      '       PCCOTAI.PUNIT PVENDACONCORRENTE,'
      '       PCCOTAI.PUNITATAC PVENDAATACCONCORRENTE,'
      '       PCCOTAI.PUNITCRM PVENDACRMCONCORRENTE,'
      '       NVL(PCCOTAI.I9PRODUTOFIFO, '#39'N'#39') AS I9PRODUTOFIFO,'
      '       NVL(PCCOTAI.I9PRODUTOOFERTA, '#39'N'#39') AS I9PRODUTOOFERTA,'
      '       PCCOTAI.I9URLFOTO,'
      '       DECODE(PCCOTAI.I9URLFOTO, NULL, '#39'N'#39', '#39'S'#39') AS TEMFOTO'
      '  FROM PCCOTAI,'
      '       PCPRODUT,'
      '       PCEMBALAGEM,'
      '       PCCONCOR,'
      '       PCCOTAC'
      ' WHERE     PCCOTAI.CODPROD = PCPRODUT.CODPROD'
      '       AND PCCOTAC.NUMPESQUISA = PCCOTAI.NUMPESQUISA'
      '       AND PCCOTAI.CODCONCOR = PCCONCOR.CODCONC'
      '       AND PCCOTAI.CODAUXILIAR = PCEMBALAGEM.CODAUXILIAR'
      
        '       AND TRUNC (PCCOTAC.DATAGERACAO) BETWEEN :DTINICIAL AND :D' +
        'TFINAL'
      '       AND PCCOTAI.CODPROD IN (SELECT PROD.CODPROD'
      '                                 FROM PCPRODUT PROD'
      '                                WHERE PROD.CODPRODPRINC ='
      
        '                                          (SELECT PRODINT.CODPRO' +
        'DPRINC'
      
        '                                             FROM PCPRODUT PRODI' +
        'NT'
      
        '                                            WHERE PRODINT.CODPRO' +
        'D = :CODPROD))'
      'ORDER BY PCCOTAI.DATALANC DESC')
    Active = True
    Left = 64
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DTINICIAL'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'DTFINAL'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'CODPROD'
        Value = Null
      end>
  end
  object dsHistoricoConcorrente: TDataSource
    DataSet = qryHistoricoConcorrente
    Left = 64
    Top = 264
  end
  object dataComponente: TDatasPadroes
    cxDateEditInicial = dtInicial
    cxDateEditFinal = dtFinal
    AnosFiscais.Anos = []
    DataPadrao = dpMesAtual
    QtdeUltimosDias = 15
    Left = 512
    Top = 16
  end
end
