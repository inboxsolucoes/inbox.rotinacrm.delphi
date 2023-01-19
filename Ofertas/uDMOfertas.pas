unit uDMOfertas;

interface

uses
  System.SysUtils, System.Variants, System.Classes, Data.DB, MemDS, DBAccess, Uni, Datasnap.DBClient, Datasnap.Provider, uOferta2011, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls, ppVar, ppPrnabl, ppBands, ppCache, ppDesignLayer, ppParameter, Math;

type
  TDMOfertas = class(TDataModule)
    qrAux: TUniQuery;
    qrFiliais: TUniQuery;
    dsFiliais: TUniDataSource;
    qrPesquisaOfertas: TUniQuery;
    dsPesquisaOfertas: TUniDataSource;
    cdsPesquisaOfertasInseridos: TClientDataSet;
    cdsPesquisaOfertasInseridosCODPROD: TIntegerField;
    cdsPesquisaOfertasInseridosDESCRICAO: TStringField;
    cdsPesquisaOfertasInseridosCUSTOFIN: TFloatField;
    cdsPesquisaOfertasInseridosPVENDA: TFloatField;
    cdsPesquisaOfertasInseridosPVENDAATAC: TFloatField;
    cdsPesquisaOfertasInseridosPRECO_CONCORRENTE: TFloatField;
    cdsPesquisaOfertasInseridosQTDISPONIVEL: TFloatField;
    cdsPesquisaOfertasInseridosPERC_VENDA_ATAC: TFloatField;
    cdsPesquisaOfertasInseridosPERC_VENDA_VAREJO: TFloatField;
    cdsPesquisaOfertasInseridosPOFERTA_ATAC: TFloatField;
    cdsPesquisaOfertasInseridosMARGEMFUTURA_OFERTA: TFloatField;
    cdsPesquisaOfertasInseridosDIF_MARGEM_MINIMA: TFloatField;
    dsPesquisaOfertasInseridos: TDataSource;
    qrInsereOfertac: TUniQuery;
    qrInsereOfertai: TUniQuery;
    cdsPesquisaOfertasInseridosCODAUXILIAR: TFloatField;
    cdsPesquisaOfertasInseridosMOTIVOOFERTA: TStringField;
    cdsPesquisaOfertasInseridosGERAVERBA: TStringField;
    prcGeraVerba: TUniStoredProc;
    prcApuraGeraVerba: TUniStoredProc;
    cdsPesquisaOfertasInseridosCODFORNEC: TIntegerField;
    cdsPesquisaOfertasInseridosCODFILIAL: TStringField;
    cdsPesquisaOfertasInseridosQTUNIT: TStringField;
    cdsPesquisaOfertasInseridosFORNECEDOR: TStringField;
    dsVerbasFornecedor: TDataSource;
    cdsVerbasFornecedor: TClientDataSet;
    cdsVerbasFornecedorCODFORNEC: TIntegerField;
    cdsVerbasFornecedorFORNECEDOR: TStringField;
    cdsVerbasFornecedorTIPOVERBA: TStringField;
    cdsVerbasFornecedorVLVERBA: TCurrencyField;
    cdsVerbasFornecedorDTAPURACAOVERBAINI: TDateField;
    cdsVerbasFornecedorDTAPURACAOVERBAFIM: TDateField;
    cdsVerbasFornecedorTIPOPAGTOVERBA: TStringField;
    qrGravaVerba: TUniQuery;
    qrEmitirVerbasOferta: TUniQuery;
    dsEmitirVerbasOferta: TUniDataSource;
    cdsPesquisaOfertasInseridosQTMAXVENDA: TCurrencyField;
    qrValidaItemJaEmOferta: TUniQuery;
    cdsPesquisaOfertasInseridosVLVERBAMARGEMMIN: TCurrencyField;
    cdsPesquisaOfertasInseridosVERBAMENORVERBAMIN: TStringField;
    cdsPesquisaOfertasInseridosMARGEMMINIMA: TFloatField;
    cdsPesquisaOfertasInseridosOFERTAFAMILIA: TStringField;
    cdsPesquisaOfertasInseridosCODPRODPRINC: TIntegerField;
    qrCancelarOferta: TUniQuery;
    qrBuscaFamiliaProduto: TUniQuery;
    cdsItensInseridosTEMP: TClientDataSet;
    cdsPesquisaOfertasInseridosVLVERBAUNIT: TCurrencyField;
    cdsPesquisaOfertasInseridosTEMATACADO: TStringField;
    cdsFiliaisIncluidas: TClientDataSet;
    cdsFiliaisIncluidasCODIGO: TStringField;
    cdsFiliaisIncluidasRAZAOSOCIAL: TStringField;
    cdsFiliaisIncluidasINCLUIDO: TStringField;
    dsFiliaisIncluidas: TDataSource;
    cdsFiliaisDisponiveis: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    dsFiliaisDisponiveis: TDataSource;
    qrFiliaisDisponiveis: TUniQuery;
    qrPesquisaItemInserir: TUniQuery;
    cdsPesquisaOfertasInseridosPVENDAATACCONCORRENTE: TFloatField;
    cdsPesquisaOfertasInseridosQTGIRODIA: TFloatField;
    qrPesquisaOfertasCadastradas: TUniQuery;
    dsPesquisaOfertasCadastradas: TUniDataSource;
    qrOfertasCadastradasItem: TUniQuery;
    dsOfertasCadastradasItem: TUniDataSource;
    cdsPesquisaOfertasInseridosCODOFERTAORIGEM: TFloatField;
    cdsPesquisaOfertasInseridosCODUSURTRANSFERENCIA: TIntegerField;
    cdsPesquisaOfertasInseridosDTTRANSFERENCIA: TDateTimeField;
    cdsPesquisaOfertasInseridosCODTABLOIDE: TIntegerField;
    cdsPesquisaOfertasInseridosCODOFERTA: TIntegerField;
    qrOfertasTabloide: TUniQuery;
    qrDadosItensEditar: TUniQuery;
    cdsVerbasFornecedorCODFILIAL: TStringField;
    cdsPesquisaOfertasInseridosCODFORNECPRINC: TIntegerField;
    qrInsereLogAlteracao: TUniQuery;
    cdsPesquisaOfertasInseridosVLVERBAUNITANT: TStringField;
    cdsPesquisaOfertasInseridosPERCMARGEMDESEJADA: TFloatField;
    prcAtualizarEtiquetas: TUniStoredProc;
    qryValidaJaEmPrecoFixo: TUniQuery;
    qrValidaOferta2017: TUniQuery;
    procedure cdsPesquisaOfertasInseridosPOFERTA_ATACChange(Sender: TField);
    procedure cdsPesquisaOfertasInseridosTIPOVERBAChange(Sender: TField);
    procedure cdsPesquisaOfertasInseridosBeforePost(DataSet: TDataSet);
    procedure cdsPesquisaOfertasInseridosAfterInsert(DataSet: TDataSet);
    procedure cdsPesquisaOfertasInseridosAfterDelete(DataSet: TDataSet);
    procedure cdsPesquisaOfertasInseridosVLVERBAUNITChange(Sender: TField);
    procedure cdsPesquisaOfertasInseridosPERCMARGEMDESEJADAChange(
      Sender: TField);
    procedure cdsVerbasFornecedorTIPOVERBAChange(Sender: TField);
  private
    { Private declarations }
    function getMargemEmbalagem(pValor1: Double): double;
    procedure atualizaVLVERBAMARGEMMIN;
    function produtoTemVerbaNaOferta(codprod : Double; codoferta : Double): Boolean;
    function atualizaNumeroOfertaProduto(codprod : Double; codofertaOrigem : Double; codofertaDestino : Double): Boolean;
    function ofertaPossuiItens( codOferta : Double ): Boolean;
    procedure atualizaPrecoEntreFiliais;
  public
    { Public declarations }
    function getProxCodOferta: double;
    function getMargemMin(campo: string): string;
    function getProxCodigoItem(codOferta: Double): Integer;
    procedure inserirItemLista(pOfertaAtac:double);
    procedure insereOferta(oferta: TOferta2011);
    procedure populaOfertaEditar(codoferta: Double);
    procedure populaOfertaTabloideEditar(codTabloide: Double);
    procedure CarregarParametros;
    procedure insereFornecedoresVerba;
    procedure geraInformacoesVerbas(codoferta: Double; codFilial : String; dtVigenciaINI: TDate; dtVigenciaFIM: TDate);
    function ofertaPossuiVerbas(codoferta: Double): Boolean;
    function getValorAplicandoMargem(codfilial: string; codprod: Double; codbarras: Double; margem: Double): Double;
    function getMargemMinimaAtacado(codprod: Double; codfilial: string): Double;
    procedure atualizaMargemFutura;
    function verificaTipoVerbaOferta(tipoverba: string; codoferta: Double): Boolean;
    function getDifMargemMinima(valor: Double): Double;
    function produtoTeveDezDiasDeOfertaOfertaUltimos30(codprod: Double; codfilial: string): Boolean;
    function limpaItensOferta(codoferta: Double): Boolean;
    procedure insereForcedorGridVerba(codfornec: Double; fornecedor: string; codoferta : Double; codfilial : String);
    function buscaCusto(codprod: Double; codfilial: string): Double;
    function getValorVerbaMargemMinima(custo, pvenda, margem : Double) : double;
    function getCodigoOfertasSelecionadas(pValidarVerba:Boolean):string;
    function ofertaEstaAprovada(codoferta : Double) : Boolean;
    function getMargemFuturaEmbalagem(pValorOferta, pValorVerba: Double): double;
    function produtoTemOfertaVigente(codprod: Double; dtini, dtfim : TDateTime; codfilial : String; pAbortar : boolean ; pCodOferta : Integer) : Double;
    function efetuaTransferenciaProdutoOferta(codprod : Double; codofertaOrigem : Double; codofertaDestino : Double): String;
    function getValorVerbaMargemDesejada(pCusto, pOferta, percDesejada : Double): Double;
    function getValorComMargem(pValor1, pMargem : Double): double;
    procedure AprovarOferta(pCodOferta: Integer);
    procedure AprovarTabloide(pCodTabloide: Integer);
    function desvincularOfertaTabloide(codoferta : Integer): Boolean;
    function tabloidePossuiVerba( codtabloide : Integer ) : Boolean;
    function tabloideTemOfertaAprovada(codtabloide: Integer): Boolean;
    function ofertaPossuiVerbaApurar( codoferta : Double ): Boolean;
    procedure atualizaVigenciaAplicacaoVerba( codoferta : Double; dtinicio, dtfim : Tdate );
  end;

var
  DMOfertas: TDMOfertas;
  pMARGEMMINOFERTA: Double;
  vCarregandoItens: Boolean;
  tipoVerbaOfertaAPURAR : Boolean;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses
  uLogin, ufrmFiltrosPrecificacao, ufrmOfertas, uDMCampanhaCRM;

{$R *.dfm}

{ TDMOfertas }

function TDMOfertas.desvincularOfertaTabloide(codoferta : Integer): Boolean;
var
  qry:TUniQuery;
