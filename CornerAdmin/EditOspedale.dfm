inherited FEditOspedale: TFEditOspedale
  Left = 519
  Top = 2
  ActiveControl = CodiceRicerca
  Caption = 'Scheda provenienza'
  ClientHeight = 768
  ClientWidth = 697
  OnDestroy = BaseFormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 24
  inherited cxGroupBox1: TcxGroupBox
    Top = 718
    Width = 697
    inherited btSalva: TcxButton
      OnClick = btSalvaClick
    end
    inherited cxPersonalizza: TcxButton
      Left = 662
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 697
    Height = 718
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = FDMCommon.dxLayoutSkinLookAndFeel1
    object DescOspedale: TcxDBMaskEdit
      Left = 161
      Top = 52
      AutoSize = False
      DataBinding.DataField = 'DESCRIZIONE'
      DataBinding.DataSource = sOspedale
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 2
      Height = 31
      Width = 490
    end
    object Comune_Ospedale: TKScxDBLookupDlg
      Left = 161
      Top = 93
      AutoSize = False
      DataBinding.DataField = 'DESC_COMUNE'
      DataBinding.DataSource = sOspedale
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 3
      AllowNotInList = True
      OnCloseDialog = Comune_OspedaleCloseDialog
      LookupSearchFields.Strings = (
        'c.descrizione#descrizione')
      LookupAndSourceFields.Strings = (
        'com_codice;codice'
        'DESC_COMUNE;descrizione')
      LookupTable = LkComuni
      SempreilPrimo = True
      Height = 31
      Width = 490
    end
    object Indirizzo: TKScxDBLookupDlg
      Left = 161
      Top = 134
      AutoSize = False
      DataBinding.DataField = 'INDIRIZZO'
      DataBinding.DataSource = sOspedale
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 4
      AllowNotInList = True
      OnCloseDialog = IndirizzoCloseDialog
      LookupSearchFields.Strings = (
        'indirizzo')
      LookupAndSourceFields.Strings = (
        'cap;cap'
        'indirizzo;indirizzo')
      LookupTable = LkStradario
      SoloInput = True
      Height = 31
      Width = 490
    end
    object CAP_COMRES: TcxDBMaskEdit
      Left = 161
      Top = 175
      AutoSize = False
      DataBinding.DataField = 'CAP'
      DataBinding.DataSource = sOspedale
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d'
      Properties.MaxLength = 0
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 5
      Height = 31
      Width = 118
    end
    object ASLAppartiene: TcxDBLookupComboBox
      Left = 161
      Top = 216
      AutoSize = False
      DataBinding.DataField = 'USL_CODICE'
      DataBinding.DataSource = sOspedale
      Properties.CharCase = ecUpperCase
      Properties.ClearKey = 46
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODICE'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'DESCRUSL'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = sLkUsl
      Properties.ReadOnly = False
      Properties.OnCloseUp = ASLAppartienePropertiesCloseUp
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 6
      Height = 31
      Width = 490
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 161
      Top = 462
      AutoSize = False
      DataBinding.DataField = 'DATA_INIZIO'
      DataBinding.DataSource = sOspedale
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 13
      Height = 31
      Width = 217
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 161
      Top = 503
      AutoSize = False
      DataBinding.DataField = 'DATA_FINE'
      DataBinding.DataSource = sOspedale
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 14
      Height = 31
      Width = 217
    end
    object CodiceRicerca: TcxDBMaskEdit
      Left = 161
      Top = 11
      RepositoryItem = FDMCommon.edrepCodiceOspedale
      AutoSize = False
      DataBinding.DataField = 'COD_RIC'
      DataBinding.DataSource = sOspedale
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 0
      Height = 31
      Width = 183
    end
    object Attivita: TcxDBLookupComboBox
      Left = 161
      Top = 298
      AutoSize = False
      DataBinding.DataField = 'TIPO_ATTIVITA_FK'
      DataBinding.DataSource = sOspedale
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'TIPO_ATTIVITA'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'DESCRIZIONE'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = sTipoAttivita
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 8
      Height = 31
      Width = 217
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 161
      Top = 421
      AutoSize = False
      DataBinding.DataField = 'ES_TICKET'
      DataBinding.DataSource = sOspedale
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.ImmediateDropDownWhenKeyPressed = False
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'IDENT'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'IDENT'
        end
        item
          FieldName = 'DESCRIZIONE'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListSource = sTipoEsenzioni
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 12
      Height = 31
      Width = 217
    end
    object cxDBMaskEdit1: TcxDBMaskEdit
      Left = 161
      Top = 544
      AutoSize = False
      DataBinding.DataField = 'COD_STS11'
      DataBinding.DataSource = sOspedale
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 15
      Height = 31
      Width = 217
    end
    object cxDBMaskEdit2: TcxDBMaskEdit
      Left = 161
      Top = 626
      AutoSize = False
      DataBinding.DataField = 'COD_AZIENDA'
      DataBinding.DataSource = sOspedale
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 17
      Height = 31
      Width = 217
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 161
      Top = 585
      AutoSize = False
      DataBinding.DataField = 'COD_HSP11'
      DataBinding.DataSource = sOspedale
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 16
      Height = 31
      Width = 217
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 161
      Top = 380
      AutoSize = False
      DataBinding.DataField = 'LEG_CODICE'
      DataBinding.DataSource = sOspedale
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODICE'
      Properties.ListColumns = <
        item
          FieldName = 'CODICE'
        end
        item
          FieldName = 'DESCRIZIONE'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = sListini
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 11
      Height = 31
      Width = 217
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 161
      Top = 339
      RepositoryItem = FDMCommon.edrepSINO
      AutoSize = False
      DataBinding.DataField = 'AGENDE_ESCLUSIVE'
      DataBinding.DataSource = sOspedale
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 9
      Height = 31
      Width = 46
    end
    object cxDBMaskEdit3: TcxDBMaskEdit
      Left = 161
      Top = 667
      AutoSize = False
      DataBinding.DataField = 'CODICE_EST'
      DataBinding.DataSource = sOspedale
      Style.HotTrack = False
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 18
      Height = 31
      Width = 217
    end
    object cxDBCheckBox3: TcxDBCheckBox
      Left = 389
      Top = 339
      RepositoryItem = FDMCommon.edrepSINO
      AutoSize = False
      DataBinding.DataField = 'PERC_ONCO'
      DataBinding.DataSource = sOspedale
      Style.HotTrack = False
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 10
      Height = 31
      Width = 45
    end
    object cxDBLookupTipoFattura: TcxDBLookupComboBox
      Left = 161
      Top = 257
      AutoSize = False
      DataBinding.DataField = 'TIPO_FATTURA'
      DataBinding.DataSource = sOspedale
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'PKTIPO_FATTURA'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          Width = 300
          FieldName = 'DESCRIZIONE'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = sLkTipoFattura
      Style.HotTrack = False
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 7
      Height = 31
      Width = 217
    end
    object CodiceOspedale: TcxDBMaskEdit
      Left = 495
      Top = 11
      RepositoryItem = FDMCommon.edrepCodiceOspedale
      AutoSize = False
      DataBinding.DataField = 'CODICE'
      DataBinding.DataSource = sOspedale
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 0
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 1
      Height = 31
      Width = 154
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Codice ricerca'
      Control = CodiceRicerca
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Descrizione'
      Control = DescOspedale
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Comune'
      Control = Comune_Ospedale
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Indirizzo'
      Control = Indirizzo
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Cap'
      Control = CAP_COMRES
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ASL'
      Control = ASLAppartiene
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Tipo fatturazione'
      Control = cxDBLookupTipoFattura
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Tipo attivit'#224
      Control = Attivita
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Agende esclusive'
      Control = cxDBCheckBox2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Percorso oncologico'
      Control = cxDBCheckBox3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Listino'
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Esenzione'
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Inizio validit'#224
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Fine validit'#224
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Codice STS11'
      Control = cxDBMaskEdit1
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Codice HSP11.BIS'
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Codice Azienda'
      Control = cxDBMaskEdit2
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Codice Esterno'
      Control = cxDBMaskEdit3
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object dxLayoutGroup2: TdxLayoutGroup
      AlignVert = avBottom
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Codice ospedale'
      Control = CodiceOspedale
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
  end
  inherited csEZKeys1: TcsEZKeys
    Left = 288
  end
  object Ospedale: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    OnNewRecord = OspedaleNewRecord
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
      'o.cod_azienda,'
      'o.leg_codice,'
      'o.agende_esclusive,'
      'o.codice_est,'
      'o.perc_onco,'
      'c.descrizione as desc_comune,'
      'az.descrizione as DescrUsl'
      'from ospedali o'
      'left join comuni c on c.codice = o.com_codice'
      
        'left join aziende_speciali_usl az on az.reg_codice = o.USL_REG_C' +
        'ODICE and az.codice =o.USL_CODICE'
      'where o.codice=:codice')
    Params = <
      item
        Name = 'codice'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 340
    Top = 96
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
      'COD_AZIENDA,1,3'
      'LEG_CODICE,1,10'
      'AGENDE_ESCLUSIVE,3,0'
      'CODICE_EST,1,20'
      'PERC_ONCO,3,0'
      'DESC_COMUNE,1,60'
      'DESCRUSL,1,60')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object OspedaleCODICE: TStringField
      DisplayLabel = 'Codice ospedale'
      FieldName = 'CODICE'
      Required = True
      Size = 6
    end
    object OspedaleDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 80
    end
    object OspedaleDATA_INIZIO: TDateTimeField
      FieldName = 'DATA_INIZIO'
    end
    object OspedaleDATA_FINE: TDateTimeField
      FieldName = 'DATA_FINE'
    end
    object OspedaleCOM_CODICE: TStringField
      DisplayLabel = 'Comune'
      FieldName = 'COM_CODICE'
      Size = 13
    end
    object OspedaleUSL_CODICE: TStringField
      DisplayLabel = 'ASL'
      FieldName = 'USL_CODICE'
      Size = 3
    end
    object OspedaleINDIRIZZO: TStringField
      FieldName = 'INDIRIZZO'
      Size = 100
    end
    object OspedaleUSL_REG_CODICE: TStringField
      DisplayLabel = 'ASL'
      FieldName = 'USL_REG_CODICE'
      Size = 3
    end
    object OspedaleDESC_COMUNE: TStringField
      FieldName = 'DESC_COMUNE'
      Size = 60
    end
    object OspedaleCAP: TStringField
      FieldName = 'CAP'
      Size = 5
    end
    object OspedaleDESCRUSL: TStringField
      DisplayLabel = 'ASL'
      FieldName = 'DESCRUSL'
      Size = 60
    end
    object OspedaleTIPO_FATTURA: TIntegerField
      FieldName = 'TIPO_FATTURA'
    end
    object OspedaleTIPO_ATTIVITA_FK: TStringField
      DisplayLabel = 'Tipo attivit'#224
      FieldName = 'TIPO_ATTIVITA_FK'
      Required = True
      Size = 2
    end
    object OspedaleCOD_RIC: TStringField
      FieldName = 'COD_RIC'
    end
    object OspedaleES_TICKET: TStringField
      FieldName = 'ES_TICKET'
      Size = 7
    end
    object OspedaleCOD_AZIENDA: TStringField
      FieldName = 'COD_AZIENDA'
      Size = 3
    end
    object OspedaleCOD_HSP11: TStringField
      FieldName = 'COD_HSP11'
      Size = 8
    end
    object OspedaleLEG_CODICE: TStringField
      FieldName = 'LEG_CODICE'
      Size = 10
    end
    object OspedaleAGENDE_ESCLUSIVE: TIntegerField
      FieldName = 'AGENDE_ESCLUSIVE'
    end
    object OspedaleCODICE_EST: TStringField
      FieldName = 'CODICE_EST'
    end
    object OspedalePERC_ONCO: TIntegerField
      FieldName = 'PERC_ONCO'
    end
    object OspedaleCOD_STS11: TStringField
      FieldName = 'COD_STS11'
      Size = 12
    end
  end
  object sOspedale: TDataSource
    DataSet = Ospedale
    Left = 208
    Top = 92
  end
  object LkStradario: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = LkStradarioBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select '
      'i.indirizzo, '
      'i.cap,'
      'i.intervalli,'
      'i.note'
      'from stradario i'
      'where cod_com=:cod_com')
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
    QBEDefinition.QBEFieldDefs = {
      030000000300000003000000434150010000000009000000494E444952495A5A
      4F01000000000A000000494E54455256414C4C490100000000}
    Left = 296
    Top = 84
    FastFields = (
      'INDIRIZZO,1,60'
      'CAP,1,5'
      'INTERVALLI,1,80'
      'NOTE,1,45')
    FMultiTable = ()
    UpdateMethod = umManual
    object LkStradarioINDIRIZZO: TStringField
      DisplayLabel = 'Indirizzo'
      DisplayWidth = 50
      FieldName = 'INDIRIZZO'
      Visible = False
      Size = 60
    end
    object LkStradarioINTERVALLI: TStringField
      DisplayLabel = 'Intervalli'
      DisplayWidth = 80
      FieldName = 'INTERVALLI'
      Size = 80
    end
    object LkStradarioCAP: TStringField
      DisplayLabel = 'Cap'
      DisplayWidth = 5
      FieldName = 'CAP'
      Size = 5
    end
    object LkStradarioNOTE: TStringField
      DisplayLabel = 'Note'
      FieldName = 'NOTE'
      Size = 45
    end
  end
  object LkUsl: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = LkUslBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select '
      'a.codice, '
      'a.reg_codice, '
      'a.descrizione as DescrUsl'
      'from aziende_speciali_usl a, '
      '        usl_com u'
      'where (a.data_fine is null or SYSDATE<a.data_fine)'
      'and u.codcom=:com_codice '
      'and a.reg_codice=u.reg_codice '
      'and a.codice=u.cod_asl')
    Params = <
      item
        Name = 'com_codice'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      030000000300000006000000434F4449434501000000000A0000005245475F43
      4F44494345010000000008000000444553435255534C0100000000}
    Left = 340
    Top = 144
    FastFields = (
      'CODICE,1,3'
      'REG_CODICE,1,3'
      'DESCRUSL,1,60')
    FMultiTable = ()
    UpdateMethod = umManual
    object LkUslDESCRUSL: TStringField
      DisplayLabel = 'Descrizione'
      DisplayWidth = 40
      FieldName = 'DESCRUSL'
      Required = True
      Size = 60
    end
    object LkUslREG_CODICE: TStringField
      DisplayLabel = 'Regione'
      DisplayWidth = 3
      FieldName = 'REG_CODICE'
      Required = True
      Size = 3
    end
    object LkUslCODICE: TStringField
      DisplayLabel = 'Asl'
      DisplayWidth = 3
      FieldName = 'CODICE'
      Required = True
      Size = 3
    end
  end
  object sLkUsl: TDataSource
    DataSet = LkUsl
    Left = 276
    Top = 132
  end
  object LkComuni: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = LkComuniBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select '
      'c.codice, '
      'c.com_type, '
      'c.descrizione, '
      'c.naz_codice, '
      'c.sigla, '
      'c.cap'
      'from comuni c'
      'where c.naz_codice=:naz_codice and'
      '(c.data_fine is null or SYSDATE<c.data_fine)')
    Params = <
      item
        Name = 'naz_codice'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      030000000600000006000000434F4449434501000000000B0000004445534352
      495A494F4E45010000000003000000434150010000000008000000434F4D5F54
      59504501000000000A0000004E415A5F434F4449434501000000000A00000050
      524F5F434F444943450100000000}
    Left = 232
    Top = 148
    FastFields = (
      'CODICE,1,6'
      'COM_TYPE,1,10'
      'DESCRIZIONE,1,60'
      'NAZ_CODICE,1,3'
      'SIGLA,1,2'
      'CAP,1,10')
    FMultiTable = ()
    UpdateMethod = umManual
    object LkComuniCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Required = True
      Visible = False
      Size = 6
    end
    object LkComuniDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 60
    end
    object LkComuniCAP: TStringField
      DisplayLabel = 'cap'
      FieldName = 'CAP'
      Size = 10
    end
    object LkComuniCOM_TYPE: TStringField
      FieldName = 'COM_TYPE'
      Required = True
      Visible = False
      Size = 10
    end
    object LkComuniNAZ_CODICE: TStringField
      FieldName = 'NAZ_CODICE'
      Required = True
      Visible = False
      Size = 3
    end
    object LkComuniSIGLA: TStringField
      DisplayLabel = 'Prov'
      FieldName = 'SIGLA'
      Size = 2
    end
  end
  object Listini: TAstaClientDataSet
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
      'codice, '
      'descrizione'
      'from leggi'
      'where (data_fine is null or data_fine>sysdate)')
    Params = <>
    QBEMode = False
    Left = 340
    Top = 376
    FastFields = (
      'CODICE,1,10'
      'DESCRIZIONE,1,50')
    FMultiTable = ()
    UpdateMethod = umManual
    object ListiniCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 10
    end
    object ListiniDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
  end
  object sListini: TDataSource
    DataSet = Listini
    Left = 280
    Top = 368
  end
  object sTipoAttivita: TDataSource
    Left = 348
    Top = 436
  end
  object sTipoEsenzioni: TDataSource
    Left = 292
    Top = 460
  end
  object LkTipoFattura: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = LkTipoFatturaBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'pktipo_fattura, '
      'descrizione'
      'from wtab_tipofattura'
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
    Left = 340
    Top = 276
    FastFields = (
      'PKTIPO_FATTURA,3,0'
      'DESCRIZIONE,1,200')
    FMultiTable = ()
    UpdateMethod = umManual
    object LkTipoFatturaPKTIPO_FATTURA: TIntegerField
      FieldName = 'PKTIPO_FATTURA'
    end
    object LkTipoFatturaDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
  end
  object sLkTipoFattura: TDataSource
    DataSet = LkTipoFattura
    Left = 300
    Top = 264
  end
end
