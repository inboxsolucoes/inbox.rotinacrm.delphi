unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxClasses, cxLookAndFeels, dxSkinsForm, dxGDIPlusClasses,
  cxGraphics, cxControls, cxLookAndFeelPainters, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxPC, cxContainer, cxEdit, cxGroupBox, Vcl.Menus,
  cxRadioGroup, Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, MemDS,
  DBAccess, Uni, System.Actions, Vcl.ActnList, cxCheckBox, cxCurrencyEdit,
  dxSkinsdxStatusBarPainter, dxStatusBar, dxSkinsCore, dxSkinMetropolis,
  dxSkinVisualStudio2013Light, ufrmLog, dxSkinMetropolisDark,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2013White,
  dxSkinOffice2016Dark;

type
  TfrmPrincipal = class(TForm)
    pcPrincipal: TcxPageControl;
    pgInicial: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    btnPrecificacao: TcxButton;
    btnCotacao: TcxButton;
    btnParametricoes: TcxButton;
    pgParametros: TcxTabSheet;
    cxGroupBox2: TcxGroupBox;
    cxGrid2: TcxGrid;
    tblParametros: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    btnVoltar: TcxButton;
    qryParametros: TUniQuery;
    qryParametrosNOME_PARAMETRO: TStringField;
    qryParametrosDESCRICAO_PARAMETRO: TStringField;
    qryParametrosVALOR_PARAMETRO: TStringField;
    dsParametros: TDataSource;
    tblParametrosDESCRICAO_PARAMETRO: TcxGridDBColumn;
    tblParametrosVALOR_PARAMETRO: TcxGridDBColumn;
    qryParametrosCATEGORIA_PARAMETRO: TStringField;
    qryParametrosTIPO_PARAMETRO: TStringField;
    tblParametrosCATEGORIA_PARAMETRO: TcxGridDBColumn;
    btnListasDePrecificacao: TcxButton;
    btnOfertas : TcxButton;
    actlst1: TActionList;
    actPrecificacao: TAction;
    actOfertas: TAction;
    actCotacao: TAction;
    actListaPrecificacao: TAction;
    actConfiguracoes: TAction;
    sbRodape: TdxStatusBar;
    btnCampanhaCRM: TcxButton;
    actCampanhaCRM: TAction;
    btnRelatorioAlteracoes: TcxButton;
    actRelatorioAlteracoes: TAction;
    btnClusterFiliais: TcxButton;
    actClusterFiliais: TAction;
    btnCadastroDeMargens: TcxButton;
    actCadastrodeMargens: TAction;
    btnPrecificacaoCluster: TcxButton;
    Image1: TImage;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    edtSugPvendaConcorrente: TcxCurrencyEdit;
    actAbrirLog: TAction;
    btnCadastroConcorrentes: TcxButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnParametricoesClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnCotacaoClick(Sender: TObject);
    procedure btnOfertasClick(Sender: TObject);
    procedure btnPrecificacaoClick(Sender: TObject);
    procedure btnListasDePrecificacaoClick(Sender: TObject);
    procedure actPrecificacaoExecute(Sender: TObject);
    procedure actOfertasExecute(Sender: TObject);
    procedure actCotacaoExecute(Sender: TObject);
    procedure actListaPrecificacaoExecute(Sender: TObject);
    procedure actConfiguracoesExecute(Sender: TObject);
    procedure edtSugPvendaConcorrentePropertiesChange(Sender: TObject);
    procedure actCampanhaCRMExecute(Sender: TObject);
    procedure btnCampanhaCRMClick(Sender: TObject);
    procedure actRelatorioAlteracoesExecute(Sender: TObject);
    procedure btnRelatorioAlteracoesClick(Sender: TObject);
    procedure actClusterFiliaisExecute(Sender: TObject);
    procedure btnClusterFiliaisClick(Sender: TObject);
    procedure btnCadastroDeMargensClick(Sender: TObject);
    procedure actCadastrodeMargensExecute(Sender: TObject);
    procedure btnPrecificacaoClusterClick(Sender: TObject);
    procedure actAbrirLogExecute(Sender: TObject);
    procedure btnCadastroConcorrentesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uLogin, ufrmOfertas, uPesquisas, ufrmEstruturaBancoRotina,
  ufrmPesquisaConcorrente, ufrmPrecificacao, ufrmListasDePrecificacao, ufrmClusterFiliais, ufrmCampanhaCRM, ufrmRelatorioAlteracoes, ufrmCadastroMargens, ufrmPrecificacaoCluster, uFrmConcorrentes;

{$R *.dfm}


procedure TfrmPrincipal.actPrecificacaoExecute(Sender: TObject);
begin
  btnPrecificacao.Click;
end;

procedure TfrmPrincipal.btnCadastroConcorrentesClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmConcorrentes, FrmConcorrentes);
    FrmConcorrentes.ShowModal;
  finally
    FrmConcorrentes := nil;
  end;
end;

procedure TfrmPrincipal.btnCadastroDeMargensClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmCadastroMargens, frmCadastroMargens);
    frmCadastroMargens.ShowModal;
  finally
    frmCadastroMargens := nil;
  end;
end;

procedure TfrmPrincipal.btnCampanhaCRMClick(Sender: TObject);
begin
 try
    Application.CreateForm(TfrmCampanhaCRM, frmCampanhaCRM);
    frmCampanhaCRM.ShowModal;
  finally
    frmCampanhaCRM := nil;
  end;
