unit View.FormasCredito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  System.Actions, Vcl.ActnList, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Controller.FormasCreditos, Common.ENum;

type
  Tview_FormasCredito = class(TForm)
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
    memTableFormas: TFDMemTable;
    dsForma: TDataSource;
    gridFormasDBTableView1cod_tipo_conta: TcxGridDBColumn;
    gridFormasDBTableView1des_tipo_conta: TcxGridDBColumn;
    memTableFormascod_tipo_conta: TIntegerField;
    memTableFormasdes_tipo_conta: TStringField;
    procedure actionFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure memTableFormasAfterPost(DataSet: TDataSet);
    procedure memTableFormasAfterInsert(DataSet: TDataSet);
    procedure memTableFormasAfterEdit(DataSet: TDataSet);
    procedure memTableFormasBeforeDelete(DataSet: TDataSet);
    procedure memTableFormasAfterCancel(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Startform;
    procedure PopulateFormas;
    function SaveData(): boolean;
  public
    { Public declarations }
  end;

var
  view_FormasCredito: Tview_FormasCredito;
  FAcao: TAcao;

implementation

{$R *.dfm}

uses Data.Module;

procedure Tview_FormasCredito.actionFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_FormasCredito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  memTableFormas.Active := False;
  Action := caFree;
  view_FormasCredito := nil;
end;

procedure Tview_FormasCredito.FormShow(Sender: TObject);
begin
  Startform;
end;

procedure Tview_FormasCredito.memTableFormasAfterCancel(DataSet: TDataSet);
begin
  FAcao := tacIndefinido;
end;

procedure Tview_FormasCredito.memTableFormasAfterEdit(DataSet: TDataSet);
begin
  FAcao := tacAlterar;
end;

procedure Tview_FormasCredito.memTableFormasAfterInsert(DataSet: TDataSet);
begin
  FAcao := tacIncluir;
end;

procedure Tview_FormasCredito.memTableFormasAfterPost(DataSet: TDataSet);
begin
  if memTableFormas.Tag = -1 then
    Exit;
  if not SaveData then
  begin
    Application.MessageBox('Erro ao salvar no banco de dados!', 'Erro', MB_OK + MB_ICONERROR);
    Exit;
  end;
  FAcao := tacIndefinido;
end;

procedure Tview_FormasCredito.memTableFormasBeforeDelete(DataSet: TDataSet);
begin
  if memTableFormas.Tag = -1 then
    Exit;
  FAcao := tacExcluir;
  if not SaveData then
  begin
    Application.MessageBox('Erro ao salvar no banco de dados!', 'Erro', MB_OK + MB_ICONERROR);
  end;
end;

procedure Tview_FormasCredito.PopulateFormas;
var
  formas : TFormasCreditosController;
  aParam : array of variant;
begin
  try
    formas := TFormasCreditosController.Create;
    memTableFormas.Active := False;
    SetLength(aParam, 2);
    aParam := ['ALL', 0];
    if formas.Localizar(aParam) then
    begin
      memTableFormas.Tag := -1;
      memTableFormas.Data := formas.Formas.Query.Data;
      memTableFormas.Tag := 0;
    end
    else
    begin
      memTableFormas.Active := True;
    end;
    Finalize(aParam);
  finally
    formas.Formas.Query.Active := False;
    formas.Formas.Query.Connection.Connected := False;
    formas.Free;
  end;
end;

function Tview_FormasCredito.SaveData: boolean;
var
  formas : TFormasCreditosController;
begin
  try
    Result := False;
    formas := TFormasCreditosController.Create;
    formas.Formas.Codigo := memTableFormascod_tipo_conta.AsInteger;
    formas.Formas.Descricao := memTableFormasdes_tipo_conta.AsString;
    formas.Formas.Acao := FAcao;
    Result := formas.Gravar;
  finally
    formas.Free;
  end;
end;

procedure Tview_FormasCredito.Startform;
begin
  labelTitle.Caption := Self.Caption;
  Self.BorderStyle := bsNone;
  PopulateFormas;
end;

end.
