object dmConfiguracaoInbox: TdmConfiguracaoInbox
  OldCreateOrder = False
  Height = 645
  Width = 1042
  object VIEW_MERCAFACIL_CAT_PROFISSIONAIS: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE VIEW MERCAFACIL_CAT_PROFISSIONAIS ('
      '   ID_LOJA,'
      '   ID_CATEGORIA_PROFISSIONAL,'
      '   DESC_CATEGORIA_PROFISSIONAL )'
      'AS'
      'SELECT '
      #39'99'#39' AS "ID_LOJA",'
      'CODSETOR AS "ID_CATEGORIA_PROFISSIONAL",'
      'DESCRICAO AS "DESC_CATEGORIA_PROFISSIONAL"'
      'FROM PCSETOR'
      'ORDER BY CODSETOR')
    Left = 115
    Top = 107
  end
  object VIEW_MERCAFACIL_AGENDA_PROMOCOES: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE VIEW MERCAFACIL_AGENDA_PROMOCOES'
      '('
      '    ID_LOJA,'
      '    ID_PRODUTO,'
      '    DATA_INICIO,'
      '    DATA_TERMINO,'
      '    VALOR_DESCONTO,'
      '    MODALIDADE_DESCONTO,'
      '    VALOR_COM_DESCONTO,'
      '    VALOR_SEM_DESCONTO,'
      '    QUANTIDADE_PACK_VIRTUAL,'
      '    CLUBE_FIDELIDADE'
      ')'
      'AS'
      '    SELECT PCDESCONTOFIDELIDADE.CODFILIAL AS ID_LOJA,'
      '           PCDESCONTOFIDELIDADE.CODPROD AS ID_PRODUTO,'
      '           PCDESCONTOFIDELIDADE.DTINICIAL AS DATA_INICIO,'
      '           PCDESCONTOFIDELIDADE.DTFINAL AS DATA_TERMINO,'
      '           (  (COLUNA_PRECO (BUSCAPRECOS (PCEMBALAGEM.CODFILIAL,'
      
        '                                          NVL (PKG_I9UTILITARIO.' +
        'BUSCAPARAMETRO (PCEMBALAGEM.CODFILIAL, '#39'NUMREGIAOPADRAOVAREJO'#39'),' +
        ' '#39'1'#39'),'
      
        '                                          PCEMBALAGEM.CODAUXILIA' +
        'R,'
      '                                          TRUNC (SYSDATE)),'
      '                             '#39'PVENDA1'#39'))'
      '            - PCDESCONTOFIDELIDADE.PVENDACRM)'
      '               VALOR_DESCONTO,'
      '           '#39'1'#39' AS MODALIDADE_DESCONTO,'
      '           PCDESCONTOFIDELIDADE.PVENDACRM VALOR_COM_DESCONTO,'
      '           ( (COLUNA_PRECO (BUSCAPRECOS (PCEMBALAGEM.CODFILIAL,'
      
        '                                         NVL (PKG_I9UTILITARIO.B' +
        'USCAPARAMETRO (PCEMBALAGEM.CODFILIAL, '#39'NUMREGIAOPADRAOVAREJO'#39'), ' +
        #39'1'#39'),'
      
        '                                         PCEMBALAGEM.CODAUXILIAR' +
        ','
      '                                         TRUNC (SYSDATE)),'
      '                            '#39'PVENDA1'#39')))'
      '               VALOR_SEM_DESCONTO,'
      '           0 QUANTIDADE_PACK_VIRTUAL,'
      '           '#39'S'#39' CLUBE_FIDELIDADE'
      '      FROM PCDESCONTOFIDELIDADE, PCEMBALAGEM'
      '     WHERE     TRUNC (SYSDATE) BETWEEN DTINICIAL AND DTFINAL'
      
        '           AND PCDESCONTOFIDELIDADE.CODCLICONVENIO IN (SELECT CO' +
        'DCLICRMGERAL FROM PCCONSUM)'
      '           AND PCDESCONTOFIDELIDADE.CODCLI IS NULL'
      '           AND NVL (PCDESCONTOFIDELIDADE.PVENDACRM, 0) > 0'
      '           AND PCEMBALAGEM.QTUNIT = 1'
      
        '           AND PCEMBALAGEM.CODFILIAL = PCDESCONTOFIDELIDADE.CODF' +
        'ILIAL'
      
        '           AND PCEMBALAGEM.CODPROD = PCDESCONTOFIDELIDADE.CODPRO' +
        'D'
      
        '           AND PCEMBALAGEM.CODAUXILIAR IN (SELECT MIN (CODAUXILI' +
        'AR)'
      '                                             FROM PCEMBALAGEM PE'
      
        '                                            WHERE PE.CODPROD = P' +
        'CEMBALAGEM.CODPROD AND PE.DTINATIVO IS NULL)'
      '           AND PCEMBALAGEM.DTINATIVO IS NULL')
    Left = 123
    Top = 19
  end
  object VIEW_MERCAFACIL_CLIENTES: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE VIEW MERCAFACIL_CLIENTES ('
      '   ID_LOJA,'
      '   ID_CLIENTE,'
      '   CLUBE_FIDELIDADE,'
      '   TIPO,'
      '   ID_CATEGORIA_CLIENTE,'
      '   CPF_CNPJ,'
      '   NOME,'
      '   DATA_NASCIMENTO,'
      '   SEXO,'
      '   DATA_CADASTRO,'
      '   ID_LOJA_CADASTRO )'
      'AS'
      'SELECT'
      #39'99'#39' AS "ID_LOJA",'
      'PCCLIENT.CODCLI AS "ID_CLIENTE",'
      'CASE WHEN (PCCLIENT.NUMCARTAOFIDELIDADE IS NOT NULL)'
      'THEN '#39'S'#39' '
      'ELSE '#39'N'#39' '
      'END "CLUBE_FIDELIDADE",'
      'PCCLIENT.TIPOFJ AS "TIPO",'
      'PCCLIENT.CODREDE AS "ID_CATEGORIA_CLIENTE",'
      'PCCLIENT.CGCENT AS "CPF_CNPJ",'
      'PCCLIENT.CLIENTE AS "NOME",'
      'PCCLIENT.DTNASC AS "DATA_NASCIMENTO",'
      'PCCLIENT.SEXO AS "SEXO",'
      'PCCLIENT.DTCADASTRO AS "DATA_CADASTRO",'
      #39'99'#39' AS "ID_LOJA_CADASTRO"'
      'FROM PCCLIENT')
    Left = 115
    Top = 331
  end
  object VIEW_MERCAFACIL_CATEGORIA_PRODUTOS: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE VIEW MERCAFACIL_CATEGORIA_PRODUTOS ('
      '   ID_LOJA,'
      '   ID_CATEGORIA,'
      '   DESC_CATEGORIA,'
      '   ID_CATEGORIA_PAI )'
      'AS'
      'SELECT'
      #39'99'#39' AS "ID_LOJA",'
      'TO_CHAR(CODEPTO) AS "ID_CATEGORIA",'
      'DESCRICAO AS "DESC_CATEGORIA",'
      #39#39' AS "ID_CATEGORIA_PAI"'
      'FROM PCDEPTO'
      ''
      'UNION ALL'
      '--SECAO'
      'SELECT '#39'99'#39' AS "ID_LOJA",'
      '       PCSECAO.CODEPTO || '#39'.'#39' || PCSECAO.CODSEC AS ID_CATEGORIA,'
      '       PCSECAO.DESCRICAO AS DESC_CATEGORIA,'
      '       TO_CHAR(PCSECAO.CODEPTO) AS "ID_CATEGORIA_PAI"'
      'FROM PCDEPTO, PCSECAO'
      'WHERE PCDEPTO.CODEPTO = PCSECAO.CODEPTO'
      ''
      'UNION ALL'
      '--CATEGORIA'
      'SELECT '#39'99'#39' AS "ID_LOJA",'
      
        '       PCSECAO.CODEPTO || '#39'.'#39' || PCSECAO.CODSEC || '#39'.'#39' || PCCATE' +
        'GORIA.CODCATEGORIA AS ID_CATEGORIA,'
      '       PCCATEGORIA.CATEGORIA AS DESC_CATEGORIA,'
      
        '       PCSECAO.CODEPTO || '#39'.'#39' || PCSECAO.CODSEC AS "ID_CATEGORIA' +
        '_PAI"'
      '  FROM PCDEPTO, PCSECAO, PCCATEGORIA'
      ' WHERE PCDEPTO.CODEPTO = PCSECAO.CODEPTO'
      '   AND PCSECAO.CODSEC = PCCATEGORIA.CODSEC'
      ''
      'UNION ALL'
      '--SUBCATEGORIA'
      'SELECT '#39'99'#39' AS "ID_LOJA",'
      
        '       PCSECAO.CODEPTO || '#39'.'#39' || PCSECAO.CODSEC || '#39'.'#39' || PCCATE' +
        'GORIA.CODCATEGORIA || '#39'.'#39' || PCSUBCATEGORIA.CODSUBCATEGORIA AS I' +
        'D_CATEGORIA,'
      '       PCSUBCATEGORIA.SUBCATEGORIA AS DESC_CATEGORIA,'
      
        '       PCSECAO.CODEPTO || '#39'.'#39' || PCSECAO.CODSEC || '#39'.'#39' || PCCATE' +
        'GORIA.CODCATEGORIA AS "ID_CATEGORIA_PAI"'
      'FROM PCDEPTO, PCSECAO, PCCATEGORIA, PCSUBCATEGORIA'
      'WHERE PCDEPTO.CODEPTO = PCSECAO.CODEPTO'
      'AND PCSECAO.CODSEC = PCCATEGORIA.CODSEC'
      'AND PCCATEGORIA.CODCATEGORIA = PCSUBCATEGORIA.CODCATEGORIA')
    Left = 123
    Top = 251
  end
  object VIEW_MERCAFACIL_CATEGORIA_CLIENTES: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE VIEW MERCAFACIL_CATEGORIA_CLIENTES ('
      '   ID_LOJA,'
      '   ID_CATEGORIA_CLIENTE,'
      '   DESC_CATEGORIA_CLIENTE )'
      'AS'
      'SELECT'
      #39'99'#39' AS "ID_LOJA",'
      'CODREDE AS "ID_CATEGORIA_CLIENTE",'
      'DESCRICAO AS "DESC_CATEGORIA_CLIENTE" '
      'FROM PCREDECLIENTE'
      'ORDER BY CODREDE')
    Left = 115
    Top = 187
  end
  object VIEW_MERCAFACIL_DEVOLUCOES: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE VIEW MERCAFACIL_DEVOLUCOES ('
      '   ID_LOJA,'
      '   ID_VENDA,'
      '   NUMERO_CAIXA,'
      '   DATA_VENDA,'
      '   HORA_VENDA,'
      '   VALOR_TOTAL_SEM_DESCONTO,'
      '   VALOR_DESCONTO,'
      '   VALOR_TOTAL_COM_DESC,'
      '   ID_CLIENTE_1,'
      '   ID_CLIENTE_2 )'
      'AS'
      'SELECT DISTINCT '
      '        PCNFENT.CODFILIAL AS ID_LOJA'
      '       ,PCNFSAID.NUMTRANSVENDA AS ID_VENDA       '
      
        '       ,PCNFSAID.CAIXA AS NUMERO_CAIXA                          ' +
        '                   '
      '       ,PCNFSAID.DTSAIDA AS DATA_VENDA'
      
        '       ,(PCNFENT.HORALANC ||'#39':'#39'|| PCNFENT.MINUTOLANC) AS HORA_VE' +
        'NDA'
      '       ,PCNFSAID.VLTOTAL AS VALOR_TOTAL_SEM_DESCONTO'
      '       ,PCNFSAID.VLDESCONTO AS VALOR_DESCONTO'
      
        '       ,(PCNFSAID.VLTOTAL - PCNFSAID.VLDESCONTO) AS VALOR_TOTAL_' +
        'COM_DESC'
      '       ,PCNFSAID.CODCLI AS ID_CLIENTE_1'
      
        '       ,PCNFSAID.CODUSUR AS ID_CLIENTE_2                        ' +
        '                                                                ' +
        '                             '
      '  FROM PCNFENT, PCNFSAID, PCMOV             '
      ' WHERE PCNFENT.NUMTRANSENT = PCMOV.NUMTRANSENT'
      ' AND PCMOV.NUMTRANSDEV = PCNFSAID.NUMTRANSVENDA'
      ' AND PCNFENT.NUMTRANSVENDAORIG = PCNFSAID.NUMTRANSVENDA '
      
        ' AND (PCNFSAID.SERIE IN ('#39'CF'#39','#39'CP'#39','#39'SF'#39', '#39'MF'#39') OR DOCEMISSAO = '#39 +
        'CE'#39') '
      ' AND PCNFSAID.DTSAIDA >= TO_DATE('#39'01/01/2020'#39', '#39'DD/MM/YYYY'#39')'
      
        '  GROUP BY                                                      ' +
        '             '
      '        PCNFENT.CODFILIAL'
      '       ,PCNFSAID.NUMTRANSVENDA'
      '       ,PCNFSAID.CAIXA'
      '       ,PCNFSAID.DTSAIDA'
      '       ,(PCNFENT.HORALANC ||'#39':'#39'|| PCNFENT.MINUTOLANC)'
      '       ,PCNFSAID.VLTOTAL'
      '       ,PCNFSAID.VLDESCONTO'
      '       ,(PCNFSAID.VLTOTAL - PCNFSAID.VLDESCONTO)         '
      '       ,PCNFSAID.CODCLI'
      '       ,PCNFSAID.CODUSUR')
    Left = 115
    Top = 419
  end
  object VIEW_MERCAFACIL_CLIENTES_ENDERECOS: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE VIEW MERCAFACIL_CLIENTES_ENDERECOS ('
      '   ID_LOJA,'
      '   ID_CLIENTE,'
      '   TIPO_ENDERECO,'
      '   ENDERECO,'
      '   NUMERO,'
      '   COMPLEMENTO,'
      '   BAIRRO,'
      '   CODCIDADE,'
      '   CIDADE,'
      '   ESTADO,'
      '   CODPAIS,'
      '   PAIS,'
      '   CEPENT )'
      'AS'
      'SELECT   '#39'99'#39' AS "ID_LOJA",'
      '         pcclient.codcli AS "ID_CLIENTE",'
      '         '#39'2'#39' AS "TIPO_ENDERECO",'
      '         pcclient.enderent AS "ENDERECO",'
      '         pcclient.numeroent AS "NUMERO",'
      '         pcclient.complementoent AS "COMPLEMENTO",'
      '         pcclient.bairroent AS "BAIRRO",'
      '         pcclient.codcidade AS "CODCIDADE",'
      '         pcclient.municent AS "CIDADE",'
      '         pcclient.estent AS "ESTADO",'
      '         pcclient.codpais AS "CODPAIS",'
      '                  pcclient.paisent AS "PAIS",'
      '         pcclient.cepent'
      '  FROM   pcclient'
      ' WHERE   0 = 0')
    Left = 371
    Top = 19
  end
  object VIEW_MERCAFACIL_CLIENTES_CONTATOS: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE VIEW MERCAFACIL_CLIENTES_CONTATOS ('
      '   ID_LOJA,'
      '   ID_CLIENTE,'
      '   TIPO_MOBILIDADE,'
      '   TIPO_CONTATO,'
      '   CONTATO )'
      'AS'
      'SELECT'
      #39'99'#39' AS "ID_LOJA",'
      'PCCLIENT.CODCLI AS "ID_CLIENTE",'
      #39'1'#39' AS "TIPO_MOBILIDADE",'
      #39'1'#39' AS "TIPO_CONTATO",'
      'PCCLIENT.EMAIL AS "CONTATO"'
      'FROM PCCLIENT'
      ''
      'UNION ALL'
      ''
      'SELECT'
      #39'99'#39' AS "ID_LOJA",'
      'PCCLIENT.CODCLI AS "ID_CLIENTE",'
      #39'2'#39' AS "TIPO_MOBILIDADE",'
      #39'1'#39' AS "TIPO_CONTATO",'
      'PCCLIENT.TELCELENT AS "CONTATO"'
      'FROM PCCLIENT'
      ''
      'UNION ALL'
      ''
      'SELECT'
      #39'99'#39' AS "ID_LOJA",'
      'PCCLIENT.CODCLI AS "ID_CLIENTE",'
      #39'3'#39' AS "TIPO_MOBILIDADE",'
      #39'1'#39' AS "TIPO_CONTATO",'
      'PCCLIENT.TELCELENT AS "CONTATO"'
      'FROM PCCLIENT')
    Left = 115
    Top = 579
  end
  object VIEW_MERCAFACIL_DEVOLUCOES_ITENS: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      ''
      'CREATE OR REPLACE VIEW MERCAFACIL_DEVOLUCOES_ITENS ('
      '   ID_LOJA,'
      '   ID_VENDA,'
      '   NUMERO_CAIXA,'
      '   ID_PRODUTO,'
      '   QUANTIDADE,'
      '   VALOR_UNITARIO,'
      '   VALOR_TOTAL_SEM_DESC,'
      '   VALOR_DESCONTO,'
      '   VALOR_TOTAL_COM_DESC,'
      '   ID_PROFISSIONAL_1 )'
      'AS'
      'SELECT '
      'PCMOV.codfilial AS ID_LOJA,'
      'PCNFSAID.NUMTRANSVENDA AS ID_VENDA,'
      'PCNFSAID.CAIXA AS NUMERO_CAIXA,'
      'PCMOV.CODPROD AS ID_PRODUTO,'
      'PCMOV.QT AS QUANTIDADE,'
      'PCMOV.PTABELA AS VALOR_UNITARIO,'
      '(PCMOV.PTABELA * PCMOV.QT) AS VALOR_TOTAL_SEM_DESC,'
      '(PCMOV.PTABELA - PCMOV.PUNIT) AS VALOR_DESCONTO,'
      '(PCMOV.PUNIT * PCMOV.QT) AS VALOR_TOTAL_COM_DESC,'
      'PCMOV.CODUSUR AS ID_PROFISSIONAL_1'
      'FROM PCMOV, PCNFENT, PCPRODUT, PCNFSAID'
      'WHERE PCMOV.NUMTRANSENT = PCNFENT.NUMTRANSENT'
      'AND PCNFSAID.NUMPED = PCMOV.NUMPED'
      'AND PCNFSAID.DTSAIDA >= TO_DATE('#39'01/01/2020'#39', '#39'DD/MM/YYYY'#39')'
      'AND PCPRODUT.CODPROD = PCMOV.CODPROD')
    Left = 115
    Top = 499
  end
  object VIEW_MERCAFACIL_LOJAS: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE VIEW MERCAFACIL_LOJAS ('
      '   ID,'
      '   NOME,'
      '   CNPJ,'
      '   ENDERECO,'
      '   NUMERO,'
      '   COMPLEMENTO,'
      '   BAIRRO,'
      '   CIDADE,'
      '   ESTADO,'
      '   CEP,'
      '   FONE1,'
      '   FONE2,'
      '   EMAIL,'
      '   RESPONSAVEL )'
      'AS'
      'SELECT'
      'PCFILIAL.CODIGO AS "ID",'
      'PCFILIAL.RAZAOSOCIAL AS "NOME",'
      'PCFILIAL.CGC AS "CNPJ",'
      'PCFILIAL.ENDERECO AS "ENDERECO",'
      'PCFILIAL.NUMERO AS "NUMERO",'
      'PCFILIAL.COMPLEMENTOENDERECO AS "COMPLEMENTO",'
      'PCFILIAL.BAIRRO AS "BAIRRO",'
      'PCFILIAL.CIDADE AS "CIDADE",'
      'PCFILIAL.UF AS "ESTADO",'
      'PCFILIAL.CEP AS "CEP",'
      'PCFILIAL.TELEFONE AS "FONE1",'
      'PCFILIAL.TELEFONE AS "FONE2",'
      'PCFILIAL.EMAIL AS "EMAIL",'
      #39#39' AS "RESPONSAVEL"'
      'FROM PCFILIAL'
      'WHERE PCFILIAL.CODIGO NOT IN ('#39'99'#39')'
      'ORDER BY PCFILIAL.CODIGO')
    Left = 371
    Top = 99
  end
  object VIEW_MERCAFACIL_PRODUTOS: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE VIEW MERCAFACIL_PRODUTOS ('
      '   ID_LOJA,'
      '   ID_CATEGORIA_PRODUTO,'
      '   CODIGO_BARRAS_PRODUTO,'
      '   ID_PRODUTO,'
      '   DESC_PRODUTO,'
      '   UNIDADE_PRODUTO )'
      'AS'
      'SELECT'
      'PCPRODFILIAL.CODFILIAL AS "ID_LOJA",'
      
        'PCPRODUT.CODEPTO || '#39'.'#39' || PCPRODUT.CODSEC || '#39'.'#39' || PCPRODUT.CO' +
        'DCATEGORIA || '#39'.'#39' || PCPRODUT.CODSUBCATEGORIA AS "ID_CATEGORIA_P' +
        'RODUTO",'
      'PCEMBALAGEM.CODAUXILIAR AS "CODIGO_BARRAS_PRODUTO",'
      'PCPRODUT.CODPROD AS "ID_PRODUTO",'
      'PCPRODUT.DESCRICAO AS "DESC_PRODUTO",'
      'SUBSTR(PCPRODUT.EMBALAGEM,0, 2) AS "UNIDADE_PRODUTO"'
      'FROM PCPRODUT, PCPRODFILIAL, PCEMBALAGEM'
      'WHERE PCPRODUT.CODPROD = PCPRODFILIAL.CODPROD'
      'AND PCEMBALAGEM.CODPROD = PCPRODUT.CODPROD'
      'AND PCEMBALAGEM.CODFILIAL = PCPRODFILIAL.CODFILIAL'
      'AND PCEMBALAGEM.QTUNIT = 1')
    Left = 371
    Top = 179
  end
  object VIEW_MERCAFACIL_PROFISSIONAIS: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE VIEW MERCAFACIL_PROFISSIONAIS ('
      '   ID_LOJA,'
      '   ID_PROFISSIONAL,'
      '   ID_CATEGORIA_PROFISSIONAL,'
      '   CPF,'
      '   NOME,'
      '   DATA_NASCIMENTO,'
      '   SEXO,'
      '   DATA_CADASTRO )'
      'AS'
      'SELECT '
      'PCUSUARI.CODFILIAL AS "ID_LOJA",'
      'PCUSUARI.CODUSUR AS "ID_PROFISSIONAL",'
      'PCEMPR.CODSETOR AS "ID_CATEGORIA_PROFISSIONAL",'
      'PCEMPR.CPF AS "CPF",'
      'PCEMPR.NOME AS "NOME",'
      'PCEMPR.DTNASC AS "DATA_NASCIMENTO",'
      'PCEMPR.SEXO AS "SEXO",'
      'PCEMPR.DTINICIO AS "DATA_CADASTRO"'
      ''
      'FROM PCUSUARI, PCEMPR'
      'WHERE PCUSUARI.CODUSUR = PCEMPR.CODUSUR')
    Left = 371
    Top = 251
  end
  object VIEW_MERCAFACIL_VENDA_PAG: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE VIEW MERCAFACIL_VENDA_PAG ('
      '   ID_LOJA,'
      '   ID_VENDA,'
      '   NUMERO_CAIXA,'
      '   ID_FORMA_PGTO,'
      '   DESC_FORMA_PGTO,'
      '   NUMERO_PARCELAS,'
      '   VALOR,'
      '   VALOR_TOTAL_PAGO,'
      '   VALOR_DESCONTO )'
      'AS'
      'SELECT '
      'PCPREST.CODFILIAL AS "ID_LOJA",'
      'PCPREST.NUMPED AS "ID_VENDA",'
      'PCPREST.NUMCHECKOUT AS "NUMERO_CAIXA",'
      'PCPREST.CODCOB AS "ID_FORMA_PGTO",'
      
        '(SELECT MAX(PCCOB.COBRANCA) FROM PCCOB WHERE PCCOB.CODCOB = PCPR' +
        'EST.CODCOB) AS "DESC_FORMA_PGTO",'
      
        '(SELECT COUNT(PCPREST.VALOR) FROM PCPREST COB WHERE COB.NUMPED =' +
        ' PCPREST.NUMPED) AS "NUMERO_PARCELAS",'
      'PCPREST.VALOR,'
      
        '(SELECT SUM(ROUND(PCPREST.VALOR,2)) FROM PCPREST COB WHERE COB.N' +
        'UMPED = PCPREST.NUMPED) AS "VALOR_TOTAL_PAGO",'
      'NVL(PCPREST.VALORDESC,0) AS "VALOR_DESCONTO"'
      'FROM PCPREST'
      'WHERE 0 = 0'
      'AND PCPREST.DTCANCEL IS NULL '
      'AND PCPREST.DTEMISSAO >= TO_DATE('#39'01/01/2020'#39', '#39'DD/MM/YYYY'#39')'
      'AND PCPREST.CODCOB NOT IN ('#39'DESD'#39')'
      'AND PCPREST.CODCOBORIG IN ('#39'CARC'#39', '#39'CARD'#39', '#39'D'#39')')
    Left = 363
    Top = 331
  end
  object VIEW_MERCAFACIL_VENDAS: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE VIEW MERCAFACIL_VENDAS ('
      '   ID_LOJA,'
      '   ID_VENDA,'
      '   CUPOM,'
      '   NUMERO_CAIXA,'
      '   ID_PROFISSIONAL,'
      '   DATA_VENDA,'
      '   HORA_VENDA,'
      '   VALOR_TOTAL_SEM_DESC,'
      '   VALOR_DESCONTO,'
      '   VALOR_DESCONTO_ITENS,'
      '   VALOR_TOTAL_COM_DESC,'
      '   ID_CLIENTE,'
      '   VALOR_LUCRO )'
      'AS'
      'SELECT PCPEDC.CODFILIAL AS "ID_LOJA",'
      '       PCPEDC.NUMPED AS "ID_VENDA",'
      '       NVL(PCPEDC.NUMCUPOM, PCPEDC.NUMNOTA) AS "CUPOM",'
      '       PCPEDC.NUMCAIXA AS "NUMERO_CAIXA",'
      '       PCPEDC.CODUSUR AS "ID_PROFISSIONAL",'
      '       PCPEDC.DATA AS "DATA_VENDA",'
      '       TO_CHAR (TO_DATE (   PCPEDC.DATA'
      '                         || '#39' '#39
      '                         || LPAD (PCPEDC.HORAFAT,'
      '                                  2,'
      '                                  0)'
      '                         || '#39':'#39
      '                         || LPAD (PCPEDC.MINUTOFAT,'
      '                                  2,'
      '                                  0),'
      '                         '#39'dd/MM/yyyy hh24:mi'#39'),'
      '                '#39'hh24:mi'#39')'
      '           AS "HORA_VENDA",'
      '       NVL (PCPEDC.VLTABELA, 0) AS "VALOR_TOTAL_SEM_DESC",'
      
        '       NVL (PCPEDC.VLTABELA, 0) -   NVL(PCPEDC.VLATEND, NVL (PCP' +
        'EDC.VLTOTAL, 0)) AS "VALOR_DESCONTO",'
      '       0 AS "VALOR_DESCONTO_ITENS",'
      
        '       NVL(PCPEDC.VLATEND, NVL (PCPEDC.VLTOTAL, 0)) AS "VALOR_TO' +
        'TAL_COM_DESC",'
      '       PCPEDC.CODCLI AS "ID_CLIENTE",'
      
        '       (NVL(PCPEDC.VLATEND, NVL (PCPEDC.VLTOTAL, 0)) - PCPEDC.VL' +
        'CUSTOCONT) AS "VALOR_LUCRO"'
      'FROM PCPEDC'
      'WHERE PCPEDC.CONDVENDA = '#39'1'#39
      'AND PCPEDC.DATA >= TO_DATE('#39'01/01/2020'#39', '#39'DD/MM/YYYY'#39')'
      'AND PCPEDC.DTCANCEL IS NULL'
      'AND PCPEDC.POSICAO = '#39'F'#39
      'ORDER BY PCPEDC.CODFILIAL,'
      '         PCPEDC.NUMPED')
    Left = 363
    Top = 403
  end
  object VIEW_MERCAFACIL_VENDAS_ITENS: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE VIEW MERCAFACIL_VENDAS_ITENS ('
      '   ID_LOJA,'
      '   ID_VENDA,'
      '   DATA_HORA,'
      '   ID_PRODUTO,'
      '   QUANTIDADE,'
      '   VALOR_UNITARIO,'
      '   VALOR_TOTAL_SEM_DESC,'
      '   VALOR_DESCONTO,'
      '   VALOR_TOTAL_COM_DESC,'
      '   VALOR_LUCRO )'
      'AS'
      'SELECT PCPEDC.CODFILIAL AS "ID_LOJA",'
      '       PCPEDC.NUMPED AS "ID_VENDA",'
      '       PCPEDC.DATA AS "DATA_HORA",'
      '       PCPEDI.CODPROD AS "ID_PRODUTO",'
      '       SUM (PCPEDI.QT) AS "QUANTIDADE",'
      '       MAX (PCPEDI.PVENDA) AS "VALOR_UNITARIO",'
      '       ROUND (SUM (PCPEDI.PTABELA * QT),'
      '              2)'
      '           AS "VALOR_TOTAL_SEM_DESC",'
      '       ROUND (SUM (PCPEDI.PTABELA - PCPEDI.PVENDA),'
      '              2)'
      '           AS "VALOR_DESCONTO",'
      '       ROUND (SUM (PCPEDI.PVENDA * PCPEDI.QT),'
      '              2)'
      '           AS "VALOR_TOTAL_COM_DESC",'
      '       ROUND (SUM (PCPEDI.PVENDA - PCPEDI.VLCUSTOFIN),'
      '              2)'
      '           AS "VALOR_LUCRO"'
      'FROM PCPEDC,'
      '     PCPEDI'
      'WHERE     PCPEDC.NUMPED = PCPEDI.NUMPED'
      '      AND PCPEDC.DATA = PCPEDI.DATA'
      '      AND PCPEDC.CONDVENDA IN ('#39'1'#39', '#39'5'#39')'
      '      AND PCPEDC.DATA >= TO_DATE('#39'01/01/2020'#39', '#39'DD/MM/YYYY'#39')'
      '      AND PCPEDC.DTCANCEL IS NULL'
      'GROUP BY PCPEDC.CODFILIAL,'
      '         PCPEDC.NUMPED,'
      '         PCPEDI.CODPROD,'
      '         PCPEDC.CODUSUR,'
      '         PCPEDC.DATA,'
      '         PCPEDC.VLTOTAL,'
      '         NVL (PCPEDC.VLDESCONTO, 0),'
      '         PCPEDC.CODCLI'
      'ORDER BY PCPEDC.CODFILIAL,'
      '         PCPEDC.NUMPED')
    Left = 363
    Top = 483
  end
  object SEQ_I9PROXNUMCLI: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      '')
    Left = 595
    Top = 19
  end
  object qrAux: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT MAX(CODCLI) + 1 AS ULTCODCLI FROM PCCLIENT')
    Left = 723
    Top = 27
  end
  object qrCriaClienteCRMPadrao: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'DECLARE'
      '    VCLIENTE   PCCLIENT%ROWTYPE;'
      '    VMSG       VARCHAR2 (50);'
      'BEGIN'
      '    SELECT *'
      '      INTO VCLIENTE'
      '      FROM PCCLIENT'
      '     WHERE CODCLI = 1;'
      ''
      '    VMSG := '#39'CLIENTE PADRAO CRM VAREJO'#39';'
      ''
      
        '    SELECT SEQ_I9PROXNUMCLI.NEXTVAL INTO VCLIENTE.CODCLI FROM DU' +
        'AL;'
      ''
      '    VCLIENTE.CODCLIPRINC := VCLIENTE.CODCLI;'
      '    VCLIENTE.CGCENT := '#39'999999999999999'#39';'
      '    VCLIENTE.CLIENTE := VMSG;'
      '    VCLIENTE.ENDERENT := VMSG;'
      '    VCLIENTE.ENDERCOB := VMSG;'
      '    VCLIENTE.BAIRROENT := VMSG;'
      ''
      '    INSERT INTO PCCLIENT'
      '    VALUES VCLIENTE;'
      ''
      '    UPDATE PCCONSUM'
      '       SET CODCLICRMGERAL = VCLIENTE.CODCLI;'
      ''
      '    VMSG := '#39'CLIENTE PADRAO CRM ATACADO'#39';'
      ''
      
        '    SELECT SEQ_I9PROXNUMCLI.NEXTVAL INTO VCLIENTE.CODCLI FROM DU' +
        'AL;'
      ''
      '    VCLIENTE.CODCLIPRINC := VCLIENTE.CODCLI;'
      '    VCLIENTE.CGCENT := '#39'888888888888888'#39';'
      '    VCLIENTE.CLIENTE := VMSG;'
      '    VCLIENTE.ENDERENT := VMSG;'
      '    VCLIENTE.ENDERCOB := VMSG;'
      '    VCLIENTE.BAIRROENT := VMSG;'
      ''
      '    INSERT INTO PCCLIENT'
      '    VALUES VCLIENTE;'
      ''
      '    UPDATE PCCONSUM'
      '       SET CODCLICRMATACADO = VCLIENTE.CODCLI;'
      ''
      '    COMMIT;'
      'END;')
    Left = 595
    Top = 91
  end
  object TRG_I9CRM_PCPRECOPROM: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE TRIGGER trg_i9crm_pcprecoprom'
      ' BEFORE'
      '  INSERT OR UPDATE'
      ' ON pcprecoprom'
      'REFERENCING NEW AS NEW OLD AS OLD'
      ' FOR EACH ROW'
      'DECLARE'
      '    VCOUNT   NUMBER (10);    '
      'BEGIN'
      ''
      '    IF  nvl( :NEW.FRENTECX , '#39'N'#39') = '#39'S'#39' then'
      ''
      '    SELECT COUNT (*)'
      '      INTO VCOUNT'
      '      FROM PCDESCONTOFIDELIDADE'
      
        '     WHERE     PCDESCONTOFIDELIDADE.CODFILIAL IN (SELECT DISTINC' +
        'T CODFILIAL'
      
        '                                                    FROM PCPARAM' +
        'FILIAL'
      
        '                                                   WHERE NOME LI' +
        'KE '#39'NUMREGIAOPADRAOVAREJO'#39' AND VALOR = :NEW.NUMREGIAO AND CODFIL' +
        'IAL <> '#39'99'#39')'
      '           AND PCDESCONTOFIDELIDADE.CODPROD IN (SELECT Y.CODPROD'
      
        '                                                  FROM PCPRODUT ' +
        'Y'
      
        '                                                 WHERE Y.CODPROD' +
        'PRINC IN (SELECT X.CODPRODPRINC'
      
        '                                                                ' +
        '            FROM PCPRODUT X'
      
        '                                                                ' +
        '           WHERE X.CODPROD = :NEW.CODPROD))           '
      '           AND NVL (PCDESCONTOFIDELIDADE.PERCDESCONTO, 0) > 0'
      '           AND PCDESCONTOFIDELIDADE.DTEXCLUSAO IS NULL'
      
        '           AND PCDESCONTOFIDELIDADE.DTFINAL >= TRUNC (SYSDATE)  ' +
        '         '
      
        '           AND (   TRUNC (PCDESCONTOFIDELIDADE.DTINICIAL) BETWEE' +
        'N TRUNC (:NEW.DTINICIOVIGENCIA) AND TRUNC (:NEW.DTFIMVIGENCIA)'
      
        '                OR TRUNC (PCDESCONTOFIDELIDADE.DTFINAL) BETWEEN ' +
        'TRUNC (:NEW.DTINICIOVIGENCIA) AND TRUNC (:NEW.DTFIMVIGENCIA)'
      
        '                OR TRUNC (:NEW.DTINICIOVIGENCIA) BETWEEN TRUNC (' +
        'PCDESCONTOFIDELIDADE.DTINICIAL) AND TRUNC (PCDESCONTOFIDELIDADE.' +
        'DTFINAL)'
      
        '                OR TRUNC (:NEW.DTFIMVIGENCIA) BETWEEN TRUNC (PCD' +
        'ESCONTOFIDELIDADE.DTINICIAL) AND TRUNC (PCDESCONTOFIDELIDADE.DTF' +
        'INAL));'
      ''
      '    IF VCOUNT > 0'
      '    THEN'
      
        '        RAISE_APPLICATION_ERROR (-20001, '#39'****ERRO - J'#193' EXISTE U' +
        'MA CAMPANHA DO CLUBE DE DESCONTOS CADASTRADA - PRODUTO: '#39'||:NEW.' +
        'CODPROD||'#39' ****'#39');'
      '    END IF;'
      '    '
      '    end if;'
      '    '
      'END;')
    Left = 928
    Top = 552
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NEW'
        Value = nil
      end>
  end
  object TRG_I9PRECOCRM_PCTABPR: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE TRIGGER TRG_I9PRECOCRM_PCTABPR'
      ' BEFORE'
      '   UPDATE OF PVENDA, PVENDAATAC'
      ' ON PCTABPR'
      'REFERENCING NEW AS NEW OLD AS OLD'
      ' FOR EACH ROW'
      'DECLARE'
      '  VSMAQUINA     VARCHAR2(80);'
      '  VSUSUARIO     VARCHAR2(80);'
      '  VSPROGRAMA    VARCHAR2(80);'
      'BEGIN'
      ''
      
        '  VSMAQUINA  := SUBSTR(SYS_CONTEXT('#39'USERENV'#39', '#39'TERMINAL'#39'), 1, 80' +
        ');'
      
        '  VSUSUARIO  := SUBSTR(SYS_CONTEXT('#39'USERENV'#39', '#39'OS_USER'#39'), 1, 80)' +
        ';'
      '  VSPROGRAMA := SUBSTR(SYS_CONTEXT('#39'USERENV'#39', '#39'MODULE'#39'), 1, 80);'
      ''
      '  IF VSPROGRAMA IS NULL THEN'
      '    VSPROGRAMA := '#39'Client do oracle desatualizado'#39';'
      '  END IF;'
      ''
      
        '  IF ( :NEW.PVENDA <> NVL(:OLD.PVENDA,0) ) OR ( :NEW.PVENDAATAC ' +
        '<> NVL(:OLD.PVENDAATAC,0) ) '
      '  THEN'
      ''
      '    FOR REG IN (SELECT'
      '                DISTINCT CODFILIAL'
      '                FROM PCPARAMFILIAL'
      '                WHERE NOME LIKE '#39'NUMREGIAOPADRAOVAREJO'#39
      '                AND VALOR = :NEW.NUMREGIAO'
      '                AND CODFILIAL <> '#39'99'#39')'
      '    LOOP'
      
        '        PKG_I9CLUBECRM.RECALCULARPRECOCRM(REG.CODFILIAL, :NEW.CO' +
        'DPROD, :NEW.PVENDA, :NEW.PVENDAATAC);'
      '    END LOOP;'
      ''
      '  END IF;'
      ''
      'END;')
    Left = 928
    Top = 488
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NEW'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OLD'
        Value = nil
      end>
  end
  object TRG_I9CRM_PCOFERTAPROGRAMADA: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE TRIGGER TRG_I9CRM_PCOFERTAPROGRAMADA'
      '    BEFORE INSERT OR UPDATE'
      '    ON PCOFERTAPROGRAMADAC'
      '    REFERENCING NEW AS NEW OLD AS OLD'
      '    FOR EACH ROW'
      'DECLARE'
      '    VCOUNT       NUMBER (10);'
      '    VCOUNTTEMP   NUMBER (10);'
      '    VCODAUXILIAR NUMBER(20);'
      'BEGIN'
      '    VCOUNT := 0;'
      ''
      ''
      '    FOR REG IN (SELECT CODAUXILIAR'
      '                  FROM PCOFERTAPROGRAMADAI'
      '                 WHERE CODOFERTA = :NEW.CODOFERTA)'
      '    LOOP'
      '        SELECT COUNT (*)'
      '          INTO VCOUNTTEMP'
      '          FROM PCDESCONTOFIDELIDADE'
      
        '         WHERE     PCDESCONTOFIDELIDADE.CODFILIAL = :NEW.CODFILI' +
        'AL'
      
        '               AND PCDESCONTOFIDELIDADE.CODPROD IN (SELECT Y.COD' +
        'PROD'
      
        '                                                      FROM PCPRO' +
        'DUT Y'
      
        '                                                     WHERE Y.COD' +
        'PRODPRINC IN (SELECT X.CODPRODPRINC'
      
        '                                                                ' +
        '                FROM PCPRODUT X'
      
        '                                                                ' +
        '               WHERE X.CODPROD ='
      
        '                                                                ' +
        '                         (SELECT CODPROD'
      
        '                                                                ' +
        '                            FROM PCEMBALAGEM'
      
        '                                                                ' +
        '                           WHERE PCEMBALAGEM.CODFILIAL = :NEW.CO' +
        'DFILIAL AND PCEMBALAGEM.CODAUXILIAR = REG.CODAUXILIAR)))'
      
        '               AND NVL (PCDESCONTOFIDELIDADE.PERCDESCONTO, 0) > ' +
        '0'
      '               AND PCDESCONTOFIDELIDADE.DTEXCLUSAO IS NULL'
      
        '               AND PCDESCONTOFIDELIDADE.DTFINAL >= TRUNC (SYSDAT' +
        'E)'
      
        '               AND (   TRUNC (PCDESCONTOFIDELIDADE.DTINICIAL) BE' +
        'TWEEN TRUNC (:NEW.DTINICIAL) AND TRUNC  (:NEW.DTFINAL)'
      
        '                    OR TRUNC (PCDESCONTOFIDELIDADE.DTFINAL) BETW' +
        'EEN TRUNC (:NEW.DTINICIAL) AND TRUNC (:NEW.DTFINAL)'
      
        '                    OR TRUNC (:NEW.DTINICIAL) BETWEEN TRUNC (PCD' +
        'ESCONTOFIDELIDADE.DTINICIAL) AND TRUNC (PCDESCONTOFIDELIDADE.DTF' +
        'INAL)'
      
        '                    OR TRUNC (:NEW.DTFINAL) BETWEEN TRUNC (PCDES' +
        'CONTOFIDELIDADE.DTINICIAL) AND TRUNC (PCDESCONTOFIDELIDADE.DTFIN' +
        'AL));'
      ''
      '        VCOUNT := (VCOUNT + VCOUNTTEMP);'
      '        VCODAUXILIAR := REG.CODAUXILIAR;'
      '        '
      '    END LOOP;'
      ''
      ''
      ''
      '    IF VCOUNT > 0'
      '    THEN'
      
        '        RAISE_APPLICATION_ERROR (-20001, '#39'****ERRO - J'#193' EXISTE U' +
        'MA CAMPANHA DO CLUBE DE DESCONTOS CADASTRADA - PRODUTO: '#39' || VCO' +
        'DAUXILIAR || '#39' ****'#39');'
      '    END IF;'
      'END;')
    Left = 928
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NEW'
        Value = nil
      end>
  end
  object TRG_I9PRECOCRM_PCEMBALAGEM: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'create or replace TRIGGER TRG_I9PRECOCRM_PCEMBALAGEM'
      '    BEFORE UPDATE OF PVENDA, PVENDAATAC'
      '    ON PCEMBALAGEM'
      '    REFERENCING NEW AS NEW OLD AS OLD'
      '    FOR EACH ROW'
      'BEGIN'
      
        '    IF ((:NEW.PVENDA <> NVL (:OLD.PVENDA, 0)) OR (:NEW.PVENDAATA' +
        'C <> NVL (:OLD.PVENDAATAC, 0)))'
      '    AND (:NEW.PVENDA > 0)'
      '    THEN'
      '        PKG_I9CLUBECRM.RECALCULARPRECOCRM (:NEW.CODFILIAL,'
      '                                           :NEW.CODPROD,'
      '                                           :NEW.PVENDA,'
      '                                           :NEW.PVENDAATAC);'
      '    END IF;'
      'END;')
    Left = 928
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NEW'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OLD'
        Value = nil
      end>
  end
end
