unit ufrmDetalhesCustoEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,Vcl.Menus, cxProgressBar, Vcl.StdCtrls, cxButtons,
  cxGroupBox, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, cxCurrencyEdit,
  dxSkinMetropolis, dxSkinVisualStudio2013Light;

type
  TfrmCustoEstoque = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGridCusto: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    btnCancelar: TcxButton;
    ActionList1: TActionList;
    actFechar: TAction;
    qryCusto: TUniQuery;
    dsCusto: TDataSource;
    cxGridCustoCODFILIAL: TcxGridDBColumn;
    cxGridCustoCODPROD: TcxGridDBColumn;
    cxGridCustoQTESTGER: TcxGridDBColumn;
    cxGridCustoQTRESERV: TcxGridDBColumn;
    cxGridCustoQTINDENIZ: TcxGridDBColumn;
    cxGridCustoCUSTOULTENT: TcxGridDBColumn;
    cxGridCustoCUSTOFIN: TcxGridDBColumn;
    cxGridCustoCUSTOREAL: TcxGridDBColumn;
    cxGridCustoDESCRICAO: TcxGridDBColumn;
    cxGridCustoMARGEMVAREJO: TcxGridDBColumn;
    cxGridCustoMARGEMATAC: TcxGridDBColumn;
    cxGridCustoQTMINIMAATACADO: TcxGridDBColumn;
    cxGridCustoFATORPRECO: TcxGridDBColumn;
    cxGridCustoPTABELA: TcxGridDBColumn;
    cxGridCustoPVENDA: TcxGridDBColumn;
    cxGridCustoPTABELAATAC: TcxGridDBColumn;
    cxGridCustoPVENDAATAC: TcxGridDBColumn;
    cxGridCustoCODAUXILIAR: TcxGridDBColumn;
    procedure actFecharExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Exibir(pCodprod:Integer);
    procedure ExibirCluster(pCodCluster, pCodprod:Integer);
  end;

var
  frmCustoEstoque: TfrmCustoEstoque;

implementation

{$R *.dfm}

uses uLogin;

procedure TfrmCustoEstoque.actFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmCustoEstoque.Exibir(pCodprod: Integer);
begin
  qryCusto.Close;
  qryCusto.RestoreSQL;
  qryCusto.ParamByName('CODFUNC').AsInteger := DmLogin.Matricula;
  qryCusto.ParamByName('CODPROD').AsInteger := pCodprod;
  qryCusto.Open;
end;


procedure TfrmCustoEstoque.ExibirCluster(pCodCluster,pCodprod: Integer);
begin
  qryCusto.Close;
  qryCusto.RestoreSQL;
  qryCusto.AddWhere('PCEST.CODFILIAL IN (SELECT CODFILIAL FROM I9GRUPOFILIALI WHERE CODGRUPO = :CODGRUPO)');
  qryCusto.ParamByName('CODGRUPO').AsInteger := pCodCluster;
  qryCusto.ParamByName('CODFUNC').AsInteger := DmLogin.Matricula;
  qryCusto.ParamByName('CODPROD').AsInteger := pCodprod;
  qryCusto.Open;
end;

end.
