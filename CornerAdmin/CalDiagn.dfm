inherited FCalDiagn: TFCalDiagn
  Width = 1000
  Height = 500
  Constraints.MinHeight = 500
  Constraints.MinWidth = 1000
  Font.Height = -22
  ParentShowHint = False
  ShowHint = True
  object Scheduler: TcxScheduler [0]
    Left = 0
    Top = 33
    Width = 1000
    Height = 467
    DateNavigator.ShowDatesContainingHolidaysInColor = True
    DateNavigator.OnPeriodChanged = SchedulerDateNavigatorPeriodChanged
    ViewDay.Active = True
    ViewDay.AlwaysShowEventTime = True
    ViewDay.AutoContentHeight = True
    ViewDay.HeaderContainer = False
    ViewDay.TimeRulerMinutes = True
    ViewDay.TimeRulerPopupMenu.Items = [rpmi60min, rpmi30min, rpmi15min, rpmi10min, rpmi6min, rpmi5min]
    OnInitEventImages = SchedulerInitEventImages
    Align = alClient
    ContentPopupMenu.PopupMenu = dxBarPopupGrid
    ContentPopupMenu.UseBuiltInPopupMenu = False
    ContentPopupMenu.Items = [cpmiNewEvent, cpmiToday, cpmiGoToDate, cpmiGoToThisDay]
    ControlBox.Visible = False
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
    OptionsView.ResourcesPerPage = 1
    OptionsView.ViewPosition = vpRight
    OptionsView.WorkDays = [dSunday, dMonday, dTuesday, dWednesday, dThursday, dFriday, dSaturday]
    OptionsView.WorkStart = 0.041666666666666660
    OptionsView.WorkFinish = 0.999305555555555600
    ParentFont = True
    ResourceNavigator.ShowButtons = False
    ResourceNavigator.Visibility = snvAlways
    Storage = cxSchedulerDBStorage
    TabOrder = 4
    OnAfterDragEvent = SchedulerAfterDragEvent
    OnAfterEditing = SchedulerAfterEditing
    OnBeforeEditing = SchedulerBeforeEditing
    OnClick = SchedulerClick
    OnIsWorkTime = SchedulerIsWorkTime
    OnMouseDown = SchedulerMouseDown
    Selection = 1
    Splitters = {
      0100000072020000940000007702000017010000010000001C010000D2010000}
    StoredClientBounds = {0100000001000000E7030000D2010000}
  end
  object QyLkServizi: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'SERVIZI_DESCR'
        Fields = 'REP_OWNER;DESC_SERVIZIO'
        Options = [ioCaseInsensitive]
        Selected = True
      end>
    IndexName = 'SERVIZI_DESCR'
    Aggregates = <>
    ReadOnly = True
    Active = False
    Constraints = <>
    BeforeQuery = QyLkServiziBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select s.PKSERVIZI,'
      '       rs.REP_OWNER,'
      '       s.DESCRIZIONE AS DESC_SERVIZIO,'
      '       s.DATA_FINE,'
      '       s.SLOT_STANDARD,'
      
        '       decode(r.pkreparti,:reparti_fk,'#39#39',r.descrizione) as DESC_' +
        'REPARTO'
      'from repserv rs'
      'join servizi s on s.PKSERVIZI = rs.SERVIZI_FK'
      'join reparti r on r.pkreparti = s.reparti_fk'
      'where (rs.REPARTI_FK = :reparti_fk) and'
      '--    rs.PROVENIENZA='#39'I'#39' and'
      '      :solo_rep'
      '      :solo_admin'
      '      (s.TIPO_SERVIZIO='#39'D'#39') and'
      '      (s.data_fine is null or s.data_fine>SYSDATE) and'
      '      (s.data_inizio is null or s.data_inizio<=SYSDATE)'
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
        Name = 'solo_rep'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = '#'
      end
      item
        Name = 'solo_admin'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = '#'
      end>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      030000000300000009000000504B53455256495A4901000000000D0000004445
      53435F53455256495A494F010000000009000000444154415F46494E45010000
      0000}
    Left = 56
    Top = 88
    FastFields = (
      'PKSERVIZI,3,0'
      'REP_OWNER,3,0'
      'DESC_SERVIZIO,1,100'
      'DATA_FINE,11,0'
      'SLOT_STANDARD,3,0'
      'DESC_REPARTO,1,60')
    FMultiTable = ()
    UpdateMethod = umManual
    object QyLkServiziPKSERVIZI: TIntegerField
      DisplayWidth = 10
      FieldName = 'PKSERVIZI'
    end
    object QyLkServiziDESC_SERVIZIO: TStringField
      DisplayLabel = 'Descrizione'
      DisplayWidth = 100
      FieldName = 'DESC_SERVIZIO'
      Size = 100
    end
    object QyLkServiziDESC_REPARTO: TStringField
      FieldName = 'DESC_REPARTO'
      Size = 60
    end
    object QyLkServiziDATA_FINE: TDateTimeField
      FieldName = 'DATA_FINE'
    end
    object QyLkServiziSLOT_STANDARD: TIntegerField
      FieldName = 'SLOT_STANDARD'
    end
    object QyLkServiziREP_OWNER: TIntegerField
      FieldName = 'REP_OWNER'
    end
  end
  object sQyLkServizi: TDataSource
    DataSet = QyLkServizi
    Left = 108
    Top = 88
  end
  object dxBarManager1: TdxBarManager
    AllowReset = False
    AlwaysSaveText = True
    Scaled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Source Sans Pro'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Operazioni'
      'Setup calendario')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = FDMCommon.imIcone
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 460
    Top = 180
    DockControlHeights = (
      0
      0
      33
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
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBlocchi'
        end
        item
          Visible = True
          ItemName = 'dxSubDiag'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton13'
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
    object dxBarButton6: TdxBarButton
      Action = aCreaAgenda
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = aCancellaAgenda
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = aModificaAgenda
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = aBloccaAgenda
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = aSbloccaAgenda
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = CancellaGiornataPlanner
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = CreaPeriodo
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton9: TdxBarButton
      Action = aCancellaGiornata
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = aCancellaDal
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = aBloccaPeriodo
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = aSbloccaPeriodo
      Category = 0
    end
    object dxBlocchi: TdxBarButton
      Action = VisualizzaBlocchi
      Category = 0
    end
    object dxBarButton12: TdxBarButton
      Action = aStoricoAgenda
      Category = 0
    end
    object dxSubDiag: TdxBarSubItem
      Caption = 'Selezione diagnostica'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton13: TdxBarButton
      Action = aStampaCalendario
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'Setup calendario'
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxViewGiorno'
        end
        item
          Visible = True
          ItemName = 'dxViewSettimana'
        end
        item
          Visible = True
          ItemName = 'dxViewMese'
        end
        item
          Visible = True
          ItemName = 'dxViewAnno'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxPeriodo'
        end>
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
    object dxViewGiorno: TdxBarButton
      Caption = 'Giorno'
      Category = 1
      Hint = 'Giorno'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = aAggiornaVistaExecute
    end
    object dxViewSettimana: TdxBarButton
      Caption = 'Settimana'
      Category = 1
      Hint = 'Settimana'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      Down = True
      OnClick = aAggiornaVistaExecute
    end
    object dxViewMese: TdxBarButton
      Caption = 'Mese'
      Category = 1
      Hint = 'Mese'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = aAggiornaVistaExecute
    end
    object dxViewAnno: TdxBarButton
      Caption = 'Anno'
      Category = 1
      Hint = 'Anno'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = aAggiornaVistaExecute
    end
  end
  object sQyAgenda: TDataSource
    DataSet = QyAgenda
    Left = 348
    Top = 412
  end
  object ActionList1: TActionList
    Images = FDMCommon.imIcone
    Left = 452
    Top = 276
    object CreaPeriodo: TAction
      Caption = 'Template agende'
      Hint = 'Creazione nuovo periodo'
      ImageIndex = 27
      OnExecute = CreaPeriodoExecute
      OnUpdate = CreaPeriodoUpdate
    end
    object aBloccaAgenda: TAction
      Caption = 'Blocca agenda'
      Hint = 'Blocca agenda di prenotazione'
      ImageIndex = 14
      OnExecute = aBloccaAgendaExecute
      OnUpdate = aBloccaAgendaUpdate
    end
    object aSbloccaAgenda: TAction
      Caption = 'Sblocca agenda'
      Hint = 'Sblocca agenda di prenotazione'
      ImageIndex = 25
      OnExecute = aSbloccaAgendaExecute
      OnUpdate = aSbloccaAgendaUpdate
    end
    object aCancellaGiornata: TAction
      Caption = 'Cancella giornata'
      Hint = 'Cancella giornata'
      ImageIndex = 24
      OnExecute = aCancellaGiornataExecute
      OnUpdate = aBloccaAgendaUpdate
    end
    object CancellaGiornataPlanner: TAction
      Caption = 'Cancella giornata'
      Hint = 'Cancella giornata'
      ImageIndex = 24
      OnExecute = CancellaGiornataPlannerExecute
    end
    object aCreaAgenda: TAction
      Caption = 'Crea agenda'
      Hint = 'Creazione nuova agenda'
      ImageIndex = 16
      OnExecute = aCreaAgendaExecute
      OnUpdate = aCreaAgendaUpdate
    end
    object aCancellaAgenda: TAction
      Caption = 'Cancella agenda'
      Hint = 'Cancella agenda selezionata'
      ImageIndex = 17
      OnExecute = aCancellaAgendaExecute
      OnUpdate = aCancellaAgendaUpdate
    end
    object aModificaAgenda: TAction
      Caption = 'Modifica agenda'
      Hint = 'Modifica agenda selezionata'
      ImageIndex = 13
      OnExecute = aModificaAgendaExecute
      OnUpdate = aModificaAgendaUpdate
    end
    object aCancellaDal: TAction
      Caption = 'Cancella dal...'
      Hint = 'Cancella agende dal...'
      ImageIndex = 24
      OnExecute = aCancellaDalExecute
    end
    object aBloccaPeriodo: TAction
      Caption = 'Blocca periodo'
      Hint = 'Blocca periodo'
      ImageIndex = 14
      OnExecute = aBloccaPeriodoExecute
      OnUpdate = aBloccaPeriodoUpdate
    end
    object aSbloccaPeriodo: TAction
      Caption = 'Sblocca periodo'
      Hint = 'Sblocca periodo selezionato'
      ImageIndex = 25
      OnExecute = aSbloccaPeriodoExecute
      OnUpdate = aSbloccaPeriodoUpdate
    end
    object VisualizzaBlocchi: TAction
      Caption = 'Visualizza blocchi'
      Hint = 'Visualizza blocchi nelle agende'
      OnExecute = VisualizzaBlocchiExecute
      OnUpdate = VisualizzaBlocchiUpdate
    end
    object aStoricoAgenda: TAction
      Caption = 'Storico agenda'
      ImageIndex = 30
      OnExecute = aStoricoAgendaExecute
      OnUpdate = aStoricoAgendaUpdate
    end
    object aAggiornaVista: TAction
      Caption = 'aAggiornaVista'
      OnExecute = aAggiornaVistaExecute
    end
    object aStampaCalendario: TAction
      Caption = 'Stampa calendario'
      ImageIndex = 15
      OnExecute = aStampaCalendarioExecute
    end
  end
  object dxBarPopupItem: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton12'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton13'
      end>
    UseOwnFont = False
    Left = 320
    Top = 176
  end
  object dxBarPopupGrid: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        Visible = True
        ItemName = 'dxBlocchi'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton13'
      end>
    UseOwnFont = False
    Left = 472
    Top = 128
  end
  object QyBloccaPeriodo: TAstaClientDataSet
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
      'update agende'
      'set bloccato=:blocnew,'
      '      user_id=:user_id,'
      '      set_colori_fk = decode(:blocnew,1,6,2)'
      
        'where ORA_INIZIO between :data_ini and to_date(to_char(:data_fin' +
        'e,'#39'DDMMYYYY'#39')||'#39'2359'#39','#39'DDMMYYYYHH24MI'#39') and'
      '      servizi_fk = :xserv and bloccato=:blocold;'
      ''
      'end;'
      ' '
      ' ')
    Params = <
      item
        Name = 'blocnew'
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
        Name = 'data_ini'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 0d
      end
      item
        Name = 'data_fine'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 0d
      end
      item
        Name = 'xserv'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'blocold'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 132
    Top = 232
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = []
    Storage = rsStorage1
    Options = [poStoreDefValues]
    RootSection = 'FCalDiagn.rsPropSaver1'
    Properties.Strings = (
      'dxSubDiag.Tag'
      'dxPeriodo.ItemIndex'
      'dxViewAnno.Down'
      'dxViewGiorno.Down'
      'dxViewMese.Down'
      'dxViewSettimana.Down')
    WhenLoad = wlManual
    WhenSave = wsManual
    Left = 328
    Top = 284
  end
  object AltreAgende: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'QyPrenoIDX_PKAGENDE'
        Fields = 'PKAGENDE'
        Options = []
        Selected = True
      end>
    IndexName = 'QyPrenoIDX_PKAGENDE'
    Aggregates = <>
    AutoCalcFields = False
    Active = False
    Constraints = <>
    BeforeQuery = AltreAgendeBeforeQuery
    SequenceField.Field = 'PKAGENDE'
    SequenceField.Sequence = 'AGENDE_PKAGENDE'
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'Read Only'
    PrimeFields.Strings = (
      'PKAGENDE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      '  a.SERVIZI_FK,'
      '  a.ora_inizio,'
      '  a.ora_fine,'
      '  a.pkagende,'
      '  a.provenienza,'
      '  a.bloccato,'
      '  a.reparti_fk,'
      '  o.descrizione as Desc_Reparto'
      'from agende a'
      'left join reparti r on r.pkreparti = a.reparti_fk'
      'left join ospedali o on o.codice = r.osp_codice'
      'where'
      '      a.servizi_fk = :servizi_fk'
      '      and'
      '      a.reparti_fk <> :reparti_fk'
      '      and'
      
        '      a.ORA_INIZIO between :data_preno and to_date(to_char(:data' +
        '_fine,'#39'DDMMYYYY'#39')||'#39'2359'#39','#39'DDMMYYYYHH24MI'#39')'
      ' '
      ' '
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
      end
      item
        Name = 'data_preno'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 0d
      end
      item
        Name = 'data_fine'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 0d
      end>
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
    Left = 272
    Top = 520
    FastFields = (
      'SERVIZI_FK,3,0'
      'ORA_INIZIO,11,0'
      'ORA_FINE,11,0'
      'PKAGENDE,3,0'
      'PROVENIENZA,1,1'
      'BLOCCATO,3,0'
      'REPARTI_FK,3,0'
      'DESC_REPARTO,1,80')
    FMultiTable = ()
    UpdateMethod = umManual
    object AltreAgendeSERVIZI_FK: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERVIZI_FK'
    end
    object AltreAgendeORA_INIZIO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ORA_INIZIO'
      DisplayFormat = 'hh.nn'
    end
    object AltreAgendeORA_FINE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ORA_FINE'
      DisplayFormat = 'hh.nn'
    end
    object AltreAgendeBLOCCATO: TIntegerField
      FieldName = 'BLOCCATO'
    end
    object AltreAgendePKAGENDE: TIntegerField
      FieldName = 'PKAGENDE'
    end
    object AltreAgendeREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object AltreAgendeDESC_REPARTO: TStringField
      FieldName = 'DESC_REPARTO'
      Size = 60
    end
    object AltreAgendePROVENIENZA: TStringField
      FieldName = 'PROVENIENZA'
      Size = 1
    end
  end
  object AlertEventList: TKSAstaEventClient
    Active = False
    AstaClientSocket = FDMCommon.AstaClientSocket
    Enabled = False
    DataSets = <
      item
        NomeTable = 'agende'
        DataSource = sAltreAgende
        OnAcceptActiveEvent = AlertEventListDataSets1AcceptActiveEvent
      end>
    Left = 216
    Top = 199
  end
  object sAltreAgende: TDataSource
    DataSet = AltreAgende
    Left = 328
    Top = 552
  end
  object qyCancDate: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'declare'
      '--  Prenotazione_fatta EXCEPTION;'
      'begin'
      ''
      '  update agende a'
      '  set a.bloccato = 2'
      '  where servizi_fk = :servizi_fk'
      
        '  and ora_inizio between :data_preno and to_date(to_char(:data_f' +
        'ine,'#39'DDMMYYYY'#39')||'#39'2359'#39','#39'DDMMYYYYHH24MI'#39');'
      ''
      '  for z in (select t.PKTRIAGE, t.STATOVISITA, t.ora_inizio'
      '            from agende a'
      '            join Triage t on t.agende_fk = a.PKAGENDE'
      '            where a.servizi_fk = :servizi_fk'
      
        '            and a.ORA_INIZIO between :data_preno and to_date(to_' +
        'char(:data_fine,'#39'DDMMYYYY'#39')||'#39'2359'#39','#39'DDMMYYYYHH24MI'#39')'
      '            )'
      '  loop'
      '/*'
      '    if nometb.statovisita between 1 and 199 then'
      
        '       ris.showerror(150, to_char(nometb.ora_inizio,'#39'DD/MM/YYYY'#39 +
        '));'
      '    else'
      '*/'
      ''
      
        '       update Triage set agende_fk=null where pktriage = z.pktri' +
        'age;'
      '--    end if;'
      '  end loop;'
      ''
      '  delete agende'
      '  where servizi_fk = :servizi_fk'
      
        '  and ora_inizio between :data_preno and to_date(to_char(:data_f' +
        'ine,'#39'DDMMYYYY'#39')||'#39'2359'#39','#39'DDMMYYYYHH24MI'#39');'
      ''
      'exception'
      '/*'
      '  when Prenotazione_fatta then'
      '     rollback;'
      
        '       ris.showerror(150, to_char(nometb.ora_inizio,'#39'DD/MM/YYYY'#39 +
        '));'
      '*/'
      '  when others then'
      '    raise;'
      'end;'
      ''
      '')
    Params = <
      item
        Name = 'data_preno'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 0d
      end
      item
        Name = 'data_fine'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 0d
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
    Left = 108
    Top = 548
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object cxSchedulerDBStorage: TcxSchedulerDBStorage
    Reminders.Active = False
    Resources.Items = <>
    Resources.DataSource = sQyLkServizi
    Resources.ResourceID = 'PKSERVIZI'
    Resources.ResourceName = 'DESC_SERVIZIO'
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
        FieldName = 'PKAGENDE'
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
      end>
    DataSource = sQyAgenda
    FieldNames.Caption = 'DESCPROVENIENZA'
    FieldNames.EventType = 'EVENT_TYPE'
    FieldNames.Finish = 'ORA_FINE'
    FieldNames.ID = 'PKAGENDE'
    FieldNames.LabelColor = 'COLORE'
    FieldNames.Message = 'DESCRICH'
    FieldNames.Options = 'OPTIONS'
    FieldNames.ResourceID = 'SERVIZI_FK'
    FieldNames.Start = 'ORA_INIZIO'
    Left = 580
    Top = 213
  end
  object QyAgenda: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'QyAgendaIDX_PKAGENDE'
        Fields = 'PKAGENDE'
        Options = []
        Selected = True
      end
      item
        Name = 'QyAgendaIDX_ORAINIZIO'
        Fields = 'ORA_INIZIO'
        Options = []
      end>
    IndexName = 'QyAgendaIDX_PKAGENDE'
    Aggregates = <>
    AutoCalcFields = False
    Active = False
    Constraints = <>
    BeforePost = QyAgendaBeforePost
    AfterPost = QyAgendaAfterPost
    OnCalcFields = QyAgendaCalcFields
    OnNewRecord = QyAgendaNewRecord
    BeforeQuery = QyAgendaBeforeQuery
    SequenceField.Field = 'PKAGENDE'
    SequenceField.Sequence = 'AGENDE_PKAGENDE'
    SequenceField.ApplyMoment = amOnNewRecord
    NoSQLFields.Strings = (
      'Ospedale'
      'tipo_fattura'
      'RepRichiede'
      'ServRichiede'
      'Dipartimento'
      'colore'
      'DescProvenienza'
      'icona')
    OnAfterPopulate = QyAgendaAfterPopulate
    EditMode = 'Read Only'
    UpdateTableName = 'AGENDE'
    PrimeFields.Strings = (
      'PKAGENDE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      '  a.SERVIZI_FK,'
      '  a.ora_inizio,'
      '  a.ora_fine,'
      '  a.pkagende,'
      '  a.provenienza,'
      '  a.bloccato,'
      '  a.osp_rich,'
      '  a.reparti_fk,'
      '  a.user_id,'
      '  a.prenocup,'
      '  a.tipo_attivita_fk,'
      '  a.rep_rich_fk,'
      '  a.serv_rich_fk,'
      '  a.servrad_fk,'
      '  a.tmpagende_fk,'
      '  a.dipartimenti_fk,'
      '  a.set_colori_fk,'
      '  rr.descrizione as RepRichiede,'
      '  ss.descrizione as ServRichiede,'
      '  sr.descrizione as DescRadServ,'
      '  a.t_disp,'
      '  a.t_asseg,'
      '  o.tipo_fattura,'
      '  o.descrizione as Ospedale,'
      '  d.descrizione as Dipartimento,'
      '  a.event_type,'
      '  a.options,'
      '  c.colore,'
      '  tp.descrizione as DescProvenienza,'
      '  tp.icona'
      'from agende a'
      'left join ospedali o on o.codice = a.osp_rich'
      'left join reparti rr on rr.pkreparti = a.rep_rich_fk'
      'left join servizi ss on ss.pkservizi = a.serv_rich_fk'
      'left join servizi sr on sr.pkservizi = a.servrad_fk'
      'left join dipartimenti d on d.pkdipartimenti = a.dipartimenti_fk'
      'left join set_colori c on c.pkset_colori=a.set_colori_fk'
      
        'left join wtab_provenienza tp on tp.provenienza=a.provenienza an' +
        'd tp.lingua=:lingua'
      'where'
      'a.servizi_fk = :servizi_fk'
      'AND'
      'a.reparti_fk = :reparti_fk'
      'AND'
      
        'a.ORA_INIZIO between :data_preno and to_date(to_char(:data_fine,' +
        #39'DDMMYYYY'#39')||'#39'2359'#39','#39'DDMMYYYYHH24MI'#39')')
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
        Name = 'servizi_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 31
      end
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 3
      end
      item
        Name = 'data_preno'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 40386d
      end
      item
        Name = 'data_fine'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 40392d
      end>
    DirectModify = [tsyUpdate, tsyDelete]
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
    Left = 296
    Top = 384
    FastFields = (
      'SERVIZI_FK,3,0'
      'ORA_INIZIO,11,0'
      'ORA_FINE,11,0'
      'PKAGENDE,3,0'
      'PROVENIENZA,1,1'
      'BLOCCATO,3,0'
      'OSP_RICH,1,20'
      'REPARTI_FK,3,0'
      'USER_ID,3,0'
      'PRENOCUP,3,0'
      'TIPO_ATTIVITA_FK,1,2'
      'REP_RICH_FK,3,0'
      'SERV_RICH_FK,3,0'
      'SERVRAD_FK,3,0'
      'TMPAGENDE_FK,3,0'
      'DIPARTIMENTI_FK,3,0'
      'SET_COLORI_FK,3,0'
      'REPRICHIEDE,1,60'
      'SERVRICHIEDE,1,100'
      'DESCRADSERV,1,100'
      'T_DISP,3,0'
      'T_ASSEG,3,0'
      'TIPO_FATTURA,3,0'
      'OSPEDALE,1,80'
      'DIPARTIMENTO,1,100'
      'EVENT_TYPE,3,0'
      'OPTIONS,3,0'
      'COLORE,3,0'
      'DESCPROVENIENZA,1,200'
      'ICONA,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object QyAgendaSERVIZI_FK: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERVIZI_FK'
    end
    object QyAgendaORA_INIZIO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ORA_INIZIO'
      DisplayFormat = 'hh.nn'
    end
    object QyAgendaORA_FINE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ORA_FINE'
      DisplayFormat = 'hh.nn'
    end
    object QyAgendaBLOCCATO: TIntegerField
      FieldName = 'BLOCCATO'
    end
    object QyAgendaPKAGENDE: TIntegerField
      FieldName = 'PKAGENDE'
    end
    object QyAgendaREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object QyAgendaUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object QyAgendaOSP_RICH: TStringField
      FieldName = 'OSP_RICH'
    end
    object QyAgendaOSPEDALE: TStringField
      FieldName = 'OSPEDALE'
      Size = 80
    end
    object QyAgendaPRENOCUP: TIntegerField
      FieldName = 'PRENOCUP'
    end
    object QyAgendaTIPO_FATTURA: TIntegerField
      FieldName = 'TIPO_FATTURA'
    end
    object QyAgendaTIPO_ATTIVITA_FK: TStringField
      FieldName = 'TIPO_ATTIVITA_FK'
      Size = 2
    end
    object QyAgendaREP_RICH_FK: TIntegerField
      FieldName = 'REP_RICH_FK'
    end
    object QyAgendaREPRICHIEDE: TStringField
      FieldName = 'REPRICHIEDE'
      Size = 60
    end
    object QyAgendaSERV_RICH_FK: TIntegerField
      FieldName = 'SERV_RICH_FK'
    end
    object QyAgendaSERVRICHIEDE: TStringField
      FieldName = 'SERVRICHIEDE'
      Size = 100
    end
    object QyAgendaDESCRADSERV: TStringField
      FieldName = 'DESCRADSERV'
      Size = 100
    end
    object QyAgendaSERVRAD_FK: TIntegerField
      FieldName = 'SERVRAD_FK'
    end
    object QyAgendaTMPAGENDE_FK: TIntegerField
      FieldName = 'TMPAGENDE_FK'
    end
    object QyAgendaDIPARTIMENTI_FK: TIntegerField
      FieldName = 'DIPARTIMENTI_FK'
    end
    object QyAgendaDIPARTIMENTO: TStringField
      FieldName = 'DIPARTIMENTO'
      Size = 100
    end
    object QyAgendaEVENT_TYPE: TIntegerField
      FieldName = 'EVENT_TYPE'
    end
    object QyAgendaOPTIONS: TIntegerField
      FieldName = 'OPTIONS'
    end
    object QyAgendaCOLORE: TIntegerField
      FieldName = 'COLORE'
    end
    object QyAgendaDESCRICH: TStringField
      FieldKind = fkCalculated
      FieldName = 'DESCRICH'
      Size = 200
      Calculated = True
    end
    object QyAgendaSET_COLORI_FK: TIntegerField
      FieldName = 'SET_COLORI_FK'
    end
    object QyAgendaSPAZIO: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'SPAZIO'
      Calculated = True
    end
    object QyAgendaRIMANE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'RIMANE'
      Calculated = True
    end
    object QyAgendaT_DISP: TIntegerField
      FieldName = 'T_DISP'
    end
    object QyAgendaT_ASSEG: TIntegerField
      FieldName = 'T_ASSEG'
    end
    object QyAgendaPROVENIENZA: TStringField
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object QyAgendaICONA: TIntegerField
      FieldName = 'ICONA'
    end
    object QyAgendaDESCPROVENIENZA: TStringField
      FieldName = 'DESCPROVENIENZA'
      Size = 50
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxPrintScheduler
    Version = 0
    Left = 500
    Top = 432
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
      ReportDocument.CreationDate = 42559.481874895840000000
      ReportTitle.Text = 'Stampa calendario'
      PrintRange.TimePrintFrom = 0.333333333333333300
      PrintRange.TimePrintTo = 0.750000000000000000
      PrintStyles.Weekly.Active = True
      PrintStyles.Weekly.DaysLayout = wdlOneColumn
      PrintStyles.Weekly.ShowEventImages = True
      BuiltInReportLink = True
    end
  end
  object qBlocchi: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_qBlocchi'
        Fields = 'SERVIZI_FK;ORA_INIZIO'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_qBlocchi'
    Aggregates = <>
    AutoCalcFields = False
    Active = False
    Constraints = <>
    BeforeQuery = qBlocchiBeforeQuery
    SequenceField.Field = 'PKBLOCCHI'
    SequenceField.Sequence = 'BLOCCHI_PKBLOCCHI'
    SequenceField.ApplyMoment = amOnPost
    NoSQLFields.Strings = (
      'DIAGNOSTICA'
      'DESCBLOCCO'
      'COLORE')
    EditMode = ' Read Only'
    RefetchOnInsert.Strings = (
      'PKBLOCCHI')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'b.pkblocchi,'
      'b.ora_inizio,'
      'b.ora_fine,'
      'b.note,'
      'b.tipo_blocco_fk,'
      'b.event_type,'
      'b.options,'
      'tb.descrizione as DescBlocco,'
      'b.servizi_fk,'
      's.descrizione as Diagnostica,'
      'c.colore'
      'from blocchi b'
      'join tipo_blocco tb on tb.pktipo_blocco=b.tipo_blocco_fk'
      'join servizi s on s.pkservizi=b.servizi_fk'
      'join set_colori c on c.pkset_colori=b.set_colori_fk'
      'where b.servizi_fk=:servizi_fk'
      
        'and b.ora_inizio between :data_preno and to_date(to_char(:data_f' +
        'ine,'#39'DDMMYYYY'#39')||'#39'2359'#39','#39'DDMMYYYYHH24MI'#39')'
      '')
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
        Name = 'data_preno'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 0d
      end
      item
        Name = 'data_fine'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 0d
      end>
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
    Left = 416
    Top = 436
    FastFields = (
      'PKBLOCCHI,3,0'
      'ORA_INIZIO,11,0'
      'ORA_FINE,11,0'
      'NOTE,1,4000'
      'TIPO_BLOCCO_FK,3,0'
      'EVENT_TYPE,3,0'
      'OPTIONS,3,0'
      'DESCBLOCCO,1,100'
      'SERVIZI_FK,3,0'
      'DIAGNOSTICA,1,100'
      'COLORE,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qBlocchiPKBLOCCHI: TIntegerField
      FieldName = 'PKBLOCCHI'
    end
    object qBlocchiORA_INIZIO: TDateTimeField
      FieldName = 'ORA_INIZIO'
    end
    object qBlocchiORA_FINE: TDateTimeField
      FieldName = 'ORA_FINE'
    end
    object qBlocchiNOTE: TStringField
      FieldName = 'NOTE'
      Size = 4000
    end
    object qBlocchiTIPO_BLOCCO_FK: TIntegerField
      FieldName = 'TIPO_BLOCCO_FK'
    end
    object qBlocchiEVENT_TYPE: TIntegerField
      FieldName = 'EVENT_TYPE'
    end
    object qBlocchiOPTIONS: TIntegerField
      FieldName = 'OPTIONS'
    end
    object qBlocchiDESCBLOCCO: TStringField
      FieldName = 'DESCBLOCCO'
      Size = 100
    end
    object qBlocchiSERVIZI_FK: TIntegerField
      FieldName = 'SERVIZI_FK'
    end
    object qBlocchiDIAGNOSTICA: TStringField
      FieldName = 'DIAGNOSTICA'
      Size = 100
    end
    object qBlocchiCOLORE: TIntegerField
      FieldName = 'COLORE'
    end
  end
  object qFeste: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qFesteBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'FESTE'
    PrimeFields.Strings = (
      'DATA_FESTA')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'data_festa,'
      'descrizione'
      'from feste'
      
        'where data_festa between :data_preno and to_date(to_char(:data_f' +
        'ine,'#39'DDMMYYYY'#39')||'#39'2359'#39','#39'DDMMYYYYHH24MI'#39')'
      'union all'
      'select'
      'data_festa,'
      'descrizione'
      'from festexrep'
      'where reparti_fk=:reparti_fk'
      
        'and data_festa between :data_preno and to_date(to_char(:data_fin' +
        'e,'#39'DDMMYYYY'#39')||'#39'2359'#39','#39'DDMMYYYYHH24MI'#39')')
    Params = <
      item
        Name = 'data_preno'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 0d
      end
      item
        Name = 'data_fine'
        ParamType = ptInput
        DataType = ftDateTime
        IsNull = False
        Size = 0
        Value = 0d
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
    Left = 444
    Top = 520
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
end
