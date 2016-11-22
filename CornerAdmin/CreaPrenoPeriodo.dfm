inherited FCreaPrenoPeriodo: TFCreaPrenoPeriodo
  Left = 242
  Top = 51
  ActiveControl = Scheduler
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Template agende - '
  ClientHeight = 660
  ClientWidth = 1014
  OnDestroy = BaseFormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 24
  inherited cxGroupBox1: TcxGroupBox
    Top = 610
    Width = 1014
    inherited btSalva: TcxButton
      Width = 121
      Visible = False
    end
    inherited btAnnulla: TcxButton
      Left = 738
      Width = 121
      Action = aAnnulla
      ModalResult = 0
    end
    inherited cxPersonalizza: TcxButton
      Left = 979
      TabOrder = 5
    end
    object ksfcImageBtn1: TcxButton
      Left = 433
      Top = 5
      Width = 121
      Height = 41
      Action = aSalva
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Source Sans Pro'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      LookAndFeel.Kind = lfUltraFlat
    end
    object ksfcImageBtn2: TcxButton
      Left = 146
      Top = 5
      Width = 183
      Height = 41
      Action = aAggiornaAgende
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Source Sans Pro'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      LookAndFeel.Kind = lfUltraFlat
    end
    object cxButton1: TcxButton
      Left = 565
      Top = 5
      Width = 164
      Height = 41
      Action = aSalvaNome
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Source Sans Pro'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      LookAndFeel.Kind = lfUltraFlat
    end
  end
  object cxPageControl: TcxPageControl [1]
    Left = 0
    Top = 34
    Width = 1014
    Height = 576
    Align = alClient
    TabOrder = 5
    Properties.ActivePage = cxCalendario
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 570
    ClientRectLeft = 3
    ClientRectRight = 1008
    ClientRectTop = 37
    object cxCalendario: TcxTabSheet
      Caption = 'cxCalendario'
      ImageIndex = 0
      object Scheduler: TcxScheduler
        Left = 0
        Top = 33
        Width = 1005
        Height = 500
        DateNavigator.RowCount = 2
        DateNavigator.ShowDatesContainingHolidaysInColor = True
        DateNavigator.Visible = False
        ViewDay.Active = True
        ViewDay.AlwaysShowEventTime = True
        ViewDay.AutoContentHeight = True
        ViewDay.EventImagesLayout = eilHorizontal
        ViewDay.HeaderContainer = False
        ViewDay.TimeRulerMinutes = True
        ViewDay.TimeRulerPopupMenu.Items = [rpmi60min, rpmi30min, rpmi15min, rpmi10min, rpmi6min, rpmi5min]
        ViewWeeks.CompressWeekEnd = False
        OnCustomDrawDayHeader = SchedulerCustomDrawDayHeader
        OnInitEventImages = SchedulerInitEventImages
        Align = alClient
        ContentPopupMenu.PopupMenu = dxBarPopupGrid
        ContentPopupMenu.UseBuiltInPopupMenu = False
        ContentPopupMenu.Items = [cpmiNewEvent, cpmiToday, cpmiGoToDate, cpmiGoToThisDay]
        ControlBox.Visible = False
        DialogsLookAndFeel.Kind = lfFlat
        DialogsLookAndFeel.NativeStyle = False
        EventImages = FDMCommon.imIcone
        EventOperations.Deleting = False
        EventOperations.InplaceEditing = False
        EventOperations.Intersection = False
        EventOperations.MovingBetweenResources = False
        EventOperations.Recurrence = False
        EventPopupMenu.PopupMenu = dxBarPopupItem
        EventPopupMenu.UseBuiltInPopupMenu = False
        OptionsBehavior.SelectOnRightClick = True
        OptionsCustomize.DynamicSizing = True
        OptionsView.ShowNavigationButtons = False
        OptionsView.ViewPosition = vpRight
        OptionsView.WorkDays = [dSunday, dMonday, dTuesday, dWednesday, dThursday, dFriday, dSaturday]
        ParentFont = True
        ResourceNavigator.ShowButtons = False
        ResourceNavigator.Visibility = snvAlways
        Storage = cxSchedulerDBStorage
        TabOrder = 0
        OnBeforeEditing = SchedulerBeforeEditing
        OnIsWorkTime = SchedulerIsWorkTime
        Selection = 7
        Splitters = {
          01000000720200009400000077020000A900000001000000AE0000002D020000}
        StoredClientBounds = {0100000001000000EC030000F3010000}
      end
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1005
        Height = 33
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object cxLista: TcxTabSheet
      Caption = 'cxLista'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 33
        Width = 1005
        Height = 500
        Align = alClient
        TabOrder = 0
        object cxGiorni: TcxGridDBTableView
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
          DataController.DataSource = sqTempAgende
          DataController.KeyFieldNames = 'GIORNO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          object cxGiorniGIORNO: TcxGridDBColumn
            DataBinding.FieldName = 'GIORNO'
            Visible = False
            GroupIndex = 0
            Options.Editing = False
            Options.Sorting = False
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxGiorniORA_INIZIO: TcxGridDBColumn
            DataBinding.FieldName = 'ORA_INIZIO'
            Options.Editing = False
            Options.Filtering = False
            SortIndex = 1
            SortOrder = soAscending
            Width = 60
          end
          object cxGiorniORA_FINE: TcxGridDBColumn
            DataBinding.FieldName = 'ORA_FINE'
            Options.Editing = False
            Options.Filtering = False
            Width = 88
          end
          object cxGiorniDESCRADSERV: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRADSERV'
            Options.Editing = False
            Width = 114
          end
          object cxGiorniPROVENIENZA: TcxGridDBColumn
            DataBinding.FieldName = 'PROVENIENZA'
            RepositoryItem = FDMCommon.edRepPROVENIENZA_PRENO
            Options.Editing = False
            Width = 96
          end
          object cxGiorniOSPEDALE: TcxGridDBColumn
            DataBinding.FieldName = 'OSPEDALE'
            Visible = False
            Options.Editing = False
            Width = 146
          end
          object cxGiorniREPRICHIEDE: TcxGridDBColumn
            DataBinding.FieldName = 'REPRICHIEDE'
            Options.Editing = False
            Width = 137
          end
          object cxGiorniSERVRICHIEDE: TcxGridDBColumn
            DataBinding.FieldName = 'SERVRICHIEDE'
            Options.Editing = False
            Width = 142
          end
          object cxGiorniTIPOATTIVITA: TcxGridDBColumn
            DataBinding.FieldName = 'TIPOATTIVITA'
            Options.Editing = False
            Width = 181
          end
          object cxGiorniDIPARTIMENTO: TcxGridDBColumn
            Caption = 'Dipartimento'
            DataBinding.FieldName = 'DIPARTIMENTO'
            Options.Editing = False
            Width = 158
          end
        end
        object cxEsami: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataModeController.SyncMode = False
          DataController.DataSource = sQyEsami
          DataController.DetailKeyFieldNames = 'TEMPAGENDE_FK'
          DataController.KeyFieldNames = 'CODICE'
          DataController.MasterKeyFieldNames = 'PKTEMPAGENDE'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.GroupByBox = False
          object cxEsamiCODICE: TcxGridDBColumn
            DataBinding.FieldName = 'CODICE'
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxEsamiDESCRIZIONE: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIZIONE'
            Width = 200
          end
          object cxEsamiDURATA: TcxGridDBColumn
            DataBinding.FieldName = 'DURATA'
          end
          object cxEsamiIDENT_FK: TcxGridDBColumn
            DataBinding.FieldName = 'IDENT_FK'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGiorni
          object cxGrid1Level2: TcxGridLevel
            GridView = cxEsami
          end
        end
      end
      object dxBarDockControl2: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1005
        Height = 33
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
  end
  inherited csEZKeys1: TcsEZKeys
    Left = 588
    Top = 36
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
      'Default'
      'Selezioni'
      'Operazioni'
      'Setup Calendario')
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
    Left = 356
    Top = 192
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
      Caption = 'Custom 1'
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
          ItemName = 'dxBarSubItem3'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 159
          Visible = True
          ItemName = 'dxDal'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 156
          Visible = True
          ItemName = 'dxAl'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxCalendario'
        end
        item
          Visible = True
          ItemName = 'dxLista'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Calendario'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 449
      FloatTop = 138
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton10'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Lista'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 449
      FloatTop = 138
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxStampa'
        end
        item
          Visible = True
          ItemName = 'dxSenza'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarButton1: TdxBarButton
      Action = aCreaPeriodo
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = aModificaPeriodo
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = aCancellaPeriodo
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = aSalvaTemplate
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton9: TdxBarButton
      Action = aSalvaConNome
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton7: TdxBarButton
      Action = aLeggiTemplate
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'Strumenti'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end>
    end
    object dxDal: TcxBarEditItem
      Caption = 'Periodo dal'
      Category = 0
      Hint = 'Periodo dal'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.ArrowsForYear = False
      Properties.DateButtons = [btnToday]
      Properties.SaveTime = False
      Properties.ShowTime = False
    end
    object dxAl: TcxBarEditItem
      Caption = 'al'
      Category = 0
      Hint = 'al'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.ArrowsForYear = False
      Properties.DateButtons = [btnToday]
      Properties.SaveTime = False
      Properties.ShowTime = False
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Provenienza'
      Category = 1
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
          ItemName = 'dxEntrambi'
        end>
    end
    object dxEsterni: TdxBarButton
      Caption = 'Esterni'
      Category = 1
      Hint = 'Esterni'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      Down = True
    end
    object dxInterni: TdxBarButton
      Caption = 'Interni'
      Category = 1
      Hint = 'Interni'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object dxEntrambi: TdxBarButton
      Caption = 'Entrambi'
      Category = 1
      Hint = 'Entrambi'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Aggiungi prenotazioni'
      Category = 2
      Hint = 'Aggiungi prenotazioni'
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Action = aCopia
      Category = 2
    end
    object dxBarButton8: TdxBarButton
      Action = aIncolla
      Category = 2
    end
    object dxCalendario: TdxBarButton
      Caption = 'Calendario'
      Category = 2
      Hint = 'Calendario'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxCalendarioClick
    end
    object dxLista: TdxBarButton
      Caption = 'Lista'
      Category = 2
      Hint = 'Lista'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxListaClick
    end
    object dxStampa: TdxBarButton
      Action = Stampa
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxSenza: TdxBarButton
      Action = StampaSenza
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton10: TdxBarButton
      Action = aStampaCalendario
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Setup calendario'
      Category = 3
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxPeriodo'
        end
        item
          Visible = True
          ItemName = 'dxSettimanaTipo'
        end
        item
          Visible = True
          ItemName = 'dxGiornoTipo'
        end>
    end
    object dxSettimanaTipo: TdxBarButton
      Caption = 'Settimana tipo'
      Category = 3
      Hint = 'Settimana tipo'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 2
      Down = True
      OnClick = aSceltaTipoTemplateExecute
    end
    object dxGiornoTipo: TdxBarButton
      Caption = 'Giorno tipo'
      Category = 3
      Hint = 'Giorno tipo'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 2
      OnClick = aSceltaTipoTemplateExecute
    end
    object dxPeriodo: TdxBarCombo
      Caption = 'Periodo'
      Category = 3
      Hint = 'Periodo'
      Visible = ivAlways
      OnChange = dxPeriodoChange
      Text = '30 minuti'
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
  end
  object ActionList1: TActionList
    Images = FDMCommon.cxImageNavigator16
    Left = 392
    Top = 252
    object aAggiornaAgende: TAction
      Caption = 'Aggiorna agende'
      Hint = 'Aggiorna le agende di prenotazione'
      ImageIndex = 18
      OnExecute = aAggiornaAgendeExecute
      OnUpdate = aAggiornaAgendeUpdate
    end
    object aCreaPeriodo: TAction
      Caption = 'Crea periodo'
      Hint = 'Creazione nuovo periodo'
      ImageIndex = 17
      OnExecute = aCreaPeriodoExecute
    end
    object aModificaPeriodo: TAction
      Caption = 'Modifica periodo'
      Hint = 'Modifica periodo selezionato'
      ImageIndex = 8
      OnExecute = aModificaPeriodoExecute
      OnUpdate = aModificaPeriodoUpdate
    end
    object aCancellaPeriodo: TAction
      Caption = 'Cancella periodo'
      Hint = 'Cancella periodo selezionato'
      ImageIndex = 7
      OnExecute = aCancellaPeriodoExecute
      OnUpdate = aCancellaPeriodoUpdate
    end
    object aSceltaTipoTemplate: TAction
      Caption = 'aSceltaTipoTemplate'
      OnExecute = aSceltaTipoTemplateExecute
    end
    object aSalvaTemplate: TAction
      Caption = 'Salva template'
      Hint = 'Salva in un template'
      ImageIndex = 13
      OnExecute = aSalvaTemplateExecute
      OnUpdate = aSalvaTemplateUpdate
    end
    object aSalvaConNome: TAction
      Caption = 'Salva template con nome'
      ImageIndex = 13
      OnExecute = aSalvaConNomeExecute
      OnUpdate = aSalvaConNomeUpdate
    end
    object aLeggiTemplate: TAction
      Caption = 'Carica da template'
      Hint = 'Carica da un template esistente'
      ImageIndex = 36
      OnExecute = aLeggiTemplateExecute
    end
    object aCopia: TAction
      Caption = 'Copia'
      Hint = 'Copia periodo selezionato'
      ImageIndex = 36
      OnExecute = aCopiaExecute
      OnUpdate = aCopiaUpdate
    end
    object aIncolla: TAction
      Caption = 'Incolla'
      Hint = 'Incolla periodo copiato'
      ImageIndex = 37
      OnExecute = aIncollaExecute
      OnUpdate = aIncollaUpdate
    end
    object aSalva: TAction
      Caption = 'Salva'
      Hint = 'Salva le modifiche'
      ImageIndex = 9
      OnExecute = aSalvaExecute
      OnUpdate = aSalvaUpdate
    end
    object aSalvaNome: TAction
      Caption = 'Salva con nome'
      Hint = 'Salva con nome le modifiche'
      OnExecute = aSalvaNomeExecute
      OnUpdate = aSalvaNomeUpdate
    end
    object aAnnulla: TAction
      Caption = 'Annulla'
      ImageIndex = 10
      OnExecute = aAnnullaExecute
    end
    object Stampa: TAction
      Caption = 'Stampa'
      Hint = 'Stampa lista con esami'
      ImageIndex = 11
      OnExecute = StampaExecute
    end
    object StampaSenza: TAction
      Caption = 'Stampa senza esami'
      Hint = 'Stampa lista senza esami'
      ImageIndex = 11
      OnExecute = StampaSenzaExecute
    end
    object aStampaCalendario: TAction
      Caption = 'Stampa calendario'
      ImageIndex = 11
      OnExecute = aStampaCalendarioExecute
    end
  end
  object qTempAgende: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'qTempAgendeIDX_ORAINIZIO'
        Fields = 'ORA_INIZIO'
        Options = []
        Selected = True
      end>
    IndexName = 'qTempAgendeIDX_ORAINIZIO'
    Aggregates = <>
    AutoCalcFields = False
    Active = False
    Constraints = <>
    BeforePost = qTempAgendeBeforePost
    AfterPost = qTempAgendeAfterPost
    BeforeDelete = qTempAgendeBeforeDelete
    AfterDelete = qTempAgendeAfterDelete
    OnCalcFields = qTempAgendeCalcFields
    BeforeQuery = qTempAgendeBeforeQuery
    SequenceField.Field = 'PKTEMPAGENDE'
    SequenceField.Sequence = 'TEMPAGENDE_PKTEMPAGENDE'
    SequenceField.ApplyMoment = amOnPost
    NoSQLFields.Strings = (
      'giorno'
      'tipo'
      'ospedale'
      'tipoattivita'
      'reprichiede'
      'servrichiede'
      'descradserv'
      'dipartimento'
      'icona'
      'colore'
      'descprovenienza'
      'tipo_fattura'
      '')
    EditMode = 'Read Only'
    UpdateTableName = 'TEMPAGENDE'
    PrimeFields.Strings = (
      'PKTEMPAGENDE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      't.pktempagende,'
      't.servizi_fk,'
      't.ora_inizio,'
      't.ora_fine,'
      't.provenienza,'
      't.bloccato,'
      't.tmplcalend_fk,'
      't.tipo_attivita_fk,'
      't.osp_rich,'
      't.prenocup,'
      't.rep_rich_fk,'
      't.serv_rich_fk,'
      't.servrad_fk,'
      't.dipartimenti_fk,'
      't.user_id,'
      't.set_colori_fk,'
      't.event_type,'
      't.options,'
      'o.descrizione as Ospedale,'
      'o.tipo_fattura,'
      'a.descrizione as TipoAttivita,'
      'rr.descrizione as RepRichiede,'
      'ss.descrizione as ServRichiede,'
      'sr.descrizione as DescRadServ,'
      'd.descrizione as Dipartimento,'
      'c.colore,'
      'tp.icona,'
      'tp.descrizione as DescProvenienza'
      'from tempagende t'
      'left join ospedali o on o.codice = t.osp_rich'
      
        'left join wtipo_attivita a on a.tipo_attivita = t.tipo_attivita_' +
        'fk and a.lingua=:lingua'
      'left join reparti rr on rr.pkreparti = t.rep_rich_fk'
      'left join servizi ss on ss.pkservizi = t.serv_rich_fk'
      'left join servizi sr on sr.pkservizi = t.servrad_fk'
      'left join dipartimenti d on d.pkdipartimenti = t.dipartimenti_fk'
      'left join set_colori c on c.pkset_colori=t.set_colori_fk'
      
        'left join wtab_provenienza tp on tp.provenienza=t.provenienza an' +
        'd tp.lingua=:lingua'
      'where t.tmplcalend_fk = :tmplcalend_fk'
      'and t.stato=1'
      ' '
      ' '
      ' '
      ' '
      ' '
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
        Name = 'tmplcalend_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 153
      end>
    DirectModify = [tsyInsert, tsyUpdate, tsyDelete]
    UpdateObject = updTempAgende
    QBEMode = False
    Left = 92
    Top = 324
    FastFields = (
      'PKTEMPAGENDE,3,0'
      'SERVIZI_FK,3,0'
      'ORA_INIZIO,11,0'
      'ORA_FINE,11,0'
      'PROVENIENZA,1,1'
      'BLOCCATO,3,0'
      'TMPLCALEND_FK,3,0'
      'TIPO_ATTIVITA_FK,1,2'
      'OSP_RICH,1,20'
      'PRENOCUP,3,0'
      'REP_RICH_FK,3,0'
      'SERV_RICH_FK,3,0'
      'SERVRAD_FK,3,0'
      'DIPARTIMENTI_FK,3,0'
      'USER_ID,3,0'
      'SET_COLORI_FK,3,0'
      'EVENT_TYPE,3,0'
      'OPTIONS,3,0'
      'OSPEDALE,1,80'
      'TIPO_FATTURA,3,0'
      'TIPOATTIVITA,1,60'
      'REPRICHIEDE,1,60'
      'SERVRICHIEDE,1,100'
      'DESCRADSERV,1,100'
      'DIPARTIMENTO,1,100'
      'COLORE,3,0'
      'ICONA,3,0'
      'DESCPROVENIENZA,1,50')
    FMultiTable = ()
    UpdateMethod = umCached
    object qTempAgendeSERVIZI_FK: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERVIZI_FK'
    end
    object qTempAgendeORA_INIZIO: TDateTimeField
      DisplayLabel = 'Inizio'
      DisplayWidth = 18
      FieldName = 'ORA_INIZIO'
      DisplayFormat = 'hh:nn'
    end
    object qTempAgendeORA_FINE: TDateTimeField
      DisplayLabel = 'Fine'
      DisplayWidth = 18
      FieldName = 'ORA_FINE'
      DisplayFormat = 'hh:nn'
    end
    object qTempAgendePKTEMPAGENDE: TIntegerField
      DisplayWidth = 10
      FieldName = 'PKTEMPAGENDE'
    end
    object qTempAgendeBLOCCATO: TIntegerField
      FieldName = 'BLOCCATO'
    end
    object qTempAgendeTMPLCALEND_FK: TIntegerField
      FieldName = 'TMPLCALEND_FK'
    end
    object qTempAgendeOSP_RICH: TStringField
      FieldName = 'OSP_RICH'
    end
    object qTempAgendeOSPEDALE: TStringField
      DisplayLabel = 'Provenienza'
      FieldName = 'OSPEDALE'
      Size = 80
    end
    object qTempAgendeGIORNO: TStringField
      DisplayLabel = 'Giorno'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'GIORNO'
      Calculated = True
    end
    object qTempAgendeTIPO_ATTIVITA_FK: TStringField
      FieldName = 'TIPO_ATTIVITA_FK'
      Size = 2
    end
    object qTempAgendeTIPOATTIVITA: TStringField
      DisplayLabel = 'Tipo attivit'#224
      FieldName = 'TIPOATTIVITA'
      Size = 60
    end
    object qTempAgendePRENOCUP: TIntegerField
      FieldName = 'PRENOCUP'
    end
    object qTempAgendeREP_RICH_FK: TIntegerField
      FieldName = 'REP_RICH_FK'
    end
    object qTempAgendeREPRICHIEDE: TStringField
      DisplayLabel = 'Reparto richiedente'
      FieldName = 'REPRICHIEDE'
      Size = 60
    end
    object qTempAgendeSERV_RICH_FK: TIntegerField
      FieldName = 'SERV_RICH_FK'
    end
    object qTempAgendeSERVRICHIEDE: TStringField
      DisplayLabel = 'Servizio richiedente'
      FieldName = 'SERVRICHIEDE'
      Size = 100
    end
    object qTempAgendeDESCRADSERV: TStringField
      DisplayLabel = 'Radiologia'
      FieldName = 'DESCRADSERV'
      Size = 100
    end
    object qTempAgendeSERVRAD_FK: TIntegerField
      FieldName = 'SERVRAD_FK'
    end
    object qTempAgendeDIPARTIMENTI_FK: TIntegerField
      FieldName = 'DIPARTIMENTI_FK'
    end
    object qTempAgendeDIPARTIMENTO: TStringField
      FieldName = 'DIPARTIMENTO'
      Size = 100
    end
    object qTempAgendeEVENT_TYPE: TIntegerField
      FieldName = 'EVENT_TYPE'
    end
    object qTempAgendeOPTIONS: TIntegerField
      FieldName = 'OPTIONS'
    end
    object qTempAgendeCOLORE: TIntegerField
      FieldName = 'COLORE'
    end
    object qTempAgendeDESCRICH: TStringField
      FieldKind = fkCalculated
      FieldName = 'DESCRICH'
      Size = 200
      Calculated = True
    end
    object qTempAgendeUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object qTempAgendeSET_COLORI_FK: TIntegerField
      FieldName = 'SET_COLORI_FK'
    end
    object qTempAgendeTIPO_FATTURA: TIntegerField
      FieldName = 'TIPO_FATTURA'
    end
    object qTempAgendePROVENIENZA: TStringField
      DisplayLabel = 'Provenienza'
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object qTempAgendeDESCPROVENIENZA: TStringField
      FieldName = 'DESCPROVENIENZA'
      Size = 50
    end
    object qTempAgendeICONA: TIntegerField
      FieldName = 'ICONA'
    end
  end
  object sqTempAgende: TDataSource
    DataSet = qTempAgende
    Left = 148
    Top = 340
  end
  object dxBarPopupItem: TdxBarPopupMenu
    BarManager = dxBarManager1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Source Sans Pro'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
      end
      item
        Visible = True
      end>
    UseOwnFont = True
    Left = 284
    Top = 156
  end
  object dxBarPopupGrid: TdxBarPopupMenu
    BarManager = dxBarManager1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Source Sans Pro'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
      end
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end>
    UseOwnFont = True
    Left = 456
    Top = 164
  end
  object QyTempEsami: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_Esami'
        Fields = 'TEMPAGENDE_FK;CODICIRAD_FK'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_Esami'
    Aggregates = <>
    Active = False
    Constraints = <>
    OnNewRecord = QyTempEsamiNewRecord
    BeforeQuery = QyTempEsamiBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'TEMPPRENOESAMI'
    PrimeFields.Strings = (
      'AGENDE_FK'
      'CODICIRAD_FK')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      't.codicirad_fk,'
      't.tempagende_fk,'
      'c.descrizione,'
      'c.codice,'
      'r.durata,'
      'c.ident_fk'
      'from tempagende a'
      'join tempprenoesami t on t.tempagende_fk = a.pktempagende'
      'join codicirad c on c.pkcodicirad = t.codicirad_fk'
      'join codxrad r on r.codicirad_fk = c.pkcodicirad'
      'where a.tmplcalend_fk = :tmplcalend_fk'
      'and r.reparti_fk = :reparti_fk'
      ' ')
    Params = <
      item
        Name = 'tmplcalend_fk'
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
    UpdateObject = updQyTempEsami
    QBEMode = False
    Left = 266
    Top = 287
    FastFields = (
      'CODICIRAD_FK,3,0'
      'TEMPAGENDE_FK,3,0'
      'DESCRIZIONE,1,100'
      'CODICE,1,12'
      'DURATA,3,0'
      'IDENT_FK,1,12')
    FMultiTable = ()
    UpdateMethod = umCached
    object QyTempEsamiCODICIRAD_FK: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODICIRAD_FK'
    end
    object QyTempEsamiDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      DisplayWidth = 50
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
    object QyTempEsamiCODICE: TStringField
      DisplayLabel = 'Codice'
      DisplayWidth = 12
      FieldName = 'CODICE'
      Size = 12
    end
    object QyTempEsamiDURATA: TIntegerField
      DisplayLabel = 'Durata'
      DisplayWidth = 10
      FieldName = 'DURATA'
    end
    object QyTempEsamiIDENT_FK: TStringField
      DisplayLabel = 'Tariffario'
      DisplayWidth = 12
      FieldName = 'IDENT_FK'
      Size = 12
    end
    object QyTempEsamiTEMPAGENDE_FK: TIntegerField
      FieldName = 'TEMPAGENDE_FK'
    end
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = []
    Storage = rsStorage1
    Options = [poStoreDefValues]
    RootSection = 'FCreaPrenoPeriodo.rsPropSaver1'
    Properties.Strings = (
      'dxGiornoTipo.Down'
      'dxSettimanaTipo.Down'
      'dxPeriodo.ItemIndex'
      'dxEsterni.Down'
      'dxInterni.Down'
      'dxEntrambi.Down')
    WhenLoad = wlManual
    WhenSave = wsManual
    Left = 248
    Top = 384
  end
  object updQyTempEsami: TAstaUpdateSQL
    DeleteSQL.Strings = (
      'delete tempprenoesami'
      'where codicirad_fk = :codicirad_fk and'
      '      tempagende_fk = :tempagende_fk')
    InsertSQL.Strings = (
      'insert into tempprenoesami(codicirad_fk,tempagende_fk)'
      'values(:codicirad_fk,:tempagende_fk)')
    ModifySQL.Strings = (
      'update tempprenoesami'
      'set'
      'codicirad_fk = :codicirad_fk,'
      'tempagende_fk = :tempagende_fk'
      ''
      'where codicirad_fk = :codicirad_fk and'
      '      tempagende_fk = :tempagende_fk')
    Left = 316
    Top = 300
  end
  object QyTempTemp: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    AfterPost = QyTempTempAfterPost
    OnNewRecord = QyTempTempNewRecord
    SequenceField.Field = 'PKTMPLCALEND'
    SequenceField.Sequence = 'TMPLCALEND_PKTMPLCALEND'
    SequenceField.ApplyMoment = amOnNewRecord
    NoSQLFields.Strings = (
      'real_name')
    OnAfterPopulate = QyTempTempAfterPopulate
    EditMode = 'After Post'
    UpdateTableName = 'TMPLCALEND'
    PrimeFields.Strings = (
      'PKTMPLCALEND')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select '
      '       t.PKTMPLCALEND,'
      '       t.REPARTI_FK,'
      '       t.USER_ID,'
      '       t.TIPO,'
      '       t.SETT_GIORNO,'
      '       t.DIAGNOSTICA_FK,'
      '       t.DESC_TMPL'
      'from Tmplcalend t'
      'where t.PKTMPLCALEND = :PKTMPLCALEND')
    Params = <
      item
        Name = 'PKTMPLCALEND'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      03000000030000000A00000053455256495A495F464B01000000000900000044
      4553435F544D504C01000000000900000054454D504C415445320000000000}
    Left = 172
    Top = 488
    FastFields = (
      'PKTMPLCALEND,3,0'
      'REPARTI_FK,3,0'
      'USER_ID,3,0'
      'TIPO,3,0'
      'SETT_GIORNO,3,0'
      'DIAGNOSTICA_FK,3,0'
      'DESC_TMPL,1,50')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object QyTempTempPKTMPLCALEND: TIntegerField
      FieldName = 'PKTMPLCALEND'
    end
    object QyTempTempREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object QyTempTempUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object QyTempTempTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object QyTempTempSETT_GIORNO: TIntegerField
      FieldName = 'SETT_GIORNO'
    end
    object QyTempTempDIAGNOSTICA_FK: TIntegerField
      FieldName = 'DIAGNOSTICA_FK'
    end
    object QyTempTempDESC_TMPL: TStringField
      FieldName = 'DESC_TMPL'
      Size = 50
    end
  end
  object AstaCut: TAstaDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    Left = 56
    Top = 180
    FastFields = (
      'PKTEMPAGENDE,3,0'
      'SERVIZI_FK,3,0'
      'ORA_INIZIO,11,0'
      'ORA_FINE,11,0'
      'PROVENIENZA,1,1'
      'BLOCCATO,3,0'
      'TMPLCALEND_FK,3,0'
      'OSP_RICH,1,20'
      'OSPEDALE,1,80'
      'TIPO_ATTIVITA_FK,1,2'
      'TIPOATTIVITA,1,60'
      'PRENOCUP,3,0'
      'REP_RICH_FK,3,0'
      'REPRICHIEDE,1,60'
      'SERV_RICH_FK,3,0'
      'SERVRICHIEDE,1,60'
      'SERVRAD_FK,3,0'
      'DESCRADSERV,1,100'
      'SET_COLORI_FK,3,0'
      'COLORE,3,0'
      'ICONA,3,0'
      'DESCPROVENIENZA,1,50'
      'DIPARTIMENTI_FK,3,0'
      'DESCRICH,1,200')
    object AstaCutPKTEMPAGENDE: TIntegerField
      FieldName = 'PKTEMPAGENDE'
    end
    object AstaCutSERVIZI_FK: TIntegerField
      FieldName = 'SERVIZI_FK'
    end
    object AstaCutORA_INIZIO: TDateTimeField
      FieldName = 'ORA_INIZIO'
    end
    object AstaCutORA_FINE: TDateTimeField
      FieldName = 'ORA_FINE'
    end
    object AstaCutBLOCCATO: TIntegerField
      FieldName = 'BLOCCATO'
    end
    object AstaCutTMPLCALEND_FK: TIntegerField
      FieldName = 'TMPLCALEND_FK'
    end
    object AstaCutOSP_RICH: TStringField
      FieldName = 'OSP_RICH'
    end
    object AstaCutOSPEDALE: TStringField
      FieldName = 'OSPEDALE'
      Size = 80
    end
    object AstaCutTIPO_ATTIVITA_FK: TStringField
      FieldName = 'TIPO_ATTIVITA_FK'
      Size = 2
    end
    object AstaCutTIPOATTIVITA: TStringField
      FieldName = 'TIPOATTIVITA'
      Size = 60
    end
    object AstaCutPRENOCUP: TIntegerField
      FieldName = 'PRENOCUP'
    end
    object AstaCutREP_RICH_FK: TIntegerField
      FieldName = 'REP_RICH_FK'
    end
    object AstaCutREPRICHIEDE: TStringField
      FieldName = 'REPRICHIEDE'
      Size = 60
    end
    object AstaCutSERV_RICH_FK: TIntegerField
      FieldName = 'SERV_RICH_FK'
    end
    object AstaCutSERVRICHIEDE: TStringField
      FieldName = 'SERVRICHIEDE'
      Size = 60
    end
    object AstaCutDESCRADSERV: TStringField
      FieldName = 'DESCRADSERV'
      Size = 100
    end
    object AstaCutSERVRAD_FK: TIntegerField
      FieldName = 'SERVRAD_FK'
    end
    object AstaCutPROVENIENZA: TStringField
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object AstaCutSET_COLORI_FK: TIntegerField
      FieldName = 'SET_COLORI_FK'
    end
    object AstaCutCOLORE: TIntegerField
      FieldName = 'COLORE'
    end
    object AstaCutICONA: TIntegerField
      FieldName = 'ICONA'
    end
    object AstaCutDESCPROVENIENZA: TStringField
      FieldName = 'DESCPROVENIENZA'
      Size = 50
    end
    object AstaCutDIPARTIMENTI_FK: TIntegerField
      FieldName = 'DIPARTIMENTI_FK'
    end
    object AstaCutDESCRICH: TStringField
      FieldName = 'DESCRICH'
      Size = 200
    end
  end
  object AstaDett: TAstaDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    Left = 104
    Top = 200
    FastFields = (
      'CODICIRAD_FK,3,0'
      'TEMPAGENDE_FK,3,0'
      'DESCRIZIONE,1,50'
      'CODICE,1,12'
      'DURATA,3,0'
      'IDENT_FK,1,12')
    object AstaDettCODICIRAD_FK: TIntegerField
      FieldName = 'CODICIRAD_FK'
    end
    object AstaDettDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
    object AstaDettCODICE: TStringField
      FieldName = 'CODICE'
      Size = 12
    end
    object AstaDettDURATA: TIntegerField
      FieldName = 'DURATA'
    end
    object AstaDettIDENT_FK: TStringField
      FieldName = 'IDENT_FK'
      Size = 12
    end
  end
  object sQyEsami: TDataSource
    DataSet = QyTempEsami
    Left = 364
    Top = 372
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxPrintScheduler
    Version = 0
    Left = 500
    Top = 228
    object dxPrintTemplate: TdxGridReportLink
      Active = True
      Component = cxGrid1
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
        'Agende prenotazione')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clWindowText
      PrinterPage.PageHeader.Font.Height = -19
      PrinterPage.PageHeader.Font.Name = 'Source Sans Pro'
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'New Report'
      ReportDocument.CreationDate = 42559.481919386580000000
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clWindowText
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = [fsBold]
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
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
      OptionsPreview.MaxLineCount = 3
      OptionsPreview.Visible = False
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
    object dxPrintScheduler: TcxSchedulerReportLink
      Active = True
      Component = Scheduler
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'Calendario'
      ReportDocument.CreationDate = 42559.481919560190000000
      ReportTitle.Text = 'Stampa calendario'
      PrintRange.TimePrintFrom = 0.333333333333333300
      PrintRange.TimePrintTo = 0.750000000000000000
      PrintStyles.Weekly.Active = True
      PrintStyles.Weekly.DaysLayout = wdlOneColumn
      PrintStyles.Weekly.ShowEventImages = True
      BuiltInReportLink = True
    end
  end
  object ModificaAgende: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQLOptions = [soExecStoredProc]
    Params = <
      item
        Name = 'PKT'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'INIZIO'
        ParamType = ptInput
        DataType = ftDate
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'FINE'
        ParamType = ptInput
        DataType = ftDate
        IsNull = True
        Size = 0
        Value = Null
      end>
    StoredProcedure = 'RIS.MODIFICAAGENDE'
    QBEMode = False
    Left = 432
    Top = 436
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object qLeggiTemp: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qLeggiTempBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select '
      '       t.PKTMPLCALEND,'
      '       t.REPARTI_FK,'
      '       t.USER_ID,'
      '       t.TIPO,'
      '       t.SETT_GIORNO,'
      '       t.DIAGNOSTICA_FK'
      'from Tmplcalend t'
      'where t.REPARTI_FK = :reparti_fk and'
      '           t.diagnostica_fk = :diagnostica_fk and'
      '           t.TIPO=3')
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
        Name = 'diagnostica_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 324
    Top = 496
    FastFields = (
      'PKTMPLCALEND,3,0'
      'REPARTI_FK,3,0'
      'USER_ID,3,0'
      'TIPO,3,0'
      'SETT_GIORNO,3,0'
      'DIAGNOSTICA_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qLeggiTempPKTMPLCALEND: TIntegerField
      FieldName = 'PKTMPLCALEND'
    end
    object qLeggiTempREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object qLeggiTempUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object qLeggiTempTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qLeggiTempSETT_GIORNO: TIntegerField
      FieldName = 'SETT_GIORNO'
    end
    object qLeggiTempDIAGNOSTICA_FK: TIntegerField
      FieldName = 'DIAGNOSTICA_FK'
    end
  end
  object updTempAgende: TAstaUpdateSQL
    DeleteSQL.Strings = (
      'begin'
      ''
      '    update tempagende'
      '    set stato = 0'
      '    where PKTEMPAGENDE = :pktempagende;'
      ''
      'end;'
      '')
    ModifySQL.Strings = (
      ' ')
    Left = 184
    Top = 290
  end
  object cxSchedulerDBStorage: TcxSchedulerDBStorage
    Reminders.Active = False
    Resources.Items = <>
    CustomFields = <
      item
        FieldName = 'ICONA'
      end
      item
        FieldName = 'USER_ID'
      end
      item
        FieldName = 'BLOCCATO'
      end
      item
        FieldName = 'SET_COLORI_FK'
      end
      item
        FieldName = 'PKTEMPAGENDE'
      end
      item
        FieldName = 'TMPLCALEND_FK'
      end
      item
        FieldName = 'PROVENIENZA'
      end
      item
        FieldName = 'PRENOCUP'
      end
      item
        FieldName = 'DIPARTIMENTI_FK'
      end
      item
        FieldName = 'SERVRAD_FK'
      end
      item
        FieldName = 'REP_RICH_FK'
      end
      item
        FieldName = 'SERV_RICH_FK'
      end
      item
        FieldName = 'OSP_RICH'
      end
      item
        FieldName = 'TIPO_ATTIVITA_FK'
      end
      item
        FieldName = 'DESCRADSERV'
      end
      item
        FieldName = 'OSPEDALE'
      end
      item
        FieldName = 'REPRICHIEDE'
      end
      item
        FieldName = 'SERVRICHIEDE'
      end
      item
        FieldName = 'DIPARTIMENTO'
      end
      item
        FieldName = 'DESCPROVENIENZA'
      end>
    DataSource = sqTempAgende
    FieldNames.Caption = 'DESCPROVENIENZA'
    FieldNames.EventType = 'EVENT_TYPE'
    FieldNames.Finish = 'ORA_FINE'
    FieldNames.ID = 'PKTEMPAGENDE'
    FieldNames.LabelColor = 'COLORE'
    FieldNames.Message = 'DESCRICH'
    FieldNames.Options = 'OPTIONS'
    FieldNames.ResourceID = 'SERVIZI_FK'
    FieldNames.Start = 'ORA_INIZIO'
    OnEventInserted = cxSchedulerDBStorageEventInserted
    OnEventModified = cxSchedulerDBStorageEventModified
    Left = 580
    Top = 213
  end
  object qControlloAgende: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select t.desc_tmpl,a.ora_inizio,a.ora_fine'
      'from tempagende a'
      'join tmplcalend t on t.pktmplcalend=a.tmplcalend_fk'
      'where a.servizi_fk=:SERVIZI_FK'
      'and a.pktempagende<>:PKTEMPAGENDE'
      'and'
      '(   (a.ora_inizio >= :ora_inizio and a.ora_inizio < :ora_fine)'
      '   or'
      '   (a.ora_fine > :ora_inizio and a.ora_fine <= :ora_fine)'
      '   or'
      '   (a.ora_inizio < :ora_inizio and a.ora_fine >= :ora_fine)'
      ')'
      ' ')
    Params = <
      item
        Name = 'SERVIZI_FK'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'PKTEMPAGENDE'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'ora_inizio'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 0d
      end
      item
        Name = 'ora_fine'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 0d
      end>
    QBEMode = False
    Left = 243
    Top = 460
    FastFields = (
      'DESC_TMPL,1,50'
      'ORA_INIZIO,11,0'
      'ORA_FINE,11,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qControlloAgendeDESC_TMPL: TStringField
      FieldName = 'DESC_TMPL'
      Size = 50
    end
    object qControlloAgendeORA_INIZIO: TDateTimeField
      FieldName = 'ORA_INIZIO'
    end
    object qControlloAgendeORA_FINE: TDateTimeField
      FieldName = 'ORA_FINE'
    end
  end
  object qCopiaAgende: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.Field = 'PKTEMPAGENDE'
    SequenceField.Sequence = 'TEMPAGENDE_PKTEMPAGENDE'
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'Cached'
    UpdateTableName = 'TEMPAGENDE'
    PrimeFields.Strings = (
      'PKTEMPAGENDE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      't.pktempagende,'
      't.servizi_fk,'
      't.ora_inizio,'
      't.ora_fine,'
      't.provenienza,'
      't.bloccato,'
      't.tmplcalend_fk,'
      't.tipo_attivita_fk,'
      't.osp_rich,'
      't.prenocup,'
      't.rep_rich_fk,'
      't.serv_rich_fk,'
      't.servrad_fk,'
      't.dipartimenti_fk,'
      't.user_id,'
      't.set_colori_fk,'
      't.event_type,'
      't.options'
      'from tempagende t'
      ' ')
    Params = <>
    QBEMode = False
    Left = 107
    Top = 412
    FastFields = (
      'PKTEMPAGENDE,3,0'
      'SERVIZI_FK,3,0'
      'ORA_INIZIO,11,0'
      'ORA_FINE,11,0'
      'PROVENIENZA,1,1'
      'BLOCCATO,3,0'
      'TMPLCALEND_FK,3,0'
      'TIPO_ATTIVITA_FK,1,2'
      'OSP_RICH,1,20'
      'PRENOCUP,3,0'
      'REP_RICH_FK,3,0'
      'SERV_RICH_FK,3,0'
      'SERVRAD_FK,3,0'
      'DIPARTIMENTI_FK,3,0'
      'USER_ID,3,0'
      'SET_COLORI_FK,3,0'
      'EVENT_TYPE,3,0'
      'OPTIONS,3,0')
    FMultiTable = ()
    UpdateMethod = umCached
    object qCopiaAgendePKTEMPAGENDE: TIntegerField
      FieldName = 'PKTEMPAGENDE'
    end
    object qCopiaAgendeSERVIZI_FK: TIntegerField
      FieldName = 'SERVIZI_FK'
    end
    object qCopiaAgendeORA_INIZIO: TDateTimeField
      FieldName = 'ORA_INIZIO'
    end
    object qCopiaAgendeORA_FINE: TDateTimeField
      FieldName = 'ORA_FINE'
    end
    object qCopiaAgendePROVENIENZA: TStringField
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object qCopiaAgendeBLOCCATO: TIntegerField
      FieldName = 'BLOCCATO'
    end
    object qCopiaAgendeTMPLCALEND_FK: TIntegerField
      FieldName = 'TMPLCALEND_FK'
    end
    object qCopiaAgendeTIPO_ATTIVITA_FK: TStringField
      FieldName = 'TIPO_ATTIVITA_FK'
      Size = 2
    end
    object qCopiaAgendeOSP_RICH: TStringField
      FieldName = 'OSP_RICH'
    end
    object qCopiaAgendePRENOCUP: TIntegerField
      FieldName = 'PRENOCUP'
    end
    object qCopiaAgendeREP_RICH_FK: TIntegerField
      FieldName = 'REP_RICH_FK'
    end
    object qCopiaAgendeSERV_RICH_FK: TIntegerField
      FieldName = 'SERV_RICH_FK'
    end
    object qCopiaAgendeSERVRAD_FK: TIntegerField
      FieldName = 'SERVRAD_FK'
    end
    object qCopiaAgendeDIPARTIMENTI_FK: TIntegerField
      FieldName = 'DIPARTIMENTI_FK'
    end
    object qCopiaAgendeUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object qCopiaAgendeSET_COLORI_FK: TIntegerField
      FieldName = 'SET_COLORI_FK'
    end
    object qCopiaAgendeEVENT_TYPE: TIntegerField
      FieldName = 'EVENT_TYPE'
    end
    object qCopiaAgendeOPTIONS: TIntegerField
      FieldName = 'OPTIONS'
    end
  end
  object qCopiaEsami: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Cached'
    UpdateTableName = 'TEMPPRENOESAMI'
    PrimeFields.Strings = (
      'CODICIRAD_FK'
      'TEMPAGENDE_FK')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      't.codicirad_fk,'
      't.tempagende_fk'
      'from tempprenoesami t')
    Params = <>
    QBEMode = False
    Left = 179
    Top = 416
    FastFields = (
      'CODICIRAD_FK,3,0'
      'TEMPAGENDE_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umCached
    object qCopiaEsamiCODICIRAD_FK: TIntegerField
      FieldName = 'CODICIRAD_FK'
    end
    object qCopiaEsamiTEMPAGENDE_FK: TIntegerField
      FieldName = 'TEMPAGENDE_FK'
    end
  end
  object rsStorage1: TrsStorage
    Active = False
    StorageData = rsXMLData1
    Options = []
    Left = 491
    Top = 302
  end
  object rsXMLData1: TrsXMLData
    FileDir = fdCustom
    InternalFileLoad = iflAlways
    Options = []
    OnLoadFromStream = rsXMLData1LoadFromStream
    OnSaveToStream = rsXMLData1SaveToStream
    Left = 543
    Top = 310
  end
end
