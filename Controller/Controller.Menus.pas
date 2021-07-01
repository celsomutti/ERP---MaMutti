unit Controller.Menus;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Model.Menus;

type
  TMenusController = class
  private
    FMenus: TMenus;
  public
    constructor Create();
    destructor Destroy(); override;
    property Menus: TMenus read FMenus write FMenus;
    function Localizar(aParam: array of variant): boolean;
    function Gravar(): Boolean;
  end;

implementation

{ TMenusController }

constructor TMenusController.Create;
begin
  FMenus := TMenus.Create;
end;

destructor TMenusController.Destroy;
begin
  FMenus.Free;
  inherited;
end;

function TMenusController.Gravar: Boolean;
begin
  Result := FMenus.Gravar();
end;

function TMenusController.Localizar(aParam: array of variant): boolean;
begin
  Result := FMenus.Localizar(aParam);
end;


end.
