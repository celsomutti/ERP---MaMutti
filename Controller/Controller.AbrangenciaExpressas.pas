{**************************************************************************************************************************
* Classe/Objeto : TAbrangenciaExpressasController
* Finalidade    : Módulo controller da classe TAbrangenciaExpressas
* Nível         : Controller
* Autor         : Celso Mutti
* Data          : 12/05/2021
* Versão        : 1
* Histórico     : 12/05/2021 - Criação - Celso Mutti (1)
**************************************************************************************************************************}
unit Controller.AbrangenciaExpressas;

interface

uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.AbrangenciaExpressas;

  type
  TAbrangenciaExpressasController = class
  private

    FAbrangencia : TAbrangenciaExpressas;

  public
    constructor Create;
    destructor  Destroy; override;

    function    Search(aParam : array of variant)  : boolean;  // realiza pesquisa em banco de dados
    function    Save()  : Boolean;  // salva, exclue dados no banco de dados
    function    GetField(sField : String; sKey : String; sKeyValue : String) : String; // localiza e retorna o valor de um campo de uma tabela
    procedure   SetupSelf(fdQuery : TFDQuery);  //  atribui os valores dos campos de uma query às propriedades da classe
    procedure   ClearSelf();  //  limpa as propriedades da dos campos da tabela da classe

    property    Abrangencia: TAbrangenciaExpressas  read  FAbrangencia  write FAbrangencia;

  end;

implementation

{ TAbrangenciaExpressasController }

procedure TAbrangenciaExpressasController.ClearSelf;
begin
  FAbrangencia.ClearSelf;
end;

constructor TAbrangenciaExpressasController.Create;
begin
  FAbrangencia := TAbrangenciaExpressas.Create;
end;

destructor TAbrangenciaExpressasController.Destroy;
begin
  FAbrangencia.Free;
  inherited;
end;

function TAbrangenciaExpressasController.GetField(sField, sKey, sKeyValue: String): String;
begin
  Result := FAbrangencia.GetField(sField, sKey, sKeyValue);
end;

function TAbrangenciaExpressasController.Save: Boolean;
begin
  Result := FAbrangencia.Save();
end;

function TAbrangenciaExpressasController.Search(aParam: array of variant): boolean;
begin
  Result := FAbrangencia.Search(aParam)
end;

procedure TAbrangenciaExpressasController.SetupSelf(fdQuery: TFDQuery);
begin
  FAbrangencia.SetupSelf(fdQuery);
end;

end.
