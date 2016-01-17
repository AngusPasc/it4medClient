inherited FSelezSpec: TFSelezSpec
  Left = 524
  Top = 25
  Caption = 'Selezione specificazioni'
  ClientHeight = 846
  ClientWidth = 781
  PixelsPerInch = 96
  TextHeight = 24
  inherited cxGroupBox1: TcxGroupBox
    Top = 796
    Width = 781
    inherited btSalva: TcxButton
      Action = aConferma
    end
    inherited btAnnulla: TcxButton
      Action = aAnnulla
      ModalResult = 0
    end
    inherited cxPersonalizza: TcxButton
      Left = 746
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 781
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object cxDBLabel1: TcxDBLabel
      Left = 24
      Top = 24
      DataBinding.DataField = 'CODICE'
      DataBinding.DataSource = sPrestazioni
      ParentFont = False
      Style.BorderStyle = ebsThick
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -23
      Style.Font.Name = 'Source Sans Pro'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 41
      Width = 121
    end
    object cxDBLabel2: TcxDBLabel
      Left = 176
      Top = 24
      DataBinding.DataField = 'DESCRIZIONE'
      DataBinding.DataSource = sPrestazioni
      ParentFont = False
      Style.BorderStyle = ebsThick
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -23
      Style.Font.Name = 'Source Sans Pro'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 41
      Width = 417
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 81
    Width = 781
    Height = 715
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object cxGrid6: TcxGrid
      Left = 0
      Top = 0
      Width = 781
      Height = 377
      Align = alTop
      TabOrder = 0
      RootLevelOptions.DetailTabsPosition = dtpTop
      object cxGridDBTableSpecxEsami: TcxGridDBTableView
        DragMode = dmAutomatic
        OnDblClick = cxGridDBTableSpecxEsamiDblClick
        OnDragDrop = cxGridDBTableSpecxEsamiDragDrop
        OnDragOver = cxGridDBTableSpecxEsamiDragOver
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = FDMCommon.cxImageNavigator16
        Navigator.Buttons.First.ImageIndex = 0
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.ImageIndex = 1
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.ImageIndex = 2
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.ImageIndex = 3
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.ImageIndex = 4
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.ImageIndex = 5
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.ImageIndex = 6
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.ImageIndex = 7
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.ImageIndex = 8
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.ImageIndex = 9
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.ImageIndex = 10
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        FindPanel.ApplyInputDelay = 500
        FindPanel.DisplayMode = fpdmAlways
        FindPanel.ShowCloseButton = False
        FindPanel.UseExtendedSyntax = True
        DataController.DataSource = sSpecxEsami
        DataController.KeyFieldNames = 'PKSPECXCODRAD'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ShowEditButtons = gsebForFocusedRecord
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridDBTableSpecxEsamiPKSPECXCODRAD: TcxGridDBColumn
          DataBinding.FieldName = 'PKSPECXCODRAD'
          Visible = False
          Options.FilteringWithFindPanel = False
        end
        object cxGridDBTableSpecxEsamiCODICIRAD_FK: TcxGridDBColumn
          DataBinding.FieldName = 'CODICIRAD_FK'
          Visible = False
          Options.FilteringWithFindPanel = False
        end
        object cxGridDBTableSpecxEsamiSPECIFICAZIONI_FK: TcxGridDBColumn
          DataBinding.FieldName = 'SPECIFICAZIONI_FK'
          Visible = False
          Options.FilteringWithFindPanel = False
        end
        object cxGridDBTableSpecxEsamiIDSPECIFICAZIONI: TcxGridDBColumn
          DataBinding.FieldName = 'IDSPECIFICAZIONI'
          SortIndex = 0
          SortOrder = soAscending
          Width = 125
        end
        object cxGridDBTableSpecxEsamiDESCRIZIONE: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRIZIONE'
          Width = 537
        end
        object cxGridDBTableSpecxEsamiPREZZO: TcxGridDBColumn
          DataBinding.FieldName = 'PREZZO'
          RepositoryItem = FDMCommon.edrepValuta
          Options.FilteringWithFindPanel = False
          Width = 105
        end
        object cxGridDBTableSpecxEsamiCOSTO: TcxGridDBColumn
          DataBinding.FieldName = 'COSTO'
          RepositoryItem = FDMCommon.edrepValuta
          Visible = False
          Options.FilteringWithFindPanel = False
        end
      end
      object cxGrid6Level1: TcxGridLevel
        Caption = 'Disponibili'
        GridView = cxGridDBTableSpecxEsami
      end
    end
    object cxSplitter2: TcxSplitter
      Left = 0
      Top = 377
      Width = 781
      Height = 4
      AlignSplitter = salTop
      Control = cxGrid6
    end
    object cxGrid7: TcxGrid
      Left = 0
      Top = 381
      Width = 781
      Height = 334
      Align = alClient
      TabOrder = 2
      RootLevelOptions.DetailTabsPosition = dtpTop
      object cxGridDBTableSpecxPrest: TcxGridDBTableView
        DragMode = dmAutomatic
        OnDragDrop = cxGridDBTableSpecxPrestDragDrop
        OnDragOver = cxGridDBTableSpecxPrestDragOver
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = FDMCommon.cxImageNavigator16
        Navigator.Buttons.First.ImageIndex = 0
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.ImageIndex = 1
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.ImageIndex = 2
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.ImageIndex = 3
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.ImageIndex = 4
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.ImageIndex = 5
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.ImageIndex = 6
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.ImageIndex = 7
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.ImageIndex = 8
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.ImageIndex = 9
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.ImageIndex = 10
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = sSpecxPrest
        DataController.KeyFieldNames = 'IDSPECIFICAZIONI'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = #8364' ,0.00;-'#8364' ,0.00'
            Kind = skSum
            FieldName = 'PREZZO'
            Column = cxGridDBTableSpecxPrestPREZZO
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsData.Appending = True
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.ShowEditButtons = gsebForFocusedRecord
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridDBTableSpecxPrestPKSPECXCODRAD: TcxGridDBColumn
          DataBinding.FieldName = 'PKSPECXCODRAD'
          Visible = False
        end
        object cxGridDBTableSpecxPrestCODICIRAD_FK: TcxGridDBColumn
          DataBinding.FieldName = 'CODICIRAD_FK'
          Visible = False
        end
        object cxGridDBTableSpecxPrestSPECIFICAZIONI_FK: TcxGridDBColumn
          DataBinding.FieldName = 'SPECIFICAZIONI_FK'
          Visible = False
        end
        object cxGridDBTableSpecxPrestIDSPECIFICAZIONI: TcxGridDBColumn
          DataBinding.FieldName = 'IDSPECIFICAZIONI'
          SortIndex = 0
          SortOrder = soAscending
          Width = 96
        end
        object cxGridDBTableSpecxPrestDESCRIZIONE: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRIZIONE'
          Width = 412
        end
        object cxGridDBTableSpecxPrestPREZZO: TcxGridDBColumn
          DataBinding.FieldName = 'PREZZO'
          RepositoryItem = FDMCommon.edrepValuta
          Width = 81
        end
        object cxGridDBTableSpecxPrestCOSTO: TcxGridDBColumn
          DataBinding.FieldName = 'COSTO'
          RepositoryItem = FDMCommon.edrepValuta
          Visible = False
          Width = 80
        end
      end
      object cxGrid7Level1: TcxGridLevel
        Caption = 'Selezionate'
        GridView = cxGridDBTableSpecxPrest
      end
    end
  end
  object sPrestazioni: TDataSource
    Left = 320
    Top = 120
  end
  object qSpecxEsami: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qSpecxEsamiBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'SPECXCODRAD'
    PrimeFields.Strings = (
      'PKSPECXCODRAD')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'sc.pkspecxcodrad, '
      'sc.codicirad_fk, '
      'sc.specificazioni_fk,'
      's.idspecificazioni, '
      's.descrizione,'
      's.prezzo,'
      's.costo'
      'from SPECXCODRAD sc'
      
        'join SPECIFICAZIONI s ON s.pkspecificazioni = sc.specificazioni_' +
        'fk'
      'where codicirad_fk=:codicirad_fk')
    Params = <
      item
        Name = 'codicirad_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    DirectModify = [tsyInsert, tsyUpdate, tsyDelete]
    QBEMode = False
    Left = 168
    Top = 208
    FastFields = (
      'PKSPECXCODRAD,3,0'
      'CODICIRAD_FK,3,0'
      'SPECIFICAZIONI_FK,3,0'
      'IDSPECIFICAZIONI,1,20'
      'DESCRIZIONE,1,100'
      'PREZZO,6,0'
      'COSTO,6,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qSpecxEsamiPKSPECXCODRAD: TIntegerField
      FieldName = 'PKSPECXCODRAD'
    end
    object qSpecxEsamiCODICIRAD_FK: TIntegerField
      FieldName = 'CODICIRAD_FK'
      Required = True
    end
    object qSpecxEsamiSPECIFICAZIONI_FK: TIntegerField
      FieldName = 'SPECIFICAZIONI_FK'
      Required = True
    end
    object qSpecxEsamiIDSPECIFICAZIONI: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'IDSPECIFICAZIONI'
    end
    object qSpecxEsamiDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object qSpecxEsamiPREZZO: TFloatField
      DisplayLabel = 'Listino'
      FieldName = 'PREZZO'
    end
    object qSpecxEsamiCOSTO: TFloatField
      DisplayLabel = 'Costo'
      FieldName = 'COSTO'
    end
  end
  object sSpecxEsami: TDataSource
    DataSet = qSpecxEsami
    Left = 216
    Top = 232
  end
  object sSpecxPrest: TDataSource
    Left = 416
    Top = 384
  end
  object ActionList1: TActionList
    Images = FDMCommon.cxImageNavigator16
    Left = 304
    Top = 273
    object aAnnulla: TAction
      Caption = 'Annulla'
      ImageIndex = 10
      OnExecute = aAnnullaExecute
    end
    object aConferma: TAction
      Caption = 'Conferma'
      ImageIndex = 9
      OnExecute = aConfermaExecute
      OnUpdate = aConfermaUpdate
    end
  end
end
