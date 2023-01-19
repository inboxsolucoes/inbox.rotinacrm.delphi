object frmFiltrosCRM: TfrmFiltrosCRM
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Filtros de Pesquisa - Clube de Descontos'
  ClientHeight = 495
  ClientWidth = 709
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton1: TcxButton
    AlignWithMargins = True
    Left = 3
    Top = 450
    Width = 703
    Height = 42
    Align = alBottom
    Action = actPesquisar
    Caption = 'Consultar Produtos'
    LookAndFeel.SkinName = 'Metropolis'
    OptionsImage.Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      0002000000040000000500000004000000020000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000040000
      000A000000110000001400000011000000090000000300000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001000000050000000D0307
      10380F2455C01D448BFA152F63BD040810310000000900000002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000001000000050000000D0408133D1D45
      83EC5294CBFF63AEE5FF8AB5DAFF203E70C20000001100000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001000000040000000D040A143C214E8DEC5AA8
      DEFF4598E0FF93D4F6FFEAF8FEFF2C5696F00000001400000005000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000001000000040000000C050C163B265695EC5CA9DFFF3E94
      DDFF92D3F6FFEAF9FFFF76B2DDFF254878C20000001100000004000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      0002000000030000000400000004000000040000000400000004000000030000
      000100000001000000040000000C0D0B0B392B5E9CEC5BABE0FF4096DFFF92D3
      F6FFEAF9FFFF86C8EEFF32619FEC070D16380000000A00000002000000000000
      0000000000000000000000000000000000000000000100000003000000050000
      00080000000B0000000E0000000F00000010000000100000000E0000000B0000
      0008000000070000000C110A08397B4C3EF58792A6FF4398E0FF93D4F6FFEAF9
      FFFF87C7EEFF3468A4EC070E183D0000000D0000000400000001000000000000
      00000000000000000000000000010000000200000004000000090C0807263B28
      21835C3D34C4775045F77A5145FF794F42FF794F43FF5C3B33CA3B26208C110B
      093700000014110A083B784C40EBAC8071FF835548FFA7BAC7FFEAF9FFFF88C8
      F0FF376CA9EC080F193C0000000D000000050000000100000000000000000000
      0000000000000000000100000002000000060604041749332C96856154F7B294
      89FFCFB8ADFFEBD9CFFFECDCD0FFECDBD0FFEBDBD0FFCFB8ACFFAE9084FF815A
      4EFF4E332BB76A4438EEA77D6FFF8F6354FFC3A79FFFC8B2AAFFB2CAD9FF3A71
      ADEC08101A3B0000000D00000005000000010000000000000000000000000000
      0000000000000000000200000006140E0C2F725246D9B59A8FFFE6D4CAFFF0E3
      DAFFF9F2EBFFFDF9F3FFFFFCF7FFFFFCF7FFFDFAF3FFFAF3EDFFF3E7DEFFE6D4
      CAFFAE9084FF7B5447FF745045FFBDA29AFFFDFCFBFFDDCEC8FF895F53F5110F
      0F390000000C0000000400000001000000000000000000000000000000000000
      00000000000100000005110C0B29886459EDD4C2B9FFEFE0D7FFF9F2EAFFF3EA
      DEFFD4BB9CFFC09D73FFB38855FFB48956FFC49F75FFD7BE9FFFF4EBDFFFFBF5
      F0FFF0E2D9FFCDB6ABFF825A4FFFB2A29DFFD4C6C1FF825C51EB140D0B390000
      000C000000040000000100000000000000000000000000000000000000000000
      000100000003050403127A594FD5D6C5BEFFEEE2D8FFFCF6EFFFDBC5ACFFB489
      59FFCDA872FFDDC18AFFEBD49DFFECD7A2FFE2C995FFD2B481FFBC9362FFDFCA
      B0FFFDF9F3FFF1E5DCFFCCB4A9FF815D52FF6F4D41EE110B09390000000C0000
      0004000000010000000000000000000000000000000000000000000000000000
      0001000000054836307FC1ACA3FFF0E4DDFFF8F0E8FFC4A17EFFBC915EFFDCB7
      7AFFE3BF7FFFE3C07FFFE4C585FFE7CC8FFFEBD39BFFEFDCABFFE7D4A4FFC7A2
      71FFCBAC86FFFAF5EDFFF0E3DAFFB5998EFF5A3E35BD00000015000000070000
      0001000000000000000000000000000000000000000000000000000000010000
      0003090706179B786DF5F2EBE7FFF3E8E1FFCEB094FFBD8F5CFFDFB371FFDFB7
      74FFE2BA79FFE3BE7FFFE5C385FFE6C78AFFE9CB91FFEBD198FFEED9A8FFF0DE
      B2FFCAA578FFD7BD9FFFF7EFE8FFE8D7CEFF8E695CFC150E0C3A000000080000
      0002000000000000000000000000000000000000000000000000000000010000
      000443332E6FC8B2AAFFF5EDE8FFECDDD0FFAE7A4FFFDAA867FFDEAE6DFFDFB2
      73FFE2B77AFFE4BB7FFFE4BF85FFE6C38BFFE9C790FFEAC994FFEBCD98FFEED6
      A9FFEDD6AEFFBF9065FFF1E4D8FFF1E7DFFFBAA095FF4A342E940000000B0000
      0003000000000000000000000000000000000000000000000000000000010000
      0005735950B5E5D9D6FFF3EAE3FFCCAA91FFC28A55FFDDA768FFDFAC6DFFDFAF
      73FFE2B379FFE4B77FFFE5BA83FFE7BF89FFE9C38FFFEAC493FFEBC696FFEBC9
      99FFF0D4AEFFD5AF87FFD8BAA0FFF5EBE4FFDAC6BDFF74544AD50000000E0000
      0004000000000000000000000000000000000000000000000000000000010000
      0005947369E0F8F4F3FFF3E9E2FFB17F5EFFD2955EFFDDA368FFE1AC76FFEAC4
      A0FFEDCBADFFEDC8A7FFE9C39CFFE7B98AFFE8BC8BFFE9BF90FFE9C092FFEAC2
      95FFECC9A0FFE5C29DFFC59877FFF6EEE8FFEADCD4FF8F6A5EFA020101130000
      0004000000000000000000000000000000000000000000000000000000010000
      0006A58379F1FFFEFEFFF3EBE5FFA46946FFD89961FFE1AA78FFF0D5C3FFF0D4
      C2FFEFCFBBFFEECDB4FFEECAAEFFECC7A7FFE8B98DFFE8B88CFFE8BA90FFE8BB
      91FFEABE95FFECC7A5FFBD8966FFF8F0EBFFF1E4DDFF9C7669FF0B0807220000
      0005000000010000000000000000000000000000000000000000000000010000
      0005AA897EF1FFFFFFFFF5EDE9FFA16544FFDB9861FFEECBB6FFF4DCD3FFF2D8
      CBFFF1D4C3FFEFCFBCFFEFCBB5FFEDC8AFFFEABF9FFFE7B189FFE7B38BFFE7B4
      8CFFE7B68EFFEAC1A2FFBF8669FFF7F1ECFFF2E7E1FF9F7A6EFF0907061E0000
      0004000000010000000000000000000000000000000000000000000000010000
      000498796FD7FAF7F6FFF8F2EFFFAB7158FFCF8B59FFF6E2DDFFF6E1DCFFF4DC
      D3FFF3D8CCFFF1D2C3FFEFCEBCFFEFCAB6FFEDC5ADFFE6AC85FFE6AE86FFE6AE
      89FFE7B08BFFE3B495FFC69278FFF6EFEAFFF0E6E2FF987568F4020101120000
      0004000000000000000000000000000000000000000000000000000000010000
      0003776058A8EAE0DCFFFBF8F7FFC39A88FFBC764EFFF7E6E4FFF8E6E5FFF6E1
      DDFFF4DCD4FFF3D7CCFFF1D1C3FFF0CDBCFFEEC7B3FFE5A67FFFE6A782FFE6A8
      83FFE7AC89FFD39C7EFFD6B2A0FFF5EDE8FFE4D7D2FF7F6358CC0000000C0000
      0003000000000000000000000000000000000000000000000000000000010000
      000244383361D6C2BBFFFFFEFEFFE7D6CEFF9F593DFFECCBBCFFF9EBECFFF8E6
      E5FFF6E1DDFFF4DBD4FFF3D6CCFFF1D1C3FFEBBDA5FFE3A27AFFE4A37CFFE4A3
      7CFFE5AA89FFBC7D65FFEDDED7FFF4ECE7FFCCB6AFFF53423B89000000090000
      0002000000000000000000000000000000000000000000000000000000000000
      000109070711AF9187E9F8F4F3FFFBF9F8FFBD9381FFAD6A4AFFF8E9E9FFF9EB
      ECFFF7E6E5FFF6E1DDFFF4DBD3FFF2D1C5FFE4A57FFFE19D74FFE29E75FFE29F
      77FFC6896CFFD4AD9DFFF5F0EAFFF6F0EDFFAE8C80FA120E0D28000000050000
      0001000000000000000000000000000000000000000000000000000000000000
      00010000000350413D6DDAC4BEFFFFFFFFFFF8F2F1FFB17F6AFFA86444FFE5BF
      AFFFF6E1DEFFF5DDD7FFEEC7B5FFE19F76FFE0996DFFE19A6EFFDA946BFFBF7F
      62FFC99A87FFF6EEEAFFF9F4F1FFD0BBB3FF5E4B449000000009000000030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010202020791776EBFE8DAD6FFFFFFFFFFFBF8F6FFCDAC9EFF9F5D
      43FFBC744EFFCE855BFFDC9265FFDC9266FFD28A62FFC6825FFFB5765CFFDABB
      AEFFF7F2EEFFF9F5F2FFE5D9D4FF95776DD60B08081A00000004000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000020E0C0B16A98E83DAE9DDD7FFFFFFFFFFFCFAFAFFEBDC
      D5FFC69F90FFB27C66FFA46248FFA7664BFFBA856FFFD0A999FFEEE0D9FFF8F2
      EFFFFCF9F9FFE6D9D5FFAC8C82EA1A15132F0000000600000002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000001000000020E0C0B17957D74C2DCC8C1FFFAF6F5FFFFFF
      FFFFFEFBFBFFFAF8F6FFF9F5F2FFF8F3F0FFF9F4F1FFFBF6F5FFFDFBFBFFFAF8
      F7FFD8C4BCFF9B8075D516121129000000060000000200000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000100000002020202075345406DB99B90E9DDCA
      C2FFEEE5E1FFFAF8F7FFFFFFFFFFFFFFFFFFFAF7F6FFEEE5E1FFDBC7BFFFBA9C
      91F25B4B457F0706051200000005000000020000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000003090807104036
      3256826D65A8A1877DCEB7998EEBBE9E92F49F847BCF877068B2463935610E0C
      0B19000000060000000300000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000010000
      0002000000030000000400000005000000060000000500000005000000040000
      0002000000010000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010000000100000001000000010000000100000001000000010000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    TabOrder = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 0
    ExplicitTop = 453
    ExplicitWidth = 709
  end
  object pcFiltros: TPageControl
    Left = 0
    Top = 0
    Width = 709
    Height = 447
    ActivePage = pgFiltros1
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 453
    object pgFiltros1: TTabSheet
      Caption = 'Filtros de Pesquisa - Clube de Descontos'
      ExplicitHeight = 425
      object cxGroupBox8: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = 'Filtros de Pesquisa'
        Style.LookAndFeel.SkinName = 'Metropolis'
        StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
        StyleFocused.LookAndFeel.SkinName = 'Metropolis'
        StyleHot.LookAndFeel.SkinName = 'Metropolis'
        TabOrder = 0
        ExplicitHeight = 425
        Height = 419
        Width = 701
        object edtProduto: TCampoPesquisa
          Left = 30
          Top = 74
          Hint = 'Pressione a tecla CTRL + F3 para inicar a pesquisa.'
          ParentFont = False
          ParentShowHint = False
          Properties.ReadOnly = False
          ShowHint = True
          Style.BorderStyle = ebsOffice11
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clInfoText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Metropolis'
          Style.TextColor = clWindowText
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Metropolis'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Metropolis'
          TabOrder = 0
          TextHint = 'C'#243'digo'
          Caption = 'Produto'
          PesquisarLabel.Width = 38
          PesquisarLabel.Height = 13
          PesquisarLabel.Caption = 'Produto'
          PesquisarLabel.Transparent = True
          PesquisarSpeedButton.Left = 92
          PesquisarSpeedButton.Top = 74
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
          PesquisarEdit.Left = 117
          PesquisarEdit.Top = 74
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
          PesquisarEdit.TabOrder = 2
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
        object edtDepartamento: TCampoPesquisa
          Left = 30
          Top = 113
          Hint = 'Pressione a tecla CTRL + F3 para inicar a pesquisa.'
          ParentFont = False
          ParentShowHint = False
          Properties.ReadOnly = False
          ShowHint = True
          Style.BorderStyle = ebsOffice11
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clInfoText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Metropolis'
          Style.TextColor = clWindowText
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Metropolis'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Metropolis'
          TabOrder = 5
          TextHint = 'C'#243'digo'
          Caption = 'Departamento'
          PesquisarLabel.Width = 69
          PesquisarLabel.Height = 13
          PesquisarLabel.Caption = 'Departamento'
          PesquisarLabel.Transparent = True
          PesquisarSpeedButton.Left = 92
          PesquisarSpeedButton.Top = 113
          PesquisarSpeedButton.Width = 25
          PesquisarSpeedButton.Height = 21
          PesquisarSpeedButton.Hint = 'Pesquisar'
          PesquisarSpeedButton.Caption = '...'
          PesquisarSpeedButton.LookAndFeel.Kind = lfOffice11
          PesquisarSpeedButton.LookAndFeel.NativeStyle = False
          PesquisarSpeedButton.ParentShowHint = False
          PesquisarSpeedButton.ShowHint = True
          PesquisarSpeedButton.TabOrder = 3
          PesquisarSpeedButton.TabStop = False
          PesquisarSpeedButton.Flat = False
          PesquisarEdit.Left = 117
          PesquisarEdit.Top = 113
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
        object edtSecao: TCampoPesquisa
          Left = 30
          Top = 151
          Hint = 'Pressione a tecla CTRL + F3 para inicar a pesquisa.'
          ParentFont = False
          ParentShowHint = False
          Properties.ReadOnly = False
          ShowHint = True
          Style.BorderStyle = ebsOffice11
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clInfoText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Metropolis'
          Style.TextColor = clWindowText
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Metropolis'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Metropolis'
          TabOrder = 8
          TextHint = 'C'#243'digo'
          Caption = 'Se'#231#227'o'
          PesquisarLabel.Width = 29
          PesquisarLabel.Height = 13
          PesquisarLabel.Caption = 'Se'#231#227'o'
          PesquisarLabel.Transparent = True
          PesquisarSpeedButton.Left = 92
          PesquisarSpeedButton.Top = 151
          PesquisarSpeedButton.Width = 25
          PesquisarSpeedButton.Height = 21
          PesquisarSpeedButton.Hint = 'Pesquisar'
          PesquisarSpeedButton.Caption = '...'
          PesquisarSpeedButton.LookAndFeel.Kind = lfOffice11
          PesquisarSpeedButton.LookAndFeel.NativeStyle = False
          PesquisarSpeedButton.ParentShowHint = False
          PesquisarSpeedButton.ShowHint = True
          PesquisarSpeedButton.TabOrder = 6
          PesquisarSpeedButton.TabStop = False
          PesquisarSpeedButton.Flat = False
          PesquisarEdit.Left = 117
          PesquisarEdit.Top = 151
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
          PesquisarEdit.TabOrder = 7
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
        object edtCategoria: TCampoPesquisa
          Left = 30
          Top = 189
          Hint = 'Pressione a tecla CTRL + F3 para inicar a pesquisa.'
          ParentFont = False
          ParentShowHint = False
          Properties.ReadOnly = False
          ShowHint = True
          Style.BorderStyle = ebsOffice11
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clInfoText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Metropolis'
          Style.TextColor = clWindowText
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Metropolis'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Metropolis'
          TabOrder = 11
          TextHint = 'C'#243'digo'
          Caption = 'Categoria'
          PesquisarLabel.Width = 47
          PesquisarLabel.Height = 13
          PesquisarLabel.Caption = 'Categoria'
          PesquisarLabel.Transparent = True
          PesquisarSpeedButton.Left = 92
          PesquisarSpeedButton.Top = 189
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
          PesquisarEdit.Left = 117
          PesquisarEdit.Top = 189
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
          PropPesquisar.TipoPesquisa = DMPesquisas.psqCategorias
          MultiSelecao = False
          CorCodigo = clWindow
          CorDescricao = clInactiveCaption
          Habilitado = True
          ExibirMsgNaoEncontrado = False
          Width = 60
        end
        object edtMarca: TCampoPesquisa
          Left = 364
          Top = 150
          Hint = 'Pressione a tecla CTRL + F3 para inicar a pesquisa.'
          ParentFont = False
          ParentShowHint = False
          Properties.ReadOnly = False
          ShowHint = True
          Style.BorderStyle = ebsOffice11
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clInfoText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Metropolis'
          Style.TextColor = clWindowText
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Metropolis'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Metropolis'
          TabOrder = 14
          TextHint = 'C'#243'digo'
          Caption = 'Marca'
          PesquisarLabel.Width = 29
          PesquisarLabel.Height = 13
          PesquisarLabel.Caption = 'Marca'
          PesquisarLabel.Transparent = True
          PesquisarSpeedButton.Left = 426
          PesquisarSpeedButton.Top = 150
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
          PesquisarEdit.Left = 451
          PesquisarEdit.Top = 150
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
          PropPesquisar.TipoPesquisa = DMPesquisas.psqMarcas
          MultiSelecao = False
          CorCodigo = clWindow
          CorDescricao = clInactiveCaption
          Habilitado = True
          ExibirMsgNaoEncontrado = False
          Width = 60
        end
        object edtComprador: TCampoPesquisa
          Left = 364
          Top = 188
          Hint = 'Pressione a tecla CTRL + F3 para inicar a pesquisa.'
          ParentFont = False
          ParentShowHint = False
          Properties.ReadOnly = False
          ShowHint = True
          Style.BorderStyle = ebsOffice11
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clInfoText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Metropolis'
          Style.TextColor = clWindowText
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Metropolis'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Metropolis'
          TabOrder = 17
          TextHint = 'C'#243'digo'
          Caption = 'Comprador'
          PesquisarLabel.Width = 53
          PesquisarLabel.Height = 13
          PesquisarLabel.Caption = 'Comprador'
          PesquisarLabel.Transparent = True
          PesquisarSpeedButton.Left = 426
          PesquisarSpeedButton.Top = 188
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
          PesquisarEdit.Left = 451
          PesquisarEdit.Top = 188
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
          PropPesquisar.TipoPesquisa = DMPesquisas.psqCompradores
          MultiSelecao = False
          CorCodigo = clWindow
          CorDescricao = clInactiveCaption
          Habilitado = True
          ExibirMsgNaoEncontrado = False
          Width = 60
        end
        object edtFornecedor: TCampoPesquisa
          Left = 364
          Top = 231
          Hint = 'Pressione a tecla CTRL + F3 para inicar a pesquisa.'
          ParentFont = False
          ParentShowHint = False
          Properties.ReadOnly = False
          ShowHint = True
          Style.BorderStyle = ebsOffice11
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clInfoText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Metropolis'
          Style.TextColor = clWindowText
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Metropolis'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Metropolis'
          TabOrder = 20
          TextHint = 'C'#243'digo'
          Caption = 'Fornecedor'
          PesquisarLabel.Width = 55
          PesquisarLabel.Height = 13
          PesquisarLabel.Caption = 'Fornecedor'
          PesquisarLabel.Transparent = True
          PesquisarSpeedButton.Left = 426
          PesquisarSpeedButton.Top = 231
          PesquisarSpeedButton.Width = 25
          PesquisarSpeedButton.Height = 21
          PesquisarSpeedButton.Hint = 'Pesquisar'
          PesquisarSpeedButton.Caption = '...'
          PesquisarSpeedButton.LookAndFeel.Kind = lfOffice11
          PesquisarSpeedButton.LookAndFeel.NativeStyle = False
          PesquisarSpeedButton.ParentShowHint = False
          PesquisarSpeedButton.ShowHint = True
          PesquisarSpeedButton.TabOrder = 18
          PesquisarSpeedButton.TabStop = False
          PesquisarSpeedButton.Flat = False
          PesquisarEdit.Left = 451
          PesquisarEdit.Top = 231
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
          PesquisarEdit.TabOrder = 19
          PesquisarEdit.ReadOnly = False
          PesquisarEdit.Color = clInactiveCaption
          PesquisarEdit.Width = 200
          PositionLabel = lpAbove
          SpacingLabel = 3
          PositionSpeedButton = lpRight
          SpacingSpeedButton = 2
          PositionEdit = lpRight
          SpacingEdit = 27
          PropPesquisar.TipoPesquisa = DMPesquisas.psqFornecedores
          MultiSelecao = False
          CorCodigo = clWindow
          CorDescricao = clInactiveCaption
          Habilitado = True
          ExibirMsgNaoEncontrado = False
          Width = 60
        end
        object edtSubCategoria: TCampoPesquisa
          Left = 30
          Top = 232
          Hint = 'Pressione a tecla CTRL + F3 para inicar a pesquisa.'
          ParentFont = False
          ParentShowHint = False
          Properties.ReadOnly = False
          ShowHint = True
          Style.BorderStyle = ebsOffice11
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clInfoText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Metropolis'
          Style.TextColor = clWindowText
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Metropolis'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Metropolis'
          TabOrder = 23
          TextHint = 'C'#243'digo'
          Caption = 'Sub. Categoria'
          PesquisarLabel.Width = 72
          PesquisarLabel.Height = 13
          PesquisarLabel.Caption = 'Sub. Categoria'
          PesquisarLabel.Transparent = True
          PesquisarSpeedButton.Left = 92
          PesquisarSpeedButton.Top = 232
          PesquisarSpeedButton.Width = 25
          PesquisarSpeedButton.Height = 21
          PesquisarSpeedButton.Hint = 'Pesquisar'
          PesquisarSpeedButton.Caption = '...'
          PesquisarSpeedButton.LookAndFeel.Kind = lfOffice11
          PesquisarSpeedButton.LookAndFeel.NativeStyle = False
          PesquisarSpeedButton.ParentShowHint = False
          PesquisarSpeedButton.ShowHint = True
          PesquisarSpeedButton.TabOrder = 21
          PesquisarSpeedButton.TabStop = False
          PesquisarSpeedButton.Flat = False
          PesquisarEdit.Left = 117
          PesquisarEdit.Top = 232
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
          PesquisarEdit.TabOrder = 22
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
        object edtProdutoPrincipal: TCampoPesquisa
          Left = 363
          Top = 112
          Hint = 'Pressione a tecla CTRL + F3 para inicar a pesquisa.'
          ParentFont = False
          ParentShowHint = False
          Properties.ReadOnly = False
          ShowHint = True
          Style.BorderStyle = ebsOffice11
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clInfoText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Metropolis'
          Style.TextColor = clWindowText
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Metropolis'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Metropolis'
          TabOrder = 26
          TextHint = 'C'#243'digo'
          Caption = 'Prod. Principal'
          PesquisarLabel.Width = 68
          PesquisarLabel.Height = 13
          PesquisarLabel.Caption = 'Prod. Principal'
          PesquisarLabel.Transparent = True
          PesquisarSpeedButton.Left = 425
          PesquisarSpeedButton.Top = 112
          PesquisarSpeedButton.Width = 25
          PesquisarSpeedButton.Height = 21
          PesquisarSpeedButton.Hint = 'Pesquisar'
          PesquisarSpeedButton.Caption = '...'
          PesquisarSpeedButton.LookAndFeel.Kind = lfOffice11
          PesquisarSpeedButton.LookAndFeel.NativeStyle = False
          PesquisarSpeedButton.ParentShowHint = False
          PesquisarSpeedButton.ShowHint = True
          PesquisarSpeedButton.TabOrder = 24
          PesquisarSpeedButton.TabStop = False
          PesquisarSpeedButton.Flat = False
          PesquisarEdit.Left = 450
          PesquisarEdit.Top = 112
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
          PesquisarEdit.TabOrder = 25
          PesquisarEdit.ReadOnly = False
          PesquisarEdit.Color = clInactiveCaption
          PesquisarEdit.Width = 200
          PositionLabel = lpAbove
          SpacingLabel = 3
          PositionSpeedButton = lpRight
          SpacingSpeedButton = 2
          PositionEdit = lpRight
          SpacingEdit = 27
          PropPesquisar.TipoPesquisa = DMPesquisas.psqProdutoPrincipal
          MultiSelecao = False
          CorCodigo = clWindow
          CorDescricao = clInactiveCaption
          Habilitado = True
          ExibirMsgNaoEncontrado = False
          Width = 60
        end
        object cbMenorEmbalagem: TcxCheckBox
          Left = 30
          Top = 267
          Caption = 'Exibir apenas a menor embalagem'
          State = cbsChecked
          TabOrder = 27
          Transparent = True
        end
        object gbPeriodoEntrada: TcxGroupBox
          Left = 362
          Top = 271
          Caption = 'Periodo da '#250'ltima entrada'
          Style.LookAndFeel.SkinName = 'Metropolis'
          StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
          StyleFocused.LookAndFeel.SkinName = 'Metropolis'
          StyleHot.LookAndFeel.SkinName = 'Metropolis'
          TabOrder = 28
          Height = 77
          Width = 288
          object dtInicialEntrada: TcxDateEdit
            Left = 11
            Top = 19
            TabOrder = 0
            Width = 121
          end
          object dtFinalEntrada: TcxDateEdit
            Left = 147
            Top = 19
            TabOrder = 1
            Width = 121
          end
          object cbAlteracaoPrecoCusto: TcxCheckBox
            Left = 11
            Top = 44
            Caption = 'Com altera'#231#227'o no pre'#231'o de custo'
            TabOrder = 2
            Transparent = True
          end
        end
        object rbForaDeLinha: TcxRadioGroup
          Left = 31
          Top = 315
          Caption = 'Produtos fora de linha'
          Properties.Items = <
            item
              Caption = 'Incluir fora de linha'
              Value = 'IFL'
            end
            item
              Caption = 'N'#227'o incluir fora de linha'
              Value = 'NFL'
            end
            item
              Caption = 'Somente fora de linha'
              Value = 'SFL'
            end>
          ItemIndex = 1
          Style.LookAndFeel.SkinName = 'Metropolis'
          StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
          StyleFocused.LookAndFeel.SkinName = 'Metropolis'
          StyleHot.LookAndFeel.SkinName = 'Metropolis'
          TabOrder = 29
          Height = 79
          Width = 288
        end
        object cmbComparacaoEstoque: TcxComboBox
          Left = 505
          Top = 367
          Enabled = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            '>='
            '>'
            '<'
            '<='
            '<>')
          TabOrder = 30
          Text = '>='
          Width = 45
        end
        object LBLeSTOQUE: TcxLabel
          Left = 556
          Top = 369
          Caption = 'que'
          Transparent = True
        end
        object cbQuantidadeEstoque: TcxCheckBox
          Left = 364
          Top = 367
          Caption = 'Quantidade de estoque'
          TabOrder = 32
          Transparent = True
          OnClick = cbQuantidadeEstoqueClick
        end
        object edtQuantidadeEstoque: TcxCurrencyEdit
          Left = 584
          Top = 367
          EditValue = 0.000000000000000000
          Enabled = False
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '0'
          Properties.MaxValue = 999999.000000000000000000
          Properties.Nullstring = '0'
          TabOrder = 33
          Width = 69
        end
        object cxLabel3: TcxLabel
          Left = 364
          Top = 15
          Caption = 'Descri'#231#227'o'
          Transparent = True
        end
        object edtDescricaoProduto: TcxTextEdit
          Left = 362
          Top = 30
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 35
          Width = 290
        end
        object lblFilial: TcxLabel
          Left = 31
          Top = 14
          Caption = 'Filial'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cmbFilialPrecificacao: TcxLookupComboBox
          Left = 31
          Top = 30
          ParentFont = False
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              Caption = 'C'#243'digo'
              FieldName = 'CODIGO'
            end
            item
              Caption = 'Raz'#227'o'
              FieldName = 'RAZAOSOCIAL'
            end>
          Properties.ListSource = dsFiliais
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 37
          Width = 288
        end
        object cbEmbalagensAtivas: TcxCheckBox
          Left = 30
          Top = 290
          Caption = 'Exibir apenas a embalagens ativas'
          State = cbsChecked
          TabOrder = 38
          Transparent = True
        end
        object cxLabel7: TcxLabel
          Left = 362
          Top = 56
          Caption = 'C'#243'd. Barras'
          Transparent = True
        end
        object edtCodauxiliar: TcxTextEdit
          Left = 362
          Top = 71
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.OnEditValueChanged = edtCodauxiliarPropertiesEditValueChanged
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 40
          Width = 288
        end
      end
    end
  end
  object ActList: TActionList
    Left = 656
    object actPesquisar: TAction
      Caption = 'Pesquisar (F3)'
      ShortCut = 114
      OnExecute = actPesquisarExecute
    end
    object actImportarLista: TAction
      Caption = 'Importar Lista (F2)'
      OnExecute = actImportarListaExecute
    end
    object actFecharf1: TAction
      Caption = 'actFecharf1'
      ShortCut = 112
      OnExecute = actFecharf1Execute
    end
    object actFecharEsc: TAction
      Caption = 'actFecharEsc'
      ShortCut = 27
      OnExecute = actFecharEscExecute
    end
  end
  object dataEntrada: TDatasPadroes
    cxDateEditInicial = dtInicialEntrada
    cxDateEditFinal = dtFinalEntrada
    AnosFiscais.Anos = []
    DataPadrao = dpNenhum
    QtdeUltimosDias = 15
    Left = 600
    Top = 1
  end
  object dsFiliais: TUniDataSource
    DataSet = qrFiliais
    Left = 544
  end
  object qrFiliais: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT DISTINCT PCFILIAL.CODIGO CODIGO, RAZAOSOCIAL  '
      '  FROM PCLIB, PCFILIAL                        '
      ' WHERE PCFILIAL.CODIGO = PCLIB.CODIGOA        '
      '       AND PCFILIAL.CODIGO <> ('#39'99'#39')        '
      '       AND PCLIB.CODFUNC = :CODFUNC   '
      
        '       AND PCFILIAL.CODIGO IN (SELECT DISTINCT CODFILIAL FROM PC' +
        'CAIXA WHERE PCCAIXA.DTFIM IS NULL)        '
      ' ORDER BY PCFILIAL.CODIGO                     ')
    Left = 488
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODFUNC'
        Value = nil
      end>
  end
  object qrCodfilialPrinc: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      
        'SELECT CODFILIALPRINC FROM I9GRUPOFILIALC WHERE CODGRUPO = :CODG' +
        'RUPO')
    Left = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODGRUPO'
        Value = nil
      end>
  end
  object dpPeriodo: TDatasPadroes
    AnosFiscais.Anos = []
    DataPadrao = dpNenhum
    QtdeUltimosDias = 15
    Left = 652
    Top = 56
  end
end
