unit ufrmGraficoConcorrente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,cxGroupBox, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  System.Actions, MemDS, DBAccess,
  Uni, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Data.DB, Vcl.ActnList, Vcl.ComCtrls, dxCore, cxDateUtils, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, DatasPadroes, DateUtils,
  dxSkinMetropolis, dxSkinVisualStudio2013Light, cxCheckBox, cxButtonEdit;

type
  TfrmGraficoConcorrente = class(TForm)
    cxBox: TcxGroupBox;
    ActionList1: TActionList;
    actFechar: TAction;
    btnCancelar: TcxButton;
    qryHistoricoConcorrente: TUniQuery;
    dsHistoricoConcorrente: TDataSource;
    tblHistoricoConcorrente: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    tblHistoricoConcorrenteDATALANC: TcxGridDBColumn;
    tblHistoricoConcorrenteCODFILIAL: TcxGridDBColumn;
    tblHistoricoConcorrenteCODPROD: TcxGridDBColumn;
    tblHistoricoConcorrenteCODAUXILIAR: TcxGridDBColumn;
    tblHistoricoConcorrenteDESCRICAO: TcxGridDBColumn;
    tblHistoricoConcorrenteEMBALAGEM: TcxGridDBColumn;
    tblHistoricoConcorrenteQTUNIT: TcxGridDBColumn;
    tblHistoricoConcorrenteCONCORRENTE: TcxGridDBColumn;
    tblHistoricoConcorrentePVENDACONCORRENTE: TcxGridDBColumn;
    tblHistoricoConcorrentePVENDAATACCONCORRENTE: TcxGridDBColumn;
    dtInicial: TcxDateEdit;
    dtFinal: TcxDateEdit;
    btnFiltros: TcxButton;
    dataComponente: TDatasPadroes;
    Label1: TLabel;
    Label2: TLabel;
    tblHistoricoConcorrentePVENDACRMCONCORRENTE: TcxGridDBColumn;
    tblHistoricoConcorrenteI9PRODUTOFIFO: TcxGridDBColumn;
    tblHistoricoConcorrenteI9PRODUTOOFERTA: TcxGridDBColumn;
    tblHistoricoConcorrenteI9URLFOTO: TcxGridDBColumn;
    tblHistoricoConcorrenteTEMFOTO: TcxGridDBColumn;
    procedure actFecharExecute(Sender: TObject);
    procedure btnFiltrosClick(Sender: TObject);
    procedure tblHistoricoConcorrenteI9URLFOTOPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
  private
    vIsCluster : Boolean;
    { Private declarations }
  public
    procedure Exibir(pCodprod:Integer;pCodFilial:String; pIsCluster:Boolean = False);
  end;

var
  frmGraficoConcorrente: TfrmGraficoConcorrente;
  vCodfilial:string;
  vCodprod:Integer;


implementation

{$R *.dfm}

uses uLogin, uFrmImagemCotacao;

{ TfrmGraficoConcorrente }

procedure TfrmGraficoConcorrente.actFecharExecute(Sender: TObject);
begin
  qryHistoricoConcorrente.Close;
  Close;
end;

procedure TfrmGraficoConcorrente.btnFiltrosClick(Sender: TObject);
begin
  if (dtInicial.Text <> '')  and (dtFinal.Text <> '') then
  begin
    qryHistoricoConcorrente.Close;
    qryHistoricoConcorrente.ParamByName('CODPROD').AsInteger := vCodprod;
    qryHistoricoConcorrente.ParamByName('DTINICIAL').AsDate := dtInicial.Date;
    qryHistoricoConcorrente.ParamByName('DTFINAL').AsDate := dtFinal.Date;

    if self.vIsCluster then
      qryHistoricoConcorrente.ParamByName('CODGRUPO').AsString := vCodfilial
    else
      qryHistoricoConcorrente.ParamByName('CODFILIAL').AsString := vCodfilial;

    qryHistoricoConcorrente.Open;
  end;
end;

procedure TfrmGraficoConcorrente.Exibir(pCodprod: Integer; pCodFilial: String; pIsCluster:Boolean = False);
begin
  vCodfilial := pCodFilial;
  vIsCluster := pIsCluster;
  vCodprod := pCodprod;
  dtInicial.Date := dmLogin.Hoje-30;
  dtFinal.Date := dmLogin.Hoje;

  if pIsCluster then
  begin
    qryHistoricoConcorrente.Close;
    qryHistoricoConcorrente.RestoreSQL;
    qryHistoricoConcorrente.AddWhere(' PCEMBALAGEM.CODFILIAL = PCCOTAI.CODFILIAL ');
    qryHistoricoConcorrente.AddWhere(' PCCOTAI.CODFILIAL IN ( SELECT CODFILIAL FROM I9GRUPOFILIALI WHERE CODGRUPO = :CODGRUPO) ');
    qryHistoricoConcorrente.ParamByName('CODPROD').AsInteger := vCodprod;
    qryHistoricoConcorrente.ParamByName('CODGRUPO').AsString := vCodfilial;
    qryHistoricoConcorrente.ParamByName('DTINICIAL').AsDate := IncDay(Now, -30);
    qryHistoricoConcorrente.ParamByName('DTFINAL').AsDate := Now;
    qryHistoricoConcorrente.Open;
  end
  else
  begin
    qryHistoricoConcorrente.Close;
    qryHistoricoConcorrente.RestoreSQL;
    qryHistoricoConcorrente.AddWhere(' PCEMBALAGEM.CODFILIAL = PCCOTAI.CODFILIAL ');
    qryHistoricoConcorrente.AddWhere(' PCCOTAI.CODFILIAL IN (SELECT CODFILIAL FROM I9GRUPOFILIALI WHERE CODGRUPO = (SELECT CODGRUPO FROM I9GRUPOFILIALI WHERE CODFILIAL = :CODFILIAL ))');
    qryHistoricoConcorrente.ParamByName('CODPROD').AsInteger := vCodprod;
    qryHistoricoConcorrente.ParamByName('CODFILIAL').AsString := vCodfilial;
    qryHistoricoConcorrente.ParamByName('DTINICIAL').AsDate := IncDay(Now, -30);
    qryHistoricoConcorrente.ParamByName('DTFINAL').AsDate := Now;
    qryHistoricoConcorrente.Open;
  end;



end;

procedure TfrmGraficoConcorrente.tblHistoricoConcorrenteI9URLFOTOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
    if qryHistoricoConcorrente.FieldByName('I9URLFOTO').AsString <> '' then
    begin
      try
        Application.CreateForm(TfrmImagemCotacao, frmImagemCotacao);
        frmImagemCotacao.Exibir(qryHistoricoConcorrente.FieldByName('I9URLFOTO').AsString);
        frmImagemCotacao.ShowModal;
      finally
        frmImagemCotacao.Free;
      end;
    end;
end;

end.
