unit ufrmPrecificacaoCluster;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus,Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, System.Actions, Vcl.ActnList, cxGridBandedTableView,
  cxGridDBBandedTableView, cxCurrencyEdit, cxContainer, cxTextEdit, cxLabel,
  cxVGrid, cxCheckBox, cxMaskEdit, cxDropDownEdit, cxCheckComboBox, cxGroupBox,
  MemDS, DBAccess, Uni, Vcl.DBCtrls, cxGridExportLink, ShellAPI,
  dxSkinsdxStatusBarPainter, dxStatusBar, dxSkinsCore, dxSkinMetropolis,
  dxSkinVisualStudio2013Light, ufrmLog;

type
  TfrmPrecificacaoCluster = class(TForm)
    pnl1: TPanel;
    btnFiltros: TcxButton;
    btnAplicarPrecoSugConcorrencia: TcxButton;
    cxgPrecificacaoLevel1: TcxGridLevel;
    cxgPrecificacao: TcxGrid;
    ActList: TActionList;
    actFiltrosF1: TAction;
    actAplicarPrecoSugeridoF2: TAction;
    actAplicaSugConcorrenteF3: TAction;
    tblEmbalagensAbas: TcxGridDBBandedTableView;
    tblEmbalagensAbasCODPROD: TcxGridDBBandedColumn;
    tblEmbalagensAbasDESCRICAO: TcxGridDBBandedColumn;
    tblEmbalagensAbasCODPRODPRINC: TcxGridDBBandedColumn;
    tblEmbalagensAbasCODAUXILIAR: TcxGridDBBandedColumn;
    tblEmbalagensAbasQTUNIT: TcxGridDBBandedColumn;
    tblEmbalagensAbasQTMINIMAATACADO: TcxGridDBBandedColumn;
    tblEmbalagensAbasEMBALAGEM: TcxGridDBBandedColumn;
    tblEmbalagensAbasCUSTOFIN: TcxGridDBBandedColumn;
    tblEmbalagensAbasPTABELA: TcxGridDBBandedColumn;
    tblEmbalagensAbasPVENDA: TcxGridDBBandedColumn;
    tblEmbalagensAbasPTABELAATAC: TcxGridDBBandedColumn;
    tblEmbalagensAbasPVENDAATAC: TcxGridDBBandedColumn;
    tblEmbalagensAbasDATAULTIMACOTACAO: TcxGridDBBandedColumn;
    tblEmbalagensAbasPVENDACONCORRENTE: TcxGridDBBandedColumn;
    tblEmbalagensAbasPVENDAATACCONCORRENTE: TcxGridDBBandedColumn;
    tblEmbalagensAbasDTULTENT: TcxGridDBBandedColumn;
    tblEmbalagensAbasPSUGESTAO: TcxGridDBBandedColumn;
    tblEmbalagensAbasPSUGESTAO_ATAC: TcxGridDBBandedColumn;
    tblEmbalagensAbasPSUGESTAO_ARREDONDADO: TcxGridDBBandedColumn;
    tblEmbalagensAbasPSUGESTAO_ATAC_ARREDONDADO: TcxGridDBBandedColumn;
    tblEmbalagensAbasMARGEM_ATUAL_VAR: TcxGridDBBandedColumn;
    tblEmbalagensAbasMARGEM_ATUAL_ATAC: TcxGridDBBandedColumn;
    tblEmbalagensAbasMARGEM_FUT_VAR: TcxGridDBBandedColumn;
    tblEmbalagensAbasMARGEM_FUT_ATAC: TcxGridDBBandedColumn;
    cxGridViewRepository1: TcxGridViewRepository;
    tblEmbalagensAbasSENSIBILIDADE: TcxGridDBBandedColumn;
    cxButton1: TcxButton;
    actAplicarPrecoSugArredondadoF4: TAction;
    cxButton2: TcxButton;
    actAtualizarGridF5: TAction;
    btnAplicarPrecoFuturo: TcxButton;
    aplicarPrecoFuturoF6: TAction;
    popupGridPrecificacao: TPopupMenu;
    popAplicarPrecoSugerido: TMenuItem;
    popAplicarPrecoConcorrencia: TMenuItem;
    popAplicarSugArredondado: TMenuItem;
    popAplicarPrecoFuturo: TMenuItem;
    btnAplicaVariacaoDeVenda: TcxButton;
    actAplicarVariacaoNoPrecoDeVendaF7: TAction;
    popAplicarCustoMedioFamilia: TMenuItem;
    qrFiliais: TUniQuery;
    tblEmbalagensAbasFATORPRECO: TcxGridDBBandedColumn;
    tblEmbalagensAbasMARGEMVAREJO: TcxGridDBBandedColumn;
    tblEmbalagensAbasMARGEMATAC: TcxGridDBBandedColumn;
    tblEmbalagensAbasMARGEMMINVAREJO: TcxGridDBBandedColumn;
    tblEmbalagensAbasMARGEMMINATAC: TcxGridDBBandedColumn;
    btnAplicarCustoMedio: TcxButton;
    actAplicarCustoMedioF8: TAction;
    tblEmbalagensAbasDIFSUGESTAO: TcxGridDBBandedColumn;
    tblEmbalagensAbasDIFSUGESTAOATAC: TcxGridDBBandedColumn;
    N1: TMenuItem;
    ExportarGridparaexcel1: TMenuItem;
    labelProdutosSemComprador: TcxLabel;
    tblEmbalagensAbasQTULTENT: TcxGridDBBandedColumn;
    tblEmbalagensAbasPATUALVAREJO: TcxGridDBBandedColumn;
    tblEmbalagensAbasPATUALATAC: TcxGridDBBandedColumn;
    tblEmbalagensAbasPRECOFIXO: TcxGridDBBandedColumn;
    sbRodapePrecificacao: TdxStatusBar;
    tblEmbalagensAbasPRECOATUALCRM: TcxGridDBBandedColumn;
    tblEmbalagensAbasCUSTODIF: TcxGridDBBandedColumn;
    actAbrirLogs: TAction;
    procedure actFiltrosF1Execute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actAplicarPrecoSugeridoF2Execute(Sender: TObject);
    procedure actAplicaSugConcorrenteF3Execute(Sender: TObject);
    procedure actAplicarPrecoSugArredondadoF4Execute(Sender: TObject);
    procedure actAtualizarGridF5Execute(Sender: TObject);
    procedure aplicarPrecoFuturoF6Execute(Sender: TObject);
    procedure tblEmbalagensAbasCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure popAplicarPrecoSugeridoClick(Sender: TObject);
    procedure popAplicarPrecoConcorrenciaClick(Sender: TObject);
    procedure popAplicarSugArredondadoClick(Sender: TObject);
    procedure popAplicarPrecoFuturoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actAplicarVariacaoNoPrecoDeVendaF7Execute(Sender: TObject);
    procedure tblEmbalagensAbasCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure popAplicarCustoMedioFamiliaClick(Sender: TObject);
    procedure actAplicarCustoMedioF8Execute(Sender: TObject);
    procedure ExportarGridparaexcel1Click(Sender: TObject);
    procedure tmrAlertaProdutosSemCompradorTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actAbrirLogsExecute(Sender: TObject);
  private
    { Private declarations }
    procedure CarregarPreferencias;
    procedure SalvarPreferencias;
  public
    { Public declarations }
    vClusterSelecionado: Boolean;
    vCodCluster : Integer;
    function PodeAbrir:Boolean;
  end;