begin
  try
    qry := TUniQuery.Create(nil);
    qry.Connection := DmLogin.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('UPDATE PCOFERTAPROGRAMADAC');
    qry.SQL.Add('SET CODTABLOIDE = NULL,');
    qry.SQL.Add('CODFUNCDESVOFERTA = :CODFUNCDESVOFERTA');
    qry.SQL.Add('WHERE CODOFERTA = :CODOFERTA');
    qry.ParamByName('CODFUNCDESVOFERTA').AsFloat := dmLogin.Matricula;
    qry.ParamByName('CODOFERTA').AsInteger := codoferta;
    qry.ExecSQL;

    Result := true;
  finally
    qry.Free;
  end;
end;

procedure TDMOfertas.cdsPesquisaOfertasInseridosAfterDelete(DataSet: TDataSet);
begin
  cdsItensInseridosTEMP.CloneCursor(cdsPesquisaOfertasInseridos, True);
end;

procedure TDMOfertas.cdsPesquisaOfertasInseridosAfterInsert(DataSet: TDataSet);
begin
  cdsItensInseridosTEMP.CloneCursor(cdsPesquisaOfertasInseridos, True);
end;

procedure TDMOfertas.cdsPesquisaOfertasInseridosBeforePost(DataSet: TDataSet);
var
  registroEncontrados : Integer;
begin
  registroEncontrados := 0;

  if cdsPesquisaOfertasInseridos.FieldByName('OFERTAFAMILIA').AsString = 'S' then
  begin

    try
      cdsItensInseridosTEMP.First;

      while not cdsItensInseridosTEMP.Eof do
      begin
        if (cdsItensInseridosTEMP.FieldByName('CODPRODPRINC').AsInteger = cdsPesquisaOfertasInseridos.FieldByName('CODPRODPRINC').AsInteger)
        and (cdsItensInseridosTEMP.FieldByName('CODFILIAL').AsInteger = cdsPesquisaOfertasInseridos.FieldByName('CODFILIAL').AsInteger) then
          registroEncontrados := registroEncontrados + 1;

        cdsItensInseridosTEMP.Next;
      end;


      if registroEncontrados > 1 then
      begin
        DmLogin.MensagemErroAbort('Nao e possivel definir oferta familia, pois existem dois ou mais itens da mesma familia na oferta.');
      end;

    finally
    end;
  end;

end;

procedure TDMOfertas.cdsPesquisaOfertasInseridosPERCMARGEMDESEJADAChange(
  Sender: TField);
var
  vPrecoMargemDesejada : Double;
begin
  if (cdsPesquisaOfertasInseridosPERCMARGEMDESEJADA.AsFloat = 0)
  then
  begin
    cdsPesquisaOfertasInseridosVLVERBAUNIT.AsFloat := 0;
  end
  else
  begin

    if (cdsPesquisaOfertasInseridosPERCMARGEMDESEJADA.AsFloat < cdsPesquisaOfertasInseridosMARGEMMINIMA.AsFloat) then
    begin
      DmLogin.MensagemErroAbort('Nao e possivel definir um valor de margem desejada menor do que a margem minima do produto.');
    end
    else
    begin
      cdsPesquisaOfertasInseridosVLVERBAUNIT.AsFloat := getValorVerbaMargemDesejada(cdsPesquisaOfertasInseridosCUSTOFIN.AsFloat,
                                                                                    cdsPesquisaOfertasInseridosPOFERTA_ATAC.AsFloat,
                                                                                    cdsPesquisaOfertasInseridosPERCMARGEMDESEJADA.AsFloat);
    end;
  end;

  atualizaVLVERBAMARGEMMIN;
end;

procedure TDMOfertas.cdsPesquisaOfertasInseridosPOFERTA_ATACChange(Sender: TField);
begin

  if cdsPesquisaOfertasInseridosPOFERTA_ATAC.AsFloat = 0 then
    DmLogin.MensagemErroAbort('Favor informar um preco valido! ');

  atualizaVLVERBAMARGEMMIN;
  atualizaMargemFutura;

  if cdsPesquisaOfertasInseridosTEMATACADO.AsString = 'S' then
    cdsPesquisaOfertasInseridosDIF_MARGEM_MINIMA.AsFloat := cdsPesquisaOfertasInseridosMARGEMFUTURA_OFERTA.Value - cdsPesquisaOfertasInseridosMARGEMMINIMA.Value;

  if (frmOfertas.cbReplicarPrecoFiliais.Checked) and not (cdsPesquisaOfertasInseridos.State in [dsInsert]) then
    atualizaPrecoEntreFiliais;

end;

procedure TDMOfertas.cdsPesquisaOfertasInseridosTIPOVERBAChange(Sender: TField);
var
  vValorMargemMinima: Double;
begin
  if cdsPesquisaOfertasInseridos.FieldByName('VLVERBAUNIT').Value > 0 then
  begin
      //Calcula diferenca margem minima
    vValorMargemMinima := getValorAplicandoMargem(cdsPesquisaOfertasInseridos.FieldByName('CODFILIAL').AsString, cdsPesquisaOfertasInseridos.FieldByName('CODPROD').AsFloat, cdsPesquisaOfertasInseridos.FieldByName('CODAUXILIAR').AsFloat, getMargemMinimaAtacado(cdsPesquisaOfertasInseridos.FieldByName('CODPROD').AsFloat, cdsPesquisaOfertasInseridos.FieldByName('CODFILIAL').AsString));

    if cdsPesquisaOfertasInseridos.FieldByName('VLVERBAUNIT').AsFloat < vValorMargemMinima then
      cdsPesquisaOfertasInseridos.FieldByName('VERBAMENORVERBAMIN').AsString := 'S';

  end;

  atualizaMargemFutura;

end;

procedure TDMOfertas.cdsPesquisaOfertasInseridosVLVERBAUNITChange(
  Sender: TField);
begin
  if not vCarregandoItens then
  begin
    if (cdsPesquisaOfertasInseridos.FieldByName('VLVERBAUNIT').AsFloat >=
        cdsPesquisaOfertasInseridos.FieldByName('CUSTOFIN').AsFloat)  then
      dmLogin.MensagemErroAbort('Nao e possivel lancar verba com valor igual ou maior que o custo financeiro!');
  end;

  atualizaVLVERBAMARGEMMIN;
  atualizaMargemFutura;

  //Valida se valor de verba foi alterado, para gravacao do log.
  if ((Sender.OldValue <> Sender.NewValue) and (not VarIsNull(Sender.OldValue))) then
    cdsPesquisaOfertasInseridosVLVERBAUNITANT.AsString := FloatToStr(Sender.OldValue)
  else
    cdsPesquisaOfertasInseridosVLVERBAUNITANT.AsString := '';
end;

procedure TDMOfertas.cdsVerbasFornecedorTIPOVERBAChange(Sender: TField);
begin
  if ( not(vCarregandoItens) and  not (dmLogin.validaPermissao530(47)) and ( cdsVerbasFornecedorTIPOVERBA.AsString = 'MARGEMDIRETORIA' ) ) then
  begin
    DmLogin.MensagemErroAbort('Voce nao possui permissao para definir margem diretoria');
  end;
end;

procedure TDMOfertas.atualizaMargemFutura;
begin

  try
    if not cdsPesquisaOfertasInseridos.FieldByName('VLVERBAUNIT').IsNull then
    begin
      cdsPesquisaOfertasInseridos.FieldByName('MARGEMFUTURA_OFERTA').AsFloat := getMargemFuturaEmbalagem(cdsPesquisaOfertasInseridos.FieldByName('POFERTA_ATAC').AsFloat, cdsPesquisaOfertasInseridos.FieldByName('VLVERBAUNIT').AsFloat);
    end
    else
    begin
      cdsPesquisaOfertasInseridos.FieldByName('MARGEMFUTURA_OFERTA').AsFloat := getMargemFuturaEmbalagem(cdsPesquisaOfertasInseridos.FieldByName('POFERTA_ATAC').AsFloat, 0);
    end;

    cdsPesquisaOfertasInseridos.FieldByName('DIF_MARGEM_MINIMA').AsFloat := cdsPesquisaOfertasInseridos.FieldByName('MARGEMFUTURA_OFERTA').Value - cdsPesquisaOfertasInseridos.FieldByName('MARGEMMINIMA').Value;

  except

  end;
end;

procedure TDMOfertas.CarregarParametros;
begin
  //pMARGEMMINOFERTA := DmLogin.buscaParametroI9('REPLICAPTABELAFAMILIA');
end;

procedure TDMOfertas.geraInformacoesVerbas(codoferta: Double; codFilial : String; dtVigenciaINI: TDate; dtVigenciaFIM: TDate);
var
  qr: TUniQuery;
  vTipoVerba : String;
begin
  //Limpa as verbas configuradas para gravar novamente.
  try
    qr := TUniQuery.Create(nil);
    qr.Connection := dmLogin.Conexao;
    qr.Close;
    qr.SQL.Clear;
    qr.SQL.Add('DELETE FROM I9CONFIGVERBAOFERTA WHERE CODOFERTA = :CODOFERTA');
    qr.ParamByName('CODOFERTA').AsFloat := codoferta;
    qr.ExecSQL;
  finally
    qr.Free;
  end;

  with cdsVerbasFornecedor do
  begin
    First;
    while not Eof do
    begin
      if FieldByName('CODFILIAL').AsString = codfilial then
      begin
        qrGravaVerba.Close;
        dmLogin.limpaParametrosQuery(qrGravaVerba);
        qrGravaVerba.ParamByName('CODOFERTA').AsFloat := codoferta;
        qrGravaVerba.ParamByName('TIPOVERBA').AsString := FieldByName('TIPOVERBA').AsString;
        qrGravaVerba.ParamByName('VLVERBA').AsFloat := FieldByName('VLVERBA').AsFloat;
        qrGravaVerba.ParamByName('DTAPURACAOVERBAINI').AsDate := dtVigenciaINI;
        qrGravaVerba.ParamByName('DTAPURACAOVERBAFIM').AsDate := dtVigenciaFIM;
        qrGravaVerba.ParamByName('TIPOPAGTOVERBA').AsString := FieldByName('TIPOPAGTOVERBA').AsString;
        qrGravaVerba.ParamByName('CODFORNEC').AsFloat := FieldByName('CODFORNEC').AsFloat;
        qrGravaVerba.ExecSQL;
      end;

      Next; //proximo registro.
    end;

    //Loop para saber se a oferta e de CMV A Apurar
    First;
    tipoVerbaOfertaAPURAR := false;
    while not Eof do
    begin
        if FieldByName('TIPOVERBA').AsString <> 'APURAR' then
        begin
          tipoVerbaOfertaAPURAR:= false;
          Exit;
        end;

        if FieldByName('TIPOVERBA').AsString = 'APURAR' then
          tipoVerbaOfertaAPURAR:= true;

      Next; //proximo registro.
    end;
  end;


end;

function TDMOfertas.getCodigoOfertasSelecionadas(pValidarVerba:Boolean): string;
var
  Retorno:String;
