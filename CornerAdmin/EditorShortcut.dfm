inherited FEditorShortcut: TFEditorShortcut
  Left = 350
  Top = 217
  ActiveControl = hkyShortCut
  Caption = 'Selezione shortcut'
  ClientHeight = 158
  ClientWidth = 322
  PixelsPerInch = 96
  TextHeight = 24
  inherited cxGroupBox1: TcxGroupBox
    Top = 108
    Width = 322
    inherited btSalva: TcxButton
      ModalResult = 1
    end
    inherited cxPersonalizza: TcxButton
      Left = 287
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 322
    Height = 108
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = FDMCommon.dxLayoutSkinLookAndFeel1
    object hkyShortCut: THotKey
      Left = 11
      Top = 44
      Width = 283
      Height = 31
      AutoSize = False
      HotKey = 0
      Modifiers = []
      TabOrder = 0
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
      CaptionOptions.Text = 'ShortCut'
      CaptionOptions.Layout = clTop
      Control = hkyShortCut
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited csEZKeys1: TcsEZKeys
    Left = 28
    Top = 332
  end
end
