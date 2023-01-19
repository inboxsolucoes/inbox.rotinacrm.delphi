unit uDMCampanhaCRM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni,
  Datasnap.DBClient, MidasLib, dxSpreadSheet,
  cxProgressBar, ppParameter, ppDesignLayer, ppModule, raCodMod, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppDB, ppDBPipe, System.Variants;

type
  TDMCampanhaCRM = class(TDataModule)
    qrAux: TUniQuery;
    dsClientesCampanha: TUniDataSource;
    cdsProdutosIncluidos: TClientDataSet;
    cdsProdutosIncluidosCODPROD: TIntegerField;
    cdsProdutosIncluidosDESCRICAO: TStringField;
    cdsProdutosIncluidosPERCDESC: TFloatField;
    dsCondicoesCampanha: TDataSource;
    cdsProdutosIncluidosNUMSEQ: TIntegerField;
    qrGravarCampanha: TUniQuery;
    qrConsultaCampanha: TUniQuery;
    qrConsultaCampanhaDESCRICAOCAMPANHACRM: TStringField;
    qrConsultaCampanhaDTINICIAL: TDateTimeField;
    qrConsultaCampanhaDTFINAL: TDateTimeField;
    dsConsultaCampanha: TDataSource;
    qrConsultaCampanhaCODFILIAL: TStringField;
    qrConsultaCampanhaSTATUS: TStringField;
    qrConsultaCampanhaTIPO: TStringField;
    qrConsultaCampanhaCODCAMPANHACRM: TLargeintField;
    qrGravarI9CampanhaCRM: TUniQuery;
    qrExcluirCampanhaCRM: TUniQuery;
    qrInserirGrupoCRM: TUniQuery;
    qrConsultaCampanhaNOVOSCLIENTES: TStringField;
    ppRelVendaProd: TppReport;
    ppParameterList9: TppParameterList;
    qryRelVendaProd: TUniQuery;
    dsRelVendaProd: TDataSource;
    ppDBRelVendaProd: TppDBPipeline;
    cdsProdutosIncluidosVLVERBAUNITARIO: TFloatField;
    cdsProdutosIncluidosCODPRODPRINC: TIntegerField;
    qrConsultaCampanhaTODOSCLIENTES: TStringField;
    qrPesquisaProdutos: TUniQuery;
    dsPesquisaProdutos: TUniDataSource;
    qrObterDadosProduto: TUniQuery;
    cdsProdutosIncluidosPVENDA: TCurrencyField;
    cdsProdutosIncluidosPVENDAATAC: TCurrencyField;
    cdsProdutosIncluidosPVENDACRM: TCurrencyField;
    cdsProdutosIncluidosPVENDACRMARREDONDADO: TCurrencyField;
    cdsProdutosIncluidosCUSTOFIN: TCurrencyField;
    cdsProdutosIncluidosMARGEMFUTURACRM: TCurrencyField;
    cdsProdutosIncluidosDIFMARGEMCRMATACADO: TCurrencyField;
    cdsProdutosIncluidosCODFILIAL: TStringField;
    qrDadosCampanhaEditar: TUniQuery;
    cdsProdutosIncluidosMARGEMMIN: TFloatField;
    cdsProdutosIncluidosVLVERBAMARGEMMIN: TFloatField;
    cdsProdutosIncluidosTEMFAMILIA: TStringField;
    qrConsultaCampanhaDTREBAIXACUSTO: TDateTimeField;
    qrConsultaCampanhaQTITENS: TFloatField;
    prcGerarVerbaCampanha: TUniStoredProc;
    qryRelApuracao: TUniQuery;
    dsRelApuracao: TDataSource;
    ppDBRelAuracao: TppDBPipeline;
    ppRelApuracao: TppReport;
    ppParameterList1: TppParameterList;
    ppRelApuracaoComprador: TppReport;
    ppParameterList2: TppParameterList;
    qrPossuiCRMVigente: TUniQuery;
    qryInsereClienteGrupo: TUniQuery;
    cdsFiliaisIncluidas: TClientDataSet;
    cdsFiliaisIncluidasCODIGO: TStringField;
    cdsFiliaisIncluidasRAZAOSOCIAL: TStringField;
    cdsFiliaisIncluidasINCLUIDO: TStringField;
    dsFiliaisIncluidas: TDataSource;
    qrFiliaisDisponiveis: TUniQuery;
    dsFiliaisDisponiveis: TDataSource;
    cdsFiliaisDisponiveis: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    cdsFiliaisIncluidasCODCAMPANHACRM: TIntegerField;
    cdsProdutosIncluidosCODCAMPANHACRM: TIntegerField;
    qrConsultaCampanhaCODTABLOIDECRM: TLargeintField;
    qrRelCampanha: TUniQuery;
    dsRelCampanha: TDataSource;
    ppRelCampanha: TppReport;
    ppParameterList3: TppParameterList;
    ppDBRelCampanha: TppDBPipeline;
    qrConsultaCampanhaDTAPROVACAO: TDateTimeField;
    qrConsultaCampanhaDTREJEICAO: TDateTimeField;
    qrConsultaCampanhaDTEXCLUSAO: TDateTimeField;
    qrConsultaCampanhaPOSSUIVERBA: TStringField;
    qrConsultaCampanhaSELECIONADO: TStringField;
    cdsProdutosIncluidosQTEST: TFloatField;
    qrDetalhesCampanhaCRM: TUniQuery;
    dsDetalhesCampanhaCRM: TDataSource;
    cdsProdutosIncluidosPVENDAORIGINAL: TFloatField;
    cdsProdutosIncluidosQTUNIT: TFloatField;
    cdsProdutosIncluidosPERCMARGEMDESEJADA: TFloatField;
    cdsProdutosIncluidosVLVERBAUNITARIOORIGINAL: TFloatField;
    dsVerbasFornecedor: TDataSource;
    cdsVerbasFornecedor: TClientDataSet;
    cdsVerbasFornecedorCODFORNEC: TIntegerField;
    cdsVerbasFornecedorFORNECEDOR: TStringField;
    cdsVerbasFornecedorTIPOVERBA: TStringField;
    cdsVerbasFornecedorVLVERBA: TCurrencyField;
    cdsVerbasFornecedorDTAPURACAOVERBAINI: TDateField;
    cdsVerbasFornecedorDTAPURACAOVERBAFIM: TDateField;
    cdsVerbasFornecedorTIPOPAGTOVERBA: TStringField;
    cdsVerbasFornecedorCODFILIAL: TStringField;
    cdsProdutosIncluidosCODFORNECPRINC: TFloatField;
    cdsProdutosIncluidosFORNECEDOR: TStringField;
    qrGravaVerba: TUniQuery;
    cdsVerbasFornecedorCODCAMPANHACRM: TFloatField;
    ppHeaderBand5: TppHeaderBand;
    ppLabelTituloProd: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppDetailBand5: TppDetailBand;
    ppDBText13: TppDBText;
    ppDBText15: TppDBText;
    ppDBTextPRODPVENDA: TppDBText;
    ppDBText37: TppDBText;
    ppDBText209: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText40: TppDBText;
    ppDBText47: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText1: TppDBText;
    ppDBText66: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppLabel5: TppLabel;
    ppDBText8: TppDBText;
    ppLabel6: TppLabel;
    ppDBText9: TppDBText;
    ppLabel83: TppLabel;
    ppDBText5: TppDBText;
    ppLabel34: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel4: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel315: TppLabel;
    ppLabel374: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel7: TppLabel;
    ppLabel42: TppLabel;
    ppLabel47: TppLabel;
    ppLabel61: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLine9: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    raCodeModule2: TraCodeModule;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppRelCampanhaComprador: TppReport;
    ppParameterList4: TppParameterList;
    ppDBRelCampanhaComprador: TppDBPipeline;
    qrRelCampanhaComprador: TUniQuery;
    dsRelCampanhaComprador: TDataSource;
    ppHeaderBand4: TppHeaderBand;
    ppLabel73: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppDetailBand4: TppDetailBand;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText83: TppDBText;
    ppDBText87: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel82: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel87: TppLabel;
    ppLine14: TppLine;
    ppLabel74: TppLabel;
    ppLabel76: TppLabel;
    ppDBText89: TppDBText;
    ppLabel77: TppLabel;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppLabel78: TppLabel;
    ppLine13: TppLine;
    ppLabel75: TppLabel;
    ppDBText82: TppDBText;
    ppLabel88: TppLabel;
    ppDBText84: TppDBText;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppLine16: TppLine;
    ppLabel81: TppLabel;
    ppLabel86: TppLabel;
    ppDBText78: TppDBText;
    ppLabel91: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppLine17: TppLine;
    ppLabel92: TppLabel;
    raCodeModule5: TraCodeModule;
    ppDesignLayers5: TppDesignLayers;
    ppDesignLayer5: TppDesignLayer;
    prcAtualizarEtiquetas: TUniStoredProc;
    ppHeaderBand3: TppHeaderBand;
    ppLabel48: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppDBText57: TppDBText;
    ppDetailBand3: TppDetailBand;
    ppDBText58: TppDBText;
    ppDBText70: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText67: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel63: TppLabel;
    ppDBText55: TppDBText;
    ppLabel64: TppLabel;
    ppDBText56: TppDBText;
    ppLabel52: TppLabel;
    ppDBText50: TppDBText;
    ppLabel49: TppLabel;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppLabel62: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLine4: TppLine;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel67: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel89: TppLabel;
    ppDBText75: TppDBText;
    ppLabel90: TppLabel;
    ppDBText85: TppDBText;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLine5: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel60: TppLabel;
    raCodeModule4: TraCodeModule;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppLabel8: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText24: TppDBText;
    ppDBText23: TppDBText;
    ppDBText32: TppDBText;
    ppDBText25: TppDBText;
    ppDBText28: TppDBText;
    ppDBText68: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel26: TppLabel;
    ppLabel17: TppLabel;
    ppLabel15: TppLabel;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    ppDBText16: TppDBText;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText17: TppDBText;
    ppLabel25: TppLabel;
    ppDBText18: TppDBText;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel68: TppLabel;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLine1: TppLine;
    ppDBCalc9: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand2: TppHeaderBand;
    ppLabel27: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppDetailBand2: TppDetailBand;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText41: TppDBText;
    ppDBText49: TppDBText;
    ppDBText46: TppDBText;
    ppDBText71: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDBText31: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppDBText35: TppDBText;
    ppLabel45: TppLabel;
    ppDBText36: TppDBText;
    ppLine15: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLine3: TppLine;
    ppDBText51: TppDBText;
    ppLabel51: TppLabel;
    ppDBText52: TppDBText;
    ppLabel95: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppLine21: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel33: TppLabel;
    ppLabel35: TppLabel;
    ppLabel46: TppLabel;
    ppLabel50: TppLabel;
    ppLabel41: TppLabel;
    ppLine23: TppLine;
    ppDBText42: TppDBText;
    ppDBText48: TppDBText;
    ppLabel69: TppLabel;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppLine2: TppLine;
    ppLabel93: TppLabel;
    ppDBCalc14: TppDBCalc;
    ppLabel32: TppLabel;
    ppLabel94: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppLabel40: TppLabel;
    ppDBCalc15: TppDBCalc;
    raCodeModule3: TraCodeModule;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppLabel72: TppLabel;
    ppDBText43: TppDBText;
    ppLabel96: TppLabel;
    ppDBText44: TppDBText;
    ppRelCampanhaExcel: TppReport;
    ppDetailBand6: TppDetailBand;
    ppDBText69: TppDBText;
    ppDBText74: TppDBText;
    ppDBText86: TppDBText;
    ppDBText88: TppDBText;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppLabel98: TppLabel;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppLabel100: TppLabel;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    raCodeModule6: TraCodeModule;
    ppDesignLayers6: TppDesignLayers;
    ppDesignLayer6: TppDesignLayer;
    ppParameterList5: TppParameterList;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppDBText107: TppDBText;
    ppLabel123: TppLabel;
    ppDBText108: TppDBText;
    ppLabel124: TppLabel;
    ppDBText109: TppDBText;
    ppHeaderBand6: TppHeaderBand;
    ppLabel97: TppLabel;
    qrConsultaCampanhaCODFUNCINCLUSAO: TLargeintField;
    qrConsultaCampanhaFUNCIONARIOINCLUSAO: TStringField;
    qrConsultaCampanhaI9TIPOCAMPANHAPROPZ: TStringField;
    qrConsultaCampanhaI9TEXTOLEGALPROPZ: TStringField;
    qrConsultaCampanhaI9MECANICAPROPZ: TStringField;
    qrPrecoDiferenteFamilia: TUniQuery;
    cdsClientesDirecionados: TClientDataSet;
    cdsClientesDirecionadosCODCLI: TIntegerField;
    cdsClientesDirecionadosCGCENT: TStringField;
    cdsClientesDirecionadosCLIENTE: TStringField;
    qrConsultaCampanhaCAMPANHADIRECIONADA: TStringField;
    dsClientesDirecionados: TDataSource;
    procedure cdsProdutosIncluidosPVENDACRMChange(Sender: TField);
    procedure cdsProdutosIncluidosVLVERBAUNITARIOChange(Sender: TField);
    procedure cdsProdutosIncluidosPERCMARGEMDESEJADAChange(Sender: TField);
    procedure cdsVerbasFornecedorTIPOVERBAChange(Sender: TField);
  private
    procedure calculaPrecoArredondadoCRM;
    procedure calculaMargemFuturaCRM;
    procedure calculaVerbaMargemMinima;
    procedure atualizaPrecoEntreFiliais;

    { Private declarations }
  public
    function getProxCodCampanha: Integer;
    function getProxCodGrupoCRM: double;
    function getProxCodTabloideCRM: Integer;
    function getMargemEntreNumeros(valor1, valor2: Double): double;
    function getPrecoArredondado(pValor : Double): double;
    function getMargemMinima(codfilial: string; codprod: Double): Double;
    function setParametrosClienteGrupoCRM(codGrupoCRM : Integer) : string;
    function setParametrosClienteGrupoCRMCliente(pCGCENT: String): string;
    function produtoTemCampanhaCRMVigente(pCodFilial: String; pCodProd: Integer; pDtInicial,pDtFinal: TDateTime; pCodCampanhaCRM : Integer): Boolean;
    function produtoTemFamiliaPrecoDiferente(codprod: Double; codfilial: String) : String;
    function getCodCli(cgcent : string) : Integer;
    function getCPFCliente(pCodcli: Integer): String;
    function aprovarCampanha(numeroCampanha : Integer) : Boolean;
    function reprovarCampanha(numeroCampanha: Integer) : Boolean;
    function campanhaEstaAprovada(numeroCampanha: Integer) : Boolean;
    function getCodigoCampanhasSelecionadas : String;
    function desvincularCampanhaTabloide(codcampanhacrm : Integer): Boolean;
    function getValorVerbaMargemDesejada(pCusto, pVenda, margem : Double): Double;
    procedure insereFornecedoresVerbaCampanha;
    procedure insereForcedorGridVerbaCampanha(codfornec: Double; fornecedor: string; codcampanha : Double; codFilial : String);
    function campanhaPossuiVerbaGrid: Boolean;
    function getComboExistente(codfilial : string; codprod: Double; dataini, datafim :TDateTime): boolean;
    procedure geraInformacoesVerbaCampanha;
    function getDataInicialCampanha(codcampanha : Double): TDateTime;
    procedure CarregarClientesCampanha(pCodCampanhaCRM : Integer);
  end;

