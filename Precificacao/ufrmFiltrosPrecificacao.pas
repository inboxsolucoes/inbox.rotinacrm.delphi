unit ufrmFiltrosPrecificacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit,cxGroupBox, cxTextEdit, CampoPesquisa, cxLabel,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  System.Actions, Vcl.ActnList, cxCheckBox, Vcl.ComCtrls, dxCore, cxDateUtils,
  DatasPadroes, cxCalendar, Uni, Data.DB, DBAccess, MemDS, Vcl.ExtCtrls,
  cxRadioGroup, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit,
  dxSkinsCore, dxSkinMetropolis, dxSkinVisualStudio2013Light;

type
  TfrmFiltrosPrecificacao = class(TForm)
    ActList: TActionList;
    actPesquisar: TAction;
    dataEntrada: TDatasPadroes;
    dsFiliais: TUniDataSource;
    cxButton1: TcxButton;
    actImportarLista: TAction;
    qrFiliais: TUniQuery;
    actFecharf1: TAction;
    actFecharEsc: TAction;
    pcFiltros: TPageControl;
    pgFiltros1: TTabSheet;
    pgFiltros2: TTabSheet;
    cxGroupBox8: TcxGroupBox;
    edtProduto: TCampoPesquisa;
    edtDepartamento: TCampoPesquisa;
    edtSecao: TCampoPesquisa;
    edtCategoria: TCampoPesquisa;
    edtMarca: TCampoPesquisa;
    edtComprador: TCampoPesquisa;
    edtFornecedor: TCampoPesquisa;
    edtSubCategoria: TCampoPesquisa;
    edtPesquisaConcorrente: TCampoPesquisa;
    edtProdutoPrincipal: TCampoPesquisa;
    cbMenorEmbalagem: TcxCheckBox;
    gbPeriodoEntrada: TcxGroupBox;
    dtInicialEntrada: TcxDateEdit;
    dtFinalEntrada: TcxDateEdit;
    cbAlteracaoPrecoCusto: TcxCheckBox;
    cmbSensibilidade: TcxComboBox;
    cxLabel1: TcxLabel;
    edtListaPrecificacao: TCampoPesquisa;
    rbForaDeLinha: TcxRadioGroup;
    edtGrupo: TCampoPesquisa;
    edtSubGrupo: TCampoPesquisa;
    cmbComparacaoEstoque: TcxComboBox;
    LBLeSTOQUE: TcxLabel;
    cbQuantidadeEstoque: TcxCheckBox;
    gbPrecificacao: TcxGroupBox;
    cbPrecoConcorrente: TcxCheckBox;
    cbDifSugestao: TcxCheckBox;
    cxLabel4: TcxLabel;
    edtMaxDifSugestao: TcxCurrencyEdit;
    edtMinDifSugestao: TcxCurrencyEdit;
    cxLabel5: TcxLabel;
    cmbComparacaoConcorrente: TcxComboBox;
    cbPrecoSugerido: TcxCheckBox;
    cmbComparacaoSugerido: TcxComboBox;
    cxLabel8: TcxLabel;
    cmbPrecoVenda: TcxCheckBox;
    cmbCompPrecoVenda: TcxComboBox;
    edtCompPrecoVenda: TcxCurrencyEdit;
    cbPrecoFuturoDifVenda: TcxCheckBox;
    edtQuantidadeEstoque: TcxCurrencyEdit;
    cxLabel3: TcxLabel;
    edtDescricaoProduto: TcxTextEdit;
    lblFilial: TcxLabel;
    cmbFilialPrecificacao: TcxLookupComboBox;
    cbEmbalagensAtivas: TcxCheckBox;
    cbPosicaoRanking: TcxCheckBox;
    edtMinPosRanking: TcxCurrencyEdit;
    cxLabel2: TcxLabel;
    edtMaxPosRanking: TcxCurrencyEdit;
    cxLabel7: TcxLabel;
    edtCodauxiliar: TcxTextEdit;
    cbPrecoFixo: TcxCheckBox;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cbCRMxVarjeo: TcxCheckBox;
    cxLabel9: TcxLabel;
    cmbCombCRMVarejo: TcxComboBox;
    cbCRMxAtacado: TcxCheckBox;
    cmbCombCRMAtac: TcxComboBox;
    cxLabel10: TcxLabel;
    cbCRMxValor: TcxCheckBox;
    cmbCombCRMValor: TcxComboBox;
    edtvlCRM: TcxCurrencyEdit;
    cbCRMAlterados: TcxCheckBox;
    edtvlAtualCRM: TcxCurrencyEdit;
    cmbCombCRMAtual: TcxComboBox;
    cbPrecoAtualCRM: TcxCheckBox;
    edtSegmento: TCampoPesquisa;
    edtCluster: TCampoPesquisa;
    qrCodfilialPrinc: TUniQuery;
    cxGroupBox3: TcxGroupBox;
    dtInicialPeriodo: TcxDateEdit;
    dtFinalPeriodo: TcxDateEdit;
    cxLabel6: TcxLabel;
    dpPeriodo: TDatasPadroes;
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actImportarListaExecute(Sender: TObject);
    procedure actFecharf1Execute(Sender: TObject);
    procedure actFecharEscExecute(Sender: TObject);
    procedure cbQuantidadeEstoqueClick(Sender: TObject);
    procedure cbDifSugestaoClick(Sender: TObject);
    procedure cbPrecoConcorrenteClick(Sender: TObject);
    procedure cbPosicaoRankingClick(Sender: TObject);
    procedure cbPrecoSugeridoClick(Sender: TObject);
    procedure cmbPrecoVendaClick(Sender: TObject);
    procedure edtCodauxiliarPropertiesEditValueChanged(Sender: TObject);
    procedure cbCRMxValorClick(Sender: TObject);
    procedure cbCRMxAtacadoClick(Sender: TObject);
    procedure cbCRMxVarjeoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbPrecoAtualCRMClick(Sender: TObject);
    procedure edtClusterPropertiesChange(Sender: TObject);
    procedure cmbFilialPrecificacaoPropertiesChange(Sender: TObject);
    procedure edtClusterPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
      FQryPesquisaEmbalagem: TUniQuery;
      FisOferta: Boolean;
      FisCluster: Boolean;
      //variaveis do log
      vDTInicioLog : TDate;
      vDTFimLog : TDate;
      vSQLLog : String;
      vAcaoLog : String;
  public
    { Public declarations }
    Constructor Create(AOwner: TComponent; const qryEntrada: TUniQuery; isOferta:Boolean = False);
    procedure AplicarFiltros(qryParaFiltrar: TUniQuery);
    procedure AplicarFiltrosOferta(qryParaFiltrar: TUniQuery);
    procedure setOferta(pInDasFiliais:string);
    procedure setCluster;
  end;

