
unit Model.Bancos;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils,
System.Variants;

type
  TBancos = class
  private
    FCodigo: String;
    FNome: String;
    FConexao: TConexao;
    FAcao: TAcao;
    FQuery: TFDQuery;
    FISPB: string;
    FFormaPagamento: String;
    FModalidadePagamento: string;

    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;
  public
    Constructor Create();
    property Codigo: String read FCodigo write FCodigo;
    property Nome: String read FNome write FNome;
    property ISPB: string read FISPB write FISPB;
    property FormaPagamento: String read FFormaPagamento write FFormaPagamento;
    property ModalidadePagamento: string read FModalidadePagamento write FModalidadePagamento;
    property Acao: TAcao read FAcao write FAcao;
    property Query: TFDQuery read FQuery write FQuery;

    function GetField(sField: String; sKey: String; sKeyValue: String): String;
    function SetupModel(FDBanco: TFDQuery): Boolean;
    function Localizar(aParam: array of variant): Boolean;
    function Gravar(): Boolean;

  end;

const

  TABLENAME = 'sistema_financeiro_bancos';
  SQLINSERT = 'insert into ' + TABLENAME + ' (cod_banco, nom_banco, cod_ispb, cod_forma_bimer, cod_modalidade_bimer) ' +
              'values (:cod_banco, :nom_banco, :cod_ispb, :cod_forma_bimer, :cod_modalidade_bimer);';
  SQLUPDATE = 'update ' + TABLENAME + ' set nom_banco = :nom_banco, cod_ispb = :cod_ispb, ' +
              'cod_forma_bimer = :cod_forma_bimer, cod_modalidade_bimer = :cod_modalidade_bimer ' +
              'where cod_banco = :cod_banco';
  SQLSELECT = 'select cod_banco, nom_banco, cod_ispb, cod_forma_bimer, cod_modalidade_bimer ' +
              'from ' + TABLENAME;
  SQLDELETE = 'delete from ' + TABLENAME +
              ' where cod_banco = :cod_banco';

implementation

{ TBancos }

function TBancos.Alterar: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLUPDATE, [FNome, FISPB, FFormaPagamento, FModalidadePagamento, Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TBancos.Create;
begin
  FConexao := TConexao.Create;
end;

function TBancos.Excluir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLDELETE, [Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;end;

function TBancos.GetField(sField, sKey, sKeyValue: String): String;
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

function TBancos.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    tacAlterar: Result := Alterar();
    tacIncluir: Result := Inserir();
    tacExcluir: Result := Excluir();
  end;
end;

function TBancos.Inserir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLINSERT, [FCodigo, FNome, FISPB, FFormaPagamento, FModalidadePagamento]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TBancos.Localizar(aParam: array of variant): Boolean;
begin
  Result := False;
  FQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FQuery.SQL.Clear;

  FQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'CODIGO' then
  begin
    FQuery.SQL.Add('where cod_banco = :pcod_banco');
    FQuery.ParamByName('pcod_banco').AsString := aParam[1];
  end
  else if aParam[0] = 'NOME' then
  begin
    FQuery.SQL.Add('where nom_banco like :pnom_banco');
    FQuery.ParamByName('pnom_banco').AsString := aParam[1];
  end
  else if aParam[0] = 'FANTASIA' then
  begin
    FQuery.SQL.Add('where nom_fantasia LIKE :Pnom_fantasia');
    FQuery.ParamByName('Pnom_fantasia').AsString := aParam[1];
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

function TBancos.SetupModel(FDBanco: TFDQuery): Boolean;
begin
  try
    FCodigo := FDBanco.FieldByName('cod_banco').AsString;
    FNome := FDBanco.FieldByName('nom_banco').AsString;
    FISPB := FDBanco.FieldByName('cod_ispb').AsString;
    FFormaPagamento := FDBanco.FieldByName('cod_forma_bimer').AsString;
    FModalidadePagamento := FDBanco.FieldByName('cod_modalidade_bimer').AsString;
  finally
    Result := True;
  end;
end;

end.
