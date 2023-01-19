unit ufrmCadastroMargens;

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
  cxClasses, cxGridCustomView, cxGrid, cxMaskEdit, cxCalendar, cxLabel, cxPC, uPesquisas, uLogin, uDMCadastroMargens, Uni;

type
  TfrmCadastroMargens = class(TForm)
    pcPrincipal: TcxPageControl;
    pageIncluir: TcxTabSheet;
    pcIncluir: TcxPageControl;
    cxGroupBox6: TcxGroupBox;
    pcEditar: TcxPageControl;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    psqFilial: TCampoPesquisa;
    psqDepartamento: TCampoPesquisa;
    psqProduto: TCampoPesquisa;
    psqSubCategoria: TCampoPesquisa;
    psqCategoria: TCampoPesquisa;
    psqSecao: TCampoPesquisa;
    psqCodClassific: TcxTextEdit;
    cxLabel2: TcxLabel;
    btnPesquisar: TcxButton;
    cbPesquisarAteInformado: TcxCheckBox;
    cxGridDBTableView1CODSUBCATEGORIA: TcxGridDBColumn;
    cxGridDBTableView1DESCRICAOSUBCATEGORIA: TcxGridDBColumn;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    edtMargemGarantida: TcxCurrencyEdit;
    btnAplicarTodos: TcxButton;
    btnRemoverTodos: TcxButton;
    cbMargemGarantida: TcxCheckBox;
    cmbCompMargemGarantida: TcxComboBox;
    edtCompMargemGarantida: TcxCurrencyEdit;
    procedure FormActivate(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnAplicarTodosClick(Sender: TObject);
    procedure btnRemoverTodosClick(Sender: TObject);
    procedure cbMargemGarantidaClick(Sender: TObject);
  private
    vEditando : Boolean;
    procedure SalvarMargem;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroMargens: TfrmCadastroMargens;

implementation

{$R *.dfm}

procedure TfrmCadastroMargens.btnPesquisarClick(Sender: TObject);
begin
  dmCadastroMargens.qrPesquisarMargens.Close;
  dmCadastroMargens.qrPesquisarMargens.RestoreSQL;

  if psqCodClassific.Text <> '' then
  begin
    dmCadastroMargens.qrPesquisarMargens.AddWhere('CODCLASSIFICMERC = :CODCLASSIFICMERC');
    dmCadastroMargens.qrPesquisarMargens.ParamByName('CODCLASSIFICMERC').AsString := psqCodClassific.Text;
  end;

  if psqFilial.Text <> '' then
  begin
    dmCadastroMargens.qrPesquisarMargens.AddWhere('CODFILIAL = :CODFILIAL');
    dmCadastroMargens.qrPesquisarMargens.ParamByName('CODFILIAL').AsString := psqFilial.Text;
  end;

  if psqDepartamento.Text <> '' then
  begin
    dmCadastroMargens.qrPesquisarMargens.AddWhere('CODDEPTO = :CODDEPTO');
    dmCadastroMargens.qrPesquisarMargens.ParamByName('CODDEPTO').AsString := psqDepartamento.Text;

    if cbPesquisarAteInformado.Checked then
    begin
        dmCadastroMargens.qrPesquisarMargens.AddWhere('CODSEC IS NULL');
    end;

  end;

  if psqSecao.Text <> '' then
  begin
    dmCadastroMargens.qrPesquisarMargens.AddWhere('CODSEC = :CODSEC');
    dmCadastroMargens.qrPesquisarMargens.ParamByName('CODSEC').AsString := psqSecao.Text;

    if cbPesquisarAteInformado.Checked then
    begin
        dmCadastroMargens.qrPesquisarMargens.AddWhere('CODCATEGORIA IS NULL');
    end;

  end;

  if psqCategoria.Text <> '' then
  begin
    dmCadastroMargens.qrPesquisarMargens.AddWhere('CODCATEGORIA = :CODCATEGORIA');
    dmCadastroMargens.qrPesquisarMargens.ParamByName('CODCATEGORIA').AsString := psqCategoria.Text;

    if cbPesquisarAteInformado.Checked then
    begin
        dmCadastroMargens.qrPesquisarMargens.AddWhere('CODSUBCATEGORIA IS NULL');
    end;

  end;

  if psqSubCategoria.Text <> '' then
  begin
    dmCadastroMargens.qrPesquisarMargens.AddWhere('CODSUBCATEGORIA = :CODSUBCATEGORIA');
    dmCadastroMargens.qrPesquisarMargens.ParamByName('CODSUBCATEGORIA').AsString := psqSubCategoria.Text;

    if cbPesquisarAteInformado.Checked then
    begin
        dmCadastroMargens.qrPesquisarMargens.AddWhere('CODPROD IS NULL');
    end;

  end;


  if psqProduto.Text <> '' then
  begin
    dmCadastroMargens.qrPesquisarMargens.AddWhere('CODPROD = :CODPROD');
    dmCadastroMargens.qrPesquisarMargens.ParamByName('CODPROD').AsString := psqProduto.Text;
  end;

  if cbMargemGarantida.Checked and (edtCompMargemGarantida.Text <> '') then
  begin
    dmCadastroMargens.qrPesquisarMargens.AddWhere('NVL(MARGEMGARANTIDA,0) ' + cmbCompMargemGarantida.Text + ' ' + FloatToStr(edtCompMargemGarantida.Value));
  end;

  dmCadastroMargens.qrPesquisarMargens.Open;


end;

procedure TfrmCadastroMargens.btnRemoverTodosClick(Sender: TObject);
begin
   if not DmLogin.MensagemPergunta('Tem certeza que deseja remover o % de margem, a todas as condições da grid?') then
    Exit;

  try
    Screen.Cursor := crSQLWait;

    dmCadastroMargens.qrPesquisarMargens.DisableControls;
    dmCadastroMargens.qrPesquisarMargens.First;

    while not dmCadastroMargens.qrPesquisarMargens.Eof do
    begin
      dmCadastroMargens.qrPesquisarMargens.Edit;
      dmCadastroMargens.qrPesquisarMargensMARGEMGARANTIDA.AsString := '';
      dmCadastroMargens.qrPesquisarMargens.Post;
      dmCadastroMargens.qrPesquisarMargens.Next;
    end;

    DmLogin.MensagemInformacao('Realizado com sucesso!');

  finally
    Screen.Cursor := crDefault;
    dmCadastroMargens.qrPesquisarMargens.EnableControls;
  end;

end;

procedure TfrmCadastroMargens.cbMargemGarantidaClick(Sender: TObject);
begin
  cmbCompMargemGarantida.Enabled := cbMargemGarantida.Checked;
  edtCompMargemGarantida.Enabled := cbMargemGarantida.Checked;
end;

procedure TfrmCadastroMargens.btnAplicarTodosClick(Sender: TObject);
begin
  if dmCadastroMargens.qrPesquisarMargens.IsEmpty then
    Exit;

  if edtMargemGarantida.Value <= 0 then
  begin
    DmLogin.MensagemErroAbort('É necessário informar uma margem maior que zero.');
  end;

  if not DmLogin.MensagemPergunta('Tem certeza que deseja aplicar '+FloatToStr(edtMargemGarantida.Value)+ '% de margem, a todas as condições da grid?') then
    Exit;

  try
    Screen.Cursor := crSQLWait;

    dmCadastroMargens.qrPesquisarMargens.DisableControls;
    dmCadastroMargens.qrPesquisarMargens.First;

    while not dmCadastroMargens.qrPesquisarMargens.Eof do
    begin
      dmCadastroMargens.qrPesquisarMargens.Edit;
      dmCadastroMargens.qrPesquisarMargensMARGEMGARANTIDA.AsFloat := edtMargemGarantida.Value;
      dmCadastroMargens.qrPesquisarMargens.Post;
      dmCadastroMargens.qrPesquisarMargens.Next;
    end;

    DmLogin.MensagemInformacao('Realizado com sucesso!');

  finally
    Screen.Cursor := crDefault;
    dmCadastroMargens.qrPesquisarMargens.EnableControls;
  end;
end;

procedure TfrmCadastroMargens.FormActivate(Sender: TObject);
begin
  pcPrincipal.Properties.HideTabs := True;
end;

procedure TfrmCadastroMargens.SalvarMargem;
begin

end;

end.
