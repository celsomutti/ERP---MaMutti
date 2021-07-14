unit Model.FormasCreditos;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils, System.Variants;

type
  TFormasCreditos = class
  private
    FDescricao              : string;
    FCodigo                 : integer;
    FCodigoFormaBIMER       : string;
    FCodigoModalidadeBimer  : string;
    FAcao                   : TAcao;
    FQuery                  : TFDQuery;
    FConexao                : TConexao;

    function  Inserir() : Boolean;
    function  Alterar() : Boolean;
    function  Excluir() : Boolean;

  public
    property Codigo                 : integer   read  FCodigo                 write FCodigo;
    property Descricao              : string    read  FDescricao              write FDescricao;
    property CodigoFormaBIMER       : string    read  FCodigoFormaBIMER       write FCodigoFormaBIMER;
    property CodigoModalidadeBimer  : string    read  FCodigoModalidadeBimer  write FCodigoModalidadeBimer;
    property Acao                   : TAcao     read  FAcao                   write FAcao;
    property Query                  : TFDQuery  read  FQuery                  write FQuery;

    constructor Create;

    function  GetField(sField: String; sKey: String; sKeyValue: String) : String;
    function  SetupModel(FDQuery: TFDQuery)                             : Boolean;
    function  Localizar(aParam: array of variant)                       : Boolean;
    function  Gravar()                                                  : Boolean;

  end;

  const
    TABLENAME = 'sistema_financeiro_formas_credito';
    SQLSELECT = 'select cod_forma_credito, des_forma_credito, cod_forma_BIMER, cod_modalidade_BIMER from ' +
                TABLENAME;
    SQLINSERT = 'insert into ' + TABLENAME + ' (cod_forma_credito, des_forma_credito, cod_forma_BIMER, cod_modalidade_BIMER) ' +
                'values (:cod_forma_credito, :des_forma_credito, :cod_forma_BIMER, :cod_modalidade_BIMER);';
    SQLUPDATE = 'update ' + TABLENAME + ' set des_forma_credito = :des_forma_credito, cod_forma_BIMER = :cod_forma_BIMER, ' +
                'cod_modalidade_BIMER = :cod_modalidade_BIMER ' +
                'where cod_forma_credito = :cod_forma_credito';
    SQLDELETE = 'delete from ' + TABLENAME +
                'where cod_forma_credito = :cod_forma_credito';

implementation

{ TFormasCreditos }

function TFormasCreditos.Alterar: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLUPDATE, [FDescricao, FCodigoFormaBIMER, FCodigoModalidadeBimer, FCodigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TFormasCreditos.Create;
begin
  FConexao := TConexao.Create;
end;

function TFormasCreditos.Excluir: Boolean;
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

function TFormasCreditos.GetField(sField, sKey, sKeyValue: String): String;
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

function TFormasCreditos.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    tacAlterar: Result := Alterar();
    tacIncluir: Result := Inserir();
    tacExcluir: Result := Excluir();
  end;
end;

function TFormasCreditos.Inserir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLINSERT, [FCodigo, FDescricao, FCodigoFormaBIMER, FCodigoModalidadeBimer]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TFormasCreditos.Localizar(aParam: array of variant): Boolean;
begin
  Result := False;
  FQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FQuery.SQL.Clear;

  FQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'CODIGO' then
  begin
    FQuery.SQL.Add('where cod_forma_credito = :cod_forma_credito');
    FQuery.ParamByName('cod_forma_credito').AsInteger := aParam[1];
  end
  else if aParam[0] = 'DESCRICAO' then
  begin
    FQuery.SQL.Add('where des_forma_credito like :des_forma_credito');
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

function TFormasCreditos.SetupModel(FDQuery: TFDQuery): Boolean;
begin
  FCodigo                 :=  FDQuery.FieldByName('cod_forma_credito').AsInteger;
  FDescricao              :=  FDQuery.FieldByName('des_forma_credito').AsString;
  FCodigoFormaBIMER       :=  FDQuery.FieldByName('cod_forma_BIMER').AsString;
  FCodigoModalidadeBimer  :=  FDQuery.FieldByName('cod_modalidade_BIMER').AsString;
end;

end.
