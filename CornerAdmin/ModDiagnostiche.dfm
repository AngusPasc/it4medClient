inherited FModDiagnostiche: TFModDiagnostiche
  Left = 597
  Top = 0
  ActiveControl = cxDescrizione
  Caption = 'Diagnostica'
  ClientHeight = 771
  ClientWidth = 861
  PixelsPerInch = 96
  TextHeight = 24
  inherited cxGroupBox1: TcxGroupBox
    Top = 721
    Width = 861
    inherited btSalva: TcxButton
      Action = aConferma
    end
    inherited btAnnulla: TcxButton
      Action = aAnnulla
      ModalResult = 0
    end
    inherited cxPersonalizza: TcxButton
      Left = 826
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 861
    Height = 721
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = FDMCommon.dxLayoutSkinLookAndFeel1
    object cxDescrizione: TcxDBMaskEdit
      Left = 269
      Top = 11
      AutoSize = False
      DataBinding.DataField = 'DESCRIZIONE'
      DataBinding.DataSource = sDiagnostiche
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 0
      Height = 31
      Width = 386
    end
    object cxTipo: TcxDBLookupComboBox
      Left = 269
      Top = 93
      AutoSize = False
      DataBinding.DataField = 'ESEGUITO'
      DataBinding.DataSource = sDiagnostiche
      Properties.Alignment.Horz = taLeftJustify
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ESEGUITO'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          Width = 150
          FieldName = 'DESCRIZIONE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = sqTipoEsecuzione
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 2
      Height = 31
      Width = 386
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 269
      Top = 134
      AutoSize = False
      DataBinding.DataField = 'MAX_TIME_PRENO'
      DataBinding.DataSource = sDiagnostiche
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 3
      Height = 31
      Width = 104
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 269
      Top = 216
      RepositoryItem = FDMCommon.edrepSINO
      AutoSize = False
      DataBinding.DataField = 'NO_TSRM_IN_REFERTO'
      DataBinding.DataSource = sDiagnostiche
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 5
      Height = 31
      Width = 44
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 269
      Top = 298
      AutoSize = False
      DataBinding.DataField = 'DATA_FINE'
      DataBinding.DataSource = sDiagnostiche
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 9
      Height = 31
      Width = 216
    end
    object cxGrid1: TcxGrid
      Left = 11
      Top = 577
      Width = 679
      Height = 122
      TabOrder = 16
      object cxGrid1DBTableView1: TcxGridDBTableView
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
        DataController.DataSource = sDiagnxServ
        DataController.KeyFieldNames = 'DIAGNOSTICA_FK;SERVIZI_FK'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.IncSearch = True
        OptionsData.Appending = True
        OptionsData.DeletingConfirmation = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid1DBTableView1DIAGNOSTICA_FK: TcxGridDBColumn
          DataBinding.FieldName = 'DIAGNOSTICA_FK'
          Visible = False
        end
        object cxGrid1DBTableView1SERVIZI_FK: TcxGridDBColumn
          DataBinding.FieldName = 'SERVIZI_FK'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'PKSERVIZI'
          Properties.ListColumns = <
            item
              SortOrder = soAscending
              Width = 300
              FieldName = 'DESCRIZIONE'
            end>
          Properties.ListOptions.CaseInsensitive = True
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = sServizi
          Options.Filtering = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxDBCheckBox3: TcxDBCheckBox
      Left = 269
      Top = 257
      RepositoryItem = FDMCommon.edrepSINO
      AutoSize = False
      DataBinding.DataField = 'CHK_MED_MEMORY'
      DataBinding.DataSource = sDiagnostiche
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 7
      Height = 31
      Width = 44
    end
    object cxDBCheckBox4: TcxDBCheckBox
      Left = 529
      Top = 257
      RepositoryItem = FDMCommon.edrepSINO
      AutoSize = False
      DataBinding.DataField = 'CHK_OVERBOOKING'
      DataBinding.DataSource = sDiagnostiche
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 8
      Height = 31
      Width = 44
    end
    object cxDBCheckBox5: TcxDBCheckBox
      Left = 269
      Top = 339
      RepositoryItem = FDMCommon.edrepSINO
      AutoSize = False
      DataBinding.DataField = 'ALLOCA_MODALITA'
      DataBinding.DataSource = sDiagnostiche
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 10
      Height = 31
      Width = 44
    end
    object cxDBCheckBox6: TcxDBCheckBox
      Left = 529
      Top = 339
      RepositoryItem = FDMCommon.edrepSINO
      AutoSize = False
      DataBinding.DataField = 'CHK_NON_REFERTARE'
      DataBinding.DataSource = sDiagnostiche
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 11
      Height = 31
      Width = 44
    end
    object cxDBSpinEdit3: TcxDBSpinEdit
      Left = 269
      Top = 380
      AutoSize = False
      DataBinding.DataField = 'ORE_PRIMA'
      DataBinding.DataSource = sDiagnostiche
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 12
      Height = 31
      Width = 104
    end
    object cxDBCheckBox8: TcxDBCheckBox
      Left = 269
      Top = 421
      RepositoryItem = FDMCommon.edrepSINO
      AutoSize = False
      DataBinding.DataField = 'TIPO_DIAGN'
      DataBinding.DataSource = sDiagnostiche
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 13
      Height = 31
      Width = 44
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 269
      Top = 52
      AutoSize = False
      DataBinding.DataField = 'CODICE'
      DataBinding.DataSource = sDiagnostiche
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 1
      Height = 31
      Width = 180
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 269
      Top = 462
      AutoSize = False
      DataBinding.DataField = 'CTRL_ESEGUITO'
      DataBinding.DataSource = sDiagnostiche
      Properties.Alignment.Horz = taLeftJustify
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CTRL_ESEGUITO'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          Width = 150
          FieldName = 'DESCRIZIONE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = sqCtrlEseguito
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 14
      Height = 31
      Width = 216
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 529
      Top = 216
      RepositoryItem = FDMCommon.edrepSINO
      AutoSize = False
      DataBinding.DataField = 'UNIFICA_REF'
      DataBinding.DataSource = sDiagnostiche
      Style.HotTrack = False
      TabOrder = 6
      Height = 31
      Width = 51
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox
      Left = 269
      Top = 175
      AutoSize = False
      DataBinding.DataField = 'SLOT_STANDARD'
      DataBinding.DataSource = sDiagnostiche
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'SLOT_STANDARD'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          Width = 150
          FieldName = 'DESCRIZIONE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = sqSlot
      Style.HotTrack = False
      TabOrder = 4
      Height = 31
      Width = 216
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 269
      Top = 503
      AutoSize = False
      DataBinding.DataField = 'PACS_FK'
      DataBinding.DataSource = sDiagnostiche
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'PKPACS'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          Width = 200
          FieldName = 'NOME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = sTabPacs
      Style.HotTrack = False
      TabOrder = 15
      Height = 31
      Width = 216
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Descrizione'
      AllowRemove = False
      Control = cxDescrizione
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Codice'
      AllowRemove = False
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Tipo esecuzione'
      AllowRemove = False
      Control = cxTipo
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Max. tempo esame'
      Control = cxDBSpinEdit1
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Slot standard'
      Control = cxDBLookupComboBox3
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'No TSRM in referto'
      Control = cxDBCheckBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlRefUnico: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Referto unico'
      Control = cxDBCheckBox2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Memorizza medico refertante'
      Control = cxDBCheckBox3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Controlla overbooking'
      Control = cxDBCheckBox4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Fine attivit'#224
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 8
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Scegli modalit'#224' in accettazione'
      Control = cxDBCheckBox5
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Consente "non refertare"'
      Control = cxDBCheckBox6
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Ore anticipo prenotazione'
      Control = cxDBSpinEdit3
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 10
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Diagnostica di P.S.'
      Control = cxDBCheckBox8
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Controllo eseguito'
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'PACS invio immagini'
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxServxRad: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Servizi di radiologia'
      CaptionOptions.Layout = clTop
      Control = cxGrid1
      ControlOptions.ShowBorder = False
      Index = 11
    end
  end
  inherited csEZKeys1: TcsEZKeys
    Left = 292
    Top = 56
  end
  object sDiagnostiche: TDataSource
    Left = 348
    Top = 24
  end
  object sDiagnxServ: TDataSource
    Left = 364
    Top = 96
  end
  object sServizi: TDataSource
    Left = 316
    Top = 108
  end
  object qTipoEsecuzione: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = qTipoEsecuzioneBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'eseguito, '
      'descrizione'
      'from wtbd_eseguito'
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
    Left = 128
    Top = 52
    FastFields = (
      'ESEGUITO,3,0'
      'DESCRIZIONE,1,200')
    FMultiTable = ()
    UpdateMethod = umManual
    object qTipoEsecuzioneESEGUITO: TIntegerField
      FieldName = 'ESEGUITO'
    end
    object qTipoEsecuzioneDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
  end
  object sqTipoEsecuzione: TDataSource
    DataSet = qTipoEsecuzione
    Left = 168
    Top = 68
  end
  object qSlot: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = qSlotBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'slot_standard, '
      'descrizione'
      'from wtbd_slot'
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
    Left = 320
    Top = 168
    FastFields = (
      'SLOT_STANDARD,3,0'
      'DESCRIZIONE,1,200')
    FMultiTable = ()
    UpdateMethod = umManual
    object qSlotSLOT_STANDARD: TIntegerField
      FieldName = 'SLOT_STANDARD'
    end
    object qSlotDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
  end
  object sqSlot: TDataSource
    DataSet = qSlot
    Left = 376
    Top = 172
  end
  object sTabPacs: TDataSource
    Left = 320
    Top = 332
  end
  object ActionList1: TActionList
    Images = FDMCommon.cxImageNavigator16
    Left = 252
    Top = 160
    object aAnnulla: TAction
      Caption = 'Annulla'
      ImageIndex = 10
      OnExecute = aAnnullaExecute
    end
    object aConferma: TAction
      Caption = 'Conferma'
      ImageIndex = 9
    end
  end
  object qCtrlEseguito: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = qCtrlEseguitoBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'ctrl_eseguito, '
      'descrizione'
      'from wtbd_ctrleseguito'
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
    Left = 304
    Top = 276
    FastFields = (
      'CTRL_ESEGUITO,3,0'
      'DESCRIZIONE,1,200')
    FMultiTable = ()
    UpdateMethod = umManual
    object qCtrlEseguitoCTRL_ESEGUITO: TIntegerField
      FieldName = 'CTRL_ESEGUITO'
    end
    object qCtrlEseguitoDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 200
    end
  end
  object sqCtrlEseguito: TDataSource
    DataSet = qCtrlEseguito
    Left = 368
    Top = 288
  end
end
