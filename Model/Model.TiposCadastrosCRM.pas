unit Model.TiposCadastrosCRM;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils, System.Variants;

type
  TTiposCadastrosCRM = class
  private
    FDescricao              : string;
    FCodigo                 : integer;
    FAcao                   : TAcao;
    FQuery                  : TFDQuery;
    FConexao                : TConexao;

    function  Inserir() : Boolean;
    function  Alterar() : Boolean;
    function  Excluir() : Boolean;

  public
    property Codigo                 : integer   read  FCodigo                 write FCodigo;
    property Descricao              : string    read  FDescricao              write FDescricao;
    property Acao                   : TAcao     read  FAcao                   write FAcao;
    property Query                  : TFDQuery  read  FQuery                  write FQuery;

    constructor Create;

    function  GetField(sField: String; sKey: String; sKeyValue: String) : String;
    function  SetupModel(FDQuery: TFDQuery)                             : Boolean;
    function  Localizar(aParam: array of variant)                       : Boolean;
    function  Gravar()                                                  : Boolean;

  end;

  const
    TABLENAME = 'sistema_cadastro_tipos_cadastro';
    SQLSELECT = 'select cod_tipo_cadastro, des_tipo_cadastro from ' +
                TABLENAME;
    SQLINSERT = 'insert into ' + TABLENAME + ' (cod_tipo_cadastro, des_tipo_cadastro) ' +
                'values (:cod_tipo_cadastro, :des_tipo_cadastro);';
    SQLUPDATE = 'update ' + TABLENAME + ' set des_tipo_cadastro = :des_tipo_cadastro ' +
                'where cod_tipo_cadastro = :cod_tipo_cadastro';
    SQLDELETE = 'delete from ' + TABLENAME +
                'where cod_tipo_cadastro = :cod_tipo_cadastro';

implementation

{ TTiposCadastrosCRM }

function TTiposCadastrosCRM.Alterar: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLUPDATE, [FDescricao, FCodigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TTiposCadastrosCRM.Create;
begin
  FConexao := TConexao.Create;
end;

function TTiposCadastrosCRM.Excluir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLDELETE, [FCodigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TTiposCadastrosCRM.GetField(sField, sKey, sKeyValue: String): String;
var
  FDQuery: TFDQuery;
begin
  try
    Result := '';
    FDQuery := FConexao.ReturnQuery();
    FDQuery.SQL.Text := 'select ' + sField + ' from ' + TABLENAME + ' where ' + sKey + ' = ' + sKeyValue;
    FDQuery.Open();
    if not FDQuery.IsEmpty then Result := FDQuery.FieldByName(sField).AsString;
  finally
    FDQuery.Free;
  end;
end;

function TTiposCadastrosCRM.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    tacAlterar: Result := Alterar();
    tacIncluir: Result := Inserir();
    tacExcluir: Result := Excluir();
  end;
end;

function TTiposCadastrosCRM.Inserir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLINSERT, [FCodigo, FDescricao]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TTiposCadastrosCRM.Localizar(aParam: array of variant): Boolean;
begin
  Result := False;
  FQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FQuery.SQL.Clear;

  FQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'CODIGO' then
  begin
    FQuery.SQL.Add('where cod_tipo_cadastro = :cod_tipo_cadastro');
    FQuery.ParamByName('cod_tipo_cadastro').AsInteger := aParam[1];
  end
  else if aParam[0] = 'DESCRICAO' then
  begin
    FQuery.SQL.Add('where des_tipo_cadastro like :des_tipo_cadastro');
    FQuery.ParamByName('des_tipo_cadastro').AsString := aParam[1];
  end
  else if aParam[0] = 'FILTRO' then
  begin
    FQuery.SQL.Add('where ' + aParam[1]);
  end
  else if aParam[0] = 'APOIO' then
  begin
    FQuery.SQL.Clear;
    FQuery.SQL.Add('select  ' + aParam[1] + ' from ' + TABLENAME + ' ' + aParam[2]);
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

function TTiposCadastrosCRM.SetupModel(FDQuery: TFDQuery): Boolean;
begin
  FCodigo                 :=  FDQuery.FieldByName('cod_tipo_cadastro').AsInteger;
  FDescricao              :=  FDQuery.FieldByName('des_tipo_cadastro').AsString;
end;

end.
