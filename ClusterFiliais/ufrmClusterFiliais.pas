unit ufrmClusterFiliais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinMetropolis,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxBarBuiltInMenu,
  cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxCurrencyEdit, cxTextEdit, cxCheckBox, cxButtonEdit, Vcl.Menus, Vcl.StdCtrls,
  cxDropDownEdit, cxGroupBox, cxRadioGroup, CampoPesquisa, cxProgressBar,
  cxGridBandedTableView, cxGridDBBandedTableView, Vcl.ExtCtrls, cxButtons,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxMaskEdit, cxCalendar, cxLabel, cxPC, uPesquisas, uLogin, uDMClusterFiliais;

type
  TfrmClusterFiliais = class(TForm)
    pcPrincipal: TcxPageControl;
    pageMenu: TcxTabSheet;
    cxGroupBox7: TcxGroupBox;
    pageIncluir: TcxTabSheet;
    pcIncluir: TcxPageControl;
    btnIncluirGrupo: TcxButton;
    edtCodGrupoFilialEditar: TCampoPesquisa;
    btnEditarGrupo: TcxButton;
    cxGroupBox6: TcxGroupBox;
    cxGroupBox9: TcxGroupBox;
    edtDescricaoCluster: TcxTextEdit;
    cxLabel3: TcxLabel;
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
    tblFiliaisIncluidasCODCAMPANHACRM: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    Panel1: TPanel;
    btnSalvar: TcxButton;
    btnVoltarInicio: TcxButton;
    edtFilialPrinc: TCampoPesquisa;
    edtCodGrupo: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    btnIncluirConcorrente: TcxButton;
    btnRemoverConcorrente: TcxButton;
    cxGridDBTableView1CODIGO: TcxGridDBColumn;
    cxGridDBTableView1CONCORRENTE: TcxGridDBColumn;
    cxGridDBTableView2CODIGO: TcxGridDBColumn;
    cxGridDBTableView2CONCORRENTE: TcxGridDBColumn;
    cxGridDBTableView2CODGRUPO: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btnIncluirGrupoClick(Sender: TObject);
    procedure btnIncluirFilialClick(Sender: TObject);
    procedure btnRemoverFilialClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure tblFiliaisDisponiveisCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tblFiliaisIncluidasCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnVoltarInicioClick(Sender: TObject);
    procedure btnEditarGrupoClick(Sender: TObject);
    procedure limpaCampos();
    procedure cofiguraCdsCluster;
    procedure FormActivate(Sender: TObject);
    procedure btnIncluirConcorrenteClick(Sender: TObject);
    procedure btnRemoverConcorrenteClick(Sender: TObject);
  private
    procedure configuraPagina;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClusterFiliais: TfrmClusterFiliais;

implementation

{$R *.dfm}

procedure TfrmClusterFiliais.btnSalvarClick(Sender: TObject);
var
  filialValida: Boolean;