var
  frmPrecificacaoCluster: TfrmPrecificacaoCluster;

implementation

uses
  uLogin, uDMPrecificacao, ufrmFiltrosPrecificacao, uFrmAplicarPreco,
  ufrmDetalhesCustoEstoque, uFrmAplicarCustoMedio, ufrmGraficoConcorrente, ufrmDetalheCusto;

{$R *.dfm}

procedure TfrmPrecificacaoCluster.actAbrirLogsExecute(Sender: TObject);
begin
  Application.createForm(TfrmLog, frmLog);
  frmLog.ShowModal();
end;

procedure TfrmPrecificacaoCluster.actAplicarCustoMedioF8Execute(Sender: TObject);
begin
  if not PodeAbrir then
    Exit;

  try
   frmAplicarPreco := TfrmAplicarPreco.Create(Application, DMPrecificacao.qryEmbCluster, True);
   frmAplicarPreco.SetTipoPreco('CUSTOMEDIOFAMILIA');
   frmAplicarPreco.ShowModal;
  finally
    frmAplicarPreco.Free;
  end;
end;

procedure TfrmPrecificacaoCluster.actAplicarPrecoSugArredondadoF4Execute(
  Sender: TObject);
begin
  if not PodeAbrir then
    Exit;

  try
   frmAplicarPreco := TfrmAplicarPreco.Create(Application, DMPrecificacao.qryEmbCluster, True);
   frmAplicarPreco.SetTipoPreco('ARREDONDADO');
   frmAplicarPreco.ShowModal;
  finally
    frmAplicarPreco.Free;
  end;