end;

procedure TfrmPrincipal.btnClusterFiliaisClick(Sender: TObject);
begin
try
    Application.CreateForm(TfrmClusterFiliais, frmClusterFiliais);
    frmClusterFiliais.ShowModal;
  finally
    frmClusterFiliais := nil;
  end;
end;

procedure TfrmPrincipal.btnCotacaoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmPesquisaConcorrente, frmPesquisaConcorrente);
  frmPesquisaConcorrente.ShowModal;
end;                      

procedure TfrmPrincipal.btnListasDePrecificacaoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmListasDePrecificacao, frmListasDePrecificacao);
  frmListasDePrecificacao.ShowModal;
end;

procedure TfrmPrincipal.btnOfertasClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmOfertas, frmOfertas);
    frmOfertas.ShowModal;
  finally
    frmOfertas := nil;
  end;
end;

procedure TfrmPrincipal.actClusterFiliaisExecute(Sender: TObject);
begin
  btnClusterFiliais.Click;
end;

procedure TfrmPrincipal.actConfiguracoesExecute(Sender: TObject);
begin
  btnParametricoes.Click;
end;

procedure TfrmPrincipal.actCotacaoExecute(Sender: TObject);
begin
  btnCotacao.Click;
end;

procedure TfrmPrincipal.actRelatorioAlteracoesExecute(Sender: TObject);
begin
 btnRelatorioAlteracoes.Click;
end;

procedure TfrmPrincipal.actAbrirLogExecute(Sender: TObject);
begin
  Application.createForm(TfrmLog, frmLog);
  frmLog.ShowModal();
end;

procedure TfrmPrincipal.actCadastrodeMargensExecute(Sender: TObject);
begin
  btnCadastroDeMargens.Click;
end;

procedure TfrmPrincipal.actCampanhaCRMExecute(Sender: TObject);
begin
  btnCampanhaCRM.Click;
end;

procedure TfrmPrincipal.actListaPrecificacaoExecute(Sender: TObject);
begin
  btnListasDePrecificacao.Click;
end;

procedure TfrmPrincipal.actOfertasExecute(Sender: TObject);
begin
  btnOfertas.Click;
end;

procedure TfrmPrincipal.btnParametricoesClick(Sender: TObject);
begin
  pcPrincipal.ActivePage := pgParametros;
  qryParametros.Open;

  edtSugPvendaConcorrente.Text := DmLogin.buscaParametroI9('PERCSUGESTPRECOCONCORRENCIA');
end;

procedure TfrmPrincipal.btnPrecificacaoClusterClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmPrecificacaoCluster, frmPrecificacaoCluster);
    frmPrecificacaoCluster.ShowModal;
  finally
    frmPrecificacaoCluster := nil;
  end;
end;

procedure TfrmPrincipal.btnPrecificacaoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmPrecificacao, frmPrecificacao);
  frmPrecificacao.ShowModal();
end;

procedure TfrmPrincipal.btnRelatorioAlteracoesClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmRelatorioAlteracoes, frmRelatorioAlteracoes);
    frmRelatorioAlteracoes.ShowModal;
  finally
    frmRelatorioAlteracoes := nil;
  end;
end;

procedure TfrmPrincipal.btnVoltarClick(Sender: TObject);
begin
  pcPrincipal.ActivePage := pgInicial;
end;

procedure TfrmPrincipal.edtSugPvendaConcorrentePropertiesChange(
  Sender: TObject);
begin
  DmLogin.salvaParametroI9('PERCSUGESTPRECOCONCORRENCIA', FloatToStr(edtSugPvendaConcorrente.Value));
end;

procedure TfrmPrincipal.FormActivate(Sender: TObject);
begin
  pcPrincipal.HideTabs:= true;
  dmLogin.populaStatusBar(sbRodape);
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmLogin.Conexao.Disconnect;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  frmEstruturaBancoRotina.ShowModal;
  actConfiguracoes.Enabled := DmLogin.validaPermissao530(5);
  btnParametricoes.Enabled := DmLogin.validaPermissao530(5);

  actCampanhaCRM.Enabled := DmLogin.validaPermissao530(21);
  btnCampanhaCRM.Enabled := DmLogin.validaPermissao530(21);

  actRelatorioAlteracoes.Enabled := DmLogin.validaPermissao530(26);
  btnRelatorioAlteracoes.Enabled := DmLogin.validaPermissao530(26);

  actClusterFiliais.Enabled := DmLogin.validaPermissao530(39);
  btnClusterFiliais.Enabled := DmLogin.validaPermissao530(39);

  actCadastrodeMargens.Enabled := DmLogin.validaPermissao530(40);
  btnCadastroDeMargens.Enabled := DmLogin.validaPermissao530(40);

  btnPrecificacao.Enabled := DmLogin.validaPermissao530(45);
  actPrecificacao.Enabled := DmLogin.validaPermissao530(45);

  btnPrecificacaoCluster.Enabled := DmLogin.validaPermissao530(46);

  //btnCotacao.Enabled := DmLogin.validaPermissao530(52);
  btnCadastroConcorrentes.Enabled := DmLogin.validaPermissao530(52);

  pcPrincipal.ActivePage := pgInicial;
end;



end.
