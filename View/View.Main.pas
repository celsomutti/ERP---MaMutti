unit View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXPanels, Vcl.WinXCtrls, Vcl.CategoryButtons, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinsDefaultPainters, Vcl.StdCtrls, cxButtons, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, System.Actions, Vcl.ActnList, Vcl.ButtonGroup, Vcl.Buttons, System.ImageList, Vcl.ImgList, cxImageList,
  cxPC, dxBarBuiltInMenu, cxClasses, dxTabbedMDI, WinInet, Controller.Usuarios, Controller.Acessos;

type
  Tview_Main = class(TForm)
    actionListMain: TActionList;
    actionMenu: TAction;
    splitViewMain: TSplitView;
    actionCadastro: TAction;
    popupMenuCadastrado: TPopupMenu;
    actionCadastroEmpresas: TAction;
    menuCadastroEmpresas: TMenuItem;
    buttonMenu: TcxButton;
    buttonCadastro: TcxButton;
    buttonExpressas: TcxButton;
    actionExpressas: TAction;
    popupMenuExpressas: TPopupMenu;
    actionExpressasImportacaoEDI: TAction;
    menuExpressasImportaodePedidos: TMenuItem;
    buttonPeriodico: TcxButton;
    actionPeriodicos: TAction;
    actionServicos: TAction;
    actionTransporte: TAction;
    actionFinanceiro: TAction;
    actionConfiguracoes: TAction;
    actionSair: TAction;
    buttonServicos: TcxButton;
    buttonTransportes: TcxButton;
    buttonFinanceiro: TcxButton;
    buttonSistema: TcxButton;
    buttonSair: TcxButton;
    imageListMain32_32: TcxImageList;
    actionCadastroClientes: TAction;
    actionCadastroFornecedores: TAction;
    actionCadastroPessoas: TAction;
    actionCadastroCandidatos: TAction;
    actionCadastroFuncionarios: TAction;
    actionCadastroEmbarcadores: TAction;
    actionCadastroDistribuidores: TAction;
    actionCadastroEntregadores: TAction;
    actionCadastroVeiculos: TAction;
    menuCadastroClientes: TMenuItem;
    menuCadastroFornecedores: TMenuItem;
    menuCadastroContratados: TMenuItem;
    menuCadastroCandidatos: TMenuItem;
    menuCadastroFuncionrios: TMenuItem;
    menuCadastroEmbarcadores: TMenuItem;
    menuCadastroBases: TMenuItem;
    menuCadastroEntregadores: TMenuItem;
    menuCadastroVeiculos: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    actionExpressasBIPedidos: TAction;
    actionExpressasAcareacoes: TAction;
    actionExpressasExtravios: TAction;
    actionExpressasRecepcaoPedidos: TAction;
    actionExpressasControleExpressas: TAction;
    actionExpressasExpedicao: TAction;
    actionExpressasRoteiros: TAction;
    actionExpressasExtratos: TAction;
    actionExpressasVerbas: TAction;
    menuExpressasBIdePedidos: TMenuItem;
    menuExpressasAcareaes: TMenuItem;
    menuExpressasExtravios: TMenuItem;
    menuExpressasRecepodePedidos: TMenuItem;
    N4: TMenuItem;
    menuExpressasControledeExpressas: TMenuItem;
    menuExpressasExpedicao: TMenuItem;
    menuExpressasRoteiros: TMenuItem;
    menuExpressasExtratos: TMenuItem;
    menuExpressasVerbas: TMenuItem;
    N5: TMenuItem;
    popupMenuPeriodicos: TPopupMenu;
    actionPeriodicosImportacaoTiragem: TAction;
    actionPeriodicosImportacaoEtiquetas: TAction;
    actionPeriodicosOcorrencias: TAction;
    actionPeriodicosRecados: TAction;
    actionPeriodicosAtribuicao: TAction;
    actionServicosCadastroServicos: TAction;
    actionServicosOS: TAction;
    popupMenuServicos: TPopupMenu;
    actionTransportesViagens: TAction;
    actionTransportesManutencao: TAction;
    actionTransportesInsumos: TAction;
    actionTransportesAbastecimentos: TAction;
    actionTransportesEstoquesInsumos: TAction;
    actionFinanceiroCentroCusto: TAction;
    actionFinanceiroCreditoDebito: TAction;
    actionFinanceiroContasReceber: TAction;
    actionFinanceiroContasPagar: TAction;
    actionFinanceiroCaixaPequeno: TAction;
    actionFinanceiroPlanilhaFinanceira: TAction;
    actionSistemaUsuarios: TAction;
    actionSistemaSenha: TAction;
    menuAtribuicoes: TMenuItem;
    menuEtiquetas: TMenuItem;
    menuTiragem: TMenuItem;
    menuOcorrencias: TMenuItem;
    menuRecados: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    menuServios: TMenuItem;
    menuOrdensdeServios: TMenuItem;
    popupMenuTransportes: TPopupMenu;
    menuViagens: TMenuItem;
    menuManutencao: TMenuItem;
    menuEstoques: TMenuItem;
    menuAbastecimentos: TMenuItem;
    menuInsumos: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    popupMenuFinanceiro: TPopupMenu;
    menuCentrodeCusto: TMenuItem;
    menuContasaPagar: TMenuItem;
    menuContasaReceber: TMenuItem;
    menuCaixaPequeno: TMenuItem;
    menuCreditoseDebitos: TMenuItem;
    menuPlanilhadeFinanceira: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    popupMenuSistema: TPopupMenu;
    menuUsurios: TMenuItem;
    menuSenha: TMenuItem;
    N12: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure actionMenuExecute(Sender: TObject);
    procedure actionCadastroExecute(Sender: TObject);
    procedure actionExpressasExecute(Sender: TObject);
    procedure actionSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actionPeriodicosExecute(Sender: TObject);
    procedure actionServicosExecute(Sender: TObject);
    procedure actionTransporteExecute(Sender: TObject);
    procedure actionFinanceiroExecute(Sender: TObject);
    procedure actionConfiguracoesExecute(Sender: TObject);
    procedure actionSistemaUsuariosExecute(Sender: TObject);
    procedure actionSistemaSenhaExecute(Sender: TObject);
  private
    { Private declarations }
    procedure InitForm;
    procedure ResizeMainForm;
    procedure OpenCloseMenu;
    procedure Acessos;
    function  Login(): Boolean;
    function  VerificarExisteConexaoComInternet: boolean;
    function  VerifyParamsConnection(): Boolean;
    function AlterPwd(): boolean;
  public
    { Public declarations }
  end;

