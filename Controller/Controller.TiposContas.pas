unit Controller.TiposContas;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Common.Utils, Model.FormasCreditos;

type
  TTiposContaController = class
  private
    FTipos : TFormasCreditos;
  public
    constructor Create();
    destructor Destroy(); override;
    property Formas: TFormasCreditos read FTipos write FTipos;
    function Localizar(aParam: array of variant): boolean;
    function Gravar(): Boolean;
    function SetupModal(FDQuery: TFDQuery): Boolean;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;
  end;

implementation

{ TTiposContaController }

constructor TTiposContaController.Create;
begin
  FTipos := TFormasCreditos.Create;
end;

destructor TTiposContaController.Destroy;
begin
  FTipos.Free;
  inherited;
end;

function TTiposContaController.GetField(sField, sKey, sKeyValue: String): String;
begin
  Result := FTipos.GetField(sField, sKey, sKeyValue);
end;

function TTiposContaController.Gravar: Boolean;
begin
  Result := FTipos.Gravar;
end;

function TTiposContaController.Localizar(aParam: array of variant): boolean;
begin
  Result := FTipos.Localizar(aParam);
end;

function TTiposContaController.SetupModal(FDQuery: TFDQuery): Boolean;
begin
  FTipos.SetupModel(FDQuery);
end;

end.
