inherited FRicercaTessera: TFRicercaTessera
  Left = 763
  Top = 402
  ActiveControl = btSalva
  Caption = 'Ricerca con Tessera Sanitaria'
  ClientHeight = 209
  ClientWidth = 457
  KeyPreview = True
  OnKeyPress = BaseFormKeyPress
  HandleNavigationKeys = False
  NavigationKeys = []
  PixelsPerInch = 96
  TextHeight = 24
  inherited cxGroupBox1: TcxGroupBox
    Top = 159
    Width = 457
    inherited btSalva: TcxButton
      Action = aConferma
    end
    inherited cxPersonalizza: TcxButton
      Left = 422
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 457
    Height = 159
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = FDMCommon.dxLayoutSkinLookAndFeel1
    object cxCodFisc: TcxMaskEdit
      Left = 11
      Top = 44
      AutoSize = False
      Properties.CharCase = ecUpperCase
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '[A-Z0-9]+'
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 0
      Height = 53
      Width = 363
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Codice Fiscale'
      CaptionOptions.Layout = clTop
      Control = cxCodFisc
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited csEZKeys1: TcsEZKeys
    HandleNavigationKeys = False
    KeyPreview = True
    NavigationKeys = []
    Left = 152
    Top = 24
  end
  object ActionList1: TActionList
    Images = FDMCommon.cxImageNavigator16
    Left = 180
    object aConferma: TAction
      Caption = 'Conferma'
      ImageIndex = 9
      OnExecute = aConfermaExecute
      OnUpdate = aConfermaUpdate
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 216
    Top = 50
  end
end