var
  view_Main: Tview_Main;
  sVersion : String;

implementation

{$R *.dfm}

uses Data.Module, View.Login, Global.Parametros, Common.Utils, View.CadastroUsuarios, View.SetupConnDB, View.ConfirmaSenha;

{ Tview_Main }

procedure Tview_Main.Acessos;
var
  usuarios : TUsuariosController;
  acessos : TAcessosController;
  i, iMenu, iSistema: integer;
  sMenu: String;
  aParam : Array of variant;
begin
  try
    usuarios := TUsuariosController.Create;
    acessos := TAcessosController.Create;
    if Global.Parametros.pUser_Name = 'root' then
      Exit;
    SetLength(aParam,2);
    aParam := ['LOGIN',  Global.Parametros.pUser_Name];
    if usuarios.Search(aParam) then
    begin
      usuarios.SetupSelf(usuarios.Usuarios.Query);
      Global.Parametros.pUser_ID := usuarios.Usuarios.Codigo;
      usuarios.Usuarios.Query.Active := False;
      usuarios.Usuarios.Query.Connection.Connected := False;
    end
    else
    begin
      Global.Parametros.pUser_ID := 0;
    end;
    Finalize(aParam);
    for i := 0 to Pred(actionListMain.ActionCount) do
    begin
      sMenu := IntToStr(TAction(actionListMain.Actions[i]).Tag);
      if StrToInt(sMenu) > 0 then
      begin
        if StrToInt(sMenu) <= 500 then
        begin
          SetLength(aParam, 3);
          aParam := ['SISTEMA', StrToInt(sMenu), Global.Parametros.pUser_ID];
        end
        else
        begin
          SetLength(aParam, 3);
          aParam := ['MENU', StrToInt(sMenu), Global.Parametros.pUser_ID];
        end;
        if not usuarios.Search(aParam) then
          TAction(actionListMain.Actions[i]).Enabled := False
        else
        begin
          usuarios.Usuarios.Query.Active := False;
          usuarios.Usuarios.Query.Connection.Connected := False;
        end;
        Finalize(aParam);
      end;
    end;
  finally
    usuarios.Free;
    acessos.Free;
  end;
