unit ufrmRelatorioAlteracoes;

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
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DBAccess, Uni, MemDS,
  dxSkinMetropolis, dxSkinVisualStudio2013Light, dxSkinscxPCPainter;

type
  TfrmRelatorioAlteracoes = class(TForm)
    pcPrincipal: TcxPageControl;
    pageMenu: TcxTabSheet;
    cxGroupBox7: TcxGroupBox;
    dtInicial: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    dtFinal: TcxDateEdit;
    edtProduto: TCampoPesquisa;
    edtFilial: TCampoPesquisa;
    cxGroupBox1: TcxGroupBox;
    cbPrecoFuturo: TcxCheckBox;
    cbPrecoVenda: TcxCheckBox;
    cbCustoFinanceiro: TcxCheckBox;
    cbMargemIdeal: TcxCheckBox;
    cbMargemMinima: TcxCheckBox;
    cbQtMinAtacado: TcxCheckBox;
    btnEmitirRelatorio: TcxButton;
    cbPrecoFuturoAtacado: TcxCheckBox;
    cbPrecoVendaAtacado: TcxCheckBox;
    DatasPadroes1: TDatasPadroes;
    cbVlVerba: TcxCheckBox;
    edtCodOferta: TcxTextEdit;
    cxLabel3: TcxLabel;
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnEmitirRelatorioClick(Sender: TObject);
  private
    { Private declarations }
    procedure CarregarListaPrecificacao(codLista:Integer);
    procedure configuraQuerysPadrao;

  public
    { Public declarations }
  end;

var
  frmRelatorioAlteracoes: TfrmRelatorioAlteracoes;

implementation

uses
  uDMRelatorioAlteracoes, uPesquisas, uLogin, ufrmFiltrosPrecificacao;

{$R *.dfm}