begin
  Retorno := '';

  if qrPesquisaOfertasCadastradas.IsEmpty then
    Exit;

  qrPesquisaOfertasCadastradas.DisableControls;
  qrPesquisaOfertasCadastradas.First;
  while not qrPesquisaOfertasCadastradas.Eof do
  begin
    if pValidarVerba
      and (not (dmOfertas.ofertaPossuiVerbas(qrPesquisaOfertasCadastradas.FieldByName('CODOFERTA').AsFloat))
            or (qrPesquisaOfertasCadastradas.FieldByName('DTLIBERACAO').IsNull))
    then
    begin
       qrPesquisaOfertasCadastradas.Next;
       Continue;
    end;

    if qrPesquisaOfertasCadastradas.FieldByName('SELECIONADO').AsString = 'S' then
    begin
      if Retorno <> '' then
        Retorno := Retorno + ', ' + qrPesquisaOfertasCadastradas.FieldByName('CODOFERTA').AsString
      else
        Retorno := qrPesquisaOfertasCadastradas.FieldByName('CODOFERTA').AsString;
    end;

    qrPesquisaOfertasCadastradas.Next;
  end;
  qrPesquisaOfertasCadastradas.EnableControls;

  Result := Retorno;

end;

function TDMOfertas.getDifMargemMinima(valor: Double): Double;
var
  vMargemMinimaAtacado: Double;
  vValorMargemMinima: Double;
begin
  vMargemMinimaAtacado := getMargemMinimaAtacado(cdsPesquisaOfertasInseridos.FieldByName('CODPROD').AsFloat, cdsPesquisaOfertasInseridos.FieldByName('CODFILIAL').AsString);
  vValorMargemMinima := getValorAplicandoMargem(cdsPesquisaOfertasInseridos.FieldByName('CODFILIAL').AsString, cdsPesquisaOfertasInseridos.FieldByName('CODPROD').AsFloat, cdsPesquisaOfertasInseridos.FieldByName('CODAUXILIAR').AsFloat, vMargemminimaatacado);

  with qrAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT');
    SQL.Add('PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(:VALOROFERTA, :VALORMARGEMMINIMA) AS DIFMARGEMMINIMA');
    SQL.Add('FROM DUAL');
    ParamByName('VALOROFERTA').AsFloat := valor;
    ParamByName('VALORMARGEMMINIMA').AsFloat := vValorMargemMinima;
    Open;

    Result := FieldByName('DIFMARGEMMINIMA').AsFloat;
    Close;
  end;
end;

function TDMOfertas.getMargemEmbalagem(pValor1: Double): double;
var
  qrMargem: TUniQuery;
begin

  try
    qrMargem := TUniQuery.Create(nil);
    qrMargem.Connection := DmLogin.Conexao;
    qrMargem.Close;
    qrMargem.SQL.Clear;
    qrMargem.SQL.Add('SELECT  ');
    qrMargem.SQL.Add('PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(:VALOR, (PKG_I9UTILITARIO.BUSCACUSTO(:CODFILIAL, :CODPROD)) * :QTUNIT) MARGEM');
    qrMargem.SQL.Add('FROM DUAL');
    qrMargem.ParamByName('VALOR').AsFloat := pValor1;
    qrMargem.ParamByName('CODFILIAL').AsString := cdsPesquisaOfertasInseridos.FieldByName('CODFILIAL').AsString;//cdsPesquisaOfertasInseridos.FieldByName('CODFILIAL').AsString;
    qrMargem.ParamByName('CODPROD').AsInteger := cdsPesquisaOfertasInseridos.FieldByName('CODPROD').AsInteger;
    qrMargem.ParamByName('QTUNIT').AsFloat := cdsPesquisaOfertasInseridos.FieldByName('QTUNIT').AsFloat;
    qrMargem.Open;

    Result := qrMargem.FieldByName('MARGEM').AsFloat;
  finally
    qrMargem.Close;
    qrMargem.Free;
  end;

end;

function TDMOfertas.getValorComMargem(pValor1, pMargem : Double): double;

begin

  try
    Result := pValor1 + ( (pValor1 * pMargem) / (100-pMargem) );
  finally
  end;
end;

function TDMOfertas.getMargemFuturaEmbalagem(pValorOferta,pValorVerba: Double): double;
var
  qrMargem: TUniQuery;
begin

  try
    qrMargem := TUniQuery.Create(nil);
    qrMargem.Connection := DmLogin.Conexao;
    qrMargem.Close;
    qrMargem.SQL.Clear;
    qrMargem.SQL.Add('SELECT  ');
    qrMargem.SQL.Add('PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(:VALOR, ((PKG_I9UTILITARIO.BUSCACUSTO(:CODFILIAL, :CODPROD) - :VALORVERBA)) * :QTUNIT) MARGEM');
    qrMargem.SQL.Add('FROM DUAL');
    qrMargem.ParamByName('VALOR').AsFloat := pValorOferta;
    qrMargem.ParamByName('VALORVERBA').AsFloat := pValorVerba;
    qrMargem.ParamByName('CODFILIAL').AsString := cdsPesquisaOfertasInseridos.FieldByName('CODFILIAL').AsString;
    qrMargem.ParamByName('CODPROD').AsInteger := cdsPesquisaOfertasInseridos.FieldByName('CODPROD').AsInteger;
    qrMargem.ParamByName('QTUNIT').AsFloat := cdsPesquisaOfertasInseridos.FieldByName('QTUNIT').AsFloat;
    qrMargem.Open;

    Result := qrMargem.FieldByName('MARGEM').AsFloat;
  finally
    qrMargem.Close;
    qrMargem.Free;
  end;

end;

function TDMOfertas.getMargemMin(campo: string): string;
var
  qr: TUniQuery;
begin
  qr := TUniQuery.Create(nil);
  qr.Connection := DmLogin.Conexao;
  qr.SQL.Clear;
  qr.SQL.Add('SELECT * FROM PCCONSUM');
  qr.Open;

  Result := qr.FieldByName(campo).Value;
end;

function TDMOfertas.getMargemMinimaAtacado(codprod: Double; codfilial: string): Double;
begin
  with qrAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT NVL(MARGEMMINATAC,0) AS MARGEMMINATAC FROM PCCLASSIFICMERC WHERE CODPROD = :CODPROD AND CODFILIAL IN (:CODFILIAL)');
    ParamByName('CODPROD').AsFloat := codprod;
    ParamByName('CODFILIAL').AsString := codfilial;
    Open;

    Result := FieldByName('MARGEMMINATAC').AsFloat;
  end;
end;


function TDMOfertas.getProxCodigoItem(codOferta: Double): Integer;
begin
  qrAux.Close;
  qrAux.SQL.Clear;
  qrAux.SQL.Add('SELECT NVL(MAX(CODITEM), 0) + 1 AS QT FROM PCOFERTAPROGRAMADAI');
  qrAux.SQL.Add('WHERE CODOFERTA = :CODOFERTA');
  qrAux.ParamByName('CODOFERTA').AsFloat := codOferta;
  qrAux.Open;
  Result := qrAux.FieldByName('QT').AsInteger;
end;

function TDMOfertas.getProxCodOferta: double;
begin
  result := 0;
  with DMOfertas.qrAux do
  begin
    close;
    sql.Clear;
    sql.Add('select PCOFERTAPROGRAMADAC_DFSEQ.nextval from dual');
    open;
    if not isempty then
      result := fields[0].value;
  end;
end;

function TDMOfertas.getValorAplicandoMargem(codfilial: string; codprod, codbarras, margem: Double): Double;
begin
  with qrAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PKG_I9UTILITARIO.APLICA_MARGEM(:CODFILIAL, :CODPROD, :CODBARRAS, :MARGEMAPLICAR) AS VLVENDA FROM DUAL');
    ParamByName('CODFILIAL').AsString := codfilial;
    ParamByName('CODPROD').AsFloat := codprod;
    ParamByName('CODBARRAS').AsFloat := codbarras;
    ParamByName('MARGEMAPLICAR').AsFloat := margem;
    Open;

    Result := FieldByName('VLVENDA').AsFloat;
  end;
end;

function TDMOfertas.getValorVerbaMargemDesejada(pCusto, pOferta,
  percDesejada: Double): Double;
var
  qr : TUniQuery;
begin
   try
    qr:= TUniQuery.Create(nil);
    qr.Connection:= dmLogin.Conexao;
    qr.Close;
    qr.SQL.Clear;
    qr.SQL.Add('SELECT                                                                                 ');
    qr.SQL.Add('CASE                                                                                   ');
    qr.SQL.Add('WHEN (:CUSTO - (NVL(:PVENDA, :CUSTO)*(1-(NVL(:MARGEM,0)/100)))) < 0 THEN 0             ');
    qr.SQL.Add('ELSE ROUND((:CUSTO - (NVL(:PVENDA, :CUSTO)*(1-(NVL(:MARGEM,0)/100)))),2)               ');
    qr.SQL.Add('END VLVERBA                                                                            ');
    qr.SQL.Add('FROM DUAL                                                                              ');

    qr.ParamByName('CUSTO').AsFloat:= pCusto;
    qr.ParamByName('PVENDA').AsFloat:= pOferta;
    qr.ParamByName('MARGEM').AsFloat:= percDesejada;

    qr.Open;

    Result := qr.FieldByName('VLVERBA').AsFloat;

  finally
    qr.Close;
    qr.Free;
  end;

end;

function TDMOfertas.getValorVerbaMargemMinima(custo, pvenda,
  margem: Double): double;
var
  qr : TUniQuery;
begin
  qr:= TUniQuery.Create(nil);
  qr.Connection:= dmLogin.Conexao;
  qr.Close;
  qr.SQL.Clear;
  qr.SQL.Add('SELECT');
  qr.SQL.Add('CASE');
  qr.SQL.Add('WHEN (ROUND(:CUSTO,2) - (NVL(:PVENDAATAC, ROUND(:CUSTO,2))*(1-(NVL(:MARGEM,0)/100)))) < 0 THEN 0');
  qr.SQL.Add('ELSE (ROUND(:CUSTO,2) - (NVL(:PVENDAATAC, ROUND(:CUSTO,2))*(1-(NVL(:MARGEM,0)/100))))');
  qr.SQL.Add('END VLVERBAMARGEMMIN');
  qr.SQL.Add('FROM DUAL');
  qr.ParamByName('CUSTO').AsFloat:= custo;
  qr.ParamByName('PVENDAATAC').AsFloat:= pvenda;
  qr.ParamByName('MARGEM').AsFloat:= margem;
  try
    qr.Open;

    Result := qr.FieldByName('VLVERBAMARGEMMIN').AsFloat;
  finally
    qr.Close;
    qr.Free;
  end;
end;

function TDMOfertas.ofertaPossuiVerbaApurar( codoferta : Double ): Boolean;
var
  qry : TUniQuery;
begin

  qry:= TUniQuery.Create(nil);

  try
    qry.Connection:= dmLogin.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('SELECT COUNT(*) AS QT FROM I9CONFIGVERBAOFERTA');
    qry.SQL.Add('WHERE CODOFERTA = :CODOFERTA');
    qry.SQL.Add('AND UPPER(TIPOVERBA) LIKE ''APURAR''');
    qry.ParamByName('CODOFERTA').AsFloat:= codoferta;
    qry.Open;

    if (qry.FieldByName('QT').AsInteger > 0) then
      Result := true
    else
      Result := false;
  finally
    qry.Close;
    qry.Free;
  end;

end;

procedure TDMOfertas.atualizaVigenciaAplicacaoVerba( codoferta : Double; dtinicio, dtfim : Tdate );
var
  qry : TUniQuery;
