unit Data.Module;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, Vcl.ImgList, Vcl.Controls, cxImageList, cxGraphics, FireDAC.UI.Intf,
  FireDAC.VCLUI.Error, FireDAC.Stan.Error, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Login, FireDAC.Comp.UI, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, Data.DB, FireDAC.Comp.Client, Dialogs, FireDAC.FMXUI.Error;

type
  Tdm = class(TDataModule)
    imageList32_32: TcxImageList;
    imageList16_16: TcxImageList;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    FDConnectionMySQL: TFDConnection;
    FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink;
    procedure FDConnectionMySQLAfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Global.Parametros;

{$R *.dfm}

procedure Tdm.FDConnectionMySQLAfterConnect(Sender: TObject);
begin
  Global.Parametros.pUser_Name := FDConnectionMySQL.Params.UserName;
  Global.Parametros.pPassword := FDConnectionMySQL.Params.Password;
  Global.Parametros.pPort := '3306';
end;

end.