end;

procedure TfrmPrecificacaoCluster.actAplicarPrecoSugeridoF2Execute(Sender: TObject);
begin
  if not PodeAbrir then
    Exit;

  try
   frmAplicarPreco := TfrmAplicarPreco.Create(Application, DMPrecificacao.qryEmbCluster, True);
   frmAplicarPreco.SetTipoPreco('SUGESTAO');
   frmAplicarPreco.ShowModal;
  finally
    frmAplicarPreco.Free;
  end;
end;

procedure TfrmPrecificacaoCluster.actAplicarVariacaoNoPrecoDeVendaF7Execute(
  Sender: TObject);
begin
  if not PodeAbrir then
    Exit;

  try
   frmAplicarPreco := TfrmAplicarPreco.Create(Application, DMPrecificacao.qryEmbCluster, True);
   frmAplicarPreco.SetTipoPreco('VARIACAOPVENDA');
   frmAplicarPreco.ShowModal;
  finally
    frmAplicarPreco.Free;
  end;
end;

procedure TfrmPrecificacaoCluster.actAplicaSugConcorrenteF3Execute(Sender: TObject);
begin
  if not PodeAbrir then
    Exit;

  try
   frmAplicarPreco := TfrmAplicarPreco.Create(Application, DMPrecificacao.qryEmbCluster, True);
   frmAplicarPreco.SetTipoPreco('CONCORRENTE');
   frmAplicarPreco.ShowModal;
  finally
    frmAplicarPreco.Free;
  end;
end;

procedure TfrmPrecificacaoCluster.actAtualizarGridF5Execute(Sender: TObject);
begin
  try
    Screen.Cursor := crDefault;
    Screen.Cursor := crSQLWait;
    DMPrecificacao.qryEmbCluster.Close;
    DMPrecificacao.qryEmbCluster.Open;
  finally
    Screen.Cursor := crDefault;
    Application.ProcessMessages;
  end;
end;

procedure TfrmPrecificacaoCluster.actFiltrosF1Execute(Sender: TObject);
var
  vOldCluster : String;
begin
  try
    if frmFiltrosPrecificacao = nil then
    begin
      frmFiltrosPrecificacao := TfrmFiltrosPrecificacao.Create(Application, DMPrecificacao.qryEmbCluster);
      frmFiltrosPrecificacao.setCluster;
    end
    else
      vOldCluster := frmFiltrosPrecificacao.edtCluster.Text;

    frmFiltrosPrecificacao.gbPrecificacao.Visible := True;
    frmFiltrosPrecificacao.ShowModal;
  finally
    if vOldCluster <> frmFiltrosPrecificacao.edtCluster.Text then
  end;
end;

procedure TfrmPrecificacaoCluster.aplicarPrecoFuturoF6Execute(Sender: TObject);
begin
  if not PodeAbrir then
    Exit;

  try
   frmAplicarPreco := TfrmAplicarPreco.Create(Application, DMPrecificacao.qryEmbCluster, True);
   frmAplicarPreco.SetTipoPreco('VENDA');
   frmAplicarPreco.ShowModal;
  finally
    frmAplicarPreco.Free;
  end;
