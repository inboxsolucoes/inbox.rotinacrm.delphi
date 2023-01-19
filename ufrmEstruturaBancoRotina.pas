unit ufrmEstruturaBancoRotina;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, Vcl.Menus, Vcl.ExtCtrls, cxProgressBar, Vcl.StdCtrls,
  cxButtons, cxGroupBox, dxSkinMetropolis, dxSkinVisualStudio2013Light, cxLabel,
  dxGDIPlusClasses, dxSkinMetropolisDark, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2013White, dxSkinOffice2016Dark;

type
    TfrmEstruturaBancoRotina = class(TForm)
    cxGroupBox1: TcxGroupBox;
    pbStatusAtualizacao: TcxProgressBar;
    tmrAtualizar: TTimer;
    cxLabel1: TcxLabel;
    Image1: TImage;
    procedure tmrAtualizarTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function VersaoExe: String;
    { Private declarations }
  public
    { Public declarations }
    procedure criarTabelas;
    procedure criarCampos;
    procedure criarPackages;
    procedure inserirParametros;
    procedure inserirPermissoes;
    procedure criarProcedures;
    procedure criaFuncoes;
    procedure criaSequences;
    procedure criaJobs;
    procedure removerTriggers;
    procedure criarTriggers;
    procedure salvarVersaoAtualizada;
    function PrecisaAtualizar:Boolean;
    procedure limpaLogsAntigos;
  end;

var
  frmEstruturaBancoRotina: TfrmEstruturaBancoRotina;

implementation

uses
  uLogin, ufrmBancoDados, udmEstruturaBancoRotina;

{$R *.dfm}

{ TfrmEstruturaBancoRotina }

procedure TfrmEstruturaBancoRotina.criaFuncoes;
begin
  //CRIAR FUNCOES
end;

procedure TfrmEstruturaBancoRotina.criaJobs;
begin
  //frmBancoDados.criarJob('REPLICAR_OFERTA', dmEstruturaBancoRotina.JOB_REPLICAR_OFERTA.SQL.Text);
  //frmBancoDados.criarJob('GERARANKING', dmEstruturaBancoRotina.JOB_GERARANKING.SQL.Text);
  //frmBancoDados.criarJob('I9ATACVAREJO', dmEstruturaBancoRotina.JOB_I9ATACVAREJO.SQL.Text);
  //frmBancoDados.criarJob('I9_ATUALIZAR_PRECOVENDA', dmEstruturaBancoRotina.JOB_I9_ATUALIZAR_PRECOVENDA.SQL.Text);
  //frmBancoDados.criarJob('I9_ATUALIZAR_ETIQUETAS', dmEstruturaBancoRotina.JOB_I9_ATUALIZAR_ETIQUETAS.SQL.Text);
end;

