inherited FFondiReferto: TFFondiReferto
  Left = 597
  Top = 120
  ActiveControl = cxGridDaFondere
  Caption = 'Fondi referto'
  ClientHeight = 462
  ClientWidth = 610
  PixelsPerInch = 96
  TextHeight = 24
  inherited cxGroupBox1: TcxGroupBox
    Top = 412
    Width = 610
    inherited btSalva: TcxButton
      ModalResult = 1
    end
    inherited cxPersonalizza: TcxButton
      Left = 575
    end
  end
  object Panel3: TPanel [1]
    Left = 0
    Top = 0
    Width = 610
    Height = 249
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 1
    object cxGridDaFondere: TcxGrid
      Left = 0
      Top = 34
      Width = 610
      Height = 215
      Align = alClient
      TabOrder = 1
      object GridDaFondere: TcxGridDBTableView
        OnDblClick = GridDaFondereDblClick
        OnDragDrop = GridDaFondereDragDrop
        OnDragOver = GridDaFondereDragOver
        OnKeyDown = GridDaFondereKeyDown
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
        DataController.DataSource = sDaFondere
        DataController.KeyFieldNames = 'PKTRIAGE'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object GridDaFondereRIS_STUDY_EUID: TcxGridDBColumn
          DataBinding.FieldName = 'RIS_STUDY_EUID'
          Width = 83
        end
        object GridDaFondereDIAGNOSTICA: TcxGridDBColumn
          DataBinding.FieldName = 'DIAGNOSTICA'
          Width = 263
        end
        object GridDaFonderePKTRIAGE: TcxGridDBColumn
          DataBinding.FieldName = 'PKTRIAGE'
          Width = 62
        end
      end
      object cxGridDaFondereLevel1: TcxGridLevel
        GridView = GridDaFondere
      end
    end
    object fcLabel6: TcxHeader
      Left = 0
      Top = 0
      Width = 610
      Height = 34
      Align = alTop
      AllowSort = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Source Sans Pro'
      Font.Style = [fsBold]
      Images = FDMCommon.imIcone
      ParentFont = False
      ResizeUpdate = False
      Sections = <
        item
          Alignment = taCenter
          AutoSize = True
          Text = 'Referti da fondere'
          Width = 570
        end
        item
          AllowClick = True
          ImageIndex = 58
          MaxWidth = 30
          MinWidth = 20
          Width = 20
        end
        item
          AllowClick = True
          ImageIndex = 57
          MaxWidth = 30
          MinWidth = 20
          Width = 20
        end>
    end
  end
  object Panel4: TPanel [2]
    Left = 0
    Top = 249
    Width = 610
    Height = 163
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object fcLabel1: TcxHeader
      Left = 0
      Top = 0
      Width = 610
      Height = 34
      Align = alTop
      AllowSort = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Source Sans Pro'
      Font.Style = [fsBold]
      Images = FDMCommon.imIcone
      ParentFont = False
      Sections = <
        item
          Alignment = taCenter
          AutoSize = True
          Text = 'Referti fusi'
          Width = 570
        end
        item
          AllowClick = True
          ImageIndex = 55
          MaxWidth = 30
          MinWidth = 20
          Width = 20
        end
        item
          AllowClick = True
          ImageIndex = 56
          MaxWidth = 30
          MinWidth = 20
          Width = 20
        end>
    end
    object cxGridFusi: TcxGrid
      Left = 0
      Top = 34
      Width = 610
      Height = 129
      Align = alClient
      TabOrder = 1
      object GridFusi: TcxGridDBTableView
        DragMode = dmAutomatic
        OnDblClick = GridFusiDblClick
        OnDragDrop = GridFusiDragDrop
        OnDragOver = GridFusiDragOver
        OnKeyDown = GridFusiKeyDown
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
        DataController.DataSource = sFusi
        DataController.KeyFieldNames = 'PKTRIAGE'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object GridFusiRIS_STUDY_EUID: TcxGridDBColumn
          DataBinding.FieldName = 'RIS_STUDY_EUID'
          Width = 85
        end
        object GridFusiDIAGNOSTICA: TcxGridDBColumn
          DataBinding.FieldName = 'DIAGNOSTICA'
          Width = 259
        end
        object GridFusiPKTRIAGE: TcxGridDBColumn
          DataBinding.FieldName = 'PKTRIAGE'
          Width = 64
        end
      end
      object cxGridFusiLevel1: TcxGridLevel
        GridView = GridFusi
      end
    end
  end
  inherited csEZKeys1: TcsEZKeys
    Left = 32
    Top = 24
  end
  object ActionList1: TActionList
    Images = FDMCommon.cxImageNavigator16
    Left = 44
    Top = 88
    object aSelezionaSingoloCodice: TAction
      Caption = 'aSelezionaSingoloCodice'
      OnExecute = aSelezionaSingoloCodiceExecute
      OnUpdate = aSelezionaSingoloCodiceUpdate
    end
    object aSelezionaTuttiCodici: TAction
      Caption = 'aSelezionaTuttiCodici'
      OnExecute = aSelezionaTuttiCodiciExecute
      OnUpdate = aSelezionaTuttiCodiciUpdate
    end
    object aDeselezionaTuttiCodici: TAction
      Caption = 'aDeselezionaTuttiCodici'
      OnExecute = aDeselezionaTuttiCodiciExecute
      OnUpdate = aDeselezionaTuttiCodiciUpdate
    end
    object aDeselezionaSingolo: TAction
      Caption = 'aDeselezionaSingolo'
      OnExecute = aDeselezionaSingoloExecute
      OnUpdate = aDeselezionaSingoloUpdate
    end
  end
  object sDaFondere: TDataSource
    DataSet = DaFondere
    Left = 80
    Top = 28
  end
  object DaFondere: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_DaFondere'
        Fields = 'PKTRIAGE'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_DaFondere'
    Aggregates = <>
    Active = True
    Constraints = <>
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
    QBEMode = False
    Left = 148
    Top = 36
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
    object DaFondereOLD_REFERTI_FK: TIntegerField
      FieldName = 'OLD_REFERTI_FK'
    end
    object DaFondereTECNICO: TStringField
      FieldName = 'TECNICO'
      Size = 70
    end
    object DaFondereMEDESECUTORE: TStringField
      FieldName = 'MEDESECUTORE'
      Size = 70
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
  object Fusi: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_Fusi'
        Fields = 'PKTRIAGE'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_Fusi'
    Aggregates = <>
    Active = True
    Constraints = <>
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
        Name = 'referti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 179
    Top = 197
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
  object sFusi: TDataSource
    DataSet = Fusi
    Left = 128
    Top = 221
  end
end
