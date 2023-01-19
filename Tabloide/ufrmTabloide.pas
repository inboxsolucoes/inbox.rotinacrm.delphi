unit ufrmTabloide;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore,dxBarBuiltInMenu, Vcl.Menus,
  cxContainer, cxEdit, cxLabel, Vcl.StdCtrls, cxButtons, cxPC, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, cxGroupBox, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxCalendar, cxCheckBox, cxSpinEdit, cxTimeEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, cxButtonEdit,
  System.Actions, Vcl.ActnList, CampoPesquisa, cxCurrencyEdit, DatasPadroes,
  dxSkinMetropolis, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  dxSkinMetropolisDark, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2013White, dxSkinOffice2016Dark;

type
  TfrmTabloide = class(TForm)
    pcPrincipal: TcxPageControl;
    pageMenu: TcxTabSheet;
    pageIncluir: TcxTabSheet;
    pcIncluir: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    actListListas: TActionList;
    actInserir: TAction;
    actRemover: TAction;
    cxGroupBox7: TcxGroupBox;
    btnIncluirOferta: TcxButton;
    actPesquisar: TAction;
    cxLabel4: TcxLabel;
    edtCodigoLista: TcxTextEdit;
    cxLabel5: TcxLabel;
    edtDescricaoLista: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    edtListaPrecificacao: TCampoPesquisa;
    btnEditarLista: TcxButton;
    actEditarLista: TAction;
    actIncluirLista: TAction;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    DatasPadroes1: TDatasPadroes;
    dtInicial: TcxDateEdit;
    dtFinal: TcxDateEdit;
    cxGroupBox13: TcxGroupBox;
    gridFiliaisDisponiveis: TcxGrid;
    tblFiliaisDisponiveis: TcxGridDBTableView;
    tblFiliaisDisponiveisCODIGO: TcxGridDBColumn;
    tblFiliaisDisponiveisRAZAOSOCIAL: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxGroupBox15: TcxGroupBox;
    gridFIliaisIncluidas: TcxGrid;
    tblFiliaisIncluidas: TcxGridDBTableView;
    tblFiliaisIncluidasCODIGO: TcxGridDBColumn;
    tblFiliaisIncluidasRAZAOSOCIAL: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    btnIncluirFilial: TcxButton;
    btnRemoverFilial: TcxButton;

    procedure FormActivate(Sender: TObject);
    procedure btnGravarOfertaClick(Sender: TObject);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actIncluirListaExecute(Sender: TObject);
    procedure actEditarListaExecute(Sender: TObject);
    procedure btnIncluirFilialClick(Sender: TObject);
    procedure btnRemoverFilialClick(Sender: TObject);
  private
    { Private declarations }
    procedure CarregarListaPrecificacao(codLista:Integer);
    procedure configuraQuerysPadrao;
    procedure IniciarFiliais;

  public
    { Public declarations }
  end;

var
  frmTabloide: TfrmTabloide;
  vbEditando : Boolean;

implementation

uses
  uDMTabloide, uPesquisas, uLogin, ufrmFiltrosPrecificacao;

{$R *.dfm}



procedure TfrmTabloide.actEditarListaExecute(Sender: TObject);
var
  listaFiliais: TStringList;
  I: Integer;
begin

  IniciarFiliais;

  listaFiliais := TStringList.Create;

  if edtListaPrecificacao.Text <> '' then
  begin

    DMTabloide.qrPesquisaTabloide.Close;
    DMTabloide.qrPesquisaTabloide.ParamByName('CODTABLOIDE').AsString := edtListaPrecificacao.Text;
    DMTabloide.qrPesquisaTabloide.Open;

    if not DMTabloide.qrPesquisaTabloide.IsEmpty then
    begin
      edtCodigoLista.Text := DMTabloide.qrPesquisaTabloide.FieldByName('CODTABLOIDE').AsString;
      edtDescricaoLista.Text := DMTabloide.qrPesquisaTabloide.FieldByName('DESCRICAO').AsString;
      dtInicial.Date := DMTabloide.qrPesquisaTabloide.FieldByName('DTINICIAL').AsDateTime;
      dtFinal.Date := DMTabloide.qrPesquisaTabloide.FieldByName('DTFINAL').AsDateTime;

      DmLogin.Split(',', DMTabloide.qrPesquisaTabloide.FieldByName('CODFILIAL').AsString, listaFiliais) ;

      for I := 0 to (listaFiliais.Count -1) do
      begin
        if Trim(listaFiliais[i]) <> '' then
        begin
          DMTabloide.cdsFiliaisDisponiveis.Locate('CODIGO', listaFiliais[i], []);
          btnIncluirFilial.Click;
        end;
      end;


      pcPrincipal.ActivePage := pageIncluir;
      vbEditando := True;
    end;

  end;
