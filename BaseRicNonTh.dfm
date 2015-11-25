object FBaseRicNonTh: TFBaseRicNonTh
  Left = 703
  Top = 144
  AutoScroll = False
  BorderIcons = [biSystemMenu, biMaximize]
  ClientHeight = 413
  ClientWidth = 632
  Color = clBtnFace
  DefaultMonitor = dmPrimary
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Source Sans Pro'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  NavigationKeys = [nkUpDnArrows, nkCtrlTab]
  PixelsPerInch = 96
  TextHeight = 24
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 363
    Align = alBottom
    TabOrder = 0
    Height = 50
    Width = 632
    object btConferma: TcxButton
      Left = 10
      Top = 4
      Width = 120
      Height = 41
      Action = Seleziona
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Source Sans Pro'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object btAnnulla: TcxButton
      Left = 144
      Top = 4
      Width = 120
      Height = 41
      Action = aAnnulla
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Source Sans Pro'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object cxPersonalizza: TcxButton
      Left = 595
      Top = 9
      Width = 34
      Height = 38
      Hint = 'Personalizza'
      TabOrder = 2
      OnClick = cxPersonalizzaClick
      Align = alRight
      DropDownMenu = PopupMenuPersonalizza
      Kind = cxbkDropDownButton
      LookAndFeel.Kind = lfOffice11
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 30
    Width = 632
    Height = 333
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    TabOrder = 5
    object resultgrid: TcxGridDBTableView
      OnDblClick = resultgridDblClick
      OnKeyDown = resultgridKeyDown
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = sRicerca
      DataController.Filter.MaxValueListCount = 1000
      DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnPopup.MaxDropDownItemCount = 12
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnMoving = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      Preview.AutoHeight = False
      Preview.MaxLineCount = 2
    end
    object cxGridLevel: TcxGridLevel
      GridView = resultgrid
    end
  end
  object QRicerca: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeEdit = QRicercaBeforeEdit
    AfterQBE = QRicercaAfterQBE
    SequenceField.ApplyMoment = amOnPost
    OnAfterPopulate = QRicercaAfterPopulate
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    Params = <>
    QBEMode = True
    Left = 240
    Top = 312
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object sRicerca: TDataSource
    DataSet = QRicerca
    Left = 308
    Top = 312
  end
  object ActionList1: TActionList
    Images = FDMCommon.cxImageNavigator16
    Left = 492
    Top = 260
    object AttivaRicerca: TAction
      Caption = 'Inizia ricerca'
      Hint = 'Inizia ricerca'
      ImageIndex = 14
      ShortCut = 121
      OnExecute = btRicercaClick
      OnUpdate = AttivaRicercaUpdate
    end
    object AzzeraCampi: TAction
      Caption = 'Annulla ricerca'
      Hint = 'Annulla campi ricerca'
      ImageIndex = 32
      ShortCut = 120
      OnExecute = btClrfldClick
      OnUpdate = AzzeraCampiUpdate
    end
    object Seleziona: TAction
      Caption = 'Seleziona'
      Hint = 'Seleziona record attivo'
      ImageIndex = 9
      ShortCut = 123
      OnExecute = SelezionaExecute
      OnUpdate = SelezionaUpdate
    end
    object aAnnulla: TAction
      Caption = 'Annulla'
      ImageIndex = 10
      OnExecute = aAnnullaExecute
    end
  end
  object csEZKeys1: TcsEZKeys
    KeyPreview = True
    NavigationKeys = [nkUpDnArrows, nkCtrlTab]
    Left = 420
    Top = 320
  end
  object dxBarManager1: TdxBarManager
    AllowReset = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Source Sans Pro'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 336
    Top = 232
    DockControlHeights = (
      0
      0
      30
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Comandi'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'Comandi'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Action = AttivaRicerca
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = AzzeraCampi
      Category = 0
    end
  end
  object PopupMenuPersonalizza: TPopupMenu
    Left = 508
    Top = 200
    object ResetForm: TMenuItem
      Caption = 'Reset Form Layout'
      OnClick = ResetFormClick
    end
  end
end
