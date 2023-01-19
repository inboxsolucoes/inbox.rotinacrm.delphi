unit ufrmRelatoriosCRM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDMCampanhaCRM, uLogin,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinMetropolis, dxSkinVisualStudio2013Light, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxGroupBox, Vcl.ExtCtrls, ufrmLayoutImpressaoCRM,
  dxSkinMetropolisDark, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2013White, dxSkinOffice2016Dark;

type
  TfrmRelatoriosCRM = class(TForm)
    cxGroupBox1: TcxGroupBox;
    btnDadosCampanha: TcxButton;
    btnAcompanhamentoCampanha: TcxButton;
    btnRelatorioRebaixa: TcxButton;
    btnAcompCampanhaComprador: TcxButton;
    btnDadosCampanhaComprador: TcxButton;
    Panel1: TPanel;
    btnFechar: TcxButton;
    procedure btnDadosCampanhaClick(Sender: TObject);
    procedure btnRelatorioRebaixaClick(Sender: TObject);
    procedure btnAcompanhamentoCampanhaClick(Sender: TObject);
    procedure btnAcompCampanhaCompradorClick(Sender: TObject);
    procedure btnDadosCampanhaCompradorClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatoriosCRM: TfrmRelatoriosCRM;

implementation

{$R *.dfm}

procedure TfrmRelatoriosCRM.btnAcompanhamentoCampanhaClick(Sender: TObject);
var
  campanhasSelecionadas : string;
  recno : Integer;
begin
  try
    btnAcompanhamentoCampanha.Enabled := False;
    Screen.Cursor := crSQLWait;
    Application.ProcessMessages;

    if NOT DMCampanhaCRM.qrConsultaCampanha.IsEmpty then
    begin
      recno := DMCampanhaCRM.qrConsultaCampanha.RecNo;
      campanhasSelecionadas := '';
      campanhasSelecionadas := DMCampanhaCRM.getCodigoCampanhasSelecionadas;
      DMCampanhaCRM.qrConsultaCampanha.RecNo := recno;

      if campanhasSelecionadas = '' then
        DmLogin.MensagemErroAbort('Nenhuma campanha está selecionada');

      DMCampanhaCRM.qryRelVendaProd.Close;
      DMCampanhaCRM.qryRelVendaProd.RestoreSQL;
      DMCampanhaCRM.qryRelVendaProd.AddWhere('I9CAMPANHACRM.CODCAMPANHACRM IN (' + campanhasSelecionadas + ')');
      DMCampanhaCRM.qryRelVendaProd.AddWhere('PCDESCONTOFIDELIDADE.CODCAMPANHACRM = I9CAMPANHACRM.CODCAMPANHACRM');
      DMCampanhaCRM.qryRelVendaProd.Open;

      if DMCampanhaCRM.qryRelVendaProd.IsEmpty then
      begin
        DmLogin.MensagemInformacao('Nenhuma informação disponível.');
      end
      else
      begin
        DMCampanhaCRM.ppRelVendaProd.Print;
      end;

    end;
  finally
    btnAcompanhamentoCampanha.Enabled := True;
    Screen.Cursor := crDefault;
    Application.ProcessMessages;
  end;
end;

procedure TfrmRelatoriosCRM.btnAcompCampanhaCompradorClick(Sender: TObject);
var
  campanhasSelecionadas : String;
  recno : Integer;
begin
  if DMCampanhaCRM.qrConsultaCampanhaDTREBAIXACUSTO.AsString = '' then
  begin
    DmLogin.MensagemErroAbort('Não foi realizada a geração de verba/rebaixa de CMV para essa campanha.');
  end;

  try
    btnAcompCampanhaComprador.Enabled := False;
    Screen.Cursor := crSQLWait;
    Application.ProcessMessages;

    if NOT DMCampanhaCRM.qrConsultaCampanha.IsEmpty then
    begin
      recno := DMCampanhaCRM.qrConsultaCampanha.RecNo;
      campanhasSelecionadas := '';
      campanhasSelecionadas := DMCampanhaCRM.getCodigoCampanhasSelecionadas;
      DMCampanhaCRM.qrConsultaCampanha.RecNo := recno;

      if campanhasSelecionadas = '' then
        dmLogin.MensagemErroAbort('Selecionar ao menos uma oferta para impressão!');

      DMCampanhaCRM.qryRelApuracao.Close;
      DMCampanhaCRM.qryRelApuracao.RestoreSQL;
      DMCampanhaCRM.qryRelApuracao.AddWhere('I9CAMPANHACRM.CODCAMPANHACRM IN (' + campanhasSelecionadas + ')');
      DMCampanhaCRM.qryRelApuracao.Open;

      if DMCampanhaCRM.qryRelApuracao.IsEmpty then
      begin
        DmLogin.MensagemInformacao('Nenhuma informação disponível.');
      end
      else
      begin
        DMCampanhaCRM.ppRelApuracaoComprador.Print;
      end;

    end;
  finally
    btnAcompCampanhaComprador.Enabled := True;
    Screen.Cursor := crDefault;
    Application.ProcessMessages;
  end;
end;

