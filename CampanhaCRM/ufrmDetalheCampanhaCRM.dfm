object frmDetalheCampanhaCRM: TfrmDetalheCampanhaCRM
  Left = 0
  Top = 0
  Caption = 'frmDetalheCampanhaCRM'
  ClientHeight = 491
  ClientWidth = 953
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGridOfertasCadastradas: TcxGrid
    Left = 0
    Top = 0
    Width = 953
    Height = 443
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.SkinName = 'Office2010Black'
    object tblOfertas: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DMOfertas.dsPesquisaOfertasCadastradas
      DataController.DetailKeyFieldNames = 'CODOFERTA'
      DataController.KeyFieldNames = 'CODOFERTA'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = 'Sem dados a serem exibidos'
      OptionsView.GroupByBox = False
      object tblOfertasCODOFERTA: TcxGridDBColumn
        Caption = 'C'#243'd. Oferta'
        DataBinding.FieldName = 'CODOFERTA'
        Width = 83
      end
      object tblOfertasCODFILIAL: TcxGridDBColumn
        Caption = 'C'#243'd. Filial'
        DataBinding.FieldName = 'CODFILIAL'
        Width = 72
      end
      object tblOfertasDESCOFERTA: TcxGridDBColumn
        Caption = 'Descri'#231#227'o Oferta'
        DataBinding.FieldName = 'DESCOFERTA'
        Width = 218
      end
      object tblOfertasQTITENS: TcxGridDBColumn
        Caption = 'QT. Itens'
        DataBinding.FieldName = 'QTITENS'
        Width = 68
      end
      object tblOfertasDTINICIALSUGESTAO: TcxGridDBColumn
        Caption = 'Data. Inicial'
        DataBinding.FieldName = 'DTINICIALSUGESTAO'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 83
      end
      object tblOfertasDTFINALSUGESTAO: TcxGridDBColumn
        Caption = 'Data Final'
        DataBinding.FieldName = 'DTFINALSUGESTAO'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 73
      end
      object tblOfertasGERAVERBA: TcxGridDBColumn
        Caption = 'Gerar Verba'
        DataBinding.FieldName = 'GERAVERBA'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 91
      end
    end
    object tblItensCRM: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DMCampanhaCRM.dsDetalhesCampanhaCRM
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnHiding = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = 'Sem dados a serem exibidos'
      OptionsView.GroupByBox = False
      object tblItensCRMCODPRODPRINC: TcxGridDBColumn
        Caption = 'C'#243'd. Prod'
        DataBinding.FieldName = 'CODPRODPRINC'
        Width = 67
      end
      object tblItensCRMDESCRICAO: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'DESCRICAO'
      end
      object tblItensCRMCUSTOFIN: TcxGridDBColumn
        Caption = 'Custo.Fin'
        DataBinding.FieldName = 'CUSTOFIN'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 68
      end
      object tblItensCRMVLVERBAUNITARIO: TcxGridDBColumn
        Caption = 'VlUnit. Verba'
        DataBinding.FieldName = 'VLVERBAUNITARIO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Width = 83
      end
      object tblItensCRMPERCDESCONTO: TcxGridDBColumn
        Caption = '(%)Desc'
        DataBinding.FieldName = 'PERCDESCONTO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '% ,0.00;-% ,0.00'
        Width = 60
      end
      object tblItensCRMPVENDACRM: TcxGridDBColumn
        Caption = 'P. Crm'
        DataBinding.FieldName = 'PVENDACRM'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 71
      end
      object tblItensCRMMARGEMFUTURA: TcxGridDBColumn
        Caption = 'Margem. Fut'
        DataBinding.FieldName = 'MARGEMFUTURA'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '% ,0.00;-% ,0.00'
        Width = 83
      end
      object tblItensCRMMARGEMMIN: TcxGridDBColumn
        Caption = 'Margem. M'#237'nima'
        DataBinding.FieldName = 'MARGEMMIN'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '% ,0.00;-% ,0.00'
        Width = 69
      end
    end
    object cxGridOfertasLevel1: TcxGridLevel
      GridView = tblItensCRM
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 443
    Width = 953
    Height = 48
    Align = alBottom
    TabOrder = 1
    object btnAprovar: TcxButton
      AlignWithMargins = True
      Left = 786
      Top = 6
      Width = 163
      Height = 36
      Margins.Left = 5
      Margins.Top = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = 'Voltar'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000020000000705120D39113D2A9E19593EDD1F6A49FF1E6A48FF1B5D
        3EE313422EAB0717104900000009000000020000000000000000000000000000
        000201020210113C299D20724EFF229A6DFF22B481FF24C78FFF24C890FF23B5
        81FF229C6FFF20724FFF154831B5010503190000000300000000000000010102
        020E174E36C0218A61FF25C58EFF26C992FF25CA93FF28CB93FF3AD3A3FF45D7
        ABFF27CA93FF25C18BFF218860FF19593CD5020503180000000200000005113C
        2995238A63FF27C993FF26CA94FF27CB95FF30CE9AFF42D0A4FF1F9063FF0D7F
        4DFF29CB95FF27CB95FF29CB95FF238F66FF144731AF00000009040F0B2D2176
        53FA2BC693FF29CB95FF2BCC97FF3FD5A7FF42C198FF228056FFABCABBFF0D7E
        4CFF32D09CFF2DCE99FF2ACB96FF2DC996FF247C58FF07191147113A288F2DA1
        78FF2ECD98FF36D19EFF51DAB2FF31A077FF448968FFDEEAE5FFF9F4F0FF0D7D
        4BFF5BE0B9FF5ADFB8FF4DD9B0FF30CF9BFF30A67DFF154933AF195A3ECA35C1
        93FF44D6ABFF51CEA7FF1F7C56FF86B19CFFFAF9F8FFF8F2EEFFF8F0EBFF0D7B
        4AFF0C7748FF0C7444FF228F65FF3BD4A4FF36C395FF1C694AE51C6B4AE946D1
        A4FF33A980FF296D4DFFC3D3CAFFFBF7F5FFF8F2EEFFF8F4F0FFF9F4F0FFFFFF
        FFFFFFFFFFFFFFFFFFFF0C6D41FF43D9AAFF49D5ABFF207853FA1D6B4BE35CD8
        B3FF30A980FF296E4CFFAEB7A9FFECE2DDFFF8F3EFFFF9F6F3FFFAF7F4FFE2D6
        D1FFE0D4CEFFE0D3CDFF0C6B3FFF48DBAFFF62DFBBFF227D59FC195E43C367D0
        B1FF50DEB2FF45CCA2FF1C7751FF73947EFFE4DBD5FFF7F4F2FFFBF9F6FF0B71
        42FF0C6E41FF0C6B40FF1D885CFF52E0B5FF6CD7B7FF1F7050DF113C2B7D5BB7
        98FF61E3BEFF54E1B9FF56E1BAFF319C77FF3B7255FFC8C8C0FFF3F0EDFF0C6E
        41FF5DE7BFFF5AE5BFFF58E3BBFF63E4C0FF65C1A5FF164F399E040E0A1F2C89
        67F58CE8CEFF5BE3BDFF5DE5BFFF5FE8C1FF4EC6A1FF1E6948FF95A898FF0B69
        3EFF61E9C5FF5FE8C1FF5FE5BFFF91EBD4FF2F9670FC07181236000000021242
        307C4CAE8CFF97F0DAFF67E8C4FF62EAC4FF67EAC8FF64E4C2FF2C8462FF0C65
        3BFF67EAC8FF6EECC9FF9EF3DCFF52B493FF16543D9A00000005000000000002
        0105195D44A550B393FFA3EDDAFF95F2D9FF86EFD6FF78EED0FF79EFD1FF87F0
        D7FF96F2DDFFA0ECD8FF4CB592FF1C6C4FB80103030C00000001000000000000
        000000000002124633782F9F77F76AC9ACFF89DEC6FFA7EDDBFFA9F0DEFF8CE1
        C9FF6DCEAFFF30A67DF916563F8F010201080000000100000000000000000000
        00000000000000000001040F0B1B144E3A7E207F5FC226926DDA269670DF2185
        63C816543F850617112900000003000000010000000000000000}
      TabOrder = 0
      OnClick = btnAprovarClick
    end
  end
end
