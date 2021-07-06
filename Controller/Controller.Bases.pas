unit Controller.Bases;

interface

  uses System.SysUtils, FireDAC.Comp.Client, Model.Bases;

  type

    TBasesController = class

  private

    FBases : TBases;

  public

    constructor Create;
    destructor Destroy; override;

    function Gravar: Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function LocalizarExato(aParam: array of variant): Boolean;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;

    property Bases: TBases read FBases write FBases;

  end;

implementation

{ TBasesController }

constructor TBasesController.Create;
begin
  FBases := TBases.Create;
end;

destructor TBasesController.Destroy;
begin
  FBases.Free;
  inherited;
end;

function TBasesController.GetField(sField, sKey, sKeyValue: String): String;
begin
  Result := FBases.GetField(sField, sKey, sKeyValue)
end;

function TBasesController.Gravar: Boolean;
begin
  Result := FBases.Gravar;
end;

function TBasesController.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FBases.Localizar(aParam);
end;

function TBasesController.LocalizarExato(aParam: array of variant): Boolean;
begin
  Result := FBases.LocalizarExato(aParam);
end;

end.