procedure TfrmEstruturaBancoRotina.criarCampos;
begin
  //PCCONSUM
  frmBancoDados.criarCampo('PCCONSUM', 'VERSAOMODULOPRICE', 'VARCHAR2(20)');
  frmBancoDados.criarCampo('PCCONSUM', 'CODCLICRMGERAL', 'NUMBER(10)');
  frmBancoDados.criarCampo('PCCONSUM', 'CODCLICRMATACADO', 'NUMBER(10)');
  //PCPRODUT
  //frmBancoDados.criarCampo('PCPRODUT', 'SENSIBILIDADE', 'VARCHAR2(3)');
  //PCEMBALAGEM
  frmBancoDados.criarCampo('PCEMBALAGEM', 'POSRANKING', 'NUMBER(10)');
  frmBancoDados.criarCampo('PCEMBALAGEM', 'PERCVENDAVAREJO', 'NUMBER(18,6)');
  frmBancoDados.criarCampo('PCEMBALAGEM', 'PERCVENDAATAC', 'NUMBER(18,6)');
  frmBancoDados.criarCampo('PCEMBALAGEM', 'ULTATUVAREJOATAC', 'DATE');
  frmBancoDados.criarCampo('PCEMBALAGEM', 'PRECOFIXO', 'VARCHAR2(1)');
  frmBancoDados.criarCampo('PCEMBALAGEM', 'DTATUALIZACAOETIQUETA', 'DATE');
  frmBancoDados.criarCampo('PCEMBALAGEM', 'POSRANKINGCLUSTER', 'NUMBER(10)');
  //I9PARAMETROS
  frmBancoDados.criarCampo('I9PARAMETROS', 'CATEGORIA_PARAMETRO', 'VARCHAR2(20)');
  frmBancoDados.criarCampo('I9PARAMETROS', 'TIPO_PARAMETRO', 'VARCHAR2(20)');
  //OFERTAPROGRAMADAC
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAC', 'DTINICIALSUGESTAO', 'DATE');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAC', 'DTFINALSUGESTAO', 'DATE');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAC', 'CODFUNCSUGESTAO', 'NUMBER(10)');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAC', 'CODFUNCLIBERACAO', 'NUMBER(10)');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAC', 'DTLIBERACAO', 'DATE');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAC', 'TIPO_OFERTA', 'VARCHAR2(50)');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAC', 'CODOFERTA_ORIG', 'NUMBER(18)');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAC', 'DTEXEC_JOB', 'DATE');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAC', 'GERAVERBA', 'VARCHAR2(1)');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAC', 'DTREJEICAO', 'DATE');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAC', 'CODFUNCREJEICAO', 'NUMBER(10)');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAC', 'DTULTALTERACAO', 'DATE');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAC', 'CODTABLOIDE', 'NUMBER(10)');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAC', 'CODFUNCDESVOFERTA', 'NUMBER(18)');
  //OFERTAPROGRAMADAI
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAI', 'GERAVERBA', 'VARCHAR2(1)');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAI', 'DTGERAVERBA', 'DATE');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAI', 'VLVERBAMARGEMMIN', 'NUMBER(18,2)');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAI', 'OFERTAFAMILIA', 'VARCHAR2(1)');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAI', 'DTINCLUSAOITEM', 'DATE');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAI', 'PRODPRINCIPAL', 'VARCHAR2(1) DEFAULT ''S'' ');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAI', 'CODOFERTAORIGEM', 'NUMBER(10) ');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAI', 'CODUSURTRANSFERENCIA', 'NUMBER(10) ');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAI', 'DTTRANSFERENCIA', 'DATE ');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAI', 'CODPROD', 'NUMBER(10) ');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAI', 'QTESTGERINICIAL', 'NUMBER(10) ');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAI', 'CODTABLOIDE', 'NUMBER(10)');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAI', 'VLVERBAUNITARIOORIGINAL', 'NUMBER(18,6)');
  frmBancoDados.criarCampo('PCOFERTAPROGRAMADAI', 'VLUNITARIOVERBA', 'NUMBER(18,2)');

  //PCDESCONTOFIDELIDADE
  frmBancoDados.criarCampo('PCDESCONTOFIDELIDADE', 'ROTINALANC', 'VARCHAR2(20)');
  frmBancoDados.criarCampo('PCDESCONTOFIDELIDADE', 'CODCAMPANHACRM', 'NUMBER(10)');
  frmBancoDados.criarCampo('PCDESCONTOFIDELIDADE', 'VLVERBAUNITARIO', 'NUMBER(18,6)');
  frmBancoDados.criarCampo('PCDESCONTOFIDELIDADE', 'TODOSCLIENTES', 'VARCHAR2(1) DEFAULT ''N'' ');
  frmBancoDados.criarCampo('PCDESCONTOFIDELIDADE', 'TIPOTERCEIROPRECO', 'varchar2(1) default ''O'' ');
  frmBancoDados.criarCampo('PCDESCONTOFIDELIDADE', 'PERCDESCONTOTABELA', 'NUMBER(18,6)');
  frmBancoDados.criarCampo('PCDESCONTOFIDELIDADE', 'PTABELACRM', 'NUMBER(18,6)');
  frmBancoDados.criarCampo('PCDESCONTOFIDELIDADE', 'PVENDACRM', 'NUMBER(18,6)');
  frmBancoDados.criarCampo('PCDESCONTOFIDELIDADE', 'PVENDACRM', 'NUMBER(18,6)');
  frmBancoDados.criarCampo('PCDESCONTOFIDELIDADE', 'PRODPRINCIPAL', 'VARCHAR2(1) DEFAULT ''N'' ');
  frmBancoDados.criarCampo('PCDESCONTOFIDELIDADE', 'CODPRODPRINC', 'NUMBER(10)');
  frmBancoDados.criarCampo('PCDESCONTOFIDELIDADE', 'DTULTALTPVENDACRM', 'DATE');
  frmBancoDados.criarCampo('PCDESCONTOFIDELIDADE', 'DTULTALTPTABELACRM', 'DATE');
  frmBancoDados.criarCampo('PCDESCONTOFIDELIDADE', 'PVENDACRMORIGINAL', 'NUMBER(18,6)');
  frmBancoDados.criarCampo('PCDESCONTOFIDELIDADE', 'VLVERBAUNITARIOORIGINAL', 'NUMBER(18,6)');

  //PCPEDC
  {frmBancoDados.criarCampo('PCPEDC', 'CLIATACADO', 'VARCHAR2(1) DEFAULT ''N'' ');
  frmBancoDados.criarCampo('PCPEDC', 'CLICRM', 'VARCHAR2(1) DEFAULT ''N'' ');}

  //PCPEDI
  frmBancoDados.criarCampo('PCPEDI', 'VLCUSTOFINANTCRM', 'NUMBER(18,6)');
  frmBancoDados.criarCampo('PCPEDI', 'VLCUSTOREALANTCRM', 'NUMBER(18,6)');

  //PCVERBA
  frmBancoDados.criarCampo('PCVERBA', 'CODCAMPANHACRM', 'NUMBER(10)');

  //I9GRUPOCRMI
  frmBancoDados.criarCampo('I9GRUPOCRMC', 'GRUPOPRECOATACADO', 'VARCHAR2(1) DEFAULT ''N'' ');
  frmBancoDados.criarCampo('I9GRUPOCRMC', 'USABIOMETRIA', 'VARCHAR2(1) DEFAULT ''N'' ');
  frmBancoDados.criarCampo('I9GRUPOCRMI', 'DTATUALIZACAO', 'DATE');
  //i9campanhacrm
  frmBancoDados.criarCampo('I9CAMPANHACRM', 'DTREBAIXACUSTO', 'DATE');
  frmBancoDados.criarCampo('I9CAMPANHACRM', 'CODTABLOIDECRM', 'NUMBER(10)');
  frmBancoDados.criarCampo('I9CAMPANHACRM', 'DTAPROVACAO', 'DATE');
  frmBancoDados.criarCampo('I9CAMPANHACRM', 'CODFUNCAPROVACAO', 'NUMBER(18)');
  frmBancoDados.criarCampo('I9CAMPANHACRM', 'DTREJEICAO', 'DATE');
  frmBancoDados.criarCampo('I9CAMPANHACRM', 'CODFUNCREJEICAO', 'NUMBER(18)');
  frmBancoDados.criarCampo('I9CAMPANHACRM', 'TODOSCLIENTES', 'VARCHAR2(1) DEFAULT ''N'' ');
  frmBancoDados.criarCampo('I9CAMPANHACRM', 'CODFUNCDESVCAMPANHA', 'NUMBER(18)');
  //I9LOGALTERACAO
  {frmBancoDados.criarCampo('I9LOGALTERACAO', 'VLVERBA', 'NUMBER(18,6)');
  frmBancoDados.criarCampo('I9LOGALTERACAO', 'VLVERBAANT', 'NUMBER(18,6)');
  frmBancoDados.criarCampo('I9LOGALTERACAO', 'CODOFERTA', 'NUMBER(18,6)');}
  //PCCLASSIFICMERC
 {frmBancoDados.criarCampo('PCCLASSIFICMERC', 'MARGEMGARANTIDA', 'NUMBER(18,6)');}
  //PCCONCOR
  {frmBancoDados.criarCampo('PCCONCOR', 'CNPJ', 'VARCHAR2(20)');
  frmBancoDados.criarCampo('PCCONCOR', 'I9LATITUDE', 'VARCHAR2(50)');
  frmBancoDados.criarCampo('PCCONCOR', 'I9LONGITUDE', 'VARCHAR2(50)');
  frmBancoDados.criarCampo('PCCOTAP', 'CODFILIAL', 'VARCHAR2(2)');
  frmBancoDados.criarCampo('PCCOTAI', 'I9URLFOTO', 'VARCHAR2(400)');}
  frmBancoDados.criarCampo('PCCOTAI', 'PUNITCRM', 'NUMBER(18, 6)');

  frmBancoDados.criarCampo('I9CAMPANHACRM', 'I9TIPOCAMPANHAPROPZ', 'VARCHAR2( 200 )');
  frmBancoDados.criarCampo('I9CAMPANHACRM', 'I9TEXTOLEGALPROPZ', 'VARCHAR2( 200 )');
  frmBancoDados.criarCampo('I9CAMPANHACRM', 'I9MECANICAPROPZ', 'VARCHAR2( 50 )');
  frmBancoDados.criarCampo('PCDESCONTOFIDELIDADE', 'I9QTMAXPORCLIENTE', 'NUMBER(18,6)');
  frmBancoDados.criarCampo('PCDESCONTOFIDELIDADE', 'DTINCLUSAO', 'DATE');

  frmBancoDados.criarCampo('PCCLIENT', 'DTATUBIOMETRIA', 'DATE');
  frmBancoDados.criarCampo('PCCLIENT', 'DTCADASTROBIOMETRIA1', 'DATE');
  frmBancoDados.criarCampo('PCCLIENT', 'DTCADASTROBIOMETRIA1', 'DATE');
  frmBancoDados.criarCampo('PCCLIENT', 'BIOMETRIA1', 'CLOB');
  frmBancoDados.criarCampo('PCCLIENT', 'BIOMETRIA2', 'CLOB');
  frmBancoDados.criarCampo('I9CAMPANHACRM', 'CAMPANHADIRECIONADA', 'VARCHAR2(1) DEFAULT ''N'' ');
  frmBancoDados.criarCampo('PCDESCONTOFIDELIDADE', 'CODCLIDIRECIONADO', 'NUMBER(10)');
