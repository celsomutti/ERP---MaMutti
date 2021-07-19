unit View.TiposContaBancaria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  System.Actions, Vcl.ActnList, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Common.ENum, Controller.TiposContas, cxMaskEdit, cxTextEdit;

type
  Tview_TiposConta = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    labelTitle: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    actionList: TActionList;
    actionFechar: TAction;
    gridFormasDBTableView1: TcxGridDBTableView;
    gridFormasLevel1: TcxGridLevel;
    gridFormas: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    memTable: TFDMemTable;
    dsForma: TDataSource;
    gridFormasDBTableView1cod_tipo_conta: TcxGridDBColumn;
    gridFormasDBTableView1des_tipo_conta: TcxGridDBColumn;
    memTablecod_tipo_conta: TIntegerField;
    memTabledes_tipo_conta: TStringField;
    procedure actionFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure memTableAfterPost(DataSet: TDataSet);
    procedure memTableAfterInsert(DataSet: TDataSet);
    procedure memTableAfterEdit(DataSet: TDataSet);
    procedure memTableBeforeDelete(DataSet: TDataSet);
    procedure memTableAfterCancel(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Startform;
    procedure PopulateFormas;
    function SaveData(): boolean;
    function VerifyData(): boolean;
  public
    { Public declarations }
  end;

var
  view_TiposConta: Tview_TiposConta;
  FAcao: TAcao;

implementation

{$R *.dfm}

uses Data.Module;

procedure Tview_TiposConta.actionFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_TiposConta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  memTable.Active := False;
  Action := caFree;
  view_TiposConta := nil;
end;

procedure Tview_TiposConta.FormShow(Sender: TObject);
begin
  Startform;
end;

procedure Tview_TiposConta.memTableAfterCancel(DataSet: TDataSet);
begin
  FAcao := tacIndefinido;
end;

procedure Tview_TiposConta.memTableAfterEdit(DataSet: TDataSet);
begin
  FAcao := tacAlterar;
  gridFormasDBTableView1cod_tipo_conta.Properties.ReadOnly := True;
  gridFormasDBTableView1des_tipo_conta.FocusWithSelection;
end;

procedure Tview_TiposConta.memTableAfterInsert(DataSet: TDataSet);
begin
  FAcao := tacIncluir;
  gridFormasDBTableView1cod_tipo_conta.Properties.ReadOnly := False;
end;

procedure Tview_TiposConta.memTableAfterPost(DataSet: TDataSet);
begin
  if memTable.Tag = -1 then
    Exit;
  if not SaveData then
  begin
    Application.MessageBox('Erro ao salvar no banco de dados!', 'Erro', MB_OK + MB_ICONERROR);
    Exit;
  end;
  dm.AlertWindowManager.OptionsBehavior.DisplayTime := 3000;
  dm.AlertWindowManager.Show('Gravando', 'Dados salvos com sucesso!',37);
  FAcao := tacIndefinido;
end;

procedure Tview_TiposConta.memTableBeforeDelete(DataSet: TDataSet);
begin
  if memTable.Tag = -1 then
    Exit;
  FAcao := tacExcluir;
  if not SaveData then
  begin
    Application.MessageBox('Erro ao salvar no banco de dados!', 'Erro', MB_OK + MB_ICONERROR);
  end;
end;

procedure Tview_TiposConta.PopulateFormas;
var
  tipos : TTiposContaController;
  aParam : array of variant;
begin
  try
    tipos := TTiposContaController.Create;
    memTable.Active := False;
    SetLength(aParam, 2);
    aParam := ['ALL', 0];
    if tipos.Localizar(aParam) then
    begin
      memTable.Tag := -1;
      memTable.Data := tipos.Tipos.Query.Data;
      memTable.Tag := 0;
    end
    else
    begin
      memTable.Active := True;
    end;
    Finalize(aParam);
  finally
    tipos.Tipos.Query.Active := False;
    tipos.Tipos.Query.Connection.Connected := False;
    tipos.Free;
  end;
end;

function Tview_TiposConta.SaveData: boolean;
var
  tipos : TTiposContaController;
begin
  try
    Result := False;
    tipos := TTiposContaController.Create;
    tipos.Tipos.Codigo := memTablecod_tipo_conta.AsInteger;
    tipos.Tipos.Descricao := memTabledes_tipo_conta.AsString;
    tipos.Tipos.Acao := FAcao;
    Result := tipos.Gravar;
  finally
    tipos.Free;
  end;
end;

procedure Tview_TiposConta.Startform;
begin
  labelTitle.Caption := Self.Caption;
  if Self.FormStyle = fsMDIChild then
    Self.BorderStyle := bsNone;
  PopulateFormas;
end;

function Tview_TiposConta.VerifyData: boolean;
var
  tipos : TTiposContaController;
  aParam : array of variant;
begin
  try
    Result := False;
    tipos := TTiposContaController.Create;
    SetLength(aParam,2);
    if memTablecod_tipo_conta.AsInteger = 0 then
    begin
      Application.MessageBox('Informe um código para este tipo!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if memTabledes_tipo_conta.AsString = '' then
    begin
      Application.MessageBox('Informe uma descrição para este tipo!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if FAcao = tacIncluir then
    begin
      aParam := ['CODIGO', memTablecod_tipo_conta.AsInteger];
      if tipos.Localizar(aParam) then
      begin
        Application.MessageBox('Código já cadastrado!', 'Atenção', MB_OK + MB_ICONWARNING);
        Exit;
        tipos.Tipos.Query.Active := False;
        tipos.Tipos.Query.Connection.Connected := False;
      end;
    end;
    Result := True;
  finally
    Finalize(aParam);
    tipos.Free;
  end;
end;

end.
