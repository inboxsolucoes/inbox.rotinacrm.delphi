--Criar coluna na PCEMBALAGEM: POSRANKING(para guardar a posição do produto no ranking de vendas ordenado pelo valor dos últimos 30 dias).
ALTER TABLE PCEMBALAGEM ADD POSRANKING NUMBER(10);

--Criar tabela I9PARAMETROS para guardar parâmetros das rotinas: CAMPOS: NOME_PARAMETRO, DESCRICAO_PARAMETRO, VALOR_PARAMETRO, IDENTIFICACAO_PARAMETRO
CREATE TABLE I9PARAMETROS (
NOME_PARAMETRO VARCHAR2(50) PRIMARY KEY,
DESCRICAO_PARAMETRO VARCHAR2(255),
VALOR_PARAMETRO VARCHAR2(255)
);

--Criar parâmetro para configurar percentual para sugestão de preço baseado na concorrência. (Percentual mais barato que)
INSERT INTO I9PARAMETROS VALUES ('PERCSUGESTPRECOCONCORRENCIA', 'Percentual utilizado no calculo de sugestão de preço, baseado no preço dos concorrentes.', '100');

--Criar tabela "I9LISTAPRODUTOS" para guardar listas de produtos pré-definidas. Colunas : "CODLISTA; DESCRICAO; CODAUXILIAR"
CREATE TABLE I9LISTAPRODUTOS (
CODLISTA NUMBER(10) NOT NULL,
DESCRICAO VARCHAR2(100),
CODAUXILIAR  NUMBER(20,0)          NOT NULL
);

