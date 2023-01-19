unit ufrmDetalheCampanhaCRM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinMetropolis,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCalendar,
  cxCheckBox, cxCurrencyEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, uDMCampanhaCRM, dxSkinMetropolisDark,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2013White,
  dxSkinOffice2016Dark;

type
  TfrmDetalheCampanhaCRM = class(TForm)
    cxGridOfertasCadastradas: TcxGrid;
    tblOfertas: TcxGridDBTableView;
    tblOfertasCODOFERTA: TcxGridDBColumn;
    tblOfertasCODFILIAL: TcxGridDBColumn;
    tblOfertasDESCOFERTA: TcxGridDBColumn;
    tblOfertasQTITENS: TcxGridDBColumn;
    tblOfertasDTINICIALSUGESTAO: TcxGridDBColumn;
    tblOfertasDTFINALSUGESTAO: TcxGridDBColumn;
    tblOfertasGERAVERBA: TcxGridDBColumn;
    tblItensCRM: TcxGridDBTableView;
    cxGridOfertasLevel1: TcxGridLevel;
    pnl1: TPanel;
    btnAprovar: TcxButton;
    tblItensCRMCODPRODPRINC: TcxGridDBColumn;
    tblItensCRMDESCRICAO: TcxGridDBColumn;
    tblItensCRMPERCDESCONTO: TcxGridDBColumn;
    tblItensCRMVLVERBAUNITARIO: TcxGridDBColumn;
    tblItensCRMCUSTOFIN: TcxGridDBColumn;
    tblItensCRMPVENDACRM: TcxGridDBColumn;
    tblItensCRMMARGEMFUTURA: TcxGridDBColumn;
    tblItensCRMMARGEMMIN: TcxGridDBColumn;
    procedure btnAprovarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheCampanhaCRM: TfrmDetalheCampanhaCRM;

implementation

{$R *.dfm}

procedure TfrmDetalheCampanhaCRM.btnAprovarClick(Sender: TObject);
begin
  Close;
end;

end.
