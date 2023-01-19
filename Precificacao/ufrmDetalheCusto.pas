unit ufrmDetalheCusto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,cxGroupBox, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  System.Actions, MemDS, DBAccess,
  Uni, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Data.DB, Vcl.ActnList, Vcl.ComCtrls, dxCore, cxDateUtils, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, DatasPadroes, DateUtils,
  cxCurrencyEdit, dxSkinMetropolis, dxSkinVisualStudio2013Light;

type
  TfrmDetalheCusto = class(TForm)
    cxBox: TcxGroupBox;
    btnCancelar: TcxButton;
    qryDetalheCusto: TUniQuery;
    dsDetalheCusto: TDataSource;
    Label1: TLabel;
    edtCustoFin: TcxCurrencyEdit;
    edtVlDescCusto: TcxCurrencyEdit;
    edtPercDescCusto: TcxCurrencyEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtCustoFinal: TcxCurrencyEdit;
    lbl1: TLabel;
    Label4: TLabel;
    edtPercImpostoFederal: TcxCurrencyEdit;
    edtVlImpostoFederal: TcxCurrencyEdit;
    edtVlImpostoEstadual: TcxCurrencyEdit;
    edtPercImpostoEstadual: TcxCurrencyEdit;
    Label5: TLabel;
    edtVlComissao: TcxCurrencyEdit;
    edtPercComissao: TcxCurrencyEdit;
    Label6: TLabel;
    edtVlMargemIdeal: TcxCurrencyEdit;
    edtPercMargemIdeal: TcxCurrencyEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edtPrecoSugerido: TcxCurrencyEdit;
    qryDetalheCustoCODAUXILIAR: TFloatField;
    qryDetalheCustoCODPROD: TIntegerField;
    qryDetalheCustoDESCRICAO: TStringField;
    qryDetalheCustoCUSTOFIN: TFloatField;
    qryDetalheCustoPERCDESCCUSTO: TFloatField;
    qryDetalheCustoVLDESCCUSTO: TFloatField;
    qryDetalheCustoPERCCOMISSAO: TFloatField;
    qryDetalheCustoVLCOMISSAO: TFloatField;
    qryDetalheCustoPERCIMPOSTOESTADUAL: TFloatField;
    qryDetalheCustoVLIMPOSTOESTADUAL: TFloatField;
    qryDetalheCustoPERCIMPOSTOFEDERAL: TFloatField;
    qryDetalheCustoVLIMPOSTOFEDERAL: TFloatField;
    qryDetalheCustoPERCMARGEM: TFloatField;
    qryDetalheCustoVLMARGEM: TFloatField;
    qryDetalheCustoVLSUGESTAO: TFloatField;
    qryDetalheCustoVLCUSTOFINAL: TFloatField;
    procedure actFecharExecute(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Exibir(pCodAuxiliar: String; pCodFilial:String);
  end;

var
  frmDetalheCusto: TfrmDetalheCusto;
  vCodfilial:string;
  vCodAuxiliar:string;

implementation

{$R *.dfm}

uses uLogin;

{ TfrmDetalheCusto }

procedure TfrmDetalheCusto.actFecharExecute(Sender: TObject);
begin
  qryDetalheCusto.Close;
  Close;
end;

procedure TfrmDetalheCusto.Exibir(pCodAuxiliar: String; pCodFilial: String);
begin
  vCodfilial := pCodFilial;
  vCodAuxiliar := pCodAuxiliar;

  qryDetalheCusto.Close;
  qryDetalheCusto.ParamByName('CODAUXILIAR').AsString := pCodAuxiliar;
  qryDetalheCusto.ParamByName('CODFILIAL').AsString := pCodFilial;
  qryDetalheCusto.Open;

  if qryDetalheCusto.IsEmpty then
    DmLogin.MensagemErroAbort('Não foi possível detalhar a sugestão do produto.');

  edtCustoFin.Value := qryDetalheCustoCUSTOFIN.Value;
  edtVlDescCusto.Value := qryDetalheCustoVLDESCCUSTO.Value;
  edtPercDescCusto.Value := qryDetalheCustoPERCDESCCUSTO.Value;

  edtCustoFinal.Value := qryDetalheCustoVLCUSTOFINAL.Value;

  edtPercImpostoFederal.Value := qryDetalheCustoPERCIMPOSTOFEDERAL.Value;
  edtVlImpostoFederal.Value := qryDetalheCustoVLIMPOSTOFEDERAL.Value;
  edtPercImpostoEstadual.Value := qryDetalheCustoPERCIMPOSTOESTADUAL.Value;
  edtVlImpostoEstadual.Value := qryDetalheCustoVLIMPOSTOESTADUAL.Value;
  edtPercComissao.Value := qryDetalheCustoPERCCOMISSAO.Value;
  edtVlComissao.Value := qryDetalheCustoVLCOMISSAO.Value;
  edtPercMargemIdeal.Value := qryDetalheCustoPERCMARGEM.Value;
  edtVlMargemIdeal.Value := qryDetalheCustoVLMARGEM.Value;

  edtPrecoSugerido.Value := qryDetalheCustoVLSUGESTAO.Value;

  qryDetalheCusto.Close;
end;

end.
