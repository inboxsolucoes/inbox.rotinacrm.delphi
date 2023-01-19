object frmCadastroMargens: TfrmCadastroMargens
  Left = 0
  Top = 0
  Caption = 'Cadastro de Margens'
  ClientHeight = 630
  ClientWidth = 831
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pcPrincipal: TcxPageControl
    Left = 0
    Top = 0
    Width = 831
    Height = 630
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = pageIncluir
    Properties.CustomButtons.Buttons = <>
    ExplicitWidth = 741
    ExplicitHeight = 558
    ClientRectBottom = 628
    ClientRectLeft = 2
    ClientRectRight = 829
    ClientRectTop = 28
    object pageIncluir: TcxTabSheet
      Caption = 'Margens Garantidas'
      ImageIndex = 1
      ExplicitWidth = 737
      ExplicitHeight = 528
      object pcIncluir: TcxPageControl
        Left = 0
        Top = 0
        Width = 827
        Height = 600
        Align = alClient
        TabOrder = 0
        Properties.CustomButtons.Buttons = <>
        ExplicitWidth = 737
        ExplicitHeight = 528
        ClientRectBottom = 598
        ClientRectLeft = 2
        ClientRectRight = 825
        ClientRectTop = 2
      end
      object cxGroupBox6: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = 'Selecione os filtros desejados:'
        TabOrder = 1
        ExplicitTop = -3
        ExplicitWidth = 861
        ExplicitHeight = 630
        Height = 600
        Width = 827
        object pcEditar: TcxPageControl
          Left = 3
          Top = 15
          Width = 821
          Height = 258
          Align = alTop
          TabOrder = 0
          Properties.ActivePage = cxTabSheet2
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 256
          ClientRectLeft = 2
          ClientRectRight = 819
          ClientRectTop = 28
          object cxTabSheet2: TcxTabSheet
            Caption = 'Pesquisar'
            ImageIndex = 2
            ExplicitHeight = 268
            object psqFilial: TCampoPesquisa
              Left = 20
              Top = 40
              Hint = 'Pressione a tecla CTRL + F3 para inicar a pesquisa.'
              ParentShowHint = False
              Properties.ReadOnly = False
              ShowHint = True
              Style.BorderStyle = ebsOffice11
              Style.Color = clWindow
              Style.LookAndFeel.Kind = lfOffice11
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = clWindowText
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 2
              TextHint = 'C'#243'digo'
              Caption = 'Filial'
              PesquisarLabel.Width = 20
              PesquisarLabel.Height = 13
              PesquisarLabel.Caption = 'Filial'
              PesquisarLabel.Transparent = True
              PesquisarSpeedButton.Left = 82
              PesquisarSpeedButton.Top = 40
              PesquisarSpeedButton.Width = 25
              PesquisarSpeedButton.Height = 21
              PesquisarSpeedButton.Hint = 'Pesquisar'
              PesquisarSpeedButton.Caption = '...'
              PesquisarSpeedButton.LookAndFeel.Kind = lfOffice11
              PesquisarSpeedButton.LookAndFeel.NativeStyle = False
              PesquisarSpeedButton.ParentShowHint = False
              PesquisarSpeedButton.ShowHint = True
              PesquisarSpeedButton.TabOrder = 0
              PesquisarSpeedButton.TabStop = False
              PesquisarSpeedButton.Flat = False
              PesquisarEdit.Left = 107
              PesquisarEdit.Top = 40
              PesquisarEdit.TabStop = False
              PesquisarEdit.ParentFont = False
              PesquisarEdit.Style.BorderStyle = ebsOffice11
              PesquisarEdit.Style.Color = clInactiveCaption
              PesquisarEdit.Style.Font.Charset = DEFAULT_CHARSET
              PesquisarEdit.Style.Font.Color = clInactiveCaptionText
              PesquisarEdit.Style.Font.Height = -11
              PesquisarEdit.Style.Font.Name = 'Tahoma'
              PesquisarEdit.Style.Font.Style = []
              PesquisarEdit.Style.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.Style.LookAndFeel.NativeStyle = False
              PesquisarEdit.Style.IsFontAssigned = True
              PesquisarEdit.StyleDisabled.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.StyleDisabled.LookAndFeel.NativeStyle = False
              PesquisarEdit.StyleFocused.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.StyleFocused.LookAndFeel.NativeStyle = False
              PesquisarEdit.StyleHot.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.StyleHot.LookAndFeel.NativeStyle = False
              PesquisarEdit.TabOrder = 3
              PesquisarEdit.ReadOnly = False
              PesquisarEdit.Color = clInactiveCaption
              PesquisarEdit.Width = 200
              PositionLabel = lpAbove
              SpacingLabel = 3
              PositionSpeedButton = lpRight
              SpacingSpeedButton = 2
              PositionEdit = lpRight
              SpacingEdit = 27
              PropPesquisar.TipoPesquisa = DMPesquisas.psqFilial
              MultiSelecao = False
              CorCodigo = clWindow
              CorDescricao = clInactiveCaption
              Habilitado = True
              ExibirMsgNaoEncontrado = False
              Width = 60
            end
            object psqDepartamento: TCampoPesquisa
              Left = 20
              Top = 80
              Hint = 'Pressione a tecla CTRL + F3 para inicar a pesquisa.'
              ParentShowHint = False
              Properties.ReadOnly = False
              ShowHint = True
              Style.BorderStyle = ebsOffice11
              Style.Color = clWindow
              Style.LookAndFeel.Kind = lfOffice11
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = clWindowText
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 7
              TextHint = 'C'#243'digo'
              Caption = 'Departamento'
              PesquisarLabel.Width = 69
              PesquisarLabel.Height = 13
              PesquisarLabel.Caption = 'Departamento'
              PesquisarLabel.Transparent = True
              PesquisarSpeedButton.Left = 82
              PesquisarSpeedButton.Top = 80
              PesquisarSpeedButton.Width = 25
              PesquisarSpeedButton.Height = 21
              PesquisarSpeedButton.Hint = 'Pesquisar'
              PesquisarSpeedButton.Caption = '...'
              PesquisarSpeedButton.LookAndFeel.Kind = lfOffice11
              PesquisarSpeedButton.LookAndFeel.NativeStyle = False
              PesquisarSpeedButton.ParentShowHint = False
              PesquisarSpeedButton.ShowHint = True
              PesquisarSpeedButton.TabOrder = 1
              PesquisarSpeedButton.TabStop = False
              PesquisarSpeedButton.Flat = False
              PesquisarEdit.Left = 107
              PesquisarEdit.Top = 80
              PesquisarEdit.TabStop = False
              PesquisarEdit.ParentFont = False
              PesquisarEdit.Style.BorderStyle = ebsOffice11
              PesquisarEdit.Style.Color = clInactiveCaption
              PesquisarEdit.Style.Font.Charset = DEFAULT_CHARSET
              PesquisarEdit.Style.Font.Color = clInactiveCaptionText
              PesquisarEdit.Style.Font.Height = -11
              PesquisarEdit.Style.Font.Name = 'Tahoma'
              PesquisarEdit.Style.Font.Style = []
              PesquisarEdit.Style.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.Style.LookAndFeel.NativeStyle = False
              PesquisarEdit.Style.IsFontAssigned = True
              PesquisarEdit.StyleDisabled.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.StyleDisabled.LookAndFeel.NativeStyle = False
              PesquisarEdit.StyleFocused.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.StyleFocused.LookAndFeel.NativeStyle = False
              PesquisarEdit.StyleHot.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.StyleHot.LookAndFeel.NativeStyle = False
              PesquisarEdit.TabOrder = 4
              PesquisarEdit.ReadOnly = False
              PesquisarEdit.Color = clInactiveCaption
              PesquisarEdit.Width = 200
              PositionLabel = lpAbove
              SpacingLabel = 3
              PositionSpeedButton = lpRight
              SpacingSpeedButton = 2
              PositionEdit = lpRight
              SpacingEdit = 27
              PropPesquisar.TipoPesquisa = DMPesquisas.psqDepartamentos
              MultiSelecao = False
              CorCodigo = clWindow
              CorDescricao = clInactiveCaption
              Habilitado = True
              ExibirMsgNaoEncontrado = False
              Width = 60
            end
            object psqProduto: TCampoPesquisa
              Left = 20
              Top = 119
              Hint = 'Pressione a tecla CTRL + F3 para inicar a pesquisa.'
              ParentShowHint = False
              Properties.ReadOnly = False
              ShowHint = True
              Style.BorderStyle = ebsOffice11
              Style.Color = clWindow
              Style.LookAndFeel.Kind = lfOffice11
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = clWindowText
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 8
              TextHint = 'C'#243'digo'
              Caption = 'Produto'
              PesquisarLabel.Width = 38
              PesquisarLabel.Height = 13
              PesquisarLabel.Caption = 'Produto'
              PesquisarLabel.Transparent = True
              PesquisarSpeedButton.Left = 82
              PesquisarSpeedButton.Top = 119
              PesquisarSpeedButton.Width = 25
              PesquisarSpeedButton.Height = 21
              PesquisarSpeedButton.Hint = 'Pesquisar'
              PesquisarSpeedButton.Caption = '...'
              PesquisarSpeedButton.LookAndFeel.Kind = lfOffice11
              PesquisarSpeedButton.LookAndFeel.NativeStyle = False
              PesquisarSpeedButton.ParentShowHint = False
              PesquisarSpeedButton.ShowHint = True
              PesquisarSpeedButton.TabOrder = 5
              PesquisarSpeedButton.TabStop = False
              PesquisarSpeedButton.Flat = False
              PesquisarEdit.Left = 107
              PesquisarEdit.Top = 119
              PesquisarEdit.TabStop = False
              PesquisarEdit.ParentFont = False
              PesquisarEdit.Style.BorderStyle = ebsOffice11
              PesquisarEdit.Style.Color = clInactiveCaption
              PesquisarEdit.Style.Font.Charset = DEFAULT_CHARSET
              PesquisarEdit.Style.Font.Color = clInactiveCaptionText
              PesquisarEdit.Style.Font.Height = -11
              PesquisarEdit.Style.Font.Name = 'Tahoma'
              PesquisarEdit.Style.Font.Style = []
              PesquisarEdit.Style.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.Style.LookAndFeel.NativeStyle = False
              PesquisarEdit.Style.IsFontAssigned = True
              PesquisarEdit.StyleDisabled.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.StyleDisabled.LookAndFeel.NativeStyle = False
              PesquisarEdit.StyleFocused.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.StyleFocused.LookAndFeel.NativeStyle = False
              PesquisarEdit.StyleHot.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.StyleHot.LookAndFeel.NativeStyle = False
              PesquisarEdit.TabOrder = 6
              PesquisarEdit.ReadOnly = False
              PesquisarEdit.Color = clInactiveCaption
              PesquisarEdit.Width = 200
              PositionLabel = lpAbove
              SpacingLabel = 3
              PositionSpeedButton = lpRight
              SpacingSpeedButton = 2
              PositionEdit = lpRight
              SpacingEdit = 27
              PropPesquisar.TipoPesquisa = DMPesquisas.psqProdutos
              MultiSelecao = False
              CorCodigo = clWindow
              CorDescricao = clInactiveCaption
              Habilitado = True
              ExibirMsgNaoEncontrado = False
              Width = 60
            end
            object psqSubCategoria: TCampoPesquisa
              Left = 326
              Top = 119
              Hint = 'Pressione a tecla CTRL + F3 para inicar a pesquisa.'
              ParentShowHint = False
              Properties.ReadOnly = False
              ShowHint = True
              Style.BorderStyle = ebsOffice11
              Style.Color = clWindow
              Style.LookAndFeel.Kind = lfOffice11
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = clWindowText
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 11
              TextHint = 'C'#243'digo'
              Caption = 'Subcategoria'
              PesquisarLabel.Width = 63
              PesquisarLabel.Height = 13
              PesquisarLabel.Caption = 'Subcategoria'
              PesquisarLabel.Transparent = True
              PesquisarSpeedButton.Left = 388
              PesquisarSpeedButton.Top = 119
              PesquisarSpeedButton.Width = 25
              PesquisarSpeedButton.Height = 21
              PesquisarSpeedButton.Hint = 'Pesquisar'
              PesquisarSpeedButton.Caption = '...'
              PesquisarSpeedButton.LookAndFeel.Kind = lfOffice11
              PesquisarSpeedButton.LookAndFeel.NativeStyle = False
              PesquisarSpeedButton.ParentShowHint = False
              PesquisarSpeedButton.ShowHint = True
              PesquisarSpeedButton.TabOrder = 12
              PesquisarSpeedButton.TabStop = False
              PesquisarSpeedButton.Flat = False
              PesquisarEdit.Left = 413
              PesquisarEdit.Top = 119
              PesquisarEdit.TabStop = False
              PesquisarEdit.ParentFont = False
              PesquisarEdit.Style.BorderStyle = ebsOffice11
              PesquisarEdit.Style.Color = clInactiveCaption
              PesquisarEdit.Style.Font.Charset = DEFAULT_CHARSET
              PesquisarEdit.Style.Font.Color = clInactiveCaptionText
              PesquisarEdit.Style.Font.Height = -11
              PesquisarEdit.Style.Font.Name = 'Tahoma'
              PesquisarEdit.Style.Font.Style = []
              PesquisarEdit.Style.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.Style.LookAndFeel.NativeStyle = False
              PesquisarEdit.Style.IsFontAssigned = True
              PesquisarEdit.StyleDisabled.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.StyleDisabled.LookAndFeel.NativeStyle = False
              PesquisarEdit.StyleFocused.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.StyleFocused.LookAndFeel.NativeStyle = False
              PesquisarEdit.StyleHot.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.StyleHot.LookAndFeel.NativeStyle = False
              PesquisarEdit.TabOrder = 13
              PesquisarEdit.ReadOnly = False
              PesquisarEdit.Color = clInactiveCaption
              PesquisarEdit.Width = 200
              PositionLabel = lpAbove
              SpacingLabel = 3
              PositionSpeedButton = lpRight
              SpacingSpeedButton = 2
              PositionEdit = lpRight
              SpacingEdit = 27
              PropPesquisar.TipoPesquisa = DMPesquisas.psqSubCategorias
              MultiSelecao = False
              CorCodigo = clWindow
              CorDescricao = clInactiveCaption
              Habilitado = True
              ExibirMsgNaoEncontrado = False
              Width = 60
            end
            object psqCategoria: TCampoPesquisa
              Left = 326
              Top = 80
              Hint = 'Pressione a tecla CTRL + F3 para inicar a pesquisa.'
              ParentShowHint = False
              Properties.ReadOnly = False
              ShowHint = True
              Style.BorderStyle = ebsOffice11
              Style.Color = clWindow
              Style.LookAndFeel.Kind = lfOffice11
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = clWindowText
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 14
              TextHint = 'C'#243'digo'
              Caption = 'Categoria'
              PesquisarLabel.Width = 47
              PesquisarLabel.Height = 13
              PesquisarLabel.Caption = 'Categoria'
              PesquisarLabel.Transparent = True
              PesquisarSpeedButton.Left = 388
              PesquisarSpeedButton.Top = 80
              PesquisarSpeedButton.Width = 25
              PesquisarSpeedButton.Height = 21
              PesquisarSpeedButton.Hint = 'Pesquisar'
              PesquisarSpeedButton.Caption = '...'
              PesquisarSpeedButton.LookAndFeel.Kind = lfOffice11
              PesquisarSpeedButton.LookAndFeel.NativeStyle = False
              PesquisarSpeedButton.ParentShowHint = False
              PesquisarSpeedButton.ShowHint = True
              PesquisarSpeedButton.TabOrder = 15
              PesquisarSpeedButton.TabStop = False
              PesquisarSpeedButton.Flat = False
              PesquisarEdit.Left = 413
              PesquisarEdit.Top = 80
              PesquisarEdit.TabStop = False
              PesquisarEdit.ParentFont = False
              PesquisarEdit.Style.BorderStyle = ebsOffice11
              PesquisarEdit.Style.Color = clInactiveCaption
              PesquisarEdit.Style.Font.Charset = DEFAULT_CHARSET
              PesquisarEdit.Style.Font.Color = clInactiveCaptionText
              PesquisarEdit.Style.Font.Height = -11
              PesquisarEdit.Style.Font.Name = 'Tahoma'
              PesquisarEdit.Style.Font.Style = []
              PesquisarEdit.Style.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.Style.LookAndFeel.NativeStyle = False
              PesquisarEdit.Style.IsFontAssigned = True
              PesquisarEdit.StyleDisabled.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.StyleDisabled.LookAndFeel.NativeStyle = False
              PesquisarEdit.StyleFocused.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.StyleFocused.LookAndFeel.NativeStyle = False
              PesquisarEdit.StyleHot.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.StyleHot.LookAndFeel.NativeStyle = False
              PesquisarEdit.TabOrder = 16
              PesquisarEdit.ReadOnly = False
              PesquisarEdit.Color = clInactiveCaption
              PesquisarEdit.Width = 200
              PositionLabel = lpAbove
              SpacingLabel = 3
              PositionSpeedButton = lpRight
              SpacingSpeedButton = 2
              PositionEdit = lpRight
              SpacingEdit = 27
              PropPesquisar.TipoPesquisa = DMPesquisas.psqCategorias
              MultiSelecao = False
              CorCodigo = clWindow
              CorDescricao = clInactiveCaption
              Habilitado = True
              ExibirMsgNaoEncontrado = False
              Width = 60
            end
            object psqSecao: TCampoPesquisa
              Left = 326
              Top = 40
              Hint = 'Pressione a tecla CTRL + F3 para inicar a pesquisa.'
              ParentShowHint = False
              Properties.ReadOnly = False
              ShowHint = True
              Style.BorderStyle = ebsOffice11
              Style.Color = clWindow
              Style.LookAndFeel.Kind = lfOffice11
              Style.LookAndFeel.NativeStyle = False
              Style.TextColor = clWindowText
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 17
              TextHint = 'C'#243'digo'
              Caption = 'Se'#231#227'o'
              PesquisarLabel.Width = 29
              PesquisarLabel.Height = 13
              PesquisarLabel.Caption = 'Se'#231#227'o'
              PesquisarLabel.Transparent = True
              PesquisarSpeedButton.Left = 388
              PesquisarSpeedButton.Top = 40
              PesquisarSpeedButton.Width = 25
              PesquisarSpeedButton.Height = 21
              PesquisarSpeedButton.Hint = 'Pesquisar'
              PesquisarSpeedButton.Caption = '...'
              PesquisarSpeedButton.LookAndFeel.Kind = lfOffice11
              PesquisarSpeedButton.LookAndFeel.NativeStyle = False
              PesquisarSpeedButton.ParentShowHint = False
              PesquisarSpeedButton.ShowHint = True
              PesquisarSpeedButton.TabOrder = 9
              PesquisarSpeedButton.TabStop = False
              PesquisarSpeedButton.Flat = False
              PesquisarEdit.Left = 413
              PesquisarEdit.Top = 40
              PesquisarEdit.TabStop = False
              PesquisarEdit.ParentFont = False
              PesquisarEdit.Style.BorderStyle = ebsOffice11
              PesquisarEdit.Style.Color = clInactiveCaption
              PesquisarEdit.Style.Font.Charset = DEFAULT_CHARSET
              PesquisarEdit.Style.Font.Color = clInactiveCaptionText
              PesquisarEdit.Style.Font.Height = -11
              PesquisarEdit.Style.Font.Name = 'Tahoma'
              PesquisarEdit.Style.Font.Style = []
              PesquisarEdit.Style.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.Style.LookAndFeel.NativeStyle = False
              PesquisarEdit.Style.IsFontAssigned = True
              PesquisarEdit.StyleDisabled.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.StyleDisabled.LookAndFeel.NativeStyle = False
              PesquisarEdit.StyleFocused.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.StyleFocused.LookAndFeel.NativeStyle = False
              PesquisarEdit.StyleHot.LookAndFeel.Kind = lfOffice11
              PesquisarEdit.StyleHot.LookAndFeel.NativeStyle = False
              PesquisarEdit.TabOrder = 10
              PesquisarEdit.ReadOnly = False
              PesquisarEdit.Color = clInactiveCaption
              PesquisarEdit.Width = 200
              PositionLabel = lpAbove
              SpacingLabel = 3
              PositionSpeedButton = lpRight
              SpacingSpeedButton = 2
              PositionEdit = lpRight
              SpacingEdit = 27
              PropPesquisar.TipoPesquisa = DMPesquisas.psqSecoes
              MultiSelecao = False
              CorCodigo = clWindow
              CorDescricao = clInactiveCaption
              Habilitado = True
              ExibirMsgNaoEncontrado = False
              Width = 60
            end
            object psqCodClassific: TcxTextEdit
              Left = 733
              Top = 40
              TabOrder = 18
              Width = 77
            end
            object cxLabel2: TcxLabel
              Left = 632
              Top = 41
              Caption = 'Cod. Classifica'#231#227'o:'
              Transparent = True
            end
            object btnPesquisar: TcxButton
              Left = 0
              Top = 197
              Width = 817
              Height = 31
              Align = alBottom
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
              TabOrder = 20
              OnClick = btnPesquisarClick
              ExplicitLeft = 56
              ExplicitTop = 218
              ExplicitWidth = 697
            end
            object cbPesquisarAteInformado: TcxCheckBox
              Left = 20
              Top = 151
              Caption = 'Pesquisar somente ate o filtro informado'
              TabOrder = 21
              Transparent = True
            end
            object cbMargemGarantida: TcxCheckBox
              Left = 326
              Top = 151
              Caption = 'Margem Garantida'
              TabOrder = 22
              Transparent = True
              OnClick = cbMargemGarantidaClick
            end
            object cmbCompMargemGarantida: TcxComboBox
              Left = 442
              Top = 150
              Enabled = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                '='
                '>='
                '>'
                '<'
                '<='
                '<>')
              TabOrder = 23
              Text = '='
              Width = 45
            end
            object edtCompMargemGarantida: TcxCurrencyEdit
              Left = 493
              Top = 150
              EditValue = 0.000000000000000000
              Enabled = False
              Properties.DecimalPlaces = 0
              Properties.DisplayFormat = '0'
              Properties.MaxValue = 999999.000000000000000000
              Properties.Nullstring = '0'
              TabOrder = 24
              Width = 48
            end
          end
        end
        object cxGrid2: TcxGrid
          Left = 3
          Top = 273
          Width = 821
          Height = 272
          Align = alClient
          TabOrder = 1
          LookAndFeel.SkinName = 'VisualStudio2013Light'
          ExplicitHeight = 232
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dmCadastroMargens.dsPesquisarMargens
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'Cod. Filial'
              DataBinding.FieldName = 'CODFILIAL'
              Options.Editing = False
              Width = 55
            end
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = 'Codigo'
              DataBinding.FieldName = 'CODCLASSIFICMERC'
              Options.Editing = False
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'Cod. Depto'
              DataBinding.FieldName = 'CODDEPTO'
              Options.Editing = False
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = 'Departamento'
              DataBinding.FieldName = 'DESCRICAODEPTO'
              Options.Editing = False
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = 'Cod. Sec'
              DataBinding.FieldName = 'CODSEC'
              Options.Editing = False
            end
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = 'Se'#231#227'o'
              DataBinding.FieldName = 'DESCRICAOSECAO'
              Options.Editing = False
            end
            object cxGridDBColumn7: TcxGridDBColumn
              Caption = 'Cod. Cat'
              DataBinding.FieldName = 'CODCATEGORIA'
              Options.Editing = False
            end
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = 'Categoria'
              DataBinding.FieldName = 'DESCRICAOCATEGORIA'
              Options.Editing = False
            end
            object cxGridDBTableView1CODSUBCATEGORIA: TcxGridDBColumn
              Caption = 'Subcategoria'
              DataBinding.FieldName = 'CODSUBCATEGORIA'
              Options.Editing = False
            end
            object cxGridDBTableView1DESCRICAOSUBCATEGORIA: TcxGridDBColumn
              Caption = 'Subcategoria'
              DataBinding.FieldName = 'DESCRICAOSUBCATEGORIA'
              Options.Editing = False
            end
            object cxGridDBColumn9: TcxGridDBColumn
              Caption = 'Cod. Prod'
              DataBinding.FieldName = 'CODPROD'
              Options.Editing = False
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = 'Produto'
              DataBinding.FieldName = 'DESCRICAOPRODUTO'
              Options.Editing = False
            end
            object cxGridDBColumn11: TcxGridDBColumn
              Caption = '% Garantido'
              DataBinding.FieldName = 'MARGEMGARANTIDA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.00%;- ,0.00%'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object Panel2: TPanel
          Left = 3
          Top = 545
          Width = 821
          Height = 45
          Align = alBottom
          TabOrder = 2
          ExplicitTop = 473
          ExplicitWidth = 731
          object cxLabel1: TcxLabel
            Left = 17
            Top = 12
            Caption = 'Margem:'
            Transparent = True
          end
          object edtMargemGarantida: TcxCurrencyEdit
            Left = 69
            Top = 11
            Properties.DisplayFormat = ' ,0.00%;-,0.00%'
            TabOrder = 1
            Width = 84
          end
          object btnAplicarTodos: TcxButton
            AlignWithMargins = True
            Left = 159
            Top = 11
            Width = 122
            Height = 21
            Caption = 'Aplicar em Todos'
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              00000000000000000002000000070000000C0000001000000012000000110000
              000E000000080000000200000000000000000000000000000000000000000000
              000100000004000101120D2A1D79184E36C6216B4BFF216B4BFF216C4BFF1A53
              3AD20F2F21840001011500000005000000010000000000000000000000000000
              0005050F0A351C5B40DC24805CFF29AC7EFF2CC592FF2DC894FF2DC693FF2AAE
              80FF258560FF1A563DD405110C3D00000007000000010000000000000003040E
              0A31206548ED299D74FF2FC896FF2EC996FF56D4ACFF68DAB5FF3BCD9DFF30C9
              96FF32CA99FF2BA479FF227050F805110C3D00000005000000000000000A1A57
              3DD02EA57CFF33CA99FF2EC896FF4CD2A8FF20835CFF00673BFF45BE96FF31CB
              99FF31CB98FF34CC9CFF31AD83FF1B5C41D300010113000000020B23185E2E8A
              66FF3BCD9EFF30CA97FF4BD3A9FF349571FF87AF9DFFB1CFC1FF238A60FF45D3
              A8FF36CF9FFF33CD9BFF3ED0A3FF319470FF0F32237F00000007184D37B63DB3
              8CFF39CD9FFF4BD5A9FF43A382FF699782FFF8F1EEFFF9F3EEFF357F5DFF56C4
              A1FF43D5A8FF3ED3A4FF3CD1A4FF41BC95FF1B5C43CD0000000B1C6446DF4BCA
              A4FF44D2A8FF4FB392FF4E826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1B75
              4FFF60DCB8FF48D8ACFF47D6AAFF51D4ACFF247A58F80000000E217050F266D9
              B8FF46D3A8FF0B6741FFD2D2CBFF6A8F77FF116B43FF73967EFFF1E8E3FF72A2
              8BFF46A685FF5EDFBAFF4CD9AFFF6BE2C2FF278460FF020604191E684ADC78D9
              BEFF52DAB1FF3DBA92FF096941FF2F9C76FF57DEB8FF2D9973FF73967EFFF0EA
              E7FF4F886CFF5ABB9AFF5BDEB9FF7FE2C7FF27835FF80000000C19523BAB77C8
              B0FF62E0BCFF56DDB7FF59DFBAFF5CE1BDFF5EE2BEFF5FE4C1FF288C67FF698E
              76FFE6E1DCFF176B47FF5FD8B4FF83D5BDFF1E674CC60000000909201747439C
              7BFF95ECD6FF5ADFBAFF5EE2BDFF61E4BFFF64E6C1FF67E6C5FF67E8C7FF39A1
              7EFF1F6D4AFF288B64FF98EFD9FF4DAC8CFF1036286D00000004000000041C5F
              46B578C6ADFF9AEED9FF65E5C0FF64E7C3FF69E7C6FF6BE8C8FF6CE9C9FF6BEA
              C9FF5ED6B6FF97EDD7FF86D3BBFF237759D20102010C0000000100000001030A
              0718247B5BDA70C1A8FFB5F2E3FF98F0DAFF85EDD4FF75EBCEFF88EFD6FF9CF2
              DDFFBAF4E7FF78CDB3FF2A906DEA0615102E0000000200000000000000000000
              0001030A07171E694FB844AB87FF85D2BBFFA8E6D6FFC5F4EBFFABE9D8FF89D8
              C1FF4BB692FF237F60CB05130E27000000030000000000000000000000000000
              000000000001000000030A241B411B60489D258464CF2C9D77EE258867CF1F71
              56B00E3226560000000600000002000000000000000000000000}
            OptionsImage.Layout = blGlyphRight
            TabOrder = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btnAplicarTodosClick
          end
          object btnRemoverTodos: TcxButton
            AlignWithMargins = True
            Left = 287
            Top = 11
            Width = 122
            Height = 21
            Caption = 'Remover Todos'
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
            OptionsImage.Layout = blGlyphRight
            TabOrder = 3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btnRemoverTodosClick
          end
        end
      end
    end
  end
end
