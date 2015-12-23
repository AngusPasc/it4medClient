inherited FStruttura: TFStruttura
  Width = 1000
  Height = 500
  Constraints.MinHeight = 500
  Constraints.MinWidth = 1000
  Font.Height = -22
  ParentShowHint = False
  ShowHint = True
  object dxPage: TcxPageControl [0]
    Left = 0
    Top = 70
    Width = 573
    Height = 430
    Align = alLeft
    TabOrder = 1
    Properties.ActivePage = dxTabSheet1
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 3
    OnChange = dxPageChange
    ClientRectBottom = 430
    ClientRectRight = 573
    ClientRectTop = 38
    object dxTabSheet1: TcxTabSheet
      Caption = 'Modalit'#224
      object cxModalita: TcxGrid
        Left = 0
        Top = 0
        Width = 573
        Height = 392
        Align = alClient
        PopupMenu = dxBarPopModalita
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        object cxModalitaView: TcxGridDBTableView
          DragMode = dmAutomatic
          PopupMenu = dxBarPopModalita
          OnDblClick = cxModalitaViewDblClick
          OnDragDrop = cxModalitaViewDragDrop
          OnDragOver = cxModalitaViewDragOver
          Navigator.Buttons.OnButtonClick = cxModalitaViewNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sModalita
          DataController.Filter.MaxValueListCount = 1000
          DataController.KeyFieldNames = 'PKMODALITA'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'DESCRIZIONE'
              Column = cxModalitaViewDESCRIZIONE
            end>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnPopup.MaxDropDownItemCount = 12
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsView.NavigatorOffset = 10
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderHeight = 80
          OptionsView.Indicator = True
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          object cxModalitaViewPKMODALITA: TcxGridDBColumn
            DataBinding.FieldName = 'PKMODALITA'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = False
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Width = 58
          end
          object cxModalitaViewDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 60
            Properties.ReadOnly = False
            Options.Editing = False
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 99
          end
          object cxModalitaViewCODICE: TcxGridDBColumn
            DataBinding.FieldName = 'CODICE'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            VisibleForCustomization = False
            Width = 47
          end
          object cxModalitaViewTIPO_MODALITA: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_MODALITA'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.DropDownAutoSize = True
            Properties.DropDownRows = 7
            Properties.DropDownWidth = 100
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'TIPO_MODALITA'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                FieldName = 'tipo_modalita'
              end
              item
                FieldName = 'descrizione'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListSource = sTipoModalita
            Properties.MaxLength = 60
            Properties.ReadOnly = False
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            VisibleForCustomization = False
            Width = 43
          end
          object cxModalitaViewAETITLE: TcxGridDBColumn
            DataBinding.FieldName = 'AETITLE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 50
            Properties.ReadOnly = False
            Options.Editing = False
            Options.Filtering = False
            Width = 67
          end
          object cxModalitaViewWORKLIST_FK: TcxGridDBColumn
            DataBinding.FieldName = 'WORKLIST_FK'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'PKWL_WORKLIST'
            Properties.ListColumns = <
              item
                Fixed = True
                SortOrder = soAscending
                Width = 200
                FieldName = 'DESCRIZIONE'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = sWorklist
            Options.Editing = False
            Width = 72
          end
          object cxModalitaViewREPARTI_FK: TcxGridDBColumn
            DataBinding.FieldName = 'REPARTI_FK'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = False
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Width = 55
          end
          object cxModalitaViewRADIOLOGIA: TcxGridDBColumn
            DataBinding.FieldName = 'RADIOLOGIA'
            Options.Editing = False
            Width = 87
          end
          object cxModalitaViewSERVIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'SERVIZIO'
            Options.Editing = False
            Width = 75
          end
          object cxModalitaViewMODELLO: TcxGridDBColumn
            DataBinding.FieldName = 'MODELLO'
            Options.Editing = False
            Options.Filtering = False
            Width = 63
          end
          object cxModalitaViewFORNITORE: TcxGridDBColumn
            DataBinding.FieldName = 'FORNITORE'
            Options.Editing = False
            Width = 77
          end
          object cxModalitaViewUBICAZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'UBICAZIONE'
            Options.Editing = False
            Options.Filtering = False
            Width = 71
          end
          object cxModalitaViewSCELTO: TcxGridDBColumn
            DataBinding.FieldName = 'SCELTO'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = FDMCommon.imIcone
            Properties.Items = <
              item
                Description = 'Selezionato'
                ImageIndex = 40
                Value = 1
              end
              item
                Description = 'Non selezionato'
                Value = 0
              end>
            Properties.ShowDescriptions = False
            Options.Editing = False
            Options.Filtering = False
            Width = 30
            IsCaptionAssigned = True
          end
        end
        object cxModalitaLevel1: TcxGridLevel
          GridView = cxModalitaView
        end
      end
    end
    object dxTabSheet2: TcxTabSheet
      Caption = 'Diagnostiche'
      object cxDiagnostiche: TcxGrid
        Left = 0
        Top = 0
        Width = 573
        Height = 548
        Align = alClient
        PopupMenu = dxBarPopDiagnostiche
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        object cxDiagnosticheView: TcxGridDBTableView
          DragMode = dmAutomatic
          PopupMenu = dxBarPopDiagnostiche
          OnDblClick = cxDiagnosticheViewDblClick
          OnDragDrop = cxModalitaViewDragDrop
          OnDragOver = cxModalitaViewDragOver
          Navigator.Buttons.OnButtonClick = cxDiagnosticheViewNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sDiagnostiche
          DataController.Filter.MaxValueListCount = 1000
          DataController.KeyFieldNames = 'PKSERVIZI'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'DESCRIZIONE'
              Column = cxDiagnosticheViewDESCRIZIONE
            end>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnPopup.MaxDropDownItemCount = 12
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsView.NavigatorOffset = 10
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderHeight = 80
          OptionsView.Indicator = True
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          object cxDiagnosticheViewPKSERVIZI: TcxGridDBColumn
            DataBinding.FieldName = 'PKSERVIZI'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = False
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Width = 74
          end
          object cxDiagnosticheViewDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 100
            Properties.ReadOnly = False
            Options.Editing = False
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 167
          end
          object cxDiagnosticheViewCODICE: TcxGridDBColumn
            DataBinding.FieldName = 'CODICE'
            Options.Editing = False
            Options.Filtering = False
            Width = 84
          end
          object cxDiagnosticheViewREPARTI_FK: TcxGridDBColumn
            DataBinding.FieldName = 'REPARTI_FK'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = False
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Width = 82
          end
          object cxDiagnosticheViewDATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.DateOnError = deToday
            Options.Editing = False
            Width = 92
          end
          object cxDiagnosticheViewDATA_INIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_INIZIO'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.DateOnError = deToday
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Width = 130
          end
          object cxDiagnosticheViewTIPO_SERVIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_SERVIZIO'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 1
            Properties.ReadOnly = False
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Width = 101
          end
          object cxDiagnosticheViewESEGUITO: TcxGridDBColumn
            DataBinding.FieldName = 'ESEGUITO'
            Visible = False
            MinWidth = 16
            Options.Editing = False
            Options.Filtering = False
            Width = 40
          end
          object cxDiagnosticheViewMAX_TIME_PRENO: TcxGridDBColumn
            DataBinding.FieldName = 'MAX_TIME_PRENO'
            Options.Editing = False
            Options.Filtering = False
            Width = 94
          end
          object cxDiagnosticheViewSLOT_STANDARD: TcxGridDBColumn
            DataBinding.FieldName = 'SLOT_STANDARD'
            Options.Editing = False
            Options.Filtering = False
            Width = 63
          end
          object cxDiagnosticheViewDESCCTRLESEGUITO: TcxGridDBColumn
            DataBinding.FieldName = 'DESCCTRLESEGUITO'
            Width = 59
          end
          object cxDiagnosticheViewNO_TSRM_IN_REFERTO: TcxGridDBColumn
            DataBinding.FieldName = 'NO_TSRM_IN_REFERTO'
            RepositoryItem = FDMCommon.edrepSINO
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Width = 74
          end
          object cxDiagnosticheViewREPARTO: TcxGridDBColumn
            DataBinding.FieldName = 'REPARTO'
            Visible = False
            Options.Editing = False
            Width = 152
          end
        end
        object cxDiagnosticheLevel1: TcxGridLevel
          GridView = cxDiagnosticheView
        end
      end
    end
    object dxTabSheet3: TcxTabSheet
      Caption = 'Sale'
      object cxSale: TcxGrid
        Left = 0
        Top = 0
        Width = 573
        Height = 363
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        object cxSaleView: TcxGridDBTableView
          DragMode = dmAutomatic
          OnDragDrop = cxModalitaViewDragDrop
          OnDragOver = cxModalitaViewDragOver
          Navigator.Buttons.OnButtonClick = cxSaleViewNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sSale
          DataController.Filter.MaxValueListCount = 1000
          DataController.KeyFieldNames = 'PKAMBULATORI'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'DESCRIZIONE'
              Column = cxSaleViewDESCRIZIONE
            end>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnPopup.MaxDropDownItemCount = 12
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.NavigatorOffset = 10
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 80
          OptionsView.Indicator = True
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          object cxSaleViewPKAMBULATORI: TcxGridDBColumn
            DataBinding.FieldName = 'PKAMBULATORI'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = False
            Visible = False
            Options.Filtering = False
            Width = 104
          end
          object cxSaleViewDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 60
            Properties.ReadOnly = False
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxSaleViewDATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = False
            Visible = False
            Options.Filtering = False
          end
          object cxSaleViewDATA_INIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_INIZIO'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.DateOnError = deToday
            Visible = False
            Options.Filtering = False
          end
          object cxSaleViewREPARTI_FK: TcxGridDBColumn
            DataBinding.FieldName = 'REPARTI_FK'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = False
            Visible = False
            Options.Filtering = False
            Width = 82
          end
        end
        object cxSaleLevel1: TcxGridLevel
          GridView = cxSaleView
        end
      end
    end
    object dxTabListaRefertazione: TcxTabSheet
      Caption = 'Liste di refertazione'
      object cxStazioni: TcxGrid
        Left = 0
        Top = 0
        Width = 573
        Height = 363
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        object cxStazioniView: TcxGridDBTableView
          Navigator.Buttons.OnButtonClick = cxStazioniViewNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sStazioni
          DataController.Filter.MaxValueListCount = 1000
          DataController.KeyFieldNames = 'PKSERVIZI'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'DESCRIZIONE'
              Column = cxStazioniViewDESCRIZIONE
            end>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnPopup.MaxDropDownItemCount = 12
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnMoving = False
          OptionsData.Appending = True
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.NavigatorOffset = 10
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 80
          OptionsView.Indicator = True
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          object cxStazioniViewDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 100
            Properties.ReadOnly = False
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 206
          end
        end
        object cxStazioniLevel1: TcxGridLevel
          GridView = cxStazioniView
        end
      end
    end
    object dxTabSheet5: TcxTabSheet
      Caption = 'Masterizzatori'
      ImageIndex = 4
      object cxCDMaster: TcxGrid
        Left = 0
        Top = 0
        Width = 573
        Height = 363
        Align = alClient
        TabOrder = 0
        object cxCDMasterDBTableView1: TcxGridDBTableView
          Navigator.Buttons.OnButtonClick = cxCDMasterDBTableView1NavigatorButtonsButtonClick
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
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sCDMaster
          DataController.KeyFieldNames = 'PKCDMASTER'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxCDMasterDBTableView1PKCDMASTER: TcxGridDBColumn
            DataBinding.FieldName = 'PKCDMASTER'
            Visible = False
          end
          object cxCDMasterDBTableView1AETITLE: TcxGridDBColumn
            DataBinding.FieldName = 'AETITLE'
            SortIndex = 0
            SortOrder = soAscending
            Width = 101
          end
          object cxCDMasterDBTableView1INDIRIZZO: TcxGridDBColumn
            DataBinding.FieldName = 'INDIRIZZO'
            Width = 119
          end
          object cxCDMasterDBTableView1PORTA: TcxGridDBColumn
            DataBinding.FieldName = 'PORTA'
            PropertiesClassName = 'TcxSpinEditProperties'
            Width = 98
          end
          object cxCDMasterDBTableView1REPARTI_FK: TcxGridDBColumn
            DataBinding.FieldName = 'REPARTI_FK'
            Visible = False
          end
          object cxCDMasterDBTableView1DESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Width = 164
          end
          object cxCDMasterDBTableView1CREA_CD_FK: TcxGridDBColumn
            DataBinding.FieldName = 'CREA_CD_FK'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'PKCREA_CD'
            Properties.ListColumns = <
              item
                Caption = 'Server'
                SortOrder = soAscending
                Width = 200
                FieldName = 'DESCRIZIONE'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = sCreaCD
            Width = 159
          end
        end
        object cxCDMasterLevel1: TcxGridLevel
          GridView = cxCDMasterDBTableView1
        end
      end
    end
    object cxTabServerCD: TcxTabSheet
      Caption = 'Server CD'
      ImageIndex = 5
      object cxServerCD: TcxGrid
        Left = 0
        Top = 0
        Width = 573
        Height = 670
        Align = alClient
        TabOrder = 0
        object cxServerCDDB: TcxGridDBTableView
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
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sCreaCD
          DataController.KeyFieldNames = 'PKCREA_CD'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxServerCDDBPKCREA_CD: TcxGridDBColumn
            DataBinding.FieldName = 'PKCREA_CD'
            Visible = False
          end
          object cxServerCDDBTIPO_CREA_CD: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_CREA_CD'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Items = <
              item
                Description = 'Rasna'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = 'Microprint'
                Value = 2
              end
              item
                Description = 'Microprint Nuovo'
                Value = 3
              end>
            Width = 127
          end
          object cxServerCDDBDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            SortIndex = 0
            SortOrder = soAscending
            Width = 169
          end
          object cxServerCDDBCD_SERVER_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'CD_SERVER_NAME'
            Width = 215
          end
          object cxServerCDDBCD_SERVER_PORTA: TcxGridDBColumn
            DataBinding.FieldName = 'CD_SERVER_PORTA'
            Width = 130
          end
          object cxServerCDDBCD_XML: TcxGridDBColumn
            DataBinding.FieldName = 'CD_XML'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
          end
        end
        object cxServerCDLevel1: TcxGridLevel
          GridView = cxServerCDDB
        end
      end
    end
    object cxTabTipoModalita: TcxTabSheet
      Caption = 'Modalit'#224' / Codici'
      ImageIndex = 6
      object cxGruppoMod: TcxGrid
        Left = 0
        Top = 0
        Width = 573
        Height = 670
        Align = alClient
        TabOrder = 0
        object cxGruppoModDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sGruppoMod
          DataController.KeyFieldNames = 'PKGRPMODE'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGruppoModDBTableView1PKGRPMODE: TcxGridDBColumn
            DataBinding.FieldName = 'PKGRPMODE'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGruppoModDBTableView1DESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
          end
        end
        object cxGruppoModLevel1: TcxGridLevel
          GridView = cxGruppoModDBTableView1
        end
      end
    end
    object cxPacs: TcxTabSheet
      Caption = 'cxPacs'
      ImageIndex = 7
      object cxGridPACS: TcxGrid
        Left = 0
        Top = 0
        Width = 573
        Height = 548
        Align = alClient
        TabOrder = 0
        object cxGridPACSDBCardView1: TcxGridDBCardView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sTabPacs
          DataController.KeyFieldNames = 'PKPACS'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.CardExpanding = True
          OptionsCustomize.RowFiltering = False
          OptionsView.CardAutoWidth = True
          OptionsView.CardIndent = 7
          OptionsView.CardWidth = 408
          OptionsView.CellAutoHeight = True
          object cxGridPACSDBCardView1PKPACS: TcxGridDBCardViewRow
            DataBinding.FieldName = 'PKPACS'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxValue = 9999.000000000000000000
            Properties.MinValue = 1.000000000000000000
            Position.BeginsLayer = True
          end
          object cxGridPACSDBCardView1PACS: TcxGridDBCardViewRow
            DataBinding.FieldName = 'PACS'
            Position.BeginsLayer = True
          end
          object cxGridPACSDBCardView1NOME: TcxGridDBCardViewRow
            DataBinding.FieldName = 'NOME'
            Position.BeginsLayer = True
          end
          object cxGridPACSDBCardView1PACS_QR: TcxGridDBCardViewRow
            DataBinding.FieldName = 'PACS_QR'
            Position.BeginsLayer = True
          end
          object cxGridPACSDBCardView1IPDICOM: TcxGridDBCardViewRow
            DataBinding.FieldName = 'IPDICOM'
            Position.BeginsLayer = True
          end
          object cxGridPACSDBCardView1URL_IMMAGINI: TcxGridDBCardViewRow
            DataBinding.FieldName = 'URL_IMMAGINI'
            PropertiesClassName = 'TcxMemoProperties'
            Properties.VisibleLineCount = 2
            Position.BeginsLayer = True
          end
          object cxGridPACSDBCardView1URL_LOGIN: TcxGridDBCardViewRow
            DataBinding.FieldName = 'URL_LOGIN'
            PropertiesClassName = 'TcxMemoProperties'
            Properties.VisibleLineCount = 2
            Position.BeginsLayer = True
          end
          object cxGridPACSDBCardView1URL_LOGOUT: TcxGridDBCardViewRow
            DataBinding.FieldName = 'URL_LOGOUT'
            PropertiesClassName = 'TcxMemoProperties'
            Properties.VisibleLineCount = 2
            Position.BeginsLayer = True
          end
          object cxGridPACSDBCardView1URL_CHIUDI: TcxGridDBCardViewRow
            DataBinding.FieldName = 'URL_CHIUDI'
            PropertiesClassName = 'TcxMemoProperties'
            Properties.VisibleLineCount = 2
            Position.BeginsLayer = True
          end
          object cxGridPACSDBCardView1CANALE_PACS: TcxGridDBCardViewRow
            DataBinding.FieldName = 'CANALE_PACS'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'CHANNELNAME'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                Width = 200
                FieldName = 'CHANNELNAME'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = sqChannelConfig
            Position.BeginsLayer = True
          end
          object cxGridPACSDBCardView1AETITLE: TcxGridDBCardViewRow
            DataBinding.FieldName = 'AETITLE'
            Position.BeginsLayer = True
          end
          object cxGridPACSDBCardView1PORTA: TcxGridDBCardViewRow
            DataBinding.FieldName = 'PORTA'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.MaxValue = 99999.000000000000000000
            Properties.MinValue = 1.000000000000000000
            Position.BeginsLayer = True
          end
          object cxGridPACSDBCardView1DBLINK: TcxGridDBCardViewRow
            DataBinding.FieldName = 'DBLINK'
            Position.BeginsLayer = True
          end
        end
        object cxGridPACSLevel1: TcxGridLevel
          GridView = cxGridPACSDBCardView1
        end
      end
    end
  end
  object Splitter1: TcxSplitter [1]
    Left = 573
    Top = 70
    Width = 4
    Height = 430
    Cursor = crVSplit
    HotZoneClassName = 'TcxXPTaskBarStyle'
    MinSize = 100
    Control = dxPage
  end
  object Panel1: TPanel [2]
    Left = 577
    Top = 70
    Width = 423
    Height = 430
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 6
    object DBTree: TdxDbOrgChart
      Left = 0
      Top = 33
      Width = 423
      Height = 397
      DataSource = sStruttura
      KeyFieldName = 'PKSTRUTTURA'
      ParentFieldName = 'PARENT'
      TextFieldName = 'DESCRIZIONE'
      OrderFieldName = 'ORDINAMENTO'
      OnNewKey = DBTreeNewKey
      OnLoadNode = DBTreeLoadNode
      DefaultNodeWidth = 150
      Options = [ocSelect, ocButtons, ocCanDrag, ocShowDrag, ocRect3D]
      EditMode = [emCenter, emVCenter, emWrap]
      BorderStyle = bsNone
      Rotated = True
      Align = alClient
      Ctl3D = False
      Color = clDefault
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Source Sans Pro'
      Font.Style = []
      ParentCtl3D = False
      OnDragDrop = DBTreeDragDrop
      OnDragOver = DBTreeDragOver
      PopupMenu = dxBarPopupMenu1
      ParentFont = False
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 0
      Top = 0
      Width = 423
      Height = 33
      Align = dalTop
      BarManager = dxBarManager1
    end
  end
  inherited rsStorage1: TrsStorage
    Left = 55
    Top = 98
  end
  inherited rsXMLData1: TrsXMLData
    Left = 107
    Top = 138
  end
  object Sale: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeOpen = SaleBeforeOpen
    OnNewRecord = SaleNewRecord
    SequenceField.Field = 'PKAMBULATORI'
    SequenceField.Sequence = 'AMBULATORI_PKAMBULATORI'
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'After Post'
    UpdateTableName = 'AMBULATORI'
    PrimeFields.Strings = (
      'PKAMBULATORI')
    RefetchOnInsert.Strings = (
      'PKAMBULATORI')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select '
      'pkambulatori,'
      'descrizione,'
      'data_fine,'
      'data_inizio,'
      'reparti_fk'
      'from ambulatori'
      'where reparti_fk=:reparti_fk')
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
    Left = 20
    Top = 216
    FastFields = (
      'PKAMBULATORI,3,0'
      'DESCRIZIONE,1,60'
      'DATA_FINE,11,0'
      'DATA_INIZIO,11,0'
      'REPARTI_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object SalePKAMBULATORI: TIntegerField
      FieldName = 'PKAMBULATORI'
    end
    object SaleDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 60
    end
    object SaleDATA_FINE: TDateTimeField
      FieldName = 'DATA_FINE'
    end
    object SaleDATA_INIZIO: TDateTimeField
      FieldName = 'DATA_INIZIO'
    end
    object SaleREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
  end
  object sStruttura: TDataSource
    DataSet = Struttura
    Left = 400
    Top = 184
  end
  object sSale: TDataSource
    DataSet = Sale
    Left = 164
    Top = 168
  end
  object Diagnostiche: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    OnNewRecord = DiagnosticheNewRecord
    BeforeQuery = DiagnosticheBeforeQuery
    SequenceField.Field = 'PKSERVIZI'
    SequenceField.Sequence = 'SERVIZI_PKSERVIZI'
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'Read Only'
    UpdateTableName = 'SERVIZI'
    PrimeFields.Strings = (
      'PKSERVIZI')
    RefetchOnInsert.Strings = (
      'PKSERVIZI')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'd.pkservizi,'
      'd.descrizione,'
      'd.reparti_fk,'
      'd.data_fine,'
      'd.data_inizio,'
      'd.tipo_servizio,'
      'd.eseguito,'
      'd.max_time_preno,'
      'd.slot_standard,'
      'd.no_tsrm_in_referto,'
      'd.chk_med_memory,'
      'd.chk_overbooking,'
      'd.chk_non_refertare,'
      'd.alloca_modalita,'
      'd.ore_prima,'
      'd.tipo_diagn,'
      'd.codice,'
      'd.ctrl_eseguito,'
      's.descrizione as DescCtrlEseguito,'
      'd.unifica_ref,'
      'd.pacs_fk,'
      'r.descrizione as Reparto'
      'from servizi d'
      'join reparti r on r.pkreparti = d.reparti_fk'
      
        'left join wtbd_ctrleseguito s on s.ctrl_eseguito=d.ctrl_eseguito' +
        ' and s.lingua=:lingua'
      'where d.reparti_fk = :reparti_fk and'
      'd.tipo_servizio='#39'D'#39)
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
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 72
    Top = 244
    FastFields = (
      'PKSERVIZI,3,0'
      'DESCRIZIONE,1,100'
      'REPARTI_FK,3,0'
      'DATA_FINE,11,0'
      'DATA_INIZIO,11,0'
      'TIPO_SERVIZIO,1,1'
      'ESEGUITO,3,0'
      'MAX_TIME_PRENO,3,0'
      'SLOT_STANDARD,3,0'
      'NO_TSRM_IN_REFERTO,3,0'
      'CHK_MED_MEMORY,3,0'
      'CHK_OVERBOOKING,3,0'
      'CHK_NON_REFERTARE,3,0'
      'ALLOCA_MODALITA,3,0'
      'ORE_PRIMA,3,0'
      'TIPO_DIAGN,3,0'
      'CODICE,1,20'
      'CTRL_ESEGUITO,3,0'
      'DESCCTRLESEGUITO,1,200'
      'UNIFICA_REF,3,0'
      'PACS_FK,3,0'
      'REPARTO,1,60')
    FMultiTable = ()
    UpdateMethod = umCached
    object DiagnostichePKSERVIZI: TIntegerField
      DisplayWidth = 10
      FieldName = 'PKSERVIZI'
    end
    object DiagnosticheDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      DisplayWidth = 100
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 100
    end
    object DiagnosticheREPARTI_FK: TIntegerField
      DisplayWidth = 10
      FieldName = 'REPARTI_FK'
    end
    object DiagnosticheDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine attivit'#224
      DisplayWidth = 18
      FieldName = 'DATA_FINE'
    end
    object DiagnosticheDATA_INIZIO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_INIZIO'
    end
    object DiagnosticheTIPO_SERVIZIO: TStringField
      FieldName = 'TIPO_SERVIZIO'
      Size = 1
    end
    object DiagnosticheESEGUITO: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'ESEGUITO'
    end
    object DiagnosticheMAX_TIME_PRENO: TIntegerField
      DisplayLabel = 'Max. Tempo esame'
      FieldName = 'MAX_TIME_PRENO'
    end
    object DiagnosticheSLOT_STANDARD: TIntegerField
      DisplayLabel = 'Slot standard'
      FieldName = 'SLOT_STANDARD'
    end
    object DiagnosticheNO_TSRM_IN_REFERTO: TIntegerField
      DisplayLabel = 'No TSRM in referto'
      FieldName = 'NO_TSRM_IN_REFERTO'
    end
    object DiagnosticheREPARTO: TStringField
      DisplayLabel = 'Reparto'
      FieldName = 'REPARTO'
      Size = 60
    end
    object DiagnosticheCHK_MED_MEMORY: TIntegerField
      FieldName = 'CHK_MED_MEMORY'
    end
    object DiagnosticheCHK_OVERBOOKING: TIntegerField
      FieldName = 'CHK_OVERBOOKING'
    end
    object DiagnosticheALLOCA_MODALITA: TIntegerField
      FieldName = 'ALLOCA_MODALITA'
    end
    object DiagnosticheCHK_NON_REFERTARE: TIntegerField
      FieldName = 'CHK_NON_REFERTARE'
    end
    object DiagnosticheORE_PRIMA: TIntegerField
      FieldName = 'ORE_PRIMA'
    end
    object DiagnosticheTIPO_DIAGN: TIntegerField
      FieldName = 'TIPO_DIAGN'
    end
    object DiagnosticheCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object DiagnosticheCTRL_ESEGUITO: TIntegerField
      DisplayLabel = 'Controllo'
      FieldName = 'CTRL_ESEGUITO'
    end
    object DiagnosticheUNIFICA_REF: TIntegerField
      FieldName = 'UNIFICA_REF'
    end
    object DiagnostichePACS_FK: TIntegerField
      FieldName = 'PACS_FK'
    end
    object DiagnosticheDESCCTRLESEGUITO: TStringField
      DisplayLabel = 'Controllo'
      FieldName = 'DESCCTRLESEGUITO'
      Size = 200
    end
  end
  object Modalita: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    OnNewRecord = ModalitaNewRecord
    BeforeQuery = ModalitaBeforeQuery
    SequenceField.Field = 'PKMODALITA'
    SequenceField.Sequence = 'MODALITA_PKMODALITA'
    SequenceField.ApplyMoment = amOnNewRecord
    NoSQLFields.Strings = (
      'scelto')
    EditMode = 'Read Only'
    UpdateTableName = 'MODALITA'
    PrimeFields.Strings = (
      'PKMODALITA')
    RefetchOnInsert.Strings = (
      'PKMODALITA')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'g.pkmodalita,'
      'g.codice,'
      'g.descrizione,'
      'g.data_fine,'
      'g.data_inizio,'
      'g.tipo_modalita,'
      'g.aetitle,'
      'g.reparti_fk,'
      'g.servizi_fk,'
      'g.chk_mpps,'
      'g.worklist_fk,'
      'g.grpmode_fk,'
      'g.modello,'
      'g.fornitore,'
      'g.ubicazione,'
      'g.f_multisite,'
      'r.descrizione as Radiologia,'
      's.descrizione as Servizio,'
      'NVL2(st.pkstruttura,1,0) as Scelto'
      'from modalita g'
      'join reparti r on r.pkreparti = g.reparti_fk'
      'join servizi s on s.pkservizi = g.servizi_fk'
      
        'left join struttura st on st.modalita_fk = g.pkmodalita and st.r' +
        'eparti_fk = :reparti_fk'
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
    Left = 44
    Top = 300
    FastFields = (
      'PKMODALITA,3,0'
      'CODICE,1,12'
      'DESCRIZIONE,1,60'
      'DATA_FINE,11,0'
      'DATA_INIZIO,11,0'
      'TIPO_MODALITA,1,5'
      'AETITLE,1,50'
      'REPARTI_FK,3,0'
      'SERVIZI_FK,3,0'
      'CHK_MPPS,3,0'
      'WORKLIST_FK,3,0'
      'GRPMODE_FK,3,0'
      'MODELLO,1,50'
      'FORNITORE,1,50'
      'UBICAZIONE,1,50'
      'F_MULTISITE,3,0'
      'RADIOLOGIA,1,60'
      'SERVIZIO,1,100'
      'SCELTO,3,0')
    FMultiTable = ()
    UpdateMethod = umCached
    object ModalitaPKMODALITA: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 10
      FieldName = 'PKMODALITA'
    end
    object ModalitaDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      DisplayWidth = 60
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 60
    end
    object ModalitaDATA_FINE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_FINE'
    end
    object ModalitaDATA_INIZIO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_INIZIO'
    end
    object ModalitaTIPO_MODALITA: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 5
      FieldName = 'TIPO_MODALITA'
      Size = 5
    end
    object ModalitaAETITLE: TStringField
      DisplayLabel = 'AE Title'
      DisplayWidth = 50
      FieldName = 'AETITLE'
      Size = 50
    end
    object Modalitadesc_modalita: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkLookup
      FieldName = 'desc_modalita'
      LookupDataSet = Tipo_Modalita
      LookupKeyFields = 'TIPO_MODALITA'
      LookupResultField = 'DESCRIZIONE'
      KeyFields = 'TIPO_MODALITA'
      LookupCache = True
      Size = 60
      Lookup = True
    end
    object ModalitaCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object ModalitaREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object ModalitaSERVIZI_FK: TIntegerField
      DisplayLabel = 'Servizio radiologia'
      FieldName = 'SERVIZI_FK'
      Required = True
    end
    object ModalitaRADIOLOGIA: TStringField
      DisplayLabel = 'Radiologia'
      FieldName = 'RADIOLOGIA'
      Size = 60
    end
    object ModalitaSERVIZIO: TStringField
      DisplayLabel = 'Servizio'
      FieldName = 'SERVIZIO'
      Size = 100
    end
    object ModalitaMODELLO: TStringField
      DisplayLabel = 'Modello'
      FieldName = 'MODELLO'
      Size = 50
    end
    object ModalitaFORNITORE: TStringField
      DisplayLabel = 'Fornitore'
      FieldName = 'FORNITORE'
      Size = 50
    end
    object ModalitaUBICAZIONE: TStringField
      DisplayLabel = 'Ubicazione'
      FieldName = 'UBICAZIONE'
      Size = 50
    end
    object ModalitaCHK_MPPS: TIntegerField
      FieldName = 'CHK_MPPS'
    end
    object ModalitaWORKLIST_FK: TIntegerField
      DisplayLabel = 'Worklist'
      FieldName = 'WORKLIST_FK'
    end
    object ModalitaGRPMODE_FK: TIntegerField
      FieldName = 'GRPMODE_FK'
    end
    object ModalitaF_MULTISITE: TIntegerField
      FieldName = 'F_MULTISITE'
    end
    object ModalitaSCELTO: TIntegerField
      FieldName = 'SCELTO'
    end
  end
  object dxBarManager1: TdxBarManager
    AllowReset = False
    Scaled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Source Sans Pro'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'View'
      'Strutture'
      'Comandi')
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    ImageOptions.Images = FDMCommon.imIcone
    MenusShowRecentItemsFirst = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    ShowFullMenusAfterDelay = False
    UseSystemFont = False
    Left = 292
    Top = 300
    DockControlHeights = (
      0
      0
      70
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Navigator'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DeleteNode1'
        end
        item
          Visible = True
          ItemName = 'ItZoom'
        end
        item
          Visible = True
          ItemName = 'ItRotated'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'Navigator'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Struttura'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxTipoModalita'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButtonListaRefer'
        end
        item
          Visible = True
          ItemName = 'dxMasterizzatori'
        end
        item
          Visible = True
          ItemName = 'dxServerCD'
        end
        item
          Visible = True
          ItemName = 'dxBarPacs'
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
          ItemName = 'dxBarStatic1'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'Struttura'
      OneOnRow = True
      Row = 0
      SizeGrip = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object ItZoom: TdxBarButton
      Action = Zoom
      Category = 0
      ButtonStyle = bsChecked
      PaintStyle = psCaptionGlyph
      UnclickAfterDoing = False
    end
    object ItRotated: TdxBarButton
      Action = Ruotato
      Category = 0
      ButtonStyle = bsChecked
      PaintStyle = psCaptionGlyph
      UnclickAfterDoing = False
    end
    object ItAnimated: TdxBarButton
      Caption = 'Animazione'
      Category = 0
      Hint = 'Usa animazione nelle operazioni dello schema'
      Visible = ivNever
      ButtonStyle = bsChecked
      UnclickAfterDoing = False
      OnClick = ItAnimatedClick
    end
    object It3D: TdxBarButton
      Caption = '3D'
      Category = 0
      Hint = 'Visualizzazione in 3D degli elementi dello schema'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = It3DClick
    end
    object ItFullExpand: TdxBarButton
      Action = Espandi
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object ItFullCollapse: TdxBarButton
      Action = Chiudi
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object DeleteNode1: TdxBarButton
      Action = CancellaElemento
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Action = Stampa
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Modalit'#224
      Category = 1
      Hint = 'Modalit'#224
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      Down = True
      OnClick = dxBarButton3Click
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Diagnostiche'
      Category = 1
      Hint = 'Diagnostiche'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxBarButton4Click
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Sale'
      Category = 1
      Hint = 'Sale'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxBarButton5Click
    end
    object dxBarButtonListaRefer: TdxBarButton
      Caption = 'Liste di refertazione'
      Category = 1
      Hint = 'Liste di refertazione'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxBarButtonListaReferClick
    end
    object dxMasterizzatori: TdxBarButton
      Caption = 'Masterizzatori'
      Category = 1
      Hint = 'Masterizzatori'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxMasterizzatoriClick
    end
    object dxTipoModalita: TdxBarButton
      Caption = 'Modalit'#224' / Codici'
      Category = 1
      Hint = 'Modalit'#224' / Codici'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxTipoModalitaClick
    end
    object dxBarPacs: TdxBarButton
      Caption = 'PACS'
      Category = 1
      Hint = 'PACS'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxBarPacsClick
    end
    object dxBarStatic1: TdxBarStatic
      Category = 1
      Visible = ivAlways
      Width = 20
    end
    object dxBarButton1: TdxBarButton
      Action = aElenco
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxServerCD: TdxBarButton
      Caption = 'Server CD'
      Category = 1
      Hint = 'Server CD'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxServerCDClick
    end
    object dxBarButton12: TdxBarButton
      Action = aEsporta
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton7: TdxBarButton
      Action = RegistraModalita
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton8: TdxBarButton
      Action = ModificaModalita
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton9: TdxBarButton
      Action = RegistraDiagnostica
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton10: TdxBarButton
      Action = ModificaDiagnostica
      Category = 2
    end
    object dxConfiguraGridModalita: TdxBarButton
      Action = aConfiguraGridModalita
      Category = 2
    end
    object dxResetGridModalita: TdxBarButton
      Action = aResetGridModalita
      Category = 2
    end
    object dxBarButton11: TdxBarButton
      Action = CancellaRecord
      Category = 2
    end
  end
  object Struttura: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'idx_struttura'
        Fields = 'parent'
        Options = []
        Selected = True
      end>
    IndexName = 'idx_struttura'
    Aggregates = <>
    Active = True
    Constraints = <>
    OnCalcFields = StrutturaCalcFields
    OnNewRecord = StrutturaNewRecord
    BeforeQuery = StrutturaBeforeQuery
    SequenceField.Field = 'PKSTRUTTURA'
    SequenceField.Sequence = 'STRUTTURA_PKSTRUTTURA'
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'Read Only'
    UpdateTableName = 'STRUTTURA'
    PrimeFields.Strings = (
      'PKSTRUTTURA')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      's.pkstruttura,'
      's.ordinamento,'
      's.parent,'
      's.ambulatori_fk,'
      's.servizi_fk,'
      's.modalita_fk,'
      's.reparti_fk,'
      
        'NVL(a.descrizione, NVL2(z.descrizione,NVL2(z.codice,z.codice||'#39' ' +
        '- '#39'||z.descrizione,z.descrizione),NVL2(m.codice,m.codice||'#39' - '#39'|' +
        '|m.descrizione,m.descrizione))) as descrizione'
      'from struttura s'
      'left join ambulatori a on a.pkambulatori = s.ambulatori_fk'
      'left join servizi z on z.pkservizi = s.servizi_fk'
      'left join modalita m on m.pkmodalita = s.modalita_fk'
      'where s.reparti_fk = :reparti_fk'
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
    Left = 452
    Top = 140
    FastFields = (
      'PKSTRUTTURA,3,0'
      'ORDINAMENTO,3,0'
      'PARENT,3,0'
      'AMBULATORI_FK,3,0'
      'SERVIZI_FK,3,0'
      'MODALITA_FK,3,0'
      'REPARTI_FK,3,0'
      'DESCRIZIONE,1,123')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object StrutturaPKSTRUTTURA: TIntegerField
      DisplayWidth = 10
      FieldName = 'PKSTRUTTURA'
    end
    object StrutturaORDINAMENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ORDINAMENTO'
    end
    object StrutturaAMBULATORI_FK: TIntegerField
      DisplayWidth = 10
      FieldName = 'AMBULATORI_FK'
    end
    object StrutturaSERVIZI_FK: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERVIZI_FK'
    end
    object StrutturaMODALITA_FK: TIntegerField
      DisplayWidth = 10
      FieldName = 'MODALITA_FK'
    end
    object StrutturaPARENT: TIntegerField
      FieldName = 'PARENT'
    end
    object StrutturaDESCRIZIONE: TStringField
      DisplayWidth = 100
      FieldKind = fkInternalCalc
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object Strutturalivello: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'livello'
      Calculated = True
    end
    object StrutturaREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
  end
  object sModalita: TDataSource
    DataSet = Modalita
    Left = 96
    Top = 312
  end
  object sDiagnostiche: TDataSource
    DataSet = Diagnostiche
    Left = 120
    Top = 228
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
    Left = 192
    Top = 208
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
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxPrinterServerCD
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageSetup, peoPreferences, peoPrint, peoReportDesign]
    PreviewOptions.VisibleOptions = [pvoPageSetup, pvoPreferences, pvoPrint, pvoReportDesign, pvoPrintStyles]
    Version = 0
    Left = 356
    Top = 160
    object dxPrinterDBTree: TdxDBOrgChartReportLink
      Active = True
      Component = DBTree
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 5080
      PrinterPage.GrayShading = True
      PrinterPage.Header = 4240
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
        'Struttura diagnostiche')
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
      ReportDocument.Caption = 'dxPrinterDBTree'
      ReportDocument.CreationDate = 42339.931427962960000000
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clWindowText
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = [fsBold]
      ShrinkToPageWidth = True
      FullExpand = True
      BuiltInReportLink = True
    end
    object dxPrinterModalita: TdxGridReportLink
      Active = True
      Component = cxModalita
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 5080
      PrinterPage.GrayShading = True
      PrinterPage.Header = 4240
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
        'Elenco modalit'#224)
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
      ReportDocument.CreationDate = 42339.931428136570000000
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
    object dxPrinterDiagnostiche: TdxGridReportLink
      Active = True
      Component = cxDiagnostiche
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 5080
      PrinterPage.GrayShading = True
      PrinterPage.Header = 4240
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
        'Elenco diagnostiche')
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
      ReportDocument.CreationDate = 42339.931428136570000000
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
    object dxPrinterSale: TdxGridReportLink
      Active = True
      Component = cxSale
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 5080
      PrinterPage.GrayShading = True
      PrinterPage.Header = 4240
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
        'Elenco sale')
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
      ReportDocument.CreationDate = 42339.931428136570000000
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
    object dxPrinterStazioni: TdxGridReportLink
      Active = True
      Component = cxStazioni
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 5080
      PrinterPage.GrayShading = True
      PrinterPage.Header = 4240
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
        'Elenco stazioni di refertazione')
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
      ReportDocument.CreationDate = 42339.931428136570000000
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
    object dxPrinterCD: TdxGridReportLink
      Active = True
      Component = cxCDMaster
      PageNumberFormat = pnfNumeral
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
      PrinterPage.PageFooter.LeftTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[User Name]')
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Elenco Masterizzatori')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42339.931428136570000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.FilterBar = False
      OptionsSelection.ProcessExactSelection = True
      OptionsSelection.ProcessSelection = True
      OptionsSize.AutoWidth = True
      OptionsView.Footers = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
    object dxPrinterServerCD: TdxGridReportLink
      Active = True
      Component = cxServerCD
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 1
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
      PrinterPage.PageFooter.LeftTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[User Name]')
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Elenco Server CD')
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42339.931428136570000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.FilterBar = False
      OptionsSelection.ProcessExactSelection = True
      OptionsSelection.ProcessSelection = True
      OptionsView.Footers = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
  end
  object sStazioni: TDataSource
    DataSet = Stazioni
    Left = 214
    Top = 301
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'DeleteNode1'
      end
      item
        Visible = True
        ItemName = 'ItZoom'
      end
      item
        Visible = True
        ItemName = 'ItRotated'
      end
      item
        Visible = True
        ItemName = 'ItAnimated'
      end
      item
        Visible = True
        ItemName = 'It3D'
      end
      item
        Visible = True
        ItemName = 'ItFullExpand'
      end
      item
        Visible = True
        ItemName = 'ItFullCollapse'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = False
    Left = 504
    Top = 200
  end
  object ActionList1: TActionList
    Images = FDMCommon.imIcone
    Left = 624
    Top = 100
    object CancellaElemento: TAction
      Caption = 'Cancella'
      Hint = 'Cancella elemento selezionato'
      ImageIndex = 47
      OnExecute = CancellaElementoExecute
      OnUpdate = CancellaElementoUpdate
    end
    object Zoom: TAction
      Caption = 'Zoom'
      Hint = 'Zoom'
      ImageIndex = 48
      OnExecute = ZoomExecute
    end
    object Ruotato: TAction
      Caption = 'Ruotato'
      Hint = 'Ruota lo schema'
      ImageIndex = 49
      OnExecute = RuotatoExecute
    end
    object Espandi: TAction
      Caption = 'Espandi'
      Hint = 'Espande completamente lo schema'
      ImageIndex = 11
      OnExecute = EspandiExecute
    end
    object Chiudi: TAction
      Caption = 'Chiudi'
      Hint = 'Chiude totalmente lo schema'
      ImageIndex = 12
      OnExecute = ChiudiExecute
    end
    object Stampa: TAction
      Caption = 'Stampa'
      Hint = 'Stampa lo schema'
      ImageIndex = 15
      OnExecute = StampaExecute
    end
    object aEsporta: TAction
      Caption = 'Esporta'
      ImageIndex = 34
      OnExecute = aEsportaExecute
    end
    object CancellaRecord: TAction
      Caption = 'Cancella'
      Hint = 'Cancella'
      ImageIndex = 17
      OnExecute = CancellaRecordExecute
    end
    object ModificaDiagnostica: TAction
      Caption = 'Modifica diagnostica'
      ImageIndex = 13
      OnExecute = ModificaDiagnosticaExecute
      OnUpdate = ModificaDiagnosticaUpdate
    end
    object RegistraDiagnostica: TAction
      Caption = 'Nuova diagnostica'
      ImageIndex = 16
      OnExecute = RegistraDiagnosticaExecute
    end
    object ModificaModalita: TAction
      Caption = 'Modifica modalit'#224
      ImageIndex = 13
      OnExecute = ModificaModalitaExecute
      OnUpdate = ModificaModalitaUpdate
    end
    object RegistraModalita: TAction
      Caption = 'Nuova modalit'#224
      ImageIndex = 16
      OnExecute = RegistraModalitaExecute
    end
    object aConfiguraGridModalita: TAction
      Caption = 'Configura grid'
      OnExecute = aConfiguraGridModalitaExecute
    end
    object aResetGridModalita: TAction
      Caption = 'Reset grid'
      OnExecute = aResetGridModalitaExecute
    end
    object aElenco: TAction
      Caption = 'Elenco'
      ImageIndex = 6
      OnExecute = aElencoExecute
    end
  end
  object Stazioni: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeOpen = StazioniBeforeOpen
    BeforeDelete = StazioniBeforeDelete
    OnNewRecord = StazioniNewRecord
    SequenceField.Field = 'PKSERVIZI'
    SequenceField.Sequence = 'SERVIZI_PKSERVIZI'
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'After Post'
    UpdateTableName = 'SERVIZI'
    PrimeFields.Strings = (
      'PKSERVIZI')
    RefetchOnInsert.Strings = (
      'PKSERVIZI')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select '
      'pkservizi, '
      'descrizione,'
      'reparti_fk,'
      'tipo_servizio'
      'from servizi'
      'where reparti_fk=:reparti_fk and tipo_servizio='#39'S'#39)
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
    Left = 176
    Top = 304
    FastFields = (
      'PKSERVIZI,3,0'
      'DESCRIZIONE,1,100'
      'REPARTI_FK,3,0'
      'TIPO_SERVIZIO,1,1')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object StazioniPKSERVIZI: TIntegerField
      FieldName = 'PKSERVIZI'
    end
    object StazioniDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object StazioniREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object StazioniTIPO_SERVIZIO: TStringField
      FieldName = 'TIPO_SERVIZIO'
      Size = 1
    end
  end
  object dxBarPopModalita: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end
      item
        Visible = True
        ItemName = 'dxBarButton11'
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
        BeginGroup = True
        Visible = True
        ItemName = 'dxConfiguraGridModalita'
      end
      item
        Visible = True
        ItemName = 'dxResetGridModalita'
      end>
    UseOwnFont = False
    Left = 604
    Top = 244
  end
  object sTipoModalita: TDataSource
    DataSet = Tipo_Modalita
    Left = 248
    Top = 196
  end
  object dxBarPopDiagnostiche: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton12'
      end>
    UseOwnFont = False
    Left = 676
    Top = 268
  end
  object DiagnxServ: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    OnNewRecord = DiagnxServNewRecord
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Cached'
    UpdateTableName = 'DIAGNXSERV'
    PrimeFields.Strings = (
      'DIAGNOSTICA_FK'
      'SERVIZI_FK')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'ds.diagnostica_fk,'
      'ds.servizi_fk'
      ''
      'from diagnxserv ds'
      'where ds.diagnostica_fk = :diagnostica_fk')
    Params = <
      item
        Name = 'diagnostica_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    UpdateObject = updDiagnxServ
    QBEMode = False
    Left = 112
    Top = 264
    FastFields = (
      'DIAGNOSTICA_FK,3,0'
      'SERVIZI_FK,3,0'
      'SERVRAD,1,100')
    FMultiTable = ()
    UpdateMethod = umCached
    object DiagnxServDIAGNOSTICA_FK: TIntegerField
      FieldName = 'DIAGNOSTICA_FK'
    end
    object DiagnxServSERVIZI_FK: TIntegerField
      DisplayLabel = 'Servizio'
      FieldName = 'SERVIZI_FK'
    end
  end
  object cdMaster: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    OnNewRecord = cdMasterNewRecord
    BeforeQuery = cdMasterBeforeQuery
    SequenceField.Field = 'PKCDMASTER'
    SequenceField.Sequence = 'CDMASTER_PKCDMASTER'
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'CDMASTER'
    PrimeFields.Strings = (
      'PKCDMASTER')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'pkcdmaster, '
      'aetitle, '
      'indirizzo, '
      'porta, '
      'reparti_fk,'
      'descrizione,'
      'CREA_CD_FK'
      'from cdmaster'
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
    Left = 472
    Top = 292
    FastFields = (
      'PKCDMASTER,3,0'
      'AETITLE,1,50'
      'INDIRIZZO,1,100'
      'PORTA,3,0'
      'REPARTI_FK,3,0'
      'DESCRIZIONE,1,100'
      'CREA_CD_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object cdMasterPKCDMASTER: TIntegerField
      FieldName = 'PKCDMASTER'
    end
    object cdMasterAETITLE: TStringField
      DisplayLabel = 'AETitle'
      FieldName = 'AETITLE'
      Size = 50
    end
    object cdMasterINDIRIZZO: TStringField
      DisplayLabel = 'Indirizzo'
      FieldName = 'INDIRIZZO'
      Size = 100
    end
    object cdMasterPORTA: TIntegerField
      DisplayLabel = 'Porta'
      FieldName = 'PORTA'
    end
    object cdMasterREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object cdMasterDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object cdMasterCREA_CD_FK: TIntegerField
      DisplayLabel = 'Server'
      FieldName = 'CREA_CD_FK'
      Required = True
    end
  end
  object sCDMaster: TDataSource
    DataSet = cdMaster
    Left = 516
    Top = 268
  end
  object CreaCD: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.Field = 'PKCREA_CD'
    SequenceField.Sequence = 'CREACD_PKCREACD'
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'CREA_CD'
    PrimeFields.Strings = (
      'PKCREA_CD')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'pkcrea_cd,'
      'tipo_crea_cd, '
      'descrizione, '
      'cd_server_name, '
      'cd_server_porta,'
      'CD_XML'
      'from crea_cd')
    SQLOptions = [soFetchMemos, soFetchBlobs]
    Params = <>
    QBEMode = False
    Left = 424
    Top = 91
    FastFields = (
      'PKCREA_CD,3,0'
      'TIPO_CREA_CD,3,0'
      'DESCRIZIONE,1,50'
      'CD_SERVER_NAME,1,50'
      'CD_SERVER_PORTA,3,0'
      'CD_XML,31,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object CreaCDTIPO_CREA_CD: TIntegerField
      DisplayLabel = 'Tipo server'
      FieldName = 'TIPO_CREA_CD'
      Required = True
    end
    object CreaCDDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 50
    end
    object CreaCDCD_SERVER_NAME: TStringField
      DisplayLabel = 'Indirizzo Server'
      FieldName = 'CD_SERVER_NAME'
      Required = True
      Size = 50
    end
    object CreaCDCD_SERVER_PORTA: TIntegerField
      DisplayLabel = 'Porta Server'
      FieldName = 'CD_SERVER_PORTA'
      Required = True
    end
    object CreaCDPKCREA_CD: TIntegerField
      FieldName = 'PKCREA_CD'
    end
    object CreaCDCD_XML: TMemoField
      DisplayLabel = 'Template'
      FieldName = 'CD_XML'
      BlobType = ftOraClob
    end
  end
  object sCreaCD: TDataSource
    DataSet = CreaCD
    Left = 472
    Top = 95
  end
  object Worklist: TAstaClientDataSet
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
      'wl.pkwl_worklist, '
      'wl.descrizione'
      'from wl_worklist wl')
    Params = <>
    QBEMode = False
    Left = 336
    Top = 256
    FastFields = (
      'PKWL_WORKLIST,3,0'
      'DESCRIZIONE,1,100')
    FMultiTable = ()
    UpdateMethod = umManual
    object WorklistPKWL_WORKLIST: TIntegerField
      FieldName = 'PKWL_WORKLIST'
    end
    object WorklistDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
  end
  object sWorklist: TDataSource
    DataSet = Worklist
    Left = 284
    Top = 260
  end
  object sGruppoMod: TDataSource
    DataSet = GruppoMod
    Left = 392
    Top = 240
  end
  object GruppoMod: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.Field = 'PKGRPMODE'
    SequenceField.Sequence = 'TAB_GRUPPO_MODALITA_PKGRPMODE'
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'After Post'
    UpdateTableName = 'TAB_GRUPPO_MODALITA'
    PrimeFields.Strings = (
      'PKGRPMODE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'pkgrpmode, '
      'descrizione'
      'from tab_gruppo_modalita')
    Params = <>
    QBEMode = False
    Left = 344
    Top = 212
    FastFields = (
      'PKGRPMODE,3,0'
      'DESCRIZIONE,1,50')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object GruppoModPKGRPMODE: TIntegerField
      FieldName = 'PKGRPMODE'
    end
    object GruppoModDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'xls'
    Filter = 'Excel (*.xls)|*.xls'
    Left = 676
    Top = 73
  end
  object updDiagnxServ: TAstaUpdateSQL
    InsertSQL.Strings = (
      'begin'
      '   for z in (select d.pkservizi,s.pkservizi as ServRad'
      '             from servizi d'
      '             join servizi s on s.reparti_fk=d.reparti_fk'
      '             where d.pkservizi = :DIAGNOSTICA_FK'
      '             and s.tipo_servizio='#39'I'#39
      '             and not exists(select 1 from diagnxserv ds where'
      '             ds.diagnostica_fk=d.pkservizi)'
      '             )'
      '   loop'
      '     insert into diagnxserv(diagnostica_fk,servizi_fk)'
      '            values(z.pkservizi,z.ServRad);'
      '   end loop;'
      'end;')
    Left = 172
    Top = 257
  end
  object sTabPacs: TDataSource
    DataSet = TabPacs
    Left = 392
    Top = 340
  end
  object qChannelConfig: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'channelname'
      'from hl7.channelconfig')
    Params = <>
    QBEMode = False
    Left = 671
    Top = 182
    FastFields = (
      'CHANNELNAME,1,255')
    FMultiTable = ()
    UpdateMethod = umManual
    object qChannelConfigCHANNELNAME: TStringField
      FieldName = 'CHANNELNAME'
      Size = 255
    end
  end
  object sqChannelConfig: TDataSource
    DataSet = qChannelConfig
    Left = 715
    Top = 182
  end
  object PacsxMod: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    OnNewRecord = PacsxModNewRecord
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Cached'
    UpdateTableName = 'PACSXMOD'
    PrimeFields.Strings = (
      'PACS_FK'
      'MODALITA_FK')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'pacs_fk, '
      'modalita_fk'
      'from pacsxmod'
      'where modalita_fk=:modalita_fk')
    Params = <
      item
        Name = 'modalita_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 44
    Top = 353
    FastFields = (
      'PACS_FK,3,0'
      'MODALITA_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umCached
    object PacsxModPACS_FK: TIntegerField
      FieldName = 'PACS_FK'
    end
    object PacsxModMODALITA_FK: TIntegerField
      FieldName = 'MODALITA_FK'
    end
  end
  object TabPacs: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'TABPACS'
    PrimeFields.Strings = (
      'PKPACS')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'pkpacs, '
      'pacs, '
      'nome, '
      'pacs_qr, '
      'url_immagini, '
      'url_login,'
      'url_logout,'
      'url_chiudi,'
      'canale_pacs,'
      'aetitle,'
      'porta,'
      'ipdicom,'
      'dblink'
      'from tabpacs')
    Params = <>
    QBEMode = False
    Left = 448
    Top = 368
    FastFields = (
      'PKPACS,3,0'
      'PACS,1,50'
      'NOME,1,50'
      'PACS_QR,1,200'
      'URL_IMMAGINI,1,200'
      'URL_LOGIN,1,200'
      'URL_LOGOUT,1,200'
      'URL_CHIUDI,1,200'
      'CANALE_PACS,1,10'
      'AETITLE,1,200'
      'PORTA,3,0'
      'IPDICOM,1,200'
      'DBLINK,1,200')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object TabPacsPKPACS: TIntegerField
      DisplayLabel = 'Nr'
      FieldName = 'PKPACS'
      Required = True
    end
    object TabPacsPACS: TStringField
      DisplayLabel = 'Indirizzo'
      FieldName = 'PACS'
      Required = True
      Size = 50
    end
    object TabPacsNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object TabPacsPACS_QR: TStringField
      DisplayLabel = 'Query/Retrieve'
      FieldName = 'PACS_QR'
      Size = 200
    end
    object TabPacsURL_IMMAGINI: TStringField
      DisplayLabel = 'URL Immagini'
      FieldName = 'URL_IMMAGINI'
      Required = True
      Size = 200
    end
    object TabPacsCANALE_PACS: TStringField
      DisplayLabel = 'Canale HL7'
      FieldName = 'CANALE_PACS'
      Size = 10
    end
    object TabPacsURL_LOGIN: TStringField
      DisplayLabel = 'URL Login'
      FieldName = 'URL_LOGIN'
      Size = 200
    end
    object TabPacsURL_LOGOUT: TStringField
      DisplayLabel = 'URL Logout'
      FieldName = 'URL_LOGOUT'
      Size = 200
    end
    object TabPacsURL_CHIUDI: TStringField
      DisplayLabel = 'URL Chiusura studio'
      FieldName = 'URL_CHIUDI'
      Size = 200
    end
    object TabPacsAETITLE: TStringField
      DisplayLabel = 'AETitle PACS'
      FieldName = 'AETITLE'
      Size = 200
    end
    object TabPacsPORTA: TIntegerField
      DisplayLabel = 'Porta PACS'
      FieldName = 'PORTA'
    end
    object TabPacsIPDICOM: TStringField
      DisplayLabel = 'IP Server Dicom'
      FieldName = 'IPDICOM'
      Size = 200
    end
    object TabPacsDBLINK: TStringField
      DisplayLabel = 'DB Link (Legacy)'
      FieldName = 'DBLINK'
      Size = 200
    end
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = []
    Storage = rsStorage1
    Options = [poStoreDefValues]
    RootSection = 'FStruttura.rsPropSaver1'
    WhenLoad = wlManual
    WhenSave = wsManual
    Left = 625
    Top = 385
  end
end
