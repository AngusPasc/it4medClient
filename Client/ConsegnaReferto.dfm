inherited FConsegnaReferto: TFConsegnaReferto
  Left = 848
  Top = 76
  ActiveControl = cxTipoInvio
  Caption = 'Consegna referto'
  ClientHeight = 588
  ClientWidth = 548
  PixelsPerInch = 96
  TextHeight = 24
  inherited cxGroupBox1: TcxGroupBox
    Top = 538
    Width = 548
    inherited btSalva: TcxButton
      Action = aConferma
    end
    inherited cxPersonalizza: TcxButton
      Left = 513
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 548
    Height = 538
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = FDMCommon.dxLayoutSkinLookAndFeel1
    object Com_Residenza: TKScxDBLookupDlg
      Left = 21
      Top = 152
      AutoSize = False
      DataBinding.DataField = 'DES_COMREF'
      DataBinding.DataSource = sAccettazione
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.CharCase = ecUpperCase
      Properties.ClickKey = 121
      Properties.ReadOnly = False
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 1
      AllowNotInList = True
      OnCloseDialog = Com_ResidenzaCloseDialog
      LookupSearchFields.Strings = (
        'c.descrizione#descrizione')
      LookupAndSourceFields.Strings = (
        'COM_REF;CODICE'
        'DES_COMREF;DESCRIZIONE'
        'CAP_REF;CAP')
      LookupTable = LkComuniRes
      SempreilPrimo = True
      OnNotInList = Com_ResidenzaNotInList
      OnSearch = Com_ResidenzaSearch
      Height = 31
      Width = 490
    end
    object cxCapRes: TcxDBMaskEdit
      Left = 418
      Top = 226
      RepositoryItem = FDMCommon.edrepCAP
      AutoSize = False
      DataBinding.DataField = 'CAP_REF'
      DataBinding.DataSource = sAccettazione
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 3
      Height = 31
      Width = 96
    end
    object cxIndirizzo: TcxButtonEdit
      Left = 21
      Top = 226
      AutoSize = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxIndirizzoPropertiesButtonClick
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 2
      OnEnter = cxIndirizzoEnter
      OnExit = cxIndirizzoExit
      OnKeyDown = cxIndirizzoKeyDown
      Height = 31
      Width = 387
    end
    object cxEMail: TcxMaskEdit
      Left = 21
      Top = 347
      AutoSize = False
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '(\w)[^@]*@ ((\w)+\.)+(com|org|net|[a-zA-Z][a-zA-Z])'
      Properties.MaxLength = 0
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 4
      Height = 31
      Width = 387
    end
    object cxFax: TcxMaskEdit
      Left = 21
      Top = 468
      AutoSize = False
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 5
      Height = 31
      Width = 387
    end
    object cxTipoInvio: TcxDBLookupComboBox
      Left = 11
      Top = 44
      AutoSize = False
      DataBinding.DataField = 'INVIO_FK'
      DataBinding.DataSource = sAccettazione
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'PKINVIO'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          Width = 300
          FieldName = 'DESCRIZIONE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = sqTipoInvio
      Properties.OnCloseUp = cxTipoInvioPropertiesCloseUp
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 0
      Height = 31
      Width = 280
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      LayoutLookAndFeel = FDMCommon.dxLayoutSkinLookAndFeel1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Tipo consegna'
      CaptionOptions.Layout = clTop
      Control = cxTipoInvio
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutPosta: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'posta'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutPosta
      AlignHorz = ahLeft
      CaptionOptions.Text = 'comune'
      CaptionOptions.Layout = clTop
      Control = Com_Residenza
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutPosta
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'indirizzo'
      CaptionOptions.Layout = clTop
      Control = cxIndirizzo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cap'
      CaptionOptions.Layout = clTop
      Control = cxCapRes
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutEMail: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'e-mail'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutEMail
      AlignHorz = ahLeft
      CaptionOptions.Text = 'indirizzo'
      CaptionOptions.Layout = clTop
      Control = cxEMail
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutFax: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'fax'
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutFax
      AlignHorz = ahLeft
      CaptionOptions.Text = 'numero'
      CaptionOptions.Layout = clTop
      Control = cxFax
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited csEZKeys1: TcsEZKeys
    Left = 276
    Top = 28
  end
  inherited PopupMenuPersonalizza: TPopupMenu
    Left = 372
    Top = 184
  end
  object sqTipoInvio: TDataSource
    DataSet = FDMCommon.qTipoInvio
    Left = 244
    Top = 68
  end
  object sAccettazione: TDataSource
    Left = 200
    Top = 32
  end
  object LkComuniRes: TAstaClientDataSet
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
      'c.com_type,'
      'c.descrizione,'
      'c.naz_codice,'
      'c.sigla,'
      'c.cap,'
      'n.tnz_ident'
      'from comuni c'
      'left join nazioni n on n.codice = c.naz_codice'
      'where (c.data_fine is null or c.data_fine>SYSDATE)'
      ' ')
    Params = <>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      030000000600000006000000434F4449434501000000000B0000004445534352
      495A494F4E45010000000003000000434150010000000008000000434F4D5F54
      59504501000000000A0000004E415A5F434F4449434501000000000A00000050
      524F5F434F444943450100000000}
    Left = 152
    Top = 56
    FastFields = (
      'CODICE,1,6'
      'COM_TYPE,1,10'
      'DESCRIZIONE,1,60'
      'NAZ_CODICE,1,3'
      'SIGLA,1,2'
      'CAP,1,10'
      'TNZ_IDENT,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object LkComuniResCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Origin = 'c.codice'
      Required = True
      Size = 6
    end
    object LkComuniResDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 60
    end
    object LkComuniResCAP: TStringField
      DisplayLabel = 'cap'
      FieldName = 'CAP'
      Size = 10
    end
    object LkComuniResCOM_TYPE: TStringField
      FieldName = 'COM_TYPE'
      Required = True
      Size = 10
    end
    object LkComuniResNAZ_CODICE: TStringField
      FieldName = 'NAZ_CODICE'
      Required = True
      Size = 3
    end
    object LkComuniResSIGLA: TStringField
      DisplayLabel = 'Prov'
      FieldName = 'SIGLA'
      Size = 2
    end
    object LkComuniResTNZ_IDENT: TIntegerField
      FieldName = 'TNZ_IDENT'
    end
  end
  object sLkComuniRes: TDataSource
    DataSet = LkComuniRes
    Left = 272
    Top = 180
  end
  object LkStradario: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select '
      'rownum,'
      'i.indirizzo, '
      'i.cap,'
      'i.intervalli,'
      'i.note,'
      'i.circoscrizione,'
      'i.cod_reg,'
      'i.cod_asl'
      'from stradario i'
      'where cod_com=:cod_com'
      'and i.indirizzo like :indirizzo')
    Params = <
      item
        Name = 'cod_com'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'indirizzo'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = 'roma'
      end>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      030000000300000003000000434150010000000009000000494E444952495A5A
      4F01000000000A000000494E54455256414C4C490100000000}
    Left = 188
    Top = 200
    FastFields = (
      'ROWNUM,3,0'
      'INDIRIZZO,1,60'
      'CAP,1,5'
      'INTERVALLI,1,80'
      'NOTE,1,45'
      'CIRCOSCRIZIONE,1,6'
      'COD_REG,1,3'
      'COD_ASL,1,3')
    FMultiTable = ()
    UpdateMethod = umManual
    object LkStradarioINDIRIZZO: TStringField
      DisplayLabel = 'Indirizzo'
      DisplayWidth = 50
      FieldName = 'INDIRIZZO'
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
    object LkStradarioCIRCOSCRIZIONE: TStringField
      DisplayLabel = 'Circoscr.'
      FieldName = 'CIRCOSCRIZIONE'
      Size = 6
    end
    object LkStradarioCOD_REG: TStringField
      DisplayLabel = 'Regione'
      FieldName = 'COD_REG'
      Size = 3
    end
    object LkStradarioCOD_ASL: TStringField
      DisplayLabel = 'ASL'
      FieldName = 'COD_ASL'
      Size = 3
    end
    object LkStradarioNOTE: TStringField
      DisplayLabel = 'Note'
      FieldName = 'NOTE'
      Size = 45
    end
    object LkStradarioROWNUM: TIntegerField
      FieldName = 'ROWNUM'
    end
  end
  object ActionList1: TActionList
    Images = FDMCommon.cxImageNavigator16
    Left = 240
    Top = 256
    object aConferma: TAction
      Caption = 'Conferma'
      ImageIndex = 9
      OnExecute = aConfermaExecute
      OnUpdate = aConfermaUpdate
    end
    object aAnnulla: TAction
      Caption = 'aAnnulla'
      ImageIndex = 10
      OnExecute = aAnnullaExecute
    end
  end
end
