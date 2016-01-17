inherited FTabGenerale: TFTabGenerale
  Width = 1500
  Height = 800
  Constraints.MinHeight = 800
  Constraints.MinWidth = 1500
  Font.Height = -22
  ParentShowHint = False
  ShowHint = True
  object cxPageControl: TcxPageControl [0]
    Left = 0
    Top = 57
    Width = 1500
    Height = 743
    Align = alClient
    TabOrder = 4
    Visible = False
    Properties.ActivePage = cxTabBranche
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 3
    OnPageChanging = cxPageControlPageChanging
    ClientRectBottom = 743
    ClientRectRight = 1500
    ClientRectTop = 38
    object cxASL: TcxTabSheet
      Caption = 'Tabella ASL'
      object cxGridASL: TcxGrid
        Left = 0
        Top = 0
        Width = 1284
        Height = 708
        Align = alClient
        PopupMenu = dxBarPopupMenu1
        TabOrder = 0
        object cxGridASLDBTableView: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = True
          Navigator.Visible = True
          DataController.DataModeController.DetailInSQLMode = True
          DataController.DataSource = sqASL
          DataController.KeyFieldNames = 'REG_CODICE;CODICE'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'REG_CODICE'
              Column = cxGridASLDBTableViewREG_CODICE
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = cxGridASLDBTableViewDESCRIZIONE
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderHeight = 80
          OptionsView.Indicator = True
          object cxGridASLDBTableViewREG_CODICE: TcxGridDBColumn
            DataBinding.FieldName = 'REG_CODICE'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'CODICE'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                FieldName = 'CODICE'
              end
              item
                FieldName = 'DESCRIZIONE'
              end>
            Properties.ListSource = sLkRegioni
            RepositoryItem = repRegione
            Width = 100
          end
          object cxGridASLDBTableViewCODICE: TcxGridDBColumn
            DataBinding.FieldName = 'CODICE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.MaskKind = emkRegExpr
            Properties.EditMask = '\d+'
            MinWidth = 92
            Width = 94
          end
          object cxGridASLDBTableViewDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            SortIndex = 0
            SortOrder = soAscending
            Width = 311
          end
          object cxGridASLDBTableViewDATA_INIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_INIZIO'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            Options.Filtering = False
            Width = 92
          end
          object cxGridASLDBTableViewDATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
            Width = 74
          end
          object cxGridASLDBTableViewINDIRIZZO: TcxGridDBColumn
            DataBinding.FieldName = 'INDIRIZZO'
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 179
          end
          object cxGridASLDBTableViewCOM_CODICE: TcxGridDBColumn
            DataBinding.FieldName = 'COM_CODICE'
            RepositoryItem = repComuni
            Width = 176
          end
          object cxGridASLDBTableViewCAP: TcxGridDBColumn
            DataBinding.FieldName = 'CAP'
            Width = 50
          end
        end
        object cxGridASLCOMDBView: TcxGridDBTableView
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
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataModeController.DetailInSQLMode = True
          DataController.DataModeController.OnDetailFirst = cxGridASLCOMDBViewDataControllerDataModeControllerDetailFirst
          DataController.DataModeController.OnDetailIsCurrentQuery = cxGridASLCOMDBViewDataControllerDataModeControllerDetailIsCurrentQuery
          DataController.DataSource = sqUSL_COM
          DataController.DetailKeyFieldNames = 'REG_CODICE;COD_ASL'
          DataController.KeyFieldNames = 'CODCOM'
          DataController.MasterKeyFieldNames = 'REG_CODICE;CODICE'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          OptionsView.Indicator = True
          object cxGridASLCOMDBViewREG_CODICE: TcxGridDBColumn
            DataBinding.FieldName = 'REG_CODICE'
            Visible = False
          end
          object cxGridASLCOMDBViewCOD_ASL: TcxGridDBColumn
            DataBinding.FieldName = 'COD_ASL'
            Visible = False
          end
          object cxGridASLCOMDBViewCODCOM: TcxGridDBColumn
            DataBinding.FieldName = 'CODCOM'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'CODICE'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                Width = 100
                FieldName = 'DESCRIZIONE'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = sLkComuni
          end
        end
        object cxGridASLLevel1: TcxGridLevel
          GridView = cxGridASLDBTableView
          Options.DetailTabsPosition = dtpTop
          object cxGridASLLevel2: TcxGridLevel
            Caption = 'Comuni'
            GridView = cxGridASLCOMDBView
          end
        end
      end
    end
    object cxMedici: TcxTabSheet
      Caption = 'Medici'
      object cxGMedici: TcxGrid
        Left = 0
        Top = 0
        Width = 1345
        Height = 698
        Align = alClient
        PopupMenu = dxBarPopupMenu1
        TabOrder = 0
        object cxGridMedici: TcxGridDBTableView
          OnDblClick = cxGridMediciDblClick
          Navigator.Buttons.OnButtonClick = cxGridMediciNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = True
          Navigator.Visible = True
          DataController.DataSource = sqMedici
          DataController.KeyFieldNames = 'CODICE'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'CODICE'
              Column = cxGridMediciCODICE
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = cxGridMediciNOMINATIVO
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 80
          OptionsView.Indicator = True
          object cxGridMediciCODICE: TcxGridDBColumn
            DataBinding.FieldName = 'CODICE'
            Options.Editing = False
            Options.Filtering = False
            Width = 138
          end
          object cxGridMediciNOMINATIVO: TcxGridDBColumn
            DataBinding.FieldName = 'NOMINATIVO'
            Options.Editing = False
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 477
          end
          object cxGridMediciDATA_INIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_INIZIO'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ImmediatePost = True
            Properties.SaveTime = False
            Properties.ShowTime = False
            Options.Editing = False
            Width = 203
          end
          object cxGridMediciDATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ImmediatePost = True
            Properties.SaveTime = False
            Properties.ShowTime = False
            Options.Editing = False
            Width = 196
          end
          object cxGridMediciTIPO_MEDICO: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_MEDICO'
            Options.Editing = False
          end
        end
        object cxGMediciLevel1: TcxGridLevel
          GridView = cxGridMedici
        end
      end
    end
    object cxEsenzioni: TcxTabSheet
      Caption = 'Esenzioni ticket'
      object GridEsenzioni: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        PopupMenu = dxBarPopupMenu1
        TabOrder = 0
        object cxGridEsenzioni: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = True
          Navigator.Visible = True
          DataController.DataSource = sqEsenzioni
          DataController.KeyFieldNames = 'IDENT'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'IDENT'
              Column = cxGridEsenzioniIDENT
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = cxGridEsenzioniIDENT
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderHeight = 80
          OptionsView.Indicator = True
          object cxGridEsenzioniIDENT: TcxGridDBColumn
            DataBinding.FieldName = 'IDENT'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 59
          end
          object cxGridEsenzioniDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Width = 559
          end
          object cxGridEsenzioniDATA_INIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_INIZIO'
            Width = 96
          end
          object cxGridEsenzioniDATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
            Width = 79
          end
          object cxGridEsenzioniTET_IDENT: TcxGridDBColumn
            DataBinding.FieldName = 'TET_IDENT'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.DropDownSizeable = True
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'IDENT'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                FieldName = 'DESCRIZIONE'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = sLkTipoEsenzione
            Width = 204
          end
        end
        object cxGridEsamiEsenti: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sqEsamiEsenzioni
          DataController.DetailKeyFieldNames = 'ESENZTICK_FK'
          DataController.KeyFieldNames = 'ESENZTICK_FK;PRESTSPEC_FK'
          DataController.MasterKeyFieldNames = 'IDENT'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridEsamiEsentiPRESTSPEC_FK: TcxGridDBColumn
            DataBinding.FieldName = 'PRESTSPEC_FK'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.DropDownSizeable = True
            Properties.KeyFieldNames = 'IDENT'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                FieldName = 'IDENT'
              end
              item
                Width = 200
                FieldName = 'DESCRIZIONE'
              end>
            Properties.ListSource = sqPrestSpec
            Properties.OnInitPopup = cxGridEsamiEsentiPRESTSPEC_FKPropertiesInitPopup
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxGridEsamiEsentiDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
          end
        end
        object GridEsenzioniLevel1: TcxGridLevel
          GridView = cxGridEsenzioni
          object GridEsenzioniLevel2: TcxGridLevel
            GridView = cxGridEsamiEsenti
          end
        end
      end
    end
    object cxOspedali: TcxTabSheet
      Caption = 'Provenienze'
      object GridOspedali: TcxGrid
        Left = 0
        Top = 0
        Width = 1500
        Height = 705
        Align = alClient
        PopupMenu = dxBarPopupMenu1
        TabOrder = 0
        object cxGridOspedali: TcxGridDBTableView
          OnDblClick = cxGridOspedaliDblClick
          Navigator.Buttons.OnButtonClick = cxGridOspedaliNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = True
          Navigator.Visible = True
          DataController.DataSource = sqOspedali
          DataController.KeyFieldNames = 'CODICE'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'COD_RIC'
              Column = cxGridOspedaliCOD_RIC
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsSelection.HideFocusRectOnExit = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderHeight = 80
          OptionsView.Indicator = True
          object cxGridOspedaliCOD_RIC: TcxGridDBColumn
            DataBinding.FieldName = 'COD_RIC'
            Options.Editing = False
            Options.Filtering = False
            Width = 103
          end
          object cxGridOspedaliCODICE: TcxGridDBColumn
            DataBinding.FieldName = 'CODICE'
            Options.Editing = False
            Options.Filtering = False
            Width = 62
          end
          object cxGridOspedaliCOD_STS11: TcxGridDBColumn
            DataBinding.FieldName = 'COD_STS11'
            Options.Editing = False
            Options.Filtering = False
            Width = 68
          end
          object cxGridOspedaliCOD_HSP11: TcxGridDBColumn
            DataBinding.FieldName = 'COD_HSP11'
            Options.Editing = False
            Options.Filtering = False
            Width = 69
          end
          object cxGridOspedaliDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Options.Editing = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 366
          end
          object cxGridOspedaliDATA_INIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_INIZIO'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Width = 113
          end
          object cxGridOspedaliDATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
            Options.Editing = False
            Width = 123
          end
          object cxGridOspedaliINDIRIZZO: TcxGridDBColumn
            DataBinding.FieldName = 'INDIRIZZO'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Width = 152
          end
          object cxGridOspedaliCOM_CODICE: TcxGridDBColumn
            DataBinding.FieldName = 'COM_CODICE'
            RepositoryItem = repComuni
            Visible = False
            Options.Editing = False
            Width = 207
          end
          object cxGridOspedaliCAP: TcxGridDBColumn
            DataBinding.FieldName = 'CAP'
            Visible = False
            Options.Editing = False
            Width = 61
          end
          object cxGridOspedaliDESCRUSL: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRUSL'
            Visible = False
            Options.Editing = False
            Width = 106
          end
          object cxGridOspedaliDESCTIPOFATTURA: TcxGridDBColumn
            DataBinding.FieldName = 'DESCTIPOFATTURA'
            Options.Editing = False
            Width = 140
          end
          object cxGridOspedaliTIPO_ATTIVITA_FK: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_ATTIVITA_FK'
            RepositoryItem = repAttivita
            Options.Editing = False
            Width = 115
          end
          object cxGridOspedaliPROVENIENZA: TcxGridDBColumn
            DataBinding.FieldName = 'PROVENIENZA'
            Visible = False
            Options.Editing = False
            Width = 64
          end
          object cxGridOspedaliTIPO_ACCESSO: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_ACCESSO'
            Options.Editing = False
            Width = 81
          end
          object cxGridOspedaliLEG_CODICE: TcxGridDBColumn
            DataBinding.FieldName = 'LEG_CODICE'
            Options.Editing = False
            Width = 57
          end
        end
        object GridOspedaliLevel1: TcxGridLevel
          GridView = cxGridOspedali
        end
      end
    end
    object cxComuni: TcxTabSheet
      Caption = 'Comuni'
      object GridComuni: TcxGrid
        Left = 0
        Top = 0
        Width = 1345
        Height = 698
        Align = alClient
        PopupMenu = dxBarPopupMenu1
        TabOrder = 0
        object cxGridComuni: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = True
          Navigator.Visible = True
          DataController.DataModeController.DetailInSQLMode = True
          DataController.DataSource = sLkComuni
          DataController.KeyFieldNames = 'CODICE'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'CODICE'
              Column = cxGridComuniCODICE
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = cxGridComuniDESCRIZIONE
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderHeight = 80
          OptionsView.Indicator = True
          object cxGridComuniCODICE: TcxGridDBColumn
            DataBinding.FieldName = 'CODICE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.MaskKind = emkRegExpr
            Properties.EditMask = '\d\d\d\d\d\d'
            Options.Filtering = False
            Width = 50
          end
          object cxGridComuniDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.CharCase = ecUpperCase
            SortIndex = 0
            SortOrder = soAscending
            Width = 265
          end
          object cxGridComuniCAP: TcxGridDBColumn
            DataBinding.FieldName = 'CAP'
            RepositoryItem = FDMCommon.edrepCAP
            Width = 54
          end
          object cxGridComuniSIGLA: TcxGridDBColumn
            DataBinding.FieldName = 'SIGLA'
            RepositoryItem = repProvince
            Width = 138
          end
          object cxGridComuniCATASTO: TcxGridDBColumn
            DataBinding.FieldName = 'CATASTO'
            Options.Filtering = False
            Width = 100
          end
          object cxGridComuniDATA_INIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_INIZIO'
            Width = 148
          end
          object cxGridComuniDATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ImmediatePost = True
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 146
          end
          object cxGridComuniNAZ_CODICE: TcxGridDBColumn
            DataBinding.FieldName = 'NAZ_CODICE'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.DropDownSizeable = True
            Properties.ImmediateDropDownWhenKeyPressed = False
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'CODICE'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                FieldName = 'CODICE'
              end
              item
                FieldName = 'DESCRIZIONE'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListSource = sqNazioni
            Width = 134
          end
          object cxGridComuniCOM_TYPE: TcxGridDBColumn
            DataBinding.FieldName = 'COM_TYPE'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'COM_TYPE'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                Width = 150
                FieldName = 'DESCRIZIONE'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = sqComType
          end
        end
        object CXGridComuniASL: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
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
          OnInitEdit = CXGridComuniASLInitEdit
          DataController.DataModeController.DetailInSQLMode = True
          DataController.DataModeController.OnDetailFirst = CXGridComuniASLDataControllerDataModeControllerDetailFirst
          DataController.DataModeController.OnDetailIsCurrentQuery = CXGridComuniASLDataControllerDataModeControllerDetailIsCurrentQuery
          DataController.DataSource = sqCOM_USL
          DataController.DetailKeyFieldNames = 'CODCOM;REG_CODICE'
          DataController.KeyFieldNames = 'COD_ASL'
          DataController.MasterKeyFieldNames = 'CODICE;REG_CODICE'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object CXGridComuniASLCODCOM: TcxGridDBColumn
            DataBinding.FieldName = 'CODCOM'
            Visible = False
            VisibleForCustomization = False
          end
          object CXGridComuniASLREG_CODICE: TcxGridDBColumn
            DataBinding.FieldName = 'REG_CODICE'
            Visible = False
          end
          object CXGridComuniASLCOD_ASL: TcxGridDBColumn
            DataBinding.FieldName = 'COD_ASL'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.DropDownSizeable = True
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'CODICE'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                FieldName = 'CODICE'
              end
              item
                Width = 200
                FieldName = 'DESCRIZIONE'
              end
              item
                Width = 80
                FieldName = 'DATA_FINE'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListSource = sqLkASL
          end
          object CXGridComuniASLDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Options.Editing = False
          end
        end
        object GridComuniLevel1: TcxGridLevel
          GridView = cxGridComuni
          object GridComuniLevel2: TcxGridLevel
            Caption = 'ASL'
            GridView = CXGridComuniASL
          end
        end
      end
    end
    object cxRegioni: TcxTabSheet
      Caption = 'Regioni e Province'
      object GridRegioniProv: TcxGrid
        Left = 0
        Top = 0
        Width = 1396
        Height = 708
        Align = alClient
        PopupMenu = dxBarPopupMenu1
        TabOrder = 0
        object cxGridRegioni: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = True
          Navigator.Visible = True
          DataController.DataSource = sLkRegioni
          DataController.KeyFieldNames = 'CODICE'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'CODICE'
              Column = cxGridRegioniCODICE
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = cxGridRegioniCODICE
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderHeight = 80
          OptionsView.Indicator = True
          object cxGridRegioniCODICE: TcxGridDBColumn
            DataBinding.FieldName = 'CODICE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.CharCase = ecUpperCase
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 62
          end
          object cxGridRegioniDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Width = 726
          end
          object cxGridRegioniDATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ImmediatePost = True
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 221
          end
        end
        object cxGridProvince: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sLkProvincie
          DataController.DetailKeyFieldNames = 'REG_CODICE'
          DataController.KeyFieldNames = 'SIGLA'
          DataController.MasterKeyFieldNames = 'CODICE'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridProvinceSIGLA: TcxGridDBColumn
            DataBinding.FieldName = 'SIGLA'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.CharCase = ecUpperCase
            Properties.MaskKind = emkRegExpr
            Properties.EditMask = '[A-Z][A-Z]'
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxGridProvinceDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Options.Filtering = False
          end
          object cxGridProvinceDATA_INIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_INIZIO'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
          end
          object cxGridProvinceDATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ImmediatePost = True
            Properties.SaveTime = False
            Properties.ShowTime = False
          end
          object cxGridProvinceCOD_PROVINCIA: TcxGridDBColumn
            DataBinding.FieldName = 'COD_PROVINCIA'
            Options.Filtering = False
          end
        end
        object RegioniLevel1: TcxGridLevel
          GridView = cxGridRegioni
          object ProvincieLevel1: TcxGridLevel
            GridView = cxGridProvince
          end
        end
      end
    end
    object cxNazioni: TcxTabSheet
      Caption = 'Nazioni'
      object GridNazioni: TcxGrid
        Left = 0
        Top = 0
        Width = 1345
        Height = 698
        Align = alClient
        PopupMenu = dxBarPopupMenu1
        TabOrder = 0
        object cxGridNazioni: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = True
          Navigator.Visible = True
          DataController.DataSource = sqNazioni
          DataController.KeyFieldNames = 'CODICE'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'CODICE'
              Column = cxGridNazioniCODICE
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = cxGridNazioniDESCRIZIONE
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderHeight = 80
          object cxGridNazioniCODICE: TcxGridDBColumn
            DataBinding.FieldName = 'CODICE'
            Options.Filtering = False
            Width = 66
          end
          object cxGridNazioniDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            SortIndex = 0
            SortOrder = soAscending
            Width = 319
          end
          object cxGridNazioniSIGLA: TcxGridDBColumn
            DataBinding.FieldName = 'SIGLA'
            Options.Filtering = False
            Width = 39
          end
          object cxGridNazioniTNZ_IDENT: TcxGridDBColumn
            DataBinding.FieldName = 'TNZ_IDENT'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'TNZ_IDENT'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                Width = 150
                FieldName = 'DESCRIZIONE'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = sqTipoNaz
            Width = 131
          end
          object cxGridNazioniDATA_INIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_INIZIO'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ImmediatePost = True
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 117
          end
          object cxGridNazioniDATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ImmediatePost = True
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 309
          end
          object cxGridNazioniCATASTO: TcxGridDBColumn
            DataBinding.FieldName = 'CATASTO'
            Options.Filtering = False
            Width = 270
          end
          object cxGridNazioniMASK_CF: TcxGridDBColumn
            DataBinding.FieldName = 'MASK_CF'
            Options.Filtering = False
            Width = 150
          end
        end
        object GridNazioniLevel1: TcxGridLevel
          GridView = cxGridNazioni
        end
      end
    end
    object cxMotivi: TcxTabSheet
      Caption = 'Motivo cancellazione'
      ImageIndex = 7
      object cxGridMotivi: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        object cxGridMotiviDB: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sqMotivi
          DataController.KeyFieldNames = 'STATOVISITA'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'STATOVISITA'
              Column = cxGridMotiviSTATOVISITA
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderHeight = 80
          OptionsView.Indicator = True
          object cxGridMotiviSTATOVISITA: TcxGridDBColumn
            DataBinding.FieldName = 'STATOVISITA'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.ImmediatePost = True
            Properties.MaxValue = 2998.000000000000000000
            Properties.MinValue = 2000.000000000000000000
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 93
          end
          object cxGridMotiviDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Options.Filtering = False
            Width = 921
          end
          object cxGridMotiviFLAG_TIPO: TcxGridDBColumn
            DataBinding.FieldName = 'FLAG_TIPO'
            RepositoryItem = FDMCommon.edrepSINO
          end
        end
        object cxGridMotiviLevel1: TcxGridLevel
          GridView = cxGridMotiviDB
        end
      end
    end
    object cxTipoAttivita: TcxTabSheet
      Caption = 'Tipo attivita'
      ImageIndex = 8
      object cxGridAttivita: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        object cxDBGridAttivita: TcxGridDBTableView
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
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sqTipoAttivita
          DataController.KeyFieldNames = 'TIPO_ATTIVITA'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'TIPO_ATTIVITA'
              Column = cxDBGridAttivitaTIPO_ATTIVITA
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 80
          OptionsView.Indicator = True
          object cxDBGridAttivitaTIPO_ATTIVITA: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_ATTIVITA'
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 77
          end
          object cxDBGridAttivitaDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Options.Filtering = False
            Width = 454
          end
          object cxDBGridAttivitaATTIVO: TcxGridDBColumn
            DataBinding.FieldName = 'ATTIVO'
            RepositoryItem = FDMCommon.edrepSINO
            Options.Filtering = False
            Width = 74
          end
          object cxDBGridAttivitaPROVENIENZA: TcxGridDBColumn
            DataBinding.FieldName = 'PROVENIENZA'
            Width = 102
          end
          object cxDBGridAttivitaIMPEGNATIVA: TcxGridDBColumn
            DataBinding.FieldName = 'IMPEGNATIVA'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'IMPEGNATIVA'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                Width = 150
                FieldName = 'DESCRIZIONE'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = sqTipoImpegn
            Options.Filtering = False
            Width = 91
          end
          object cxDBGridAttivitaMASK: TcxGridDBColumn
            DataBinding.FieldName = 'MASK'
            Options.Filtering = False
            Width = 137
          end
          object cxDBGridAttivitaTIPO_ACCESSO: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_ACCESSO'
            Width = 93
          end
          object cxDBGridAttivitaCOD_IHE: TcxGridDBColumn
            DataBinding.FieldName = 'COD_IHE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.CharCase = ecUpperCase
            Options.Filtering = False
            Width = 77
          end
          object cxDBGridAttivitaCOD_ESTERNO: TcxGridDBColumn
            DataBinding.FieldName = 'COD_ESTERNO'
            Width = 93
          end
          object cxDBGridAttivitaCTRL_RICOVERO: TcxGridDBColumn
            DataBinding.FieldName = 'CTRL_RICOVERO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'CTRL_RICOVERO'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                Width = 150
                FieldName = 'DESCRIZIONE'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = sqTipoRicov
            Options.Filtering = False
            Width = 77
          end
          object cxDBGridAttivitaVIEW_REFERTI: TcxGridDBColumn
            DataBinding.FieldName = 'VIEW_REFERTI'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'VIEW_REFERTI'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                Width = 150
                FieldName = 'DESCRIZIONE'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = sqRefAtt
            Options.Filtering = False
            Width = 70
          end
        end
        object cxGridAttivitaLevel1: TcxGridLevel
          GridView = cxDBGridAttivita
        end
      end
    end
    object cxTipoTrasporto: TcxTabSheet
      Caption = 'Tipo Trasporto'
      ImageIndex = 9
      object cxGridTipoTrasporto: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        object cxDBGridTipoTrasporto: TcxGridDBTableView
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
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sTipoTrasporto
          DataController.KeyFieldNames = 'PKTRASPORTO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'PKTRASPORTO'
              Column = cxDBGridTipoTrasportoPKTRASPORTO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 80
          OptionsView.Indicator = True
          object cxDBGridTipoTrasportoPKTRASPORTO: TcxGridDBColumn
            DataBinding.FieldName = 'PKTRASPORTO'
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 87
          end
          object cxDBGridTipoTrasportoDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Options.Filtering = False
            Width = 712
          end
          object cxDBGridTipoTrasportoIMAGEINDEX: TcxGridDBColumn
            DataBinding.FieldName = 'IMAGEINDEX'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = FDMCommon.imIcone
            Properties.ImmediatePost = True
            Properties.Items = <
              item
              end>
            Options.Filtering = False
            Width = 100
          end
          object cxDBGridTipoTrasportoCODIHE: TcxGridDBColumn
            DataBinding.FieldName = 'CODIHE'
            Options.Filtering = False
            Width = 179
          end
          object cxDBGridTipoTrasportoDATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
          end
        end
        object cxGridTipoTrasportoLevel1: TcxGridLevel
          GridView = cxDBGridTipoTrasporto
        end
      end
    end
    object cxTipoUrgenza: TcxTabSheet
      Caption = 'Tipo Urgenza'
      ImageIndex = 10
      object cxGridTipoUrgenza: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 225
        Align = alTop
        TabOrder = 0
        object cxDBGridTipoUrgenza: TcxGridDBTableView
          DragMode = dmAutomatic
          OnDragDrop = cxDBGridTipoUrgenzaDragDrop
          OnDragOver = cxDBGridTipoUrgenzaDragOver
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
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sTipoUrgenza
          DataController.KeyFieldNames = 'PKURGENZA'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 80
          OptionsView.Indicator = True
          object cxDBGridTipoUrgenzaPKURGENZA: TcxGridDBColumn
            DataBinding.FieldName = 'PKURGENZA'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.MaxValue = 99.000000000000000000
            Properties.MinValue = 1.000000000000000000
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 82
          end
          object cxDBGridTipoUrgenzaDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Options.Filtering = False
            Width = 708
          end
          object cxDBGridTipoUrgenzaIMAGEINDEX: TcxGridDBColumn
            DataBinding.FieldName = 'IMAGEINDEX'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Images = FDMCommon.imIcone
            Properties.ImmediatePost = True
            Properties.Items = <>
            Options.Filtering = False
            Width = 245
          end
          object cxDBGridTipoUrgenzaCODESTERNO: TcxGridDBColumn
            DataBinding.FieldName = 'CODESTERNO'
            Options.Filtering = False
          end
          object cxDBGridTipoUrgenzaDATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
          end
        end
        object cxGridTipoUrgenzaLevel1: TcxGridLevel
          GridView = cxDBGridTipoUrgenza
        end
      end
      object Splitter1: TcxSplitter
        Left = 0
        Top = 225
        Width = 4
        Height = 4
        Cursor = crHSplit
        HotZoneClassName = 'TcxXPTaskBarStyle'
        AlignSplitter = salTop
        MinSize = 100
        Control = cxGridTipoUrgenza
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 229
        Width = 385
        Height = 569
        Align = alLeft
        TabOrder = 2
        object cxGridReparti: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataModeController.DetailInSQLMode = True
          DataController.DataSource = sReparti
          DataController.KeyFieldNames = 'PKREPARTI'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          object cxGridRepartiPKREPARTI: TcxGridDBColumn
            DataBinding.FieldName = 'PKREPARTI'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object cxGridRepartiDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 390
          end
          object cxGridRepartiTIPO_REPARTO: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_REPARTO'
            Width = 70
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGridReparti
        end
      end
      object cxGrid2: TcxGrid
        Left = 385
        Top = 229
        Width = 993
        Height = 569
        Align = alClient
        TabOrder = 3
        object cxGridDBColorixRep: TcxGridDBTableView
          DragMode = dmAutomatic
          OnDragDrop = cxGridDBColorixRepDragDrop
          OnDragOver = cxGridDBColorixRepDragOver
          OnStartDrag = cxGridDBColorixRepStartDrag
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
          DataController.DataSource = sColorixRep
          DataController.KeyFieldNames = 'URGENZA_FK'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridDBColorixRepREPARTI_FK: TcxGridDBColumn
            DataBinding.FieldName = 'REPARTI_FK'
            Visible = False
          end
          object cxGridDBColorixRepPOSIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'POSIZIONE'
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxGridDBColorixRepURGENZA_FK: TcxGridDBColumn
            DataBinding.FieldName = 'URGENZA_FK'
            Visible = False
            Options.Editing = False
            Width = 91
          end
          object cxGridDBColorixRepDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Width = 349
          end
          object cxGridDBColorixRepIMAGEINDEX: TcxGridDBColumn
            DataBinding.FieldName = 'IMAGEINDEX'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = FDMCommon.imIcone
            Properties.Items = <>
            Width = 121
          end
        end
        object cxGridColorixRep: TcxGridLevel
          GridView = cxGridDBColorixRep
        end
      end
    end
    object cxSconosciuti: TcxTabSheet
      Caption = 'Sconosciuti'
      ImageIndex = 11
      object cxGridSconosciuti: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        object cxGridSconosciutiDBTableView1: TcxGridDBTableView
          Navigator.Buttons.OnButtonClick = cxGridSconosciutiDBTableView1NavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sSconosciuti
          DataController.KeyFieldNames = 'ASSISTIBILI_FK'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'PKASSISTIBILI'
              Column = cxGridSconosciutiDBTableView1PKASSISTIBILI
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridSconosciutiDBTableView1PKASSISTIBILI: TcxGridDBColumn
            DataBinding.FieldName = 'ASSISTIBILI_FK'
            Options.Editing = False
            Width = 108
          end
          object cxGridSconosciutiDBTableView1COGNOME: TcxGridDBColumn
            DataBinding.FieldName = 'COGNOME'
            Options.Editing = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 375
          end
          object cxGridSconosciutiDBTableView1NOME: TcxGridDBColumn
            DataBinding.FieldName = 'NOME'
            Options.Editing = False
            Width = 375
          end
          object cxGridSconosciutiDBTableView1DATA_NASCITA: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_NASCITA'
            Options.Editing = False
            Width = 152
          end
          object cxGridSconosciutiDBTableView1SES_CODICE: TcxGridDBColumn
            DataBinding.FieldName = 'SES_CODICE'
            Options.Editing = False
            Width = 68
          end
        end
        object cxGridSconosciutiLevel1: TcxGridLevel
          GridView = cxGridSconosciutiDBTableView1
        end
      end
    end
    object cxFeste: TcxTabSheet
      Caption = 'Festivita'
      ImageIndex = 12
      object cxGridFeste: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        RootLevelOptions.DetailTabsPosition = dtpTop
        object cxGridFesteDBTableView1: TcxGridDBTableView
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
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sFeste
          DataController.KeyFieldNames = 'DATA_FESTA'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'DATA_FESTA'
              Column = cxGridFesteDBTableView1DATA_FESTA
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridFesteDBTableView1DATA_FESTA: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FESTA'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DateButtons = [btnToday]
            Properties.ImmediatePost = True
            Properties.SaveTime = False
            Properties.ShowTime = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 123
          end
          object cxGridFesteDBTableView1DESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Width = 955
          end
        end
        object cxGridFesteDBTableView2: TcxGridDBTableView
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
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sqFesteReparto
          DataController.KeyFieldNames = 'DATA_FESTA'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridFesteDBTableView2DATA_FESTA: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FESTA'
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxGridFesteDBTableView2DESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
          end
          object cxGridFesteDBTableView2REPARTI_FK: TcxGridDBColumn
            DataBinding.FieldName = 'REPARTI_FK'
            Visible = False
            VisibleForCustomization = False
          end
        end
        object cxGridFesteLevel1: TcxGridLevel
          Caption = 'Feste generali'
          GridView = cxGridFesteDBTableView1
        end
        object cxGridFesteLevel2: TcxGridLevel
          Caption = 'Feste Unita Organizzativa'
          GridView = cxGridFesteDBTableView2
        end
      end
    end
    object cxTipoMedico: TcxTabSheet
      Caption = 'Tipo Medico'
      ImageIndex = 13
      object cxGridTipoMedico: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        object cxGridTipoMedicoDBTableView1: TcxGridDBTableView
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
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sTipoMedico
          DataController.KeyFieldNames = 'TIPO_MEDICO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'TIPO_MEDICO'
              Column = cxGridTipoMedicoDBTableView1TIPO_MEDICO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridTipoMedicoDBTableView1TIPO_MEDICO: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_MEDICO'
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxGridTipoMedicoDBTableView1DESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
          end
        end
        object cxGridTipoMedicoLevel1: TcxGridLevel
          GridView = cxGridTipoMedicoDBTableView1
        end
      end
    end
    object cxTipoAccesso: TcxTabSheet
      Caption = 'Tipo Accesso'
      ImageIndex = 14
      object cxGridTipoAccesso: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        object cxGridTipoAccessoDBTableView1: TcxGridDBTableView
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
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sTipoAccesso
          DataController.KeyFieldNames = 'TIPO_ACCESSO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'TIPO_ACCESSO'
              Column = cxGridTipoAccessoDBTableView1TIPO_ACCESSO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridTipoAccessoDBTableView1TIPO_ACCESSO: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_ACCESSO'
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 87
          end
          object cxGridTipoAccessoDBTableView1DESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Options.Filtering = False
            Width = 624
          end
          object cxGridTipoAccessoDBTableView1DATA_INIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_INIZIO'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 138
          end
          object cxGridTipoAccessoDBTableView1DATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 123
          end
          object cxGridTipoAccessoDBTableView1URGENZA_FK: TcxGridDBColumn
            DataBinding.FieldName = 'URGENZA_FK'
            RepositoryItem = FDMCommon.edrepURGENZA
          end
        end
        object cxGridTipoAccessoLevel1: TcxGridLevel
          GridView = cxGridTipoAccessoDBTableView1
        end
      end
    end
    object cxTipoEsenzione: TcxTabSheet
      Caption = 'cxTipoEsenzione'
      ImageIndex = 15
      object cxGridTipoEsenzione: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        object cxGridTipoEsenzioneDBTableView1: TcxGridDBTableView
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
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sLkTipoEsenzione
          DataController.KeyFieldNames = 'IDENT'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'IDENT'
              Column = cxGridTipoEsenzioneDBTableView1IDENT
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridTipoEsenzioneDBTableView1IDENT: TcxGridDBColumn
            DataBinding.FieldName = 'IDENT'
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxGridTipoEsenzioneDBTableView1DESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
          end
          object cxGridTipoEsenzioneDBTableView1ESENTE: TcxGridDBColumn
            DataBinding.FieldName = 'ESENTE'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'ESENTE'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                Width = 150
                FieldName = 'DESCRIZIONE'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = sqTbdEsenzione
          end
          object cxGridTipoEsenzioneDBTableView1COD_ESTERNO: TcxGridDBColumn
            DataBinding.FieldName = 'COD_ESTERNO'
          end
          object cxGridTipoEsenzioneDBTableView1CE_CODICE: TcxGridDBColumn
            DataBinding.FieldName = 'CE_CODICE'
            RepositoryItem = FDMCommon.edrepSINO
          end
        end
        object cxGridTipoEsenzioneLevel1: TcxGridLevel
          GridView = cxGridTipoEsenzioneDBTableView1
        end
      end
    end
    object cxTabBranche: TcxTabSheet
      Caption = 'cxTabBranche'
      ImageIndex = 16
      object cxGridBranche: TcxGrid
        Left = 0
        Top = 0
        Width = 1500
        Height = 705
        Align = alClient
        TabOrder = 0
        object cxGridBrancheDBTableView1: TcxGridDBTableView
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
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sqBranche
          DataController.KeyFieldNames = 'PKBRANCHE'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          object cxGridBrancheDBTableView1PKBRANCHE: TcxGridDBColumn
            DataBinding.FieldName = 'PKBRANCHE'
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 61
          end
          object cxGridBrancheDBTableView1DESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Options.Filtering = False
            Width = 398
          end
          object cxGridBrancheDBTableView1DEVICE: TcxGridDBColumn
            DataBinding.FieldName = 'DEVICE'
            RepositoryItem = FDMCommon.edrepImageDEVICE
            Width = 193
          end
          object cxGridBrancheDBTableView1DATA_INIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_INIZIO'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 120
          end
          object cxGridBrancheDBTableView1DATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 117
          end
          object cxGridBrancheDBTableView1NOTA: TcxGridDBColumn
            DataBinding.FieldName = 'NOTA'
            Options.Filtering = False
            Width = 597
          end
        end
        object cxGridBrancheLevel1: TcxGridLevel
          GridView = cxGridBrancheDBTableView1
        end
      end
    end
    object cxTabACR: TcxTabSheet
      Caption = 'cxTabACR'
      ImageIndex = 17
      object cxGridACR: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        object cxGridACRAnatomical: TcxGridDBTableView
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
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sqAnatomical
          DataController.KeyFieldNames = 'KEY'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridACRAnatomicalKEY: TcxGridDBColumn
            DataBinding.FieldName = 'KEY'
            SortIndex = 0
            SortOrder = soAscending
            Width = 53
          end
          object cxGridACRAnatomicalPARENT: TcxGridDBColumn
            DataBinding.FieldName = 'PARENT'
            Width = 78
          end
          object cxGridACRAnatomicalDESCRIPTION: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIPTION'
            Width = 1045
          end
          object cxGridACRAnatomicalAID: TcxGridDBColumn
            DataBinding.FieldName = 'AID'
            Width = 49
          end
        end
        object cxGridACRPatological: TcxGridDBTableView
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
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sqpatological
          DataController.DetailKeyFieldNames = 'AID'
          DataController.KeyFieldNames = 'KEY'
          DataController.MasterKeyFieldNames = 'AID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridACRPatologicalKEY: TcxGridDBColumn
            DataBinding.FieldName = 'KEY'
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxGridACRPatologicalPARENT: TcxGridDBColumn
            DataBinding.FieldName = 'PARENT'
          end
          object cxGridACRPatologicalDESCRIPTION: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIPTION'
          end
          object cxGridACRPatologicalAID: TcxGridDBColumn
            DataBinding.FieldName = 'AID'
            Visible = False
          end
        end
        object cxGridACRLevel1: TcxGridLevel
          Caption = 'Anatomical'
          GridView = cxGridACRAnatomical
          object cxGridACRLevel2: TcxGridLevel
            Caption = 'Pathological'
            GridView = cxGridACRPatological
          end
        end
      end
    end
    object cxTabScreening: TcxTabSheet
      Caption = 'cxTabScreening'
      ImageIndex = 18
      object cxGridScreening: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        object cxGridTipoLivello: TcxGridDBTableView
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
          DataController.DataSource = sscrTipoLivello
          DataController.KeyFieldNames = 'TIPO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridTipoLivelloTIPO: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO'
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxGridTipoLivelloDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
          end
          object cxGridTipoLivelloLIVELLO: TcxGridDBColumn
            DataBinding.FieldName = 'LIVELLO'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ImmediatePost = True
            Properties.Items = <
              item
                Description = '1^'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = '2^'
                Value = 2
              end>
          end
          object cxGridTipoLivelloINVIA_REFERTO: TcxGridDBColumn
            DataBinding.FieldName = 'INVIA_REFERTO'
            RepositoryItem = FDMCommon.edrepSINO
          end
        end
        object cxGridEsitoScreening: TcxGridDBTableView
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
          DataController.DataSource = sscrTabEsitoScreening
          DataController.DetailKeyFieldNames = 'TIPOLIVELLO_FK'
          DataController.KeyFieldNames = 'PKESITISCR'
          DataController.MasterKeyFieldNames = 'TIPO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridEsitoScreeningCODICE_ESTERNO: TcxGridDBColumn
            DataBinding.FieldName = 'CODICE_ESTERNO'
            SortIndex = 0
            SortOrder = soAscending
            Width = 88
          end
          object cxGridEsitoScreeningDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Width = 704
          end
          object cxGridEsitoScreeningPKESITISCR: TcxGridDBColumn
            DataBinding.FieldName = 'PKESITISCR'
            Visible = False
            Width = 74
          end
          object cxGridEsitoScreeningTIPOLIVELLO_FK: TcxGridDBColumn
            DataBinding.FieldName = 'TIPOLIVELLO_FK'
            Visible = False
            Width = 39
          end
          object cxGridEsitoScreeningDATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ClearKey = 46
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 130
          end
          object cxGridEsitoScreeningSHORTCUT: TcxGridDBColumn
            DataBinding.FieldName = 'SHORTCUT'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGridEsitoScreeningSHORTCUTPropertiesButtonClick
          end
          object cxGridEsitoScreeningREVISORE: TcxGridDBColumn
            DataBinding.FieldName = 'REVISORE'
            RepositoryItem = FDMCommon.edrepSINO
            Options.Filtering = False
          end
        end
        object cxGridEsamixlivello: TcxGridDBTableView
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
          DataController.DataSource = sscrEsamixlivello
          DataController.DetailKeyFieldNames = 'TIPOLIVELLO_FK'
          DataController.KeyFieldNames = 'CODICIRAD_FK'
          DataController.MasterKeyFieldNames = 'TIPO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridEsamixlivelloCODICIRAD_FK: TcxGridDBColumn
            DataBinding.FieldName = 'CODICIRAD_FK'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.DropDownSizeable = True
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'PKCODICIRAD'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                Width = 45
                FieldName = 'CODICE'
              end
              item
                Width = 150
                FieldName = 'DESCRIZIONE'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListSource = sCodiciRad
            Properties.OnInitPopup = cxGridEsamixlivelloCODICIRAD_FKPropertiesInitPopup
          end
          object cxGridEsamixlivelloTIPOLIVELLO_FK: TcxGridDBColumn
            DataBinding.FieldName = 'TIPOLIVELLO_FK'
            Visible = False
          end
          object cxGridEsamixlivelloCODICE: TcxGridDBColumn
            DataBinding.FieldName = 'CODICE'
            Visible = False
          end
          object cxGridEsamixlivelloDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Options.Editing = False
          end
        end
        object cxGridScreeningLevel1: TcxGridLevel
          GridView = cxGridTipoLivello
          Options.DetailTabsPosition = dtpTop
          object cxGridScreeningLevel2: TcxGridLevel
            Caption = 'Esiti'
            GridView = cxGridEsitoScreening
          end
          object cxGridScreeningLevel3: TcxGridLevel
            Caption = 'Esami'
            GridView = cxGridEsamixlivello
          end
        end
      end
    end
    object cxTabTipoRicetta: TcxTabSheet
      Caption = 'cxTabTipoRicetta'
      ImageIndex = 19
      object cxGridTipoRicetta: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        object cxGridTipoRicettaDBTableView1: TcxGridDBTableView
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
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sTipoRicetta
          DataController.KeyFieldNames = 'TIPO_RICETTA'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridTipoRicettaDBTableView1TIPO_RICETTA: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_RICETTA'
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 128
          end
          object cxGridTipoRicettaDBTableView1DESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Options.Filtering = False
            Width = 960
          end
          object cxGridTipoRicettaDBTableView1DATA_INIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_INIZIO'
          end
          object cxGridTipoRicettaDBTableView1DATA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_FINE'
          end
          object cxGridTipoRicettaDBTableView1TIPO_COM_RES: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_COM_RES'
            Visible = False
            Width = 114
          end
          object cxGridTipoRicettaDBTableView1FLAG_STP: TcxGridDBColumn
            DataBinding.FieldName = 'FLAG_STP'
            Visible = False
            Width = 114
          end
          object cxGridTipoRicettaDBTableView1TIPO_ATTIVITA_FK: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_ATTIVITA_FK'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.ClearKey = 46
            Properties.DropDownAutoSize = True
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'TIPO_ATTIVITA'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                FieldName = 'TIPO_ATTIVITA'
              end
              item
                Width = 250
                FieldName = 'DESCRIZIONE'
              end>
            Properties.ListSource = sqTipoAttivita
            Width = 154
          end
        end
        object cxGridTipoRicettaLevel1: TcxGridLevel
          GridView = cxGridTipoRicettaDBTableView1
        end
      end
    end
    object cxStradario: TcxTabSheet
      Caption = 'cxStradario'
      ImageIndex = 20
      object cxGridStradario: TcxGrid
        Left = 0
        Top = 0
        Width = 1345
        Height = 698
        Align = alClient
        TabOrder = 0
        object cxGridStradarioDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = True
          Navigator.Visible = True
          DataController.DataModeController.DetailInSQLMode = True
          DataController.DataSource = sqComStradario
          DataController.KeyFieldNames = 'COD_COM'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridStradarioDBTableView1COD_COM: TcxGridDBColumn
            DataBinding.FieldName = 'COD_COM'
            Visible = False
          end
          object cxGridStradarioDBTableView1DESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            SortIndex = 0
            SortOrder = soAscending
          end
        end
        object cxGridStradarioDBTableView2: TcxGridDBTableView
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
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = True
          Navigator.Visible = True
          DataController.DataModeController.DetailInSQLMode = True
          DataController.DataModeController.OnDetailFirst = cxGridStradarioDBTableView2DataControllerDataModeControllerDetailFirst
          DataController.DataModeController.OnDetailIsCurrentQuery = cxGridStradarioDBTableView2DataControllerDataModeControllerDetailIsCurrentQuery
          DataController.DataSource = sqStradario
          DataController.DetailKeyFieldNames = 'COD_COM'
          DataController.KeyFieldNames = 'CODICE'
          DataController.MasterKeyFieldNames = 'COD_COM'
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
          object cxGridStradarioDBTableView2ROWNUM: TcxGridDBColumn
            DataBinding.FieldName = 'ROWNUM'
            Visible = False
          end
          object cxGridStradarioDBTableView2COD_COM: TcxGridDBColumn
            DataBinding.FieldName = 'COD_COM'
            Visible = False
          end
          object cxGridStradarioDBTableView2INDIRIZZO: TcxGridDBColumn
            DataBinding.FieldName = 'INDIRIZZO'
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxGridStradarioDBTableView2INTERVALLI: TcxGridDBColumn
            DataBinding.FieldName = 'INTERVALLI'
          end
          object cxGridStradarioDBTableView2CAP: TcxGridDBColumn
            DataBinding.FieldName = 'CAP'
          end
          object cxGridStradarioDBTableView2NOTE: TcxGridDBColumn
            DataBinding.FieldName = 'NOTE'
          end
          object cxGridStradarioDBTableView2CIRCOSCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'CIRCOSCRIZIONE'
          end
          object cxGridStradarioDBTableView2COD_REG: TcxGridDBColumn
            DataBinding.FieldName = 'COD_REG'
          end
          object cxGridStradarioDBTableView2COD_ASL: TcxGridDBColumn
            DataBinding.FieldName = 'COD_ASL'
          end
        end
        object cxGridStradarioLevel1: TcxGridLevel
          GridView = cxGridStradarioDBTableView1
          object cxGridStradarioLevel2: TcxGridLevel
            GridView = cxGridStradarioDBTableView2
          end
        end
      end
    end
    object cxTipoInvio: TcxTabSheet
      Caption = 'cxTipoInvio'
      ImageIndex = 21
      object cxGridTipoInvio: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        object cxGridTipoInvioDBTable: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sqTipoInvio
          DataController.KeyFieldNames = 'PKINVIO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridTipoInvioDBTablePKINVIO: TcxGridDBColumn
            DataBinding.FieldName = 'PKINVIO'
            Options.Editing = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 55
          end
          object cxGridTipoInvioDBTableDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Width = 1074
          end
          object cxGridTipoInvioDBTableATTIVO: TcxGridDBColumn
            DataBinding.FieldName = 'ATTIVO'
            RepositoryItem = FDMCommon.edrepSINO
            Width = 113
          end
        end
        object cxGridTipoInvioLevel1: TcxGridLevel
          GridView = cxGridTipoInvioDBTable
        end
      end
    end
    object cxSmartCard: TcxTabSheet
      Caption = 'cxSmartCard'
      ImageIndex = 22
      object cxGridSmartCard: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        object cxGridSmartCardDBTable: TcxGridDBTableView
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
          DataController.DataSource = sqSmartCard
          DataController.KeyFieldNames = 'TIPO_CARTA'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Appending = True
          OptionsData.Deleting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridSmartCardDBTableTIPO_CARTA: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_CARTA'
            PropertiesClassName = 'TcxSpinEditProperties'
          end
          object cxGridSmartCardDBTableDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
          end
          object cxGridSmartCardDBTableDLL_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'DLL_NAME'
          end
          object cxGridSmartCardDBTablePRIVATE_KEY: TcxGridDBColumn
            DataBinding.FieldName = 'PRIVATE_KEY'
          end
          object cxGridSmartCardDBTableATTIVO: TcxGridDBColumn
            DataBinding.FieldName = 'ATTIVO'
            RepositoryItem = FDMCommon.edrepSINO
          end
        end
        object cxGridSmartCardLevel1: TcxGridLevel
          GridView = cxGridSmartCardDBTable
        end
      end
    end
    object cxTipoModalita: TcxTabSheet
      Caption = 'cxTipoModalita'
      ImageIndex = 23
      object cxGridTipoModalita: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        object cxGridTipoModalitaDBTable: TcxGridDBTableView
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
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sqTipoModalita
          DataController.KeyFieldNames = 'TIPO_MODALITA'
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
          object cxGridTipoModalitaDBTableTIPO_MODALITA: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_MODALITA'
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxGridTipoModalitaDBTableDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
          end
        end
        object cxGridTipoModalitaLevel1: TcxGridLevel
          GridView = cxGridTipoModalitaDBTable
        end
      end
    end
    object cxIdAuth: TcxTabSheet
      Caption = 'cxIdAuth'
      ImageIndex = 24
      object cxGridIdAuth: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        object cxGridIdAuthDBTable: TcxGridDBTableView
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
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sqIdAuth
          DataController.KeyFieldNames = 'IDAUTHORITY'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
          object cxGridIdAuthDBTableIDAUTHORITY: TcxGridDBColumn
            DataBinding.FieldName = 'IDAUTHORITY'
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxGridIdAuthDBTableDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
          end
        end
        object cxGridIdAuthLevel1: TcxGridLevel
          GridView = cxGridIdAuthDBTable
        end
      end
    end
    object cxBlocchi: TcxTabSheet
      Caption = 'cxBlocchi'
      ImageIndex = 25
      object cxGridBlocchi: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        object cxGridDBTableBlocchi: TcxGridDBTableView
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
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sqBlocchi
          DataController.KeyFieldNames = 'PKTIPO_BLOCCO'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
          object cxGridDBTableBlocchiPKTIPO_BLOCCO: TcxGridDBColumn
            DataBinding.FieldName = 'PKTIPO_BLOCCO'
          end
          object cxGridDBTableBlocchiDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
          end
        end
        object cxGridBlocchiLevel1: TcxGridLevel
          GridView = cxGridDBTableBlocchi
        end
      end
    end
    object cxColori: TcxTabSheet
      Caption = 'cxColori'
      ImageIndex = 26
      object cxGridColori: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        object cxGridDBTableColori: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sqSET_COLORI
          DataController.KeyFieldNames = 'PKSET_COLORI'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridDBTableColoriPKSET_COLORI: TcxGridDBColumn
            DataBinding.FieldName = 'PKSET_COLORI'
            Options.Editing = False
            Options.Filtering = False
            Width = 257
          end
          object cxGridDBTableColoriELEMENTO: TcxGridDBColumn
            DataBinding.FieldName = 'ELEMENTO'
            Options.Editing = False
            Options.Filtering = False
          end
          object cxGridDBTableColoriCOLORE: TcxGridDBColumn
            DataBinding.FieldName = 'COLORE'
            PropertiesClassName = 'TcxColorComboBoxProperties'
            Properties.CustomColors = <>
            Options.Filtering = False
            Width = 1088
          end
        end
        object cxGridColoriLevel1: TcxGridLevel
          GridView = cxGridDBTableColori
        end
      end
    end
    object cxProfili: TcxTabSheet
      Caption = 'cxProfili'
      ImageIndex = 27
      object cxGridProfili: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        object cxGridProfiliDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = sqProfili
          DataController.KeyFieldNames = 'PKPROFILI'
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
          object cxGridProfiliDBTableView1PKPROFILI: TcxGridDBColumn
            DataBinding.FieldName = 'PKPROFILI'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGridProfiliDBTableView1DESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
          end
          object cxGridProfiliDBTableView1PROFILO: TcxGridDBColumn
            DataBinding.FieldName = 'PROFILO'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGridProfiliDBTableView1IMMAGINI: TcxGridDBColumn
            DataBinding.FieldName = 'IMMAGINI'
            RepositoryItem = FDMCommon.edrepSINO
            HeaderAlignmentHorz = taCenter
          end
          object cxGridProfiliDBTableView1REFERTO: TcxGridDBColumn
            DataBinding.FieldName = 'REFERTO'
            RepositoryItem = FDMCommon.edrepSINO
            HeaderAlignmentHorz = taCenter
          end
          object cxGridProfiliDBTableView1BLOCCHI: TcxGridDBColumn
            DataBinding.FieldName = 'BLOCCHI'
            RepositoryItem = FDMCommon.edrepSINO
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object cxGridProfiliDBTableView1CUP: TcxGridDBColumn
            DataBinding.FieldName = 'CUP'
            RepositoryItem = FDMCommon.edrepSINO
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object cxGridProfiliDBTableView1ESEGUITO: TcxGridDBColumn
            DataBinding.FieldName = 'ESEGUITO'
            RepositoryItem = FDMCommon.edrepSINO
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object cxGridProfiliDBTableView1SPOSTA: TcxGridDBColumn
            DataBinding.FieldName = 'SPOSTA'
            RepositoryItem = FDMCommon.edrepSINO
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object cxGridProfiliDBTableView1SETUP: TcxGridDBColumn
            DataBinding.FieldName = 'SETUP'
            RepositoryItem = FDMCommon.edrepSINO
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
        end
        object cxGridProfiliLevel1: TcxGridLevel
          GridView = cxGridProfiliDBTableView1
        end
      end
    end
    object cxAudit: TcxTabSheet
      Caption = 'cxAudit'
      ImageIndex = 28
      object cxGridAudit: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        object cxGridAuditDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = True
          Navigator.Visible = True
          DataController.DataSource = sqAudit
          DataController.KeyFieldNames = 'TABLE_NAME'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = cxGridAuditDBTableView1TABLE_NAME
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridAuditDBTableView1LOG_VAR: TcxGridDBColumn
            DataBinding.FieldName = 'LOG_VAR'
            RepositoryItem = FDMCommon.edrepSINO
          end
          object cxGridAuditDBTableView1TABLE_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'TABLE_NAME'
            Options.Editing = False
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxGridAuditDBTableView1DESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Options.Editing = False
            Options.Filtering = False
          end
        end
        object cxGridAuditLevel1: TcxGridLevel
          GridView = cxGridAuditDBTableView1
        end
      end
    end
    object cxVerificaStampe: TcxTabSheet
      Caption = 'cxVerificaStampe'
      ImageIndex = 29
      object cxGridVerificaStampe: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        object cxGridVerificaStampeDBTableView1: TcxGridDBTableView
          PopupMenu = dxBarPopupVerificaStampe
          Navigator.Buttons.OnButtonClick = cxGridVerificaStampeDBTableView1NavigatorButtonsButtonClick
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
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sqVerificaStampe
          DataController.KeyFieldNames = 'PKVERIFICASTAMPE'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridVerificaStampeDBTableView1PKVERIFICASTAMPE: TcxGridDBColumn
            DataBinding.FieldName = 'PKVERIFICASTAMPE'
            SortIndex = 0
            SortOrder = soAscending
            Width = 106
          end
          object cxGridVerificaStampeDBTableView1NOMESTAMPA: TcxGridDBColumn
            DataBinding.FieldName = 'NOMESTAMPA'
            Width = 1024
          end
        end
        object cxGridVerificaStampeLevel1: TcxGridLevel
          GridView = cxGridVerificaStampeDBTableView1
        end
      end
    end
    object cxTabSkin: TcxTabSheet
      Caption = 'cxTabSkin'
      ImageIndex = 30
      object cxGridSkin: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        object cxGridSkinDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = sqSkin
          DataController.KeyFieldNames = 'PKTABSKIN'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.ColumnFiltering = False
          OptionsData.CancelOnExit = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridSkinDBTableView1PKTABSKIN: TcxGridDBColumn
            DataBinding.FieldName = 'PKTABSKIN'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.MinValue = 1.000000000000000000
            SortIndex = 0
            SortOrder = soAscending
            Width = 118
          end
          object cxGridSkinDBTableView1NOME: TcxGridDBColumn
            DataBinding.FieldName = 'NOME'
            Width = 1130
          end
          object cxGridSkinDBTableView1SKIN: TcxGridDBColumn
            DataBinding.FieldName = 'SKIN'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekBlob
            Properties.OnButtonClick = cxGridSkinDBTableView1SKINPropertiesButtonClick
            Options.ShowEditButtons = isebAlways
            Width = 97
          end
          object cxGridSkinDBTableView1TEXTCOLOR: TcxGridDBColumn
            DataBinding.FieldName = 'TEXTCOLOR'
            PropertiesClassName = 'TcxColorComboBoxProperties'
            Properties.CustomColors = <>
            Visible = False
            VisibleForCustomization = False
          end
        end
        object cxGridSkinLevel1: TcxGridLevel
          GridView = cxGridSkinDBTableView1
        end
      end
    end
    object cxTabTipoRefertazione: TcxTabSheet
      Caption = 'cxTabTipoRefertazione'
      ImageIndex = 31
      object cxGridTipoRefertazione: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        object cxGridTipoRefertazioneDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = True
          Navigator.Visible = True
          DataController.DataSource = sLkTipoRefVoc
          DataController.KeyFieldNames = 'PKTIPO_REFVOC'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridTipoRefertazioneDBTableView1PKTIPO_REFVOC: TcxGridDBColumn
            DataBinding.FieldName = 'PKTIPO_REFVOC'
            Options.Editing = False
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxGridTipoRefertazioneDBTableView1DESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Options.Editing = False
            Options.Filtering = False
          end
          object cxGridTipoRefertazioneDBTableView1ATTIVO: TcxGridDBColumn
            DataBinding.FieldName = 'ATTIVO'
            RepositoryItem = FDMCommon.edrepSINO
          end
          object cxGridTipoRefertazioneDBTableView1DEST_FORM: TcxGridDBColumn
            DataBinding.FieldName = 'DEST_FORM'
            RepositoryItem = FDMCommon.edrepSINO
          end
        end
        object cxGridTipoRefertazioneLevel1: TcxGridLevel
          GridView = cxGridTipoRefertazioneDBTableView1
        end
      end
    end
    object cxTabStatoReferto: TcxTabSheet
      Caption = 'cxTabStatoReferto'
      ImageIndex = 32
      object cxGridStatoReferto: TcxGrid
        Left = 0
        Top = 0
        Width = 1378
        Height = 798
        Align = alClient
        TabOrder = 0
        object cxGridStatoRefertoDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = sTabStatoReferto
          DataController.KeyFieldNames = 'STATOREFERTO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridStatoRefertoDBTableView1STATOREFERTO: TcxGridDBColumn
            DataBinding.FieldName = 'STATOREFERTO'
            Options.Editing = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 199
          end
          object cxGridStatoRefertoDBTableView1DESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Options.Editing = False
            Width = 1102
          end
          object cxGridStatoRefertoDBTableView1RIGENERA: TcxGridDBColumn
            DataBinding.FieldName = 'RIGENERA'
            RepositoryItem = FDMCommon.edrepSINO
            Width = 44
          end
        end
        object cxGridStatoRefertoLevel1: TcxGridLevel
          GridView = cxGridStatoRefertoDBTableView1
        end
      end
    end
    object cxTabTraduzioni: TcxTabSheet
      Caption = 'cxTabTraduzioni'
      ImageIndex = 33
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1500
        Height = 24
        Align = dalTop
        BarManager = dxBarManagerRadDiagn
      end
      object cxLinguaBase: TcxLookupComboBox
        Left = 1164
        Top = 596
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'LINGUA'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            Width = 200
            FieldName = 'DESCRIZIONE'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = sqLingue
        Properties.OnCloseUp = cxLinguaBasePropertiesCloseUp
        TabOrder = 1
        Width = 145
      end
      object cxLinguaDaTradurre: TcxLookupComboBox
        Left = 1164
        Top = 628
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'LINGUA'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            Width = 200
            FieldName = 'DESCRIZIONE'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = sqLingue
        Properties.OnCloseUp = cxLinguaDaTradurrePropertiesCloseUp
        TabOrder = 2
        Width = 145
      end
      object cxGridTraduzioni: TcxGrid
        Left = 0
        Top = 24
        Width = 1500
        Height = 681
        Align = alClient
        TabOrder = 3
        RootLevelOptions.DetailTabsPosition = dtpTop
        object cxGridTraduzioniDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = True
          Navigator.Visible = True
          DataController.DataSource = sqTraduzioniN
          DataController.KeyFieldNames = 'TABLE_NAME;FIELD_NAME;LINGUA;CODICE'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridTraduzioniDBTableView1TABLE_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'TABLE_NAME'
            Visible = False
            Options.Editing = False
            Options.CellMerging = True
            Width = 92
          end
          object cxGridTraduzioniDBTableView1DESCTABELLA: TcxGridDBColumn
            DataBinding.FieldName = 'DESCTABELLA'
            Options.Editing = False
            Options.Filtering = False
            Options.CellMerging = True
            Width = 189
          end
          object cxGridTraduzioniDBTableView1FIELD_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'FIELD_NAME'
            Visible = False
            Options.Editing = False
            Options.CellMerging = True
            Width = 20
          end
          object cxGridTraduzioniDBTableView1DESCCAMPO: TcxGridDBColumn
            DataBinding.FieldName = 'DESCCAMPO'
            Options.Editing = False
            Options.Filtering = False
            Options.CellMerging = True
            Width = 390
          end
          object cxGridTraduzioniDBTableView1CODICE: TcxGridDBColumn
            DataBinding.FieldName = 'CODICE'
            Options.Editing = False
            Options.Filtering = False
            Width = 247
          end
          object cxGridTraduzioniDBTableView1LINGUA: TcxGridDBColumn
            DataBinding.FieldName = 'LINGUA'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object cxGridTraduzioniDBTableView1ORIGINE: TcxGridDBColumn
            DataBinding.FieldName = 'ORIGINE'
            Options.Editing = False
            Width = 224
          end
          object cxGridTraduzioniDBTableView1DESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Width = 218
          end
          object cxGridTraduzioniDBTableView1TRADOTTO: TcxGridDBColumn
            DataBinding.FieldName = 'TRADOTTO'
            RepositoryItem = FDMCommon.edrepSINO
            Width = 96
          end
        end
        object cxGridTraduzioniDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = True
          Navigator.Visible = True
          DataController.DataSource = sqTraduzioniC
          DataController.KeyFieldNames = 'TABLE_NAME;FIELD_NAME;LINGUA;CODICE'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridTraduzioniDBTableView2TABLE_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'TABLE_NAME'
            Visible = False
            Options.Editing = False
            Options.CellMerging = True
            Width = 92
          end
          object cxGridTraduzioniDBTableView2DESCTABELLA: TcxGridDBColumn
            DataBinding.FieldName = 'DESCTABELLA'
            Options.Editing = False
            Options.Filtering = False
            Options.CellMerging = True
            Width = 189
          end
          object cxGridTraduzioniDBTableView2FIELD_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'FIELD_NAME'
            Visible = False
            Options.Editing = False
            Options.CellMerging = True
            Width = 20
          end
          object cxGridTraduzioniDBTableView2DESCCAMPO: TcxGridDBColumn
            DataBinding.FieldName = 'DESCCAMPO'
            Options.Editing = False
            Options.Filtering = False
            Options.CellMerging = True
            Width = 390
          end
          object cxGridTraduzioniDBTableView2CODICE: TcxGridDBColumn
            DataBinding.FieldName = 'CODICE'
            Options.Editing = False
            Options.Filtering = False
            Width = 247
          end
          object cxGridTraduzioniDBTableView2LINGUA: TcxGridDBColumn
            DataBinding.FieldName = 'LINGUA'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object cxGridTraduzioniDBTableView2ORIGINE: TcxGridDBColumn
            DataBinding.FieldName = 'ORIGINE'
            Options.Editing = False
            Width = 224
          end
          object cxGridTraduzioniDBTableView2DESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Width = 218
          end
          object cxGridTraduzioniDBTableView2TRADOTTO: TcxGridDBColumn
            DataBinding.FieldName = 'TRADOTTO'
            RepositoryItem = FDMCommon.edrepSINO
            Width = 96
          end
        end
        object cxGridTraduzioniDBTableView3: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = True
          Navigator.Visible = True
          DataController.DataSource = sqSetDesc
          DataController.KeyFieldNames = 'PKSET_DESCS'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridTraduzioniDBTableView3PKSET_DESCS: TcxGridDBColumn
            DataBinding.FieldName = 'PKSET_DESCS'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Width = 59
          end
          object cxGridTraduzioniDBTableView3NOMECAMPO: TcxGridDBColumn
            DataBinding.FieldName = 'NOMECAMPO'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Width = 109
          end
          object cxGridTraduzioniDBTableView3ORIGINE: TcxGridDBColumn
            DataBinding.FieldName = 'ORIGINE'
            Options.Editing = False
            Width = 213
          end
          object cxGridTraduzioniDBTableView3LABELCAMPO: TcxGridDBColumn
            DataBinding.FieldName = 'LABELCAMPO'
            Width = 244
          end
          object cxGridTraduzioniDBTableView3PADRE: TcxGridDBColumn
            DataBinding.FieldName = 'PADRE'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Width = 82
          end
          object cxGridTraduzioniDBTableView3NOTEORIGINE: TcxGridDBColumn
            DataBinding.FieldName = 'NOTEORIGINE'
            Options.Editing = False
            Options.Filtering = False
            Width = 391
          end
          object cxGridTraduzioniDBTableView3NOTECAMPO: TcxGridDBColumn
            DataBinding.FieldName = 'NOTECAMPO'
            PropertiesClassName = 'TcxMemoProperties'
            Options.Filtering = False
            Width = 446
          end
          object cxGridTraduzioniDBTableView3LINGUA: TcxGridDBColumn
            DataBinding.FieldName = 'LINGUA'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            VisibleForCustomization = False
            Width = 21
          end
          object cxGridTraduzioniDBTableView3TRADOTTO: TcxGridDBColumn
            DataBinding.FieldName = 'TRADOTTO'
            RepositoryItem = FDMCommon.edrepSINO
            Width = 70
          end
        end
        object cxGridTraduzioniLevel1: TcxGridLevel
          Caption = 'Codici numerici'
          GridView = cxGridTraduzioniDBTableView1
        end
        object cxGridTraduzioniLevel2: TcxGridLevel
          Caption = 'Codici carattere'
          GridView = cxGridTraduzioniDBTableView2
        end
        object cxGridTraduzioniLevel3: TcxGridLevel
          Caption = 'Parametri Setup'
          GridView = cxGridTraduzioniDBTableView3
        end
      end
    end
  end
  object ActionList1: TActionList
    Images = FDMCommon.imIcone
    Left = 360
    Top = 236
    object NuovoOspedale: TAction
      Caption = 'Nuovo ospedale'
      Hint = 'Inserisci nuovo ospedale'
      ImageIndex = 16
      OnExecute = NuovoOspedaleExecute
    end
    object ModiOspedale: TAction
      Caption = 'Modifica Ospedale'
      ImageIndex = 13
      OnExecute = ModiOspedaleExecute
    end
    object Stampa: TAction
      Caption = 'Stampa'
      Hint = 'Stampa lista'
      ImageIndex = 15
      OnExecute = StampaExecute
      OnUpdate = StampaUpdate
    end
    object ApriTutto: TAction
      Caption = 'Apri tutto'
      Hint = 'Apri tutte le cartelle'
      ImageIndex = 11
      OnExecute = ApriTuttoExecute
      OnUpdate = ApriTuttoUpdate
    end
    object ChiudiTutto: TAction
      Caption = 'Chiudi tutto'
      Hint = 'Chiudi tutte le cartelle'
      ImageIndex = 12
      OnExecute = ChiudiTuttoExecute
      OnUpdate = ChiudiTuttoUpdate
    end
    object ModiMedico: TAction
      Caption = 'ModiMedico'
      Hint = 'Modifica scheda medico'
      ImageIndex = 13
      OnExecute = ModiMedicoExecute
    end
    object NuovoMedico: TAction
      Caption = 'NuovoMedico'
      Hint = 'Inserisci nuovo medico'
      ImageIndex = 16
      OnExecute = NuovoMedicoExecute
    end
    object aNuovoSconosciuto: TAction
      Caption = 'Nuovo sconosciuto'
      ImageIndex = 16
      OnExecute = aNuovoSconosciutoExecute
    end
    object aNuovaVerifica: TAction
      Caption = 'Nuova verifica'
      ImageIndex = 16
      OnExecute = aNuovaVerificaExecute
    end
    object aEditVerificaStampe: TAction
      Caption = 'Modifica verifica'
      ImageIndex = 13
      OnExecute = aEditVerificaStampeExecute
      OnUpdate = aEditVerificaStampeUpdate
    end
  end
  object dxBarManagerRadDiagn: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Source Sans Pro'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Selezione'
      'Stampa'
      'Verifica Stampe'
      'Traduzioni')
    Categories.ItemsVisibles = (
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True)
    ImageOptions.Images = FDMCommon.imIcone
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 428
    Top = 252
    DockControlHeights = (
      0
      0
      57
      0)
    object dxBarManagerRadDiagnBar1: TdxBar
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
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxASL'
        end
        item
          Visible = True
          ItemName = 'dxMedici'
        end
        item
          Visible = True
          ItemName = 'dxEsenzioni'
        end
        item
          Visible = True
          ItemName = 'dxOspedali'
        end
        item
          Visible = True
          ItemName = 'dxComuni'
        end
        item
          Visible = True
          ItemName = 'dxRegioni'
        end
        item
          Visible = True
          ItemName = 'dxNazioni'
        end
        item
          Visible = True
          ItemName = 'dxMotivi'
        end
        item
          Visible = True
          ItemName = 'dxAttivita'
        end
        item
          Visible = True
          ItemName = 'dxTipoTrasporto'
        end
        item
          Visible = True
          ItemName = 'dxTipoUrgenza'
        end
        item
          Visible = True
          ItemName = 'dxSconosciuti'
        end
        item
          Visible = True
          ItemName = 'dxFeste'
        end
        item
          Visible = True
          ItemName = 'dxTipoMedico'
        end
        item
          Visible = True
          ItemName = 'dxTipoAccesso'
        end
        item
          Visible = True
          ItemName = 'dxTipoEsenzione'
        end
        item
          Visible = True
          ItemName = 'dxTipoRicetta'
        end
        item
          Visible = True
          ItemName = 'dxBranche'
        end
        item
          Visible = True
          ItemName = 'dxACR'
        end
        item
          Visible = True
          ItemName = 'dxScreening'
        end
        item
          Visible = True
          ItemName = 'dxStradario'
        end
        item
          Visible = True
          ItemName = 'dxTipoInvio'
        end
        item
          Visible = True
          ItemName = 'dxSmartCard'
        end
        item
          Visible = True
          ItemName = 'dxTipoModalita'
        end
        item
          Visible = True
          ItemName = 'dxIdAuth'
        end
        item
          Visible = True
          ItemName = 'dxTipoBlocco'
        end
        item
          Visible = True
          ItemName = 'dxColori'
        end
        item
          Visible = True
          ItemName = 'dxProfiliReparti'
        end
        item
          Visible = True
          ItemName = 'dxAudit'
        end
        item
          Visible = True
          ItemName = 'dxVerificaStampe'
        end
        item
          Visible = True
          ItemName = 'dxSkin'
        end
        item
          Visible = True
          ItemName = 'dxTipoRefertazione'
        end
        item
          Visible = True
          ItemName = 'dxStatoReferto'
        end
        item
          Visible = True
          ItemName = 'dxTraduzioni'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'Comandi'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxBarManagerRadDiagnBar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Traduzioni'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 6
      FloatTop = 108
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarStatic1'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic2'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem2'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxASL: TdxBarButton
      Caption = 'Tabella ASL'
      Category = 0
      Hint = 'Tabella ASL'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxASLClick
    end
    object dxMedici: TdxBarButton
      Caption = 'Medici'
      Category = 0
      Hint = 'Medici di base'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxMediciClick
    end
    object dxEsenzioni: TdxBarButton
      Caption = 'Esenzioni'
      Category = 0
      Hint = 'Tipi di esenzione'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxEsenzioniClick
    end
    object dxOspedali: TdxBarButton
      Caption = 'Provenienze'
      Category = 0
      Hint = 'Provenienze'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxOspedaliClick
    end
    object dxComuni: TdxBarButton
      Caption = 'Comuni'
      Category = 0
      Hint = 'Comuni'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxComuniClick
    end
    object dxRegioni: TdxBarButton
      Caption = 'Regioni e Province'
      Category = 0
      Hint = 'Regioni e Province'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxRegioniClick
    end
    object dxNazioni: TdxBarButton
      Caption = 'Nazioni'
      Category = 0
      Hint = 'Nazioni'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxNazioniClick
    end
    object dxMotivi: TdxBarButton
      Caption = 'Cancellazioni'
      Category = 0
      Hint = 'Cancellazioni'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxMotiviClick
    end
    object dxAttivita: TdxBarButton
      Caption = 'Tipo attivita'
      Category = 0
      Hint = 'Tipo attivita'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxAttivitaClick
    end
    object dxTipoTrasporto: TdxBarButton
      Caption = 'Trasporto'
      Category = 0
      Hint = 'Trasporto'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxTipoTrasportoClick
    end
    object dxTipoUrgenza: TdxBarButton
      Caption = 'Urgenza'
      Category = 0
      Hint = 'Urgenza'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxTipoUrgenzaClick
    end
    object dxSconosciuti: TdxBarButton
      Caption = 'Sconosciuti'
      Category = 0
      Hint = 'Sconosciuti'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxSconosciutiClick
    end
    object dxFeste: TdxBarButton
      Caption = 'Festivita'
      Category = 0
      Hint = 'Festivita'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxFesteClick
    end
    object dxTipoMedico: TdxBarButton
      Caption = 'Tipo Medico'
      Category = 0
      Hint = 'Tipo Medico'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxTipoMedicoClick
    end
    object dxTipoAccesso: TdxBarButton
      Caption = 'Tipo accesso'
      Category = 0
      Hint = 'Tipo accesso'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxTipoAccessoClick
    end
    object dxTipoEsenzione: TdxBarButton
      Caption = 'Tipo esenzione'
      Category = 0
      Hint = 'Tipo esenzione'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxTipoEsenzioneClick
    end
    object dxBranche: TdxBarButton
      Caption = 'Branche'
      Category = 0
      Hint = 'Branche'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxBrancheClick
    end
    object dxACR: TdxBarButton
      Caption = 'ACR'
      Category = 0
      Hint = 'ACR'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxACRClick
    end
    object dxScreening: TdxBarButton
      Caption = 'Screening'
      Category = 0
      Hint = 'Screening'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxScreeningClick
    end
    object dxTipoRicetta: TdxBarButton
      Caption = 'Tipo Ricetta'
      Category = 0
      Hint = 'Tipo Ricetta'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxTipoRicettaClick
    end
    object dxStradario: TdxBarButton
      Caption = 'Stradario'
      Category = 0
      Hint = 'Stradario'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxStradarioClick
    end
    object dxTipoInvio: TdxBarButton
      Caption = 'Invio referto'
      Category = 0
      Hint = 'Invio referto'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxTipoInvioClick
    end
    object dxSmartCard: TdxBarButton
      Caption = 'SmartCard'
      Category = 0
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxSmartCardClick
    end
    object dxTipoModalita: TdxBarButton
      Caption = 'Tipo Modalita'
      Category = 0
      Hint = 'Tipo Modalita'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxTipoModalitaClick
    end
    object dxIdAuth: TdxBarButton
      Caption = 'ID Authority'
      Category = 0
      Hint = 'ID Authority'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxIdAuthClick
    end
    object dxTipoBlocco: TdxBarButton
      Caption = 'Blocchi'
      Category = 0
      Hint = 'Blocchi'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxTipoBloccoClick
    end
    object dxColori: TdxBarButton
      Caption = 'Colori'
      Category = 0
      Hint = 'Colori'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxColoriClick
    end
    object dxProfiliReparti: TdxBarButton
      Caption = 'Profili Reparti'
      Category = 0
      Hint = 'Profili Reparti'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxProfiliRepartiClick
    end
    object dxAudit: TdxBarButton
      Caption = 'Audit'
      Category = 0
      Hint = 'Audit'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxAuditClick
    end
    object dxVerificaStampe: TdxBarButton
      Caption = 'Verifica Stampe'
      Category = 0
      Hint = 'Verifica Stampe'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxVerificaStampeClick
    end
    object dxSkin: TdxBarButton
      Caption = 'Skin'
      Category = 0
      Hint = 'Skin'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxSkinClick
    end
    object dxTipoRefertazione: TdxBarButton
      Caption = 'Tipo Refertazione'
      Category = 0
      Hint = 'Tipo Refertazione'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxTipoRefertazioneClick
    end
    object dxStatoReferto: TdxBarButton
      Caption = 'Stato Referto'
      Category = 0
      Hint = 'Stato Referto'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxStatoRefertoClick
    end
    object dxTraduzioni: TdxBarButton
      Caption = 'Traduzioni'
      Category = 0
      Hint = 'Traduzioni'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxTraduzioniClick
    end
    object dxBarButton1: TdxBarButton
      Action = Stampa
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Action = ApriTutto
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton3: TdxBarButton
      Action = ChiudiTutto
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton4: TdxBarButton
      Action = aNuovaVerifica
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton5: TdxBarButton
      Action = aEditVerificaStampe
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'Scelta lingua base'
      Category = 3
      Hint = 'Scelta lingua base'
      Visible = ivAlways
      Control = cxLinguaBase
    end
    object dxBarControlContainerItem2: TdxBarControlContainerItem
      Caption = 'Lingua da tradurre'
      Category = 3
      Hint = 'Lingua da tradurre'
      Visible = ivAlways
      Control = cxLinguaDaTradurre
    end
    object dxBarStatic1: TdxBarStatic
      Caption = 'Lingua base'
      Category = 3
      Hint = 'Lingua base'
      Visible = ivAlways
    end
    object dxBarStatic2: TdxBarStatic
      Caption = 'Da tradurre'
      Category = 3
      Hint = 'Da tradurre'
      Visible = ivAlways
    end
  end
  object qASL: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'AZIENDE_SPECIALI_USL'
    PrimeFields.Strings = (
      'REG_CODICE'
      'CODICE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'a.reg_codice,'
      'a.codice,'
      'a.descrizione,'
      'a.data_inizio,'
      'a.data_fine,'
      'a.indirizzo,'
      'a.com_codice,'
      'a.cap'
      'from aziende_speciali_usl a')
    Params = <>
    QBEMode = False
    Left = 72
    Top = 392
    FastFields = (
      'REG_CODICE,1,3'
      'CODICE,1,3'
      'DESCRIZIONE,1,60'
      'DATA_INIZIO,11,0'
      'DATA_FINE,11,0'
      'INDIRIZZO,1,300'
      'COM_CODICE,1,13'
      'CAP,1,10')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qASLREG_CODICE: TStringField
      DisplayLabel = 'Regione'
      FieldName = 'REG_CODICE'
      Size = 3
    end
    object qASLCODICE: TStringField
      DisplayLabel = 'Codice ASL'
      FieldName = 'CODICE'
      Required = True
      Size = 3
    end
    object qASLDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 60
    end
    object qASLDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine validita'
      FieldName = 'DATA_FINE'
    end
    object qASLINDIRIZZO: TStringField
      DisplayLabel = 'Indirizzo'
      FieldName = 'INDIRIZZO'
      Size = 300
    end
    object qASLCOM_CODICE: TStringField
      DisplayLabel = 'Comune'
      FieldName = 'COM_CODICE'
      Required = True
      Size = 13
    end
    object qASLCAP: TStringField
      DisplayLabel = 'cap'
      FieldName = 'CAP'
      Size = 10
    end
    object qASLDATA_INIZIO: TDateTimeField
      DisplayLabel = 'Inizio validita'
      FieldName = 'DATA_INIZIO'
    end
  end
  object sqASL: TDataSource
    DataSet = qASL
    Left = 196
    Top = 260
  end
  object LkComuni: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    OnNewRecord = LkComuniNewRecord
    BeforeQuery = LkComuniBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    NoSQLFields.Strings = (
      'reg_codice')
    EditMode = 'Read Only'
    UpdateTableName = 'COMUNI'
    PrimeFields.Strings = (
      'CODICE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'c.codice,'
      'c.descrizione,'
      'c.sigla,'
      'c.com_type,'
      'c.naz_codice,'
      'c.data_inizio,'
      'c.data_fine,'
      'c.cap,'
      'c.catasto,'
      'p.reg_codice'
      'from comuni c'
      'left join provincie p on p.sigla = c.sigla')
    Params = <>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      030000000600000006000000434F44494345010000000008000000434F4D5F54
      59504501000000000B0000004445534352495A494F4E4501000000000A000000
      4E415A5F434F4449434501000000000A00000050524F5F434F44494345010000
      0000030000004341500100000000}
    Left = 144
    Top = 368
    FastFields = (
      'CODICE,1,6'
      'DESCRIZIONE,1,60'
      'SIGLA,1,2'
      'COM_TYPE,1,10'
      'NAZ_CODICE,1,3'
      'DATA_INIZIO,11,0'
      'DATA_FINE,11,0'
      'CAP,1,10'
      'CATASTO,1,4'
      'REG_CODICE,1,3')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object LkComuniDESCRIZIONE: TStringField
      DisplayLabel = 'Comune'
      DisplayWidth = 60
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 60
    end
    object LkComuniCODICE: TStringField
      DisplayLabel = 'Codice'
      DisplayWidth = 6
      FieldName = 'CODICE'
      Required = True
      Visible = False
      Size = 6
    end
    object LkComuniSIGLA: TStringField
      DisplayLabel = 'Prov'
      FieldName = 'SIGLA'
      Size = 2
    end
    object LkComuniCATASTO: TStringField
      DisplayLabel = 'Cod.Catastale'
      FieldName = 'CATASTO'
      Size = 4
    end
    object LkComuniCOM_TYPE: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'COM_TYPE'
      Required = True
      Visible = False
      Size = 10
    end
    object LkComuniNAZ_CODICE: TStringField
      DisplayLabel = 'Nazione'
      FieldName = 'NAZ_CODICE'
      Visible = False
      Size = 3
    end
    object LkComuniDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine validita'
      FieldName = 'DATA_FINE'
      Visible = False
    end
    object LkComuniCAP: TStringField
      FieldName = 'CAP'
      Visible = False
      Size = 10
    end
    object LkComuniDATA_INIZIO: TDateTimeField
      DisplayLabel = 'Inizio validita'
      FieldName = 'DATA_INIZIO'
    end
    object LkComuniREG_CODICE: TStringField
      FieldName = 'REG_CODICE'
      Size = 3
    end
  end
  object sLkComuni: TDataSource
    DataSet = LkComuni
    Left = 204
    Top = 380
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 344
    Top = 376
    object cxLkComune: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnFocusedItemChanged = cxLkComuneFocusedItemChanged
      DataController.DataSource = sLkComuni
      DataController.KeyFieldNames = 'CODICE'
      DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsBehavior.IncSearchItem = cxLkComuneDESCRIZIONE
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.HeaderAutoHeight = True
      object cxLkComuneCODICE: TcxGridDBColumn
        DataBinding.FieldName = 'CODICE'
        Visible = False
      end
      object cxLkComuneDESCRIZIONE: TcxGridDBColumn
        DataBinding.FieldName = 'DESCRIZIONE'
        SortIndex = 0
        SortOrder = soAscending
      end
      object cxLkComuneSIGLA: TcxGridDBColumn
        DataBinding.FieldName = 'SIGLA'
        Width = 84
      end
    end
    object cxLkRegioni: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnFocusedItemChanged = cxLkRegioniFocusedItemChanged
      DataController.DataSource = sLkRegioni
      DataController.KeyFieldNames = 'CODICE'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsBehavior.IncSearchItem = cxLkRegioniDESCRIZIONE
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxLkRegioniCODICE: TcxGridDBColumn
        DataBinding.FieldName = 'CODICE'
        SortIndex = 0
        SortOrder = soAscending
        Width = 84
      end
      object cxLkRegioniDESCRIZIONE: TcxGridDBColumn
        DataBinding.FieldName = 'DESCRIZIONE'
        SortIndex = 1
        SortOrder = soAscending
        Width = 472
      end
      object cxLkRegioniDATA_FINE: TcxGridDBColumn
        DataBinding.FieldName = 'DATA_FINE'
      end
    end
  end
  object LkRegioni: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'REGIONI'
    PrimeFields.Strings = (
      'CODICE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'codice, '
      'descrizione, '
      'data_fine'
      'from regioni')
    Params = <>
    QBEMode = False
    Left = 152
    Top = 440
    FastFields = (
      'CODICE,1,3'
      'DESCRIZIONE,1,60'
      'DATA_FINE,11,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object LkRegioniCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Required = True
      Size = 3
    end
    object LkRegioniDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 60
    end
    object LkRegioniDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine validita'
      FieldName = 'DATA_FINE'
    end
  end
  object sLkRegioni: TDataSource
    DataSet = LkRegioni
    Left = 216
    Top = 444
  end
  object qTipoAttivita: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'TIPO_ATTIVITA'
    PrimeFields.Strings = (
      'TIPO_ATTIVITA')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'a.tipo_attivita, '
      'a.descrizione, '
      'a.attivo, '
      'a.provenienza,'
      'a.impegnativa,'
      'a.tipo_accesso,'
      'a.cod_ihe,'
      'a.ctrl_ricovero,'
      'a.view_referti,'
      'a.cod_esterno,'
      'a.mask'
      'from tipo_attivita a')
    Params = <>
    QBEMode = False
    Left = 612
    Top = 132
    FastFields = (
      'TIPO_ATTIVITA,1,2'
      'DESCRIZIONE,1,60'
      'ATTIVO,3,0'
      'PROVENIENZA,1,1'
      'IMPEGNATIVA,3,0'
      'TIPO_ACCESSO,1,1'
      'COD_IHE,1,2'
      'CTRL_RICOVERO,3,0'
      'VIEW_REFERTI,3,0'
      'COD_ESTERNO,1,12'
      'MASK,1,50')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qTipoAttivitaTIPO_ATTIVITA: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'TIPO_ATTIVITA'
      Size = 2
    end
    object qTipoAttivitaDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 60
    end
    object qTipoAttivitaATTIVO: TIntegerField
      DisplayLabel = 'Attivo'
      FieldName = 'ATTIVO'
    end
    object qTipoAttivitaPROVENIENZA: TStringField
      DisplayLabel = 'Provenienza'
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object qTipoAttivitaIMPEGNATIVA: TIntegerField
      DisplayLabel = 'Nr. Impegnativa'
      FieldName = 'IMPEGNATIVA'
    end
    object qTipoAttivitaTIPO_ACCESSO: TStringField
      DisplayLabel = 'Accesso'
      FieldName = 'TIPO_ACCESSO'
      Size = 1
    end
    object qTipoAttivitaCTRL_RICOVERO: TIntegerField
      DisplayLabel = 'Controllo ricovero'
      FieldName = 'CTRL_RICOVERO'
    end
    object qTipoAttivitaVIEW_REFERTI: TIntegerField
      DisplayLabel = 'Mostra referti'
      FieldName = 'VIEW_REFERTI'
    end
    object qTipoAttivitaCOD_IHE: TStringField
      DisplayLabel = 'Cod. IHE'
      FieldName = 'COD_IHE'
      Size = 2
    end
    object qTipoAttivitaCOD_ESTERNO: TStringField
      DisplayLabel = 'Cod. Esterno'
      FieldName = 'COD_ESTERNO'
      Size = 12
    end
    object qTipoAttivitaMASK: TStringField
      DisplayLabel = 'Controllo nr. impegnativa'
      FieldName = 'MASK'
      Size = 50
    end
  end
  object sqTipoAttivita: TDataSource
    DataSet = qTipoAttivita
    Left = 664
    Top = 140
  end
  object qEsenzioni: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'ESENZIONI_TICKET'
    PrimeFields.Strings = (
      'IDENT')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'ident, '
      'tet_ident, '
      'descrizione, '
      'data_inizio, '
      'data_fine, '
      'esente_quota_fissa, '
      'eta_minima, '
      'eta_massima, '
      'percentuale_invalidita, '
      'generale, '
      'cond_data_inizio, '
      'con_prestazioni'
      'from esenzioni_ticket')
    Params = <>
    QBEMode = False
    Left = 716
    Top = 180
    FastFields = (
      'IDENT,1,7'
      'TET_IDENT,3,0'
      'DESCRIZIONE,1,100'
      'DATA_INIZIO,11,0'
      'DATA_FINE,11,0'
      'ESENTE_QUOTA_FISSA,3,0'
      'ETA_MINIMA,3,0'
      'ETA_MASSIMA,3,0'
      'PERCENTUALE_INVALIDITA,3,0'
      'GENERALE,3,0'
      'COND_DATA_INIZIO,11,0'
      'CON_PRESTAZIONI,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qEsenzioniTET_IDENT: TIntegerField
      DisplayLabel = 'Tipo esenzione'
      FieldName = 'TET_IDENT'
      Required = True
    end
    object qEsenzioniDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object qEsenzioniDATA_INIZIO: TDateTimeField
      DisplayLabel = 'Inizio validita'
      FieldName = 'DATA_INIZIO'
    end
    object qEsenzioniDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine validita'
      FieldName = 'DATA_FINE'
    end
    object qEsenzioniESENTE_QUOTA_FISSA: TIntegerField
      FieldName = 'ESENTE_QUOTA_FISSA'
    end
    object qEsenzioniETA_MINIMA: TIntegerField
      FieldName = 'ETA_MINIMA'
    end
    object qEsenzioniETA_MASSIMA: TIntegerField
      FieldName = 'ETA_MASSIMA'
    end
    object qEsenzioniPERCENTUALE_INVALIDITA: TIntegerField
      FieldName = 'PERCENTUALE_INVALIDITA'
    end
    object qEsenzioniGENERALE: TIntegerField
      FieldName = 'GENERALE'
    end
    object qEsenzioniCOND_DATA_INIZIO: TDateTimeField
      FieldName = 'COND_DATA_INIZIO'
    end
    object qEsenzioniCON_PRESTAZIONI: TIntegerField
      FieldName = 'CON_PRESTAZIONI'
    end
    object qEsenzioniIDENT: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'IDENT'
      Required = True
      Size = 7
    end
  end
  object sqEsenzioni: TDataSource
    DataSet = qEsenzioni
    Left = 780
    Top = 184
  end
  object LkTipoEsenzione: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = LkTipoEsenzioneBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'TIPI_ESENZIONE_TICKET'
    PrimeFields.Strings = (
      'IDENT')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'ident, '
      'descrizione,'
      'esente,'
      'cod_esterno,'
      'ce_codice'
      'from wtbd_esenzione'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 724
    Top = 252
    FastFields = (
      'IDENT,3,0'
      'DESCRIZIONE,1,200'
      'ESENTE,3,0'
      'COD_ESTERNO,1,12'
      'CE_CODICE,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object LkTipoEsenzioneIDENT: TIntegerField
      DisplayLabel = 'Codice'
      FieldName = 'IDENT'
    end
    object LkTipoEsenzioneDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 60
    end
    object LkTipoEsenzioneESENTE: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'ESENTE'
    end
    object LkTipoEsenzioneCOD_ESTERNO: TStringField
      DisplayLabel = 'Codice esterno'
      FieldName = 'COD_ESTERNO'
      Size = 12
    end
    object LkTipoEsenzioneCE_CODICE: TIntegerField
      DisplayLabel = 'Patologie'
      FieldName = 'CE_CODICE'
    end
  end
  object sLkTipoEsenzione: TDataSource
    DataSet = LkTipoEsenzione
    Left = 752
    Top = 316
  end
  object qOspedali: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qOspedaliBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    NoSQLFields.Strings = (
      'desc_comune'
      'DESCRUSL')
    EditMode = 'Read Only'
    UpdateTableName = 'OSPEDALI'
    PrimeFields.Strings = (
      'CODICE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'o.codice,'
      'o.descrizione,'
      'o.data_inizio,'
      'o.data_fine,'
      'o.com_codice,'
      'o.cap,'
      'o.usl_codice,'
      'o.indirizzo,'
      'o.usl_reg_codice,'
      'o.tipo_fattura,'
      'o.tipo_attivita_fk,'
      'o.cod_ric,'
      'o.es_ticket,'
      'o.cod_sts11,'
      'o.cod_hsp11,'
      'o.leg_codice,'
      'c.descrizione as desc_comune,'
      'az.descrizione as DescrUsl,'
      't.provenienza,'
      't.tipo_accesso,'
      'tf.descrizione as DescTipoFattura'
      'from ospedali o'
      'left join comuni c on c.codice = o.com_codice'
      
        'left join aziende_speciali_usl az on az.reg_codice=o.USL_REG_COD' +
        'ICE and az.codice=o.USL_CODICE'
      'left join tipo_attivita t on t.tipo_attivita=o.tipo_attivita_fk'
      
        'join wtab_tipofattura tf on tf.pktipo_fattura=o.tipo_fattura and' +
        ' tf.lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 648
    Top = 376
    FastFields = (
      'CODICE,1,20'
      'DESCRIZIONE,1,80'
      'DATA_INIZIO,11,0'
      'DATA_FINE,11,0'
      'COM_CODICE,1,13'
      'CAP,1,5'
      'USL_CODICE,1,3'
      'INDIRIZZO,1,100'
      'USL_REG_CODICE,1,3'
      'TIPO_FATTURA,3,0'
      'TIPO_ATTIVITA_FK,1,2'
      'COD_RIC,1,20'
      'ES_TICKET,1,7'
      'COD_STS11,1,12'
      'COD_HSP11,1,8'
      'LEG_CODICE,1,10'
      'DESC_COMUNE,1,60'
      'DESCRUSL,1,60'
      'PROVENIENZA,1,1'
      'TIPO_ACCESSO,1,1'
      'DESCTIPOFATTURA,1,100')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qOspedaliCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Origin = 'o.codice'
      Required = True
    end
    object qOspedaliDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 80
    end
    object qOspedaliDATA_INIZIO: TDateTimeField
      DisplayLabel = 'Inizio validita'
      FieldName = 'DATA_INIZIO'
    end
    object qOspedaliDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine validita'
      FieldName = 'DATA_FINE'
      Visible = False
    end
    object qOspedaliCOM_CODICE: TStringField
      DisplayLabel = 'Comune'
      FieldName = 'COM_CODICE'
      Required = True
      Size = 13
    end
    object qOspedaliUSL_CODICE: TStringField
      DisplayLabel = 'ASL'
      FieldName = 'USL_CODICE'
      Required = True
      Size = 3
    end
    object qOspedaliINDIRIZZO: TStringField
      DisplayLabel = 'Indirizzo'
      FieldName = 'INDIRIZZO'
      Size = 100
    end
    object qOspedaliUSL_REG_CODICE: TStringField
      FieldName = 'USL_REG_CODICE'
      Size = 3
    end
    object qOspedaliDESC_COMUNE: TStringField
      DisplayLabel = 'Comune'
      FieldName = 'DESC_COMUNE'
      Size = 60
    end
    object qOspedaliCAP: TStringField
      DisplayLabel = 'cap'
      FieldName = 'CAP'
      Required = True
      Size = 5
    end
    object qOspedaliDESCRUSL: TStringField
      DisplayLabel = 'ASL'
      FieldName = 'DESCRUSL'
      Size = 60
    end
    object qOspedaliTIPO_FATTURA: TIntegerField
      DisplayLabel = 'Fatturazione'
      FieldName = 'TIPO_FATTURA'
    end
    object qOspedaliTIPO_ATTIVITA_FK: TStringField
      DisplayLabel = 'Tipo Attivita'
      FieldName = 'TIPO_ATTIVITA_FK'
      Size = 2
    end
    object qOspedaliCOD_RIC: TStringField
      DisplayLabel = 'Cod. Ricerca'
      FieldName = 'COD_RIC'
    end
    object qOspedaliES_TICKET: TStringField
      FieldName = 'ES_TICKET'
      Size = 7
    end
    object qOspedaliCOD_HSP11: TStringField
      DisplayLabel = 'HSP11'
      FieldName = 'COD_HSP11'
      Size = 8
    end
    object qOspedaliLEG_CODICE: TStringField
      DisplayLabel = 'Listino'
      FieldName = 'LEG_CODICE'
      Size = 10
    end
    object qOspedaliPROVENIENZA: TStringField
      DisplayLabel = 'Provenienza'
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object qOspedaliTIPO_ACCESSO: TStringField
      DisplayLabel = 'Tipo Accesso'
      FieldName = 'TIPO_ACCESSO'
      Size = 1
    end
    object qOspedaliCOD_STS11: TStringField
      DisplayLabel = 'STS11'
      FieldName = 'COD_STS11'
      Size = 12
    end
    object qOspedaliDESCTIPOFATTURA: TStringField
      DisplayLabel = 'Fatturazione'
      FieldName = 'DESCTIPOFATTURA'
      Size = 100
    end
  end
  object sqOspedali: TDataSource
    DataSet = qOspedali
    Left = 708
    Top = 380
  end
  object LkProvincie: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_Province'
        Fields = 'reg_codice'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_Province'
    Aggregates = <>
    Active = False
    Constraints = <>
    OnNewRecord = LkProvincieNewRecord
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'PROVINCIE'
    PrimeFields.Strings = (
      'SIGLA')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'sigla, '
      'cod_provincia,'
      'descrizione, '
      'data_inizio,'
      'data_fine, '
      'reg_codice'
      'from provincie')
    Params = <>
    QBEMode = False
    Left = 268
    Top = 480
    FastFields = (
      'SIGLA,1,2'
      'COD_PROVINCIA,1,3'
      'DESCRIZIONE,1,60'
      'DATA_INIZIO,11,0'
      'DATA_FINE,11,0'
      'REG_CODICE,1,3')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object LkProvincieSIGLA: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      Size = 2
    end
    object LkProvincieDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 60
    end
    object LkProvincieDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine validita'
      FieldName = 'DATA_FINE'
      Visible = False
    end
    object LkProvincieREG_CODICE: TStringField
      FieldName = 'REG_CODICE'
      Visible = False
      Size = 3
    end
    object LkProvincieCOD_PROVINCIA: TStringField
      DisplayLabel = 'Codice esterno'
      FieldName = 'COD_PROVINCIA'
      Size = 3
    end
    object LkProvincieDATA_INIZIO: TDateTimeField
      DisplayLabel = 'Inizio validita'
      FieldName = 'DATA_INIZIO'
    end
  end
  object sLkProvincie: TDataSource
    DataSet = LkProvincie
    Left = 332
    Top = 476
  end
  object qNazioni: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'NAZIONI'
    PrimeFields.Strings = (
      'CODICE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'codice, '
      'descrizione, '
      'sigla, '
      'tnz_ident, '
      'data_inizio,'
      'data_fine, '
      'catasto,'
      'mask_cf'
      'from nazioni')
    Params = <>
    QBEMode = False
    Left = 424
    Top = 460
    FastFields = (
      'CODICE,1,3'
      'DESCRIZIONE,1,40'
      'SIGLA,1,5'
      'TNZ_IDENT,3,0'
      'DATA_INIZIO,11,0'
      'DATA_FINE,11,0'
      'CATASTO,1,4'
      'MASK_CF,1,100')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qNazioniCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 3
    end
    object qNazioniDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 40
    end
    object qNazioniSIGLA: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      Size = 5
    end
    object qNazioniTNZ_IDENT: TIntegerField
      DisplayLabel = 'Area'
      FieldName = 'TNZ_IDENT'
      Required = True
    end
    object qNazioniDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine validita'
      FieldName = 'DATA_FINE'
    end
    object qNazioniCATASTO: TStringField
      DisplayLabel = 'Catasto'
      FieldName = 'CATASTO'
      Size = 4
    end
    object qNazioniDATA_INIZIO: TDateTimeField
      DisplayLabel = 'Inizio validita'
      FieldName = 'DATA_INIZIO'
    end
    object qNazioniMASK_CF: TStringField
      DisplayLabel = 'Mask C.F.'
      FieldName = 'MASK_CF'
      Size = 100
    end
  end
  object sqNazioni: TDataSource
    DataSet = qNazioni
    Left = 468
    Top = 440
  end
  object qEsamiEsenzioni: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_CodiciEsenzioni'
        Fields = 'esenztick_fk'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_CodiciEsenzioni'
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'After Post'
    UpdateTableName = 'PRESTSPEC_ESENZIONI'
    PrimeFields.Strings = (
      'ESENZTICK_FK'
      'PRESTSPEC_FK')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      '   e.ESENZTICK_FK,'
      '   e.PRESTSPEC_FK,'
      '   p.descrizione'
      'from prestspec_esenzioni e'
      'join prestazioni_specialistiche p on p.ident = e.PRESTSPEC_FK'
      ' ')
    Params = <>
    QBEMode = False
    Left = 792
    Top = 256
    FastFields = (
      'ESENZTICK_FK,1,7'
      'PRESTSPEC_FK,1,12'
      'DESCRIZIONE,1,300')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qEsamiEsenzioniESENZTICK_FK: TStringField
      FieldName = 'ESENZTICK_FK'
      Size = 7
    end
    object qEsamiEsenzioniPRESTSPEC_FK: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'PRESTSPEC_FK'
      Size = 12
    end
    object qEsamiEsenzioniDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione esame'
      FieldName = 'DESCRIZIONE'
      Size = 300
    end
  end
  object sqEsamiEsenzioni: TDataSource
    DataSet = qEsamiEsenzioni
    Left = 884
    Top = 216
  end
  object cxEditRepository1: TcxEditRepository
    Left = 416
    Top = 356
    object repRegione: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODICE'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          Width = 30
          FieldName = 'CODICE'
        end
        item
          FieldName = 'DESCRIZIONE'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = sLkRegioni
    end
    object repComuni: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODICE'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'DESCRIZIONE'
        end
        item
          Width = 80
          FieldName = 'CODICE'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = sLkComuni
    end
    object repProvince: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'SIGLA'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'SIGLA'
        end
        item
          FieldName = 'DESCRIZIONE'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = sLkProvincie
    end
    object repAttivita: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'TIPO_ATTIVITA'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRIZIONE'
        end
        item
          Width = 40
          FieldName = 'TIPO_ATTIVITA'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = sqTipoAttivita
    end
  end
  object qMedici: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'MEDICI_BASE'
    PrimeFields.Strings = (
      'CODICE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'm.codice,'
      'm.medcognome,'
      'm.mednome,'
      'm.data_inizio,'
      'm.data_fine,'
      'm.tipo_medico,'
      'm.nominativo'
      'from medici_base m')
    Params = <>
    QBEMode = False
    Left = 412
    Top = 160
    FastFields = (
      'CODICE,1,16'
      'MEDCOGNOME,1,30'
      'MEDNOME,1,25'
      'DATA_INIZIO,11,0'
      'DATA_FINE,11,0'
      'TIPO_MEDICO,1,12'
      'NOMINATIVO,1,50')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qMediciDATA_INIZIO: TDateTimeField
      DisplayLabel = 'Inizio attivita'
      FieldName = 'DATA_INIZIO'
    end
    object qMediciDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine attivita'
      FieldName = 'DATA_FINE'
    end
    object qMediciNOMINATIVO: TStringField
      DisplayLabel = 'Nominativo'
      FieldName = 'NOMINATIVO'
      Size = 50
    end
    object qMediciTIPO_MEDICO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_MEDICO'
      Size = 12
    end
    object qMediciCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Required = True
      Size = 16
    end
    object qMediciMEDCOGNOME: TStringField
      DisplayLabel = 'Cognome'
      FieldName = 'MEDCOGNOME'
      Required = True
      Size = 30
    end
    object qMediciMEDNOME: TStringField
      FieldName = 'MEDNOME'
      Size = 25
    end
  end
  object sqMedici: TDataSource
    DataSet = qMedici
    Left = 468
    Top = 188
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentMedici
    Version = 0
    Left = 520
    Top = 244
    object dxComponentEsenzioni: TdxGridReportLink
      Active = True
      Component = GridEsenzioni
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
        'Elenco esenzioni')
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
      ReportDocument.CreationDate = 42382.730534571760000000
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
    object dxComponentASL: TdxGridReportLink
      Active = True
      Component = cxGridASL
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
        'Elenco ASL')
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
      ReportDocument.CreationDate = 42382.730534756940000000
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
    object dxComponentOspedali: TdxGridReportLink
      Active = True
      Component = GridOspedali
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
        'Elenco provenienze')
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
      ReportDocument.CreationDate = 42382.730534756940000000
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
    object dxComponentComuni: TdxGridReportLink
      Active = True
      Component = GridComuni
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
        'Elenco comuni')
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
      ReportDocument.CreationDate = 42382.730534756940000000
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
    object dxComponentRegioni: TdxGridReportLink
      Active = True
      Component = GridRegioniProv
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
        'Elenco regioni')
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
      ReportDocument.CreationDate = 42382.730534756940000000
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
    object dxComponentNazioni: TdxGridReportLink
      Active = True
      Component = GridNazioni
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
        'Elenco nazioni')
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
      ReportDocument.CreationDate = 42382.730534756940000000
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
    object dxComponentMedici: TdxGridReportLink
      Active = True
      Component = cxGMedici
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
        'Elenco medici')
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
      ReportDocument.CreationDate = 42382.730534756940000000
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
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManagerRadDiagn
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
      end>
    UseOwnFont = False
    Left = 568
    Top = 452
  end
  object qMotivi: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    OnNewRecord = qMotiviNewRecord
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'Read Only'
    UpdateTableName = 'TABSTATOVISITA'
    PrimeFields.Strings = (
      'STATOVISITA')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'statovisita,'
      'descrizione,'
      'flag_tipo'
      'from tabstatovisita'
      'where statovisita between 2000 and 2999'
      '--flag_tipo=1')
    Params = <>
    QBEMode = False
    Left = 796
    Top = 372
    FastFields = (
      'STATOVISITA,3,0'
      'DESCRIZIONE,1,60'
      'FLAG_TIPO,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qMotiviSTATOVISITA: TIntegerField
      DisplayLabel = 'Codice'
      FieldName = 'STATOVISITA'
      Required = True
    end
    object qMotiviDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 60
    end
    object qMotiviFLAG_TIPO: TIntegerField
      DisplayLabel = 'Definito utente'
      FieldName = 'FLAG_TIPO'
    end
  end
  object sqMotivi: TDataSource
    DataSet = qMotivi
    Left = 840
    Top = 384
  end
  object TipoTrasporto: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'TIPOTRASPORTO'
    PrimeFields.Strings = (
      'PKTRASPORTO')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'pktrasporto, '
      'descrizione, '
      'codihe,'
      'imageindex,'
      'data_fine'
      'from tipotrasporto')
    Params = <>
    QBEMode = False
    Left = 804
    Top = 476
    FastFields = (
      'PKTRASPORTO,3,0'
      'DESCRIZIONE,1,30'
      'CODIHE,1,4'
      'IMAGEINDEX,3,0'
      'DATA_FINE,11,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object TipoTrasportoPKTRASPORTO: TIntegerField
      DisplayLabel = 'Codice'
      FieldName = 'PKTRASPORTO'
      Required = True
    end
    object TipoTrasportoDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 30
    end
    object TipoTrasportoIMAGEINDEX: TIntegerField
      DisplayLabel = 'Image'
      FieldName = 'IMAGEINDEX'
    end
    object TipoTrasportoCODIHE: TStringField
      DisplayLabel = 'Codice esterno'
      FieldName = 'CODIHE'
      Size = 4
    end
    object TipoTrasportoDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine attivita'
      FieldName = 'DATA_FINE'
    end
  end
  object sTipoTrasporto: TDataSource
    DataSet = TipoTrasporto
    Left = 884
    Top = 476
  end
  object TipoUrgenza: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'TIPOURGENZA'
    PrimeFields.Strings = (
      'PKURGENZA')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'pkurgenza, '
      'descrizione, '
      'imageindex,'
      'codesterno,'
      'data_fine'
      'from tipourgenza')
    Params = <>
    QBEMode = False
    Left = 804
    Top = 552
    FastFields = (
      'PKURGENZA,3,0'
      'DESCRIZIONE,1,30'
      'IMAGEINDEX,3,0'
      'CODESTERNO,1,12'
      'DATA_FINE,11,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object TipoUrgenzaPKURGENZA: TIntegerField
      DisplayLabel = 'Codice'
      FieldName = 'PKURGENZA'
      Required = True
    end
    object TipoUrgenzaDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 30
    end
    object TipoUrgenzaIMAGEINDEX: TIntegerField
      DisplayLabel = 'Image'
      FieldName = 'IMAGEINDEX'
    end
    object TipoUrgenzaCODESTERNO: TStringField
      DisplayLabel = 'Cod.Esterno'
      FieldName = 'CODESTERNO'
      Size = 12
    end
    object TipoUrgenzaDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine attivita'
      FieldName = 'DATA_FINE'
    end
  end
  object sTipoUrgenza: TDataSource
    DataSet = TipoUrgenza
    Left = 880
    Top = 524
  end
  object sReparti: TDataSource
    DataSet = LkReparti
    OnDataChange = sRepartiDataChange
    Left = 624
    Top = 576
  end
  object LkReparti: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = LkRepartiBeforeQuery
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'Read Only'
    UpdateTableName = 'REPARTI'
    PrimeFields.Strings = (
      'PKREPARTI')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'pkreparti, '
      'descrizione,'
      'tipo_reparto'
      'from reparti'
      'where osp_codice=:osp_codice'
      'and tipo_reparto in ('#39'M'#39','#39'R'#39')'
      'and data_fine is null')
    Params = <
      item
        Name = 'osp_codice'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = '120043'
      end>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      0300000008000000090000004652455155454E5A4101000000000A0000005345
      5256495A495F464B010000000010000000504B54455354495F5354414E444152
      440100000000060000004C494E47554101000000000B0000004445534352495A
      494F4E4501000000001100000054455354495F5354414E444152445F464B0100
      000000070000004C4956454C4C4F01000000000E0000005449504F5245464552
      544F5F464B0100000000}
    Left = 676
    Top = 581
    FastFields = (
      'PKREPARTI,3,0'
      'DESCRIZIONE,1,60'
      'TIPO_REPARTO,1,1')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object LkRepartiPKREPARTI: TIntegerField
      FieldName = 'PKREPARTI'
      Visible = False
    end
    object LkRepartiDESCRIZIONE: TStringField
      DisplayLabel = 'Reparto'
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 60
    end
    object LkRepartiTIPO_REPARTO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_REPARTO'
      Size = 1
    end
  end
  object ColorixRep: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = ColorixRepBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'COLORIXREP'
    PrimeFields.Strings = (
      'REPARTI_FK'
      'URGENZA_FK')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'c.reparti_fk,'
      'c.urgenza_fk,'
      'c.posizione,'
      't.descrizione,'
      't.imageindex'
      'from colorixrep c, tipourgenza t'
      'where c.reparti_fk = :reparti_fk'
      'and t.pkurgenza = c.urgenza_fk')
    Params = <
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftUnknown
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 740
    Top = 600
    FastFields = (
      'REPARTI_FK,3,0'
      'URGENZA_FK,3,0'
      'POSIZIONE,3,0'
      'DESCRIZIONE,1,30'
      'IMAGEINDEX,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object ColorixRepREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object ColorixRepURGENZA_FK: TIntegerField
      DisplayLabel = 'Codice'
      FieldName = 'URGENZA_FK'
    end
    object ColorixRepDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 30
    end
    object ColorixRepIMAGEINDEX: TIntegerField
      DisplayLabel = 'Image'
      FieldName = 'IMAGEINDEX'
    end
    object ColorixRepPOSIZIONE: TIntegerField
      DisplayLabel = 'Pos.'
      FieldName = 'POSIZIONE'
    end
  end
  object sColorixRep: TDataSource
    DataSet = ColorixRep
    Left = 780
    Top = 620
  end
  object Sconosciuti: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = SconosciutiBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'ANAG_SCONOSCIUTI'
    PrimeFields.Strings = (
      'ASSISTIBILI_FK')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      's.assistibili_fk,'
      'a.cognome,'
      'a.nome,'
      'a.data_nascita,'
      'substr(s.descrizione,1,1) as ses_codice'
      'from anag_sconosciuti s'
      'join assistibili a on a.pkassistibili = s.assistibili_fk'
      
        'left join wtbd_sesso s on s.ses_codice = a.ses_codice and s.ling' +
        'ua = :lingua'
      ' ')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 956
    Top = 432
    FastFields = (
      'ASSISTIBILI_FK,3,0'
      'COGNOME,1,40'
      'NOME,1,40'
      'DATA_NASCITA,11,0'
      'SES_CODICE,1,1')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object SconosciutiCOGNOME: TStringField
      DisplayLabel = 'Cognome'
      FieldName = 'COGNOME'
      Size = 36
    end
    object SconosciutiNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 36
    end
    object SconosciutiDATA_NASCITA: TDateTimeField
      DisplayLabel = 'Data nascita'
      FieldName = 'DATA_NASCITA'
    end
    object SconosciutiSES_CODICE: TStringField
      DisplayLabel = 'Sesso'
      FieldName = 'SES_CODICE'
      Size = 1
    end
    object SconosciutiASSISTIBILI_FK: TIntegerField
      DisplayLabel = 'PID'
      FieldName = 'ASSISTIBILI_FK'
      Origin = 's.assistibili_fk'
    end
  end
  object sSconosciuti: TDataSource
    DataSet = Sconosciuti
    Left = 992
    Top = 484
  end
  object qFeste: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'After Post'
    UpdateTableName = 'FESTE'
    PrimeFields.Strings = (
      'DATA_FESTA')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'data_festa,'
      'descrizione'
      'from feste'
      ' ')
    Params = <>
    QBEMode = False
    Left = 964
    Top = 356
    FastFields = (
      'DATA_FESTA,11,0'
      'DESCRIZIONE,1,50')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qFesteDATA_FESTA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA_FESTA'
      Required = True
      DisplayFormat = 'ddddd'
    end
    object qFesteDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 50
    end
  end
  object sFeste: TDataSource
    DataSet = qFeste
    Left = 1008
    Top = 380
  end
  object qTipoMedico: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'After Post'
    UpdateTableName = 'TIPO_MEDICO'
    PrimeFields.Strings = (
      'TIPO_MEDICO')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'tipo_medico,'
      'descrizione'
      'from tipo_medico')
    Params = <>
    QBEMode = False
    Left = 984
    Top = 232
    FastFields = (
      'TIPO_MEDICO,1,12'
      'DESCRIZIONE,1,100')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qTipoMedicoTIPO_MEDICO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_MEDICO'
      Size = 12
    end
    object qTipoMedicoDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
  end
  object sTipoMedico: TDataSource
    DataSet = qTipoMedico
    Left = 1008
    Top = 296
  end
  object qTipoAccesso: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'TIPO_ACCESSO'
    PrimeFields.Strings = (
      'TIPO_ACCESSO')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'tipo_accesso, '
      'descrizione, '
      'data_inizio, '
      'data_fine,'
      'urgenza_fk'
      'from tipo_accesso')
    Params = <>
    QBEMode = False
    Left = 928
    Top = 128
    FastFields = (
      'TIPO_ACCESSO,1,12'
      'DESCRIZIONE,1,100'
      'DATA_INIZIO,11,0'
      'DATA_FINE,11,0'
      'URGENZA_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qTipoAccessoTIPO_ACCESSO: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'TIPO_ACCESSO'
      Size = 2
    end
    object qTipoAccessoDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object qTipoAccessoDATA_INIZIO: TDateTimeField
      DisplayLabel = 'Inizio attivita'
      FieldName = 'DATA_INIZIO'
    end
    object qTipoAccessoDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine attivita'
      FieldName = 'DATA_FINE'
    end
    object qTipoAccessoURGENZA_FK: TIntegerField
      DisplayLabel = 'Urgenza'
      FieldName = 'URGENZA_FK'
    end
  end
  object sTipoAccesso: TDataSource
    DataSet = qTipoAccesso
    Left = 980
    Top = 176
  end
  object qBranche: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'BRANCHE'
    PrimeFields.Strings = (
      'PKBRANCHE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'descrizione, '
      'data_fine, '
      'nota, '
      'pkbranche, '
      'data_inizio,'
      'device'
      'from branche')
    Params = <>
    QBEMode = False
    Left = 112
    Top = 274
    FastFields = (
      'DESCRIZIONE,1,60'
      'DATA_FINE,11,0'
      'NOTA,1,200'
      'PKBRANCHE,1,3'
      'DATA_INIZIO,11,0'
      'DEVICE,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qBrancheDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 60
    end
    object qBrancheDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine validita'
      FieldName = 'DATA_FINE'
    end
    object qBrancheNOTA: TStringField
      DisplayLabel = 'Note'
      FieldName = 'NOTA'
      Size = 200
    end
    object qBranchePKBRANCHE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'PKBRANCHE'
      Size = 3
    end
    object qBrancheDATA_INIZIO: TDateTimeField
      DisplayLabel = 'Inizio validita'
      FieldName = 'DATA_INIZIO'
    end
    object qBrancheDEVICE: TIntegerField
      DisplayLabel = 'Collegamento'
      FieldName = 'DEVICE'
    end
  end
  object sqBranche: TDataSource
    DataSet = qBranche
    Left = 128
    Top = 202
  end
  object qAnatomical: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'After Post'
    UpdateTableName = 'ACR_ANATOMICAL'
    PrimeFields.Strings = (
      'KEY')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'key,'
      'parent,'
      'aid, '
      'description'
      'from acr_anatomical')
    Params = <>
    QBEMode = False
    Left = 124
    Top = 554
    FastFields = (
      'KEY,1,10'
      'PARENT,1,10'
      'AID,1,2'
      'DESCRIPTION,1,200')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qAnatomicalAID: TStringField
      FieldName = 'AID'
      Size = 2
    end
    object qAnatomicalDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object qAnatomicalKEY: TStringField
      DisplayLabel = 'Key'
      FieldName = 'KEY'
      Size = 10
    end
    object qAnatomicalPARENT: TStringField
      DisplayLabel = 'Parent'
      FieldName = 'PARENT'
      Size = 10
    end
  end
  object qPatological: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_Patological'
        Fields = 'AID;KEY'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_Patological'
    Aggregates = <>
    Active = False
    Constraints = <>
    OnNewRecord = qPatologicalNewRecord
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'PATOLOGICAL'
    PrimeFields.Strings = (
      'AID'
      'PID')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'key,'
      'parent,'
      'aid, '
      'description'
      'from acr_patological')
    Params = <>
    QBEMode = False
    Left = 224
    Top = 562
    FastFields = (
      'KEY,1,10'
      'PARENT,1,10'
      'AID,1,2'
      'DESCRIPTION,1,200')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qPatologicalAID: TStringField
      DisplayLabel = 'Cod. anatomico'
      FieldName = 'AID'
      Size = 2
    end
    object qPatologicalDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object qPatologicalKEY: TStringField
      DisplayLabel = 'Key'
      FieldName = 'KEY'
      Size = 10
    end
    object qPatologicalPARENT: TStringField
      DisplayLabel = 'Parent'
      FieldName = 'PARENT'
      Size = 10
    end
  end
  object sqAnatomical: TDataSource
    DataSet = qAnatomical
    Left = 168
    Top = 550
  end
  object sqpatological: TDataSource
    DataSet = qPatological
    Left = 272
    Top = 574
  end
  object scrTipoLivello: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'After Post'
    UpdateTableName = 'TABTIPOLIVELLO'
    PrimeFields.Strings = (
      'TIPO')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'tipo, '
      'descrizione, '
      'livello, '
      'invia_referto'
      'from tabtipolivello')
    Params = <>
    QBEMode = False
    Left = 988
    Top = 552
    FastFields = (
      'TIPO,1,5'
      'DESCRIZIONE,1,100'
      'LIVELLO,3,0'
      'INVIA_REFERTO,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object scrTipoLivelloTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Size = 5
    end
    object scrTipoLivelloDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object scrTipoLivelloLIVELLO: TIntegerField
      DisplayLabel = 'Livello'
      FieldName = 'LIVELLO'
    end
    object scrTipoLivelloINVIA_REFERTO: TIntegerField
      DisplayLabel = 'Invio referto'
      FieldName = 'INVIA_REFERTO'
    end
  end
  object sscrTipoLivello: TDataSource
    DataSet = scrTipoLivello
    Left = 948
    Top = 532
  end
  object scrTabEsitoScreening: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_scrTabEsito'
        Fields = 'tipolivello_fk'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_scrTabEsito'
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.Field = 'PKESITISCR'
    SequenceField.Sequence = 'TABESITOSCREENING_PKESITOSCR'
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'Read Only'
    UpdateTableName = 'TABESITOSCREENING'
    PrimeFields.Strings = (
      'PKESITISCR')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'codice_esterno, '
      'descrizione, '
      'pkesitiscr, '
      'tipolivello_fk,'
      'data_fine,'
      'shortcut,'
      'revisore'
      'from tabesitoscreening')
    Params = <>
    QBEMode = False
    Left = 1100
    Top = 564
    FastFields = (
      'CODICE_ESTERNO,1,12'
      'DESCRIZIONE,1,100'
      'PKESITISCR,3,0'
      'TIPOLIVELLO_FK,1,5'
      'DATA_FINE,11,0'
      'SHORTCUT,1,32'
      'REVISORE,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object scrTabEsitoScreeningCODICE_ESTERNO: TStringField
      DisplayLabel = 'Codice esterno'
      FieldName = 'CODICE_ESTERNO'
      Size = 12
    end
    object scrTabEsitoScreeningDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object scrTabEsitoScreeningPKESITISCR: TIntegerField
      FieldName = 'PKESITISCR'
    end
    object scrTabEsitoScreeningTIPOLIVELLO_FK: TStringField
      FieldName = 'TIPOLIVELLO_FK'
      Size = 5
    end
    object scrTabEsitoScreeningDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine validita'
      FieldName = 'DATA_FINE'
    end
    object scrTabEsitoScreeningSHORTCUT: TStringField
      DisplayLabel = 'ShortCut'
      FieldName = 'SHORTCUT'
      Size = 32
    end
    object scrTabEsitoScreeningREVISORE: TIntegerField
      DisplayLabel = 'Revisore'
      FieldName = 'REVISORE'
    end
  end
  object sscrTabEsitoScreening: TDataSource
    DataSet = scrTabEsitoScreening
    Left = 1084
    Top = 532
  end
  object scrEsamixlivello: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    NoSQLFields.Strings = (
      'DESCRIZIONE')
    EditMode = 'After Post'
    UpdateTableName = 'ESAMIXLIVELLO'
    PrimeFields.Strings = (
      'CODICIRAD_FK'
      'TIPOLIVELLO_FK')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'e.codicirad_fk, '
      'e.tipolivello_fk,'
      'c.descrizione,'
      'c.codice'
      'from esamixlivello e, codicirad c'
      'where c.pkcodicirad=e.codicirad_fk'
      'order by e.tipolivello_fk')
    Params = <>
    QBEMode = False
    Left = 1176
    Top = 544
    FastFields = (
      'CODICIRAD_FK,3,0'
      'TIPOLIVELLO_FK,1,5'
      'DESCRIZIONE,1,50'
      'CODICE,1,12')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object scrEsamixlivelloCODICIRAD_FK: TIntegerField
      DisplayLabel = 'Codice'
      FieldName = 'CODICIRAD_FK'
    end
    object scrEsamixlivelloTIPOLIVELLO_FK: TStringField
      FieldName = 'TIPOLIVELLO_FK'
      Size = 5
    end
    object scrEsamixlivelloDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
    object scrEsamixlivelloCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
  end
  object sscrEsamixlivello: TDataSource
    DataSet = scrEsamixlivello
    Left = 1152
    Top = 516
  end
  object CodiciRad: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    NoSQLFields.Strings = (
      'NOMENCLATORE'
      'REAL_NAME')
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
      'c.pkcodicirad,'
      'c.ident_fk'
      'from'
      '     codicirad c'
      'where (c.data_fine is null or c.data_fine>sysdate) and'
      '           (c.data_inizio is null or c.data_inizio<=sysdate)')
    Params = <>
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
    Left = 1210
    Top = 500
    FastFields = (
      'CODICE,1,12'
      'DESCRIZIONE,1,100'
      'PKCODICIRAD,3,0'
      'IDENT_FK,1,12')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object CodiciRadCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object CodiciRadDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
    object CodiciRadPKCODICIRAD: TIntegerField
      FieldName = 'PKCODICIRAD'
    end
    object CodiciRadIDENT_FK: TStringField
      FieldName = 'IDENT_FK'
      Size = 12
    end
  end
  object sCodiciRad: TDataSource
    DataSet = CodiciRad
    Left = 1208
    Top = 456
  end
  object qTipoRicetta: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'After Post'
    UpdateTableName = 'TIPO_RICETTA'
    PrimeFields.Strings = (
      'TIPO_RICETTA')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'tipo_ricetta,'
      'descrizione,'
      'tipo_com_res,'
      'flag_stp,'
      'tipo_attivita_fk,'
      'data_inizio,'
      'data_fine'
      'from tipo_ricetta'
      'where (data_inizio is null or data_inizio<=sysdate)'
      'and (data_fine is null or data_fine>sysdate)')
    Params = <>
    QBEMode = False
    Left = 1144
    Top = 332
    FastFields = (
      'TIPO_RICETTA,1,5'
      'DESCRIZIONE,1,100'
      'TIPO_COM_RES,1,10'
      'FLAG_STP,3,0'
      'TIPO_ATTIVITA_FK,1,2'
      'DATA_INIZIO,11,0'
      'DATA_FINE,11,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qTipoRicettaTIPO_RICETTA: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'TIPO_RICETTA'
      Required = True
      Size = 5
    end
    object qTipoRicettaDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 100
    end
    object qTipoRicettaTIPO_COM_RES: TStringField
      FieldName = 'TIPO_COM_RES'
      Size = 10
    end
    object qTipoRicettaFLAG_STP: TIntegerField
      FieldName = 'FLAG_STP'
    end
    object qTipoRicettaTIPO_ATTIVITA_FK: TStringField
      DisplayLabel = 'Tipo attivita'
      FieldName = 'TIPO_ATTIVITA_FK'
      Size = 2
    end
    object qTipoRicettaDATA_INIZIO: TDateTimeField
      DisplayLabel = 'Inizio attivita'
      FieldName = 'DATA_INIZIO'
    end
    object qTipoRicettaDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine attivita'
      FieldName = 'DATA_FINE'
    end
  end
  object sTipoRicetta: TDataSource
    DataSet = qTipoRicetta
    Left = 1140
    Top = 396
  end
  object qComStradario: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select distinct '
      's.cod_com, '
      'c.descrizione'
      'from stradario s, comuni c'
      'where c.codice=s.cod_com')
    Params = <>
    QBEMode = False
    Left = 1120
    Top = 158
    FastFields = (
      'COD_COM,1,13'
      'DESCRIZIONE,1,60')
    FMultiTable = ()
    UpdateMethod = umManual
    object qComStradarioCOD_COM: TStringField
      FieldName = 'COD_COM'
      Size = 13
    end
    object qComStradarioDESCRIZIONE: TStringField
      DisplayLabel = 'Comune'
      FieldName = 'DESCRIZIONE'
      Size = 60
    end
  end
  object qStradario: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    OnNewRecord = qStradarioNewRecord
    SequenceField.ApplyMoment = amOnPost
    EditMode = ' Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      's.codice,'
      's.cap,'
      's.intervalli,'
      's.note,'
      's.cod_com,'
      's.indirizzo,'
      's.circoscrizione,'
      's.cod_reg,'
      's.cod_asl'
      'from stradario s'
      'where s.cod_com = :cod_com')
    Params = <
      item
        Name = 'cod_com'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 1148
    Top = 214
    FastFields = (
      'CODICE,1,17'
      'CAP,1,6'
      'INTERVALLI,1,80'
      'NOTE,1,45'
      'COD_COM,1,13'
      'INDIRIZZO,1,60'
      'CIRCOSCRIZIONE,1,10'
      'COD_REG,1,3'
      'COD_ASL,1,3')
    FMultiTable = ()
    UpdateMethod = umManual
    object qStradarioCAP: TStringField
      FieldName = 'CAP'
      Required = True
      Size = 5
    end
    object qStradarioINTERVALLI: TStringField
      DisplayLabel = 'Intervalli'
      FieldName = 'INTERVALLI'
      Size = 80
    end
    object qStradarioNOTE: TStringField
      DisplayLabel = 'Note'
      FieldName = 'NOTE'
      Size = 45
    end
    object qStradarioCOD_COM: TStringField
      FieldName = 'COD_COM'
      Size = 13
    end
    object qStradarioINDIRIZZO: TStringField
      DisplayLabel = 'Indirizzo'
      FieldName = 'INDIRIZZO'
      Required = True
      Size = 60
    end
    object qStradarioCIRCOSCRIZIONE: TStringField
      DisplayLabel = 'Circoscrizione'
      FieldName = 'CIRCOSCRIZIONE'
      Size = 6
    end
    object qStradarioCOD_REG: TStringField
      DisplayLabel = 'Cod.Reg.'
      FieldName = 'COD_REG'
      Size = 3
    end
    object qStradarioCOD_ASL: TStringField
      DisplayLabel = 'Cod.ASL'
      FieldName = 'COD_ASL'
      Size = 3
    end
    object qStradarioCODICE: TStringField
      FieldName = 'CODICE'
      Size = 17
    end
  end
  object sqComStradario: TDataSource
    DataSet = qComStradario
    Left = 1188
    Top = 166
  end
  object sqStradario: TDataSource
    DataSet = qStradario
    Left = 1200
    Top = 242
  end
  object qTipoInvio: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'After Post'
    UpdateTableName = 'TIPOINVIO'
    PrimeFields.Strings = (
      'PKINVIO')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'pkinvio, '
      'descrizione, '
      'attivo'
      'from tipoinvio')
    Params = <>
    QBEMode = False
    Left = 428
    Top = 552
    FastFields = (
      'PKINVIO,1,2'
      'DESCRIZIONE,1,100'
      'ATTIVO,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qTipoInvioPKINVIO: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'PKINVIO'
      Size = 2
    end
    object qTipoInvioDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object qTipoInvioATTIVO: TIntegerField
      DisplayLabel = 'Attivo'
      FieldName = 'ATTIVO'
    end
  end
  object sqTipoInvio: TDataSource
    DataSet = qTipoInvio
    Left = 480
    Top = 576
  end
  object qSmartCard: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    OnNewRecord = qSmartCardNewRecord
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'After Post'
    UpdateTableName = 'SMARTCARD'
    PrimeFields.Strings = (
      'TIPO_CARTA')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'tipo_carta, '
      'descrizione, '
      'dll_name, '
      'private_key, '
      'attivo'
      'from smartcard')
    Params = <>
    QBEMode = False
    Left = 556
    Top = 606
    FastFields = (
      'TIPO_CARTA,3,0'
      'DESCRIZIONE,1,100'
      'DLL_NAME,1,50'
      'PRIVATE_KEY,1,50'
      'ATTIVO,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qSmartCardTIPO_CARTA: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_CARTA'
      Required = True
    end
    object qSmartCardDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 100
    end
    object qSmartCardDLL_NAME: TStringField
      DisplayLabel = 'Nome DLL'
      FieldName = 'DLL_NAME'
      Required = True
      Size = 50
    end
    object qSmartCardPRIVATE_KEY: TStringField
      DisplayLabel = 'Private key'
      FieldName = 'PRIVATE_KEY'
      Size = 50
    end
    object qSmartCardATTIVO: TIntegerField
      DisplayLabel = 'Attiva'
      FieldName = 'ATTIVO'
    end
  end
  object sqSmartCard: TDataSource
    DataSet = qSmartCard
    OnDataChange = sRepartiDataChange
    Left = 600
    Top = 636
  end
  object qUSL_COM: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    OnNewRecord = qUSL_COMNewRecord
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'After Post'
    UpdateTableName = 'USL_COM'
    PrimeFields.Strings = (
      'COD_ASL'
      'CODCOM'
      'REG_CODICE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'uc.cod_asl,'
      'uc.codcom,'
      'uc.reg_codice'
      'from usl_com uc'
      'where uc.cod_asl = :codice'
      'and uc.reg_codice = :reg_codice'
      '')
    Params = <
      item
        Name = 'codice'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'reg_codice'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 68
    Top = 486
    FastFields = (
      'COD_ASL,1,3'
      'CODCOM,1,13'
      'REG_CODICE,1,3')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qUSL_COMCOD_ASL: TStringField
      FieldName = 'COD_ASL'
      Size = 3
    end
    object qUSL_COMCODCOM: TStringField
      FieldName = 'CODCOM'
      Size = 13
    end
    object qUSL_COMREG_CODICE: TStringField
      FieldName = 'REG_CODICE'
      Size = 3
    end
  end
  object sqUSL_COM: TDataSource
    DataSet = qUSL_COM
    Left = 128
    Top = 506
  end
  object qCOM_USL: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    OnNewRecord = qCOM_USLNewRecord
    SequenceField.ApplyMoment = amOnPost
    NoSQLFields.Strings = (
      'descrizione')
    EditMode = 'Read Only'
    UpdateTableName = 'USL_COM'
    PrimeFields.Strings = (
      'COD_ASL'
      'CODCOM'
      'REG_CODICE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select '
      'uc.cod_asl,'
      'uc.codcom,'
      'uc.reg_codice,'
      'a.descrizione'
      'from usl_com uc, aziende_speciali_usl a'
      'where uc.codcom = :codcom'
      'and a.reg_codice = uc.reg_codice'
      'and a.codice = uc.cod_asl')
    Params = <
      item
        Name = 'codcom'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 112
    Top = 314
    FastFields = (
      'COD_ASL,1,3'
      'CODCOM,1,13'
      'REG_CODICE,1,3'
      'DESCRIZIONE,1,60')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qCOM_USLCOD_ASL: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_ASL'
      Size = 3
    end
    object qCOM_USLCODCOM: TStringField
      FieldName = 'CODCOM'
      Size = 13
    end
    object qCOM_USLREG_CODICE: TStringField
      FieldName = 'REG_CODICE'
      Size = 3
    end
    object qCOM_USLDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione ASL'
      FieldName = 'DESCRIZIONE'
      Size = 60
    end
  end
  object sqCOM_USL: TDataSource
    DataSet = qCOM_USL
    Left = 160
    Top = 326
  end
  object qLkASL: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_LkAsl'
        Fields = 'REG_CODICE'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_LkAsl'
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'AZIENDE_SPECIALI_USL'
    PrimeFields.Strings = (
      'REG_CODICE'
      'CODICE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'a.reg_codice,'
      'a.codice,'
      'a.descrizione,'
      'a.data_inizio,'
      'a.data_fine,'
      'a.indirizzo,'
      'a.com_codice,'
      'a.cap'
      'from aziende_speciali_usl a'
      '')
    Params = <>
    QBEMode = False
    Left = 40
    Top = 344
    FastFields = (
      'REG_CODICE,1,3'
      'CODICE,1,3'
      'DESCRIZIONE,1,60'
      'DATA_INIZIO,11,0'
      'DATA_FINE,11,0'
      'INDIRIZZO,1,300'
      'COM_CODICE,1,13'
      'CAP,1,10')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qLkASLREG_CODICE: TStringField
      DisplayLabel = 'Regione'
      FieldName = 'REG_CODICE'
      Size = 3
    end
    object qLkASLCODICE: TStringField
      DisplayLabel = 'Codice ASL'
      FieldName = 'CODICE'
      Required = True
      Size = 3
    end
    object qLkASLDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 60
    end
    object qLkASLDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine validita'
      FieldName = 'DATA_FINE'
    end
    object qLkASLINDIRIZZO: TStringField
      DisplayLabel = 'Indirizzo'
      FieldName = 'INDIRIZZO'
      Size = 300
    end
    object qLkASLCOM_CODICE: TStringField
      DisplayLabel = 'Comune'
      FieldName = 'COM_CODICE'
      Required = True
      Size = 13
    end
    object qLkASLCAP: TStringField
      DisplayLabel = 'cap'
      FieldName = 'CAP'
      Size = 10
    end
    object qLkASLDATA_INIZIO: TDateTimeField
      DisplayLabel = 'Inizio validita'
      FieldName = 'DATA_INIZIO'
    end
  end
  object sqLkASL: TDataSource
    DataSet = qLkASL
    Left = 72
    Top = 310
  end
  object qTipo_Modalita: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'After Post'
    UpdateTableName = 'TIPO_MODALITA'
    PrimeFields.Strings = (
      'TIPO_MODALITA')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'tipo_modalita,'
      'descrizione'
      'from tipo_modalita')
    Params = <>
    QBEMode = False
    Left = 296
    Top = 200
    FastFields = (
      'TIPO_MODALITA,1,5'
      'DESCRIZIONE,1,60')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qTipo_ModalitaTIPO_MODALITA: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'TIPO_MODALITA'
      Required = True
      Size = 5
    end
    object qTipo_ModalitaDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 60
    end
  end
  object sqTipoModalita: TDataSource
    DataSet = qTipo_Modalita
    Left = 324
    Top = 180
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
    Left = 656
    Top = 214
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
    Left = 832
    Top = 246
  end
  object qBlocchi: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.Field = 'PKTIPO_BLOCCO'
    SequenceField.Sequence = 'BLOCCHI_PKBLOCCHI'
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'After Post'
    UpdateTableName = 'TIPO_BLOCCO'
    PrimeFields.Strings = (
      'PKTIPO_BLOCCO')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'pktipo_blocco, '
      'descrizione'
      'from tipo_blocco')
    Params = <>
    QBEMode = False
    Left = 928
    Top = 630
    FastFields = (
      'PKTIPO_BLOCCO,3,0'
      'DESCRIZIONE,1,100')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qBlocchiPKTIPO_BLOCCO: TIntegerField
      DisplayLabel = 'Codice'
      FieldName = 'PKTIPO_BLOCCO'
    end
    object qBlocchiDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
  end
  object sqBlocchi: TDataSource
    DataSet = qBlocchi
    Left = 988
    Top = 644
  end
  object sqSET_COLORI: TDataSource
    DataSet = qSET_COLORI
    Left = 1063
    Top = 126
  end
  object qSET_COLORI: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'SET_COLORI'
    PrimeFields.Strings = (
      'PKSET_COLORI')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      '  c.PKSET_COLORI,'
      '  c.ELEMENTO,'
      '  c.COLORE'
      'from'
      '  SET_COLORI c')
    Params = <>
    QBEMode = False
    Left = 1007
    Top = 110
    FastFields = (
      'PKSET_COLORI,3,0'
      'ELEMENTO,1,200'
      'COLORE,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qSET_COLORIPKSET_COLORI: TIntegerField
      DisplayLabel = 'Codice'
      FieldName = 'PKSET_COLORI'
    end
    object qSET_COLORIELEMENTO: TStringField
      DisplayLabel = 'Elemento'
      FieldName = 'ELEMENTO'
      Size = 200
    end
    object qSET_COLORICOLORE: TIntegerField
      DisplayLabel = 'Colore'
      FieldName = 'COLORE'
    end
  end
  object qProfili: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.Field = 'PKPROFILI'
    SequenceField.Sequence = 'PROFILI_PKPROFILI'
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'After Post'
    UpdateTableName = 'PROFILI'
    PrimeFields.Strings = (
      'PKPROFILI')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'descrizione, '
      'profilo, '
      'immagini, '
      'referto, '
      'blocchi, '
      'cup, '
      'eseguito, '
      'pkprofili, '
      'sposta, '
      'setup'
      'from profili')
    Params = <>
    QBEMode = False
    Left = 1236
    Top = 386
    FastFields = (
      'DESCRIZIONE,1,30'
      'PROFILO,30,0'
      'IMMAGINI,3,0'
      'REFERTO,3,0'
      'BLOCCHI,3,0'
      'CUP,3,0'
      'ESEGUITO,3,0'
      'PKPROFILI,3,0'
      'SPOSTA,3,0'
      'SETUP,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qProfiliDESCRIZIONE: TStringField
      DisplayLabel = 'Nome profilo'
      FieldName = 'DESCRIZIONE'
      Size = 30
    end
    object qProfiliPROFILO: TBlobField
      FieldName = 'PROFILO'
      BlobType = ftOraBlob
    end
    object qProfiliIMMAGINI: TIntegerField
      DisplayLabel = 'Immagini'
      FieldName = 'IMMAGINI'
    end
    object qProfiliREFERTO: TIntegerField
      DisplayLabel = 'Referto'
      FieldName = 'REFERTO'
    end
    object qProfiliBLOCCHI: TIntegerField
      DisplayLabel = 'Blocchi'
      FieldName = 'BLOCCHI'
    end
    object qProfiliCUP: TIntegerField
      FieldName = 'CUP'
    end
    object qProfiliESEGUITO: TIntegerField
      DisplayLabel = 'Eseguito'
      FieldName = 'ESEGUITO'
    end
    object qProfiliPKPROFILI: TIntegerField
      FieldName = 'PKPROFILI'
    end
    object qProfiliSPOSTA: TIntegerField
      DisplayLabel = 'Sposta'
      FieldName = 'SPOSTA'
    end
    object qProfiliSETUP: TIntegerField
      DisplayLabel = 'Setup'
      FieldName = 'SETUP'
    end
  end
  object sqProfili: TDataSource
    DataSet = qProfili
    Left = 1260
    Top = 450
  end
  object qAudit: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'After Post'
    UpdateTableName = 'RB_TABLE'
    PrimeFields.Strings = (
      'TABLE_NAME')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'rt.table_name,'
      'rt.descrizione,'
      'rt.log_var'
      'from rb_table rt'
      'where rt.table_type=1'
      'and rt.log_var<>2')
    Params = <>
    DirectModify = [tsyUpdate]
    UpdateObject = updqAudit
    QBEMode = False
    Left = 1252
    Top = 562
    FastFields = (
      'TABLE_NAME,1,60'
      'DESCRIZIONE,1,200'
      'LOG_VAR,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qAuditTABLE_NAME: TStringField
      DisplayLabel = 'Nome tabella'
      FieldName = 'TABLE_NAME'
      Size = 60
    end
    object qAuditDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 200
    end
    object qAuditLOG_VAR: TIntegerField
      DisplayLabel = 'Audit'
      FieldName = 'LOG_VAR'
    end
  end
  object sqAudit: TDataSource
    DataSet = qAudit
    Left = 1300
    Top = 558
  end
  object updqAudit: TAstaUpdateSQL
    ModifySQL.Strings = (
      'declare'
      '  temp varchar2(16000);'
      'begin'
      '  if :LOG_VAR<>:OLD_LOG_VAR then'
      '     if :LOG_VAR=1 then'
      '        temp := audit_pkg.CreaTrigger(:TABLE_NAME);'
      '     else'
      '        temp := audit_pkg.EliminaTrigger(:TABLE_NAME);'
      '     end if;'
      '     execute immediate temp;'
      '  end if;'
      ''
      'end; ')
    Left = 1280
    Top = 522
  end
  object qFesteReparto: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    OnNewRecord = qFesteRepartoNewRecord
    BeforeQuery = qFesteRepartoBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'After Post'
    UpdateTableName = 'FESTEXREP'
    PrimeFields.Strings = (
      'DATA_FESTA')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'data_festa,'
      'descrizione,'
      'reparti_fk'
      'from festexrep'
      'where reparti_fk=:reparti_fk')
    Params = <
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    DirectModify = [tsyInsert, tsyUpdate]
    UpdateObject = updqFesteReparto
    QBEMode = False
    Left = 1064
    Top = 454
    FastFields = (
      'DATA_FESTA,11,0'
      'DESCRIZIONE,1,50'
      'REPARTI_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qFesteRepartoDATA_FESTA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA_FESTA'
      Required = True
    end
    object qFesteRepartoDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 50
    end
    object qFesteRepartoREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
  end
  object sqFesteReparto: TDataSource
    DataSet = qFesteReparto
    Left = 1124
    Top = 474
  end
  object qVerificaStampe: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'After Post'
    UpdateTableName = 'VERIFICASTAMPE'
    PrimeFields.Strings = (
      'PKVERIFICASTAMPE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'pkverificastampe, '
      'nomestampa, '
      'stmt'
      'from verificastampe')
    SQLOptions = [soFetchMemos, soFetchBlobs]
    Params = <>
    QBEMode = False
    Left = 1232
    Top = 322
    FastFields = (
      'PKVERIFICASTAMPE,3,0'
      'NOMESTAMPA,1,50'
      'STMT,31,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qVerificaStampePKVERIFICASTAMPE: TIntegerField
      DisplayLabel = 'Codice'
      FieldName = 'PKVERIFICASTAMPE'
    end
    object qVerificaStampeNOMESTAMPA: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOMESTAMPA'
      Size = 50
    end
    object qVerificaStampeSTMT: TMemoField
      FieldName = 'STMT'
      BlobType = ftOraClob
    end
  end
  object sqVerificaStampe: TDataSource
    DataSet = qVerificaStampe
    Left = 1284
    Top = 314
  end
  object dxBarPopupVerificaStampe: TdxBarPopupMenu
    BarManager = dxBarManagerRadDiagn
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end>
    UseOwnFont = False
    Left = 700
    Top = 474
  end
  object qPrestSpec: TAstaClientDataSet
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
      'ps.ident,'
      'ps.descrizione'
      'from prestazioni_specialistiche ps'
      'where (ps.data_inizio is null or ps.data_inizio<=sysdate) and'
      '(ps.data_fine is null or ps.data_fine>sysdate)')
    Params = <>
    QBEMode = False
    Left = 304
    Top = 330
    FastFields = (
      'IDENT,1,12'
      'DESCRIZIONE,1,300')
    FMultiTable = ()
    UpdateMethod = umManual
    object qPrestSpecIDENT: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'IDENT'
      Size = 12
    end
    object qPrestSpecDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 300
    end
  end
  object sqPrestSpec: TDataSource
    DataSet = qPrestSpec
    Left = 356
    Top = 322
  end
  object qSkin: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'TABSKIN'
    PrimeFields.Strings = (
      'PKTABSKIN')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'pktabskin, '
      'nome, '
      'skin,'
      'textcolor'
      'from tabskin')
    SQLOptions = [soFetchMemos, soFetchBlobs]
    Params = <>
    QBEMode = False
    Left = 1256
    Top = 226
    FastFields = (
      'PKTABSKIN,3,0'
      'NOME,1,100'
      'SKIN,30,0'
      'TEXTCOLOR,1,50')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qSkinPKTABSKIN: TIntegerField
      DisplayLabel = 'Nr.'
      FieldName = 'PKTABSKIN'
      Required = True
    end
    object qSkinNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object qSkinSKIN: TBlobField
      DisplayLabel = 'Skin'
      FieldName = 'SKIN'
      BlobType = ftOraBlob
    end
    object qSkinTEXTCOLOR: TStringField
      DisplayLabel = 'TextColor'
      FieldName = 'TEXTCOLOR'
      Size = 50
    end
  end
  object sqSkin: TDataSource
    DataSet = qSkin
    Left = 1300
    Top = 258
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Skin it4med (*.skinres)|*.skinres'
    Left = 1080
    Top = 278
  end
  object LkTipoRefVoc: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'After Post'
    UpdateTableName = 'TIPO_REFVOC'
    PrimeFields.Strings = (
      'PKTIPO_REFVOC')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'pktipo_refvoc, '
      'descrizione,'
      'attivo,'
      'dest_form'
      'from tipo_refvoc')
    Params = <>
    QBEMode = False
    Left = 492
    Top = 324
    FastFields = (
      'PKTIPO_REFVOC,3,0'
      'DESCRIZIONE,1,100'
      'ATTIVO,3,0'
      'DEST_FORM,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object LkTipoRefVocPKTIPO_REFVOC: TIntegerField
      DisplayLabel = 'Codice'
      FieldName = 'PKTIPO_REFVOC'
    end
    object LkTipoRefVocDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object LkTipoRefVocATTIVO: TIntegerField
      DisplayLabel = 'Attivo'
      FieldName = 'ATTIVO'
    end
    object LkTipoRefVocDEST_FORM: TIntegerField
      DisplayLabel = 'Chiudi Form'
      FieldName = 'DEST_FORM'
    end
  end
  object sLkTipoRefVoc: TDataSource
    DataSet = LkTipoRefVoc
    Left = 532
    Top = 356
  end
  object updqFesteReparto: TAstaUpdateSQL
    DeleteSQL.Strings = (
      
        'DELETE FROM FESTEXREP  Where DATA_FESTA = :data_festa and REPART' +
        'I_FK = :REPARTI_FK')
    Left = 1060
    Top = 502
  end
  object TabStatoReferto: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'After Post'
    UpdateTableName = 'STATOREFERTO'
    PrimeFields.Strings = (
      'STATOREFERTO')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'statoreferto, '
      'descrizione, '
      'rigenera'
      'from statoreferto')
    Params = <>
    QBEMode = False
    Left = 648
    Top = 444
    FastFields = (
      'STATOREFERTO,3,0'
      'DESCRIZIONE,1,50'
      'RIGENERA,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object TabStatoRefertoSTATOREFERTO: TIntegerField
      DisplayLabel = 'Stato'
      FieldName = 'STATOREFERTO'
    end
    object TabStatoRefertoDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
    object TabStatoRefertoRIGENERA: TIntegerField
      DisplayLabel = 'Rigenera'
      FieldName = 'RIGENERA'
    end
  end
  object sTabStatoReferto: TDataSource
    DataSet = TabStatoReferto
    Left = 700
    Top = 442
  end
  object qComType: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qComTypeBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'com_type, '
      'descrizione'
      'from wtbd_defcomuni'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 440
    Top = 650
    FastFields = (
      'COM_TYPE,1,10'
      'DESCRIZIONE,1,100')
    FMultiTable = ()
    UpdateMethod = umManual
    object qComTypeCOM_TYPE: TStringField
      FieldName = 'COM_TYPE'
      Size = 10
    end
    object qComTypeDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
  end
  object sqComType: TDataSource
    DataSet = qComType
    Left = 492
    Top = 670
  end
  object qTipoNaz: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qTipoNazBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'tnz_ident, '
      'descrizione'
      'from wtbd_tiponaz'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 496
    Top = 502
    FastFields = (
      'TNZ_IDENT,3,0'
      'DESCRIZIONE,1,100')
    FMultiTable = ()
    UpdateMethod = umManual
    object qTipoNazTNZ_IDENT: TIntegerField
      FieldName = 'TNZ_IDENT'
    end
    object qTipoNazDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
  end
  object sqTipoNaz: TDataSource
    DataSet = qTipoNaz
    Left = 548
    Top = 522
  end
  object qTipoImpegn: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qTipoImpegnBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'impegnativa, '
      'descrizione'
      'from wtbd_tipoimpegn'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 724
    Top = 122
    FastFields = (
      'IMPEGNATIVA,3,0'
      'DESCRIZIONE,1,200')
    FMultiTable = ()
    UpdateMethod = umManual
    object qTipoImpegnIMPEGNATIVA: TIntegerField
      FieldName = 'IMPEGNATIVA'
    end
    object qTipoImpegnDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
  end
  object sqTipoImpegn: TDataSource
    DataSet = qTipoImpegn
    Left = 776
    Top = 130
  end
  object qTipoRicov: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qTipoRicovBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'ctrl_ricovero, '
      'descrizione'
      'from wtbd_tiporicov'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 820
    Top = 126
    FastFields = (
      'CTRL_RICOVERO,3,0'
      'DESCRIZIONE,1,100')
    FMultiTable = ()
    UpdateMethod = umManual
    object qTipoRicovCTRL_RICOVERO: TIntegerField
      FieldName = 'CTRL_RICOVERO'
    end
    object qTipoRicovDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
  end
  object sqTipoRicov: TDataSource
    DataSet = qTipoRicov
    Left = 860
    Top = 134
  end
  object qRefAtt: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qRefAttBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'view_referti, '
      'descrizione'
      'from wtbd_refatt'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 836
    Top = 186
    FastFields = (
      'VIEW_REFERTI,3,0'
      'DESCRIZIONE,1,100')
    FMultiTable = ()
    UpdateMethod = umManual
    object qRefAttVIEW_REFERTI: TIntegerField
      FieldName = 'VIEW_REFERTI'
    end
    object qRefAttDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
  end
  object sqRefAtt: TDataSource
    DataSet = qRefAtt
    Left = 896
    Top = 190
  end
  object qTbdEsenzione: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qTbdEsenzioneBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'esente, '
      'descrizione'
      'from wtbd_tipi_esenzione'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 644
    Top = 298
    FastFields = (
      'ESENTE,3,0'
      'DESCRIZIONE,1,200')
    FMultiTable = ()
    UpdateMethod = umManual
    object qTbdEsenzioneESENTE: TIntegerField
      FieldName = 'ESENTE'
    end
    object qTbdEsenzioneDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
  end
  object sqTbdEsenzione: TDataSource
    DataSet = qTbdEsenzione
    Left = 708
    Top = 310
  end
  object qLingue: TAstaClientDataSet
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
      'lingua, '
      'descrizione'
      'from lingue')
    Params = <>
    QBEMode = False
    Left = 1100
    Top = 654
    FastFields = (
      'LINGUA,1,3'
      'DESCRIZIONE,1,50')
    FMultiTable = ()
    UpdateMethod = umManual
    object qLingueLINGUA: TStringField
      FieldName = 'LINGUA'
      Size = 3
    end
    object qLingueDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
  end
  object sqLingue: TDataSource
    DataSet = qLingue
    Left = 1116
    Top = 710
  end
  object qTraduzioniN: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_Traduzionin'
        Fields = 'TABLE_NAME;FIELD_NAME;LINGUA;CODICE'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_Traduzionin'
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qTraduzioniNBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'TRADUZIONIN'
    PrimeFields.Strings = (
      'TABLE_NAME'
      'FIELD_NAME'
      'LINGUA'
      'CODICE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      't.table_name,'
      'rt.descrizione as DescTabella,'
      't.field_name,'
      'rf.comments as DescCampo,'
      't.lingua,'
      't.codice,'
      'AX.ORIGINE,'
      't.descrizione,'
      't.tradotto'
      'from traduzionin t'
      'join rb_table rt on rt.table_name=t.table_name'
      
        'join rb_field rf on rf.table_name=t.table_name and rf.field_name' +
        '=t.field_name'
      
        'join (select t1.table_name,t1.field_name,t1.codice,t1.descrizion' +
        'e as Origine from traduzionin t1 where t1.lingua=:linguabase) AX'
      
        '     on AX.table_name=t.table_name and AX.field_name=t.field_nam' +
        'e AND AX.codice=t.codice'
      'where t.lingua=:daTradurre')
    Params = <
      item
        Name = 'linguabase'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = 'IT'
      end
      item
        Name = 'daTradurre'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = 'RU'
      end>
    QBEMode = False
    Left = 1216
    Top = 706
    FastFields = (
      'TABLE_NAME,1,60'
      'DESCTABELLA,1,200'
      'FIELD_NAME,1,60'
      'DESCCAMPO,1,4000'
      'LINGUA,1,3'
      'CODICE,3,0'
      'ORIGINE,1,200'
      'DESCRIZIONE,1,200'
      'TRADOTTO,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qTraduzioniNTABLE_NAME: TStringField
      DisplayLabel = 'Nome Tabella'
      FieldName = 'TABLE_NAME'
      Size = 60
    end
    object qTraduzioniNDESCTABELLA: TStringField
      DisplayLabel = 'Tabella'
      FieldName = 'DESCTABELLA'
      Size = 200
    end
    object qTraduzioniNFIELD_NAME: TStringField
      DisplayLabel = 'Nome Campo'
      FieldName = 'FIELD_NAME'
      Size = 60
    end
    object qTraduzioniNDESCCAMPO: TStringField
      DisplayLabel = 'Campo'
      FieldName = 'DESCCAMPO'
      Size = 4000
    end
    object qTraduzioniNLINGUA: TStringField
      FieldName = 'LINGUA'
      Size = 3
    end
    object qTraduzioniNCODICE: TIntegerField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
    end
    object qTraduzioniNORIGINE: TStringField
      DisplayLabel = 'Origine'
      FieldName = 'ORIGINE'
      Size = 200
    end
    object qTraduzioniNDESCRIZIONE: TStringField
      DisplayLabel = 'Traduzione'
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 200
    end
    object qTraduzioniNTRADOTTO: TIntegerField
      DisplayLabel = 'Tradotto'
      FieldName = 'TRADOTTO'
    end
  end
  object sqTraduzioniN: TDataSource
    DataSet = qTraduzioniN
    Left = 1272
    Top = 718
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = cxLinguaBase
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cxLinguaDaTradurre
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = '.\cxPropertiesStore1.ini'
    Left = 828
    Top = 711
  end
  object qTraduzioniC: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_Traduzionic'
        Fields = 'TABLE_NAME;FIELD_NAME;LINGUA;CODICE'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_Traduzionic'
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qTraduzioniNBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'TRADUZIONIC'
    PrimeFields.Strings = (
      'TABLE_NAME'
      'FIELD_NAME'
      'LINGUA'
      'CODICE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      't.table_name,'
      'rt.descrizione as DescTabella,'
      't.field_name,'
      'rf.comments as DescCampo,'
      't.lingua,'
      't.codice,'
      'AX.ORIGINE,'
      't.descrizione,'
      't.tradotto'
      'from traduzionic t'
      'join rb_table rt on rt.table_name=t.table_name'
      
        'join rb_field rf on rf.table_name=t.table_name and rf.field_name' +
        '=t.field_name'
      
        'join (select t1.table_name,t1.field_name,t1.codice,t1.descrizion' +
        'e as Origine from traduzionic t1 where t1.lingua=:linguabase) AX'
      
        '     on AX.table_name=t.table_name and AX.field_name=t.field_nam' +
        'e AND AX.codice=t.codice'
      'where t.lingua=:daTradurre'
      ' ')
    Params = <
      item
        Name = 'linguabase'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'daTradurre'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 1284
    Top = 658
    FastFields = (
      'TABLE_NAME,1,60'
      'DESCTABELLA,1,200'
      'FIELD_NAME,1,60'
      'DESCCAMPO,1,4000'
      'LINGUA,1,3'
      'CODICE,1,12'
      'ORIGINE,1,200'
      'DESCRIZIONE,1,200'
      'TRADOTTO,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qTraduzioniCTABLE_NAME: TStringField
      DisplayLabel = 'Nome Tabella'
      FieldName = 'TABLE_NAME'
      Size = 60
    end
    object qTraduzioniCDESCTABELLA: TStringField
      DisplayLabel = 'Tabella'
      FieldName = 'DESCTABELLA'
      Size = 200
    end
    object qTraduzioniCFIELD_NAME: TStringField
      DisplayLabel = 'Nome campo'
      FieldName = 'FIELD_NAME'
      Size = 60
    end
    object qTraduzioniCDESCCAMPO: TStringField
      DisplayLabel = 'Campo'
      FieldName = 'DESCCAMPO'
      Size = 4000
    end
    object qTraduzioniCLINGUA: TStringField
      FieldName = 'LINGUA'
      Size = 3
    end
    object qTraduzioniCCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object qTraduzioniCORIGINE: TStringField
      DisplayLabel = 'Origine'
      FieldName = 'ORIGINE'
      Size = 200
    end
    object qTraduzioniCDESCRIZIONE: TStringField
      DisplayLabel = 'Traduzione'
      FieldName = 'DESCRIZIONE'
      Size = 200
    end
    object qTraduzioniCTRADOTTO: TIntegerField
      DisplayLabel = 'Tradotto'
      FieldName = 'TRADOTTO'
    end
  end
  object sqTraduzioniC: TDataSource
    DataSet = qTraduzioniC
    Left = 1236
    Top = 634
  end
  object qSetDesc: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qSetDescBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'SET_DESCS'
    PrimeFields.Strings = (
      'PKSET_DESCS')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      's.pkset_descs, '
      's.nomecampo, '
      's.labelcampo, '
      's.padre, '
      's.notecampo, '
      's.lingua,'
      'AX.labelcampo as Origine,'
      'AX.Notecampo as NoteOrigine,'
      's.tradotto'
      'from set_descs s'
      
        'join (select s1.nomecampo,s1.labelcampo,s1.notecampo from set_de' +
        'scs s1 where s1.lingua=:linguabase) AX on Ax.Nomecampo=s.nomecam' +
        'po'
      'where s.lingua=:datradurre')
    Params = <
      item
        Name = 'linguabase'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = 'IT'
      end
      item
        Name = 'datradurre'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = 'RU'
      end>
    QBEMode = False
    Left = 920
    Top = 714
    FastFields = (
      'PKSET_DESCS,3,0'
      'NOMECAMPO,1,250'
      'LABELCAMPO,1,250'
      'PADRE,1,250'
      'NOTECAMPO,1,4000'
      'LINGUA,1,3'
      'ORIGINE,1,250'
      'NOTEORIGINE,1,4000'
      'TRADOTTO,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qSetDescPKSET_DESCS: TIntegerField
      FieldName = 'PKSET_DESCS'
    end
    object qSetDescNOMECAMPO: TStringField
      DisplayLabel = 'Campo'
      FieldName = 'NOMECAMPO'
      Size = 250
    end
    object qSetDescLABELCAMPO: TStringField
      DisplayLabel = 'Traduzione'
      FieldName = 'LABELCAMPO'
      Required = True
      Size = 250
    end
    object qSetDescPADRE: TStringField
      FieldName = 'PADRE'
      Size = 250
    end
    object qSetDescNOTECAMPO: TStringField
      DisplayLabel = 'Note traduzione'
      FieldName = 'NOTECAMPO'
      Size = 4000
    end
    object qSetDescLINGUA: TStringField
      FieldName = 'LINGUA'
      Size = 3
    end
    object qSetDescORIGINE: TStringField
      DisplayLabel = 'Origine'
      FieldName = 'ORIGINE'
      Size = 250
    end
    object qSetDescNOTEORIGINE: TStringField
      DisplayLabel = 'Note Origine'
      FieldName = 'NOTEORIGINE'
      Size = 4000
    end
    object qSetDescTRADOTTO: TIntegerField
      DisplayLabel = 'Tradotto'
      FieldName = 'TRADOTTO'
    end
  end
  object sqSetDesc: TDataSource
    DataSet = qSetDesc
    Left = 972
    Top = 714
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = []
    Storage = rsStorage1
    Options = [poStoreDefValues]
    RootSection = 'FTabGenerale.rsPropSaver1'
    WhenLoad = wlManual
    WhenSave = wsManual
    Left = 544
    Top = 178
  end
end
