object FBaseGrid: TFBaseGrid
  Left = 0
  Top = 0
  Width = 443
  Height = 273
  Align = alClient
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Source Sans Pro'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object rsStorage1: TrsStorage
    Active = False
    StorageData = rsXMLData1
    Options = []
    Left = 63
    Top = 58
  end
  object rsXMLData1: TrsXMLData
    FileDir = fdCustom
    InternalFileLoad = iflAlways
    Options = []
    Left = 115
    Top = 66
  end
end
