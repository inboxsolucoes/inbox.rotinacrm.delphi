unit ufrmPesquisaConcorrente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters,dxBarBuiltInMenu, cxContainer, cxEdit,
  Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, Vcl.ComCtrls, dxCore, cxDateUtils, cxCheckBox,
  cxSpinEdit, cxTimeEdit, cxDropDownEdit, cxCalendar, Vcl.ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, CampoPesquisa, cxLabel, cxMaskEdit,
  cxDBEdit, Vcl.StdCtrls, cxButtons, cxGroupBox, cxPC, cxCheckComboBox,
  cxCurrencyEdit, cxRadioGroup, DatasPadroes, System.Actions, Vcl.ActnList,
  MemDS, DBAccess, Uni, dxSkinsCore, dxSkinMetropolis,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, cxButtonEdit,
  dxSkinMetropolisDark, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2013White, dxSkinOffice2016Dark;

type
  TfrmPesquisaConcorrente = class(TForm)
    pcPrincipal: TcxPageControl;
    pageMenu: TcxTabSheet;
    cxGroupBox7: TcxGroupBox;
    pageIncluir: TcxTabSheet;
    pcIncluir: TcxPageControl;
    pageFiltros: TcxTabSheet;
    cxGroupBox6: TcxGroupBox;
    pageConfiguraOferta: TcxTabSheet;
    pageEditar: TcxTabSheet;
    cxGroupBox9: TcxGroupBox;
    cxCodConcorrente: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxDescricao: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxGroupBox10: TcxGroupBox;
    psqCluster: TCampoPesquisa;
    PsaFunc: TCampoPesquisa;
    cxButton1: TcxButton;
    cxGrid3: TcxGrid;
    tblConcorrentes: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxPageControl1: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxGroupBox5: TcxGroupBox;
    cxGrid2: TcxGrid;
    tblDisponiveis: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGroupBox4: TcxGroupBox;
    cxGrid1: TcxGrid;
    tblIncluidos: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    tblConcorrentesCODCONC: TcxGridDBColumn;
    tblConcorrentesCONCORRENTE: TcxGridDBColumn;
    tblConcorrentesCODFUNC: TcxGridDBColumn;
    tblConcorrentesFUNCIONARIO: TcxGridDBColumn;
    tblDisponiveisCODAUXILIAR: TcxGridDBColumn;
    tblDisponiveisDESCRICAOECF: TcxGridDBColumn;
    tblDisponiveisCODPROD: TcxGridDBColumn;
    tblDisponiveisEMBALAGEM: TcxGridDBColumn;
    tblIncluidosDESCRICAOECF: TcxGridDBColumn;
    tblIncluidosCODAUXILIAR: TcxGridDBColumn;
    tblIncluidosEMBALAGEM: TcxGridDBColumn;
    tblIncluidosCODPROD: TcxGridDBColumn;
    tblDisponiveisColumn1: TcxGridDBColumn;
    ActionList1: TActionList;
    actInserirF2: TAction;
    actRemoverF3: TAction;
    actInserirTodos: TAction;
    gb2: TcxGroupBox;
    cpFilial: TCampoPesquisa;
    cpProduto: TCampoPesquisa;
    cpFuncionario: TCampoPesquisa;
    cpCotacao: TCampoPesquisa;
    cpConcorrente: TCampoPesquisa;
    cpBarras: TCampoPesquisa;
    dtIni: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    dtFim: TcxDateEdit;
    pnl1: TPanel;
    btnInserir: TcxButton;
    btnRemover: TcxButton;
    btnFiltros: TcxButton;
    btninserirTodos: TcxButton;
    actFiltrosF1: TAction;
    cxGrid5: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    cxGridDBTableView1NUMPESQUISA: TcxGridDBColumn;
    cxGridDBTableView1DESCRICAOPESQ: TcxGridDBColumn;
    cxGridDBTableView1DATAGERACAO: TcxGridDBColumn;
    cxGridDBTableView1CODFILIAL: TcxGridDBColumn;
    qrAux: TUniQuery;
    dtPadrao: TDatasPadroes;
    cxButton7: TcxButton;
    btnPesquisarOferta: TcxButton;
    btnIncluirOferta: TcxButton;
    tblConcorrentesCODGRUPO: TcxGridDBColumn;
    tblConcorrentesDESCRICAO: TcxGridDBColumn;
    tblConcorrentesCODFILIALPRINC: TcxGridDBColumn;
    pnl2: TPanel;
    btnEditarPesquisa: TcxButton;
    pnl3: TPanel;
    btnAvancar: TcxButton;
    btnVoltar: TcxButton;
    cxButton5: TcxButton;
    pnl4: TPanel;
    btnFinalizar: TcxButton;
    btnVoltarFinalizacao: TcxButton;
    pageRelatorio: TcxTabSheet;
    dpRelatorio: TDatasPadroes;
    cxRelatorioCotacao: TcxGridDBTableView;
    tcxGridCotacoesExportarLevel1: TcxGridLevel;
    tcxGridCotacoesExportar: TcxGrid;
    cxRelatorioCotacaoCODFILIAL: TcxGridDBColumn;
    cxRelatorioCotacaoNUMPESQUISA: TcxGridDBColumn;
    cxRelatorioCotacaoCODPROD: TcxGridDBColumn;
    cxRelatorioCotacaoDESCRICAO: TcxGridDBColumn;
    cxRelatorioCotacaoPVENDA: TcxGridDBColumn;
    cxRelatorioCotacaoPVENDAATAC: TcxGridDBColumn;
    cxRelatorioCotacaoCODCONC: TcxGridDBColumn;
    cxRelatorioCotacaoCONCORRENTE: TcxGridDBColumn;
    cxRelatorioCotacaoPVENDACONCORRENTE: TcxGridDBColumn;
    cxRelatorioCotacaoPVENDATACCONCORRENTE: TcxGridDBColumn;
    cxRelatorioCotacaoPVENDACRMCONCORRENTE: TcxGridDBColumn;
    cxRelatorioCotacaoCUSTOFIN: TcxGridDBColumn;
    cxRelatorioCotacaoDATACOTACAO: TcxGridDBColumn;
    cxRelatorioCotacaoMARGEMMINVAREJO: TcxGridDBColumn;
    cxRelatorioCotacaoMARGEMMINATAC: TcxGridDBColumn;
    cxRelatorioCotacaoMARGEMATAC: TcxGridDBColumn;
    cxRelatorioCotacaoMARGEMVAREJO: TcxGridDBColumn;
    cxRelatorioCotacaoMARGEMCONCORRENTEVAREJO: TcxGridDBColumn;
    cxRelatorioCotacaoMARGEMCONCORRENTEATACADO: TcxGridDBColumn;
    cxRelatorioCotacaoCUSTOIDEALVAREJO: TcxGridDBColumn;
    cxRelatorioCotacaoCUSTOIDEALATACADO: TcxGridDBColumn;
    btnRelatorio: TcxButton;
    Panel1: TPanel;
    cxGroupBox1: TcxGroupBox;
    psqFilialRelatorio: TCampoPesquisa;
    psqProdutoRelatorio: TCampoPesquisa;
    psqCompradorRelatorio: TCampoPesquisa;
    psqCotacaoRelatorio: TCampoPesquisa;
    psqConcorrenteRelatorio: TCampoPesquisa;
    cxLabel5: TcxLabel;
    dtInicialRelatorio: TcxDateEdit;
    dtFinalRelatorio: TcxDateEdit;
    cxLabel6: TcxLabel;
    btnPesquisarRelatorio: TcxButton;
    Panel2: TPanel;
    btnExportarExcel: TcxButton;
    btnImprimir: TcxButton;
    btnVoltarRelatorio: TcxButton;
    cxRelatorioCotacaoDESCPESQUISA: TcxGridDBColumn;
    cxRelatorioCotacaoPRODUTOFIFO: TcxGridDBColumn;
    cxRelatorioCotacaoPRODUTOFERTA: TcxGridDBColumn;
    cxRelatorioCotacaoI9URLFOTO: TcxGridDBColumn;
    cxRelatorioCotacaoTEMFOTO: TcxGridDBColumn;
    cxRelatorioCotacaoCODFORNEC: TcxGridDBColumn;
    cxRelatorioCotacaoFORNECEDOR: TcxGridDBColumn;
    cxRelatorioCotacaoCODCOMPRADOR: TcxGridDBColumn;
    cxRelatorioCotacaoCOMPRADOR: TcxGridDBColumn;
    cxRelatorioCotacaoCODEPTO: TcxGridDBColumn;
    cxRelatorioCotacaoDEPARTAMENTO: TcxGridDBColumn;
    cxRelatorioCotacaoCODSEC: TcxGridDBColumn;
    cxRelatorioCotacaoSECAO: TcxGridDBColumn;
    cxRelatorioCotacaoCODCATEGORIA: TcxGridDBColumn;
    cxRelatorioCotacaoCATEGORIA: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure btnIncluirOfertaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure tblDisponiveisCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure actInserirF2Execute(Sender: TObject);
    procedure tblDisponiveisCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tblIncluidosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actRemoverF3Execute(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure actInserirTodosExecute(Sender: TObject);
    procedure actFiltrosF1Execute(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure btnPesquisarOfertaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVoltarInicioClick(Sender: TObject);
    procedure InserirProdutoConco;
    procedure RetirarProdutoConco;
    function apenasnumeros(texto : string) : string;
    procedure btnAvancarClick(Sender: TObject);
    procedure EditarCotacao;
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnEditarPesquisaClick(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure btnVoltarFinalizacaoClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure btnPesquisarRelatorioClick(Sender: TObject);
    procedure btnVoltarRelatorioClick(Sender: TObject);
    procedure btnExportarExcelClick(Sender: TObject);
    procedure cxRelatorioCotacaoI9URLFOTOPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaConcorrente: TfrmPesquisaConcorrente;

implementation

{$R *.dfm}

uses uPesquisas, uDMPesquisaConforrente, uLogin, ufrmFiltrosPrecificacao, uFrmImagemCotacao;

procedure TfrmPesquisaConcorrente.actFiltrosF1Execute(Sender: TObject);
begin
   try
    if frmFiltrosPrecificacao = nil then
      frmFiltrosPrecificacao := TfrmFiltrosPrecificacao.Create(Application, DMPesquisaConforrente.qrPesqProdutos);

    frmFiltrosPrecificacao.ShowModal;
  except on E: Exception do begin
    Application.MessageBox(Pchar('Erro ao pesquisar produtos!' + e.Message),'Atencao', MB_ICONERROR  );
    Abort;
  end;
  end;
end;

procedure TfrmPesquisaConcorrente.actInserirF2Execute(Sender: TObject);
begin
  InserirProdutoConco;
end;

procedure TfrmPesquisaConcorrente.actRemoverF3Execute(Sender: TObject);
begin
  RetirarProdutoConco;
end;

function TfrmPesquisaConcorrente.apenasnumeros(texto: string): string;
var
  I: Integer;
  retorno : string;
begin
  retorno := '';
  for I := 1 to Length(texto) do begin
    if texto[i] in ['0'..'9'] then
      retorno := retorno + texto[i]
  end;

  Result := retorno;
end;

procedure TfrmPesquisaConcorrente.actInserirTodosExecute(Sender: TObject);
begin

  try
    btninserirTodos.Enabled := False;
    Screen.Cursor := crSQLWait;
    Application.ProcessMessages;

    DMPesquisaConforrente.qrPesqProdutos.First;
    while not DMPesquisaConforrente.qrPesqProdutos.Eof do begin
      if DMPesquisaConforrente.qrPesqProdutos.FieldByName('INCLUIDO').AsString = 'N' then
        DMPesquisaConforrente.inserirProduto;
      DMPesquisaConforrente.qrPesqProdutos.Next;
    end;
  finally
    btninserirTodos.Enabled := True;
    Screen.Cursor := crDefault;
    Application.ProcessMessages;
  end;

end;


procedure TfrmPesquisaConcorrente.btnIncluirOfertaClick(Sender: TObject);
begin
  pcPrincipal.ActivePage:= pageIncluir;

    //CDS de itens incluidos.
  DMPesquisaConforrente.cdsProdutosIncluidos.Close;
  DMPesquisaConforrente.cdsProdutosIncluidos.CreateDataSet;
  DMPesquisaConforrente.cdsProdutosIncluidos.Open;
  //cds dos concorrentes
  DMPesquisaConforrente.cdsPesquisaConcorrente.Close;
  DMPesquisaConforrente.cdsPesquisaConcorrente.CreateDataSet;
  DMPesquisaConforrente.cdsPesquisaConcorrente.Open;

  DMPesquisaConforrente.qrAux.Close;
  DMPesquisaConforrente.qrAux.SQL.Clear;
  DMPesquisaConforrente.qrAux.SQL.Add('SELECT nvl(max(numpesquisa),0) + 1 PROXNUMPESQUISA FROM pccotap');
  DMPesquisaConforrente.qrAux.Open;

  cxCodConcorrente.Text:=  DMPesquisaConforrente.qrAux.FieldByName('PROXNUMPESQUISA').Value;

 {
  DMPesquisaConforrente.qrAux.Close;
  DMPesquisaConforrente.qrAux.SQL.Clear;
  DMPesquisaConforrente.qrAux.SQL.Add('UPDATE PCCONSUM SET PROXNUMPESQUISA = NVL(PROXNUMPESQUISA,1) + 1');
  DMPesquisaConforrente.qrAux.ExecSQL;
  }

end;

procedure TfrmPesquisaConcorrente.btnPesquisarOfertaClick(Sender: TObject);
begin
  pcPrincipal.ActivePage:= pageEditar;
end;



procedure TfrmPesquisaConcorrente.btnPesquisarRelatorioClick(Sender: TObject);
begin

  try
    btnPesquisarRelatorio.Enabled := False;
    Screen.Cursor := crSQLWait;
    Application.ProcessMessages;

    if (dtInicialRelatorio.Text = '') or (dtFinalRelatorio.Text = '') then
    begin
      DmLogin.MensagemInformacao('É necessário informar um periodo para pesquisa.');
      dtInicialRelatorio.SetFocus;
      Exit;
    end;

    with DMPesquisaConforrente.qrConsultaPCCOTAI do
    begin
      Close;
      RestoreSQL;

      if psqFilialRelatorio.Text <> '' then begin
        AddWhere('  PCCOTAI.CODFILIAL = :CODFILIAL');
        ParamByName('CODFILIAL').AsString := psqFilialRelatorio.Text;
      end;

      if psqProdutoRelatorio.Text <> '' then  begin
        AddWhere('  PCCOTAI.CODPROD = :CODPROD');
        ParamByName('CODPROD').AsString := psqProdutoRelatorio.Text;
      end;

      if psqCompradorRelatorio.Text <> '' then begin
        AddWhere('  PCCOTAI.CODPROD IN (SELECT CODPROD FROM PCPRODUT WHERE CODCOMPRADOR = :CODCOMPRADOR )');
        ParamByName('CODCOMPRADOR').AsString := psqCompradorRelatorio.Text;
      end;

      if psqCotacaoRelatorio.Text <> '' then begin
        AddWhere('  PCCOTAI.NUMPESQUISA = :NUMPESQUISA');
        ParamByName('NUMPESQUISA').AsString := psqCotacaoRelatorio.Text;
      end;

      if psqConcorrenteRelatorio.Text <> '' then begin
        AddWhere('  PCCOTAI.CODCONCOR = :CODCONC');
        ParamByName('CODCONC').AsString := psqConcorrenteRelatorio.Text;
      end;

      if dtInicialRelatorio.Text <> '' then
      begin
        ParamByName('DTINICIAL').AsDate := dtInicialRelatorio.Date;
        ParamByName('DTFINAL').AsDate := dtFinalRelatorio.Date;
      end;

      Open;
    end;

  finally
    btnPesquisarRelatorio.Enabled := True;
    Screen.Cursor := crDefault;
    Application.ProcessMessages;
  end;

end;

procedure TfrmPesquisaConcorrente.btnRelatorioClick(Sender: TObject);
begin
  pcPrincipal.ActivePage := pageRelatorio;
end;

procedure TfrmPesquisaConcorrente.btnVoltarClick(Sender: TObject);
begin
  if DmLogin.MensagemPergunta('Deseja cancelar a inclusão/edição atual?') then
  begin
    cxCodConcorrente.Text := '';
    cxDescricao.Text := '';
    psqCluster.Text := '';
    psqCluster.Atualizar;
    PsaFunc.Text := '';
    PsaFunc.Atualizar;
    DMPesquisaConforrente.cdsPesquisaConcorrente.Close;
    DMPesquisaConforrente.cdsProdutosIncluidos.Close;
    pcPrincipal.ActivePage := pageMenu;
  end;
end;

procedure TfrmPesquisaConcorrente.btnVoltarFinalizacaoClick(Sender: TObject);
begin
  pcIncluir.ActivePage:= pageFiltros;
end;

procedure TfrmPesquisaConcorrente.btnVoltarInicioClick(Sender: TObject);
begin
  pcPrincipal.ActivePage := pageMenu;
end;

procedure TfrmPesquisaConcorrente.btnVoltarRelatorioClick(Sender: TObject);
begin
  DMPesquisaConforrente.qrConsultaPCCOTAI.Close;
  pcPrincipal.ActivePage := pageMenu;
end;

procedure TfrmPesquisaConcorrente.cxButton1Click(Sender: TObject);
begin
  if psqCluster.Text <> '' then
  begin

    if (not DMPesquisaConforrente.cdsPesquisaConcorrente.isEmpty) and not DMPesquisaConforrente.cdsPesquisaConcorrente.Locate('CODGRUPO', StrToInt(psqCluster.Text), []) then
    begin
      dmlogin.MensagemErroAbort('Não é possível incluir clusters diferentes na cotação!');
    end;

    DMPesquisaConforrente.qrClusterConcorrente.Close;
    DMPesquisaConforrente.qrClusterConcorrente.ParamByname('CODGRUPO').AsInteger := StrToInt(psqCluster.Text);
    DMPesquisaConforrente.qrClusterConcorrente.Open;

    if (Trim(PsaFunc.Text) = '') and (not DmLogin.MensagemPergunta('Usuário não informado, cotação ficará disponível para todos?')) then
    begin
      Exit;
    end;

    if DMPesquisaConforrente.qrClusterConcorrente.isEmpty then
    begin
      dmlogin.MensagemErroAbort('Cluster não está vinculado a nenhum concorrente, impossível incluir!');
      Exit;
    end;

    DMPesquisaConforrente.qrClusterConcorrente.First;

    while not DMPesquisaConforrente.qrClusterConcorrente.Eof do
    begin

      if DMPesquisaConforrente.cdsPesquisaConcorrente.Locate('CODCONC', StrToInt(DMPesquisaConforrente.qrClusterConcorrente.FieldByName('CODCONC').AsString), []) then
      begin
        DMPesquisaConforrente.qrClusterConcorrente.Next;
        Continue;
      end;

      DMPesquisaConforrente.cdsPesquisaConcorrente.Append;
      DMPesquisaConforrente.cdsPesquisaConcorrente.FieldByName('CODCONC').AsInteger:= StrToInt(DMPesquisaConforrente.qrClusterConcorrente.FieldByName('CODCONC').AsString);
      DMPesquisaConforrente.cdsPesquisaConcorrente.FieldByName('CONCORRENTE').AsString:= DMPesquisaConforrente.qrClusterConcorrente.FieldByName('CONCORRENTE').AsString;

      if PsaFunc.Text <> '' then
      begin
        DMPesquisaConforrente.cdsPesquisaConcorrente.FieldByName('CODFUNC').AsInteger:=  StrToInt(PsaFunc.Text);;
        DMPesquisaConforrente.cdsPesquisaConcorrente.FieldByName('FUNCIONARIO').AsString:=  PsaFunc.PesquisarEdit.Text;
      end;

      DMPesquisaConforrente.cdsPesquisaConcorrente.FieldByName('CODGRUPO').AsString:=  DMPesquisaConforrente.qrClusterConcorrente.FieldByName('CODGRUPO').AsString;
      DMPesquisaConforrente.cdsPesquisaConcorrente.FieldByName('DESCRICAO').AsString:=  DMPesquisaConforrente.qrClusterConcorrente.FieldByName('DESCRICAO').AsString;
      DMPesquisaConforrente.cdsPesquisaConcorrente.FieldByName('CODFILIALPRINC').AsString:=  DMPesquisaConforrente.qrClusterConcorrente.FieldByName('CODFILIALPRINC').AsString;
      DMPesquisaConforrente.cdsPesquisaConcorrente.Post;

       DMPesquisaConforrente.qrClusterConcorrente.Next;
    end;


  end;
end;

procedure TfrmPesquisaConcorrente.cxButton2Click(Sender: TObject);
begin
  DMPesquisaConforrente.qrPesqProdutos.First;
  while not DMPesquisaConforrente.qrPesqProdutos.Eof do
  begin
    if DMPesquisaConforrente.qrPesqProdutos.FieldByName('INCLUIDO').AsString = 'N' then
      DMPesquisaConforrente.inserirProduto;
    DMPesquisaConforrente.qrPesqProdutos.Next;
  end;
end;

procedure TfrmPesquisaConcorrente.cxButton3Click(Sender: TObject);
begin
  try
    if frmFiltrosPrecificacao = nil then
      frmFiltrosPrecificacao := TfrmFiltrosPrecificacao.Create(Application, DMPesquisaConforrente.qrConsultaPCCOTAI);

    frmFiltrosPrecificacao.ShowModal;
  finally
     frmFiltrosPrecificacao.Free;
  end;
end;

procedure TfrmPesquisaConcorrente.cxButton5Click(Sender: TObject);
begin
    pcPrincipal.ActivePage := pageMenu;
end;

procedure TfrmPesquisaConcorrente.btnAvancarClick(Sender: TObject);
begin
  if cxDescricao.Text = '' then
    dmlogin.MensagemErroAbort('Descrição não informada, favor informar!');

  if DMPesquisaConforrente.cdsPesquisaConcorrente.RecordCount > 0 then
  begin
      pcIncluir.ActivePage:= pageConfiguraOferta;
  end
  else
    Application.MessageBox('Nenhum concorrente inserido, favor inserir!', 'Atenção', MB_ICONEXCLAMATION);
end;

procedure TfrmPesquisaConcorrente.btnEditarPesquisaClick(Sender: TObject);
begin
  EditarCotacao;
end;

procedure TfrmPesquisaConcorrente.btnExportarExcelClick(Sender: TObject);
var
  caminhoDesktop : string;
begin
  if not DMPesquisaConforrente.qrConsultaPCCOTAI.IsEmpty then
  begin
     caminhoDesktop := DmLogin.getCaminhoDesktopUsuario;
     DmLogin.exportaGridExcel(caminhoDesktop + '\CotacaoConcorrente_' + formatdatetime('dd_mm_yy', Date), tcxGridCotacoesExportar);
     DmLogin.MensagemInformacao('Exportado com sucesso (' + caminhoDesktop + '\CotacaoConcorrente_' + formatdatetime('dd_mm_yy', Date) + ')');
  end;
end;

procedure TfrmPesquisaConcorrente.btnFinalizarClick(Sender: TObject);
begin

  try
      btnFinalizar.Enabled := False;
      Screen.Cursor := crSQLWait;
      Application.ProcessMessages;

      if DMPesquisaConforrente.cdsProdutosIncluidos.IsEmpty then
      begin
        DmLogin.MensagemErroAbort('Nenhum produto selecionado para cotação.');
        Exit;
      end;

      DMPesquisaConforrente.FinalizarPesquisa;
      Application.MessageBox('Pesquisa finalizada com sucesso!', 'Atenção', MB_ICONEXCLAMATION);
      Close;

  finally
    btnFinalizar.Enabled := True;
    Screen.Cursor := crDefault;
    Application.ProcessMessages;
  end;

end;

procedure TfrmPesquisaConcorrente.cxButton7Click(Sender: TObject);
begin

  with DMPesquisaConforrente.qrPesqConco do
  begin
    Close;
    RestoreSQL;
    if cpFilial.Text <> '' then begin
      AddWhere('  PCCOTAP.CODFILIAL = :CODFILIAL');
      ParamByName('CODFILIAL').AsString := cpFilial.Text;
    end;
    if cpProduto.Text <> '' then  begin
      AddWhere('  PCCOTAC.CODPROD = :CODPROD');
      ParamByName('CODPROD').AsString := cpProduto.Text;
    end;
    if cpFuncionario.Text <> '' then begin
      AddWhere('  PCCOTAP.CODFUNCDIRECIONADO = :CODFUNCDIRECIONADO');
      ParamByName('CODFUNCDIRECIONADO').AsString := cpFuncionario.Text;
    end;
    if cpCotacao.Text <> '' then begin
      AddWhere('  PCCOTAP.NUMPESQUISA = :NUMPESQUISA');
      ParamByName('NUMPESQUISA').AsString :=cpCotacao.Text;
    end;
    if cpConcorrente.Text <> '' then begin
      AddWhere('  PCCOTAP.CODCONCOR = :CODCONC');
      ParamByName('CODCONC').AsString := cpConcorrente.Text;
    end;
    if cpBarras.Text <> '' then begin
      AddWhere('  PCCOTAC.CODAUXILIAR IN (:CODAUXILIAR)');
      ParamByName('CODAUXILIAR').AsString := cpConcorrente.Text;
    end;
    if (dtIni.Text <> '') and ( dtFim.Text <> ''  ) then
    begin
      AddWhere('  PCCOTAP.DTCADASTRO BETWEEN :DTINI AND :DTFIM');
      ParamByName('DTINI').AsDate := dtIni.Date;
      ParamByName('DTFIM').AsDate := dtFim.Date;
    end;
    Open;
  end;

end;

procedure TfrmPesquisaConcorrente.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  EditarCotacao;
end;

procedure TfrmPesquisaConcorrente.cxRelatorioCotacaoI9URLFOTOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
    if DMPesquisaConforrente.qrConsultaPCCOTAI.FieldByName('I9URLFOTO').AsString <> '' then
    begin
      try
        Application.CreateForm(TfrmImagemCotacao, frmImagemCotacao);
        frmImagemCotacao.Exibir(DMPesquisaConforrente.qrConsultaPCCOTAI.FieldByName('I9URLFOTO').AsString);
        frmImagemCotacao.ShowModal;
      finally
        frmImagemCotacao.Free;
      end;
    end
    else
    begin
      DmLogin.MensagemInformacao('Sem imagem disponível!');
    end;
end;

procedure TfrmPesquisaConcorrente.EditarCotacao;
begin
  if DMPesquisaConforrente.qrPesqConco.IsEmpty then
  begin
    DmLogin.MensagemErroAbort('Nenhuma cotação disponível para edição!');
  end;

      //CDS de itens incluidos.
  DMPesquisaConforrente.cdsProdutosIncluidos.Close;
  DMPesquisaConforrente.cdsProdutosIncluidos.CreateDataSet;
  DMPesquisaConforrente.cdsProdutosIncluidos.Open;
  //cds dos concorrentes
  DMPesquisaConforrente.cdsPesquisaConcorrente.Close;
  DMPesquisaConforrente.cdsPesquisaConcorrente.CreateDataSet;
  DMPesquisaConforrente.cdsPesquisaConcorrente.Open;

  pcPrincipal.ActivePage:= pageIncluir;
  cxCodConcorrente.Text:= DMPesquisaConforrente.qrPesqConco.FieldByName('NUMPESQUISA').AsString;
  cxDescricao.Text := DMPesquisaConforrente.qrPesqConco.FieldByName('DESCRICAOPESQ').AsString;

  //Inserir Concorrentes
  with qrAux do
  begin
    Close;
    SQL.Clear;
   SQL.Add('  SELECT DISTINCT PCCOTAP.CODCONCOR,                                            ');
   SQL.Add('                  PCCONCOR.CONCORRENTE,                                         ');
   SQL.Add('                  PCCOTAP.CODFUNCDIRECIONADO AS CODFUNCGERA,                    ');
   SQL.Add('                  PCEMPR.NOME,                                                  ');
   SQL.Add('                  I9GRUPOFILIALC.CODGRUPO,                                      ');
   SQL.Add('                  I9GRUPOFILIALC.DESCRICAO,                                     ');
   SQL.Add('                  I9GRUPOFILIALC.CODFILIALPRINC                                 ');
   SQL.Add('    FROM PCCOTAP,                                                               ');
   SQL.Add('         PCCONCOR,                                                              ');
   SQL.Add('         PCEMPR,                                                                ');
   SQL.Add('         PCCOTAC,                                                               ');
   SQL.Add('         I9GRUPOFILIALC                                                         ');
   SQL.Add('   WHERE     PCCOTAP.CODCONCOR = PCCONCOR.CODCONC                               ');
   SQL.Add('         AND PCCOTAP.CODFUNCDIRECIONADO = PCEMPR.MATRICULA(+)                   ');
   SQL.Add('         AND PCCOTAP.NUMPESQUISA = PCCOTAC.NUMPESQUISA                          ');
   SQL.Add('         AND I9GRUPOFILIALC.CODGRUPO IN (SELECT I9GRUPOFILIALI.CODGRUPO         ');
   SQL.Add('                                           FROM I9GRUPOFILIALI                  ');
   SQL.Add('                                          WHERE I9GRUPOFILIALI.CODFILIAL =      ');
   SQL.Add('                                                    PCCOTAC.CODFILIAL)          ');
   SQL.Add('         AND PCCOTAP.NUMPESQUISA = :NUMPESQUISA                                 ');

    ParamByName('NUMPESQUISA').AsInteger := DMPesquisaConforrente.qrPesqConco.FieldByName('NUMPESQUISA').AsInteger;
    Open;

    First;
    while not Eof do
    begin
      DMPesquisaConforrente.cdsPesquisaConcorrente.Append;
      DMPesquisaConforrente.cdsPesquisaConcorrente.FieldByName('CODCONC').AsInteger:= FieldByName('CODCONCOR').AsInteger;
      DMPesquisaConforrente.cdsPesquisaConcorrente.FieldByName('CONCORRENTE').AsString:= FieldByName('CONCORRENTE').AsString;
      DMPesquisaConforrente.cdsPesquisaConcorrente.FieldByName('CODFUNC').AsString:=  FieldByName('CODFUNCGERA').AsString;
      DMPesquisaConforrente.cdsPesquisaConcorrente.FieldByName('FUNCIONARIO').AsString:=  FieldByName('NOME').AsString;
      DMPesquisaConforrente.cdsPesquisaConcorrente.FieldByName('CODGRUPO').AsString:=  FieldByName('CODGRUPO').AsString;
      DMPesquisaConforrente.cdsPesquisaConcorrente.FieldByName('DESCRICAO').AsString:=  FieldByName('DESCRICAO').AsString;
      DMPesquisaConforrente.cdsPesquisaConcorrente.FieldByName('CODFILIALPRINC').AsString:=  FieldByName('CODFILIALPRINC').AsString;
      DMPesquisaConforrente.cdsPesquisaConcorrente.Post;
      Next;
    end;

  end;

  //Inserir Itens
  with qrAux do begin

    Close;
    SQL.Clear;
    SQL.Add('   SELECT DISTINCT PCEMBALAGEM.CODPROD,                                  ');
    SQL.Add('      NVL(PCEMBALAGEM.DESCRICAOECF, PCPRODUT.DESCRICAO) AS DESCRICAOECF, ');
    SQL.Add('      PCEMBALAGEM.EMBALAGEM,                                             ');
    SQL.Add('      PCEMBALAGEM.CODAUXILIAR                                            ');
    SQL.Add(' FROM PCCOTAC, PCEMBALAGEM, PCPRODUT                                     ');
    SQL.Add('WHERE PCCOTAC.CODAUXILIAR = PCEMBALAGEM.CODAUXILIAR                      ');
    SQL.Add('AND PCCOTAC.CODFILIAL = PCEMBALAGEM.CODFILIAL                            ');
    SQL.Add('AND PCPRODUT.CODPROD = PCEMBALAGEM.CODPROD                               ');
    SQL.Add('AND PCCOTAC.NUMPESQUISA = :NUMPESQUISA                                   ');
    ParamByName('NUMPESQUISA').AsInteger := DMPesquisaConforrente.qrPesqConco.FieldByName('NUMPESQUISA').AsInteger;
    Open;

    First;
    while not Eof do
    begin
      DMPesquisaConforrente.cdsProdutosIncluidos.Append;
      DMPesquisaConforrente.cdsProdutosIncluidos.FieldByName('CODPROD').AsFloat:= FieldByName('CODPROD').AsFloat;
      DMPesquisaConforrente.cdsProdutosIncluidos.FieldByName('DESCRICAOECF').AsString:= FieldByName('DESCRICAOECF').AsString;
      DMPesquisaConforrente.cdsProdutosIncluidos.FieldByName('EMBALAGEM').AsString:= FieldByName('EMBALAGEM').AsString;
      DMPesquisaConforrente.cdsProdutosIncluidos.FieldByName('CODAUXILIAR').AsString:= FieldByName('CODAUXILIAR').AsString;
      DMPesquisaConforrente.cdsProdutosIncluidos.Post;
      Next;
    end;

  end;
end;

procedure TfrmPesquisaConcorrente.InserirProdutoConco;
begin
  if DMPesquisaConforrente.qrPesqProdutos.FieldByName('INCLUIDO').AsString = 'S' then
  begin
    Application.MessageBox('O item ja está na lista de ofertas!', 'Atenção', MB_ICONEXCLAMATION);
    Abort;
  end
  else
    DMPesquisaConforrente.inserirProduto;
end;

procedure TfrmPesquisaConcorrente.RetirarProdutoConco;
begin
  if not DMPesquisaConforrente.cdsProdutosIncluidos.IsEmpty then
  begin
    DMPesquisaConforrente.cdsProdutosIncluidos.Delete;
    DMPesquisaConforrente.qrPesqProdutos.Edit;
    DMPesquisaConforrente.qrPesqProdutos.FieldByName('INCLUIDO').AsString := 'N';
    DMPesquisaConforrente.qrPesqProdutos.Refresh;
  end;
end;

procedure TfrmPesquisaConcorrente.FormActivate(Sender: TObject);
begin
  pcPrincipal.ActivePage:= pageMenu;
  pcPrincipal.Properties.HideTabs:= True;
  pcIncluir.Properties.HideTabs:= True;
  pcIncluir.ActivePage := pageFiltros;
end;

procedure TfrmPesquisaConcorrente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmFiltrosPrecificacao.Free;
  frmFiltrosPrecificacao := nil;
end;

procedure TfrmPesquisaConcorrente.FormShow(Sender: TObject);
begin
  //CDS de itens incluidos.
  DMPesquisaConforrente.cdsProdutosIncluidos.Close;
  DMPesquisaConforrente.cdsProdutosIncluidos.CreateDataSet;
  DMPesquisaConforrente.cdsProdutosIncluidos.Open;
  //cds dos concorrentes
  DMPesquisaConforrente.cdsPesquisaConcorrente.Close;
  DMPesquisaConforrente.cdsPesquisaConcorrente.CreateDataSet;
  DMPesquisaConforrente.cdsPesquisaConcorrente.Open;
  //Permissão de EDIÇÃO
  btnIncluirOferta.Enabled := DmLogin.validaPermissao530(52);
  btnPesquisarOferta.Enabled := DmLogin.validaPermissao530(52);
end;

procedure TfrmPesquisaConcorrente.tblDisponiveisCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  InserirProdutoConco;
end;

procedure TfrmPesquisaConcorrente.tblDisponiveisCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[tblDisponiveis.GetColumnByFieldName('INCLUIDO').Index] = 'S') then
    ACanvas.Font.Color := clGreen;
end;

procedure TfrmPesquisaConcorrente.tblIncluidosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  RetirarProdutoConco;
end;

end.
