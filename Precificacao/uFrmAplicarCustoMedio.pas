unit uFrmAplicarCustoMedio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxCurrencyEdit, MemDS, DBAccess, Uni,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, System.Actions,
  Vcl.ActnList, cxCheckBox, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCheckComboBox, dxSkinMetropolis, dxSkinVisualStudio2013Light;

type
  TfrmAplicarCustoMedio = class(TForm)
    gbCustoMedio: TcxGroupBox;
    btnCancelar: TcxButton;
    grdItens: TcxGrid;
    tblCustoMedio: TcxGridDBBandedTableView;
    tblCustoMedioCODPROD: TcxGridDBBandedColumn;
    tblCustoMedioDESCRICAO: TcxGridDBBandedColumn;
    tblCustoMedioCUSTOREALATUAL: TcxGridDBBandedColumn;
    tblCustoMedioCUSTOREALANT: TcxGridDBBandedColumn;
    tblCustoMedioCUSTOREPATUAL: TcxGridDBBandedColumn;
    tblCustoMedioCUSTOREPANT: TcxGridDBBandedColumn;
    tblCustoMedioCUSTOREALSEMSTATUAL: TcxGridDBBandedColumn;
    tblCustoMedioCUSTOREALSEMSTANT: TcxGridDBBandedColumn;
    tblCustoMedioCUSTOFINATUAL: TcxGridDBBandedColumn;
    tblCustoMedioCUSTOFINANT: TcxGridDBBandedColumn;
    tblCustoMedioQTESTGER: TcxGridDBBandedColumn;
    tblCustoMedioCUSTODOLARATUAL: TcxGridDBBandedColumn;
    tblCustoMedioCUSTODOLARANT: TcxGridDBBandedColumn;
    lvlItens: TcxGridLevel;
    btnAplicar: TcxButton;
    ActionList1: TActionList;
    actAplicarCustoMedioF1: TAction;
    actCancelarF2: TAction;
    tblCustoMedioCODFILIAL: TcxGridDBBandedColumn;
    procedure actAplicarCustoMedioF1Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActionList1Execute(Action: TBasicAction; var Handled: Boolean);
    procedure actCancelarF2Execute(Sender: TObject);
  private
    { Private declarations }
    FisCluster:Boolean;
  public
    { Public declarations }
    procedure setCluster;
  end;

var
  frmAplicarCustoMedio: TfrmAplicarCustoMedio;

implementation

{$R *.dfm}

uses uLogin, uDMPrecificacao, ufrmPrecificacao;

procedure TfrmAplicarCustoMedio.actAplicarCustoMedioF1Execute(Sender: TObject);
begin
  if (MessageDlg('Deseja replicar o custo médio para os produtos?', mtConfirmation, [mbOK, mbCancel], 0) = mrOk) then
  begin

    if frmPrecificacao.vClusterSelecionado then
    begin
      DMPrecificacao.AplicarCustoMedioCluster;
    end
    else
    begin
      DMPrecificacao.AplicarCustoMedioFamilia;
    end;

    Application.MessageBox('Processo realizado com sucesso!', 'Atenção', MB_ICONINFORMATION);
    Close;
  end;
end;


procedure TfrmAplicarCustoMedio.actCancelarF2Execute(Sender: TObject);
begin
  Close;
end;

procedure TfrmAplicarCustoMedio.ActionList1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
  Close;
end;

procedure TfrmAplicarCustoMedio.FormShow(Sender: TObject);
var
   I, IndiceFilialAtual :integer;
   vsFiliais :TStringList;
begin
  if FisCluster then
  begin
    tblCustoMedio.DataController.DataSource := DMPrecificacao.dsCustoMedioCluster;
    DMPrecificacao.qryCustoMedioCluster.Close;
    DMPrecificacao.qryCustoMedioCluster.RestoreSQL;
    DMPrecificacao.qryCustoMedioCluster.ParamByName('CODGRUPO').AsInteger := DMPrecificacao.qryEmbCluster.FieldByName('CODGRUPO').AsInteger;
    DMPrecificacao.qryCustoMedioCluster.ParamByName('CODPRODPRINC').AsInteger := DMPrecificacao.qryEmbCluster.FieldByName('CODPRODPRINC').AsInteger;
    DMPrecificacao.qryCustoMedioCluster.Open;
  end
  else
  begin
    tblCustoMedio.DataController.DataSource := DMPrecificacao.dsCustoMedio;
    DMPrecificacao.qryCustoMedio.Close;
    DMPrecificacao.qryCustoMedio.RestoreSQL;
    DMPrecificacao.qryCustoMedio.AddWhere('PCEST.CODFILIAL IN ('+ frmPrecificacao.getFiliaisSelecionadas +')');
    DMPrecificacao.qryCustoMedio.ParamByName('CODPRODPRINC').AsInteger := DMPrecificacao.qryEmbalagens.FieldByName('CODPRODPRINC').AsInteger;
    DMPrecificacao.qryCustoMedio.Open;
  end;
end;




procedure TfrmAplicarCustoMedio.setCluster;
begin
  self.FisCluster := True;
end;

end.