var
  DMCampanhaCRM: TDMCampanhaCRM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uLogin, ufrmCampanhaCRM, uDMOfertas;

{$R *.dfm}

{ TDMCampanhaCRM }

procedure TDMCampanhaCRM.insereFornecedoresVerbaCampanha;
begin
  //configura cds verbas
  cdsVerbasFornecedor.Close;
  cdsVerbasFornecedor.CreateDataSet;
  cdsVerbasFornecedor.Open;

  cdsProdutosIncluidos.First;
  while not cdsProdutosIncluidos.Eof do
  begin
    //se houver verba, valida a criação da mesma.
    if cdsProdutosIncluidosVLVERBAUNITARIO.AsFloat > 0 then
    begin
        insereForcedorGridVerbaCampanha(cdsProdutosIncluidosCODFORNECPRINC.AsFloat,
                                        cdsProdutosIncluidosFORNECEDOR.AsString,
                                        cdsProdutosIncluidosCODCAMPANHACRM.AsFloat,
                                        cdsProdutosIncluidosCODFILIAL.asString);
    end;

    cdsProdutosIncluidos.Next;
  end;

end;

procedure TDMCampanhaCRM.geraInformacoesVerbaCampanha;
begin
  cdsVerbasFornecedor.DisableControls;
  cdsVerbasFornecedor.First;
  while not cdsVerbasFornecedor.Eof do
  begin

    dmLogin.limpaParametrosQuery(qrGravaVerba);
    qrGravaVerba.Close;
    qrGravaVerba.ParamByName('CODCAMPANHACRM').AsFloat := cdsVerbasFornecedorCODCAMPANHACRM.AsFloat;
    qrGravaVerba.ParamByName('CODFORNEC').AsFloat := cdsVerbasFornecedorCODFORNEC.AsFloat;
    qrGravaVerba.ParamByName('TIPOVERBA').AsString := cdsVerbasFornecedorTIPOVERBA.AsString;
    qrGravaVerba.ParamByName('VLVERBA').AsFloat := cdsVerbasFornecedorVLVERBA.AsFloat;
    qrGravaVerba.ParamByName('DTAPURACAOVERBAINI').AsDateTime := cdsVerbasFornecedorDTAPURACAOVERBAINI.AsDateTime;
    qrGravaVerba.ParamByName('DTAPURACAOVERBAFIM').AsDateTime := cdsVerbasFornecedorDTAPURACAOVERBAFIM.AsDateTime;
    qrGravaVerba.ParamByName('TIPOPAGTOVERBA').AsString := cdsVerbasFornecedorTIPOPAGTOVERBA.AsString;
    qrGravaVerba.ExecSQL;

    cdsVerbasFornecedor.Next; //próximo registro.

  end;
  cdsVerbasFornecedor.EnableControls;
