unit Controller.FormasCreditos;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Common.Utils, Model.FormasCreditos;

type
  TFormasCreditosController = class
  private
    FFormas : TFormasCreditos;
  public
    constructor Create();
    destructor Destroy(); override;
    property Formas: TFormasCreditos read FFormas write FFormas;
    function Localizar(aParam: array of variant): boolean;
    function Gravar(): Boolean;
    function SetupModal(FDQuery: TFDQuery): Boolean;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;
  end;

implementation

{ TFormasCreditosController }

constructor TFormasCreditosController.Create;
begin
  FFormas := TFormasCreditos.Create;
end;

destructor TFormasCreditosController.Destroy;
begin
  FFormas.Free;
  inherited;
end;

function TFormasCreditosController.GetField(sField, sKey, sKeyValue: String): String;
begin
  Result := FFormas.GetField(sField, sKey, sKeyValue);
end;

function TFormasCreditosController.Gravar: Boolean;
begin
  Result := FFormas.Gravar;
end;

function TFormasCreditosController.Localizar(aParam: array of variant): boolean;
begin
  Result := FFormas.Localizar(aParam);
end;

function TFormasCreditosController.SetupModal(FDQuery: TFDQuery): Boolean;
begin
  FFormas.SetupModel(FDQuery);
end;

end.
