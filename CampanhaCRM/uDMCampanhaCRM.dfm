object DMCampanhaCRM: TDMCampanhaCRM
  OldCreateOrder = False
  Height = 612
  Width = 865
  object qrAux: TUniQuery
    Connection = DmLogin.Conexao
    Left = 64
    Top = 16
  end
  object dsClientesCampanha: TUniDataSource
    Left = 64
    Top = 80
  end
  object cdsProdutosIncluidos: TClientDataSet
    PersistDataPacket.Data = {
      DB0200009619E0BD010000001800000019000000000003000000DB0209434F44
      46494C49414C01004900000001000557494454480200020014000E434F444341
      4D50414E484143524D0400010000000000064E554D5345510400010000000000
      07434F4450524F4404000100000000000944455343524943414F010049000000
      010005574944544802000200280008504552434445534308000400000000000F
      564C5645524241554E49544152494F08000400000000000C434F4450524F4450
      52494E430400010000000000065056454E444108000400000001000753554254
      5950450200490006004D6F6E6579000A5056454E444141544143080004000000
      010007535542545950450200490006004D6F6E657900095056454E444143524D
      080004000000010007535542545950450200490006004D6F6E65790014505645
      4E444143524D41525245444F4E4441444F080004000000010007535542545950
      450200490006004D6F6E65790008435553544F46494E08000400000001000753
      5542545950450200490006004D6F6E6579000F4D415247454D46555455524143
      524D080004000000010007535542545950450200490006004D6F6E6579001344
      49464D415247454D43524D4154414341444F0800040000000100075355425459
      50450200490006004D6F6E657900094D415247454D4D494E0800040000000000
      10564C56455242414D415247454D4D494E08000400000000000A54454D46414D
      494C494101004900000001000557494454480200020001000551544553540800
      0400000000000E5056454E44414F524947494E414C0800040000000000065154
      554E4954080004000000000012504552434D415247454D444553454A41444108
      0004000000000017564C5645524241554E49544152494F4F524947494E414C08
      000400000000000E434F44464F524E45435052494E4308000400000000000A46
      4F524E454345444F5201004900000001000557494454480200020014000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODFILIAL'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODCAMPANHACRM'
        DataType = ftInteger
      end
      item
        Name = 'NUMSEQ'
        DataType = ftInteger
      end
      item
        Name = 'CODPROD'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PERCDESC'
        DataType = ftFloat
      end
      item
        Name = 'VLVERBAUNITARIO'
        DataType = ftFloat
      end
      item
        Name = 'CODPRODPRINC'
        DataType = ftInteger
      end
      item
        Name = 'PVENDA'
        DataType = ftCurrency
      end
      item
        Name = 'PVENDAATAC'
        DataType = ftCurrency
      end
      item
        Name = 'PVENDACRM'
        DataType = ftCurrency
      end
      item
        Name = 'PVENDACRMARREDONDADO'
        DataType = ftCurrency
      end
      item
        Name = 'CUSTOFIN'
        DataType = ftCurrency
      end
      item
        Name = 'MARGEMFUTURACRM'
        DataType = ftCurrency
      end
      item
        Name = 'DIFMARGEMCRMATACADO'
        DataType = ftCurrency
      end
      item
        Name = 'MARGEMMIN'
        DataType = ftFloat
      end
      item
        Name = 'VLVERBAMARGEMMIN'
        DataType = ftFloat
      end
      item
        Name = 'TEMFAMILIA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'QTEST'
        DataType = ftFloat
      end
      item
        Name = 'PVENDAORIGINAL'
        DataType = ftFloat
      end
      item
        Name = 'QTUNIT'
        DataType = ftFloat
      end
      item
        Name = 'PERCMARGEMDESEJADA'
        DataType = ftFloat
      end
      item
        Name = 'VLVERBAUNITARIOORIGINAL'
        DataType = ftFloat
      end
      item
        Name = 'CODFORNECPRINC'
        DataType = ftFloat
      end
      item
        Name = 'FORNECEDOR'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'cdsProdutosIncluidosIndex1'
      end>
    IndexFieldNames = 'DESCRICAO'
    Params = <>
    StoreDefs = True
    Left = 56
    Top = 216
    object cdsProdutosIncluidosCODFILIAL: TStringField
      FieldName = 'CODFILIAL'
    end
    object cdsProdutosIncluidosCODCAMPANHACRM: TIntegerField
      FieldName = 'CODCAMPANHACRM'
    end
    object cdsProdutosIncluidosNUMSEQ: TIntegerField
      FieldName = 'NUMSEQ'
    end
    object cdsProdutosIncluidosCODPROD: TIntegerField
      FieldName = 'CODPROD'
    end
    object cdsProdutosIncluidosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object cdsProdutosIncluidosPERCDESC: TFloatField
      FieldName = 'PERCDESC'
    end
    object cdsProdutosIncluidosVLVERBAUNITARIO: TFloatField
      FieldName = 'VLVERBAUNITARIO'
      OnChange = cdsProdutosIncluidosVLVERBAUNITARIOChange
    end
    object cdsProdutosIncluidosCODPRODPRINC: TIntegerField
      FieldName = 'CODPRODPRINC'
    end
    object cdsProdutosIncluidosPVENDA: TCurrencyField
      FieldName = 'PVENDA'
    end
    object cdsProdutosIncluidosPVENDAATAC: TCurrencyField
      FieldName = 'PVENDAATAC'
    end
    object cdsProdutosIncluidosPVENDACRM: TCurrencyField
      FieldName = 'PVENDACRM'
      OnChange = cdsProdutosIncluidosPVENDACRMChange
    end
    object cdsProdutosIncluidosPVENDACRMARREDONDADO: TCurrencyField
      FieldName = 'PVENDACRMARREDONDADO'
    end
    object cdsProdutosIncluidosCUSTOFIN: TCurrencyField
      FieldName = 'CUSTOFIN'
    end
    object cdsProdutosIncluidosMARGEMFUTURACRM: TCurrencyField
      FieldName = 'MARGEMFUTURACRM'
    end
    object cdsProdutosIncluidosDIFMARGEMCRMATACADO: TCurrencyField
      FieldName = 'DIFMARGEMCRMATACADO'
    end
    object cdsProdutosIncluidosMARGEMMIN: TFloatField
      FieldName = 'MARGEMMIN'
    end
    object cdsProdutosIncluidosVLVERBAMARGEMMIN: TFloatField
      FieldName = 'VLVERBAMARGEMMIN'
    end
    object cdsProdutosIncluidosTEMFAMILIA: TStringField
      FieldName = 'TEMFAMILIA'
      Size = 1
    end
    object cdsProdutosIncluidosQTEST: TFloatField
      FieldName = 'QTEST'
    end
    object cdsProdutosIncluidosPVENDAORIGINAL: TFloatField
      FieldName = 'PVENDAORIGINAL'
    end
    object cdsProdutosIncluidosQTUNIT: TFloatField
      FieldName = 'QTUNIT'
    end
    object cdsProdutosIncluidosPERCMARGEMDESEJADA: TFloatField
      FieldName = 'PERCMARGEMDESEJADA'
      OnChange = cdsProdutosIncluidosPERCMARGEMDESEJADAChange
    end
    object cdsProdutosIncluidosVLVERBAUNITARIOORIGINAL: TFloatField
      FieldName = 'VLVERBAUNITARIOORIGINAL'
    end
    object cdsProdutosIncluidosCODFORNECPRINC: TFloatField
      FieldName = 'CODFORNECPRINC'
    end
    object cdsProdutosIncluidosFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
    end
  end
  object dsCondicoesCampanha: TDataSource
    DataSet = cdsProdutosIncluidos
    Left = 56
    Top = 272
  end
  object qrGravarCampanha: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      '/* Formatted on 11/05/2019 11:18:42 (QP5 v5.126) */'
      'DECLARE'
      '    REG PCDESCONTOFIDELIDADE%ROWTYPE;'
      '    V_CODFIDELIDADE NUMBER (10);'
      'BEGIN'
      
        '    SELECT DFSEQ_PCDESCONTOFIDELIDADE.NEXTVAL INTO V_CODFIDELIDA' +
        'DE FROM DUAL;'
      '  '
      '    REG.CODFILIAL := :CODFILIAL;'
      '    REG.CODCLI := :CODCLI;'
      '    REG.CODCLICONVENIO := :CODCLICONVENIO;'
      '    REG.CODFIDELIDADE := V_CODFIDELIDADE;'
      '    REG.ROTINALANC := '#39'9810'#39';'
      '    REG.CODCAMPANHACRM := :CODCAMPANHACRM;'
      '    REG.DTINCLUSAO := SYSDATE;'
      '    REG.PERCDESCONTO := :PERCDESCONTO;'
      '    REG.CODPROD := :CODPROD;'
      '    REG.DTINICIAL := :DTINICIAL;'
      '    REG.DTFINAL := :DTFINAL;'
      
        '    REG.VLVERBAUNITARIO := PKG_I9UTILITARIO.GET_PRECO_QTUNIT1( N' +
        'VL(:QTUNIT, 1),  :VLVERBAUNITARIO );'
      '    REG.VLVERBAUNITARIOORIGINAL := :VLVERBAUNITARIO;  '
      '    REG.TIPOTERCEIROPRECO := :TIPOTERCEIROPRECO;'
      
        '    REG.PVENDACRM :=  PKG_I9UTILITARIO.GET_PRECO_QTUNIT1( NVL(:Q' +
        'TUNIT, 1),  :PVENDACRM );'
      '    REG.PVENDACRMORIGINAL := :PVENDACRM;   '
      '    REG.CODPRODPRINC := :CODPRODPRINC;'
      '    REG.PRODPRINCIPAL := '#39'S'#39';'
      '    REG.CODCLIDIRECIONADO := :CODCLIDIRECIONADO;'
      '    REG.APLICARAUTOMATICO := '#39'S'#39';'
      ''
      '    INSERT INTO PCDESCONTOFIDELIDADE'
      '    VALUES REG;'
      ''
      '    --INSERIR PRODUTOS DA FAMILIA'
      '    IF :TEMFAMILIA = '#39'S'#39
      '    THEN'
      '        FOR REG_PROD IN (SELECT CODPROD'
      '                    FROM PCPRODUT'
      
        '                    WHERE CODPRODPRINC = :CODPRODPRINC AND CODPR' +
        'OD <> :CODPROD)'
      '        LOOP'
      
        '            SELECT DFSEQ_PCDESCONTOFIDELIDADE.NEXTVAL INTO V_COD' +
        'FIDELIDADE FROM DUAL;'
      ''
      '            DELETE FROM PCDESCONTOFIDELIDADE'
      '            WHERE CODCAMPANHACRM = :CODCAMPANHACRM'
      '            AND CODPROD = REG_PROD.CODPROD'
      '            AND CODCLICONVENIO = :CODCLICONVENIO;'
      ''
      '            REG.CODFILIAL := :CODFILIAL;'
      '            REG.CODCLI := :CODCLI;'
      '            REG.CODCLICONVENIO := :CODCLICONVENIO;'
      '            REG.CODFIDELIDADE := V_CODFIDELIDADE;'
      '            REG.ROTINALANC := '#39'9810'#39';'
      '            REG.CODCAMPANHACRM := :CODCAMPANHACRM;'
      '            REG.DTINCLUSAO := SYSDATE;'
      '            REG.PERCDESCONTO := :PERCDESCONTO;'
      '            REG.CODPROD := REG_PROD.CODPROD;'
      '            REG.DTINICIAL := :DTINICIAL;'
      '            REG.DTFINAL := :DTFINAL;'
      
        '            REG.VLVERBAUNITARIO := PKG_I9UTILITARIO.GET_PRECO_QT' +
        'UNIT1( NVL(:QTUNIT, 1),  :VLVERBAUNITARIO );'
      '            REG.VLVERBAUNITARIOORIGINAL := :VLVERBAUNITARIO;'
      '            REG.TIPOTERCEIROPRECO := :TIPOTERCEIROPRECO;'
      
        '            REG.PVENDACRM :=  PKG_I9UTILITARIO.GET_PRECO_QTUNIT1' +
        '( NVL(:QTUNIT, 1),  :PVENDACRM );'
      '            REG.PVENDACRMORIGINAL := :PVENDACRM;'
      '            REG.CODPRODPRINC := :CODPRODPRINC;'
      '            REG.PRODPRINCIPAL := '#39'N'#39';'
      '            REG.CODCLIDIRECIONADO := :CODCLIDIRECIONADO;'
      '            REG.APLICARAUTOMATICO := '#39'S'#39';'
      ''
      '            INSERT INTO PCDESCONTOFIDELIDADE'
      '            VALUES REG;'
      '        END LOOP;'
      '    END IF;'
      ''
      'END;')
    Left = 192
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODFILIAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODCLI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODCLICONVENIO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODCAMPANHACRM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PERCDESCONTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODPROD'
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
        Name = 'QTUNIT'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VLVERBAUNITARIO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TIPOTERCEIROPRECO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PVENDACRM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODPRODPRINC'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODCLIDIRECIONADO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TEMFAMILIA'
        Value = nil
      end>
  end
  object qrConsultaCampanha: TUniQuery
    SQLRefresh.Strings = (
      'SELECT DISTINCT'
      '       I9CAMPANHACRM.CODFILIAL,'
      '       I9CAMPANHACRM.CODCAMPANHACRM,'
      '       I9CAMPANHACRM.DESCRICAOCAMPANHACRM,'
      '       I9CAMPANHACRM.DTINICIAL,'
      '       I9CAMPANHACRM.DTFINAL,'
      '       CASE '
      
        '        WHEN (I9CAMPANHACRM.DTEXCLUSAO IS NOT NULL) THEN '#39'CANCEL' +
        'ADA'#39
      
        '        WHEN (I9CAMPANHACRM.DTAPROVACAO IS NOT NULL) THEN '#39'APROV' +
        'ADA'#39
      
        '        WHEN (I9CAMPANHACRM.DTREJEICAO IS NOT NULL) THEN '#39'REJEIT' +
        'ADA'#39
      
        '        WHEN (I9CAMPANHACRM.DTAPROVACAO IS NULL) AND (I9CAMPANHA' +
        'CRM.DTREJEICAO IS NULL) THEN '#39'AGUARDANDO APROVACAO'#39' '
      '       END STATUS,'
      
        '       DECODE (I9CAMPANHACRM.TIPOCAMPANHA, '#39'A'#39', '#39'Cli. Atacado'#39', ' +
        #39'D'#39', '#39'% Desconto'#39', '#39'ERRO'#39') AS TIPO,'
      '       NVL (I9CAMPANHACRM.NOVOSCLIENTES, '#39'N'#39') NOVOSCLIENTES,'
      '       NVL (I9CAMPANHACRM.TODOSCLIENTES, '#39'N'#39') TODOSCLIENTES,'
      '       I9CAMPANHACRM.DTREBAIXACUSTO,'
      '       (SELECT COUNT ( * )'
      '        FROM PCDESCONTOFIDELIDADE X'
      '        WHERE X.CODCAMPANHACRM = I9CAMPANHACRM.CODCAMPANHACRM'
      '              AND X.CODCLICONVENIO = (SELECT CODCLICRMGERAL'
      '                                      FROM PCCONSUM'
      '                                      WHERE ROWNUM = 1))'
      '           QTITENS,'
      '       I9CAMPANHACRM.CODTABLOIDECRM,'
      '       I9CAMPANHACRM.DTAPROVACAO,'
      '       I9CAMPANHACRM.DTREJEICAO,'
      '       I9CAMPANHACRM.DTEXCLUSAO'
      'FROM I9CAMPANHACRM, PCDESCONTOFIDELIDADE P'
      'WHERE I9CAMPANHACRM.CODCAMPANHACRM = P.CODCAMPANHACRM'
      'AND I9CAMPANHACRM.CODCAMPANHACRM = :CODCAMPANHACRM'
      'ORDER BY I9CAMPANHACRM.CODCAMPANHACRM DESC')
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '       '#39'N'#39' SELECIONADO,'
      'I9CAMPANHACRM.CODFUNCINCLUSAO,'
      
        '(SELECT NOME_GUERRA FROM PCEMPR WHERE MATRICULA = I9CAMPANHACRM.' +
        'CODFUNCINCLUSAO) AS FUNCIONARIOINCLUSAO,'
      '       I9CAMPANHACRM.CODFILIAL,'
      '       I9CAMPANHACRM.CODCAMPANHACRM,'
      '       I9CAMPANHACRM.DESCRICAOCAMPANHACRM,'
      '       I9CAMPANHACRM.DTINICIAL,'
      '       I9CAMPANHACRM.DTFINAL,'
      '       CASE '
      
        '        WHEN (I9CAMPANHACRM.DTEXCLUSAO IS NOT NULL) THEN '#39'CANCEL' +
        'ADA'#39
      
        '        WHEN (I9CAMPANHACRM.DTAPROVACAO IS NOT NULL) THEN '#39'APROV' +
        'ADA'#39
      
        '        WHEN (I9CAMPANHACRM.DTREJEICAO IS NOT NULL) THEN '#39'REJEIT' +
        'ADA'#39
      
        '        WHEN (I9CAMPANHACRM.DTAPROVACAO IS NULL) AND (I9CAMPANHA' +
        'CRM.DTREJEICAO IS NULL) THEN '#39'AGUARDANDO APROVACAO'#39' '
      '       END STATUS,'
      
        '       DECODE (I9CAMPANHACRM.TIPOCAMPANHA, '#39'A'#39', '#39'Cli. Atacado'#39', ' +
        #39'D'#39', '#39'% Desconto'#39', '#39'ERRO'#39') AS TIPO,'
      '       NVL (I9CAMPANHACRM.NOVOSCLIENTES, '#39'N'#39') NOVOSCLIENTES,'
      '       NVL (I9CAMPANHACRM.TODOSCLIENTES, '#39'N'#39') TODOSCLIENTES,'
      '       I9CAMPANHACRM.DTREBAIXACUSTO,'
      '       (SELECT COUNT ( * )'
      '        FROM PCDESCONTOFIDELIDADE X'
      '        WHERE X.CODCAMPANHACRM = I9CAMPANHACRM.CODCAMPANHACRM'
      '              AND X.CODCLICONVENIO = (SELECT CODCLICRMGERAL'
      '                                      FROM PCCONSUM'
      '                                      WHERE ROWNUM = 1))'
      '           QTITENS,'
      '       CASE '
      '       WHEN (SELECT COUNT(*) FROM PCDESCONTOFIDELIDADE X '
      
        '                WHERE X.CODCAMPANHACRM = I9CAMPANHACRM.CODCAMPAN' +
        'HACRM '
      '             AND NVL(X.VLVERBAUNITARIO,0) > 0) > 0'
      '       THEN '#39'S'#39
      '       ELSE '#39'N'#39
      '       END POSSUIVERBA,'
      '       I9CAMPANHACRM.CODTABLOIDECRM,'
      '       I9CAMPANHACRM.DTAPROVACAO,'
      '       I9CAMPANHACRM.DTREJEICAO,'
      '       I9CAMPANHACRM.DTEXCLUSAO,'
      
        '       NVL(I9CAMPANHACRM.CAMPANHADIRECIONADA, '#39'N'#39') AS CAMPANHADI' +
        'RECIONADA,'
      
        '       NVL(I9CAMPANHACRM.I9TIPOCAMPANHAPROPZ, '#39'massive'#39') as I9TI' +
        'POCAMPANHAPROPZ,'
      '       I9CAMPANHACRM.I9TEXTOLEGALPROPZ, '
      
        '       NVL(I9CAMPANHACRM.I9MECANICAPROPZ, '#39'reduced_price'#39') as I9' +
        'MECANICAPROPZ'
      'FROM I9CAMPANHACRM'
      'WHERE 0 = 0 '
      'ORDER BY I9CAMPANHACRM.CODCAMPANHACRM DESC')
    Options.SetFieldsReadOnly = False
    Left = 192
    Top = 88
    object qrConsultaCampanhaCODCAMPANHACRM: TLargeintField
      FieldName = 'CODCAMPANHACRM'
      ReadOnly = True
    end
    object qrConsultaCampanhaDESCRICAOCAMPANHACRM: TStringField
      FieldName = 'DESCRICAOCAMPANHACRM'
      Size = 50
    end
    object qrConsultaCampanhaDTINICIAL: TDateTimeField
      FieldName = 'DTINICIAL'
    end
    object qrConsultaCampanhaDTFINAL: TDateTimeField
      FieldName = 'DTFINAL'
    end
    object qrConsultaCampanhaCODFILIAL: TStringField
      FieldName = 'CODFILIAL'
      Size = 2
    end
    object qrConsultaCampanhaSTATUS: TStringField
      FieldName = 'STATUS'
      ReadOnly = True
      Size = 9
    end
    object qrConsultaCampanhaTIPO: TStringField
      FieldName = 'TIPO'
      ReadOnly = True
      Size = 12
    end
    object qrConsultaCampanhaNOVOSCLIENTES: TStringField
      FieldName = 'NOVOSCLIENTES'
      ReadOnly = True
      Size = 1
    end
    object qrConsultaCampanhaTODOSCLIENTES: TStringField
      FieldName = 'TODOSCLIENTES'
      ReadOnly = True
      Size = 1
    end
    object qrConsultaCampanhaDTREBAIXACUSTO: TDateTimeField
      FieldName = 'DTREBAIXACUSTO'
    end
    object qrConsultaCampanhaQTITENS: TFloatField
      FieldName = 'QTITENS'
      ReadOnly = True
    end
    object qrConsultaCampanhaCODTABLOIDECRM: TLargeintField
      FieldName = 'CODTABLOIDECRM'
    end
    object qrConsultaCampanhaDTAPROVACAO: TDateTimeField
      FieldName = 'DTAPROVACAO'
    end
    object qrConsultaCampanhaDTREJEICAO: TDateTimeField
      FieldName = 'DTREJEICAO'
    end
    object qrConsultaCampanhaDTEXCLUSAO: TDateTimeField
      FieldName = 'DTEXCLUSAO'
    end
    object qrConsultaCampanhaPOSSUIVERBA: TStringField
      FieldName = 'POSSUIVERBA'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qrConsultaCampanhaSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object qrConsultaCampanhaCODFUNCINCLUSAO: TLargeintField
      FieldName = 'CODFUNCINCLUSAO'
    end
    object qrConsultaCampanhaFUNCIONARIOINCLUSAO: TStringField
      FieldName = 'FUNCIONARIOINCLUSAO'
      Size = 15
    end
    object qrConsultaCampanhaI9TIPOCAMPANHAPROPZ: TStringField
      FieldName = 'I9TIPOCAMPANHAPROPZ'
      Size = 200
    end
    object qrConsultaCampanhaI9TEXTOLEGALPROPZ: TStringField
      FieldName = 'I9TEXTOLEGALPROPZ'
      Size = 200
    end
    object qrConsultaCampanhaI9MECANICAPROPZ: TStringField
      FieldName = 'I9MECANICAPROPZ'
      Size = 50
    end
    object qrConsultaCampanhaCAMPANHADIRECIONADA: TStringField
      FieldName = 'CAMPANHADIRECIONADA'
      Size = 1
    end
  end
  object dsConsultaCampanha: TDataSource
    DataSet = qrConsultaCampanha
    Left = 56
    Top = 352
  end
  object qrGravarI9CampanhaCRM: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'DECLARE'
      '    REG   I9CAMPANHACRM%ROWTYPE;'
      'BEGIN'
      '    UPDATE   I9CAMPANHACRM'
      '       SET   DESCRICAOCAMPANHACRM = :DESCRICAOCAMPANHACRM,'
      '             TIPOCAMPANHA = :TIPOCAMPANHA,'
      '             DTINICIAL = :DTINICIAL,'
      '             DTFINAL = :DTFINAL,'
      '             CODFILIAL = :CODFILIAL,'
      '             TODOSCLIENTES = :TODOSCLIENTES,'
      '             NOVOSCLIENTES = :NOVOSCLIENTS,'
      '             CODTABLOIDECRM = :CODTABLOIDECRM,'
      '             I9TIPOCAMPANHAPROPZ = :I9TIPOCAMPANHAPROPZ,'
      '             I9TEXTOLEGALPROPZ = :I9TEXTOLEGALPROPZ,'
      '             I9MECANICAPROPZ = :I9MECANICAPROPZ,'
      '             CAMPANHADIRECIONADA = :CAMPANHADIRECIONADA'
      '     WHERE   CODCAMPANHACRM = :CODCAMPANHACRM;'
      ''
      ''
      '    IF SQL%NOTFOUND'
      '    THEN'
      '        REG.DESCRICAOCAMPANHACRM := :DESCRICAOCAMPANHACRM;'
      '        REG.TIPOCAMPANHA := :TIPOCAMPANHA;'
      '        REG.DTINICIAL := :DTINICIAL;'
      '        REG.DTFINAL := :DTFINAL;'
      '        REG.CODFILIAL := :CODFILIAL;'
      '        REG.CODFUNCINCLUSAO := :CODFUNCINCLUSAO;'
      '        REG.CODCAMPANHACRM := :CODCAMPANHACRM;'
      '        REG.DTINCLUSAO := SYSDATE;'
      '        REG.TODOSCLIENTES := :TODOSCLIENTES;'
      '        REG.NOVOSCLIENTES := :NOVOSCLIENTES;'
      '        REG.CODTABLOIDECRM := :CODTABLOIDECRM;'
      '        REG.I9TIPOCAMPANHAPROPZ := :I9TIPOCAMPANHAPROPZ;'
      '        REG.I9TEXTOLEGALPROPZ := :I9TEXTOLEGALPROPZ;'
      '        REG.I9MECANICAPROPZ := :I9MECANICAPROPZ;'
      '        REG.CAMPANHADIRECIONADA := :CAMPANHADIRECIONADA;'
      ''
      '        INSERT INTO I9CAMPANHACRM'
      '          VALUES   REG;'
      '    END IF;'
      'END;')
    Left = 192
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DESCRICAOCAMPANHACRM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TIPOCAMPANHA'
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
        Name = 'CODFILIAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TODOSCLIENTES'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOVOSCLIENTS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODTABLOIDECRM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'I9TIPOCAMPANHAPROPZ'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'I9TEXTOLEGALPROPZ'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'I9MECANICAPROPZ'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CAMPANHADIRECIONADA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODCAMPANHACRM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODFUNCINCLUSAO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOVOSCLIENTES'
        Value = nil
      end>
  end
  object qrExcluirCampanhaCRM: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'UPDATE I9CAMPANHACRM'
      'SET DTEXCLUSAO = TRUNC(SYSDATE),'
      'CODFUNCEXCLUSAO = :MATRICULA'
      'WHERE CODCAMPANHACRM = :CODCAMPANHACRM;')
    Left = 56
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MATRICULA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODCAMPANHACRM'
        Value = nil
      end>
  end
  object qrInserirGrupoCRM: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'DECLARE'
      '    REG I9GRUPOCRMC%ROWTYPE;'
      '    vVALORFILTRO VARCHAR2(1);'
      'BEGIN'
      ''
      '    UPDATE I9GRUPOCRMC'
      '       SET DESCRICAO = :DESCRICAO,'
      '           GRUPOPRECOATACADO = :GRUPOPRECOATACADO,'
      '           GRUPOASSOCIADO    = :GRUPOASSOCIADO,'
      '           USABIOMETRIA      = :USABIOMETRIA'
      '    WHERE CODGRUPOCRM = :CODGRUPOCRM;'
      ''
      '    IF SQL%NOTFOUND THEN'
      '       '
      '        REG.CODGRUPOCRM := :CODGRUPOCRM;'
      '        REG.DESCRICAO := :DESCRICAO;'
      '        REG.GRUPOPRECOATACADO := :GRUPOPRECOATACADO;'
      '        REG.GRUPOASSOCIADO := :GRUPOASSOCIADO;'
      '        REG.DTINCLUSAO := SYSDATE;'
      '        REG.CODFUNCINCLUSAO := :MATRICULA;'
      '        REG.USABIOMETRIA := :USABIOMETRIA;'
      ''
      '        INSERT INTO I9GRUPOCRMC VALUES REG;'
      ''
      '    END IF;'
      ''
      'END;')
    Left = 192
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DESCRICAO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'GRUPOPRECOATACADO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'GRUPOASSOCIADO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'USABIOMETRIA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODGRUPOCRM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MATRICULA'
        Value = nil
      end>
  end
  object ppRelVendaProd: TppReport
    AutoStop = False
    DataPipeline = ppDBRelVendaProd
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Winthor\Fontes\Winthor\Modulos\03 Vendas\PCINF324\relat'#243'rio d' +
      'e produtos.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    TextSearchSettings.ShowAll = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 418
    Top = 178
    Version = '17.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRelVendaProd'
    object ppHeaderBand5: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 30692
      mmPrintPosition = 0
      object ppLabelTituloProd: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        Caption = 'Acompanhamento de Campanha CRM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 25
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 10054
        mmLeft = 65352
        mmTop = 11377
        mmWidth = 156898
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable9: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable9'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 251884
        mmTop = 1323
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable10: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable10'
        VarType = vtPageNoDesc
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 268023
        mmTop = 5292
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Color = clSilver
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        DataField = 'CODPROD'
        DataPipeline = ppDBRelVendaProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelVendaProd'
        mmHeight = 2910
        mmLeft = 781
        mmTop = 265
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBRelVendaProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRelVendaProd'
        mmHeight = 3175
        mmLeft = 11363
        mmTop = 265
        mmWidth = 41010
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBTextPRODPVENDA: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText20'
        DataField = 'VLVENDA'
        DataPipeline = ppDBRelVendaProd
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelVendaProd'
        mmHeight = 2910
        mmLeft = 81756
        mmTop = 265
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText205'
        DataField = 'QT'
        DataPipeline = ppDBRelVendaProd
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelVendaProd'
        mmHeight = 2910
        mmLeft = 52652
        mmTop = 0
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText209: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2014'
        DataField = 'VLCUSTOFIN'
        DataPipeline = ppDBRelVendaProd
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelVendaProd'
        mmHeight = 2910
        mmLeft = 66411
        mmTop = 265
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        DataField = 'VLVERBAUNITARIO'
        DataPipeline = ppDBRelVendaProd
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelVendaProd'
        mmHeight = 2910
        mmLeft = 235480
        mmTop = 794
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText201'
        DataField = 'VLLUCRO'
        DataPipeline = ppDBRelVendaProd
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelVendaProd'
        mmHeight = 2910
        mmLeft = 98425
        mmTop = 265
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        DataField = 'PERCMARGEM'
        DataPipeline = ppDBRelVendaProd
        DisplayFormat = '0.00 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelVendaProd'
        mmHeight = 2910
        mmLeft = 115623
        mmTop = 265
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        DataField = 'CODFORNEC'
        DataPipeline = ppDBRelVendaProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelVendaProd'
        mmHeight = 2910
        mmLeft = 131498
        mmTop = 529
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        DataField = 'FORNECEDOR'
        DataPipeline = ppDBRelVendaProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRelVendaProd'
        mmHeight = 2910
        mmLeft = 139965
        mmTop = 529
        mmWidth = 34131
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        DataField = 'PVENDACRM'
        DataPipeline = ppDBRelVendaProd
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVendaProd'
        mmHeight = 3175
        mmLeft = 174625
        mmTop = 529
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText14'
        DataField = 'MARGEMCRM'
        DataPipeline = ppDBRelVendaProd
        DisplayFormat = '0.00 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVendaProd'
        mmHeight = 3175
        mmLeft = 218811
        mmTop = 529
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText64: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText64'
        DataField = 'PVENDA'
        DataPipeline = ppDBRelVendaProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVendaProd'
        mmHeight = 2910
        mmLeft = 189442
        mmTop = 794
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText65: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText65'
        DataField = 'PVENDAATAC'
        DataPipeline = ppDBRelVendaProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelVendaProd'
        mmHeight = 3175
        mmLeft = 203994
        mmTop = 529
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        DataField = 'VLTOTALVERBA'
        DataPipeline = ppDBRelVendaProd
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelVendaProd'
        mmHeight = 2910
        mmLeft = 251090
        mmTop = 529
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText66: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText66'
        DataField = 'TIPOVERBA'
        DataPipeline = ppDBRelVendaProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelVendaProd'
        mmHeight = 3175
        mmLeft = 268817
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppSummaryBand5: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 12965
      mmPrintPosition = 0
    end
    object ppGroup4: TppGroup
      BreakName = 'CODCAMPANHACRM'
      DataPipeline = ppDBRelVendaProd
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRelVendaProd'
      NewFile = False
      object ppGroupHeaderBand4: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 19050
        mmPrintPosition = 0
        object ppLine8: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line8'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 1057
          mmWidth = 284300
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine10: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line10'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 7938
          mmWidth = 284300
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel5: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label9'
          Caption = 'Campanha:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 1852
          mmTop = 3440
          mmWidth = 16140
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText8: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText9'
          DataField = 'CODCAMPANHACRM'
          DataPipeline = ppDBRelVendaProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRelVendaProd'
          mmHeight = 3704
          mmLeft = 19579
          mmTop = 3440
          mmWidth = 8731
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel6: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label10'
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 28575
          mmTop = 3440
          mmWidth = 1058
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText9: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText10'
          DataField = 'DESCRICAOCAMPANHACRM'
          DataPipeline = ppDBRelVendaProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRelVendaProd'
          mmHeight = 3704
          mmLeft = 30427
          mmTop = 3440
          mmWidth = 75936
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel83: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label83'
          Caption = 'Filial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 109538
          mmTop = 3440
          mmWidth = 20373
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText5: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText6'
          DataField = 'CODFILIAL'
          DataPipeline = ppDBRelVendaProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRelVendaProd'
          mmHeight = 3704
          mmLeft = 131498
          mmTop = 3440
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel34: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label7'
          Caption = 'Per'#237'odo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 141817
          mmTop = 3440
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText6: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText7'
          DataField = 'DTINICIAL'
          DataPipeline = ppDBRelVendaProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRelVendaProd'
          mmHeight = 3440
          mmLeft = 157163
          mmTop = 3440
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText7: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText8'
          DataField = 'DTFINAL'
          DataPipeline = ppDBRelVendaProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRelVendaProd'
          mmHeight = 3440
          mmLeft = 178330
          mmTop = 3440
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel4: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label3'
          Caption = 'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 174625
          mmTop = 3440
          mmWidth = 1588
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel36: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label4'
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 794
          mmTop = 14552
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel37: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label26'
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 11377
          mmTop = 14552
          mmWidth = 41010
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel38: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label55'
          Caption = 'Vl. Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 81756
          mmTop = 14552
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel39: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label51'
          Caption = 'Verba Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 251090
          mmTop = 14552
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel315: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label315'
          AutoSize = False
          Caption = 'Qt. Vend.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          WordWrap = True
          mmHeight = 4498
          mmLeft = 52652
          mmTop = 14552
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel374: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label374'
          Caption = 'Cust. Fin.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 67469
          mmTop = 14552
          mmWidth = 13494
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel1: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label5'
          Caption = 'Verba Un.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 235480
          mmTop = 14552
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label6'
          Caption = 'Vl. Lucro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 98425
          mmTop = 14552
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel3: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label8'
          Caption = '% Margem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 115623
          mmTop = 14552
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel7: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label11'
          Caption = 'Fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 131498
          mmTop = 14552
          mmWidth = 42598
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel42: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label42'
          AutoSize = False
          Caption = 'P.CRM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 174625
          mmTop = 14552
          mmWidth = 14288
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel47: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label47'
          AutoSize = False
          Caption = 'Mar. CRM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 218811
          mmTop = 14552
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel61: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label61'
          AutoSize = False
          Caption = 'P.Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 189442
          mmTop = 14552
          mmWidth = 13494
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel65: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label65'
          AutoSize = False
          Caption = 'P.Atac'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 203994
          mmTop = 14552
          mmWidth = 13494
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel66: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label66'
          Caption = 'Tipo verba'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 268817
          mmTop = 14288
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 14552
        mmPrintPosition = 0
        object ppLine9: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line1'
          ParentWidth = True
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 2646
          mmWidth = 284300
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc2'
          DataField = 'QT'
          DataPipeline = ppDBRelVendaProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRelVendaProd'
          mmHeight = 4498
          mmLeft = 62177
          mmTop = 2646
          mmWidth = 16404
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc3: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc3'
          DataField = 'VLCUSTOFIN'
          DataPipeline = ppDBRelVendaProd
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRelVendaProd'
          mmHeight = 4498
          mmLeft = 80433
          mmTop = 2646
          mmWidth = 20638
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc4: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc4'
          DataField = 'VLVENDA'
          DataPipeline = ppDBRelVendaProd
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRelVendaProd'
          mmHeight = 4498
          mmLeft = 102129
          mmTop = 2910
          mmWidth = 18785
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc5: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc5'
          DataField = 'PERCMARGEM'
          DataPipeline = ppDBRelVendaProd
          DisplayFormat = '0.00 %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcAverage
          DataPipelineName = 'ppDBRelVendaProd'
          mmHeight = 4498
          mmLeft = 141023
          mmTop = 2646
          mmWidth = 18785
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc6: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc6'
          DataField = 'VLTOTALVERBA'
          DataPipeline = ppDBRelVendaProd
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRelVendaProd'
          mmHeight = 4498
          mmLeft = 248973
          mmTop = 4233
          mmWidth = 18785
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
      end
    end
    object raCodeModule2: TraCodeModule
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList9: TppParameterList
    end
  end
  object qryRelVendaProd: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      '  SELECT   I9CAMPANHACRM.CODCAMPANHACRM,'
      '           I9CAMPANHACRM.DESCRICAOCAMPANHACRM,'
      '           I9CAMPANHACRM.CODFILIAL,'
      '           I9CAMPANHACRM.DTINICIAL,'
      '           I9CAMPANHACRM.DTFINAL,'
      '           PCPEDI.CODPROD,'
      '           PCPRODUT.DESCRICAO,'
      '           PCPRODUT.CODFAB,'
      '           PCPRODUT.EMBALAGEM,'
      '           PCPRODUT.UNIDADE,'
      '           PCPRODUT.CLASSE,'
      
        '           ( CASE WHEN PCPRODUT.PESOBRUTO = 0 THEN 0 ELSE ( PCPR' +
        'ODUT.PESOBRUTO * SUM( PCPEDI.QT ) ) END ) PESOBRUTO,'
      '           SUM( NVL( PCPEDI.QT, 0 ) ) AS QT,'
      
        '           ROUND( SUM( NVL( PCPEDI.QT, 0 ) / DECODE( NVL( PCPROD' +
        'UT.QTUNITCX, 0 ), 0, 1, PCPRODUT.QTUNITCX ) ), 1 ) AS QTCX,'
      
        '           ROUND( SUM( NVL( PCPEDI.QT, 0 ) * NVL( PCPEDI.VLCUSTO' +
        'FIN, 0 ) ), 2 ) AS VLCUSTOFIN,'
      
        '           SUM( NVL( PCPEDI.QT, 0 ) * NVL( PCPEDI.PVENDA, 0 ) ) ' +
        'VLVENDA,'
      
        '           SUM( NVL( PCPEDI.QT, 0 ) * NVL( PCPEDI.PVENDA, 0 ) ) ' +
        '- ROUND( SUM( NVL( PCPEDI.QT, 0 ) * NVL( PCPEDI.VLCUSTOFIN, 0 ) ' +
        '), 2 ) VLLUCRO,'
      
        '           PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS( SUM( NVL( P' +
        'CPEDI.QT, 0 ) * NVL( PCPEDI.PVENDA, 0 ) ),'
      
        '                                                     ROUND( SUM(' +
        ' NVL( PCPEDI.QT, 0 ) * NVL( PCPEDI.VLCUSTOFIN, 0 ) ), 2 ) )'
      '               PERCMARGEM,'
      '           COUNT( DISTINCT ( PCPEDC.NUMPED ) ) AS QTPEDIDOS,'
      '           PCPRODUT.MARCA,'
      '           PCFORNEC.CODFORNEC,'
      '           PCFORNEC.FORNECEDOR,'
      '           PCFORNEC.CODCOMPRADOR,'
      '           PCDESCONTOFIDELIDADE.VLVERBAUNITARIO,'
      
        '           SUM( NVL( PCPEDI.QT, 0 ) * NVL( PCDESCONTOFIDELIDADE.' +
        'VLVERBAUNITARIO, 0 ) ) VLTOTALVERBA,'
      
        '           ( SELECT   DECODE( TIPOVERBA, '#39'MARGEMDIRETORIA'#39', '#39'M. ' +
        'DIRETORIA'#39', '#39'DEFINIDO'#39' )'
      '               FROM   I9CONFIGVERBACRM'
      
        '              WHERE   CODCAMPANHACRM = I9CAMPANHACRM.CODCAMPANHA' +
        'CRM'
      '                  AND CODFORNEC = PCFORNEC.CODFORNEC )'
      '               TIPOVERBA,'
      '           PCEST.CUSTOFIN,'
      '           PCDESCONTOFIDELIDADE.PVENDACRM,'
      
        '           NVL(COLUNA_PRECO(BUSCAPRECOS(PCEMBALAGEM.CODFILIAL, N' +
        'VL (PKG_I9UTILITARIO.BUSCAPARAMETRO (PCEMBALAGEM.CODFILIAL, '#39'NUM' +
        'REGIAOPADRAOVAREJO'#39'), '#39'1'#39'), PCEMBALAGEM.CODAUXILIAR, TRUNC (SYSD' +
        'ATE)), '#39'PVENDA1'#39'), 0) AS PVENDA,'
      
        '           NVL(COLUNA_PRECO(BUSCAPRECOS(PCEMBALAGEM.CODFILIAL, N' +
        'VL (PKG_I9UTILITARIO.BUSCAPARAMETRO (PCEMBALAGEM.CODFILIAL, '#39'NUM' +
        'REGIAOPADRAOVAREJO'#39'), '#39'1'#39'), PCEMBALAGEM.CODAUXILIAR, TRUNC (SYSD' +
        'ATE)), '#39'PVENDAATAC1'#39'), 0) AS PVENDAATAC,'
      
        '           NVL( PCEMBALAGEM.QTMINIMAATACADO, 0 ) AS QTMINIMAATAC' +
        'AO,'
      '           ( CASE'
      
        '                WHEN ( NVL( PCEMBALAGEM.QTMINIMAATACADO, 0 ) = 0' +
        ' )'
      '                 AND ( NVL( PCEMBALAGEM.QTMULTIPLA, 0 ) <> 0 )'
      '                THEN'
      '                    '#39'MULTIPLO'#39
      
        '                WHEN ( NVL( PCEMBALAGEM.QTMINIMAATACADO, 0 ) <> ' +
        '0 )'
      '                 AND ( NVL( PCEMBALAGEM.QTMULTIPLA, 0 ) = 0 )'
      '                THEN'
      '                    '#39'MINIMA'#39
      
        '                WHEN ( NVL( PCEMBALAGEM.QTMINIMAATACADO, 0 ) = 0' +
        ' )'
      '                 AND ( NVL( PCEMBALAGEM.QTMULTIPLA, 0 ) = 0 )'
      '                THEN'
      '                    '#39'NENHUM'#39
      '            END )'
      '               TIPO_ATACADO,'
      
        '           PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS( PCDESCONTOF' +
        'IDELIDADE.PVENDACRM,'
      
        '                                                     NVL( PCEST.' +
        'CUSTOFIN, 0 ) - NVL( PCDESCONTOFIDELIDADE.VLVERBAUNITARIO, 0 ) )'
      '               MARGEMCRM'
      '    FROM   PCPEDI,'
      '           PCPEDC,'
      '           PCPRODUT,'
      '           PCFORNEC,'
      '           PCCLIENT,'
      '           I9CAMPANHACRM,'
      '           PCDESCONTOFIDELIDADE,'
      '           PCEST,'
      '           PCEMBALAGEM'
      
        '   WHERE   PCPEDC.DATA BETWEEN I9CAMPANHACRM.DTINICIAL AND I9CAM' +
        'PANHACRM.DTFINAL'
      '       AND PCPEDC.CODFILIAL = I9CAMPANHACRM.CODFILIAL'
      '       AND PCEMBALAGEM.CODFILIAL = PCPEDC.CODFILIAL'
      '       AND PCEST.CODFILIAL = PCPEDC.CODFILIAL'
      '       AND PCPEDI.CODPROD = PCDESCONTOFIDELIDADE.CODPROD'
      '       AND PCEMBALAGEM.CODPROD = PCPEDI.CODPROD'
      '       AND PCEST.CODPROD = PCPEDI.CODPROD'
      '       AND PCPEDI.CODPROD = PCPRODUT.CODPROD'
      '       AND PCPEDC.CODCLI = PCCLIENT.CODCLI'
      '       AND PCPEDI.NUMPED = PCPEDC.NUMPED'
      '       AND PCPEDI.DATA = PCPEDC.DATA'
      '       AND PCPRODUT.CODFORNEC = PCFORNEC.CODFORNEC'
      '       AND PCPEDC.POSICAO = '#39'F'#39
      '       AND PCPEDC.DTCANCEL IS NULL'
      '       AND PCCLIENT.NUMCARTAOFIDELIDADE IS NOT NULL'
      
        '       AND PCPEDC.CONDVENDA NOT IN (4, 5, 6, 8, 10, 11, 12, 13, ' +
        '16, 20)'
      
        '       AND PCDESCONTOFIDELIDADE.CODCLICONVENIO = (SELECT   CODCL' +
        'ICRMGERAL'
      
        '                                                    FROM   PCCON' +
        'SUM'
      
        '                                                   WHERE   ROWNU' +
        'M = 1)'
      
        '       AND PCEMBALAGEM.CODAUXILIAR = (SELECT   MIN( CODAUXILIAR ' +
        ')'
      '                                        FROM   PCEMBALAGEM X'
      
        '                                       WHERE   X.CODPROD = PCEMB' +
        'ALAGEM.CODPROD'
      
        '                                           AND X.CODFILIAL = PCE' +
        'MBALAGEM.CODFILIAL'
      
        '                                           AND X.DTINATIVO IS NU' +
        'LL'
      
        '                                           AND X.QTUNIT = (SELEC' +
        'T   MIN( Y.QTUNIT )'
      
        '                                                             FRO' +
        'M   PCEMBALAGEM Y'
      
        '                                                            WHER' +
        'E   Y.CODPROD = X.CODPROD'
      
        '                                                                ' +
        'AND Y.CODFILIAL = X.CODFILIAL'
      
        '                                                                ' +
        'AND Y.DTINATIVO IS NULL))'
      'GROUP BY   I9CAMPANHACRM.CODCAMPANHACRM,'
      '           I9CAMPANHACRM.DESCRICAOCAMPANHACRM,'
      '           I9CAMPANHACRM.CODFILIAL,'
      '           I9CAMPANHACRM.DTINICIAL,'
      '           I9CAMPANHACRM.DTFINAL,'
      '           PCPEDI.CODPROD,'
      '           PCPRODUT.DESCRICAO,'
      '           PCPRODUT.EMBALAGEM,'
      '           PCPRODUT.CLASSE,'
      '           PCPRODUT.UNIDADE,'
      '           PCPRODUT.CODFAB,'
      '           PCPRODUT.MARCA,'
      '           PCFORNEC.CODFORNEC,'
      '           PCFORNEC.FORNECEDOR,'
      '           PCPRODUT.PESOBRUTO,'
      '           PCFORNEC.CODCOMPRADOR,'
      '           PCDESCONTOFIDELIDADE.VLVERBAUNITARIO,'
      '           PCEST.CUSTOFIN,'
      
        '           NVL(COLUNA_PRECO(BUSCAPRECOS(PCEMBALAGEM.CODFILIAL, N' +
        'VL (PKG_I9UTILITARIO.BUSCAPARAMETRO (PCEMBALAGEM.CODFILIAL, '#39'NUM' +
        'REGIAOPADRAOVAREJO'#39'), '#39'1'#39'), PCEMBALAGEM.CODAUXILIAR, TRUNC (SYSD' +
        'ATE)), '#39'PVENDA1'#39'), 0),'
      
        '           NVL(COLUNA_PRECO(BUSCAPRECOS(PCEMBALAGEM.CODFILIAL, N' +
        'VL (PKG_I9UTILITARIO.BUSCAPARAMETRO (PCEMBALAGEM.CODFILIAL, '#39'NUM' +
        'REGIAOPADRAOVAREJO'#39'), '#39'1'#39'), PCEMBALAGEM.CODAUXILIAR, TRUNC (SYSD' +
        'ATE)), '#39'PVENDAATAC1'#39'), 0),'
      '           PCEMBALAGEM.QTMINIMAATACADO,'
      '           PCEMBALAGEM.QTMULTIPLA,'
      '           PCDESCONTOFIDELIDADE.PVENDACRM,'
      
        '           PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS( PCDESCONTOF' +
        'IDELIDADE.PVENDACRM, NVL( PCEST.CUSTOFIN, 0 ) - NVL( PCDESCONTOF' +
        'IDELIDADE.VLVERBAUNITARIO, 0 ) )'
      
        'ORDER BY   I9CAMPANHACRM.CODCAMPANHACRM, PCFORNEC.CODFORNEC, PCP' +
        'EDI.CODPROD')
    Left = 416
    Top = 232
  end
  object dsRelVendaProd: TDataSource
    DataSet = qryRelVendaProd
    Left = 416
    Top = 296
  end
  object ppDBRelVendaProd: TppDBPipeline
    DataSource = dsRelVendaProd
    UserName = 'DBRelVendaProd'
    Left = 416
    Top = 360
  end
  object qrPesquisaProdutos: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT DISTINCT PCPRODUT.CODPROD,'
      '                PCPRODUT.DESCRICAO,'
      '                PCFORNEC.FORNECEDOR,'
      '                PCPRODUT.CODPRODPRINC,'
      '                '#39'N'#39' AS "INCLUIDO",'
      '                PCFORNEC.CODFORNEC,'
      '                PCEMBALAGEM.QTUNIT,'
      '                '#39'S'#39' AS TEMATACADO,'
      '                CASE'
      '                    WHEN (SELECT COUNT ( * )'
      '                          FROM PCPRODUT X'
      
        '                          WHERE X.CODPRODPRINC = PCPRODUT.CODPRO' +
        'DPRINC) > 1'
      '                    THEN'
      '                        '#39'S'#39
      '                    ELSE'
      '                        '#39'N'#39
      '                END'
      '                    TEMFAMILIA'
      'FROM PCEMBALAGEM, PCPRODUT, PCFORNEC'
      'WHERE PCEMBALAGEM.CODPROD = PCPRODUT.CODPROD '
      'AND PCPRODUT.CODFORNEC = PCFORNEC.CODFORNEC '
      
        'AND PKG_I9UTILITARIO.BUSCACUSTO(PCEMBALAGEM.CODFILIAL, PCEMBALAG' +
        'EM.CODPROD) > 0'
      'GROUP BY PCFORNEC.FORNECEDOR,'
      '         PCPRODUT.CODPROD,'
      '         PCPRODUT.CODPRODPRINC,'
      '         PCPRODUT.DESCRICAO,'
      '         '#39'N'#39','
      '         PCFORNEC.CODFORNEC,'
      '         PCEMBALAGEM.QTUNIT,'
      '         '#39'S'#39)
    Options.SetFieldsReadOnly = False
    Left = 319
    Top = 64
  end
  object dsPesquisaProdutos: TUniDataSource
    DataSet = qrPesquisaProdutos
    Left = 319
    Top = 16
  end
  object qrObterDadosProduto: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT PCEMBALAGEM.CODFILIAL,'
      '       PCPRODUT.CODPROD,'
      '       PCPRODUT.DESCRICAO,'
      '       PCPRODUT.CODPRODPRINC,'
      '       PCFORNEC.CODFORNECPRINC,'
      '       PCFORNEC.FORNECEDOR,'
      '       COLUNA_PRECO ('
      '           BUSCAPRECOS ('
      '               PCEMBALAGEM.CODFILIAL,'
      '               NVL ('
      
        '                   PKG_I9UTILITARIO.BUSCAPARAMETRO (PCEMBALAGEM.' +
        'CODFILIAL,'
      
        '                                                    '#39'NUMREGIAOPA' +
        'DRAOVAREJO'#39'),'
      '                   '#39'1'#39'),'
      '               PCEMBALAGEM.CODAUXILIAR,'
      '               TRUNC (SYSDATE)),'
      '           '#39'PVENDA1'#39')'
      '           PRECO_VAREJO,'
      '       COLUNA_PRECO ('
      '           BUSCAPRECOS ('
      '               PCEMBALAGEM.CODFILIAL,'
      '               NVL ('
      
        '                   PKG_I9UTILITARIO.BUSCAPARAMETRO (PCEMBALAGEM.' +
        'CODFILIAL,'
      
        '                                                    '#39'NUMREGIAOPA' +
        'DRAOVAREJO'#39'),'
      '                   '#39'1'#39'),'
      '               PCEMBALAGEM.CODAUXILIAR,'
      '               TRUNC (SYSDATE)),'
      '           '#39'PVENDAATAC1'#39')'
      '           PRECO_ATACADO,'
      
        '       ROUND (NVL (PCEST.CUSTOFIN, 0) * NVL (PCEMBALAGEM.QTUNIT,' +
        ' 1), 2)'
      '           AS CUSTOFIN,'
      '         NVL (PCEST.QTESTGER, 0)'
      '       - NVL (PCEST.QTINDENIZ, 0)'
      '       - NVL (PCEST.QTBLOQUEADA, 0)'
      '           AS QTEST,'
      '       PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS ('
      '           :VALOR,'
      
        '             ( (  PKG_I9UTILITARIO.BUSCACUSTO ( :CODFILIAL, :COD' +
        'PROD)'
      '                - :VALORVERBA))'
      '           * :QTUNIT)'
      '           MARGEM,'
      '       CASE'
      '           WHEN (SELECT COUNT (*)'
      '                   FROM PCPRODUT X'
      
        '                  WHERE X.CODPRODPRINC = PCPRODUT.CODPRODPRINC) ' +
        '> 1'
      '           THEN'
      '               '#39'S'#39
      '           ELSE'
      '               '#39'N'#39
      '       END'
      '           TEMFAMILIA,'
      '       PCEMBALAGEM.QTUNIT'
      '  FROM PCPRODUT,'
      '       PCEMBALAGEM,'
      '       PCEST,'
      '       PCFORNEC'
      ' WHERE     PCPRODUT.CODPROD = PCEMBALAGEM.CODPROD'
      '       AND PCEST.CODPROD = PCEMBALAGEM.CODPROD'
      '       AND PCEST.CODFILIAL = PCEMBALAGEM.CODFILIAL'
      '       AND PCPRODUT.CODFORNEC = PCFORNEC.CODFORNEC'
      '       AND PCEMBALAGEM.QTUNIT IN (SELECT MIN (QTUNIT)'
      '                                    FROM PCEMBALAGEM PE'
      
        '                                   WHERE     PE.CODPROD = PCEMBA' +
        'LAGEM.CODPROD'
      
        '                                         AND PE.DTINATIVO IS NUL' +
        'L)'
      '       AND PKG_I9UTILITARIO.BUSCACUSTO (PCEMBALAGEM.CODFILIAL,'
      '                                        PCEMBALAGEM.CODPROD) > 0'
      '       AND PCEMBALAGEM.CODFILIAL = :CODFILIAL'
      '       AND PCEMBALAGEM.CODPROD = :CODPROD'
      '       AND PCEMBALAGEM.DTINATIVO IS NULL'
      '       AND ROWNUM = 1')
    Left = 320
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'VALOR'
        Value = nil
      end
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
        Name = 'VALORVERBA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'QTUNIT'
        Value = nil
      end>
  end
  object qrDadosCampanhaEditar: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM I9GRUPOCRMC'
      'WHERE I9GRUPOCRMC.CODGRUPOCRM = :CODGRUPOCRM')
    Left = 64
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODGRUPOCRM'
        Value = nil
      end>
  end
  object prcGerarVerbaCampanha: TUniStoredProc
    StoredProcName = 'PKG_I9CLUBECRM.GERARVERBACAMPANHACRM'
    SQL.Strings = (
      'begin'
      
        '  PKG_I9CLUBECRM.GERARVERBACAMPANHACRM(:PCODCAMPANHACRM, :PMATRI' +
        'CULA);'
      'end;')
    Connection = DmLogin.Conexao
    Left = 192
    Top = 400
    ParamData = <
      item
        DataType = ftFloat
        Name = 'PCODCAMPANHACRM'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'PMATRICULA'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'PKG_I9CLUBECRM.GERARVERBACAMPANHACRM'
  end
  object qryRelApuracao: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT I9CAMPANHACRM.CODCAMPANHACRM,'
      '       I9CAMPANHACRM.DESCRICAOCAMPANHACRM,'
      '       PCPEDC.CODFILIAL,'
      '       I9CAMPANHACRM.DTINICIAL,'
      '       I9CAMPANHACRM.DTFINAL,'
      '       PCPEDI.CODPROD,'
      '       PCPRODUT.DESCRICAO,'
      '       PCPRODUT.CODFAB,'
      '       PCPRODUT.EMBALAGEM,'
      '       PCPRODUT.UNIDADE,'
      '       PCPRODUT.CLASSE,'
      
        '       (CASE WHEN PCPRODUT.PESOBRUTO = 0 THEN 0 ELSE (PCPRODUT.P' +
        'ESOBRUTO * SUM (PCPEDI.QT)) END) PESOBRUTO,'
      '       SUM (NVL (PCPEDI.QT, 0)) AS QT,'
      
        '       ROUND (SUM (NVL (PCPEDI.QT, 0) / DECODE (NVL (PCPRODUT.QT' +
        'UNITCX, 0), 0, 1, PCPRODUT.QTUNITCX)), 1) AS QTCX,'
      
        '       ROUND (SUM (NVL (PCPEDI.QT, 0) * NVL (PCPEDI.VLCUSTOFIN, ' +
        '0)), 2) AS VLCUSTOFIN_ATUAL,'
      
        '       ROUND (SUM (NVL (PCPEDI.QT, 0) * NVL (PCPEDI.VLCUSTOFINAN' +
        'TCRM, 0)), 2) AS VLCUSTOFIN_ANTERIOR,'
      
        '       SUM (NVL (PCPEDI.QT, 0) * NVL (PCPEDI.PVENDA, 0)) VLVENDA' +
        ','
      
        '       SUM (NVL (PCPEDI.QT, 0) * NVL (PCPEDI.PVENDA, 0)) - ROUND' +
        ' (SUM (NVL (PCPEDI.QT, 0) * NVL (PCPEDI.VLCUSTOFIN, 0)), 2) VLLU' +
        'CRO_ATUAL,'
      
        '       SUM (NVL (PCPEDI.QT, 0) * NVL (PCPEDI.PVENDA, 0)) - ROUND' +
        ' (SUM (NVL (PCPEDI.QT, 0) * NVL (PCPEDI.VLCUSTOFINANTCRM, 0)), 2' +
        ') VLLUCRO_ANTERIOR,'
      
        '       PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS (SUM (NVL (PCPED' +
        'I.QT, 0) * NVL (PCPEDI.PVENDA, 0)),'
      
        '                                                 ROUND (SUM (NVL' +
        ' (PCPEDI.QT, 0) * NVL (PCPEDI.VLCUSTOFIN, 0)), 2))'
      '           PERCMARGEM_ATUAL,'
      
        '       PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS (SUM (NVL (PCPED' +
        'I.QT, 0) * NVL (PCPEDI.PVENDA, 0)),'
      
        '                                                 ROUND (SUM (NVL' +
        ' (PCPEDI.QT, 0) * NVL (PCPEDI.VLCUSTOFINANTCRM, 0)), 2))'
      '           PERCMARGEM_ANTERIOR,'
      '       COUNT (DISTINCT (PCPEDC.NUMPED)) AS QTPEDIDOS,'
      '       PCPRODUT.MARCA,'
      '       PCFORNEC.CODFORNEC,'
      '       PCFORNEC.FORNECEDOR,'
      
        '       NVL(PCPRODFILIAL.CODCOMPRADOR,PCFORNEC.CODCOMPRADOR) AS C' +
        'ODCOMPRADOR,'
      '       PCEMPR.NOME AS COMPRADOR,'
      '       PCDESCONTOFIDELIDADE.VLVERBAUNITARIO,'
      '       PCDESCONTOFIDELIDADE.PVENDACRM,'
      
        '       SUM (NVL (PCPEDI.QT, 0) * NVL (PCDESCONTOFIDELIDADE.VLVER' +
        'BAUNITARIO, 0)) VLTOTALVERBA,'
      '       PCPEDI.NUMVERBAREBCMV AS NUMVERBA,'
      
        '       DECODE(I9CONFIGVERBACRM.TIPOVERBA, '#39'MARGEMDIRETORIA'#39', '#39'M.' +
        ' DIRETORIA'#39', '#39'APURAR'#39') AS TIPOVERBA'
      'FROM PCPEDI,'
      '     PCPEDC,'
      '     PCPRODUT,'
      '     PCFORNEC,'
      '     PCCLIENT,'
      '     I9CAMPANHACRM,'
      '     PCDESCONTOFIDELIDADE,'
      '     PCEMPR,'
      '     I9CONFIGVERBACRM,'
      '     PCPRODFILIAL'
      
        'WHERE     PCPEDC.DATA BETWEEN I9CAMPANHACRM.DTINICIAL AND I9CAMP' +
        'ANHACRM.DTFINAL'
      '      AND PCPEDC.CODFILIAL = I9CAMPANHACRM.CODFILIAL'
      
        '      AND PCDESCONTOFIDELIDADE.CODCAMPANHACRM = I9CAMPANHACRM.CO' +
        'DCAMPANHACRM'
      
        '      AND I9CAMPANHACRM.CODCAMPANHACRM = I9CONFIGVERBACRM.CODCAM' +
        'PANHACRM(+)'
      '      AND PCFORNEC.CODFORNEC = I9CONFIGVERBACRM.CODFORNEC(+)'
      '      AND PCPEDC.CODCLI = PCCLIENT.CODCLI'
      '      AND PCPEDI.NUMPED = PCPEDC.NUMPED'
      '      AND PCPEDI.DATA = PCPEDC.DATA'
      '      AND PCPRODUT.CODFORNEC = PCFORNEC.CODFORNEC'
      '      AND PCPEDI.CODPROD = PCPRODUT.CODPROD'
      
        '      AND NVL(PCPRODFILIAL.CODCOMPRADOR,PCFORNEC.CODCOMPRADOR) =' +
        ' PCEMPR.MATRICULA'
      '      AND PCPEDI.CODPROD = PCDESCONTOFIDELIDADE.CODPROD'
      '      AND PCPRODFILIAL.CODPROD = PCPRODUT.CODPROD'
      '      AND PCPRODFILIAL.CODFILIAL = PCPEDC.CODFILIAL'
      '      AND NVL(PCDESCONTOFIDELIDADE.VLVERBAUNITARIO, 0) > 0'
      '      AND PCPEDC.POSICAO = '#39'F'#39
      '      AND PCPEDC.DTCANCEL IS NULL'
      
        '      AND PCPEDC.CONDVENDA NOT IN (4, 5, 6, 8, 10, 11, 12, 13, 1' +
        '6, 20)'
      '      AND PCCLIENT.NUMCARTAOFIDELIDADE IS NOT NULL'
      
        '      AND PCDESCONTOFIDELIDADE.CODCLICONVENIO = (SELECT CODCLICR' +
        'MGERAL'
      '                                                 FROM PCCONSUM'
      
        '                                                 WHERE ROWNUM = ' +
        '1)'
      '      '
      'GROUP BY I9CAMPANHACRM.CODCAMPANHACRM,'
      '         I9CAMPANHACRM.DESCRICAOCAMPANHACRM,'
      '         PCPEDC.CODFILIAL,'
      '         I9CAMPANHACRM.DTINICIAL,'
      '         I9CAMPANHACRM.DTFINAL,'
      '         PCPEDI.CODPROD,'
      '         PCPRODUT.DESCRICAO,'
      '         PCPRODUT.EMBALAGEM,'
      '         PCPRODUT.CLASSE,'
      '         PCPRODUT.UNIDADE,'
      '         PCPRODUT.CODFAB,'
      '         PCPRODUT.MARCA,'
      '         PCFORNEC.CODFORNEC,'
      '         PCFORNEC.FORNECEDOR,'
      '         PCPRODUT.PESOBRUTO,'
      '         NVL(PCPRODFILIAL.CODCOMPRADOR,PCFORNEC.CODCOMPRADOR),'
      '         PCEMPR.NOME,'
      '         PCDESCONTOFIDELIDADE.VLVERBAUNITARIO,'
      '         PCDESCONTOFIDELIDADE.PVENDACRM,'
      '         PCPEDI.NUMVERBAREBCMV,'
      '         I9CONFIGVERBACRM.TIPOVERBA'
      
        'ORDER BY I9CAMPANHACRM.CODCAMPANHACRM, NVL(PCPRODFILIAL.CODCOMPR' +
        'ADOR,PCFORNEC.CODCOMPRADOR), PCFORNEC.CODFORNEC, PCPEDI.CODPROD')
    Left = 520
    Top = 232
  end
  object dsRelApuracao: TDataSource
    DataSet = qryRelApuracao
    Left = 520
    Top = 296
  end
  object ppDBRelAuracao: TppDBPipeline
    DataSource = dsRelApuracao
    UserName = 'DBRelAuracao'
    Left = 520
    Top = 360
  end
  object ppRelApuracao: TppReport
    AutoStop = False
    DataPipeline = ppDBRelAuracao
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Winthor\Fontes\Winthor\Modulos\03 Vendas\PCINF324\relat'#243'rio d' +
      'e produtos.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    TextSearchSettings.ShowAll = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 517
    Top = 178
    Version = '17.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRelAuracao'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 29104
      mmPrintPosition = 0
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Caption = 'Apura'#231#227'o de Campanha CRM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 25
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 10054
        mmLeft = 81756
        mmTop = 8202
        mmWidth = 121444
        BandType = 0
        LayerName = BandLayer2
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable9'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 251884
        mmTop = 1323
        mmWidth = 29633
        BandType = 0
        LayerName = BandLayer2
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable10'
        VarType = vtPageNoDesc
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 268023
        mmTop = 5292
        mmWidth = 13229
        BandType = 0
        LayerName = BandLayer2
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Color = clSilver
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        DataField = 'CODPROD'
        DataPipeline = ppDBRelAuracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelAuracao'
        mmHeight = 2910
        mmLeft = 0
        mmTop = 794
        mmWidth = 10054
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBRelAuracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRelAuracao'
        mmHeight = 3175
        mmLeft = 11642
        mmTop = 794
        mmWidth = 28575
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText20'
        DataField = 'VLVENDA'
        DataPipeline = ppDBRelAuracao
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelAuracao'
        mmHeight = 2910
        mmLeft = 105834
        mmTop = 529
        mmWidth = 15081
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText205'
        DataField = 'QT'
        DataPipeline = ppDBRelAuracao
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelAuracao'
        mmHeight = 2910
        mmLeft = 41275
        mmTop = 794
        mmWidth = 15081
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2014'
        DataField = 'VLCUSTOFIN_ANTERIOR'
        DataPipeline = ppDBRelAuracao
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelAuracao'
        mmHeight = 2910
        mmLeft = 60325
        mmTop = 529
        mmWidth = 20638
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        DataField = 'VLTOTALVERBA'
        DataPipeline = ppDBRelAuracao
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelAuracao'
        mmHeight = 2910
        mmLeft = 225690
        mmTop = 1058
        mmWidth = 16669
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText201'
        DataField = 'VLLUCRO_ANTERIOR'
        DataPipeline = ppDBRelAuracao
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelAuracao'
        mmHeight = 2910
        mmLeft = 123031
        mmTop = 529
        mmWidth = 15081
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        DataField = 'PERCMARGEM_ANTERIOR'
        DataPipeline = ppDBRelAuracao
        DisplayFormat = '0.00 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelAuracao'
        mmHeight = 2910
        mmLeft = 155046
        mmTop = 794
        mmWidth = 17992
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText24'
        DataField = 'VLCUSTOFIN_ATUAL'
        DataPipeline = ppDBRelAuracao
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelAuracao'
        mmHeight = 2910
        mmLeft = 83344
        mmTop = 529
        mmWidth = 20638
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText23'
        DataField = 'VLLUCRO_ATUAL'
        DataPipeline = ppDBRelAuracao
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelAuracao'
        mmHeight = 2910
        mmLeft = 140229
        mmTop = 794
        mmWidth = 13229
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        DataField = 'FORNECEDOR'
        DataPipeline = ppDBRelAuracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRelAuracao'
        mmHeight = 2910
        mmLeft = 192617
        mmTop = 794
        mmWidth = 30956
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText25'
        DataField = 'NUMVERBA'
        DataPipeline = ppDBRelAuracao
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelAuracao'
        mmHeight = 2910
        mmLeft = 245798
        mmTop = 1058
        mmWidth = 16669
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText28'
        DataField = 'PERCMARGEM_ATUAL'
        DataPipeline = ppDBRelAuracao
        DisplayFormat = '0.00 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelAuracao'
        mmHeight = 2910
        mmLeft = 174625
        mmTop = 794
        mmWidth = 15346
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText68: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText68'
        DataField = 'TIPOVERBA'
        DataPipeline = ppDBRelAuracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelAuracao'
        mmHeight = 2646
        mmLeft = 263790
        mmTop = 1058
        mmWidth = 17463
        BandType = 4
        LayerName = BandLayer2
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 12965
      mmPrintPosition = 0
    end
    object ppGroup3: TppGroup
      BreakName = 'CODCAMPANHACRM'
      DataPipeline = ppDBRelAuracao
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRelAuracao'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 24342
        mmPrintPosition = 0
        object ppLabel11: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label4'
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 19844
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppLabel12: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label26'
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 11642
          mmTop = 19844
          mmWidth = 13494
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppLabel13: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label55'
          Caption = 'Vl. Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 105834
          mmTop = 20638
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppLabel14: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label51'
          Caption = 'Verba Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 225690
          mmTop = 20638
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppLabel16: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label315'
          AutoSize = False
          Caption = 'Qt. Vend.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          WordWrap = True
          mmHeight = 3704
          mmLeft = 40483
          mmTop = 20638
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppLabel19: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label374'
          Caption = 'Cust. Fin. Ant.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 60854
          mmTop = 20638
          mmWidth = 20108
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppLabel21: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label6'
          Caption = 'Lucro Ant.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 123031
          mmTop = 20638
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppLabel22: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label8'
          Caption = '% Marg. Ant.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 155046
          mmTop = 20638
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppLabel26: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label11'
          Caption = 'Fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 192617
          mmTop = 20638
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppLabel17: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label17'
          Caption = 'Cust. Fin. At.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 85725
          mmTop = 20638
          mmWidth = 18256
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppLabel15: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label15'
          Caption = 'Lucro At.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 140229
          mmTop = 20638
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppLabel18: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label18'
          Caption = '% Marg. At.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 174625
          mmTop = 20638
          mmWidth = 16140
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppLabel20: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label20'
          Caption = 'Num. Verba'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 245798
          mmTop = 20638
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label7'
          Caption = 'Per'#237'odo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 145257
          mmTop = 2910
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppLabel10: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label83'
          Caption = 'Filial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 112184
          mmTop = 2910
          mmWidth = 20373
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppDBText12: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText6'
          DataField = 'CODFILIAL'
          DataPipeline = ppDBRelAuracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRelAuracao'
          mmHeight = 3704
          mmLeft = 134144
          mmTop = 2910
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppDBText14: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText7'
          DataField = 'DTINICIAL'
          DataPipeline = ppDBRelAuracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRelAuracao'
          mmHeight = 3440
          mmLeft = 160602
          mmTop = 2910
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppDBText16: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText8'
          DataField = 'DTFINAL'
          DataPipeline = ppDBRelAuracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRelAuracao'
          mmHeight = 3440
          mmLeft = 181769
          mmTop = 2910
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppLabel23: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label3'
          Caption = 'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 178065
          mmTop = 2910
          mmWidth = 1588
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppLabel24: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label9'
          Caption = 'Campanha:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 5556
          mmTop = 2910
          mmWidth = 16140
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppDBText17: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText9'
          DataField = 'CODCAMPANHACRM'
          DataPipeline = ppDBRelAuracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRelAuracao'
          mmHeight = 3704
          mmLeft = 23283
          mmTop = 2910
          mmWidth = 8731
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppLabel25: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label10'
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 32279
          mmTop = 2910
          mmWidth = 1058
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppDBText18: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText10'
          DataField = 'DESCRICAOCAMPANHACRM'
          DataPipeline = ppDBRelAuracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRelAuracao'
          mmHeight = 3704
          mmLeft = 34131
          mmTop = 2910
          mmWidth = 75936
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppLine6: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line6'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 1323
          mmWidth = 284300
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppLine7: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line7'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 8996
          mmWidth = 284300
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppLabel68: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label68'
          AutoSize = False
          Caption = 'Tipo Verba'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 263790
          mmTop = 20637
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer2
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 9260
        mmPrintPosition = 0
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line1'
          ParentWidth = True
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 1323
          mmWidth = 284300
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppDBCalc9: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc3'
          DataField = 'VLCUSTOFIN_ANTERIOR'
          DataPipeline = ppDBRelAuracao
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRelAuracao'
          mmHeight = 4498
          mmLeft = 60854
          mmTop = 1588
          mmWidth = 20638
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppDBCalc11: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc5'
          DataField = 'PERCMARGEM_ATUAL'
          DataPipeline = ppDBRelAuracao
          DisplayFormat = '0.00 %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcAverage
          DataPipelineName = 'ppDBRelAuracao'
          mmHeight = 4498
          mmLeft = 188384
          mmTop = 1588
          mmWidth = 16404
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppDBCalc12: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc6'
          DataField = 'VLTOTALVERBA'
          DataPipeline = ppDBRelAuracao
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRelAuracao'
          mmHeight = 4498
          mmLeft = 235744
          mmTop = 1588
          mmWidth = 18785
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppDBCalc7: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc7'
          DataField = 'PERCMARGEM_ANTERIOR'
          DataPipeline = ppDBRelAuracao
          DisplayFormat = '0.00 %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcAverage
          DataPipelineName = 'ppDBRelAuracao'
          mmHeight = 4498
          mmLeft = 165629
          mmTop = 1588
          mmWidth = 16404
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer2
        end
        object ppDBCalc8: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc8'
          DataField = 'VLCUSTOFIN_ATUAL'
          DataPipeline = ppDBRelAuracao
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRelAuracao'
          mmHeight = 4498
          mmLeft = 83873
          mmTop = 1588
          mmWidth = 20638
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer2
        end
      end
    end
    object raCodeModule1: TraCodeModule
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'BandLayer2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppRelApuracaoComprador: TppReport
    AutoStop = False
    DataPipeline = ppDBRelAuracao
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Users\Pablo Oliveira\Desktop\relatoriocompradorcrm.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    TextSearchSettings.ShowAll = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 517
    Top = 114
    Version = '17.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRelAuracao'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 19315
      mmPrintPosition = 0
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label1'
        Caption = 'Acompanhamento de Verbas Campanha CRM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 64558
        mmTop = 5292
        mmWidth = 137848
        BandType = 0
        LayerName = BandLayer3
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable9'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 251884
        mmTop = 1323
        mmWidth = 29633
        BandType = 0
        LayerName = BandLayer3
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable10'
        VarType = vtPageNoDesc
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 268023
        mmTop = 5292
        mmWidth = 13229
        BandType = 0
        LayerName = BandLayer3
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Color = clSilver
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText1'
        DataField = 'CODPROD'
        DataPipeline = ppDBRelAuracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRelAuracao'
        mmHeight = 2910
        mmLeft = 13248
        mmTop = 528
        mmWidth = 10054
        BandType = 4
        LayerName = BandLayer3
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText2'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBRelAuracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRelAuracao'
        mmHeight = 3175
        mmLeft = 24889
        mmTop = 528
        mmWidth = 79904
        BandType = 4
        LayerName = BandLayer3
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText205'
        DataField = 'QT'
        DataPipeline = ppDBRelAuracao
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRelAuracao'
        mmHeight = 2910
        mmLeft = 128341
        mmTop = 528
        mmWidth = 18785
        BandType = 4
        LayerName = BandLayer3
      end
      object ppDBText49: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText25'
        DataField = 'NUMVERBA'
        DataPipeline = ppDBRelAuracao
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRelAuracao'
        mmHeight = 2910
        mmLeft = 176509
        mmTop = 529
        mmWidth = 18524
        BandType = 4
        LayerName = BandLayer3
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText46'
        DataField = 'VLVERBAUNITARIO'
        DataPipeline = ppDBRelAuracao
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRelAuracao'
        mmHeight = 2910
        mmLeft = 106646
        mmTop = 528
        mmWidth = 20376
        BandType = 4
        LayerName = BandLayer3
      end
      object ppDBText71: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText71'
        DataField = 'VLTOTALVERBA'
        DataPipeline = ppDBRelAuracao
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelAuracao'
        mmHeight = 2910
        mmLeft = 148979
        mmTop = 529
        mmWidth = 25944
        BandType = 4
        LayerName = BandLayer3
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'CODCAMPANHACRM'
      DataPipeline = ppDBRelAuracao
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRelAuracao'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 20638
        mmPrintPosition = 0
        object ppLabel28: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label7'
          Caption = 'Per'#237'odo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 7673
          mmTop = 12702
          mmWidth = 14287
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object ppLabel29: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label83'
          Caption = 'Filial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 12435
          mmTop = 8203
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object ppDBText31: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText6'
          DataField = 'CODFILIAL'
          DataPipeline = ppDBRelAuracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRelAuracao'
          mmHeight = 3704
          mmLeft = 23283
          mmTop = 8206
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object ppDBText33: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText7'
          DataField = 'DTINICIAL'
          DataPipeline = ppDBRelAuracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRelAuracao'
          mmHeight = 3440
          mmLeft = 23283
          mmTop = 12705
          mmWidth = 17465
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object ppDBText34: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText8'
          DataField = 'DTFINAL'
          DataPipeline = ppDBRelAuracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRelAuracao'
          mmHeight = 3440
          mmLeft = 46570
          mmTop = 12705
          mmWidth = 17996
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object ppLabel43: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label3'
          Caption = 'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 42865
          mmTop = 12702
          mmWidth = 2117
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object ppLabel44: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label9'
          Caption = 'Campanha:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 2646
          mmTop = 3440
          mmWidth = 19314
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object ppDBText35: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText9'
          DataField = 'CODCAMPANHACRM'
          DataPipeline = ppDBRelAuracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRelAuracao'
          mmHeight = 3704
          mmLeft = 23283
          mmTop = 3443
          mmWidth = 8731
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object ppLabel45: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label10'
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 32279
          mmTop = 3440
          mmWidth = 1058
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object ppDBText36: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText10'
          DataField = 'DESCRICAOCAMPANHACRM'
          DataPipeline = ppDBRelAuracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRelAuracao'
          mmHeight = 3704
          mmLeft = 34131
          mmTop = 3443
          mmWidth = 233628
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object ppLine15: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line15'
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 1588
          mmTop = 19315
          mmWidth = 283898
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object ppLine18: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line18'
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 1588
          mmTop = 19315
          mmWidth = 283898
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object ppLine19: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line19'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 19315
          mmWidth = 284300
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
        object ppLine20: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line20'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 0
          mmWidth = 284300
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer3
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 12700
        mmPrintPosition = 0
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'CODCOMPRADOR'
      DataPipeline = ppDBRelAuracao
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRelAuracao'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 9790
        mmPrintPosition = 0
        object ppLine3: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line3'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 7147
          mmWidth = 284300
          BandType = 3
          GroupNo = 1
          LayerName = BandLayer3
        end
        object ppDBText51: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText51'
          DataField = 'CODCOMPRADOR'
          DataPipeline = ppDBRelAuracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          VerticalAlignment = avCenter
          DataPipelineName = 'ppDBRelAuracao'
          mmHeight = 4233
          mmLeft = 31753
          mmTop = 1588
          mmWidth = 15875
          BandType = 3
          GroupNo = 1
          LayerName = BandLayer3
        end
        object ppLabel51: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label2'
          Caption = 'Comprador:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4234
          mmLeft = 13232
          mmTop = 1588
          mmWidth = 19843
          BandType = 3
          GroupNo = 1
          LayerName = BandLayer3
        end
        object ppDBText52: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText52'
          DataField = 'COMPRADOR'
          DataPipeline = ppDBRelAuracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          VerticalAlignment = avCenter
          DataPipelineName = 'ppDBRelAuracao'
          mmHeight = 4233
          mmLeft = 50542
          mmTop = 1588
          mmWidth = 215892
          BandType = 3
          GroupNo = 1
          LayerName = BandLayer3
        end
        object ppLabel95: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label95'
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 46570
          mmTop = 1588
          mmWidth = 3440
          BandType = 3
          GroupNo = 1
          LayerName = BandLayer3
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'CODFORNEC'
      DataPipeline = ppDBRelAuracao
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRelAuracao'
      NewFile = False
      object ppGroupHeaderBand7: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 15875
        mmPrintPosition = 0
        object ppLine21: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line21'
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 13229
          mmTop = 13230
          mmWidth = 256117
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object ppLabel30: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label30'
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 13229
          mmTop = 8468
          mmWidth = 10054
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object ppLabel31: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label31'
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 24871
          mmTop = 8468
          mmWidth = 79904
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object ppLabel33: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label33'
          Caption = 'Verba Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 148961
          mmTop = 8468
          mmWidth = 25929
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object ppLabel35: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label35'
          AutoSize = False
          Caption = 'Qt. Vendida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          WordWrap = True
          mmHeight = 3440
          mmLeft = 128323
          mmTop = 8468
          mmWidth = 18785
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object ppLabel46: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label46'
          Caption = 'Fornecedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4234
          mmLeft = 14023
          mmTop = 1058
          mmWidth = 20373
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object ppLabel50: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label201'
          Caption = 'Num. Verba'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 176477
          mmTop = 8468
          mmWidth = 18521
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object ppLabel41: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label41'
          Caption = 'Verba Unit'#225'ria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 106627
          mmTop = 8468
          mmWidth = 20373
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object ppLine23: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line23'
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 13229
          mmTop = 6880
          mmWidth = 256117
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object ppDBText42: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText42'
          DataField = 'CODFORNEC'
          DataPipeline = ppDBRelAuracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRelAuracao'
          mmHeight = 4235
          mmLeft = 36248
          mmTop = 1058
          mmWidth = 14822
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object ppDBText48: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText12'
          DataField = 'FORNECEDOR'
          DataPipeline = ppDBRelAuracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRelAuracao'
          mmHeight = 4235
          mmLeft = 56092
          mmTop = 1058
          mmWidth = 210344
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
        object ppLabel69: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label69'
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 52121
          mmTop = 1058
          mmWidth = 3175
          BandType = 3
          GroupNo = 2
          LayerName = BandLayer3
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 23019
        mmPrintPosition = 0
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 794
          mmTop = 2382
          mmWidth = 283898
          BandType = 5
          GroupNo = 2
          LayerName = BandLayer3
        end
        object ppLabel93: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label93'
          Caption = 'Totalizadores:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 18
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 7673
          mmLeft = 14023
          mmTop = 9526
          mmWidth = 42863
          BandType = 5
          GroupNo = 2
          LayerName = BandLayer3
        end
        object ppDBCalc14: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc6'
          DataField = 'VLTOTALVERBA'
          DataPipeline = ppDBRelAuracao
          DisplayFormat = '$#,0.00;-$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          ResetGroup = ppGroup7
          Transparent = True
          DataPipelineName = 'ppDBRelAuracao'
          mmHeight = 3704
          mmLeft = 78317
          mmTop = 15876
          mmWidth = 45773
          BandType = 5
          GroupNo = 2
          LayerName = BandLayer3
        end
        object ppLabel32: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label32'
          Caption = 'Total Verba:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 59531
          mmTop = 15876
          mmWidth = 17463
          BandType = 5
          GroupNo = 2
          LayerName = BandLayer3
        end
        object ppLabel94: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label94'
          Caption = 'Qt. Vendida:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 59531
          mmTop = 11378
          mmWidth = 17463
          BandType = 5
          GroupNo = 2
          LayerName = BandLayer3
        end
        object ppDBCalc13: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc13'
          DataField = 'QT'
          DataPipeline = ppDBRelAuracao
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          ResetGroup = ppGroup7
          Transparent = True
          DataPipelineName = 'ppDBRelAuracao'
          mmHeight = 3704
          mmLeft = 78317
          mmTop = 11378
          mmWidth = 45773
          BandType = 5
          GroupNo = 2
          LayerName = BandLayer3
        end
        object ppLabel40: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label40'
          Caption = 'Qt. Itens:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 59531
          mmTop = 7409
          mmWidth = 17463
          BandType = 5
          GroupNo = 2
          LayerName = BandLayer3
        end
        object ppDBCalc15: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc15'
          DataField = 'CODPROD'
          DataPipeline = ppDBRelAuracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBRelAuracao'
          mmHeight = 4498
          mmLeft = 78317
          mmTop = 7409
          mmWidth = 17198
          BandType = 5
          GroupNo = 2
          LayerName = BandLayer3
        end
      end
    end
    object raCodeModule3: TraCodeModule
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'BandLayer3'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object qrPossuiCRMVigente: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      
        'SELECT PCDESCONTOFIDELIDADE.CODCAMPANHACRM, PCDESCONTOFIDELIDADE' +
        '.PVENDACRM'
      '  FROM PCDESCONTOFIDELIDADE'
      ' WHERE     PCDESCONTOFIDELIDADE.CODFILIAL = :CODFILIAL'
      
        '       AND NVL (PCDESCONTOFIDELIDADE.CODCAMPANHACRM, 0) <> :CODC' +
        'AMPANHACRM'
      '       AND PCDESCONTOFIDELIDADE.CODPROD IN (SELECT Y.CODPROD'
      '                                              FROM PCPRODUT Y'
      
        '                                             WHERE Y.CODPRODPRIN' +
        'C IN (SELECT X.CODPRODPRINC'
      
        '                                                                ' +
        '        FROM PCPRODUT X'
      
        '                                                                ' +
        '       WHERE X.CODPROD = :CODPROD))'
      
        '       AND PCDESCONTOFIDELIDADE.CODCLICONVENIO = (SELECT CODCLIC' +
        'RMGERAL'
      
        '                                                    FROM PCCONSU' +
        'M'
      
        '                                                   WHERE ROWNUM ' +
        '= 1)'
      '       AND NVL (PCDESCONTOFIDELIDADE.PVENDACRM, 0) > 0'
      '       AND NVL (PCDESCONTOFIDELIDADE.PERCDESCONTO, 0) > 0'
      '       AND PCDESCONTOFIDELIDADE.DTEXCLUSAO IS NULL'
      '       AND PCDESCONTOFIDELIDADE.DTFINAL >= TRUNC (SYSDATE)'
      
        '       AND PCDESCONTOFIDELIDADE.CODCLICONVENIO IN (SELECT CODCLI' +
        'CRMGERAL FROM PCCONSUM)'
      
        '       AND (   TRUNC (PCDESCONTOFIDELIDADE.DTINICIAL) BETWEEN TR' +
        'UNC ( :DTINICIAL) AND TRUNC ( :DTFINAL)'
      
        '            OR TRUNC (PCDESCONTOFIDELIDADE.DTFINAL) BETWEEN TRUN' +
        'C ( :DTINICIAL) AND TRUNC ( :DTFINAL)'
      
        '            OR TRUNC ( :DTINICIAL) BETWEEN TRUNC (PCDESCONTOFIDE' +
        'LIDADE.DTINICIAL) AND TRUNC (PCDESCONTOFIDELIDADE.DTFINAL)'
      
        '            OR TRUNC ( :DTFINAL) BETWEEN TRUNC (PCDESCONTOFIDELI' +
        'DADE.DTINICIAL) AND TRUNC (PCDESCONTOFIDELIDADE.DTFINAL))')
    Left = 192
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODFILIAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODCAMPANHACRM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODPROD'
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
      end>
  end
  object qryInsereClienteGrupo: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'BEGIN'
      ''
      'UPDATE I9GRUPOCRMI'
      'SET DTATUALIZACAO = SYSDATE'
      'WHERE CODGRUPOCRM = :CODGRUPOCRM'
      'AND APENASNUMEROS(CGCENT) = APENASNUMEROS(:CGCENT);'
      ' '
      'IF SQL%NOTFOUND THEN'
      ''
      '    INSERT INTO I9GRUPOCRMI (CODGRUPOCRM, CGCENT, DTCADASTRO)'
      '    VALUES (:CODGRUPOCRM, :CGCENT, SYSDATE);'
      ' '
      'END IF;'
      ' '
      'END;')
    Left = 192
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODGRUPOCRM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CGCENT'
        Value = nil
      end>
  end
  object cdsFiliaisIncluidas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 632
    Top = 96
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
      FieldName = 'CODCAMPANHACRM'
    end
  end
  object dsFiliaisIncluidas: TDataSource
    DataSet = cdsFiliaisIncluidas
    Left = 632
    Top = 160
  end
  object qrFiliaisDisponiveis: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      
        'SELECT DISTINCT  '#39'N'#39' INCLUIDO, PCFILIAL.CODIGO CODIGO, NVL(PCFIL' +
        'IAL.FANTASIA, PCFILIAL.RAZAOSOCIAL) AS RAZAOSOCIAL, NULL AS CODC' +
        'AMPANHACRM'
      '  FROM PCLIB, PCFILIAL                        '
      ' WHERE PCFILIAL.CODIGO = PCLIB.CODIGOA        '
      '       AND PCFILIAL.CODIGO <> ('#39'99'#39')        '
      '       AND PCLIB.CODFUNC = :CODFUNC    '
      
        '       AND PCFILIAL.CODIGO IN (SELECT DISTINCT CODFILIAL FROM PC' +
        'CAIXA WHERE PCCAIXA.DTFIM IS NULL)             '
      ' ORDER BY PCFILIAL.CODIGO                     ')
    CachedUpdates = True
    Options.SetFieldsReadOnly = False
    Left = 632
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODFUNC'
        Value = nil
      end>
  end
  object dsFiliaisDisponiveis: TDataSource
    DataSet = cdsFiliaisDisponiveis
    Left = 632
    Top = 368
  end
  object cdsFiliaisDisponiveis: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 632
    Top = 304
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
  object qrRelCampanha: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '       PCDESCONTOFIDELIDADE.CODFILIAL,'
      '       PCDESCONTOFIDELIDADE.CODCAMPANHACRM,'
      '       I9CAMPANHACRM.DESCRICAOCAMPANHACRM,'
      '       PCPRODUT.CODPROD,'
      '       PCPRODUT.DESCRICAO,'
      '       PCFORNEC.CODFORNEC,'
      '       PCFORNEC.FORNECEDOR,'
      '       PCDESCONTOFIDELIDADE.PERCDESCONTO,'
      
        '       PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(PCEMBALAGEM.PVEN' +
        'DAATAC, PCDESCONTOFIDELIDADE.PVENDACRM ) AS PERCDESCATAC,'
      
        '       NVL(PCDESCONTOFIDELIDADE.VLVERBAUNITARIO,0 ) AS VLVERBAUN' +
        'ITARIO,'
      
        '       DECODE(I9CONFIGVERBACRM.TIPOVERBA, '#39'MARGEMDIRETORIA'#39', '#39'M.' +
        ' DIRETORIA'#39', '#39'DEFINIDO'#39') AS TIPOVERBA,'
      '       TRUNC( NVL( PCEST.CUSTOFIN, 0 ), 2 ) AS CUSTOFIN,'
      '       PCDESCONTOFIDELIDADE.PVENDACRM,'
      
        '       NVL(COLUNA_PRECO(BUSCAPRECOS(PCEMBALAGEM.CODFILIAL, NVL (' +
        'PKG_I9UTILITARIO.BUSCAPARAMETRO (PCEMBALAGEM.CODFILIAL, '#39'NUMREGI' +
        'AOPADRAOVAREJO'#39'), '#39'1'#39'), PCEMBALAGEM.CODAUXILIAR, TRUNC (SYSDATE)' +
        '), '#39'PVENDA1'#39'), 0) AS PVENDA,'
      
        '       NVL(COLUNA_PRECO(BUSCAPRECOS(PCEMBALAGEM.CODFILIAL, NVL (' +
        'PKG_I9UTILITARIO.BUSCAPARAMETRO (PCEMBALAGEM.CODFILIAL, '#39'NUMREGI' +
        'AOPADRAOVAREJO'#39'), '#39'1'#39'), PCEMBALAGEM.CODAUXILIAR, TRUNC (SYSDATE)' +
        '), '#39'PVENDAATAC1'#39'), 0) AS PVENDAATAC,'
      '       PCEMBALAGEM.QTMINIMAATACADO,'
      
        '       PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(PCDESCONTOFIDELI' +
        'DADE.PVENDACRM,'
      
        '                                                TRUNC(NVL(PCEST.' +
        'CUSTOFIN,0 ),2 ) - NVL(PCDESCONTOFIDELIDADE.VLVERBAUNITARIO,0 ) ' +
        ') AS MARGEMFUTURA,'
      '       PCDESCONTOFIDELIDADE.DTINICIAL,'
      '       PCDESCONTOFIDELIDADE.DTFINAL,'
      '       I9CAMPANHACRM.CODFUNCINCLUSAO,'
      '       PCEMPR.NOME_GUERRA,'
      '       PCPRODFILIAL.CODCOMPRADOR,'
      
        '       (SELECT NOME_GUERRA FROM PCEMPR WHERE MATRICULA = PCPRODF' +
        'ILIAL.CODCOMPRADOR) AS COMPRADOR,'
      '       PCEMBALAGEM.CODAUXILIAR,'
      
        '       (PKG_ESTOQUE.ESTOQUE_DISPONIVEL(PCEST.CODPROD, PCEST.CODF' +
        'ILIAL, '#39'C'#39')) AS QTESTDISP,'
      
        '       (PKG_ESTOQUE.ESTOQUE_DISPONIVEL(PCEST.CODPROD, PCEST.CODF' +
        'ILIAL, '#39'C'#39') / DECODE(NVL(PCEST.QTGIRODIA,0),0,1,PCEST.QTGIRODIA)' +
        ') AS QTESTDIAS'
      
        '  FROM PCDESCONTOFIDELIDADE, PCPRODUT, PCEST, I9CAMPANHACRM, I9C' +
        'ONFIGVERBACRM, PCEMBALAGEM, PCFORNEC, PCEMPR, PCPRODFILIAL'
      ' WHERE PCDESCONTOFIDELIDADE.CODPROD = PCPRODUT.CODPROD'
      
        '        AND I9CAMPANHACRM.CODCAMPANHACRM = I9CONFIGVERBACRM.CODC' +
        'AMPANHACRM(+)'
      '    AND PCPRODUT.CODFORNEC = I9CONFIGVERBACRM.CODFORNEC(+)'
      '   AND PCEST.CODPROD = PCDESCONTOFIDELIDADE.CODPROD'
      '   AND PCEMPR.MATRICULA = I9CAMPANHACRM.CODFUNCINCLUSAO'
      '   AND PCEMBALAGEM.CODPROD = PCDESCONTOFIDELIDADE.CODPROD'
      '   AND PCEMBALAGEM.CODFILIAL = PCEST.CODFILIAL'
      '   AND PCFORNEC.CODFORNEC = PCPRODUT.CODFORNEC'
      
        '   AND PCEMBALAGEM.QTUNIT = (SELECT MIN(QTUNIT) FROM PCEMBALAGEM' +
        ' X WHERE X.CODPROD = PCEMBALAGEM.CODPROD AND X.CODFILIAL = PCEMB' +
        'ALAGEM.CODFILIAL)'
      '   AND PCEST.CODFILIAL = PCDESCONTOFIDELIDADE.CODFILIAL'
      
        '   AND I9CAMPANHACRM.CODCAMPANHACRM = PCDESCONTOFIDELIDADE.CODCA' +
        'MPANHACRM'
      '   AND PCPRODFILIAL.CODPROD = PCPRODUT.CODPROD'
      '   AND PCPRODFILIAL.CODFILIAL = PCEMBALAGEM.CODFILIAL'
      '   AND NVL(PCDESCONTOFIDELIDADE.PRODPRINCIPAL, '#39'S'#39') = '#39'S'#39
      
        '   AND PCDESCONTOFIDELIDADE.CODCLICONVENIO IN ( SELECT CODCLICRM' +
        'GERAL FROM PCCONSUM )'
      'ORDER BY PCDESCONTOFIDELIDADE.CODCAMPANHACRM, PCPRODUT.DESCRICAO')
    Left = 560
    Top = 8
  end
  object dsRelCampanha: TDataSource
    DataSet = qrRelCampanha
    Left = 648
    Top = 8
  end
  object ppRelCampanha: TppReport
    AutoStop = False
    DataPipeline = ppDBRelCampanha
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Users\Pablo Oliveira\Desktop\relat'#243'rio de produtos.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    TextSearchSettings.ShowAll = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 466
    Top = 10
    Version = '17.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRelCampanha'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 27517
      mmPrintPosition = 0
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label1'
        Caption = 'Relat'#243'rio de Campanha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 25
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 10054
        mmLeft = 94721
        mmTop = 8996
        mmWidth = 96573
        BandType = 0
        LayerName = BandLayer4
      end
      object ppSystemVariable5: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable9'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 251619
        mmTop = 3175
        mmWidth = 29633
        BandType = 0
        LayerName = BandLayer4
      end
      object ppSystemVariable6: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable10'
        VarType = vtPageNoDesc
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 267759
        mmTop = 7144
        mmWidth = 13229
        BandType = 0
        LayerName = BandLayer4
      end
      object ppDBText57: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText1'
        DataField = 'CODPROD'
        DataPipeline = ppDBRelCampanha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 2910
        mmLeft = 0
        mmTop = 0
        mmWidth = 10054
        BandType = 0
        LayerName = BandLayer4
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Color = clSilver
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText58: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText2'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBRelCampanha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 16404
        mmTop = 265
        mmWidth = 55296
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText70: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText15'
        DataField = 'CODPROD'
        DataPipeline = ppDBRelCampanha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3705
        mmLeft = 794
        mmTop = 262
        mmWidth = 14288
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText59: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText59'
        DataField = 'PERCDESCATAC'
        DataPipeline = ppDBRelCampanha
        DisplayFormat = '0.00 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 72229
        mmTop = 265
        mmWidth = 20373
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText60: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText60'
        DataField = 'VLVERBAUNITARIO'
        DataPipeline = ppDBRelCampanha
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 93396
        mmTop = 265
        mmWidth = 15332
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText61: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText61'
        DataField = 'CUSTOFIN'
        DataPipeline = ppDBRelCampanha
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 129895
        mmTop = 265
        mmWidth = 18256
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText62: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText62'
        DataField = 'PVENDACRM'
        DataPipeline = ppDBRelCampanha
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 149474
        mmTop = 265
        mmWidth = 20638
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText63: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText63'
        DataField = 'MARGEMFUTURA'
        DataPipeline = ppDBRelCampanha
        DisplayFormat = '0.00 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 210550
        mmTop = 0
        mmWidth = 12171
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText67: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText67'
        DataField = 'TIPOVERBA'
        DataPipeline = ppDBRelCampanha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 109522
        mmTop = 265
        mmWidth = 20108
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText72: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText72'
        DataField = 'PVENDA'
        DataPipeline = ppDBRelCampanha
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 170906
        mmTop = 265
        mmWidth = 18785
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText73: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText73'
        DataField = 'PVENDAATAC'
        DataPipeline = ppDBRelCampanha
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 190750
        mmTop = 265
        mmWidth = 18785
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText43: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText43'
        DataField = 'CODCOMPRADOR'
        DataPipeline = ppDBRelCampanha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3703
        mmLeft = 223836
        mmTop = 0
        mmWidth = 17196
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText44'
        DataField = 'COMPRADOR'
        DataPipeline = ppDBRelCampanha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3703
        mmLeft = 241828
        mmTop = 0
        mmWidth = 41263
        BandType = 4
        LayerName = BandLayer4
      end
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup5: TppGroup
      BreakName = 'CODCAMPANHACRM'
      DataPipeline = ppDBRelCampanha
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRelCampanha'
      NewFile = False
      object ppGroupHeaderBand5: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 19844
        mmPrintPosition = 0
        object ppLine11: TppLine
          DesignLayer = ppDesignLayer4
          UserName = 'Line11'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 1323
          mmWidth = 284300
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLine12: TppLine
          DesignLayer = ppDesignLayer4
          UserName = 'Line12'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 6879
          mmWidth = 284300
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel63: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label9'
          Caption = 'Campanha:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 2117
          mmTop = 2381
          mmWidth = 16140
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppDBText55: TppDBText
          DesignLayer = ppDesignLayer4
          UserName = 'DBText9'
          DataField = 'CODCAMPANHACRM'
          DataPipeline = ppDBRelCampanha
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRelCampanha'
          mmHeight = 3704
          mmLeft = 19844
          mmTop = 2381
          mmWidth = 8731
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel64: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label10'
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 28840
          mmTop = 2381
          mmWidth = 1058
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppDBText56: TppDBText
          DesignLayer = ppDesignLayer4
          UserName = 'DBText10'
          DataField = 'DESCRICAOCAMPANHACRM'
          DataPipeline = ppDBRelCampanha
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRelCampanha'
          mmHeight = 3704
          mmLeft = 30692
          mmTop = 2381
          mmWidth = 75936
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel52: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label83'
          Caption = 'Filial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 108215
          mmTop = 2381
          mmWidth = 20373
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppDBText50: TppDBText
          DesignLayer = ppDesignLayer4
          UserName = 'DBText6'
          DataField = 'CODFILIAL'
          DataPipeline = ppDBRelCampanha
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRelCampanha'
          mmHeight = 3704
          mmLeft = 130175
          mmTop = 2381
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel49: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label7'
          Caption = 'Per'#237'odo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 141023
          mmTop = 2381
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppDBText53: TppDBText
          DesignLayer = ppDesignLayer4
          UserName = 'DBText7'
          DataField = 'DTINICIAL'
          DataPipeline = ppDBRelCampanha
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRelCampanha'
          mmHeight = 3440
          mmLeft = 156369
          mmTop = 2381
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppDBText54: TppDBText
          DesignLayer = ppDesignLayer4
          UserName = 'DBText8'
          DataField = 'DTFINAL'
          DataPipeline = ppDBRelCampanha
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRelCampanha'
          mmHeight = 3440
          mmLeft = 177536
          mmTop = 2381
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel62: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label3'
          Caption = 'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 173832
          mmTop = 2381
          mmWidth = 1588
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel53: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label4'
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 794
          mmTop = 12700
          mmWidth = 14288
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel54: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label26'
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 16404
          mmTop = 12700
          mmWidth = 55296
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLine4: TppLine
          DesignLayer = ppDesignLayer4
          UserName = 'Line4'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 1060
          mmTop = 17727
          mmWidth = 286420
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel55: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label2'
          AutoSize = False
          Caption = '% Desconto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 72229
          mmTop = 12700
          mmWidth = 20373
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel56: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label56'
          AutoSize = False
          Caption = 'Vl Verba'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 93396
          mmTop = 12700
          mmWidth = 15332
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel57: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label57'
          AutoSize = False
          Caption = 'Custo Fin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 129895
          mmTop = 12700
          mmWidth = 18256
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel58: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label58'
          AutoSize = False
          Caption = 'Pre'#231'o CRM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 149474
          mmTop = 12700
          mmWidth = 20638
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel59: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label59'
          AutoSize = False
          Caption = 'Mar(%)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 210550
          mmTop = 12700
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel67: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label67'
          AutoSize = False
          Caption = 'Tipo Verba'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 109522
          mmTop = 12700
          mmWidth = 20108
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel70: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label70'
          AutoSize = False
          Caption = 'Pre'#231'o Var.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 170906
          mmTop = 12700
          mmWidth = 18785
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel71: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label701'
          AutoSize = False
          Caption = 'Pre'#231'o Atac.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 190750
          mmTop = 12700
          mmWidth = 18785
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel89: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label89'
          AutoSize = False
          Caption = 'Inclus'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 197115
          mmTop = 2381
          mmWidth = 13494
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppDBText75: TppDBText
          DesignLayer = ppDesignLayer4
          UserName = 'DBText75'
          DataField = 'CODFUNCINCLUSAO'
          DataPipeline = ppDBRelCampanha
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRelCampanha'
          mmHeight = 3704
          mmLeft = 212461
          mmTop = 2381
          mmWidth = 6879
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel90: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label101'
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 219603
          mmTop = 2381
          mmWidth = 793
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppDBText85: TppDBText
          DesignLayer = ppDesignLayer4
          UserName = 'DBText85'
          DataField = 'NOME_GUERRA'
          DataPipeline = ppDBRelCampanha
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRelCampanha'
          mmHeight = 3704
          mmLeft = 222250
          mmTop = 2381
          mmWidth = 38629
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel72: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label72'
          AutoSize = False
          Caption = 'Cod. Comp.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 223836
          mmTop = 12700
          mmWidth = 17195
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel96: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label96'
          AutoSize = False
          Caption = 'Comprad.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 241819
          mmTop = 12700
          mmWidth = 41295
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 17198
        mmPrintPosition = 0
        object ppLine5: TppLine
          DesignLayer = ppDesignLayer4
          UserName = 'Line5'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 0
          mmTop = 1058
          mmWidth = 284300
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer4
          UserName = 'DBCalc1'
          DataField = 'CODPRODPRINC'
          DataPipeline = ppDBRelCampanha
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBRelCampanha'
          mmHeight = 4498
          mmLeft = 21696
          mmTop = 3969
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel60: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label60'
          Caption = 'Qtde. Itens:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 2117
          mmTop = 3969
          mmWidth = 19050
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer4
        end
      end
    end
    object raCodeModule4: TraCodeModule
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'BandLayer4'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppDBRelCampanha: TppDBPipeline
    DataSource = dsRelCampanha
    UserName = 'DBRelCampanhaCRM'
    Left = 464
    Top = 56
  end
  object qrDetalhesCampanhaCRM: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '       PCDESCONTOFIDELIDADE.CODFILIAL,'
      '       PCDESCONTOFIDELIDADE.CODCAMPANHACRM,'
      '       I9CAMPANHACRM.DESCRICAOCAMPANHACRM,'
      '       PCPRODUT.CODPROD AS CODPRODPRINC,'
      '       PCPRODUT.DESCRICAO,'
      '       PCDESCONTOFIDELIDADE.PERCDESCONTO,'
      
        '       NVL(PCDESCONTOFIDELIDADE.VLVERBAUNITARIO,0 ) AS VLVERBAUN' +
        'ITARIO,'
      '       TRUNC( NVL( PCEST.CUSTOFIN, 0 ), 2 ) AS CUSTOFIN,'
      '       PCDESCONTOFIDELIDADE.PVENDACRM,'
      
        '       PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(PCDESCONTOFIDELI' +
        'DADE.PVENDACRM,'
      
        '                                                TRUNC(NVL(PCEST.' +
        'CUSTOFIN,0 ),2 ) - NVL(PCDESCONTOFIDELIDADE.VLVERBAUNITARIO,0 ) ' +
        ') AS MARGEMFUTURA,'
      '       PCDESCONTOFIDELIDADE.DTINICIAL,'
      '       PCDESCONTOFIDELIDADE.DTFINAL,'
      
        '       (SELECT NVL(MARGEMMINATAC,0) FROM PCCLASSIFICMERC WHERE C' +
        'ODPROD = PCPRODUT.CODPROD AND CODFILIAL = PCDESCONTOFIDELIDADE.C' +
        'ODFILIAL) AS MARGEMMIN'
      '  FROM PCDESCONTOFIDELIDADE, PCPRODUT, PCEST, I9CAMPANHACRM'
      ' WHERE PCDESCONTOFIDELIDADE.CODPROD = PCPRODUT.CODPROD   '
      
        '   AND I9CAMPANHACRM.CODCAMPANHACRM = PCDESCONTOFIDELIDADE.CODCA' +
        'MPANHACRM'
      '   AND PCEST.CODPROD = PCDESCONTOFIDELIDADE.CODPROD'
      '   AND PCEST.CODFILIAL = PCDESCONTOFIDELIDADE.CODFILIAL'
      '   AND NVL(PCDESCONTOFIDELIDADE.PRODPRINCIPAL,'#39'S'#39') = '#39'S'#39
      '   AND I9CAMPANHACRM.CODCAMPANHACRM = :CODCAMPANHACRM'
      
        '   AND PCDESCONTOFIDELIDADE.CODCLICONVENIO IN ( SELECT CODCLICRM' +
        'GERAL'
      
        '                                                  FROM PCCONSUM ' +
        ')'
      'ORDER BY PCDESCONTOFIDELIDADE.CODCAMPANHACRM, PCPRODUT.DESCRICAO')
    Left = 760
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODCAMPANHACRM'
        Value = nil
      end>
  end
  object dsDetalhesCampanhaCRM: TDataSource
    DataSet = qrDetalhesCampanhaCRM
    Left = 760
    Top = 520
  end
  object dsVerbasFornecedor: TDataSource
    DataSet = cdsVerbasFornecedor
    Left = 576
    Top = 512
  end
  object cdsVerbasFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 448
    Top = 512
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
    object cdsVerbasFornecedorCODCAMPANHACRM: TFloatField
      FieldName = 'CODCAMPANHACRM'
    end
  end
  object qrGravaVerba: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'DECLARE'
      '  REG I9CONFIGVERBACRM%ROWTYPE;'
      ''
      'BEGIN'
      ''
      ' UPDATE I9CONFIGVERBACRM'
      ' SET TIPOVERBA = :TIPOVERBA,'
      '     VLVERBA   = :VLVERBA,'
      '     DTAPURACAOVERBAINI = :DTAPURACAOVERBAINI,'
      '     DTAPURACAOVERBAFIM = :DTAPURACAOVERBAFIM,'
      '     TIPOPAGTOVERBA     = :TIPOPAGTOVERBA'
      ' WHERE CODCAMPANHACRM = :CODCAMPANHACRM'
      ' AND   CODFORNEC = :CODFORNEC;'
      ''
      ''
      ' IF SQL%NOTFOUND THEN '
      ''
      '   REG.CODCAMPANHACRM := :CODCAMPANHACRM;'
      '   REG.TIPOVERBA := :TIPOVERBA;'
      '   REG.VLVERBA   := :VLVERBA;'
      '   REG.DTAPURACAOVERBAINI := :DTAPURACAOVERBAINI;'
      '   REG.DTAPURACAOVERBAFIM := :DTAPURACAOVERBAFIM;'
      '   REG.TIPOPAGTOVERBA     := :TIPOPAGTOVERBA;'
      '   REG.CODFORNEC          := :CODFORNEC;'
      ''
      '   INSERT INTO I9CONFIGVERBACRM VALUES REG;'
      ''
      ' END IF;'
      ''
      ''
      'END;')
    Left = 336
    Top = 512
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
        Name = 'CODCAMPANHACRM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODFORNEC'
        Value = nil
      end>
  end
  object ppRelCampanhaComprador: TppReport
    AutoStop = False
    DataPipeline = ppDBRelCampanhaComprador
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Users\Pablo Oliveira\Desktop\relat'#243'rio de produtos.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    TextSearchSettings.ShowAll = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 226
    Top = 498
    Version = '17.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRelCampanhaComprador'
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 28840
      mmPrintPosition = 0
      object ppLabel73: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label1'
        Caption = 'Relat'#243'rio de Campanha Comprador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 25
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 10054
        mmLeft = 18256
        mmTop = 10848
        mmWidth = 145786
        BandType = 0
        LayerName = BandLayer5
      end
      object ppSystemVariable7: TppSystemVariable
        DesignLayer = ppDesignLayer5
        UserName = 'SystemVariable9'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 164836
        mmTop = 2117
        mmWidth = 29633
        BandType = 0
        LayerName = BandLayer5
      end
      object ppSystemVariable8: TppSystemVariable
        DesignLayer = ppDesignLayer5
        UserName = 'SystemVariable10'
        VarType = vtPageNoDesc
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 180975
        mmTop = 6085
        mmWidth = 13229
        BandType = 0
        LayerName = BandLayer5
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Color = clSilver
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText76: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText2'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBRelCampanhaComprador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRelCampanhaComprador'
        mmHeight = 3704
        mmLeft = 16404
        mmTop = 265
        mmWidth = 61648
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText77: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText15'
        DataField = 'CODPROD'
        DataPipeline = ppDBRelCampanhaComprador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRelCampanhaComprador'
        mmHeight = 3705
        mmLeft = 794
        mmTop = 262
        mmWidth = 14288
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText79: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText60'
        DataField = 'VLVERBAUNITARIO'
        DataPipeline = ppDBRelCampanhaComprador
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelCampanhaComprador'
        mmHeight = 3704
        mmLeft = 111390
        mmTop = 0
        mmWidth = 24342
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText80: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText61'
        DataField = 'CUSTOFIN'
        DataPipeline = ppDBRelCampanhaComprador
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelCampanhaComprador'
        mmHeight = 3704
        mmLeft = 156369
        mmTop = 0
        mmWidth = 18256
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText81: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText62'
        DataField = 'PVENDACRM'
        DataPipeline = ppDBRelCampanhaComprador
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelCampanhaComprador'
        mmHeight = 3704
        mmLeft = 175948
        mmTop = 0
        mmWidth = 20638
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText83: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText67'
        DataField = 'TIPOVERBA'
        DataPipeline = ppDBRelCampanhaComprador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBRelCampanhaComprador'
        mmHeight = 3704
        mmLeft = 135996
        mmTop = 0
        mmWidth = 20108
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText87: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText9'
        DataField = 'CODCAMPANHACRM'
        DataPipeline = ppDBRelCampanhaComprador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelCampanhaComprador'
        mmHeight = 3704
        mmLeft = 92340
        mmTop = 265
        mmWidth = 18256
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText89: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText6'
        DataField = 'CODFILIAL'
        DataPipeline = ppDBRelCampanhaComprador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelCampanhaComprador'
        mmHeight = 3704
        mmLeft = 78581
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = BandLayer5
      end
    end
    object ppSummaryBand4: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup6: TppGroup
      BreakName = 'CODFORNEC'
      DataPipeline = ppDBRelCampanhaComprador
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group6'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRelCampanhaComprador'
      NewFile = False
      object ppGroupHeaderBand6: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 13494
        mmPrintPosition = 0
        object ppLabel79: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label4'
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 794
          mmTop = 8731
          mmWidth = 14288
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppLabel80: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label26'
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 16404
          mmTop = 8731
          mmWidth = 61648
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppLabel82: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label56'
          AutoSize = False
          Caption = 'Vl Verba unit.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 111390
          mmTop = 8731
          mmWidth = 24342
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppLabel84: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label57'
          AutoSize = False
          Caption = 'Custo Fin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 156369
          mmTop = 8731
          mmWidth = 18256
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppLabel85: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label58'
          AutoSize = False
          Caption = 'Pre'#231'o CRM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 175948
          mmTop = 8731
          mmWidth = 20638
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppLabel87: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label67'
          AutoSize = False
          Caption = 'Tipo Verba'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 135996
          mmTop = 8731
          mmWidth = 20108
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppLine14: TppLine
          DesignLayer = ppDesignLayer5
          UserName = 'Line12'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 8202
          mmWidth = 197300
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppLabel74: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label9'
          Caption = 'Campanha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 92340
          mmTop = 8731
          mmWidth = 18256
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppLabel76: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label83'
          Caption = 'Filial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4234
          mmLeft = 78581
          mmTop = 9260
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppLabel77: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label7'
          Caption = 'Per'#237'odo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 141023
          mmTop = 3440
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppDBText90: TppDBText
          DesignLayer = ppDesignLayer5
          UserName = 'DBText7'
          DataField = 'DTINICIAL'
          DataPipeline = ppDBRelCampanhaComprador
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRelCampanhaComprador'
          mmHeight = 3440
          mmLeft = 156369
          mmTop = 3440
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppDBText91: TppDBText
          DesignLayer = ppDesignLayer5
          UserName = 'DBText8'
          DataField = 'DTFINAL'
          DataPipeline = ppDBRelCampanhaComprador
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRelCampanhaComprador'
          mmHeight = 3440
          mmLeft = 177536
          mmTop = 3440
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppLabel78: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label3'
          Caption = 'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 173832
          mmTop = 3440
          mmWidth = 1588
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppLine13: TppLine
          DesignLayer = ppDesignLayer5
          UserName = 'Line11'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 529
          mmWidth = 197300
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppLabel75: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label75'
          AutoSize = False
          Caption = 'Fornecedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 4233
          mmTop = 3440
          mmWidth = 18785
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppDBText82: TppDBText
          DesignLayer = ppDesignLayer5
          UserName = 'DBText82'
          DataField = 'CODFORNEC'
          DataPipeline = ppDBRelCampanhaComprador
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          VerticalAlignment = avCenter
          DataPipelineName = 'ppDBRelCampanhaComprador'
          mmHeight = 3704
          mmLeft = 24606
          mmTop = 3440
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppLabel88: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label88'
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 34925
          mmTop = 2910
          mmWidth = 2646
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppDBText84: TppDBText
          DesignLayer = ppDesignLayer5
          UserName = 'DBText84'
          DataField = 'FORNECEDOR'
          DataPipeline = ppDBRelCampanhaComprador
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          VerticalAlignment = avCenter
          DataPipelineName = 'ppDBRelCampanhaComprador'
          mmHeight = 3704
          mmLeft = 39158
          mmTop = 3440
          mmWidth = 100277
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer5
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 51594
        mmPrintPosition = 0
        object ppLine16: TppLine
          DesignLayer = ppDesignLayer5
          UserName = 'Line5'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 0
          mmTop = 265
          mmWidth = 197300
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppLabel81: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label81'
          Caption = 'Resumo da campanha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 16
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 6350
          mmLeft = 68527
          mmTop = 4498
          mmWidth = 60061
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppLabel86: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label86'
          Caption = 'Campanha:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5027
          mmLeft = 74348
          mmTop = 14288
          mmWidth = 23548
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppDBText78: TppDBText
          DesignLayer = ppDesignLayer5
          UserName = 'DBText78'
          DataField = 'CODCAMPANHACRM'
          DataPipeline = ppDBRelCampanhaComprador
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          VerticalAlignment = avCenter
          DataPipelineName = 'ppDBRelCampanhaComprador'
          mmHeight = 5027
          mmLeft = 100013
          mmTop = 14288
          mmWidth = 13758
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppLabel91: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label60'
          Caption = 'Qtde. Itens:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5027
          mmLeft = 74348
          mmTop = 20902
          mmWidth = 23548
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppDBCalc10: TppDBCalc
          DesignLayer = ppDesignLayer5
          UserName = 'DBCalc1'
          DataField = 'CODPROD'
          DataPipeline = ppDBRelCampanhaComprador
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup6
          TextAlignment = taCentered
          Transparent = True
          VerticalAlignment = avCenter
          DBCalcType = dcCount
          DataPipelineName = 'ppDBRelCampanhaComprador'
          mmHeight = 3969
          mmLeft = 100013
          mmTop = 20902
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppLine17: TppLine
          DesignLayer = ppDesignLayer5
          UserName = 'Line17'
          Anchors = [atRight]
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 42069
          mmTop = 35190
          mmWidth = 108215
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer5
        end
        object ppLabel92: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label92'
          Anchors = [atLeft, atRight]
          Caption = 'Assinatura do fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 78581
          mmTop = 37042
          mmWidth = 36513
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer5
        end
      end
    end
    object raCodeModule5: TraCodeModule
    end
    object ppDesignLayers5: TppDesignLayers
      object ppDesignLayer5: TppDesignLayer
        UserName = 'BandLayer5'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object ppDBRelCampanhaComprador: TppDBPipeline
    DataSource = dsRelCampanhaComprador
    UserName = 'DBRelCampanhaComprador'
    Left = 224
    Top = 544
  end
  object qrRelCampanhaComprador: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT DISTINCT'
      '       PCDESCONTOFIDELIDADE.CODFILIAL,'
      '       PCDESCONTOFIDELIDADE.CODCAMPANHACRM,'
      '       I9CAMPANHACRM.DESCRICAOCAMPANHACRM,'
      '       PCPRODUT.CODPROD,'
      '       PCPRODUT.CODPRODPRINC,'
      '       PCPRODUT.DESCRICAO,'
      '       PCFORNEC.CODFORNEC,'
      '       PCFORNEC.FORNECEDOR,'
      '       PCDESCONTOFIDELIDADE.PERCDESCONTO,'
      
        '       NVL(PCDESCONTOFIDELIDADE.VLVERBAUNITARIO,0 ) AS VLVERBAUN' +
        'ITARIO,'
      
        '       DECODE(I9CONFIGVERBACRM.TIPOVERBA, '#39'MARGEMDIRETORIA'#39', '#39'M.' +
        ' DIRETORIA'#39', '#39'DEFINIDO'#39') AS TIPOVERBA,'
      '       TRUNC( NVL( PCEST.CUSTOFIN, 0 ), 2 ) AS CUSTOFIN,'
      '       PCDESCONTOFIDELIDADE.PVENDACRM,'
      
        '       NVL(COLUNA_PRECO(BUSCAPRECOS(PCEMBALAGEM.CODFILIAL, NVL (' +
        'PKG_I9UTILITARIO.BUSCAPARAMETRO (PCEMBALAGEM.CODFILIAL, '#39'NUMREGI' +
        'AOPADRAOVAREJO'#39'), '#39'1'#39'), PCEMBALAGEM.CODAUXILIAR, TRUNC (SYSDATE)' +
        '), '#39'PVENDA1'#39'), 0) AS PVENDA,'
      
        '       NVL(COLUNA_PRECO(BUSCAPRECOS(PCEMBALAGEM.CODFILIAL, NVL (' +
        'PKG_I9UTILITARIO.BUSCAPARAMETRO (PCEMBALAGEM.CODFILIAL, '#39'NUMREGI' +
        'AOPADRAOVAREJO'#39'), '#39'1'#39'), PCEMBALAGEM.CODAUXILIAR, TRUNC (SYSDATE)' +
        '), '#39'PVENDAATAC1'#39'), 0) AS PVENDAATAC,'
      '       PCEMBALAGEM.QTMINIMAATACADO,'
      
        '       PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(PCDESCONTOFIDELI' +
        'DADE.PVENDACRM,'
      
        '                                                TRUNC(NVL(PCEST.' +
        'CUSTOFIN,0 ),2 ) - NVL(PCDESCONTOFIDELIDADE.VLVERBAUNITARIO,0 ) ' +
        ') AS MARGEMFUTURA,'
      '       PCDESCONTOFIDELIDADE.DTINICIAL,'
      '       PCDESCONTOFIDELIDADE.DTFINAL'
      
        '  FROM PCDESCONTOFIDELIDADE, PCPRODUT, PCEST, I9CAMPANHACRM, I9C' +
        'ONFIGVERBACRM, PCEMBALAGEM, PCFORNEC'
      ' WHERE PCDESCONTOFIDELIDADE.CODPROD = PCPRODUT.CODPROD'
      
        '        AND I9CAMPANHACRM.CODCAMPANHACRM = I9CONFIGVERBACRM.CODC' +
        'AMPANHACRM(+)'
      '    AND PCPRODUT.CODFORNEC = I9CONFIGVERBACRM.CODFORNEC(+)'
      '   AND PCEST.CODPROD = PCDESCONTOFIDELIDADE.CODPROD'
      '   AND PCEMBALAGEM.CODPROD = PCDESCONTOFIDELIDADE.CODPROD'
      '   AND PCEMBALAGEM.CODFILIAL = PCEST.CODFILIAL'
      '   AND PCFORNEC.CODFORNEC = PCPRODUT.CODFORNEC'
      
        '   AND PCEMBALAGEM.QTUNIT = (SELECT MIN(QTUNIT) FROM PCEMBALAGEM' +
        ' X WHERE X.CODPROD = PCEMBALAGEM.CODPROD AND X.CODFILIAL = PCEMB' +
        'ALAGEM.CODFILIAL)'
      '   AND PCEST.CODFILIAL = PCDESCONTOFIDELIDADE.CODFILIAL'
      
        '   AND I9CAMPANHACRM.CODCAMPANHACRM = PCDESCONTOFIDELIDADE.CODCA' +
        'MPANHACRM'
      
        '   AND PCDESCONTOFIDELIDADE.CODCLICONVENIO IN ( SELECT CODCLICRM' +
        'GERAL FROM PCCONSUM )'
      'ORDER BY PCDESCONTOFIDELIDADE.CODCAMPANHACRM, PCPRODUT.DESCRICAO')
    Left = 328
    Top = 456
  end
  object dsRelCampanhaComprador: TDataSource
    DataSet = qrRelCampanhaComprador
    Left = 440
    Top = 464
  end
  object prcAtualizarEtiquetas: TUniStoredProc
    StoredProcName = 'PKG_I9UTILITARIO.ATUALIZAR_ETIQUETAS'
    SQL.Strings = (
      'begin'
      
        '  PKG_I9UTILITARIO.ATUALIZAR_ETIQUETAS(:P_CODFILIAL, :P_CODPROD,' +
        ' :P_COMMITAR);'
      'end;')
    Connection = DmLogin.Conexao
    Left = 768
    Top = 352
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
  object ppRelCampanhaExcel: TppReport
    AutoStop = False
    DataPipeline = ppDBRelCampanha
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Users\Pablo Oliveira\Desktop\relat'#243'rio de produtos.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    TextSearchSettings.ShowAll = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 706
    Top = 58
    Version = '17.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRelCampanha'
    object ppHeaderBand6: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 23813
      mmPrintPosition = 0
      object ppLabel98: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label9'
        AutoSize = False
        Caption = 'cod.campanha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 19579
        mmWidth = 11113
        BandType = 0
        LayerName = BandLayer6
      end
      object ppLabel100: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label83'
        AutoSize = False
        Caption = 'filial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 88900
        mmTop = 19579
        mmWidth = 6085
        BandType = 0
        LayerName = BandLayer6
      end
      object ppLabel103: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label4'
        AutoSize = False
        Caption = 'codprod'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 28575
        mmTop = 19579
        mmWidth = 10848
        BandType = 0
        LayerName = BandLayer6
      end
      object ppLabel104: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label26'
        AutoSize = False
        Caption = 'produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 41275
        mmTop = 19579
        mmWidth = 11377
        BandType = 0
        LayerName = BandLayer6
      end
      object ppLabel105: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label2'
        AutoSize = False
        Caption = 'desc%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 139436
        mmTop = 19579
        mmWidth = 10848
        BandType = 0
        LayerName = BandLayer6
      end
      object ppLabel106: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label56'
        AutoSize = False
        Caption = 'vl.verba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 151077
        mmTop = 19579
        mmWidth = 13494
        BandType = 0
        LayerName = BandLayer6
      end
      object ppLabel107: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label57'
        AutoSize = False
        Caption = 'custo.fin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 182034
        mmTop = 19579
        mmWidth = 13229
        BandType = 0
        LayerName = BandLayer6
      end
      object ppLabel108: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label58'
        AutoSize = False
        Caption = 'preco.crm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 196321
        mmTop = 19579
        mmWidth = 16669
        BandType = 0
        LayerName = BandLayer6
      end
      object ppLabel109: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label59'
        AutoSize = False
        Caption = 'margem%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 246063
        mmTop = 19579
        mmWidth = 12171
        BandType = 0
        LayerName = BandLayer6
      end
      object ppLabel110: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label67'
        AutoSize = False
        Caption = 'tipo verba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 165894
        mmTop = 19579
        mmWidth = 15610
        BandType = 0
        LayerName = BandLayer6
      end
      object ppLabel111: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label70'
        AutoSize = False
        Caption = 'preco.var'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 212725
        mmTop = 19579
        mmWidth = 14817
        BandType = 0
        LayerName = BandLayer6
      end
      object ppLabel112: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label701'
        AutoSize = False
        Caption = 'preco.atac'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 228071
        mmTop = 19579
        mmWidth = 17198
        BandType = 0
        LayerName = BandLayer6
      end
      object ppLabel113: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label89'
        AutoSize = False
        Caption = 'codfuncinc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 117211
        mmTop = 19579
        mmWidth = 10054
        BandType = 0
        LayerName = BandLayer6
      end
      object ppLabel115: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label72'
        AutoSize = False
        Caption = 'cod.comprador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 258763
        mmTop = 19579
        mmWidth = 13494
        BandType = 0
        LayerName = BandLayer6
      end
      object ppLabel116: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label96'
        AutoSize = False
        Caption = 'comprador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 273051
        mmTop = 19579
        mmWidth = 9525
        BandType = 0
        LayerName = BandLayer6
      end
      object ppLabel118: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label118'
        AutoSize = False
        Caption = 'campanha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 13494
        mmTop = 19579
        mmWidth = 12965
        BandType = 0
        LayerName = BandLayer6
      end
      object ppLabel119: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label119'
        Caption = 'dtinicio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 96838
        mmTop = 19579
        mmWidth = 10583
        BandType = 0
        LayerName = BandLayer6
      end
      object ppLabel120: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label120'
        Caption = 'dtfim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 108479
        mmTop = 19579
        mmWidth = 7673
        BandType = 0
        LayerName = BandLayer6
      end
      object ppLabel121: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label121'
        AutoSize = False
        Caption = 'nomefunc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 128059
        mmTop = 19579
        mmWidth = 10054
        BandType = 0
        LayerName = BandLayer6
      end
      object ppLabel122: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label122'
        AutoSize = False
        Caption = 'codauxiliar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 55298
        mmTop = 19579
        mmWidth = 8996
        BandType = 0
        LayerName = BandLayer6
      end
      object ppLabel123: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label123'
        AutoSize = False
        Caption = 'qtestdisp'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 65088
        mmTop = 19579
        mmWidth = 8731
        BandType = 0
        LayerName = BandLayer6
      end
      object ppLabel124: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label124'
        AutoSize = False
        Caption = 'qtestdias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 75142
        mmTop = 19579
        mmWidth = 12700
        BandType = 0
        LayerName = BandLayer6
      end
      object ppLabel97: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label97'
        Caption = 'Relat'#243'rio de Campanha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 22
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8996
        mmLeft = 101071
        mmTop = 4763
        mmWidth = 85990
        BandType = 0
        LayerName = BandLayer6
      end
    end
    object ppDetailBand6: TppDetailBand
      Background1.Brush.Color = clSilver
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText69: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText2'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBRelCampanha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 41275
        mmTop = 265
        mmWidth = 12965
        BandType = 4
        LayerName = BandLayer6
      end
      object ppDBText74: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText15'
        DataField = 'CODPROD'
        DataPipeline = ppDBRelCampanha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 28575
        mmTop = 265
        mmWidth = 12435
        BandType = 4
        LayerName = BandLayer6
      end
      object ppDBText86: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText59'
        DataField = 'PERCDESCATAC'
        DataPipeline = ppDBRelCampanha
        DisplayFormat = '0.00 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 139436
        mmTop = 529
        mmWidth = 10848
        BandType = 4
        LayerName = BandLayer6
      end
      object ppDBText88: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText60'
        DataField = 'VLVERBAUNITARIO'
        DataPipeline = ppDBRelCampanha
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 151077
        mmTop = 529
        mmWidth = 13494
        BandType = 4
        LayerName = BandLayer6
      end
      object ppDBText92: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText61'
        DataField = 'CUSTOFIN'
        DataPipeline = ppDBRelCampanha
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 182034
        mmTop = 529
        mmWidth = 13229
        BandType = 4
        LayerName = BandLayer6
      end
      object ppDBText93: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText62'
        DataField = 'PVENDACRM'
        DataPipeline = ppDBRelCampanha
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 196321
        mmTop = 529
        mmWidth = 16669
        BandType = 4
        LayerName = BandLayer6
      end
      object ppDBText94: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText63'
        DataField = 'MARGEMFUTURA'
        DataPipeline = ppDBRelCampanha
        DisplayFormat = '0.00 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 246063
        mmTop = 529
        mmWidth = 12171
        BandType = 4
        LayerName = BandLayer6
      end
      object ppDBText95: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText67'
        DataField = 'TIPOVERBA'
        DataPipeline = ppDBRelCampanha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 165894
        mmTop = 529
        mmWidth = 15610
        BandType = 4
        LayerName = BandLayer6
      end
      object ppDBText96: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText72'
        DataField = 'PVENDA'
        DataPipeline = ppDBRelCampanha
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 212725
        mmTop = 529
        mmWidth = 14817
        BandType = 4
        LayerName = BandLayer6
      end
      object ppDBText97: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText73'
        DataField = 'PVENDAATAC'
        DataPipeline = ppDBRelCampanha
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 228071
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = BandLayer6
      end
      object ppDBText98: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText43'
        DataField = 'CODCOMPRADOR'
        DataPipeline = ppDBRelCampanha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 258763
        mmTop = 529
        mmWidth = 13494
        BandType = 4
        LayerName = BandLayer6
      end
      object ppDBText99: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText44'
        DataField = 'COMPRADOR'
        DataPipeline = ppDBRelCampanha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 273051
        mmTop = 529
        mmWidth = 9525
        BandType = 4
        LayerName = BandLayer6
      end
      object ppDBText100: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText9'
        DataField = 'CODCAMPANHACRM'
        DataPipeline = ppDBRelCampanha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 265
        mmWidth = 11113
        BandType = 4
        LayerName = BandLayer6
      end
      object ppDBText101: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText10'
        DataField = 'DESCRICAOCAMPANHACRM'
        DataPipeline = ppDBRelCampanha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 12171
        mmTop = 265
        mmWidth = 15875
        BandType = 4
        LayerName = BandLayer6
      end
      object ppDBText102: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText6'
        DataField = 'CODFILIAL'
        DataPipeline = ppDBRelCampanha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 88900
        mmTop = 529
        mmWidth = 7144
        BandType = 4
        LayerName = BandLayer6
      end
      object ppDBText103: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText7'
        DataField = 'DTINICIAL'
        DataPipeline = ppDBRelCampanha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3440
        mmLeft = 96838
        mmTop = 794
        mmWidth = 10583
        BandType = 4
        LayerName = BandLayer6
      end
      object ppDBText104: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText8'
        DataField = 'DTFINAL'
        DataPipeline = ppDBRelCampanha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3440
        mmLeft = 108479
        mmTop = 794
        mmWidth = 7673
        BandType = 4
        LayerName = BandLayer6
      end
      object ppDBText105: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText75'
        DataField = 'CODFUNCINCLUSAO'
        DataPipeline = ppDBRelCampanha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 117211
        mmTop = 529
        mmWidth = 10054
        BandType = 4
        LayerName = BandLayer6
      end
      object ppDBText106: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText85'
        DataField = 'NOME_GUERRA'
        DataPipeline = ppDBRelCampanha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 128059
        mmTop = 529
        mmWidth = 10054
        BandType = 4
        LayerName = BandLayer6
      end
      object ppDBText107: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText107'
        DataField = 'CODAUXILIAR'
        DataPipeline = ppDBRelCampanha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 55298
        mmTop = 529
        mmWidth = 8996
        BandType = 4
        LayerName = BandLayer6
      end
      object ppDBText108: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText108'
        DataField = 'QTESTDISP'
        DataPipeline = ppDBRelCampanha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 65088
        mmTop = 265
        mmWidth = 9790
        BandType = 4
        LayerName = BandLayer6
      end
      object ppDBText109: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText109'
        DataField = 'QTESTDIAS'
        DataPipeline = ppDBRelCampanha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelCampanha'
        mmHeight = 3704
        mmLeft = 75142
        mmTop = 265
        mmWidth = 12700
        BandType = 4
        LayerName = BandLayer6
      end
    end
    object ppSummaryBand6: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object raCodeModule6: TraCodeModule
    end
    object ppDesignLayers6: TppDesignLayers
      object ppDesignLayer6: TppDesignLayer
        UserName = 'BandLayer6'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object qrPrecoDiferenteFamilia: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT PCEMBALAGEM.CODAUXILIAR,'
      '       PCPRODUT.DESCRICAO,'
      '       NVL ('
      '           COLUNA_PRECO ('
      '               BUSCAPRECOS ('
      '                   PCEMBALAGEM.CODFILIAL,'
      '                   NVL ('
      '                       PKG_I9UTILITARIO.BUSCAPARAMETRO ('
      '                           PCEMBALAGEM.CODFILIAL,'
      '                           '#39'NUMREGIAOPADRAOVAREJO'#39'),'
      '                       '#39'1'#39'),'
      '                   PCEMBALAGEM.CODAUXILIAR,'
      '                   TRUNC (SYSDATE)),'
      '               '#39'PVENDA1'#39'),'
      '           0)'
      '           AS PVENDA,'
      '       PCEMBALAGEM.CODPROD'
      '  FROM PCEMBALAGEM, PCPRODUT'
      ' WHERE     PCEMBALAGEM.CODPROD = PCPRODUT.CODPROD'
      '       AND NVL (PCPRODUT.OBS2, '#39'X'#39') <> '#39'FL'#39
      '       AND PCEMBALAGEM.QTUNIT IN (SELECT MIN (QTUNIT)'
      '                                    FROM PCEMBALAGEM PE'
      
        '                                   WHERE     PE.CODPROD = PCEMBA' +
        'LAGEM.CODPROD'
      
        '                                         AND PE.DTINATIVO IS NUL' +
        'L)'
      '       AND PCEMBALAGEM.DTINATIVO IS NULL'
      '       AND PCEMBALAGEM.CODFILIAL = :CODFILIAL'
      '       AND PCEMBALAGEM.CODPROD IN (SELECT X.CODPROD'
      '                                     FROM PCPRODUT X'
      '                                    WHERE X.CODPRODPRINC ='
      
        '                                              (SELECT C.CODPRODP' +
        'RINC'
      '                                                 FROM PCPRODUT C'
      
        '                                                WHERE C.CODPROD ' +
        '= :CODPROD))'
      '       AND NVL ('
      '               COLUNA_PRECO ('
      '                   BUSCAPRECOS ('
      '                       PCEMBALAGEM.CODFILIAL,'
      '                       NVL ('
      '                           PKG_I9UTILITARIO.BUSCAPARAMETRO ('
      '                               PCEMBALAGEM.CODFILIAL,'
      '                               '#39'NUMREGIAOPADRAOVAREJO'#39'),'
      '                           '#39'1'#39'),'
      '                       PCEMBALAGEM.CODAUXILIAR,'
      '                       TRUNC (SYSDATE)),'
      '                   '#39'PVENDA1'#39'),'
      '               0) <>'
      '               (SELECT NVL ('
      '                           COLUNA_PRECO ('
      '                               BUSCAPRECOS ('
      '                                   Y.CODFILIAL,'
      '                                   NVL ('
      
        '                                       PKG_I9UTILITARIO.BUSCAPAR' +
        'AMETRO ('
      '                                           Y.CODFILIAL,'
      
        '                                           '#39'NUMREGIAOPADRAOVAREJ' +
        'O'#39'),'
      '                                       '#39'1'#39'),'
      '                                   Y.CODAUXILIAR,'
      '                                   TRUNC (SYSDATE)),'
      '                               '#39'PVENDA1'#39'),'
      '                           0)'
      '                           AS PVENDA'
      '                  FROM PCEMBALAGEM Y'
      '                 WHERE     Y.CODPROD = :CODPROD'
      '                       AND Y.QTUNIT IN (SELECT MIN (QTUNIT)'
      '                                          FROM PCEMBALAGEM PE'
      
        '                                         WHERE     PE.CODFILIAL ' +
        '= Y.CODFILIAL'
      
        '                                               AND PE.CODPROD = ' +
        'Y.CODPROD'
      
        '                                               AND PE.DTINATIVO ' +
        'IS NULL)'
      '                       AND Y.DTINATIVO IS NULL'
      '                       AND Y.CODFILIAL = :CODFILIAL'
      '                       AND ROWNUM = 1)')
    Left = 56
    Top = 488
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
  object cdsClientesDirecionados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 760
    Top = 224
    object cdsClientesDirecionadosCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object cdsClientesDirecionadosCGCENT: TStringField
      FieldName = 'CGCENT'
      Size = 40
    end
    object cdsClientesDirecionadosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
  end
  object dsClientesDirecionados: TDataSource
    DataSet = cdsClientesDirecionados
    Left = 760
    Top = 272
  end
end
