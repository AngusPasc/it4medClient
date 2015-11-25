inherited FBaseRefer: TFBaseRefer
  Left = 256
  Top = 72
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu, biMaximize]
  BorderWidth = 3
  Caption = 'Esame da refertare'
  ClientHeight = 730
  ClientWidth = 990
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = BaseFormCloseQuery
  OnHide = BaseFormHide
  PixelsPerInch = 96
  TextHeight = 24
  inherited cxGroupBox1: TcxGroupBox
    Top = 665
    Anchors = []
    Height = 65
    Width = 990
    inherited btSalva: TcxButton
      Top = 15
      Width = 154
      Action = Salva
    end
    inherited btAnnulla: TcxButton
      Left = 358
      Top = 15
      Width = 155
      Action = Annulla
      ModalResult = 0
    end
    inherited cxPersonalizza: TcxButton
      Left = 955
      Height = 55
      TabOrder = 11
    end
    object btPrivacy: TcxButton
      Left = 1490
      Top = 15
      Width = 154
      Height = 48
      Action = aPrivacy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Source Sans Pro'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      LookAndFeel.Kind = lfUltraFlat
    end
    object btEstemporaneo: TcxButton
      Left = 1320
      Top = 15
      Width = 154
      Height = 42
      Action = aEstemporaneo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Source Sans Pro'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      LookAndFeel.Kind = lfUltraFlat
    end
    object btEtichette: TcxButton
      Left = 1152
      Top = 15
      Width = 154
      Height = 42
      Action = RefertoProvvisorio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Source Sans Pro'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      LookAndFeel.Kind = lfUltraFlat
    end
    object fcImageBtn3: TcxButton
      Left = 982
      Top = 15
      Width = 155
      Height = 42
      Action = DaTrascrivere
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Source Sans Pro'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      LookAndFeel.Kind = lfUltraFlat
    end
    object btDoppiaFirma: TcxButton
      Left = 814
      Top = 15
      Width = 155
      Height = 42
      Action = aDoppiaFirma
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Source Sans Pro'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      LookAndFeel.Kind = lfUltraFlat
    end
    object fcImageBtn1: TcxButton
      Left = 646
      Top = 15
      Width = 155
      Height = 42
      Action = Referto
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Source Sans Pro'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      LookAndFeel.Kind = lfUltraFlat
    end
    object fcImageBtn4: TcxButton
      Left = 585
      Top = 15
      Width = 43
      Height = 42
      Action = Successivo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Source Sans Pro'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      LookAndFeel.Kind = lfUltraFlat
      OptionsImage.Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888800008888888888888888888800008888888888888888888800008888
        888FFF88888888880000888888744FFF88888888000088888874444FFF888888
        00008888887444444FFF88880000888888744444444FFF880000888888744444
        44444F8800008888887444444444488800008888887444444447888800008888
        8874444447888888000088888874444788888888000088888874478888888888
        0000888888778888888888880000888888888888888888880000888888888888
        8888888800008888888888888888888800008888888888888888888800008888
        88888888888888880000}
      OptionsImage.Layout = blGlyphRight
    end
    object fcImageBtn5: TcxButton
      Left = 530
      Top = 15
      Width = 43
      Height = 42
      Action = Precedente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Source Sans Pro'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      LookAndFeel.Kind = lfUltraFlat
      OptionsImage.Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888800008888888888888888888800008888888888888888888800008888
        8888888888FF88880000888888888888F44F888800008888888888F4444F8888
        000088888888F444444F88880000888888F44444444F888800008888F4444444
        444F88880000888874444444444F88880000888877744444444F888800008888
        88777444444F88880000888888887774444F88880000888888888877744F8888
        0000888888888888777888880000888888888888888888880000888888888888
        8888888800008888888888888888888800008888888888888888888800008888
        88888888888888880000}
    end
    object cxButton1: TcxButton
      Left = 189
      Top = 15
      Width = 155
      Height = 42
      Action = aSalvaContinua
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Source Sans Pro'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      LookAndFeel.Kind = lfUltraFlat
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 990
    Height = 665
    Align = alClient
    TabOrder = 1
    AutoSize = True
    LayoutLookAndFeel = FDMCommon.dxLayoutSkinLookAndFeel1
    object Nominativo: TcxDBLabel
      Left = 21
      Top = 78
      TabStop = False
      DataBinding.DataField = 'NOMINATIVO'
      DataBinding.DataSource = sImpegnativa
      ParentColor = False
      Style.HotTrack = False
      Height = 52
      Width = 382
    end
    object cxDBLabel4: TcxDBLabel
      Left = 667
      Top = 78
      TabStop = False
      DataBinding.DataField = 'COD_ESTERNO'
      DataBinding.DataSource = sImpegnativa
      ParentColor = False
      Style.HotTrack = False
      Height = 52
      Width = 158
    end
    object Reparto: TcxDBLabel
      Left = 21
      Top = 173
      TabStop = False
      DataBinding.DataField = 'REPARTO'
      DataBinding.DataSource = sImpegnativa
      ParentColor = False
      Style.HotTrack = False
      Height = 52
      Width = 382
    end
    object cxDBLabel3: TcxDBLabel
      Left = 693
      Top = 268
      TabStop = False
      DataBinding.DataField = 'MEDTELEFONO'
      DataBinding.DataSource = sImpegnativa
      ParentColor = False
      Style.HotTrack = False
      Height = 52
      Width = 134
    end
    object WPQuesito: TcxDBMemo
      Left = 25
      Top = 402
      Cursor = crIBeam
      DataBinding.DataField = 'QUESITO_DIAGN'
      DataBinding.DataSource = sImpegnativa
      ParentFont = False
      Properties.ReadOnly = False
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 11
      OnEnter = WPQuesitoEnter
      OnExit = WPQuesitoExit
      Height = 171
      Width = 641
    end
    object cxGridPrestazioni: TcxGrid
      Left = 496
      Top = 430
      Width = 1005
      Height = 118
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = cxcbsNone
      PopupMenu = dxBarPopupMenu1
      TabOrder = 14
      LookAndFeel.Kind = lfUltraFlat
      RootLevelOptions.DetailFrameWidth = 1
      object GridPrestazioni: TcxGridDBTableView
        OnDblClick = VisualizzaImmaginiExecute
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        OnInitEdit = GridPrestazioniInitEdit
        DataController.DataSource = sPrestazioni
        DataController.Filter.MaxValueListCount = 1000
        DataController.KeyFieldNames = 'PKPRESTAZIONI'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnPopup.MaxDropDownItemCount = 12
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.InvertSelect = False
        OptionsView.ScrollBars = ssVertical
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Preview.AutoHeight = False
        Preview.MaxLineCount = 2
        object GridPrestazioniCODICE: TcxGridDBColumn
          DataBinding.FieldName = 'CODICE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.MaxLength = 12
          Properties.ReadOnly = True
          MinWidth = 0
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Width = 79
        end
        object GridPrestazioniDESCRIZIONE: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRIZIONE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.MaxLength = 50
          Properties.ReadOnly = True
          MinWidth = 0
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Width = 308
        end
        object GridPrestazioniPKPRESTAZIONI: TcxGridDBColumn
          DataBinding.FieldName = 'PKPRESTAZIONI'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
          VisibleForCustomization = False
          Width = 74
        end
        object GridPrestazioniESITO_SCREENING_FK: TcxGridDBColumn
          DataBinding.FieldName = 'ESITO_SCREENING_FK'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.DropDownSizeable = True
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'PKESITISCR'
          Properties.ListColumns = <
            item
              SortOrder = soAscending
              Width = 300
              FieldName = 'DESCRIZIONE'
            end>
          Properties.ListOptions.CaseInsensitive = True
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = sTabEsitoScreening
          Visible = False
          Options.Filtering = False
          Width = 74
        end
        object GridPrestazioniMAGART_FK: TcxGridDBColumn
          DataBinding.FieldName = 'MAGART_FK'
          RepositoryItem = FDMCommon.edrepRADIOFARMACO
          Visible = False
          Options.Filtering = False
          Width = 74
        end
        object GridPrestazioniQUANTITA: TcxGridDBColumn
          DataBinding.FieldName = 'QUANTITA'
          Visible = False
          Options.Filtering = False
          Width = 74
        end
        object GridPrestazioniRIS_STUDY_EUID: TcxGridDBColumn
          DataBinding.FieldName = 'RIS_STUDY_EUID'
          BestFitMaxWidth = 100
          Options.Editing = False
          Options.Filtering = False
          Width = 59
        end
        object GridPrestazioniTRIAGE_FK: TcxGridDBColumn
          DataBinding.FieldName = 'TRIAGE_FK'
          Visible = False
          VisibleForCustomization = False
          Width = 74
        end
      end
      object cxGridPrestazioniLevel1: TcxGridLevel
        GridView = GridPrestazioni
      end
    end
    object dxBarDockControl4: TdxBarDockControl
      Left = 496
      Top = 390
      Width = 1006
      Height = 30
      Align = dalNone
      BarManager = dxBarManager1
    end
    object dxBarDockControl3: TdxBarDockControl
      Left = 21
      Top = 562
      Width = 822
      Height = 30
      Align = dalNone
      BarManager = dxBarManager1
    end
    object cxGrid1: TcxGrid
      Left = 494
      Top = 602
      Width = 765
      Height = 504
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = cxcbsNone
      PopupMenu = dxBarPopupPrecedenti
      TabOrder = 17
      LookAndFeel.Kind = lfUltraFlat
      RootLevelOptions.DetailTabsPosition = dtpTop
      object GridPrecedenti: TcxGridDBTableView
        OnDblClick = GridPrecedentiDblClick
        OnKeyDown = GridPrecedentiKeyDown
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = sqyPrecedenti
        DataController.Filter.MaxValueListCount = 1000
        DataController.KeyFieldNames = 'PKPRESTAZIONI'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnPopup.MaxDropDownItemCount = 12
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnGrouping = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ScrollBars = ssVertical
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Preview.AutoHeight = False
        Preview.MaxLineCount = 2
        object GridPrecedentiDATA_VISITA: TcxGridDBColumn
          DataBinding.FieldName = 'DATA_VISITA'
          MinWidth = 70
          Options.Editing = False
          Options.Filtering = False
          Options.CellMerging = True
          SortIndex = 0
          SortOrder = soDescending
          Width = 70
        end
        object GridPrecedentiRIS_STUDY_EUID: TcxGridDBColumn
          DataBinding.FieldName = 'RIS_STUDY_EUID'
          Options.Editing = False
          Options.Filtering = False
          Options.CellMerging = True
          Width = 78
        end
        object GridPrecedentiDIAGNOSTICA: TcxGridDBColumn
          DataBinding.FieldName = 'DIAGNOSTICA'
          Visible = False
          Options.Editing = False
          Options.CellMerging = True
          Width = 214
        end
        object GridPrecedentiDESCRIZIONE: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRIZIONE'
          Options.Editing = False
          Width = 259
        end
        object GridPrecedentiCEREFERTO: TcxGridDBColumn
          DataBinding.FieldName = 'CEREFERTO'
          RepositoryItem = FDMCommon.edrepImageREFERTO
          BestFitMaxWidth = 30
          MinWidth = 30
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.CellMerging = True
          Options.Sorting = False
          Width = 30
        end
        object GridPrecedentiCEIMMAGINI: TcxGridDBColumn
          DataBinding.FieldName = 'CEIMMAGINI'
          RepositoryItem = FDMCommon.edrepImageIMMAGINI
          BestFitMaxWidth = 30
          MinWidth = 30
          Options.Editing = False
          Options.Filtering = False
          Options.CellMerging = True
          Options.Sorting = False
          Width = 30
        end
        object GridPrecedentiCODICE: TcxGridDBColumn
          DataBinding.FieldName = 'CODICE'
          Visible = False
          Options.Editing = False
        end
        object GridPrecedentiPKREFERTI: TcxGridDBColumn
          DataBinding.FieldName = 'PKREFERTI'
          Visible = False
        end
      end
      object CardViewPrecedenti: TcxGridDBCardView
        OnDblClick = CardViewPrecedentiDblClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = sqyPrecedenti
        DataController.KeyFieldNames = 'PKPRESTAZIONI'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        LayoutDirection = ldVertical
        OptionsCustomize.RowFiltering = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ScrollBars = ssNone
        OptionsView.CardAutoWidth = True
        OptionsView.CardIndent = 7
        OptionsView.CardWidth = 10000
        OptionsView.CellAutoHeight = True
        object CardViewPrecedentiPKREFERTI: TcxGridDBCardViewRow
          DataBinding.FieldName = 'PKREFERTI'
          Visible = False
          Options.Editing = False
          Position.BeginsLayer = True
        end
        object CardViewPrecedentiRIS_STUDY_EUID: TcxGridDBCardViewRow
          DataBinding.FieldName = 'RIS_STUDY_EUID'
          Options.Editing = False
          Position.BeginsLayer = False
        end
        object CardViewPrecedentiPKTRIAGE: TcxGridDBCardViewRow
          DataBinding.FieldName = 'PKTRIAGE'
          Visible = False
          Options.Editing = False
          Position.BeginsLayer = False
        end
        object CardViewPrecedentiDATA_VISITA: TcxGridDBCardViewRow
          DataBinding.FieldName = 'DATA_VISITA'
          Options.Editing = False
          Position.BeginsLayer = False
        end
        object CardViewPrecedentiDIAGNOSTICA: TcxGridDBCardViewRow
          DataBinding.FieldName = 'DIAGNOSTICA'
          Visible = False
          Options.Editing = False
          Position.BeginsLayer = False
        end
        object CardViewPrecedentiDESCRIZIONE: TcxGridDBCardViewRow
          DataBinding.FieldName = 'DESCRIZIONE'
          Options.Editing = False
          Position.BeginsLayer = True
        end
        object CardViewPrecedentiCEIMMAGINI: TcxGridDBCardViewRow
          DataBinding.FieldName = 'CEIMMAGINI'
          RepositoryItem = FDMCommon.edrepImageIMMAGINI
          Visible = False
          Options.Editing = False
          Position.BeginsLayer = False
        end
        object CardViewPrecedentiCEREFERTO: TcxGridDBCardViewRow
          DataBinding.FieldName = 'CEREFERTO'
          RepositoryItem = FDMCommon.edrepImageREFERTO
          Visible = False
          Options.Editing = False
          Position.BeginsLayer = False
        end
        object CardViewPrecedentiNOMINATIVO: TcxGridDBCardViewRow
          DataBinding.FieldName = 'NOMINATIVO'
          Options.Editing = False
          Position.BeginsLayer = True
        end
        object CardViewPrecedentiRADIOLOGIA: TcxGridDBCardViewRow
          DataBinding.FieldName = 'RADIOLOGIA'
          Options.Editing = False
          Position.BeginsLayer = False
        end
        object CardViewPrecedentiDIAGNOSI: TcxGridDBCardViewRow
          DataBinding.FieldName = 'DIAGNOSI'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.ReadOnly = True
          Properties.ScrollBars = ssVertical
          Position.BeginsLayer = True
          Position.LineCount = 100
        end
        object CardViewPrecedentiSITE_NAME: TcxGridDBCardViewRow
          DataBinding.FieldName = 'SITE_NAME'
          Visible = False
          Options.Editing = False
          Position.BeginsLayer = False
        end
      end
      object cxGridLevel1: TcxGridLevel
        Caption = 'Precedenti'
        GridView = GridPrecedenti
      end
      object cxGridLevel2: TcxGridLevel
        Caption = 'Diagnosi'
        GridView = CardViewPrecedenti
      end
    end
    object dxBarDockControl5: TdxBarDockControl
      Left = 494
      Top = 562
      Width = 765
      Height = 30
      Align = dalNone
      BarManager = dxBarManager1
    end
    object cxDBLabel1: TcxDBLabel
      Left = 413
      Top = 78
      TabStop = False
      DataBinding.DataField = 'SES_CODICE'
      DataBinding.DataSource = sImpegnativa
      ParentColor = False
      Style.HotTrack = False
      Height = 52
      Width = 60
    end
    object DataNascita: TcxDBLabel
      Left = 483
      Top = 78
      TabStop = False
      DataBinding.DataField = 'DATA_NASCITA'
      DataBinding.DataSource = sImpegnativa
      ParentColor = False
      Style.HotTrack = False
      Height = 52
      Width = 174
    end
    object Servizio: TcxDBLabel
      Left = 413
      Top = 173
      TabStop = False
      DataBinding.DataField = 'SERVIZIO'
      DataBinding.DataSource = sImpegnativa
      ParentColor = False
      Style.HotTrack = False
      Height = 52
      Width = 270
    end
    object Medico: TcxDBLabel
      Left = 413
      Top = 268
      TabStop = False
      DataBinding.DataField = 'MEDICO'
      DataBinding.DataSource = sImpegnativa
      ParentColor = False
      Style.HotTrack = False
      Height = 52
      Width = 270
    end
    object cxDBLabel2: TcxDBLabel
      Left = 693
      Top = 173
      TabStop = False
      DataBinding.DataField = 'SERVTELEFONO'
      DataBinding.DataSource = sImpegnativa
      ParentColor = False
      Style.HotTrack = False
      Height = 52
      Width = 134
    end
    object cxGridEsame: TcxGrid
      Left = 857
      Top = 85
      Width = 819
      Height = 248
      TabOrder = 10
      object cxGridEsameDBTableView1: TcxGridDBTableView
        PopupMenu = dxBarPopupEsecuzione
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        DataController.DataSource = sEsame
        DataController.KeyFieldNames = 'PKTRIAGE'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.HideSelection = True
        OptionsSelection.InvertSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.DataRowHeight = 60
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridEsameDBTableView1RIS_STUDY_EUID: TcxGridDBColumn
          DataBinding.FieldName = 'RIS_STUDY_EUID'
          Options.Editing = False
          Width = 85
        end
        object cxGridEsameDBTableView1DATA_VISITA: TcxGridDBColumn
          DataBinding.FieldName = 'DATA_VISITA'
          Options.Editing = False
          Width = 81
        end
        object cxGridEsameDBTableView1TECNICO: TcxGridDBColumn
          DataBinding.FieldName = 'TECNICO'
          Options.Editing = False
          Width = 85
        end
        object cxGridEsameDBTableView1NOTE_TECNICO: TcxGridDBColumn
          DataBinding.FieldName = 'NOTE_TECNICO'
          PropertiesClassName = 'TcxBlobEditProperties'
          Properties.BlobEditKind = bekMemo
          Properties.ReadOnly = True
          BestFitMaxWidth = 70
          Width = 60
        end
        object cxGridEsameDBTableView1MEDESECUTORE: TcxGridDBColumn
          DataBinding.FieldName = 'MEDESECUTORE'
          Options.Editing = False
          Width = 111
        end
        object cxGridEsameDBTableView1CEIMMAGINI: TcxGridDBColumn
          DataBinding.FieldName = 'CEIMMAGINI'
          RepositoryItem = FDMCommon.edrepImageIMMAGINI
          BestFitMaxWidth = 30
          Options.Editing = False
          Options.Filtering = False
          Width = 30
        end
      end
      object cxGridEsameLevel1: TcxGridLevel
        GridView = cxGridEsameDBTableView1
      end
    end
    object cxGridAnamnesi: TcxGrid
      Left = 17144
      Top = 17144
      Width = 794
      Height = 186
      PopupMenu = dxBarPopupAnamnesi
      TabOrder = 12
      Visible = False
      object cxGridAnamnesiDBTableView1: TcxGridDBTableView
        OnDblClick = cxGridAnamnesiDBTableView1DblClick
        Navigator.Buttons.OnButtonClick = cxGridAnamnesiDBTableView1NavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = sAnamnesi
        DataController.KeyFieldNames = 'PKANAMNESI'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsSelection.InvertSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        OptionsView.Indicator = True
        object cxGridAnamnesiDBTableView1DATA_ANAMNESI: TcxGridDBColumn
          DataBinding.FieldName = 'DATA_ANAMNESI'
          MinWidth = 75
          Options.Editing = False
          Options.Filtering = False
          SortIndex = 0
          SortOrder = soDescending
          Width = 75
        end
        object cxGridAnamnesiDBTableView1ANAMNESI: TcxGridDBColumn
          DataBinding.FieldName = 'ANAMNESI'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.ReadOnly = True
          Properties.ScrollBars = ssVertical
          Options.Filtering = False
        end
      end
      object cxGridAnamnesiLevel1: TcxGridLevel
        GridView = cxGridAnamnesiDBTableView1
      end
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 857
      Top = 45
      Width = 171
      Height = 30
      Align = dalNone
      BarManager = dxBarManager1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 150
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Richiesta'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 100
      SizeOptions.Width = 454
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Paziente'
      CaptionOptions.Layout = clTop
      Control = Nominativo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Sesso'
      CaptionOptions.Layout = clTop
      Control = cxDBLabel1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Data nascita'
      CaptionOptions.Layout = clTop
      Control = DataNascita
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.Text = 'PID'
      CaptionOptions.Layout = clTop
      Control = cxDBLabel4
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group17: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControlProvenienza: TdxLayoutItem
      Parent = dxLayoutControl1Group17
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Provenienza'
      CaptionOptions.Layout = clTop
      Control = Reparto
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group21: TdxLayoutGroup
      Parent = dxLayoutControl1Group17
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group21
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControlServizio: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Servizio'
      CaptionOptions.Layout = clTop
      Control = Servizio
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Telefono'
      CaptionOptions.Layout = clTop
      Control = cxDBLabel2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group23: TdxLayoutGroup
      Parent = dxLayoutControl1Group21
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group23
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Medico richiedente'
      CaptionOptions.Layout = clTop
      Control = Medico
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group23
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Telefono'
      CaptionOptions.Layout = clTop
      Control = cxDBLabel3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Esecuzione'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 100
      SizeOptions.Width = 495
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignVert = avTop
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Control = dxBarDockControl1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'cxGrid2'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxGridEsame
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group14: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group15: TdxLayoutGroup
      Parent = dxLayoutControl1Group14
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 162
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group15
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutControl1Group11
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Quesito diagnostico'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      AlignVert = avClient
      CaptionOptions.Text = 'Quesito diagnostico'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = WPQuesito
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroupAnamnesi: TdxLayoutGroup
      Parent = dxLayoutControl1Group11
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Anamnesi'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutGroupAnamnesi
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid2'
      CaptionOptions.Visible = False
      Control = cxGridAnamnesi
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group18: TdxLayoutGroup
      Parent = dxLayoutControl1Group15
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Esami eseguiti'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 493
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      Parent = dxLayoutControl1Group18
      AlignVert = avTop
      CaptionOptions.Text = 'Esami eseguiti'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = dxBarDockControl4
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      Parent = dxLayoutControl1Group18
      AlignVert = avClient
      CaptionOptions.Text = 'Esami eseguiti'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = cxGridPrestazioni
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group16: TdxLayoutGroup
      Parent = dxLayoutControl1Group14
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControlReferto: TdxLayoutGroup
      Parent = dxLayoutControl1Group16
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Referto'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item25: TdxLayoutItem
      Parent = dxLayoutControlReferto
      AlignVert = avTop
      CaptionOptions.Text = 'Referto'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = dxBarDockControl3
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlEditor: TdxLayoutItem
      Parent = dxLayoutControlReferto
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Editor'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = False
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      Parent = dxLayoutControl1Group16
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Precedenti'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 495
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item27: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      AlignVert = avTop
      CaptionOptions.Text = 'Precedenti'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = dxBarDockControl5
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item26: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      AlignVert = avClient
      CaptionOptions.Text = 'Precedenti'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = False
      Control = cxGrid1
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited csEZKeys1: TcsEZKeys
    Left = 452
    Top = 237
  end
  object ActionList1: TActionList
    Images = FDMCommon.imIcone
    Left = 360
    Top = 323
    object Annulla: TAction
      Caption = 'Annulla'
      Hint = 'Esci e annulla le modifiche'
      OnExecute = AnnullaExecute
      OnUpdate = AnnullaUpdate
    end
    object RefertaDopo: TAction
      Caption = 'Referta a parte'
      Hint = 'Referta a parte'
      ImageIndex = 30
      OnExecute = RefertaDopoExecute
      OnUpdate = RefertaDopoUpdate
    end
    object aFondiReferto: TAction
      Caption = 'Fusione referto'
      ImageIndex = 19
      OnExecute = aFondiRefertoExecute
      OnUpdate = aFondiRefertoUpdate
    end
    object DaTrascrivere: TAction
      Caption = 'Trascrivere'
      Hint = 'Referto da trascrivere in segreteria'
      ShortCut = 16464
      OnExecute = DaTrascrivereExecute
      OnUpdate = DaTrascrivereUpdate
    end
    object Referto: TAction
      Caption = 'Firma'
      Hint = 'Firma del referto'
      ShortCut = 123
      OnExecute = RefertoExecute
      OnUpdate = RefertoUpdate
    end
    object RefertoProvvisorio: TAction
      Caption = 'Provvisorio'
      Hint = 'Referto provvisorio'
      OnExecute = RefertoProvvisorioExecute
      OnUpdate = RefertoProvvisorioUpdate
    end
    object aEstemporaneo: TAction
      Caption = 'Estemporaneo'
      OnExecute = aEstemporaneoExecute
      OnUpdate = aEstemporaneoUpdate
    end
    object aDoppiaFirma: TAction
      Caption = 'Altre firme'
      Hint = 'Altri firmatari del referto'
      OnExecute = aDoppiaFirmaExecute
      OnUpdate = aDoppiaFirmaUpdate
    end
    object VisualizzaImmagini: TAction
      Caption = 'Visualizza immagini'
      Hint = 'Visualizza immagini'
      ImageIndex = 31
      ShortCut = 119
      OnExecute = VisualizzaImmaginiExecute
      OnUpdate = VisualizzaImmaginiUpdate
    end
    object Successivo: TAction
      Hint = 'Visualizza esame successivo della lista'
      ShortCut = 16449
      OnExecute = SuccessivoExecute
      OnUpdate = SuccessivoUpdate
    end
    object Precedente: TAction
      Hint = 'Visualizza esame precedente della lista'
      ShortCut = 16457
      OnExecute = PrecedenteExecute
      OnUpdate = PrecedenteUpdate
    end
    object ZoomReferto: TAction
      Caption = 'Zoom'
      Hint = 'Zoom'
      ImageIndex = 28
      ShortCut = 16474
      OnExecute = ZoomRefertoExecute
    end
    object Salva: TAction
      Caption = 'Salva ed esci'
      Hint = 'Salva le modifiche'
      ShortCut = 122
      OnExecute = SalvaExecute
      OnUpdate = SalvaUpdate
    end
    object aTestiStandard: TAction
      Caption = 'Testi standard'
      Hint = 'Utilizza testi standard'
      ImageIndex = 6
      ShortCut = 16468
      OnExecute = aTestiStandardExecute
    end
    object aNegativo: TAction
      Caption = 'Negativo'
      Hint = 'Referto negativo'
      ImageIndex = 14
      ShortCut = 16462
      OnExecute = aNegativoExecute
      OnUpdate = aNegativoUpdate
    end
    object aImmaginiPrecedenti: TAction
      Caption = 'Immagini'
      Hint = 'Immagini precedenti'
      ImageIndex = 31
      ShortCut = 16503
      OnExecute = aImmaginiPrecedentiExecute
      OnUpdate = aImmaginiPrecedentiUpdate
    end
    object aComparaImmagini: TAction
      Caption = 'Compara immagini'
      ImageIndex = 31
      OnExecute = aComparaImmaginiExecute
      OnUpdate = aComparaImmaginiUpdate
    end
    object aRefertoPrecedenti: TAction
      Caption = 'Referto'
      Hint = 'Visualizza referto precedente'
      ImageIndex = 6
      ShortCut = 16504
      OnExecute = aRefertoPrecedentiExecute
      OnUpdate = aRefertoPrecedentiUpdate
    end
    object InizioInterattiva: TAction
      Caption = 'Inizio interattiva'
      Hint = 'Inizio interattiva'
      ImageIndex = 29
      ShortCut = 116
      OnExecute = InizioInterattivaExecute
      OnUpdate = InizioInterattivaUpdate
    end
    object FineInterattiva: TAction
      Caption = 'Fine interattiva'
      Hint = 'Fine interattiva'
      ShortCut = 117
      OnExecute = FineInterattivaExecute
      OnUpdate = FineInterattivaUpdate
    end
    object aCopiaTitolo: TAction
      Caption = 'Copia descrizione'
      Hint = 'Copia la descrizione dell'#39'esame nel referto'
      ImageIndex = 36
      OnExecute = aCopiaTitoloExecute
      OnUpdate = aCopiaTitoloUpdate
    end
    object aBookmark: TAction
      Caption = 'Bookmark'
      ImageIndex = 9
      Visible = False
      OnExecute = aBookmarkExecute
      OnUpdate = aBookmarkUpdate
    end
    object CopiaDiagnosi: TAction
      Caption = 'Copia diagnosi'
      ImageIndex = 36
      OnExecute = CopiaDiagnosiExecute
      OnUpdate = CopiaDiagnosiUpdate
    end
    object aVisualizzaPrecedenti: TAction
      Caption = 'Zoom'
      Hint = 'Zoom sui precedenti'
      ImageIndex = 10
      OnExecute = aVisualizzaPrecedentiExecute
      OnUpdate = aVisualizzaPrecedentiUpdate
    end
    object ZoomNoteEsame: TAction
      Caption = 'Consulenza'
      ImageIndex = 28
      OnExecute = ZoomNoteEsameExecute
    end
    object aPrivacy: TAction
      Caption = 'Privacy'
      OnExecute = aPrivacyExecute
      OnUpdate = aPrivacyUpdate
    end
    object aBookMarkPrecedenti: TAction
      Caption = 'Bookmark'
      ImageIndex = 9
      ShortCut = 16502
      Visible = False
      OnExecute = aBookMarkPrecedentiExecute
      OnUpdate = aBookMarkPrecedentiUpdate
    end
    object aAnamnesi: TAction
      Caption = 'Nuova anamnesi'
      ImageIndex = 16
      OnExecute = aAnamnesiExecute
    end
    object aCopiaAnamnesi: TAction
      Caption = 'Copia anamnesi in referto'
      ImageIndex = 44
      OnExecute = aCopiaAnamnesiExecute
      OnUpdate = aCopiaAnamnesiUpdate
    end
    object aCopiaQuesito: TAction
      Caption = 'Copia quesito in anamnesi'
      ImageIndex = 36
      OnExecute = aCopiaQuesitoExecute
    end
    object aStoricoPrecedenti: TAction
      Caption = 'Storico'
      Hint = 'Storico operazione'
      ImageIndex = 30
      ShortCut = 16503
      OnExecute = aStoricoPrecedentiExecute
      OnUpdate = aStoricoPrecedentiUpdate
    end
    object aControlloImmagini: TAction
      Caption = 'Test associazione'
      ImageIndex = 48
      OnExecute = aControlloImmaginiExecute
      OnUpdate = aControlloImmaginiUpdate
    end
    object aControlloPrecedenti: TAction
      Caption = 'Test associazione'
      ImageIndex = 48
      OnExecute = aControlloPrecedentiExecute
      OnUpdate = aControlloPrecedentiUpdate
    end
    object aSalvaContinua: TAction
      Caption = 'Salva'
      OnExecute = aSalvaContinuaExecute
      OnUpdate = aSalvaContinuaUpdate
    end
  end
  object sEsame: TDataSource
    DataSet = Esame
    Left = 272
    Top = 249
  end
  object sPrestazioni: TDataSource
    DataSet = Prestazioni
    Left = 220
    Top = 279
  end
  object Prestazioni: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_Prestazioni'
        Fields = 'TRIAGE_FK;PKPRESTAZIONI'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_Prestazioni'
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = PrestazioniBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    OnAfterPopulate = PrestazioniAfterPopulate
    EditMode = 'Read Only'
    UpdateTableName = 'PRESTAZIONI'
    PrimeFields.Strings = (
      'PKPRESTAZIONI')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      't.ceimmagini,'
      't.ris_study_euid,'
      'p.pkprestazioni,'
      'p.progressivo_riga,'
      'p.codicirad_fk,'
      'p.numero_prestazione,'
      'p.triage_fk,'
      'p.stato,'
      'p.esito_screening_fk,'
      'p.tipolivello_fk,'
      'c.codice,'
      'c.descrizione,'
      'r.refnegtext_fk,'
      'm.magart_fk,'
      'm.quantita,'
      'AX.qp'
      'from refxtriage rt'
      'join triage t on t.pktriage=rt.triage_fk'
      'join prestazioni p on p.triage_fk = rt.triage_fk'
      'join codicirad c on c.pkcodicirad = p.codicirad_fk'
      
        'join codxrad r on r.codicirad_fk = c.pkcodicirad and r.reparti_f' +
        'k = t.reparti_fk'
      
        'left outer join movim m on m.prestazioni_fk = p.pkprestazioni an' +
        'd m.tipo=1'
      'left outer join magart ma on ma.pkmagart = m.magart_fk'
      'join (select t2.pktriage,count(*) as qp'
      '      from refxtriage rt2'
      '      join triage t2 on t2.pktriage=rt2.triage_fk'
      '      join prestazioni p2 on p2.triage_fk=t2.pktriage'
      '      join servizi s on s.pkservizi=t2.diagnostica_fk'
      '      where rt2.referti_fk=:pkreferti'
      '      and p2.stato=1'
      '      group by t2.pktriage'
      '      ) AX on AX.pktriage=t.pktriage'
      'where rt.referti_fk=:pkreferti'
      'and p.stato=1'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Params = <
      item
        Name = 'pkreferti'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 253
      end>
    UpdateObject = updPrestazioni
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      030000000A0000001000000050524F475245535349564F5F5249474101000000
      000C0000005052455354535045435F464B0100000000120000004E554D45524F
      5F5052455354415A494F4E4501000000000D000000504B5052455354415A494F
      4E4901000000000A0000005449504F5F50524553540100000000050000005354
      41544F01000000000E000000444941474E4F53544943415F464B01000000000C
      0000005052455354534552565F464B01000000000B0000004445534352495A49
      4F4E450100000000090000005452494147455F464B0100000000}
    Left = 592
    Top = 323
    FastFields = (
      'CEIMMAGINI,3,0'
      'RIS_STUDY_EUID,1,100'
      'PKPRESTAZIONI,6,0'
      'PROGRESSIVO_RIGA,3,0'
      'CODICIRAD_FK,3,0'
      'NUMERO_PRESTAZIONE,3,0'
      'TRIAGE_FK,3,0'
      'STATO,3,0'
      'ESITO_SCREENING_FK,3,0'
      'TIPOLIVELLO_FK,1,5'
      'CODICE,1,12'
      'DESCRIZIONE,1,100'
      'REFNEGTEXT_FK,3,0'
      'MAGART_FK,3,0'
      'QUANTITA,6,0'
      'QP,3,0')
    FMultiTable = ()
    UpdateMethod = umCached
    object PrestazioniPKPRESTAZIONI: TFloatField
      DisplayWidth = 10
      FieldName = 'PKPRESTAZIONI'
    end
    object PrestazioniPROGRESSIVO_RIGA: TIntegerField
      DisplayWidth = 10
      FieldName = 'PROGRESSIVO_RIGA'
    end
    object PrestazioniNUMERO_PRESTAZIONE: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUMERO_PRESTAZIONE'
    end
    object PrestazioniTRIAGE_FK: TIntegerField
      DisplayWidth = 10
      FieldName = 'TRIAGE_FK'
    end
    object PrestazioniSTATO: TIntegerField
      DisplayWidth = 10
      FieldName = 'STATO'
    end
    object PrestazioniDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      DisplayWidth = 50
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
    object PrestazioniCODICIRAD_FK: TIntegerField
      FieldName = 'CODICIRAD_FK'
    end
    object PrestazioniCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object PrestazioniREFNEGTEXT_FK: TIntegerField
      FieldName = 'REFNEGTEXT_FK'
    end
    object PrestazioniESITO_SCREENING_FK: TIntegerField
      DisplayLabel = 'Esito screening'
      FieldName = 'ESITO_SCREENING_FK'
    end
    object PrestazioniTIPOLIVELLO_FK: TStringField
      FieldName = 'TIPOLIVELLO_FK'
      Size = 5
    end
    object PrestazioniMAGART_FK: TIntegerField
      DisplayLabel = 'Radiofarmaco'
      FieldName = 'MAGART_FK'
    end
    object PrestazioniQUANTITA: TFloatField
      DisplayLabel = 'Dose'
      FieldName = 'QUANTITA'
    end
    object PrestazioniCEIMMAGINI: TIntegerField
      FieldName = 'CEIMMAGINI'
    end
    object PrestazioniRIS_STUDY_EUID: TStringField
      DisplayLabel = 'Acc.Number'
      FieldName = 'RIS_STUDY_EUID'
      Size = 100
    end
    object PrestazioniQP: TIntegerField
      FieldName = 'QP'
    end
  end
  object ControlloTriage: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.Field = 'PKTRIAGE'
    SequenceField.Sequence = 'PRESTAZIONI_PKPRESTAZIONI'
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'Read Only'
    UpdateTableName = 'TRIAGE'
    PrimeFields.Strings = (
      'PKTRIAGE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      't.personale_fk,'
      't.ora_inizio,'
      't.ora_fine,'
      't.user_id,'
      't.durata,'
      't.statovisita,'
      't.pktriage,'
      't.cod_med_firma,'
      't.diagnostica_fk,'
      't.data_visita,'
      't.reparti_fk,'
      't.servizi_fk,'
      't.impegnative_fk,'
      't.ris_study_euid,'
      't.ceimmagini,'
      't.gresami_fk,'
      't.pacs_fk'
      'from triage t'
      'where t.pktriage=:pktriage'
      ' ')
    SQLOptions = [soFetchMemos, soFetchBlobs]
    Params = <
      item
        Name = 'pktriage'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    DirectModify = [tsyInsert]
    UpdateObject = updControlloTriage
    QBEMode = False
    Left = 400
    Top = 349
    FastFields = (
      'PERSONALE_FK,3,0'
      'ORA_INIZIO,11,0'
      'ORA_FINE,11,0'
      'USER_ID,3,0'
      'DURATA,3,0'
      'STATOVISITA,3,0'
      'PKTRIAGE,3,0'
      'COD_MED_FIRMA,3,0'
      'DIAGNOSTICA_FK,3,0'
      'DATA_VISITA,11,0'
      'REPARTI_FK,3,0'
      'SERVIZI_FK,3,0'
      'IMPEGNATIVE_FK,3,0'
      'RIS_STUDY_EUID,1,100'
      'CEIMMAGINI,3,0'
      'GRESAMI_FK,3,0'
      'PACS_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umCached
    object ControlloTriageSTATOVISITA: TIntegerField
      FieldName = 'STATOVISITA'
    end
    object ControlloTriagePKTRIAGE: TIntegerField
      FieldName = 'PKTRIAGE'
    end
    object ControlloTriageCOD_MED_FIRMA: TIntegerField
      FieldName = 'COD_MED_FIRMA'
    end
    object ControlloTriageDIAGNOSTICA_FK: TIntegerField
      FieldName = 'DIAGNOSTICA_FK'
    end
    object ControlloTriageDATA_VISITA: TDateTimeField
      FieldName = 'DATA_VISITA'
    end
    object ControlloTriageREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object ControlloTriageORA_INIZIO: TDateTimeField
      FieldName = 'ORA_INIZIO'
    end
    object ControlloTriageORA_FINE: TDateTimeField
      FieldName = 'ORA_FINE'
    end
    object ControlloTriageUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object ControlloTriageDURATA: TIntegerField
      FieldName = 'DURATA'
    end
    object ControlloTriageIMPEGNATIVE_FK: TIntegerField
      FieldName = 'IMPEGNATIVE_FK'
    end
    object ControlloTriageRIS_STUDY_EUID: TStringField
      FieldName = 'RIS_STUDY_EUID'
      Size = 100
    end
    object ControlloTriageSERVIZI_FK: TIntegerField
      FieldName = 'SERVIZI_FK'
    end
    object ControlloTriageCEIMMAGINI: TIntegerField
      FieldName = 'CEIMMAGINI'
    end
    object ControlloTriagePERSONALE_FK: TIntegerField
      FieldName = 'PERSONALE_FK'
    end
    object ControlloTriageGRESAMI_FK: TIntegerField
      FieldName = 'GRESAMI_FK'
    end
    object ControlloTriagePACS_FK: TIntegerField
      FieldName = 'PACS_FK'
    end
  end
  object updPrestazioni: TAstaUpdateSQL
    DeleteSQL.Strings = (
      'begin'
      '   -- per permettere di aggiungere le prestazioni'
      '  -- dei referti "fusi"'
      '   null;'
      'end;'
      ' ')
    InsertSQL.Strings = (
      'begin'
      '  -- per permettere di aggiungere le prestazioni'
      '  -- dei referti "fusi"'
      '  update PRESTAZIONI'
      '  set triage_fk=:triage_fk'
      '  where pkprestazioni=:pkprestazioni;'
      ''
      'end;'
      ' ')
    ModifySQL.Strings = (
      'begin'
      ''
      'update PRESTAZIONI'
      'set triage_fk=:triage_fk,'
      'codicirad_fk=:codicirad_fk,'
      'esito_screening_fk=:esito_screening_fk'
      'where pkprestazioni=:pkprestazioni;'
      ''
      
        'if NVL(:magart_fk,-1)<>NVL(:OLD_magart_fk,-1) or (:magart_fk is ' +
        'not null and NVL(:quantita,-1)<>NVL(:OLD_quantita,-1)) then'
      ''
      '   if :OLD_magart_fk is null then'
      '      insert into MOVIM(prestazioni_fk,magart_fk,quantita,tipo)'
      '      values(:pkprestazioni,:magart_fk,:quantita,1);'
      '   elsif :magart_fk is null then'
      '      delete MOVIM'
      
        '      where prestazioni_fk = :pkprestazioni and magart_fk = :OLD' +
        '_magart_fk;'
      '   else'
      '      update MOVIM'
      '      set magart_fk = :magart_fk, quantita = :quantita'
      
        '      where prestazioni_fk = :pkprestazioni and magart_fk = :OLD' +
        '_magart_fk;'
      '   end if;'
      ''
      'end if;'
      ''
      'end;'
      '')
    Left = 664
    Top = 331
  end
  object Esame: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_Esame'
        Fields = 'PKTRIAGE'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_Esame'
    Aggregates = <>
    Active = False
    Constraints = <>
    AfterEdit = EsameAfterEdit
    BeforePost = EsameBeforePost
    BeforeQuery = EsameBeforeQuery
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'Read Only'
    UpdateTableName = 'TRIAGE'
    PrimeFields.Strings = (
      'TRIAGE_FK')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'rt.referti_fk,'
      't.pktriage,'
      't.impegnative_fk,'
      't.personale_fk,'
      't.statovisita,'
      't.ora_inizio,'
      't.ora_fine,'
      't.user_id,'
      't.note_tecnico,'
      't.cod_med_firma,'
      't.diagnostica_fk,'
      't.data_visita,'
      't.reparti_fk,'
      't.differita,'
      't.cod_med_esegue,'
      't.servizi_fk,'
      't.gresami_fk,'
      't.pacs_fk,'
      'op.nominativo as Tecnico,'
      'med.nominativo as Radiologo,'
      'e.nominativo as MedEsecutore,'
      'dg.descrizione as Diagnostica,'
      't.ris_study_euid,'
      't.ceimmagini,'
      't.TIPO_REFVOC_FK,'
      't.WORKSTATION_FK,'
      'dg.eseguito'
      'from refxtriage rt'
      'join triage t on t.pktriage=rt.triage_fk'
      'left join servizi dg on dg.pkservizi = t.diagnostica_fk'
      'left join personale op on op.pkpersonale = t.personale_fk'
      'left join personale med on med.pkpersonale = t.cod_med_firma'
      'left join personale e on e.pkpersonale = t.cod_med_esegue'
      'where rt.referti_fk=:pkreferti'
      ' '
      ' '
      ' ')
    SQLOptions = [soFetchMemos, soFetchBlobs]
    Params = <
      item
        Name = 'pkreferti'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 253
      end>
    UpdateObject = updEsame
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      030000001F00000008000000504B56495349544501000000000B000000444154
      415F56495349544101000000000B00000050524F56454E49454E5A4101000000
      000E0000004C494E4755415F5245464552544F01000000000700000055524745
      4E5A4101000000000E0000004153534953544942494C495F464B01000000000A
      000000524550415254495F464B01000000000800000053455256495A494F0100
      0000001000000053455256495A494F5F524943485F464B010000000008000000
      5245505F5249434801000000000B000000434F445F4D45445F494E5401000000
      00070000005245504152544F0100000000060000004D454449434F0100000000
      070000005155455349544F000000000008000000444941474E4F534900000000
      0005000000455349544F01000000000B000000535441544F5649534954410100
      00000008000000504B54524941474501000000000B000000444941474E4F5354
      494341010000000009000000444154495F534F47470000000000070000005445
      434E49434F010000000009000000524144494F4C4F474F01000000000D000000
      434F445F4D45445F4649524D4101000000000A000000434F444943455F524144
      01000000000E000000444941474E4F53544943415F464B01000000000B000000
      5345474E49564954414C4900000000000B0000004E4F54455F4D454449434F00
      0000000007000000434F445F52414401000000000A0000004E4F4D494E415449
      564F01000000000C000000494E445F434F4D504C45544F01000000000C000000
      414343455353494F4E5F4E520100000000}
    Left = 304
    Top = 276
    FastFields = (
      'REFERTI_FK,3,0'
      'PKTRIAGE,3,0'
      'IMPEGNATIVE_FK,3,0'
      'PERSONALE_FK,3,0'
      'STATOVISITA,3,0'
      'ORA_INIZIO,11,0'
      'ORA_FINE,11,0'
      'USER_ID,3,0'
      'NOTE_TECNICO,1,4000'
      'COD_MED_FIRMA,3,0'
      'DIAGNOSTICA_FK,3,0'
      'DATA_VISITA,11,0'
      'REPARTI_FK,3,0'
      'DIFFERITA,3,0'
      'COD_MED_ESEGUE,3,0'
      'SERVIZI_FK,3,0'
      'GRESAMI_FK,3,0'
      'PACS_FK,3,0'
      'TECNICO,1,70'
      'RADIOLOGO,1,70'
      'MEDESECUTORE,1,70'
      'DIAGNOSTICA,1,100'
      'RIS_STUDY_EUID,1,100'
      'CEIMMAGINI,3,0'
      'TIPO_REFVOC_FK,3,0'
      'WORKSTATION_FK,3,0'
      'ESEGUITO,3,0')
    FMultiTable = ()
    UpdateMethod = umCached
    object EsameIMPEGNATIVE_FK: TIntegerField
      FieldName = 'IMPEGNATIVE_FK'
    end
    object EsameSTATOVISITA: TIntegerField
      FieldName = 'STATOVISITA'
    end
    object EsameORA_INIZIO: TDateTimeField
      FieldName = 'ORA_INIZIO'
    end
    object EsameORA_FINE: TDateTimeField
      FieldName = 'ORA_FINE'
    end
    object EsameUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object EsameCOD_MED_FIRMA: TIntegerField
      FieldName = 'COD_MED_FIRMA'
    end
    object EsameDIAGNOSTICA_FK: TIntegerField
      FieldName = 'DIAGNOSTICA_FK'
    end
    object EsameDATA_VISITA: TDateTimeField
      DisplayLabel = 'Data esecuzione'
      FieldName = 'DATA_VISITA'
    end
    object EsameREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object EsameDIFFERITA: TIntegerField
      FieldName = 'DIFFERITA'
    end
    object EsameTECNICO: TStringField
      DisplayLabel = 'Tecnico'
      FieldName = 'TECNICO'
      Size = 70
    end
    object EsameRADIOLOGO: TStringField
      FieldName = 'RADIOLOGO'
      Size = 70
    end
    object EsameDIAGNOSTICA: TStringField
      DisplayLabel = 'Diagnostica'
      FieldName = 'DIAGNOSTICA'
      Size = 100
    end
    object EsameRIS_STUDY_EUID: TStringField
      DisplayLabel = 'Acc.Number'
      FieldName = 'RIS_STUDY_EUID'
      Size = 100
    end
    object EsameCOD_MED_ESEGUE: TIntegerField
      FieldName = 'COD_MED_ESEGUE'
    end
    object EsameMEDESECUTORE: TStringField
      DisplayLabel = 'Medico esecutore'
      FieldName = 'MEDESECUTORE'
      Size = 70
    end
    object EsameSERVIZI_FK: TIntegerField
      FieldName = 'SERVIZI_FK'
    end
    object EsameCEIMMAGINI: TIntegerField
      DisplayLabel = 'Immagini'
      FieldName = 'CEIMMAGINI'
    end
    object EsamePERSONALE_FK: TIntegerField
      FieldName = 'PERSONALE_FK'
    end
    object EsameTIPO_REFVOC_FK: TIntegerField
      FieldName = 'TIPO_REFVOC_FK'
    end
    object EsameWORKSTATION_FK: TIntegerField
      FieldName = 'WORKSTATION_FK'
    end
    object EsameGRESAMI_FK: TIntegerField
      FieldName = 'GRESAMI_FK'
    end
    object EsameREFERTI_FK: TIntegerField
      FieldName = 'REFERTI_FK'
    end
    object EsameNOTE_TECNICO: TStringField
      DisplayLabel = 'Note esame'
      FieldName = 'NOTE_TECNICO'
      Size = 4000
    end
    object EsameESEGUITO: TIntegerField
      FieldName = 'ESEGUITO'
    end
    object EsamePKTRIAGE: TIntegerField
      FieldName = 'PKTRIAGE'
    end
    object EsamePACS_FK: TIntegerField
      FieldName = 'PACS_FK'
    end
  end
  object updEsame: TAstaUpdateSQL
    DeleteSQL.Strings = (
      'declare'
      'xpkreferti referti.pkreferti%type;'
      'begin'
      ''
      '    insert into referti(statoreferto_fk)'
      '    values(0)'
      '    returning pkreferti into xpkreferti;'
      ''
      '    update refxtriage'
      '    set referti_fk = xpkreferti'
      '    where triage_fk = :pktriage;'
      ''
      '    update triage t'
      '    set t.cod_med_firma=null'
      '    where t.pktriage=:pktriage;'
      ''
      ''
      
        '--    insert into STATOVISITA( TRIAGE_FK, STATOVISITA, DATA_OP, ' +
        'USER_ID, SERVIZI_FK, REPARTI_FK, INIZIO)'
      
        '--    values( :pktriage, 961, SYSDATE, :user_id, : diagnostica_f' +
        'k, : reparti_fk, : ora_inizio );'
      ''
      
        '    insert into STATOVISITA( TRIAGE_FK, STATOVISITA, DATA_OP, US' +
        'ER_ID)'
      '    values( :pktriage, 961, SYSDATE, :user_id);'
      ''
      'end;'
      ''
      ' '
      ' '
      ' '
      ' ')
    InsertSQL.Strings = (
      'begin'
      ''
      '   if :cod_med_firma is not null then'
      '      update TRIAGE'
      '      set cod_med_firma=:cod_med_firma'
      '      where pktriage=:pktriage;'
      ''
      '      update REFERTI r'
      '      set r.cod_med_firma=:cod_med_firma'
      '      where r.pkreferti = :referti_fk;'
      ''
      '   end if;'
      '   '
      '   -- fusione referti'
      '   update refxtriage rt'
      '   set rt.referti_fk=:referti_fk'
      '   where rt.triage_fk=:pktriage;'
      ''
      'end;'
      ' ')
    ModifySQL.Strings = (
      'declare'
      ''
      'xcod_med_esegue triage.cod_med_esegue%type;'
      'xdata_anamnesi anamnesi.data_anamnesi%type;'
      ''
      'begin'
      ''
      '   if :eseguito=1 then'
      '      xcod_med_esegue := :user_id;'
      '      /* -- ???'
      '      update statovisita'
      '      set user_id = : user_id'
      '      where triage_fk = : pktriage and statovisita=130;'
      '      */'
      '   else'
      '      xcod_med_esegue := null;'
      '   end if;'
      ''
      '   update TRIAGE'
      '   set cod_med_firma=:cod_med_firma,'
      '       servizi_fk = NVL(servizi_fk,:servizi_fk),'
      '       user_id=:user_id,'
      '       statovisita=:statovisita,'
      '       cod_med_esegue = xcod_med_esegue,'
      '       personale_fk = NVL(xcod_med_esegue,personale_fk),'
      '       differita=:differita,'
      '       data_visita=NVL(data_visita,sysdate),'
      '       TIPO_REFVOC_FK=NVL(TIPO_REFVOC_FK,:TIPO_REFVOC_FK),'
      '       workstation_fk=:workstation_fk'
      '   where pktriage=:pktriage;'
      ''
      '   update REFERTI r'
      '   set r.cod_med_firma=:cod_med_firma'
      '   where r.pkreferti = :referti_fk;'
      ''
      ''
      '   for z in (select i.anamnesi_fk, i.assistibili_fk'
      '             from impegnative i'
      '             where i.pkimpegnative = :impegnative_fk'
      '             )'
      '   loop'
      '       if z.anamnesi_fk is null then'
      ''
      '         begin'
      '           select max(a.data_anamnesi)'
      '           into xdata_anamnesi'
      '           from anamnesi a'
      '           where a.assistibili_fk = z.assistibili_fk'
      '           and a.anamnesi is not null;'
      ''
      '           update impegnative'
      '           set anamnesi_fk = (select a.pkanamnesi'
      '                              from anamnesi a'
      
        '                              where a.data_anamnesi = xdata_anam' +
        'nesi'
      '                              )'
      '           where pkimpegnative = :impegnative_fk;'
      ''
      '        exception'
      '           when NO_DATA_FOUND then null;'
      '           when OTHERS then raise;'
      '        end;'
      ''
      '       end if;'
      ''
      '   end loop;'
      ''
      'end;'
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 356
    Top = 256
  end
  object dxBarManager1: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Source Sans Pro'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Zoom'
      'Prestazioni'
      'Precedenti')
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    ImageOptions.Images = FDMCommon.imIcone
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 620
    Top = 204
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockControl = dxBarDockControl3
      DockedDockControl = dxBarDockControl3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 293
      FloatTop = 436
      FloatClientWidth = 139
      FloatClientHeight = 44
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'Custom 3'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 4'
      CaptionButtons = <>
      DockControl = dxBarDockControl4
      DockedDockControl = dxBarDockControl4
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 564
      FloatTop = 431
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'Custom 4'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRecentItems = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 5'
      CaptionButtons = <>
      DockControl = dxBarDockControl5
      DockedDockControl = dxBarDockControl5
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 564
      FloatTop = 431
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'Custom 5'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar4: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 460
      FloatTop = 118
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton19'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Action = ZoomReferto
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton6: TdxBarButton
      Action = ZoomNoteEsame
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Action = aTestiStandard
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton4: TdxBarButton
      Action = aNegativo
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxAnamnesi: TdxBarButton
      Action = aAnamnesi
      Category = 0
    end
    object dxBarButton16: TdxBarButton
      Action = aCopiaAnamnesi
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton17: TdxBarButton
      Action = aCopiaQuesito
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton7: TdxBarButton
      Action = VisualizzaImmagini
      Category = 1
      PaintStyle = psCaptionGlyph
      ShortCut = 120
    end
    object dxBarButton5: TdxBarButton
      Action = RefertaDopo
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton9: TdxBarButton
      Action = aCopiaTitolo
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton10: TdxBarButton
      Action = aBookmark
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton14: TdxBarButton
      Action = aFondiReferto
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton19: TdxBarButton
      Action = aControlloImmagini
      Category = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton3: TdxBarButton
      Action = aImmaginiPrecedenti
      Category = 2
      PaintStyle = psCaptionGlyph
      ShortCut = 16504
    end
    object dxBarButton8: TdxBarButton
      Action = aRefertoPrecedenti
      Category = 2
      PaintStyle = psCaptionGlyph
      ShortCut = 16505
    end
    object dxBarButton11: TdxBarButton
      Action = CopiaDiagnosi
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton12: TdxBarButton
      Action = aVisualizzaPrecedenti
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton13: TdxBarButton
      Action = aBookMarkPrecedenti
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton15: TdxBarButton
      Action = aComparaImmagini
      Caption = 'Compara'
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton18: TdxBarButton
      Action = aStoricoPrecedenti
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton20: TdxBarButton
      Action = aControlloPrecedenti
      Category = 2
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton21: TdxBarButton
      Action = aControlloPrecedenti
      Category = 2
      PaintStyle = psCaptionGlyph
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end>
    UseOwnFont = False
    Left = 424
    Top = 160
  end
  object qyPrecedenti: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = qyPrecedentiBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'TRIAGE'
    PrimeFields.Strings = (
      'PKTRIAGE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'z.ris_study_euid,'
      'z.pktriage,'
      'z.data_visita,'
      'z.CEREFERTO,'
      'z.CEDIAGNOSI,'
      'z.ceImmagini,'
      'z.Diagnostica,'
      'z.pkprestazioni,'
      'z.codice,'
      'z.descrizione,'
      'z.site_name,'
      'z.pkreferti,'
      'z.diagnosi,'
      'z.nominativo,'
      'z.Radiologia,'
      'z.cod_esterno,'
      'z.user_id'
      
        'from table ( ris.Tb_precedenti(:pkassistibili,:pkreferti,:repart' +
        'i_fk,:lingua) ) z')
    SQLOptions = [soFetchMemos, soFetchBlobs]
    Params = <
      item
        Name = 'pkassistibili'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 144
      end
      item
        Name = 'pkreferti'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 3
      end
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    UpdateObject = updPrecedenti
    QBEMode = False
    Left = 736
    Top = 452
    FastFields = (
      'RIS_STUDY_EUID,1,100'
      'PKTRIAGE,3,0'
      'DATA_VISITA,11,0'
      'CEREFERTO,3,0'
      'CEDIAGNOSI,3,0'
      'CEIMMAGINI,3,0'
      'DIAGNOSTICA,1,100'
      'PKPRESTAZIONI,3,0'
      'CODICE,1,12'
      'DESCRIZIONE,1,100'
      'SITE_NAME,1,30'
      'PKREFERTI,3,0'
      'DIAGNOSI,30,0'
      'NOMINATIVO,1,70'
      'RADIOLOGIA,1,60'
      'COD_ESTERNO,1,32'
      'USER_ID,3,0')
    FMultiTable = ()
    UpdateMethod = umCached
    object qyPrecedentiDATA_VISITA: TDateTimeField
      DisplayLabel = 'Data esame'
      FieldName = 'DATA_VISITA'
      DisplayFormat = 'ddddd'
    end
    object qyPrecedentiRIS_STUDY_EUID: TStringField
      DisplayLabel = 'Acc.Number'
      FieldName = 'RIS_STUDY_EUID'
      Size = 100
    end
    object qyPrecedentiDIAGNOSTICA: TStringField
      DisplayLabel = 'Diagnostica'
      FieldName = 'DIAGNOSTICA'
      Size = 100
    end
    object qyPrecedentiCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object qyPrecedentiDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
    object qyPrecedentiSITE_NAME: TStringField
      FieldName = 'SITE_NAME'
      Size = 30
    end
    object qyPrecedentiDIAGNOSI: TBlobField
      DisplayLabel = 'Diagnosi'
      FieldName = 'DIAGNOSI'
      BlobType = ftOraBlob
    end
    object qyPrecedentiNOMINATIVO: TStringField
      DisplayLabel = 'Firmato da'
      FieldName = 'NOMINATIVO'
      Size = 70
    end
    object qyPrecedentiRADIOLOGIA: TStringField
      DisplayLabel = 'Unit'#224' Organizzativa'
      FieldName = 'RADIOLOGIA'
      Size = 60
    end
    object qyPrecedentiCOD_ESTERNO: TStringField
      FieldName = 'COD_ESTERNO'
      Size = 32
    end
    object qyPrecedentiPKTRIAGE: TIntegerField
      FieldName = 'PKTRIAGE'
    end
    object qyPrecedentiCEREFERTO: TIntegerField
      DisplayLabel = 'Referto'
      FieldName = 'CEREFERTO'
    end
    object qyPrecedentiCEDIAGNOSI: TIntegerField
      FieldName = 'CEDIAGNOSI'
    end
    object qyPrecedentiCEIMMAGINI: TIntegerField
      DisplayLabel = 'Immagini'
      FieldName = 'CEIMMAGINI'
    end
    object qyPrecedentiPKPRESTAZIONI: TIntegerField
      FieldName = 'PKPRESTAZIONI'
    end
    object qyPrecedentiPKREFERTI: TIntegerField
      FieldName = 'PKREFERTI'
    end
    object qyPrecedentiUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
  end
  object sqyPrecedenti: TDataSource
    DataSet = qyPrecedenti
    Left = 756
    Top = 500
  end
  object dxBarPopupPrecedenti: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton15'
      end
      item
        Visible = True
        ItemName = 'dxBarButton21'
      end
      item
        Visible = True
        ItemName = 'dxBarButton13'
      end
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        Visible = True
        ItemName = 'dxBarButton18'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton12'
      end>
    UseOwnFont = False
    Left = 696
    Top = 580
  end
  object cxRichMemoDlg: TcxRichMemoDlg
    Caption = 'RTF Editor'
    DlgWidth = 820
    DlgHeight = 590
    DlgPosition = poMainFormCenter
    BarStyle = bmsUseLookAndFeel
    Options.ShowLoad = False
    Options.ShowSaveAs = False
    Options.ShowSaveAndExit = False
    Options.ShowPrint = False
    Options.ShowPageSetup = False
    Options.ShowSearch = True
    Options.ShowReplace = True
    Left = 424
    Top = 288
  end
  object GetRefertoNegativo: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = GetRefertoNegativoBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select t.testo as ref_negativo'
      'from codxrad c, testi_standard t'
      'where c.codicirad_fk=:pkcodicirad'
      'and c.reparti_fk=:reparti_fk'
      'and t.pktestistd=c.refnegtext_fk'
      '')
    SQLOptions = [soFetchMemos, soFetchBlobs]
    Params = <
      item
        Name = 'pkcodicirad'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftUnknown
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 416
    Top = 496
    FastFields = (
      'REF_NEGATIVO,30,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object GetRefertoNegativoREF_NEGATIVO: TBlobField
      FieldName = 'REF_NEGATIVO'
      BlobType = ftOraBlob
    end
  end
  object sImpegnativa: TDataSource
    DataSet = Impegnativa
    Left = 124
    Top = 141
  end
  object Impegnativa: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    AfterEdit = ImpegnativaAfterEdit
    BeforeQuery = ImpegnativaBeforeQuery
    AfterQuery = ImpegnativaAfterQuery
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'Read Only'
    UpdateTableName = 'IMPEGNATIVE'
    PrimeFields.Strings = (
      'PKIMPEGNATIVE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'i.pkimpegnative,'
      'i.user_id,'
      'i.urgenza,'
      'i.tipo_attivita_fk,'
      'i.provenienza,'
      'i.assistibili_fk,'
      'i.servizio_rich_fk,'
      'i.cod_med_int,'
      'i.liv_scr,'
      'i.telefono as ServTelefono,'
      'DECODE(i.provenienza,'#39'E'#39','#39#39',p.telefono) as MedTelefono,'
      'sv.reparti_fk as rep_rich,'
      
        'DECODE(i.provenienza,'#39'E'#39',o.descrizione,r.descrizione) as Reparto' +
        ','
      'sv.descrizione as Servizio,'
      'DECODE(ta.provenienza,'#39'E'#39',m.nominativo,p.nominativo) as Medico,'
      'a.NOMINATIVO,'
      'a.DATA_NASCITA,'
      'substr(s.descrizione,1,1) as ses_codice,'
      'a.oscuramento,'
      'ae.cod_esterno,'
      're.descrizione as RadEsegue,'
      'i.quesito_diagn,'
      'i.anamnesi_fk'
      'from impegnative i'
      'join param_ticket pt on pt.pkparamticket=1'
      'join assistibili a on a.pkassistibili=i.assistibili_fk'
      'join reparti re on re.pkreparti=i.reparti_fk'
      
        'left outer join anag_esterne ae on ae.assistibili_fk = a.pkassis' +
        'tibili and ae.idauthority = pt.anag_authority'
      'left outer join reparti r on r.pkreparti = i.reparto_rich_fk'
      'left outer join servizi sv on sv.pkservizi = i.servizio_rich_fk'
      'left outer join ospedali o on o.codice = i.osp_rich'
      
        'left outer join wtipo_attivita ta on ta.tipo_attivita = i.tipo_a' +
        'ttivita_fk and ta.lingua=:lingua'
      'left outer join personale p on p.pkpersonale = i.cod_med_int'
      'left outer join medici_base m on m.codice = i.med_base'
      
        'left outer join wtbd_sesso s on s.ses_codice = a.ses_codice and ' +
        's.lingua = :lingua'
      'where i.pkimpegnative=:pkimpegnative')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'pkimpegnative'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      030000001F00000008000000504B56495349544501000000000B000000444154
      415F56495349544101000000000B00000050524F56454E49454E5A4101000000
      000E0000004C494E4755415F5245464552544F01000000000700000055524745
      4E5A4101000000000E0000004153534953544942494C495F464B01000000000A
      000000524550415254495F464B01000000000800000053455256495A494F0100
      0000001000000053455256495A494F5F524943485F464B010000000008000000
      5245505F5249434801000000000B000000434F445F4D45445F494E5401000000
      00070000005245504152544F0100000000060000004D454449434F0100000000
      070000005155455349544F000000000008000000444941474E4F534900000000
      0005000000455349544F01000000000B000000535441544F5649534954410100
      00000008000000504B54524941474501000000000B000000444941474E4F5354
      494341010000000009000000444154495F534F47470000000000070000005445
      434E49434F010000000009000000524144494F4C4F474F01000000000D000000
      434F445F4D45445F4649524D4101000000000A000000434F444943455F524144
      01000000000E000000444941474E4F53544943415F464B01000000000B000000
      5345474E49564954414C4900000000000B0000004E4F54455F4D454449434F00
      0000000007000000434F445F52414401000000000A0000004E4F4D494E415449
      564F01000000000C000000494E445F434F4D504C45544F01000000000C000000
      414343455353494F4E5F4E520100000000}
    Left = 188
    Top = 156
    FastFields = (
      'PKIMPEGNATIVE,3,0'
      'USER_ID,3,0'
      'URGENZA,3,0'
      'TIPO_ATTIVITA_FK,1,2'
      'PROVENIENZA,1,1'
      'ASSISTIBILI_FK,3,0'
      'SERVIZIO_RICH_FK,3,0'
      'COD_MED_INT,3,0'
      'LIV_SCR,3,0'
      'SERVTELEFONO,1,20'
      'MEDTELEFONO,1,20'
      'REP_RICH,3,0'
      'REPARTO,1,80'
      'SERVIZIO,1,100'
      'MEDICO,1,70'
      'NOMINATIVO,1,122'
      'DATA_NASCITA,11,0'
      'SES_CODICE,1,1'
      'OSCURAMENTO,1,1'
      'COD_ESTERNO,1,32'
      'RADESEGUE,1,60'
      'QUESITO_DIAGN,1,4000'
      'ANAMNESI_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umCached
    object ImpegnativaURGENZA: TIntegerField
      DisplayWidth = 10
      FieldName = 'URGENZA'
    end
    object ImpegnativaASSISTIBILI_FK: TIntegerField
      DisplayWidth = 10
      FieldName = 'ASSISTIBILI_FK'
    end
    object ImpegnativaSERVIZIO_RICH_FK: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERVIZIO_RICH_FK'
    end
    object ImpegnativaREP_RICH: TIntegerField
      DisplayWidth = 10
      FieldName = 'REP_RICH'
    end
    object ImpegnativaCOD_MED_INT: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_MED_INT'
    end
    object ImpegnativaREPARTO: TStringField
      DisplayWidth = 60
      FieldName = 'REPARTO'
      Size = 60
    end
    object ImpegnativaSERVIZIO: TStringField
      DisplayWidth = 100
      FieldName = 'SERVIZIO'
      Size = 100
    end
    object ImpegnativaMEDICO: TStringField
      DisplayWidth = 61
      FieldName = 'MEDICO'
      Size = 61
    end
    object ImpegnativaNOMINATIVO: TStringField
      DisplayWidth = 122
      FieldName = 'NOMINATIVO'
      Size = 122
    end
    object ImpegnativaUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object ImpegnativaTIPO_ATTIVITA_FK: TStringField
      FieldName = 'TIPO_ATTIVITA_FK'
      Size = 2
    end
    object ImpegnativaPROVENIENZA: TStringField
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object ImpegnativaDATA_NASCITA: TDateTimeField
      FieldName = 'DATA_NASCITA'
    end
    object ImpegnativaPKIMPEGNATIVE: TIntegerField
      FieldName = 'PKIMPEGNATIVE'
    end
    object ImpegnativaSES_CODICE: TStringField
      FieldName = 'SES_CODICE'
      Size = 1
    end
    object ImpegnativaSERVTELEFONO: TStringField
      FieldName = 'SERVTELEFONO'
    end
    object ImpegnativaMEDTELEFONO: TStringField
      FieldName = 'MEDTELEFONO'
    end
    object ImpegnativaLIV_SCR: TIntegerField
      FieldName = 'LIV_SCR'
    end
    object ImpegnativaCOD_ESTERNO: TStringField
      DisplayLabel = 'PID'
      FieldName = 'COD_ESTERNO'
      Size = 32
    end
    object ImpegnativaOSCURAMENTO: TStringField
      FieldName = 'OSCURAMENTO'
      Size = 1
    end
    object ImpegnativaRADESEGUE: TStringField
      FieldName = 'RADESEGUE'
      Size = 60
    end
    object ImpegnativaQUESITO_DIAGN: TStringField
      FieldName = 'QUESITO_DIAGN'
      Size = 4000
    end
    object ImpegnativaANAMNESI_FK: TIntegerField
      FieldName = 'ANAMNESI_FK'
    end
  end
  object AltreFirme: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    NoSQLFields.Strings = (
      'nominativo')
    EditMode = 'Cached'
    UpdateTableName = 'MEDFIRMA'
    PrimeFields.Strings = (
      'COD_MED_FIRMA'
      'TRIAGE_FK')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'm.cod_med_firma, '
      'm.triage_fk, '
      'm.tipo_firma,'
      'p.nominativo'
      'from medfirma m, personale p'
      'where m.triage_fk = :triage_fk'
      'and p.pkpersonale = m.cod_med_firma')
    Params = <
      item
        Name = 'triage_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 448
    Top = 456
    FastFields = (
      'COD_MED_FIRMA,3,0'
      'TRIAGE_FK,3,0'
      'TIPO_FIRMA,1,1'
      'NOMINATIVO,1,70')
    FMultiTable = ()
    UpdateMethod = umCached
    object AltreFirmeCOD_MED_FIRMA: TIntegerField
      FieldName = 'COD_MED_FIRMA'
    end
    object AltreFirmeTRIAGE_FK: TIntegerField
      FieldName = 'TRIAGE_FK'
    end
    object AltreFirmeTIPO_FIRMA: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_FIRMA'
      Size = 1
    end
    object AltreFirmeNOMINATIVO: TStringField
      DisplayLabel = 'Medico'
      FieldName = 'NOMINATIVO'
      Size = 70
    end
  end
  object updControlloTriage: TAstaUpdateSQL
    InsertSQL.Strings = (
      'declare'
      '  xpkreferti referti.pkreferti%type;'
      'begin'
      ''
      'insert into referti(statoreferto_fk)'
      'values(0)'
      'returning pkreferti into xpkreferti;'
      ''
      'insert into refxtriage(referti_fk, triage_fk)'
      'values(xpkreferti, :pktriage);'
      ''
      
        'insert into STATOVISITA( TRIAGE_FK, STATOVISITA, DATA_OP, USER_I' +
        'D, SERVIZI_FK, REPARTI_FK, INIZIO)'
      
        'select :pktriage, statovisita, data_op, user_id, servizi_fk, rep' +
        'arti_fk, inizio'
      'from statovisita'
      'where triage_fk=:pktriage;'
      ''
      
        'insert into STATOVISITA( TRIAGE_FK, STATOVISITA, DATA_OP, USER_I' +
        'D, SERVIZI_FK, REPARTI_FK, INIZIO)'
      
        'values( :pktriage, 960, SYSDATE, :user_id, :diagnostica_fk, :rep' +
        'arti_fk, :ora_inizio );'
      ''
      
        'insert into log_errori(triage_fk,data_err,user_id,testo_errore,t' +
        'ipo_blocco,stato_err)'
      
        'select :pktriage,data_err,user_id,testo_errore,tipo_blocco,stato' +
        '_err'
      'from log_errori'
      'where triage_fk=:pktriage;'
      ''
      'end;'
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 308
    Top = 360
  end
  object Radiologie: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'u.reparti_fk,'
      'r.descrizione,'
      'o.descrizione as Ospedale'
      'from repserv rs'
      'join ucs_app_info u on u.reparti_fk = rs.reparti_fk'
      'join reparti r on r.pkreparti = u.reparti_fk'
      'join ospedali o on o.codice = r.osp_codice'
      'where u.tipo_app=1'
      'and (r.data_fine is null or r.data_fine>sysdate)'
      'and rs.servizi_fk=:diagnostica_fk'
      ' ')
    Params = <
      item
        Name = 'diagnostica_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      03000000070000000700000044455343525F4901000000000700000044455343
      525F4401000000000F000000504B5052455354535045434D554C540100000000
      100000005052455354535045434D554C545F464B010000000006000000434F44
      4943450100000000090000004652455155454E5A4101000000000A0000005345
      5256495A495F464B0100000000}
    Left = 798
    Top = 513
    FastFields = (
      'REPARTI_FK,3,0'
      'DESCRIZIONE,1,60'
      'OSPEDALE,1,80')
    FMultiTable = ()
    UpdateMethod = umManual
    object RadiologieREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object RadiologieDESCRIZIONE: TStringField
      DisplayLabel = 'Reparto'
      FieldName = 'DESCRIZIONE'
      Size = 60
    end
    object RadiologieOSPEDALE: TStringField
      DisplayLabel = 'Ospedale'
      FieldName = 'OSPEDALE'
      Size = 80
    end
  end
  object sTabEsitoScreening: TDataSource
    Left = 828
    Top = 152
  end
  object qCopiaDiagnosi: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'diagnosi'
      'from referti r'
      'where r.pkreferti=(select max(r1.pkreferti)'
      '                   from refxtriage rt'
      '                   join referti r1 on r1.pkreferti=rt.referti_fk'
      '                   where rt.triage_fk=:triage_fk)')
    SQLOptions = [soFetchMemos, soFetchBlobs]
    Params = <
      item
        Name = 'triage_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 564
    Top = 516
    FastFields = (
      'DIAGNOSI,30,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qCopiaDiagnosiDIAGNOSI: TBlobField
      FieldName = 'DIAGNOSI'
      BlobType = ftOraBlob
    end
  end
  object qyRiapri: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'begin'
      ''
      '      update referti'
      '      set statoreferto_fk=0'
      
        '      where pkreferti=:pkreferti and statoreferto_fk in (90,92,9' +
        '3,94,95,96,97,98,99) and tipo_referto_fk<>1'
      '      ;'
      ''
      'end;')
    Params = <
      item
        Name = 'pkreferti'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 632
    Top = 552
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object Oscuramento: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_trxoscura'
        Fields = 'OSCURA_FK'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_trxoscura'
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = OscuramentoBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Cached'
    UpdateTableName = 'OSCURAMENTO'
    PrimeFields.Strings = (
      'OSCURA_FK'
      'REFERTI_FK')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select ts.descrizione,os.attivo, os.oscura_fk, os.referti_fk'
      'from oscuramento os, tab_oscuramento ts'
      'where ts.cod_oscura=os.oscura_fk'
      'and os.referti_fk = :referti_fk'
      ' ')
    Params = <
      item
        Name = 'referti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 544
    Top = 572
    FastFields = (
      'DESCRIZIONE,1,100'
      'ATTIVO,3,0'
      'OSCURA_FK,1,5'
      'REFERTI_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umCached
    object OscuramentoDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object OscuramentoATTIVO: TIntegerField
      FieldName = 'ATTIVO'
    end
    object OscuramentoOSCURA_FK: TStringField
      FieldName = 'OSCURA_FK'
      Size = 5
    end
    object OscuramentoREFERTI_FK: TIntegerField
      FieldName = 'REFERTI_FK'
    end
  end
  object updDaFondere: TAstaUpdateSQL
    DeleteSQL.Strings = (
      'declare'
      ' q integer;'
      'begin'
      ''
      '   delete referti r where r.pkreferti=:referti_fk;'
      ''
      '   select count(*)'
      '   into q'
      '   from prestazioni p'
      '   where p.triage_fk=:pktriage'
      '   and p.stato=1;'
      ''
      '   if q=0 then'
      '      update triage t'
      '      set t.statovisita=0, t.user_id=:user_id'
      '      where t.pktriage = :pktriage;'
      '   end if;'
      '   '
      'end;')
    InsertSQL.Strings = (
      'begin'
      '   null;'
      'end;'
      ''
      ''
      '')
    ModifySQL.Strings = (
      'begin'
      '  null;'
      'end;')
    Left = 212
    Top = 420
  end
  object qReferto: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qRefertoBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'REFERTI'
    PrimeFields.Strings = (
      'PKREFERTI')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'r.pkreferti,'
      'r.NOTE_OSCURE,'
      'r.AUTOR_CONSULT,'
      'r.DAO,'
      'r.diagnosi'
      'from referti r'
      'where r.pkreferti=:pkreferti')
    SQLOptions = [soFetchMemos, soFetchBlobs]
    Params = <
      item
        Name = 'pkreferti'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 76
    Top = 150
    FastFields = (
      'PKREFERTI,3,0'
      'NOTE_OSCURE,30,0'
      'AUTOR_CONSULT,3,0'
      'DAO,3,0'
      'DIAGNOSI,30,0')
    FMultiTable = ()
    UpdateMethod = umCached
    object qRefertoPKREFERTI: TIntegerField
      FieldName = 'PKREFERTI'
    end
    object qRefertoNOTE_OSCURE: TBlobField
      FieldName = 'NOTE_OSCURE'
      BlobType = ftOraBlob
    end
    object qRefertoDIAGNOSI: TBlobField
      FieldName = 'DIAGNOSI'
      BlobType = ftOraBlob
    end
    object qRefertoAUTOR_CONSULT: TIntegerField
      FieldName = 'AUTOR_CONSULT'
    end
    object qRefertoDAO: TIntegerField
      FieldName = 'DAO'
    end
  end
  object sqReferto: TDataSource
    DataSet = qReferto
    Left = 148
    Top = 306
  end
  object ControlloPrestazioni: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'PRESTAZIONI'
    PrimeFields.Strings = (
      'PKPRESTAZIONI')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      't.ceimmagini,'
      't.ris_study_euid,'
      'p.pkprestazioni,'
      'p.progressivo_riga,'
      'p.codicirad_fk,'
      'p.numero_prestazione,'
      'p.triage_fk as pktriage,'
      'p.triage_fk,'
      'p.stato,'
      'p.esito_screening_fk,'
      'p.tipolivello_fk,'
      'c.codice,'
      'c.descrizione,'
      'r.refnegtext_fk,'
      'm.magart_fk,'
      'm.quantita,'
      '0 as qp'
      'from refxtriage rt'
      'join triage t on t.pktriage=rt.triage_fk'
      'join prestazioni p on p.triage_fk = rt.triage_fk'
      'join codicirad c on c.pkcodicirad = p.codicirad_fk'
      
        'join codxrad r on r.codicirad_fk = c.pkcodicirad and r.reparti_f' +
        'k = t.reparti_fk'
      
        'left outer join movim m on m.prestazioni_fk = p.pkprestazioni an' +
        'd m.tipo=1'
      'left outer join magart ma on ma.pkmagart = m.magart_fk'
      'where rt.referti_fk=:pkreferti'
      'and p.stato=1')
    Params = <
      item
        Name = 'pkreferti'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    UpdateObject = updControlloPrestazioni
    QBEMode = False
    Left = 420
    Top = 412
    FastFields = (
      'CEIMMAGINI,3,0'
      'RIS_STUDY_EUID,1,100'
      'PKPRESTAZIONI,6,0'
      'PROGRESSIVO_RIGA,3,0'
      'CODICIRAD_FK,3,0'
      'NUMERO_PRESTAZIONE,3,0'
      'PKTRIAGE,3,0'
      'TRIAGE_FK,3,0'
      'STATO,3,0'
      'ESITO_SCREENING_FK,3,0'
      'TIPOLIVELLO_FK,1,5'
      'CODICE,1,12'
      'DESCRIZIONE,1,100'
      'REFNEGTEXT_FK,3,0'
      'MAGART_FK,3,0'
      'QUANTITA,6,0'
      'QP,3,0')
    FMultiTable = ()
    UpdateMethod = umCached
    object ControlloPrestazioniCEIMMAGINI: TIntegerField
      FieldName = 'CEIMMAGINI'
    end
    object ControlloPrestazioniRIS_STUDY_EUID: TStringField
      FieldName = 'RIS_STUDY_EUID'
      Size = 100
    end
    object ControlloPrestazioniPKPRESTAZIONI: TFloatField
      FieldName = 'PKPRESTAZIONI'
    end
    object ControlloPrestazioniPROGRESSIVO_RIGA: TIntegerField
      FieldName = 'PROGRESSIVO_RIGA'
    end
    object ControlloPrestazioniCODICIRAD_FK: TIntegerField
      FieldName = 'CODICIRAD_FK'
    end
    object ControlloPrestazioniNUMERO_PRESTAZIONE: TIntegerField
      FieldName = 'NUMERO_PRESTAZIONE'
    end
    object ControlloPrestazioniTRIAGE_FK: TIntegerField
      FieldName = 'TRIAGE_FK'
    end
    object ControlloPrestazioniSTATO: TIntegerField
      FieldName = 'STATO'
    end
    object ControlloPrestazioniESITO_SCREENING_FK: TIntegerField
      FieldName = 'ESITO_SCREENING_FK'
    end
    object ControlloPrestazioniTIPOLIVELLO_FK: TStringField
      FieldName = 'TIPOLIVELLO_FK'
      Size = 5
    end
    object ControlloPrestazioniCODICE: TStringField
      FieldName = 'CODICE'
      Size = 12
    end
    object ControlloPrestazioniDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object ControlloPrestazioniREFNEGTEXT_FK: TIntegerField
      FieldName = 'REFNEGTEXT_FK'
    end
    object ControlloPrestazioniMAGART_FK: TIntegerField
      FieldName = 'MAGART_FK'
    end
    object ControlloPrestazioniQUANTITA: TFloatField
      FieldName = 'QUANTITA'
    end
    object ControlloPrestazioniPKTRIAGE: TIntegerField
      FieldName = 'PKTRIAGE'
    end
    object ControlloPrestazioniQP: TIntegerField
      FieldName = 'QP'
    end
  end
  object updControlloPrestazioni: TAstaUpdateSQL
    DeleteSQL.Strings = (
      'begin'
      '   -- per permettere di eliminare fusioni'
      '   null;'
      'end;')
    InsertSQL.Strings = (
      'update PRESTAZIONI'
      'set triage_fk=:pktriage'
      'where pkprestazioni=:pkprestazioni')
    Left = 364
    Top = 448
  end
  object dxBarPopupEsecuzione: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        Visible = True
        ItemName = 'dxBarButton19'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end>
    UseOwnFont = False
    Left = 572
    Top = 120
  end
  object DaFondere: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = DaFondereBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'TRIAGE'
    PrimeFields.Strings = (
      'PKTRIAGE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      't.pktriage,'
      't.ris_study_euid,'
      't.data_visita,'
      't.note_tecnico,'
      't.user_id,'
      't.cod_med_firma,'
      't.servizi_fk,'
      't.statovisita,'
      't.differita,'
      't.tipo_refvoc_fk,'
      't.workstation_fk,'
      't.diagnostica_fk,'
      't.impegnative_fk,'
      't.personale_fk,'
      't.ora_inizio,'
      't.ora_fine,'
      't.reparti_fk,'
      't.cod_med_esegue,'
      't.gresami_fk,'
      'd.descrizione as Diagnostica,'
      'rt.referti_fk,'
      'rt.referti_fk as old_referti_fk,'
      'op.nominativo as Tecnico,'
      'e.nominativo as MedEsecutore'
      'from triage t'
      'join servizi d on d.pkservizi=t.diagnostica_fk'
      'join refxtriage rt on rt.triage_fk=t.pktriage'
      'left join personale op on op.pkpersonale = t.personale_fk'
      'left join personale e on e.pkpersonale = t.cod_med_esegue'
      'where t.impegnative_fk=:impegnative_fk'
      'and t.statovisita=130'
      'and rt.referti_fk<>:referti_fk'
      ' ')
    Params = <
      item
        Name = 'impegnative_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'referti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    UpdateObject = updDaFondere
    QBEMode = False
    Left = 168
    Top = 412
    FastFields = (
      'PKTRIAGE,3,0'
      'RIS_STUDY_EUID,1,100'
      'DATA_VISITA,11,0'
      'NOTE_TECNICO,1,4000'
      'USER_ID,3,0'
      'COD_MED_FIRMA,3,0'
      'SERVIZI_FK,3,0'
      'STATOVISITA,3,0'
      'DIFFERITA,3,0'
      'TIPO_REFVOC_FK,3,0'
      'WORKSTATION_FK,3,0'
      'DIAGNOSTICA_FK,3,0'
      'IMPEGNATIVE_FK,3,0'
      'PERSONALE_FK,3,0'
      'ORA_INIZIO,11,0'
      'ORA_FINE,11,0'
      'REPARTI_FK,3,0'
      'COD_MED_ESEGUE,3,0'
      'GRESAMI_FK,3,0'
      'DIAGNOSTICA,1,100'
      'REFERTI_FK,3,0'
      'OLD_REFERTI_FK,3,0'
      'TECNICO,1,70'
      'MEDESECUTORE,1,70')
    FMultiTable = ()
    UpdateMethod = umCached
    object DaFonderePKTRIAGE: TIntegerField
      DisplayLabel = 'Nr. Esame'
      FieldName = 'PKTRIAGE'
    end
    object DaFondereRIS_STUDY_EUID: TStringField
      DisplayLabel = 'Acc.Number'
      FieldName = 'RIS_STUDY_EUID'
      Size = 100
    end
    object DaFondereDATA_VISITA: TDateTimeField
      FieldName = 'DATA_VISITA'
    end
    object DaFondereNOTE_TECNICO: TStringField
      FieldName = 'NOTE_TECNICO'
      Size = 4000
    end
    object DaFondereUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object DaFondereCOD_MED_FIRMA: TIntegerField
      FieldName = 'COD_MED_FIRMA'
    end
    object DaFondereSERVIZI_FK: TIntegerField
      FieldName = 'SERVIZI_FK'
    end
    object DaFondereSTATOVISITA: TIntegerField
      FieldName = 'STATOVISITA'
    end
    object DaFondereDIFFERITA: TIntegerField
      FieldName = 'DIFFERITA'
    end
    object DaFondereTIPO_REFVOC_FK: TIntegerField
      FieldName = 'TIPO_REFVOC_FK'
    end
    object DaFondereWORKSTATION_FK: TIntegerField
      FieldName = 'WORKSTATION_FK'
    end
    object DaFondereDIAGNOSTICA: TStringField
      DisplayLabel = 'Diagnostica'
      FieldName = 'DIAGNOSTICA'
      Size = 100
    end
    object DaFondereREFERTI_FK: TIntegerField
      FieldName = 'REFERTI_FK'
    end
    object DaFondereTECNICO: TStringField
      FieldName = 'TECNICO'
      Size = 70
    end
    object DaFondereMEDESECUTORE: TStringField
      FieldName = 'MEDESECUTORE'
      Size = 70
    end
    object DaFondereOLD_REFERTI_FK: TIntegerField
      FieldName = 'OLD_REFERTI_FK'
    end
    object DaFondereDIAGNOSTICA_FK: TIntegerField
      FieldName = 'DIAGNOSTICA_FK'
    end
    object DaFondereIMPEGNATIVE_FK: TIntegerField
      FieldName = 'IMPEGNATIVE_FK'
    end
    object DaFonderePERSONALE_FK: TIntegerField
      FieldName = 'PERSONALE_FK'
    end
    object DaFondereORA_INIZIO: TDateTimeField
      FieldName = 'ORA_INIZIO'
    end
    object DaFondereORA_FINE: TDateTimeField
      FieldName = 'ORA_FINE'
    end
    object DaFondereREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object DaFondereCOD_MED_ESEGUE: TIntegerField
      FieldName = 'COD_MED_ESEGUE'
    end
    object DaFondereGRESAMI_FK: TIntegerField
      FieldName = 'GRESAMI_FK'
    end
  end
  object PrestazioniDaFondere: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_PrestazDaFondere'
        Fields = 'TRIAGE_FK'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_PrestazDaFondere'
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = PrestazioniDaFondereBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'PRESTAZIONI'
    PrimeFields.Strings = (
      'PKPRESTAZIONI')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      't.ceimmagini,'
      't.ris_study_euid,'
      'p.pkprestazioni,'
      'p.progressivo_riga,'
      'p.codicirad_fk,'
      'p.numero_prestazione,'
      'p.triage_fk,'
      'p.stato,'
      'p.esito_screening_fk,'
      'p.tipolivello_fk,'
      'c.codice,'
      'c.descrizione,'
      'r.refnegtext_fk,'
      'm.magart_fk,'
      'm.quantita,'
      'rt.referti_fk,'
      'AX.qp'
      'from triage t'
      'join refxtriage rt on rt.triage_fk=t.pktriage'
      'join prestazioni p on p.triage_fk = rt.triage_fk'
      'join codicirad c on c.pkcodicirad = p.codicirad_fk'
      
        'join codxrad r on r.codicirad_fk = c.pkcodicirad and r.reparti_f' +
        'k = t.reparti_fk'
      
        'left outer join movim m on m.prestazioni_fk = p.pkprestazioni an' +
        'd m.tipo=1'
      'left outer join magart ma on ma.pkmagart = m.magart_fk'
      'join (select t2.pktriage,count(*) as qp'
      '      from triage t2'
      '      join prestazioni p2 on p2.triage_fk=t2.pktriage'
      '      join servizi s on s.pkservizi=t2.diagnostica_fk'
      '      where t2.impegnative_fk=:impegnative_fk'
      '      and p2.stato=1'
      '      group by t2.pktriage'
      '      ) AX on AX.pktriage=t.pktriage'
      'where t.impegnative_fk=:impegnative_fk'
      'and t.statovisita=130'
      '--and rt.referti_fk<>: referti_fk'
      'and p.stato=1'
      ' ')
    Params = <
      item
        Name = 'impegnative_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      030000000A0000001000000050524F475245535349564F5F5249474101000000
      000C0000005052455354535045435F464B0100000000120000004E554D45524F
      5F5052455354415A494F4E4501000000000D000000504B5052455354415A494F
      4E4901000000000A0000005449504F5F50524553540100000000050000005354
      41544F01000000000E000000444941474E4F53544943415F464B01000000000C
      0000005052455354534552565F464B01000000000B0000004445534352495A49
      4F4E450100000000090000005452494147455F464B0100000000}
    Left = 156
    Top = 495
    FastFields = (
      'CEIMMAGINI,3,0'
      'RIS_STUDY_EUID,1,100'
      'PKPRESTAZIONI,6,0'
      'PROGRESSIVO_RIGA,3,0'
      'CODICIRAD_FK,3,0'
      'NUMERO_PRESTAZIONE,3,0'
      'TRIAGE_FK,3,0'
      'STATO,3,0'
      'ESITO_SCREENING_FK,3,0'
      'TIPOLIVELLO_FK,1,5'
      'CODICE,1,12'
      'DESCRIZIONE,1,100'
      'REFNEGTEXT_FK,3,0'
      'MAGART_FK,3,0'
      'QUANTITA,6,0'
      'REFERTI_FK,3,0'
      'QP,3,0')
    FMultiTable = ()
    UpdateMethod = umCached
    object PrestazioniDaFonderePKPRESTAZIONI: TFloatField
      DisplayWidth = 10
      FieldName = 'PKPRESTAZIONI'
    end
    object PrestazioniDaFonderePROGRESSIVO_RIGA: TIntegerField
      DisplayWidth = 10
      FieldName = 'PROGRESSIVO_RIGA'
    end
    object PrestazioniDaFondereNUMERO_PRESTAZIONE: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUMERO_PRESTAZIONE'
    end
    object PrestazioniDaFondereTRIAGE_FK: TIntegerField
      DisplayWidth = 10
      FieldName = 'TRIAGE_FK'
    end
    object PrestazioniDaFondereSTATO: TIntegerField
      DisplayWidth = 10
      FieldName = 'STATO'
    end
    object PrestazioniDaFondereDESCRIZIONE: TStringField
      DisplayLabel = 'Esame'
      DisplayWidth = 50
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
    object PrestazioniDaFondereCODICIRAD_FK: TIntegerField
      FieldName = 'CODICIRAD_FK'
    end
    object PrestazioniDaFondereCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object PrestazioniDaFondereREFNEGTEXT_FK: TIntegerField
      FieldName = 'REFNEGTEXT_FK'
    end
    object PrestazioniDaFondereESITO_SCREENING_FK: TIntegerField
      DisplayLabel = 'Esito screening'
      FieldName = 'ESITO_SCREENING_FK'
    end
    object PrestazioniDaFondereTIPOLIVELLO_FK: TStringField
      FieldName = 'TIPOLIVELLO_FK'
      Size = 5
    end
    object PrestazioniDaFondereMAGART_FK: TIntegerField
      DisplayLabel = 'Radiofarmaco'
      FieldName = 'MAGART_FK'
    end
    object PrestazioniDaFondereQUANTITA: TFloatField
      DisplayLabel = 'Dose'
      FieldName = 'QUANTITA'
    end
    object PrestazioniDaFondereCEIMMAGINI: TIntegerField
      FieldName = 'CEIMMAGINI'
    end
    object PrestazioniDaFondereRIS_STUDY_EUID: TStringField
      DisplayLabel = 'Acc.Number'
      FieldName = 'RIS_STUDY_EUID'
      Size = 100
    end
    object PrestazioniDaFondereREFERTI_FK: TIntegerField
      FieldName = 'REFERTI_FK'
    end
    object PrestazioniDaFondereQP: TIntegerField
      FieldName = 'QP'
    end
  end
  object Fusi: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = FusiBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'TRIAGE'
    PrimeFields.Strings = (
      'PKTRIAGE')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      't.pktriage,'
      't.ris_study_euid,'
      't.data_visita,'
      't.note_tecnico,'
      't.user_id,'
      't.cod_med_firma,'
      't.servizi_fk,'
      't.statovisita,'
      't.differita,'
      't.tipo_refvoc_fk,'
      't.workstation_fk,'
      't.diagnostica_fk,'
      't.impegnative_fk,'
      't.personale_fk,'
      't.ora_inizio,'
      't.ora_fine,'
      't.reparti_fk,'
      't.cod_med_esegue,'
      't.gresami_fk,'
      'd.descrizione as Diagnostica,'
      'rt.referti_fk,'
      'rt.referti_fk as old_referti_fk,'
      'op.nominativo as Tecnico,'
      'e.nominativo as MedEsecutore'
      'from triage t'
      'join servizi d on d.pkservizi=t.diagnostica_fk'
      'join refxtriage rt on rt.triage_fk=t.pktriage'
      'left join personale op on op.pkpersonale = t.personale_fk'
      'left join personale e on e.pkpersonale = t.cod_med_esegue'
      'where t.impegnative_fk=:impegnative_fk'
      'and t.statovisita=130'
      'and t.pktriage<>:pktriage'
      'and rt.referti_fk=:referti_fk'
      ' '
      ' '
      ' ')
    Params = <
      item
        Name = 'impegnative_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'pktriage'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'referti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 219
    Top = 485
    FastFields = (
      'PKTRIAGE,3,0'
      'RIS_STUDY_EUID,1,100'
      'DATA_VISITA,11,0'
      'NOTE_TECNICO,1,4000'
      'USER_ID,3,0'
      'COD_MED_FIRMA,3,0'
      'SERVIZI_FK,3,0'
      'STATOVISITA,3,0'
      'DIFFERITA,3,0'
      'TIPO_REFVOC_FK,3,0'
      'WORKSTATION_FK,3,0'
      'DIAGNOSTICA_FK,3,0'
      'IMPEGNATIVE_FK,3,0'
      'PERSONALE_FK,3,0'
      'ORA_INIZIO,11,0'
      'ORA_FINE,11,0'
      'REPARTI_FK,3,0'
      'COD_MED_ESEGUE,3,0'
      'GRESAMI_FK,3,0'
      'DIAGNOSTICA,1,100'
      'REFERTI_FK,3,0'
      'OLD_REFERTI_FK,3,0'
      'TECNICO,1,70'
      'MEDESECUTORE,1,70')
    FMultiTable = ()
    UpdateMethod = umCached
    object FusiPKTRIAGE: TIntegerField
      DisplayLabel = 'Nr. Esame'
      FieldName = 'PKTRIAGE'
    end
    object FusiRIS_STUDY_EUID: TStringField
      DisplayLabel = 'Nr. Esame'
      FieldName = 'RIS_STUDY_EUID'
      Size = 100
    end
    object FusiDATA_VISITA: TDateTimeField
      FieldName = 'DATA_VISITA'
    end
    object FusiNOTE_TECNICO: TStringField
      FieldName = 'NOTE_TECNICO'
      Size = 4000
    end
    object FusiUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object FusiCOD_MED_FIRMA: TIntegerField
      FieldName = 'COD_MED_FIRMA'
    end
    object FusiSERVIZI_FK: TIntegerField
      FieldName = 'SERVIZI_FK'
    end
    object FusiSTATOVISITA: TIntegerField
      FieldName = 'STATOVISITA'
    end
    object FusiDIFFERITA: TIntegerField
      FieldName = 'DIFFERITA'
    end
    object FusiTIPO_REFVOC_FK: TIntegerField
      FieldName = 'TIPO_REFVOC_FK'
    end
    object FusiWORKSTATION_FK: TIntegerField
      FieldName = 'WORKSTATION_FK'
    end
    object FusiDIAGNOSTICA: TStringField
      DisplayLabel = 'Diagnostica'
      FieldName = 'DIAGNOSTICA'
      Size = 100
    end
    object FusiREFERTI_FK: TIntegerField
      FieldName = 'REFERTI_FK'
    end
    object FusiOLD_REFERTI_FK: TIntegerField
      FieldName = 'OLD_REFERTI_FK'
    end
    object FusiTECNICO: TStringField
      FieldName = 'TECNICO'
      Size = 70
    end
    object FusiMEDESECUTORE: TStringField
      FieldName = 'MEDESECUTORE'
      Size = 70
    end
    object FusiDIAGNOSTICA_FK: TIntegerField
      FieldName = 'DIAGNOSTICA_FK'
    end
    object FusiIMPEGNATIVE_FK: TIntegerField
      FieldName = 'IMPEGNATIVE_FK'
    end
    object FusiPERSONALE_FK: TIntegerField
      FieldName = 'PERSONALE_FK'
    end
    object FusiORA_INIZIO: TDateTimeField
      FieldName = 'ORA_INIZIO'
    end
    object FusiORA_FINE: TDateTimeField
      FieldName = 'ORA_FINE'
    end
    object FusiREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object FusiCOD_MED_ESEGUE: TIntegerField
      FieldName = 'COD_MED_ESEGUE'
    end
    object FusiGRESAMI_FK: TIntegerField
      FieldName = 'GRESAMI_FK'
    end
  end
  object dxBarPopupAnamnesi: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxAnamnesi'
      end
      item
        Visible = True
        ItemName = 'dxBarButton17'
      end
      item
        Visible = True
        ItemName = 'dxBarButton16'
      end>
    UseOwnFont = False
    Left = 332
    Top = 208
  end
  object Anamnesi: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    OnNewRecord = AnamnesiNewRecord
    BeforeQuery = AnamnesiBeforeQuery
    SequenceField.Field = 'PKANAMNESI'
    SequenceField.Sequence = 'ANAMNESI_PKANAMNESI'
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'Read Only'
    UpdateTableName = 'ANAMNESI'
    PrimeFields.Strings = (
      'PKANAMNESI')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      'a.pkanamnesi, '
      'a.assistibili_fk, '
      'a.anamnesi, '
      'a.data_anamnesi, '
      'a.user_anamnesi'
      'from anamnesi a'
      'where a.assistibili_fk = :assistibili_fk')
    Params = <
      item
        Name = 'assistibili_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 21
      end>
    QBEMode = False
    Left = 240
    Top = 152
    FastFields = (
      'PKANAMNESI,3,0'
      'ASSISTIBILI_FK,3,0'
      'ANAMNESI,1,4000'
      'DATA_ANAMNESI,11,0'
      'USER_ANAMNESI,3,0')
    FMultiTable = ()
    UpdateMethod = umCached
    object AnamnesiPKANAMNESI: TIntegerField
      FieldName = 'PKANAMNESI'
    end
    object AnamnesiASSISTIBILI_FK: TIntegerField
      FieldName = 'ASSISTIBILI_FK'
    end
    object AnamnesiANAMNESI: TStringField
      DisplayLabel = 'Anamnesi'
      FieldName = 'ANAMNESI'
      Size = 4000
    end
    object AnamnesiDATA_ANAMNESI: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA_ANAMNESI'
      DisplayFormat = 'ddddd'
    end
    object AnamnesiUSER_ANAMNESI: TIntegerField
      FieldName = 'USER_ANAMNESI'
    end
  end
  object sAnamnesi: TDataSource
    DataSet = Anamnesi
    Left = 288
    Top = 168
  end
  object updPrecedenti: TAstaUpdateSQL
    ModifySQL.Strings = (
      'update triage t'
      'set t.ceimmagini = :ceimmagini,'
      'user_id = :user_id'
      'where t.pktriage = :pktriage;')
    Left = 796
    Top = 460
  end
end
