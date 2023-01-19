unit utipoRelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,cxGroupBox, cxRadioGroup, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxCheckBox, dxSkinMetropolis, dxSkinVisualStudio2013Light;

type
  TfrmtipoRelatorio = class(TForm)
    rgTipoRelatorio: TcxRadioGroup;
    cxButton1: TcxButton;
    cbEmiteSomenteSelecionada: TcxCheckBox;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtipoRelatorio: TfrmtipoRelatorio;

implementation

uses
  uDMOfertas, uLogin, ufrmOfertas, udmRelatoriosOfertas;

{$R *.dfm}

procedure TfrmtipoRelatorio.cxButton1Click(Sender: TObject);
begin
   if dmOfertas.qrPesquisaOfertasCadastradas.IsEmpty then
    Exit;


    if not dmOfertas.qrPesquisaOfertasCadastradas.FieldByName('DTLIBERACAO').IsNull then
    begin
      if DMOfertas.qrPesquisaOfertasCadastradas.Active then
      begin

        if rgTipoRelatorio.EditValue = 'DEFINIDO' then
        begin

          if ((frmOfertas.dtPesquisaIni.Text = '') or (frmOfertas.dtPesquisaFim.Text = '')) then
          begin
            dmLogin.MensagemErroAbort('É necessário informar uma data inicial e final!');
            Exit;
          end;

          with dmRelatoriosOfertas.qrRelVerbaDefinido do
          begin
            Close;
            RestoreSQL;

            ParamByName('DTINI').AsDate := frmOfertas.dtPesquisaIni.Date;
            ParamByName('DTFIM').AsDate := frmOfertas.dtPesquisaFim.Date;


             if cbEmiteSomenteSelecionada.Checked then begin
              AddWhere(' PCOFERTAPROGRAMADAC.CODOFERTA = :CODOFERTA ');
              ParamByName('CODOFERTA').AsFloat := dmOfertas.qrPesquisaOfertasCadastradas.FieldByName('CODOFERTA').AsFloat;
            end;

           if frmOfertas.edtCodComprador.Text <> '' then
            begin
              AddWhere('pcofertaprogramadac.codfuncsugestao in (' + frmOfertas.edtCodComprador.Text + ')');
            end;

            if frmOfertas.cmbFilialOferta.ItemIndex > 0 then
            begin
              //referente ao cabeçalho
              AddWhere(' PCOFERTAPROGRAMADAC.CODFILIAL IN ( ' + frmOfertas.cmbFilialOferta.Text + ' )');
            end;

             if frmOfertas.cbStatusOfertaPesquisa.ItemIndex > 0 then
            begin
              //Apenas sugestões aprovadas.
              if frmOfertas.cbStatusOfertaPesquisa.ItemIndex = 1 then
              begin
                //referente ao cabeçalho
                AddWhere(' PCOFERTAPROGRAMADAC.DTLIBERACAO IS NOT NULL ');
              end;
              //Apenas
              if frmOfertas.cbStatusOfertaPesquisa.ItemIndex = 2 then
              begin
                //referente ao cabeçalho
                AddWhere(' PCOFERTAPROGRAMADAC.DTREJEICAO IS NOT NULL ');
              end;

              if frmOfertas.cbStatusOfertaPesquisa.ItemIndex = 3 then
              begin
                //referente ao cabeçalho
                AddWhere(' PCOFERTAPROGRAMADAC.DTREJEICAO IS NULL ');
                AddWhere(' PCOFERTAPROGRAMADAC.DTLIBERACAO IS NULL ');
              end;

              if frmOfertas.cbStatusOfertaPesquisa.ItemIndex = 4 then
                AddWhere(' PCOFERTAPROGRAMADAC.DTCANCEL IS NOT NULL ')
              else
                AddWhere(' PCOFERTAPROGRAMADAC.DTCANCEL IS NULL ');

            end
            else
            begin
              AddWhere(' PCOFERTAPROGRAMADAC.DTCANCEL IS NULL ');
            end;

            Open;

            if IsEmpty then
              dmLogin.MensagemErroAbort('Não existem dados a serem exibidos!')
            else
              dmRelatoriosOfertas.ppRelVerbaDefinido.Print;
          end;

        end
        else
        begin

          with dmRelatoriosOfertas.qrVendaItemOferta do
          begin
            Close;
            RestoreSQL;

            if cbEmiteSomenteSelecionada.Checked then begin
              AddWhere(' ITENS.CODOFERTA = :CODOFERTA ');
              ParamByName('CODOFERTA').AsFloat := dmOfertas.qrPesquisaOfertasCadastradas.FieldByName('CODOFERTA').AsFloat;
            end;

            ParamByName('TIPOVERBA').AsString:= 'APURAR';

            //Acompanhar filtro da grid anterior.
            if frmOfertas.edtCodComprador.Text <> '' then
            begin
              AddWhere('pcofertaprogramadac.codfuncsugestao in (' + frmOfertas.edtCodComprador.Text + ')');
            end;

            if ((frmOfertas.dtPesquisaIni.Text <> '') and (frmOfertas.dtPesquisaFim.Text <> '')) then
            begin
              //FILTRO DO CABEÇALHO DAS OFERTAS
              AddWhere(' (((pcofertaprogramadac.DTINICIALSUGESTAO BETWEEN :DTINI AND :DTFIM) OR (pcofertaprogramadac.DTFINALSUGESTAO BETWEEN :DTINI AND :DTFIM)) OR ' +
                        ' ((pcofertaprogramadac.DTINICIAL BETWEEN :DTINI AND :DTFIM) OR (pcofertaprogramadac.DTFINAL BETWEEN :DTINI AND :DTFIM))) ');
              ParamByName('DTINI').AsDate := frmOfertas.dtPesquisaIni.Date;
              ParamByName('DTFIM').AsDate := frmOfertas.dtPesquisaFim.Date;
            end;

            if frmOfertas.cmbFilialOferta.ItemIndex > 0 then
            begin
              //referente ao cabeçalho
              AddWhere(' PCOFERTAPROGRAMADAC.CODFILIAL IN ( ' + frmOfertas.cmbFilialOferta.Text + ' )');
            end;

            //Validações de Status.
            if frmOfertas.cbStatusOfertaPesquisa.ItemIndex > 0 then
            begin
              //Apenas sugestões aprovadas.
              if frmOfertas.cbStatusOfertaPesquisa.ItemIndex = 1 then
              begin
                //referente ao cabeçalho
                AddWhere(' PCOFERTAPROGRAMADAC.DTLIBERACAO IS NOT NULL ');
              end;
              //Apenas
              if frmOfertas.cbStatusOfertaPesquisa.ItemIndex = 2 then
              begin
                //referente ao cabeçalho
                AddWhere(' PCOFERTAPROGRAMADAC.DTREJEICAO IS NOT NULL ');
              end;

              if frmOfertas.cbStatusOfertaPesquisa.ItemIndex = 3 then
              begin
                //referente ao cabeçalho
                AddWhere(' PCOFERTAPROGRAMADAC.DTREJEICAO IS NULL ');
                AddWhere(' PCOFERTAPROGRAMADAC.DTLIBERACAO IS NULL ');
              end;

              if frmOfertas.cbStatusOfertaPesquisa.ItemIndex = 4 then
                AddWhere(' PCOFERTAPROGRAMADAC.DTCANCEL IS NOT NULL ')
              else
                AddWhere(' PCOFERTAPROGRAMADAC.DTCANCEL IS NULL ');

            end
            else
            begin
              AddWhere(' PCOFERTAPROGRAMADAC.DTCANCEL IS NULL ');
            end;

            Open;

            if IsEmpty then
              dmLogin.MensagemErroAbort('Não existem dados a serem exibidos!')
            else
              dmRelatoriosOfertas.ppVendaItemOferta.Print;
          end;
        end;

      end;
    end else
      dmLogin.MensagemErroAbort('Não é possível emitir oferta que não foi aprovada!');
end;

procedure TfrmtipoRelatorio.FormShow(Sender: TObject);
begin
  rgTipoRelatorio.ItemIndex:= 0;
end;

end.