end;

procedure TfrmPrecificacaoCluster.CarregarPreferencias;
begin
  tblEmbalagensAbas.RestoreFromStream(DmLogin.CarregarGrid('PRECOCLUSTER'),  True, False, [gsoUseFilter, gsoUseSummary], '9810');
end;

procedure TfrmPrecificacaoCluster.ExportarGridparaexcel1Click(Sender: TObject);
begin
  if dmLogin.validaPermissao530(12) then begin
    if DMPrecificacao.exportarGridExcel(cxgPrecificacao) then
      DmLogin.MensagemInformacao('Exportado com sucesso! O Arquivo se encontra na sua área de trabalho!');
  end else
    DmLogin.MensagemErroAbort('Você não tem permissão para exportar grid para o excel!');
end;

procedure TfrmPrecificacaoCluster.SalvarPreferencias;
var
  vStream : TMemoryStream;
  qrySalvar : TUniQuery;
begin
  vStream := TMemoryStream.Create;
  tblEmbalagensAbas.StoreToStream(vStream, [gsoUseFilter, gsoUseSummary], '9810');
  DmLogin.SalvarGrid('PRECOCLUSTER', vStream);
  vStream.Position := 0;
end;

procedure TfrmPrecificacaoCluster.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmFiltrosPrecificacao.Free;
  frmFiltrosPrecificacao := nil;
  DMPrecificacao.qryEmbCluster.Close;
  SalvarPreferencias;
end;

procedure TfrmPrecificacaoCluster.FormCreate(Sender: TObject);
begin
  dmLogin.populaStatusBar(self.sbRodapePrecificacao);

  frmFiltrosPrecificacao.Free;
  frmFiltrosPrecificacao := nil;
end;

procedure TfrmPrecificacaoCluster.FormShow(Sender: TObject);
var
  qtdProdutoSemComprador : Integer;
begin
  DMPrecificacao.CarregarParametros;

  btnAplicaVariacaoDeVenda.Enabled := DmLogin.validaPermissao530(7);
  actAplicarVariacaoNoPrecoDeVendaF7.Enabled := DmLogin.validaPermissao530(7);
  tblEmbalagensAbasQTMINIMAATACADO.Options.Editing := DmLogin.validaPermissao530(8);
  tblEmbalagensAbasFATORPRECO.Options.Editing := DmLogin.validaPermissao530(8);
  tblEmbalagensAbasMARGEMVAREJO.Options.Editing := DmLogin.validaPermissao530(9);
  tblEmbalagensAbasMARGEMATAC.Options.Editing := DmLogin.validaPermissao530(9);
  tblEmbalagensAbasMARGEMMINVAREJO.Options.Editing := DmLogin.validaPermissao530(9);
  tblEmbalagensAbasMARGEMMINATAC.Options.Editing := DmLogin.validaPermissao530(9);
  btnAplicarCustoMedio.Enabled := DmLogin.validaPermissao530(11);
  actAplicarCustoMedioF8.Enabled := DmLogin.validaPermissao530(11);
  popAplicarCustoMedioFamilia.Enabled := DmLogin.validaPermissao530(11);
  tblEmbalagensAbasPRECOFIXO.Options.Editing := dmLogin.validaPermissao530(28);

  { APLICAR PREÇO FUTURO }
  aplicarPrecoFuturoF6.Enabled := DmLogin.validaPermissao530(17);
  btnAplicarPrecoFuturo.Enabled := DmLogin.validaPermissao530(17);
  popAplicarPrecoFuturo.Enabled := DmLogin.validaPermissao530(17);


  CarregarPreferencias;

  //valida se tem comprador sem configurar na 238
  qtdProdutoSemComprador:= DMPrecificacao.existemProdutosSemComprador;
  if qtdProdutoSemComprador > 0 then begin
    labelProdutosSemComprador.Caption:= 'Existem ' + IntToStr(qtdProdutoSemComprador) + ' produtos sem comprador, verifique na rotina 238 !';
    labelProdutosSemComprador.Visible:= true;
  end else begin
    labelProdutosSemComprador.Caption:= '';
    labelProdutosSemComprador.Visible:= false;
  end;