end;

function TDMCampanhaCRM.campanhaPossuiVerbaGrid: Boolean;
begin

  cdsProdutosIncluidos.First;
  while not cdsProdutosIncluidos.Eof do
  begin
    if cdsProdutosIncluidosVLVERBAUNITARIO.AsFloat > 0 then
    begin
      Result := true;
      Exit;
    end;

    cdsProdutosIncluidos.Next;
  end;

  Result := false;
end;

procedure TDMCampanhaCRM.CarregarClientesCampanha(pCodCampanhaCRM: Integer);
begin

  if not DMCampanhaCRM.cdsClientesDirecionados.Active then
  begin
    DMCampanhaCRM.cdsClientesDirecionados.CreateDataSet;
    DMCampanhaCRM.cdsClientesDirecionados.Open;
  end
  else
  begin
    DMCampanhaCRM.cdsClientesDirecionados.EmptyDataSet;
  end;

  qrAux.Close;
  qrAux.SQL.Clear;
  qrAux.SQL.Add('SELECT DISTINCT PCDESCONTOFIDELIDADE.CODCLIDIRECIONADO,  REGEXP_REPLACE(PCCLIENT.CGCENT, ''[^[:digit:]]'') as CGCENT');
  qrAux.SQL.Add(' FROM PCDESCONTOFIDELIDADE , PCCLIENT                                    ');
  qrAux.SQL.Add(' WHERE  PCDESCONTOFIDELIDADE.CODCLIDIRECIONADO = PCCLIENT.CODCLI         ');
  qrAux.SQL.Add(' AND PCDESCONTOFIDELIDADE.CODCAMPANHACRM = :CODCAMPANHACRM               ');
  qrAux.ParamByName('CODCAMPANHACRM').AsInteger := pCodCampanhaCRM;
  qrAux.Open;

  while not qrAux.Eof do
  begin
    DMCampanhaCRM.cdsClientesDirecionados.Append;
    DMCampanhaCRM.cdsClientesDirecionadosCODCLI.AsInteger := qrAux.FieldByName('CODCLIDIRECIONADO').AsInteger;
    DMCampanhaCRM.cdsClientesDirecionadosCGCENT.AsString := qrAux.FieldByName('CGCENT').AsString;
    DMCampanhaCRM.cdsClientesDirecionados.Post;
    qrAux.Next;
  end;

