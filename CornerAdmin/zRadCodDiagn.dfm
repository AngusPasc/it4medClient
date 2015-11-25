inherited FzRadCodDiagn: TFzRadCodDiagn
  Width = 1341
  Height = 658
  Constraints.MinHeight = 500
  Constraints.MinWidth = 1000
  ParentShowHint = False
  ShowHint = True
  object cxPageControl1: TcxPageControl [0]
    Left = 0
    Top = 0
    Width = 1341
    Height = 658
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = TabAssegna
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 11
    OnPageChanging = cxPageControl1PageChanging
    ClientRectBottom = 652
    ClientRectLeft = 3
    ClientRectRight = 1335
    ClientRectTop = 37
    object TabAssegna: TcxTabSheet
      Caption = 'Assegna codici'
      object Splitter2: TcxSplitter
        Left = 347
        Top = 33
        Width = 4
        Height = 582
        Cursor = crHSplit
        HotZoneClassName = 'TcxXPTaskBarStyle'
        MinSize = 100
        Control = cxGridCodici
        Color = 14609391
        ParentColor = False
      end
      object dxBarDockControl2: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1332
        Height = 33
        Align = dalTop
        BarManager = dxBarManagerRadDiagn
      end
      object Panel1: TPanel
        Left = 351
        Top = 33
        Width = 981
        Height = 582
        Align = alClient
        TabOrder = 0
        object Splitter1: TcxSplitter
          Left = 1
          Top = 176
          Width = 979
          Height = 4
          Cursor = crVSplit
          HotZoneClassName = 'TcxXPTaskBarStyle'
          AlignSplitter = salTop
          MinSize = 100
          Control = cxGridServizi
          Color = 14609391
          ParentColor = False
        end
        object dxBarDockControl1: TdxBarDockControl
          Left = 1
          Top = 180
          Width = 979
          Height = 30
          Align = dalTop
          BarManager = dxBarManagerRadDiagn
        end
        object cxGrid1: TcxGrid
          Left = 1
          Top = 210
          Width = 979
          Height = 371
          Align = alClient
          TabOrder = 2
          LookAndFeel.Kind = lfUltraFlat
          object GridSelezionati: TcxGridDBTableView
            DragMode = dmAutomatic
            PopupMenu = dxBarPopupSelez
            OnDragDrop = GridSelezionatiDragDrop
            OnDragOver = GridSelezionatiDragOver
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = True
            Navigator.Visible = True
            DataController.DataModeController.SmartRefresh = True
            DataController.DataSource = sEsamixDiagn
            DataController.Filter.MaxValueListCount = 1000
            DataController.KeyFieldNames = 'PKESAMIXDIAGN'
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'CODICE'
                Column = GridSelezionatiCODICE
              end>
            DataController.Summary.SummaryGroups = <>
            Filtering.ColumnPopup.MaxDropDownItemCount = 12
            OptionsBehavior.ImmediateEditor = False
            OptionsBehavior.IncSearch = True
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsSelection.InvertSelect = False
            OptionsSelection.MultiSelect = True
            OptionsView.NavigatorOffset = 20
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.Indicator = True
            Preview.AutoHeight = False
            Preview.MaxLineCount = 2
            object GridSelezionatiCODICE: TcxGridDBColumn
              DataBinding.FieldName = 'CODICE'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.MaxLength = 12
              Properties.ReadOnly = True
              Options.Editing = False
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 71
            end
            object GridSelezionatiDESCRIZIONE: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRIZIONE'
              PropertiesClassName = 'TcxMaskEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.MaxLength = 50
              Properties.ReadOnly = True
              Options.Editing = False
              Width = 158
            end
            object GridSelezionatiFREQUENZA: TcxGridDBColumn
              DataBinding.FieldName = 'FREQUENZA'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.MaxLength = 0
              Properties.ReadOnly = True
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Width = 77
            end
            object GridSelezionatiPKPRESTSPECMULT: TcxGridDBColumn
              DataBinding.FieldName = 'PKPRESTSPECMULT'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.MaxLength = 0
              Properties.ReadOnly = True
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Width = 125
            end
            object GridSelezionatiSTD: TcxGridDBColumn
              DataBinding.FieldName = 'STD'
              Options.Editing = False
              Options.Filtering = False
            end
            object GridSelezionatiDURATA: TcxGridDBColumn
              DataBinding.FieldName = 'DURATA'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.ImmediatePost = True
              Options.Filtering = False
              Width = 54
            end
            object GridSelezionatiPRENOTA: TcxGridDBColumn
              DataBinding.FieldName = 'PRENOTA'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ImmediatePost = True
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Options.Filtering = False
              Width = 61
            end
            object GridSelezionatiGRESAMI: TcxGridDBColumn
              DataBinding.FieldName = 'GRESAMI'
              Options.Editing = False
              Width = 82
            end
            object GridSelezionatiREPARTI_FK: TcxGridDBColumn
              DataBinding.FieldName = 'REPARTI_FK'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownAutoSize = True
              Properties.ImmediatePost = True
              Properties.KeyFieldNames = 'PKREPARTI'
              Properties.ListColumns = <
                item
                  SortOrder = soAscending
                  Width = 200
                  FieldName = 'RADIOLOGIA'
                end>
              Properties.ListOptions.CaseInsensitive = True
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = sRadRichieste
              Width = 94
            end
            object GridSelezionatiPROVENIENZA: TcxGridDBColumn
              DataBinding.FieldName = 'PROVENIENZA'
              RepositoryItem = FDMCommon.edrepPROVENIENZA
              Width = 75
            end
            object GridSelezionatiPKESAMIXDIAGN: TcxGridDBColumn
              DataBinding.FieldName = 'PKESAMIXDIAGN'
              Visible = False
              Options.Editing = False
              VisibleForCustomization = False
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = GridSelezionati
          end
        end
        object cxGridServizi: TcxGrid
          Left = 1
          Top = 1
          Width = 979
          Height = 175
          Align = alTop
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          object GridServizi: TcxGridDBTableView
            PopupMenu = dxBarPopupDiagnostiche
            OnDblClick = GridServiziDblClick
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.PriorPage.Visible = True
            Navigator.Buttons.NextPage.Visible = True
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.Visible = True
            DataController.DataSource = sServizi
            DataController.Filter.MaxValueListCount = 1000
            DataController.KeyFieldNames = 'PKSERVIZI'
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.ColumnPopup.MaxDropDownItemCount = 12
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.ImmediateEditor = False
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsView.NavigatorOffset = 20
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.Indicator = True
            Preview.AutoHeight = False
            Preview.MaxLineCount = 2
            object GridServiziDESCRIZIONE: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRIZIONE'
              PropertiesClassName = 'TcxMaskEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.MaxLength = 100
              Properties.ReadOnly = True
              Options.Editing = False
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 213
            end
            object GridServiziCODICE: TcxGridDBColumn
              DataBinding.FieldName = 'CODICE'
              Options.Editing = False
              Options.Filtering = False
              Width = 102
            end
            object GridServiziTIPO_SERVIZIO: TcxGridDBColumn
              DataBinding.FieldName = 'TIPO_SERVIZIO'
              Visible = False
              Options.Filtering = False
              Width = 57
            end
            object GridServiziDATA_FINE: TcxGridDBColumn
              DataBinding.FieldName = 'DATA_FINE'
              Options.Editing = False
              Width = 173
            end
            object GridServiziSLOT_STANDARD: TcxGridDBColumn
              DataBinding.FieldName = 'SLOT_STANDARD'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.ImmediatePost = True
              Properties.MaxValue = 60.000000000000000000
              Properties.MinValue = 1.000000000000000000
              Options.Editing = False
              Options.Filtering = False
              Width = 107
            end
          end
          object cxGridServiziLevel1: TcxGridLevel
            GridView = GridServizi
          end
        end
      end
      object cxGridCodici: TcxGrid
        Left = 0
        Top = 33
        Width = 347
        Height = 582
        Align = alLeft
        TabOrder = 1
        object GridCodici: TcxGridDBTableView
          DragMode = dmAutomatic
          PopupMenu = dxBarPopupCodici
          OnDragDrop = cxGridCodiciDragDrop
          OnDragOver = cxGridCodiciDragOver
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
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
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          object GridCodiciCODICE: TcxGridDBColumn
            DataBinding.FieldName = 'CODICE'
            Options.Filtering = False
            Options.Grouping = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 63
          end
          object GridCodiciDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Options.Grouping = False
            Styles.OnGetContentStyle = GridCodiciDESCRIZIONEStylesGetContentStyle
            Width = 205
          end
          object GridCodiciPKCODICIRAD: TcxGridDBColumn
            DataBinding.FieldName = 'PKCODICIRAD'
            Visible = False
            Options.Filtering = False
            Options.Grouping = False
          end
          object GridCodiciIDENT_FK: TcxGridDBColumn
            DataBinding.FieldName = 'IDENT_FK'
            Visible = False
            Options.Filtering = False
            Options.Grouping = False
          end
          object GridCodiciDURATA: TcxGridDBColumn
            DataBinding.FieldName = 'DURATA'
            Options.Filtering = False
            Options.Grouping = False
            Width = 58
          end
          object GridCodiciGRUPPO: TcxGridDBColumn
            DataBinding.FieldName = 'GRUPPO'
            Width = 57
          end
          object GridCodiciCODSUB: TcxGridDBColumn
            DataBinding.FieldName = 'CODSUB'
            Visible = False
          end
        end
        object cxGridCodiciLevel1: TcxGridLevel
          GridView = GridCodici
        end
      end
    end
    object TabVerifica: TcxTabSheet
      Caption = 'Verifica codici'
      object cxGrid2: TcxGrid
        Left = 0
        Top = 33
        Width = 1332
        Height = 582
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        object cxGridEsami: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Visible = True
          DataController.DataModeController.DetailInSQLMode = True
          DataController.DataSource = sPrestazioni
          DataController.Filter.MaxValueListCount = 1000
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.Active = True
          DataController.KeyFieldNames = 'PKCODICIRAD'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'CODICE'
              Column = cxGridCodiciCODICE
            end>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnPopup.MaxDropDownItemCount = 12
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = cxGridCodiciCODICE
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.Indicator = True
          Preview.AutoHeight = False
          Preview.MaxLineCount = 2
          object cxGridCodiciCODICE: TcxGridDBColumn
            DataBinding.FieldName = 'CODICE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 12
            Properties.ReadOnly = False
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 83
          end
          object cxGridCodiciDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 50
            Properties.ReadOnly = False
            Options.Filtering = False
            Width = 292
          end
          object cxGridCodiciIDENT_FK: TcxGridDBColumn
            DataBinding.FieldName = 'IDENT_FK'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 12
            Properties.ReadOnly = False
            Visible = False
            Width = 85
          end
          object cxGridCodiciDURATA: TcxGridDBColumn
            DataBinding.FieldName = 'DURATA'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = False
            Width = 75
          end
          object cxGridCodiciPKCODICIRAD: TcxGridDBColumn
            DataBinding.FieldName = 'PKCODICIRAD'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = False
            Visible = False
            Width = 41
          end
          object cxGridCodiciGRUPPO: TcxGridDBColumn
            DataBinding.FieldName = 'GRUPPO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.MaxLength = 12
            Properties.ReadOnly = False
            Width = 56
          end
        end
        object cxGridDiagnxEsami: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataModeController.DetailInSQLMode = True
          DataController.DataModeController.OnDetailFirst = cxGridDiagnxEsamiDataControllerDataModeControllerDetailFirst
          DataController.DataModeController.OnDetailIsCurrentQuery = cxGridDiagnxEsamiDataControllerDataModeControllerDetailIsCurrentQuery
          DataController.DataSource = sDiagnxEsami
          DataController.DetailKeyFieldNames = 'CODICIRAD_FK'
          DataController.KeyFieldNames = 'PKESAMIXDIAGN'
          DataController.MasterKeyFieldNames = 'PKCODICIRAD'
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.CancelOnExit = False
          OptionsData.Inserting = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          OptionsView.Indicator = True
          object cxGridDiagnxEsamiDIAGNOSTICA: TcxGridDBColumn
            DataBinding.FieldName = 'DIAGNOSTICA'
            Options.Editing = False
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 350
          end
          object cxGridDiagnxEsamiSTD: TcxGridDBColumn
            DataBinding.FieldName = 'STD'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
          end
          object cxGridDiagnxEsamiDURATA: TcxGridDBColumn
            DataBinding.FieldName = 'DURATA'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.ImmediatePost = True
            Visible = False
            Options.Filtering = False
          end
          object cxGridDiagnxEsamiPRENOTA: TcxGridDBColumn
            DataBinding.FieldName = 'PRENOTA'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ImmediatePost = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Visible = False
            Options.Filtering = False
          end
          object cxGridDiagnxEsamiGRESAMI: TcxGridDBColumn
            DataBinding.FieldName = 'GRESAMI'
            Visible = False
            Options.Editing = False
          end
          object cxGridDiagnxEsamiREPARTI_FK: TcxGridDBColumn
            DataBinding.FieldName = 'REPARTI_FK'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'PKREPARTI'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                Width = 200
                FieldName = 'RADIOLOGIA'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = sRadRichieste
            Visible = False
            VisibleForCustomization = False
          end
          object cxGridDiagnxEsamiPROVENIENZA: TcxGridDBColumn
            DataBinding.FieldName = 'PROVENIENZA'
            RepositoryItem = FDMCommon.edrepPROVENIENZA
            Visible = False
            Width = 75
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGridEsami
          object cxGrid2Level2: TcxGridLevel
            GridView = cxGridDiagnxEsami
          end
        end
      end
      object dxBarDockControl3: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1332
        Height = 33
        Align = dalTop
        BarManager = dxBarManagerRadDiagn
      end
    end
  end
  object sServizi: TDataSource
    DataSet = Servizi
    OnDataChange = sServiziDataChange
    Left = 666
    Top = 121
  end
  object ActionList1: TActionList
    Images = FDMCommon.cxImageNavigator16
    Left = 388
    Top = 180
    object EspandiTutto: TAction
      Caption = 'Espandi'
      Hint = 'Espandi tutto'
      ImageIndex = 27
    end
    object ChiudiTutto: TAction
      Caption = 'Chiudi'
      Hint = 'Chiudi tutto'
      ImageIndex = 28
    end
    object EliminaCodice: TAction
      Caption = 'Elimina codice'
      Hint = 'Togli selezione codice'
      ImageIndex = 32
      OnExecute = EliminaCodiceExecute
      OnUpdate = EliminaCodiceUpdate
    end
    object EliminaTutti: TAction
      Caption = 'Elimina tutti i codici'
      Hint = 'Elimina tutti i codici'
      ImageIndex = 10
      OnExecute = EliminaTuttiExecute
      OnUpdate = EliminaTuttiUpdate
    end
    object AggiungiCodice: TAction
      Caption = 'Aggiungi codici'
      Hint = 'Aggiungi codici selezionati'
      ImageIndex = 20
      OnExecute = AggiungiCodiceExecute
      OnUpdate = AggiungiCodiceUpdate
    end
    object aStampa: TAction
      Caption = 'Stampa'
      Hint = 'Stampa codici per diagnostica'
      ImageIndex = 11
      OnExecute = aStampaExecute
    end
    object aTogliSelezione: TAction
      Caption = 'Deseleziona tutti'
      Hint = 'Togli selezione a tutti gli esami'
      ImageIndex = 25
      OnExecute = aTogliSelezioneExecute
    end
    object aSelezionaTutti: TAction
      Caption = 'Seleziona tutti'
      Hint = 'Seleziona tutti gli esami'
      ImageIndex = 20
      OnExecute = aSelezionaTuttiExecute
    end
    object StampaLista: TAction
      Caption = 'Stampa lista'
      Hint = 'Stampa lista'
      ImageIndex = 11
      OnExecute = StampaListaExecute
    end
    object ModificaDiagnostica: TAction
      Caption = 'Modifica diagnostica'
      ImageIndex = 8
      OnExecute = ModificaDiagnosticaExecute
    end
    object aInviaTutti: TAction
      Caption = 'Invia a...'
      Hint = 'Assegna Invia a... a tutti gli esami selezionati'
      OnExecute = aInviaTuttiExecute
      OnUpdate = aInviaTuttiUpdate
    end
    object aTogliInvio: TAction
      Caption = 'Togli Invia a...'
      OnExecute = aTogliInvioExecute
      OnUpdate = aTogliInvioUpdate
    end
    object aDiagnInMemoria: TAction
      Caption = 'Copia esami in memoria'
      ImageIndex = 22
      OnExecute = aDiagnInMemoriaExecute
      OnUpdate = aDiagnInMemoriaUpdate
    end
    object aCopiaEsami: TAction
      Caption = 'Copia esami dalla memoria'
      ImageIndex = 23
      OnExecute = aCopiaEsamiExecute
      OnUpdate = aCopiaEsamiUpdate
    end
    object ModificaRadEsame: TAction
      Caption = 'Modifica esame'
      ImageIndex = 8
      OnExecute = ModificaRadEsameExecute
    end
  end
  object Servizi: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    OnNewRecord = ServiziNewRecord
    BeforeQuery = ServiziBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Cached'
    UpdateTableName = 'SERVIZI'
    PrimeFields.Strings = (
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
      'd.unifica_ref,'
      'd.pacs_fk,'
      'r.descrizione as Reparto'
      'from servizi d'
      'join reparti r on r.pkreparti = d.reparti_fk'
      'where d.reparti_fk = :reparti_fk and'
      'd.tipo_servizio='#39'D'#39' and'
      '(d.data_fine is null or d.data_fine>sysdate)'
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
    QBEDefinition.QBEFieldDefs = {
      030000000500000009000000504B53455256495A490100000000070000004445
      5343525F4901000000000700000044455343525F4401000000000A0000005245
      50415254495F464B01000000000D0000005449504F5F53455256495A494F0100
      000000}
    Left = 584
    Top = 136
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
      'UNIFICA_REF,3,0'
      'PACS_FK,3,0'
      'REPARTO,1,60')
    FMultiTable = ()
    UpdateMethod = umCached
    object ServiziTIPO_SERVIZIO: TStringField
      DisplayLabel = 'Archivio'
      FieldName = 'TIPO_SERVIZIO'
      Required = True
      Size = 1
    end
    object ServiziDESCRIZIONE: TStringField
      DisplayLabel = 'Diagnostica'
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object ServiziSLOT_STANDARD: TIntegerField
      DisplayLabel = 'Slot standard'
      FieldName = 'SLOT_STANDARD'
    end
    object ServiziPKSERVIZI: TIntegerField
      FieldName = 'PKSERVIZI'
    end
    object ServiziREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object ServiziDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine attivit'#224
      FieldName = 'DATA_FINE'
    end
    object ServiziDATA_INIZIO: TDateTimeField
      FieldName = 'DATA_INIZIO'
    end
    object ServiziESEGUITO: TIntegerField
      FieldName = 'ESEGUITO'
    end
    object ServiziMAX_TIME_PRENO: TIntegerField
      FieldName = 'MAX_TIME_PRENO'
    end
    object ServiziNO_TSRM_IN_REFERTO: TIntegerField
      FieldName = 'NO_TSRM_IN_REFERTO'
    end
    object ServiziREPARTO: TStringField
      FieldName = 'REPARTO'
      Size = 60
    end
    object ServiziORE_PRIMA: TIntegerField
      FieldName = 'ORE_PRIMA'
    end
    object ServiziALLOCA_MODALITA: TIntegerField
      FieldName = 'ALLOCA_MODALITA'
    end
    object ServiziCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object ServiziUNIFICA_REF: TIntegerField
      FieldName = 'UNIFICA_REF'
    end
    object ServiziCTRL_ESEGUITO: TIntegerField
      FieldName = 'CTRL_ESEGUITO'
    end
    object ServiziCHK_MED_MEMORY: TIntegerField
      FieldName = 'CHK_MED_MEMORY'
    end
    object ServiziCHK_OVERBOOKING: TIntegerField
      FieldName = 'CHK_OVERBOOKING'
    end
    object ServiziCHK_NON_REFERTARE: TIntegerField
      FieldName = 'CHK_NON_REFERTARE'
    end
    object ServiziTIPO_DIAGN: TIntegerField
      FieldName = 'TIPO_DIAGN'
    end
    object ServiziPACS_FK: TIntegerField
      FieldName = 'PACS_FK'
    end
  end
  object EsamixDiagn: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = EsamixDiagnBeforeQuery
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'Read Only'
    UpdateTableName = 'ESAMIXDIAGN'
    PrimeFields.Strings = (
      'PKESAMIXDIAGN')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'c.codice,'
      'c.descrizione,'
      'cr.durata as Std,'
      'r.durata,'
      'g.gresami,'
      'r.pkesamixdiagn,'
      'r.frequenza,'
      'r.servizi_fk,'
      'r.codicirad_fk,'
      'r.prenota,'
      'r.reparti_fk,'
      'r.provenienza'
      'from esamixdiagn r'
      'join codicirad c on c.pkcodicirad = r.codicirad_fk'
      'join codxrad cr on cr.codicirad_fk = c.pkcodicirad'
      'left join gresami g on g.pkgresami = cr.gresami_fk'
      'where r.servizi_fk=:servizi_fk and'
      '(c.data_fine is null or c.data_fine>SYSDATE) and'
      'cr.reparti_fk = :reparti_fk'
      ' ')
    Params = <
      item
        Name = 'servizi_fk'
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
      03000000070000000D000000504B524144444941474E434F4401000000001000
      00005052455354535045434D554C545F464B01000000000A0000005345525649
      5A495F464B01000000000700000044455343525F490100000000070000004445
      5343525F440100000000090000004652455155454E5A41010000000006000000
      434F444943450100000000}
    Left = 760
    Top = 512
    FastFields = (
      'CODICE,1,12'
      'DESCRIZIONE,1,100'
      'STD,3,0'
      'DURATA,3,0'
      'GRESAMI,1,10'
      'PKESAMIXDIAGN,3,0'
      'FREQUENZA,3,0'
      'SERVIZI_FK,3,0'
      'CODICIRAD_FK,3,0'
      'PRENOTA,3,0'
      'REPARTI_FK,3,0'
      'PROVENIENZA,1,1')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object EsamixDiagnCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object EsamixDiagnDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
    object EsamixDiagnFREQUENZA: TIntegerField
      FieldName = 'FREQUENZA'
    end
    object EsamixDiagnCODICIRAD_FK: TIntegerField
      FieldName = 'CODICIRAD_FK'
    end
    object EsamixDiagnDURATA: TIntegerField
      DisplayLabel = 'Durata'
      FieldName = 'DURATA'
      DisplayFormat = '###'
    end
    object EsamixDiagnPRENOTA: TIntegerField
      DisplayLabel = 'Richieste'
      FieldName = 'PRENOTA'
    end
    object EsamixDiagnPKESAMIXDIAGN: TIntegerField
      FieldName = 'PKESAMIXDIAGN'
    end
    object EsamixDiagnSERVIZI_FK: TIntegerField
      FieldName = 'SERVIZI_FK'
    end
    object EsamixDiagnGRESAMI: TStringField
      DisplayLabel = 'Metodica'
      FieldName = 'GRESAMI'
      Size = 10
    end
    object EsamixDiagnREPARTI_FK: TIntegerField
      DisplayLabel = 'Invia a...'
      FieldName = 'REPARTI_FK'
    end
    object EsamixDiagnPROVENIENZA: TStringField
      DisplayLabel = 'Se provenienza...'
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object EsamixDiagnSTD: TIntegerField
      DisplayLabel = 'Standard'
      FieldName = 'STD'
      DisplayFormat = '###'
    end
  end
  object sEsamixDiagn: TDataSource
    DataSet = EsamixDiagn
    Left = 742
    Top = 179
  end
  object sGruppi: TDataSource
    Left = 224
    Top = 112
  end
  object sPrestazioni: TDataSource
    DataSet = Prestazioni
    Left = 276
    Top = 376
  end
  object qSpostaGruppi: TAstaClientDataSet
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
      '   for my_rec in ('
      '          select m.codicirad_fk'
      '          from codxrad m, codicirad c'
      '          where'
      '                m.reparti_fk = :reparti_fk and'
      '                c.gresami = :gresami and'
      '                c.pkcodicirad=m.codicirad_fk and'
      '                not exists(select 1 from esamixdiagn r'
      
        '                where r.servizi_fk=:xservizi and r.codicirad_fk=' +
        'm.codicirad_fk))'
      '   LOOP'
      '       insert into esamixdiagn(servizi_fk,codicirad_fk)'
      '       values(:xservizi,my_rec.codicirad_fk);'
      '       '
      '   END LOOP;'
      'end;')
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
        Name = 'gresami'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'xservizi'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 324
    Top = 112
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object qSpostaRiga: TAstaClientDataSet
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
      '  for my_rec in ('
      '        select m.codicirad_fk'
      '        from codxrad m'
      '        where m.codicirad_fk=:codicirad_fk and'
      '              m.reparti_fk = :reparti_fk and'
      '              not exists(select 1 from esamixdiagn r'
      
        '              where r.servizi_fk=:xdiagnostiche and r.codicirad_' +
        'fk=m.codicirad_fk))'
      '   LOOP'
      ''
      '       insert into esamixdiagn(servizi_fk,codicirad_fk)'
      '       values(:xdiagnostiche,my_rec.codicirad_fk);'
      ''
      '   END LOOP;'
      ''
      'end;'
      ''
      '')
    Params = <
      item
        Name = 'codicirad_fk'
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
        Name = 'xdiagnostiche'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 320
    Top = 252
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object dxBarManagerRadDiagn: TdxBarManager
    AllowReset = False
    Scaled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Source Sans Pro'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Selezione'
      'Selezionati'
      'Verifica')
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    ImageOptions.Images = FDMCommon.cxImageNavigator16
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 356
    Top = 340
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManagerRadDiagnBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Comandi'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 23
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Source Sans Pro'
      Font.Style = []
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
          ItemName = 'dxBarButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
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
    object dxBarManagerRadDiagnBar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Selezionati'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 22
      FloatTop = 198
      FloatClientWidth = 23
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
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
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxStampa'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'Selezionati'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManagerRadDiagnBar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Verifica'
      CaptionButtons = <>
      DockControl = dxBarDockControl3
      DockedDockControl = dxBarDockControl3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 564
      FloatTop = 432
      FloatClientWidth = 23
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Source Sans Pro'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'Verifica'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton11: TdxBarButton
      Action = AggiungiCodice
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton10: TdxBarButton
      Action = aDiagnInMemoria
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton12: TdxBarButton
      Action = aCopiaEsami
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxNonAssegnati: TdxBarButton
      Caption = 'Non selezionati'
      Category = 0
      Hint = 'Non selezionati'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 5
      Down = True
      OnClick = dxNonAssegnatiClick
    end
    object dxTuttiEsami: TdxBarButton
      Caption = 'Tutti'
      Category = 0
      Hint = 'Tutti'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 5
      OnClick = dxTuttiEsamiClick
    end
    object dxBarButton1: TdxBarButton
      Action = ModificaRadEsame
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Action = ModificaDiagnostica
      Category = 0
      Visible = ivNever
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton7: TdxBarButton
      Action = EliminaCodice
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton8: TdxBarButton
      Action = EliminaTutti
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxStampa: TdxBarButton
      Action = aStampa
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton4: TdxBarButton
      Action = aSelezionaTutti
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton5: TdxBarButton
      Action = aTogliSelezione
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton3: TdxBarButton
      Action = aInviaTutti
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton9: TdxBarButton
      Action = aTogliInvio
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxTutti: TdxBarButton
      Caption = 'Tutti gli esami'
      Category = 2
      Hint = 'Tutti gli esami'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      Down = True
    end
    object dxNonAssociati: TdxBarButton
      Caption = 'Non associati'
      Category = 2
      Hint = 'Non associati'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object dxBarButton6: TdxBarButton
      Action = StampaLista
      Category = 2
      PaintStyle = psCaptionGlyph
    end
  end
  object dxBarPopupSelez: TdxBarPopupMenu
    BarManager = dxBarManagerRadDiagn
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
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton12'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxStampa'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end>
    UseOwnFont = False
    Left = 440
    Top = 484
  end
  object dxBarPopupCodici: TdxBarPopupMenu
    BarManager = dxBarManagerRadDiagn
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 124
    Top = 384
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link2
    Version = 0
    Left = 228
    Top = 240
    object dxComponentPrinter1Link1: TdxGridReportLink
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
        'Esami per diagnostica')
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
      ReportDocument.Caption = 'Codici per diagnostica'
      ReportDocument.CreationDate = 42325.430520497680000000
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
    object dxComponentPrinter1Link2: TdxGridReportLink
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
        'Verifica codici')
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
      ReportDocument.CreationDate = 42325.430520497680000000
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
  end
  object DiagnxEsami: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = DiagnxEsamiBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'ESAMIXDIAGN'
    PrimeFields.Strings = (
      'PKESAMIXDIAGN')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'c.codice,'
      'c.descrizione,'
      'cr.durata as Std,'
      'r.durata,'
      'g.gresami,'
      'r.pkesamixdiagn,'
      'r.frequenza,'
      'r.servizi_fk,'
      'r.codicirad_fk,'
      'r.prenota,'
      'r.reparti_fk,'
      'r.provenienza,'
      's.descrizione as Diagnostica'
      'from esamixdiagn r'
      'join servizi s on s.pkservizi = r.servizi_fk'
      'join codicirad c on c.pkcodicirad = r.codicirad_fk'
      'join codxrad cr on cr.codicirad_fk = c.pkcodicirad'
      'left join gresami g on g.pkgresami = cr.gresami_fk'
      'where'
      'r.codicirad_fk = :codicirad_fk and'
      's.reparti_fk = :reparti_fk and'
      '(c.data_fine is null or c.data_fine>SYSDATE) and'
      'cr.reparti_fk = :reparti_fk')
    Params = <
      item
        Name = 'codicirad_fk'
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
    DirectModify = [tsyDelete]
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      03000000070000000D000000504B524144444941474E434F4401000000001000
      00005052455354535045434D554C545F464B01000000000A0000005345525649
      5A495F464B01000000000700000044455343525F490100000000070000004445
      5343525F440100000000090000004652455155454E5A41010000000006000000
      434F444943450100000000}
    Left = 872
    Top = 380
    FastFields = (
      'CODICE,1,12'
      'DESCRIZIONE,1,100'
      'STD,3,0'
      'DURATA,3,0'
      'GRESAMI,1,10'
      'PKESAMIXDIAGN,3,0'
      'FREQUENZA,3,0'
      'SERVIZI_FK,3,0'
      'CODICIRAD_FK,3,0'
      'PRENOTA,3,0'
      'REPARTI_FK,3,0'
      'PROVENIENZA,1,1'
      'DIAGNOSTICA,1,100')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object DiagnxEsamiCODICE: TStringField
      FieldName = 'CODICE'
      Size = 12
    end
    object DiagnxEsamiDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object DiagnxEsamiSTD: TIntegerField
      FieldName = 'STD'
    end
    object DiagnxEsamiDURATA: TIntegerField
      FieldName = 'DURATA'
    end
    object DiagnxEsamiGRESAMI: TStringField
      FieldName = 'GRESAMI'
      Size = 10
    end
    object DiagnxEsamiPKESAMIXDIAGN: TIntegerField
      FieldName = 'PKESAMIXDIAGN'
    end
    object DiagnxEsamiFREQUENZA: TIntegerField
      FieldName = 'FREQUENZA'
    end
    object DiagnxEsamiSERVIZI_FK: TIntegerField
      FieldName = 'SERVIZI_FK'
    end
    object DiagnxEsamiCODICIRAD_FK: TIntegerField
      FieldName = 'CODICIRAD_FK'
    end
    object DiagnxEsamiPRENOTA: TIntegerField
      FieldName = 'PRENOTA'
    end
    object DiagnxEsamiREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object DiagnxEsamiPROVENIENZA: TStringField
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object DiagnxEsamiDIAGNOSTICA: TStringField
      DisplayLabel = 'Diagnostica'
      FieldName = 'DIAGNOSTICA'
      Size = 100
    end
  end
  object sDiagnxEsami: TDataSource
    DataSet = DiagnxEsami
    Left = 918
    Top = 419
  end
  object PrestNonAss: TAstaClientDataSet
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
      'c.codice,'
      'c.descrizione,'
      'c.pkcodicirad,'
      'c.ident_fk,'
      'c.data_inizio,'
      'c.data_fine,'
      'c.composto,'
      'r.durata,'
      'gr.gresami as gruppo,'
      'gr.descrizione as DescGruppo'
      'from codxrad r'
      'join codicirad c on c.pkcodicirad = r.codicirad_fk'
      'left join gresami gr on gr.pkgresami = r.gresami_fk'
      'where r.reparti_fk=:reparti_fk'
      'and (c.data_fine is null or c.data_fine>SYSDATE)'
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
    QBEDefinition.QBEFieldDefs = {
      030000000A00000009000000494E5445524E4F5F49010000000009000000494E
      5445524E4F5F4401000000000F000000504B5052455354535045434D554C5401
      00000000100000005052455354535045434D554C545F464B0100000000060000
      00434F444943450100000000080000004944454E545F464B01000000000B0000
      00444154415F494E495A494F010000000009000000444154415F46494E450100
      0000000C0000004E4F4D454E434C41544F524501000000000900000046524551
      55454E5A410100000000}
    Left = 510
    Top = 361
    FastFields = (
      'CODICE,1,12'
      'DESCRIZIONE,1,100'
      'PKCODICIRAD,3,0'
      'IDENT_FK,1,12'
      'DATA_INIZIO,11,0'
      'DATA_FINE,11,0'
      'COMPOSTO,3,0'
      'DURATA,3,0'
      'GRUPPO,1,10'
      'DESCGRUPPO,1,50')
    FMultiTable = ()
    UpdateMethod = umManual
    object PrestNonAssCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object PrestNonAssIDENT_FK: TStringField
      DisplayLabel = 'Tariffario'
      FieldName = 'IDENT_FK'
      Required = True
      Size = 12
    end
    object PrestNonAssDATA_INIZIO: TDateTimeField
      DisplayLabel = 'Inizio'
      FieldName = 'DATA_INIZIO'
    end
    object PrestNonAssDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine'
      FieldName = 'DATA_FINE'
    end
    object PrestNonAssCOMPOSTO: TIntegerField
      FieldName = 'COMPOSTO'
    end
    object PrestNonAssGRUPPO: TStringField
      DisplayLabel = 'Metodica'
      FieldName = 'GRUPPO'
      Size = 10
    end
    object PrestNonAssDESCGRUPPO: TStringField
      FieldName = 'DESCGRUPPO'
      Size = 50
    end
    object PrestNonAssDURATA: TIntegerField
      DisplayLabel = 'Durata'
      FieldName = 'DURATA'
    end
    object PrestNonAssPKCODICIRAD: TIntegerField
      FieldName = 'PKCODICIRAD'
    end
    object PrestNonAssDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
  end
  object LkTariffario: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    FilterOptions = [foCaseInsensitive]
    Constraints = <>
    BeforeQuery = LkTariffarioBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    NoSQLFields.Strings = (
      'operatore')
    EditMode = 'Read Only'
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
      't.leg_codice,'
      't.tar_ticket'
      'from prestazioni_specialistiche p'
      'join tariffe_prestazioni t on t.psp_ident = p.ident'
      'where t.leg_codice = :leg_codice'
      ' '
      ' ')
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
    QBEDefinition.QBEFieldDefs = {
      0300000002000000050000004944454E5401000000000B000000444553435249
      5A494F4E450100000000}
    Left = 272
    Top = 430
    FastFields = (
      'IDENT,1,12'
      'DESCRIZIONE,1,300'
      'DATA_FINE,11,0'
      'DATA_INIZIO,11,0'
      'LAST_MOD,11,0'
      'USER_ID,3,0'
      'EXTRA_TARIFFARIO,3,0'
      'LEG_CODICE,1,10'
      'TAR_TICKET,6,0')
    FMultiTable = ()
    UpdateMethod = umManual
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
    object LkTariffarioDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine validit'#224
      FieldName = 'DATA_FINE'
      DisplayFormat = 'ddddd'
    end
    object LkTariffarioDATA_INIZIO: TDateTimeField
      DisplayLabel = 'Inizio validit'#224
      FieldName = 'DATA_INIZIO'
      DisplayFormat = 'ddddd'
    end
    object LkTariffarioLAST_MOD: TDateTimeField
      DisplayLabel = 'Ultima modifica'
      FieldName = 'LAST_MOD'
      DisplayFormat = 'ddddd hh:nn'
    end
    object LkTariffarioUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object LkTariffarioTAR_TICKET: TFloatField
      DisplayLabel = 'Ticket'
      FieldName = 'TAR_TICKET'
      DisplayFormat = '#,.00'
    end
    object LkTariffarioEXTRA_TARIFFARIO: TIntegerField
      FieldName = 'EXTRA_TARIFFARIO'
    end
    object LkTariffarioLEG_CODICE: TStringField
      FieldName = 'LEG_CODICE'
      Size = 10
    end
  end
  object TogliSelezione: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'update esamixdiagn r'
      'set prenota = :flag'
      'where r.servizi_fk=:servizi_fk'
      '')
    Params = <
      item
        Name = 'flag'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'servizi_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 600
    Top = 456
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object Prestazioni: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = PrestazioniBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    PrimeFields.Strings = (
      'PKCODICIRAD')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'c.codice,'
      'c.descrizione,'
      'r.pkcodxrad,'
      'c.pkcodicirad,'
      'c.ident_fk,'
      'c.data_inizio,'
      'c.data_fine,'
      'c.composto,'
      'r.durata,'
      'gr.gresami as gruppo,'
      'gr.descrizione as DescGruppo'
      'from codxrad r'
      'join codicirad c on c.pkcodicirad = r.codicirad_fk'
      'left join gresami gr on gr.pkgresami = r.gresami_fk'
      'where r.reparti_fk=:reparti_fk and'
      '     (c.data_fine is null or c.data_fine>SYSDATE)'
      ':nonass'
      ''
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
        Name = 'nonass'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = '#'
      end>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      030000000A00000009000000494E5445524E4F5F49010000000009000000494E
      5445524E4F5F4401000000000F000000504B5052455354535045434D554C5401
      00000000100000005052455354535045434D554C545F464B0100000000060000
      00434F444943450100000000080000004944454E545F464B01000000000B0000
      00444154415F494E495A494F010000000009000000444154415F46494E450100
      0000000C0000004E4F4D454E434C41544F524501000000000900000046524551
      55454E5A410100000000}
    Left = 138
    Top = 217
    FastFields = (
      'CODICE,1,12'
      'DESCRIZIONE,1,100'
      'PKCODXRAD,3,0'
      'PKCODICIRAD,3,0'
      'IDENT_FK,1,12'
      'DATA_INIZIO,11,0'
      'DATA_FINE,11,0'
      'COMPOSTO,3,0'
      'DURATA,3,0'
      'GRUPPO,1,10'
      'DESCGRUPPO,1,50')
    FMultiTable = ()
    UpdateMethod = umManual
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
    object PrestazioniPKCODXRAD: TIntegerField
      FieldName = 'PKCODXRAD'
    end
    object PrestazioniPKCODICIRAD: TIntegerField
      FieldName = 'PKCODICIRAD'
    end
    object PrestazioniIDENT_FK: TStringField
      FieldName = 'IDENT_FK'
      Size = 12
    end
    object PrestazioniDATA_INIZIO: TDateTimeField
      FieldName = 'DATA_INIZIO'
    end
    object PrestazioniDATA_FINE: TDateTimeField
      FieldName = 'DATA_FINE'
    end
    object PrestazioniCOMPOSTO: TIntegerField
      FieldName = 'COMPOSTO'
    end
    object PrestazioniDURATA: TIntegerField
      DisplayLabel = 'Durata'
      FieldName = 'DURATA'
    end
    object PrestazioniGRUPPO: TStringField
      DisplayLabel = 'Metodica'
      FieldName = 'GRUPPO'
      Size = 10
    end
    object PrestazioniDESCGRUPPO: TStringField
      FieldName = 'DESCGRUPPO'
      Size = 50
    end
  end
  object sRadRichieste: TDataSource
    DataSet = RadRichieste
    Left = 669
    Top = 540
  end
  object RadRichieste: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = RadRichiesteBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'r.pkreparti,'
      'r.descrizione as Radiologia'
      'from reparti r'
      'where (r.data_fine is null or r.data_fine>sysdate)'
      'and r.pkreparti<>:reparti_fk'
      'and r.tipo_reparto='#39'R'#39)
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
    Left = 576
    Top = 528
    FastFields = (
      'PKREPARTI,3,0'
      'RADIOLOGIA,1,60')
    FMultiTable = ()
    UpdateMethod = umManual
    object RadRichiesteRADIOLOGIA: TStringField
      DisplayLabel = 'Radiologie disponibili'
      FieldName = 'RADIOLOGIA'
      Size = 60
    end
    object RadRichiestePKREPARTI: TIntegerField
      FieldName = 'PKREPARTI'
    end
  end
  object qAssegnaRad: TAstaClientDataSet
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
      '   update esamixdiagn'
      '   set reparti_fk = :reparti_fk,'
      '       provenienza = :provenienza'
      '   where pkesamixdiagn = :pkesamixdiagn;'
      ''
      'end;'
      ''
      '')
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
        Name = 'provenienza'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'pkesamixdiagn'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 792
    Top = 412
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object CopiaEsamiDiagn: TAstaClientDataSet
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
      '  for my_rec in ('
      '        select m.codicirad_fk'
      '        from esamixdiagn m'
      '        where m.servizi_fk = :diagnfrom_fk and'
      '              not exists(select 1 from esamixdiagn r'
      
        '              where r.servizi_fk=:xdiagnostiche and r.codicirad_' +
        'fk=m.codicirad_fk))'
      '   LOOP'
      ''
      '       insert into esamixdiagn(servizi_fk,codicirad_fk)'
      '       values(:xdiagnostiche,my_rec.codicirad_fk);'
      ''
      '   END LOOP;'
      ''
      'end;'
      ''
      '')
    Params = <
      item
        Name = 'diagnfrom_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'xdiagnostiche'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 398
    Top = 552
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object dxBarPopupDiagnostiche: TdxBarPopupMenu
    BarManager = dxBarManagerRadDiagn
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        Visible = True
        ItemName = 'dxBarButton12'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = False
    Left = 646
    Top = 180
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = []
    Storage = rsStorage1
    Options = [poStoreDefValues]
    RootSection = 'FzRadCodDiagn.rsPropSaver1'
    Properties.Strings = (
      'dxTuttiEsami.Down'
      'dxNonAssegnati.Down')
    WhenLoad = wlManual
    WhenSave = wsManual
    Left = 422
    Top = 416
  end
  object Gruppi: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = GruppiBeforeQuery
    SequenceField.Field = 'PKGRESAMI'
    SequenceField.Sequence = 'GRESAMI_PKGRESAMI'
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'Read Only'
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
    Left = 122
    Top = 301
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
    object GruppiGRESAMI: TStringField
      DisplayLabel = 'Metodica'
      FieldName = 'GRESAMI'
      Required = True
      Size = 10
    end
    object GruppiDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 50
    end
    object GruppiPKGRESAMI: TIntegerField
      FieldName = 'PKGRESAMI'
    end
    object GruppiREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object GruppiPESO_MEDICO: TFloatField
      DisplayLabel = 'Peso medico'
      FieldName = 'PESO_MEDICO'
      DisplayFormat = '#.0'
    end
    object GruppiPESO_TECNICO: TFloatField
      DisplayLabel = 'Peso tecnico'
      FieldName = 'PESO_TECNICO'
    end
    object GruppiTIPO_MODALITA: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_MODALITA'
      Size = 5
    end
    object GruppiDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine attivit'#224
      FieldName = 'DATA_FINE'
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
    Left = 270
    Top = 496
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
    Left = 476
    Top = 564
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
  object DiagnxServ: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
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
    QBEMode = False
    Left = 724
    Top = 408
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
end
