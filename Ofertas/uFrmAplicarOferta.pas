unit uFrmAplicarOferta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,cxProgressBar, cxGroupBox, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, cxButtons, cxCheckBox, cxLabel, cxTextEdit,
  cxCurrencyEdit, Math, dxSkinMetropolis, dxSkinVisualStudio2013Light;

type
  TfrmAplicarOferta = class(TForm)
    cxBox: TcxGroupBox;
    pbStatusAplicacao: TcxProgressBar;
    btnAplicar: TcxButton;
    btnCancelar: TcxButton;
    ActionList1: TActionList;
    actAplicar: TAction;
    actCancelar: TAction;
    gbVariacaoPreco: TcxGroupBox;
    cbVariacaoPreco: TcxCheckBox;
    edtPorcentagem: TcxCurrencyEdit;
    edtValor: TcxCurrencyEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cbAplicarArredondamento: TcxCheckBox;
    procedure actAplicarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbVariacaoPrecoClick(Sender: TObject);
    procedure edtPorcentagemPropertiesChange(Sender: TObject);
    procedure edtValorPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetTipoPreco(tipo:string);
  end;

var
  frmAplicarOferta: TfrmAplicarOferta;
  tipoPreco:string;


implementation

{$R *.dfm}

uses uDMOfertas, uLogin, ufrmOfertas, ufrmFiltrosPrecificacao, udmPrincipal;

{ TfrmAplicarOferta }



procedure TfrmAplicarOferta.actAplicarExecute(Sender: TObject);
var
  vAtual, vTotal:Integer;
  vPrecoTempAtac, vPrecoSugestaoTemp, vPrecoSugestaoArredondadoTemp, vPrecoTemp, vMargemTemp, vMargemTempAtac : Double;
  vCodOfertaVigente : Double;