end;

function TfrmPrecificacaoCluster.PodeAbrir: Boolean;
begin
  Result := (DMPrecificacao.qryEmbCluster.RecordCount > 0);
end;

procedure TfrmPrecificacaoCluster.popAplicarCustoMedioFamiliaClick(Sender: TObject);
begin
  if not vClusterSelecionado and (not DMPrecificacao.ProdutoPossuiFamilia(DMPrecificacao.qryEmbCluster.FieldByName('CODPROD').AsInteger)) then
  begin
    DmLogin.MensagemErroAbort('Produto não possui família.');
    Exit;
  end;

  try
   Application.CreateForm(TfrmAplicarCustoMedio, frmAplicarCustoMedio);
   frmAplicarCustoMedio.setCluster;
   frmAplicarCustoMedio.ShowModal;
  finally
    frmAplicarCustoMedio.Free;
  end;
end;

procedure TfrmPrecificacaoCluster.popAplicarPrecoConcorrenciaClick(Sender: TObject);
begin
  if DMPrecificacao.qryEmbCluster.FieldByName('PRECOFIXO').AsString = 'S' then
      Exit;

  DMPrecificacao.qryEmbCluster.Edit;

  if DMPrecificacao.qryEmbCluster.FieldByName('pvendaconcorrente').AsFloat > 0 then
    DMPrecificacao.qryEmbCluster.FieldByName('PTABELA').AsFloat := DMPrecificacao.qryEmbCluster.FieldByName('pvendaconcorrente').AsFloat
  else
    Application.MessageBox('Preço de sugestão concorrente inválido', 'Atenção', MB_ICONEXCLAMATION);

end;

procedure TfrmPrecificacaoCluster.popAplicarPrecoFuturoClick(Sender: TObject);
begin
  DMPrecificacao.qryEmbCluster.Edit;

  if DMPrecificacao.qryEmbCluster.FieldByName('PTABELA').AsFloat > 0 then
    DMPrecificacao.qryEmbCluster.FieldByName('PVENDA').AsFloat := DMPrecificacao.qryEmbCluster.FieldByName('PTABELA').AsFloat;

   DMPrecificacao.qryEmbCluster.Post;

   DMPrecificacao.recalcularPrecoCRM(DMPrecificacao.qryEmbCluster.FieldByName('CODFILIAL').AsString, DMPrecificacao.qryEmbCluster.FieldByName('CODAUXILIAR').AsString);

end;

procedure TfrmPrecificacaoCluster.popAplicarPrecoSugeridoClick(Sender: TObject);
begin
  if DMPrecificacao.qryEmbCluster.FieldByName('PRECOFIXO').AsString = 'S' then
      Exit;


  DMPrecificacao.qryEmbCluster.Edit;

  if DMPrecificacao.qryEmbCluster.FieldByName('PSUGESTAO').AsFloat > 0 then
    DMPrecificacao.qryEmbCluster.FieldByName('PTABELA').AsFloat := DMPrecificacao.qryEmbCluster.FieldByName('PSUGESTAO').AsFloat;
end;

procedure TfrmPrecificacaoCluster.popAplicarSugArredondadoClick(Sender: TObject);
begin
  if DMPrecificacao.qryEmbCluster.FieldByName('PRECOFIXO').AsString = 'S' then
      Exit;

  DMPrecificacao.qryEmbCluster.Edit;

  if DMPrecificacao.qryEmbCluster.FieldByName('PSUGESTAO_ARREDONDADO').AsFloat > 0 then
    DMPrecificacao.qryEmbCluster.FieldByName('PTABELA').AsFloat := DMPrecificacao.qryEmbCluster.FieldByName('PSUGESTAO_ARREDONDADO').AsFloat;
end;

