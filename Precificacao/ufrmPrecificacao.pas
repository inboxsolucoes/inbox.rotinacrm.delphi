unit ufrmPrecificacao;

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
  dxSkinVisualStudio2013Light, ufrmLog ;

type
  TfrmPrecificacao = class(TForm)
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
    tblEmbalagensAbasCODFILIAL: TcxGridDBBandedColumn;
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
    tblEmbalagensAbasPOSRANKING: TcxGridDBBandedColumn;
    tblEmbalagensAbasPERCVENDAVAREJO: TcxGridDBBandedColumn;
    tblEmbalagensAbasPERCVENDAATAC: TcxGridDBBandedColumn;
    tblEmbalagensAbasDATAULTIMACOTACAO: TcxGridDBBandedColumn;
    tblEmbalagensAbasPVENDACONCORRENTE: TcxGridDBBandedColumn;
    tblEmbalagensAbasPVENDAATACCONCORRENTE: TcxGridDBBandedColumn;
    tblEmbalagensAbasCUSTOMEDIOFAMILIA: TcxGridDBBandedColumn;
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
    groupFiliais: TcxGroupBox;
    ccbFilial: TcxCheckComboBox;
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
    tblEmbalagensAbasCODFUNCALTPTABELA: TcxGridDBBandedColumn;
    tblEmbalagensAbasQTESTGER: TcxGridDBBandedColumn;
    tblEmbalagensAbasQTULTENT: TcxGridDBBandedColumn;
    tblEmbalagensAbasPATUALVAREJO: TcxGridDBBandedColumn;
    tblEmbalagensAbasPATUALATAC: TcxGridDBBandedColumn;
    tblEmbalagensAbasPRECOFIXO: TcxGridDBBandedColumn;
    sbRodapePrecificacao: TdxStatusBar;
    tblEmbalagensAbasPRECOATUALCRM: TcxGridDBBandedColumn;
    pnlCluster: TPanel;
    lblClusterSelecionado: TcxLabel;
    cxLabel1: TcxLabel;
    Panel1: TPanel;
    tblEmbalagensAbasCUSTODIF: TcxGridDBBandedColumn;
    cbArredondarAutomaticamente: TcxCheckBox;
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
    procedure FormCreate(Sender: TObject);
    procedure tblEmbalagensAbasPTABELAATACPropertiesEditValueChanged(
      Sender: TObject);
    procedure tblEmbalagensAbasPTABELAPropertiesEditValueChanged(
      Sender: TObject);
    procedure actAbrirLogsExecute(Sender: TObject);
  private
    { Private declarations }
    procedure populaFiliaisComboReplicar;
    procedure CarregarPreferencias;
    procedure SalvarPreferencias;
  public
    { Public declarations }
    vClusterSelecionado: Boolean;
    vCodCluster : Integer;
    function getFiliaisSelecionadas:string;
    function PodeAbrir:Boolean;
  end;

var
  frmPrecificacao: TfrmPrecificacao;

implementation

uses
  uLogin, uDMPrecificacao, ufrmFiltrosPrecificacao, uFrmAplicarPreco,
  ufrmDetalhesCustoEstoque, uFrmAplicarCustoMedio, ufrmGraficoConcorrente, ufrmDetalheCusto, ufrmPrincipal, udmPrincipal;

{$R *.dfm}

procedure TfrmPrecificacao.actAbrirLogsExecute(Sender: TObject);
begin
  Application.createForm(TfrmLog, frmLog);
  frmLog.ShowModal();
end;

procedure TfrmPrecificacao.actAplicarCustoMedioF8Execute(Sender: TObject);
begin
  if not PodeAbrir then
    Exit;

  try
   frmAplicarPreco := TfrmAplicarPreco.Create(Application, DMPrecificacao.qryEmbalagens, False);

   if vClusterSelecionado then
   begin
     frmAplicarPreco.SetTipoPreco('CUSTOMEDIOCLUSTER');
   end
   else
   begin
     frmAplicarPreco.SetTipoPreco('CUSTOMEDIOFAMILIA');
   end;

   frmAplicarPreco.ShowModal;
  finally
    frmAplicarPreco.Free;
  end;
end;

procedure TfrmPrecificacao.actAplicarPrecoSugArredondadoF4Execute(
  Sender: TObject);
begin
  if not PodeAbrir then
    Exit;

  try
   frmAplicarPreco := TfrmAplicarPreco.Create(Application, DMPrecificacao.qryEmbalagens, False);
   frmAplicarPreco.SetTipoPreco('ARREDONDADO');
   frmAplicarPreco.ShowModal;
  finally
    frmAplicarPreco.Free;
  end;
end;

