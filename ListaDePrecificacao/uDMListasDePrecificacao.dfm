object DMListasDePrecificacao: TDMListasDePrecificacao
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
    Left = 96
    Top = 128
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
    Left = 176
    Top = 80
  end
  object cdsListaProdutosInseridos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 712
    Top = 32
    object cdsListaProdutosInseridosCODPROD: TIntegerField
      FieldName = 'CODPROD'
    end
    object cdsListaProdutosInseridosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object cdsListaProdutosInseridosCODAUXILIAR: TFloatField
      FieldName = 'CODAUXILIAR'
    end
  end
  object dsListaProdutosInseridos: TDataSource
    DataSet = cdsListaProdutosInseridos
    Left = 704
    Top = 88
  end
  object qrInsereLista: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'DECLARE'
      '    REG I9LISTAPRECIFICACAO%ROWTYPE;'
      'BEGIN'
      ''
      'REG.MATRICULA := :MATRICULA;'
      'REG.CODLISTA := :CODLISTA;'
      'REG.DESCRICAO := :DESCRICAO;'
      'REG.CODAUXILIAR := :CODAUXILIAR;'
      'REG.CODPROD := :CODPROD;'
      'REG.DATA := TRUNC(SYSDATE);'
      ''
      'INSERT INTO I9LISTAPRECIFICACAO VALUES REG;'
      ''
      'END;')
    Left = 72
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MATRICULA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODLISTA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCRICAO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODAUXILIAR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODPROD'
        Value = nil
      end>
  end
  object qrPesquisaLista: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      
        'SELECT I9LISTAPRECIFICACAO.CODLISTA, I9LISTAPRECIFICACAO.CODPROD' +
        ', I9LISTAPRECIFICACAO.CODAUXILIAR, I9LISTAPRECIFICACAO.DESCRICAO' +
        ' DESCRICAOLISTA, I9LISTAPRECIFICACAO.MATRICULA, I9LISTAPRECIFICA' +
        'CAO.DATA,'
      'PCPRODUT.DESCRICAO DESCRICAOPROD'
      'FROM I9LISTAPRECIFICACAO, PCPRODUT'
      'WHERE CODLISTA = :CODLISTA'
      'AND PCPRODUT.CODPROD = I9LISTAPRECIFICACAO.CODPROD'
      'ORDER BY CODPROD, CODAUXILIAR')
    Left = 64
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODLISTA'
        Value = nil
      end>
  end
  object qrDeletarLista: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'DELETE FROM I9LISTAPRECIFICACAO WHERE CODLISTA = :CODLISTA')
    Left = 64
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODLISTA'
        Value = nil
      end>
  end
end