end;

procedure TfrmEstruturaBancoRotina.inserirParametros;
begin
   {Parametros referente a cotaco de concorrentes}
   {
   frmBancoDados.inserirParametro('I9PARAMETROS', 'Cotacao', 'REPLICACOTACAOFILIAIS',  'Replicar cotacoes de concorrentes para outras filiais automaticamente.','BOOLEAN', 'N');
   frmBancoDados.inserirParametro('I9PARAMETROS', 'Cotacao', 'PESQUISAPRECOCLUSTERI9', 'Pesquisa de concorrente via integração x cluster ?'                    ,'BOOLEAN', 'N');
   }
   {Parametros referente a precificalcao}
   {
   frmBancoDados.inserirParametro('I9PARAMETROS', 'Precificao', 'PERCSUGESTPRECOCONCORRENCIA', 'Percentual sug. abaixo do preco de venda dos concorrentes.','NUMERICO', '0,00');
   frmBancoDados.inserirParametro('I9PARAMETROS', 'Precificao','REPLICAPTABELAFILIAIS', 'Replicar preco FUTURO automaticamente para outras filiais?','BOOLEAN', 'N');
   frmBancoDados.inserirParametro('I9PARAMETROS', 'Precificao','REPLICAPVENDAFILIAIS', 'Replicar preco de VENDA automaticamente para outras filiais?','BOOLEAN', 'N');
   frmBancoDados.inserirParametro('I9PARAMETROS', 'Precificao','REPLICAPTABELAFAMILIA', 'Replicar preco FUTURO automaticamente para produtos da familia?','BOOLEAN', 'N');
   frmBancoDados.inserirParametro('I9PARAMETROS', 'Precificao', 'REPLICAPVENDAFAMILIA', 'Replicar preco de VENDA automaticamente para produtos da familia?','BOOLEAN', 'N');
   frmBancoDados.inserirParametro('I9PARAMETROS', 'Precificao','REPLICAPTABELAEMBALAGEM', 'Replicar preco FUTURO automaticamente entre embalagens?','BOOLEAN', 'N');
   frmBancoDados.inserirParametro('I9PARAMETROS', 'Precificao', 'REPLICAPVENDAEMBALAGEM', 'Replicar preco de VENDA automaticamente entre embalagens?','BOOLEAN', 'N');
   frmBancoDados.inserirParametro('I9PARAMETROS', 'Ofertas', 'FILIALPADRAOEMBALAGEM', 'Filial padrao para pesquisa de embalagens','NUMERICO', '1');
   frmBancoDados.inserirParametro('I9PARAMETROS', 'Precificao', 'SUGESTAOCOMPLETA', 'Sugestao de preco completa? (Comissao, Imposto, Margem)','BOOLEAN', 'N');
   }

