object view_FormasCredito: Tview_FormasCredito
  Left = 0
  Top = 0
  Caption = 'Cadastro de Formas de Cr'#233'ditos'
  ClientHeight = 404
  ClientWidth = 761
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Microsoft JhengHei UI'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 761
    Height = 404
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    ExplicitLeft = 104
    ExplicitTop = 96
    ExplicitWidth = 300
    ExplicitHeight = 250
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
    object gridFormas: TcxGrid
      Left = 12
      Top = 42
      Width = 737
      Height = 318
      TabOrder = 1
      object gridFormasDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsForma
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object gridFormasDBTableView1cod_tipo_conta: TcxGridDBColumn
          DataBinding.FieldName = 'cod_tipo_conta'
        end
        object gridFormasDBTableView1des_tipo_conta: TcxGridDBColumn
          DataBinding.FieldName = 'des_tipo_conta'
        end
      end
      object gridFormasLevel1: TcxGridLevel
        GridView = gridFormasDBTableView1
      end
    end
    object cxButton1: TcxButton
      Left = 659
      Top = 367
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Action = actionFechar
      TabOrder = 2
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = labelTitle
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = gridFormas
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object actionList: TActionList
    Images = dm.imageList16_16
    Left = 488
    object actionFechar: TAction
      Caption = '&Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 1
      OnExecute = actionFecharExecute
    end
  end
  object memTableFormas: TFDMemTable
    AfterInsert = memTableFormasAfterInsert
    AfterEdit = memTableFormasAfterEdit
    AfterPost = memTableFormasAfterPost
    AfterCancel = memTableFormasAfterCancel
    BeforeDelete = memTableFormasBeforeDelete
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 360
    object memTableFormascod_tipo_conta: TIntegerField
      FieldName = 'cod_tipo_conta'
    end
    object memTableFormasdes_tipo_conta: TStringField
      FieldName = 'des_tipo_conta'
      Size = 50
    end
  end
  object dsForma: TDataSource
    AutoEdit = False
    DataSet = memTableFormas
    Left = 432
  end
end
