object dmClusterFiliais: TdmClusterFiliais
  OldCreateOrder = False
  Height = 492
  Width = 707
  object cdsFiliaisIncluidas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 208
    Top = 208
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
    object cdsFiliaisIncluidasCODCAMPANHACRM: TIntegerField
      FieldName = 'CODGRUPO'
    end
  end
  object dsFiliaisIncluidas: TDataSource
    DataSet = cdsFiliaisIncluidas
    Left = 208
    Top = 272
  end
  object qrFiliaisDisponiveis: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      
        'SELECT DISTINCT  '#39'N'#39' INCLUIDO, PCFILIAL.CODIGO CODIGO, NVL(PCFIL' +
        'IAL.FANTASIA, PCFILIAL.RAZAOSOCIAL) AS RAZAOSOCIAL, NULL AS CODG' +
        'RUPO'
      '  FROM PCLIB, PCFILIAL                        '
      ' WHERE PCFILIAL.CODIGO = PCLIB.CODIGOA        '
      '       AND PCFILIAL.CODIGO <> ('#39'99'#39')        '
      '       AND PCLIB.CODFUNC = :CODFUNC    '
      
        '       AND PCFILIAL.CODIGO IN (SELECT DISTINCT CODFILIAL FROM PC' +
        'CAIXA WHERE PCCAIXA.DTFIM IS NULL)'
      
        '       AND PCFILIAL.CODIGO NOT IN (SELECT DISTINCT CODFILIAL FRO' +
        'M I9GRUPOFILIALI) '
      ' ORDER BY PCFILIAL.CODIGO ')
    CachedUpdates = True
    Options.SetFieldsReadOnly = False
    Left = 96
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODFUNC'
        Value = nil
      end>
  end
  object dsFiliaisDisponiveis: TDataSource
    DataSet = cdsFiliaisDisponiveis
    Left = 96
    Top = 320
  end
  object cdsFiliaisDisponiveis: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 96
    Top = 256
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
  object qrAux: TUniQuery
    Connection = DmLogin.Conexao
    Left = 192
    Top = 48
  end
  object qrProxCodGrupo: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT COUNT(*) + 1 AS PROXCODGRUPO FROM I9GRUPOFILIALC')
    Left = 192
    Top = 112
  end
  object qrIncluirI9GrupoFilialC: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'DECLARE'
      '    REG I9GRUPOFILIALC%ROWTYPE;'
      'BEGIN'
      '    UPDATE I9GRUPOFILIALC '
      '    SET DESCRICAO '#9#9'= :DESCRICAO,'
      '    CODFUNCALTERACAO '#9'= :CODFUNC,'
      '    DTALTERACAO '#9#9'= SYSDATE,'
      '    CODFILIALPRINC '#9#9'= :CODFILIALPRINC'
      '    WHERE CODGRUPO '#9#9'= :CODGRUPO;'
      '    '
      '    IF SQL%NOTFOUND THEN '
      '    '#9'REG.CODGRUPO '#9#9':= :CODGRUPO;'
      #9#9'REG.DESCRICAO '#9#9':= :DESCRICAO;'
      #9#9'REG.CODFUNCINCLUSAO := :CODFUNC;'
      #9#9'REG.DTINCLUSAO '#9#9':= SYSDATE;'
      #9#9'REG.CODFILIALPRINC '#9':= :CODFILIALPRINC;'
      #9#9
      #9#9'INSERT INTO I9GRUPOFILIALC VALUES REG;    '
      '    END IF;'
      'END;')
    Left = 280
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DESCRICAO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODFUNC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALPRINC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODGRUPO'
        Value = nil
      end>
  end
  object qrIncluirI9GrupoFilialI: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'DECLARE'
      '    REG I9GRUPOFILIALI%ROWTYPE;'
      'BEGIN'
      ' '
      '    '#9'REG.CODGRUPO '#9#9':= :CODGRUPO;'
      #9'REG.CODFILIAL '#9#9':= :CODFILIAL;'#9
      #9'INSERT INTO I9GRUPOFILIALI VALUES REG;    '
      ''
      'END;')
    Left = 376
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODGRUPO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIAL'
        Value = nil
      end>
  end
  object qrFiliaisIncluidas: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      
        'SELECT DISTINCT  PCFILIAL.CODIGO CODIGO, NVL(PCFILIAL.FANTASIA, ' +
        'PCFILIAL.RAZAOSOCIAL) AS RAZAOSOCIAL, I9GRUPOFILIALI.CODGRUPO AS' +
        ' CODGRUPO'
      '  FROM PCFILIAL, I9GRUPOFILIALI                        '
      ' WHERE PCFILIAL.CODIGO = I9GRUPOFILIALI.CODFILIAL'
      ' AND I9GRUPOFILIALI.CODGRUPO = :CODGRUPO             '
      ' ORDER BY PCFILIAL.CODIGO ')
    CachedUpdates = True
    Options.SetFieldsReadOnly = False
    Left = 208
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODGRUPO'
        Value = nil
      end>
  end
  object cdsConcorrentesIncluidos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 208
    object cdsConcorrentesIncluidosCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsConcorrentesIncluidosCONCORRENTE: TStringField
      FieldName = 'CONCORRENTE'
    end
    object cdsConcorrentesIncluidosCODGRUPO: TStringField
      FieldName = 'CODGRUPO'
    end
  end
  object dsConcorrentesIncluidos: TDataSource
    DataSet = cdsConcorrentesIncluidos
    Left = 352
    Top = 280
  end
  object qrConcorrentesIncluidos: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      #9'   I9CONCORRENTE.CODCONC AS CODIGO,'
      #9'   I9CONCORRENTE.CONCORRENTE AS CONCORRENTE,'
      #9'   I9GRUPOFILIALCONC.CODGRUPO AS CODGRUPO'
      'FROM I9CONCORRENTE, I9GRUPOFILIALCONC'
      'WHERE I9CONCORRENTE.CODCONC = I9GRUPOFILIALCONC.CODCONC'
      '  AND I9GRUPOFILIALCONC.CODGRUPO = :CODGRUPO'
      'ORDER BY I9CONCORRENTE.CONCORRENTE')
    CachedUpdates = True
    Options.SetFieldsReadOnly = False
    Left = 352
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODGRUPO'
        Value = nil
      end>
  end
  object qrConcorrentesDisponiveis: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      
        'SELECT DISTINCT  '#39'N'#39' INCLUIDO, I9CONCORRENTE.CODCONC CODIGO, I9C' +
        'ONCORRENTE.CONCORRENTE'
      '  FROM I9CONCORRENTE                    '
      
        ' WHERE I9CONCORRENTE.CODCONC NOT IN (SELECT CODCONC FROM I9GRUPO' +
        'FILIALCONC WHERE CODGRUPO = NVL(:CODGRUPO,0))'
      ' AND I9CONCORRENTE.ATIVO = '#39'S'#39)
    CachedUpdates = True
    Options.SetFieldsReadOnly = False
    Left = 488
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODGRUPO'
        Value = nil
      end>
  end
  object dsConcorrentesDisponiveis: TDataSource
    DataSet = cdsConcorrentesDisponiveis
    Left = 488
    Top = 344
  end
  object cdsConcorrentesDisponiveis: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 488
    Top = 280
    object StringField7: TStringField
      FieldName = 'CODIGO'
    end
    object cdsConcorrentesDisponiveisCONCORRENTE: TStringField
      FieldName = 'CONCORRENTE'
    end
  end
  object qrIncluirGrupoConcorrente: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'DECLARE'
      '    REG I9GRUPOFILIALCONC%ROWTYPE;'
      'BEGIN'
      ' '
      '    '#9'REG.CODGRUPO '#9#9':= :CODGRUPO;'
      #9'REG.CODCONC '#9#9':= :CODCONC;'#9
      #9'INSERT INTO I9GRUPOFILIALCONC VALUES REG;    '
      ''
      'END;')
    Left = 504
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODGRUPO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODCONC'
        Value = nil
      end>
  end
  object qrPesquisarCluster: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT * FROM I9GRUPOFILIALC WHERE CODGRUPO = :CODGRUPO')
    Left = 296
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODGRUPO'
        Value = nil
      end>
  end
end
