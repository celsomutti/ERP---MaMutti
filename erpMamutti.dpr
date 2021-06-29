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
  View.ConfirmaSenha in 'View\View.ConfirmaSenha.pas' {view_ConfirmaSenha};

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