end;

procedure TDMCampanhaCRM.insereForcedorGridVerbaCampanha(codfornec: Double; fornecedor: string; codcampanha : Double; codFilial : String);
var
  tipoVerba : String;
  tipoPgto : String;
begin
  if not cdsVerbasFornecedor.Locate('CODFORNEC;CODFILIAL', VarArrayOf([codfornec,codfilial]), []) then
  begin
    //No caso de ser editar, já carrega o tipo de verba e etc que foi cadastrado.
    qrAux.Close;
    qrAux.SQL.Clear;
    qrAux.SQL.Add('SELECT');
    qrAux.SQL.Add('NVL(I9CONFIGVERBACRM.TIPOPAGTOVERBA, ''D'') AS TIPOPAGTOVERBA,');
    qrAux.SQL.Add('NVL(I9CONFIGVERBACRM.TIPOVERBA, ''DEFINIDO'') as TIPOVERBA ');
    qrAux.SQL.Add('FROM I9CONFIGVERBACRM');
    qrAux.SQL.Add('WHERE CODCAMPANHACRM = :CODCAMPANHACRM ');
    qrAux.SQL.Add('AND CODFORNEC = :CODFORNEC');
    qrAux.ParamByName('CODCAMPANHACRM').AsFloat:= codcampanha;
    qrAux.ParamByName('CODFORNEC').AsFloat:= codfornec;
    qrAux.Open;

    if (qrAux.FieldByName('TIPOVERBA').AsString = '') then
      tipoVerba := 'DEFINIDO'
    else
      tipoVerba := qrAux.FieldByName('TIPOVERBA').AsString;

    if (qrAux.FieldByName('TIPOPAGTOVERBA').AsString = '') then
      tipoPgto := 'D'
    else
      tipoPgto :=  qrAux.FieldByName('TIPOPAGTOVERBA').AsString;

    //Insere novo fornecedor.
    cdsVerbasFornecedor.Append;
    cdsVerbasFornecedorCODFORNEC.AsFloat := codfornec;
    cdsVerbasFornecedorFORNECEDOR.AsString := fornecedor;
    cdsVerbasFornecedorTIPOVERBA.AsString := tipoVerba;
    cdsVerbasFornecedorTIPOPAGTOVERBA.AsString := tipoPgto;
    cdsVerbasFornecedorCODFILIAL.AsString := codfilial;
    cdsVerbasFornecedorCODCAMPANHACRM.AsFloat := codcampanha;
    cdsVerbasFornecedorDTAPURACAOVERBAINI.AsDateTime := frmCampanhaCRM.dtInicialCampanha.Date;
    cdsVerbasFornecedorDTAPURACAOVERBAFIM.AsDateTime := frmCampanhaCRM.dtFinalCampanha.Date;
    cdsVerbasFornecedor.Post;
  end;
end;

function TDMCampanhaCRM.getMargemMinima(codfilial: string; codprod: Double): Double;
var
  qryMargemMin:TUniQuery;
begin
  try
     try
        qryMargemMin := TUniQuery.Create(nil);
        qryMargemMin.Connection := DmLogin.Conexao;
        qryMargemMin.Close;
        qryMargemMin.SQL.Clear;
        qryMargemMin.SQL.Add('SELECT NVL(MARGEMMINATAC,0) AS MARGEMMINATAC FROM PCCLASSIFICMERC WHERE CODPROD = :CODPROD AND CODFILIAL IN (:CODFILIAL)');
        qryMargemMin.ParamByName('CODPROD').AsFloat := codprod;
        qryMargemMin.ParamByName('CODFILIAL').AsString := codfilial;
        qryMargemMin.Open;

        if not qryMargemMin.IsEmpty then
          Result := qryMargemMin.FieldByName('MARGEMMINATAC').AsFloat
        else
          Result := 0;
     finally
        qryMargemMin.Free;
     end;

  except
    on e : Exception do
    begin
      DmLogin.MensagemErroAbort('Erro ao validar margem minima: ' + E.Message);
    end;
  end;

end;

function TDMCampanhaCRM.getDataInicialCampanha(codcampanha : Double): TDateTime;
var
  qryMargemMin:TUniQuery;
begin
  try
    qryMargemMin := TUniQuery.Create(nil);
    qryMargemMin.Connection := DmLogin.Conexao;
    qryMargemMin.Close;
    qryMargemMin.SQL.Clear;
    qryMargemMin.SQL.Add('SELECT MAX(PCDESCONTOFIDELIDADE.DTINICIAL) AS DTINICIAL FROM PCDESCONTOFIDELIDADE WHERE PCDESCONTOFIDELIDADE.CODCAMPANHACRM = :CODCAMPANHA');
    qryMargemMin.ParamByName('CODCAMPANHA').AsFloat := codcampanha;
    qryMargemMin.Open;

    Result := qryMargemMin.FieldByName('DTINICIAL').AsDateTime;
  finally
    qryMargemMin.Free;
  end;
end;

