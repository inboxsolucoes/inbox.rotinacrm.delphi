object DMPrecificacao: TDMPrecificacao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 350
  Width = 535
  object qryEmbalagens: TUniQuery
    SQLUpdate.Strings = (
      'UPDATE PCEMBALAGEM'
      'SET CODAUXILIAR = CODAUXILIAR'
      'WHERE CODFILIAL = :CODFILIAL AND CODAUXILIAR = :CODAUXILIAR')
    SQLRefresh.Strings = (
      'SELECT   pcembalagem.codfilial,'
      '         TRUNC(pcembalagem.codprod) as codprod,'
      '         pcprodut.descricao,'
      '         pcprodut.codprodprinc,'
      '         pcprodut.sensibilidade,'
      '         pcembalagem.codauxiliar,'
      '         pcembalagem.qtunit,'
      '         pcembalagem.qtminimaatacado,'
      
        '         decode(nvl(pcembalagem.fatorpreco,1), 0 ,1,nvl(pcembala' +
        'gem.fatorpreco,1)) fatorpreco,'
      '         DECODE( NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ),'
      '               0, 1,'
      '               NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ) )'
      '           AS PERVARIACAOPTABELA,'
      '         pcembalagem.embalagem,'
      
        '         ROUND(PKG_I9UTILITARIO.BUSCACUSTO(PCEST.CODFILIAL, PCES' +
        'T.CODPROD) * NVL(PCEMBALAGEM.QTUNIT,1), 2) AS custofin,'
      '         pcembalagem.codfuncaltptabela,'
      '         NVL(pcembalagem.ptabela,0) as ptabela,'
      '         NVL(pcembalagem.pvenda,0) as pvenda,'
      '         NVL(pcembalagem.ptabelaatac,0) as ptabelaatac,'
      '         NVL(pcembalagem.pvendaatac,0) as pvendaatac,'
      '         pcembalagem.posranking,'
      '         pcembalagem.percvendavarejo,'
      '         pcembalagem.percvendaatac, '
      
        '         round(familia.customedio * pcembalagem.qtunit,2) custom' +
        'ediofamilia,'
      '         pcest.dtultent,'
      '         pcest.qtestger,'
      
        '         PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(PCEMBALAGEM.PV' +
        'ENDA, PKG_I9UTILITARIO.CALCULAR_SUGESTAO(PCEMBALAGEM.CODFILIAL, ' +
        'PCEMBALAGEM.CODAUXILIAR, '#39'VAREJO'#39')) DIFSUGESTAO,'
      
        '         PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(PCEMBALAGEM.PV' +
        'ENDA, PKG_I9UTILITARIO.CALCULAR_SUGESTAO(PCEMBALAGEM.CODFILIAL, ' +
        'PCEMBALAGEM.CODAUXILIAR, '#39'ATACADO'#39')) DIFSUGESTAOATAC,'
      
        '         PKG_I9UTILITARIO.CALCULAR_SUGESTAO(PCEMBALAGEM.CODFILIA' +
        'L, PCEMBALAGEM.CODAUXILIAR, '#39'VAREJO'#39') as PSUGESTAO,'
      
        '         PKG_I9UTILITARIO.CALCULAR_SUGESTAO(PCEMBALAGEM.CODFILIA' +
        'L, PCEMBALAGEM.CODAUXILIAR, '#39'ATACADO'#39') as PSUGESTAO_ATAC,'
      
        '         PKG_I9UTILITARIO.ARREDONDAR_PRECO(PKG_I9UTILITARIO.CALC' +
        'ULAR_SUGESTAO(PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODAUXILIAR, '#39'V' +
        'AREJO'#39')) as PSUGESTAO_ARREDONDADO,'
      
        '         PKG_I9UTILITARIO.ARREDONDAR_PRECO(PKG_I9UTILITARIO.CALC' +
        'ULAR_SUGESTAO(PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODAUXILIAR, '#39'A' +
        'TACADO'#39')) as PSUGESTAO_ATAC_ARREDONDADO,'
      
        '         PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(PCEMBALAGEM.PV' +
        'ENDA, PKG_I9UTILITARIO.BUSCACUSTO(PCEMBALAGEM.CODFILIAL, PCEMBAL' +
        'AGEM.CODPROD) * PCEMBALAGEM.QTUNIT) MARGEM_ATUAL_VAR,'
      
        '         PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(PCEMBALAGEM.PV' +
        'ENDAATAC, PKG_I9UTILITARIO.BUSCACUSTO(PCEMBALAGEM.CODFILIAL, PCE' +
        'MBALAGEM.CODPROD) * PCEMBALAGEM.QTUNIT) MARGEM_ATUAL_ATAC,'
      
        '         PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(PCEMBALAGEM.PT' +
        'ABELA, PKG_I9UTILITARIO.BUSCACUSTO(PCEMBALAGEM.CODFILIAL, PCEMBA' +
        'LAGEM.CODPROD) * PCEMBALAGEM.QTUNIT) MARGEM_FUT_VAR,'
      
        '         PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(PCEMBALAGEM.PT' +
        'ABELAATAC, PKG_I9UTILITARIO.BUSCACUSTO(PCEMBALAGEM.CODFILIAL, PC' +
        'EMBALAGEM.CODPROD) * PCEMBALAGEM.QTUNIT) MARGEM_FUT_ATAC,'
      '         pcclassificmerc.margemvarejo,'
      '         pcclassificmerc.margematac,'
      '         pcclassificmerc.margemminvarejo,'
      '         pcclassificmerc.margemminatac,'
      
        '         PKG_I9UTILITARIO.COTACAO_PRECO(pcprodut.codprodprinc, p' +
        'cembalagem.codfilial, '#39'VAREJO'#39') pvendaconcorrente,'
      
        '         PKG_I9UTILITARIO.COTACAO_PRECO(pcprodut.codprodprinc, p' +
        'cembalagem.codfilial, '#39'ATACADO'#39') pvendaatacconcorrente,         '
      
        '         PKG_I9UTILITARIO.COTACAO_DATA(pcprodut.codprodprinc, pc' +
        'embalagem.codfilial) dataultimacotacao,'
      '         NVL(pcembalagem.precofixo, '#39'N'#39') precofixo,'
      
        '         (pkg_i9clubecrm.buscaprecocrm(pcembalagem.codfilial, pc' +
        'embalagem.codauxiliar) * pcembalagem.qtunit) as PRECOATUALCRM,'
      '         DECODE ( (SELECT COUNT ( * )'
      '                 FROM PCEST X'
      '                 WHERE X.CODPROD = PCEST.CODPROD'
      
        '                       AND NVL(X.CUSTOFIN,0) <> NVL(PCEST.CUSTOF' +
        'IN,0)'
      '                       AND X.CODFILIAL <> PCEST.CODFILIAL'
      '                       AND NVL(X.QTESTGER,0) > 0'
      '                       AND X.CODFILIAL IN (SELECT CODFILIAL'
      '                                           FROM I9GRUPOFILIALI'
      
        '                                           WHERE I9GRUPOFILIALI.' +
        'CODGRUPO IN (SELECT CODGRUPO'
      
        '                                                                ' +
        '             FROM I9GRUPOFILIALC'
      
        '                                                                ' +
        '             WHERE I9GRUPOFILIALC.CODFILIALPRINC = :CODFILIAL)))' +
        ','
      '               0, '#39'N'#39','
      '               '#39'S'#39') AS CUSTODIF'
      '  FROM   pcembalagem,'
      '         pcprodut,'
      '         pcest,'
      '         pcclassificmerc,'
      '  (SELECT   principais.codprodprinc,'
      '           est.codfilial,'
      
        '           ROUND ( (SUM (est.custofin) / COUNT (est.codprod)), 2' +
        ') customedio'
      '    FROM   pcest est,'
      '           pcprodut prod,'
      
        '           (  SELECT   DISTINCT codprodprinc FROM pcprodut) prin' +
        'cipais'
      '   WHERE   prod.codprod = est.codprod'
      '           AND prod.codprod IN'
      '                      (SELECT   codprod'
      '                         FROM   pcprodut'
      
        '                        WHERE   codprodprinc = principais.codpro' +
        'dprinc)'
      'GROUP BY   est.codfilial, principais.codprodprinc) familia'
      ' WHERE  pcembalagem.codprod = pcprodut.codprod'
      ' AND pcembalagem.codfilial = pcest.codfilial'
      ' AND pcembalagem.codprod = pcest.codprod'
      ' AND PCEMBALAGEM.CODPROD = pcclassificmerc.CODPROD'
      ' AND PCEMBALAGEM.CODFILIAL = pcclassificmerc.CODFILIAL'
      ' AND pcprodut.codprodprinc = familia.codprodprinc'
      ' AND pcembalagem.codfilial = familia.codfilial'
      ' AND pcembalagem.codfilial = :codfilial     '
      ' AND pcembalagem.codauxiliar = :codauxiliar'
      
        ' AND PKG_I9UTILITARIO.BUSCACUSTO(PCEMBALAGEM.CODFILIAL, PCEMBALA' +
        'GEM.CODPROD) > 0'
      'ORDER BY CODPROD, QTUNIT')
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT   pcembalagem.codfilial,'
      '         TRUNC(pcembalagem.codprod) as codprod,'
      '         pcprodut.descricao,'
      '         pcprodut.codprodprinc,'
      '         pcprodut.sensibilidade,'
      '         pcembalagem.codauxiliar,'
      '         pcembalagem.qtunit,'
      '         pcembalagem.qtminimaatacado,'
      
        '         decode(nvl(pcembalagem.fatorpreco,1), 0 ,1,nvl(pcembala' +
        'gem.fatorpreco,1)) fatorpreco,'
      '         DECODE( NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ),'
      '               0, 1,'
      '               NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ) )'
      '           AS PERVARIACAOPTABELA,'
      '         pcembalagem.embalagem,'
      
        '         ROUND(PKG_I9UTILITARIO.BUSCACUSTO(PCEST.CODFILIAL, PCES' +
        'T.CODPROD) * NVL(PCEMBALAGEM.QTUNIT,1), 2) AS custofin,'
      '         pcembalagem.codfuncaltptabela,'
      '         NVL(pcembalagem.ptabela,0) as ptabela,'
      '         NVL(pcembalagem.pvenda,0) as pvenda,'
      '         NVL(pcembalagem.ptabelaatac,0) as ptabelaatac,'
      '         NVL(pcembalagem.pvendaatac,0) as pvendaatac,'
      '         pcembalagem.posranking,'
      '         pcembalagem.percvendavarejo,'
      '         pcembalagem.percvendaatac, '
      
        '         round(familia.customedio * pcembalagem.qtunit,2) custom' +
        'ediofamilia,'
      '         pcest.dtultent,'
      '         pcest.qtultent,'
      '         pcest.qtestger,'
      
        '         FNC_BUSCA_PRECO_PERSONALIZADA(PCEMBALAGEM.CODFILIAL, PC' +
        'EMBALAGEM.CODAUXILIAR,'#39'VAREJO'#39') AS PRECO_ATUAL_VAREJO,'
      
        '         FNC_BUSCA_PRECO_PERSONALIZADA(PCEMBALAGEM.CODFILIAL, PC' +
        'EMBALAGEM.CODAUXILIAR,'#39'ATACADO'#39') AS PRECO_ATUAL_ATACADO,'
      
        '         PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(PCEMBALAGEM.PV' +
        'ENDA, PKG_I9UTILITARIO.CALCULAR_SUGESTAO(PCEMBALAGEM.CODFILIAL, ' +
        'PCEMBALAGEM.CODAUXILIAR, '#39'VAREJO'#39')) DIFSUGESTAO,'
      
        '         PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(PCEMBALAGEM.PV' +
        'ENDA, PKG_I9UTILITARIO.CALCULAR_SUGESTAO(PCEMBALAGEM.CODFILIAL, ' +
        'PCEMBALAGEM.CODAUXILIAR, '#39'ATACADO'#39')) DIFSUGESTAOATAC,'
      
        '         PKG_I9UTILITARIO.CALCULAR_SUGESTAO(PCEMBALAGEM.CODFILIA' +
        'L, PCEMBALAGEM.CODAUXILIAR, '#39'VAREJO'#39') as PSUGESTAO,'
      
        '         PKG_I9UTILITARIO.CALCULAR_SUGESTAO(PCEMBALAGEM.CODFILIA' +
        'L, PCEMBALAGEM.CODAUXILIAR, '#39'ATACADO'#39') as PSUGESTAO_ATAC,'
      
        '         PKG_I9UTILITARIO.ARREDONDAR_PRECO(PKG_I9UTILITARIO.CALC' +
        'ULAR_SUGESTAO(PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODAUXILIAR, '#39'V' +
        'AREJO'#39')) as PSUGESTAO_ARREDONDADO,'
      
        '         PKG_I9UTILITARIO.ARREDONDAR_PRECO(PKG_I9UTILITARIO.CALC' +
        'ULAR_SUGESTAO(PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODAUXILIAR, '#39'A' +
        'TACADO'#39')) as PSUGESTAO_ATAC_ARREDONDADO,'
      
        '         PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(PCEMBALAGEM.PV' +
        'ENDA, PKG_I9UTILITARIO.BUSCACUSTO(PCEMBALAGEM.CODFILIAL, PCEMBAL' +
        'AGEM.CODPROD) * PCEMBALAGEM.QTUNIT) MARGEM_ATUAL_VAR,'
      
        '         PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(PCEMBALAGEM.PV' +
        'ENDAATAC, PKG_I9UTILITARIO.BUSCACUSTO(PCEMBALAGEM.CODFILIAL, PCE' +
        'MBALAGEM.CODPROD) * PCEMBALAGEM.QTUNIT) MARGEM_ATUAL_ATAC,'
      
        '         PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(PCEMBALAGEM.PT' +
        'ABELA, PKG_I9UTILITARIO.BUSCACUSTO(PCEMBALAGEM.CODFILIAL, PCEMBA' +
        'LAGEM.CODPROD) * PCEMBALAGEM.QTUNIT) MARGEM_FUT_VAR,'
      
        '         PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(PCEMBALAGEM.PT' +
        'ABELAATAC, PKG_I9UTILITARIO.BUSCACUSTO(PCEMBALAGEM.CODFILIAL, PC' +
        'EMBALAGEM.CODPROD) * PCEMBALAGEM.QTUNIT) MARGEM_FUT_ATAC,'
      '         pcclassificmerc.margemvarejo,'
      '         pcclassificmerc.margematac,'
      '         pcclassificmerc.margemminvarejo,'
      '         pcclassificmerc.margemminatac,'
      
        '         PKG_I9UTILITARIO.COTACAO_PRECO(pcprodut.codprodprinc, p' +
        'cembalagem.codfilial, '#39'VAREJO'#39') pvendaconcorrente,'
      
        '         PKG_I9UTILITARIO.COTACAO_PRECO(pcprodut.codprodprinc, p' +
        'cembalagem.codfilial, '#39'ATACADO'#39') pvendaatacconcorrente,         '
      
        '         PKG_I9UTILITARIO.COTACAO_DATA(pcprodut.codprodprinc, pc' +
        'embalagem.codfilial) dataultimacotacao,'
      '         NVL(pcembalagem.precofixo, '#39'N'#39') precofixo,'
      
        '         (pkg_i9clubecrm.buscaprecocrm(pcembalagem.codfilial, pc' +
        'embalagem.codauxiliar) * pcembalagem.qtunit) as PRECOATUALCRM,'
      '         DECODE ( (SELECT COUNT ( * )'
      '                 FROM PCEST X'
      '                 WHERE X.CODPROD = PCEST.CODPROD'
      
        '                       AND NVL(X.CUSTOFIN,0) <> NVL(PCEST.CUSTOF' +
        'IN,0)'
      '                       AND X.CODFILIAL <> PCEST.CODFILIAL'
      '                       AND NVL(X.QTESTGER,0) > 0'
      '                       AND X.CODFILIAL IN (SELECT CODFILIAL'
      '                                           FROM I9GRUPOFILIALI'
      
        '                                           WHERE I9GRUPOFILIALI.' +
        'CODGRUPO IN (SELECT CODGRUPO'
      
        '                                                                ' +
        '             FROM I9GRUPOFILIALC'
      
        '                                                                ' +
        '             WHERE I9GRUPOFILIALC.CODFILIALPRINC = :CODFILIAL)))' +
        ','
      '               0, '#39'N'#39','
      '               '#39'S'#39') AS CUSTODIF'
      '  FROM   pcembalagem,'
      '         pcprodut,'
      '         pcest,'
      '         pcclassificmerc,'
      '  (SELECT   principais.codprodprinc,'
      '           est.codfilial,'
      
        '           ROUND ( (SUM (est.custofin) / COUNT (est.codprod)), 2' +
        ') customedio'
      '    FROM   pcest est,'
      '           pcprodut prod,'
      
        '           (  SELECT   DISTINCT codprodprinc FROM pcprodut) prin' +
        'cipais'
      '   WHERE   prod.codprod = est.codprod'
      '           AND prod.codprod IN'
      '                      (SELECT   codprod'
      '                         FROM   pcprodut'
      
        '                        WHERE   codprodprinc = principais.codpro' +
        'dprinc)'
      '           AND est.codfilial = :codfilial'
      'GROUP BY   est.codfilial, principais.codprodprinc) familia'
      ' WHERE  pcembalagem.codprod = pcprodut.codprod'
      ' AND pcembalagem.codfilial = pcest.codfilial'
      ' AND pcembalagem.codprod = pcest.codprod'
      ' AND PCEMBALAGEM.CODPROD = pcclassificmerc.CODPROD'
      ' AND PCEMBALAGEM.CODFILIAL = pcclassificmerc.CODFILIAL'
      ' AND pcprodut.codprodprinc = familia.codprodprinc'
      ' AND pcembalagem.codfilial = familia.codfilial'
      ' AND pcembalagem.codfilial = :codfilial     '
      
        ' AND PKG_I9UTILITARIO.BUSCACUSTO(PCEMBALAGEM.CODFILIAL, PCEMBALA' +
        'GEM.CODPROD) > 0'
      'ORDER BY CODPROD, QTUNIT')
    Options.SetFieldsReadOnly = False
    Options.UpdateAllFields = True
    AfterPost = qryEmbalagensAfterPost
    Left = 40
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codfilial'
        Value = nil
      end>
    object qryEmbalagensCODFILIAL: TStringField
      FieldName = 'CODFILIAL'
      Required = True
      Size = 2
    end
    object qryEmbalagensCODPROD: TFloatField
      FieldName = 'CODPROD'
    end
    object qryEmbalagensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qryEmbalagensCODPRODPRINC: TIntegerField
      FieldName = 'CODPRODPRINC'
      ReadOnly = True
    end
    object qryEmbalagensSENSIBILIDADE: TStringField
      FieldName = 'SENSIBILIDADE'
      ReadOnly = True
      Size = 3
    end
    object qryEmbalagensCODAUXILIAR: TFloatField
      FieldName = 'CODAUXILIAR'
      Required = True
    end
    object qryEmbalagensQTUNIT: TFloatField
      FieldName = 'QTUNIT'
    end
    object qryEmbalagensQTMINIMAATACADO: TFloatField
      FieldName = 'QTMINIMAATACADO'
      OnChange = qryEmbalagensQTMINIMAATACADOChange
    end
    object qryEmbalagensEMBALAGEM: TStringField
      FieldName = 'EMBALAGEM'
      Size = 12
    end
    object qryEmbalagensCUSTOFIN: TFloatField
      FieldName = 'CUSTOFIN'
      ReadOnly = True
    end
    object qryEmbalagensPTABELA: TFloatField
      FieldName = 'PTABELA'
      OnChange = qryEmbalagensPTABELAChange
    end
    object qryEmbalagensPVENDA: TFloatField
      FieldName = 'PVENDA'
      OnChange = qryEmbalagensPVENDAChange
    end
    object qryEmbalagensPTABELAATAC: TFloatField
      FieldName = 'PTABELAATAC'
      OnChange = qryEmbalagensPTABELAATACChange
    end
    object qryEmbalagensPVENDAATAC: TFloatField
      FieldName = 'PVENDAATAC'
      OnChange = qryEmbalagensPVENDAATACChange
    end
    object qryEmbalagensPOSRANKING: TLargeintField
      FieldName = 'POSRANKING'
    end
    object qryEmbalagensPERCVENDAVAREJO: TFloatField
      FieldName = 'PERCVENDAVAREJO'
    end
    object qryEmbalagensPERCVENDAATAC: TFloatField
      FieldName = 'PERCVENDAATAC'
    end
    object qryEmbalagensCUSTOMEDIOFAMILIA: TFloatField
      FieldName = 'CUSTOMEDIOFAMILIA'
      ReadOnly = True
    end
    object qryEmbalagensDTULTENT: TDateTimeField
      FieldName = 'DTULTENT'
      ReadOnly = True
    end
    object qryEmbalagensPSUGESTAO: TFloatField
      FieldName = 'PSUGESTAO'
      ReadOnly = True
    end
    object qryEmbalagensPSUGESTAO_ATAC: TFloatField
      FieldName = 'PSUGESTAO_ATAC'
      ReadOnly = True
    end
    object qryEmbalagensPSUGESTAO_ARREDONDADO: TFloatField
      FieldName = 'PSUGESTAO_ARREDONDADO'
      ReadOnly = True
    end
    object qryEmbalagensPSUGESTAO_ATAC_ARREDONDADO: TFloatField
      FieldName = 'PSUGESTAO_ATAC_ARREDONDADO'
      ReadOnly = True
    end
    object qryEmbalagensMARGEM_ATUAL_VAR: TFloatField
      FieldName = 'MARGEM_ATUAL_VAR'
      ReadOnly = True
    end
    object qryEmbalagensMARGEM_ATUAL_ATAC: TFloatField
      FieldName = 'MARGEM_ATUAL_ATAC'
      ReadOnly = True
    end
    object qryEmbalagensMARGEM_FUT_VAR: TFloatField
      FieldName = 'MARGEM_FUT_VAR'
      ReadOnly = True
    end
    object qryEmbalagensMARGEM_FUT_ATAC: TFloatField
      FieldName = 'MARGEM_FUT_ATAC'
      ReadOnly = True
    end
    object qryEmbalagensFATORPRECO: TFloatField
      FieldName = 'FATORPRECO'
      OnChange = qryEmbalagensFATORPRECOChange
    end
    object qryEmbalagensMARGEMVAREJO: TFloatField
      FieldName = 'MARGEMVAREJO'
      OnChange = qryEmbalagensMARGEMVAREJOChange
    end
    object qryEmbalagensMARGEMATAC: TFloatField
      FieldName = 'MARGEMATAC'
      OnChange = qryEmbalagensMARGEMATACChange
    end
    object qryEmbalagensMARGEMMINVAREJO: TFloatField
      FieldName = 'MARGEMMINVAREJO'
      OnChange = qryEmbalagensMARGEMMINVAREJOChange
    end
    object qryEmbalagensMARGEMMINATAC: TFloatField
      FieldName = 'MARGEMMINATAC'
      OnChange = qryEmbalagensMARGEMMINATACChange
    end
    object qryEmbalagensDIFSUGESTAO: TFloatField
      FieldName = 'DIFSUGESTAO'
      ReadOnly = True
    end
    object qryEmbalagensDIFSUGESTAOATAC: TFloatField
      FieldName = 'DIFSUGESTAOATAC'
      ReadOnly = True
    end
    object qryEmbalagensCODFUNCALTPTABELA: TIntegerField
      FieldName = 'CODFUNCALTPTABELA'
    end
    object qryEmbalagensQTESTGER: TFloatField
      FieldName = 'QTESTGER'
      ReadOnly = True
    end
    object qryEmbalagensDATAULTIMACOTACAO: TDateTimeField
      FieldName = 'DATAULTIMACOTACAO'
    end
    object qryEmbalagensPVENDACONCORRENTE: TFloatField
      FieldName = 'PVENDACONCORRENTE'
    end
    object qryEmbalagensPVENDAATACCONCORRENTE: TFloatField
      FieldName = 'PVENDAATACCONCORRENTE'
    end
    object qryEmbalagensQTULTENT: TFloatField
      FieldName = 'QTULTENT'
    end
    object qryEmbalagensPRECO_ATUAL_VAREJO: TFloatField
      FieldName = 'PRECO_ATUAL_VAREJO'
      ReadOnly = True
    end
    object qryEmbalagensPRECO_ATUAL_ATACADO: TFloatField
      FieldName = 'PRECO_ATUAL_ATACADO'
      ReadOnly = True
    end
    object qryEmbalagensPRECOFIXO: TStringField
      FieldName = 'PRECOFIXO'
      OnChange = qryEmbalagensPRECOFIXOChange
      Size = 1
    end
    object qryEmbalagensPRECOATUALCRM: TFloatField
      FieldName = 'PRECOATUALCRM'
    end
    object qryEmbalagensCUSTODIF: TStringField
      FieldName = 'CUSTODIF'
      Size = 1
    end
    object qryEmbalagensPERVARIACAOPTABELA: TFloatField
      FieldName = 'PERVARIACAOPTABELA'
    end
  end
  object dsEmbalagens: TDataSource
    DataSet = qryEmbalagens
    Left = 40
    Top = 72
  end
  object qryCustoMedio: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT PCPRODUT.CODPROD,'
      '       PCPRODUT.DESCRICAO,'
      '       PCPRODUT.EMBALAGEM,'
      '       PCPRODUT.UNIDADE,'
      '       PCEST.CODFILIAL,'
      '       NVL (PCEST.QTESTGER, 0) AS QTESTGER,'
      '       (SELECT SUM (QTESTGER)'
      '        FROM PCEST'
      '        WHERE PCEST.CODFILIAL = :CODFILIAL'
      '              AND PCEST.CODPROD IN (SELECT CODPROD'
      '                                    FROM PCPRODUT'
      
        '                                    WHERE CODPRODPRINC = :CODPRO' +
        'DPRINC))'
      '           TOTALESTOQUEFAMILIA,'
      '       DECODE ('
      
        '           SUM ( (NVL (PCESTMASTER.QTESTGER, 0) * NVL (PCESTMAST' +
        'ER.CUSTOREAL, 0)))'
      
        '           / DECODE (SUM(NVL (PCESTMASTER.QTESTGER, 0)), 0, 1, S' +
        'UM(NVL (PCESTMASTER.QTESTGER, 0))),'
      '           0,'
      '           NVL (PCEST.CUSTOREAL, 0),'
      
        '           SUM ( (NVL (PCESTMASTER.QTESTGER, 0) * NVL (PCESTMAST' +
        'ER.CUSTOREAL, 0)))'
      
        '           / DECODE (SUM(NVL (PCESTMASTER.QTESTGER, 0)), 0, 1, S' +
        'UM(NVL (PCESTMASTER.QTESTGER, 0))))'
      '           CUSTOREALATUAL,'
      '       NVL (PCEST.CUSTOREAL, 0) AS CUSTOREALANT,'
      '       DECODE ('
      
        '           SUM ( (NVL (PCESTMASTER.QTESTGER, 0) * NVL (PCESTMAST' +
        'ER.CUSTOREP, 0)))'
      
        '           / DECODE (SUM(NVL (PCESTMASTER.QTESTGER, 0)), 0, 1, S' +
        'UM(NVL (PCESTMASTER.QTESTGER, 0))),'
      '           0,'
      '           NVL (PCEST.CUSTOREP, 0),'
      
        '           SUM ( (NVL (PCESTMASTER.QTESTGER, 0) * NVL (PCESTMAST' +
        'ER.CUSTOREP, 0)))'
      
        '           / DECODE (SUM(NVL (PCESTMASTER.QTESTGER, 0)), 0, 1, S' +
        'UM(NVL (PCESTMASTER.QTESTGER, 0))))'
      '           CUSTOREPATUAL,'
      '       NVL (PCEST.CUSTOREP, 0) AS CUSTOREPANT,'
      '       DECODE ('
      
        '           SUM ( (NVL (PCESTMASTER.QTESTGER, 0) * NVL (PCESTMAST' +
        'ER.CUSTOREALSEMST, 0)))'
      
        '           / DECODE (SUM(NVL (PCESTMASTER.QTESTGER, 0)), 0, 1, S' +
        'UM(NVL (PCESTMASTER.QTESTGER, 0))),'
      '           0,'
      '           NVL (PCEST.CUSTOREALSEMST, 0),'
      
        '           SUM ( (NVL (PCESTMASTER.QTESTGER, 0) * NVL (PCESTMAST' +
        'ER.CUSTOREALSEMST, 0)))'
      
        '           / DECODE (SUM(NVL (PCESTMASTER.QTESTGER, 0)), 0, 1, S' +
        'UM(NVL (PCESTMASTER.QTESTGER, 0))))'
      '           CUSTOREALSEMSTATUAL,'
      '       NVL (PCEST.CUSTOREALSEMST, 0) AS CUSTOREALSEMSTANT,'
      '       DECODE ('
      
        '           SUM ( (NVL (PCESTMASTER.QTESTGER, 0) * NVL (PCESTMAST' +
        'ER.CUSTODOLAR, 0)))'
      
        '           / DECODE (SUM(NVL (PCESTMASTER.QTESTGER, 0)), 0, 1, S' +
        'UM(NVL (PCESTMASTER.QTESTGER, 0))),'
      '           0,'
      '           NVL (PCEST.CUSTODOLAR, 0),'
      
        '           SUM ( (NVL (PCESTMASTER.QTESTGER, 0) * NVL (PCESTMAST' +
        'ER.CUSTODOLAR, 0)))'
      
        '           / DECODE (SUM(NVL (PCESTMASTER.QTESTGER, 0)), 0, 1, S' +
        'UM(NVL (PCESTMASTER.QTESTGER, 0))))'
      '           CUSTODOLARATUAL,'
      '       NVL (PCEST.CUSTODOLAR, 0) AS CUSTODOLARANT,'
      '       DECODE ('
      
        '           SUM ( (NVL (PCESTMASTER.QTESTGER, 0) * NVL (PCESTMAST' +
        'ER.CUSTOFIN, 0)))'
      
        '           / DECODE (SUM(NVL (PCESTMASTER.QTESTGER, 0)), 0, 1, S' +
        'UM(NVL (PCESTMASTER.QTESTGER, 0))),'
      '           0,'
      '           NVL (PCEST.CUSTOFIN, 0),'
      
        '           SUM ( (NVL (PCESTMASTER.QTESTGER, 0) * NVL (PCESTMAST' +
        'ER.CUSTOFIN, 0)))'
      
        '           / DECODE (SUM(NVL (PCESTMASTER.QTESTGER, 0)), 0, 1, S' +
        'UM(NVL (PCESTMASTER.QTESTGER, 0))))'
      '           CUSTOFINATUAL,'
      '       NVL (PCEST.CUSTOFIN, 0) AS CUSTOFINANT,'
      '       NVL (PCEST.CUSTOCONT, 0) AS CUSTOCONT'
      'FROM PCPRODUT,'
      '     PCEST,'
      '     PCEST PCESTMASTER'
      'WHERE     PCEST.CODPROD = PCPRODUT.CODPROD'
      '      AND PCEST.CODPROD IN (SELECT CODPROD'
      '                            FROM PCPRODUT'
      
        '                            WHERE NVL (CODPRODPRINC, CODPROD) = ' +
        ':CODPRODPRINC)'
      '      AND PCESTMASTER.CODPROD IN (SELECT CODPROD'
      '                                  FROM PCPRODUT'
      
        '                                  WHERE NVL (CODPRODPRINC, CODPR' +
        'OD) = :CODPRODPRINC)'
      '      AND PCEST.CODFILIAL = PCESTMASTER.CODFILIAL'
      '      AND PCEST.QTESTGER > 0'
      '      AND PCESTMASTER.QTESTGER > 0'
      'GROUP BY PCPRODUT.CODPROD,'
      '         PCPRODUT.DESCRICAO,'
      '         PCPRODUT.EMBALAGEM,'
      '         PCPRODUT.UNIDADE,'
      '         PCEST.CODFILIAL,'
      '         PCEST.CUSTOREAL,'
      '         PCEST.CUSTOCONT,'
      '         PCEST.CUSTOREP,'
      '         PCEST.CUSTOREALSEMST,'
      '         PCEST.CUSTODOLAR,'
      '         PCEST.QTESTGER,'
      '         PCEST.CUSTOFIN,'
      '         PCEST.CUSTOCONT'
      'ORDER BY PCEST.CODFILIAL,'
      '         PCPRODUT.CODPROD')
    Left = 128
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codfilial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codprodprinc'
        Value = nil
      end>
    object qryCustoMedioCODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object qryCustoMedioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 40
    end
    object qryCustoMedioEMBALAGEM: TStringField
      FieldName = 'EMBALAGEM'
      Required = True
      Size = 12
    end
    object qryCustoMedioUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qryCustoMedioQTESTGER: TFloatField
      FieldName = 'QTESTGER'
      ReadOnly = True
    end
    object qryCustoMedioTOTALESTOQUEFAMILIA: TFloatField
      FieldName = 'TOTALESTOQUEFAMILIA'
      ReadOnly = True
    end
    object qryCustoMedioCUSTOREALATUAL: TFloatField
      FieldName = 'CUSTOREALATUAL'
      ReadOnly = True
    end
    object qryCustoMedioCUSTOREALANT: TFloatField
      FieldName = 'CUSTOREALANT'
      ReadOnly = True
    end
    object qryCustoMedioCUSTOREPATUAL: TFloatField
      FieldName = 'CUSTOREPATUAL'
      ReadOnly = True
    end
    object qryCustoMedioCUSTOREPANT: TFloatField
      FieldName = 'CUSTOREPANT'
      ReadOnly = True
    end
    object qryCustoMedioCUSTOREALSEMSTATUAL: TFloatField
      FieldName = 'CUSTOREALSEMSTATUAL'
      ReadOnly = True
    end
    object qryCustoMedioCUSTOREALSEMSTANT: TFloatField
      FieldName = 'CUSTOREALSEMSTANT'
      ReadOnly = True
    end
    object qryCustoMedioCUSTODOLARATUAL: TFloatField
      FieldName = 'CUSTODOLARATUAL'
      ReadOnly = True
    end
    object qryCustoMedioCUSTODOLARANT: TFloatField
      FieldName = 'CUSTODOLARANT'
      ReadOnly = True
    end
    object qryCustoMedioCUSTOFINATUAL: TFloatField
      FieldName = 'CUSTOFINATUAL'
      ReadOnly = True
    end
    object qryCustoMedioCUSTOFINANT: TFloatField
      FieldName = 'CUSTOFINANT'
      ReadOnly = True
    end
    object qryCustoMedioCUSTOCONT: TFloatField
      FieldName = 'CUSTOCONT'
      ReadOnly = True
    end
    object qryCustoMedioCODFILIAL: TStringField
      FieldName = 'CODFILIAL'
      Size = 2
    end
  end
  object dsCustoMedio: TDataSource
    DataSet = qryCustoMedio
    Left = 128
    Top = 72
  end
  object qryCustoMedioCluster: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT PCPRODUT.CODPROD,'
      '       PCPRODUT.DESCRICAO,'
      '       PCPRODUT.EMBALAGEM,'
      '       PCPRODUT.UNIDADE,'
      '       PCEST.CODFILIAL,'
      '       NVL (PCEST.QTESTGER, 0) AS QTESTGER,'
      '       (SELECT SUM (QTESTGER)'
      '        FROM PCEST'
      '        WHERE PCEST.CODFILIAL = PCEST.CODFILIAL'
      '              AND PCEST.CODPROD IN (SELECT CODPROD'
      '                                    FROM PCPRODUT'
      
        '                                    WHERE CODPRODPRINC = :CODPRO' +
        'DPRINC))'
      '           TOTALESTOQUEFAMILIA,'
      '       NVL (PCEST.CUSTOREAL, 0) AS CUSTOREALANT,'
      '       NVL (PCEST.CUSTOREP, 0) AS CUSTOREPANT,'
      '       NVL (PCEST.CUSTOREALSEMST, 0) AS CUSTOREALSEMSTANT,'
      '       NVL (PCEST.CUSTODOLAR, 0) AS CUSTODOLARANT,'
      '       NVL (PCEST.CUSTOFIN, 0) AS CUSTOFINANT,'
      '       NVL (PCEST.CUSTOCONT, 0) AS CUSTOCONT,'
      '       TBCLUSTER.CUSTOFINATUAL,'
      '       TBCLUSTER.CUSTODOLARATUAL,'
      '       TBCLUSTER.CUSTOREALSEMSTATUAL,'
      '       TBCLUSTER.CUSTOREPATUAL,'
      '       TBCLUSTER.CUSTOREALATUAL'
      'FROM PCPRODUT,'
      '     PCEST,'
      '     PCEST PCESTMASTER,'
      '     (SELECT PCPRODUT.CODPRODPRINC,'
      '             SUM (NVL (PCEST.QTESTGER, 0)) AS QTESTGER,'
      '             (SELECT SUM (QTESTGER)'
      '              FROM PCEST'
      '              WHERE PCEST.CODFILIAL = PCEST.CODFILIAL'
      '                    AND PCEST.CODPROD IN (SELECT CODPROD'
      '                                          FROM PCPRODUT'
      
        '                                          WHERE CODPRODPRINC = :' +
        'CODPRODPRINC))'
      '                 TOTALESTOQUEFAMILIA,'
      '             ROUND ('
      '                 DECODE ('
      
        '                     SUM ( (NVL (PCESTMASTER.QTESTGER, 0) * NVL ' +
        '(PCESTMASTER.CUSTOREAL, 0)))'
      
        '                     / DECODE (SUM (NVL (PCESTMASTER.QTESTGER, 0' +
        ')), 0, 1, SUM (NVL (PCESTMASTER.QTESTGER, 0))),'
      '                     0,'
      '                     SUM (NVL (PCEST.CUSTOREAL, 0)),'
      
        '                     SUM ( (NVL (PCESTMASTER.QTESTGER, 0) * NVL ' +
        '(PCESTMASTER.CUSTOREAL, 0)))'
      
        '                     / DECODE (SUM (NVL (PCESTMASTER.QTESTGER, 0' +
        ')), 0, 1, SUM (NVL (PCESTMASTER.QTESTGER, 0)))),'
      '                 6)'
      '                 CUSTOREALATUAL,'
      '             ROUND ('
      '                 DECODE ('
      
        '                     SUM ( (NVL (PCESTMASTER.QTESTGER, 0) * NVL ' +
        '(PCESTMASTER.CUSTOREP, 0)))'
      
        '                     / DECODE (SUM (NVL (PCESTMASTER.QTESTGER, 0' +
        ')), 0, 1, SUM (NVL (PCESTMASTER.QTESTGER, 0))),'
      '                     0,'
      '                     SUM (NVL (PCEST.CUSTOREP, 0)),'
      
        '                     SUM ( (NVL (PCESTMASTER.QTESTGER, 0) * NVL ' +
        '(PCESTMASTER.CUSTOREP, 0)))'
      
        '                     / DECODE (SUM (NVL (PCESTMASTER.QTESTGER, 0' +
        ')), 0, 1, SUM (NVL (PCESTMASTER.QTESTGER, 0)))),'
      '                 6)'
      '                 CUSTOREPATUAL,'
      '             ROUND ('
      '                 DECODE ('
      
        '                     SUM ( (NVL (PCESTMASTER.QTESTGER, 0) * NVL ' +
        '(PCESTMASTER.CUSTOREALSEMST, 0)))'
      
        '                     / DECODE (SUM (NVL (PCESTMASTER.QTESTGER, 0' +
        ')), 0, 1, SUM (NVL (PCESTMASTER.QTESTGER, 0))),'
      '                     0,'
      '                     SUM (NVL (PCEST.CUSTOREALSEMST, 0)),'
      
        '                     SUM ( (NVL (PCESTMASTER.QTESTGER, 0) * NVL ' +
        '(PCESTMASTER.CUSTOREALSEMST, 0)))'
      
        '                     / DECODE (SUM (NVL (PCESTMASTER.QTESTGER, 0' +
        ')), 0, 1, SUM (NVL (PCESTMASTER.QTESTGER, 0)))),'
      '                 6)'
      '                 CUSTOREALSEMSTATUAL,'
      '             ROUND ('
      '                 DECODE ('
      
        '                     SUM ( (NVL (PCESTMASTER.QTESTGER, 0) * NVL ' +
        '(PCESTMASTER.CUSTODOLAR, 0)))'
      
        '                     / DECODE (SUM (NVL (PCESTMASTER.QTESTGER, 0' +
        ')), 0, 1, SUM (NVL (PCESTMASTER.QTESTGER, 0))),'
      '                     0,'
      '                     SUM (NVL (PCEST.CUSTODOLAR, 0)),'
      
        '                     SUM ( (NVL (PCESTMASTER.QTESTGER, 0) * NVL ' +
        '(PCESTMASTER.CUSTODOLAR, 0)))'
      
        '                     / DECODE (SUM (NVL (PCESTMASTER.QTESTGER, 0' +
        ')), 0, 1, SUM (NVL (PCESTMASTER.QTESTGER, 0)))),'
      '                 6)'
      '                 CUSTODOLARATUAL,'
      '             ROUND ('
      '                 DECODE ('
      
        '                     SUM ( (NVL (PCESTMASTER.QTESTGER, 0) * NVL ' +
        '(PCESTMASTER.CUSTOFIN, 0)))'
      
        '                     / DECODE (SUM (NVL (PCESTMASTER.QTESTGER, 0' +
        ')), 0, 1, SUM (NVL (PCESTMASTER.QTESTGER, 0))),'
      '                     0,'
      '                     SUM (NVL (PCEST.CUSTOFIN, 0)),'
      
        '                     SUM ( (NVL (PCESTMASTER.QTESTGER, 0) * NVL ' +
        '(PCESTMASTER.CUSTOFIN, 0)))'
      
        '                     / DECODE (SUM (NVL (PCESTMASTER.QTESTGER, 0' +
        ')), 0, 1, SUM (NVL (PCESTMASTER.QTESTGER, 0)))),'
      '                 6)'
      '                 CUSTOFINATUAL'
      '      FROM PCPRODUT, PCEST, PCEST PCESTMASTER'
      '      WHERE     PCEST.CODPROD = PCPRODUT.CODPROD'
      '            AND PCEST.CODPROD IN (SELECT CODPROD'
      '                                  FROM PCPRODUT'
      
        '                                  WHERE NVL (CODPRODPRINC, CODPR' +
        'OD) = :CODPRODPRINC)'
      '            AND PCESTMASTER.CODPROD IN (SELECT CODPROD'
      '                                        FROM PCPRODUT'
      
        '                                        WHERE NVL (CODPRODPRINC,' +
        ' CODPROD) = :CODPRODPRINC)'
      '            AND PCEST.CODFILIAL = PCESTMASTER.CODFILIAL'
      '            AND PCEST.CODFILIAL IN (SELECT CODFILIAL'
      '                                    FROM I9GRUPOFILIALI'
      '                                    WHERE CODGRUPO = :CODGRUPO)'
      '            AND PCEST.QTESTGER > 0'
      '            AND PCESTMASTER.QTESTGER > 0'
      '      GROUP BY PCPRODUT.CODPRODPRINC) TBCLUSTER'
      'WHERE     PCEST.CODPROD = PCPRODUT.CODPROD'
      '      AND PCPRODUT.CODPRODPRINC = TBCLUSTER.CODPRODPRINC'
      '      AND PCEST.CODPROD IN (SELECT CODPROD'
      '                            FROM PCPRODUT'
      
        '                            WHERE NVL (CODPRODPRINC, CODPROD) = ' +
        ':CODPRODPRINC)'
      '      AND PCESTMASTER.CODPROD IN (SELECT CODPROD'
      '                                  FROM PCPRODUT'
      
        '                                  WHERE NVL (CODPRODPRINC, CODPR' +
        'OD) = :CODPRODPRINC)'
      '      AND PCEST.CODFILIAL = PCESTMASTER.CODFILIAL'
      '      AND PCEST.QTESTGER > 0'
      '      AND PCESTMASTER.QTESTGER > 0'
      '      AND PCEST.CODFILIAL IN (SELECT CODFILIAL'
      '                              FROM I9GRUPOFILIALI'
      '                              WHERE CODGRUPO = :CODGRUPO)'
      'GROUP BY PCPRODUT.CODPROD,'
      '         PCPRODUT.DESCRICAO,'
      '         PCPRODUT.EMBALAGEM,'
      '         PCPRODUT.UNIDADE,'
      '         PCEST.CODFILIAL,'
      '         PCEST.CUSTOREAL,'
      '         PCEST.CUSTOCONT,'
      '         PCEST.CUSTOREP,'
      '         PCEST.CUSTOREALSEMST,'
      '         PCEST.CUSTODOLAR,'
      '         PCEST.QTESTGER,'
      '         PCEST.CUSTOFIN,'
      '         PCEST.CUSTOCONT,'
      '         TBCLUSTER.CUSTOFINATUAL,'
      '         TBCLUSTER.CUSTODOLARATUAL,'
      '         TBCLUSTER.CUSTOREALSEMSTATUAL,'
      '         TBCLUSTER.CUSTOREPATUAL,'
      '         TBCLUSTER.CUSTOREALATUAL'
      'ORDER BY PCPRODUT.CODPROD, PCEST.CODFILIAL')
    Left = 240
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codprodprinc'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODGRUPO'
        Value = nil
      end>
    object qryCustoMedioClusterCODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object qryCustoMedioClusterDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 40
    end
    object qryCustoMedioClusterEMBALAGEM: TStringField
      FieldName = 'EMBALAGEM'
      Required = True
      Size = 12
    end
    object qryCustoMedioClusterUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qryCustoMedioClusterCODFILIAL: TStringField
      FieldName = 'CODFILIAL'
      ReadOnly = True
      Required = True
      Size = 2
    end
    object qryCustoMedioClusterQTESTGER: TFloatField
      FieldName = 'QTESTGER'
      ReadOnly = True
    end
    object qryCustoMedioClusterTOTALESTOQUEFAMILIA: TFloatField
      FieldName = 'TOTALESTOQUEFAMILIA'
      ReadOnly = True
    end
    object qryCustoMedioClusterCUSTOREALANT: TFloatField
      FieldName = 'CUSTOREALANT'
      ReadOnly = True
    end
    object qryCustoMedioClusterCUSTOREPANT: TFloatField
      FieldName = 'CUSTOREPANT'
      ReadOnly = True
    end
    object qryCustoMedioClusterCUSTOREALSEMSTANT: TFloatField
      FieldName = 'CUSTOREALSEMSTANT'
      ReadOnly = True
    end
    object qryCustoMedioClusterCUSTODOLARANT: TFloatField
      FieldName = 'CUSTODOLARANT'
      ReadOnly = True
    end
    object qryCustoMedioClusterCUSTOFINANT: TFloatField
      FieldName = 'CUSTOFINANT'
      ReadOnly = True
    end
    object qryCustoMedioClusterCUSTOCONT: TFloatField
      FieldName = 'CUSTOCONT'
      ReadOnly = True
    end
    object qryCustoMedioClusterCUSTOFINATUAL: TFloatField
      FieldName = 'CUSTOFINATUAL'
      ReadOnly = True
    end
    object qryCustoMedioClusterCUSTODOLARATUAL: TFloatField
      FieldName = 'CUSTODOLARATUAL'
      ReadOnly = True
    end
    object qryCustoMedioClusterCUSTOREALSEMSTATUAL: TFloatField
      FieldName = 'CUSTOREALSEMSTATUAL'
      ReadOnly = True
    end
    object qryCustoMedioClusterCUSTOREPATUAL: TFloatField
      FieldName = 'CUSTOREPATUAL'
      ReadOnly = True
    end
    object qryCustoMedioClusterCUSTOREALATUAL: TFloatField
      FieldName = 'CUSTOREALATUAL'
      ReadOnly = True
    end
  end
  object dsCustoMedioCluster: TDataSource
    DataSet = qryCustoMedioCluster
    Left = 240
    Top = 72
  end
  object qryEmbCluster: TUniQuery
    SQLUpdate.Strings = (
      'UPDATE PCEMBALAGEM'
      'SET CODAUXILIAR = CODAUXILIAR'
      
        'WHERE CODFILIAL IN (SELECT CODFILIAL FROM I9GRUPOFILIALI WHERE C' +
        'ODGRUPO = :CODGRUPO) AND CODAUXILIAR = :CODAUXILIAR'
      'AND ROWNUM = 1')
    SQLRefresh.Strings = (
      'SELECT DISTINCT'
      '       :CODGRUPO AS CODGRUPO,'
      '       TRUNC (PCEMBALAGEM.CODPROD) AS CODPROD,'
      '       PCPRODUT.DESCRICAO,'
      '       PCPRODUT.CODPRODPRINC,'
      '       PCPRODUT.SENSIBILIDADE,'
      '       PCEMBALAGEM.CODAUXILIAR,'
      '       PCEMBALAGEM.QTUNIT,'
      '       PCEMBALAGEM.QTMINIMAATACADO,'
      
        '       DECODE (NVL (PCEMBALAGEM.FATORPRECO, 1), 0, 1, NVL (PCEMB' +
        'ALAGEM.FATORPRECO, 1)) FATORPRECO,'
      '         DECODE( NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ),'
      '               0, 1,'
      '               NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ) )'
      '           AS PERVARIACAOPTABELA,'
      '       PCEMBALAGEM.EMBALAGEM,'
      
        '       ROUND (PKG_I9UTILITARIO.BUSCACUSTO (PCEST.CODFILIAL, PCES' +
        'T.CODPROD) * NVL (PCEMBALAGEM.QTUNIT, 1), 2) AS CUSTOFIN,'
      '         NVL(pcembalagem.ptabela,0) as ptabela,'
      '         NVL(pcembalagem.pvenda,0) as pvenda,'
      '         NVL(pcembalagem.ptabelaatac,0) as ptabelaatac,'
      '         NVL(pcembalagem.pvendaatac,0) as pvendaatac,'
      '       PCEMBALAGEM.POSRANKINGCLUSTER,'
      '       (SELECT MAX (PCEST.DTULTENT)'
      '        FROM PCEST'
      '        WHERE CODPROD = PCEMBALAGEM.CODPROD'
      '              AND CODFILIAL IN (SELECT CODFILIAL'
      '                                FROM I9GRUPOFILIALI'
      '                                WHERE CODGRUPO = :CODGRUPO))'
      '           AS DTULTENT,'
      '       0 AS QTULTENT,'
      '       0 AS QTESTGER,'
      
        '       FNC_BUSCA_PRECO_PERSONALIZADA (PCEMBALAGEM.CODFILIAL, PCE' +
        'MBALAGEM.CODAUXILIAR, '#39'VAREJO'#39') AS PRECO_ATUAL_VAREJO,'
      
        '       FNC_BUSCA_PRECO_PERSONALIZADA (PCEMBALAGEM.CODFILIAL, PCE' +
        'MBALAGEM.CODAUXILIAR, '#39'ATACADO'#39') AS PRECO_ATUAL_ATACADO,'
      
        '       PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS (PCEMBALAGEM.PVE' +
        'NDA,'
      
        '                                                 PKG_I9UTILITARI' +
        'O.CALCULAR_SUGESTAO (PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODAUXIL' +
        'IAR, '#39'VAREJO'#39'))'
      '           DIFSUGESTAO,'
      
        '       PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS (PCEMBALAGEM.PVE' +
        'NDA,'
      
        '                                                 PKG_I9UTILITARI' +
        'O.CALCULAR_SUGESTAO (PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODAUXIL' +
        'IAR, '#39'ATACADO'#39'))'
      '           DIFSUGESTAOATAC,'
      
        '       PKG_I9UTILITARIO.CALCULAR_SUGESTAO (PCEMBALAGEM.CODFILIAL' +
        ', PCEMBALAGEM.CODAUXILIAR, '#39'VAREJO'#39') AS PSUGESTAO,'
      
        '       PKG_I9UTILITARIO.CALCULAR_SUGESTAO (PCEMBALAGEM.CODFILIAL' +
        ', PCEMBALAGEM.CODAUXILIAR, '#39'ATACADO'#39') AS PSUGESTAO_ATAC,'
      
        '       PKG_I9UTILITARIO.ARREDONDAR_PRECO (PKG_I9UTILITARIO.CALCU' +
        'LAR_SUGESTAO (PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODAUXILIAR, '#39'V' +
        'AREJO'#39'))'
      '           AS PSUGESTAO_ARREDONDADO,'
      
        '       PKG_I9UTILITARIO.ARREDONDAR_PRECO (PKG_I9UTILITARIO.CALCU' +
        'LAR_SUGESTAO (PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODAUXILIAR, '#39'A' +
        'TACADO'#39'))'
      '           AS PSUGESTAO_ATAC_ARREDONDADO,'
      
        '       PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS (PCEMBALAGEM.PVE' +
        'NDA,'
      
        '                                                 PKG_I9UTILITARI' +
        'O.BUSCACUSTO (PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODPROD) * PCEM' +
        'BALAGEM.QTUNIT)'
      '           MARGEM_ATUAL_VAR,'
      
        '       PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS (PCEMBALAGEM.PVE' +
        'NDAATAC,'
      
        '                                                 PKG_I9UTILITARI' +
        'O.BUSCACUSTO (PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODPROD) * PCEM' +
        'BALAGEM.QTUNIT)'
      '           MARGEM_ATUAL_ATAC,'
      
        '       PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS (PCEMBALAGEM.PTA' +
        'BELA,'
      
        '                                                 PKG_I9UTILITARI' +
        'O.BUSCACUSTO (PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODPROD) * PCEM' +
        'BALAGEM.QTUNIT)'
      '           MARGEM_FUT_VAR,'
      
        '       PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS (PCEMBALAGEM.PTA' +
        'BELAATAC,'
      
        '                                                 PKG_I9UTILITARI' +
        'O.BUSCACUSTO (PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODPROD) * PCEM' +
        'BALAGEM.QTUNIT)'
      '           MARGEM_FUT_ATAC,'
      '       PCCLASSIFICMERC.MARGEMVAREJO,'
      '       PCCLASSIFICMERC.MARGEMATAC,'
      '       PCCLASSIFICMERC.MARGEMMINVAREJO,'
      '       PCCLASSIFICMERC.MARGEMMINATAC,'
      
        '       PKG_I9UTILITARIO.COTACAO_PRECO (PCPRODUT.CODPRODPRINC, PC' +
        'EMBALAGEM.CODFILIAL, '#39'VAREJO'#39') PVENDACONCORRENTE,'
      
        '       PKG_I9UTILITARIO.COTACAO_PRECO (PCPRODUT.CODPRODPRINC, PC' +
        'EMBALAGEM.CODFILIAL, '#39'ATACADO'#39') PVENDAATACCONCORRENTE,'
      
        '       PKG_I9UTILITARIO.COTACAO_DATA (PCPRODUT.CODPRODPRINC, PCE' +
        'MBALAGEM.CODFILIAL) DATAULTIMACOTACAO,'
      '       NVL (PCEMBALAGEM.PRECOFIXO, '#39'N'#39') PRECOFIXO,'
      
        '       (PKG_I9CLUBECRM.BUSCAPRECOCRM (PCEMBALAGEM.CODFILIAL, PCE' +
        'MBALAGEM.CODAUXILIAR) * PCEMBALAGEM.QTUNIT) AS PRECOATUALCRM,'
      '       '#39'N'#39' AS CUSTODIF'
      'FROM PCEMBALAGEM,'
      '     PCPRODUT,'
      '     PCEST,'
      '     PCCLASSIFICMERC,'
      
        '     (SELECT PRINCIPAIS.CODPRODPRINC, EST.CODFILIAL, ROUND ( (SU' +
        'M (EST.CUSTOFIN) / COUNT (EST.CODPROD)), 2) CUSTOMEDIO'
      
        '      FROM PCEST EST, PCPRODUT PROD, (SELECT DISTINCT CODPRODPRI' +
        'NC FROM PCPRODUT) PRINCIPAIS'
      '      WHERE     PROD.CODPROD = EST.CODPROD'
      '            AND PROD.CODPROD IN (SELECT CODPROD'
      '                                 FROM PCPRODUT'
      
        '                                 WHERE CODPRODPRINC = PRINCIPAIS' +
        '.CODPRODPRINC)'
      '            AND EST.CODFILIAL IN (SELECT CODFILIAL'
      '                                  FROM I9GRUPOFILIALI'
      '                                  WHERE CODGRUPO = :CODGRUPO)'
      '      GROUP BY EST.CODFILIAL, PRINCIPAIS.CODPRODPRINC) FAMILIA'
      'WHERE     PCEMBALAGEM.CODPROD = PCPRODUT.CODPROD'
      '      AND PCEMBALAGEM.CODFILIAL = PCEST.CODFILIAL'
      '      AND PCEMBALAGEM.CODPROD = PCEST.CODPROD'
      '      AND PCEMBALAGEM.CODPROD = PCCLASSIFICMERC.CODPROD'
      '      AND PCEMBALAGEM.CODFILIAL = PCCLASSIFICMERC.CODFILIAL'
      '      AND PCPRODUT.CODPRODPRINC = FAMILIA.CODPRODPRINC'
      '      AND PCEMBALAGEM.CODFILIAL = FAMILIA.CODFILIAL'
      '      AND PCEMBALAGEM.CODFILIAL IN (SELECT CODFILIAL'
      '                                    FROM I9GRUPOFILIALI'
      '                                    WHERE CODGRUPO = :CODGRUPO)'
      '      AND PCEMBALAGEM.CODAUXILIAR = :CODAUXILIAR'
      
        '      AND PKG_I9UTILITARIO.BUSCACUSTO (PCEMBALAGEM.CODFILIAL, PC' +
        'EMBALAGEM.CODPROD) > 0.05'
      '      AND NVL(PCEST.QTESTGER,0) > 0'
      '      AND ROWNUM = 1'
      'ORDER BY CODPROD, QTUNIT')
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '       :CODGRUPO AS CODGRUPO,'
      '       TRUNC (PCEMBALAGEM.CODPROD) AS CODPROD,'
      '       PCPRODUT.DESCRICAO,'
      '       PCPRODUT.CODPRODPRINC,'
      '       PCPRODUT.SENSIBILIDADE,'
      '       PCEMBALAGEM.CODAUXILIAR,'
      '       PCEMBALAGEM.QTUNIT,'
      '       PCEMBALAGEM.QTMINIMAATACADO,'
      
        '       DECODE (NVL (PCEMBALAGEM.FATORPRECO, 1), 0, 1, NVL (PCEMB' +
        'ALAGEM.FATORPRECO, 1)) FATORPRECO,'
      '         DECODE( NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ),'
      '               0, 1,'
      '               NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ) )'
      '           AS PERVARIACAOPTABELA,'
      '       PCEMBALAGEM.EMBALAGEM,'
      
        '       ROUND (PKG_I9UTILITARIO.BUSCACUSTO (PCEST.CODFILIAL, PCES' +
        'T.CODPROD) * NVL (PCEMBALAGEM.QTUNIT, 1), 2) AS CUSTOFIN,'
      '         NVL(pcembalagem.ptabela,0) as ptabela,'
      '         NVL(pcembalagem.pvenda,0) as pvenda,'
      '         NVL(pcembalagem.ptabelaatac,0) as ptabelaatac,'
      '         NVL(pcembalagem.pvendaatac,0) as pvendaatac,'
      '       PCEMBALAGEM.POSRANKINGCLUSTER,'
      '       (SELECT MAX (PCEST.DTULTENT)'
      '        FROM PCEST'
      '        WHERE CODPROD = PCEMBALAGEM.CODPROD'
      '              AND CODFILIAL IN (SELECT CODFILIAL'
      '                                FROM I9GRUPOFILIALI'
      '                                WHERE CODGRUPO = :CODGRUPO))'
      '           AS DTULTENT,'
      '       0 AS QTULTENT,'
      '       0 AS QTESTGER,'
      
        '       FNC_BUSCA_PRECO_PERSONALIZADA (PCEMBALAGEM.CODFILIAL, PCE' +
        'MBALAGEM.CODAUXILIAR, '#39'VAREJO'#39') AS PRECO_ATUAL_VAREJO,'
      
        '       FNC_BUSCA_PRECO_PERSONALIZADA (PCEMBALAGEM.CODFILIAL, PCE' +
        'MBALAGEM.CODAUXILIAR, '#39'ATACADO'#39') AS PRECO_ATUAL_ATACADO,'
      
        '       PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS (PCEMBALAGEM.PVE' +
        'NDA,'
      
        '                                                 PKG_I9UTILITARI' +
        'O.CALCULAR_SUGESTAO (PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODAUXIL' +
        'IAR, '#39'VAREJO'#39'))'
      '           DIFSUGESTAO,'
      
        '       PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS (PCEMBALAGEM.PVE' +
        'NDA,'
      
        '                                                 PKG_I9UTILITARI' +
        'O.CALCULAR_SUGESTAO (PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODAUXIL' +
        'IAR, '#39'ATACADO'#39'))'
      '           DIFSUGESTAOATAC,'
      
        '       PKG_I9UTILITARIO.CALCULAR_SUGESTAO (PCEMBALAGEM.CODFILIAL' +
        ', PCEMBALAGEM.CODAUXILIAR, '#39'VAREJO'#39') AS PSUGESTAO,'
      
        '       PKG_I9UTILITARIO.CALCULAR_SUGESTAO (PCEMBALAGEM.CODFILIAL' +
        ', PCEMBALAGEM.CODAUXILIAR, '#39'ATACADO'#39') AS PSUGESTAO_ATAC,'
      
        '       PKG_I9UTILITARIO.ARREDONDAR_PRECO (PKG_I9UTILITARIO.CALCU' +
        'LAR_SUGESTAO (PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODAUXILIAR, '#39'V' +
        'AREJO'#39'))'
      '           AS PSUGESTAO_ARREDONDADO,'
      
        '       PKG_I9UTILITARIO.ARREDONDAR_PRECO (PKG_I9UTILITARIO.CALCU' +
        'LAR_SUGESTAO (PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODAUXILIAR, '#39'A' +
        'TACADO'#39'))'
      '           AS PSUGESTAO_ATAC_ARREDONDADO,'
      
        '       PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS (PCEMBALAGEM.PVE' +
        'NDA,'
      
        '                                                 PKG_I9UTILITARI' +
        'O.BUSCACUSTO (PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODPROD) * PCEM' +
        'BALAGEM.QTUNIT)'
      '           MARGEM_ATUAL_VAR,'
      
        '       PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS (PCEMBALAGEM.PVE' +
        'NDAATAC,'
      
        '                                                 PKG_I9UTILITARI' +
        'O.BUSCACUSTO (PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODPROD) * PCEM' +
        'BALAGEM.QTUNIT)'
      '           MARGEM_ATUAL_ATAC,'
      
        '       PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS (PCEMBALAGEM.PTA' +
        'BELA,'
      
        '                                                 PKG_I9UTILITARI' +
        'O.BUSCACUSTO (PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODPROD) * PCEM' +
        'BALAGEM.QTUNIT)'
      '           MARGEM_FUT_VAR,'
      
        '       PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS (PCEMBALAGEM.PTA' +
        'BELAATAC,'
      
        '                                                 PKG_I9UTILITARI' +
        'O.BUSCACUSTO (PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODPROD) * PCEM' +
        'BALAGEM.QTUNIT)'
      '           MARGEM_FUT_ATAC,'
      '       PCCLASSIFICMERC.MARGEMVAREJO,'
      '       PCCLASSIFICMERC.MARGEMATAC,'
      '       PCCLASSIFICMERC.MARGEMMINVAREJO,'
      '       PCCLASSIFICMERC.MARGEMMINATAC,'
      
        '       PKG_I9UTILITARIO.COTACAO_PRECO (PCPRODUT.CODPRODPRINC, PC' +
        'EMBALAGEM.CODFILIAL, '#39'VAREJO'#39') PVENDACONCORRENTE,'
      
        '       PKG_I9UTILITARIO.COTACAO_PRECO (PCPRODUT.CODPRODPRINC, PC' +
        'EMBALAGEM.CODFILIAL, '#39'ATACADO'#39') PVENDAATACCONCORRENTE,'
      
        '       PKG_I9UTILITARIO.COTACAO_DATA (PCPRODUT.CODPRODPRINC, PCE' +
        'MBALAGEM.CODFILIAL) DATAULTIMACOTACAO,'
      '       NVL (PCEMBALAGEM.PRECOFIXO, '#39'N'#39') PRECOFIXO,'
      
        '       (PKG_I9CLUBECRM.BUSCAPRECOCRM (PCEMBALAGEM.CODFILIAL, PCE' +
        'MBALAGEM.CODAUXILIAR) * PCEMBALAGEM.QTUNIT) AS PRECOATUALCRM,'
      '       '#39'N'#39' AS CUSTODIF'
      'FROM PCEMBALAGEM,'
      '     PCPRODUT,'
      '     PCEST,'
      '     PCCLASSIFICMERC,'
      
        '     (SELECT PRINCIPAIS.CODPRODPRINC, EST.CODFILIAL, ROUND ( (SU' +
        'M (EST.CUSTOFIN) / COUNT (EST.CODPROD)), 2) CUSTOMEDIO'
      
        '      FROM PCEST EST, PCPRODUT PROD, (SELECT DISTINCT CODPRODPRI' +
        'NC FROM PCPRODUT) PRINCIPAIS'
      '      WHERE     PROD.CODPROD = EST.CODPROD'
      '            AND PROD.CODPROD IN (SELECT CODPROD'
      '                                 FROM PCPRODUT'
      
        '                                 WHERE CODPRODPRINC = PRINCIPAIS' +
        '.CODPRODPRINC)'
      '            AND EST.CODFILIAL IN (SELECT CODFILIAL'
      '                                  FROM I9GRUPOFILIALI'
      '                                  WHERE CODGRUPO = :CODGRUPO)'
      '      GROUP BY EST.CODFILIAL, PRINCIPAIS.CODPRODPRINC) FAMILIA'
      'WHERE     PCEMBALAGEM.CODPROD = PCPRODUT.CODPROD'
      '      AND PCEMBALAGEM.CODFILIAL = PCEST.CODFILIAL'
      '      AND PCEMBALAGEM.CODPROD = PCEST.CODPROD'
      '      AND PCEMBALAGEM.CODPROD = PCCLASSIFICMERC.CODPROD'
      '      AND PCEMBALAGEM.CODFILIAL = PCCLASSIFICMERC.CODFILIAL'
      '      AND PCPRODUT.CODPRODPRINC = FAMILIA.CODPRODPRINC'
      '      AND PCEMBALAGEM.CODFILIAL = FAMILIA.CODFILIAL'
      '      AND PCEMBALAGEM.CODFILIAL IN (SELECT CODFILIAL'
      '                                    FROM I9GRUPOFILIALI'
      '                                    WHERE CODGRUPO = :CODGRUPO)'
      
        '      AND PKG_I9UTILITARIO.BUSCACUSTO (PCEMBALAGEM.CODFILIAL, PC' +
        'EMBALAGEM.CODPROD) > 0.05'
      '      AND NVL(PCEST.QTESTGER,0) > 0'
      'ORDER BY CODPROD, QTUNIT')
    Options.SetFieldsReadOnly = False
    Options.UpdateAllFields = True
    AfterPost = qryEmbClusterAfterPost
    Left = 48
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODGRUPO'
        Value = nil
      end>
    object qryEmbClusterCODGRUPO: TStringField
      FieldName = 'CODGRUPO'
      Size = 32
    end
    object qryEmbClusterCODPROD: TFloatField
      FieldName = 'CODPROD'
    end
    object qryEmbClusterDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object qryEmbClusterCODPRODPRINC: TIntegerField
      FieldName = 'CODPRODPRINC'
    end
    object qryEmbClusterSENSIBILIDADE: TStringField
      FieldName = 'SENSIBILIDADE'
      Size = 3
    end
    object qryEmbClusterCODAUXILIAR: TFloatField
      FieldName = 'CODAUXILIAR'
      Required = True
    end
    object qryEmbClusterQTUNIT: TFloatField
      FieldName = 'QTUNIT'
    end
    object qryEmbClusterQTMINIMAATACADO: TFloatField
      FieldName = 'QTMINIMAATACADO'
      OnChange = qryEmbClusterQTMINIMAATACADOChange
    end
    object qryEmbClusterFATORPRECO: TFloatField
      FieldName = 'FATORPRECO'
    end
    object qryEmbClusterEMBALAGEM: TStringField
      FieldName = 'EMBALAGEM'
      Size = 12
    end
    object qryEmbClusterCUSTOFIN: TFloatField
      FieldName = 'CUSTOFIN'
    end
    object qryEmbClusterPTABELA: TFloatField
      FieldName = 'PTABELA'
      OnChange = qryEmbClusterPTABELAChange
    end
    object qryEmbClusterPVENDA: TFloatField
      FieldName = 'PVENDA'
      OnChange = qryEmbClusterPVENDAChange
    end
    object qryEmbClusterPTABELAATAC: TFloatField
      FieldName = 'PTABELAATAC'
      OnChange = qryEmbClusterPTABELAATACChange
    end
    object qryEmbClusterPVENDAATAC: TFloatField
      FieldName = 'PVENDAATAC'
      OnChange = qryEmbClusterPVENDAATACChange
    end
    object qryEmbClusterPOSRANKINGCLUSTER: TLargeintField
      FieldName = 'POSRANKINGCLUSTER'
    end
    object qryEmbClusterDTULTENT: TDateTimeField
      FieldName = 'DTULTENT'
    end
    object qryEmbClusterQTULTENT: TFloatField
      FieldName = 'QTULTENT'
    end
    object qryEmbClusterQTESTGER: TFloatField
      FieldName = 'QTESTGER'
    end
    object qryEmbClusterPRECO_ATUAL_VAREJO: TFloatField
      FieldName = 'PRECO_ATUAL_VAREJO'
    end
    object qryEmbClusterPRECO_ATUAL_ATACADO: TFloatField
      FieldName = 'PRECO_ATUAL_ATACADO'
    end
    object qryEmbClusterDIFSUGESTAO: TFloatField
      FieldName = 'DIFSUGESTAO'
    end
    object qryEmbClusterDIFSUGESTAOATAC: TFloatField
      FieldName = 'DIFSUGESTAOATAC'
    end
    object qryEmbClusterPSUGESTAO: TFloatField
      FieldName = 'PSUGESTAO'
    end
    object qryEmbClusterPSUGESTAO_ATAC: TFloatField
      FieldName = 'PSUGESTAO_ATAC'
    end
    object qryEmbClusterPSUGESTAO_ARREDONDADO: TFloatField
      FieldName = 'PSUGESTAO_ARREDONDADO'
    end
    object qryEmbClusterPSUGESTAO_ATAC_ARREDONDADO: TFloatField
      FieldName = 'PSUGESTAO_ATAC_ARREDONDADO'
    end
    object qryEmbClusterMARGEM_ATUAL_VAR: TFloatField
      FieldName = 'MARGEM_ATUAL_VAR'
    end
    object qryEmbClusterMARGEM_ATUAL_ATAC: TFloatField
      FieldName = 'MARGEM_ATUAL_ATAC'
    end
    object qryEmbClusterMARGEM_FUT_VAR: TFloatField
      FieldName = 'MARGEM_FUT_VAR'
    end
    object qryEmbClusterMARGEM_FUT_ATAC: TFloatField
      FieldName = 'MARGEM_FUT_ATAC'
    end
    object qryEmbClusterMARGEMVAREJO: TFloatField
      FieldName = 'MARGEMVAREJO'
      OnChange = qryEmbClusterMARGEMVAREJOChange
    end
    object qryEmbClusterMARGEMATAC: TFloatField
      FieldName = 'MARGEMATAC'
      OnChange = qryEmbClusterMARGEMATACChange
    end
    object qryEmbClusterMARGEMMINVAREJO: TFloatField
      FieldName = 'MARGEMMINVAREJO'
      OnChange = qryEmbClusterMARGEMMINVAREJOChange
    end
    object qryEmbClusterMARGEMMINATAC: TFloatField
      FieldName = 'MARGEMMINATAC'
      OnChange = qryEmbClusterMARGEMMINATACChange
    end
    object qryEmbClusterPVENDACONCORRENTE: TFloatField
      FieldName = 'PVENDACONCORRENTE'
    end
    object qryEmbClusterPVENDAATACCONCORRENTE: TFloatField
      FieldName = 'PVENDAATACCONCORRENTE'
    end
    object qryEmbClusterDATAULTIMACOTACAO: TDateTimeField
      FieldName = 'DATAULTIMACOTACAO'
    end
    object qryEmbClusterPRECOFIXO: TStringField
      FieldName = 'PRECOFIXO'
      OnChange = qryEmbClusterPRECOFIXOChange
      Size = 1
    end
    object qryEmbClusterPRECOATUALCRM: TFloatField
      FieldName = 'PRECOATUALCRM'
    end
    object qryEmbClusterCUSTODIF: TStringField
      FieldName = 'CUSTODIF'
      Size = 1
    end
    object qryEmbClusterPERVARIACAOPTABELA: TFloatField
      FieldName = 'PERVARIACAOPTABELA'
    end
  end
  object dsEmbCluster: TDataSource
    DataSet = qryEmbCluster
    Left = 120
    Top = 288
  end
end
