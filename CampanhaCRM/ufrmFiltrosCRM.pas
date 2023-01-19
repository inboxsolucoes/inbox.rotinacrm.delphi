unit ufrmFiltrosCRM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit,cxGroupBox, cxTextEdit, CampoPesquisa, cxLabel,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  System.Actions, Vcl.ActnList, cxCheckBox, Vcl.ComCtrls, dxCore, cxDateUtils,
  DatasPadroes, cxCalendar, Uni, Data.DB, DBAccess, MemDS, Vcl.ExtCtrls,
  cxRadioGroup, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit,
  dxSkinsCore, dxSkinMetropolis, dxSkinVisualStudio2013Light,
  dxSkinMetropolisDark, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2013White, dxSkinOffice2016Dark;

type
  TfrmFiltrosCRM = class(TForm)
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
    cxGroupBox8: TcxGroupBox;
    edtProduto: TCampoPesquisa;
    edtDepartamento: TCampoPesquisa;
    edtSecao: TCampoPesquisa;
    edtCategoria: TCampoPesquisa;
    edtMarca: TCampoPesquisa;
    edtComprador: TCampoPesquisa;
    edtFornecedor: TCampoPesquisa;
    edtSubCategoria: TCampoPesquisa;
    edtProdutoPrincipal: TCampoPesquisa;
    cbMenorEmbalagem: TcxCheckBox;
    gbPeriodoEntrada: TcxGroupBox;
    dtInicialEntrada: TcxDateEdit;
    dtFinalEntrada: TcxDateEdit;
    cbAlteracaoPrecoCusto: TcxCheckBox;
    rbForaDeLinha: TcxRadioGroup;
    cmbComparacaoEstoque: TcxComboBox;
    LBLeSTOQUE: TcxLabel;
    cbQuantidadeEstoque: TcxCheckBox;
    edtQuantidadeEstoque: TcxCurrencyEdit;
    cxLabel3: TcxLabel;
    edtDescricaoProduto: TcxTextEdit;
    lblFilial: TcxLabel;
    cmbFilialPrecificacao: TcxLookupComboBox;
    cbEmbalagensAtivas: TcxCheckBox;
    cxLabel7: TcxLabel;
    edtCodauxiliar: TcxTextEdit;
    qrCodfilialPrinc: TUniQuery;
    dpPeriodo: TDatasPadroes;
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actImportarListaExecute(Sender: TObject);
    procedure actFecharf1Execute(Sender: TObject);
    procedure actFecharEscExecute(Sender: TObject);
    procedure cbQuantidadeEstoqueClick(Sender: TObject);
    procedure edtCodauxiliarPropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtClusterPropertiesChange(Sender: TObject);
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
  frmFiltrosCRM: TfrmFiltrosCRM;
  inDasFiliais : string;

implementation

{$R *.dfm}

uses uLogin, uPesquisas, uDMPrecificacao, uFuncoes;

procedure TfrmFiltrosCRM.actFecharEscExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmFiltrosCRM.actFecharf1Execute(Sender: TObject);
begin
  Close;
end;

procedure TfrmFiltrosCRM.actImportarListaExecute(Sender: TObject);
begin
 //
end;

procedure TfrmFiltrosCRM.actPesquisarExecute(Sender: TObject);
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


procedure TfrmFiltrosCRM.AplicarFiltros(qryParaFiltrar: TUniQuery);
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


      if Trim(cmbFilialPrecificacao.Text) = '' then
        DmLogin.MensagemErroAbort('É necessário informar uma filial.');

   end;

end;


procedure TfrmFiltrosCRM.AplicarFiltrosOferta(qryParaFiltrar: TUniQuery);
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

     AddWhere('PKG_I9UTILITARIO.BUSCACUSTO(PCEMBALAGEM.CODFILIAL, PCEMBALAGEM.CODPROD) > 0');
     AddWhere('PCEMBALAGEM.CODFILIAL IN ('+ inDasFiliais +')');

   end;
end;

procedure TfrmFiltrosCRM.cbQuantidadeEstoqueClick(Sender: TObject);
begin
 cmbComparacaoEstoque.Enabled := cbQuantidadeEstoque.Checked;
 edtQuantidadeEstoque.Enabled := cbQuantidadeEstoque.Checked;
end;

constructor TfrmFiltrosCRM.Create(AOwner: TComponent;
  const qryEntrada: TUniQuery; isOferta:Boolean = False);
begin
  inherited Create(AOwner);
  FQryPesquisaEmbalagem := qryEntrada;
  FisOferta := isOferta;
end;

procedure TfrmFiltrosCRM.edtClusterPropertiesChange(Sender: TObject);
begin
  cmbFilialPrecificacao.Enabled := True;
end;

procedure TfrmFiltrosCRM.edtCodauxiliarPropertiesEditValueChanged(
  Sender: TObject);
begin
  edtCodauxiliar.Text := SomenteNumeros(edtCodauxiliar.Text);
end;

procedure TfrmFiltrosCRM.FormCreate(Sender: TObject);
begin
   qrFiliais.Close;
   qrFiliais.ParamByName('CODFUNC').AsInteger := DmLogin.Matricula;
   qrFiliais.Open;
   //cmbFilialPrecificacao.ItemIndex:= 0;
end;

procedure TfrmFiltrosCRM.FormShow(Sender: TObject);
begin
  pcFiltros.ActivePage := pgFiltros1;
end;

procedure TfrmFiltrosCRM.setCluster;
begin
  FisCluster := True;
  cmbFilialPrecificacao.Text := '';
  cmbFilialPrecificacao.Visible := False;
  lblFilial.Visible := False;
end;

procedure TfrmFiltrosCRM.setOferta(pInDasFiliais:string);
begin

  inDasFiliais := pInDasFiliais;

  if not self.FisOferta then
  begin
    self.FisOferta := True;
    //cmbFilialPrecificacao.Visible := False;
    cmbFilialPrecificacao.ItemIndex:= 0;
    cmbFilialPrecificacao.Visible := False;
    lblFilial.Visible := False;
  end;
end;

end.
