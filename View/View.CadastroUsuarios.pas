unit View.CadastroUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, dxGDIPlusClasses, cxImage, cxLabel, cxGroupBox, cxClasses, dxLayoutContainer, dxLayoutControl,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDBEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxDropDownEdit, cxImageComboBox, cxCheckBox, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, Controller.Usuarios, Common.ENum, cxCustomData, cxStyles, cxTL, cxTLdxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxInplaceContainer, cxTLData, cxDBTL, Vcl.ComCtrls, dxtree, dxdbtree,
  DAO.Conexao, Vcl.Grids, Vcl.DBGrids, cxTreeView, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Controller.Acessos;

type
  Tview_Cadastro_Usuarios = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    idUsuario: TcxDBMaskEdit;
    dxLayoutItem1: TdxLayoutItem;
    memTableUsuarios: TFDMemTable;
    memTableUsuariosid_usuario: TIntegerField;
    memTableUsuariosnom_usuario: TStringField;
    memTableUsuariosdes_login: TStringField;
    memTableUsuariosdes_email: TStringField;
    memTableUsuarioscod_grupo: TIntegerField;
    memTableUsuarioscod_nivel: TIntegerField;
    dsUsuarios: TDataSource;
    nomeCompleto: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    login: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    email: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    nivelUsuario: TcxDBImageComboBox;
    dxLayoutItem5: TdxLayoutItem;
    ativo: TcxDBCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    actionList: TActionList;
    dxLayoutGroup4: TdxLayoutGroup;
    actionNovo: TAction;
    actionLocalizar: TAction;
    actionEditar: TAction;
    actionExcluir: TAction;
    actionCancelar: TAction;
    actionGravar: TAction;
    cxButton1: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem12: TdxLayoutItem;
    actionAlterarSenha: TAction;
    cxButton7: TcxButton;
    dxLayoutItem13: TdxLayoutItem;
    memTableUsuariosdom_ativo: TSmallintField;
    memTableAcessos: TFDMemTable;
    memTableAcessosdes_flag: TIntegerField;
    memTableAcessosdes_sistema: TStringField;
    memTableAcessosdes_modulo: TStringField;
    memTableAcessosdes_menu: TStringField;
    dsAcessos: TDataSource;
    dxLayoutGroup5: TdxLayoutGroup;
    gridAcessosDBTableView1: TcxGridDBTableView;
    gridAcessosLevel1: TcxGridLevel;
    gridAcessos: TcxGrid;
    dxLayoutItem14: TdxLayoutItem;
    gridAcessosDBTableView1dom_check: TcxGridDBColumn;
    gridAcessosDBTableView1des_sistema: TcxGridDBColumn;
    gridAcessosDBTableView1des_modulo: TcxGridDBColumn;
    gridAcessosDBTableView1des_menu: TcxGridDBColumn;
    memTableAcessoscod_menu: TIntegerField;
    memTableUsuariosdom_PrimeiroAcesso: TIntegerField;
    PopupMenuGrid: TPopupMenu;
    actionExpandir: TAction;
    actionOcultar: TAction;
    actionMarcarTodos: TAction;
    actionDesmarcarTodos: TAction;
    Expandir1: TMenuItem;
    Ocultar1: TMenuItem;
    MarcarTodos1: TMenuItem;
    Novo1: TMenuItem;
    actionFechar: TAction;
    cxButton4: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    labelTitle: TcxLabel;
    dxLayoutItem15: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionNovoExecute(Sender: TObject);
    procedure actionGravarExecute(Sender: TObject);
    procedure memTableUsuariosAfterCancel(DataSet: TDataSet);
    procedure actionLocalizarExecute(Sender: TObject);
    procedure ativoPropertiesChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actionEditarExecute(Sender: TObject);
    procedure actionCancelarExecute(Sender: TObject);
    procedure actionAlterarSenhaExecute(Sender: TObject);
    procedure dsUsuariosStateChange(Sender: TObject);
    procedure actionExpandirExecute(Sender: TObject);
    procedure actionOcultarExecute(Sender: TObject);
    procedure actionMarcarTodosExecute(Sender: TObject);
    procedure actionDesmarcarTodosExecute(Sender: TObject);
    procedure actionFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure SearchUser;
    procedure Cancelar;
    function Saveuser(): boolean;
    function AlterPwd(): boolean;
    function ReturAccessMeunu(iUsuario, iMenu: integer): boolean;
    function SaveAccess(): boolean;
    function ValidateUser(): boolean;
    procedure ChangePwd;
    procedure PopulateMenus;
    procedure MarkAllAccess(iflag: integer);
    procedure StartForm;
  public
    { Public declarations }
  end;

