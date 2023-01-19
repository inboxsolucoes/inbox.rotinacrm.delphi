unit uDMPesquisaConforrente;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni,
  Datasnap.DBClient, MidasLib;

type
  TDMPesquisaConforrente = class(TDataModule)
    cdsPesquisaConcorrente: TClientDataSet;
    dsPesquisaConcorrente: TDataSource;
    cdsPesquisaConcorrenteCODCONC: TStringField;
    cdsPesquisaConcorrenteCONCORRENTE: TStringField;
    cdsPesquisaConcorrenteCODFUNC: TIntegerField;
    cdsPesquisaConcorrenteFUNCIONARIO: TStringField;
    qrPesqProdutos: TUniQuery;
    dsPesqProdutos: TUniDataSource;
    cdsProdutosIncluidos: TClientDataSet;
    dsProdutosIncluidos: TDataSource;
    cdsProdutosIncluidosDESCRICAOECF: TStringField;
    cdsProdutosIncluidosCODAUXILIAR: TStringField;
    cdsProdutosIncluidosEMBALAGEM: TStringField;
    cdsProdutosIncluidosCODPROD: TFloatField;
    qrFiliais: TUniQuery;
    dsFiliais: TUniDataSource;
    qrAux: TUniQuery;
    qrCotaP: TUniQuery;
    qrCota: TUniQuery;
    qrPesqConco: TUniQuery;
    dsPesqConco: TUniDataSource;
    qrProxCodConcorrente: TUniQuery;
    qrConcorrentes: TUniQuery;
    qrIncluirConcorrente: TUniQuery;
    qryConcorrentesDisponiveisFilial: TUniQuery;
    qryConcorrentesVinculadosFilial: TUniQuery;
    dsConcorrentesDisponiveisFilial: TDataSource;
    dsConcorrentesVinculadosFilial: TDataSource;
    qryConcorrentesDisponiveisFilialCODCONC: TStringField;
    qryConcorrentesDisponiveisFilialCONCORRENTE: TStringField;
    qryConcorrentesVinculadosFilialCODCONC: TStringField;
    qryConcorrentesVinculadosFilialCONCORRENTE: TStringField;
    qryConcorrentesDisponiveisCluster: TUniQuery;
    CODCONC: TStringField;
    CONCORRENTE: TStringField;
    qryConcorrentesVinculadosCluster: TUniQuery;
    StringField6: TStringField;
    StringField7: TStringField;
    dsConcorrentesDisponiveisCluster: TDataSource;
    dsConcorrentesVinculadosCluster: TDataSource;
    qryConcorrentesVinculadosFilialCODFILIAL: TStringField;
    qryConcorrentesVinculadosClusterCODGRUPO: TLargeintField;
    qrClusterConcorrente: TUniQuery;
    cdsPesquisaConcorrenteCODGRUPO: TIntegerField;
    cdsPesquisaConcorrenteDESCRICAO: TStringField;
    cdsPesquisaConcorrenteCODFILIALPRINC: TStringField;
    qrConsultaPCCOTAI: TUniQuery;
    dsConsultaPCCOTAI: TDataSource;
    qrConsultaPCCOTAICODFILIAL: TStringField;
    qrConsultaPCCOTAINUMPESQUISA: TLargeintField;
    qrConsultaPCCOTAICODPROD: TIntegerField;
    qrConsultaPCCOTAIDESCRICAO: TStringField;
    qrConsultaPCCOTAIPVENDA: TFloatField;
    qrConsultaPCCOTAIPVENDAATAC: TFloatField;
    qrConsultaPCCOTAICODCONC: TStringField;
    qrConsultaPCCOTAICONCORRENTE: TStringField;
    qrConsultaPCCOTAIPVENDACONCORRENTE: TFloatField;
    qrConsultaPCCOTAIPVENDATACCONCORRENTE: TFloatField;
    qrConsultaPCCOTAIPVENDACRMCONCORRENTE: TFloatField;
    qrConsultaPCCOTAICUSTOFIN: TFloatField;
    qrConsultaPCCOTAIDATACOTACAO: TDateTimeField;
    qrConsultaPCCOTAIMARGEMMINVAREJO: TFloatField;
    qrConsultaPCCOTAIMARGEMMINATAC: TFloatField;
    qrConsultaPCCOTAIMARGEMATAC: TFloatField;
    qrConsultaPCCOTAIMARGEMVAREJO: TFloatField;
    qrConsultaPCCOTAIMARGEMCONCORRENTEVAREJO: TFloatField;
    qrConsultaPCCOTAIMARGEMCONCORRENTEATACADO: TFloatField;
    qrConsultaPCCOTAICUSTOIDEALVAREJO: TFloatField;
    qrConsultaPCCOTAICUSTOIDEALATACADO: TFloatField;
    qrConsultaPCCOTAIDESCPESQUISA: TStringField;
    qrConsultaPCCOTAIPRODUTOFIFO: TStringField;
    qrConsultaPCCOTAIPRODUTOFERTA: TStringField;
    qrConsultaPCCOTAII9URLFOTO: TStringField;
    qrConsultaPCCOTAITEMFOTO: TStringField;
    qrConsultaPCCOTAICODFORNEC: TIntegerField;
    qrConsultaPCCOTAIFORNECEDOR: TStringField;
    qrConsultaPCCOTAICODCOMPRADOR: TIntegerField;
    qrConsultaPCCOTAICOMPRADOR: TStringField;
    qrConsultaPCCOTAICODEPTO: TIntegerField;
    qrConsultaPCCOTAIDEPARTAMENTO: TStringField;
    qrConsultaPCCOTAICODSEC: TIntegerField;
    qrConsultaPCCOTAISECAO: TStringField;
    qrConsultaPCCOTAICODCATEGORIA: TIntegerField;
    qrConsultaPCCOTAICATEGORIA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure inserirProduto;
    procedure FinalizarPesquisa;
  end;

