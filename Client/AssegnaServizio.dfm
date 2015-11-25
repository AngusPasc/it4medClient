inherited FAssegnaServizio: TFAssegnaServizio
  Left = 535
  Top = 309
  ActiveControl = cxDBLookupComboBox1
  Caption = 'Assegna Servizio...'
  ClientHeight = 275
  ClientWidth = 568
  PixelsPerInch = 96
  TextHeight = 24
  inherited cxGroupBox1: TcxGroupBox
    Top = 225
    Width = 568
    inherited btSalva: TcxButton
      Action = aConferma
    end
    inherited btAnnulla: TcxButton
      ModalResult = 0
      OnClick = btAnnullaClick
    end
    inherited cxPersonalizza: TcxButton
      Left = 533
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 568
    Height = 225
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = FDMCommon.dxLayoutSkinLookAndFeel1
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 11
      Top = 44
      DataBinding.DataField = 'SERVIZI_FK'
      DataBinding.DataSource = sQyPreno
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'PKSERVIZI'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          Width = 300
          FieldName = 'DESCRIZIONE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = sServizi
      Style.HotTrack = False
      TabOrder = 0
      Width = 444
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Servizio'
      CaptionOptions.Layout = clTop
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited csEZKeys1: TcsEZKeys
    Left = 68
    Top = 68
  end
  object LkServizi: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = LkServiziBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'pkservizi,'
      'descrizione'
      'from servizi'
      'where reparti_fk = :reparti_fk'
      'and tipo_servizio='#39'I'#39
      'and (data_fine is null or data_fine>sysdate)')
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
    Left = 84
    Top = 8
    FastFields = (
      'PKSERVIZI,3,0'
      'DESCRIZIONE,1,100')
    FMultiTable = ()
    UpdateMethod = umManual
    object LkServiziPKSERVIZI: TIntegerField
      FieldName = 'PKSERVIZI'
    end
    object LkServiziDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
  end
  object sServizi: TDataSource
    DataSet = LkServizi
    Left = 100
    Top = 52
  end
  object sQyPreno: TDataSource
    Left = 204
    Top = 96
  end
  object ActionList1: TActionList
    Images = FDMCommon.cxImageNavigator16
    Left = 160
    Top = 24
    object aConferma: TAction
      Caption = 'Conferma'
      ImageIndex = 9
      OnExecute = aConfermaExecute
      OnUpdate = aConfermaUpdate
    end
  end
end
