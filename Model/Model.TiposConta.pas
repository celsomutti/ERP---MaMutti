unit Model.TiposConta;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils, System.Variants;

type
  TTiposConta = class
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
    TABLENAME = 'sistema_financeiro_tipos_conta';
    SQLSELECT = 'select cod_tipo_conta, des_tipo_conta from ' +
                TABLENAME;
    SQLINSERT = 'insert into ' + TABLENAME + ' (cod_tipo_conta, des_tipo_conta) ' +
                'values (:cod_tipo_conta, :des_tipo_conta);';
    SQLUPDATE = 'update ' + TABLENAME + ' set des_tipo_conta = :des_tipo_conta' +
                'where cod_tipo_conta = :cod_tipo_conta';
    SQLDELETE = 'delete from ' + TABLENAME +
                'where cod_tipo_conta = :cod_tipo_conta';

implementation

{ TTiposConta }

function TTiposConta.Alterar: Boolean;
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

constructor TTiposConta.Create;
begin
  FConexao := TConexao.Create;
end;

function TTiposConta.Excluir: Boolean;
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

function TTiposConta.GetField(sField, sKey, sKeyValue: String): String;
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

function TTiposConta.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    tacAlterar: Result := Alterar();
    tacIncluir: Result := Inserir();
    tacExcluir: Result := Excluir();
  end;
end;

function TTiposConta.Inserir: Boolean;
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

function TTiposConta.Localizar(aParam: array of variant): Boolean;
begin
  Result := False;
  FQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FQuery.SQL.Clear;

  FQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'CODIGO' then
  begin
    FQuery.SQL.Add('where cod_tipo_conta = :cod_tipo_conta');
    FQuery.ParamByName('cod_tipo_conta').AsInteger := aParam[1];
  end
  else if aParam[0] = 'DESCRICAO' then
  begin
    FQuery.SQL.Add('where des_tipo_conta like :des_tipo_conta');
    FQuery.ParamByName('des_forma_credito').AsString := aParam[1];
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

function TTiposConta.SetupModel(FDQuery: TFDQuery): Boolean;
begin
  FCodigo                 :=  FDQuery.FieldByName('cod_tipo_conta').AsInteger;
  FDescricao              :=  FDQuery.FieldByName('des_tipo_conta').AsString;
end;

end.
