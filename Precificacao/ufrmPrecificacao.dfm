object frmPrecificacao: TfrmPrecificacao
  Left = 0
  Top = 0
  Caption = 'M'#243'dulo de Precifica'#231#227'o'
  ClientHeight = 624
  ClientWidth = 1033
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 1033
    Height = 121
    Align = alTop
    TabOrder = 0
    object btnFiltros: TcxButton
      AlignWithMargins = True
      Left = 6
      Top = 8
      Width = 200
      Height = 32
      Margins.Left = 5
      Margins.Top = 7
      Margins.Right = 5
      Margins.Bottom = 7
      Action = actFiltrosF1
      Caption = 'Filtros da Rotina (F1)'
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
      TabOrder = 0
    end
    object btnAplicarPrecoSugConcorrencia: TcxButton
      AlignWithMargins = True
      Left = 412
      Top = 8
      Width = 200
      Height = 32
      Margins.Left = 5
      Margins.Top = 7
      Margins.Right = 5
      Margins.Bottom = 7
      Action = actAplicarPrecoSugArredondadoF4
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000090000
        000D0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
        000F0000000F00000010000000100000000F0000000A000000021D5A42C0287D
        5AFF277D5AFF277C5AFF277C59FF277B59FF277B58FF277A58FF267A58FF2678
        57FF267A56FF267856FF267755FF257756FF1B563DC1000000092B825FFF53C8
        A2FF51C7A0FF50C7A0FF4EC69FFF4DC59DFF4CC59DFF4AC49BFF49C39BFF47C3
        99FF45C298FF45C198FF43C096FF42C095FF277B59FF0000000D2C8664FF5DCC
        AAFF43C398FF42C299FF42C298FF43C298FF65CFADFF74D5B6FF4CC59DFF40C0
        95FF3EC095FF3EBF94FF3DBF94FF4BC49CFF297F5CFF0000000E2F8B68FF67D1
        B0FF48C69EFF48C59CFF47C59CFF5FCDABFF25825DFF00673BFF51BA96FF44C3
        9AFF43C399FF43C298FF42C298FF54C9A4FF2B8360FF0000000D31906DFF71D5
        B8FF4DC9A3FF4DC9A1FF60CFADFF3B9372FF87AF9DFFB1CFC1FF26875FFF53CA
        A5FF48C69EFF47C59DFF47C59DFF5DCEABFF2D8865FF0000000C339671FF7ADA
        BFFF52CCA7FF60D1AFFF4BA183FF699782FFF8F1EEFFF9F3EEFF357F5DFF5CBD
        9DFF4EC9A2FF4CC9A2FF4CC8A1FF67D2B2FF2F8C69FF0000000B359A76FF83DE
        C6FF59D0ADFF5AB094FF4F826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1C74
        4FFF69D5B4FF53CDA7FF52CCA6FF72D7B9FF32926EFF0000000B39A07CFF8CE2
        CBFF5FD4B3FF0D6742FFD2D2CBFF6A8F77FF136A43FF73967EFFF1E8E3FF72A2
        8BFF4CA384FF6AD9BAFF5AD2AFFF7BDBC0FF339773FF0000000A3AA681FF97E9
        D5FF69DEBFFF52BC9DFF0B6942FF389B79FF66DABAFF349773FF73967EFFF0EA
        E7FF4F886CFF60B89BFF67DABAFF87E2CAFF359C78FF000000093FAD88FF9FEC
        DAFF6DE1C3FF6DE1C3FF6DE0C2FF6CDFC1FF6BE0C1FF6BDFC0FF2C8966FF698E
        76FFE6E1DCFF176B47FF5FD1B2FF90E7D1FF3CA481FF0000000842B28DFFA5EE
        DDFF70E4C7FF70E4C6FF70E3C6FF6FE3C5FF6FE2C5FF6EE2C4FF6EE2C4FF3C9E
        7DFF1F6D4AFF2D8965FF6CE0C2FF97EAD6FF3DAA86FF0000000744B691FFAAEF
        E0FF73E6C9FF73E6C9FF72E5C9FF72E5C8FF71E5C8FF71E5C8FF71E4C7FF71E4
        C7FF64D3B5FF6DDFC2FF6FE3C6FF9EECDAFF41AF8BFF0000000746B994FFAEF1
        E2FF74E8CBFF74E7CBFF74E7CBFF74E7CAFF74E6CAFF73E6CAFF73E6CAFF73E6
        C9FF73E5C9FF72E5C9FF72E5C8FFA4EEDDFF42B38EFF0000000647BC97FFC5F4
        EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4
        EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFF44B792FF00000005348B70BF47BC
        97FF47BC97FF47BC97FF47BC97FF47BC97FF47BC97FF47BC97FF47BB97FF47BB
        97FF47BB96FF46BB96FF47BA95FF45BA94FF338A6EC000000003}
      TabOrder = 1
    end
    object cxButton1: TcxButton
      AlignWithMargins = True
      Left = 209
      Top = 8
      Width = 200
      Height = 32
      Margins.Left = 5
      Margins.Top = 7
      Margins.Right = 5
      Margins.Bottom = 7
      Action = actAplicaSugConcorrenteF3
      Caption = 'Aplicar Pr. Sug. Concorr'#234'ncia (F3)'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000090000
        000D0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
        000F0000000F00000010000000100000000F0000000A000000021D5A42C0287D
        5AFF277D5AFF277C5AFF277C59FF277B59FF277B58FF277A58FF267A58FF2678
        57FF267A56FF267856FF267755FF257756FF1B563DC1000000092B825FFF53C8
        A2FF51C7A0FF50C7A0FF4EC69FFF4DC59DFF4CC59DFF4AC49BFF49C39BFF47C3
        99FF45C298FF45C198FF43C096FF42C095FF277B59FF0000000D2C8664FF5DCC
        AAFF43C398FF42C299FF42C298FF43C298FF65CFADFF74D5B6FF4CC59DFF40C0
        95FF3EC095FF3EBF94FF3DBF94FF4BC49CFF297F5CFF0000000E2F8B68FF67D1
        B0FF48C69EFF48C59CFF47C59CFF5FCDABFF25825DFF00673BFF51BA96FF44C3
        9AFF43C399FF43C298FF42C298FF54C9A4FF2B8360FF0000000D31906DFF71D5
        B8FF4DC9A3FF4DC9A1FF60CFADFF3B9372FF87AF9DFFB1CFC1FF26875FFF53CA
        A5FF48C69EFF47C59DFF47C59DFF5DCEABFF2D8865FF0000000C339671FF7ADA
        BFFF52CCA7FF60D1AFFF4BA183FF699782FFF8F1EEFFF9F3EEFF357F5DFF5CBD
        9DFF4EC9A2FF4CC9A2FF4CC8A1FF67D2B2FF2F8C69FF0000000B359A76FF83DE
        C6FF59D0ADFF5AB094FF4F826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1C74
        4FFF69D5B4FF53CDA7FF52CCA6FF72D7B9FF32926EFF0000000B39A07CFF8CE2
        CBFF5FD4B3FF0D6742FFD2D2CBFF6A8F77FF136A43FF73967EFFF1E8E3FF72A2
        8BFF4CA384FF6AD9BAFF5AD2AFFF7BDBC0FF339773FF0000000A3AA681FF97E9
        D5FF69DEBFFF52BC9DFF0B6942FF389B79FF66DABAFF349773FF73967EFFF0EA
        E7FF4F886CFF60B89BFF67DABAFF87E2CAFF359C78FF000000093FAD88FF9FEC
        DAFF6DE1C3FF6DE1C3FF6DE0C2FF6CDFC1FF6BE0C1FF6BDFC0FF2C8966FF698E
        76FFE6E1DCFF176B47FF5FD1B2FF90E7D1FF3CA481FF0000000842B28DFFA5EE
        DDFF70E4C7FF70E4C6FF70E3C6FF6FE3C5FF6FE2C5FF6EE2C4FF6EE2C4FF3C9E
        7DFF1F6D4AFF2D8965FF6CE0C2FF97EAD6FF3DAA86FF0000000744B691FFAAEF
        E0FF73E6C9FF73E6C9FF72E5C9FF72E5C8FF71E5C8FF71E5C8FF71E4C7FF71E4
        C7FF64D3B5FF6DDFC2FF6FE3C6FF9EECDAFF41AF8BFF0000000746B994FFAEF1
        E2FF74E8CBFF74E7CBFF74E7CBFF74E7CAFF74E6CAFF73E6CAFF73E6CAFF73E6
        C9FF73E5C9FF72E5C9FF72E5C8FFA4EEDDFF42B38EFF0000000647BC97FFC5F4
        EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4
        EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFF44B792FF00000005348B70BF47BC
        97FF47BC97FF47BC97FF47BC97FF47BC97FF47BC97FF47BC97FF47BB97FF47BB
        97FF47BB96FF46BB96FF47BA95FF45BA94FF338A6EC000000003}
      TabOrder = 2
    end
    object cxButton2: TcxButton
      AlignWithMargins = True
      Left = 6
      Top = 42
      Width = 200
      Height = 32
      Margins.Left = 5
      Margins.Top = 7
      Margins.Right = 5
      Margins.Bottom = 7
      Action = actAtualizarGridF5
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000002000000070000000700000004000000070000000D0000000F0000
        000F0000000C0000000800000002000000010000000000000000000000000000
        000100000009072C1B95143829950000000E112F227D184732D21E5B40FF1E5C
        41FF184A34D3102F22910204031C000000050000000100000000000000000000
        0004020C0837146744FB2A7B5CFB06100C390C21185D37886AFF39CF9DFF24CA
        92FF23B481FF23966DFF22674CE70A1C14570000000800000001000000010000
        000C0C3E28BF1EB07DFF27B786FF1E523DBF000000161F533FBF5FC6A6FF6FE5
        C2FF59E0B7FF3BDAA8FF28B586FF2E8867FF0D251C650000000600000005051B
        125C1D805AFF28D59EFF28D59EFF2F9671FF0E241B5D07120D362F7D60FA3A8B
        6EFF53AB8EFF65CEADFF42DDADFF2BBA8BFF308062F6040A08220001010F1454
        38E026C592FF2AD7A0FF29D8A1FF2ACC98FF2B7357E101030216020504150409
        072014362A7545987CF95ECFAEFF2DDAA5FF3CAC88FF194434900B2A1C77479D
        7FFF88EDD0FF34DBA8FF2BDAA5FF83ECCFFF60B89CFF19413284000000060000
        000100000007194133815CB699FF30DDA9FF38C79BFF2A7258D4317E61EF3488
        6AFF358A6BFF38D7A7FF30DCA8FF419A7BFF378F70FF36896CF40205040F0000
        000000000002040A081E3F9475FF61E8C2FF50DFB6FF358C6DF2000000070000
        000F1D6749F24DDAB1FF43E2B3FF3F9675FF0205041900000007000000020000
        000000000001040B0820398E6DFF8DF1D8FF98EDD8FF3B997AFA000000000000
        00061E6047D46ECEB2FF8BF1D7FF59B092FF1237287600000005000000010000
        0001000000061138268157A98BFF9AF4DEFF98E1CFFF34856AD3000000000000
        00031642328C6FB8A0FFAAF6E5FF84DFC7FF3D8E6EF90E322275030C0823030C
        08230E3523833A8767FB82D3BCFFB4F9EAFF81CFBAFF2359478A000000000000
        0001030A0719419477F59ADAC9FFB5F8EAFF85D4BDFF54A386FF2D7B59FF2D7B
        59FF56A386FF94E5D0FFBCFAEDFFA5E5D5FF55B295F5050D0A18000000000000
        000000000002123026575CB096FFA6E5D5FFC7FCF2FFBEFBEEFFB8F9EBFFBAF9
        ECFFC1FBEFFFCBFDF3FFAAE7D9FF69C6AAFF173A2F5600000002000000000000
        000000000000000000020F29204450A78CE487D4BFFFB1EADCFFCEF9F1FFCEF9
        F1FFB2EADDFF8AD7C2FF53AB90E3122E26440000000200000000000000000000
        000000000000000000000000000103090710255B4A82399075C849B795FC49B8
        96FC3A9076C8255D4C810409070F000000010000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000020000
        0002000000020000000100000000000000000000000000000000}
      TabOrder = 3
    end
    object btnAplicarPrecoFuturo: TcxButton
      AlignWithMargins = True
      Left = 209
      Top = 42
      Width = 200
      Height = 32
      Margins.Left = 5
      Margins.Top = 7
      Margins.Right = 5
      Margins.Bottom = 7
      Action = aplicarPrecoFuturoF6
      Caption = 'Aplicar Pre'#231'o Futuro (F6)'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000090000
        000D0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
        000F0000000F00000010000000100000000F0000000A000000021D5A42C0287D
        5AFF277D5AFF277C5AFF277C59FF277B59FF277B58FF277A58FF267A58FF2678
        57FF267A56FF267856FF267755FF257756FF1B563DC1000000092B825FFF53C8
        A2FF51C7A0FF50C7A0FF4EC69FFF4DC59DFF4CC59DFF4AC49BFF49C39BFF47C3
        99FF45C298FF45C198FF43C096FF42C095FF277B59FF0000000D2C8664FF5DCC
        AAFF43C398FF42C299FF42C298FF43C298FF65CFADFF74D5B6FF4CC59DFF40C0
        95FF3EC095FF3EBF94FF3DBF94FF4BC49CFF297F5CFF0000000E2F8B68FF67D1
        B0FF48C69EFF48C59CFF47C59CFF5FCDABFF25825DFF00673BFF51BA96FF44C3
        9AFF43C399FF43C298FF42C298FF54C9A4FF2B8360FF0000000D31906DFF71D5
        B8FF4DC9A3FF4DC9A1FF60CFADFF3B9372FF87AF9DFFB1CFC1FF26875FFF53CA
        A5FF48C69EFF47C59DFF47C59DFF5DCEABFF2D8865FF0000000C339671FF7ADA
        BFFF52CCA7FF60D1AFFF4BA183FF699782FFF8F1EEFFF9F3EEFF357F5DFF5CBD
        9DFF4EC9A2FF4CC9A2FF4CC8A1FF67D2B2FF2F8C69FF0000000B359A76FF83DE
        C6FF59D0ADFF5AB094FF4F826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1C74
        4FFF69D5B4FF53CDA7FF52CCA6FF72D7B9FF32926EFF0000000B39A07CFF8CE2
        CBFF5FD4B3FF0D6742FFD2D2CBFF6A8F77FF136A43FF73967EFFF1E8E3FF72A2
        8BFF4CA384FF6AD9BAFF5AD2AFFF7BDBC0FF339773FF0000000A3AA681FF97E9
        D5FF69DEBFFF52BC9DFF0B6942FF389B79FF66DABAFF349773FF73967EFFF0EA
        E7FF4F886CFF60B89BFF67DABAFF87E2CAFF359C78FF000000093FAD88FF9FEC
        DAFF6DE1C3FF6DE1C3FF6DE0C2FF6CDFC1FF6BE0C1FF6BDFC0FF2C8966FF698E
        76FFE6E1DCFF176B47FF5FD1B2FF90E7D1FF3CA481FF0000000842B28DFFA5EE
        DDFF70E4C7FF70E4C6FF70E3C6FF6FE3C5FF6FE2C5FF6EE2C4FF6EE2C4FF3C9E
        7DFF1F6D4AFF2D8965FF6CE0C2FF97EAD6FF3DAA86FF0000000744B691FFAAEF
        E0FF73E6C9FF73E6C9FF72E5C9FF72E5C8FF71E5C8FF71E5C8FF71E4C7FF71E4
        C7FF64D3B5FF6DDFC2FF6FE3C6FF9EECDAFF41AF8BFF0000000746B994FFAEF1
        E2FF74E8CBFF74E7CBFF74E7CBFF74E7CAFF74E6CAFF73E6CAFF73E6CAFF73E6
        C9FF73E5C9FF72E5C9FF72E5C8FFA4EEDDFF42B38EFF0000000647BC97FFC5F4
        EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4
        EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFF44B792FF00000005348B70BF47BC
        97FF47BC97FF47BC97FF47BC97FF47BC97FF47BC97FF47BC97FF47BB97FF47BB
        97FF47BB96FF46BB96FF47BA95FF45BA94FF338A6EC000000003}
      TabOrder = 4
    end
    object btnAplicaVariacaoDeVenda: TcxButton
      AlignWithMargins = True
      Left = 412
      Top = 42
      Width = 200
      Height = 32
      Margins.Left = 5
      Margins.Top = 7
      Margins.Right = 5
      Margins.Bottom = 7
      Action = actAplicarVariacaoNoPrecoDeVendaF7
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000090000
        000D0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
        000F0000000F00000010000000100000000F0000000A000000021D5A42C0287D
        5AFF277D5AFF277C5AFF277C59FF277B59FF277B58FF277A58FF267A58FF2678
        57FF267A56FF267856FF267755FF257756FF1B563DC1000000092B825FFF53C8
        A2FF51C7A0FF50C7A0FF4EC69FFF4DC59DFF4CC59DFF4AC49BFF49C39BFF47C3
        99FF45C298FF45C198FF43C096FF42C095FF277B59FF0000000D2C8664FF5DCC
        AAFF43C398FF42C299FF42C298FF43C298FF65CFADFF74D5B6FF4CC59DFF40C0
        95FF3EC095FF3EBF94FF3DBF94FF4BC49CFF297F5CFF0000000E2F8B68FF67D1
        B0FF48C69EFF48C59CFF47C59CFF5FCDABFF25825DFF00673BFF51BA96FF44C3
        9AFF43C399FF43C298FF42C298FF54C9A4FF2B8360FF0000000D31906DFF71D5
        B8FF4DC9A3FF4DC9A1FF60CFADFF3B9372FF87AF9DFFB1CFC1FF26875FFF53CA
        A5FF48C69EFF47C59DFF47C59DFF5DCEABFF2D8865FF0000000C339671FF7ADA
        BFFF52CCA7FF60D1AFFF4BA183FF699782FFF8F1EEFFF9F3EEFF357F5DFF5CBD
        9DFF4EC9A2FF4CC9A2FF4CC8A1FF67D2B2FF2F8C69FF0000000B359A76FF83DE
        C6FF59D0ADFF5AB094FF4F826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1C74
        4FFF69D5B4FF53CDA7FF52CCA6FF72D7B9FF32926EFF0000000B39A07CFF8CE2
        CBFF5FD4B3FF0D6742FFD2D2CBFF6A8F77FF136A43FF73967EFFF1E8E3FF72A2
        8BFF4CA384FF6AD9BAFF5AD2AFFF7BDBC0FF339773FF0000000A3AA681FF97E9
        D5FF69DEBFFF52BC9DFF0B6942FF389B79FF66DABAFF349773FF73967EFFF0EA
        E7FF4F886CFF60B89BFF67DABAFF87E2CAFF359C78FF000000093FAD88FF9FEC
        DAFF6DE1C3FF6DE1C3FF6DE0C2FF6CDFC1FF6BE0C1FF6BDFC0FF2C8966FF698E
        76FFE6E1DCFF176B47FF5FD1B2FF90E7D1FF3CA481FF0000000842B28DFFA5EE
        DDFF70E4C7FF70E4C6FF70E3C6FF6FE3C5FF6FE2C5FF6EE2C4FF6EE2C4FF3C9E
        7DFF1F6D4AFF2D8965FF6CE0C2FF97EAD6FF3DAA86FF0000000744B691FFAAEF
        E0FF73E6C9FF73E6C9FF72E5C9FF72E5C8FF71E5C8FF71E5C8FF71E4C7FF71E4
        C7FF64D3B5FF6DDFC2FF6FE3C6FF9EECDAFF41AF8BFF0000000746B994FFAEF1
        E2FF74E8CBFF74E7CBFF74E7CBFF74E7CAFF74E6CAFF73E6CAFF73E6CAFF73E6
        C9FF73E5C9FF72E5C9FF72E5C8FFA4EEDDFF42B38EFF0000000647BC97FFC5F4
        EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4
        EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFF44B792FF00000005348B70BF47BC
        97FF47BC97FF47BC97FF47BC97FF47BC97FF47BC97FF47BC97FF47BB97FF47BB
        97FF47BB96FF46BB96FF47BA95FF45BA94FF338A6EC000000003}
      TabOrder = 5
    end
    object groupFiliais: TcxGroupBox
      Left = 620
      Top = 8
      Caption = 'Replicar autom'#225'tico para as Filiais'
      TabOrder = 6
      Transparent = True
      Height = 66
      Width = 324
      object ccbFilial: TcxCheckComboBox
        Left = 15
        Top = 24
        Properties.Delimiter = ','
        Properties.EmptySelectionText = 'Nenhuma filial selecionada'
        Properties.EditValueFormat = cvfStatesString
        Properties.Items = <>
        TabOrder = 0
        Width = 290
      end
    end
    object btnAplicarCustoMedio: TcxButton
      AlignWithMargins = True
      Left = 6
      Top = 76
      Width = 200
      Height = 32
      Margins.Left = 5
      Margins.Top = 7
      Margins.Right = 5
      Margins.Bottom = 7
      Action = actAplicarCustoMedioF8
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000090000
        000D0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
        000F0000000F00000010000000100000000F0000000A000000021D5A42C0287D
        5AFF277D5AFF277C5AFF277C59FF277B59FF277B58FF277A58FF267A58FF2678
        57FF267A56FF267856FF267755FF257756FF1B563DC1000000092B825FFF53C8
        A2FF51C7A0FF50C7A0FF4EC69FFF4DC59DFF4CC59DFF4AC49BFF49C39BFF47C3
        99FF45C298FF45C198FF43C096FF42C095FF277B59FF0000000D2C8664FF5DCC
        AAFF43C398FF42C299FF42C298FF43C298FF65CFADFF74D5B6FF4CC59DFF40C0
        95FF3EC095FF3EBF94FF3DBF94FF4BC49CFF297F5CFF0000000E2F8B68FF67D1
        B0FF48C69EFF48C59CFF47C59CFF5FCDABFF25825DFF00673BFF51BA96FF44C3
        9AFF43C399FF43C298FF42C298FF54C9A4FF2B8360FF0000000D31906DFF71D5
        B8FF4DC9A3FF4DC9A1FF60CFADFF3B9372FF87AF9DFFB1CFC1FF26875FFF53CA
        A5FF48C69EFF47C59DFF47C59DFF5DCEABFF2D8865FF0000000C339671FF7ADA
        BFFF52CCA7FF60D1AFFF4BA183FF699782FFF8F1EEFFF9F3EEFF357F5DFF5CBD
        9DFF4EC9A2FF4CC9A2FF4CC8A1FF67D2B2FF2F8C69FF0000000B359A76FF83DE
        C6FF59D0ADFF5AB094FF4F826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1C74
        4FFF69D5B4FF53CDA7FF52CCA6FF72D7B9FF32926EFF0000000B39A07CFF8CE2
        CBFF5FD4B3FF0D6742FFD2D2CBFF6A8F77FF136A43FF73967EFFF1E8E3FF72A2
        8BFF4CA384FF6AD9BAFF5AD2AFFF7BDBC0FF339773FF0000000A3AA681FF97E9
        D5FF69DEBFFF52BC9DFF0B6942FF389B79FF66DABAFF349773FF73967EFFF0EA
        E7FF4F886CFF60B89BFF67DABAFF87E2CAFF359C78FF000000093FAD88FF9FEC
        DAFF6DE1C3FF6DE1C3FF6DE0C2FF6CDFC1FF6BE0C1FF6BDFC0FF2C8966FF698E
        76FFE6E1DCFF176B47FF5FD1B2FF90E7D1FF3CA481FF0000000842B28DFFA5EE
        DDFF70E4C7FF70E4C6FF70E3C6FF6FE3C5FF6FE2C5FF6EE2C4FF6EE2C4FF3C9E
        7DFF1F6D4AFF2D8965FF6CE0C2FF97EAD6FF3DAA86FF0000000744B691FFAAEF
        E0FF73E6C9FF73E6C9FF72E5C9FF72E5C8FF71E5C8FF71E5C8FF71E4C7FF71E4
        C7FF64D3B5FF6DDFC2FF6FE3C6FF9EECDAFF41AF8BFF0000000746B994FFAEF1
        E2FF74E8CBFF74E7CBFF74E7CBFF74E7CAFF74E6CAFF73E6CAFF73E6CAFF73E6
        C9FF73E5C9FF72E5C9FF72E5C8FFA4EEDDFF42B38EFF0000000647BC97FFC5F4
        EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4
        EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFF44B792FF00000005348B70BF47BC
        97FF47BC97FF47BC97FF47BC97FF47BC97FF47BC97FF47BC97FF47BB97FF47BB
        97FF47BB96FF46BB96FF47BA95FF45BA94FF338A6EC000000003}
      TabOrder = 7
    end
    object pnlCluster: TPanel
      Left = 618
      Top = 79
      Width = 347
      Height = 34
      TabOrder = 8
      Visible = False
      DesignSize = (
        347
        34)
      object lblClusterSelecionado: TcxLabel
        Left = 2
        Top = -1
        Anchors = [akLeft]
        AutoSize = False
        Caption = 'Cluster selecionado, imposs'#237'vel alterar filiais de replica'#231#227'o.'
        ParentColor = False
        ParentFont = False
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
        Height = 17
        Width = 347
      end
      object cxLabel1: TcxLabel
        Left = 25
        Top = 14
        Caption = 'Produtos com custo diferente no Cluster.'
        Transparent = True
      end
      object Panel1: TPanel
        Left = 4
        Top = 15
        Width = 15
        Height = 15
        Color = clPurple
        ParentBackground = False
        TabOrder = 2
      end
    end
    object cbArredondarAutomaticamente: TcxCheckBox
      Left = 226
      Top = 84
      Caption = 'Arredondar Pre'#231'os automaticamente'
      State = cbsChecked
      TabOrder = 9
      Transparent = True
    end
  end
  object cxgPrecificacao: TcxGrid
    Left = 0
    Top = 121
    Width = 1033
    Height = 480
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    object tblEmbalagensAbas: TcxGridDBBandedTableView
      PopupMenu = popupGridPrecificacao
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = tblEmbalagensAbasCellDblClick
      OnCustomDrawCell = tblEmbalagensAbasCustomDrawCell
      DataController.DataSource = DMPrecificacao.dsEmbalagens
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = tblEmbalagensAbasDESCRICAO
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Clique aqui para definir um filtro'
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsCustomize.ColumnHiding = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.BandHiding = True
      OptionsCustomize.BandsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = 'Sem dados a serem exibidos'
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'Dados do Produto'
          FixedKind = fkLeft
          Width = 302
        end
        item
          Caption = 'Geral'
          FixedKind = fkLeft
          Width = 105
        end
        item
          Caption = 'Varejo'
        end
        item
          Caption = 'Atacado'
        end
        item
          Caption = 'CRM'
        end
        item
          Caption = 'Fator Atacado'
          Width = 94
        end>
      object tblEmbalagensAbasCODFILIAL: TcxGridDBBandedColumn
        Caption = 'C'#243'd. Filial'
        DataBinding.FieldName = 'CODFILIAL'
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Width = 33
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasCODPROD: TcxGridDBBandedColumn
        Caption = 'C'#243'd.Produto'
        DataBinding.FieldName = 'CODPROD'
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Width = 43
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasDESCRICAO: TcxGridDBBandedColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'DESCRICAO'
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Width = 135
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasCODAUXILIAR: TcxGridDBBandedColumn
        Caption = 'C'#243'd.Barras'
        DataBinding.FieldName = 'CODAUXILIAR'
        Visible = False
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasQTESTGER: TcxGridDBBandedColumn
        Caption = 'Qt. Estoque'
        DataBinding.FieldName = 'QTESTGER'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasPRECOFIXO: TcxGridDBBandedColumn
        Caption = 'Pr. Fixo'
        DataBinding.FieldName = 'PRECOFIXO'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 59
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasCUSTODIF: TcxGridDBBandedColumn
        Caption = 'Custo Dif.'
        DataBinding.FieldName = 'CUSTODIF'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Options.Editing = False
        Width = 31
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasCODFUNCALTPTABELA: TcxGridDBBandedColumn
        Caption = 'Cod. Func. Alt. Pr. Futuro'
        DataBinding.FieldName = 'CODFUNCALTPTABELA'
        Visible = False
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasCODPRODPRINC: TcxGridDBBandedColumn
        Caption = 'C'#243'd.Prod.Princ'
        DataBinding.FieldName = 'CODPRODPRINC'
        Visible = False
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Width = 38
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasQTUNIT: TcxGridDBBandedColumn
        Caption = 'Qt.Unit'
        DataBinding.FieldName = 'QTUNIT'
        Visible = False
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Width = 124
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasEMBALAGEM: TcxGridDBBandedColumn
        Caption = 'Embalagem'
        DataBinding.FieldName = 'EMBALAGEM'
        Visible = False
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasCUSTOFIN: TcxGridDBBandedColumn
        Caption = 'Custo. Fin'
        DataBinding.FieldName = 'CUSTOFIN'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle14
        Width = 40
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasCUSTOMEDIOFAMILIA: TcxGridDBBandedColumn
        Caption = 'Custo M'#233'dio Fam.'
        DataBinding.FieldName = 'CUSTOMEDIOFAMILIA'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;- ,0.00'
        Visible = False
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Width = 219
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasSENSIBILIDADE: TcxGridDBBandedColumn
        Caption = 'Sensibilidade'
        DataBinding.FieldName = 'SENSIBILIDADE'
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Width = 34
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasPOSRANKING: TcxGridDBBandedColumn
        Caption = 'Pos. Ranking'
        DataBinding.FieldName = 'POSRANKING'
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Width = 30
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasDATAULTIMACOTACAO: TcxGridDBBandedColumn
        Caption = 'Dt. Ult. Cota'#231#227'o'
        DataBinding.FieldName = 'DATAULTIMACOTACAO'
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Width = 68
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasDTULTENT: TcxGridDBBandedColumn
        Caption = 'Dt. Ult. Ent.'
        DataBinding.FieldName = 'DTULTENT'
        Visible = False
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Width = 180
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasQTULTENT: TcxGridDBBandedColumn
        Caption = 'Qt. Ult Ent'
        DataBinding.FieldName = 'QTULTENT'
        Visible = False
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasMARGEMMINVAREJO: TcxGridDBBandedColumn
        Caption = 'Margem Min.'
        DataBinding.FieldName = 'MARGEMMINVAREJO'
        Styles.Content = DmLogin.cxStyle2
        Width = 55
        Position.BandIndex = 2
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasMARGEMVAREJO: TcxGridDBBandedColumn
        Caption = 'Margem Ideal'
        DataBinding.FieldName = 'MARGEMVAREJO'
        Styles.Content = DmLogin.cxStyle2
        Width = 54
        Position.BandIndex = 2
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasPVENDACONCORRENTE: TcxGridDBBandedColumn
        Caption = 'Pr. Concorrente'
        DataBinding.FieldName = 'PVENDACONCORRENTE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Width = 54
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasPSUGESTAO: TcxGridDBBandedColumn
        Caption = 'Pr. Sug.'
        DataBinding.FieldName = 'PSUGESTAO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Width = 48
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasPSUGESTAO_ARREDONDADO: TcxGridDBBandedColumn
        Caption = 'Pr. Sug. Arrendondado'
        DataBinding.FieldName = 'PSUGESTAO_ARREDONDADO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle14
        Width = 53
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasPTABELA: TcxGridDBBandedColumn
        Caption = 'Pr.Futuro'
        DataBinding.FieldName = 'PTABELA'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        Properties.OnEditValueChanged = tblEmbalagensAbasPTABELAPropertiesEditValueChanged
        Styles.Content = DmLogin.cxStyle14
        Width = 54
        Position.BandIndex = 2
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasMARGEM_FUT_VAR: TcxGridDBBandedColumn
        Caption = 'Marg. Fut. Var.'
        DataBinding.FieldName = 'MARGEM_FUT_VAR'
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Position.BandIndex = 2
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasPATUALVAREJO: TcxGridDBBandedColumn
        Caption = 'Preco. Vigente'
        DataBinding.FieldName = 'PRECO_ATUAL_VAREJO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Position.BandIndex = 2
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasPVENDA: TcxGridDBBandedColumn
        Caption = 'Pr.Venda'
        DataBinding.FieldName = 'PVENDA'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Width = 51
        Position.BandIndex = 2
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasDIFSUGESTAO: TcxGridDBBandedColumn
        Caption = '% Dif. Suger.'
        DataBinding.FieldName = 'DIFSUGESTAO'
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Width = 51
        Position.BandIndex = 2
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasMARGEM_ATUAL_VAR: TcxGridDBBandedColumn
        Caption = 'Margem At. Var.'
        DataBinding.FieldName = 'MARGEM_ATUAL_VAR'
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Position.BandIndex = 2
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasPERCVENDAVAREJO: TcxGridDBBandedColumn
        Caption = '% Venda'
        DataBinding.FieldName = 'PERCVENDAVAREJO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '% ,0.00;-% ,0.00'
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Position.BandIndex = 2
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasFATORPRECO: TcxGridDBBandedColumn
        Caption = 'Fator Atac.'
        DataBinding.FieldName = 'FATORPRECO'
        Styles.Content = DmLogin.cxStyle14
        Width = 38
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasQTMINIMAATACADO: TcxGridDBBandedColumn
        Caption = 'Qt. M'#237'n. Atacado'
        DataBinding.FieldName = 'QTMINIMAATACADO'
        Styles.Content = DmLogin.cxStyle14
        Width = 55
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasMARGEMMINATAC: TcxGridDBBandedColumn
        Caption = 'Margem Min. Atac.'
        DataBinding.FieldName = 'MARGEMMINATAC'
        Visible = False
        Styles.Content = DmLogin.cxStyle2
        Position.BandIndex = 3
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasMARGEMATAC: TcxGridDBBandedColumn
        Caption = 'Margem Atac.'
        DataBinding.FieldName = 'MARGEMATAC'
        Visible = False
        Styles.Content = DmLogin.cxStyle2
        Position.BandIndex = 3
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasPVENDAATACCONCORRENTE: TcxGridDBBandedColumn
        Caption = 'Pr. Atac. Concorrente'
        DataBinding.FieldName = 'PVENDAATACCONCORRENTE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Width = 55
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasPSUGESTAO_ATAC: TcxGridDBBandedColumn
        Caption = 'Pr. Sug. Atac'
        DataBinding.FieldName = 'PSUGESTAO_ATAC'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;- ,0.00'
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Width = 52
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasPSUGESTAO_ATAC_ARREDONDADO: TcxGridDBBandedColumn
        Caption = 'Pr. Sug. Arredondado'
        DataBinding.FieldName = 'PSUGESTAO_ATAC_ARREDONDADO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle14
        Width = 55
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasPTABELAATAC: TcxGridDBBandedColumn
        Caption = 'Pr.Fut. Atac.'
        DataBinding.FieldName = 'PTABELAATAC'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        Properties.OnEditValueChanged = tblEmbalagensAbasPTABELAATACPropertiesEditValueChanged
        Styles.Content = DmLogin.cxStyle14
        Width = 59
        Position.BandIndex = 3
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasMARGEM_FUT_ATAC: TcxGridDBBandedColumn
        Caption = 'Marg. Fut. Atac.'
        DataBinding.FieldName = 'MARGEM_FUT_ATAC'
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Width = 59
        Position.BandIndex = 3
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasPATUALATAC: TcxGridDBBandedColumn
        Caption = 'Preco. Vigente. Atac'
        DataBinding.FieldName = 'PRECO_ATUAL_ATACADO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Position.BandIndex = 3
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasPVENDAATAC: TcxGridDBBandedColumn
        Caption = 'Pr. Atac.'
        DataBinding.FieldName = 'PVENDAATAC'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Width = 55
        Position.BandIndex = 3
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasMARGEM_ATUAL_ATAC: TcxGridDBBandedColumn
        Caption = 'Margem At. Atac.'
        DataBinding.FieldName = 'MARGEM_ATUAL_ATAC'
        Visible = False
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Position.BandIndex = 3
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasPERCVENDAATAC: TcxGridDBBandedColumn
        Caption = '% Venda Atac.'
        DataBinding.FieldName = 'PERCVENDAATAC'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '% ,0.00;-% ,0.00'
        Visible = False
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Position.BandIndex = 3
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasDIFSUGESTAOATAC: TcxGridDBBandedColumn
        Caption = '% Dif. Sug. Atac.'
        DataBinding.FieldName = 'DIFSUGESTAOATAC'
        Visible = False
        Position.BandIndex = 3
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object tblEmbalagensAbasPRECOATUALCRM: TcxGridDBBandedColumn
        Caption = 'Pr. ATUAL CRM'
        DataBinding.FieldName = 'PRECOATUALCRM'
        Options.Editing = False
        Styles.Content = DmLogin.cxStyle2
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
    end
    object cxgPrecificacaoLevel1: TcxGridLevel
      GridView = tblEmbalagensAbas
    end
  end
  object sbRodapePrecificacao: TdxStatusBar
    Left = 0
    Top = 601
    Width = 1033
    Height = 23
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 5
        Width = 100
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 10
        Width = 120
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Fixed = False
        MinWidth = 5
        Width = 300
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Status->'
        Width = 50
      end
      item
        PanelStyleClassName = 'TdxStatusBarStateIndicatorPanelStyle'
        PanelStyle.Indicators = <
          item
            IndicatorType = sitGreen
          end>
        Text = 'Status'
        Width = 37
      end
      item
        PanelStyleClassName = 'TdxStatusBarStateIndicatorPanelStyle'
        PanelStyle.Indicators = <
          item
            IndicatorType = sitRed
          end>
        Width = 37
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Fixed = False
        Width = 85
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        MinWidth = 80
        Width = 100
      end>
    PaintStyle = stpsUseLookAndFeel
    LookAndFeel.SkinName = 'Metropolis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object ActList: TActionList
    Left = 971
    Top = 347
    object actFiltrosF1: TAction
      Caption = 'actFiltrosF1'
      ShortCut = 112
      OnExecute = actFiltrosF1Execute
    end
    object actAplicarPrecoSugeridoF2: TAction
      Caption = 'actAplicarPrecoSugeridoF2'
      Enabled = False
      ShortCut = 113
      OnExecute = actAplicarPrecoSugeridoF2Execute
    end
    object actAplicaSugConcorrenteF3: TAction
      Caption = 'actAplicaSugConcorrenteF3'
      ShortCut = 114
      OnExecute = actAplicaSugConcorrenteF3Execute
    end
    object actAplicarPrecoSugArredondadoF4: TAction
      Caption = 'Aplicar Pr. Sug. Arredondado (F4)'
      ShortCut = 115
      OnExecute = actAplicarPrecoSugArredondadoF4Execute
    end
    object actAtualizarGridF5: TAction
      Caption = 'Atualizar Grid (F5)'
      ShortCut = 116
      OnExecute = actAtualizarGridF5Execute
    end
    object aplicarPrecoFuturoF6: TAction
      Caption = 'Aplicar Pr. Fut. em Pr. Venda (F6)'
      ShortCut = 117
      OnExecute = aplicarPrecoFuturoF6Execute
    end
    object actAplicarVariacaoNoPrecoDeVendaF7: TAction
      Caption = 'Aplicar Varia'#231#227'o Pr. Venda (F7)'
      ShortCut = 118
      OnExecute = actAplicarVariacaoNoPrecoDeVendaF7Execute
    end
    object actAplicarCustoMedioF8: TAction
      Caption = 'Aplicar Custo M'#233'dio (F8)'
      ShortCut = 119
      OnExecute = actAplicarCustoMedioF8Execute
    end
    object actAbrirLogs: TAction
      Caption = 'Abrir Logs'
      ShortCut = 16460
      OnExecute = actAbrirLogsExecute
    end
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 968
    Top = 416
  end
  object popupGridPrecificacao: TPopupMenu
    Left = 968
    Top = 280
    object popAplicarPrecoSugerido: TMenuItem
      Caption = 'Aplicar pre'#231'o sugerido'
      OnClick = popAplicarPrecoSugeridoClick
    end
    object popAplicarPrecoConcorrencia: TMenuItem
      Caption = 'Aplicar Pre'#231'o Sugest'#227'o Concorr'#234'ncia'
      OnClick = popAplicarPrecoConcorrenciaClick
    end
    object popAplicarSugArredondado: TMenuItem
      Caption = 'Apilcar Pre'#231'o Sugest'#227'o Arredondado'
      OnClick = popAplicarSugArredondadoClick
    end
    object popAplicarPrecoFuturo: TMenuItem
      Caption = 'Aplicar Pre'#231'o Futuro'
      OnClick = popAplicarPrecoFuturoClick
    end
    object popAplicarCustoMedioFamilia: TMenuItem
      Caption = 'Aplicar Custo M'#233'dio'
      OnClick = popAplicarCustoMedioFamiliaClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ExportarGridparaexcel1: TMenuItem
      Caption = 'Exportar Grid para excel'
      OnClick = ExportarGridparaexcel1Click
    end
  end
  object qrFiliais: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT DISTINCT PCFILIAL.CODIGO CODIGO, RAZAOSOCIAL  NOME'
      '  FROM PCLIB, PCFILIAL                        '
      ' WHERE PCFILIAL.CODIGO = PCLIB.CODIGOA        '
      '       AND PCFILIAL.CODIGO <> ('#39'99'#39')        '
      '       AND PCLIB.CODFUNC = :CODFUNC   '
      
        '       AND PCFILIAL.CODIGO IN (SELECT DISTINCT CODFILIAL FROM PC' +
        'CAIXA WHERE PCCAIXA.DTFIM IS NULL)        '
      ' ORDER BY PCFILIAL.CODIGO                     ')
    Left = 975
    Top = 472
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODFUNC'
        Value = nil
      end>
  end
end
