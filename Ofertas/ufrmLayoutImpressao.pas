unit ufrmLayoutImpressao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinMetropolis,
  dxSkinVisualStudio2013Light, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxRadioGroup, udmRelatoriosOfertas;

type
  TfrmLayoutImpressao = class(TForm)
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
  frmLayoutImpressao: TfrmLayoutImpressao;

implementation

{$R *.dfm}

procedure TfrmLayoutImpressao.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmLayoutImpressao.cxButton2Click(Sender: TObject);
begin
  if rgTipoRelatorio.EditValue = 'EXCEL' then
    dmRelatoriosOfertas.ppVerbasOferta.Print
  else
    dmRelatoriosOfertas.ppVerbasOfertaPDF.Print;
end;

end.