var
  view_Cadastro_Usuarios: Tview_Cadastro_Usuarios;
  fAcao : TAcao;
  sSenha: String;
  bAcesso: boolean;

implementation

{$R *.dfm}

uses Data.Module, View.PesquisaPessoasUsuarios, View.ConfirmaSenha;

procedure Tview_Cadastro_Usuarios.actionAlterarSenhaExecute(Sender: TObject);
begin
  ChangePwd;
end;

procedure Tview_Cadastro_Usuarios.actionCancelarExecute(Sender: TObject);
begin
  Cancelar;
end;

procedure Tview_Cadastro_Usuarios.actionDesmarcarTodosExecute(Sender: TObject);
begin
  MarkAllAccess(0);
end;

procedure Tview_Cadastro_Usuarios.actionEditarExecute(Sender: TObject);
begin
  login.Properties.ReadOnly := True;
  dsAcessos.AutoEdit := True;
  memTableUsuarios.Edit;
  FAcao := tacAlterar;
  nomeCompleto.SetFocus;
end;

procedure Tview_Cadastro_Usuarios.actionExpandirExecute(Sender: TObject);
begin
  gridAcessosDBTableView1.ViewData.Expand(True);
end;

procedure Tview_Cadastro_Usuarios.actionFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_Cadastro_Usuarios.actionGravarExecute(Sender: TObject);
begin
  memTableUsuarios.Post;
  if not ValidateUser()  then
  Exit;
  if Saveuser() then
  begin
    Application.MessageBox('Usuário gravado com sucesso.', 'Gravar', MB_OK + MB_ICONINFORMATION);
    Cancelar;
  end
  else
  Application.MessageBox('Usuário não foi gravado!', 'Atenção', MB_OK + MB_ICONWARNING);
end;

procedure Tview_Cadastro_Usuarios.actionLocalizarExecute(Sender: TObject);
begin
  SearchUser;
end;

procedure Tview_Cadastro_Usuarios.actionMarcarTodosExecute(Sender: TObject);
begin
  MarkAllAccess(1);
end;

procedure Tview_Cadastro_Usuarios.actionNovoExecute(Sender: TObject);
begin
  if not memTableUsuarios.Active then
    memTableUsuarios.Active := True;
  login.Properties.ReadOnly := False;
  memTableUsuarios.Insert;
  FAcao := tacIncluir;
  memTableUsuariosdom_ativo.AsInteger := 1;
  memTableUsuariosdom_PrimeiroAcesso.AsInteger := 0;
  PopulateMenus;
  dsAcessos.AutoEdit := True;
  nomeCompleto.SetFocus;
end;

procedure Tview_Cadastro_Usuarios.actionOcultarExecute(Sender: TObject);
begin
  gridAcessosDBTableView1.ViewData.Collapse(True);
end;

