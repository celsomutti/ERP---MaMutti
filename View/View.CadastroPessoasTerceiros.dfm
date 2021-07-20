object view_CadastroPessoasTerceiros: Tview_CadastroPessoasTerceiros
  Left = 0
  Top = 0
  Caption = 'Cadastro de Terceiros'
  ClientHeight = 514
  ClientWidth = 919
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Microsoft JhengHei UI'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 38
    Width = 919
    Height = 476
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    ExplicitTop = 0
    ExplicitHeight = 514
    object labelTitle: TcxLabel
      Left = 12
      Top = 12
      Caption = 'labelTitle'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Microsoft JhengHei UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object id: TcxDBMaskEdit
      Left = 12
      Top = 63
      Hint = 'ID do casdastro'
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 64
    end
    object tipoPessoa: TcxDBImageComboBox
      Left = 83
      Top = 63
      Hint = 'Tipo de pessoa'
      Properties.Alignment.Horz = taRightJustify
      Properties.Images = dm.imageList16_16
      Properties.Items = <
        item
          Description = 'F'#237'sica'
          ImageIndex = 4
          Value = 1
        end
        item
          Description = 'Jur'#237'dica'
          ImageIndex = 38
          Value = 2
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 84
    end
    object nome: TcxDBTextEdit
      Left = 320
      Top = 63
      Hint = 'Nome ou Raz'#227'o Social'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 290
    end
    object cpfCnpj: TcxDBButtonEdit
      Left = 174
      Top = 63
      Hint = 'CPF ou CNPJ'
      Properties.Buttons = <
        item
          Action = actionPesquisaCNPJ
          Default = True
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = dm.imageList16_16
      Properties.EditMask = '###\.###\.###\-##;1; '
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 139
    end
    object aliasFantasia: TcxDBTextEdit
      Left = 617
      Top = 63
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 290
    end
    object rg: TcxDBTextEdit
      Left = 54
      Top = 139
      Hint = 'N'#250'mero do RG'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 104
    end
    object expedidor: TcxDBTextEdit
      Left = 233
      Top = 139
      Hint = 'Expedidor RG'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 129
    end
    object emissaoRG: TcxDBDateEdit
      Left = 444
      Top = 139
      Hint = 'Data de emiss'#227'o do RG'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 109
    end
    object ufRg: TcxDBComboBox
      Left = 604
      Top = 139
      Hint = 'UF da emiss'#227'o do RG'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 74
    end
    object nascimento: TcxDBDateEdit
      Left = 762
      Top = 139
      Hint = 'Data de nascimento'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 129
    end
    object nomePai: TcxDBTextEdit
      Left = 54
      Top = 169
      Hint = 'Nome do pai'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 391
    end
    object nomeMae: TcxDBTextEdit
      Left = 487
      Top = 169
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 404
    end
    object nacionalidade: TcxDBTextEdit
      Left = 121
      Top = 199
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 260
    end
    object naturalidade: TcxDBTextEdit
      Left = 472
      Top = 199
      Hint = 'Cidade de naturalidade'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 254
    end
    object ufNaturalidade: TcxDBComboBox
      Left = 835
      Top = 199
      Hint = 'Sigla do estado de naturalidade'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Width = 56
    end
    object segurancaCnh: TcxDBTextEdit
      Left = 127
      Top = 229
      Hint = 'C'#243'digo de seguran'#231'a da CNH'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 162
    end
    object numeroCNH: TcxDBTextEdit
      Left = 354
      Top = 229
      Hint = 'N'#250'mero da CNH'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 154
    end
    object registroCnh: TcxDBTextEdit
      Left = 601
      Top = 229
      Hint = 'N'#250'mero do registro da CNH'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 159
    end
    object categoriaCNH: TcxDBTextEdit
      Left = 832
      Top = 229
      Hint = 'Categoria da CNH'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 59
    end
    object validadeCnh: TcxDBDateEdit
      Left = 88
      Top = 259
      Hint = 'Data da validade da CNH'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 20
      Width = 171
    end
    object emissaoCnh: TcxDBDateEdit
      Left = 351
      Top = 259
      Hint = 'Data da Emiss'#227'o da CNH'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 21
      Width = 184
    end
    object primeiraCnh: TcxDBDateEdit
      Left = 593
      Top = 259
      Hint = 'Data da emiss'#227'o da primeira CNH'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 22
      Width = 166
    end
    object ufCnh: TcxDBComboBox
      Left = 820
      Top = 259
      Hint = 'Sigla do estado de emiss'#227'o da CNH'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 23
      Width = 71
    end
    object crt: TcxDBImageComboBox
      Left = 10000
      Top = 10000
      Properties.Images = dm.imageList16_16
      Properties.Items = <
        item
          Description = '1 - Simples Nacional'
          Value = 1
        end
        item
          Description = '2 - Simples Nacional, excesso sublime da receita bruta'
          Value = 2
        end
        item
          Description = '3 - Regime Normal'
          Value = 3
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 24
      Visible = False
      Width = 480
    end
    object cnae: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Classifica'#231#227'o Nacional de Atividade Econ'#244'mica'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 25
      Visible = False
      Width = 302
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = labelTitle
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'ID:'
      CaptionOptions.Layout = clTop
      Control = id
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 64
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Tipo:'
      CaptionOptions.Layout = clTop
      Control = tipoPessoa
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Nome:'
      CaptionOptions.Layout = clTop
      Control = nome
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 201
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'CPF:'
      CaptionOptions.Layout = clTop
      Control = cpfCnpj
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 139
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Alias:'
      CaptionOptions.Layout = clTop
      Control = aliasFantasia
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 201
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Pessoa Fisica'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      ItemIndex = 4
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Pessoa Jur'#237'dica'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'RG:'
      Control = rg
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Expedidor:'
      Control = expedidor
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Emiss'#227'o RG:'
      Control = emissaoRG
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'UF RG:'
      Control = ufRg
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Nascimento:'
      Control = nascimento
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Pai:'
      Control = nomePai
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'M'#227'e:'
      Control = nomeMae
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Nacionalidade:'
      Control = nacionalidade
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Naturalidade:'
      Control = naturalidade
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'UF Naturalidade:'
      Control = ufNaturalidade
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Seguran'#231'a CNH:'
      Control = segurancaCnh
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'N'#186'. CNH:'
      Control = numeroCNH
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Registro CNH:'
      Control = registroCnh
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'Categoria:'
      Control = categoriaCNH
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 59
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Validade:'
      Control = validadeCnh
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Emiss'#227'o CNH:'
      Control = emissaoCnh
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = '1'#170' CNH:'
      Control = primeiraCnh
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'UF CNH:'
      Control = ufCnh
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      Index = 3
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'CRT:'
      Control = crt
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 279
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      CaptionOptions.Text = 'CNAE:'
      Control = cnae
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 167
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object actionListCadastro: TActionList
    Images = dm.imageList16_16
    Left = 640
    object actionFechar: TAction
      Caption = '&Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 1
    end
    object actionPesquisaCNPJ: TAction
      Caption = 'Pesquisa CNPJ'
      Hint = 'Pesquisar situa'#231#227'o do CNPJ'
      ImageIndex = 40
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'DB Navigator'
      'Default')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.LargeImages = dm.imageList32_32
    ImageOptions.LargeIcons = True
    ImageOptions.StretchGlyphs = False
    ImageOptions.UseLargeImagesForLargeIcons = True
    ImageOptions.UseLeftBottomPixelAsTransparent = False
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 144
    Top = 328
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      38
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      BorderStyle = bbsNone
      Caption = 'Cadastro'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 947
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarDBNavInsert1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavEdit1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavDelete1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarDBNavCancel1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarDBNavPost1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarDBNavDelete1: TdxBarDBNavButton
      Category = 0
      Enabled = False
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000C744558745469746C650054726173683B649A356D0000
        058249444154785EB5575D6C1455143EBB33BBB3DDD9DDB285EEB65BA4144BCA
        4F15A595A0183118230F18F0A5D13749247DF13721461E08C11049F0C1C4F862
        4479F241A209C460484589BE1848891149ACB6C5D2A6DBDA6E7FF6A7BB3B33F7
        C773EFCE74BAB4DD2EAD9EE624F7E4DC7CF3CD77CE9CD3F5C012C6392F8B3D68
        CE51C47D7D7D7A7D7DBD677A7ADA686D6DB530C1EC7BF0A0B68840474707F4F6
        F68A604912C7DF3BF782A6F93FD7B440C2B22C608CA10BC27C8C527AF4DC07C7
        7B1083C33276EBD6ADB2D80B551A4713F71555FD6C77C7AE44E7EE9DD0D9D12E
        7DCF138F40FBA33B1ABD8AF742D598D513701578FDEDD30782BABEF1DED0305C
        FCEAC291B3674EECED7EED95C7DE7AA3FBD93BBFF7418DAE37E29DE7F02D3DFF
        350179171F7E6AD7AE1DE0F7FB61DFBE67D2C78E1D1BD9BF7FFF50EDBAE85DC6
        28D4C7E3A0056A4E3E08AE7A7F229D4E97D5FD9D77CF3EAF28CA8553673E49EC
        7EBC1D620DF540B0F6C3C323D7D3E9023CBCED49D8D2B617628D718837C4209F
        CD3E7DFCC487C4EE89573F3A77E27BA727107B6502838383F729E439BFF7A93D
        89E64D1BC1E75364A279F32688373640D1B0C022143867E8206DDBCEEDD22727
        261A6FFF7AFB3C00B460535309E6F5AEF815C87B2F76BDF9755322F652DBD6CD
        108FD541580F42281404EC7E09601826E47279C8CD15C0304DA0541058BAF1B3
        78EFCFFE21184D4E7CF3EDC58FBB30C12A12F0A31D3CDC6D1C3A720882410DEA
        6A43B03E1A81485810F049C68410281896246259142873311907A08442D1B420
        9F2F420EDDC0BB572E5F81AB973FD54CB48A25C0B2AB1C01A7663290C92990CD
        96DE747D1D92402514C523A5CFCE1530578042D100935020E894525484806959
        5295858698121B83CA045455551867089E030FD62C939D433269F08DA8A02AA5
        1A1204B72C02263A2554CACFA1B221A6C4360CA3721362A37804DBDF6EDE003C
        62E3F92010D020A0F90500805D8222CA5FC4B72F4D43BE4C0F2CC65EF12B40A3
        3F5FFB723BB642DBC123472FB56DDB0A89F87A59FBB97C49BD75B541AC6F0126
        A63252FA0D75614964269D97F9D886DA529CC9C340FF5DB87AE98BC394D2BFB0
        0474450278C944A9C6D02DCD178470380ACDCD2D0868C2F83FD3206CE34309EC
        8B39285849A946CB96162814F240EE8D8B34C65BE663CD1F04B43BA8E4149230
        579C84B1588C689A96C3E13385835FF64130A8A307C1A328D29D187332D6F510
        E09414E745B1D7AB0835A604A6C0AEA6047C6C6C8C363434582549BCA0FA5460
        9C0A799C46152E731C38E67DA05A3E3CC9FCA2389FCF5B89448256318A5D4305
        B85CB594CF0F0CCE164E0F8FC84977CC3DBBB1C040E355EF82818101178031F9
        6DDB08F6D981E33276F2E0E6CB62C47071AB57C025402873E8CF0F176E3BE65C
        026EBE2C1618B63D3801CE283074E020870D59F8865C102C1FC394397937E66E
        7E950A547800E6CA08B86737666B25C0C8028989047346AFCC315776F7ECC66B
        2740A89CF5D229256ED22E0925159B706D0428151273E77960952B2073D4DD01
        CEDDB278D50492C924E78CD9DBCE6E428BD804240B9963AC7209F8DA14287539
        B7FF2C5B6219D94D46E9FFD8845C0270C0D12CEAED3C0CE371B98A9D353C9A4C
        82699ACE4A2E8BD7A6006319542172EDFA0D50550542E15A39867FFCE9A65CC3
        5A8D2EE77DCF0FBF48003D14C1BC1B0702418131BD5A02DC2C16BE4BA7522F47
        6331B11B80D923D01FD041A1542E230F30A8D1C3F6DE92CB753E4EA726C1340A
        3D026B3504E8C8F01FEF2BAAD2399B9A685514AFF36FB5ACAB33669D4F742923
        C4EAFF7BF0F66981B52A023353C3C313E3830770F7AF8B46A3FE40202019148B
        4586BF8CC9ECEC2CC35DCFB1DE4B31A0E819F4994A042AFE3CEFEAEA52262727
        7D9148C4D7D4D4A42211C5DEEF746868888E8E8ED2542AC5C527BB9C8AE8047D
        D94EFC17078485CF67E8554F0000000049454E44AE426082}
      LargeImageIndex = 0
      PaintStyle = psCaptionGlyph
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnDelete
      CaptionEx = 'E&xcluir'
      HintEx = 'Excluir cadastro'
    end
    object dxBarDBNavInsert1: TdxBarDBNavButton
      Category = 0
      Enabled = False
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001B744558745469746C65004164643B506C75733B426172733B526962
        626F6E3B9506332F000008F449444154785E8D570B7055C5F9FFED9E739FB909
        E40121E4C13320963A80888DA47F4450B41D915AA0481D6B6BA7B5159D3E9CFE
        517CD4D13AB66594DA426BB55AB1A530814A5B194B41D1227104E4116C54484C
        02216F929BFB3CE79E7376BB67F79CE44A8769BF99DFFDF6EEDDB3BFEFFB7DDF
        6E4EC8435B1B410801A104D4F5181D43780200EEBC87076E9D437069C3E30DC7
        38631C5C407AAE3CE30C8E333AEF30079BEE5E04DD5D70CFEA05504CAE237963
        65E541CD1F928B906F5C000FAF9AE77A896EC3E1DCFB490C140019D4D3AF344A
        0EDD9F24F2237F9C4F0C2A40D63FBFEF8A6861D10AA20596504A2294D02B00C0
        B6ED53E0C8E672C69BC9A1C1DD9BEEBBB90900AB086B0C003F9FB5392E322F32
        E80E93A33C620E0E820A45EE427BF0A5B7BF142A2878626C41B8765A55312AC7
        C510D435948E09CB2517868D39A665E35C5FB2AEB5B368C323DB0E9FC924861F
        DB78F7F53B013895119D75666DC5E4ABE0F1522EEBE4FFA07C454892D3754FEF
        9AF2C81FDF3B585359BE63F9C2DADAD54B2FC3ECDAF188C44220111DE7333901
        1324AC212CE63E3BA31C6BAE9F85158B66D64E9D5CF587F52F1D3AB876FDE6E9
        00F4AA884EABA33AE123E5E0172BA03E26467499F5F77FF5FAE2C231C53BEAE7
        5417CF9A3A0E71D34647C28046FC1E21C271F95CDA71C038306C0A2F06D17000
        5FFCFC7434B7F65FF54F90C6BB7EB2FDF6DF6D58F30600ABA62080F694C5D9A8
        020C9CAB8D2A3DF275CFFCEDBAB12565AFDD7CEDCCE29AAA12740C1B4898B68C
        5C042CC15CCF213C94E7A35D3F6C38681DCCA2AAB218B72CBEACB8BC72D2EE3B
        1EDBB60440C06FDE91001C47915729727AE78F5F9E1E1B5BB24D6410A4A1207A
        53A6DC5C40914BEF13FAC17881F8417145D09530C10241AC587C59A0AC7CE22B
        CBD76D9C01409F1C0B505F796A598ECCCC6FB8B1E3AB5FFCBF79934A1D5DC390
        9193646E90CC7149946F69EDC3A6CDFBF0C307B6E3FE07B7E3D92DFF406B5B9F
        DCC776B85C6F7BC15D48E760100D8BAE9A565231F58AE7010405E86F7FB0542A
        41932243511799FD379F7A75D5B892C2BA4A21DD60C6F636637098DAD0F7DB76
        3462E1F4623CF8952BB161CD955834B30C0DBBDE0330AA0473A45252B1BE540E
        1515C5282F1B73F59A07B6AE02A0FBA5D0B38635927D20147BF49AB935E88C1B
        EA5832B58C7001E19977309329034B16D4624A751902411DE98C813F37B6A9CC
        051863AA648E07316EBB9045FDBC4938DB39B001C02E015B80D39D4FAC90D9AF
        FAFF9717971517D406A311983906CB7BD8F260BBB0D59C6BB158087A50934405
        D130745DF308D9C85A4B2926BFE72C061209A37CDC98695FF8EEB3D702D00488
        0E6534C702CB26579608B94C494601700210AAB2A7E0A0848C5E611C5ED713B9
        2610A01E1983707014B1AF84FCDE3D640AD54AD1DC3CE606006F08D87E2D28E3
        FA021A0CA23F6E898C34689C836A045D670770F06033BABB872EBEF82521DC75
        946260308DC79FDC09DF264C28467DFD67306E4289EA1F9B216D31140AB54083
        F33D0530A2000399C902010C244C24321A4A8A748483147BF61CC5B23995987A
        CD2468BA065DA30808CF38918DC641609B0E7E7DFF4D48650C2910A540477702
        BFDFFB3EEEB873A92C692A6B833B0C05B10038D56AF34B405C70C68A723691B5
        1363F40EE6100E6948A74D2C9C3B05D595A508057559062200019B01E04CDD23
        134BC0F22EA4DA2913B065F77124330E12691B8CA9D3643AF291429F97421971
        9B2769E4E426B6B7D8301CD570D110344DF38E21BC9A3209C605F28E29938008
        3E0000B2F9DCBDFDDF52394B7E1F3986F0CCB659226BE44A1D682A4B4EC12950
        5010C6997383A8A92A050154F600D2860D65EAFA2D8804DC215451084E7CDC8D
        68414836A24FCE094336CB0497938467BAFFF2E058B9D366DAACA3D1286CB913
        0301455DFD6C6CF9EB096C6A382CEBAF09E89A86171EBAC54F02B1888E5B7FB4
        1D94C22F910C7CE9757391356DF9F6C3993A5556C680651AAD0064017D0558CE
        CC1E4DC5537585E12818E1B0E5F60EA2454558B97A3174AAEAEEDA8B2FECC170
        228B582CACB2E69035FEFA376E829163E05C653D94B290CBD9925C7CCA6C5343
        49E4B2C963009C4F05904DF4EFEFECE8BB77D6C471702C064EA894326D3AC8E4
        32D04080D11854B339AEACA38DD73D682065A82E63720D6430FE5A4DA738D7D1
        874CBCEF801F00F54AE01C7FF5D1B77B7A2E7C32D4979033B2C16CE6351B8725
        BC7FABB9A6530A47122BD90589FA9D3158729DFFAC24972C83FDC3E8EE1E683F
        F9DA930746AEE2ABEF78817BF5B0D2F1EEA7DA3F6A03A8CACA71617B70A03CE3
        8846C368E9BC80B1B1104A0A433879A60791481896ED28E2FCF56E120E97CAB5
        7FD48E647FC746008617007436F2A606EBE4EE871B026BB77CABABAD67FEF8EA
        09F23E00A1A0840302C45B39FFEACBF18B8623F8E9D643702D1C09A26EE16C64
        0C47F60207469A8E73F5DCF9F61EF476F59DFC60CF130D004CBF09A9FBC0BBE7
        53DCAB8939D871ECDE96532D4389E1041854296C019677CEB5C2186E5C5E8F95
        B72DC1CAB54B70D32DF5704251E4A4ECFE5F40E9A592897812679A5AE27D67DE
        B90F404665AF8CCCBBED37D8FCF3DBE15A5D554C07109EB1F4FE65A5D597FF69
        E6FC5981A29222990A910A788D887C53133CEFAD86E5BD66272F24F0E1D166AB
        BFEDC4D75ADEFAE5EB00D202F6BC35CFF163DBBF0DCA18C0A1E0AB707AFFC67D
        FDEDA7BEDA74A869B8E76C6FFE8B8602870097F06F42FF1AF65502077A3A7A71
        E29DA6446FEBB13B05F95E3FFB773B539C7901EB7EE43E3C79B22D079EF9FBC4
        392B6FB0CDEC7362A33993674D86AB06710908C77F9AAF1047623089F6E6760C
        F5F636F59F3EF09DEE537F69F6C82D5F1C9F97BA033916683C97E2F941749DD8
        F9AFA65DDFBBA1EBE3E3EB8EBF75F4EC91FD87F1C987ED880FC4918AA7C1D55B
        B01827111747ACADB90D47F61FC5F1370F9F3BFFD1FBF789679709F2534A7645
        7E48707CEAFF02D7939112A820AEA98E11008E7F5C5ADEF8D92B0076D67CEEAE
        05F19E4937EAA1583D40C2540FCD90E5B1CDD300376C23792833D8BEF7DCE197
        0E03C8E61D37C727271E992F3C99FDE5CDB8947DB0EB9EFCFF0D3581401E3439
        AF8C79B0F2E07880E0E097D81F04FF9B913C4FA5F7A18CE78149EFCFFF17FB37
        66AFE935F6829A2E0000000049454E44AE426082}
      LargeImageIndex = 0
      PaintStyle = psCaptionGlyph
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnInsert
      CaptionEx = '&Incluir'
      HintEx = 'Incluir cadastro'
    end
    object dxBarDBNavEdit1: TdxBarDBNavButton
      Category = 0
      Enabled = False
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000C0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FF000000FF000000FF000000FF000000FF000000FF0000
        00FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF000000FF000000FF000000FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF000000FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF}
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000020744558745469746C6500456469743B426172733B526962626F6E3B
        5374616E646172643B3013C3DB0000079A49444154785E9D970B8C15571D87BF
        7366E6DE659FE8429147178AB08020B4F2541AC01A6A1FA2A9C286D4C4DA6A6C
        7DD44668EDC36509BBC44628182435B1910AC4B2B4E5514D6BD19A822C658B20
        B085EE4257D9D2C0020BBB7497BB77EF9D3B738EDC9399CC756F80C673EFC93D
        672699EFF77F9E3B426B8D10821B0C11CD609F3FAEF7100DA860926586C3EE4F
        5AFBE20104026D3EB0F4A1990290AB7ED750535C5C54A305A075F4D8681BAC15
        10920C0E5FA93D4B1E9C351FD0C1BCB600CFF3B967CE2D8066D2F86106BE72FD
        EEE5B36E1BB94CE0513EB090C2C21803E236B1984DFCEA2C883B81DC68E46E7F
        B3F99FF3000B5037149076BDAC62A67C6EB800AC9AB56FD54C9B52B1ECF66937
        B366C35EEE9A5B692CF611F85AE3FA0A3F9D893CA1341A01985F0AE3165AE9BC
        105D53809BF6B27009C8A79E7D63F9CC2F8CAA9E3DAD221097414A81E3481C5B
        625B16524A03CEF540B4D318B14A7D6201A26EE91DC6F225757FAE993DFDB3D5
        73668CC2B22446409F0B5A6059B611202D092A172D72132C5CA3220F881B0A00
        AC9FD66CAF9933736CF5BC2F8DC1B604961400F4A55D84CC0A1008CBB8368285
        C070A70D2FB8FEC93C2000F9C3A7B7D6CC9B3DBEFAAB73C71ACBA51048014240
        3A9D894CF0B56110307564362ABA6244E97E2110425CD303B272DCA8EA742AC5
        4F9EA90784012330B1BF6950A9C97C898CCA4C830A856461E40FDF8F049C7AFC
        07D7F780529AC1E5C554DD3703475AC41C896D5B14C41C0A8BE20C2888216C61
        AC12421AB2F9462E88DA8400A561F8674A012420473FF78291DAF2E877355AE7
        E780569A1143CBF014C46D1BC7B1B06C8963590829B16C810414021551D190DF
        9C34083415C34AD9FDEDFB9E2E8BC59ECC685D3B73E32B7513D66F5480CE13A0
        94A2B478009EAF711C1BDB249C0C6367325A198E0EB23E58F5EF888025356805
        FB77317CECA827473FF2635AD7ACAA79EB9BF7C8F93BFE520BF832171E7A201E
        73B01DDB582E6DCB80858105220C4CA07404D541E26B40F90A0B905AD3B86317
        433A4F32FAE11FD1B36B2723EEBD9302C7AEDEFE95B9CB0199EF01E5E3C4241E
        202D99175B2D0C25F441647A90675A688CD7F0D9F9C6612EF614F1C0CF57D3FD
        A7E74934B7109325944CFE3CC75EDAF60BA02E5F805626DEAE45008FEA4C230C
        2CBC84022DFFB7F1489115EA7370CF9B9CEE28E6FB0FCEE7C889B394A5CAA818
        319686E7D6D3D3E7D2914CAECACF01E33E1D58EE47ECC80791F561ED2900F055
        D672407B741CDACC84D8BFB8E39167D975E8345D1F279093BFCCD65F2EA3B027
        C9BF7B7A9EFB7557672DA0FA97A1F09532969819061711259A32AB901BB65A2C
        A9D0BECFC5439B284A1FA2E2AE15A44FAD6750F22664E95D6CDAF236E76313F0
        52EFAF6DE86A5B01B8809F1F025F117281101EF6FC001C643712A57D2C017819
        CE1FDC4471FA2023EFAE25D5F25BDCEE134C18328D35F51B39DD263879FCE8BA
        CEF3C76A43F8C3B1C2FC32F47D850E9E1F1EAA061A72C32512E57BD812B47F15
        FEEE468AFB0E70CBD7EA48B76D277DE918FEC069BCBFFD156E7715EF9C912F74
        7ED4BC124801DE8C81954A25CF9027C0E0028A6FEA2ED807D0F0BE52CA249CF2
        5CCE375E85F73632FA1B2BB9D2B48E4CE709C4A0E91CDFF62A8984A6E35377B2
        E7BDE7D70069C003F47167245E5C21F33CE02914845D0EAD4D290633074E169E
        E26CC3068ABAF73166C10AAE1C5A4BA6BD093DF0568EBEBA8DCB973DAC710B19
        30F57E027806D00F2CDDA8415176739CBC24544A199A461978FFE3562B8DC4C7
        F3D29C6B7891922BFB19B3B08EEE036BF02E35A387CEA2E9E51D2492E04C5CC4
        C46F3DC6969D4708E1801E57F411D3CBDB5930F822F94968E03AE8E52A8A7976
        AD41EA2CBC8FF67F6CA0A4FB1D2AABEAF878FF6AD2175AB06E9EC191FAD7B892
        D23893AA98B0F0312C3B4E6B5B67AE1DCC4E6EC629EFC273A3C348E45681CE6D
        B118AB8DF5161AD74D7266CFEF29BBBC8FCAC5B57436ACC6BDD08C533183835B
        5F27D10BB1C9554C5AF4332CBB002D2C233E97E3BB3E998C422BF23DE0850288
        CE54B3CA5AEEA7F8CFDFB650D07B9EF18B96D1B5FB57B81D2D38A3667060EB2E
        7A931A7BCA5578D555B81327A32C6242A2FAFD292D8DFBF8198D82BC1C206C44
        982F46BDF215427B5C687D8FEEA63DCC5FFF3AED7FFC3A6E7B33F698A934D6FF
        95449FC0B9B58A298B97E0140CC0D3E60F2B02617A45EE28295084864602029E
        CA0A004A8B62686DAA01D775C9A432741E6D60C4D479747C7084E4E963C4C7DE
        46E34BBB49A4213EB58AE9DF799C82C262100E314B22826A52D1BB0A009EEB9B
        96AFC917E0BAA9BEBD4FD46D9B23B44005593F747021C306C738D3F4214FAC5C
        CE95B646CE7D7A311FEE6BA5478F2031643C832A1750FFDA615ADBBA1012B416
        611EE1A67AF785DD0F80AC80E05EEEBBA1041CA02098329836503C69FADD0FCD
        9BFDC525CFDC3F9193EF36F2C1C1C374775CA2A5FDE2963F1C3BB70EE80E6A5D
        41747404D0149004DCA647CB15C0CB7F4F41BE07C8042AFB00114C07D04525E5
        F75AC5157CAFBA1ECE35A7C6C57BDF3ED995A87FF354E75E2011C0FDEBBC98FA
        80D6993012791E88AEF55BDBC0C0CAC9F32F745E3CDB9A492776241397B67B6E
        F21CD01B5897092DE71AE3E9F145E1BD7C01D71AC228430621290AC4B8403A8C
        69087E6A5CA1E6FF18FF05EE11264630DDE5080000000049454E44AE426082}
      PaintStyle = psCaptionGlyph
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnEdit
      CaptionEx = '&Editar'
      HintEx = 'Editar cadastro'
    end
    object dxBarDBNavPost1: TdxBarDBNavButton
      Category = 0
      Enabled = False
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000C0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FF000000FF000000FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FF000000FF000000FF000000FF000000FF000000FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF0000
        00FF000000FF000000FFC0C0C0FF000000FF000000FF000000FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF0000
        00FF000000FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF000000FF000000FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF000000FF0000
        00FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF0000
        00FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF0000
        00FF000000FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FF000000FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF}
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000000B744558745469746C6500536176653BF9E8F9090000054549444154
        785EC557BF8B5C5514FEEE7D33B3EE6E36B1D02882853F1A41D046540C1241B4
        B5B3482C36601A41831048A148F01FD022B516366A21181051D0C2422DACC222
        61A322E81A22C4EC8FECECBC7B7E48BEC39DF774D80109EAEE5CCEBB770EE73B
        E73BDFB96F37B93BFECF9F34BB47BAA958F3977796AB0F860CA0A1E59A097EB3
        E0155801080003E0831E40F3F29BEFBC315A583893726E524AC8D9F1F3C575EC
        6C6F33DF83CB4B78F8A10760E630535A3583DD586AD01BCB14A60E55C1DADA1A
        960E2EC31D70A59F8A94F73FF9F0DC090065268166343A7DE491079B9C123C03
        C3A6C1D98FCE6379296369F900F2CA019C5C7D2EF87300B41E00A0EDCE0C7861
        F5149E7DFA28133235987BF3D9E75F3E0FE064B000F413C86636823BBEFF7103
        9680C5E1B032171F37A83936AEEE76C0B48E13C78E47E752B87F7CFE03FA5EB8
        7009A24AC6EE387C1BCCADB6195D02B1928B43CC482B6B1A3488CA12AD9A41D4
        508A72DF4F20E5014C17909070F7BDF7A12D06538565836BF88B29FA629F49C0
        5C604C4019C82A403890CA228622DA07E773CA0D9AD420370DCC9C3E2CC4127D
        61606CB72AFE590628149510514A0E3705D10912622BD23160D6B190F3008366
        C444CCC2A702BA1B1719F1FD13486ED102332103AC8EBF011209284A11021BC0
        24C0041A0C4723348301D40D93220474846ECC13AD9B55BCD90454850CA81852
        4E5013A0A39994B645A2BA6E0268536AB0B872887B53431B0C80076422CE1DB3
        0CD4839863D5108D27B6C2BD5B95DA5622306BF10879E6EC59DC7EEB52F83942
        2766A45C482199658C7D5B605A0820AAC89618E0F05D77E2F2AF1BD8D9B98695
        8382574FBD0603A924D5608F09C4E7F8CE09B872E810CC8DBE6CAF1A8BAA7833
        09882844249848405B5A3CFED493481C4320E4CE0F0113590136AF5D45BBBB0B
        EFB342C11134C4EDCED6CE6320FA5F04AAC2FDD6B620F7D2F5C427027B02ADAA
        E28F2BBFD3A10A13912DAC6A84E318F131670A28C222A15EB7B8AFAC03EFD266
        1087A784EB9B9BEC710AB0AA09520FAFAE46ABB5553DCCBFB6403534D00A9013
        C0C084428A2D12174F48F378E73ADC957BC0C31F98566EFD6B5C0566BAFF1458
        2928A54044812682EDEE6C414B81A78EDAA8D2216D8148A1C098265131BDA472
        CE5858589CEE952FA5392D10DE01857D8502098632D9C3BBE75E8F96047C7D3F
        B09AC0440566325507C7564F63301CC5182B606270DF7F0A083E29424BB1C121
        25F420BD2ADDC1A5D6ED031EB1E7D4F0EA65C52187F92DE0A1A942DBB8E9728E
        40E63AADFA8BAF7F22A89A626B6B0F6D89AB59D598A888D2BE78FC31C04126CD
        AC261963A8B36398FA53D096021381A6CA8A4C031C7DF49E182FEB546E7D061C
        DD9B2F318100E4B9431A5E53FBBE0B20F1A2E14D9852CD5AA7E2FAF4AB75EEB7
        775A4C4461A26480D51783A8F0E27969F54865607A2BAA0359C9C03C110A8417
        91C641ED1BA2D2679EB81FAC41630AE2C3EA7A62AC3D07935123207D285AC47E
        760CA90183460B6A30F6D7ADCA9F60F5B12FBE2E21EE5358115888B713ADEDFF
        1711AA065404E869E0BDEF7EC3D6B840D4312E420DA8D5A02008E7DC416BD329
        316A25D5C41573FF222245CAACAB58A28F79B488810DA1E2183546F0C6007547
        2638E299ADE9C693FA5183A504D497D7DF4498C3F0545DCDD494A04E914542D1
        4BA78DEA120C209D5627C108CE67207C9C3D9FF6AA8EA4001062760C305E3B1E
        6FBF7D69FDE22BC9916BA06193F1ED373F6032919810E9FE09916A4599608C9D
        134835D695CBBFA0C7B9B5EDF5B7004C88D99DD30E01DCC2D5BF1FE6AFF40FBE
        F7A81C7B00C6005A00DED74001A0F12532FE9D1F8FCAA1F3FE3BFE2F3E5E377F
        02C73EB2E2D2D4F54C0000000049454E44AE426082}
      PaintStyle = psCaptionGlyph
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnPost
    end
    object dxBarDBNavCancel1: TdxBarDBNavButton
      Category = 0
      Enabled = False
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000C0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FF000000FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF0000
        00FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FF000000FF000000FF000000FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF0000
        00FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FF000000FF000000FF000000FFC0C0C0FF000000FF000000FF0000
        00FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FF000000FF000000FF000000FF000000FF000000FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF000000FF000000FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FF000000FF000000FF000000FF000000FF000000FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FF000000FF000000FF000000FFC0C0C0FF000000FF000000FF0000
        00FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FF000000FF000000FF000000FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF0000
        00FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FF000000FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF0000
        00FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF}
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000023744558745469746C650043616E63656C3B53746F703B457869743B
        426172733B526962626F6E3B4C9696B2000009AA49444154785E8D96097054D7
        9946CF7DBD6869ADAD1648AC025B8AC35694C106EC84C910E2B552C626768D17
        927126953126D86106B298941D3B4E4219882B95C2E5D8659C541687C5186C27
        98D8C090106C30036637C8C6420809099044AB97F7FADD25AF6EF54B75854A25
        57F5EBEB5BAA7AE7FB37BD165D2B9E020460E5CA63C00840DB0BA3BFFBB8E01F
        1F3A9E586E0C06A30D020255F633068CD14198E25DD3B6FAA744D186E6871610
        3A305C79A2C996102A4AE34AABD0F2E40F0D60C3EF395E2483556D306830868F
        57BD0440545B57DAC229C50B1180C785100710FB962D995253563E2FE2389F17
        980A4730C56883D2EA089ABC2BFD1D17B3D9CD739E7BE130A063CD13B435D27D
        D4A035C69AB181560A6BC028EBE8CAAC1BC68759460E7D67E99D8978FCE9584D
        756BA2ED2ACAC78EC089C5890F6B000C5EEFC5A9DAF3C87774CDAA3AD1BEFCF8
        D225ED97F3F92767AD797E23A0622326E942D7618D36802D3F4A692C474985D1
        BAA4C286D8B03601383B163DD432B2AEEE378991CD33EA6E9846D9F006E4E020
        EAF265D4904FA6F323301AA722018E43D55523A9BB6E326EEFA5D6F23FEDFDF5
        A1C58B1E3D70AEFBCB0F6E7AED747CD4140918AF63BFB11590B2D802A5213400
        C49AAEB159BFF7E8E27F4F5627D6A566CFAC4FB4B550E83E47F683330060DB66
        15B4467A0356FDBEF3D650A4A696E6DBFE8DC4C933D74D7BE7CF7BB6DCFB1F0F
        DCF1CAEFB6037E59CB74BCF6778D94AA68404A821B08417CE4440BDFFDF0C239
        C9DA9A379ABE38371E118ADCD143608A6C0CA258CA709AB193AD8350A034FE85
        3E0AE7CF53317A0CA3EFB9BD5EADFFFDE64D5F9A3FEFAE8DAF5A135A29A38B06
        C489258F32FE9B0F523676AA2DFBE6FF5CD0DA3A7CF8EED1F36F6D3099016450
        EED2F10C81188A6A570BAC81623B95C2DE038DD62711A966DA7FB5A57F5F67E7
        E716BFFDF64940EEB9F73E7DC32BBF255AB89C06290907AEA5BA766DEAC6E90D
        7AE042001FF8BBD5B4E0A2DA08E1816A9BBD3514A8D1D2DEBDA01231AFC08839
        B392535ECFBD08CC057400B72938856C9EB2ABA6DBEC777DEDAB775734266755
        D49653B8D887F16510BE0D7730CDBEF56FF187956B39F8C6FF21F36EF837A4EB
        72F0CD3FF1FAAA5FB267C31F71D343185FA17D89917ED08E6E2A130E95C31B66
        BC72CB6D7703514060B74029C2EC134EF489E4B409E43B3B402A8C1000F83997
        FD01544D9A49E382A50CFE7E3DFB376FE7DADB3E0BC6F0FE9BBB709BAE66C4D3
        4BC8ECDCCABB9B7670FDED3752561643DB762872A73E64C48CC9F4779C5B0EBC
        0A48C08810BEE1E65BE7B64D6CDB3A6AF654BCDE1E848563F5E05B7BF0DAA691
        BAEB7E9A5235F852717CF50AE2E74E5903B9003EFCBFBEC1F0C65A9C489413CF
        FD0C3ED8CDB573A75938520722291F398A8F769FE0E0F153772C7EFFDD6D801F
        05009C84706E8E2562648E7C40A4B61E1171084B933E7F91D9CFFE377911A3BE
        B60A84C159F65D8EAEFC315269863DB888A6A624A9861A6B68F6D247D93C770B
        F805B432D8E194926C7B3B895435754EE426603B209D22C38918737D141FB7E3
        1332C70E2107FA318502DAF71976750BA75F584373633560D01A1A1AEB98B8EC
        31C62E5C4273006FA8AFB66B99288B7078D533345D3D06E54BB45F406632B83D
        3D76AEE2514D0C311D8800FCAD0228FD29BC1CD22F8067C89CFC9068A28A6843
        8AB6191338B6F3001FACF81153BFF318195701D010649C0C02C000D5017CFF53
        DF277DF400533E772D7E4F376A68085570ED7A8220EA7B08655A8B0644388D42
        6A5D433E87F61438B6F7F84369FCCC106E572757B58EE1E4FB7BD8F7E4F7B9E6
        5BCB01A7F41D82569AF77EFC14E9FD7B98785D1BD96347304A85AB6A0D0442D4
        CBA095AA0EB9610584F25500CBDA61C1080402843562F73ADB711AE3BAF4F70F
        71E14286C692CC35964376286FFB9E3DD381830583213460CDF8D92C526ACB2C
        6D014AC9B497F71A1C5DFCC7220442601504672FE429B44DA7E6FE8731029431
        166EF106C061F423DFE6D4CA1FF0F1F1BD8C1B596D096883C15805819BF19052
        0E855C073080710BEA9497F7D15A61DF904AA203D552D2D3EFE15F731DD50F2C
        64585392645D0263347595116A2B6318FB7C4D32594DEBFF2EC74C9C41674F06
        2D354A29B4AFB0AA35D94C81BC941F87850B2BA0B385C2FE4C363A2B562940FA
        48276C8320EFC3E4FF5946D644B17008E0B1600D7F64E193826DE8CFF800D427
        6B98F9F813ECBAF3566BDE846F4E6D6CC3D3699F21AF700050941AE875F3EFD4
        A5A38B6BE2805416AE1D70105426AA70B7BF4ECB82AF9175253515514EAC5E41
        FF5F76D9FE1E133061E963A4733E5515713E59BB96EA9A4A942C20B4C1983060
        60C0A5CF7377961A30805A7EEAC8AEB59F9E763A1D33E3AB2B44F125031A8761
        C3CAE97C6D0300E3EF9CCFB155CF7369CF2E4635558380AEDD3B396E0C931E5A
        48FBCB1BE8D8B88E31236BF12EF4DACC2DD97118E8CF3230A43A56F77EB21390
        80717E71CDB47090FDEE7C7E45DFA0414A85B2FD0F5449DCBEF334A712F4BCB1
        8977EEBD9BF4FBBB696AA820DBDD4DEE5C37231A135CDEBB9BADF3EFA27BCB46
        468F08E07D7D685F15E748E37B92AE8B8AB36E6E15E002B2F832D2E136F9DFEB
        38BE61CDF8C95FAFECD7D31BAA852D3F8E00A9C805B0D4B01491541299CB920F
        C0DA1800B2E77A48A5523407215D975C4F8F5D6761849D01AD0D3DFD3E035973
        68F5C5331B008F70089552EC9833DDCCD9B15F01DEFFA707160B5DFB878828D4
        D7C4238888C0FE488FA1B3DD200CE28A6FE5866C770F082C102300835D55A519
        C848BA07C5E0DE5CFA112017660F209E1B3B91D66601C017DE3B1A05CA97348E
        BDB9B5BCF295E15585586D854324E2E0005A08AB06AC6A4A8F097F833156A52F
        83AC15E70622FE312FF7959786CE6F05B2805C59DF62960D7410B5BBEAC9F061
        B60ACF5E38F3F6A2E4E8FB0B7EC58BAE57A8ADAB8078DCC1118E3541291C1366
        5C1461E7C79392FE0C9CCF88F4875E66E1CBD9BE6D61F69B278D33273BC3AFE5
        5A53F02518C22381FC9AFEB36FCDAB4ADD34D3AFF9F9E5BC999A2CF7A98C1B9C
        88433C0810441C0703282DC1807D9654643DB8948D30503087F714D20BB7B983
        C78B701F40157C947100103F69BC9AF1F52E1A8363605EFBB9B0B911A00CA85C
        5C33E29EE648FC5B15113326115354C634424059545BB02705DA0872BE20E339
        E42567BB7461E5F3D9DE0D40B674EAD78F6B366068EF8BB13C7B16B1AA613C2D
        355944883530FF93DEF0E600D1A2918AFB2A1BAF1F1589DD5249E4330EA23C26
        68C340C1E853DAE0668CFA4B00DEB6CEBDB40FC8978015C0BA318D619DF9E852
        5960A00BF14CFDB87068AC2208BF72F3ED7467A99108102B8948D120802E865F
        12AA18FC3031CA70E5C11AE05F3BA2449DA28601604A421715ABFFE4FC153983
        B3D2BAD003AD0000000049454E44AE426082}
      PaintStyle = psCaptionGlyph
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnCancel
      CaptionEx = '&Cancelar'
      HintEx = 'Cancelar'
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 1
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'New Button'
      Category = 1
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actionFechar
      Align = iaCenter
      Category = 1
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
        A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
        6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
        2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
        20793D22307078222076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
        262331303B093C7374796C6520747970653D22746578742F637373223E2E5265
        647B66696C6C3A234431314331433B7D3C2F7374796C653E0D0A093C706F6C79
        676F6E2069643D2244656C6574652220636C6173733D225265642220706F696E
        74733D2232382C362032362C342031362C313420362C3420342C362031342C31
        3620342C323620362C32382031362C31382032362C32382032382C3236203138
        2C313620222F3E0D0A3C2F7376673E0D0A}
      PaintStyle = psCaptionGlyph
      AutoGrayScale = False
    end
    object dxBarButton1: TdxBarButton
      Action = actionFechar
      Category = 1
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000029744558745469746C650052656D6F76653B44656C6574653B426172
        733B526962626F6E3B5374616E646172643B635648300000075549444154785E
        CD977B50145716C61B22212BC4C148802C0803828F1194B782E2A0C843015101
        5D175913A3A220441D501010D441E4A988318115105FA408A6203E8201411E22
        AE2042A2154908E003301044E34A2A1BFADB7B879ED801DB72F3CFA6AB7E75BB
        EED439DF77CFDC7BBA9B01F07FE5CF6140E05221A87290FBFFE952191D3F3A87
        D28090B01A419D434DC08890F86B84D7097FE150E7E654040C8C0A56AF5AB932
        AC2369FF604752E260A5BFFF6632F78632C9CDD5AB194AD3EA8061021428E3C7
        50D132DFE5A16D0909836D72F960E9D2A55BC9DC58EE371521034AF1372EAFF0
        8BBC7B3815FFB9DFACA0E35032CA7D7D6534B1D2C450CFD78C826ECA577CF1B1
        177C7CB6B51F48C42F1D8DF8A5BD01DF93FB0B4B7CA2499C86D2849081D72B7C
        7DB77512F19F6FD5E271692106CE9EC2CFCD9568CF4846A9CFEF57F26B570BF3
        EB8316BEB8C6E75EDEB2B6F4443CBBFE25FA4E7C88DEEC143CAD2E465BDA3E9C
        F3F48AE02AA9FA2203AAB3C462CDD6F8F8C1678DE5182839894745B90AFA8B72
        F0ACA10C34F1594F6F197F257CF1E2C59EB2EF52E4F8777D297AF332D0732411
        0F0F27A03B632F06BE388DDB51D183D3F5F4445C15471978CDD36CB256DDBA0D
        8FFB8AF2F16341D6734E7F8CBE531F91C41740058A172DA6263469C53834CFB8
        2F0A6F4DDA8BA757CEA3F7683ABA33A9F01E741F8847576A2CEE2545A376EDFA
        A75243A30942065409EA472CACDEAD0A0C18EA3D9689DE7C8E6387F0431E2503
        3FD594A075FF1E7CEAEA114E62B42885AEEE11771277E3A7EA123CCC4A41D781
        DD78901E870744F87ED24EDCDD17894B3E5E43072533DFE7F691EACB36E1D883
        D3CC3756AE5A39D4939D8A87FF4CC3C36C4A2A7AB2081F27E3C9A5227C238FC3
        89F92E51279C5DA26ECB77E149E567E8FE30110FD276E15E720CEEED27C2093B
        D0B9371C173D3D86924CA786108D37096A429B90BF993493274D092E5BBE6CA8
        EBF03E45623A7691B2761D2264C8F188FCA7B7E2A3150C9415D2395A66C56AEF
        CAB7A3734F383AE2B6E2BCEB42562E36A5C7781C5FFC850672CC244A136AD4ED
        3E23D3E02FBCBD86EEA5C7E33E252D0EF753C90A538657F963F131F49F3B49E6
        E2C84AB7A3632F118DDF867622DC161D861267291BF757A3502220E2F68AEA4B
        0D648B27334F2ACFF04D8C8B3710879CF3701FEA4C8CC25D422759616742243A
        E45430021DBB6568A7A2B15BF07D4C18110EC5773B36A1688E231BF5B67E18DD
        237CF1C3FAC6C29DF088810933F065013370B1E07726A275F543CF38CC62EF84
        04E2DB8820B46DDF84B6A810B429052336A275EBFBB813B606B7D7F9E313CB99
        6CC45BBA1F8C14EF2BC9630EEA1A081B38F48E21D37FEE38219FE93F9BFFDBC9
        2068CBB4F56485D6566CCB4A0F7C4559E18E16FF619AFDDDD0E2E786663F579C
        924C63378B26D086A3C36B3A2ABD85590C256D829EB081F3CEAE4CDF674799BE
        3347F90F259AE4ED0C2BFB5D756B56E3EBC0A5B8B9DC9563219A96B9A069B90B
        372E44F5DFFC916A61134F627479474EA5E764264349D1D21136F0F95C17E687
        82237C715ABEF19996F63BAFAE5F8B8EA42834AFF2C48DA50B70C387321F8D4B
        E6E386B73319A568F096E2DB9DC1A85913887473DB18123B81A0AE34D19593CA
        7C6A3B57D840B183335F9C06BE7570866D74ED7BFF40BB3C1C4D2B3CD0E02525
        CC2338A1C1D309D73DE7E1FA62A7E72C9A8B6FC2D7A32A6015522456B1D404FF
        49FA89B5A3A08151E2E9E6D631D58101688BDB82265F57FC8B2457E03107D728
        EE14470E075C737340BDDB6CD4BBCEC6ADD035A858E18FC4293376D13DC49910
        3A86A3C553255631A41BA29594B491949C2427D0E40E0A81AB0B67236F92314B
        A95B300B575DEC87596047463BD491B1256815CA962D83DCD43C8EEE239E09E1
        C731154F9E6A1973C9CF9794720329B5334DAC4491F88AB31DF24CC4EC060D51
        2CE598D924B6566A4BE66D08D6B822B546ED3C1B82356EBEE78B522F2FEC3199
        AE34A13ED200FF39F066829985ECA2F712DCFEE05D5C5BE444C48613D74A4972
        420D499C6B6CC486686AED2031FA94604DADC83CD3496CF55C4BD4FCC64C05D5
        7366A0F1EFDE38EBE28658F1D4EDB42B2A1FE5230DA811B44FDB48079A830250
        4FFEE35A272BD428B0A4906496C8111B2AC57508633974A8895C1363F6B28305
        AA08976753CC7179D630F5BEEEC8B7707CCC1D4F354103C72DE7F4D62D9612B1
        61F7D58E140BD0C4394613592A440579AF67147AAFB3495314956B2C662BEC25
        A8B423D84FC3F0FD3494DB99235762DF4763850CD044E3220D2707155AD9B355
        0ED4F97454122A08470D0D468AF35FB755B939DD8D1AA29DB96223B6DC660A2E
        112AACC9483839C582DDAA671C4CDBB3F2480A6D42ED087DD32D0516566C998D
        04E5B61264E9EBBF50BC699D3FD3B4D68F1961428F9AC89E3891BD3873324A67
        98E1B8D974364C472CE3CAAF2EF842C26FBDB2774C367E24B6E823F407698836
        8FECED49226D86CFC84AACD71085654E943CCA3490F485EA18858C6CCDAFD288
        443488438BCE097C9C08C58F27E8718CE777C357FD321AC37BE91CF312F13F1A
        FF0ADF867C84AF3F1AFFE7F83AFE2FD99CCA83727FB1B90000000049454E44AE
        426082}
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Action = actionFechar
      Align = iaRight
      Category = 1
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000029744558745469746C650052656D6F76653B44656C6574653B426172
        733B526962626F6E3B5374616E646172643B635648300000075549444154785E
        CD977B50145716C61B22212BC4C148802C0803828F1194B782E2A0C843015101
        5D175913A3A220441D501010D441E4A988318115105FA408A6203E8201411E22
        AE2042A2154908E003301044E34A2A1BFADB7B879ED801DB72F3CFA6AB7E75BB
        EED439DF77CFDC7BBA9B01F07FE5CF6140E05221A87290FBFFE952191D3F3A87
        D28090B01A419D434DC08890F86B84D7097FE150E7E654040C8C0A56AF5AB932
        AC2369FF604752E260A5BFFF6632F78632C9CDD5AB194AD3EA8061021428E3C7
        50D132DFE5A16D0909836D72F960E9D2A55BC9DC58EE371521034AF1372EAFF0
        8BBC7B3815FFB9DFACA0E35032CA7D7D6534B1D2C450CFD78C826ECA577CF1B1
        177C7CB6B51F48C42F1D8DF8A5BD01DF93FB0B4B7CA2499C86D2849081D72B7C
        7DB77512F19F6FD5E271692106CE9EC2CFCD9568CF4846A9CFEF57F26B570BF3
        EB8316BEB8C6E75EDEB2B6F4443CBBFE25FA4E7C88DEEC143CAD2E465BDA3E9C
        F3F48AE02AA9FA2203AAB3C462CDD6F8F8C1678DE5182839894745B90AFA8B72
        F0ACA10C34F1594F6F197F257CF1E2C59EB2EF52E4F8777D297AF332D0732411
        0F0F27A03B632F06BE388DDB51D183D3F5F4445C15471978CDD36CB256DDBA0D
        8FFB8AF2F16341D6734E7F8CBE531F91C41740058A172DA6263469C53834CFB8
        2F0A6F4DDA8BA757CEA3F7683ABA33A9F01E741F8847576A2CEE2545A376EDFA
        A75243A30942065409EA472CACDEAD0A0C18EA3D9689DE7C8E6387F0431E2503
        3FD594A075FF1E7CEAEA114E62B42885AEEE11771277E3A7EA123CCC4A41D781
        DD78901E870744F87ED24EDCDD17894B3E5E43072533DFE7F691EACB36E1D883
        D3CC3756AE5A39D4939D8A87FF4CC3C36C4A2A7AB2081F27E3C9A5227C238FC3
        89F92E51279C5DA26ECB77E149E567E8FE30110FD276E15E720CEEED27C2093B
        D0B9371C173D3D86924CA786108D37096A429B90BF993493274D092E5BBE6CA8
        EBF03E45623A7691B2761D2264C8F188FCA7B7E2A3150C9415D2395A66C56AEF
        CAB7A3734F383AE2B6E2BCEB42562E36A5C7781C5FFC850672CC244A136AD4ED
        3E23D3E02FBCBD86EEA5C7E33E252D0EF753C90A538657F963F131F49F3B49E6
        E2C84AB7A3632F118DDF867622DC161D861267291BF757A3502220E2F68AEA4B
        0D648B27334F2ACFF04D8C8B3710879CF3701FEA4C8CC25D422759616742243A
        E45430021DBB6568A7A2B15BF07D4C18110EC5773B36A1688E231BF5B67E18DD
        237CF1C3FAC6C29DF088810933F065013370B1E07726A275F543CF38CC62EF84
        04E2DB8820B46DDF84B6A810B429052336A275EBFBB813B606B7D7F9E313CB99
        6CC45BBA1F8C14EF2BC9630EEA1A081B38F48E21D37FEE38219FE93F9BFFDBC9
        2068CBB4F56485D6566CCB4A0F7C4559E18E16FF619AFDDDD0E2E786663F579C
        924C63378B26D086A3C36B3A2ABD85590C256D829EB081F3CEAE4CDF674799BE
        3347F90F259AE4ED0C2BFB5D756B56E3EBC0A5B8B9DC9563219A96B9A069B90B
        372E44F5DFFC916A61134F627479474EA5E764264349D1D21136F0F95C17E687
        82237C715ABEF19996F63BAFAE5F8B8EA42834AFF2C48DA50B70C387321F8D4B
        E6E386B73319A568F096E2DB9DC1A85913887473DB18123B81A0AE34D19593CA
        7C6A3B57D840B183335F9C06BE7570866D74ED7BFF40BB3C1C4D2B3CD0E02525
        CC2338A1C1D309D73DE7E1FA62A7E72C9A8B6FC2D7A32A6015522456B1D404FF
        49FA89B5A3A08151E2E9E6D631D58101688BDB82265F57FC8B2457E03107D728
        EE14470E075C737340BDDB6CD4BBCEC6ADD035A858E18FC4293376D13DC49910
        3A86A3C553255631A41BA29594B491949C2427D0E40E0A81AB0B67236F92314B
        A95B300B575DEC87596047463BD491B1256815CA962D83DCD43C8EEE239E09E1
        C731154F9E6A1973C9CF9794720329B5334DAC4491F88AB31DF24CC4EC060D51
        2CE598D924B6566A4BE66D08D6B822B546ED3C1B82356EBEE78B522F2FEC3199
        AE34A13ED200FF39F066829985ECA2F712DCFEE05D5C5BE444C48613D74A4972
        420D499C6B6CC486686AED2031FA94604DADC83CD3496CF55C4BD4FCC64C05D5
        7366A0F1EFDE38EBE28658F1D4EDB42B2A1FE5230DA811B44FDB48079A830250
        4FFEE35A272BD428B0A4906496C8111B2AC57508633974A8895C1363F6B28305
        AA08976753CC7179D630F5BEEEC8B7707CCC1D4F354103C72DE7F4D62D9612B1
        61F7D58E140BD0C4394613592A440579AF67147AAFB3495314956B2C662BEC25
        A8B423D84FC3F0FD3494DB99235762DF4763850CD044E3220D2707155AD9B355
        0ED4F97454122A08470D0D468AF35FB755B939DD8D1AA29DB96223B6DC660A2E
        112AACC9483839C582DDAA671C4CDBB3F2480A6D42ED087DD32D0516566C998D
        04E5B61264E9EBBF50BC699D3FD3B4D68F1961428F9AC89E3891BD3873324A67
        98E1B8D974364C472CE3CAAF2EF842C26FBDB2774C367E24B6E823F407698836
        8FECED49226D86CFC84AACD71085654E943CCA3490F485EA18858C6CCDAFD288
        443488438BCE097C9C08C58F27E8718CE777C357FD321AC37BE91CF312F13F1A
        FF0ADF867C84AF3F1AFFE7F83AFE2FD99CCA83727FB1B90000000049454E44AE
        426082}
      PaintStyle = psCaptionGlyph
    end
  end
  object dxBarDBNavigator1: TdxBarDBNavigator
    BarManager = dxBarManager1
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DBCheckLinks = <>
    VisibleButtons = [dxbnInsert, dxbnDelete, dxbnEdit, dxbnPost, dxbnCancel]
    Left = 232
    Top = 323
  end
end
