unit Model.Acessos;

interface

uses Common.ENum, FireDAC.Comp.Client, Vcl.ActnList, DAO.Conexao;

type
  TAcessos = class
  private
    FAcao: TAcao;
    FMenu: Integer;
    FSistema: Integer;
    FUsuario: Integer;
    FModulo: Integer;
    FAdministrador: String;
    FConexao : TConexao;
    FQuery: TFDQuery;

    function Inserir(): Boolean;
    function Excluir(): Boolean;

  public
    constructor Create;
    property Sistema: Integer read FSistema write FSistema;
    property Modulo: Integer read FModulo write FModulo;
    property Menu: Integer read FMenu write FMenu;
    property Usuario: Integer read FUsuario write FUsuario;
    property Administrador: String read FAdministrador write FAdministrador;
    property Query : TFDQuery read FQuery write FQuery;
    property Acao: TAcao read FAcao write FAcao;

    function Localizar(aParam: array of variant): boolean;
    function AcessoExiste(aParam: array of variant): Boolean;
    function Gravar(): Boolean;
    function VerificaLogin(iMenu: Integer; iUsuario: Integer): Boolean;
    function VerificaModulo(iModulo: Integer; iUsuario: Integer): Boolean;
    function VerificaSistema(iSistema: Integer; iUsuario: Integer): Boolean;

  end;
  const
  TABLENAME = 'sistema_usuarios_acessos';


implementation

{ TAcessos }


function TAcessos.AcessoExiste(aParam: array of variant): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    REsult:= False;
    FDQuery := FConexao.ReturnQuery();
    if Length(aParam) < 2 then Exit;
    FDQuery.SQL.Clear;

    FDQuery.SQL.Add('select * from ' + TABLENAME);
    FDQuery.SQL.Add('WHERE COD_SISTEMA = :PCOD_SISTEMA AND COD_MODULO = :PCOD_MODULO AND COD_MENU = :PCOD_MENU AND ' +
                    'COD_USUARIO = :PCOD_USUARIO');
    FDQuery.ParamByName('PCOD_SISTEMA').AsInteger := aParam[1];
    FDQuery.ParamByName('PCOD_MODULO').AsString := aParam[2];
    FDQuery.ParamByName('PCOD_MENU').AsInteger := aParam[3];
    FDQuery.ParamByName('PCOD_USUARIO').AsInteger := aParam[4];
    FDQuery.Open();
    Result := (not FDQuery.IsEmpty);
  finally
    FDQuery.Active := False;
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TAcessos.Create;
begin
  FConexao := TConexao.Create;
end;

function TAcessos.Excluir: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery;
    Result := False;
    if FSistema = -1 then
    begin
      FDQuery.ExecSQL('DELETE FROM ' + TABLENAME + ' WHERE COD_USUARIO = :PCOD_USUARIO',
                     [FUsuario]);
    end
    else
    begin
      FDQuery.ExecSQL('DELETE FROM ' + TABLENAME + 'WHERE COD_SISTEMA = :PCOD_SISTEMA AND COD_MODULO = :PCOD_MODULO AND ' +
                      'COD_MENU = :PCOD_MENU AND COD_USUARIO = :PCOD_USUARIO',
                     [FSistema, FModulo, FMenu, FUsuario]);
    end;
    Result := True;
  finally
    FDQuery.Active := False;
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TAcessos.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    Common.ENum.tacIncluir: Result := Inserir();
    Common.ENum.tacExcluir: Result := Excluir();
  end;
end;

