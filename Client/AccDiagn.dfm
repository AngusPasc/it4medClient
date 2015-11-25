inherited FAccDiagn: TFAccDiagn
  Width = 1000
  Height = 500
  Constraints.MinHeight = 500
  Constraints.MinWidth = 1000
  ParentShowHint = False
  ShowHint = True
  object dxPageControl: TcxPageControl [0]
    Left = 0
    Top = 34
    Width = 1000
    Height = 466
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = dxTabElenco
    Properties.CustomButtons.Buttons = <>
    Properties.TabHeight = 20
    Properties.TabWidth = 100
    ClientRectBottom = 460
    ClientRectLeft = 3
    ClientRectRight = 994
    ClientRectTop = 37
    object dxTabPreno: TcxTabSheet
      Caption = 'dxTabPreno'
      object dxDockPanel1: TPanel
        Left = 0
        Top = 0
        Width = 473
        Height = 423
        Align = alLeft
        Caption = 'Richieste reparti'
        TabOrder = 0
        object cxGridRichieste: TcxGrid
          Left = 1
          Top = 35
          Width = 471
          Height = 387
          Align = alClient
          PopupMenu = dxBarPopRiaccetta
          TabOrder = 0
          object GridRichieste: TcxGridDBTableView
            DragMode = dmAutomatic
            OnDblClick = GridRichiesteDblClick
            OnDragDrop = GridRichiesteDragDrop
            OnDragOver = GridRichiesteDragOver
            OnKeyDown = GridRichiesteKeyDown
            OnMouseDown = GridDaEseguireMouseDown
            Navigator.Buttons.OnButtonClick = GridRichiesteNavigatorButtonsButtonClick
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Images = FDMCommon.cxImageNavigator16
            Navigator.Buttons.First.ImageIndex = 0
            Navigator.Buttons.PriorPage.ImageIndex = 1
            Navigator.Buttons.Prior.ImageIndex = 2
            Navigator.Buttons.Next.ImageIndex = 3
            Navigator.Buttons.NextPage.ImageIndex = 4
            Navigator.Buttons.Last.ImageIndex = 5
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.Buttons.Refresh.ImageIndex = 18
            Navigator.Buttons.Refresh.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.ImageIndex = 19
            Navigator.Visible = True
            DataController.DataSource = sQyDaAcc
            DataController.Filter.OnChanged = GridDaEseguireDataControllerFilterChanged
            DataController.KeyFieldNames = 'PKTRIAGE'
            DataController.Options = [dcoCaseInsensitive, dcoSaveExpanding, dcoSortByDisplayText, dcoImmediatePost]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'NOME_PAZIENTE'
                Column = GridRichiesteNOME_PAZIENTE
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.DragOpening = False
            OptionsBehavior.DragScrolling = False
            OptionsBehavior.IncSearch = True
            OptionsBehavior.IncSearchItem = GridRichiesteNOME_PAZIENTE
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.DataRowSizing = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.MultiSelect = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.HeaderHeight = 80
            OptionsView.Indicator = True
            Preview.Column = GridRichiesteQUESITO_DIAGN
            Preview.MaxLineCount = 0
            Preview.Visible = True
            OnCustomization = GridRichiesteCustomization
            object GridRichiesteDATA_PRESCRIZIONE: TcxGridDBColumn
              DataBinding.FieldName = 'DATA_PRESCRIZIONE'
              Options.Editing = False
              Options.Filtering = False
              Width = 106
            end
            object GridRichiesteNOMEREPARTO: TcxGridDBColumn
              DataBinding.FieldName = 'NOMEREPARTO'
              Options.Editing = False
              Width = 137
            end
            object GridRichiestePKTRIAGE: TcxGridDBColumn
              DataBinding.FieldName = 'PKTRIAGE'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Width = 61
            end
            object GridRichiestePID: TcxGridDBColumn
              DataBinding.FieldName = 'PID'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Width = 65
            end
            object GridRichiesteNOME_PAZIENTE: TcxGridDBColumn
              DataBinding.FieldName = 'NOME_PAZIENTE'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 158
            end
            object GridRichiesteDATA_NASCITA: TcxGridDBColumn
              DataBinding.FieldName = 'DATA_NASCITA'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 102
            end
            object GridRichiesteIMPEGNATIVE_FK: TcxGridDBColumn
              DataBinding.FieldName = 'IMPEGNATIVE_FK'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
            end
            object GridRichiesteDIAGNOSTICA_FK: TcxGridDBColumn
              DataBinding.FieldName = 'DIAGNOSTICA_FK'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              VisibleForCustomization = False
            end
            object GridRichiesteDIAGNOSTICA: TcxGridDBColumn
              DataBinding.FieldName = 'DIAGNOSTICA'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Width = 154
            end
            object GridRichiesteURGENZA: TcxGridDBColumn
              DataBinding.FieldName = 'URGENZA'
              RepositoryItem = FDMCommon.edrepURGENZA
              Options.Editing = False
              Width = 76
            end
            object GridRichiesteESAMI_IN_REPARTO: TcxGridDBColumn
              DataBinding.FieldName = 'ESAMI_IN_REPARTO'
              RepositoryItem = FDMCommon.edrepALETTO
              Options.Editing = False
              Width = 80
            end
            object GridRichiesteQUESITO_DIAGN: TcxGridDBColumn
              DataBinding.FieldName = 'QUESITO_DIAGN'
              RepositoryItem = FDMCommon.edrepMemo
              Options.Editing = False
              Options.Filtering = False
            end
            object GridRichiesteTIPO_ATTIVITA_FK: TcxGridDBColumn
              DataBinding.FieldName = 'TIPO_ATTIVITA_FK'
              RepositoryItem = FDMCommon.edrepTIPO_ATTIVITA
              Options.Editing = False
              Width = 41
            end
            object GridRichiesteNOTE_PRENO: TcxGridDBColumn
              DataBinding.FieldName = 'NOTE_PRENO'
              PropertiesClassName = 'TcxBlobEditProperties'
              Properties.BlobEditKind = bekMemo
              Properties.ImmediatePost = True
              Properties.MemoMaxLength = 4000
              Properties.OnCloseUp = GridRichiesteNOTE_PRENOPropertiesCloseUp
              Properties.OnPopup = GridRichiesteNOTE_PRENOPropertiesPopup
              Options.Filtering = False
              VisibleForCustomization = False
              Width = 32
            end
            object GridRichiesteNRALTRE: TcxGridDBColumn
              Caption = 'Altre'
              DataBinding.FieldName = 'NRALTRE'
              Visible = False
              VisibleForCustomization = False
              Width = 20
            end
          end
          object GridRichiesteDettagli: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataModeController.SyncMode = False
            DataController.DataSource = sQyDaAccEsami
            DataController.DetailKeyFieldNames = 'TRIAGE_FK'
            DataController.KeyFieldNames = 'PKPRESTAZIONI'
            DataController.MasterKeyFieldNames = 'PKTRIAGE'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.ImmediateEditor = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnSorting = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            object GridRichiesteDettagliCODICE: TcxGridDBColumn
              DataBinding.FieldName = 'CODICE'
              Options.Editing = False
              Width = 88
            end
            object GridRichiesteDettagliDESCRIZIONE: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRIZIONE'
              Options.Editing = False
              Width = 354
            end
            object GridRichiesteDettagliNUMERO_PRESTAZIONE: TcxGridDBColumn
              DataBinding.FieldName = 'NUMERO_PRESTAZIONE'
              Visible = False
              Options.Editing = False
              VisibleForCustomization = False
            end
            object GridRichiesteDettagliDURATA: TcxGridDBColumn
              DataBinding.FieldName = 'DURATA'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Width = 74
            end
            object GridRichiesteDettagliPKPRESTAZIONI: TcxGridDBColumn
              DataBinding.FieldName = 'PKPRESTAZIONI'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Width = 74
            end
            object GridRichiesteDettagliTRIAGE_FK: TcxGridDBColumn
              DataBinding.FieldName = 'TRIAGE_FK'
              Visible = False
              Options.Editing = False
              Width = 74
            end
            object GridRichiesteDettagliPKCODICIRAD: TcxGridDBColumn
              DataBinding.FieldName = 'PKCODICIRAD'
              Visible = False
              Options.Editing = False
              Width = 74
            end
            object GridRichiesteDettagliIDENT_FK: TcxGridDBColumn
              DataBinding.FieldName = 'IDENT_FK'
              Visible = False
              Options.Editing = False
              Width = 88
            end
            object GridRichiesteDettagliMAGART_FK: TcxGridDBColumn
              DataBinding.FieldName = 'MAGART_FK'
              RepositoryItem = FDMCommon.edrepRADIOFARMACO
              Options.Editing = False
              Width = 354
            end
            object GridRichiesteDettagliQR: TcxGridDBColumn
              DataBinding.FieldName = 'QR'
              Options.Editing = False
              Options.Filtering = False
            end
          end
          object cxGridRichiesteLevel1: TcxGridLevel
            GridView = GridRichieste
            object cxGridRichiesteLevel2: TcxGridLevel
              GridView = GridRichiesteDettagli
            end
          end
        end
        object dxBarDockControl1: TdxBarDockControl
          Left = 1
          Top = 1
          Width = 471
          Height = 34
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
      object dxDockPanel2: TPanel
        Left = 473
        Top = 0
        Width = 518
        Height = 423
        Align = alClient
        TabOrder = 1
        object DBPlanner: TsyDBPlanner
          Left = 1
          Top = 1
          Width = 516
          Height = 421
          ActiveDisplay = False
          Align = alClient
          Bands.ActivePrimary = 16705483
          Bands.ActiveSecondary = 16439727
          Bands.NonActivePrimary = clSilver
          Bands.NonActiveSecondary = 11053224
          Caption.Title = 'TDBPlanner'
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clWhite
          Caption.Font.Height = -13
          Caption.Font.Name = 'Source Sans Pro'
          Caption.Font.Style = [fsBold]
          Caption.Alignment = taCenter
          Caption.Background = clGray
          Caption.BackgroundSteps = 0
          Caption.Height = 20
          Caption.Visible = False
          Color = 14609391
          DayNames.Strings = (
            'Sun'
            'Mon'
            'Tue'
            'Wed'
            'Thu'
            'Fri'
            'Sat')
          DefaultItem.Alarm.Active = False
          DefaultItem.Alarm.ID = 0
          DefaultItem.Alarm.NotifyType = anCaption
          DefaultItem.Alarm.Tag = 0
          DefaultItem.Alarm.Time = atBefore
          DefaultItem.Alignment = taLeftJustify
          DefaultItem.AllowOverlap = True
          DefaultItem.Background = False
          DefaultItem.BrushStyle = bsSolid
          DefaultItem.CaptionAlign = taLeftJustify
          DefaultItem.CaptionBkg = clWhite
          DefaultItem.CaptionFont.Charset = ANSI_CHARSET
          DefaultItem.CaptionFont.Color = clWindowText
          DefaultItem.CaptionFont.Height = -19
          DefaultItem.CaptionFont.Name = 'Source Sans Pro'
          DefaultItem.CaptionFont.Style = [fsBold]
          DefaultItem.CaptionType = ctTimeTextHour
          DefaultItem.Color = clWhite
          DefaultItem.Completion = 0
          DefaultItem.CompletionDisplay = cdNone
          DefaultItem.Cursor = -1
          DefaultItem.DBTag = 0
          DefaultItem.FixedPos = False
          DefaultItem.FixedPosition = False
          DefaultItem.FixedSize = False
          DefaultItem.Font.Charset = DEFAULT_CHARSET
          DefaultItem.Font.Color = clWindowText
          DefaultItem.Font.Height = -19
          DefaultItem.Font.Name = 'Source Sans Pro'
          DefaultItem.Font.Style = []
          DefaultItem.ImageID = -1
          DefaultItem.InHeader = False
          DefaultItem.InplaceEdit = peForm
          DefaultItem.ItemBegin = 16
          DefaultItem.ItemEnd = 17
          DefaultItem.ItemPos = 0
          DefaultItem.Layer = 0
          DefaultItem.Name = 'PlannerItem0'
          DefaultItem.OwnsItemObject = False
          DefaultItem.ReadOnly = False
          DefaultItem.Shape = psRounded
          DefaultItem.SelectColor = clNone
          DefaultItem.SelectFontColor = clNone
          DefaultItem.Selected = False
          DefaultItem.Shadow = True
          DefaultItem.Tag = 0
          DefaultItem.TrackColor = clBlue
          DirectMove = False
          Display.ActiveStart = 0
          Display.ActiveEnd = 35
          Display.CurrentPosFrom = -1
          Display.CurrentPosTo = -1
          Display.DisplayStart = 0
          Display.DisplayEnd = 47
          Display.DisplayOffset = 0
          Display.DisplayScale = 50
          Display.DisplayUnit = 30
          Display.DisplayText = 0
          Display.ColorActive = clWhite
          Display.ColorNonActive = clSilver
          Display.ColorCurrent = clYellow
          Display.ColorCurrentItem = clLime
          Display.ScaleToFit = False
          Display.ShowCurrent = False
          Display.ShowCurrentItem = False
          DragItem = True
          DrawPrecise = False
          EditRTF = False
          EditDirect = False
          EditScroll = ssNone
          EnableAlarms = True
          EnableFlashing = False
          FlashColor = clRed
          FlashFontColor = clWhite
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Source Sans Pro'
          Font.Style = []
          GradientHorizontal = False
          GridPopup = dxPopPlanner
          GridLeftCol = 1
          GridTopRow = 0
          Header.Alignment = taCenter
          Header.AutoSize = True
          Header.Captions.Strings = (
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            '')
          Header.Color = 14609391
          Header.DragDrop = True
          Header.Height = 42
          Header.Flat = True
          Header.Font.Charset = ANSI_CHARSET
          Header.Font.Color = clWindowText
          Header.Font.Height = -19
          Header.Font.Name = 'Source Sans Pro'
          Header.Font.Style = [fsBold]
          Header.GroupCaptions.Strings = (
            'sab 30/12'
            'lun 04/03'
            'mar 05/03'
            'mer 06/03'
            'gio 07/03'
            'ven 08/03'
            '')
          Header.ImagePosition = ipLeft
          Header.ItemColor = clGray
          Header.ItemHeight = 20
          Header.LineColor = clBlack
          Header.TextHeight = 40
          Header.VAlignment = vtaCenter
          Header.Visible = True
          HintColor = clInfoBk
          HintOnItemChange = True
          HourType = ht24hrs
          HTMLHint = True
          HTMLOptions.Width = 100
          HTMLOptions.CellFontStyle = []
          HTMLOptions.HeaderFontStyle = []
          HTMLOptions.SidebarFontStyle = []
          HTMLOptions.ShowCaption = False
          InActiveDays.Sat = False
          InActiveDays.Sun = True
          InActiveDays.Mon = False
          InActiveDays.Tue = False
          InActiveDays.Wed = False
          InActiveDays.Thu = False
          InActiveDays.Fri = False
          IndicateNonVisibleItems = False
          InplaceEdit = ieAlways
          InsertAlways = True
          ItemGap = 11
          ItemPopup = dxPopPreno
          Items = <>
          ItemSelection.AutoUnSelect = True
          ItemSelection.Button = sbLeft
          Layer = 0
          Mode.Clip = False
          Mode.Month = 11
          Mode.PeriodStartDay = 23
          Mode.PeriodStartMonth = 11
          Mode.PeriodStartYear = 2001
          Mode.PeriodEndDay = 10
          Mode.PeriodEndMonth = 1
          Mode.PeriodEndYear = 2002
          Mode.PlannerType = plDay
          Mode.TimeLineStart = 37678.000000000000000000
          Mode.WeekStart = 0
          Mode.Year = 2001
          MultiSelect = False
          NavigatorButtons.ShowHint = False
          SelectionAlways = False
          ShadowColor = clNavy
          ShowHint = True
          Sidebar.ActiveColor = clNone
          Sidebar.Alignment = taLeftJustify
          Sidebar.AMPMPos = apUnderTime
          Sidebar.Background = clBtnFace
          Sidebar.BackgroundTo = clWhite
          Sidebar.Font.Charset = ANSI_CHARSET
          Sidebar.Font.Color = clWindowText
          Sidebar.Font.Height = -12
          Sidebar.Font.Name = 'Source Sans Pro'
          Sidebar.Font.Style = []
          Sidebar.Occupied = clBlue
          Sidebar.OccupiedFontColor = clWhite
          Sidebar.Position = spLeft
          Sidebar.SeparatorLineColor = clGray
          Sidebar.ShowInPositionGap = False
          Sidebar.ShowOccupied = False
          Sidebar.Width = 45
          PlannerImages = FDMCommon.imIcone
          Positions = 1
          PositionGap = 0
          PositionGroup = 0
          PositionProps = <>
          PositionWidth = 0
          PositionZoomWidth = 0
          PrintOptions.FooterAlignment = taLeftJustify
          PrintOptions.FooterFont.Charset = DEFAULT_CHARSET
          PrintOptions.FooterFont.Color = clWindowText
          PrintOptions.FooterFont.Height = -11
          PrintOptions.FooterFont.Name = 'Source Sans Pro'
          PrintOptions.FooterFont.Style = []
          PrintOptions.FooterSize = 0
          PrintOptions.HeaderAlignment = taLeftJustify
          PrintOptions.HeaderFont.Charset = DEFAULT_CHARSET
          PrintOptions.HeaderFont.Color = clWindowText
          PrintOptions.HeaderFont.Height = -11
          PrintOptions.HeaderFont.Name = 'Source Sans Pro'
          PrintOptions.HeaderFont.Style = []
          PrintOptions.HeaderSize = 0
          PrintOptions.LeftMargin = 0
          PrintOptions.Orientation = poPortrait
          PrintOptions.RightMargin = 0
          ScrollSmooth = False
          ScrollSynch = True
          ScrollBarStyle.Color = clNone
          ScrollBarStyle.Style = ssNormal
          ScrollBarStyle.Width = 16
          SelectBlend = 30
          SelectColor = clSilver
          TrackBump = False
          TrackColor = clBlue
          TrackWidth = 0
          DimensionaContinuo = True
          ZoomPos = 6
          ChangeScaleAut = False
          OnItemAnchorClick = DBPlannerItemAnchorClick
          OnItemDblClick = DBPlannerItemDblClick
          OnItemSizing = DBPlannerItemSizing
          OnItemMoving = DBPlannerItemMoving
          OnItemHint = DBPlannerItemHint
          OnPlannerRightClick = DBPlannerPlannerRightClick
          OnPlannerDblClick = DBPlannerPlannerDblClick
          OnDragOver = DBPlannerDragOver
          OnDragOverCell = DBPlannerDragOverCell
          OnDragOverItem = DBPlannerDragOverItem
          OnDragDropCell = DBPlannerDragDropCell
          OnDragDropItem = DBPlannerDragDropItem
          OnPlannerGetBrush = DBPlannerPlannerGetBrush
          OnPlannerGetZone = DBPlannerPlannerGetZone
          OnSideBarDblClick = DBPlannerSideBarDblClick
          ItemSource = DBDaySource
        end
      end
    end
    object dxTabElenco: TcxTabSheet
      Caption = 'dxTabElenco'
      object cxGridDaEseguire: TcxGrid
        Left = 0
        Top = 0
        Width = 991
        Height = 423
        Align = alClient
        PopupMenu = dxBarPopElenco
        TabOrder = 0
        object GridDaEseguire: TcxGridDBTableView
          OnDblClick = GridDaEseguireDblClick
          OnKeyDown = GridDaEseguireKeyDown
          OnMouseDown = GridDaEseguireMouseDown
          Navigator.Buttons.OnButtonClick = GridDaEseguireNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Images = FDMCommon.cxImageNavigator16
          Navigator.Buttons.First.ImageIndex = 0
          Navigator.Buttons.PriorPage.ImageIndex = 1
          Navigator.Buttons.Prior.ImageIndex = 2
          Navigator.Buttons.Next.ImageIndex = 3
          Navigator.Buttons.NextPage.ImageIndex = 4
          Navigator.Buttons.Last.ImageIndex = 5
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.ImageIndex = 18
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.ImageIndex = 19
          Navigator.Buttons.Filter.Visible = True
          Navigator.Visible = True
          DataController.DataModeController.SyncMode = False
          DataController.DataSource = sQyPreno
          DataController.Filter.MaxValueListCount = 1000
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = GridDaEseguireDataControllerFilterChanged
          DataController.Filter.Active = True
          DataController.KeyFieldNames = 'PKTRIAGE'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'NOME_PAZIENTE'
              Column = GridDaEseguireNOME_PAZIENTE
            end>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnPopup.MaxDropDownItemCount = 12
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = GridDaEseguireNOME_PAZIENTE
          OptionsBehavior.ExpandMasterRowOnDblClick = False
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.DataRowSizing = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderHeight = 80
          OptionsView.Indicator = True
          Preview.AutoHeight = False
          Preview.Column = GridDaEseguireQUESITO_DIAGN
          Preview.MaxLineCount = 2
          OnCustomization = GridDaEseguireCustomization
          object GridDaEseguirePKTRIAGE: TcxGridDBColumn
            DataBinding.FieldName = 'PKTRIAGE'
            Visible = False
            MinWidth = 72
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            VisibleForCustomization = False
            Width = 81
          end
          object GridDaEseguireRIS_STUDY_EUID: TcxGridDBColumn
            DataBinding.FieldName = 'RIS_STUDY_EUID'
            MinWidth = 70
            Options.Editing = False
            Options.Filtering = False
            Width = 70
          end
          object GridDaEseguireORA_INIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'ORA_INIZIO'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.DateOnError = deToday
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 85
          end
          object GridDaEseguireNOMEDIAGNOSTICA: TcxGridDBColumn
            DataBinding.FieldName = 'DIAGNOSTICA'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 100
            Properties.ReadOnly = True
            Options.Editing = False
            Options.Filtering = False
            Width = 65
          end
          object GridDaEseguireASSISTIBILI_FK: TcxGridDBColumn
            DataBinding.FieldName = 'ASSISTIBILI_FK'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            VisibleForCustomization = False
            Width = 65
          end
          object GridDaEseguirePID: TcxGridDBColumn
            DataBinding.FieldName = 'PID'
            Options.Editing = False
            Options.Filtering = False
            Width = 55
          end
          object GridDaEseguireNOME_PAZIENTE: TcxGridDBColumn
            DataBinding.FieldName = 'NOME_PAZIENTE'
            MinWidth = 300
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 300
          end
          object GridDaEseguireDATA_NASCITA: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_NASCITA'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 47
          end
          object GridDaEseguireREPARTO: TcxGridDBColumn
            DataBinding.FieldName = 'REPARTO'
            Options.Editing = False
            Width = 75
          end
          object GridDaEseguireSERVIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'SERVIZIO'
            Options.Editing = False
            Width = 54
          end
          object GridDaEseguireSTATOVISITA: TcxGridDBColumn
            DataBinding.FieldName = 'STATOVISITA'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
          end
          object GridDaEseguireDESCSTATOVISITA: TcxGridDBColumn
            DataBinding.FieldName = 'DESCSTATOVISITA'
            Options.Editing = False
            Width = 37
          end
          object GridDaEseguireURGENZA: TcxGridDBColumn
            DataBinding.FieldName = 'URGENZA'
            RepositoryItem = FDMCommon.edrepURGENZA
            Options.Editing = False
            Width = 56
          end
          object GridDaEseguireESAMI_IN_REPARTO: TcxGridDBColumn
            DataBinding.FieldName = 'ESAMI_IN_REPARTO'
            RepositoryItem = FDMCommon.edrepALETTO
            Options.Editing = False
            Width = 46
          end
          object GridDaEseguireQUESITO_DIAGN: TcxGridDBColumn
            DataBinding.FieldName = 'QUESITO_DIAGN'
            PropertiesClassName = 'TcxMemoProperties'
            Properties.ReadOnly = True
            RepositoryItem = FDMCommon.edrepMemo
            MinWidth = 100
            Options.Editing = False
            Options.Filtering = False
          end
          object GridDaEseguireDESCTIPOATTIVITA: TcxGridDBColumn
            DataBinding.FieldName = 'DESCTIPOATTIVITA'
            Options.Editing = False
            Width = 31
          end
          object GridDaEseguirePROVENIENZA: TcxGridDBColumn
            DataBinding.FieldName = 'PROVENIENZA'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
          end
          object GridDaEseguireSERVRAD: TcxGridDBColumn
            DataBinding.FieldName = 'SERVRAD'
            Options.Editing = False
            Width = 41
          end
          object GridDaEseguireORA_SOMMIN: TcxGridDBColumn
            DataBinding.FieldName = 'ORA_SOMMIN'
            Options.Editing = False
            Options.Filtering = False
            Width = 20
          end
          object GridDaEseguireNOTE_PRENO: TcxGridDBColumn
            DataBinding.FieldName = 'NOTE_PRENO'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.ImmediatePost = True
            Properties.MemoMaxLength = 4000
            Properties.OnCloseUp = GridDaEseguireNOTE_PRENOPropertiesCloseUp
            Properties.OnPopup = GridDaEseguireNOTE_PRENOPropertiesPopup
            Options.Filtering = False
            VisibleForCustomization = False
            Width = 20
          end
          object GridDaEseguireLIV_SCR: TcxGridDBColumn
            DataBinding.FieldName = 'LIV_SCR'
            Visible = False
            Options.Editing = False
          end
          object GridDaEseguireNUMERO_FIRMA: TcxGridDBColumn
            DataBinding.FieldName = 'NUMERO_FIRMA'
            Visible = False
            Options.Editing = False
          end
          object GridDaEseguireTIPO_ACCESSO: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_ACCESSO'
            Visible = False
          end
          object GridDaEseguireDESCESAME: TcxGridDBColumn
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object GridDaEseguirePROG_ACC: TcxGridDBColumn
            DataBinding.FieldName = 'PROG_ACC'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
        end
        object GridDaEseguireDettagli: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataModeController.SyncMode = False
          DataController.DataSource = sqyPrenoDett
          DataController.DetailKeyFieldNames = 'TRIAGE_FK'
          DataController.KeyFieldNames = 'PKPRESTAZIONI'
          DataController.MasterKeyFieldNames = 'PKTRIAGE'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          object GridDaEseguireDettagliCODICE: TcxGridDBColumn
            DataBinding.FieldName = 'CODICE'
            Options.Editing = False
          end
          object GridDaEseguireDettagliDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Options.Editing = False
          end
          object GridDaEseguireDettagliNUMERO_PRESTAZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'NUMERO_PRESTAZIONE'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object GridDaEseguireDettagliDURATA: TcxGridDBColumn
            DataBinding.FieldName = 'DURATA'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object GridDaEseguireDettagliSTATO: TcxGridDBColumn
            DataBinding.FieldName = 'STATO'
            RepositoryItem = FDMCommon.edrepImageSTATO
            Options.Editing = False
          end
          object GridDaEseguireDettagliIDENT_FK: TcxGridDBColumn
            DataBinding.FieldName = 'IDENT_FK'
          end
          object GridDaEseguireDettagliMAGART_FK: TcxGridDBColumn
            DataBinding.FieldName = 'MAGART_FK'
            RepositoryItem = FDMCommon.edrepRADIOFARMACO
            Options.Editing = False
          end
          object GridDaEseguireDettagliQR: TcxGridDBColumn
            DataBinding.FieldName = 'QR'
            Options.Editing = False
            Options.Filtering = False
          end
          object GridDaEseguireDettagliDESCBRANCA: TcxGridDBColumn
            DataBinding.FieldName = 'DESCBRANCA'
          end
        end
        object cxGridDaEseguireLevel1: TcxGridLevel
          GridView = GridDaEseguire
          object cxGridDaEseguireLevel2: TcxGridLevel
            GridView = GridDaEseguireDettagli
            Visible = False
          end
        end
      end
      object cxCheckEsami: TcxCheckComboBox
        Left = 696
        Top = 260
        Properties.EmptySelectionText = 'Non selezionati'
        Properties.ClearKey = 46
        Properties.EditValueFormat = cvfIndices
        Properties.Items = <>
        Properties.OnCloseUp = cxCheckEsamiPropertiesCloseUp
        TabOrder = 1
        Visible = False
        Width = 200
      end
    end
    object dxTabEseguiti: TcxTabSheet
      Caption = 'dxTabEseguiti'
      object cxGridEseguiti: TcxGrid
        Left = 0
        Top = 0
        Width = 1284
        Height = 583
        Align = alClient
        PopupMenu = dxBarPopEseguiti
        TabOrder = 0
        object GridEseguiti: TcxGridDBTableView
          OnDblClick = GridEseguitiDblClick
          OnKeyDown = GridEseguitiKeyDown
          OnMouseDown = GridDaEseguireMouseDown
          Navigator.Buttons.OnButtonClick = GridEseguitiNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Images = FDMCommon.cxImageNavigator16
          Navigator.Buttons.First.ImageIndex = 0
          Navigator.Buttons.PriorPage.ImageIndex = 1
          Navigator.Buttons.Prior.ImageIndex = 2
          Navigator.Buttons.Next.ImageIndex = 3
          Navigator.Buttons.NextPage.ImageIndex = 4
          Navigator.Buttons.Last.ImageIndex = 5
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.ImageIndex = 18
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.ImageIndex = 19
          Navigator.Buttons.Filter.Visible = True
          Navigator.Visible = True
          DataController.DataModeController.SyncMode = False
          DataController.DataSource = sQyEseguiti
          DataController.Filter.MaxValueListCount = 1000
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = GridDaEseguireDataControllerFilterChanged
          DataController.Filter.Active = True
          DataController.KeyFieldNames = 'PKTRIAGE'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'NOME_PAZIENTE'
              Column = GridEseguitiNOME_PAZIENTE
            end>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnPopup.MaxDropDownItemCount = 12
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = GridEseguitiNOME_PAZIENTE
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.DataRowSizing = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderHeight = 80
          OptionsView.Indicator = True
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          OnCustomization = GridEseguitiCustomization
          object GridEseguitiPKTRIAGE: TcxGridDBColumn
            DataBinding.FieldName = 'PKTRIAGE'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            VisibleForCustomization = False
            Width = 64
          end
          object GridEseguitiRIS_STUDY_EUID: TcxGridDBColumn
            DataBinding.FieldName = 'RIS_STUDY_EUID'
            MinWidth = 70
            Options.Editing = False
            Options.Filtering = False
            Width = 70
          end
          object GridEseguitiORA_INIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'ORA_INIZIO'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.DateOnError = deToday
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 56
          end
          object GridEseguitiDATA_VISITA: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_VISITA'
            Options.Editing = False
            Options.Filtering = False
            Width = 66
          end
          object GridEseguitiNOMEDIAGNOSTICA: TcxGridDBColumn
            DataBinding.FieldName = 'DIAGNOSTICA'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 100
            Properties.ReadOnly = True
            Options.Editing = False
            Options.Filtering = False
            Width = 68
          end
          object GridEseguitiNOME_PAZIENTE: TcxGridDBColumn
            DataBinding.FieldName = 'NOME_PAZIENTE'
            MinWidth = 300
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 300
          end
          object GridEseguitiDATA_NASCITA: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_NASCITA'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 45
          end
          object GridEseguitiREPARTO: TcxGridDBColumn
            DataBinding.FieldName = 'REPARTO'
            Options.Editing = False
            Width = 63
          end
          object GridEseguitiSERVIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'SERVIZIO'
            Options.Editing = False
            Width = 96
          end
          object GridEseguitiDESCSTATOVISITA: TcxGridDBColumn
            DataBinding.FieldName = 'DESCSTATOVISITA'
            Options.Editing = False
            Options.IncSearch = False
            Options.Grouping = False
            Width = 61
          end
          object GridEseguitiSTATOVISITA: TcxGridDBColumn
            DataBinding.FieldName = 'STATOVISITA'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
          end
          object GridEseguitiURGENZA: TcxGridDBColumn
            DataBinding.FieldName = 'URGENZA'
            RepositoryItem = FDMCommon.edrepURGENZA
            Options.Editing = False
            Width = 68
          end
          object GridEseguitiPROVENIENZA: TcxGridDBColumn
            DataBinding.FieldName = 'PROVENIENZA'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
          end
          object GridEseguitiESAMI_IN_REPARTO: TcxGridDBColumn
            DataBinding.FieldName = 'ESAMI_IN_REPARTO'
            RepositoryItem = FDMCommon.edrepALETTO
            Options.Editing = False
            Width = 68
          end
          object GridEseguitiDESCTIPOATTIVITA: TcxGridDBColumn
            DataBinding.FieldName = 'DESCTIPOATTIVITA'
            Visible = False
            Options.Editing = False
            Width = 127
          end
          object GridEseguitiMEDFIRMA: TcxGridDBColumn
            DataBinding.FieldName = 'MEDFIRMA'
            Visible = False
            Options.Editing = False
            Width = 79
          end
          object GridEseguitiTECNICO: TcxGridDBColumn
            DataBinding.FieldName = 'TECNICO'
            Visible = False
            Options.Editing = False
            Width = 82
          end
          object GridEseguitiSERVRAD: TcxGridDBColumn
            DataBinding.FieldName = 'SERVRAD'
            Options.Editing = False
            Width = 71
          end
          object GridEseguitiNOTE_PRENO: TcxGridDBColumn
            DataBinding.FieldName = 'NOTE_PRENO'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.ImmediatePost = True
            Properties.MemoMaxLength = 4000
            Properties.OnCloseUp = GridEseguitiNOTE_PRENOPropertiesCloseUp
            Properties.OnPopup = GridEseguitiNOTE_PRENOPropertiesPopup
            VisibleForCustomization = False
            Width = 25
          end
          object GridEseguitiCD_CREATO: TcxGridDBColumn
            Caption = 'CD'
            DataBinding.FieldName = 'CD_CREATO'
            Options.Editing = False
            Width = 31
          end
          object GridEseguitiTIPO_ACCESSO: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_ACCESSO'
            Visible = False
            Options.Editing = False
          end
          object GridEseguitiPROG_ACC: TcxGridDBColumn
            DataBinding.FieldName = 'PROG_ACC'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
        end
        object GridEseguitiDettagli: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Visible = True
          DataController.DataModeController.SyncMode = False
          DataController.DataSource = sqDettEseguiti
          DataController.DetailKeyFieldNames = 'TRIAGE_FK'
          DataController.KeyFieldNames = 'PKPRESTAZIONI'
          DataController.MasterKeyFieldNames = 'PKTRIAGE'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          OptionsView.HeaderAutoHeight = True
          object GridEseguitiDettagliCODICE: TcxGridDBColumn
            DataBinding.FieldName = 'CODICE'
            Options.Editing = False
          end
          object GridEseguitiDettagliDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Options.Editing = False
          end
          object GridEseguitiDettagliNUMERO_PRESTAZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'NUMERO_PRESTAZIONE'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object GridEseguitiDettagliSTATO: TcxGridDBColumn
            DataBinding.FieldName = 'STATO'
            RepositoryItem = FDMCommon.edrepImageSTATO
            Options.Editing = False
          end
          object GridEseguitiDettagliIDENT_FK: TcxGridDBColumn
            DataBinding.FieldName = 'IDENT_FK'
            Options.Editing = False
          end
          object GridEseguitiDettagliMAGART_FK: TcxGridDBColumn
            DataBinding.FieldName = 'MAGART_FK'
            RepositoryItem = FDMCommon.edrepRADIOFARMACO
            Options.Editing = False
          end
          object GridEseguitiDettagliQR: TcxGridDBColumn
            DataBinding.FieldName = 'QR'
            Options.Editing = False
            Options.Filtering = False
          end
          object GridEseguitiDettagliDESCBRANCA: TcxGridDBColumn
            DataBinding.FieldName = 'DESCBRANCA'
          end
        end
        object cxGridEseguitiLevel1: TcxGridLevel
          GridView = GridEseguiti
          object cxGridEseguitiLevel2: TcxGridLevel
            GridView = GridEseguitiDettagli
            Visible = False
          end
        end
      end
    end
  end
  inherited rsStorage1: TrsStorage
    Left = 127
    Top = 234
  end
  inherited rsXMLData1: TrsXMLData
    Left = 179
    Top = 258
  end
  object dxBarManager1: TdxBarManager
    AllowReset = False
    AlwaysSaveText = True
    Scaled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Source Sans Pro'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default'
      'Setup calendari'
      'Operazioni'
      'Spostamenti'
      'Stampe'
      'Richieste'
      'Diagnostiche')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True
      True)
    ImageOptions.Images = FDMCommon.cxImageNavigator16
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 360
    Top = 316
    DockControlHeights = (
      0
      0
      34
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
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Source Sans Pro'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxSubDiag'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 186
          Visible = True
          ItemName = 'dxData'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxCalendario'
        end
        item
          Visible = True
          ItemName = 'dxDaEseguire'
        end
        item
          Visible = True
          ItemName = 'dxEseguiti'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarlblEsami'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem1'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'Comandi'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Richieste'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 724
      FloatTop = 429
      FloatClientWidth = 23
      FloatClientHeight = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Source Sans Pro'
      Font.Style = []
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 192
          Visible = True
          ItemName = 'dxRichAl'
        end
        item
          Visible = True
          ItemName = 'dxBarButton27'
        end
        item
          Visible = True
          ItemName = 'dxBarButton22'
        end>
      OldName = 'Richieste'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxEseguiti: TdxBarButton
      Caption = '&Eseguiti'
      Category = 0
      Hint = 'Elenco esami eseguiti'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxEseguitiClick
    end
    object dxCalendario: TdxBarButton
      Caption = '&Calendario'
      Category = 0
      Hint = 'Calendario'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxCalendarioClick
    end
    object dxDaEseguire: TdxBarButton
      Caption = '&Da eseguire'
      Category = 0
      Hint = 'Da eseguire'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      Down = True
      OnClick = dxDaEseguireClick
    end
    object dxData: TcxBarEditItem
      Caption = 'Data'
      Category = 0
      Hint = 'Giorno di lavoro'
      Visible = ivAlways
      ShowCaption = True
      Width = 140
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.ArrowsForYear = False
      Properties.DateButtons = [btnToday]
      Properties.InputKind = ikRegExpr
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnCloseUp = dxDataPropertiesCloseUp
      InternalEditValue = 0d
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'SelEsami'
      Category = 0
      Description = 'Seleziona esami'
      Hint = 'SelEsami'
      Visible = ivAlways
      Control = cxCheckEsami
    end
    object dxBarlblEsami: TdxBarStatic
      Caption = 'Esami da eseguire'
      Category = 0
      Hint = 'Esami da eseguire'
      Visible = ivAlways
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Setup'
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxPeriodo'
        end
        item
          Visible = True
          ItemName = 'dxgiornilista'
        end
        item
          Visible = True
          ItemName = 'dxGiorniDal'
        end
        item
          Visible = True
          ItemName = 'dxGiorniRicerca'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxConEsami'
        end
        item
          Visible = True
          ItemName = 'dxAttivaQuesito'
        end
        item
          Visible = True
          ItemName = 'dxVisualizzaPreno'
        end
        item
          Visible = True
          ItemName = 'dxAutoSize'
        end
        item
          Visible = True
          ItemName = 'dxAvvisi'
        end
        item
          Visible = True
          ItemName = 'dxAttivaRefresh'
        end
        item
          Visible = True
          ItemName = 'dxDettaglioEspanso'
        end
        item
          Visible = True
          ItemName = 'dxAltreRichieste'
        end
        item
          Visible = True
          ItemName = 'dxAnchePreno'
        end
        item
          Visible = True
          ItemName = 'dxProgAcc'
        end>
    end
    object dxConEsami: TdxBarButton
      Caption = 'Visualizza prestazioni'
      Category = 1
      Hint = 'Visualizza esami nel calendario'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      PaintStyle = psCaptionGlyph
      OnClick = dxConEsamiClick
    end
    object dxPeriodo: TdxBarCombo
      Caption = 'Periodo'
      Category = 1
      Hint = 'Periodo'
      Visible = ivAlways
      OnChange = dxPeriodoChange
      Text = '30 minuti'
      ShowEditor = False
      Items.Strings = (
        '5 minuti'
        '6 minuti'
        '10 minuti'
        '15 minuti'
        '20 minuti'
        '30 minuti'
        '60 minuti')
      ItemIndex = 5
    end
    object dxAutoSize: TdxBarButton
      Caption = 'Autodimensiona'
      Category = 1
      Hint = 'Autodimensiona le righe'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = dxAutoSizeClick
    end
    object dxAttivaQuesito: TdxBarButton
      Action = aAttivaQuesito
      Category = 1
      ButtonStyle = bsChecked
      PaintStyle = psCaptionGlyph
    end
    object dxAvvisi: TdxBarButton
      Caption = 'Avvisi richieste'
      Category = 1
      Hint = 'Avvisi richieste'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      PaintStyle = psCaptionGlyph
    end
    object dxAttivaRefresh: TdxBarButton
      Caption = 'Aggiornamento automatico'
      Category = 1
      Hint = 'Aggiornamento automatico'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      PaintStyle = psCaptionGlyph
      OnClick = dxAttivaRefreshClick
    end
    object dxDettaglioEspanso: TdxBarButton
      Caption = 'Dettaglio esami espanso'
      Category = 1
      Hint = 'Dettaglio esami espanso'
      Visible = ivNever
      ButtonStyle = bsChecked
    end
    object dxgiornilista: TcxBarEditItem
      Caption = 'Giorni lista'
      Category = 1
      Hint = 'Giorni lista'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxSpinEditProperties'
      Properties.ImmediatePost = True
      Properties.MaxValue = 365.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.ValueType = vtInt
      Properties.OnEditValueChanged = dxgiornilistaChange
      InternalEditValue = 5
    end
    object dxGiorniDal: TcxBarEditItem
      Caption = 'Giorni richieste precedenti'
      Category = 1
      Hint = 'Giorni richieste precedenti'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxSpinEditProperties'
      Properties.ImmediatePost = True
      Properties.MaxValue = 365.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.ValueType = vtInt
      Properties.OnEditValueChanged = dxGiorniDalCurChange
      InternalEditValue = 60
    end
    object dxGiorniRicerca: TcxBarEditItem
      Caption = 'Giorni richieste successivi'
      Category = 1
      Hint = 'Giorni richieste successivi'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxSpinEditProperties'
      Properties.ImmediatePost = True
      Properties.MaxValue = 365.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.ValueType = vtInt
      Properties.OnEditValueChanged = dxGiorniRicercaCurChange
      InternalEditValue = 30
    end
    object dxVisualizzaPreno: TdxBarButton
      Caption = 'Visualizza richieste'
      Category = 1
      Hint = 'Visualizza richieste'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = dxVisualizzaPrenoClick
    end
    object dxAltreRichieste: TdxBarButton
      Action = aAttivaAltreRich
      Category = 1
      ButtonStyle = bsChecked
      PaintStyle = psCaptionGlyph
    end
    object dxAnchePreno: TdxBarButton
      Caption = 'Visualizza prenotazioni'
      Category = 1
      Hint = 'Visualizza prenotazioni'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = dxAnchePrenoClick
    end
    object dxProgAcc: TdxBarButton
      Caption = 'Progressivo accettazioni'
      Category = 1
      Hint = 'Progressivo accettazioni'
      Visible = ivAlways
      ButtonStyle = bsChecked
      PaintStyle = psCaptionGlyph
      OnClick = dxProgAccClick
    end
    object dxBarButton1: TdxBarButton
      Action = EsecuzioneEsame
      Category = 2
    end
    object dxBarButton2: TdxBarButton
      Action = AccettaInterni
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Strumenti'
      Category = 2
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxScopieInSala'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton14'
        end
        item
          Visible = True
          ItemName = 'dxRefresh'
        end
        item
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          Visible = True
          ItemName = 'dxBarButton19'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxStmpaEtichette'
        end
        item
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton17'
        end>
    end
    object dxBarButton3: TdxBarButton
      Action = CancellaAccettato
      Category = 2
    end
    object dxBarButton7: TdxBarButton
      Action = AccettaEsterni
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton8: TdxBarButton
      Action = AccettaPS
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxStmpaEtichette: TdxBarButton
      Action = StampaEtichette
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton9: TdxBarButton
      Action = aCorreggiAccettazione
      Category = 2
    end
    object dxBarButton10: TdxBarButton
      Action = RiportaStandard
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton11: TdxBarButton
      Action = Personalizza
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton12: TdxBarButton
      Action = RiportaDaEseguire
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxRefresh: TdxBarButton
      Action = Aggiorna
      Category = 2
    end
    object dxBarButton13: TdxBarButton
      Action = aRitornoInRichieste
      Category = 2
    end
    object dxBarButton21: TdxBarButton
      Action = aRitornaPrenotato
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton14: TdxBarButton
      Action = Storico
      Category = 2
    end
    object dxBarButton15: TdxBarButton
      Action = ModificaAnagrafica
      Category = 2
    end
    object dxScopieInSala: TdxBarButton
      Action = aSalaOperatoria
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton24: TdxBarButton
      Action = ModInternoEsterno
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton26: TdxBarButton
      Action = aCambiaSomministrazione
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton28: TdxBarButton
      Action = aModServizio
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton29: TdxBarButton
      Action = aPrecedenti
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton30: TdxBarButton
      Action = aModTecnicoEsecutore
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton31: TdxBarButton
      Action = AssegnaMedico
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton18: TdxBarButton
      Action = ApriTutti
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton19: TdxBarButton
      Action = ChiudiTutti
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton32: TdxBarButton
      Action = aInfoOperatore
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton35: TdxBarButton
      Action = aControllaImmagini
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton36: TdxBarButton
      Action = aCreazioneCD
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton33: TdxBarButton
      Action = aSelezionaTutti
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton4: TdxBarButton
      Action = aCut
      Category = 3
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton5: TdxBarButton
      Action = aEndPaste
      Category = 3
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton6: TdxBarButton
      Action = aPaste
      Category = 3
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton16: TdxBarButton
      Action = StampaGrigliaDaEseguire
      Category = 4
    end
    object dxBarButton17: TdxBarButton
      Action = StampaGrigliaEseguiti
      Category = 4
    end
    object dxBarButton22: TdxBarButton
      Action = aCancellaRichiesta
      Category = 5
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton23: TdxBarButton
      Action = aStoricoRichieste
      Category = 5
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton25: TdxBarButton
      Action = StampaListaRichieste
      Category = 5
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton27: TdxBarButton
      Action = aModRichiesta
      Category = 5
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton37: TdxBarButton
      Action = aAltreRichieste
      Category = 5
      PaintStyle = psCaptionGlyph
    end
    object dxRichDal: TcxBarEditItem
      Caption = 'Dal..'
      Category = 5
      Hint = 'Dal..'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.ArrowsForYear = False
      Properties.DateButtons = [btnToday]
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnCloseUp = dxRichDalPropertiesCloseUp
      InternalEditValue = 0d
    end
    object dxRichAl: TcxBarEditItem
      Caption = 'Fino al..'
      Category = 5
      Hint = 'Fino al..'
      Visible = ivAlways
      ShowCaption = True
      Width = 140
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.ArrowsForYear = False
      Properties.DateButtons = [btnToday]
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnCloseUp = dxRichAlPropertiesCloseUp
      InternalEditValue = 0d
    end
    object dxBarButton38: TdxBarButton
      Action = aNoteRichiesta
      Category = 5
      PaintStyle = psCaptionGlyph
    end
    object dxChiudiTutte: TdxBarButton
      Action = DeselezionaTutte
      Category = 6
      AllowAllUp = True
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
      GroupIndex = 2
    end
    object dxSubDiag: TdxBarSubItem
      Caption = 'Selezione diagnostiche'
      Category = 6
      Hint = 'Selezione delle diagnostiche'
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxSingolaDiagn'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxTutte'
        end
        item
          Visible = True
          ItemName = 'dxChiudiTutte'
        end>
      OnCloseUp = dxSubDiagCloseUp
    end
    object dxTutte: TdxBarButton
      Action = TutteDiagnostiche
      Category = 6
      AllowAllUp = True
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
      GroupIndex = 2
    end
    object dxSingolaDiagn: TdxBarButton
      Caption = 'Selezione singola'
      Category = 6
      Hint = 'Selezione singola'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
      GroupIndex = 2
      PaintStyle = psCaptionGlyph
      OnClick = dxSingolaDiagnClick
    end
  end
  object AstaDett: TAstaDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'astadett'
        Fields = 'TRIAGE_FK'
        Options = []
        Selected = True
      end>
    IndexName = 'astadett'
    Aggregates = <>
    Active = True
    Constraints = <>
    Left = 676
    Top = 384
    FastFields = (
      'PKPRESTAZIONI,6,0'
      'TRIAGE_FK,3,0'
      'PKCODICIRAD,3,0'
      'CODICE,1,12'
      'DESCRIZIONE,1,50'
      'DURATA,3,0'
      'MAGART_FK,3,0'
      'QR,6,0'
      'NUMERO_PRESTAZIONE,3,0'
      'PROGRESSIVO_RIGA,3,0')
    object AstaDettCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object AstaDettDESCRIZIONE: TStringField
      DisplayLabel = 'Esame'
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
    object AstaDettPKCODICIRAD: TIntegerField
      FieldName = 'PKCODICIRAD'
    end
    object AstaDettDURATA: TIntegerField
      DisplayLabel = 'Durata'
      FieldName = 'DURATA'
    end
    object AstaDettPKPRESTAZIONI: TFloatField
      FieldName = 'PKPRESTAZIONI'
    end
    object AstaDettTRIAGE_FK: TIntegerField
      FieldName = 'TRIAGE_FK'
    end
    object AstaDettMAGART_FK: TIntegerField
      FieldName = 'MAGART_FK'
    end
    object AstaDettQR: TFloatField
      DisplayLabel = 'Dose'
      FieldName = 'QR'
    end
    object AstaDettNUMERO_PRESTAZIONE: TIntegerField
      FieldName = 'NUMERO_PRESTAZIONE'
    end
    object AstaDettPROGRESSIVO_RIGA: TIntegerField
      FieldName = 'PROGRESSIVO_RIGA'
    end
  end
  object TriagexImpegnative: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      
        'select t.pktriage,t.durata,t.statovisita,t.impegnative_fk,i.prov' +
        'enienza,t.diagnostica_fk'
      'from Triage t,impegnative i'
      'where t.impegnative_fk=:impegnative_fk '
      'and t.statovisita between 1 and 199'
      'and i.pkimpegnative=t.impegnative_fk')
    Params = <
      item
        Name = 'impegnative_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 624
    Top = 408
    FastFields = (
      'PKTRIAGE,3,0'
      'DURATA,3,0'
      'STATOVISITA,3,0'
      'IMPEGNATIVE_FK,3,0'
      'PROVENIENZA,1,1'
      'DIAGNOSTICA_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object TriagexImpegnativePKTRIAGE: TIntegerField
      FieldName = 'PKTRIAGE'
    end
    object TriagexImpegnativeDURATA: TIntegerField
      FieldName = 'DURATA'
    end
    object TriagexImpegnativeSTATOVISITA: TIntegerField
      FieldName = 'STATOVISITA'
    end
    object TriagexImpegnativeIMPEGNATIVE_FK: TIntegerField
      FieldName = 'IMPEGNATIVE_FK'
    end
    object TriagexImpegnativePROVENIENZA: TStringField
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object TriagexImpegnativeDIAGNOSTICA_FK: TIntegerField
      FieldName = 'DIAGNOSTICA_FK'
    end
  end
  object ModificaxImpegnative: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select pktriage,durata,statovisita'
      'from Triage'
      'where impegnative_fk=:impegnative_fk '
      'and statovisita between 10 and 199')
    Params = <
      item
        Name = 'impegnative_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 680
    Top = 476
    FastFields = (
      'PKTRIAGE,3,0'
      'DURATA,3,0'
      'STATOVISITA,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object ModificaxImpegnativePKTRIAGE: TIntegerField
      FieldName = 'PKTRIAGE'
    end
    object ModificaxImpegnativeDURATA: TIntegerField
      FieldName = 'DURATA'
    end
    object ModificaxImpegnativeSTATOVISITA: TIntegerField
      FieldName = 'STATOVISITA'
    end
  end
  object QyEseguiti: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    FilterOptions = [foCaseInsensitive]
    Constraints = <>
    BeforeQuery = QyEseguitiBeforeQuery
    SequenceField.ApplyMoment = amOnNewRecord
    NoSQLFields.Strings = (
      'diagnostica'
      'nome_paziente'
      'data_nascita'
      'codice_fiscale'
      'telefono'
      'tipo_accesso'
      'ris_study_euid'
      'cd_creato'
      'ceimmagini')
    EditMode = 'Read Only'
    UpdateTableName = 'TRIAGE'
    PrimeFields.Strings = (
      'PKTRIAGE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      't.pktriage,'
      'i.urgenza,'
      'i.placer_order_number,'
      'i.esami_in_reparto,'
      'i.tipo_attivita_fk,'
      'i.provenienza,'
      'i.prog_acc,'
      't.diagnostica_fk,'
      't.ora_inizio,'
      't.ora_fine,'
      't.data_visita,'
      't.user_id,'
      't.statovisita,'
      't.reparti_fk,'
      't.impegnative_fk,'
      't.personale_fk,'
      't.cod_med_firma,'
      'i.assistibili_fk,'
      'i.reparto_rich_fk,'
      't.durata,'
      't.agende_fk,'
      't.note_preno,'
      't.ris_study_euid,'
      't.ceimmagini,'
      't.cd_creato,'
      'sr.descrizione as ServRad,'
      'a.NOMINATIVO as NOME_PAZIENTE,'
      'a.data_nascita,'
      'a.codice_fiscale,'
      
        'DECODE(i.provenienza,'#39'E'#39',o.descrizione,r.descrizione) as Reparto' +
        ','
      'o.tipo_fattura,'
      'sv.descrizione as Servizio,'
      's.descrizione as Diagnostica,'
      'tb.descrizione as DescStatoVisita,'
      'ta.descrizione as DescTipoAttivita,'
      'ta.tipo_accesso,'
      'p.nominativo as MedFirma,'
      'te.nominativo as Tecnico,'
      'ae.cod_esterno as PID'
      'from diagxwk d'
      'join servizi s on s.pkservizi = d.servizi_fk'
      'join triage t on t.diagnostica_fk=s.PKSERVIZI'
      'join impegnative i on i.pkimpegnative = t.impegnative_fk'
      'join assistibili a on i.assistibili_fk = a.pkassistibili'
      'left join reparti r on r.pkreparti = i.reparto_rich_fk'
      'left join ospedali o on o.codice = i.osp_rich'
      'left join servizi sv on sv.pkservizi = i.servizio_rich_fk'
      'left join tabstatovisita tb on tb.statovisita = t.statovisita '
      
        'left join tipo_attivita ta on ta.tipo_attivita = i.tipo_attivita' +
        '_fk '
      'left join servizi sr on sr.pkservizi = t.servizi_fk'
      'left join personale p on p.pkpersonale = t.cod_med_firma'
      'left join personale te on te.pkpersonale = t.personale_fk'
      'join param_ticket pt on pt.pkparamticket=1'
      'join anag_esterne ae on ae.assistibili_fk = a.pkassistibili'
      'where d.workstation_fk=:workstation_fk'
      'and d.attiva=1'
      'and d.selezionata=1'
      'and s.reparti_fk=:reparti_fk'
      'and t.statovisita between :statoinizio and 198'
      
        'and t.data_visita between :data_preno and to_date(to_char(:data_' +
        'preno,'#39'DDMMYYYY'#39')||'#39'2359'#39','#39'DDMMYYYYHH24MI'#39')'
      'and ae.idauthority = pt.anag_authority')
    Params = <
      item
        Name = 'workstation_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'statoinizio'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'data_preno'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 36892d
      end>
    DirectModify = [tsyUpdate]
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      030000000F00000008000000504B56495349544501000000000B000000444154
      415F56495349544101000000000E0000004C494E4755415F5245464552544F01
      0000000007000000555247454E5A4101000000000A0000004E4F4D494E415449
      564F0100000000070000005245504152544F0100000000080000005345525649
      5A494F0100000000060000004D454449434F01000000000B000000444941474E
      4F5354494341010000000008000000504B545249414745010000000009000000
      555247454E5A41505301000000000A000000434F444943455F52414401000000
      000E000000444941474E4F53544943415F464B01000000000A0000004F52415F
      494E495A494F0100000000080000004F52415F46494E450100000000}
    Left = 732
    Top = 204
    FastFields = (
      'PKTRIAGE,3,0'
      'URGENZA,3,0'
      'PLACER_ORDER_NUMBER,1,32'
      'ESAMI_IN_REPARTO,3,0'
      'TIPO_ATTIVITA_FK,1,2'
      'PROVENIENZA,1,1'
      'PROG_ACC,3,0'
      'DIAGNOSTICA_FK,3,0'
      'ORA_INIZIO,11,0'
      'ORA_FINE,11,0'
      'DATA_VISITA,11,0'
      'USER_ID,3,0'
      'STATOVISITA,3,0'
      'REPARTI_FK,3,0'
      'IMPEGNATIVE_FK,3,0'
      'PERSONALE_FK,3,0'
      'COD_MED_FIRMA,3,0'
      'ASSISTIBILI_FK,3,0'
      'REPARTO_RICH_FK,3,0'
      'DURATA,3,0'
      'AGENDE_FK,3,0'
      'NOTE_PRENO,1,4000'
      'RIS_STUDY_EUID,1,100'
      'CEIMMAGINI,3,0'
      'CD_CREATO,3,0'
      'SERVRAD,1,100'
      'NOME_PAZIENTE,1,122'
      'DATA_NASCITA,11,0'
      'CODICE_FISCALE,1,32'
      'REPARTO,1,80'
      'TIPO_FATTURA,3,0'
      'SERVIZIO,1,100'
      'DIAGNOSTICA,1,100'
      'DESCSTATOVISITA,1,200'
      'DESCTIPOATTIVITA,1,200'
      'TIPO_ACCESSO,1,1'
      'MEDFIRMA,1,70'
      'TECNICO,1,70'
      'PID,1,32')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object QyEseguitiPKTRIAGE: TIntegerField
      DisplayLabel = 'Nr. Esame'
      FieldName = 'PKTRIAGE'
    end
    object QyEseguitiURGENZA: TIntegerField
      DisplayLabel = 'Urgenza'
      FieldName = 'URGENZA'
    end
    object QyEseguitiDIAGNOSTICA_FK: TIntegerField
      FieldName = 'DIAGNOSTICA_FK'
    end
    object QyEseguitiORA_INIZIO: TDateTimeField
      DisplayLabel = 'Orario'
      FieldName = 'ORA_INIZIO'
      DisplayFormat = 'ddddd hh:nn'
    end
    object QyEseguitiORA_FINE: TDateTimeField
      FieldName = 'ORA_FINE'
    end
    object QyEseguitiDATA_VISITA: TDateTimeField
      DisplayLabel = 'Ora esecuzione'
      FieldName = 'DATA_VISITA'
      DisplayFormat = 'ddddd hh:nn'
    end
    object QyEseguitiUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object QyEseguitiSTATOVISITA: TIntegerField
      FieldName = 'STATOVISITA'
    end
    object QyEseguitiREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object QyEseguitiASSISTIBILI_FK: TIntegerField
      FieldName = 'ASSISTIBILI_FK'
    end
    object QyEseguitiNOME_PAZIENTE: TStringField
      DisplayLabel = 'Paziente'
      FieldName = 'NOME_PAZIENTE'
      Size = 73
    end
    object QyEseguitiREPARTO: TStringField
      DisplayLabel = 'Provenienza'
      FieldName = 'REPARTO'
      Size = 60
    end
    object QyEseguitiSERVIZIO: TStringField
      DisplayLabel = 'Servizio'
      FieldName = 'SERVIZIO'
      Size = 100
    end
    object QyEseguitiDIAGNOSTICA: TStringField
      DisplayLabel = 'Diagnostica'
      FieldName = 'DIAGNOSTICA'
      Size = 100
    end
    object QyEseguitiDURATA: TIntegerField
      DisplayLabel = 'Durata'
      FieldName = 'DURATA'
    end
    object QyEseguitiDATA_NASCITA: TDateTimeField
      DisplayLabel = 'Data nascita'
      FieldName = 'DATA_NASCITA'
    end
    object QyEseguitiPROVENIENZA: TStringField
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object QyEseguitiIMPEGNATIVE_FK: TIntegerField
      FieldName = 'IMPEGNATIVE_FK'
    end
    object QyEseguitiDESCSTATOVISITA: TStringField
      DisplayLabel = 'Stato esame'
      FieldName = 'DESCSTATOVISITA'
      Size = 30
    end
    object QyEseguitiREPARTO_RICH_FK: TIntegerField
      FieldName = 'REPARTO_RICH_FK'
    end
    object QyEseguitiAGENDE_FK: TIntegerField
      FieldName = 'AGENDE_FK'
    end
    object QyEseguitiTIPO_ATTIVITA_FK: TStringField
      FieldName = 'TIPO_ATTIVITA_FK'
      Size = 2
    end
    object QyEseguitiESAMI_IN_REPARTO: TIntegerField
      DisplayLabel = 'Trasporto'
      FieldName = 'ESAMI_IN_REPARTO'
    end
    object QyEseguitiDESCTIPOATTIVITA: TStringField
      DisplayLabel = 'Tipo attivit'#224
      FieldName = 'DESCTIPOATTIVITA'
      Size = 60
    end
    object QyEseguitiSERVRAD: TStringField
      DisplayLabel = 'Radiologia'
      FieldName = 'SERVRAD'
      Size = 100
    end
    object QyEseguitiMEDFIRMA: TStringField
      DisplayLabel = 'Riservato a...'
      FieldName = 'MEDFIRMA'
      Size = 70
    end
    object QyEseguitiTECNICO: TStringField
      DisplayLabel = 'Tecnico'
      FieldName = 'TECNICO'
      Size = 70
    end
    object QyEseguitiPLACER_ORDER_NUMBER: TStringField
      FieldName = 'PLACER_ORDER_NUMBER'
      Size = 32
    end
    object QyEseguitiNOTE_PRENO: TStringField
      DisplayLabel = 'Note'
      FieldName = 'NOTE_PRENO'
      Size = 4000
    end
    object QyEseguitiPERSONALE_FK: TIntegerField
      FieldName = 'PERSONALE_FK'
    end
    object QyEseguitiCOD_MED_FIRMA: TIntegerField
      FieldName = 'COD_MED_FIRMA'
    end
    object QyEseguitiTIPO_ACCESSO: TStringField
      DisplayLabel = 'Accesso'
      FieldName = 'TIPO_ACCESSO'
      Size = 1
    end
    object QyEseguitiRIS_STUDY_EUID: TStringField
      DisplayLabel = 'Nr. Esame'
      FieldName = 'RIS_STUDY_EUID'
      Size = 100
    end
    object QyEseguitiCEIMMAGINI: TIntegerField
      FieldName = 'CEIMMAGINI'
    end
    object QyEseguitiCD_CREATO: TIntegerField
      FieldName = 'CD_CREATO'
    end
    object QyEseguitiTIPO_FATTURA: TIntegerField
      FieldName = 'TIPO_FATTURA'
    end
    object QyEseguitiPROG_ACC: TIntegerField
      DisplayLabel = 'Prog.Acc.'
      FieldName = 'PROG_ACC'
    end
    object QyEseguitiPID: TStringField
      FieldName = 'PID'
      Size = 32
    end
    object QyEseguitiCODICE_FISCALE: TStringField
      FieldName = 'CODICE_FISCALE'
      Size = 32
    end
  end
  object sQyEseguiti: TDataSource
    DataSet = QyEseguiti
    Left = 780
    Top = 160
  end
  object dxBarPopElenco: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end
      item
        Visible = True
        ItemName = 'dxScopieInSala'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton15'
      end
      item
        Visible = True
        ItemName = 'dxBarButton28'
      end
      item
        Visible = True
        ItemName = 'dxBarButton29'
      end
      item
        Visible = True
        ItemName = 'dxBarButton32'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton21'
      end
      item
        Visible = True
        ItemName = 'dxBarButton13'
      end
      item
        Visible = True
        ItemName = 'dxBarButton35'
      end
      item
        Visible = True
        ItemName = 'dxBarButton26'
      end
      item
        Visible = True
        ItemName = 'dxBarButton24'
      end
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxRefresh'
      end
      item
        Visible = True
        ItemName = 'dxBarButton18'
      end
      item
        Visible = True
        ItemName = 'dxBarButton19'
      end
      item
        Visible = True
        ItemName = 'dxBarButton33'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxStmpaEtichette'
      end
      item
        Visible = True
        ItemName = 'dxBarButton16'
      end>
    UseOwnFont = False
    Left = 160
    Top = 520
  end
  object Timer1: TTimer
    Interval = 60000
    OnTimer = Timer1Timer
    Left = 644
    Top = 148
  end
  object dxBarPopEseguiti: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton32'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        Visible = True
        ItemName = 'dxBarButton15'
      end
      item
        Visible = True
        ItemName = 'dxBarButton12'
      end
      item
        Visible = True
        ItemName = 'dxBarButton35'
      end
      item
        Visible = True
        ItemName = 'dxBarButton24'
      end
      item
        Visible = True
        ItemName = 'dxBarButton36'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton30'
      end
      item
        Visible = True
        ItemName = 'dxBarButton31'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxRefresh'
      end
      item
        Visible = True
        ItemName = 'dxBarButton18'
      end
      item
        Visible = True
        ItemName = 'dxBarButton19'
      end
      item
        Visible = True
        ItemName = 'dxBarButton33'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxStmpaEtichette'
      end
      item
        Visible = True
        ItemName = 'dxBarButton17'
      end>
    UseOwnFont = False
    Left = 476
    Top = 428
  end
  object RitornaDaAcc: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'begin'
      ''
      '    for z in (select t.pktriage'
      '              from triage t'
      
        '              where t.pktriage=:pktriage and ((t.statovisita bet' +
        'ween 10 and 130) or t.statovisita = 198)'
      '              )'
      '    loop'
      ''
      '      update triage t'
      '      set t.statovisita=:statovisita,'
      '          t.user_id=:user_id,'
      '          t.data_visita = null,'
      '          t.data_accettazione = null'
      '      where t.pktriage=z.pktriage;'
      ''
      '      update prestazioni p'
      '      set p.stato=0'
      '      where p.triage_fk=z.pktriage and p.stato=1;'
      ''
      '    end loop;'
      ''
      'end;'
      ' '
      ' ')
    Params = <
      item
        Name = 'pktriage'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'statovisita'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'user_id'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 68
    Top = 520
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object qryUser: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_Personale'
        Fields = 'PKPERSONALE'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_Personale'
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qryUserBeforeQuery
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      ' u.nominativo as REAL_NAME ,'
      ' u.isadmin,'
      ' u.admin as superuser,'
      ' u.PASSWORD as USER_PWD ,'
      ' u.PKPERSONALE as USER_ID,'
      ' u.matricola,'
      ' u.profilo_vocale,'
      ' pr.cod_funzione,'
      ' u.pkpersonale,'
      ' tb.eseguito'
      'from persxrep pr '
      'join personale u on u.pkpersonale=pr.personale_fk'
      'join tabfunzioni tb on tb.pktabfunzioni=pr.cod_funzione'
      'where pr.reparti_fk = :reparti_fk'
      'and (u.data_fine is null or u.data_fine>SYSDATE)'
      ' '
      ' '
      ' '
      ' '
      ' ')
    Params = <
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 24
      end>
    QBEMode = False
    Left = 44
    Top = 132
    FastFields = (
      'REAL_NAME,1,70'
      'ISADMIN,3,0'
      'SUPERUSER,3,0'
      'USER_PWD,1,30'
      'USER_ID,3,0'
      'MATRICOLA,1,50'
      'PROFILO_VOCALE,1,30'
      'COD_FUNZIONE,3,0'
      'PKPERSONALE,3,0'
      'ESEGUITO,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qryUserREAL_NAME: TStringField
      FieldName = 'REAL_NAME'
      Size = 40
    end
    object qryUserUSER_PWD: TStringField
      FieldName = 'USER_PWD'
      Size = 30
    end
    object qryUserUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object qryUserMATRICOLA: TStringField
      FieldName = 'MATRICOLA'
      Size = 12
    end
    object qryUserISADMIN: TIntegerField
      FieldName = 'ISADMIN'
    end
    object qryUserPROFILO_VOCALE: TStringField
      FieldName = 'PROFILO_VOCALE'
      Size = 30
    end
    object qryUserCOD_FUNZIONE: TIntegerField
      FieldName = 'COD_FUNZIONE'
    end
    object qryUserPKPERSONALE: TIntegerField
      FieldName = 'PKPERSONALE'
    end
    object qryUserSUPERUSER: TIntegerField
      FieldName = 'SUPERUSER'
    end
    object qryUserESEGUITO: TIntegerField
      FieldName = 'ESEGUITO'
    end
  end
  object LkDiagxWk: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'diagxwk_descr'
        Fields = 'DESCRIZ'
        Options = [ioCaseInsensitive]
        Selected = True
      end>
    IndexName = 'diagxwk_descr'
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = LkDiagxWkBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'DIAGXWK'
    PrimeFields.Strings = (
      'PKDIAGXWK')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'd.PKDIAGXWK,'
      'd.selezionata,'
      's.pkservizi,'
      's.descrizione as descriz,'
      's.slot_standard,'
      's.tipo_diagn,'
      
        'decode(r.pkreparti,:reparti_fk,'#39#39',r.descrizione) as DESC_REPARTO' +
        ','
      'rs.SERVRAD_FK'
      'from diagxwk d'
      'join servizi s on s.pkservizi = d.servizi_fk'
      
        'join repserv rs on rs.REPARTI_FK = s.reparti_fk and rs.SERVIZI_F' +
        'K = s.pkservizi'
      'join reparti r on r.pkreparti = s.reparti_fk'
      'where d.workstation_fk=:workstation_fk'
      'and d.attiva=1'
      'and s.reparti_fk=:reparti_fk'
      'and (s.data_inizio is null or s.data_inizio<=sysdate)'
      'and (s.data_fine is null or s.data_fine>sysdate)'
      ' ')
    Params = <
      item
        Name = 'workstation_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 1
      end
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      030000000200000009000000504B53455256495A490100000000070000004445
      534352495A0100000000}
    Left = 204
    Top = 192
    FastFields = (
      'PKDIAGXWK,3,0'
      'SELEZIONATA,3,0'
      'PKSERVIZI,3,0'
      'DESCRIZ,1,100'
      'SLOT_STANDARD,3,0'
      'TIPO_DIAGN,3,0'
      'DESC_REPARTO,1,60'
      'SERVRAD_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umCached
    object LkDiagxWkDESCRIZ: TStringField
      DisplayLabel = 'Ambulatorio'
      DisplayWidth = 60
      FieldName = 'DESCRIZ'
      Required = True
      Size = 100
    end
    object LkDiagxWkPKSERVIZI: TIntegerField
      DisplayWidth = 10
      FieldName = 'PKSERVIZI'
      Required = True
      Visible = False
    end
    object LkDiagxWkSLOT_STANDARD: TIntegerField
      FieldName = 'SLOT_STANDARD'
    end
    object LkDiagxWkDESC_REPARTO: TStringField
      FieldName = 'DESC_REPARTO'
      Size = 60
    end
    object LkDiagxWkSERVRAD_FK: TIntegerField
      FieldName = 'SERVRAD_FK'
    end
    object LkDiagxWkTIPO_DIAGN: TIntegerField
      FieldName = 'TIPO_DIAGN'
    end
    object LkDiagxWkPKDIAGXWK: TIntegerField
      FieldName = 'PKDIAGXWK'
    end
    object LkDiagxWkSELEZIONATA: TIntegerField
      FieldName = 'SELEZIONATA'
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxPrintListaPrenotati
    Version = 0
    Left = 440
    Top = 144
    object dxPrintListaAccettati: TdxGridReportLink
      Active = True
      Component = cxGridEseguiti
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 5080
      PrinterPage.GrayShading = True
      PrinterPage.Header = 5080
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageFooter.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageFooter.Font.Color = clWindowText
      PrinterPage.PageFooter.Font.Height = -11
      PrinterPage.PageFooter.Font.Name = 'Verdana'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageFooter.LeftTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[User Name]')
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Lista esami eseguiti')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clWindowText
      PrinterPage.PageHeader.Font.Height = -19
      PrinterPage.PageHeader.Font.Name = 'Verdana'
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'Lista pazienti eseguiti'
      ReportDocument.CreationDate = 42333.782943761570000000
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clWindowText
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = [fsBold]
      ShrinkToPageWidth = True
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      OptionsCards.Shadow.Color = clBlack
      OptionsExpanding.ExpandGroupRows = True
      OptionsExpanding.ExpandMasterRows = True
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsSelection.ProcessExactSelection = True
      OptionsSelection.ProcessSelection = True
      OptionsSize.AutoWidth = True
      OptionsView.Footers = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
    object dxPrintListaPrenotati: TdxGridReportLink
      Active = True
      Component = cxGridDaEseguire
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 5080
      PrinterPage.GrayShading = True
      PrinterPage.Header = 5080
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12800
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageFooter.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageFooter.Font.Color = clWindowText
      PrinterPage.PageFooter.Font.Height = -11
      PrinterPage.PageFooter.Font.Name = 'Verdana'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageFooter.LeftTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[User Name]')
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Lista esami da eseguire')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clWindowText
      PrinterPage.PageHeader.Font.Height = -19
      PrinterPage.PageHeader.Font.Name = 'Verdana'
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'Lista pazienti da eseguire'
      ReportDocument.CreationDate = 42333.782943761570000000
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clWindowText
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = [fsBold]
      ShrinkToPageWidth = True
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      OptionsCards.Shadow.Color = clBlack
      OptionsExpanding.ExpandGroupRows = True
      OptionsExpanding.ExpandMasterRows = True
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsSelection.ProcessExactSelection = True
      OptionsSelection.ProcessSelection = True
      OptionsSize.AutoWidth = True
      OptionsView.Footers = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
    object dxPrintListaRichieste: TdxGridReportLink
      Active = True
      Component = cxGridRichieste
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 5080
      PrinterPage.GrayShading = True
      PrinterPage.Header = 5080
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12800
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageFooter.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageFooter.Font.Color = clWindowText
      PrinterPage.PageFooter.Font.Height = -11
      PrinterPage.PageFooter.Font.Name = 'Verdana'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageFooter.LeftTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[User Name]')
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Lista richieste')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clWindowText
      PrinterPage.PageHeader.Font.Height = -11
      PrinterPage.PageHeader.Font.Name = 'Verdana'
      PrinterPage.PageHeader.Font.Style = []
      PrinterPage.PageSize.X = 210820
      PrinterPage.PageSize.Y = 297180
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42333.782943946760000000
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clWindowText
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = [fsBold]
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      OptionsCards.Shadow.Color = clBlack
      OptionsExpanding.ExpandGroupRows = True
      OptionsExpanding.ExpandMasterRows = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsSelection.ProcessExactSelection = True
      OptionsSelection.ProcessSelection = True
      OptionsSize.AutoWidth = True
      OptionsView.Footers = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
  end
  object sqDettEseguiti: TDataSource
    DataSet = qDettEseguiti
    Left = 860
    Top = 220
  end
  object qCancVisita: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'begin'
      ''
      '    update triage t'
      '    set statovisita=:statovisita,'
      '    user_id=:user_id,'
      '    note_preno=:note_preno,'
      '    data_visita=sysdate,'
      '    servizi_fk=NVL(servizi_fk,:servizi_fk)'
      '    where t.pktriage = :pktriage;'
      ''
      '    update impegnative'
      '    set stato=0, user_id=:user_id, data_erogazione=sysdate'
      '    where pkimpegnative = :pkimpegnative and'
      
        '    not exists(select 1 from triage t where t.impegnative_fk=:pk' +
        'impegnative and t.statovisita between 1 and 199);'
      ''
      'end;'
      '')
    Params = <
      item
        Name = 'statovisita'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'user_id'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'note_preno'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'servizi_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'pktriage'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'pkimpegnative'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 784
    Top = 328
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object QyDaAcc: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    AutoCalcFields = False
    Active = False
    Constraints = <>
    BeforeQuery = QyDaAccBeforeQuery
    SequenceField.ApplyMoment = amOnNewRecord
    NoSQLFields.Strings = (
      'nome_paziente'
      'data_nascita'
      'codice_fiscale'
      'telefono'
      'tipo_accesso'
      'ris_study_euid'
      'san_ident'
      'assistibili_fk')
    EditMode = 'Read Only'
    UpdateTableName = 'TRIAGE'
    PrimeFields.Strings = (
      'PKTRIAGE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      '   t.PKTRIAGE,'
      '   t.AGENDE_FK,'
      '   t.ORA_INIZIO,'
      '   t.ora_fine,'
      '   t.ora_sommin,'
      '   t.statovisita,'
      '   t.DURATA,'
      '   t.USER_ID,'
      '   t.note_preno,'
      '   t.ris_study_euid,'
      '   t.servizi_fk,'
      '   t.reparti_fk,'
      '   i.tipo_attivita_fk,'
      '   i.PROVENIENZA,'
      '   i.data_prescrizione,'
      '   t.data_accettazione,'
      '   i.urgenza,'
      '   i.placer_order_number,'
      '   ae.cod_esterno as PID,'
      '   i.esami_in_reparto,'
      '   i.assistibili_fk,'
      '   i.reparto_rich_fk,'
      '   t.IMPEGNATIVE_FK,'
      '   t.DIAGNOSTICA_FK,'
      '   a.NOMINATIVO as Nome_paziente,'
      '   a.DATA_NASCITA,'
      '   a.san_ident,'
      '   a.codice_fiscale,'
      '   s.descrizione as Diagnostica,'
      
        '   DECODE(i.provenienza,'#39'E'#39',o.descrizione,rp.descrizione) as Rep' +
        'arto,'
      '   o.tipo_fattura,'
      '   i.incompleta,'
      '   i.quesito_diagn,'
      
        '   decode(u.CHK_SLITTA_REP,0,rp.descrizione,sp.descrizione) as N' +
        'omeReparto,'
      '   ta.tipo_accesso'
      '   /*wdiagn2*/'
      'from diagxwk d'
      'join servizi s on s.pkservizi = d.servizi_fk'
      'join triage t on t.diagnostica_fk=s.pkservizi'
      'join impegnative i on i.pkimpegnative = t.impegnative_fk'
      'join assistibili a on i.assistibili_fk = a.pkassistibili'
      'left join reparti rp on rp.pkreparti = i.reparto_rich_fk'
      'left join servizi sp on sp.pkservizi = i.servizio_rich_fk'
      
        'join wtipo_attivita ta on ta.tipo_attivita = i.tipo_attivita_fk ' +
        'and ta.lingua=:lingua'
      'left join ospedali o on o.codice = i.osp_rich'
      'join ucs_app_info u on u.reparti_fk = i.reparti_fk'
      'join param_ticket pt on pt.pkparamticket=1'
      'join anag_esterne ae on ae.assistibili_fk = a.pkassistibili'
      'where d.workstation_fk=:workstation_fk'
      'and d.attiva=1'
      'and d.selezionata=1'
      'and s.reparti_fk=:reparti_fk'
      
        'and i.data_prescrizione between :data_dal and to_date(to_char(:d' +
        'ata_prescr,'#39'DDMMYYYY'#39')||'#39'2359'#39','#39'DDMMYYYYHH24MI'#39')'
      'and t.STATOVISITA in (21,40,41)'
      'and ae.idauthority = pt.anag_authority')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'workstation_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'data_dal'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 36892d
      end
      item
        Name = 'data_prescr'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 36892d
      end>
    UpdateObject = qUpdQyDaAcc
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      03000000230000000E000000504B5052454E4F54415A494F4E4901000000000D
      00000043414C454E444152494F5F464B0100000000090000004F52415F505245
      4E4F0100000000050000005455524E4F01000000000B000000535441544F5F50
      52454E4F0100000000070000005052495641544101000000000B00000050415A
      5052454E4F5F464B010000000008000000424C4F434341544101000000000600
      000044555241544101000000000D000000544950495649534954415F464B0100
      0000000C000000504552534F4E414C455F464B01000000000D000000414D4255
      4C41544F52495F464B01000000000B000000494D5045474E4154495641010000
      00000C000000494D504F5354415F54564953010000000007000000434F474E4F
      4D450100000000040000004E4F4D4501000000000D0000004E4F4D455F50415A
      49454E5445010000000011000000434F474E4F4D455F41435155495349544F01
      000000000C000000444154415F4E41534349544101000000000800000054454C
      45464F4E4F01000000000B00000050415A5F5052495641544101000000000C00
      00005249435F414E54494349504F0100000000060000004E4F54455F31010000
      0000060000004E4F54455F3200000000000E0000004153534953544942494C49
      5F464B01000000000A000000444154415F5052454E4F01000000000D00000044
      4154415F43414D425456495301000000000A00000053455256495A495F464B01
      000000000D000000444553435F53455256495A494F01000000000A0000004445
      53435F54564953490100000000080000004E4F54455F4F503200000000000A00
      000054454D505F535441544F0100000000080000004F52415F46494E45010000
      00000A0000004455524154415449504F01000000001000000050524553545350
      45434D554C545F464B0100000000}
    Left = 48
    Top = 304
    FastFields = (
      'PKTRIAGE,3,0'
      'AGENDE_FK,3,0'
      'ORA_INIZIO,11,0'
      'ORA_FINE,11,0'
      'ORA_SOMMIN,11,0'
      'STATOVISITA,3,0'
      'DURATA,3,0'
      'USER_ID,3,0'
      'NOTE_PRENO,1,4000'
      'RIS_STUDY_EUID,1,100'
      'SERVIZI_FK,3,0'
      'REPARTI_FK,3,0'
      'TIPO_ATTIVITA_FK,1,2'
      'PROVENIENZA,1,1'
      'DATA_PRESCRIZIONE,11,0'
      'DATA_ACCETTAZIONE,11,0'
      'URGENZA,3,0'
      'PLACER_ORDER_NUMBER,1,32'
      'PID,1,32'
      'ESAMI_IN_REPARTO,3,0'
      'ASSISTIBILI_FK,3,0'
      'REPARTO_RICH_FK,3,0'
      'IMPEGNATIVE_FK,3,0'
      'DIAGNOSTICA_FK,3,0'
      'NOME_PAZIENTE,1,122'
      'DATA_NASCITA,11,0'
      'SAN_IDENT,3,0'
      'CODICE_FISCALE,1,32'
      'DIAGNOSTICA,1,100'
      'REPARTO,1,80'
      'TIPO_FATTURA,3,0'
      'INCOMPLETA,3,0'
      'QUESITO_DIAGN,1,4000'
      'NOMEREPARTO,1,100'
      'TIPO_ACCESSO,1,1')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object QyDaAccPKTRIAGE: TIntegerField
      DisplayLabel = 'Nr. Esame'
      FieldName = 'PKTRIAGE'
    end
    object QyDaAccORA_INIZIO: TDateTimeField
      DisplayLabel = 'Ora'
      FieldName = 'ORA_INIZIO'
      DisplayFormat = 'hh:nn'
    end
    object QyDaAccDURATA: TIntegerField
      DisplayLabel = 'Durata'
      FieldName = 'DURATA'
    end
    object QyDaAccPROVENIENZA: TStringField
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object QyDaAccIMPEGNATIVE_FK: TIntegerField
      DisplayLabel = 'Nr. Accettazione'
      FieldName = 'IMPEGNATIVE_FK'
    end
    object QyDaAccDIAGNOSTICA_FK: TIntegerField
      FieldName = 'DIAGNOSTICA_FK'
    end
    object QyDaAccNOME_PAZIENTE: TStringField
      DisplayLabel = 'Nome paziente'
      FieldName = 'NOME_PAZIENTE'
      Size = 122
    end
    object QyDaAccDATA_NASCITA: TDateTimeField
      DisplayLabel = 'Data nascita'
      FieldName = 'DATA_NASCITA'
    end
    object QyDaAccSTATOVISITA: TIntegerField
      FieldName = 'STATOVISITA'
    end
    object QyDaAccDIAGNOSTICA: TStringField
      DisplayLabel = 'Diagnostica'
      FieldName = 'DIAGNOSTICA'
      Size = 100
    end
    object QyDaAccUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object QyDaAccDATA_PRESCRIZIONE: TDateTimeField
      DisplayLabel = 'Data richiesta'
      FieldName = 'DATA_PRESCRIZIONE'
      DisplayFormat = 'ddddd hh:nn'
    end
    object QyDaAccNOMEREPARTO: TStringField
      DisplayLabel = 'Reparto richiedente'
      FieldName = 'NOMEREPARTO'
      Size = 60
    end
    object QyDaAccORA_FINE: TDateTimeField
      FieldName = 'ORA_FINE'
    end
    object QyDaAccURGENZA: TIntegerField
      DisplayLabel = 'Urgenza'
      FieldName = 'URGENZA'
    end
    object QyDaAccTIPO_ATTIVITA_FK: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_ATTIVITA_FK'
      Size = 2
    end
    object QyDaAccESAMI_IN_REPARTO: TIntegerField
      DisplayLabel = 'Trasporto'
      FieldName = 'ESAMI_IN_REPARTO'
    end
    object QyDaAccDATA_ACCETTAZIONE: TDateTimeField
      FieldName = 'DATA_ACCETTAZIONE'
    end
    object QyDaAccORA_SOMMIN: TDateTimeField
      FieldName = 'ORA_SOMMIN'
      DisplayFormat = 'hh:nn'
    end
    object QyDaAccAGENDE_FK: TIntegerField
      FieldName = 'AGENDE_FK'
    end
    object QyDaAccNOTE_PRENO: TStringField
      DisplayLabel = 'Note'
      FieldName = 'NOTE_PRENO'
      Size = 4000
    end
    object QyDaAccPLACER_ORDER_NUMBER: TStringField
      FieldName = 'PLACER_ORDER_NUMBER'
      Size = 32
    end
    object QyDaAccTIPO_ACCESSO: TStringField
      FieldName = 'TIPO_ACCESSO'
      Size = 1
    end
    object QyDaAccRIS_STUDY_EUID: TStringField
      FieldName = 'RIS_STUDY_EUID'
      Size = 100
    end
    object QyDaAccSAN_IDENT: TIntegerField
      FieldName = 'SAN_IDENT'
    end
    object QyDaAccASSISTIBILI_FK: TIntegerField
      FieldName = 'ASSISTIBILI_FK'
    end
    object QyDaAccSERVIZI_FK: TIntegerField
      FieldName = 'SERVIZI_FK'
    end
    object QyDaAccREPARTO: TStringField
      FieldName = 'REPARTO'
      Size = 80
    end
    object QyDaAccINCOMPLETA: TIntegerField
      FieldName = 'INCOMPLETA'
    end
    object QyDaAccREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object QyDaAccQUESITO_DIAGN: TStringField
      FieldName = 'QUESITO_DIAGN'
      Size = 4000
    end
    object QyDaAccTIPO_FATTURA: TIntegerField
      FieldName = 'TIPO_FATTURA'
    end
    object QyDaAccREPARTO_RICH_FK: TIntegerField
      FieldName = 'REPARTO_RICH_FK'
    end
    object QyDaAccPID: TStringField
      FieldName = 'PID'
      Size = 32
    end
    object QyDaAccCODICE_FISCALE: TStringField
      FieldName = 'CODICE_FISCALE'
      Size = 32
    end
  end
  object sQyDaAcc: TDataSource
    DataSet = QyDaAcc
    Left = 48
    Top = 364
  end
  object QyDaAccEsami: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_QyDaAccEsami'
        Fields = 'TRIAGE_FK'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_QyDaAccEsami'
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = QyDaAccEsamiBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      '     p.triage_fk,'
      '     p.pkprestazioni,'
      '     c.pkcodicirad,'
      '     c.codice,'
      '     c.descrizione,'
      '     p.DURATA,'
      '     p.numero_prestazione,'
      '     p.PROGRESSIVO_RIGA,'
      '     c.DOSE,'
      '     c.IDENT_FK,'
      '     m.magart_fk,'
      '     m.quantita as qr'
      'from diagxwk d'
      'join servizi s on s.pkservizi = d.servizi_fk'
      'join triage t on t.diagnostica_fk=s.PKSERVIZI'
      'join impegnative i on i.pkimpegnative = t.impegnative_fk'
      'join prestazioni p on p.triage_fk = t.pktriage'
      'left join codicirad c on c.pkcodicirad = p.codicirad_fk'
      
        'left join movim m on m.prestazioni_fk = p.pkprestazioni and m.ti' +
        'po=1'
      'where d.workstation_fk=:workstation_fk'
      'and d.attiva=1'
      'and d.selezionata=1'
      'and s.reparti_fk=:reparti_fk'
      
        'and i.data_prescrizione between :data_dal and to_date(to_char(:d' +
        'ata_prescr,'#39'DDMMYYYY'#39')||'#39'2359'#39','#39'DDMMYYYYHH24MI'#39')'
      'and t.STATOVISITA in (21,40,41)')
    Params = <
      item
        Name = 'workstation_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'data_dal'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 0d
      end
      item
        Name = 'data_prescr'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 0d
      end>
    QBEMode = False
    Left = 40
    Top = 256
    FastFields = (
      'TRIAGE_FK,3,0'
      'PKPRESTAZIONI,6,0'
      'PKCODICIRAD,3,0'
      'CODICE,1,12'
      'DESCRIZIONE,1,100'
      'DURATA,3,0'
      'NUMERO_PRESTAZIONE,3,0'
      'PROGRESSIVO_RIGA,3,0'
      'DOSE,6,0'
      'IDENT_FK,1,12'
      'MAGART_FK,3,0'
      'QR,6,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object QyDaAccEsamiCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object QyDaAccEsamiDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
    object QyDaAccEsamiDURATA: TIntegerField
      DisplayLabel = 'Durata'
      FieldName = 'DURATA'
    end
    object QyDaAccEsamiPKPRESTAZIONI: TFloatField
      FieldName = 'PKPRESTAZIONI'
    end
    object QyDaAccEsamiTRIAGE_FK: TIntegerField
      FieldName = 'TRIAGE_FK'
    end
    object QyDaAccEsamiPKCODICIRAD: TIntegerField
      FieldName = 'PKCODICIRAD'
    end
    object QyDaAccEsamiIDENT_FK: TStringField
      DisplayLabel = 'Tariffario'
      FieldName = 'IDENT_FK'
      Size = 12
    end
    object QyDaAccEsamiMAGART_FK: TIntegerField
      DisplayLabel = 'Radiofarmaco'
      FieldName = 'MAGART_FK'
    end
    object QyDaAccEsamiQR: TFloatField
      DisplayLabel = 'Dose'
      FieldName = 'QR'
    end
    object QyDaAccEsamiNUMERO_PRESTAZIONE: TIntegerField
      DisplayLabel = 'Q.'
      FieldName = 'NUMERO_PRESTAZIONE'
    end
    object QyDaAccEsamiDOSE: TFloatField
      DisplayLabel = 'Dose'
      FieldName = 'DOSE'
    end
    object QyDaAccEsamiPROGRESSIVO_RIGA: TIntegerField
      FieldName = 'PROGRESSIVO_RIGA'
    end
  end
  object sQyDaAccEsami: TDataSource
    DataSet = QyDaAccEsami
    Left = 80
    Top = 240
  end
  object dxBarPopRiaccetta: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        BeginGroup = True
        Visible = True
      end
      item
        Visible = True
        ItemName = 'dxBarButton27'
      end
      item
        Visible = True
        ItemName = 'dxBarButton22'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton38'
      end
      item
        Visible = True
        ItemName = 'dxBarButton23'
      end
      item
        Visible = True
        ItemName = 'dxBarButton37'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxAvvisi'
      end
      item
        Visible = True
        ItemName = 'dxAttivaRefresh'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxRefresh'
      end
      item
        Visible = True
        ItemName = 'dxBarButton18'
      end
      item
        Visible = True
        ItemName = 'dxBarButton19'
      end
      item
        Visible = True
        ItemName = 'dxBarButton33'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton25'
      end>
    UseOwnFont = False
    Left = 60
    Top = 432
  end
  object qUpdQyDaAcc: TAstaUpdateSQL
    DeleteSQL.Strings = (
      'declare'
      '  fatto integer;'
      'begin'
      ''
      '    select t.statovisita into fatto'
      '    from triage t'
      '    where t.pktriage = :pktriage;'
      ''
      '    if (fatto between 40 and 41) then'
      ''
      '      update triage set'
      '      user_id = :user_id,'
      '      statovisita = :statovisita,'
      '      note_preno = :note_preno,'
      '      servizi_fk = :servizi_fk'
      '      where pktriage = :pktriage;'
      ''
      '      update impegnative'
      '      set stato=0,user_id=:user_id'
      '      where pkimpegnative = :impegnative_fk;'
      ''
      '    elsif (fatto between 130 and 198) then'
      ''
      
        '      raise_application_error(-20001, '#39'Cancellazione non possibi' +
        'le: la richiesta '#232' gi'#224' stata eseguita'#39');'
      ''
      '    else'
      ''
      
        '      raise_application_error(-20001, '#39'Cancellazione non possibi' +
        'le'#39');'
      ''
      '    end if;'
      ''
      'end;'
      ''
      ' ')
    ModifySQL.Strings = (
      'declare'
      '  xstato triage.statovisita%TYPE;'
      '  xaltrepreno integer;'
      '  xpersonale triage.personale_fk%TYPE;'
      '  xdata_visita triage.data_visita%TYPE;'
      '  txt varchar2(2000);'
      '  xblob blob;'
      '  Dest_pos integer;'
      '  Src_pos integer;'
      'begin'
      ''
      '   for z in ('
      
        '          select t.pktriage, t.diagnostica_fk, t.impegnative_fk,' +
        ' s.eseguito, u.DESCR_AGG_REF, u.flag_mn'
      '          from triage t'
      '          join servizi s on s.pkservizi=:DIAGNOSTICA_FK'
      '          join ucs_app_info u on u.reparti_fk=t.reparti_fk'
      '          where t.pktriage = :pktriage'
      '          and t.statovisita = :old_statovisita          '
      '             )'
      '   loop'
      ''
      
        '     if :STATOVISITA in (100,120,130) and z.eseguito in (1,5) th' +
        'en'
      ''
      '        update triage set'
      '        statovisita = 120,'
      '        user_id = :USER_ID'
      
        '        where pktriage = z.pktriage and statovisita between 20 a' +
        'nd 110;'
      ''
      
        '        if z.eseguito=1 then -- non da refertare in automatico p' +
        'er MN se non e'#39' l'#39'ultimo esame..'
      ''
      '          xstato := 130;'
      ''
      '          if z.flag_mn in (1,3) then'
      '               select count(*) into xaltrepreno'
      '               from triage t'
      '               where t.impegnative_fk=z.impegnative_fk and'
      '                     t.statovisita between 20 and 122 and'
      '                     t.pktriage<>z.pktriage;'
      '               if xaltrepreno>0 then'
      '                  xstato := 198;'
      '               end if;'
      '          end if;'
      ''
      '        else'
      ''
      '          xstato := 198;'
      ''
      '        end if;'
      '        xpersonale := :USER_ID;'
      '        xdata_visita := sysdate;'
      '     else'
      '        xpersonale := null;'
      '        xdata_visita := null;'
      '        xstato := :STATOVISITA;'
      '     end if;'
      ''
      '     update triage set'
      '     ORA_INIZIO = :ORA_INIZIO,'
      '     USER_ID = :USER_ID,'
      '     STATOVISITA = xstato,'
      '     DIAGNOSTICA_FK = :DIAGNOSTICA_FK,'
      '     ORA_FINE = :ORA_FINE,'
      '     AGENDE_FK = :AGENDE_FK,'
      '     NOTE_PRENO = :NOTE_PRENO,'
      '     DATA_ACCETTAZIONE = :DATA_ACCETTAZIONE,'
      '     ORA_SOMMIN = :ORA_SOMMIN,'
      '     servizi_fk=NVL(servizi_fk,:servizi_fk),'
      '     personale_fk = xpersonale,'
      '     data_visita = xdata_visita'
      '     where PKTRIAGE = z.pktriage;'
      ''
      '     case'
      ''
      '     when xstato in (130,198) then'
      ''
      '--          update IMPEGNATIVE i'
      '--          set data_erogazione = sysdate'
      '--          where pkimpegnative = : impegnative_fk;'
      ''
      '          update prestazioni'
      '          set stato=1'
      '          where triage_fk = z.PKTRIAGE and stato=0;'
      ''
      '          if xstato=130 and z.DESCR_AGG_REF=1 then'
      '             txt := '#39#39';'
      '             for m in ('
      '                select'
      '                m.quantita as qr,'
      '                a.descrizione,'
      '                a.um,'
      '                a.descr_agg'
      '                from prestazioni p'
      '                join movim m on m.prestazioni_fk=p.pkprestazioni'
      '                left join magart a on a.pkmagart=m.magart_fk'
      '                where p.triage_fk = z.pktriage'
      '                )'
      '            loop'
      
        '                txt := txt || m.DESCR_AGG || '#39' '#39' || m.DESCRIZION' +
        'E || '#39' '#39' || m.UM || '#39' '#39' || to_char(m.QR,'#39'FM999.00'#39') || chr(13) |' +
        '| chr(10);'
      '            end loop;'
      ''
      '            if txt is not null then'
      
        '                for k in (select rt.referti_fk from refxtriage r' +
        't where rt.triage_fk=z.pktriage)'
      '                loop'
      '                        update referti r'
      '                        set r.diagnosi = empty_blob()'
      '                        where r.pkreferti = k.referti_fk'
      '                        returning r.diagnosi into xblob;'
      ''
      '                        Dest_pos := 1;'
      '                        Src_pos := 1;'
      ''
      
        '                        DBMS_LOB.COPY(xblob, UTL_RAW.CAST_TO_RAW' +
        '(txt), Length(txt), Dest_pos, Src_pos);'
      '                end loop;'
      '            end if;'
      '          end if;'
      ''
      '     /* -- assegnazione automatica sala operatoria -- */'
      '     when xstato=120 then'
      ''
      '        if :OLD_STATOVISITA=40 then'
      '                for k in ('
      '                     select t.impegnative_fk,u.tipo_att_sala_op'
      '                     from triage t'
      
        '                     join ucs_app_info u on u.reparti_fk = t.rep' +
        'arti_fk'
      
        '                     join prestazioni p on p.triage_fk = t.pktri' +
        'age'
      '                     where t.pktriage = z.pktriage'
      
        '                     and u.sala_operatoria_fk is not null and u.' +
        'sala_operatoria_fk=t.diagnostica_fk'
      '                     and u.tipo_att_sala_op is not null'
      
        '                     and u.CODICIRAD_FK is not null and p.codici' +
        'rad_fk = u.CODICIRAD_FK'
      '                         )'
      '                loop'
      ''
      '                 update impegnative i'
      '                 set i.tipo_attivita_fk = k.tipo_att_sala_op'
      '                 where i.pkimpegnative = k.IMPEGNATIVE_FK'
      '                 and i.tipo_attivita_fk<>k.tipo_att_sala_op;'
      ''
      '                end loop;'
      '        end if;'
      ''
      '     else'
      '        -- non gestito'
      '        null;'
      '     end case;'
      ''
      '   end loop;'
      ''
      'end;'
      ' '
      ' '
      ' '
      ' ')
    Left = 116
    Top = 308
  end
  object qyPrenoDett: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_PrenoDett'
        Fields = 'triage_fk;pkprestazioni'
        Options = []
        Selected = True
      end
      item
        Name = 'Idx_PrenoCodice'
        Fields = 'CODICE'
        Options = []
      end>
    IndexName = 'Idx_PrenoDett'
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qyPrenoDettBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    OnAfterPopulate = qyPrenoDettAfterPopulate
    EditMode = 'Read Only'
    PrimeFields.Strings = (
      'PKPRESTAZIONI')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      '     p.pkprestazioni,'
      '     p.triage_fk,'
      '     p.dose,'
      '     p.stato,'
      '     p.ident_fk,'
      '     c.pkcodicirad,'
      '     c.codice,'
      '     c.branca,'
      '     b.descrizione as DescBranca,'
      
        '     NVL2(p.specificazioni_fk,c.descrizione||'#39' '#39'||sp.descrizione' +
        ',c.descrizione) as Descrizione,'
      '     p.DURATA,'
      '     p.numero_prestazione,'
      '     p.PROGRESSIVO_RIGA,'
      '     m.magart_fk,'
      '     m.quantita as qr'
      'from diagxwk d'
      'join servizi s on s.pkservizi = d.servizi_fk'
      'join triage t on t.diagnostica_fk=s.PKSERVIZI'
      'join prestazioni p on p.triage_fk = t.pktriage'
      'left join codicirad c on c.pkcodicirad=p.codicirad_fk'
      'left join branche b on b.pkbranche = c.branca'
      
        'left join movim m on m.prestazioni_fk = p.pkprestazioni and m.ti' +
        'po=1'
      
        'left join specificazioni sp on sp.pkspecificazioni = p.specifica' +
        'zioni_fk'
      'where d.workstation_fk=:workstation_fk'
      'and d.attiva=1'
      'and d.selezionata=1'
      'and s.reparti_fk=:reparti_fk'
      'and ('
      
        '(t.statovisita in :show_eseguiti and t.ora_inizio between (trunc' +
        '(:data_preno)-:gglista) and to_date(to_char(:data_preno,'#39'DDMMYYY' +
        'Y'#39')||'#39'2359'#39','#39'DDMMYYYYHH24MI'#39') )'
      '/* subst3 */'
      ')'
      ' '
      ' '
      ' ')
    Params = <
      item
        Name = 'workstation_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'show_eseguiti'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = '#(120,121,122)'
      end
      item
        Name = 'data_preno'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 36892d
      end
      item
        Name = 'gglista'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 492
    Top = 260
    FastFields = (
      'PKPRESTAZIONI,6,0'
      'TRIAGE_FK,3,0'
      'DOSE,6,0'
      'STATO,3,0'
      'IDENT_FK,1,12'
      'PKCODICIRAD,3,0'
      'CODICE,1,12'
      'BRANCA,1,3'
      'DESCBRANCA,1,60'
      'DESCRIZIONE,1,131'
      'DURATA,3,0'
      'NUMERO_PRESTAZIONE,3,0'
      'PROGRESSIVO_RIGA,3,0'
      'MAGART_FK,3,0'
      'QR,6,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qyPrenoDettPKPRESTAZIONI: TFloatField
      FieldName = 'PKPRESTAZIONI'
    end
    object qyPrenoDettCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object qyPrenoDettDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
    object qyPrenoDettDOSE: TFloatField
      DisplayLabel = 'Dose'
      FieldName = 'DOSE'
    end
    object qyPrenoDettIDENT_FK: TStringField
      DisplayLabel = 'Tariffario'
      FieldName = 'IDENT_FK'
      Size = 12
    end
    object qyPrenoDettQR: TFloatField
      DisplayLabel = 'Dose'
      FieldName = 'QR'
    end
    object qyPrenoDettTRIAGE_FK: TIntegerField
      FieldName = 'TRIAGE_FK'
    end
    object qyPrenoDettSTATO: TIntegerField
      DisplayLabel = 'Stato esame'
      FieldName = 'STATO'
    end
    object qyPrenoDettPKCODICIRAD: TIntegerField
      FieldName = 'PKCODICIRAD'
    end
    object qyPrenoDettDURATA: TIntegerField
      FieldName = 'DURATA'
    end
    object qyPrenoDettNUMERO_PRESTAZIONE: TIntegerField
      DisplayLabel = 'Q.'
      FieldName = 'NUMERO_PRESTAZIONE'
    end
    object qyPrenoDettMAGART_FK: TIntegerField
      DisplayLabel = 'Radiofarmaco'
      FieldName = 'MAGART_FK'
    end
    object qyPrenoDettPROGRESSIVO_RIGA: TIntegerField
      FieldName = 'PROGRESSIVO_RIGA'
    end
    object qyPrenoDettBRANCA: TStringField
      DisplayLabel = 'Gruppo'
      FieldName = 'BRANCA'
      Size = 3
    end
    object qyPrenoDettDESCBRANCA: TStringField
      DisplayLabel = 'Tipo esame'
      FieldName = 'DESCBRANCA'
      Size = 60
    end
  end
  object sqyPrenoDett: TDataSource
    DataSet = qyPrenoDett
    Left = 564
    Top = 272
  end
  object AllieviTecnici: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_Medici'
        Fields = 'NOMINATIVO'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_Medici'
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = AllieviTecniciBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'SELECT'
      ' U.COGNOME,'
      ' U.NOME,'
      ' u.nominativo,'
      ' U.PKPERSONALE'
      'from Personale u'
      'join persxrep pr on pr.personale_fk=u.pkpersonale'
      'where pr.reparti_fk = :reparti_fk'
      'and u.funz_interni = 5'
      'and (u.data_fine is null or u.data_fine>SYSDATE)'
      ' ')
    Params = <
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 332
    Top = 415
    FastFields = (
      'COGNOME,1,30'
      'NOME,1,30'
      'NOMINATIVO,1,70'
      'PKPERSONALE,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object AllieviTecniciCOGNOME: TStringField
      DisplayLabel = 'Cognome'
      FieldName = 'COGNOME'
      Size = 30
    end
    object AllieviTecniciNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 30
    end
    object AllieviTecniciPKPERSONALE: TIntegerField
      FieldName = 'PKPERSONALE'
    end
    object AllieviTecniciNOMINATIVO: TStringField
      FieldName = 'NOMINATIVO'
      Size = 70
    end
  end
  object LkListeRefertazione: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = LkListeRefertazioneBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'pkservizi,'
      'descrizione as descriz'
      'from servizi'
      'where reparti_fk=:pkreparti and tipo_servizio='#39'S'#39
      'and (data_inizio is null or data_inizio<=sysdate)'
      'and (data_fine is null or data_fine>sysdate)'
      ' '
      ' ')
    Params = <
      item
        Name = 'pkreparti'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      030000000200000009000000504B53455256495A490100000000070000004445
      534352495A0100000000}
    Left = 392
    Top = 432
    FastFields = (
      'PKSERVIZI,3,0'
      'DESCRIZ,1,100')
    FMultiTable = ()
    UpdateMethod = umManual
    object LkListeRefertazioneDESCRIZ: TStringField
      DisplayLabel = 'Ambulatorio'
      DisplayWidth = 60
      FieldName = 'DESCRIZ'
      Required = True
      Size = 100
    end
    object LkListeRefertazionePKSERVIZI: TIntegerField
      DisplayWidth = 10
      FieldName = 'PKSERVIZI'
      Required = True
      Visible = False
    end
  end
  object EventLogCD: TKSAstaEventClient
    Active = False
    AstaClientSocket = FDMCommon.AstaClientSocket
    DataSets = <
      item
        NomeTable = 'log_cd'
        DataSource = sQyEseguiti
        OnAcceptActiveEvent = EventLogCDDataSets0AcceptActiveEvent
      end>
    Left = 688
    Top = 267
  end
  object qDettEseguiti: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_DettEseguiti'
        Fields = 'triage_fk;pkprestazioni'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_DettEseguiti'
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qDettEseguitiBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    PrimeFields.Strings = (
      'PKPRESTAZIONI')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      '     p.pkprestazioni,'
      '     p.triage_fk,'
      '     c.pkcodicirad,'
      '     c.codice,'
      '     c.descrizione,'
      '     c.branca,'
      '     b.descrizione as DescBranca,'
      '     p.DURATA,'
      '     p.stato,'
      '     p.ident_fk,'
      '     p.numero_prestazione,'
      '     p.PROGRESSIVO_RIGA,'
      '     m.magart_fk,'
      '     m.quantita as qr'
      'from diagxwk d'
      'join servizi s on s.pkservizi = d.servizi_fk'
      'join triage t on t.diagnostica_fk=s.PKSERVIZI'
      'join prestazioni p on p.triage_fk = t.pktriage'
      
        'left join movim m on m.prestazioni_fk = p.pkprestazioni and m.ti' +
        'po=1'
      'left join codicirad c on c.pkcodicirad = p.codicirad_fk'
      'left join branche b on b.pkbranche = c.branca'
      'where d.workstation_fk=:workstation_fk'
      'and d.attiva=1'
      'and d.selezionata=1'
      'and s.reparti_fk=:reparti_fk'
      'and t.statovisita between :statoinizio and 198'
      
        'and t.data_visita between :data_preno and to_date(to_char(:data_' +
        'preno,'#39'DDMMYYYY'#39')||'#39'2359'#39','#39'DDMMYYYYHH24MI'#39')')
    Params = <
      item
        Name = 'workstation_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'statoinizio'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'data_preno'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 36892d
      end>
    QBEMode = False
    Left = 803
    Top = 246
    FastFields = (
      'PKPRESTAZIONI,6,0'
      'TRIAGE_FK,3,0'
      'PKCODICIRAD,3,0'
      'CODICE,1,12'
      'DESCRIZIONE,1,100'
      'BRANCA,1,3'
      'DESCBRANCA,1,60'
      'DURATA,3,0'
      'STATO,3,0'
      'IDENT_FK,1,12'
      'NUMERO_PRESTAZIONE,3,0'
      'PROGRESSIVO_RIGA,3,0'
      'MAGART_FK,3,0'
      'QR,6,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qDettEseguitiPKPRESTAZIONI: TFloatField
      FieldName = 'PKPRESTAZIONI'
    end
    object qDettEseguitiTRIAGE_FK: TIntegerField
      FieldName = 'TRIAGE_FK'
    end
    object qDettEseguitiPKCODICIRAD: TIntegerField
      FieldName = 'PKCODICIRAD'
    end
    object qDettEseguitiCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object qDettEseguitiDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object qDettEseguitiDURATA: TIntegerField
      DisplayLabel = 'Durata'
      FieldName = 'DURATA'
    end
    object qDettEseguitiSTATO: TIntegerField
      DisplayLabel = 'Stato esame'
      FieldName = 'STATO'
    end
    object qDettEseguitiIDENT_FK: TStringField
      DisplayLabel = 'Tariffario'
      FieldName = 'IDENT_FK'
      Size = 12
    end
    object qDettEseguitiNUMERO_PRESTAZIONE: TIntegerField
      DisplayLabel = 'Q.'
      FieldName = 'NUMERO_PRESTAZIONE'
    end
    object qDettEseguitiMAGART_FK: TIntegerField
      DisplayLabel = 'Radiofarmaco'
      FieldName = 'MAGART_FK'
    end
    object qDettEseguitiQR: TFloatField
      DisplayLabel = 'Dose'
      FieldName = 'QR'
    end
    object qDettEseguitiPROGRESSIVO_RIGA: TIntegerField
      FieldName = 'PROGRESSIVO_RIGA'
    end
    object qDettEseguitiBRANCA: TStringField
      DisplayLabel = 'Gruppo'
      FieldName = 'BRANCA'
      Size = 3
    end
    object qDettEseguitiDESCBRANCA: TStringField
      DisplayLabel = 'Tipo esame'
      FieldName = 'DESCBRANCA'
      Size = 60
    end
  end
  object sLkDiagxWk: TDataSource
    DataSet = LkDiagxWk
    Left = 248
    Top = 228
  end
  object ActionList: TActionList
    Images = FDMCommon.cxImageNavigator16
    Left = 300
    Top = 188
    object EsecuzioneEsame: TAction
      Caption = 'Esecuzione esame'
      Hint = 'Accettazione o esecuzione esame'
      ImageIndex = 9
      ShortCut = 118
      OnExecute = EsecuzioneEsameExecute
      OnUpdate = EsecuzioneEsameUpdate
    end
    object TutteDiagnostiche: TAction
      Caption = 'Seleziona tutte le diagnostiche'
      Hint = 'Tutte le diagnostiche'
      OnExecute = TutteDiagnosticheExecute
    end
    object AccettaEsterni: TAction
      Caption = 'Accettazione diretta'
      Hint = 'Accettazione pazienti esterni'
      ImageIndex = 6
      ShortCut = 114
      OnExecute = AccettaEsterniExecute
      OnUpdate = AccettaEsterniUpdate
    end
    object AccettaInterni: TAction
      Caption = 'Accettazione interni'
      Hint = 'Accettazione pazienti interni'
      ImageIndex = 6
      ShortCut = 115
      Visible = False
      OnExecute = AccettaInterniExecute
      OnUpdate = AccettaInterniUpdate
    end
    object AccettaPS: TAction
      Caption = 'Accettazione P.S.'
      Hint = 'Accettazione pazienti di Pronto Soccorso'
      ImageIndex = 6
      ShortCut = 116
      OnExecute = AccettaPSExecute
      OnUpdate = AccettaPSUpdate
    end
    object aSalaOperatoria: TAction
      Caption = 'Sala Operatoria scopia'
      Hint = 'Scopie in sala operatoria'
      ShortCut = 117
      OnExecute = aSalaOperatoriaExecute
      OnUpdate = aSalaOperatoriaUpdate
    end
    object CancellaAccettato: TAction
      Caption = 'Cancella esame'
      Hint = 'Cancella esame accettato'
      ImageIndex = 10
      OnExecute = CancellaAccettatoExecute
      OnUpdate = CancellaAccettatoUpdate
    end
    object aCancellaRichiesta: TAction
      Caption = 'Cancella'
      Hint = 'Cancella richiesta reparti'
      ImageIndex = 10
      OnExecute = aCancellaRichiestaExecute
      OnUpdate = aCancellaRichiestaUpdate
    end
    object aCut: TAction
      Caption = 'Copia per spostamento'
      Hint = 'Copia in memoria di transito per spostamento'
      ImageIndex = 22
      OnExecute = aCutExecute
      OnUpdate = aCutUpdate
    end
    object aPaste: TAction
      Caption = 'Sposta esame copiato'
      Hint = 'Sposta esame copiato nella memoria di transito'
      ImageIndex = 23
      OnExecute = aPasteExecute
      OnUpdate = aPasteUpdate
    end
    object aEndPaste: TAction
      Caption = 'Memoria di transito'
      Hint = 'Richiama gestore memoria di transito'
      ImageIndex = 24
      OnExecute = aEndPasteExecute
      OnUpdate = aEndPasteUpdate
    end
    object StampaEtichette: TAction
      Caption = 'Stampa moduli/etichette'
      Hint = 'Stampa etichette e moduli'
      ImageIndex = 11
      ShortCut = 120
      OnExecute = StampaEtichetteExecute
      OnUpdate = StampaEtichetteUpdate
    end
    object aCorreggiAccettazione: TAction
      Caption = 'Modifica esame'
      Hint = 'Modifica esame'
      ImageIndex = 8
      OnExecute = aCorreggiAccettazioneExecute
      OnUpdate = aCorreggiAccettazioneUpdate
    end
    object RiportaStandard: TAction
      Caption = 'Selezioni standard'
      Hint = 'Riporta alle selezioni standard'
      OnExecute = RiportaStandardExecute
    end
    object Personalizza: TAction
      Caption = 'Personalizza'
      Hint = 'Personalizza la lista'
      OnExecute = PersonalizzaExecute
    end
    object RiportaDaEseguire: TAction
      Caption = 'Riporta da eseguire'
      Hint = 'Riporta esame da non refertare in esami da eseguire'
      ImageIndex = 25
      OnExecute = RiportaDaEseguireExecute
      OnUpdate = RiportaDaEseguireUpdate
    end
    object Aggiorna: TAction
      Caption = 'Aggiorna liste'
      Hint = 'Aggiorna valori delle liste'
      ImageIndex = 18
      OnExecute = AggiornaExecute
    end
    object aRitornoInRichieste: TAction
      Caption = 'Ritorna in Richieste'
      Hint = 'Ritorna in richieste dai reparti'
      ImageIndex = 25
      OnExecute = aRitornoInRichiesteExecute
      OnUpdate = aRitornoInRichiesteUpdate
    end
    object aRitornaPrenotato: TAction
      Caption = 'Ritorna in Prenotazioni'
      Hint = 'Ritorna esame in stato prenotato'
      ImageIndex = 25
      OnExecute = aRitornaPrenotatoExecute
      OnUpdate = aRitornaPrenotatoUpdate
    end
    object Storico: TAction
      Caption = 'Storico'
      Hint = 'Storico operazione'
      ImageIndex = 26
      ShortCut = 119
      OnExecute = StoricoExecute
      OnUpdate = StoricoUpdate
    end
    object ModificaAnagrafica: TAction
      Caption = 'Modifica anagrafica'
      Hint = 'Modifica anagrafica'
      ImageIndex = 8
      OnExecute = ModificaAnagraficaExecute
      OnUpdate = ModificaAnagraficaUpdate
    end
    object StampaGrigliaDaEseguire: TAction
      Caption = 'Stampa lista'
      Hint = 'Stampa lista esami da eseguire'
      ImageIndex = 11
      OnExecute = StampaGrigliaDaEseguireExecute
      OnUpdate = StampaGrigliaDaEseguireUpdate
    end
    object StampaGrigliaEseguiti: TAction
      Caption = 'Stampa lista'
      Hint = 'Stampa lista eseguiti'
      ImageIndex = 11
      OnExecute = StampaGrigliaEseguitiExecute
      OnUpdate = StampaGrigliaEseguitiUpdate
    end
    object ApriTutti: TAction
      Caption = 'Espandi dettagli'
      Hint = 'Espandi le richieste'
      ImageIndex = 27
      OnExecute = ApriTuttiExecute
      OnUpdate = ApriTuttiUpdate
    end
    object ChiudiTutti: TAction
      Caption = 'Chiudi dettagli'
      Hint = 'Chiudi tutte le richieste'
      ImageIndex = 28
      OnExecute = ChiudiTuttiExecute
      OnUpdate = ChiudiTuttiUpdate
    end
    object aStoricoRichieste: TAction
      Caption = 'Storico richiesta'
      Hint = 'Storico richiesta reparti'
      ImageIndex = 26
      OnExecute = aStoricoRichiesteExecute
      OnUpdate = aStoricoRichiesteUpdate
    end
    object ModInternoEsterno: TAction
      Caption = 'Interno/Esterno/PS'
      Hint = 'Cambia provenienza accettazione'
      OnExecute = ModInternoEsternoExecute
      OnUpdate = ModInternoEsternoUpdate
    end
    object StampaListaRichieste: TAction
      Caption = 'Stampa lista'
      ImageIndex = 11
      OnExecute = StampaListaRichiesteExecute
      OnUpdate = StampaListaRichiesteUpdate
    end
    object aModRichiesta: TAction
      Caption = 'Modifica'
      Hint = 'Modifica richiesta'
      ImageIndex = 8
      OnExecute = aModRichiestaExecute
      OnUpdate = aModRichiestaUpdate
    end
    object aAttivaQuesito: TAction
      Caption = 'Visualizza quesito'
      Hint = 'Visualizza quesito'
      OnExecute = aAttivaQuesitoExecute
    end
    object aCambiaSomministrazione: TAction
      Caption = 'Cambia ora somministrazione'
      OnExecute = aCambiaSomministrazioneExecute
      OnUpdate = aCambiaSomministrazioneUpdate
    end
    object aModServizio: TAction
      Caption = 'Modifica servizio'
      OnExecute = aModServizioExecute
      OnUpdate = aModServizioUpdate
    end
    object aPrecedenti: TAction
      Caption = 'Precedenti'
      OnExecute = aPrecedentiExecute
      OnUpdate = aPrecedentiUpdate
    end
    object aModTecnicoEsecutore: TAction
      Caption = 'Modifica tecnico esecutore'
      OnExecute = aModTecnicoEsecutoreExecute
      OnUpdate = aModTecnicoEsecutoreUpdate
    end
    object AssegnaMedico: TAction
      Caption = 'Assegna referto'
      OnExecute = AssegnaMedicoExecute
      OnUpdate = AssegnaMedicoUpdate
    end
    object aInfoOperatore: TAction
      Caption = 'Note'
      Hint = 'Informazioni per l'#39'operatore'
      ImageIndex = 29
      OnExecute = aInfoOperatoreExecute
      OnUpdate = aInfoOperatoreUpdate
    end
    object aCambiaGiorniSelezione: TAction
      Caption = 'aCambiaGiorniSelezione'
      OnExecute = aCambiaGiorniSelezioneExecute
    end
    object aControllaImmagini: TAction
      Caption = 'Test associazione immagini'
      OnExecute = aControllaImmaginiExecute
      OnUpdate = aControllaImmaginiUpdate
    end
    object aCreazioneCD: TAction
      Caption = 'Creazione CD'
      OnExecute = aCreazioneCDExecute
      OnUpdate = aCreazioneCDUpdate
    end
    object aAttivaAltreRich: TAction
      Caption = 'Altre richieste'
      OnExecute = aAttivaAltreRichExecute
    end
    object aAltreRichieste: TAction
      Caption = 'Altre richieste'
      OnExecute = aAltreRichiesteExecute
      OnUpdate = aAltreRichiesteUpdate
    end
    object aCambiaDataSelezione: TAction
      Caption = 'aCambiaDataSelezione'
      OnExecute = aCambiaDataSelezioneExecute
    end
    object DeselezionaTutte: TAction
      Caption = 'Deseleziona tutte'
      OnExecute = DeselezionaTutteExecute
    end
    object aNoteRichiesta: TAction
      Caption = 'Note Richiesta'
      ImageIndex = 29
      OnExecute = aNoteRichiestaExecute
      OnUpdate = aNoteRichiestaUpdate
    end
    object aSelezionaTutti: TAction
      Caption = 'Seleziona tutti'
      OnExecute = aSelezionaTuttiExecute
      OnUpdate = aSelezionaTuttiUpdate
    end
  end
  object sQyPreno: TDataSource
    DataSet = QyPreno
    Left = 544
    Top = 212
  end
  object AlertEventList1: TKSAstaEventClient
    Active = False
    AstaClientSocket = FDMCommon.AstaClientSocket
    DataSets = <
      item
        NomeTable = 'triage'
        DataSource = sQyPreno
        DBTableView = GridDaEseguire
        OnAcceptActiveEvent = AlertEventList1DataSets0AcceptActiveEvent
        OnAfterActiveEvent = AlertEventList1DataSets0AfterActiveEvent
      end
      item
        NomeTable = 'triage'
        DataSource = sQyEseguiti
        DBTableView = GridEseguiti
        OnAcceptActiveEvent = AlertEventList1DataSets1AcceptActiveEvent
      end
      item
        NomeTable = 'triage'
        DataSource = sQyDaAcc
        DBTableView = GridRichieste
        OnAcceptActiveEvent = AlertEventList1DataSets2AcceptActiveEvent
        OnAfterActiveEvent = AlertEventList1DataSets2AfterActiveEvent
        OnInsertActiveEvent = AlertEventList1DataSets2InsertActiveEvent
        OnUpdateActiveEvent = AlertEventList1DataSets2UpdateActiveEvent
        OnDeleteActiveEvent = AlertEventList1DataSets2DeleteActiveEvent
      end>
    OnSetActive = AlertEventList1SetActive
    OnBeforeRefresh = AlertEventList1BeforeRefresh
    Left = 352
    Top = 192
  end
  object ResToPos: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = ResToPosBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      's.pkservizi as SERVIZI_FK,'
      's.DESCRIZIONE AS DESC_SERVIZIO'
      'from diagxwk d'
      'join servizi s on s.pkservizi = d.servizi_fk'
      'where d.workstation_fk=:workstation_fk'
      'and d.attiva=1'
      'and d.selezionata=1'
      'and s.reparti_fk=:reparti_fk'
      'and (s.data_inizio is null or s.data_inizio<=sysdate)'
      'and (s.data_fine is null or s.data_fine>sysdate)')
    Params = <
      item
        Name = 'workstation_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      03000000020000000A00000053455256495A495F464B01000000000D00000044
      4553435F53455256495A494F0100000000}
    Left = 104
    Top = 160
    FastFields = (
      'SERVIZI_FK,3,0'
      'DESC_SERVIZIO,1,100')
    FMultiTable = ()
    UpdateMethod = umManual
    object ResToPosSERVIZI_FK: TIntegerField
      FieldName = 'SERVIZI_FK'
      Required = True
    end
    object ResToPosDESC_SERVIZIO: TStringField
      FieldName = 'DESC_SERVIZIO'
      Required = True
      Size = 100
    end
  end
  object QyPreno: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'QyPrenoIDX_PKTRIAGE'
        Fields = 'PKTRIAGE'
        Options = []
        Selected = True
      end
      item
        Name = 'qyPrenoIDX_CALENDARIO'
        Fields = 'DIAGNOSTICA_FK;ORA_INIZIO'
        Options = []
      end>
    IndexName = 'QyPrenoIDX_PKTRIAGE'
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforePost = QyPrenoBeforePost
    OnNewRecord = QyPrenoNewRecord
    BeforeQuery = QyPrenoBeforeQuery
    SequenceField.Field = 'PKTRIAGE'
    SequenceField.Sequence = 'TRIAGE_PKTRIAGE'
    SequenceField.ApplyMoment = amOnNewRecord
    NoSQLFields.Strings = (
      'TIPO_ATTIVITA_FK'
      'urgenza'
      'esami_in_reparto'
      'provenienza'
      'reparto_rich_fk'
      'assistibili_fk'
      'NOME_PAZIENTE'
      'data_nascita'
      'codice_fiscale'
      'Reparto'
      'Servizio'
      'Diagnostica'
      'DescStatoVisita'
      'quesito_diagn'
      'cod_med_valida'
      'ServRad'
      'tipo_fattura'
      'DescTipoAttivita'
      'placer_order_number'
      'tipo_accesso'
      'san_ident')
    EditMode = 'Read Only'
    UpdateTableName = 'TRIAGE'
    PrimeFields.Strings = (
      'PKTRIAGE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      't.pktriage,'
      'i.tipo_attivita_fk,'
      'i.urgenza,'
      'i.esami_in_reparto,'
      'i.provenienza,'
      'i.reparto_rich_fk,'
      'i.prog_acc,'
      't.data_accettazione,'
      't.diagnostica_fk,'
      't.ora_inizio,'
      't.ora_fine,'
      't.ora_sommin,'
      't.data_visita,'
      't.user_id,'
      't.statovisita,'
      't.reparti_fk,'
      't.impegnative_fk,'
      't.ris_study_euid,'
      'i.assistibili_fk,'
      'i.cod_med_valida,'
      't.NUMERO_FIRMA,'
      'i.LIV_SCR,'
      'i.quesito_diagn,'
      't.durata,'
      't.agende_fk,'
      't.servizi_fk,'
      't.note_preno,'
      'sr.descrizione as ServRad,'
      'a.NOMINATIVO as NOME_PAZIENTE,'
      'a.data_nascita,'
      'a.san_ident,'
      'a.codice_fiscale,'
      
        'DECODE(i.provenienza,'#39'E'#39',o.descrizione,r.descrizione) as Reparto' +
        ','
      'o.tipo_fattura,'
      'sv.descrizione as Servizio,'
      's.descrizione as Diagnostica,'
      'tb.descrizione as DescStatoVisita,'
      'ta.descrizione as DescTipoAttivita,'
      'ta.tipo_accesso,'
      'i.placer_order_number,'
      'ae.cod_esterno as PID,'
      'i.incompleta,'
      't.event_type,'
      't.options,'
      'c.colore,'
      'tp.icona,'
      'tp.descrizione as DescProvenienza,'
      'tb.set_colori_fk,'
      'tu.imageindex'
      '/* subst1 */'
      'from diagxwk d'
      'join servizi s on s.pkservizi = d.servizi_fk'
      'join triage t on t.diagnostica_fk=s.PKSERVIZI'
      'join impegnative i on i.pkimpegnative = t.impegnative_fk'
      'join assistibili a on i.assistibili_fk = a.pkassistibili'
      'left join reparti r on r.pkreparti = i.reparto_rich_fk'
      'left join ospedali o on o.codice = i.osp_rich'
      'left join servizi sv on sv.pkservizi = i.servizio_rich_fk'
      'left join tabstatovisita tb on tb.statovisita = t.statovisita'
      
        'left join tipo_attivita ta on ta.tipo_attivita = i.tipo_attivita' +
        '_fk'
      'left join servizi sr on sr.pkservizi = t.servizi_fk'
      'join param_ticket pt on pt.pkparamticket=1'
      'join anag_esterne ae on ae.assistibili_fk = a.pkassistibili'
      'left join set_colori c on c.pkset_colori=tb.set_colori_fk'
      
        'left join wtab_provenienza tp on tp.provenienza=i.provenienza an' +
        'd tp.lingua=:lingua'
      'left join tipourgenza tu on tu.pkurgenza=i.urgenza'
      '/* subst2 */'
      'where d.workstation_fk=:workstation_fk'
      'and d.attiva=1'
      'and d.selezionata=1'
      'and s.reparti_fk=:reparti_fk'
      'and ('
      
        '(t.statovisita in :show_eseguiti and t.ora_inizio between (trunc' +
        '(:data_preno)-:gglista) and to_date(to_char(:data_preno,'#39'DDMMYYY' +
        'Y'#39')||'#39'2359'#39','#39'DDMMYYYYHH24MI'#39'))'
      '/* subst3 */'
      ')'
      'and ae.idauthority = pt.anag_authority'
      ' ')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = 'IT'
      end
      item
        Name = 'workstation_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'show_eseguiti'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = '#(120,121,122)'
      end
      item
        Name = 'data_preno'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 36892d
      end
      item
        Name = 'gglista'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      030000000F00000008000000504B56495349544501000000000B000000444154
      415F56495349544101000000000E0000004C494E4755415F5245464552544F01
      0000000007000000555247454E5A4101000000000A0000004E4F4D494E415449
      564F0100000000070000005245504152544F0100000000080000005345525649
      5A494F0100000000060000004D454449434F01000000000B000000444941474E
      4F5354494341010000000008000000504B545249414745010000000009000000
      555247454E5A41505301000000000A000000434F444943455F52414401000000
      000E000000444941474E4F53544943415F464B01000000000A0000004F52415F
      494E495A494F0100000000080000004F52415F46494E450100000000}
    Left = 496
    Top = 196
    FastFields = (
      'PKTRIAGE,3,0'
      'TIPO_ATTIVITA_FK,1,2'
      'URGENZA,3,0'
      'ESAMI_IN_REPARTO,3,0'
      'PROVENIENZA,1,1'
      'REPARTO_RICH_FK,3,0'
      'PROG_ACC,3,0'
      'DATA_ACCETTAZIONE,11,0'
      'DIAGNOSTICA_FK,3,0'
      'ORA_INIZIO,11,0'
      'ORA_FINE,11,0'
      'ORA_SOMMIN,11,0'
      'DATA_VISITA,11,0'
      'USER_ID,3,0'
      'STATOVISITA,3,0'
      'REPARTI_FK,3,0'
      'IMPEGNATIVE_FK,3,0'
      'RIS_STUDY_EUID,1,100'
      'ASSISTIBILI_FK,3,0'
      'COD_MED_VALIDA,3,0'
      'NUMERO_FIRMA,3,0'
      'LIV_SCR,3,0'
      'QUESITO_DIAGN,1,4000'
      'DURATA,3,0'
      'AGENDE_FK,3,0'
      'SERVIZI_FK,3,0'
      'NOTE_PRENO,1,4000'
      'SERVRAD,1,100'
      'NOME_PAZIENTE,1,122'
      'DATA_NASCITA,11,0'
      'SAN_IDENT,3,0'
      'CODICE_FISCALE,1,32'
      'REPARTO,1,80'
      'TIPO_FATTURA,3,0'
      'SERVIZIO,1,100'
      'DIAGNOSTICA,1,100'
      'DESCSTATOVISITA,1,60'
      'DESCTIPOATTIVITA,1,60'
      'TIPO_ACCESSO,1,1'
      'PLACER_ORDER_NUMBER,1,32'
      'PID,1,32'
      'INCOMPLETA,3,0'
      'EVENT_TYPE,3,0'
      'OPTIONS,3,0'
      'COLORE,3,0'
      'ICONA,3,0'
      'DESCPROVENIENZA,1,200'
      'SET_COLORI_FK,3,0'
      'IMAGEINDEX,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object QyPrenoORA_INIZIO: TDateTimeField
      DisplayLabel = 'Orario'
      FieldName = 'ORA_INIZIO'
      DisplayFormat = 'ddddd hh:nn'
    end
    object QyPrenoORA_FINE: TDateTimeField
      FieldName = 'ORA_FINE'
    end
    object QyPrenoDATA_VISITA: TDateTimeField
      DisplayLabel = 'Somministrazione'
      FieldName = 'DATA_VISITA'
    end
    object QyPrenoNOME_PAZIENTE: TStringField
      DisplayLabel = 'Paziente'
      FieldName = 'NOME_PAZIENTE'
      Size = 73
    end
    object QyPrenoREPARTO: TStringField
      DisplayLabel = 'Provenienza'
      FieldName = 'REPARTO'
      Size = 60
    end
    object QyPrenoSERVIZIO: TStringField
      DisplayLabel = 'Servizio'
      FieldName = 'SERVIZIO'
      Size = 100
    end
    object QyPrenoDIAGNOSTICA: TStringField
      DisplayLabel = 'Diagnostica'
      FieldName = 'DIAGNOSTICA'
      Size = 100
    end
    object QyPrenoDATA_NASCITA: TDateTimeField
      DisplayLabel = 'Data nascita'
      FieldName = 'DATA_NASCITA'
    end
    object QyPrenoPROVENIENZA: TStringField
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object QyPrenoDESCSTATOVISITA: TStringField
      DisplayLabel = 'Stato'
      FieldName = 'DESCSTATOVISITA'
      Size = 30
    end
    object QyPrenoTIPO_ATTIVITA_FK: TStringField
      FieldName = 'TIPO_ATTIVITA_FK'
      Size = 2
    end
    object QyPrenoDATA_ACCETTAZIONE: TDateTimeField
      FieldName = 'DATA_ACCETTAZIONE'
    end
    object QyPrenoDESCTIPOATTIVITA: TStringField
      DisplayLabel = 'Tipo attivit'#224
      FieldName = 'DESCTIPOATTIVITA'
      Size = 60
    end
    object QyPrenoSERVRAD: TStringField
      DisplayLabel = 'Radiologia'
      FieldName = 'SERVRAD'
      Size = 100
    end
    object QyPrenoRIS_STUDY_EUID: TStringField
      DisplayLabel = 'Nr. Esame'
      FieldName = 'RIS_STUDY_EUID'
      Size = 100
    end
    object QyPrenoORA_SOMMIN: TDateTimeField
      DisplayLabel = 'Somministra'
      FieldName = 'ORA_SOMMIN'
      DisplayFormat = 'hh:nn'
    end
    object QyPrenoNOTE_PRENO: TStringField
      DisplayLabel = 'Note'
      FieldName = 'NOTE_PRENO'
      Size = 4000
    end
    object QyPrenoPLACER_ORDER_NUMBER: TStringField
      FieldName = 'PLACER_ORDER_NUMBER'
      Size = 32
    end
    object QyPrenoTIPO_ACCESSO: TStringField
      DisplayLabel = 'Accesso'
      FieldName = 'TIPO_ACCESSO'
      Size = 1
    end
    object QyPrenoPID: TStringField
      FieldName = 'PID'
      Size = 32
    end
    object QyPrenoPKTRIAGE: TIntegerField
      FieldName = 'PKTRIAGE'
    end
    object QyPrenoURGENZA: TIntegerField
      DisplayLabel = 'Urgenza'
      FieldName = 'URGENZA'
    end
    object QyPrenoESAMI_IN_REPARTO: TIntegerField
      DisplayLabel = 'Trasporto'
      FieldName = 'ESAMI_IN_REPARTO'
    end
    object QyPrenoREPARTO_RICH_FK: TIntegerField
      FieldName = 'REPARTO_RICH_FK'
    end
    object QyPrenoDIAGNOSTICA_FK: TIntegerField
      FieldName = 'DIAGNOSTICA_FK'
    end
    object QyPrenoUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object QyPrenoSTATOVISITA: TIntegerField
      FieldName = 'STATOVISITA'
    end
    object QyPrenoREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object QyPrenoIMPEGNATIVE_FK: TIntegerField
      FieldName = 'IMPEGNATIVE_FK'
    end
    object QyPrenoASSISTIBILI_FK: TIntegerField
      FieldName = 'ASSISTIBILI_FK'
    end
    object QyPrenoCOD_MED_VALIDA: TIntegerField
      FieldName = 'COD_MED_VALIDA'
    end
    object QyPrenoNUMERO_FIRMA: TIntegerField
      DisplayLabel = 'Firma'
      FieldName = 'NUMERO_FIRMA'
    end
    object QyPrenoLIV_SCR: TIntegerField
      DisplayLabel = 'Livello'
      FieldName = 'LIV_SCR'
    end
    object QyPrenoDURATA: TIntegerField
      FieldName = 'DURATA'
    end
    object QyPrenoAGENDE_FK: TIntegerField
      FieldName = 'AGENDE_FK'
    end
    object QyPrenoSERVIZI_FK: TIntegerField
      FieldName = 'SERVIZI_FK'
    end
    object QyPrenoSAN_IDENT: TIntegerField
      FieldName = 'SAN_IDENT'
    end
    object QyPrenoTIPO_FATTURA: TIntegerField
      FieldName = 'TIPO_FATTURA'
    end
    object QyPrenoINCOMPLETA: TIntegerField
      FieldName = 'INCOMPLETA'
    end
    object QyPrenoCOLORE: TIntegerField
      FieldName = 'COLORE'
    end
    object QyPrenoICONA: TIntegerField
      FieldName = 'ICONA'
    end
    object QyPrenoDESCPROVENIENZA: TStringField
      FieldName = 'DESCPROVENIENZA'
      Size = 50
    end
    object QyPrenoSET_COLORI_FK: TIntegerField
      FieldName = 'SET_COLORI_FK'
    end
    object QyPrenoEVENT_TYPE: TIntegerField
      FieldName = 'EVENT_TYPE'
    end
    object QyPrenoOPTIONS: TIntegerField
      FieldName = 'OPTIONS'
    end
    object QyPrenoQUESITO_DIAGN: TStringField
      FieldName = 'QUESITO_DIAGN'
      Size = 4000
    end
    object QyPrenoIMAGEINDEX: TIntegerField
      FieldName = 'IMAGEINDEX'
    end
    object QyPrenoPROG_ACC: TIntegerField
      DisplayLabel = 'Prog. Acc.'
      FieldName = 'PROG_ACC'
    end
    object QyPrenoCODICE_FISCALE: TStringField
      FieldName = 'CODICE_FISCALE'
      Size = 32
    end
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = []
    Storage = rsStorage1
    Options = [poStoreDefValues]
    RootSection = 'FAccDiagn.rsPropSaver1'
    Properties.Strings = (
      'dxConEsami.Down'
      'GridEseguiti.OptionsView.DataRowHeight'
      'GridDaEseguire.OptionsView.DataRowHeight'
      'GridRichieste.OptionsView.DataRowHeight'
      'dxAttivaQuesito.Down'
      'dxSingolaDiagn.Down'
      'dxAvvisi.Down'
      'dxDettaglioEspanso.Down'
      'dxVisualizzaPreno.Down'
      'dxAltreRichieste.Down'
      'dxTutte.Down'
      'dxAutoSize.Down'
      'dxGiorniDal.EditValue'
      'dxgiornilista.EditValue'
      'dxGiorniRicerca.EditValue'
      'dxChiudiTutte.Down'
      'dxAnchePreno.Down'
      'dxProgAcc.Down')
    WhenLoad = wlManual
    WhenSave = wsManual
    OnSetUserProperty = rsPropSaver1SetUserProperty
    OnSetProperty = rsPropSaver1SetProperty
    Left = 428
    Top = 212
  end
  object RefreshDettagli: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      '     p.pkprestazioni,'
      '     p.triage_fk,'
      '     c.pkcodicirad,'
      '     c.codice,'
      '     c.descrizione,'
      '     p.DURATA,'
      '     p.stato,'
      '     p.ident_fk,'
      '     p.numero_prestazione,'
      '     p.PROGRESSIVO_RIGA,'
      '     m.magart_fk,'
      '     m.quantita as qr'
      'from prestazioni p'
      
        'left join movim m on m.prestazioni_fk = p.pkprestazioni and m.ti' +
        'po=1'
      'left join codicirad c on c.pkcodicirad = p.codicirad_fk'
      'where'
      'p.triage_fk = :triage_fk')
    Params = <
      item
        Name = 'triage_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 764
    Top = 428
    FastFields = (
      'PKPRESTAZIONI,6,0'
      'TRIAGE_FK,3,0'
      'PKCODICIRAD,3,0'
      'CODICE,1,12'
      'DESCRIZIONE,1,100'
      'DURATA,3,0'
      'STATO,3,0'
      'IDENT_FK,1,12'
      'NUMERO_PRESTAZIONE,3,0'
      'PROGRESSIVO_RIGA,3,0'
      'MAGART_FK,3,0'
      'QR,6,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object RefreshDettagliPKPRESTAZIONI: TFloatField
      FieldName = 'PKPRESTAZIONI'
    end
    object RefreshDettagliTRIAGE_FK: TIntegerField
      FieldName = 'TRIAGE_FK'
    end
    object RefreshDettagliCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object RefreshDettagliDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
    object RefreshDettagliDURATA: TIntegerField
      DisplayLabel = 'Durata'
      FieldName = 'DURATA'
    end
    object RefreshDettagliPKCODICIRAD: TIntegerField
      FieldName = 'PKCODICIRAD'
    end
    object RefreshDettagliSTATO: TIntegerField
      DisplayLabel = 'Stato esame'
      FieldName = 'STATO'
    end
    object RefreshDettagliIDENT_FK: TStringField
      DisplayLabel = 'Tariffario'
      FieldName = 'IDENT_FK'
      Size = 12
    end
    object RefreshDettagliMAGART_FK: TIntegerField
      DisplayLabel = 'Radiofarmaco'
      FieldName = 'MAGART_FK'
    end
    object RefreshDettagliQR: TFloatField
      DisplayLabel = 'Dose'
      FieldName = 'QR'
    end
    object RefreshDettagliNUMERO_PRESTAZIONE: TIntegerField
      DisplayLabel = 'Q.'
      FieldName = 'NUMERO_PRESTAZIONE'
    end
    object RefreshDettagliPROGRESSIVO_RIGA: TIntegerField
      FieldName = 'PROGRESSIVO_RIGA'
    end
  end
  object dxBarPopPlanner: TdxBarPopupMenu
    BarManager = dxBarManager1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Source Sans Pro'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end
      item
        Visible = True
        ItemName = 'dxScopieInSala'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxRefresh'
      end>
    UseOwnFont = True
    Left = 420
    Top = 388
  end
  object dxPopPlanner: TdxPopupMenu
    dxPopupMenu = dxBarPopPlanner
    Left = 508
    Top = 380
  end
  object AstaCut: TAstaDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    Left = 624
    Top = 372
    FastFields = (
      'PKTRIAGE,3,0'
      'ORA_INIZIO,11,0'
      'STATOVISITA,3,0'
      'DURATA,3,0'
      'ORA_FINE,11,0'
      'RIC_ANTICIPO,1,1'
      'ASSISTIBILI_FK,3,0'
      'USER_ID,3,0'
      'REPARTI_FK,3,0'
      'DIAGNOSTICA_FK,3,0'
      'NOME_PAZIENTE,1,110'
      'DATA_NASCITA,11,0'
      'TELEFONO,1,30'
      'PROVENIENZA,1,1'
      'IMPEGNATIVE_FK,3,0'
      'TIPO_ATTIVITA_FK,1,2'
      'AGENDE_FK,3,0')
    object AstaCutPKTRIAGE: TIntegerField
      DisplayLabel = 'Nr. Esame'
      FieldName = 'PKTRIAGE'
    end
    object AstaCutORA_INIZIO: TDateTimeField
      FieldName = 'ORA_INIZIO'
    end
    object AstaCutSTATOVISITA: TIntegerField
      FieldName = 'STATOVISITA'
    end
    object AstaCutDURATA: TIntegerField
      FieldName = 'DURATA'
    end
    object AstaCutORA_FINE: TDateTimeField
      FieldName = 'ORA_FINE'
    end
    object AstaCutRIC_ANTICIPO: TStringField
      FieldName = 'RIC_ANTICIPO'
      Size = 1
    end
    object AstaCutASSISTIBILI_FK: TIntegerField
      FieldName = 'ASSISTIBILI_FK'
    end
    object AstaCutUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object AstaCutREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object AstaCutDIAGNOSTICA_FK: TIntegerField
      FieldName = 'DIAGNOSTICA_FK'
    end
    object AstaCutNOME_PAZIENTE: TStringField
      FieldName = 'NOME_PAZIENTE'
      Size = 110
    end
    object AstaCutDATA_NASCITA: TDateTimeField
      FieldName = 'DATA_NASCITA'
    end
    object AstaCutTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 30
    end
    object AstaCutPROVENIENZA: TStringField
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object AstaCutIMPEGNATIVE_FK: TIntegerField
      FieldName = 'IMPEGNATIVE_FK'
    end
    object AstaCutTIPO_ATTIVITA_FK: TStringField
      FieldName = 'TIPO_ATTIVITA_FK'
      Size = 2
    end
    object AstaCutAGENDE_FK: TIntegerField
      FieldName = 'AGENDE_FK'
    end
  end
  object DBDaySource: TDBDaySource
    OnCreateKey = DBDaySourceCreateKey
    OnResetFilter = DBDaySourceResetFilter
    AutoIncKey = False
    DataSource = sQyPreno
    StartTimeField = 'ORA_INIZIO'
    EndTimeField = 'ORA_FINE'
    KeyField = 'PKTRIAGE'
    ReadOnly = False
    ResourceField = 'DIAGNOSTICA_FK'
    UpdateByQuery = False
    OnFieldsToItem = DBDaySourceFieldsToItem
    OnItemToFields = DBDaySourceItemToFields
    OnChangeQuery = DBDaySourceChangeQuery
    OnResourceToPosition = DBDaySourceResourceToPosition
    OnCodeResourceToPosition = DBDaySourceCodeResourceToPosition
    OnPositionToResource = DBDaySourcePositionToResource
    AutoHeaderUpdate = True
    DateFormat = 'DDD dd/mm'
    Mode = dmMultiResource
    NumberOfDays = 1
    OnGetResourceName = DBDaySourceGetResourceName
    Left = 252
    Top = 424
  end
  object dxBarPopPreno: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        Visible = True
        ItemName = 'dxBarButton32'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        Visible = True
        ItemName = 'dxBarButton15'
      end
      item
        Visible = True
        ItemName = 'dxBarButton29'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton21'
      end
      item
        Visible = True
        ItemName = 'dxBarButton13'
      end
      item
        Visible = True
        ItemName = 'dxBarButton26'
      end
      item
        Visible = True
        ItemName = 'dxBarButton24'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxStmpaEtichette'
      end>
    ItemOptions.Size = misNormal
    UseOwnFont = False
    Left = 432
    Top = 340
  end
  object dxPopPreno: TdxPopupMenu
    dxPopupMenu = dxBarPopPreno
    Left = 472
    Top = 312
  end
end
