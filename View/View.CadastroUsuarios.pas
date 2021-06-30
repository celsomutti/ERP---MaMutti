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
  cxDataControllerConditionalFormattingRulesManagerDialog, cxInplaceContainer, cxTLData, cxDBTL, Vcl.ComCtrls, dxtree, dxdbtree;

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
    cxButton4: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem12: TdxLayoutItem;
    actionAlterarSenha: TAction;
    cxButton7: TcxButton;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    memTableUsuariosdom_ativo: TSmallintField;
    dxDBTreeView1: TdxDBTreeView;
    dxLayoutItem14: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionNovoExecute(Sender: TObject);
    procedure actionGravarExecute(Sender: TObject);
    procedure memTableUsuariosAfterInsert(DataSet: TDataSet);
    procedure memTableUsuariosAfterEdit(DataSet: TDataSet);
    procedure memTableUsuariosAfterCancel(DataSet: TDataSet);
    procedure memTableUsuariosAfterPost(DataSet: TDataSet);
    procedure actionLocalizarExecute(Sender: TObject);
    procedure ativoPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    procedure SearchUser;
    function Saveuser(): boolean;
    function AlterPwd(): string;
  public
    { Public declarations }
  end;

var
  view_Cadastro_Usuarios: Tview_Cadastro_Usuarios;
  fAcao : TAcao;
  sSenha: String;


implementation

{$R *.dfm}

uses Data.Module, View.PesquisaPessoasUsuarios, View.ConfirmaSenha;

procedure Tview_Cadastro_Usuarios.actionGravarExecute(Sender: TObject);
begin
  memTableUsuarios.Post;
end;

procedure Tview_Cadastro_Usuarios.actionLocalizarExecute(Sender: TObject);
begin
  SearchUser;
end;

procedure Tview_Cadastro_Usuarios.actionNovoExecute(Sender: TObject);
begin
  if not memTableUsuarios.Active then
    memTableUsuarios.Active := True;
  memTableUsuarios.Insert;
  nomeCompleto.SetFocus;
end;

function Tview_Cadastro_Usuarios.AlterPwd: string;
begin
  Result := '';
  if not Assigned(view_ConfirmaSenha) then
  begin
    view_ConfirmaSenha := Tview_ConfirmaSenha.Create(Application);
  end;
  if view_ConfirmaSenha.ShowModal = mrOk then
  begin
    Result := view_ConfirmaSenha.senha.Text;
  end;
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

procedure Tview_Cadastro_Usuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_Cadastro_Usuarios := nil;
end;

procedure Tview_Cadastro_Usuarios.memTableUsuariosAfterCancel(DataSet: TDataSet);
begin
  FAcao := tacIndefinido;
end;

procedure Tview_Cadastro_Usuarios.memTableUsuariosAfterEdit(DataSet: TDataSet);
begin
  FAcao := tacAlterar;
end;

procedure Tview_Cadastro_Usuarios.memTableUsuariosAfterInsert(DataSet: TDataSet);
begin
  FAcao := tacIncluir;
end;

procedure Tview_Cadastro_Usuarios.memTableUsuariosAfterPost(DataSet: TDataSet);
begin
  if Saveuser() then
    Application.MessageBox('Usuário gravado com sucesso.', 'Gravar', MB_OK + MB_ICONINFORMATION)
  else
    Application.MessageBox('Usuário não foi gravado!', 'Atenção', MB_OK + MB_ICONWARNING);
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
      sSenha := AlterPwd;
      if sSenha.IsEmpty then
      begin
        Application.MessageBox('Erro ao definir a nova senha do usuário!', 'Erro', MB_OK + MB_ICONERROR);
        Exit;
      end;
      if usuarios.CreateUser(sSenha,90) then
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
      memTableUsuarios.Active := False;
      memTableUsuarios.Data := usuarios.Usuarios.Query.Data;
      usuarios.Usuarios.Query.Active := False;
      usuarios.Usuarios.Query.Connection.Connected := False;
    end;
    Finalize(aParam);
    usuarios.Free;
  end;
  FreeAndNil(view_PesquisaPessoasUsuarios);
end;

end.
