object dmCadastroMargens: TdmCadastroMargens
  OldCreateOrder = False
  Height = 356
  Width = 466
  object qrProduto: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT'
      'PCPRODUT.CODPROD,'
      'PCPRODUT.DESCRICAO,'
      'PCPRODUT.CODEPTO,'
      'PCPRODUT.CODSEC,'
      'PCPRODUT.CODCATEGORIA,'
      'PCPRODUT.CODSUBCATEGORIA'
      'FROM PCPRODUT'
      'WHERE CODPROD = :CODPROD')
    Left = 48
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODPROD'
        Value = nil
      end>
  end
  object qrAux: TUniQuery
    Connection = DmLogin.Conexao
    Left = 112
    Top = 16
  end
  object qrPesquisarMargens: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT C.CODCLASSIFICMERC,'
      '       C.CODFILIAL,'
      '       C.CODDEPTO,'
      '       (SELECT DESCRICAO'
      '        FROM PCDEPTO'
      '        WHERE CODEPTO = C.CODDEPTO)'
      '           DESCRICAODEPTO,'
      '       C.CODSEC,'
      '       (SELECT DESCRICAO'
      '        FROM PCSECAO'
      '        WHERE CODSEC = C.CODSEC)'
      '           DESCRICAOSECAO,'
      '       C.CODCATEGORIA,'
      '       (SELECT CATEGORIA'
      '        FROM PCCATEGORIA'
      
        '        WHERE CODSEC = C.CODSEC AND CODCATEGORIA = C.CODCATEGORI' +
        'A)'
      '           DESCRICAOCATEGORIA,'
      '       C.CODSUBCATEGORIA,'
      '       (SELECT SUBCATEGORIA'
      '        FROM PCSUBCATEGORIA'
      
        '        WHERE CODSEC = C.CODSEC AND CODCATEGORIA = C.CODCATEGORI' +
        'A AND CODSUBCATEGORIA = C.CODSUBCATEGORIA)'
      '           DESCRICAOSUBCATEGORIA,'
      '       C.CODPROD,'
      '       (SELECT DESCRICAO'
      '        FROM PCPRODUT'
      '        WHERE CODPROD = C.CODPROD)'
      '           DESCRICAOPRODUTO,'
      '       C.MARGEMGARANTIDA'
      'FROM I9CLASSIFICMERC C'
      'WHERE 1 = 1')
    Left = 192
    Top = 16
    object qrPesquisarMargensCODCLASSIFICMERC: TIntegerField
      FieldName = 'CODCLASSIFICMERC'
      Required = True
    end
    object qrPesquisarMargensCODFILIAL: TStringField
      FieldName = 'CODFILIAL'
      Size = 2
    end
    object qrPesquisarMargensCODDEPTO: TIntegerField
      FieldName = 'CODDEPTO'
    end
    object qrPesquisarMargensDESCRICAODEPTO: TStringField
      FieldName = 'DESCRICAODEPTO'
      ReadOnly = True
      Size = 25
    end
    object qrPesquisarMargensCODSEC: TIntegerField
      FieldName = 'CODSEC'
    end
    object qrPesquisarMargensDESCRICAOSECAO: TStringField
      FieldName = 'DESCRICAOSECAO'
      ReadOnly = True
      Size = 40
    end
    object qrPesquisarMargensCODCATEGORIA: TIntegerField
      FieldName = 'CODCATEGORIA'
    end
    object qrPesquisarMargensDESCRICAOCATEGORIA: TStringField
      FieldName = 'DESCRICAOCATEGORIA'
      ReadOnly = True
      Size = 40
    end
    object qrPesquisarMargensCODSUBCATEGORIA: TIntegerField
      FieldName = 'CODSUBCATEGORIA'
    end
    object qrPesquisarMargensDESCRICAOSUBCATEGORIA: TStringField
      FieldName = 'DESCRICAOSUBCATEGORIA'
      ReadOnly = True
      Size = 40
    end
    object qrPesquisarMargensCODPROD: TIntegerField
      FieldName = 'CODPROD'
    end
    object qrPesquisarMargensDESCRICAOPRODUTO: TStringField
      FieldName = 'DESCRICAOPRODUTO'
      ReadOnly = True
      Size = 40
    end
    object qrPesquisarMargensMARGEMGARANTIDA: TFloatField
      FieldName = 'MARGEMGARANTIDA'
    end
  end
  object dsPesquisarMargens: TDataSource
    DataSet = qrPesquisarMargens
    Left = 192
    Top = 72
  end
  object qrInserirMargem: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'DECLARE'
      '    REG I9CLASSIFICMERC%ROWTYPE;'
      'BEGIN'
      '    UPDATE I9CLASSIFICMERC '
      '    SET CODFILIAL       = :CODFILIAL,'
      '    CODDEPTO            = :CODDEPTO,'
      '    CODSEC              = :CODSEC,'
      '    CODCATEGORIA        = :CODCATEGORIA,'
      '    CODSUBCATEGORIA     = :CODSUBCATEGORIA,    '
      '    CODPROD             = :CODPROD,      '
      '    MARGEMGARANTIDA     = :MARGEMGARANTIDA    '
      '    WHERE CODCLASSIFICMERC = :CODCLASSIFICMERC;'
      '    '
      '    IF SQL%NOTFOUND THEN '
      ''
      '        REG.CODCLASSIFICMERC := :CODCLASSIFICMERC;      '
      '        REG.CODFILIAL := :CODFILIAL;        '
      '        REG.CODDEPTO := :CODDEPTO;'
      '        REG.CODSEC := :CODSEC;'
      '        REG.CODCATEGORIA := :CODCATEGORIA;'
      '        REG.CODSUBCATEGORIA := :CODSUBCATEGORIA;           '
      '        REG.CODPROD := :CODPROD;   '
      '        REG.MARGEMGARANTIDA := :MARGEMGARANTIDA;           '
      '                '
      '        INSERT INTO I9CLASSIFICMERC VALUES REG;    '
      '    END IF;'
      'END;')
    Left = 48
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODFILIAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODDEPTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODSEC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODCATEGORIA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODSUBCATEGORIA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODPROD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MARGEMGARANTIDA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODCLASSIFICMERC'
        Value = nil
      end>
  end
end