var
  frmFiltrosPrecificacao: TfrmFiltrosPrecificacao;
  inDasFiliais : string;

implementation

{$R *.dfm}

uses uLogin, uPesquisas, uDMPrecificacao, uFuncoes;

procedure TfrmFiltrosPrecificacao.actFecharEscExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmFiltrosPrecificacao.actFecharf1Execute(Sender: TObject);
begin
  Close;
end;

procedure TfrmFiltrosPrecificacao.actImportarListaExecute(Sender: TObject);
begin
 //
end;

procedure TfrmFiltrosPrecificacao.actPesquisarExecute(Sender: TObject);
begin

  try
    vDTInicioLog := Now;
    Screen.Cursor := crSQLWait;

    if FisOferta then
    begin
      with self.FQryPesquisaEmbalagem do
      begin
        Close;
        RestoreSQL;
        AplicarFiltrosOferta(self.FQryPesquisaEmbalagem);
        Open;
        vAcaoLog := 'FILTRO/OFERTA';
        vSQLLog :=  DmLogin.getSQLComParametrosPreenchidos(FQryPesquisaEmbalagem);
        Screen.Cursor := crDefault;
        Application.ProcessMessages;
        self.Close;
      end;
    end
    else
    begin
      with self.FQryPesquisaEmbalagem do
      begin
        Close;
        RestoreSQL;
        AplicarFiltros(self.FQryPesquisaEmbalagem);
        Open;
        vAcaoLog := 'FILTRO/PRECIFICACAO';
        vSQLLog :=  DmLogin.getSQLComParametrosPreenchidos(FQryPesquisaEmbalagem);
        Screen.Cursor := crDefault;
        Application.ProcessMessages;
        self.Close;
      end;
    end;

    vDTFimLog := now;
    dmLogin.gravaLogRotinaI9(vAcaoLog, vSQLLog, vDTInicioLog, vDTFimLog);

  finally
    Screen.Cursor := crDefault;
  end;
end;