begin

  qry:= TUniQuery.Create(nil);

  try
    qry.Connection:= dmLogin.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('BEGIN                                                                                  ');
    qry.SQL.Add('    FOR DADOS IN ( SELECT   I9CONFIGVERBAOFERTA.NUMVERBA                               ');
    qry.SQL.Add('                     FROM   I9CONFIGVERBAOFERTA                                        ');
    qry.SQL.Add('                    WHERE   I9CONFIGVERBAOFERTA.CODOFERTA = :CODOFERTA                 ');
    qry.SQL.Add('                        AND I9CONFIGVERBAOFERTA.NUMVERBA IS NOT NULL                   ');
    qry.SQL.Add('                        AND UPPER( I9CONFIGVERBAOFERTA.TIPOVERBA ) LIKE ''APURAR'' )   ');
    qry.SQL.Add('    LOOP                                                                               ');
    qry.SQL.Add('        UPDATE   PCAPLICVERBAI                                                         ');
    qry.SQL.Add('           SET   DTINICIOVIGENCIA = :DTINICIOVIGENCIA, DTFIMVIGENCIA = :DTFIMVIGENCIA  ');
    qry.SQL.Add('         WHERE   NUMVERBA = DADOS.NUMVERBA;                                            ');
    qry.SQL.Add('                                                                                       ');
    qry.SQL.Add('         UPDATE I9CONFIGVERBAOFERTA                                                    ');
    qry.SQL.Add('         SET DTAPURACAOVERBAINI = :DTINICIOVIGENCIA,                                   ');
    qry.SQL.Add('         DTAPURACAOVERBAFIM = :DTFIMVIGENCIA                                           ');
    qry.SQL.Add('         WHERE CODOFERTA = :CODOFERTA                                                  ');
    qry.SQL.Add('         AND NUMVERBA = DADOS.NUMVERBA;                                                ');
    qry.SQL.Add('    END LOOP;                                                                          ');
    qry.SQL.Add('END;                                                                                   ');

    qry.ParamByName('CODOFERTA').AsFloat:= codoferta;
    qry.ParamByName('DTINICIOVIGENCIA').AsDate:= dtinicio;
    qry.ParamByName('DTFIMVIGENCIA').AsDate:= dtfim;

    try
      qry.ExecSQL;
    except
      on E: Exception do
      begin
        DmLogin.RollBackParaBloqueio;
        dmLogin.MensagemErroAbort('Erro ao atualizar vigencia da aplicacao da verba.' + #13 + E.Message);
      end;
    end;

  finally
    qry.Close;
    qry.Free;
  end;

end;


//Insere item escolhido na lista de oferta.
procedure TDMOfertas.insereForcedorGridVerba(codfornec: Double; fornecedor: string; codoferta : Double; codFilial : String);
var
  tipoVerba : String;
  tipoPgto : String;
begin
  if not cdsVerbasFornecedor.Locate('CODFORNEC;CODFILIAL', VarArrayOf([codfornec,codfilial]), []) then
  begin
    //No caso de ser editar, ja carrega o tipo de verba e etc que foi cadastrado.
    with qrAux do begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT');
      SQL.Add('I9CONFIGVERBAOFERTA.TIPOPAGTOVERBA,');
      SQL.Add('I9CONFIGVERBAOFERTA.TIPOVERBA');
      SQL.Add('FROM I9CONFIGVERBAOFERTA');
      SQL.Add('WHERE CODOFERTA = :CODOFERTA AND CODFORNEC = :CODFORNEC');
      ParamByName('CODOFERTA').AsFloat:= codoferta;
      ParamByName('CODFORNEC').AsFloat:= codfornec;
      Open;

      tipoVerba := FieldByName('TIPOVERBA').AsString;
      tipoPgto :=  FieldByName('TIPOPAGTOVERBA').AsString;
    end;


    //Insere novo fornecedor.
    cdsVerbasFornecedor.Append;
    cdsVerbasFornecedor.FieldByName('CODFORNEC').AsFloat := codfornec;
    cdsVerbasFornecedor.FieldByName('FORNECEDOR').AsString := fornecedor;
    cdsVerbasFornecedor.FieldByName('TIPOVERBA').AsString:= tipoVerba;
    cdsVerbasFornecedor.FieldByName('TIPOPAGTOVERBA').AsString:= tipoPgto;
    cdsVerbasFornecedor.FieldByName('CODFILIAL').AsString := codfilial;
    cdsVerbasFornecedor.post;
  end;
end;

procedure TDMOfertas.insereFornecedoresVerba;
begin
  //configura cds verbas
  dmOfertas.cdsVerbasFornecedor.Close;
  dmOfertas.cdsVerbasFornecedor.CreateDataSet;
  dmOfertas.cdsVerbasFornecedor.Open;

  with cdsPesquisaOfertasInseridos do
  begin
    First;
    while not Eof do
    begin
      //se houver verba, valida a criacao da mesma.
      if FieldByName('VLVERBAUNIT').AsFloat > 0 then
      begin
          insereForcedorGridVerba(FieldByName('CODFORNECPRINC').AsFloat,
                                  FieldByName('FORNECEDOR').AsString,
                                  FieldByName('CODOFERTA').AsFloat,
                                  FieldByName('CODFILIAL').AsString);
      end;

      Next;
    end;
  end;
end;

procedure TDMOfertas.insereOferta(oferta: TOferta2011);
var
  coditem: Integer;
  vMsgTransferirItem : String;
  existeItemAbaixoMargemMinima : Boolean;
  vlverbaant: Double;
begin

  existeItemAbaixoMargemMinima := False;

  //Insere cabecalho da oferta.
  qrInsereOfertac.Close;
  dmLogin.limpaParametrosQuery(qrInsereOfertac);
  qrInsereOfertac.ParamByName('CODFILIAL').AsString := oferta.codFilial;
  qrInsereOfertac.ParamByName('CODOFERTA').AsFloat := oferta.codOferta;
  qrInsereOfertac.ParamByName('OFERTARELAMPAGO').AsString:= oferta.ofertaRelampago;
  qrInsereOfertac.ParamByName('DESCOFERTA').AsString := oferta.descricao;
  qrInsereOfertac.ParamByName('HORAINICIAL').AsString := oferta.horaInicial;
  qrInsereOfertac.ParamByName('HORAFINAL').AsString := oferta.horaFinal;
  qrInsereOfertac.ParamByName('DTOFERTAINI').AsDate := oferta.dataInicial;
  qrInsereOfertac.ParamByName('DTOFERTAFIM').AsDate := oferta.dataFinal;
  qrInsereOfertac.ParamByName('GERAVERBA').AsString := oferta.geraverbaCabecalho;
  qrInsereOfertac.ParamByName('MATRICULA').AsInteger := dmLogin.Matricula;

  if ofertaEstaAprovada(oferta.codOferta) then
    qrInsereOfertac.ParamByName('STATUSOFERTA').AsString:= 'APROVADA'
  else
    qrInsereOfertac.ParamByName('STATUSOFERTA').AsString:= 'AGUARDANDO';
  qrInsereOfertac.ExecSQL;

  //Caso esteja editando, e a oferta tenha verba a apurar, sera necessario atualizar a pcaplicverbai com as novas datas das verbas.
  if ( frmOfertas.vTipoOperacaoRotina = 'E' ) and ( ofertaPossuiVerbaApurar(oferta.codOferta) and (ofertaEstaAprovada(oferta.codOferta)) ) then
  begin
    atualizaVigenciaAplicacaoVerba(oferta.codOferta, oferta.dataInicial, oferta.dataFinal);
  end;
  
  //Insere itens da oferta
  cdsPesquisaOfertasInseridos.First;
  while not cdsPesquisaOfertasInseridos.Eof do
  begin

    if (cdsPesquisaOfertasInseridosCODFILIAL.AsString = oferta.codFilial) then
    begin

      qrInsereOfertai.Close;
      DmLogin.limpaParametrosQuery(qrInsereOfertai);

      qrInsereOfertai.ParamByName('CODFILIAL').AsString := oferta.codFilial;

      if (oferta.codTabloide > 0) and (cdsPesquisaOfertasInseridosCODOFERTA.AsInteger > 0) then
        qrInsereOfertai.ParamByName('CODOFERTA').AsInteger := cdsPesquisaOfertasInseridosCODOFERTA.AsInteger
      else
        qrInsereOfertai.ParamByName('CODOFERTA').AsFloat := oferta.codOferta;

      if oferta.codTabloide > 0 then
        qrInsereOfertai.ParamByName('CODTABLOIDE').AsFloat := oferta.codTabloide;

      qrInsereOfertai.ParamByName('CODAUXILIAR').AsFloat    := cdsPesquisaOfertasInseridosCODAUXILIAR.AsFloat;
      qrInsereOfertai.ParamByName('QTUNIT').AsFloat         := cdsPesquisaOfertasInseridosQTUNIT.AsFloat;
      qrInsereOfertai.ParamByName('VLOFERTAATAC').AsFloat   := cdsPesquisaOfertasInseridosPOFERTA_ATAC.AsFloat;
      qrInsereOfertai.ParamByName('MOTIVOOFERTA').AsString  := cdsPesquisaOfertasInseridosMOTIVOOFERTA.AsString;
      qrInsereOfertai.ParamByName('CODITEM').AsInteger      := getProxCodigoItem(oferta.codOferta);

      //Valida se item gera verba ou nao
      if (cdsPesquisaOfertasInseridosVLVERBAUNIT.AsFloat > 0 ) then
        qrInsereOfertai.ParamByName('GERAVERBA').AsString := 'S'
      else
        qrInsereOfertai.ParamByName('GERAVERBA').AsString := 'N';

      qrInsereOfertai.ParamByName('QTMAXVENDA').AsFloat     := cdsPesquisaOfertasInseridosQTMAXVENDA.AsFloat;
      qrInsereOfertai.ParamByName('VLUNITARIOVERBA').Value  := cdsPesquisaOfertasInseridosVLVERBAUNIT.Value;
      qrInsereOfertai.ParamByName('VLVERBAMARGEMMIN').Value := cdsPesquisaOfertasInseridosVLVERBAMARGEMMIN.Value;
      qrInsereOfertai.ParamByName('CODPRODPRINC').Value     := cdsPesquisaOfertasInseridosCODPRODPRINC.Value;
      qrInsereOfertai.ParamByName('OFERTAFAMILIA').AsString := cdsPesquisaOfertasInseridosOFERTAFAMILIA.AsString;
      qrInsereOfertai.ParamByName('CODPROD').AsFloat        := cdsPesquisaOfertasInseridosCODPROD.AsFloat;

      //Move o item de oferta, e grava alteraoees
      if cdsPesquisaOfertasInseridosCODOFERTAORIGEM.AsFloat > 0 then
      begin

        //Transfere item de oferta
        vMsgTransferirItem:= efetuaTransferenciaProdutoOferta(cdsPesquisaOfertasInseridosCODPROD.AsFloat,
                                                              cdsPesquisaOfertasInseridosCODOFERTAORIGEM.AsFloat,
                                                              oferta.codOferta);

        if vMsgTransferirItem <> 'OK' then
        begin
          dmLogin.MensagemErroAbort('Erro ao transferir item de oferta! ' + #13 +
                                    'Produto: '   + cdsPesquisaOfertasInseridosCODPROD.AsString + #13 +
                                    'Descricao: ' + cdsPesquisaOfertasInseridosDESCRICAO.AsString + #13 +
                                    'Msg: '       + vMsgTransferirItem);

          DmLogin.RollBackParaBloqueio;
        end;

        qrInsereOfertai.ParamByName('CODOFERTAORIGEM').AsFloat        := cdsPesquisaOfertasInseridosCODOFERTAORIGEM.AsFloat;
        qrInsereOfertai.ParamByName('CODUSURTRANSFERENCIA').AsInteger := cdsPesquisaOfertasInseridosCODUSURTRANSFERENCIA.AsInteger;
        qrInsereOfertai.ParamByName('DTTRANSFERENCIA').AsDateTime     := cdsPesquisaOfertasInseridosDTTRANSFERENCIA.AsDateTime;

      end;

      if (DMOfertas.produtoTemOfertaVigente(DMOfertas.cdsPesquisaOfertasInseridosCODPROD.AsFloat,
                                             oferta.dataInicial,
                                             oferta.dataFinal,
                                             DMOfertas.cdsPesquisaOfertasInseridosCODFILIAL.AsString,
                                             false,
                                             Trunc(oferta.codOferta)) > 0) then
      begin
        DmLogin.RollBackParaBloqueio;
        Abort;
      end;

      if DMCampanhaCRM.produtoTemCampanhaCRMVigente(DMOfertas.cdsPesquisaOfertasInseridosCODFILIAL.AsString,
                                                       DMOfertas.cdsPesquisaOfertasInseridosCODPROD.AsInteger,
                                                       oferta.dataInicial,
                                                       oferta.dataFinal,
                                                       0
                                                       ) then
      begin
       DmLogin.RollBackParaBloqueio;
       Abort;
      end;

      //Verififica se e edicao ou nao
      if ( frmOfertas.vTipoOperacaoRotina = 'E' ) and (cdsPesquisaOfertasInseridosVLVERBAUNITANT.AsString <> '') then
      begin
          qrInsereLogAlteracao.Close;
          DmLogin.limpaParametrosQuery(qrInsereLogAlteracao);
          qrInsereLogAlteracao.paramByName('CODFILIAL').AsString   := oferta.codFilial;
          qrInsereLogAlteracao.paramByName('CODOFERTA').AsFloat    := oferta.codOferta;
          qrInsereLogAlteracao.paramByName('CODPROD').AsFloat      := cdsPesquisaOfertasInseridosCODPROD.AsFloat;
          qrInsereLogAlteracao.paramByName('CODAUXILIAR').AsFloat  := cdsPesquisaOfertasInseridosCODAUXILIAR.AsFloat;
          qrInsereLogAlteracao.paramByName('NOMEUSUARIO').AsString := DmLogin.NomeUsuario;
          qrInsereLogAlteracao.paramByName('VLVERBA').AsFloat      := cdsPesquisaOfertasInseridosVLVERBAUNIT.AsFloat;
          qrInsereLogAlteracao.paramByName('VLVERBAANT').AsString  := cdsPesquisaOfertasInseridosVLVERBAUNITANT.AsString;
          qrInsereLogAlteracao.ExecSQL;
      end;

      qrInsereOfertai.ExecSQL;

      //Valida se existe item abaixo da margem minima.
      if cdsPesquisaOfertasInseridosMARGEMFUTURA_OFERTA.Value < cdsPesquisaOfertasInseridosMARGEMMINIMA.Value then
        existeItemAbaixoMargemMinima := True;
    end;

    cdsPesquisaOfertasInseridos.Next;
  end;


  if ofertaEstaAprovada(oferta.codOferta) and (oferta.dataInicial <= Date) and (oferta.dataFinal >= Date) then
  begin
    DmLogin.qrAux.Close;
    DmLogin.qrAux.SQL.Clear;
    DmLogin.qrAux.SQL.Add('SELECT PCOFERTAPROGRAMADAC.CODFILIAL, PCOFERTAPROGRAMADAI.CODPROD   ');
    DmLogin.qrAux.SQL.Add('FROM PCOFERTAPROGRAMADAC, PCOFERTAPROGRAMADAI                       ');
    DmLogin.qrAux.SQL.Add('WHERE PCOFERTAPROGRAMADAC.CODOFERTA = PCOFERTAPROGRAMADAI.CODOFERTA ');
    DmLogin.qrAux.SQL.Add('AND PCOFERTAPROGRAMADAC.DTINICIAL = TRUNC (SYSDATE)                 ');
    DmLogin.qrAux.SQL.Add('AND PCOFERTAPROGRAMADAC.CODOFERTA = :CODOFERTA                      ');
    DmLogin.qrAux.ParamByName('CODOFERTA').AsInteger := Trunc(oferta.codOferta);
    DmLogin.qrAux.Open;

    if not DmLogin.qrAux.IsEmpty then
    begin
      DmLogin.qrAux.First;

      while not DmLogin.qrAux.Eof do
      begin
        DMOfertas.prcAtualizarEtiquetas.Close;
        DMOfertas.prcAtualizarEtiquetas.ParamByName('P_CODFILIAL').AsString := DmLogin.qrAux.FieldByName('CODFILIAL').AsString;
        DMOfertas.prcAtualizarEtiquetas.ParamByName('P_CODPROD').AsInteger := DmLogin.qrAux.FieldByName('CODPROD').AsInteger;
        DMOfertas.prcAtualizarEtiquetas.ParamByName('P_COMMITAR').AsString := 'N';
        DMOfertas.prcAtualizarEtiquetas.ExecProc;
        DmLogin.qrAux.Next;
      end;
    end;
  end;

  if not( ofertaEstaAprovada(oferta.codOferta)) and
     (oferta.codTabloide = 0) and
     not existeItemAbaixoMargemMinima  and
     not (cdsVerbasFornecedor.Locate('CODFILIAL;TIPOVERBA', VarArrayOf([oferta.codFilial, 'DEFINIDO']), []) and
     not (cdsVerbasFornecedor.Locate('CODFILIAL;TIPOVERBA', VarArrayOf([oferta.codFilial, 'MARGEMDIRETORIA']), [])) ) then
  begin
     DMOfertas.AprovarOferta(Trunc(oferta.codOferta));
  end;
end;

procedure TDMOfertas.AprovarOferta(pCodOferta: Integer);
var
  qryAprovar : TUniQuery;
begin
  try
    qryAprovar := TUniQuery.Create(nil);
    qryAprovar.Connection := DmLogin.Conexao;
    qryAprovar.Close;
    qryAprovar.SQL.Clear;
    qryAprovar.SQL.Add('UPDATE PCOFERTAPROGRAMADAC SET CODFUNCLIBERACAO = :CODFUNCLIBERACAO, ');
    qryAprovar.SQL.Add('DTLIBERACAO = SYSDATE, DTINICIAL = DTINICIALSUGESTAO, DTFINAL = DTFINALSUGESTAO');
    qryAprovar.SQL.Add('WHERE CODOFERTA = :CODOFERTA');
    qryAprovar.ParamByName('CODFUNCLIBERACAO').AsInteger := dmLogin.Matricula;
    qryAprovar.ParamByName('CODOFERTA').AsInteger := pCodOferta;
    qryAprovar.ExecSQL;

    if dmOfertas.ofertaPossuiVerbas(pCodOferta) then
    begin
      //Roda procedure para gerar as verbas.
      dmOfertas.prcGeraVerba.Close;
      dmOfertas.prcGeraVerba.ParamByName('P_CODOFERTA').AsFloat := pCodOferta;
      dmOfertas.prcGeraVerba.ParamByName('P_CODFUNC').AsInteger := dmLogin.Matricula;
      dmOfertas.prcGeraVerba.ExecProc;
    end;


    qryAprovar.Close;
    qryAprovar.SQL.Clear;
    qryAprovar.SQL.Add('SELECT PCOFERTAPROGRAMADAC.CODFILIAL, PCOFERTAPROGRAMADAI.CODPROD   ');
    qryAprovar.SQL.Add('FROM PCOFERTAPROGRAMADAC, PCOFERTAPROGRAMADAI                       ');
    qryAprovar.SQL.Add('WHERE PCOFERTAPROGRAMADAC.CODOFERTA = PCOFERTAPROGRAMADAI.CODOFERTA ');
    qryAprovar.SQL.Add('AND PCOFERTAPROGRAMADAC.DTINICIAL = TRUNC (SYSDATE)                 ');
    qryAprovar.SQL.Add('AND PCOFERTAPROGRAMADAC.CODOFERTA = :CODOFERTA                      ');
    qryAprovar.ParamByName('CODOFERTA').AsInteger := pCodOferta;
    qryAprovar.Open;

    if qryAprovar.IsEmpty then
    begin
      while not qryAprovar.Eof do
      begin
        prcAtualizarEtiquetas.Close;
        prcAtualizarEtiquetas.ParamByName('P_CODFILIAL').AsString := qryAprovar.FieldByName('CODFILIAL').AsString;
        prcAtualizarEtiquetas.ParamByName('P_CODPROD').AsInteger := qryAprovar.FieldByName('CODPROD').AsInteger;
        prcAtualizarEtiquetas.ParamByName('P_COMMITAR').AsString := 'N';
        prcAtualizarEtiquetas.ExecProc;
        qryAprovar.Next;
      end;
    end;

  finally
    qryAprovar.Close;
    qryAprovar.Free;
  end;

end;


procedure TDMOfertas.AprovarTabloide(pCodTabloide: Integer);
var
  qryAprovarTabloide : TUniQuery;
begin
  try
    qryAprovarTabloide := TUniQuery.Create(nil);
    qryAprovarTabloide.Connection := DmLogin.Conexao;
    qryAprovarTabloide.Close;
    qryAprovarTabloide.SQL.Clear;
    qryAprovarTabloide.SQL.Add('SELECT CODOFERTA FROM PCOFERTAPROGRAMADAC WHERE CODTABLOIDE = :CODTABLOIDE AND DTLIBERACAO IS NULL');
    qryAprovarTabloide.ParamByName('CODTABLOIDE').AsInteger := pCodTabloide;
    qryAprovarTabloide.ExecSQL;

    if not qryAprovarTabloide.IsEmpty then
    begin
      qryAprovarTabloide.First;
      while not qryAprovarTabloide.Eof do
      begin
        AprovarOferta(qryAprovarTabloide.FieldByName('CODOFERTA').AsInteger);
        qryAprovarTabloide.Next;
      end;
    end;

  finally
    qryAprovarTabloide.Free;
  end;
end;


procedure TDMOfertas.inserirItemLista(pOfertaAtac:double);
var
  transferirItemOferta : Boolean;
  vCodOfertaVigente : Double;
  vPossuiPermissaoTransferirItem : Boolean;
begin
  vCodOfertaVigente := 0;
  DMOfertas.cdsFiliaisIncluidas.First;

  while not DMOfertas.cdsFiliaisIncluidas.Eof do
  begin
    //Insere item na oferta
    with qrPesquisaItemInserir do
    begin
       qrPesquisaItemInserir.Close;
       qrPesquisaItemInserir.RestoreSQL;
       qrPesquisaItemInserir.ParamByName('CODFILIAL').AsString := DMOfertas.cdsFiliaisIncluidasCODIGO.AsString;
       qrPesquisaItemInserir.ParamByName('CODPROD').AsString := qrPesquisaOfertas.FieldByName('CODPROD').AsString;
       qrPesquisaItemInserir.Open;

       if not qrPesquisaItemInserir.IsEmpty then
       begin

          if (not dmOfertas.qrPesquisaOfertas.Active) and (dmOfertas.qrPesquisaOfertas.RecordCount <= 0) then
            dmLogin.MensagemErroAbort('Nao foram encontrados itens para inclusao, verifique!');

          if DMOfertas.cdsPesquisaOfertasInseridos.Locate('CODFILIAL;OFERTAFAMILIA;CODPRODPRINC', VarArrayOf([DMOfertas.qrPesquisaItemInserir.FieldByName('CODFILIAL').AsString, 'S', DMOfertas.qrPesquisaItemInserir.FieldByName('CODPRODPRINC').AsString]), []) then
          begin
            dmLogin.MensagemErroAbort('Ja existe uma oferta para a familia do item selecionado!');
          end;

          if DMOfertas.cdsPesquisaOfertasInseridos.Locate('CODFILIAL;CODPROD', VarArrayOf([DMOfertas.qrPesquisaItemInserir.FieldByName('CODFILIAL').AsString, DMOfertas.qrPesquisaItemInserir.FieldByName('CODPROD').AsString]), []) then
          begin
            DMOfertas.cdsFiliaisIncluidas.Next;
            Continue;
          end;


          //Busca se tem oferta vigente e codigo da oferta
          vCodOfertaVigente := dmOfertas.produtoTemOfertaVigente(dmOfertas.qrPesquisaItemInserir.FieldByName('CODPROD').AsFloat,
                                                                 frmOfertas.dtVigenciaINI.Date,
                                                                 frmOfertas.dtVigenciaFIM.Date,
                                                                 DMOfertas.qrPesquisaItemInserir.FieldByName('CODFILIAL').AsString,
                                                                 false,
                                                                 StrToInt(frmOfertas.edtCodigoOferta.Text));

          if (vCodOfertaVigente > 0) then
          begin

            if produtoTemVerbaNaOferta(qrPesquisaItemInserir.FieldByName('CODPROD').AsFloat, vCodOfertaVigente)then
            begin
              DmLogin.MensagemInformacao('Atencao, produto possui outra oferta vigente na filial: '+
                                         DMOfertas.qrPesquisaItemInserir.FieldByName('CODFILIAL').AsString +
                                         ', e tem verbas configuradas, nao sera possivel move-lo!');
              DMOfertas.cdsFiliaisIncluidas.Next;
              Continue;
            end;

            if dmLogin.validaPermissao530(29) and DmLogin.MensagemPergunta('Deseja mover o item para a oferta atual ?') then
            begin
              transferirItemOferta := True;
            end
            else
            begin
              DMOfertas.cdsFiliaisIncluidas.Next;
              Continue;
            end;

          end;

           if DMCampanhaCRM.produtoTemCampanhaCRMVigente(DMOfertas.qrPesquisaItemInserir.FieldByName('CODFILIAL').AsString,
                                                         dmOfertas.qrPesquisaItemInserir.FieldByName('CODPROD').AsInteger,
                                                         frmOfertas.dtVigenciaINI.Date,
                                                         frmOfertas.dtVigenciaFIM.Date,
                                                         0
                                                         ) then
           begin
             DMOfertas.cdsFiliaisIncluidas.Next;
             Continue;
           end;

          if not dmLogin.validaPermissao530(14) then
          begin
            //valida se houve oferta nos ultimos 30 dias e se o usuario tem permissao.
            if produtoTeveDezDiasDeOfertaOfertaUltimos30(qrPesquisaItemInserir.FieldByName('CODPROD').AsFloat, DMOfertas.cdsFiliaisIncluidasCODIGO.AsString) then
            begin
              dmLogin.MensagemErroAbort('Usuario nao tem permissao para incluir item que esteve em oferta nos ultimos 30 dias!');
            end;
          end;

          //Insere item na lista.
          cdsPesquisaOfertasInseridos.Append;
          cdsPesquisaOfertasInseridos.FieldByName('CODPROD').AsInteger := FieldByName('CODPROD').AsInteger;
          cdsPesquisaOfertasInseridos.FieldByName('CODAUXILIAR').AsString := FieldByName('CODAUXILIAR').AsString;
          cdsPesquisaOfertasInseridos.FieldByName('DESCRICAO').AsString := FieldByName('DESCRICAO').AsString;
          cdsPesquisaOfertasInseridos.FieldByName('CUSTOFIN').AsFloat := FieldByName('CUSTOFIN').AsFloat;
          cdsPesquisaOfertasInseridos.FieldByName('PVENDA').AsFloat := FieldByName('PVENDA').AsFloat;
          cdsPesquisaOfertasInseridos.FieldByName('PVENDAATAC').AsFloat := FieldByName('PVENDAATAC').AsFloat;
          cdsPesquisaOfertasInseridos.FieldByName('QTDISPONIVEL').AsFloat := FieldByName('QTDISPONIVEL').AsFloat;
          cdsPesquisaOfertasInseridos.FieldByName('PERC_VENDA_ATAC').AsFloat := FieldByName('PERC_VENDA_ATAC').AsFloat;
          cdsPesquisaOfertasInseridos.FieldByName('PERC_VENDA_VAREJO').AsFloat := FieldByName('PERC_VENDA_VAREJO').AsFloat;
          cdsPesquisaOfertasInseridos.FieldByName('PVENDACONCORRENTE').AsFloat := FieldByName('PVENDACONCORRENTE').AsFloat;
          cdsPesquisaOfertasInseridos.FieldByName('PVENDAATACCONCORRENTE').AsFloat := FieldByName('PVENDAATACCONCORRENTE').AsFloat;
          cdsPesquisaOfertasInseridos.FieldByName('QTGIRODIA').AsFloat := FieldByName('QTGIRODIA').AsFloat;
          cdsPesquisaOfertasInseridos.FieldByName('MARGEMFUTURA_OFERTA').AsFloat := FieldByName('MARGEMFUTURA_OFERTA').AsFloat;
          cdsPesquisaOfertasInseridos.FieldByName('DIF_MARGEM_MINIMA').AsFloat := FieldByName('DIF_MARGEM_MINIMA').AsFloat;
          cdsPesquisaOfertasInseridos.FieldByName('GERAVERBA').AsString := 'N';
          cdsPesquisaOfertasInseridos.FieldByName('OFERTAFAMILIA').AsString := 'S';
          cdsPesquisaOfertasInseridos.FieldByName('CODPRODPRINC').AsInteger := FieldByName('CODPRODPRINC').AsInteger;
          cdsPesquisaOfertasInseridos.FieldByName('CODFORNEC').AsInteger := FieldByName('CODFORNEC').AsInteger;
          cdsPesquisaOfertasInseridos.FieldByName('CODFILIAL').AsString := FieldByName('CODFILIAL').AsString;
          cdsPesquisaOfertasInseridos.FieldByName('QTUNIT').AsString := FieldByName('QTUNIT').AsString;
          cdsPesquisaOfertasInseridos.FieldByName('FORNECEDOR').AsString := FieldByName('FORNECEDOR').AsString;
          cdsPesquisaOfertasInseridos.FieldByName('MARGEMMINIMA').AsFloat := FieldByName('MARGEMMINIMA').AsFloat;
          cdsPesquisaOfertasInseridos.FieldByName('TEMATACADO').AsString:= 'S';
          cdsPesquisaOfertasInseridos.FieldByName('CODFORNECPRINC').AsInteger := FieldByName('CODFORNECPRINC').AsInteger;

          //Grava informacoes caso seja transferencia de item da oferta.
          if transferirItemOferta then
          begin
            cdsPesquisaOfertasInseridosCODOFERTAORIGEM.AsFloat := vCodOfertaVigente;
            cdsPesquisaOfertasInseridosCODUSURTRANSFERENCIA.AsInteger := dmLogin.Matricula;
            cdsPesquisaOfertasInseridosDTTRANSFERENCIA.AsDateTime := Now;
          end;

          //Valida se esta cobrindo preco de concorrincia.
          //Nesse momento, o pofertaatac so estara > 0 caso esteja cobrindo preco de concorrente
          if (pOfertaAtac > 0) then
          begin
            cdsPesquisaOfertasInseridos.FieldByName('OFERTAFAMILIA').AsString := 'S';
            cdsPesquisaOfertasInseridos.FieldByName('POFERTA_ATAC').AsFloat := pOfertaAtac;

            atualizaVLVERBAMARGEMMIN;
            atualizaMargemFutura;

            //SE A MARGEM FUTURA < MARGEMMINIMA
            if cdsPesquisaOfertasInseridos.FieldByName('VLVERBAMARGEMMIN').AsFloat >=  0.01 then
            begin
              cdsPesquisaOfertasInseridos.FieldByName('GERAVERBA').AsString := 'S';
              cdsPesquisaOfertasInseridos.FieldByName('VLVERBAUNIT').AsFloat :=  cdsPesquisaOfertasInseridos.FieldByName('VLVERBAMARGEMMIN').AsFloat;
            end;

          end;

          cdsPesquisaOfertasInseridos.Post;
       end;

    end;

    DMOfertas.cdsFiliaisIncluidas.Next;

  end;
end;

function TDMOfertas.limpaItensOferta(codoferta: Double): Boolean;
var
  qr: TuniQuery;
begin
  qr := TUniQuery.Create(nil);
  qr.Connection := dmLogin.Conexao;
  qr.Close;
  qr.SQL.Clear;
  qr.SQL.Add('DELETE FROM PCOFERTAPROGRAMADAI WHERE CODOFERTA = :CODOFERTA');
  qr.ParamByName('CODOFERTA').AsFloat := codoferta;
  try
    qr.ExecSQL;
  finally
    qr.Free;
  end;
end;


function TDMOfertas.ofertaEstaAprovada(codoferta: Double): Boolean;
begin
  with qrAux do begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT(*) EXISTE FROM PCOFERTAPROGRAMADAC WHERE CODOFERTA = :CODOFERTA AND PCOFERTAPROGRAMADAC.DTLIBERACAO IS NOT NULL');
    ParamByName('CODOFERTA').AsFloat:= codoferta;
    Open;

    if FieldByName('EXISTE').AsInteger > 0 then
      Result := True
    else
      Result := false;

  end;
end;

function TDMOfertas.ofertaPossuiVerbas(codoferta: Double): Boolean;
var
  qr: TuniQuery;
begin
  qr := TUniQuery.Create(nil);
  qr.Connection := dmLogin.Conexao;
  qr.Close;
  qr.SQL.Clear;
  qr.SQL.Add('SELECT COUNT(*) AS QT FROM I9CONFIGVERBAOFERTA');
  qr.SQL.Add('WHERE CODOFERTA = :CODOFERTA');
  qr.ParamByName('CODOFERTA').AsFloat := codoferta;
  qr.Open;

  if qr.FieldByName('QT').AsInteger > 0 then
    Result := True
  else
    Result := false;

  qr.Free;
end;

procedure TDMOfertas.populaOfertaEditar(codoferta: Double);
var
  qr: TuniQuery;
begin
  try
    qr := TUniQuery.Create(nil);
    qr.Connection := dmLogin.Conexao;
    qr.Close;
    qr.SQL.Clear;
    qr.SQL.Add('SELECT CODFILIAL FROM PCOFERTAPROGRAMADAC');
    qr.SQL.Add('WHERE CODOFERTA = :CODOFERTA');
    qr.ParamByName('CODOFERTA').AsFloat := codoferta;
    qr.Open;

    with qrDadosItensEditar do
    begin

      Close;
      ParamByName('CODOFERTA').AsFloat := codoferta;
      Open;
      First;

      if cdsFiliaisDisponiveis.Locate('CODIGO', qr.FieldByName('CODFILIAL').AsString, []) then
      begin
        frmOfertas.btnIncluirFilial.Click;
      end;

      try
        vCarregandoItens := True;

        while not Eof do
        begin
          if not ((FieldByName('OFERTAFAMILIA').AsString = 'S') and
                 (cdsPesquisaOfertasInseridos.Locate('CODFILIAL;OFERTAFAMILIA;CODPRODPRINC',  VarArrayOf([FieldByName('CODFILIAL').AsString, 'S', FieldByName('CODPRODPRINC').AsString]), [])))
          then
          begin
            cdsPesquisaOfertasInseridos.Append;
            cdsPesquisaOfertasInseridos.FieldByName('TEMATACADO').AsString:= FieldByName('TEMATACADO').AsString;
            cdsPesquisaOfertasInseridos.FieldByName('CODPROD').AsString := FieldByName('CODPROD').AsString;
            cdsPesquisaOfertasInseridos.FieldByName('CODFILIAL').AsString := FieldByName('CODFILIAL').AsString;
            cdsPesquisaOfertasInseridos.FieldByName('QTUNIT').AsString := FieldByName('QTUNIT').AsString;
            cdsPesquisaOfertasInseridos.FieldByName('CODAUXILIAR').AsString := FieldByName('CODAUXILIAR').AsString;
            cdsPesquisaOfertasInseridos.FieldByName('DESCRICAO').AsString := FieldByName('DESCRICAO').AsString;
            cdsPesquisaOfertasInseridos.FieldByName('CUSTOFIN').AsFloat := FieldByName('CUSTOFIN').AsFloat;
            cdsPesquisaOfertasInseridos.FieldByName('CODFORNEC').AsFloat := FieldByName('CODFORNEC').AsFloat;
            cdsPesquisaOfertasInseridos.FieldByName('CODFORNECPRINC').AsFloat := FieldByName('CODFORNEC').AsFloat;
            cdsPesquisaOfertasInseridos.FieldByName('MARGEMFUTURA_OFERTA').AsFloat := 0;
            cdsPesquisaOfertasInseridos.FieldByName('DIF_MARGEM_MINIMA').AsFloat := 0;
            cdsPesquisaOfertasInseridos.FieldByName('CODPRODPRINC').AsFloat := FieldByName('CODPRODPRINC').AsFloat;
            cdsPesquisaOfertasInseridos.FieldByName('FORNECEDOR').AsString := FieldByName('FORNECEDOR').AsString;
            cdsPesquisaOfertasInseridos.FieldByName('MARGEMMINIMA').AsFloat := getMargemMinimaAtacado(FieldByName('CODPROD').AsFloat, FieldByName('CODFILIAL').AsString);
            cdsPesquisaOfertasInseridos.FieldByName('OFERTAFAMILIA').AsString := FieldByName('OFERTAFAMILIA').AsString;
            cdsPesquisaOfertasInseridos.FieldByName('POFERTA_ATAC').AsFloat := FieldByName('VLOFERTAATAC').AsFloat;
            cdsPesquisaOfertasInseridos.FieldByName('GERAVERBA').AsString := FieldByName('GERAVERBA').AsString;
            cdsPesquisaOfertasInseridos.FieldByName('VLVERBAUNIT').AsFloat := FieldByName('VLUNITARIOVERBA').AsFloat;
            cdsPesquisaOfertasInseridos.FieldByName('MOTIVOOFERTA').AsString := FieldByName('MOTIVOOFERTA').AsString;
            cdsPesquisaOfertasInseridos.FieldByName('CODTABLOIDE').AsString := FieldByName('CODTABLOIDE').AsString;
            cdsPesquisaOfertasInseridos.FieldByName('CODOFERTA').AsString := FieldByName('CODOFERTA').AsString;
            cdsPesquisaOfertasInseridos.FieldByName('QTDISPONIVEL').AsFloat := FieldByName('QTDISPONIVEL').AsFloat;
            cdsPesquisaOfertasInseridos.FieldByName('QTGIRODIA').AsFloat := FieldByName('QTGIRODIA').AsFloat;
            cdsPesquisaOfertasInseridos.FieldByName('PERC_VENDA_VAREJO').AsFloat:= FieldByName('PERC_VENDA_VAREJO').AsFloat;
            cdsPesquisaOfertasInseridos.FieldByName('PERC_VENDA_ATAC').AsFloat := FieldByName('PERC_VENDA_ATAC').AsFloat;
            cdsPesquisaOfertasInseridos.FieldByName('PVENDA').AsFloat := FieldByName('PVENDA').AsFloat;
            cdsPesquisaOfertasInseridos.FieldByName('PVENDAATAC').AsFloat := FieldByName('PVENDAATAC').AsFloat;
            cdsPesquisaOfertasInseridos.FieldByName('PVENDACONCORRENTE').AsFloat := FieldByName('PVENDACONCORRENTE').AsFloat;
            cdsPesquisaOfertasInseridos.FieldByName('PVENDAATACCONCORRENTE').AsFloat := FieldByName('PVENDAATACCONCORRENTE').AsFloat;
            cdsPesquisaOfertasInseridos.Post;
          end;

          Next;
        end;
      finally
        vCarregandoItens := False;
      end;

    end;

    qr.Free;
  except
    on E: Exception do
    begin
      dmLogin.MensagemErroAbort('Erro ao popular itens da oferta! ' + E.Message);
      Abort;
    end;
  end;

end;

procedure TDMOfertas.populaOfertaTabloideEditar(codTabloide: Double);
begin
  qrOfertasTabloide.Close;
  qrOfertasTabloide.ParamByName('CODTABLOIDE').AsFloat := codTabloide;
  qrOfertasTabloide.Open;

  if qrOfertasTabloide.IsEmpty then
    Exit;

  qrOfertasTabloide.First;
  while not qrOfertasTabloide.Eof do
  begin

    if (qrOfertasTabloide.FieldByName('DTLIBERACAO').AsString <> '') then
    begin
      DmLogin.MensagemInformacao('Atencao: Ja existe uma oferta aprovada para o tabloide (Cod. Oferta: ' + qrOfertasTabloide.FieldByName('CODOFERTA').AsString + ' - Filial: ' + qrOfertasTabloide.FieldByName('CODFILIAL').AsString + '). Essa oferta nao sera carregada para edicao.');
    end
    else
    begin
      populaOfertaEditar(qrOfertasTabloide.FieldByName('CODOFERTA').AsInteger);
    end;

    qrOfertasTabloide.Next;
  end;

  qrOfertasTabloide.Close;
end;

function TDMOfertas.efetuaTransferenciaProdutoOferta(codprod : Double; codofertaOrigem : Double; codofertaDestino : Double): String;
begin

  try

    Result := 'OK';

    //Valida se produto na origem tem verba configurada, caso haja, nao permite.
    if ( produtoTemVerbaNaOferta(codprod, codofertaOrigem) ) then begin
      Result := 'Produto na oferta de origem nao pode ter verba configurada!';
      Exit;
    end;

    //Atualiza oferta do produto, e o numseq do item na oferta nova.
    if not ( atualizaNumeroOfertaProduto(codprod, codofertaOrigem, codofertaDestino) ) then begin
      Result := 'Erro ao atualizar numero da oferta no produto!';
      Exit;
    end;


  Except on E: Exception do
    begin
      Result := 'Erro ao atualizar numerador da oferta:' + #13 + e.Message;
    end;
  end;

end;


function TDMOfertas.atualizaNumeroOfertaProduto(codprod : Double; codofertaOrigem : Double; codofertaDestino : Double): Boolean;
var
  qry, qryDeletaItemOfertaOrigem : TuniQuery;
begin

  try
    qryDeletaItemOfertaOrigem := TUniQuery.Create(nil);
    qryDeletaItemOfertaOrigem.Connection := dmLogin.Conexao;

    qryDeletaItemOfertaOrigem.Close;
    qryDeletaItemOfertaOrigem.SQL.Clear;
    qryDeletaItemOfertaOrigem.SQL.Add('DELETE FROM PCOFERTAPROGRAMADAI');
    qryDeletaItemOfertaOrigem.SQL.Add('WHERE CODOFERTA = :CODOFERTAORIGEM');
    qryDeletaItemOfertaOrigem.SQL.Add('AND CODPROD = :CODPROD');
    qryDeletaItemOfertaOrigem.ParamByName('CODPROD').AsFloat := codprod;
    qryDeletaItemOfertaOrigem.ParamByName('CODOFERTAORIGEM').AsFloat := codofertaOrigem;


    try
      qryDeletaItemOfertaOrigem.ExecSQL; // Deleta itens da oferta.

      if not ofertaPossuiItens(codofertaOrigem) then
      begin

        try
          qry := TUniQuery.Create(nil);
          qry.Connection := dmLogin.Conexao;
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Add('DELETE FROM PCOFERTAPROGRAMADAC');
          qry.SQL.Add('WHERE PCOFERTAPROGRAMADAC.CODOFERTA = :CODOFERTA');
          qry.ParamByName('CODOFERTA').AsFloat:= codofertaOrigem;
          qry.ExecSQL;

        finally
          qry.Free;
        end;

      end;

      Result := true;
    except
      Result := false;
    end;

  finally
    qryDeletaItemOfertaOrigem.Free;
  end;

end;


procedure TDMOfertas.atualizaPrecoEntreFiliais;
var
  pOferta : Double;
  codBarras, vCodprod : Double;
  recnoAtual : Integer;
begin
  with Self.cdsPesquisaOfertasInseridos do begin

    codBarras := FieldByName('CODAUXILIAR').AsFloat;
    pOferta := FieldByName('POFERTA_ATAC').AsFloat;
    vCodprod := FieldByName('CODPROD').AsFloat;

    try
      recnoAtual := RecNo;
      DMOfertas.cdsPesquisaOfertasInseridos.DisableControls;
      First;

      while not Eof do
      begin

        if FieldByName('CODPROD').AsFloat = vCodprod then
        begin
          if FieldByName('POFERTA_ATAC').AsFloat <> pOferta then
          begin
            Edit;
            FieldByName('POFERTA_ATAC').AsFloat := pOferta;
          end;
        end;

        Next;
      end;

      RecNo := recnoAtual;
    finally
      DMOfertas.cdsPesquisaOfertasInseridos.EnableControls;
    end;
  end;
end;


function TDMOfertas.ofertaPossuiItens( codOferta : Double ): Boolean;
var
  qryBuscaItens : TuniQuery;
begin

  try
    qryBuscaItens := TUniQuery.Create(nil);
    qryBuscaItens.Connection := dmLogin.Conexao;

    qryBuscaItens.Close;
    qryBuscaItens.SQL.Clear;
    qryBuscaItens.SQL.Add('SELECT COUNT(*) AS QT FROM PCOFERTAPROGRAMADAI');
    qryBuscaItens.SQL.Add('WHERE CODOFERTA = :CODOFERTA');
    qryBuscaItens.ParamByName('CODOFERTA').AsFloat := codOferta;
    qryBuscaItens.Open;


    if qryBuscaItens.FieldByName('QT').AsInteger > 0 then
      Result := true
    else
      Result := false;

  finally
    qryBuscaItens.Free;
  end;

end;


function TDMOfertas.produtoTemVerbaNaOferta(codprod : Double; codoferta : Double): Boolean;
var
  qry : TuniQuery;
begin

  try
    qry := TUniQuery.Create(nil);
    qry.Connection := dmLogin.Conexao;

    //Valida produto de origem
    qry.SQL.Clear;
    qry.SQL.Add('SELECT COUNT(*) AS QT FROM PCOFERTAPROGRAMADAI X');
    qry.SQL.Add('WHERE X.CODOFERTA = :CODOFERTA');
    qry.SQL.Add('AND X.CODPROD = :CODPROD');
    qry.SQL.Add('AND NVL(X.VLUNITARIOVERBA,0) > 0');
    qry.ParamByName('CODPROD').AsFloat := codprod;
    qry.ParamByName('CODOFERTA').AsFloat := codoferta;
    qry.Open;

    if qry.FieldByName('QT').AsFloat > 0 then
      Result := true
    else
      Result := false;

  finally
    qry.Free;
  end;

end;

function TDMOfertas.produtoTemOfertaVigente(codprod: Double; dtini, dtfim : TDateTime; codfilial : String; pAbortar : boolean; pCodOferta : Integer): Double;
begin

  if (dmLogin.buscaParametroPorNome132('FIL_PRECOPOREMBALAGEM', codfilial) = 'S') then
  begin
    qrValidaItemJaEmOferta.Close;
    qrValidaItemJaEmOferta.ParamByName('DTINI').AsDate:=  dtini;
    qrValidaItemJaEmOferta.ParamByName('DTFIM').AsDate:=  dtfim;
    qrValidaItemJaEmOferta.ParamByName('CODFILIAL').AsString:= codfilial;
    qrValidaItemJaEmOferta.ParamByName('CODPROD').AsFloat:= codprod;
    qrValidaItemJaEmOferta.ParamByName('CODOFERTA').AsInteger:= pCodOferta;
    qrValidaItemJaEmOferta.Open;

    if qrValidaItemJaEmOferta.RecordCount > 0 then
    begin
        qrValidaItemJaEmOferta.First;
        DmLogin.MensagemInformacao('Produto ja se encontra em oferta vigente! '                     + #13 +
                                   'Codigo da filial: '            + qrValidaItemJaEmOferta.FieldByName('CODFILIAL').AsString  + #13 +
                                   'Codigo da oferta: '            + qrValidaItemJaEmOferta.FieldByName('CODOFERTA').AsString  + #13 +
                                   'Codigo interno do Produto: '   + qrValidaItemJaEmOferta.FieldByName('CODPROD').AsString    + #13 +
                                   'Codigo de Barras do Produto: ' + qrValidaItemJaEmOferta.FieldByName('CODAUXILIAR').AsString           + #13 +
                                   'Valor da Oferta: R$'           + qrValidaItemJaEmOferta.FieldByName('VALOR').AsString);

        Result := qrValidaItemJaEmOferta.FieldByName('CODOFERTA').AsFloat;

        if pAbortar then
          Abort;
    end;

    qrValidaOferta2017.Close;
    qrValidaOferta2017.ParamByName('DTINI').AsDate:=  dtini;
    qrValidaOferta2017.ParamByName('DTFIM').AsDate:=  dtfim;
    qrValidaOferta2017.ParamByName('CODFILIAL').AsString:= codfilial;
    qrValidaOferta2017.ParamByName('CODPROD').AsFloat:= codprod;
    qrValidaOferta2017.Open;

    if qrValidaOferta2017.RecordCount > 0 then
    begin
        qrValidaOferta2017.First;
        DmLogin.MensagemInformacao('Produto ja se encontra em oferta vigente na rotina 2017! '                     + #13 +
                                   'Codigo da filial: '            + qrValidaOferta2017.FieldByName('CODFILIAL').AsString  + #13 +
                                   'Rotina da oferta: 2017' + #13 +
                                   'Codigo interno do Produto: '   + qrValidaOferta2017.FieldByName('CODPROD').AsString    + #13 +
                                   'Codigo de Barras do Produto: ' + qrValidaOferta2017.FieldByName('CODAUXILIAR').AsString           + #13 +
                                   'Valor da Oferta: R$'           + qrValidaOferta2017.FieldByName('VALOR').AsString);

        Result := qrValidaOferta2017.FieldByName('CODOFERTA').AsFloat;

        if pAbortar then
          Abort;
    end
    else
      Result := 0;

  end
  else
  begin
    qryValidaJaEmPrecoFixo.Close;
    qryValidaJaEmPrecoFixo.ParamByName('DTINI').AsDate:=  dtini;
    qryValidaJaEmPrecoFixo.ParamByName('DTFIM').AsDate:=  dtfim;
    qryValidaJaEmPrecoFixo.ParamByName('CODFILIAL').AsString:= codfilial;
    qryValidaJaEmPrecoFixo.ParamByName('CODPROD').AsFloat:= codprod;
    qryValidaJaEmPrecoFixo.Open;

    if qryValidaJaEmPrecoFixo.RecordCount > 0 then
    begin
        qryValidaJaEmPrecoFixo.First;
        DmLogin.MensagemInformacao('Produto ja se encontra em oferta vigente! '                     + #13 +
                                   'Codigo da filial: '            + qryValidaJaEmPrecoFixo.FieldByName('CODFILIAL').AsString  + #13 +
                                   'Codigo da oferta: '            + qryValidaJaEmPrecoFixo.FieldByName('CODOFERTA').AsString  + #13 +
                                   'Codigo interno do Produto: '   + qryValidaJaEmPrecoFixo.FieldByName('CODPROD').AsString    + #13 +
                                   'Codigo de Barras do Produto: ' + qryValidaJaEmPrecoFixo.FieldByName('CODAUXILIAR').AsString           + #13 +
                                   'Valor da Oferta: R$'           + qryValidaJaEmPrecoFixo.FieldByName('VALOR').AsString);

        Result := qryValidaJaEmPrecoFixo.FieldByName('CODOFERTA').AsFloat;

        if pAbortar then
          Abort;
    end
    else
      Result := 0;
  end;

end;

function TDMOfertas.produtoTeveDezDiasDeOfertaOfertaUltimos30(codprod: Double; codfilial: string): Boolean;
var
  qr: TUniQuery;
begin
  qr := TUniQuery.Create(nil);
  with qr do
  begin
    Connection := dmLogin.Conexao;
    Close;
    SQL.Clear;
    SQL.Add('SELECT');
    SQL.Add('SUM(PCOFERTAPROGRAMADAC.dtfinal - PCOFERTAPROGRAMADAC.dtinicial) AS "QT"');
    SQL.Add('FROM PCOFERTAPROGRAMADAI, PCOFERTAPROGRAMADAC');
    SQL.Add('WHERE PCOFERTAPROGRAMADAC.CODOFERTA = PCOFERTAPROGRAMADAI.CODOFERTA');
    SQL.Add('AND PCOFERTAPROGRAMADAC.DTCANCEL IS NULL');
    SQL.Add('AND PCOFERTAPROGRAMADAI.CODPROD = :CODPROD');
    SQL.Add('AND (PCOFERTAPROGRAMADAC.DTINICIAL BETWEEN TRUNC(SYSDATE) - 30 AND TRUNC(SYSDATE))');
    SQL.Add('AND PCOFERTAPROGRAMADAC.CODFILIAL IN (:CODFILIAL)');
    ParamByName('CODPROD').AsFloat := codprod;
    ParamByName('CODFILIAL').AsString := codfilial;
    Open;

    if FieldByName('QT').AsFloat >= 10 then
      Result := True
    else
      Result := false;
  end;
end;

function TDMOfertas.tabloidePossuiVerba(codtabloide: Integer): Boolean;
var
  qr: TUniQuery;
begin
  qr := TUniQuery.Create(nil);

  try
    qr.Connection := dmLogin.Conexao;
    qr.Close;
    qr.SQL.Clear;
    qr.SQL.Add('SELECT COUNT(*) AS QT');
    qr.SQL.Add('FROM I9CONFIGVERBAOFERTA');
    qr.SQL.Add('WHERE CODOFERTA IN (SELECT CODOFERTA FROM PCOFERTAPROGRAMADAC WHERE CODTABLOIDE = :CODTABLOIDE)');
    qr.ParamByName('CODTABLOIDE').AsInteger := codtabloide;
    qr.Open;

    Result := (qr.fieldbyname('QT').asInteger > 0);
  finally

  end;
end;

function TDMOfertas.tabloideTemOfertaAprovada(codtabloide: Integer): Boolean;
var
  qr: TUniQuery;
begin
  qr := TUniQuery.Create(nil);

  try
    qr.Connection := dmLogin.Conexao;
    qr.Close;
    qr.SQL.Clear;
    qr.SQL.Add('SELECT COUNT(*) AS QT');
    qr.SQL.Add('FROM PCOFERTAPROGRAMADAC');
    qr.SQL.Add('WHERE PCOFERTAPROGRAMADAC.CODTABLOIDE = :CODTABLOIDE');
    qr.SQL.Add('AND PCOFERTAPROGRAMADAC.DTLIBERACAO IS NOT NULL');
    qr.ParamByName('CODTABLOIDE').AsInteger := codtabloide;
    qr.Open;

    Result := (qr.fieldbyname('QT').asInteger > 0);
  finally

  end;
end;

procedure TDMOfertas.atualizaVLVERBAMARGEMMIN;
var
  vValorVerbaMargemMinima : Double;
begin
  if (not cdsPesquisaOfertasInseridos.FieldByName('CUSTOFIN').IsNull) and
     (cdsPesquisaOfertasInseridos.FieldByName('CUSTOFIN').AsFloat > 0) then begin

      vValorVerbaMargemMinima:= getValorVerbaMargemMinima(cdsPesquisaOfertasInseridos.FieldByName('CUSTOFIN').AsFloat,
                                                          cdsPesquisaOfertasInseridos.FieldByName('POFERTA_ATAC').AsFloat,
                                                          cdsPesquisaOfertasInseridos.FieldByName('MARGEMMINIMA').AsFloat);


    cdsPesquisaOfertasInseridos.FieldByName('VLVERBAMARGEMMIN').AsFloat := vValorVerbaMargemMinima;
  end
  else
  begin
    cdsPesquisaOfertasInseridos.FieldByName('VLVERBAMARGEMMIN').AsFloat := 0;
  end;
end;

function TDMOfertas.buscaCusto(codprod: Double; codfilial: string): Double;
begin
  with qrAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PKG_I9UTILITARIO.BUSCACUSTO(:CODFILIAL, :CODPROD) AS CUSTO FROM DUAL');
    ParamByName('CODFILIAL').AsString := codfilial;
    ParamByName('CODPROD').AsFloat := codprod;
    Open;

    Result := FieldByName('CUSTO').Value;
  end;
end;



function TDMOfertas.verificaTipoVerbaOferta(tipoverba: string; codoferta: Double): Boolean;
begin
  with qrAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT(*) AS QT FROM I9CONFIGVERBAOFERTA ');
    SQL.Add('WHERE CODOFERTA = :CODOFERTA AND TIPOVERBA = :TIPOVERBA');
    ParamByName('CODOFERTA').AsFloat := codoferta;
    ParamByName('TIPOVERBA').AsString := tipoverba;
    Open;

    if FieldByName('QT').AsInteger > 0 then
      Result := true
    else
      Result := false;
  end;
end;

end.