function TDMCampanhaCRM.desvincularCampanhaTabloide(codcampanhacrm : Integer): Boolean;
var
  qry:TUniQuery;
begin
  try
    qry := TUniQuery.Create(nil);
    qry.Connection := DmLogin.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('UPDATE I9CAMPANHACRM');
    qry.SQL.Add('SET CODTABLOIDECRM = NULL,');
    qry.SQL.Add('CODFUNCDESVCAMPANHA = :CODFUNCDESVCAMPANHA');
    qry.SQL.Add('WHERE CODCAMPANHACRM = :CODCAMPANHACRM');
    qry.ParamByName('CODFUNCDESVCAMPANHA').AsFloat := dmLogin.Matricula;
    qry.ParamByName('CODCAMPANHACRM').AsInteger := codcampanhacrm;
    qry.ExecSQL;

    Result := true;
  finally
    qry.Free;
  end;
end;

procedure TDMCampanhaCRM.cdsProdutosIncluidosPERCMARGEMDESEJADAChange(
  Sender: TField);
begin
  if (cdsProdutosIncluidosPERCMARGEMDESEJADA.AsFloat = 0)
  then
  begin
    cdsProdutosIncluidosVLVERBAUNITARIO.AsFloat := 0;
  end
  else
  begin
    cdsProdutosIncluidosVLVERBAUNITARIO.AsFloat := getValorVerbaMargemDesejada(cdsProdutosIncluidosCUSTOFIN.AsFloat,
                                                                               cdsProdutosIncluidosPVENDACRM.AsFloat,
                                                                               cdsProdutosIncluidosPERCMARGEMDESEJADA.AsFloat);
  end;

  calculaVerbaMargemMinima;
end;

procedure TDMCampanhaCRM.cdsProdutosIncluidosPVENDACRMChange(Sender: TField);
begin
  if not (cdsProdutosIncluidos.State = dsInsert) then
  begin
    if (cdsProdutosIncluidosPVENDACRM.AsFloat > cdsProdutosIncluidosPVENDAATAC.AsFloat) and (cdsProdutosIncluidosPVENDAATAC.AsFloat > 0) then
      dmLogin.MensagemErroAbort('Produto com preco maior que o preço atacado! ' + #13 +
                                'Codprod: ' + cdsProdutosIncluidosCODPROD.AsString + #13 +
                                'Descricao: ' + cdsProdutosIncluidosDESCRICAO.AsString + #13 +
                                'Preco atacado: R$' + cdsProdutosIncluidosPVENDAATAC.AsString + #13 +
                                'Preco Clube: R$' + cdsProdutosIncluidosPVENDACRM.AsString);
  end;

  if cdsProdutosIncluidosPVENDACRM.AsFloat > 0 then
  begin
    calculaMargemFuturaCRM;
    calculaVerbaMargemMinima;
    calculaPrecoArredondadoCRM;
  end;

  if (frmCampanhaCRM.cbReplicarPrecoFiliais.Checked) and not (cdsProdutosIncluidos.State in [dsInsert]) then
    atualizaPrecoEntreFiliais;
end;

function TDMCampanhaCRM.campanhaEstaAprovada(numeroCampanha: Integer) : Boolean;
var
  qry :TUniQuery;
begin
  try
    //Tira o cOdigo do cliente da campanha.
    qry := TUniQuery.Create(nil);
    qry.Connection := DmLogin.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('SELECT CODCAMPANHACRM FROM I9CAMPANHACRM WHERE DTAPROVACAO IS NOT NULL AND CODCAMPANHACRM = :CODCAMPANHACRM');
    qry.ParamByName('CODCAMPANHACRM').AsInteger := numeroCampanha;
    qry.Open;

    if qry.RecordCount > 0 then
      Result := true
    else
      Result := false;
  finally
    qry.Free;
  end;
end;


function TDMCampanhaCRM.aprovarCampanha(numeroCampanha: Integer) : Boolean;
var
  qry :TUniQuery;
begin
  try
    //Tira o cOdigo do cliente da campanha.
    qry := TUniQuery.Create(nil);
    qry.Connection := DmLogin.Conexao;

    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('UPDATE PCDESCONTOFIDELIDADE SET PCDESCONTOFIDELIDADE.CODCLI = PCDESCONTOFIDELIDADE.CODCLIDIRECIONADO ');
    qry.SQL.Add('WHERE PCDESCONTOFIDELIDADE.CODCAMPANHACRM = :CODCAMPANHACRM                                          ');
    qry.ParamByName('CODCAMPANHACRM').AsInteger := numeroCampanha;
    qry.ExecSQL;

    //Seta o dt libera.
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('UPDATE I9CAMPANHACRM');
    qry.SQL.Add('SET DTAPROVACAO = SYSDATE,');
    qry.SQL.Add('    CODFUNCAPROVACAO = :CODFUNCAPROVACAO,');
    qry.SQL.Add('    CODFUNCREJEICAO = NULL,');
    qry.SQL.Add('    DTREJEICAO = NULL');
    qry.SQL.Add('WHERE CODCAMPANHACRM = :CODCAMPANHACRM');
    qry.ParamByName('CODFUNCAPROVACAO').AsInteger := dmLogin.Matricula;
    qry.ParamByName('CODCAMPANHACRM').AsInteger := numeroCampanha;
    qry.ExecSQL;


    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('SELECT DISTINCT CODFILIAL, CODPROD FROM PCDESCONTOFIDELIDADE WHERE CODCAMPANHACRM = :CODCAMPANHACRM AND TRUNC(DTINICIAL) = TRUNC(SYSDATE)');
    qry.ParamByName('CODCAMPANHACRM').AsInteger := numeroCampanha;
    qry.Open;


    if not qry.IsEmpty then
    begin
      qry.First;

      while not qry.Eof do
      begin
        prcAtualizarEtiquetas.Close;
        prcAtualizarEtiquetas.ParamByName('P_CODFILIAL').AsString := qry.FieldByName('CODFILIAL').AsString;
        prcAtualizarEtiquetas.ParamByName('P_CODPROD').AsInteger := qry.FieldByName('CODPROD').AsInteger;
        prcAtualizarEtiquetas.ParamByName('P_COMMITAR').AsString := 'N';
        prcAtualizarEtiquetas.ExecProc;  
        qry.Next;
      end;

    end;

    Result := true;

  finally
    qry.Close;
    qry.Free;
  end;
end;

function TDMCampanhaCRM.reprovarCampanha(numeroCampanha: Integer) : Boolean;
var
  qry :TUniQuery;