procedure TfrmFiltrosPrecificacao.AplicarFiltros(qryParaFiltrar: TUniQuery);
begin
   with qryParaFiltrar do
   begin
      if edtDescricaoProduto.Text <> '' then
      begin
        AddWhere('PCPRODUT.DESCRICAO LIKE ''%'+ edtDescricaoProduto.Text + '%''');
      end;

      if edtProduto.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODPROD IN ('+ edtProduto.Text +')');
      end;

      if edtSecao.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODSEC IN ('+ edtSecao.Text +')');
      end;

      if edtMarca.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODMARCA IN ('+ edtMarca.Text +')');
      end;

      if edtDepartamento.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODEPTO IN ('+ edtDepartamento.Text +')');
      end;

      if edtCategoria.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODCATEGORIA IN ('+ edtCategoria.Text +')');
      end;

      if edtSubCategoria.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODSUBCATEGORIA IN ('+ edtSubCategoria.Text +')');
      end;

      if edtGrupo.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODGRUPO IN ('+ edtGrupo.Text +')');
      end;

      if edtSubGrupo.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODSUBGRUPO IN ('+ edtSubGrupo.Text +')');
      end;

      if edtSegmento.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODSEGMENTO IN ('+ edtSegmento.Text +')');
      end;

      if edtProdutoPrincipal.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODPRODPRINC IN ('+ edtProdutoPrincipal.Text +')');
      end;

      if edtCodauxiliar.Text <> '' then
      begin
        AddWhere('PCEMBALAGEM.CODAUXILIAR = :CODAUXILIAR');
        ParamByName('CODAUXILIAR').AsString := edtCodauxiliar.Text;
      end;

      if edtComprador.Text <> '' then
      begin
        if Self.FisCluster then
          AddWhere('PCPRODUT.CODPROD IN (SELECT CODPROD FROM PCPRODFILIAL WHERE CODCOMPRADOR IN (' + edtComprador.Text + ') AND CODFILIAL IN (SELECT CODFILIAL FROM I9GRUPOFILIALI WHERE CODGRUPO = :CODGRUPO))')
        else
          AddWhere('PCPRODUT.CODPROD IN (SELECT CODPROD FROM PCPRODFILIAL WHERE CODCOMPRADOR IN (' + edtComprador.Text + ') AND CODFILIAL = :CODFILIAL)');
      end;

      if edtFornecedor.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODFORNEC = :CODFORNEC');
        ParamByName('CODFORNEC').AsInteger := StrToInt((edtFornecedor.Text));
      end;

      if edtPesquisaConcorrente.Text <> '' then
      begin
        AddWhere(' PCPRODUT.CODPROD IN (SELECT PRINC.CODPRODPRINC FROM PCPRODUT PRINC WHERE PRINC.CODPROD IN (SELECT CODPROD FROM PCCOTAC WHERE NUMPESQUISA IN ('+ edtPesquisaConcorrente.Text +')))');
      end;

      if edtListaPrecificacao.Text <> '' then
      begin
        AddWhere('PCEMBALAGEM.CODAUXILIAR IN (SELECT CODAUXILIAR FROM I9LISTAPRECIFICACAO WHERE CODLISTA =  :CODLISTA)');
        ParamByName('CODLISTA').AsInteger :=  StrToInt((edtListaPrecificacao.Text));
      end;

      if cbMenorEmbalagem.Checked then
      begin
        AddWhere('PCEMBALAGEM.QTUNIT IN (SELECT MIN(PE.QTUNIT) FROM PCEMBALAGEM PE WHERE PE.CODPROD = PCEMBALAGEM.CODPROD AND PE.CODFILIAL = PCEMBALAGEM.CODFILIAL AND PE.DTINATIVO IS NULL)');
      end;

      if (dtInicialEntrada.Text <> '') and (dtFinalEntrada.Text <> '') then
      begin
        if Self.FisCluster then
        begin
          AddWhere('PCEMBALAGEM.CODPROD IN (select pcmov.codprod from pcmov where pcmov.codprod = pcprodut.codprod '
                    + ' and pcmov.CODFILIAL in (select codfilial from i9grupofiliali where codgrupo = :codgrupo) and (codoper in (''E'',''EB'',''EP'') or codoper in (''ET'')) ' +
                    ' and status <> ''A'' and pcmov.dtmov between :DTINICIALENTRADA and :DTFINALENTRADA and pcmov.dtcancel is null) ');

          ParamByName('DTINICIALENTRADA').AsDate := dtInicialEntrada.Date;
          ParamByName('DTFINALENTRADA').AsDate := dtFinalEntrada.Date;
        end
        else
        begin
          AddWhere('PCEMBALAGEM.CODPROD IN (select pcmov.codprod from pcmov where pcmov.codprod = pcprodut.codprod '
                    + ' and pcmov.codfilial = :CODFILIAL and (codoper in (''E'',''EB'',''EP'') or codoper in (''ET'')) ' +
                    ' and status <> ''A'' and pcmov.dtmov between :DTINICIALENTRADA and :DTFINALENTRADA and pcmov.dtcancel is null) ');

          ParamByName('DTINICIALENTRADA').AsDate := dtInicialEntrada.Date;
          ParamByName('DTFINALENTRADA').AsDate := dtFinalEntrada.Date;

        end;

      end;

      if cbAlteracaoPrecoCusto.Checked then
      begin
        if self.FisCluster then
        begin
          AddWhere('PCEMBALAGEM.CODPROD IN (SELECT CODPROD FROM PCEST WHERE pcest.custoultent <> pcest.custoultentant AND CODFILIAL in (select codfilial from i9grupofiliali where codgrupo = :codgrupo))');
        end
        else
        begin
          AddWhere('PCEMBALAGEM.CODPROD IN (SELECT CODPROD FROM PCEST WHERE pcest.custoultent <> pcest.custoultentant AND CODFILIAL = :CODFILIAL)');
        end;
      end;

      if (cmbSensibilidade.Text <> '') and (cmbSensibilidade.Text <> 'Todos') then
      begin
        AddWhere('PCPRODUT.SENSIBILIDADE = :SENSIBILIDADE');
        ParamByName('SENSIBILIDADE').AsString :=  Trim(Copy(cmbSensibilidade.Text, 0,2));
      end;

      if cbPosicaoRanking.Checked then
      begin
        AddWhere('PCEMBALAGEM.POSRANKING BETWEEN :MINPOSRANKING AND :MAXPOSRANKING');
        ParamByName('MINPOSRANKING').AsFloat :=  edtMinPosRanking.Value;
        ParamByName('MAXPOSRANKING').AsFloat :=  edtMaxPosRanking.Value;
      end;

      if rbForaDeLinha.EditValue = 'NFL' then
      begin
         AddWhere('NVL(PCPRODUT.OBS2, ''X'') <> ''FL''');

         if not self.FisCluster then
           AddWhere('PCPRODUT.CODPROD IN (SELECT CODPROD FROM PCPRODFILIAL WHERE CODFILIAL = :CODFILIAL AND nvl(pcprodfilial.foralinha, ''N'') = ''N'')');
      end;

      if cbEmbalagensAtivas.Checked then
        AddWhere('PCEMBALAGEM.DTINATIVO IS NULL');

      if rbForaDeLinha.EditValue = 'SFL' then
      begin
         AddWhere('NVL(PCPRODUT.OBS2, ''X'') = ''FL''');

         if not self.FisCluster then
           AddWhere('PCPRODUT.CODPROD IN (SELECT CODPROD FROM PCPRODFILIAL WHERE CODFILIAL = :CODFILIAL AND nvl(pcprodfilial.foralinha, ''N'') = ''S'')');
      end;

      if cbQuantidadeEstoque.Checked then
      begin
        if self.FisCluster then
        begin
          AddWhere('EXISTS (SELECT 1 FROM PCEST X WHERE X.CODPROD = PCPRODUT.CODPROD AND X.CODFILIAL in (select codfilial from i9grupofiliali where codgrupo = :codgrupo) AND NVL(X.QTESTGER,0) '+ cmbComparacaoEstoque.Text + ' ' + edtQuantidadeEstoque.Text + ')');
        end
        else
        begin
          AddWhere('EXISTS (SELECT 1 FROM PCEST X WHERE X.CODPROD = PCPRODUT.CODPROD AND X.CODFILIAL = :CODFILIAL AND NVL(X.QTESTGER,0) '+ cmbComparacaoEstoque.Text + ' ' + edtQuantidadeEstoque.Text + ')');
        end;
      end;

      if cbPrecoConcorrente.Checked then
      begin
        AddWhere('PKG_I9UTILITARIO.COTACAO_PRECO(pcprodut.codprodprinc, pcembalagem.codfilial, ''VAREJO'') <> 0');
        AddWhere('PCEMBALAGEM.PVENDA ' + cmbComparacaoConcorrente.Text + ' PKG_I9UTILITARIO.COTACAO_PRECO(pcprodut.codprodprinc, pcembalagem.codfilial, ''VAREJO'')');
      end;

      if cbPrecoSugerido.Checked then
      begin
        AddWhere('NVL(PCEMBALAGEM.PVENDA,0) ' + cmbComparacaoSugerido.Text + ' PKG_I9UTILITARIO.ARREDONDAR_PRECO(PKG_I9UTILITARIO.CALCULAR_SUGESTAO(PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODAUXILIAR, ''VAREJO''))');
      end;

      if cbDifSugestao.Checked then
      begin
        AddWhere('PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(NVL(PCEMBALAGEM.PVENDA,0), PKG_I9UTILITARIO.CALCULAR_SUGESTAO(PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODAUXILIAR, ''VAREJO'')) BETWEEN :MINSUGESTAO AND :MAXSUGESTAO');
        ParamByName('MINSUGESTAO').AsFloat :=  edtMinDifSugestao.Value;
        ParamByName('MAXSUGESTAO').AsFloat :=  edtMaxDifSugestao.Value;
      end;


      if cmbPrecoVenda.Checked then
      begin
        AddWhere('NVL(PCEMBALAGEM.PVENDA,0) ' + cmbCompPrecoVenda.Text + ' ' + FloatToStr(edtCompPrecoVenda.Value));
      end;

      if cbPrecoFuturoDifVenda.Checked then
      begin
        AddWhere('(NVL(PCEMBALAGEM.PTABELA,0) <> NVL(PCEMBALAGEM.PVENDA,0) OR (NVL(PCEMBALAGEM.PTABELAATAC,0) <> NVL(PCEMBALAGEM.PVENDAATAC,0)))');
      end;

      if cbPrecoFixo.Checked then
      begin
        AddWhere('NVL(PCEMBALAGEM.PRECOFIXO, ''N'') = ''S''');
      end;

      if cbCRMxVarjeo.Checked then
      begin
        AddWhere('NVL(pcdescontofidelidade.pvendacrm,0) > 0');
        AddWhere('(NVL(pcdescontofidelidade.pvendacrm,0) * pcembalagem.qtunit) ' + cmbCombCRMVarejo.Text + ' PCEMBALAGEM.PVENDA');
      end;

      if cbCRMxAtacado.Checked then
      begin
        AddWhere('NVL(pcdescontofidelidade.pvendacrm,0) > 0');
        AddWhere('(NVL(pcdescontofidelidade.pvendacrm,0) * pcembalagem.qtunit) ' + cmbCombCRMAtac.Text + ' PCEMBALAGEM.PVENDAATAC');
      end;

      if cbCRMxValor.Checked then
      begin
        AddWhere('NVL(pcdescontofidelidade.pvendacrm,0) > 0');
        AddWhere('(NVL(pcdescontofidelidade.pvendacrm,0) * pcembalagem.qtunit) ' + cmbCombCRMValor.Text + ' ' + FloatToStr(edtvlCRM.Value));
      end;


      if cbPrecoAtualCRM.Checked then
      begin
        AddWhere('pkg_i9clubecrm.buscaprecocrm(pcembalagem.codfilial, pcembalagem.codauxiliar) > 0');
        AddWhere('(pkg_i9clubecrm.buscaprecocrm(pcembalagem.codfilial, pcembalagem.codauxiliar) * pcembalagem.qtunit) ' + cmbCombCRMAtual.Text + ' ' + FloatToStr(edtvlAtualCRM.Value));
      end;

      if cbCRMAlterados.Checked then
      begin
        AddWhere('NVL(pcdescontofidelidade.pvendacrm,0) <> NVL(pcdescontofidelidade.ptabelacrm,0)');
      end;


      if Self.FisCluster then
      begin
        if Trim(edtCluster.Text) = '' then
          DmLogin.MensagemErroAbort('É necessário informar um cluster para pesquisa.');

        ParamByName('CODGRUPO').AsString := edtCluster.Text;
      end
      else
      begin
        if Trim(cmbFilialPrecificacao.Text) = '' then
          DmLogin.MensagemErroAbort('É necessário informar uma filial.');

        ParamByName('CODFILIAL').AsString := cmbFilialPrecificacao.EditValue;
      end;


      if (dtInicialPeriodo.Text <> '') and (dtFinalPeriodo.Text <> '') then
      begin
        ParamByName('DTINICIAL').AsDate := dtInicialPeriodo.Date;
        ParamByName('DTFINAL').AsDate := dtFinalPeriodo.Date;
      end;

   end;

