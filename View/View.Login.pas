unit View.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxImage, dxGDIPlusClasses, cxClasses, dxLayoutContainer, dxLayoutControl,
  dxLayoutcxEditAdapters, cxTextEdit, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  FireDAC.Stan.Error, DAO.Conexao, cxMaskEdit, cxButtonEdit, Controller.Usuarios, cxLabel;

type
  Tview_Login = class(TForm)
    layoutControlLoginGroup_Root: TdxLayoutGroup;
    layoutControlLogin: TdxLayoutControl;
    textEditUsuario: TcxTextEdit;
    layoutItemUsuario: TdxLayoutItem;
    textEditSenha: TcxTextEdit;
    layoutItemSenha: TdxLayoutItem;
    actionListLogin: TActionList;
    actionLoginLogar: TAction;
    actionLoginCancelar: TAction;
    buttonLogar: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    buttonCancelar: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    actionLoginNovaSenha: TAction;
    actionLoginCancelaNovaSenha: TAction;
    novaSenha: TcxButtonEdit;
    dxLayoutItem3: TdxLayoutItem;
    confirmaSenha: TcxButtonEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    actionVisualizarNovaSenha: TAction;
    actionVisualizarConfirmacao: TAction;
    dxLayoutGroup6: TdxLayoutGroup;
    Panel1: TPanel;
    dxLayoutItem7: TdxLayoutItem;
    cxImage1: TcxImage;
    labelVersion: TcxLabel;
    procedure actionLoginCancelarExecute(Sender: TObject);
    procedure actionLoginLogarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionVisualizarNovaSenhaExecute(Sender: TObject);
    procedure actionVisualizarConfirmacaoExecute(Sender: TObject);
    procedure actionLoginCancelaNovaSenhaExecute(Sender: TObject);
    procedure actionLoginNovaSenhaExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function Logar(): boolean;
    function SavePwd(): boolean;
    function ValidateConfirmation(): boolean;
    procedure ChangePwd;
  public
    { Public declarations }
  end;

var
  view_Login: Tview_Login;
  FConexao : TConexao;
  iTimes: integer;
  iErrNumber: integer;
implementation

{$R *.dfm}

uses Data.Module, Global.Parametros;

procedure Tview_Login.actionLoginCancelaNovaSenhaExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tview_Login.actionLoginCancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tview_Login.actionLoginLogarExecute(Sender: TObject);
begin
  if Logar() then
  begin
    ModalResult := mrOk
  end
  else
  begin
    if iErrNumber = 1045 then
    begin
      if iTimes < 3 then
      begin
        Inc(iTimes,1);
        textEditUsuario.SetFocus;
        Exit;
      end
      else
      begin
        ModalResult := mrCancel;
      end;
    end
    else
    begin
      ModalResult := mrCancel;
    end;
  end;
end;

procedure Tview_Login.actionLoginNovaSenhaExecute(Sender: TObject);
begin
  if not SavePwd() then
    ModalResult := mrCancel;
end;

procedure Tview_Login.actionVisualizarConfirmacaoExecute(Sender: TObject);
begin
  if confirmaSenha.Properties.EchoMode = eemNormal then
  begin
    confirmaSenha.Properties.EchoMode := eemPassword;
    confirmaSenha.Properties.Buttons[0].ImageIndex := 2;
  end
  else
  begin
    confirmaSenha.Properties.EchoMode := eemNormal;
    confirmaSenha.Properties.Buttons[0].ImageIndex := 3;
  end;
end;

procedure Tview_Login.actionVisualizarNovaSenhaExecute(Sender: TObject);
begin
  if novaSenha.Properties.EchoMode = eemNormal then
  begin
    novaSenha.Properties.EchoMode := eemPassword;
    novaSenha.Properties.Buttons[0].ImageIndex := 2;
  end
  else
  begin
    novaSenha.Properties.EchoMode := eemNormal;
    novaSenha.Properties.Buttons[0].ImageIndex := 3;
  end;
end;

procedure Tview_Login.ChangePwd;
begin
  dxlayoutGroup3.MakeVisible;
  novaSenha.SetFocus;
end;

procedure Tview_Login.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure Tview_Login.FormShow(Sender: TObject);
begin
  Self.Caption := Application.Title + ' - Login';
  iTimes := 1;
  novaSenha.Clear;
  novaSenha.Properties.EchoMode := eemPassword;
  novaSenha.Properties.Buttons[0].ImageIndex := 2;
  confirmaSenha.Clear;
  confirmaSenha.Properties.EchoMode := eemPassword;
  confirmaSenha.Properties.Buttons[0].ImageIndex := 2;
end;

function Tview_Login.Logar: boolean;
begin
  try
    try
      Result := False;
      Global.Parametros.pUser_Name := textEditUsuario.Text;
      Global.Parametros.pPassword := textEditSenha.Text;
      Global.Parametros.pDriverID := 'MySQL';
      Global.Parametros.pServer := 'localhost';
      Global.Parametros.pDatabase := 'dberpmamutti';
      Global.Parametros.pPort := '3306';
      FConexao := TConexao.Create;
      FConexao.ActiveDectiveConn(True);
      Result := True;
    except
      on E: EFDDBEngineException do begin
        if E.Kind = ekUserPwdExpired then
        begin
          Application.MessageBox('Sua senha expirou. Clique em OK para alterá-la!', 'Atenção', MB_OK + MB_ICONWARNING);
          ChangePwd;
          Abort;
        end
        else if E.Kind = ekUserPwdInvalid then
        begin
          Application.MessageBox('Usuário e/ou senha inválidos!', 'Atenção', MB_ICONWARNING + MB_OK);
          iErrNumber := E.ErrorCode;
        end
        else if E.Kind = ekOther then
        begin
          Application.MessageBox(PChar('Ocorreu o seguinte erro : ' + E.Message + ' (' + e.ErrorCode.ToString + ')'), 'Erro', MB_OK + MB_ICONERROR);
          iErrNumber := -1;
        end;
      end;
    end;
  finally
    FConexao.ActiveDectiveConn(False);
  end;
end;

function Tview_Login.SavePwd: boolean;
var
  usuarios : TUsuariosController;
begin
  try
    Result := False;
    usuarios := TUsuariosController.Create;
    if not ValidateConfirmation() then
      Exit;
    if usuarios.AlterPwd(textEditUsuario.Text, novaSenha.Text) then
    begin
      textEditSenha.Text := '';
      dxLayoutGroup2.MakeVisible;
      textEditSenha.SetFocus;
      Result := True;
    end;
  finally
    usuarios.Free;
  end;
end;

function Tview_Login.ValidateConfirmation: boolean;
begin
  Result := False;
  if novaSenha.Text = '' then
  begin
    Application.MessageBox('Informe a nova senha!', 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;
  if confirmaSenha.Text = '' then
  begin
    Application.MessageBox('Informe a confirmação da nova senha!', 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;
  if novaSenha.Text <> confirmaSenha.Text then
  begin
    Application.MessageBox('Confirmação da nova senha diferente da noca senha informada!', 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;
  Result := True;
end;

end.
