object view_Login: Tview_Login
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 253
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object layoutControlLogin: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 424
    Height = 253
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    ExplicitHeight = 181
    object textEditUsuario: TcxTextEdit
      Left = 54
      Top = 52
      Properties.CharCase = ecLowerCase
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 316
    end
    object textEditSenha: TcxTextEdit
      Left = 54
      Top = 117
      Properties.EchoMode = eemPassword
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 316
    end
    object buttonLogar: TcxButton
      Left = 54
      Top = 204
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Action = actionLoginLogar
      TabOrder = 2
    end
    object buttonCancelar: TcxButton
      Left = 290
      Top = 204
      Width = 80
      Height = 25
      Cursor = crHandPoint
      Action = actionLoginCancelar
      Cancel = True
      TabOrder = 3
    end
    object novaSenha: TcxButtonEdit
      Left = 10000
      Top = 10000
      Hint = 'Informe a Nova senha'
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 2
          Kind = bkGlyph
        end>
      Properties.EchoMode = eemPassword
      Properties.Images = dm.imageList16_16
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 4
      Visible = False
      Width = 316
    end
    object confirmaSenha: TcxButtonEdit
      Left = 10000
      Top = 10000
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 2
          Kind = bkGlyph
        end>
      Properties.EchoMode = eemPassword
      Properties.Images = dm.imageList16_16
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Visible = False
      Width = 316
    end
    object cxButton1: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionLoginNovaSenha
      TabOrder = 6
      Visible = False
    end
    object cxButton2: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionLoginCancelaNovaSenha
      TabOrder = 7
      Visible = False
    end
    object layoutControlLoginGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object layoutItemUsuario: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Usu'#225'rio'
      CaptionOptions.Layout = clTop
      Padding.Bottom = 10
      Padding.Left = 30
      Padding.Right = 30
      Padding.Top = 10
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      Control = textEditUsuario
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutItemSenha: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Senha'
      CaptionOptions.Layout = clTop
      Padding.Bottom = 10
      Padding.Left = 30
      Padding.Right = 30
      Padding.Top = 10
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      Control = textEditSenha
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft]
      Control = buttonLogar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 81
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Padding.Right = 30
      Padding.AssignedValues = [lpavRight]
      Control = buttonCancelar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = layoutControlLoginGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.HideTabs = True
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Nova Senha:'
      CaptionOptions.Layout = clTop
      Padding.Bottom = 10
      Padding.Left = 30
      Padding.Right = 30
      Padding.Top = 10
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      Control = novaSenha
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Confirma'#231#227'o da Nova Senha:'
      CaptionOptions.Layout = clTop
      Padding.Bottom = 10
      Padding.Left = 30
      Padding.Right = 30
      Padding.Top = 10
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      Control = confirmaSenha
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft]
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Padding.Right = 30
      Padding.AssignedValues = [lpavRight]
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object actionListLogin: TActionList
    Images = dm.imageList16_16
    Left = 384
    Top = 8
    object actionLoginLogar: TAction
      Category = 'Login'
      Caption = '&OK'
      Hint = 'Logar no sistema'
      ImageIndex = 0
      OnExecute = actionLoginLogarExecute
    end
    object actionLoginCancelar: TAction
      Category = 'Login'
      Caption = '&Cancelar'
      Hint = 'Cancelar login'
      ImageIndex = 1
      OnExecute = actionLoginCancelarExecute
    end
    object actionLoginNovaSenha: TAction
      Category = 'Login'
      Caption = '&Gravar'
      Hint = 'Gravar nova senha'
      ImageIndex = 0
    end
    object actionLoginCancelaNovaSenha: TAction
      Category = 'Login'
      Caption = '&Cancelar'
      Hint = 'Cancelar altera'#231#227'o de senha'
      ImageIndex = 1
      OnExecute = actionLoginCancelaNovaSenhaExecute
    end
    object actionVisualizarNovaSenha: TAction
      Category = 'Login'
      Caption = 'Visualizar'
      OnExecute = actionVisualizarNovaSenhaExecute
    end
    object actionVisualizarConfirmacao: TAction
      Category = 'Login'
      Caption = 'Confirma'#231#227'o'
      Hint = 'Visualizar a Confirma'#231#227'o da Nova Senha'
      OnExecute = actionVisualizarConfirmacaoExecute
    end
  end
end