procedure TfrmPrecificacao.actAplicarPrecoSugeridoF2Execute(Sender: TObject);
begin
  if not PodeAbrir then
    Exit;

  try
   frmAplicarPreco := TfrmAplicarPreco.Create(Application, DMPrecificacao.qryEmbalagens, False);
   frmAplicarPreco.SetTipoPreco('SUGESTAO');
   frmAplicarPreco.ShowModal;
  finally
    frmAplicarPreco.Free;
  end;
end;

procedure TfrmPrecificacao.actAplicarVariacaoNoPrecoDeVendaF7Execute(
  Sender: TObject);
begin
  if not PodeAbrir then
    Exit;

  try
   frmAplicarPreco := TfrmAplicarPreco.Create(Application, DMPrecificacao.qryEmbalagens, False);
   frmAplicarPreco.SetTipoPreco('VARIACAOPVENDA');
   frmAplicarPreco.ShowModal;
  finally
    frmAplicarPreco.Free;
  end;
end;

procedure TfrmPrecificacao.actAplicaSugConcorrenteF3Execute(Sender: TObject);
begin
  if not PodeAbrir then
    Exit;

  try
   frmAplicarPreco := TfrmAplicarPreco.Create(Application, DMPrecificacao.qryEmbalagens, False);
   frmAplicarPreco.SetTipoPreco('CONCORRENTE');
   frmAplicarPreco.ShowModal;
  finally
    frmAplicarPreco.Free;
  end;
end;

procedure TfrmPrecificacao.actAtualizarGridF5Execute(Sender: TObject);
begin
  try
    Screen.Cursor := crDefault;
    Screen.Cursor := crSQLWait;
    DMPrecificacao.qryEmbalagens.Close;
    DMPrecificacao.qryEmbalagens.Open;
  finally
    Screen.Cursor := crDefault;
    Application.ProcessMessages;
  end;
end;

procedure TfrmPrecificacao.actFiltrosF1Execute(Sender: TObject);
var
  vOldFilial : String;
begin
  try
    if frmFiltrosPrecificacao = nil then
      frmFiltrosPrecificacao := TfrmFiltrosPrecificacao.Create(Application, DMPrecificacao.qryEmbalagens)
    else
      vOldFilial := frmFiltrosPrecificacao.cmbFilialPrecificacao.Text;

    frmFiltrosPrecificacao.gbPrecificacao.Visible := True;
    frmFiltrosPrecificacao.ShowModal;
  finally
    if vOldFilial <> frmFiltrosPrecificacao.cmbFilialPrecificacao.Text then
      populaFiliaisComboReplicar;
  end;
end;

procedure TfrmPrecificacao.aplicarPrecoFuturoF6Execute(Sender: TObject);
  begin
  if not PodeAbrir then
    Exit;

  try
   frmAplicarPreco := TfrmAplicarPreco.Create(Application, DMPrecificacao.qryEmbalagens, False);
   frmAplicarPreco.SetTipoPreco('VENDA');
   frmAplicarPreco.ShowModal;
  finally
    frmAplicarPreco.Free;
  end;
end;

procedure TfrmPrecificacao.CarregarPreferencias;
begin
  tblEmbalagensAbas.RestoreFromStream(DmLogin.CarregarGrid('PRECIFICACAO'),  True, False, [gsoUseFilter, gsoUseSummary], '9810');
end;

procedure TfrmPrecificacao.ExportarGridparaexcel1Click(Sender: TObject);
begin
  if dmLogin.validaPermissao530(12) then begin
    if DMPrecificacao.exportarGridExcel(cxgPrecificacao) then
      DmLogin.MensagemInformacao('Exportado com sucesso! O Arquivo se encontra na sua área de trabalho!');
  end else
    DmLogin.MensagemErroAbort('Você não tem permissão para exportar grid para o excel!');
end;

procedure TfrmPrecificacao.SalvarPreferencias;
var
  vStream : TMemoryStream;
  qrySalvar : TUniQuery;