function Tview_Cadastro_Usuarios.AlterPwd: boolean;
begin
  Result := False;
  if not Assigned(view_ConfirmaSenha) then
  begin
    view_ConfirmaSenha := Tview_ConfirmaSenha.Create(Application);
  end;
  view_ConfirmaSenha.dxLayoutItem5.Visible := True;
  if view_ConfirmaSenha.ShowModal = mrCancel then
  begin
    Exit;
  end
  else
  begin
    sSenha := view_ConfirmaSenha.senha.Text;
    bAcesso := view_ConfirmaSenha.primeiroAcesso.Checked;
  end;
  Result := True;
  FreeAndNil(view_ConfirmaSenha);
end;

procedure Tview_Cadastro_Usuarios.ativoPropertiesChange(Sender: TObject);
begin
  if ativo.Checked then
  begin
    ativo.Caption := 'Usuário ATIVO';
    ativo.Style.TextColor := clWindowText;
  end
  else
  begin
    ativo.Caption := 'Usuário INATIVO';
    ativo.Style.TextColor := clRed;
  end;
end;

procedure Tview_Cadastro_Usuarios.Cancelar;
begin
  memTableUsuarios.Active := False;
  memTableAcessos.Active := False;
end;

procedure Tview_Cadastro_Usuarios.ChangePwd;
var
  usuarios : TUsuariosController;
begin
  try
    usuarios := TUsuariosController.Create;
    if not AlterPwd() then
    begin
      Application.MessageBox('Erro ao definir a nova senha do usuário!', 'Erro', MB_OK + MB_ICONERROR);
      Exit;
    end;
    if not usuarios.AlterPwd(memTableUsuariosdes_login.AsString, sSenha, 90, bAcesso) then
    begin
      Application.MessageBox('Erro ao alterar a senha do usuário!', 'Erro', MB_OK + MB_ICONERROR);
      Exit;
    end
    else
    begin
      Application.MessageBox('Senha alterada com sucesso!', 'Senha Alterada', MB_OK + MB_ICONINFORMATION);
    end;
  finally
    usuarios.Free;
  end;
end;

procedure Tview_Cadastro_Usuarios.dsUsuariosStateChange(Sender: TObject);
begin
  if TDataSource(Sender).DataSet.State = dsbrowse then
  begin
    actionNovo.Enabled := True;
    actionLocalizar.Enabled := True;
    actionEditar.Enabled := True;
    actionCancelar.Enabled := True;
    actionGravar.Enabled := False;
    actionAlterarSenha.Enabled := True;
    actionExpandir.Enabled := True;
    actionOcultar.Enabled := True;
    actionMarcarTodos.Enabled := False;
    actionDesmarcarTodos.Enabled := False;
  end
  else if TDataSource(Sender).DataSet.State = dsInsert then
  begin
    actionNovo.Enabled := False;
    actionLocalizar.Enabled := False;
    actionEditar.Enabled := False;
    actionCancelar.Enabled := True;
    actionGravar.Enabled := True;
    actionAlterarSenha.Enabled := False;
    actionExpandir.Enabled := True;
    actionOcultar.Enabled := True;
    actionMarcarTodos.Enabled := True;
    actionDesmarcarTodos.Enabled := True;
  end
  else if TDataSource(Sender).DataSet.State = dsEdit then
  begin
    actionNovo.Enabled := False;
    actionLocalizar.Enabled := False;
    actionEditar.Enabled := False;
    actionCancelar.Enabled := True;
    actionGravar.Enabled := True;
    actionAlterarSenha.Enabled := False;
    actionExpandir.Enabled := True;
    actionOcultar.Enabled := True;
    actionMarcarTodos.Enabled := True;
    actionDesmarcarTodos.Enabled := True;
  end
  else if TDataSource(Sender).DataSet.State = dsInactive then
  begin
    actionNovo.Enabled := True;
    actionLocalizar.Enabled := True;
    actionEditar.Enabled := False;
    actionCancelar.Enabled := False;
    actionGravar.Enabled := False;
    actionAlterarSenha.Enabled := False;
    actionExpandir.Enabled := False;
    actionOcultar.Enabled := False;
    actionMarcarTodos.Enabled := False;
    actionDesmarcarTodos.Enabled := False;
  end;