begin
  if edtDescricaoCluster.Text = '' then begin
    DmLogin.MensagemInformacao('Não é possivel incluir Cluster sem uma descrição!');
    Abort
  end;

  if edtFilialPrinc.Text = '' then begin
    DmLogin.MensagemInformacao('Não é possivel incluir Cluster sem uma filial principal!');
    Abort;
  end;
  //Verifica se a filial principal foi escolhida
  filialValida := False;
  with dmClusterFiliais.cdsFiliaisIncluidas do begin
    First;
    while not Eof do begin
      if dmClusterFiliais.cdsFiliaisIncluidas.FieldByName('CODIGO').AsString = edtFilialPrinc.Text then
        filialValida := True;
      Next;
    end
  end;

  if not filialValida then begin
    DmLogin.MensagemInformacao('Não é possivel incluir Cluster sem uma filial principal valida.'+#13+
                               'Favor, selecione uma filial valida.');
    Abort;
  end;
  //Inicia transaction
  DmLogin.iniciaTransacaoBanco;
  try
    //Insere cabecalho do cluster
    with dmClusterFiliais.qrIncluirI9GrupoFilialC do begin
      Close;
      RestoreSQL;
      ParamByName('CODGRUPO').AsString        := edtCodGrupo.Text;
      ParamByName('DESCRICAO').AsString       := edtDescricaoCluster.Text;
      ParamByName('CODFUNC').AsInteger        := DmLogin.Matricula;
      ParamByName('CODFILIALPRINC').AsString  := edtFilialPrinc.Text;
      ExecSQL;
    end;
    //Deleta as filiais para incluir novamente
    with dmClusterFiliais.qrAux do begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM I9GRUPOFILIALI WHERE CODGRUPO = :CODGRUPO');
      ParamByName('CODGRUPO').AsString := edtCodGrupo.Text;
      ExecSQL;
    end;
    //Insere as filiais na tabela
    with dmClusterFiliais.qrIncluirI9GrupoFilialI do begin
      dmClusterFiliais.cdsFiliaisIncluidas.First;
      while not dmClusterFiliais.cdsFiliaisIncluidas.eof do begin
        Close;
        RestoreSQL;
        ParamByName('CODGRUPO').AsString        := edtCodGrupo.Text;
        ParamByName('CODFILIAL').AsString       := dmClusterFiliais.cdsFiliaisIncluidas.FieldByName('CODIGO').AsString;
        ExecSQL;
        dmClusterFiliais.cdsFiliaisIncluidas.Next;
      end;
    end;

    //Deleta os concorrentes para incluir novamente
    with dmClusterFiliais.qrAux do begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM I9GRUPOFILIALCONC WHERE CODGRUPO = :CODGRUPO');
      ParamByName('CODGRUPO').AsString := edtCodGrupo.Text;
      ExecSQL;
    end;

    //Insere os concorrentes na tabela
    with dmClusterFiliais.qrIncluirGrupoConcorrente do begin
      dmClusterFiliais.cdsConcorrentesIncluidos.First;
      while not dmClusterFiliais.cdsConcorrentesIncluidos.eof do begin
        Close;
        RestoreSQL;
        ParamByName('CODGRUPO').AsString        := edtCodGrupo.Text;
        ParamByName('CODCONC').AsString         := dmClusterFiliais.cdsConcorrentesIncluidosCODIGO.AsString;
        ExecSQL;
        dmClusterFiliais.cdsConcorrentesIncluidos.Next;
      end;
    end;

    DmLogin.comitarTransacaoBanco;
    DmLogin.MensagemInformacao('Cluster cadastrado com sucesso!'+#13+'Cód.Cluster: '+edtCodGrupo.Text);
    configuraPagina;
  except on E: Exception do
    begin
      DmLogin.abortaTransacaoBanco;
      DmLogin.MensagemErroAbort('Não foi possivel gravar alteração.'+#13+'Erro: '+E.Message);
    end;
  end;

end;

procedure TfrmClusterFiliais.btnVoltarInicioClick(Sender: TObject);
begin
  configuraPagina;
end;

procedure TfrmClusterFiliais.cofiguraCdsCluster;
begin
  if not DMClusterFiliais.cdsFiliaisDisponiveis.Active then
  begin
    DMClusterFiliais.cdsFiliaisDisponiveis.CreateDataSet;
    DMClusterFiliais.cdsFiliaisDisponiveis.Open;
  end
  else
  begin
    DMClusterFiliais.cdsFiliaisDisponiveis.EmptyDataSet;
  end;

  if not DMClusterFiliais.cdsFiliaisIncluidas.Active then
  begin
    DMClusterFiliais.cdsFiliaisIncluidas.CreateDataSet;
    DMClusterFiliais.cdsFiliaisIncluidas.Open;
  end
  else
  begin
    DMClusterFiliais.cdsFiliaisIncluidas.EmptyDataSet;
  end;

  if not DMClusterFiliais.cdsConcorrentesDisponiveis.Active then
  begin
    DMClusterFiliais.cdsConcorrentesDisponiveis.CreateDataSet;
    DMClusterFiliais.cdsConcorrentesDisponiveis.Open;
  end
  else
  begin
    DMClusterFiliais.cdsConcorrentesDisponiveis.EmptyDataSet;
  end;

  if not DMClusterFiliais.cdsConcorrentesIncluidos.Active then
  begin
    DMClusterFiliais.cdsConcorrentesIncluidos.CreateDataSet;
    DMClusterFiliais.cdsConcorrentesIncluidos.Open;
  end
  else
  begin
    DMClusterFiliais.cdsConcorrentesIncluidos.EmptyDataSet;
  end;

  DMClusterFiliais.qrFiliaisDisponiveis.Close;
  DMClusterFiliais.qrFiliaisDisponiveis.ParamByName('CODFUNC').AsInteger := DmLogin.Matricula;
  DMClusterFiliais.qrFiliaisDisponiveis.Open;

  DMClusterFiliais.qrFiliaisDisponiveis.First;
  while not DMClusterFiliais.qrFiliaisDisponiveis.Eof do
  begin
    DMClusterFiliais.cdsFiliaisDisponiveis.Append;
    DMClusterFiliais.cdsFiliaisDisponiveis.FieldByName('CODIGO').AsString := DMClusterFiliais.qrFiliaisDisponiveis.FieldByName('CODIGO').AsString;
    DMClusterFiliais.cdsFiliaisDisponiveis.FieldByName('RAZAOSOCIAL').AsString := DMClusterFiliais.qrFiliaisDisponiveis.FieldByName('RAZAOSOCIAL').AsString;
    DMClusterFiliais.cdsFiliaisDisponiveis.Post;
    DMClusterFiliais.qrFiliaisDisponiveis.Next;
  end;

  DmLogin.limpaParametrosQuery(DMClusterFiliais.qrConcorrentesDisponiveis);
  DMClusterFiliais.qrConcorrentesDisponiveis.Close;
  if edtCodGrupoFilialEditar.Text <> '' then
    DMClusterFiliais.qrConcorrentesDisponiveis.ParamByName('CODGRUPO').AsString := edtCodGrupoFilialEditar.Text;
  DMClusterFiliais.qrConcorrentesDisponiveis.Open;
  DMClusterFiliais.qrConcorrentesDisponiveis.First;
  while not DMClusterFiliais.qrConcorrentesDisponiveis.Eof do
  begin
    DMClusterFiliais.cdsConcorrentesDisponiveis.Append;
    DMClusterFiliais.cdsConcorrentesDisponiveis.FieldByName('CODIGO').AsString := DMClusterFiliais.qrConcorrentesDisponiveis.FieldByName('CODIGO').AsString;
    DMClusterFiliais.cdsConcorrentesDisponiveis.FieldByName('CONCORRENTE').AsString := DMClusterFiliais.qrConcorrentesDisponiveis.FieldByName('CONCORRENTE').AsString;
    DMClusterFiliais.cdsConcorrentesDisponiveis.Post;
    DMClusterFiliais.qrConcorrentesDisponiveis.Next;
  end;

  gridFiliaisDisponiveis.Enabled := true;
  gridFIliaisIncluidas.Enabled := true;
  btnIncluirFilial.Enabled := true;
  btnRemoverFilial.Enabled := true;
end;

procedure TfrmClusterFiliais.configuraPagina;
begin
  edtCodGrupoFilialEditar.Text := '';
  pcPrincipal.ActivePage := pageMenu;
  pageMenu.Visible := True;
  pageIncluir.Visible := False;
end;

procedure TfrmClusterFiliais.btnEditarGrupoClick(Sender: TObject);
begin
  limpaCampos;
  if edtCodGrupoFilialEditar.Text <> '' then begin
    //Adiciona no cds os incluidos
    DMClusterFiliais.qrFiliaisIncluidas.Close;
    DMClusterFiliais.qrFiliaisIncluidas.ParamByName('CODGRUPO').AsInteger := StrToInt(edtCodGrupoFilialEditar.Text);
    DMClusterFiliais.qrFiliaisIncluidas.Open;

    DMClusterFiliais.qrFiliaisIncluidas.First;
    while not DMClusterFiliais.qrFiliaisIncluidas.Eof do
    begin
      DMClusterFiliais.cdsFiliaisIncluidas.Append;
      DMClusterFiliais.cdsFiliaisIncluidas.FieldByName('CODIGO').AsString := DMClusterFiliais.qrFiliaisIncluidas.FieldByName('CODIGO').AsString;
      DMClusterFiliais.cdsFiliaisIncluidas.FieldByName('RAZAOSOCIAL').AsString := DMClusterFiliais.qrFiliaisIncluidas.FieldByName('RAZAOSOCIAL').AsString;
      DMClusterFiliais.cdsFiliaisIncluidas.FieldByName('CODGRUPO').AsString := DMClusterFiliais.qrFiliaisIncluidas.FieldByName('CODGRUPO').AsString;
      DMClusterFiliais.cdsFiliaisIncluidas.Post;
      DMClusterFiliais.qrFiliaisIncluidas.Next;
    end;
    //Adiciona no cds os concorrentes incluidos
    DMClusterFiliais.qrConcorrentesIncluidos.Close;
    DMClusterFiliais.qrConcorrentesIncluidos.ParamByName('CODGRUPO').AsInteger := StrToInt(edtCodGrupoFilialEditar.Text);
    DMClusterFiliais.qrConcorrentesIncluidos.Open;

    DMClusterFiliais.qrConcorrentesIncluidos.First;
    while not DMClusterFiliais.qrConcorrentesIncluidos.Eof do
    begin
      DMClusterFiliais.cdsConcorrentesIncluidos.Append;
      DMClusterFiliais.cdsConcorrentesIncluidos.FieldByName('CODIGO').AsString := DMClusterFiliais.qrConcorrentesIncluidos.FieldByName('CODIGO').AsString;
      DMClusterFiliais.cdsConcorrentesIncluidos.FieldByName('CONCORRENTE').AsString := DMClusterFiliais.qrConcorrentesIncluidos.FieldByName('CONCORRENTE').AsString;
      DMClusterFiliais.cdsConcorrentesIncluidos.FieldByName('CODGRUPO').AsString := DMClusterFiliais.qrConcorrentesIncluidos.FieldByName('CODGRUPO').AsString;
      DMClusterFiliais.cdsConcorrentesIncluidos.Post;
      DMClusterFiliais.qrConcorrentesIncluidos.Next;
    end;
    dmClusterFiliais.qrPesquisarCluster.Close;
    dmClusterFiliais.qrPesquisarCluster.ParamByName('CODGRUPO').AsString := edtCodGrupoFilialEditar.Text;
    dmClusterFiliais.qrPesquisarCluster.Open;

    edtCodGrupo.Text := dmClusterFiliais.qrPesquisarCluster.FieldByName('CODGRUPO').AsString;
    edtDescricaoCluster.Text := dmClusterFiliais.qrPesquisarCluster.FieldByName('DESCRICAO').AsString;
    edtFilialPrinc.Text := dmClusterFiliais.qrPesquisarCluster.FieldByName('CODFILIALPRINC').AsString;
    pcPrincipal.ActivePage := pageIncluir;
  end;
end;

procedure TfrmClusterFiliais.btnIncluirConcorrenteClick(Sender: TObject);
begin
  if dmClusterFiliais.qrConcorrentesDisponiveis.FieldByName('INCLUIDO').AsString = 'S' then
  begin
    Application.MessageBox('Concorrente já inserido!', 'Atenção', MB_ICONEXCLAMATION);
    abort;
  end;

  if not dmClusterFiliais.cdsConcorrentesDisponiveis.IsEmpty then
  begin
    dmClusterFiliais.cdsConcorrentesIncluidos.Append;
    dmClusterFiliais.cdsConcorrentesIncluidos.FieldByName('CODIGO').AsString := dmClusterFiliais.cdsConcorrentesDisponiveis.FieldByName('CODIGO').AsString;
    dmClusterFiliais.cdsConcorrentesIncluidos.FieldByName('CONCORRENTE').AsString := dmClusterFiliais.cdsConcorrentesDisponiveis.FieldByName('CONCORRENTE').AsString;
    dmClusterFiliais.cdsConcorrentesIncluidos.FieldByName('CODGRUPO').AsString := edtCodGrupo.Text;
    dmClusterFiliais.cdsConcorrentesIncluidos.Post;

    if not dmClusterFiliais.cdsConcorrentesIncluidos.IsEmpty then
    begin
      dmClusterFiliais.cdsConcorrentesDisponiveis.Delete;
    end;
  end;
end;

procedure TfrmClusterFiliais.btnIncluirFilialClick(Sender: TObject);
begin
  if dmClusterFiliais.qrFiliaisDisponiveis.FieldByName('INCLUIDO').AsString = 'S' then
  begin
    Application.MessageBox('Filial já inserida!', 'Atenção', MB_ICONEXCLAMATION);
    abort;
  end;

  if not dmClusterFiliais.cdsFiliaisDisponiveis.IsEmpty then
  begin
    dmClusterFiliais.cdsFiliaisIncluidas.Append;
    dmClusterFiliais.cdsFiliaisIncluidas.FieldByName('CODIGO').AsString := dmClusterFiliais.cdsFiliaisDisponiveis.FieldByName('CODIGO').AsString;
    dmClusterFiliais.cdsFiliaisIncluidas.FieldByName('RAZAOSOCIAL').AsString := dmClusterFiliais.cdsFiliaisDisponiveis.FieldByName('RAZAOSOCIAL').AsString;
    dmClusterFiliais.cdsFiliaisIncluidas.FieldByName('CODGRUPO').AsString := edtCodGrupo.Text;
    dmClusterFiliais.cdsFiliaisIncluidas.Post;

    if not dmClusterFiliais.cdsFiliaisIncluidas.IsEmpty then
    begin
      dmClusterFiliais.cdsFiliaisDisponiveis.Delete;
    end;
  end;
end;

procedure TfrmClusterFiliais.btnIncluirGrupoClick(Sender: TObject);
begin
  limpaCampos;
  edtCodGrupo.Text := IntToStr(dmClusterFiliais.getProxCodCluster);
  pcPrincipal.ActivePage := pageIncluir;
  pageIncluir.Visible := True;
end;

procedure TfrmClusterFiliais.btnRemoverConcorrenteClick(Sender: TObject);
begin
if not dmClusterFiliais.cdsConcorrentesIncluidos.IsEmpty then
  begin
    dmClusterFiliais.cdsConcorrentesDisponiveis.Append;
    dmClusterFiliais.cdsConcorrentesDisponiveis.FieldByName('CODIGO').AsString := dmClusterFiliais.cdsConcorrentesIncluidos.FieldByName('CODIGO').AsString;
    dmClusterFiliais.cdsConcorrentesDisponiveis.FieldByName('CONCORRENTE').AsString := dmClusterFiliais.cdsConcorrentesIncluidos.FieldByName('CONCORRENTE').AsString;
    dmClusterFiliais.cdsConcorrentesDisponiveis.Post;
    dmClusterFiliais.cdsConcorrentesIncluidos.Delete;
  end;
end;

procedure TfrmClusterFiliais.btnRemoverFilialClick(Sender: TObject);
begin
 if not dmClusterFiliais.cdsFiliaisIncluidas.IsEmpty then
  begin
    dmClusterFiliais.cdsFiliaisDisponiveis.Append;
    dmClusterFiliais.cdsFiliaisDisponiveis.FieldByName('CODIGO').AsString := dmClusterFiliais.cdsFiliaisIncluidas.FieldByName('CODIGO').AsString;
    dmClusterFiliais.cdsFiliaisDisponiveis.FieldByName('RAZAOSOCIAL').AsString := dmClusterFiliais.cdsFiliaisIncluidas.FieldByName('RAZAOSOCIAL').AsString;
    dmClusterFiliais.cdsFiliaisDisponiveis.Post;
    dmClusterFiliais.cdsFiliaisIncluidas.Delete;
  end;
end;

procedure TfrmClusterFiliais.FormActivate(Sender: TObject);
begin
  pcPrincipal.Properties.HideTabs := True;
end;

procedure TfrmClusterFiliais.FormShow(Sender: TObject);
begin
  btnEditarGrupo.Enabled := DmLogin.validaPermissao530(40);
  configuraPagina;
  cofiguraCdsCluster;
end;

procedure TfrmClusterFiliais.limpaCampos;
begin
  edtFilialPrinc.Text := '';
  edtDescricaoCluster.Text := '';
  edtCodGrupo.Text := '';
  cofiguraCdsCluster;
end;

procedure TfrmClusterFiliais.tblFiliaisDisponiveisCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnIncluirFilial.click;
end;

procedure TfrmClusterFiliais.tblFiliaisIncluidasCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnRemoverFilial.Click;
end;

end.
