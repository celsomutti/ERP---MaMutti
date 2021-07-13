object view_Main: Tview_Main
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 461
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object splitViewMain: TSplitView
    Left = 0
    Top = 0
    Width = 35
    Height = 432
    BevelEdges = []
    CloseStyle = svcCompact
    CompactWidth = 35
    Opened = False
    OpenedWidth = 120
    Placement = svpLeft
    TabOrder = 0
    ExplicitHeight = 461
    object buttonMenu: TcxButton
      Left = 0
      Top = 0
      Width = 35
      Height = 36
      Cursor = crHandPoint
      Align = alTop
      Action = actionMenu
      OptionsImage.Margin = 0
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 0
      ExplicitWidth = 40
    end
    object buttonCadastro: TcxButton
      Left = 0
      Top = 36
      Width = 35
      Height = 36
      Cursor = crHandPoint
      Align = alTop
      Action = actionCadastro
      OptionsImage.Margin = 0
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
      ExplicitWidth = 40
    end
    object buttonExpressas: TcxButton
      Left = 0
      Top = 72
      Width = 35
      Height = 36
      Cursor = crHandPoint
      Align = alTop
      Action = actionExpressas
      OptionsImage.Margin = 0
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 2
      ExplicitWidth = 40
    end
    object buttonPeriodico: TcxButton
      Left = 0
      Top = 108
      Width = 35
      Height = 36
      Cursor = crHandPoint
      Align = alTop
      Action = actionPeriodicos
      OptionsImage.Margin = 0
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 3
      ExplicitWidth = 40
    end
    object buttonServicos: TcxButton
      Left = 0
      Top = 144
      Width = 35
      Height = 36
      Cursor = crHandPoint
      Align = alTop
      Action = actionServicos
      OptionsImage.Margin = 0
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 4
      ExplicitWidth = 40
    end
    object buttonTransportes: TcxButton
      Left = 0
      Top = 180
      Width = 35
      Height = 36
      Cursor = crHandPoint
      Align = alTop
      Action = actionTransporte
      OptionsImage.Margin = 0
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 5
      ExplicitWidth = 40
    end
    object buttonFinanceiro: TcxButton
      Left = 0
      Top = 216
      Width = 35
      Height = 36
      Cursor = crHandPoint
      Align = alTop
      Action = actionFinanceiro
      OptionsImage.Margin = 0
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 6
      ExplicitWidth = 40
    end
    object buttonSistema: TcxButton
      Left = 0
      Top = 252
      Width = 35
      Height = 36
      Cursor = crHandPoint
      Align = alTop
      Action = actionConfiguracoes
      OptionsImage.Margin = 0
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 7
      ExplicitWidth = 40
    end
    object buttonSair: TcxButton
      Left = 0
      Top = 396
      Width = 35
      Height = 36
      Cursor = crHandPoint
      Align = alBottom
      Action = actionSair
      OptionsImage.Margin = 0
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 8
      ExplicitTop = 425
      ExplicitWidth = 40
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 432
    Width = 757
    Height = 29
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Bevel = dxpbNone
        Fixed = False
      end
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.Container = dxStatusBar1Container1
        Bevel = dxpbNone
        MinWidth = 100
        Width = 100
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Color = clWhite
    object dxStatusBar1Container1: TdxStatusBarContainerControl
      Left = 639
      Top = 2
      Width = 102
      Height = 27
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 102
        Height = 27
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel1'
        Color = clWhite
        ParentBackground = False
        ShowCaption = False
        TabOrder = 0
        ExplicitLeft = 16
        ExplicitTop = 3
        ExplicitWidth = 225
        ExplicitHeight = 54
        object cxButton1: TcxButton
          Left = 69
          Top = 0
          Width = 33
          Height = 27
          Cursor = crHandPoint
          Align = alRight
          Action = actionSistemaProximaTela
          OptionsImage.ImageIndex = 36
          OptionsImage.Images = dm.imageList16_16
          PaintStyle = bpsGlyph
          TabOrder = 0
          ExplicitLeft = 64
          ExplicitTop = 1
          ExplicitHeight = 21
        end
        object cxButton2: TcxButton
          Left = 37
          Top = 0
          Width = 32
          Height = 27
          Cursor = crHandPoint
          Align = alRight
          Action = actionSistemaTelaAnterior
          OptionsImage.ImageIndex = 35
          OptionsImage.Images = dm.imageList16_16
          PaintStyle = bpsGlyph
          TabOrder = 1
          ExplicitLeft = 1
          ExplicitTop = 8
          ExplicitHeight = 22
        end
      end
    end
  end
  object actionListMain: TActionList
    Images = imageListMain32_32
    Left = 680
    Top = 40
    object actionMenu: TAction
      Category = 'Main'
      Caption = 'Menu'
      Hint = 'Abrir / Fechar Menu'
      ImageIndex = 0
      ShortCut = 16461
      OnExecute = actionMenuExecute
    end
    object actionCadastro: TAction
      Tag = 10
      Category = 'Main'
      Caption = '&Cadastro'
      Hint = 'Cadastro'
      ImageIndex = 1
      OnExecute = actionCadastroExecute
    end
    object actionCadastroEmpresas: TAction
      Tag = 101010
      Category = 'Cadastro'
      Caption = '&Empresas'
    end
    object actionExpressas: TAction
      Tag = 20
      Category = 'Main'
      Caption = '&Expressas'
      Hint = 'Expressas'
      ImageIndex = 2
      OnExecute = actionExpressasExecute
    end
    object actionExpressasImportacaoEDI: TAction
      Tag = 201010
      Category = 'Expressas'
      Caption = 'Importa'#231#227'o de &EDI'
      Hint = 'Importa'#231#227'o de pedidos e baixas'
    end
    object actionPeriodicos: TAction
      Tag = 30
      Category = 'Main'
      Caption = '&Peri'#243'dicos'
      Hint = 'Peri'#243'dicos'
      ImageIndex = 3
      OnExecute = actionPeriodicosExecute
    end
    object actionServicos: TAction
      Tag = 40
      Category = 'Main'
      Caption = '&Servi'#231'os'
      Hint = 'Servi'#231'os'
      ImageIndex = 4
      OnExecute = actionServicosExecute
    end
    object actionTransporte: TAction
      Tag = 50
      Category = 'Main'
      Caption = '&Transporte'
      Hint = 'Transportes'
      ImageIndex = 5
      OnExecute = actionTransporteExecute
    end
    object actionFinanceiro: TAction
      Tag = 60
      Category = 'Main'
      Caption = '&Financeiro'
      Hint = 'Financeiro'
      ImageIndex = 6
      OnExecute = actionFinanceiroExecute
    end
    object actionConfiguracoes: TAction
      Tag = 70
      Category = 'Main'
      Caption = 'Configura'#231#245'es'
      Hint = 'Sistema'
      ImageIndex = 7
      OnExecute = actionConfiguracoesExecute
    end
    object actionSair: TAction
      Category = 'Main'
      Caption = 'Sair'
      Hint = 'Sair do Sistema'
      ImageIndex = 8
      OnExecute = actionSairExecute
    end
    object actionCadastroClientes: TAction
      Tag = 101040
      Category = 'Cadastro'
      Caption = 'C&lientes'
      Hint = 'Caastro de Clientes'
    end
    object actionCadastroFornecedores: TAction
      Tag = 601020
      Category = 'Cadastro'
      Caption = '&Fornecedores'
      Hint = 'Cadastro de Fornecedores'
    end
    object actionCadastroPessoas: TAction
      Tag = 101030
      Category = 'Cadastro'
      Caption = '&Pessoas'
      Hint = 'Cadastro de pessoas'
    end
    object actionCadastroCandidatos: TAction
      Tag = 101060
      Category = 'Cadastro'
      Caption = 'Ca&ndidatos'
      Hint = 'Cadastro de Candidatos'
    end
    object actionCadastroFuncionarios: TAction
      Tag = 101070
      Category = 'Cadastro'
      Caption = 'F&uncion'#225'rios'
      Hint = 'Cadastro de Funcion'#225'rios'
    end
    object actionCadastroEmbarcadores: TAction
      Tag = 202050
      Category = 'Cadastro'
      Caption = 'E&mbarcadores'
      Hint = 'Cadastro de Embarcadores'
    end
    object actionCadastroDistribuidores: TAction
      Tag = 101020
      Category = 'Cadastro'
      Caption = 'Distri&buidores'
      Hint = 'Cadastro de Distribuidores (Bases)'
    end
    object actionCadastroEntregadores: TAction
      Tag = 101050
      Category = 'Cadastro'
      Caption = 'Entre&gadores'
      Hint = 'Cadastro de Entergadores'
    end
    object actionCadastroVeiculos: TAction
      Tag = 501040
      Category = 'Cadastro'
      Caption = '&Ve'#237'culos'
      Hint = 'Cadastro de Ve'#237'culos'
    end
    object actionExpressasBIPedidos: TAction
      Tag = 201040
      Category = 'Expressas'
      Caption = '&BI de Pedidos'
      Hint = 'Consulta de pedidos importados'
    end
    object actionExpressasAcareacoes: TAction
      Tag = 201050
      Category = 'Expressas'
      Caption = '&Acarea'#231#245'es'
      Hint = 'Cadastro e controle de Acarea'#231#245'es'
    end
    object actionExpressasExtravios: TAction
      Tag = 201060
      Category = 'Expressas'
      Caption = 'Ex&travios'
      Hint = 'Cadastro e controle de Extravios'
    end
    object actionExpressasRecepcaoPedidos: TAction
      Tag = 202060
      Category = 'Expressas'
      Caption = 'Recep'#231#227'&o de Pedidos'
      Hint = 'Controle de Rep'#231#227'o de pedidos'
    end
    object actionExpressasControleExpressas: TAction
      Tag = 202040
      Category = 'Expressas'
      Caption = 'Controle de Expre&ssas'
      Hint = 'Controle de Expressas'
    end
    object actionExpressasExpedicao: TAction
      Tag = 202070
      Category = 'Expressas'
      Caption = 'Exped&i'#231#227'o'
      Hint = 'Expedi'#231#227'o de expressas'
    end
    object actionExpressasRoteiros: TAction
      Tag = 202080
      Category = 'Expressas'
      Caption = 'R&oteiros'
      Hint = 'Cadastro de roteiros'
    end
    object actionExpressasExtratos: TAction
      Tag = 203010
      Category = 'Expressas'
      Caption = 'Ext&ratos'
      Hint = 'Extratos de Expressas'
    end
    object actionExpressasVerbas: TAction
      Tag = 204010
      Category = 'Expressas'
      Caption = '&Verbas'
      Hint = 'Cadastro de verbas de expressas'
    end
    object actionPeriodicosImportacaoTiragem: TAction
      Tag = 301010
      Category = 'Peri'#243'dicos'
      Caption = '&Tiragem'
      Hint = 'Importa'#231#227'o de tiragem de jornal'
    end
    object actionPeriodicosImportacaoEtiquetas: TAction
      Tag = 302010
      Category = 'Peri'#243'dicos'
      Caption = 'E&tiquetas'
      Hint = 'Importa'#231#227'o e impress'#227'o de etiquetas de revistas'
    end
    object actionPeriodicosOcorrencias: TAction
      Tag = 301030
      Category = 'Peri'#243'dicos'
      Caption = '&Ocorr'#234'ncias'
      Hint = 'Registro e controle de Ocorr'#234'ncias de jornal'
    end
    object actionPeriodicosRecados: TAction
      Tag = 303020
      Category = 'Peri'#243'dicos'
      Caption = '&Recados'
      Hint = 'Emiss'#227'o de recados aos entregadores'
    end
    object actionPeriodicosAtribuicao: TAction
      Tag = 303040
      Category = 'Peri'#243'dicos'
      Caption = '&Atribui'#231#245'es'
      Hint = 'Gera'#231#227'o de impress'#227'o de atribui'#231#245'es de entregas de revistas'
    end
    object actionServicosCadastroServicos: TAction
      Tag = 401010
      Category = 'Servi'#231'os'
      Caption = '&Servi'#231'os'
      Hint = 'Cadastro de tipos de servi'#231'os'
    end
    object actionServicosOS: TAction
      Tag = 401020
      Category = 'Servi'#231'os'
      Caption = '&Ordens de Servi'#231'os'
      Hint = 'Cadastro de Ordens de Servi'#231'os'
    end
    object actionTransportesViagens: TAction
      Tag = 501020
      Category = 'Transportes'
      Caption = '&Viagens'
      Hint = 'Controle de Viagens'
    end
    object actionTransportesManutencao: TAction
      Tag = 501030
      Category = 'Transportes'
      Caption = '&Manuten'#231#227'o'
      Hint = 'Controle e registro de manuten'#231#245'es de ve'#237'culos'
    end
    object actionTransportesInsumos: TAction
      Tag = 502010
      Category = 'Transportes'
      Caption = '&Insumos'
      Hint = 'Cadastro de tipos de insumos de transportes'
    end
    object actionTransportesAbastecimentos: TAction
      Tag = 502020
      Category = 'Transportes'
      Caption = '&Abastecimentos'
      Hint = 'Controle de abastecimentos'
    end
    object actionTransportesEstoquesInsumos: TAction
      Tag = 502030
      Category = 'Transportes'
      Caption = '&Estoques'
      Hint = 'Estoques de insumos de transportes'
    end
    object actionFinanceiroCentroCusto: TAction
      Tag = 601030
      Category = 'Financeiro'
      Caption = '&Centro de Custo'
      Hint = 'Cadastro de centros de custo'
    end
    object actionFinanceiroCreditoDebito: TAction
      Tag = 601040
      Category = 'Financeiro'
      Caption = 'Cr'#233'ditos e D'#233'bitos'
      Hint = 'Cadastro de cr'#233'ditos e d'#233'b]itos'
    end
    object actionFinanceiroContasReceber: TAction
      Tag = 601050
      Category = 'Financeiro'
      Caption = 'Contas a &Receber'
      Hint = 'Controle de contas a receber'
    end
    object actionFinanceiroContasPagar: TAction
      Tag = 601060
      Category = 'Financeiro'
      Caption = 'Contas a &Pagar'
      Hint = 'Controle de contas a pagar'
    end
    object actionFinanceiroCaixaPequeno: TAction
      Tag = 601070
      Category = 'Financeiro'
      Caption = 'Cai&xa Pequeno'
      Hint = 'Controle de caixa pequeno'
    end
    object actionFinanceiroPlanilhaFinanceira: TAction
      Tag = 601080
      Category = 'Financeiro'
      Caption = 'P&lanilha de Financeira'
      Hint = 'Emiss'#231#227'o de planilha financeira'
    end
    object actionSistemaUsuarios: TAction
      Tag = 701010
      Category = 'Sistema'
      Caption = '&Usu'#225'rios'
      Hint = 'Cadastro de usu'#225'rios'
      OnExecute = actionSistemaUsuariosExecute
    end
    object actionSistemaSenha: TAction
      Tag = 701020
      Category = 'Sistema'
      Caption = 'Senh&a'
      Hint = 'Alterar a senha'
      OnExecute = actionSistemaSenhaExecute
    end
    object actionSistemaAbrangenciaExpressas: TAction
      Tag = 702010
      Category = 'Sistema'
      Caption = '&Abrang'#234'ncia Expressas'
      Hint = 'Cadastro de abrang'#234'ncia de expressas'
      OnExecute = actionSistemaAbrangenciaExpressasExecute
    end
    object actionSistemaBancos: TAction
      Category = 'Sistema'
      Caption = '&Bancos'
      Hint = 'Cadastro de Bancos'
      OnExecute = actionSistemaBancosExecute
    end
    object actionSistemaPeriodosExtratos: TAction
      Category = 'Sistema'
      Caption = '&Per'#237'odos'
      Hint = 'Configura'#231#227'o dos per'#237'odos de extrato'
      OnExecute = actionSistemaPeriodosExtratosExecute
    end
    object actionSistemaProximaTela: TAction
      Category = 'Sistema'
      Caption = 'Pr'#243'xima'
      Hint = 'Pr'#243'xima tela'
      ShortCut = 16505
      OnExecute = actionSistemaProximaTelaExecute
    end
    object actionSistemaTelaAnterior: TAction
      Category = 'Sistema'
      Caption = 'Anterior'
      Hint = 'Tela anterior'
      ShortCut = 16504
      OnExecute = actionSistemaTelaAnteriorExecute
    end
  end
  object popupMenuCadastrado: TPopupMenu
    AutoPopup = False
    Left = 392
    Top = 16
    object menuCadastroEmpresas: TMenuItem
      Action = actionCadastroEmpresas
      SubMenuImages = dm.imageList16_16
      ImageIndex = 0
    end
    object menuCadastroClientes: TMenuItem
      Action = actionCadastroClientes
    end
    object menuCadastroFornecedores: TMenuItem
      Action = actionCadastroFornecedores
    end
    object menuCadastroContratados: TMenuItem
      Action = actionCadastroPessoas
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object menuCadastroCandidatos: TMenuItem
      Action = actionCadastroCandidatos
    end
    object menuCadastroFuncionrios: TMenuItem
      Action = actionCadastroFuncionarios
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object menuCadastroEmbarcadores: TMenuItem
      Action = actionCadastroEmbarcadores
    end
    object menuCadastroBases: TMenuItem
      Action = actionCadastroDistribuidores
    end
    object menuCadastroEntregadores: TMenuItem
      Action = actionCadastroEntregadores
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object menuCadastroVeiculos: TMenuItem
      Action = actionCadastroVeiculos
    end
  end
  object popupMenuExpressas: TPopupMenu
    AutoPopup = False
    Left = 456
    Top = 16
    object menuExpressasImportaodePedidos: TMenuItem
      Action = actionExpressasImportacaoEDI
    end
    object menuExpressasBIdePedidos: TMenuItem
      Action = actionExpressasBIPedidos
    end
    object menuExpressasAcareaes: TMenuItem
      Action = actionExpressasAcareacoes
    end
    object menuExpressasExtravios: TMenuItem
      Action = actionExpressasExtravios
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object menuExpressasRecepodePedidos: TMenuItem
      Action = actionExpressasRecepcaoPedidos
    end
    object menuExpressasControledeExpressas: TMenuItem
      Action = actionExpressasControleExpressas
    end
    object menuExpressasExpedicao: TMenuItem
      Action = actionExpressasExpedicao
    end
    object menuExpressasRoteiros: TMenuItem
      Action = actionExpressasRoteiros
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object menuExpressasExtratos: TMenuItem
      Action = actionExpressasExtratos
    end
    object menuExpressasVerbas: TMenuItem
      Action = actionExpressasVerbas
    end
  end
  object imageListMain32_32: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 6292136
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000001D744558745469746C650053707265616473686565743B
          53686F7744657461696C3B2E1479040000046449444154785EAD965188D5D516
          C67FEBFC67C6D1FB20F72D82A0A7202C2E218404EA94D7C04AB2AE8925781FA2
          878A0835A1AC1EA217B5C2A4C0A408BC0885654CF5506939463D44D08B4165D4
          A051A6998C84A867CE7FAF2F8AB5591C380FD7193F586760AD7DCEFAD65ADFDA
          B38DC118E4D7C07333870086E887853540277C0E9401243A613603221EA62180
          2776DD82045B1F3A04D0BCB06FD5C14E634B01BCE8D34D6BC66F057A1B762C46
          2E5EDCF4B9019D6DBB270E76CCC6C0900406888440083084AA03773FBCE5E17F
          2F07CA104069C56D2B16B095430634277E9D5AFAD4032F73B13DC3B6D79E5E1A
          1D69EFB8FD3A8D8F1F21D0316C6CE3FD4BB8546C7FE5F018D0A9046CFB23136C
          67A2B67EA8B4CEB1A90F3973EE074AEB7554EDB26B76D51A0D3097704171C704
          A2228EE56988F85063B89CF0DA503069D218694BC1BD5054688B03CC89A425CC
          01C333A50C14C94C4208DC0010C29407250158AD6CE8F97D771E689A4EED25DF
          1F3D49F142297F99B363FF5DA709B43DFF6CF3DA775700720910F1074C20C353
          95E1B6D402E041BC1268267F3CB564CDEA314687E7228C450B9D537F7C07C07F
          EF5BCEFC7957833BDD7281975EFDDFE23A92524A263110061256BB81C8CF14A4
          7B7F07AC143179FA2B1A6B98333CCA503342D369003871F628C7CF1CA1DBBB40
          EB5E35610052249290E50CE4993ADD110624EFEB801F9B3CFDC94FC77F5F8640
          12575CF94F6EBA753E187CFEC114277E9E42000EA5F8A1D08109F1C6F857A9B2
          0452782D3A14D9533AD981DE47AF4FAE048683D0E8FA2D37FCE2724CD0BAF3F1
          9E635701178116980E028D1CEE5DB5905EEB5161954125212CE7810C469A0ECF
          EE3C404527AAE902E7C3BAAD3B922872BC38113F17D60D22C845C810392070C2
          57C721D56B0F9C10618EB10368DDE3FFF220D202C58BE35E901C2F02686B6CF5
          86050562229155A2D240410C408A58D50950C71CB00E4029CEDAC7AEAF47DBDE
          749938FCFE5926DE9D62BA5B26801EA0BB1FBD56A53801930B09D42F48481250
          C9C9F08CF58990379FFB9A8003DDFD3BBF59098C84AF1773D73B3BBF2560009E
          95C68219901566D586E54AE2FD175122E22504D7ADBE30A71F2614514328F79E
          80F2A4072152030C224026C292C060B88BBDFBBF8C4379F103547266A09A5C06
          2624B20392188CC189CD8C24E0ACFBCF8D74A74B7FD50642037F6974A4E1C9AD
          EF65079811528420BCD62F120A2E7D548CD469AEE1A5C20878AE19522A400E0A
          A743C6530397A903124056955AC8B6BB21CBE42491D912E8BF70B2ED46E590CE
          D4467E0F9B25811C81C89C597D2A200248790F046CD623D8F3D617E47B34A8A8
          2607AB6B97409A7507F2265C7FCF22CE5F6CA9102211B4943B306F7498CDCFBC
          7D59D730930A64E44AE280E5383098E51A267296B98AA85FE5310EC54354F9BD
          CBB786B90015E1CB777AC62B89CB444051697FC5A8FF26AC7123FD62D6049404
          E01F7387F32996C84C0CDC02CD9440E5DF9E3AF9DBC4FA0777DFCC25A2945E7D
          E468A61D7060FABDBD1BEB63B68AD9FE0FE29E8F1CFC4F44AA1A3DE949F97900
          00000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001C744558745469746C65005465616D3B50656F706C653B47726F7570
          3B55736572937B60490000089549444154785EE596798C5D551DC73FF7DDB7CF
          9BCEFA66EB6C6DA7D396ADCB60B55A50084B4B2D145C82261844310A31460984
          188D8D1A8D09891AF748C410051411810A8281D2D28DB6D376DA326D677D336F
          DE9B7D7BEB5DCEE2F3659A8C6D64E02FFFF026DF9CDF4BCEF77C3FE79CFCEEBB
          86D69AFFE5E301FEBF018CDDBB775F66D86EBE56A635DB95521F964A6F9452B7
          29A9EA0A639F2BD51BD2553FEDACBAB37BD17C80253DAED4DDA76BEE62F1E3BD
          34FC66FD8FA8247830D2B87675A02C4A596B0781D26AB416CC0D75B78D9F7FBB
          6DA4E79DCF34F73F75434D89D9A99546D497470DEFD29E743A75033574BEEB15
          6473EE1722AD1DAB5BB67E0A3B97C51F0A61CF2799397F989193FB99880DE23A
          BA747E3EFFA8CFE7C5E7F7BE2F0FF0EE27904A5B9B1B4BAA891D7F8333FBDE64
          6C7088924810379F6762620E470530CBAA585EBF71DD2DBB7F7B17C0C9A7BFB7
          ABBC752D53F11843BDC34C0C3F412864163D89A11166A767B02D9B74C6A95BB2
          0BE652B67F3C3ECC913D7FA5FDC69D4CCD66387AA093F8AC07CA5712A96E2064
          58945BBD8D07BFB5F5577B1F5AFFDCD4B1BF6D3AF7C22F39F3EAB3ACDABA1D5F
          4D3BC78F9C66FFEB07E9EF1F219553CC659C02803DB3E409CCCEDBB1BED3A731
          0365B45EB391B68E6B716D456E7C80C4C13D68C7A271E307304A2ACBC275ABF0
          9556921E1DF44DF67432FC4E17479F7C8C1BBFFA5DD66DF92053A75FC230431C
          DD7B8263074FE02ADD5DBA14C04C5AEC49A5071EBCF2DA4D842361028100DA8C
          30BCF74F042BAAA85CB99A81F3FD6CBAA10389412679A1003084959E23100AC2
          D414879E7E9CBBBEF9033CB5D5E08DA094008F69D986FFB925AFE054C986BDE1
          EAFA3FF8037EEDD112296C949D2576F60CA1F24AE2A78E3372B68BD8813DCCF5
          9F209DEC273516673619676A68183B9B67A4F702CA4AA39546B92ED9544657B7
          34FF2C59B7A17BC92B98989870DFA8AC7AB83693EF981AEC5B57551F45BA9AA9
          C959DC6C9673A77A30AA9A39D3D945F9B25E502EE9548EB9F91CD2B5D11808C3
          C09919013C4C244699CFDABD6FE596FF7C6E6EDACED7BE88100A25254ACBCB4F
          60E7CE9D056837139FCE3FDF7D602FD9A1932857200890880D336F79D87CC72E
          2A377C94AE8114874E26E9EC9DA56F5231939364F292AAFA3AA42B50CA28009F
          632C6FBC28A59CEBECEC94B6E5E03A0E8E5B90232E0700482693F69B93D65FCE
          2427E4F143E7480C8F6284CB191A1C2512ADA5B1B981EB6FBF957BBFFD30F73C
          743F77DF7B3BB7EEBA89D9AC87BCA35956D742BC6F90C3AF1FA26B745C1E7702
          CFC662310B60D76D3BB8E3B66D14211CFB3F010AAF654F41FE6DF7D4AFDD716F
          DDE357DCBCC51CB57D9CEAEA25D4D04E6C789AC6D66622253EC20193DADA721A
          9757515F5B494B6B0395D565389E0065EDEB3974A48BEE911CAABCCCBCEAE6FC
          2FDB3F62AF01821F5BF323D3127671F78EEBE0BD180CF81E79ECA64D350DE16F
          2C2B2DBDB32EDA6C2606FB59B5B90D331F24ADBCE0B1F079C0540ECA92082B83
          9349A195201229A5AA2282B7BE81AAD60A3CEE2A9C4141DFF469DA56B6758442
          9E53D54DE60B9349FBC73BAEFE452760DDFD68541980E7CE2FAD6EF8D0F56B7E
          5D5559B56345433B35D15A525682A1C410DDE72F108F27A9AEA86143DB16CC7D
          3D6CFBE42D04FC26767A86DCF42C4A7BB1A58767FFF83CED0FDCC3D9C43E0663
          0384C3419A5694D1D8544BD01761243EC6F99E01A6C753AFF774E63E7FE6AD7C
          D200FC5F7B6CFD53D76DD9FA89B6E66BC83A5364AD29A4920539B84A2084CD7C
          6E9ACAC055CCBCD2C3FA6861D1E628C2B611AEC0575ACD3B27CF727A32CDC6FB
          6E25CD8505CF14B6C8A395444A8DE90DE037FDC487C6E93CDCFBCCCBBF49DFE7
          05BCCA70B786C23ECE8EBC8ADF0C619A7E500A4BE4B1DC3C592B855002AF1E47
          AFAEE2DCE13E6AEB6BC00CE20B86B02D8BAE93DDD47EFA36326E92E9FC3839BB
          E82986ABA234D2CE61A0092F0BE031D5F580CF0B18AE234A84CE93CACE20B5A6
          D8A314A414BA20211525C128A627845D2E38675AA49F7B8DBA869AE2DCFE9E01
          FAA321A2E536966BE0D8825C3EB3B08646690D5A2217EAA0CF40A32A00D30B68
          C7B153878E1C8D68AF8D2F68E0F39BC5706FC0A42CDC40B4B409AFE1677C629C
          C9B1513EF7D9FB3977F018DD878F235C077F692D6B7D1E8E1EDDC78AD56B6858
          DE46C0AC673637C87426899D73D168ECBC5390C0CE4A00094803301BDB8315D7
          5C57B2DD17A0C3E3D56B0C43B7D457B7F9EA6B56348227987766C9B853B434B4
          521A2E653A91A4A3E60A827983F15882C9D40417D404D12B9A4965E6898F8C11
          2D6FA4A2AC0E216C2B393998484EF4B9D2D5C3C261C0CEEB63E78FB8AFCC24D5
          64F193AC2003F002E62279BFF89DABEE5F561178A47DE5DACA8E2B3B0885FDCC
          A4C6E91B1C24361427319A4008457565194D4DF5AC5AD94420E4233196A0EB54
          0FBD3D89D1F48CF8C5FE3F677E07D8805824F7E30F86F4E26F42166A03301FF8
          E1D50F5EB96EF54F366FD882613AE49C5984B2F16060183E6C37872D2C0C3C08
          E962BB16192B45DEC9E051265E6F18C7929C3ED1C7F933A35FD9FF4CFEF78003
          E8428EFEAF7F4617010C93AFB7B456139F7B1BD313C0347C2825B1854DCE4961
          3B79A45248B9484A2FFA3D8F8197FAE66A067A925F069E025C4003BC1B008047
          49D1E2F39B4CCCCE1483D4C5C595BC58230A52B2582FC0E88B50A8228445D817
          0183E50B591E40BD1700434889655B64F3D6C2CE8A6D89145084901AA18A410B
          C19A42BD085617E79B5A80410060D1EE970450B625DEFAFBCB07AEF3870CBCFE
          82021E4CAF510CD106987EE3E2EE515A175B4D38AA08E2586E41A2283B3B8E14
          1C0204C07B01D08078F2FB03DBB6ECAC6C8C36FA6F328C426B9ABA0D5493D4D2
          40528AA15A945668A98B00FF6EB1C298D65AA3A41E91827EE1D0373620FF39D8
          2546001B50807E2F0012B00FBF3413039E003C8009188067F178A97791E482C4
          C57AE92BB81C42016251907149A87189C75804702910EF0700804B8DEF5F4B7B
          FF05FE0B53014353D0E70000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000017744558745469746C650050726F647563743B50726F64
          756374733B734BCCA4000007AA49444154785EC557696C54D7193D6F3CDEF1BE
          30601B631BDBD86CA1A53445104C4B49933455D4D0A0924AA1813A4D45ABAA49
          8948D246697FA08A74A515519446A51092206883212DFBDA62120AB860C0C6C6
          B18DED198C3DEBF2B6BBF4DECB1B8D5A0B757E2071A5A37BA5FBDD77CE77BE3B
          DF9BA771CE713F871BA90F68620090E072DC3301E7B62C03670C8C7170C24039
          05A31C4CAE29C3F2D7CF6B4E6CE6E66FD62ED976CA7751688900B004C85BDFAA
          E1D466B065BC33FFF8A391D405C864EA1F593B61B3B8F119978CA92ECD9AB4E1
          6B554F3736D76DA85BD852E999F48E1E8CD94707C6CC0FDF3834B2AF75C7A73A
          0053C08EF5FE926F59BF39755725F9C7BF598A8647D7264835009238FDB91595
          D3963497AEAFAEAF5957D134333BB7300FE9B915E8397F06C54580AFBB0F97CF
          F6047C21EB68DFA8F1D71DE7FD270044050C019B8B919203E02C419C266DFEED
          BA998BABCBF37F54D1D8B0DC535FE7D2A021321A40743408779601EFB501F069
          1EE44DAEC3B26FD41585BC232B07AEF6AF6C2C70077C5172F086DFDA79A0377A
          1440FCFF3AE0C05D3F3537F7A7AB663C535E9CFF034FF3ACDAB2AA0AA4B9A51E
          C03F780B15B31783DB51301207B363E0444207A306B88205B10142280EEDF937
          D6BE7DAD8A733E948A03E97B5F5DF0B3F22953BFE799BB28AFA07CCA84200E43
          9145FBDBEE9E892B0D998555B0BC5EF4778F014056AA9730A328D7FDD29C275B
          61C40862E15BA0C484A51B88078388058218B97A0353674CB92B79464125ECA8
          0EEFB993A0BA09CAB8D2949A00050E37BB88FCC21A144D7D10A05158712FE201
          3FC2E37E90480C8CC42610BBB24AA0A5E563BCEB2C48340A663370CA12025CA9
          0A7031C6C019018975894C7AE19EF40032F26681F37E10434781A750D63D499C
          9E0F574E2522FD67614702608482530E452EC09400B8354D4B07C024B8187715
          C055D3210097872D98FE7FC00A5C10B5598CA2DAAFC0E53E0B1EBE06CD9D8BF4
          C206C4863B60DF3C0CAA88996A5E4CCCB6CD60EA0C858519D8D65AB3C305CDE8
          F5E99B5E6FF31E1762549FF8FDCA0A4E6DAE9AD50BFBBD490718B5C0A57246A1
          84503FE2237B9196E14171DD73085C1906B44C44AEFF0D947049A8C899CD412C
          0623CE1011D06D0D8FADF93AEA5B563D30DAF1674CBFEEDD5B96E3BED839AC6F
          7EF3F4D8E1F5BB87A300ACCD8F7A58E2A2788EBC36DFBB70750B38A302EAC100
          973385143769FA3A788FBF08463838A1D272454A4C0A334E1089889900159FFD
          12EA96AC8235D6093BDC87E0F005542F5E83D8ED415C38700A9F9CBE74E5D290
          F1EBF73B827F071014301C0738A86D01929CA97AAA198E20664701E98ECC58EE
          091093211022304D8ECACF2C47F5A2A71471ACAF0D72D8868DA0370CF7951E75
          B676DE0278AAA6CDAAFB67C7DBB5D9BD839D01BAA9AD2BB25309A08C83DBB6CC
          589521E9040197E5B0A28A580A55B61326882908D3B060F51AE44C5E86B1CBDB
          618506C0990D466D04860398F9D84BFFD5BCF28BD331797A31E6B7344D3BF4DE
          A9ADDD03917625405D22DB92D62BE2A400AA5C616644EE39E00A94C8380D59B9
          11D0701BCA66AF405AF63430FD3A400CA45DBE3EA179692E37F4F1DB223E0C7F
          308E6E1D2459028B008C240548322E4028A810C09CBBC11C4039228F10156F8E
          9F007826324BBE2C84640210029CDEC1B906A2EB3003A3CA49F55CA6B6842488
          B52A81E1D89FC894AA3504A8110608071348B8A0C0204BA7C4314A002A321EFC
          00AE8C32B8F31780DA5D020C46C0A784269FCFE1B4054D0A88F6DDD20F661DBF
          F170CD9C7264E7B801953D07A3EA10A8211D50879508A6F6255CEAF226C42A12
          2A050FA2B8EA73186D3F00A28755D68A5CB9E6AC79D281F00F77F43DFBF4174A
          9F5A3A187E6566537169556D013470C051CB8400754F04128DC7D429283430CB
          768452679F0A10303B0E62849DDEA24AE638CA1512EF0B17E7DC06E07BB77DEC
          8F2FEF1E58D176E4665BFB910116B8257B3B01A35439A0B25060B8396CE0C3E3
          E39672C7B2046C50D302536B53AED519EE642E7979D20505C701EE92D307CF37
          B0FE5DCB226351D2F9C661DFF36F1DF3B5B6ED1F1CBA74E1366CC302510F63D0
          7582F67321EC3936DEBDEB4AF8DB9402562C2E49056C394B11124A001854D689
          92722584A1AB278A319D0C000829015406D81437B62F516E9CE889BCFFDA01EF
          C3BB8FFBDEFB68FF2019EC1DC1D0B08E7D07C7CC3DFF0ABEF9A72BE127BC317A
          F0F2CDD8C64F0E5CD403237E30D3546E28D85274489225FB8753BA331F07B1E7
          D4F8E9773AC24F4A2E4D2A7B77ED0CD89481102E40416C86EFFF65D80DA0B4B9
          3C73694B75CE4F64CD0EF6C65EED0FD96700F8A1F243EE57E7152E7C644EC196
          A6A6B2A6EAFA52685CF5116495CD45A8E744A2B7408F531C3B39CE0F7745B61E
          F934FE2B004382DB94D6DC15CEBB2247A052A0C2596BFFB39F2930FD85E5E5DB
          767EB79E766C5DC47BB63FC407F63DCBAFFE611EEFFCDD5C7E7863037FF9A1D2
          785369E677004C16706F5858A438EEC99791A66969004A56CCCC7BFC8B8D9336
          CD9F5352563FB711BAAF071D97C2387329D4BBAD23D41AB5D8790051C1C91C82
          1405A4FED5943B25DFDDFCC4EC825F7CBEB1B025148CE3647774D7DEAEC8CF29
          43AFE03226100801F70CE2CF06122579BC29EFC507ABB2573BA54B7F6571C984
          F8BB95E05E9524C3B9A876D2F289B8EF5FC72EDCE7F11F04311D30C2D9605F00
          00000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000005FE4944415478DAC4576D6F1455143E77762D9604941711
          6378AD2D65BBD09697D2ED5631401A456B6D031550A15008C5809F4848FC0126
          267E43A0A15BFA4225A1AD451351A84D0C0910446BD408A85F405283D1C26EBB
          5BB66567E67ACE993BB3B3761753826136B33373E6DE739FF39CE79C9911524A
          78949B97FE8410DE636D1D9F6A42BC629826C00362423FE0F1687C4C24C6BAE3
          F1B1F6BDEFEC3E8DB7CC8C931403539A5B3BE4C3D8AE5CBD269B9ADBE4F5EB37
          F8BAE578778F1D684606707BDC300C3E098723A0691A201B14D204190058306F
          1E98D2842FCEF44143433D6CAEADAC36656767FDD6DA8D38C4C8044048D3BA27
          70F1D35FF682F7312F88074803A570D3C61A3877EE3C9818D44FBFFC06AFBF5A
          51AD1DEFEADAFEF6C67120B4642A849347294907131702A5D34400A3F1BB3C9D
          C04C9B3615AE0F0CC0DA35E5D52D1DDD5D38CC938E01A68D8F38293E3A0ABAAE
          33988902300C138663315EDC44562779B3E0490431180E43A0745975DB899E4F
          B66DA9D980C3F514007639EA485B4D7515EBE0FE00A443923D8CAEC9CFB427A6
          0269CA233C30292B0B3C8607BC33BC303C1C83C2227FD5FB1F7C58F5DE81FDA7
          28DE1400C4023140E71E8F272D0032D90BD158CEA3A62916ED2074280B06A0B3
          07D79082C70A8DF2ADC153CFCC86C993B3B7E1B0CF711FF3BAE2014337F9480E
          CF9CED751CABA5F15A38A074DD808A8AB53CBEF1D047E05FBA04CA5F580D470E
          1E84FD070E40A1BF008A96F82D21E31CAAAA1F7FBE02972E7D03D9D9932BD13A
          2905002806244F11FCBFACA810A48A92AAE3C6EF372186F9E5E19AC9E328E83D
          FBDE75F4D3B0771F44637719989D236280CEE6CF9FCB015CBEFC2D99B3523460
          E020DDB0D46FD12BE15E22C100A4A299F24A222327745F5AB980A3870F81AFC0
          CF0082C842A8F130F8FC4B1C5D913D100C42028F454BFD70E1E225A702930C98
          5255027220ACFC267041B6A11F4125357D3A82949C8AC89D30750F06B06BCF1E
          05CAE412A66B022C6D66D14E554580EEE91894618E2F432B6A4309CC72161F1B
          B31861B2ADBF994FCFE0C56EFF3D0876BB683A720416FBFD16D5388FB440B6FC
          8202C76F2050CEE7BAD2595A00F64D8A9A94FCEBD56B4A7E42093509C450ECD0
          BCFA8606AB81D9B5881BD9EC3904C040D1B26F5565691A1156013320D9F96B55
          958EE2EDA33551B2AA25A62C817492BAFB7AFB92252B15505705132BABD7BCC8
          370C5377CA751C034A53ECACB9B191290C04CBA13DD404793E1F3B0A943F0F6D
          A1A3909B9F0F25A565580D826BBDB8B848F990C967882ABFFEEF7F702A26A167
          60C02A15E9A4A06EF76E47C16FEDDCC98EA4626AEBAE5D0C8698424932735C31
          2EC73623348F99B57FF27E005C0C1C6F6AC2287D0CA6945838862C2CF639354D
          00560602DC3708A4C14F534AA3845834866D7718BC5809B3B0F3B97DDB5DF43F
          197813A3A6204C559E5BEAEBB9FCEC1CD3A2A6A12223A5E3311289C0AD3F6E71
          003603E1A121CBBF902E163288D0CE21ADFC712884112F766C2B8365D0116A85
          3CCCBDFD1C585E5AEA3C4306076FC35FB7FEE48EE95E2059DE49FFE945682669
          A2A6B47947BDA360563DDA37D56D77F2EB308063F5840103370754D48653B6C9
          670C2ADF74A5C0CC940245132D78A23904B9C8C0F2402974B6B6C2731839215F
          81793FD9D2020BF3F2A0B8A4045BB8092F55BE8C910B57090AAB61588D0181AA
          4E086A8D4C1A701A9424067638A9A9ADAB73B521096FE0B5A95E3828DA930830
          67D122B6AD280B40577B3B5F5B802C00C5AB4A927D221D00DA4646E2584EF730
          020DBEFAAC07E62CCCB152825116142F87B3A7BA61CE821CA73C7D8545CCD6FA
          0DB55627445B2C1A87F535B5CC88540C907D646494034B248CB42FA51C5FF84E
          84A9A2AD64F53A178B12C2B7C3B00A6DE0B245C243BC70FFC573306BF6B38EC8
          E6E7E5C377E7BF4EB1CDCDC9B516F47A533E3BBCEEC6110947B1B9E813FD1C81
          DC821529AA8FDC191E671B8A58EF11FF7ED3B201C858347AA1BFFF72D07ECD9A
          E8F780AD0FC5BA6B1199F2824D8F695ACB265270EF16620A9ECFC57DE6FDBE62
          1ED246140FE27E13F7A80D8016CDA62F24FB89FB3F6E14392A12E20CE6517F1D
          8B470DE01F010600446B4E7CB13A5E300000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000023744558745469746C6500466F72636520546573743B546573743B43
          6865636B3B5265706F72743BE21C20C60000067C49444154785E8D966B8C5557
          15C77FFB3EE671E77967A084999101A4E9503A051494CAA0451B89A2A6BE3ED8
          442CB1E9072D56AD1FFCA8269AE0079434145B9184D434A97DD106B12D0348A9
          B565788C94766A3AD182A5643AD8090CC39D99B3F75A4EF65DC9496E3AE33DC9
          3F6B9F9B9DB3FEE7B7D6DAE73A5505C039875DB648D7957AE8E17D9D35B575BB
          4464D3C0C9D32F4C4C5CFBFE63FB76BFC7EC979AB088E52557B1D19932260057
          11E9EEFEC873CB7B96AD6A2B1659FBF15BBF7CF0F9FE15C02781D22CC605F026
          334185014B7C6EDF3D1B5B1B6AFFA02A8BAE5F1DE7A87E111F3C4104F11EEF03
          3D372DA3BED0C0C8E5315C26CF9AB56B96FEE4A7BF188DFB7CC0878004CFA696
          D7E9EA2C9281B7FF333AFEA3AFFEECCFFD40329B01804C4B63ED1F8BBDB72FC8
          3717295D1DE1D263C36CF9CE56DADA5A09416614A299F72E5DE67AA9C4D47482
          17C7C6CFDD41C7C2F9042F8C8C8CF0BB5DBFA16665078BD67D8ACCD4E48DBC76
          7C2FF0D19402B394405950D3BA000DD7193BF70A9F5D38C9EEDF6EA7AEBD9BCE
          8E4EDADB8B8842A1A1311A2A95A6181D1D9D8993F41FFE2B17DFBDC0F8E5F32C
          2F5C64F48D3AA67B3A696E694582DE00648D34B395C0892A20A04A0661DDDD0F
          71D3D8180327CF3078F61C8383A762B2F1F1EB24894725505393C339686E6AE0
          C6C50B58B461359D5D5DE8C91D100489A5492C07CC49405541155054857C3E4F
          B158A4AFEF3656DCDCC3D8D8075CB97A9589891293A512D34982734A2E97239B
          CD535757477D5D3D8D4D4D8CD765C96614A78278499B7C0E03A8113003713CB3
          D92C85FA02B9F9799A9A9B989A9AC6FB049F84D8A065CF1A0586365783CF3B72
          5987232012AA2280281025A8887171389789349C7333C86BAD19150DA16C00C5
          4C200A998C633C0B353925E3E25400F0FF4B200A84985C55302A288ACB38B2B9
          2C19C9CE4441245262F8DD53BC38B093BE5BB6B2BCFBD366C6917390D1801325
          04F95002994A0329CA80AAA46855CD1494A6AFE1D4E1700CBE7D98FED3BBD9B4
          FE2B1C3CF66824040E50544299902446A09A12888006504183111050055178E9
          1F8FF3C2AB0FD3D7FB2D9674ACE4C899DD6CFEFC7AF63EBA8FFBEFFA3D4104E2
          5E4534807834649110B08B39C73004217DFB6089B57C2F7066E82877DEF17586
          2F0CF1A7234FF28DAF7D8647F6EEE7EE2FECA0A5719EF58082800641C5836411
          1FAA2A416C2E350A2A8AA2E528C4F5D62F6DE7C9670F515C38C1E63B5773F86F
          C7593A6F23CBBA5761C9D328B1F92C1A017073F6004170864EC508A89425427D
          6D033FFCF62EF63F31C4F0C8EBBCF6D2A51922F7A2C19A5288D1F623B10F3C22
          5512F0E20DBD4403A4A365128A4DF3F9DE3777F0F49E0BACEDD94CEBCCBDA89A
          241293A80021890A12AA1BC3E0D5127BEB7A2D4B0CAB9958BAE816F6FCFC8499
          1354B13DB6568D54081EC9E62A7A2046FD5002715C348E4F19A12A41147B28EF
          3FF70CE77FFD2B26DE1A8A86AECDC4F3DB7FC9E8FEA7CC608A5F63F4A82668A8
          AE044E44D058FF24462360F5542E1E3D42F76DAB193BF034A37F3930139F62F1
          FA555C387408DB63638B9D0382FA104D01CC65C00188F7A835A1582D53FC4AE7
          5D5B38FBCC413A9677A3C36FD0717337834F1CA06BCB56ACFB8D9C2041403CC4
          759504821790C40E90903ED0D0B6AC5C45D327FAF8F7F1015A9AF2BC73EC04CD
          EB6EA7B8FA6348DA2B665CD0A02052F51812C4433002717E85F42C800F4E9D66
          EC683F6D6D0DBCF9F249DADB0A5C39FC22FF1D3895928AC29A3844A15A2D8178
          76137C3A0591A448D49B3B1F645EB3E3EFC74E93ACECE3956383CC6F710CED7C
          B082804D9008A6EA0C6808767C269140B007881DC9995B7B79F5CC3B2CB9EFC7
          F4DEF35D166F7B8097CF9E477B57D83EA365049C0898F96ACE0142B009081E82
          A48D680DB6E607DBD06DF761A71D5D1B36D0D5D787AA5688F47B626351D55F32
          0902F60915913479FA5DA838EF6D0D505EDB3E332080085A850107201293E370
          D415F2FCEB914DA8044B24E52448BC0733A696C08C11EFA150A8C5659DDD4B9A
          6716030A10128F860471C2C29E25C86409348021C58E58C5D666CA8A1EA32038
          71B81C90C9D804A9E540E72A41501FAE5DBE38D2D87E432BB9FA22D4365BE228
          4462B40E0F96D8A766EC0B8A8D1E225CBE3486884E00C95C0604981E7E7FE25E
          DF7F620F2A051BA368C0905B62C34D8A1DB188F58062E620888EBF353A753F50
          02C25C25481E78FC9FCF02CF9B3967A28A38DB6F6A6F5E3209A0B31908C02430
          5D91BC4215BFCFBD474D01102AAEFF011271A680543A4B220000000049454E44
          AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000004834944415478DAEC574D6C545514FEEEFB995F52AB88A4
          149105D246B0189A6835E0D2D014031648341017124DD598B0A9BA80A85191FE
          0408FE2C346E8C1A564488A675A18BB6509AB82994A605A338ADD566526A5BDB
          E9CCBC77AFDFBDF35A0729B5D318BBE9CB9CBEFBEEDC73EE77BEF39DFB3A4229
          85A5BC2C2CF1B50C60C901089AD37678C357B6F06B00B5E82096F2BEAE7A67F0
          290EBD427C1D5AD4B5654D79D57390BA2384286C77FAD84261A0F3D44E1D8B36
          51288088654984D76E41F29B37998A4D100BAC8C9280F4B1BAE6081C914559E3
          958F8A62F6014BF9B8954D26363DF142577DD5A77C90F90084CDAC65760A7043
          390058280BCA00909929E81822567C60F7030C49009A4C73C4087DCF8139D7AB
          DEE7ED735A2A1F00F7E4AACC34D6EDDCCFD5A23000A43F353A6D62F852615349
          0C47BF1B44454994CF8CCD507DC969B4D595511C229C3ED2F2ECE5B7AB3F9961
          210780AB94CC704AE582AA02D4A7D7D25703D089A63C099BE393BBEE439A7274
          58CD43E712E84F7AD8BFF51E9CED5973921E9FCDB010306011A944B2EBFB4084
          0530C05D8BCA9E601239DD4CB3FCA19083715634955508118C8EDF3F92C6236B
          E3A82E5F155164E152C08201607381103E9C683C1060210064CED7C901F03815
          0F5BC81088CF7266A569330C8C65F1D06AE019FEF9B6AFF4D40C0B41090880C1
          EC7074E11D90D70994306C1303484B81181978A53561DADA65791D5A642C6396
          DF1DD7C98A50D0B2A9590D58960F2B1459D439A0DBD8085933401D854316BE7C
          B214A32CC3873F8C20319146928238DC3604DBB1D976CE6CF96735400D938150
          01F4E77782C7183614F9F78466C0455DCB307351A63DA3AEC3E6E20EC2851F8E
          63327AF3411430C0BB1BF9FB25F10F1C729ECEB0843031F4E533811835A07817
          FA6C08409223A4ED15F838E962FC1070473E005D23DBA14B2462B4A01D61E7A1
          D0BBFBB90345CD71C009479A76D39B4ACB4558E7419A45D01990921F096571BB
          5E13EA6606429AF9884D0D84CDC1828CC25BA77FC3E581B459F4E0BD61BCF174
          09448819C9B9DE44827557582F27E0B9A57029FD1B671A9119EA334B426BCA71
          576D3D1C86AFDFAB70BA94AF8B8345B3EE77D236367CF0C5451B1943674F4F37
          3695DD8F6DDB1F338B3ADA2FE04AFF356CDEBC8599A85BCE79CD984B11A6C692
          5859BC02DD97BAB1B1AC1C8F6EDB6EBEEFEC68C7D5BE3E5454541896F4712F69
          75CF1F0C6B062669C9DF7FE9652069008CDF184665E53E9C686E3201EA5E7A19
          9D9D1D184A5C0DCA30B7208E371DDBF5EA6BAF9F1D1E19C3DEAD0FA3B9F9B899
          7F91FEED17BA70EDFA007D65A00A53DEB806A01B74F444D3BB95011BEE9E3DFB
          5A52A9145CFD72D2CDCAB1F2B2686E385ACDC7EC6DB4F8276DAAB1E1D8E3F46F
          9BCAF3D763DFF3D0D8F05EBEFFE8AC0602167EA60DD28A3399CCF5CEF31DEB77
          D7D6E6283CDF013DC7E14FB43F6E03201B24B36A81FE7AFDE45C4DAF3B64C38E
          1DD5676CDB59675ACBF712ADAD2D3ADA8FB4B17F39180AF29F0B804B5B492BA5
          150573E3B45F6923F3946051FE629E2031DD41C1B3A6766A019BFF57FEFFE37F
          C5CB3FCD96012C3580BF04180061C5C9785DFB25EF0000000049454E44AE4260
          82}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000065B4944415478DAC4576B6C145514FE666667B7ED9676FB
          DEC59696163080BC0218529E224F535008A08D01824688608D187E54A226420C
          24A2823C148835365A08A058A2205068004522D442A140495BA0DDB65BFA60DB
          B2ED766776C67367A7B54A1F74FE7837277767E6DE39DF3DE73B8FE15455C5FF
          394C3D3DE038AEA747E68C3D4BDA65BF0445F1EB6B058826113BD71EB1D0A5AF
          A78DDD1DD66400B455927DD8F2FA7EF835002A045EC07B5FAFD69EF506A05F16
          E866F06F6C5BB09C13D44D3E025074EF0F9C28C821F52A5E9B998976C98BD5DB
          D31A399E2CA772D7A1207BEFFA639FD13EA5B797723D71A08B0BB8159BE60F09
          0917CF25C6A538268D780EC313C7A2CC558C538539DA823963D391E278066C87
          D7D786F29A12DC71DEC0F5BB57B06BDD8F9D6E31E2022E7DE3ECA1C136B1E4C5
          C9AF6244E218DC76FE85C317BE809F7EA260D6945E29CDC3E9AB0760162D880A
          B523C93E120B525FC6B5B2CB7DBAA52F00669B3DE4FAC2D474C4C72420E7FC36
          C87E193CF99CE378984C81EDADD22358CC4160E7AB7F5483BAD26A5CBC79028A
          5F7D40B744A31CE0577D3C7FC3B0F891E604FB20FC52F02DD871CD660B4D1C81
          E0343749924C27373DC6F2F63619ADEEF6F3F457360A20C86235674C1A310367
          8A0ED1CB1508824953CE88D6D2D40677B3874251EDB24144488805B6B060F824
          3FEAAB9AF2E9B66418002FF0710AD78A76D9031353AE115385244B78D0E096BE
          7CFBE8C22E0AB8E94BC73D9B38D23ECF163B602A5B7A7CFFC593CC1846A32076
          DDAEC5B5D3274E46655D2978F279C0CC0A9E1E380E976E14C0595D79EED096FC
          E59EA636A644D009174E124AE221B947D2A0A1361205E469B4781BC9F4BC7615
          780947447361F9EC35B874EBDCF4D0ADD60A5FBBF7ACE4553FCFCAFC398F9630
          E29949FC3A08D5B00532762FAD1D921C4784E33BD1B35951FD880D1F843183A6
          8127D7DCA92CC68DF242543EB84F6AB92D7BDFCDFD4007D0672AEE0D4074FAC6
          39DB5246DA57C6DB2329EDAA8F8160121F390C0E5B121C11C9686E75E3B7A27C
          14DFBB0AC5C7ADDAB72137BB6B26EC2F00E6CFC16F6E5F7CCE313022322E369C
          18AF682FE9D8A2A88AC6093607895624440E454ADC18D43656E387F307E0F3FA
          B2BE5A9FBBBAC31AFD05C048154992BC7ADB4B0723A34293EC761BAC14665AE8
          A9018BA8FA8BC9261A189E336174E23498B8101CCCFB068D0F5A96647F78E2A8
          86B71B5D7C2FFC60A8DD2415FB36FCB4ECEA85D24F4A4B5DD2AD922A343E6C81
          9F5E26880204130F9E84E508814A327815572BCEA25D6942EAA8190809B36CD6
          49692815B318AF67B1FC6BD6A52C9A7353C63C353875D1E835E1D1D629D6D020
          0C24AB845A8328ED920558A450B82A2A8F9BCEDF313E691EBB1CCE720AAB5346
          CBB1A45BA28D8129BB565545524CFF6DB3574C9CF3686262268B94F0F0E0CEAC
          4836D1C0D47BEEC22232DD3DD783BE0098D6EE587C947A80345956B6EE7D27F7
          7DBAD744D24812723AFB726D7343ABD3BAC4B22B22D2AAF1A023837074E591DC
          88B245A33389F4B718ADDC3C7F51823D216D6E6A1A2E14E667AED9AE6442E50F
          FB25254BF2CAB70F6EC9AB4E1A1597142286690AF92E6D1C4BDBED720B6AEAAA
          0D774494FEF934474C3C1A3DE59839E179CC183F93124ED152676DE5D2664F13
          DEDAB10C3111B1481D3D15658D17C9DFFF709A554B49565849AE330A80DC679A
          13650B83D35D82AAA63244043B901C3F0863878EFFD7C2DAE672CDC61D1660A7
          67E9DBE572A3DEE9FEBEB792DC1B00513009F6A8A80168AE13A112C1DC6DD524
          555ADC079BC3B4456DBEE64073220801DF73815EC1DB26E1DEFD7AE9C8A7F9FB
          7B8A80BE5D4026BD5C7C19B171C1E0454E63B9AA27209FBF552B338220067A04
          1681044420E5AD5E1F0A8BEE233FA7205D0F63AF916214E1488E1E377BE5848F
          6C316153A2630620262A0C713433207E4ACB9D61C7074CFEC8E34385B31EAE1A
          B774E6BB2BCB4BFEBC7F891EBB3A7A82FEA66296BDA248EC2CE617AE9BFA4A6C
          62C42C7390982C53D2993B6B14FCFE40D831E5A7F2AE43F5AB2E5779C3B1637B
          2EB022E464F4D095AB460074B828586F306C7AB311B66EE792932FCC1D0D590E
          EC3599381C3F5984DD194766E8FD40839E2F7C5DFB01236D39636F8BDE58B8F5
          941AC34E7CFC5491464C0DACEE021A952435FAA99527F9DA79920F93FF8E0856
          A6F5B9EB784872579F9FF8DBD00800B3DEFB89DDD40C4F7F3F4E8D00303CBAD3
          F5B700030047EDD673F61C82880000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000012744558745469746C650057696E646F773B466F726D3B
          57A1E691000002AB49444154785EED973D6B145114869F33BB2BC16F903562A5
          88A58D90CA268DA0D858F91B44486393BF90903E553A8588B58D58180B2B3B2B
          0BED2C0C2128247E90CC3DAFF172980B039BC96CA3425EE632A758CEFBDCF39E
          29762889BFA921F0EF001C031C03D8811E2C6FCC0FA89665D59C5C48F9E01272
          E102C9711772B2EA9470772470176D8DC76731F9BB842F3E5F9CDF90A44911D8
          D0AAF5DBB7AECDCE5E380982E464730224890CE35ECCF6DC511229034EC8DA34
          F7EAEDA775E032301900ABB2F9FBCFDFD9FD55230904CA47384271FBF0A2AE13
          2E0292665A0F9F3C62E6FC6956EE2C45F76A163080C900900DB2B90B8F69B90B
          013431281F200C035034F5CCB95307E70C2D75032427322DCD8432040AC37803
          A4242443141049ACDC5D06E8058004BB3B3FF9BABD034D33086FD4EC04788450
          EF0B11D094B872EDC5EF84BA3F43BB3EFAC1FD9B17B977631CED154F7F2577C0
          180D2A46236369F57567043166C363F38C301760FD300655056638907BBABA27
          2017113418CD480D21D14B6640632AE4EA5EC214390A812C2A909852116444D2
          BD84EE4DE62681814DB90348C80A87DCBB2368BE7728E38FBA3F861516C0BB23
          005744E060612AB329220870510074C409C4B57162FC9AEEFE6E2570A4234DC0
          E442C534D7D8B44B2854FCD11123284B43B87BF341F494B0E277C408922362FC
          81AE1881E4F491598543D981E4DD11783612A632BE5C2124A38F243014B57075
          4750B287923FC20466FD01B056EF8E08BC4EF5970F1F372F5DBD32A692203F55
          CCA19FAA0A14D0073DF9D31BF0C300EA9DEDCD85B5A76F56B16ADC2CA38ABDE4
          0C2AA3ADE4CA99031886592B6DF9D6EEB7AD05A03E14E0D9DAE317C04B60505A
          C4BBD4156D8103A248AD7702F6BB001CD88B1F16F3E9D5068A3319407126AA0D
          244956B653F4D4B0D5ACE7AD0AC47FFBCFE83714162490DFB6C20B0000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001D744558745469746C6500436C6F73653B457869743B426172733B52
          6962626F6E3B4603B9E80000067749444154785EC5975B8C955715C77FFB0C03
          33C3CC30F70B3894D62284526BB11A630CC6041F7C6C4C7CD0686234B16AD486
          165B07DBDADA02112592A8313ED4C4F8A0D6A4DE22314D0DB4182EA558532816
          2D22B470E6C2309773CE9CF9F65E6B393D7B67BE1C652693F0E097AC597BCF5E
          7BFEFFBDD67FAF6F3E6766FC3F1F0770F9E03E3018BAFF61B79CF89B347BFDA9
          C76CD3EEC77302970EEC61FDCE6197E685E4DD32C1DD32095B320134590A48C0
          A71F7DE823ED4D4D7B0BCEDD0386A56DC983190BBF27CE359F80FDF71E4BD105
          30C58B9E1E2B9586771CFCD19F8100D80AF2A7D0DEB8F2E7BD3B3EDCDFD4DF07
          66C93402A9C6B128A6423E5630C14440051305115403A8804433152A2313DBEC
          EF6FFE0CB805904420CF8006E95FD1A8CC9E394D7E4CB0053244AF8699629A08
          461F89A962D1D2389153452B152C843EA021619267009C7A8F56CA58F0398184
          8D691A5B1D09CC52161493E823B8448212308D6B966584CCE7A5AF2700E23D16
          32340BE4E84490E4731239789E811CDCC4C0847C2E48F048161625E0240B98F7
          98CF484F0E080BBAB01AB0E1EAB220A0D19B1AA4AC246DA02258E611BF0481AC
          5CAE9D5E7D96C7249957CB555E7DFE38D72E1719BC7D3D776C7F2F858602A812
          7CE0CC9153BCF9FA45BAD7F572D7F66DAC6C5A1949254226010D9EB9E952DD15
          2DE413A88E5F271B29A273199AF91A11F59EEA7489D3BF3F4CF5F6BBE97DE400
          93ED6B79F9D00BF86A153F57E5D4A11799EA1C62ED933FC06F7E3F27FE78B4B6
          C7BC47BD60B5BF13C826AE53199FACCB40A14E8462F8B12295F3E70853939144
          F09C3DFC126CFB10FD9FF80C1BDFBD89ADBB86C9D66DE2AF7F3A366FC7999B1F
          F77FEE2BDCBA752377DDBF93E60F7E94578FFE0D4DE5947285AC78856C6A0A09
          8B8BD0A92A1A02522933FBC6795C4B0B8D1D5D4C8F4CB0FDE01798758D74AE69
          056714767D8333FBF71244E9FBEC971918E8A2A7BB1DCCD8FEE0D7F8CD8EDF12
          A6A791D20C9A650BFA5065895BA0D408980866C0CC0C3253A27BB08B0B3FF921
          DBBEF908D54C5185EEDE0EEED835CCE454998E8E56BA3BDB30355A9B1A38F1E4
          77E85BD743363E1E819D81827A41040016C98045118A000E4B22DC706B2FFF7C
          E5255ED9B787F73C3C4CA92A007477B7D3356F0006B4AD6AE0D413DF62F2E563
          6CB9733DFEDA0446EA98383404546B902EDA0D4A60C1C7A6913722B2F131DEB9
          7980F3C75EE0E4E3199BBFBE1B289007818A727CEF134C1D7F912D77DF46363A
          927A972E5C5D1545456E2842072022484DFD310BF33E9209816A710424303131
          C3D8580904C85F0FA8417966164CA85CB9124BF9B6F9B7BDD4C61A04D1254BA0
          A9040ACE812AE662CFBF3452267BD73DB47FEA4B980331C320B1886719FAEA43
          9CDFFF6D2EBC76820D036D14483116332AF525A8F9FFD180F92C3277907E50BC
          EEF19BDF47DB27EFA36FA08BAE8ED598291DAB1B311A982C790CA5ABAB8D8D0F
          ECE68D034F71F9DC4986BA9A2338402A81AA2E710B4408998F6D137016395432
          E3CE9DBB28DB8A080E74B4347266FF1ECCA8F585899207A0B3AB9D0F3CFA1847
          EEFD182A010052EB560D4890A5FA00988F41CE81A9033356B736537DFE776CF8
          F4E7295703EDCD2B38F7BD7D4CFCE50866C659075B1E1C66BAE2696D5EC9BF9E
          7E9AB6B6164C322C7F8322216601E086B74044109F45D11891048E819E162E3D
          FB0C00B7DDFB71CE7EF7C75C3B7684A1C13560C6E5A38779CD8CADF77D917FFC
          F4192EFEFA97AC5FDB811F1F4D2F2B0043832C5A02B7A0816A2C010089443636
          CA3BFAFB29FEE1592EFCEA17B4B63633D8B39AF2BCDA01D6F6F5317AF228879E
          7B8E96E6466E59D7493636827AC1111B91295810546CA94EA804B15A20712B0E
          301364E42A7DBD3D340CAC21944A54E7C193C699BD7295DE9E6E06FBFA91D92A
          95AB45508F012AA49328228A982EAE0113C1BCA1AAB9789C8B3E134A6FBD05EA
          A23AB1DAD8A5D3558A455052DB755804A2FEFF08C144EAFB40CE06276AE88206
          1C140C97440409D80073092892A4000818699ED62001E330334414155DB4159B
          88C43AA944ACA41F88DED51D2A6581024E351E32464512A4B95A0EA00BD9B568
          39010344828C8C5D9FEB6F2A7854638CA9D5A71250E728600BEC345F8B802ECE
          AD6E9FA39C15F0AAA340A8D70028307771B6F2409055DF2FD0D403F9FDD5046C
          B9C7CCE52932F2960BD1CCF23514C321A6D7FE9DCDEE02AA40DE91926F005601
          4DB93670CBFC1473CBFC34F3097CF6465F469216B2A5406EC22CC7216F873705
          72F364F80FA3C7188E64BF0D450000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000001D744558745469746C650053707265616473686565743B
          4869646544657461696C3BF0CAF93E0000031E49444154785EAD973FAB5C5514
          C57F7B665E88FA7114B1F1F9445F61115044302869ACC42E6013AB60A3767649
          29442C34A229E39F175050046DB513AB3C15049B90CCCCDD2BCDDE2C4E218FF1
          CE86CBB9F7DC73E6ACB3D6DAFBDC594962D78888E191FF1F5A312F1675C5EE40
          4820E7000860F1FEF593AF161147104882008443200444B5024166DEB9F2D6F3
          C7AB8898C540104797DF3864D7F8E0DA9D2360D10CC4197A060EB98F4889144C
          998440C31433D2AD80D532482540AC9A4A6059579C0148C0541A0629BF08502D
          16124290519344C803250D00563FBCFEEAED55C4A1241035400CCF1292D84CD3
          77CF7CFEE50B80B2C65503215090465FDD612F0059C05B82E5BFA7770F9FB878
          EC194AD329D94C82EFAFDD7CBAE66EA769F222012240229A0D64DDB02133CD00
          404CEB0D0FEE9E72EF8FDFA1775B5783500212D3665BF2F4D07A1FD640E9A5DD
          0DFEB91C18C8F5DFFF7CF3CBC75F3F270965A26C00D98BD77DB24E7D5B3E0821
          3EF9E267BBCC81DA83D132D8BF299A01046C5EFAF5B70B0568311A7094B2CCB7
          29004B255C7CF17136DBAC1DB60D1A8408EB8102CE2D17BCFBE1ED626074F51A
          08CE0EB577944230383E31DF55A09CBB095A4266A721B6DD0EE554C554E5B390
          865A07D9DA0B87CAA4EE1F0F23D08E875128D54902DDD24614441B40480D1154
          26987916389F9BE62000C6EC29F1C3F04817A25911EA6DCB020C54CA23B30041
          796026033403376EFED4193F584908AC0248A0283998CF40EFE4B5979FE4C17A
          1A771D05A0C3B79C3FB7E49DF76ECD65C0260491BD7FE1506131947A62360341
          45CA0791C00B66D0E7B36F01F6EB8128B77B57F68269CF40AE09631D6066C869
          68DA89E16818E9F1BCD926B404F6BE8CC282980D24D781BD49F0D1A73FFAE41B
          CF0104446834A7198BBD54C24BAF3CC5BDFBDBA1E28FC30C20108F9E3FE0EDAB
          9FED370D852C77E0942481B01C444BB13F0F00A304FEFE6B399C1911B06F0F38
          013AAACFC9EFF752B5FB0120C96988351F2B61BF0FDC2F66039001C0638F1CF8
          536C84F85FC867FC3935B1DB3F4FFF3AB9F4E6F567D931A66973026CE63090C0
          FAD68DCB178083E163F62CE0FEB05D3F04F32B7015AD92D9320000000049454E
          44AE426082}
      end>
  end
  object popupMenuPeriodicos: TPopupMenu
    Left = 392
    Top = 64
    object menuAtribuicoes: TMenuItem
      Action = actionPeriodicosAtribuicao
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object menuEtiquetas: TMenuItem
      Action = actionPeriodicosImportacaoEtiquetas
    end
    object menuTiragem: TMenuItem
      Action = actionPeriodicosImportacaoTiragem
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object menuOcorrencias: TMenuItem
      Action = actionPeriodicosOcorrencias
    end
    object menuRecados: TMenuItem
      Action = actionPeriodicosRecados
    end
  end
  object popupMenuServicos: TPopupMenu
    Left = 456
    Top = 64
    object menuServios: TMenuItem
      Action = actionServicosCadastroServicos
    end
    object menuOrdensdeServios: TMenuItem
      Action = actionServicosOS
    end
  end
  object popupMenuTransportes: TPopupMenu
    Left = 392
    Top = 112
    object menuViagens: TMenuItem
      Action = actionTransportesViagens
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object menuManutencao: TMenuItem
      Action = actionTransportesManutencao
    end
    object menuEstoques: TMenuItem
      Action = actionTransportesEstoquesInsumos
    end
    object menuAbastecimentos: TMenuItem
      Action = actionTransportesAbastecimentos
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object menuInsumos: TMenuItem
      Action = actionTransportesInsumos
    end
  end
  object popupMenuFinanceiro: TPopupMenu
    Left = 456
    Top = 112
    object menuCentrodeCusto: TMenuItem
      Action = actionFinanceiroCentroCusto
    end
    object menuCreditoseDebitos: TMenuItem
      Action = actionFinanceiroCreditoDebito
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object menuContasaPagar: TMenuItem
      Action = actionFinanceiroContasPagar
    end
    object menuContasaReceber: TMenuItem
      Action = actionFinanceiroContasReceber
    end
    object menuCaixaPequeno: TMenuItem
      Action = actionFinanceiroCaixaPequeno
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object menuPlanilhadeFinanceira: TMenuItem
      Action = actionFinanceiroPlanilhaFinanceira
    end
  end
  object popupMenuSistema: TPopupMenu
    Left = 392
    Top = 168
    object Segurana1: TMenuItem
      Caption = '&Seguran'#231'a'
      object Usurios1: TMenuItem
        Action = actionSistemaUsuarios
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object Senha1: TMenuItem
        Action = actionSistemaSenha
      end
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object Expressas1: TMenuItem
      Caption = '&Expressas'
      object AbrangnciaExpressas1: TMenuItem
        Action = actionSistemaAbrangenciaExpressas
      end
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object Financeiro1: TMenuItem
      Caption = '&Financeiro'
      object Bancos1: TMenuItem
        Action = actionSistemaBancos
      end
      object Perodos1: TMenuItem
        Action = actionSistemaPeriodosExtratos
      end
    end
  end
  object dxTabbedMDIManager1: TdxTabbedMDIManager
    Active = True
    FormCaptionMask = ' [MainFormCaption]'
    TabProperties.CustomButtons.Buttons = <>
    TabProperties.CustomButtons.Mode = cbmActiveTab
    TabProperties.Style = 8
    Left = 624
    Top = 192
    PixelsPerInch = 96
  end
end
