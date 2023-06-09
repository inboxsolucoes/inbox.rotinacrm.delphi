unit ufrmCampanhaCRM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters,cxContainer, cxEdit,
  Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, Vcl.ComCtrls, dxCore, cxDateUtils, cxCheckBox,
  cxSpinEdit, cxTimeEdit, cxDropDownEdit, cxCalendar, Vcl.ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, CampoPesquisa, cxLabel, cxMaskEdit,
  cxDBEdit, Vcl.StdCtrls, cxButtons, cxGroupBox, cxPC, cxCheckComboBox,
  cxCurrencyEdit, cxRadioGroup, DatasPadroes, System.Actions, Vcl.ActnList,
  MemDS, DBAccess, Uni, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxCoreClasses, dxHashUtils, dxSpreadSheetCore, dxSpreadSheetCoreHistory,
  dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules,
  dxSpreadSheetClasses, dxSpreadSheetContainers, dxSpreadSheetFormulas,
  dxSpreadSheetHyperlinks, dxSpreadSheetFunctions, dxSpreadSheetGraphics,
  dxSpreadSheetPrinting, dxSpreadSheetTypes, dxSpreadSheetUtils, dxSpreadSheet,
  cxProgressBar,  dxSkinsdxStatusBarPainter, dxStatusBar,
  cxGridBandedTableView, cxGridDBBandedTableView, cxButtonEdit, ufrmDetalheCampanhaCRM,
  dxSkinsCore, dxSkinMetropolis, dxSkinVisualStudio2013Light,
  dxSkinscxPCPainter, dxBarBuiltInMenu, ufrmRelatoriosCRM, Datasnap.DBClient,
  dxSkinMetropolisDark, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2013White, dxGDIPlusClasses,
  dxSkinOffice2016Dark;

