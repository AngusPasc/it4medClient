inherited FEditControlli: TFEditControlli
  Left = 487
  Top = 0
  ActiveControl = cxDBSpinEdit1
  Caption = 'Modifica controllo'
  ClientHeight = 785
  ClientWidth = 674
  PixelsPerInch = 96
  TextHeight = 24
  inherited cxGroupBox1: TcxGroupBox
    Top = 735
    Width = 674
    inherited btSalva: TcxButton
      Action = aConferma
    end
    inherited cxPersonalizza: TcxButton
      Left = 639
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 674
    Height = 735
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = FDMCommon.dxLayoutSkinLookAndFeel1
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 84
      Top = 11
      AutoSize = False
      DataBinding.DataField = 'PKTIPOERRORI'
      DataBinding.DataSource = sControlli
      Properties.MaxValue = 99.000000000000000000
      Properties.MinValue = 10.000000000000000000
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 0
      Height = 31
      Width = 79
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 84
      Top = 52
      AutoSize = False
      DataBinding.DataField = 'DESCRIZIONE'
      DataBinding.DataSource = sControlli
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 1
      Height = 31
      Width = 314
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 84
      Top = 93
      AutoSize = False
      DataBinding.DataField = 'EMAIL_OBJECT'
      DataBinding.DataSource = sControlli
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 2
      Height = 31
      Width = 314
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 84
      Top = 134
      RepositoryItem = FDMCommon.edrepSINO
      AutoSize = False
      DataBinding.DataField = 'FLAG_SEND'
      DataBinding.DataSource = sControlli
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 3
      Height = 53
      Width = 44
    end
    object cxDBSTMT: TcxDBMemo
      Left = 11
      Top = 230
      DataBinding.DataField = 'STMT'
      DataBinding.DataSource = sControlli
      Properties.ScrollBars = ssVertical
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 4
      Height = 107
      Width = 648
    end
    object cxButton1: TcxButton
      Left = 11
      Top = 347
      Width = 184
      Height = 31
      Action = aTestControllo
      Caption = 'Test'
      TabOrder = 5
      LookAndFeel.Kind = lfUltraFlat
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 11
      Top = 421
      AutoSize = False
      DataBinding.DataField = 'FLAG_ERR'
      DataBinding.DataSource = sControlli
      Properties.Images = FDMCommon.imIcone
      Properties.Items = <
        item
          Description = 'Ok'
          ImageIndex = 40
          Value = 0
        end
        item
          Description = 'Errore'
          ImageIndex = 24
          Value = 1
        end>
      Properties.ReadOnly = True
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 6
      Height = 31
      Width = 199
    end
    object cxDBSpinEdit2: TcxDBSpinEdit
      Left = 220
      Top = 421
      AutoSize = False
      DataBinding.DataField = 'EXEC_TIME'
      DataBinding.DataSource = sControlli
      Properties.ReadOnly = True
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 7
      Height = 31
      Width = 180
    end
    object cxDBMemo1: TcxDBMemo
      Left = 11
      Top = 644
      DataBinding.DataField = 'DESCR_ERR'
      DataBinding.DataSource = sControlli
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 9
      Height = 69
      Width = 648
    end
    object cxDBUPD: TcxDBMemo
      Left = 11
      Top = 495
      DataBinding.DataField = 'UPD'
      DataBinding.DataSource = sControlli
      Properties.ScrollBars = ssVertical
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 8
      Height = 106
      Width = 648
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
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Codice'
      Control = cxDBSpinEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Classe'
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Oggetto'
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Attivo'
      Control = cxDBCheckBox1
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Statement controllo'
      CaptionOptions.Layout = clTop
      Control = cxDBSTMT
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
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
      CaptionOptions.Text = 'Stato'
      CaptionOptions.Layout = clTop
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Tempo esecuzione'
      CaptionOptions.Layout = clTop
      Control = cxDBSpinEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Statement Update'
      CaptionOptions.Layout = clTop
      Control = cxDBUPD
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Descrizione errore'
      CaptionOptions.Layout = clTop
      Control = cxDBMemo1
      ControlOptions.ShowBorder = False
      Index = 8
    end
  end
  inherited csEZKeys1: TcsEZKeys
    Left = 352
    Top = 4
  end
  object sControlli: TDataSource
    DataSet = Controlli
    Left = 344
    Top = 60
  end
  object Controlli: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'After Post'
    UpdateTableName = 'TIPO_ERRORI'
    PrimeFields.Strings = (
      'PKTIPOERRORI')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'pktipoerrori, '
      'descrizione, '
      'flag_send,'
      'email_object,'
      'exec_time,'
      'flag_err,'
      'descr_err,'
      'STMT,'
      'UPD'
      'from tipo_errori'
      'where pktipoerrori = :pktipoerrori')
    SQLOptions = [soFetchMemos, soFetchBlobs]
    Params = <
      item
        Name = 'pktipoerrori'
        ParamType = ptInput
        DataType = ftUnknown
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 280
    Top = 35
    FastFields = (
      'PKTIPOERRORI,3,0'
      'DESCRIZIONE,1,100'
      'FLAG_SEND,3,0'
      'EMAIL_OBJECT,1,100'
      'EXEC_TIME,3,0'
      'FLAG_ERR,3,0'
      'DESCR_ERR,1,4000'
      'STMT,1,4000'
      'UPD,1,4000')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object ControlliPKTIPOERRORI: TIntegerField
      DisplayLabel = 'Codice'
      FieldName = 'PKTIPOERRORI'
      Required = True
    end
    object ControlliDESCRIZIONE: TStringField
      DisplayLabel = 'Classe errore'
      FieldName = 'DESCRIZIONE'
      Required = True
      Size = 100
    end
    object ControlliFLAG_SEND: TIntegerField
      DisplayLabel = 'Attivo'
      FieldName = 'FLAG_SEND'
    end
    object ControlliEMAIL_OBJECT: TStringField
      DisplayLabel = 'Oggetto'
      FieldName = 'EMAIL_OBJECT'
      Size = 100
    end
    object ControlliEXEC_TIME: TIntegerField
      DisplayLabel = 'Tempo esec.'
      FieldName = 'EXEC_TIME'
    end
    object ControlliFLAG_ERR: TIntegerField
      DisplayLabel = 'Errore'
      FieldName = 'FLAG_ERR'
    end
    object ControlliSTMT: TStringField
      FieldName = 'STMT'
      Size = 4000
    end
    object ControlliUPD: TStringField
      FieldName = 'UPD'
      Size = 4000
    end
    object ControlliDESCR_ERR: TStringField
      FieldName = 'DESCR_ERR'
      Size = 4000
    end
  end
  object ActionList1: TActionList
    Left = 268
    Top = 88
    object aConferma: TAction
      Caption = 'Conferma'
      OnExecute = aConfermaExecute
      OnUpdate = aConfermaUpdate
    end
    object aTestControllo: TAction
      Caption = 'Test controllo'
      OnExecute = aTestControlloExecute
      OnUpdate = aTestControlloUpdate
    end
  end
  object TestControllo: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    Params = <
      item
        Name = 'PKTERR'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end>
    StoredProcedure = 'RIS.LANCIACONTROLLO'
    QBEMode = False
    Left = 304
    Top = 96
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
end
