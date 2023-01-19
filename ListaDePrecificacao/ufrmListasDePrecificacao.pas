unit ufrmListasDePrecificacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters,dxBarBuiltInMenu, Vcl.Menus,
  cxContainer, cxEdit, cxLabel, Vcl.StdCtrls, cxButtons, cxPC, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, cxGroupBox, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxCalendar, cxCheckBox, cxSpinEdit, cxTimeEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, cxButtonEdit,
  System.Actions, Vcl.ActnList, CampoPesquisa, cxCurrencyEdit, dxSkinsCore,
  dxSkinMetropolis, dxSkinVisualStudio2013Light, dxSkinscxPCPainter;

type
  TfrmListasDePrecificacao = class(TForm)
    pcPrincipal: TcxPageControl;
    pageMenu: TcxTabSheet;
    pageIncluir: TcxTabSheet;
    pcIncluir: TcxPageControl;
    pageConfiguraOferta: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    pnl1: TPanel;
    cxGroupBox5: TcxGroupBox;
    cxGrid2: TcxGrid;
    tblListados: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    btnInserir: TcxButton;
    btnRemover: TcxButton;
    tblListadosDESCRICAO: TcxGridDBColumn;
    tblListadosCODPROD: TcxGridDBColumn;
    actListListas: TActionList;
    actInserir: TAction;
    actRemover: TAction;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGroupBox7: TcxGroupBox;
    btnIncluirOferta: TcxButton;
    tblListadosCODAUXILIAR: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridViewRepository1: TcxGridViewRepository;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleReadOnly: TcxStyle;
    cxStyleEditavel: TcxStyle;
    btnFiltrarProdutos: TcxButton;
    cxGridDBTableView1CODPROD: TcxGridDBColumn;
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

    procedure FormActivate(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure actInserirExecute(Sender: TObject);
    procedure btnGravarOfertaClick(Sender: TObject);
    procedure tblListadosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tblListadosCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actIncluirListaExecute(Sender: TObject);
    procedure actEditarListaExecute(Sender: TObject);
    procedure actRemoverExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure CarregarListaPrecificacao(codLista:Integer);
    procedure configuraQuerysPadrao;

  public
    { Public declarations }
  end;

var
  frmListasDePrecificacao: TfrmListasDePrecificacao;

implementation

uses
  uDMListasDePrecificacao, uPesquisas, uLogin, ufrmFiltrosPrecificacao;

{$R *.dfm}



procedure TfrmListasDePrecificacao.actEditarListaExecute(Sender: TObject);
begin
  if edtListaPrecificacao.Text <> '' then
  begin
    CarregarListaPrecificacao(StrToInt(edtListaPrecificacao.Text));
    pcPrincipal.ActivePage := pageIncluir;
  end;
end;

procedure TfrmListasDePrecificacao.actIncluirListaExecute(Sender: TObject);
begin
  pcPrincipal.ActivePage := pageIncluir;
  edtCodigoLista.Text := FloatToStr(DMListasDePrecificacao.getProxCodLista);
end;

procedure TfrmListasDePrecificacao.actInserirExecute(Sender: TObject);
begin
  if DMListasDePrecificacao.cdsListaProdutosInseridos.Locate('CODAUXILIAR', DMListasDePrecificacao.qrPesquisaProdutos.FieldByName('CODAUXILIAR').AsInteger, []) then begin
    Application.MessageBox('O item ja está na lista de produtos!', 'Atenção', MB_ICONEXCLAMATION);
    Abort;
  end
  else
  begin
    DMListasDePrecificacao.inserirItemLista(DMListasDePrecificacao.qrPesquisaProdutos.FieldByName('CODPROD').AsInteger,
                                              DMListasDePrecificacao.qrPesquisaProdutos.FieldByName('CODAUXILIAR').AsString,
                                                 DMListasDePrecificacao.qrPesquisaProdutos.FieldByName('DESCRICAO').AsString);
  end;

end;

procedure TfrmListasDePrecificacao.actPesquisarExecute(Sender: TObject);
begin
  try
    if frmFiltrosPrecificacao = nil then
      frmFiltrosPrecificacao := TfrmFiltrosPrecificacao.Create(Application, DMListasDePrecificacao.qrPesquisaProdutos);

    frmFiltrosPrecificacao.ShowModal;
  finally
  end;
end;

procedure TfrmListasDePrecificacao.actRemoverExecute(Sender: TObject);
begin
 if not DMListasDePrecificacao.cdsListaProdutosInseridos.IsEmpty then
    DMListasDePrecificacao.cdsListaProdutosInseridos.Delete;
end;

procedure TfrmListasDePrecificacao.btnGravarOfertaClick(Sender: TObject);
begin
  if edtCodigoLista.Text = '' then
    dmLogin.MensagemErroAbort('Código de lista inválido!');

  if edtDescricaoLista.Text = '' then
    DmLogin.MensagemErroAbort('Descrição de lista inválida');

  DMListasDePrecificacao.removelista(StrToInt(edtCodigoLista.Text));

  DMListasDePrecificacao.insereLista(DmLogin.Matricula,
                        StrToInt(edtCodigoLista.Text),
                        edtDescricaoLista.Text);

  dmLogin.MensagemInformacao('Lista gravada com sucesso!');
  Close;

end;

procedure TfrmListasDePrecificacao.CarregarListaPrecificacao(codLista: Integer);
begin

  DMListasDePrecificacao.qrPesquisaLista.Close;
  DMListasDePrecificacao.qrPesquisaLista.ParamByName('CODLISTA').AsInteger := codLista;
  DMListasDePrecificacao.qrPesquisaLista.Open;

  if not DMListasDePrecificacao.qrPesquisaLista.IsEmpty then
  begin
    edtCodigoLista.Text := DMListasDePrecificacao.qrPesquisaLista.FieldByName('CODLISTA').AsString;
    edtDescricaoLista.Text := DMListasDePrecificacao.qrPesquisaLista.FieldByName('DESCRICAOLISTA').AsString;

    while not DMListasDePrecificacao.qrPesquisaLista.Eof do
    begin

     DMListasDePrecificacao.inserirItemLista(DMListasDePrecificacao.qrPesquisaLista.FieldByName('CODPROD').AsInteger,
                                              DMListasDePrecificacao.qrPesquisaLista.FieldByName('CODAUXILIAR').AsString,
                                                 DMListasDePrecificacao.qrPesquisaLista.FieldByName('DESCRICAOPROD').AsString);

      DMListasDePrecificacao.qrPesquisaLista.Next;
    end;

  end;

end;

procedure TfrmListasDePrecificacao.configuraQuerysPadrao;
begin
  //Abre query padrão
  DMListasDePrecificacao.qrFiliais.Close;
  DMListasDePrecificacao.qrFiliais.Open;
  //configura cds
  DMListasDePrecificacao.cdsListaProdutosInseridos.Close;
  DMListasDePrecificacao.cdsListaProdutosInseridos.CreateDataSet;
  DMListasDePrecificacao.cdsListaProdutosInseridos.Open;
end;

procedure TfrmListasDePrecificacao.cxButton6Click(Sender: TObject);
begin
  DMListasDePrecificacao.qrPesquisaProdutos.Close;
  DMListasDePrecificacao.qrPesquisaProdutos.ParamByName('CODFILIAL').AsString:= DMListasDePrecificacao.qrFiliais.FieldByName('CODFILIAL').AsString;
  DMListasDePrecificacao.qrPesquisaProdutos.Open;
  pcIncluir.ActivePage:= pageConfiguraOferta;
end;

procedure TfrmListasDePrecificacao.cxGridDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  recno : Integer;
begin
  recno:= DMListasDePrecificacao.cdsListaProdutosInseridos.RecNo;
  DMListasDePrecificacao.qrPesquisaProdutos.locate('CODAUXILIAR',
                                     DMListasDePrecificacao.cdsListaProdutosInseridos.FieldByName('CODAUXILIAR').AsFloat,
                                     [LoPartialKey,LoCaseInsensitive]);
  DMListasDePrecificacao.cdsListaProdutosInseridos.RecNo:= recno;
end;

procedure TfrmListasDePrecificacao.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 if not DMListasDePrecificacao.cdsListaProdutosInseridos.IsEmpty then
    DMListasDePrecificacao.cdsListaProdutosInseridos.Delete;
end;

procedure TfrmListasDePrecificacao.FormActivate(Sender: TObject);
begin
  //Configura tela da rotina
  pcPrincipal.HideTabs:= true;
  pcPrincipal.ActivePage:= pageMenu;
  configuraQuerysPadrao;

  edtListaPrecificacao.SetFocus;
end;

procedure TfrmListasDePrecificacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmFiltrosPrecificacao.Free;
  frmFiltrosPrecificacao := nil;
end;

procedure TfrmListasDePrecificacao.tblListadosCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnInserir.Click;
end;

procedure TfrmListasDePrecificacao.tblListadosCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if not DMListasDePrecificacao.cdsListaProdutosInseridos.IsEmpty then begin
    if DMListasDePrecificacao.cdsListaProdutosInseridos.Locate('CODAUXILIAR',
                                                  AViewInfo.GridRecord.Values[tblListados.GetColumnByFieldName('CODAUXILIAR').Index],
                                                  []
                                                  )
    then begin
      ACanvas.Font.Color := clWhite;
      ACanvas.Brush.Color := clGreen;
    end;
  end;
end;

end.