end;


procedure TfrmFiltrosPrecificacao.AplicarFiltrosOferta(qryParaFiltrar: TUniQuery);
begin
   with qryParaFiltrar do
   begin
      if edtDescricaoProduto.Text <> '' then
      begin
        AddWhere('PCPRODUT.DESCRICAO LIKE ''%'+ edtDescricaoProduto.Text + '%''');
      end;

      if edtProduto.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODPROD IN ('+ edtProduto.Text +')');
      end;

      if edtSecao.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODSEC IN ('+ edtSecao.Text +')');
      end;

      if edtMarca.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODMARCA IN ('+ edtMarca.Text +')');
      end;

      if edtDepartamento.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODEPTO IN ('+ edtDepartamento.Text +')');
      end;

      if edtCategoria.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODCATEGORIA IN ('+ edtCategoria.Text +')');
      end;

      if edtSubCategoria.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODSUBCATEGORIA IN ('+ edtSubCategoria.Text +')');
      end;

      if edtGrupo.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODGRUPO IN ('+ edtGrupo.Text +')');
      end;

      if edtSubGrupo.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODSUBGRUPO IN ('+ edtSubGrupo.Text +')');
      end;

      if edtSegmento.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODSEGMENTO IN ('+ edtSegmento.Text +')');
      end;

      if edtProdutoPrincipal.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODPRODPRINC IN ('+ edtProdutoPrincipal.Text +')');
      end;

      if edtCodauxiliar.Text <> '' then
      begin
        AddWhere('PCEMBALAGEM.CODAUXILIAR = :CODAUXILIAR');
        ParamByName('CODAUXILIAR').AsString := edtCodauxiliar.Text;
      end;

      if edtComprador.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODPROD IN (SELECT CODPROD FROM PCPRODFILIAL WHERE CODCOMPRADOR IN (' + edtComprador.Text + ') AND CODFILIAL IN ('+ inDasFiliais +') )');
      end;

      if edtFornecedor.Text <> '' then
      begin
        AddWhere('PCPRODUT.CODFORNEC = :CODFORNEC');
        ParamByName('CODFORNEC').AsInteger := StrToInt((edtFornecedor.Text));
      end;

      if edtPesquisaConcorrente.Text <> '' then
      begin
        AddWhere(' PCPRODUT.CODPROD IN (SELECT PRINC.CODPRODPRINC FROM PCPRODUT PRINC WHERE PRINC.CODPROD IN (SELECT CODPROD FROM PCCOTAC WHERE NUMPESQUISA IN ('+ edtPesquisaConcorrente.Text +')))');
      end;

      if edtListaPrecificacao.Text <> '' then
      begin
        AddWhere('PCEMBALAGEM.CODAUXILIAR IN (SELECT CODAUXILIAR FROM I9LISTAPRECIFICACAO WHERE CODLISTA =  :CODLISTA)');
        ParamByName('CODLISTA').AsInteger :=  StrToInt((edtListaPrecificacao.Text));
      end;

      if cbMenorEmbalagem.Checked then
      begin
        AddWhere('PCEMBALAGEM.QTUNIT IN (SELECT MIN(PE.QTUNIT) FROM PCEMBALAGEM PE WHERE PE.CODPROD = PCEMBALAGEM.CODPROD AND PE.CODFILIAL = PCEMBALAGEM.CODFILIAL AND PE.DTINATIVO IS NULL)');
      end;

      if (dtInicialEntrada.Text <> '') and (dtFinalEntrada.Text <> '') then
      begin
        AddWhere('PCEMBALAGEM.CODPROD IN (select pcmov.codprod from pcmov where pcmov.codprod = pcprodut.codprod '
               + ' and pcmov.CODFILIAL IN ('+ inDasFiliais +') and (codoper in (''E'',''EB'',''EP'') or codoper in (''ET'')) ' +
                  ' and status <> ''A'' and pcmov.dtmov between :DTINICIALENTRADA and :DTFINALENTRADA and pcmov.dtcancel is null) ');

        ParamByName('DTINICIALENTRADA').AsDate := dtInicialEntrada.Date;
        ParamByName('DTFINALENTRADA').AsDate := dtFinalEntrada.Date;
      end;

      if cbAlteracaoPrecoCusto.Checked then
      begin
        AddWhere('PCEMBALAGEM.CODPROD IN (SELECT CODPROD FROM PCEST WHERE pcest.custoultent <> pcest.custoultentant AND CODFILIAL IN ('+ inDasFiliais +'))');
      end;

      if (cmbSensibilidade.Text <> '') and (cmbSensibilidade.Text <> 'Todos') then
      begin
        AddWhere('PCPRODUT.SENSIBILIDADE = :SENSIBILIDADE');
        ParamByName('SENSIBILIDADE').AsString :=  Trim(Copy(cmbSensibilidade.Text, 0,2));
      end;

      if cbPosicaoRanking.Checked then
      begin
        AddWhere('PCEMBALAGEM.POSRANKING BETWEEN :MINPOSRANKING AND :MAXPOSRANKING');
        ParamByName('MINPOSRANKING').AsFloat :=  edtMinPosRanking.Value;
        ParamByName('MAXPOSRANKING').AsFloat :=  edtMaxPosRanking.Value;
      end;


      if rbForaDeLinha.EditValue = 'NFL' then
      begin
         AddWhere('NVL(PCPRODUT.OBS2, ''X'') <> ''FL''');
         AddWhere('PCPRODUT.CODPROD IN (SELECT CODPROD FROM PCPRODFILIAL WHERE CODFILIAL IN ('+ inDasFiliais +') AND nvl(pcprodfilial.foralinha, ''N'') = ''N'')');
      end;

      if cbEmbalagensAtivas.Checked then
        AddWhere('PCEMBALAGEM.DTINATIVO IS NULL');

      if rbForaDeLinha.EditValue = 'SFL' then
      begin
         AddWhere('NVL(PCPRODUT.OBS2, ''X'') = ''FL''');
         AddWhere('PCPRODUT.CODPROD IN (SELECT CODPROD FROM PCPRODFILIAL WHERE CODFILIAL IN ('+ inDasFiliais +') AND nvl(pcprodfilial.foralinha, ''N'') = ''S'')');
      end;

      if cbQuantidadeEstoque.Checked then
        AddWhere('EXISTS (SELECT 1 FROM PCEST X WHERE X.CODPROD = PCPRODUT.CODPROD AND X.CODFILIAL IN ('+ inDasFiliais +') AND NVL(X.QTESTGER,0) '+ cmbComparacaoEstoque.Text + ' ' + edtQuantidadeEstoque.Text + ')');


      if cbPrecoConcorrente.Checked then
      begin
        AddWhere('PKG_I9UTILITARIO.COTACAO_PRECO(pcprodut.codprodprinc, pcembalagem.codfilial, ''VAREJO'') <> 0');
        AddWhere('PCEMBALAGEM.PVENDA ' + cmbComparacaoConcorrente.Text + ' PKG_I9UTILITARIO.COTACAO_PRECO(pcprodut.codprodprinc, pcembalagem.codfilial, ''VAREJO'')');
      end;

      if cbPrecoSugerido.Checked then
      begin
        AddWhere('NVL(PCEMBALAGEM.PVENDA,0) ' + cmbComparacaoSugerido.Text + ' PKG_I9UTILITARIO.ARREDONDAR_PRECO(PKG_I9UTILITARIO.CALCULAR_SUGESTAO(PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODAUXILIAR, ''VAREJO''))');
      end;

      if cbDifSugestao.Checked then
      begin
        AddWhere('PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(PCEMBALAGEM.PVENDA, PKG_I9UTILITARIO.CALCULAR_SUGESTAO(PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODAUXILIAR, ''VAREJO'')) BETWEEN :MINSUGESTAO AND :MAXSUGESTAO');
        ParamByName('MINSUGESTAO').AsFloat :=  edtMinDifSugestao.Value;
        ParamByName('MAXSUGESTAO').AsFloat :=  edtMaxDifSugestao.Value;
      end;


      if cmbPrecoVenda.Checked then
      begin
        AddWhere('NVL(PCEMBALAGEM.PVENDA,0) ' + cmbCompPrecoVenda.Text + ' ' + FloatToStr(edtCompPrecoVenda.Value));
      end;

      if cbPrecoFuturoDifVenda.Checked then
      begin
        AddWhere('(NVL(PCEMBALAGEM.PTABELA,0) <> NVL(PCEMBALAGEM.PVENDA,0) OR (NVL(PCEMBALAGEM.PTABELAATAC,0) <> NVL(PCEMBALAGEM.PVENDAATAC,0)))');
      end;

      if cbPrecoFixo.Checked then
      begin
        AddWhere('NVL(PCEMBALAGEM.PRECOFIXO, ''N'') = ''S''');
      end;



     AddWhere('PKG_I9UTILITARIO.BUSCACUSTO(PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODPROD) > 0');
     AddWhere('PCEMBALAGEM.CODFILIAL IN ('+ inDasFiliais +')');

   end;
