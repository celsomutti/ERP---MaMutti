unit View.CadastroPessoasTerceiros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  cxTextEdit, cxMaskEdit, cxDBEdit, cxGroupBox, cxRadioGroup, cxDropDownEdit, cxImageComboBox, cxButtonEdit, System.Actions,
  Vcl.ActnList, cxCalendar, dxBar, dxBarDBNav, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxBarEditItem, cxTrackBar;

type
  Tview_CadastroPessoasTerceiros = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    labelTitle: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    id: TcxDBMaskEdit;
    dxLayoutItem2: TdxLayoutItem;
    tipoPessoa: TcxDBImageComboBox;
    dxLayoutItem4: TdxLayoutItem;
    nome: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cpfCnpj: TcxDBButtonEdit;
    dxLayoutItem3: TdxLayoutItem;
    actionListCadastro: TActionList;
    actionFechar: TAction;
    actionPesquisaCNPJ: TAction;
    aliasFantasia: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    rg: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    expedidor: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    emissaoRG: TcxDBDateEdit;
    dxLayoutItem9: TdxLayoutItem;
    ufRg: TcxDBComboBox;
    dxLayoutItem10: TdxLayoutItem;
    nascimento: TcxDBDateEdit;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    nomePai: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    nomeMae: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    nacionalidade: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    naturalidade: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    ufNaturalidade: TcxDBComboBox;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    segurancaCnh: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    numeroCNH: TcxDBTextEdit;
    dxLayoutItem18: TdxLayoutItem;
    registroCnh: TcxDBTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    categoriaCNH: TcxDBTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    validadeCnh: TcxDBDateEdit;
    dxLayoutItem21: TdxLayoutItem;
    emissaoCnh: TcxDBDateEdit;
    dxLayoutItem22: TdxLayoutItem;
    primeiraCnh: TcxDBDateEdit;
    dxLayoutItem23: TdxLayoutItem;
    ufCnh: TcxDBComboBox;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    crt: TcxDBImageComboBox;
    dxLayoutItem25: TdxLayoutItem;
    cnae: TcxDBTextEdit;
    dxLayoutItem26: TdxLayoutItem;
    dxBarManager1: TdxBarManager;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    tipoEndereco: TcxDBComboBox;
    dxLayoutItem27: TdxLayoutItem;
    cepEndereco: TcxDBMaskEdit;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutGroup16: TdxLayoutGroup;
    gridContatosDBTableView1: TcxGridDBTableView;
    gridContatosLevel1: TcxGridLevel;
    gridContatos: TcxGrid;
    dxLayoutItem29: TdxLayoutItem;
    endereco: TcxDBTextEdit;
    dxLayoutItem30: TdxLayoutItem;
    numeroEndereco: TcxDBTextEdit;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutGroup17: TdxLayoutGroup;
    complementoEndereco: TcxDBTextEdit;
    dxLayoutItem32: TdxLayoutItem;
    bairroEndereco: TcxDBTextEdit;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutGroup19: TdxLayoutGroup;
    cidadeEndereco: TcxDBTextEdit;
    dxLayoutItem34: TdxLayoutItem;
    ufEndereco: TcxDBComboBox;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutGroup20: TdxLayoutGroup;
    numIE: TcxDBTextEdit;
    dxLayoutItem36: TdxLayoutItem;
    numIM: TcxDBTextEdit;
    dxLayoutItem37: TdxLayoutItem;
    numIEST: TcxDBTextEdit;
    dxLayoutItem38: TdxLayoutItem;
    memTableContatos: TFDMemTable;
    memTableContatosid_cadastro: TIntegerField;
    memTableContatoscod_tipo_cadastro: TIntegerField;
    memTableContatosseq_contato: TIntegerField;
    memTableContatosdes_contato: TStringField;
    memTableContatosdes_telefone: TStringField;
    memTableContatosdes_email: TStringField;
    dsContatos: TDataSource;
    gridContatosDBTableView1des_contato: TcxGridDBColumn;
    gridContatosDBTableView1des_telefone: TcxGridDBColumn;
    gridContatosDBTableView1des_email: TcxGridDBColumn;
    dxBarContainerItem1: TdxBarContainerItem;
    cxBarEditItem1: TcxBarEditItem;
    dxBarLargeButton4: TdxBarLargeButton;
    actionLocalizar: TAction;
    dxBarButton3: TdxBarButton;
    cxBarEditItem2: TcxBarEditItem;
    cxBarEditItem3: TcxBarEditItem;
    cxBarEditItem4: TcxBarEditItem;
    cxBarEditItem5: TcxBarEditItem;
    procedure tipoPessoaPropertiesChange(Sender: TObject);
    procedure actionFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure LayoutPhysicalPerson;
    procedure LayoutLegalPerson;
    procedure StartForm;
  public
    { Public declarations }
  end;

var
  view_CadastroPessoasTerceiros: Tview_CadastroPessoasTerceiros;

implementation

{$R *.dfm}

uses Data.Module;

{ Tview_CadastroPessoasTerceiros }

{ Tview_CadastroPessoasTerceiros }

procedure Tview_CadastroPessoasTerceiros.actionFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_CadastroPessoasTerceiros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_CadastroPessoasTerceiros := nil;
end;

procedure Tview_CadastroPessoasTerceiros.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_CadastroPessoasTerceiros.LayoutLegalPerson;
begin
  dxLayoutItem3.CaptionOptions.Text := 'CNPJ:';
  cpfCnpj.Properties.EditMask := '###\.###\.###\####-##;1;';
  dxLayoutItem5.CaptionOptions.Text := 'Razão Social:';
  actionPesquisaCNPJ.Enabled := True;
  dxLayoutItem6.CaptionOptions.Text := 'Nome Fantasia:';
  dxLayoutGroup4.MakeVisible;
  dxLayoutGroup20.Visible := True;
end;

procedure Tview_CadastroPessoasTerceiros.LayoutPhysicalPerson;
begin
  dxLayoutItem3.CaptionOptions.Text := 'CPF:';
  cpfCnpj.Properties.EditMask := '###\.###\.###\-##;1;';
  dxLayoutItem5.CaptionOptions.Text := 'Nome:';
  actionPesquisaCNPJ.Enabled := False;
  dxLayoutItem6.CaptionOptions.Text := 'Alias:';
  dxLayoutGroup3.MakeVisible;
  dxLayoutGroup20.Visible := False;
end;

procedure Tview_CadastroPessoasTerceiros.StartForm;
begin
  labelTitle.Caption := Self.Caption;
  cxBarEditItem5.Caption := Self.Caption;
  if Self.FormStyle = fsMDIChild then
    Self.BorderStyle:= bsNone;
end;

procedure Tview_CadastroPessoasTerceiros.tipoPessoaPropertiesChange(Sender: TObject);
begin
  case tipoPessoa.EditingValue of
    1 : LayoutPhysicalPerson;
    2 : LayoutLegalPerson;
    else
      Exit;
  end;

end;

end.
