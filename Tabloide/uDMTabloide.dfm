object DMTabloide: TDMTabloide
  OldCreateOrder = False
  Height = 494
  Width = 801
  object qrAux: TUniQuery
    Connection = DmLogin.Conexao
    Left = 72
    Top = 24
  end
  object qrFiliais: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT'
      
        'PCFILIAL.CODIGO || '#39' - '#39' || NVL(PCFILIAL.FANTASIA,PCFILIAL.RAZAO' +
        'SOCIAL) || '#39' ('#39' || APENASNUMEROS(PCFILIAL.CGC) || '#39')'#39' AS CODIGO,'
      'PCFILIAL.CODIGO AS CODFILIAL'
      'FROM PCFILIAL'
      'ORDER BY CODIGO')
    Left = 72
    Top = 128
  end
  object dsFiliais: TUniDataSource
    DataSet = qrFiliais
    Left = 168
    Top = 80
  end
  object qrPesquisaProdutos: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT'
      'PCPRODUT.CODPROD,'
      'PCEMBALAGEM.CODAUXILIAR,'
      'NVL(PCEMBALAGEM.DESCRICAOECF, PCPRODUT.DESCRICAO) DESCRICAO,'
      'PCEMBALAGEM.QTUNIT,'
      'PCEST.QTEST,'
      'PCEST.QTESTGER'
      'FROM PCPRODUT, PCEST, PCEMBALAGEM'
      'WHERE PCEMBALAGEM.CODPROD = PCPRODUT.CODPROD'
      'AND PCEMBALAGEM.CODFILIAL = PCEST.CODFILIAL '
      'AND PCPRODUT.CODPROD = PCEST.CODPROD'
      'AND PCEST.CODFILIAL = :CODFILIAL')
    Left = 72
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODFILIAL'
        Value = nil
      end>
  end
  object dsPesquisaOfertas: TUniDataSource
    DataSet = qrPesquisaProdutos
    Left = 168
    Top = 24
  end
  object qrInsereTabloide: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'DECLARE'
      '    REG I9TABLOIDE%ROWTYPE;'
      'BEGIN'
      ''
      'UPDATE I9TABLOIDE'
      'SET DESCRICAO = :DESCRICAO,'
      'DTINICIAL = :DTINICIAL,'
      'DTFINAL = :DTFINAL,'
      'CODFUNCCADASTRO = :CODFUNCCADASTRO,'
      'CODFILIAL = :CODFILIAL'
      'WHERE CODTABLOIDE = :CODTABLOIDE;'
      ''
      'IF SQL%NOTFOUND THEN'
      ''
      '    REG.CODTABLOIDE := :CODTABLOIDE;'
      '    REG.DESCRICAO := :DESCRICAO;'
      '    REG.DTINICIAL := :DTINICIAL;'
      '    REG.DTFINAL := :DTFINAL;'
      '    REG.CODFUNCCADASTRO := :CODFUNCCADASTRO;'
      '    REG.CODFILIAL := :CODFILIAL;'
      ''
      '    INSERT INTO I9TABLOIDE VALUES REG;'
      ''
      'END IF;'
      ''
      'END;')
    Left = 72
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DESCRICAO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTINICIAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTFINAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODFUNCCADASTRO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODTABLOIDE'
        Value = nil
      end>
  end
  object qrPesquisaTabloide: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT * FROM I9TABLOIDE WHERE CODTABLOIDE = :CODTABLOIDE')
    Left = 64
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODTABLOIDE'
        Value = nil
      end>
  end
  object qrDeletarTabloide: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      
        'UPDATE I9TABLOIDE SET DTEXLUSAO = SYSDATE, CODFUNCEXCLUSAO = :MA' +
        'TRICULA WHERE CODTABLOIDE = :CODTABLOIDE')
    Left = 64
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MATRICULA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODTABLOIDE'
        Value = nil
      end>
  end
  object cdsFiliaisIncluidas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 168
    Top = 136
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
    Left = 168
    Top = 192
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
    Left = 272
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODFUNC'
        Value = nil
      end>
  end
  object cdsFiliaisDisponiveis: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 40
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
    Left = 272
    Top = 104
  end
  object qrInserirOferta: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'DECLARE'
      '    REG          PCOFERTAPROGRAMADAC%ROWTYPE;'
      '    VCODOFERTA   NUMBER (10);'
      'BEGIN'
      '    UPDATE   PCOFERTAPROGRAMADAC'
      '       SET   DESCOFERTA = :DESCRICAO,'
      '             DTINICIALSUGESTAO = :DTINICIAL,'
      '             DTFINALSUGESTAO = :DTFINAL,'
      '             CODFUNCSUGESTAO = :CODFUNCCADASTRO'
      
        '     WHERE   CODTABLOIDE = :CODTABLOIDE AND CODFILIAL = :CODFILI' +
        'AL;'
      ''
      '    IF SQL%NOTFOUND'
      '    THEN'
      
        '        SELECT   PCOFERTAPROGRAMADAC_DFSEQ.NEXTVAL INTO VCODOFER' +
        'TA FROM DUAL;'
      ''
      '        REG.CODTABLOIDE := :CODTABLOIDE;'
      '        REG.DESCOFERTA := :DESCRICAO;'
      '        REG.DTINICIALSUGESTAO := :DTINICIAL;'
      '        REG.DTFINALSUGESTAO := :DTFINAL;'
      '        REG.DTINICIAL := TO_DATE ('#39'01/01/2050'#39', '#39'dd/MM/yyyy'#39');'
      '        REG.DTFINAL := TO_DATE ('#39'01/01/2050'#39', '#39'dd/MM/yyyy'#39');'
      '        REG.DTORIG := SYSDATE;'
      '        REG.CODFUNCORIG := :CODFUNCCADASTRO;'
      '        REG.CODFILIAL := :CODFILIAL;'
      '        REG.CODOFERTA := VCODOFERTA;'
      ''
      '        INSERT INTO PCOFERTAPROGRAMADAC'
      '          VALUES   REG;'
      '    END IF;'
      'END;')
    Left = 168
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DESCRICAO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTINICIAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTFINAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODFUNCCADASTRO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODTABLOIDE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIAL'
        Value = nil
      end>
  end
  object qrCancelaOferta: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'UPDATE   PCOFERTAPROGRAMADAC'
      '   SET   DTFINAL = TRUNC (SYSDATE), DTCANCEL = SYSDATE'
      ' WHERE   CODFILIAL = :CODFILIAL'
      ' AND CODTABLOIDE = :CODTABLOIDE')
    Left = 160
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODFILIAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODTABLOIDE'
        Value = nil
      end>
  end
end