end;

procedure TfrmFiltrosPrecificacao.cbCRMxAtacadoClick(Sender: TObject);
begin
  cmbCombCRMAtac.Enabled := cbCRMxAtacado.Checked;
end;

procedure TfrmFiltrosPrecificacao.cbCRMxValorClick(Sender: TObject);
begin
  cmbCombCRMValor.Enabled := cbCRMxValor.Checked;
  edtvlCRM.Enabled := cbCRMxValor.Checked;
end;

procedure TfrmFiltrosPrecificacao.cbCRMxVarjeoClick(Sender: TObject);
begin
 cmbCombCRMVarejo.Enabled := cbCRMxVarjeo.Checked;
end;

procedure TfrmFiltrosPrecificacao.cbDifSugestaoClick(Sender: TObject);
begin
  edtMinDifSugestao.Enabled := cbDifSugestao.Checked;
  edtMaxDifSugestao.Enabled := cbDifSugestao.Checked;
end;

procedure TfrmFiltrosPrecificacao.cbPosicaoRankingClick(Sender: TObject);
begin
  edtMinPosRanking.Enabled := cbPosicaoRanking.Checked;
  edtMaxPosRanking.Enabled := cbPosicaoRanking.Checked;
end;

procedure TfrmFiltrosPrecificacao.cbPrecoAtualCRMClick(Sender: TObject);
begin
  cmbCombCRMAtual.Enabled := cbPrecoAtualCRM.Checked;
  edtvlAtualCRM.Enabled := cbPrecoAtualCRM.Checked;
