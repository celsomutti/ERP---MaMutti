unit Controller.Modulos;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Model.Modulos;

type
  TModulosController = class
  private
    FModulos : TModulos;
  public
    constructor Create();
    destructor Destroy(); override;
    property Modulos: TModulos read FModulos write FModulos;
    function Localizar(aParam: array of variant): boolean;
    function Gravar(): Boolean;
  end;

implementation

{ TModulosController }

constructor TModulosController.Create;
begin
  FModulos := TModulos.Create;
end;

destructor TModulosController.Destroy;
begin
  FModulos.Free;
  inherited;
end;

function TModulosController.Gravar: Boolean;
begin
  Result := FModulos.Gravar();
end;

function TModulosController.Localizar(aParam: array of variant): boolean;
begin
  Result := FModulos.Localizar(aParam);
end;


end.
