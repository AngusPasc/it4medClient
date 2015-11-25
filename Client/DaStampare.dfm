inherited FDaStampare: TFDaStampare
  Width = 1000
  Height = 500
  Constraints.MinHeight = 500
  Constraints.MinWidth = 1000
  Font.Height = -22
  ParentShowHint = False
  ShowHint = True
  object cxPageControl1: TcxPageControl [0]
    Left = 0
    Top = 60
    Width = 1000
    Height = 440
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = cxTabStampare
    Properties.CustomButtons.Buttons = <>
    OnChange = cxPageControl1Change
    ClientRectBottom = 434
    ClientRectLeft = 3
    ClientRectRight = 994
    ClientRectTop = 41
    object cxTabStampare: TcxTabSheet
      Caption = 'cxTabStampare'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 991
        Height = 393
        Align = alClient
        PopupMenu = dxBarPopupDaStampare
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        object GridDaRefertare: TcxGridDBTableView
          OnDblClick = GridDaRefertareDblClick
          Navigator.Buttons.OnButtonClick = GridDaRefertareNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.ImageIndex = 0
          Navigator.Buttons.PriorPage.ImageIndex = 1
          Navigator.Buttons.Prior.ImageIndex = 2
          Navigator.Buttons.Next.ImageIndex = 3
          Navigator.Buttons.NextPage.ImageIndex = 4
          Navigator.Buttons.Last.ImageIndex = 5
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.ImageIndex = 9
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.ImageIndex = 18
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.ImageIndex = 19
          Navigator.Visible = True
          DataController.DataSource = sRefertazione
          DataController.Filter.MaxValueListCount = 1000
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.Active = True
          DataController.KeyFieldNames = 'PKTRIAGE'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'NOMINATIVO'
              Column = GridDaRefertareNOMINATIVO
            end>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnPopup.MaxDropDownItemCount = 12
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = GridDaRefertareNOMINATIVO
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsCustomize.DataRowSizing = True
          OptionsData.CancelOnExit = False
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
          object GridDaRefertarePKIMPEGNATIVE: TcxGridDBColumn
            DataBinding.FieldName = 'PKIMPEGNATIVE'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 77
          end
          object GridDaRefertarePKTRIAGE: TcxGridDBColumn
            DataBinding.FieldName = 'PKTRIAGE'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Width = 43
          end
          object GridDaRefertareRIS_STUDY_EUID: TcxGridDBColumn
            DataBinding.FieldName = 'RIS_STUDY_EUID'
            Options.Editing = False
            Options.Filtering = False
            Width = 44
          end
          object GridDaRefertareDATA_VISITA: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_VISITA'
            Options.Editing = False
            Width = 52
          end
          object GridDaRefertareNOMINATIVO: TcxGridDBColumn
            DataBinding.FieldName = 'NOMINATIVO'
            Options.Editing = False
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 160
          end
          object GridDaRefertareDATA_NASCITA: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_NASCITA'
            Options.Editing = False
            Options.Filtering = False
            Width = 66
          end
          object GridDaRefertareREPARTO: TcxGridDBColumn
            DataBinding.FieldName = 'REPARTO'
            Options.Editing = False
            Width = 63
          end
          object GridDaRefertareSERVIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'SERVIZIO'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Width = 202
          end
          object GridDaRefertareMEDRISERVATO: TcxGridDBColumn
            DataBinding.FieldName = 'MEDRISERVATO'
            Visible = False
            Options.Editing = False
            Width = 125
          end
          object GridDaRefertareURGENZA: TcxGridDBColumn
            DataBinding.FieldName = 'URGENZA'
            RepositoryItem = FDMCommon.edrepURGENZA
            Visible = False
            Options.Editing = False
            Width = 45
          end
          object GridDaRefertareDIAGNOSTICA: TcxGridDBColumn
            DataBinding.FieldName = 'DIAGNOSTICA'
            Visible = False
            Options.Editing = False
            Width = 64
          end
          object GridDaRefertareCEIMMAGINI: TcxGridDBColumn
            DataBinding.FieldName = 'CEIMMAGINI'
            RepositoryItem = FDMCommon.edrepImageIMMAGINI
            Visible = False
            BestFitMaxWidth = 30
            MinWidth = 30
            Options.Editing = False
            Width = 33
          end
          object GridDaRefertareSTATOVISITA: TcxGridDBColumn
            DataBinding.FieldName = 'STATOVISITA'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Width = 56
          end
          object GridDaRefertareREF_STAMPATO: TcxGridDBColumn
            DataBinding.FieldName = 'REF_STAMPATO'
            RepositoryItem = FDMCommon.edrepStampaReferto
            Visible = False
            Options.Editing = False
            Width = 44
          end
          object GridDaRefertareCD_CREATO: TcxGridDBColumn
            DataBinding.FieldName = 'CD_CREATO'
            RepositoryItem = FDMCommon.edrepSTATOCD
            Visible = False
            BestFitMaxWidth = 30
            MinWidth = 30
            Options.Editing = False
            Width = 30
          end
          object GridDaRefertareCEREFERTO: TcxGridDBColumn
            Caption = 'Referto'
            DataBinding.FieldName = 'CEREFERTO'
            RepositoryItem = FDMCommon.edrepImageREFERTO
            BestFitMaxWidth = 30
            MinWidth = 30
            Width = 30
          end
          object GridDaRefertareETICHETTE: TcxGridDBColumn
            DataBinding.FieldName = 'ETICHETTE'
            RepositoryItem = FDMCommon.edrepEtichette
            Visible = False
            Options.Editing = False
            Width = 55
          end
          object GridDaRefertareNOTE_PRENO: TcxGridDBColumn
            DataBinding.FieldName = 'NOTE_PRENO'
            RepositoryItem = FDMCommon.edrepGRIDMEMO
            BestFitMaxWidth = 30
            MinWidth = 30
            Width = 116
          end
          object GridDaRefertareDESC_INVIO: TcxGridDBColumn
            DataBinding.FieldName = 'DESC_INVIO'
            Options.Editing = False
            Width = 124
          end
          object GridDaRefertareRADIOLOGIA: TcxGridDBColumn
            DataBinding.FieldName = 'RADIOLOGIA'
            Options.Editing = False
            Width = 82
          end
        end
        object GridDettDaRefertare: TcxGridDBTableView
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
          DataController.DataSource = sDettRefertazione
          DataController.DetailKeyFieldNames = 'TRIAGE_FK'
          DataController.KeyFieldNames = 'PKPRESTAZIONI'
          DataController.MasterKeyFieldNames = 'PKTRIAGE'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          object GridDettDaRefertareCODICE: TcxGridDBColumn
            DataBinding.FieldName = 'CODICE'
          end
          object GridDettDaRefertareDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
          end
          object GridDettDaRefertareNUMERO_PRESTAZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'NUMERO_PRESTAZIONE'
            Visible = False
            VisibleForCustomization = False
          end
          object GridDettDaRefertareDURATA: TcxGridDBColumn
            DataBinding.FieldName = 'DURATA'
            Visible = False
            VisibleForCustomization = False
          end
          object GridDettDaRefertareSTATO: TcxGridDBColumn
            DataBinding.FieldName = 'STATO'
            RepositoryItem = FDMCommon.edrepImageSTATO
          end
          object GridDettDaRefertareIDENT_FK: TcxGridDBColumn
            DataBinding.FieldName = 'IDENT_FK'
          end
          object GridDettDaRefertareMAGART_FK: TcxGridDBColumn
            DataBinding.FieldName = 'MAGART_FK'
          end
          object GridDettDaRefertareQR: TcxGridDBColumn
            DataBinding.FieldName = 'QR'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = GridDaRefertare
          object cxGrid1LevelDett: TcxGridLevel
            GridView = GridDettDaRefertare
          end
        end
      end
    end
    object cxTabConsegnati: TcxTabSheet
      Caption = 'cxTabConsegnati'
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 991
        Height = 393
        Align = alClient
        PopupMenu = dxBarPopConsegnati
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        object GridConsegnati: TcxGridDBTableView
          OnDblClick = GridConsegnatiDblClick
          Navigator.Buttons.OnButtonClick = GridConsegnatiNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <>
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
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.ImageIndex = 19
          Navigator.Visible = True
          DataController.DataSource = sConsegnati
          DataController.Filter.MaxValueListCount = 1000
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.Active = True
          DataController.KeyFieldNames = 'PKTRIAGE'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'NOMINATIVO'
              Column = GridConsegnatiNOMINATIVO
            end>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnPopup.MaxDropDownItemCount = 12
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = GridConsegnatiNOMINATIVO
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsCustomize.DataRowSizing = True
          OptionsData.CancelOnExit = False
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
          OnCustomization = GridConsegnatiCustomization
          object GridConsegnatiPKIMPEGNATIVE: TcxGridDBColumn
            DataBinding.FieldName = 'PKIMPEGNATIVE'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 97
          end
          object GridConsegnatiPKTRIAGE: TcxGridDBColumn
            DataBinding.FieldName = 'PKTRIAGE'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Width = 60
          end
          object GridConsegnatiRIS_STUDY_EUID: TcxGridDBColumn
            DataBinding.FieldName = 'RIS_STUDY_EUID'
            Options.Editing = False
            Options.Filtering = False
            Width = 45
          end
          object GridConsegnatiDATA_VISITA: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_VISITA'
            Options.Editing = False
            Width = 72
          end
          object GridConsegnatiDATA_CONSEGNA: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_CONSEGNA'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Width = 74
          end
          object GridConsegnatiNOMINATIVO: TcxGridDBColumn
            DataBinding.FieldName = 'NOMINATIVO'
            Options.Editing = False
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 189
          end
          object GridConsegnatiDATA_NASCITA: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_NASCITA'
            Options.Editing = False
            Options.Filtering = False
            Width = 45
          end
          object GridConsegnatiREPARTO: TcxGridDBColumn
            DataBinding.FieldName = 'REPARTO'
            Options.Editing = False
            Width = 87
          end
          object GridConsegnatiSERVIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'SERVIZIO'
            Visible = False
            Options.Editing = False
            Width = 202
          end
          object GridConsegnatiMEDRISERVATO: TcxGridDBColumn
            DataBinding.FieldName = 'MEDRISERVATO'
            Visible = False
            Options.Editing = False
            Width = 122
          end
          object GridConsegnatiSTATOVISITA: TcxGridDBColumn
            DataBinding.FieldName = 'STATOVISITA'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
          end
          object GridConsegnatiDIAGNOSTICA: TcxGridDBColumn
            DataBinding.FieldName = 'DIAGNOSTICA'
            Visible = False
            Options.Editing = False
            Width = 110
          end
          object GridConsegnatiCEIMMAGINI: TcxGridDBColumn
            DataBinding.FieldName = 'CEIMMAGINI'
            RepositoryItem = FDMCommon.edrepImageIMMAGINI
            Visible = False
            BestFitMaxWidth = 30
            MinWidth = 30
            Options.Editing = False
            Width = 47
          end
          object GridConsegnatiCD_CREATO: TcxGridDBColumn
            DataBinding.FieldName = 'CD_CREATO'
            RepositoryItem = FDMCommon.edrepSTATOCD
            Visible = False
            BestFitMaxWidth = 30
            MinWidth = 30
            Options.Editing = False
            Width = 52
          end
          object GridConsegnatiCEREFERTO: TcxGridDBColumn
            Caption = 'Referto'
            DataBinding.FieldName = 'CEREFERTO'
            RepositoryItem = FDMCommon.edrepImageREFERTO
            Visible = False
            BestFitMaxWidth = 30
            MinWidth = 30
            Width = 30
          end
          object GridConsegnatiREF_STAMPATO: TcxGridDBColumn
            DataBinding.FieldName = 'REF_STAMPATO'
            RepositoryItem = FDMCommon.edrepStampaReferto
            Width = 34
          end
          object GridConsegnatiETICHETTE: TcxGridDBColumn
            DataBinding.FieldName = 'ETICHETTE'
            RepositoryItem = FDMCommon.edrepEtichette
            Visible = False
            Options.Editing = False
            Width = 40
          end
          object GridConsegnatiNOTE_PRENO: TcxGridDBColumn
            DataBinding.FieldName = 'NOTE_PRENO'
            RepositoryItem = FDMCommon.edrepGRIDMEMO
            BestFitMaxWidth = 30
            MinWidth = 30
            Width = 45
          end
          object GridConsegnatiDESC_INVIO: TcxGridDBColumn
            DataBinding.FieldName = 'DESC_INVIO'
            Options.Editing = False
            Width = 38
          end
          object GridConsegnatiRADIOLOGIA: TcxGridDBColumn
            DataBinding.FieldName = 'RADIOLOGIA'
            Options.Editing = False
            Width = 174
          end
        end
        object GridDettConsegnati: TcxGridDBTableView
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
          DataController.DataSource = sDettConsegnati
          DataController.DetailKeyFieldNames = 'TRIAGE_FK'
          DataController.KeyFieldNames = 'PKCODICIRAD'
          DataController.MasterKeyFieldNames = 'PKTRIAGE'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          object GridDettConsegnatiCODICE: TcxGridDBColumn
            DataBinding.FieldName = 'CODICE'
          end
          object GridDettConsegnatiDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
          end
          object GridDettConsegnatiNUMERO_PRESTAZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'NUMERO_PRESTAZIONE'
            Visible = False
            VisibleForCustomization = False
          end
          object GridDettConsegnatiDURATA: TcxGridDBColumn
            DataBinding.FieldName = 'DURATA'
            Visible = False
            VisibleForCustomization = False
          end
          object GridDettConsegnatiSTATO: TcxGridDBColumn
            DataBinding.FieldName = 'STATO'
            RepositoryItem = FDMCommon.edrepImageSTATO
          end
          object GridDettConsegnatiIDENT_FK: TcxGridDBColumn
            DataBinding.FieldName = 'IDENT_FK'
          end
          object GridDettConsegnatiMAGART_FK: TcxGridDBColumn
            DataBinding.FieldName = 'MAGART_FK'
          end
          object GridDettConsegnatiQR: TcxGridDBColumn
            DataBinding.FieldName = 'QR'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = GridConsegnati
          object cxGrid2LevelDett: TcxGridLevel
            GridView = GridDettConsegnati
          end
        end
      end
    end
  end
  object dxBarDockControl1: TdxBarDockControl [1]
    Left = 0
    Top = 30
    Width = 1000
    Height = 30
    Align = dalTop
    BarManager = dxBarManDaStampare
  end
  inherited rsStorage1: TrsStorage
    Left = 71
    Top = 106
  end
  inherited rsXMLData1: TrsXMLData
    Left = 211
    Top = 74
  end
  object ActionList: TActionList
    Images = FDMCommon.cxImageNavigator16
    Left = 348
    Top = 284
    object Ricerca: TAction
      Caption = 'Esegui ricerca'
      Hint = 'Esegui ricerca'
      ImageIndex = 14
      OnExecute = RicercaExecute
      OnUpdate = RicercaUpdate
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
    object Storico: TAction
      Caption = 'Storico'
      Hint = 'Storico operazione'
      ImageIndex = 26
      ShortCut = 119
      OnExecute = StoricoExecute
      OnUpdate = StoricoUpdate
    end
    object aRitornaDaCons: TAction
      Caption = 'Ritorna in da consegnare'
      Hint = 'Ritorna in stato da consegnare'
      ImageIndex = 25
      OnExecute = aRitornaDaConsExecute
      OnUpdate = aRitornaDaConsUpdate
    end
    object aVisualizzaImmagini: TAction
      Caption = 'Visualizza immagini'
      Hint = 'Visualizzazione immagini'
      ImageIndex = 31
      OnExecute = aVisualizzaImmaginiExecute
      OnUpdate = aVisualizzaImmaginiUpdate
    end
    object aConsegnaReferti: TAction
      Caption = 'Consegna referto'
      ImageIndex = 20
      OnExecute = aConsegnaRefertiExecute
      OnUpdate = aConsegnaRefertiUpdate
    end
    object aRefresh: TAction
      Caption = 'Aggiorna lista'
      Hint = 'Aggiorna lista'
      ImageIndex = 15
      OnExecute = aRefreshExecute
    end
    object aStampaGrigliaSelezionati: TAction
      Caption = 'Lista selezionati'
      ImageIndex = 11
      OnExecute = aStampaGrigliaSelezionatiExecute
      OnUpdate = aStampaGrigliaSelezionatiUpdate
    end
    object aStampaDaBarCode: TAction
      Caption = 'aStampaDaBarCode'
      OnExecute = aStampaDaBarCodeExecute
    end
    object aPreparaCdDaBarCode: TAction
      Caption = 'aPreparaCdDaBarCode'
      OnExecute = aPreparaCdDaBarCodeExecute
    end
    object aStampaModuli: TAction
      Caption = 'Stampa referto'
      Hint = 'aStampaModuli'
      ImageIndex = 11
      OnExecute = aStampaModuliExecute
      OnUpdate = aStampaModuliUpdate
    end
    object aCreaDocumenti: TAction
      Caption = 'Crea documenti'
      ImageIndex = 59
      OnExecute = aCreaDocumentiExecute
      OnUpdate = aCreaDocumentiUpdate
    end
    object aSelezionaTutti: TAction
      Caption = 'Seleziona tutti'
      Hint = 'Seleziona tutti'
      OnExecute = aSelezionaTuttiExecute
      OnUpdate = aSelezionaTuttiUpdate
    end
    object aApriTutti: TAction
      Caption = 'Espandi dettagli'
      Hint = 'Espandi dettagli'
      ImageIndex = 27
      OnExecute = aApriTuttiExecute
      OnUpdate = aApriTuttiUpdate
    end
    object aChiudiTutti: TAction
      Caption = 'Chiudi dettagli'
      Hint = 'Chiudi dettagli'
      ImageIndex = 28
      OnExecute = aChiudiTuttiExecute
      OnUpdate = aChiudiTuttiUpdate
    end
    object aReferto: TAction
      Caption = 'Referto'
      Hint = 'Visualizza referto'
      ImageIndex = 30
      OnExecute = aRefertoExecute
      OnUpdate = aRefertoUpdate
    end
  end
  object sRefertazione: TDataSource
    DataSet = Refertazione
    Left = 224
    Top = 216
  end
  object AlertEventList1: TKSAstaEventClient
    Active = False
    AstaClientSocket = FDMCommon.AstaClientSocket
    DataSets = <
      item
        NomeTable = 'triage'
        DataSource = sRefertazione
        DBTableView = GridDaRefertare
        OnAcceptActiveEvent = AlertEventList1DataSets0AcceptActiveEvent
      end>
    OnSetActive = AlertEventList1SetActive
    OnBeforeRefresh = AlertEventList1BeforeRefresh
    OnAfterRefresh = AlertEventList1AfterRefresh
    Left = 352
    Top = 188
  end
  object dxBarManDaStampare: TdxBarManager
    AllowReset = False
    Scaled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Source Sans Pro'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Esami'
      'Comandi'
      'Operazioni barcode'
      'Operazioni dirette')
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
    ImageOptions.Images = FDMCommon.cxImageNavigator16
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 412
    Top = 328
    DockControlHeights = (
      0
      0
      30
      0)
    object dxBarManDaStampareBar1: TdxBar
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
          ItemName = 'dxDaConsegnare'
        end
        item
          Visible = True
          ItemName = 'dxConsegnati'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 170
          Visible = True
          ItemName = 'dxDataDal'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 175
          Visible = True
          ItemName = 'dxDataAl'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'Radiologico'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'Comandi'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManDaStampareBar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'TipoPaziente'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 447
      FloatTop = 70
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarStatic1'
        end
        item
          Visible = True
          ItemName = 'dxEsterni'
        end
        item
          Visible = True
          ItemName = 'dxInterni'
        end
        item
          Visible = True
          ItemName = 'dxPS'
        end
        item
          Visible = True
          ItemName = 'dxTutti'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarReferto'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxStampaEtichette'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object Radiologico: TdxBarEdit
      Caption = 'Nr. Esame'
      Category = 0
      Hint = 'Nr. Esame da cercare'
      Visible = ivAlways
      OnKeyDown = RadiologicoKeyDown
      ShowCaption = True
    end
    object dxDaConsegnare: TdxBarButton
      Caption = 'Da &consegnare'
      Category = 0
      Hint = 'Referti da consegnare'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      Down = True
      OnClick = dxDaConsegnareClick
    end
    object dxConsegnati: TdxBarButton
      Caption = 'C&onsegnati'
      Category = 0
      Hint = 'Referti consegnati'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxConsegnatiClick
    end
    object dxEsterni: TdxBarButton
      Caption = 'Esterni'
      Category = 0
      Hint = 'Solo pazienti esterni'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 2
      Down = True
      ImageIndex = 6
      PaintStyle = psCaptionGlyph
      OnClick = dxTuttiClick
    end
    object dxInterni: TdxBarButton
      Caption = 'Interni'
      Category = 0
      Hint = 'Solo pazienti interni'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 2
      ImageIndex = 39
      PaintStyle = psCaptionGlyph
      OnClick = dxTuttiClick
    end
    object dxPS: TdxBarButton
      Caption = 'Pronto Soccorso'
      Category = 0
      Hint = 'Solo pazienti P.S.'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 2
      ImageIndex = 7
      PaintStyle = psCaptionGlyph
      OnClick = dxTuttiClick
    end
    object dxTutti: TdxBarButton
      Caption = 'Tutti i pazienti'
      Category = 0
      Hint = 'Tutti i pazienti'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 2
      ImageIndex = 57
      PaintStyle = psCaptionGlyph
      OnClick = dxTuttiClick
    end
    object dxDataDal: TcxBarEditItem
      Caption = 'Data consegna dal'
      Category = 0
      Hint = 'Da consegnare dal'
      Visible = ivAlways
      ShowCaption = True
      Width = 140
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.ArrowsForYear = False
      Properties.DateButtons = [btnToday]
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnCloseUp = dxDataRitiroPropertiesCloseUp
    end
    object dxDataAl: TcxBarEditItem
      Caption = 'al'
      Category = 0
      Hint = 'Data consegna al'
      Visible = ivAlways
      ShowCaption = True
      Width = 140
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.ArrowsForYear = False
      Properties.DateButtons = [btnToday]
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnCloseUp = dxDataAlPropertiesCloseUp
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'Tipo di paziente'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxEsterni'
        end
        item
          Visible = True
          ItemName = 'dxInterni'
        end
        item
          Visible = True
          ItemName = 'dxPS'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxTutti'
        end>
    end
    object dxAnticipo: TdxBarSpinEdit
      Caption = 'Giorni anticipo consegna'
      Category = 0
      Hint = 'Giorni anticipo consegna'
      Visible = ivAlways
      Value = 7.000000000000000000
    end
    object dxBarStatic1: TdxBarStatic
      Caption = 'Tipo di paziente:'
      Category = 0
      Hint = 'Tipo di paziente:'
      Visible = ivAlways
    end
    object dxBarButton1: TdxBarButton
      Action = Personalizza
      Category = 1
    end
    object dxBarButton2: TdxBarButton
      Action = RiportaStandard
      Category = 1
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Setup'
      Category = 1
      Visible = ivAlways
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
          ItemName = 'dxAutoSize'
        end
        item
          Visible = True
          ItemName = 'dxAttivaRefresh'
        end
        item
          Visible = True
          ItemName = 'dxConEsami'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxAnticipo'
        end>
    end
    object dxBarButton4: TdxBarButton
      Action = Storico
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton5: TdxBarButton
      Action = aConsegnaReferti
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Stampa referto'
      Category = 1
      Hint = 'Stampa referto'
      Visible = ivAlways
      ImageIndex = 15
      PaintStyle = psCaptionGlyph
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
    object dxBarButton11: TdxBarButton
      Action = aRitornaDaCons
      Category = 1
    end
    object dxBarButton12: TdxBarButton
      Caption = 'Consegna referto'
      Category = 1
      Hint = 'Rivedi dati consegna referto'
      Visible = ivAlways
      ImageIndex = 36
    end
    object dxBarButton14: TdxBarButton
      Action = aVisualizzaImmagini
      Category = 1
      Visible = ivNever
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton8: TdxBarButton
      Action = aConsegnaReferti
      Category = 1
      Description = 'Consegna tutti i referti'
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
    object dxBarButton15: TdxBarButton
      Action = aRefresh
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton17: TdxBarButton
      Action = aStampaModuli
      Category = 1
      Visible = ivNever
      PaintStyle = psCaptionGlyph
    end
    object dxConEsami: TdxBarButton
      Caption = 'Visualizza prestazioni'
      Category = 1
      Hint = 'Visualizza prestazioni'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxConEsamiClick
    end
    object dxBarButton3: TdxBarButton
      Action = aApriTutti
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton6: TdxBarButton
      Action = aChiudiTutti
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarReferto: TdxBarButton
      Action = aReferto
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Lettura barcode'
      Category = 2
      Visible = ivNever
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarcodeStampaReferto'
        end
        item
          Visible = True
          ItemName = 'dxBarcodeCreaCD'
        end
        item
          Visible = True
          ItemName = 'dxBarcodeEtichette'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxSoloConsegna'
        end>
    end
    object dxBarcodeStampaReferto: TdxBarButton
      Caption = 'Stampa referto'
      Category = 2
      Hint = 'Stampa referto'
      Visible = ivAlways
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
      OnClick = dxBarcodeStampaRefertoClick
    end
    object dxBarcodeCreaCD: TdxBarButton
      Caption = 'Creazione CD'
      Category = 2
      Hint = 'Creazione CD'
      Visible = ivAlways
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
      OnClick = dxBarcodeStampaRefertoClick
    end
    object dxBarcodeEtichette: TdxBarButton
      Caption = 'Stampa etichette'
      Category = 2
      Hint = 'Stampa etichette'
      Visible = ivAlways
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
      OnClick = dxBarcodeStampaRefertoClick
    end
    object dxSelezionaTutto: TdxBarButton
      Action = aSelezionaTutti
      Category = 3
      Visible = ivNever
      CloseSubMenuOnClick = False
    end
    object dxStampaReferto: TdxBarButton
      Caption = 'Stampa referto'
      Category = 3
      Hint = 'Stampa referto'
      Visible = ivAlways
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
      OnClick = dxStampaRefertoClick
    end
    object dxCreaCD: TdxBarButton
      Caption = 'Creazione CD'
      Category = 3
      Hint = 'Creazione CD'
      Visible = ivAlways
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
      OnClick = dxStampaRefertoClick
    end
    object dxStampaEtichette: TdxBarButton
      Action = aStampaModuli
      Caption = 'Stampa moduli'
      Category = 3
      PaintStyle = psCaptionGlyph
    end
    object dxCreaDocumenti: TdxBarButton
      Action = aCreaDocumenti
      Category = 3
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = 'Creazione CD/Stampe'
      Category = 3
      Visible = ivNever
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxStampaReferto'
        end
        item
          Visible = True
          ItemName = 'dxCreaCD'
        end
        item
          Visible = True
          ItemName = 'dxStampaEtichette'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxCreaDocumenti'
        end>
    end
    object dxSoloConsegna: TdxBarButton
      Caption = 'Consegna referto'
      Category = 3
      Hint = 'Consegna referto'
      Visible = ivAlways
      ButtonStyle = bsChecked
      CloseSubMenuOnClick = False
      OnClick = dxSoloConsegnaClick
    end
  end
  object Refertazione: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    FilterOptions = [foCaseInsensitive]
    Constraints = <>
    BeforeQuery = RefertazioneBeforeQuery
    SequenceField.ApplyMoment = amOnNewRecord
    OnAfterPopulate = RefertazioneAfterPopulate
    EditMode = 'Read Only'
    UpdateTableName = 'TRIAGE'
    PrimeFields.Strings = (
      'PKTRIAGE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      't.pktriage,'
      't.cod_med_firma,'
      't.data_referto,'
      't.data_accettazione,'
      't.data_visita,'
      't.data_consegna,'
      'i.assistibili_fk,'
      'i.pkimpegnative,'
      't.reparti_fk,'
      't.RIS_STUDY_EUID,'
      'i.urgenza,'
      'i.provenienza,'
      't.statovisita,'
      't.user_id,'
      't.cd_creato,'
      't.etichette,'
      't.ref_stampato,'
      't.ceimmagini,'
      't.note_preno,'
      'a.NOMINATIVO,'
      'a.DATA_NASCITA,'
      'a.CODICE_FISCALE,'
      'i.servizio_rich_fk,'
      'sv.reparti_fk as rep_rich,'
      'i.cod_med_int,'
      
        'DECODE(i.provenienza,'#39'E'#39',o.descrizione,r.descrizione) as Reparto' +
        ','
      'sv.descrizione as Servizio,'
      'd.descrizione as Diagnostica,'
      'u.nominativo as MedRiservato,'
      'ta.tipo_accesso,'
      'ti.descrizione as Desc_invio,'
      'rd.descrizione as Radiologia,'
      'ris.VediReferto(t.reparti_fk,1,1,t.statovisita) as CEREFERTO'
      'from consegna_referti c'
      'join triage t on t.reparti_fk = c.consegna_per'
      'join impegnative i on i.pkimpegnative = t.impegnative_fk'
      'join assistibili a on a.pkassistibili = i.assistibili_fk'
      'left join reparti r on r.pkreparti = i.reparto_rich_fk'
      'left join ospedali o on o.codice = i.osp_rich'
      'left join servizi sv on sv.pkservizi = i.servizio_rich_fk'
      'left join personale u on u.pkpersonale = t.cod_med_firma'
      'join servizi d on d.pkservizi = t.diagnostica_fk'
      
        'join wtipo_attivita ta on ta.tipo_attivita = i.tipo_attivita_fk ' +
        'and ta.lingua=:lingua'
      
        'left join wtipoinvio ti on ti.pkinvio = i.invio_fk and ti.lingua' +
        '=:lingua'
      'join reparti rd on rd.pkreparti = t.reparti_fk'
      'where c.radiologia = :reparti_fk and'
      't.statovisita between 170 and 180 and'
      
        't.data_ritiro_referto between :dal and to_date(to_char(:al,'#39'DDMM' +
        'YYYY'#39')||'#39'2359'#39','#39'DDMMYYYYHH24MI'#39')'
      ':provenienza'
      ' '
      ' '
      ' '
      ' ')
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
      end
      item
        Name = 'dal'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 40544d
      end
      item
        Name = 'al'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 40544d
      end
      item
        Name = 'provenienza'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = '#'
      end>
    DirectModify = [tsyUpdate]
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      030000001600000008000000504B56495349544501000000000B000000444154
      415F56495349544101000000000B00000050524F56454E49454E5A4101000000
      000E0000004C494E4755415F5245464552544F01000000000700000055524745
      4E5A4101000000000E0000004153534953544942494C495F464B01000000000A
      000000524550415254495F464B01000000000800000053455256495A494F0100
      0000000A0000004E4F4D494E415449564F01000000001000000053455256495A
      494F5F524943485F464B0100000000080000005245505F524943480100000000
      0B000000434F445F4D45445F494E540100000000070000005245504152544F01
      00000000060000004D454449434F01000000000B000000535441544F56495349
      5441010000000008000000504B54524941474501000000000B00000044494147
      4E4F535449434101000000000D000000434F445F4D45445F4649524D41010000
      00000A000000434F444943455F524144010000000009000000555247454E5A41
      5053010000000007000000434F445F52414401000000000C0000004143434553
      53494F4E5F4E520100000000}
    Left = 148
    Top = 180
    FastFields = (
      'PKTRIAGE,3,0'
      'COD_MED_FIRMA,3,0'
      'DATA_REFERTO,11,0'
      'DATA_ACCETTAZIONE,11,0'
      'DATA_VISITA,11,0'
      'DATA_CONSEGNA,11,0'
      'ASSISTIBILI_FK,3,0'
      'PKIMPEGNATIVE,3,0'
      'REPARTI_FK,3,0'
      'RIS_STUDY_EUID,1,100'
      'URGENZA,3,0'
      'PROVENIENZA,1,1'
      'STATOVISITA,3,0'
      'USER_ID,3,0'
      'CD_CREATO,3,0'
      'ETICHETTE,3,0'
      'REF_STAMPATO,3,0'
      'CEIMMAGINI,3,0'
      'NOTE_PRENO,1,4000'
      'NOMINATIVO,1,122'
      'DATA_NASCITA,11,0'
      'CODICE_FISCALE,1,32'
      'SERVIZIO_RICH_FK,3,0'
      'REP_RICH,3,0'
      'COD_MED_INT,3,0'
      'REPARTO,1,80'
      'SERVIZIO,1,100'
      'DIAGNOSTICA,1,100'
      'MEDRISERVATO,1,70'
      'TIPO_ACCESSO,1,1'
      'DESC_INVIO,1,200'
      'RADIOLOGIA,1,60'
      'CEREFERTO,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object RefertazionePKTRIAGE: TIntegerField
      DisplayLabel = 'Nr. Esame'
      DisplayWidth = 10
      FieldName = 'PKTRIAGE'
    end
    object RefertazioneCOD_MED_FIRMA: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_MED_FIRMA'
    end
    object RefertazioneURGENZA: TIntegerField
      DisplayLabel = 'Urgenza'
      DisplayWidth = 10
      FieldName = 'URGENZA'
    end
    object RefertazioneASSISTIBILI_FK: TIntegerField
      DisplayWidth = 10
      FieldName = 'ASSISTIBILI_FK'
    end
    object RefertazioneREPARTI_FK: TIntegerField
      DisplayWidth = 10
      FieldName = 'REPARTI_FK'
    end
    object RefertazioneNOMINATIVO: TStringField
      DisplayLabel = 'Paziente'
      DisplayWidth = 122
      FieldName = 'NOMINATIVO'
      Size = 122
    end
    object RefertazioneSERVIZIO_RICH_FK: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERVIZIO_RICH_FK'
    end
    object RefertazioneREP_RICH: TIntegerField
      DisplayWidth = 10
      FieldName = 'REP_RICH'
    end
    object RefertazioneCOD_MED_INT: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_MED_INT'
    end
    object RefertazioneREPARTO: TStringField
      DisplayLabel = 'Provenienza'
      DisplayWidth = 60
      FieldName = 'REPARTO'
      Size = 60
    end
    object RefertazioneSERVIZIO: TStringField
      DisplayLabel = 'Servizio'
      DisplayWidth = 100
      FieldName = 'SERVIZIO'
      Size = 100
    end
    object RefertazioneMEDRISERVATO: TStringField
      DisplayLabel = 'Radiologo'
      FieldName = 'MEDRISERVATO'
      Size = 40
    end
    object RefertazioneSTATOVISITA: TIntegerField
      DisplayLabel = 'Referto'
      FieldName = 'STATOVISITA'
    end
    object RefertazioneUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object RefertazionePKIMPEGNATIVE: TIntegerField
      DisplayLabel = 'Nr. Accettazione'
      FieldName = 'PKIMPEGNATIVE'
    end
    object RefertazioneDATA_REFERTO: TDateTimeField
      DisplayLabel = 'Data referto'
      FieldName = 'DATA_REFERTO'
    end
    object RefertazioneDATA_NASCITA: TDateTimeField
      DisplayLabel = 'Data nascita'
      FieldName = 'DATA_NASCITA'
    end
    object RefertazionePROVENIENZA: TStringField
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object RefertazioneDATA_ACCETTAZIONE: TDateTimeField
      DisplayLabel = 'Data accettazione'
      FieldName = 'DATA_ACCETTAZIONE'
      DisplayFormat = 'ddddd'
    end
    object RefertazioneDATA_VISITA: TDateTimeField
      DisplayLabel = 'Data esame'
      FieldName = 'DATA_VISITA'
      DisplayFormat = 'ddddd'
    end
    object RefertazioneDIAGNOSTICA: TStringField
      DisplayLabel = 'Diagnostica'
      FieldName = 'DIAGNOSTICA'
      Size = 100
    end
    object RefertazioneRIS_STUDY_EUID: TStringField
      DisplayLabel = 'Nr. Esame'
      FieldName = 'RIS_STUDY_EUID'
      Size = 100
    end
    object RefertazioneCD_CREATO: TIntegerField
      DisplayLabel = 'CD'
      FieldName = 'CD_CREATO'
    end
    object RefertazioneCEIMMAGINI: TIntegerField
      DisplayLabel = 'Immagini'
      FieldName = 'CEIMMAGINI'
    end
    object RefertazioneNOTE_PRENO: TStringField
      DisplayLabel = 'Note'
      FieldName = 'NOTE_PRENO'
      Size = 4000
    end
    object RefertazioneTIPO_ACCESSO: TStringField
      FieldName = 'TIPO_ACCESSO'
      Size = 1
    end
    object RefertazioneDATA_CONSEGNA: TDateTimeField
      FieldName = 'DATA_CONSEGNA'
    end
    object RefertazioneDESC_INVIO: TStringField
      DisplayLabel = 'Tipo invio'
      FieldName = 'DESC_INVIO'
      Size = 100
    end
    object RefertazioneETICHETTE: TIntegerField
      DisplayLabel = 'Etichette'
      FieldName = 'ETICHETTE'
    end
    object RefertazioneREF_STAMPATO: TIntegerField
      DisplayLabel = 'Referto'
      FieldName = 'REF_STAMPATO'
    end
    object RefertazioneRADIOLOGIA: TStringField
      DisplayLabel = 'Unit'#224' Organizzativa'
      FieldName = 'RADIOLOGIA'
      Size = 60
    end
    object RefertazioneCEREFERTO: TIntegerField
      FieldName = 'CEREFERTO'
    end
    object RefertazioneCODICE_FISCALE: TStringField
      FieldName = 'CODICE_FISCALE'
      Size = 32
    end
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = []
    Storage = rsStorage1
    Options = [poStoreDefValues]
    RootSection = 'FDaStampare.rsPropSaver1'
    Properties.Strings = (
      'dxDaConsegnare.Down'
      'dxConsegnati.Down'
      'dxEsterni.Down'
      'dxInterni.Down'
      'dxPS.Down'
      'dxTutti.Down'
      'GridConsegnati.OptionsView.DataRowHeight'
      'dxAutoSize.Down'
      'dxAttivaRefresh.Down'
      'dxConEsami.Down'
      'dxSoloConsegna.Down'
      'dxStampaEtichette.Down'
      'dxStampaReferto.Down'
      'dxCreaCD.Down'
      'dxAnticipo.Value'
      'dxBarcodeCreaCD.Down'
      'dxBarcodeEtichette.Down'
      'dxBarcodeStampaReferto.Down')
    WhenLoad = wlManual
    WhenSave = wsManual
    Left = 440
    Top = 172
  end
  object dxBarPopupDaStampare: TdxBarPopupMenu
    BarManager = dxBarManDaStampare
    ItemLinks = <
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
        ItemName = 'dxSelezionaTutto'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarReferto'
      end
      item
        Visible = True
        ItemName = 'dxBarSubItem4'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton17'
      end
      item
        Visible = True
        ItemName = 'dxStampaEtichette'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxAttivaRefresh'
      end
      item
        Visible = True
        ItemName = 'dxBarButton15'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem2'
      end>
    UseOwnFont = False
    Left = 268
    Top = 376
  end
  object Consegnati: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    FilterOptions = [foCaseInsensitive]
    Constraints = <>
    BeforeQuery = ConsegnatiBeforeQuery
    SequenceField.ApplyMoment = amOnNewRecord
    OnAfterPopulate = ConsegnatiAfterPopulate
    EditMode = 'Read Only'
    UpdateTableName = 'TRIAGE'
    PrimeFields.Strings = (
      'PKTRIAGE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      't.pktriage,'
      't.cod_med_firma,'
      't.data_referto,'
      't.data_accettazione,'
      't.data_visita,'
      't.RIS_STUDY_EUID,'
      'i.assistibili_fk,'
      'i.pkimpegnative,'
      't.reparti_fk,'
      't.cd_creato,'
      't.etichette,'
      't.ref_stampato,'
      't.ceimmagini,'
      'i.urgenza,'
      'i.provenienza,'
      't.statovisita,'
      't.user_id,'
      't.note_preno,'
      'a.NOMINATIVO,'
      'a.DATA_NASCITA,'
      'a.CODICE_FISCALE,'
      'i.servizio_rich_fk,'
      'sv.reparti_fk as rep_rich,'
      'i.cod_med_int,'
      
        'DECODE(i.provenienza,'#39'E'#39',o.descrizione,r.descrizione) as Reparto' +
        ','
      'sv.descrizione as Servizio,'
      'd.descrizione as Diagnostica,'
      'u.nominativo as MedRiservato,'
      'to_char(t.data_consegna,'#39'DD/MM/YYYY'#39') as data_consegna,'
      'ta.tipo_accesso,'
      'ti.descrizione as Desc_invio,'
      'rd.descrizione as Radiologia,'
      'ris.VediReferto(t.reparti_fk,1,1,t.statovisita) as CEREFERTO'
      'from consegna_referti c'
      'join triage t on t.reparti_fk = c.consegna_per'
      'join impegnative i on i.pkimpegnative = t.impegnative_fk'
      'join assistibili a on a.pkassistibili = i.assistibili_fk'
      'left join reparti r on r.pkreparti = i.reparto_rich_fk'
      'left join ospedali o on o.codice = i.osp_rich'
      'left join servizi sv on sv.pkservizi = i.servizio_rich_fk'
      'left join personale u on u.pkpersonale = t.cod_med_firma'
      'join servizi d on d.pkservizi = t.diagnostica_fk'
      
        'join wtipo_attivita ta on ta.tipo_attivita = i.tipo_attivita_fk ' +
        'and ta.lingua=:lingua'
      
        'left join wtipoinvio ti on ti.pkinvio = i.invio_fk and ti.lingua' +
        '=:lingua'
      'join reparti rd on rd.pkreparti = t.reparti_fk'
      'where c.radiologia = :reparti_fk'
      'and t.statovisita = 190'
      
        'and t.data_consegna between :dal and to_date(to_char(:al,'#39'DDMMYY' +
        'YY'#39')||'#39'2359'#39','#39'DDMMYYYYHH24MI'#39')'
      ':provenienza'
      ' '
      ' '
      ' ')
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
      end
      item
        Name = 'dal'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 40544d
      end
      item
        Name = 'al'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 40544d
      end
      item
        Name = 'provenienza'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = '#'
      end>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      030000001600000008000000504B56495349544501000000000B000000444154
      415F56495349544101000000000B00000050524F56454E49454E5A4101000000
      000E0000004C494E4755415F5245464552544F01000000000700000055524745
      4E5A4101000000000E0000004153534953544942494C495F464B01000000000A
      000000524550415254495F464B01000000000800000053455256495A494F0100
      0000000A0000004E4F4D494E415449564F01000000001000000053455256495A
      494F5F524943485F464B0100000000080000005245505F524943480100000000
      0B000000434F445F4D45445F494E540100000000070000005245504152544F01
      00000000060000004D454449434F01000000000B000000535441544F56495349
      5441010000000008000000504B54524941474501000000000B00000044494147
      4E4F535449434101000000000D000000434F445F4D45445F4649524D41010000
      00000A000000434F444943455F524144010000000009000000555247454E5A41
      5053010000000007000000434F445F52414401000000000C0000004143434553
      53494F4E5F4E520100000000}
    Left = 588
    Top = 212
    FastFields = (
      'PKTRIAGE,3,0'
      'COD_MED_FIRMA,3,0'
      'DATA_REFERTO,11,0'
      'DATA_ACCETTAZIONE,11,0'
      'DATA_VISITA,11,0'
      'RIS_STUDY_EUID,1,100'
      'ASSISTIBILI_FK,3,0'
      'PKIMPEGNATIVE,3,0'
      'REPARTI_FK,3,0'
      'CD_CREATO,3,0'
      'ETICHETTE,3,0'
      'REF_STAMPATO,3,0'
      'CEIMMAGINI,3,0'
      'URGENZA,3,0'
      'PROVENIENZA,1,1'
      'STATOVISITA,3,0'
      'USER_ID,3,0'
      'NOTE_PRENO,1,4000'
      'NOMINATIVO,1,122'
      'DATA_NASCITA,11,0'
      'CODICE_FISCALE,1,32'
      'SERVIZIO_RICH_FK,3,0'
      'REP_RICH,3,0'
      'COD_MED_INT,3,0'
      'REPARTO,1,80'
      'SERVIZIO,1,100'
      'DIAGNOSTICA,1,100'
      'MEDRISERVATO,1,70'
      'DATA_CONSEGNA,1,10'
      'TIPO_ACCESSO,1,1'
      'DESC_INVIO,1,200'
      'RADIOLOGIA,1,60'
      'CEREFERTO,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object ConsegnatiPKTRIAGE: TIntegerField
      DisplayLabel = 'Nr. Esame'
      DisplayWidth = 10
      FieldName = 'PKTRIAGE'
    end
    object ConsegnatiCOD_MED_FIRMA: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_MED_FIRMA'
    end
    object ConsegnatiURGENZA: TIntegerField
      DisplayWidth = 10
      FieldName = 'URGENZA'
    end
    object ConsegnatiASSISTIBILI_FK: TIntegerField
      DisplayWidth = 10
      FieldName = 'ASSISTIBILI_FK'
    end
    object ConsegnatiREPARTI_FK: TIntegerField
      DisplayWidth = 10
      FieldName = 'REPARTI_FK'
    end
    object ConsegnatiNOMINATIVO: TStringField
      DisplayLabel = 'Paziente'
      DisplayWidth = 122
      FieldName = 'NOMINATIVO'
      Size = 122
    end
    object ConsegnatiSERVIZIO_RICH_FK: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERVIZIO_RICH_FK'
    end
    object ConsegnatiREP_RICH: TIntegerField
      DisplayWidth = 10
      FieldName = 'REP_RICH'
    end
    object ConsegnatiCOD_MED_INT: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_MED_INT'
    end
    object ConsegnatiREPARTO: TStringField
      DisplayLabel = 'Provenienza'
      DisplayWidth = 60
      FieldName = 'REPARTO'
      Size = 60
    end
    object ConsegnatiSERVIZIO: TStringField
      DisplayLabel = 'Servizio'
      DisplayWidth = 100
      FieldName = 'SERVIZIO'
      Size = 100
    end
    object ConsegnatiMEDRISERVATO: TStringField
      DisplayLabel = 'Radiologo'
      FieldName = 'MEDRISERVATO'
      Size = 40
    end
    object ConsegnatiSTATOVISITA: TIntegerField
      FieldName = 'STATOVISITA'
    end
    object ConsegnatiUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object ConsegnatiPKIMPEGNATIVE: TIntegerField
      DisplayLabel = 'Nr. Accettazione'
      FieldName = 'PKIMPEGNATIVE'
    end
    object ConsegnatiDATA_REFERTO: TDateTimeField
      DisplayLabel = 'Data referto'
      FieldName = 'DATA_REFERTO'
    end
    object ConsegnatiDATA_NASCITA: TDateTimeField
      DisplayLabel = 'Data nascita'
      FieldName = 'DATA_NASCITA'
    end
    object ConsegnatiPROVENIENZA: TStringField
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object ConsegnatiDATA_ACCETTAZIONE: TDateTimeField
      DisplayLabel = 'Data accettazione'
      FieldName = 'DATA_ACCETTAZIONE'
      DisplayFormat = 'ddddd'
    end
    object ConsegnatiDATA_VISITA: TDateTimeField
      DisplayLabel = 'Data esame'
      FieldName = 'DATA_VISITA'
      DisplayFormat = 'ddddd'
    end
    object ConsegnatiDIAGNOSTICA: TStringField
      DisplayLabel = 'Diagnostica'
      FieldName = 'DIAGNOSTICA'
      Size = 100
    end
    object ConsegnatiRIS_STUDY_EUID: TStringField
      DisplayLabel = 'Nr. Esame'
      FieldName = 'RIS_STUDY_EUID'
      Size = 100
    end
    object ConsegnatiCD_CREATO: TIntegerField
      DisplayLabel = 'CD'
      FieldName = 'CD_CREATO'
    end
    object ConsegnatiCEIMMAGINI: TIntegerField
      DisplayLabel = 'Immagini'
      FieldName = 'CEIMMAGINI'
    end
    object ConsegnatiDATA_CONSEGNA: TStringField
      DisplayLabel = 'Data consegna'
      FieldName = 'DATA_CONSEGNA'
      Size = 10
    end
    object ConsegnatiNOTE_PRENO: TStringField
      DisplayLabel = 'Note'
      FieldName = 'NOTE_PRENO'
      Size = 4000
    end
    object ConsegnatiTIPO_ACCESSO: TStringField
      FieldName = 'TIPO_ACCESSO'
      Size = 1
    end
    object ConsegnatiDESC_INVIO: TStringField
      DisplayLabel = 'Tipo invio'
      FieldName = 'DESC_INVIO'
      Size = 100
    end
    object ConsegnatiETICHETTE: TIntegerField
      DisplayLabel = 'Etichette'
      FieldName = 'ETICHETTE'
    end
    object ConsegnatiREF_STAMPATO: TIntegerField
      DisplayLabel = 'Referto'
      FieldName = 'REF_STAMPATO'
    end
    object ConsegnatiRADIOLOGIA: TStringField
      DisplayLabel = 'Unit'#224' Organizzativa'
      FieldName = 'RADIOLOGIA'
      Size = 60
    end
    object ConsegnatiCEREFERTO: TIntegerField
      FieldName = 'CEREFERTO'
    end
    object ConsegnatiCODICE_FISCALE: TStringField
      FieldName = 'CODICE_FISCALE'
      Size = 32
    end
  end
  object sConsegnati: TDataSource
    DataSet = Consegnati
    Left = 700
    Top = 240
  end
  object dxBarPopConsegnati: TdxBarPopupMenu
    BarManager = dxBarManDaStampare
    ItemLinks = <
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
        ItemName = 'dxSelezionaTutto'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarReferto'
      end
      item
        Visible = True
        ItemName = 'dxBarSubItem4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton17'
      end
      item
        Visible = True
        ItemName = 'dxStampaEtichette'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxAttivaRefresh'
      end
      item
        Visible = True
        ItemName = 'dxBarButton15'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end>
    UseOwnFont = False
    Left = 516
    Top = 420
  end
  object RitornaDaConsegnare: TAstaClientDataSet
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
      '  update TRIAGE'
      '  set'
      '  statovisita=statovisita-10,'
      '  user_id=:user_id'
      '  where pktriage=:pktriage;'
      'end;')
    Params = <
      item
        Name = 'user_id'
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
      end>
    QBEMode = False
    Left = 124
    Top = 344
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object qryUser: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
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
      ' u.PASSWORD as USER_PWD ,'
      ' u.PKPERSONALE as USER_ID,'
      ' u.matricola,'
      ' u.profilo_vocale,'
      ' pr.cod_funzione,'
      ' u.pkpersonale'
      'from persxrep pr'
      'join Personale u on u.pkpersonale = pr.personale_fk'
      'where pr.reparti_fk = :reparti_fk'
      'and (u.data_fine is null or u.data_fine>SYSDATE)'
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
      'REAL_NAME,1,61'
      'ISADMIN,3,0'
      'USER_PWD,1,30'
      'USER_ID,3,0'
      'MATRICOLA,1,50'
      'PROFILO_VOCALE,1,30'
      'COD_FUNZIONE,3,0'
      'PKPERSONALE,3,0')
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
      Size = 50
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
  end
  object EventLogCD: TKSAstaEventClient
    AstaClientSocket = FDMCommon.AstaClientSocket
    DataSets = <
      item
        NomeTable = 'log_cd'
        DataSource = sRefertazione
        DBTableView = GridDaRefertare
        OnAcceptActiveEvent = EventLogCDDataSets0AcceptActiveEvent
      end
      item
        NomeTable = 'log_cd'
        DataSource = sConsegnati
        DBTableView = GridConsegnati
        OnAcceptActiveEvent = EventLogCDDataSets0AcceptActiveEvent
      end>
    Left = 444
    Top = 223
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxPrintGridConsegnati
    Version = 0
    Left = 596
    Top = 332
    object dxPrintGridDaConsegnare: TdxGridReportLink
      Active = True
      Component = cxGrid1
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
      PrinterPage.PageFooter.Font.Name = 'Source Sans Pro'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageFooter.LeftTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[User Name]')
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Lista esami da consegnare')
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
      ReportDocument.Caption = 'Lista pazienti eseguiti'
      ReportDocument.CreationDate = 42333.934544918980000000
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
    object dxPrintGridConsegnati: TdxGridReportLink
      Active = True
      Component = cxGrid2
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
      PrinterPage.PageFooter.Font.Name = 'Source Sans Pro'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageFooter.LeftTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[User Name]')
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Lista esami consegnati')
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
      ReportDocument.Caption = 'Lista pazienti da eseguire'
      ReportDocument.CreationDate = 42333.934544918980000000
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
  object dxPrintDialogRef: TdxPrintDialog
    ButtonsEnabled = [pdbPageSetup]
    ButtonsVisible = [pdbPageSetup]
    OptionsEnabled = [pdoAllPages]
    OptionsVisible = [pdoAllPages]
    StyleManager = FDMCommon.dxPrintStyleManager1
    OnShow = dxPrintDialogRefShow
    Left = 696
    Top = 404
  end
  object DettRefertazione: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_DettRefertazione'
        Fields = 'triage_fk;pkprestazioni'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_DettRefertazione'
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = DettRefertazioneBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      '     p.pkprestazioni,'
      '     p.triage_fk,'
      '     p.stato,'
      '     p.ident_fk,'
      '     c.pkcodicirad,'
      '     c.codice,'
      
        '     NVL2(p.specificazioni_fk,c.descrizione||'#39' '#39'||s.descrizione,' +
        'c.descrizione) as Descrizione,'
      '     p.DURATA,'
      '     p.numero_prestazione,'
      '     m.magart_fk,'
      '     m.quantita as qr'
      'from consegna_referti c'
      'join triage t on t.reparti_fk = c.consegna_per'
      'join impegnative i on i.pkimpegnative = t.impegnative_fk'
      'join prestazioni p on p.triage_fk = t.pktriage'
      'left join codicirad c on c.pkcodicirad = p.codicirad_fk'
      
        'left join movim m on m.prestazioni_fk = p.pkprestazioni and m.ti' +
        'po = 1'
      
        'left join specificazioni s on s.pkspecificazioni = p.specificazi' +
        'oni_fk'
      'where c.radiologia = :reparti_fk and'
      't.statovisita between 170 and 180 and'
      
        't.data_ritiro_referto between :dal and to_date(to_char(:al,'#39'DDMM' +
        'YYYY'#39')||'#39'2359'#39','#39'DDMMYYYYHH24MI'#39')'
      ':provenienza'
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
        Value = 0
      end
      item
        Name = 'dal'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 0d
      end
      item
        Name = 'al'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 0d
      end
      item
        Name = 'provenienza'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = '#'
      end>
    QBEMode = False
    Left = 143
    Top = 245
    FastFields = (
      'PKPRESTAZIONI,6,0'
      'TRIAGE_FK,3,0'
      'STATO,3,0'
      'IDENT_FK,1,12'
      'PKCODICIRAD,3,0'
      'CODICE,1,12'
      'DESCRIZIONE,1,131'
      'DURATA,3,0'
      'NUMERO_PRESTAZIONE,3,0'
      'MAGART_FK,3,0'
      'QR,6,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object DettRefertazionePKPRESTAZIONI: TFloatField
      FieldName = 'PKPRESTAZIONI'
    end
    object DettRefertazioneTRIAGE_FK: TIntegerField
      FieldName = 'TRIAGE_FK'
    end
    object DettRefertazioneSTATO: TIntegerField
      DisplayLabel = 'Stato'
      FieldName = 'STATO'
    end
    object DettRefertazioneIDENT_FK: TStringField
      DisplayLabel = 'Tariffario'
      FieldName = 'IDENT_FK'
      Size = 12
    end
    object DettRefertazionePKCODICIRAD: TIntegerField
      FieldName = 'PKCODICIRAD'
    end
    object DettRefertazioneCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object DettRefertazioneDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 131
    end
    object DettRefertazioneDURATA: TIntegerField
      DisplayLabel = 'Durata'
      FieldName = 'DURATA'
    end
    object DettRefertazioneNUMERO_PRESTAZIONE: TIntegerField
      DisplayLabel = 'Q.'
      FieldName = 'NUMERO_PRESTAZIONE'
    end
    object DettRefertazioneMAGART_FK: TIntegerField
      DisplayLabel = 'Radiofarmaco'
      FieldName = 'MAGART_FK'
    end
    object DettRefertazioneQR: TFloatField
      DisplayLabel = 'Dose'
      FieldName = 'QR'
    end
  end
  object sDettRefertazione: TDataSource
    DataSet = DettRefertazione
    Left = 224
    Top = 280
  end
  object DettConsegnati: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_DettConsegnati'
        Fields = 'triage_fk;pkprestazioni'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_DettConsegnati'
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = DettConsegnatiBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      '     p.pkprestazioni,'
      '     p.triage_fk,'
      '     p.stato,'
      '     p.ident_fk,'
      '     c.pkcodicirad,'
      '     c.codice,'
      
        '     NVL2(p.specificazioni_fk,c.descrizione||'#39' '#39'||s.descrizione,' +
        'c.descrizione) as Descrizione,'
      '     p.DURATA,'
      '     p.numero_prestazione,'
      '     m.magart_fk,'
      '     m.quantita as qr'
      'from consegna_referti c'
      'join triage t on t.reparti_fk = c.consegna_per'
      'join impegnative i on i.pkimpegnative = t.impegnative_fk'
      'join prestazioni p on p.triage_fk = t.pktriage'
      'left join codicirad c on c.pkcodicirad = p.codicirad_fk'
      
        'left join movim m on m.prestazioni_fk = p.pkprestazioni and m.ti' +
        'po = 1'
      
        'left join specificazioni s on s.pkspecificazioni = p.specificazi' +
        'oni_fk'
      'where c.radiologia = :reparti_fk'
      'and t.statovisita = 190'
      
        'and t.data_consegna between :dal and to_date(to_char(:al,'#39'DDMMYY' +
        'YY'#39')||'#39'2359'#39','#39'DDMMYYYYHH24MI'#39')'
      ':provenienza'
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
        Value = 0
      end
      item
        Name = 'dal'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 0d
      end
      item
        Name = 'al'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 0d
      end
      item
        Name = 'provenienza'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = '#'
      end>
    QBEMode = False
    Left = 575
    Top = 265
    FastFields = (
      'PKPRESTAZIONI,6,0'
      'TRIAGE_FK,3,0'
      'STATO,3,0'
      'IDENT_FK,1,12'
      'PKCODICIRAD,3,0'
      'CODICE,1,12'
      'DESCRIZIONE,1,131'
      'DURATA,3,0'
      'NUMERO_PRESTAZIONE,3,0'
      'MAGART_FK,3,0'
      'QR,6,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object DettConsegnatiPKPRESTAZIONI: TFloatField
      FieldName = 'PKPRESTAZIONI'
    end
    object DettConsegnatiTRIAGE_FK: TIntegerField
      FieldName = 'TRIAGE_FK'
    end
    object DettConsegnatiSTATO: TIntegerField
      DisplayLabel = 'Stato'
      FieldName = 'STATO'
    end
    object DettConsegnatiIDENT_FK: TStringField
      DisplayLabel = 'Tariffario'
      FieldName = 'IDENT_FK'
      Size = 12
    end
    object DettConsegnatiPKCODICIRAD: TIntegerField
      FieldName = 'PKCODICIRAD'
    end
    object DettConsegnatiCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object DettConsegnatiDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 131
    end
    object DettConsegnatiDURATA: TIntegerField
      DisplayLabel = 'Durata'
      FieldName = 'DURATA'
    end
    object DettConsegnatiNUMERO_PRESTAZIONE: TIntegerField
      DisplayLabel = 'Q.'
      FieldName = 'NUMERO_PRESTAZIONE'
    end
    object DettConsegnatiMAGART_FK: TIntegerField
      DisplayLabel = 'Radiofarmaco'
      FieldName = 'MAGART_FK'
    end
    object DettConsegnatiQR: TFloatField
      DisplayLabel = 'Dose'
      FieldName = 'QR'
    end
  end
  object sDettConsegnati: TDataSource
    DataSet = DettConsegnati
    Left = 676
    Top = 292
  end
  object ConsegnaReferti: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = ConsegnaRefertiBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'c.radiologia, '
      'c.consegna_per'
      'from consegna_referti c'
      'where c.radiologia = :reparti_fk'
      'and c.consegna_per<>:reparti_fk')
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
    Left = 359
    Top = 386
    FastFields = (
      'RADIOLOGIA,3,0'
      'CONSEGNA_PER,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object ConsegnaRefertiRADIOLOGIA: TIntegerField
      FieldName = 'RADIOLOGIA'
    end
    object ConsegnaRefertiCONSEGNA_PER: TIntegerField
      FieldName = 'CONSEGNA_PER'
    end
  end
end