end;

procedure TfrmTabloide.actIncluirListaExecute(Sender: TObject);
begin
  IniciarFiliais;
  pcPrincipal.ActivePage := pageIncluir;
  edtCodigoLista.Text := FloatToStr(DMTabloide.getProxCodTabloide);
  vbEditando := False;
end;

procedure TfrmTabloide.actPesquisarExecute(Sender: TObject);
begin
  try
    if frmFiltrosPrecificacao = nil then
      frmFiltrosPrecificacao := TfrmFiltrosPrecificacao.Create(Application, DMTabloide.qrPesquisaProdutos);

    frmFiltrosPrecificacao.ShowModal;
  finally
  end;
end;

procedure TfrmTabloide.btnGravarOfertaClick(Sender: TObject);
var
  strCodfilial:string;
begin
  if edtCodigoLista.Text = '' then
    dmLogin.MensagemErroAbort('Código de lista inválido!');

  if edtDescricaoLista.Text = '' then
    DmLogin.MensagemErroAbort('Descrição de lista inválida!');

  if (dtInicial.Text = '') or (dtFinal.Text = '') then
    DmLogin.MensagemErroAbort('Data inicial ou final inválida!');

  if DMTabloide.cdsFiliaisIncluidas.IsEmpty then
    DmLogin.MensagemErroAbort('É necessário selecionar uma filial!');


  DMTabloide.cdsFiliaisIncluidas.First;
  while not DMTabloide.cdsFiliaisIncluidas.Eof do
  begin
    if strCodfilial = '' then
      strCodfilial :=  DMTabloide.cdsFiliaisIncluidasCODIGO.AsString
    else
      strCodfilial :=  strCodfilial + ',' + DMTabloide.cdsFiliaisIncluidasCODIGO.AsString;

    DMTabloide.cdsFiliaisIncluidas.Next;
  end;

  with dmTabloide.qrInsereTabloide do
  begin
    Close;
    ParamByName('CODTABLOIDE').AsString := edtCodigoLista.Text;
    ParamByName('DESCRICAO').AsString := edtDescricaoLista.Text;
    ParamByName('DTINICIAL').AsDate := dtInicial.Date;
    ParamByName('DTFINAL').AsDate := dtFinal.Date;
    ParamByName('CODFUNCCADASTRO').AsInteger := DmLogin.Matricula;
    ParamByName('CODFILIAL').AsString := strCodfilial;
    Execute;
  end;


  //Inserir uma oferta para cada tabloide
  DMTabloide.cdsFiliaisIncluidas.First;
  while not DMTabloide.cdsFiliaisIncluidas.Eof do
  begin

    with dmTabloide.qrInserirOferta do
    begin
      Close;
      ParamByName('CODTABLOIDE').AsString := edtCodigoLista.Text;
      ParamByName('DESCRICAO').AsString := 'OFERTA FILIAL: ' + DMTabloide.cdsFiliaisIncluidasCODIGO.AsString + ' - TABLOIDE: ' +  edtCodigoLista.Text + ' ('+dtInicial.Text+' a '+dtFinal.Text+')';
      ParamByName('DTINICIAL').AsDate := dtInicial.Date;
      ParamByName('DTFINAL').AsDate := dtFinal.Date;
      ParamByName('CODFUNCCADASTRO').AsInteger := DmLogin.Matricula;
      ParamByName('CODFILIAL').AsString := DMTabloide.cdsFiliaisIncluidasCODIGO.AsString;
      Execute;
    end;

    DMTabloide.cdsFiliaisIncluidas.Next;
  end;


  dmLogin.comitarTransacaoBanco;

  dmLogin.MensagemInformacao('Tablóide gravado com sucesso!');
  Close;

end;

procedure TfrmTabloide.btnIncluirFilialClick(Sender: TObject);
begin
   if DMTabloide.qrFiliaisDisponiveis.FieldByName('INCLUIDO').AsString = 'S' then begin
      Application.MessageBox('Filial já inserida!', 'Atenção', MB_ICONEXCLAMATION);
      abort;
    end;


    if not DMTabloide.cdsFiliaisDisponiveis.IsEmpty then
    begin
      DMTabloide.cdsFiliaisIncluidas.Append;
      DMTabloide.cdsFiliaisIncluidas.FieldByName('CODIGO').AsString := DMTabloide.cdsFiliaisDisponiveis.FieldByName('CODIGO').AsString;
      DMTabloide.cdsFiliaisIncluidas.FieldByName('RAZAOSOCIAL').AsString:= DMTabloide.cdsFiliaisDisponiveis.FieldByName('RAZAOSOCIAL').AsString;
      DMTabloide.cdsFiliaisIncluidas.Post;

      if not DMTabloide.cdsFiliaisIncluidas.IsEmpty then
      begin
        DMTabloide.cdsFiliaisDisponiveis.Delete;
      end;
    end;
