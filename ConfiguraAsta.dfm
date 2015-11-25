inherited FConfiguraAsta: TFConfiguraAsta
  Left = 339
  Top = 235
  ActiveControl = cxAsta1
  Caption = 'Configurazione connessioni...'
  ClientHeight = 269
  ClientWidth = 405
  PixelsPerInch = 96
  TextHeight = 14
  inherited cxGroupBox1: TcxGroupBox
    Top = 219
    Width = 405
    inherited btSalva: TcxButton
      ModalResult = 1
    end
    inherited cxPersonalizza: TcxButton
      Left = 368
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 405
    Height = 219
    Align = alClient
    ParentBackground = True
    TabOrder = 1
    LayoutLookAndFeel = FDMCommon.dxLayoutSkinLookAndFeel1
    object cxAsta1: TcxTextEdit
      Left = 194
      Top = 10
      
      Style.LookAndFeel.SkinName = 'UserSkin'
      
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 0
      Width = 176
    end
    object cxPorta1: TcxSpinEdit
      Left = 194
      Top = 47
      
      Style.LookAndFeel.SkinName = 'UserSkin'
      
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 1
      Width = 84
    end
    object cxAsta2: TcxTextEdit
      Left = 194
      Top = 84
      
      Style.LookAndFeel.SkinName = 'UserSkin'
      
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 2
      Width = 176
    end
    object cxPorta2: TcxSpinEdit
      Left = 194
      Top = 121
      
      Style.LookAndFeel.SkinName = 'UserSkin'
      
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 3
      Width = 84
    end
    object cxUpdate: TcxTextEdit
      Left = 194
      Top = 158
      
      Style.LookAndFeel.SkinName = 'UserSkin'
      
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 4
      Text = 'cxUpdate'
      Width = 176
    end
    object cxCompressione: TcxCheckBox
      Left = 194
      Top = 195
      
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 5
      Width = 26
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
      CaptionOptions.Text = 'Indirizzo ASTA Server primario'
      Control = cxAsta1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Porta ASTA Server primario'
      Control = cxPorta1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Indirizzo ASTA Server secondario'
      Control = cxAsta2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Porta ASTA Server secondario'
      Control = cxPorta2
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Server per update'
      Control = cxUpdate
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Compressione'
      Control = cxCompressione
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  inherited csEZKeys1: TcsEZKeys
    Left = 284
    Top = 36
  end
end