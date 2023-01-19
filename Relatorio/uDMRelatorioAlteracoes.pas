unit uDMRelatorioAlteracoes;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni,
  Datasnap.DBClient, Datasnap.Provider, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppCtrls, ppVar, ppPrnabl, ppBands, ppCache,
  ppDesignLayer, ppParameter;

type
  TDMRelatorioAlteracoes = class(TDataModule)
    qrRelatorioAlteracoes: TUniQuery;
    qrRelatorioAlteracoesCODFILIAL: TStringField;
    qrRelatorioAlteracoesCODPROD: TLargeintField;
    qrRelatorioAlteracoesCODAUXILIAR: TFloatField;
    qrRelatorioAlteracoesDATA: TDateTimeField;
    qrRelatorioAlteracoesMAQUINA: TStringField;
    qrRelatorioAlteracoesTERMINAL: TStringField;
    qrRelatorioAlteracoesUSUARIO: TStringField;
    qrRelatorioAlteracoesPROGRAMA: TStringField;
    qrRelatorioAlteracoesCUSTOFIN: TFloatField;
    qrRelatorioAlteracoesCUSTOFINANT: TFloatField;
    qrRelatorioAlteracoesPVENDA: TFloatField;
    qrRelatorioAlteracoesPVENDAANT: TFloatField;
    qrRelatorioAlteracoesPTABELA: TFloatField;
    qrRelatorioAlteracoesPTABELAANT: TFloatField;
    qrRelatorioAlteracoesQTMINIMAATACADO: TFloatField;
    qrRelatorioAlteracoesQTMINIMAATACADOANT: TFloatField;
    qrRelatorioAlteracoesMARGEMATAC: TFloatField;
    qrRelatorioAlteracoesMARGEMATACANT: TFloatField;
    qrRelatorioAlteracoesMARGEMVAREJO: TFloatField;
    qrRelatorioAlteracoesMARGEMVAREJOANT: TFloatField;
    qrRelatorioAlteracoesMARGEMMINVAREJO: TFloatField;
    qrRelatorioAlteracoesMARGEMMINVAREJOANT: TFloatField;
    qrRelatorioAlteracoesMARGEMMINATAC: TFloatField;
    qrRelatorioAlteracoesMARGEMMINATACANT: TFloatField;
    ppRelatorioAlteracoes: TppDBPipeline;
    dsRelatorioAlteracoes: TDataSource;
    prRelatorioAlteracoes: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel11: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine1: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    qrRelatorioAlteracoesPVENDAATAC: TFloatField;
    qrRelatorioAlteracoesPVENDAATACANT: TFloatField;
    qrRelatorioAlteracoesPTABELAATAC: TFloatField;
    qrRelatorioAlteracoesPTABELAATACANT: TFloatField;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppLine2: TppLine;
    ppSystemVariable2: TppSystemVariable;
    qrRelatorioAlteracoesDESCRICAO: TStringField;
    ppDBText26: TppDBText;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    qrRelatorioAlteracoesVLVERBA: TFloatField;
    qrRelatorioAlteracoesVLVERBAANT: TFloatField;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  DMRelatorioAlteracoes: TDMRelatorioAlteracoes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uLogin;

{$R *.dfm}

{ TDMRelatorioAlteracoes }





end.
