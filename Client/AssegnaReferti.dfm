inherited FAssegnaReferti: TFAssegnaReferti
  Left = 453
  Top = 249
  ActiveControl = cxMedFirma
  Caption = 'Assegnazione referti'
  ClientHeight = 249
  ClientWidth = 566
  PixelsPerInch = 96
  TextHeight = 24
  inherited cxGroupBox1: TcxGroupBox
    Top = 199
    Width = 566
    inherited btSalva: TcxButton
      Action = aConferma
    end
    inherited cxPersonalizza: TcxButton
      Left = 531
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 566
    Height = 199
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = FDMCommon.dxLayoutSkinLookAndFeel1
    object cxMedFirma: TcxLookupComboBox
      Left = 11
      Top = 44
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'PKPERSONALE'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          Width = 150
          FieldName = 'NOMINATIVO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = sAssegnaReferti
      Style.HotTrack = False
      TabOrder = 0
      Width = 383
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
      CaptionOptions.Text = 'Assegna referti a...'
      CaptionOptions.Layout = clTop
      Control = cxMedFirma
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited csEZKeys1: TcsEZKeys
    Left = 192
    Top = 4
  end
  inherited PopupMenuPersonalizza: TPopupMenu
    Left = 364
    Top = 120
  end
  object sAssegnaReferti: TDataSource
    DataSet = FDMCommon.AssegnaReferti
    Left = 148
    Top = 8
  end
  object ActionList1: TActionList
    Images = FDMCommon.cxImageNavigator16
    Left = 84
    Top = 8
    object aConferma: TAction
      Caption = 'Conferma'
      ImageIndex = 9
      OnExecute = aConfermaExecute
      OnUpdate = aConfermaUpdate
    end
  end
end
