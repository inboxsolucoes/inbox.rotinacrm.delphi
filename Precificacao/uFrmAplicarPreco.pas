unit uFrmAplicarPreco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, cxProgressBar, cxGroupBox, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, cxButtons, cxCheckBox, cxLabel, cxTextEdit,
  cxCurrencyEdit, Math, dxSkinMetropolis, dxSkinVisualStudio2013Light, Uni;

type
  TfrmAplicarPreco = class(TForm)
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
    lblStatus: TcxLabel;
    procedure actAplicarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbVariacaoPrecoClick(Sender: TObject);
    procedure edtPorcentagemPropertiesChange(Sender: TObject);
    procedure edtValorPropertiesChange(Sender: TObject);
  private
    { Private declarations }
      FQryPrecificacao: TUniQuery;
      FisCluster: Boolean;
  public
    { Public declarations }
    procedure SetTipoPreco(tipo:string);
    Constructor Create(AOwner: TComponent; const qryEntrada: TUniQuery; isCluster:Boolean = False);
  end;

var
  frmAplicarPreco: TfrmAplicarPreco;
  tipoPreco:string;


implementation

{$R *.dfm}

uses uDMPrecificacao, uLogin;

{ TfrmAplicarPreco }


constructor TfrmAplicarPreco.Create(AOwner: TComponent;
  const qryEntrada: TUniQuery; isCluster:Boolean = False);
begin
  inherited Create(AOwner);
  FQryPrecificacao := qryEntrada;
  FisCluster := isCluster;
end;

procedure TfrmAplicarPreco.actAplicarExecute(Sender: TObject);
var
  vAtual, vTotal:Integer;
  vPrecoTempAtac, vPrecoSugestaoTemp, vPrecoSugestaoArredondadoTemp, vPrecoTemp, vMargemTemp, vMargemTempAtac : Double;