begin
  try
    vCodOfertaVigente := 0;

    Screen.Cursor := crDefault;
    Screen.Cursor := crSQLWait;

    btnAplicar.Enabled := False;
    btnCancelar.Enabled := False;

    DMOfertas.qrPesquisaOfertas.DisableControls;
    //DMOfertas.cdsPesquisaOfertasInseridos.DisableControls;

    DMOfertas.qrPesquisaOfertas.First;
    pbStatusAplicacao.Properties.Max := DMOfertas.qrPesquisaOfertas.RecordCount;
    pbStatusAplicacao.Properties.Text := 'Total de registros ' + IntToStr(DMOfertas.qrPesquisaOfertas.RecordCount);
    pbStatusAplicacao.Position := 0;

    while not DMOfertas.qrPesquisaOfertas.Eof do
    begin

      DMOfertas.cdsFiliaisIncluidas.First;

      while not  DMOfertas.cdsFiliaisIncluidas.Eof  do
      begin

        DMOfertas.qrPesquisaItemInserir.Close;
        DMOfertas.qrPesquisaItemInserir.RestoreSQL;
        DMOfertas.qrPesquisaItemInserir.ParamByName('CODFILIAL').AsString := DMOfertas.cdsFiliaisIncluidasCODIGO.AsString;
        DMOfertas.qrPesquisaItemInserir.ParamByName('CODPROD').AsString := DMOfertas.qrPesquisaOfertas.FieldByName('CODPROD').AsString;
        DMOfertas.qrPesquisaItemInserir.Open;

        if not DMOfertas.qrPesquisaItemInserir.IsEmpty  then
        begin

          if tipoPreco = 'CONCORRENTE' then
          begin

            if (DMOfertas.qrPesquisaItemInserir.FieldByName('PVENDAATACCONCORRENTE').AsString <> '')
            and (DMOfertas.qrPesquisaItemInserir.FieldByName('PVENDAATACCONCORRENTE').AsString <> '0')
            then
            begin
              vPrecoTempAtac := DMOfertas.qrPesquisaItemInserir.FieldByName('PVENDAATACCONCORRENTE').AsFloat;

              if cbVariacaoPreco.Checked then
              begin
                if cbAplicarArredondamento.Checked then
                begin
                  if edtPorcentagem.Text <> '' then
                    vPrecoTempAtac := dmPrincipal.getPrecoArredondado(vPrecoTempAtac * (1 + (edtPorcentagem.Value/100)) );

                  if edtValor.Text <> '' then
                    vPrecoTempAtac := dmPrincipal.getPrecoArredondado(vPrecoTempAtac + edtValor.Value);
                end
                else
                begin
                  if edtPorcentagem.Text <> '' then
                    vPrecoTempAtac := Math.RoundTo(vPrecoTempAtac * (1 + (edtPorcentagem.Value/100)), -2);

                  if edtValor.Text <> '' then
                    vPrecoTempAtac := Math.RoundTo(vPrecoTempAtac + edtValor.Value, -2);
                end;
              end;

              //vPrecoTempAtac - PRECO DE OFERTA ATACADO FINAL
            end
            else
            begin
              vPrecoTempAtac := vPrecoTemp;
            end;

            //INSERIR PRODUTO NA GRID DEBAIXO
            //PRECO DE OFERTA VAREJO = vPrecoTemp
            //PRECO DE OFERTA ATACADO = vPrecoTempAtac
            if (vPrecoTempAtac > 0) then
            begin

              //Se o produto não tem uma oferta ativa ou o Produto não está na grid de baixo, então insere.
              vCodOfertaVigente := dmOfertas.produtoTemOfertaVigente(dmOfertas.qrPesquisaItemInserir.FieldByName('CODPROD').AsFloat,
                                                                     frmOfertas.dtVigenciaINI.Date,
                                                                     frmOfertas.dtVigenciaFIM.Date,
                                                                     DMOfertas.cdsFiliaisIncluidasCODIGO.AsString,
                                                                     False,
                                                                     StrToInt(frmOfertas.edtCodigoOferta.Text));

              if ((vCodOfertaVigente > 0) and
                  not (DMOfertas.cdsPesquisaOfertasInseridos.Locate('CODPROD',VarArrayOf([DMOfertas.qrPesquisaOfertas.FieldByName('CODPROD').AsString]),[])))
              then
              begin
                DMOfertas.inserirItemLista(vPrecoTempAtac);
              end;

            end;

          end;

        end;

        DMOfertas.cdsFiliaisIncluidas.Next;
      end;

      pbStatusAplicacao.Position := (pbStatusAplicacao.Position + 1);
      pbStatusAplicacao.Repaint;
      pbStatusAplicacao.Properties.Text := FloatToStr(pbStatusAplicacao.Position) + ' de ' +  FloatToStr(pbStatusAplicacao.Properties.Max);
      Application.ProcessMessages;

      DMOfertas.qrPesquisaOfertas.Next;
    end;

    Application.MessageBox('Processo realizado com sucesso!', 'Atenção', MB_ICONINFORMATION);
    Close;
  finally
    btnAplicar.Enabled := True;
    btnCancelar.Enabled := True;
    Screen.Cursor := crDefault;
    DMOfertas.qrPesquisaOfertas.EnableControls;
    //DMOfertas.cdsPesquisaOfertasInseridos.EnableControls;
    Application.ProcessMessages;
  end;
end;

procedure TfrmAplicarOferta.actCancelarExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmAplicarOferta.cbVariacaoPrecoClick(Sender: TObject);
begin
  edtPorcentagem.Enabled := cbVariacaoPreco.Checked;
  edtValor.Enabled := cbVariacaoPreco.Checked;
  cbAplicarArredondamento.Enabled := cbVariacaoPreco.Checked;
  cbAplicarArredondamento.Checked := cbVariacaoPreco.Checked;
end;

procedure TfrmAplicarOferta.edtPorcentagemPropertiesChange(Sender: TObject);
begin

 if edtPorcentagem.Text = '' then
     edtValor.Enabled := True
 else
   edtValor.Enabled := False;

   edtValor.Text := '';

end;

procedure TfrmAplicarOferta.edtValorPropertiesChange(Sender: TObject);
begin

 if edtValor.Text = '' then
     edtPorcentagem.Enabled := True
 else
   edtPorcentagem.Enabled := False;

   edtPorcentagem.Text := '';
end;

procedure TfrmAplicarOferta.FormShow(Sender: TObject);
begin
  pbStatusAplicacao.Properties.Text := 'Total de registros ' + IntToStr(DMOfertas.qrPesquisaOfertas.RecordCount);
  Application.ProcessMessages;


  if tipoPreco = 'CONCORRENTE' then
  begin
    cxBox.Caption := 'Gerar oferta baseado no preço do concorrente';
    gbVariacaoPreco.Visible := True;
    gbVariacaoPreco.Enabled := DmLogin.validaPermissao530(7);
  end;

end;

procedure TfrmAplicarOferta.SetTipoPreco(tipo: string);
begin
  tipoPreco := tipo;
end;

end.