end;

procedure TfrmFiltrosPrecificacao.cbPrecoConcorrenteClick(Sender: TObject);
begin
  cmbComparacaoConcorrente.Enabled := cbPrecoConcorrente.Checked;
end;

procedure TfrmFiltrosPrecificacao.cbPrecoSugeridoClick(Sender: TObject);
begin
 cmbComparacaoSugerido.Enabled := cbPrecoSugerido.Checked;
end;

procedure TfrmFiltrosPrecificacao.cbQuantidadeEstoqueClick(Sender: TObject);
begin
 cmbComparacaoEstoque.Enabled := cbQuantidadeEstoque.Checked;
 edtQuantidadeEstoque.Enabled := cbQuantidadeEstoque.Checked;
end;

procedure TfrmFiltrosPrecificacao.cmbFilialPrecificacaoPropertiesChange(
  Sender: TObject);
begin
  if (cmbFilialPrecificacao.Text <> '') and (edtCluster.Text <> '') then
  begin
    edtCluster.Text := '';
    edtCluster.Atualizar;
  end;
end;

procedure TfrmFiltrosPrecificacao.cmbPrecoVendaClick(Sender: TObject);
begin
  cmbCompPrecoVenda.Enabled := cmbPrecoVenda.Checked;
  edtCompPrecoVenda.Enabled := cmbPrecoVenda.Checked;
