unit View.PesquisaPessoasUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxLabel, cxClasses, dxLayoutControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControlAdapters, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  cxButtons, Vcl.Buttons, cxCheckBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxTextEdit,
  cxMaskEdit, cxButtonEdit, dxBar, cxDropDownEdit;

type
  Tview_PesquisaPessoasUsuarios = class(TForm)
    layoutControlGridGroup_Root: TdxLayoutGroup;
    layoutControlGrid: TdxLayoutControl;
    gridPesquisaDBTableView1: TcxGridDBTableView;
    gridPesquisaLevel1: TcxGridLevel;
    gridPesquisa: TcxGrid;
    layoutItemGrid: TdxLayoutItem;
    actionListPesquisa: TActionList;
    actionExpandirGrid: TAction;
    actionRetrairGrid: TAction;
    fdPesquisa: TFDQuery;
    dsPesquisa: TDataSource;
    buttonEditTextoPesquisar: TcxButtonEdit;
    layoutItemtextoPesquisa: TdxLayoutItem;
    actionPesquisar: TAction;
    actionLimpar: TAction;
    actionExportar: TAction;
    actionFechar: TAction;
    buttonFechar: TcxButton;
    layoutItemFechar: TdxLayoutItem;
    buttonOK: TcxButton;
    layoutItemOK: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    actionOK: TAction;
    buttonLocalizar: TcxButton;
    layoutItemLocalizar: TdxLayoutItem;
    comboBoxOutrosCampos: TcxComboBox;
    layoutItemTipoPesquisa: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    fdPesquisaid_usuario: TIntegerField;
    fdPesquisanom_usuario: TStringField;
    fdPesquisades_login: TStringField;
    fdPesquisades_email: TStringField;
    gridPesquisaDBTableView1id_usuario: TcxGridDBColumn;
    gridPesquisaDBTableView1nom_usuario: TcxGridDBColumn;
    gridPesquisaDBTableView1des_login: TcxGridDBColumn;
    gridPesquisaDBTableView1des_email: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure actionExpandirGridExecute(Sender: TObject);
    procedure actionRetrairGridExecute(Sender: TObject);
    procedure checkBoxBarraGruposPropertiesChange(Sender: TObject);
    procedure buttonEditTextoPesquisarPropertiesChange(Sender: TObject);
    procedure actionLimparExecute(Sender: TObject);
    procedure actionPesquisarExecute(Sender: TObject);
    procedure fdPesquisaAfterClose(DataSet: TDataSet);
    procedure actionFecharExecute(Sender: TObject);
    procedure dsPesquisaStateChange(Sender: TObject);
    procedure actionOKExecute(Sender: TObject);
    procedure gridPesquisaEnter(Sender: TObject);
    procedure gridPesquisaDBTableView1DblClick(Sender: TObject);
    procedure buttonEditTextoPesquisarEnter(Sender: TObject);
    procedure gridPesquisaDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure gridPesquisaDBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
    procedure StartForm;
    procedure SetGroup(bFlag: Boolean);
    procedure PesquisaUsuario(sFiltro: String);
    function FormulaFilro(sTexto: String): String;
  public
    { Public declarations }
    iID: Integer;
    sNome: String;
  end;

var
  view_PesquisaPessoasUsuarios: Tview_PesquisaPessoasUsuarios;

implementation

{$R *.dfm}

uses Common.Utils, Data.Module;

{ Tview_PesquisaUsuarioesExpressas }

procedure Tview_PesquisaPessoasUsuarios.actionExpandirGridExecute(Sender: TObject);
begin
  gridPesquisaDBTableView1.ViewData.Expand(True);
end;

procedure Tview_PesquisaPessoasUsuarios.actionFecharExecute(Sender: TObject);
begin
  iID := 0;
  sNome := '';
  fdpesquisa.Filtered := False;
  ModalResult := mrCancel;
end;

procedure Tview_PesquisaPessoasUsuarios.actionLimparExecute(Sender: TObject);
begin
  buttonEditTextoPesquisar.Clear;
end;

procedure Tview_PesquisaPessoasUsuarios.actionOKExecute(Sender: TObject);
begin
  iId := fdPesquisaid_usuario.AsInteger;
  sNome := fdPesquisanom_usuario.AsString;
  fdpesquisa.Filtered := False;
  ModalResult := mrOk;
end;

procedure Tview_PesquisaPessoasUsuarios.actionPesquisarExecute(Sender: TObject);
begin
  PesquisaUsuario(FormulaFilro(buttonEditTextoPesquisar.Text));
end;

procedure Tview_PesquisaPessoasUsuarios.actionRetrairGridExecute(Sender: TObject);
begin
  gridPesquisaDBTableView1.ViewData.Collapse(True);
end;

procedure Tview_PesquisaPessoasUsuarios.buttonEditTextoPesquisarEnter(Sender: TObject);
begin
  buttonOK.Default := False;
end;

procedure Tview_PesquisaPessoasUsuarios.buttonEditTextoPesquisarPropertiesChange(Sender: TObject);
begin
  if buttonEditTextoPesquisar.Text = '' then
  begin
    actionLimpar.Enabled := False;
    buttonLocalizar.Enabled := False;
  end
  else
  begin
    actionLimpar.Enabled := True;
    buttonLocalizar.Enabled := True;
  end;
