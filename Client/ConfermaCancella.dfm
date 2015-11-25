inherited FConfermaCancella: TFConfermaCancella
  Left = 585
  Top = 122
  Caption = 'Conferma cancellazione'
  ClientHeight = 361
  ClientWidth = 493
  Font.Height = -15
  KeyPreview = True
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 19
  inherited cxGroupBox1: TcxGroupBox
    Top = 311
    Width = 493
    inherited btSalva: TcxButton
      Action = Conferma
    end
    inherited cxPersonalizza: TcxButton
      Left = 458
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 493
    Height = 311
    Align = alClient
    TabOrder = 1
    AutoSize = True
    LayoutLookAndFeel = FDMCommon.dxLayoutSkinLookAndFeel1
    object cxDBTextPaziente: TcxDBTextEdit
      Left = 11
      Top = 37
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'NOME_PAZIENTE'
      DataBinding.DataSource = sDatiPaziente
      Properties.Alignment.Horz = taLeftJustify
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 0
      Height = 31
      Width = 293
    end
    object cxDBTextEsame: TcxDBTextEdit
      Left = 11
      Top = 102
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'PKTRIAGE'
      DataBinding.DataSource = sDatiPaziente
      Properties.Alignment.Horz = taCenter
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 2
      Height = 31
      Width = 155
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 174
      Top = 102
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'DIAGNOSTICA'
      DataBinding.DataSource = sDatiPaziente
      Properties.Alignment.Horz = taCenter
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 3
      Height = 31
      Width = 275
    end
    object Pswd: TcxMaskEdit
      Left = 11
      Top = 167
      Hint = 'Immettere identificativo per controllo'
      AutoSize = False
      Properties.CharCase = ecLowerCase
      Properties.EchoMode = eemPassword
      Properties.MaxLength = 20
      Properties.ReadOnly = False
      Style.HotTrack = False
      TabOrder = 4
      OnKeyDown = PswdKeyDown
      Height = 31
      Width = 197
    end
    object cxLookupMotivo: TcxLookupComboBox
      Left = 11
      Top = 232
      AutoSize = False
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'STATOVISITA'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'DESCRIZIONE'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = sqMotivi
      Properties.ReadOnly = False
      Style.HotTrack = False
      TabOrder = 5
      OnKeyDown = cxLookupMotivoKeyDown
      Height = 31
      Width = 197
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 312
      Top = 37
      AutoSize = False
      DataBinding.DataField = 'DATA_NASCITA'
      DataBinding.DataSource = sDatiPaziente
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 1
      Height = 31
      Width = 137
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Paziente'
      CaptionOptions.Layout = clTop
      Control = cxDBTextPaziente
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Data nascita'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Numero esame'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEsame
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Diagnostica'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutPassword: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Password'
      CaptionOptions.Layout = clTop
      Visible = False
      Control = Pswd
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlMotivo: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Motivo cancellazione'
      CaptionOptions.Layout = clTop
      Control = cxLookupMotivo
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited csEZKeys1: TcsEZKeys
    KeyPreview = True
    Left = 132
    Top = 120
  end
  inherited PopupMenuPersonalizza: TPopupMenu
    Left = 252
    Top = 248
  end
  object ActionList1: TActionList
    Images = FDMCommon.cxImageNavigator16
    Left = 232
    Top = 120
    object Conferma: TAction
      Caption = 'Conferma'
      ImageIndex = 9
      OnExecute = ConfermaExecute
      OnUpdate = ConfermaUpdate
    end
  end
  object qryUser: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = qryUserBeforeQuery
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'SELECT'
      ' U.PASSWORD as USER_PWD ,'
      ' U.PKPERSONALE as USER_ID,'
      ' PR.SERVIZI_FK,'
      ' U.Mod_Password as LAST_PWD_CHANGE ,'
      ' U.data_fine as EXPIRATION_DATE'
      'FROM  Personale U, persxrep pr'
      'WHERE U.PASSWORD = :USER_PWD'
      'and u.pkpersonale = pr.personale_fk'
      'and pr.reparti_fk = :reparti_fk')
    Params = <
      item
        Name = 'USER_PWD'
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
    Left = 84
    Top = 124
    FastFields = (
      'USER_PWD,1,30'
      'USER_ID,3,0'
      'SERVIZI_FK,3,0'
      'LAST_PWD_CHANGE,11,0'
      'EXPIRATION_DATE,11,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qryUserUSER_PWD: TStringField
      FieldName = 'USER_PWD'
      Size = 30
    end
    object qryUserUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object qryUserLAST_PWD_CHANGE: TDateTimeField
      FieldName = 'LAST_PWD_CHANGE'
    end
    object qryUserEXPIRATION_DATE: TDateTimeField
      FieldName = 'EXPIRATION_DATE'
    end
    object qryUserSERVIZI_FK: TIntegerField
      FieldName = 'SERVIZI_FK'
    end
  end
  object qMotivi: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qMotiviBeforeQuery
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'statovisita,'
      'descrizione'
      'from wtabstatovisita'
      'where statovisita between 2000 and 2999 and flag_tipo=1'
      'and lingua=:lingua')
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
    Left = 116
    Top = 184
    FastFields = (
      'STATOVISITA,3,0'
      'DESCRIZIONE,1,30')
    FMultiTable = ()
    UpdateMethod = umManual
    object qMotiviSTATOVISITA: TIntegerField
      DisplayLabel = 'Codice'
      FieldName = 'STATOVISITA'
    end
    object qMotiviDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 30
    end
  end
  object sqMotivi: TDataSource
    DataSet = qMotivi
    Left = 200
    Top = 196
  end
  object DatiPaziente: TAstaClientDataSet
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
      't.pktriage,'
      'a.NOMINATIVO as Nome_paziente,'
      'a.DATA_NASCITA,'
      's.descrizione as Diagnostica'
      'from triage t'
      'join impegnative i on i.pkimpegnative = t.impegnative_fk'
      'join assistibili a on a.PKASSISTIBILI = i.ASSISTIBILI_FK'
      'join servizi s on s.pkservizi = t.diagnostica_fk'
      'where t.pktriage = :pktriage'
      ' ')
    Params = <
      item
        Name = 'pktriage'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 196
    Top = 100
    FastFields = (
      'PKTRIAGE,3,0'
      'NOME_PAZIENTE,1,122'
      'DATA_NASCITA,11,0'
      'DIAGNOSTICA,1,100')
    FMultiTable = ()
    UpdateMethod = umManual
    object DatiPazientePKTRIAGE: TIntegerField
      FieldName = 'PKTRIAGE'
    end
    object DatiPazienteNOME_PAZIENTE: TStringField
      FieldName = 'NOME_PAZIENTE'
      Size = 86
    end
    object DatiPazienteDIAGNOSTICA: TStringField
      FieldName = 'DIAGNOSTICA'
      Size = 100
    end
    object DatiPazienteDATA_NASCITA: TDateTimeField
      FieldName = 'DATA_NASCITA'
    end
  end
  object sDatiPaziente: TDataSource
    DataSet = DatiPaziente
    Left = 208
    Top = 152
  end
end
