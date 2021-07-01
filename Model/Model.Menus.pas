unit Model.Menus;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao;

type
  TMenus = class
  private
    FConexao: TConexao;
    FCodigo: Integer;
    FSistema: Integer;
    Fmodulo: Integer;
    FDescricao: String;
    FAcao: TAcao;
    FQuery: TFDQuery;

    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;

  public
    constructor Create;
    property Sistema: Integer read FSistema write FSistema;
    property Modulo: Integer read Fmodulo write FModulo;
    property Codigo: Integer read FCodigo write FCodigo;
    property Descricao: String read FDescricao write FDescricao;
    property Query : TFDQuery read FQuery write FQuery;
    property Acao: TAcao read FAcao write FAcao;

    function Localizar(aParam: array of variant): Boolean;
    function Gravar(): Boolean;

  end;
const
  TABLENAME = 'sistema_menus';

implementation

{ TMenus }

function TMenus.Alterar: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + ' SET DES_MENU = :PDES_MENU WHERE COD_SISTEMA = :PCOD_SISTEMA ' +
                    'AND COD_MODULO = :PCOD_MODULO AND COD_MENU = :PCOD_MENU',
                   [FDescricao, FSistema, FModulo, FCodigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TMenus.Create;
begin
  FConexao := TConexao.Create;
end;

function TMenus.Excluir: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery;
    Result := False;
    FDQuery.ExecSQL('DELETE FROM ' + TABLENAME + 'WHERE COD_SISTEMA = :PCOD_SISTEMA AND COD_MODULO = :PCOD_MODULO AND ' +
                    'COD_MENU = :PCOD_MENU',
                   [FSistema, FModulo, FCodigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TMenus.Gravar: Boolean;
begin
    Result := False;
  case FAcao of
    Common.ENum.tacIncluir: Result := Inserir();
    Common.ENum.tacAlterar: Result := Alterar();
    Common.ENum.tacExcluir: Result := Excluir();
  end;
end;

function TMenus.Inserir: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME + ' (COD_SISTEMA, COD_MODULO, COD_MENU, DES_MENU) VALUES ' +
                    ':P(COD_SISTEMA, :PCOD_MODULO, :PCOD_MENU, :PDES_MENU)',
                    [FSistema, FModulo, FCodigo, FDescricao]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TMenus.Localizar(aParam: array of variant): boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    if Length(aParam) < 2 then Exit;
    FDQuery.SQL.Clear;

    FDQuery.SQL.Add('select * from ' + TABLENAME);
    if aParam[0] = 'MODULO' then
    begin
      FDQuery.SQL.Add('WHERE COD_MODULO = :PCOD_MODULO');
      FDQuery.ParamByName('PCOD_MODULO').AsInteger := aParam[1];
    end;
    if aParam[0] = 'SISTEMA' then
    begin
      FDQuery.SQL.Add('WHERE COD_SISTEMA = :PCOD_SISTEMA');
      FDQuery.ParamByName('PCOD_SISTEMA').AsInteger := aParam[1];
    end;
    if aParam[0] = 'CODIGO' then
    begin
      FDQuery.SQL.Add('WHERE COD_MENU = :PCOD_MENU');
      FDQuery.ParamByName('PCOD_MENU').AsInteger := aParam[1];
    end;
    if aParam[0] = 'DESCRICAO' then
    begin
      FDQuery.SQL.Add('WHERE DES_MODULO = :PDES_MODULO');
      FDQuery.ParamByName('PDES_MODULO').AsString := aParam[1];
    end;
    if aParam[0] = 'MENU' then
    begin
      FDQuery.SQL.Add('WHERE COD_SISTEMA = :PCOD_SISTEMA AND COD_MODULO = :PCOD_MODULO AND COD_MENU = :PCOD_MENU');
      FDQuery.ParamByName('PCOD_SISTEMA').AsInteger := aParam[1];
      FDQuery.ParamByName('PCOD_MODULO').AsString := aParam[2];
      FDQuery.ParamByName('PCOD_MENU').AsInteger := aParam[3];
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