function TAcessos.Inserir: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME + ' (COD_SISTEMA, COD_MODULO, COD_MENU, COD_USUARIO) VALUES ' +
                    '(:PCOD_SISTEMA, :PCOD_MODULO, :PCOD_MENU, :PCOD_USUARIO)',
                    [FSistema, FModulo, FMenu, FUsuario]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TAcessos.Localizar(aParam: array of variant): boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    if not Assigned(FDQuery) then
    begin
      FDQuery := FConexao.ReturnQuery();
    end;
    if Length(aParam) < 2 then Exit;
    FDQuery.SQL.Clear;

    FDQuery.SQL.Add('select * from ' + TABLENAME);
    if aParam[0] = 'MODULO' then
    begin
      FDQuery.SQL.Add('WHERE COD_MODULO = :PCOD_MODULO AND COD_USUARIO = :PCOD_USUARIO');
      FDQuery.ParamByName('PCOD_MODULO').AsInteger := aParam[1];
      FDQuery.ParamByName('PCOD_USUARIO').AsInteger := aParam[2];
    end;
    if aParam[0] = 'SISTEMA' then
    begin
      FDQuery.SQL.Add('WHERE COD_SISTEMA = :PCOD_SISTEMA AND COD_USUARIO = :PCOD_USUARIO');
      FDQuery.ParamByName('PCOD_SISTEMA').AsInteger := aParam[1];
      FDQuery.ParamByName('PCOD_USUARIO').AsInteger := aParam[2];
    end;
    if aParam[0] = 'MENU' then
    begin
      FDQuery.SQL.Add('WHERE COD_MENU = :PCOD_MENU AND COD_USUARIO = :PCOD_USUARIO');
      FDQuery.ParamByName('PCOD_MENU').AsInteger := aParam[1];
      FDQuery.ParamByName('PCOD_USUARIO').AsInteger := aParam[2];
    end;
    if aParam[0] = 'USUARIO' then
    begin
      FDQuery.SQL.Add('WHERE COD_USUARIO = :PCOD_USUARIO');
      FDQuery.ParamByName('PCOD_USUARIO').AsInteger := aParam[1];
    end;
    if aParam[0] = 'ACESSO' then
    begin
      FDQuery.SQL.Add('WHERE COD_SISTEMA = :PCOD_SISTEMA AND COD_MODULO = :PCOD_MODULO AND COD_MENU = :PCOD_MENU AND ' +
                      'COD_USUARIO = :PCOD_USUARIO');
      FDQuery.ParamByName('PCOD_SISTEMA').AsInteger := aParam[1];
      FDQuery.ParamByName('PCOD_MODULO').AsString := aParam[2];
      FDQuery.ParamByName('PCOD_MENU').AsInteger := aParam[3];
      FDQuery.ParamByName('PCOD_USUARIO').AsInteger := aParam[4];
    end;
    if aParam[0] = 'FILTRO' then
    begin
      FDQuery.SQL.Add('WHERE ' + aParam[1]);
    end;
    FDQuery.Open();
    if FDQuery.IsEmpty then
      Exit;
    FQuery := FDQuery;
    Result := True;
  finally
    FDQuery.Active := False;
    FDQuery.Connection.Connected := False;
    FDQuery.Free;
  end;
end;

function TAcessos.VerificaLogin(iMenu, iUsuario: Integer): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.SQL.Add('select * from ' + TABLENAME);
    FDQuery.SQL.Add('WHERE COD_MENU = :PCOD_MENU AND COD_USUARIO = :PCOD_USUARIO');
    FDQuery.ParamByName('PCOD_MENU').AsInteger := iMenu;
    FDQuery.ParamByName('PCOD_USUARIO').AsInteger := iUsuario;
    FDQuery.Open();
    Result := not FDQuery.IsEmpty;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TAcessos.VerificaModulo(iModulo, iUsuario: Integer): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.SQL.Add('select * from ' + TABLENAME);
    FDQuery.SQL.Add('WHERE COD_MODULO = :PCOD_MODULO AND COD_USUARIO = :PCOD_USUARIO');
    FDQuery.ParamByName('PCOD_MODULO').AsInteger := iModulo;
    FDQuery.ParamByName('PCOD_USUARIO').AsInteger := iUsuario;
    FDQuery.Open();
    Result := not FDQuery.IsEmpty;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TAcessos.VerificaSistema(iSistema, iUsuario: Integer): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.SQL.Add('select * from ' + TABLENAME);
    FDQuery.SQL.Add('WHERE COD_SISTEMA = :PCOD_SISTEMA AND COD_USUARIO = :PCOD_USUARIO');
    FDQuery.ParamByName('PCOD_SISTEMA').AsInteger := iSistema;
    FDQuery.ParamByName('PCOD_USUARIO').AsInteger := iUsuario;
    FDQuery.Open();
    Result := not FDQuery.IsEmpty;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.
