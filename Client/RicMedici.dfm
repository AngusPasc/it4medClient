inherited FRicMedici: TFRicMedici
  Caption = 'Ricerca medico'
  ClientHeight = 432
  ClientWidth = 714
  PixelsPerInch = 96
  TextHeight = 24
  inherited cxGroupBox1: TcxGroupBox
    Top = 382
    Width = 714
    inherited btConferma: TcxButton
      Top = 6
    end
    inherited btAnnulla: TcxButton
      Left = 165
      Top = 6
    end
    object btnModifica: TcxButton [2]
      Left = 456
      Top = 6
      Width = 120
      Height = 41
      Action = Modifica
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Source Sans Pro'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      LookAndFeel.Kind = lfUltraFlat
    end
    object btNuovoItaliano: TcxButton [3]
      Left = 316
      Top = 6
      Width = 120
      Height = 41
      Action = NuovoMedico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Source Sans Pro'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      LookAndFeel.Kind = lfUltraFlat
    end
    inherited cxPersonalizza: TcxButton
      Left = 677
    end
  end
  inherited cxGrid1: TcxGrid
    Top = 184
    Width = 714
    Height = 198
    inherited resultgrid: TcxGridDBTableView
      DataController.KeyFieldNames = 'CODICE'
      object resultgridNOMINATIVO: TcxGridDBColumn
        DataBinding.FieldName = 'NOMINATIVO'
        SortIndex = 0
        SortOrder = soAscending
        Width = 525
      end
      object resultgridCODICE: TcxGridDBColumn
        DataBinding.FieldName = 'CODICE'
        Options.Filtering = False
        Width = 107
      end
    end
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 30
    Width = 714
    Height = 154
    Align = alTop
    TabOrder = 6
    AutoSize = True
    LayoutLookAndFeel = FDMCommon.dxLayoutSkinLookAndFeel1
    object edDescrizione: TcxDBMaskEdit
      Left = 113
      Top = 11
      AutoSize = False
      DataBinding.DataField = 'NOMINATIVO'
      DataBinding.DataSource = sRicerca
      Properties.CharCase = ecUpperCase
      Style.HotTrack = False
      TabOrder = 0
      OnKeyDown = edDescrizioneKeyDown
      Height = 31
      Width = 433
    end
    object edCap: TcxDBMaskEdit
      Left = 113
      Top = 52
      AutoSize = False
      DataBinding.DataField = 'CODICE'
      DataBinding.DataSource = sRicerca
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 0
      Style.HotTrack = False
      TabOrder = 1
      OnKeyDown = edCapKeyDown
      Height = 31
      Width = 228
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Nominativo'
      Control = edDescrizione
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Codice'
      Control = edCap
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited QRicerca: TAstaClientDataSet
    Active = True
    UpdateTableName = 'MEDICI_BASE'
    PrimeFields.Strings = (
      'CODICE')
    SQL.Strings = (
      'select'
      'codice, '
      'nominativo,'
      'data_inizio,'
      'data_fine'
      'from medici_base'
      'where'
      '(data_inizio is null or data_inizio <= SYSDATE) and'
      '(data_fine is null or SYSDATE < data_fine)'
      ':statement_prova')
    Params = <
      item
        Name = 'statement_prova'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = '# and 1=2'
      end>
    QBEDefinition.QBEFieldDefs = {
      030000000400000006000000434F4449434501000000000A0000004E4F4D494E
      415449564F01010100000B000000444154415F494E495A494F01000000000900
      0000444154415F46494E450100000000}
    Left = 268
    Top = 296
    FastFields = (
      'CODICE,1,16'
      'NOMINATIVO,1,50'
      'DATA_INIZIO,11,0'
      'DATA_FINE,11,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object QRicercaNOMINATIVO: TStringField
      DisplayLabel = 'Nominativo'
      FieldName = 'NOMINATIVO'
      Required = True
      Size = 50
    end
    object QRicercaDATA_INIZIO: TDateTimeField
      DisplayLabel = 'Inizio attivit'#224
      FieldName = 'DATA_INIZIO'
    end
    object QRicercaDATA_FINE: TDateTimeField
      DisplayLabel = 'Fine attivit'#224
      FieldName = 'DATA_FINE'
    end
    object QRicercaCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 16
    end
  end
  inherited ActionList1: TActionList
    object Modifica: TAction
      Caption = 'Modifica'
      Hint = 'Modifica scheda medico'
      ImageIndex = 8
      ShortCut = 118
      OnExecute = ModificaExecute
      OnUpdate = ModificaUpdate
    end
    object NuovoMedico: TAction
      Caption = 'Nuovo'
      Hint = 'Inserisci nuovo medico'
      ImageIndex = 6
      ShortCut = 114
      OnExecute = NuovoMedicoExecute
      OnUpdate = NuovoMedicoUpdate
    end
  end
  inherited dxBarManager1: TdxBarManager
    Scaled = False
    ImageOptions.Images = FDMCommon.cxImageNavigator16
    DockControlHeights = (
      0
      0
      30
      0)
    inherited dxBarManager1Bar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
    end
    inherited dxBarButton1: TdxBarButton
      PaintStyle = psCaptionGlyph
    end
    inherited dxBarButton2: TdxBarButton
      PaintStyle = psCaptionGlyph
    end
  end
end
