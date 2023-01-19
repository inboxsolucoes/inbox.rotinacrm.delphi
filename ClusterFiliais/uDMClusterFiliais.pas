unit uDMClusterFiliais;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni,
  Datasnap.DBClient;

type
  TdmClusterFiliais = class(TDataModule)
    cdsFiliaisIncluidas: TClientDataSet;
    cdsFiliaisIncluidasCODIGO: TStringField;
    cdsFiliaisIncluidasRAZAOSOCIAL: TStringField;
    cdsFiliaisIncluidasINCLUIDO: TStringField;
    cdsFiliaisIncluidasCODCAMPANHACRM: TIntegerField;
    dsFiliaisIncluidas: TDataSource;
    qrFiliaisDisponiveis: TUniQuery;
    dsFiliaisDisponiveis: TDataSource;
    cdsFiliaisDisponiveis: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    qrAux: TUniQuery;
    qrProxCodGrupo: TUniQuery;
    qrIncluirI9GrupoFilialC: TUniQuery;
    qrIncluirI9GrupoFilialI: TUniQuery;
    qrFiliaisIncluidas: TUniQuery;
    cdsConcorrentesIncluidos: TClientDataSet;
    dsConcorrentesIncluidos: TDataSource;
    qrConcorrentesIncluidos: TUniQuery;
    qrConcorrentesDisponiveis: TUniQuery;
    dsConcorrentesDisponiveis: TDataSource;
    cdsConcorrentesDisponiveis: TClientDataSet;
    StringField7: TStringField;
    cdsConcorrentesDisponiveisCONCORRENTE: TStringField;
    cdsConcorrentesIncluidosCODIGO: TStringField;
    cdsConcorrentesIncluidosCONCORRENTE: TStringField;
    cdsConcorrentesIncluidosCODGRUPO: TStringField;
    qrIncluirGrupoConcorrente: TUniQuery;
    qrPesquisarCluster: TUniQuery;
  private
    { Private declarations }
  public
    function getProxCodCluster():Integer;
    { Public declarations }
  end;

var
  dmClusterFiliais: TdmClusterFiliais;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmClusterFiliais }

function TdmClusterFiliais.getProxCodCluster: Integer;
begin
  qrProxCodGrupo.Close;
  qrProxCodGrupo.Open;
  Result := qrProxCodGrupo.FieldByName('PROXCODGRUPO').AsInteger;
end;

end.
