unit Controller.TiposCadastrosCRM;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Common.Utils, Model.TiposCadastrosCRM;

type
  TTiposCadastrosCRMController = class
  private
    FTipos : TTiposCadastrosCRM;
  public
    constructor Create();
    destructor Destroy(); override;
    property Tipos: TTiposCadastrosCRM read FTipos write FTipos;
    function Localizar(aParam: array of variant): boolean;
    function Gravar(): Boolean;
    function SetupModal(FDQuery: TFDQuery): Boolean;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;
  end;

implementation

{ TTiposCadastrosCRMController }

constructor TTiposCadastrosCRMController.Create;
begin
  FTipos := TTiposCadastrosCRM.Create;
end;

destructor TTiposCadastrosCRMController.Destroy;
begin
  FTipos.Free;
  inherited;
end;

function TTiposCadastrosCRMController.GetField(sField, sKey, sKeyValue: String): String;
begin
  Result := FTipos.GetField(sField, sKey, sKeyValue);
end;

function TTiposCadastrosCRMController.Gravar: Boolean;
begin
  Result := FTipos.Gravar;
end;

function TTiposCadastrosCRMController.Localizar(aParam: array of variant): boolean;
begin
  Result := FTipos.Localizar(aParam);
end;

function TTiposCadastrosCRMController.SetupModal(FDQuery: TFDQuery): Boolean;
begin
  FTipos.SetupModel(FDQuery);
end;

end.
