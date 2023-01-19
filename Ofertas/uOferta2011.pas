unit uOferta2011;

interface

type

  TOferta2011 = class

  private
    FhoraFinal: String;
    FhoraInicial: String;
    Fdescricao: String;
    FcodOferta: Double;
    FcodFilial: String;
    FdataFinal: TDate;
    FdataInicial: TDate;
    Ftipo_oferta: String;
    FtipoVerba: String;
    FgeraverbaCabecalho: String;
    FgeraverbaItens: String;
    FvlunitarioVerba: Double;
    FvltotalVerba: Double;
    FdtApuracaoINI: TDate;
    FdtApuracaoFim: TDate;
    FqtMaxVenda: Double;
    FofertaRelampago: String;
    FofertaFamilia: string;
    FcodTabloide : Double;
    procedure SetcodFilial(const Value: String);
    procedure SetcodOferta(const Value: Double);
    procedure SetdataFinal(const Value: TDate);
    procedure SetdataInicial(const Value: TDate);
    procedure Setdescricao(const Value: String);
    procedure SethoraFinal(const Value: String);
    procedure SethoraInicial(const Value: String);
    procedure Settipo_oferta(const Value: String);
    procedure SetgeraverbaCabecalho(const Value: String);
    procedure SetgeraverbaItens(const Value: String);
    procedure SettipoVerba(const Value: String);
    procedure SetvltotalVerba(const Value: Double);
    procedure SetvlunitarioVerba(const Value: Double);
    procedure SetdtApuracaoFim(const Value: TDate);
    procedure SetdtApuracaoINI(const Value: TDate);
    procedure SetqtMaxVenda(const Value: Double);
    procedure SetofertaRelampago(const Value: String);
    procedure SetofertaFamilia(const Value: string);
    procedure SetcodTabloide(const Value: Double);
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
  published
    { published declarations }
    property codOferta : Double read FcodOferta write SetcodOferta;
    property codFilial : String read FcodFilial write SetcodFilial;
    property descricao : String read Fdescricao write Setdescricao;
    property horaInicial : String read FhoraInicial write SethoraInicial;
    property horaFinal : String read FhoraFinal write SethoraFinal;
    property dataInicial : TDate read FdataInicial write SetdataInicial;
    property dataFinal : TDate read FdataFinal write SetdataFinal;
    property tipo_oferta : String read Ftipo_oferta write Settipo_oferta;
    property geraverbaCabecalho : String read FgeraverbaCabecalho write SetgeraverbaCabecalho;
    property tipoVerba : String read FtipoVerba write SettipoVerba;
    property vltotalVerba : Double read FvltotalVerba write SetvltotalVerba;
    property geraverbaItens : String read FgeraverbaItens write SetgeraverbaItens;
    property vlunitarioVerba : Double read FvlunitarioVerba write SetvlunitarioVerba;
    property dtApuracaoINI : TDate read FdtApuracaoINI write SetdtApuracaoINI;
    property dtApuracaoFim : TDate read FdtApuracaoFim write SetdtApuracaoFim;
    property qtMaxVenda : Double read FqtMaxVenda write SetqtMaxVenda;
    property ofertaRelampago  : String read FofertaRelampago write SetofertaRelampago;
    property ofertaFamilia : string read FofertaFamilia write SetofertaFamilia;
    property codTabloide : Double read FcodTabloide write SetcodTabloide;

  end;

implementation


{ TOferta2011 }

procedure TOferta2011.SetcodFilial(const Value: String);
begin
  FcodFilial := Value;
end;

procedure TOferta2011.SetcodOferta(const Value: Double);
begin
  FcodOferta := Value;
end;

procedure TOferta2011.SetdataFinal(const Value: TDate);
begin
  FdataFinal := Value;
end;

procedure TOferta2011.SetdataInicial(const Value: TDate);
begin
  FdataInicial := Value;
end;

procedure TOferta2011.Setdescricao(const Value: String);
begin
  Fdescricao := Value;
end;

procedure TOferta2011.SetdtApuracaoFim(const Value: TDate);
begin
  FdtApuracaoFim := Value;
end;

procedure TOferta2011.SetdtApuracaoINI(const Value: TDate);
begin
  FdtApuracaoINI := Value;
end;

procedure TOferta2011.SetgeraverbaCabecalho(const Value: String);
begin
  FgeraverbaCabecalho := Value;
end;

procedure TOferta2011.SetgeraverbaItens(const Value: String);
begin
  FgeraverbaItens := Value;
end;

procedure TOferta2011.SethoraFinal(const Value: String);
begin
  FhoraFinal := Value;
end;

procedure TOferta2011.SethoraInicial(const Value: String);
begin
  FhoraInicial := Value;
end;

procedure TOferta2011.SetofertaFamilia(const Value: string);
begin
  FofertaFamilia := Value;
end;

procedure TOferta2011.SetofertaRelampago(const Value: String);
begin
  FofertaRelampago := Value;
end;

procedure TOferta2011.SetqtMaxVenda(const Value: Double);
begin
  FqtMaxVenda := Value;
end;

procedure TOferta2011.SettipoVerba(const Value: String);
begin
  FtipoVerba := Value;
end;

procedure TOferta2011.Settipo_oferta(const Value: String);
begin
  Ftipo_oferta := Value;
end;

procedure TOferta2011.SetcodTabloide(const Value: Double);
begin
  FcodTabloide := Value;
end;


procedure TOferta2011.SetvltotalVerba(const Value: Double);
begin
  FvltotalVerba := Value;
end;

procedure TOferta2011.SetvlunitarioVerba(const Value: Double);
begin
  FvlunitarioVerba := Value;
end;

end.
