unit uDMPrincipal;

interface

uses
  System.SysUtils, System.Classes, Uni;

type
  TDMPrincipal = class(TDataModule)
  private
    { Private declarations }
  public
    function getPrecoArredondado(pPreco:double): double;
  end;

var
  DMPrincipal: TDMPrincipal;

implementation

uses
  uLogin;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDMPrincipal }

function TDMPrincipal.getPrecoArredondado(pPreco: double): double;
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

end.