end;

procedure Tview_Main.actionCadastroExecute(Sender: TObject);
begin
  popupMenuCadastrado.Popup(splitViewMain.Width, buttonMenu.Height * 2);
end;

procedure Tview_Main.actionExpressasExecute(Sender: TObject);
begin
  popupMenuExpressas.Popup(splitViewMain.Width, buttonMenu.Height * 3);
end;

procedure Tview_Main.actionFinanceiroExecute(Sender: TObject);
begin
  popupMenuFinanceiro.Popup(splitViewMain.Width, buttonMenu.Height * 7);
end;

procedure Tview_Main.actionMenuExecute(Sender: TObject);
begin
  OpenCloseMenu;
end;

procedure Tview_Main.actionPeriodicosExecute(Sender: TObject);
begin
  popupMenuPeriodicos.Popup(splitViewMain.Width, buttonMenu.Height * 4);
end;

procedure Tview_Main.actionSairExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_Main.actionServicosExecute(Sender: TObject);
begin
  popupMenuServicos.Popup(splitViewMain.Width, buttonMenu.Height * 5);
end;

procedure Tview_Main.actionSistemaSenhaExecute(Sender: TObject);
begin
  AlterPwd;
end;

procedure Tview_Main.actionSistemaUsuariosExecute(Sender: TObject);
begin
  if not Assigned(view_Cadastro_Usuarios) then
  begin
    view_Cadastro_Usuarios := Tview_Cadastro_Usuarios.Create(Application);
  end;
  view_Cadastro_Usuarios.Show;
end;

procedure Tview_Main.actionConfiguracoesExecute(Sender: TObject);
begin
  popupMenuSistema.Popup(splitViewMain.Width, buttonMenu.Height * 8);
end;

procedure Tview_Main.actionTransporteExecute(Sender: TObject);
begin
  popupMenuTransportes.Popup(splitViewMain.Width, buttonMenu.Height * 6);
end;

function Tview_Main.AlterPwd: boolean;
var
  usuarios : TUsuariosController;
begin
  try
    Result := False;
    usuarios := TUsuariosController.Create;
    if not Assigned(view_ConfirmaSenha) then
    begin
      view_ConfirmaSenha := Tview_ConfirmaSenha.Create(Application);
    end;
    view_ConfirmaSenha.dxLayoutItem5.Visible := False;
    if view_ConfirmaSenha.ShowModal = mrCancel then
    begin
      Exit;
    end
    else
    begin
      sSenha := view_ConfirmaSenha.senha.Text;
      bAcesso := view_ConfirmaSenha.primeiroAcesso.Checked;
    end;

    if not usuarios.AlterPwd(Global.Parametros.pUser_Name, sSenha, 90, False) then
    begin
      Application.MessageBox('Erro ao alterar a senha!', 'Erro', MB_OK + MB_ICONERROR);
      Exit;
    end
    else
    begin
      Application.MessageBox('Senha alterada com sucesso!', 'Senha Alterada', MB_OK + MB_ICONINFORMATION);
    end;
    Result := True;
  finally
    usuarios.Free;
    FreeAndNil(view_ConfirmaSenha);
  end;
end;

procedure Tview_Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_Main := nil;
end;

procedure Tview_Main.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := Application.MessageBox('Confirma sair do sistema ?', 'Sair do sistema', MB_YESNO + MB_ICONQUESTION) = IDYES;
end;

procedure Tview_Main.FormShow(Sender: TObject);
begin
  InitForm;
