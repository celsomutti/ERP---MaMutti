object view_ConfirmaSenha: Tview_ConfirmaSenha
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Senha'
  ClientHeight = 183
  ClientWidth = 351
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Microsoft JhengHei UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 351
    Height = 183
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    object senha: TcxButtonEdit
      Left = 12
      Top = 33
      ParentFont = False
      Properties.Buttons = <
        item
          Action = actionVisualizarSenha
          Default = True
          Kind = bkGlyph
        end>
      Properties.EchoMode = eemPassword
      Properties.Images = dm.imageList16_16
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Microsoft JhengHei UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 327
    end
    object confirmacao: TcxButtonEdit
      Left = 12
      Top = 85
      Properties.Buttons = <
        item
          Action = actionVisualizarConfirmacao
          Default = True
          Kind = bkGlyph
        end>
      Properties.EchoMode = eemPassword
      Properties.Images = dm.imageList16_16
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Width = 327
    end
    object cxButton1: TcxButton
      Left = 12
      Top = 146
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Action = actionOk
      TabOrder = 3
    end
    object cxButton2: TcxButton
      Left = 250
      Top = 146
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Action = actionCancelar
      TabOrder = 4
    end
    object primeiroAcesso: TcxCheckBox
      Left = 12
      Top = 116
      Caption = 'Altera a Senha no Primeiro Acesso'
      Properties.Alignment = taRightJustify
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
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
      CaptionOptions.Text = 'Senha:'
      CaptionOptions.Layout = clTop
      Control = senha
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Confirma'#231#227'o:'
      CaptionOptions.Layout = clTop
      Control = confirmacao
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 89
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Visible = False
      Control = primeiroAcesso
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object actionList: TActionList
    Images = dm.imageList16_16
    Left = 272
    object actionVisualizarSenha: TAction
      Caption = 'Visualizar Senha'
      Hint = 'Visualizar a senha'
      ImageIndex = 2
      OnExecute = actionVisualizarSenhaExecute
    end
    object actionVisualizarConfirmacao: TAction
      Caption = 'Visualizar Confirma'#231#227'o'
      Hint = 'Visualizar Confirma'#231#227'o de senha'
      ImageIndex = 2
      OnExecute = actionVisualizarConfirmacaoExecute
    end
    object actionOk: TAction
      Caption = '&Ok'
      Hint = 'Nova senha'
      ImageIndex = 0
      OnExecute = actionOkExecute
    end
    object actionCancelar: TAction
      Caption = '&Cancelar'
      Hint = 'Cancelar senha'
      ImageIndex = 1
      OnExecute = actionCancelarExecute
    end
  end
end
