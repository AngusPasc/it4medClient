inherited FCodiciRadiologia: TFCodiciRadiologia
  Width = 1000
  Height = 500
  Constraints.MinHeight = 500
  Constraints.MinWidth = 1000
  Font.Height = -22
  ParentShowHint = False
  ShowHint = True
  object cxPageControl: TcxPageControl [0]
    Left = 0
    Top = 0
    Width = 1000
    Height = 500
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = cxListini
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfUltraFlat
    OnPageChanging = cxPageControlPageChanging
    ClientRectBottom = 494
    ClientRectLeft = 3
    ClientRectRight = 994
    ClientRectTop = 41
    object dxTabMetodiche: TcxTabSheet
      Caption = 'Metodiche'
      object cxMetodiche: TcxGrid
        Left = 0
        Top = 0
        Width = 991
        Height = 567
        Align = alClient
        TabOrder = 0
        object cxMetodicheDB: TcxGridDBTableView
          OnDblClick = cxMetodicheDBDblClick
          Navigator.Buttons.OnButtonClick = cxGruppiDBNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sMetodiche
          DataController.KeyFieldNames = 'PKGRESAMI'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsSelection.CellSelect = False
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          object cxMetodicheDBGRESAMI: TcxGridDBColumn
            DataBinding.FieldName = 'GRESAMI'
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 116
          end
          object cxMetodicheDBDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Options.Filtering = False
            Width = 417
          end
          object cxMetodicheDBPKGRESAMI: TcxGridDBColumn
            DataBinding.FieldName = 'PKGRESAMI'
            Visible = False
            Options.Filtering = False
          end
          object cxMetodicheDBREPARTI_FK: TcxGridDBColumn
            DataBinding.FieldName = 'REPARTI_FK'
            Visible = False
            Options.Filtering = False
          end
          object cxMetodicheDBPESO_MEDICO: TcxGridDBColumn
            DataBinding.FieldName = 'PESO_MEDICO'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#.00'
            Properties.EditFormat = '#.00'
            Properties.ImmediatePost = True
            Options.Filtering = False
            Width = 142
          end
          object cxMetodicheDBPESO_TECNICO: TcxGridDBColumn
            DataBinding.FieldName = 'PESO_TECNICO'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#.00'
            Properties.EditFormat = '#.00'
            Properties.ImmediatePost = True
            Options.Filtering = False
            Width = 141
          end
          object cxMetodicheDBTIPO_MODALITA: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_MODALITA'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'TIPO_MODALITA'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                FieldName = 'TIPO_MODALITA'
              end
              item
                Width = 200
                FieldName = 'DESCRIZIONE'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListSource = sTipoModalita
            Width = 82
          end
          object cxMetodicheDBDATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 95
          end
        end
        object cxMetodicheLevel1: TcxGridLevel
          GridView = cxMetodicheDB
        end
      end
    end
    object dxTabElenco: TcxTabSheet
      Caption = 'Esami'
      object cxGrid2: TcxGrid
        Left = 343
        Top = 30
        Width = 648
        Height = 423
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Constraints.MinHeight = 189
        Constraints.MinWidth = 91
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        RootLevelOptions.DetailTabsPosition = dtpTop
        object cxGridCodici: TcxGridDBTableView
          DragMode = dmAutomatic
          OnDblClick = cxGridCodiciDblClick
          OnDragDrop = cxGridCodiciDragDrop
          OnDragOver = cxGridCodiciDragOver
          OnKeyDown = cxGridCodiciKeyDown
          Navigator.Buttons.OnButtonClick = cxGridCodiciNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <
            item
              Hint = 'Estrazione in Excel'
              ImageIndex = 21
            end>
          Navigator.Buttons.First.ImageIndex = 0
          Navigator.Buttons.PriorPage.ImageIndex = 1
          Navigator.Buttons.Prior.ImageIndex = 2
          Navigator.Buttons.Next.ImageIndex = 3
          Navigator.Buttons.NextPage.ImageIndex = 4
          Navigator.Buttons.Last.ImageIndex = 5
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.ImageIndex = 7
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.ImageIndex = 8
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sEsamiRadiologia
          DataController.Filter.MaxValueListCount = 1000
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.Active = True
          DataController.KeyFieldNames = 'PKCODXRAD'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'CODICE'
              Column = cxGridCodiciCODICE
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = cxGridCodiciDataControllerSortingChanged
          Filtering.ColumnPopup.MaxDropDownItemCount = 12
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracDelayed
          FilterRow.ApplyInputDelay = 500
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.MultiSelect = True
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          object cxGridCodiciCODICE: TcxGridDBColumn
            DataBinding.FieldName = 'CODICE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 12
            Properties.ReadOnly = False
            Options.Grouping = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 91
          end
          object cxGridCodiciDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 50
            Properties.ReadOnly = False
            Options.Grouping = False
            Width = 269
          end
          object cxGridCodiciDURATA: TcxGridDBColumn
            DataBinding.FieldName = 'DURATA'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = False
            Options.Grouping = False
            Width = 73
          end
          object cxGridCodiciDOSE: TcxGridDBColumn
            DataBinding.FieldName = 'DOSE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = False
            Visible = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 84
          end
          object cxGridCodiciPESO_MEDICO: TcxGridDBColumn
            DataBinding.FieldName = 'PESO_MEDICO'
            Visible = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 44
          end
          object cxGridCodiciPESO_TECNICO: TcxGridDBColumn
            DataBinding.FieldName = 'PESO_TECNICO'
            Visible = False
            Options.Filtering = False
            Width = 52
          end
          object cxGridCodiciPKCODICIRAD: TcxGridDBColumn
            DataBinding.FieldName = 'PKCODICIRAD'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = False
            Visible = False
            Options.Grouping = False
            VisibleForCustomization = False
            Width = 41
          end
          object cxGridCodiciGRUPPO: TcxGridDBColumn
            DataBinding.FieldName = 'GRUPPO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 12
            Properties.ReadOnly = False
            Visible = False
            Width = 111
          end
          object cxGridCodiciCOMPOSTO: TcxGridDBColumn
            Caption = 'Pacchetto'
            DataBinding.FieldName = 'COMPOSTO'
            RepositoryItem = FDMCommon.edrepCOMPOSTO
            Options.Grouping = False
            Width = 76
          end
          object cxGridCodiciPREPTEXT_FK: TcxGridDBColumn
            DataBinding.FieldName = 'DESCPREPARAZIONE'
            Options.Editing = False
            Options.Filtering = False
            Width = 117
          end
          object cxGridCodiciIDENT_FK: TcxGridDBColumn
            Caption = 'Cod. Tariffario'
            DataBinding.FieldName = 'IDENT_FK'
            Options.Editing = False
            Width = 185
          end
          object cxGridCodiciBRANCA: TcxGridDBColumn
            DataBinding.FieldName = 'BRANCA'
            Visible = False
            Options.Grouping = False
            Width = 74
          end
          object cxGridCodiciDESCBRANCA: TcxGridDBColumn
            DataBinding.FieldName = 'DESCBRANCA'
            Width = 174
          end
          object cxGridCodiciDATA_FINE: TcxGridDBColumn
            Caption = 'Fine validit'#224
            DataBinding.FieldName = 'DATA_FINE'
            Width = 67
          end
          object cxGridCodiciCODEAN13: TcxGridDBColumn
            DataBinding.FieldName = 'CODEAN13'
            Width = 116
          end
        end
        object cxGrid2Level1: TcxGridLevel
          Caption = 'Esami selezionati'
          GridView = cxGridCodici
        end
      end
      object dxBarDockControl2: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 991
        Height = 30
        Align = dalTop
        BarManager = dxBarManager1
      end
      object Splitter2: TcxSplitter
        Left = 339
        Top = 30
        Width = 4
        Height = 423
        Cursor = crHSplit
        HotZoneClassName = 'TcxXPTaskBarStyle'
        MinSize = 100
        Control = cxGrid3
        Color = 14609391
        ParentColor = False
      end
      object cxGrid3: TcxGrid
        Left = 0
        Top = 30
        Width = 339
        Height = 423
        Align = alLeft
        BevelInner = bvNone
        BevelOuter = bvNone
        TabOrder = 3
        RootLevelOptions.DetailTabsPosition = dtpTop
        object GridCodici: TcxGridDBTableView
          DragMode = dmAutomatic
          OnDblClick = GridCodiciDblClick
          OnDragDrop = GridCodiciDragDrop
          OnDragOver = GridCodiciDragOver
          OnKeyDown = GridCodiciKeyDown
          Navigator.Buttons.OnButtonClick = GridCodiciNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.ImageIndex = 0
          Navigator.Buttons.PriorPage.ImageIndex = 1
          Navigator.Buttons.Prior.ImageIndex = 2
          Navigator.Buttons.Next.ImageIndex = 3
          Navigator.Buttons.NextPage.ImageIndex = 4
          Navigator.Buttons.Last.ImageIndex = 5
          Navigator.Buttons.Insert.ImageIndex = 6
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Delete.ImageIndex = 7
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.ImageIndex = 8
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.ImageIndex = 19
          Navigator.Buttons.Filter.Visible = True
          Navigator.Visible = True
          DataController.DataSource = sPrestazioni
          DataController.KeyFieldNames = 'PKCODICIRAD'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'CODICE'
              Column = GridCodiciCODICE
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = GridCodiciDataControllerSortingChanged
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracDelayed
          FilterRow.ApplyInputDelay = 500
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsData.Appending = True
          OptionsData.DeletingConfirmation = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object GridCodiciCODICE: TcxGridDBColumn
            DataBinding.FieldName = 'CODICE'
            SortIndex = 0
            SortOrder = soAscending
            Width = 44
          end
          object GridCodiciDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Styles.OnGetContentStyle = GridCodiciDESCRIZIONEStylesGetContentStyle
            Width = 120
          end
          object GridCodiciPKCODICIRAD: TcxGridDBColumn
            DataBinding.FieldName = 'PKCODICIRAD'
            Visible = False
          end
          object GridCodiciCOMPOSTO: TcxGridDBColumn
            Caption = 'Pacchetto'
            DataBinding.FieldName = 'COMPOSTO'
            RepositoryItem = FDMCommon.edrepCOMPOSTO
            Width = 50
          end
          object GridCodiciIDGRUPPOSPEC: TcxGridDBColumn
            DataBinding.FieldName = 'IDGRUPPOSPEC'
            Visible = False
            Width = 56
          end
          object GridCodiciDATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
            Width = 55
          end
        end
        object cxLevelGruppi: TcxGridLevel
          Caption = 'Esami disponibili'
          GridView = GridCodici
        end
      end
    end
    object dxTabTariffario: TcxTabSheet
      Caption = 'Codici Tariffario'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1909
        Height = 789
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        OnActiveTabChanged = cxGrid1ActiveTabChanged
        object cxGridTariffario: TcxGridDBTableView
          OnDblClick = cxGridTariffarioDblClick
          Navigator.Buttons.OnButtonClick = cxGridTariffarioNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.ImageIndex = 0
          Navigator.Buttons.PriorPage.ImageIndex = 1
          Navigator.Buttons.Prior.ImageIndex = 2
          Navigator.Buttons.Next.ImageIndex = 3
          Navigator.Buttons.NextPage.ImageIndex = 4
          Navigator.Buttons.Last.ImageIndex = 5
          Navigator.Buttons.Insert.ImageIndex = 6
          Navigator.Buttons.Delete.ImageIndex = 7
          Navigator.Buttons.Edit.ImageIndex = 8
          Navigator.Buttons.Post.ImageIndex = 9
          Navigator.Buttons.Cancel.ImageIndex = 10
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sLkTariffario
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.KeyFieldNames = 'IDENT'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'IDENT'
              Column = cxGridTariffarioIDENT
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = cxGridTariffarioDataControllerSortingChanged
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracDelayed
          FilterRow.ApplyInputDelay = 500
          OptionsBehavior.AlwaysShowEditor = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsData.CancelOnExit = False
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          object cxGridTariffarioIDENT: TcxGridDBColumn
            DataBinding.FieldName = 'IDENT'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.CharCase = ecUpperCase
            Properties.MaskKind = emkRegExpr
            Properties.EditMask = '[0-9A-Za-z.]+'
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 85
          end
          object cxGridTariffarioDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Width = 492
          end
          object cxGridTariffarioDATA_INIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_INIZIO'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 121
          end
          object cxGridTariffarioDATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 139
          end
          object cxGridTariffarioCALCOLO_85: TcxGridDBColumn
            DataBinding.FieldName = 'CALCOLO_85'
            RepositoryItem = FDMCommon.edrepSINO
            Visible = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          Caption = 'Elenco'
          GridView = cxGridTariffario
        end
      end
    end
    object cxListini: TcxTabSheet
      Caption = 'Listini'
      ImageIndex = 3
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 991
        Height = 453
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        object cxGridListini: TcxGridDBTableView
          Navigator.Buttons.OnButtonClick = cxGridListiniNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.ImageIndex = 0
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.ImageIndex = 2
          Navigator.Buttons.Next.ImageIndex = 3
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.ImageIndex = 5
          Navigator.Buttons.Insert.ImageIndex = 6
          Navigator.Buttons.Delete.ImageIndex = 7
          Navigator.Buttons.Edit.ImageIndex = 8
          Navigator.Buttons.Post.ImageIndex = 9
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.ImageIndex = 10
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataModeController.DetailInSQLMode = True
          DataController.DataSource = sListini
          DataController.KeyFieldNames = 'CODICE'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          object cxGridListiniCODICE: TcxGridDBColumn
            DataBinding.FieldName = 'CODICE'
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 94
          end
          object cxGridListiniDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Options.Filtering = False
            Width = 312
          end
          object cxGridListiniDATA_INIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_INIZIO'
            Width = 109
          end
          object cxGridListiniDATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
          end
        end
        object cxGridTariffeListini: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.ImageIndex = 0
          Navigator.Buttons.PriorPage.ImageIndex = 1
          Navigator.Buttons.Prior.ImageIndex = 2
          Navigator.Buttons.Next.ImageIndex = 3
          Navigator.Buttons.NextPage.ImageIndex = 4
          Navigator.Buttons.Last.ImageIndex = 5
          Navigator.Buttons.Insert.ImageIndex = 6
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Delete.ImageIndex = 7
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.ImageIndex = 8
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.ImageIndex = 9
          Navigator.Buttons.Cancel.ImageIndex = 10
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataModeController.DetailInSQLMode = True
          DataController.DataModeController.OnDetailFirst = cxGridTariffeListiniDataControllerDataModeControllerDetailFirst
          DataController.DataModeController.OnDetailIsCurrentQuery = cxGridTariffeListiniDataControllerDataModeControllerDetailIsCurrentQuery
          DataController.DataSource = sTariffeListini
          DataController.DetailKeyFieldNames = 'LEG_CODICE'
          DataController.KeyFieldNames = 'PSP_IDENT'
          DataController.MasterKeyFieldNames = 'CODICE'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracDelayed
          FilterRow.ApplyInputDelay = 500
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsView.NavigatorOffset = 20
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          object cxGridTariffeListiniLEG_CODICE: TcxGridDBColumn
            DataBinding.FieldName = 'LEG_CODICE'
            Visible = False
            Options.Editing = False
          end
          object cxGridTariffeListiniPSP_IDENT: TcxGridDBColumn
            DataBinding.FieldName = 'PSP_IDENT'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'IDENT'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                FieldName = 'IDENT'
              end
              item
                Width = 300
                FieldName = 'DESCRIZIONE'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = sLkTariffario
            MinWidth = 100
            Options.HorzSizing = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 100
          end
          object cxGridTariffeListiniDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Editing = False
            Width = 350
          end
          object cxGridTariffeListiniTAR_TICKET: TcxGridDBColumn
            DataBinding.FieldName = 'TAR_TICKET'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = #8364' ,0.00;-'#8364' ,0.00'
            Properties.Nullable = False
            MinWidth = 100
            Options.Filtering = False
            Options.IncSearch = False
            Options.HorzSizing = False
            Width = 100
          end
          object cxGridTariffeListiniTAR_PAGANTI: TcxGridDBColumn
            DataBinding.FieldName = 'TAR_PAGANTI'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
        end
        object cxGrid4Level1: TcxGridLevel
          GridView = cxGridListini
          object cxGrid4Level2: TcxGridLevel
            GridView = cxGridTariffeListini
          end
        end
      end
    end
    object cxGruppiSpec: TcxTabSheet
      Caption = 'Specificazioni'
      ImageIndex = 4
      object cxGridSpec: TcxGrid
        Left = 0
        Top = 0
        Width = 991
        Height = 567
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        object cxGridSpecDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.ImageIndex = 0
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.ImageIndex = 1
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.ImageIndex = 2
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.ImageIndex = 3
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.ImageIndex = 4
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.ImageIndex = 5
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.ImageIndex = 6
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Delete.ImageIndex = 7
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.ImageIndex = 8
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.ImageIndex = 10
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.ImageIndex = 19
          Navigator.Buttons.Filter.Visible = True
          Navigator.Visible = True
          DataController.DataSource = sGrSpecificazioni
          DataController.KeyFieldNames = 'PK_GRUPPOSPEC'
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'IDGRUPPOSPEC'
              Column = cxGridSpecDBTableView1IDGRUPPOSPEC
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsData.Appending = True
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          object cxGridSpecDBTableView1PK_GRUPPOSPEC: TcxGridDBColumn
            DataBinding.FieldName = 'PK_GRUPPOSPEC'
            Visible = False
            Options.Filtering = False
          end
          object cxGridSpecDBTableView1IDGRUPPOSPEC: TcxGridDBColumn
            DataBinding.FieldName = 'IDGRUPPOSPEC'
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 78
          end
          object cxGridSpecDBTableView1DESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Options.Filtering = False
            Width = 416
          end
          object cxGridSpecDBTableView1DATA_INIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_INIZIO'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 253
          end
          object cxGridSpecDBTableView1DATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 253
          end
        end
        object cxGridSpecDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.ImageIndex = 6
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Delete.ImageIndex = 7
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.ImageIndex = 8
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.ImageIndex = 9
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.ImageIndex = 10
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sSpecificazioni
          DataController.DetailKeyFieldNames = 'GRSPECIF_FK'
          DataController.KeyFieldNames = 'PKSPECIFICAZIONI'
          DataController.MasterKeyFieldNames = 'PK_GRUPPOSPEC'
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Appending = True
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridSpecDBTableView2PKSPECIFICAZIONI: TcxGridDBColumn
            DataBinding.FieldName = 'PKSPECIFICAZIONI'
            Visible = False
          end
          object cxGridSpecDBTableView2IDSPECIFICAZIONI: TcxGridDBColumn
            DataBinding.FieldName = 'IDSPECIFICAZIONI'
            SortIndex = 0
            SortOrder = soAscending
            Width = 101
          end
          object cxGridSpecDBTableView2DESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Width = 391
          end
          object cxGridSpecDBTableView2GRSPECIF_FK: TcxGridDBColumn
            DataBinding.FieldName = 'GRSPECIF_FK'
            Visible = False
          end
          object cxGridSpecDBTableView2DATA_INIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_INIZIO'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 239
          end
          object cxGridSpecDBTableView2DATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 238
          end
        end
        object cxGridSpecLevel1: TcxGridLevel
          GridView = cxGridSpecDBTableView1
          object cxGridSpecLevel2: TcxGridLevel
            GridView = cxGridSpecDBTableView2
          end
        end
      end
    end
    object cxTabCodEsEsterni: TcxTabSheet
      Caption = 'Codici esterni'
      ImageIndex = 5
      object cxGridCodEsEsterni: TcxGrid
        Left = 0
        Top = 0
        Width = 991
        Height = 453
        Align = alClient
        TabOrder = 0
        object cxGridCodEsEsterniDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.ImageIndex = 0
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.ImageIndex = 1
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.ImageIndex = 2
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.ImageIndex = 3
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.ImageIndex = 4
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.ImageIndex = 5
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.ImageIndex = 6
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Delete.ImageIndex = 7
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.ImageIndex = 8
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.ImageIndex = 9
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.ImageIndex = 10
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.ImageIndex = 19
          Navigator.Buttons.Filter.Visible = True
          Navigator.Visible = True
          DataController.DataSource = sCodEsEsterni
          DataController.KeyFieldNames = 'COD_ESTERNO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsData.Appending = True
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          object cxGridCodEsEsterniDBTableView1COD_ESTERNO: TcxGridDBColumn
            Caption = 'Codice esterno'
            DataBinding.FieldName = 'COD_ESTERNO'
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 142
          end
          object cxGridCodEsEsterniDBTableView1DESC_ESTERNA: TcxGridDBColumn
            DataBinding.FieldName = 'DESC_ESTERNA'
            Width = 388
          end
          object cxGridCodEsEsterniDBTableView1CODICIRAD_FK: TcxGridDBColumn
            DataBinding.FieldName = 'CODICIRAD_FK'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'PKCODICIRAD'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                FieldName = 'CODICE'
              end
              item
                Width = 300
                FieldName = 'DESCRIZIONE'
              end>
            Properties.ListSource = sPrestazioni
            Width = 81
          end
          object cxGridCodEsEsterniDBTableView1IDAUTHORITY: TcxGridDBColumn
            DataBinding.FieldName = 'IDAUTHORITY'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'IDAUTHORITY'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                FieldName = 'IDAUTHORITY'
              end
              item
                Width = 200
                FieldName = 'DESCRIZIONE'
              end>
            Properties.ListSource = sqIdAuth
            Options.Filtering = False
            Width = 97
          end
          object cxGridCodEsEsterniDBTableView1DATA_INIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_INIZIO'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ClearKey = 46
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 142
          end
          object cxGridCodEsEsterniDBTableView1DATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ClearKey = 46
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 143
          end
        end
        object cxGridCodEsEsterniLevel1: TcxGridLevel
          GridView = cxGridCodEsEsterniDBTableView1
        end
      end
    end
  end
  inherited rsStorage1: TrsStorage
    Left = 159
    Top = 86
  end
  inherited rsXMLData1: TrsXMLData
    Left = 219
    Top = 74
  end
  object dxBarManager1: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Source Sans Pro'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Gruppi'
      'Esami'
      'Main'
      'Listini'
      'Rad Esami'
      'Tariffario')
    Categories.ItemsVisibles = (
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
      True)
    ImageOptions.Images = FDMCommon.imIcone
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseF10ForMenu = False
    UseSystemFont = False
    Left = 308
    Top = 256
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'NavigatorCodici'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxNonAssegnati'
        end
        item
          Visible = True
          ItemName = 'dxTuttiEsami'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'NavigatorCodici'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Action = NuovaMetodica
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Action = ModificaMetodica
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton3: TdxBarButton
      Action = CancellaMetodica
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Espandi tutto'
      Category = 0
      Hint = 'Espandi tutto'
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Chiudi tutto'
      Category = 0
      Hint = 'Chiudi tutto'
      Visible = ivAlways
      ImageIndex = 12
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton28: TdxBarButton
      Action = StampaGruppi
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton9: TdxBarButton
      Action = NuovoEsame
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton13: TdxBarButton
      Action = NuovoEsameMultiplo
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton10: TdxBarButton
      Action = ModificaRadEsame
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton11: TdxBarButton
      Action = CancellaEsame
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton14: TdxBarButton
      Action = ModificaInComposto
      Category = 1
    end
    object dxBarButton15: TdxBarButton
      Action = ModificaInNormale
      Category = 1
    end
    object dxBarButton17: TdxBarButton
      Action = ModificaEsame
      Category = 1
    end
    object dxBarButton18: TdxBarButton
      Action = CancellaCodRad
      Category = 1
    end
    object dxNonAssegnati: TdxBarButton
      Caption = 'Non assegnati'
      Category = 1
      Hint = 'Non assegnati'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 5
      Down = True
      OnClick = dxNonAssegnatiClick
    end
    object dxTuttiEsami: TdxBarButton
      Caption = 'Tutti'
      Category = 1
      Hint = 'Tutti'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 5
      OnClick = dxTuttiEsamiClick
    end
    object dxBarButton29: TdxBarButton
      Action = AssegnaEsame
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = 'Opzioni'
      Category = 2
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton16'
        end>
    end
    object dxBarButton16: TdxBarButton
      Action = Personalizza
      Category = 2
    end
    object dxBarButton12: TdxBarButton
      Caption = 'Stampa'
      Category = 2
      Hint = 'Stampa'
      Visible = ivAlways
      ImageIndex = 15
      PaintStyle = psCaptionGlyph
    end
    object dxCopiaListino: TdxBarButton
      Action = aCopiaListino
      Category = 3
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton24: TdxBarButton
      Action = ModificaListino
      Category = 3
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton25: TdxBarButton
      Action = CancellaListino
      Category = 3
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton19: TdxBarButton
      Action = ModificaRadEsame
      Category = 4
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton20: TdxBarButton
      Action = CancellaCodRad
      Category = 4
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton27: TdxBarButton
      Action = StampaCodiciRad
      Category = 4
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton21: TdxBarButton
      Action = Nuovotariffario
      Category = 5
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton22: TdxBarButton
      Action = ModificaTariffario
      Category = 5
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton23: TdxBarButton
      Action = CancellaTariffario
      Category = 5
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton26: TdxBarButton
      Action = StampaTariffario
      Category = 5
      PaintStyle = psCaptionGlyph
    end
  end
  object Metodiche: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    OnNewRecord = MetodicheNewRecord
    BeforeQuery = MetodicheBeforeQuery
    SequenceField.Field = 'PKGRESAMI'
    SequenceField.Sequence = 'GRESAMI_PKGRESAMI'
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'After Post'
    UpdateTableName = 'GRESAMI'
    PrimeFields.Strings = (
      'PKGRESAMI')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'pkgresami,'
      'gresami,'
      'descrizione,'
      'reparti_fk,'
      'peso_medico,'
      'peso_tecnico,'
      'tipo_modalita,'
      'data_fine'
      'from gresami'
      'where reparti_fk = :reparti_fk')
    Params = <
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
      03000000070000000700000044455343525F4901000000000700000044455343
      525F4401000000000F000000504B5052455354535045434D554C540100000000
      100000005052455354535045434D554C545F464B010000000006000000434F44
      4943450100000000090000004652455155454E5A4101000000000A0000005345
      5256495A495F464B0100000000}
    Left = 498
    Top = 209
    FastFields = (
      'PKGRESAMI,3,0'
      'GRESAMI,1,10'
      'DESCRIZIONE,1,50'
      'REPARTI_FK,3,0'
      'PESO_MEDICO,6,0'
      'PESO_TECNICO,6,0'
      'TIPO_MODALITA,1,5'
      'DATA_FINE,11,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object MetodicheGRESAMI: TStringField
      DisplayLabel = 'Metodica'
      FieldName = 'GRESAMI'
      Required = True
      Size = 10
    end
    object MetodicheDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 50
    end
    object MetodichePKGRESAMI: TIntegerField
      FieldName = 'PKGRESAMI'
    end
    object MetodicheREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object MetodichePESO_MEDICO: TFloatField
      DisplayLabel = 'Peso medico'
      FieldName = 'PESO_MEDICO'
      DisplayFormat = '#.00'
    end
    object MetodichePESO_TECNICO: TFloatField
      DisplayLabel = 'Peso tecnico'
      FieldName = 'PESO_TECNICO'
      DisplayFormat = '#.00'
    end
    object MetodicheTIPO_MODALITA: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_MODALITA'
      Size = 5
    end
    object MetodicheDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine attivit'#224
      FieldName = 'DATA_FINE'
    end
  end
  object sMetodiche: TDataSource
    DataSet = Metodiche
    Left = 444
    Top = 196
  end
  object ActionList1: TActionList
    Images = FDMCommon.imIcone
    Left = 352
    Top = 212
    object NuovaMetodica: TAction
      Caption = 'Nuova metodica'
      Hint = 'Inserisci nuova metodica'
      ImageIndex = 16
      OnExecute = NuovaMetodicaExecute
      OnUpdate = NuovaMetodicaUpdate
    end
    object ModificaMetodica: TAction
      Caption = 'Modifica metodica'
      Hint = 'Modifica metodica'
      ImageIndex = 13
      OnExecute = ModificaMetodicaExecute
      OnUpdate = ModificaMetodicaUpdate
    end
    object CancellaMetodica: TAction
      Caption = 'Cancella Metodica'
      Hint = 'Elimina Metodica'
      ImageIndex = 17
      OnExecute = CancellaMetodicaExecute
      OnUpdate = CancellaMetodicaUpdate
    end
    object NuovoEsame: TAction
      Caption = 'Nuovo esame'
      Hint = 'Nuovo codice esame'
      ImageIndex = 16
      OnExecute = NuovoEsameExecute
      OnUpdate = NuovoEsameUpdate
    end
    object NuovoEsameMultiplo: TAction
      Caption = 'Nuovo pacchetto esami'
      Hint = 'Nuovo codice esame composto'
      ImageIndex = 16
      OnExecute = NuovoEsameMultiploExecute
      OnUpdate = NuovoEsameUpdate
    end
    object ModificaEsame: TAction
      Caption = 'Modifica'
      Hint = 'Modifica'
      ImageIndex = 13
      OnExecute = ModificaEsameExecute
      OnUpdate = ModificaEsameUpdate
    end
    object CancellaEsame: TAction
      Caption = 'Cancella esame'
      Hint = 'Cancella codice esame'
      ImageIndex = 17
      OnExecute = CancellaEsameExecute
      OnUpdate = CancellaEsameUpdate
    end
    object ModificaInComposto: TAction
      Caption = 'Trasforma in composto'
      Hint = 'Trasforma in esame composto'
      ImageIndex = 43
      OnExecute = ModificaInCompostoExecute
      OnUpdate = ModificaInCompostoUpdate
    end
    object ModificaInNormale: TAction
      Caption = 'Modifica in normale'
      Hint = 'Trasforma in esame normale'
      ImageIndex = 41
      OnExecute = ModificaInNormaleExecute
      OnUpdate = ModificaInNormaleUpdate
    end
    object Personalizza: TAction
      Caption = 'Personalizza'
      Hint = 'Personalizza lista'
      OnExecute = PersonalizzaExecute
      OnUpdate = PersonalizzaUpdate
    end
    object aCopiaListino: TAction
      Caption = 'Copia listino'
      Hint = 'Copia listino selezionato'
      ImageIndex = 32
      OnExecute = aCopiaListinoExecute
    end
    object ModificaRadEsame: TAction
      Caption = 'Modifica'
      ImageIndex = 13
      OnExecute = ModificaRadEsameExecute
    end
    object CancellaCodRad: TAction
      Caption = 'Deseleziona esame'
      ImageIndex = 14
      OnExecute = CancellaCodRadExecute
      OnUpdate = CancellaCodRadUpdate
    end
    object aRefreshListini: TAction
      Caption = 'Refresh Listini'
      OnExecute = aRefreshListiniExecute
    end
    object Nuovotariffario: TAction
      Caption = 'Nuovo Tariffario'
      ImageIndex = 16
      OnExecute = NuovotariffarioExecute
    end
    object ModificaTariffario: TAction
      Caption = 'ModificaTariffario'
      Hint = 'Modifica tariffario'
      ImageIndex = 13
      OnExecute = ModificaTariffarioExecute
      OnUpdate = ModificaTariffarioUpdate
    end
    object CancellaTariffario: TAction
      Caption = 'Cancella Tariffario'
      ImageIndex = 17
      OnExecute = CancellaTariffarioExecute
      OnUpdate = CancellaTariffarioUpdate
    end
    object ModificaListino: TAction
      Caption = 'Modifica Listino'
      ImageIndex = 13
      OnExecute = ModificaListinoExecute
      OnUpdate = ModificaListinoUpdate
    end
    object CancellaListino: TAction
      Caption = 'Cancella Listino'
      ImageIndex = 17
      OnExecute = CancellaListinoExecute
      OnUpdate = CancellaListinoUpdate
    end
    object StampaTariffario: TAction
      Caption = 'Stampa Tariffario'
      ImageIndex = 15
      OnExecute = StampaTariffarioExecute
      OnUpdate = StampaTariffarioUpdate
    end
    object StampaGruppiSpec: TAction
      Caption = 'Stampa Specificazioni'
      ImageIndex = 15
      OnExecute = StampaGruppiSpecExecute
    end
    object StampaCodiciRad: TAction
      Caption = 'Stampa Codici Radiologia'
      ImageIndex = 15
      OnExecute = StampaCodiciRadExecute
    end
    object StampaGruppi: TAction
      Caption = 'Stampa'
      ImageIndex = 15
      OnExecute = StampaGruppiExecute
    end
    object AssegnaEsame: TAction
      Caption = 'Seleziona esame'
      ImageIndex = 21
      OnExecute = AssegnaEsameExecute
      OnUpdate = AssegnaEsameUpdate
    end
    object aEstraiExcel: TAction
      Caption = 'aEstraiExcel'
      OnExecute = aEstraiExcelExecute
    end
  end
  object Prestazioni: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_Prestazioni_Codice'
        Fields = 'CODICE'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_Prestazioni_Codice'
    Aggregates = <>
    Active = True
    Constraints = <>
    AfterDelete = PrestazioniAfterDelete
    BeforeQuery = PrestazioniBeforeQuery
    SequenceField.Field = 'PKCODICIRAD'
    SequenceField.Sequence = 'CODICIRAD_PKCODICIRAD'
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'CODICIRAD'
    PrimeFields.Strings = (
      'PKCODICIRAD')
    RefetchOnInsert.Strings = (
      'PKCODICIRAD')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'c.codice,'
      'c.descrizione,'
      'c.ident_fk,'
      '0 as durata,'
      'null as gresami_fk,'
      'null as gresami,'
      'c.pkcodicirad,'
      'c.dose,'
      'c.composto,'
      'null as pkspecificazioni,'
      'null as DescSpec,'
      'c.data_inizio,'
      'c.data_fine,'
      'c.last_mod,'
      'c.user_id,'
      'c.branca,'
      'c.grspec_fk,'
      'g.idgruppospec,'
      'cr.codicirad_fk'
      'from codicirad c'
      'left join grspecificazioni g on g.pk_gruppospec = c.grspec_fk'
      
        'left join codxrad cr on cr.reparti_fk=:reparti_fk and cr.codicir' +
        'ad_fk=c.pkcodicirad'
      ' ')
    Params = <
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    DirectModify = [tsyInsert]
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      030000000C0000000F000000504B5052455354535045434D554C540100000000
      100000005052455354535045434D554C545F464B010000000006000000434F44
      4943450100000000080000004944454E545F464B01000000000B000000444154
      415F494E495A494F010000000009000000444154415F46494E4501000000000C
      0000004E4F4D454E434C41544F52450100000000090000004652455155454E5A
      4101000000000A00000053455256495A495F464B010000000007000000444553
      43525F4901000000000700000044455343525F44010000000006000000445552
      4154410100000000}
    Left = 198
    Top = 280
    FastFields = (
      'CODICE,1,12'
      'DESCRIZIONE,1,100'
      'IDENT_FK,1,12'
      'DURATA,3,0'
      'GRESAMI_FK,1,1'
      'GRESAMI,1,1'
      'PKCODICIRAD,3,0'
      'DOSE,6,0'
      'COMPOSTO,3,0'
      'PKSPECIFICAZIONI,1,1'
      'DESCSPEC,1,1'
      'DATA_INIZIO,11,0'
      'DATA_FINE,11,0'
      'LAST_MOD,11,0'
      'USER_ID,3,0'
      'BRANCA,1,3'
      'GRSPEC_FK,3,0'
      'IDGRUPPOSPEC,1,30'
      'CODICIRAD_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object PrestazioniCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object PrestazioniDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
    object PrestazioniDATA_INIZIO: TDateTimeField
      FieldName = 'DATA_INIZIO'
    end
    object PrestazioniDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine validit'#224
      FieldName = 'DATA_FINE'
    end
    object PrestazioniLAST_MOD: TDateTimeField
      FieldName = 'LAST_MOD'
    end
    object PrestazioniUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object PrestazioniDOSE: TFloatField
      FieldName = 'DOSE'
    end
    object PrestazioniPKCODICIRAD: TIntegerField
      FieldName = 'PKCODICIRAD'
    end
    object PrestazioniCOMPOSTO: TIntegerField
      DisplayLabel = 'Composto'
      FieldName = 'COMPOSTO'
    end
    object PrestazioniBRANCA: TStringField
      FieldName = 'BRANCA'
      Size = 3
    end
    object PrestazioniGRSPEC_FK: TIntegerField
      FieldName = 'GRSPEC_FK'
    end
    object PrestazioniIDGRUPPOSPEC: TStringField
      DisplayLabel = 'Spec.'
      FieldName = 'IDGRUPPOSPEC'
      Size = 30
    end
    object PrestazioniIDENT_FK: TStringField
      FieldName = 'IDENT_FK'
      Size = 12
    end
    object PrestazioniGRESAMI_FK: TStringField
      FieldName = 'GRESAMI_FK'
      Size = 1
    end
    object PrestazioniGRESAMI: TStringField
      DisplayLabel = 'Metodica'
      FieldName = 'GRESAMI'
      Size = 1
    end
    object PrestazioniPKSPECIFICAZIONI: TStringField
      FieldName = 'PKSPECIFICAZIONI'
      Size = 1
    end
    object PrestazioniDESCSPEC: TStringField
      FieldName = 'DESCSPEC'
      Size = 1
    end
    object PrestazioniCODICIRAD_FK: TIntegerField
      FieldName = 'CODICIRAD_FK'
    end
    object PrestazioniDURATA: TIntegerField
      DisplayLabel = 'Durata'
      FieldName = 'DURATA'
    end
  end
  object sPrestazioni: TDataSource
    DataSet = Prestazioni
    Left = 396
    Top = 256
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinterGruppiSpec
    Version = 0
    Left = 348
    Top = 308
    object dxComponentPrinterTariffario: TdxGridReportLink
      Active = True
      Component = cxGrid1
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
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
      PrinterPage.PageFooter.Font.Name = 'Source Sans Pro'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageFooter.LeftTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[User Name]')
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Tariffario')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clWindowText
      PrinterPage.PageHeader.Font.Height = -19
      PrinterPage.PageHeader.Font.Name = 'Source Sans Pro'
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'New Report'
      ReportDocument.CreationDate = 42333.753906550930000000
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clWindowText
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = [fsBold]
      ShrinkToPageWidth = True
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
    object dxComponentPrinterRadCodici: TdxGridReportLink
      Active = True
      Component = cxGrid2
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
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
      PrinterPage.PageFooter.Font.Name = 'Source Sans Pro'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageFooter.LeftTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[User Name]')
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Elenco codici esame')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clWindowText
      PrinterPage.PageHeader.Font.Height = -19
      PrinterPage.PageHeader.Font.Name = 'Source Sans Pro'
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'New Report'
      ReportDocument.CreationDate = 42333.753906550930000000
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clWindowText
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = [fsBold]
      ShrinkToPageWidth = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Source Sans Pro'
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
    object dxComponentPrinterGruppiSpec: TdxGridReportLink
      Component = cxGridSpec
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      OptionsSelection.ProcessExactSelection = True
      OptionsSelection.ProcessSelection = True
      BuiltInReportLink = True
    end
    object dxComponentPrinterGruppi: TdxGridReportLink
      Component = cxMetodiche
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      OptionsSelection.ProcessExactSelection = True
      OptionsSelection.ProcessSelection = True
      BuiltInReportLink = True
    end
  end
  object LkTariffario: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    FilterOptions = [foCaseInsensitive]
    Constraints = <>
    BeforePost = LkTariffarioBeforePost
    OnNewRecord = LkTariffarioNewRecord
    SequenceField.ApplyMoment = amOnPost
    NoSQLFields.Strings = (
      'operatore')
    EditMode = 'After Post'
    UpdateTableName = 'PRESTAZIONI_SPECIALISTICHE'
    PrimeFields.Strings = (
      'IDENT')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'p.ident,'
      'p.descrizione,'
      'p.data_fine,'
      'p.data_inizio,'
      'p.last_mod,'
      'p.user_id,'
      'p.extra_tariffario,'
      'p.CALCOLO_85'
      'from prestazioni_specialistiche p'
      ' '
      ' '
      ' ')
    Params = <>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      0300000002000000050000004944454E5401000000000B000000444553435249
      5A494F4E450100000000}
    Left = 300
    Top = 474
    FastFields = (
      'IDENT,1,12'
      'DESCRIZIONE,1,300'
      'DATA_FINE,11,0'
      'DATA_INIZIO,11,0'
      'LAST_MOD,11,0'
      'USER_ID,3,0'
      'EXTRA_TARIFFARIO,3,0'
      'CALCOLO_85,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object LkTariffarioIDENT: TStringField
      DisplayLabel = 'Codice'
      DisplayWidth = 12
      FieldName = 'IDENT'
      Required = True
      Size = 12
    end
    object LkTariffarioDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      DisplayWidth = 300
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 300
    end
    object LkTariffarioLAST_MOD: TDateTimeField
      DisplayLabel = 'Ultima modifica'
      FieldName = 'LAST_MOD'
      DisplayFormat = 'ddddd hh:nn'
    end
    object LkTariffarioUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object LkTariffarioEXTRA_TARIFFARIO: TIntegerField
      FieldName = 'EXTRA_TARIFFARIO'
    end
    object LkTariffarioDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine validit'#224
      FieldName = 'DATA_FINE'
    end
    object LkTariffarioDATA_INIZIO: TDateTimeField
      DisplayLabel = 'Inizio validit'#224
      FieldName = 'DATA_INIZIO'
    end
    object LkTariffarioCALCOLO_85: TIntegerField
      DisplayLabel = '85 %'
      FieldName = 'CALCOLO_85'
    end
  end
  object sLkTariffario: TDataSource
    DataSet = LkTariffario
    Left = 248
    Top = 456
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = []
    Storage = rsStorage1
    Options = [poStoreDefValues]
    RootSection = 'FCodiciRadiologia.rsPropSaver1'
    Properties.Strings = (
      'dxAlbero.Down'
      'dxElenco.Down'
      'dxTariffario.Down'
      'dxListini.Down'
      'dxGrSpec.Down'
      'dxNonAssegnati.Down'
      'dxTuttiEsami.Down'
      'dxCodEs.Down')
    WhenLoad = wlManual
    WhenSave = wsManual
    Left = 548
    Top = 412
  end
  object cxGridPopupGruppi: TcxGridPopupMenu
    Grid = cxMetodiche
    PopupMenus = <
      item
        GridView = cxMetodicheDB
        HitTypes = [gvhtNone, gvhtCell, gvhtRecord, gvhtRowIndicator]
        Index = 0
        OnPopup = cxGridPopupMenu1PopupMenus0Popup
        PopupMenu = dxPopGruppi
      end
      item
        HitTypes = [gvhtCell, gvhtRecord, gvhtRowIndicator]
        Index = 1
      end>
    UseBuiltInPopupMenus = False
    Left = 48
    Top = 156
  end
  object dxPopGruppi: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton28'
      end>
    UseOwnFont = False
    Left = 128
    Top = 148
  end
  object dxPopCodici: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        Visible = True
        ItemName = 'dxBarButton13'
      end
      item
        Visible = True
        ItemName = 'dxBarButton17'
      end
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton29'
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
        BeginGroup = True
        Visible = True
        ItemName = 'dxNonAssegnati'
      end
      item
        Visible = True
        ItemName = 'dxTuttiEsami'
      end>
    UseOwnFont = False
    Left = 136
    Top = 220
  end
  object cxGridPopupCodiciRad: TcxGridPopupMenu
    Grid = cxGrid3
    PopupMenus = <
      item
        GridView = GridCodici
        HitTypes = [gvhtNone, gvhtCell, gvhtRecord, gvhtRowIndicator]
        Index = 0
        OnPopup = cxGridPopupMenu2PopupMenus0Popup
        PopupMenu = dxPopCodici
      end>
    UseBuiltInPopupMenus = False
    Left = 44
    Top = 220
  end
  object Listini: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'After Post'
    UpdateTableName = 'LEGGI'
    PrimeFields.Strings = (
      'CODICE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'codice, '
      'data_inizio, '
      'data_fine, '
      'descrizione'
      'from leggi')
    Params = <>
    QBEMode = False
    Left = 752
    Top = 400
    FastFields = (
      'CODICE,1,10'
      'DATA_INIZIO,11,0'
      'DATA_FINE,11,0'
      'DESCRIZIONE,1,50')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object ListiniCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Required = True
      Size = 10
    end
    object ListiniDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 50
    end
    object ListiniDATA_INIZIO: TDateTimeField
      DisplayLabel = 'Inizio attivit'#224
      FieldName = 'DATA_INIZIO'
    end
    object ListiniDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine attivit'#224
      FieldName = 'DATA_FINE'
    end
  end
  object sListini: TDataSource
    DataSet = Listini
    Left = 804
    Top = 408
  end
  object TariffeListini: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    NoSQLFields.Strings = (
      'DESCRIZIONE')
    EditMode = 'Read Only'
    UpdateTableName = 'TARIFFE_PRESTAZIONI'
    PrimeFields.Strings = (
      'LEG_CODICE'
      'PSP_IDENT')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      't.leg_codice,'
      't.psp_ident,'
      't.tar_ticket,'
      't.tar_paganti,'
      'p.descrizione'
      'from tariffe_prestazioni t, prestazioni_specialistiche p'
      'where t.leg_codice = :leg_codice'
      'and p.ident = t.psp_ident')
    Params = <
      item
        Name = 'leg_codice'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 756
    Top = 460
    FastFields = (
      'LEG_CODICE,1,10'
      'PSP_IDENT,1,12'
      'TAR_TICKET,6,0'
      'TAR_PAGANTI,6,0'
      'DESCRIZIONE,1,300')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object TariffeListiniLEG_CODICE: TStringField
      FieldName = 'LEG_CODICE'
      Size = 10
    end
    object TariffeListiniPSP_IDENT: TStringField
      DisplayLabel = 'Codice tariffario'
      FieldName = 'PSP_IDENT'
      OnChange = TariffeListiniPSP_IDENTChange
      Size = 12
    end
    object TariffeListiniTAR_TICKET: TFloatField
      DisplayLabel = 'Importo'
      FieldName = 'TAR_TICKET'
      DisplayFormat = '#,.00'
    end
    object TariffeListiniDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 300
    end
    object TariffeListiniTAR_PAGANTI: TFloatField
      DisplayLabel = 'Costo refertazione'
      FieldName = 'TAR_PAGANTI'
    end
  end
  object sTariffeListini: TDataSource
    DataSet = TariffeListini
    Left = 856
    Top = 448
  end
  object CopiaListino: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'insert into tariffe_prestazioni(leg_codice,psp_ident,tar_ticket)'
      'select :new_codice,psp_ident,tar_ticket'
      'from tariffe_prestazioni'
      'where leg_codice=:old_codice'
      '')
    Params = <
      item
        Name = 'new_codice'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'old_codice'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 724
    Top = 536
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object cxGridPopupListini: TcxGridPopupMenu
    Grid = cxGrid4
    PopupMenus = <
      item
        GridView = cxGridListini
        HitTypes = [gvhtNone, gvhtCell, gvhtRecord, gvhtIndicator]
        Index = 0
        OnPopup = cxGridPopupMenu3PopupMenus0Popup
        PopupMenu = dxPopListini
      end>
    UseBuiltInPopupMenus = False
    Left = 48
    Top = 360
  end
  object dxPopListini: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxCopiaListino'
      end
      item
        Visible = True
        ItemName = 'dxBarButton24'
      end
      item
        Visible = True
        ItemName = 'dxBarButton25'
      end>
    UseOwnFont = False
    Left = 112
    Top = 364
  end
  object EsamiRadiologia: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_EsamiRadiologia_Codice'
        Fields = 'CODICE'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_EsamiRadiologia_Codice'
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = EsamiRadiologiaBeforeQuery
    SequenceField.Field = 'PKCODXRAD'
    SequenceField.Sequence = 'CODXRAD_PKCODXRAD'
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'CODXRAD'
    PrimeFields.Strings = (
      'PKCODXRAD')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'c.codice,'
      'c.descrizione,'
      'r.pkcodxrad,'
      'c.data_inizio,'
      'c.data_fine,'
      'r.reparti_fk,'
      'r.codicirad_fk,'
      'r.durata,'
      'r.last_mod,'
      'r.user_id,'
      'r.preptext_fk,'
      't.descrizione as DescPreparazione,'
      'c.dose,'
      'c.peso_medico,'
      'c.peso_tecnico,'
      'c.composto,'
      'c.branca,'
      'c.ident_fk,'
      'gr.gresami as gruppo,'
      'gr.descrizione as DescGruppo,'
      'b.descrizione as DescBranca,'
      'EAN_13(r.codicirad_fk) as CodEAN13'
      'from codxrad r'
      'join codicirad c on c.pkcodicirad = r.codicirad_fk'
      'left join branche b on b.pkbranche = c.branca'
      'left join gresami gr on gr.pkgresami = r.gresami_fk'
      'left join testi_standard t on t.pktestistd = r.preptext_fk'
      'where r.reparti_fk = :reparti_fk'
      ' ')
    Params = <
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 544
    Top = 328
    FastFields = (
      'CODICE,1,12'
      'DESCRIZIONE,1,100'
      'PKCODXRAD,3,0'
      'DATA_INIZIO,11,0'
      'DATA_FINE,11,0'
      'REPARTI_FK,3,0'
      'CODICIRAD_FK,3,0'
      'DURATA,3,0'
      'LAST_MOD,11,0'
      'USER_ID,3,0'
      'PREPTEXT_FK,3,0'
      'DESCPREPARAZIONE,1,100'
      'DOSE,6,0'
      'PESO_MEDICO,6,0'
      'PESO_TECNICO,6,0'
      'COMPOSTO,3,0'
      'BRANCA,1,3'
      'IDENT_FK,1,12'
      'GRUPPO,1,10'
      'DESCGRUPPO,1,50'
      'DESCBRANCA,1,60'
      'CODEAN13,1,4000')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object EsamiRadiologiaCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object EsamiRadiologiaDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
    object EsamiRadiologiaPKCODXRAD: TIntegerField
      FieldName = 'PKCODXRAD'
    end
    object EsamiRadiologiaDATA_INIZIO: TDateTimeField
      FieldName = 'DATA_INIZIO'
    end
    object EsamiRadiologiaDATA_FINE: TDateTimeField
      FieldName = 'DATA_FINE'
    end
    object EsamiRadiologiaDURATA: TIntegerField
      DisplayLabel = 'Durata'
      FieldName = 'DURATA'
    end
    object EsamiRadiologiaLAST_MOD: TDateTimeField
      FieldName = 'LAST_MOD'
    end
    object EsamiRadiologiaUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object EsamiRadiologiaDOSE: TFloatField
      FieldName = 'DOSE'
    end
    object EsamiRadiologiaPESO_MEDICO: TFloatField
      DisplayLabel = 'Peso medico'
      FieldName = 'PESO_MEDICO'
      DisplayFormat = '#.00'
    end
    object EsamiRadiologiaCOMPOSTO: TIntegerField
      DisplayLabel = 'Composto'
      FieldName = 'COMPOSTO'
    end
    object EsamiRadiologiaBRANCA: TStringField
      DisplayLabel = 'Tipo esame'
      FieldName = 'BRANCA'
      Size = 2
    end
    object EsamiRadiologiaGRUPPO: TStringField
      DisplayLabel = 'Metodica'
      FieldName = 'GRUPPO'
      Size = 10
    end
    object EsamiRadiologiaDESCGRUPPO: TStringField
      FieldName = 'DESCGRUPPO'
      Size = 50
    end
    object EsamiRadiologiaREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object EsamiRadiologiaCODICIRAD_FK: TIntegerField
      FieldName = 'CODICIRAD_FK'
    end
    object EsamiRadiologiaPREPTEXT_FK: TIntegerField
      DisplayLabel = 'Preparazione'
      FieldName = 'PREPTEXT_FK'
    end
    object EsamiRadiologiaDESCPREPARAZIONE: TStringField
      DisplayLabel = 'Preparazione'
      FieldName = 'DESCPREPARAZIONE'
      Size = 30
    end
    object EsamiRadiologiaPESO_TECNICO: TFloatField
      DisplayLabel = 'Peso tecnico'
      FieldName = 'PESO_TECNICO'
    end
    object EsamiRadiologiaIDENT_FK: TStringField
      DisplayLabel = 'Tariffario'
      FieldName = 'IDENT_FK'
      Size = 12
    end
    object EsamiRadiologiaDESCBRANCA: TStringField
      DisplayLabel = 'Tipo esame'
      FieldName = 'DESCBRANCA'
      Size = 60
    end
    object EsamiRadiologiaCODEAN13: TStringField
      DisplayLabel = 'EAN-13'
      FieldName = 'CODEAN13'
      Size = 4000
    end
  end
  object sEsamiRadiologia: TDataSource
    DataSet = EsamiRadiologia
    Left = 608
    Top = 344
  end
  object cxGridPopupCodxRad: TcxGridPopupMenu
    Grid = cxGrid2
    PopupMenus = <
      item
        GridView = cxGridCodici
        HitTypes = [gvhtCell, gvhtRecord, gvhtRowIndicator]
        Index = 0
        PopupMenu = dxPopRadCodici
      end>
    Left = 44
    Top = 280
  end
  object dxPopRadCodici: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton19'
      end
      item
        Visible = True
        ItemName = 'dxBarButton20'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton27'
      end>
    UseOwnFont = False
    Left = 128
    Top = 292
  end
  object GrSpecificazioni: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.Field = 'PK_GRUPPOSPEC'
    SequenceField.Sequence = 'GRSPEC_PKGRSPEC'
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'After Post'
    UpdateTableName = 'GRSPECIFICAZIONI'
    PrimeFields.Strings = (
      'PK_GRUPPOSPEC')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'g.pk_gruppospec,'
      'g.idgruppospec,'
      'g.descrizione,'
      'g.data_inizio,'
      'g.data_fine'
      'from grspecificazioni g')
    Params = <>
    QBEMode = False
    Left = 776
    Top = 244
    FastFields = (
      'PK_GRUPPOSPEC,3,0'
      'IDGRUPPOSPEC,1,30'
      'DESCRIZIONE,1,30'
      'DATA_INIZIO,11,0'
      'DATA_FINE,11,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object GrSpecificazioniPK_GRUPPOSPEC: TIntegerField
      FieldName = 'PK_GRUPPOSPEC'
    end
    object GrSpecificazioniIDGRUPPOSPEC: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'IDGRUPPOSPEC'
      Size = 30
    end
    object GrSpecificazioniDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 30
    end
    object GrSpecificazioniDATA_INIZIO: TDateTimeField
      DisplayLabel = 'Inizio attivit'#224
      FieldName = 'DATA_INIZIO'
    end
    object GrSpecificazioniDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine attivit'#224
      FieldName = 'DATA_FINE'
    end
  end
  object sGrSpecificazioni: TDataSource
    DataSet = GrSpecificazioni
    Left = 844
    Top = 280
  end
  object Specificazioni: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_Specificazioni'
        Fields = 'GRSPECIF_FK'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_Specificazioni'
    Aggregates = <>
    Active = False
    Constraints = <>
    OnNewRecord = SpecificazioniNewRecord
    SequenceField.Field = 'PKSPECIFICAZIONI'
    SequenceField.Sequence = 'SPECIFICAZIONI_PKSPECIFIC'
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'After Post'
    UpdateTableName = 'SPECIFICAZIONI'
    PrimeFields.Strings = (
      'PKSPECIFICAZIONI')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      's.idspecificazioni,'
      's.descrizione,'
      's.pkspecificazioni,'
      's.grspecif_fk,'
      's.data_inizio,'
      's.data_fine'
      'from specificazioni s')
    Params = <>
    QBEMode = False
    Left = 752
    Top = 332
    FastFields = (
      'IDSPECIFICAZIONI,1,20'
      'DESCRIZIONE,1,30'
      'PKSPECIFICAZIONI,3,0'
      'GRSPECIF_FK,3,0'
      'DATA_INIZIO,11,0'
      'DATA_FINE,11,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object SpecificazioniIDSPECIFICAZIONI: TStringField
      DisplayLabel = 'Codice specifica'
      FieldName = 'IDSPECIFICAZIONI'
    end
    object SpecificazioniDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione specifica'
      FieldName = 'DESCRIZIONE'
      Size = 30
    end
    object SpecificazioniPKSPECIFICAZIONI: TIntegerField
      FieldName = 'PKSPECIFICAZIONI'
    end
    object SpecificazioniGRSPECIF_FK: TIntegerField
      FieldName = 'GRSPECIF_FK'
    end
    object SpecificazioniDATA_INIZIO: TDateTimeField
      DisplayLabel = 'Inizio attivit'#224
      FieldName = 'DATA_INIZIO'
    end
    object SpecificazioniDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine attivit'#224
      FieldName = 'DATA_FINE'
    end
  end
  object sSpecificazioni: TDataSource
    DataSet = Specificazioni
    Left = 812
    Top = 352
  end
  object cxGridPopupTariffario: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <
      item
        GridView = cxGridTariffario
        HitTypes = [gvhtNone, gvhtCell, gvhtRecord, gvhtIndicator]
        Index = 0
        PopupMenu = dxPopTariffario
      end>
    UseBuiltInPopupMenus = False
    Left = 48
    Top = 424
  end
  object dxPopTariffario: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton21'
      end
      item
        Visible = True
        ItemName = 'dxBarButton22'
      end
      item
        Visible = True
        ItemName = 'dxBarButton23'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton26'
      end>
    UseOwnFont = False
    Left = 128
    Top = 420
  end
  object Tipo_Modalita: TAstaClientDataSet
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
      'tipo_modalita,'
      'descrizione'
      'from tipo_modalita')
    Params = <>
    QBEMode = False
    Left = 200
    Top = 172
    FastFields = (
      'TIPO_MODALITA,1,5'
      'DESCRIZIONE,1,60')
    FMultiTable = ()
    UpdateMethod = umManual
    object Tipo_ModalitaTIPO_MODALITA: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'TIPO_MODALITA'
      Size = 5
    end
    object Tipo_ModalitaDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 60
    end
  end
  object sTipoModalita: TDataSource
    DataSet = Tipo_Modalita
    Left = 256
    Top = 160
  end
  object LkGrSpec: TAstaClientDataSet
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
      'g.pk_gruppospec,'
      'g.idgruppospec,'
      'g.descrizione'
      'from grspecificazioni g'
      'where (g.data_inizio is null or g.data_inizio<=sysdate) and'
      '      (g.data_fine is null or g.data_fine>=sysdate)')
    Params = <>
    QBEMode = False
    Left = 372
    Top = 520
    FastFields = (
      'PK_GRUPPOSPEC,3,0'
      'IDGRUPPOSPEC,1,30'
      'DESCRIZIONE,1,30')
    FMultiTable = ()
    UpdateMethod = umManual
    object LkGrSpecPK_GRUPPOSPEC: TIntegerField
      FieldName = 'PK_GRUPPOSPEC'
    end
    object LkGrSpecIDGRUPPOSPEC: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'IDGRUPPOSPEC'
      Size = 30
    end
    object LkGrSpecDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 30
    end
  end
  object LkBranche: TAstaClientDataSet
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
      'b.pkbranche,'
      'b.descrizione'
      'from branche b')
    Params = <>
    QBEMode = False
    Left = 310
    Top = 532
    FastFields = (
      'PKBRANCHE,1,3'
      'DESCRIZIONE,1,60')
    FMultiTable = ()
    UpdateMethod = umManual
    object LkBrancheDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 60
    end
    object LkBranchePKBRANCHE: TStringField
      FieldName = 'PKBRANCHE'
      Size = 3
    end
  end
  object Componenti: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = ComponentiBeforeQuery
    SequenceField.Field = 'PKGRUPPIPREST'
    SequenceField.Sequence = 'GRUPPIPREST_PKGRUPPIPREST'
    SequenceField.ApplyMoment = amOnPost
    NoSQLFields.Strings = (
      'descrizione'
      'codice'
      'durata')
    EditMode = ' Read Only'
    RefetchOnInsert.Strings = (
      'PKCODICIRAD')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'm.PKGRUPPIPREST,'
      'm.CODICIRAD_FK,'
      'm.CODICIRAD_DETT,'
      'm.REPARTI_FK,'
      'c.codice,'
      'c.descrizione,'
      'c.ident_fk,'
      'c.data_inizio,'
      'c.data_fine,'
      'cx.durata,'
      'c.dose,'
      'c.pkcodicirad,'
      'p.descrizione as DescTariffario'
      'from gruppiprest m'
      'join codicirad c on c.pkcodicirad = m.codicirad_dett'
      'left join prestazioni_specialistiche p on p.ident = c.ident_fk'
      'join codxrad cx on cx.codicirad_fk = m.codicirad_fk'
      'where m.reparti_fk = :reparti_fk and'
      '      m.codicirad_fk = :codicirad_fk and'
      '      cx.reparti_fk = :reparti_fk'
      ' ')
    Params = <
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'codicirad_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      030000000C0000000F000000504B5052455354535045434D554C540100000000
      100000005052455354535045434D554C545F464B010000000006000000434F44
      4943450100000000080000004944454E545F464B01000000000B000000444154
      415F494E495A494F010000000009000000444154415F46494E4501000000000C
      0000004E4F4D454E434C41544F52450100000000090000004652455155454E5A
      4101000000000A00000053455256495A495F464B010000000007000000444553
      43525F4901000000000700000044455343525F44010000000006000000445552
      4154410100000000}
    Left = 434
    Top = 532
    FastFields = (
      'PKGRUPPIPREST,3,0'
      'CODICIRAD_FK,3,0'
      'CODICIRAD_DETT,3,0'
      'REPARTI_FK,3,0'
      'CODICE,1,12'
      'DESCRIZIONE,1,100'
      'IDENT_FK,1,12'
      'DATA_INIZIO,11,0'
      'DATA_FINE,11,0'
      'DURATA,3,0'
      'DOSE,6,0'
      'PKCODICIRAD,3,0'
      'DESCTARIFFARIO,1,300')
    FMultiTable = ()
    UpdateMethod = umManual
    object ComponentiDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 50
    end
    object ComponentiCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Required = True
      Size = 12
    end
    object ComponentiIDENT_FK: TStringField
      DisplayLabel = 'Tariffario'
      FieldName = 'IDENT_FK'
      Size = 12
    end
    object ComponentiDATA_INIZIO: TDateTimeField
      DisplayLabel = 'Inizio validit'#224
      FieldName = 'DATA_INIZIO'
    end
    object ComponentiDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine validit'#224
      FieldName = 'DATA_FINE'
    end
    object ComponentiDURATA: TIntegerField
      DisplayLabel = 'Durata'
      FieldName = 'DURATA'
    end
    object ComponentiDESCTARIFFARIO: TStringField
      DisplayLabel = 'Descrizione tariffario'
      FieldName = 'DESCTARIFFARIO'
      Size = 300
    end
    object ComponentiDOSE: TFloatField
      DisplayLabel = 'Dose media (mGY)'
      FieldName = 'DOSE'
    end
    object ComponentiPKCODICIRAD: TIntegerField
      FieldName = 'PKCODICIRAD'
    end
    object ComponentiPKGRUPPIPREST: TIntegerField
      FieldName = 'PKGRUPPIPREST'
    end
    object ComponentiCODICIRAD_FK: TIntegerField
      FieldName = 'CODICIRAD_FK'
    end
    object ComponentiCODICIRAD_DETT: TIntegerField
      FieldName = 'CODICIRAD_DETT'
    end
    object ComponentiREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
  end
  object CodEsEsterni: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'CODES_ESTERNI'
    PrimeFields.Strings = (
      'COD_ESTERNO')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'codicirad_fk, '
      'cod_esterno, '
      'idauthority, '
      'data_inizio, '
      'data_fine, '
      'desc_esterna'
      'from CODES_ESTERNI')
    Params = <>
    QBEMode = False
    Left = 631
    Top = 260
    FastFields = (
      'CODICIRAD_FK,3,0'
      'COD_ESTERNO,1,32'
      'IDAUTHORITY,1,12'
      'DATA_INIZIO,11,0'
      'DATA_FINE,11,0'
      'DESC_ESTERNA,1,110')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object CodEsEsterniCOD_ESTERNO: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_ESTERNO'
      Required = True
      Size = 32
    end
    object CodEsEsterniIDAUTHORITY: TStringField
      DisplayLabel = 'Id Authority'
      FieldName = 'IDAUTHORITY'
      Required = True
      Size = 12
    end
    object CodEsEsterniDATA_INIZIO: TDateTimeField
      DisplayLabel = 'Data inizio'
      FieldName = 'DATA_INIZIO'
    end
    object CodEsEsterniDATA_FINE: TDateTimeField
      DisplayLabel = 'Data fine'
      FieldName = 'DATA_FINE'
    end
    object CodEsEsterniDESC_ESTERNA: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESC_ESTERNA'
      Size = 110
    end
    object CodEsEsterniCODICIRAD_FK: TIntegerField
      DisplayLabel = 'Codice esame'
      FieldName = 'CODICIRAD_FK'
      Required = True
    end
  end
  object sCodEsEsterni: TDataSource
    DataSet = CodEsEsterni
    Left = 683
    Top = 248
  end
  object qIdAuth: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'After Post'
    UpdateTableName = 'IDAUTH'
    PrimeFields.Strings = (
      'IDAUTHORITY')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'idauthority, '
      'descrizione'
      'from idauth')
    Params = <>
    QBEMode = False
    Left = 608
    Top = 198
    FastFields = (
      'IDAUTHORITY,1,12'
      'DESCRIZIONE,1,100')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qIdAuthIDAUTHORITY: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'IDAUTHORITY'
      Required = True
      Size = 12
    end
    object qIdAuthDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 100
    end
  end
  object sqIdAuth: TDataSource
    DataSet = qIdAuth
    Left = 656
    Top = 202
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'xlsx'
    Filter = 'File Excel|xlsx'
    Left = 496
    Top = 288
  end
end
