object frmRelatoriosOfertas: TfrmRelatoriosOfertas
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frmRelatoriosOfertas'
  ClientHeight = 338
  ClientWidth = 220
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 220
    Height = 25
    Align = alTop
    TabOrder = 0
    object btnFechar: TcxButton
      AlignWithMargins = True
      Left = 200
      Top = 4
      Width = 16
      Height = 17
      Align = alRight
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000030000
        000B000000120000001300000013000000140000001400000014000000140000
        0014000000140000001500000015000000140000000D000000030000000B1C11
        6CC3261796FF271696FF261695FF261594FF251594FF251594FF241394FF2412
        93FF241292FF231292FF231192FF231191FF190C68C50000000C0000000F2B1C
        9BFF384AD3FF2637CEFF3042D2FF4254D9FF3646D4FF2437CCFF2434CCFF3444
        D3FF3C4ED6FF2A3ACEFF202FC9FF1E2CC9FF251595FF000000120000000F3121
        A0FF4356D7FF374BD5FF3F4BCBFF2827ABFF363CBEFF3E4FD6FF3D4ED5FF353A
        BEFF2827ABFF3B45C9FF2F41D0FF2332CCFF291A99FF000000120000000E3529
        A5FF4E62DBFF444FCCFF605DBDFFEDEDF8FF8B89CEFF383CBCFF383CBBFF8B89
        CEFFEDEDF8FF5F5DBDFF3D47C9FF293ACEFF2D1F9EFF000000110000000D392F
        ABFF596FDFFF2722A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
        EDFFF3E9E2FFECE6EBFF2721A5FF2F42D1FF3326A3FF0000000F0000000C4036
        B1FF657AE2FF3135B7FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
        E2FFEADAD1FF7F6FACFF2E31B6FF3549D5FF372CA9FF0000000E0000000B453D
        B6FF6E83E5FF485EDCFF393BB7FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
        E5FF897DB8FF3739B6FF4054D9FF3D51D7FF3C33AFFF0000000D0000000A4A44
        BCFF788FE8FF6077E3FF4B4BBBFF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
        E8FF9087C5FF4949BAFF596FDFFF4359DAFF423AB4FF0000000C00000009504C
        C2FF92A7EEFF5655BCFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
        EAFFFAF5F2FF8F89CAFF5453BCFF6278E2FF4943B9FF0000000B000000086B6A
        D0FFADC1F4FF2A1E9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
        D8FFF4ECE7FFE5D9DCFF2A1D9BFF8B9EEBFF6563C9FF0000000A000000077577
        D6FFB1C6F5FF6E77D1FF5747A1FFCCB6BCFF7A68A8FF4E4CB7FF4F4EB8FF7A68
        A8FFCBB5BCFF5746A1FF6B75D0FF8EA1ECFF706ED0FF0000000900000006797B
        DAFFB5CAF6FF93A7EEFF7079D2FF2E229BFF5453BBFF93A7EEFF93A7EEFF5555
        BCFF2E219BFF6F77D1FF91A4EDFF90A3EDFF7475D4FF00000008000000057D80
        DEFFB9CDF6FFB9CDF6FFB9CCF6FFB9CCF6FFB9CDF6FFB8CCF6FFB8CCF6FFB7CC
        F6FFB7CBF6FFB6CBF6FFB5C9F6FFB5C9F6FF787AD8FF00000006000000036062
        A6C08184E1FF8183E0FF8083E0FF7F83DFFF7F83DFFF7F82DFFF7E81DFFF7E81
        DEFF7D81DEFF7D80DEFF7D7FDEFF7C7FDDFF5C5EA3C100000004000000000000
        0002000000030000000400000004000000040000000400000004000000040000
        0004000000040000000400000005000000050000000300000001}
      OptionsImage.Spacing = 0
      PaintStyle = bpsGlyph
      PopupAlignment = paCenter
      TabOrder = 0
      OnClick = btnFecharClick
    end
  end
  object cxGroupBox1: TcxGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 28
    Align = alClient
    Caption = 'Selecione o relat'#243'rio desejado'
    TabOrder = 1
    ExplicitHeight = 306
    Height = 307
    Width = 214
    object btnEmitirDadosOferta: TcxButton
      AlignWithMargins = True
      Left = 6
      Top = 18
      Width = 200
      Height = 31
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Gerentes / MKT'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000020000000A0000000F000000110000001100000011000000100000
        000B000000030000000000000000000000000000000000000000000000090000
        000E000000168A6559C3BF8D7BFFBF8D7BFFC08D7BFFBF8D7BFFC08D7BFF8A65
        58C500000019000000100000000A0000000200000000000000007B5143C0A76E
        5BFFA06855FFC2917FFFF7F0ECFFF7EFECFFF7F0EBFFF6EFEBFFF6EFEAFFC291
        7FFF875746FF8B5948FF623F33C20000000A0000000000000000BB7E6BFFECD9
        CCFFE3CEBEFFC59483FFF9F2F0FFE4B984FFE3B781FFE3B47CFFF8F1EDFFC495
        83FFE2CCBCFFE6D1C1FFB67764FF0000000E0000000000000000BE8571FFF1E5
        DAFFEBDACFFF794734FF794734FF784734FF784734FF784734FF784734FF7847
        34FFECDACEFFEBDBCFFFBA7C69FF0000000D0000000000000000C28B78FFF5EE
        E7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7DDFFF2E7
        DEFFF2E7DDFFF2E5DEFFBD836FFF0000000C0000000000000000C7937FFFFAF4
        F1FFCDBEB9FF72564AFF624338FF614036FF604035FF5F3F34FF5F3E33FF6E4F
        47FFCCBDB6FFF7F0ECFFC18A76FF0000000A0000000000000000CC9986FFFDFA
        FAFF806256FF745043FF744F43FF744E43FF734E42FF724D42FF724C41FF724C
        40FF7A5C50FFFCF8F6FFC5917CFF000000090000000000000000BB9080E9F5EB
        E6FF7D5C4DFF564BADFF3737D1FF3334CDFF3131CBFF2F2FC9FF2B2BC5FF2929
        C4FF2626C2FF2425BFFF2222BCFF2020BBFF1E1EB8FF14147CAD34292444A681
        72CC886857FF3C3DD3FFFAF6F6FF3636D0FF3233CCFF3030CAFFF8F2F1FFF7F2
        EFFF6B69D1FF2526C2FFF6EEEBFF2121BCFF1F1FBBFF1D1EB9FF000000010000
        00030000000C3E3ED4FFFBF7F6FF3738D2FF3536D0FF3232CCFFF8F4F2FF2D2E
        C7FFF7F2EFFF2728C2FFF6F0ECFF2223BDFF2121BCFF1E1EB9FF000000000000
        0000000000084040D7FFFBF8F7FFFBF7F6FF7574DCFF3435CDFFF9F5F2FF2F2F
        CAFFF8F3F0FF292AC4FFF6F1EEFFF6EFECFF2222BDFF2020BBFF000000000000
        0000000000064042D9FFFCF8F8FF3C3CD3FFFBF7F6FF3637D0FFFAF5F3FF3030
        CAFFF8F3F1FF2B2BC5FFF7F1EFFF2526C2FF2323BFFF2121BCFF000000000000
        0000000000044243D9FFFBFAF9FFFCF8F8FF7878DFFF3838D2FFFAF7F5FFFAF5
        F4FF706FD7FF2D2EC7FFF8F2F0FFF7F2EFFFF6F0EDFF2222BDFF000000000000
        0000000000012E2E94AE4242D8FF4040D7FF3D3ED4FF3A3AD3FF3737D0FF3435
        CDFF3132CBFF2F2FC9FF2B2CC7FF292AC4FF2727C2FF181982AD000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 0
      OnClick = btnEmitirDadosOfertaClick
      ExplicitLeft = 0
      ExplicitTop = 3
    end
    object cxGroupBox2: TcxGroupBox
      AlignWithMargins = True
      Left = 6
      Top = 135
      Align = alTop
      Caption = 'Selecione o periodo desejado'
      TabOrder = 1
      Height = 154
      Width = 202
      object btnAcompanhamentoOfertas: TcxButton
        AlignWithMargins = True
        Left = 6
        Top = 112
        Width = 188
        Height = 31
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Acompanhamento de Oferta'
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000020000000A0000000F000000110000001100000011000000100000
          000B000000030000000000000000000000000000000000000000000000090000
          000E000000168A6559C3BF8D7BFFBF8D7BFFC08D7BFFBF8D7BFFC08D7BFF8A65
          58C500000019000000100000000A0000000200000000000000007B5143C0A76E
          5BFFA06855FFC2917FFFF7F0ECFFF7EFECFFF7F0EBFFF6EFEBFFF6EFEAFFC291
          7FFF875746FF8B5948FF623F33C20000000A0000000000000000BB7E6BFFECD9
          CCFFE3CEBEFFC59483FFF9F2F0FFE4B984FFE3B781FFE3B47CFFF8F1EDFFC495
          83FFE2CCBCFFE6D1C1FFB67764FF0000000E0000000000000000BE8571FFF1E5
          DAFFEBDACFFF794734FF794734FF784734FF784734FF784734FF784734FF7847
          34FFECDACEFFEBDBCFFFBA7C69FF0000000D0000000000000000C28B78FFF5EE
          E7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7DDFFF2E7
          DEFFF2E7DDFFF2E5DEFFBD836FFF0000000C0000000000000000C7937FFFFAF4
          F1FFCDBEB9FF72564AFF624338FF614036FF604035FF5F3F34FF5F3E33FF6E4F
          47FFCCBDB6FFF7F0ECFFC18A76FF0000000A0000000000000000CC9986FFFDFA
          FAFF806256FF745043FF744F43FF744E43FF734E42FF724D42FF724C41FF724C
          40FF7A5C50FFFCF8F6FFC5917CFF000000090000000000000000BB9080E9F5EB
          E6FF7D5C4DFF564BADFF3737D1FF3334CDFF3131CBFF2F2FC9FF2B2BC5FF2929
          C4FF2626C2FF2425BFFF2222BCFF2020BBFF1E1EB8FF14147CAD34292444A681
          72CC886857FF3C3DD3FFFAF6F6FF3636D0FF3233CCFF3030CAFFF8F2F1FFF7F2
          EFFF6B69D1FF2526C2FFF6EEEBFF2121BCFF1F1FBBFF1D1EB9FF000000010000
          00030000000C3E3ED4FFFBF7F6FF3738D2FF3536D0FF3232CCFFF8F4F2FF2D2E
          C7FFF7F2EFFF2728C2FFF6F0ECFF2223BDFF2121BCFF1E1EB9FF000000000000
          0000000000084040D7FFFBF8F7FFFBF7F6FF7574DCFF3435CDFFF9F5F2FF2F2F
          CAFFF8F3F0FF292AC4FFF6F1EEFFF6EFECFF2222BDFF2020BBFF000000000000
          0000000000064042D9FFFCF8F8FF3C3CD3FFFBF7F6FF3637D0FFFAF5F3FF3030
          CAFFF8F3F1FF2B2BC5FFF7F1EFFF2526C2FF2323BFFF2121BCFF000000000000
          0000000000044243D9FFFBFAF9FFFCF8F8FF7878DFFF3838D2FFFAF7F5FFFAF5
          F4FF706FD7FF2D2EC7FFF8F2F0FFF7F2EFFFF6F0EDFF2222BDFF000000000000
          0000000000012E2E94AE4242D8FF4040D7FF3D3ED4FF3A3AD3FF3737D0FF3435
          CDFF3132CBFF2F2FC9FF2B2CC7FF292AC4FF2727C2FF181982AD000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 0
        OnClick = btnAcompanhamentoOfertasClick
      end
      object Panel2: TPanel
        Left = 3
        Top = 79
        Width = 196
        Height = 30
        Align = alTop
        TabOrder = 1
        object dtIniAcompanhamento: TcxDateEdit
          Left = 1
          Top = 3
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 90
        end
        object cxLabel13: TcxLabel
          Left = 91
          Top = 5
          Caption = 'a'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object dtFimAcompanhamento: TcxDateEdit
          Left = 102
          Top = 3
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 90
        end
      end
      object rgTipoverba: TcxRadioGroup
        Left = 3
        Top = 15
        Align = alTop
        Caption = 'Tipo de verba'
        Properties.Items = <
          item
            Caption = 'Definido'
            Value = 'DEFINIDO'
          end
          item
            Caption = 'Margem. Diretoria'
            Value = 'MARGEMDIRETORIA'
          end>
        ItemIndex = 0
        TabOrder = 2
        Transparent = True
        Height = 64
        Width = 196
      end
    end
    object cxButton1: TcxButton
      AlignWithMargins = True
      Left = 6
      Top = 96
      Width = 200
      Height = 31
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Acompanhamento Margem. Dir'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000020000000A0000000F000000110000001100000011000000100000
        000B000000030000000000000000000000000000000000000000000000090000
        000E000000168A6559C3BF8D7BFFBF8D7BFFC08D7BFFBF8D7BFFC08D7BFF8A65
        58C500000019000000100000000A0000000200000000000000007B5143C0A76E
        5BFFA06855FFC2917FFFF7F0ECFFF7EFECFFF7F0EBFFF6EFEBFFF6EFEAFFC291
        7FFF875746FF8B5948FF623F33C20000000A0000000000000000BB7E6BFFECD9
        CCFFE3CEBEFFC59483FFF9F2F0FFE4B984FFE3B781FFE3B47CFFF8F1EDFFC495
        83FFE2CCBCFFE6D1C1FFB67764FF0000000E0000000000000000BE8571FFF1E5
        DAFFEBDACFFF794734FF794734FF784734FF784734FF784734FF784734FF7847
        34FFECDACEFFEBDBCFFFBA7C69FF0000000D0000000000000000C28B78FFF5EE
        E7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7DDFFF2E7
        DEFFF2E7DDFFF2E5DEFFBD836FFF0000000C0000000000000000C7937FFFFAF4
        F1FFCDBEB9FF72564AFF624338FF614036FF604035FF5F3F34FF5F3E33FF6E4F
        47FFCCBDB6FFF7F0ECFFC18A76FF0000000A0000000000000000CC9986FFFDFA
        FAFF806256FF745043FF744F43FF744E43FF734E42FF724D42FF724C41FF724C
        40FF7A5C50FFFCF8F6FFC5917CFF000000090000000000000000BB9080E9F5EB
        E6FF7D5C4DFF564BADFF3737D1FF3334CDFF3131CBFF2F2FC9FF2B2BC5FF2929
        C4FF2626C2FF2425BFFF2222BCFF2020BBFF1E1EB8FF14147CAD34292444A681
        72CC886857FF3C3DD3FFFAF6F6FF3636D0FF3233CCFF3030CAFFF8F2F1FFF7F2
        EFFF6B69D1FF2526C2FFF6EEEBFF2121BCFF1F1FBBFF1D1EB9FF000000010000
        00030000000C3E3ED4FFFBF7F6FF3738D2FF3536D0FF3232CCFFF8F4F2FF2D2E
        C7FFF7F2EFFF2728C2FFF6F0ECFF2223BDFF2121BCFF1E1EB9FF000000000000
        0000000000084040D7FFFBF8F7FFFBF7F6FF7574DCFF3435CDFFF9F5F2FF2F2F
        CAFFF8F3F0FF292AC4FFF6F1EEFFF6EFECFF2222BDFF2020BBFF000000000000
        0000000000064042D9FFFCF8F8FF3C3CD3FFFBF7F6FF3637D0FFFAF5F3FF3030
        CAFFF8F3F1FF2B2BC5FFF7F1EFFF2526C2FF2323BFFF2121BCFF000000000000
        0000000000044243D9FFFBFAF9FFFCF8F8FF7878DFFF3838D2FFFAF7F5FFFAF5
        F4FF706FD7FF2D2EC7FFF8F2F0FFF7F2EFFFF6F0EDFF2222BDFF000000000000
        0000000000012E2E94AE4242D8FF4040D7FF3D3ED4FF3A3AD3FF3737D0FF3435
        CDFF3132CBFF2F2FC9FF2B2CC7FF292AC4FF2727C2FF181982AD000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 2
      OnClick = btnAcompanhamentoOfertasClick
    end
    object btnEmitirVerbas: TcxButton
      AlignWithMargins = True
      Left = 6
      Top = 57
      Width = 200
      Height = 31
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Relat'#243'rio. Price'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000020000000A0000000F000000110000001100000011000000100000
        000B000000030000000000000000000000000000000000000000000000090000
        000E000000168A6559C3BF8D7BFFBF8D7BFFC08D7BFFBF8D7BFFC08D7BFF8A65
        58C500000019000000100000000A0000000200000000000000007B5143C0A76E
        5BFFA06855FFC2917FFFF7F0ECFFF7EFECFFF7F0EBFFF6EFEBFFF6EFEAFFC291
        7FFF875746FF8B5948FF623F33C20000000A0000000000000000BB7E6BFFECD9
        CCFFE3CEBEFFC59483FFF9F2F0FFE4B984FFE3B781FFE3B47CFFF8F1EDFFC495
        83FFE2CCBCFFE6D1C1FFB67764FF0000000E0000000000000000BE8571FFF1E5
        DAFFEBDACFFF794734FF794734FF784734FF784734FF784734FF784734FF7847
        34FFECDACEFFEBDBCFFFBA7C69FF0000000D0000000000000000C28B78FFF5EE
        E7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7DDFFF2E7
        DEFFF2E7DDFFF2E5DEFFBD836FFF0000000C0000000000000000C7937FFFFAF4
        F1FFCDBEB9FF72564AFF624338FF614036FF604035FF5F3F34FF5F3E33FF6E4F
        47FFCCBDB6FFF7F0ECFFC18A76FF0000000A0000000000000000CC9986FFFDFA
        FAFF806256FF745043FF744F43FF744E43FF734E42FF724D42FF724C41FF724C
        40FF7A5C50FFFCF8F6FFC5917CFF000000090000000000000000BB9080E9F5EB
        E6FF7D5C4DFF564BADFF3737D1FF3334CDFF3131CBFF2F2FC9FF2B2BC5FF2929
        C4FF2626C2FF2425BFFF2222BCFF2020BBFF1E1EB8FF14147CAD34292444A681
        72CC886857FF3C3DD3FFFAF6F6FF3636D0FF3233CCFF3030CAFFF8F2F1FFF7F2
        EFFF6B69D1FF2526C2FFF6EEEBFF2121BCFF1F1FBBFF1D1EB9FF000000010000
        00030000000C3E3ED4FFFBF7F6FF3738D2FF3536D0FF3232CCFFF8F4F2FF2D2E
        C7FFF7F2EFFF2728C2FFF6F0ECFF2223BDFF2121BCFF1E1EB9FF000000000000
        0000000000084040D7FFFBF8F7FFFBF7F6FF7574DCFF3435CDFFF9F5F2FF2F2F
        CAFFF8F3F0FF292AC4FFF6F1EEFFF6EFECFF2222BDFF2020BBFF000000000000
        0000000000064042D9FFFCF8F8FF3C3CD3FFFBF7F6FF3637D0FFFAF5F3FF3030
        CAFFF8F3F1FF2B2BC5FFF7F1EFFF2526C2FF2323BFFF2121BCFF000000000000
        0000000000044243D9FFFBFAF9FFFCF8F8FF7878DFFF3838D2FFFAF7F5FFFAF5
        F4FF706FD7FF2D2EC7FFF8F2F0FFF7F2EFFFF6F0EDFF2222BDFF000000000000
        0000000000012E2E94AE4242D8FF4040D7FF3D3ED4FF3A3AD3FF3737D0FF3435
        CDFF3132CBFF2F2FC9FF2B2CC7FF292AC4FF2727C2FF181982AD000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 3
      OnClick = btnEmitirVerbasClick
      ExplicitLeft = 14
      ExplicitTop = 26
      ExplicitWidth = 194
    end
  end
end