begin
  try
    Screen.Cursor := crDefault;
    Screen.Cursor := crSQLWait;

    btnAplicar.Enabled := False;
    btnCancelar.Enabled := False;

    DMPrecificacao.NaoAtualizarGrid(true);
    FQryPrecificacao.DisableControls;

    FQryPrecificacao.First;
    pbStatusAplicacao.Properties.Max := FQryPrecificacao.RecordCount;
    pbStatusAplicacao.Properties.Text := 'Total de registros ' + IntToStr(FQryPrecificacao.RecordCount);
    pbStatusAplicacao.Position := 0;

    while not FQryPrecificacao.Eof do
    begin

      lblStatus.Caption := FQryPrecificacao.FieldByName('CODPROD').AsString + ' - ' +
                           FQryPrecificacao.FieldByName('DESCRICAO').AsString;

      Application.ProcessMessages;

      if tipoPreco = 'CUSTOMEDIOFAMILIA' then
      begin
        if Self.FisCluster then
        begin
          DMPrecificacao.AplicarCustoMedioCluster;
        end
        else
        begin
          DMPrecificacao.AplicarCustoMedioFamilia;
        end;
      end;

      if FQryPrecificacao.FieldByName('PRECOFIXO').AsString = 'S' then
      begin
        FQryPrecificacao.Next;
        Continue;
      end;

      if tipoPreco = 'SUGESTAO' then
      begin
        FQryPrecificacao.Edit;
        FQryPrecificacao.FieldByName('PTABELA').AsFloat := FQryPrecificacao.FieldByName('PSUGESTAO').AsFloat;
        FQryPrecificacao.Post;
      end;

      if (tipoPreco = 'CONCORRENTE') and
      (FQryPrecificacao.FieldByName('pvendaconcorrente').AsString <> '')
      and (FQryPrecificacao.FieldByName('pvendaconcorrente').AsString <> '0') then
      begin
        FQryPrecificacao.Edit;

        if (FQryPrecificacao.FieldByName('pvendaconcorrente').AsString <> '')
          and (FQryPrecificacao.FieldByName('pvendaconcorrente').AsString <> '0') then
        begin

          vPrecoTemp := FQryPrecificacao.FieldByName('pvendaconcorrente').AsFloat;

          if cbVariacaoPreco.Checked then
          begin

            if cbAplicarArredondamento.Checked then
            begin
              if edtPorcentagem.Text <> '' then
                vPrecoTemp := DMPrecificacao.getPrecoArredondado(vPrecoTemp * (1 + (edtPorcentagem.Value/100)) );

              if edtValor.Text <> '' then
                vPrecoTemp := DMPrecificacao.getPrecoArredondado(vPrecoTemp + edtValor.Value);
            end
            else
            begin
              if edtPorcentagem.Text <> '' then
                vPrecoTemp := Math.RoundTo(vPrecoTemp * (1 + (edtPorcentagem.Value/100)), -2);

              if edtValor.Text <> '' then
                vPrecoTemp := Math.RoundTo(vPrecoTemp + edtValor.Value, -2);
            end;


          end;

          FQryPrecificacao.FieldByName('PTABELA').AsFloat := vPrecoTemp;
        end;


        if (FQryPrecificacao.FieldByName('pvendaatacconcorrente').AsString <> '') and (FQryPrecificacao.FieldByName('pvendaatacconcorrente').AsString <> '0')  then
        begin
          vPrecoTempAtac := FQryPrecificacao.FieldByName('pvendaatacconcorrente').AsFloat;

          if cbVariacaoPreco.Checked then
          begin
            if cbAplicarArredondamento.Checked then
            begin
              if edtPorcentagem.Text <> '' then
                vPrecoTempAtac := DMPrecificacao.getPrecoArredondado(vPrecoTemp * (1 + (edtPorcentagem.Value/100)) );

              if edtValor.Text <> '' then
                vPrecoTempAtac := DMPrecificacao.getPrecoArredondado(vPrecoTempAtac + edtValor.Value);
            end
            else
            begin
              if edtPorcentagem.Text <> '' then
                vPrecoTempAtac := Math.RoundTo(vPrecoTemp * (1 + (edtPorcentagem.Value/100)), -2);

              if edtValor.Text <> '' then
                vPrecoTempAtac := Math.RoundTo(vPrecoTempAtac + edtValor.Value, -2);
            end;
          end;

          FQryPrecificacao.FieldByName('PTABELAATAC').AsFloat := vPrecoTempAtac;
        end
        else
        begin
          FQryPrecificacao.FieldByName('PTABELAATAC').AsFloat := vPrecoTemp;
        end;


        FQryPrecificacao.Post;
      end;


      if (tipoPreco = 'ARREDONDADO') and
      ((FQryPrecificacao.FieldByName('PSUGESTAO_ARREDONDADO').AsFloat > 0)
         or (FQryPrecificacao.FieldByName('PSUGESTAO_ATAC_ARREDONDADO').AsFloat > 0)) then
      begin
         FQryPrecificacao.Edit;

        vPrecoSugestaoTemp := FQryPrecificacao.FieldByName('PSUGESTAO').AsFloat;
        vPrecoSugestaoArredondadoTemp := FQryPrecificacao.FieldByName('PSUGESTAO_ARREDONDADO').AsFloat;

        while (FQryPrecificacao.FieldByName('FATORPRECO').AsFloat <> 1) and (vPrecoSugestaoArredondadoTemp <=  FQryPrecificacao.FieldByName('PSUGESTAO_ATAC_ARREDONDADO').AsFloat) do
        begin
          vPrecoSugestaoTemp := vPrecoSugestaoTemp + 0.01;
          vPrecoSugestaoArredondadoTemp := DMPrecificacao.getPrecoArredondado(vPrecoSugestaoTemp);
        end;


        if FQryPrecificacao.FieldByName('PSUGESTAO_ARREDONDADO').AsFloat > 0 then
          FQryPrecificacao.FieldByName('PTABELA').AsFloat := vPrecoSugestaoArredondadoTemp;

        if FQryPrecificacao.FieldByName('PSUGESTAO_ATAC_ARREDONDADO').AsFloat > 0 then
          FQryPrecificacao.FieldByName('PTABELAATAC').AsFloat := FQryPrecificacao.FieldByName('PSUGESTAO_ATAC_ARREDONDADO').AsFloat;

        FQryPrecificacao.Post;
      end;


      if tipoPreco = 'VENDA' then
      begin
        FQryPrecificacao.Edit;
        FQryPrecificacao.FieldByName('PVENDA').AsFloat := FQryPrecificacao.FieldByName('PTABELA').AsFloat;
        FQryPrecificacao.FieldByName('PVENDAATAC').AsFloat := FQryPrecificacao.FieldByName('PTABELAATAC').AsFloat;
        //FQryPrecificacao.FieldByName('PVENDACRM').AsFloat := FQryPrecificacao.FieldByName('PTABELACRM').AsFloat;
        FQryPrecificacao.Post;

        if self.FisCluster then
        begin
          DMPrecificacao.recalcularPrecoCRMCluster(FQryPrecificacao.FieldByName('CODGRUPO').AsInteger,
                                            FQryPrecificacao.FieldByName('CODAUXILIAR').AsString);
        end
        else
        begin
          DMPrecificacao.recalcularPrecoCRM(FQryPrecificacao.FieldByName('CODFILIAL').AsString,
                                            FQryPrecificacao.FieldByName('CODAUXILIAR').AsString);
        end;
      end;

      if tipoPreco = 'VARIACAOPVENDA' then
      begin
        FQryPrecificacao.Edit;

        vPrecoTemp := FQryPrecificacao.FieldByName('PVENDA').AsFloat;

        if cbVariacaoPreco.Checked then
        begin
          if cbAplicarArredondamento.Checked then
          begin
            if edtPorcentagem.Text <> '' then
              vPrecoTemp := DMPrecificacao.getPrecoArredondado(vPrecoTemp * (1 + (edtPorcentagem.Value/100)) );

            if edtValor.Text <> '' then
              vPrecoTemp := DMPrecificacao.getPrecoArredondado(vPrecoTemp + edtValor.Value);
          end
          else
          begin
            if edtPorcentagem.Text <> '' then
              vPrecoTemp := Math.RoundTo(vPrecoTemp * (1 + (edtPorcentagem.Value/100)), -2);

            if edtValor.Text <> '' then
              vPrecoTemp := Math.RoundTo(vPrecoTemp + edtValor.Value, -2);
          end;
        end;

        FQryPrecificacao.FieldByName('PTABELA').AsFloat := vPrecoTemp;

        vPrecoTempAtac := FQryPrecificacao.FieldByName('PVENDAATAC').AsFloat;

        if cbVariacaoPreco.Checked then
        begin
          if cbAplicarArredondamento.Checked then
          begin
            if edtPorcentagem.Text <> '' then
              vPrecoTempAtac := DMPrecificacao.getPrecoArredondado(vPrecoTempAtac * (1 + (edtPorcentagem.Value/100)) );

            if edtValor.Text <> '' then
              vPrecoTempAtac := DMPrecificacao.getPrecoArredondado(vPrecoTempAtac + edtValor.Value);
          end
          else
          begin
            if edtPorcentagem.Text <> '' then
              vPrecoTempAtac := Math.RoundTo(vPrecoTempAtac * (1 + (edtPorcentagem.Value/100)), -2);

            if edtValor.Text <> '' then
              vPrecoTempAtac := Math.RoundTo(vPrecoTempAtac + edtValor.Value, -2);
          end;
        end;

        FQryPrecificacao.FieldByName('PTABELAATAC').AsFloat := vPrecoTempAtac;

        FQryPrecificacao.Post;
      end;

      try
        FQryPrecificacao.RefreshRecord;
      except
      end;

      pbStatusAplicacao.Position := (pbStatusAplicacao.Position + 1);
      pbStatusAplicacao.Repaint;
      pbStatusAplicacao.Properties.Text := FloatToStr(pbStatusAplicacao.Position) + ' de ' +  FloatToStr(pbStatusAplicacao.Properties.Max);
      Application.ProcessMessages;

      FQryPrecificacao.Next;
    end;

    DMPrecificacao.NaoAtualizarGrid(false);
    FQryPrecificacao.Refresh;
    FQryPrecificacao.EnableControls;
    Application.MessageBox('Processo realizado com sucesso!', 'Atenção', MB_ICONINFORMATION);
    Close;

  finally
    btnAplicar.Enabled := True;
    btnCancelar.Enabled := True;
    Screen.Cursor := crDefault;
    Application.ProcessMessages;
  end;
