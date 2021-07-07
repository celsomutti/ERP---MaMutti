unit View.CadastroBancos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxMaskEdit, cxTextEdit,
  Controller.Bancos, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, System.Actions, Vcl.ActnList, Common.ENum;

type
  Tview_CadastroBancos = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    labelTitle: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    gridBancosDBTableView1: TcxGridDBTableView;
    gridBancosLevel1: TcxGridLevel;
    gridBancos: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    dsBancos: TDataSource;
    memtableBancos: TFDMemTable;
    memtableBancoscod_banco: TStringField;
    memtableBancosnom_banco: TStringField;
    memtableBancoscod_forma_bimer: TStringField;
    memtableBancoscod_modalidade_bimer: TStringField;
    gridBancosDBTableView1cod_banco: TcxGridDBColumn;
    gridBancosDBTableView1nom_banco: TcxGridDBColumn;
    gridBancosDBTableView1nom_fantasia: TcxGridDBColumn;
    gridBancosDBTableView1cod_forma_bimer: TcxGridDBColumn;
    gridBancosDBTableView1cod_modalidade_bimer: TcxGridDBColumn;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    actionList: TActionList;
    actionFechar: TAction;
    memtableBancoscod_ispb: TStringField;
    procedure FormShow(Sender: TObject);
    procedure actionFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure memtableBancosAfterInsert(DataSet: TDataSet);
    procedure memtableBancosAfterEdit(DataSet: TDataSet);
    procedure memtableBancosAfterPost(DataSet: TDataSet);
    procedure memtableBancosAfterCancel(DataSet: TDataSet);
    procedure gridBancosDBTableView1cod_bancoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure gridBancosDBTableView1cod_forma_bimerPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure gridBancosDBTableView1cod_modalidade_bimerPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
    procedure StartForm;
    procedure PopulateData;
    procedure SaveData;

  public
    { Public declarations }
  end;

var
  view_CadastroBancos: Tview_CadastroBancos;
  FAcao : Tacao;

implementation

{$R *.dfm}

uses Data.Module;

{ Tview_CadastroBancos }

procedure Tview_CadastroBancos.actionFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_CadastroBancos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  memtableBancos.Active := False;
  Action := caFree;
  view_CadastroBancos := nil;
end;

procedure Tview_CadastroBancos.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_CadastroBancos.gridBancosDBTableView1cod_bancoPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  DisplayValue := FormatFloat('000',DisplayValue);
end;

procedure Tview_CadastroBancos.gridBancosDBTableView1cod_forma_bimerPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  DisplayValue := FormatFloat('000000',DisplayValue);
end;

procedure Tview_CadastroBancos.gridBancosDBTableView1cod_modalidade_bimerPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
DisplayValue := FormatFloat('000000',DisplayValue);
end;

procedure Tview_CadastroBancos.memtableBancosAfterCancel(DataSet: TDataSet);
begin
  if memtableBancos.Tag = -1 then
    Exit;
  FAcao := tacIndefinido;
end;

procedure Tview_CadastroBancos.memtableBancosAfterEdit(DataSet: TDataSet);
begin
  if memtableBancos.Tag = -1 then
    Exit;
  FAcao := tacAlterar;
end;

procedure Tview_CadastroBancos.memtableBancosAfterInsert(DataSet: TDataSet);
begin
  if memtableBancos.Tag = -1 then
    Exit;
  FAcao := tacIncluir;
end;

procedure Tview_CadastroBancos.memtableBancosAfterPost(DataSet: TDataSet);
begin
  if memtableBancos.Tag = -1 then
    Exit;
  SaveData;
end;

procedure Tview_CadastroBancos.PopulateData;
var
  bancos : TBancosController;
  aParam : array of variant;
begin
  try
    bancos := TBancosController.Create;
    SetLength(aParam, 2);
    aParam := ['FILTRO','TRUE'];

    if bancos.Localizar(aParam) then
    begin
      memtableBancos.Tag := -1;
      memtableBancos.data := bancos.Bancos.Query.Data;
      memtableBancos.Tag := 0;
      bancos.Bancos.Query.Active := False;
      bancos.Bancos.Query.Connection.Connected := False;
    end
    else
    begin
      memtableBancos.Active := True;
    end;
  finally
    bancos.Free;
  end;
end;

procedure Tview_CadastroBancos.SaveData;
var
  bancos : TBancosController;
begin
  try
    bancos := TBancosController.Create;
    bancos.Bancos.Codigo := memtableBancoscod_banco.AsString;
    bancos.Bancos.Nome := memtableBancosnom_banco.AsString;
    bancos.Bancos.ISPB := memtableBancoscod_ispb.AsString;
    bancos.Bancos.FormaPagamento := memtableBancoscod_forma_bimer.AsString;
    bancos.Bancos.ModalidadePagamento := memtableBancoscod_modalidade_bimer.AsString;
    bancos.Bancos.Acao := FAcao;
    if not bancos.Gravar then
    begin
      Application.MessageBox('Erro ao gravar os dados no banco de dados!', 'Erro', MB_OK + MB_ICONERROR);
      Exit;
    end
    else
    begin
      Application.MessageBox('Dados gravados com sucesso.', 'Gravar', MB_OK + MB_ICONINFORMATION);
    end;
    FAcao := tacIndefinido;
  finally
    bancos.Free;
  end;
end;

procedure Tview_CadastroBancos.StartForm;
begin
  labelTitle.Caption := Self.Caption;
  PopulateData;
end;

end.
