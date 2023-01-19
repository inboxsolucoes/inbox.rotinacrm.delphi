unit uDMCadastroMargens;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni,
  Datasnap.DBClient;

type
  TdmCadastroMargens = class(TDataModule)
    qrProduto: TUniQuery;
    qrAux: TUniQuery;
    qrPesquisarMargens: TUniQuery;
    qrPesquisarMargensCODCLASSIFICMERC: TIntegerField;
    qrPesquisarMargensCODFILIAL: TStringField;
    qrPesquisarMargensCODDEPTO: TIntegerField;
    qrPesquisarMargensDESCRICAODEPTO: TStringField;
    qrPesquisarMargensCODSEC: TIntegerField;
    qrPesquisarMargensDESCRICAOSECAO: TStringField;
    qrPesquisarMargensCODCATEGORIA: TIntegerField;
    qrPesquisarMargensDESCRICAOCATEGORIA: TStringField;
    qrPesquisarMargensCODSUBCATEGORIA: TIntegerField;
    qrPesquisarMargensDESCRICAOSUBCATEGORIA: TStringField;
    qrPesquisarMargensCODPROD: TIntegerField;
    qrPesquisarMargensDESCRICAOPRODUTO: TStringField;
    qrPesquisarMargensMARGEMGARANTIDA: TFloatField;
    dsPesquisarMargens: TDataSource;
    qrInserirMargem: TUniQuery;
  private
    { Private declarations }
  public
    function getProxCodClassificMerc: Integer;
    { Public declarations }
  end;

var
  dmCadastroMargens: TdmCadastroMargens;

implementation

uses
  uLogin;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmCadastroMargens }

function TdmCadastroMargens.getProxCodClassificMerc: Integer;
begin
  result := 0;
  with qrAux do
  begin
     close;
     sql.Clear;
     sql.Add('SELECT I9CLASSIFICMERC_DFSEQ.NEXTVAL FROM DUAL');
     open;
     if not isempty then
        result := fields[0].value;
  end;
end;


end.
