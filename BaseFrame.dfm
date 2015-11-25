object SyFrame: TSyFrame
  Left = 0
  Top = 0
  Width = 792
  Height = 508
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
    OnLoadFromStream = rsXMLData1LoadFromStream
    OnSaveToStream = rsXMLData1SaveToStream
    Left = 115
    Top = 66
  end
end
