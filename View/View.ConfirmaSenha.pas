unit View.ConfirmaSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxButtonEdit, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxCheckBox;

type
  Tview_ConfirmaSenha = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    senha: TcxButtonEdit;
    dxLayoutItem1: TdxLayoutItem;
    confirmacao: TcxButtonEdit;
    dxLayoutItem2: TdxLayoutItem;
    actionList: TActionList;
    actionVisualizarSenha: TAction;
    actionVisualizarConfirmacao: TAction;
    actionOk: TAction;
    actionCancelar: TAction;
    dxLayoutGroup1: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    primeiroAcesso: TcxCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    procedure actionVisualizarSenhaExecute(Sender: TObject);
    procedure actionVisualizarConfirmacaoExecute(Sender: TObject);
    procedure actionOkExecute(Sender: TObject);
    procedure actionCancelarExecute(Sender: TObject);
  private
    { Private declarations }
    function ValidationPwd(): boolean;
  public
    { Public declarations }
  end;

var
  view_ConfirmaSenha: Tview_ConfirmaSenha;

implementation

{$R *.dfm}

uses Data.Module;

procedure Tview_ConfirmaSenha.actionCancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tview_ConfirmaSenha.actionOkExecute(Sender: TObject);
begin
  if ValidationPwd() then
    ModalResult := mrOk;
end;

procedure Tview_ConfirmaSenha.actionVisualizarConfirmacaoExecute(Sender: TObject);
begin
if confirmacao.Properties.EchoMode = eemNormal then
  begin
    confirmacao.Properties.EchoMode := eemPassword;
    confirmacao.Properties.Buttons[0].ImageIndex := 2;
  end
  else
  begin
    confirmacao.Properties.EchoMode := eemNormal;
    confirmacao.Properties.Buttons[0].ImageIndex := 3;
  end;
end;

procedure Tview_ConfirmaSenha.actionVisualizarSenhaExecute(Sender: TObject);
begin
if senha.Properties.EchoMode = eemNormal then
  begin
    senha.Properties.EchoMode := eemPassword;
    senha.Properties.Buttons[0].ImageIndex := 2;
  end
  else
  begin
    senha.Properties.EchoMode := eemNormal;
    senha.Properties.Buttons[0].ImageIndex := 3;
  end;
end;

function Tview_ConfirmaSenha.ValidationPwd: boolean;
begin
  Result := False;
  if senha.Text = '' then
  begin
    Application.MessageBox('Informe a nova senha!', 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;
  if confirmacao.Text = '' then
  begin
    Application.MessageBox('Informe a confirmação da nova senha!', 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;
  if senha.Text <> confirmacao.Text then
  begin
    Application.MessageBox('Confirmação da nova senha diferente da nova senha informada!', 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;
  Result := True;
end;

end.
