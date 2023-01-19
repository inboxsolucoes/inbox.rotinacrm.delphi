unit uDMListasDePrecificacao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni,
  Datasnap.DBClient, Datasnap.Provider;

type
  TDMListasDePrecificacao = class(TDataModule)
    qrAux: TUniQuery;
    qrFiliais: TUniQuery;
    dsFiliais: TUniDataSource;
    qrPesquisaProdutos: TUniQuery;
    dsPesquisaOfertas: TUniDataSource;
    cdsListaProdutosInseridos: TClientDataSet;
    cdsListaProdutosInseridosCODPROD: TIntegerField;
    cdsListaProdutosInseridosDESCRICAO: TStringField;
    dsListaProdutosInseridos: TDataSource;
    cdsListaProdutosInseridosCODAUXILIAR: TFloatField;
    qrInsereLista: TUniQuery;
    qrPesquisaLista: TUniQuery;
    qrDeletarLista: TUniQuery;
  private
    procedure refreshGrid;
    { Private declarations }
  public
    { Public declarations }
    function getProxCodLista :double;
    procedure inserirItemLista(pCodprod:Integer;pCodauxiliar:string;pDescricao:string);
    procedure insereLista(MATRICULA,CODLISTA : Integer; DESCRICAO : String);
    procedure removelista(pCodLista:Integer);

  end;

var
  DMListasDePrecificacao: TDMListasDePrecificacao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uLogin;

{$R *.dfm}

{ TDMListasDePrecificacao }



function TDMListasDePrecificacao.getProxCodLista :double;
begin
  result := 0;
  with DMListasDePrecificacao.qrAux do
  begin
     close;
     sql.Clear;
     sql.Add('SELECT I9LISTAPRECIFICACAO_DFSEQ.NEXTVAL FROM DUAL');
     open;
     if not isempty then
        result := fields[0].value;
  end;
end;

//Insere item escolhido na lista de oferta.
procedure TDMListasDePrecificacao.insereLista(MATRICULA,CODLISTA : Integer; DESCRICAO : String);
begin
  cdsListaProdutosInseridos.First;
  while not cdsListaProdutosInseridos.Eof do begin
    qrInsereLista.Close;
    qrInsereLista.ParamByName('MATRICULA').AsInteger:= MATRICULA;
    qrInsereLista.ParamByName('CODLISTA').AsInteger:= CODLISTA;
    qrInsereLista.ParamByName('DESCRICAO').AsString:= DESCRICAO;
    qrInsereLista.ParamByName('CODAUXILIAR').AsFloat:= cdsListaProdutosInseridos.FieldByName('CODAUXILIAR').AsFloat;
    qrInsereLista.ParamByName('CODPROD').AsFloat:= cdsListaProdutosInseridos.FieldByName('CODPROD').AsFloat;
    qrInsereLista.ExecSQL;

    cdsListaProdutosInseridos.Next;
  end;
end;

procedure TDMListasDePrecificacao.refreshGrid;
var
  recno: Integer;
begin
  recno := qrPesquisaProdutos.RecNo;
  qrPesquisaProdutos.Close;
  qrPesquisaProdutos.Open;
  qrPesquisaProdutos.RecNo := recno;
end;

procedure TDMListasDePrecificacao.removelista(pCodLista: Integer);
begin
  qrDeletarLista.ParamByName('CODLISTA').AsInteger := pCodLista;
  qrDeletarLista.ExecSQL;
end;

procedure TDMListasDePrecificacao.inserirItemLista(pCodprod:Integer;pCodauxiliar:string;pDescricao:string);
begin
  //Insere item na lista.
  cdsListaProdutosInseridos.Append;
  cdsListaProdutosInseridos.FieldByName('CODPROD').AsInteger:= pCodprod;
  cdsListaProdutosInseridos.FieldByName('CODAUXILIAR').AsString:= pCodauxiliar;
  cdsListaProdutosInseridos.FieldByName('DESCRICAO').AsString:=  pDescricao;
  cdsListaProdutosInseridos.Post;
  refreshGrid; //atualiza grid de ofertas.
end;

end.