procedure TfrmPrecificacaoCluster.tblEmbalagensAbasCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  AColumn: TcxGridDBBandedColumn;
begin
  inherited;
  AColumn := ACellViewInfo.Item as TcxGridDBBandedColumn;

  if (TcxGridDBBandedColumn(AColumn) = tblEmbalagensAbasPVENDACONCORRENTE) or (TcxGridDBBandedColumn(AColumn) = tblEmbalagensAbasPVENDAATACCONCORRENTE) then
  begin
       try
       Application.CreateForm(TfrmGraficoConcorrente, frmGraficoConcorrente);
       frmGraficoConcorrente.Exibir(DMPrecificacao.qryEmbCluster.FieldByName('CODPROD').AsInteger, DMPrecificacao.qryEmbCluster.FieldByName('CODGRUPO').AsString, True);
       frmGraficoConcorrente.ShowModal;
      finally
        frmGraficoConcorrente.Free;
      end;
  end
  else
  if (TcxGridDBBandedColumn(AColumn) = tblEmbalagensAbasPSUGESTAO) or (TcxGridDBBandedColumn(AColumn) = tblEmbalagensAbasPSUGESTAO_ATAC) then
  begin
    if (DmLogin.buscaParametroI9('SUGESTAOCOMPLETA') = 'S') then
    begin
       try
       Application.CreateForm(TfrmDetalheCusto, frmDetalheCusto);
       frmDetalheCusto.Exibir(DMPrecificacao.qryEmbCluster.FieldByName('CODAUXILIAR').AsString, DMPrecificacao.qryEmbCluster.FieldByName('CODFILIAL').AsString);
       frmDetalheCusto.ShowModal;
      finally
        frmDetalheCusto.Free;
      end;
    end;
  end
  else
  begin
      try
       Application.CreateForm(TfrmCustoEstoque, frmCustoEstoque);

       if vClusterSelecionado then
       begin
         frmCustoEstoque.ExibirCluster(vCodCluster, DMPrecificacao.qryEmbCluster.FieldByName('CODPROD').AsInteger);
       end
       else
       begin
         frmCustoEstoque.Exibir(DMPrecificacao.qryEmbCluster.FieldByName('CODPROD').AsInteger);
       end;

       frmCustoEstoque.ShowModal;
      finally
        frmCustoEstoque.Free;
      end;
  end;





end;

procedure TfrmPrecificacaoCluster.tblEmbalagensAbasCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[tblEmbalagensAbas.GetColumnByFieldName('PTABELA').Index] <> AViewInfo.GridRecord.Values[tblEmbalagensAbas.GetColumnByFieldName('PVENDA').Index]  ) then begin
    Acanvas.Font.Color:= clGreen;
  end;

  if (AViewInfo.GridRecord.Values[tblEmbalagensAbas.GetColumnByFieldName('PTABELAATAC').Index] <> AViewInfo.GridRecord.Values[tblEmbalagensAbas.GetColumnByFieldName('PVENDAATAC').Index]  ) then begin
    Acanvas.Font.Color:= clGreen;
  end;


  if vClusterSelecionado and (AViewInfo.GridRecord.Values[tblEmbalagensAbas.GetColumnByFieldName('CUSTODIF').Index] <> 'N') then begin
    Acanvas.Font.Color:= clPurple;
  end;

  //if (AViewInfo.GridRecord.Values[tblEmbalagensAbas.GetColumnByFieldName('PTABELACRM').Index] <> AViewInfo.GridRecord.Values[tblEmbalagensAbas.GetColumnByFieldName('PVENDACRM').Index]  ) then begin
  //  Acanvas.Font.Color:= clGreen;
  //end;

end;

procedure TfrmPrecificacaoCluster.tmrAlertaProdutosSemCompradorTimer(Sender: TObject);
begin
  if labelProdutosSemComprador.Caption <> '' then begin
    if labelProdutosSemComprador.Visible then
      labelProdutosSemComprador.Visible:= False
    else
      labelProdutosSemComprador.Visible:= true;
  end;
end;

end.
