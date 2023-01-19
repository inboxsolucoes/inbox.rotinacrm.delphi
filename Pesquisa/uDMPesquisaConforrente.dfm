object DMPesquisaConforrente: TDMPesquisaConforrente
  OldCreateOrder = False
  Height = 549
  Width = 799
  object cdsPesquisaConcorrente: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 160
    Top = 8
    object cdsPesquisaConcorrenteCODCONC: TStringField
      FieldName = 'CODCONC'
      Required = True
      Size = 4
    end
    object cdsPesquisaConcorrenteCONCORRENTE: TStringField
      FieldName = 'CONCORRENTE'
      Required = True
      Size = 40
    end
    object cdsPesquisaConcorrenteCODFUNC: TIntegerField
      FieldName = 'CODFUNC'
    end
    object cdsPesquisaConcorrenteFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
    end
    object cdsPesquisaConcorrenteCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
    end
    object cdsPesquisaConcorrenteDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsPesquisaConcorrenteCODFILIALPRINC: TStringField
      FieldName = 'CODFILIALPRINC'
      Size = 2
    end
  end
  object dsPesquisaConcorrente: TDataSource
    DataSet = cdsPesquisaConcorrente
    Left = 160
    Top = 72
  end
  object qrPesqProdutos: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT PCEMBALAGEM.CODAUXILIAR'
      
        '              , NVL(PCEMBALAGEM.DESCRICAOECF, PCPRODUT.DESCRICAO' +
        ' || '#39' '#39' || PCPRODUT.EMBALAGEM)'
      
        '                                                                ' +
        '                       DESCRICAOECF'
      '              , PCPRODUT.CODPROD'
      '              , PCEMBALAGEM.EMBALAGEM'
      '              , '#39'N'#39' AS INCLUIDO'
      '           FROM PCEMBALAGEM'
      '              , PCPRODUT'
      '              , PCEST            '
      '          WHERE (PCEMBALAGEM.CODPROD = PCPRODUT.CODPROD'
      '            AND PCEMBALAGEM.CODPROD = PCEST.CODPROD'
      
        '            AND PCEMBALAGEM.CODFILIAL = PCEST.CODFILIAL         ' +
        ' '
      '            AND PCEMBALAGEM.DTINATIVO IS NULL'
      '            AND PCEMBALAGEM.CODAUXILIAR IS NOT NULL         '
      '            AND PCEMBALAGEM.CODAUXILIAR <> 0) '
      '            AND PCEMBALAGEM.CODFILIAL = :CODFILIAL '
      
        '            AND PCPRODUT.CODPROD = NVL(PCPRODUT.CODPRODPRINC, PC' +
        'PRODUT.CODPROD)'
      'ORDER BY PCEMBALAGEM.CODAUXILIAR')
    CachedUpdates = True
    Options.SetFieldsReadOnly = False
    Left = 48
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODFILIAL'
        Value = nil
      end>
  end
  object dsPesqProdutos: TUniDataSource
    DataSet = qrPesqProdutos
    Left = 48
    Top = 64
  end
  object cdsProdutosIncluidos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 152
    object cdsProdutosIncluidosDESCRICAOECF: TStringField
      FieldName = 'DESCRICAOECF'
    end
    object cdsProdutosIncluidosCODAUXILIAR: TStringField
      FieldName = 'CODAUXILIAR'
    end
    object cdsProdutosIncluidosEMBALAGEM: TStringField
      FieldName = 'EMBALAGEM'
    end
    object cdsProdutosIncluidosCODPROD: TFloatField
      FieldName = 'CODPROD'
    end
  end
  object dsProdutosIncluidos: TDataSource
    DataSet = cdsProdutosIncluidos
    Left = 48
    Top = 208
  end
  object qrFiliais: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      
        'SELECT DISTINCT  '#39'N'#39' INCLUIDO, PCFILIAL.CODIGO CODIGO, RAZAOSOCI' +
        'AL  '
      '  FROM PCLIB, PCFILIAL                        '
      ' WHERE PCFILIAL.CODIGO = PCLIB.CODIGOA        '
      '       AND PCFILIAL.CODIGO <> ('#39'99'#39')        '
      '       AND PCLIB.CODFUNC = :CODFUNC           '
      ' ORDER BY PCFILIAL.CODIGO                     ')
    CachedUpdates = True
    Options.SetFieldsReadOnly = False
    Left = 376
    Top = 19
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODFUNC'
        Value = nil
      end>
  end
  object dsFiliais: TUniDataSource
    DataSet = qrFiliais
    Left = 376
    Top = 72
  end
  object qrAux: TUniQuery
    Connection = DmLogin.Conexao
    Left = 448
    Top = 24
  end
  object qrCotaP: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'BEGIN'
      ''
      '  UPDATE PCCOTAP '
      '     SET CODCONCOR = :CODCONCOR, '
      '         DTCADASTRO = TRUNC(SYSDATE),'
      '         CODFUNCCAD = :CODFUNCCAD,'
      '         CODFILIAL = :CODFILIAL,'
      '         CODFUNCDIRECIONADO = :CODFUNCDIRECIONADO, '
      '         DESCRICAOPESQ = :DESCRICAOPESQ'
      '   WHERE NUMPESQUISA = :NUMPESQUISA'
      '     AND CODCONCOR = :CODCONCOR;'
      ''
      '  IF SQL%NOTFOUND THEN'
      ''
      
        '     INSERT INTO PCCOTAP (NUMPESQUISA, CODCONCOR, DTCADASTRO, CO' +
        'DFUNCCAD, CODFILIAL, CODFUNCDIRECIONADO, DESCRICAOPESQ )'
      
        '     VALUES (:NUMPESQUISA, :CODCONCOR, TRUNC(SYSDATE), :CODFUNCC' +
        'AD, :CODFILIAL, :CODFUNCDIRECIONADO, :DESCRICAOPESQ );'
      ''
      '  END IF;'
      ''
      'END;')
    Left = 448
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODCONCOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODFUNCCAD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODFUNCDIRECIONADO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCRICAOPESQ'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NUMPESQUISA'
        Value = nil
      end>
  end
  object qrCota: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'DECLARE'
      ''
      'COTAC PCCOTAC%ROWTYPE;'
      'COTAI PCCOTAI%ROWTYPE;'
      ''
      'BEGIN'
      '   BEGIN'
      '   '
      '         FOR REG IN (SELECT :NUMPESQUISA AS NUMPESQUISA'
      '              , PCEMBALAGEM.CODPROD'
      '              , PCEMBALAGEM.CODFILIAL'
      '              , TRUNC(SYSDATE)'
      '              , PCEMBALAGEM.DESCRICAOECF'
      
        '              , NVL(PCEMBALAGEM.EMBALAGEM, PCEMBALAGEM.UNIDADE |' +
        '| '#39'-'#39' || PCEMBALAGEM.QTUNIT)AS EMBALAGEM'
      '              , :MATRICULA AS MATRICULA'
      '              , :DESCRICAOPESQ AS DESCRICAOPESQ'
      '              , PCEMBALAGEM.CODAUXILIAR'
      '              , :TIPO AS TIPO'
      '           FROM PCEMBALAGEM'
      '          WHERE PCEMBALAGEM.CODAUXILIAR = :CODAUXILIAR '
      '            AND PCEMBALAGEM.CODFILIAL = :CODFILIAL)'
      '            '
      '         LOOP'
      '         '
      '                  INSERT INTO PCCOTAC'
      '                              (NUMPESQUISA'
      '                             , CODPROD'
      '                             , CODFILIAL'
      '                             , DATAGERACAO'
      '                             , DESCRICAO'
      '                             , EMBALAGEM'
      '                             , CODFUNCGERA'
      '                             , DESCRICAOPESQ'
      '                             , CODAUXILIAR'
      '                             , TIPO)'
      '                     VALUES (REG.NUMPESQUISA'
      '                          , REG.CODPROD'
      '                          , REG.CODFILIAL'
      '                          , TRUNC(SYSDATE)'
      '                          , REG.DESCRICAOECF'
      '                          , REG.EMBALAGEM'
      '                          , REG.MATRICULA'
      '                          , REG.DESCRICAOPESQ'
      '                          , REG.CODAUXILIAR'
      '                          , REG.TIPO);'
      '              '
      '         END LOOP;'
      '   EXCEPTION'
      '      WHEN DUP_VAL_ON_INDEX'
      '      THEN'
      '         NULL;'
      '   END;'
      '/*'
      '   BEGIN'
      '   '
      '   FOR REG2 IN (SELECT :NUMPESQUISA AS NUMPESQUISA'
      '              , PCCOTAP.CODCONCOR'
      '              , PCEMBALAGEM.CODPROD'
      '              , PCEMBALAGEM.CODFILIAL'
      '              , TRUNC(SYSDATE)'
      '              , PCEMBALAGEM.DESCRICAOECF'
      '              , PCCOTAP.CODFUNCCAD'
      '              , PCEMBALAGEM.CODAUXILIAR'
      '              , PCEMBALAGEM.PVENDA'
      '              , PCEMBALAGEM.PVENDAATAC'
      '              , :OBSDECISAO AS OBSDECISAO'
      '           FROM PCEMBALAGEM'
      '              , PCCOTAP'
      '          WHERE NUMPESQUISA = :NUMPESQUISA'
      '            AND PCEMBALAGEM.CODPROD = :CODPROD'
      '            AND PCEMBALAGEM.CODFILIAL = :CODFILIAL)'
      '            '
      '          LOOP'
      '          '
      '              INSERT INTO PCCOTAI'
      '                          (NUMPESQUISA'
      '                         , CODCONCOR'
      '                         , CODPROD'
      '                         , CODFILIAL'
      '                         , DATALANC'
      '                         , DESCRICAO'
      '                         , CODFUNCLANC'
      '                         , CODAUXILIAR'
      '                         , PUNIT'
      '                         , PUNITATAC'
      '                         , PVENDAEMBALAGEM'
      '                         , PVENDAATACADO'
      '                         , OBSDECISAO )'
      '              VALUES (REG2.NUMPESQUISA,'
      '                      REG2.CODCONCOR,'
      '                      REG2.CODPROD,'
      '                      REG2.CODFILIAL,'
      '                      TRUNC(SYSDATE),'
      '                      REG2.DESCRICAOECF,'
      '                      REG2.CODFUNCCAD,'
      '                      REG2.CODAUXILIAR,'
      '                      0,'
      '                      0,'
      '                      REG2.PVENDA,'
      '                      REG2.PVENDAATAC,'
      '                      REG2.OBSDECISAO);'
      '        END LOOP;'
      ''
      '   EXCEPTION'
      '      WHEN DUP_VAL_ON_INDEX'
      '      THEN'
      '         NULL;'
      '   END; */'
      'END;')
    Left = 264
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NUMPESQUISA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MATRICULA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCRICAOPESQ'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODAUXILIAR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIAL'
        Value = nil
      end>
  end
  object qrPesqConco: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      '/* Formatted on 29/07/2020 15:07:00 (QP5 v5.262) */'
      'SELECT PCCOTAP.NUMPESQUISA NUMPESQUISA,      '
      
        '       NVL (PCCOTAP.DESCRICAOPESQ, '#39'PESQUISA '#39' || PCCOTAP.NUMPES' +
        'QUISA)'
      '           AS DESCRICAOPESQ,'
      '       PCCOTAP.DTCADASTRO DATAGERACAO,'
      '       PCCOTAP.CODFILIAL,'
      '       PCCOTAP.CODFUNCCAD,'
      '       PCEMPR.NOME,'
      '       PCCOTAC.SITUACAO'
      '  FROM PCCOTAC,'
      '       PCEMPR,'
      '       PCCONCOR,'
      '       PCCOTAP'
      ' WHERE     PCCOTAP.CODFUNCCAD = PCEMPR.MATRICULA'
      '       AND PCCOTAP.CODCONCOR = PCCONCOR.CODCONC'
      '       AND PCCOTAP.NUMPESQUISA = PCCOTAC.NUMPESQUISA'
      'GROUP BY PCCOTAP.NUMPESQUISA,'
      
        '         NVL (PCCOTAP.DESCRICAOPESQ, '#39'PESQUISA '#39' || PCCOTAP.NUMP' +
        'ESQUISA),'
      '         PCCOTAP.DTCADASTRO,'
      '         PCCOTAP.CODFILIAL,'
      '         PCCOTAP.CODFUNCCAD,'
      '         PCEMPR.NOME,'
      '         PCCOTAC.SITUACAO'
      'ORDER BY NUMPESQUISA DESC')
    Left = 152
    Top = 200
  end
  object dsPesqConco: TUniDataSource
    DataSet = qrPesqConco
    Left = 152
    Top = 152
  end
  object qrProxCodConcorrente: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT COUNT(*) + 1 AS CODCONCORRENTE FROM PCCONCOR')
    Left = 248
    Top = 152
  end
  object qrConcorrentes: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT CODCONC,'
      ' CONCORRENTE,'
      ' NVL(ATIVO,'#39'N'#39') AS ATIVO,'
      ' TELEFONE,'
      ' CNPJ,'
      ' I9LATITUDE,'
      ' I9LONGITUDE'
      'FROM PCCONCOR')
    Left = 248
    Top = 216
  end
  object qrIncluirConcorrente: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'DECLARE'
      '    REG PCCONCOR%ROWTYPE;'
      'BEGIN'
      '    UPDATE PCCONCOR'
      '    SET CONCORRENTE'#9'= :CONCORRENTE,'
      '    ATIVO'#9'        = :ATIVO,'
      '    TELEFONE'#9#9'= :TELEFONE,'
      '    CNPJ'#9#9'=  APENASNUMEROS(:CNPJ),'
      '    I9LATITUDE          = :I9LATITUDE,'
      '    I9LONGITUDE'#9#9'= :I9LONGITUDE'
      '    WHERE CODCONC'#9'= :CODCONC;'
      '    '
      '    IF SQL%NOTFOUND THEN '
      '    '#9'REG.CODCONC '#9' := :CODCONC;'
      #9'REG.CONCORRENTE  := :CONCORRENTE;'
      #9'REG.ATIVO        := :ATIVO;'
      #9'REG.TELEFONE '#9' := :TELEFONE;'
      #9'REG.CNPJ '#9' := APENASNUMEROS(:CNPJ);'
      '        REG.I9LATITUDE   := :I9LATITUDE;'
      '        REG.I9LONGITUDE  := :I9LONGITUDE;'
      #9#9
      #9'INSERT INTO PCCONCOR VALUES REG;    '
      '    END IF;'
      'END;')
    Left = 264
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONCORRENTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ATIVO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TELEFONE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'I9LATITUDE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'I9LONGITUDE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODCONC'
        Value = nil
      end>
  end
  object qryConcorrentesDisponiveisFilial: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT CODCONC, CONCORRENTE '
      'FROM PCCONCOR'
      
        'WHERE CODCONC NOT IN (SELECT CODCONCOR FROM I9FILIALCONCORRENTE ' +
        'WHERE CODFILIAL = :CODFILIAL )')
    Left = 80
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODFILIAL'
        Value = nil
      end>
    object qryConcorrentesDisponiveisFilialCODCONC: TStringField
      FieldName = 'CODCONC'
      Required = True
      Size = 4
    end
    object qryConcorrentesDisponiveisFilialCONCORRENTE: TStringField
      FieldName = 'CONCORRENTE'
      Required = True
      Size = 40
    end
  end
  object qryConcorrentesVinculadosFilial: TUniQuery
    SQLInsert.Strings = (
      
        'INSERT INTO I9FILIALCONCORRENTE (CODFILIAL, CODCONCOR) VALUES ( ' +
        ':CODFILIAL , :CODCONC)')
    SQLDelete.Strings = (
      'DELETE FROM I9FILIALCONCORRENTE '
      'WHERE CODFILIAL = :CODFILIAL '
      'AND CODCONCOR = :CODCONC')
    Connection = DmLogin.Conexao
    SQL.Strings = (
      
        'SELECT PCCONCOR.CODCONC, PCCONCOR.CONCORRENTE, I9FILIALCONCORREN' +
        'TE.CODFILIAL'
      'FROM PCCONCOR, I9FILIALCONCORRENTE'
      'WHERE I9FILIALCONCORRENTE.CODCONCOR = PCCONCOR.CODCONC'
      'AND I9FILIALCONCORRENTE.CODFILIAL = :CODFILIAL')
    Left = 248
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODFILIAL'
        Value = nil
      end>
    object qryConcorrentesVinculadosFilialCODCONC: TStringField
      FieldName = 'CODCONC'
      Size = 4
    end
    object qryConcorrentesVinculadosFilialCONCORRENTE: TStringField
      FieldName = 'CONCORRENTE'
      Size = 40
    end
    object qryConcorrentesVinculadosFilialCODFILIAL: TStringField
      FieldName = 'CODFILIAL'
      Size = 2
    end
  end
  object dsConcorrentesDisponiveisFilial: TDataSource
    DataSet = qryConcorrentesDisponiveisFilial
    Left = 80
    Top = 328
  end
  object dsConcorrentesVinculadosFilial: TDataSource
    DataSet = qryConcorrentesVinculadosFilial
    Left = 248
    Top = 328
  end
  object qryConcorrentesDisponiveisCluster: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT CODCONC, CONCORRENTE '
      'FROM PCCONCOR'
      
        'WHERE CODCONC NOT IN (SELECT CODCONCOR FROM I9CLUSTERCONCORRENTE' +
        ')')
    Left = 64
    Top = 392
    object CODCONC: TStringField
      FieldName = 'CODCONC'
      Required = True
      Size = 4
    end
    object CONCORRENTE: TStringField
      FieldName = 'CONCORRENTE'
      Required = True
      Size = 40
    end
  end
  object qryConcorrentesVinculadosCluster: TUniQuery
    SQLInsert.Strings = (
      
        'INSERT INTO I9CLUSTERCONCORRENTE (CODGRUPO, CODCONCOR) VALUES ( ' +
        ':CODGRUPO , :CODCONC)')
    SQLDelete.Strings = (
      'DELETE FROM I9CLUSTERCONCORRENTE'
      'WHERE CODGRUPO = :CODGRUPO'
      'AND CODCONCOR = :CODCONC')
    Connection = DmLogin.Conexao
    SQL.Strings = (
      
        'SELECT PCCONCOR.CODCONC, PCCONCOR.CONCORRENTE, I9CLUSTERCONCORRE' +
        'NTE.CODGRUPO'
      'FROM PCCONCOR, I9CLUSTERCONCORRENTE '
      'WHERE I9CLUSTERCONCORRENTE.CODCONCOR = PCCONCOR.CODCONC'
      'AND I9CLUSTERCONCORRENTE.CODGRUPO = :CODGRUPO')
    Left = 248
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODGRUPO'
        Value = nil
      end>
    object StringField6: TStringField
      FieldName = 'CODCONC'
      Size = 4
    end
    object StringField7: TStringField
      FieldName = 'CONCORRENTE'
      Size = 40
    end
    object qryConcorrentesVinculadosClusterCODGRUPO: TLargeintField
      FieldName = 'CODGRUPO'
    end
  end
  object dsConcorrentesDisponiveisCluster: TDataSource
    DataSet = qryConcorrentesDisponiveisCluster
    Left = 64
    Top = 448
  end
  object dsConcorrentesVinculadosCluster: TDataSource
    DataSet = qryConcorrentesVinculadosCluster
    Left = 248
    Top = 448
  end
  object qrClusterConcorrente: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT I9GRUPOFILIALC.CODGRUPO,'
      '       I9GRUPOFILIALC.DESCRICAO,'
      '       I9GRUPOFILIALC.CODFILIALPRINC,'
      '       PCCONCOR.CODCONC,'
      '       PCCONCOR.CONCORRENTE'
      '  FROM I9GRUPOFILIALC, I9CLUSTERCONCORRENTE, PCCONCOR'
      
        ' WHERE     I9CLUSTERCONCORRENTE.CODGRUPO = I9GRUPOFILIALC.CODGRU' +
        'PO'
      '       AND I9CLUSTERCONCORRENTE.CODCONCOR = PCCONCOR.CODCONC'
      '       AND I9CLUSTERCONCORRENTE.CODGRUPO = :CODGRUPO')
    Left = 376
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODGRUPO'
        Value = nil
      end>
  end
  object qrConsultaPCCOTAI: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      '/* Formatted on 04/08/2020 14:34:37 (QP5 v5.262) */'
      'SELECT I9GRUPOFILIALC.CODFILIALPRINC AS CODFILIAL,'
      '       PCCOTAI.NUMPESQUISA,'
      
        '       NVL (PCCOTAP.DESCRICAOPESQ, '#39'PESQUISA '#39' || PCCOTAI.NUMPES' +
        'QUISA)'
      '           AS DESCPESQUISA,'
      '       PCPRODUT.CODPROD,'
      '       PCPRODUT.DESCRICAO,'
      '       PCFORNEC.CODFORNEC,'
      '       PCFORNEC.FORNECEDOR,'
      '       PCEMPR.MATRICULA AS CODCOMPRADOR,'
      '       PCEMPR.NOME AS COMPRADOR,'
      '       PCDEPTO.CODEPTO,'
      '       PCDEPTO.DESCRICAO AS DEPARTAMENTO,'
      '       PCSECAO.CODSEC,'
      '       PCSECAO.DESCRICAO AS SECAO,'
      '       PCCATEGORIA.CODCATEGORIA,'
      '       PCCATEGORIA.CATEGORIA AS CATEGORIA,'
      '       PCEMBALAGEM.PVENDA,'
      '       PCEMBALAGEM.PVENDAATAC,'
      '       PCCONCOR.CODCONC,'
      '       PCCONCOR.CONCORRENTE,'
      '       PCCOTAI.PUNIT AS PVENDACONCORRENTE,'
      '       PCCOTAI.PUNITATAC AS PVENDATACCONCORRENTE,'
      '       PCCOTAI.PUNITCRM AS PVENDACRMCONCORRENTE,'
      '       NVL (PCCOTAI.I9PRODUTOFIFO, '#39'N'#39') AS PRODUTOFIFO,'
      '       NVL (PCCOTAI.I9PRODUTOOFERTA, '#39'N'#39') AS PRODUTOFERTA,'
      '       ROUND (NVL (PCEST.CUSTOFIN, 0), 2) AS CUSTOFIN,'
      '       PCCOTAI.DATALANC AS DATACOTACAO,'
      
        '       NVL (PCCLASSIFICMERC.MARGEMMINVAREJO, 0) AS MARGEMMINVARE' +
        'JO,'
      '       NVL (PCCLASSIFICMERC.MARGEMMINATAC, 0) AS MARGEMMINATAC,'
      '       NVL (PCCLASSIFICMERC.MARGEMATAC, 0) AS MARGEMATAC,'
      '       NVL (PCCLASSIFICMERC.MARGEMVAREJO, 0) AS MARGEMVAREJO,'
      '       PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS ('
      '           PCCOTAI.PUNIT,'
      
        '           ROUND (NVL (PCEST.CUSTOFIN, 0), 2) * PCEMBALAGEM.QTUN' +
        'IT)'
      '           MARGEMCONCORRENTEVAREJO,'
      '       PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS ('
      '           PCCOTAI.PUNITATAC,'
      
        '           ROUND (NVL (PCEST.CUSTOFIN, 0), 2) * PCEMBALAGEM.QTUN' +
        'IT)'
      '           MARGEMCONCORRENTEATACADO,'
      '       PKG_I9UTILITARIO.REMOVER_MARGEM ('
      '           PCCOTAI.PUNIT,'
      '           NVL (PCCLASSIFICMERC.MARGEMVAREJO, 0))'
      '           AS CUSTOIDEALVAREJO,'
      '       PKG_I9UTILITARIO.REMOVER_MARGEM (PCCOTAI.PUNIT,'
      
        '                                        NVL (PCCLASSIFICMERC.MAR' +
        'GEMATAC, 0))'
      '           AS CUSTOIDEALATACADO,'
      '       PCCOTAI.I9URLFOTO,'
      '       DECODE (PCCOTAI.I9URLFOTO, NULL, '#39'N'#39', '#39'S'#39') AS TEMFOTO'
      '  FROM PCCOTAI,'
      '       PCCOTAP,'
      '       PCPRODUT,'
      '       PCCONCOR,'
      '       PCEMBALAGEM,'
      '       I9CLUSTERCONCORRENTE,'
      '       I9GRUPOFILIALC,'
      '       PCEST,'
      '       PCCLASSIFICMERC,'
      '       PCEMPR,'
      '       PCFORNEC,'
      '       PCDEPTO,'
      '       PCSECAO,'
      '       PCCATEGORIA'
      ' WHERE     PCEMBALAGEM.CODPROD = PCCOTAI.CODPROD'
      '       AND PCEMBALAGEM.CODFILIAL = PCCOTAI.CODFILIAL'
      '       AND PCCOTAI.NUMPESQUISA = PCCOTAP.NUMPESQUISA'
      '       AND PCCOTAI.CODCONCOR = PCCOTAP.CODCONCOR'
      '       AND PCEST.CODPROD = PCEMBALAGEM.CODPROD'
      '       AND PCEST.CODFILIAL = PCEMBALAGEM.CODFILIAL'
      '       AND PCPRODUT.CODPROD = PCEMBALAGEM.CODPROD'
      '       AND PCPRODUT.CODCOMPRADOR = PCEMPR.MATRICULA(+)'
      '       AND PCPRODUT.CODFORNEC = PCFORNEC.CODFORNEC'
      '       AND PCCONCOR.CODCONC = I9CLUSTERCONCORRENTE.CODCONCOR'
      '       AND I9GRUPOFILIALC.CODFILIALPRINC = PCEMBALAGEM.CODFILIAL'
      
        '       AND I9CLUSTERCONCORRENTE.CODGRUPO = I9GRUPOFILIALC.CODGRU' +
        'PO'
      '       AND PCEMBALAGEM.CODPROD = PCCLASSIFICMERC.CODPROD(+)'
      '       AND PCEMBALAGEM.CODFILIAL = PCCLASSIFICMERC.CODFILIAL(+)'
      '       AND PCCOTAI.CODCONCOR = PCCONCOR.CODCONC'
      '       AND PCPRODUT.CODSEC = PCSECAO.CODSEC'
      '       AND PCPRODUT.CODEPTO = PCSECAO.CODEPTO'
      '       AND PCSECAO.CODEPTO = PCDEPTO.CODEPTO'
      '       AND PCSECAO.CODSEC = PCCATEGORIA.CODSEC(+) '
      '       AND PCPRODUT.CODCATEGORIA = PCCATEGORIA.CODCATEGORIA(+)'
      '       AND PCEMBALAGEM.CODAUXILIAR ='
      '               (SELECT MIN (PE2.CODAUXILIAR)'
      '                  FROM PCEMBALAGEM PE2'
      '                 WHERE     PE2.CODPROD = PCEMBALAGEM.CODPROD'
      '                       AND PE2.CODFILIAL = PCEMBALAGEM.CODFILIAL'
      '                       AND PE2.DTINATIVO IS NULL'
      '                       AND PE2.QTUNIT ='
      '                               (SELECT MIN (PE.QTUNIT)'
      '                                  FROM PCEMBALAGEM PE'
      
        '                                 WHERE     PE.CODPROD = PE2.CODP' +
        'ROD'
      
        '                                       AND PE.CODFILIAL = PE2.CO' +
        'DFILIAL'
      
        '                                       AND PE.DTINATIVO IS NULL)' +
        ')'
      
        '       AND TRUNC(PCCOTAI.DATALANC) BETWEEN :DTINICIAL AND :DTFIN' +
        'AL')
    Left = 672
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DTINICIAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTFINAL'
        Value = nil
      end>
    object qrConsultaPCCOTAICODFILIAL: TStringField
      FieldName = 'CODFILIAL'
      ReadOnly = True
      Size = 2
    end
    object qrConsultaPCCOTAINUMPESQUISA: TLargeintField
      FieldName = 'NUMPESQUISA'
      Required = True
    end
    object qrConsultaPCCOTAICODPROD: TIntegerField
      FieldName = 'CODPROD'
      ReadOnly = True
      Required = True
    end
    object qrConsultaPCCOTAIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrConsultaPCCOTAIPVENDA: TFloatField
      FieldName = 'PVENDA'
      ReadOnly = True
    end
    object qrConsultaPCCOTAIPVENDAATAC: TFloatField
      FieldName = 'PVENDAATAC'
      ReadOnly = True
    end
    object qrConsultaPCCOTAICODCONC: TStringField
      FieldName = 'CODCONC'
      ReadOnly = True
      Required = True
      Size = 4
    end
    object qrConsultaPCCOTAICONCORRENTE: TStringField
      FieldName = 'CONCORRENTE'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrConsultaPCCOTAIPVENDACONCORRENTE: TFloatField
      FieldName = 'PVENDACONCORRENTE'
    end
    object qrConsultaPCCOTAIPVENDATACCONCORRENTE: TFloatField
      FieldName = 'PVENDATACCONCORRENTE'
    end
    object qrConsultaPCCOTAIPVENDACRMCONCORRENTE: TFloatField
      FieldName = 'PVENDACRMCONCORRENTE'
    end
    object qrConsultaPCCOTAICUSTOFIN: TFloatField
      FieldName = 'CUSTOFIN'
      ReadOnly = True
    end
    object qrConsultaPCCOTAIDATACOTACAO: TDateTimeField
      FieldName = 'DATACOTACAO'
    end
    object qrConsultaPCCOTAIMARGEMMINVAREJO: TFloatField
      FieldName = 'MARGEMMINVAREJO'
      ReadOnly = True
    end
    object qrConsultaPCCOTAIMARGEMMINATAC: TFloatField
      FieldName = 'MARGEMMINATAC'
      ReadOnly = True
    end
    object qrConsultaPCCOTAIMARGEMATAC: TFloatField
      FieldName = 'MARGEMATAC'
      ReadOnly = True
    end
    object qrConsultaPCCOTAIMARGEMVAREJO: TFloatField
      FieldName = 'MARGEMVAREJO'
      ReadOnly = True
    end
    object qrConsultaPCCOTAIMARGEMCONCORRENTEVAREJO: TFloatField
      FieldName = 'MARGEMCONCORRENTEVAREJO'
      ReadOnly = True
    end
    object qrConsultaPCCOTAIMARGEMCONCORRENTEATACADO: TFloatField
      FieldName = 'MARGEMCONCORRENTEATACADO'
      ReadOnly = True
    end
    object qrConsultaPCCOTAICUSTOIDEALVAREJO: TFloatField
      FieldName = 'CUSTOIDEALVAREJO'
      ReadOnly = True
    end
    object qrConsultaPCCOTAICUSTOIDEALATACADO: TFloatField
      FieldName = 'CUSTOIDEALATACADO'
      ReadOnly = True
    end
    object qrConsultaPCCOTAIDESCPESQUISA: TStringField
      FieldName = 'DESCPESQUISA'
      ReadOnly = True
      Size = 100
    end
    object qrConsultaPCCOTAIPRODUTOFIFO: TStringField
      FieldName = 'PRODUTOFIFO'
      ReadOnly = True
      Size = 1
    end
    object qrConsultaPCCOTAIPRODUTOFERTA: TStringField
      FieldName = 'PRODUTOFERTA'
      ReadOnly = True
      Size = 1
    end
    object qrConsultaPCCOTAII9URLFOTO: TStringField
      FieldName = 'I9URLFOTO'
      Size = 400
    end
    object qrConsultaPCCOTAITEMFOTO: TStringField
      FieldName = 'TEMFOTO'
      ReadOnly = True
      Size = 1
    end
    object qrConsultaPCCOTAICODFORNEC: TIntegerField
      FieldName = 'CODFORNEC'
      ReadOnly = True
      Required = True
    end
    object qrConsultaPCCOTAIFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object qrConsultaPCCOTAICODCOMPRADOR: TIntegerField
      FieldName = 'CODCOMPRADOR'
      ReadOnly = True
    end
    object qrConsultaPCCOTAICOMPRADOR: TStringField
      FieldName = 'COMPRADOR'
      ReadOnly = True
      Size = 40
    end
    object qrConsultaPCCOTAICODEPTO: TIntegerField
      FieldName = 'CODEPTO'
      ReadOnly = True
      Required = True
    end
    object qrConsultaPCCOTAIDEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
      ReadOnly = True
      Required = True
      Size = 25
    end
    object qrConsultaPCCOTAICODSEC: TIntegerField
      FieldName = 'CODSEC'
      ReadOnly = True
      Required = True
    end
    object qrConsultaPCCOTAISECAO: TStringField
      FieldName = 'SECAO'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrConsultaPCCOTAICODCATEGORIA: TIntegerField
      FieldName = 'CODCATEGORIA'
      ReadOnly = True
    end
    object qrConsultaPCCOTAICATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      ReadOnly = True
      Size = 40
    end
  end
  object dsConsultaPCCOTAI: TDataSource
    DataSet = qrConsultaPCCOTAI
    Left = 672
    Top = 80
  end
end
