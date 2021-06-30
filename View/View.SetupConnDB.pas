unit View.SetupConnDB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, dxLayoutControlAdapters, Vcl.StdCtrls, dximctrl, cxImageComboBox, cxButtonEdit, Vcl.Menus, cxButtons,
  System.Actions, Vcl.ActnList;

type
  Tview_SetupConnDB = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    driverID: TcxImageComboBox;
    dxLayoutItem1: TdxLayoutItem;
    server: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    porta: TcxMaskEdit;
    dxLayoutItem3: TdxLayoutItem;
    catalogo: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    protocolo: TcxTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    database: TcxButtonEdit;
    dxLayoutItem4: TdxLayoutItem;
    OpenDialog: TOpenDialog;
    dxLayoutGroup2: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    actionList: TActionList;
    actionGravar: TAction;
    actionCancelar: TAction;
    actionAbrir: TAction;
    procedure actionCancelarExecute(Sender: TObject);
    procedure driverIDPropertiesChange(Sender: TObject);
    procedure actionGravarExecute(Sender: TObject);
    procedure actionAbrirExecute(Sender: TObject);
  private
    { Private declarations }
    function ValidadeData(): boolean;
    function SaveData(): boolean;
  public
    { Public declarations }
  end;

var
  view_SetupConnDB: Tview_SetupConnDB;

implementation

{$R *.dfm}

uses Data.Module, Common.Utils;

procedure Tview_SetupConnDB.actionAbrirExecute(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    database.Text := OpenDialog.FileName;
  end;
end;

procedure Tview_SetupConnDB.actionCancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tview_SetupConnDB.actionGravarExecute(Sender: TObject);
begin
  if ValidadeData() then
  begin
    if SaveData() then
    begin
      ModalResult := mrOK;
    end;
  end;
end;

procedure Tview_SetupConnDB.driverIDPropertiesChange(Sender: TObject);
begin
  if Pos(driverID.ItemIndex.ToString, '0,2,6') > 0 then
  begin
    database.Properties.Buttons[0].Visible := True;
  end
  else
  begin
    database.Properties.Buttons[0].Visible := False;
  end;
end;

function Tview_SetupConnDB.SaveData: boolean;
var
  funcUtil : Common.Utils.TUtils;
begin
  try
    Result := False;
    funcUtil := Common.Utils.TUtils.Create;
    if not funcUtil.CriarIni(ExtractFilePath(Application.ExeName) + 'db.ini') then
    begin
      Application.MessageBox('Não foi possivel gravar os parâmetros!', 'Atenção', MB_OK + MB_ICONERROR);
      Exit;
    end;
    funcUtil.GravaIni(ExtractFilePath(Application.ExeName) +  'db.ini', 'Database', 'DriverID', driverID.EditText);
    funcUtil.GravaIni(ExtractFilePath(Application.ExeName) +  'db.ini', 'Database', 'HostName', funcUtil.Criptografa(server.Text, 3));
    funcUtil.GravaIni(ExtractFilePath(Application.ExeName) +  'db.ini', 'Database', 'Port', funcUtil.Criptografa(porta.EditText, 3));
    funcUtil.GravaIni(ExtractFilePath(Application.ExeName) +  'db.ini', 'Database', 'Database', funcUtil.Criptografa(database.Text, 3));
    funcUtil.GravaIni(ExtractFilePath(Application.ExeName) +  'db.ini', 'Database', 'Catalog', catalogo.Text);
    funcUtil.GravaIni(ExtractFilePath(Application.ExeName) +  'db.ini', 'Database', 'Protocol', protocolo.Text);
    Result := True;
  finally
    funcUtil.Free;
  end;
end;

function Tview_SetupConnDB.ValidadeData: boolean;
begin
  Result := False;
  if driverID.ItemIndex = -1 then
  begin
    Application.MessageBox('Informe o Driver ID!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if server.Text = '' then
  begin
    Application.MessageBox('Informe o servidor!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if StrToIntDef(porta.EditText, 0) = 0 then
  begin
    Application.MessageBox('Informe a porta de conexão!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if database.Text = '' then
  begin
    Application.MessageBox('Informe o banco de dados!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;

  Result := True;
end;

end.