begin
  try
    //Tira o codigo do cliente da campanha.
    qry := TUniQuery.Create(nil);
    qry.Connection := DmLogin.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('UPDATE PCDESCONTOFIDELIDADE SET CODCLI = -1000 WHERE CODCAMPANHACRM = :CODCAMPANHACRM');
    qry.ParamByName('CODCAMPANHACRM').AsInteger := numeroCampanha;
    qry.ExecSQL;

    //Seta o dt libera.
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('UPDATE I9CAMPANHACRM');
    qry.SQL.Add('SET DTREJEICAO = SYSDATE,');
    qry.SQL.Add('    CODFUNCREJEICAO = :CODFUNCREJEICAO');
    qry.SQL.Add('WHERE CODCAMPANHACRM = :CODCAMPANHACRM');
    qry.ParamByName('CODFUNCREJEICAO').AsInteger := dmLogin.Matricula;
    qry.ParamByName('CODCAMPANHACRM').AsInteger := numeroCampanha;
    qry.ExecSQL;

    Result := true;

  finally
    qry.Free;
  end;
end;

procedure TDMCampanhaCRM.atualizaPrecoEntreFiliais;
var
  pOferta : Double;
  codBarras, vCodprod : Double;
  recnoAtual : Integer;
begin
  with Self.cdsProdutosIncluidos do
  begin

    pOferta := FieldByName('PVENDACRM').AsFloat;
    vCodprod := FieldByName('CODPROD').AsFloat;

    try
      recnoAtual := RecNo;
      DMCampanhaCRM.cdsProdutosIncluidos.DisableControls;
      First;

      while not Eof do
      begin

        if FieldByName('CODPROD').AsFloat = vCodprod then
        begin
          if FieldByName('PVENDACRM').AsFloat <> pOferta then
          begin
            Edit;
            FieldByName('PVENDACRM').AsFloat := pOferta;
          end;
        end;

        Next;
      end;

      RecNo := recnoAtual;
    finally
      DMCampanhaCRM.cdsProdutosIncluidos.EnableControls;
    end;
  end;
end;

procedure TDMCampanhaCRM.cdsProdutosIncluidosVLVERBAUNITARIOChange(
  Sender: TField);
begin
  //Verifica se tem permissao para edicao

  if ( (cdsProdutosIncluidosCUSTOFIN.AsFloat < cdsProdutosIncluidosVLVERBAUNITARIO.AsFloat) and (not frmCampanhaCRM.vbEstaEditando) ) then
    dmLogin.MensagemErroAbort('O valor de verba nao pode ser maior ou igual ao custo.');

  calculaMargemFuturaCRM;
end;

procedure TDMCampanhaCRM.cdsVerbasFornecedorTIPOVERBAChange(Sender: TField);
begin
  if ( not( frmCampanhaCRM.vbEstaEditando ) and  not (dmLogin.validaPermissao530(48)) and ( cdsVerbasFornecedorTIPOVERBA.AsString = 'MARGEMDIRETORIA' ) ) then
  begin
    DmLogin.MensagemErroAbort('Voce nao possui permissao para definir margem diretoria');
  end;
end;

function TDMCampanhaCRM.getPrecoArredondado(pValor : Double): double;
var
  qryArredondar:TUniQuery;
begin
  try
    qryArredondar := TUniQuery.Create(nil);
    qryArredondar.Connection := DmLogin.Conexao;
    qryArredondar.Close;
    qryArredondar.SQL.Add('SELECT PKG_I9UTILITARIO.ARREDONDAR_PRECO(:PRECO) AS PRECO_ARREDONDADO FROM DUAL');
    qryArredondar.ParamByName('PRECO').AsFloat := pValor;
    qryArredondar.Open;

    Result := qryArredondar.FieldByName('PRECO_ARREDONDADO').AsFloat;

  finally
    qryArredondar.Free;
  end;
end;

procedure TDMCampanhaCRM.calculaPrecoArredondadoCRM;
begin
  cdsProdutosIncluidosPVENDACRMARREDONDADO.AsFloat := getPrecoArredondado(cdsProdutosIncluidosPVENDACRM.AsFloat);
end;

procedure TDMCampanhaCRM.calculaVerbaMargemMinima;
var
  qr : TUniQuery;
begin
   try
    qr:= TUniQuery.Create(nil);
    qr.Connection:= dmLogin.Conexao;
    qr.Close;
    qr.SQL.Clear;
    qr.SQL.Add('SELECT                                                                                 ');
    qr.SQL.Add('CASE                                                                                   ');
    qr.SQL.Add('WHEN (:CUSTO - (NVL(:PVENDACRM, :CUSTO)*(1-(NVL(:MARGEM,0)/100)))) < 0 THEN 0          ');
    qr.SQL.Add('ELSE (:CUSTO - (NVL(:PVENDACRM, :CUSTO)*(1-(NVL(:MARGEM,0)/100))))                     ');
    qr.SQL.Add('END VLVERBAMARGEMMIN                                                                   ');
    qr.SQL.Add('FROM DUAL                                                                              ');
    qr.ParamByName('CUSTO').AsFloat:= cdsProdutosIncluidosCUSTOFIN.AsFloat;
    qr.ParamByName('PVENDACRM').AsFloat:= cdsProdutosIncluidosPVENDACRM.AsFloat;
    qr.ParamByName('MARGEM').AsFloat:= cdsProdutosIncluidosMARGEMMIN.AsFloat;
    qr.Open;

    cdsProdutosIncluidosVLVERBAMARGEMMIN.AsFloat := qr.FieldByName('VLVERBAMARGEMMIN').AsFloat;
   finally
      qr.Close;
      qr.Free;
   end;
end;

function TDMCampanhaCRM.getCodCli(cgcent: string): Integer;
var
  qry: TUniQuery;
begin

  try
    qry := TUniQuery.Create(nil);
    qry.Connection := DmLogin.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('SELECT NVL (MAX (PCCLIENT.CODCLI), 0) CODCLI');
    qry.SQL.Add('FROM PCCLIENT');
    qry.SQL.Add('WHERE REGEXP_REPLACE(PCCLIENT.CGCENT, ''[^[:digit:]]'') = REGEXP_REPLACE(:PCGCENT, ''[^[:digit:]]'')');
    qry.ParamByName('PCGCENT').AsString := cgcent;
    qry.Open;

    if not qry.IsEmpty then
      Result := qry.FieldByName('CODCLI').AsInteger
    else
      Result := 0;

  finally
    qry.Close;
    qry.Free;
  end;