end;

procedure Tview_Cadastro_Usuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  memTableAcessos.Active := false;
  memTableUsuarios.Active := false;
  Action := caFree;
  view_Cadastro_Usuarios := nil;
end;

procedure Tview_Cadastro_Usuarios.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if gridAcessos.Focused then
  begin
    Exit;
  end;
  If Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure Tview_Cadastro_Usuarios.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_Cadastro_Usuarios.MarkAllAccess(iflag: integer);
begin
  if memTableAcessos.IsEmpty then Exit;
  memTableAcessos.First;
  while not memTableAcessos.Eof do
  begin
    memTableAcessos.Edit;
    memTableAcessosdes_flag.AsInteger := iFlag;
    memTableAcessos.Post;
    memTableAcessos.Next;
  end;
  memTableAcessos.First;
end;

procedure Tview_Cadastro_Usuarios.memTableUsuariosAfterCancel(DataSet: TDataSet);
begin
  FAcao := tacIndefinido;
end;

procedure Tview_Cadastro_Usuarios.PopulateMenus;
var
  FDQuery : TFDQuery;
  FConexao : TConexao;
  iAcesso: integer;
begin
  try
    FConexao := TConexao.Create;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.SQL.Text := 'select * from view_SistemaMenus';
    FDQuery.Open();
    if FDQuery.IsEmpty then
      Exit;
    memTableAcessos.Active := False;
    memTableAcessos.Active := True;
    iAcesso := 0;

    while not FDQuery.Eof do
    begin
      if FAcao = tacIncluir then
      begin
        gridAcessosDBTableView1.OptionsView.NoDataToDisplayInfoText := 'Populando os acessos disponíveis. Aguarde ...';
        iAcesso := 0
      end
      else
      begin
        gridAcessosDBTableView1.OptionsView.NoDataToDisplayInfoText := 'Verificando os acessos deste usuário. Aguarde ...';
        if ReturAccessMeunu(memTableUsuariosid_usuario.AsInteger, FDQuery.FieldByName('cod_menu').AsInteger) then
          iAcesso := 1
        else
          iAcesso := 0;
      end;

      memTableAcessos.Insert;
      memTableAcessosdes_flag.AsInteger := iAcesso;
      memTableAcessosdes_sistema.AsString := FDQuery.FieldByName('des_sistema').AsString;
      memTableAcessosdes_modulo.AsString := FDQuery.FieldByName('des_modulo').AsString;
      memTableAcessosdes_menu.AsString := FDQuery.FieldByName('des_menu').AsString;
      memTableAcessoscod_menu.AsInteger := FDQuery.FieldByName('cod_menu').AsInteger;
      memTableAcessos.Post;
      FDQuery.Next;
    end;
    if not memTableAcessos.IsEmpty then
      memTableAcessos.First;
    gridAcessosDBTableView1.ViewData.Expand(True);
  finally
    FDQuery.Active := False;
    FDQuery.Connection.Connected := False;
    FDQuery.Free;
    FConexao.Free;
  end;
end;

function Tview_Cadastro_Usuarios.ReturAccessMeunu(iUsuario, iMenu: integer): boolean;
var
  acessos : TAcessosController;
  aParam : array of variant;
begin
  try
    Result := False;
    acessos := TAcessosController.Create;
    SetLength(aParam, 3);
    aParam := ['MENU', iMenu, iUsuario];
    if not acessos.Localizar(aParam) then
      Exit;
    Result := True;
  finally
    acessos.Free;
  end;
end;

function Tview_Cadastro_Usuarios.SaveAccess: boolean;
var
  acessos : TAcessosController;
  usuarios: TUsuariosController;
  iSistema, iModulo, iUsuario: integer;
  aParam : array of variant;
