program erpMamutti;

uses
  Vcl.Forms,
  View.Main in 'View\View.Main.pas' {view_Main},
  Vcl.Themes,
  Vcl.Styles,
  Data.Module in 'Data\Data.Module.pas' {dm: TDataModule},
  Model.Usuarios in 'Model\Model.Usuarios.pas',
  DAO.Conexao in 'DAO\DAO.Conexao.pas',
  Common.ENum in 'Common\Common.ENum.pas',
  Global.Parametros in 'Global\Global.Parametros.pas',
  Controller.Usuarios in 'Controller\Controller.Usuarios.pas',
  View.Login in 'View\View.Login.pas' {view_Login},
  Common.Utils in 'Common\Common.Utils.pas',
  View.CadastroUsuarios in 'View\View.CadastroUsuarios.pas' {view_Cadastro_Usuarios},
  View.PesquisaPessoasUsuarios in 'View\View.PesquisaPessoasUsuarios.pas' {view_PesquisaPessoasUsuarios},
  View.ConfirmaSenha in 'View\View.ConfirmaSenha.pas' {view_ConfirmaSenha},
  View.SetupConnDB in 'View\View.SetupConnDB.pas' {view_SetupConnDB},
  Model.Sistemas in 'Model\Model.Sistemas.pas',
  Model.Modulos in 'Model\Model.Modulos.pas',
  Controller.Sistemas in 'Controller\Controller.Sistemas.pas',
  Controller.Modulos in 'Controller\Controller.Modulos.pas',
  Model.Menus in 'Model\Model.Menus.pas',
  Controller.Menus in 'Controller\Controller.Menus.pas',
  Model.Acessos in 'Model\Model.Acessos.pas',
  Controller.Acessos in 'Controller\Controller.Acessos.pas',
  Model.AbrangenciaExpressas in 'Model\Model.AbrangenciaExpressas.pas',
  Controller.AbrangenciaExpressas in 'Controller\Controller.AbrangenciaExpressas.pas',
  View.CadastroAbrangenciaExpressas in 'View\View.CadastroAbrangenciaExpressas.pas' {view_CadastroAbrangenciaExpressas},
  Controller.PlanilhaRoteirosExpressas in 'Controller\Controller.PlanilhaRoteirosExpressas.pas',
  Model.PlanilhaRoteirosExpressas in 'Model\Model.PlanilhaRoteirosExpressas.pas',
  Model.Bases in 'Model\Model.Bases.pas',
  Controller.Bases in 'Controller\Controller.Bases.pas',
  Thread.ImportaAbrangencia in 'Thread\Thread.ImportaAbrangencia.pas',
  Model.FinanceiroPrazosExtratos in 'Model\Model.FinanceiroPrazosExtratos.pas',
  Controller.FinanceiroPrazosExtratos in 'Controller\Controller.FinanceiroPrazosExtratos.pas',
  View.ParametrosPrazosExtratos in 'View\View.ParametrosPrazosExtratos.pas' {view_ParametrosPrazosExtratos},
  Model.Bancos in 'Model\Model.Bancos.pas',
  Controller.Bancos in 'Controller\Controller.Bancos.pas',
  View.CadastroBancos in 'View\View.CadastroBancos.pas' {view_CadastroBancos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Light');
  Application.Title := 'ERP - MaMutti';
  Application.CreateForm(Tview_Main, view_Main);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
