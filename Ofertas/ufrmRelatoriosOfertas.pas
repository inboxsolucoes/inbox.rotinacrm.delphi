unit ufrmRelatoriosOfertas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinMetropolis,
  dxSkinVisualStudio2013Light, cxControls, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxGroupBox, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, udmOfertas, udmRelatoriosOfertas, uLogin,
  cxRadioGroup, ufrmLayoutImpressao;

type
  TfrmRelatoriosOfertas = class(TForm)
    Panel1: TPanel;
    btnFechar: TcxButton;
    cxGroupBox1: TcxGroupBox;
    btnEmitirDadosOferta: TcxButton;
    cxGroupBox2: TcxGroupBox;
    btnAcompanhamentoOfertas: TcxButton;
    Panel2: TPanel;
    dtIniAcompanhamento: TcxDateEdit;
    cxLabel13: TcxLabel;
    dtFimAcompanhamento: TcxDateEdit;
    cxButton1: TcxButton;
    rgTipoverba: TcxRadioGroup;
    btnEmitirVerbas: TcxButton;
    procedure btnEmitirDadosOfertaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnEmitirVerbasClick(Sender: TObject);
    procedure btnAcompanhamentoOfertasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatoriosOfertas: TfrmRelatoriosOfertas;

implementation

{$R *.dfm}

uses ufrmOfertas;

procedure TfrmRelatoriosOfertas.btnAcompanhamentoOfertasClick(Sender: TObject);
begin
  if ((dtIniAcompanhamento.Text = '') or (dtFimAcompanhamento.Text = '')) then
    dmLogin.MensagemErroAbort('Obrigatório informar período ao pesquisar!');

  try
    self.cursor := crSQLWait;

    with dmRelatoriosOfertas.qrRelVerbaDefinido do
    begin
      Close;
      RestoreSQL;
      ParamByName('DTINI').AsDate := frmRelatoriosOfertas.dtIniAcompanhamento.Date;
      ParamByName('DTFIM').AsDate := frmRelatoriosOfertas.dtFimAcompanhamento.Date;
      ParamByName('TIPOVERBA').AsString := rgTipoverba.EditValue;
      Open;
      if RecordCount > 0 then begin
        dmRelatoriosOfertas.ppRelVerbaDefinido.Print;

        {DmLogin.DataSetParaExcel(dmRelatoriosOfertas.qrRelVerbaDefinido,
                                 dmLogin.getCaminhoDesktopUsuario + '\Relatorio_Acompanhamento_Oferta('+ frmRelatoriosOfertas.dtIniAcompanhamento.Text +'-' + frmRelatoriosOfertas.dtFimAcompanhamento.Text +').xls');}

        dmLogin.MensagemInformacao('Relatório gerado com sucesso!');
      end else begin
         dmLogin.MensagemInformacao('Não existem dados a serem exibidos!');
      end;

    end;

  finally
    self.Cursor := crDefault;
  end;
end;

procedure TfrmRelatoriosOfertas.btnEmitirDadosOfertaClick(Sender: TObject);
var
  InDasOfertas : string;
  recno : Integer;
begin

  try
    recno := DMOfertas.qrPesquisaOfertasCadastradas.RecNo;
    DMOfertas.qrPesquisaOfertasCadastradas.DisableControls;
    InDasOfertas := DMOfertas.getCodigoOfertasSelecionadas(False);
    DMOfertas.qrPesquisaOfertasCadastradas.RecNo := recno;
    DMOfertas.qrPesquisaOfertasCadastradas.EnableControls;
  except on E: Exception do
    begin
      DMOfertas.qrPesquisaOfertasCadastradas.EnableControls;
      DmLogin.MensagemErroAbort('Erro ao procurar ofertas selecionadas!' + #13 + e.Message);
    end;
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
      if qrRelatorioOferta.RecordCount > 0 then
        ppEmitirDadosOferta.Print
      else
        DmLogin.MensagemInformacao('Não existem dados a serem exibidos!');
    end;
  end
  else
  begin
    DmLogin.MensagemInformacao('Não existem dados a serem exibidos!');
  end;

end;

procedure TfrmRelatoriosOfertas.btnEmitirVerbasClick(Sender: TObject);
begin
  if DMOfertas.getCodigoOfertasSelecionadas(false) <> '' then
  begin
    with dmRelatoriosOfertas do begin
      qrRelatorioOferta.Close;
      qrRelatorioOferta.RestoreSQL;
      qrRelatorioOferta.AddWhere('ITENS.CODOFERTA IN (' + DMOfertas.getCodigoOfertasSelecionadas(false) + ')');
      qrRelatorioOferta.Open;
      if qrRelatorioOferta.RecordCount > 0  then
      begin
          Application.CreateForm(TfrmLayoutImpressao, frmLayoutImpressao);
          frmLayoutImpressao.ShowModal();
          //ppVerbasOferta.Print
      end
      else
        DmLogin.MensagemInformacao('Não existem dados a serem exibidos!');;
    end;
  end
  else
  begin
    dmLogin.MensagemErroAbort('Nenhuma oferta liberada ou com verba vinculada selecionada!');
  end;
end;

procedure TfrmRelatoriosOfertas.btnFecharClick(Sender: TObject);
begin
  Close;
end;

end.