end;

procedure Tview_PesquisaPessoasUsuarios.checkBoxBarraGruposPropertiesChange(Sender: TObject);
begin
  SetGroup(gridPesquisaDBTableView1.OptionsView.GroupByBox);
end;

procedure Tview_PesquisaPessoasUsuarios.dsPesquisaStateChange(Sender: TObject);
begin
if TDataSource(Sender).DataSet.State = dsbrowse then //Se tiver em mode de edição ou iserção
  begin
    actionOK.Enabled := True;
    actionExportar.Enabled := True;
  end
  else
    actionOK.Enabled := False;
    actionExportar.Enabled := False;
  begin
  end;
end;

procedure Tview_PesquisaPessoasUsuarios.fdPesquisaAfterClose(DataSet: TDataSet);
begin
  dm.FDConnectionMySQL.Close;
end;

procedure Tview_PesquisaPessoasUsuarios.FormShow(Sender: TObject);
begin
  StartForm;
end;

function Tview_PesquisaPessoasUsuarios.FormulaFilro(sTexto: String): String;
var
  sMensagem: String;
  sFiltro: String;
  fFuncoes : Common.Utils.TUtils;
begin
  Result := '';
  sFiltro := '';
  fFuncoes := Common.Utils.TUtils.Create;
  if sTexto = '' then
  begin
    sMensagem := 'O campo de texto a pesquisar não foi preenchido!. ' +
    'Caso deseje visualizar todos as pessoas clique OK, porém, esse processo pode ser lento.';
    if Application.MessageBox(PChar(sMensagem), 'Atenção!', MB_OKCANCEL + MB_ICONWARNING) = IDCANCEL then
    begin
      sFiltro := 'NONE';
    end;
  end
  else
  begin
    if comboBoxOutrosCampos.ItemIndex = 0 then
    begin
      sFiltro := 'nom_usuario like ' + QuotedStr('%' +  sTexto + '%') + ' or des_login like ' +
                 QuotedStr('%' + sTexto + '%') + ' or des_email like ' + QuotedStr('%' +  sTexto + '%');
      if fFuncoes.ENumero(sTexto) then
      begin
        if sFiltro <> '' then
        begin
          sFiltro := sFiltro + ' or ';
        end;
        sFiltro := sFiltro + 'id_usuario like ' + sTexto
      end;
    end
    else
    begin
      if comboBoxOutrosCampos.ItemIndex = 1 then
      begin
        sFiltro := 'id_usuario like ' + sTexto;
      end
      else if comboBoxOutrosCampos.ItemIndex = 2 then
      begin
        sFiltro := 'nom_usuario ' + QuotedStr('%' +  sTexto + '%');
      end else if comboBoxOutrosCampos.ItemIndex = 3 then
      begin
        sFiltro := 'des_login like ' + QuotedStr('%' +  sTexto + '%');
      end else if comboBoxOutrosCampos.ItemIndex = 4 then
      begin
        sFiltro := 'des_email like ' + QuotedStr('%' +  sTexto + '%');
      end;
    end;
  end;
  fFuncoes.Free;
  Result := sFiltro;
end;

procedure Tview_PesquisaPessoasUsuarios.gridPesquisaDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  actionOKExecute(Sender);
end;

procedure Tview_PesquisaPessoasUsuarios.gridPesquisaDBTableView1DblClick(Sender: TObject);
begin
   actionOKExecute(Sender);
end;

procedure Tview_PesquisaPessoasUsuarios.gridPesquisaDBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
  var ADone: Boolean);
begin
  case AButtonIndex of
    17 : gridPesquisaDBTableView1.ViewData.Expand(True);
    18 : gridPesquisaDBTableView1.ViewData.Collapse(True);
    19 : SetGroup(gridPesquisaDBTableView1.OptionsView.GroupByBox);
  end;
end;

procedure Tview_PesquisaPessoasUsuarios.gridPesquisaEnter(Sender: TObject);
begin
 if fdPesquisa.IsEmpty then
  begin
    buttonOK.Default := False;
  end
  else
  begin
    buttonOK.Default := True;
  end;
end;

procedure Tview_PesquisaPessoasUsuarios.PesquisaUsuario(sFiltro: String);
begin
  if sFiltro = 'NONE' then
  begin
    Exit;
  end;
  if fdPesquisa.Active then
  begin
    fdPesquisa.Close;
  end;
  if not sFiltro.IsEmpty then
  begin
    fdpesquisa.Filter := sFiltro;
    fdpesquisa.Filtered := True;
  end;
  fdPesquisa.Open();
  if not fdPesquisa.IsEmpty then
  begin
    gridPesquisa.SetFocus;
  end;
end;

procedure Tview_PesquisaPessoasUsuarios.SetGroup(bFlag: Boolean);
begin
  if not bFlag then
    bFlag := True
  else
    bFlag := False;
  gridPesquisaDBTableView1.OptionsView.GroupByBox := bFlag;
  gridPesquisaDBTableView1.OptionsCustomize.ColumnGrouping := bFlag;
end;

procedure Tview_PesquisaPessoasUsuarios.StartForm;
begin
  iID := 0;
  SetGroup(gridPesquisaDBTableView1.OptionsView.GroupByBox);
end;

end.
