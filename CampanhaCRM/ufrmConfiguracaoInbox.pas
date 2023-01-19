unit ufrmConfiguracaoInbox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters,cxContainer, cxEdit,
  Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, Vcl.ComCtrls, dxCore, cxDateUtils, cxCheckBox,
  cxSpinEdit, cxTimeEdit, cxDropDownEdit, cxCalendar, Vcl.ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, CampoPesquisa, cxLabel, cxMaskEdit,
  cxDBEdit, Vcl.StdCtrls, cxButtons, cxGroupBox, cxPC, cxCheckComboBox,
  cxCurrencyEdit, cxRadioGroup, DatasPadroes, System.Actions, Vcl.ActnList,
  MemDS, DBAccess, Uni, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxCoreClasses, dxHashUtils, dxSpreadSheetCore, dxSpreadSheetCoreHistory,
  dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules,
  dxSpreadSheetClasses, dxSpreadSheetContainers, dxSpreadSheetFormulas,
  dxSpreadSheetHyperlinks, dxSpreadSheetFunctions, dxSpreadSheetGraphics,
  dxSpreadSheetPrinting, dxSpreadSheetTypes, dxSpreadSheetUtils, dxSpreadSheet,
  cxProgressBar, dxSkinsdxStatusBarPainter, dxStatusBar,
  cxGridBandedTableView, cxGridDBBandedTableView, cxButtonEdit, ufrmDetalheCampanhaCRM,
  dxSkinsCore, dxSkinMetropolis, dxSkinVisualStudio2013Light,
  dxSkinscxPCPainter, dxBarBuiltInMenu, ufrmRelatoriosCRM, Datasnap.DBClient,
  dxSkinMetropolisDark, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2013White, dxGDIPlusClasses,
  dxSkinOffice2016Dark;

type
  TfrmConfiguracaoInbox = class(TForm)
    pnl1: TPanel;
    cxButton1: TcxButton;
    cxGroupBox1: TcxGroupBox;
    btnClienteVarejoAtacado: TcxButton;
    cxLabel1: TcxLabel;
    btnViewsMercafacil: TcxButton;
    cxLabel2: TcxLabel;
    btnBloqueioOfertaRegiao: TcxButton;
    btnSequenceCliente: TcxButton;
    cxLabel4: TcxLabel;
    txtInicial: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    btnBloqueioOfertaEmbalagem: TcxButton;
    txtClivarejo: TcxCurrencyEdit;
    txtCliatacado: TcxCurrencyEdit;
    procedure cxButton1Click(Sender: TObject);
    procedure btnViewsMercafacilClick(Sender: TObject);
    procedure btnSequenceClienteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnClienteVarejoAtacadoClick(Sender: TObject);
    procedure btnBloqueioOfertaRegiaoClick(Sender: TObject);
    procedure btnBloqueioOfertaEmbalagemClick(Sender: TObject);
  private
    { Private declarations }
    procedure consultaClientesPadrao;
  public
    { Public declarations }
  end;

var
  frmConfiguracaoInbox: TfrmConfiguracaoInbox;

implementation

uses
  uDMCampanhaCRM, uLogin, udmConfiguracaoInbox;

{$R *.dfm}

procedure TfrmConfiguracaoInbox.consultaClientesPadrao;
begin
  txtClivarejo.Value := dmConfiguracaoInbox.consultaClientePadraoCRM('VAREJO');
  txtCliatacado.Value := dmConfiguracaoInbox.consultaClientePadraoCRM('ATACADO');
end;

procedure TfrmConfiguracaoInbox.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmConfiguracaoInbox.FormShow(Sender: TObject);
begin
  txtInicial.Text := IntToStr(dmConfiguracaoInbox.consultaUltimoCodcli);
  consultaClientesPadrao;
end;

procedure TfrmConfiguracaoInbox.btnClienteVarejoAtacadoClick(Sender: TObject);
begin

  if ( not dmConfiguracaoInbox.sequenceExiste('SEQ_I9PROXNUMCLI') ) then
    DmLogin.MensagemErroAbort('A sequence de codcli não está criada, favor criá-la primeiro.');

  if ( txtClivarejo.Value > 0 ) or ( txtCliatacado.Value > 0 ) then
  begin
    if ( not dmLogin.MensagemPergunta('Os clientes padrão ja existem, deseja recria-los?') ) then
      Exit;
  end;

  DmLogin.MensagemInformacao(dmConfiguracaoInbox.criarClientePadraoCRM);
  consultaClientesPadrao;

end;

procedure TfrmConfiguracaoInbox.btnSequenceClienteClick(Sender: TObject);
begin
  if (txtInicial.Text = '') or ( StrToInt(txtInicial.Text) < dmConfiguracaoInbox.consultaUltimoCodcli ) then
    dmLogin.MensagemErroAbort('Informe um numero inicial valido!');

  if ( dmConfiguracaoInbox.sequenceExiste('SEQ_I9PROXNUMCLI') ) then
  begin

    if ( dmLogin.MensagemPergunta('A sequence ja existe, deseja dropa-la e criar novamente?') ) then
      dmConfiguracaoInbox.droparSequence('SEQ_I9PROXNUMCLI')
    else
      Exit;
  end;

  dmLogin.MensagemInformacao(dmConfiguracaoInbox.criarSequenceCodcli( txtInicial.Text ));
end;

procedure TfrmConfiguracaoInbox.btnBloqueioOfertaEmbalagemClick(
  Sender: TObject);
begin
  dmLogin.MensagemInformacao(dmConfiguracaoInbox.criarTriggerEmbalagem);
end;

procedure TfrmConfiguracaoInbox.btnBloqueioOfertaRegiaoClick(
  Sender: TObject);
begin
  dmLogin.MensagemInformacao(dmConfiguracaoInbox.criarTriggerRegiao);
end;

procedure TfrmConfiguracaoInbox.btnViewsMercafacilClick(Sender: TObject);
begin
  dmLogin.MensagemInformacao( dmConfiguracaoInbox.criarViewsMercaFacil );
end;

end.
