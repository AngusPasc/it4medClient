inherited FEditVerificaStampe: TFEditVerificaStampe
  Left = 497
  Top = 24
  ActiveControl = cxDBSpinEdit1
  Caption = 'Modifica selezione stampe'
  ClientHeight = 776
  ClientWidth = 824
  PixelsPerInch = 96
  TextHeight = 24
  inherited cxGroupBox1: TcxGroupBox
    Top = 726
    Width = 824
    inherited btSalva: TcxButton
      Action = aConferma
    end
    inherited cxPersonalizza: TcxButton
      Left = 789
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 824
    Height = 726
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = FDMCommon.dxLayoutSkinLookAndFeel1
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 75
      Top = 11
      DataBinding.DataField = 'PKVERIFICASTAMPE'
      DataBinding.DataSource = sqVerificaStampe
      Properties.MaxValue = 99.000000000000000000
      Properties.MinValue = 10.000000000000000000
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 0
      Width = 79
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 75
      Top = 53
      DataBinding.DataField = 'NOMESTAMPA'
      DataBinding.DataSource = sqVerificaStampe
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 1
      Width = 313
    end
    object cxDBSTMT: TcxDBMemo
      Left = 11
      Top = 128
      DataBinding.DataField = 'STMT'
      DataBinding.DataSource = sqVerificaStampe
      Properties.ScrollBars = ssVertical
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 2
      Height = 410
      Width = 780
    end
    object cxButton1: TcxButton
      Left = 21
      Top = 657
      Width = 204
      Height = 38
      Action = aTestControllo
      Caption = 'Test'
      TabOrder = 4
      LookAndFeel.Kind = lfUltraFlat
    end
    object cxCheckSelezione: TcxCheckBox
      Left = 496
      Top = 615
      RepositoryItem = FDMCommon.edrepSINO
      Properties.ReadOnly = True
      State = cbsGrayed
      Style.HotTrack = False
      TabOrder = 6
      Width = 58
    end
    object cxNumAcc: TcxMaskEdit
      Left = 21
      Top = 615
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 3
      Width = 207
    end
    object cxLookupMetodica: TcxLookupComboBox
      Left = 238
      Top = 615
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'PKGRESAMI'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'GRESAMI'
        end
        item
          Width = 200
          FieldName = 'DESCRIZIONE'
        end>
      Properties.ListSource = sGruppoEsami
      Style.HotTrack = False
      TabOrder = 5
      Width = 248
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
      CaptionOptions.Text = 'Nome'
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Statement controllo'
      CaptionOptions.Layout = clTop
      Control = cxDBSTMT
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Test'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Num. Accettazione'
      CaptionOptions.Layout = clTop
      Control = cxNumAcc
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Metodica'
      CaptionOptions.Layout = clTop
      Control = cxLookupMetodica
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Selezione'
      CaptionOptions.Layout = clTop
      Control = cxCheckSelezione
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited csEZKeys1: TcsEZKeys
    Left = 320
    Top = 12
  end
  inherited PopupMenuPersonalizza: TPopupMenu
    Left = 336
    Top = 204
  end
  object sqVerificaStampe: TDataSource
    Left = 344
    Top = 60
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
        Name = 'CODST'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'PKI'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'XGRESAMI'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'SELEZIONA'
        ParamType = ptInputOutput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end>
    StoredProcedure = 'RIS.PRVERIFICASTAMPE'
    QBEMode = False
    Left = 336
    Top = 128
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object GruppoEsami: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
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
    Left = 50
    Top = 133
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
    Left = 124
    Top = 180
  end
end
