unit Controller.Acessos;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Model.Acessos, Vcl.ActnList;

type
  TAcessosController = class
  private
    FAcessos: TAcessos;
  public
    constructor Create();
    destructor Destroy(); override;
    property Acessos: TAcessos read FAcessos write FAcessos;
    function Localizar(aParam: array of variant): boolean;
    function VerificaLogin(iMenu: Integer; iUsuario: Integer): Boolean;
    function VerificaModulo(iModulo: Integer; iUsuario: Integer): Boolean;
    function VerificaSistema(iSistema: Integer; iUsuario: Integer): Boolean;
    function Gravar(): Boolean;
  end;

implementation

{ TAcessosController }

constructor TAcessosController.Create;
begin
  FAcessos := TAcessos.Create;
end;

destructor TAcessosController.Destroy;
begin
  FAcessos.Free;
  inherited;
end;

function TAcessosController.Gravar: Boolean;
begin
  Result := FAcessos.Gravar();
end;

function TAcessosController.Localizar(aParam: array of variant): boolean;
begin
  Result := FAcessos.Localizar(aParam);
end;

function TAcessosController.VerificaLogin(iMenu, iUsuario: Integer): Boolean;
begin
  Result := Facessos.VerificaLogin(iMenu, iUsuario);
end;

function TAcessosController.VerificaModulo(iModulo, iUsuario: Integer): Boolean;
begin
  Result := Facessos.VerificaModulo(iModulo, iUsuario);
end;

function TAcessosController.VerificaSistema(iSistema, iUsuario: Integer): Boolean;
begin
  Result := Facessos.VerificaSistema(iSistema, iUsuario);
end;

end.
