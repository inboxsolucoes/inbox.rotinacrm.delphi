object frmCustoEstoque: TfrmCustoEstoque
  Left = 0
  Top = 0
  Caption = 'Detalhes de Custo / Estoque'
  ClientHeight = 371
  ClientWidth = 1119
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'Detalhes de Custo / Estoque'
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
      1119
      364)
    Height = 371
    Width = 1119
    object cxGrid1: TcxGrid
      Left = 16
      Top = 32
      Width = 1089
      Height = 241
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxGridCusto: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsCusto
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxGridCustoCODFILIAL: TcxGridDBColumn
          Caption = 'Cod. Filial'
          DataBinding.FieldName = 'CODFILIAL'
          Options.Editing = False
          Width = 85
        end
        object cxGridCustoCODPROD: TcxGridDBColumn
          Caption = 'Cod. Prod'
          DataBinding.FieldName = 'CODPROD'
          Options.Editing = False
        end
        object cxGridCustoCODAUXILIAR: TcxGridDBColumn
          Caption = 'Cod. Auxiliar'
          DataBinding.FieldName = 'CODAUXILIAR'
        end
        object cxGridCustoDESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Options.Editing = False
          Width = 239
        end
        object cxGridCustoMARGEMVAREJO: TcxGridDBColumn
          Caption = 'Margem Ideal Varejo'
          DataBinding.FieldName = 'MARGEMVAREJO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '% ,0.00;-% ,0.00'
        end
        object cxGridCustoPTABELA: TcxGridDBColumn
          Caption = 'Pr. Futuro'
          DataBinding.FieldName = 'PTABELA'
        end
        object cxGridCustoPVENDA: TcxGridDBColumn
          Caption = 'Pr. Venda'
          DataBinding.FieldName = 'PVENDA'
        end
        object cxGridCustoMARGEMATAC: TcxGridDBColumn
          Caption = 'Margem Ideal Atac.'
          DataBinding.FieldName = 'MARGEMATAC'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '% ,0.00;-% ,0.00'
        end
        object cxGridCustoPTABELAATAC: TcxGridDBColumn
          Caption = 'Pr. Fut. Atac.'
          DataBinding.FieldName = 'PTABELAATAC'
        end
        object cxGridCustoPVENDAATAC: TcxGridDBColumn
          Caption = 'Pr. Venda Atac.'
          DataBinding.FieldName = 'PVENDAATAC'
        end
        object cxGridCustoQTMINIMAATACADO: TcxGridDBColumn
          Caption = 'Qt. Min. Atac.'
          DataBinding.FieldName = 'QTMINIMAATACADO'
        end
        object cxGridCustoFATORPRECO: TcxGridDBColumn
          Caption = 'Fator Pre'#231'o Atac.'
          DataBinding.FieldName = 'FATORPRECO'
        end
        object cxGridCustoQTESTGER: TcxGridDBColumn
          Caption = 'Qt. Est. Ger.'
          DataBinding.FieldName = 'QTESTGER'
          Options.Editing = False
          Width = 98
        end
        object cxGridCustoQTRESERV: TcxGridDBColumn
          Caption = 'Qt. Reserv.'
          DataBinding.FieldName = 'QTRESERV'
          Options.Editing = False
        end
        object cxGridCustoQTINDENIZ: TcxGridDBColumn
          Caption = 'Qt. Avaria'
          DataBinding.FieldName = 'QTINDENIZ'
          Options.Editing = False
        end
        object cxGridCustoCUSTOULTENT: TcxGridDBColumn
          Caption = 'Custo Ult. Ent.'
          DataBinding.FieldName = 'CUSTOULTENT'
          Options.Editing = False
          Width = 126
        end
        object cxGridCustoCUSTOFIN: TcxGridDBColumn
          Caption = 'Custo Financeiro'
          DataBinding.FieldName = 'CUSTOFIN'
          Options.Editing = False
          Width = 132
        end
        object cxGridCustoCUSTOREAL: TcxGridDBColumn
          Caption = 'Custo Real'
          DataBinding.FieldName = 'CUSTOREAL'
          Options.Editing = False
          Width = 117
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGridCusto
      end
    end
    object btnCancelar: TcxButton
      Left = 948
      Top = 279
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
      TabOrder = 1
    end
  end
  object ActionList1: TActionList
    Left = 752
    Top = 96
    object actFechar: TAction
      Caption = 'Fechar (F2)'
      ShortCut = 113
      OnExecute = actFecharExecute
    end
  end
  object qryCusto: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      
        'SELECT DISTINCT pcest.codfilial, pcembalagem.codauxiliar, pcest.' +
        'codprod,'
      
        '                pcprodut.descricao, pcclassificmerc.margemvarejo' +
        ','
      '                pcembalagem.ptabela, pcembalagem.pvenda,'
      '                pcembalagem.ptabelaatac, pcembalagem.pvendaatac,'
      
        '                pcclassificmerc.margematac, pcembalagem.qtminima' +
        'atacado,'
      
        '                pcembalagem.fatorpreco, pcest.qtestger, pcest.qt' +
        'reserv,'
      
        '                pcest.qtindeniz, ROUND (pcest.custoultent, 2) cu' +
        'stoultent,'
      '                ROUND (pcest.custofin, 2) custofin,'
      '                ROUND (pcest.custoreal, 2) custoreal'
      '           FROM pcest, pcprodut, pcembalagem, pcclassificmerc'
      '          WHERE pcembalagem.codprod = pcest.codprod'
      '            AND pcest.codprod = pcclassificmerc.codprod(+)'
      '            AND pcest.codfilial = pcclassificmerc.codfilial(+)'
      '            AND pcembalagem.codfilial = pcest.codfilial'
      '            AND pcest.codprod = :CODPROD'
      '            AND pcest.codprod = pcprodut.codprod'
      
        '            AND PCEST.CODFILIAL IN (SELECT DISTINCT CODFILIAL FR' +
        'OM PCCAIXA WHERE DTFIM IS NULL)'
      '            AND pcembalagem.qtunit ='
      '                   (SELECT MIN (x.qtunit)'
      '                      FROM pcembalagem x'
      '                     WHERE x.codprod = pcest.codprod'
      '                       AND x.codfilial = pcest.codfilial)'
      
        '           AND pcest.codfilial in (SELECT DISTINCT PCFILIAL.CODI' +
        'GO CODIGO'
      '  FROM PCLIB, PCFILIAL                        '
      ' WHERE PCFILIAL.CODIGO = PCLIB.CODIGOA        '
      '       AND PCFILIAL.CODIGO <> ('#39'99'#39')        '
      '       AND PCLIB.CODFUNC = :CODFUNC)'
      '       ORDER BY pcest.codfilial, pcest.codprod')
    Left = 696
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODPROD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODFUNC'
        Value = nil
      end>
  end
  object dsCusto: TDataSource
    DataSet = qryCusto
    Left = 624
    Top = 88
  end
end
