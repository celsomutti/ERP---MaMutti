unit Model.Modulos;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao;

type
  TModulos = class
  private
    FConexao : TConexao;
    FAcao: TAcao;
    FDescricao: String;
    FCodigo: Integer;
    FSistema: Integer;
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

    function Localizar(aParam: array of variant): Boolean;
    function Gravar(): Boolean;

  end;
  const
    TABLENAME = 'sistema_modulos';


implementation

{ TModulos }

function TModulos.Alterar: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + ' SET DES_MODULO = :PDES_MODULO WHERE COD_MODULO = :PCOD_MODULO AND ' +
                    'COD_SISTEMA = :PCOD_SISTEMA',
                   [FDescricao, FCodigo, FSistema]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TModulos.Create;
begin
  FConexao := TConexao.Create;
end;

function TModulos.Excluir: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery;
    Result := False;
    FDQuery.ExecSQL('DELETE FROM ' + TABLENAME + 'WHERE COD_MODULO = :PCOD_MODULO AND COD_SISTEMA = :PCOD_SISTEMA',
                   [FCodigo, FSistema]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TModulos.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    Common.ENum.tacIncluir: Result := Inserir();
    Common.ENum.tacAlterar: Result := Alterar();
    Common.ENum.tacExcluir: Result := Excluir();
  end;
end;

function TModulos.Inserir: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME + ' (COD_MODULO, COD_SISTEMA, DES_SISTEMA) VALUES ' +
                    '(:PCOD_MODULO, :PCOD_SISTEMA, :PDES_MODULO)',
                    [FCodigo, FSistema, FDescricao]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TModulos.Localizar(aParam: array of variant): boolean;
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
      FDQuery.SQL.Add('WHERE COD_MODULO = :PCOD_MODULO');
      FDQuery.ParamByName('PCOD_MODULO').AsInteger := aParam[1];
    end;
    if aParam[0] = 'SISTEMA' then
    begin
      FDQuery.SQL.Add('WHERE COD_SISTEMA = :PCOD_SISTEMA');
      FDQuery.ParamByName('PCOD_SISTEMA').AsInteger := aParam[1];
    end;
    if aParam[0] = 'MODULO' then
    begin
      FDQuery.SQL.Add('WHERE COD_SISTEMA = :PCOD_SISTEMA AND COD_MODULO = :PCOD_MODULO');
      FDQuery.ParamByName('PCOD_SISTEMA').AsInteger := aParam[1];
      FDQuery.ParamByName('PCOD_MODULO').AsInteger := aParam[2];
    end;
    if aParam[0] = 'DESCRICAO' then
    begin
      FDQuery.SQL.Add('WHERE DES_MODULO = :PDES_MODULO');
      FDQuery.ParamByName('PDES_MODULO').AsString := aParam[1];
    end;
    if aParam[0] = 'FILTRO' then
    begin
      FDQuery.SQL.Add('WHERE ' + aParam[1]);
    end;
    if aParam[0] = 'APOIO' then
    begin
      FDQuery.SQL.Clear;
      FDQuery.SQL.Add('SELECT  ' + aParam[1] + ' FROM ' + TABLENAME + ' ' + aParam[2]);
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
