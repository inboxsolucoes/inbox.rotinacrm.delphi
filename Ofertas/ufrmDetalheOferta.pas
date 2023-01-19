unit ufrmDetalheOferta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore,cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCalendar, cxCheckBox,
  cxCurrencyEdit, Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, dxSkinMetropolis,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter;

type
  TfrmDetalheOferta = class(TForm)
    cxGridOfertasCadastradas: TcxGrid;
    tblOfertas: TcxGridDBTableView;
    tblOfertasCODOFERTA: TcxGridDBColumn;
    tblOfertasCODFILIAL: TcxGridDBColumn;
    tblOfertasDESCOFERTA: TcxGridDBColumn;
    tblOfertasQTITENS: TcxGridDBColumn;
    tblOfertasDTINICIALSUGESTAO: TcxGridDBColumn;
    tblOfertasDTFINALSUGESTAO: TcxGridDBColumn;
    tblOfertasGERAVERBA: TcxGridDBColumn;
    tblItensOferta: TcxGridDBTableView;
    tblItensOfertaCODOFERTA: TcxGridDBColumn;
    tblItensOfertaCODITEM: TcxGridDBColumn;
    tblItensOfertaCODPROD: TcxGridDBColumn;
    tblItensOfertaDESCRICAO: TcxGridDBColumn;
    tblItensOfertaCODAUXILIAR: TcxGridDBColumn;
    tblItensOfertaVLOFERTA: TcxGridDBColumn;
    tblItensOfertaVLOFERTAATAC: TcxGridDBColumn;
    tblItensOfertaMARGEMFUTURA_OFERTA: TcxGridDBColumn;
    tblItensOfertaDIFMARGEMATAC: TcxGridDBColumn;
    tblItensOfertaMARGEMMINATAC: TcxGridDBColumn;
    tblItensOfertaGERAVERBA: TcxGridDBColumn;
    tblItensOfertaVLUNITARIOVERBA: TcxGridDBColumn;
    tblItensOfertaVLVERBAMARGEMMIN: TcxGridDBColumn;
    tblItensOfertaPVENDA: TcxGridDBColumn;
    tblItensOfertaPVENDAATAC: TcxGridDBColumn;
    tblItensOfertaCUSTOFIN: TcxGridDBColumn;
    tblItensOfertaQTESTGER: TcxGridDBColumn;
    tblItensOfertaESTOQUEEMDIAS: TcxGridDBColumn;
    tblItensOfertaDATAULTIMACOTACAO: TcxGridDBColumn;
    tblItensOfertaPVENDACONCORRENTE: TcxGridDBColumn;
    tblItensOfertaPVENDAATACCONCORRENTE: TcxGridDBColumn;
    tblItensOfertaTIPOVERBA: TcxGridDBColumn;
    cxGridOfertasLevel1: TcxGridLevel;
    pnl1: TPanel;
    btnAprovar: TcxButton;
    tblItensOfertaMOTIVOOFERTA: TcxGridDBColumn;
    procedure tblItensOfertaVLUNITARIOVERBAStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure btnAprovarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    procedure CarregarPreferencias;
    procedure SalvarPreferencias;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheOferta: TfrmDetalheOferta;

implementation

uses
  uDMOfertas, uLogin;

{$R *.dfm}

procedure TfrmDetalheOferta.btnAprovarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDetalheOferta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SalvarPreferencias;
end;

procedure TfrmDetalheOferta.FormShow(Sender: TObject);
begin
  CarregarPreferencias;
end;

procedure TfrmDetalheOferta.tblItensOfertaVLUNITARIOVERBAStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
 AView: TcxGridDBTableView;
begin
  AView := Sender as TcxGridDBTableView;

  if  ARecord.Values[AView.GetColumnByFieldName('GERAVERBA').Index] = 'S' then
  begin
       if ARecord.Values[AView.GetColumnByFieldName('VLVERBAMARGEMMIN').Index] > 0 then begin
      if  ARecord.Values[AView.GetColumnByFieldName('VLUNITARIOVERBA').Index] < ARecord.Values[AView.GetColumnByFieldName('VLVERBAMARGEMMIN').Index] then begin
        AStyle := DmLogin.cxStyleColunaVermelha;
      end else begin
        AStyle := DmLogin.cxStyleColunaVerde;
      end;
    end;
  end;
end;

procedure TfrmDetalheOferta.CarregarPreferencias;
begin
  tblItensOferta.RestoreFromStream(DmLogin.CarregarGrid('DET_OFERTA'),  True, False, [gsoUseFilter, gsoUseSummary], '9810');
end;

procedure TfrmDetalheOferta.SalvarPreferencias;
var
  vStream : TMemoryStream;
begin
  vStream := TMemoryStream.Create;
  tblItensOferta.StoreToStream(vStream, [gsoUseFilter, gsoUseSummary], '9810');
  DmLogin.SalvarGrid('DET_OFERTA', vStream);
  vStream.Position := 0;
end;

end.