end;

function TDMCampanhaCRM.getCodigoCampanhasSelecionadas: String;
var
  Retorno : String;
begin
  Retorno := '';

  if qrConsultaCampanha.IsEmpty then
    Exit;

  qrConsultaCampanha.DisableControls;
  qrConsultaCampanha.First;
  while not qrConsultaCampanha.Eof do
  begin
    if qrConsultaCampanha.FieldByName('SELECIONADO').AsString = 'S' then
    begin
      if Retorno <> '' then
        Retorno := Retorno + ', ' + qrConsultaCampanha.FieldByName('CODCAMPANHACRM').AsString
      else
        Retorno := qrConsultaCampanha.FieldByName('CODCAMPANHACRM').AsString;
    end;

    qrConsultaCampanha.Next;
  end;
  qrConsultaCampanha.EnableControls;

  Result := Retorno;
end;

function TDMCampanhaCRM.getComboExistente(codfilial: string; codprod: Double;
  dataini, datafim: TDateTime): boolean;
begin
  qrAux.Close;
  qrAux.SQL.Clear;
  qrAux.SQL.Add('SELECT COUNT(*) AS QT');
  qrAux.SQL.Add('FROM PCPROMC');
  qrAux.SQL.Add('WHERE PCPROMC.CODPROD IN (SELECT CODPROD FROM PCPRODUT WHERE CODPRODPRINC = :CODPRODPRINC)');
  qrAux.SQL.Add('AND ((DTINICIO BETWEEN :DTINICIAL AND :DTFINAL) OR (DTFIM BETWEEN :DTINICIAL AND :DTFINAL) OR DTINICIO >= :DTINICIAL AND DTFIM <= :DTFINAL)');
  qrAux.SQL.Add('AND PCPROMC.CODFILIAL = :CODFILIAL');
  qrAux.ParamByName('CODPRODPRINC').AsFloat := codprod;
  qrAux.ParamByName('DTINICIAL').AsDate := dataini;
  qrAux.ParamByName('DTFINAL').AsDate := datafim;
  qrAux.ParamByName('CODFILIAL').AsString := codfilial;
  qrAux.Open;

  if qrAux.FieldByName('QT').AsInteger > 0 then begin
    Result := True;
  end else begin
    Result := False;
  end;

end;

function TDMCampanhaCRM.getCPFCliente(pCodcli: Integer): String;
var
  qry: TUniQuery;
begin
  try
    qry := TUniQuery.Create(nil);
    qry.Connection := DmLogin.Conexao;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('SELECT REGEXP_REPLACE(PCCLIENT.CGCENT, ''[^[:digit:]]'') AS CGCENT');
    qry.SQL.Add('FROM PCCLIENT');
    qry.SQL.Add('WHERE PCCLIENT.CODCLI = :CODCLI');
    qry.ParamByName('CODCLI').AsInteger := pCodcli;
    qry.Open;

    Result := qry.FieldByName('CGCENT').AsString;
  finally
    qry.Close;
    qry.Free;
  end;
end;

function TDMCampanhaCRM.getMargemEntreNumeros(valor1, valor2: Double): double;
var
  qrMargem: TUniQuery;
begin

  try
    qrMargem := TUniQuery.Create(nil);
    qrMargem.Connection := DmLogin.Conexao;
    qrMargem.Close;
    qrMargem.SQL.Clear;
    qrMargem.SQL.Add('SELECT  ');
    qrMargem.SQL.Add('PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(:VALOR1, :VALOR2) MARGEM');
    qrMargem.SQL.Add('FROM DUAL');
    qrMargem.ParamByName('VALOR1').AsFloat := valor1;
    qrMargem.ParamByName('VALOR2').AsFloat := valor2;
    qrMargem.Open;

    Result := qrMargem.FieldByName('MARGEM').AsFloat;
  finally
    qrMargem.Close;
    qrMargem.Free;
  end;

end;



procedure TDMCampanhaCRM.calculaMargemFuturaCRM;
var
  qrMargem: TUniQuery;
begin

  try
    qrMargem := TUniQuery.Create(nil);
    qrMargem.Connection := DmLogin.Conexao;
    qrMargem.Close;
    qrMargem.SQL.Clear;
    qrMargem.SQL.Add('SELECT                                                                                                                                 ');
    qrMargem.SQL.Add('PKG_I9UTILITARIO.DIFERENCA_ENTRE_MARGENS(:VALOR, ((PKG_I9UTILITARIO.BUSCACUSTO(:CODFILIAL, :CODPROD, :VALOR) * :QTUNIT) - :VALORVERBA)) MARGEM ');
    qrMargem.SQL.Add('FROM DUAL                                                                                                                              ');
    qrMargem.ParamByName('VALOR').AsFloat := cdsProdutosIncluidosPVENDACRM.AsFloat;
    qrMargem.ParamByName('VALORVERBA').AsFloat := cdsProdutosIncluidosVLVERBAUNITARIO.AsFloat;
    qrMargem.ParamByName('CODFILIAL').AsString := cdsProdutosIncluidosCODFILIAL.AsString;
    qrMargem.ParamByName('CODPROD').AsInteger := cdsProdutosIncluidosCODPROD.AsInteger;
    qrMargem.ParamByName('QTUNIT').AsFloat := cdsProdutosIncluidosQTUNIT.AsFloat;
    qrMargem.Open;

    cdsProdutosIncluidosMARGEMFUTURACRM.AsFloat := qrMargem.FieldByName('MARGEM').AsFloat;
  finally
    qrMargem.Close;
    qrMargem.Free;
  end;

end;

function TDMCampanhaCRM.getProxCodCampanha : Integer;
begin
  result := 0;
  with DMCampanhaCRM.qrAux do
  begin
     close;
     sql.Clear;
     sql.Add('SELECT I9CODCAMPANHACRM_DFSEQ.NEXTVAL FROM DUAL');
     open;
     if not isempty then
        result := fields[0].value;
  end;
end;

function TDMCampanhaCRM.getProxCodGrupoCRM: double;
begin
  result := 0;
  with DMCampanhaCRM.qrAux do
  begin
     close;
     sql.Clear;
     sql.Add('SELECT I9GRUPOCRM_DFSEQ.NEXTVAL FROM DUAL');
     open;
     if not isempty then
        result := fields[0].value;
  end;
end;

function TDMCampanhaCRM.setParametrosClienteGrupoCRM(codGrupoCRM: Integer): string;
var
  qry : TUniQuery;
  vRetorno : String;
