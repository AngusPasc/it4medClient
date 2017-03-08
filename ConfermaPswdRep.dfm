inherited FConfermaPswdRep: TFConfermaPswdRep
  Left = 742
  Top = 228
  Caption = 'it4med'
  ClientHeight = 268
  ClientWidth = 468
  Constraints.MinHeight = 300
  KeyPreview = True
  OnCloseQuery = FormCloseQuery
  OnCreate = BaseFormCreate
  OnKeyDown = BaseFormKeyDown
  PixelsPerInch = 96
  TextHeight = 24
  inherited cxGroupBox1: TcxGroupBox
    Top = 218
    TabOrder = 1
    Width = 468
    inherited btSalva: TcxButton
      Hint = 'Conferma identificativo'
      Action = Conferma
    end
    inherited cxPersonalizza: TcxButton
      Left = 433
      TabOrder = 3
    end
    object cxBtnTestAV: TcxButton
      Left = 320
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Test AV'
      TabOrder = 2
      OnClick = cxBtnTestAVClick
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 468
    Height = 218
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = FDMCommon.dxLayoutSkinLookAndFeel1
    object cxReparti: TcxLookupComboBox
      Left = 99
      Top = 96
      AutoSize = False
      Enabled = False
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'REPARTI_FK'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          Width = 550
          FieldName = 'REPARTO'
        end
        item
          Width = 500
          FieldName = 'INTESTAREF3'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = sqryUser
      Style.HotTrack = False
      TabOrder = 3
      OnEnter = cxRepartiEnter
      OnExit = cxRepartiExit
      OnKeyDown = cxRepartiKeyDown
      Height = 31
      Width = 213
    end
    object cxUtente: TcxMaskEdit
      Left = 99
      Top = 11
      Style.HotTrack = False
      TabOrder = 0
      OnKeyDown = cxUtenteKeyDown
      Width = 213
    end
    object cxPswd: TcxMaskEdit
      Left = 99
      Top = 53
      Hint = 'Immettere identificativo per controllo'
      AutoSize = False
      Properties.CharCase = ecLowerCase
      Properties.EchoMode = eemPassword
      Properties.MaxLength = 20
      Properties.ReadOnly = False
      Style.HotTrack = False
      TabOrder = 1
      OnEnter = cxPswdEnter
      OnExit = cxPswdExit
      OnKeyDown = cxPswdKeyDown
      Height = 31
      Width = 213
    end
    object btnModPswd: TcxButton
      Left = 322
      Top = 53
      Width = 111
      Height = 33
      Action = aModificaPswd
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Source Sans Pro'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      LookAndFeel.Kind = lfUltraFlat
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      LayoutLookAndFeel = FDMCommon.dxLayoutSkinLookAndFeel1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutReparto: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Farmacia'
      Control = cxReparti
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Utente'
      Control = cxUtente
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutPswd: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Password'
      Control = cxPswd
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutBtnModificaPswd: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = ' '
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      Control = btnModPswd
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group8
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
  end
  inherited csEZKeys1: TcsEZKeys
    KeyPreview = True
    Left = 160
    Top = 104
  end
  inherited PopupMenuPersonalizza: TPopupMenu
    Left = 348
    Top = 120
  end
  object ActionList1: TActionList
    Images = FDMCommon.cxImageNavigator16
    Left = 56
    Top = 60
    object Conferma: TAction
      Caption = 'Conferma'
      ImageIndex = 9
      OnExecute = ConfermaExecute
      OnUpdate = ConfermaUpdate
    end
    object aValidaPswd: TAction
      Caption = 'aValidaPswd'
      OnExecute = aValidaPswdExecute
    end
    object aModificaPswd: TAction
      Caption = 'Modifica'
      Hint = 'Modifica password'
      ImageIndex = 18
      OnExecute = aModificaPswdExecute
      OnUpdate = aModificaPswdUpdate
    end
  end
  object qryUser: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qryUserBeforeQuery
    SequenceField.ApplyMoment = amOnNewRecord
    OnAfterPopulate = qryUserAfterPopulate
    EditMode = 'Read Only'
    UpdateTableName = 'PERSONALE'
    PrimeFields.Strings = (
      'REPARTI_FK')
    AstaClientSocket = FDMCommon.AstaClientSocket
    SQL.Strings = (
      'select'
      ' p.NOMINATIVO as REAL_NAME ,'
      ' p.PASSWORD as USER_PWD ,'
      ' p.PKPERSONALE as USER_ID,'
      ' p.Mod_Password as LAST_PWD_CHANGE ,'
      ' p.data_fine as EXPIRATION_DATE,'
      ' p.isadmin,'
      ' p.admin as superuser,'
      ' p.profilo_vocale,'
      ' pr.cod_funzione,'
      ' p.CODICE_FISCALE,'
      ' p.ESTRAZIONE_DATI,'
      ' p.FUNZ_INTERNI,'
      ' p.DBLCLICKTIME,'
      ' p.tipo_carta,'
      ' p.allow_overbooking,'
      ' p.RESET_PSWD,'
      ' p.LOGIN_NT,'
      ' pr.rep_def,'
      ' pr.reparti_fk,'
      ' pr.servizi_fk,'
      ' r.descrizione as Reparto,'
      ' o.descrizione as Ospedale,'
      ' s.descrizione as DescrServizio,'
      ' s.intestaref3,'
      ' tb.sposta,'
      ' tb.eseguito'
      'from  Personale p'
      'join persxrep pr on pr.personale_fk=p.pkpersonale'
      'join reparti r on r.pkreparti = pr.reparti_fk'
      'join ospedali o on o.codice = r.osp_codice'
      'left join servizi s on s.pkservizi = pr.servizi_fk'
      'left join tabfunzioni tb on tb.pktabfunzioni = pr.cod_funzione'
      'where p.PASSWORD = :USER_PWD'
      'and upper(p.LOGIN_NT) = upper(:USER_NAME)'
      'and (p.data_fine is null or p.data_fine>sysdate)'
      'and (r.data_fine is null or r.data_fine>sysdate)'
      ':funz_interni'
      'and (:reparti_fk is null or pr.reparti_fk=:reparti_fk)'
      ' '
      ' '
      ' ')
    Params = <
      item
        Name = 'USER_PWD'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'USER_NAME'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'funz_interni'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = '#'
      end
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 116
    Top = 80
    FastFields = (
      'REAL_NAME,1,70'
      'USER_PWD,1,30'
      'USER_ID,3,0'
      'LAST_PWD_CHANGE,11,0'
      'EXPIRATION_DATE,11,0'
      'ISADMIN,3,0'
      'SUPERUSER,3,0'
      'PROFILO_VOCALE,1,30'
      'COD_FUNZIONE,3,0'
      'CODICE_FISCALE,1,70'
      'ESTRAZIONE_DATI,3,0'
      'FUNZ_INTERNI,3,0'
      'DBLCLICKTIME,3,0'
      'TIPO_CARTA,3,0'
      'ALLOW_OVERBOOKING,3,0'
      'RESET_PSWD,3,0'
      'LOGIN_NT,1,30'
      'REP_DEF,3,0'
      'REPARTI_FK,3,0'
      'SERVIZI_FK,3,0'
      'REPARTO,1,60'
      'OSPEDALE,1,80'
      'DESCRSERVIZIO,1,100'
      'INTESTAREF3,1,100'
      'SPOSTA,3,0'
      'ESEGUITO,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qryUserREAL_NAME: TStringField
      FieldName = 'REAL_NAME'
      Size = 40
    end
    object qryUserUSER_PWD: TStringField
      FieldName = 'USER_PWD'
      Size = 30
    end
    object qryUserUSER_ID: TIntegerField
      FieldName = 'USER_ID'
      Origin = 'pkpersonale'
    end
    object qryUserLAST_PWD_CHANGE: TDateTimeField
      FieldName = 'LAST_PWD_CHANGE'
    end
    object qryUserEXPIRATION_DATE: TDateTimeField
      FieldName = 'EXPIRATION_DATE'
    end
    object qryUserISADMIN: TIntegerField
      FieldName = 'ISADMIN'
    end
    object qryUserPROFILO_VOCALE: TStringField
      FieldName = 'PROFILO_VOCALE'
      Size = 30
    end
    object qryUserCOD_FUNZIONE: TIntegerField
      FieldName = 'COD_FUNZIONE'
    end
    object qryUserSUPERUSER: TIntegerField
      FieldName = 'SUPERUSER'
    end
    object qryUserFUNZ_INTERNI: TIntegerField
      FieldName = 'FUNZ_INTERNI'
    end
    object qryUserESTRAZIONE_DATI: TIntegerField
      FieldName = 'ESTRAZIONE_DATI'
    end
    object qryUserSERVIZI_FK: TIntegerField
      FieldName = 'SERVIZI_FK'
    end
    object qryUserREPARTO: TStringField
      FieldName = 'REPARTO'
      Size = 60
    end
    object qryUserOSPEDALE: TStringField
      FieldName = 'OSPEDALE'
      Size = 80
    end
    object qryUserTIPO_CARTA: TIntegerField
      FieldName = 'TIPO_CARTA'
    end
    object qryUserDESCRSERVIZIO: TStringField
      FieldName = 'DESCRSERVIZIO'
      Size = 100
    end
    object qryUserDBLCLICKTIME: TIntegerField
      FieldName = 'DBLCLICKTIME'
    end
    object qryUserSPOSTA: TIntegerField
      FieldName = 'SPOSTA'
    end
    object qryUserALLOW_OVERBOOKING: TIntegerField
      FieldName = 'ALLOW_OVERBOOKING'
    end
    object qryUserREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object qryUserREP_DEF: TIntegerField
      FieldName = 'REP_DEF'
    end
    object qryUserESEGUITO: TIntegerField
      FieldName = 'ESEGUITO'
    end
    object qryUserCODICE_FISCALE: TStringField
      FieldName = 'CODICE_FISCALE'
      Size = 70
    end
    object qryUserRESET_PSWD: TIntegerField
      FieldName = 'RESET_PSWD'
    end
    object qryUserLOGIN_NT: TStringField
      FieldName = 'LOGIN_NT'
      Size = 30
    end
    object qryUserINTESTAREF3: TStringField
      FieldName = 'INTESTAREF3'
      Size = 100
    end
  end
  object sqryUser: TDataSource
    DataSet = qryUser
    Left = 140
    Top = 60
  end
end