begin
  try
    Result := False;
    acessos := TAcessosController.Create;
    usuarios := TUsuariosController.Create;
    memTableAcessos.First;
    if FAcao <> tacIncluir then
    begin
      acessos.Acessos.Sistema := -1;
      acessos.Acessos.Usuario := memTableUsuariosid_usuario.AsInteger;
      acessos.Acessos.Acao := tacExcluir;
      iUsuario := memTableUsuariosid_usuario.AsInteger;
      if not acessos.Gravar then
      begin
        Application.MessageBox('Erro ao excluir os acessos deste usuário! Alteração cancelada', 'Aenção', MB_OK + MB_ICONERROR);
        Exit;
      end
      else
      begin
        aParam := ['LOGIN', memTableUsuariosdes_login.AsString];
        if usuarios.Search(aParam) then
        begin
          usuarios.SetupSelf(usuarios.Usuarios.Query);
          iUsuario := usuarios.Usuarios.Codigo;
        end
        else
        begin
          iUsuario := 0;
        end;
        Finalize(aParam);
      end;
    end;
    if iUsuario = 0 then
    begin
      Application.MessageBox('Erro ao criar os acessos! Usuário não encontrado.', 'Erro', MB_OK + MB_ICONERROR);
      Exit;
    end;
    while not memTableAcessos.Eof do
    begin
      if memTableAcessosdes_flag.AsInteger = 1 then
      begin
        iSistema := StrToInt(Copy(memTableAcessoscod_menu.AsString,1,2));
        iModulo := StrToInt(Copy(memTableAcessoscod_menu.AsString,1,4));
        acessos.Acessos.Acao := tacIncluir;
        acessos.Acessos.Sistema := iSistema;
        acessos.Acessos.Modulo := iModulo;
        acessos.Acessos.Menu := memTableAcessoscod_menu.AsInteger;
        acessos.Acessos.Usuario := iUsuario;
        if not acessos.Gravar() then
        begin
          Application.MessageBox('Erro ao incluir os acessos deste usuário! Alteração cancelada', 'Aenção', MB_OK + MB_ICONERROR);
          Exit;
        end;
      end;
      memTableAcessos.Next;
    end;

    Result := True;
  finally
    acessos.Free;
  end;
end;

function Tview_Cadastro_Usuarios.Saveuser: boolean;
var
  usuarios : TUsuariosController;
  sPrivileges: string;
begin
  try
    Result := False;
    if Application.MessageBox('Confirma salvar o usuário?', 'Gravar', MB_YESNO + MB_ICONQUESTION) = ID_NO then
      Exit;
    sPrivileges := '';
    usuarios := TUsuariosController.Create;
    usuarios.Usuarios.Acao := FAcao;
    usuarios.Usuarios.Codigo := memTableUsuariosid_usuario.AsInteger;
    usuarios.usuarios.Nome := memTableUsuariosnom_usuario.AsString;
    usuarios.Usuarios.UserName := memTableUsuariosdes_login.AsString;
    usuarios.Usuarios.EMail := memTableUsuariosdes_email.AsString;
    usuarios.Usuarios.Grupo := 0;
    usuarios.Usuarios.Nivel := memTableUsuarioscod_nivel.AsInteger;
    usuarios.Usuarios.Ativo := memTableUsuariosdom_ativo.AsInteger;
    if FAcao = tacIncluir then
    begin
      if not AlterPwd() then
      begin
        Application.MessageBox('Erro ao definir a nova senha do usuário!', 'Erro', MB_OK + MB_ICONERROR);
        Exit;
      end;
      if usuarios.CreateUser(sSenha, 90, bAcesso) then
      begin
        if usuarios.Usuarios.Nivel = 1 then
        begin
          sPrivileges := 'ALL PRIVILEGES';
        end
        else if usuarios.Usuarios.Nivel = 2 then
        begin
          sPrivileges := 'DELETE, EXECUTE, INSERT, SELECT, TRIGGER, UPDATE';
        end;
        if not usuarios.Privilages(sPrivileges) then
        begin
          Application.MessageBox('Erro ao atribuir os privilégios do usuário!', 'Erro', MB_OK + MB_ICONERROR);
          Exit;
        end;
      end
      else
      begin
        Application.MessageBox('Erro ao criar o usuário no banco de dados!', 'Erro', MB_OK + MB_ICONERROR);
        Exit;
      end;
      if not usuarios.LockUnLockUser(ativo.Checked) then
      begin
        if ativo.Checked then
        begin
          Application.MessageBox('Erro ao ativar a conta do usuário!', 'Erro', MB_OK + MB_ICONERROR);
          Exit;
        end
        else
        begin
          Application.MessageBox('Erro ao desativar a conta do usuário!', 'Erro', MB_OK + MB_ICONERROR);
          Exit;
        end;
      end;
    end;
    if not usuarios.Gravar then
    begin
      Application.MessageBox('Erro ao gravar do usuário!', 'Erro', MB_OK + MB_ICONERROR);
      Exit;
    end;
    if not SaveAccess() then
    begin
      Application.MessageBox('Erro ao gravar os acessos do usuário!', 'Erro', MB_OK + MB_ICONERROR);
      Exit;
    end;

    Result := True;
  finally
    usuarios.Free;
  end;
