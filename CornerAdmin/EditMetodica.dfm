inherited FEditMetodica: TFEditMetodica
  ActiveControl = cxDBMaskEdit1
  Caption = 'Scheda Metodica'
  ClientHeight = 347
  ClientWidth = 545
  PixelsPerInch = 96
  TextHeight = 24
  inherited cxGroupBox1: TcxGroupBox
    Top = 297
    Width = 545
    inherited btSalva: TcxButton
      Action = aConferma
    end
    inherited cxPersonalizza: TcxButton
      Left = 510
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 545
    Height = 297
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = FDMCommon.dxLayoutSkinLookAndFeel1
    object cxDBMaskEdit1: TcxDBMaskEdit
      Left = 124
      Top = 11
      AutoSize = False
      DataBinding.DataField = 'GRESAMI'
      DataBinding.DataSource = sMetodiche
      Style.HotTrack = False
      TabOrder = 0
      Height = 31
      Width = 154
    end
    object cxDBMaskEdit2: TcxDBMaskEdit
      Left = 124
      Top = 52
      AutoSize = False
      DataBinding.DataField = 'DESCRIZIONE'
      DataBinding.DataSource = sMetodiche
      Style.HotTrack = False
      TabOrder = 1
      Height = 31
      Width = 380
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 124
      Top = 93
      AutoSize = False
      DataBinding.DataField = 'PESO_MEDICO'
      DataBinding.DataSource = sMetodiche
      Properties.BeepOnError = True
      Properties.DisplayFormat = '##.00'
      Properties.EditFormat = '##.00'
      Properties.ValueType = vtFloat
      Style.HotTrack = False
      TabOrder = 2
      Height = 31
      Width = 154
    end
    object cxDBSpinEdit2: TcxDBSpinEdit
      Left = 124
      Top = 134
      AutoSize = False
      DataBinding.DataField = 'PESO_TECNICO'
      DataBinding.DataSource = sMetodiche
      Properties.BeepOnError = True
      Properties.DisplayFormat = '##.00'
      Properties.EditFormat = '##.00'
      Properties.ValueType = vtFloat
      Style.HotTrack = False
      TabOrder = 3
      Height = 31
      Width = 154
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 124
      Top = 175
      AutoSize = False
      DataBinding.DataField = 'TIPO_MODALITA'
      DataBinding.DataSource = sMetodiche
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'TIPO_MODALITA'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          Width = 64
          FieldName = 'TIPO_MODALITA'
        end
        item
          Width = 200
          FieldName = 'DESCRIZIONE'
        end>
      Properties.ListSource = sTipoModalita
      Style.HotTrack = False
      TabOrder = 4
      Height = 31
      Width = 151
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 124
      Top = 216
      AutoSize = False
      DataBinding.DataField = 'DATA_FINE'
      DataBinding.DataSource = sMetodiche
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 5
      Height = 31
      Width = 207
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
      CaptionOptions.Text = 'Metodica'
      Control = cxDBMaskEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Descrizione'
      Control = cxDBMaskEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Peso Medico'
      Control = cxDBSpinEdit1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Peso Tecnico'
      Control = cxDBSpinEdit2
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Tipo'
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Fine attivit'#224
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  inherited csEZKeys1: TcsEZKeys
    Left = 196
    Top = 44
  end
  object sMetodiche: TDataSource
    Left = 240
    Top = 4
  end
  object sTipoModalita: TDataSource
    Left = 260
    Top = 80
  end
  object ActionList1: TActionList
    Images = FDMCommon.cxImageNavigator16
    Left = 216
    Top = 116
    object aConferma: TAction
      Caption = 'Conferma'
      ImageIndex = 9
      OnExecute = aConfermaExecute
    end
  end
end
