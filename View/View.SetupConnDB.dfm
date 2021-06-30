object view_SetupConnDB: Tview_SetupConnDB
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Par'#226'metros de Conex'#227'o com o Banco de Dados'
  ClientHeight = 282
  ClientWidth = 457
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Microsoft JhengHei UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 17
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 457
    Height = 282
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    object driverID: TcxImageComboBox
      Left = 96
      Top = 36
      Properties.Images = dm.imageList16_16
      Properties.Items = <
        item
          Description = 'FireBird'
          ImageIndex = 23
          Value = 'FB'
        end
        item
          Description = 'MongoDB'
          ImageIndex = 22
          Value = 'Mongo'
        end
        item
          Description = 'MS Access'
          ImageIndex = 21
          Value = 'MSAcc'
        end
        item
          Description = 'MySQL'
          ImageIndex = 17
          Value = 'MySQL'
        end
        item
          Description = 'Oracle'
          ImageIndex = 20
          Value = 'Ora'
        end
        item
          Description = 'PostgreSQL'
          ImageIndex = 19
          Value = 'PG'
        end
        item
          Description = 'SQLite'
          ImageIndex = 18
          Value = 'SQLite'
        end>
      Properties.OnChange = driverIDPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 333
    end
    object server: TcxTextEdit
      Left = 96
      Top = 68
      Hint = 'Informe o servidor'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 333
    end
    object porta: TcxMaskEdit
      Left = 96
      Top = 100
      Hint = 'Informe o n'#250'mero da porta de conex'#227'o'
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Text = '0'
      Width = 333
    end
    object catalogo: TcxTextEdit
      Left = 96
      Top = 164
      Hint = 'Informe o catgalogo'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 333
    end
    object protocolo: TcxTextEdit
      Left = 96
      Top = 196
      Hint = 'Informe o protocolo'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 333
    end
    object database: TcxButtonEdit
      Left = 96
      Top = 132
      Properties.Buttons = <
        item
          Action = actionAbrir
          Default = True
          Kind = bkGlyph
          Visible = False
        end>
      Properties.Images = dm.imageList16_16
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 333
    end
    object cxButton1: TcxButton
      Left = 13
      Top = 244
      Width = 84
      Height = 25
      Cursor = crHandPoint
      Action = actionGravar
      TabOrder = 6
    end
    object cxButton2: TcxButton
      Left = 360
      Top = 244
      Width = 84
      Height = 25
      Cursor = crHandPoint
      Action = actionCancelar
      TabOrder = 7
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Par'#226'metros'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'DriverID:'
      Control = driverID
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Servidor:'
      Control = server
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Porta:'
      Control = porta
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Catalogo:'
      Control = catalogo
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Protocolo:'
      Control = protocolo
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Database:'
      Control = database
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 
      'Firebird|*.fdb|MSAccess|*.mdb|MSAccess (2007)|*.accdb|SQLite|*.d' +
      'b'
    Title = 'Banco de dados'
    Left = 312
    Top = 8
  end
  object actionList: TActionList
    Images = dm.imageList16_16
    Left = 368
    Top = 8
    object actionGravar: TAction
      Caption = '&OK'
      Hint = 'Gravar par'#226'metros'
      ImageIndex = 0
      OnExecute = actionGravarExecute
    end
    object actionCancelar: TAction
      Caption = '&Cancelar'
      Hint = 'Cancelar par'#226'metros'
      ImageIndex = 1
      OnExecute = actionCancelarExecute
    end
    object actionAbrir: TAction
      Caption = 'Abrir'
      Hint = 'Abrir arquivo de banco de dados'
      ImageIndex = 24
      OnExecute = actionAbrirExecute
    end
  end
end
