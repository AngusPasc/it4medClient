inherited FConsegnaRef: TFConsegnaRef
  Left = 841
  Top = 78
  ActiveControl = btSalva
  Caption = 'Consegna referto'
  ClientHeight = 566
  ClientWidth = 695
  PixelsPerInch = 96
  TextHeight = 24
  inherited cxGroupBox1: TcxGroupBox
    Top = 516
    Width = 695
    inherited btSalva: TcxButton
      Action = aConferma
    end
    inherited btAnnulla: TcxButton
      ModalResult = 0
      OnClick = btAnnullaClick
    end
    inherited cxPersonalizza: TcxButton
      Left = 660
      TabOrder = 3
    end
    object ksfcImageBtn1: TcxButton
      Left = 331
      Top = 4
      Width = 120
      Height = 41
      Action = aStampa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Source Sans Pro'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 2
      LookAndFeel.Kind = lfUltraFlat
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 695
    Height = 516
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = FDMCommon.dxLayoutSkinLookAndFeel1
    object cxDataConsegna: TcxDBDateEdit
      Left = 11
      Top = 266
      AutoSize = False
      DataBinding.DataField = 'DATA_CONSEGNA'
      DataBinding.DataSource = sConsegna
      Properties.DateButtons = [btnToday]
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 6
      Height = 31
      Width = 162
    end
    object cxDBRichMemo1: TcxDBMemo
      Left = 11
      Top = 340
      DataBinding.DataField = 'NOTE'
      DataBinding.DataSource = sConsegna
      Properties.ReadOnly = False
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 7
      OnEnter = cxDBRichMemo1Enter
      OnExit = cxDBRichMemo1Exit
      Height = 102
      Width = 651
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 11
      Top = 44
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'NOMINATIVO'
      DataBinding.DataSource = sConsegna
      Properties.ReadOnly = True
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 0
      Height = 31
      Width = 442
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 333
      Top = 118
      AutoSize = False
      DataBinding.DataField = 'TRIAGE_FK'
      DataBinding.DataSource = sConsegna
      Properties.ReadOnly = True
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 3
      Height = 31
      Width = 329
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 11
      Top = 118
      AutoSize = False
      DataBinding.DataField = 'PKIMPEGNATIVE'
      DataBinding.DataSource = sConsegna
      Properties.ReadOnly = True
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 2
      Height = 31
      Width = 312
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 11
      Top = 192
      AutoSize = False
      DataBinding.DataField = 'TES_IDENT'
      DataBinding.DataSource = sConsegna
      Properties.ReadOnly = True
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 4
      Height = 31
      Width = 171
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 192
      Top = 192
      AutoSize = False
      DataBinding.DataField = 'DESCESENZIONE'
      DataBinding.DataSource = sConsegna
      Properties.ReadOnly = True
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 5
      Height = 31
      Width = 470
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 463
      Top = 44
      AutoSize = False
      DataBinding.DataField = 'DATA_NASCITA'
      DataBinding.DataSource = sConsegna
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 1
      Height = 31
      Width = 200
    end
    object dxLayoutGroup1: TdxLayoutGroup
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
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Paziente'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Data nascita'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Nr. Accettazione'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Nr. Esame'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlEsenzione: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControlEsenzione
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Esenzione'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControlEsenzione
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.AlignVert = tavBottom
      CaptionOptions.Text = 'cxDBTextEdit5'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Data consegna'
      CaptionOptions.Layout = clTop
      Control = cxDataConsegna
      ControlOptions.AutoControlAreaAlignment = False
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Note'
      CaptionOptions.Layout = clTop
      Control = cxDBRichMemo1
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  inherited csEZKeys1: TcsEZKeys
    Left = 240
    Top = 4
  end
  object sConsegna: TDataSource
    DataSet = Consegna
    Left = 240
    Top = 144
  end
  object Consegna: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforePost = ConsegnaBeforePost
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'REFERTI'
    PrimeFields.Strings = (
      'PKREFERTI')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'rf.pkreferti,'
      'rt.triage_fk,'
      't.data_consegna,'
      't.user_id,'
      'rf.note,'
      'a.NOMINATIVO,'
      'a.DATA_NASCITA,'
      'i.pkimpegnative,'
      'i.tes_ident,'
      'e.descrizione as DescEsenzione'
      'from refxtriage rt'
      'join referti rf on rf.pkreferti = rt.referti_fk'
      'join triage t on t.pktriage = rt.triage_fk'
      'join impegnative i on i.pkimpegnative = t.impegnative_fk'
      'join assistibili a on a.pkassistibili = i.assistibili_fk'
      'left join esenzioni_ticket e on e.ident = i.tes_ident'
      'where rt.triage_fk=:pktriage'
      ' '
      ' '
      ' '
      ' '
      ' ')
    SQLOptions = [soFetchMemos, soFetchBlobs]
    Params = <
      item
        Name = 'pktriage'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end>
    UpdateObject = updConsegna
    QBEMode = False
    Left = 196
    Top = 204
    FastFields = (
      'PKREFERTI,3,0'
      'TRIAGE_FK,3,0'
      'DATA_CONSEGNA,11,0'
      'USER_ID,3,0'
      'NOTE,30,0'
      'NOMINATIVO,1,122'
      'DATA_NASCITA,11,0'
      'PKIMPEGNATIVE,3,0'
      'TES_IDENT,1,7'
      'DESCESENZIONE,1,100')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object ConsegnaDATA_CONSEGNA: TDateTimeField
      DisplayLabel = 'Data consegna'
      FieldName = 'DATA_CONSEGNA'
      Required = True
    end
    object ConsegnaNOTE: TBlobField
      FieldName = 'NOTE'
      BlobType = ftOraBlob
    end
    object ConsegnaPKREFERTI: TIntegerField
      FieldName = 'PKREFERTI'
    end
    object ConsegnaTRIAGE_FK: TIntegerField
      FieldName = 'TRIAGE_FK'
    end
    object ConsegnaNOMINATIVO: TStringField
      FieldName = 'NOMINATIVO'
      Size = 86
    end
    object ConsegnaPKIMPEGNATIVE: TIntegerField
      DisplayLabel = 'Nr.Accettazione'
      FieldName = 'PKIMPEGNATIVE'
    end
    object ConsegnaTES_IDENT: TStringField
      FieldName = 'TES_IDENT'
      Size = 7
    end
    object ConsegnaDESCESENZIONE: TStringField
      FieldName = 'DESCESENZIONE'
      Size = 60
    end
    object ConsegnaUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object ConsegnaDATA_NASCITA: TDateTimeField
      FieldName = 'DATA_NASCITA'
    end
  end
  object ActionList1: TActionList
    Images = FDMCommon.cxImageNavigator16
    Left = 244
    Top = 196
    object aStampa: TAction
      Caption = 'Stampa'
      Enabled = False
      Hint = 'Conferma consegna e stampa referto'
      ImageIndex = 11
      ShortCut = 123
      Visible = False
      OnExecute = aStampaExecute
      OnUpdate = aStampaUpdate
    end
    object aConferma: TAction
      Caption = 'Conferma'
      Hint = 'Conferma consegna referto'
      ImageIndex = 9
      OnExecute = aConfermaExecute
    end
  end
  object updConsegna: TAstaUpdateSQL
    ModifySQL.Strings = (
      'begin'
      ''
      '  update triage t'
      '  set data_consegna = :data_consegna,'
      '  user_id = :user_id,'
      '  statovisita = 190'
      '  where pktriage = :triage_fk;'
      ''
      '  update referti'
      '  set note = empty_blob()'
      '  where pkreferti = :pkreferti'
      '  returning note into :note;'
      ''
      'end;'
      '')
    Left = 180
    Top = 148
  end
end