end;

procedure TfrmEstruturaBancoRotina.inserirPermissoes;
begin
   {frmBancoDados.inserirPermissao530('[OFERTA] Permitir criar ofertas', 1, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[OFERTA] Permitir editar ofertas', 2, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[OFERTA] Permitir excluir ofertas', 3, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[OFERTA] Permitir aprovar ofertas', 4, DmLogin.CodRotina);}
   frmBancoDados.inserirPermissao530('[CONFIGURACOES] Permitir alterar parametros', 5, DmLogin.CodRotina);
   {frmBancoDados.inserirPermissao530('[PRECIFICACAO] Permitir precificar abaixo da margem minima', 6, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[PRECIFICACAO] Permitir aplicar variacao sobre preco de venda', 7, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[PRECIFICACAO] Permitir alterar Qt. Min. e fator de atacado do produto', 8, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[PRECIFICACAO] Permitir alterar margens de precificao', 9, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[OFERTA] Permitir repetir ofertas', 10, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[PRECIFICACAO] Permitir aplicar custo medio dos produtos', 11, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[PRECIFICACAO] Permitir exportar grid.', 12, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[OFERTA] Permitir editar oferta aprovada.', 13, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[OFERTA] Permitir incluir itens que estiveram em oferta ult. 30 dias.', 14, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[OFERTA] Permitir cancelar ofertas', 15, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[OFERTA] Permitir rejeitar ofertas', 16, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[PRECIFICACAO] Permitir aplicar preco futuro em preco de venda.', 17, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[PRECIFICACAO] Permitir replicar preco entre filiais.', 18, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[PRECIFICACAO] Permitir precificar abaixo da margem ideal', 19, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[OFERTA] Permitir gerar oferta do preco concorrente', 20, DmLogin.CodRotina);}
   frmBancoDados.inserirPermissao530('[CAMPANHA] Permitir criar campanha desconto CRM', 21, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[CAMPANHA] Permitir editar campanha desconto CRM', 22, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[CAMPANHA] Permitir excluir campanha desconto CRM', 23, DmLogin.CodRotina);
  {frmBancoDados.inserirPermissao530('[PRECIFICACAO] Permitir precificar acima de 3% da margem sugerida', 24, DmLogin.CodRotina);}
  { frmBancoDados.inserirPermissao530('[OFERTA] Permitir cadastrar tabloide', 25, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[RELATORIO] Permitir emitir relatorio de altracoes', 26, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[OFERTA] Permitir incluir oferta para o dia atual.', 27, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[PRECIFICACAO] Permitir definir preco fixo', 28, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[OFERTA] Permitir mover item de oferta', 29, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[PRECIFICACAO] Permitir definir preço CRM', 30, DmLogin.CodRotina);}
   frmBancoDados.inserirPermissao530('[CAMPANHA] Permitir incluir grupo CRM', 31, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[CAMPANHA] Permitir editar grupo CRM', 32, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[CAMPANHA] Permitir gerar verbas/rebaixar o CMV', 33, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[CAMPANHA] Permitir aprovar / rejeitar campanha?', 34, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[CAMPANHA] Permitir editar campanha aprovada', 35, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[CAMPANHA] Permitir editar campanha finalizada', 36, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[CAMPANHA] Permitir desvincular campanha de filiais.', 37, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[CAMPANHA] Permitir inserir campanha com vigencia para o dia atual.', 38, DmLogin.CodRotina);
  {frmBancoDados.inserirPermissao530('[CLUSTER] Permitir incluir novo cluster de filiais', 39, DmLogin.CodRotina);}
   //frmBancoDados.inserirPermissao530('[CLUSTER] Permitir editar cluster', 40, DmLogin.CodRotina);
{   frmBancoDados.inserirPermissao530('[MARGENS] Permitir incluir/editar margens', 41, DmLogin.CodRotina);}
   frmBancoDados.inserirPermissao530('[CAMPANHA] Permitir remover produto após campanha aprovada.', 42, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[CAMPANHA] Permitir adicionar produto após campanha aprovada.', 43, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[CAMPANHA] Permitir alterar valor de verba do produto após campanha aprovada.', 44, DmLogin.CodRotina);
   {frmBancoDados.inserirPermissao530('[PRECIFICACAO] Premite acesso a precificacao', 45, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[PRECIFICACAO] Premite acesso a precificacao cluster', 46, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[OFERTA] Permite definir MARGEM DIRETORIA nas verbas', 47, DmLogin.CodRotina);}
   frmBancoDados.inserirPermissao530('[CAMPANHA] Permite definir MARGEM DIRETORIA nas verbas', 48, DmLogin.CodRotina);
{   frmBancoDados.inserirPermissao530('[OFERTA] Permite inserir preços sem arredondamento', 49, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[PRECIFICACAO] Permite inserir preços sem arredondamento', 50, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[OFERTA] Permitir desvincular oferta de tabloide.', 51, DmLogin.CodRotina);
   frmBancoDados.inserirPermissao530('[CONCORRENTE] Permitir acesso ao cadastro de concorrente e cotações', 52, DmLogin.CodRotina);}
end;

procedure TfrmEstruturaBancoRotina.limpaLogsAntigos;
var
  qry : TUniQuery;
begin

  try
    qry := TUniQuery.Create(nil);
    qry.Connection := DmLogin.Conexao;
    qry.Close;
    qry.SQL.Add('SELECT COUNT(*) AS QT FROM I9LOGROTINA');
    qry.SQL.Add('WHERE TRUNC(DTLOG) < TRUNC(SYSDATE)-60');
    qry.Open;

    if (qry.FieldByName('QT').AsInteger > 0) then
    begin
      qry.Close;
      qry.SQL.Clear;
      qry.SQL.Add('DELETE FROM I9LOGROTINA WHERE TRUNC(DTLOG) < TRUNC(SYSDATE)-60');
      qry.ExecSQL;
    end;

  finally
    qry.Close;
    qry.Free;
  end;

end;

function TfrmEstruturaBancoRotina.PrecisaAtualizar: Boolean;
var
  qryUltimaVersao : TUniQuery;
begin

  if not frmBancoDados.campoExiste('PCCONSUM', 'VERSAOMODULOPRICE') then
  begin
    Result := True;
    Exit;
  end;

  try
    qryUltimaVersao := TUniQuery.Create(nil);
    qryUltimaVersao.Connection := DmLogin.Conexao;
    qryUltimaVersao.Close;
    qryUltimaVersao.SQL.Add('SELECT');
    qryUltimaVersao.SQL.Add('CASE WHEN TO_NUMBER(REGEXP_REPLACE(VERSAOMODULOPRICE, ''[^[:digit:]]'')) < TO_NUMBER(REGEXP_REPLACE(:VERSAOROTINA, ''[^[:digit:]]''))');
    qryUltimaVersao.SQL.Add('THEN ''S'' ');
    qryUltimaVersao.SQL.Add('ELSE ''N'' ');
    qryUltimaVersao.SQL.Add('END PRECISAATUALIZAR,');
    qryUltimaVersao.SQL.Add('VERSAOMODULOPRICE');
    qryUltimaVersao.SQL.Add('FROM PCCONSUM');
    qryUltimaVersao.ParamByName('VERSAOROTINA').AsString := VersaoExe;
    qryUltimaVersao.Open;

    if qryUltimaVersao.FieldByName('PRECISAATUALIZAR').AsString = 'S' then
    begin
      Result := True;
    end
    else
    begin

      if qryUltimaVersao.FieldByName('VERSAOMODULOPRICE').AsString = VersaoExe then
      begin
        Result := false;
      end
      else
      begin
        dmLogin.MensagemInformacao('A versão da rotina está desatualizada! Favor contatar o responsável do sistema!' +#13 +
                                   'Versão da rotina: ' + VersaoExe + #13 +
                                   'Versão da estrutura do banco: ' + qryUltimaVersao.FieldByName('VERSAOMODULOPRICE').AsString);
        Application.Terminate;
      end;

    end;

  finally
    qryUltimaVersao.Close;
    qryUltimaVersao.Free;
  end;

end;

procedure TfrmEstruturaBancoRotina.tmrAtualizarTimer(Sender: TObject);
begin
  try
    tmrAtualizar.Enabled := False;

    {$IFDEF RELEASE}
      if PrecisaAtualizar then
      begin
        removerTriggers;
        criarTabelas;
        criarCampos;
        criaSequences;
        criarPackages;
        criarProcedures;
        criarTriggers;
        criaJobs;
        inserirParametros;
        inserirPermissoes;
        salvarVersaoAtualizada;
        limpaLogsAntigos;
      end;
    {$ENDIF}

  finally
    Self.Close;
  end;
end;

procedure TfrmEstruturaBancoRotina.criarPackages;
begin

  frmBancoDados.criarPackage('PKG_I9CLUBECRM',
                             dmEstruturaBancoRotina.PKG_I9CLUBECRM_HEAD.SQL.Text,
                             dmEstruturaBancoRotina.PKG_I9CLUBECRM_BODY.SQL.Text);

  frmBancoDados.criarPackage('PKG_I9UTILITARIO',
                             dmEstruturaBancoRotina.PKG_I9UTILITARIO_CABECALHO_CREATE.SQL.Text,
                             dmEstruturaBancoRotina.PKG_I9UTILITARIO_CORPO_CREATE.SQL.Text);

end;

procedure TfrmEstruturaBancoRotina.criarProcedures;
begin
  //frmBancoDados.criarProcedure(dmEstruturaBancoRotina.I9APLICVERBA_CREATE.SQL.Text);
  frmBancoDados.criarProcedure(dmEstruturaBancoRotina.SOMENTENUMERO.SQL.Text);
  frmBancoDados.criarProcedure(dmEstruturaBancoRotina.I9_GERAVERBA_CREATE.SQL.Text);
  //frmBancoDados.criarProcedure(dmEstruturaBancoRotina.PRC_I9GERARANKING.SQL.Text);
  frmBancoDados.criarProcedure(dmEstruturaBancoRotina.PRC_I9ATACVAREJO.SQL.Text);
  //frmBancoDados.criarProcedure(dmEstruturaBancoRotina.PRC_I9INCLUIRCLIENTECRM.SQL.Text);
end;

procedure TfrmEstruturaBancoRotina.criarTabelas;
begin
  //frmBancoDados.criarTabela('I9LISTAPRECIFICACAO', dmEstruturaBancoRotina.I9LISTAPRECIFICACAO_CREATE.SQL.Text);
  frmBancoDados.criarTabela('I9PARAMETROS', dmEstruturaBancoRotina.I9PARAMETROS_CREATE.SQL.Text);
  frmBancoDados.criarTabela('I9CONFIGUSUARIO', dmEstruturaBancoRotina.I9CONFIGUSUARIO_CREATE.SQL.Text);
  frmBancoDados.criarTabela('I9CONFIGVERBAOFERTA', dmEstruturaBancoRotina.TABLE_I9_I9CONFIGVERBAOFERTA.SQL.Text);
  frmBancoDados.criarTabela('I9CONFIGGRID', dmEstruturaBancoRotina.TABLE_I9CONFIGGRID.SQL.Text);
  frmBancoDados.criarTabela('I9EXPORTEXCEL', dmEstruturaBancoRotina.TABLE_I9EXPORTEXCEL.SQL.Text);
  //frmBancoDados.criarTabela('I9CLIATACADOCRM', dmEstruturaBancoRotina.TABLE_I9CLIATACADOCRM.SQL.Text);
  //frmBancoDados.criarTabela('I9TABLOIDE', dmEstruturaBancoRotina.I9TABLOIDE_CREATE.SQL.Text);
  frmBancoDados.criarTabela('I9LOGALTERACAO', dmEstruturaBancoRotina.I9LOGALTERACAO_CREATE.SQL.Text);
  frmBancoDados.criarTabela('I9CAMPANHACRM', dmEstruturaBancoRotina.TABLE_I9CAMPANHACRM.SQL.Text);
  frmBancoDados.criarTabela('I9GRUPOCRMC', dmEstruturaBancoRotina.TABLE_I9GRUPOCRMC.SQL.Text);
  frmBancoDados.criarTabela('I9GRUPOCRMI', dmEstruturaBancoRotina.TABLE_I9GRUPOCRMI.SQL.Text);
  //frmBancoDados.criarTabela('I9CAMPANHACRMGRUPOS', dmEstruturaBancoRotina.TABLE_I9CAMPANHACRMGRUPOS.SQL.Text);
  //frmBancoDados.criarTabela('I9GRUPOFILIALC', dmEstruturaBancoRotina.TABLE_I9GRUPOFILIALC.SQL.Text);
  //frmBancoDados.criarTabela('I9GRUPOFILIALI', dmEstruturaBancoRotina.TABLE_I9GRUPOFILIALI.SQL.Text);
  //frmBancoDados.criarTabela('I9CLASSIFICMERC', dmEstruturaBancoRotina.TABLE_I9CLASSIFICMERC.SQL.Text);
  frmBancoDados.criarTabela('I9CONFIGVERBACRM', dmEstruturaBancoRotina.TABLE_I9CONFIGVERBACRM.SQL.Text);
  //frmBancoDados.criarTabela('I9CONCORRENTE', dmEstruturaBancoRotina.TABLE_I9CONCORRENTE.SQL.Text);
  //frmBancoDados.criarTabela('I9GRUPOFILIALCONC', dmEstruturaBancoRotina.TABLE_I9GRUPOFILIALCONC.SQL.Text);
  //frmBancoDados.criarTabela('I9PESQUISACONCORRENTE', dmEstruturaBancoRotina.TABLE_I9PESQUISACONCORRENTE.SQL.Text);
  frmBancoDados.criarTabela('I9LOGROTINA', dmEstruturaBancoRotina.TABLE_I9LOGROTINA.SQL.Text);
end;

procedure TfrmEstruturaBancoRotina.criarTriggers;
begin
  //frmBancoDados.criarTrigger('TRG_PCPEDI_I9ATACVAREJO', dmEstruturaBancoRotina.TRG_PCPEDI_I9ATACVAREJO.SQL.Text);
  //frmBancoDados.criarTrigger('TRG_PCPEDC_I9CAMPANHACRM', dmEstruturaBancoRotina.TRG_PCPEDC_I9CAMPANHACRM.SQL.Text);
  //frmBancoDados.criarTrigger('TRG_PCEMBALAGEM_I9LOGALTERACAO', dmEstruturaBancoRotina.TRG_PCEMBALAGEM_I9LOGALTERACAO.SQL.Text);
  //frmBancoDados.criarTrigger('TRG_MARGENS_I9LOGALTERACAO', dmEstruturaBancoRotina.TRG_MARGENS_I9LOGALTERACAO.SQL.Text);
  //frmBancoDados.criarTrigger('TRG_PCEST_I9LOGALTERACAO', dmEstruturaBancoRotina.TRG_PCEST_I9LOGALTERACAO.SQL.Text);
  //frmBancoDados.criarTrigger('TRG_PCPROMC_I9CAMPANHACRM', dmEstruturaBancoRotina.TRG_PCPROMC_I9CAMPANHACRM.SQL.Text);

  //Não irá utilizar precificação na GRID para CRM somente campanhas
  //frmBancoDados.criarTrigger('TRG_I9_CRMPRODFIDELIDADE', dmEstruturaBancoRotina.TRG_I9_CRMPRODFIDELIDADE.SQL.Text);
end;

procedure TfrmEstruturaBancoRotina.criaSequences;
begin
  //frmBancoDados.criarSequence('I9LISTAPRECIFICACAO_DFSEQ', 1);
  //frmBancoDados.criarSequence('I9TABLOIDE_DFSEQ', 1);
  //frmBancoDados.criarSequence('I9GRUPOCRM_DFSEQ', 1);
  //frmBancoDados.criarSequence('I9CLASSIFICMERC_DFSEQ', 1);
  frmBancoDados.criarSequence('I9CODCAMPANHACRM_DFSEQ', 1);
  frmBancoDados.criarSequence('I9TABLOIDECRM_DFSEQ', 1);
  frmBancoDados.criarSequence('I9LOGROTINA_DFSEQ', 1);
end;

procedure TfrmEstruturaBancoRotina.removerTriggers;
begin
 //frmBancoDados.removerTrigger('TRG_FORMATARULTIMODIGPRECOEMB');
 //frmBancoDados.removerTrigger('TINS_PCEMBALAGEM_ATUCX_BEF');
end;

procedure TfrmEstruturaBancoRotina.salvarVersaoAtualizada;
var
  qryVersao : TUniQuery;
begin

  try
    qryVersao := TUniQuery.Create(nil);
    qryVersao.Connection := DmLogin.Conexao;
    qryVersao.Close;
    qryVersao.SQL.Add('UPDATE PCCONSUM SET VERSAOMODULOPRICE = :VERSAOMODULOPRICE');
    qryVersao.ParamByName('VERSAOMODULOPRICE').AsString := VersaoExe;
    qryVersao.ExecSQL;
  finally
    qryVersao.Close;
    qryVersao.Free;
  end;

end;

procedure TfrmEstruturaBancoRotina.FormShow(Sender: TObject);
begin
  tmrAtualizar.Enabled := True;
end;

Function TfrmEstruturaBancoRotina.VersaoExe: String;
type
    PFFI = ^vs_FixedFileInfo;
var
    F : PFFI;
    Handle : Dword;
    Len : Longint;
    Data : Pchar;
    Buffer : Pointer;
    Tamanho : Dword;
    Parquivo: Pchar;
    Arquivo : String;
begin
  Arquivo := Application.ExeName;
  Parquivo := StrAlloc(Length(Arquivo) + 1);
  StrPcopy(Parquivo, Arquivo);
  Len := GetFileVersionInfoSize(Parquivo, Handle);
  Result := '';

  if Len > 0 then
  begin
    Data:=StrAlloc(Len+1);
    if GetFileVersionInfo(Parquivo,Handle,Len,Data) then
    begin
        VerQueryValue(Data, '\',Buffer,Tamanho);
        F := PFFI(Buffer);
        Result := Format('%d.%d.%d.%d',[HiWord(F^.dwFileVersionMs),LoWord(F^.dwFileVersionMs),HiWord(F^.dwFileVersionLs),Loword(F^.dwFileVersionLs)]);
    end;
    StrDispose(Data);
  end;

  StrDispose(Parquivo);
end;

end.