end;

procedure TfrmTabloide.btnRemoverFilialClick(Sender: TObject);
begin
  if vbEditando and (not DmLogin.MensagemPergunta('Ao remover uma filial do tabloide, todas as ofertas vinculadas a filial/tabloide serão canceladas, deseja continuar?.')) then
  begin
    Exit;
  end;

  if vbEditando then
  begin
    if not DmLogin.Conexao.InTransaction then
      DmLogin.Conexao.StartTransaction;

    DMTabloide.qrCancelaOferta.Close;
    DMTabloide.qrCancelaOferta.ParamByName('CODFILIAL').AsString := DMTabloide.cdsFiliaisIncluidas.FieldByName('CODIGO').AsString;
    DMTabloide.qrCancelaOferta.ParamByName('CODTABLOIDE').AsString := edtCodigoLista.Text;
    DMTabloide.qrCancelaOferta.Execute;
  end;


  if not DMTabloide.cdsFiliaisIncluidas.IsEmpty then
  begin
    DMTabloide.cdsFiliaisDisponiveis.Append;
    DMTabloide.cdsFiliaisDisponiveis.FieldByName('CODIGO').AsString:= DMTabloide.cdsFiliaisIncluidas.FieldByName('CODIGO').AsString;
    DMTabloide.cdsFiliaisDisponiveis.FieldByName('RAZAOSOCIAL').AsString:= DMTabloide.cdsFiliaisIncluidas.FieldByName('RAZAOSOCIAL').AsString;
    DMTabloide.cdsFiliaisDisponiveis.Post;
    DMTabloide.cdsFiliaisIncluidas.Delete;
  end;
end;

procedure TfrmTabloide.CarregarListaPrecificacao(codLista: Integer);
begin



end;

procedure TfrmTabloide.configuraQuerysPadrao;
begin
  //Abre query padrão
  DMTabloide.qrFiliais.Close;
  DMTabloide.qrFiliais.Open;
end;

procedure TfrmTabloide.cxGridDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  recno : Integer;
begin

end;

procedure TfrmTabloide.FormActivate(Sender: TObject);
begin
  //Configura tela da rotina
  pcPrincipal.HideTabs:= true;
  pcPrincipal.ActivePage:= pageMenu;
  configuraQuerysPadrao;

  edtListaPrecificacao.SetFocus;
end;

procedure TfrmTabloide.IniciarFiliais;
begin
  if not DMTabloide.cdsFiliaisDisponiveis.Active then
  begin
     DMTabloide.cdsFiliaisDisponiveis.CreateDataSet;
     DMTabloide.cdsFiliaisDisponiveis.Open;
  end
  else
  begin
    DMTabloide.cdsFiliaisDisponiveis.EmptyDataSet;
  end;


  if not DMTabloide.cdsFiliaisIncluidas.Active then
  begin
     DMTabloide.cdsFiliaisIncluidas.CreateDataSet;
     DMTabloide.cdsFiliaisIncluidas.Open;
  end
  else
  begin
     DMTabloide.cdsFiliaisIncluidas.EmptyDataSet;
  end;

  DMTabloide.qrFiliaisDisponiveis.Close;
  DMTabloide.qrFiliaisDisponiveis.ParamByName('CODFUNC').AsInteger := DmLogin.Matricula;
  DMTabloide.qrFiliaisDisponiveis.Open;

  DMTabloide.qrFiliaisDisponiveis.First;
  while not DMTabloide.qrFiliaisDisponiveis.Eof do
  begin
    DMTabloide.cdsFiliaisDisponiveis.Append;
    DMTabloide.cdsFiliaisDisponiveis.FieldByName('CODIGO').AsString := DMTabloide.qrFiliaisDisponiveis.FieldByName('CODIGO').AsString;
    DMTabloide.cdsFiliaisDisponiveis.FieldByName('RAZAOSOCIAL').AsString := DMTabloide.qrFiliaisDisponiveis.FieldByName('RAZAOSOCIAL').AsString;
    DMTabloide.cdsFiliaisDisponiveis.Post;
    DMTabloide.qrFiliaisDisponiveis.Next;
  end;
end;

end.
