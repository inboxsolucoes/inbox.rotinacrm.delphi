unit ufrmLayoutImpressaoCRM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinMetropolis,
  dxSkinVisualStudio2013Light, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxRadioGroup, uDMCampanhaCRM;

type
  TfrmLayoutImpressaoCRM = class(TForm)
    pnl1: TPanel;
    cxButton1: TcxButton;
    rgTipoRelatorio: TcxRadioGroup;
    cxButton2: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLayoutImpressaoCRM: TfrmLayoutImpressaoCRM;

implementation

{$R *.dfm}

procedure TfrmLayoutImpressaoCRM.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmLayoutImpressaoCRM.cxButton2Click(Sender: TObject);
begin
  if rgTipoRelatorio.EditValue = 'EXCEL' then
    DMCampanhaCRM.ppRelCampanhaExcel.Print
  else
    DMCampanhaCRM.ppRelCampanha.Print;
end;

end.
