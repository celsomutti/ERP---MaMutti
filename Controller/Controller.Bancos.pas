unit Controller.Bancos;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Common.Utils, Model.Bancos;

type
  TBancosController = class
  private
    FBancos : TBancos;
  public
    constructor Create();
    destructor Destroy(); override;
    property Bancos: TBancos read FBancos write FBancos;
    function Localizar(aParam: array of variant): boolean;
    function Gravar(): Boolean;
    function SetupModal(FDQuery: TFDQuery): Boolean;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;
  end;

implementation

{ TBancosController }

constructor TBancosController.Create;
begin
  FBancos := TBancos.Create;
end;

destructor TBancosController.Destroy;
begin
  FBancos.Free;
  inherited;
end;

function TBancosController.GetField(sField, sKey, sKeyValue: String): String;
begin
  Result := FBancos.GetField(sField, sKey, sKeyValue);
end;

function TBancosController.Gravar: Boolean;
begin
  Result := FBancos.Gravar();
end;

function TBancosController.Localizar(aParam: array of variant): boolean;
begin
  Result := FBancos.Localizar(aParam);
end;


function TBancosController.SetupModal(FDQuery: TFDQuery): Boolean;
begin
  Result := FBancos.SetupModel(FDQuery);
end;

end.