end;

procedure Tview_Cadastro_Usuarios.SearchUser;
var
  aParam : array of variant;
  usuarios : TUsuariosController;
begin
  if not Assigned(view_PesquisaPessoasUsuarios) then
  begin
    view_PesquisaPessoasUsuarios := Tview_PesquisaPessoasUsuarios.Create(Application);
  end;
  if view_PesquisaPessoasUsuarios.ShowModal = mrOK then
  begin
    SetLength(aParam, 2);
    usuarios := TUsuariosController.Create;
    aParam := ['ID', view_PesquisaPessoasUsuarios.iID];
    if not usuarios.Search(aParam) then
    begin
      Application.MessageBox('Usuário não localizado!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    end
    else
    begin
      login.Properties.ReadOnly := True;
      memTableUsuarios.Active := False;
      memTableUsuarios.Active := True;
      memTableUsuarios.CopyDataSet(usuarios.Usuarios.Query,[coRestart, coAppend]);
      usuarios.Usuarios.Query.Active := False;
      usuarios.Usuarios.Query.Connection.Connected := False;
      PopulateMenus;
      dsAcessos.AutoEdit := False;
    end;
    Finalize(aParam);
    usuarios.Free;
  end;
  FreeAndNil(view_PesquisaPessoasUsuarios);
end;

procedure Tview_Cadastro_Usuarios.StartForm;
begin
  labelTitle.Caption := Self.Caption;
end;

function Tview_Cadastro_Usuarios.ValidateUser: boolean;
var
  usuarios : TUsuariosController;
  aParam: array of variant;
begin
  try
    Result := False;
    usuarios := TUsuariosController.Create;
    SetLength(aParam,2);
    if nomeCompleto.Text = '' then
    begin
      Application.MessageBox('Informe o nome completo do usuário.', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if login.Text = '' then
    begin
      Application.MessageBox('Informe o login do usuário.', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if FAcao = tacIncluir then
    begin
      aParam := ['LOGIN', login.Text];
      if usuarios.Search(aparam) then
      begin
        Application.MessageBox('Login já cadastrado.', 'Atenção', MB_OK + MB_ICONWARNING);
        Exit;
      end;
    end;
    if email.Text = '' then
    begin
      Application.MessageBox('Informe o E-Mail do usuário.', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if nivelUsuario.ItemIndex = -1 then
    begin
      Application.MessageBox('Informe nível de acesso do usuário.', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    Result := True;
  finally
    Finalize(aParam);
    usuarios.Free;
  end;
end;

end.
