unit udmConfiguracaoInbox;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni, uLogin;

type
  TdmConfiguracaoInbox = class(TDataModule)
    VIEW_MERCAFACIL_CAT_PROFISSIONAIS: TUniQuery;
    VIEW_MERCAFACIL_AGENDA_PROMOCOES: TUniQuery;
    VIEW_MERCAFACIL_CLIENTES: TUniQuery;
    VIEW_MERCAFACIL_CATEGORIA_PRODUTOS: TUniQuery;
    VIEW_MERCAFACIL_CATEGORIA_CLIENTES: TUniQuery;
    VIEW_MERCAFACIL_DEVOLUCOES: TUniQuery;
    VIEW_MERCAFACIL_CLIENTES_ENDERECOS: TUniQuery;
    VIEW_MERCAFACIL_CLIENTES_CONTATOS: TUniQuery;
    VIEW_MERCAFACIL_DEVOLUCOES_ITENS: TUniQuery;
    VIEW_MERCAFACIL_LOJAS: TUniQuery;
    VIEW_MERCAFACIL_PRODUTOS: TUniQuery;
    VIEW_MERCAFACIL_PROFISSIONAIS: TUniQuery;
    VIEW_MERCAFACIL_VENDA_PAG: TUniQuery;
    VIEW_MERCAFACIL_VENDAS: TUniQuery;
    VIEW_MERCAFACIL_VENDAS_ITENS: TUniQuery;
    SEQ_I9PROXNUMCLI: TUniQuery;
    qrAux: TUniQuery;
    qrCriaClienteCRMPadrao: TUniQuery;
    TRG_I9CRM_PCPRECOPROM: TUniQuery;
    TRG_I9PRECOCRM_PCTABPR: TUniQuery;
    TRG_I9CRM_PCOFERTAPROGRAMADA: TUniQuery;
    TRG_I9PRECOCRM_PCEMBALAGEM: TUniQuery;
  private
    { Private declarations }
    function executarSQL( vSQL : String ) : String;
  public
    { Public declarations }
    function criarViewsMercaFacil : String;
    function criarSequenceCodcli ( vInicial : String ) : String;
    function consultaUltimoCodcli : Integer;
    function sequenceExiste(nomeSequence: String): Boolean;
    function droparSequence(nomeSequence: String) : Boolean;
    function clientePadraoCRMExiste() : Boolean;
    function criarClientePadraoCRM : String;
    function consultaClientePadraoCRM ( vTipo : String ) : Double;
    function criarTriggerEmbalagem: String;
    function criarTriggerRegiao: String;
  end;

var
  dmConfiguracaoInbox: TdmConfiguracaoInbox;

implementation


{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmConfiguracaoInbox }

function TdmConfiguracaoInbox.sequenceExiste(nomeSequence: String): Boolean;
var
  qr : TUniQuery;
begin

  try
    qr:= TUniQuery.Create(nil);
    qr.Connection:= DmLogin.Conexao;
    qr.Close;
    qr.SQL.Clear;
    qr.SQL.Add('SELECT');
    qr.SQL.Add('COUNT(*) AS QT');
    qr.SQL.Add('FROM USER_OBJECTS');
    qr.SQL.Add('WHERE OBJECT_TYPE = ''SEQUENCE''');
    qr.SQL.Add('AND OBJECT_NAME = UPPER(:SEQUENCE)');
    qr.ParamByName('SEQUENCE').AsString:= nomeSequence;
    qr.Open;

    if qr.FieldByName('QT').AsInteger = 0 then
      Result:= False
    else
      Result:= true;

  finally
    qr.Free;
  end;

end;

function TdmConfiguracaoInbox.clientePadraoCRMExiste: Boolean;
begin
  qrAux.Close;
  qrAux.SQL.Clear;
  qrAux.SQL.Add('SELECT ');
  qrAux.SQL.Add('CASE WHEN PCCONSUM.CODCLICRMGERAL IS NOT NULL AND PCCONSUM.CODCLICRMATACADO IS NOT NULL THEN ''S'' ELSE ''N'' END EXISTE');
  qrAux.SQL.Add('FROM PCCONSUM');
  qrAux.Open;

  if (qrAux.FieldByName('EXISTE').AsString = 'S') then
    Result := true
  else
    Result := false;
