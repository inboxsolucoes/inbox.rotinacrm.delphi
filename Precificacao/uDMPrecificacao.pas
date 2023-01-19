unit uDMPrecificacao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS,
  DBAccess, Uni, Math, ComObj, ShellAPI, cxGridExportLink, cxGrid;

type
    TDMPrecificacao = class(TDataModule)
    qryEmbalagens: TUniQuery;
    dsEmbalagens: TDataSource;
    qryEmbalagensCODFILIAL: TStringField;
    qryEmbalagensDESCRICAO: TStringField;
    qryEmbalagensCODPRODPRINC: TIntegerField;
    qryEmbalagensSENSIBILIDADE: TStringField;
    qryEmbalagensCODAUXILIAR: TFloatField;
    qryEmbalagensQTUNIT: TFloatField;
    qryEmbalagensQTMINIMAATACADO: TFloatField;
    qryEmbalagensEMBALAGEM: TStringField;
    qryEmbalagensCUSTOFIN: TFloatField;
    qryEmbalagensPTABELA: TFloatField;
    qryEmbalagensPVENDA: TFloatField;
    qryEmbalagensPTABELAATAC: TFloatField;
    qryEmbalagensPVENDAATAC: TFloatField;
    qryEmbalagensPOSRANKING: TLargeintField;
    qryEmbalagensPERCVENDAVAREJO: TFloatField;
    qryEmbalagensPERCVENDAATAC: TFloatField;
    qryEmbalagensCUSTOMEDIOFAMILIA: TFloatField;
    qryEmbalagensDTULTENT: TDateTimeField;
    qryEmbalagensPSUGESTAO: TFloatField;
    qryEmbalagensPSUGESTAO_ATAC: TFloatField;
    qryEmbalagensPSUGESTAO_ARREDONDADO: TFloatField;
    qryEmbalagensPSUGESTAO_ATAC_ARREDONDADO: TFloatField;
    qryEmbalagensMARGEM_ATUAL_VAR: TFloatField;
    qryEmbalagensMARGEM_ATUAL_ATAC: TFloatField;
    qryEmbalagensMARGEM_FUT_VAR: TFloatField;
    qryEmbalagensMARGEM_FUT_ATAC: TFloatField;
    qryEmbalagensFATORPRECO: TFloatField;
    qryEmbalagensMARGEMVAREJO: TFloatField;
    qryEmbalagensMARGEMATAC: TFloatField;
    qryEmbalagensMARGEMMINVAREJO: TFloatField;
    qryEmbalagensMARGEMMINATAC: TFloatField;
    qryCustoMedio: TUniQuery;
    qryCustoMedioCODPROD: TIntegerField;
    qryCustoMedioDESCRICAO: TStringField;
    qryCustoMedioEMBALAGEM: TStringField;
    qryCustoMedioUNIDADE: TStringField;
    qryCustoMedioQTESTGER: TFloatField;
    qryCustoMedioTOTALESTOQUEFAMILIA: TFloatField;
    qryCustoMedioCUSTOREALATUAL: TFloatField;
    qryCustoMedioCUSTOREALANT: TFloatField;
    qryCustoMedioCUSTOREPATUAL: TFloatField;
    qryCustoMedioCUSTOREPANT: TFloatField;
    qryCustoMedioCUSTOREALSEMSTATUAL: TFloatField;
    qryCustoMedioCUSTOREALSEMSTANT: TFloatField;
    qryCustoMedioCUSTODOLARATUAL: TFloatField;
    qryCustoMedioCUSTODOLARANT: TFloatField;
    qryCustoMedioCUSTOFINATUAL: TFloatField;
    qryCustoMedioCUSTOFINANT: TFloatField;
    qryCustoMedioCUSTOCONT: TFloatField;
    dsCustoMedio: TDataSource;
    qryEmbalagensDIFSUGESTAO: TFloatField;
    qryEmbalagensDIFSUGESTAOATAC: TFloatField;
    qryEmbalagensCODFUNCALTPTABELA: TIntegerField;
    qryEmbalagensQTESTGER: TFloatField;
    qryEmbalagensQTULTENT: TFloatField;
    qryEmbalagensPRECO_ATUAL_VAREJO: TFloatField;
    qryEmbalagensPRECO_ATUAL_ATACADO: TFloatField;
    qryEmbalagensPRECOFIXO: TStringField;
    qryCustoMedioCODFILIAL: TStringField;
    qryEmbalagensPVENDACONCORRENTE: TFloatField;
    qryEmbalagensPVENDAATACCONCORRENTE: TFloatField;
    qryEmbalagensDATAULTIMACOTACAO: TDateTimeField;
    qryEmbalagensPRECOATUALCRM: TFloatField;
    qryEmbalagensCODPROD: TFloatField;
    qryEmbalagensCUSTODIF: TStringField;
    qryCustoMedioCluster: TUniQuery;
    dsCustoMedioCluster: TDataSource;
    qryCustoMedioClusterCODPROD: TIntegerField;
    qryCustoMedioClusterDESCRICAO: TStringField;
    qryCustoMedioClusterEMBALAGEM: TStringField;
    qryCustoMedioClusterUNIDADE: TStringField;
    qryCustoMedioClusterCODFILIAL: TStringField;
    qryCustoMedioClusterQTESTGER: TFloatField;
    qryCustoMedioClusterTOTALESTOQUEFAMILIA: TFloatField;
    qryCustoMedioClusterCUSTOREALANT: TFloatField;
    qryCustoMedioClusterCUSTOREPANT: TFloatField;
    qryCustoMedioClusterCUSTOREALSEMSTANT: TFloatField;
    qryCustoMedioClusterCUSTODOLARANT: TFloatField;
    qryCustoMedioClusterCUSTOFINANT: TFloatField;
    qryCustoMedioClusterCUSTOCONT: TFloatField;
    qryCustoMedioClusterCUSTOFINATUAL: TFloatField;
    qryCustoMedioClusterCUSTODOLARATUAL: TFloatField;
    qryCustoMedioClusterCUSTOREALSEMSTATUAL: TFloatField;
    qryCustoMedioClusterCUSTOREPATUAL: TFloatField;
    qryCustoMedioClusterCUSTOREALATUAL: TFloatField;
    qryEmbCluster: TUniQuery;
    qryEmbClusterCODPROD: TFloatField;
    qryEmbClusterDESCRICAO: TStringField;
    qryEmbClusterCODPRODPRINC: TIntegerField;
    qryEmbClusterSENSIBILIDADE: TStringField;
    qryEmbClusterCODAUXILIAR: TFloatField;
    qryEmbClusterQTUNIT: TFloatField;
    qryEmbClusterQTMINIMAATACADO: TFloatField;
    qryEmbClusterFATORPRECO: TFloatField;
    qryEmbClusterEMBALAGEM: TStringField;
    qryEmbClusterCUSTOFIN: TFloatField;
    qryEmbClusterPTABELA: TFloatField;
    qryEmbClusterPVENDA: TFloatField;
    qryEmbClusterPTABELAATAC: TFloatField;
    qryEmbClusterPVENDAATAC: TFloatField;
    qryEmbClusterPOSRANKINGCLUSTER: TLargeintField;
    qryEmbClusterDTULTENT: TDateTimeField;
    qryEmbClusterQTULTENT: TFloatField;
    qryEmbClusterQTESTGER: TFloatField;
    qryEmbClusterPRECO_ATUAL_VAREJO: TFloatField;
    qryEmbClusterPRECO_ATUAL_ATACADO: TFloatField;
    qryEmbClusterDIFSUGESTAO: TFloatField;
    qryEmbClusterDIFSUGESTAOATAC: TFloatField;
    qryEmbClusterPSUGESTAO: TFloatField;
    qryEmbClusterPSUGESTAO_ATAC: TFloatField;
    qryEmbClusterPSUGESTAO_ARREDONDADO: TFloatField;
    qryEmbClusterPSUGESTAO_ATAC_ARREDONDADO: TFloatField;
    qryEmbClusterMARGEM_ATUAL_VAR: TFloatField;
    qryEmbClusterMARGEM_ATUAL_ATAC: TFloatField;
    qryEmbClusterMARGEM_FUT_VAR: TFloatField;
    qryEmbClusterMARGEM_FUT_ATAC: TFloatField;
    qryEmbClusterMARGEMVAREJO: TFloatField;
    qryEmbClusterMARGEMATAC: TFloatField;
    qryEmbClusterMARGEMMINVAREJO: TFloatField;
    qryEmbClusterMARGEMMINATAC: TFloatField;
    qryEmbClusterPVENDACONCORRENTE: TFloatField;
    qryEmbClusterPVENDAATACCONCORRENTE: TFloatField;
    qryEmbClusterDATAULTIMACOTACAO: TDateTimeField;
    qryEmbClusterPRECOFIXO: TStringField;
    qryEmbClusterPRECOATUALCRM: TFloatField;
    qryEmbClusterCUSTODIF: TStringField;
    dsEmbCluster: TDataSource;
    qryEmbClusterCODGRUPO: TStringField;
    qryEmbalagensPERVARIACAOPTABELA: TFloatField;
    qryEmbClusterPERVARIACAOPTABELA: TFloatField;
    procedure qryEmbalagensAfterPost(DataSet: TDataSet);
    procedure qryEmbalagensPTABELAChange(Sender: TField);
    procedure qryEmbalagensPVENDAChange(Sender: TField);
    procedure qryEmbalagensPTABELAATACChange(Sender: TField);
    procedure qryEmbalagensPVENDAATACChange(Sender: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure qryEmbalagensQTMINIMAATACADOChange(Sender: TField);
    procedure qryEmbalagensFATORPRECOChange(Sender: TField);
    procedure qryEmbalagensMARGEMVAREJOChange(Sender: TField);
    procedure qryEmbalagensMARGEMMINVAREJOChange(Sender: TField);
    procedure qryEmbalagensMARGEMMINATACChange(Sender: TField);
    procedure qryEmbalagensMARGEMATACChange(Sender: TField);
    procedure qryEmbalagensPRECOFIXOChange(Sender: TField);
    procedure qryEmbalagensPTABELACRMChange(Sender: TField);
    procedure qryEmbalagensPVENDACRMChange(Sender: TField);
    procedure qryEmbClusterAfterPost(DataSet: TDataSet);
    procedure qryEmbClusterQTMINIMAATACADOChange(Sender: TField);
    procedure qryEmbClusterPTABELAChange(Sender: TField);
    procedure qryEmbClusterPVENDAChange(Sender: TField);
    procedure qryEmbClusterPTABELAATACChange(Sender: TField);
    procedure qryEmbClusterPVENDAATACChange(Sender: TField);
    procedure qryEmbClusterMARGEMVAREJOChange(Sender: TField);
    procedure qryEmbClusterMARGEMATACChange(Sender: TField);
    procedure qryEmbClusterMARGEMMINVAREJOChange(Sender: TField);
    procedure qryEmbClusterMARGEMMINATACChange(Sender: TField);
    procedure qryEmbClusterPRECOFIXOChange(Sender: TField);
  private
    { Private declarations }
    procedure replicarPrecoTabelaAutomatico(pAtacado:boolean=false);
    procedure replicarPrecoTabelaAutomaticoCluster(pAtacado:boolean=false);
    procedure replicarPrecoVendaAutomatico;
    procedure replicarPrecoVendaAutomaticoCluster;
    procedure replicarPrecoTabelaCRM;
    procedure replicarPrecoVendaCRM;
    procedure replicarQtMinAtacado;
    procedure replicarQtMinAtacadoCluster;
    procedure replicarFatorPreco;
    procedure AlterarMargem(pCampoMargem:String);
    procedure AlterarMargemCluster(pCampoMargem:String);
    function getDiferencaEntreMargens(pValor1, pValor2: Double): double;
    procedure replicarPrecoFixo;
    procedure replicarPrecoFixoCluster;
  public
    { Public declarations }
    function getMargem(pCusto:Double;pPrecoVenda:Double):Double;
    function getMargemEmbalagem(pValor1:Double):double;
    procedure CarregarParametros;
    procedure aplicarPrecoSugerido;
    procedure NaoAtualizarGrid(pNaoAtualizar:Boolean);
    procedure aplicarPrecoSugeridoConcorrente;
    function getFiliaisPermitidas: TStringList;
    function getFilialSelecionada: String;
    function getPrecoArredondado(pPreco:double): double;
    function getPercentualSugConcorrente: double;
    function ProdutoPossuiFamilia(pCodProd:Integer):Boolean;
    procedure AplicarCustoMedioFamilia;
    procedure AplicarCustoMedioCluster;
    function exportarGridExcel(grid: TcxGrid) : Boolean;
    function existemProdutosSemComprador : Integer;
    procedure recalcularPrecoCRM(pCodfilial, pCodAuxiliar: String);
    procedure recalcularPrecoCRMCluster(pCodGrupo:Integer; pCodAuxiliar: String);
  end;

var
  DMPrecificacao: TDMPrecificacao;
  naoAtualiza:Boolean=false;
  pREPLICAPTABELAFAMILIA:Boolean;
  pREPLICAPTABELAFILIAIS:Boolean;
  pREPLICAPTABELAEMBALAGEM:Boolean;
  pREPLICAPVENDAFAMILIA:Boolean;
  pREPLICAPVENDAFILIAIS:Boolean;
  pREPLICAPVENDAEMBALAGEM:Boolean;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uLogin, ufrmPrecificacao;

{$R *.dfm}


procedure TDMPrecificacao.AlterarMargemCluster(pCampoMargem: String);
var
  qrReplicarMargem : TUniQuery;
  precoUnitario : Double;
begin
    try
    qrReplicarMargem := TUniQuery.Create(nil);
    qrReplicarMargem.Connection := DmLogin.Conexao;
    qrReplicarMargem.Close;
    qrReplicarMargem.SQL.Clear;

    qrReplicarMargem.SQL.Add('UPDATE PCCLASSIFICMERC SET ' + pCampoMargem + ' = :CAMPOMARGEM');
    qrReplicarMargem.SQL.Add('WHERE CODPROD = :CODPROD');
    qrReplicarMargem.SQL.Add('AND CODFILIAL IN (SELECT CODFILIAL FROM I9GRUPOFILIALI WHERE CODGRUPO = :CODGRUPO)');

    qrReplicarMargem.ParamByName('CAMPOMARGEM').AsFloat := qryEmbCluster.FIeldByName(pCampoMargem).AsFloat;
    qrReplicarMargem.ParamByName('CODPROD').AsInteger := qryEmbCluster.FIeldByName('CODPROD').AsInteger;
    qrReplicarMargem.ParamByName('CODGRUPO').AsInteger := qryEmbCluster.FIeldByName('CODGRUPO').AsInteger;
    qrReplicarMargem.ExecSQL;

  finally
    qrReplicarMargem.Close;
    qrReplicarMargem.Free;
  end;
end;

procedure TDMPrecificacao.AplicarCustoMedioCluster;
var
  PosicaoRegistros: TBookmark;
  qrAplicarCusto : TUniQuery;
begin

  qrAplicarCusto := TUniQuery.Create(nil);
  qrAplicarCusto.Connection := DmLogin.Conexao;

  try

    qryCustoMedioCluster.Close;
    qryCustoMedioCluster.RestoreSQL;
    qryCustoMedioCluster.ParamByName('CODGRUPO').AsInteger := qryEmbCluster.FieldByName('CODGRUPO').AsInteger;
    qryCustoMedioCluster.ParamByName('CODPRODPRINC').AsInteger := qryEmbCluster.FieldByName('CODPRODPRINC').AsInteger;
    qryCustoMedioCluster.Open;

    while not qryCustoMedioCluster.Eof do
    begin
      qrAplicarCusto.Close;
      qrAplicarCusto.SQL.Clear;
      qrAplicarCusto.SQL.Add('UPDATE PCEST                                  ');
      qrAplicarCusto.SQL.Add('   SET CUSTOFIN       = :CUSTOFIN             ');
      qrAplicarCusto.SQL.Add('     , CUSTOREAL      = :CUSTOREAL            ');
      qrAplicarCusto.SQL.Add('     , CUSTOREP       = :CUSTOREP             ');
      qrAplicarCusto.SQL.Add('     , CUSTOREALSEMST = :CUSTOREALSEMST       ');
      qrAplicarCusto.SQL.Add('     , CUSTODOLAR     = :CUSTODOLAR           ');
      qrAplicarCusto.SQL.Add('WHERE PCEST.CODPROD   = :CODPROD              ');
      qrAplicarCusto.SQL.Add('  AND PCEST.CODFILIAL = :CODFILIAL            ');


      if qryCustoMedioClusterCUSTOFINATUAL.AsFloat < 0 then
        qrAplicarCusto.ParamByName('CUSTOFIN').AsFloat  := 0
      else
        qrAplicarCusto.ParamByName('CUSTOFIN').AsFloat  := qryCustoMedioClusterCUSTOFINATUAL.AsFloat;

      if qryCustoMedioClusterCUSTOREALATUAL.AsFloat < 0 then
        qrAplicarCusto.ParamByName('CUSTOREAL').AsFloat  := 0
      else
        qrAplicarCusto.ParamByName('CUSTOREAL').AsFloat  := qryCustoMedioClusterCUSTOREALATUAL.AsFloat;

      if qryCustoMedioClusterCUSTOREALSEMSTATUAL.AsFloat < 0 then
        qrAplicarCusto.ParamByName('CUSTOREALSEMST').AsFloat  := 0
      else
        qrAplicarCusto.ParamByName('CUSTOREALSEMST').AsFloat  := qryCustoMedioClusterCUSTOREALSEMSTATUAL.AsFloat;

      if qryCustoMedioClusterCUSTOREPATUAL.AsFloat < 0 then
        qrAplicarCusto.ParamByName('CUSTOREP').AsFloat  := 0
      else
        qrAplicarCusto.ParamByName('CUSTOREP').AsFloat  := qryCustoMedioClusterCUSTOREPATUAL.AsFloat;

      if qryCustoMedioClusterCUSTODOLARATUAL.AsFloat < 0 then
        qrAplicarCusto.ParamByName('CUSTODOLAR').AsFloat  := 0
      else
        qrAplicarCusto.ParamByName('CUSTODOLAR').AsFloat  := qryCustoMedioClusterCUSTODOLARATUAL.AsFloat;

      qrAplicarCusto.ParamByName('CODPROD').AsFloat  := qryCustoMedioClusterCODPROD.AsInteger;
      qrAplicarCusto.ParamByName('CODFILIAL').AsString  := qryCustoMedioClusterCODFILIAL.AsString;
      qrAplicarCusto.ExecSQL;

      qryCustoMedioCluster.Next;
    end;


  finally
    qryCustoMedioCluster.Close;
    qrAplicarCusto.Close;
  end;
end;

procedure TDMPrecificacao.AplicarCustoMedioFamilia;
var
  PosicaoRegistros: TBookmark;
  qrAplicarCusto : TUniQuery;
begin
  if not ProdutoPossuiFamilia(qryEmbalagens.FieldByName('CODPROD').AsInteger) then
  begin
    Exit;
  end;

  qrAplicarCusto := TUniQuery.Create(nil);
  qrAplicarCusto.Connection := DmLogin.Conexao;

  try
      qryCustoMedio.Close;
      qryCustoMedio.RestoreSQL;
      qryCustoMedio.AddWhere('PCEST.CODFILIAL IN ('+ frmPrecificacao.getFiliaisSelecionadas +')');
      qryCustoMedio.ParamByName('CODPRODPRINC').AsInteger := qryEmbalagens.FieldByName('CODPRODPRINC').AsInteger;
      qryCustoMedio.Open;

      qryCustoMedio.First;

      while not qryCustoMedio.Eof do
      begin
        qrAplicarCusto.Close;
        qrAplicarCusto.SQL.Clear;
        qrAplicarCusto.SQL.Add('UPDATE PCEST                                                                 ');
        qrAplicarCusto.SQL.Add('   SET CUSTOFIN       = :CUSTOFIN                                            ');
        qrAplicarCusto.SQL.Add('     , CUSTOREAL      = :CUSTOREAL                                           ');
        qrAplicarCusto.SQL.Add('     , CUSTOREP       = :CUSTOREP                                            ');
        qrAplicarCusto.SQL.Add('     , CUSTOREALSEMST = :CUSTOREALSEMST                                      ');
        qrAplicarCusto.SQL.Add('     , CUSTODOLAR     = :CUSTODOLAR                                          ');
        qrAplicarCusto.SQL.Add('WHERE PCEST.CODPROD IN ( SELECT CODPROD                                      ');
        qrAplicarCusto.SQL.Add('                           FROM PCPRODUT                                     ');
        qrAplicarCusto.SQL.Add('                          WHERE NVL(CODPRODPRINC, CODPROD) = :CODPRODPRINC ) ');
        qrAplicarCusto.SQL.Add('  AND PCEST.CODFILIAL = :CODFILIAL                                           ');


        if qryCustoMedioCUSTOFINATUAL.AsFloat < 0 then
          qrAplicarCusto.ParamByName('CUSTOFIN').AsFloat  := 0
        else
          qrAplicarCusto.ParamByName('CUSTOFIN').AsFloat  := qryCustoMedioCUSTOFINATUAL.AsFloat;

        if qryCustoMedioCUSTOREALATUAL.AsFloat < 0 then
          qrAplicarCusto.ParamByName('CUSTOREAL').AsFloat  := 0
        else
          qrAplicarCusto.ParamByName('CUSTOREAL').AsFloat  := qryCustoMedioCUSTOREALATUAL.AsFloat;

        if qryCustoMedioCUSTOREALSEMSTATUAL.AsFloat < 0 then
          qrAplicarCusto.ParamByName('CUSTOREALSEMST').AsFloat  := 0
        else
          qrAplicarCusto.ParamByName('CUSTOREALSEMST').AsFloat  := qryCustoMedioCUSTOREALSEMSTATUAL.AsFloat;

        if qryCustoMedioCUSTOREPATUAL.AsFloat < 0 then
          qrAplicarCusto.ParamByName('CUSTOREP').AsFloat  := 0
        else
          qrAplicarCusto.ParamByName('CUSTOREP').AsFloat  := qryCustoMedioCUSTOREPATUAL.AsFloat;

        if qryCustoMedioCUSTODOLARATUAL.AsFloat < 0 then
          qrAplicarCusto.ParamByName('CUSTODOLAR').AsFloat  := 0
        else
          qrAplicarCusto.ParamByName('CUSTODOLAR').AsFloat  := qryCustoMedioCUSTODOLARATUAL.AsFloat;

        qrAplicarCusto.ParamByName('CODPRODPRINC').AsFloat  := qryEmbalagens.FieldByName('CODPRODPRINC').AsInteger;
        qrAplicarCusto.ParamByName('CODFILIAL').AsString  := qryCustoMedioCODFILIAL.AsString;
        qrAplicarCusto.ExecSQL;

        qryCustoMedio.Next;
      end;

  finally
    qryCustoMedio.Close;
    qrAplicarCusto.Close;
  end;
end;


procedure TDMPrecificacao.aplicarPrecoSugerido;
begin

end;

procedure TDMPrecificacao.aplicarPrecoSugeridoConcorrente;
begin

end;

procedure TDMPrecificacao.CarregarParametros;
begin
  pREPLICAPTABELAFAMILIA := (DmLogin.buscaParametroI9('REPLICAPTABELAFAMILIA') = 'S');
  pREPLICAPTABELAFILIAIS := (DmLogin.buscaParametroI9('REPLICAPTABELAFILIAIS') = 'S');
  pREPLICAPTABELAEMBALAGEM := (DmLogin.buscaParametroI9('REPLICAPTABELAEMBALAGEM') = 'S');
  pREPLICAPVENDAFAMILIA := (DmLogin.buscaParametroI9('REPLICAPVENDAFAMILIA') = 'S');
  pREPLICAPVENDAFILIAIS := (DmLogin.buscaParametroI9('REPLICAPVENDAFILIAIS') = 'S');
  pREPLICAPVENDAEMBALAGEM := (DmLogin.buscaParametroI9('REPLICAPVENDAEMBALAGEM') = 'S');
end;

procedure TDMPrecificacao.DataModuleCreate(Sender: TObject);
begin
  CarregarParametros;
end;

function TDMPrecificacao.existemProdutosSemComprador: Integer;
var
  qr : TUniQuery;
begin
  try
    qr := TUniQuery.Create(nil);
    qr.Connection:= dmLogin.Conexao;
    qr.Close;
    qr.SQL.Clear;
    qr.SQL.Add('SELECT COUNT(*) AS QT FROM PCPRODFILIAL WHERE PCPRODFILIAL.CODCOMPRADOR IS NULL');
    qr.Open;
    Result := qr.FieldByName('QT').AsInteger;
  finally
    qr := nil;
  end;
end;

function TDMPrecificacao.exportarGridExcel(grid: TcxGrid): Boolean;
var
  caminhoDesktop : String;
begin
   caminhoDesktop:= DmLogin.getCaminhoDesktopUsuario;
   ExportGridToExcel(caminhoDesktop + '\TabelaPrecos',grid, False);
   dmLogin.i9gravaLogExportExcel('PRECIFICACAO');
   Result := True;
end;

function TDMPrecificacao.getMargem(pCusto, pPrecoVenda: Double): Double;
var
 qrMargem : TUniQuery;
begin

  try
    qrMargem := TUniQuery.Create(nil);
    qrMargem.Connection := DmLogin.Conexao;
    qrMargem.Close;
    qrMargem.SQL.Clear;
    qrMargem.SQL.Add('SELECT PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(:VALOR, :CUSTO) MARGEM FROM DUAL');
    qrMargem.ParamByName('VALOR').AsFloat := pPrecoVenda;
    qrMargem.ParamByName('CUSTO').AsFloat := pCusto;
    qrMargem.Open;

    Result := qrMargem.FieldByName('MARGEM').AsFloat;

  finally
    qrMargem.Close;
    qrMargem.Free;
  end;
end;

function TDMPrecificacao.getMargemEmbalagem(pValor1: Double): double;
var
 qrMargem : TUniQuery;
begin

  try
    qrMargem := TUniQuery.Create(nil);
    qrMargem.Connection := DmLogin.Conexao;
    qrMargem.Close;
    qrMargem.SQL.Clear;
    qrMargem.SQL.Add('SELECT PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(:VALOR, PKG_I9UTILITARIO.BUSCACUSTO(:CODFILIAL, :CODPROD) * :QTUNIT) MARGEM FROM DUAL');
    qrMargem.ParamByName('VALOR').AsFloat := pValor1;
    qrMargem.ParamByName('CODFILIAL').AsString := qryEmbalagens.FieldByName('CODFILIAL').AsString;
    qrMargem.ParamByName('CODPROD').AsInteger := qryEmbalagens.FieldByName('CODPROD').AsInteger;
    qrMargem.ParamByName('QTUNIT').AsFloat := qryEmbalagens.FieldByName('QTUNIT').AsFloat;
    qrMargem.Open;

    Result := qrMargem.FieldByName('MARGEM').AsFloat;

  finally
    qrMargem.Close;
    qrMargem.Free;
  end;
end;

function TDMPrecificacao.getDiferencaEntreMargens(pValor1: Double; pValor2: Double): double;
var
 qrMargem : TUniQuery;
begin

  try
    qrMargem := TUniQuery.Create(nil);
    qrMargem.Connection := DmLogin.Conexao;
    qrMargem.Close;
    qrMargem.SQL.Clear;
    qrMargem.SQL.Add('SELECT PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(:VALOR1, :VALOR2) MARGEM FROM DUAL');
    qrMargem.ParamByName('VALOR1').AsFloat := pValor1;
    qrMargem.ParamByName('VALOR2').AsFloat := pValor2;
    qrMargem.Open;

    Result := qrMargem.FieldByName('MARGEM').AsFloat;

  finally
    qrMargem.Close;
    qrMargem.Free;
  end;
end;

procedure TDMPrecificacao.recalcularPrecoCRM(pCodfilial: String; pCodAuxiliar: String);
var
 qrRecalcular : TUniQuery;
begin
  try
    qrRecalcular := TUniQuery.Create(nil);
    qrRecalcular.Connection := DmLogin.Conexao;
    qrRecalcular.Close;
    qrRecalcular.SQL.Clear;
    qrRecalcular.SQL.Add('BEGIN ');
    qrRecalcular.SQL.Add('PKG_I9CLUBECRM.RECALCULARPRECOCRM(:CODFILIAL, :CODAUXILIAR); ');
    qrRecalcular.SQL.Add('END; ');
    qrRecalcular.ParamByName('CODFILIAL').AsString := pCodfilial;
    qrRecalcular.ParamByName('CODAUXILIAR').AsString := pCodAuxiliar;
    qrRecalcular.ExecSQL;;
  finally
    qrRecalcular.Close;
    qrRecalcular.Free;
  end;
end;

procedure TDMPrecificacao.recalcularPrecoCRMCluster(pCodGrupo: Integer; pCodAuxiliar: String);
var
 qrLoop : TUniQuery;
 qrRecalcular : TUniQuery;
begin
  try
    qrRecalcular := TUniQuery.Create(nil);
    qrRecalcular.Connection := DmLogin.Conexao;

    qrLoop := TUniQuery.Create(nil);
    qrLoop.Connection := DmLogin.Conexao;

    qrLoop.Close;
    qrLoop.SQL.Clear;
    qrLoop.SQL.Add('SELECT CODFILIAL FROM I9GRUPOFILIALI WHERE CODGRUPO = :CODGRUPO');
    qrLoop.ParamByName('CODGRUPO').AsInteger := pCodGrupo;
    qrLoop.Open;
    qrLoop.First;

    while not qrLoop.Eof do
    begin
      qrRecalcular.Close;
      qrRecalcular.SQL.Clear;
      qrRecalcular.SQL.Add('BEGIN ');
      qrRecalcular.SQL.Add('PKG_I9CLUBECRM.RECALCULARPRECOCRM(:CODFILIAL, :CODAUXILIAR); ');
      qrRecalcular.SQL.Add('END; ');
      qrRecalcular.ParamByName('CODFILIAL').AsString := qrLoop.FieldByName('CODFILIAL').AsString;
      qrRecalcular.ParamByName('CODAUXILIAR').AsString := pCodAuxiliar;
      qrRecalcular.ExecSQL;;
      qrLoop.Next;
    end;

  finally
    qrLoop.Close;
    qrLoop.Free;
    qrRecalcular.Close;
    qrRecalcular.Free;
  end;
end;

function TDMPrecificacao.getPercentualSugConcorrente: double;
begin
  try
    Result := StrToFloat(DmLogin.buscaParametroI9('PERCSUGESTPRECOCONCORRENCIA'));
  except
    Result := 0;
  end;
end;

function TDMPrecificacao.getPrecoArredondado(pPreco:double): double;
var
  qryArredondar:TUniQuery;
begin
  try
    qryArredondar := TUniQuery.Create(nil);
    qryArredondar.Connection := DmLogin.Conexao;
    qryArredondar.Close;
    qryArredondar.SQL.Add('SELECT PKG_I9UTILITARIO.ARREDONDAR_PRECO(:PRECO) AS PRECO_ARREDONDADO FROM DUAL');
    qryArredondar.ParamByName('PRECO').AsFloat := pPreco;
    qryArredondar.Open;

    Result := qryArredondar.FieldByName('PRECO_ARREDONDADO').AsFloat;

  finally
    qryArredondar.Free;
  end;
end;

procedure TDMPrecificacao.NaoAtualizarGrid(pNaoAtualizar: Boolean);
begin
  naoAtualiza := pNaoAtualizar;
end;

function TDMPrecificacao.ProdutoPossuiFamilia(pCodProd: Integer): Boolean;
var
  qryFamilia:TUniQuery;
begin

  try
    qryFamilia := TUniQuery.Create(nil);
    qryFamilia.Connection := DmLogin.Conexao;
    qryFamilia.Close;

    qryFamilia.SQL.Add('SELECT COUNT(*) TOTAL FROM PCPRODUT WHERE PCPRODUT.CODPRODPRINC IN (SELECT CODPRODPRINC FROM PCPRODUT WHERE CODPROD = :CODPROD)');
    qryFamilia.ParamByName('CODPROD').AsInteger := pCodProd;
    qryFamilia.Open;

    Result := qryFamilia.FieldByName('TOTAL').AsInteger > 1;

  finally
    qryFamilia.Free;
  end;

end;

procedure TDMPrecificacao.qryEmbalagensAfterPost(DataSet: TDataSet);
var
  Codprod:Integer;
  CodprodPrinc:Integer;
  PTabela:Double;
  CodAuxiliar:String;
begin

  if naoAtualiza then
    Exit;

  Codprod := qryEmbalagens.FieldByName('CODPROD').AsInteger;
  CodprodPrinc := qryEmbalagens.FieldByName('CODPRODPRINC').AsInteger;
  PTabela := qryEmbalagens.FieldByName('PTABELA').AsInteger;
  CodAuxiliar := qryEmbalagens.FieldByName('CODAUXILIAR').AsString;

  //qryEmbalagens.Refresh;
  //qryEmbalagens.Locate('CODAUXILIAR',CodAuxiliar,[]);

  try
    qryEmbalagens.Filtered := False;
    qryEmbalagens.Filter := EmptyStr;
    qryEmbalagens.Filtered := True;

    qryEmbalagens.Filtered := False;
    qryEmbalagens.Filter := 'CODPROD = ' + IntToStr(Codprod);
    qryEmbalagens.Filtered := True;

    while not qryEmbalagens.Eof do
    begin
      if (Codprod = qryEmbalagens.FieldByName('CODPROD').AsInteger) then
      begin
        qryEmbalagens.RefreshRecord;
      end;

      qryEmbalagens.Next;
    end;

    qryEmbalagens.Filtered := False;
    qryEmbalagens.Filter := EmptyStr;
    qryEmbalagens.Filtered := True;

    qryEmbalagens.Filtered := False;
    qryEmbalagens.Filter := 'CODPRODPRINC = ' + IntToStr(CodprodPrinc);
    qryEmbalagens.Filtered := True;

    qryEmbalagens.First;

    while not qryEmbalagens.Eof do
    begin

      if (CodprodPrinc = qryEmbalagens.FieldByName('CODPRODPRINC').AsInteger) then
      begin
        qryEmbalagens.RefreshRecord;
      end;

      qryEmbalagens.Next;
    end;

  finally
    qryEmbalagens.Filtered := False;
    qryEmbalagens.Filter := EmptyStr;
    qryEmbalagens.Filtered := True;
    qryEmbalagens.Locate('CODAUXILIAR',CodAuxiliar,[]);
  end;

end;


procedure TDMPrecificacao.qryEmbalagensFATORPRECOChange(Sender: TField);
begin
  replicarFatorPreco;
end;

procedure TDMPrecificacao.AlterarMargem(pCampoMargem:string);
var
  qrReplicarMargem : TUniQuery;
  precoUnitario : Double;
begin
    try
    qrReplicarMargem := TUniQuery.Create(nil);
    qrReplicarMargem.Connection := DmLogin.Conexao;
    qrReplicarMargem.Close;
    qrReplicarMargem.SQL.Clear;

    qrReplicarMargem.SQL.Add('UPDATE PCCLASSIFICMERC SET ' + pCampoMargem + ' = :CAMPOMARGEM');
    qrReplicarMargem.SQL.Add('WHERE CODPROD = :CODPROD');

    qrReplicarMargem.ParamByName('CAMPOMARGEM').AsFloat := qryEmbalagens.FIeldByName(pCampoMargem).AsFloat;
    qrReplicarMargem.ParamByName('CODPROD').AsInteger := qryEmbalagens.FIeldByName('CODPROD').AsInteger;
    qrReplicarMargem.SQL.Add('AND CODFILIAL IN (' + frmPrecificacao.getFiliaisSelecionadas + ')');

    qrReplicarMargem.ExecSQL;

  finally
    qrReplicarMargem.Close;
    qrReplicarMargem.Free;
  end;
end;

procedure TDMPrecificacao.qryEmbalagensMARGEMATACChange(Sender: TField);
begin
  AlterarMargem('MARGEMATAC');
end;

procedure TDMPrecificacao.qryEmbalagensMARGEMMINATACChange(Sender: TField);
begin
  AlterarMargem('MARGEMMINATAC');
end;

procedure TDMPrecificacao.qryEmbalagensMARGEMMINVAREJOChange(Sender: TField);
begin
  AlterarMargem('MARGEMMINVAREJO');
end;

procedure TDMPrecificacao.qryEmbalagensMARGEMVAREJOChange(Sender: TField);
begin
  AlterarMargem('MARGEMVAREJO');
end;

procedure TDMPrecificacao.qryEmbalagensPRECOFIXOChange(Sender: TField);
{var
 vbTeste : string;
 qrUpdatePrecoFIxo : TUniQuery;}
begin
  replicarPrecoFixo;
 {qrUpdatePrecoFIxo :=  TUniQuery.Create(nil);

  try
    DmLogin.Conexao.StartTransaction;
    qrUpdatePrecoFIxo.Connection := DmLogin.Conexao;
    qrUpdatePrecoFIxo.SQL.Add('UPDATE PCEMBALAGEM SET PRECOFIXO = :PRECOFIXO WHERE CODAUXILIAR = :CODAUXILIAR AND CODFILIAL = :CODFILIAL');
    qrUpdatePrecoFIxo.ParamByName('PRECOFIXO').AsString := qryEmbalagensPRECOFIXO.AsString;
    qrUpdatePrecoFIxo.ParamByName('CODAUXILIAR').AsString := qryEmbalagensCODAUXILIAR.AsString;
    qrUpdatePrecoFIxo.ParamByName('CODFILIAL').AsString := qryEmbalagensCODFILIAL.AsString;
    qrUpdatePrecoFIxo.Execute;
    DmLogin.Conexao.Commit;
  finally
   qrUpdatePrecoFIxo.Free;
  end;}
end;

procedure TDMPrecificacao.qryEmbalagensPTABELAATACChange(Sender: TField);
var
  vMargemPrecoDigitado:Double;
begin

  //Validar a margem minima somente se o preço de tabela for diferente do preço sugerido arredondado
  if qryEmbalagens.FieldByName('PTABELAATAC').AsFloat <> qryEmbalagens.FieldByName('PSUGESTAO_ATAC_ARREDONDADO').AsFloat then
  begin

    vMargemPrecoDigitado := getMargemEmbalagem(qryEmbalagens.FieldByName('PTABELAATAC').AsFloat);

    if (vMargemPrecoDigitado < qryEmbalagensMARGEMMINATAC.AsFloat)
    and not DmLogin.validaPermissao530(6) then
    begin
      dmLogin.MensagemInformacao('Usuário não possuí permissão para precificar abaixo da margem mínima.');
      Sender.NewValue := Sender.OldValue;
      Exit;
    end;

    if (getDiferencaEntreMargens(qryEmbalagens.FieldByName('PTABELAATAC').AsFloat, qryEmbalagensPSUGESTAO_ATAC_ARREDONDADO.AsFloat) > 3)
    and not DmLogin.validaPermissao530(24) then
    begin
      dmLogin.MensagemInformacao('Usuário não possuí permissão para precificar acima de 3% da margem sugerida.');
      Sender.NewValue := Sender.OldValue;
      Exit;
    end;

    if (qryEmbalagens.FieldByName('PTABELAATAC').AsFloat < qryEmbalagens.FieldByName('PSUGESTAO_ATAC').AsFloat)
    and not DmLogin.validaPermissao530(19) then
    begin
      dmLogin.MensagemInformacao('Usuário não possuí permissão para precificar abaixo da margem ideal atacado.');
      Sender.NewValue := Sender.OldValue;
      Exit;
    end;

    if (vMargemPrecoDigitado < qryEmbalagensMARGEMMINATAC.AsFloat)
    and DmLogin.validaPermissao530(6) then
    begin
      if not DmLogin.MensagemPergunta('Produto '+ IntToStr(DMPrecificacao.qryEmbalagensCODPROD.AsInteger) +'-'+ DMPrecificacao.qryEmbalagensDESCRICAO.AsString
      + ' abaixo da margem mínima' + #13
      + 'Margem Mínima: ' + FloatToStr(DMPrecificacao.qryEmbalagensMARGEMMINATAC.AsFloat) + #13
      + 'Margem Atual (Baseado Pr. Futuro): ' + FloatToStr(vMargemPrecoDigitado) + #13
      + 'Deseja aplicar o preço calculado? ( R$ ' + FloatToStr(Sender.NewValue) + ' )') then
      begin
        Sender.NewValue := Sender.OldValue;
        Exit;
      end;
    end;

  end;

  replicarPrecoTabelaAutomatico(True);
  replicarPrecoTabelaCRM;
end;

procedure TDMPrecificacao.qryEmbalagensPTABELAChange(Sender: TField);
var
  vMargemPrecoDigitado:Double;
  vMargemPrecoDigitadoAtac:Double;
  vMargemPtabelaDigitado : Double;
  vMargemPtabelaAnterior : Double;
begin


  if (qryEmbalagensPRECOATUALCRM.AsFloat > 0) and (qryEmbalagensPTABELA.AsFloat < qryEmbalagensPRECOATUALCRM.AsFloat)  then
  begin
    dmLogin.MensagemInformacao('Produto '+ qryEmbalagensCODPROD.AsString +' - ' + qryEmbalagensDESCRICAO.AsString + ' ** Preço FUTURO R$ '+ FloatToStr(qryEmbalagensPTABELA.AsFloat) +' não pode ser MENOR que o preço do CRM R$ ' + FloatToStr(qryEmbalagensPRECOATUALCRM.AsFloat) + '.');
    Sender.NewValue := Sender.OldValue;
    Exit;
  end;

  //Validar a margem minima, somente se o preço digitado for diferente do preço arredondado
  if qryEmbalagens.FieldByName('PTABELA').AsFloat <> qryEmbalagens.FieldByName('PSUGESTAO_ARREDONDADO').AsFloat then
  begin
     vMargemPrecoDigitado := getMargemEmbalagem(qryEmbalagens.FieldByName('PTABELA').AsFloat);

    if (vMargemPrecoDigitado < qryEmbalagensMARGEMMINVAREJO.AsFloat)
    and not DmLogin.validaPermissao530(6) then
    begin
      dmLogin.MensagemInformacao('Usuário não possuí permissão para precificar abaixo da margem mínima.');
      Sender.NewValue := Sender.OldValue;
      Exit;
    end;

    if (vMargemPrecoDigitado < qryEmbalagensMARGEMVAREJO.AsFloat)
    and not DmLogin.validaPermissao530(19) then
    begin
      dmLogin.MensagemInformacao('Usuário não possuí permissão para precificar abaixo da margem ideal.');
      Sender.NewValue := Sender.OldValue;
      Exit;
    end;

    vMargemPtabelaAnterior := getDiferencaEntreMargens(Sender.OldValue, qryEmbalagensPSUGESTAO_ARREDONDADO.AsFloat);
    vMargemPtabelaDigitado := getDiferencaEntreMargens(qryEmbalagens.FieldByName('PTABELA').AsFloat, qryEmbalagensPSUGESTAO_ARREDONDADO.AsFloat);
    if ( (vMargemPtabelaDigitado > vMargemPtabelaAnterior) and
         (vMargemPtabelaDigitado > 3) and not (DmLogin.validaPermissao530(24)) ) then
    begin
      dmLogin.MensagemInformacao('Usuário não possuí permissão para precificar acima de 3% da margem sugerida.');
      Sender.NewValue := Sender.OldValue;
      Exit;
    end;

    if (vMargemPrecoDigitado < qryEmbalagensMARGEMMINVAREJO.AsFloat)
    and DmLogin.validaPermissao530(6) then
    begin
      if not DmLogin.MensagemPergunta('Produto '+ IntToStr(DMPrecificacao.qryEmbalagensCODPROD.AsInteger) +'-'+ DMPrecificacao.qryEmbalagensDESCRICAO.AsString
      + ' abaixo da margem mínima' + #13
      + 'Margem Mínima: ' + FloatToStr(DMPrecificacao.qryEmbalagensMARGEMMINVAREJO.AsFloat) + #13
      + 'Margem Atual (Baseado Pr. Futuro VAREJO): ' + FloatToStr(vMargemPrecoDigitado) + #13
      + 'Deseja aplicar o preço calculado? ( R$ ' + FloatToStr(Sender.NewValue) + ' )') then
      begin
        Sender.NewValue := Sender.OldValue;
      end;
    end;


    vMargemPrecoDigitadoAtac := getMargemEmbalagem(qryEmbalagens.FieldByName('PTABELA').AsFloat * qryEmbalagens.FieldByName('FATORPRECO').AsFloat);

    if (vMargemPrecoDigitadoAtac < qryEmbalagensMARGEMMINATAC.AsFloat)
    and not DmLogin.validaPermissao530(6) then
    begin
      dmLogin.MensagemInformacao('Usuário não possuí permissão para precificar abaixo da margem mínima.');
      Sender.NewValue := Sender.OldValue;
      Exit;
    end;

    if (vMargemPrecoDigitadoAtac < qryEmbalagensMARGEMMINATAC.AsFloat)
    and DmLogin.validaPermissao530(6) then
    begin
      if not DmLogin.MensagemPergunta('Produto '+ IntToStr(DMPrecificacao.qryEmbalagensCODPROD.AsInteger) +'-'+ DMPrecificacao.qryEmbalagensDESCRICAO.AsString
      + ' abaixo da margem mínima' + #13
      + 'Margem Mínima: ' + FloatToStr(DMPrecificacao.qryEmbalagensMARGEMMINATAC.AsFloat) + #13
      + 'Margem Atual (Baseado Pr. Futuro ATACADO): ' + FloatToStr(vMargemPrecoDigitadoAtac) + #13
      + 'Deseja aplicar o preço calculado? ( R$ ' + FloatToStr(Sender.NewValue) + ' )') then
      begin
        Sender.NewValue := Sender.OldValue;
        Exit;
      end;
    end;

  end;

  replicarPrecoTabelaAutomatico(false);
  replicarPrecoTabelaCRM;
end;

procedure TDMPrecificacao.qryEmbalagensPTABELACRMChange(Sender: TField);
var
  vMargemPrecoDigitado:Double;
begin
{
  if qryEmbalagensPRECOATUALCRM.AsFloat > 0 then
  begin
    dmLogin.MensagemInformacao('Produto já possui campanha de CRM Ativa, não é possível precificar.');
    Sender.NewValue := Sender.OldValue;
    Abort;
  end;

  vMargemPrecoDigitado := getMargemEmbalagem(qryEmbalagensPTABELACRM.AsFloat);

  if (qryEmbalagensPTABELA.AsFloat < qryEmbalagensPTABELACRM.AsFloat) then
  begin
    dmLogin.MensagemInformacao('Preço CRM não pode ser maior que o preço de VAREJO.');
    Sender.NewValue := Sender.OldValue;
    Abort;
  end;

  if (vMargemPrecoDigitado < qryEmbalagensMARGEMMINVAREJO.AsFloat)
  and not DmLogin.validaPermissao530(6) then
  begin
    dmLogin.MensagemInformacao('Usuário não possuí permissão para precificar abaixo da margem mínima.');
    Sender.NewValue := Sender.OldValue;
    Abort;
  end;

  if (vMargemPrecoDigitado < qryEmbalagensMARGEMVAREJO.AsFloat)
  and not DmLogin.validaPermissao530(19) then
  begin
    dmLogin.MensagemInformacao('Usuário não possuí permissão para precificar abaixo da margem ideal.');
    Sender.NewValue := Sender.OldValue;
    Abort;
  end;

  replicarPrecoTabelaCRM;    }
end;

procedure TDMPrecificacao.qryEmbalagensPVENDAATACChange(Sender: TField);
begin
  if (qryEmbalagensPRECOATUALCRM.AsFloat > 0) and (qryEmbalagensPVENDAATAC.AsFloat < qryEmbalagensPRECOATUALCRM.AsFloat)  then
  begin
    dmLogin.MensagemInformacao('Produto '+ qryEmbalagensCODPROD.AsString +' - ' + qryEmbalagensDESCRICAO.AsString + ' ** Preço de venda atacado R$ '+ FloatToStr(qryEmbalagensPVENDAATAC.AsFloat) +' não pode ser MENOR que o preço do CRM R$ ' + FloatToStr(qryEmbalagensPRECOATUALCRM.AsFloat) + '.');
    Sender.NewValue := Sender.OldValue;
    Exit;
  end;

  replicarPrecoVendaAutomatico;
end;

procedure TDMPrecificacao.qryEmbalagensPVENDAChange(Sender: TField);
begin
  if (qryEmbalagensPRECOATUALCRM.AsFloat > 0) and (qryEmbalagensPVENDA.AsFloat <= qryEmbalagensPRECOATUALCRM.AsFloat)  then
  begin
    dmLogin.MensagemInformacao('Produto '+ qryEmbalagensCODPROD.AsString +' - ' + qryEmbalagensDESCRICAO.AsString + ' ** Preço de venda R$ '+ FloatToStr(qryEmbalagensPVENDA.AsFloat) +' não pode ser MENOR que o preço do CRM R$ ' + FloatToStr(qryEmbalagensPRECOATUALCRM.AsFloat) + '.');
    Sender.NewValue := Sender.OldValue;
    Exit;
  end;

  replicarPrecoVendaAutomatico;
end;


procedure TDMPrecificacao.qryEmbalagensPVENDACRMChange(Sender: TField);
begin
  replicarPrecoVendaCRM;
end;

procedure TDMPrecificacao.qryEmbalagensQTMINIMAATACADOChange(Sender: TField);
begin
  replicarQtMinAtacado;
end;

procedure TDMPrecificacao.qryEmbClusterAfterPost(DataSet: TDataSet);
var
  Codprod:Integer;
  CodprodPrinc:Integer;
  PTabela:Double;
  CodAuxiliar:String;
begin

  if naoAtualiza then
    Exit;

  Codprod := qryEmbCluster.FieldByName('CODPROD').AsInteger;
  CodprodPrinc := qryEmbCluster.FieldByName('CODPRODPRINC').AsInteger;
  PTabela := qryEmbCluster.FieldByName('PTABELA').AsInteger;
  CodAuxiliar := qryEmbCluster.FieldByName('CODAUXILIAR').AsString;


  try
    qryEmbCluster.Filtered := False;
    qryEmbCluster.Filter := EmptyStr;
    qryEmbCluster.Filtered := True;

    qryEmbCluster.Filtered := False;
    qryEmbCluster.Filter := 'CODPROD = ' + IntToStr(Codprod);
    qryEmbCluster.Filtered := True;

    while not qryEmbCluster.Eof do
    begin
      if (Codprod = qryEmbCluster.FieldByName('CODPROD').AsInteger) then
      begin
        qryEmbCluster.RefreshRecord;
      end;

      qryEmbCluster.Next;
    end;

    qryEmbCluster.Filtered := False;
    qryEmbCluster.Filter := EmptyStr;
    qryEmbCluster.Filtered := True;

    qryEmbCluster.Filtered := False;
    qryEmbCluster.Filter := 'CODPRODPRINC = ' + IntToStr(CodprodPrinc);
    qryEmbCluster.Filtered := True;

    qryEmbCluster.First;

    while not qryEmbCluster.Eof do
    begin

      if (CodprodPrinc = qryEmbCluster.FieldByName('CODPRODPRINC').AsInteger) then
      begin
        qryEmbCluster.RefreshRecord;
      end;

      qryEmbCluster.Next;
    end;

  finally
    qryEmbCluster.Filtered := False;
    qryEmbCluster.Filter := EmptyStr;
    qryEmbCluster.Filtered := True;
    qryEmbCluster.Locate('CODAUXILIAR',CodAuxiliar,[]);
  end;

end;

procedure TDMPrecificacao.qryEmbClusterMARGEMATACChange(Sender: TField);
begin
  AlterarMargemCluster('MARGEMATAC');
end;

procedure TDMPrecificacao.qryEmbClusterMARGEMMINATACChange(Sender: TField);
begin
  AlterarMargemCluster('MARGEMMINATAC');
end;

procedure TDMPrecificacao.qryEmbClusterMARGEMMINVAREJOChange(Sender: TField);
begin
  AlterarMargemCluster('MARGEMMINVAREJO');
end;

procedure TDMPrecificacao.qryEmbClusterMARGEMVAREJOChange(Sender: TField);
begin
  AlterarMargemCluster('MARGEMVAREJO');
end;

procedure TDMPrecificacao.qryEmbClusterPRECOFIXOChange(Sender: TField);
begin
  replicarPrecoFixoCluster;
end;

procedure TDMPrecificacao.qryEmbClusterPTABELAATACChange(Sender: TField);
var
  vMargemPrecoDigitado:Double;
begin
  //Validar a margem minima somente se o preço de tabela for diferente do preço sugerido arredondado
  if qryEmbCluster.FieldByName('PTABELAATAC').AsFloat <> qryEmbCluster.FieldByName('PSUGESTAO_ATAC_ARREDONDADO').AsFloat then
  begin

    vMargemPrecoDigitado := getMargem(qryEmbCluster.FieldByName('CUSTOFIN').AsFloat, qryEmbCluster.FieldByName('PTABELAATAC').AsFloat);

    if (vMargemPrecoDigitado < qryEmbClusterMARGEMMINATAC.AsFloat)
    and not DmLogin.validaPermissao530(6) then
    begin
      dmLogin.MensagemInformacao('Usuário não possuí permissão para precificar abaixo da margem mínima.');
      Sender.NewValue := Sender.OldValue;
      Exit;
    end;

    if (getDiferencaEntreMargens(qryEmbCluster.FieldByName('PTABELAATAC').AsFloat, qryEmbClusterPSUGESTAO_ATAC_ARREDONDADO.AsFloat) > 3)
    and not DmLogin.validaPermissao530(24) then
    begin
      dmLogin.MensagemInformacao('Usuário não possuí permissão para precificar acima de 3% da margem sugerida.');
      Sender.NewValue := Sender.OldValue;
      Exit;
    end;

    if (qryEmbCluster.FieldByName('PTABELAATAC').AsFloat < qryEmbCluster.FieldByName('PSUGESTAO_ATAC').AsFloat)
    and not DmLogin.validaPermissao530(19) then
    begin
      dmLogin.MensagemInformacao('Usuário não possuí permissão para precificar abaixo da margem ideal atacado.');
      Sender.NewValue := Sender.OldValue;
      Exit;
    end;

    if (vMargemPrecoDigitado < qryEmbClusterMARGEMMINATAC.AsFloat)
    and DmLogin.validaPermissao530(6) then
    begin
      if not DmLogin.MensagemPergunta('Produto '+ IntToStr(DMPrecificacao.qryEmbClusterCODPROD.AsInteger) +'-'+ DMPrecificacao.qryEmbClusterDESCRICAO.AsString
      + ' abaixo da margem mínima' + #13
      + 'Margem Mínima: ' + FloatToStr(DMPrecificacao.qryEmbClusterMARGEMMINATAC.AsFloat) + #13
      + 'Margem Atual (Baseado Pr. Futuro): ' + FloatToStr(vMargemPrecoDigitado) + #13
      + 'Deseja aplicar o preço calculado? ( R$ ' + FloatToStr(Sender.NewValue) + ' )') then
      begin
        Sender.NewValue := Sender.OldValue;
        Exit;
      end;
    end;

  end;

  replicarPrecoTabelaAutomaticoCluster(True);
end;


procedure TDMPrecificacao.qryEmbClusterPTABELAChange(Sender: TField);
var
  vMargemPrecoDigitado:Double;
  vMargemPrecoDigitadoAtac:Double;
  vMargemPtabelaAnterior : Double;
  vMargemPtabelaDigitado: Double;
begin


  if (qryEmbClusterPRECOATUALCRM.AsFloat > 0) and (qryEmbClusterPTABELA.AsFloat < qryEmbClusterPRECOATUALCRM.AsFloat)  then
  begin
    dmLogin.MensagemInformacao('Produto '+ qryEmbClusterCODPROD.AsString +' - ' + qryEmbClusterDESCRICAO.AsString + ' ** Preço FUTURO R$ '+ FloatToStr(qryEmbClusterPTABELA.AsFloat) +' não pode ser MENOR que o preço do CRM R$ ' + FloatToStr(qryEmbClusterPRECOATUALCRM.AsFloat) + '.');
    Sender.NewValue := Sender.OldValue;
    Exit;
  end;

  //Validar a margem minima, somente se o preço digitado for diferente do preço arredondado
  if qryEmbCluster.FieldByName('PTABELA').AsFloat <> qryEmbCluster.FieldByName('PSUGESTAO_ARREDONDADO').AsFloat then
  begin
     vMargemPrecoDigitado := getMargem(qryEmbCluster.FieldByName('CUSTOFIN').AsFloat, qryEmbCluster.FieldByName('PTABELA').AsFloat);

    if (vMargemPrecoDigitado < qryEmbClusterMARGEMMINVAREJO.AsFloat)
    and not DmLogin.validaPermissao530(6) then
    begin
      dmLogin.MensagemInformacao('Usuário não possuí permissão para precificar abaixo da margem mínima.');
      Sender.NewValue := Sender.OldValue;
      Exit;
    end;

    if (vMargemPrecoDigitado < qryEmbClusterMARGEMVAREJO.AsFloat)
    and not DmLogin.validaPermissao530(19) then
    begin
      dmLogin.MensagemInformacao('Usuário não possuí permissão para precificar abaixo da margem ideal.');
      Sender.NewValue := Sender.OldValue;
      Exit;
    end;


    vMargemPtabelaAnterior := getDiferencaEntreMargens(Sender.OldValue, qryEmbClusterPSUGESTAO_ARREDONDADO.AsFloat);
    vMargemPtabelaDigitado := getDiferencaEntreMargens(qryEmbCluster.FieldByName('PTABELA').AsFloat, qryEmbClusterPSUGESTAO_ARREDONDADO.AsFloat);
    if ( (vMargemPtabelaDigitado > vMargemPtabelaAnterior) and
         (vMargemPtabelaDigitado > 3) and not (DmLogin.validaPermissao530(24)) ) then
    begin
      dmLogin.MensagemInformacao('Usuário não possuí permissão para precificar acima de 3% da margem sugerida.');
      Sender.NewValue := Sender.OldValue;
      Exit;
    end;

    if (vMargemPrecoDigitado < qryEmbClusterMARGEMMINVAREJO.AsFloat)
    and DmLogin.validaPermissao530(6) then
    begin
      if not DmLogin.MensagemPergunta('Produto '+ IntToStr(DMPrecificacao.qryEmbClusterCODPROD.AsInteger) +'-'+ DMPrecificacao.qryEmbClusterDESCRICAO.AsString
      + ' abaixo da margem mínima' + #13
      + 'Margem Mínima: ' + FloatToStr(DMPrecificacao.qryEmbClusterMARGEMMINVAREJO.AsFloat) + #13
      + 'Margem Atual (Baseado Pr. Futuro VAREJO): ' + FloatToStr(vMargemPrecoDigitado) + #13
      + 'Deseja aplicar o preço calculado? ( R$ ' + FloatToStr(Sender.NewValue) + ' )') then
      begin
        Sender.NewValue := Sender.OldValue;
        Exit;
      end;
    end;


    vMargemPrecoDigitadoAtac := getMargem(qryEmbCluster.FieldByName('CUSTOFIN').AsFloat, qryEmbCluster.FieldByName('PTABELA').AsFloat * qryEmbCluster.FieldByName('FATORPRECO').AsFloat);

    if (vMargemPrecoDigitadoAtac < qryEmbClusterMARGEMMINATAC.AsFloat)
    and not DmLogin.validaPermissao530(6) then
    begin
      dmLogin.MensagemInformacao('Usuário não possuí permissão para precificar abaixo da margem mínima.');
      Sender.NewValue := Sender.OldValue;
      Exit;
    end;

    if (vMargemPrecoDigitadoAtac < qryEmbClusterMARGEMMINATAC.AsFloat)
    and DmLogin.validaPermissao530(6) then
    begin
      if not DmLogin.MensagemPergunta('Produto '+ IntToStr(DMPrecificacao.qryEmbClusterCODPROD.AsInteger) +'-'+ DMPrecificacao.qryEmbClusterDESCRICAO.AsString
      + ' abaixo da margem mínima' + #13
      + 'Margem Mínima: ' + FloatToStr(DMPrecificacao.qryEmbClusterMARGEMMINATAC.AsFloat) + #13
      + 'Margem Atual (Baseado Pr. Futuro ATACADO): ' + FloatToStr(vMargemPrecoDigitadoAtac) + #13
      + 'Deseja aplicar o preço calculado? ( R$ ' + FloatToStr(Sender.NewValue) + ' )') then
      begin
        Sender.NewValue := Sender.OldValue;
        Exit;
      end;
    end;

  end;

  replicarPrecoTabelaAutomaticoCluster(false);
end;

procedure TDMPrecificacao.qryEmbClusterPVENDAATACChange(Sender: TField);
begin
  replicarPrecoVendaAutomaticoCluster;
end;

procedure TDMPrecificacao.qryEmbClusterPVENDAChange(Sender: TField);
begin
  if (qryEmbClusterPRECOATUALCRM.AsFloat > 0) and (qryEmbClusterPVENDA.AsFloat < qryEmbClusterPRECOATUALCRM.AsFloat)  then
  begin
    dmLogin.MensagemInformacao('Produto '+ qryEmbClusterCODPROD.AsString +' - ' + qryEmbClusterDESCRICAO.AsString + ' ** Preço de venda R$ '+ FloatToStr(qryEmbClusterPVENDA.AsFloat) +' não pode ser MENOR que o preço do CRM R$ ' + FloatToStr(qryEmbClusterPRECOATUALCRM.AsFloat) + '.');
    Sender.NewValue := Sender.OldValue;
    Exit;
  end;

  replicarPrecoVendaAutomaticoCluster;
end;

procedure TDMPrecificacao.qryEmbClusterQTMINIMAATACADOChange(Sender: TField);
begin
  replicarQtMinAtacadoCluster;
end;

procedure TDMPrecificacao.replicarPrecoTabelaAutomatico(pAtacado:boolean=false);
var
  qrReplicarPtabela : TUniQuery;
  precoUnitario : Double;
begin
  try
    qrReplicarPtabela := TUniQuery.Create(nil);
    qrReplicarPtabela.Connection := DmLogin.Conexao;
    qrReplicarPtabela.Close;
    qrReplicarPtabela.SQL.Clear;

    if pAtacado then
    begin
      if (qryEmbalagens.FieldByName('QTUNIT').AsFloat < 1) then
         precoUnitario := Math.RoundTo(qryEmbalagens.FieldByName('PTABELAATAC').AsFloat * (1 / qryEmbalagens.FieldByName('QTUNIT').AsFloat), -2);

      if (qryEmbalagens.FieldByName('QTUNIT').AsFloat = 1) then
         precoUnitario := Math.RoundTo(qryEmbalagens.FieldByName('PTABELAATAC').AsFloat, -2);

      if (qryEmbalagens.FieldByName('QTUNIT').AsFloat > 1) then
        precoUnitario := Math.RoundTo(qryEmbalagens.FieldByName('PTABELAATAC').AsFloat / qryEmbalagens.FieldByName('QTUNIT').AsFloat, -2);

      qrReplicarPtabela.SQL.Add('UPDATE PCEMBALAGEM SET PTABELAATAC = ROUND(:PTABELAATAC * NVL(QTUNIT,1),2) WHERE 1=1 ');
      qrReplicarPtabela.ParamByName('PTABELAATAC').AsFloat := precoUnitario;
    end
    else
    begin

      { OBTER O PREÇO UNITARIO BASEADO NO PERVARIACAOPTABELA }
      if qryEmbalagens.FieldByName('PERVARIACAOPTABELA').AsFloat < 1 then
        precoUnitario := Math.RoundTo(qryEmbalagens.FieldByName('PTABELA').AsFloat * ( 1 / (qryEmbalagens.FieldByName('PERVARIACAOPTABELA').AsFloat) )  , -2);

      if qryEmbalagens.FieldByName('PERVARIACAOPTABELA').AsFloat = 1 then
        precoUnitario := Math.RoundTo(qryEmbalagens.FieldByName('PTABELA').AsFloat, -2);

      if qryEmbalagens.FieldByName('PERVARIACAOPTABELA').AsFloat > 1 then
        precoUnitario := Math.RoundTo(qryEmbalagens.FieldByName('PTABELA').AsFloat / qryEmbalagens.FieldByName('PERVARIACAOPTABELA').AsFloat, -2);

      { OBTER O PREÇO UNITARIO BASEADO NO QTUNIT ATUAL }
      if qryEmbalagens.FieldByName('QTUNIT').AsFloat < 1 then
        precoUnitario := Math.RoundTo(precoUnitario * ( 1/ (qryEmbalagens.FieldByName('QTUNIT').AsFloat) )  , -2);

      if qryEmbalagens.FieldByName('QTUNIT').AsFloat = 1 then
        precoUnitario := Math.RoundTo(precoUnitario, -2);

      if qryEmbalagens.FieldByName('QTUNIT').AsFloat > 1 then
        precoUnitario := Math.RoundTo(precoUnitario / qryEmbalagens.FieldByName('QTUNIT').AsFloat, -2);

      qrReplicarPtabela.SQL.Add('UPDATE PCEMBALAGEM                                                                ');
      qrReplicarPtabela.SQL.Add(' SET PTABELA =                                                                    ');
      qrReplicarPtabela.SQL.Add('             ROUND( :PTABELA * NVL( QTUNIT, 1 )                                   ');
      qrReplicarPtabela.SQL.Add('           * DECODE( NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ),                    ');
      qrReplicarPtabela.SQL.Add('                     0, 1,                                                        ');
      qrReplicarPtabela.SQL.Add('                     NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ) ), 2 ) ,            ');
      qrReplicarPtabela.SQL.Add('       PTABELAATAC =                                                              ');
      qrReplicarPtabela.SQL.Add('      ROUND(DECODE(                                                               ');
      qrReplicarPtabela.SQL.Add('                   DECODE( NVL( PCEMBALAGEM.QTMINIMAATACADO, 0 ),                 ');
      qrReplicarPtabela.SQL.Add('                           0, NVL( PCEMBALAGEM.QTMULTIPLA, 0 ),                   ');
      qrReplicarPtabela.SQL.Add('                           NVL( PCEMBALAGEM.QTMINIMAATACADO, 0 ) ),               ');
      qrReplicarPtabela.SQL.Add('                   0,   ROUND( :PTABELA * NVL( QTUNIT, 1 ), 2 )                   ');
      qrReplicarPtabela.SQL.Add('                      * DECODE( NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ),         ');
      qrReplicarPtabela.SQL.Add('                                0, 1,                                             ');
      qrReplicarPtabela.SQL.Add('                                NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ) ),       ');
      qrReplicarPtabela.SQL.Add('                   ROUND(                                                         ');
      qrReplicarPtabela.SQL.Add('                            ( :PTABELA * NVL( QTUNIT, 1 ) )                       ');
      qrReplicarPtabela.SQL.Add('                          * NVL( FATORPRECO, 1 )                                  ');
      qrReplicarPtabela.SQL.Add('                          * DECODE(                                               ');
      qrReplicarPtabela.SQL.Add('                                    NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ),     ');
      qrReplicarPtabela.SQL.Add('                                    0, 1,                                         ');
      qrReplicarPtabela.SQL.Add('                                    NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ) ),   ');
      qrReplicarPtabela.SQL.Add('                          2 ) ) , 2)                                              ');
      qrReplicarPtabela.SQL.Add('      WHERE 1=1                                                                   ');
      qrReplicarPtabela.ParamByName('PTABELA').AsFloat := precoUnitario;
    end;

    if not pREPLICAPTABELAFAMILIA then
    begin
      qrReplicarPtabela.SQL.Add('AND CODPROD = :CODPROD');
    end
    else
    begin
      qrReplicarPtabela.SQL.Add('AND CODPROD IN (SELECT CODPROD FROM PCPRODUT WHERE CODPRODPRINC = (SELECT CODPRODPRINC FROM PCPRODUT WHERE CODPROD = :CODPROD)) ');
    end;

    qrReplicarPtabela.ParamByName('CODPROD').AsInteger := qryEmbalagens.FieldByName('CODPROD').AsInteger;

    if (not pREPLICAPTABELAFILIAIS) or (not DmLogin.validaPermissao530(18)) then
    begin
      qrReplicarPtabela.SQL.Add('AND CODFILIAL IN ('+ frmPrecificacao.getFiliaisSelecionadas +')');
    end;

    if not pREPLICAPTABELAEMBALAGEM then
    begin
      qrReplicarPtabela.SQL.Add('AND CODAUXILIAR = :CODAUXILIAR');
      qrReplicarPtabela.ParamByName('CODAUXILIAR').AsString := qryEmbalagens.FieldByName('CODAUXILIAR').AsString;
    end
    else
    begin
      qrReplicarPtabela.SQL.Add('AND ((CODAUXILIAR = :CODAUXILIAR) OR (NVL(PCEMBALAGEM.ACEITAPRECOREPLICADO,''N'') = ''S''))');
      qrReplicarPtabela.ParamByName('CODAUXILIAR').AsString := qryEmbalagens.FieldByName('CODAUXILIAR').AsString;
    end;

    qrReplicarPtabela.ExecSQL;

  finally
    qrReplicarPtabela.Close;
    qrReplicarPtabela.Free;
  end;

end;


procedure TDMPrecificacao.replicarPrecoTabelaAutomaticoCluster(
  pAtacado: boolean);
var
  qrReplicarPtabela : TUniQuery;
  precoUnitario : Double;
begin
  try
    qrReplicarPtabela := TUniQuery.Create(nil);
    qrReplicarPtabela.Connection := DmLogin.Conexao;
    qrReplicarPtabela.Close;
    qrReplicarPtabela.SQL.Clear;

    if pAtacado then
    begin
      if (qryEmbCluster.FieldByName('QTUNIT').AsFloat < 1) then
         precoUnitario := Math.RoundTo(qryEmbCluster.FieldByName('PTABELAATAC').AsFloat * (1 / qryEmbCluster.FieldByName('QTUNIT').AsFloat), -2);

      if (qryEmbCluster.FieldByName('QTUNIT').AsFloat = 1) then
         precoUnitario := Math.RoundTo(qryEmbCluster.FieldByName('PTABELAATAC').AsFloat, -2);

      if (qryEmbCluster.FieldByName('QTUNIT').AsFloat > 1) then
        precoUnitario := Math.RoundTo(qryEmbCluster.FieldByName('PTABELAATAC').AsFloat / qryEmbCluster.FieldByName('QTUNIT').AsFloat, -2);

      qrReplicarPtabela.SQL.Add('UPDATE PCEMBALAGEM SET PTABELAATAC = ROUND(:PTABELAATAC * NVL(QTUNIT,1),2) WHERE 1=1 ');
      qrReplicarPtabela.ParamByName('PTABELAATAC').AsFloat := precoUnitario;
    end
    else
    begin

      { OBTER O PREÇO UNITARIO BASEADO NO PERVARIACAOPTABELA }
      if qryEmbCluster.FieldByName('PERVARIACAOPTABELA').AsFloat < 1 then
        precoUnitario := Math.RoundTo(qryEmbCluster.FieldByName('PTABELA').AsFloat * ( 1 / (qryEmbCluster.FieldByName('PERVARIACAOPTABELA').AsFloat) )  , -2);

      if qryEmbCluster.FieldByName('PERVARIACAOPTABELA').AsFloat = 1 then
        precoUnitario := Math.RoundTo(qryEmbCluster.FieldByName('PTABELA').AsFloat, -2);

      if qryEmbCluster.FieldByName('PERVARIACAOPTABELA').AsFloat > 1 then
        precoUnitario := Math.RoundTo(qryEmbCluster.FieldByName('PTABELA').AsFloat / qryEmbCluster.FieldByName('PERVARIACAOPTABELA').AsFloat, -2);

      { OBTER O PREÇO UNITARIO BASEADO NO QTUNIT ATUAL }
      if qryEmbCluster.FieldByName('QTUNIT').AsFloat < 1 then
        precoUnitario := Math.RoundTo(precoUnitario * ( 1/ (qryEmbCluster.FieldByName('QTUNIT').AsFloat) )  , -2);

      if qryEmbCluster.FieldByName('QTUNIT').AsFloat = 1 then
        precoUnitario := Math.RoundTo(precoUnitario, -2);

      if qryEmbCluster.FieldByName('QTUNIT').AsFloat > 1 then
        precoUnitario := Math.RoundTo(precoUnitario / qryEmbCluster.FieldByName('QTUNIT').AsFloat, -2);

      qrReplicarPtabela.SQL.Add('UPDATE PCEMBALAGEM                                                                ');
      qrReplicarPtabela.SQL.Add(' SET PTABELA =                                                                    ');
      qrReplicarPtabela.SQL.Add('             ROUND( :PTABELA * NVL( QTUNIT, 1 )                                   ');
      qrReplicarPtabela.SQL.Add('           * DECODE( NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ),                    ');
      qrReplicarPtabela.SQL.Add('                     0, 1,                                                        ');
      qrReplicarPtabela.SQL.Add('                     NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ) ), 2 ) ,            ');
      qrReplicarPtabela.SQL.Add('       PTABELAATAC =                                                              ');
      qrReplicarPtabela.SQL.Add('      ROUND(DECODE(                                                               ');
      qrReplicarPtabela.SQL.Add('                   DECODE( NVL( PCEMBALAGEM.QTMINIMAATACADO, 0 ),                 ');
      qrReplicarPtabela.SQL.Add('                           0, NVL( PCEMBALAGEM.QTMULTIPLA, 0 ),                   ');
      qrReplicarPtabela.SQL.Add('                           NVL( PCEMBALAGEM.QTMINIMAATACADO, 0 ) ),               ');
      qrReplicarPtabela.SQL.Add('                   0,   ROUND( :PTABELA * NVL( QTUNIT, 1 ), 2 )                   ');
      qrReplicarPtabela.SQL.Add('                      * DECODE( NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ),         ');
      qrReplicarPtabela.SQL.Add('                                0, 1,                                             ');
      qrReplicarPtabela.SQL.Add('                                NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ) ),       ');
      qrReplicarPtabela.SQL.Add('                   ROUND(                                                         ');
      qrReplicarPtabela.SQL.Add('                            ( :PTABELA * NVL( QTUNIT, 1 ) )                       ');
      qrReplicarPtabela.SQL.Add('                          * NVL( FATORPRECO, 1 )                                  ');
      qrReplicarPtabela.SQL.Add('                          * DECODE(                                               ');
      qrReplicarPtabela.SQL.Add('                                    NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ),     ');
      qrReplicarPtabela.SQL.Add('                                    0, 1,                                         ');
      qrReplicarPtabela.SQL.Add('                                    NVL( PCEMBALAGEM.PERVARIACAOPTABELA, 1 ) ),   ');
      qrReplicarPtabela.SQL.Add('                          2 ) ) , 2)                                              ');
      qrReplicarPtabela.SQL.Add('      WHERE 1=1                                                                   ');
      qrReplicarPtabela.ParamByName('PTABELA').AsFloat := precoUnitario;
    end;

    if not pREPLICAPTABELAFAMILIA then
    begin
      qrReplicarPtabela.SQL.Add('AND CODPROD = :CODPROD');
    end
    else
    begin
      qrReplicarPtabela.SQL.Add('AND CODPROD IN (SELECT CODPROD FROM PCPRODUT WHERE CODPRODPRINC = (SELECT CODPRODPRINC FROM PCPRODUT WHERE CODPROD = :CODPROD)) ');
    end;

    qrReplicarPtabela.ParamByName('CODPROD').AsInteger := qryEmbCluster.FieldByName('CODPROD').AsInteger;


    qrReplicarPtabela.SQL.Add('AND CODFILIAL IN (SELECT CODFILIAL FROM I9GRUPOFILIALI WHERE CODGRUPO = :CODGRUPO)');
    qrReplicarPtabela.ParamByName('CODGRUPO').AsInteger := qryEmbCluster.FieldByName('CODGRUPO').AsInteger;;


    if not pREPLICAPTABELAEMBALAGEM then
    begin
      qrReplicarPtabela.SQL.Add('AND CODAUXILIAR = :CODAUXILIAR');
      qrReplicarPtabela.ParamByName('CODAUXILIAR').AsString := qryEmbCluster.FieldByName('CODAUXILIAR').AsString;
    end
    else
    begin
      qrReplicarPtabela.SQL.Add('AND ((CODAUXILIAR = :CODAUXILIAR) OR (NVL(PCEMBALAGEM.ACEITAPRECOREPLICADO,''N'') = ''S''))');
      qrReplicarPtabela.ParamByName('CODAUXILIAR').AsString := qryEmbCluster.FieldByName('CODAUXILIAR').AsString;
    end;

    qrReplicarPtabela.ExecSQL;

  finally
    qrReplicarPtabela.Close;
    qrReplicarPtabela.Free;
  end;

end;

procedure TDMPrecificacao.replicarQtMinAtacado;
var
  qrReplicarQtMinAtacado : TUniQuery;
begin
  try
    qrReplicarQtMinAtacado := TUniQuery.Create(nil);
    qrReplicarQtMinAtacado.Connection := DmLogin.Conexao;
    qrReplicarQtMinAtacado.Close;
    qrReplicarQtMinAtacado.SQL.Clear;

    qrReplicarQtMinAtacado.SQL.Add('UPDATE PCEMBALAGEM SET QTMINIMAATACADO = :QTMINIMAATACADO WHERE 1=1 ');
    qrReplicarQtMinAtacado.ParamByName('QTMINIMAATACADO').AsFloat := qryEmbalagens.FieldByName('QTMINIMAATACADO').AsFloat;


    if not pREPLICAPTABELAFAMILIA then
    begin
      qrReplicarQtMinAtacado.SQL.Add('AND CODPROD = :CODPROD');
    end
    else
    begin
      qrReplicarQtMinAtacado.SQL.Add('AND CODPROD IN (SELECT CODPROD FROM PCPRODUT WHERE CODPRODPRINC = (SELECT CODPRODPRINC FROM PCPRODUT WHERE CODPROD = :CODPROD))');
    end;

    qrReplicarQtMinAtacado.ParamByName('CODPROD').AsInteger := qryEmbalagens.FieldByName('CODPROD').AsInteger;

    if not pREPLICAPTABELAFILIAIS then
    begin
      qrReplicarQtMinAtacado.SQL.Add('AND CODFILIAL IN ('+ frmPrecificacao.getFiliaisSelecionadas+')');
    end;

    if not pREPLICAPTABELAEMBALAGEM then
    begin
      qrReplicarQtMinAtacado.SQL.Add('AND CODAUXILIAR = :CODAUXILIAR');
      qrReplicarQtMinAtacado.ParamByName('CODAUXILIAR').AsString := qryEmbalagens.FieldByName('CODAUXILIAR').AsString;
    end;

    qrReplicarQtMinAtacado.ExecSQL;

  finally
    qrReplicarQtMinAtacado.Close;
    qrReplicarQtMinAtacado.Free;
  end;

end;

procedure TDMPrecificacao.replicarQtMinAtacadoCluster;
var
  qrReplicarQtMinAtacado : TUniQuery;
begin
  try
    qrReplicarQtMinAtacado := TUniQuery.Create(nil);
    qrReplicarQtMinAtacado.Connection := DmLogin.Conexao;
    qrReplicarQtMinAtacado.Close;
    qrReplicarQtMinAtacado.SQL.Clear;

    qrReplicarQtMinAtacado.SQL.Add('UPDATE PCEMBALAGEM SET QTMINIMAATACADO = :QTMINIMAATACADO WHERE 1=1 ');
    qrReplicarQtMinAtacado.ParamByName('QTMINIMAATACADO').AsFloat := qryEmbCluster.FieldByName('QTMINIMAATACADO').AsFloat;


    if not pREPLICAPTABELAFAMILIA then
    begin
      qrReplicarQtMinAtacado.SQL.Add('AND CODPROD = :CODPROD');
    end
    else
    begin
      qrReplicarQtMinAtacado.SQL.Add('AND CODPROD IN (SELECT CODPROD FROM PCPRODUT WHERE CODPRODPRINC = (SELECT CODPRODPRINC FROM PCPRODUT WHERE CODPROD = :CODPROD))');
    end;

    qrReplicarQtMinAtacado.ParamByName('CODPROD').AsInteger := qryEmbCluster.FieldByName('CODPROD').AsInteger;

    qrReplicarQtMinAtacado.SQL.Add('AND CODFILIAL IN (SELECT CODFILIAL FROM I9GRUPOFILIALI WHERE CODGRUPO = :CODGRUPO)');
    qrReplicarQtMinAtacado.ParamByName('CODGRUPO').AsInteger := qryEmbCluster.FieldByName('CODGRUPO').AsInteger;

    if not pREPLICAPTABELAEMBALAGEM then
    begin
      qrReplicarQtMinAtacado.SQL.Add('AND CODAUXILIAR = :CODAUXILIAR');
      qrReplicarQtMinAtacado.ParamByName('CODAUXILIAR').AsString := qryEmbCluster.FieldByName('CODAUXILIAR').AsString;
    end;

    qrReplicarQtMinAtacado.ExecSQL;

  finally
    qrReplicarQtMinAtacado.Close;
    qrReplicarQtMinAtacado.Free;
  end;

end;


procedure TDMPrecificacao.replicarFatorPreco;
var
  qrReplicarFatorPreco : TUniQuery;
begin
  try
    qrReplicarFatorPreco := TUniQuery.Create(nil);
    qrReplicarFatorPreco.Connection := DmLogin.Conexao;
    qrReplicarFatorPreco.Close;
    qrReplicarFatorPreco.SQL.Clear;

    qrReplicarFatorPreco.SQL.Add('UPDATE PCEMBALAGEM SET FATORPRECO = :FATORPRECO WHERE 1=1 ');
    qrReplicarFatorPreco.ParamByName('FATORPRECO').AsFloat := qryEmbalagens.FieldByName('FATORPRECO').AsFloat;


    if not pREPLICAPTABELAFAMILIA then
    begin
      qrReplicarFatorPreco.SQL.Add('AND CODPROD = :CODPROD');
    end
    else
    begin
      qrReplicarFatorPreco.SQL.Add('AND CODPROD IN (SELECT CODPROD FROM PCPRODUT WHERE CODPRODPRINC = (SELECT CODPRODPRINC FROM PCPRODUT WHERE CODPROD = :CODPROD))');
    end;

    qrReplicarFatorPreco.ParamByName('CODPROD').AsInteger := qryEmbalagens.FieldByName('CODPROD').AsInteger;

    if not pREPLICAPTABELAFILIAIS then
    begin
        qrReplicarFatorPreco.SQL.Add('AND CODFILIAL IN ('+ frmPrecificacao.getFiliaisSelecionadas +')')
    end;

    if not pREPLICAPTABELAEMBALAGEM then
    begin
      qrReplicarFatorPreco.SQL.Add('AND CODAUXILIAR = :CODAUXILIAR');
      qrReplicarFatorPreco.ParamByName('CODAUXILIAR').AsString := qryEmbalagens.FieldByName('CODAUXILIAR').AsString;
    end;

    qrReplicarFatorPreco.ExecSQL;

  finally
    qrReplicarFatorPreco.Close;
    qrReplicarFatorPreco.Free;
  end;

end;

procedure TDMPrecificacao.replicarPrecoTabelaCRM;
var
  qrReplicarCRM : TUniQuery;
  precoUnitario : Double;
  percVarejo : Double;
  percAtacado : Double;
begin
  {try
    qrReplicarCRM := TUniQuery.Create(nil);
    qrReplicarCRM.Connection := DmLogin.Conexao;

    //CLIENTES GERAIS
    qrReplicarCRM.Close;
    qrReplicarCRM.SQL.Clear;

    percVarejo := getDiferencaEntreMargens(qryEmbalagens.FieldByName('PTABELA').AsFloat, qryEmbalagens.FieldByName('PTABELACRM').AsFloat);

    qryEmbalagensPERDESCCRMTABELA.AsFloat := percVarejo;

    qrReplicarCRM.SQL.Add('UPDATE PCDESCONTOFIDELIDADE SET PERCDESCONTOTABELA = :PERCDESCONTOTABELA, PTABELACRM = :PTABELACRM, DTULTALTPTABELACRM = SYSDATE');
    qrReplicarCRM.SQL.Add('WHERE CODCLICONVENIO = (SELECT PCCONSUM.CODCLICRMGERAL FROM PCCONSUM WHERE ROWNUM = 1)');
    qrReplicarCRM.SQL.Add('AND TIPOTERCEIROPRECO = ''G'' ');
    qrReplicarCRM.ParamByName('PERCDESCONTOTABELA').AsFloat := percVarejo;
    qrReplicarCRM.ParamByName('PTABELACRM').AsFloat := qryEmbalagens.FieldByName('PTABELACRM').AsFloat;

    if not pREPLICAPTABELAFAMILIA then
    begin
      qrReplicarCRM.SQL.Add('AND CODPROD = :CODPROD');
    end
    else
    begin
      qrReplicarCRM.SQL.Add('AND CODPROD IN (SELECT CODPROD FROM PCPRODUT WHERE CODPRODPRINC = (SELECT CODPRODPRINC FROM PCPRODUT WHERE CODPROD = :CODPROD)) ');
    end;

    qrReplicarCRM.ParamByName('CODPROD').AsInteger := qryEmbalagens.FieldByName('CODPROD').AsInteger;

    if (not pREPLICAPTABELAFILIAIS) or (not DmLogin.validaPermissao530(18)) then
    begin
      qrReplicarCRM.SQL.Add('AND CODFILIAL IN ('+ frmPrecificacao.getFiliaisSelecionadas +')');
    end;

    qrReplicarCRM.ExecSQL;

    //CLIENTES ATACADO
    qrReplicarCRM.Close;
    qrReplicarCRM.SQL.Clear;


    qrReplicarCRM.SQL.Add('UPDATE PCDESCONTOFIDELIDADE SET PERCDESCONTOTABELA = :PERCDESCONTOTABELA, PTABELACRM = :PTABELACRM, DTULTALTPTABELACRM = SYSDATE');
    qrReplicarCRM.SQL.Add('WHERE CODCLICONVENIO = (SELECT PCCONSUM.CODCLICRMATACADO FROM PCCONSUM WHERE ROWNUM = 1)');
    qrReplicarCRM.SQL.Add('AND TIPOTERCEIROPRECO = ''A'' ');

    if qryEmbalagens.FieldByName('PTABELAATAC').AsFloat <  qryEmbalagens.FieldByName('PTABELACRM').AsFloat then
    begin
       percAtacado := 0;
    end
    else
    begin
      percAtacado := getDiferencaEntreMargens(qryEmbalagens.FieldByName('PTABELAATAC').AsFloat, qryEmbalagens.FieldByName('PTABELACRM').AsFloat);
    end;

    qrReplicarCRM.ParamByName('PERCDESCONTOTABELA').AsFloat := percAtacado;
    qrReplicarCRM.ParamByName('PTABELACRM').AsFloat := qryEmbalagens.FieldByName('PTABELACRM').AsFloat;

    if not pREPLICAPTABELAFAMILIA then
    begin
      qrReplicarCRM.SQL.Add('AND CODPROD = :CODPROD');
    end
    else
    begin
      qrReplicarCRM.SQL.Add('AND CODPROD IN (SELECT CODPROD FROM PCPRODUT WHERE CODPRODPRINC = (SELECT CODPRODPRINC FROM PCPRODUT WHERE CODPROD = :CODPROD)) ');
    end;

    qrReplicarCRM.ParamByName('CODPROD').AsInteger := qryEmbalagens.FieldByName('CODPROD').AsInteger;

    if (not pREPLICAPTABELAFILIAIS) or (not DmLogin.validaPermissao530(18)) then
    begin
      qrReplicarCRM.SQL.Add('AND CODFILIAL IN ('+ frmPrecificacao.getFiliaisSelecionadas +')');
    end;

    qrReplicarCRM.ExecSQL;

  finally
    qrReplicarCRM.Close;
    qrReplicarCRM.Free;
  end;
  }

end;

procedure TDMPrecificacao.replicarPrecoFixo;
var
  qrReplicar : TUniQuery;
begin
  try
    qrReplicar := TUniQuery.Create(nil);
    qrReplicar.Connection := DmLogin.Conexao;
    qrReplicar.Close;
    qrReplicar.SQL.Clear;

    qrReplicar.SQL.Add('UPDATE PCEMBALAGEM SET PRECOFIXO = :PRECOFIXO WHERE 1=1 ');
    qrReplicar.ParamByName('PRECOFIXO').AsString := qryEmbalagens.FieldByName('PRECOFIXO').AsString;


    if not pREPLICAPTABELAFAMILIA then
    begin
      qrReplicar.SQL.Add('AND CODPROD = :CODPROD');
    end
    else
    begin
      qrReplicar.SQL.Add('AND CODPROD IN (SELECT CODPROD FROM PCPRODUT WHERE CODPRODPRINC = (SELECT CODPRODPRINC FROM PCPRODUT WHERE CODPROD = :CODPROD))');
    end;

    qrReplicar.ParamByName('CODPROD').AsInteger := qryEmbalagens.FieldByName('CODPROD').AsInteger;

    if not pREPLICAPTABELAFILIAIS then
    begin
        qrReplicar.SQL.Add('AND CODFILIAL IN ('+ frmPrecificacao.getFiliaisSelecionadas +')')
    end;

    if not pREPLICAPTABELAEMBALAGEM then
    begin
      qrReplicar.SQL.Add('AND CODAUXILIAR = :CODAUXILIAR');
      qrReplicar.ParamByName('CODAUXILIAR').AsString := qryEmbalagens.FieldByName('CODAUXILIAR').AsString;
    end;

    qrReplicar.ExecSQL;

  finally
    qrReplicar.Close;
    qrReplicar.Free;
  end;

end;

procedure TDMPrecificacao.replicarPrecoFixoCluster;
var
  qrReplicar : TUniQuery;
begin
  try
    qrReplicar := TUniQuery.Create(nil);
    qrReplicar.Connection := DmLogin.Conexao;
    qrReplicar.Close;
    qrReplicar.SQL.Clear;

    qrReplicar.SQL.Add('UPDATE PCEMBALAGEM SET PRECOFIXO = :PRECOFIXO WHERE 1=1 ');
    qrReplicar.ParamByName('PRECOFIXO').AsString := qryEmbCluster.FieldByName('PRECOFIXO').AsString;


    if not pREPLICAPTABELAFAMILIA then
    begin
      qrReplicar.SQL.Add('AND CODPROD = :CODPROD');
    end
    else
    begin
      qrReplicar.SQL.Add('AND CODPROD IN (SELECT CODPROD FROM PCPRODUT WHERE CODPRODPRINC = (SELECT CODPRODPRINC FROM PCPRODUT WHERE CODPROD = :CODPROD))');
    end;

    qrReplicar.ParamByName('CODPROD').AsInteger := qryEmbCluster.FieldByName('CODPROD').AsInteger;

    qrReplicar.SQL.Add('AND CODFILIAL IN (SELECT CODFILIAL FROM I9GRUPOFILIALI WHERE CODGRUPO = :CODGRUPO)');
    qrReplicar.ParamByName('CODGRUPO').AsInteger := qryEmbCluster.FieldByName('CODGRUPO').AsInteger;

    if not pREPLICAPTABELAEMBALAGEM then
    begin
      qrReplicar.SQL.Add('AND CODAUXILIAR = :CODAUXILIAR');
      qrReplicar.ParamByName('CODAUXILIAR').AsString := qryEmbCluster.FieldByName('CODAUXILIAR').AsString;
    end;

    qrReplicar.ExecSQL;

  finally
    qrReplicar.Close;
    qrReplicar.Free;
  end;
end;

procedure TDMPrecificacao.replicarPrecoVendaAutomatico;
var
  qrReplicarPvenda : TUniQuery;
begin
  try
    qrReplicarPvenda := TUniQuery.Create(nil);
    qrReplicarPvenda.Connection := DmLogin.Conexao;
    qrReplicarPvenda.Close;
    qrReplicarPvenda.SQL.Clear;

    qrReplicarPvenda.SQL.Add('UPDATE PCEMBALAGEM SET PVENDA = PTABELA, PVENDAATAC = PTABELAATAC WHERE 1=1 ');

    if not pREPLICAPVENDAFAMILIA then
    begin
      qrReplicarPvenda.SQL.Add('AND CODPROD = :CODPROD');
    end
    else
    begin
      qrReplicarPvenda.SQL.Add('AND CODPROD IN (SELECT CODPROD FROM PCPRODUT WHERE CODPRODPRINC = (SELECT CODPRODPRINC FROM PCPRODUT WHERE CODPROD = :CODPROD))');
    end;

    qrReplicarPvenda.ParamByName('CODPROD').AsInteger := qryEmbalagens.FieldByName('CODPROD').AsInteger;

    if (not pREPLICAPVENDAFILIAIS) or (not DmLogin.validaPermissao530(18)) then
    begin
      qrReplicarPvenda.SQL.Add('AND CODFILIAL IN ('+frmPrecificacao.getFiliaisSelecionadas+')');
    end;

    if not pREPLICAPVENDAEMBALAGEM then
    begin
      qrReplicarPvenda.SQL.Add('AND CODAUXILIAR = :CODAUXILIAR');
      qrReplicarPvenda.ParamByName('CODAUXILIAR').AsString := qryEmbalagens.FieldByName('CODAUXILIAR').AsString;
    end;

    qrReplicarPvenda.ExecSQL;

  finally
    qrReplicarPvenda.Close;
    qrReplicarPvenda.Free;
  end;

end;

procedure TDMPrecificacao.replicarPrecoVendaAutomaticoCluster;
var
  qrReplicarPvenda : TUniQuery;
begin
  try
    qrReplicarPvenda := TUniQuery.Create(nil);
    qrReplicarPvenda.Connection := DmLogin.Conexao;
    qrReplicarPvenda.Close;
    qrReplicarPvenda.SQL.Clear;

    qrReplicarPvenda.SQL.Add('UPDATE PCEMBALAGEM SET PVENDA = PTABELA, PVENDAATAC = PTABELAATAC WHERE 1=1 ');

    if not pREPLICAPVENDAFAMILIA then
    begin
      qrReplicarPvenda.SQL.Add('AND CODPROD = :CODPROD');
    end
    else
    begin
      qrReplicarPvenda.SQL.Add('AND CODPROD IN (SELECT CODPROD FROM PCPRODUT WHERE CODPRODPRINC = (SELECT CODPRODPRINC FROM PCPRODUT WHERE CODPROD = :CODPROD))');
    end;

    qrReplicarPvenda.ParamByName('CODPROD').AsInteger := qryEmbCluster.FieldByName('CODPROD').AsInteger;


    qrReplicarPvenda.SQL.Add('AND CODFILIAL IN (SELECT CODFILIAL FROM I9GRUPOFILIALI WHERE CODGRUPO = :CODGRUPO)');
    qrReplicarPvenda.ParamByName('CODGRUPO').AsInteger := qryEmbCluster.FieldByName('CODGRUPO').AsInteger;


    if not pREPLICAPVENDAEMBALAGEM then
    begin
      qrReplicarPvenda.SQL.Add('AND CODAUXILIAR = :CODAUXILIAR');
      qrReplicarPvenda.ParamByName('CODAUXILIAR').AsString := qryEmbCluster.FieldByName('CODAUXILIAR').AsString;
    end;

    qrReplicarPvenda.ExecSQL;

  finally
    qrReplicarPvenda.Close;
    qrReplicarPvenda.Free;
  end;
end;

procedure TDMPrecificacao.replicarPrecoVendaCRM;
var
  qrReplicarPvenda : TUniQuery;
begin
  try
    qrReplicarPvenda := TUniQuery.Create(nil);
    qrReplicarPvenda.Connection := DmLogin.Conexao;
    qrReplicarPvenda.Close;
    qrReplicarPvenda.SQL.Clear;

    qrReplicarPvenda.SQL.Add('UPDATE PCDESCONTOFIDELIDADE SET PVENDACRM = PTABELACRM, PERCDESCONTO = PERCDESCONTOTABELA, DTULTALTPVENDACRM = SYSDATE ');
    qrReplicarPvenda.SQL.Add('WHERE ((CODCLICONVENIO = (SELECT PCCONSUM.CODCLICRMGERAL FROM PCCONSUM WHERE ROWNUM = 1)) OR ');
    qrReplicarPvenda.SQL.Add('       (CODCLICONVENIO = (SELECT PCCONSUM.CODCLICRMATACADO FROM PCCONSUM WHERE ROWNUM = 1))) ');
    qrReplicarPvenda.SQL.Add('AND TIPOTERCEIROPRECO IN (''A'', ''G'') ');

    if not pREPLICAPVENDAFAMILIA then
    begin
      qrReplicarPvenda.SQL.Add('AND CODPROD = :CODPROD');
    end
    else
    begin
      qrReplicarPvenda.SQL.Add('AND CODPROD IN (SELECT CODPROD FROM PCPRODUT WHERE CODPRODPRINC = (SELECT CODPRODPRINC FROM PCPRODUT WHERE CODPROD = :CODPROD))');
    end;

    qrReplicarPvenda.ParamByName('CODPROD').AsInteger := qryEmbalagens.FieldByName('CODPROD').AsInteger;

    if (not pREPLICAPVENDAFILIAIS) or (not DmLogin.validaPermissao530(18)) then
    begin
      qrReplicarPvenda.SQL.Add('AND CODFILIAL IN ('+frmPrecificacao.getFiliaisSelecionadas+')');
    end;

    if not pREPLICAPVENDAEMBALAGEM then
    begin
      qrReplicarPvenda.SQL.Add('AND CODAUXILIAR = :CODAUXILIAR');
      qrReplicarPvenda.ParamByName('CODAUXILIAR').AsString := qryEmbalagens.FieldByName('CODAUXILIAR').AsString;
    end;

    qrReplicarPvenda.ExecSQL;

  finally
    qrReplicarPvenda.Close;
    qrReplicarPvenda.Free;
  end;

end;

function TDMPrecificacao.getFiliaisPermitidas: TStringList;
var
   qryLocal: TUniQuery;
begin
   result := TStringList.create;
   qryLocal := TUniQuery.create(nil);
   try
      with qryLocal do
      begin
         Connection := DmLogin.Conexao;
         close;
         SQL.Clear;
         SQL.Add('SELECT DISTINCT PCFILIAL.CODIGO, RAZAOSOCIAL  ');
         SQL.Add('  FROM PCLIB, PCFILIAL                        ');
         SQL.Add(' WHERE PCFILIAL.CODIGO = PCLIB.CODIGOA        ');
         SQL.Add('       AND PCFILIAL.CODIGO <> (''99'')        ');
         SQL.Add('       AND PCLIB.CODFUNC = :CODFUNC           ');
         SQL.Add(' ORDER BY PCFILIAL.CODIGO                     ');
         ParamByName('CODFUNC').AsInteger := dmlogin.Matricula;
         Open;
         First;
         while not Eof do
         begin
            result.Add(FieldbyName('CODIGO').AsString);
            Next;
         end;
      end;
   finally
      qryLocal.free;
   end;
end;

function TDMPrecificacao.getFilialSelecionada: String;
begin
  Result := qryEmbalagens.FieldByName('CODFILIAL').AsString;
end;

end.
