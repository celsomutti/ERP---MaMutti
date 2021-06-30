unit Model.Usuarios;

interface

uses Generics.Collections, FireDAC.Stan.Intf, FireDAC.Stan.Param, FireDAC.Phys.Intf, FireDAC.Comp.Client, System.AnsiStrings,
  DAO.Conexao, Common.ENum, System.SysUtils, VCL.Dialogs, system.Variants;

type
  TUsuarios = class
  private
    FAcao     : TAcao;
    FEMail    : String;
    FCodigo   : Integer;
    FNivel    : Integer;
    FNome     : String;
    FUserName : string;
    FGrupo    : Integer;
    FAtivo    : SmallInt;
    FQuery    : TFDQuery;
    FConexao  : TConexao;

    function IncludeData(): boolean;
    function UpdateData(): boolean;
    function DeleteData(): boolean;

  public
    constructor Create;

    property Codigo   : Integer   read  FCodigo   write FCodigo;
    property Nome     : String    read  FNome     write FNome;
    property UserName : String    read  FUserName write FUserName;
    property EMail    : String    read  FEMail    write FEMail;
    property Grupo    : Integer   read  FGrupo    write FGrupo;
    property Nivel    : Integer   read  FNivel    write FNivel;
    property Ativo    : SmallInt   read  FAtivo    write FAtivo;
    property Acao     : TAcao     read  FAcao     write FAcao;
    property Query    : TFDQuery  read  FQuery    write FQuery;

    function  CreateUser(sPassword: string; iDaysExpire: integer): boolean;
    function  Privilages(sPrivileges: string): boolean;
    function  AlterPwd(sUsuario, sSenha: string): boolean;
    function  LockUnLockUser(bFlag: boolean): boolean;
    function  Gravar(): boolean;
    function  Search(aParam : array of variant): boolean;
    function  GetField(sField : String; sKey : String; sKeyValue : String) : String;
    procedure SetupSelf(fdQuery : TFDQuery);
    procedure ClearSelf();
  end;

implementation

uses Global.Parametros;

CONST
  TABLENAME   = 'sistema_usuarios';
  SQLINCLUDE  = 'insert into ' + TABLENAME + ' (id_usuario, nom_usuario, des_login, des_email, cod_grupo, cod_nivel, dom_ativo) ' +
                'values ' +
                '(:id_usuario, :nom_usuario, :des_login, :des_email, :cod_grupo, :cod_nivel, :dom_ativo);';
  SQLUPDATE   = 'update ' + TABLENAME + ' set ' +
                'nom_usuario = :nom_usuario, des_login = :des_login, des_email = :des_email, ' +
                'cod_grupo = :cod_grupo, cod_nivel = :cod_nivel, dom_ativo = :dom_ativo ' +
                'where id_usuario = :idusuario;';
  SQLSELECT   = 'select id_usuario, nom_usuario, des_login, des_email, cod_grupo, cod_nivel, dom_ativo ' +
                'from ' + TABLENAME;
  SQLDELETE   = 'delete from ' + TABLENAME +
                ' where id_usuario = :idusuario;';

{ TUsuarios }

function TUsuarios.AlterPwd(sUsuario, sSenha: string): boolean;
var
  sSQL, sServer: string;
  FConn : TFDConnection;
