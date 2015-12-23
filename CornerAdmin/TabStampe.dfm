inherited FTabStampe: TFTabStampe
  Width = 1131
  Height = 641
  Constraints.MinHeight = 50
  Constraints.MinWidth = 110
  ParentShowHint = False
  ShowHint = True
  object Splitter2: TcxSplitter [0]
    Left = 231
    Top = 33
    Width = 4
    Height = 608
    Cursor = crHSplit
    MinSize = 200
    Control = cxFolderItem
  end
  object Panel1: TPanel [1]
    Left = 235
    Top = 33
    Width = 896
    Height = 608
    Align = alClient
    TabOrder = 0
    object Splitter1: TcxSplitter
      Left = 1
      Top = 345
      Width = 894
      Height = 4
      Cursor = crVSplit
      HotZoneClassName = 'TcxXPTaskBarStyle'
      AlignSplitter = salTop
      MinSize = 100
      Control = cxGrid2
      Color = 14609391
      ParentColor = False
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 1
      Top = 349
      Width = 894
      Height = 30
      Align = dalTop
      BarManager = dxBarManagerRadDiagn
      Visible = False
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 379
      Width = 894
      Height = 228
      Align = alClient
      PopupMenu = dxBarPopupSelez
      TabOrder = 2
      LookAndFeel.Kind = lfUltraFlat
      RootLevelOptions.DetailTabsPosition = dtpTop
      object cxSelezionati: TcxGridDBTableView
        DragMode = dmAutomatic
        OnDblClick = cxSelezionatiDblClick
        OnDragDrop = cxSelezionatiDragDrop
        OnDragOver = cxSelezionatiDragOver
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataModeController.DetailInSQLMode = True
        DataController.DataSource = sTabStampe
        DataController.Filter.MaxValueListCount = 1000
        DataController.KeyFieldNames = 'PKTABSTAMPE'
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnPopup.MaxDropDownItemCount = 12
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.ExpandMasterRowOnDblClick = False
        OptionsCustomize.DataRowSizing = True
        OptionsData.CancelOnExit = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.HideSelection = True
        OptionsSelection.InvertSelect = False
        OptionsView.NavigatorOffset = 10
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Preview.AutoHeight = False
        Preview.MaxLineCount = 2
        object cxSelezionatiORDINE: TcxGridDBColumn
          DataBinding.FieldName = 'ORDINE'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.MaxValue = 99.000000000000000000
          Properties.MinValue = 1.000000000000000000
          Properties.ReadOnly = False
          Options.Filtering = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 32
        end
        object cxSelezionatiDESCRIZIONE: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRIZIONE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.MaxLength = 60
          Properties.ReadOnly = True
          Options.Editing = False
          Options.Filtering = False
          Width = 144
        end
        object cxSelezionatiPKTABSTAMPE: TcxGridDBColumn
          DataBinding.FieldName = 'PKTABSTAMPE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.MaxLength = 0
          Properties.ReadOnly = True
          Visible = False
          Options.Filtering = False
          Width = 96
        end
        object cxSelezionatiITEM_TYPE: TcxGridDBColumn
          DataBinding.FieldName = 'ITEM_TYPE'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Width = 40
        end
        object cxSelezionatiCOPIE: TcxGridDBColumn
          DataBinding.FieldName = 'COPIE'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.AssignedValues.MinValue = True
          Properties.MaxValue = 9.000000000000000000
          Options.Filtering = False
          Options.Sorting = False
          Width = 75
        end
        object cxSelezionatiCD_AUTOMATICO: TcxGridDBColumn
          DataBinding.FieldName = 'CD_AUTOMATICO'
          RepositoryItem = FDMCommon.edrepSINO
          Options.Filtering = False
        end
        object cxSelezionatiSTAMPANTE: TcxGridDBColumn
          DataBinding.FieldName = 'STAMPANTE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = FDMCommon.imIcone
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Description = 'Normale'
              ImageIndex = 15
              Value = 1
            end
            item
              Description = 'Etichette'
              ImageIndex = 51
              Value = 2
            end>
          Options.Filtering = False
          Width = 74
        end
        object cxSelezionatiVERIFICASTAMPE_FK: TcxGridDBColumn
          DataBinding.FieldName = 'VERIFICASTAMPE_FK'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.CharCase = ecUpperCase
          Properties.ClearKey = 8238
          Properties.DropDownAutoSize = True
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'PKVERIFICASTAMPE'
          Properties.ListColumns = <
            item
              FieldName = 'NOMESTAMPA'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = sTipoVerifica
          Options.Filtering = False
          Width = 94
        end
        object cxSelezionatiGRESAMI_FK: TcxGridDBColumn
          DataBinding.FieldName = 'GRESAMI_FK'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.CharCase = ecUpperCase
          Properties.ClearKey = 8238
          Properties.DropDownAutoSize = True
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 200
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'PKGRESAMI'
          Properties.ListColumns = <
            item
              SortOrder = soAscending
              FieldName = 'GRESAMI'
            end
            item
              FieldName = 'DESCRIZIONE'
            end>
          Properties.ListOptions.CaseInsensitive = True
          Properties.ListSource = sGruppoEsami
          Options.Filtering = False
          Width = 76
        end
        object cxSelezionatiSELEZIONE: TcxGridDBColumn
          DataBinding.FieldName = 'SELEZIONE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Options.Filtering = False
          Options.Sorting = False
          Width = 78
        end
        object cxSelezionatiTIPOREFERTO_FK: TcxGridDBColumn
          DataBinding.FieldName = 'TIPOREFERTO_FK'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'TIPOREFERTO'
          Properties.ListColumns = <
            item
              SortOrder = soAscending
              FieldName = 'DESCRIZIONE'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = sqTipoReferto
          Options.Filtering = False
        end
      end
      object cxEsamixStampe: TcxGridDBTableView
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
        DataController.DataModeController.DetailInSQLMode = True
        DataController.DataModeController.OnDetailFirst = cxEsamixStampeDataControllerDataModeControllerDetailFirst
        DataController.DataModeController.OnDetailIsCurrentQuery = cxEsamixStampeDataControllerDataModeControllerDetailIsCurrentQuery
        DataController.DataSource = sesamixstampe
        DataController.DetailKeyFieldNames = 'ITEM_ID_FK'
        DataController.KeyFieldNames = 'PKESAMIXSTAMPE'
        DataController.MasterKeyFieldNames = 'ITEM_ID_FK'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.IncSearch = True
        OptionsBehavior.ExpandMasterRowOnDblClick = False
        OptionsCustomize.ColumnFiltering = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxEsamixStampeTABSTAMPE_FK: TcxGridDBColumn
          DataBinding.FieldName = 'TABSTAMPE_FK'
          Visible = False
        end
        object cxEsamixStampePKESAMIXSTAMPE: TcxGridDBColumn
          DataBinding.FieldName = 'PKESAMIXSTAMPE'
          Visible = False
        end
        object cxEsamixStampeCODICIRAD_FK: TcxGridDBColumn
          DataBinding.FieldName = 'CODICIRAD_FK'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.ImmediatePost = True
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
          Properties.ListOptions.CaseInsensitive = True
          Properties.ListSource = sCodiciEsame
          SortIndex = 0
          SortOrder = soAscending
        end
        object cxEsamixStampeDESCRIZIONE: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRIZIONE'
          Options.Editing = False
        end
        object cxEsamixStampeINCLUDI: TcxGridDBColumn
          DataBinding.FieldName = 'INCLUDI'
          RepositoryItem = FDMCommon.edrepSINO
        end
      end
      object cxGrid1Level1: TcxGridLevel
        Caption = 'Stampe per funzione'
        GridView = cxSelezionati
        Options.DetailTabsPosition = dtpTop
        object cxGrid1Level2: TcxGridLevel
          Caption = 'Esami selezionati'
          GridView = cxEsamixStampe
        end
      end
    end
    object cxGrid2: TcxGrid
      Left = 1
      Top = 1
      Width = 894
      Height = 344
      Align = alTop
      TabOrder = 3
      LookAndFeel.Kind = lfUltraFlat
      RootLevelOptions.DetailTabsPosition = dtpTop
      object cxServizi: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = sFunzioni
        DataController.Filter.MaxValueListCount = 1000
        DataController.KeyFieldNames = 'PKFUNZIONI'
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnPopup.MaxDropDownItemCount = 12
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Preview.AutoHeight = False
        Preview.MaxLineCount = 2
        object cxServiziPKFUNZIONI: TcxGridDBColumn
          Caption = ' '
          DataBinding.FieldName = 'PKFUNZIONI'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.MaxLength = 0
          Properties.ReadOnly = False
          Options.Filtering = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 52
        end
        object cxServiziDESCRIZIONE: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRIZIONE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.MaxLength = 100
          Properties.ReadOnly = False
          Options.Filtering = False
          Width = 520
        end
      end
      object cxGrid2Level1: TcxGridLevel
        Caption = 'Funzioni'
        GridView = cxServizi
      end
    end
  end
  object cxFolderItem: TcxDBTreeList [2]
    Left = 0
    Top = 33
    Width = 231
    Height = 608
    Align = alLeft
    Bands = <
      item
      end>
    DataController.DataSource = sqFolderItem
    DataController.ParentField = 'PARENT_ID'
    DataController.KeyField = 'FOLDER_ID'
    DragMode = dmAutomatic
    Images = FDMCommon.imIcone
    Navigator.Buttons.CustomButtons = <>
    OptionsBehavior.ImmediateEditor = False
    OptionsBehavior.MultiSort = False
    OptionsData.Editing = False
    OptionsData.AnsiSort = True
    OptionsData.CaseInsensitive = True
    OptionsData.Deleting = False
    OptionsSelection.CellSelect = False
    OptionsView.ColumnAutoWidth = True
    OptionsView.Headers = False
    OptionsView.Indicator = True
    PopupMenu = dxBarPopupCodici
    RootValue = -1
    TabOrder = 6
    OnDblClick = cxFolderItemDblClick
    OnDragDrop = cxFolderItemDragDrop
    OnDragOver = cxFolderItemDragOver
    object cxFolderItemFOLDER_ID: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 'FOLDER_ID'
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxFolderItemDESCRIZIONE: TcxDBTreeListColumn
      DataBinding.FieldName = 'DESCRIZIONE'
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
      SortOrder = soAscending
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxFolderItemPARENT_ID: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 'PARENT_ID'
      Position.ColIndex = 2
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxFolderItemTIPO: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 'TIPO'
      Position.ColIndex = 3
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
  end
  object sFunzioni: TDataSource
    DataSet = Funzioni
    OnDataChange = sFunzioniDataChange
    Left = 666
    Top = 121
  end
  object ActionList1: TActionList
    Images = FDMCommon.cxImageNavigator16
    Left = 384
    Top = 180
    object EspandiTutto: TAction
      Caption = 'Apri tutto'
      Hint = 'Espandi tutto'
      ImageIndex = 27
      OnExecute = EspandiTuttoExecute
    end
    object ChiudiTutto: TAction
      Caption = 'Chiudi tutto'
      Hint = 'Chiudi tutto'
      ImageIndex = 28
      OnExecute = ChiudiTuttoExecute
    end
    object EliminaStampa: TAction
      Caption = 'Elimina stampa'
      Enabled = False
      Hint = 'Togli stampa selezionata'
      ImageIndex = 32
      ShortCut = 46
      OnExecute = EliminaStampaExecute
      OnUpdate = EliminaStampaUpdate
    end
    object EliminaTutte: TAction
      Caption = 'Elimina tutte le stampe'
      Enabled = False
      Hint = 'Elimina tutte le stampe'
      ImageIndex = 10
      OnExecute = EliminaTutteExecute
      OnUpdate = EliminaTutteUpdate
    end
    object aNuovaStampaDaTree: TAction
      Caption = 'Nuova stampa PivotGrid'
      ImageIndex = 6
      OnExecute = aNuovaStampaDaTreeExecute
    end
    object aModificaStampaDaTree: TAction
      Caption = 'Modifica stampa'
      ImageIndex = 8
      OnExecute = aModificaStampaDaTreeExecute
      OnUpdate = aModificaStampaDaTreeUpdate
    end
    object aCancellaStampaDaTree: TAction
      Caption = 'Cancella stampa'
      ImageIndex = 32
      OnExecute = aCancellaStampaDaTreeExecute
      OnUpdate = aCancellaStampaDaTreeUpdate
    end
    object aCopiaStampa: TAction
      Caption = 'Copia stampa PivotGrid'
      ImageIndex = 23
      OnExecute = aCopiaStampaExecute
      OnUpdate = aCopiaStampaUpdate
    end
    object aSalvaStampaSuFile: TAction
      Caption = 'Salva su file'
      ImageIndex = 13
      OnExecute = aSalvaStampaSuFileExecute
      OnUpdate = aSalvaStampaSuFileUpdate
    end
    object aCaricaDaFile: TAction
      Caption = 'Carica da file'
      ImageIndex = 36
      OnExecute = aCaricaDaFileExecute
      OnUpdate = aCaricaDaFileUpdate
    end
    object aModificaStampaDaGrid: TAction
      Caption = 'Modifica stampa'
      ImageIndex = 8
      OnExecute = aModificaStampaDaGridExecute
      OnUpdate = aModificaStampaDaGridUpdate
    end
    object AttivaEdit: TAction
      Caption = 'AttivaEdit'
      OnExecute = AttivaEditExecute
    end
  end
  object TabStampe: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforePost = TabStampeBeforePost
    BeforeQuery = TabStampeBeforeQuery
    SequenceField.Field = 'PKTABSTAMPE'
    SequenceField.Sequence = 'TABSTAMPE_PKTABSTAMPE'
    SequenceField.ApplyMoment = amOnPost
    OnAfterPopulate = TabStampeAfterPopulate
    EditMode = 'Read Only'
    UpdateTableName = 'TABSTAMPE'
    PrimeFields.Strings = (
      'PKTABSTAMPE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      't.pktabstampe,'
      't.reparti_fk,'
      't.item_id_fk,'
      't.funzioni_fk,'
      't.ordine,'
      't.copie,'
      't.stampante,'
      't.gresami_fk,'
      't.verificastampe_fk,'
      't.tiporeferto_fk,'
      't.selezione,'
      't.cd_automatico,'
      'NVL(r.descrizione,r.item_name) as descrizione,'
      'r.item_type,'
      'r.item_id'
      'from tabstampe t, rb_item r'
      'where t.reparti_fk=:reparti_fk and'
      'r.item_id=t.item_id_fk and'
      'r.attivo=1 and'
      't.funzioni_fk=:funzioni_fk')
    Params = <
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 24
      end
      item
        Name = 'funzioni_fk'
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
    Left = 476
    Top = 480
    FastFields = (
      'PKTABSTAMPE,3,0'
      'REPARTI_FK,3,0'
      'ITEM_ID_FK,3,0'
      'FUNZIONI_FK,3,0'
      'ORDINE,3,0'
      'COPIE,3,0'
      'STAMPANTE,3,0'
      'GRESAMI_FK,3,0'
      'VERIFICASTAMPE_FK,3,0'
      'TIPOREFERTO_FK,3,0'
      'SELEZIONE,3,0'
      'CD_AUTOMATICO,3,0'
      'DESCRIZIONE,1,60'
      'ITEM_TYPE,3,0'
      'ITEM_ID,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object TabStampeREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object TabStampeITEM_ID_FK: TIntegerField
      FieldName = 'ITEM_ID_FK'
    end
    object TabStampePKTABSTAMPE: TIntegerField
      FieldName = 'PKTABSTAMPE'
    end
    object TabStampeFUNZIONI_FK: TIntegerField
      FieldName = 'FUNZIONI_FK'
    end
    object TabStampeORDINE: TIntegerField
      DisplayLabel = 'Pos'
      FieldName = 'ORDINE'
    end
    object TabStampeCOPIE: TIntegerField
      DisplayLabel = 'Copie'
      FieldName = 'COPIE'
    end
    object TabStampeSTAMPANTE: TIntegerField
      DisplayLabel = 'Stampante'
      FieldName = 'STAMPANTE'
    end
    object TabStampeSELEZIONE: TIntegerField
      DisplayLabel = 'Selezione'
      FieldName = 'SELEZIONE'
    end
    object TabStampeDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 60
    end
    object TabStampeVERIFICASTAMPE_FK: TIntegerField
      DisplayLabel = 'Verifica stampe'
      FieldName = 'VERIFICASTAMPE_FK'
    end
    object TabStampeGRESAMI_FK: TIntegerField
      DisplayLabel = 'Metodica'
      FieldName = 'GRESAMI_FK'
    end
    object TabStampeITEM_TYPE: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'ITEM_TYPE'
    end
    object TabStampeTIPOREFERTO_FK: TIntegerField
      DisplayLabel = 'Tipo ref.'
      FieldName = 'TIPOREFERTO_FK'
    end
    object TabStampeITEM_ID: TIntegerField
      FieldName = 'ITEM_ID'
    end
    object TabStampeCD_AUTOMATICO: TIntegerField
      DisplayLabel = 'CD automatico'
      FieldName = 'CD_AUTOMATICO'
    end
  end
  object sTabStampe: TDataSource
    DataSet = TabStampe
    Left = 530
    Top = 483
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
      'declare'
      '  pos tabstampe.ordine%type;'
      '  tref tabstampe.tiporeferto_fk%type;'
      'begin'
      ''
      '  select max(ordine) into pos'
      '  from tabstampe'
      '  where reparti_fk=:reparti_fk and funzioni_fk=:funzioni_fk;'
      ''
      '  pos := NVL(pos,0);'
      ''
      '  if :funzioni_fk between 70 and 75 then'
      '     select tiporeferto_fk'
      '     into tref'
      '     from param_ticket;'
      '  --elsif :funzioni_fk = 75 then'
      '  --   tref := 1; -- CDA precedenti'
      '  end if;'
      ''
      
        '  insert into tabstampe(reparti_fk,item_id_fk,funzioni_fk,ordine' +
        ',tiporeferto_fk)'
      '  values(:reparti_fk,:item_id_fk,:funzioni_fk,pos+1,tref);'
      ''
      'end;'
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
        Name = 'item_id_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'funzioni_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 324
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
      'Selezionati')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = FDMCommon.cxImageNavigator16
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 408
    Top = 244
    DockControlHeights = (
      0
      0
      33
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Source Sans Pro'
      Font.Style = []
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
          ItemName = 'dxBarButton5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          BeginGroup = True
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
    object dxBarButton1: TdxBarButton
      Action = EspandiTutto
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Action = ChiudiTutto
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton3: TdxBarButton
      Action = aNuovaStampaDaTree
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton4: TdxBarButton
      Action = aModificaStampaDaTree
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton5: TdxBarButton
      Action = aCancellaStampaDaTree
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton6: TdxBarButton
      Action = aSalvaStampaSuFile
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton9: TdxBarButton
      Action = aCaricaDaFile
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton7: TdxBarButton
      Action = EliminaStampa
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton8: TdxBarButton
      Action = EliminaTutte
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton10: TdxBarButton
      Action = aModificaStampaDaGrid
      Category = 1
      PaintStyle = psCaptionGlyph
    end
  end
  object dxBarPopupSelez: TdxBarPopupMenu
    BarManager = dxBarManagerRadDiagn
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end>
    UseOwnFont = False
    Left = 452
    Top = 364
  end
  object dxBarPopupCodici: TdxBarPopupMenu
    BarManager = dxBarManagerRadDiagn
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
        ItemName = 'dxBarButton5'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = False
    Left = 124
    Top = 384
  end
  object Folder: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    AutoCalcFields = False
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'Read Only'
    UpdateTableName = 'RISDBA.RB_FOLDER'
    PrimeFields.Strings = (
      'FOLDER_ID')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'f.folder_id,'
      'f.folder_name,'
      'f.parent_id'
      'from rb_folder f'
      'where f.folder_id>=-1')
    Params = <>
    QBEMode = False
    Left = 418
    Top = 79
    FastFields = (
      'FOLDER_ID,3,0'
      'FOLDER_NAME,1,60'
      'PARENT_ID,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object FolderFOLDER_ID: TIntegerField
      FieldName = 'FOLDER_ID'
    end
    object FolderFOLDER_NAME: TStringField
      FieldName = 'FOLDER_NAME'
      Size = 60
    end
    object FolderPARENT_ID: TIntegerField
      FieldName = 'PARENT_ID'
    end
  end
  object dsFolder: TDataSource
    DataSet = Folder
    Left = 460
    Top = 82
  end
  object Funzioni: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = FunzioniBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'pkfunzioni, '
      'descrizione'
      'from wfunzionistampe'
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
    Left = 600
    Top = 180
    FastFields = (
      'PKFUNZIONI,3,0'
      'DESCRIZIONE,1,100'
      'TIPO,3,0'
      'DESCTIPO,1,9')
    FMultiTable = ()
    UpdateMethod = umManual
    object FunzioniPKFUNZIONI: TIntegerField
      FieldName = 'PKFUNZIONI'
    end
    object FunzioniDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
  end
  object Item: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_Item'
        Fields = 'FOLDER_ID'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_Item'
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'i.item_id,'
      'i.folder_id,'
      'NVL(i.descrizione,i.item_name) as descrizione'
      'from rb_item i'
      'where i.folder_id>=-1 and i.attivo=1')
    Params = <>
    QBEMode = False
    Left = 464
    Top = 148
    FastFields = (
      'ITEM_ID,3,0'
      'FOLDER_ID,3,0'
      'DESCRIZIONE,1,60')
    FMultiTable = ()
    UpdateMethod = umManual
    object ItemITEM_ID: TIntegerField
      FieldName = 'ITEM_ID'
    end
    object ItemFOLDER_ID: TIntegerField
      FieldName = 'FOLDER_ID'
    end
    object ItemDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 60
    end
  end
  object dsItem: TDataSource
    DataSet = Item
    Left = 512
    Top = 154
  end
  object GruppoEsami: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    FilterOptions = [foCaseInsensitive]
    Constraints = <>
    BeforeQuery = GruppoEsamiBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'm.pkgresami,'
      'm.gresami,'
      'm.descrizione'
      'from gresami m'
      'where m.reparti_fk = :reparti_fk'
      'and (m.data_fine is null or m.data_fine>sysdate)')
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
      03000000060000000F000000504B5052455354535045434D554C540100000000
      100000005052455354535045434D554C545F464B010000000006000000434F44
      4943450100000000080000004944454E545F464B01000000000B000000444553
      4352495A494F4E450100000000060000004455524154410100000000}
    Left = 486
    Top = 313
    FastFields = (
      'PKGRESAMI,3,0'
      'GRESAMI,1,10'
      'DESCRIZIONE,1,50')
    FMultiTable = ()
    UpdateMethod = umManual
    object GruppoEsamiDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
    object GruppoEsamiPKGRESAMI: TIntegerField
      FieldName = 'PKGRESAMI'
    end
    object GruppoEsamiGRESAMI: TStringField
      DisplayLabel = 'Metodica'
      FieldName = 'GRESAMI'
      Size = 10
    end
  end
  object sGruppoEsami: TDataSource
    DataSet = GruppoEsami
    Left = 560
    Top = 360
  end
  object TipoVerifica: TAstaClientDataSet
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
      'pkverificastampe,'
      'nomestampa'
      'from verificastampe')
    Params = <>
    QBEMode = False
    Left = 356
    Top = 376
    FastFields = (
      'PKVERIFICASTAMPE,3,0'
      'NOMESTAMPA,1,50')
    FMultiTable = ()
    UpdateMethod = umManual
    object TipoVerificaPKVERIFICASTAMPE: TIntegerField
      FieldName = 'PKVERIFICASTAMPE'
    end
    object TipoVerificaNOMESTAMPA: TStringField
      DisplayLabel = 'Tipo stampa'
      FieldName = 'NOMESTAMPA'
      Size = 50
    end
  end
  object sTipoVerifica: TDataSource
    DataSet = TipoVerifica
    Left = 392
    Top = 364
  end
  object esamixstampe: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    OnNewRecord = esamixstampeNewRecord
    BeforeQuery = esamixstampeBeforeQuery
    SequenceField.Field = 'PKESAMIXSTAMPE'
    SequenceField.Sequence = 'ESAMIXSTAMPE_PKESAMIXSTAMPE'
    SequenceField.ApplyMoment = amOnNewRecord
    NoSQLFields.Strings = (
      'codice'
      'descrizione')
    EditMode = 'Read Only'
    UpdateTableName = 'ESAMIXSTAMPE'
    PrimeFields.Strings = (
      'PKESAMIXSTAMPE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'e.item_id_fk,'
      'e.codicirad_fk,'
      'e.pkesamixstampe,'
      'e.includi,'
      'c.codice,'
      'c.descrizione'
      'from esamixstampe e, codicirad c'
      'where e.item_id_fk = :item_id_fk'
      'and c.pkcodicirad = e.codicirad_fk')
    Params = <
      item
        Name = 'item_id_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 578
    Top = 534
    FastFields = (
      'ITEM_ID_FK,3,0'
      'CODICIRAD_FK,3,0'
      'PKESAMIXSTAMPE,3,0'
      'INCLUDI,3,0'
      'CODICE,1,12'
      'DESCRIZIONE,1,100')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object esamixstampeCODICIRAD_FK: TIntegerField
      DisplayLabel = 'Codice'
      FieldName = 'CODICIRAD_FK'
      Required = True
      OnChange = esamixstampeCODICIRAD_FKChange
    end
    object esamixstampePKESAMIXSTAMPE: TIntegerField
      FieldName = 'PKESAMIXSTAMPE'
    end
    object esamixstampeCODICE: TStringField
      FieldName = 'CODICE'
      Size = 12
    end
    object esamixstampeDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object esamixstampeITEM_ID_FK: TIntegerField
      FieldName = 'ITEM_ID_FK'
    end
    object esamixstampeINCLUDI: TIntegerField
      DisplayLabel = 'Esistenza'
      FieldName = 'INCLUDI'
    end
  end
  object sesamixstampe: TDataSource
    DataSet = esamixstampe
    Left = 626
    Top = 514
  end
  object CodiciEsame: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_CodiciEsame'
        Fields = 'PKCODICIRAD'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_CodiciEsame'
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = CodiciEsameBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'c.codice,'
      'c.descrizione,'
      'c.pkcodicirad'
      'from codicirad c, codxrad cr'
      'where cr.reparti_fk = :reparti_fk'
      'and cr.codicirad_fk=c.pkcodicirad')
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
    Left = 450
    Top = 546
    FastFields = (
      'CODICE,1,12'
      'DESCRIZIONE,1,100'
      'PKCODICIRAD,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object CodiciEsameCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object CodiciEsameDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object CodiciEsamePKCODICIRAD: TIntegerField
      FieldName = 'PKCODICIRAD'
    end
  end
  object sCodiciEsame: TDataSource
    DataSet = CodiciEsame
    Left = 510
    Top = 570
  end
  object qFolderItem: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
      end>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'RB_ITEM'
    PrimeFields.Strings = (
      'FOLDER_ID')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'f.folder_id /* per bug Oracle 9.2.0.8 */ + 0 as folder_id,'
      'f.folder_name as descrizione,'
      'f.parent_id /* per bug Oracle 9.2.0.8 */ + 0 as parent_id,'
      '28 as tipo,'
      '0 as item_type'
      'from rb_folder f'
      'where f.folder_id>=-1'
      'union all'
      'select'
      '-(i.item_id*10) as folder_id,'
      'NVL(i.descrizione,i.item_name) as descrizione,'
      'i.folder_id /* per bug Oracle 9.2.0.8 */ + 0 as parent_id,'
      'decode(i.item_type,1,51,2,27,3,49,54) as tipo,'
      'i.item_type /* per bug Oracle 9.2.0.8 */ + 0 as item_type'
      'from rb_item i'
      'where i.folder_id>=-1 and i.attivo=1'
      ' ')
    Params = <>
    UpdateObject = updFolderItem
    QBEMode = False
    Left = 306
    Top = 114
    FastFields = (
      'FOLDER_ID,3,0'
      'DESCRIZIONE,1,60'
      'PARENT_ID,3,0'
      'TIPO,3,0'
      'ITEM_TYPE,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qFolderItemDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 60
    end
    object qFolderItemFOLDER_ID: TIntegerField
      FieldName = 'FOLDER_ID'
    end
    object qFolderItemPARENT_ID: TIntegerField
      FieldName = 'PARENT_ID'
    end
    object qFolderItemTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qFolderItemITEM_TYPE: TIntegerField
      FieldName = 'ITEM_TYPE'
    end
  end
  object sqFolderItem: TDataSource
    DataSet = qFolderItem
    Left = 340
    Top = 76
  end
  object updFolderItem: TAstaUpdateSQL
    DeleteSQL.Strings = (
      'begin'
      ''
      'delete rb_item rb'
      'where rb.item_id = abs(:folder_id) / 10;'
      ''
      'end;')
    Left = 312
    Top = 170
  end
  object qTipoReferto: TAstaClientDataSet
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
      'tiporeferto, '
      'descrizione'
      'from tipo_referto'
      'where attivo=1')
    Params = <>
    QBEMode = False
    Left = 760
    Top = 442
    FastFields = (
      'TIPOREFERTO,3,0'
      'DESCRIZIONE,1,32')
    FMultiTable = ()
    UpdateMethod = umManual
    object qTipoRefertoTIPOREFERTO: TIntegerField
      FieldName = 'TIPOREFERTO'
    end
    object qTipoRefertoDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 32
    end
  end
  object sqTipoReferto: TDataSource
    DataSet = qTipoReferto
    Left = 808
    Top = 434
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = []
    Storage = rsStorage1
    Options = [poStoreDefValues]
    RootSection = 'FTabStampe.rsPropSaver1'
    WhenLoad = wlManual
    WhenSave = wsManual
    Left = 526
    Top = 249
  end
end