begin
  {tblEmbalagensAbas.StoreToIniFile('C:\Winthor\SPOOL\' + IntToStr(DmLogin.CodRotina) + '_PRECIFICACAO.INI', true, [gsoUseFilter, gsoUseSummary]);}
  vStream := TMemoryStream.Create;
  tblEmbalagensAbas.StoreToStream(vStream, [gsoUseFilter, gsoUseSummary], '9810');
  DmLogin.SalvarGrid('PRECIFICACAO', vStream);
  vStream.Position := 0;
end;

procedure TfrmPrecificacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmFiltrosPrecificacao.Free;
  frmFiltrosPrecificacao := nil;
  DMPrecificacao.qryEmbalagens.Close;
  SalvarPreferencias;
end;

procedure TfrmPrecificacao.FormCreate(Sender: TObject);
begin
  dmLogin.populaStatusBar(self.sbRodapePrecificacao);

  frmFiltrosPrecificacao.Free;
  frmFiltrosPrecificacao := nil;
end;

procedure TfrmPrecificacao.FormShow(Sender: TObject);
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
  cbArredondarAutomaticamente.Enabled := dmLogin.validaPermissao530(50);

  { APLICAR PREÇO FUTURO }
  aplicarPrecoFuturoF6.Enabled := DmLogin.validaPermissao530(17);
  btnAplicarPrecoFuturo.Enabled := DmLogin.validaPermissao530(17);
  popAplicarPrecoFuturo.Enabled := DmLogin.validaPermissao530(17);

  { REPLICAR ENTRE FILIAIS }
  ccbFilial.Enabled := DmLogin.validaPermissao530(18);
  populaFiliaisComboReplicar;

  {PRECIFICAÇÂO CRM}
  //tblEmbalagensAbasPTABELACRM.Options.Editing := DmLogin.validaPermissao530(30);

  CarregarPreferencias;
end;

function TfrmPrecificacao.getFiliaisSelecionadas: string;
var
  I:Integer;
  vFiliais:string;
begin

    vFiliais := QuotedStr(frmFiltrosPrecificacao.cmbFilialPrecificacao.Text);

    if ccbFilial.Text <> 'Nenhuma filial selecionada' then
    begin
      for I := 0 to ccbFilial.Properties.Items.Count - 1 do
      begin
        if ccbFilial.States[i] = TcxCheckBoxState.cbsChecked then
        begin
          vFiliais := vFiliais + ',' + QuotedStr(ccbFilial.Properties.Items[i].ShortDescription);
        end;
      end;
    end;

    Result := vFiliais;
end;

function TfrmPrecificacao.PodeAbrir: Boolean;
begin
  Result := (DMPrecificacao.qryEmbalagens.RecordCount > 0);
end;

procedure TfrmPrecificacao.popAplicarCustoMedioFamiliaClick(Sender: TObject);
begin
    if not vClusterSelecionado and (not DMPrecificacao.ProdutoPossuiFamilia(DMPrecificacao.qryEmbalagens.FieldByName('CODPROD').AsInteger)) then
    begin
      DmLogin.MensagemErroAbort('Produto não possui família.');
      Exit;
    end;

    try
     Application.CreateForm(TfrmAplicarCustoMedio, frmAplicarCustoMedio);
     frmAplicarCustoMedio.ShowModal;
    finally
      frmAplicarCustoMedio.Free;
    end;
end;

procedure TfrmPrecificacao.popAplicarPrecoConcorrenciaClick(Sender: TObject);
begin
  if DMPrecificacao.qryEmbalagens.FieldByName('PRECOFIXO').AsString = 'S' then
      Exit;

  DMPrecificacao.qryEmbalagens.Edit;

  if DMPrecificacao.qryEmbalagens.FieldByName('pvendaconcorrente').AsFloat > 0 then
    DMPrecificacao.qryEmbalagens.FieldByName('PTABELA').AsFloat := DMPrecificacao.qryEmbalagens.FieldByName('pvendaconcorrente').AsFloat
  else
    Application.MessageBox('Preço de sugestão concorrente inválido', 'Atenção', MB_ICONEXCLAMATION);

end;

procedure TfrmPrecificacao.popAplicarPrecoFuturoClick(Sender: TObject);
begin
  DMPrecificacao.qryEmbalagens.Edit;

  if DMPrecificacao.qryEmbalagens.FieldByName('PTABELA').AsFloat > 0 then
    DMPrecificacao.qryEmbalagens.FieldByName('PVENDA').AsFloat := DMPrecificacao.qryEmbalagens.FieldByName('PTABELA').AsFloat;

   DMPrecificacao.qryEmbalagens.Post;

   DMPrecificacao.recalcularPrecoCRM(DMPrecificacao.qryEmbalagens.FieldByName('CODFILIAL').AsString, DMPrecificacao.qryEmbalagens.FieldByName('CODAUXILIAR').AsString);

end;

procedure TfrmPrecificacao.popAplicarPrecoSugeridoClick(Sender: TObject);
begin
  if DMPrecificacao.qryEmbalagens.FieldByName('PRECOFIXO').AsString = 'S' then
      Exit;


  DMPrecificacao.qryEmbalagens.Edit;

  if DMPrecificacao.qryEmbalagens.FieldByName('PSUGESTAO').AsFloat > 0 then
    DMPrecificacao.qryEmbalagens.FieldByName('PTABELA').AsFloat := DMPrecificacao.qryEmbalagens.FieldByName('PSUGESTAO').AsFloat;
end;

procedure TfrmPrecificacao.popAplicarSugArredondadoClick(Sender: TObject);
begin
  if DMPrecificacao.qryEmbalagens.FieldByName('PRECOFIXO').AsString = 'S' then
      Exit;

  DMPrecificacao.qryEmbalagens.Edit;

  if DMPrecificacao.qryEmbalagens.FieldByName('PSUGESTAO_ARREDONDADO').AsFloat > 0 then
    DMPrecificacao.qryEmbalagens.FieldByName('PTABELA').AsFloat := DMPrecificacao.qryEmbalagens.FieldByName('PSUGESTAO_ARREDONDADO').AsFloat;
end;

procedure TfrmPrecificacao.populaFiliaisComboReplicar;
var
  i : Integer;
begin
  //Preenche combo filial
  ccbFilial.Properties.Items.Clear;
  with qrFiliais do begin
    ParamByName('CODFUNC').AsInteger := DmLogin.Matricula;
    Close;
    RestoreSQL;

    if frmFiltrosPrecificacao <> nil then
    begin
      if frmFiltrosPrecificacao.edtCluster.Text <> '' then
      begin
        AddWhere(' CODIGO IN (SELECT CODFILIAL FROM I9GRUPOFILIALI WHERE CODGRUPO = :CODGRUPO) ');
        AddWhere(' CODIGO NOT IN (SELECT CODFILIALPRINC FROM I9GRUPOFILIALC WHERE CODGRUPO = :CODGRUPO) ');
        ParamByName('CODGRUPO').AsString := frmFiltrosPrecificacao.edtCluster.Text;
        pnlCluster.Visible := True;
        vClusterSelecionado := True;
        vCodCluster := StrToInt(frmFiltrosPrecificacao.edtCluster.Text);
      end
      else
      begin
        AddWhere(' CODIGO NOT IN (:CODIGO) ');
        ParamByName('CODIGO').AsString := frmFiltrosPrecificacao.cmbFilialPrecificacao.Text;
        pnlCluster.Visible := False;
        vClusterSelecionado := False;
        vCodCluster := 0;
      end;
    end;

    Open;
    First;
    while not Eof do
    begin
      ccbFilial.Properties.Items.AddCheckItem(FieldByName('CODIGO').AsString + ' - ' + FieldByName('NOME').AsString, FieldByName('CODIGO').AsString);
      Next;
    end;

    if (frmFiltrosPrecificacao <> nil) and (frmFiltrosPrecificacao.edtCluster.Text <> '') then
    begin
       for i := 0 to ccbFilial.Properties.Items.Count - 1 do
       begin
         ccbFilial.States[i] := cbsChecked;
       end;

       ccbFilial.Enabled := False;
    end
    else
    begin
       ccbFilial.Enabled := True;
    end;                             
  end;
end;

procedure TfrmPrecificacao.tblEmbalagensAbasCellDblClick(
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
       frmGraficoConcorrente.Exibir(DMPrecificacao.qryEmbalagens.FieldByName('CODPROD').AsInteger, DMPrecificacao.qryEmbalagens.FieldByName('CODFILIAL').AsString, False);
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
       frmDetalheCusto.Exibir(DMPrecificacao.qryEmbalagens.FieldByName('CODAUXILIAR').AsString, DMPrecificacao.qryEmbalagens.FieldByName('CODFILIAL').AsString);
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
         frmCustoEstoque.ExibirCluster(vCodCluster, DMPrecificacao.qryEmbalagens.FieldByName('CODPROD').AsInteger);
       end
       else
       begin
         frmCustoEstoque.Exibir(DMPrecificacao.qryEmbalagens.FieldByName('CODPROD').AsInteger);
       end;

       frmCustoEstoque.ShowModal;
      finally
        frmCustoEstoque.Free;
      end;
  end;





end;

procedure TfrmPrecificacao.tblEmbalagensAbasCustomDrawCell(
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

procedure TfrmPrecificacao.tblEmbalagensAbasPTABELAATACPropertiesEditValueChanged(
  Sender: TObject);
var
  vPrecoDigitado : Double;
begin
  vPrecoDigitado := TcxCurrencyEdit(sender).Value;

  if (cbArredondarAutomaticamente.Checked) then
    TcxCurrencyEdit(sender).Value := DMPrincipal.getPrecoArredondado(vPrecoDigitado);
end;

procedure TfrmPrecificacao.tblEmbalagensAbasPTABELAPropertiesEditValueChanged(
  Sender: TObject);
var
  vPrecoDigitado : Double;
begin
  vPrecoDigitado := TcxCurrencyEdit(sender).Value;

  if (cbArredondarAutomaticamente.Checked) then
    TcxCurrencyEdit(sender).Value := DMPrincipal.getPrecoArredondado(vPrecoDigitado);
end;

end.
