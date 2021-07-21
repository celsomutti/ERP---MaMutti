unit Data.Module;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, Vcl.ImgList, Vcl.Controls, cxImageList, cxGraphics, FireDAC.UI.Intf,
  FireDAC.VCLUI.Error, FireDAC.Stan.Error, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Login, FireDAC.Comp.UI, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, Data.DB, FireDAC.Comp.Client, Dialogs, FireDAC.FMXUI.Error, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, dxSkinsCore, dxSkinsDefaultPainters, cxClasses, cxLookAndFeels, dxSkinsForm,
  cxLookAndFeelPainters, dxAlertWindow;

type
  Tdm = class(TDataModule)
    imageList32_32: TcxImageList;
    imageList16_16: TcxImageList;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    FDConnectionMySQL: TFDConnection;
    FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink;
    mtbClientesEmpresa: TFDMemTable;
    mtbClientesEmpresadom_check: TIntegerField;
    mtbClientesEmpresacod_cliente: TIntegerField;
    mtbClientesEmpresanom_cliente: TStringField;
    SaveDialog: TSaveDialog;
    mtbRoteirosExpressas: TFDMemTable;
    mtbRoteirosExpressasid_roteiro: TIntegerField;
    mtbRoteirosExpressascod_ccep5: TStringField;
    mtbRoteirosExpressasdes_roteiro: TStringField;
    mtbRoteirosExpressasnum_cep_inicial: TStringField;
    mtbRoteirosExpressasnum_cep_final: TStringField;
    mtbRoteirosExpressasdes_prazo: TStringField;
    mtbRoteirosExpressasdom_zona: TStringField;
    mtbRoteirosExpressascod_tipo: TIntegerField;
    mtbRoteirosExpressasdes_logradouro: TStringField;
    mtbRoteirosExpressasdes_bairro: TStringField;
    mtbRoteirosExpressascod_cliente: TIntegerField;
    mtbRoteirosExpressascod_leve: TIntegerField;
    mtbRoteirosExpressascod_pesado: TIntegerField;
    mtbRoteirosExpressasdom_check: TSmallintField;
    AlertWindowManager: TdxAlertWindowManager;
    procedure FDConnectionMySQLAfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PopulaClientesEmpresa;
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
end;

procedure Tdm.PopulaClientesEmpresa;
begin
  if mtbClientesEmpresa.Active then mtbClientesEmpresa.Close;
  mtbClientesEmpresa.Open;
  mtbClientesEmpresa.Insert;
  mtbClientesEmpresadom_check.AsInteger := 0;
  mtbClientesEmpresacod_cliente.AsInteger := 1;
  mtbClientesEmpresanom_cliente.AsString := 'TRANSFOLHA';
  mtbClientesEmpresa.Post;
  mtbClientesEmpresa.Insert;
  mtbClientesEmpresadom_check.AsInteger := 0;
  mtbClientesEmpresacod_cliente.AsInteger := 2;
  mtbClientesEmpresanom_cliente.AsString := 'CARRIERS';
  mtbClientesEmpresa.Post;
  mtbClientesEmpresa.Insert;
  mtbClientesEmpresadom_check.AsInteger := 0;
  mtbClientesEmpresacod_cliente.AsInteger := 3;
  mtbClientesEmpresanom_cliente.AsString := 'SPLOG';
  mtbClientesEmpresa.Post;
  mtbClientesEmpresa.Insert;
  mtbClientesEmpresadom_check.AsInteger := 0;
  mtbClientesEmpresacod_cliente.AsInteger := 4;
  mtbClientesEmpresanom_cliente.AsString := 'DIRECT';
  mtbClientesEmpresa.Post;
  mtbClientesEmpresa.Insert;
  mtbClientesEmpresadom_check.AsInteger := 0;
  mtbClientesEmpresacod_cliente.AsInteger := 5;
  mtbClientesEmpresanom_cliente.AsString := 'RODOÊ';
  mtbClientesEmpresa.Post;
  mtbClientesEmpresa.First;
end;

end.