procedure TfrmRelatorioAlteracoes.btnEmitirRelatorioClick(Sender: TObject);
begin
  DMlOGIN.limpaParametrosQuery(DMRelatorioAlteracoes.qrRelatorioAlteracoes);
  DMRelatorioAlteracoes.qrRelatorioAlteracoes.Close;
  DMRelatorioAlteracoes.qrRelatorioAlteracoes.SQL.Clear;

  DMRelatorioAlteracoes.qrRelatorioAlteracoes.SQL.Add('  SELECT PCPRODUT.DESCRICAO, I9LOGALTERACAO.*       ');
  DMRelatorioAlteracoes.qrRelatorioAlteracoes.SQL.Add(' FROM I9LOGALTERACAO, PCPRODUT                       ');
  DMRelatorioAlteracoes.qrRelatorioAlteracoes.SQL.Add(' WHERE I9LOGALTERACAO.CODPROD = PCPRODUT.CODPROD     ');


  if (dtInicial.Text <> '') and (dtFinal.Text <> '') then
  begin
    DMRelatorioAlteracoes.qrRelatorioAlteracoes.SQL.Add('AND TRUNC(I9LOGALTERACAO.DATA) BETWEEN :DTINICIAL AND :DTFINAL');
    DMRelatorioAlteracoes.qrRelatorioAlteracoes.ParamByName('DTINICIAL').AsDate := dtInicial.Date;
    DMRelatorioAlteracoes.qrRelatorioAlteracoes.ParamByName('DTFINAL').AsDate := dtFinal.Date;
  end;

  if (edtFilial.Text <> '') then
  begin
    DMRelatorioAlteracoes.qrRelatorioAlteracoes.SQL.Add('AND I9LOGALTERACAO.CODFILIAL = :CODFILIAL');
    DMRelatorioAlteracoes.qrRelatorioAlteracoes.ParamByName('CODFILIAL').AsString := edtFilial.Text;
  end;

  if (Trim(edtCodOferta.Text) <> '') then
  begin
    DMRelatorioAlteracoes.qrRelatorioAlteracoes.SQL.Add('AND I9LOGALTERACAO.CODOFERTA = :CODOFERTA');
    DMRelatorioAlteracoes.qrRelatorioAlteracoes.ParamByName('CODOFERTA').AsString := edtCodOferta.Text;
  end;

  if (edtProduto.Text <> '') then
  begin
    DMRelatorioAlteracoes.qrRelatorioAlteracoes.SQL.Add('AND I9LOGALTERACAO.CODPROD = :CODPROD');
    DMRelatorioAlteracoes.qrRelatorioAlteracoes.ParamByName('CODPROD').AsString := edtProduto.Text;
  end;

  if cbPrecoFuturo.Checked or cbPrecoVenda.Checked or cbCustoFinanceiro.Checked or cbMargemIdeal.Checked or
  cbMargemMinima.Checked or cbQtMinAtacado.Checked or cbPrecoFuturoAtacado.Checked or cbPrecoFuturoAtacado.Checked or cbQtMinAtacado.Checked or cbVlVerba.Checked then
  begin
    DMRelatorioAlteracoes.qrRelatorioAlteracoes.SQL.Add('AND (');
    DMRelatorioAlteracoes.qrRelatorioAlteracoes.SQL.Add('(1=2)');

    if cbPrecoFuturo.Checked then
        DMRelatorioAlteracoes.qrRelatorioAlteracoes.SQL.Add('OR (I9LOGALTERACAO.PTABELA <> I9LOGALTERACAO.PTABELAANT)');

    if cbPrecoFuturoAtacado.Checked then
        DMRelatorioAlteracoes.qrRelatorioAlteracoes.SQL.Add('OR (I9LOGALTERACAO.PTABELAATAC <> I9LOGALTERACAO.PTABELAATACANT)');

    if cbPrecoVenda.Checked then
        DMRelatorioAlteracoes.qrRelatorioAlteracoes.SQL.Add('OR (I9LOGALTERACAO.PVENDA <> I9LOGALTERACAO.PVENDAANT)');

    if cbPrecoVendaAtacado.Checked then
        DMRelatorioAlteracoes.qrRelatorioAlteracoes.SQL.Add('OR (I9LOGALTERACAO.PVENDAATAC <> I9LOGALTERACAO.PVENDAATACANT)');

    if cbCustoFinanceiro.Checked then
        DMRelatorioAlteracoes.qrRelatorioAlteracoes.SQL.Add('OR (I9LOGALTERACAO.CUSTOFIN <> I9LOGALTERACAO.CUSTOFINANT)');

    if cbVlVerba.Checked then
        DMRelatorioAlteracoes.qrRelatorioAlteracoes.SQL.Add('OR (I9LOGALTERACAO.VLVERBA <> I9LOGALTERACAO.VLVERBAANT)');

    if cbMargemIdeal.Checked then
    begin
      DMRelatorioAlteracoes.qrRelatorioAlteracoes.SQL.Add('OR (I9LOGALTERACAO.MARGEMATAC <> I9LOGALTERACAO.MARGEMATACANT)');
      DMRelatorioAlteracoes.qrRelatorioAlteracoes.SQL.Add('OR (I9LOGALTERACAO.MARGEMVAREJO <> MARGEMVAREJOANT)');
    end;

    if cbMargemMinima.Checked then
    begin
      DMRelatorioAlteracoes.qrRelatorioAlteracoes.SQL.Add('OR (I9LOGALTERACAO.MARGEMMINATAC <> I9LOGALTERACAO.MARGEMMINATACANT)');
      DMRelatorioAlteracoes.qrRelatorioAlteracoes.SQL.Add('OR (I9LOGALTERACAO.MARGEMMINVAREJO <> I9LOGALTERACAO.MARGEMMINVAREJOANT)');
    end;

    if cbCustoFinanceiro.Checked then
        DMRelatorioAlteracoes.qrRelatorioAlteracoes.SQL.Add('OR (I9LOGALTERACAO.QTMINIMAATACADO <> I9LOGALTERACAO.QTMINIMAATACADOANT)');


    DMRelatorioAlteracoes.qrRelatorioAlteracoes.SQL.Add(')');
  end;

  DMRelatorioAlteracoes.qrRelatorioAlteracoes.Open;

  if not DMRelatorioAlteracoes.qrRelatorioAlteracoes.IsEmpty then
    DMRelatorioAlteracoes.prRelatorioAlteracoes.Print
  else
    DmLogin.MensagemInformacao('Não existem dados a serem exibidos!');

end;

procedure TfrmRelatorioAlteracoes.CarregarListaPrecificacao(codLista: Integer);
begin



end;

procedure TfrmRelatorioAlteracoes.configuraQuerysPadrao;
begin
 
end;

procedure TfrmRelatorioAlteracoes.cxGridDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  recno : Integer;
begin

end;

end.