end;

constructor TfrmFiltrosPrecificacao.Create(AOwner: TComponent;
  const qryEntrada: TUniQuery; isOferta:Boolean = False);
begin
  inherited Create(AOwner);
  FQryPesquisaEmbalagem := qryEntrada;
  FisOferta := isOferta;
end;

procedure TfrmFiltrosPrecificacao.edtClusterPropertiesChange(Sender: TObject);
begin
  if (edtCluster.Text <> '') then
  begin
    cmbFilialPrecificacao.Enabled := False;
  end
  else
  begin
    cmbFilialPrecificacao.Enabled := True;
  end;

  edtCluster.Atualizar;
end;

procedure TfrmFiltrosPrecificacao.edtClusterPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  var codFilialPrinc : string;
begin
  if(edtCluster.Text <> '') then
  begin
    qrCodfilialPrinc.Close;
    qrCodfilialPrinc.ParamByName('CODGRUPO').AsString := edtCluster.Text;
    qrCodfilialPrinc.Open;

    if not qrCodfilialPrinc.IsEmpty then
    begin
      codFilialPrinc := qrCodfilialPrinc.FieldByName('CODFILIALPRINC').AsString;
    end
    else
    begin
      codFilialPrinc := '';
    end;

    cmbFilialPrecificacao.Text := codFilialPrinc;
    cmbFilialPrecificacao.Enabled := False;
  end;

  edtCluster.Atualizar;
