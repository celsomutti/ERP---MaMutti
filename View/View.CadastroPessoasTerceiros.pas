unit View.CadastroPessoasTerceiros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  cxTextEdit, cxMaskEdit, cxDBEdit, cxGroupBox, cxRadioGroup, cxDropDownEdit, cxImageComboBox, cxButtonEdit, System.Actions,
  Vcl.ActnList, cxCalendar, dxBar, dxBarDBNav;

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
  private
    { Private declarations }
    procedure LayoutPhysicalPerson;
    procedure LayoutLegalPerson;
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

procedure Tview_CadastroPessoasTerceiros.LayoutLegalPerson;
begin
  dxLayoutItem3.CaptionOptions.Text := 'CNPJ:';
  cpfCnpj.Properties.EditMask := '###\.###\.###\####-##;1;';
  dxLayoutItem5.CaptionOptions.Text := 'Razão Social:';
  actionPesquisaCNPJ.Enabled := True;
  dxLayoutItem6.CaptionOptions.Text := 'Nome Fantasia:';
  dxLayoutGroup4.MakeVisible;
end;

procedure Tview_CadastroPessoasTerceiros.LayoutPhysicalPerson;
begin
  dxLayoutItem3.CaptionOptions.Text := 'CPF:';
  cpfCnpj.Properties.EditMask := '###\.###\.###\-##;1;';
  dxLayoutItem5.CaptionOptions.Text := 'Nome:';
  actionPesquisaCNPJ.Enabled := False;
  dxLayoutItem6.CaptionOptions.Text := 'Alias:';
  dxLayoutGroup3.MakeVisible;
end;

end.