begin
  try
    Result := False;
    FConn := FConexao.GetConn;
    FConn.Params.UserName := 'sys.user';
    FConn.Params.Password := 'mast3rk3y';
    sServer := 'localhost';
    sSQL := 'alter user ''' + sUsuario + '''@''' + sServer + ''' identified by ''' + sSenha + ''' password expire interval 90 day;';
    Fconn.ExecSQL(sSQL);
    sSQL := 'flush privileges';
    Fconn.ExecSQL(sSQL);
    Fconn.Connected := False;
    Result := True;
  except on e : Exception do
    begin
       ShowMessageFmt('Ocorreu o seguinte erro: %s', [e.Message]);
       FConn.Connected := False;
    end;
  end;

end;

procedure TUsuarios.ClearSelf;
begin
  FCodigo := 0;
  FNome := '';
  FUserName := '';
  FEMail := '';
  FGrupo := 0;
  FNivel := 0;
end;

constructor TUsuarios.Create;
begin
  FConexao := TConexao.Create;
end;

function TUsuarios.CreateUser(sPassword: string; iDaysExpire: integer): boolean;
var
  sSQL, sServer: string;
  FConn : TFDConnection;
begin
  try
    Result := False;
    FConn := FConexao.GetConn;
    sServer := 'localhost';
    sSQL := 'create user ''' + FUserName + '''@''' + sServer + ''' identified by ''' + sPassword + ''' ';
    if iDaysExpire > 0 then
      sSQL := sSQL + 'password expire interval ' + iDaysExpire.ToString + ' day;';
    FConn.ExecSQL(sSQL);
    sSQL := 'alter user '''  + FUserName + '''@''' + sServer + ''' password expire;';
    Fconn.ExecSQL(sSQL);
    FConn.Connected := False;
    Result := True;
  except on e : Exception do
    begin
       ShowMessageFmt('Ocorreu o seguinte erro: %s', [e.Message]);
       FConn.Connected := False;
    end;
  end;
end;

function TUsuarios.DeleteData: boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLDELETE, [FCodigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TUsuarios.GetField(sField, sKey, sKeyValue: String): String;
var
  FQueryField : TFDQuery;
begin
  try
    Result := '';
    FQueryField := FConexao.ReturnQuery;
    FQueryField.SQL.Text := 'select ' + sField + ' from ' + TABLENAME + ' where ' + sKey + ' = ' + sKeyValue;
    FQueryField.Open();
    if FQueryField.IsEmpty then
      Exit;
    Result := FQueryField.FieldByName(sField).AsString;
  finally
    FQueryField.Active := False;
    FQueryField.Connection.Connected := False;
    FQueryField.Free;
  end;
end;

function TUsuarios.Gravar: boolean;
begin
  case FAcao of
    tacIncluir: Result := Self.IncludeData();
    tacAlterar: Result := Self.UpdateData();
    tacExcluir: Result := Self.DeleteData();
  end;
end;

function TUsuarios.IncludeData: boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLINCLUDE, [FCodigo, FNome, FUserName, FEMail, FGrupo, FNivel, FAtivo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TUsuarios.LockUnLockUser(bFlag: boolean): boolean;
var
  sSQL, sServer: string;
  FConn : TFDConnection;
begin
  try
    Result := false;
    FConn := FConexao.GetConn;
    sServer := 'localhost';
    if bFlag then
      sSQL := 'alter user ''' + FUsername + '''@''' + sServer + ''' account unlock;'
    else
      sSQL := 'alter user ''' + FUsername + '''@''' + sServer + ''' account lock;';
    FConn.ExecSQL(sSQL);
    FConn.Connected := False;
    Result := True;
  except on e : Exception do
    begin
       ShowMessageFmt('Ocorreu o seguinte erro: %s', [e.Message]);
       FConn.Connected := False;
    end;
  end;

end;

function TUsuarios.Privilages(sPrivileges: string): Boolean;
var
  sSQL, sServer: string;
  FConn : TFDConnection;
begin
  try
    Result := false;
    FConn := FConexao.GetConn;
    sServer := 'localhost';
    sSQL := 'grant ' + sPrivileges + ' on *.*  to ''' + FUsername + '''@''' + sServer + ''' with grant option;';
    FConn.ExecSQL(sSQL);
    sSQL := 'flush privileges;';
    FConn.ExecSQL(sSQL);
    FConn.Connected := False;
    Result := True;
  except on e : Exception do
    begin
       ShowMessageFmt('Ocorreu o seguinte erro: %s', [e.Message]);
       FConn.Connected := False;
    end;
  end;
end;

function TUsuarios.Search(aParam: array of variant): boolean;
begin
  Result := False;
  if Length(aParam) < 2 then
    Exit;
  FQuery := FConexao.ReturnQuery;
  FQuery.SQL.Add(SQLSELECT);
  if aParam[0] = 'ID' then
  begin
    FQuery.SQL.Add('where id_usuario = :id_usuario');
    FQuery.ParamByName('id_usuario').AsInteger := aParam[1];
  end
  else if aParam[0] = 'NOME' then
  begin
    FQuery.SQL.Add('where nom_usuario = :nom_usuario');
    FQuery.ParamByName('nom_usuario').AsString := aParam[1];
  end
  else if aParam[0] = 'LOGIN' then
  begin
    FQuery.SQL.Add('where des_des_login = :des_login');
    FQuery.ParamByName('des_login').AsString := aParam[1];
  end
  else if aParam[0] = 'FILTRO' then
  begin
    if VarToStr(aParam[1]) <> '' then
      FQuery.SQL.Add('where ' + VarToStr(aParam[1]));
  end
  else if aParam[0] = 'APOIO' then
  begin
    FQuery.SQL.Clear;
    FQuery.SQL.Add('select ' + VarToStr(aParam[1]) + ' from ' + TABLENAME + ' where ' + VarToStr(aParam[2]));
  end;
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    FQuery.Active := False;
    FQuery.Connection.Connected := False;
    Exit;
  end;
  Result := True;
end;

procedure TUsuarios.SetupSelf(fdQuery: TFDQuery);
begin
  FCodigo := fdQuery.FieldByName('id_usuario').AsInteger;
  FNome := fdQuery.FieldByName('nom_usuario').AsString;
  FUserName := fdQuery.FieldByName('des_login').AsString;
  FEMail := fdQuery.FieldByName('des_email').AsString;
  FGrupo := fdQuery.FieldByName('cod_grupo').AsInteger;
  FNivel := fdQuery.FieldByName('cod_nivel').AsInteger;
  FAtivo := fdQuery.FieldByName('dom_ativo').AsInteger;
end;

function TUsuarios.UpdateData: boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLUPDATE, [FNome, FUserName, FEMail, FGrupo, FNivel, FAtivo, FCodigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.
