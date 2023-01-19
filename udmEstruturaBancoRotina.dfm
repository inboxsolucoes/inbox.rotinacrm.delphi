object dmEstruturaBancoRotina: TdmEstruturaBancoRotina
  OldCreateOrder = False
  Height = 598
  Width = 1165
  object I9APLICVERBA_CREATE: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE '
      'PROCEDURE I9_APLICVERBA (P_NUMVERBA IN NUMBER,'
      '                            P_CODPROD  IN NUMBER,'
      '                            P_VALOR    IN NUMBER,'
      '                            P_QTDE     IN NUMBER,'
      '                            P_DTINICIO IN DATE,'
      '                            P_DTFIM    IN DATE,'
      '                            P_CODFUNC IN NUMBER,'
      '                            RETORNO OUT VARCHAR2) IS'
      '  APLICVERBA             PCAPLICVERBA%ROWTYPE;'
      '  APLICVERBAI            PCAPLICVERBAI%ROWTYPE;'
      '  LANC                   PCLANC%ROWTYPE;'
      '  VERBA                  PCVERBA%ROWTYPE;'
      'BEGIN'
      ''
      '    SELECT NVL(PROXNUMAPLIC,1) PROXNUMAPLIC'
      '      INTO APLICVERBAI.NUMAPLIC'
      '      FROM PCCONSUM FOR UPDATE;'
      ''
      '    UPDATE PCCONSUM'
      '       SET PROXNUMAPLIC = NVL(PROXNUMAPLIC,1) + 1;'
      ''
      ''
      '    SELECT NVL(PROXNUMLANC,1) PROXNUMLANC'
      '      INTO LANC.RECNUM'
      '      FROM PCCONSUM FOR UPDATE;'
      ''
      '    UPDATE PCCONSUM'
      '       SET PROXNUMLANC = NVL(PROXNUMLANC,1) + 1;'
      ''
      '    COMMIT;'
      ''
      '    SELECT *'
      '      INTO VERBA'
      '      FROM PCVERBA'
      '     WHERE PCVERBA.NUMVERBA = P_NUMVERBA;'
      ''
      '    APLICVERBAI.CODFILIAL:= VERBA.CODFILIAL;'
      '    APLICVERBAI.NUMVERBA := VERBA.NUMVERBA;'
      '    APLICVERBAI.CODPROD  := P_CODPROD;'
      '    APLICVERBAI.DTAPLIC  := TRUNC(SYSDATE);'
      '    APLICVERBAI.CODCONTA := VERBA.CODCONTA;'
      ''
      '    SELECT QTESTGER'
      '      INTO APLICVERBAI.QTESTGER'
      '      FROM PCEST'
      '     WHERE PCEST.CODFILIAL = VERBA.CODFILIAL'
      '       AND PCEST.CODPROD = P_CODPROD;'
      ''
      '    APLICVERBAI.VLAPLIC  := P_VALOR;'
      '    APLICVERBAI.QTVENDA  := P_QTDE;'
      '    APLICVERBAI.DTINICIOVIGENCIA := P_DTINICIO;'
      '    APLICVERBAI.DTFIMVIGENCIA    := P_DTFIM;'
      '    APLICVERBAI.CONDVENDA        := 1;'
      '    APLICVERBAI.CODCLI           := 0;'
      ''
      '    INSERT INTO PCAPLICVERBAI VALUES APLICVERBAI;'
      ''
      '    APLICVERBA.NUMAPLIC     := APLICVERBAI.NUMAPLIC;'
      '    APLICVERBA.CODFILIAL    := APLICVERBAI.CODFILIAL;'
      '    APLICVERBA.NUMVERBA     := APLICVERBAI.NUMVERBA;'
      '    APLICVERBA.DTAPLIC      := APLICVERBAI.DTAPLIC;'
      '    APLICVERBA.CODCONTA     := APLICVERBAI.CODCONTA;'
      '    APLICVERBA.VLAPLIC      := APLICVERBAI.VLAPLIC;'
      '    APLICVERBA.REBAIXACUSTO := '#39'N'#39';'
      '    APLICVERBA.CODFUNCREBAIXA := P_CODFUNC;'
      ''
      '    INSERT INTO PCAPLICVERBA VALUES APLICVERBA;'
      ''
      '    LANC.DTLANC           := TRUNC(SYSDATE);'
      '    LANC.CODCONTA         := APLICVERBAI.CODCONTA;'
      '    LANC.CODFORNEC        := VERBA.CODFORNEC;'
      '    LANC.HISTORICO        := '#39'APLIC VERBA BAIXA CMV'#39';'
      '    LANC.NUMNOTA          := APLICVERBAI.NUMAPLIC;'
      '    LANC.VALOR            := APLICVERBAI.VLAPLIC;'
      '    LANC.DTVENC           := TRUNC(SYSDATE);'
      '    LANC.VPAGO            := LANC.VALOR;'
      '    LANC.DTPAGTO          := TRUNC(SYSDATE);'
      '    LANC.CODFILIAL        := APLICVERBAI.CODFILIAL;'
      '    LANC.INDICE           := '#39'A'#39';'
      '    LANC.TIPOPARCEIRO     := '#39'F'#39';'
      ''
      '    INSERT INTO PCLANC VALUES LANC;'
      ''
      '    COMMIT;'
      ''
      'RETORNO:= '#39'OK'#39';'
      ''
      ''
      'EXCEPTION'
      '  WHEN OTHERS THEN'
      
        '    ------------------------------------------------------------' +
        '------------'
      '    BEGIN'
      '      ROLLBACK;'
      
        '      RETORNO := '#39'ERRO AO CRIAR VERBA'#39' || CHR(13) || '#39'ERRO INTER' +
        'NO: '#39' ||'
      '              SQLERRM;'
      ''
      '    END;'
      
        '    ------------------------------------------------------------' +
        '-----------'
      ''
      'END;'
      '')
    Left = 88
    Top = 48
  end
  object I9_GERAVERBA_CREATE: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE '
      
        'PROCEDURE I9_GERAVERBA (P_CODOFERTA NUMBER, P_CODFUNC NUMBER, RE' +
        'TORNO OUT VARCHAR2)'
      'IS'
      '    VERBA PCVERBA%ROWTYPE;'
      '    MOVCRFOR PCMOVCRFOR%ROWTYPE;'
      '    CONFIGVERBA I9CONFIGVERBAOFERTA%ROWTYPE;'
      '    APLICVERBAI PCAPLICVERBAI%ROWTYPE;'
      '    V_PROXNUMTRANSCRFOR NUMBER (18);'
      '    SALDOCR NUMBER (16, 2);'
      '    V_NUMVERBA NUMBER (18);'
      '    V_TIPOTRIB VARCHAR2 (2);'
      '    V_CODCONTA VARCHAR2 (50);'
      'BEGIN'
      
        '    /*BUSCA INFORMA'#199#213'ES DA OFERTA-------------------------------' +
        '------*/'
      '    FOR DADOS'
      '    IN (SELECT I9CONFIGVERBAOFERTA.CODOFERTA,'
      '               I9CONFIGVERBAOFERTA.TIPOVERBA,'
      '               I9CONFIGVERBAOFERTA.VLVERBA,'
      '               I9CONFIGVERBAOFERTA.DTAPURACAOVERBAINI,'
      '               I9CONFIGVERBAOFERTA.DTAPURACAOVERBAFIM,'
      '               I9CONFIGVERBAOFERTA.TIPOPAGTOVERBA,'
      '               I9CONFIGVERBAOFERTA.CODFORNEC,'
      '               I9CONFIGVERBAOFERTA.NUMVERBA,'
      '               PCOFERTAPROGRAMADAC.CODFILIAL'
      '        FROM I9CONFIGVERBAOFERTA, PCOFERTAPROGRAMADAC'
      
        '        WHERE     PCOFERTAPROGRAMADAC.CODOFERTA = I9CONFIGVERBAO' +
        'FERTA.CODOFERTA'
      '              AND I9CONFIGVERBAOFERTA.NUMVERBA IS NULL'
      
        '              AND UPPER (I9CONFIGVERBAOFERTA.TIPOVERBA) = '#39'APURA' +
        'R'#39
      '              AND PCOFERTAPROGRAMADAC.CODOFERTA = P_CODOFERTA)'
      '    LOOP'
      '        /*BUSCA NUMERADOR DA VERBA--------------------------*/'
      '        SELECT NVL (PROXNUMVERBA, 1) PROXNUMVERBA'
      '        INTO V_NUMVERBA'
      '        FROM PCCONSUM'
      '        FOR UPDATE ;'
      ''
      ''
      '        /*ATUALIZA PCCONSUM---------------------------------*/'
      '        UPDATE PCCONSUM'
      '        SET PROXNUMVERBA = NVL (PROXNUMVERBA, 1) + 1;'
      ''
      '        /*INSERT DA VERBA.----------------------------------*/'
      '        VERBA.NUMVERBA := V_NUMVERBA;'
      '        VERBA.CODFILIAL := DADOS.CODFILIAL;'
      '        VERBA.CODFORNEC := DADOS.CODFORNEC;'
      '        VERBA.DTEMISSAO := TRUNC (SYSDATE);'
      ''
      '        /*DEFINE TIPO DA VERBA.*/'
      ''
      '        VERBA.TIPO := '#39'2'#39';'
      
        '        VERBA.REFERENCIA1 := '#39'Valor da verba a ser definido na a' +
        'pura'#231#227'o.'#39';'
      '        VERBA.VALOR := 0;'
      ''
      '        /*BUSCA CONTA DE GERACAO DA VERBA*/'
      
        '        SELECT PKG_I9UTILITARIO.BUSCAPARAMETRO ('#39'99'#39', '#39'CON_CODCO' +
        'NTAREBAIXACMVAAPURAR'#39') INTO V_CODCONTA FROM DUAL;'
      ''
      ''
      '        VERBA.CODCONTA := V_CODCONTA;'
      '        VERBA.FORMAPGTO := DADOS.TIPOPAGTOVERBA;'
      
        '        VERBA.REFERENCIA := '#39'VERBA REF. OFERTA: '#39' || DADOS.CODOF' +
        'ERTA;'
      '        VERBA.DTVENC := DADOS.DTAPURACAOVERBAFIM + 40;'
      '        VERBA.ORIGEM := '#39'M'#39';'
      ''
      '        INSERT INTO PCVERBA'
      '        VALUES VERBA;'
      ''
      '        /*ATUALIZA NUMERO DA VERBA CRIADA PARA O FORNECEDOR.*/'
      '        UPDATE I9CONFIGVERBAOFERTA'
      '        SET NUMVERBA = V_NUMVERBA'
      
        '        WHERE CODOFERTA = P_CODOFERTA AND CODFORNEC = DADOS.CODF' +
        'ORNEC;'
      ''
      
        '        /*---------------------PREPARAR A VERBA A APURAR.-------' +
        '------------------------*/'
      '        IF VERBA.TIPO = '#39'2'#39
      '        THEN'
      '            SELECT NVL (PROXNUMAPLIC, 1) PROXNUMAPLIC'
      '            INTO APLICVERBAI.NUMAPLIC'
      '            FROM PCCONSUM'
      '            FOR UPDATE ;'
      ''
      ''
      '            UPDATE PCCONSUM'
      '            SET PROXNUMAPLIC = PROXNUMAPLIC + 1;'
      ''
      ''
      
        '            FOR REG IN (SELECT DISTINCT PCOFERTAPROGRAMADAI.CODF' +
        'ILIAL,'
      
        '                                        PCOFERTAPROGRAMADAI.CODO' +
        'FERTA,'
      '                                        PCEMBALAGEM.CODPROD,'
      
        '                                        PCOFERTAPROGRAMADAI.VLUN' +
        'ITARIOVERBA'
      
        '                        FROM PCOFERTAPROGRAMADAI, PCEMBALAGEM, P' +
        'CPRODUT'
      
        '                        WHERE     PCOFERTAPROGRAMADAI.CODAUXILIA' +
        'R = PCEMBALAGEM.CODAUXILIAR'
      
        '                              AND PCOFERTAPROGRAMADAI.CODFILIAL ' +
        '= PCEMBALAGEM.CODFILIAL'
      
        '                              AND PCPRODUT.CODPROD = PCEMBALAGEM' +
        '.CODPROD'
      
        '                              AND PCOFERTAPROGRAMADAI.CODOFERTA ' +
        '= DADOS.CODOFERTA'
      
        '                              AND NVL(PCOFERTAPROGRAMADAI.VLUNIT' +
        'ARIOVERBA, 0) > 0'
      
        '                              AND PCPRODUT.CODFORNEC IN (SELECT ' +
        'X.CODFORNEC'
      
        '                                                         FROM PC' +
        'FORNEC X'
      
        '                                                         WHERE X' +
        '.CODFORNECPRINC = (SELECT Y.CODFORNECPRINC'
      
        '                                                                ' +
        '                   FROM PCFORNEC Y'
      
        '                                                                ' +
        '                   WHERE Y.CODFORNEC = DADOS.CODFORNEC)))'
      '            LOOP'
      '                APLICVERBAI.CODFILIAL := VERBA.CODFILIAL;'
      '                APLICVERBAI.NUMVERBA := VERBA.NUMVERBA;'
      '                APLICVERBAI.DTAPLIC := TRUNC (SYSDATE);'
      '                APLICVERBAI.CODCONTA := VERBA.CODCONTA;'
      '                APLICVERBAI.CONDVENDA := 1;'
      
        '                APLICVERBAI.CUSTOFINATUAL := APLICVERBAI.CUSTOFI' +
        'NANT - REG.VLUNITARIOVERBA;'
      
        '                APLICVERBAI.VLAPLICUNITARIO := REG.VLUNITARIOVER' +
        'BA;'
      '                APLICVERBAI.ROTINALANC := '#39'PCSIS1831.EXE'#39';'
      '                APLICVERBAI.CODPROD := REG.CODPROD;'
      ''
      ''
      
        '                SELECT SUM (PCEST.QTESTGER), MAX (PCEST.CUSTOFIN' +
        ')'
      
        '                INTO APLICVERBAI.QTESTGER, APLICVERBAI.CUSTOFINA' +
        'NT'
      '                FROM PCEST'
      
        '                WHERE PCEST.CODPROD = APLICVERBAI.CODPROD AND PC' +
        'EST.CODFILIAL = APLICVERBAI.CODFILIAL;'
      ''
      
        '                SELECT PCOFERTAPROGRAMADAC.DTINICIAL, PCOFERTAPR' +
        'OGRAMADAC.DTFINAL'
      
        '                INTO APLICVERBAI.DTINICIOVIGENCIA, APLICVERBAI.D' +
        'TFIMVIGENCIA'
      '                FROM PCOFERTAPROGRAMADAC'
      
        '                WHERE PCOFERTAPROGRAMADAC.CODOFERTA = DADOS.CODO' +
        'FERTA;'
      ''
      '                INSERT INTO PCAPLICVERBAI'
      '                VALUES APLICVERBAI;'
      ''
      '                BEGIN'
      '                    UPDATE PCAPLICVERBA'
      '                    SET CODFILIAL = APLICVERBAI.CODFILIAL,'
      '                        NUMVERBA = APLICVERBAI.NUMVERBA,'
      '                        DTAPLIC = TRUNC (SYSDATE),'
      '                        CODCONTA = APLICVERBAI.CODCONTA,'
      '                        VLAPLIC = 0,'
      '                        REBAIXACUSTO = '#39'N'#39
      '                    WHERE NUMAPLIC = APLICVERBAI.NUMAPLIC;'
      ''
      '                    IF SQL%NOTFOUND'
      '                    THEN'
      '                        INSERT INTO PCAPLICVERBA (NUMAPLIC,'
      '                                                  CODFILIAL,'
      '                                                  NUMVERBA,'
      '                                                  DTAPLIC,'
      '                                                  CODCONTA,'
      '                                                  VLAPLIC,'
      '                                                  REBAIXACUSTO,'
      '                                                  OBS1,'
      '                                                  OBS2,'
      
        '                                                  CODFUNCREBAIXA' +
        ')'
      '                        VALUES (APLICVERBAI.NUMAPLIC,'
      '                                APLICVERBAI.CODFILIAL,'
      '                                APLICVERBAI.NUMVERBA,'
      '                                TRUNC (SYSDATE),'
      '                                APLICVERBAI.CODCONTA,'
      '                                0,'
      '                                '#39'N'#39','
      '                                NULL,'
      '                                NULL,'
      '                                1);'
      '                    END IF;'
      '                END;'
      '            END LOOP;'
      '        END IF;'
      '    END LOOP;'
      ''
      '    COMMIT;'
      ''
      ''
      '    RETORNO := '#39'OK'#39';'
      ''
      'END;')
    Left = 88
    Top = 104
  end
  object I9CONFIGUSUARIO_CREATE: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9CONFIGUSUARIO('
      'MATRICULA NUMBER(10),'
      'CODROTINA NUMBER(10),'
      'NOME VARCHAR2(50),'
      'VALOR VARCHAR2(50)'
      ')')
    Left = 1000
    Top = 24
  end
  object I9PARAMETROS_CREATE: TUniQuery
    SQL.Strings = (
      'CREATE TABLE I9PARAMETROS ('
      'NOME_PARAMETRO VARCHAR2(50) PRIMARY KEY,'
      'DESCRICAO_PARAMETRO VARCHAR2(255),'
      'VALOR_PARAMETRO VARCHAR2(255)'
      ')')
    Left = 1000
    Top = 72
  end
  object I9LISTAPRECIFICACAO_CREATE: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9LISTAPRECIFICACAO ('
      'CODLISTA NUMBER(10) NOT NULL,'
      'DATA DATE,'
      'MATRICULA NUMBER(10),'
      'CODPROD  NUMBER(10,0)          NOT NULL,'
      'CODAUXILIAR  NUMBER(20,0)          NOT NULL,'
      'DESCRICAO VARCHAR2(100),'
      'DTEXCLUSAO DATE,'
      'MATRICULAEXCLUSAO NUMBER(10)'
      ')')
    Left = 1000
    Top = 120
  end
  object PKG_I9UTILITARIO_CABECALHO_CREATE: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      '/* Formatted on 25/11/2020 18:49:39 (QP5 v5.262) */'
      'CREATE OR REPLACE PACKAGE PKG_I9UTILITARIO'
      'AS'
      '    /*FUN'#199#213'ES DO WINTHOR*/'
      
        '    FUNCTION BUSCAPARAMETRO (PCODFILIAL VARCHAR2, NOME_PARAMETRO' +
        ' VARCHAR2)'
      '        RETURN VARCHAR2;'
      ''
      
        '    PROCEDURE I9GERAVERBA_GENERICO (P_CODFILIAL     IN     VARCH' +
        'AR2,'
      
        '                                    P_CODFORNEC     IN     NUMBE' +
        'R,'
      
        '                                    P_TIPO          IN     VARCH' +
        'AR2,'
      
        '                                    P_REFERENCIA    IN     VARCH' +
        'AR2,'
      
        '                                    P_REFERENCIA1   IN     VARCH' +
        'AR2,'
      
        '                                    P_VALOR         IN     NUMBE' +
        'R,'
      '                                    P_DTVENC        IN     DATE,'
      
        '                                    P_CODCONTA      IN     NUMBE' +
        'R,'
      
        '                                    P_TP            IN     VARCH' +
        'AR2,'
      
        '                                    P_CODFUNC       IN     NUMBE' +
        'R,'
      
        '                                    RETORNO            OUT VARCH' +
        'AR2,'
      
        '                                    NUMVERBA           OUT NUMBE' +
        'R);'
      ''
      
        '    FUNCTION CALCULA_MARGEM_FUTURA_OFERTA (PCODFILIAL IN VARCHAR' +
        '2, PCODBARRAS IN NUMBER, PVALOROFERTA NUMBER)'
      '        RETURN NUMBER;'
      ''
      
        '    FUNCTION PRODUTO_TEM_ATACADO (PCODFILIAL IN VARCHAR2, PCODBA' +
        'RRAS IN NUMBER)'
      '        RETURN VARCHAR2;'
      ''
      
        '    FUNCTION BUSCA_MARGEM_PRODUTO (PCODFILIAL IN VARCHAR2, PCODP' +
        'ROD IN NUMBER, PTIPOMARGEM IN VARCHAR2)'
      '        RETURN NUMBER;'
      ''
      
        '    FUNCTION CALCULAR_SUGESTAO (PCODFILIAL IN VARCHAR2, PCODBARR' +
        'AS IN NUMBER, PTIPOSUGESTAO VARCHAR2)'
      '        RETURN NUMBER;'
      ''
      
        '    FUNCTION CALCULAR_SUGESTAO_COMPLETA (PCODFILIAL IN VARCHAR2,' +
        ' PCODBARRAS IN NUMBER, PTIPOSUGESTAO VARCHAR2)'
      '        RETURN NUMBER;'
      ''
      
        '    FUNCTION BUSCACUSTO (PCODFILIAL IN VARCHAR2, PCODPROD IN NUM' +
        'BER, PPVENDA IN NUMBER DEFAULT 0)'
      '        RETURN NUMBER;'
      ''
      '    /*FUN'#199#213'ES MATEMATICAS*/'
      
        '    FUNCTION DIFERENCA_ENTRE_MARGENS (PVALOR1 IN NUMBER, PVALOR2' +
        ' IN NUMBER)'
      '        RETURN NUMBER;'
      ''
      
        '    FUNCTION GETPERCENTUAL (PVALOR1 IN NUMBER, PVALOR2 IN NUMBER' +
        ')'
      '        RETURN NUMBER;'
      ''
      '    FUNCTION ARREDONDAR_PRECO (PVALOR IN VARCHAR2)'
      '        RETURN NUMBER;'
      ''
      '    FUNCTION APLICA_MARGEM (PCODFILIAL       IN VARCHAR2,'
      '                            PCODPROD         IN NUMBER,'
      '                            PCODBARRAS       IN NUMBER,'
      '                            MARGEM_APLICAR   IN NUMBER)'
      '        RETURN NUMBER;'
      ''
      
        '    FUNCTION REMOVER_MARGEM (PRECO IN NUMBER, MARGEM_APLICAR IN ' +
        'NUMBER)'
      '        RETURN NUMBER;'
      ''
      ''
      
        '    FUNCTION COTACAO_DATA (PCODPROD IN NUMBER, PCODFILIAL IN VAR' +
        'CHAR2)'
      '        RETURN DATE;'
      ''
      
        '    FUNCTION COTACAO_PRECO (PCODPROD IN NUMBER, PCODFILIAL IN VA' +
        'RCHAR2, TIPO IN VARCHAR2)'
      '        RETURN NUMBER;'
      ''
      '    PROCEDURE ATUALIZAR_PRECOVENDA;'
      ''
      
        '    PROCEDURE ATUALIZAR_ETIQUETAS (P_CODFILIAL VARCHAR2 DEFAULT ' +
        'NULL, P_CODPROD VARCHAR2 DEFAULT NULL, P_COMMITAR VARCHAR2 DEFAU' +
        'LT '#39'S'#39');'
      ''
      
        '    PROCEDURE GERAVERBA (PCODFILIAL                     VARCHAR2' +
        ','
      '                         PCODFORNECEDOR                 INTEGER,'
      
        '                         PTIPOPAGTOVERBA                VARCHAR2' +
        ','
      '                         PVALORTOTAL                    NUMBER,'
      
        '                         PHISTORICOREF                  VARCHAR2' +
        ','
      '                         PDTVENCVERBA                   DATE,'
      
        '                         PVERBAAPURAROURETROATIVO       VARCHAR2' +
        ','
      
        '                         PINCLUIRPCAPLICVERBA           VARCHAR2' +
        ','
      '                         PCODFUNC                       INTEGER,'
      
        '                         RETORNO                    OUT VARCHAR2' +
        ');'
      ''
      
        '    PROCEDURE GERAVERBA_PCAPLICVERBAI (PNUMVERBA              IN' +
        'TEGER,'
      
        '                                       PVERBAAPURADA          VA' +
        'RCHAR2,'
      
        '                                       PCODPROD               NU' +
        'MBER,'
      
        '                                       PVLUNITARIOVERBA       NU' +
        'MBER,'
      
        '                                       PDTINIVIGENCIA         DA' +
        'TE,'
      
        '                                       PDTFIMVIGENCIA         DA' +
        'TE,'
      
        '                                       PQTVENDA               NU' +
        'MBER,'
      
        '                                       PVLVERBATOTAL          NU' +
        'MBER,'
      
        '                                       POBS                   VA' +
        'RCHAR2,'
      
        '                                       RETORNO            OUT VA' +
        'RCHAR2);'
      ''
      
        '    PROCEDURE GERAEXCEPTION (PMSG IN VARCHAR2, PMSGORACLE IN VAR' +
        'CHAR2, PLINHAERRO IN VARCHAR2);'
      ''
      '    FUNCTION GETPROXNUMVERBA'
      '        RETURN NUMBER;'
      ''
      '    FUNCTION GETPROXNUMTRANSCRFOR'
      '        RETURN NUMBER;'
      ''
      
        '    FUNCTION GETMETA (PCODFILIAL IN VARCHAR2, PDATAINI IN DATE, ' +
        'PDATAFIM IN DATE)'
      '        RETURN NUMBER;'
      ''
      ''
      
        '    FUNCTION GET_PRECO_QTUNIT1 (P_QTUNIT IN NUMBER, P_PRECO IN N' +
        'UMBER)'
      '        RETURN NUMBER;'
      ''
      
        '    PROCEDURE PRC_CALCULARVENDAS_SEMANA (PCODFILIAL IN VARCHAR2 ' +
        'DEFAULT NULL, PCODPROD IN NUMBER DEFAULT NULL);'
      ''
      
        '    PROCEDURE PRC_CALCULARVENDAS_MES (PCODFILIAL IN VARCHAR2 DEF' +
        'AULT NULL, PCODPROD IN NUMBER DEFAULT NULL);'
      ''
      'END;')
    Left = 600
    Top = 176
  end
  object PKG_I9UTILITARIO_CORPO_CREATE: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE '
      'PACKAGE BODY pkg_i9utilitario'
      'AS'
      
        '    /*FUN'#191#191'ES DO WINTHOR----------------------------------------' +
        '-----------------------------------*/'
      
        '    FUNCTION BUSCAPARAMETRO( PCODFILIAL IN VARCHAR2, NOME_PARAME' +
        'TRO IN VARCHAR2 )'
      '        RETURN VARCHAR2'
      '    IS'
      '        VRESULTADO VARCHAR2( 100 );'
      '    BEGIN'
      '        SELECT   NVL( VALOR, 0 )'
      '          INTO   VRESULTADO'
      '          FROM   PCPARAMFILIAL'
      '         WHERE   NOME = UPPER( NOME_PARAMETRO )'
      '             AND CODFILIAL = PCODFILIAL;'
      ''
      '        RETURN VRESULTADO;'
      '    END;'
      ''
      
        '    FUNCTION GET_PRECO_QTUNIT1( P_QTUNIT IN NUMBER, P_PRECO IN N' +
        'UMBER )'
      '        RETURN NUMBER'
      '    IS'
      '        VRETORNO NUMBER( 18, 6 );'
      '        VQTUNIT NUMBER( 18, 6 );'
      '        VPRECO NUMBER( 18, 6 );'
      '    BEGIN'
      '        VPRECO := NVL( P_PRECO, 0 );'
      '        VQTUNIT := NVL( P_QTUNIT, 1 );'
      ''
      '        IF ( VQTUNIT = 0 ) THEN'
      '            VQTUNIT := 1;'
      '        END IF;'
      ''
      '        /*REGRAS PARA CADA TIPO DE QTUNIT*/'
      '        IF ( VQTUNIT < 1 ) THEN'
      '            VRETORNO := ROUND( VPRECO * ( 1 / VQTUNIT ), 2 );'
      '        END IF;'
      ''
      '        IF ( VQTUNIT = 1 ) THEN'
      '            VRETORNO := ROUND( VPRECO, 2 );'
      '        END IF;'
      ''
      '        IF ( VQTUNIT > 1 ) THEN'
      '            VRETORNO := ROUND( ( VPRECO / VQTUNIT ), 2 );'
      '        END IF;'
      ''
      ''
      '        RETURN VRETORNO;'
      '    END;'
      ''
      
        '    PROCEDURE I9GERAVERBA_GENERICO( P_CODFILIAL     IN     VARCH' +
        'AR2,'
      
        '                                    P_CODFORNEC     IN     NUMBE' +
        'R,'
      
        '                                    P_TIPO          IN     VARCH' +
        'AR2,'
      
        '                                    P_REFERENCIA    IN     VARCH' +
        'AR2,'
      
        '                                    P_REFERENCIA1   IN     VARCH' +
        'AR2,'
      
        '                                    P_VALOR         IN     NUMBE' +
        'R,'
      '                                    P_DTVENC        IN     DATE,'
      
        '                                    P_CODCONTA      IN     NUMBE' +
        'R,'
      
        '                                    P_TP            IN     VARCH' +
        'AR2,'
      
        '                                    P_CODFUNC       IN     NUMBE' +
        'R,'
      
        '                                    RETORNO            OUT VARCH' +
        'AR2,'
      
        '                                    NUMVERBA           OUT NUMBE' +
        'R )'
      '    IS'
      '        VERBA PCVERBA%ROWTYPE;'
      '        MOVCRFOR PCMOVCRFOR%ROWTYPE;'
      '        V_PROXNUMTRANSCRFOR NUMBER;'
      '        SALDOCR NUMBER( 16, 2 );'
      '        V_NUMVERBA NUMBER;'
      '        V_TIPOTRIB VARCHAR2( 2 );'
      '    BEGIN'
      '            SELECT   NVL( PROXNUMVERBA, 1 ) PROXNUMVERBA'
      '              INTO   V_NUMVERBA'
      '              FROM   PCCONSUM'
      '        FOR UPDATE   ;'
      ''
      '        UPDATE   PCCONSUM'
      '           SET   PROXNUMVERBA = NVL( PROXNUMVERBA, 1 ) + 1;'
      ''
      '        COMMIT;'
      ''
      '        /*Gerar verba*/'
      '        VERBA.NUMVERBA := V_NUMVERBA;'
      '        VERBA.CODFILIAL := P_CODFILIAL;'
      '        VERBA.CODFORNEC := P_CODFORNEC;'
      '        VERBA.DTEMISSAO := TRUNC( SYSDATE );'
      '        VERBA.TIPO := P_TP;'
      '        VERBA.FORMAPGTO := P_TIPO;'
      '        VERBA.REFERENCIA := P_REFERENCIA;'
      '        VERBA.REFERENCIA1 := P_REFERENCIA1;'
      '        VERBA.VALOR := P_VALOR;'
      '        VERBA.DTVENC := P_DTVENC;'
      '        VERBA.CODCONTA := P_CODCONTA;'
      '        VERBA.ORIGEM := P_TIPO;'
      ''
      '        INSERT INTO PCVERBA'
      '          VALUES   VERBA;'
      ''
      
        '            SELECT   NVL( PROXNUMTRANSCRFOR, 1 ) PROXNUMTRANSCRF' +
        'OR'
      '              INTO   V_PROXNUMTRANSCRFOR'
      '              FROM   PCCONSUM'
      '        FOR UPDATE   ;'
      ''
      '        UPDATE   PCCONSUM'
      
        '           SET   PROXNUMTRANSCRFOR = NVL( PROXNUMTRANSCRFOR, 1 )' +
        ' + 1;'
      ''
      '        COMMIT;'
      ''
      '        BEGIN'
      '            SELECT   SUM(DECODE( P_TP,'
      
        '                                 '#39'D'#39', ( NVL( PCESTCRFOR.VALOR, 0' +
        ' ) + P_VALOR ),'
      
        '                                 ( NVL( PCESTCRFOR.VALOR, 0 ) - ' +
        'P_VALOR ) ))'
      '                         SALDO'
      '              INTO   SALDOCR'
      '              FROM   PCESTCRFOR'
      '             WHERE   CODFILIAL = P_CODFILIAL'
      '                 AND CODFORNEC = P_CODFORNEC;'
      ''
      '            MOVCRFOR.NUMTRANSCRFOR := V_PROXNUMTRANSCRFOR;'
      '            MOVCRFOR.CODFILIAL := P_CODFILIAL;'
      '            MOVCRFOR.DATA := TRUNC( SYSDATE );'
      '            MOVCRFOR.CODFORNEC := P_CODFORNEC;'
      '            MOVCRFOR.TIPOVERBA := P_TIPO;'
      '            MOVCRFOR.VALOR := P_VALOR;'
      '            MOVCRFOR.TIPO := P_TP;'
      '            MOVCRFOR.HISTORICO1 := P_REFERENCIA;'
      '            MOVCRFOR.HISTORICO2 := P_REFERENCIA1;'
      '            MOVCRFOR.NUMVERBA := V_NUMVERBA;'
      '            MOVCRFOR.VLSALDO := SALDOCR;'
      
        '            MOVCRFOR.HORA := TO_NUMBER( TO_CHAR( SYSDATE, '#39'hh24'#39 +
        ' ) );'
      
        '            MOVCRFOR.MINUTO := TO_NUMBER( TO_CHAR( SYSDATE, '#39'mi'#39 +
        ' ) );'
      '            MOVCRFOR.CODCONTA := P_CODCONTA;'
      '            MOVCRFOR.CODFUNC := P_CODFUNC;'
      ''
      '            INSERT INTO PCMOVCRFOR'
      '              VALUES   MOVCRFOR;'
      ''
      ''
      '            BEGIN'
      '                UPDATE   PCESTCRFOR'
      '                   SET   PCESTCRFOR.VALOR ='
      
        '                             ( NVL( PCESTCRFOR.VALOR, 0 ) + ( DE' +
        'CODE( P_TP, '#39'D'#39', P_VALOR, P_VALOR * ( -1 ) ) ) )'
      '                 WHERE   PCESTCRFOR.CODFILIAL = P_CODFILIAL'
      '                     AND PCESTCRFOR.CODFORNEC = P_CODFORNEC;'
      ''
      '                IF SQL%ROWCOUNT = 0 THEN'
      
        '                    INSERT INTO PCESTCRFOR( CODFILIAL, CODFORNEC' +
        ', VALOR )'
      
        '                      VALUES   ( P_CODFILIAL, P_CODFORNEC, ( DEC' +
        'ODE( P_TP, '#39'D'#39', P_VALOR, P_VALOR * ( -1 ) ) ) );'
      '                END IF;'
      '            END;'
      '        END;'
      ''
      ''
      '        NUMVERBA := TO_CHAR( V_NUMVERBA );'
      '        RETORNO := '#39'OK'#39';'
      '    EXCEPTION'
      '        WHEN OTHERS THEN'
      
        '            /*--------------------------------------------------' +
        '--------------------*/'
      '            BEGIN'
      '                ROLLBACK;'
      
        '                RETORNO := '#39'ERRO AO CRIAR VERBA'#39' || CHR( 13 ) ||' +
        ' '#39'ERRO INTERNO: '#39' || SQLERRM;'
      '            END;'
      
        '    /*----------------------------------------------------------' +
        '-----------*/'
      ''
      '    END;'
      ''
      ''
      ''
      
        '    FUNCTION CALCULA_MARGEM_FUTURA_OFERTA( PCODFILIAL IN VARCHAR' +
        '2, PCODBARRAS IN NUMBER, PVALOROFERTA NUMBER )'
      '        RETURN NUMBER'
      '    IS'
      '        VCODPROD NUMBER( 18 );'
      '        VQTUNIT VARCHAR2( 20 );'
      '        VMARGEMFUTURA NUMBER( 18, 6 );'
      '    BEGIN'
      '        /*BUSCA DADOS DA EMBALAGEM*/'
      '        SELECT   NVL( QTUNIT, 1 ), CODPROD'
      '          INTO   VQTUNIT, VCODPROD'
      '          FROM   PCEMBALAGEM'
      '         WHERE   CODFILIAL = PCODFILIAL'
      '             AND CODAUXILIAR = PCODBARRAS;'
      ''
      '        SELECT   TRUNC('
      
        '                        PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS' +
        '('
      
        '                                                                ' +
        '  PVALOROFERTA,'
      
        '                                                                ' +
        '  PKG_I9UTILITARIO.BUSCACUSTO( PCODFILIAL, VCODPROD )'
      
        '                                                                ' +
        '  * VQTUNIT ),'
      '                        2 )'
      '          INTO   VMARGEMFUTURA'
      '          FROM   DUAL;'
      ''
      '        RETURN VMARGEMFUTURA;'
      '    END;'
      ''
      ''
      ''
      
        '    FUNCTION PRODUTO_TEM_ATACADO( PCODFILIAL IN VARCHAR2, PCODBA' +
        'RRAS IN NUMBER )'
      '        RETURN VARCHAR2'
      '    IS'
      '        VTEMATACADO VARCHAR2( 1 );'
      '    BEGIN'
      '        /*VALIDA SE PRODUTO TEM QT ATACADO*/'
      '        SELECT   DECODE('
      
        '                         DECODE( NVL( PCEMBALAGEM.QTMINIMAATACAD' +
        'O, 0 ),'
      
        '                                 0, NVL( PCEMBALAGEM.QTMULTIPLA,' +
        ' 0 ),'
      
        '                                 NVL( PCEMBALAGEM.QTMINIMAATACAD' +
        'O, 0 ) ),'
      '                         0,'
      '                         '#39'N'#39','
      '                         '#39'S'#39' )'
      '                     AS TEMATACADO'
      '          INTO   VTEMATACADO'
      '          FROM   PCEMBALAGEM'
      '         WHERE   PCEMBALAGEM.CODAUXILIAR = PCODBARRAS'
      '             AND PCEMBALAGEM.CODFILIAL IN (PCODFILIAL);'
      ''
      ''
      '        RETURN VTEMATACADO;'
      '    END;'
      ''
      
        '    FUNCTION BUSCACUSTO( PCODFILIAL IN VARCHAR2, PCODPROD IN NUM' +
        'BER, PPVENDA IN NUMBER DEFAULT 0 )'
      '        RETURN NUMBER'
      '    IS'
      '        VRESULTADO NUMBER( 18, 6 );'
      '        VTIPOCUSTO INTEGER;'
      '        VMARGEMGARANTIDA NUMBER( 18, 6 );        '
      '        VNUMREGIAOPADRAOVAREJO VARCHAR2( 100 );'
      '        VFILPRECOPOREMBALAGEM VARCHAR2( 100 );'
      '        VUSASUGESTAOCOMPLETA VARCHAR2( 1 );        '
      '    BEGIN    '
      '        VMARGEMGARANTIDA := 0;'
      '        '
      '        SELECT   DECODE( COUNT( * ), '#39'0'#39', '#39'N'#39', '#39'S'#39' ) VALOR'
      '          INTO   VUSASUGESTAOCOMPLETA'
      '          FROM   I9PARAMETROS'
      
        '         WHERE   I9PARAMETROS.NOME_PARAMETRO = '#39'SUGESTAOCOMPLETA' +
        #39
      '             AND I9PARAMETROS.VALOR_PARAMETRO = '#39'S'#39';'
      ''
      '    '
      '        --SE UTILIZA OU NAO PRECIFICACAO POR EMBALAGEM'
      
        '        SELECT   NVL( PKG_I9UTILITARIO.BUSCAPARAMETRO( PCODFILIA' +
        'L, '#39'FIL_PRECOPOREMBALAGEM'#39' ), '#39'N'#39' )'
      '          INTO   VFILPRECOPOREMBALAGEM'
      '          FROM   DUAL;'
      ''
      '        --REGIAO PARAMETRIZADA EM CASO DE MARGEM POR REGIAO'
      
        '        SELECT   NVL( PKG_I9UTILITARIO.BUSCAPARAMETRO( PCODFILIA' +
        'L, '#39'NUMREGIAOPADRAOVAREJO'#39' ), '#39'1'#39')'
      '          INTO   VNUMREGIAOPADRAOVAREJO'
      '          FROM   DUAL;'
      '        '
      ''
      
        '        /*BUSCA QUAL O TIPO DE CUSTO '#191' UTILIZADO PARA SUGEST'#191'O D' +
        'E PRE'#191'O.   */'
      
        '        SELECT   PKG_I9UTILITARIO.BUSCAPARAMETRO( '#39'99'#39', '#39'CON_SUG' +
        'VENDA'#39' ) '
      '        INTO VTIPOCUSTO FROM DUAL;'
      ''
      ''
      
        '        IF VUSASUGESTAOCOMPLETA = '#39'S'#39' AND (NVL(PPVENDA, 0) > 0) ' +
        'THEN'
      '        '
      '            BEGIN'
      '                               '
      
        '                SELECT (nvl(DADOS.CUSTOLIQUIDO,0) + NVL(DADOS.IM' +
        'POSTOSFEDERAIS,0) + NVL(DADOS.IMPOSTOSCMV, 0) + NVL(DADOS.COMISS' +
        'AO,0)) '
      '                      INTO VRESULTADO'
      
        '                      FROM (SELECT NVL( PCEST.CUSTOFIN, 0 ) * ( ' +
        '1 - NVL( PCTRIBUT.PERDESCCUSTO, 0 ) ) AS CUSTOLIQUIDO,'
      
        '                                   ( PPVENDA * ( PCTRIBUT.CODICM' +
        'TAB / 100 ) ) AS IMPOSTOSCMV,'
      
        '                                   ( PPVENDA * ( ( SELECT NVL( P' +
        'CCONSUM.TXVENDA, 0 ) FROM PCCONSUM ) / 100 ) ) AS IMPOSTOSFEDERA' +
        'IS,'
      
        '                                   PPVENDA * ( NVL( PCPRODUT.PCO' +
        'MREP1, 0 ) / 100 ) AS COMISSAO,'
      
        '                                   NVL( PCREGIAO.PERFRETEESPECIA' +
        'L, 0 ) PERFRETEESPECIAL,'
      
        '                                   NVL( PCREGIAO.PERFRETETERCEIR' +
        'OS, 0 ) PERFRETETERCEIROS,'
      
        '                                   NVL( PCEST.CUSTOFIN, 0 ) CUST' +
        'OFIN,'
      
        '                                   NVL( PCTABPR.PFRETE, 0 ) PFRE' +
        'TE,'
      
        '                                   NVL( PCPRODUT.PESOBRUTO, 0 ) ' +
        'PESOBRUTO,'
      
        '                                   NVL( PCTRIBUT.CODICMTAB, 0 ) ' +
        'CODICMTAB,'
      '                                   NVL( PCTRIBUT.IVA, 0 ) IVA,'
      
        '                                   NVL( PCTRIBUT.IVATAB, 0 ) IVA' +
        'TAB,'
      
        '                                   NVL( PCTRIBUT.ALIQICMS1, 0 ) ' +
        'ALIQICMS1,'
      
        '                                   NVL( PCTRIBUT.ALIQICMS2, 0 ) ' +
        'ALIQICMS2,'
      
        '                                   NVL( PCTRIBUT.PERCBASEREDST, ' +
        '0 ) PERCBASEREDST,'
      '                                   PCFILIAL.UF UFFILIAL,'
      
        '                                   NVL( PCTRIBUT.PERCBASERED, 0 ' +
        ') PERCBASERED,'
      
        '                                   NVL( PCTRIBUT.PERCACRESICMSPF' +
        '_PI, 0 ) PERCACRESICMSPF_PI'
      '                              FROM PCTABPR,'
      '                                   PCREGIAO,'
      '                                   PCTRIBUT,'
      '                                   PCFILIAL,'
      '                                   PCPRODUT,'
      '                                   PCEST'
      
        '                             WHERE PCTABPR.CODST = PCTRIBUT.CODS' +
        'T'
      
        '                               AND PCTABPR.CODPROD = PCPRODUT.CO' +
        'DPROD'
      
        '                               AND PCTABPR.CODPROD = PCEST.CODPR' +
        'OD'
      
        '                               AND PCEST.CODFILIAL = PCFILIAL.CO' +
        'DIGO'
      
        '                               AND PCTABPR.NUMREGIAO = PCREGIAO.' +
        'NUMREGIAO'
      
        '                               AND PCTABPR.NUMREGIAO = VNUMREGIA' +
        'OPADRAOVAREJO'
      '                               AND PCEST.CODFILIAL = PCODFILIAL'
      
        '                               AND PCEST.CODPROD = PCODPROD) DAD' +
        'OS;        '
      ''
      '                RETURN VRESULTADO;     '
      '        '
      '            EXCEPTION'
      '                WHEN NO_DATA_FOUND THEN'
      '                    RETURN NULL;'
      '            END;        '
      '        '
      '        ELSE         '
      '            /*BUSCA CUSTO DO PRODUTO DE ACORDO COM PARAMETRO*/'
      '            SELECT   DECODE( VTIPOCUSTO,'
      '                             1, NVL( CUSTOREAL, 0 ),'
      '                             2, NVL( CUSTOFIN, 0 ),'
      '                             3, NVL( CUSTOULTENT, 0 ),'
      '                             VTIPOCUSTO )'
      '              INTO   VRESULTADO'
      '              FROM   PCEST'
      '             WHERE   CODFILIAL = PCODFILIAL'
      '                 AND CODPROD = PCODPROD;'
      ''
      '            IF VMARGEMGARANTIDA > 0 THEN'
      
        '                RETURN ROUND( VRESULTADO + ( VRESULTADO * ( VMAR' +
        'GEMGARANTIDA / 100 ) ), 2 );'
      '            ELSE'
      '                RETURN ROUND( VRESULTADO, 2 );'
      '            END IF;'
      '        END IF; '
      ''
      '    END;'
      ''
      '    /*BUSCA A MARGEM DO PRODUTO*/'
      
        '    FUNCTION BUSCA_MARGEM_PRODUTO( PCODFILIAL IN VARCHAR2, PCODP' +
        'ROD IN NUMBER, PTIPOMARGEM IN VARCHAR2 )'
      '        RETURN NUMBER'
      '    IS'
      '        VRESULTADO NUMBER( 18, 2 );'
      '        VUTILIZAMARGEMSUBCAT VARCHAR2( 100 );'
      '        VNUMREGIAOPADRAOVAREJO VARCHAR2( 100 );'
      '        VFILPRECOPOREMBALAGEM VARCHAR2( 100 );'
      '    BEGIN'
      '    '
      '        --BUSCA QUAL O TIPO DE MARGEM E UTILIZADA'
      
        '        SELECT   NVL( PKG_I9UTILITARIO.BUSCAPARAMETRO( PCODFILIA' +
        'L, '#39'UTILIZAMARGEMSUBCAT'#39' ), '#39'N'#39' )'
      '          INTO   VUTILIZAMARGEMSUBCAT'
      '          FROM   DUAL;                  '
      '        '
      '        --SE UTILIZA OU NAO PRECIFICACAO POR EMBALAGEM'
      
        '        SELECT   NVL( PKG_I9UTILITARIO.BUSCAPARAMETRO( PCODFILIA' +
        'L, '#39'FIL_PRECOPOREMBALAGEM'#39' ), '#39'N'#39' )'
      '          INTO   VFILPRECOPOREMBALAGEM'
      '          FROM   DUAL;'
      ''
      '        --REGIAO PARAMETRIZADA EM CASO DE MARGEM POR REGIAO'
      
        '        SELECT   NVL( PKG_I9UTILITARIO.BUSCAPARAMETRO( PCODFILIA' +
        'L, '#39'NUMREGIAOPADRAOVAREJO'#39' ), '#39'1'#39')'
      '          INTO   VNUMREGIAOPADRAOVAREJO'
      '          FROM   DUAL;          '
      '          '
      ''
      '        --BUSCA MARGEM POR EMBALAGEM'
      '        IF VFILPRECOPOREMBALAGEM = '#39'S'#39' THEN'
      '            --BUSCA MARGEM POR SUBCATEGORIA'
      '            IF VUTILIZAMARGEMSUBCAT = '#39'S'#39' THEN        '
      '                SELECT   MAX(DECODE( UPPER( PTIPOMARGEM ),'
      
        '                                     '#39'VAREJO'#39', NVL(PCCLASSIFICME' +
        'RC.MARGEMVAREJO,0),'
      
        '                                     '#39'ATACADO'#39', NVL(PCCLASSIFICM' +
        'ERC.MARGEMATAC,0),'
      
        '                                     '#39'MINIMA_VAREJO'#39', NVL(PCCLAS' +
        'SIFICMERC.MARGEMMINVAREJO,0),'
      
        '                                     '#39'MINIMA_ATACADO'#39', NVL(PCCLA' +
        'SSIFICMERC.MARGEMMINATAC,0),'
      '                                     0 ))'
      '                  INTO   VRESULTADO'
      '                  FROM   PCCLASSIFICMERC'
      '                 WHERE   CODFILIAL = PCODFILIAL'
      '                     AND CODPROD = PCODPROD;'
      '                     '
      '            ELSE'
      '                --BUSCA MARGEM POR EMBALAGEM'
      '                SELECT   MAX(DECODE( UPPER( PTIPOMARGEM ),'
      '                                     '#39'VAREJO'#39', NVL(MARGEM,0),'
      
        '                                     '#39'ATACADO'#39', NVL(MARGEMATAC,0' +
        '),'
      
        '                                     '#39'MINIMA_VAREJO'#39', NVL(MARGEM' +
        ',0),'
      
        '                                     '#39'MINIMA_ATACADO'#39', NVL(MARGE' +
        'MATAC,0),'
      '                                     0 ))'
      '                  INTO   VRESULTADO'
      '                  FROM   PCEMBALAGEM'
      '                 WHERE   PCEMBALAGEM.CODFILIAL = PCODFILIAL'
      '                     AND PCEMBALAGEM.CODPROD = PCODPROD'
      
        '                     AND PCEMBALAGEM.QTUNIT IN (SELECT MIN(PE.QT' +
        'UNIT) FROM PCEMBALAGEM PE WHERE PE.CODPROD = PCEMBALAGEM.CODPROD' +
        ' AND PE.CODFILIAL = PCEMBALAGEM.CODFILIAL AND PE.DTINATIVO IS NU' +
        'LL)'
      '                     AND ROWNUM = 1;    '
      '                                    '
      '            END IF;'
      '        '
      
        '        --SE A PRECIFICACAO NAO FOR POR EMBALAGEM, BUSCAR DA REG' +
        'IAO PADRAO DA FILIAL        '
      '        ELSE'
      '        '
      '            SELECT MAX(DECODE( UPPER( PTIPOMARGEM ),'
      '                                     '#39'VAREJO'#39', NVL(MARGEM,0),'
      '                                     '#39'ATACADO'#39', NVL(MARGEM,0),'
      
        '                                     '#39'MINIMA_VAREJO'#39', NVL(MARGEM' +
        ',0),'
      
        '                                     '#39'MINIMA_ATACADO'#39', NVL(MARGE' +
        'M,0),'
      '                                     0 ))'
      '            INTO   VRESULTADO'
      '            FROM   PCTABPR                                     '
      '            WHERE PCTABPR.CODPROD = PCODPROD'
      '            AND PCTABPR.NUMREGIAO = VNUMREGIAOPADRAOVAREJO;    '
      '                                    '
      '        END IF;'
      '                      '
      '        RETURN VRESULTADO;'
      '    END;'
      ''
      ''
      ''
      ''
      ''
      '    /*FUN'#191#191'O RETORNA PRE'#191'O DE SUGEST'#191'O DO SISTEMA.*/'
      
        '    FUNCTION CALCULAR_SUGESTAO( PCODFILIAL IN VARCHAR2, PCODBARR' +
        'AS IN NUMBER, PTIPOSUGESTAO VARCHAR2 )'
      '        RETURN NUMBER'
      '    IS'
      '        VCUSTO NUMBER( 18, 6 );'
      '        VMARGEM NUMBER( 18, 2 );'
      '        VRESULTADO NUMBER( 18, 2 );'
      '        VFATORPRECO NUMBER( 18, 2 );'
      '        VPERCVARIACAO NUMBER( 18, 2 );'
      '        VCODPROD NUMBER( 18 );'
      '        VTIPOCUSTO INTEGER;'
      '        VTIPOMARGEM VARCHAR2( 1 );'
      '        VQTUNITEMBALAGEM NUMBER( 18, 2 );'
      '        VUSASUGESTAOCOMPLETA VARCHAR2( 1 );'
      '    BEGIN'
      '        SELECT   DECODE( COUNT( * ), '#39'0'#39', '#39'N'#39', '#39'S'#39' ) VALOR'
      '          INTO   VUSASUGESTAOCOMPLETA'
      '          FROM   I9PARAMETROS'
      
        '         WHERE   I9PARAMETROS.NOME_PARAMETRO = '#39'SUGESTAOCOMPLETA' +
        #39
      '             AND I9PARAMETROS.VALOR_PARAMETRO = '#39'S'#39';'
      ''
      '        IF VUSASUGESTAOCOMPLETA = '#39'S'#39' THEN'
      
        '            RETURN PKG_I9UTILITARIO.CALCULAR_SUGESTAO_COMPLETA( ' +
        'PCODFILIAL, PCODBARRAS, PTIPOSUGESTAO );'
      '        END IF;'
      ''
      ''
      '        /*C'#191'DIGO DO PRODUTO VINCULADO AO C'#191'DIGO DE BARRAS*/'
      '        SELECT   MAX( CODPROD )'
      '          INTO   VCODPROD'
      '          FROM   PCEMBALAGEM'
      '         WHERE   CODFILIAL = PCODFILIAL'
      '             AND CODAUXILIAR = PCODBARRAS;'
      ''
      
        '        /*Buscar percentual de varia'#191#191'o entre embalagens e faz t' +
        'ratativas.*/'
      
        '        SELECT   DECODE( NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ' +
        '), 0, 1, NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ) )'
      '          INTO   VPERCVARIACAO'
      '          FROM   PCEMBALAGEM'
      '         WHERE   PCEMBALAGEM.CODAUXILIAR = PCODBARRAS'
      '             AND PCEMBALAGEM.CODFILIAL = PCODFILIAL;'
      ''
      '        /*BUSCAR QTUNIT DA EMBALAGEM*/'
      
        '        SELECT   NVL( QTUNIT, 1 ), DECODE( NVL( FATORPRECO, 1 ),' +
        ' 0, 1, NVL( FATORPRECO, 1 ) )'
      '          INTO   VQTUNITEMBALAGEM, VFATORPRECO'
      '          FROM   PCEMBALAGEM'
      '         WHERE   CODFILIAL = PCODFILIAL'
      '             AND CODAUXILIAR = PCODBARRAS;'
      ''
      
        '        SELECT   PKG_I9UTILITARIO.BUSCACUSTO( PCODFILIAL, VCODPR' +
        'OD ) INTO VCUSTO FROM DUAL;'
      ''
      
        '        VCUSTO := VCUSTO * VQTUNITEMBALAGEM; /*UTILIZA CUSTO COM' +
        ' BASE NA EMBALAGEM.*/'
      ''
      '        /*BUSCA MARGEM DO PRODUTO*/'
      
        '        SELECT   PKG_I9UTILITARIO.BUSCA_MARGEM_PRODUTO( PCODFILI' +
        'AL, VCODPROD, PTIPOSUGESTAO ) INTO VMARGEM FROM DUAL;'
      ''
      '        /*FAZ C'#191'LCULO DO PRE'#191'O DE SUGEST'#191'O*/'
      '        IF ( ( NVL( VMARGEM, 0 ) <> 0 )'
      '        AND ( NVL( VMARGEM, 100 ) < 100 ) ) THEN'
      
        '            VRESULTADO := VCUSTO + ( ( VCUSTO * VMARGEM ) / ( 10' +
        '0 - VMARGEM ) );'
      '        ELSE'
      '            VRESULTADO := VCUSTO;'
      '        END IF;'
      ''
      '        /*APLICA PERCENTUAL DE VARIACAO DE CADA EMBALAGEM*/'
      '        VRESULTADO := ( VRESULTADO * VPERCVARIACAO );'
      ''
      '        IF PTIPOSUGESTAO = '#39'ATACADO'#39' THEN'
      '            VRESULTADO := ( VRESULTADO * VFATORPRECO );'
      '        END IF;'
      ''
      '        RETURN ROUND( VRESULTADO, 2 );'
      '    END;'
      ''
      ''
      
        '    /*FUN'#191#191'ES MATEM'#191'TICAS---------------------------------------' +
        '-----------------------------------  */'
      ''
      '    /*FUN'#191#191'O RETORNA DIFEREN'#191'A DE MARGEM ENTRE DOIS VALORES.*/'
      
        '    FUNCTION DIFERENCA_ENTRE_MARGENS( PVALOR1 IN NUMBER, PVALOR2' +
        ' IN NUMBER )'
      '        RETURN NUMBER'
      '    IS'
      '        VDIFERENCA NUMBER( 18, 6 );'
      '        VRESULTADO NUMBER( 18, 6 );'
      '    BEGIN'
      '        VRESULTADO := 0;'
      ''
      '        IF NVL( PVALOR1, 0 ) > 0'
      '       AND NVL( PVALOR2, 0 ) > 0 THEN'
      '            VDIFERENCA := ( PVALOR1 - PVALOR2 );'
      
        '            VRESULTADO := ROUND( ( VDIFERENCA / PVALOR1 ) * 100,' +
        ' 2 );'
      '        END IF;'
      ''
      ''
      '        RETURN ROUND( VRESULTADO, 2 );'
      '    END;'
      ''
      ''
      
        '    FUNCTION GETPERCENTUAL( PVALOR1 IN NUMBER, PVALOR2 IN NUMBER' +
        ' )'
      '        RETURN NUMBER'
      '    IS'
      '        VDIFERENCA NUMBER( 18, 6 );'
      '        VRESULTADO NUMBER( 18, 6 );'
      '    BEGIN'
      '        VRESULTADO := 0;'
      ''
      '        IF PVALOR1 = 0 THEN'
      '            VRESULTADO := 100;'
      '        ELSE'
      '            VDIFERENCA := ( PVALOR1 - PVALOR2 );'
      ''
      
        '            VRESULTADO := ROUND( ( VDIFERENCA / PVALOR1 ) * 100,' +
        ' 2 );'
      '        END IF;'
      ''
      ''
      '        RETURN ROUND( VRESULTADO, 2 ) * -1;'
      '    END;'
      ''
      '    FUNCTION ARREDONDAR_PRECO( PVALOR IN VARCHAR2 )'
      '        RETURN NUMBER'
      '    IS'
      '        DECIMAL NUMBER( 5, 2 );'
      '        INTEIRO NUMBER( 10, 0 );'
      '    BEGIN'
      '        IF PVALOR BETWEEN 0.01 AND 0.2 THEN'
      '            RETURN 0.19;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 0.21 AND 0.3 THEN'
      '            RETURN 0.29;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 0.31 AND 0.4 THEN'
      '            RETURN 0.39;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 0.41 AND 0.5 THEN'
      '            RETURN 0.49;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 0.51 AND 0.6 THEN'
      '            RETURN 0.59;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 0.61 AND 0.7 THEN'
      '            RETURN 0.69;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 0.71 AND 0.8 THEN'
      '            RETURN 0.79;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 0.81 AND 0.9 THEN'
      '            RETURN 0.89;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 0.91 AND 1.09 THEN'
      '            RETURN 0.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1.1 AND 1.15 THEN'
      '            RETURN 1.15;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1.16 AND 1.23 THEN'
      '            RETURN 1.19;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1.24 AND 1.33 THEN'
      '            RETURN 1.29;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1.34 AND 1.43 THEN'
      '            RETURN 1.39;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1.44 AND 1.53 THEN'
      '            RETURN 1.49;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1.54 AND 1.63 THEN'
      '            RETURN 1.59;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1.64 AND 1.73 THEN'
      '            RETURN 1.69;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1.74 AND 1.83 THEN'
      '            RETURN 1.79;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1.84 AND 1.93 THEN'
      '            RETURN 1.89;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1.94 AND 2.07 THEN'
      '            RETURN 1.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 2.08 AND 2.15 THEN'
      '            RETURN 2.15;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 2.16 AND 2.33 THEN'
      '            RETURN 2.29;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 2.34 AND 2.43 THEN'
      '            RETURN 2.39;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 2.44 AND 2.63 THEN'
      '            RETURN 2.59;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 2.64 AND 2.83 THEN'
      '            RETURN 2.79;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 2.84 AND 3.13 THEN'
      '            RETURN 2.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 3.14 AND 3.23 THEN'
      '            RETURN 3.19;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 3.24 AND 3.43 THEN'
      '            RETURN 3.39;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 3.44 AND 3.63 THEN'
      '            RETURN 3.59;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 3.64 AND 3.83 THEN'
      '            RETURN 3.79;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 3.84 AND 4.13 THEN'
      '            RETURN 3.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 4.14 AND 4.43 THEN'
      '            RETURN 4.39;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 4.44 AND 4.63 THEN'
      '            RETURN 4.59;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 4.64 AND 4.83 THEN'
      '            RETURN 4.79;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 4.84 AND 5.19 THEN'
      '            RETURN 4.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 5.2 AND 5.53 THEN'
      '            RETURN 5.49;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 5.54 AND 5.83 THEN'
      '            RETURN 5.79;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 5.84 AND 6.13 THEN'
      '            RETURN 5.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 6.14 AND 6.53 THEN'
      '            RETURN 6.49;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 6.54 AND 6.83 THEN'
      '            RETURN 6.79;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 6.84 AND 7.13 THEN'
      '            RETURN 6.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 7.14 AND 7.53 THEN'
      '            RETURN 7.49;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 7.54 AND 7.83 THEN'
      '            RETURN 7.79;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 7.84 AND 8.13 THEN'
      '            RETURN 7.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 8.14 AND 8.53 THEN'
      '            RETURN 8.49;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 8.54 AND 8.83 THEN'
      '            RETURN 8.79;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 8.84 AND 9.13 THEN'
      '            RETURN 8.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 9.14 AND 9.53 THEN'
      '            RETURN 9.49;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 9.54 AND 10.5 THEN'
      '            RETURN 9.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 10.51 AND 10.99 THEN'
      '            RETURN 10.79;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 11 AND 11.53 THEN'
      '            RETURN 11.49;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 11.54 AND 12.03 THEN'
      '            RETURN 11.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 12.04 AND 12.53 THEN'
      '            RETURN 12.49;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 12.54 AND 13.03 THEN'
      '            RETURN 12.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 13.04 AND 13.53 THEN'
      '            RETURN 13.49;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 13.54 AND 14.03 THEN'
      '            RETURN 13.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 14.04 AND 14.53 THEN'
      '            RETURN 14.49;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 14.54 AND 15.03 THEN'
      '            RETURN 14.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 15.04 AND 15.53 THEN'
      '            RETURN 15.49;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 15.54 AND 16.03 THEN'
      '            RETURN 15.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 16.04 AND 16.53 THEN'
      '            RETURN 16.49;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 16.54 AND 17.03 THEN'
      '            RETURN 16.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 17.04 AND 17.53 THEN'
      '            RETURN 17.49;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 17.54 AND 18.03 THEN'
      '            RETURN 17.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 18.04 AND 18.53 THEN'
      '            RETURN 18.49;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 18.54 AND 19.03 THEN'
      '            RETURN 18.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 19.04 AND 19.53 THEN'
      '            RETURN 19.49;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 19.54 AND 20.99 THEN'
      '            RETURN 19.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 21 AND 22.03 THEN'
      '            RETURN 21.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 22.04 AND 23.03 THEN'
      '            RETURN 22.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 23.04 AND 24.03 THEN'
      '            RETURN 23.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 24.04 AND 25.03 THEN'
      '            RETURN 24.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 25.04 AND 26.03 THEN'
      '            RETURN 25.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 26.04 AND 27.03 THEN'
      '            RETURN 26.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 27.04 AND 28.03 THEN'
      '            RETURN 27.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 28.04 AND 29.03 THEN'
      '            RETURN 28.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 29.04 AND 31.99 THEN'
      '            RETURN 29.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 32 AND 33.03 THEN'
      '            RETURN 32.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 33.04 AND 34.03 THEN'
      '            RETURN 33.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 34.04 AND 36.03 THEN'
      '            RETURN 35.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 36.04 AND 38.03 THEN'
      '            RETURN 37.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 38.04 AND 42.03 THEN'
      '            RETURN 39.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 42.04 AND 43.03 THEN'
      '            RETURN 42.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 43.04 AND 44.03 THEN'
      '            RETURN 43.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 44.04 AND 46.03 THEN'
      '            RETURN 45.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 46.04 AND 48.03 THEN'
      '            RETURN 47.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 48.04 AND 52.03 THEN'
      '            RETURN 49.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 52.04 AND 55.03 THEN'
      '            RETURN 54.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 55.04 AND 58.03 THEN'
      '            RETURN 57.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 58.04 AND 62.05 THEN'
      '            RETURN 59.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 62.06 AND 65.03 THEN'
      '            RETURN 64.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 65.04 AND 68.03 THEN'
      '            RETURN 67.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 68.04 AND 72.05 THEN'
      '            RETURN 69.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 72.06 AND 75.03 THEN'
      '            RETURN 74.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 75.04 AND 78.03 THEN'
      '            RETURN 77.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 78.04 AND 82.05 THEN'
      '            RETURN 79.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 82.06 AND 85.03 THEN'
      '            RETURN 84.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 85.04 AND 88.03 THEN'
      '            RETURN 87.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 88.04 AND 92.05 THEN'
      '            RETURN 89.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 92.06 AND 95.03 THEN'
      '            RETURN 94.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 95.04 AND 98.03 THEN'
      '            RETURN 97.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 98.04 AND 105.03 THEN'
      '            RETURN 99.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 105.04 AND 115.03 THEN'
      '            RETURN 109.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 115.04 AND 125.03 THEN'
      '            RETURN 119.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 125.04 AND 135.03 THEN'
      '            RETURN 129.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 135.04 AND 145.03 THEN'
      '            RETURN 139.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 145.04 AND 155.03 THEN'
      '            RETURN 149.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 155.04 AND 165.03 THEN'
      '            RETURN 159.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 165.04 AND 175.03 THEN'
      '            RETURN 169.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 175.04 AND 185.03 THEN'
      '            RETURN 179.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 185.04 AND 195.03 THEN'
      '            RETURN 189.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 195.04 AND 210.03 THEN'
      '            RETURN 199.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 210.04 AND 222.03 THEN'
      '            RETURN 219.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 222.04 AND 232.03 THEN'
      '            RETURN 229.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 232.04 AND 242.03 THEN'
      '            RETURN 239.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 242.04 AND 252.03 THEN'
      '            RETURN 249.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 252.04 AND 262.03 THEN'
      '            RETURN 259.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 262.04 AND 272.03 THEN'
      '            RETURN 269.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 272.04 AND 282.03 THEN'
      '            RETURN 279.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 282.04 AND 292.03 THEN'
      '            RETURN 289.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 292.04 AND 305.03 THEN'
      '            RETURN 299.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 305.04 AND 322.03 THEN'
      '            RETURN 319.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 322.04 AND 342.03 THEN'
      '            RETURN 339.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 342.04 AND 362.03 THEN'
      '            RETURN 359.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 362.04 AND 382.03 THEN'
      '            RETURN 379.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 382.04 AND 406.03 THEN'
      '            RETURN 399.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 406.04 AND 422.03 THEN'
      '            RETURN 419.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 422.04 AND 442.03 THEN'
      '            RETURN 439.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 442.04 AND 462.03 THEN'
      '            RETURN 459.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 462.04 AND 482.03 THEN'
      '            RETURN 479.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 482.04 AND 507.03 THEN'
      '            RETURN 499.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 507.04 AND 542.03 THEN'
      '            RETURN 539.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 542.04 AND 582.03 THEN'
      '            RETURN 579.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 582.04 AND 608.03 THEN'
      '            RETURN 599.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 608.04 AND 642.03 THEN'
      '            RETURN 639.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 642.04 AND 682.03 THEN'
      '            RETURN 679.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 682.04 AND 709.03 THEN'
      '            RETURN 699.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 709.04 AND 742.03 THEN'
      '            RETURN 739.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 742.04 AND 782.03 THEN'
      '            RETURN 779.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 782.04 AND 810.03 THEN'
      '            RETURN 799.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 810.04 AND 842.03 THEN'
      '            RETURN 839.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 842.04 AND 882.03 THEN'
      '            RETURN 879.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 882.04 AND 911.03 THEN'
      '            RETURN 899.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 911.04 AND 942.03 THEN'
      '            RETURN 939.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 942.04 AND 982.03 THEN'
      '            RETURN 979.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 982.04 AND 1012.03 THEN'
      '            RETURN 999.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1012.04 AND 1062.03 THEN'
      '            RETURN 1059.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1062.04 AND 1102.03 THEN'
      '            RETURN 1099.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1102.04 AND 1162.03 THEN'
      '            RETURN 1159.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1162.04 AND 1212.03 THEN'
      '            RETURN 1199.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1212.04 AND 1262.03 THEN'
      '            RETURN 1259.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1262.04 AND 1312.03 THEN'
      '            RETURN 1299.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1312.04 AND 1362.03 THEN'
      '            RETURN 1359.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1362.04 AND 1412.03 THEN'
      '            RETURN 1399.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1412.04 AND 1462.03 THEN'
      '            RETURN 1459.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1462.04 AND 1512.03 THEN'
      '            RETURN 1499.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1512.04 AND 1562.03 THEN'
      '            RETURN 1559.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1562.04 AND 1612.03 THEN'
      '            RETURN 1599.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1612.04 AND 1662.03 THEN'
      '            RETURN 1659.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1662.04 AND 1712.03 THEN'
      '            RETURN 1699.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1712.04 AND 1762.03 THEN'
      '            RETURN 1759.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1762.04 AND 1812.03 THEN'
      '            RETURN 1799.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1812.04 AND 1862.03 THEN'
      '            RETURN 1859.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1862.04 AND 1912.03 THEN'
      '            RETURN 1899.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1912.04 AND 1962.03 THEN'
      '            RETURN 1959.99;'
      '        END IF;'
      ''
      '        IF PVALOR BETWEEN 1962.04 AND 2022.03 THEN'
      '            RETURN 1999.99;'
      '        END IF;'
      ''
      ''
      '        RETURN PVALOR;'
      '    END;'
      ''
      '    FUNCTION APLICA_MARGEM( PCODFILIAL       IN VARCHAR2,'
      '                            PCODPROD         IN NUMBER,'
      '                            PCODBARRAS       IN NUMBER,'
      '                            MARGEM_APLICAR   IN NUMBER )'
      '        RETURN NUMBER'
      '    IS'
      '        VRESULTADO NUMBER( 18, 2 );'
      '        VCUSTO NUMBER( 18, 2 );'
      '        VPERCVARIACAO NUMBER( 18, 2 );'
      '        VQTUNITEMBALAGEM VARCHAR2( 50 );'
      '        VMARGEM NUMBER( 18, 2 );'
      '    BEGIN'
      
        '        /*Buscar percentual de varia'#191#191'o entre embalagens e faz t' +
        'ratativas.*/'
      
        '        SELECT   CASE WHEN NVL( PCEMBALAGEM.PERVARIACAOPTABELA, ' +
        '0 ) = 0 THEN 1 ELSE PCEMBALAGEM.PERVARIACAOPTABELA END'
      '                     PERVARIACAOPTABELA'
      '          INTO   VPERCVARIACAO'
      '          FROM   PCEMBALAGEM'
      '         WHERE   PCEMBALAGEM.CODAUXILIAR = PCODBARRAS'
      '             AND PCEMBALAGEM.CODFILIAL = PCODFILIAL;'
      ''
      '        /*BUSCAR QTUNIT DA EMBALAGEM*/'
      '        SELECT   NVL( QTUNIT, 1 )'
      '          INTO   VQTUNITEMBALAGEM'
      '          FROM   PCEMBALAGEM'
      '         WHERE   CODFILIAL = PCODFILIAL'
      '             AND CODAUXILIAR = PCODBARRAS;'
      ''
      
        '        SELECT   PKG_I9UTILITARIO.BUSCACUSTO( PCODFILIAL, PCODPR' +
        'OD ) INTO VCUSTO FROM DUAL;'
      ''
      
        '        VCUSTO := VCUSTO * VQTUNITEMBALAGEM; /*UTILIZA CUSTO COM' +
        ' BASE NA EMBALAGEM.*/'
      ''
      '        /*BUSCA MARGEM DO PRODUTO*/'
      '        VMARGEM := MARGEM_APLICAR;'
      ''
      '        /*FAZ C'#191'LCULO DO PRE'#191'O DE SUGEST'#191'O*/'
      '        IF ( ( NVL( VMARGEM, 0 ) <> 0 )'
      '        AND ( NVL( VMARGEM, 100 ) < 100 ) ) THEN'
      
        '            VRESULTADO := VCUSTO + ( ( VCUSTO * VMARGEM ) / ( 10' +
        '0 - VMARGEM ) );'
      '        ELSE'
      '            VRESULTADO := VCUSTO;'
      '        END IF;'
      ''
      '        /*APLICA PERCENTUAL DE VARIACAO DE CADA EMBALAGEM*/'
      '        VRESULTADO := VRESULTADO * VPERCVARIACAO;'
      ''
      '        RETURN ROUND( VRESULTADO, 2 );'
      '    END;'
      ''
      '        FUNCTION REMOVER_MARGEM( PRECO       IN NUMBER,'
      '                            MARGEM_APLICAR   IN NUMBER )'
      '        RETURN NUMBER'
      '    IS'
      '        VRESULTADO NUMBER( 18, 2 );'
      '    BEGIN'
      ''
      '        IF ( ( NVL( MARGEM_APLICAR, 0 ) <> 0 )'
      '        AND ( NVL( MARGEM_APLICAR, 100 ) < 100 ) ) THEN'
      
        '            VRESULTADO := PRECO * ( (100 - MARGEM_APLICAR) / 100' +
        ' );'
      '        ELSE'
      '            VRESULTADO := PRECO;'
      '        END IF;'
      ''
      '        /*APLICA PERCENTUAL DE VARIACAO DE CADA EMBALAGEM*/'
      '        VRESULTADO := VRESULTADO;'
      ''
      '        RETURN ROUND( VRESULTADO, 2 );'
      '    END;'
      ''
      ''
      ''
      
        '    FUNCTION COTACAO_DATA( PCODPROD IN NUMBER, PCODFILIAL IN VAR' +
        'CHAR2 )'
      '        RETURN DATE'
      '    IS'
      '        VDATA DATE;'
      '    BEGIN'
      '        BEGIN'
      '            SELECT   DATAULTIMACOTACAO'
      '              INTO   VDATA'
      
        '              FROM   (   SELECT   TRUNC( PCCOTAI.DATALANC ) DATA' +
        'ULTIMACOTACAO'
      '                           FROM   PCCOTAI, PCCOTAC'
      
        '                          WHERE   PCCOTAC.NUMPESQUISA = PCCOTAI.' +
        'NUMPESQUISA'
      
        '                              AND PCCOTAI.DATALANC BETWEEN ( SYS' +
        'DATE - 30 ) AND SYSDATE'
      
        '                              AND PCCOTAC.CODPROD = PCCOTAI.CODP' +
        'ROD'
      
        '                              AND PCCOTAI.CODPROD IN (SELECT   P' +
        'RODPRINC.CODPROD'
      
        '                                                        FROM   P' +
        'CPRODUT PRODPRINC'
      
        '                                                       WHERE   P' +
        'RODPRINC.CODPRODPRINC = (SELECT   CODPRODPRINC'
      
        '                                                                ' +
        '                           FROM   PCPRODUT'
      
        '                                                                ' +
        '                          WHERE   CODPROD = PCODPROD))'
      
        '                              AND PCCOTAI.CODFILIAL IN ( PCODFIL' +
        'IAL  )'
      '                       ORDER BY   PCCOTAI.DATALANC DESC )'
      '             WHERE   ROWNUM = 1;'
      ''
      ''
      '            RETURN VDATA;'
      '        EXCEPTION'
      '            WHEN NO_DATA_FOUND THEN'
      '                RETURN NULL;'
      '        END;'
      '    END;'
      ''
      
        '    FUNCTION CALCULAR_SUGESTAO_COMPLETA( PCODFILIAL IN VARCHAR2,' +
        ' PCODBARRAS IN NUMBER, PTIPOSUGESTAO VARCHAR2 )'
      '        RETURN NUMBER'
      '    IS'
      '        VCUSTO NUMBER( 18, 6 );'
      '        VMARGEM NUMBER( 18, 2 );'
      '        VRESULTADO NUMBER( 18, 2 );'
      '        VFATORPRECO NUMBER( 18, 2 );'
      '        VPERCVARIACAO NUMBER( 18, 2 );'
      '        VCODPROD NUMBER( 18 );'
      '        VTIPOCUSTO INTEGER;'
      '        VTIPOMARGEM VARCHAR2( 1 );'
      '        VQTUNITEMBALAGEM NUMBER( 18, 2 );'
      '        VCODST NUMBER( 10 );'
      '        VCODICMTAB NUMBER( 18, 6 );'
      '        VCODICMTABPF NUMBER( 18, 6 );'
      '        VPERDESCCUSTO NUMBER( 18, 6 );'
      '        VPERCCOMISSAO NUMBER( 18, 6 );'
      '        VIMPOSTOFEDERAL NUMBER( 18, 6 );'
      '        VINDICE NUMBER( 18, 6 );'
      '    BEGIN'
      '        /*C'#191'DIGO DO PRODUTO VINCULADO AO C'#191'DIGO DE BARRAS*/'
      '        SELECT   MAX( CODPROD )'
      '          INTO   VCODPROD'
      '          FROM   PCEMBALAGEM'
      '         WHERE   CODFILIAL = PCODFILIAL'
      '             AND CODAUXILIAR = PCODBARRAS;'
      ''
      
        '        /*Buscar percentual de varia'#191#191'o entre embalagens e faz t' +
        'ratativas.*/'
      
        '        SELECT   DECODE( NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ' +
        '), 0, 1, NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ) )'
      '          INTO   VPERCVARIACAO'
      '          FROM   PCEMBALAGEM'
      '         WHERE   PCEMBALAGEM.CODAUXILIAR = PCODBARRAS'
      '             AND PCEMBALAGEM.CODFILIAL = PCODFILIAL;'
      ''
      '        /*BUSCAR QTUNIT DA EMBALAGEM*/'
      
        '        SELECT   NVL( QTUNIT, 1 ), DECODE( NVL( FATORPRECO, 1 ),' +
        ' 0, 1, NVL( FATORPRECO, 1 ) )'
      '          INTO   VQTUNITEMBALAGEM, VFATORPRECO'
      '          FROM   PCEMBALAGEM'
      '         WHERE   CODFILIAL = PCODFILIAL'
      '             AND CODAUXILIAR = PCODBARRAS;'
      ''
      ''
      
        '        SELECT   PKG_I9UTILITARIO.BUSCACUSTO( PCODFILIAL, VCODPR' +
        'OD ) INTO VCUSTO FROM DUAL;'
      ''
      '        SELECT   CODST'
      '          INTO   VCODST'
      '          FROM   PCTABTRIB'
      '         WHERE   PCTABTRIB.CODPROD = VCODPROD'
      '             AND CODFILIALNF = PCODFILIAL'
      '             AND UFDESTINO = (SELECT   UF'
      '                                FROM   PCFILIAL'
      '                               WHERE   CODIGO = PCODFILIAL);'
      ''
      '        SELECT   NVL( PCTRIBUT.CODICMTAB, 0 ) CODICMTAB,'
      '                 NVL( PCTRIBUT.CODICMTABPF, 0 ) CODICMTABPF,'
      '                 NVL( PCTRIBUT.PERDESCCUSTO, 0 ) PERDESCCUSTO'
      '          INTO   VCODICMTAB, VCODICMTABPF, VPERDESCCUSTO'
      '          FROM   PCTRIBUT'
      '         WHERE   CODST = VCODST;'
      ''
      '        /*CALCULAR DESCONTO DE CUSTO*/'
      '        IF VPERDESCCUSTO <> 0 THEN'
      
        '            VCUSTO := VCUSTO + ( VCUSTO * ( ( VPERDESCCUSTO / 10' +
        '0 ) * -1 ) );'
      '        END IF;'
      ''
      '        SELECT   NVL( PCPRODUT.PCOMREP1, 0 ) COMISSAO'
      '          INTO   VPERCCOMISSAO'
      '          FROM   PCPRODUT'
      '         WHERE   CODPROD = VCODPROD;'
      ''
      
        '        SELECT   NVL( PCCONSUM.TXVENDA, 0 ) IMPOSTOFEDERAL INTO ' +
        'VIMPOSTOFEDERAL FROM PCCONSUM;'
      ''
      ''
      ''
      
        '        VCUSTO := VCUSTO * VQTUNITEMBALAGEM; /*UTILIZA CUSTO COM' +
        ' BASE NA EMBALAGEM.*/'
      ''
      '        /*BUSCA MARGEM DO PRODUTO*/'
      
        '        SELECT   PKG_I9UTILITARIO.BUSCA_MARGEM_PRODUTO( PCODFILI' +
        'AL, VCODPROD, PTIPOSUGESTAO ) INTO VMARGEM FROM DUAL;'
      ''
      
        '        SELECT   ( 100 - ( VIMPOSTOFEDERAL + VPERCCOMISSAO + VCO' +
        'DICMTABPF + VMARGEM ) ) / 100 INDICE_CALCULO'
      '          INTO   VINDICE'
      '          FROM   DUAL;'
      ''
      '        /*FAZ C'#191'LCULO DO PRE'#191'O DE SUGEST'#191'O*/'
      '        IF ( ( NVL( VMARGEM, 0 ) <> 0 )'
      '        AND ( NVL( VMARGEM, 100 ) < 100 ) ) THEN'
      
        '            VRESULTADO := VCUSTO + ( ( VCUSTO * VMARGEM ) / ( 10' +
        '0 - VMARGEM ) );'
      '        ELSE'
      '            VRESULTADO := VCUSTO;'
      '        END IF;'
      ''
      '        /*APLICA PERCENTUAL DE VARIACAO DE CADA EMBALAGEM*/'
      '        VRESULTADO := ( VRESULTADO * VPERCVARIACAO );'
      ''
      '        VRESULTADO := ( VCUSTO / VINDICE );'
      ''
      '        IF PTIPOSUGESTAO = '#39'ATACADO'#39' THEN'
      '            VRESULTADO := ( VRESULTADO * VFATORPRECO );'
      '        END IF;'
      ''
      '        RETURN ROUND( VRESULTADO, 2 );'
      '    END;'
      ''
      
        '    FUNCTION COTACAO_PRECO( PCODPROD IN NUMBER, PCODFILIAL IN VA' +
        'RCHAR2, TIPO IN VARCHAR2 )'
      '        RETURN NUMBER'
      '    IS'
      '        VRESULTADO NUMBER( 18, 6 );'
      '        VVAREJO NUMBER( 18, 6 );'
      '        VATACADO NUMBER( 18, 6 );'
      '        VCRM NUMBER( 18, 6 );'
      '        VPESQUISACLUSTERI9 VARCHAR2( 1 );'
      '    BEGIN'
      '        BEGIN'
      
        '               SELECT PVENDACONCORRENTE, PVENDAATACCONCORRENTE, ' +
        'PVENDACRMCONCORRENTE'
      '                  INTO VVAREJO, VATACADO, VCRM'
      
        '                  FROM ( SELECT TO_CHAR( TRUNC( PCCOTAI.DATALANC' +
        ' ) ) DATAULTIMACOTACAO,'
      
        '                                ( PCCOTAI.PUNIT ) PVENDACONCORRE' +
        'NTE,'
      
        '                                ( PCCOTAI.PUNITATAC ) PVENDAATAC' +
        'CONCORRENTE,'
      
        '                                ( PCCOTAI.PUNITCRM ) PVENDACRMCO' +
        'NCORRENTE'
      '                           FROM PCCOTAI, PCCOTAC'
      
        '                          WHERE PCCOTAC.NUMPESQUISA = PCCOTAI.NU' +
        'MPESQUISA'
      
        '                            AND PCCOTAI.DATALANC BETWEEN ( SYSDA' +
        'TE - 30 ) AND SYSDATE'
      
        '                            AND PCCOTAC.CODPROD = PCCOTAI.CODPRO' +
        'D'
      
        '                            AND PCCOTAI.CODPROD IN ( SELECT PROD' +
        'PRINC.CODPROD'
      
        '                                                      FROM PCPRO' +
        'DUT PRODPRINC'
      
        '                                                     WHERE PRODP' +
        'RINC.CODPRODPRINC ='
      
        '                                                               (' +
        'SELECT CODPRODPRINC'
      
        '                                                                ' +
        '  FROM PCPRODUT'
      
        '                                                                ' +
        ' WHERE CODPROD = PCODPROD) )'
      
        '                            AND PCCOTAI.CODFILIAL IN ( PCODFILIA' +
        'L  )'
      '                         ORDER BY PCCOTAI.DATALANC DESC )'
      '                 WHERE ROWNUM = 1;'
      ''
      ''
      '                IF TIPO = '#39'ATACADO'#39' THEN'
      '                    VRESULTADO := VATACADO;'
      '                END IF;'
      ''
      '                IF TIPO = '#39'VAREJO'#39' THEN'
      '                    VRESULTADO := VVAREJO;'
      '                END IF;'
      ''
      '                IF TIPO = '#39'CRM'#39' THEN'
      '                    VRESULTADO := VCRM;'
      '                END IF;'
      ''
      ''
      '            RETURN VRESULTADO;'
      '        EXCEPTION'
      '            WHEN NO_DATA_FOUND THEN'
      '                RETURN NULL;'
      '        END;'
      '    END;'
      ''
      
        '    PROCEDURE ATUALIZAR_ETIQUETAS( P_CODFILIAL    VARCHAR2 DEFAU' +
        'LT NULL,'
      
        '                                   P_CODPROD      VARCHAR2 DEFAU' +
        'LT NULL,'
      
        '                                   P_COMMITAR     VARCHAR2 DEFAU' +
        'LT '#39'S'#39' )'
      '    IS'
      '    BEGIN'
      '        FOR REG IN ( SELECT   DISTINCT CODFILIAL, CODPROD'
      '                       FROM   PCEMBALAGEM'
      
        '                      WHERE   DECODE( NVL( PCEMBALAGEM.QTMULTIPL' +
        'A, 0 ),'
      
        '                                      0, NVL( PCEMBALAGEM.QTMINI' +
        'MAATACADO, 0 ),'
      
        '                                      NVL( PCEMBALAGEM.QTMULTIPL' +
        'A, 0 ) ) > 0'
      
        '                          AND NVL( PCEMBALAGEM.PVENDA, 0 ) <> NV' +
        'L( PCEMBALAGEM.PVENDAATAC, 0 )'
      
        '                          AND NVL( PCEMBALAGEM.PVENDAATAC, 0 ) >' +
        ' 0'
      '                          /*AND PCEMBALAGEM.DTINATIVO IS NULL*/'
      
        '                          AND PCEMBALAGEM.CODFILIAL = NVL( P_COD' +
        'FILIAL, PCEMBALAGEM.CODFILIAL )'
      
        '                          AND PCEMBALAGEM.CODPROD = NVL( P_CODPR' +
        'OD, PCEMBALAGEM.CODPROD )'
      
        '                          AND PCEMBALAGEM.CODFILIAL IN ( SELECT ' +
        '  DISTINCT CODFILIAL FROM PCCAIXA)'
      
        '                          AND NVL( LAYOUTETIQUETA, '#39'X'#39' ) <> '#39'ETQ' +
        '2012 DIA A DIA ATACADO.rtm'#39' )'
      '        LOOP'
      '            UPDATE   PCEMBALAGEM'
      
        '               SET   LAYOUTETIQUETA = '#39'ETQ2012 DIA A DIA ATACADO' +
        '.rtm'#39', DTATUALIZACAOETIQUETA = SYSDATE'
      '             WHERE   CODFILIAL = REG.CODFILIAL'
      '                 AND CODPROD = REG.CODPROD;'
      ''
      '            IF P_COMMITAR = '#39'S'#39' THEN'
      '                COMMIT;'
      '            END IF;'
      '        END LOOP;'
      ''
      ''
      ''
      '        FOR REG'
      '        IN ( SELECT   DISTINCT CODFILIAL, CODPROD'
      '               FROM   PCEMBALAGEM'
      '              WHERE   1 = 1'
      
        '                  AND ( ( DECODE( NVL( PCEMBALAGEM.QTMULTIPLA, 0' +
        ' ),'
      
        '                                  0, NVL( PCEMBALAGEM.QTMINIMAAT' +
        'ACADO, 0 ),'
      
        '                                  NVL( PCEMBALAGEM.QTMULTIPLA, 0' +
        ' ) ) = 0 )'
      
        '                    OR ( NVL( PCEMBALAGEM.PVENDA, 0 ) = NVL( PCE' +
        'MBALAGEM.PVENDAATAC, 0 ) )'
      '                    OR ( EXISTS'
      '                            (SELECT   1'
      
        '                               FROM   PCOFERTAPROGRAMADAC X, PCO' +
        'FERTAPROGRAMADAI I'
      '                              WHERE   X.CODOFERTA = I.CODOFERTA'
      
        '                                  AND X.CODFILIAL = PCEMBALAGEM.' +
        'CODFILIAL'
      
        '                                  AND TRUNC( SYSDATE ) BETWEEN X' +
        '.DTINICIAL AND X.DTFINAL'
      '                                  AND I.CODAUXILIAR IN'
      
        '                                              (SELECT   CODAUXIL' +
        'IAR'
      
        '                                                 FROM   PCEMBALA' +
        'GEM PE'
      
        '                                                WHERE   PE.CODFI' +
        'LIAL = PCEMBALAGEM.CODFILIAL'
      
        '                                                    AND PE.CODPR' +
        'OD = NVL( PCEMBALAGEM.CODPROD, PCEMBALAGEM.CODPROD ))) ) )'
      
        '                  AND PCEMBALAGEM.CODFILIAL = NVL( P_CODFILIAL, ' +
        'PCEMBALAGEM.CODFILIAL )'
      
        '                  AND PCEMBALAGEM.CODPROD = NVL( P_CODPROD, PCEM' +
        'BALAGEM.CODPROD )'
      
        '                  AND PCEMBALAGEM.CODFILIAL IN ( SELECT   DISTIN' +
        'CT CODFILIAL FROM PCCAIXA)'
      
        '                  AND NVL( LAYOUTETIQUETA, '#39'X'#39' ) <> '#39'ETQ2012 DIA' +
        ' A DIA VAREJO.rtm'#39' )'
      '        LOOP'
      '            UPDATE   PCEMBALAGEM'
      
        '               SET   LAYOUTETIQUETA = '#39'ETQ2012 DIA A DIA VAREJO.' +
        'rtm'#39', DTATUALIZACAOETIQUETA = SYSDATE'
      '             WHERE   CODFILIAL = REG.CODFILIAL'
      '                 AND CODPROD = REG.CODPROD;'
      ''
      '            IF P_COMMITAR = '#39'S'#39' THEN'
      '                COMMIT;'
      '            END IF;'
      '        END LOOP;'
      ''
      ''
      '        FOR REG IN ( SELECT   DISTINCT CODFILIAL, CODPROD'
      '                       FROM   PCEMBALAGEM'
      
        '                      WHERE   PCEMBALAGEM.CODFILIAL = NVL( P_COD' +
        'FILIAL, PCEMBALAGEM.CODFILIAL )'
      
        '                          AND PCEMBALAGEM.CODPROD = NVL( P_CODPR' +
        'OD, PCEMBALAGEM.CODPROD )'
      
        '                          AND PKG_I9CLUBECRM.BUSCAPRECOCRM( PCEM' +
        'BALAGEM.CODFILIAL, PCEMBALAGEM.CODAUXILIAR ) > 0 /*AND PCEMBALAG' +
        'EM.DTINATIVO IS NULL*/'
      
        '                          AND PCEMBALAGEM.CODFILIAL IN ( SELECT ' +
        '  DISTINCT CODFILIAL FROM PCCAIXA)'
      
        '                          AND NVL( LAYOUTETIQUETA, '#39'X'#39' ) <> '#39'ETQ' +
        '2012 Clube DIA A DIA.rtm'#39' )'
      '        LOOP'
      '            UPDATE   PCEMBALAGEM'
      
        '               SET   LAYOUTETIQUETA = '#39'ETQ2012 Clube DIA A DIA.r' +
        'tm'#39', DTATUALIZACAOETIQUETA = SYSDATE'
      '             WHERE   CODFILIAL = REG.CODFILIAL'
      '                 AND CODPROD = REG.CODPROD;'
      ''
      '            IF P_COMMITAR = '#39'S'#39' THEN'
      '                COMMIT;'
      '            END IF;'
      '        END LOOP;'
      '    END;'
      ''
      '    PROCEDURE ATUALIZAR_PRECOVENDA'
      '    IS'
      '    BEGIN'
      '        /*ATUALIZANCO PRECO DE VENDA*/'
      ''
      '        UPDATE   PCEMBALAGEM'
      
        '           SET   PCEMBALAGEM.PVENDA = PCEMBALAGEM.PTABELA, PCEMB' +
        'ALAGEM.DTULTALTPVENDA = SYSDATE'
      
        '         WHERE   TRUNC( PCEMBALAGEM.DTULTALTPTABELA ) BETWEEN TR' +
        'UNC( SYSDATE - 3 ) AND TRUNC( SYSDATE - 1 )'
      
        '             AND NVL( PCEMBALAGEM.PVENDA, 0 ) <> NVL( PCEMBALAGE' +
        'M.PTABELA, 0 );'
      ''
      '        COMMIT;'
      ''
      '        /*ATUALIZANDO PRE'#191'O DE ATACADO*/'
      ''
      '        UPDATE   PCEMBALAGEM'
      
        '           SET   PCEMBALAGEM.PVENDAATAC = PCEMBALAGEM.PTABELAATA' +
        'C, PCEMBALAGEM.DTULTALTPVENDAATAC = SYSDATE'
      
        '         WHERE   TRUNC( PCEMBALAGEM.DTULTALTPTABELAATAC ) BETWEE' +
        'N TRUNC( SYSDATE - 3 ) AND TRUNC( SYSDATE - 1 )'
      
        '             AND NVL( PCEMBALAGEM.PVENDAATAC, 0 ) <> NVL( PCEMBA' +
        'LAGEM.PTABELAATAC, 0 );'
      ''
      '        COMMIT;'
      ''
      '        /*APLICANDO PRE'#191'O DE VENDA / % DE DESCONTO NO CLUBE*/'
      ''
      '        UPDATE   PCDESCONTOFIDELIDADE'
      
        '           SET   PCDESCONTOFIDELIDADE.DTULTALTPVENDACRM = SYSDAT' +
        'E,'
      
        '                 PCDESCONTOFIDELIDADE.PVENDACRM = PCDESCONTOFIDE' +
        'LIDADE.PTABELACRM,'
      
        '                 PCDESCONTOFIDELIDADE.PERCDESCONTO = PCDESCONTOF' +
        'IDELIDADE.PERCDESCONTOTABELA'
      '         WHERE   1 = 1'
      
        '             AND NVL( PCDESCONTOFIDELIDADE.PVENDACRM, 0 ) <> NVL' +
        '( PCDESCONTOFIDELIDADE.PTABELACRM, 0 )'
      
        '             AND PCDESCONTOFIDELIDADE.DTULTALTPTABELACRM BETWEEN' +
        ' TRUNC( SYSDATE - 3 ) AND TRUNC( SYSDATE - 1 )'
      
        '             AND NVL( PCDESCONTOFIDELIDADE.TIPOTERCEIROPRECO, '#39'O' +
        #39' ) IN ('#39'A'#39', '#39'G'#39');'
      ''
      '        COMMIT;'
      ''
      ''
      
        '        /* RECALCULAR PRE'#191'OS DO CRM APOS APLICA'#191#191'O DOS NOVOS PRE' +
        #191'OS */'
      '        FOR REG'
      
        '        IN ( SELECT   DISTINCT PCEMBALAGEM.CODPROD, PCEMBALAGEM.' +
        'CODAUXILIAR, PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.PVENDA, PCEMBALA' +
        'GEM.PVENDAATAC'
      '               FROM   PCEMBALAGEM, PCDESCONTOFIDELIDADE'
      
        '              WHERE   PCEMBALAGEM.CODFILIAL = PCDESCONTOFIDELIDA' +
        'DE.CODFILIAL'
      
        '                  AND PCEMBALAGEM.CODPROD = PCDESCONTOFIDELIDADE' +
        '.CODPROD'
      
        '                  AND TRUNC( SYSDATE ) BETWEEN TRUNC( PCDESCONTO' +
        'FIDELIDADE.DTINICIAL )'
      
        '                                           AND  TRUNC( PCDESCONT' +
        'OFIDELIDADE.DTFINAL )'
      
        '                  AND NVL( PCDESCONTOFIDELIDADE.PVENDACRM, 0 ) >' +
        ' 0 )'
      '        LOOP'
      
        '            PKG_I9CLUBECRM.RECALCULARPRECOCRM( REG.CODFILIAL, RE' +
        'G.CODPROD, REG.PVENDA, REG.PVENDAATAC );'
      '            COMMIT;'
      '        END LOOP;'
      ''
      
        '        /*ATUALIZAR DATA DE PRE'#191'O ALTERADO, PARA QUE SAIA ETIQUE' +
        'TAS DO CLUBE (PRE'#191'OS DE CLUBE APLICADOS HOJE)*/'
      ''
      '        UPDATE   PCEMBALAGEM'
      
        '           SET   PCEMBALAGEM.DTULTALTPVENDA = SYSDATE, PCEMBALAG' +
        'EM.DTULTALTPVENDAATAC = SYSDATE'
      '         WHERE   ( CODFILIAL, CODPROD ) IN'
      '                         (SELECT   CODFILIAL, CODPROD'
      '                            FROM   PCDESCONTOFIDELIDADE'
      
        '                           WHERE   TRUNC( PCDESCONTOFIDELIDADE.D' +
        'TULTALTPVENDACRM ) = TRUNC( SYSDATE ));'
      ''
      '        COMMIT;'
      ''
      ''
      
        '        /*ATUALZIAR DATA DE PRE'#191'O ALTERADO, PARA QUE SAIA ETIQUE' +
        'TAS DO CLUBE (OFERTAS INICIADAS/FINALIZADAS HOJE)*/'
      ''
      '        UPDATE   PCEMBALAGEM'
      
        '           SET   PCEMBALAGEM.DTULTALTPVENDA = SYSDATE, PCEMBALAG' +
        'EM.DTULTALTPVENDAATAC = SYSDATE'
      
        '         WHERE   ( CODFILIAL, CODPROD ) IN (SELECT   CODFILIAL, ' +
        'CODPROD'
      
        '                                              FROM   PCDESCONTOF' +
        'IDELIDADE'
      
        '                                             WHERE   ( TRUNC( PC' +
        'DESCONTOFIDELIDADE.DTINICIAL ) = TRUNC( SYSDATE )'
      
        '                                                   OR TRUNC( PCD' +
        'ESCONTOFIDELIDADE.DTFINAL ) = TRUNC( SYSDATE - 1 ) ));'
      ''
      '        COMMIT;'
      '    END;'
      ''
      ''
      '    FUNCTION GETPROXNUMVERBA'
      '        RETURN NUMBER'
      '    IS'
      '        PRAGMA AUTONOMOUS_TRANSACTION;'
      '        V_PROXNUMVERBA NUMBER( 10 );'
      '    BEGIN'
      '        BEGIN'
      '                /*OBTER NUMERO DO PEDIDO DESTINO PCCONSUM*/'
      '                SELECT   PROXNUMVERBA'
      '                  INTO   V_PROXNUMVERBA'
      '                  FROM   PCCONSUM'
      '                 WHERE   ROWNUM = 1'
      '            FOR UPDATE   ;'
      ''
      '            /*ATUALIZAR PROXNUMPED NA PCCONSUM*/'
      '            UPDATE   PCCONSUM'
      
        '               SET   PROXNUMVERBA = ( NVL( PROXNUMVERBA, 1 ) + 1' +
        ' )'
      '             WHERE   ROWNUM = 1;'
      ''
      '            COMMIT;'
      ''
      '            RETURN V_PROXNUMVERBA;'
      '        EXCEPTION'
      '            WHEN OTHERS THEN'
      '                ROLLBACK;'
      
        '                PKG_I9UTILITARIO.GERAEXCEPTION( '#39'PROBLEMA AO OBT' +
        'ER PROXNUMVERBA.'#39', SQLERRM, $$PLSQL_LINE );'
      '        END;'
      '    END;'
      ''
      '    FUNCTION GETPROXNUMTRANSCRFOR'
      '        RETURN NUMBER'
      '    IS'
      '        PRAGMA AUTONOMOUS_TRANSACTION;'
      '        V_PROXNUMTRANSCRFOR NUMBER( 10 );'
      '    BEGIN'
      '        BEGIN'
      '                /*OBTER NUMERO DO PEDIDO DESTINO PCCONSUM*/'
      '                SELECT   PROXNUMTRANSCRFOR'
      '                  INTO   V_PROXNUMTRANSCRFOR'
      '                  FROM   PCCONSUM'
      '                 WHERE   ROWNUM = 1'
      '            FOR UPDATE   ;'
      ''
      '            /*ATUALIZAR PROXNUMPED NA PCCONSUM*/'
      '            UPDATE   PCCONSUM'
      
        '               SET   PROXNUMTRANSCRFOR = ( NVL( PROXNUMTRANSCRFO' +
        'R, 1 ) + 1 )'
      '             WHERE   ROWNUM = 1;'
      ''
      '            COMMIT;'
      ''
      '            RETURN V_PROXNUMTRANSCRFOR;'
      '        EXCEPTION'
      '            WHEN OTHERS THEN'
      '                ROLLBACK;'
      
        '                PKG_I9UTILITARIO.GERAEXCEPTION( '#39'PROBLEMA AO OBT' +
        'ER PROXNUMTRANSCRFOR.'#39', SQLERRM, $$PLSQL_LINE );'
      '        END;'
      '    END;'
      ''
      '    FUNCTION GETPROXNUMAPLIC'
      '        RETURN NUMBER'
      '    IS'
      '        PRAGMA AUTONOMOUS_TRANSACTION;'
      '        V_PROXNUMAPLIC NUMBER( 10 );'
      '    BEGIN'
      '        BEGIN'
      '                /*OBTER NUMERO DO PEDIDO DESTINO PCCONSUM*/'
      '                SELECT   PROXNUMAPLIC'
      '                  INTO   V_PROXNUMAPLIC'
      '                  FROM   PCCONSUM'
      '                 WHERE   ROWNUM = 1'
      '            FOR UPDATE   ;'
      ''
      '            /*ATUALIZAR PROXNUMPED NA PCCONSUM*/'
      '            UPDATE   PCCONSUM'
      
        '               SET   PROXNUMAPLIC = ( NVL( PROXNUMAPLIC, 1 ) + 1' +
        ' )'
      '             WHERE   ROWNUM = 1;'
      ''
      '            COMMIT;'
      ''
      '            RETURN V_PROXNUMAPLIC;'
      '        EXCEPTION'
      '            WHEN OTHERS THEN'
      '                ROLLBACK;'
      
        '                PKG_I9UTILITARIO.GERAEXCEPTION( '#39'PROBLEMA AO OBT' +
        'ER PROXNUMAPLIC.'#39', SQLERRM, $$PLSQL_LINE );'
      '        END;'
      '    END;'
      ''
      ''
      
        '    PROCEDURE GERAEXCEPTION( PMSG IN VARCHAR2, PMSGORACLE IN VAR' +
        'CHAR2, PLINHAERRO IN VARCHAR2 )'
      '    IS'
      '    BEGIN'
      '        RAISE_APPLICATION_ERROR('
      '                                 -20000,'
      '                                    CHR( 13 )'
      '                                 || '#39' ERRO LINHA '#39
      '                                 || PLINHAERRO'
      '                                 || '#39' : '#39
      '                                 || UPPER( PMSG )'
      '                                 || CHR( 13 )'
      '                                 || '#39' ERRO ORACLE: '#39
      '                                 || UPPER( PMSGORACLE )'
      '                                 || CHR( 13 ) );'
      '    END;'
      ''
      
        '    PROCEDURE GERAVERBA( PCODFILIAL                     VARCHAR2' +
        ','
      '                         PCODFORNECEDOR                 INTEGER,'
      
        '                         PTIPOPAGTOVERBA                VARCHAR2' +
        ','
      '                         PVALORTOTAL                    NUMBER,'
      
        '                         PHISTORICOREF                  VARCHAR2' +
        ','
      '                         PDTVENCVERBA                   DATE,'
      
        '                         PVERBAAPURAROURETROATIVO       VARCHAR2' +
        ','
      
        '                         PINCLUIRPCAPLICVERBA           VARCHAR2' +
        ','
      '                         PCODFUNC                       INTEGER,'
      
        '                         RETORNO                    OUT VARCHAR2' +
        ' )'
      '    IS'
      '        VPCVERBA PCVERBA%ROWTYPE;'
      '        VAPLICVERBAC PCAPLICVERBA%ROWTYPE;'
      '        VPCMOVCRFOR PCMOVCRFOR%ROWTYPE;'
      '        VNUMVERBA NUMBER( 18 );'
      '        VCODCONTA VARCHAR2( 50 );'
      '        VPROXNUMAPLIC NUMBER( 18 );'
      '        VPROXNUMTRANSCRFOR NUMBER( 18 );'
      '        VSALDOPCESTCRFOR NUMBER( 18, 2 );'
      ''
      
        '        FUNCTION GETCODCONTAVERBA( APURARRETROATIVO IN VARCHAR2 ' +
        ')'
      '            RETURN VARCHAR2'
      '        IS'
      '            VRETORNO VARCHAR2( 100 );'
      '        BEGIN'
      '            SELECT   PKG_I9UTILITARIO.BUSCAPARAMETRO('
      '                                                      '#39'99'#39','
      
        '                                                      DECODE( UP' +
        'PER( APURARRETROATIVO ),'
      
        '                                                              '#39'A' +
        'PURAR'#39', '#39'CON_CODCONTAREBAIXACMVAAPURAR'#39','
      
        '                                                              '#39'C' +
        'ON_CODCONTAREBAIXACMV'#39' ) )'
      '              INTO   VRETORNO'
      '              FROM   DUAL;'
      ''
      '            RETURN VRETORNO;'
      '        END;'
      ''
      
        '        PROCEDURE ATUALIZAPCESTCRFOR( CODFILIAL IN VARCHAR2, COD' +
        'FORNEC IN NUMBER, VALORTOTAL IN NUMBER )'
      '        IS'
      '            VRETORNO VARCHAR2( 10 );'
      '        BEGIN'
      '            UPDATE   PCESTCRFOR'
      
        '               SET   PCESTCRFOR.VALOR = ( NVL( PCESTCRFOR.VALOR,' +
        ' 0 ) + VALORTOTAL )'
      '             WHERE   PCESTCRFOR.CODFILIAL = CODFILIAL'
      '                 AND PCESTCRFOR.CODFORNEC = CODFORNEC;'
      ''
      '            IF ( SQL%ROWCOUNT = 0 ) THEN'
      
        '                INSERT INTO PCESTCRFOR( CODFILIAL, CODFORNEC, VA' +
        'LOR )'
      '                  VALUES   ( CODFILIAL, CODFORNEC, VALORTOTAL );'
      '            END IF;'
      '        END;'
      ''
      
        '        FUNCTION GETSALDOPCESTCRFOR( CODFILIAL IN VARCHAR2, CODF' +
        'ORNEC IN NUMBER, VALORTOTAL IN NUMBER )'
      '            RETURN NUMBER'
      '        IS'
      '            VRETORNO NUMBER( 18, 6 );'
      '        BEGIN'
      
        '            SELECT   SUM( NVL( PCESTCRFOR.VALOR, 0 ) + VALORTOTA' +
        'L ) SALDO'
      '              INTO   VRETORNO'
      '              FROM   PCESTCRFOR'
      '             WHERE   CODFILIAL = CODFILIAL'
      '                 AND CODFORNEC = CODFORNEC;'
      ''
      '            RETURN VRETORNO;'
      '        END;'
      '    BEGIN'
      
        '        /* ------------------BUSCA NUMERADORES----------------- ' +
        '*/'
      '        BEGIN'
      '            VNUMVERBA := GETPROXNUMVERBA;'
      
        '            VCODCONTA := GETCODCONTAVERBA( PVERBAAPURAROURETROAT' +
        'IVO );'
      '            VPROXNUMTRANSCRFOR := GETPROXNUMTRANSCRFOR;'
      
        '            VSALDOPCESTCRFOR := GETSALDOPCESTCRFOR( PCODFILIAL, ' +
        'PCODFORNECEDOR, PVALORTOTAL );'
      '        EXCEPTION'
      '            WHEN OTHERS THEN'
      
        '                PKG_I9UTILITARIO.GERAEXCEPTION( '#39'PROBLEMA AO OBT' +
        'ER NUMERADORES, EM GERA VERBA.'#39','
      '                                                SQLERRM,'
      '                                                $$PLSQL_LINE );'
      '        END;'
      ''
      '        BEGIN'
      
        '            /* ------------------INSERE PCVERBA ----------------' +
        '----*/'
      '            VPCVERBA.NUMVERBA := VNUMVERBA;'
      '            VPCVERBA.CODCONTA := VCODCONTA;'
      '            VPCVERBA.CODFILIAL := PCODFILIAL;'
      '            VPCVERBA.CODFORNEC := PCODFORNECEDOR;'
      '            VPCVERBA.DTEMISSAO := TRUNC( SYSDATE );'
      '            VPCVERBA.TIPO := '#39'1'#39';'
      '            VPCVERBA.REFERENCIA1 := PHISTORICOREF;'
      '            VPCVERBA.VALOR := PVALORTOTAL;'
      '            VPCVERBA.FORMAPGTO := PTIPOPAGTOVERBA;'
      '            VPCVERBA.REFERENCIA := PHISTORICOREF;'
      '            VPCVERBA.DTVENC := PDTVENCVERBA;'
      '            VPCVERBA.ORIGEM := '#39'M'#39';'
      '            VPCVERBA.DTAPURACAO := SYSDATE;'
      ''
      '            INSERT INTO PCVERBA'
      '              VALUES   VPCVERBA;'
      '        EXCEPTION'
      '            WHEN OTHERS THEN'
      
        '                PKG_I9UTILITARIO.GERAEXCEPTION( '#39'ERRO AO INSERIR' +
        ' CABE'#191'ALHO DA VERBA'#39', SQLERRM, $$PLSQL_LINE );'
      '        END;'
      ''
      '        BEGIN'
      
        '            /* -----------------INSERE PCMOVCRFOR---------------' +
        '--- */'
      '            VPCMOVCRFOR.NUMTRANSCRFOR := VPROXNUMTRANSCRFOR;'
      '            VPCMOVCRFOR.CODFILIAL := PCODFILIAL;'
      '            VPCMOVCRFOR.DATA := TRUNC( SYSDATE );'
      '            VPCMOVCRFOR.CODFORNEC := PCODFORNECEDOR;'
      '            VPCMOVCRFOR.TIPOVERBA := PTIPOPAGTOVERBA;'
      '            VPCMOVCRFOR.VALOR := PVALORTOTAL;'
      '            VPCMOVCRFOR.TIPO := '#39'D'#39';'
      '            VPCMOVCRFOR.HISTORICO1 := PHISTORICOREF;'
      '            VPCMOVCRFOR.HISTORICO2 := PHISTORICOREF;'
      '            VPCMOVCRFOR.NUMVERBA := VPCVERBA.NUMVERBA;'
      '            VPCMOVCRFOR.VLSALDO := VSALDOPCESTCRFOR;'
      
        '            VPCMOVCRFOR.HORA := TO_NUMBER( TO_CHAR( SYSDATE, '#39'hh' +
        '24'#39' ) );'
      
        '            VPCMOVCRFOR.MINUTO := TO_NUMBER( TO_CHAR( SYSDATE, '#39 +
        'mi'#39' ) );'
      '            VPCMOVCRFOR.CODCONTA := VCODCONTA;'
      '            VPCMOVCRFOR.CODFUNC := PCODFUNC;'
      ''
      '            INSERT INTO PCMOVCRFOR'
      '              VALUES   VPCMOVCRFOR;'
      '        EXCEPTION'
      '            WHEN OTHERS THEN'
      
        '                PKG_I9UTILITARIO.GERAEXCEPTION( '#39'PROBLEMA AO INS' +
        'ERIR PCMOVCRFOR'#39', SQLERRM, $$PLSQL_LINE );'
      '        END;'
      ''
      '        BEGIN'
      
        '            /* -----------------ATALIZA PCESTCR-----------------' +
        '- */'
      
        '            ATUALIZAPCESTCRFOR( PCODFILIAL, PCODFORNECEDOR, PVAL' +
        'ORTOTAL );'
      '        EXCEPTION'
      '            WHEN OTHERS THEN'
      
        '                PKG_I9UTILITARIO.GERAEXCEPTION( '#39'ERRO AO ATUALIZ' +
        'AR PCESTCR'#39', SQLERRM, $$PLSQL_LINE );'
      '        END;'
      ''
      '        IF UPPER( NVL( PINCLUIRPCAPLICVERBA, '#39'N'#39' ) ) = '#39'S'#39' THEN'
      '            BEGIN'
      '                VPROXNUMAPLIC := GETPROXNUMAPLIC;'
      '            EXCEPTION'
      '                WHEN OTHERS THEN'
      
        '                    PKG_I9UTILITARIO.GERAEXCEPTION( '#39'ERRO AO OBT' +
        'ER CHAVE PRIMARIA PROXNUMAPLIC'#39','
      '                                                    SQLERRM,'
      
        '                                                    $$PLSQL_LINE' +
        ' );'
      '            END;'
      ''
      '            BEGIN'
      '                UPDATE   PCAPLICVERBA'
      '                   SET   CODFILIAL = VPCVERBA.CODFILIAL,'
      '                         NUMVERBA = VPCVERBA.NUMVERBA,'
      '                         DTAPLIC = TRUNC( SYSDATE ),'
      '                         CODCONTA = VPCVERBA.CODCONTA,'
      '                         VLAPLIC = PVALORTOTAL,'
      '                         REBAIXACUSTO = '#39'S'#39','
      '                         OBS1 = PHISTORICOREF,'
      '                         OBS2 = PHISTORICOREF,'
      '                         CODFUNCREBAIXA = PCODFUNC,'
      
        '                         DTCADASTRO = DECODE( DTCADASTRO, NULL, ' +
        'SYSDATE, DTCADASTRO )'
      '                 WHERE   NUMAPLIC = VPROXNUMAPLIC;'
      ''
      '                IF SQL%NOTFOUND THEN'
      '                    VAPLICVERBAC.NUMAPLIC := VPROXNUMAPLIC;'
      
        '                    VAPLICVERBAC.CODFILIAL := VPCVERBA.CODFILIAL' +
        ';'
      '                    VAPLICVERBAC.NUMVERBA := VPCVERBA.NUMVERBA;'
      '                    VAPLICVERBAC.DTAPLIC := TRUNC( SYSDATE );'
      '                    VAPLICVERBAC.CODCONTA := VPCVERBA.CODCONTA;'
      '                    VAPLICVERBAC.VLAPLIC := PVALORTOTAL;'
      '                    VAPLICVERBAC.REBAIXACUSTO := '#39'S'#39';'
      '                    VAPLICVERBAC.OBS1 := PHISTORICOREF;'
      '                    VAPLICVERBAC.OBS2 := PHISTORICOREF;'
      '                    VAPLICVERBAC.CODFUNCREBAIXA := PCODFUNC;'
      '                    VAPLICVERBAC.DTCADASTRO := SYSDATE;'
      ''
      '                    INSERT INTO PCAPLICVERBA'
      '                      VALUES   VAPLICVERBAC;'
      '                END IF;'
      '            EXCEPTION'
      '                WHEN OTHERS THEN'
      
        '                    PKG_I9UTILITARIO.GERAEXCEPTION( '#39'ERRO AO GER' +
        'AR PCAPLICVERBA'#39', SQLERRM, $$PLSQL_LINE );'
      '            END;'
      '        END IF;'
      ''
      '        RETORNO := VNUMVERBA;'
      '    END;'
      ''
      ''
      
        '    PROCEDURE GERAVERBA_PCAPLICVERBAI( PNUMVERBA              IN' +
        'TEGER,'
      
        '                                       PVERBAAPURADA          VA' +
        'RCHAR2,'
      
        '                                       PCODPROD               NU' +
        'MBER,'
      
        '                                       PVLUNITARIOVERBA       NU' +
        'MBER,'
      
        '                                       PDTINIVIGENCIA         DA' +
        'TE,'
      
        '                                       PDTFIMVIGENCIA         DA' +
        'TE,'
      
        '                                       PQTVENDA               NU' +
        'MBER,'
      
        '                                       PVLVERBATOTAL          NU' +
        'MBER,'
      
        '                                       POBS                   VA' +
        'RCHAR2,'
      
        '                                       RETORNO            OUT VA' +
        'RCHAR2 )'
      '    IS'
      '        VPCVERBA PCVERBA%ROWTYPE;'
      '        VPROXNUMAPLIC INTEGER;'
      '        VPCEST PCEST%ROWTYPE;'
      '        VAPLICVERBAI PCAPLICVERBAI%ROWTYPE;'
      '        VAPLICVERBAC PCAPLICVERBA%ROWTYPE;'
      ''
      '        FUNCTION GETNUMAPLIC( PNUMVERBA IN INTEGER )'
      '            RETURN NUMBER'
      '        IS'
      '            VRETORNO NUMBER( 18 );'
      '        BEGIN'
      '            SELECT   NUMAPLIC'
      '              INTO   VRETORNO'
      '              FROM   PCAPLICVERBA'
      '             WHERE   NUMVERBA = PNUMVERBA;'
      ''
      '            RETURN VRETORNO;'
      '        END;'
      '    BEGIN'
      '        BEGIN'
      '            SELECT   *'
      '              INTO   VPCVERBA'
      '              FROM   PCVERBA'
      '             WHERE   PCVERBA.NUMVERBA = PNUMVERBA;'
      '        EXCEPTION'
      '            WHEN OTHERS THEN'
      
        '                PKG_I9UTILITARIO.GERAEXCEPTION( '#39'PROBLEMA AO CON' +
        'SULTAR DADOS DA PCVERBA'#39', SQLERRM, $$PLSQL_LINE );'
      '        END;'
      ''
      '        BEGIN'
      '            SELECT   *'
      '              INTO   VPCEST'
      '              FROM   PCEST'
      '             WHERE   PCEST.CODPROD = PCODPROD'
      '                 AND PCEST.CODFILIAL = VPCVERBA.CODFILIAL;'
      '        EXCEPTION'
      '            WHEN OTHERS THEN'
      
        '                PKG_I9UTILITARIO.GERAEXCEPTION( '#39'PROBLEMA AO CON' +
        'SULTAR DADOS DA PCEST'#39', SQLERRM, $$PLSQL_LINE );'
      '        END;'
      ''
      '        BEGIN'
      '            VPROXNUMAPLIC := GETNUMAPLIC( VPCVERBA.NUMVERBA );'
      '        EXCEPTION'
      '            WHEN OTHERS THEN'
      
        '                PKG_I9UTILITARIO.GERAEXCEPTION( '#39'PROBLEMA AO OBT' +
        'ER PR'#191'XIMO N'#191'MERO DE APLICA'#191#191'O'#39','
      '                                                SQLERRM,'
      '                                                $$PLSQL_LINE );'
      '        END;'
      ''
      '        BEGIN'
      '            VAPLICVERBAI.NUMAPLIC := VPROXNUMAPLIC;'
      '            VAPLICVERBAI.CODFILIAL := VPCVERBA.CODFILIAL;'
      '            VAPLICVERBAI.NUMVERBA := VPCVERBA.NUMVERBA;'
      '            VAPLICVERBAI.DTAPLIC := TRUNC( SYSDATE );'
      '            VAPLICVERBAI.CODCONTA := VPCVERBA.CODCONTA;'
      '            VAPLICVERBAI.CONDVENDA := 1;'
      
        '            VAPLICVERBAI.CUSTOFINATUAL := NVL( VPCEST.CUSTOFIN, ' +
        '0 ) - PVLUNITARIOVERBA;'
      '            VAPLICVERBAI.VLAPLICUNITARIO := PVLUNITARIOVERBA;'
      '            VAPLICVERBAI.CODCLI := 0;'
      '            VAPLICVERBAI.ROTINALANC := '#39'PCSIS1831.EXE'#39';'
      '            VAPLICVERBAI.CODPROD := VPCEST.CODPROD;'
      '            VAPLICVERBAI.QTESTGER := VPCEST.QTESTGER;'
      '            VAPLICVERBAI.CUSTOFINANT := VPCEST.CUSTOFIN;'
      '            VAPLICVERBAI.DTINICIOVIGENCIA := PDTINIVIGENCIA;'
      '            VAPLICVERBAI.DTFIMVIGENCIA := PDTFIMVIGENCIA;'
      ''
      '            IF PVERBAAPURADA = '#39'S'#39' THEN'
      '                VAPLICVERBAI.QTVENDA := PQTVENDA;'
      '                VAPLICVERBAI.VLAPLIC := PVLVERBATOTAL;'
      '            END IF;'
      ''
      '            INSERT INTO PCAPLICVERBAI'
      '              VALUES   VAPLICVERBAI;'
      '        EXCEPTION'
      '            WHEN OTHERS THEN'
      
        '                PKG_I9UTILITARIO.GERAEXCEPTION( '#39'PROBLEMA AO INS' +
        'ERER PCAPLICVERBAI'#39', SQLERRM, $$PLSQL_LINE );'
      '        END;'
      ''
      '        RETORNO := TO_CHAR( VPCVERBA.NUMVERBA );'
      '    END;'
      ''
      
        '    FUNCTION GETMETA( PCODFILIAL IN VARCHAR2, PDATAINI IN DATE, ' +
        'PDATAFIM IN DATE )'
      '        RETURN NUMBER'
      '    IS'
      '        VRETORNO NUMBER( 18, 6 );'
      '    BEGIN'
      '        IF PCODFILIAL = '#39'99'#39' THEN'
      '            SELECT   NVL( SUM( NVL( VLVENDAPREV, 0 ) ), 0 )'
      '              INTO   VRETORNO'
      '              FROM   PCMETASUP'
      '             WHERE   DATA BETWEEN PDATAINI AND PDATAFIM'
      
        '                 AND CODFILIAL IN (SELECT   DISTINCT CODFILIAL F' +
        'ROM PCCAIXA);'
      '        ELSE'
      '            SELECT   NVL( SUM( NVL( VLVENDAPREV, 0 ) ), 0 )'
      '              INTO   VRETORNO'
      '              FROM   PCMETASUP'
      '             WHERE   DATA BETWEEN PDATAINI AND PDATAFIM'
      '                 AND CODFILIAL IN (PCODFILIAL);'
      '        END IF;'
      ''
      '        RETURN ROUND( VRETORNO, 2 );'
      '    END;'
      '    '
      '  '
      
        '    PROCEDURE PRC_CALCULARVENDAS_SEMANA( PCODFILIAL IN VARCHAR2 ' +
        'DEFAULT NULL, PCODPROD IN NUMBER DEFAULT NULL )'
      '    IS'
      '        VDTINI DATE;'
      '        VDTFIM DATE;'
      '        VDTULTEXECUCAO DATE;'
      '        VQTVENDA NUMBER( 18, 3 );'
      '        VQTVENDA1 NUMBER( 18, 3 );'
      '        VQTVENDA2 NUMBER( 18, 3 );'
      '        VQTVENDA3 NUMBER( 18, 3 );'
      ''
      '        FUNCTION GETVENDAS( PCODFILIAL   IN VARCHAR2,'
      '                            PCODPROD     IN NUMBER,'
      '                            DTINI        IN DATE,'
      '                            DTFIM        IN DATE )'
      '            RETURN NUMBER'
      '        IS'
      '            VRETORNO NUMBER;'
      '        BEGIN'
      '            SELECT   SUM( NVL( PCPEDI.QT, 0 ) )'
      '              INTO   VRETORNO'
      '              FROM   PCPEDC, PCPEDI'
      '             WHERE   PCPEDC.NUMPED = PCPEDI.NUMPED'
      '                 AND PCPEDC.DATA = PCPEDI.DATA'
      '                 AND PCPEDC.DTCANCEL IS NULL'
      '                 AND PCPEDC.POSICAO = '#39'F'#39
      '                 AND PCPEDC.CONDVENDA = '#39'1'#39
      '                 AND PCPEDC.CODFILIAL = PCODFILIAL'
      '                 AND PCPEDI.CODPROD = PCODPROD'
      
        '                 AND PCPEDC.DATA BETWEEN TO_DATE( DTINI, '#39'DD/MM/' +
        'YYYY'#39' ) AND TO_DATE( DTFIM, '#39'DD/MM/YYYY'#39' );'
      ''
      '            RETURN VRETORNO;'
      '        END;'
      ''
      '        FUNCTION GETDTULTEXECUCAO'
      '            RETURN DATE'
      '        IS'
      '            VRETORNO DATE;'
      '        BEGIN'
      '            SELECT   MAX( DTINTEGRACAO )'
      '              INTO   VRETORNO'
      '              FROM   I9CONTROLEINTEGRACAO'
      '             WHERE   INTEGRACAO = '#39'JOB_MESDIA_227'#39
      '                 AND TIPO = '#39'SEMANA'#39';'
      ''
      '            RETURN VRETORNO;'
      '        END;'
      ''
      '        PROCEDURE ATUALIZAULTDTEXECUCAO'
      '        IS'
      '        BEGIN'
      '            UPDATE I9CONTROLEINTEGRACAO'
      '            SET DTINTEGRACAO = TRUNC(SYSDATE)'
      '             WHERE   INTEGRACAO = '#39'JOB_MESDIA_227'#39
      '                 AND TIPO = '#39'SEMANA'#39';'
      '            IF SQL%NOTFOUND THEN'
      '                INSERT INTO I9CONTROLEINTEGRACAO'
      '                (INTEGRACAO, TIPO, DTINTEGRACAO)'
      
        '                VALUES ('#39'JOB_MESDIA_227'#39', '#39'SEMANA'#39', TRUNC(SYSDAT' +
        'E));'
      '            END IF;'
      '        END;'
      '    BEGIN'
      
        '        SELECT   NEXT_DAY( SYSDATE, 1 ), NEXT_DAY( NEXT_DAY( SYS' +
        'DATE, 1 ), 7 )'
      '          INTO   VDTINI, VDTFIM'
      '          FROM   DUAL;'
      ''
      ''
      '        FOR FILIAIS IN (  SELECT   CODIGO'
      '                            FROM   PCFILIAL'
      
        '                           WHERE   NVL( PCODFILIAL, CODIGO ) = P' +
        'CFILIAL.CODIGO'
      
        '                               AND CODIGO IN (SELECT   DISTINCT ' +
        'CODFILIAL'
      '                                                FROM   PCCAIXA'
      
        '                                               WHERE   DTFIM IS ' +
        'NULL)'
      '                        ORDER BY   CODIGO )'
      '        LOOP'
      '            FOR PRODUTOS IN ( SELECT   CODPROD'
      '                                FROM   PCEST'
      
        '                               WHERE   NVL( PCODPROD, CODPROD ) ' +
        '= PCEST.CODPROD'
      
        '                                   AND CODFILIAL = FILIAIS.CODIG' +
        'O )'
      '            LOOP'
      '                /*SEMANA 0*/'
      '                VQTVENDA :='
      '                    GETVENDAS( FILIAIS.CODIGO,'
      '                               PRODUTOS.CODPROD,'
      '                               VDTINI - 7,'
      '                               VDTFIM - 7 );'
      ''
      
        '                VDTULTEXECUCAO := NVL(GETDTULTEXECUCAO(), TRUNC(' +
        'SYSDATE) - 2);'
      ''
      
        '                IF ( TO_CHAR( SYSDATE, '#39'D'#39' ) = '#39'1'#39' OR VDTULTEXEC' +
        'UCAO < TRUNC(SYSDATE)-1 ) THEN'
      '                    /*SEMANA 1*/'
      '                    VQTVENDA1 :='
      '                        GETVENDAS( FILIAIS.CODIGO,'
      '                                   PRODUTOS.CODPROD,'
      '                                   VDTINI - 14,'
      '                                   VDTFIM - 14 );'
      '                    /*SEMANA 2*/'
      '                    VQTVENDA2 :='
      '                        GETVENDAS( FILIAIS.CODIGO,'
      '                                   PRODUTOS.CODPROD,'
      '                                   VDTINI - 21,'
      '                                   VDTFIM - 21 );'
      '                    /*SEMANA 3*/'
      '                    VQTVENDA3 :='
      '                        GETVENDAS( FILIAIS.CODIGO,'
      '                                   PRODUTOS.CODPROD,'
      '                                   VDTINI - 28,'
      '                                   VDTFIM - 28 );'
      ''
      '                    UPDATE   PCEST'
      '                       SET   QTVENDSEMANA = VQTVENDA,'
      '                             QTVENDSEMANA1 = VQTVENDA1,'
      '                             QTVENDSEMANA2 = VQTVENDA2,'
      '                             QTVENDSEMANA3 = VQTVENDA3'
      '                     WHERE   CODPROD = PRODUTOS.CODPROD'
      '                         AND CODFILIAL = FILIAIS.CODIGO;'
      '                ELSE'
      '                    UPDATE   PCEST'
      '                       SET   QTVENDSEMANA = VQTVENDA'
      '                     WHERE   CODPROD = PRODUTOS.CODPROD'
      '                         AND CODFILIAL = FILIAIS.CODIGO;'
      '                END IF;'
      '            END LOOP;'
      '        END LOOP;'
      ''
      '        ATUALIZAULTDTEXECUCAO;'
      '    END;'
      ''
      
        '    PROCEDURE PRC_CALCULARVENDAS_MES( PCODFILIAL IN VARCHAR2 DEF' +
        'AULT NULL, PCODPROD IN NUMBER DEFAULT NULL )'
      '    IS'
      '        VDTINI DATE;'
      '        VDTFIM DATE;'
      '        VDTULTEXECUCAO DATE;'
      '        VQTVENDA NUMBER( 18, 3 );'
      '        VQTVENDA1 NUMBER( 18, 3 );'
      '        VQTVENDA2 NUMBER( 18, 3 );'
      '        VQTVENDA3 NUMBER( 18, 3 );'
      ''
      '        FUNCTION GETVENDAS( PCODFILIAL   IN VARCHAR2,'
      '                            PCODPROD     IN NUMBER,'
      '                            DTINI        IN DATE,'
      '                            DTFIM        IN DATE )'
      '            RETURN NUMBER'
      '        IS'
      '            VRETORNO NUMBER;'
      '        BEGIN'
      '            SELECT   SUM( NVL( PCPEDI.QT, 0 ) )'
      '              INTO   VRETORNO'
      '              FROM   PCPEDC, PCPEDI'
      '             WHERE   PCPEDC.NUMPED = PCPEDI.NUMPED'
      '                 AND PCPEDC.DATA = PCPEDI.DATA'
      '                 AND PCPEDC.DTCANCEL IS NULL'
      '                 AND PCPEDC.POSICAO = '#39'F'#39
      '                 AND PCPEDC.CONDVENDA = '#39'1'#39
      '                 AND PCPEDC.CODFILIAL = PCODFILIAL'
      '                 AND PCPEDI.CODPROD = PCODPROD'
      
        '                 AND PCPEDC.DATA BETWEEN TO_DATE( DTINI, '#39'DD/MM/' +
        'YYYY'#39' ) AND TO_DATE( DTFIM, '#39'DD/MM/YYYY'#39' );'
      ''
      '            RETURN VRETORNO;'
      '        END;'
      ''
      '        FUNCTION GETDTULTEXECUCAO'
      '            RETURN DATE'
      '        IS'
      '            VRETORNO DATE;'
      '        BEGIN'
      '            SELECT   MAX( DTINTEGRACAO )'
      '              INTO   VRETORNO'
      '              FROM   I9CONTROLEINTEGRACAO'
      '             WHERE   INTEGRACAO = '#39'JOB_MESDIA_227'#39
      '                 AND TIPO = '#39'MES'#39';'
      ''
      '            RETURN VRETORNO;'
      '        END;'
      ''
      '        PROCEDURE ATUALIZAULTDTEXECUCAO'
      '        IS'
      '        BEGIN'
      '            UPDATE I9CONTROLEINTEGRACAO'
      '            SET DTINTEGRACAO = TRUNC(SYSDATE)'
      '             WHERE   INTEGRACAO = '#39'JOB_MESDIA_227'#39
      '                 AND TIPO = '#39'MES'#39';'
      '            IF SQL%NOTFOUND THEN'
      '                INSERT INTO I9CONTROLEINTEGRACAO'
      '                (INTEGRACAO, TIPO, DTINTEGRACAO)'
      
        '                VALUES ('#39'JOB_MESDIA_227'#39', '#39'MES'#39', TRUNC(SYSDATE))' +
        ';'
      '            END IF;'
      '        END;'
      ''
      '    BEGIN'
      ''
      
        '        SELECT   TO_DATE( TO_CHAR( TRUNC( SYSDATE, '#39'MON'#39' ) ), '#39'D' +
        'D/MM/YYYY'#39' ), LAST_DAY( TRUNC(SYSDATE) )'
      '          INTO   VDTINI, VDTFIM'
      '          FROM   DUAL;'
      ''
      '        FOR FILIAIS IN (  SELECT   CODIGO'
      '                            FROM   PCFILIAL'
      
        '                           WHERE   NVL( PCODFILIAL, CODIGO ) = P' +
        'CFILIAL.CODIGO'
      
        '                               AND CODIGO IN (SELECT   DISTINCT ' +
        'CODFILIAL'
      '                                                FROM   PCCAIXA'
      
        '                                               WHERE   DTFIM IS ' +
        'NULL)'
      '                        ORDER BY   CODIGO )'
      '        LOOP'
      '            FOR PRODUTOS IN ( SELECT   CODPROD'
      '                                FROM   PCEST'
      
        '                               WHERE   NVL( PCODPROD, CODPROD ) ' +
        '= PCEST.CODPROD'
      
        '                                   AND CODFILIAL = FILIAIS.CODIG' +
        'O )'
      '            LOOP'
      '                /*MES 0*/'
      '                VQTVENDA :='
      '                    GETVENDAS( FILIAIS.CODIGO,'
      '                               PRODUTOS.CODPROD,'
      '                               VDTINI,'
      '                               VDTFIM );'
      ''
      
        '                VDTULTEXECUCAO := TRUNC(NVL(GETDTULTEXECUCAO(), ' +
        'TRUNC(SYSDATE) - 2));'
      ''
      
        '                IF ( TO_CHAR( TRUNC( SYSDATE ), '#39'DD'#39' ) = '#39'01'#39' OR' +
        ' VDTULTEXECUCAO < TRUNC(SYSDATE)-1 )  THEN'
      '                    /*MES 1*/'
      '                    VQTVENDA1 :='
      '                        GETVENDAS( FILIAIS.CODIGO,'
      '                                   PRODUTOS.CODPROD,'
      
        '                                   TO_DATE( TO_CHAR( TRUNC( ADD_' +
        'MONTHS( VDTINI, -1 ), '#39'MON'#39' ) ), '#39'DD/MM/YYYY'#39' ),'
      
        '                                   LAST_DAY( ADD_MONTHS( SYSDATE' +
        ', -1 ) ) );'
      '                    /*MES 2*/'
      '                    VQTVENDA2 :='
      '                        GETVENDAS( FILIAIS.CODIGO,'
      '                                   PRODUTOS.CODPROD,'
      
        '                                   TO_DATE( TO_CHAR( TRUNC( ADD_' +
        'MONTHS( VDTINI, -2 ), '#39'MON'#39' ) ), '#39'DD/MM/YYYY'#39' ),'
      
        '                                   LAST_DAY( ADD_MONTHS( SYSDATE' +
        ', -2 ) ) );'
      '                    /*MES 3*/'
      '                    VQTVENDA3 :='
      '                        GETVENDAS( FILIAIS.CODIGO,'
      '                                   PRODUTOS.CODPROD,'
      
        '                                   TO_DATE( TO_CHAR( TRUNC( ADD_' +
        'MONTHS( VDTINI, -3 ), '#39'MON'#39' ) ), '#39'DD/MM/YYYY'#39' ),'
      
        '                                   LAST_DAY( ADD_MONTHS( SYSDATE' +
        ', -3 ) ) );'
      ''
      '                    UPDATE   PCEST'
      '                       SET   QTVENDMES = VQTVENDA,'
      '                             QTVENDMES1 = VQTVENDA1,'
      '                             QTVENDMES2 = VQTVENDA2,'
      '                             QTVENDMES3 = VQTVENDA3'
      '                     WHERE   CODPROD = PRODUTOS.CODPROD'
      '                         AND CODFILIAL = FILIAIS.CODIGO;'
      '                ELSE'
      '                    UPDATE   PCEST'
      '                       SET   QTVENDMES = VQTVENDA'
      '                     WHERE   CODPROD = PRODUTOS.CODPROD'
      '                         AND CODFILIAL = FILIAIS.CODIGO;'
      '                END IF;'
      '            END LOOP;'
      '        END LOOP;'
      '        ATUALIZAULTDTEXECUCAO;'
      '    END;'
      'END;')
    Left = 601
    Top = 240
  end
  object JOB_REPLICAR_OFERTA: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'BEGIN'
      ' DBMS_SCHEDULER.CREATE_JOB ('
      '   job_name            =>  '#39'REPLICAR_OFERTA'#39', '
      '   job_type            =>  '#39'STORED_PROCEDURE'#39','
      '   job_action          =>  '#39'PKG_I9UTILITARIO.REPLICAR_OFERTA'#39','
      
        '   start_date          =>   TRUNC(SYSDATE + 1) - INTERVAL '#39'30'#39' m' +
        'inute,'
      '   repeat_interval     =>  '#39'FREQ=DAILY'#39','
      '   end_date => NULL,'
      '   enabled => TRUE,'
      '   restartable => TRUE,'
      '   auto_drop => FALSE);'
      'END;')
    Left = 1000
    Top = 184
  end
  object PRC_I9GERARANKING: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE PROCEDURE PRC_I9GERARANKING'
      'IS'
      'BEGIN'
      '    FOR FILIAL IN (SELECT CODIGO FROM PCFILIAL)'
      '    LOOP'
      '        FOR DADOS'
      '        IN (SELECT ROWNUM AS POS, CODPROD, CODFILIAL'
      '            FROM (SELECT PCPEDC.CODFILIAL,'
      '                         PCPEDI.CODPROD,'
      '                         PCPRODUT.DESCRICAO,'
      '                         PCPRODUT.CODFAB,'
      '                         PCPRODUT.EMBALAGEM,'
      '                         PCPRODUT.UNIDADE,'
      '                         PCFORNEC.FORNECEDOR,'
      '                         PCPRODUT.CLASSE,'
      '                         PCFORNEC.CODCOMPRADOR,'
      '                         (SELECT PCEMPR.NOME'
      '                          FROM PCEMPR'
      
        '                          WHERE PCFORNEC.CODCOMPRADOR = PCEMPR.M' +
        'ATRICULA)'
      '                             COMPRADOR,'
      
        '                         (CASE WHEN PCPRODUT.PESOBRUTO = 0 THEN ' +
        '0 ELSE (PCPRODUT.PESOBRUTO * SUM (PCPEDI.QT)) END) PESOBRUTO,'
      '                         SUM(DECODE (PCPEDC.CONDVENDA,'
      '                                     5, 0,'
      '                                     6, 0,'
      '                                     11, 0,'
      '                                     12, 0,'
      
        '                                     NVL (PCPEDI.QT, 0) * (NVL (' +
        'PCPEDI.PVENDA, 0) + NVL (PCPEDI.VLOUTRASDESP, 0) + NVL (PCPEDI.V' +
        'LFRETE, 0))))'
      '                             VLVENDA,'
      
        '                         SUM ( (PCPEDI.QT) * DECODE (PCPEDC.COND' +
        'VENDA, 6, 0, 11, 0, 12, 0, NVL (PCPEDI.VLCUSTOFIN, 0))) AS VLCUS' +
        'TOFIN,'
      
        '                         SUM (DECODE (PCPEDC.CONDVENDA, 5, 0, 6,' +
        ' 0, 11, 0, 12, 0, NVL (PCPEDI.QT, 0))) QT,'
      '                         SUM(DECODE (PCPEDC.CONDVENDA,'
      '                                     5, 0,'
      '                                     6, 0,'
      '                                     11, 0,'
      '                                     12, 0,'
      
        '                                     NVL (PCPEDI.QT, 0) / DECODE' +
        ' (NVL (PCPRODUT.QTUNITCX, 0), 0, 1, PCPRODUT.QTUNITCX)))'
      '                             AS QTCX,'
      
        '                         COUNT (DISTINCT (PCPEDC.NUMPED)) AS QTP' +
        'EDIDOS'
      '                  FROM PCPEDI,'
      '                       PCPEDC,'
      '                       PCCLIENT,'
      '                       PCPRODUT,'
      '                       PCPRACA,'
      '                       PCUSUARI,'
      '                       PCFORNEC,'
      '                       PCDEPTO,'
      '                       PCSUPERV'
      
        '                  WHERE     TO_CHAR (PCPEDC.DATA, '#39'MM/yyyy'#39') = T' +
        'O_CHAR (ADD_MONTHS (SYSDATE, -1), '#39'MM/yyyy'#39')'
      '                        AND PCPEDI.NUMPED = PCPEDC.NUMPED'
      '                        AND PCPEDI.CODPROD = PCPRODUT.CODPROD'
      
        '                        AND PCPRODUT.CODFORNEC = PCFORNEC.CODFOR' +
        'NEC'
      '                        AND PCPEDI.CODPROD = PCPRODUT.CODPROD'
      '                        AND PCPEDC.CODCLI = PCCLIENT.CODCLI'
      '                        AND PCPRODUT.CODEPTO = PCDEPTO.CODEPTO'
      
        '                        AND PCPEDC.CODSUPERVISOR = PCSUPERV.CODS' +
        'UPERVISOR'
      '                        AND PCPEDC.CODUSUR = PCUSUARI.CODUSUR'
      '                        AND PCPEDC.CODPRACA = PCPRACA.CODPRACA'
      '                        AND PCPEDC.DTCANCEL IS NULL'
      '                        AND PCPEDC.CONDVENDA IN (1)'
      '                        AND PCPEDC.CODFILIAL = FILIAL.CODIGO'
      '                  GROUP BY PCPEDC.CODFILIAL,'
      '                           PCPEDI.CODPROD,'
      '                           PCPRODUT.DESCRICAO,'
      '                           PCPRODUT.EMBALAGEM,'
      '                           PCPRODUT.UNIDADE,'
      '                           PCPRODUT.MARCA,'
      '                           PCFORNEC.FORNECEDOR,'
      '                           PCPRODUT.CLASSE,'
      '                           PCPRODUT.CODFAB,'
      '                           PCFORNEC.CODCOMPRADOR,'
      '                           PCPRODUT.PESOBRUTO'
      '                  ORDER BY VLVENDA DESC))'
      '        LOOP'
      '            /*ATUALIZA RANKING DA FILIAL*/'
      '            UPDATE PCEMBALAGEM'
      '            SET POSRANKING = DADOS.POS'
      
        '            WHERE CODPROD = DADOS.CODPROD AND CODFILIAL = DADOS.' +
        'CODFILIAL;'
      ''
      '            COMMIT;'
      '        END LOOP;'
      '    END LOOP;'
      ''
      ''
      '    /* ATUALIZAR RANKING POR CLUSTER */'
      '    FOR FILIAL IN (SELECT CODGRUPO FROM I9GRUPOFILIALC)'
      '    LOOP'
      '        FOR DADOS'
      '        IN (SELECT ROWNUM AS POS, CODPROD'
      '            FROM (SELECT PCPEDI.CODPROD,'
      '                         PCPRODUT.DESCRICAO,'
      '                         PCPRODUT.CODFAB,'
      '                         PCPRODUT.EMBALAGEM,'
      '                         PCPRODUT.UNIDADE,'
      '                         PCFORNEC.FORNECEDOR,'
      '                         PCPRODUT.CLASSE,'
      '                         PCFORNEC.CODCOMPRADOR,'
      '                         (SELECT PCEMPR.NOME'
      '                          FROM PCEMPR'
      
        '                          WHERE PCFORNEC.CODCOMPRADOR = PCEMPR.M' +
        'ATRICULA)'
      '                             COMPRADOR,'
      
        '                         (CASE WHEN PCPRODUT.PESOBRUTO = 0 THEN ' +
        '0 ELSE (PCPRODUT.PESOBRUTO * SUM (PCPEDI.QT)) END) PESOBRUTO,'
      '                         SUM(DECODE (PCPEDC.CONDVENDA,'
      '                                     5, 0,'
      '                                     6, 0,'
      '                                     11, 0,'
      '                                     12, 0,'
      
        '                                     NVL (PCPEDI.QT, 0) * (NVL (' +
        'PCPEDI.PVENDA, 0) + NVL (PCPEDI.VLOUTRASDESP, 0) + NVL (PCPEDI.V' +
        'LFRETE, 0))))'
      '                             VLVENDA,'
      
        '                         SUM ( (PCPEDI.QT) * DECODE (PCPEDC.COND' +
        'VENDA, 6, 0, 11, 0, 12, 0, NVL (PCPEDI.VLCUSTOFIN, 0))) AS VLCUS' +
        'TOFIN,'
      
        '                         SUM (DECODE (PCPEDC.CONDVENDA, 5, 0, 6,' +
        ' 0, 11, 0, 12, 0, NVL (PCPEDI.QT, 0))) QT,'
      '                         SUM(DECODE (PCPEDC.CONDVENDA,'
      '                                     5, 0,'
      '                                     6, 0,'
      '                                     11, 0,'
      '                                     12, 0,'
      
        '                                     NVL (PCPEDI.QT, 0) / DECODE' +
        ' (NVL (PCPRODUT.QTUNITCX, 0), 0, 1, PCPRODUT.QTUNITCX)))'
      '                             AS QTCX,'
      
        '                         COUNT (DISTINCT (PCPEDC.NUMPED)) AS QTP' +
        'EDIDOS'
      '                  FROM PCPEDI,'
      '                       PCPEDC,'
      '                       PCCLIENT,'
      '                       PCPRODUT,'
      '                       PCPRACA,'
      '                       PCUSUARI,'
      '                       PCFORNEC,'
      '                       PCDEPTO,'
      '                       PCSUPERV'
      
        '                  WHERE     TO_CHAR (PCPEDC.DATA, '#39'MM/yyyy'#39') = T' +
        'O_CHAR (ADD_MONTHS (SYSDATE, -1), '#39'MM/yyyy'#39')'
      '                        AND PCPEDI.NUMPED = PCPEDC.NUMPED'
      '                        AND PCPEDI.CODPROD = PCPRODUT.CODPROD'
      
        '                        AND PCPRODUT.CODFORNEC = PCFORNEC.CODFOR' +
        'NEC'
      '                        AND PCPEDI.CODPROD = PCPRODUT.CODPROD'
      '                        AND PCPEDC.CODCLI = PCCLIENT.CODCLI'
      '                        AND PCPRODUT.CODEPTO = PCDEPTO.CODEPTO'
      
        '                        AND PCPEDC.CODSUPERVISOR = PCSUPERV.CODS' +
        'UPERVISOR'
      '                        AND PCPEDC.CODUSUR = PCUSUARI.CODUSUR'
      '                        AND PCPEDC.CODPRACA = PCPRACA.CODPRACA'
      '                        AND PCPEDC.DTCANCEL IS NULL'
      '                        AND PCPEDC.CONDVENDA IN (1)'
      
        '                        AND PCPEDC.CODFILIAL IN (SELECT CODFILIA' +
        'L'
      
        '                                                 FROM I9GRUPOFIL' +
        'IALI'
      
        '                                                 WHERE CODGRUPO ' +
        '= FILIAL.CODGRUPO)'
      '                  GROUP BY PCPEDI.CODPROD,'
      '                           PCPRODUT.DESCRICAO,'
      '                           PCPRODUT.EMBALAGEM,'
      '                           PCPRODUT.UNIDADE,'
      '                           PCPRODUT.MARCA,'
      '                           PCFORNEC.FORNECEDOR,'
      '                           PCPRODUT.CLASSE,'
      '                           PCPRODUT.CODFAB,'
      '                           PCFORNEC.CODCOMPRADOR,'
      '                           PCPRODUT.PESOBRUTO'
      '                  ORDER BY VLVENDA DESC))'
      '        LOOP'
      '            /*ATUALIZA RANKING DA FILIAL*/'
      '            UPDATE PCEMBALAGEM'
      '            SET POSRANKINGCLUSTER = DADOS.POS'
      '            WHERE CODPROD = DADOS.CODPROD'
      '                  AND CODFILIAL IN (SELECT CODFILIAL'
      '                                    FROM I9GRUPOFILIALI'
      
        '                                    WHERE CODGRUPO = FILIAL.CODG' +
        'RUPO);'
      ''
      '            COMMIT;'
      '        END LOOP;'
      '    END LOOP;'
      'END;')
    Left = 88
    Top = 152
  end
  object JOB_GERARANKING: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'BEGIN'
      ' DBMS_SCHEDULER.CREATE_JOB ('
      '   job_name            =>  '#39'GERARANKING'#39', '
      '   job_type            =>  '#39'STORED_PROCEDURE'#39','
      '   job_action          =>  '#39'PRC_I9GERARANKING'#39','
      '   start_date          =>   trunc(add_months(sysdate, 1), '#39'mm'#39'),'
      '   repeat_interval     =>   '#39'FREQ=MONTHLY; BYMONTHDAY=1'#39','
      '   end_date => NULL,'
      '   enabled => TRUE,'
      '   restartable => TRUE,'
      '   auto_drop => FALSE);'
      'END;')
    Left = 1000
    Top = 240
  end
  object TABLE_I9_I9CONFIGVERBAOFERTA: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9CONFIGVERBAOFERTA '
      '('
      'CODOFERTA NUMBER(18),'
      'TIPOVERBA VARCHAR(50),'
      'VLVERBA NUMBER(18,2),'
      'DTAPURACAOVERBAINI DATE,'
      'DTAPURACAOVERBAFIM DATE,'
      'TIPOPAGTOVERBA VARCHAR2(1),'
      'CODFORNEC NUMBER(18),'
      'NUMVERBA NUMBER(18)'
      ')')
    Left = 88
    Top = 208
  end
  object TABLE_I9CONFIGGRID: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9CONFIGGRID'
      '('
      'MATRICULA INTEGER,'
      'IDGRID VARCHAR2(100),'
      'CONFIGURACAO BLOB'
      ')')
    Left = 88
    Top = 264
  end
  object TRG_PCPEDI_I9ATACVAREJO: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE TRIGGER TRG_PCPEDI_I9ATACVAREJO'
      '    BEFORE INSERT'
      '    ON PCPEDI'
      '    REFERENCING NEW AS NEW OLD AS OLD'
      '    FOR EACH ROW'
      'DECLARE'
      '    VQTMINATACVENDA   PCPEDI.QTMINATACVENDA%TYPE;'
      'BEGIN'
      '    BEGIN'
      '        SELECT   NVL (QTMINIMAATACADO, 0)'
      '          INTO   VQTMINATACVENDA'
      '          FROM   PCEMBALAGEM'
      
        '         WHERE   CODAUXILIAR = :NEW.CODAUXILIAR AND CODPROD = :N' +
        'EW.CODPROD'
      '                 AND CODFILIAL ='
      
        '                        (SELECT   DECODE (NVL (CODFILIAL, '#39'99'#39'),' +
        ' '#39'99'#39', '#39'1'#39', NVL (CODFILIAL, '#39'99'#39'))'
      '                           FROM   PCUSUARI'
      '                          WHERE   CODUSUR = :NEW.CODUSUR);'
      ''
      '        :NEW.QTMINATACVENDA := VQTMINATACVENDA;'
      '    EXCEPTION'
      '        WHEN NO_DATA_FOUND'
      '        THEN'
      '            NULL;'
      '    END;'
      'END;')
    Left = 272
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'new'
        Value = nil
      end>
  end
  object I9GERAVERBA_GENERICO: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'PROCEDURE I9GERAVERBA_GENERICO (P_CODFILIAL IN VARCHAR2,'
      '                           P_CODFORNEC IN NUMBER,'
      '                           P_TIPO IN VARCHAR2,'
      '                           P_REFERENCIA IN VARCHAR2,'
      '                           P_REFERENCIA1 IN VARCHAR2,'
      '                           P_VALOR IN NUMBER,'
      '                           P_DTVENC IN DATE,'
      '                           P_CODCONTA IN NUMBER,'
      '                           P_TP IN VARCHAR2,'
      '                           P_CODFUNC IN NUMBER,'
      '                           RETORNO OUT VARCHAR2,'
      '                           NUMVERBA OUT NUMBER) '
      'IS'
      '  VERBA               PCVERBA%ROWTYPE;'
      '  MOVCRFOR            PCMOVCRFOR%ROWTYPE;'
      '  V_PROXNUMTRANSCRFOR NUMBER;'
      '  SALDOCR             NUMBER(16, 2);'
      '  V_NUMVERBA          NUMBER;'
      '  V_TIPOTRIB          VARCHAR2(2);'
      'BEGIN'
      ''
      'SELECT NVL(PROXNUMVERBA,1) PROXNUMVERBA'
      '  INTO V_NUMVERBA'
      '  FROM PCCONSUM FOR UPDATE;'
      ''
      'UPDATE PCCONSUM'
      '   SET PROXNUMVERBA = NVL(PROXNUMVERBA,1) + 1;'
      ''
      'COMMIT;'
      ''
      '--Gerar verba'
      'VERBA.NUMVERBA      := V_NUMVERBA;'
      'VERBA.CODFILIAL     := P_CODFILIAL;'
      'VERBA.CODFORNEC     := P_CODFORNEC;'
      'VERBA.DTEMISSAO     := TRUNC(SYSDATE);'
      'VERBA.TIPO          := P_TP;'
      'VERBA.FORMAPGTO     := P_TIPO;'
      'VERBA.REFERENCIA    := P_REFERENCIA;'
      'VERBA.REFERENCIA1   := P_REFERENCIA1;'
      'VERBA.VALOR         := P_VALOR;'
      'VERBA.DTVENC        := P_DTVENC;'
      'VERBA.CODCONTA      := P_CODCONTA;'
      'VERBA.ORIGEM        := P_TIPO;'
      ''
      'INSERT INTO PCVERBA VALUES VERBA;'
      ''
      'SELECT NVL(PROXNUMTRANSCRFOR,1) PROXNUMTRANSCRFOR'
      '  INTO V_PROXNUMTRANSCRFOR'
      '  FROM PCCONSUM FOR UPDATE;'
      ''
      'UPDATE PCCONSUM'
      '   SET PROXNUMTRANSCRFOR = NVL(PROXNUMTRANSCRFOR,1) + 1;'
      ''
      'COMMIT;'
      ''
      'BEGIN'
      '  SELECT SUM(DECODE(P_TP'
      '                  , '#39'D'#39',(NVL(PCESTCRFOR.VALOR, 0) + P_VALOR)'
      '                  , (NVL(PCESTCRFOR.VALOR, 0) - P_VALOR))) SALDO'
      '    INTO SALDOCR'
      '    FROM PCESTCRFOR'
      '   WHERE CODFILIAL = P_CODFILIAL'
      '     AND CODFORNEC = P_CODFORNEC;'
      ''
      '  MOVCRFOR.NUMTRANSCRFOR      := V_PROXNUMTRANSCRFOR;'
      '  MOVCRFOR.CODFILIAL          := P_CODFILIAL;'
      '  MOVCRFOR.DATA               := TRUNC(SYSDATE);'
      '  MOVCRFOR.CODFORNEC          := P_CODFORNEC;'
      '  MOVCRFOR.TIPOVERBA          := P_TIPO;'
      '  MOVCRFOR.VALOR              := P_VALOR;'
      '  MOVCRFOR.TIPO               := P_TP;'
      '  MOVCRFOR.HISTORICO1         := P_REFERENCIA;'
      '  MOVCRFOR.HISTORICO2         := P_REFERENCIA1;'
      '  MOVCRFOR.NUMVERBA           := V_NUMVERBA;'
      '  MOVCRFOR.VLSALDO            := SALDOCR;'
      
        '  MOVCRFOR.HORA               := TO_NUMBER(TO_CHAR(SYSDATE, '#39'hh2' +
        '4'#39'));'
      
        '  MOVCRFOR.MINUTO             := TO_NUMBER(TO_CHAR(SYSDATE, '#39'mi'#39 +
        '));'
      '  MOVCRFOR.CODCONTA           := P_CODCONTA;'
      '  MOVCRFOR.CODFUNC            := P_CODFUNC;'
      ''
      '  INSERT INTO PCMOVCRFOR VALUES MOVCRFOR;'
      ''
      ''
      '  BEGIN'
      '     UPDATE PCESTCRFOR'
      '        SET PCESTCRFOR.VALOR =(NVL(PCESTCRFOR.VALOR, 0) +'
      
        '                              (DECODE(P_TP, '#39'D'#39', P_VALOR, P_VALO' +
        'R *(-1))))'
      '      WHERE PCESTCRFOR.CODFILIAL = P_CODFILIAL'
      '        AND PCESTCRFOR.CODFORNEC = P_CODFORNEC;'
      ''
      '     IF SQL%ROWCOUNT = 0 THEN'
      '        INSERT INTO PCESTCRFOR'
      '                    (CODFILIAL'
      '                   , CODFORNEC'
      '                   , VALOR)'
      '             VALUES (P_CODFILIAL'
      '                   , P_CODFORNEC'
      
        '                   , (DECODE(P_TP, '#39'D'#39', P_VALOR, P_VALOR *(-1)))' +
        ');'
      '     END IF;'
      '  END;'
      'END;'
      ''
      ''
      'NUMVERBA:= TO_CHAR(V_NUMVERBA);'
      'RETORNO:= '#39'OK'#39';'
      ''
      ''
      'EXCEPTION'
      '  WHEN OTHERS THEN'
      
        '    ------------------------------------------------------------' +
        '------------'
      '    BEGIN'
      '      ROLLBACK;'
      
        '      RETORNO := '#39'ERRO AO CRIAR VERBA'#39' || CHR(13) || '#39'ERRO INTER' +
        'NO: '#39' ||'
      '              SQLERRM;'
      ''
      '    END;'
      
        '    ------------------------------------------------------------' +
        '-----------'
      ''
      'END;')
    Left = 272
    Top = 112
  end
  object TABLE_I9EXPORTEXCEL: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9EXPORTEXCEL '
      '(DATA DATE, '
      ' CODFUNC INTEGER, '
      ' PC VARCHAR2(100), '
      ' MODULO VARCHAR2(100))')
    Left = 272
    Top = 168
  end
  object PRC_I9ATACVAREJO: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE '
      'PROCEDURE PRC_I9ATACVAREJO IS'
      'BEGIN'
      ''
      'FOR REG IN (SELECT   tbl_varejo.codfilial,'
      '         tbl_varejo.codauxiliar,'
      '         NVL (tbl_varejo.total, 0) total_varejo,'
      '         NVL (tbl_atacado.total, 0) total_atacado,'
      
        '         NVL (tbl_varejo.total, 0) + NVL (tbl_atacado.total, 0) ' +
        'total_vendido,'
      '         ROUND ('
      '             (  NVL (tbl_varejo.total, 0)'
      '              * 100'
      
        '              / (NVL (tbl_varejo.total, 0) + NVL (tbl_atacado.to' +
        'tal, 0))),'
      '             2)'
      '             AS perc_varejo,'
      '         ROUND ('
      '             (  NVL (tbl_atacado.total, 0)'
      '              * 100'
      
        '              / (NVL (tbl_varejo.total, 0) + NVL (tbl_atacado.to' +
        'tal, 0))),'
      '             2)'
      '             AS perc_atacado'
      '  FROM   (  SELECT   codfilial,'
      '                     codauxiliar,'
      '                     tipovenda,'
      '                     SUM (quantidade) total'
      '              FROM   (  SELECT   pcpedc.numped,'
      '                                 pcpedc.codfilial,'
      '                                 pcpedi.codauxiliar,'
      '                                 pcpedi.qtminatacvenda,'
      '                                 SUM (pcpedi.qt) quantidade,'
      '                                 CASE'
      
        '                                     WHEN pcpedi.qtminatacvenda ' +
        '<='
      '                                              SUM (pcpedi.qt)'
      '                                     THEN'
      '                                         '#39'A'#39
      '                                     ELSE'
      '                                         '#39'V'#39
      '                                 END'
      '                                     tipovenda'
      '                          FROM   pcpedc, pcpedi'
      
        '                         WHERE       pcpedc.numped = pcpedi.nump' +
        'ed'
      '                                 and pcpedc.data = pcpedi.data'
      
        '                                 AND pcpedc.data between trunc(s' +
        'ysdate-30) and trunc(sysdate)'
      '                                 AND pcpedc.posicao = '#39'F'#39
      '                                 AND pcpedi.qtminatacvenda > 0'
      '                      GROUP BY   pcpedc.numped,'
      '                                 pcpedc.codfilial,'
      '                                 pcpedi.codauxiliar,'
      '                                 pcpedi.qtminatacvenda)'
      '             WHERE   tipovenda = '#39'V'#39
      '          GROUP BY   codfilial, codauxiliar, tipovenda'
      '          ORDER BY   codfilial, codauxiliar) tbl_varejo,'
      '         (  SELECT   codfilial,'
      '                     codauxiliar,'
      '                     tipovenda,'
      '                     SUM (quantidade) total'
      '              FROM   (  SELECT   pcpedc.numped,'
      '                                 pcpedc.codfilial,'
      '                                 pcpedi.codauxiliar,'
      '                                 pcpedi.qtminatacvenda,'
      '                                 SUM (pcpedi.qt) quantidade,'
      '                                 CASE'
      
        '                                     WHEN pcpedi.qtminatacvenda ' +
        '<='
      '                                              SUM (pcpedi.qt)'
      '                                     THEN'
      '                                         '#39'A'#39
      '                                     ELSE'
      '                                         '#39'V'#39
      '                                 END'
      '                                     tipovenda'
      '                          FROM   pcpedc, pcpedi'
      
        '                         WHERE       pcpedc.numped = pcpedi.nump' +
        'ed'
      '                                 and pcpedc.data = pcpedi.data'
      
        '                                 AND pcpedc.data between trunc(s' +
        'ysdate-30) and trunc(sysdate)'
      '                                 AND pcpedc.posicao = '#39'F'#39
      '                                 AND pcpedi.qtminatacvenda > 0'
      '                      GROUP BY   pcpedc.numped,'
      '                                 pcpedc.codfilial,'
      '                                 pcpedi.codauxiliar,'
      '                                 pcpedi.qtminatacvenda)'
      '             WHERE   tipovenda = '#39'A'#39
      '          GROUP BY   codfilial, codauxiliar, tipovenda'
      '          ORDER BY   codfilial, codauxiliar) tbl_atacado'
      ' WHERE   tbl_varejo.codfilial = tbl_atacado.codfilial(+)'
      
        '         AND tbl_varejo.codauxiliar = tbl_atacado.codauxiliar(+)' +
        ') LOOP'
      '                 '
      '                 '
      '        update pcembalagem set'
      '        pcembalagem.percvendavarejo = reg.perc_varejo,'
      '        pcembalagem.percvendaatac = reg.perc_atacado,'
      '        pcembalagem.ultatuvarejoatac = sysdate'
      '        where pcembalagem.codfilial = reg.codfilial'
      '        and pcembalagem.codauxiliar = reg.codauxiliar;'
      ''
      '        commit;'
      '         '
      '         '
      '      END LOOP;'
      ''
      'END;')
    Left = 88
    Top = 464
  end
  object JOB_I9ATACVAREJO: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'BEGIN'
      ' DBMS_SCHEDULER.CREATE_JOB ('
      '   job_name            =>  '#39'I9ATACVAREJO'#39', '
      '   job_type            =>  '#39'STORED_PROCEDURE'#39','
      '   job_action          =>  '#39'PRC_I9ATACVAREJO'#39','
      '   start_date          =>   trunc(add_months(sysdate, 1), '#39'mm'#39'),'
      '   repeat_interval     =>   '#39'FREQ=MONTHLY; BYMONTHDAY=1'#39','
      '   end_date => NULL,'
      '   enabled => TRUE,'
      '   restartable => TRUE,'
      '   auto_drop => FALSE);'
      'END;')
    Left = 1000
    Top = 296
  end
  object TABLE_I9CLIATACADOCRM: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9CLIATACADOCRM'
      '('
      '    CODCAMPANHACRM NUMBER(10),  '
      '    CODCLI NUMBER(10)  '
      ')')
    Left = 768
    Top = 160
  end
  object SQL_CONSULTAS_CRM: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'SELECT   V.CODFILIAL,'
      '         V.DATA,'
      '         V.CODCLI,'
      '         C.CLIENTE,'
      '         V.VLTOTAL,'
      '         V.VLDESCONTO,'
      '         V.CARTAOCRM,'
      '         V.NUMPEDECF,'
      '         V.NUMCAIXA'
      '  FROM   PCPEDCECF V, PCCLIENT C'
      ' WHERE       C.CODCLI = V.CODCLI'
      '         AND V.CARTAOCRM IS NOT NULL'
      
        '         AND V.DATA BETWEEN TRUNC (SYSDATE - 7) AND TRUNC (SYSDA' +
        'TE)'
      '         AND NVL (V.CARTAOCRM, '#39'0'#39') <> '#39'0'#39';'
      ''
      'SELECT   I.NUMSEQ,'
      '         I.CODPROD,'
      '         P.DESCRICAO,'
      '         I.PTABELA,'
      '         I.PVENDA,'
      '         (I.PTABELA - I.PVENDA) VLDESCONTO,'
      '         I.PERDESC'
      '  FROM   PCPEDIECF I, PCPRODUT P'
      ' WHERE       I.CODPROD = P.CODPROD'
      '         AND I.NUMPEDECF = 1120068830'
      '         AND I.NUMCAIXA = 712'
      '         AND I.DATA = '#39'06/02/2019'#39';')
    Left = 272
    Top = 248
  end
  object TRG_PCPEDC_I9CAMPANHACRM: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE TRIGGER TRG_PCPEDC_I9CAMPANHACRM'
      '    BEFORE INSERT'
      '    ON PCPEDC'
      '    REFERENCING NEW AS NEW OLD AS OLD'
      '    FOR EACH ROW'
      'DECLARE'
      '    VCLIATACADO   VARCHAR2 (1);'
      '    VCLICRM       VARCHAR2 (1);'
      'BEGIN'
      '    BEGIN'
      '        SELECT   NVL (PCCLIENT.CLIATACADO, '#39'N'#39') ATACADO,'
      
        '                 DECODE (NVL (NUMCARTAOFIDELIDADE, '#39'N'#39'), '#39'N'#39', '#39'N' +
        #39', '#39'S'#39') CRM'
      '          INTO   VCLIATACADO, VCLICRM'
      '          FROM   PCCLIENT'
      '         WHERE   CODCLI = :NEW.CODCLI;'
      ''
      '        :NEW.CLIATACADO := VCLIATACADO;'
      '        :NEW.CLICRM := VCLICRM;'
      '    EXCEPTION'
      '        WHEN NO_DATA_FOUND'
      '        THEN'
      '            NULL;'
      '    END;'
      'END;')
    Left = 768
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'new'
        Value = nil
      end>
  end
  object I9TABLOIDE_CREATE: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9TABLOIDE('
      'CODTABLOIDE NUMBER(10),'
      'DESCRICAO VARCHAR2(100),'
      'DTINICIAL DATE,'
      'DTFINAL DATE,'
      'CODFUNCCADASTRO NUMBER(10),'
      'DTEXCLUSAO DATE,'
      'CODFUNCEXCLUSAO NUMBER(10),'
      'CODFILIAL VARCHAR2(100)'
      ')')
    Left = 88
    Top = 408
  end
  object I9LOGALTERACAO_CREATE: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9LOGALTERACAO'
      '('
      '    CODFILIAL            VARCHAR2 (2),'
      '    CODPROD              NUMBER (10),'
      '    CODAUXILIAR          NUMBER (20),'
      '    DATA                 DATE,'
      '    MAQUINA              VARCHAR2 (100),'
      '    TERMINAL             VARCHAR2 (100),'
      '    USUARIO              VARCHAR2 (100),'
      '    PROGRAMA             VARCHAR2 (100),'
      '    CUSTOFIN             NUMBER (18, 6),'
      '    CUSTOFINANT          NUMBER (18, 6),'
      '    PVENDA               NUMBER (18, 6),'
      '    PVENDAANT            NUMBER (18, 6),'
      '    PTABELA              NUMBER (18, 6),'
      '    PTABELAANT           NUMBER (18, 6),'
      '    QTMINIMAATACADO      NUMBER (18, 6),'
      '    QTMINIMAATACADOANT   NUMBER (18, 6),'
      '    MARGEMATAC           NUMBER (18, 6),'
      '    MARGEMATACANT        NUMBER (18, 6),'
      '    MARGEMVAREJO         NUMBER (18, 6),'
      '    MARGEMVAREJOANT      NUMBER (18, 6),'
      '    MARGEMMINVAREJO      NUMBER (18, 6),'
      '    MARGEMMINVAREJOANT   NUMBER (18, 6),'
      '    MARGEMMINATAC        NUMBER (18, 6),'
      '    MARGEMMINATACANT     NUMBER (18, 6),'
      '    PVENDAATAC           NUMBER (18, 6),'
      '    PVENDAATACANT        NUMBER (18, 6),'
      '    PTABELAATAC          NUMBER (18, 6),'
      '    PTABELAATACANT       NUMBER (18, 6)'
      ')')
    Left = 272
    Top = 320
  end
  object TRG_PCEMBALAGEM_I9LOGALTERACAO: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE TRIGGER TRG_PCEMBALAGEM_I9LOGALTERACAO'
      '    BEFORE UPDATE'
      '    ON PCEMBALAGEM'
      '    REFERENCING NEW AS NEW OLD AS OLD'
      '    FOR EACH ROW'
      'DECLARE'
      '    VMAQUINA    VARCHAR2 (100);'
      '    VTERMINAL   VARCHAR2 (100);'
      '    VPROGRAMA   VARCHAR2 (100);'
      '    VUSUARIO    VARCHAR2 (100);'
      'BEGIN'
      '    VTERMINAL := SYS_CONTEXT ('#39'USERENV'#39', '#39'TERMINAL'#39');'
      '    VUSUARIO := SYS_CONTEXT ('#39'USERENV'#39', '#39'OS_USER'#39');'
      '    VPROGRAMA := SYS_CONTEXT ('#39'USERENV'#39', '#39'MODULE'#39');'
      '    VMAQUINA := SYS_CONTEXT ('#39'USERENV'#39', '#39'SERVER_HOST'#39');'
      ''
      '    IF UPPER (VPROGRAMA) LIKE '#39'%9810%'#39
      '    THEN'
      '        IF :NEW.PVENDA <> :OLD.PVENDA'
      '        THEN'
      '            INSERT INTO I9LOGALTERACAO (CODFILIAL,'
      '                                        CODPROD,'
      '                                        CODAUXILIAR,'
      '                                        DATA,'
      '                                        MAQUINA,'
      '                                        TERMINAL,'
      '                                        USUARIO,'
      '                                        PROGRAMA,'
      '                                        PVENDA,'
      '                                        PVENDAANT)'
      '              VALUES   (:OLD.CODFILIAL,'
      '                        :OLD.CODPROD,'
      '                        :OLD.CODAUXILIAR,'
      '                        SYSDATE,'
      '                        VMAQUINA,'
      '                        VTERMINAL,'
      '                        VUSUARIO,'
      '                        VPROGRAMA,'
      '                        :NEW.PVENDA,'
      '                        :OLD.PVENDA);'
      '        END IF;'
      ''
      ''
      '        IF :NEW.PTABELA <> :OLD.PTABELA'
      '        THEN'
      '            INSERT INTO I9LOGALTERACAO (CODFILIAL,'
      '                                        CODPROD,'
      '                                        CODAUXILIAR,'
      '                                        DATA,'
      '                                        MAQUINA,'
      '                                        TERMINAL,'
      '                                        USUARIO,'
      '                                        PROGRAMA,'
      '                                        PTABELA,'
      '                                        PTABELAANT)'
      '              VALUES   (:OLD.CODFILIAL,'
      '                        :OLD.CODPROD,'
      '                        :OLD.CODAUXILIAR,'
      '                        SYSDATE,'
      '                        VMAQUINA,'
      '                        VTERMINAL,'
      '                        VUSUARIO,'
      '                        VPROGRAMA,'
      '                        :NEW.PTABELA,'
      '                        :OLD.PTABELA);'
      '        END IF;'
      '        '
      '        '
      '         IF :NEW.PVENDAATAC <> :OLD.PVENDAATAC'
      '        THEN'
      '            INSERT INTO I9LOGALTERACAO (CODFILIAL,'
      '                                        CODPROD,'
      '                                        CODAUXILIAR,'
      '                                        DATA,'
      '                                        MAQUINA,'
      '                                        TERMINAL,'
      '                                        USUARIO,'
      '                                        PROGRAMA,'
      '                                        PVENDAATAC,'
      '                                        PVENDAATACANT)'
      '              VALUES   (:OLD.CODFILIAL,'
      '                        :OLD.CODPROD,'
      '                        :OLD.CODAUXILIAR,'
      '                        SYSDATE,'
      '                        VMAQUINA,'
      '                        VTERMINAL,'
      '                        VUSUARIO,'
      '                        VPROGRAMA,'
      '                        :NEW.PVENDAATAC,'
      '                        :OLD.PVENDAATAC);'
      '        END IF;'
      ''
      ''
      '        IF :NEW.PTABELAATAC <> :OLD.PTABELAATAC'
      '        THEN'
      '            INSERT INTO I9LOGALTERACAO (CODFILIAL,'
      '                                        CODPROD,'
      '                                        CODAUXILIAR,'
      '                                        DATA,'
      '                                        MAQUINA,'
      '                                        TERMINAL,'
      '                                        USUARIO,'
      '                                        PROGRAMA,'
      '                                        PTABELAATAC,'
      '                                        PTABELAATACANT)'
      '              VALUES   (:OLD.CODFILIAL,'
      '                        :OLD.CODPROD,'
      '                        :OLD.CODAUXILIAR,'
      '                        SYSDATE,'
      '                        VMAQUINA,'
      '                        VTERMINAL,'
      '                        VUSUARIO,'
      '                        VPROGRAMA,'
      '                        :NEW.PTABELAATAC,'
      '                        :OLD.PTABELAATAC);'
      '        END IF;'
      '        '
      '        '
      '        IF :NEW.QTMINIMAATACADO <> :OLD.QTMINIMAATACADO'
      '        THEN'
      '            INSERT INTO I9LOGALTERACAO (CODFILIAL,'
      '                                        CODPROD,'
      '                                        CODAUXILIAR,'
      '                                        DATA,'
      '                                        MAQUINA,'
      '                                        TERMINAL,'
      '                                        USUARIO,'
      '                                        PROGRAMA,'
      '                                        QTMINIMAATACADO,'
      '                                        QTMINIMAATACADOANT)'
      '              VALUES   (:OLD.CODFILIAL,'
      '                        :OLD.CODPROD,'
      '                        :OLD.CODAUXILIAR,'
      '                        SYSDATE,'
      '                        VMAQUINA,'
      '                        VTERMINAL,'
      '                        VUSUARIO,'
      '                        VPROGRAMA,'
      '                        :NEW.QTMINIMAATACADO,'
      '                        :OLD.QTMINIMAATACADO);'
      '        END IF;'
      '        '
      '    END IF;'
      'END;')
    Left = 88
    Top = 520
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
  object TRG_MARGENS_I9LOGALTERACAO: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE TRIGGER TRG_MARGENS_I9LOGALTERACAO'
      '    BEFORE UPDATE'
      '    ON PCCLASSIFICMERC'
      '    REFERENCING NEW AS NEW OLD AS OLD'
      '    FOR EACH ROW'
      'DECLARE'
      '    VMAQUINA    VARCHAR2 (100);'
      '    VTERMINAL   VARCHAR2 (100);'
      '    VPROGRAMA   VARCHAR2 (100);'
      '    VUSUARIO    VARCHAR2 (100);'
      'BEGIN'
      '    VTERMINAL := SYS_CONTEXT ('#39'USERENV'#39', '#39'TERMINAL'#39');'
      '    VUSUARIO := SYS_CONTEXT ('#39'USERENV'#39', '#39'OS_USER'#39');'
      '    VPROGRAMA := SYS_CONTEXT ('#39'USERENV'#39', '#39'MODULE'#39');'
      '    VMAQUINA := SYS_CONTEXT ('#39'USERENV'#39', '#39'SERVER_HOST'#39');'
      ''
      '    IF UPPER (VPROGRAMA) LIKE '#39'%9810%'#39
      '    THEN'
      '        IF :NEW.MARGEMVAREJO <> :OLD.MARGEMVAREJO'
      '        THEN'
      '            INSERT INTO I9LOGALTERACAO (CODFILIAL,'
      '                                        CODPROD,'
      '                                        DATA,'
      '                                        MAQUINA,'
      '                                        TERMINAL,'
      '                                        USUARIO,'
      '                                        PROGRAMA,'
      '                                        MARGEMVAREJO,'
      '                                        MARGEMVAREJOANT)'
      '              VALUES   (:OLD.CODFILIAL,'
      '                        :OLD.CODPROD,'
      '                        SYSDATE,'
      '                        VMAQUINA,'
      '                        VTERMINAL,'
      '                        VUSUARIO,'
      '                        VPROGRAMA,'
      '                        :NEW.MARGEMVAREJO,'
      '                        :OLD.MARGEMVAREJO);'
      '        END IF;'
      ''
      ''
      '        IF :NEW.MARGEMATAC <> :OLD.MARGEMATAC'
      '        THEN'
      '            INSERT INTO I9LOGALTERACAO (CODFILIAL,'
      '                                        CODPROD,'
      '                                        DATA,'
      '                                        MAQUINA,'
      '                                        TERMINAL,'
      '                                        USUARIO,'
      '                                        PROGRAMA,'
      '                                        MARGEMATAC,'
      '                                        MARGEMATACANT)'
      '              VALUES   (:OLD.CODFILIAL,'
      '                        :OLD.CODPROD,'
      '                        SYSDATE,'
      '                        VMAQUINA,'
      '                        VTERMINAL,'
      '                        VUSUARIO,'
      '                        VPROGRAMA,'
      '                        :NEW.MARGEMATAC,'
      '                        :OLD.MARGEMATAC);'
      '        END IF;'
      '        '
      '        '
      '        IF :NEW.MARGEMMINVAREJO <> :OLD.MARGEMMINVAREJO'
      '        THEN'
      '            INSERT INTO I9LOGALTERACAO (CODFILIAL,'
      '                                        CODPROD,'
      '                                        DATA,'
      '                                        MAQUINA,'
      '                                        TERMINAL,'
      '                                        USUARIO,'
      '                                        PROGRAMA,'
      '                                        MARGEMMINVAREJO,'
      '                                        MARGEMMINVAREJOANT)'
      '              VALUES   (:OLD.CODFILIAL,'
      '                        :OLD.CODPROD,'
      '                        SYSDATE,'
      '                        VMAQUINA,'
      '                        VTERMINAL,'
      '                        VUSUARIO,'
      '                        VPROGRAMA,'
      '                        :NEW.MARGEMMINVAREJO,'
      '                        :OLD.MARGEMMINVAREJO);'
      '        END IF;'
      '        '
      '        IF :NEW.MARGEMMINATAC <> :OLD.MARGEMMINATAC'
      '        THEN'
      '            INSERT INTO I9LOGALTERACAO (CODFILIAL,'
      '                                        CODPROD,'
      '                                        DATA,'
      '                                        MAQUINA,'
      '                                        TERMINAL,'
      '                                        USUARIO,'
      '                                        PROGRAMA,'
      '                                        MARGEMMINATAC,'
      '                                        MARGEMMINATACANT)'
      '              VALUES   (:OLD.CODFILIAL,'
      '                        :OLD.CODPROD,'
      '                        SYSDATE,'
      '                        VMAQUINA,'
      '                        VTERMINAL,'
      '                        VUSUARIO,'
      '                        VPROGRAMA,'
      '                        :NEW.MARGEMMINATAC,'
      '                        :OLD.MARGEMMINATAC);'
      '        END IF;'
      '        '
      '    END IF;'
      'END;')
    Left = 88
    Top = 328
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
  object TRG_PCEST_I9LOGALTERACAO: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE TRIGGER TRG_PCEST_I9LOGALTERACAO'
      '    BEFORE UPDATE'
      '    ON PCEST'
      '    REFERENCING NEW AS NEW OLD AS OLD'
      '    FOR EACH ROW'
      'DECLARE'
      '    VMAQUINA    VARCHAR2 (100);'
      '    VTERMINAL   VARCHAR2 (100);'
      '    VPROGRAMA   VARCHAR2 (100);'
      '    VUSUARIO    VARCHAR2 (100);'
      'BEGIN'
      '    VTERMINAL := SYS_CONTEXT ('#39'USERENV'#39', '#39'TERMINAL'#39');'
      '    VUSUARIO := SYS_CONTEXT ('#39'USERENV'#39', '#39'OS_USER'#39');'
      '    VPROGRAMA := SYS_CONTEXT ('#39'USERENV'#39', '#39'MODULE'#39');'
      '    VMAQUINA := SYS_CONTEXT ('#39'USERENV'#39', '#39'SERVER_HOST'#39');'
      ''
      '    IF UPPER (VPROGRAMA) LIKE '#39'%9810%'#39
      '    THEN'
      '        IF :NEW.CUSTOFIN <> :OLD.CUSTOFIN'
      '        THEN'
      '            INSERT INTO I9LOGALTERACAO (CODFILIAL,'
      '                                        CODPROD,'
      '                                        DATA,'
      '                                        MAQUINA,'
      '                                        TERMINAL,'
      '                                        USUARIO,'
      '                                        PROGRAMA,'
      '                                        MARGEMVAREJO,'
      '                                        MARGEMVAREJOANT)'
      '              VALUES   (:OLD.CODFILIAL,'
      '                        :OLD.CODPROD,'
      '                        SYSDATE,'
      '                        VMAQUINA,'
      '                        VTERMINAL,'
      '                        VUSUARIO,'
      '                        VPROGRAMA,'
      '                        :NEW.CUSTOFIN,'
      '                        :OLD.CUSTOFIN);'
      '        END IF;'
      ''
      '        '
      '    END IF;'
      'END;')
    Left = 272
    Top = 376
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
  object TABLE_I9CAMPANHACRM: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9CAMPANHACRM'
      '('
      '    CODFILIAL              VARCHAR2 (2 BYTE),'
      '    CODCAMPANHACRM         NUMBER (10, 0),'
      '    DESCRICAOCAMPANHACRM   VARCHAR2 (50 BYTE),'
      '    TIPOCAMPANHA           VARCHAR2 (2 BYTE),'
      '    DTINICIAL              DATE,'
      '    DTFINAL                DATE,'
      '    CODFUNCINCLUSAO        NUMBER (10, 0),'
      '    DTINCLUSAO             DATE,'
      '    CODFUNCEXCLUSAO        NUMBER (10, 0),'
      '    DTEXCLUSAO             DATE,'
      '    NOVOSCLIENTES          VARCHAR2 (1 BYTE) DEFAULT '#39'N'#39
      ')')
    Left = 768
    Top = 216
  end
  object TABLE_I9GRUPOCRMC: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9GRUPOCRMC'
      '('
      '    CODGRUPOCRM       NUMBER (10) NOT NULL,'
      '    DESCRICAO         VARCHAR2 (40) NOT NULL,'
      '    DTINCLUSAO        DATE,'
      '    CODFUNCINCLUSAO   NUMBER (10),'
      '    DTEXCLUSAO        NUMBER (10),'
      '    CODFUNCEXCLUSAO   DATE,'
      '    GRUPOPRECOATACADO VARCHAR2(1) DEFAULT '#39'N'#39' NOT NULL,'
      '    GRUPOASSOCIADO    VARCHAR2(1) DEFAULT '#39'N'#39' NOT NULL,'
      '    USABIOMETRIA      VARCHAR2(1) DEFAULT '#39'N'#39' NOT NULL'
      ')')
    Left = 768
    Top = 272
  end
  object TABLE_I9GRUPOCRMI: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9GRUPOCRMI'
      '('
      '    CODGRUPOCRM   NUMBER (10),'
      '    CGCENT        VARCHAR2 (40),'
      '    CODCLI        NUMBER (10),'
      '    DTCADASTRO    DATE,'
      '    DTINATIVO     DATE'
      ')')
    Left = 768
    Top = 320
  end
  object TABLE_I9CAMPANHACRMGRUPOS: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9CAMPANHACRMGRUPOS ('
      'CODCAMPANHACRM NUMBER (10) NOT NULL, '
      'CODGRUPOCRM NUMBER (10)  NOT NULL'
      ')')
    Left = 768
    Top = 104
  end
  object PRC_I9INCLUIRCLIENTECRM: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      
        'CREATE OR REPLACE PROCEDURE PRC_I9INCLUIRCLIENTECRM (P_CGCENT VA' +
        'RCHAR2)'
      'IS'
      '    VPCCLIENT PCCLIENT%ROWTYPE;'
      '    V_CODFIDELIDADE NUMBER (10);'
      '    V_QTREGISTROS NUMBER (10) := 0;'
      'BEGIN'
      '    SELECT PCCLIENT.*'
      '    INTO VPCCLIENT'
      '    FROM PCCLIENT'
      '    WHERE SOMENTENUMERO (CGCENT) = SOMENTENUMERO (P_CGCENT);'
      ''
      ''
      ''
      '    --CAMPANHAS QUE SAO PARA TODOS OS CLIENTES'
      '    --E ACEITAM NOVOS CLIENTE'
      '    FOR REG_CAMPANHAS'
      '    IN (SELECT I9CAMPANHACRM.*'
      '        FROM I9CAMPANHACRM'
      
        '        WHERE NVL (I9CAMPANHACRM.TODOSCLIENTES, '#39'N'#39') = '#39'S'#39' AND N' +
        'VL (I9CAMPANHACRM.NOVOSCLIENTES, '#39'N'#39') = '#39'S'#39
      
        '              AND ( (I9CAMPANHACRM.DTINICIAL <= TRUNC (SYSDATE) ' +
        'AND I9CAMPANHACRM.DTFINAL >= TRUNC (SYSDATE))'
      
        '                   OR (I9CAMPANHACRM.DTINICIAL >= TRUNC (SYSDATE' +
        '))))'
      '    LOOP'
      '        --SE EXISTE UMA CAMPANHA DE ATACADO ATIVA'
      '        IF REG_CAMPANHAS.TIPOCAMPANHA = '#39'A'#39
      '        THEN'
      '            SELECT COUNT ( * )'
      '            INTO V_QTREGISTROS'
      '            FROM I9CLIATACADOCRM'
      
        '            WHERE CODCAMPANHACRM = REG_CAMPANHAS.CODCAMPANHACRM ' +
        'AND CODCLI = VPCCLIENT.CODCLI;'
      ''
      '            IF V_QTREGISTROS = 0'
      '            THEN'
      
        '                INSERT INTO I9CLIATACADOCRM (CODCAMPANHACRM, COD' +
        'CLI)'
      
        '                VALUES (REG_CAMPANHAS.CODCAMPANHACRM, VPCCLIENT.' +
        'CODCLI);'
      '            END IF;'
      ''
      ''
      
        '            --COLOCA O CLIENTE COMO ATACADO SE A CAMPANHA ESTIVE' +
        'R ATIVA'
      '            IF REG_CAMPANHAS.DTINICIAL <= TRUNC (SYSDATE)'
      '            THEN'
      '                UPDATE PCCLIENT'
      '                SET PCCLIENT.CLIATACADO = '#39'S'#39
      '                WHERE PCCLIENT.CODCLI = VPCCLIENT.CODCLI;'
      '            END IF;'
      ''
      '            COMMIT;'
      '        END IF;'
      ''
      '        --SE EXISTE UMA CAMPANHA DE PERCENTUAL DE DESCONTO'
      '        IF REG_CAMPANHAS.TIPOCAMPANHA = '#39'D'#39
      '        THEN'
      '            SELECT COUNT ( * )'
      '            INTO V_QTREGISTROS'
      '            FROM PCDESCONTOFIDELIDADE'
      
        '            WHERE CODCAMPANHACRM = REG_CAMPANHAS.CODCAMPANHACRM ' +
        'AND CODCLI = VPCCLIENT.CODCLI;'
      ''
      
        '            --INSERE SOMENTE SE NAO EXISTIR J'#193' DESCONTO PARA ESS' +
        'E CLIENTE'
      '            IF V_QTREGISTROS = 0'
      '            THEN'
      
        '                FOR REG_CAMPANHA_DESCONTO IN (SELECT DISTINCT PC' +
        'DESCONTOFIDELIDADE.CODCAMPANHACRM,'
      
        '                                                              PC' +
        'DESCONTOFIDELIDADE.CODPROD,'
      
        '                                                              PC' +
        'DESCONTOFIDELIDADE.CODEPTO,'
      
        '                                                              PC' +
        'DESCONTOFIDELIDADE.CODSECAO,'
      
        '                                                              PC' +
        'DESCONTOFIDELIDADE.CODCATEGORIA,'
      
        '                                                              PC' +
        'DESCONTOFIDELIDADE.CODSUBCATEGORIA,'
      
        '                                                              PC' +
        'DESCONTOFIDELIDADE.PERCDESCONTO'
      
        '                                              FROM PCDESCONTOFID' +
        'ELIDADE'
      
        '                                              WHERE PCDESCONTOFI' +
        'DELIDADE.CODCAMPANHACRM = REG_CAMPANHAS.CODCAMPANHACRM)'
      '                LOOP'
      
        '                    SELECT DFSEQ_PCDESCONTOFIDELIDADE.NEXTVAL IN' +
        'TO V_CODFIDELIDADE FROM DUAL;'
      ''
      
        '                    --INSERE A CAMPANHA DE PERCENTUAL DE DESCONT' +
        'O PARA O CLIENTE'
      
        '                    INSERT INTO PCDESCONTOFIDELIDADE (CODFIDELID' +
        'ADE,'
      
        '                                                      CODCAMPANH' +
        'ACRM,'
      '                                                      CODPROD,'
      '                                                      CODEPTO,'
      '                                                      CODSECAO,'
      
        '                                                      CODCATEGOR' +
        'IA,'
      
        '                                                      CODSUBCATE' +
        'GORIA,'
      
        '                                                      PERCDESCON' +
        'TO,'
      '                                                      CODCLI)'
      '                    VALUES (V_CODFIDELIDADE,'
      
        '                            REG_CAMPANHA_DESCONTO.CODCAMPANHACRM' +
        ','
      '                            REG_CAMPANHA_DESCONTO.CODPROD,'
      '                            REG_CAMPANHA_DESCONTO.CODEPTO,'
      '                            REG_CAMPANHA_DESCONTO.CODSECAO,'
      '                            REG_CAMPANHA_DESCONTO.CODCATEGORIA,'
      
        '                            REG_CAMPANHA_DESCONTO.CODSUBCATEGORI' +
        'A,'
      '                            REG_CAMPANHA_DESCONTO.PERCDESCONTO,'
      '                            VPCCLIENT.CODCLI);'
      ''
      '                    COMMIT;'
      '                END LOOP;'
      '            END IF;'
      '        END IF;'
      '    END LOOP;'
      ''
      ''
      ''
      '    --IDENTIFICAR O GRUPO DO CLIENTE'
      
        '    FOR REG_GRUPO IN (SELECT CODGRUPOCRM, NVL (CODCLI, 0) CODCLI' +
        ', SOMENTENUMERO (CGCENT) CGCENT'
      '                      FROM I9GRUPOCRMI'
      
        '                      WHERE SOMENTENUMERO (CGCENT) = SOMENTENUME' +
        'RO (P_CGCENT))'
      '    LOOP'
      '        --ATUALIZAR O CODIGO DO CLIENTE NO CADASTRO DO GRUPO'
      '        IF REG_GRUPO.CODCLI = 0'
      '        THEN'
      '            UPDATE I9GRUPOCRMI'
      '            SET CODCLI = VPCCLIENT.CODCLI'
      
        '            WHERE SOMENTENUMERO (CGCENT) = SOMENTENUMERO (P_CGCE' +
        'NT);'
      ''
      '            COMMIT;'
      '        END IF;'
      ''
      ''
      '        --OBTER AS CAMPANHAS DO CLIENTE PARA INCLUSAO'
      '        FOR REG_CAMPANHAS'
      '        IN (SELECT I9CAMPANHACRM.*'
      '            FROM I9CAMPANHACRM, I9CAMPANHACRMGRUPOS'
      
        '            WHERE     I9CAMPANHACRM.CODCAMPANHACRM = I9CAMPANHAC' +
        'RMGRUPOS.CODCAMPANHACRM'
      
        '                  AND I9CAMPANHACRMGRUPOS.CODGRUPOCRM = REG_GRUP' +
        'O.CODGRUPOCRM'
      
        '                  AND NVL (I9CAMPANHACRM.NOVOSCLIENTES, '#39'N'#39') = '#39 +
        'S'#39
      
        '                  AND ( (I9CAMPANHACRM.DTINICIAL <= TRUNC (SYSDA' +
        'TE) AND I9CAMPANHACRM.DTFINAL >= TRUNC (SYSDATE))'
      
        '                       OR (I9CAMPANHACRM.DTINICIAL >= TRUNC (SYS' +
        'DATE))))'
      '        LOOP'
      '            --SE EXISTE UMA CAMPANHA DE ATACADO ATIVA'
      '            IF REG_CAMPANHAS.TIPOCAMPANHA = '#39'A'#39
      '            THEN'
      '                SELECT COUNT ( * )'
      '                INTO V_QTREGISTROS'
      '                FROM I9CLIATACADOCRM'
      
        '                WHERE CODCAMPANHACRM = REG_CAMPANHAS.CODCAMPANHA' +
        'CRM AND CODCLI = VPCCLIENT.CODCLI;'
      ''
      '                IF V_QTREGISTROS = 0'
      '                THEN'
      
        '                    INSERT INTO I9CLIATACADOCRM (CODCAMPANHACRM,' +
        ' CODCLI)'
      
        '                    VALUES (REG_CAMPANHAS.CODCAMPANHACRM, VPCCLI' +
        'ENT.CODCLI);'
      '                END IF;'
      ''
      ''
      
        '                --COLOCA O CLIENTE COMO ATACADO SE A CAMPANHA ES' +
        'TIVER ATIVA'
      '                IF REG_CAMPANHAS.DTINICIAL <= TRUNC (SYSDATE)'
      '                THEN'
      '                    UPDATE PCCLIENT'
      '                    SET PCCLIENT.CLIATACADO = '#39'S'#39
      '                    WHERE PCCLIENT.CODCLI = VPCCLIENT.CODCLI;'
      '                END IF;'
      ''
      '                COMMIT;'
      '            END IF;'
      ''
      '            --SE EXISTE UMA CAMPANHA DE PERCENTUAL DE DESCONTO'
      '            IF REG_CAMPANHAS.TIPOCAMPANHA = '#39'D'#39
      '            THEN'
      '                SELECT COUNT ( * )'
      '                INTO V_QTREGISTROS'
      '                FROM PCDESCONTOFIDELIDADE'
      
        '                WHERE CODCAMPANHACRM = REG_CAMPANHAS.CODCAMPANHA' +
        'CRM AND CODCLI = VPCCLIENT.CODCLI;'
      ''
      
        '                --INSERE SOMENTE SE NAO EXISTIR J'#193' DESCONTO PARA' +
        ' ESSE CLIENTE'
      '                IF V_QTREGISTROS = 0'
      '                THEN'
      
        '                    FOR REG_CAMPANHA_DESCONTO IN (SELECT DISTINC' +
        'T PCDESCONTOFIDELIDADE.CODCAMPANHACRM,'
      
        '                                                                ' +
        '  PCDESCONTOFIDELIDADE.CODPROD,'
      
        '                                                                ' +
        '  PCDESCONTOFIDELIDADE.CODEPTO,'
      
        '                                                                ' +
        '  PCDESCONTOFIDELIDADE.CODSECAO,'
      
        '                                                                ' +
        '  PCDESCONTOFIDELIDADE.CODCATEGORIA,'
      
        '                                                                ' +
        '  PCDESCONTOFIDELIDADE.CODSUBCATEGORIA,'
      
        '                                                                ' +
        '  PCDESCONTOFIDELIDADE.PERCDESCONTO'
      
        '                                                  FROM PCDESCONT' +
        'OFIDELIDADE'
      
        '                                                  WHERE PCDESCON' +
        'TOFIDELIDADE.CODCAMPANHACRM = REG_CAMPANHAS.CODCAMPANHACRM)'
      '                    LOOP'
      
        '                        SELECT DFSEQ_PCDESCONTOFIDELIDADE.NEXTVA' +
        'L INTO V_CODFIDELIDADE FROM DUAL;'
      ''
      
        '                        --INSERE A CAMPANHA DE PERCENTUAL DE DES' +
        'CONTO PARA O CLIENTE'
      
        '                        INSERT INTO PCDESCONTOFIDELIDADE (CODFID' +
        'ELIDADE,'
      
        '                                                          CODCAM' +
        'PANHACRM,'
      
        '                                                          CODPRO' +
        'D,'
      
        '                                                          CODEPT' +
        'O,'
      
        '                                                          CODSEC' +
        'AO,'
      
        '                                                          CODCAT' +
        'EGORIA,'
      
        '                                                          CODSUB' +
        'CATEGORIA,'
      
        '                                                          PERCDE' +
        'SCONTO,'
      
        '                                                          CODCLI' +
        ')'
      '                        VALUES (V_CODFIDELIDADE,'
      
        '                                REG_CAMPANHA_DESCONTO.CODCAMPANH' +
        'ACRM,'
      '                                REG_CAMPANHA_DESCONTO.CODPROD,'
      '                                REG_CAMPANHA_DESCONTO.CODEPTO,'
      '                                REG_CAMPANHA_DESCONTO.CODSECAO,'
      
        '                                REG_CAMPANHA_DESCONTO.CODCATEGOR' +
        'IA,'
      
        '                                REG_CAMPANHA_DESCONTO.CODSUBCATE' +
        'GORIA,'
      
        '                                REG_CAMPANHA_DESCONTO.PERCDESCON' +
        'TO,'
      '                                VPCCLIENT.CODCLI);'
      ''
      '                        COMMIT;'
      '                    END LOOP;'
      '                END IF;'
      '            END IF;'
      '        END LOOP;'
      '    END LOOP;'
      'END;')
    Left = 768
    Top = 376
  end
  object SOMENTENUMERO: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      
        'CREATE OR REPLACE FUNCTION SOMENTENUMERO (PSTEXTOORIGINAL IN VAR' +
        'CHAR2)'
      '    RETURN NUMBER'
      'IS'
      '    VSLETRA CHAR (1);'
      '    VSTEXTOCORRIGIDO VARCHAR2 (200);'
      '    VSTEXTOORIGINAL VARCHAR2 (200);'
      'BEGIN'
      '    VSTEXTOCORRIGIDO := '#39'0'#39';'
      '    VSTEXTOORIGINAL := PSTEXTOORIGINAL;'
      '    VSLETRA := SUBSTR (VSTEXTOORIGINAL, 1, 1);'
      ''
      '    WHILE LENGTH (VSTEXTOORIGINAL) > 0'
      '    LOOP'
      
        '        IF (VSLETRA IN ('#39'0'#39', '#39'1'#39', '#39'2'#39', '#39'3'#39', '#39'4'#39', '#39'5'#39', '#39'6'#39', '#39'7'#39', ' +
        #39'8'#39', '#39'9'#39'))'
      '        THEN'
      '            VSTEXTOCORRIGIDO := VSTEXTOCORRIGIDO || VSLETRA;'
      '        END IF;'
      ''
      
        '        VSTEXTOORIGINAL := SUBSTR (VSTEXTOORIGINAL, 2, LENGTH (V' +
        'STEXTOORIGINAL) - 1);'
      '        VSLETRA := SUBSTR (VSTEXTOORIGINAL, 1, 1);'
      '    END LOOP;'
      ''
      '    RETURN TO_NUMBER (VSTEXTOCORRIGIDO);'
      'EXCEPTION'
      '    WHEN OTHERS'
      '    THEN'
      '        RETURN 0;'
      'END;')
    Left = 768
    Top = 432
  end
  object TRG_I9_CRMPRODFIDELIDADE: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE TRIGGER TRG_I9_CRMPRODFIDELIDADE'
      ' AFTER'
      '  INSERT'
      ' ON PCPRODUT'
      'REFERENCING NEW AS NEW OLD AS OLD'
      ' FOR EACH ROW'
      'DECLARE'
      '    REG PCDESCONTOFIDELIDADE%ROWTYPE;'
      '    VCODFIDELIDADE NUMBER (10);'
      '    VCODCLICRMGERAL NUMBER (10);'
      '    VCODCLICRMATACADO NUMBER (10);'
      'BEGIN'
      '    SELECT CODCLICRMGERAL, CODCLICRMATACADO'
      '    INTO VCODCLICRMGERAL, VCODCLICRMATACADO'
      '    FROM PCCONSUM'
      '    WHERE ROWNUM = 1;'
      ''
      '    FOR FILIAL IN (SELECT CODIGO'
      '                   FROM PCFILIAL'
      '                   WHERE CODIGO NOT IN ('#39'99'#39')'
      '                    AND CODIGO IN (SELECT DISTINCT CODFILIAL'
      '                                               FROM PCCAIXA))'
      '    LOOP'
      
        '        SELECT DFSEQ_PCDESCONTOFIDELIDADE.NEXTVAL INTO VCODFIDEL' +
        'IDADE FROM DUAL;'
      ''
      '        REG.CODFILIAL := FILIAL.CODIGO;'
      '        REG.CODPROD := :NEW.CODPROD;'
      '        REG.TODOSCLIENTES := '#39'S'#39';'
      ''
      '        REG.CODFIDELIDADE := VCODFIDELIDADE;'
      '        REG.tipoterceiropreco := '#39'G'#39';'
      '        REG.CODCLICONVENIO := VCODCLICRMGERAL;'
      '        REG.PERCDESCONTO := 0;'
      '        REG.PERCDESCONTOTABELA := 0;'
      '        REG.DTINICIAL := TO_DATE('#39'01/01/2000'#39', '#39'dd/mm/YYYY'#39');'
      '        REG.DTFINAL := TO_DATE('#39'01/01/2099'#39', '#39'dd/mm/YYYY'#39');'
      ''
      '        INSERT INTO PCDESCONTOFIDELIDADE'
      '        VALUES REG;'
      ''
      
        '        SELECT DFSEQ_PCDESCONTOFIDELIDADE.NEXTVAL INTO VCODFIDEL' +
        'IDADE FROM DUAL;'
      ''
      '        REG.tipoterceiropreco := '#39'A'#39';'
      '        REG.CODFIDELIDADE := VCODFIDELIDADE;'
      '        REG.CODCLICONVENIO := VCODCLICRMATACADO;'
      ''
      '        INSERT INTO PCDESCONTOFIDELIDADE'
      '        VALUES REG;'
      '    END LOOP;'
      'END;')
    Left = 272
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NEW'
        Value = nil
      end>
  end
  object PKG_I9CLUBECRM_HEAD: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE '
      'PACKAGE pkg_i9clubecrm'
      'AS'
      
        '    PROCEDURE ATUALIZARCLIENTESGRUPOCRM (PCODGRUPOCRM IN NUMBER)' +
        ';'
      ''
      
        '    FUNCTION BUSCAPRECOCRM (PCODFILIAL IN VARCHAR2, PCODAUXILIAR' +
        ' IN NUMBER) RETURN NUMBER;'
      ''
      
        '    PROCEDURE RECALCULARPRECOCRM (PCODFILIAL IN VARCHAR2, PCODPR' +
        'OD IN NUMBER, PNOVOPRECO IN NUMBER, PNOVOPRECOATACADO IN NUMBER,' +
        ' PQTUNIT IN NUMBER DEFAULT 1);'
      ''
      '    PROCEDURE INSERIRCLIENTECRM (PCGCENT IN VARCHAR2);'
      ''
      
        '    PROCEDURE GERARVERBACAMPANHACRM (PCODCAMPANHACRM IN NUMBER, ' +
        'PMATRICULA NUMBER);'
      ''
      'END;')
    Left = 600
    Top = 56
  end
  object PKG_I9CLUBECRM_BODY: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE '
      'PACKAGE BODY pkg_i9clubecrm'
      'AS'
      '    PROCEDURE ATUALIZARCLIENTESGRUPOCRM (PCODGRUPOCRM IN NUMBER)'
      '    IS'
      '    BEGIN'
      '        FOR REG'
      
        '        IN (SELECT I9GRUPOCRMI.CGCENT, PCCLIENT.CODCLI, REGEXP_R' +
        'EPLACE (PCCLIENT.CGCENT, '#39'[^[:digit:]]'#39') AS CPFCLIENTE'
      '            FROM I9GRUPOCRMI, PCCLIENT'
      
        '            WHERE REGEXP_REPLACE (I9GRUPOCRMI.CGCENT, '#39'[^[:digit' +
        ':]]'#39') = REGEXP_REPLACE (PCCLIENT.CGCENT, '#39'[^[:digit:]]'#39')'
      '                  AND I9GRUPOCRMI.CODGRUPOCRM = PCODGRUPOCRM)'
      '        LOOP PKG_I9CLUBECRM.INSERIRCLIENTECRM (REG.CPFCLIENTE);'
      '        END LOOP;'
      '    END;'
      ''
      
        '    FUNCTION BUSCAPRECOCRM (PCODFILIAL IN VARCHAR2, PCODAUXILIAR' +
        ' IN NUMBER)'
      '        RETURN NUMBER'
      '    IS'
      '        VCODCLICRMGERAL NUMBER (10);'
      '        VRETORNO NUMBER (18, 6);'
      '    BEGIN'
      '        VRETORNO := 0;'
      ''
      '        BEGIN'
      '            SELECT PCCONSUM.CODCLICRMGERAL'
      '            INTO VCODCLICRMGERAL'
      '            FROM PCCONSUM'
      '            WHERE ROWNUM = 1;'
      ''
      
        '            SELECT MIN (ROUND (NVL (PCDESCONTOFIDELIDADE.PVENDAC' +
        'RM, 0) * NVL (PCEMBALAGEM.QTUNIT, 1), 2))'
      '            INTO VRETORNO'
      '            FROM PCDESCONTOFIDELIDADE, PCEMBALAGEM'
      
        '            WHERE     PCDESCONTOFIDELIDADE.CODPROD = PCEMBALAGEM' +
        '.CODPROD'
      
        '                  AND PCDESCONTOFIDELIDADE.CODFILIAL = PCEMBALAG' +
        'EM.CODFILIAL'
      
        '                  AND PCDESCONTOFIDELIDADE.CODCLICONVENIO = VCOD' +
        'CLICRMGERAL'
      
        '                  AND PCDESCONTOFIDELIDADE.TIPOTERCEIROPRECO IN ' +
        '('#39'G'#39', '#39'O'#39')'
      '                  AND PCDESCONTOFIDELIDADE.DTEXCLUSAO IS NULL'
      '                  AND PCDESCONTOFIDELIDADE.CODCLI IS NULL'
      
        '                  AND TRUNC (SYSDATE) BETWEEN TRUNC (PCDESCONTOF' +
        'IDELIDADE.DTINICIAL) AND TRUNC (PCDESCONTOFIDELIDADE.DTFINAL)'
      
        '                  AND NVL (PCDESCONTOFIDELIDADE.PVENDACRM, 0) > ' +
        '0'
      '                  AND PCEMBALAGEM.CODAUXILIAR = PCODAUXILIAR'
      '                  AND PCEMBALAGEM.CODFILIAL = PCODFILIAL;'
      '        EXCEPTION'
      '            WHEN NO_DATA_FOUND'
      '            THEN'
      '                VRETORNO := 0;'
      '        END;'
      ''
      '        RETURN VRETORNO;'
      '    END;'
      ''
      
        '    PROCEDURE RECALCULARPRECOCRM (PCODFILIAL IN VARCHAR2, PCODPR' +
        'OD IN NUMBER, PNOVOPRECO IN NUMBER, PNOVOPRECOATACADO IN NUMBER,' +
        ' PQTUNIT IN NUMBER DEFAULT 1)'
      '    IS'
      '        VCODCLICRMGERAL NUMBER (10);'
      '        VCODCLICRMATACADO NUMBER (10);'
      '        VNUMREGIAOPADRAOVAREJO VARCHAR2( 100 );'
      '        VFILPRECOPOREMBALAGEM VARCHAR2( 100 );'
      '    BEGIN'
      '        /*BUSCA CLIENTE DO VAREJO E DO ATACADO*/'
      
        '        SELECT PCCONSUM.CODCLICRMGERAL, PCCONSUM.CODCLICRMATACAD' +
        'O'
      '        INTO VCODCLICRMGERAL, VCODCLICRMATACADO'
      '        FROM PCCONSUM'
      '        WHERE ROWNUM = 1;'
      ''
      '        /*SE UTILIZA OU NAO PRECIFICACAO POR EMBALAGEM*/'
      
        '        SELECT   NVL( PKG_I9UTILITARIO.BUSCAPARAMETRO( PCODFILIA' +
        'L, '#39'FIL_PRECOPOREMBALAGEM'#39' ), '#39'N'#39' )'
      '          INTO   VFILPRECOPOREMBALAGEM'
      '          FROM   DUAL;'
      ''
      '        /*REGIAO PARAMETRIZADA EM CASO DE MARGEM POR REGIAO*/'
      
        '        SELECT   NVL( PKG_I9UTILITARIO.BUSCAPARAMETRO( PCODFILIA' +
        'L, '#39'NUMREGIAOPADRAOVAREJO'#39' ), '#39'1'#39')'
      '          INTO   VNUMREGIAOPADRAOVAREJO'
      '          FROM   DUAL;'
      ''
      ''
      
        '        IF NVL(PNOVOPRECO, 0) > 0 OR NVL(PNOVOPRECOATACADO, 0) >' +
        ' 0 THEN'
      ''
      '                /*REACALCULAR PRE'#199'O VAREJO*/'
      '                FOR REG'
      '                IN (SELECT PCDESCONTOFIDELIDADE.CODFIDELIDADE,'
      '                           PCDESCONTOFIDELIDADE.CODFILIAL,'
      '                           PCDESCONTOFIDELIDADE.CODPROD,'
      '                           PCDESCONTOFIDELIDADE.CODCLICONVENIO,'
      
        '                           CASE WHEN PKG_I9UTILITARIO.GET_PRECO_' +
        'QTUNIT1(PQTUNIT, PNOVOPRECO) < PCDESCONTOFIDELIDADE.PVENDACRM TH' +
        'EN 0 ELSE PCDESCONTOFIDELIDADE.PVENDACRM END PRECOCRM,'
      '                           CASE'
      
        '                               WHEN PKG_I9UTILITARIO.GET_PRECO_Q' +
        'TUNIT1(PQTUNIT, PNOVOPRECO) < PCDESCONTOFIDELIDADE.PVENDACRM THE' +
        'N 0'
      
        '                               ELSE PKG_I9UTILITARIO.DIFERENCA_E' +
        'NTRE_MARGENS (PKG_I9UTILITARIO.GET_PRECO_QTUNIT1(PQTUNIT, PNOVOP' +
        'RECO), PCDESCONTOFIDELIDADE.PVENDACRM)'
      '                           END'
      '                               PERCDESC'
      '                    FROM PCDESCONTOFIDELIDADE'
      
        '                    WHERE     NVL (PCDESCONTOFIDELIDADE.PVENDACR' +
        'M, 0) > 0'
      '                          AND DTFINAL >= TRUNC (SYSDATE)'
      
        '                          AND PCDESCONTOFIDELIDADE.DTEXCLUSAO IS' +
        ' NULL'
      
        '                          AND PCDESCONTOFIDELIDADE.CODCLICONVENI' +
        'O = VCODCLICRMGERAL'
      
        '                          AND PCDESCONTOFIDELIDADE.CODFILIAL = P' +
        'CODFILIAL'
      
        '                          AND PCDESCONTOFIDELIDADE.CODPROD = PCO' +
        'DPROD)'
      '                LOOP'
      '                    UPDATE PCDESCONTOFIDELIDADE'
      
        '                    SET PCDESCONTOFIDELIDADE.PERCDESCONTO = REG.' +
        'PERCDESC, PCDESCONTOFIDELIDADE.PVENDACRM = REG.PRECOCRM'
      
        '                    WHERE     PCDESCONTOFIDELIDADE.CODFIDELIDADE' +
        ' = REG.CODFIDELIDADE'
      
        '                          AND PCDESCONTOFIDELIDADE.CODPROD = REG' +
        '.CODPROD'
      
        '                          AND PCDESCONTOFIDELIDADE.CODFILIAL = R' +
        'EG.CODFILIAL'
      
        '                          AND PCDESCONTOFIDELIDADE.CODCLICONVENI' +
        'O = REG.CODCLICONVENIO;'
      '                END LOOP;'
      ''
      ''
      '                /*RECALCULAR PRE'#199'O ATACADO*/'
      '                FOR REG'
      '                IN (SELECT PCDESCONTOFIDELIDADE.CODFIDELIDADE,'
      '                           PCDESCONTOFIDELIDADE.CODPROD,'
      '                           PCDESCONTOFIDELIDADE.CODFILIAL,'
      '                           PCDESCONTOFIDELIDADE.CODCLICONVENIO,'
      
        '                           CASE WHEN PKG_I9UTILITARIO.GET_PRECO_' +
        'QTUNIT1(PQTUNIT, PNOVOPRECOATACADO) < PCDESCONTOFIDELIDADE.PVEND' +
        'ACRM THEN 0 ELSE PCDESCONTOFIDELIDADE.PVENDACRM END PRECOCRM,'
      '                           CASE'
      
        '                               WHEN PKG_I9UTILITARIO.GET_PRECO_Q' +
        'TUNIT1(PQTUNIT, PNOVOPRECOATACADO) < PCDESCONTOFIDELIDADE.PVENDA' +
        'CRM THEN 0'
      
        '                               ELSE PKG_I9UTILITARIO.DIFERENCA_E' +
        'NTRE_MARGENS (PKG_I9UTILITARIO.GET_PRECO_QTUNIT1(PQTUNIT, PNOVOP' +
        'RECOATACADO), PCDESCONTOFIDELIDADE.PVENDACRM)'
      '                           END'
      '                               PERCDESC'
      '                    FROM PCDESCONTOFIDELIDADE'
      
        '                    WHERE     NVL (PCDESCONTOFIDELIDADE.PVENDACR' +
        'M, 0) > 0'
      
        '                          AND PCDESCONTOFIDELIDADE.DTEXCLUSAO IS' +
        ' NULL'
      '                          AND DTFINAL >= TRUNC (SYSDATE)'
      
        '                          AND PCDESCONTOFIDELIDADE.CODCLICONVENI' +
        'O = VCODCLICRMATACADO'
      
        '                          AND PCDESCONTOFIDELIDADE.CODFILIAL = P' +
        'CODFILIAL'
      
        '                          AND PCDESCONTOFIDELIDADE.CODPROD = PCO' +
        'DPROD)'
      '                LOOP'
      '                    UPDATE PCDESCONTOFIDELIDADE'
      
        '                    SET PCDESCONTOFIDELIDADE.PERCDESCONTO = REG.' +
        'PERCDESC, PCDESCONTOFIDELIDADE.PVENDACRM = REG.PRECOCRM'
      
        '                    WHERE     PCDESCONTOFIDELIDADE.CODFIDELIDADE' +
        ' = REG.CODFIDELIDADE'
      
        '                          AND PCDESCONTOFIDELIDADE.CODPROD = REG' +
        '.CODPROD'
      
        '                          AND PCDESCONTOFIDELIDADE.CODFILIAL = R' +
        'EG.CODFILIAL'
      
        '                          AND PCDESCONTOFIDELIDADE.CODCLICONVENI' +
        'O = REG.CODCLICONVENIO;'
      '                END LOOP;'
      ''
      ''
      '        ELSE'
      ''
      '            IF VFILPRECOPOREMBALAGEM = '#39'S'#39' THEN'
      ''
      '                        /*REACALCULAR PRE'#199'O VAREJO*/'
      '                        FOR REG'
      
        '                        IN (SELECT PCDESCONTOFIDELIDADE.CODFIDEL' +
        'IDADE,'
      '                                   PCEMBALAGEM.CODPROD,'
      '                                   PCEMBALAGEM.CODFILIAL,'
      
        '                                   PKG_I9UTILITARIO.GET_PRECO_QT' +
        'UNIT1(PCEMBALAGEM.QTUNIT, PCEMBALAGEM.PVENDA) as pvenda,'
      
        '                                   PCDESCONTOFIDELIDADE.CODCLICO' +
        'NVENIO,'
      
        '                                   CASE WHEN PKG_I9UTILITARIO.GE' +
        'T_PRECO_QTUNIT1(PCEMBALAGEM.QTUNIT, PCEMBALAGEM.PVENDA) < PCDESC' +
        'ONTOFIDELIDADE.PVENDACRM THEN 0'
      
        '                                    ELSE PCDESCONTOFIDELIDADE.PV' +
        'ENDACRM END PRECOCRM,'
      '                                   CASE'
      
        '                                       WHEN PKG_I9UTILITARIO.GET' +
        '_PRECO_QTUNIT1(PCEMBALAGEM.QTUNIT, PCEMBALAGEM.PVENDA) < PCDESCO' +
        'NTOFIDELIDADE.PVENDACRM THEN 0'
      
        '                                       ELSE PKG_I9UTILITARIO.DIF' +
        'ERENCA_ENTRE_MARGENS (PKG_I9UTILITARIO.GET_PRECO_QTUNIT1(PCEMBAL' +
        'AGEM.QTUNIT, PCEMBALAGEM.PVENDA), PCDESCONTOFIDELIDADE.PVENDACRM' +
        ')'
      '                                   END'
      '                                       PERCDESC'
      
        '                            FROM PCEMBALAGEM, PCDESCONTOFIDELIDA' +
        'DE'
      
        '                            WHERE     PCEMBALAGEM.CODFILIAL = PC' +
        'DESCONTOFIDELIDADE.CODFILIAL'
      
        '                                  AND PCEMBALAGEM.CODPROD = PCDE' +
        'SCONTOFIDELIDADE.CODPROD'
      
        '                                  AND PCEMBALAGEM.QTUNIT IN (SEL' +
        'ECT MIN (QTUNIT)'
      
        '                                                             FRO' +
        'M PCEMBALAGEM PE'
      
        '                                                             WHE' +
        'RE PE.CODPROD = PCEMBALAGEM.CODPROD AND PE.DTINATIVO IS NULL)'
      
        '                                  AND PCEMBALAGEM.CODFILIAL = PC' +
        'ODFILIAL'
      
        '                                  AND PCEMBALAGEM.CODPROD = PCOD' +
        'PROD'
      
        '                                  AND NVL (PCDESCONTOFIDELIDADE.' +
        'PVENDACRM, 0) > 0'
      
        '                                  AND TRUNC (SYSDATE) BETWEEN PC' +
        'DESCONTOFIDELIDADE.DTINICIAL AND DTFINAL'
      
        '                                  AND PCEMBALAGEM.DTINATIVO IS N' +
        'ULL'
      
        '                                  AND PCDESCONTOFIDELIDADE.DTEXC' +
        'LUSAO IS NULL'
      
        '                                  AND PCDESCONTOFIDELIDADE.CODCL' +
        'ICONVENIO = VCODCLICRMGERAL)'
      '                        LOOP'
      '                            UPDATE PCDESCONTOFIDELIDADE'
      
        '                            SET PCDESCONTOFIDELIDADE.PERCDESCONT' +
        'O = REG.PERCDESC, PCDESCONTOFIDELIDADE.PVENDACRM = REG.PRECOCRM'
      
        '                            WHERE     PCDESCONTOFIDELIDADE.CODFI' +
        'DELIDADE = REG.CODFIDELIDADE'
      
        '                                  AND PCDESCONTOFIDELIDADE.CODPR' +
        'OD = REG.CODPROD'
      
        '                                  AND PCDESCONTOFIDELIDADE.CODFI' +
        'LIAL = REG.CODFILIAL'
      
        '                                  AND PCDESCONTOFIDELIDADE.CODCL' +
        'ICONVENIO = REG.CODCLICONVENIO;'
      '                        END LOOP;'
      ''
      ''
      '                        /*RECALCULAR PRE'#199'O ATACADO*/'
      '                        FOR REG'
      
        '                        IN (SELECT PCDESCONTOFIDELIDADE.CODFIDEL' +
        'IDADE,'
      '                                   PCEMBALAGEM.CODPROD,'
      '                                   PCEMBALAGEM.CODFILIAL,'
      
        '                                   PKG_I9UTILITARIO.GET_PRECO_QT' +
        'UNIT1(PCEMBALAGEM.QTUNIT, PCEMBALAGEM.PVENDAATAC) as PVENDAATAC,'
      
        '                                   PCDESCONTOFIDELIDADE.CODCLICO' +
        'NVENIO,'
      
        '                                   CASE WHEN PKG_I9UTILITARIO.GE' +
        'T_PRECO_QTUNIT1(PCEMBALAGEM.QTUNIT, PCEMBALAGEM.PVENDAATAC) < PC' +
        'DESCONTOFIDELIDADE.PVENDACRM THEN 0 ELSE PCDESCONTOFIDELIDADE.PV' +
        'ENDACRM END PRECOCRM,'
      '                                   CASE'
      
        '                                       WHEN PKG_I9UTILITARIO.GET' +
        '_PRECO_QTUNIT1(PCEMBALAGEM.QTUNIT, PCEMBALAGEM.PVENDAATAC) < PCD' +
        'ESCONTOFIDELIDADE.PVENDACRM THEN 0'
      
        '                                       ELSE PKG_I9UTILITARIO.DIF' +
        'ERENCA_ENTRE_MARGENS (PKG_I9UTILITARIO.GET_PRECO_QTUNIT1(PCEMBAL' +
        'AGEM.QTUNIT, PCEMBALAGEM.PVENDAATAC), PCDESCONTOFIDELIDADE.PVEND' +
        'ACRM)'
      '                                   END'
      '                                       PERCDESC'
      
        '                            FROM PCEMBALAGEM, PCDESCONTOFIDELIDA' +
        'DE'
      
        '                            WHERE     PCEMBALAGEM.CODFILIAL = PC' +
        'DESCONTOFIDELIDADE.CODFILIAL'
      
        '                                  AND PCEMBALAGEM.CODPROD = PCDE' +
        'SCONTOFIDELIDADE.CODPROD'
      
        '                                  AND PCEMBALAGEM.QTUNIT IN (SEL' +
        'ECT MIN (QTUNIT)'
      
        '                                                             FRO' +
        'M PCEMBALAGEM PE'
      
        '                                                             WHE' +
        'RE PE.CODPROD = PCEMBALAGEM.CODPROD AND PE.DTINATIVO IS NULL)'
      
        '                                  AND PCEMBALAGEM.CODFILIAL = PC' +
        'ODFILIAL'
      
        '                                  AND PCEMBALAGEM.CODPROD = PCOD' +
        'PROD'
      
        '                                  AND NVL (PCDESCONTOFIDELIDADE.' +
        'PVENDACRM, 0) > 0'
      
        '                                  AND PCEMBALAGEM.DTINATIVO IS N' +
        'ULL'
      
        '                                  AND PCDESCONTOFIDELIDADE.DTEXC' +
        'LUSAO IS NULL'
      
        '                                  AND TRUNC (SYSDATE) BETWEEN PC' +
        'DESCONTOFIDELIDADE.DTINICIAL AND DTFINAL'
      
        '                                  AND PCDESCONTOFIDELIDADE.CODCL' +
        'ICONVENIO = VCODCLICRMATACADO)'
      '                        LOOP'
      '                            UPDATE PCDESCONTOFIDELIDADE'
      
        '                            SET PCDESCONTOFIDELIDADE.PERCDESCONT' +
        'O = REG.PERCDESC, PCDESCONTOFIDELIDADE.PVENDACRM = REG.PRECOCRM'
      
        '                            WHERE     PCDESCONTOFIDELIDADE.CODFI' +
        'DELIDADE = REG.CODFIDELIDADE'
      
        '                                  AND PCDESCONTOFIDELIDADE.CODPR' +
        'OD = REG.CODPROD'
      
        '                                  AND PCDESCONTOFIDELIDADE.CODFI' +
        'LIAL = REG.CODFILIAL'
      
        '                                  AND PCDESCONTOFIDELIDADE.CODCL' +
        'ICONVENIO = REG.CODCLICONVENIO;'
      '                        END LOOP;'
      '            END IF;'
      '        END IF;'
      ''
      ''
      '    END;'
      ''
      '    PROCEDURE INSERIRCLIENTECRM (PCGCENT IN VARCHAR2)'
      '    IS'
      '        VCODCLI NUMBER (10);'
      '        VCOUNT NUMBER (10);'
      '        VCLIATACADO VARCHAR2 (1);'
      '        VCODCLIATACADO NUMBER (10);'
      '        VCODCLICLIVAREJO NUMBER (10);'
      '        VNUMCARTAOFIDELIDADE VARCHAR2 (100);'
      '    BEGIN'
      '        SELECT CODCLICRMATACADO, CODCLICRMGERAL'
      '        INTO VCODCLIATACADO, VCODCLICLIVAREJO'
      '        FROM PCCONSUM'
      '        WHERE ROWNUM = 1;'
      ''
      
        '        VNUMCARTAOFIDELIDADE := REGEXP_REPLACE (PCGCENT, '#39'[^[:di' +
        'git:]]'#39');'
      '        VCLIATACADO := '#39'N'#39';'
      ''
      '        SELECT NVL (MAX (PCCLIENT.CODCLI), 0)'
      '        INTO VCODCLI'
      '        FROM PCCLIENT'
      
        '        WHERE REGEXP_REPLACE (CGCENT, '#39'[^[:digit:]]'#39') = REGEXP_R' +
        'EPLACE (PCGCENT, '#39'[^[:digit:]]'#39');'
      ''
      '        IF VCODCLI > 0'
      '        THEN'
      ''
      '            DELETE FROM PCCARTAOCRM'
      '             WHERE CODCLI = VCODCLI;'
      ''
      '            INSERT INTO PCCARTAOCRM (NUMCARTAO, CODCLI, STATUS)'
      '            VALUES (VNUMCARTAOFIDELIDADE, VCODCLI, '#39'1'#39');'
      ''
      '            UPDATE I9GRUPOCRMI'
      
        '            SET CODCLI = VCODCLI, I9GRUPOCRMI.DTCADASTRO = SYSDA' +
        'TE'
      
        '            WHERE REGEXP_REPLACE (CGCENT, '#39'[^[:digit:]]'#39') = REGE' +
        'XP_REPLACE (PCGCENT, '#39'[^[:digit:]]'#39');'
      ''
      ''
      '            FOR DADOS IN (SELECT I9GRUPOCRMC.CODGRUPOCRM,'
      
        '                                 NVL (I9GRUPOCRMC.GRUPOPRECOATAC' +
        'ADO, '#39'N'#39') AS GRUPOPRECOATACADO,'
      
        '                                 NVL (I9GRUPOCRMC.GRUPOASSOCIADO' +
        ', '#39'N'#39') AS GRUPOASSOCIADO,'
      
        '                                 NVL (I9GRUPOCRMC.USABIOMETRIA, ' +
        #39'N'#39') AS USABIOMETRIA,'
      '                                 I9GRUPOCRMI.CODCLI,'
      '                                 I9GRUPOCRMI.CGCENT,'
      '                                 I9GRUPOCRMI.DTINATIVO,'
      '                                 I9GRUPOCRMI.DTATUALIZACAO,'
      
        '                                 REGEXP_REPLACE (PCCLIENT.CGCENT' +
        ', '#39'[^[:digit:]]'#39') AS CPFCLIENTE,'
      '                                 PCCLIENT.BIOMETRIA1'
      
        '                          FROM I9GRUPOCRMI, I9GRUPOCRMC, PCCLIEN' +
        'T'
      
        '                          WHERE     I9GRUPOCRMC.CODGRUPOCRM = I9' +
        'GRUPOCRMI.CODGRUPOCRM'
      
        '                                AND PCCLIENT.CODCLI = I9GRUPOCRM' +
        'I.CODCLI'
      '                                AND I9GRUPOCRMI.CODCLI = VCODCLI'
      
        '                                AND I9GRUPOCRMI.CODGRUPOCRM IN (' +
        'SELECT MIN (GRUPOI.CODGRUPOCRM)'
      
        '                                                                ' +
        'FROM I9GRUPOCRMI GRUPOI'
      
        '                                                                ' +
        'WHERE GRUPOI.CODCLI = I9GRUPOCRMI.CODCLI)'
      '                          ORDER BY I9GRUPOCRMC.CODGRUPOCRM DESC)'
      '            LOOP'
      ''
      
        '              /*VALIDA SE GRUPO '#201' ATACADO E SE CLIENTE TEM BIOME' +
        'TRIA CADASTRADA*/'
      '               IF (DADOS.GRUPOPRECOATACADO = '#39'S'#39')'
      '               THEN'
      '                   IF (DADOS.USABIOMETRIA = '#39'S'#39')'
      '                   THEN'
      ''
      '                   IF DADOS.DTINATIVO IS NOT NULL'
      '                    THEN'
      '                      VCLIATACADO := '#39'N'#39';'
      '                      VNUMCARTAOFIDELIDADE := DADOS.CPFCLIENTE;'
      '                    ELSE'
      '                         IF (DADOS.BIOMETRIA1 IS NOT NULL)'
      '                           THEN'
      '                               VCLIATACADO := '#39'S'#39';'
      
        '                               VNUMCARTAOFIDELIDADE := TO_CHAR (' +
        'SYSDATE, '#39'DDMM'#39') || DADOS.CPFCLIENTE || TO_CHAR (SYSDATE, '#39'SS'#39');'
      '                           ELSE'
      '                               VCLIATACADO := '#39'N'#39';'
      
        '                               VNUMCARTAOFIDELIDADE := DADOS.CPF' +
        'CLIENTE;'
      '                           END IF;'
      '                    END IF;'
      ''
      '                   ELSE'
      '                       VCLIATACADO := '#39'S'#39';'
      '                       VNUMCARTAOFIDELIDADE := DADOS.CPFCLIENTE;'
      '                   END IF;'
      '               ELSE'
      '                   VCLIATACADO := '#39'N'#39';'
      '                   VNUMCARTAOFIDELIDADE := DADOS.CPFCLIENTE;'
      '               END IF;'
      '            END LOOP;'
      ''
      '            UPDATE PCCLIENT'
      '            SET CLIATACADO = VCLIATACADO,'
      '                NUMCARTAOFIDELIDADE = VNUMCARTAOFIDELIDADE,'
      
        '                CODCLIPRINC = DECODE (VCLIATACADO, '#39'S'#39', VCODCLIA' +
        'TACADO, VCODCLICLIVAREJO)'
      '            WHERE CODCLI = VCODCLI;'
      '        END IF;'
      '    END;'
      ''
      ''
      '    FUNCTION CLIENTECADASTRADO (PCGC IN VARCHAR2)'
      '        RETURN NUMBER'
      '    IS'
      '        VCODCLICADASTRO NUMBER (18);'
      '        VRETORNO VARCHAR2 (1);'
      '    BEGIN'
      '        SELECT NVL (MAX (PCCLIENT.CODCLI), 0)'
      '        INTO VCODCLICADASTRO'
      '        FROM PCCLIENT'
      
        '        WHERE REGEXP_REPLACE (PCCLIENT.CGCENT, '#39'[^[:digit:]]'#39') =' +
        ' REGEXP_REPLACE (PCGC, '#39'[^[:digit:]]'#39')'
      '        AND PCCLIENT.DTEXCLUSAO IS NULL;'
      ''
      '        RETURN VCODCLICADASTRO;'
      '    END;'
      ''
      ''
      
        '    PROCEDURE GERARVERBACAMPANHACRM (PCODCAMPANHACRM IN NUMBER, ' +
        'PMATRICULA NUMBER)'
      '    IS'
      '        VRETORNO VARCHAR2 (1000);'
      '        VNNUMPED PCPEDC.NUMPED%TYPE;'
      '        VNNUMPEDAPLICAR PCPEDC.NUMPED%TYPE;'
      '        VNNUMTRANSVENDAAPLICAR PCPEDC.NUMTRANSVENDA%TYPE;'
      '        VSCODFILIALAPLICAR PCPEDC.CODFILIAL%TYPE;'
      ''
      
        '        PROCEDURE RECALCULARCABECALHO (PNNUMPED IN NUMBER, PNNUM' +
        'TRANSVENDA IN NUMBER, PSCODFILIAL IN VARCHAR)'
      '        IS'
      '            VNCUSTOFIN PCPEDC.VLCUSTOFIN%TYPE;'
      '            VNCUSTOREAL PCPEDC.VLCUSTOREAL%TYPE;'
      '            VTOTALVERBA PCPEDC.VLVERBACMV%TYPE;'
      '        BEGIN'
      '            /*Totalizando itens do pedido*/'
      '            BEGIN'
      
        '                SELECT SUM (NVL (PCPEDI.VLCUSTOFIN, 0) * PCPEDI.' +
        'QT),'
      
        '                       SUM (NVL (PCPEDI.VLCUSTOREAL, 0) * PCPEDI' +
        '.QT),'
      
        '                       SUM (NVL (PCPEDI.VLVERBACMV, 0) * PCPEDI.' +
        'QT)'
      '                INTO VNCUSTOFIN, VNCUSTOREAL, VTOTALVERBA'
      '                FROM PCPEDI'
      '                WHERE PCPEDI.NUMPED = PNNUMPED;'
      '            EXCEPTION'
      '                WHEN NO_DATA_FOUND'
      '                THEN'
      '                    VNCUSTOFIN := 0;'
      '                    VNCUSTOREAL := 0;'
      '            END;'
      ''
      '            /*Atualizando o cabe'#231'alho do pedido*/'
      '            UPDATE PCPEDC'
      
        '            SET PCPEDC.VLCUSTOFIN = VNCUSTOFIN, PCPEDC.VLCUSTORE' +
        'AL = VNCUSTOREAL, PCPEDC.VLVERBACMV = VTOTALVERBA'
      
        '            WHERE PCPEDC.NUMPED = PNNUMPED AND PCPEDC.CODFILIAL ' +
        '= PSCODFILIAL;'
      ''
      ''
      '            /*Totalizando itens do pedido*/'
      '            BEGIN'
      
        '                SELECT SUM (PCMOV.CUSTOFIN * PCMOV.QT), SUM (PCM' +
        'OV.CUSTOREAL * PCMOV.QT)'
      '                INTO VNCUSTOFIN, VNCUSTOREAL'
      '                FROM PCMOV'
      
        '                WHERE PCMOV.NUMTRANSVENDA = PNNUMTRANSVENDA AND ' +
        'PCMOV.DTCANCEL IS NULL;'
      '            EXCEPTION'
      '                WHEN NO_DATA_FOUND'
      '                THEN'
      '                    VNCUSTOFIN := 0;'
      '                    VNCUSTOREAL := 0;'
      '            END;'
      ''
      '            /*Atualizando o cabe'#231'alho do pedido*/'
      '            UPDATE PCNFSAID'
      
        '            SET PCNFSAID.VLCUSTOFIN = VNCUSTOFIN, PCNFSAID.VLCUS' +
        'TOREAL = VNCUSTOREAL'
      
        '            WHERE PCNFSAID.NUMTRANSVENDA = PNNUMTRANSVENDA AND P' +
        'CNFSAID.CODFILIAL = PSCODFILIAL;'
      '        END;'
      '    BEGIN'
      '        FOR REG'
      '        IN (SELECT I9CAMPANHACRM.CODFILIAL,'
      '                   I9CAMPANHACRM.CODCAMPANHACRM,'
      '                   PCFORNEC.CODFORNEC,'
      '                   PCFORNEC.FORNECEDOR,'
      '                   SUM (NVL (PCPEDI.QT, 0)) AS QTVENDA,'
      
        '                   SUM (NVL (PCPEDI.QT, 0) * NVL (PCDESCONTOFIDE' +
        'LIDADE.VLVERBAUNITARIO, 0)) VLTOTALVERBA'
      '            FROM PCPEDI,'
      '                 PCPEDC,'
      '                 PCPRODUT,'
      '                 PCFORNEC,'
      '                 PCCLIENT,'
      '                 I9CAMPANHACRM,'
      '                 PCDESCONTOFIDELIDADE,'
      '                 I9CONFIGVERBACRM'
      
        '            WHERE     PCPEDC.DATA BETWEEN I9CAMPANHACRM.DTINICIA' +
        'L AND I9CAMPANHACRM.DTFINAL'
      '                  AND PCPEDC.CODFILIAL = I9CAMPANHACRM.CODFILIAL'
      '                  AND PCPEDC.CODCLI = PCCLIENT.CODCLI'
      '                  AND PCPEDC.POSICAO = '#39'F'#39
      '                  AND PCPEDI.NUMPED = PCPEDC.NUMPED'
      '                  AND PCPEDI.DATA = PCPEDC.DATA'
      '                  AND PCPEDI.CODPROD = PCPRODUT.CODPROD'
      '                  AND PCPRODUT.CODFORNEC = PCFORNEC.CODFORNEC'
      
        '                  AND I9CONFIGVERBACRM.CODFORNEC = PCFORNEC.CODF' +
        'ORNECPRINC'
      
        '                  AND I9CONFIGVERBACRM.CODCAMPANHACRM = I9CAMPAN' +
        'HACRM.CODCAMPANHACRM'
      '                  AND I9CONFIGVERBACRM.TIPOVERBA = '#39'DEFINIDO'#39
      '                  AND PCPEDC.DTCANCEL IS NULL'
      
        '                  AND PCPEDC.CONDVENDA NOT IN (4, 5, 6, 8, 10, 1' +
        '1, 12, 13, 16, 20)'
      '                  AND PCCLIENT.NUMCARTAOFIDELIDADE IS NOT NULL'
      
        '                  AND I9CAMPANHACRM.CODCAMPANHACRM = PCODCAMPANH' +
        'ACRM'
      
        '                  AND PCDESCONTOFIDELIDADE.CODCAMPANHACRM = PCOD' +
        'CAMPANHACRM'
      
        '                  AND PCDESCONTOFIDELIDADE.CODCLICONVENIO = (SEL' +
        'ECT CODCLICRMGERAL FROM PCCONSUM)'
      '                  AND PCDESCONTOFIDELIDADE.DTEXCLUSAO IS NULL'
      
        '                  AND PCPEDI.CODPROD = PCDESCONTOFIDELIDADE.CODP' +
        'ROD'
      
        '                  AND NVL (PCDESCONTOFIDELIDADE.VLVERBAUNITARIO,' +
        ' 0) > 0'
      
        '                  AND PCFORNEC.CODFORNEC NOT IN (SELECT DISTINCT' +
        ' CODFORNEC'
      '                                                 FROM PCVERBA'
      
        '                                                 WHERE CODCAMPAN' +
        'HACRM = I9CAMPANHACRM.CODCAMPANHACRM)'
      '            GROUP BY I9CAMPANHACRM.CODFILIAL,'
      '                     I9CAMPANHACRM.CODCAMPANHACRM,'
      '                     PCFORNEC.CODFORNEC,'
      '                     PCFORNEC.FORNECEDOR'
      '            ORDER BY PCFORNEC.CODFORNEC)'
      '        LOOP'
      '            PKG_I9UTILITARIO.GERAVERBA (REG.CODFILIAL,'
      '                                        REG.CODFORNEC,'
      '                                        '#39'M'#39','
      '                                        REG.VLTOTALVERBA,'
      
        '                                        '#39'CAMPANHA CRM: '#39' || REG.' +
        'CODCAMPANHACRM,'
      '                                        TRUNC (SYSDATE + 40),'
      '                                        '#39'S'#39','
      '                                        '#39'S'#39','
      '                                        PMATRICULA,'
      '                                        VRETORNO);'
      ''
      '            IF IS_NUMBER (VRETORNO) = '#39'FALSE'#39
      '            THEN'
      '                ROLLBACK;'
      
        '                RAISE_APPLICATION_ERROR (-20001, '#39'ERRO DA VERBA:' +
        ' '#39' || VRETORNO);'
      '                RETURN;'
      '            END IF;'
      ''
      
        '            DBMS_OUTPUT.PUT_LINE ('#39'RETORNO VERBA: '#39' || VRETORNO)' +
        ';'
      ''
      ''
      '            UPDATE PCVERBA'
      '            SET PCVERBA.CODCAMPANHACRM = REG.CODCAMPANHACRM'
      '            WHERE PCVERBA.NUMVERBA = TO_NUMBER (VRETORNO);'
      ''
      '            UPDATE I9CONFIGVERBACRM'
      '            SET I9CONFIGVERBACRM.NUMVERBA = TO_NUMBER (VRETORNO)'
      
        '            WHERE I9CONFIGVERBACRM.CODCAMPANHACRM = REG.CODCAMPA' +
        'NHACRM'
      '            AND I9CONFIGVERBACRM.CODFORNEC = REG.CODFORNEC;'
      ''
      '        END LOOP;'
      ''
      ''
      '        FOR REG'
      '        IN (SELECT I9CAMPANHACRM.CODCAMPANHACRM,'
      '                   I9CAMPANHACRM.CODFILIAL,'
      '                   I9CAMPANHACRM.DTINICIAL,'
      '                   I9CAMPANHACRM.DTFINAL,'
      '                   PCFORNEC.CODFORNEC,'
      '                   PCFORNEC.FORNECEDOR,'
      '                   PCPEDI.CODPROD,'
      '                   PCPRODUT.DESCRICAO,'
      '                   PCDESCONTOFIDELIDADE.VLVERBAUNITARIO,'
      '                   SUM (NVL (PCPEDI.QT, 0)) AS QTVENDA,'
      
        '                   SUM (NVL (PCPEDI.QT, 0) * NVL (PCDESCONTOFIDE' +
        'LIDADE.VLVERBAUNITARIO, 0)) VLTOTALVERBA,'
      '                   PCVERBA.NUMVERBA'
      '            FROM PCPEDI,'
      '                 PCPEDC,'
      '                 PCPRODUT,'
      '                 PCFORNEC,'
      '                 PCCLIENT,'
      '                 I9CAMPANHACRM,'
      '                 PCDESCONTOFIDELIDADE,'
      '                 PCVERBA'
      
        '            WHERE     PCPEDC.DATA BETWEEN I9CAMPANHACRM.DTINICIA' +
        'L AND I9CAMPANHACRM.DTFINAL'
      '                  AND PCPEDC.CODFILIAL = I9CAMPANHACRM.CODFILIAL'
      '                  AND PCPEDC.CODCLI = PCCLIENT.CODCLI'
      '                  AND PCPEDC.POSICAO = '#39'F'#39
      '                  AND PCVERBA.CODFORNEC = PCFORNEC.CODFORNEC'
      
        '                  AND PCVERBA.CODCAMPANHACRM = I9CAMPANHACRM.COD' +
        'CAMPANHACRM'
      '                  AND PCPEDI.NUMPED = PCPEDC.NUMPED'
      '                  AND PCPEDI.DATA = PCPEDC.DATA'
      '                  AND PCPEDI.CODPROD = PCPRODUT.CODPROD'
      '                  AND PCPRODUT.CODFORNEC = PCFORNEC.CODFORNEC'
      '                  AND PCPEDC.DTCANCEL IS NULL'
      
        '                  AND PCPEDC.CONDVENDA NOT IN (4, 5, 6, 8, 10, 1' +
        '1, 12, 13, 16, 20)'
      '                  AND PCCLIENT.NUMCARTAOFIDELIDADE IS NOT NULL'
      
        '                  AND I9CAMPANHACRM.CODCAMPANHACRM = PCODCAMPANH' +
        'ACRM'
      
        '                  AND PCDESCONTOFIDELIDADE.CODCAMPANHACRM = PCOD' +
        'CAMPANHACRM'
      
        '                  AND PCDESCONTOFIDELIDADE.CODCLICONVENIO = (SEL' +
        'ECT CODCLICRMGERAL FROM PCCONSUM)'
      '                  AND PCDESCONTOFIDELIDADE.DTEXCLUSAO IS NULL'
      
        '                  AND PCPEDI.CODPROD = PCDESCONTOFIDELIDADE.CODP' +
        'ROD'
      
        '                  AND NVL (PCDESCONTOFIDELIDADE.VLVERBAUNITARIO,' +
        ' 0) > 0'
      '                  AND NOT EXISTS (SELECT 1'
      '                                  FROM PCAPLICVERBAI X'
      
        '                                  WHERE X.NUMVERBA = PCVERBA.NUM' +
        'VERBA AND X.CODPROD = PCPEDI.CODPROD)'
      '            GROUP BY I9CAMPANHACRM.CODCAMPANHACRM,'
      '                     I9CAMPANHACRM.CODFILIAL,'
      '                     I9CAMPANHACRM.DTINICIAL,'
      '                     I9CAMPANHACRM.DTFINAL,'
      '                     PCFORNEC.CODFORNEC,'
      '                     PCFORNEC.FORNECEDOR,'
      '                     PCPEDI.CODPROD,'
      '                     PCPRODUT.DESCRICAO,'
      '                     PCDESCONTOFIDELIDADE.VLVERBAUNITARIO,'
      '                     PCVERBA.NUMVERBA'
      '            ORDER BY PCFORNEC.CODFORNEC)'
      '        LOOP'
      
        '            PKG_I9UTILITARIO.GERAVERBA_PCAPLICVERBAI (REG.NUMVER' +
        'BA,'
      '                                                      '#39'S'#39','
      
        '                                                      REG.CODPRO' +
        'D,'
      
        '                                                      REG.VLVERB' +
        'AUNITARIO,'
      
        '                                                      REG.DTINIC' +
        'IAL,'
      
        '                                                      REG.DTFINA' +
        'L,'
      
        '                                                      REG.QTVEND' +
        'A,'
      
        '                                                      REG.VLTOTA' +
        'LVERBA,'
      
        '                                                      '#39'CAMPANHA ' +
        'CRM: '#39' || REG.CODCAMPANHACRM,'
      '                                                      VRETORNO);'
      '        END LOOP;'
      ''
      ''
      '        VNNUMPED := 0;'
      ''
      '        FOR APLICACOES IN (SELECT PCPEDC.NUMPED,'
      '                                  PCPEDC.NUMTRANSVENDA,'
      '                                  PCPEDI.CODPROD,'
      '                                  PCPEDC.CODFILIAL,'
      '                                  PCPEDI.QT,'
      
        '                                  (NVL (PCAPLICVERBAI.VLAPLIC, 0' +
        ') / PCAPLICVERBAI.QTVENDA) AS VLAPLIC,'
      '                                  PCAPLICVERBAI.NUMAPLIC,'
      '                                  PCPEDI.NUMSEQ,'
      '                                  PCAPLICVERBAI.NUMVERBA,'
      '                                  PCPEDI.ROWID RIDPCPEDI,'
      '                                  '#39'9810'#39' AS ROTINALANC,'
      
        '                                  NVL (PCPEDI.VLCUSTOFIN, 0) VLC' +
        'USTOFIN,'
      
        '                                  NVL (PCPEDI.VLCUSTOREAL, 0) VL' +
        'CUSTOREAL'
      '                           FROM PCPEDC,'
      '                                PCPEDI,'
      '                                PCPRODUT,'
      '                                PCAPLICVERBAI,'
      '                                PCCLIENT,'
      '                                PCDESCONTOFIDELIDADE,'
      '                                I9CAMPANHACRM,'
      '                                PCVERBA'
      
        '                           WHERE     PCCLIENT.CODCLI = PCPEDC.CO' +
        'DCLI'
      '                                 AND PCPEDC.POSICAO = '#39'F'#39
      
        '                                 AND PCPEDC.DATA BETWEEN I9CAMPA' +
        'NHACRM.DTINICIAL AND I9CAMPANHACRM.DTFINAL'
      '                                 AND PCPEDC.DTCANCEL IS NULL'
      
        '                                 AND PCPEDC.CONDVENDA NOT IN (4,' +
        ' 10, 13)'
      
        '                                 AND I9CAMPANHACRM.CODCAMPANHACR' +
        'M = PCVERBA.CODCAMPANHACRM'
      
        '                                 AND PCVERBA.NUMVERBA = PCAPLICV' +
        'ERBAI.NUMVERBA'
      
        '                                 AND PCPEDC.CODFILIAL = I9CAMPAN' +
        'HACRM.CODFILIAL'
      
        '                                 AND NVL (PCPEDC.CODFILIALNF, PC' +
        'PEDC.CODFILIAL) = I9CAMPANHACRM.CODFILIAL'
      
        '                                 AND PCPEDC.NUMPED = PCPEDI.NUMP' +
        'ED'
      '                                 AND PCPEDC.DATA = PCPEDI.DATA'
      
        '                                 AND PCPEDI.CODPROD = PCPRODUT.C' +
        'ODPROD'
      
        '                                 AND PCAPLICVERBAI.CODPROD = PCP' +
        'RODUT.CODPROD'
      
        '                                 AND PCAPLICVERBAI.CODFILIAL = I' +
        '9CAMPANHACRM.CODFILIAL'
      '                                 AND PCAPLICVERBAI.QTVENDA > 0'
      
        '                                 AND (NVL (PCAPLICVERBAI.VLAPLIC' +
        ', 0) / PCAPLICVERBAI.QTVENDA) > 0'
      
        '                                 AND I9CAMPANHACRM.CODCAMPANHACR' +
        'M = PCODCAMPANHACRM'
      
        '                                 AND PCDESCONTOFIDELIDADE.CODCAM' +
        'PANHACRM = PCODCAMPANHACRM'
      
        '                                 AND PCDESCONTOFIDELIDADE.CODCLI' +
        'CONVENIO = (SELECT CODCLICRMGERAL'
      
        '                                                                ' +
        '            FROM PCCONSUM'
      
        '                                                                ' +
        '            WHERE ROWNUM = 1)'
      
        '                                 AND PCPEDI.CODPROD = PCDESCONTO' +
        'FIDELIDADE.CODPROD'
      
        '                                 AND PCCLIENT.NUMCARTAOFIDELIDAD' +
        'E IS NOT NULL'
      
        '                                 AND PCPEDI.VLCUSTOFINANTCRM IS ' +
        'NULL'
      '                           ORDER BY PCPEDC.NUMPED)'
      '        LOOP'
      '            IF (VNNUMPED = 0)'
      '            THEN'
      '                VNNUMPED := APLICACOES.NUMPED;'
      '                /*'#218'ltimos registros utilizado*/'
      '                VNNUMPEDAPLICAR := APLICACOES.NUMPED;'
      
        '                VNNUMTRANSVENDAAPLICAR := APLICACOES.NUMTRANSVEN' +
        'DA;'
      '                VSCODFILIALAPLICAR := APLICACOES.CODFILIAL;'
      '            END IF;'
      ''
      '            /*Inserindo a aplica'#231#227'o de verba*/'
      '            INSERT INTO PCAPLICVERBAPEDI (NUMVERBA,'
      '                                          DATA,'
      '                                          NUMAPLIC,'
      '                                          CODPROD,'
      '                                          NUMSEQPED,'
      '                                          VLVERBACMV,'
      '                                          NUMPED,'
      '                                          CODFILIAL,'
      '                                          ROTINALANC,'
      '                                          CODFUNC)'
      '            VALUES (APLICACOES.NUMVERBA,'
      '                    SYSDATE,'
      '                    APLICACOES.NUMAPLIC,'
      '                    APLICACOES.CODPROD,'
      '                    APLICACOES.NUMSEQ,'
      '                    APLICACOES.VLAPLIC,'
      '                    APLICACOES.NUMPED,'
      '                    APLICACOES.CODFILIAL,'
      '                    APLICACOES.ROTINALANC,'
      '                    PMATRICULA);'
      ''
      '            /*Atualizando PCPEDI*/'
      '            UPDATE PCPEDI'
      
        '            SET PCPEDI.VLCUSTOFINANTCRM = PCPEDI.VLCUSTOFIN, PCP' +
        'EDI.VLCUSTOREALANTCRM = PCPEDI.VLCUSTOREAL'
      '            WHERE PCPEDI.ROWID = APLICACOES.RIDPCPEDI;'
      ''
      '            /*Atualizando PCPEDI*/'
      '            UPDATE PCPEDI'
      
        '            SET PCPEDI.VLCUSTOFIN = APLICACOES.VLCUSTOFIN - APLI' +
        'CACOES.VLAPLIC,'
      
        '                PCPEDI.VLCUSTOREAL = APLICACOES.VLCUSTOREAL - AP' +
        'LICACOES.VLAPLIC,'
      '                PCPEDI.NUMAPLIC = APLICACOES.NUMAPLIC,'
      '                PCPEDI.NUMVERBAREBCMV = APLICACOES.NUMVERBA'
      '            WHERE PCPEDI.ROWID = APLICACOES.RIDPCPEDI;'
      ''
      '            /*Atualizando PCMOV*/'
      '            UPDATE PCMOV'
      
        '            SET PCMOV.CUSTOFIN = APLICACOES.VLCUSTOFIN - APLICAC' +
        'OES.VLAPLIC,'
      
        '                PCMOV.CUSTOREAL = APLICACOES.VLCUSTOREAL - APLIC' +
        'ACOES.VLAPLIC,'
      '                PCMOV.DTAPURACAO = SYSDATE,'
      '                PCMOV.NUMVERBAREBCMV = APLICACOES.NUMVERBA'
      '            WHERE     PCMOV.NUMPED = APLICACOES.NUMPED'
      '                  AND PCMOV.CODFILIAL = APLICACOES.CODFILIAL'
      
        '                  AND NVL (PCMOV.CODFILIALNF, PCMOV.CODFILIAL) =' +
        ' APLICACOES.CODFILIAL'
      '                  AND PCMOV.CODPROD = APLICACOES.CODPROD'
      '                  AND PCMOV.NUMSEQ = APLICACOES.NUMSEQ'
      '                  AND PCMOV.DTCANCEL IS NULL'
      '                  AND PCMOV.CODOPER IN ('#39'S'#39', '#39'SB'#39')'
      
        '                  AND PCMOV.NUMTRANSVENDA = APLICACOES.NUMTRANSV' +
        'ENDA;'
      ''
      '            IF (VNNUMPED <> APLICACOES.NUMPED)'
      '            THEN'
      '                /*Recalculo do cabe'#231'alho*/'
      '                VNNUMPED := APLICACOES.NUMPED;'
      
        '                RECALCULARCABECALHO (VNNUMPEDAPLICAR, VNNUMTRANS' +
        'VENDAAPLICAR, VSCODFILIALAPLICAR);'
      '                /*'#218'ltimos registros utilizado*/'
      '                VNNUMPEDAPLICAR := APLICACOES.NUMPED;'
      
        '                VNNUMTRANSVENDAAPLICAR := APLICACOES.NUMTRANSVEN' +
        'DA;'
      '                VSCODFILIALAPLICAR := APLICACOES.CODFILIAL;'
      '            END IF;'
      '        END LOOP;'
      ''
      '        IF (VNNUMPED = VNNUMPEDAPLICAR)'
      '        THEN'
      
        '            RECALCULARCABECALHO (VNNUMPEDAPLICAR, VNNUMTRANSVEND' +
        'AAPLICAR, VSCODFILIALAPLICAR);'
      '        END IF;'
      ''
      '        UPDATE I9CAMPANHACRM'
      '        SET DTREBAIXACUSTO = SYSDATE'
      '        WHERE CODCAMPANHACRM = PCODCAMPANHACRM;'
      ''
      '        COMMIT;'
      '    END;'
      'END;')
    Left = 601
    Top = 112
  end
  object JOB_I9_ATUALIZAR_ETIQUETAS: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'BEGIN'
      ' DBMS_SCHEDULER.CREATE_JOB ('
      '   job_name            =>  '#39'I9_ATUALIZAR_ETIQUETAS'#39', '
      '   job_type            =>  '#39'STORED_PROCEDURE'#39','
      
        '   job_action          =>  '#39'PKG_I9UTILITARIO.ATUALIZAR_ETIQUETAS' +
        #39','
      
        '   start_date          =>   TRUNC(SYSDATE + 1) - INTERVAL '#39'45'#39' m' +
        'inute,'
      '   repeat_interval     =>  '#39'FREQ=DAILY'#39','
      '   end_date => NULL,'
      '   enabled => TRUE,'
      '   restartable => TRUE,'
      '   auto_drop => FALSE);'
      'END;')
    Left = 1000
    Top = 360
  end
  object JOB_I9_ATUALIZAR_PRECOVENDA: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'BEGIN'
      ' DBMS_SCHEDULER.CREATE_JOB ('
      '   job_name            =>  '#39'I9_ATUALIZAR_PRECOVENDA'#39', '
      '   job_type            =>  '#39'STORED_PROCEDURE'#39','
      
        '   job_action          =>  '#39'PKG_I9UTILITARIO.ATUALIZAR_PRECOVEND' +
        'A'#39','
      
        '   start_date          =>   TRUNC(SYSDATE + 1) + INTERVAL '#39'4'#39' ho' +
        'ur,'
      '   repeat_interval     =>  '#39'FREQ=DAILY'#39','
      '   end_date => NULL,'
      '   enabled => TRUE,'
      '   restartable => TRUE,'
      '   auto_drop => FALSE);'
      'END;')
    Left = 1000
    Top = 416
  end
  object TABLE_I9GRUPOFILIALC: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9GRUPOFILIALC'
      '('
      'CODGRUPO NUMBER (10),'
      'DESCRICAO VARCHAR2 (100),'
      'CODFUNCINCLUSAO NUMBER (10),'
      'DTINCLUSAO DATE,'
      'CODFUNCALTERACAO NUMBER (10),'
      'DTALTERACAO DATE,'
      'CODFILIALPRINC VARCHAR2(2)'
      ')')
    Left = 592
    Top = 304
  end
  object TABLE_I9GRUPOFILIALI: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9GRUPOFILIALI'
      '('
      'CODGRUPO NUMBER (10),'
      'CODFILIAL VARCHAR2(2)'
      ')')
    Left = 592
    Top = 360
  end
  object TRG_PCPROMC_I9CAMPANHACRM: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE TRIGGER TRG_PCPROMC_I9CAMPANHACRM'
      '    BEFORE INSERT'
      '    ON PCPROMC'
      '    REFERENCING NEW AS NEW OLD AS OLD'
      '    FOR EACH ROW'
      'DECLARE'
      '    TEMCRM   VARCHAR2 (1);'
      'BEGIN'
      '    BEGIN'
      '        SELECT COUNT(*) AS QT'
      #9#9'INTO TEMCRM'
      #9#9'FROM PCOFERTAPROGRAMADAC, PCOFERTAPROGRAMADAI'
      
        #9#9'WHERE PCOFERTAPROGRAMADAC.CODOFERTA = PCOFERTAPROGRAMADAI.CODO' +
        'FERTA'
      
        #9#9'AND PCOFERTAPROGRAMADAI.CODPROD IN (SELECT PCPRODUT.CODPROD FR' +
        'OM PCPRODUT WHERE PCPRODUT.CODPRODPRINC = :NEW.CODPROD)'
      
        #9#9'AND ((PCOFERTAPROGRAMADAC.DTINICIAL BETWEEN :NEW.DTINICIO AND ' +
        ':NEW.DTFIM) OR (PCOFERTAPROGRAMADAC.DTFINAL BETWEEN :NEW.DTFIM A' +
        'ND :NEW.DTINICIO)  OR (PCOFERTAPROGRAMADAC.DTFINAL >= :NEW.DTFIM' +
        ' AND PCOFERTAPROGRAMADAC.DTINICIAL <= :NEW.DTINICIO))'
      #9#9'AND PCOFERTAPROGRAMADAC.CODFILIAL = :NEW.CODFILIAL;'
      #9#9
      #9'IF TEMCRM > 0 THEN '
      
        #9#9'Raise_Application_Error (-20343, '#39'N'#227'o foi possivel incluir o c' +
        'ombo pois o item j'#225' se encontra em uma campanha CRM virgente '#39');'
      #9'END IF;'
      ''
      '    EXCEPTION'
      '        WHEN NO_DATA_FOUND'
      '        THEN'
      '            NULL;'
      '    END;'
      'END;')
    Left = 440
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NEW'
        Value = nil
      end>
  end
  object TABLE_I9CLASSIFICMERC: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9CLASSIFICMERC'
      '    (CODCLASSIFICMERC               NUMBER(8,0),'
      '    CODFILIAL                      VARCHAR2(2),'
      '    CODDEPTO                       NUMBER(6,0),'
      '    CODSEC                         NUMBER(6,0),'
      '    CODCATEGORIA                   NUMBER(6,0),'
      '    CODSUBCATEGORIA                NUMBER(7,0),'
      '    CODPROD                        NUMBER(6,0),'
      '    CODCOMPRADOR                   NUMBER(8,0),'
      '    MARGEMGARANTIDA                NUMBER(18,6))')
    Left = 768
    Top = 496
  end
  object TABLE_I9CONFIGVERBACRM: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9CONFIGVERBACRM'
      '    (CODCAMPANHACRM                 NUMBER(18,0) NOT NULL,'
      '    TIPOVERBA                      VARCHAR2(50),'
      '    VLVERBA                        NUMBER(18,2),'
      '    DTAPURACAOVERBAINI             DATE,'
      '    DTAPURACAOVERBAFIM             DATE,'
      '    TIPOPAGTOVERBA                 VARCHAR2(1),'
      '    CODFORNEC                      NUMBER(18,0),'
      '    NUMVERBA                       NUMBER(18,0))')
    Left = 592
    Top = 432
  end
  object TABLE_I9CONCORRENTE: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9CONCORRENTE (CODCONC NUMBER (10) PRIMARY KEY'
      '                            , CONCORRENTE VARCHAR2 (100)'
      '                            , RAZAOSOCIAL VARCHAR2 (100)'
      '                            , CNPJ VARCHAR2 (20)'
      '                            , TELEFONE VARCHAR2 (20)'
      '                            , ATIVO VARCHAR2 (1))')
    Left = 600
    Top = 496
  end
  object TABLE_I9GRUPOFILIALCONC: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9GRUPOFILIALCONC'
      '('
      'CODGRUPO NUMBER (10),'
      'CODCONC NUMBER (10)'
      ')')
    Left = 424
    Top = 416
  end
  object TABLE_I9PESQUISACONCORRENTE: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9PESQUISACONCORRENTE'
      '    (CODPESQUISA                    NUMBER(*,0),'
      '    IDCONCORRENTE                  NUMBER(*,0),'
      '    IDPRODUTOINBOX                 NUMBER(*,0),'
      '    IDPRODUTOCLIENTE               NUMBER(*,0),'
      '    DESCRICAOPRODUTOINBOX          VARCHAR2(200),'
      '    EANPRODUTO                     VARCHAR2(50),'
      '    PRECOVAREJO                    NUMBER(18,2),'
      '    PRECOATACADO                   NUMBER(18,2),'
      '    PRECODESCONHECIDO              NUMBER(18,2),'
      '    DATAPRECO                      DATE,'
      '    CNPJCONCORRENTE                VARCHAR2(50))')
    Left = 424
    Top = 352
  end
  object TABLE_I9LOGROTINA: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9LOGROTINA'
      '('
      '    CODLOG NUMBER (18),'
      '    DTLOG DATE,'
      '    ACAO VARCHAR2 (100),'
      '    DTINICIOACAO DATE,'
      '    DTFIMACAO DATE,'
      '    TEXTOSQL CLOB,'
      '    CODFUNCEXEC INTEGER,'
      '    MAQUINA VARCHAR2 (100),'
      '    USUARIO VARCHAR2 (100),'
      '    EXECUTAVEL VARCHAR2(100),'
      '    VERSAOEXECUTAVEL VARCHAR2(50)'
      ')')
    Left = 424
    Top = 272
  end
  object TABLE_I9CLUSTERCONCORRENTE: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9CLUSTERCONCORRENTE'
      '('
      '    CODGRUPO    NUMBER( 10 ),'
      '    CODCONCOR   NUMBER( 10 )'
      ')')
    Left = 280
    Top = 520
  end
  object TABLE_I9FILIALCONCORRENTE: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9CLUSTERCONCORRENTE'
      '('
      '    CODGRUPO    NUMBER( 10 ),'
      '    CODCONCOR   NUMBER( 10 )'
      ')')
    Left = 432
    Top = 488
  end
  object IS_NUMBER: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE FUNCTION IS_NUMBER (STR IN VARCHAR2)'
      '    RETURN VARCHAR2'
      'IS'
      '    DUMMY   NUMBER;'
      'BEGIN'
      '    DUMMY := TO_NUMBER (STR);'
      '    RETURN ('#39'TRUE'#39');'
      'EXCEPTION'
      '    WHEN OTHERS'
      '    THEN'
      '        RETURN ('#39'FALSE'#39');'
      'END;')
    Left = 1000
    Top = 480
  end
  object TABLE_I9CONTROLEINTEGRACAO: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE TABLE I9CONTROLEINTEGRACAO'
      '    (INTEGRACAO                     VARCHAR2(100 BYTE),'
      '    TIPO                           VARCHAR2(100 BYTE),'
      '    DTINTEGRACAO                   DATE,'
      '    NUMERADOR                      NUMBER(20,0))')
    Left = 424
    Top = 144
  end
  object TRG_I9_RECALCULAR_PRECOEMB: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE TRIGGER trg_i9precocrm_pcembalagem'
      ' BEFORE'
      '   UPDATE OF pvenda, pvendaatac'
      ' ON pcembalagem'
      'REFERENCING NEW AS NEW OLD AS OLD'
      ' FOR EACH ROW'
      'BEGIN'
      '    IF     (NVL (:NEW.QTUNIT, 1) = 1)'
      
        '       AND ( (:NEW.PVENDA <> NVL (:OLD.PVENDA, 0)) OR (:NEW.PVEN' +
        'DAATAC <> NVL (:OLD.PVENDAATAC, 0)))'
      
        '       AND (NVL (:NEW.PVENDA, 0) > 0 OR NVL (:NEW.PVENDAATAC, 0)' +
        ' > 0)'
      '    THEN'
      '        PKG_I9CLUBECRM.RECALCULARPRECOCRM (:NEW.CODFILIAL,'
      '                                           :NEW.CODPROD,'
      '                                           :NEW.PVENDA,'
      '                                           :NEW.PVENDAATAC);'
      '    END IF;'
      'EXCEPTION'
      '    WHEN OTHERS'
      '    THEN'
      '        NULL;'
      'END;')
    Left = 880
    Top = 528
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
  object TRG_PCEMBALAGEM_I9CAMPANHACRM: TUniQuery
    Connection = DmLogin.Conexao
    SQL.Strings = (
      'CREATE OR REPLACE TRIGGER TRG_PCEMBALAGEM_I9CAMPANHACRM'
      '    BEFORE UPDATE OF POFERTA, DTOFERTAINI, DTOFERTAFIM'
      '    ON PCEMBALAGEM'
      '    REFERENCING NEW AS NEW OLD AS OLD'
      '    FOR EACH ROW'
      'DECLARE'
      '    TEMCRM   VARCHAR2 (1);'
      'BEGIN'
      '    IF NVL (:NEW.POFERTA, 0) > 0'
      '    THEN'
      '        BEGIN'
      '            SELECT COUNT (*)'
      '              INTO TEMCRM'
      '              FROM PCDESCONTOFIDELIDADE'
      
        '             WHERE     PCDESCONTOFIDELIDADE.CODFILIAL = :NEW.COD' +
        'FILIAL'
      
        '                   AND PCDESCONTOFIDELIDADE.CODPROD IN (SELECT Y' +
        '.CODPROD'
      
        '                                                          FROM P' +
        'CPRODUT Y'
      
        '                                                         WHERE Y' +
        '.CODPRODPRINC IN (SELECT X.CODPRODPRINC'
      
        '                                                                ' +
        '                    FROM PCPRODUT X'
      
        '                                                                ' +
        '                   WHERE X.CODPROD = :NEW.CODPROD))'
      
        '                   AND PCDESCONTOFIDELIDADE.CODCLICONVENIO = (SE' +
        'LECT CODCLICRMGERAL'
      
        '                                                                ' +
        'FROM PCCONSUM'
      
        '                                                               W' +
        'HERE ROWNUM = 1)'
      
        '                   AND NVL (PCDESCONTOFIDELIDADE.PVENDACRM, 0) >' +
        ' 0'
      
        '                   AND NVL (PCDESCONTOFIDELIDADE.PERCDESCONTO, 0' +
        ') > 0'
      '                   AND PCDESCONTOFIDELIDADE.DTEXCLUSAO IS NULL'
      
        '                   AND PCDESCONTOFIDELIDADE.DTFINAL >= TRUNC (SY' +
        'SDATE)'
      
        '                   AND PCDESCONTOFIDELIDADE.CODCLICONVENIO IN (S' +
        'ELECT CODCLICRMGERAL FROM PCCONSUM)'
      
        '                   AND (   TRUNC (PCDESCONTOFIDELIDADE.DTINICIAL' +
        ') BETWEEN TRUNC (:NEW.DTOFERTAINI) AND TRUNC (:NEW.DTOFERTAFIM)'
      
        '                        OR TRUNC (PCDESCONTOFIDELIDADE.DTFINAL) ' +
        'BETWEEN TRUNC (:NEW.DTOFERTAINI) AND TRUNC (:NEW.DTOFERTAFIM)'
      
        '                        OR TRUNC (:NEW.DTOFERTAINI) BETWEEN TRUN' +
        'C (PCDESCONTOFIDELIDADE.DTINICIAL) AND TRUNC (PCDESCONTOFIDELIDA' +
        'DE.DTFINAL)'
      
        '                        OR TRUNC (:NEW.DTOFERTAFIM) BETWEEN TRUN' +
        'C (PCDESCONTOFIDELIDADE.DTINICIAL) AND TRUNC (PCDESCONTOFIDELIDA' +
        'DE.DTFINAL));'
      ''
      ''
      '            IF TEMCRM > 0'
      '            THEN'
      
        '                RAISE_APPLICATION_ERROR (-20343, '#39'N'#227'o foi possiv' +
        'el incluir a oferta pois o item j'#225' est'#225' no CLUBE DE DESCONTOS.'#39')' +
        ';'
      '            END IF;'
      '        EXCEPTION'
      '            WHEN NO_DATA_FOUND'
      '            THEN'
      '                NULL;'
      '        END;'
      '    END IF;'
      'END;')
    Left = 1040
    Top = 536
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NEW'
        Value = nil
      end>
  end
end