end;

function TdmConfiguracaoInbox.consultaClientePadraoCRM(vTipo: String): Double;
begin

  qrAux.Close;
  qrAux.SQL.Clear;
  if ( vTipo = 'ATACADO' ) then
    qrAux.SQL.Add('SELECT NVL(CODCLICRMATACADO,0) AS CODCLI FROM PCCONSUM')
  else
    qrAux.SQL.Add('SELECT NVL(CODCLICRMGERAL,0) AS CODCLI FROM PCCONSUM');

  qrAux.Open;

  Result := qrAux.FieldByName('CODCLI').AsFloat;

end;

function TdmConfiguracaoInbox.consultaUltimoCodcli: Integer;
begin
  qrAux.Close;
  qrAux.SQL.Clear;
  qrAux.SQL.Add('SELECT MAX(CODCLI) + 1 AS ULTCODCLI FROM PCCLIENT');
  qrAux.Open;

  Result := qrAux.FieldByName('ULTCODCLI').AsInteger;
end;

function TdmConfiguracaoInbox.criarClientePadraoCRM: String;
begin

  try
    qrCriaClienteCRMPadrao.Close;
    qrCriaClienteCRMPadrao.ExecSQL;

    Result := 'Cliente padrao CRM - OK';

  except on E: Exception do
    Result := 'Erro ao criar cliente padrao crm! ' + #13 + 'Erro: ' + e.Message + #13;
  end;

end;

function TdmConfiguracaoInbox.criarSequenceCodcli( vInicial: String ): String;
begin

  try

    SEQ_I9PROXNUMCLI.Close;
    SEQ_I9PROXNUMCLI.SQL.Clear;
    SEQ_I9PROXNUMCLI.SQL.Add('CREATE SEQUENCE SEQ_I9PROXNUMCLI');
    SEQ_I9PROXNUMCLI.SQL.Add('INCREMENT BY 1');
    SEQ_I9PROXNUMCLI.SQL.Add('START WITH ' + vInicial);
    SEQ_I9PROXNUMCLI.SQL.Add('MINVALUE ' + vInicial);
    SEQ_I9PROXNUMCLI.SQL.Add('MAXVALUE 9999999999999999999999999999');
    SEQ_I9PROXNUMCLI.SQL.Add('NOCYCLE');
    SEQ_I9PROXNUMCLI.SQL.Add('NOORDER');
    SEQ_I9PROXNUMCLI.SQL.Add('NOCACHE');
    SEQ_I9PROXNUMCLI.ExecSQL;

    Result := 'SEQ_I9PROXNUMCLI - OK';

  except on E: Exception do
    Result := 'Erro ao criar sequence! ' + #13 + 'Erro: ' + e.Message + #13 + 'SQL: ' + SEQ_I9PROXNUMCLI.SQL.Text;
  end;

end;

function TdmConfiguracaoInbox.criarViewsMercaFacil : String;
var
  vListaRetorno : TStringList;
