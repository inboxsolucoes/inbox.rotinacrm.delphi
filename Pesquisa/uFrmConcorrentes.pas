unit uFrmConcorrentes;

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
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter;

type
  TFrmConcorrentes = class(TForm)
    pcPrincipal: TcxPageControl;
    pageMenu: TcxTabSheet;
    cxGroupBox7: TcxGroupBox;
    ActionList1: TActionList;
    actInserirF2: TAction;
    actRemoverF3: TAction;
    actInserirTodos: TAction;
    actFiltrosF1: TAction;
    qrAux: TUniQuery;
    dtPadrao: TDatasPadroes;
    pageIncluirConcorrente: TcxTabSheet;
    cxGroupBox2: TcxGroupBox;
    edtDescricaoConcorrente: TcxTextEdit;
    cxLabel5: TcxLabel;
    edtCodConcorrente: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxLabel8: TcxLabel;
    edtCnpjConcorrente: TcxTextEdit;
    cxLabel10: TcxLabel;
    edtTelefoneConcorrente: TcxTextEdit;
    chkConcorrenteAtivo: TcxCheckBox;
    Panel1: TPanel;
    btnVoltarInicio: TcxButton;
    btnSalvarConcorrente: TcxButton;
    edtLatitude: TcxTextEdit;
    cxLabel7: TcxLabel;
    edtLongitude: TcxTextEdit;
    cxLabel11: TcxLabel;
    btnIncluirConcorrente: TcxButton;
    edtCodConcorrenteEditar: TCampoPesquisa;
    btnEditarConcorrente: TcxButton;
    btnVincularCluster: TcxButton;
    tabFilialxConcorrente: TcxTabSheet;
    tabClusterxConcorrente: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    psqFilialxConcorrente: TCampoPesquisa;
    btnPesquisar: TcxButton;
    cxGroupBox3: TcxGroupBox;
    psqClusterxConcorrente: TCampoPesquisa;
    btnPesquisarCluster: TcxButton;
    cxConcorrentesDisponiveis: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxLabel1: TcxLabel;
    cxGrid2: TcxGrid;
    cxConcorrentesVinculados: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxLabel2: TcxLabel;
    btnRemoverFilial: TcxButton;
    btnIncluirFilial: TcxButton;
    cxConcorrentesVinculadosCODCONC: TcxGridDBColumn;
    cxConcorrentesVinculadosCONCORRENTE: TcxGridDBColumn;
    cxConcorrentesDisponiveisCODCONC: TcxGridDBColumn;
    cxConcorrentesDisponiveisCONCORRENTE: TcxGridDBColumn;
    pnl1: TPanel;
    btnVoltar: TcxButton;
    pnl2: TPanel;
    cxButton3: TcxButton;
    cxLabel3: TcxLabel;
    cxGrid3: TcxGrid;
    cxConcorrenesClusterDisponiveis: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    btnIncluirCluster: TcxButton;
    btnRemoverCluster: TcxButton;
    cxGrid4: TcxGrid;
    cxConcorrenesClusterVinculados: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxLabel4: TcxLabel;
    procedure FormActivate(Sender: TObject);
    procedure actInserirTodosExecute(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure actFiltrosF1Execute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirConcorrenteClick(Sender: TObject);
    procedure btnEditarConcorrenteClick(Sender: TObject);
    procedure btnSalvarConcorrenteClick(Sender: TObject);
    procedure btnVoltarInicioClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnVincularFilialClick(Sender: TObject);
    procedure btnIncluirFilialClick(Sender: TObject);
    procedure btnRemoverFilialClick(Sender: TObject);
    procedure cxConcorrentesVinculadosCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxConcorrentesDisponiveisCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxConcorrenesClusterVinculadosCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxConcorrenesClusterDisponiveisCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnIncluirClusterClick(Sender: TObject);
    procedure btnPesquisarClusterClick(Sender: TObject);
    procedure btnRemoverClusterClick(Sender: TObject);
    procedure btnVincularClusterClick(Sender: TObject);
  private
    procedure limparCamposIncluirConcorrente;
    function validaCNPJ(cnpj : string) : Boolean;
    function apenasnumeros(texto : string) : string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConcorrentes: TFrmConcorrentes;

implementation

{$R *.dfm}

uses uPesquisas, uDMPesquisaConforrente, uLogin, ufrmFiltrosPrecificacao;

procedure TFrmConcorrentes.actFiltrosF1Execute(Sender: TObject);
begin
   try
    if frmFiltrosPrecificacao = nil then
      frmFiltrosPrecificacao := TfrmFiltrosPrecificacao.Create(Application, DMPesquisaConforrente.qrPesqProdutos);

    frmFiltrosPrecificacao.ShowModal;
  except
    on E: Exception do begin
      Application.MessageBox(Pchar('Erro ao pesquisar produtos!' + e.Message),'Atencao', MB_ICONERROR  );
      Abort;
    end;
  end;
end;

function TFrmConcorrentes.apenasnumeros(texto: string): string;
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

procedure TFrmConcorrentes.actInserirTodosExecute(Sender: TObject);
begin
  DMPesquisaConforrente.qrPesqProdutos.First;
  while not DMPesquisaConforrente.qrPesqProdutos.Eof do begin
    if DMPesquisaConforrente.qrPesqProdutos.FieldByName('INCLUIDO').AsString = 'N' then
      DMPesquisaConforrente.inserirProduto;
    DMPesquisaConforrente.qrPesqProdutos.Next;
  end;
end;

procedure TFrmConcorrentes.btnEditarConcorrenteClick(Sender: TObject);
begin
  limparCamposIncluirConcorrente;

  if edtCodConcorrenteEditar.Text = '' then
    DmLogin.MensagemErroAbort('Nenhum concorrente selecionado!');

  DMPesquisaConforrente.qrConcorrentes.Close;
  DMPesquisaConforrente.qrConcorrentes.AddWhere(' CODCONC = :CODCONC ');
  DMPesquisaConforrente.qrConcorrentes.ParamByName('CODCONC').AsString := edtCodConcorrenteEditar.Text;
  DMPesquisaConforrente.qrConcorrentes.Open;


  edtCodConcorrente.Text := DMPesquisaConforrente.qrConcorrentes.FieldByName('CODCONC').AsString;
  edtDescricaoConcorrente.Text := DMPesquisaConforrente.qrConcorrentes.FieldByName('CONCORRENTE').AsString;
  edtTelefoneConcorrente.Text := DMPesquisaConforrente.qrConcorrentes.FieldByName('TELEFONE').AsString;
  edtCnpjConcorrente.Text := DMPesquisaConforrente.qrConcorrentes.FieldByName('CNPJ').AsString;
  edtLatitude.Text := DMPesquisaConforrente.qrConcorrentes.FieldByName('I9LATITUDE').AsString;
  edtLongitude.Text := DMPesquisaConforrente.qrConcorrentes.FieldByName('I9LONGITUDE').AsString;

  if DMPesquisaConforrente.qrConcorrentes.FieldByName('ATIVO').AsString = 'S' then
    chkConcorrenteAtivo.Checked := True
  else
    chkConcorrenteAtivo.Checked := False;

  pcPrincipal.ActivePage := pageIncluirConcorrente;
end;

procedure TFrmConcorrentes.btnIncluirClusterClick(Sender: TObject);
begin
  if not DMPesquisaConforrente.qryConcorrentesDisponiveisCluster.IsEmpty then
  begin
    DMPesquisaConforrente.qryConcorrentesVinculadosCluster.Insert;
    DMPesquisaConforrente.qryConcorrentesVinculadosCluster.FieldByName('CODGRUPO').AsString := psqClusterxConcorrente.Text;
    DMPesquisaConforrente.qryConcorrentesVinculadosCluster.FieldByName('CODCONC').AsInteger := DMPesquisaConforrente.qryConcorrentesDisponiveisCluster.FieldByName('CODCONC').AsInteger;
    DMPesquisaConforrente.qryConcorrentesVinculadosCluster.Post;

    DMPesquisaConforrente.qryConcorrentesVinculadosCluster.Refresh;
    DMPesquisaConforrente.qryConcorrentesDisponiveisCluster.Refresh;
  end;
end;

procedure TFrmConcorrentes.btnIncluirConcorrenteClick(Sender: TObject);
begin
  DMPesquisaConforrente.qrProxCodConcorrente.Close;
  DMPesquisaConforrente.qrProxCodConcorrente.Open;
  edtCodConcorrente.Text := DMPesquisaConforrente.qrProxCodConcorrente.FieldByName('CODCONCORRENTE').AsString;
  chkConcorrenteAtivo.Checked := True;
  pcPrincipal.ActivePage := pageIncluirConcorrente;
end;

procedure TFrmConcorrentes.btnIncluirFilialClick(Sender: TObject);
begin
  if not DMPesquisaConforrente.qryConcorrentesDisponiveisFilial.IsEmpty then
  begin
    DMPesquisaConforrente.qryConcorrentesVinculadosFilial.Insert;
    DMPesquisaConforrente.qryConcorrentesVinculadosFilial.FieldByName('CODFILIAL').AsString := psqFilialxConcorrente.Text;
    DMPesquisaConforrente.qryConcorrentesVinculadosFilial.FieldByName('CODCONC').AsInteger := DMPesquisaConforrente.qryConcorrentesDisponiveisFilialCODCONC.AsInteger;
    DMPesquisaConforrente.qryConcorrentesVinculadosFilial.Post;

    DMPesquisaConforrente.qryConcorrentesVinculadosFilial.Refresh;
    DMPesquisaConforrente.qryConcorrentesDisponiveisFilial.Refresh;
  end;
end;

procedure TFrmConcorrentes.btnPesquisarClick(Sender: TObject);
begin
  if psqFilialxConcorrente.Text <> '' then
  begin
    DMPesquisaConforrente.qryConcorrentesDisponiveisFilial.Close;
    DMPesquisaConforrente.qryConcorrentesDisponiveisFilial.ParamByName('CODFILIAL').AsString := psqFilialxConcorrente.Text;
    DMPesquisaConforrente.qryConcorrentesDisponiveisFilial.Open;


    DMPesquisaConforrente.qryConcorrentesVinculadosFilial.Close;
    DMPesquisaConforrente.qryConcorrentesVinculadosFilial.ParamByName('CODFILIAL').AsString := psqFilialxConcorrente.Text;
    DMPesquisaConforrente.qryConcorrentesVinculadosFilial.Open;
  end;
end;

procedure TFrmConcorrentes.btnPesquisarClusterClick(Sender: TObject);
begin
 if psqClusterxConcorrente.Text <> '' then
  begin
    DMPesquisaConforrente.qryConcorrentesDisponiveisCluster.Close;
    //DMPesquisaConforrente.qryConcorrentesDisponiveisCluster.ParamByName('CODGRUPO').AsString := psqClusterxConcorrente.Text;
    DMPesquisaConforrente.qryConcorrentesDisponiveisCluster.Open;


    DMPesquisaConforrente.qryConcorrentesVinculadosCluster.Close;
    DMPesquisaConforrente.qryConcorrentesVinculadosCluster.ParamByName('CODGRUPO').AsString := psqClusterxConcorrente.Text;
    DMPesquisaConforrente.qryConcorrentesVinculadosCluster.Open;
  end;
end;

procedure TFrmConcorrentes.btnRemoverClusterClick(Sender: TObject);
begin
 if not DMPesquisaConforrente.qryConcorrentesDisponiveisCluster.IsEmpty then
  begin
    DMPesquisaConforrente.qryConcorrentesVinculadosCluster.Delete;
    DMPesquisaConforrente.qryConcorrentesVinculadosCluster.Refresh;
    DMPesquisaConforrente.qryConcorrentesDisponiveisCluster.Refresh;
  end;
end;

procedure TFrmConcorrentes.btnRemoverFilialClick(Sender: TObject);
begin
  if not DMPesquisaConforrente.qryConcorrentesVinculadosFilial.IsEmpty then
  begin
    DMPesquisaConforrente.qryConcorrentesVinculadosFilial.Delete;
    DMPesquisaConforrente.qryConcorrentesVinculadosFilial.Refresh;
    DMPesquisaConforrente.qryConcorrentesDisponiveisFilial.Refresh;
  end;
end;

procedure TFrmConcorrentes.btnSalvarConcorrenteClick(Sender: TObject);
begin
  if edtDescricaoConcorrente.Text = '' then
    DmLogin.MensagemErroAbort('Favor, informar uma descrição valida!');
  if edtCnpjConcorrente.Text = '' then begin
    if not DmLogin.MensagemPergunta('Tem certeza que deseja salvar o concorrente sem CNPJ?') then
      Exit;
  end;

  if edtCnpjConcorrente.Text <> '' then begin
    if not validaCNPJ(edtCnpjConcorrente.Text) then
     DmLogin.MensagemErroAbort('Favor, informe um CNPJ valido para cadastro');
  end;

  if chkConcorrenteAtivo.Checked = False then
  begin
    if not DmLogin.MensagemPergunta('Tem certeza que deseja inativar o concorrente?') then
    Exit;
  end;

  try
    DmLogin.limpaParametrosQuery(DMPesquisaConforrente.qrIncluirConcorrente);
    DMPesquisaConforrente.qrIncluirConcorrente.Close;
    DMPesquisaConforrente.qrIncluirConcorrente.RestoreSQL;
    DMPesquisaConforrente.qrIncluirConcorrente.ParamByName('CODCONC').AsString := edtCodConcorrente.Text;
    DMPesquisaConforrente.qrIncluirConcorrente.ParamByName('CONCORRENTE').AsString := edtDescricaoConcorrente.Text;
    DMPesquisaConforrente.qrIncluirConcorrente.ParamByName('TELEFONE').AsString := edtTelefoneConcorrente.Text;
    DMPesquisaConforrente.qrIncluirConcorrente.ParamByName('CNPJ').AsString := edtCnpjConcorrente.Text;
    DMPesquisaConforrente.qrIncluirConcorrente.ParamByName('I9LATITUDE').AsString := edtLatitude.Text;
    DMPesquisaConforrente.qrIncluirConcorrente.ParamByName('I9LONGITUDE').AsString := edtLongitude.Text;

    if chkConcorrenteAtivo.Checked then
      DMPesquisaConforrente.qrIncluirConcorrente.ParamByName('ATIVO').AsString := 'S'
    else
      DMPesquisaConforrente.qrIncluirConcorrente.ParamByName('ATIVO').AsString := 'N';

    DMPesquisaConforrente.qrIncluirConcorrente.ExecSQL;

    DmLogin.MensagemInformacao('Concorrente '+ edtDescricaoConcorrente.text +' incluido/alterado com sucesso!');

    limparCamposIncluirConcorrente;
    pcPrincipal.ActivePage := pageMenu;
  except on E: Exception do
    begin
      DmLogin.MensagemErroAbort('Não foi possivel realizar a alteracão!' +#13+
                                'Erro: '+ e.Message);

    end;
  end;
end;

procedure TFrmConcorrentes.btnVoltarInicioClick(Sender: TObject);
begin
  DMPesquisaConforrente.qryConcorrentesDisponiveisFilial.Close;
  DMPesquisaConforrente.qryConcorrentesVinculadosFilial.Close;
  DMPesquisaConforrente.qryConcorrentesDisponiveisCluster.Close;
  DMPesquisaConforrente.qryConcorrentesVinculadosCluster.Close;
  limparCamposIncluirConcorrente;
  pcPrincipal.ActivePage := pageMenu;
end;

procedure TFrmConcorrentes.btnVincularClusterClick(Sender: TObject);
begin
  pcPrincipal.ActivePage := tabClusterxConcorrente;
end;

procedure TFrmConcorrentes.btnVincularFilialClick(Sender: TObject);
begin
  pcPrincipal.ActivePage := tabFilialxConcorrente;
end;

procedure TFrmConcorrentes.cxButton3Click(Sender: TObject);
begin
  DMPesquisaConforrente.FinalizarPesquisa;
  Application.MessageBox('Pesquisa finalizada com sucesso!', 'Atenção', MB_ICONEXCLAMATION);
  close;
end;

procedure TFrmConcorrentes.cxConcorrenesClusterDisponiveisCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnIncluirCluster.Click;
end;

procedure TFrmConcorrentes.cxConcorrenesClusterVinculadosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnRemoverCluster.Click;
end;

procedure TFrmConcorrentes.cxConcorrentesDisponiveisCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnIncluirFilial.Click;
end;

procedure TFrmConcorrentes.cxConcorrentesVinculadosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnRemoverFilial.Click;
end;

procedure TFrmConcorrentes.limparCamposIncluirConcorrente;
begin
  edtCodConcorrente.Text := '';
  edtCnpjConcorrente.Text := '';
  edtTelefoneConcorrente.Text := '';
  edtDescricaoConcorrente.Text := '';
  edtLatitude.Text := '';
  edtLongitude.Text := '';
end;

procedure TFrmConcorrentes.FormActivate(Sender: TObject);
begin
  pcPrincipal.ActivePage:= pageMenu;
  pcPrincipal.Properties.HideTabs:= True;
end;

procedure TFrmConcorrentes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmFiltrosPrecificacao.Free;
  frmFiltrosPrecificacao := nil;
end;

function TFrmConcorrentes.validaCNPJ(cnpj: string): Boolean;
var   dig13, dig14: string;
    sm, i, r, peso: integer;
begin
  cnpj := apenasnumeros(cnpj);
  if ((cnpj = '00000000000000') or (cnpj = '11111111111111') or
      (cnpj = '22222222222222') or (cnpj = '33333333333333') or
      (cnpj = '44444444444444') or (cnpj = '55555555555555') or
      (cnpj = '66666666666666') or (cnpj = '77777777777777') or
      (cnpj = '88888888888888') or (cnpj = '99999999999999') or
      (length(cnpj) <> 14))
     then begin
            Result := false;
            exit;
          end;

  try
  { *-- Cálculo do 1o. Digito Verificador --* }
    sm := 0;
    peso := 2;
    for i := 12 downto 1 do
    begin
    // StrToInt converte o i-ésimo caractere do CNPJ em um número
      sm := sm + (StrToInt(cnpj[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig13 := '0'
    else str((11-r):1, dig13); // converte um número no respectivo caractere numérico

    { *-- Cálculo do 2o. Digito Verificador --* }
    sm := 0;
    peso := 2;
    for i := 13 downto 1 do
    begin
      sm := sm + (StrToInt(cnpj[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig14 := '0'
    else str((11-r):1, dig14);

    { Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig13 = cnpj[13]) and (dig14 = cnpj[14]))
       then Result := true
    else Result := false;
  except
    Result := false
  end;
end;

end.
