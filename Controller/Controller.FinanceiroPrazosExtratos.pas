{**************************************************************************************************************************
* Classe/Objeto : TFinanceiroPrazosExtratosController
* Finalidade    : Módulo controller da classe TFinanceiroPrazosExtratos
* Nível         : Controller
* Autor         : Celso Mutti
* Data          : 01/06/2021
* Versão        : 1
* Histórico     : 01/06/2021 - Criação - Celso Mutti (1)
**************************************************************************************************************************}
unit Controller.FinanceiroPrazosExtratos;

interface

uses Model.FinanceiroPrazosExtratos, System.SysUtils, FireDAC.Comp.Client, Common.ENum;

type
  TFinanceiroPrazosExtratosController = class
  private

    FPrazos : TFinanceiroPrazosExtratos;

  public
    constructor Create;
    destructor  Destroy; override;

    function    Search(aParam : array of variant)  : boolean;  // realiza pesquisa em banco de dados
    function    Save()  : Boolean;  // salva, exclue dados no banco de dados
    function    GetField(sField : String; sKey : String; sKeyValue : String) : String; // localiza e retorna o valor de um campo de uma tabela
    function    MountPeriod(iAno, iMes: integer): boolean; // monta as data do período e a data do pagamento;
    procedure   SetupSelf(fdQuery : TFDQuery);  //  atribui os valores dos campos de uma query às propriedades da classe
    procedure   ClearSelf();  //  limpa as propriedades da dos campos da tabela da classe

    property  Prazos: TFinanceiroPrazosExtratos read  FPrazos write FPrazos;

  end;

implementation

{ TFinanceiroPrazosExtratosController }

procedure TFinanceiroPrazosExtratosController.ClearSelf;
begin
  FPrazos.ClearSelf;
end;

constructor TFinanceiroPrazosExtratosController.Create;
begin
  FPrazos := TFinanceiroPrazosExtratos.Create;
end;

destructor TFinanceiroPrazosExtratosController.Destroy;
begin
  FPrazos.Free;
  inherited;
end;

function TFinanceiroPrazosExtratosController.GetField(sField, sKey, sKeyValue: String): String;
begin
  Result := FPRazos.GetField(sField, sKey, sKeyValue);
end;

function TFinanceiroPrazosExtratosController.MountPeriod(iAno, iMes: integer): boolean;
begin
  Result := FPrazos.MountPeriod(iAno, iMes);
end;

function TFinanceiroPrazosExtratosController.Save: Boolean;
begin
  Result := FPrazos.Save();
end;

function TFinanceiroPrazosExtratosController.Search(aParam: array of variant): boolean;
begin
  Result := FPrazos.Search(aParam);
end;

procedure TFinanceiroPrazosExtratosController.SetupSelf(fdQuery: TFDQuery);
begin
  FPrazos.SetupSelf(fdQuery);
end;

end.