type
  TfrmCampanhaCRM = class(TForm)
    pcPrincipal: TcxPageControl;
    pageMenu: TcxTabSheet;
    pageIncluir: TcxTabSheet;
    pcIncluir: TcxPageControl;
    pageFiltros: TcxTabSheet;
    pageConfiguraOferta: TcxTabSheet;
    pageEditar: TcxTabSheet;
    cxGroupBox9: TcxGroupBox;
    edtDescricaoCRM: TcxTextEdit;
    cxLabel3: TcxLabel;
    pcCondicoes: TcxPageControl;
    pgProdutos: TcxTabSheet;
    v: TcxGroupBox;
    edtFilialConsulta: TCampoPesquisa;
    edtCampanhaConsulta: TCampoPesquisa;
    dtInicialPesquisa: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    dtFinalPesquisa: TcxDateEdit;
    cxGrid5: TcxGrid;
    tblPesquisaOfertas: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    btnPesquisarCampanhas: TcxButton;
    dpPeriodoCampanha: TDatasPadroes;
    dtInicialCampanha: TcxDateEdit;
    dtFinalCampanha: TcxDateEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    qrFiliais: TUniQuery;
    dsFiliais: TUniDataSource;
    dpPeriodoPesquisa: TDatasPadroes;
    dlgPlanilha: TFileOpenDialog;
    ActionList1: TActionList;
    actInserirF2: TAction;
    actRemoverF3: TAction;
    tblPesquisaOfertasCODCAMPANHACRM: TcxGridDBColumn;
    tblPesquisaOfertasDESCRICAOCAMPANHACRM: TcxGridDBColumn;
    tblPesquisaOfertasDTINICIAL: TcxGridDBColumn;
    tblPesquisaOfertasDTFINAL: TcxGridDBColumn;
    tblPesquisaOfertasCODFILIAL: TcxGridDBColumn;
    tblPesquisaOfertasSTATUS: TcxGridDBColumn;
    cbStatusCampanha: TcxComboBox;
    cxLabel9: TcxLabel;
    Panel1: TPanel;
    btnAvancar: TcxButton;
    btnVoltarInicio: TcxButton;
    Panel2: TPanel;
    btnGravarCampanha: TcxButton;
    btnVoltarInicoCampanha: TcxButton;
    dlgListaCPF: TFileOpenDialog;
    sbRodapeCRM: TdxStatusBar;
    cxGroupBox4: TcxGroupBox;
    cxGrid1: TcxGrid;
    tblIncluidos: TcxGridDBTableView;
    tblIncluidosCODPROD: TcxGridDBColumn;
    tblIncluidosPRODUTO: TcxGridDBColumn;
    tblIncluidosPERCDESC: TcxGridDBColumn;
    tblIncluidosVLVERBAUNITARIO: TcxGridDBColumn;
    pbStatusGravacao: TcxProgressBar;
    cxGroupBox8: TcxGroupBox;
    pnl1: TPanel;
    btnInserir: TcxButton;
    btnRemoverCondicao: TcxButton;
    pnl9: TPanel;
    btnFiltrosCRM: TcxButton;
    gridPesquisaItensOferta: TcxGrid;
    tblListados: TcxGridDBTableView;
    tblListadosCODPROD: TcxGridDBColumn;
    tblListadosDESCRICAO: TcxGridDBColumn;
    tblListadosCODPRODPRINC: TcxGridDBColumn;
    tblListadosINCLUIDO: TcxGridDBColumn;
    tblListadosCODFORNEC: TcxGridDBColumn;
    tblListadosFORNECEDOR: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    tblIncluidosPVENDA: TcxGridDBColumn;
    tblIncluidosPVENDAATAC: TcxGridDBColumn;
    tblIncluidosPVENDACRM: TcxGridDBColumn;
    tblIncluidosPVENDACRMARREDONDADO: TcxGridDBColumn;
    tblIncluidosCUSTOFIN: TcxGridDBColumn;
    tblIncluidosMARGEMFUTURACRM: TcxGridDBColumn;
    tblIncluidosDIFMARGEMCRMATACADO: TcxGridDBColumn;
    tblIncluidosCODFILIAL: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    tblProdutosIncluidos: TcxGridDBBandedTableView;
    tblProdutosIncluidosCODFILIAL: TcxGridDBBandedColumn;
    tblProdutosIncluidosCODPROD: TcxGridDBBandedColumn;
    tblProdutosIncluidosDESCRICAO: TcxGridDBBandedColumn;
    tblProdutosIncluidosCUSTOFIN: TcxGridDBBandedColumn;
    tblProdutosIncluidosPERCDESC: TcxGridDBBandedColumn;
    tblProdutosIncluidosVLVERBAUNITARIO: TcxGridDBBandedColumn;
    tblProdutosIncluidosPVENDA: TcxGridDBBandedColumn;
    tblProdutosIncluidosPVENDAATAC: TcxGridDBBandedColumn;
    tblProdutosIncluidosPVENDACRM: TcxGridDBBandedColumn;
    tblProdutosIncluidosPVENDACRMARREDONDADO: TcxGridDBBandedColumn;
    tblProdutosIncluidosMARGEMFUTURACRM: TcxGridDBBandedColumn;
    tblProdutosIncluidosDIFMARGEMCRMATACADO: TcxGridDBBandedColumn;
    tblProdutosIncluidosMARGEMMIN: TcxGridDBBandedColumn;
    tblProdutosIncluidosVLVERBAMARGEMMIN: TcxGridDBBandedColumn;
    tblProdutosIncluidosTEMFAMILIA: TcxGridDBBandedColumn;
    cxGridViewRepository1: TcxGridViewRepository;
    tblPesquisaOfertasDTREBAIXACUSTO: TcxGridDBColumn;
    tblPesquisaOfertasQTITENS: TcxGridDBColumn;
    edtCodprod: TCampoPesquisa;
    cxGroupBox13: TcxGroupBox;
    gridFiliaisDisponiveis: TcxGrid;
    tblFiliaisDisponiveis: TcxGridDBTableView;
    tblFiliaisDisponiveisCODIGO: TcxGridDBColumn;
    tblFiliaisDisponiveisRAZAOSOCIAL: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    btnIncluirFilial: TcxButton;
    btnRemoverFilial: TcxButton;
    cxGroupBox15: TcxGroupBox;
    gridFIliaisIncluidas: TcxGrid;
    tblFiliaisIncluidas: TcxGridDBTableView;
    tblFiliaisIncluidasCODIGO: TcxGridDBColumn;
    tblFiliaisIncluidasRAZAOSOCIAL: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    tblFiliaisIncluidasCODCAMPANHACRM: TcxGridDBColumn;
    tblProdutosIncluidosCODCAMPANHACRM: TcxGridDBBandedColumn;
    cxLabel1: TcxLabel;
    edtCodTabloideCRM: TcxCurrencyEdit;
    tblPesquisaOfertasCODTABLOIDECRM: TcxGridDBColumn;
    cbReplicarPrecoFiliais: TcxCheckBox;
    tblPesquisaOfertasAcoes: TcxGridDBColumn;
    actAprovar: TAction;
    actRejeitar: TAction;
    tblPesquisaOfertasPOSSUIVERBA: TcxGridDBColumn;
    cxLabel5: TcxLabel;
    cbStatusVerbaCampanha: TcxComboBox;
    tblPesquisaOfertasSELECIONADO: TcxGridDBColumn;
    Panel4: TPanel;
    Label1: TLabel;
    Panel5: TPanel;
    Label2: TLabel;
    Panel6: TPanel;
    btnVoltar: TcxButton;
    btnEditar: TcxButton;
    btnCancelar: TcxButton;
    btnRelizarRebaixa: TcxButton;
    tblProdutosIncluidosQTEST: TcxGridDBBandedColumn;
    pmGridPesquisa: TPopupMenu;
    N1: TMenuItem;
    DesvincularCampanhadeFiliais1: TMenuItem;
    actDesvincularCampanhaFiliais: TAction;
    tblProdutosIncluidosPERCMARGEMDESEJADA: TcxGridDBBandedColumn;
    pageConfiguraVerbas: TcxTabSheet;
    cxGroupBox3: TcxGroupBox;
    cxGrid4: TcxGrid;
    tblVerbasCampanha: TcxGridDBTableView;
    tblVerbasCampanhaCODFILIAL: TcxGridDBColumn;
    tblVerbasCampanhaCODFORNEC: TcxGridDBColumn;
    tblVerbasCampanhaFORNECEDOR: TcxGridDBColumn;
    tblVerbasCampanhaTIPOVERBA: TcxGridDBColumn;
    tblVerbasCampanhaTIPOPAGTOVERBA: TcxGridDBColumn;
    tblVerbasCampanhaVALORVERBA: TcxGridDBColumn;
    tblVerbasCampanhaDTAPURACAOVERBAINI: TcxGridDBColumn;
    tblVerbasCampanhaDTAPURACAOVERBAFIM: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    pnl5: TPanel;
    cxButton5: TcxButton;
    pnl6: TPanel;
    cxLabel8: TcxLabel;
    btnGravarCampanhaVB: TcxButton;
    cxButton3: TcxButton;
    cxLabel13: TcxLabel;
    cbTipoVerba: TcxComboBox;
    tblPesquisaOfertasCODFUNCINCLUSAO: TcxGridDBColumn;
    tblPesquisaOfertasFUNCINCLUSAO: TcxGridDBColumn;
    btnIncluirCampanha: TcxButton;
    btnPesquisarCampanha: TcxButton;
    lbl1: TLabel;
    lbl2: TLabel;
    img1: TImage;
    pageClientesCampanha: TcxTabSheet;
    GroupBox2: TGroupBox;
    gridClientesGrupo: TcxGrid;
    tblClientesGrupo: TcxGridDBTableView;
    gridClientesGrupoLevel1: TcxGridLevel;
    btnRemoverClienteGrupo: TcxButton;
    btnRemoverTodosClientes: TcxButton;
    psqClienteDirecionado: TCampoPesquisa;
    btnAddClienteGrupo: TcxButton;
    edtCGCENTDirecionado: TcxTextEdit;
    cxLabel12: TcxLabel;
    btnAddCPFGrupo: TcxButton;
    btnImportarCPFTXT: TcxButton;
    Panel3: TPanel;
    btnVoltarCliente: TcxButton;
    btnAvancarCliente: TcxButton;
    cbCampanhaDirecionada: TcxCheckBox;
    tblPesquisaOfertasCAMPANHADIRECIONADA: TcxGridDBColumn;
    cxLabel10: TcxLabel;
    comboCampanhaDirecionada: TcxComboBox;
    pbCarregarClientes: TcxProgressBar;
    tblClientesGrupoCODCLI: TcxGridDBColumn;
    tblClientesGrupoCGCENT: TcxGridDBColumn;
    btnImportarCSV: TcxButton;
    procedure btnIncluirCampanhaClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actInserirF2Execute(Sender: TObject);
    procedure tblIncluidosCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure btnPesquisarCampanhaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnGravarCampanhaClick(Sender: TObject);
    procedure btnPesquisarCampanhasClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnVoltarInicioClick(Sender: TObject);
    procedure btnVoltarInicoCampanhaClick(Sender: TObject);
    procedure btnFiltrosCRMClick(Sender: TObject);
    procedure tblListadosCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tblIncluidosPERCDESCPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure btnRemoverCondicaoClick(Sender: TObject);
    procedure btnRelizarRebaixaClick(Sender: TObject);
    procedure btnIncluirFilialClick(Sender: TObject);
    procedure btnRemoverFilialClick(Sender: TObject);
    procedure actAprovarExecute(Sender: TObject);
    procedure actRejeitarExecute(Sender: TObject);
    procedure tblPesquisaOfertasStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure tblFiliaisDisponiveisCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tblFiliaisIncluidasCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tblPesquisaOfertasCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actDesvincularCampanhaFiliaisExecute(Sender: TObject);
    procedure btnGravarCampanhaVBClick(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure tblProdutosIncluidosVLVERBAUNITARIOStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure FormCreate(Sender: TObject);
    procedure btnAddClienteGrupoClick(Sender: TObject);
    procedure btnAddCPFGrupoClick(Sender: TObject);
    procedure btnRemoverClienteGrupoClick(Sender: TObject);
    procedure btnRemoverTodosClientesClick(Sender: TObject);
    procedure btnImportarCPFTXTClick(Sender: TObject);
    procedure btnAvancarClienteClick(Sender: TObject);
    procedure btnVoltarClienteClick(Sender: TObject);
    procedure btnImportarCSVClick(Sender: TObject);
    procedure cbCampanhaDirecionadaPropertiesChange(Sender: TObject);
  private
    procedure InserirProdutoCampanha;
    procedure GravarCampanhaCRM;
    procedure CarregarCampanha(pCodCampanhaCRM:Integer;pCodfilial:string);
    procedure CarregarTabloide(pCodtabloideCRM:Integer);
    procedure CancelarCampanha(pCodCampanha: Integer);
    procedure Split(Delimiter: Char; Str: string; ListOfStrings: TStrings);
    procedure AdicionarCampanhaCRM(pTipoCampanha : String ; vCodcli: String);
    procedure GravarI9CabecalhoCampanha;
    function getFiliaisSelecionadas: string;
    function getCampanhasSelecionadas: string;
    procedure RetirarCondicaoCampanha;
    procedure ExcluirCampanhaCRM(pCodCampanha: Integer);
    procedure IniciarFiliais;
    procedure limpaCamposCampanha;
    procedure limparTela;
  public
    vbEstaEditando: Boolean;
    vItenAbaixoDaMargemMinima:Boolean;
  end;

var
  frmCampanhaCRM: TfrmCampanhaCRM;
  vbGravando: Boolean;

implementation

{$R *.dfm}

uses uPesquisas, uDMCampanhaCRM, uLogin, uFuncoes, uFrmLoading, uDMOfertas, ufrmEstruturaBancoRotina, ufrmFiltrosCRM;

procedure TfrmCampanhaCRM.actAprovarExecute(Sender: TObject);
var
  qry : TUniQuery;
begin
  if (DMCampanhaCRM.qrConsultaCampanhaDTAPROVACAO.AsString = '')  and
     (DMCampanhaCRM.qrConsultaCampanhaDTEXCLUSAO.AsString = '')
  then
  begin

    if (DMCampanhaCRM.qrConsultaCampanhaCODTABLOIDECRM.AsFloat > 0) then
    begin
      if (dmLogin.MensagemPergunta('Esta campanha, esta vinculada a outras campanhas, tem certeza que deseja aprovar todas as campanhas vinculadas ?')) then
      begin

        try
          qry := TUniQuery.Create(nil);
          qry.Connection := DmLogin.Conexao;
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Add('SELECT CODFILIAL, CODCAMPANHACRM, DTINICIAL FROM I9CAMPANHACRM WHERE CODTABLOIDECRM = :CODTABLOIDECRM AND DTEXCLUSAO IS NULL ');
          qry.ParamByName('CODTABLOIDECRM').AsInteger := DMCampanhaCRM.qrConsultaCampanhaCODTABLOIDECRM.AsInteger;
          qry.Open;
          qry.First;

          while not qry.Eof do
          begin
            DMCampanhaCRM.aprovarCampanha(qry.FieldByName('CODCAMPANHACRM').AsInteger);
            qry.Next;
          end;

          dmLogin.MensagemInformacao('Campanha aprovada com sucesso!');
          DMCampanhaCRM.qrConsultaCampanha.Refresh;

        finally
          qry.Free;
        end;

      end;
    end
    else
    begin
      DMCampanhaCRM.aprovarCampanha( DMCampanhaCRM.qrConsultaCampanhaCODCAMPANHACRM.AsInteger );
      dmLogin.MensagemInformacao('Campanha liberada com sucesso!');
      DMCampanhaCRM.qrConsultaCampanha.Refresh;
    end;
  end
  else
  begin
    DmLogin.MensagemErroAbort('Não é possível aprovar esta campanha, verifique o status !');
  end;
end;

procedure TfrmCampanhaCRM.actDesvincularCampanhaFiliaisExecute(Sender: TObject);
begin
  if not DMCampanhaCRM.qrConsultaCampanha.IsEmpty then
  begin
    if (DmLogin.validaPermissao530(37)) then
    begin
      if (dmLOgin.MensagemPergunta('Tem certeza que deseja desvincular campanha das filiais ? ' + #13 +
                                   'Após retirado o vínculo, ao editar campanha das filiais, as alterações não irão afetar esta campanha!')) then
      begin
        if (DMCampanhaCRM.desvincularCampanhaTabloide(DMCampanhaCRM.qrConsultaCampanhaCODCAMPANHACRM.AsInteger)) then
          dmLogin.MensagemInformacao('Campanha: ' + DMCampanhaCRM.qrConsultaCampanhaCODCAMPANHACRM.AsString + ' desvinculada com sucesso!');
          DMCampanhaCRM.qrConsultaCampanha.RefreshRecord;
      end;
    end
    else
    begin
      DmLogin.MensagemErroAbort('Você não possui a permissão para desvincular campanha de tablóide!');
    end;
  end;
end;

procedure TfrmCampanhaCRM.actInserirF2Execute(Sender: TObject);
begin
  if not DMCampanhaCRM.cdsProdutosIncluidos.Active then
  begin
    DMCampanhaCRM.cdsProdutosIncluidos.CreateDataSet;
    DMCampanhaCRM.cdsProdutosIncluidos.Open;
  end;

  InserirProdutoCampanha;
end;

procedure TfrmCampanhaCRM.actRejeitarExecute(Sender: TObject);
var
  qry : TUniQuery;
begin
  if (DMCampanhaCRM.qrConsultaCampanhaDTREJEICAO.AsString = '')  and
     (DMCampanhaCRM.qrConsultaCampanhaDTAPROVACAO.AsString = '') and
     (DMCampanhaCRM.qrConsultaCampanhaDTEXCLUSAO.AsString = '')
  then
  begin

    try
      qry := TUniQuery.Create(nil);
      qry.Connection := DmLogin.Conexao;
      qry.Close;
      qry.SQL.Clear;
      qry.SQL.Add('SELECT CODFILIAL, CODCAMPANHACRM FROM I9CAMPANHACRM WHERE CODTABLOIDECRM = :CODTABLOIDECRM AND DTEXCLUSAO IS NULL ');
      qry.ParamByName('CODTABLOIDECRM').AsInteger := DMCampanhaCRM.qrConsultaCampanhaCODTABLOIDECRM.AsInteger;
      qry.Open;
      qry.First;

      while not qry.Eof do
      begin

        DMCampanhaCRM.reprovarCampanha(qry.FieldByName('CODCAMPANHACRM').AsInteger);

        qry.Next;
      end;

      if DMCampanhaCRM.qrConsultaCampanhaCODTABLOIDECRM.AsString = '' then
        dmLogin.MensagemInformacao('Campanha(s) rejeitada(s)!')
      else
        dmLogin.MensagemInformacao('Campanhas do tabloide '+ DMCampanhaCRM.qrConsultaCampanhaCODTABLOIDECRM.AsString +' rejeitadas!');

      DMCampanhaCRM.qrConsultaCampanha.Refresh;

    finally
      qry.Free;
    end;

  end
  else
  begin
    DmLogin.MensagemErroAbort('Não é possível rejeitar esta campanha, verifique o status !');
  end;
end;

procedure TfrmCampanhaCRM.AdicionarCampanhaCRM(pTipoCampanha : String ; vCodcli: String);
begin
  if vCodcli = '' then
    DmLogin.MensagemErroAbort('Cliente ' + UpperCase(pTipoCampanha) + ' nao parametrizado na 132!');


  DMCampanhaCRM.cdsProdutosIncluidos.First;
  while not DMCampanhaCRM.cdsProdutosIncluidos.Eof do
  begin

    if (UpperCase(pTipoCampanha) = 'VAREJO') and DMCampanhaCRM.produtoTemCampanhaCRMVigente(DMCampanhaCRM.cdsProdutosIncluidosCODFILIAL.AsString, DMCampanhaCRM.cdsProdutosIncluidosCODPROD.AsInteger, dtInicialCampanha.Date, dtFinalCampanha.Date, DMCampanhaCRM.cdsProdutosIncluidosCODCAMPANHACRM.AsInteger) then
    begin
      DmLogin.RollBackParaBloqueio;
      Abort;
    end;

    DMCampanhaCRM.qrGravarCampanha.Close;
    dmLogin.limpaParametrosQuery(DMCampanhaCRM.qrGravarCampanha);

    //COLOCA OUTRO CODCLI ENQUANTO NÂO ESTÁ APROVADA
    if ( not DMCampanhaCRM.campanhaEstaAprovada(DMCampanhaCRM.cdsProdutosIncluidosCODCAMPANHACRM.AsInteger) ) then
      DMCampanhaCRM.qrGravarCampanha.ParamByName('CODCLI').AsFloat := -1000;

    //SE FOR CAMPANHA DIRECIONADA INSERE O CODIGO DO CLIENTE E DEIXA O CLI CONVENIO NULL
    if pTipoCampanha = 'DIRECIONADA' then
      DMCampanhaCRM.qrGravarCampanha.ParamByName('CODCLIDIRECIONADO').AsString := vCodcli
    else
      DMCampanhaCRM.qrGravarCampanha.ParamByName('CODCLICONVENIO').AsString := vCodcli;

    DMCampanhaCRM.qrGravarCampanha.ParamByName('CODFILIAL').AsString := DMCampanhaCRM.cdsProdutosIncluidosCODFILIAL.AsString;
    DMCampanhaCRM.qrGravarCampanha.ParamByName('CODCAMPANHACRM').AsInteger := DMCampanhaCRM.cdsProdutosIncluidosCODCAMPANHACRM.AsInteger;
    DMCampanhaCRM.qrGravarCampanha.ParamByName('DTINICIAL').AsDate := dtInicialCampanha.Date;
    DMCampanhaCRM.qrGravarCampanha.ParamByName('DTFINAL').AsDate := dtFinalCampanha.Date;
    DMCampanhaCRM.qrGravarCampanha.ParamByName('TIPOTERCEIROPRECO').AsString := 'O';
    DMCampanhaCRM.qrGravarCampanha.ParamByName('CODPROD').AsInteger := DMCampanhaCRM.cdsProdutosIncluidosCODPROD.AsInteger;
    DMCampanhaCRM.qrGravarCampanha.ParamByName('CODPRODPRINC').AsInteger := DMCampanhaCRM.cdsProdutosIncluidosCODPRODPRINC.AsInteger;
    DMCampanhaCRM.qrGravarCampanha.ParamByName('TEMFAMILIA').AsString := DMCampanhaCRM.cdsProdutosIncluidosTEMFAMILIA.AsString;
    DMCampanhaCRM.qrGravarCampanha.ParamByName('PVENDACRM').AsFloat := DMCampanhaCRM.cdsProdutosIncluidosPVENDACRM.AsFloat;
    DMCampanhaCRM.qrGravarCampanha.ParamByName('VLVERBAUNITARIO').AsFloat := DMCampanhaCRM.cdsProdutosIncluidosVLVERBAUNITARIO.AsFloat;
    DMCampanhaCRM.qrGravarCampanha.ParamByName('QTUNIT').AsFloat := DMCampanhaCRM.cdsProdutosIncluidosQTUNIT.AsFloat;


    if (UpperCase(pTipoCampanha) = 'VAREJO') or (UpperCase(pTipoCampanha) = 'DIRECIONADA') then
    begin
      DMCampanhaCRM.qrGravarCampanha.ParamByName('PERCDESCONTO').AsFloat := DMCampanhaCRM.getMargemEntreNumeros(DMCampanhaCRM.cdsProdutosIncluidosPVENDA.AsFloat, DMCampanhaCRM.cdsProdutosIncluidosPVENDACRM.AsFloat);
    end;

    if UpperCase(pTipoCampanha) = 'ATACADO' then
    begin
      if DMCampanhaCRM.cdsProdutosIncluidosPVENDACRM.AsFloat > DMCampanhaCRM.cdsProdutosIncluidosPVENDAATAC.AsFloat then
      begin
        DMCampanhaCRM.qrGravarCampanha.ParamByName('PERCDESCONTO').AsFloat := 0;
      end
      else
      begin
        DMCampanhaCRM.qrGravarCampanha.ParamByName('PERCDESCONTO').AsFloat := DMCampanhaCRM.getMargemEntreNumeros(DMCampanhaCRM.cdsProdutosIncluidosPVENDAATAC.AsFloat, DMCampanhaCRM.cdsProdutosIncluidosPVENDACRM.AsFloat);
      end;
    end;

    DMCampanhaCRM.qrGravarCampanha.ExecSQL;


    if DMCampanhaCRM.cdsProdutosIncluidosMARGEMFUTURACRM.AsFloat < DMCampanhaCRM.cdsProdutosIncluidosMARGEMMIN.AsFloat then
      vItenAbaixoDaMargemMinima := True;

    DMCampanhaCRM.cdsProdutosIncluidos.Next;
  end;

end;

procedure TfrmCampanhaCRM.btnImportarCPFTXTClick(Sender: TObject);
var
  i: Integer;
  listaCPF: TStringList;
  vCodCli : Integer;
  vQTPessoas: Integer;
begin
  try
    DmLogin.MensagemInformacao('Arquivo deve estar em formato ".txt" contendo 1 CPF por linha.');

    if dlgListaCPF.Execute then
    begin
      btnImportarCPFTXT.Enabled := False;
      Screen.Cursor := crSQLWait;
      listaCPF := TStringList.Create;
      listaCPF.LoadFromFile(dlgListaCPF.FileName);

      vQTPessoas := listaCPF.Count;

      DMCampanhaCRM.cdsClientesDirecionados.DisableControls;
      pbCarregarClientes.Properties.Min := 0;
      pbCarregarClientes.Properties.Max := vQTPessoas;

      for i := 0 to listaCPF.Count - 1 do
      begin
        pbCarregarClientes.Position := i;
        pbCarregarClientes.Update;
        Application.ProcessMessages;

        vCodCli := DMCampanhaCRM.getCodCli(listaCPF[i]);

        if vCodCli > 3 then
        begin
          if not DMCampanhaCRM.cdsClientesDirecionados.Locate('CODCLI', vCodCli, []) then
          begin
            DMCampanhaCRM.cdsClientesDirecionados.Append;
            DMCampanhaCRM.cdsClientesDirecionadosCODCLI.AsInteger := vCodCli;
            DMCampanhaCRM.cdsClientesDirecionadosCGCENT.AsString := Trim(listaCPF[i]);
            DMCampanhaCRM.cdsClientesDirecionados.Post;
          end;
        end;
      end;

      DMCampanhaCRM.cdsClientesDirecionados.EnableControls;
      DmLogin.MensagemInformacao('Planilha importada com sucesso!');
    end;
  finally
    Screen.Cursor := crDefault;
    btnImportarCPFTXT.Enabled := True;
    Application.ProcessMessages;
    listaCPF.Free;
  end;
end;

procedure TfrmCampanhaCRM.btnImportarCSVClick(Sender: TObject);
var
  csv: TextFile;
  Rec: string;
  Fields: TStringList;
  LineNo: Integer;
  i: Integer;
  ListaRetorno: TStringList;
  caminhoArquivo : String;
  vCGCENT : string;
  vCodCli : Integer;
begin
   if dlgPlanilha.Execute then
   begin
    caminhoArquivo := dlgPlanilha.FileName;

    Fields := TStringList.Create;
    ListaRetorno := TStringList.Create; // Lista de retorno.



    if not DMCampanhaCRM.cdsClientesDirecionados.Active then
    begin
      DMCampanhaCRM.cdsClientesDirecionados.CreateDataSet;
      DMCampanhaCRM.cdsClientesDirecionados.Open;
    end;

    Fields.StrictDelimiter := True;
    Fields.Delimiter := ',';

    AssignFile(csv, caminhoArquivo);

    try
      Reset(csv);
      pbCarregarClientes.Properties.Max := DMLogin.GetLinesCount(caminhoArquivo);

      LineNo := 0;
      while not EOF(csv) do
      begin
        Inc(LineNo);
        Readln(csv, Rec);

        //if LineNo = 1 then // Cabecalho
        //  Continue;

        pbCarregarClientes.Position := LineNo;
        Application.ProcessMessages;

        Fields.DelimitedText := Rec;
        DMCampanhaCRM.cdsClientesDirecionados.Append;

        if Fields.Count <> 3 then
        begin
          ShowMessage('A planilha importada nao esta no formado esperado pela rotina, verifique os campos.');
          Break;
        end;

        vCGCENT := Utf8ToAnsi(Fields[1]);
        vCodCli := DMCampanhaCRM.getCodCli(vCGCENT);

        if vCodCli > 3 then
        begin
          if not DMCampanhaCRM.cdsClientesDirecionados.Locate('CODCLI', vCodCli, []) then
          begin
            DMCampanhaCRM.cdsClientesDirecionados.Append;
            DMCampanhaCRM.cdsClientesDirecionadosCODCLI.AsInteger := vCodCli;
            DMCampanhaCRM.cdsClientesDirecionadosCGCENT.AsString := Trim(vCGCENT);
            DMCampanhaCRM.cdsClientesDirecionados.Post;
          end;
        end;
      end;

    finally
      CloseFile(csv);
      Fields.Free;
    end;

   end;
end;

procedure TfrmCampanhaCRM.btnIncluirCampanhaClick(Sender: TObject);
begin

  IniciarFiliais;
  pcPrincipal.ActivePage := pageIncluir;
  dtInicialCampanha.Enabled := True;
  vbEstaEditando := False;
  limpaCamposCampanha;
  DMCampanhaCRM.cdsVerbasFornecedor.Close;

  if not DMCampanhaCRM.cdsProdutosIncluidos.Active then
  begin
    DMCampanhaCRM.cdsProdutosIncluidos.CreateDataSet;
    DMCampanhaCRM.cdsProdutosIncluidos.Open;
  end
  else
  begin
    DMCampanhaCRM.cdsProdutosIncluidos.EmptyDataSet;
  end;

end;

procedure TfrmCampanhaCRM.btnIncluirFilialClick(Sender: TObject);
begin
  if DMCampanhaCRM.qrFiliaisDisponiveis.FieldByName('INCLUIDO').AsString = 'S' then
  begin
    Application.MessageBox('Filial já inserida!', 'Atenção', MB_ICONEXCLAMATION);
    abort;
  end;

  if not DMCampanhaCRM.cdsFiliaisDisponiveis.IsEmpty then
  begin
    DMCampanhaCRM.cdsFiliaisIncluidas.Append;
    DMCampanhaCRM.cdsFiliaisIncluidas.FieldByName('CODIGO').AsString := DMCampanhaCRM.cdsFiliaisDisponiveis.FieldByName('CODIGO').AsString;
    DMCampanhaCRM.cdsFiliaisIncluidas.FieldByName('RAZAOSOCIAL').AsString := DMCampanhaCRM.cdsFiliaisDisponiveis.FieldByName('RAZAOSOCIAL').AsString;
    DMCampanhaCRM.cdsFiliaisIncluidas.FieldByName('CODCAMPANHACRM').AsInteger := DMCampanhaCRM.getProxCodCampanha;
    DMCampanhaCRM.cdsFiliaisIncluidas.Post;

    if not DMCampanhaCRM.cdsFiliaisIncluidas.IsEmpty then
    begin
      DMCampanhaCRM.cdsFiliaisDisponiveis.Delete;
    end;
  end;

  if (DMCampanhaCRM.cdsFiliaisIncluidas.RecordCount > 1)  then
  begin
    if (edtCodTabloideCRM.Value = 0) then
      edtCodTabloideCRM.Value := DMCampanhaCRM.getProxCodTabloideCRM;
  end
  else
  begin
    edtCodTabloideCRM.Value := 0;
  end;

end;

procedure TfrmCampanhaCRM.btnPesquisarCampanhaClick(Sender: TObject);
begin
  pcPrincipal.ActivePage := pageEditar;
end;

procedure TfrmCampanhaCRM.btnPesquisarCampanhasClick(Sender: TObject);
begin
//  DmLogin.gravaLog('*** Clicou em Pesquisar');

  DMCampanhaCRM.qrConsultaCampanha.Close;
  DMCampanhaCRM.qrConsultaCampanha.RestoreSQL;

  if edtFilialConsulta.Text <> '' then
  begin
    DMCampanhaCRM.qrConsultaCampanha.AddWhere('I9CAMPANHACRM.CODFILIAL = :CODFILIAL');
    DMCampanhaCRM.qrConsultaCampanha.ParamByName('CODFILIAL').AsString := edtFilialConsulta.Text;
  end;

  if edtCampanhaConsulta.Text <> '' then
  begin
    DMCampanhaCRM.qrConsultaCampanha.AddWhere('I9CAMPANHACRM.CODCAMPANHACRM = :CODCAMPANHACRM');
    DMCampanhaCRM.qrConsultaCampanha.ParamByName('CODCAMPANHACRM').AsString := edtCampanhaConsulta.Text;
  end;

  if (cbStatusCampanha.ItemIndex = 1) then
  begin
    DMCampanhaCRM.qrConsultaCampanha.AddWhere('I9CAMPANHACRM.DTAPROVACAO IS NOT NULL AND I9CAMPANHACRM.DTEXCLUSAO IS NULL');
  end;

  if (cbStatusCampanha.ItemIndex = 2) then
  begin
    DMCampanhaCRM.qrConsultaCampanha.AddWhere('I9CAMPANHACRM.DTAPROVACAO IS NULL AND I9CAMPANHACRM.DTEXCLUSAO IS NULL AND I9CAMPANHACRM.DTREJEICAO IS NULL');
  end;

  if (cbStatusCampanha.ItemIndex = 3) then
  begin
    DMCampanhaCRM.qrConsultaCampanha.AddWhere('I9CAMPANHACRM.DTREJEICAO IS NOT NULL AND I9CAMPANHACRM.DTEXCLUSAO IS NULL');
  end;

  if (cbStatusCampanha.ItemIndex = 4) then
  begin
    DMCampanhaCRM.qrConsultaCampanha.AddWhere('I9CAMPANHACRM.DTEXCLUSAO IS NOT NULL');
  end;

  if cbStatusVerbaCampanha.ItemIndex = 1 then
  begin
    DMCampanhaCRM.qrConsultaCampanha.AddWhere('EXISTS (SELECT 1 FROM PCDESCONTOFIDELIDADE X ' +
                                                      'WHERE X.CODCAMPANHACRM = I9CAMPANHACRM.CODCAMPANHACRM ' +
                                                      'AND NVL(X.VLVERBAUNITARIO,0) > 0)');
  end;

  if cbStatusVerbaCampanha.ItemIndex = 2 then
  begin
    DMCampanhaCRM.qrConsultaCampanha.AddWhere('NOT EXISTS (SELECT 1 FROM PCDESCONTOFIDELIDADE X ' +
                                                      'WHERE X.CODCAMPANHACRM = I9CAMPANHACRM.CODCAMPANHACRM ' +
                                                      'AND NVL(X.VLVERBAUNITARIO,0) > 0)');
  end;
  if cbStatusVerbaCampanha.ItemIndex = 3 then
  begin
    DMCampanhaCRM.qrConsultaCampanha.AddWhere('EXISTS (SELECT 1 FROM PCDESCONTOFIDELIDADE X ' +
                                                      'WHERE X.CODCAMPANHACRM = I9CAMPANHACRM.CODCAMPANHACRM ' +
                                                      'AND NVL(X.VLVERBAUNITARIO,0) > 0)' +
                                                      'AND I9CAMPANHACRM.DTREBAIXACUSTO IS NOT NULL');
  end;
  if cbStatusVerbaCampanha.ItemIndex = 4 then
  begin
    DMCampanhaCRM.qrConsultaCampanha.AddWhere('EXISTS (SELECT 1 FROM PCDESCONTOFIDELIDADE X ' +
                                                      'WHERE X.CODCAMPANHACRM = I9CAMPANHACRM.CODCAMPANHACRM ' +
                                                      'AND NVL(X.VLVERBAUNITARIO,0) > 0)' +
                                                      'AND I9CAMPANHACRM.DTREBAIXACUSTO IS NULL');
  end;

  if cbTipoVerba.ItemIndex = 1 then
  begin
    DMCampanhaCRM.qrConsultaCampanha.AddWhere('EXISTS (SELECT 1 FROM I9CONFIGVERBACRM X ' +
                                                      'WHERE X.CODCAMPANHACRM = I9CAMPANHACRM.CODCAMPANHACRM ' +
                                                      'AND TIPOVERBA = ''DEFINIDO'') ');
  end;

  if cbTipoVerba.ItemIndex = 2 then
  begin
    DMCampanhaCRM.qrConsultaCampanha.AddWhere('EXISTS (SELECT 1 FROM I9CONFIGVERBACRM X ' +
                                                      'WHERE X.CODCAMPANHACRM = I9CAMPANHACRM.CODCAMPANHACRM ' +
                                                      'AND TIPOVERBA = ''MARGEMDIRETORIA'') ');
  end;

  if (dtInicialPesquisa.Text <> '') and (dtFinalPesquisa.Text <> '') then
  begin
    DMCampanhaCRM.qrConsultaCampanha.AddWhere('I9CAMPANHACRM.DTINICIAL BETWEEN :DTINICIAL AND :DTFINAL');
    DMCampanhaCRM.qrConsultaCampanha.AddWhere('I9CAMPANHACRM.DTFINAL BETWEEN :DTINICIAL AND :DTFINAL');
    DMCampanhaCRM.qrConsultaCampanha.ParamByName('DTINICIAL').AsDate := dtInicialPesquisa.Date;
    DMCampanhaCRM.qrConsultaCampanha.ParamByName('DTFINAL').AsDate := dtFinalPesquisa.Date;
  end;

  if (edtCodprod.Text <> '') then
  begin
    DMCampanhaCRM.qrConsultaCampanha.AddWhere('I9CAMPANHACRM.CODCAMPANHACRM IN (SELECT DISTINCT CODCAMPANHACRM FROM PCDESCONTOFIDELIDADE WHERE CODCAMPANHACRM IS NOT NULL AND CODPROD = ' + edtCodprod.Text + ')');
  end;

  if (comboCampanhaDirecionada.ItemIndex = 1) then
  begin
    DMCampanhaCRM.qrConsultaCampanha.AddWhere('NVL(I9CAMPANHACRM.CAMPANHADIRECIONADA, ''N'') = ''S''');
  end;

  if (comboCampanhaDirecionada.ItemIndex = 2) then
  begin
    DMCampanhaCRM.qrConsultaCampanha.AddWhere('NVL(I9CAMPANHACRM.CAMPANHADIRECIONADA, ''N'') = ''N''');
  end;

  DMCampanhaCRM.qrConsultaCampanha.Open;
end;

procedure TfrmCampanhaCRM.btnRemoverClienteGrupoClick(Sender: TObject);
begin
  if not DMCampanhaCRM.cdsClientesDirecionados.IsEmpty then
  begin
    DMCampanhaCRM.cdsClientesDirecionados.Delete;
  end;
end;

procedure TfrmCampanhaCRM.btnRemoverCondicaoClick(Sender: TObject);
begin
  RetirarCondicaoCampanha;
end;

procedure TfrmCampanhaCRM.btnRemoverFilialClick(Sender: TObject);
begin
  if not DMCampanhaCRM.cdsFiliaisIncluidas.IsEmpty then
  begin
    DMCampanhaCRM.cdsFiliaisDisponiveis.Append;
    DMCampanhaCRM.cdsFiliaisDisponiveis.FieldByName('CODIGO').AsString := DMCampanhaCRM.cdsFiliaisIncluidas.FieldByName('CODIGO').AsString;
    DMCampanhaCRM.cdsFiliaisDisponiveis.FieldByName('RAZAOSOCIAL').AsString := DMCampanhaCRM.cdsFiliaisIncluidas.FieldByName('RAZAOSOCIAL').AsString;
    DMCampanhaCRM.cdsFiliaisDisponiveis.Post;
    DMCampanhaCRM.cdsFiliaisIncluidas.Delete;
  end;

  if (DMCampanhaCRM.cdsFiliaisIncluidas.RecordCount <= 1)  then
  begin
    edtCodTabloideCRM.Value := 0;
  end;
end;

procedure TfrmCampanhaCRM.btnRemoverTodosClientesClick(Sender: TObject);
begin
  if DmLogin.MensagemPergunta('Tem certeza que deseja remover todos os clientes do grupo?') then
  begin
    DMCampanhaCRM.cdsClientesDirecionados.EmptyDataSet;
  end;
end;

procedure TfrmCampanhaCRM.btnRelizarRebaixaClick(Sender: TObject);
var
  vCodCampanhaCRM: Integer;
begin

  try
    if not DmLogin.MensagemPergunta('Deseja realizar a geração de verbas/rebaixa de CMV da campanha?') then
    begin
      Exit;
    end;

    btnRelizarRebaixa.Enabled := False;
    Screen.Cursor := crSQLWait;
    Application.ProcessMessages;

    if DMCampanhaCRM.qrConsultaCampanhaCAMPANHADIRECIONADA.AsString = 'S' then
    begin
      DmLogin.MensagemErroAbort('Não é possível realizar a rebaixa de uma campanha direcionada.');
    end;

    if DMCampanhaCRM.qrConsultaCampanhaDTFINAL.AsDateTime > Date then
    begin
      DmLogin.MensagemErroAbort('Não é possível realizar a rebaixa de uma campanha que ainda não acabou.');
    end;

    if DMCampanhaCRM.qrConsultaCampanhaDTREBAIXACUSTO.AsString <> '' then
    begin
      DmLogin.MensagemErroAbort('A rebaixa já foi realizada para essa campanha.');
    end;

    try
      vCodCampanhaCRM := DMCampanhaCRM.qrConsultaCampanhaCODCAMPANHACRM.AsInteger;

      if not DmLogin.Conexao.InTransaction then
        DmLogin.Conexao.StartTransaction;

      DMCampanhaCRM.prcGerarVerbaCampanha.Close;
      DMCampanhaCRM.prcGerarVerbaCampanha.ParamByName('PCODCAMPANHACRM').AsInteger := DMCampanhaCRM.qrConsultaCampanhaCODCAMPANHACRM.AsInteger;
      DMCampanhaCRM.prcGerarVerbaCampanha.ParamByName('PMATRICULA').AsInteger := DmLogin.Matricula;
      DMCampanhaCRM.prcGerarVerbaCampanha.ExecProc;
      DmLogin.Conexao.Commit;

      DMCampanhaCRM.qrConsultaCampanha.Refresh;

      DMCampanhaCRM.qrConsultaCampanha.Locate('CODCAMPANHACRM', vCodCampanhaCRM, []);

      DmLogin.MensagemInformacao('Geração de verbas / rebaixa de custo realizada com sucesso.');
    except
      on ex: Exception do
      begin
        DmLogin.Conexao.Rollback;
        DmLogin.MensagemErroAbort('Erro ao realizar rebaixa de CMV: ' + ex.Message);
      end;
    end;
  finally
    btnRelizarRebaixa.Enabled := True;
    Screen.Cursor := crDefault;
    Application.ProcessMessages;
  end;
end;

procedure TfrmCampanhaCRM.btnVoltarClick(Sender: TObject);
begin
  pcPrincipal.ActivePage := pageMenu;
end;

procedure TfrmCampanhaCRM.btnVoltarClienteClick(Sender: TObject);
begin
  pcIncluir.ActivePage := pageFiltros;
end;

procedure TfrmCampanhaCRM.btnVoltarInicioClick(Sender: TObject);
begin

  if vbEstaEditando then
  begin
    if DmLogin.Conexao.InTransaction then
      dmLogin.Conexao.Rollback;
    vbEstaEditando := false;
  end;

  IniciarFiliais;
  limpaCamposCampanha;

  try
    DMCampanhaCRM.cdsProdutosIncluidos.Close;
    DMCampanhaCRM.cdsProdutosIncluidos.CreateDataSet;
    DMCampanhaCRM.cdsProdutosIncluidos.Open;
  finally
  end;

  pcPrincipal.ActivePage := pageMenu;

end;

procedure TfrmCampanhaCRM.btnVoltarInicoCampanhaClick(Sender: TObject);
begin
  if not vbEstaEditando then
  begin
    gridFiliaisDisponiveis.Enabled := DMCampanhaCRM.cdsProdutosIncluidos.IsEmpty;
    gridFIliaisIncluidas.Enabled := DMCampanhaCRM.cdsProdutosIncluidos.IsEmpty;
    btnIncluirFilial.Enabled := DMCampanhaCRM.cdsProdutosIncluidos.IsEmpty;
    btnRemoverFilial.Enabled := DMCampanhaCRM.cdsProdutosIncluidos.IsEmpty;
  end;

  if cbCampanhaDirecionada.Checked then
  begin
    pcIncluir.ActivePage := pageClientesCampanha;
  end
  else
  begin
    pcIncluir.ActivePage := pageFiltros;
  end;

end;



procedure TfrmCampanhaCRM.CancelarCampanha(pCodCampanha: Integer);
begin
  with DMCampanhaCRM.qrAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE PCDESCONTOFIDELIDADE SET DTEXCLUSAO = SYSDATE, CODFUNCEXCLUSAO = :CODFUNCEXCLUSAO WHERE CODCAMPANHACRM = :CODCAMPANHACRM');
    ParamByName('CODFUNCEXCLUSAO').AsInteger := DmLogin.Matricula;
    ParamByName('CODCAMPANHACRM').AsInteger := pCodCampanha;
    ExecSQL;
  end;

  with DMCampanhaCRM.qrAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE I9CAMPANHACRM SET DTEXCLUSAO = SYSDATE, CODFUNCEXCLUSAO = :CODFUNCEXCLUSAO, DTREJEICAO = NULL, CODFUNCREJEICAO = NULL, DTAPROVACAO = NULL, CODFUNCAPROVACAO = NULL WHERE CODCAMPANHACRM = :CODCAMPANHACRM');
    ParamByName('CODFUNCEXCLUSAO').AsInteger := DmLogin.Matricula;
    ParamByName('CODCAMPANHACRM').AsInteger := pCodCampanha;
    ExecSQL;
  end;

end;

procedure TfrmCampanhaCRM.CarregarCampanha(pCodCampanhaCRM:Integer; pCodFilial:string);
var
  vCodcli: Integer;
  qryCarregarCampanha: TUniQuery;
begin

  vCodcli := StrToInt(DmLogin.buscaParametroPCConsum('CODCLICRMGERAL'));

  try

//    DmLogin.gravaLog('*** CARREGANDO Campanha: ' + IntToStr(pCodCampanhaCRM) + ' Cod. Filial: ' + pCodFilial);

    qryCarregarCampanha := TUniQuery.Create(nil);
    qryCarregarCampanha.Connection := DmLogin.Conexao;

    if not DmLogin.BloquearRegistro('I9CAMPANHACRM', 'DTINCLUSAO', 'CODCAMPANHACRM = ' + IntToStr(pCodCampanhaCRM)) then
    begin
      DmLogin.MensagemErroAbort('Impossível continuar, campanha já se encontra em edição por outro usuário.');
    end;


    DMCampanhaCRM.cdsProdutosIncluidos.DisableControls;
    Screen.Cursor := crSQLWait;
    Application.ProcessMessages;


    qryCarregarCampanha.Close;
    qryCarregarCampanha.SQL.Clear;
    qryCarregarCampanha.SQL.Add('SELECT');

    if DMCampanhaCRM.qrConsultaCampanhaCAMPANHADIRECIONADA.AsString = 'S' then
    begin
      qryCarregarCampanha.SQL.Add('DISTINCT');
    end;

    qryCarregarCampanha.SQL.Add('DADOS.CODPROD,');
    qryCarregarCampanha.SQL.Add('DADOS.CODFILIAL,');
    qryCarregarCampanha.SQL.Add('DADOS.CODPRODPRINC,');
    qryCarregarCampanha.SQL.Add('DADOS.QTUNIT,');
    qryCarregarCampanha.SQL.Add('DADOS.VLVERBAUNITARIO,');
    qryCarregarCampanha.SQL.Add('NVL(DADOS.VLVERBAUNITARIOORIGINAL, DADOS.VLVERBAUNITARIO) AS VLVERBAUNITARIOORIGINAL,');
    qryCarregarCampanha.SQL.Add('DADOS.PERCDESCONTO,');
    qryCarregarCampanha.SQL.Add('ROUND( PKG_I9UTILITARIO.GET_PRECO_QTUNIT1( DADOS.QTUNIT, DADOS.PVENDACRMORIGINAL ) * DADOS.QTUNIT ,2) AS PVENDACRM,');
    qryCarregarCampanha.SQL.Add('NVL(DADOS.PVENDACRMORIGINAL, DADOS.PVENDACRM) AS PVENDACRMORIGINAL');
    qryCarregarCampanha.SQL.Add('FROM');
    qryCarregarCampanha.SQL.Add('(SELECT DISTINCT');
    qryCarregarCampanha.SQL.Add('        PCDESCONTOFIDELIDADE.CODPROD,');
    qryCarregarCampanha.SQL.Add('        PCDESCONTOFIDELIDADE.CODFILIAL,');
    qryCarregarCampanha.SQL.Add('        PCDESCONTOFIDELIDADE.CODPRODPRINC,');
    qryCarregarCampanha.SQL.Add('        PCDESCONTOFIDELIDADE.VLVERBAUNITARIO,');
    qryCarregarCampanha.SQL.Add('        PCDESCONTOFIDELIDADE.VLVERBAUNITARIOORIGINAL,');
    qryCarregarCampanha.SQL.Add('        PCDESCONTOFIDELIDADE.PERCDESCONTO,');
    qryCarregarCampanha.SQL.Add('        PCDESCONTOFIDELIDADE.PVENDACRMORIGINAL,');
    qryCarregarCampanha.SQL.Add('        PCDESCONTOFIDELIDADE.PVENDACRM,');
    qryCarregarCampanha.SQL.Add('        (SELECT NVL(MIN( QTUNIT ),1)');
    qryCarregarCampanha.SQL.Add('        FROM PCEMBALAGEM PE');
    qryCarregarCampanha.SQL.Add('        WHERE PE.CODPROD = PCDESCONTOFIDELIDADE.CODPROD');
    qryCarregarCampanha.SQL.Add('        AND PE.CODFILIAL = PCDESCONTOFIDELIDADE.CODFILIAL');
    qryCarregarCampanha.SQL.Add('        ) AS QTUNIT');
    qryCarregarCampanha.SQL.Add('  FROM PCDESCONTOFIDELIDADE');
    qryCarregarCampanha.SQL.Add(' WHERE PCDESCONTOFIDELIDADE.CODCAMPANHACRM = :CODCAMPANHACRM');

    if not (DMCampanhaCRM.qrConsultaCampanhaCAMPANHADIRECIONADA.AsString = 'S') then
    begin
      qryCarregarCampanha.SQL.Add('   AND PCDESCONTOFIDELIDADE.CODCLICONVENIO = :CODCLICONVENIO');
      qryCarregarCampanha.ParamByName('CODCLICONVENIO').AsInteger := vCodcli;
    end;

    qryCarregarCampanha.SQL.Add('   AND NVL( PCDESCONTOFIDELIDADE.PRODPRINCIPAL, ''N'' ) = ''S'' ) DADOS');
    qryCarregarCampanha.ParamByName('CODCAMPANHACRM').AsInteger := pCodCampanhaCRM;

    qryCarregarCampanha.Open;
    qryCarregarCampanha.First;

    while not  qryCarregarCampanha.Eof do
    begin
      DMCampanhaCRM.qrObterDadosProduto.Close;
      DMCampanhaCRM.qrObterDadosProduto.ParamByName('CODPROD').AsInteger :=  qryCarregarCampanha.FieldByName('CODPROD').AsInteger;
      DMCampanhaCRM.qrObterDadosProduto.ParamByName('CODFILIAL').AsString :=  qryCarregarCampanha.FieldByName('CODFILIAL').AsString;
      DMCampanhaCRM.qrObterDadosProduto.Open;

      DMCampanhaCRM.cdsProdutosIncluidos.Append;

      // Dados da query do produto
      DMCampanhaCRM.cdsProdutosIncluidosQTEST.AsFloat := DMCampanhaCRM.qrObterDadosProduto.FieldByName('QTEST').AsFloat;
      DMCampanhaCRM.cdsProdutosIncluidosCODPRODPRINC.AsInteger := DMCampanhaCRM.qrObterDadosProduto.FieldByName('CODPRODPRINC').AsInteger;
      DMCampanhaCRM.cdsProdutosIncluidosCODFORNECPRINC.AsInteger := DMCampanhaCRM.qrObterDadosProduto.FieldByName('CODFORNECPRINC').AsInteger;
      DMCampanhaCRM.cdsProdutosIncluidosFORNECEDOR.AsString := DMCampanhaCRM.qrObterDadosProduto.FieldByName('FORNECEDOR').AsString;
      DMCampanhaCRM.cdsProdutosIncluidosDESCRICAO.AsString := DMCampanhaCRM.qrObterDadosProduto.FieldByName('DESCRICAO').AsString;
      DMCampanhaCRM.cdsProdutosIncluidosPVENDA.AsFloat := DMCampanhaCRM.qrObterDadosProduto.FieldByName('PRECO_VAREJO').AsFloat;
      DMCampanhaCRM.cdsProdutosIncluidosPVENDAATAC.AsFloat := DMCampanhaCRM.qrObterDadosProduto.FieldByName('PRECO_ATACADO').AsFloat;
      DMCampanhaCRM.cdsProdutosIncluidosCUSTOFIN.AsFloat := DMCampanhaCRM.qrObterDadosProduto.FieldByName('CUSTOFIN').AsFloat;
      DMCampanhaCRM.cdsProdutosIncluidosTEMFAMILIA.AsString := DMCampanhaCRM.qrObterDadosProduto.FieldByName('TEMFAMILIA').AsString;
      DMCampanhaCRM.cdsProdutosIncluidosQTUNIT.AsFloat := DMCampanhaCRM.qrObterDadosProduto.FieldByName('QTUNIT').AsFloat;
      DMCampanhaCRM.cdsProdutosIncluidosMARGEMMIN.AsFloat := DMCampanhaCRM.getMargemMinima(DMCampanhaCRM.qrObterDadosProduto.FieldByName('CODFILIAL').AsString,
                                                                                           DMCampanhaCRM.qrObterDadosProduto.FieldByName('CODPROD').AsInteger);


      // Dados gravados na campanha
      DMCampanhaCRM.cdsProdutosIncluidosCODCAMPANHACRM.AsInteger := pCodCampanhaCRM;
      DMCampanhaCRM.cdsProdutosIncluidosCODFILIAL.AsString :=  qryCarregarCampanha.FieldByName('CODFILIAL').AsString;
      DMCampanhaCRM.cdsProdutosIncluidosCODPROD.AsInteger :=  qryCarregarCampanha.FieldByName('CODPROD').AsInteger;
      DMCampanhaCRM.cdsProdutosIncluidosVLVERBAUNITARIO.AsFloat :=  qryCarregarCampanha.FieldByName('VLVERBAUNITARIOORIGINAL').AsFloat;
      DMCampanhaCRM.cdsProdutosIncluidosPERCDESC.AsFloat :=  qryCarregarCampanha.FieldByName('PERCDESCONTO').AsFloat;
      DMCampanhaCRM.cdsProdutosIncluidosPVENDACRM.AsFloat :=  qryCarregarCampanha.FieldByName('PVENDACRMORIGINAL').AsFloat;

      DMCampanhaCRM.cdsProdutosIncluidos.Post;

      qryCarregarCampanha.Next;
      Application.ProcessMessages;
    end;

    dtInicialCampanha.Date := DMCampanhaCRM.qrConsultaCampanhaDTINICIAL.AsDateTime;

    if (DMCampanhaCRM.qrConsultaCampanhaDTINICIAL.AsDateTime <= Date) and (not DmLogin.validaPermissao530(36)) then
    begin
      dtInicialCampanha.Enabled := False;
    end;

    if DMCampanhaCRM.qrConsultaCampanhaCAMPANHADIRECIONADA.AsString = 'S' then
    begin
      cbCampanhaDirecionada.Checked := True;
      DMCampanhaCRM.CarregarClientesCampanha(pCodCampanhaCRM);
    end
    else
    begin
      cbCampanhaDirecionada.Checked := False;
    end;

    dtFinalCampanha.Date := DMCampanhaCRM.qrConsultaCampanhaDTFINAL.AsDateTime;
    edtDescricaoCRM.Text := DMCampanhaCRM.qrConsultaCampanhaDESCRICAOCAMPANHACRM.AsString;

    if DMCampanhaCRM.cdsFiliaisDisponiveis.Locate('CODIGO', pCodFilial, []) then
    begin

      DMCampanhaCRM.cdsFiliaisIncluidas.Append;
      DMCampanhaCRM.cdsFiliaisIncluidas.FieldByName('CODIGO').AsString := DMCampanhaCRM.cdsFiliaisDisponiveis.FieldByName('CODIGO').AsString;
      DMCampanhaCRM.cdsFiliaisIncluidas.FieldByName('RAZAOSOCIAL').AsString := DMCampanhaCRM.cdsFiliaisDisponiveis.FieldByName('RAZAOSOCIAL').AsString;
      DMCampanhaCRM.cdsFiliaisIncluidas.FieldByName('CODCAMPANHACRM').AsInteger := pCodCampanhaCRM;
      DMCampanhaCRM.cdsFiliaisIncluidas.Post;

      if not DMCampanhaCRM.cdsFiliaisIncluidas.IsEmpty then
      begin
        DMCampanhaCRM.cdsFiliaisDisponiveis.Delete;
      end;

    end;

    gridFiliaisDisponiveis.Enabled := False;
    gridFIliaisIncluidas.Enabled := False;
    btnIncluirFilial.Enabled := False;
    btnRemoverFilial.Enabled := False;
    cbCampanhaDirecionada.Enabled := False;

  finally
    qryCarregarCampanha.Free;
    DMCampanhaCRM.cdsProdutosIncluidos.EnableControls;
    Screen.Cursor := crDefault;
    Application.ProcessMessages;
  end;
end;

procedure TfrmCampanhaCRM.CarregarTabloide(pCodtabloideCRM: Integer);
var
  qrTabloide : TUniQuery;
  possuiCampanhaAprovada : Boolean;
begin
  try
    edtCodTabloideCRM.Value := pCodtabloideCRM;

    qrTabloide := TUniQuery.Create(nil);
    qrTabloide.Connection := DmLogin.Conexao;
    qrTabloide.Close;
    qrTabloide.SQL.Clear;
    qrTabloide.SQL.Add('SELECT CODFILIAL, CODCAMPANHACRM FROM I9CAMPANHACRM WHERE CODTABLOIDECRM = :CODTABLOIDECRM AND DTEXCLUSAO IS NULL ');
    qrTabloide.ParamByName('CODTABLOIDECRM').AsInteger := pCodtabloideCRM;
    qrTabloide.Open;

    qrTabloide.First;
    possuiCampanhaAprovada := False;

    while not qrTabloide.Eof do
    begin
      CarregarCampanha(qrTabloide.FieldByName('CODCAMPANHACRM').AsInteger, qrTabloide.FieldByName('CODFILIAL').AsString);
      if DMCampanhaCRM.campanhaEstaAprovada(qrTabloide.FieldByName('CODCAMPANHACRM').AsInteger) then
        possuiCampanhaAprovada := True;

      qrTabloide.Next;
    end;

    if ( not (DmLogin.validaPermissao530(44)) and (vbEstaEditando) and (possuiCampanhaAprovada) ) then begin
      tblProdutosIncluidosVLVERBAUNITARIO.Options.Editing := False;
      tblProdutosIncluidosPERCMARGEMDESEJADA.Options.Editing := false;
    end
    else
    begin
      tblProdutosIncluidosVLVERBAUNITARIO.Options.Editing := true;
      tblProdutosIncluidosPERCMARGEMDESEJADA.Options.Editing := true;
    end;

  finally
    qrTabloide.Free;
  end;
end;

procedure TfrmCampanhaCRM.cbCampanhaDirecionadaPropertiesChange(
  Sender: TObject);
begin
  if not cbCampanhaDirecionada.Checked and (DMCampanhaCRM.cdsClientesDirecionados.Active) and (DMCampanhaCRM.cdsClientesDirecionados.RecordCount > 0) then
  begin
    if DmLogin.MensagemPergunta('Essa ação irá remover todos os clientes direcionados informados, deseja continuar?') then
    begin
      DMCampanhaCRM.cdsClientesDirecionados.EmptyDataSet;
    end
    else
    begin
      cbCampanhaDirecionada.Checked := True;
    end;
  end;
end;

procedure TfrmCampanhaCRM.cxButton1Click(Sender: TObject);
begin
  DmLogin.abortaTransacaoBanco;
  pcPrincipal.ActivePage := pageMenu;
end;

procedure TfrmCampanhaCRM.btnGravarCampanhaVBClick(Sender: TObject);
begin
  if DMCampanhaCRM.cdsVerbasFornecedor.IsEmpty then
    dmLogin.MensagemErroAbort('Não é possível gravar campanha sem informações das verbas.');

  DMCampanhaCRM.cdsVerbasFornecedor.DisableControls;
  DMCampanhaCRM.cdsVerbasFornecedor.First;

  while not DMCampanhaCRM.cdsVerbasFornecedor.Eof do
  begin
    if ( (DMCampanhaCRM.cdsVerbasFornecedorTIPOVERBA.AsString = '') or
         (DMCampanhaCRM.cdsVerbasFornecedorTIPOPAGTOVERBA.AsString = '') )
    then
    begin
      dmLogin.MensagemErroAbort('Existem informacoes invalidas na configuracao das verbas, favor verificar!');
    end;

    DMCampanhaCRM.cdsVerbasFornecedor.Next;
  end;
  DMCampanhaCRM.cdsVerbasFornecedor.EnableControls;

  if not vbGravando then
  begin
    try
      vbGravando := True;
      GravarCampanhaCRM;
      DMCampanhaCRM.geraInformacoesVerbaCampanha;
      pcPrincipal.ActivePage := pageMenu;
    finally
      vbGravando := False;
    end;
  end
  else
  begin
    DmLogin.MensagemInformacao('A campanha já está em gravação, aguarde..');
  end;
end;


procedure TfrmCampanhaCRM.cxButton3Click(Sender: TObject);
begin

  Application.CreateForm(TfrmRelatoriosCRM, frmRelatoriosCRM);

  try
    frmRelatoriosCRM.ShowModal;
  finally
    frmRelatoriosCRM := nil;
  end;

end;

procedure TfrmCampanhaCRM.cxButton5Click(Sender: TObject);
begin
  pcIncluir.ActivePage := pageConfiguraOferta;
end;

procedure TfrmCampanhaCRM.ExcluirCampanhaCRM(pCodCampanha: Integer);
var
  qrExcluirCampanha: TUniQuery;
begin
  try
    qrExcluirCampanha := TUniQuery.Create(nil);
    qrExcluirCampanha.Connection := DmLogin.Conexao;

    qrExcluirCampanha.Close;
    qrExcluirCampanha.SQL.Clear;
    qrExcluirCampanha.SQL.Add('DELETE FROM PCDESCONTOFIDELIDADE WHERE CODCAMPANHACRM = :CODCAMPANHACRM');
    qrExcluirCampanha.ParamByName('CODCAMPANHACRM').AsInteger := pCodCampanha;
    qrExcluirCampanha.ExecSQL;
  finally
    qrExcluirCampanha.Free;
  end;
end;

procedure TfrmCampanhaCRM.btnAddClienteGrupoClick(Sender: TObject);
var
  vCGCENT : String;
  vCodCli : Integer;
begin
  if psqClienteDirecionado.Text <> '' then
  begin

    vCodCli := StrToInt(psqClienteDirecionado.Text);
    vCGCENT := DMCampanhaCRM.getCPFCliente(vCodCli);

    if vCodCli <= 3 then
    begin
      DmLogin.MensagemErroAbort('Não é possível inserir clientes consumidor final (1, 2, 3)');
    end;

    if not DMCampanhaCRM.cdsClientesDirecionados.Locate('CODCLI', vCodCli, []) then
    begin
      DMCampanhaCRM.cdsClientesDirecionados.Edit;
      DMCampanhaCRM.cdsClientesDirecionadosCODCLI.AsInteger := vCodCli;
      DMCampanhaCRM.cdsClientesDirecionadosCGCENT.AsString := Trim(vCGCENT);
      DMCampanhaCRM.cdsClientesDirecionados.Post;
    end
    else
    begin
      DmLogin.MensagemInformacao('Cliente já existe na lista.');
    end;

    psqClienteDirecionado.Text := '';
    psqClienteDirecionado.Atualizar;
    psqClienteDirecionado.SetFocus;
  end;
end;

procedure TfrmCampanhaCRM.btnAddCPFGrupoClick(Sender: TObject);
var
  vCodCli : Integer;
begin
  if edtCGCENTDirecionado.Text <> '' then
  begin
    vCodCli := DMCampanhaCRM.getCodCli(edtCGCENTDirecionado.Text);

    if vCodCli <= 3 then
    begin
      DmLogin.MensagemErroAbort('Não é possível inserir clientes consumidor final (1, 2, 3)');
    end;

    if vCodCli > 0 then
    begin
      if not DMCampanhaCRM.cdsClientesDirecionados.Locate('CODCLI', vCodCli, []) then
      begin
        DMCampanhaCRM.cdsClientesDirecionados.Edit;
        DMCampanhaCRM.cdsClientesDirecionadosCODCLI.AsInteger := vCodCli;
        DMCampanhaCRM.cdsClientesDirecionadosCGCENT.AsString := Trim(edtCGCENTDirecionado.Text);
        DMCampanhaCRM.cdsClientesDirecionados.Post;
      end
      else
      begin
        DmLogin.MensagemInformacao('Cliente já existia na lista.');
        Exit;
      end;
    end
    else
    begin
      DmLogin.MensagemInformacao('Cliente não encontrado.');
      Exit;
    end;
  end;
end;

procedure TfrmCampanhaCRM.btnAvancarClick(Sender: TObject);
begin
  if DMCampanhaCRM.cdsFiliaisIncluidas.IsEmpty then
    DmLogin.MensagemErroAbort('Nenhuma filial selecionada!');

  if edtDescricaoCRM.Text = '' then
    DmLogin.MensagemErroAbort('Descição da campanha não informado!');

  if (dtInicialCampanha.Text = '') or (dtFinalCampanha.Text = '') then
    DmLogin.MensagemErroAbort('Periodo da campanha não informado!');

  if ( (dtInicialCampanha.Enabled) and (dtInicialCampanha.Date < Date) and (not dmLogin.validaPermissao530(36)) ) then
    DmLogin.MensagemErroAbort('A data inicial não pode ser menor que a data atual!');

  if (not dmLogin.validaPermissao530(38)) and ( (dtFinalCampanha.Date = Date) or (dtInicialCampanha.Date = Date) ) then
    DmLogin.MensagemErroAbort('Você não possui permissão para incluir campanha com vigência do dia atual!');


  if cbCampanhaDirecionada.Checked then
  begin

    if not DMCampanhaCRM.cdsClientesDirecionados.Active then
    begin
       DMCampanhaCRM.cdsClientesDirecionados.CreateDataSet;
       DMCampanhaCRM.cdsClientesDirecionados.Open;
    end;

    pcIncluir.ActivePage := pageClientesCampanha;
  end
  else
  begin
    pcIncluir.ActivePage := pageConfiguraOferta;
  end;
end;

procedure TfrmCampanhaCRM.btnAvancarClienteClick(Sender: TObject);
begin
    pcIncluir.ActivePage := pageConfiguraOferta;
end;

procedure TfrmCampanhaCRM.btnCancelarClick(Sender: TObject);
begin
//  DmLogin.gravaLog('*** Clicou em CANCELAR Campanha');

  if not DMCampanhaCRM.qrConsultaCampanha.IsEmpty then
  begin
    if DMCampanhaCRM.qrConsultaCampanhaSTATUS.AsString = 'Cancelada' then
      DmLogin.MensagemErroAbort('A campanha selecionada já se encontra cancelada.');

    if DMCampanhaCRM.qrConsultaCampanhaDTFINAL.AsDateTime < Date then
      DmLogin.MensagemErroAbort('Não é possível cancelar uma campanha que já terminou.');

    if DmLogin.MensagemPergunta('Tem certeza que deseja cancelar a campanha?') then
    begin
      if DMCampanhaCRM.qrConsultaCampanhaTIPO.AsString = '% Desconto' then
        CancelarCampanha(DMCampanhaCRM.qrConsultaCampanhaCODCAMPANHACRM.AsInteger);

      DMCampanhaCRM.qrExcluirCampanhaCRM.Close;
      DMCampanhaCRM.qrExcluirCampanhaCRM.ParamByName('MATRICULA').AsInteger := DmLogin.Matricula;
      DMCampanhaCRM.qrExcluirCampanhaCRM.ParamByName('CODCAMPANHACRM').AsInteger := DMCampanhaCRM.qrConsultaCampanhaCODCAMPANHACRM.AsInteger;
      DMCampanhaCRM.qrExcluirCampanhaCRM.Execute;

      DmLogin.MensagemInformacao('Campanha cancelada com sucesso!');
      DMCampanhaCRM.qrConsultaCampanha.Refresh;
    end;
  end;
end;

procedure TfrmCampanhaCRM.btnEditarClick(Sender: TObject);
begin
  try

    btnEditar.Enabled := False;
    edtCodTabloideCRM.Value := 0;

    if not DMCampanhaCRM.qrConsultaCampanha.IsEmpty then
    begin

      if (not dmLogin.validaPermissao530(35)) and (DMCampanhaCRM.campanhaEstaAprovada(DMCampanhaCRM.qrConsultaCampanhaCODCAMPANHACRM.AsInteger)) then
        DmLogin.MensagemErroAbort('Você não possui permissão de editar campanha aprovada!');

      if DMCampanhaCRM.qrConsultaCampanhaSTATUS.AsString = 'Cancelada' then
        DmLogin.MensagemErroAbort('Não é possível editar uma campanha cancelada.');

      if ( (not dmLogin.validaPermissao530(36)) and (DMCampanhaCRM.qrConsultaCampanhaDTFINAL.AsDateTime < Date) ) then
        DmLogin.MensagemErroAbort('Não é possível editar uma campanha que já terminou.');

      if DmLogin.MensagemPergunta('Tem certeza que deseja editar a campanha selecionada?') then
      begin
        vbEstaEditando := True;

        try
          DMCampanhaCRM.cdsProdutosIncluidos.Close;
          DMCampanhaCRM.cdsProdutosIncluidos.CreateDataSet;
          DMCampanhaCRM.cdsProdutosIncluidos.Open;
        finally
        end;

        if DMCampanhaCRM.qrConsultaCampanhaCODTABLOIDECRM.AsInteger > 0 then
        begin
          DmLogin.MensagemInformacao('Essa é uma campanha multi-filial serão carregadas todas as filiais para edição.');
          CarregarTabloide(DMCampanhaCRM.qrConsultaCampanhaCODTABLOIDECRM.AsInteger);
          pcPrincipal.ActivePage := pageIncluir;
        end
        else
        begin

          if ( not (DmLogin.validaPermissao530(44)) and (vbEstaEditando) and ( DMCampanhaCRM.campanhaEstaAprovada( DMCampanhaCRM.qrConsultaCampanhaCODCAMPANHACRM.AsInteger) ) ) then begin
            tblProdutosIncluidosVLVERBAUNITARIO.Options.Editing := False;
            tblProdutosIncluidosPERCMARGEMDESEJADA.Options.Editing := false;
          end
          else
          begin
            tblProdutosIncluidosVLVERBAUNITARIO.Options.Editing := true;
            tblProdutosIncluidosPERCMARGEMDESEJADA.Options.Editing := true;
          end;

          CarregarCampanha(DMCampanhaCRM.qrConsultaCampanhaCODCAMPANHACRM.AsInteger, DMCampanhaCRM.qrConsultaCampanhaCODFILIAL.AsString);
          pcPrincipal.ActivePage := pageIncluir;
        end;
      end;
    end;
  finally
//    DmLogin.gravaLog('*** Cod. Tabloide após carregar informações de edição:' + edtCodTabloideCRM.Text);
    btnEditar.Enabled := True;
  end;
end;

procedure TfrmCampanhaCRM.btnFiltrosCRMClick(Sender: TObject);
begin
  try
    if frmFiltrosCRM = nil then
      frmFiltrosCRM := TfrmFiltrosCRM.Create(Application, DMCampanhaCRM.qrPesquisaProdutos, False);

    frmFiltrosCRM.setOferta(getFiliaisSelecionadas);
    frmFiltrosCRM.ShowModal;
  except
    on E: Exception do
    begin
      Application.MessageBox(Pchar('Erro ao pesquisar produtos!' + E.Message), 'Atencao', MB_ICONERROR);
      abort;
    end;
  end;
end;

procedure TfrmCampanhaCRM.btnGravarCampanhaClick(Sender: TObject);
begin
  if not vbGravando then
  begin
    if (not DMCampanhaCRM.campanhaPossuiVerbaGrid) then
    begin
      try
        vbGravando := True;
        GravarCampanhaCRM;
        limparTela;
      finally
        vbGravando := False;
      end;
    end
    else
    begin
      DMCampanhaCRM.insereFornecedoresVerbaCampanha;
      pcIncluir.ActivePage := pageConfiguraVerbas;
    end;
  end
  else
  begin
    DmLogin.MensagemInformacao('A campanha já está em gravação, aguarde..');
  end;
end;

procedure TfrmCampanhaCRM.limparTela;
begin
  DMCampanhaCRM.cdsProdutosIncluidos.EmptyDataSet;
  DMCampanhaCRM.cdsFiliaisIncluidas.EmptyDataSet;
  DMCampanhaCRM.cdsFiliaisDisponiveis.EmptyDataSet;

  IniciarFiliais;

  if DMCampanhaCRM.cdsVerbasFornecedor.Active then
    DMCampanhaCRM.cdsVerbasFornecedor.EmptyDataSet;

  dtInicialCampanha.Text := '';
  dtFinalCampanha.Text := '';
  edtDescricaoCRM.Text := '';
  edtCodTabloideCRM.Value := 0;
  DMCampanhaCRM.qrPesquisaProdutos.Close;
  pcPrincipal.ActivePage := pageMenu;
  pcIncluir.ActivePage := pageFiltros;
  pbCarregarClientes.Position := 0;
end;

procedure TfrmCampanhaCRM.IniciarFiliais;
begin

  DMCampanhaCRM.cdsFiliaisDisponiveis.Close;
  DMCampanhaCRM.cdsFiliaisDisponiveis.CreateDataSet;
  DMCampanhaCRM.cdsFiliaisDisponiveis.Open;

  DMCampanhaCRM.cdsFiliaisIncluidas.Close;
  DMCampanhaCRM.cdsFiliaisIncluidas.CreateDataSet;
  DMCampanhaCRM.cdsFiliaisIncluidas.Open;

  DMCampanhaCRM.qrFiliaisDisponiveis.Close;
  DMCampanhaCRM.qrFiliaisDisponiveis.ParamByName('CODFUNC').AsInteger := DmLogin.Matricula;
  DMCampanhaCRM.qrFiliaisDisponiveis.Open;

  DMCampanhaCRM.qrFiliaisDisponiveis.First;
  while not DMCampanhaCRM.qrFiliaisDisponiveis.Eof do
  begin
    DMCampanhaCRM.cdsFiliaisDisponiveis.Append;
    DMCampanhaCRM.cdsFiliaisDisponiveis.FieldByName('CODIGO').AsString := DMCampanhaCRM.qrFiliaisDisponiveis.FieldByName('CODIGO').AsString;
    DMCampanhaCRM.cdsFiliaisDisponiveis.FieldByName('RAZAOSOCIAL').AsString := DMCampanhaCRM.qrFiliaisDisponiveis.FieldByName('RAZAOSOCIAL').AsString;
    DMCampanhaCRM.cdsFiliaisDisponiveis.Post;
    DMCampanhaCRM.qrFiliaisDisponiveis.Next;
  end;

  gridFiliaisDisponiveis.Enabled := True;
  gridFIliaisIncluidas.Enabled := True;
  btnIncluirFilial.Enabled := True;
  btnRemoverFilial.Enabled := True;
  cbCampanhaDirecionada.Enabled := True;
  edtCodTabloideCRM.Value := 0;
end;

procedure TfrmCampanhaCRM.limpaCamposCampanha;
begin
  edtCodTabloideCRM.Value := 0;
  edtDescricaoCRM.Clear;
  dtInicialCampanha.Date := dmLogin.Hoje;
  dtFinalCampanha.Date := dmLogin.Hoje;
  DMCampanhaCRM.qrPesquisaProdutos.Close;
  DMCampanhaCRM.qrConsultaCampanha.Close;

  if DMCampanhaCRM.cdsClientesDirecionados.Active then
    DMCampanhaCRM.cdsClientesDirecionados.EmptyDataSet;
end;

procedure TfrmCampanhaCRM.InserirProdutoCampanha;
var
  vResult: String;
begin

  if ( (vbEstaEditando) and
       (not DmLogin.validaPermissao530(43)) and
       (DMCampanhaCRM.campanhaEstaAprovada(DMCampanhaCRM.cdsProdutosIncluidosCODCAMPANHACRM.AsInteger)) )
  then
  begin
    dmLogin.MensagemErroAbort('Usuario nao possui permissao de incluir item em campanha ja aprovada.');
  end;

  DMCampanhaCRM.cdsFiliaisIncluidas.First;

  while not DMCampanhaCRM.cdsFiliaisIncluidas.Eof do
  begin

    if not DMCampanhaCRM.cdsProdutosIncluidos.Active then
    begin
      DMCampanhaCRM.cdsProdutosIncluidos.CreateDataSet;
      DMCampanhaCRM.cdsProdutosIncluidos.Open;
    end;

    if (DMCampanhaCRM.produtoTemCampanhaCRMVigente(DMCampanhaCRM.cdsFiliaisIncluidasCODIGO.AsString, DMCampanhaCRM.qrPesquisaProdutos.FieldByName('CODPROD').AsInteger, dtInicialCampanha.Date, dtFinalCampanha.Date, DMCampanhaCRM.cdsFiliaisIncluidasCODCAMPANHACRM.AsInteger)) or
      (DMOfertas.produtoTemOfertaVigente(DMCampanhaCRM.qrPesquisaProdutos.FieldByName('CODPROD').AsFloat, dtInicialCampanha.Date, dtFinalCampanha.Date, DMCampanhaCRM.cdsFiliaisIncluidasCODIGO.AsString, True, 0) > 0) then
    begin
      DMCampanhaCRM.cdsFiliaisIncluidas.Next;
      Continue;
    end;


    {
    // Valida se tem algum produto da familia com preço diferente.
    vResult := DMCampanhaCRM.produtoTemFamiliaPrecoDiferente(DMCampanhaCRM.qrPesquisaProdutos.FieldByName('CODPROD').AsInteger, DMCampanhaCRM.cdsFiliaisIncluidasCODIGO.AsString);

    if (vResult <> 'OK') then
    begin
      DmLogin.MensagemInformacao(vResult);
      DMCampanhaCRM.cdsFiliaisIncluidas.Next;
      Continue;
    end;
    }

    if not DMCampanhaCRM.qrPesquisaProdutos.IsEmpty then
    begin

      if not DMCampanhaCRM.cdsProdutosIncluidos.Locate('CODPROD;CODFILIAL', VarArrayOf([DMCampanhaCRM.cdsFiliaisIncluidasCODIGO.AsString, DMCampanhaCRM.qrPesquisaProdutos.FieldByName('CODPROD').AsString]), []) then
      begin

        // Busca dados do produto
        DMCampanhaCRM.qrObterDadosProduto.Close;
        DMCampanhaCRM.qrObterDadosProduto.ParamByName('CODPROD').AsFloat := DMCampanhaCRM.qrPesquisaProdutos.FieldByName('CODPROD').AsFloat;
        DMCampanhaCRM.qrObterDadosProduto.ParamByName('CODFILIAL').AsString := DMCampanhaCRM.cdsFiliaisIncluidasCODIGO.AsString;
        DMCampanhaCRM.qrObterDadosProduto.Open;

        if DMCampanhaCRM.qrObterDadosProduto.RecordCount = 0 then
        begin
          DmLogin.MensagemInformacao('Dados do produto nao encontrados para a filial, favor verificar.');
          DMCampanhaCRM.cdsFiliaisIncluidas.Next;
          Continue;
        end;

        if DMCampanhaCRM.cdsProdutosIncluidos.Locate('CODFILIAL;CODPRODPRINC', VarArrayOf([DMCampanhaCRM.cdsFiliaisIncluidasCODIGO.AsString, DMCampanhaCRM.qrObterDadosProduto.FieldByName('CODPRODPRINC').AsFloat]), []) then
        begin
          DmLogin.MensagemInformacao('Não é possível incluir, já existe um produto da família na campanha para a FILIAL.');
          DMCampanhaCRM.cdsFiliaisIncluidas.Next;
          Continue;
        end;

        //Valida se produto já possui combo cadastrado
        if DMCampanhaCRM.getComboExistente(DMCampanhaCRM.qrObterDadosProduto.FieldByName('CODFILIAL').AsString,
                                           DMCampanhaCRM.qrObterDadosProduto.FieldByName('CODPRODPRINC').AsFloat,
                                           dtInicialCampanha.Date,
                                           dtFinalCampanha.Date)
        then
        begin
          DmLogin.MensagemInformacao('Não foi possivel incluir o produto: '+DMCampanhaCRM.qrObterDadosProduto.FieldByName('CODPRODPRINC').AsString + #13 +
                                     'Pois já se encontra em um combo.');
          DMCampanhaCRM.cdsFiliaisIncluidas.Next;
          Continue;
        end;

        // Insere informações do produto na grid inferior
        DMCampanhaCRM.cdsProdutosIncluidos.Append;
        DMCampanhaCRM.cdsProdutosIncluidosCODFILIAL.AsString := DMCampanhaCRM.qrObterDadosProduto.FieldByName('CODFILIAL').AsString;
        DMCampanhaCRM.cdsProdutosIncluidosQTEST.AsFloat := DMCampanhaCRM.qrObterDadosProduto.FieldByName('QTEST').AsFloat;
        DMCampanhaCRM.cdsProdutosIncluidosCODCAMPANHACRM.AsInteger := DMCampanhaCRM.cdsFiliaisIncluidasCODCAMPANHACRM.AsInteger;
        DMCampanhaCRM.cdsProdutosIncluidosCODPROD.AsInteger := DMCampanhaCRM.qrObterDadosProduto.FieldByName('CODPROD').AsInteger;
        DMCampanhaCRM.cdsProdutosIncluidosDESCRICAO.AsString := DMCampanhaCRM.qrObterDadosProduto.FieldByName('DESCRICAO').AsString;
        DMCampanhaCRM.cdsProdutosIncluidosPVENDA.AsFloat := DMCampanhaCRM.qrObterDadosProduto.FieldByName('PRECO_VAREJO').AsFloat;
        DMCampanhaCRM.cdsProdutosIncluidosPVENDAATAC.AsFloat := DMCampanhaCRM.qrObterDadosProduto.FieldByName('PRECO_ATACADO').AsFloat;
        DMCampanhaCRM.cdsProdutosIncluidosCUSTOFIN.AsFloat := DMCampanhaCRM.qrObterDadosProduto.FieldByName('CUSTOFIN').AsFloat;
        DMCampanhaCRM.cdsProdutosIncluidosQTUNIT.AsFloat := DMCampanhaCRM.qrObterDadosProduto.FieldByName('QTUNIT').AsFloat;
        DMCampanhaCRM.cdsProdutosIncluidosTEMFAMILIA.AsString := DMCampanhaCRM.qrObterDadosProduto.FieldByName('TEMFAMILIA').AsString;
        DMCampanhaCRM.cdsProdutosIncluidosCODPRODPRINC.AsInteger := DMCampanhaCRM.qrObterDadosProduto.FieldByName('CODPRODPRINC').AsInteger;
        DMCampanhaCRM.cdsProdutosIncluidosMARGEMMIN.AsFloat := DMCampanhaCRM.getMargemMinima(DMCampanhaCRM.qrObterDadosProduto.FieldByName('CODFILIAL').AsString,
                                                                                             DMCampanhaCRM.qrObterDadosProduto.FieldByName('CODPROD').AsInteger);
        DMCampanhaCRM.cdsProdutosIncluidosCODFORNECPRINC.AsFloat := DMCampanhaCRM.qrObterDadosProduto.FieldByName('CODFORNECPRINC').AsFloat;
        DMCampanhaCRM.cdsProdutosIncluidosFORNECEDOR.AsString := DMCampanhaCRM.qrObterDadosProduto.FieldByName('FORNECEDOR').AsString;
        DMCampanhaCRM.cdsProdutosIncluidos.Post;
      end;
    end;

    DMCampanhaCRM.cdsFiliaisIncluidas.Next;
  end;
end;


procedure TfrmCampanhaCRM.RetirarCondicaoCampanha;
var
  vCodprodprinc: Integer;
begin
  if ( (vbEstaEditando) and
       (not DmLogin.validaPermissao530(42)) and
       (DMCampanhaCRM.campanhaEstaAprovada(DMCampanhaCRM.cdsProdutosIncluidosCODCAMPANHACRM.AsInteger)) )
  then
  begin
    dmLogin.MensagemErroAbort('Usuario nao possui permissao de remover item de campanha ja aprovada.');
  end;

  try

    DMCampanhaCRM.cdsProdutosIncluidos.DisableControls;

    if not DMCampanhaCRM.cdsProdutosIncluidos.IsEmpty then
    begin
      if DMCampanhaCRM.cdsProdutosIncluidosCODPRODPRINC.AsString <> '' then
      begin
        vCodprodprinc := DMCampanhaCRM.cdsProdutosIncluidosCODPRODPRINC.AsInteger;

        while DMCampanhaCRM.cdsProdutosIncluidos.Locate('CODPRODPRINC', vCodprodprinc, []) do
        begin
          DMCampanhaCRM.cdsProdutosIncluidos.Delete;
        end;

      end
      else
      begin
        DMCampanhaCRM.cdsProdutosIncluidos.Delete;
      end;

    end;
  finally
    DMCampanhaCRM.cdsProdutosIncluidos.EnableControls;
  end;
end;

procedure TfrmCampanhaCRM.Split(Delimiter: Char; Str: string; ListOfStrings: TStrings);
begin
  ListOfStrings.Clear;
  ListOfStrings.Delimiter := Delimiter;
  ListOfStrings.StrictDelimiter := True; // Requires D2006 or newer.
  ListOfStrings.DelimitedText := Str;
end;

procedure TfrmCampanhaCRM.FormActivate(Sender: TObject);
begin
  pcPrincipal.ActivePage := pageMenu;
  pcPrincipal.Properties.HideTabs := True;
  pcIncluir.Properties.HideTabs := True;
  pcIncluir.ActivePage := pageFiltros;
  DmLogin.populaStatusBar(sbRodapeCRM);
end;

procedure TfrmCampanhaCRM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  limpaCamposCampanha;
  frmFiltrosCRM.Free;
  frmFiltrosCRM := nil;

  if dmLogin.Conexao.InTransaction then
    DmLogin.Conexao.Rollback;
end;

procedure TfrmCampanhaCRM.FormCreate(Sender: TObject);
begin
{  FormatSettings.DecimalSeparator    := ',';
  FormatSettings.ThousandSeparator   := '.';
  FormatSettings.CurrencyDecimals    := 2;
  FormatSettings.DateSeparator       := '/';
  FormatSettings.ShortDateFormat     := 'dd/mm/yyyy';
  FormatSettings.LongDateFormat      := 'dd/mm/yyyy';
  FormatSettings.TimeSeparator       := ':';
  FormatSettings.TimeAMString        := 'AM';
  FormatSettings.TimePMString        := 'PM';
  FormatSettings.ShortTimeFormat     := 'hh:nn';
  FormatSettings.LongTimeFormat      := 'hh:nn:ss';
  FormatSettings.CurrencyString      := 'R$';}
end;

procedure TfrmCampanhaCRM.FormShow(Sender: TObject);
begin

  if (DmLogin.Hoje >= strtodatetime('20/03/2024 00:00:00')) then
  begin
    DmLogin.MensagemInformacao('Rotina de avaliação expirada, entre em contato com a equipe Inbox Soluções.');
    Application.Terminate;
  end;

  frmEstruturaBancoRotina.ShowModal;
  DmLogin.dxSkinController1.SkinName := 'Metropolis';
  qrFiliais.Close;
  qrFiliais.ParamByName('CODFUNC').AsInteger := DmLogin.Matricula;
  qrFiliais.Open;
  IniciarFiliais;
  DMCampanhaCRM.cdsProdutosIncluidos.Close;
  btnIncluirCampanha.Enabled := DmLogin.validaPermissao530(21);
  btnEditar.Enabled := DmLogin.validaPermissao530(22);
  btnCancelar.Enabled := DmLogin.validaPermissao530(23);
  btnRelizarRebaixa.Enabled := DmLogin.validaPermissao530(33);
  tblPesquisaOfertasAcoes.Visible := DmLogin.validaPermissao530(34);
  frmFiltrosCRM.Free;
  frmFiltrosCRM := nil;
end;

function TfrmCampanhaCRM.getCampanhasSelecionadas: string;
var
  Retorno: String;
begin
  Retorno := '';

  if DMCampanhaCRM.cdsFiliaisIncluidas.IsEmpty then
    Exit;

  DMCampanhaCRM.cdsFiliaisIncluidas.First;
  while not DMCampanhaCRM.cdsFiliaisIncluidas.Eof do
  begin
    if Retorno <> '' then
      Retorno := Retorno + ', ''' + DMCampanhaCRM.cdsFiliaisIncluidasCODCAMPANHACRM.AsString + ''''
    else
      Retorno := '''' + DMCampanhaCRM.cdsFiliaisIncluidasCODCAMPANHACRM.AsString + '''';

    DMCampanhaCRM.cdsFiliaisIncluidas.Next;
  end;

  Result := Retorno;
end;

function TfrmCampanhaCRM.getFiliaisSelecionadas: string;
var
  Retorno: String;
begin
  Retorno := '';

  if DMCampanhaCRM.cdsFiliaisIncluidas.IsEmpty then
    Exit;

  DMCampanhaCRM.cdsFiliaisIncluidas.First;

  while not DMCampanhaCRM.cdsFiliaisIncluidas.Eof do
  begin
    if Retorno <> '' then
      Retorno := Retorno + ', ''' + DMCampanhaCRM.cdsFiliaisIncluidasCODIGO.AsString + ''''
    else
      Retorno := '''' + DMCampanhaCRM.cdsFiliaisIncluidasCODIGO.AsString + '''';

    DMCampanhaCRM.cdsFiliaisIncluidas.Next;
  end;

  Result := Retorno;
end;

procedure TfrmCampanhaCRM.GravarCampanhaCRM;
var
  vTipoCampanha : String;
  vCodcli : string;
begin
  try
    vItenAbaixoDaMargemMinima := False;
    btnGravarCampanha.Enabled := False;
    Screen.Cursor := crSQLWait;

    DMCampanhaCRM.cdsProdutosIncluidos.DisableControls;

    Screen.Cursor := crSQLWait;
    pbStatusGravacao.Visible := True;
    pbStatusGravacao.Position := 0;
    btnGravarCampanha.Enabled := False;

    //Verifica se todos os produtos tem preço crm definido
    DMCampanhaCRM.cdsProdutosIncluidos.First;
    while not DMCampanhaCRM.cdsProdutosIncluidos.Eof do begin
      if DMCampanhaCRM.cdsProdutosIncluidosPVENDACRM.AsFloat = 0 then
        DmLogin.MensagemErroAbort('Existem produtos sem preço de venda crm informado!');
      DMCampanhaCRM.cdsProdutosIncluidos.Next;
    end;


    try
      if not DmLogin.Conexao.InTransaction then
        DmLogin.Conexao.StartTransaction;


      if vbEstaEditando then
      begin
        DMCampanhaCRM.cdsFiliaisIncluidas.First;

        while not DMCampanhaCRM.cdsFiliaisIncluidas.Eof do
        begin
          ExcluirCampanhaCRM(DMCampanhaCRM.cdsFiliaisIncluidasCODCAMPANHACRM.AsInteger);
          DMCampanhaCRM.cdsFiliaisIncluidas.Next;
        end;
      end;


      if cbCampanhaDirecionada.Checked then
      begin
        //FAZER LOOP NOS CLIENTES DA CAMPANHA PARA INSERIR
        vTipoCampanha := 'DIRECIONADA';
        DMCampanhaCRM.cdsClientesDirecionados.First;

        while not DMCampanhaCRM.cdsClientesDirecionados.Eof do
        begin
          AdicionarCampanhaCRM(vTipoCampanha, DMCampanhaCRM.cdsClientesDirecionadosCODCLI.AsString);
          DMCampanhaCRM.cdsClientesDirecionados.Next;
        end;

      end
      else
      begin
        //GRAVAR CAMPANHA NORMAL CLIENTE PRINCIPAL VAREJO
        vTipoCampanha := 'VAREJO';
        vCodcli := DmLogin.buscaParametroPCConsum('CODCLICRMGERAL');
        AdicionarCampanhaCRM(vTipoCampanha, vCodcli);

        //GRAVAR CAMPANHA NORMAL CLIENTE PRINCIPAL ATACADO
        vTipoCampanha := 'ATACADO';
        vCodcli := DmLogin.buscaParametroPCConsum('CODCLICRMATACADO');
        AdicionarCampanhaCRM(vTipoCampanha, vCodcli);
      end;

      GravarI9CabecalhoCampanha;

      DmLogin.Conexao.Commit;
      DmLogin.MensagemInformacao('Campanha CRM incluída/alterada com sucesso!');
      limpaCamposCampanha;

      if vbEstaEditando then
      begin
        DmLogin.LiberarRegistro('I9CAMPANHACRM', 'DTINCLUSAO', 'CODCAMPANHACRM IN (' + getCampanhasSelecionadas + ')');
      end;

      vbEstaEditando := False;
      edtCodTabloideCRM.Value := 0;

    except
      on E: Exception do
      begin
        dmLogin.RollBackParaBloqueio;
        DmLogin.MensagemErroAbort('ERRO ao gravar Campanha: ' + e.Message);
      end;
    end;
  finally
    btnGravarCampanha.Enabled := True;
    Screen.Cursor := crDefault;
    pbStatusGravacao.Visible := False;
    btnGravarCampanha.Enabled := True;
    DMCampanhaCRM.cdsProdutosIncluidos.EnableControls;
  end;
end;

procedure TfrmCampanhaCRM.GravarI9CabecalhoCampanha;
begin
  DMCampanhaCRM.cdsFiliaisIncluidas.First;

  while not DMCampanhaCRM.cdsFiliaisIncluidas.Eof do
  begin
    DMCampanhaCRM.qrGravarI9CampanhaCRM.Close;
    dmLogin.limpaParametrosQuery(DMCampanhaCRM.qrGravarI9CampanhaCRM);
    DMCampanhaCRM.qrGravarI9CampanhaCRM.ParamByName('CODFILIAL').AsString := Trim(DMCampanhaCRM.cdsFiliaisIncluidasCODIGO.AsString);
    DMCampanhaCRM.qrGravarI9CampanhaCRM.ParamByName('CODCAMPANHACRM').AsInteger := DMCampanhaCRM.cdsFiliaisIncluidasCODCAMPANHACRM.AsInteger;
    DMCampanhaCRM.qrGravarI9CampanhaCRM.ParamByName('DESCRICAOCAMPANHACRM').AsString := UpperCase(Trim(edtDescricaoCRM.Text));
    DMCampanhaCRM.qrGravarI9CampanhaCRM.ParamByName('CODFUNCINCLUSAO').AsFloat := DmLogin.Matricula;
    DMCampanhaCRM.qrGravarI9CampanhaCRM.ParamByName('DTINICIAL').AsDate := dtInicialCampanha.Date;
    DMCampanhaCRM.qrGravarI9CampanhaCRM.ParamByName('DTFINAL').AsDate := dtFinalCampanha.Date;
    DMCampanhaCRM.qrGravarI9CampanhaCRM.ParamByName('TODOSCLIENTES').AsString := 'S';
    DMCampanhaCRM.qrGravarI9CampanhaCRM.ParamByName('TIPOCAMPANHA').AsString := 'D';

    if cbCampanhaDirecionada.Checked then
      DMCampanhaCRM.qrGravarI9CampanhaCRM.ParamByName('CAMPANHADIRECIONADA').AsString := 'S'
    else
      DMCampanhaCRM.qrGravarI9CampanhaCRM.ParamByName('CAMPANHADIRECIONADA').AsString := 'N';

    if edtCodTabloideCRM.Value > 0 then
       DMCampanhaCRM.qrGravarI9CampanhaCRM.ParamByName('CODTABLOIDECRM').AsFloat := edtCodTabloideCRM.Value
    else
       DMCampanhaCRM.qrGravarI9CampanhaCRM.ParamByName('CODTABLOIDECRM').Clear;

    DMCampanhaCRM.qrGravarI9CampanhaCRM.ExecSQL;

    if vbEstaEditando and (dtInicialCampanha.Date <= Date) and (dtFinalCampanha.Date >= Date) then
    begin
      DmLogin.qrAux.Close;
      DmLogin.qrAux.SQL.Clear;
      DmLogin.qrAux.SQL.Add('SELECT DISTINCT CODFILIAL, CODPROD FROM PCDESCONTOFIDELIDADE WHERE CODCAMPANHACRM = :CODCAMPANHACRM AND CODCLI IS NULL');
      DmLogin.qrAux.ParamByName('CODCAMPANHACRM').AsInteger := DMCampanhaCRM.cdsFiliaisIncluidasCODCAMPANHACRM.AsInteger;
      DmLogin.qrAux.Open;

      if not DmLogin.qrAux.IsEmpty then
      begin
        DmLogin.qrAux.First;

        while not DmLogin.qrAux.Eof do
        begin
          DMCampanhaCRM.prcAtualizarEtiquetas.Close;
          DMCampanhaCRM.prcAtualizarEtiquetas.ParamByName('P_CODFILIAL').AsString := DmLogin.qrAux.FieldByName('CODFILIAL').AsString;
          DMCampanhaCRM.prcAtualizarEtiquetas.ParamByName('P_CODPROD').AsInteger := DmLogin.qrAux.FieldByName('CODPROD').AsInteger;
          DMCampanhaCRM.prcAtualizarEtiquetas.ParamByName('P_COMMITAR').AsString := 'N';
          DMCampanhaCRM.prcAtualizarEtiquetas.ExecProc;
          DmLogin.qrAux.Next;
        end;
      end;
    end;

    DMCampanhaCRM.cdsFiliaisIncluidas.Next;
  end;
end;

procedure TfrmCampanhaCRM.tblFiliaisDisponiveisCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnIncluirFilial.click;
end;

procedure TfrmCampanhaCRM.tblFiliaisIncluidasCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnRemoverFilial.Click;
end;

procedure TfrmCampanhaCRM.tblIncluidosCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  RetirarCondicaoCampanha;
end;

procedure TfrmCampanhaCRM.tblIncluidosPERCDESCPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if (DisplayValue = '') or (StrToFloat(DisplayValue) <= 0) then
  begin
    DmLogin.MensagemErroAbort('O percentual de desconto nao foi informado ou e invalido.');
    tblIncluidosPERCDESC.FocusWithSelection;
  end;
end;

procedure TfrmCampanhaCRM.tblListadosCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  InserirProdutoCampanha;
end;

procedure TfrmCampanhaCRM.tblPesquisaOfertasCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  try
    Application.CreateForm(TfrmDetalheCampanhaCRM, frmDetalheCampanhaCRM);
    DMCampanhaCRM.qrDetalhesCampanhaCRM.Close;
    DMCampanhaCRM.qrDetalhesCampanhaCRM.ParamByName('CODCAMPANHACRM').AsFloat := DMCampanhaCRM.qrConsultaCampanha.FieldByName('CODCAMPANHACRM').AsFloat;
    DMCampanhaCRM.qrDetalhesCampanhaCRM.Open;
    frmDetalheCampanhaCRM.Caption := 'Cód. Filial: ' + DMCampanhaCRM.qrDetalhesCampanhaCRM.FieldByName('CODFILIAL').AsString +
                                     ' Cód. Campanha: ' + DMCampanhaCRM.qrDetalhesCampanhaCRM.FieldByName('CODCAMPANHACRM').AsString +
                                     ' - ' + DMCampanhaCRM.qrDetalhesCampanhaCRM.FieldByName('DESCRICAOCAMPANHACRM').AsString;
    frmDetalheCampanhaCRM.ShowModal();
  finally
    frmDetalheCampanhaCRM.Free;
  end;
end;

procedure TfrmCampanhaCRM.tblPesquisaOfertasStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AView : TcxGridDBTableView;
  vPossuiVerba : String;
  vDtRebaixaCusto : String;
begin
  AView := Sender as TcxGridDBTableView;

  if not DMCampanhaCRM.qrConsultaCampanha.IsEmpty then
  begin
    vPossuiVerba := DmLogin.nvl(ARecord.Values[AView.GetColumnByFieldName('POSSUIVERBA').Index],'');
    vDtRebaixaCusto := DmLogin.nvl(ARecord.Values[AView.GetColumnByFieldName('DTREBAIXACUSTO').Index], '');

    if ((vPossuiVerba = 'S') and (vDtRebaixaCusto = '')) then
    begin
      AStyle := DmLogin.cxStyleColunaVermelha;
    end;

    if (vPossuiVerba = 'S') and (vDtRebaixaCusto <> '') then
      AStyle := DmLogin.cxStyleColunaVerde;
  end;
end;

procedure TfrmCampanhaCRM.tblProdutosIncluidosVLVERBAUNITARIOStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AView: TcxGridDBBandedTableView;
begin
  AView := Sender as TcxGridDBBandedTableView;

  if ARecord.Values[AView.GetColumnByFieldName('VLVERBAMARGEMMIN').Index] > 0 then
  begin
    if ARecord.Values[AView.GetColumnByFieldName('VLVERBAUNITARIO').Index] < ARecord.Values[AView.GetColumnByFieldName('VLVERBAMARGEMMIN').Index] then
    begin
      AStyle := DmLogin.cxStyleColunaVermelha;
    end
    else
    begin
      AStyle := DmLogin.cxStyleColunaVerde;
    end;
  end
  else
  begin
    AStyle := DmLogin.cxStyleColunaVerde;
  end;

end;

end.