var
  DMPesquisaConforrente: TDMPesquisaConforrente;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uLogin, ufrmPesquisaConcorrente;

{$R *.dfm}

{ TDMPesquisaConforrente }

procedure TDMPesquisaConforrente.inserirProduto;
begin
  //cdsProdutosIncluidos.
  cdsProdutosIncluidos.Append;
  cdsProdutosIncluidos.FieldByName('CODPROD').AsFloat:= qrPesqProdutos.FieldByName('CODPROD').AsFloat;
  cdsProdutosIncluidos.FieldByName('DESCRICAOECF').AsString:= qrPesqProdutos.FieldByName('DESCRICAOECF').AsString;
  cdsProdutosIncluidos.FieldByName('EMBALAGEM').AsString:= qrPesqProdutos.FieldByName('EMBALAGEM').AsString;
  cdsProdutosIncluidos.FieldByName('CODAUXILIAR').AsString:= qrPesqProdutos.FieldByName('CODAUXILIAR').AsString;
  cdsProdutosIncluidos.Post;

  qrPesqProdutos.Edit;
  qrPesqProdutos.FieldByName('INCLUIDO').AsString:= 'S';
  qrPesqProdutos.Post;
end;

procedure TDMPesquisaConforrente.FinalizarPesquisa;
begin

  with qrAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE PCCOTAC WHERE NUMPESQUISA = :NUMPESQUISA');
    ParamByName('NUMPESQUISA').AsInteger := StrToInt(frmPesquisaConcorrente.cxCodConcorrente.Text);
    ExecSQL;
  end;

  //cdsProdutosIncluidos.
  cdsPesquisaConcorrente.First;
  while not cdsPesquisaConcorrente.Eof do
  begin
    qrCotaP.Close;
    qrCotaP.ParamByName('NUMPESQUISA').Value := frmPesquisaConcorrente.cxCodConcorrente.Text;
    qrCotaP.ParamByName('DESCRICAOPESQ').Value := frmPesquisaConcorrente.cxDescricao.Text;
    qrCotaP.ParamByName('CODCONCOR').AsInteger := cdsPesquisaConcorrente.FieldByName('CODCONC').AsInteger;
    qrCotaP.ParamByName('CODFUNCCAD').AsInteger := dmLogin.Matricula;
    qrCotaP.ParamByName('CODFUNCDIRECIONADO').AsString := cdsPesquisaConcorrente.FieldByName('CODFUNC').AsString;
    qrCotaP.ParamByName('CODFILIAL').AsString := cdsPesquisaConcorrente.FieldByName('CODFILIALPRINC').AsString;
    qrCotaP.ExecSQL;

    cdsProdutosIncluidos.First;
    while not cdsProdutosIncluidos.Eof do
    begin
      qrCota.Close;
      qrCota.ParamByName('NUMPESQUISA').Value :=  frmPesquisaConcorrente.cxCodConcorrente.Text;
      qrCota.ParamByName('MATRICULA').AsString := cdsPesquisaConcorrente.FieldByName('CODFUNC').AsString;
      qrCota.ParamByName('TIPO').AsString := 'D';
      qrCota.ParamByName('DESCRICAOPESQ').AsString := frmPesquisaConcorrente.cxDescricao.Text;
      qrCota.ParamByName('CODAUXILIAR').AsString := cdsProdutosIncluidos.FieldByName('CODAUXILIAR').AsString;
      qrCota.ParamByName('CODFILIAL').AsString := cdsPesquisaConcorrente.FieldByName('CODFILIALPRINC').AsString;
      qrCota.ExecSQL;
      cdsProdutosIncluidos.Next;
    end;

     cdsPesquisaConcorrente.Next;
  end;

  DMPesquisaConforrente.qrPesqProdutos.Close;
  DMPesquisaConforrente.cdsProdutosIncluidos.EmptyDataSet;
  DMPesquisaConforrente.qrPesqConco.Close;

end;

end.