end;

procedure Tview_Main.InitForm;
var
  funcUtils : Common.Utils.TUtils;
begin
  try

    funcUtils := Common.Utils.TUtils.Create;

    if not FileExists(ExtractFilePath(Application.ExeName) + 'db.ini') then
    begin
      Application.MessageBox('Parâmetros de conexão não foram encontrados!', 'Atenção', MB_OK + MB_ICONWARNING);
      if not VerifyParamsConnection() then
        Application.Terminate;
    end;

    Global.Parametros.pDriverID := funcUtils.LeIni(ExtractFilePath(Application.ExeName) +  'db.ini','Database','DriverID');
    Global.Parametros.pServer := funcUtils.LeIni(ExtractFilePath(Application.ExeName) +  'db.ini','Database','HostName');
    Global.Parametros.pServer := funcUtils.DesCriptografa(Global.Parametros.pServer,3);
    Global.Parametros.pPort := funcUtils.LeIni(ExtractFilePath(Application.ExeName) +  'db.ini','Database','Port');
    Global.Parametros.pPort := funcUtils.DesCriptografa(Global.Parametros.pPort,3);
    Global.Parametros.pServer := funcUtils.LeIni(ExtractFilePath(Application.ExeName) +  'db.ini','Database','Database');
    Global.Parametros.pServer := funcUtils.DesCriptografa(Global.Parametros.pServer,3);
    Global.Parametros.pDatabase := funcUtils.DesCriptografa(Global.Parametros.pDatabase,3);

    if Global.Parametros.pServer <> 'localhost' then
    begin
      if not VerificarExisteConexaoComInternet then
      begin
        Application.MessageBox('Não foi encontrada conexão com a internet! O sistema será encerrado', 'Erro', MB_OK + MB_ICONERROR);
        Application.Terminate;
      end;
    end;

    ResizeMainForm;
    Self.Caption := Application.Title;

    sVersion := funcUtils.VersaoExe;
    if not Login() then
      Application.Terminate
    else
    begin
      with dm do
      begin
        FDConnectionMySQL.Params.DriverID := Global.Parametros.pDriverID;
        FDConnectionMySQL.Params.Database := Global.Parametros.pDatabase;
        FDConnectionMySQL.Params.UserName := Global.Parametros.pUser_Name;
        FDConnectionMySQL.ParamS.Password := Global.Parametros.pPassword;
      end;
      Self.Caption := Application.Title + ' - Versão ' + sVersion + ' - [' + Global.Parametros.pUser_Name + ']';
    end;
    Acessos;
  finally
    funcUtils.Free;
  end;
end;

function Tview_Main.Login: Boolean;
begin
  Result := False;
  if not Assigned(view_Login) then
  begin
    view_Login := Tview_Login.Create(Application);
  end;
  view_Login.labelVersion.Caption := sVersion;
  if view_Login.ShowModal = mrOk Then
  begin
    Result := True;
  end;
  FreeAndNil(view_Login);
end;

procedure Tview_Main.OpenCloseMenu;
begin
  if splitViewMain.Opened then
  begin
    splitViewMain.Close;
    actionMenu.ImageIndex := 0;
  end
  else
  begin
    splitViewMain.Open;
    actionMenu.ImageIndex := 9;
  end;
end;

procedure Tview_Main.ResizeMainForm;
begin
  Self.Top := 0;
  Self.Left := 0;
  Self.Width := Screen.WorkAreaWidth;
  Self.Height := Screen.WorkAreaHeight;
end;


function Tview_Main.VerificarExisteConexaoComInternet: boolean;
var
  nFlags: Cardinal;
begin
  result := InternetGetConnectedState(@nFlags, 0);
end;

function Tview_Main.VerifyParamsConnection: Boolean;
begin
  Result := False;
  if not Assigned(view_SetupConnDB) then
  begin
    view_SetupConnDB := Tview_SetupConnDB.Create(Application);
  end;
  if view_SetupConnDB.ShowModal = mrCancel then
  begin
    Exit;
  end;
  FreeAndNil(view_SetupConnDB);
  Result := True;
end;

end.
