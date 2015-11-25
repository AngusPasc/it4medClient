inherited FRefer_Text: TFRefer_Text
  Left = 416
  Top = 64
  Width = 1314
  Height = 863
  PixelsPerInch = 96
  TextHeight = 28
  inherited cxGroupBox1: TcxGroupBox
    Top = 774
    Height = 50
    Width = 1302
    inherited btSalva: TcxButton
      Top = 4
      Width = 100
      Font.Height = -22
    end
    inherited btAnnulla: TcxButton
      Left = 242
      Top = 4
      Width = 100
      Font.Height = -22
    end
    inherited cxPersonalizza: TcxButton
      Left = 1268
      Height = 48
    end
    inherited fcImageBtn3: TcxButton
      Left = 578
      Top = 4
      Width = 100
      Height = 41
      Font.Height = -22
      Font.Style = []
    end
    inherited btDoppiaFirma: TcxButton
      Left = 462
      Top = 4
      Width = 100
      Height = 41
      Font.Height = -22
      Font.Style = []
    end
    inherited fcImageBtn1: TcxButton
      Left = 354
      Top = 4
      Width = 100
      Height = 41
      Font.Height = -22
      Font.Style = []
    end
    inherited fcImageBtn4: TcxButton
      Left = 1075
      Top = 5
      Height = 41
      Font.Charset = ANSI_CHARSET
      Font.Height = -22
      Font.Style = []
    end
    inherited fcImageBtn5: TcxButton
      Left = 1010
      Top = 5
      Height = 41
      Font.Charset = ANSI_CHARSET
      Font.Height = -22
      Font.Style = []
    end
    inherited cxButton1: TcxButton
      Left = 125
      Top = 4
      Width = 100
      Height = 41
      Font.Height = -22
      Font.Style = []
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 1302
    Height = 774
    Font.Height = -25
    ParentFont = False
    inherited WPQuesito: TcxDBMemo
      Top = 453
      Style.IsFontAssigned = True
      Height = 688
      Width = 746
    end
    object WPReferto: TcxDBMemo [5]
      Left = 21
      Top = 662
      Cursor = crIBeam
      DataBinding.DataField = 'DIAGNOSI'
      DataBinding.DataSource = sqReferto
      ParentFont = False
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 16
      OnEnter = WPRefertoEnter
      OnExit = WPRefertoExit
      Height = 530
      Width = 964
    end
    inherited cxGridPrestazioni: TcxGrid
      Left = 808
      Top = 489
      Width = 1173
      Height = 663
      inherited GridPrestazioni: TcxGridDBTableView
        OptionsData.CancelOnExit = False
      end
    end
    inherited dxBarDockControl4: TdxBarDockControl
      Left = 808
      Top = 441
      Width = 1174
      Height = 37
    end
    inherited dxBarDockControl3: TdxBarDockControl
      Top = 614
      Width = 961
      Height = 37
    end
    inherited cxGrid1: TcxGrid
      Left = 806
      Top = 662
      Width = 893
      Height = 1376
      TabOrder = 18
    end
    inherited dxBarDockControl5: TdxBarDockControl
      Left = 806
      Top = 614
      Width = 893
      Height = 37
    end
    inherited cxGridEsame: TcxGrid
      Top = 93
      Width = 956
    end
    inherited cxGridAnamnesi: TcxGrid
      Width = 501
      Height = 18258
    end
    inherited dxBarDockControl1: TdxBarDockControl
      Width = 200
      Height = 37
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      Index = -1
    end
    inherited dxLayoutControl1Group2: TdxLayoutGroup
      Index = 0
    end
    inherited dxLayoutControl1Group3: TdxLayoutGroup
      Index = 0
    end
    inherited dxLayoutControl1Group8: TdxLayoutGroup
      Index = 0
    end
    inherited dxLayoutControl1Item3: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl1Item12: TdxLayoutItem
      Index = 1
    end
    inherited dxLayoutControl1Item4: TdxLayoutItem
      Index = 2
    end
    inherited dxLayoutControl1Item5: TdxLayoutItem
      Index = 3
    end
    inherited dxLayoutControl1Group17: TdxLayoutGroup
      Index = 1
    end
    inherited dxLayoutControlProvenienza: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl1Group21: TdxLayoutGroup
      Index = 1
    end
    inherited dxLayoutControl1Group4: TdxLayoutGroup
      Index = 0
    end
    inherited dxLayoutControlServizio: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl1Item14: TdxLayoutItem
      Index = 1
    end
    inherited dxLayoutControl1Group23: TdxLayoutGroup
      Index = 1
    end
    inherited dxLayoutControl1Item7: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl1Item8: TdxLayoutItem
      Index = 1
    end
    inherited dxLayoutControl1Group9: TdxLayoutGroup
      Index = 1
    end
    inherited dxLayoutControl1Group5: TdxLayoutGroup
      Index = 0
    end
    inherited dxLayoutControl1Item2: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl1Item6: TdxLayoutItem
      Index = 1
    end
    inherited dxLayoutControl1Group14: TdxLayoutGroup
      Index = 1
    end
    inherited dxLayoutControl1Group15: TdxLayoutGroup
      Index = 0
    end
    inherited dxLayoutControl1Group11: TdxLayoutGroup
      Index = 0
    end
    inherited dxLayoutControl1Group7: TdxLayoutGroup
      SizeOptions.Width = 523
      Index = 0
    end
    inherited dxLayoutControl1Item22: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutGroupAnamnesi: TdxLayoutGroup
      Index = 1
    end
    inherited dxLayoutControl1Item1: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl1Group18: TdxLayoutGroup
      Index = 1
    end
    inherited dxLayoutControl1Item24: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl1Item23: TdxLayoutItem
      Index = 1
    end
    inherited dxLayoutControl1Group16: TdxLayoutGroup
      Index = 1
    end
    inherited dxLayoutControlReferto: TdxLayoutGroup
      Index = 0
    end
    inherited dxLayoutControl1Item25: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControlEditor: TdxLayoutItem
      Control = WPReferto
      Index = 1
    end
    inherited dxLayoutControl1Group13: TdxLayoutGroup
      Index = 1
    end
    inherited dxLayoutControl1Item27: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl1Item26: TdxLayoutItem
      Index = 1
    end
  end
  inherited ActionList1: TActionList
    Left = 352
    Top = 223
  end
  inherited Prestazioni: TAstaClientDataSet
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
  end
  inherited ControlloTriage: TAstaClientDataSet
    Left = 404
    Top = 221
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
  end
  inherited Esame: TAstaClientDataSet
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
  end
  inherited dxBarManager1: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManager1Bar1: TdxBar
      FloatClientWidth = 109
      FloatClientHeight = 66
      Font.Height = -22
    end
    inherited dxBarManager1Bar2: TdxBar
      FloatClientWidth = 127
      FloatClientHeight = 88
      Font.Height = -22
    end
    inherited dxBarManager1Bar3: TdxBar
      FloatClientWidth = 80
      FloatClientHeight = 44
      Font.Height = -22
    end
    inherited dxBarManager1Bar4: TdxBar
      Font.Height = -22
    end
  end
  inherited dxBarPopupMenu1: TdxBarPopupMenu
    Font.Height = -22
    UseOwnFont = False
  end
  inherited qyPrecedenti: TAstaClientDataSet
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
    UpdateMethod = umManual
  end
  inherited dxBarPopupPrecedenti: TdxBarPopupMenu
    Font.Height = -22
    UseOwnFont = False
  end
  inherited GetRefertoNegativo: TAstaClientDataSet
    FastFields = (
      'REF_NEGATIVO,30,0')
    FMultiTable = ()
    UpdateMethod = umManual
  end
  inherited Impegnativa: TAstaClientDataSet
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
  end
  inherited AltreFirme: TAstaClientDataSet
    FastFields = (
      'COD_MED_FIRMA,3,0'
      'TRIAGE_FK,3,0'
      'TIPO_FIRMA,1,1'
      'NOMINATIVO,1,70')
    FMultiTable = ()
    UpdateMethod = umCached
  end
  inherited updControlloTriage: TAstaUpdateSQL
    Left = 316
    Top = 224
  end
  inherited Radiologie: TAstaClientDataSet
    FastFields = (
      'REPARTI_FK,3,0'
      'DESCRIZIONE,1,60'
      'OSPEDALE,1,80')
    FMultiTable = ()
    UpdateMethod = umManual
  end
  inherited qCopiaDiagnosi: TAstaClientDataSet
    FastFields = (
      'DIAGNOSI,30,0')
    FMultiTable = ()
    UpdateMethod = umManual
  end
  inherited qyRiapri: TAstaClientDataSet
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  inherited Oscuramento: TAstaClientDataSet
    FastFields = (
      'DESCRIZIONE,1,100'
      'ATTIVO,3,0'
      'OSCURA_FK,1,5'
      'REFERTI_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umCached
  end
  inherited qReferto: TAstaClientDataSet
    FastFields = (
      'PKREFERTI,3,0'
      'NOTE_OSCURE,30,0'
      'AUTOR_CONSULT,3,0'
      'DAO,3,0'
      'DIAGNOSI,30,0')
    FMultiTable = ()
    UpdateMethod = umCached
  end
  inherited ControlloPrestazioni: TAstaClientDataSet
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
  end
  inherited dxBarPopupEsecuzione: TdxBarPopupMenu
    Font.Height = -22
    UseOwnFont = False
  end
  inherited DaFondere: TAstaClientDataSet
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
  end
  inherited PrestazioniDaFondere: TAstaClientDataSet
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
  end
  inherited Fusi: TAstaClientDataSet
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
  end
  inherited dxBarPopupAnamnesi: TdxBarPopupMenu
    Font.Height = -22
    UseOwnFont = False
    Left = 348
    Top = 168
  end
  inherited Anamnesi: TAstaClientDataSet
    FastFields = (
      'PKANAMNESI,3,0'
      'ASSISTIBILI_FK,3,0'
      'ANAMNESI,1,4000'
      'DATA_ANAMNESI,11,0'
      'USER_ANAMNESI,3,0')
    FMultiTable = ()
    UpdateMethod = umCached
  end
end