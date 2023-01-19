program INBOX9898;

uses
  Vcl.Forms,
  SysUtils,
  cxFormats,
  ufrmPrincipal in 'ufrmPrincipal.pas' {frmPrincipal},
  uFuncoes in '..\..\RecursosCompartilhados\delphi\utils\uFuncoes.pas',
  uLogin in '..\..\RecursosCompartilhados\delphi\winthor\uLogin.pas' {DmLogin: TDataModule},
  ufrmPrecificacao in 'Precificacao\ufrmPrecificacao.pas' {frmPrecificacao},
  ufrmOfertas in 'Ofertas\ufrmOfertas.pas' {frmOfertas},
  ufrmPesquisaConcorrente in 'Pesquisa\ufrmPesquisaConcorrente.pas' {frmPesquisaConcorrente},
  uDMPrecificacao in 'Precificacao\uDMPrecificacao.pas' {DMPrecificacao: TDataModule},
  uDMPesquisaConforrente in 'Pesquisa\uDMPesquisaConforrente.pas' {DMPesquisaConforrente: TDataModule},
  uDMOfertas in 'Ofertas\uDMOfertas.pas' {DMOfertas: TDataModule},
  ufrmBancoDados in '..\..\RecursosCompartilhados\delphi\banco\ufrmBancoDados.pas' {frmBancoDados},
  ufrmEstruturaBancoRotina in 'ufrmEstruturaBancoRotina.pas' {frmEstruturaBancoRotina},
  uPesquisas in '..\..\RecursosCompartilhados\delphi\winthor\uPesquisas.pas' {DMPesquisas: TDataModule},
  ufrmFiltrosPrecificacao in 'Precificacao\ufrmFiltrosPrecificacao.pas' {frmFiltrosPrecificacao},
  uDMListasDePrecificacao in 'ListaDePrecificacao\uDMListasDePrecificacao.pas' {DMListasDePrecificacao: TDataModule},
  ufrmListasDePrecificacao in 'ListaDePrecificacao\ufrmListasDePrecificacao.pas' {frmListasDePrecificacao},
  udmEstruturaBancoRotina in 'udmEstruturaBancoRotina.pas' {dmEstruturaBancoRotina: TDataModule},
  uOferta2011 in 'Ofertas\uOferta2011.pas',
  uFrmAplicarPreco in 'Precificacao\uFrmAplicarPreco.pas' {frmAplicarPreco},
  ufrmDetalhesCustoEstoque in 'Precificacao\ufrmDetalhesCustoEstoque.pas' {frmCustoEstoque},
  uFrmAplicarCustoMedio in 'Precificacao\uFrmAplicarCustoMedio.pas' {frmAplicarCustoMedio},
  ufrmGraficoConcorrente in 'Precificacao\ufrmGraficoConcorrente.pas' {frmGraficoConcorrente},
  ufrmDetalheOferta in 'Ofertas\ufrmDetalheOferta.pas' {frmDetalheOferta},
  utipoRelatorio in 'Ofertas\utipoRelatorio.pas' {frmtipoRelatorio},
  uFrmAplicarOferta in 'Ofertas\uFrmAplicarOferta.pas' {frmAplicarOferta},
  uDMCampanhaCRM in 'CampanhaCRM\uDMCampanhaCRM.pas' {DMCampanhaCRM: TDataModule},
  ufrmCampanhaCRM in 'CampanhaCRM\ufrmCampanhaCRM.pas' {frmCampanhaCRM},
  uDMTabloide in 'Tabloide\uDMTabloide.pas' {DMTabloide: TDataModule},
  ufrmTabloide in 'Tabloide\ufrmTabloide.pas' {frmTabloide},
  uDMRelatorioAlteracoes in 'Relatorio\uDMRelatorioAlteracoes.pas' {DMRelatorioAlteracoes: TDataModule},
  ufrmRelatorioAlteracoes in 'Relatorio\ufrmRelatorioAlteracoes.pas' {frmRelatorioAlteracoes},
  udmRelatoriosOfertas in 'Ofertas\udmRelatoriosOfertas.pas' {dmRelatoriosOfertas: TDataModule},
  ufrmDetalheCusto in 'Precificacao\ufrmDetalheCusto.pas' {frmDetalheCusto},
  uFrmLoading in '..\..\RecursosCompartilhados\delphi\winthor\uFrmLoading.pas' {frmLoading},
  ufrmDetalheCampanhaCRM in 'CampanhaCRM\ufrmDetalheCampanhaCRM.pas' {frmDetalheCampanhaCRM},
  ufrmClusterFiliais in 'ClusterFiliais\ufrmClusterFiliais.pas' {frmClusterFiliais},
  uDMClusterFiliais in 'ClusterFiliais\uDMClusterFiliais.pas' {dmClusterFiliais: TDataModule},
  uDMCadastroMargens in 'CadastroMargens\uDMCadastroMargens.pas' {dmCadastroMargens: TDataModule},
  ufrmCadastroMargens in 'CadastroMargens\ufrmCadastroMargens.pas' {frmCadastroMargens},
  ufrmRelatoriosCRM in 'CampanhaCRM\ufrmRelatoriosCRM.pas' {frmRelatoriosCRM},
  ufrmRelatoriosOfertas in 'Ofertas\ufrmRelatoriosOfertas.pas' {frmRelatoriosOfertas},
  ufrmPrecificacaoCluster in 'Precificacao\ufrmPrecificacaoCluster.pas' {frmPrecificacaoCluster},
  udmPrincipal in 'udmPrincipal.pas' {DMPrincipal: TDataModule},
  ufrmLog in '..\..\RecursosCompartilhados\delphi\winthor\ufrmLog.pas' {frmLog},
  ufrmLayoutImpressao in 'Ofertas\ufrmLayoutImpressao.pas' {frmLayoutImpressao},
  ufrmLayoutImpressaoCRM in 'CampanhaCRM\ufrmLayoutImpressaoCRM.pas' {frmLayoutImpressaoCRM},
  uFrmConcorrentes in 'Pesquisa\uFrmConcorrentes.pas' {FrmConcorrentes},
  uFrmImagemCotacao in 'Precificacao\uFrmImagemCotacao.pas' {frmImagemCotacao},
  ufrmFiltrosCRM in 'CampanhaCRM\ufrmFiltrosCRM.pas' {frmFiltrosCRM},
  uLayoutImpressao in '..\..\RecursosCompartilhados\delphi\winthor\uLayoutImpressao.pas' {LayoutImpressao},
  ufrmConfiguracaoInbox in 'CampanhaCRM\ufrmConfiguracaoInbox.pas' {frmConfiguracaoInbox},
  udmConfiguracaoInbox in 'CampanhaCRM\udmConfiguracaoInbox.pas' {dmConfiguracaoInbox: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCampanhaCRM, frmCampanhaCRM);
  Application.CreateForm(TDmLogin, DmLogin);
  Application.CreateForm(TDMPesquisas, DMPesquisas);
  Application.CreateForm(TfrmBancoDados, frmBancoDados);
  Application.CreateForm(TdmEstruturaBancoRotina, dmEstruturaBancoRotina);
  Application.CreateForm(TfrmEstruturaBancoRotina, frmEstruturaBancoRotina);
  Application.CreateForm(TDMCampanhaCRM, DMCampanhaCRM);
  Application.CreateForm(TfrmRelatoriosCRM, frmRelatoriosCRM);
  Application.CreateForm(TfrmFiltrosCRM, frmFiltrosCRM);
  Application.CreateForm(TDMOfertas, DMOfertas);
  Application.CreateForm(TfrmConfiguracaoInbox, frmConfiguracaoInbox);
  Application.CreateForm(TdmConfiguracaoInbox, dmConfiguracaoInbox);
  Application.Initialize;
  
  Application.Run;
end.