end;

procedure TfrmFiltrosPrecificacao.edtCodauxiliarPropertiesEditValueChanged(
  Sender: TObject);
begin
  edtCodauxiliar.Text := SomenteNumeros(edtCodauxiliar.Text);
end;

procedure TfrmFiltrosPrecificacao.FormCreate(Sender: TObject);
begin
   qrFiliais.Close;
   qrFiliais.ParamByName('CODFUNC').AsInteger := DmLogin.Matricula;
   qrFiliais.Open;
   //cmbFilialPrecificacao.ItemIndex:= 0;
end;

procedure TfrmFiltrosPrecificacao.FormShow(Sender: TObject);
begin
  pcFiltros.ActivePage := pgFiltros1;
end;

procedure TfrmFiltrosPrecificacao.setCluster;
begin
  FisCluster := True;
  cmbFilialPrecificacao.Text := '';
  cmbFilialPrecificacao.Visible := False;
  lblFilial.Visible := False;
  edtCluster.Visible := True;
end;

procedure TfrmFiltrosPrecificacao.setOferta(pInDasFiliais:string);
begin

  inDasFiliais := pInDasFiliais;

  if not self.FisOferta then
  begin
    self.FisOferta := True;
    //cmbFilialPrecificacao.Visible := False;
    gbPrecificacao.Visible := False;
    cmbFilialPrecificacao.ItemIndex:= 0;
    cmbFilialPrecificacao.Visible := False;
    edtCluster.Visible := False;
    lblFilial.Visible := False;
  end;
end;

end.