begin
  try
    qry := TUniQuery.Create(nil);
    qry.Connection := dmLogin.Conexao;
    qry.Close;
    qry.SQL.Clear;

    qry.SQL.Add('BEGIN');
    qry.SQL.Add(' PKG_I9CLUBECRM.ATUALIZARCLIENTESGRUPOCRM (:CODGRUPOCRM);');
    qry.SQL.Add('END;');

    qry.ParamByName('CODGRUPOCRM').AsInteger := codGrupoCRM;

    try
      qry.ExecSQL;
      vRetorno := 'OK';
    Except on E: Exception do
    begin
      vRetorno := 'Erro ao atualizar clientes do grupo! ' + #13 + e.Message;
    end;

    end;

  finally
    qry.Free;
  end;
end;

function TDMCampanhaCRM.setParametrosClienteGrupoCRMCliente(pCGCENT: String): string;
var
  qry : TUniQuery;
  vRetorno : String;
begin
  try
    qry := TUniQuery.Create(nil);
    qry.Connection := dmLogin.Conexao;
    qry.Close;
    qry.SQL.Clear;

    qry.SQL.Add('BEGIN');
    qry.SQL.Add(' PKG_I9CLUBECRM.INSERIRCLIENTECRM(:PCGCENT);');
    qry.SQL.Add('END');

    qry.ParamByName('PCGCENT').AsString := pCGCENT;

    try
      qry.ExecSQL;
      vRetorno := 'OK';
    Except on E: Exception do
    begin
      vRetorno := 'Erro ao atualizar cliente! ' + #13 + e.Message;
    end;

    end;

  finally
    qry.Free;
  end;
end;

function TDMCampanhaCRM.produtoTemCampanhaCRMVigente(pCodFilial: String; pCodProd: Integer; pDtInicial,pDtFinal: TDateTime; pCodCampanhaCRM : Integer):Boolean;
begin
  qrPossuiCRMVigente.Close;
  qrPossuiCRMVigente.ParamByName('DTINICIAL').AsDate:=  pDtInicial;
  qrPossuiCRMVigente.ParamByName('DTFINAL').AsDate:=  pDtFinal;
  qrPossuiCRMVigente.ParamByName('CODFILIAL').AsString:= pCodFilial;
  qrPossuiCRMVigente.ParamByName('CODPROD').AsFloat:= pCodProd;
  qrPossuiCRMVigente.ParamByName('CODCAMPANHACRM').AsFloat:= pCodCampanhaCRM;
  qrPossuiCRMVigente.Open;
  if qrPossuiCRMVigente.RecordCount > 0 then
  begin
      qrPossuiCRMVigente.First;
      DmLogin.MensagemInformacao('Produto ja se encontra em CAMPANHA CRM! ' + #13 +
                                 'Filial: '            + pCodFilial  + #13 +
                                 'Codigo da Campanha CRM: '      + qrPossuiCRMVigente.FieldByName('CODCAMPANHACRM').AsString  + #13 +
                                 'Codigo interno do Produto: '   + IntToStr(pCodProd)    + #13 +
                                 'Valor da Oferta: R$'           + qrPossuiCRMVigente.FieldByName('PVENDACRM').AsString);
    Result := True;
  end
  else
  begin
    Result := False;
  end;
end;


function TDMCampanhaCRM.produtoTemFamiliaPrecoDiferente(codprod: Double; codfilial: String) : String;
var
  listaProdutos : TStringList;
begin
  try
    qrPrecoDiferenteFamilia.Close;
    qrPrecoDiferenteFamilia.ParamByName('CODFILIAL').AsString:= codfilial;
    qrPrecoDiferenteFamilia.ParamByName('CODPROD').AsFloat:= codprod;
    qrPrecoDiferenteFamilia.Open;

    if qrPrecoDiferenteFamilia.RecordCount > 0 then
    begin
      try
        listaProdutos := TStringList.Create;
        listaProdutos.Add('Produto(s) tem familia com preco incorreto!' + #13);

        qrPrecoDiferenteFamilia.First;
        while not Eof do
        begin
          listaProdutos.Add(' Produto: '   + qrPrecoDiferenteFamilia.FieldByName('CODPROD').AsString +
                            ' Embalagem: ' + qrPrecoDiferenteFamilia.FieldByName('CODAUXILIAR').AsString +
                            ' Preco: '     + qrPrecoDiferenteFamilia.FieldByName('PVENDA').AsString);
          qrPrecoDiferenteFamilia.Next;
        end;

        Result := listaProdutos.Text;
      finally
        listaProdutos.Free;
      end;
    end
    else
    begin
      Result := 'OK';
    end;
  finally
   qrPrecoDiferenteFamilia.Close;
  end;
end;

function TDMCampanhaCRM.getProxCodTabloideCRM :Integer;
begin
  result := 0;
  with DMCampanhaCRM.qrAux do
  begin
     close;
     sql.Clear;
     sql.Add('SELECT I9TABLOIDECRM_DFSEQ.NEXTVAL FROM DUAL');
     open;
     if not isempty then
        result := fields[0].value;
  end;
end;

function TDMCampanhaCRM.getValorVerbaMargemDesejada(pCusto, pVenda,
  margem: Double): Double;
var
  qr : TUniQuery;
begin
  try
    qr:= TUniQuery.Create(nil);
    qr.Connection:= dmLogin.Conexao;
    qr.Close;
    qr.SQL.Clear;
    qr.SQL.Add('SELECT                                                                                 ');
    qr.SQL.Add('CASE                                                                                   ');
    qr.SQL.Add('WHEN (:CUSTO - (NVL(:PVENDA, :CUSTO)*(1-(NVL(:MARGEM,0)/100)))) < 0 THEN 0             ');
    qr.SQL.Add('ELSE ROUND((:CUSTO - (NVL(:PVENDA, :CUSTO)*(1-(NVL(:MARGEM,0)/100)))),2)               ');
    qr.SQL.Add('END VLVERBA                                                                            ');
    qr.SQL.Add('FROM DUAL                                                                              ');

    qr.ParamByName('CUSTO').AsFloat:= pCusto;
    qr.ParamByName('PVENDA').AsFloat:= pVenda;
    qr.ParamByName('MARGEM').AsFloat:= margem;

    qr.Open;

    Result := qr.FieldByName('VLVERBA').AsFloat;

  finally
    qr.Close;
    qr.Free;
  end;
end;

end.
