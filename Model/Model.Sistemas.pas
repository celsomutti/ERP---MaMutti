unit Model.Sistemas;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao;

type
  TSistemas = class
  private

    FConexao : TConexao;
    FAcao: TAcao;
    FDescricao: String;
    FCodigo: Integer;
    FQuery: TFDQuery;

    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;

  public
    constructor Create;
    property Codigo: Integer read FCodigo write FCodigo;
    property Descricao: String read FDescricao write FDescricao;
    property Query: TFDQuery read FQuery write FQuery;
    property Acao: TAcao read FAcao write FAcao;

    function Localizar(aParam: array of variant): boolean;
    function Gravar(): Boolean;
  end;
  const
  TABLENAME = 'sistema_sistemas';


implementation

{ TSistemas }

function TSistemas.Alterar: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('update ' + TABLENAME + ' set des_sistema = :des_sistema where cod_sistema = :cod_sistema',
                   [FDescricao, FCodigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TSistemas.Create;
begin
  FConexao := TConexao.create;
end;

function TSistemas.Excluir: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery;
    Result := False;
    FDQuery.ExecSQL('delete from ' + TABLENAME + 'where cod_sistema = :cod_sistema', [FCodigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;end;

function TSistemas.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    Common.ENum.tacIncluir: Result := Inserir();
    Common.ENum.tacAlterar: Result := Alterar();
    Common.ENum.tacExcluir: Result := Excluir();
  end;
end;

function TSistemas.Inserir: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('insert into ' + TABLENAME + ' (cod_sistema, des_sistema) values (:cod_sistema, :des_sistema)',
                   [FCodigo, FDescricao]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TSistemas.Localizar(aParam: array of variant): boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    if Length(aParam) < 2 then Exit;
    FDQuery.SQL.Clear;

    FDQuery.SQL.Add('select * from ' + TABLENAME);
    if aParam[0] = 'CODIGO' then
    begin
      FDQuery.SQL.Add('where cod_sistema = :cod_sistema');
      FDQuery.ParamByName('cod_sistema').AsInteger := aParam[1];
    end;
    if aParam[0] = 'DESCRICAO' then
    begin
      FDQuery.SQL.Add('where des_sistema = :des_sistema');
      FDQuery.ParamByName('des_sistema').AsString := aParam[1];
    end;
    if aParam[0] = 'FILTRO' then
    begin
      FDQuery.SQL.Add('where ' + aParam[1]);
    end;
    if aParam[0] = 'APOIO' then
    begin
      FDQuery.SQL.Clear;
      FDQuery.SQL.Add('select  ' + aParam[1] + ' from ' + TABLENAME + ' ' + aParam[2]);
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

end.
