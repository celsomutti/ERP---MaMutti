unit Controller.Sistemas;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Model.Sistemas;

type
  TSistemasController = class
  private
    FSistemas : TSistemas;
  public
    constructor Create();
    destructor Destroy(); override;
    property Sistemas: TSistemas read FSistemas write FSistemas;
    function Localizar(aParam: array of variant): Boolean;
    function Gravar(): Boolean;
  end;

implementation

{ TSistemasController }

constructor TSistemasController.Create;
begin
  FSistemas := TSistemas.Create;
end;

destructor TSistemasController.Destroy;
begin
  FSistemas.Free;
  inherited;
end;

function TSistemasController.Gravar: Boolean;
begin
  Result := FSistemas.Gravar();
end;

function TSistemasController.Localizar(aParam: array of variant): boolean;
begin
  Result := FSistemas.Localizar(aParam);
end;


end.