end;

procedure TfrmAplicarPreco.actCancelarExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmAplicarPreco.cbVariacaoPrecoClick(Sender: TObject);
begin
  edtPorcentagem.Enabled := cbVariacaoPreco.Checked;
  edtValor.Enabled := cbVariacaoPreco.Checked;
  cbAplicarArredondamento.Enabled := cbVariacaoPreco.Checked;
  cbAplicarArredondamento.Checked := cbVariacaoPreco.Checked;
end;

procedure TfrmAplicarPreco.edtPorcentagemPropertiesChange(Sender: TObject);
begin

 if edtPorcentagem.Text = '' then
     edtValor.Enabled := True
 else
   edtValor.Enabled := False;

   edtValor.Text := '';

end;

procedure TfrmAplicarPreco.edtValorPropertiesChange(Sender: TObject);
begin

 if edtValor.Text = '' then
     edtPorcentagem.Enabled := True
 else
   edtPorcentagem.Enabled := False;

   edtPorcentagem.Text := '';
end;

procedure TfrmAplicarPreco.FormShow(Sender: TObject);
begin
  pbStatusAplicacao.Properties.Text := 'Total de registros ' + IntToStr(FQryPrecificacao.RecordCount);
  Application.ProcessMessages;

  if tipoPreco = 'SUGESTAO' then
  begin
    cxBox.Caption := 'Aplicar preço futuro sugerido';
  end;

  if tipoPreco = 'CONCORRENTE' then
  begin
    cxBox.Caption := 'Aplicar preço concorrente sugerido';
    gbVariacaoPreco.Visible := True;
    gbVariacaoPreco.Enabled := DmLogin.validaPermissao530(7);
    edtPorcentagem.Value := DMPrecificacao.getPercentualSugConcorrente;
  end;

  if tipoPreco = 'ARREDONDADO' then
  begin
    cxBox.Caption := 'Aplicar preço futuro sugerido arredondado';
  end;

  if tipoPreco = 'VENDA' then
  begin
    cxBox.Caption := 'Aplicar preço futuro em preço de venda';
  end;


  if tipoPreco = 'VARIACAOPVENDA' then
  begin
    cxBox.Caption := 'Aplicar variação no preço de venda';
    gbVariacaoPreco.Visible := True;
    gbVariacaoPreco.Enabled := DmLogin.validaPermissao530(7);
  end;

  if tipoPreco = 'CUSTOMEDIOFAMILIA' then
  begin
    cxBox.Caption := 'Aplicar custo médio família';
  end;

end;

procedure TfrmAplicarPreco.SetTipoPreco(tipo: string);
begin
  tipoPreco := tipo;
end;

end.
