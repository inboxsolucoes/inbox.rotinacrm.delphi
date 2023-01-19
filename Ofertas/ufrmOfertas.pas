unit ufrmOfertas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,dxBarBuiltInMenu, Vcl.Menus, cxContainer, cxEdit, cxLabel, Vcl.StdCtrls, cxButtons, cxPC, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxGroupBox, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxCheckBox, cxSpinEdit, cxTimeEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, cxButtonEdit, System.Actions, Vcl.ActnList, CampoPesquisa, cxCurrencyEdit, MidasLib, DatasPadroes, MemDS, DBAccess, Uni, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckComboBox, cxDBCheckComboBox, cxCheckGroup, cxRadioGroup, uOferta2011, dxSkinsdxStatusBarPainter, dxStatusBar,
  cxGridBandedTableView, cxGridDBBandedTableView, udmRelatoriosOfertas,
  dxSkinMetropolis, dxSkinVisualStudio2013Light, dxSkinscxPCPainter, ufrmRelatoriosOfertas;

type
  TfrmOfertas = class(TForm)
    pcPrincipal: TcxPageControl;
    pageMenu: TcxTabSheet;
    pageIncluir: TcxTabSheet;
    pageEditar: TcxTabSheet;
    pcIncluir: TcxPageControl;
    pageIncluirItensOferta: TcxTabSheet;
    pageConfiguraOferta: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxLabel5: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    pnl1: TPanel;
    cxGroupBox5: TcxGroupBox;
    tblListados: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    btnInserir: TcxButton;
    btnRemover: TcxButton;
    tblListadosDESCRICAO: TcxGridDBColumn;
    tblListadosCODPROD: TcxGridDBColumn;
    actlst1: TActionList;
    actOfertas: TAction;
    act2: TAction;
    cxGrid1: TcxGrid;
    cxGroupBox7: TcxGroupBox;
    btnIncluirOferta: TcxButton;
    edtDescricaoOferta: TcxTextEdit;
    cxGridViewRepository1: TcxGridViewRepository;
    act3: TAction;
    tblListadosINCLUIDO: TcxGridDBColumn;
    DatasPadroes1: TDatasPadroes;
    pnl2: TPanel;
    DatasPadroes2: TDatasPadroes;
    qrFiliais: TUniQuery;
    pnl3: TPanel;
    cxButton2: TcxButton;
    tblOfertas: TcxGridDBTableView;
    cxGridOfertasLevel1: TcxGridLevel;
    cxGridOfertasCadastradas: TcxGrid;
    cbRepetirOferta: TcxCheckBox;
    gbRepetir: TcxGroupBox;
    pcRepetir: TcxPageControl;
    rgOpcoes: TcxRadioGroup;
    DatasPadroes3: TDatasPadroes;
    tblOfertasCODOFERTA: TcxGridDBColumn;
    tblOfertasCODFILIAL: TcxGridDBColumn;
    tblOfertasDESCOFERTA: TcxGridDBColumn;
    tblOfertasQTITENS: TcxGridDBColumn;
    tblOfertasDTINICIALSUGESTAO: TcxGridDBColumn;
    tblOfertasDTFINALSUGESTAO: TcxGridDBColumn;
    tblOfertasGERAVERBA: TcxGridDBColumn;
    cxLabel4: TcxLabel;
    cbStatusOfertaPesquisa: TcxComboBox;
    cxLabel9: TcxLabel;
    dtPesquisaIni: TcxDateEdit;
    cxLabel2: TcxLabel;
    dtPesquisaFim: TcxDateEdit;
    cxLabel10: TcxLabel;
    edtCodigoOferta: TcxTextEdit;
    cxLabel11: TcxLabel;
    pageConfiguraVerbas: TcxTabSheet;
    pnl4: TPanel;
    cxButton3: TcxButton;
    cxGroupBox3: TcxGroupBox;
    cxGrid4: TcxGrid;
    tblVerbasOferta: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    tblVerbasOfertaCODFORNEC: TcxGridDBColumn;
    tblVerbasOfertaFORNECEDOR: TcxGridDBColumn;
    tblVerbasOfertaTIPOVERBA: TcxGridDBColumn;
    tblVerbasOfertaVALORVERBA: TcxGridDBColumn;
    tblVerbasOfertaDTAPURACAOVERBAINI: TcxGridDBColumn;
    tblVerbasOfertaDTAPURACAOVERBAFIM: TcxGridDBColumn;
    tblVerbasOfertaTIPOPAGTOVERBA: TcxGridDBColumn;
    pnl5: TPanel;
    cxButton4: TcxButton;
    pnl6: TPanel;
    cxLabel3: TcxLabel;
    cxButton5: TcxButton;
    pnl7: TPanel;
    btnGravarOferta: TcxButton;
    btnVoltarVerbas: TcxButton;
    pmOpcoesGrid: TPopupMenu;
    popAprovarTodas: TMenuItem;
    popEditarOferta: TMenuItem;
    tblItensOferta: TcxGridDBTableView;
    tblItensOfertaCODOFERTA: TcxGridDBColumn;
    tblItensOfertaCODITEM: TcxGridDBColumn;
    tblItensOfertaCODPROD: TcxGridDBColumn;
    tblItensOfertaDESCRICAO: TcxGridDBColumn;
    tblItensOfertaCODAUXILIAR: TcxGridDBColumn;
    tblItensOfertaVLOFERTA: TcxGridDBColumn;
    tblItensOfertaVLOFERTAATAC: TcxGridDBColumn;
    tblItensOfertaGERAVERBA: TcxGridDBColumn;
    tblItensOfertaVLUNITARIOVERBA: TcxGridDBColumn;
    actDetalhesProduto: TAction;
    pnl9: TPanel;
    btnFiltros: TcxButton;
    sbIncluirProdutos: TdxStatusBar;
    btnDetalhesCusto: TcxButton;
    btnRetirarTodos: TcxButton;
    btnIncluirTodos: TcxButton;
    actIncluirTodos: TAction;
    actRetirarTodos: TAction;
    tblItensOfertaVLVERBAMARGEMMIN: TcxGridDBColumn;
    tblItensOfertaMARGEMFUTURA_OFERTA: TcxGridDBColumn;
    tblItensOfertaPVENDA: TcxGridDBColumn;
    tblItensOfertaPVENDAATAC: TcxGridDBColumn;
    tblItensOfertaCUSTOFIN: TcxGridDBColumn;
    tblItensOfertaQTESTGER: TcxGridDBColumn;
    tblItensOfertaESTOQUEEMDIAS: TcxGridDBColumn;
    tblItensOfertaDATAULTIMACOTACAO: TcxGridDBColumn;
    tblItensOfertaPVENDACONCORRENTE: TcxGridDBColumn;
    tblItensOfertaPVENDAATACCONCORRENTE: TcxGridDBColumn;
    tblItensOfertaMARGEMMINATAC: TcxGridDBColumn;
    tblItensOfertaTIPOVERBA: TcxGridDBColumn;
    tblItensOfertaDIFMARGEMATAC: TcxGridDBColumn;
    btnAnaliseOfertas: TcxButton;
    btnAprovar: TcxButton;
    btnRejeitar: TcxButton;
    btnEditar: TcxButton;
    btnCancelar: TcxButton;
    edtCodComprador: TCampoPesquisa;
    tblListadosCODPRODPRINC: TcxGridDBColumn;
    btnPesquisarOferta: TcxButton;
    edtCompradorProduto: TCampoPesquisa;
    edtProduto: TCampoPesquisa;
    edtEmbalagem: TCampoPesquisa;
    tblOfertasSELECIONADO: TcxGridDBColumn;
    psqCodOferta: TcxTextEdit;
    cxLabel1: TcxLabel;
    cmbFilialOferta: TcxCheckComboBox;
    tblOfertasSTATUS: TcxGridDBColumn;
    cbTipoVerba: TcxComboBox;
    cxLabel12: TcxLabel;
    dataPadroesVigenciaVerba: TDatasPadroes;
    btnGerarOfertaConcorrente: TcxButton;
    actOfertaConcorrente: TAction;
    pageDataOferta: TcxTabSheet;
    Panel1: TPanel;
    btnProximoPeriodo: TcxButton;
    cxGroupBox6: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxLabel7: TcxLabel;
    dtVigenciaINI: TcxDateEdit;
    dtVigenciaFIM: TcxDateEdit;
    cxButton6: TcxButton;
    txtDescricaoOferta: TcxTextEdit;
    cxLabel15: TcxLabel;
    cbOfertaRelampago: TcxCheckBox;
    groupBoxHorario: TcxGroupBox;
    cxLabel6: TcxLabel;
    cxLabel8: TcxLabel;
    horaInicial: TcxTimeEdit;
    horaFinal: TcxTimeEdit;
    cxGroupBox13: TcxGroupBox;
    gridFiliaisDisponiveis: TcxGrid;
    tblFiliaisDisponiveis: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    btnIncluirFilial: TcxButton;
    btnRemoverFilial: TcxButton;
    cxGroupBox15: TcxGroupBox;
    gridFIliaisIncluidas: TcxGrid;
    tblFiliaisIncluidas: TcxGridDBTableView;
    cxGridLevel6: TcxGridLevel;
    tblFiliaisDisponiveisCODIGO: TcxGridDBColumn;
    tblFiliaisDisponiveisRAZAOSOCIAL: TcxGridDBColumn;
    tblFiliaisIncluidasCODIGO: TcxGridDBColumn;
    tblFiliaisIncluidasRAZAOSOCIAL: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    tblIncluidos: TcxGridDBBandedTableView;
    tblIncluidosCODFILIAL: TcxGridDBBandedColumn;
    tblIncluidosCODPROD: TcxGridDBBandedColumn;
    tblIncluidosDESCRICAO: TcxGridDBBandedColumn;
    tblIncluidosCODAUXILIAR: TcxGridDBBandedColumn;
    tblIncluidosCUSTOFIN: TcxGridDBBandedColumn;
    tblIncluidosPVENDA: TcxGridDBBandedColumn;
    tblIncluidosPVENDAATAC: TcxGridDBBandedColumn;
    tblIncluidosPVENDACONCORRENTE: TcxGridDBBandedColumn;
    tblIncluidosPVENDAATACCONCORRENTE: TcxGridDBBandedColumn;
    tblIncluidosQTDISPONIVEL: TcxGridDBBandedColumn;
    tblIncluidosPERC_VENDA_ATAC: TcxGridDBBandedColumn;
    tblIncluidosPERC_VENDA_VAREJO: TcxGridDBBandedColumn;
    tblIncluidosPOFERTA_ATAC: TcxGridDBBandedColumn;
    tblIncluidosMARGEMFUTURA_OFERTA: TcxGridDBBandedColumn;
    tblIncluidosDIF_MARGEM_MINIMA: TcxGridDBBandedColumn;
    tblIncluidosMOTIVOOFERTA: TcxGridDBBandedColumn;
    tblIncluidosGERAVERBA: TcxGridDBBandedColumn;
    tblIncluidosQTUNIT: TcxGridDBBandedColumn;
    tblIncluidosVLVERBAMARGEMMIN: TcxGridDBBandedColumn;
    tblIncluidosVERBAMENORVERBAMIN: TcxGridDBBandedColumn;
    tblIncluidosMARGEMMINIMA: TcxGridDBBandedColumn;
    tblIncluidosOFERTAFAMILIA: TcxGridDBBandedColumn;
    tblIncluidosVLVERBAUNIT: TcxGridDBBandedColumn;
    tblIncluidosQTGIRODIA: TcxGridDBBandedColumn;
    btnTabloides: TcxButton;
    edtTabloide: TCampoPesquisa;
    edtTabloidePesquisa: TCampoPesquisa;
    tblListadosCODFORNEC: TcxGridDBColumn;
    tblListadosFORNECEDOR: TcxGridDBColumn;
    tblOfertasCODTABLOIDE: TcxGridDBColumn;
    cbReplicarPrecoFiliais: TcxCheckBox;
    sbRodapeOfertas: TdxStatusBar;
    tblVerbasOfertaCODFILIAL: TcxGridDBColumn;
    dtpAcompanhamento: TDatasPadroes;
    tblIncluidosPERCMARGEMDESEJADA: TcxGridDBBandedColumn;
    btnRelatorios: TcxButton;
    edtCluster: TCampoPesquisa;
    labelAviso: TcxLabel;
    cbArredondarAutomaticamente: TcxCheckBox;
    DesvincularOfertadeTabloide1: TMenuItem;
    cbVigenciaDataOferta: TcxCheckBox;
    cxGridViewRepository2: TcxGridViewRepository;
    procedure btnVoltarVerbasClick(Sender: TObject);
    procedure actOfertasExecute(Sender: TObject);
    procedure act2Execute(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnIncluirOfertaClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnGravarOfertaClick(Sender: TObject);
    procedure tblListadosCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tblIncluidosCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tblListadosCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btnFiltrosClick(Sender: TObject);
    procedure act3Execute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbOfertaRelampagoPropertiesEditValueChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cbRepetirOfertaPropertiesEditValueChanged(Sender: TObject);
    procedure btnPesquisarOfertaClick(Sender: TObject);
    procedure btnAprovarClick(Sender: TObject);
    procedure btnRejeitarClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure btnEmitirVerbasClick(Sender: TObject);
    procedure popEditarOfertaClick(Sender: TObject);
    procedure actDetalhesProdutoExecute(Sender: TObject);
    procedure btnRetirarTodosClick(Sender: TObject);
    procedure btnIncluirTodosClick(Sender: TObject);
    procedure actIncluirTodosExecute(Sender: TObject);
    procedure actRetirarTodosExecute(Sender: TObject);
    procedure tblIncluidosVLVERBAUNITPropertiesEditValueChanged(Sender: TObject);
    procedure btnEmitirDadosOfertaClick(Sender: TObject);
    procedure tblIncluidosVLVERBAUNITStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure btnEditarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tblItensOfertaVLUNITARIOVERBAStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure btnDetalhesCustoClick(Sender: TObject);
    procedure tblOfertasCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAnaliseOfertasClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnInverterSelecaoClick(Sender: TObject);
    procedure psqCodOfertaKeyPress(Sender: TObject; var Key: Char);
    procedure actOfertaConcorrenteExecute(Sender: TObject);
    procedure btnProximoPeriodoClick(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure btnIncluirFilialClick(Sender: TObject);
    procedure btnRemoverFilialClick(Sender: TObject);
    procedure tblIncluidosCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tblItensIncluidosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnTabloidesClick(Sender: TObject);
    procedure edtTabloidePropertiesEditValueChanged(Sender: TObject);
    procedure tblFiliaisDisponiveisCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tblFiliaisIncluidasCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnRelatoriosClick(Sender: TObject);
    procedure edtClusterPropertiesEditValueChanged(Sender: TObject);
    procedure tblIncluidosPOFERTA_ATACPropertiesEditValueChanged(
      Sender: TObject);
    procedure DesvincularOfertadeTabloide1Click(Sender: TObject);

  private
    { Private declarations }
    listaOfertasCriadas: TStringList;
    oferta: TOferta2011;
    vEdicaoComVerbaVinculada: Boolean;
    vOfertaLiberada: Boolean;
    vDtInicialEdicao :TDate;
    vDtFinalEdicao : TDate;
    procedure validaGravacaoOferta;
    procedure resetarTela;
    procedure configuraQueryPadrao;
    procedure populaFiliaisPesquisa;
    procedure gravaOfertaPrincipal;
    procedure localizarInseridoNaPesquisa;
    procedure SalvarPreferencias;
    procedure CarregarPreferencias;
    procedure IniciarFiliais;
    procedure instanciarTelaFiltros;
    function getFiliaisSelecionadas:string;
    function getCodOfertaTabloide(pCodFilial:String; pCodTabloide: String):Integer;
    procedure liberaOfertasTabloideCarregado;
    function getCodOfertasTabloide( codTabloide : Integer ) : String;
    procedure RejeitarOferta(pCodOferta:Integer);
    procedure RejeitarTabloide(pCodTabloide:Integer);
  public
    { Public declarations }
    vTipoOperacaoRotina: string;
  end;

var
  frmOfertas: TfrmOfertas;

implementation

uses
  uDMOfertas, uPesquisas, uLogin, ufrmFiltrosPrecificacao, uFuncoes, ufrmDetalhesCustoEstoque, ufrmGraficoConcorrente, ufrmDetalheOferta, utipoRelatorio, uFrmAplicarOferta, ufrmTabloide,
  udmPrincipal;

{$R *.dfm}

procedure TfrmOfertas.actOfertaConcorrenteExecute(Sender: TObject);
begin
  if DmLogin.validaPermissao530(20) then
  begin
      try
       Application.CreateForm(TfrmAplicarOferta, frmAplicarOferta);
       frmAplicarOferta.SetTipoPreco('CONCORRENTE');
       frmAplicarOferta.ShowModal;
      finally
        frmAplicarOferta.Free;
      end;
  end;
end;

procedure TfrmOfertas.actOfertasExecute(Sender: TObject);
begin
  if pcPrincipal.ActivePage = pageMenu then
    btnAnaliseOfertas.Click
  else
    btnInserir.Click;
end;

procedure TfrmOfertas.act2Execute(Sender: TObject);
begin
  btnRemover.Click;
end;

procedure TfrmOfertas.act3Execute(Sender: TObject);
begin
  if pcPrincipal.ActivePage = pageMenu then
    btnIncluirOferta.Click
  else
    btnFiltros.Click;
end;

procedure TfrmOfertas.actDetalhesProdutoExecute(Sender: TObject);
begin
  btnDetalhesCusto.Click;
end;

procedure TfrmOfertas.actIncluirTodosExecute(Sender: TObject);
begin
  btnIncluirTodos.Click;
end;

procedure TfrmOfertas.actRetirarTodosExecute(Sender: TObject);
begin
  btnRetirarTodos.Click;
end;



procedure TfrmOfertas.btnAprovarClick(Sender: TObject);
var
  recno : Integer;
  erros : TStringList;
  qtAprovados : Integer;
begin

  if DMOfertas.qrPesquisaOfertasCadastradas.IsEmpty then
    Exit;

  erros := TStringList.Create;
  qtAprovados := 0;

  with DMOfertas.qrPesquisaOfertasCadastradas do
  begin
    dmLogin.iniciaTransacaoBanco;
    DisableControls;
    First;
    while not Eof do
    begin
       if (FieldByName('SELECIONADO').AsString = 'S') then
       begin
          qtAprovados := qtAprovados + 1;

          //Valida se oferta está cancelada.
          if FieldByName('DTCANCEL').AsString <> '' then
          begin
            erros.Add('Oferta: '+ FieldByName('CODOFERTA').AsString + ' msg: ' + 'A oferta está cancelada!');
            Next;
            Continue;
          end;

          //Valida se oferta ja está liberada.
          if not FieldByName('DTLIBERACAO').IsNull then
          begin
            erros.Add('Oferta: '+ FieldByName('CODOFERTA').AsString + ' msg: ' + 'A oferta ja está liberada.');
            Next;
            Continue;
          end;

          //Valida se oferta ja está em edição
          if not (DmLogin.BloquearRegistro('PCOFERTAPROGRAMADAC',
                                                'DTULTALTERACAO',
                                                'CODOFERTA =  '+ FieldByName('CODOFERTA').AsString) )
          then
          begin
            erros.Add('Oferta: '+ FieldByName('CODOFERTA').AsString + ' msg: ' + 'Oferta se encontra em edição!');
            Next;
            Continue;
          end;

          try
            if (DMOfertas.qrPesquisaOfertasCadastradas.FieldByName('CODTABLOIDE').AsFloat > 0) then
            begin
              if (dmLogin.MensagemPergunta('Esta campanha, esta vinculada a outras campanhas, tem certeza que deseja aprovar todas as campanhas vinculadas ?')) then
              begin
                DMOfertas.AprovarTabloide(DMOfertas.qrPesquisaOfertasCadastradas.FieldByName('CODTABLOIDE').AsInteger);
              end;
            end
            else
            begin
              DMOfertas.AprovarOferta(DMOfertas.qrPesquisaOfertasCadastradas.FieldByName('CODOFERTA').AsInteger);
            end;
          except
            on E: Exception do begin
              erros.Add('Oferta: '+ FieldByName('CODOFERTA').AsString + ' msg: ' + 'Erro ao liberar oferta!' + #13 + e.Message);
              Next;
              Continue;
            end;
          end;

          recno := dmOfertas.qrPesquisaOfertasCadastradas.RecNo;
       end;

       RefreshRecord;
       DmLogin.LiberarRegistro('PCOFERTAPROGRAMADAC',
                               'DTULTALTERACAO',
                               'CODOFERTA =  '+ FieldByName('CODOFERTA').AsString);

       Next;
    end;

    EnableControls;
    dmOfertas.qrPesquisaOfertasCadastradas.RecNo := recno;
  end;

  if (erros.Count > 0) then
    DmLogin.abortaTransacaoBanco
  else
    DmLogin.comitarTransacaoBanco;

  if (qtAprovados > 0) then
    DmLogin.MensagemInformacao('Processo finalizado!' +  #13 + erros.Text)
  else
    dmLogin.MensagemInformacao('Sem ofertas selecionadas!');

end;

procedure TfrmOfertas.btnCancelarClick(Sender: TObject);
begin
  if (DMOfertas.qrPesquisaOfertasCadastradas.RecordCount > 0) then
  begin

    if DMOfertas.qrPesquisaOfertasCadastradas.FieldByName('DTCANCEL').AsString <> '' then
    begin
      DmLogin.MensagemInformacao('A oferta selecionada já está cancelada!');
      Exit;
    end;

    if DmLogin.MensagemPergunta('Tem certeza que deseja cancelar a oferta (' + DMOfertas.qrPesquisaOfertasCadastradas.FieldByName('CODOFERTA').AsString + ')') then
    begin
      DMOfertas.qrCancelarOferta.ParamByName('CODOFERTA').AsFloat := DMOfertas.qrPesquisaOfertasCadastradas.FieldByName('CODOFERTA').AsFloat;
      DMOfertas.qrCancelarOferta.ParamByName('MATRICULA').AsInteger := DmLogin.Matricula;
      DMOfertas.qrCancelarOferta.ExecSQL;
      DmLogin.MensagemInformacao('Oferta cancelada com sucesso!');
    end;
  end;
end;

procedure TfrmOfertas.btnDetalhesCustoClick(Sender: TObject);
begin
  if not dmOfertas.qrPesquisaOfertas.Active then
    dmLogin.MensagemErroAbort('Pesquisa um item antes!');

  try
    Application.CreateForm(TfrmCustoEstoque, frmCustoEstoque);
    frmCustoEstoque.Exibir(DMOfertas.qrPesquisaOfertas.FieldByName('CODPROD').AsInteger);
    frmCustoEstoque.ShowModal;
  finally
    frmCustoEstoque.Free;
  end;
end;

procedure TfrmOfertas.btnEditarClick(Sender: TObject);
begin
  if DMOfertas.qrPesquisaOfertasCadastradas.IsEmpty then
    DmLogin.MensagemErroAbort('Selecionar uma oferta para editar!');

  try
    Screen.Cursor := crSQLWait;
    if dmOfertas.qrPesquisaOfertasCadastradas.FieldByName('DTLIBERACAO').IsNull then
      vOfertaLiberada := false
    else
      vOfertaLiberada := true;

    if (not vOfertaLiberada) or (dmLogin.validaPermissao530(13)) then
    begin
      if not DMOfertas.qrPesquisaOfertasCadastradas.IsEmpty then
      begin

        if DMOfertas.qrPesquisaOfertasCadastradas.FieldByName('DTCANCEL').AsString <> '' then
          DmLogin.MensagemErroAbort('A oferta selecionada está cancelada!');


        //Valida se oferta ja está em edição, caso não ja trava a oferta.
        if not (DmLogin.BloquearRegistro('PCOFERTAPROGRAMADAC',
                                         'DTULTALTERACAO',
                                         'CODOFERTA =  '+ dmOfertas.qrPesquisaOfertasCadastradas.FieldByName('CODOFERTA').AsString) )
        then
          dmLogin.MensagemErroAbort('Oferta ja se encontra em edição! ');


        resetarTela;
        vTipoOperacaoRotina := 'E';
        configuraQueryPadrao;
        listaOfertasCriadas := TStringList.Create;
        frmFiltrosPrecificacao.cmbFilialPrecificacao.Enabled := false;

        with dmOfertas.qrPesquisaOfertasCadastradas do
        begin
          //verifica verbas oferta
          vEdicaoComVerbaVinculada := dmOfertas.ofertaPossuiVerbas(FieldByName('CODOFERTA').AsFloat);

          //trata colunas da grid.
          if (vOfertaLiberada) then
          begin
            tblIncluidosGERAVERBA.Options.Editing :=  false;
            tblIncluidosVLVERBAUNIT.Options.Editing :=  false;
            if vEdicaoComVerbaVinculada then
              labelAviso.Visible := true;

            btnDetalhesCusto.Enabled := false;
          end
          else
          begin
            tblIncluidosGERAVERBA.Options.Editing :=  true;
            tblIncluidosVLVERBAUNIT.Options.Editing :=  true;
            labelAviso.Visible := false;
            btnDetalhesCusto.Enabled := true;
          end;

          //Preenche campos.
          edtCodigoOferta.Text := FieldByName('CODOFERTA').AsString;
          dtVigenciaINI.Text := FieldByName('DTINICIALSUGESTAO').AsString;
          dtVigenciaFIM.Text := FieldByName('DTFINALSUGESTAO').AsString;

          // Datas de Validação de Edição
          vDtInicialEdicao := FieldByName('DTINICIALSUGESTAO').AsDateTime;
          vDtFinalEdicao := FieldByName('DTFINALSUGESTAO').AsDateTime;

          edtDescricaoOferta.Text := FieldByName('DESCOFERTA').AsString;

          if (FieldByName('CODTABLOIDE').AsInteger > 0) and (not vOfertaLiberada) then
          begin
            DmLogin.MensagemInformacao('Essa oferta pertence a um tabloide, todas as ofertas serão carregadas!');
            edtTabloide.Text := FieldByName('CODTABLOIDE').AsString;
            edtTabloide.Enabled := False;
            edtTabloide.Visible := True;

            DmLogin.BloquearRegistro('PCOFERTAPROGRAMADAC','DTULTALTERACAO',
                                     'CODOFERTA IN ( '+ getCodOfertasTabloide(FieldByName('CODTABLOIDE').AsInteger) + ' )' );

            DMOfertas.populaOfertaTabloideEditar(FieldByName('CODTABLOIDE').AsFloat);
          end
          else
          begin
            edtTabloide.Text := '';
            edtTabloide.Atualizar;
            edtTabloide.Visible := False;
            DMOfertas.populaOfertaEditar(FieldByName('CODOFERTA').AsFloat);
          end;

          frmOfertas.gridFiliaisDisponiveis.Enabled := False;
          frmOfertas.gridFIliaisIncluidas.Enabled := False;
          frmOfertas.btnIncluirFilial.Enabled := False;
          frmOfertas.btnRemoverFilial.Enabled := False;

          //Tipo de repetição da oferta
          if FieldByName('TIPO_OFERTA').AsString <> '' then
          begin
            cbRepetirOferta.Checked := true;
            rgOpcoes.EditValue := FieldByName('TIPO_OFERTA').AsString;
          end;
        end;
      end;

      pcPrincipal.ActivePage := pageIncluir;
      pcIncluir.ActivePage := pageDataOferta;
    end
    else
      DmLogin.MensagemErroAbort('Você não tem permissão para editar oferta vigente!');
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmOfertas.btnEmitirDadosOfertaClick(Sender: TObject);
var
  InDasOfertas : string;
  recno : Integer;
begin

  try
    recno := DMOfertas.qrPesquisaOfertasCadastradas.RecNo;
    tblOfertas.DataController.DataSource := nil;
    InDasOfertas := DMOfertas.getCodigoOfertasSelecionadas(False);
    tblOfertas.DataController.DataSource := DMOfertas.dsPesquisaOfertasCadastradas;
    DMOfertas.qrPesquisaOfertasCadastradas.RecNo := recno;
  except on E: Exception do
    DmLogin.MensagemErroAbort('Erro ao procurar ofertas selecionadas!' + #13 + e.Message);
  end;

  if InDasOfertas = '' then
  dmLogin.MensagemErroAbort('Selecionar ao menos uma oferta para impressão!');

  if not dmOfertas.qrPesquisaOfertasCadastradas.IsEmpty then
  begin
    with dmRelatoriosOfertas do begin
      qrRelatorioOferta.Close;
      qrRelatorioOferta.RestoreSQL;
      qrRelatorioOferta.AddWhere('ITENS.CODOFERTA IN (' + InDasOfertas + ')');
      qrRelatorioOferta.Open;
      ppEmitirDadosOferta.Print;
    end;
  end
  else
  begin
    DmLogin.MensagemInformacao('Não existem dados a serem exibidos!');
  end;

end;

procedure TfrmOfertas.btnEmitirVerbasClick(Sender: TObject);
begin

  if DMOfertas.getCodigoOfertasSelecionadas(false) <> '' then
  begin
    with dmRelatoriosOfertas do begin
      qrRelatorioOferta.Close;
      qrRelatorioOferta.RestoreSQL;
      qrRelatorioOferta.AddWhere('ITENS.CODOFERTA IN (' + DMOfertas.getCodigoOfertasSelecionadas(false) + ')');
      qrRelatorioOferta.Open;
      ppVerbasOferta.Print;
    end;
  end
  else
  begin
    dmLogin.MensagemErroAbort('Nenhuma oferta liberada ou com verba vinculada selecionada!');
  end;
end;

procedure TfrmOfertas.btnFiltrosClick(Sender: TObject);
begin
  try
    if frmFiltrosPrecificacao = nil then
      frmFiltrosPrecificacao := TfrmFiltrosPrecificacao.Create(Application, DMOfertas.qrPesquisaOfertas, True);

    frmFiltrosPrecificacao.setOferta(getFiliaisSelecionadas);
    frmFiltrosPrecificacao.ShowModal;
  except
    on E: Exception do
    begin
      Application.MessageBox(Pchar('Erro ao pesquisar produtos!' + e.Message), 'Atencao', MB_ICONERROR);
      Abort;
    end;
  end;
end;

procedure TfrmOfertas.btnGravarOfertaClick(Sender: TObject);
begin
  try
    Screen.Cursor := crSQLWait;
    btnGravarOferta.Enabled:= false;
    Application.ProcessMessages;

    try
      if not DmLogin.Conexao.InTransaction then
        DmLogin.Conexao.StartTransaction;

      validaGravacaoOferta;
      gravaOfertaPrincipal;

      DmLogin.Conexao.Commit;
      Self.Close;
    except
      on E: Exception do
      begin
        dmLogin.RollBackParaBloqueio;
        DmLogin.MensagemErroAbort('ERRO ao gravar oferta: ' + e.Message);
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    btnGravarOferta.Enabled:= true;
  end;

end;

procedure TfrmOfertas.btnIncluirFilialClick(Sender: TObject);
begin
  if DMOfertas.qrFiliaisDisponiveis.FieldByName('INCLUIDO').AsString = 'S' then
  begin
    Application.MessageBox('Filial já inserida!', 'Atenção', MB_ICONEXCLAMATION);
    abort;
  end;


  if not DMOfertas.cdsFiliaisDisponiveis.IsEmpty then
  begin
    DMOfertas.cdsFiliaisIncluidas.Append;
    DMOfertas.cdsFiliaisIncluidas.FieldByName('CODIGO').AsString := DMOfertas.cdsFiliaisDisponiveis.FieldByName('CODIGO').AsString;
    DMOfertas.cdsFiliaisIncluidas.FieldByName('RAZAOSOCIAL').AsString:= DMOfertas.cdsFiliaisDisponiveis.FieldByName('RAZAOSOCIAL').AsString;
    DMOfertas.cdsFiliaisIncluidas.Post;

    if not DMOfertas.cdsFiliaisIncluidas.IsEmpty then
    begin
      DMOfertas.cdsFiliaisDisponiveis.Delete;
    end;
  end;
end;

procedure TfrmOfertas.btnIncluirOfertaClick(Sender: TObject);
begin
  resetarTela;
  vTipoOperacaoRotina := 'N';
  //Configura abas.
  pcPrincipal.ActivePage := pageIncluir;
  pcIncluir.ActivePage := pageDataOferta;
  instanciarTelaFiltros;
  frmFiltrosPrecificacao.cmbFilialPrecificacao.Enabled := true;
  edtCodigoOferta.Text := FloatToStr(DMOfertas.getProxCodOferta);
  configuraQueryPadrao;
  listaOfertasCriadas := TStringList.Create; //cria lista para armazenar as ofertas.
  gridFiliaisDisponiveis.Enabled := True;
  gridFIliaisIncluidas.Enabled := True;
  btnIncluirFilial.Enabled := True;
  btnRemoverFilial.Enabled := True;
  edtTabloide.Text := '';
  edtTabloide.Atualizar;
  edtTabloide.Visible := False;
end;

procedure TfrmOfertas.btnIncluirTodosClick(Sender: TObject);
var
  vQtAtual, vQtTotal:Integer;
begin

  try
    vQtAtual := 0;
    vQtTotal := DMOfertas.qrPesquisaOfertas.RecordCount;
    labelAviso.Visible := True;

    DMOfertas.cdsPesquisaOfertasInseridos.DisableControls;
    DMOfertas.qrPesquisaOfertas.DisableControls;


    with dmOfertas.qrPesquisaOfertas do
    begin
      if not IsEmpty then
      begin
        First;



        while not Eof do
        begin
          vQtAtual := vQtAtual + 1;
          labelAviso.Caption := 'Inserindo registro '+IntToStr(vQtAtual)+' de '+IntToStr(vQtTotal)+'..';
          labelAviso.Refresh;
          Application.ProcessMessages;

          if DMOfertas.qrPesquisaOfertas.FieldByName('INCLUIDO').AsString = 'N' then
          begin
            DMOfertas.qrPesquisaOfertas.Edit;
            DMOfertas.qrPesquisaOfertas.FieldByName('INCLUIDO').AsString := 'S';
             btnInserir.Click;
          end;
          dmOfertas.qrPesquisaOfertas.Next;
        end;
      end;
    end;
  finally
    DMOfertas.cdsPesquisaOfertasInseridos.EnableControls;
    DMOfertas.qrPesquisaOfertas.EnableControls;
    labelAviso.Visible := False;
  end;
end;

procedure TfrmOfertas.btnInserirClick(Sender: TObject);
var
  codOfertaProdutoComVigencia : Double;
begin
  dmOfertas.inserirItemLista(0);
end;

procedure TfrmOfertas.btnInverterSelecaoClick(Sender: TObject);
begin
  DMOfertas.qrPesquisaOfertasCadastradas.First;

  while not DMOfertas.qrPesquisaOfertasCadastradas.Eof do
  begin
    DMOfertas.qrPesquisaOfertasCadastradas.Edit;

    if DMOfertas.qrPesquisaOfertasCadastradas.FieldByName('SELECIONADO').AsString = 'S' then
      DMOfertas.qrPesquisaOfertasCadastradas.FieldByName('SELECIONADO').AsString := 'N'
    else
      DMOfertas.qrPesquisaOfertasCadastradas.FieldByName('SELECIONADO').AsString := 'S';

    DMOfertas.qrPesquisaOfertasCadastradas.Post;
    DMOfertas.qrPesquisaOfertasCadastradas.Next;
  end;
end;

procedure TfrmOfertas.btnRejeitarClick(Sender: TObject);
begin
  with DMOfertas.qrPesquisaOfertasCadastradas do
  begin
    if Active then
    begin
      if RecordCount > 0 then
      begin

        if DMOfertas.qrPesquisaOfertasCadastradas.FieldByName('DTCANCEL').AsString <> '' then
          DmLogin.MensagemErroAbort('A oferta selecionada está cancelada!');

        if DMOfertas.qrPesquisaOfertasCadastradas.FieldByName('DTLIBERACAO').AsString <> '' then
          DmLogin.MensagemErroAbort('A oferta selecionada está liberada!');

        if FieldByName('DTREJEICAO').IsNull then
        begin
          try
              if (DMOfertas.qrPesquisaOfertasCadastradas.FieldByName('CODTABLOIDE').AsFloat > 0) then
              begin
                if (dmLogin.MensagemPergunta('Esta OFERTA, esta vinculada a um tabloide deseja rejeitar todas as OFERTAS vinculadas?')) then
                begin
                  RejeitarTabloide(DMOfertas.qrPesquisaOfertasCadastradas.FieldByName('CODTABLOIDE').AsInteger);
                end;
              end
              else
              begin
                RejeitarOferta(DMOfertas.qrPesquisaOfertasCadastradas.FieldByName('CODOFERTA').AsInteger);
              end;

            DMOfertas.qrPesquisaOfertasCadastradas.Refresh;
          except
            on E: Exception do
              dmLogin.MensagemErroAbort('Erro ao liberar oferta!' + #13 + e.Message);
          end;
        end
        else
        begin
          DmLogin.MensagemErroAbort('Oferta ja foi rejeitada!');
        end;
      end;
    end;
  end;
end;

procedure TfrmOfertas.btnRelatoriosClick(Sender: TObject);
begin
  Application.CreateForm(TfrmRelatoriosOfertas, frmRelatoriosOfertas);
  try
    frmRelatoriosOfertas.ShowModal;
  finally
    frmRelatoriosOfertas := nil;
  end;
end;

procedure TfrmOfertas.btnRemoverClick(Sender: TObject);
var
  codProd:Integer;
begin
  if not DMOfertas.cdsPesquisaOfertasInseridos.IsEmpty then
  begin
    codProd := DMOfertas.cdsPesquisaOfertasInseridosCODPROD.AsInteger;
    DMOfertas.cdsPesquisaOfertasInseridos.First;

    while not DMOfertas.cdsPesquisaOfertasInseridos.Eof do
    begin
      if DMOfertas.cdsPesquisaOfertasInseridosCODPROD.AsInteger = codProd then
      begin
        if (DMOfertas.cdsPesquisaOfertasInseridosVLVERBAUNIT.AsFloat > 0) and (vTipoOperacaoRotina = 'E') and (vOfertaLiberada) then
        begin
          dmLogin.MensagemErroAbort('Produto com verba configurada, não é possível retira-lo da oferta. ' +#13 +
                                    'Caso seja necessário retirá-lo, apenas cancelando oferta!');
        end;

        DMOfertas.cdsPesquisaOfertasInseridos.Delete;
        DMOfertas.cdsPesquisaOfertasInseridos.First;
      end
      else
      begin
        DMOfertas.cdsPesquisaOfertasInseridos.Next;
      end;
    end;
  end;
end;

procedure TfrmOfertas.btnRemoverFilialClick(Sender: TObject);
begin
  if not DMOfertas.cdsFiliaisIncluidas.IsEmpty then
  begin
    DMOfertas.cdsFiliaisDisponiveis.Append;
    DMOfertas.cdsFiliaisDisponiveis.FieldByName('CODIGO').AsString:= DMOfertas.cdsFiliaisIncluidas.FieldByName('CODIGO').AsString;
    DMOfertas.cdsFiliaisDisponiveis.FieldByName('RAZAOSOCIAL').AsString:= DMOfertas.cdsFiliaisIncluidas.FieldByName('RAZAOSOCIAL').AsString;
    DMOfertas.cdsFiliaisDisponiveis.Post;
    DMOfertas.cdsFiliaisIncluidas.Delete;
  end;
end;

procedure TfrmOfertas.btnRetirarTodosClick(Sender: TObject);
begin
  with dmOfertas.qrPesquisaOfertas do
  begin
    if not IsEmpty then
    begin
      First;
      while not Eof do
      begin
        DMOfertas.qrPesquisaOfertas.Edit;
        DMOfertas.qrPesquisaOfertas.FieldByName('INCLUIDO').AsString := 'N';
        Next;
      end;

      configuraQueryPadrao;
    end;
  end;
end;

procedure TfrmOfertas.btnTabloidesClick(Sender: TObject);
begin
   try
      Application.CreateForm(TfrmTabloide, frmTabloide);
      frmTabloide.ShowModal;
    finally
      frmTabloide := nil;
    end;
end;

procedure TfrmOfertas.cbOfertaRelampagoPropertiesEditValueChanged(Sender: TObject);
begin
  groupBoxHorario.Enabled := cbOfertaRelampago.Checked;
end;

procedure TfrmOfertas.cbRepetirOfertaPropertiesEditValueChanged(Sender: TObject);
begin
  gbRepetir.Enabled := cbRepetirOferta.Checked;
end;

procedure TfrmOfertas.btnPesquisarOfertaClick(Sender: TObject);
begin
  with DMOfertas.qrPesquisaOfertasCadastradas do
  begin
    Close;
    RestoreSQL;

    if edtCodComprador.Text <> '' then
    begin
      AddWhere('pcofertaprogramadac.codfuncsugestao in (' + edtCodComprador.Text + ')');
    end;

    if ((dtPesquisaIni.Text <> '') and (dtPesquisaFim.Text <> '')) then
    begin
      //FILTRO DO CABEÇALHO DAS OFERTAS
      if not cbVigenciaDataOferta.Checked then
      begin
        AddWhere(' ((:DTINI BETWEEN PCOFERTAPROGRAMADAC.DTINICIAL AND PCOFERTAPROGRAMADAC.DTFINAL) AND (:DTFIM BETWEEN PCOFERTAPROGRAMADAC.DTINICIAL AND PCOFERTAPROGRAMADAC.DTFINAL) OR ' +
                 '  ((:DTINI BETWEEN PCOFERTAPROGRAMADAC.DTINICIALSUGESTAO AND PCOFERTAPROGRAMADAC.DTFINALSUGESTAO) AND (:DTFIM BETWEEN PCOFERTAPROGRAMADAC.DTINICIALSUGESTAO AND PCOFERTAPROGRAMADAC.DTFINALSUGESTAO))) ');
      end
      else
      begin
        AddWhere(' ((:DTINI BETWEEN PCOFERTAPROGRAMADAC.DTINICIAL AND PCOFERTAPROGRAMADAC.DTFINAL) OR (:DTFIM BETWEEN PCOFERTAPROGRAMADAC.DTINICIAL AND PCOFERTAPROGRAMADAC.DTFINAL) OR ' +
                 '  ((:DTINI BETWEEN PCOFERTAPROGRAMADAC.DTINICIALSUGESTAO AND PCOFERTAPROGRAMADAC.DTFINALSUGESTAO) OR (:DTFIM BETWEEN PCOFERTAPROGRAMADAC.DTINICIALSUGESTAO AND PCOFERTAPROGRAMADAC.DTFINALSUGESTAO))) ');
      end;

      ParamByName('DTINI').AsDate := dtPesquisaIni.Date;
      ParamByName('DTFIM').AsDate := dtPesquisaFim.Date;
    end;

    if cmbFilialOferta.Text <> 'Nenhuma filial selecionada' then
    begin
      AddWhere(' PCOFERTAPROGRAMADAC.CODFILIAL IN ( ' + cmbFilialOferta.Text + ' )');
    end;

    //Validações de Status.
    if cbStatusOfertaPesquisa.ItemIndex > 0 then
    begin

      //Apenas sugestões aprovadas.
      if cbStatusOfertaPesquisa.ItemIndex = 1 then
      begin
        //referente ao cabeçalho
        AddWhere(' PCOFERTAPROGRAMADAC.DTLIBERACAO IS NOT NULL ');
      end;
      //Apenas
      if cbStatusOfertaPesquisa.ItemIndex = 2 then
      begin
        //referente ao cabeçalho
        AddWhere(' PCOFERTAPROGRAMADAC.DTREJEICAO IS NOT NULL ');
      end;

      if cbStatusOfertaPesquisa.ItemIndex = 3 then
      begin
        //referente ao cabeçalho
        AddWhere(' PCOFERTAPROGRAMADAC.DTREJEICAO IS NULL ');
        AddWhere(' PCOFERTAPROGRAMADAC.DTLIBERACAO IS NULL ');
      end;

      if cbStatusOfertaPesquisa.ItemIndex = 4 then
        AddWhere(' PCOFERTAPROGRAMADAC.DTCANCEL IS NOT NULL ')
      else
        AddWhere(' PCOFERTAPROGRAMADAC.DTCANCEL IS NULL ');

    end
    else
    begin
      AddWhere(' PCOFERTAPROGRAMADAC.DTCANCEL IS NULL ');
    end;

    if edtCompradorProduto.Text <> '' then begin
      AddWhere(' PCOFERTAPROGRAMADAC.CODOFERTA IN     (SELECT ' +
                                                     ' DISTINCT ' +
                                                     ' PCOFERTAPROGRAMADAC.CODOFERTA ' +
                                                     ' FROM PCOFERTAPROGRAMADAI, PCPRODUT, PCPRODFILIAL, PCOFERTAPROGRAMADAC, PCEMBALAGEM ' +
                                                     ' WHERE PCOFERTAPROGRAMADAC.CODOFERTA = PCOFERTAPROGRAMADAI.CODOFERTA ' +
                                                     ' AND PCEMBALAGEM.CODAUXILIAR = PCOFERTAPROGRAMADAI.CODAUXILIAR ' +
                                                     ' AND PCPRODUT.CODPROD = PCEMBALAGEM.CODPROD ' +
                                                     ' AND PCPRODFILIAL.CODPROD = PCPRODUT.CODPROD ' +
                                                     ' AND PCPRODFILIAL.CODFILIAL = PCOFERTAPROGRAMADAC.CODFILIAL '+
                                                     ' AND PCPRODFILIAL.CODCOMPRADOR IN (' +edtCompradorProduto.Text +')) ' );
    end;

    if edtProduto.Text <> '' then begin
      AddWhere(' PCOFERTAPROGRAMADAC.CODOFERTA IN     (SELECT ' +
                                                     ' DISTINCT ' +
                                                     ' PCOFERTAPROGRAMADAC.CODOFERTA ' +
                                                     ' FROM PCOFERTAPROGRAMADAI, PCPRODUT, PCPRODFILIAL, PCOFERTAPROGRAMADAC, PCEMBALAGEM ' +
                                                     ' WHERE PCOFERTAPROGRAMADAC.CODOFERTA = PCOFERTAPROGRAMADAI.CODOFERTA ' +
                                                     ' AND PCEMBALAGEM.CODAUXILIAR = PCOFERTAPROGRAMADAI.CODAUXILIAR ' +
                                                     ' AND PCPRODUT.CODPROD = PCEMBALAGEM.CODPROD ' +
                                                     ' AND PCPRODFILIAL.CODPROD = PCPRODUT.CODPROD ' +
                                                     ' AND PCPRODFILIAL.CODFILIAL = PCOFERTAPROGRAMADAC.CODFILIAL '+
                                                     ' AND PCPRODUT.CODPROD IN ('+ edtProduto.Text +')) ' );
    end;

    if edtEmbalagem.Text <> '' then begin
      AddWhere(' PCOFERTAPROGRAMADAC.CODOFERTA IN     (SELECT ' +
                                                     ' DISTINCT ' +
                                                     ' PCOFERTAPROGRAMADAC.CODOFERTA ' +
                                                     ' FROM PCOFERTAPROGRAMADAI, PCPRODUT, PCPRODFILIAL, PCOFERTAPROGRAMADAC, PCEMBALAGEM ' +
                                                     ' WHERE PCOFERTAPROGRAMADAC.CODOFERTA = PCOFERTAPROGRAMADAI.CODOFERTA ' +
                                                     ' AND PCEMBALAGEM.CODAUXILIAR = PCOFERTAPROGRAMADAI.CODAUXILIAR ' +
                                                     ' AND PCPRODUT.CODPROD = PCEMBALAGEM.CODPROD ' +
                                                     ' AND PCPRODFILIAL.CODPROD = PCPRODUT.CODPROD ' +
                                                     ' AND PCPRODFILIAL.CODFILIAL = PCOFERTAPROGRAMADAC.CODFILIAL '+
                                                     ' AND PCEMBALAGEM.CODAUXILIAR IN ('+ edtEmbalagem.Text +' ) ) ' );

    end;

    //Valida tipo de verba como filtro.
    if cbTipoVerba.ItemIndex = 1 then
      AddWhere(' PCOFERTAPROGRAMADAC.CODOFERTA IN (SELECT CODOFERTA FROM I9CONFIGVERBAOFERTA WHERE TIPOVERBA LIKE ''DEFINIDO'')')
    else if (cbTipoVerba.ItemIndex = 2) then
      AddWhere(' PCOFERTAPROGRAMADAC.CODOFERTA IN (SELECT CODOFERTA FROM I9CONFIGVERBAOFERTA WHERE TIPOVERBA LIKE ''APURAR'')')
    else if (cbTipoVerba.ItemIndex = 3) then
      AddWhere(' PCOFERTAPROGRAMADAC.CODOFERTA IN (SELECT CODOFERTA FROM I9CONFIGVERBAOFERTA WHERE TIPOVERBA LIKE ''MARGEMDIRETORIA'')')
    else if (cbTipoVerba.ItemIndex = 4) then
      AddWhere(' PCOFERTAPROGRAMADAC.CODOFERTA NOT IN (SELECT CODOFERTA FROM I9CONFIGVERBAOFERTA)');

    if psqCodOferta.Text <> '' then
    begin
      AddWhere('PCOFERTAPROGRAMADAC.CODOFERTA in (' + psqCodOferta.Text + ')');
    end;

    if txtDescricaoOferta.Text <> '' then
    begin
      AddWhere(' UPPER(PCOFERTAPROGRAMADAC.DESCOFERTA) LIKE ''%' + UpperCase(txtDescricaoOferta.Text) + '%'' ');
    end;

    if edtTabloidePesquisa.Text <> '' then
    begin
      AddWhere(' PCOFERTAPROGRAMADAC.CODTABLOIDE IN (' + edtTabloidePesquisa.Text  + ')');
    end;

    Open;
  end;
end;

procedure TfrmOfertas.btnProximoPeriodoClick(Sender: TObject);
var
  vOfertaPossuiverbas : Boolean;
  vOfertaAprovada : Boolean;
  vOfertaVigente : Boolean;
  vHoje : Tdate;
begin
  if (dtVigenciaINI.Date > dtVigenciaFIM.Date) then
    dmLogin.MensagemErroAbort('A data inicial não pode ser maior que a data final!');

  if (dtVigenciaINI.Text = '') or (dtVigenciaFIM.Text = '') then
    dmLogin.MensagemErroAbort('Informe uma vigência válida!');

  if vTipoOperacaoRotina = 'N' then
  begin
    if not (dmLogin.validaPermissao530(27)) then
    begin
      if (dtVigenciaINI.Date <= Date) or (dtVigenciaFIM.Date <= Date) then
        dmLogin.MensagemErroAbort('Não é permitido incluir ofertas que iniciem ou acabem no mesmo dia!');
    end;
  end;

  if DMOfertas.cdsFiliaisIncluidas.IsEmpty then
    dmLogin.MensagemErroAbort('Informe uma filial!');

  //Se for editar, valida tem verbas, para implementar lógica de segurança com apuração.
  if vTipoOperacaoRotina = 'E' then
  begin

    vHoje := DmLogin.Hoje;

    if ((vHoje >= dtVigenciaINI.Date) and (vHoje <= dtVigenciaFIM.Date )) then
      vOfertaVigente := True
    else
      vOfertaVigente := False;

    if edtTabloide.Text <> '' then
    begin
      vOfertaPossuiverbas := dmOfertas.tabloidePossuiVerba( StrToInt(edtTabloide.Text) );
      vOfertaAprovada := DMOfertas.tabloideTemOfertaAprovada( StrToInt(edtTabloide.Text) );
    end
    else
    begin
      vOfertaPossuiverbas := dmOfertas.ofertaPossuiVerbas( StrToInt(edtCodigoOferta.Text) );
      vOfertaAprovada := DMOfertas.ofertaEstaAprovada( StrToInt(edtCodigoOferta.Text) );
    end;

    if (vOfertaPossuiverbas and vOfertaAprovada ) then
    begin

      if (vDtInicialEdicao <= vHoje) and (vDtInicialEdicao <> dtVigenciaINI.Date) then
      begin
        DmLogin.MensagemErroAbort('Oferta com verba vinculada, não é possível alterar a data inicial da oferta!');
      end;

      if (vDtInicialEdicao > vHoje) and (dtVigenciaINI.Date <= vHoje ) then
      begin
        DmLogin.MensagemErroAbort('Oferta com verba vinculada, não é possível alterar a data inicial da oferta!');
      end;

      if (vDtFinalEdicao < vHoje) and (vDtFinalEdicao <> dtVigenciaFIM.Date) then
      begin
        DmLogin.MensagemErroAbort('Oferta com verba vinculada, não é possível alterar a data final da oferta!');
      end;

      if (vDtFinalEdicao >= vHoje) and (vHoje > dtVigenciaFIM.Date) then
      begin
        DmLogin.MensagemErroAbort('Oferta com verba vinculada, não é possível alterar a data final da oferta!');
      end;

    end;

  end;

  pcIncluir.ActivePage:= pageIncluirItensOferta;
end;

procedure TfrmOfertas.cxButton1Click(Sender: TObject);
begin
  frmtipoRelatorio.ShowModal;
end;

procedure TfrmOfertas.cxButton2Click(Sender: TObject);
begin
  pcPrincipal.ActivePage := pageMenu;
end;

procedure TfrmOfertas.cxButton3Click(Sender: TObject);
var
  existeItemVerba: Boolean;
begin
  existeItemVerba := false;

  with dmOfertas.cdsPesquisaOfertasInseridos do
  begin
    //valida sem tem item na oferta.
    if IsEmpty then
      dmLogin.MensagemErroAbort('Impossível cadastrar ofertas sem itens!');

    //Faz loop e validações em todos os itens.
    First;
    while not Eof do
    begin

      //validações referentes ao preço de oferta do atacado
      if FieldByName('TEMATACADO').AsString = 'S' then
      begin
        if ((FieldByName('POFERTA_ATAC').Value = null) or (FieldByName('POFERTA_ATAC').Value = 0)) then
          dmLogin.MensagemErroAbort('Item com preço de oferta atacado inválido!');
      end;

      //ValidaçÕes relacionadas verba da oferta.
      if (FieldByName('VLVERBAUNIT').AsFloat > 0) and (not FieldByName('VLVERBAUNIT').IsNull) then
      begin
        //Valida se a verba do item em questão está válida, se estiver, existe ao menos um item com verba.
        existeItemVerba := true;
      end;

      Next;
    end;
  end;

  //Valida se existe verba.
  if (vTipoOperacaoRotina = 'N') or ((vTipoOperacaoRotina = 'E') and (not vOfertaLiberada)) then
  begin
    if (existeItemVerba) then
    begin
      dmOfertas.insereFornecedoresVerba;
      pcIncluir.ActivePage := pageConfiguraVerbas;
    end
    else
    begin
      pcIncluir.ActivePage := pageConfiguraOferta;
    end;
  end
  else
    pcIncluir.ActivePage := pageConfiguraOferta;
end;

procedure TfrmOfertas.cxButton4Click(Sender: TObject);
begin
  //Valida configurações da oferta.
  with dmOfertas.cdsVerbasFornecedor do
  begin
    First;
    while not Eof do
    begin
      if ((FieldByName('TIPOVERBA').IsNull)
           or (FieldByName('TIPOPAGTOVERBA').IsNull)
           or (FieldByName('TIPOVERBA').AsString = '')
           or (FieldByName('TIPOPAGTOVERBA').AsString = '')) then
      begin
        dmLogin.MensagemErroAbort('Dados de oferta inválidos, favor verifique todas as informações!');
      end;
      Next;
    end;
  end;

  pcIncluir.ActivePage := pageConfiguraOferta;
end;

procedure TfrmOfertas.cxButton5Click(Sender: TObject);
begin
  //configura cds verbas
  dmOfertas.cdsVerbasFornecedor.Close;
  dmOfertas.cdsVerbasFornecedor.CreateDataSet;
  dmOfertas.cdsVerbasFornecedor.Open;

  pcIncluir.ActivePage := pageIncluirItensOferta;
end;

procedure TfrmOfertas.cxButton6Click(Sender: TObject);
begin
  pcIncluir.ActivePage:= pageDataOferta;

  if not DMOfertas.cdsPesquisaOfertasInseridos.IsEmpty then
  begin
    gridFiliaisDisponiveis.Enabled := False;
    gridFIliaisIncluidas.Enabled := False;
    btnIncluirFilial.Enabled := False;
    btnRemoverFilial.Enabled := False;
  end
  else
  begin
    gridFiliaisDisponiveis.Enabled := True;
    gridFIliaisIncluidas.Enabled := True;
    btnIncluirFilial.Enabled := True;
    btnRemoverFilial.Enabled := True;
  end;

end;

procedure TfrmOfertas.DesvincularOfertadeTabloide1Click(Sender: TObject);
begin
  if not DMOfertas.qrPesquisaOfertasCadastradas.IsEmpty then
  begin
    if (DmLogin.validaPermissao530(51)) then
    begin
      if (dmLOgin.MensagemPergunta('Tem certeza que deseja desvincular oferta ' + DMOfertas.qrPesquisaOfertasCadastradas.FieldByName('CODOFERTA').AsString + ' do tabloide ? ' + #13 +
                                   'Após retirado o vínculo, ao editar oferta do tabloide, as alteracoes no tabloide nao irao afetar esta oferta!')) then
      begin
        if (DMOfertas.desvincularOfertaTabloide(DMOfertas.qrPesquisaOfertasCadastradas.FieldByName('CODOFERTA').AsInteger)) then
            dmLogin.MensagemInformacao('Oferta: ' + DMOfertas.qrPesquisaOfertasCadastradas.FieldByName('CODOFERTA').AsString + ' desvinculada com sucesso!');
            DMOfertas.qrPesquisaOfertasCadastradas.RefreshRecord;
      end;
    end
    else
    begin
      DmLogin.MensagemErroAbort('Você não possui a permissão para desvincular oferta de tabloide!');
    end;
  end;
end;

procedure TfrmOfertas.psqCodOfertaKeyPress(Sender: TObject; var Key: Char);
begin
  if ((key in ['0'..'9'] = false) and (word(key) <> vk_back) and (Key in [','] = false)) then
      key := #0;
end;

procedure TfrmOfertas.RejeitarOferta(pCodOferta: Integer);
var
  qryRejeitar : TUniQuery;
begin
  try
    qryRejeitar := TUniQuery.Create(nil);
    qryRejeitar.Connection := DmLogin.Conexao;
    qryRejeitar.Close;
    qryRejeitar.SQL.Clear;
    qryRejeitar.SQL.Add('UPDATE PCOFERTAPROGRAMADAC SET CODFUNCREJEICAO = :CODFUNCREJEICAO, ');
    qryRejeitar.SQL.Add('DTREJEICAO = SYSDATE');
    qryRejeitar.SQL.Add('WHERE CODOFERTA = :CODOFERTA');
    qryRejeitar.ParamByName('CODFUNCREJEICAO').AsInteger := dmLogin.Matricula;
    qryRejeitar.ParamByName('CODOFERTA').AsInteger := pCodOferta;
    qryRejeitar.ExecSQL;

  finally
    qryRejeitar.Free;
  end;
end;

procedure TfrmOfertas.RejeitarTabloide(pCodTabloide: Integer);
var
  qryRejeitarTabloide : TUniQuery;
begin
  try
    qryRejeitarTabloide := TUniQuery.Create(nil);
    qryRejeitarTabloide.Connection := DmLogin.Conexao;
    qryRejeitarTabloide.Close;
    qryRejeitarTabloide.SQL.Clear;
    qryRejeitarTabloide.SQL.Add('SELECT CODOFERTA FROM PCOFERTAPROGRAMADAC WHERE CODTABLOIDE = :CODTABLOIDE AND DTREJEICAO IS NULL');
    qryRejeitarTabloide.ParamByName('CODTABLOIDE').AsInteger := pCodTabloide;
    qryRejeitarTabloide.ExecSQL;

    if not qryRejeitarTabloide.IsEmpty then
    begin
      qryRejeitarTabloide.First;
      while not qryRejeitarTabloide.Eof do
      begin
        DMOfertas.AprovarOferta(qryRejeitarTabloide.FieldByName('CODOFERTA').AsInteger);
        qryRejeitarTabloide.Next;
      end;
    end;

  finally
    qryRejeitarTabloide.Free;
  end;
end;

procedure TfrmOfertas.edtClusterPropertiesEditValueChanged(Sender: TObject);
var
  qryCluster : TUniQuery;
begin
  IniciarFiliais;

  if (edtCluster.Text <> '') then
  begin
    try
      qryCluster := TUniQuery.Create(nil);
      qryCluster.Connection := DmLogin.Conexao;
      qryCluster.SQL.Add('SELECT CODIGO FROM PCFILIAL WHERE CODIGO IN (SELECT CODFILIAL FROM I9GRUPOFILIALI WHERE I9GRUPOFILIALI.CODGRUPO = :CODGRUPO)');
      qryCluster.ParamByName('CODGRUPO').AsInteger := StrToInt(edtCluster.Text);
      qryCluster.Open;

      qryCluster.First;
      while not qryCluster.Eof do
      begin
        if DMOfertas.cdsFiliaisDisponiveis.Locate('CODIGO', qryCluster.FieldByName('CODIGO').AsString, [])  then
        begin
          btnIncluirFilial.Click;
        end;

        qryCluster.Next;
      end;
    finally
      qryCluster.Close;
      qryCluster.Free;
    end;
  end;

  edtCluster.Atualizar;
end;

procedure TfrmOfertas.edtTabloidePropertiesEditValueChanged(Sender: TObject);
var
  qrPsqTabloide : TUniQuery;
  listaFiliais: TStringList;
  I: Integer;
begin
  qrPsqTabloide := TUniQuery.Create(nil);
  qrPsqTabloide.Connection := DmLogin.Conexao;
  listaFiliais := TStringList.Create;

  try
    if edtTabloide.Text <> '' then
    begin
      qrPsqTabloide.Close;
      qrPsqTabloide.SQL.Clear;
      qrPsqTabloide.SQL.Add('SELECT * FROM I9TABLOIDE WHERE CODTABLOIDE = :CODTABLOIDE');
      qrPsqTabloide.ParamByName('CODTABLOIDE').AsString := edtTabloide.Text;
      qrPsqTabloide.Open;

      if not qrPsqTabloide.IsEmpty then
      begin
        dtVigenciaINI.Date := qrPsqTabloide.FieldByName('DTINICIAL').AsDateTime;
        dtVigenciaFIM.Date := qrPsqTabloide.FieldByName('DTFINAL').AsDateTime;
        dtVigenciaINI.Enabled := False;
        dtVigenciaFIM.Enabled := False;


        //Quando está editando será carregadas as ofertas/filiais em edição
        if not (vTipoOperacaoRotina = 'E') then
        begin
          DmLogin.Split(',', qrPsqTabloide.FieldByName('CODFILIAL').AsString, listaFiliais) ;

          for I := 0 to (listaFiliais.Count -1) do
          begin
            if Trim(listaFiliais[i]) <> '' then
            begin
              DMOfertas.cdsFiliaisDisponiveis.Locate('CODIGO', listaFiliais[i], []);
              btnIncluirFilial.Click;
            end;
          end;
        end;

        gridFiliaisDisponiveis.Enabled := False;
        gridFIliaisIncluidas.Enabled := False;
        btnIncluirFilial.Enabled := False;
        btnRemoverFilial.Enabled := False;

      end
      else
      begin
        dtVigenciaINI.Text := '';
        dtVigenciaFIM.Text := '';
        dtVigenciaINI.Enabled := True;
        dtVigenciaFIM.Enabled := True;
        gridFiliaisDisponiveis.Enabled := True;
        gridFIliaisIncluidas.Enabled := True;
        btnIncluirFilial.Enabled := True;
        btnRemoverFilial.Enabled := True;
        IniciarFiliais;
      end;

    end
    else
    begin
      dtVigenciaINI.Text := '';
      dtVigenciaFIM.Text := '';
      dtVigenciaINI.Enabled := True;
      dtVigenciaFIM.Enabled := True;
      gridFiliaisDisponiveis.Enabled := True;
      gridFIliaisIncluidas.Enabled := True;
      btnIncluirFilial.Enabled := True;
      btnRemoverFilial.Enabled := True;
      IniciarFiliais;
    end;

  finally
    qrPsqTabloide.Free;
  end;


end;

procedure TfrmOfertas.btnAnaliseOfertasClick(Sender: TObject);
begin
  instanciarTelaFiltros;
  pcPrincipal.ActivePage := pageEditar;
  populaFiliaisPesquisa;
end;

procedure TfrmOfertas.btnVoltarVerbasClick(Sender: TObject);
begin
  if dmOfertas.cdsVerbasFornecedor.RecordCount > 0 then
    pcIncluir.ActivePage := pageConfiguraVerbas
  else
    pcIncluir.ActivePage := pageIncluirItensOferta;
end;

procedure TfrmOfertas.tblIncluidosCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  AColumn: TcxGridColumn;
begin
  inherited;
  AColumn := ACellViewInfo.Item as TcxGridColumn;
  //btnInserir.Click;
  if (TcxGridColumn(AColumn) = tblIncluidosPVENDACONCORRENTE) or (TcxGridColumn(AColumn) = tblIncluidosPVENDAATACCONCORRENTE) then
  begin
    try
      Application.CreateForm(TfrmGraficoConcorrente, frmGraficoConcorrente);
      frmGraficoConcorrente.Exibir(DMOfertas.cdsPesquisaOfertasInseridos.FieldByName('CODPROD').AsInteger, DMOfertas.cdsPesquisaOfertasInseridos.FieldByName('CODFILIAL').AsString);
      frmGraficoConcorrente.ShowModal;
    finally
      frmGraficoConcorrente.Free;
    end;
  end
  else
  begin
    if not dmOfertas.qrPesquisaOfertas.IsEmpty then
    begin
       btnRemover.Click;
    end;
  end;
end;

procedure TfrmOfertas.tblIncluidosPOFERTA_ATACPropertiesEditValueChanged(
  Sender: TObject);
var
  vPrecoDigitado : Double;
begin

  vPrecoDigitado := TcxCurrencyEdit(sender).Value;

  if (frmOfertas.cbArredondarAutomaticamente.Checked) then
    TcxCurrencyEdit(sender).Value := dmPrincipal.getPrecoArredondado(vPrecoDigitado);

end;

procedure TfrmOfertas.tblIncluidosVLVERBAUNITPropertiesEditValueChanged(Sender: TObject);
begin
  if (TcxCurrencyEdit(sender).Value > dmOfertas.cdsPesquisaOfertasInseridos.FieldByName('CUSTOFIN').AsFloat) then
    DmLogin.MensagemErroAbort('Não é possível definir um valor unitário de verba maior do que o custo do produto!');

end;

procedure TfrmOfertas.tblIncluidosVLVERBAUNITStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AView: TcxGridDBBandedTableView;
begin
  AView := Sender as TcxGridDBBandedTableView;

  if ARecord.Values[AView.GetColumnByFieldName('VLVERBAMARGEMMIN').Index] > 0 then
  begin
    if ARecord.Values[AView.GetColumnByFieldName('VLVERBAUNIT').Index] < ARecord.Values[AView.GetColumnByFieldName('VLVERBAMARGEMMIN').Index] then
    begin
      AStyle := DmLogin.cxStyleColunaVermelha;
    end
    else
    begin
      AStyle := DmLogin.cxStyleColunaVerde;
    end;
  end;

end;

procedure TfrmOfertas.tblFiliaisDisponiveisCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnIncluirFilial.Click;
end;

procedure TfrmOfertas.tblFiliaisIncluidasCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnRemoverFilial.Click;
end;

procedure TfrmOfertas.tblIncluidosCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  try
    if dmOfertas.qrPesquisaOfertas.Active then
    begin
      DMOfertas.qrPesquisaOfertas.locate('CODPROD', ACellViewInfo.GridRecord.Values[tblIncluidos.GetColumnByFieldName('CODPROD').Index], []);
    end;
  finally
  end;
end;

procedure TfrmOfertas.tblItensIncluidosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  AColumn: TcxGridColumn;
begin
  inherited;
  AColumn := ACellViewInfo.Item as TcxGridColumn;
  //btnInserir.Click;
  if (TcxGridColumn(AColumn) = tblIncluidosPVENDACONCORRENTE) or (TcxGridColumn(AColumn) = tblIncluidosPVENDAATACCONCORRENTE) then
  begin
    try
      Application.CreateForm(TfrmGraficoConcorrente, frmGraficoConcorrente);
      frmGraficoConcorrente.Exibir(DMOfertas.cdsPesquisaOfertasInseridos.FieldByName('CODPROD').AsInteger, DMOfertas.cdsPesquisaOfertasInseridos.FieldByName('CODFILIAL').AsString);
      frmGraficoConcorrente.ShowModal;
    finally
      frmGraficoConcorrente.Free;
    end;
  end
  else
  begin
    if not dmOfertas.qrPesquisaOfertas.IsEmpty then
    begin
       btnRemover.Click;
    end;
  end;
end;

procedure TfrmOfertas.tblItensOfertaVLUNITARIOVERBAStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AView: TcxGridDBTableView;
begin
  AView := Sender as TcxGridDBTableView;

  if ARecord.Values[AView.GetColumnByFieldName('GERAVERBA').Index] = 'S' then
  begin
    if ARecord.Values[AView.GetColumnByFieldName('VLVERBAMARGEMMIN').Index] > 0 then
    begin
      if ARecord.Values[AView.GetColumnByFieldName('VLUNITARIOVERBA').Index] < ARecord.Values[AView.GetColumnByFieldName('VLVERBAMARGEMMIN').Index] then
      begin
        AStyle := DmLogin.cxStyleColunaVermelha;
      end
      else
      begin
        AStyle := DmLogin.cxStyleColunaVerde;
      end;
    end;
  end;
end;

procedure TfrmOfertas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmFiltrosPrecificacao.Free;
  frmFiltrosPrecificacao := nil;
  DMOfertas.qrPesquisaOfertasCadastradas.Close;
  SalvarPreferencias;

  if DmLogin.Conexao.InTransaction then
    dmLogin.Conexao.Rollback;
end;

procedure TfrmOfertas.FormCreate(Sender: TObject);
begin
  dmLogin.populaStatusBar(sbRodapeOfertas);

  if ( dmLogin.validaPermissao530(49) ) then
    cbArredondarAutomaticamente.Checked := False
  else
    cbArredondarAutomaticamente.Checked := true;
end;

procedure TfrmOfertas.FormShow(Sender: TObject);
begin
  pcPrincipal.HideTabs := true;
  pcIncluir.HideTabs := true;
  pcPrincipal.ActivePage := pageMenu;
  pcIncluir.ActivePage := pageDataOferta;
  pcRepetir.HideTabs := true;
  configuraQueryPadrao;
  dmOfertas.CarregarParametros;
  populaFiliaisPesquisa;

  //valida permissões
  btnEditar.Enabled := DmLogin.validaPermissao530(2);
  popEditarOferta.Enabled := DmLogin.validaPermissao530(2);
  gbRepetir.Enabled := DmLogin.validaPermissao530(10);
  cbRepetirOferta.Enabled := DmLogin.validaPermissao530(10);
  btnCancelar.Enabled := DmLogin.validaPermissao530(15);

  //permissoes tela de oferta
  btnAprovar.Visible := dmLogin.validaPermissao530(4);
  btnEditar.Visible := DmLogin.validaPermissao530(2);
  btnCancelar.Visible := DmLogin.validaPermissao530(15);
  btnRejeitar.Visible := DmLogin.validaPermissao530(16);
  cbArredondarAutomaticamente.Enabled := dmLogin.validaPermissao530(49);

  actOfertaConcorrente.Enabled := DmLogin.validaPermissao530(20);
  btnGerarOfertaConcorrente.Enabled := DmLogin.validaPermissao530(20);
  btnGerarOfertaConcorrente.Visible := DmLogin.validaPermissao530(20);
  btnTabloides.Enabled := DmLogin.validaPermissao530(25);

  CarregarPreferencias;
end;

procedure TfrmOfertas.CarregarPreferencias;
begin
{  if FileExists('C:\Winthor\SPOOL\' + IntToStr(DmLogin.CodRotina) + '_PRECIFICACAO.INI') then
      tblEmbalagensAbas.RestoreFromIniFile('C:\Winthor\SPOOL\' + IntToStr(DmLogin.CodRotina) + '_PRECIFICACAO.INI', true, false, [gsoUseFilter, gsoUseSummary]);}
  tblIncluidos.RestoreFromStream(DmLogin.CarregarGrid('OFERTAS2'),  True, False, [gsoUseFilter, gsoUseSummary], '9810');
end;



procedure TfrmOfertas.resetarTela;
begin
  btnFiltros.Enabled := true;
  btnInserir.Enabled := true;
  btnIncluirTodos.Enabled := True;
  edtCodigoOferta.Clear;
  dtVigenciaINI.Clear;
  dtVigenciaFIM.Clear;
  cbOfertaRelampago.Checked := false;
  groupBoxHorario.Enabled := false;
  horaInicial.Clear;
  horaFinal.Clear;
  edtDescricaoOferta.Clear;
  cbRepetirOferta.Checked := false;
  gbRepetir.Enabled := false;
  rgOpcoes.ItemIndex := 0;
  DMOfertas.qrPesquisaOfertas.Close;
  DMOfertas.cdsPesquisaOfertasInseridos.Close;
  listaOfertasCriadas := nil;
  labelAviso.Visible := false;
  btnFiltros.Enabled := true;
  btnFiltros.Enabled := true;
  edtTabloide.Text := '';
  btnDetalhesCusto.Enabled := true;
  IniciarFiliais;
end;

procedure TfrmOfertas.configuraQueryPadrao;
begin
  //Abre query padrão
  DMOfertas.qrFiliais.Close;
  DMOfertas.qrFiliais.ParamByName('CODFUNC').AsInteger := DmLogin.Matricula;
  DMOfertas.qrFiliais.Open;
  //configura cds
  DMOfertas.cdsPesquisaOfertasInseridos.Close;
  DMOfertas.cdsPesquisaOfertasInseridos.CreateDataSet;
  dmOfertas.cdsPesquisaOfertasInseridos.Open;
  //configura cds verbas
  dmOfertas.cdsVerbasFornecedor.Close;
  dmOfertas.cdsVerbasFornecedor.CreateDataSet;
  dmOfertas.cdsVerbasFornecedor.Open;
end;

procedure TfrmOfertas.popEditarOfertaClick(Sender: TObject);
begin
  btnEditar.Click;
end;

procedure TfrmOfertas.populaFiliaisPesquisa;
begin
  cmbFilialOferta.Properties.Items.Clear;
  dmOfertas.qrFiliais.Close;
  dmOfertas.qrFiliais.ParamByName('CODFUNC').AsInteger := DmLogin.Matricula;
  dmOfertas.qrFiliais.Open;
  dmOfertas.qrFiliais.First;
  while not dmOfertas.qrFiliais.Eof do
  begin
    cmbFilialOferta.Properties.Items.AddCheckItem(dmOfertas.qrFiliais.FieldByName('CODFILIAL').AsString + ' - ' + dmOfertas.qrFiliais.FieldByName('RAZAOSOCIAL').AsString,
                                                  dmOfertas.qrFiliais.FieldByName('CODIGO_TRATADO').AsString);
    dmOfertas.qrFiliais.Next;
  end;

  cmbFilialOferta.ItemIndex:= 0;
end;

function TfrmOfertas.getCodOfertasTabloide(codTabloide: Integer): String;
var
  Retorno: String;
  qry : TUniQuery;
begin

  try
    qry := TUniQuery.Create(nil);
    qry.Connection := DmLogin.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('SELECT X.CODOFERTA');
    qry.SQL.Add('FROM PCOFERTAPROGRAMADAC X');
    qry.SQL.Add('WHERE X.CODTABLOIDE = :CODTABLOIDE');
    qry.ParamByName('CODTABLOIDE').AsInteger := codTabloide;
    qry.Open;
    qry.First;

    Retorno := '';

    while not (qry.Eof) do
    begin

      if Retorno <> '' then
        Retorno := Retorno + ', ''' + qry.FieldByName('CODOFERTA').AsString + ''''
      else
        Retorno := '''' + qry.FieldByName('CODOFERTA').AsString + '''';

      qry.Next;

    end;

    Result := Retorno;

  finally
    qry.Free;
  end;

end;

function TfrmOfertas.getCodOfertaTabloide(pCodFilial:String; pCodTabloide: String): Integer;
var
  qrPsqTabloide : TUniQuery;
  listaFiliais: TStringList;
  I: Integer;
begin
  qrPsqTabloide := TUniQuery.Create(nil);
  qrPsqTabloide.Connection := DmLogin.Conexao;

  try

    qrPsqTabloide.Close;
    qrPsqTabloide.SQL.Add('SELECT CODOFERTA FROM PCOFERTAPROGRAMADAC WHERE CODFILIAL = :CODFILIAL AND CODTABLOIDE = :CODTABLOIDE');
    qrPsqTabloide.ParamByName('CODFILIAL').AsString := pCodFilial;
    qrPsqTabloide.ParamByName('CODTABLOIDE').AsString := pCodTabloide;
    qrPsqTabloide.Open;

    if not qrPsqTabloide.IsEmpty then
      Result := qrPsqTabloide.FieldByName('CODOFERTA').AsInteger
    else
      Result := 0;
  finally
   qrPsqTabloide.free;
  end;

end;

function TfrmOfertas.getFiliaisSelecionadas: string;
var
  Retorno:String;
begin
  Retorno := '';

  if DMOfertas.cdsFiliaisIncluidas.IsEmpty then
    Exit;

  DMOfertas.cdsFiliaisIncluidas.First;

  while not DMOfertas.cdsFiliaisIncluidas.Eof do
  begin
    if Retorno <> '' then
      Retorno := Retorno + ', ''' + DMOfertas.cdsFiliaisIncluidasCODIGO.AsString  + ''''
    else
      Retorno := '''' + DMOfertas.cdsFiliaisIncluidasCODIGO.AsString + '''';

    DMOfertas.cdsFiliaisIncluidas.Next;
  end;

  Result := Retorno;
end;

procedure TfrmOfertas.gravaOfertaPrincipal;
begin
  DMOfertas.cdsFiliaisIncluidas.First;

  while not DMOfertas.cdsFiliaisIncluidas.Eof do
  begin

    //Se nao existir nenhum item para a FILIAL no CDS de Itens, pula para a proxima FILIAL
    if not DMOfertas.cdsPesquisaOfertasInseridos.Locate('CODFILIAL', DMOfertas.cdsFiliaisIncluidasCODIGO.AsString, []) then
    begin
      DMOfertas.cdsFiliaisIncluidas.Next;
      Continue;
    end;

    oferta := TOferta2011.Create;

    if vTipoOperacaoRotina = 'N' then
      edtCodigoOferta.Text :=  FloatToStr(DMOfertas.getProxCodOferta);

    //Se for uma edição de tabloide - Localiza o CODOFERTA da FILIAL ATUAL nos Itens
    if (edtTabloide.Text <> '') and (vTipoOperacaoRotina = 'E') then
    begin
      DMOfertas.cdsPesquisaOfertasInseridos.Locate('CODFILIAL', DMOfertas.cdsFiliaisIncluidasCODIGO.AsString, []);
      edtCodigoOferta.Text := IntToStr(getCodOfertaTabloide(DMOfertas.cdsFiliaisIncluidasCODIGO.AsString, edtTabloide.Text));
    end;

    oferta.codOferta := StrToFloat(edtCodigoOferta.Text);
    oferta.codFilial := DMOfertas.cdsFiliaisIncluidasCODIGO.AsString;
    oferta.descricao := edtDescricaoOferta.Text;
    oferta.horaInicial := horaInicial.Text;
    oferta.horaFinal := horaFinal.Text;
    oferta.dataInicial := dtVigenciaINI.Date;
    oferta.dataFinal := dtVigenciaFIM.Date;

    if edtTabloide.Text <> '' then
      oferta.codTabloide := StrToFloat(edtTabloide.Text)
    else
      oferta.codTabloide := 0;

    if cbOfertaRelampago.Checked then
      oferta.ofertaRelampago:= 'S'
    else
      oferta.ofertaRelampago:= 'N';

    if DMOfertas.cdsVerbasFornecedor.Locate('CODFILIAL', oferta.codFilial, []) then
      oferta.geraverbaCabecalho := 'S';

    if cbRepetirOferta.Checked then
      oferta.tipo_oferta := rgOpcoes.EditValue;

    //Se oferta não estiver aprovada, quer dizer que pode fazer as validações / alterações de verba.
    if (not dmOfertas.ofertaEstaAprovada(oferta.codOferta)) then
    begin
      DMOfertas.geraInformacoesVerbas(oferta.codOferta,
                                      DMOfertas.cdsFiliaisIncluidasCODIGO.AsString,
                                      dtVigenciaINI.Date,
                                      dtVigenciaFIM.Date);
    end;

    dmOfertas.limpaItensOferta(oferta.codOferta);
    DMOfertas.insereOferta(oferta);  //grava os dados da oferta.
    DmLogin.MensagemInformacao('Oferta gravada com sucesso: ' + #13 + 'Filial: ' + oferta.codFilial + ' - Cod. Oferta: ' + FloatToStr(oferta.codOferta));
    oferta := nil;
    DMOfertas.cdsFiliaisIncluidas.Next;
  end;
end;

procedure TfrmOfertas.liberaOfertasTabloideCarregado;
begin
  while not DMOfertas.cdsFiliaisIncluidas.Eof do
  begin
    edtCodigoOferta.Text := IntToStr(getCodOfertaTabloide(DMOfertas.cdsFiliaisIncluidasCODIGO.AsString, edtTabloide.Text));
  end;
end;

procedure TfrmOfertas.localizarInseridoNaPesquisa;
begin

end;

procedure TfrmOfertas.tblListadosCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  AColumn: TcxGridColumn;
begin
  inherited;
  AColumn := ACellViewInfo.Item as TcxGridColumn;
  //btnInserir.Click;
  if not dmOfertas.qrPesquisaOfertas.IsEmpty then
  begin
    btnInserir.Click;
  end;
end;

procedure TfrmOfertas.tblListadosCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[tblListados.GetColumnByFieldName('INCLUIDO').Index] = 'S') then
    ACanvas.Font.Color := clGreen;
end;

procedure TfrmOfertas.tblOfertasCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Application.CreateForm(TfrmDetalheOferta, frmDetalheOferta);

  with DMOfertas.qrOfertasCadastradasItem do begin
    Close;
    ParamByName('CODOFERTA').AsFloat := dmOfertas.qrPesquisaOfertasCadastradas.FieldByName('CODOFERTA').AsFloat;
    Open;
  end;

  frmDetalheOferta.ShowModal();
end;

procedure TfrmOfertas.validaGravacaoOferta;
var
  vCODFORNEC: Double;
  vCODAUXILIAR: Double;
  vMSGValidaOfertaItem: string;
  I: Integer;
  filial: string;
begin
  if dmOfertas.cdsPesquisaOfertasInseridos.Active then
  begin
    if dmOfertas.cdsPesquisaOfertasInseridos.RecordCount = 0 then
    begin
      dmLogin.MensagemErroAbort('Nenhum item inserido na oferta!');
    end;
  end;

  if edtDescricaoOferta.Text = '' then
    DmLogin.MensagemErroAbort('Descrição de oferta inválida');

  if (dtVigenciaINI.Text = '') or (dtVigenciaFIM.Text = '') then
    dmLogin.MensagemErroAbort('Informe uma vigência válida!');

  if cbRepetirOferta.Checked then
  begin
    if rgOpcoes.EditValue = 'SEMANAL' then
    begin
      if ((dtVigenciaFIM.Date - dtVigenciaINI.Date) > 7) then
        dmLogin.MensagemErroAbort('Selecione um período válido para oferta semanal.');
    end;

    if rgOpcoes.EditValue = 'MENSAL' then
    begin
      if ((dtVigenciaFIM.Date - dtVigenciaINI.Date) > 30) then
        dmLogin.MensagemErroAbort('Selecione um período válido para oferta mensal.');
    end;

    if rgOpcoes.EditValue = 'DIAFIXO' then
    begin
      if ((dtVigenciaFIM.Date - dtVigenciaINI.Date) > 1) then
        dmLogin.MensagemErroAbort('Selecione um período válido para oferta dia fixo.');
    end;
  end;

  
end;

procedure TfrmOfertas.SalvarPreferencias;
var
  vStream : TMemoryStream;
  qrySalvar : TUniQuery;
begin
  {tblEmbalagensAbas.StoreToIniFile('C:\Winthor\SPOOL\' + IntToStr(DmLogin.CodRotina) + '_PRECIFICACAO.INI', true, [gsoUseFilter, gsoUseSummary]);}
  vStream := TMemoryStream.Create;
  tblIncluidos.StoreToStream(vStream, [gsoUseFilter, gsoUseSummary], '9810');
  DmLogin.SalvarGrid('OFERTAS2', vStream);
  vStream.Position := 0;
end;


procedure TfrmOfertas.IniciarFiliais;
begin
  if not DMOfertas.cdsFiliaisDisponiveis.Active then
  begin
     DMOfertas.cdsFiliaisDisponiveis.CreateDataSet;
     DMOfertas.cdsFiliaisDisponiveis.Open;
  end
  else
  begin
    DMOfertas.cdsFiliaisDisponiveis.EmptyDataSet;
  end;


  if not DMOfertas.cdsFiliaisIncluidas.Active then
  begin
     DMOfertas.cdsFiliaisIncluidas.CreateDataSet;
     DMOfertas.cdsFiliaisIncluidas.Open;
  end
  else
  begin
     DMOfertas.cdsFiliaisIncluidas.EmptyDataSet;
  end;

  DMOfertas.qrFiliaisDisponiveis.Close;
  DMOfertas.qrFiliaisDisponiveis.ParamByName('CODFUNC').AsInteger := DmLogin.Matricula;
  DMOfertas.qrFiliaisDisponiveis.Open;

  DMOfertas.qrFiliaisDisponiveis.First;
  while not DMOfertas.qrFiliaisDisponiveis.Eof do
  begin
    DMOfertas.cdsFiliaisDisponiveis.Append;
    DMOfertas.cdsFiliaisDisponiveis.FieldByName('CODIGO').AsString := DMOfertas.qrFiliaisDisponiveis.FieldByName('CODIGO').AsString;
    DMOfertas.cdsFiliaisDisponiveis.FieldByName('RAZAOSOCIAL').AsString := DMOfertas.qrFiliaisDisponiveis.FieldByName('RAZAOSOCIAL').AsString;
    DMOfertas.cdsFiliaisDisponiveis.Post;
    DMOfertas.qrFiliaisDisponiveis.Next;
  end;
end;

procedure TfrmOfertas.instanciarTelaFiltros;
begin
  //Cria tela de filtros.
  if frmFiltrosPrecificacao = nil then
    frmFiltrosPrecificacao := TfrmFiltrosPrecificacao.Create(Application, DMOfertas.qrPesquisaOfertas);
end;

end.