begin

  vListaRetorno := TStringList.Create;

  vListaRetorno.Add( 'VIEW_MERCAFACIL_CAT_PROFISSIONAIS - '  + executarSQL(VIEW_MERCAFACIL_CAT_PROFISSIONAIS.SQL.Text) );
  vListaRetorno.Add( 'VIEW_MERCAFACIL_AGENDA_PROMOCOES - '   + executarSQL(VIEW_MERCAFACIL_AGENDA_PROMOCOES.SQL.Text) );
  vListaRetorno.Add( 'VIEW_MERCAFACIL_CLIENTES - '           + executarSQL(VIEW_MERCAFACIL_CLIENTES.SQL.Text) );
  vListaRetorno.Add( 'VIEW_MERCAFACIL_CATEGORIA_PRODUTOS - ' + executarSQL(VIEW_MERCAFACIL_CATEGORIA_PRODUTOS.SQL.Text) );
  vListaRetorno.Add( 'VIEW_MERCAFACIL_CATEGORIA_CLIENTES - ' + executarSQL(VIEW_MERCAFACIL_CATEGORIA_CLIENTES.SQL.Text) );
  vListaRetorno.Add( 'VIEW_MERCAFACIL_DEVOLUCOES - '         + executarSQL(VIEW_MERCAFACIL_DEVOLUCOES.SQL.Text) );
  vListaRetorno.Add( 'VIEW_MERCAFACIL_DEVOLUCOES_ITENS - '   + executarSQL(VIEW_MERCAFACIL_DEVOLUCOES_ITENS.SQL.Text) );
  vListaRetorno.Add( 'VIEW_MERCAFACIL_CLIENTES_ENDERECOS - ' + executarSQL(VIEW_MERCAFACIL_CLIENTES_ENDERECOS.SQL.Text) );
  vListaRetorno.Add( 'VIEW_MERCAFACIL_CLIENTES_CONTATOS - '  + executarSQL(VIEW_MERCAFACIL_CLIENTES_CONTATOS.SQL.Text) );
  vListaRetorno.Add( 'VIEW_MERCAFACIL_LOJAS - '              + executarSQL(VIEW_MERCAFACIL_LOJAS.SQL.Text) );
  vListaRetorno.Add( 'VIEW_MERCAFACIL_PRODUTOS - '           + executarSQL(VIEW_MERCAFACIL_PRODUTOS.SQL.Text) );
  vListaRetorno.Add( 'VIEW_MERCAFACIL_PROFISSIONAIS - '      + executarSQL(VIEW_MERCAFACIL_PROFISSIONAIS.SQL.Text) );
  vListaRetorno.Add( 'VIEW_MERCAFACIL_VENDA_PAG - '          + executarSQL(VIEW_MERCAFACIL_VENDA_PAG.SQL.Text) );
  vListaRetorno.Add( 'VIEW_MERCAFACIL_VENDAS - '             + executarSQL(VIEW_MERCAFACIL_VENDAS.SQL.Text) );
  vListaRetorno.Add( 'VIEW_MERCAFACIL_VENDAS_ITENS - '       + executarSQL(VIEW_MERCAFACIL_VENDAS_ITENS.SQL.Text) );

  Result := vListaRetorno.Text;

end;


function TdmConfiguracaoInbox.criarTriggerEmbalagem : String;
var
  vListaRetorno : TStringList;
begin

  vListaRetorno := TStringList.Create;
  vListaRetorno.Add( 'TRG_I9CRM_PCOFERTAPROGRAMADA - '  + executarSQL(TRG_I9CRM_PCOFERTAPROGRAMADA.SQL.Text) );
  vListaRetorno.Add( 'TRG_I9PRECOCRM_PCEMBALAGEM - '  + executarSQL(TRG_I9PRECOCRM_PCEMBALAGEM.SQL.Text) );
  Result := vListaRetorno.Text;
end;

function TdmConfiguracaoInbox.criarTriggerRegiao : String;
var
  vListaRetorno : TStringList;
begin

  vListaRetorno := TStringList.Create;
  vListaRetorno.Add( 'TRG_I9PRECOCRM_PCTABPR - '  + executarSQL(TRG_I9PRECOCRM_PCTABPR.SQL.Text) );
  vListaRetorno.Add( 'TRG_I9CRM_PCPRECOPROM - '  + executarSQL(TRG_I9CRM_PCPRECOPROM.SQL.Text) );
  Result := vListaRetorno.Text;
end;

function TdmConfiguracaoInbox.droparSequence(nomeSequence: String): Boolean;
begin

  try
    if nomeSequence = '' then
    begin
      Result := false;
      exit;
    end;

    qrAux.Close;
    qrAux.SQL.Clear;
    qrAux.SQL.Add('DROP SEQUENCE ' + nomeSequence);
    qrAux.ExecSQL;

    Result := true;
  except
    Result := false;
  end;

end;

function TdmConfiguracaoInbox.executarSQL(vSQL: String) : String;
var
  qr: TUniQuery;
begin
  try
    qr:= TUniQuery.Create(nil);
    qr.Connection:= dmLogin.Conexao;
    qr.Close;
    qr.SQL.Clear;
    qr.SQL.Add(vSQL);
    qr.ExecSQL;
    qr.Free;

    Result := 'OK';
  except on E: Exception do
  begin
    Result := 'Erro ao executar SQL! ' + #13 + 'Erro: ' + e.Message + #13 + 'SQL: ' + vSQL;
    qr.Free;
  end;
  end;
end;

end.
