unit uDMTabloide;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni,
  Datasnap.DBClient, Datasnap.Provider;

type
  TDMTabloide = class(TDataModule)
    qrAux: TUniQuery;
    qrFiliais: TUniQuery;
    dsFiliais: TUniDataSource;
    qrPesquisaProdutos: TUniQuery;
    dsPesquisaOfertas: TUniDataSource;
    qrInsereTabloide: TUniQuery;
    qrPesquisaTabloide: TUniQuery;
    qrDeletarTabloide: TUniQuery;
    cdsFiliaisIncluidas: TClientDataSet;
    cdsFiliaisIncluidasCODIGO: TStringField;
    cdsFiliaisIncluidasRAZAOSOCIAL: TStringField;
    cdsFiliaisIncluidasINCLUIDO: TStringField;
    dsFiliaisIncluidas: TDataSource;
    qrFiliaisDisponiveis: TUniQuery;
    cdsFiliaisDisponiveis: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    dsFiliaisDisponiveis: TDataSource;
    qrInserirOferta: TUniQuery;
    qrCancelaOferta: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    function getProxCodTabloide :double;

  end;

var
  DMTabloide: TDMTabloide;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uLogin;

{$R *.dfm}

{ TDMTabloide }



function TDMTabloide.getProxCodTabloide :double;
begin
  result := 0;
  with DMTabloide.qrAux do
  begin
     close;
     sql.Clear;
     sql.Add('SELECT I9TABLOIDE_DFSEQ.NEXTVAL FROM DUAL');
     open;
     if not isempty then
        result := fields[0].value;
  end;
end;




end.
