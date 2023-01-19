unit uFrmImagemCotacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JPeg, IdHTTP,
  Vcl.OleCtrls, SHDocVw, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinMetropolis,
  dxSkinVisualStudio2013Light, cxImage;

type
  TfrmImagemCotacao = class(TForm)
    cxImage1: TcxImage;
  private
    procedure GetImageByUrl(URL: string; APicture: TPicture);

    { Private declarations }
  public
    procedure Exibir(pURL: string);
    { Public declarations }
  end;

var
  frmImagemCotacao: TfrmImagemCotacao;

implementation

{$R *.dfm}


procedure TfrmImagemCotacao.Exibir(pURL:string);
begin
   GetImageByUrl(pURL, cxImage1.Picture);
end;

procedure TfrmImagemCotacao.GetImageByUrl(URL: string; APicture: TPicture);
var
  Jpeg: TJPEGImage;
  Strm: TMemoryStream;
  vIdHTTP : TIdHTTP;
begin
  Screen.Cursor := crHourGlass;
  Jpeg := TJPEGImage.Create;
  Strm := TMemoryStream.Create;
  vIdHTTP := TIdHTTP.Create(nil);
  vIdHTTP.Request.UserAgent := 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko/20100101 Firefox/12.0';

  try
    vIdHTTP.Get(URL, Strm);
    if (Strm.Size > 0) then
    begin
      Strm.Position := 0;
      Jpeg.LoadFromStream(Strm);
      APicture.Assign(Jpeg);
    end;
  finally
    Strm.Free;
    Jpeg.Free;
    vIdHTTP.Free;
    Screen.Cursor := crDefault;
  end;
end;

end.
