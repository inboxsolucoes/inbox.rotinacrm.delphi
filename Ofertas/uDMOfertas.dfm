object DMOfertas: TDMOfertas
  OldCreateOrder = False
  Height = 580
  Width = 888
  object qrAux: TUniQuery
    Connection = DmLogin.Conexao
    Left = 56
    Top = 16
  end
  object qrFiliais: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT DISTINCT '
      
        'PCFILIAL.CODIGO || '#39' - '#39' || NVL(PCFILIAL.FANTASIA,PCFILIAL.RAZAO' +
        'SOCIAL) || '#39' ('#39' || APENASNUMEROS(PCFILIAL.CGC) || '#39')'#39' AS  CODIGO' +
        ', '
      'RAZAOSOCIAL,'
      'PCFILIAL.CODIGO AS CODFILIAL,'
      #39#39#39#39' || PCFILIAL.CODIGO || '#39#39#39#39' AS CODIGO_TRATADO'
      '  FROM PCLIB, PCFILIAL                        '
      ' WHERE PCFILIAL.CODIGO = PCLIB.CODIGOA        '
      '       AND PCFILIAL.CODIGO <> ('#39'99'#39')        '
      '       AND PCLIB.CODFUNC = :CODFUNC     '
      
        '       AND PCFILIAL.CODIGO IN (SELECT DISTINCT CODFILIAL FROM PC' +
        'CAIXA WHERE PCCAIXA.DTFIM IS NULL)      '
      ' ORDER BY PCFILIAL.CODIGO    ')
    Left = 680
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODFUNC'
        Value = nil
      end>
  end
  object dsFiliais: TUniDataSource
    DataSet = qrFiliais
    Left = 680
    Top = 16
  end
  object qrPesquisaOfertas: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      '  SELECT   PCFORNEC.FORNECEDOR,'
      '           PCEMBALAGEM.CODPROD,'
      '           PCPRODUT.CODPRODPRINC,'
      '           PCPRODUT.DESCRICAO,'
      '           '#39'N'#39' AS "INCLUIDO",'
      '           PCFORNEC.CODFORNEC,'
      '           '#39'S'#39' AS TEMATACADO'
      '    FROM   PCEMBALAGEM, PCPRODUT, PCFORNEC'
      '   WHERE   PCEMBALAGEM.CODPROD = PCPRODUT.CODPROD'
      
        '       AND PCPRODUT.CODFORNEC = PCFORNEC.CODFORNEC              ' +
        '      '
      'GROUP BY   PCFORNEC.FORNECEDOR,'
      '           PCEMBALAGEM.CODPROD,'
      '           PCPRODUT.CODPRODPRINC,'
      '           PCPRODUT.DESCRICAO,'
      '           '#39'N'#39','
      '           PCFORNEC.CODFORNEC,'
      '           '#39'S'#39)
    Options.SetFieldsReadOnly = False
    Left = 776
    Top = 64
  end
  object dsPesquisaOfertas: TUniDataSource
    DataSet = qrPesquisaOfertas
    Left = 776
    Top = 16
  end
  object cdsPesquisaOfertasInseridos: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODPROD'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CODAUXILIAR'
        DataType = ftFloat
      end
      item
        Name = 'CUSTOFIN'
        DataType = ftFloat
      end
      item
        Name = 'PVENDA'
        DataType = ftFloat
      end
      item
        Name = 'PVENDAATAC'
        DataType = ftFloat
      end
      item
        Name = 'PVENDACONCORRENTE'
        DataType = ftFloat
      end
      item
        Name = 'QTDISPONIVEL'
        DataType = ftFloat
      end
      item
        Name = 'QTVENDMES'
        DataType = ftFloat
      end
      item
        Name = 'QTVENDMES1'
        DataType = ftFloat
      end
      item
        Name = 'QTVENDMES2'
        DataType = ftFloat
      end
      item
        Name = 'QTVENDMES3'
        DataType = ftFloat
      end
      item
        Name = 'PERC_VENDA_ATAC'
        DataType = ftFloat
      end
      item
        Name = 'PERC_VENDA_VAREJO'
        DataType = ftFloat
      end
      item
        Name = 'POFERTA_VAREJO'
        DataType = ftFloat
      end
      item
        Name = 'POFERTA_ATAC'
        DataType = ftFloat
      end
      item
        Name = 'MARGEMFUTURA_OFERTA'
        DataType = ftFloat
      end
      item
        Name = 'DIF_MARGEM_MINIMA'
        DataType = ftFloat
      end
      item
        Name = 'MOTIVOOFERTA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'GERAVERBA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VLVERBAUNIT'
        DataType = ftCurrency
      end
      item
        Name = 'CODFORNEC'
        DataType = ftInteger
      end
      item
        Name = 'CODFILIAL'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'QTUNIT'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FORNECEDOR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'QTMAXVENDA'
        DataType = ftCurrency
      end
      item
        Name = 'VLVERBAMARGEMMIN'
        DataType = ftCurrency
      end
      item
        Name = 'VERBAMENORVERBAMIN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MARGEMMINIMA'
        DataType = ftFloat
      end
      item
        Name = 'OFERTAFAMILIA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODPRODPRINC'
        DataType = ftInteger
      end
      item
        Name = 'TEMATACADO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PVENDAATACCONCORRENTE'
        DataType = ftFloat
      end
      item
        Name = 'QTGIRODIA'
        DataType = ftFloat
      end
      item
        Name = 'CODOFERTAORIGEM'
        DataType = ftFloat
      end
      item
        Name = 'CODUSURTRANSFERENCIA'
        DataType = ftInteger
      end
      item
        Name = 'DTTRANSFERENCIA'
        DataType = ftDateTime
      end
      item
        Name = 'CODTABLOIDE'
        DataType = ftInteger
      end
      item
        Name = 'CODOFERTA'
        DataType = ftInteger
      end
      item
        Name = 'CODFORNECPRINC'
        DataType = ftInteger
      end
      item
        Name = 'VLVERBAUNITANT'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PERCMARGEMDESEJADA'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    AfterInsert = cdsPesquisaOfertasInseridosAfterInsert
    BeforePost = cdsPesquisaOfertasInseridosBeforePost
    AfterDelete = cdsPesquisaOfertasInseridosAfterDelete
    Left = 232
    Top = 376
    object cdsPesquisaOfertasInseridosCODFILIAL: TStringField
      FieldName = 'CODFILIAL'
    end
    object cdsPesquisaOfertasInseridosCODPROD: TIntegerField
      FieldName = 'CODPROD'
    end
    object cdsPesquisaOfertasInseridosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object cdsPesquisaOfertasInseridosCODAUXILIAR: TFloatField
      FieldName = 'CODAUXILIAR'
    end
    object cdsPesquisaOfertasInseridosFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
    end
    object cdsPesquisaOfertasInseridosCUSTOFIN: TFloatField
      FieldName = 'CUSTOFIN'
    end
    object cdsPesquisaOfertasInseridosPVENDA: TFloatField
      FieldName = 'PVENDA'
    end
    object cdsPesquisaOfertasInseridosPVENDAATAC: TFloatField
      FieldName = 'PVENDAATAC'
    end
    object cdsPesquisaOfertasInseridosPRECO_CONCORRENTE: TFloatField
      FieldName = 'PVENDACONCORRENTE'
    end
    object cdsPesquisaOfertasInseridosPVENDAATACCONCORRENTE: TFloatField
      FieldName = 'PVENDAATACCONCORRENTE'
    end
    object cdsPesquisaOfertasInseridosQTDISPONIVEL: TFloatField
      FieldName = 'QTDISPONIVEL'
    end
    object cdsPesquisaOfertasInseridosPERC_VENDA_ATAC: TFloatField
      FieldName = 'PERC_VENDA_ATAC'
    end
    object cdsPesquisaOfertasInseridosPERC_VENDA_VAREJO: TFloatField
      FieldName = 'PERC_VENDA_VAREJO'
    end
    object cdsPesquisaOfertasInseridosPOFERTA_ATAC: TFloatField
      FieldName = 'POFERTA_ATAC'
      OnChange = cdsPesquisaOfertasInseridosPOFERTA_ATACChange
    end
    object cdsPesquisaOfertasInseridosMARGEMFUTURA_OFERTA: TFloatField
      FieldName = 'MARGEMFUTURA_OFERTA'
    end
    object cdsPesquisaOfertasInseridosDIF_MARGEM_MINIMA: TFloatField
      FieldName = 'DIF_MARGEM_MINIMA'
    end
    object cdsPesquisaOfertasInseridosMOTIVOOFERTA: TStringField
      FieldName = 'MOTIVOOFERTA'
    end
    object cdsPesquisaOfertasInseridosGERAVERBA: TStringField
      FieldName = 'GERAVERBA'
    end
    object cdsPesquisaOfertasInseridosCODFORNEC: TIntegerField
      FieldName = 'CODFORNEC'
    end
    object cdsPesquisaOfertasInseridosQTUNIT: TStringField
      FieldName = 'QTUNIT'
    end
    object cdsPesquisaOfertasInseridosQTMAXVENDA: TCurrencyField
      FieldName = 'QTMAXVENDA'
    end
    object cdsPesquisaOfertasInseridosVLVERBAMARGEMMIN: TCurrencyField
      FieldName = 'VLVERBAMARGEMMIN'
      Precision = 2
    end
    object cdsPesquisaOfertasInseridosVERBAMENORVERBAMIN: TStringField
      FieldName = 'VERBAMENORVERBAMIN'
    end
    object cdsPesquisaOfertasInseridosMARGEMMINIMA: TFloatField
      FieldName = 'MARGEMMINIMA'
    end
    object cdsPesquisaOfertasInseridosOFERTAFAMILIA: TStringField
      FieldName = 'OFERTAFAMILIA'
      Size = 1
    end
    object cdsPesquisaOfertasInseridosCODPRODPRINC: TIntegerField
      FieldName = 'CODPRODPRINC'
    end
    object cdsPesquisaOfertasInseridosVLVERBAUNIT: TCurrencyField
      FieldName = 'VLVERBAUNIT'
      OnChange = cdsPesquisaOfertasInseridosVLVERBAUNITChange
      currency = False
    end
    object cdsPesquisaOfertasInseridosTEMATACADO: TStringField
      FieldName = 'TEMATACADO'
    end
    object cdsPesquisaOfertasInseridosQTGIRODIA: TFloatField
      FieldName = 'QTGIRODIA'
    end
    object cdsPesquisaOfertasInseridosCODOFERTAORIGEM: TFloatField
      FieldName = 'CODOFERTAORIGEM'
    end
    object cdsPesquisaOfertasInseridosCODUSURTRANSFERENCIA: TIntegerField
      FieldName = 'CODUSURTRANSFERENCIA'
    end
    object cdsPesquisaOfertasInseridosDTTRANSFERENCIA: TDateTimeField
      FieldName = 'DTTRANSFERENCIA'
    end
    object cdsPesquisaOfertasInseridosCODTABLOIDE: TIntegerField
      FieldName = 'CODTABLOIDE'
    end
    object cdsPesquisaOfertasInseridosCODOFERTA: TIntegerField
      FieldName = 'CODOFERTA'
    end
    object cdsPesquisaOfertasInseridosCODFORNECPRINC: TIntegerField
      FieldName = 'CODFORNECPRINC'
    end
    object cdsPesquisaOfertasInseridosVLVERBAUNITANT: TStringField
      FieldName = 'VLVERBAUNITANT'
    end
    object cdsPesquisaOfertasInseridosPERCMARGEMDESEJADA: TFloatField
      FieldName = 'PERCMARGEMDESEJADA'
      OnChange = cdsPesquisaOfertasInseridosPERCMARGEMDESEJADAChange
    end
  end
  object dsPesquisaOfertasInseridos: TDataSource
    DataSet = cdsPesquisaOfertasInseridos
    Left = 640
    Top = 280
  end
  object qrInsereOfertac: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'DECLARE'
      '    REG PCOFERTAPROGRAMADAC%ROWTYPE;'
      '    vHORAINI DATE;'
      '    vHORAFIM DATE;'
      'BEGIN'
      ''
      'IF NVL(:OFERTARELAMPAGO, '#39'N'#39') = '#39'S'#39' THEN'
      
        '   vHORAINI := TO_DATE(:DTOFERTAINI || '#39' '#39' || :HORAINICIAL, '#39'dd/' +
        'MM/yyyy hh24:mi:ss'#39');'
      
        '   vHORAFIM := TO_DATE(:DTOFERTAFIM || '#39' '#39' || :HORAFINAL,   '#39'dd/' +
        'MM/yyyy hh24:mi:ss'#39');'
      ''
      'ELSE'
      ''
      '  vHORAINI := NULL;'
      '  vHORAFIM := NULL;'
      ''
      'END IF;'
      ''
      'IF :STATUSOFERTA = '#39'AGUARDANDO'#39' THEN '
      ''
      ' UPDATE PCOFERTAPROGRAMADAC'
      ' SET '
      ' DESCOFERTA = :DESCOFERTA,'
      ' DTULTALTOFERTA = SYSDATE,'
      ' CODFUNCULTALT = :MATRICULA,'
      ' HORAINICIAL = vHORAINI,'
      ' HORAFINAL =   vHORAFIM,'
      ' DTINICIALSUGESTAO = :DTOFERTAINI,'
      ' DTFINALSUGESTAO = :DTOFERTAFIM'
      ' WHERE CODOFERTA = :CODOFERTA;'
      ''
      'END IF;'
      ''
      ''
      'IF :STATUSOFERTA = '#39'APROVADA'#39' THEN'
      ''
      ' UPDATE PCOFERTAPROGRAMADAC'
      ' SET '
      ' DESCOFERTA = :DESCOFERTA,'
      ' DTULTALTOFERTA = SYSDATE,'
      ' CODFUNCULTALT = :MATRICULA,'
      ' HORAINICIAL = vHORAINI,'
      ' HORAFINAL =   vHORAFIM,'
      ' DTINICIAL = :DTOFERTAINI,'
      ' DTFINAL = :DTOFERTAFIM,'
      ' DTINICIALSUGESTAO = :DTOFERTAINI,'
      ' DTFINALSUGESTAO = :DTOFERTAFIM'
      ' WHERE CODOFERTA = :CODOFERTA;'
      ''
      'END IF;'
      ''
      ''
      'IF SQL%NOTFOUND THEN'
      ''
      '    REG.CODFILIAL := REPLACE(:CODFILIAL, '#39#39#39#39');'
      '    REG.CODOFERTA := :CODOFERTA;'
      '    REG.DESCOFERTA := :DESCOFERTA;'
      '    REG.DTINICIAL := TO_DATE('#39'01/01/2050'#39', '#39'dd/MM/yyyy'#39');'
      '    REG.DTFINAL := TO_DATE('#39'01/01/2050'#39', '#39'dd/MM/yyyy'#39');'
      '    REG.DTORIG := SYSDATE;'
      '    REG.CODFUNCORIG := :MATRICULA;'
      '    REG.DTULTALTOFERTA := SYSDATE;'
      '    REG.CODFUNCULTALT := :MATRICULA;'
      '    REG.HORAINICIAL := vHORAINI;'
      '    REG.HORAFINAL :=   vHORAFIM;'
      '    REG.DTINICIALSUGESTAO := :DTOFERTAINI;'
      '    REG.DTFINALSUGESTAO := :DTOFERTAFIM;'
      '    REG.GERAVERBA := :GERAVERBA;'
      '    REG.CODFUNCSUGESTAO := :MATRICULA;'
      ''
      '    INSERT INTO PCOFERTAPROGRAMADAC VALUES REG;'
      ''
      'END IF;'
      ''
      'END;')
    Left = 608
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OFERTARELAMPAGO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTOFERTAINI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'HORAINICIAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTOFERTAFIM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'HORAFINAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'STATUSOFERTA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCOFERTA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MATRICULA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODOFERTA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'GERAVERBA'
        Value = nil
      end>
  end
  object qrInsereOfertai: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'DECLARE'
      '    REG              PCOFERTAPROGRAMADAI%ROWTYPE;'
      '    VCODPROD         NUMBER (18);'
      '    VCODITEM         INTEGER;'
      '    VOFERTAFAMILIA   VARCHAR2 (1);'
      '    VCODPRODPRINC    NUMBER (10);'
      '    VQTESTGER        NUMBER(18,3);'
      'BEGIN'
      '    VOFERTAFAMILIA := :OFERTAFAMILIA;'
      '    VCODPRODPRINC := :CODPRODPRINC;'
      '    VCODPROD := :CODPROD;'
      '    '
      '    SELECT QTESTGER '
      '    INTO VQTESTGER'
      '    FROM PCEST '
      '    WHERE CODPROD = VCODPROD '
      '    AND CODFILIAL = :CODFILIAL '
      '    AND ROWNUM = 1;'
      ''
      '    UPDATE   PCOFERTAPROGRAMADAI'
      '       SET   PCOFERTAPROGRAMADAI.VLOFERTA = :VLOFERTAATAC,'
      '             PCOFERTAPROGRAMADAI.VLOFERTAATAC = :VLOFERTAATAC,'
      '             PCOFERTAPROGRAMADAI.MOTIVOOFERTA = :MOTIVOOFERTA,'
      '             PCOFERTAPROGRAMADAI.GERAVERBA = :GERAVERBA,'
      
        '             PCOFERTAPROGRAMADAI.VLUNITARIOVERBA = PKG_I9UTILITA' +
        'RIO.GET_PRECO_QTUNIT1( NVL(:QTUNIT, 1),  :VLUNITARIOVERBA),'
      
        '             PCOFERTAPROGRAMADAI.VLVERBAUNITARIOORIGINAL = :VLUN' +
        'ITARIOVERBA,'
      '             PCOFERTAPROGRAMADAI.QTMAXVENDA = :QTMAXVENDA,'
      
        '             PCOFERTAPROGRAMADAI.VLVERBAMARGEMMIN = :VLVERBAMARG' +
        'EMMIN,'
      '             PCOFERTAPROGRAMADAI.OFERTAFAMILIA = :OFERTAFAMILIA'
      
        '     WHERE   CODOFERTA = :CODOFERTA AND CODAUXILIAR = :CODAUXILI' +
        'AR;'
      ''
      ''
      '    IF SQL%NOTFOUND'
      '    THEN'
      '        VCODITEM := :CODITEM;'
      ''
      '        --FAZ O LOOP VALIDANDO AS CONFIGURACOES DE FAMILIA'
      '        FOR FAMILIA'
      '        IN (SELECT   CODPROD'
      '              FROM   PCPRODUT'
      
        '             WHERE   DECODE (VOFERTAFAMILIA, '#39'S'#39', CODPRODPRINC, ' +
        'CODPROD) ='
      
        '                         DECODE (VOFERTAFAMILIA, '#39'S'#39', VCODPRODPR' +
        'INC, VCODPROD))'
      '        LOOP'
      
        '            --FAZ O LOOP PARA INSERT DAS OUTRAS EMBALAGENS DA OF' +
        'ERTA.'
      '            FOR EMBALAGENS'
      '            IN (SELECT   PCEMBALAGEM.CODPROD,'
      '                         PCEMBALAGEM.CODAUXILIAR,'
      '                         PCEMBALAGEM.CODFILIAL,'
      
        '                         DECODE (NVL (PCEMBALAGEM.QTUNIT, 0), 0,' +
        ' 1, PCEMBALAGEM.QTUNIT)'
      '                             AS QTUNITEMBALAGEM'
      '                  FROM   PCEMBALAGEM, PCPRODUT'
      
        '                 WHERE       PCEMBALAGEM.CODPROD = PCPRODUT.CODP' +
        'ROD'
      
        '                         AND PCEMBALAGEM.CODFILIAL IN (:CODFILIA' +
        'L)'
      
        '                         AND PCEMBALAGEM.CODPROD = FAMILIA.CODPR' +
        'OD)'
      '            LOOP'
      '                IF (EMBALAGENS.CODAUXILIAR = :CODAUXILIAR)'
      '                THEN'
      '                    REG.PRODPRINCIPAL := '#39'S'#39';'
      '                ELSE'
      '                    REG.PRODPRINCIPAL := '#39'N'#39';'
      '                END IF;'
      ''
      
        '                --INSERE A OFERTA PARA CADA EMBALAGEM DO PRODUTO' +
        '.'
      '                VCODITEM := VCODITEM + 1;'
      '                REG.CODFILIAL := :CODFILIAL;'
      '                REG.OFERTAFAMILIA := :OFERTAFAMILIA;'
      '                REG.CODOFERTA := :CODOFERTA;'
      '                REG.CODITEM := VCODITEM;'
      '                REG.CODAUXILIAR := EMBALAGENS.CODAUXILIAR;'
      
        '                REG.VLOFERTA := :VLOFERTAATAC * EMBALAGENS.QTUNI' +
        'TEMBALAGEM;'
      
        '                REG.VLOFERTAATAC := :VLOFERTAATAC * EMBALAGENS.Q' +
        'TUNITEMBALAGEM;'
      '                REG.MOTIVOOFERTA := :MOTIVOOFERTA;'
      '                REG.GERAVERBA := :GERAVERBA;'
      
        '                REG.VLUNITARIOVERBA := PKG_I9UTILITARIO.GET_PREC' +
        'O_QTUNIT1( NVL(:QTUNIT, 1),  :VLUNITARIOVERBA);                '
      
        '                REG.VLVERBAUNITARIOORIGINAL := :VLUNITARIOVERBA;' +
        #9
      '                REG.QTMAXVENDA := :QTMAXVENDA;'
      '                REG.VLVERBAMARGEMMIN := :VLVERBAMARGEMMIN;'
      '                REG.OFERTAFAMILIA := :OFERTAFAMILIA;'
      '                REG.DTINCLUSAOITEM := SYSDATE;'
      '                REG.CODPROD := EMBALAGENS.CODPROD;'
      '                REG.QTESTGERINICIAL := VQTESTGER;'
      '                REG.CODOFERTAORIGEM := :CODOFERTAORIGEM;'
      
        '                REG.CODUSURTRANSFERENCIA := :CODUSURTRANSFERENCI' +
        'A;'
      '                REG.DTTRANSFERENCIA := :DTTRANSFERENCIA; '
      '                REG.CODTABLOIDE := :CODTABLOIDE; '
      ''
      '                INSERT INTO PCOFERTAPROGRAMADAI'
      '                  VALUES   REG;'
      '            END LOOP;'
      '        END LOOP;'
      '    END IF;'
      ''
      
        '    PKG_I9UTILITARIO.ATUALIZAR_ETIQUETAS(:CODFILIAL, :CODPROD, '#39 +
        'N'#39');'
      'END;')
    Left = 608
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OFERTAFAMILIA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODPRODPRINC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODPROD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VLOFERTAATAC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MOTIVOOFERTA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'GERAVERBA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'QTUNIT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VLUNITARIOVERBA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'QTMAXVENDA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VLVERBAMARGEMMIN'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODOFERTA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODAUXILIAR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODITEM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODOFERTAORIGEM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODUSURTRANSFERENCIA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTTRANSFERENCIA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODTABLOIDE'
        Value = nil
      end>
  end
  object prcGeraVerba: TUniStoredProc
    StoredProcName = 'I9_GERAVERBA'
    SQL.Strings = (
      'begin'
      '  I9_GERAVERBA(:P_CODOFERTA, :P_CODFUNC, :RETORNO);'
      'end;')
    Connection = DmLogin.Conexao
    Left = 56
    Top = 80
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P_CODOFERTA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'P_CODFUNC'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'RETORNO'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'I9_GERAVERBA'
  end
  object prcApuraGeraVerba: TUniStoredProc
    Connection = DmLogin.Conexao
    Left = 56
    Top = 136
  end
  object dsVerbasFornecedor: TDataSource
    DataSet = cdsVerbasFornecedor
    Left = 640
    Top = 344
  end
  object cdsVerbasFornecedor: TClientDataSet
    PersistDataPacket.Data = {
      040100009619E0BD010000001800000008000000000003000000040109434F44
      464F524E454304000100000000000A464F524E454345444F5201004900000001
      00055749445448020002001400095449504F5645524241010049000000010005
      574944544802000200140007564C564552424108000400000001000753554254
      5950450200490006004D6F6E657900124454415055524143414F564552424149
      4E490400060000000000124454415055524143414F564552424146494D040006
      00000000000E5449504F504147544F5645524241010049000000010005574944
      544802000200140009434F4446494C49414C0100490000000100055749445448
      0200020014000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 784
    Top = 280
    object cdsVerbasFornecedorCODFORNEC: TIntegerField
      FieldName = 'CODFORNEC'
    end
    object cdsVerbasFornecedorFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
    end
    object cdsVerbasFornecedorTIPOVERBA: TStringField
      FieldName = 'TIPOVERBA'
      OnChange = cdsVerbasFornecedorTIPOVERBAChange
    end
    object cdsVerbasFornecedorVLVERBA: TCurrencyField
      FieldName = 'VLVERBA'
    end
    object cdsVerbasFornecedorDTAPURACAOVERBAINI: TDateField
      FieldName = 'DTAPURACAOVERBAINI'
    end
    object cdsVerbasFornecedorDTAPURACAOVERBAFIM: TDateField
      FieldName = 'DTAPURACAOVERBAFIM'
    end
    object cdsVerbasFornecedorTIPOPAGTOVERBA: TStringField
      FieldName = 'TIPOPAGTOVERBA'
    end
    object cdsVerbasFornecedorCODFILIAL: TStringField
      FieldName = 'CODFILIAL'
    end
  end
  object qrGravaVerba: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'DECLARE'
      '  REG I9CONFIGVERBAOFERTA%ROWTYPE;'
      ''
      'BEGIN'
      ''
      ' UPDATE I9CONFIGVERBAOFERTA'
      ' SET TIPOVERBA = :TIPOVERBA,'
      '     VLVERBA   = :VLVERBA,'
      '     DTAPURACAOVERBAINI = :DTAPURACAOVERBAINI,'
      '     DTAPURACAOVERBAFIM = :DTAPURACAOVERBAFIM,'
      '     TIPOPAGTOVERBA     = :TIPOPAGTOVERBA'
      ' WHERE CODOFERTA = :CODOFERTA'
      ' AND   CODFORNEC = :CODFORNEC;'
      ''
      ''
      ' IF SQL%NOTFOUND THEN '
      ''
      '   REG.CODOFERTA := :CODOFERTA;'
      '   REG.TIPOVERBA := :TIPOVERBA;'
      '   REG.VLVERBA   := :VLVERBA;'
      '   REG.DTAPURACAOVERBAINI := :DTAPURACAOVERBAINI;'
      '   REG.DTAPURACAOVERBAFIM := :DTAPURACAOVERBAFIM;'
      '   REG.TIPOPAGTOVERBA     := :TIPOPAGTOVERBA;'
      '   REG.CODFORNEC          := :CODFORNEC;'
      ''
      '   INSERT INTO I9CONFIGVERBAOFERTA VALUES REG;'
      ''
      ' END IF;'
      ''
      ''
      'END;')
    Left = 128
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TIPOVERBA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VLVERBA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTAPURACAOVERBAINI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTAPURACAOVERBAFIM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TIPOPAGTOVERBA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODOFERTA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODFORNEC'
        Value = nil
      end>
  end
  object qrEmitirVerbasOferta: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT '
      'I9CONFIGVERBAOFERTA.CODOFERTA,'
      'PCOFERTAPROGRAMADAC.DESCOFERTA,'
      'PCVERBA.NUMVERBA,'
      'PCVERBA.CODFILIAL,'
      'PCVERBA.CODFORNEC,'
      'PCFORNEC.FORNECEDOR,'
      'PCVERBA.DTEMISSAO,'
      'PCVERBA.REFERENCIA,'
      'PCVERBA.VALOR,'
      'PCVERBA.DTVENC,'
      'I9CONFIGVERBAOFERTA.TIPOVERBA'
      'FROM I9CONFIGVERBAOFERTA, PCVERBA, PCFORNEC, PCOFERTAPROGRAMADAC'
      'WHERE I9CONFIGVERBAOFERTA.NUMVERBA = PCVERBA.NUMVERBA'
      'AND PCFORNEC.CODFORNEC = PCVERBA.CODFORNEC'
      
        'AND PCOFERTAPROGRAMADAC.CODOFERTA = I9CONFIGVERBAOFERTA.CODOFERT' +
        'A'
      'AND I9CONFIGVERBAOFERTA.CODOFERTA = :CODOFERTA')
    Left = 232
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODOFERTA'
        Value = Null
      end>
  end
  object dsEmitirVerbasOferta: TUniDataSource
    DataSet = qrEmitirVerbasOferta
    Left = 232
    Top = 16
  end
  object qrValidaItemJaEmOferta: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      '  SELECT   PCOFERTAPROGRAMADAC.CODOFERTA,'
      '           PCOFERTAPROGRAMADAI.CODAUXILIAR,'
      '           PCOFERTAPROGRAMADAC.CODFILIAL,'
      '           PCEMBALAGEM.CODPROD,'
      '           NVL (PCOFERTAPROGRAMADAI.VLOFERTA, 0) AS VALOR'
      '    FROM   PCOFERTAPROGRAMADAI, PCOFERTAPROGRAMADAC, PCEMBALAGEM'
      
        '   WHERE       PCOFERTAPROGRAMADAI.CODOFERTA = PCOFERTAPROGRAMAD' +
        'AC.CODOFERTA'
      
        '           AND PCEMBALAGEM.CODAUXILIAR = PCOFERTAPROGRAMADAI.COD' +
        'AUXILIAR'
      
        '           AND PCEMBALAGEM.CODFILIAL = PCOFERTAPROGRAMADAC.CODFI' +
        'LIAL'
      
        '           AND NVL(PCOFERTAPROGRAMADAC.CODOFERTA, 0) <> :CODOFER' +
        'TA'
      
        '           AND PCOFERTAPROGRAMADAC.DTFINALSUGESTAO >= TRUNC (SYS' +
        'DATE)'
      '           AND PCOFERTAPROGRAMADAC.DTCANCEL IS NULL'
      '           AND PCOFERTAPROGRAMADAI.CODAUXILIAR IN'
      '                      (SELECT   CODAUXILIAR'
      '                         FROM   PCEMBALAGEM'
      '                        WHERE   CODPROD IN (SELECT   Y.CODPROD'
      '                                              FROM   PCPRODUT Y'
      
        '                                             WHERE   Y.CODPRODPR' +
        'INC IN (SELECT   X.CODPRODPRINC'
      
        '                                                                ' +
        '          FROM   PCPRODUT X'
      
        '                                                                ' +
        '         WHERE   X.CODPROD = :CODPROD))'
      '                                AND CODFILIAL = :CODFILIAL)'
      '           AND PCOFERTAPROGRAMADAC.CODFILIAL = :CODFILIAL'
      
        '           AND (   TRUNC (PCOFERTAPROGRAMADAC.DTINICIALSUGESTAO)' +
        ' BETWEEN TRUNC (:DTINI) AND TRUNC (:DTFIM)'
      
        '                OR TRUNC (PCOFERTAPROGRAMADAC.DTFINALSUGESTAO) B' +
        'ETWEEN TRUNC (:DTINI) AND TRUNC (:DTFIM)'
      
        '                OR TRUNC (PCOFERTAPROGRAMADAC.DTINICIAL) BETWEEN' +
        ' TRUNC (:DTINI) AND TRUNC (:DTFIM)'
      
        '                OR TRUNC (PCOFERTAPROGRAMADAC.DTFINAL) BETWEEN T' +
        'RUNC (:DTINI) AND TRUNC (:DTFIM)'
      
        '                OR TRUNC (:DTINI) BETWEEN TRUNC (PCOFERTAPROGRAM' +
        'ADAC.DTINICIALSUGESTAO)'
      
        '                                      AND  TRUNC (PCOFERTAPROGRA' +
        'MADAC.DTFINALSUGESTAO)'
      
        '                OR TRUNC (:DTFIM) BETWEEN TRUNC (PCOFERTAPROGRAM' +
        'ADAC.DTINICIALSUGESTAO)'
      
        '                                      AND  TRUNC (PCOFERTAPROGRA' +
        'MADAC.DTFINALSUGESTAO)'
      
        '                OR TRUNC (:DTINI) BETWEEN TRUNC (PCOFERTAPROGRAM' +
        'ADAC.DTINICIAL) AND TRUNC (PCOFERTAPROGRAMADAC.DTFINAL)'
      
        '                OR TRUNC (:DTFIM) BETWEEN TRUNC (PCOFERTAPROGRAM' +
        'ADAC.DTINICIAL) AND TRUNC (PCOFERTAPROGRAMADAC.DTFINAL))'
      'ORDER BY   PCEMBALAGEM.QTUNIT ASC')
    Left = 232
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODOFERTA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODPROD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTINI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTFIM'
        Value = nil
      end>
  end
  object qrCancelarOferta: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'DECLARE'
      '    vCODOFERTA NUMBER(10);'
      '    vMATRICULA NUMBER(10);'
      'BEGIN'
      '    vCODOFERTA := :CODOFERTA;'
      '    vMATRICULA := :MATRICULA;'
      '    '
      '    UPDATE PCOFERTAPROGRAMADAC'
      '    SET'
      '        PCOFERTAPROGRAMADAC.DTFINAL = TRUNC(SYSDATE),'
      '        PCOFERTAPROGRAMADAC.DTCANCEL = TRUNC(SYSDATE),'
      
        '        PCOFERTAPROGRAMADAC.MOTIVOCANCEL = '#39'CANCELADO ATRAVES DA' +
        ' ROTINA 9810'#39','
      '        PCOFERTAPROGRAMADAC.CODFUNCCANCEL = vMATRICULA '
      '    WHERE CODOFERTA = vCODOFERTA;    '
      '        '
      'END;')
    Left = 776
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODOFERTA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MATRICULA'
        Value = nil
      end>
  end
  object qrBuscaFamiliaProduto: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT'
      'PCPRODUT.CODPROD,'
      'PCPRODUT.DESCRICAO,'
      'PCPRODUT.CODPRODPRINC,'
      'PCPRODUT.CODFORNEC,'
      'PCFORNEC.FORNECEDOR'
      'FROM PCPRODUT, PCFORNEC '
      'WHERE PCPRODUT.CODFORNEC = PCFORNEC.CODFORNEC '
      'AND PCPRODUT.CODPRODPRINC IN (:CODPRODPRINC)')
    Left = 776
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODPRODPRINC'
        Value = nil
      end>
  end
  object cdsItensInseridosTEMP: TClientDataSet
    PersistDataPacket.Data = {
      2D0300009619E0BD01000000180000001F0000000000030000002D0307434F44
      50524F4404000100000000000944455343524943414F01004900000001000557
      49445448020002003C000B434F44415558494C49415208000400000000000843
      5553544F46494E0800040000000000065056454E444108000400000000000A50
      56454E444141544143080004000000000011505245434F5F434F4E434F525245
      4E544508000400000000000C5154444953504F4E4956454C0800040000000000
      09515456454E444D455308000400000000000A515456454E444D455331080004
      00000000000A515456454E444D45533208000400000000000A515456454E444D
      45533308000400000000000F504552435F56454E44415F415441430800040000
      00000011504552435F56454E44415F564152454A4F08000400000000000E504F
      46455254415F564152454A4F08000400000000000C504F46455254415F415441
      430800040000000000134D415247454D4655545552415F4F4645525441080004
      0000000000114449465F4D415247454D5F4D494E494D4108000400000000000C
      4D4F5449564F4F46455254410100490000000100055749445448020002001400
      0947455241564552424101004900000001000557494454480200020014000B56
      4C5645524241554E495401004900000001000557494454480200020014000943
      4F44464F524E4543040001000000000009434F4446494C49414C010049000000
      0100055749445448020002001400065154554E49540100490000000100055749
      4454480200020014000A464F524E454345444F52010049000000010005574944
      54480200020014000A51544D415856454E444108000400000001000753554254
      5950450200490006004D6F6E65790010564C56455242414D415247454D4D494E
      080004000000010007535542545950450200490006004D6F6E65790012564552
      42414D454E4F5256455242414D494E0100490000000100055749445448020002
      0014000C4D415247454D4D494E494D4108000400000000000D4F464552544146
      414D494C494101004900000001000557494454480200020014000C434F445052
      4F445052494E4304000100000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODPROD'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CODAUXILIAR'
        DataType = ftFloat
      end
      item
        Name = 'CUSTOFIN'
        DataType = ftFloat
      end
      item
        Name = 'PVENDA'
        DataType = ftFloat
      end
      item
        Name = 'PVENDAATAC'
        DataType = ftFloat
      end
      item
        Name = 'PRECO_CONCORRENTE'
        DataType = ftFloat
      end
      item
        Name = 'QTDISPONIVEL'
        DataType = ftFloat
      end
      item
        Name = 'QTVENDMES'
        DataType = ftFloat
      end
      item
        Name = 'QTVENDMES1'
        DataType = ftFloat
      end
      item
        Name = 'QTVENDMES2'
        DataType = ftFloat
      end
      item
        Name = 'QTVENDMES3'
        DataType = ftFloat
      end
      item
        Name = 'PERC_VENDA_ATAC'
        DataType = ftFloat
      end
      item
        Name = 'PERC_VENDA_VAREJO'
        DataType = ftFloat
      end
      item
        Name = 'POFERTA_VAREJO'
        DataType = ftFloat
      end
      item
        Name = 'POFERTA_ATAC'
        DataType = ftFloat
      end
      item
        Name = 'MARGEMFUTURA_OFERTA'
        DataType = ftFloat
      end
      item
        Name = 'DIF_MARGEM_MINIMA'
        DataType = ftFloat
      end
      item
        Name = 'MOTIVOOFERTA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'GERAVERBA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VLVERBAUNIT'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODFORNEC'
        DataType = ftInteger
      end
      item
        Name = 'CODFILIAL'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'QTUNIT'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FORNECEDOR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'QTMAXVENDA'
        DataType = ftCurrency
      end
      item
        Name = 'VLVERBAMARGEMMIN'
        DataType = ftCurrency
      end
      item
        Name = 'VERBAMENORVERBAMIN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MARGEMMINIMA'
        DataType = ftFloat
      end
      item
        Name = 'OFERTAFAMILIA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODPRODPRINC'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 784
    Top = 352
  end
  object cdsFiliaisIncluidas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 240
    object cdsFiliaisIncluidasCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsFiliaisIncluidasRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 100
    end
    object cdsFiliaisIncluidasINCLUIDO: TStringField
      FieldName = 'INCLUIDO'
    end
  end
  object dsFiliaisIncluidas: TDataSource
    DataSet = cdsFiliaisIncluidas
    Left = 56
    Top = 304
  end
  object cdsFiliaisDisponiveis: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 232
    Top = 240
    object StringField1: TStringField
      FieldName = 'CODIGO'
    end
    object StringField2: TStringField
      DisplayWidth = 100
      FieldName = 'RAZAOSOCIAL'
      Size = 100
    end
    object StringField3: TStringField
      FieldName = 'INCLUIDO'
    end
  end
  object dsFiliaisDisponiveis: TDataSource
    DataSet = cdsFiliaisDisponiveis
    Left = 232
    Top = 304
  end
  object qrFiliaisDisponiveis: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      
        'SELECT DISTINCT  '#39'N'#39' INCLUIDO, PCFILIAL.CODIGO CODIGO, NVL(PCFIL' +
        'IAL.FANTASIA, PCFILIAL.RAZAOSOCIAL) AS RAZAOSOCIAL'
      '  FROM PCLIB, PCFILIAL                        '
      ' WHERE PCFILIAL.CODIGO = PCLIB.CODIGOA        '
      '       AND PCFILIAL.CODIGO <> ('#39'99'#39')        '
      '       AND PCLIB.CODFUNC = :CODFUNC    '
      
        '       AND PCFILIAL.CODIGO IN (SELECT DISTINCT CODFILIAL FROM PC' +
        'CAIXA WHERE PCCAIXA.DTFIM IS NULL)             '
      ' ORDER BY PCFILIAL.CODIGO                     ')
    CachedUpdates = True
    Options.SetFieldsReadOnly = False
    Left = 56
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODFUNC'
        Value = nil
      end>
  end
  object qrPesquisaItemInserir: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT'
      'EMBALAGEM.FORNECEDOR,'
      'EMBALAGEM.CODPROD,'
      'EMBALAGEM.CODPRODPRINC,'
      'EMBALAGEM.CODFORNECPRINC,'
      'EMBALAGEM.DESCRICAO,'
      'EMBALAGEM.CODAUXILIAR,'
      'EMBALAGEM.QTMINIMAATACADO,'
      'ROUND(EMBALAGEM.CUSTOFIN * EMBALAGEM.QTUNIT, 2) as CUSTOFIN,'
      'EMBALAGEM.PVENDA,'
      'EMBALAGEM.PVENDAATAC,'
      
        'PKG_I9UTILITARIO.CALCULAR_SUGESTAO(EMBALAGEM.CODFILIAL, EMBALAGE' +
        'M.CODAUXILIAR, '#39'VAREJO'#39') AS PSUGESTAO_VAREJO,'
      
        'PKG_I9UTILITARIO.CALCULAR_SUGESTAO(EMBALAGEM.CODFILIAL, EMBALAGE' +
        'M.CODAUXILIAR, '#39'ATACADO'#39') AS PSUGESTAO_ATAC,'
      
        'PKG_I9UTILITARIO.BUSCA_MARGEM_PRODUTO(EMBALAGEM.CODFILIAL, EMBAL' +
        'AGEM.CODPROD, '#39'MINIMA_ATACADO'#39') AS MARGEMMINIMA,'
      
        'PKG_I9UTILITARIO.COTACAO_PRECO(PCPRODUT.CODPRODPRINC, embalagem.' +
        'codfilial, '#39'VAREJO'#39') PVENDACONCORRENTE,'
      
        'PKG_I9UTILITARIO.COTACAO_PRECO(PCPRODUT.CODPRODPRINC, embalagem.' +
        'codfilial, '#39'ATACADO'#39') PVENDAATACCONCORRENTE,         '
      'EMBALAGEM.QTDISPONIVEL,'
      'EMBALAGEM.QTGIRODIA,'
      'EMBALAGEM.PERC_VENDA_ATAC,'
      'EMBALAGEM.PERC_VENDA_VAREJO,'
      'EMBALAGEM.POFERTA_VAREJO,'
      'EMBALAGEM.POFERTA_ATAC,'
      'EMBALAGEM.MARGEMFUTURA_OFERTA,'
      'EMBALAGEM.DIF_MARGEM_MINIMA,'
      'NVL(EMBALAGEM.MARGEMVAREJO,0) AS "MARGEMVAREJO",'
      'NVL(EMBALAGEM.MARGEMATAC,0) AS "MARGEMATAC",'
      #39'N'#39' AS "INCLUIDO",'
      'EMBALAGEM.CODFORNEC,'
      'EMBALAGEM.QTUNIT,'
      'EMBALAGEM.CODFILIAL,'
      'EMBALAGEM.TEMATACADO'
      'FROM '
      '(SELECT'
      'PCEMBALAGEM.CODFILIAL,'
      'PCPRODUT.CODPROD,'
      'PCPRODUT.DESCRICAO,'
      'PCPRODUT.CODPRODPRINC,'
      'PCFORNEC.CODFORNECPRINC AS CODFORNECPRINC,'
      'PCEMBALAGEM.CODAUXILIAR,'
      'PCEMBALAGEM.QTMINIMAATACADO,'
      'PCEMBALAGEM.QTUNIT,'
      'NVL(PCEST.CUSTOFIN,0) AS CUSTOFIN,'
      'NVL(PCEMBALAGEM.PVENDA,0) AS PVENDA,'
      'NVL(PCEMBALAGEM.PVENDAATAC,0) AS PVENDAATAC,'
      '(NVL(PCEST.QTESTGER,0) -'
      ' NVL(PCEST.QTBLOQUEADA,0) - '
      ' NVL(PCEST.QTRESERV,0)) AS QTDISPONIVEL,'
      ' PCEST.QTGIRODIA,'
      ' NVL(PCEMBALAGEM.PERCVENDAVAREJO,0) AS PERC_VENDA_ATAC,'
      ' NVL(PCEMBALAGEM.PERCVENDAATAC,0) AS PERC_VENDA_VAREJO,'
      ' 0.00 AS POFERTA_VAREJO,'
      ' 0.00 AS POFERTA_ATAC,'
      ' 0.00 AS MARGEMFUTURA_OFERTA,'
      ' 0.00 AS DIF_MARGEM_MINIMA,'
      
        ' PKG_I9UTILITARIO.BUSCA_MARGEM_PRODUTO(PCEMBALAGEM.CODFILIAL, PC' +
        'EMBALAGEM.CODPROD, '#39'VAREJO'#39') AS MARGEMVAREJO,'
      
        ' PKG_I9UTILITARIO.BUSCA_MARGEM_PRODUTO(PCEMBALAGEM.CODFILIAL, PC' +
        'EMBALAGEM.CODPROD, '#39'ATACADO'#39') AS MARGEMATAC,'
      'PCPRODUT.CODFORNEC,'
      
        '(SELECT FORNECEDOR FROM PCFORNEC WHERE CODFORNEC = PCPRODUT.CODF' +
        'ORNEC) AS FORNECEDOR,'
      'DECODE(DECODE(NVL(PCEMBALAGEM.QTMINIMAATACADO,0),'
      '              0, NVL(PCEMBALAGEM.QTMULTIPLA,0),'
      
        '              NVL(PCEMBALAGEM.QTMINIMAATACADO,0)), 0, '#39'N'#39', '#39'S'#39') ' +
        'AS TEMATACADO'
      'FROM PCPRODUT, PCEST, PCEMBALAGEM, PCFORNEC'
      'WHERE PCEMBALAGEM.CODPROD = PCPRODUT.CODPROD'
      'AND PCEMBALAGEM.CODFILIAL = PCEST.CODFILIAL '
      'AND PCFORNEC.CODFORNEC = PCPRODUT.CODFORNEC'
      
        'AND PCEMBALAGEM.QTUNIT IN (SELECT MIN(QTUNIT) FROM PCEMBALAGEM P' +
        'E WHERE PE.CODPROD = PCEMBALAGEM.CODPROD AND PE.CODFILIAL = PCEM' +
        'BALAGEM.CODFILIAL AND PE.DTINATIVO IS NULL)'
      'AND PCPRODUT.CODPROD = PCEST.CODPROD'
      
        'AND PKG_I9UTILITARIO.BUSCACUSTO(PCEMBALAGEM.CODFILIAL, PCEMBALAG' +
        'EM.CODPROD) > 0'
      'AND PCEST.CODFILIAL IN (:CODFILIAL)) EMBALAGEM,'
      'PCEMBALAGEM,'
      'PCPRODUT'
      'WHERE PCEMBALAGEM.CODPROD = EMBALAGEM.CODPROD'
      'AND PCEMBALAGEM.CODFILIAL = EMBALAGEM.CODFILIAL'
      'AND PCPRODUT.CODPROD = EMBALAGEM.CODPROD'
      'AND PCEMBALAGEM.CODAUXILIAR = EMBALAGEM.CODAUXILIAR'
      'AND PCEMBALAGEM.CODPROD = :CODPROD'
      'AND ROWNUM = 1')
    Options.SetFieldsReadOnly = False
    Left = 608
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODFILIAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODPROD'
        Value = nil
      end>
  end
  object qrPesquisaOfertasCadastradas: TUniQuery
    SQLRefresh.Strings = (
      'SELECT'
      #39'N'#39' SELECIONADO,'
      'PCOFERTAPROGRAMADAC.CODOFERTA,'
      'PCOFERTAPROGRAMADAC.CODFILIAL,'
      'PCOFERTAPROGRAMADAC.DESCOFERTA,'
      
        '(SELECT COUNT(*) FROM PCOFERTAPROGRAMADAI WHERE CODOFERTA = PCOF' +
        'ERTAPROGRAMADAC.CODOFERTA) AS QTITENS,'
      'CASE WHEN PCOFERTAPROGRAMADAC.DTLIBERACAO IS NOT NULL'
      '    THEN PCOFERTAPROGRAMADAC.DTINICIAL'
      '    ELSE PCOFERTAPROGRAMADAC.DTINICIALSUGESTAO'
      'END DTINICIALSUGESTAO,'
      'CASE WHEN PCOFERTAPROGRAMADAC.DTLIBERACAO IS NOT NULL'
      '    THEN PCOFERTAPROGRAMADAC.DTFINAL'
      '    ELSE PCOFERTAPROGRAMADAC.DTFINALSUGESTAO'
      'END DTFINALSUGESTAO,'
      'PCOFERTAPROGRAMADAC.TIPO_OFERTA,'
      'PCOFERTAPROGRAMADAC.GERAVERBA,'
      'PCOFERTAPROGRAMADAC.CODFUNCLIBERACAO,'
      'PCOFERTAPROGRAMADAC.DTLIBERACAO,'
      'PCOFERTAPROGRAMADAC.CODFUNCREJEICAO,'
      'PCOFERTAPROGRAMADAC.DTREJEICAO,'
      'PCOFERTAPROGRAMADAC.DTINICIAL,'
      'PCOFERTAPROGRAMADAC.DTFINAL,'
      'PCOFERTAPROGRAMADAC.DTCANCEL,'
      
        'PCFILIAL.CODIGO || '#39'-'#39' || PCFILIAL.razaosocial || '#39' ('#39'|| PCFILIA' +
        'L.CGC || '#39')'#39' FILIAL,'
      'CASE '
      'WHEN PCOFERTAPROGRAMADAC.DTCANCEL IS NOT NULL'
      'THEN '#39'Cancelado'#39
      
        'WHEN PCOFERTAPROGRAMADAC.DTLIBERACAO IS NULL AND PCOFERTAPROGRAM' +
        'ADAC.DTREJEICAO IS NULL'
      'THEN '#39'Aguardando Aprova'#231#227'o'#39
      'WHEN PCOFERTAPROGRAMADAC.DTLIBERACAO IS NOT NULL'
      'THEN '#39'Aprovado'#39
      'WHEN PCOFERTAPROGRAMADAC.DTREJEICAO IS NOT NULL'
      'THEN '#39'Rejeitado'#39
      'END STATUS,'
      'PCOFERTAPROGRAMADAC.CODTABLOIDE'
      'FROM PCOFERTAPROGRAMADAC, PCEMPR, PCFILIAL'
      'WHERE PCEMPR.MATRICULA(+) = PCOFERTAPROGRAMADAC.CODFUNCLIBERACAO'
      'AND   PCOFERTAPROGRAMADAC.CODFILIAL = PCFILIAL.CODIGO'
      'AND   PCOFERTAPROGRAMADAC.CODOFERTA = :CODOFERTA'
      'ORDER BY PCOFERTAPROGRAMADAC.CODOFERTA')
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT'
      #39'N'#39' SELECIONADO,'
      'PCOFERTAPROGRAMADAC.CODOFERTA,'
      'PCOFERTAPROGRAMADAC.CODFILIAL,'
      'PCOFERTAPROGRAMADAC.DESCOFERTA,'
      
        '(SELECT COUNT(*) FROM PCOFERTAPROGRAMADAI WHERE CODOFERTA = PCOF' +
        'ERTAPROGRAMADAC.CODOFERTA) AS QTITENS,'
      'CASE WHEN PCOFERTAPROGRAMADAC.DTLIBERACAO IS NOT NULL'
      '    THEN PCOFERTAPROGRAMADAC.DTINICIAL'
      '    ELSE PCOFERTAPROGRAMADAC.DTINICIALSUGESTAO'
      'END DTINICIALSUGESTAO,'
      'CASE WHEN PCOFERTAPROGRAMADAC.DTLIBERACAO IS NOT NULL'
      '    THEN PCOFERTAPROGRAMADAC.DTFINAL'
      '    ELSE PCOFERTAPROGRAMADAC.DTFINALSUGESTAO'
      'END DTFINALSUGESTAO,'
      'PCOFERTAPROGRAMADAC.TIPO_OFERTA,'
      'PCOFERTAPROGRAMADAC.GERAVERBA,'
      'PCOFERTAPROGRAMADAC.CODFUNCLIBERACAO,'
      'PCOFERTAPROGRAMADAC.DTLIBERACAO,'
      'PCOFERTAPROGRAMADAC.CODFUNCREJEICAO,'
      'PCOFERTAPROGRAMADAC.DTREJEICAO,'
      'PCOFERTAPROGRAMADAC.DTINICIAL,'
      'PCOFERTAPROGRAMADAC.DTFINAL,'
      'PCOFERTAPROGRAMADAC.DTCANCEL,'
      
        'PCFILIAL.CODIGO || '#39'-'#39' || PCFILIAL.razaosocial || '#39' ('#39'|| PCFILIA' +
        'L.CGC || '#39')'#39' FILIAL,'
      'CASE '
      'WHEN PCOFERTAPROGRAMADAC.DTCANCEL IS NOT NULL'
      'THEN '#39'Cancelado'#39
      
        'WHEN PCOFERTAPROGRAMADAC.DTLIBERACAO IS NULL AND PCOFERTAPROGRAM' +
        'ADAC.DTREJEICAO IS NULL'
      'THEN '#39'Aguardando Aprova'#231#227'o'#39
      'WHEN PCOFERTAPROGRAMADAC.DTLIBERACAO IS NOT NULL'
      'THEN '#39'Aprovado'#39
      'WHEN PCOFERTAPROGRAMADAC.DTREJEICAO IS NOT NULL'
      'THEN '#39'Rejeitado'#39
      'END STATUS,'
      'PCOFERTAPROGRAMADAC.CODTABLOIDE'
      'FROM PCOFERTAPROGRAMADAC, PCEMPR, PCFILIAL'
      'WHERE PCEMPR.MATRICULA(+) = PCOFERTAPROGRAMADAC.CODFUNCLIBERACAO'
      'AND   PCOFERTAPROGRAMADAC.CODFILIAL = PCFILIAL.CODIGO'
      'ORDER BY PCOFERTAPROGRAMADAC.CODOFERTA')
    Options.SetFieldsReadOnly = False
    Left = 232
    Top = 464
  end
  object dsPesquisaOfertasCadastradas: TUniDataSource
    DataSet = qrPesquisaOfertasCadastradas
    Left = 232
    Top = 520
  end
  object qrOfertasCadastradasItem: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT PCOFERTAPROGRAMADAC.CODFILIAL,'
      '       PCOFERTAPROGRAMADAC.DESCOFERTA,'
      '       PCOFERTAPROGRAMADAC.DTINICIAL,'
      '       PCOFERTAPROGRAMADAC.DTFINAL,'
      '       ITENS.CODOFERTA,'
      '       ITENS.CODITEM,'
      '       ITENS.CODPROD,'
      '       PCPRODUT.DESCRICAO,'
      '       ITENS.CODAUXILIAR,'
      '       ITENS.VLOFERTA,'
      '       ITENS.VLOFERTAATAC,'
      '       ITENS.MOTIVOOFERTA,'
      '       ITENS.GERAVERBA,'
      '       ITENS.VLUNITARIOVERBA,'
      '       ITENS.VLVERBAMARGEMMIN,'
      '       PCEMBALAGEM.QTUNIT,'
      '       PCEMBALAGEM.QTMINIMAATACADO QTATAC,'
      '       PCEMBALAGEM.PVENDA AS PVENDA,'
      '       PCEMBALAGEM.PVENDAATAC AS PVENDAATAC,'
      '       ROUND (PCEST.CUSTOFIN, 2) AS CUSTOFIN,'
      '       PCEST.QTESTGER,'
      
        '       ROUND ( (PCEST.QTESTGER / DECODE (PCEST.QTGIRODIA, 0, 1, ' +
        'PCEST.QTGIRODIA)), 2) ESTOQUEEMDIAS,'
      
        '       PKG_I9UTILITARIO.COTACAO_PRECO (PCPRODUT.CODPRODPRINC, PC' +
        'EMBALAGEM.CODFILIAL, '#39'VAREJO'#39') PVENDACONCORRENTE,'
      
        '       PKG_I9UTILITARIO.COTACAO_PRECO (PCPRODUT.CODPRODPRINC, PC' +
        'EMBALAGEM.CODFILIAL, '#39'ATACADO'#39') PVENDAATACCONCORRENTE,'
      
        '       PKG_I9UTILITARIO.COTACAO_DATA (PCPRODUT.CODPRODPRINC, PCE' +
        'MBALAGEM.CODFILIAL) DATAULTIMACOTACAO,'
      '       PCCLASSIFICMERC.MARGEMMINATAC,'
      '       PCCLASSIFICMERC.MARGEMMINVAREJO,'
      '       CASE'
      
        '           WHEN PKG_I9UTILITARIO.PRODUTO_TEM_ATACADO (PCOFERTAPR' +
        'OGRAMADAI.CODFILIAL, PCOFERTAPROGRAMADAI.CODAUXILIAR) = '#39'S'#39
      '           THEN'
      '               TRUNC ('
      '                   PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS ('
      
        '                       NVL (PCOFERTAPROGRAMADAI.VLOFERTAATAC, 0)' +
        ','
      
        '                       ( (PKG_I9UTILITARIO.BUSCACUSTO (PCOFERTAP' +
        'ROGRAMADAC.CODFILIAL, PCEMBALAGEM.CODPROD) * PCEMBALAGEM.QTUNIT)'
      
        '                        - NVL (PCOFERTAPROGRAMADAI.VLUNITARIOVER' +
        'BA, 0))'
      '                       * 1),'
      '                   2)'
      '           ELSE'
      '               TRUNC ('
      '                   PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS ('
      '                       NVL (PCOFERTAPROGRAMADAI.VLOFERTA, 0),'
      
        '                       ( (PKG_I9UTILITARIO.BUSCACUSTO (PCOFERTAP' +
        'ROGRAMADAC.CODFILIAL, PCEMBALAGEM.CODPROD) * PCEMBALAGEM.QTUNIT)'
      
        '                        - NVL (PCOFERTAPROGRAMADAI.VLUNITARIOVER' +
        'BA, 0))'
      '                       * 1),'
      '                   2)'
      '       END'
      '           MARGEMFUTURA,'
      '       CASE'
      '           WHEN NVL (PCOFERTAPROGRAMADAI.GERAVERBA, '#39'N'#39') = '#39'S'#39
      '           THEN'
      
        '               (SELECT DECODE (MAX (TIPOVERBA), '#39'DEFINIDO'#39', '#39'DEF' +
        'INIDO'#39', MAX (TIPOVERBA))'
      '                FROM I9CONFIGVERBAOFERTA'
      '                WHERE CODOFERTA = ITENS.CODOFERTA'
      '                      AND CODFORNEC IN (SELECT CODFORNEC'
      '                                        FROM PCFORNEC Y'
      
        '                                        WHERE Y.CODFORNEC IN (SE' +
        'LECT CODFORNECPRINC'
      
        '                                                              FR' +
        'OM PCFORNEC X'
      
        '                                                              WH' +
        'ERE X.CODFORNEC = PCPRODUT.CODFORNEC)))'
      '           ELSE'
      '               '#39#39
      '       END'
      '           TIPOVERBA,'
      '       CASE'
      
        '           WHEN PKG_I9UTILITARIO.PRODUTO_TEM_ATACADO (PCOFERTAPR' +
        'OGRAMADAI.CODFILIAL, PCOFERTAPROGRAMADAI.CODAUXILIAR) = '#39'S'#39
      '           THEN'
      '               (TRUNC ('
      '                    PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS ('
      
        '                        NVL (PCOFERTAPROGRAMADAI.VLOFERTAATAC, 0' +
        '),'
      
        '                        (PKG_I9UTILITARIO.BUSCACUSTO (PCOFERTAPR' +
        'OGRAMADAC.CODFILIAL, PCEMBALAGEM.CODPROD)'
      
        '                         - NVL (PCOFERTAPROGRAMADAI.VLUNITARIOVE' +
        'RBA, 0))'
      '                        * 1),'
      '                    2))'
      '               - PCCLASSIFICMERC.MARGEMMINATAC'
      '           ELSE'
      '               (TRUNC ('
      '                    PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS ('
      '                        NVL (PCOFERTAPROGRAMADAI.VLOFERTA, 0),'
      
        '                        (PKG_I9UTILITARIO.BUSCACUSTO (PCOFERTAPR' +
        'OGRAMADAC.CODFILIAL, PCEMBALAGEM.CODPROD)'
      
        '                         - NVL (PCOFERTAPROGRAMADAI.VLUNITARIOVE' +
        'RBA, 0))'
      '                        * 1),'
      '                    2))'
      '               - PCCLASSIFICMERC.MARGEMMINATAC'
      '       END'
      '           DIFMARGEMATAC'
      'FROM (SELECT PCOFERTAPROGRAMADAI.CODOFERTA,'
      '             PCOFERTAPROGRAMADAI.MOTIVOOFERTA,'
      '             PCOFERTAPROGRAMADAI.CODITEM,'
      '             PCOFERTAPROGRAMADAI.CODAUXILIAR,'
      '             (SELECT MAX (CODPROD)'
      '              FROM PCEMBALAGEM'
      
        '              WHERE CODAUXILIAR = PCOFERTAPROGRAMADAI.CODAUXILIA' +
        'R)'
      '                 AS CODPROD,'
      '             PCOFERTAPROGRAMADAI.VLOFERTA,'
      '             PCOFERTAPROGRAMADAI.VLOFERTAATAC,'
      '             PCOFERTAPROGRAMADAI.GERAVERBA,'
      '             PCOFERTAPROGRAMADAI.VLUNITARIOVERBA,'
      '             PCOFERTAPROGRAMADAI.VLVERBAMARGEMMIN'
      '      FROM PCOFERTAPROGRAMADAI'
      '      WHERE 0 = 0'
      
        '      ORDER BY PCOFERTAPROGRAMADAI.CODOFERTA, PCOFERTAPROGRAMADA' +
        'I.CODITEM ASC) ITENS,'
      '     PCPRODUT,'
      '     PCOFERTAPROGRAMADAC,'
      '     PCEMBALAGEM,'
      '     PCEST,'
      '     PCCLASSIFICMERC,'
      '     PCOFERTAPROGRAMADAI'
      'WHERE     PCOFERTAPROGRAMADAC.CODOFERTA = ITENS.CODOFERTA'
      '      AND PCPRODUT.CODPROD = ITENS.CODPROD'
      '      AND PCOFERTAPROGRAMADAI.CODAUXILIAR = ITENS.CODAUXILIAR'
      
        '      AND PCOFERTAPROGRAMADAI.CODOFERTA = PCOFERTAPROGRAMADAC.CO' +
        'DOFERTA'
      '      AND PCEMBALAGEM.CODAUXILIAR = ITENS.CODAUXILIAR'
      
        '      AND PCCLASSIFICMERC.CODFILIAL = PCOFERTAPROGRAMADAC.CODFIL' +
        'IAL'
      '      AND PCCLASSIFICMERC.CODPROD = ITENS.CODPROD'
      '      AND PCEMBALAGEM.CODFILIAL = PCOFERTAPROGRAMADAC.CODFILIAL'
      '      AND PCEMBALAGEM.QTUNIT = '#39'1'#39
      '      AND PCOFERTAPROGRAMADAC.DTCANCEL IS NULL'
      '      AND PCEMBALAGEM.CODPROD = PCEST.CODPROD'
      '      AND PCEMBALAGEM.CODFILIAL = PCEST.CODFILIAL'
      '      AND PCOFERTAPROGRAMADAC.CODOFERTA = :CODOFERTA'
      'ORDER BY ITENS.CODOFERTA, ITENS.CODITEM')
    MasterSource = dsPesquisaOfertasCadastradas
    Options.SetFieldsReadOnly = False
    Left = 56
    Top = 464
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODOFERTA'
        ParamType = ptInput
        Value = 339
      end>
  end
  object dsOfertasCadastradasItem: TUniDataSource
    DataSet = qrOfertasCadastradasItem
    Left = 56
    Top = 520
  end
  object qrOfertasTabloide: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT   CODOFERTA, CODFILIAL, DTLIBERACAO'
      '  FROM   PCOFERTAPROGRAMADAC'
      ' WHERE   CODTABLOIDE = :CODTABLOIDE '
      ' AND PCOFERTAPROGRAMADAC.DTCANCEL IS NULL')
    Left = 640
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODTABLOIDE'
        Value = nil
      end>
  end
  object qrDadosItensEditar: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT PCOFERTAPROGRAMADAI.CODAUXILIAR,'
      '       PCPRODUT.DESCRICAO,'
      '       NVL (PCOFERTAPROGRAMADAI.VLOFERTA, 0) AS VLOFERTA,'
      
        '       NVL (PCOFERTAPROGRAMADAI.VLOFERTAATAC, 0) AS VLOFERTAATAC' +
        ','
      '       NVL (PCOFERTAPROGRAMADAI.GERAVERBA, '#39'N'#39') AS GERAVERBA,'
      
        '       NVL (VLVERBAUNITARIOORIGINAL, NVL (PCOFERTAPROGRAMADAI.VL' +
        'UNITARIOVERBA, 0)) AS VLUNITARIOVERBA,'
      '       PCEMBALAGEM.CODPROD,'
      '       PCEMBALAGEM.CODFILIAL,'
      '       PCEMBALAGEM.QTUNIT,'
      '       PCPRODUT.CODPRODPRINC,'
      '       PCFORNEC.FORNECEDOR,'
      
        '       DECODE (DECODE (NVL (PCEMBALAGEM.QTMINIMAATACADO, 0), 0, ' +
        'NVL (PCEMBALAGEM.QTMULTIPLA, 0), NVL (PCEMBALAGEM.QTMINIMAATACAD' +
        'O, 0)), 0, '#39'N'#39', '#39'S'#39')'
      '           AS TEMATACADO,'
      
        '       NVL (PCOFERTAPROGRAMADAI.OFERTAFAMILIA, '#39'N'#39') AS OFERTAFAM' +
        'ILIA,'
      
        '       PKG_I9UTILITARIO.BUSCA_MARGEM_PRODUTO (PCEMBALAGEM.CODFIL' +
        'IAL, PCEMBALAGEM.CODPROD, '#39'MINIMA_ATACADO'#39') AS MARGEMMINIMA,'
      '       PCOFERTAPROGRAMADAI.MOTIVOOFERTA,'
      
        '       (NVL (PCEST.QTESTGER, 0) - NVL (PCEST.QTBLOQUEADA, 0) - N' +
        'VL (PCEST.QTRESERV, 0)) AS QTDISPONIVEL,'
      '       NVL (PCEST.QTGIRODIA, 0) AS QTGIRODIA,'
      '       NVL (PCEMBALAGEM.PERCVENDAVAREJO, 0) AS PERC_VENDA_ATAC,'
      '       NVL (PCEMBALAGEM.PERCVENDAATAC, 0) AS PERC_VENDA_VAREJO,'
      
        '       PKG_I9UTILITARIO.COTACAO_PRECO (PCPRODUT.CODPRODPRINC, PC' +
        'EMBALAGEM.CODFILIAL, '#39'VAREJO'#39') PVENDACONCORRENTE,'
      
        '       PKG_I9UTILITARIO.COTACAO_PRECO (PCPRODUT.CODPRODPRINC, PC' +
        'EMBALAGEM.CODFILIAL, '#39'ATACADO'#39') PVENDAATACCONCORRENTE,'
      '       PCFORNEC.CODFORNECPRINC AS CODFORNEC,'
      '       ROUND (NVL (PCEST.CUSTOFIN, 0), 2) AS CUSTOFIN,'
      '       '#39#39' AS MARGEMFUTURA_OFERTA,'
      '       '#39#39' AS DIF_MARGEM_MINIMA,'
      '       PCOFERTAPROGRAMADAC.CODTABLOIDE,'
      '       PCOFERTAPROGRAMADAC.CODOFERTA,'
      '       PCEMBALAGEM.PVENDA,'
      '       PCEMBALAGEM.PVENDAATAC'
      'FROM PCOFERTAPROGRAMADAI,'
      '     PCPRODUT,'
      '     PCEMBALAGEM,'
      '     PCOFERTAPROGRAMADAC,'
      '     PCEST,'
      '     PCFORNEC'
      
        'WHERE     PCOFERTAPROGRAMADAC.CODOFERTA = PCOFERTAPROGRAMADAI.CO' +
        'DOFERTA'
      
        '      AND PCEMBALAGEM.CODAUXILIAR = PCOFERTAPROGRAMADAI.CODAUXIL' +
        'IAR'
      '      AND PCPRODUT.CODPROD = PCEMBALAGEM.CODPROD'
      '      AND PCFORNEC.CODFORNEC = PCPRODUT.CODFORNEC'
      '      AND PCEST.CODPROD = PCPRODUT.CODPROD'
      '      AND PCEST.CODFILIAL = PCEMBALAGEM.CODFILIAL'
      '      AND PCOFERTAPROGRAMADAC.CODFILIAL = PCEMBALAGEM.CODFILIAL'
      '      AND PCOFERTAPROGRAMADAI.CODOFERTA = :CODOFERTA'
      '      AND PCEMBALAGEM.QTUNIT IN (SELECT MIN (QTUNIT)'
      '                                 FROM PCEMBALAGEM PE'
      
        '                                 WHERE PE.CODPROD = PCEMBALAGEM.' +
        'CODPROD AND PE.DTINATIVO IS NULL)'
      '      AND NVL (PCOFERTAPROGRAMADAI.PRODPRINCIPAL, '#39'S'#39') = '#39'S'#39)
    Options.SetFieldsReadOnly = False
    Left = 504
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODOFERTA'
        Value = nil
      end>
  end
  object qrInsereLogAlteracao: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'DECLARE'
      '    REG I9LOGALTERACAO%ROWTYPE;'
      'BEGIN'
      ''
      '    REG.CODFILIAL := :CODFILIAL;'
      '    REG.CODOFERTA := :CODOFERTA;'
      '    REG.CODPROD := :CODPROD;'
      #9'REG.CODAUXILIAR := :CODAUXILIAR;'
      '    REG.DATA := SYSDATE;'
      '    REG.TERMINAL := USERENV('#39'TERMINAL'#39');'
      '    REG.USUARIO := :NOMEUSUARIO;'
      #9'REG.PROGRAMA := '#39'PCPVC9810.EXE'#39';'
      '    REG.VLVERBA := :VLVERBA;'
      '    REG.VLVERBAANT := :VLVERBAANT;'
      '    '
      '    INSERT INTO I9LOGALTERACAO VALUES REG;'
      'END;')
    Left = 456
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODFILIAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODOFERTA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODPROD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODAUXILIAR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOMEUSUARIO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VLVERBA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VLVERBAANT'
        Value = nil
      end>
  end
  object prcAtualizarEtiquetas: TUniStoredProc
    StoredProcName = 'PKG_I9UTILITARIO.ATUALIZAR_ETIQUETAS'
    SQL.Strings = (
      'begin'
      
        '  PKG_I9UTILITARIO.ATUALIZAR_ETIQUETAS(:P_CODFILIAL, :P_CODPROD,' +
        ' :P_COMMITAR);'
      'end;')
    Connection = DmLogin.Conexao
    Left = 800
    Top = 504
    ParamData = <
      item
        DataType = ftString
        Name = 'P_CODFILIAL'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_CODPROD'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'P_COMMITAR'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'PKG_I9UTILITARIO.ATUALIZAR_ETIQUETAS'
  end
  object qryValidaJaEmPrecoFixo: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT PCPRECOPROM.CODPRECOPROM AS CODOFERTA,'
      '       PCEMBALAGEM.CODAUXILIAR,'
      '       PCPRECOPROM.CODFILIAL,'
      '       PCEMBALAGEM.CODPROD,'
      '       NVL (PCPRECOPROM.PRECOFIXO, 0) AS VALOR'
      '  FROM PCPRECOPROM, PCEMBALAGEM'
      ' WHERE     1 = 1'
      '       AND PCEMBALAGEM.CODFILIAL = PCPRECOPROM.CODFILIAL'
      '       AND PCPRECOPROM.CODPROD = PCEMBALAGEM.CODPROD'
      '       AND PCEMBALAGEM.CODFILIAL = :CODFILIAL'
      '       AND PCPRECOPROM.DTFIMVIGENCIA >= TRUNC (SYSDATE)'
      '       AND NVL (PCPRECOPROM.FRENTECX, '#39'N'#39') = '#39'S'#39
      '       AND PCPRECOPROM.CODPROD IN (SELECT Y.CODPROD'
      '                                     FROM PCPRODUT Y'
      
        '                                    WHERE Y.CODPRODPRINC IN (SEL' +
        'ECT X.CODPRODPRINC'
      
        '                                                               F' +
        'ROM PCPRODUT X'
      
        '                                                              WH' +
        'ERE X.CODPROD = :CODPROD))'
      
        '       AND PCPRECOPROM.NUMREGIAO = NVL (PKG_I9UTILITARIO.BUSCAPA' +
        'RAMETRO (PCEMBALAGEM.CODFILIAL, '#39'NUMREGIAOPADRAOVAREJO'#39'), '#39'1'#39')'
      
        '       AND (   TRUNC (PCPRECOPROM.DTINICIOVIGENCIA) BETWEEN TRUN' +
        'C ( :DTINI) AND TRUNC ( :DTFIM)'
      
        '            OR TRUNC (PCPRECOPROM.DTFIMVIGENCIA) BETWEEN TRUNC (' +
        ' :DTINI) AND TRUNC ( :DTFIM)'
      
        '            OR TRUNC ( :DTINI) BETWEEN TRUNC (PCPRECOPROM.DTINIC' +
        'IOVIGENCIA) AND TRUNC (PCPRECOPROM.DTFIMVIGENCIA)'
      
        '            OR TRUNC ( :DTFIM) BETWEEN TRUNC (PCPRECOPROM.DTINIC' +
        'IOVIGENCIA) AND TRUNC (PCPRECOPROM.DTFIMVIGENCIA))')
    Left = 448
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODFILIAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODPROD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTINI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTFIM'
        Value = nil
      end>
  end
  object qrValidaOferta2017: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      '  SELECT   2017 AS CODOFERTA,'
      '           PCEMBALAGEM.CODAUXILIAR,'
      '           PCEMBALAGEM.CODFILIAL,'
      '           PCEMBALAGEM.CODPROD,'
      '           NVL (PCEMBALAGEM.POFERTA, 0) AS VALOR'
      '    FROM   PCEMBALAGEM'
      '   WHERE       PCEMBALAGEM.CODPROD = :CODPROD'
      '           AND PCEMBALAGEM.CODFILIAL = :CODFILIAL'
      '           AND NVL(PCEMBALAGEM.POFERTA, 0) > 0'
      
        '           AND (   TRUNC (PCEMBALAGEM.DTOFERTAINI) BETWEEN TRUNC' +
        ' (:DTINI) AND TRUNC (:DTFIM)'
      
        '                OR TRUNC (PCEMBALAGEM.DTOFERTAFIM) BETWEEN TRUNC' +
        ' (:DTINI) AND TRUNC (:DTFIM)'
      
        '                OR TRUNC (PCEMBALAGEM.DTOFERTAATACINI) BETWEEN T' +
        'RUNC (:DTINI) AND TRUNC (:DTFIM)'
      
        '                OR TRUNC (PCEMBALAGEM.DTOFERTAATACfim) BETWEEN T' +
        'RUNC (:DTINI) AND TRUNC (:DTFIM)'
      
        '                OR TRUNC (:DTINI) BETWEEN TRUNC (PCEMBALAGEM.DTO' +
        'FERTAINI)'
      
        '                                      AND  TRUNC (PCEMBALAGEM.DT' +
        'OFERTAFIM)'
      
        '                OR TRUNC (:DTFIM) BETWEEN TRUNC (PCEMBALAGEM.DTO' +
        'FERTAINI)'
      
        '                                      AND  TRUNC (PCEMBALAGEM.DT' +
        'OFERTAFIM)'
      
        '                OR TRUNC (:DTINI) BETWEEN TRUNC (PCEMBALAGEM.DTO' +
        'FERTAATACINI) AND TRUNC (PCEMBALAGEM.DTOFERTAATACfim)'
      
        '                OR TRUNC (:DTFIM) BETWEEN TRUNC (PCEMBALAGEM.DTO' +
        'FERTAATACINI) AND TRUNC (PCEMBALAGEM.DTOFERTAATACfim))'
      'ORDER BY   PCEMBALAGEM.QTUNIT ASC')
    Left = 328
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODPROD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTINI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTFIM'
        Value = nil
      end>
  end
end