procedure TfrmRelatoriosCRM.btnDadosCampanhaClick(Sender: TObject);
var
  campanhasSelecionadas : String;
  recno : Integer;
begin
  if not DMCampanhaCRM.qrConsultaCampanha.IsEmpty then
  begin
    recno := DMCampanhaCRM.qrConsultaCampanha.RecNo;
    campanhasSelecionadas := '';
    campanhasSelecionadas := DMCampanhaCRM.getCodigoCampanhasSelecionadas;
    DMCampanhaCRM.qrConsultaCampanha.RecNo := recno;

    if campanhasSelecionadas = '' then
      dmLogin.MensagemErroAbort('Selecionar ao menos uma oferta para impressão!');

    DMCampanhaCRM.qrRelCampanha.Close;
    DMCampanhaCRM.qrRelCampanha.RestoreSQL;
    DMCampanhaCRM.qrRelCampanha.AddWhere('PCDESCONTOFIDELIDADE.CODCAMPANHACRM IN (' + campanhasSelecionadas + ')');
    DMCampanhaCRM.qrRelCampanha.Open;

    if DMCampanhaCRM.qrRelCampanha.IsEmpty then
    begin
       DmLogin.MensagemInformacao('Nenhuma informação disponível.');
    end else
    begin
        Application.CreateForm(TfrmLayoutImpressaoCRM, frmLayoutImpressaoCRM);
        frmLayoutImpressaoCRM.ShowModal();
    end;

  end
  else
  begin
    dmLogin.MensagemErroAbort('Favor selecionar uma campanha para emissão do relatório!');
  end;
end;

procedure TfrmRelatoriosCRM.btnDadosCampanhaCompradorClick(Sender: TObject);
var
  campanhasSelecionadas : String;
  recno : Integer;
begin
  if not DMCampanhaCRM.qrConsultaCampanha.IsEmpty then
  begin
    recno := DMCampanhaCRM.qrConsultaCampanha.RecNo;
    campanhasSelecionadas := '';
    campanhasSelecionadas := DMCampanhaCRM.getCodigoCampanhasSelecionadas;
    DMCampanhaCRM.qrConsultaCampanha.RecNo := recno;

    if campanhasSelecionadas = '' then
      dmLogin.MensagemErroAbort('Selecionar ao menos uma oferta para impressão!');

    DMCampanhaCRM.qrRelCampanhaComprador.Close;
    DMCampanhaCRM.qrRelCampanhaComprador.RestoreSQL;
    DMCampanhaCRM.qrRelCampanhaComprador.AddWhere('PCDESCONTOFIDELIDADE.CODCAMPANHACRM IN (' + campanhasSelecionadas + ')');
    DMCampanhaCRM.qrRelCampanhaComprador.Open;

    if DMCampanhaCRM.qrRelCampanhaComprador.IsEmpty then
      DmLogin.MensagemInformacao('Nenhuma informação disponível.')
    else
      DMCampanhaCRM.ppRelCampanhaComprador.Print;
  end
  else
  begin
    dmLogin.MensagemErroAbort('Favor selecionar uma campanha para emissão do relatório!');
  end;
end;


procedure TfrmRelatoriosCRM.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRelatoriosCRM.btnRelatorioRebaixaClick(Sender: TObject);
var
  campanhasSelecionadas : String;
  recno : Integer;
begin
  if DMCampanhaCRM.qrConsultaCampanhaDTREBAIXACUSTO.AsString = '' then
  begin
    DmLogin.MensagemErroAbort('Não foi realizada a geração de verba/rebaixa de CMV para essa campanha.');
  end;

  try
    btnRelatorioRebaixa.Enabled := False;
    Screen.Cursor := crSQLWait;
    Application.ProcessMessages;

    if NOT DMCampanhaCRM.qrConsultaCampanha.IsEmpty then
    begin
      recno := DMCampanhaCRM.qrConsultaCampanha.RecNo;
      campanhasSelecionadas := '';
      campanhasSelecionadas := DMCampanhaCRM.getCodigoCampanhasSelecionadas;
      DMCampanhaCRM.qrConsultaCampanha.RecNo := recno;

      if campanhasSelecionadas = '' then
        dmLogin.MensagemErroAbort('Selecionar ao menos uma oferta para impressão!');

      DMCampanhaCRM.qryRelApuracao.Close;
      DMCampanhaCRM.qryRelApuracao.RestoreSQL;
      DMCampanhaCRM.qryRelApuracao.AddWhere('I9CAMPANHACRM.CODCAMPANHACRM IN (' + campanhasSelecionadas + ')');
      DMCampanhaCRM.qryRelApuracao.AddWhere('PCDESCONTOFIDELIDADE.CODCAMPANHACRM IN (' + campanhasSelecionadas + ')');
      DMCampanhaCRM.qryRelApuracao.Open;

      if DMCampanhaCRM.qryRelApuracao.IsEmpty then
      begin
        DmLogin.MensagemInformacao('Nenhuma informação disponível.');
      end
      else
      begin
        DMCampanhaCRM.ppRelApuracao.Print;
      end;

    end;
  finally
    btnRelatorioRebaixa.Enabled := True;
    Screen.Cursor := crDefault;
    Application.ProcessMessages;
  end;
end;
end.
