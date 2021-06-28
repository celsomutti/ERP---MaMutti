unit View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXPanels, Vcl.WinXCtrls, Vcl.CategoryButtons, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinsDefaultPainters, Vcl.StdCtrls, cxButtons, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, System.Actions, Vcl.ActnList, Vcl.ButtonGroup, Vcl.Buttons, System.ImageList, Vcl.ImgList, cxImageList;

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
    actionExpressasImportacaoPedidos: TAction;
    actionExpressasImportacaoBaixas: TAction;
    menuExpressasImportaodePedidos: TMenuItem;
    menuExpressasImportaodeBaixas: TMenuItem;
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
    actionCadastroContratados: TAction;
    actionCadastroCandidatos: TAction;
    actionCadastroFuncionarios: TAction;
    actionCadastroEmbarcadores: TAction;
    actionCadastroBases: TAction;
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
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    procedure ResizeMainForm;
    procedure OpenCloseMenu;
    function Login(): Boolean;
  public
    { Public declarations }
  end;

var
  view_Main: Tview_Main;

implementation

{$R *.dfm}

uses Data.Module, View.Login, Global.Parametros;

{ Tview_Main }

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

procedure Tview_Main.actionConfiguracoesExecute(Sender: TObject);
begin
  popupMenuSistema.Popup(splitViewMain.Width, buttonMenu.Height * 8);
end;

procedure Tview_Main.actionTransporteExecute(Sender: TObject);
begin
  popupMenuTransportes.Popup(splitViewMain.Width, buttonMenu.Height * 6);
end;

procedure Tview_Main.FormActivate(Sender: TObject);
begin
//  if not Login() then Application.Terminate;
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
  ResizeMainForm;
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
  end;
end;

function Tview_Main.Login: Boolean;
begin
  Result := False;
  if not Assigned(view_Login) then
  begin
    view_Login := Tview_Login.Create(Application);
  end;
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
  Self.Caption := Application.Title;
end;

end.
