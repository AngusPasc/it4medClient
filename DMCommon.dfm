object FDMCommon: TFDMCommon
  OldCreateOrder = False
  OnCreate = FDMCommonCreate
  OnDestroy = DataModuleDestroy
  Left = 472
  Top = 72
  Height = 778
  Width = 1048
  object cxLocalizer1: TcxLocalizer
    StorageType = lstResource
    Left = 624
    Top = 40
  end
  object dxSkinController: TdxSkinController
    NativeStyle = False
    SkinName = 'UserSkin'
    TouchMode = True
    Left = 908
    Top = 24
  end
  object OneInstance1: TOneInstance
    DisplayMessage = False
    OnLoaded = OneInstance1Loaded
    Left = 316
    Top = 32
  end
  object EditRepository: TcxEditRepository
    Left = 912
    Top = 428
    object edrepMemo: TcxEditRepositoryMemoItem
    end
    object edrepCognome: TcxEditRepositoryMaskItem
      Properties.CharCase = ecUpperCase
      Properties.MaskKind = emkRegExprEx
      Properties.MaxLength = 0
      Properties.ValidateOnEnter = False
    end
    object edrepCodiceFiscale: TcxEditRepositoryMaskItem
      Properties.CharCase = ecUpperCase
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = 
        '[9 | A-Z | a-z][9 | A-Z|a-z][9 | A-Z|a-z][9 | A-Z|a-z][9 | A-Z|a' +
        '-z][9 | A-Z|a-z]\d\d[9 | A-Z|a-z]\d\d[9 | A-Z|a-z]\d\d[0-9|A-Z|a' +
        '-z][9 | A-Z|a-z]'
      Properties.MaxLength = 0
      Properties.ValidateOnEnter = False
    end
    object edrepCAP: TcxEditRepositoryMaskItem
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      Properties.ValidateOnEnter = False
    end
    object edrepTelefono: TcxEditRepositoryMaskItem
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '[0-9\x20]+'
      Properties.MaxLength = 0
      Properties.ValidateOnEnter = False
    end
    object edrepData: TcxEditRepositoryMaskItem
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = 
        '([012]?[1-9] | [123]0 |31) /  (0?[1-9] | 1[012])/ ([123][0-9])? ' +
        '[0-9][0-9]'
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      Properties.ValidateOnEnter = False
    end
    object edrepCodGruppi: TcxEditRepositoryMaskItem
      Properties.CharCase = ecUpperCase
      Properties.MaskKind = emkRegExpr
      Properties.MaxLength = 0
      Properties.ValidateOnEnter = False
    end
    object edrepNome: TcxEditRepositoryMaskItem
      Properties.CharCase = ecUpperCase
      Properties.MaskKind = emkRegExpr
      Properties.MaxLength = 0
      Properties.ValidateOnEnter = False
      Properties.OnValidate = edrepNomePropertiesValidate
    end
    object edrepImageSTATO: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Images = cxImageNavigator16
      Properties.ImmediateDropDownWhenKeyPressed = False
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Non effettuato'
          ImageIndex = 52
          Value = 0
        end
        item
          Description = 'Eseguito'
          ImageIndex = 31
          Value = 1
        end
        item
          Description = 'Da refertare'
          ImageIndex = 33
          Value = 2
        end
        item
          Description = 'Refertato'
          ImageIndex = 30
          Value = 3
        end
        item
          Description = 'Cancellato'
          ImageIndex = 32
          Value = 4
        end>
      Properties.ReadOnly = True
    end
    object edrepImageIMMAGINI: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Images = imIcone
      Properties.ImmediateDropDownWhenKeyPressed = False
      Properties.ImmediatePost = True
      Properties.Items = <>
      Properties.ReadOnly = True
    end
    object edrepImageREFERTO: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Images = cxImageNavigator16
      Properties.ImmediateDropDownWhenKeyPressed = False
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          ImageIndex = 30
          Value = 1
        end>
      Properties.ReadOnly = True
      Properties.ShowDescriptions = False
    end
    object edrepCODICEESAME: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.CharCase = ecUpperCase
      Properties.MaskKind = emkRegExpr
      Properties.MaxLength = 0
    end
    object edrepCodiceOspedale: TcxEditRepositoryMaskItem
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 0
      Properties.ValidateOnEnter = False
    end
    object edrepCOMPOSTO: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Images = imIcone
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Normale'
          ImageIndex = 52
          Value = 0
        end
        item
          Description = 'Pacchetto'
          ImageIndex = 11
          Value = 1
        end>
      Properties.ReadOnly = True
      Properties.ShowDescriptions = False
    end
    object edrepURGENZA: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Images = imIcone
      Properties.ImmediatePost = True
      Properties.Items = <>
      Properties.PostPopupValueOnTab = True
      Properties.ReadOnly = False
    end
    object edrepSINO: TcxEditRepositoryCheckBoxItem
      Properties.Alignment = taLeftJustify
      Properties.FullFocusRect = True
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
    end
    object edrepVG_SINO: TcxEditRepositoryCheckBoxItem
      Properties.Alignment = taLeftJustify
      Properties.FullFocusRect = True
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.UseAlignmentWhenInplace = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
    end
    object edrepALETTO: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Images = imIcone
      Properties.ImmediatePost = True
      Properties.Items = <>
      Properties.PostPopupValueOnTab = True
    end
    object edrepImageSTATOESAMESENZADESCR: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Images = cxImageNavigator16
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Value = 0
        end
        item
          ImageIndex = 31
          Value = 1
        end
        item
          ImageIndex = 33
          Value = 2
        end
        item
          ImageIndex = 30
          Value = 3
        end
        item
          ImageIndex = 32
          Value = 4
        end>
      Properties.ShowDescriptions = False
    end
    object edrepTIPO_OP_ANAGRAFICA: TcxEditRepositoryImageComboBoxItem
      Properties.Images = imIcone
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Inserimento'
          ImageIndex = 16
          Value = 'I'
        end
        item
          Description = 'Modifica'
          ImageIndex = 13
          Value = 'U'
        end
        item
          Description = 'Cancellazione'
          ImageIndex = 17
          Value = 'D'
        end
        item
          Description = 'Fusione'
          ImageIndex = 25
          Value = 'F'
        end>
    end
    object edrepTIPO_ATTIVITA: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'TIPO_ATTIVITA'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'DESCRIZIONE'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = sTipoAttivita
    end
    object edrepRICHIESTA_VALIDATA: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Images = imIcone
      Properties.ImmediatePost = True
      Properties.Items = <>
      Properties.ShowDescriptions = False
    end
    object edrepRADIOFARMACO: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'PKMAGART'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'DESCRIZIONE'
        end
        item
          FieldName = 'ARTICOLO'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = sRadiofarmaci
    end
    object edrepGRIDMEMO: TcxEditRepositoryBlobItem
      Properties.BlobEditKind = bekMemo
      Properties.ImmediatePost = True
      Properties.MemoMaxLength = 4000
    end
    object edrepTIPO_REPARTO: TcxEditRepositoryImageComboBoxItem
      Properties.ImmediatePost = True
      Properties.Items = <>
    end
    object edrepPRINTMEMO: TcxEditRepositoryMemoItem
    end
    object edrepTIPOSTAT: TcxEditRepositoryImageComboBoxItem
      Properties.Images = imIcone
      Properties.ImmediatePost = True
      Properties.Items = <>
      Properties.ReadOnly = False
      Properties.ShowDescriptions = False
    end
    object edrepTIPOREFERTAZIONE: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'PKTIPO_REFVOC'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          Width = 200
          FieldName = 'DESCRIZIONE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = sLkTipoRefVoc
    end
    object edrepRICETTA_INF: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.ImageAlign = iaRight
      Properties.ImmediatePost = True
      Properties.Items = <>
    end
    object edrepPROFILI: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'PKPROFILI'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'DESCRIZIONE'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = sProfili
    end
    object edrepNRALTRE: TcxEditRepositoryImageComboBoxItem
      Properties.Images = imIcone
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Value = 0
        end
        item
          Description = 'Altre richieste'
          ImageIndex = 43
          Value = 1
        end>
    end
    object edrepPROVENIENZA: TcxEditRepositoryImageComboBoxItem
      Properties.Images = cxImageNavigator16
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Esterni'
          ImageIndex = 34
          Value = 'E'
        end
        item
          Description = 'Interni'
          Value = 'I'
        end
        item
          Description = 'Non Prenotabile'
          Value = 'N'
        end
        item
          Description = 'Pronto Soccorso'
          Value = 'P'
        end
        item
          Description = 'Tutti'
          Value = 'T'
        end>
    end
    object edrepANNO_E_NR_ARCHIVIO: TcxEditRepositoryMaskItem
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d\d\d\d /\d\d+'
    end
    object edrepNR_ARCHIVIO: TcxEditRepositoryMaskItem
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d\d+'
    end
    object edrepTIPO_FIRMA: TcxEditRepositoryImageComboBoxItem
      Properties.ImageAlign = iaRight
      Properties.ImmediatePost = True
      Properties.Items = <>
    end
    object edrepVG_Obblig_Facoltativa: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.ImageAlign = iaRight
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Non visibile'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Obbligatorio'
          Value = 1
        end
        item
          Description = 'Facoltativo'
          Value = 2
        end>
    end
    object edrepURGENZA_RICH: TcxEditRepositoryImageComboBoxItem
      Properties.Images = imIcone
      Properties.ImmediatePost = True
      Properties.Items = <>
      Properties.PostPopupValueOnTab = True
      Properties.ReadOnly = False
    end
    object edRepPROVENIENZA_PRENO: TcxEditRepositoryImageComboBoxItem
      Properties.Images = cxImageNavigator16
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Esterni'
          ImageIndex = 34
          Value = 'E'
        end
        item
          Description = 'Interni'
          Value = 'I'
        end
        item
          Description = 'Non prenotabile'
          Value = 'N'
        end
        item
          Description = 'Pronto Soccorso'
          Value = 'P'
        end
        item
          Description = 'Tutti'
          Value = 'T'
        end>
    end
    object edrepNumero: TcxEditRepositoryMaskItem
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
    end
    object edrepPACS: TcxEditRepositoryLookupComboBoxItem
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'PKPACS'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          Width = 200
          FieldName = 'NOME'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = sTabPacs
    end
    object edrepNumeroLettere: TcxEditRepositoryMaskItem
      Properties.CharCase = ecUpperCase
      Properties.MaskKind = emkRegExprEx
      Properties.MaxLength = 0
    end
    object edrepStampaReferto: TcxEditRepositoryImageComboBoxItem
      Properties.Images = cxImageNavigator16
      Properties.Items = <
        item
          Description = 'Stampato'
          ImageIndex = 30
          Value = 1
        end>
    end
    object edrepEtichette: TcxEditRepositoryImageComboBoxItem
      Properties.Images = imIcone
      Properties.Items = <>
    end
    object edrepSTATOANAGRAFICA: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'SAN_IDENT'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          Width = 150
          FieldName = 'DESCRIZIONE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = sqStatoAnag
    end
    object edrepTIPOWS: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'TIPOWS'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          Width = 150
          FieldName = 'DESCRIZIONE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = sqTipoWS
    end
    object edrepTIPO_LOGIN: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'TIPO_LOGIN'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          Width = 150
          FieldName = 'DESCRIZIONE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = sqTipoLogin
    end
    object edRepTipoRichiamoImmagini: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CLIENTPACS'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          Width = 150
          FieldName = 'DESCRIZIONE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = sqClientPacs
    end
    object edrepSTATOCD: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <>
    end
    object edrepDefPrint: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'SET_DEFAULT_PRINTER'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          Width = 150
          FieldName = 'DESCRIZIONE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = sqDefPrint
    end
    object edrepValuta: TcxEditRepositoryCurrencyItem
      Properties.Nullable = False
    end
    object edrepCESPECIFIC: TcxEditRepositoryImageComboBoxItem
      Properties.Images = cxImageNavigator16
      Properties.Items = <
        item
          Description = 'Nessuna'
          Value = 0
        end
        item
          Description = 'Solo selezione'
          ImageIndex = 33
          Value = 1
        end
        item
          Description = 'Con calcolo prezzo'
          ImageIndex = 29
          Value = 2
        end>
    end
    object edrepImageDEVICE: TcxEditRepositoryImageComboBoxItem
      Properties.ImageAlign = iaRight
      Properties.Items = <
        item
          Description = 'No Device / No Referto'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Device / Referto'
          Value = 1
        end
        item
          Description = 'Device / Documento'
          Value = 2
        end
        item
          Description = 'No Device / Referto'
          Value = 3
        end>
    end
  end
  object AstaClientSocket: TAstaClientSocket
    Active = False
    Address = 'hs1chora01.hes.it'
    ClientType = ctNonBlocking
    Host = 'hs1chora01.hes.it'
    Port = 9000
    OnConnect = AstaClientSocketConnect
    OnDisconnect = AstaClientSocketDisconnect
    OnError = AstaClientSocketError
    ReconnectDelayTime = 1000
    ReconnectMaxAttempt = 2
    LoginMaxAttempts = 0
    WebServer.WinInetToStatusBar = False
    WebServer.UseSSL = False
    WebServer.AstaHttpDll = 'scripts/Astahttp.dll'
    CacheMetaDataOptions = smNoCache
    SQLTransactionStart = 'BEGIN TRANSACTION'
    SQLTransactionEnd = 'COMMIT'
    CursorOnQueries = cqHourGlass
    ConnectAction = caNone
    AutoLoginDlg = ltLoginNoDlg
    Password = 'risdba'
    UserName = 'risdba'
    Compression = acAstaZLib
    SQLErrorHandling = [seAsExceptions, seNoExceptionOnDisconnect]
    UpdateSQLSyntax = usOracle
    SQLOptions = [ssUseISInNuLLcompares, ssNoTableNameInUpdateStatements]
    OnCodedParamList = AstaClientSocketCodedParamList
    OnCustomConnect = AstaClientSocketCustomConnect
    DateMaskForSQL = 'DD-MMM-YYYY'
    DateTimeMaskForSQL = 'DD-MMM-YYYY HH:NN:SS'
    SQLDialect = sqlOracle
    Left = 368
    Top = 104
  end
  object cxImageNavigator16: TcxImageList
    FormatVersion = 1
    DesignInfo = 14680921
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003827174D00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF000000000000000000000000000000000000
          00003827174DB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF000000000000000000000000000000003827
          174DB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF0000000000000000000000003827174DB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF00000000000000003827174DB8824DFFB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF000000003827174DB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF3827174DB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF3827174DB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF000000003827174DB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF00000000000000003827174DB8824DFFB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF0000000000000000000000003827174DB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF000000000000000000000000000000003827
          174DB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF000000000000000000000000000000000000
          00003827174DB8824DFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003827174D00000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003827174D0000
          00000000000000000000000000003827174D0000000000000000000000000000
          000000000000000000000000000000000000000000003827174DB8824DFF0000
          000000000000000000003827174DB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000003827174DB8824DFFB8824DFF0000
          0000000000003827174DB8824DFFB8824DFF0000000000000000000000000000
          00000000000000000000000000003827174DB8824DFFB8824DFFB8824DFF0000
          00003827174DB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          000000000000000000003827174DB8824DFFB8824DFFB8824DFF805B36B23827
          174DB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000003827174DB8824DFFB8824DFFB8824DFF805B36B23827174DB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          00003827174DB8824DFFB8824DFFB8824DFF805B36B23827174DB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000003827
          174DB8824DFFB8824DFFB8824DFF805B36B23827174DB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          00003827174DB8824DFFB8824DFFB8824DFF805B36B23827174DB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000003827174DB8824DFFB8824DFFB8824DFF805B36B23827174DB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          000000000000000000003827174DB8824DFFB8824DFFB8824DFF805B36B23827
          174DB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          00000000000000000000000000003827174DB8824DFFB8824DFFB8824DFF0000
          00003827174DB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000003827174DB8824DFFB8824DFF0000
          0000000000003827174DB8824DFFB8824DFF0000000000000000000000000000
          000000000000000000000000000000000000000000003827174DB8824DFF0000
          000000000000000000003827174DB8824DFF0000000000000000000000000000
          00000000000000000000000000000000000000000000000000003827174D0000
          00000000000000000000000000003827174D0000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003827174D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003827
          174DB8824DFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003827174DB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003827174DB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003827174DB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003827174DB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          000000000000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          000000000000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003827174DB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003827174DB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003827174DB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003827174DB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003827
          174DB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003827174D0000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003827174D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFF3827174D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFF3827174D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFF3827174D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFF3827
          174D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF3827174D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF3827174D00000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF3827174D000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF3827174D00000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF3827174D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFF3827
          174D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFF3827174D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFF3827174D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFF3827174D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003827174D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003827
          174D000000000000000000000000000000003827174D00000000000000000000
          000000000000000000000000000000000000000000000000000000000000B882
          4DFF3827174D000000000000000000000000B8824DFF3827174D000000000000
          000000000000000000000000000000000000000000000000000000000000B882
          4DFFB8824DFF3827174D0000000000000000B8824DFFB8824DFF3827174D0000
          000000000000000000000000000000000000000000000000000000000000B882
          4DFFB8824DFFB8824DFF3827174D00000000B8824DFFB8824DFFB8824DFF3827
          174D00000000000000000000000000000000000000000000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFF3827174D805B36B2B8824DFFB8824DFFB882
          4DFF3827174D000000000000000000000000000000000000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D805B36B2B8824DFFB882
          4DFFB8824DFF3827174D0000000000000000000000000000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D805B36B2B882
          4DFFB8824DFFB8824DFF3827174D00000000000000000000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D805B
          36B2B8824DFFB8824DFFB8824DFF3827174D000000000000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D805B36B2B882
          4DFFB8824DFFB8824DFF3827174D00000000000000000000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D805B36B2B8824DFFB882
          4DFFB8824DFF3827174D0000000000000000000000000000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFF3827174D805B36B2B8824DFFB8824DFFB882
          4DFF3827174D000000000000000000000000000000000000000000000000B882
          4DFFB8824DFFB8824DFF3827174D00000000B8824DFFB8824DFFB8824DFF3827
          174D00000000000000000000000000000000000000000000000000000000B882
          4DFFB8824DFF3827174D0000000000000000B8824DFFB8824DFF3827174D0000
          000000000000000000000000000000000000000000000000000000000000B882
          4DFF3827174D000000000000000000000000B8824DFF3827174D000000000000
          0000000000000000000000000000000000000000000000000000000000003827
          174D000000000000000000000000000000003827174D00000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003827174D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000B8824DFF3827174D000000000000000000000000000000000000
          0000B8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF3827174D0000000000000000000000000000
          0000B8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFF3827174D00000000000000000000
          0000B8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFF3827174D000000000000
          0000B8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D0000
          0000B8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827
          174DB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827
          174DB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D0000
          0000B8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFF3827174D000000000000
          0000B8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFF3827174D00000000000000000000
          0000B8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF3827174D0000000000000000000000000000
          0000B8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFF3827174D000000000000000000000000000000000000
          0000B8824DFFB8824DFF00000000000000000000000000000000000000000000
          0000000000003827174D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          000000000000000000000000000000000000000000000000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B8824DFFB882
          4DFFB8824DFF251A0F3300000000000000000000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FFFFFFFFFFB8824DFFB882
          4DFFF1E6DBFFB8824DFF251A0F33000000000000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFFF1E6
          DBFFB8824DFFB8824DFFB8824DFF251A0F330000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F3300000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6
          DBFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F33000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF1E6DBFFB8824DFFB8824DFFB8824DFF251A0F33B8824DFF000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF1E6DBFFB8824DFFF1E6DBFFB8824DFFB8824DFF000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFF251A0F33000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
          83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000D11041500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000031430D5291C524F32D3D0C4C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000031430D5294CA25F999D027FF94CA25F92C3B0B490000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000031430D5294CA25F999D027FF99D027FF99D027FF95CA26F82B3A
          0B48000000000000000000000000000000000000000000000000000000000000
          000031430C5394CA25F999D027FF92C725F54A64137B94C925F898CF26FF94C7
          28F82B3A0C480000000000000000000000000000000000000000000000000507
          020984B321DD99D027FF92C725F526340A40000000002B3A0B4894C925F899CF
          28FF95CA26F82C3B0B49000000000000000000000000000000000000000091C8
          1FFF91C81FFF81AF20D826340A400000000000000000000000002B3A0B4895CA
          26F899D027FF94C925F82C3B0B49000000000000000000000000000000000000
          000091C81FFF0202000300000000000000000000000000000000000000002B3A
          0A4894C925F899D027FF94C925F82C3B0B490000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002B3A0A4894C925F899D027FF94C925F82C3B0B4900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002B3A0A4894C925F899D027FF77A21EC701010001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002B3A0A4876A11EC691C81FFF91C81FFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000101000191C81FFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          200000000000000400000000000000000000000000000000000000000000131C
          3C471E2B5F700000000000000000000000000000000000000000000000000000
          00000000000000000000000000001F2D6375131C3C4700000000131C3C474260
          D0F64463D8FF1F2D617300000000000000000000000000000000000000000000
          00000000000000000000202E65774463D8FF4260D1F7131C3C472130687B4463
          D8FF4463D8FF4463D8FF1F2D6173000000000000000000000000000000000000
          000000000000202E65774463D8FF4463D8FF4463D8FF212F677A000000002231
          6C7F4463D8FF4463D8FF4463D8FF1F2D61730000000000000000000000000000
          0000202E65774463D8FF4463D8FF4463D8FF22316B7E00000000000000000000
          000022316C7F4463D8FF4463D8FF4463D8FF1F2D61730000000000000000202E
          65774463D8FF4463D8FF4463D8FF22316B7E0000000000000000000000000000
          00000000000022316C7F4463D8FF4463D8FF4463D8FF1F2D6173202E65774463
          D8FF4463D8FF4463D8FF22316B7E000000000000000000000000000000000000
          0000000000000000000022316C7F4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF22316B7E00000000000000000000000000000000000000000000
          000000000000000000000000000022316C7F4463D8FF4463D8FF4463D8FF4463
          D8FF22316B7E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000202E65774463D8FF4463D8FF4463D8FF4463
          D8FF1F2D62740000000000000000000000000000000000000000000000000000
          00000000000000000000202E65774463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF1F2D627400000000000000000000000000000000000000000000
          000000000000202E65774463D8FF4463D8FF4463D8FF22316B7E22316C7F4463
          D8FF4463D8FF4463D8FF1F2D6274000000000000000000000000000000000000
          0000202E65774463D8FF4463D8FF4463D8FF21316A7D00000000000000002231
          6C7F4463D8FF4463D8FF4463D8FF1F2D6274000000000000000000000000202E
          65774463D8FF4463D8FF4463D8FF21316A7D0000000000000000000000000000
          000022316C7F4463D8FF4463D8FF4463D8FF1F2D6274000000001F2D63754463
          D8FF4463D8FF4463D8FF21316A7D000000000000000000000000000000000000
          00000000000022316C7F4463D8FF4463D8FF4463D8FF1E2C6172151E414D4261
          D3F94463D8FF21316A7D00000000000000000000000000000000000000000000
          0000000000000000000022316C7F4463D8FF4261D3F9151E424E00000000151E
          414D212F677A0000000000000000000000000000000000000000000000000000
          00000000000000000000000000002130687B151E414D00000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF00000000000000000000000000000000000000000000
          00000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF848484FF000000000000000000000000000000002626264A8484
          84FF848484FF848484FF848484FFFFFFFFFFB8824DFFB8824DFFB8824DFFB882
          4DFFFFFFFFFF848484FF848484FF848484FF848484FF2626264A848484FF8484
          84FF848484FF848484FF848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF0000000000000000848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000848484FF848484FF848484FF777777E68484
          84FF848484FF00000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF00000000848484FF848484FF777777E6262626498484
          84FF848484FF00000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF00000000848484FF848484FF26262649000000000000
          00000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF848484FF00000000000000000000000000000000000000000000
          00000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF848484FF00000000000000000000000000000000000000000000
          00000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF848484FF00000000000000000000000000000000000000000000
          00000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF848484FF00000000000000000000000000000000000000000000
          00000000000000000000848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0002000000090000000E0000000F0000000F0000000F00000010000000100000
          00100000001100000011000000100000000B0000000300000000000000000000
          0008285B8FC0357DC6FF327AC4FF3077C2FF2D75C1FF2B73C0FF2870BEFF266E
          BDFF256DBCFF226BBBFF216AB9FF154B84C20000000A00000000000000000000
          000C3C82CAFF77C2EEFF64B7EAFF61B5EAFF5DB4E9FF5AB2E8FF58B0E7FF54AF
          E7FF51ACE7FF50ABE6FF4DAAE6FF216ABAFF0000000F00000000000000000000
          000C3F85CBFF80C7EFFF3F8BCBFF3C88CBFF3986C8FF3583C7FF3381C6FF307F
          C4FF2F7FC4FF2D7DC3FF50ACE7FF246CBBFF0000000F00000000000000000000
          000B4288CDFF88CBF0FF4490CEFFF3ECEAFFEDE6E4FFEFEAE7FFE6E1DEFFE9E4
          E1FFECE5E1FF3181C5FF55AFE7FF256EBDFF0000000F00000000000000000000
          000B458BD0FF91D0F1FF4A95D1FFF5F1EFFFEFECE9FFA8B7AFFF125838FF6688
          77FFE7E2DFFF4D91CDFF59B1E8FF2971BEFF0000000E00000000000000000000
          000A498ED2FF99D4F3FF65A5D8FFF5F3F2FFAEBFB5FF1E825BFF2EE1AAFF1574
          4FFFA2B0A7FF8BB5DAFF63B6E9FF2B73C0FF0000000D00000000000000000000
          00094C92D3FFADDDF5FFA3C8E6FFB6C9C0FF258863FF40ECB9FF38ECB7FF2BD1
          9CFF236749FF87ACC6FF95CCEDFF2F76C2FF0000000D00000000000000000000
          00094E95D5FFB8E1F7FF84B2BEFF34906CFF5EF2C9FF71F9D7FF77F7D7FF41EB
          B9FF23B081FF326D5FFFA7CDE3FF6499D1FF0000000C00000000000000000000
          00085397D7FFBEE4F7FF78AFB3FF4AAA89FF77DBBEFF419E7EFF237956FF6ADF
          C1FF41E9B8FF1D9A6FFF52867FFF92B4D6FF0000000D00000000000000000000
          0007559AD9FFC5E8F9FFAFD2ECFFA3C5B7FF52967BFF98B8A9FFC5D1CBFF408D
          6FFF6DE1C3FF48ECBDFF18855CFF5B8891FF0000001500000001000000000000
          0007589DDAFFBDE6F9FF84BCE4FFF8F8F8FFF0F0EEFFEEEEECFFEDEBEAFFD1D9
          D4FF3D896BFF62D0B3FF66EFCCFF1C6F4DFF0000001B00000002000000000000
          00065B9FDCFFC2E7F7FF6AA6D2FFA5A3A1FF7D7976FF645E5DFF696462FFABA8
          A8FFB2B7B3FF3B826DFF359170FF6D95A5FF0000001300000000000000000000
          00055DA1DEFFC5E6F5FF767C80FFB3AEACFFD2CDCAFFE5E0DDFFCFC6C1FFB8AF
          AAFFC1BEBDFFA6ABAFFFC3D9E6FF9BBDDEFF0000000A00000000000000000000
          00034778A6C05DA0DBFF918987FF8D8682FF88817FFFD0CCCAFFC8C3C1FF6C66
          64FF76726FFF837F7DFF5C95CBFF4E7BA6CA0000000500000000000000000000
          00010000000300000004000000050000000525232243716C6ACA605B59CA1D1B
          1B44000000060000000600000006000000040000000100000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF000000007E4C
          69B7AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000008484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000AF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000008484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000AF6A
          93FFAF6A93FF000000000000000000000000000000000000000000000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000AF6A
          93FFAF6A93FF0000000000000000000000000000000000000000B8824DFFEAD9
          C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000AF6A
          93FFAF6A93FF0000000000000000000000000000000000000000251A0F33B882
          4DFFEAD9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000AF6A
          93FFAF6A93FF000000000000000000000000B8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000AF6A
          93FFAF6A93FF0000000000000000000000000000000000000000251A0F33B882
          4DFFEAD9C9FFFFFFFFFF848484FF848484FF848484FF848484FF00000000AF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000B8824DFF3827
          174D00000000000000000000000000000000000000000000000000000000AF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000000000000000
          00007A4A67B2AF6A93FFAF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
          93FFAF6A93FFAF6A93FF00000000000000000000000000000000000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
          93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
          93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FF0000
          0000AF6A93FF00000000AF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
          93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FF0000
          0000AF6A93FF00000000AF6A93FFAF6A93FFAF6A93FF0000000000000000824F
          6DBDAF6A93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FF00000000AF6A93FFAF6A93FF824F6DBD00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000023232394353535E01A1A1A7000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001E1E1E813C3C3CFF3C3C3CFF353535E000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF2323239400000000000000000000
          0000000000000000000000000000000000000000000000000000000000001E1E
          1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          0000000000011616165C282828AB363636E6363636E6282828AB292929AE3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
          00011E1E1E803C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000001616
          165C3C3C3CFF363636E51E1E1E7F0A0A0A2A0A0A0A2A1E1E1E7F3C3C3CFF3C3C
          3CFF292929AD0000000000000000000000000000000000000000000000002828
          28AB3C3C3CFF1E1E1E7F000000000000000000000000000000001E1E1E7F3C3C
          3CFF282828AB0000000000000000000000000000000000000000000000003636
          36E63C3C3CFF0A0A0A2A000000000000000000000000000000000A0A0A2A3C3C
          3CFF363636E60000000000000000000000000000000000000000000000003636
          36E63C3C3CFF0A0A0A2A000000000000000000000000000000000A0A0A2A3C3C
          3CFF363636E60000000000000000000000000000000000000000000000002828
          28AB3C3C3CFF1E1E1E7F000000000000000000000000000000001E1E1E7F3C3C
          3CFF282828AB0000000000000000000000000000000000000000000000001616
          165C3C3C3CFF363636E51E1E1E7F0A0A0A2A0A0A0A2A1E1E1E7F363636E53C3C
          3CFF1616165C0000000000000000000000000000000000000000000000000000
          00011E1E1E803C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E80000000010000000000000000000000000000000000000000000000000000
          0000000000011616165C282828AB363636E6363636E6282828AB1616165C0000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001E1E
          1E7E00000000000000000707071D1A1A1A702B2B2BB7373737EA373737EA2B2B
          2BB71A1A1A700707071D00000000000000000000000000000000000000003C3C
          3CFF1E1E1E7E0D0D0D39292929B03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF292929B00D0D0D39000000000000000000000000000000003C3C
          3CFF3C3C3CFF333333D73C3C3CFF2D2D2DBF181818660707071F0707071F1818
          18662D2D2DBF3C3C3CFF292929B00707071D0000000000000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF343434DF0C0C0C330000000000000000000000000000
          00000C0C0C332D2D2DBF3C3C3CFF1A1A1A700000000000000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001E1E
          1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
          00001A1A1A703C3C3CFF2D2D2DBF0C0C0C330000000000000000000000000000
          00000C0C0C33343434DF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
          00000707071D292929B03C3C3CFF2D2D2DBF181818660707071F0707071F1818
          18662D2D2DBF3C3C3CFF333333D73C3C3CFF3C3C3CFF00000000000000000000
          0000000000000D0D0D39292929B03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF292929B00D0D0D391E1E1E7E3C3C3CFF00000000000000000000
          000000000000000000000707071D1A1A1A702B2B2BB7373737EA373737EA2B2B
          2BB71A1A1A700707071D00000000000000001E1E1E7E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000070000
          000B0000000C0000000C0000000C0000000C0000000C0000000C0000000D0000
          000D0000000D0000000D0000000D0000000D0000000C0000000882594DBEB47C
          6AFFB37C69FFB37B6AFFB37B69FFB37B68FFB37B68FFB37A69FFB37A68FFB37A
          68FFB37A68FFB27968FFB37967FFB27967FFB27967FF7F574ABFB67F6DFFF9F2
          EEFFF9F2EEFFF9F2EDFFF9F1EDFFC69A8CFFF9F2ECFFF9F1EDFFF9F1ECFFF9F1
          ECFFC5998BFFF8F0EBFFF8F0EBFFF8F0EBFFF8F0EBFFB37B69FFB78170FFF9F3
          EFFFF7EEE9FFF8EEE8FFF8EEE9FFC79C8DFFF7EEE9FFF8EEE8FFF8EEE9FFF7EE
          E8FFC69A8BFFF8EEE8FFF7EDE8FFF7EEE8FFF9F1ECFFB57D6BFFBA8472FFFAF4
          F0FFF8EFEAFFF8F0EAFFF8EFE9FFC99D8FFFF8EFEAFFF8EFEAFFF7EEEAFFF8EF
          EAFFC89D8EFFF7EFE9FFF8EFE9FFF7EFE9FFF9F1EDFFB7806EFFBB8776FFCCA2
          95FFCAA193FFCBA193FFCAA193FFCAA192FFCBA192FFCAA091FFCA9F91FFCA9F
          91FFC99F91FFC99F90FFC99E90FFC99E8FFFC99F90FFB88371FFBD8A79FFFBF6
          F2FFF9F1ECFFF9F1ECFFF9F0EDFFCCA295FFF8F1ECFFF9F1EBFFF9F0ECFFF9F1
          ECFFCAA194FFF9F0ECFFF9F1EBFFF8F0EBFFF9F3F0FFBA8574FFC08E7CFFFBF6
          F3FFF9F2EEFFFAF2EEFFF9F1EDFFCEA697FFF9F1EDFFF9F1EDFFF9F2EDFFF9F2
          ECFFCDA496FFF9F1EDFFF9F1ECFFF9F1EDFFFBF5F1FFBC8977FFC29180FFFCF8
          F5FFF9F2EFFFFAF3EFFFFAF2EFFFCFA89AFFFAF3EEFFF9F2EEFFF9F2EEFFFAF3
          EEFFCEA799FFF9F2EEFFF9F2EEFFF9F2EDFFFBF5F2FFBF8C7AFFC88E5AFFD9AD
          80FFCE9964FFCD9763FFCD9660FFCD9460FFCB935EFFCA925DFFC9905BFFC88F
          5AFFC88E59FFC88D57FFC88C56FFC78B55FFD19D6CFFBB7943FFC98F5AFFF1DA
          B5FFE7C28DFFE7C18DFFE7C18CFFCD9660FFE6BF89FFE5BE89FFE5BD87FFE5BC
          87FFC98E59FFE4BA84FFE4BA83FFE4B983FFECCDA3FFBC7A44FFCA905CFFF1DB
          B8FFE8C28EFFE7C28DFFE7C18CFFCD9662FFE6BF8BFFE6BE89FFE5BD88FFE5BC
          87FFC98F5AFFE4BB86FFE4BB84FFE4BA83FFEDCEA5FFBD7B45FFCA915EFFF2DD
          B9FFF1DAB9FFF1DAB7FFF1D9B6FFD8AC7EFFF0D8B3FFF0D6B2FFF0D6B1FFEFD5
          AFFFD5A576FFEFD2ACFFEED2A9FFEDD1A9FFEDD1A8FFBE7B45FF976C47BECA91
          5DFFCA8F5BFFC88E5AFFC78C58FFC68B57FFC58955FFC48852FFC48651FFC284
          50FFC2834EFFC0814CFFC0804BFFBF7F49FFBE7D48FF8D5D34BF000000010000
          0002000000020000000200000002000000020000000200000002000000020000
          0003000000030000000300000003000000030000000300000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000090C1B202130
          687B354DA8C64260D2F8354DA8C62130687B090C1B2000000000848484FF8484
          84FF848484FF848484FF848484FF848484FF3B3B3B72090D1C212C408CA52A3E
          879F131C3C470304080A131C3C472A3E879F2C408CA5090C1B20848484FF0000
          000000000000848484FF00000000000000000B0B0B162130687B2A3E879F0203
          0607000000000000000000000000020306072A3E879F2130687B848484FF0000
          000000000000848484FF000000000000000001010102354DA8C6131C3C470000
          000000000000000000000000000000000000131C3C47354DA8C6848484FF8484
          84FF848484FF848484FF848484FF848484FF000000004260D2F80304080A0000
          000000000000848484FF848484FF848484FF0304080A4260D2F8848484FF0000
          000000000000848484FF000000000000000001010102354DA8C6131C3C470000
          000000000000848484FF0000000000000000131C3C47354DA8C6848484FF0000
          000000000000000000000000000000000000000000002130687B2A3E879F0203
          060700000000848484FF00000000020306072A3E879F2130687B848484FF8484
          84FF000000004463D8FF4463D8FF4463D8FF4463D8FF090C1B202C408CA52A3E
          879F131C3C470304080A131C3C472A3E879F2C408CA5090D1C21848484FF0000
          0000000000004463D8FF00000000000000004463D8FF00000000090C1B202130
          687B354DA8C64260D2F8354DA8C62130687B090C1B2022222242848484FF0000
          0000000000004463D8FF00000000000000004463D8FF00000000000000000B0B
          0B160000000000000000010101020000000000000000848484FF848484FF8484
          84FF000000004463D8FF4463D8FF4463D8FF4463D8FF00000000848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF0000
          0000000000000000000000000000000000000000000000000000000000008484
          84FF0000000000000000848484FF0000000000000000848484FF848484FF0000
          000000000000848484FF0000000000000000848484FF00000000000000008484
          84FF0000000000000000848484FF0000000000000000848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003827174DB8824DFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003827174DB8824DFFB8824DFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003827174DB8824DFFB8824DFFB8824DFFB5804CFB9F7042DC7955
          32A747321E630E0A061400000000000000000000000000000000000000000000
          00003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF7C5834AC2B1E123B000000000000000000000000000000000000
          0000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF855E38B91E150C290000000000000000000000000000
          0000484F3879212419373827174DB8824DFFB8824DFF060402082A1E123A6144
          2886A27344E1B8824DFFB8824DFF5D4227810000000000000000000000000000
          000077845DC98E9D6FF0212419373827174DB8824DFF00000000000000000000
          00004C36206AB8824DFFB8824DFF91663DC90000000000000000000000000000
          000093A273F897A776FF8E9D6FF0020302040000000000000000000000000000
          000003020104AD7A48F0B8824DFFB37E4BF80000000000000000000000000000
          000077845DC997A776FF97A776FF3F45316A00000000000000000000000097A7
          76FF2E32244D281C1137AD7A48F091663DC90000000000000000000000000000
          00004C543C8197A776FF97A776FF859368E14F583E8622261B3A0505040897A7
          76FF97A776FF2E32244D281C1137573E25790000000000000000000000000000
          0000181B13296E7956B997A776FF97A776FF97A776FF97A776FF97A776FF97A7
          76FF97A776FF97A776FF2E32244D000000000000000000000000000000000000
          00000000000023271B3B667150AC97A776FF97A776FF97A776FF97A776FF97A7
          76FF97A776FF97A776FF97A776FF2E32244D0000000000000000000000000000
          000000000000000000000C0D09143B412E63636D4DA7829066DC95A474FB97A7
          76FF97A776FF97A776FF2E32244D000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000097A7
          76FF97A776FF2E32244D00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000097A7
          76FF2E32244D0000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000030000000D000000190000001A0000
          000E000000030000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000D112B4A8C1A4E9CF6194D9BF60F28
          478D0000000E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000172762ABFFD6EDF7FF5DB1E5FF225C
          A5FF000000190000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000019255FA9FFC1E6F5FF56AEE3FF2058
          A3FF0000001B0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000017235CA7FFABE2F6FF4DABE4FF1F56
          A2FF000000190000000000000000000000000000000000000000000000000000
          00000000000000000000000000020000001B225BA6FF8FD6F4FF45A5E1FF1E54
          A1FF0000001E0000000200000000000000000000000000000000000000000000
          00000000000000000005000102160F28498A225AA6FF77CAEEFF3BA0DEFF1E53
          A1FF081E3F8D0001021800000006000000010000000000000000000000000000
          000000000005040B112D22568DD03B81C4FF4E96D2FF4AA1D9FF3592D1FF2F7E
          C6FF2465B0FF113A76D202070E31000000070000000100000000000000000000
          0004060F18332F70AFEE569FD6FF7CC0E8FF93CFEFFF5BBFE9FF41ADDFFF3287
          CEFF3485D2FF3181C9FF1A5095EF030A14390000000500000000000000010000
          000B265D8FC962ACDDFF86CDEFFFC3EAF9FFA8E2F8FF6BCFF0FF47BAE6FF398F
          D4FF2F7ACBFF3C92DBFF368ACFFF17417BCD0000000F00000001000000030E23
          34534992CCFF8BD2F1FFBAE9F9FFE2F7FDFFAFE7F9FF72D4F2FF4ABFE8FF3F98
          D8FF2B73C8FF3486D2FF43A2E2FF2A70BAFF09182E5A00000005000000062252
          7AA96BB6E1FF99E1F7FFDFF7FDFFF5FCFFFFB1EBFBFF76D7F3FF4DC5EAFF47A2
          DEFF2A72C6FF2F7ACBFF44A2E4FF3891D4FF163C6CAE0000000A00000007357D
          B5EC91D5F2FFC5EFFBFFF1FCFEFFEBFAFDFFE4F9FDFFDFF8FDFFDAF7FDFFD5F6
          FDFFC7ECF9FFA1D1EEFF86CBF1FF4FADE5FF21599FEC0000000C000000053C8B
          C8FFF2FAFDFFB9C6E2FF6884C0FF3C64B1FF0F43A4FF1451ADFF1B60B8FF2471
          C1FF529CD6FF76BBE6FFAAE0F4FFC5F0FBFF2665B0FE0000000A000000021530
          455E468DC1F093C7E7FFC7E6F4FFE4F4FBFFE8F7FCFFF4FCFEFFEFFBFDFFD6F2
          FAFFCAEBF8FFA6D6EFFF71AFDCFF316FB0F10D233D6400000004000000000000
          000203070A111633476026577BA1316F9FCF3275AADE3885C4FF3681C2FF2D6C
          A5DE286298D11D4872A410284164020509150000000400000001}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000003324154666482B8D90653CC7AD7A48F0AD7A48F09065
          3CC766482B8D3324154600000000000000000000000000000000000000000000
          000017100A2065472A8C8B623AC15C41267F2D20133F0D0905120D0905122D20
          133F5C41267F8B623AC165472A8C17100A200000000000000000000000001710
          0A20765331A36E4D2E981B130B25000000000000000000000000000000000000
          0000000000001B130B256E4D2E98765331A317100A2000000000000000006547
          2A8C6E4D2E980806030B00000000000000000000000000000000000000000000
          000000000000000000000806030B6E4D2E9865472A8C00000000332415468B62
          3AC11B130B25000000000000000048331E64B37E4BF8B8824DFF7B5734AB0906
          040C0000000000000000000000001B130B258B623AC13324154666482B8D5C41
          267F000000000000000000000000000000002A1E123AA67545E6B8824DFF956A
          3FCF160F091E0000000000000000000000005C41267F66482B8D90653CC72D20
          133F0000000000000000000000000000000000000000130E081B91663DC9B882
          4DFFA87746E92A1E123A00000000000000002D20133F90653CC7AD7A48F00D09
          05120000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB37E4BF844301C5E000000000D090512AD7A48F0AD7A48F00D09
          05120000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB47F4BF944301C5E000000000D090512AD7A48F090653CC72D20
          133F0000000000000000000000000000000000000000130D081A90653CC7B882
          4DFFAC7948EE2E21134000000000000000002D20133F90653CC766482B8D5C41
          267F00000000000000000000000000000000281D1138A57545E5B8824DFFA071
          43DE1E150C290000000000000000000000005C41267F66482B8D332415468B62
          3AC11B130B25000000000000000047321E63B37E4BF8B8824DFF91663DC9100B
          07160000000000000000000000001B130B258B623AC133241546000000006547
          2A8C6E4D2E980806030B00000000000000000000000000000000000000000000
          000000000000000000000806030B6E4D2E9865472A8C00000000000000001710
          0A20765331A36E4D2E981B130B25000000000000000000000000000000000000
          0000000000001B130B256E4D2E98765331A317100A2000000000000000000000
          000017100A2065472A8C8B623AC15C41267F2D20133F0D0905120D0905122D20
          133F5C41267F8B623AC165472A8C17100A200000000000000000000000000000
          000000000000000000003324154666482B8D90653CC7AD7A48F0AD7A48F09065
          3CC766482B8D3324154600000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0002000000090000000E0000000F000000100000001000000011000000110000
          00110000001200000012000000110000000C0000000300000000000000000000
          00087B5043C0AB705CFFAB6F5AFFAB705CFFAA6F5BFFAA6E59FFA96F5AFFAA6D
          59FFAA6C59FFAA6C59FFA96C58FF794D3FC30000000B00000000000000000000
          000CAD735FFFFDFBF9FFFBF5F2FFFAF5F1FFFAF4F0FFFAF4EFFFFAF2EEFFFAF1
          EDFFF8F1ECFFF8F0EBFFF8F0EAFFD5B6ADFF00000011000000003E5803AD5D81
          05FF5C8004FF5B7F04FF5A7E03FF5A7D03FF587C02FF577B02FF567902FF5679
          01FF557800FF537700FF547700FF537600FF537600FF385000AD5E8306FFFAF6
          F6FF5D8105FFF9F5F3FF5C7F04FFF8F2F1FFF7F2EFFFA7B678FFF7EFEDFFF6EE
          EBFFA6B476FF557801FFF4ECE7FF547700FFF3EAE5FF537600FF5F8406FFFBF7
          F6FF5D8205FFF9F5F4FF5C8004FFF8F4F2FF5A7E03FF597D03FF587C02FFA8B6
          78FFF6EEEBFF567901FFF5EDE8FF537700FFF4EBE6FF537600FF618507FFADBE
          7FFFFBF7F6FFACBD7DFF5B8104FFF9F5F2FF5B7F04FF5A7E03FFA9B879FFF6F1
          EEFF597B03FF557A01FFA6B376FFF5EDE8FFA4B274FF547700FF608606FFFCF8
          F8FF5F8406FFFBF7F6FF5F8206FFFAF5F3FF5C8004FF5B7F04FFF8F3F0FF5A7D
          03FF587C02FF577A02FFF6EEEAFF547801FFF4ECE8FF537700FF618607FFFBFA
          F9FF618507FFFAF8F7FF5D8306FFFAF7F5FF5D8105FF5D8005FFAAB97BFFF8F2
          F0FFF7F2EFFF597C02FFF6EFECFF557A01FFF5EDE9FF557801FF425B05AD6186
          07FF608507FF5F8506FF5F8406FF5E8306FF5E8305FF5D8105FF5D8005FF5B7F
          04FF5A7E03FF577C03FF567B02FF577B02FF567A01FF3A5201AD000000000000
          0006C18F7FFFFEFEFEFFFAF6F3FFFAF5F3FFFBF6F2FFFBF5F1FFFBF5F0FFFBF5
          F0FFFAF4EFFFFAF4EEFFFDF9F8FFDEC3BAFF0000000B00000000000000000000
          0006C49382FFFFFEFEFFFBF7F4FFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF4
          F2FFFBF5F1FFFBF5F0FFFDFBF9FFBF8C7BFF0000000B00000000000000000000
          0005C79985FFFFFEFEFFFCF8F7FFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6
          F4FFFCF6F3FFFCF6F2FFFDFCFAFFC28F7FFF0000000A00000000000000000000
          0004C99A89FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFE
          FDFFFEFEFDFFFEFDFDFFFEFDFDFFC49382FF0000000800000000000000000000
          0002977567C0CA9C8BFFCA9C8BFFC99C8AFFC99B89FFC99B8AFFCA9A88FFC89A
          88FFC99987FFC79887FFC89886FF927163C20000000500000000000000000000
          0001000000020000000300000004000000040000000500000005000000050000
          0006000000060000000600000006000000050000000100000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00030000000E00000018000000180000000F0000000400000000000000000000
          00030000000E00000018000000180000000F0000000400000000000000030402
          011A512408A5833A0BEE81380AEF4F2105A70301001C00000003000000030302
          001A512408A5833A0BEE81380AEF4F2105A70301001C00000003000000095931
          159BB8763BFFF1BF6EFFF1BD6BFFB56F33FF52280DA10000000C00000009552C
          129BB76F34FFEEA457FFEDA354FFB3672CFF52280DA10000000C0000000CA868
          37EEF6CE8FFFC08B57FFD2A26DFFF3C983FF985525F00000001400000010A05E
          2FEFF4B775FFB57A47FFC8905BFFF0B06AFF995425EF0000001000000009B77C
          48EDFAE3BFFFA26638FFAE7545FFF8DEB5FFAC6A38FF0000002A0000002AB777
          44FFF9D4A9FF97592FFFA3663AFFF7CFA0FFA56735EE0000000D000000047251
          3290DFAE7EFFF4DDC1FFF3DDC0FFDEB58BFFCB9C76FF67372BFF603226FFD0A1
          7AFFE1B58AFFF4D5B3FFF3D4B1FFD49F6EFF68462A9300000006000000010504
          030B7356378ECD9762F2D69F69FFE0BA94FFE6CBB4FFF0DED4FF9E796DFFCAAB
          94FFDDB591FFD29964FFC28C5AF36D4E33910504020D00000001000000000000
          0000000000030000000A35241F66AD8577FBF9F4F2FFF2E2D9FFE4CDC4FF9772
          68FF865B4EFB23120D6F00000010000000040000000100000000000000000000
          000000000000000000010000000C5B3B32B2B58B7EFFFAF5F3FFF4E5DCFFB799
          8EFF43241CB40000000F00000001000000000000000000000000000000000000
          000000000000000000031E141142A07567FDDECAC2FFB89388FFF8F3F1FFF3E7
          DFFF8A6054FD150B093F00000003000000000000000000000000000000000000
          0000000000010403020F82584BD8E6D1C9FFEFE5E1FF795144E0885E53DFF6F1
          EEFFDFCFC6FF61382ED70201010E000000010000000000000000000000000000
          0000000000045339318ACCAEA3FFF0E5E1FF734D41C80805041E0A0605197550
          45C5F4EEECFFB99B93FF39201988000000040000000000000000000000000000
          00022219153BB68D7EFBEEE2DDFF68473DB00402021000000002000000010403
          020C644237ACF2EAE7FF92695DFD170D0A390000000200000000000000010403
          030B946C5FD6EBDED9FF5C413894000000070000000200000000000000000000
          00010000000454372E91ECE3E0FF683F34D50301010A00000001000000025E45
          3B85EBDCD6FF4B362E7200000005000000010000000000000000000000000000
          000000000000000000023F2A236FE9DFDCFF3E231D8400000002000000028965
          58BB3D2D27590000000300000001000000000000000000000000000000000000
          000000000000000000000000000131201B57654236BA00000001}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000030000000C00000010000000110000
          0011000000120000001200000013000000130000001000000004000000000000
          00000000000000000000000000000000000BA97563FFA87462FFA77261FFA571
          5FFFA5705EFFA36F5DFFA36D5CFFA26D5BFFA26C5AFF0000000F000000000000
          00000000000000000000000000000000000DAB7866FFFDFBF8FFF7EFE8FFF6EF
          E6FFF6EEE6FFF5EEE5FFF5EDE4FFF5EDE4FFA36D5CFF00000013000000000000
          0000265080B7336CB1FF326BB0FF2E63A6FFAD7C6AFFFDFCFAFFF7F0E9FFF7F0
          E8FFF7EFE7FFF6EFE7FFF6EEE6FFF5EEE5FFA46F5DFF00000012000000000000
          00003976B8FF91D2F4FF66BEEEFF60B5E4FFB07F6DFFFEFDFCFFF7F2EAFFF8F1
          E9FFF7F0E9FFF6F0E8FFF6EFE7FFF6EFE6FFA67260FF00000011000000000000
          00003F7DBCFF9AD6F5FF6CC3F0FF66B8E5FFB28070FFFEFEFDFFF8F3ECFFF8F2
          EBFFF7F1EAFFF7F1E9FFF7F0E8FFF7EFE8FFA87563FF00000010000000000000
          00004384C1FFA4DBF6FF73C7F1FF6CBEE8FFB48473FFFFFFFEFFF9F3EEFFF9F3
          EDFFF9F2ECFFF8F2EBFFF7F1EAFFF7F0E9FFAB7766FF0000000F000000000000
          0000488BC5FFADE1F8FF7ACCF2FF73C3E9FFB68676FFFFFFFFFFF9F5EEFFF9F4
          EEFFF9F3EDFFF8F3ECFFF8F2EBFFF7F2EBFFAC7A6AFF0000000E000000000000
          00004C92CAFFB6E6FAFF81D2F4FF7AC9EBFFB88878FFFFFFFFFFFAF5F0FFF9F5
          EFFFF9F5EFFFF9F4EEFFF9F3EDFFF9F3ECFFAF7E6CFF0000000D000000000000
          00005098CDFFBEE9FAFF88D6F6FF81CEEEFFBB8B7BFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFAFFB1816FFF0000000C000000000000
          0000539DD1FFC5EDFBFF8FDBF7FF89D5F2FFBD8D7DFFBB8C7CFFBA8B7BFFB989
          79FFB98977FFB78876FFB68674FFB58373FFB38371FF00000009000000000000
          000056A1D4FFCBF0FCFF95E0F8FF82CBE9FF72B7D9FF71B7D9FF70B7DAFF70B8
          DBFF6FB7DBFF4385BBFF00000009000000090000000800000002000000000000
          000058A5D7FFCBEDF8FF73B2D0FF5792B7FF5893B7FF5995BAFF5B99BDFF62A3
          C9FF69AFD4FF4184BBFF00000000000000000000000000000000000000000000
          000059A8D9FFBCDBE7FF8E7875FF9B7061FF946A5BFF8F6456FF885D50FF7B65
          63FF97BCD3FF488EC4FF00000000000000000000000000000000000000000000
          0000437EA2BD4A90BFFFB48E7FFFF3EDE7FFDEC9B8FFDDC8B5FFDBC4B2FF9770
          60FF3B7BAEFF40799EBD00000000000000000000000000000000000000000000
          00000000000000000000876B60BDB69181FFB69080FFB58E7FFFB28C7DFF7D60
          54BD000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000A09070663583F36EC573D35EC1911105A000000020000
          00090000000E0000000F00000010000000100000001100000011000000110000
          00130000001A0E0A09745D4C44FEC8A995FFC9A996FF553C34E900000008815A
          4EC0B37E6CFFB37D6AFFB37E6CFFB27D6BFFB27C69FFB17D6AFFBE9081FFD1B6
          ADFF947E77FF6D594FFFD6B6A1FFD4B6A1FFDBC7B9FF584037EC0000000CB581
          6FFFFDFBF9FFFBF5F2FFF9F4F0FFF5EFEBFFF1EBE7FFEEE7E3FFECE4E0FFADA2
          9DFF79645AFFD8BBAAFFD8BBA8FFE6D4C7FF8C766CFE1D15125D0000000CB884
          71FFFDFBFAFFF5EBE4FFEBE1DAFFA29089FF6A534BFF4B332BFF574239FF856F
          64FFDCC1B2FFDCC2B0FFEAD7CCFF978177FF2219166F000000080000000BB886
          75FFFCFAFAFFEAE1DBFF816A61FF937A6FFFBFA99CFFDEC8BAFFC7B0A2FFE0C8
          B8FFDFC7B7FFE9DACFFF9B857BFFA88F87FF00000018000000010000000ABA89
          78FFFAF8F7FFAC9A92FFA08A80FFEEE1D9FFF5EDE7FFF0E4DBFFE9D6C8FFE2CC
          BDFFE2CEBFFFA08A80FFBEB1ABFFD6BBB3FF000000110000000000000009BD8C
          7AFFF8F7F6FF8E7368FFC8B6ADFFB4A098FF8F766AFFB09C93FFD8C8BFFFE5CE
          BFFFD1B9ABFF82675DFFEFE9E5FFC4998AFF0000000F0000000000000009C08F
          7FFFF8F7F6FF8C7165FFB7A299FFBFAFA7FFEEE6E1FFBBAAA1FFAF9B92FFE6D1
          C3FFE6D2C7FF7E6459FFF2EDE9FFBB8A77FF0000000E0000000000000008C394
          84FFFAFAF9FF9D867BFFC7B8B0FFF6F0EAFFF8F1ECFFEAE1DCFF71574DFFE7D4
          C6FFD2C0B8FF8C7369FFF5F0EDFFBC8D7AFF0000000D0000000000000007C597
          87FFFDFDFCFFF8F3EEFFF9F3EFFFFAF4EFFFF7F0ECFFA89791FF937C72FFEEE0
          D8FFB09C92FFB9A8A0FFF9F4F1FFC08F7EFF0000000D0000000000000006C79A
          8CFFFEFEFEFFFAF6F3FFFAF5F3FFF9F4F0FFAB9B93FF8F7A72FFCABAB2FFB6A2
          97FFA38C81FFF4ECE8FFFCF8F6FFC39282FF0000000C0000000000000006CA9E
          8EFFFFFEFEFFFBF7F4FFFBF6F4FFF9F4F2FFAC9589FF987D6FFFA58E85FFC6B6
          AFFFF6EFEAFFF9F4EFFFFDFAF8FFC49687FF0000000B0000000000000005CCA3
          91FFFFFEFEFFFCF8F7FFFCF8F6FFFCF7F5FFFAF5F3FFF8F3F1FFF8F3F1FFFAF4
          F1FFFCF6F2FFFBF6F1FFFDFBF9FFC79A8BFF0000000A0000000000000004CEA4
          95FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFE
          FDFFFEFDFDFFFEFDFDFFFEFDFCFFC99E8EFF0000000900000000000000029A7B
          6FC0CFA696FFCFA696FFCEA695FFCEA595FFCEA595FFCFA494FFCDA494FFCEA3
          93FFCCA293FFCDA292FFCBA292FF97776BC20000000600000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000003324154666482B8D90653CC7AD7A48F0AD7A48F09065
          3CC766482B8D3324154600000000000000000000000000000000000000000000
          000017100A2065472A8C8B623AC15C41267F2D20133F0D0905120D0905122D20
          133F5C41267F8B623AC165472A8C17100A200000000000000000000000001710
          0A20765331A36E4D2E981B130B25000000000000000000000000000000000000
          0000000000001B130B256E4D2E98765331A317100A2000000000000000006547
          2A8C6E4D2E980806030B00000000000000000000000000000000000000000000
          000000000000000000000806030B6E4D2E9865472A8C00000000332415468B62
          3AC11B130B250000000000000000000000000906040C7B5734ABB8824DFFB37E
          4BF848331E6400000000000000001B130B258B623AC13324154666482B8D5C41
          267F000000000000000000000000160F091E956A3FCFB8824DFFA67545E62A1E
          123A000000000000000000000000000000005C41267F66482B8D90653CC72D20
          133F00000000000000002A1E123AA87746E9B8824DFF91663DC9130E081B0000
          0000000000000000000000000000000000002D20133F90653CC7AD7A48F00D09
          05120000000044301C5EB37E4BF8B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF00000000000000000D090512AD7A48F0AD7A48F00D09
          05120000000044301C5EB47F4BF9B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF00000000000000000D090512AD7A48F090653CC72D20
          133F00000000000000002E211340AC7948EEB8824DFF90653CC7130D081A0000
          0000000000000000000000000000000000002D20133F90653CC766482B8D5C41
          267F0000000000000000000000001E150C29A07143DEB8824DFFA57545E5281D
          1138000000000000000000000000000000005C41267F66482B8D332415468B62
          3AC11B130B25000000000000000000000000110C071791663DC9B8824DFFB37E
          4BF846311D6100000000000000001B130B258B623AC133241546000000006547
          2A8C6E4D2E980806030B00000000000000000000000000000000000000000000
          000000000000000000000806030B6E4D2E9865472A8C00000000000000001710
          0A20765331A36E4D2E981B130B25000000000000000000000000000000000000
          0000000000001B130B256E4D2E98765331A317100A2000000000000000000000
          000017100A2065472A8C8B623AC15C41267F2D20133F0D0905120D0905122D20
          133F5C41267F8B623AC165472A8C17100A200000000000000000000000000000
          000000000000000000003324154666482B8D90653CC7AD7A48F0AD7A48F09065
          3CC766482B8D3324154600000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00030000000C0000001300000014000000150000001500000016000000160000
          001700000017000000170000000F000000040000000000000000000000000000
          000B1F467BC32B61AAFF2B60A9FF2A5EA9FF295EA8FF285DA7FF275CA7FF275A
          A6FF265AA5FF2558A5FF1A3E75C70000000F0000000000000000000000000000
          000F3067AEFF87CBF1FF60B9EDFF60B8ECFF5EB8ECFF5DB7EBFF5CB6ECFF5AB6
          EBFF5AB5EAFF59B4EBFF275BA7FF000000160000000000000000000000000000
          000F336BB1FF90D1F3FF337ABDFF3179BDFF3176BCFF3074BBFF3072BAFF2E70
          B9FF2D6FB8FF5CB7ECFF2A5FA9FF000000160000000000000000000000000000
          000E3770B3FF98D5F4FF367EC0FFFBF6F2FFF6EEE6FFF6EEE6FFF6EDE5FFF6ED
          E4FF2F73BAFF61BAECFF2D63ABFF000000140000000000000000000000000000
          000D3A75B6FFA1D9F5FF3882C2FFFBF8F4FFF7EFE8FFF6EFE6FFF6EEE6FFF5EE
          E5FF3278BDFF66BDEEFF3067AEFF000000130000000000000000000000000000
          000C3E7AB9FFA9DEF7FF3A87C5FFFCFAF7FFF7F0E9FFF7F0E8FFF7EFE7FFF6EF
          E7FF347CBFFF6AC1EFFF336CB1FF000000120000000000000000000000000000
          000A417FBCFFB1E2F7FF3D8CC8FFFDFBF9FFF7F2EAFFF8F1E9FFF6EFE8FFF4ED
          E5FF377FC0FF6FC4EDFF3771B3FF000000110000000000000000000000000000
          00094584BFFFB9E6F9FF3F8FCBFFFDFCFBFFF8F3ECFFF6EFE8FFF2EBE4FFF1EA
          E2FF3981BDFF74C4ECFF3B75B5FF000000100000000000000000000000000000
          0008498AC2FFBFE9FAFF4194CCFFFDFCFBFFF1EAE5FFE9E3DCFFE9E1DAFFE7DF
          D9FF3C81B8FF77C4E7FF3E7AB6FF0000000E0000000000000000000000000000
          00074C8EC6FFC5ECFBFF5BA6D3FFE8E6E4FFCBC7C0FFBDB7B2FFBBB4B0FFC5BE
          B9FF4E87AEFF7ABFDCFF427DB6FF0000000D0000000000000000000000000000
          00065093C9FFD6F3FCFF6EA4C2FFA1877DFF82594AFF754737FF7A5142FF8D72
          68FF577D96FF89B8CAFF4581BAFF0000000C0000000000000000000000000000
          00055298CCFFE0F6FDFF998178FFC0A396FFE3D3C9FFE8D5C4FFD6BEAFFFB395
          88FF755D56FFB8CCD4FF4888C0FF0000000A0000000000000000000000000000
          0003407499C082BBDEFFA88577FFA88071FFA57D6DFFF0E5DBFF8D6556FF9D73
          64FF997263FF78AED4FF396A92C3000000060000000000000000000000000000
          00010000000300000004000000050000000559453D87AA8373FF4B372F870000
          0007000000070000000700000005000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
          00000000000100000004000000090000000D0000000F0000000F0000000C0000
          00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
          0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
          1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
          02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
          50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
          3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
          C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
          7CFFEFE6DFFFCDA67CFFCDA36EFFE4C693FFEFD9ABFFEAD2A8FFD4B284FFD0AE
          88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
          C9FFDDC1A8FFC99966FFE8C085FFE9C388FF8F4B24FFF1D8B1FFF3DDB8FFD6B3
          8AFFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
          F2FFC79873FFDEAB77FFEFCDABFFF1D2B5FF8F4524FFEDC99EFFF1D4B2FFECCF
          AEFFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
          FCFFBE875FFFEDCFB9FF682612FF8A3F22FF8C4024FF8F4225FF924427FFF1CE
          AEFFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
          F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FF8B3C23FFF1CEB6FFEBB78FFFE7BC
          9AFFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
          D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FF6A2213FFF1C8B2FFEBB08AFFCA8F
          6FFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
          A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88967FFCE9D
          84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
          4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
          F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
          020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
          A2FC62504B900404031000000002000000000000000000000000000000000000
          000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
          1F3E000000060000000100000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
          00000000000100000004000000090000000D0000000F0000000F0000000C0000
          00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
          0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
          1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
          02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
          50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
          3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
          C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
          7CFFEFE6DFFFCDA67CFFCDA36EFFE4C693FFEFD9ABFFE9D0A4FFD4B284FFD0AE
          88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
          C9FFDDC1A8FFC99966FFE8C085FFE9C388FFEDCB99FFF0D6ADFFF3DDB8FFD6B3
          8AFFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
          F2FFC79873FFDEAB77FFEFCDABFFF4DBC3FFF2D6B6FFF1D4B0FFF4DDC1FFF0D9
          BDFFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
          FCFFBE875FFFEDCFB9FF682612FF8A3F22FF8C4024FF8F4225FF924427FFF1CE
          AEFFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
          F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FFF3D4C2FFF0CBB2FFEBB78FFFE7BC
          9AFFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
          D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FFF6DDD3FFF1C8B2FFEBB08AFFCA8F
          6FFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
          A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88967FFCE9D
          84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
          4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
          F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
          020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
          A2FC62504B900404031000000002000000000000000000000000000000000000
          000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
          1F3E000000060000000100000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000002000000070000000C0000000F0000000F0000
          000C000000070000000200000000000000000000000000000000000000000000
          000000000001000000060403021A37211D8354322BB86F4339E56E4339E55633
          2CBB37211D830503021B00000006000000010000000000000000000000000000
          0001000000081C110F4B70453CE0B4958EFFDFD2CFFFF8F5F4FFF8F5F4FFDFD2
          CFFFB4958EFF70453CE01D12104F000000090000000100000000000000010000
          0006291A165F91655AFDDED0CCFFDFBFAEFFC28462FFB1673DFFB1653DFFBF82
          60FFDFBEACFFDED0CCFF91645AFD281A165F0000000600000001000000020A07
          062285594EF0E5D9D7FFCB9676FFB4683BFFE8C3B0FFFFEAE0FFFFE7E0FFF3D5
          C7FFB16338FFCA9274FFE5D9D7FF85584EF00A0706230000000200000006442E
          2885BFA29BFFE4C7B5FFBC7044FFB96D41FFBC7A55FFFFEAE3FFFFEAE3FFD09C
          80FFB4673BFFB96B3FFFE3C4B2FFBFA29BFF442E298600000006000000097A54
          4BD1E7DCD9FFCE9674FFBF7548FFBC7144FFBA754EFFFFEDE7FFFFEDE7FFCC96
          78FFB86D40FFBB7043FFCC916EFFE7DCD9FF7A544BD10000000A0000000A9469
          5EEDF7F3F2FFC7875DFFC68657FFC48355FFDBB299FFFFF0EAFFFFF0E9FFD09E
          80FFC07C4EFFC07B4EFFC37F56FFF7F3F2FF94695EED0000000B000000099A70
          63EDF8F4F3FFD5A176FFD1996BFFCC9162FFD6A98CFFEED6C8FFFFF0EDFFD5A6
          89FFC6895AFFC98C5DFFCD9268FFF8F4F3FF987064ED0000000A000000078664
          5ACCECE1DEFFE0B895FFD5A072FFD19B6CFFC68A5CFFBD7C4EFFBE7D4FFFC88B
          5DFFCF9365FFCE9465FFDAAC88FFECE2DEFF86645ACD0000000800000004523E
          387FD1B6AEFFF4E5D7FFDAA879FFD29D6EFFE5C6B1FFFFF6F3FFEAD0C2FFCC94
          69FFD29B6CFFD39B6CFFF1E0D3FFD1B6AEFF523E388000000004000000010D0A
          091AAD8679EFEFE6E3FFEFD9C3FFD7A677FFD6AD8CFFF9EEE7FFFFF8F4FFD4A4
          7DFFD5A172FFEDD4BEFFEFE6E3FFAE8679EF0D0A091B00000001000000000000
          0003362A2651C29B8DFCEBDED9FFF9F2ECFFE9D0BAFFD8AC86FFD7AB86FFEAD0
          BAFFFAF4EDFFEBDDD9FFC29A8DFC362A26520000000300000000000000000000
          0000000000032A211E3EA78477DBD9BFB5FFEBDDD8FFF7F2F0FFF7F2F0FFEBDD
          D8FFD9BFB5FFA78377DB2A211E3F000000030000000100000000000000000000
          000000000000000000020706050F58464075856B60ADAF8E7FE0AF8E7FE0876C
          62B057473F760706050F00000002000000000000000000000000000000000000
          0000000000000000000000000001000000020000000300000004000000040000
          0003000000020000000100000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0001000000060000000A0000000B0000000B0000000B0000000B0000000B0000
          000C0000000C0000000C0000000B000000070000000200000000000000000000
          000680574CBDB37B69FFB37A68FFB37A68FFB27968FFB27968FFB27A68FFB279
          68FFB37968FFB27967FFB17967FF7F5749BF0000000700000000000000000000
          0008B57D6BFFFBF7F3FFFBF6F3FFFBF6F3FFFBF5F2FFFBF5F2FFFBF5F2FFFAF5
          F1FFFBF5F1FFFAF4F1FFFAF4F0FFB27B68FF0000000B00000000000000000000
          0008B67F6DFFFCF8F5FFC79C8BFFC69B8BFFC59A8AFFC59A89FFC49888FFC498
          87FFC39787FFBA8B7AFFFBF5F2FFB47D6AFF0000000B00000000000000000000
          0008B8826FFFFCF9F6FFF7EEE9FFF8EEE9FFF8EFE8FFF8EEE8FFF7EEE8FFF8EE
          E8FFF7EDE8FFF7EEE8FFFBF7F3FFB67F6DFF0000000A00000000000000000000
          0007BA8473FFFDF9F8FFC8A090FFC89F8EFFC89E8DFFC79D8CFFC79C8BFFC69B
          8BFFC69A8AFFBC8E7DFFFCF8F5FFB88170FF0000000A00000000000000000000
          0007BB8776FFFDFBF9FFF8F1EBFFF8F1ECFFF8F0ECFFF8F1EBFFF8F0EBFFF9F0
          EBFFF8EFEAFFF8F0EAFFFCF9F7FFB98473FF0000000900000000000000000000
          0006BD8A78FFFDFBFAFFCBA695FFCAA494FFCAA393FFC9A291FFC8A191FFC8A0
          8FFFC89F8EFFBF9381FFFDFAF8FFBB8675FF0000000800000000000000000000
          0006BF8D7BFFFEFCFBFFFAF3EEFFFAF2EFFFF9F2EFFFFAF2EEFFF9F2EEFFFAF2
          EEFFFAF2EEFFF9F1EEFFFDFBF9FFBD8978FF0000000800000000000000000000
          0005C1907EFFFEFDFCFFCFAA9BFFCEAA9AFFCEA998FFCDA797FFCCA595FFCBA5
          94FFCAA393FFC19786FFFDFBFAFFBF8D7BFF0000000700000000000000000000
          0005C39381FFFEFDFDFFFBF4F2FFFAF5F2FFFAF5F1FFFAF5F1FFFBF5F1FFFBF4
          F1FFFAF4F1FFFAF4F0FFFEFCFBFFC18F7EFF0000000700000000000000000000
          0004C59684FFFEFEFEFF3C9EE0FF3A9DE0FF389ADFFF3699DDFF3497DCFF3296
          DCFF3094DBFF2E92DBFFFEFDFCFFC39381FF0000000600000000000000000000
          0004C69887FFFFFEFEFF4BB2EEFF49B0EDFF47AFEDFF45AEEDFF43ACECFF41AB
          ECFF3EAAECFF3598DDFFFEFDFDFFC59684FF0000000600000000000000000000
          0003C99B8AFFFFFEFEFF51B5EEFF4EB5EEFF4CB3EEFF4BB1EEFF48B0EEFF46AF
          EDFF44AEEDFF3A9EE1FFFFFEFEFFC79887FF0000000500000000000000000000
          0003CA9E8DFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFFFE
          FEFFFFFEFEFFFFFEFEFFFFFEFEFFC99B8AFF0000000400000000000000000000
          00029B7F74BFD0AB9CFFD0AB9CFFD0AA9CFFD0AA9BFFCFA99BFFCFA99AFFCFA9
          99FFCFA899FFCEA899FFCFA898FF997B71C00000000300000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000002000000070000000C0000001000000012000000110000
          000E000000080000000200000000000000000000000000000000000000000000
          000100000004000101120D2A1D79184E36C6216B4BFF216B4BFF216C4BFF1A53
          3AD20F2F21840001011500000005000000010000000000000000000000000000
          0005050F0A351C5B40DC24805CFF29AC7EFF2CC592FF2DC894FF2DC693FF2AAE
          80FF258560FF1A563DD405110C3D00000007000000010000000000000003040E
          0A31206548ED299D74FF2FC896FF2EC996FF56D4ACFF68DAB5FF3BCD9DFF30C9
          96FF32CA99FF2BA479FF227050F805110C3D00000005000000000000000A1A57
          3DD02EA57CFF33CA99FF2EC896FF4CD2A8FF20835CFF00673BFF45BE96FF31CB
          99FF31CB98FF34CC9CFF31AD83FF1B5C41D300010113000000020B23185E2E8A
          66FF3BCD9EFF30CA97FF4BD3A9FF349571FF87AF9DFFB1CFC1FF238A60FF45D3
          A8FF36CF9FFF33CD9BFF3ED0A3FF319470FF0F32237F00000007184D37B63DB3
          8CFF39CD9FFF4BD5A9FF43A382FF699782FFF8F1EEFFF9F3EEFF357F5DFF56C4
          A1FF43D5A8FF3ED3A4FF3CD1A4FF41BC95FF1B5C43CD0000000B1C6446DF4BCA
          A4FF44D2A8FF4FB392FF4E826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1B75
          4FFF60DCB8FF48D8ACFF47D6AAFF51D4ACFF247A58F80000000E217050F266D9
          B8FF46D3A8FF0B6741FFD2D2CBFF6A8F77FF116B43FF73967EFFF1E8E3FF72A2
          8BFF46A685FF5EDFBAFF4CD9AFFF6BE2C2FF278460FF020604191E684ADC78D9
          BEFF52DAB1FF3DBA92FF096941FF2F9C76FF57DEB8FF2D9973FF73967EFFF0EA
          E7FF4F886CFF5ABB9AFF5BDEB9FF7FE2C7FF27835FF80000000C19523BAB77C8
          B0FF62E0BCFF56DDB7FF59DFBAFF5CE1BDFF5EE2BEFF5FE4C1FF288C67FF698E
          76FFE6E1DCFF176B47FF5FD8B4FF83D5BDFF1E674CC60000000909201747439C
          7BFF95ECD6FF5ADFBAFF5EE2BDFF61E4BFFF64E6C1FF67E6C5FF67E8C7FF39A1
          7EFF1F6D4AFF288B64FF98EFD9FF4DAC8CFF1036286D00000004000000041C5F
          46B578C6ADFF9AEED9FF65E5C0FF64E7C3FF69E7C6FF6BE8C8FF6CE9C9FF6BEA
          C9FF5ED6B6FF97EDD7FF86D3BBFF237759D20102010C0000000100000001030A
          0718247B5BDA70C1A8FFB5F2E3FF98F0DAFF85EDD4FF75EBCEFF88EFD6FF9CF2
          DDFFBAF4E7FF78CDB3FF2A906DEA0615102E0000000200000000000000000000
          0001030A07171E694FB844AB87FF85D2BBFFA8E6D6FFC5F4EBFFABE9D8FF89D8
          C1FF4BB692FF237F60CB05130E27000000030000000000000000000000000000
          000000000001000000030A241B411B60489D258464CF2C9D77EE258867CF1F71
          56B00E3226560000000600000002000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
          76E4120852AD06031B4D0000000E000000030000000000000000000000000000
          000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
          C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
          03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
          D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
          5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
          BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
          A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
          CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
          BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
          EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
          CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
          E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
          D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
          E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
          D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
          E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
          DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
          EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
          DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
          D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
          D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
          A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
          79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
          BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
          050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
          EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
          000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
          EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
          000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
          B5D040437D951212223000000004000000010000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004FB5EAFF4FB5EAFF4FB5EAFF4FB5EAFF4FB5EAFF4FB5EAFF4FB5EAFF4FB5
          EAFF4FB5EAFF4FB5EAFF4FB5EAFF4FB5EAFF0000000000000000000000000000
          00004FB5EAFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF4FB5EAFF0000000000000000000000000000
          00004FB5EAFF72C4EEFF00000000000000000000000000000000000000000000
          0000000000000000000072C4EEFF4FB5EAFF0000000000000000000000000000
          00004FB5EAFF72C4EEFF000000000000000000000000966C45CC966C45CC0000
          0000000000000000000072C4EEFF4FB5EAFF0000000000000000000000000000
          00004FB5EAFF72C4EEFF000000000000000000000000966C45CC966C45CC0000
          0000000000000000000072C4EEFF4FB5EAFF0000000000000000000000000000
          00004FB5EAFF72C4EEFF00000000000000000000000000000000000000000000
          0000000000000000000072C4EEFF4FB5EAFF0000000000000000000000000000
          00004FB5EAFF72C4EEFF000000000000000000000000966C45CC705134990000
          0000000000000000000072C4EEFF4FB5EAFF0000000000000000000000000000
          00004FB5EAFF72C4EEFF0000000000000000000000003E2D1D55A2754BDD7051
          3499000000000000000072C4EEFF4FB5EAFF0000000000000000000000000000
          00004FB5EAFF72C4EEFF000000000303020564482E880C090611573F2877BB87
          56FF251B11330000000072C4EEFF4FB5EAFF0000000000000000000000000000
          00004FB5EAFF72C4EEFF000000000000000064482E88BB8756FFBB8756FF8963
          3FBB000000000000000072C4EEFF4FB5EAFF0000000000000000000000000000
          00004FB5EAFF72C4EEFF00000000000000000000000000000000000000000000
          0000000000000000000072C4EEFF4FB5EAFF0000000000000000000000000000
          00004FB5EAFF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000050B5E9FF0000000001010001000000000000
          00004FB5EAFF00000000848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF000000004FB5EAFF0000000000000000000000000000
          00000000000000000000848484FF848484FF848484FF00000000000000008484
          84FF848484FF848484FF00000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FF848484FF848484FF8484
          84FF000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000040000000C0000000A0000000400000004000000070000000A0000
          000B0000000D0000000D0000000D0000000C0000000A00000007000000000000
          00000000000B0B5D2FFF042D15AC0002011C32496397113866B70A3972D2093A
          76DB0A458BFF0A448AFF083873DC07346DD4052B5AB8041F4089000000070000
          000B00000016126737FF3CA885FF094321D47093ABFF8BB7DFFF4391D9FF2B85
          D7FF308FE4FF308FE4FF2A84D7FF2981D3FF2A7DCAFF0B488EFF13542FBD1875
          41FF187341FF177340FF2AC696FF24B07EFF196940FD74A0ABFFAAD2EDFF6DB6
          EEFF3F9EEBFF3F9EEBFF46A2ECFF56ADEDFF3B89CDFF0C447FDA20824BFF7AE4
          C9FF39CD9EFF37CC9DFF35CB9CFF33CA9BFF35C193FF278056FE518887FD7EBA
          E3FF51A5E2FF50A6E1FF58A6DFFF1A64A9FA0C3864A3020B1329258C53FFB5F2
          E4FFB5F2E4FFB3F2E4FF7DE6CAFF4AD2A8FF78DCC0FF3F9A6CFB133F2C89416E
          99E03E6C9DFF366596FF184F81DB02080E260000000500000002206F45C02B95
          5AFF299459FF299358FF9AECD6FF7DD6B9FF318D5CEC09201345000000194261
          88DC7DA4CDFF588BC1FF1C4070DE000000190000000000000000000000020000
          0003000000072D9B5FFF7ECEADFF257A4CCB040E092000000005020304205379
          ACF9BDE0F5FF8BC2EBFF335C95FD0103052D0000000300000000000000000000
          000000000002309F63FC1D5F3B9A0104020B000000010000000517335FC05C80
          B0FFCAE8F6FF94C6E9FF375D95FF102345AC0000000900000000000000000000
          0000000000000000000100000001000000000000000000000006205090F64F7C
          B1FF517CAFFF2C5088FF325D98FF183871F40000000B00000000000000000000
          0000000000000000000000000000000000000000000000000003255A9AE66C9D
          D0FE5C8CC1FF76A5D3FF5385BEFF1C427DF70000000700000000000000000000
          00000000000000000000000000000000000000000000000000010C1F3249255B
          92C22E6EB0E62F72B8FA204E82C80A192D590000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000030000000300000003000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000020000000B000000120000000C00000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000200000010071334970F276AFF0A193B970000000B000000000000
          00007B5043B8AB705CFFAB6F5AFFAB705CFFAA6F5BFFAA6E59FFA96F5AFFBE91
          82FFC9ACA3FF5F617FFF417CB9FF70C7FFFF265198FF00000010000000000000
          0000AD735FFFFDFBF9FFFBF5F2FFF7F2EEFFF3EDE9FFEFE9E5FFECE5E1FFE6DE
          DAFF707E9FFF4C83BCFF83CFFFFF5694CEFF142B4D930000000A000000000000
          0000B07762FFFDFBFAFFF7F3F0FFE2D8D2FFA5816CFF8E5E42FF8C5D41FF7A5E
          54FF577EA6FF92D4FAFF619CD0FF727F9BFF0000000E00000002000000000000
          0000B07966FFFBF9F9FFE1D5CEFF936346FFC8A37FFFEFD7B2FFF0DAB8FFC7A6
          88FF895D43FF6891B2FF849DB9FFCCB0A7FF0000000200000000000000000000
          0000B37C69FFFAF8F7FFAD8975FFC7A07BFFF7D39CFFF5CD93FFF7D39BFFF9DD
          B2FFC7A688FF84695DFFE8E2DEFFC29888FF0000000000000000000000000000
          0000B67F6CFFF9F8F7FF98694CFFF1D4A7FFFAE5C0FFFBEACAFFF7D6A0FFF6D3
          9BFFF2DBBBFF8F5D42FFF0E9E7FFB27A66FF0000000000000000000000000000
          0000B98371FFFAF9F8FF9D6E51FFF2D4A5FFFDF6E2FFFDF3DCFFFBEACAFFF5CE
          92FFF1DAB5FF936245FFF2EDE9FFB47D6AFF0000000000000000000000000000
          0000BC8877FFFCFCFBFFB99783FFCDA77EFFF9E0B5FFFEF7E5FFFBE5C1FFF6D4
          9DFFCAA681FFAF8C77FFF5F1EEFFB6806DFF0000000000000000000000000000
          0000BF8C7AFFFDFDFCFFEDE4DFFFA87A5DFFCEA77FFFEFD2A3FFEFD2A5FFCCA7
          80FFA17356FFE4DAD4FFFAF6F3FFB98371FF0000000000000000000000000000
          0000C18F7FFFFEFEFEFFFDFCFBFFEDE4DFFFBE9C87FFAA7E62FFA97D60FFBB98
          82FFEADFD8FFFBF8F6FFFDF9F8FFBD8774FF0000000000000000000000000000
          0000C49382FFFFFEFEFFFEFEFDFFFBF6F4FFFAF5F3FFF9F3F0FFF9F3F0FFFAF2
          F0FFFAF4F0FFFDFBF9FFFDFBF9FFBF8C7BFF0000000000000000000000000000
          0000C79985FFFFFEFEFFFFFEFEFFFEFEFDFFFEFDFDFFFEFDFDFFFEFDFCFFFEFC
          FCFFFEFCFBFFFEFCFAFFFDFCFAFFC28F7FFF0000000000000000000000000000
          0000C99A89FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFE
          FDFFFEFEFDFFFEFDFDFFFEFDFDFFC49382FF0000000000000000000000000000
          0000967467BDCA9C8BFFCA9C8BFFC99C8AFFC99B89FFC99B8AFFCA9A88FFC89A
          88FFC99987FFC79887FFC89886FF927163BD0000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000003000000090000000A00000006000000000000
          0000000000000000000000000001000000060000000A0000000B0000000B0000
          000B0000000B0000000F0E0A08446F5348FF6F5248FF3729248D000000000000
          0000000000000000000000000006815D4FBDB3816EFFB3806DFFB3806CFFB27E
          6CFFC9A599FFAC8C81FF735A4FFFC5A794FFC5A794FF715449FF000000000000
          0000000000000000000000000008B68370FFF8F1EDFFF7F0EBFFF4EEE9FFF1EA
          E6FFD0C7C1FF796055FFC7AB98FFDBBEA8FFEBDACDFF74584DFF000000000000
          0000000000000000000000000008B78572FFF9F3F0FFEDE5E0FF94837CFF896D
          62FF684E45FFC9AD9BFFDEC1ADFFEDDCD2FF947A6EFF16100E401B487EB72563
          AEFF2560AEFF2560AEFF235BA7FFB98775FFF8F3F0FF9A8983FFA0887EFFE3D0
          C3FFDDC6B6FFE1C6B4FFF1E3DAFF998074FFB6978BFF0000000C296AB3FF87C8
          EDFF61B4E7FF60B3E7FF5CADE2FFBB8978FFF8F3F1FF92776AFFE7D6CBFF886A
          5EFF957A6FFFE4D2C6FF84675AFFDCD3CEFFCBA99DFF000000082C6FB7FF9FDD
          F7FF6EC3F0FF6DC1F0FF69BBE9FFBC8C7AFFFAF7F5FF967B6EFF8D6F62FFBDAB
          A2FF6B5045FFE8DAD0FF907569FFF7F2F0FFB78572FF000000082F75BCFFABE4
          F9FF75C8F2FF73C6F1FF6EC0EBFFBE8E7DFFFDFBFAFFF8F2EFFFF6F0ECFF6D52
          47FFE7DDD6FFC2AEA3FFBCAAA2FFFBF8F6FFB88775FF00000007327CBFFFB6EA
          FBFF7BCDF4FF79CBF3FF74C6EEFFC09180FFFEFDFCFFFAF6F3FFFAF5F1FF9E82
          75FF9C8274FFC2B0A7FFF6F0EDFFFDFBFAFFBA8977FF000000063582C4FFBFEF
          FCFF81D1F5FF80D0F4FF7CCBF1FFC29383FFFEFEFDFFFEFEFDFFFEFDFDFFFDFC
          FCFFFDFCFBFFFDFCFBFFFEFDFCFFFEFDFCFFBC8B7AFF000000053688C8FFC7F3
          FDFF87D6F6FF85D5F6FF83D0F4FFB2A4A1FFC39685FFC29584FFC29383FFC193
          82FFC19281FFC09180FFBF907FFFBE8F7EFF8C695DC000000003398ECBFFCDF6
          FDFF8DDAF8FF8BD8F8FF89D8F7FF89D6F5FFA7E5F8FFCDF3FAFFCEF3FAFFCCF2
          FAFFCAF0FAFFC7EFF9FF327EBFFF0000000400000002000000013B92CEFFD1F8
          FEFF93DFFAFF91DDF9FF92DCF9FFA5E3F8FF4595CEFF378CC9FF378AC9FF3689
          C8FF3688C8FF3787C6FF286393BD0000000000000000000000003D97D1FFE2FC
          FEFFE1FCFEFFE0FBFEFFD1F2FAFF428FC2EB040A0F1200000000000000000000
          00000000000000000000000000000000000000000000000000002F739CBD3E9A
          D3FF3E99D3FF3E99D3FF3E97D2FF143245540000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object imIcone: TImageList
    DrawingStyle = dsTransparent
    Left = 29
    Top = 57
    Bitmap = {
      494C010144004500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002001000001002000000000000020
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400848484008484840000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700E7E7E700EFEFEF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00001000630008007B001000940008007B0010006B0010006300100063000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848484008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00C6BDBD00C69C8400CE946300D6A57B00D6CECE00C6BDBD00DEDE
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00D6D6
      D600BDBDBD009C9C9C00D6D6D600EFEFEF00EFEFEF00D6D6D600A5A5A500C6C6
      C600DEDEDE00F7F7F700FFFFFF00FFFFFF000000000000000000000000000808
      A5000808AD001008B5001008B5000808AD000808A5001000940008007B001000
      63000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00C6C6C6008484840084848400FFFFFF00FFFFFF00E7E7E700B5AD
      AD00CE310800DE420000E75A0000EF6B0000F7840000FF940000FFA50800D6CE
      BD00B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700C6C6
      C600F7F7F700EFEFEF00E7E7E700DEDEDE00DEDEDE00E7E7E700EFEFEF00F7F7
      F700CECECE00FFFFFF00FFFFFF00FFFFFF0000000000000000001008B5001010
      CE001818D6001818D6001818D6001818D6001010BD001008B5000808A5000000
      84001000630000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00C6C6C600C6C6C60000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF008484840000000000FFFFFF00EFEFEF00AD949400D631
      0000D6290000DE420000DE520000D6A57B00BD6B1000FF940000FFA51000FFAD
      2900CEAD7300B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00F7F7
      F700E7E7E700DEE7E7005A9CDE00006BCE000063C6005A9CD600DEE7E700DEDE
      DE00EFEFEF00D6D6D600FFFFFF00FFFFFF00000000001008BD001818D6001029
      E7001029EF001029EF001029EF001029E7001821DE001818D6001008B5000808
      A500100094000000520000000000000000000084840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00000000008484840000000000FFFFFF00B5ADAD00DE420000D631
      0000D6290000DE420000CE8C6300C6CECE00D6DEDE00EF8C0000FF9C0800FFA5
      1800FFA51800C6B59C00D6D6D600FFFFFF00FFFFFF00EFEFEF00F7F7F700DEDE
      DE008CBDEF00007BF700108CFF00187BDE00318CDE00007BFF00006BD6008CB5
      E700DEDEDE00F7F7F700EFEFEF00FFFFFF00000000001821DE001831F7001831
      F7002142FF001842FF001831F7001831F7001029EF001821DE001818D6001008
      B5000808A50010006B0000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00848484000000000000000000D6D6D600CE631800DE420000DE31
      0000D6290000DE390000DE5A1000C6C6C600C6AD9400F7840000FF940000FF9C
      0000FF9C0000FF940000BDBDBD00FFFFFF00FFFFFF00E7E7E700E7E7E700B5CE
      EF00007BF700108CFF00188CFF00FFFFFF00FFFFFF000084FF00007BFF00005A
      BD00B5CEE700E7E7E700E7E7E700FFFFFF001000A5001831F7002142FF002952
      FF003952FF003952FF002952FF002142FF001842FF001831F7001821DE001818
      D6001008B500100094000000420000000000000000000084840000FFFF0000FF
      FF0000FFFF0000FFFF00C6C6C600C6C6C60000FFFF0000FFFF0000FFFF0000FF
      FF0000000000848484000000000000000000B5ADAD00EF843900E74A0000DE39
      0000D6290000DE310000D64A0800C67B5200CE7B4200F7730000F7840000FF8C
      0000FF8C0000F7840000B5A5A500F7F7F700F7F7F700F7F7F700DEDEDE000073
      E700007BFF00007BF700007BF7001884EF003994E700006BDE000063C600005A
      B500004A9C00DEDEDE00F7F7F700F7F7F7001818D6002142FF003952FF003963
      FF003963FF003963FF003963FF003952FF002952FF001831F7001831F7001818
      D6001010C60008009C001000630000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0084848400000000000000000000000000B5ADAD00F7944A00EF733900DE42
      0000D6310000D6290000D65A2900F7FFF700F7F7EF00E7630000EF6B0000F773
      0000F7730000EF6B0000BD7B5200DEDEDE00E7E7E700EFEFEF00DEE7E7000084
      FF00007BFF00007BF7000073E700E7F7FF00FFFFFF000063CE00005ABD00005A
      B5000052A500DEE7E700EFEFEF00E7E7E7001818D6002952FF003963FF004A73
      FF004A73FF004A73FF005A8CFF003963FF003952FF002142FF001831F7001821
      DE001018CE000808A500100063000000000000000000000000000084840000FF
      FF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF000000
      000084848400000000000000000000000000BDADAD00F7944200EF8C4200EF7B
      4A00DE390000D6290000D6290000D6DED600DEE7E700A54A1000E75A0000EF5A
      0000EF5A0000E75A0000C66B3900DEDEDE00DEDEDE00EFEFEF00DEE7E7000084
      FF00007BFF00007BF7000073EF007BB5EF00FFFFFF00005ABD00005ABD00005A
      B5000052AD00DEE7EF00EFEFEF00DEDEDE001010C6003952FF003963FF005284
      FF004A73FF008CDEFF00FFFFFF004A73FF003963FF002952FF001831F7001029
      EF001818D6000808A500100052000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF008484
      840000000000000000000000000000000000C6C6C600F79C4200F78C4200EF84
      4200E7734200E76B4200DE391000CE523100BDC6C600C6CECE00B5390000E74A
      0000E74A0000E7520800C6948400E7E7E700E7E7E700EFEFEF00DEDEE7000884
      FF000084FF00007BF7000073EF00006BDE00FFFFFF00FFFFFF000063C6000063
      C600005AB500DEE7E700EFEFEF00E7E7E700000000003952FF004A73FF004A73
      FF005284FF005284FF005A8CFF004A73FF003963FF003952FF001842FF001029
      EF001818D6000808A50000000000000000000000000000000000000000000084
      840000FFFF0000FFFF00000000000000000000FFFF0000FFFF00000000008484
      840000000000000000000000000000000000C6C6C600F79C3900F7943900EF8C
      4200EF7B4200E7734200E76B4200E76B4A00CEC6C600C6C6C600C6ADA500E773
      5200E77B5200E77B5A00ADA5A500FFFFFF00F7F7F700F7F7F700DEDEDE000884
      F7002994FF002194FF00108CFF00088CFF0052A5EF00FFFFFF000073E700007B
      F7000063CE00DEDEDE00F7F7F700F7F7F700000000002142FF003963FF005284
      FF005284FF005284FF004A73FF004A73FF003963FF003952FF001842FF001029
      E7001010CE0008009C0000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00000000000000000000FFFF0000FFFF00848484000000
      000000000000000000000000000000000000E7E7E700DEA56B00F79C3900F794
      3900EF843900DE7B4200C69C8C00C6846B00C6C6C600C6C6C600C6B5AD00E76B
      5200E76B5200E7735A00ADADAD00FFFFFF00FFFFFF00E7E7E700E7E7E700B5CE
      EF004AA5FF004AA5FF009CCEFF00FFFFFF00FFFFFF00FFFFFF00188CFF00188C
      FF00B5CEE700E7E7E700E7E7E700FFFFFF0000000000000000003952FF004A73
      FF004A73FF005284FF004A73FF004A73FF003963FF002142FF001831F7001821
      DE001008BD000000000000000000000000000000000000000000000000000000
      00000084840000FFFF0000FFFF0000FFFF0000FFFF0000000000848484000000
      000000000000000000000000000000000000FFFFFF00DEDEDE00F7943900F794
      3100F7943900EFC6A500E7E7E700DEDEDE00D6D6D600CECECE00D6735200E773
      4A00E7734A00B5A5A500F7F7F700FFFFFF00FFFFFF00EFEFEF00F7F7F700E7E7
      E7008CBDEF005AADFF005AADFF0063B5FF006BB5FF0042A5FF0042A5FF008CB5
      E700DEDEDE00F7F7F700EFEFEF00FFFFFF000000000000000000000000002952
      FF003963FF004A73FF003963FF003963FF002952FF001842FF001029EF001010
      C600000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0084848400000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00EFEFE700F794
      3100F7943100F7943900EF944A00EFAD8400E7A57300E77B4200EF7B4200EF7B
      4200C6A59C00D6D6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00F7F7
      F700E7E7E700DEDEE7005A9CE7001884E7001884E7005A9CDE00DEE7E700E7E7
      E700F7F7F700DEDEDE00FFFFFF00FFFFFF000000000000000000000000000000
      00001831F7002142FF002942FF002142FF001831F7001821DE001010BD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000FFFF0000FFFF000000000084848400000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00E7E7
      E700E7A56300F7943100F7943100F7943900F78C3900F78C3900EF945200B5AD
      A500DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDE
      DE00F7F7F700EFEFEF00E7E7E700E7E7E700E7E7E700E7E7E700EFEFEF00F7F7
      F700DEDEDE00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00C6C6C6000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE00CECECE00CEC6C600CEBDA500C6B5AD00BDB5B500CEC6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D6D6D600E7E7E700F7F7F700F7F7F700E7E7E700D6D6D600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      000000632100007B180000942900007B1800006B210000632100006321000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000004A6300006B7B0000739400006B7B0000526B00004A6300004A63000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A005A5A5A006B6B6B005A5A5A00525252004A4A4A004A4A4A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00000000000000000000000000000000000000000000AD
      180000B5180000C6210000C6210000B5180000AD180000942900007B18000063
      21000000000000000000000000000000000000000000000000000000000000A5
      AD0000ADB50000B5C60000B5C60000ADB50000A5AD0000739400006B7B00004A
      6300000000000000000000000000000000000000000000000000000000007B7B
      7B00848484009494940094949400848484007B7B7B006B6B6B005A5A5A004A4A
      4A00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF000000000000000000000000000000000000C6210000DE
      180000EF210000EF210000EF210000EF210000CE180000C6210000AD18000084
      100000632100000000000000000000000000000000000000000000B5C60000D6
      DE0000E7EF0000E7EF0000E7EF0000E7EF0000C6CE0000B5C60000A5AD00007B
      8400004A6300000000000000000000000000000000000000000094949400A5A5
      A500B5B5B500B5B5B500B5B5B500B5B5B5009C9C9C00949494007B7B7B006363
      63004A4A4A00000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF0000FFFF0000000000000000000000000000CE210000EF210000FF
      080000FF100000FF100000FF100000FF080000F7100000EF210000C6210000AD
      1800009429000052100000000000000000000000000000BDCE0000E7EF0000FF
      EF0000FFF70000FFF70000FFF70000FFEF0000F7F70000E7EF0000B5C60000A5
      AD0000739400004A520000000000000000000000000094949400B5B5B500BDBD
      BD00C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00B5B5B500949494007B7B
      7B006B6B6B00424242000000000000000000000000000000000000000000BD00
      0000BD000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF0000000000000000000000000000F7100010FF210010FF
      210021FF210021FF180010FF210010FF210000FF100000F7100000EF210000C6
      210000AD1800006B210000000000000000000000000000F7F70010FFF70010FF
      F70021FFEF0018FFE70010FFF70010FFF70000FFF70000F7F70000E7EF0000B5
      C60000A5AD0000526B00000000000000000000000000BDBDBD00CECECE00CECE
      CE00DEDEDE00D6D6D600CECECE00CECECE00C6C6C600BDBDBD00B5B5B5009494
      94007B7B7B0052525200000000000000000000000000BD000000BD000000BD00
      0000BD000000FFFFFF00C6C6C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF0000FFFF00000000000000000000AD210010FF210021FF210031FF
      290039FF390039FF390031FF290021FF210021FF180010FF210000F7100000EF
      210000C62100009429000042100000000000009CAD0010FFF70021FFEF0029FF
      DE0039FFEF0039FFEF0029FFDE0021FFEF0018FFE70010FFF70000F7F70000E7
      EF0000B5C6000073940000394200000000007B7B7B00CECECE00DEDEDE00DEDE
      DE00EFEFEF00EFEFEF00DEDEDE00DEDEDE00D6D6D600CECECE00BDBDBD00B5B5
      B500949494006B6B6B00313131000000000000000000BD000000BD000000BD00
      0000BD000000BD000000BD000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00000000000000000000EF210021FF210039FF39004AFF
      39004AFF39004AFF39004AFF390039FF390031FF290010FF210010FF210000EF
      210000D61800009C2100006321000000000000E7EF0021FFEF0039FFEF0039FF
      E70039FFE70039FFE70039FFE70039FFEF0029FFDE0010FFF70010FFF70000E7
      EF0000CED600008C9C00004A630000000000B5B5B500DEDEDE00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00DEDEDE00CECECE00CECECE00B5B5
      B500A5A5A500737373004A4A4A000000000000000000BD000000BD000000BD00
      0000BD000000BD000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6
      C600FFFFFF0000FFFF00000000000000000000EF210031FF29004AFF39005AFF
      4A005AFF4A005AFF4A0073FF5A004AFF390039FF390021FF210010FF210000F7
      100000DE100000AD1800006321000000000000E7EF0029FFDE0039FFE7004AFF
      DE004AFFDE004AFFDE005AFFD60039FFE70039FFEF0021FFEF0010FFF70000F7
      F70000DED60000A5AD00004A630000000000B5B5B500DEDEDE00EFEFEF00F7F7
      F700F7F7F700F7F7F700FFFFFF00EFEFEF00EFEFEF00DEDEDE00CECECE00BDBD
      BD00A5A5A5007B7B7B004A4A4A0000000000000000000000000000000000BD00
      0000BD000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00000000000000000000D6180039FF39004AFF39006BFF
      52005AFF4A00CEFF8C00FFFFFF005AFF4A004AFF390031FF290010FF210000FF
      100000EF210000AD1800005218000000000000CED60039FFEF0039FFE70052FF
      DE004AFFDE008CFFB500FFFFFF004AFFDE0039FFE70029FFDE0010FFF70000FF
      F70000E7EF0000A5AD000039520000000000A5A5A500EFEFEF00EFEFEF00FFFF
      FF00F7F7F700FFFFFF00FFFFFF00F7F7F700EFEFEF00DEDEDE00CECECE00C6C6
      C600B5B5B5007B7B7B003939390000000000000000000000000000000000BD00
      0000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF0000FFFF0000000000000000000000000039FF39005AFF4A005AFF
      4A006BFF52006BFF520073FF5A005AFF4A004AFF390039FF390021FF180000FF
      100000EF210000AD180000000000000000000000000039FFEF004AFFDE004AFF
      DE0052FFDE0052FFDE005AFFD6004AFFDE0039FFE70039FFEF0018FFE70000FF
      F70000E7EF0000A5AD00000000000000000000000000EFEFEF00F7F7F700F7F7
      F700FFFFFF00FFFFFF00FFFFFF00F7F7F700EFEFEF00EFEFEF00D6D6D600C6C6
      C600B5B5B5007B7B7B0000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF0000000000000000000000000021FF21004AFF39006BFF
      52006BFF52006BFF52005AFF4A005AFF4A004AFF390039FF390021FF180000FF
      080000DE1800009C210000000000000000000000000021FFEF0039FFE70052FF
      DE0052FFDE0052FFDE004AFFDE004AFFDE0039FFE70039FFEF0018FFE70000FF
      EF0000D6DE00008C9C00000000000000000000000000DEDEDE00EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700F7F7F700EFEFEF00EFEFEF00D6D6D600BDBD
      BD00A5A5A5007373730000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF0000FFFF000000000000000000000000000000000039FF39005AFF
      4A005AFF4A006BFF52005AFF4A005AFF4A004AFF390021FF210010FF210000F7
      100000CE2100000000000000000000000000000000000000000039FFEF004AFF
      DE004AFFDE0052FFDE004AFFDE004AFFDE0039FFE70021FFEF0010FFF70000F7
      F70000BDCE000000000000000000000000000000000000000000EFEFEF00F7F7
      F700F7F7F700FFFFFF00F7F7F700F7F7F700EFEFEF00DEDEDE00CECECE00BDBD
      BD00949494000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000000000C6C6C600C6C6C6000000000000FF
      FF0000FFFF0000FFFF00000000000000000000000000000000000000000031FF
      29004AFF39005AFF4A004AFF39004AFF390031FF290021FF180000FF100000D6
      18000000000000000000000000000000000000000000000000000000000029FF
      DE0039FFE7004AFFDE0039FFE70039FFE70029FFDE0018FFE70000FFF70000CE
      D60000000000000000000000000000000000000000000000000000000000DEDE
      DE00EFEFEF00F7F7F700EFEFEF00EFEFEF00DEDEDE00D6D6D600C6C6C600A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000010FF210021FF210029FF290021FF210010FF210000F7100000CE18000000
      0000000000000000000000000000000000000000000000000000000000000000
      000010FFF70021FFEF0029FFEF0021FFEF0010FFF70000F7F70000C6CE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECECE00DEDEDE00DEDEDE00DEDEDE00CECECE00BDBDBD009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00E7EFDE00E7EFDE00E7EF
      DE00E7EFDE00E7EFDE00E7EFDE00EFEFDE00E7EFD600E7EFDE00E7EFDE00E7EF
      DE00E7EFDE00E7EFDE00E7EFDE00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEDEDE00D6D6C600D6D6C600CECE
      C600CED6C600D6DECE00E7EFDE00C6C6BD00FFFFFF00E7EFDE00E7EFDE00E7EF
      DE00E7EFDE00E7EFDE00E7EFD600EFEFE7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6D6CE0063635A007B7B73005A5A
      52006B7363006B6B63009CA59400EFF7E700F7FFEF00E7EFDE00E7EFDE00E7EF
      DE00E7EFDE00E7EFDE00E7EFD600DEE7D6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000000000000000000000000000008400000084000000840000008400
      000084000000840000000000000000000000D6D6CE00848C7B004A4A42006B73
      6300848C7B0063635A00ADADAD008C948C007B7B7B007373730052524A009CA5
      9400D6DECE009CA59400E7EFDE00E7EFDE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008400
      0000000000000000000000000000000000000000000084848400840000008400
      000084848400000000000000000000000000D6D6CE00949C8C00ADB5A5006B73
      6300A5AD9C00BDBDB500EFEFE700DEE7DE00DEE7D600EFF7E700E7E7D600DEE7
      D600E7E7D600E7EFDE00E7EFDE00E7EFDE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000000000000000000000000000000000000084848400840000008400
      000000000000000000000000000000000000D6D6CE00E7EFDE00E7EFDE00EFF7
      DE00E7EFD600EFEFEF00EFEFDE00EFEFDE00E7EFD600E7EFD600F7F7EF00E7EF
      DE00E7EFDE00E7EFDE00E7EFDE00E7EFDE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400840000000000000000000000000000000000000084000000840000008484
      840000000000000000000000000000000000CED6C600EFEFE700FFFFF700BDC6
      B500E7EFE700FFFFF700E7EFE700E7EFDE00EFF7E700EFEFE700EFEFE700EFEF
      DE00EFEFDE00EFEFDE00EFEFDE00E7EFDE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008400000084000000840000000000
      000000000000000000000000000000000000CED6CE005A5A52008C8C8C007B84
      730042423900EFF7EF00EFF7E700EFF7E700E7E7DE00EFEFE700EFF7EF00EFEF
      E700EFF7E700EFF7E700EFF7E700EFF7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008400000000000000000000008400000084000000848484000000
      000000000000000000000000000000000000D6D6D600F7F7F700F7F7F700F7FF
      EF00EFEFE700EFEFE700FFFFFF00FFFFFF00FFFFF700FFFFF700EFF7E700EFEF
      E700F7F7F700F7F7F700F7F7F700F7F7EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000000000008400000084000000000000000000
      000000000000000000000000000000000000DEDEDE00FFFFFF00FFFFFF00FFFF
      FF00C6C6BD00949C8C00C6C6BD00635A630018181800FFFFFF00ADADAD00FFFF
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084000000840000008400000084848400000000000000
      000000000000000000000000000000000000DEDEDE00FFFFFF00FFFFFF00FFFF
      FF00F7FFFF00B5ADCE00F7F7FF00FFFFFF009C94CE009C94CE00F7F7FF00F7FF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000000000000000000000000
      000000000000000000000000000000000000DEDEDE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFEF00FFFFFF0000000000F7F7
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400840000008484840000000000000000000000
      000000000000000000000000000000000000DEDEDE00FFF7FF004A4AAD00D6D6
      D600D6D6D600CED6CE00CECECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ADADAD00F7EFEF00848CE700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      000000000000000000000000000000000000DEDEDE00EFFFFF008484B500CECE
      CE00848C84009C9C9C00848C8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E7E7E700EFEFEF009494B500F7FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFEF00FFFFFF00FFF7FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF005A5A9400F7EFF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000840000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000084000000840000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000084000000840000008400000084000000840000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00C6C6C600C6C6
      C600C6C6C6008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000084000000840000FFFFFF00FFFFFF0000840000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000008400
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00C6C6C600C6C6
      C6000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000840000FFFFFF00FFFFFF0000840000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000848484008400
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00C6C6C6000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000848484000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000840000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000840000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00848484000000
      0000FFFF0000000000000000000000000000FFFFFF0000000000C6C6C6000000
      0000848484000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000840000FFFFFF00FFFFFF0000840000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF0000000000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000840000FFFFFF00FFFFFF000084000000840000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000840000008400000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000000000000000000000000000FFFFFF0000000000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000084000000840000008400000084000000840000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000848484008400
      0000000000000000000000000000000000008400000084000000000000000000
      0000000000008400000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFFFF0000000000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000084000000840000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000008484
      8400840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000C6C6C6000000
      0000848484000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000840000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600C6C6C600C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C6000000000000000000D6D6D6007B7373005239
      390021101000007B9400007BE70000C6FF000073FF00004ABD0052317B002118
      39005252520000000000000000000000000000000000636B7300CE9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600424242006363630042424200C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000949494007B5A5A008C5A5200B57B
      7B0052292100007B9400007BE70000C6FF000073FF00004ABD0052318C002100
      7B00313131000000000000000000000000006394B500218CEF001873B500D69C
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6004242420063636300ADADAD006363630042424200C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000008C8C8C00BD848400945A5A00B57B
      7B0052292100007B9400007BE70000C6FF000073FF00004ABD0052318C002100
      8400424242000000000000000000000000004AB5FF0042A5FF00218CEF007B84
      9400CE9C94000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400848484008484840084848400C6C6C600C6C6C600C6C6C600C6C6
      C6004242420063636300ADADAD000000FF00ADADAD006363630042424200C6C6
      C600C6C6C600C6C6C600C6C6C600000000008C8C8C00BD848400945A5A00B57B
      7B0052292100007B9400007BE70000C6FF00005AE7000031A50052318C002100
      84008C8C8C000000000000000000000000000000000052BDFF005ABDFF00218C
      EF001873B500D69C940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400C6C6C600C6C6C600C6C6C6004242
      420063636300ADADAD000000FF000000FF000000FF00ADADAD00636363004242
      4200C6C6C600C6C6C600C6C6C600000000008C8C8C00BD848400945A5A00B57B
      7B003129290000ADD60000ADF70000CEFF0000A5FF000029A500523184002100
      84008C8C8C000000000000000000000000000000000031A5FF0052BDFF0039A5
      FF00218CEF0084849400D69C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000FFFFFF0000FFFF000000000084848400C6C6C600C6C6C600424242006363
      6300ADADAD000000FF000000FF000000FF000000FF000000FF00ADADAD006363
      630042424200C6C6C600C6C6C600000000008C8C8C00BD848400945A5A00C68C
      8C003139390000CEFF0000CEFF0000CEFF0000ADFF00005AFF00081863002910
      6B008C8C8C0000000000000000000000000000000000000000000000000052BD
      FF005ABDFF003184D60052636B00000000009C6B6B00CEA59C00D6B5A500CEA5
      9C00C6949400000000000000000000000000848484000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000C6C6
      C60000000000FFFFFF000000000084848400C6C6C6004242420063636300ADAD
      AD00ADADAD00ADADAD000000FF000000FF000000FF00ADADAD00ADADAD00ADAD
      AD006363630042424200C6C6C60000000000634A4A00CE949400CE949400CE94
      9400424A520000CEFF0000CEFF0000CEFF0000ADFF000063FF0018296B004A21
      9C005A526B0000000000000000000000000000000000000000000000000031A5
      FF0052BDFF00C6CEDE009C9C9C00AD8C8400E7D6BD00FFFFDE00FFFFDE00FFFF
      D600EFDEC6000000000000000000000000000000840000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FF
      FF00C6C6C6000000000000000000848484004242420063636300636363006363
      630063636300ADADAD000000FF000000FF000000FF00ADADAD00636363006363
      6300636363006363630042424200000000005A424200CE949400CE949400CE94
      9400424A520000CEFF0000CEFF0000CEFF0000ADFF000063FF0018296B005221
      AD00100042000000000000000000000000000000000000000000000000000000
      000000000000C6ADAD00CEA59400FFEFBD00FFF7CE00FFFFDE00FFFFDE00FFFF
      E700FFFFEF00FFFFFF00C6A5A50000000000000084000000840000FFFF00FFFF
      FF0000FFFF00FFFFFF00848484000000840000FFFF00FFFFFF00000000000000
      000000000000000000000000000084848400C6C6C600C6C6C600C6C6C600C6C6
      C60063636300ADADAD000000FF000000FF000000FF00ADADAD0063636300C6C6
      C600C6C6C600C6C6C600C6C6C600000000005A424200CE949400CE949400CE94
      9400424A520000CEFF0010D6FF005ADEFF006BC6FF000873FF0018296B005221
      AD00100042000000000000000000000000000000000000000000000000000000
      000000000000C6948C00F7DEBD00F7DEAD00FFF7CE00FFFFDE00FFFFDE00FFFF
      F700FFFFF700FFFFFF00F7EFDE000000000084848400000084008484840000FF
      FF00FFFFFF00848484000000840084848400FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF000000000084848400C6C6C600C6C6C600C6C6C600C6C6
      C60063636300ADADAD000000FF000000FF000000FF00ADADAD0063636300C6C6
      C600C6C6C600C6C6C600C6C6C600000000005A424200CE949400CE949400D69C
      9C00424A520052D6F7007BBDF7004A8CEF002184F700298CF700314273005221
      AD00100042000000000000000000000000000000000000000000000000000000
      000000000000E7CEB500FFEFBD00F7CE9C00FFEFC600FFFFDE00FFFFE700FFFF
      FF00FFFFFF00FFFFE700FFFFE700C69494000000000000008400000084008484
      840000FFFF000000840000008400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF000000000084848400C6C6C600C6C6C600C6C6C600C6C6
      C60063636300ADADAD000000FF000000FF000000FF00ADADAD0063636300C6C6
      C600C6C6C600C6C6C600C6C6C600000000005A424200CE949400E7C6C600FFDE
      DE009C84840031738C0029292900212121001829420063638400BD94D6008C52
      D600100042000000000000000000000000000000000000000000000000000000
      000000000000EFDEB500FFEFBD00F7C68C00FFE7B500FFFFDE00FFFFDE00FFFF
      EF00FFFFEF00FFFFDE00FFFFDE00BD9C8C000000000084848400000084000000
      84000000840000008400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF000000000084848400C6C6C600C6C6C600C6C6C600C6C6
      C60063636300ADADAD000000FF000000FF000000FF00ADADAD0063636300C6C6
      C600C6C6C600C6C6C600C6C6C6000000000073636300D6C6C600523939003921
      18005229210021181800948C8C00B5ADAD006363630018102900210063002908
      73006B5A7B000000000000000000000000000000000000000000000000000000
      000000000000E7CEAD00FFF7C600EFBD8400F7CE9400FFEFC600FFFFD600FFFF
      DE00FFFFDE00FFFFDE00FFFFDE00C69494000000000084848400000084000000
      840000008400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF000000000084848400C6C6C600C6C6C600C6C6C600C6C6
      C60063636300ADADAD000000FF000000FF000000FF00ADADAD0063636300C6C6
      C600C6C6C600C6C6C600C6C6C60000000000ADADAD0073636300525252005252
      5200393131004A4A4A00EFE7E700EFEFEF008C84840021212100424242006B63
      6B00EFEFEF000000000000000000000000000000000000000000000000000000
      000000000000D6B5A500FFF7C600F7DEB500F7CE9C00F7D6AD00FFE7BD00FFFF
      D600FFFFDE00FFFFDE00FFFFD600000000008484840000008400000084000000
      8400000084008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C60063636300ADADAD00ADADAD00ADADAD00ADADAD00ADADAD0063636300C6C6
      C600C6C6C600C6C6C600C6C6C6000000000000000000525A5200CECECE00BDB5
      B50052525200737373009C9C9C009C9C9C005A5A5A009C9C9C008C8C8C002929
      2900000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C69C8C00FFFFFF00FFFFFF00F7CE9400EFBD8400F7CE
      9C00F7DEAD00FFF7C600BD9C8C00000000000000840000008400848484000000
      0000000084000000840084848400000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C60042424200636363006363630063636300636363006363630042424200C6C6
      C600C6C6C600C6C6C600C6C6C6000000000000000000737B7300F7F7F700D6D6
      D6005A5252009C9C9C00D6D6D60073737300ADADAD00F7F7F7009C9C9C003939
      3900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7EF00FFFFF700FFE7B500FFDEAD00FFE7
      B500FFF7BD00C69C940000000000000000000000000000000000000000000000
      0000000000000000840000008400848484000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C6000000000000000000DEDEDE006B6B6B004242
      42008484840000000000000000000000000094949400525252004A4A4A00D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C69C9400CEA59C00CE9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008400000084008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C6000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C60042424200636363006363630063636300636363006363630042424200C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C6004242420042424200C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      00000000000000FF000000FF000000FF00000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600000000008484840000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C60063636300ADADAD00ADADAD00ADADAD00ADADAD00ADADAD0063636300C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600424242006363630042424200C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C60000000000848484008484840000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C60063636300ADADAD000000FF000000FF000000FF00ADADAD0063636300C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600424242008C8C8C006363630042424200C6C6
      C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000000000FF
      000000FF000000FF000000FF000000FF000000FF000084848400000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C6000000
      000084848400C6C6C60084848400000000000000000000000000000000000000
      00000000000000000000C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C60063636300ADADAD000000FF000000FF000000FF00ADADAD0063636300C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C60042424200424242004242
      4200424242004242420042424200424242008C8C8C00ADADAD00636363004242
      4200C6C6C600C6C6C600C6C6C60000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600000000008484
      8400C6C6C6000000FF0084848400848484008484840084848400848484008484
      840084848400848484000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C60063636300ADADAD000000FF000000FF000000FF00ADADAD0063636300C6C6
      C600C6C6C600C6C6C600C6C6C60000000000424242008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C000000FF00ADADAD006363
      630042424200C6C6C600C6C6C600000000000000000000FF000000FF000000FF
      000000FF000000FF00000084000000FF000000FF000000FF0000000000000000
      000000000000000000000000000000000000C6C6C6000000000084848400C6C6
      C6000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF00848484000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C60063636300ADADAD000000FF000000FF000000FF00ADADAD0063636300C6C6
      C600C6C6C600C6C6C600C6C6C60000000000424242008C8C8C000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00ADAD
      AD006363630042424200C6C6C60000000000000000000084000000FF000000FF
      000000FF000000840000000000000084000000FF000000FF000000FF00008484
      8400000000000000000000000000000000000000000084848400C6C6C6000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF00848484000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C60063636300ADADAD000000FF000000FF000000FF00ADADAD0063636300C6C6
      C600C6C6C600C6C6C600C6C6C60000000000424242008C8C8C000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00ADADAD0063636300424242000000000000000000000000000084000000FF
      0000008400000000000000000000000000000084000000FF000000FF00000000
      0000000000000000000000000000000000000000000084848400C6C6C6000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF008484840000000000000000004242420063636300636363006363
      630063636300ADADAD000000FF000000FF000000FF00ADADAD00636363006363
      630063636300636363004242420000000000424242008C8C8C000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00ADADAD006363630042424200000000000000000000000000000000000084
      000000000000000000000000000000000000000000000084000000FF000000FF
      000000000000000000000000000000000000C6C6C6000000000084848400C6C6
      C6000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF00848484000000000000000000C6C6C6004242420063636300ADAD
      AD00ADADAD00ADADAD000000FF000000FF000000FF00ADADAD00ADADAD00ADAD
      AD006363630042424200C6C6C60000000000424242008C8C8C000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00ADAD
      AD006363630042424200C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000084000000FF
      000000FF0000000000000000000000000000C6C6C600C6C6C600000000008484
      8400C6C6C6000000FF0084848400848484008484840084848400848484008484
      840084848400848484000000000000000000C6C6C600C6C6C600424242006363
      6300ADADAD000000FF000000FF000000FF000000FF000000FF00ADADAD006363
      630042424200C6C6C600C6C6C60000000000424242008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C000000FF00ADADAD006363
      630042424200C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      000000FF000000FF00008484840000000000C6C6C600C6C6C600C6C6C6000000
      000084848400C6C6C60084848400000000000000000000000000000000000000
      00000000000000000000C6C6C60000000000C6C6C600C6C6C600C6C6C6004242
      420063636300ADADAD000000FF000000FF000000FF00ADADAD00636363004242
      4200C6C6C600C6C6C600C6C6C60000000000C6C6C60042424200424242004242
      4200424242004242420042424200424242008C8C8C00ADADAD00636363004242
      4200C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000084000000FF00000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C60000000000848484008484840000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C6004242420063636300ADADAD000000FF00ADADAD006363630042424200C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600424242008C8C8C006363630042424200C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084000000FF000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600000000008484840000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6004242420063636300ADADAD006363630042424200C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600424242006363630042424200C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000084000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C6000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600424242006363630042424200C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C6004242420042424200C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000018A5D60018A5D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002194
      BD00087BAD000000000000000000000000000000000000000000000000000884
      B500108CBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000018A5D600ADEFF70073E7F70018A5
      D60018A5D60018A5D60018A5D60018A5D6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5520000C65A0000A539
      08000000000000000000000000000000000000000000000000001884AD0073D6
      EF004AC6E700007BAD0000000000000000000000000000000000219CC6009CE7
      F70018A5CE001884AD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000018A5D600BDEFF700A5FFFF009CFF
      FF009CFFFF009CFFFF0094F7FF007BE7FF0018A5D60018A5D600088418002984
      1800000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD420000CE6B0000BD5A
      0000A539080000000000000000000000000000000000000000000000000042AD
      CE007BF7FF0052C6E700087BAD00000000000000000031A5CE00B5F7FF005ADE
      FF0042ADCE000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      00000000000000000000000000000000000018ADD6005ABDE700B5FFFF008CFF
      FF0094FFFF0063C6A50031A55A0039AD630039AD630039A563001094210008A5
      1800108C29000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD420000D66B
      0000BD5200009C39080000000000000000000000000000000000000000001084
      AD0063DEFF006BEFFF0063D6EF001084B50039ADCE00C6F7FF006BEFFF0063DE
      FF000073A5000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      00000000000000000000000000000000000039B5DE005ABDE700B5F7FF0094FF
      FF009CFFFF004AAD7B0042CE6B0042CE6B0031C6630029BD5A0021BD4A0010B5
      310008AD1800088400000000000000000000A5420800B5520800AD4A0000AD42
      0000AD4A0000AD4A0000AD4A0000AD4A0000A54208000000000000000000B54A
      0000D66B0000AD4A00009C390800000000000000000000000000000000000000
      00001084AD004AE7FF0073EFFF0073E7F700BDF7FF009CF7FF005AE7FF001084
      AD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      00000000000000000000000000000000000042BDDE0073E7F7005ABDE7009CFF
      FF009CFFFF004AAD7B004AD6730052DE7B0039CE630031C6630031C6630021BD
      4A0010B5310008A510000073080000000000BD631800F79C3100DE7B1000CE6B
      0000CE630000CE630000CE630000CE630000AD42000000000000000000000000
      0000BD520000CE630000A53908009C3900000000000000000000000000000000
      0000000000001084AD004ADEFF0073EFFF008CEFFF009CF7FF001084AD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      00000000000000000000000000000000000039BDDE008CF7FF005ABDE700BDFF
      FF008CFFFF005AC6AD0052BD7B0042BD7B004AC67B0018A5D60029BD520031C6
      6B0018AD3900219C4A0018A5CE0000000000C6631800FFB54A00EF943100DE7B
      1800A5420000A5390000A5420000A5420000A539080000000000000000000000
      0000A5420800CE630000B54A00009C390800000000000000000000000000087B
      AD001084AD0018D6FF0029D6FF004ADEFF0073E7FF0094F7FF007BDEEF001084
      AD001084AD0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF0000000000000000000000000039B5DE00A5FFFF008CB5C6005ABD
      E700ADF7FF00ADFFFF00ADFFFF00A5FFFF0094FFFF008CF7FF0031B5520021AD
      4200319C630094F7FF0039BDE70000000000C6631800FFBD5200C66B2100EF9C
      3100D67318009C39000000000000000000000000000000000000000000000000
      000000000000C65A0000BD5A00009C390800000000000073A5002994BD0073D6
      EF0063E7FF0031DEFF0010D6FF0031DEFF0052E7FF0073E7FF009CF7FF008CEF
      FF0042BDDE0042BDDE000073A5000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF0000000000000000000000000042BDDE009CF7FF00E7CEBD005ABD
      E7005ABDE7005ABDE7005ABDE7005ABDE700B5FFFF0084EFF700189431004AAD
      730073DEFF009CFFFF006BDEF70000000000C6631800FFBD5200AD4A1000BD5A
      1800FFAD4200CE7318009C390000000000000000000000000000000000000000
      000000000000BD5A0000C65A00009C390800218CB50084CEDE00DEFFFF00CEFF
      FF009CF7FF006BEFFF0031DEFF0010D6FF0031DEFF005AE7FF007BF7FF00A5FF
      FF00A5FFFF0063DEF70084CEDE000073A50000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF0000000000000000000000000042BDDE009CF7FF00DED6CE00FFFF
      F700FFF7DE00FFEFCE00E7DEC600B5CEC6005ABDE700ADEFF70094DECE00A5FF
      FF0084E7FF00A5FFFF009CF7FF0031B5DE00C6631800FFBD5200B55210009429
      0000A5390800FFB54200D67B2100A53900000000000000000000000000000000
      0000A5390800CE630000BD5200009C3908000073A5000073A5000073A5000073
      A5000073A5000073A50073DEF70029DEFF0018D6FF0029BDE7000073A5000073
      A5000073A5000073A5000073A5000073A5000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      00000000000000000000000000000000000042BDDE009CF7FF00E7D6CE00FFFF
      FF00FFF7EF00FFEFDE00FFE7D600FFE7C600C6D6C6005ABDE7005ABDE7005ABD
      E7005ABDE7005ABDE7005ABDE7004ABDDE00C6631800FFBD5200B55210000000
      000000000000A5390800FFB54200E78C2900AD4208009C3100009C3900009C39
      0800BD520000D66B0000AD4200009C3900000000000000000000000000000000
      000000000000000000000073A50063EFFF0021D6FF00088CBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000004ABDE7009CFFFF00E7D6CE00FFFF
      FF00FFFFFF00FFF7EF00FFEFDE00F7E7D600FFE7CE00FFDEB50094B5C6007BF7
      FF0021ADDE00000000000000000000000000C6632100FFC65200B55A18000000
      00000000000000000000A5390800EF9C3900F79C3100D6731800BD5A0800C65A
      0000CE6B0000B54A0000AD420000000000000000000000000000000000000000
      000000000000000000000073A5008CF7FF004ADEFF000884B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      00000000000000000000000000000000000039B5DE00ADF7F700EFDED600FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFEFDE00BD8C8400BD8C8400BD8C840039B5
      DE0031B5DE00000000000000000000000000B55A1800EF9C4200AD4A10000000
      0000000000000000000000000000A5390800BD631800D67B2100CE6B1000BD52
      0000A54200009C39080000000000000000000000000000000000000000000000
      000000000000000000000073A500ADF7FF005ACEEF00087BAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000039B5DE00F7DED600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EFDEDE00BD8C8400E79C5A00CE737B000000
      000000000000000000000000000000000000B55A1800A5420800A53900000000
      0000000000000000000000000000000000009C3900009C390000A53908009C39
      08009C3900000000000000000000000000000000000000000000000000000000
      000000000000000000000073A500BDF7FF005AB5D6000073A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFDED600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EFDEE700BD8C8400E7A56B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000073A500CEEFF70063B5D6000073A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7B59C00E7B5
      9C00E7B59C00E7B59C00E7B59C00E7B59C00BD8C840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000298CBD001884B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF0000FFFF000000000000000000000000008400
      0000840000000000000084000000840000000000000000000000000000008400
      0000840000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      000000000000000000008484840000FFFF00FFFFFF0000FFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000840000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000008400
      0000840000000000000084000000840000000000000000000000000000008400
      0000840000000000000000000000000000000000000000000000000000008484
      8400FFFFFF0000FFFF0000FFFF000000000000FFFF00000000000000000000FF
      FF00848484000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF0000FFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000084008400840000FFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF0000FFFF000000000000000000000000008400
      0000840000000000000084000000840000000000000000000000000000008400
      000084000000000000000000000000000000000000000000000084848400FFFF
      FF0000FFFF00000000000000000000FFFF000000000000FFFF0000FFFF000000
      0000000000008484840000000000000000000000000000000000000000000000
      000000000000000000008484840000FFFF00FFFFFF0000FFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000084000000840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000008400
      0000840000008400000000000000000000000000000000000000840000008400
      000084000000000000000000000000000000000000000000000084848400FFFF
      FF000000000000FFFF0000FFFF000000000000FFFF0000000000000000008484
      840000000000848484000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF008484840000FFFF00FFFFFF0000FFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000084000000FF000000
      FF0000000000FFFFFF0000000000000000000000000000000000000000008400
      0000840000000000000000000000000000000000000000000000000000008400
      0000840000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484000000
      000000000000848484000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF0084848400FFFFFF0000FFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000008400
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000840000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840000FFFF00848484000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF008484840000FFFF00FFFFFF0000FFFF0000FFFF000000
      0000FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000084000000000000000000000000000000000000000000000084848400FFFF
      FF000000000000FFFF0000FFFF000000000000FFFF00000000000000000000FF
      FF0000000000848484000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF0084848400FFFFFF0000FFFF00FFFFFF00FFFFFF000000
      0000848484000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      000000000000FFFFFF0084848400848484008484840084848400FFFFFF000000
      000084000000000000000000000000000000000000000000000084848400FFFF
      FF0000FFFF00000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00848484000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0084848400848484008484840084848400FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008484000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840000000000848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000000000000084000000840000008400
      0000840000008400000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000008484008484840084848400FFFFFF00848484000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400848484008484840000000000000000000000000000000000FF0000000000
      0000FF000000FF000000000000000000000084000000FF000000FF000000FF00
      0000840000000000000000000000000000000000000000000000FFFFFF000000
      000000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000000000FFFFFF00848484000000
      0000848484000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008484840000000000000000000000
      0000000000008484840000000000000000000000000000000000FF000000FF00
      0000FF00000000000000000000000000000000000000FF000000FF000000FF00
      000084000000000000000000000000000000000000000000000000FFFF000000
      0000C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000000000000000000000000000000000000000000000
      00000000000000848400FFFFFF000000000000000000FFFFFF00848484000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000FFFFFF0084000000FFFFFF00000000008484840000000000000000000000
      0000000000000000000084848400000000000000000000000000FF000000FF00
      0000FF00000000000000000000000000000000000000FF000000840000000000
      0000FF0000000000000000000000000000000000000000000000FFFFFF0000FF
      FF0000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6
      C600C6C6C60000FFFF00000000000000000000000000000000000084840000FF
      FF0000000000FFFFFF00FFFFFF00000000008484840000000000848484000000
      0000848484008484840084848400000000000000000000000000840000008400
      00008400000084000000FFFFFF00000000008484840000000000000000000000
      0000848484000000000084848400848484000000000000000000FF000000FF00
      0000FF000000FF00000000000000000000000000000084000000000000000000
      000000000000840000000000000000000000000000000000000000FFFF00FFFF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF000000000000000000000000000084840000FF
      FF000000000000FFFF0000FFFF00000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008484840000000000000000000000
      000000000000848484000000000084848400000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000FFFFFF0000FF
      FF000000000000000000000000000000000000000000C6C6C60000FFFF00C6C6
      C600C6C6C60000FFFF00C6C6C60000000000000000000000000000848400FFFF
      FF0000000000FFFFFF00FFFFFF000000000000000000FFFFFF00848484000000
      0000000000000000000000000000000000000000000000000000840000008400
      00008400000084000000FFFFFF00000000008484840000000000000000008484
      8400000000000000000000000000848484000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      84000084840000FFFF0000FFFF000000000000000000FFFFFF00848484000000
      0000848484000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008484840000000000000000008484
      8400000000000000000000000000848484000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00848484008484840000000000848484000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000000000008400000000000000000000000000000000000000FF000000FF00
      0000FF000000840000000000000000000000000000000000000000FFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000084840000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000FF000000FF00
      000084000000FF0000000000000000000000000000000000000000000000FF00
      0000FF0000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000008484
      840000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF0000000000000000000000000000000000000084000000FF00
      0000FF0000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084000000FF00
      0000FF000000FF00000000000000FF0000000000000084000000FF0000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      7B0000007B007B7B7B0000000000000000000000000000000000000000000000
      FF007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      7B0000007B0000007B007B7B7B000000000000000000000000000000FF000000
      7B0000007B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000008484
      84008484840084848400000000000000000000000000000000000000FF000000
      0000000000008484840084848400848484008484840084848400848484008484
      8400848484000000FF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000FF00000000000000000000000000000000000000FF000000
      7B0000007B0000007B0000007B007B7B7B00000000000000FF0000007B000000
      7B0000007B0000007B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000008484
      84008484840084848400000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF00FFFFFF000000000000000000000000000000
      FF0000007B0000007B0000007B0000007B007B7B7B0000007B0000007B000000
      7B0000007B0000007B007B7B7B00000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000BDBD0000BDBD000000
      00008484840084848400000000000000000000000000000000000000FF000000
      FF000000000000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF000000
      FF000000FF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF00FFFFFF000000000000000000000000000000
      00000000FF0000007B0000007B0000007B0000007B0000007B0000007B000000
      7B0000007B007B7B7B0000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000BDBD0000BDBD000000
      0000848484008484840000000000000000000000000000000000000000000000
      FF000000FF00FFFFFF00FF000000FF000000FF000000FF000000FFFFFF000000
      FF00848484000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF00FFFFFF000000000000000000000000000000
      0000000000000000FF0000007B0000007B0000007B0000007B0000007B000000
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      00000000000000000000848484000000000000BDBD0000BDBD0000BDBD000000
      0000848484008484840000000000000000000000000000000000000000000000
      00000000FF000000FF00FF000000FF000000FF0000000000FF000000FF000000
      0000848484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000007B0000007B0000007B0000007B0000007B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000BDBD0000BDBD0000BDBD000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00FFFFFF0000FFFF000000FF00FFFFFF000000
      0000848484000000000000000000000000000000000000000000FFFFFF00FFFF
      FF000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      FF000000FF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000FF0000007B0000007B0000007B0000007B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000BDBD0000BDBD0000BDBD000000
      0000848484008484840000000000000000000000000000000000000000000000
      000000000000FFFFFF000000FF000000FF000000FF000000FF00FFFFFF000000
      0000848484000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000FF000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000FF0000007B0000007B0000007B0000007B0000007B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000BDBD0000BDBD000000
      0000848484008484840000000000000000000000000000000000000000000000
      000000000000FFFFFF000000FF000000FF000000FF000000FF00FFFFFF000000
      0000848484000000000000000000000000000000000000000000FFFFFF00FFFF
      FF000000FF00FFFFFF000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      00000000FF0000007B0000007B0000007B007B7B7B0000007B0000007B000000
      7B007B7B7B0000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000BDBD000000
      0000848484008484840000000000000000000000000000000000000000000000
      00000000000000FFFF000000FF00FFFFFF00000000000000FF00FFFFFF000000
      0000848484000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF0000007B0000007B0000007B007B7B7B00000000000000FF0000007B000000
      7B0000007B007B7B7B0000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF00000000000000000000BDBD000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00FFFFFF00000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF0000007B0000007B007B7B7B000000000000000000000000000000FF000000
      7B0000007B0000007B007B7B7B00000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000BDBD0000BDBD000000
      0000848484000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000FFFF00FFFFFF0000000000FFFFFF00000000000000
      FF000000FF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      00000000FF0000007B0000000000000000000000000000000000000000000000
      FF0000007B0000007B0000007B00000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000008484
      84000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF0000007B000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000084000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000FF00FFFFFF00000084000000
      0000FFFFFF00FFFFFF00000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      00000000000000000000000000000000FF00FFFFFF000000840000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000BD000000BD000000BD00
      0000BD00000000000000C6C6C60000000000000000000000000000000000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000008484
      8400000000008484840084848400000000000000840000000000000000000000
      0000FFFFFF00FFFFFF00000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000BD000000FFFFFF00FFFF
      FF00FFFFFF0000000000C6C6C60000000000000000000000000000000000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0084848400FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000FFFF000084848400FFFFFF008484840000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000BD000000FFFFFF008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0084848400FFFFFF00C6C6C6008484840000FFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000000000008484840000000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000BD000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00C6C6C6008484840000FFFF00FFFFFF0000FFFF008484
      8400000000000000000000000000000000000000000000000000FFFF0000FFFF
      FF00FFFF000084848400FFFF00000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      00000000000000000000000000008400000000000000BD000000FFFFFF008484
      840084848400FFFFFF008484840000000000000000008484840084848400FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00C6C6C6008484840000FFFF00FFFFFF0000FFFF0084848400C6C6
      C60000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF008484840000000000848484000000000000000000000000000000
      000000000000FFFFFF00000000000000000000000000FFFFFF00000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000840000008400000000000000BD000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6008484840000FFFF00FFFFFF0000FFFF0084848400C6C6C600C6C6
      C6000000000000000000000000000000000000000000FFFFFF00000000008484
      8400FFFF0000848484008484840000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000840000008400000000000000BD000000FFFFFF008484
      840084848400FFFFFF008484840000000000000000008484840084848400FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF0084848400C6C6C600C6C6C600C6C6
      C6000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000840000008400000000000000BD000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BD0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0084848400C6C6C600C6C6C600C6C6C6008484
      84000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000840000008400000000000000BD000000BD000000BD00
      0000BD000000BD000000BD000000BD000000BD000000BD000000BD000000BD00
      0000BD0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD000000BD00000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000840000008400000000000000BD000000C6C6C600BD00
      0000BD000000C6C6C600BD000000BD000000C6C6C600BD000000BD000000C6C6
      C600BD0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD000000BD00000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000840000008400000000000000BD000000BD000000BD00
      0000BD000000BD000000BD000000BD000000BD000000BD000000BD000000BD00
      0000BD0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000FFFFFF0000FFFF0000000000848484000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000C6C6
      C60000000000FFFFFF0000000000848484000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000840000000000000000000000000000000000848484000000
      8400000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FF
      FF00C6C6C6000000000000000000848484000000000000000000000000000000
      000000FFFF000000000000FFFF00FFFFFF0000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000848484008400000084000000840000008400000084000000840000008400
      000084000000FFFFFF0000000000000000000000000000000000000000000000
      0000848484000000840084848400000000000000000084848400000084008484
      840000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000848484008400000084000000840000008400000084000000840000008400
      000084000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000840000008400848484000000000000008400000084000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF008484
      840000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000848484000000000000000000000000000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000848484008484840084848400848484008400000084000000848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000008484840000008400000084000000840000008400000000000000
      0000000000000000000000000000000000008484840000FFFF0000FFFF008484
      8400FFFFFF0000FFFF008484840000FFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000848484000000000000000000000000000000
      0000FFFFFF0000FFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000008400000084000000840000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF008484
      840000FFFF008484840000FFFF00FFFFFF0000FFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF000000000084848400000000000000000000FFFF000000
      000000FFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000840000008400000084000000840084848400000000000000
      000000000000000000000000000000000000848484008484840084848400FFFF
      FF0084848400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000848484000000000000000000FFFFFF000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000840084848400000000000000840000008400848484000000
      000000000000000000000000000000000000FFFFFF0000FFFF008484840000FF
      FF00FFFFFF008484840084848400848484008484840000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084008484
      840000000000000000000000000000000000000000008484840000FFFF008484
      840000FFFF008484840000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      8400848484000000000000000000000000008484840000FFFF00000000008484
      8400FFFFFF00000000008484840000FFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000008484
      840000FFFF000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      000084848400848484008484840084848400848484000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00BD000000BD000000BD000000BD000000BD0000000000FF000000FF008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF000000FF000000FF00BD0000008484
      84000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FFFF0000FFFF0000FFFF00C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000FFFF000000FF000000FF000000FF00BD0000008484
      84000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD00
      0000FFFFFF000000FF000000FF000000FF000000FF00FFFFFF00BD0000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD00
      0000FFFFFF000000FF000000FF000000FF000000FF00FFFFFF00BD0000008484
      84000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD00
      00000000FF000000FF000000FF000000FF000000FF0000FFFF00BD0000008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD00
      00000000FF000000FF00FFFFFF00FFFFFF000000FF000000FF00BD0000008484
      840000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00BD0000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF0000FFFF0000FFFF0000FFFF00BD000000BD0000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF00BD00
      0000BD000000BD000000BD000000BD000000BD00000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B0000007B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000007B0000007B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      7B00000000000000000000000000000000000000000000000000000000000000
      000000007B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008400000084000000840000008400000084000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      7B0000007B000000000000000000000000000000000000000000000000000000
      7B0000007B000000000000000000000000000000000000000000000000006331
      31007B4242000000000000000000000000000000000000000000000000000000
      0000000000004242420000000000000000000000000000000000848484008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000007B000000
      7B0000007B0000007B0000007B0000007B0000007B0000007B0000007B000000
      7B0000007B0000007B0000000000000000000000000000000000D67B7B00FFAD
      AD00D67B7B00D67B7B00D67B7B00AD424200D67B7B00D67B7B00D67B7B006331
      3100AD4242000000000000000000000000000000000084848400840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000007B00000000000000000000000000FFADAD00FFFF
      FF00FFCECE00FFADAD00D67B7B00FFADAD00FFADAD00D67B7B00D67B7B00D67B
      7B00D67B7B000000000000000000000000000000000084000000840000008400
      000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84008484840084848400848484000000000000007B00007B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00007B7B0000007B000000000000000000D67B7B00FFD6
      D600FFD6D600D67B7B00AD424200D67B7B00AD424200D67B7B00AD4242007B42
      4200AD4242000000000000000000000000008484840084000000840000008400
      0000840000008400000084848400FFFFFF00FFFFFF00FFFFFF00840000008400
      0000840000008400000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000007B0000FFFF00007B7B00007B
      7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B
      7B00007B7B00007B7B0000FFFF0000007B000000000000000000FFADAD00FFFF
      FF00FFADAD00FFADAD00FFADAD00D67B7B00FFADAD00FFADAD00FFADAD00AD42
      4200D67B7B000000000000000000000000008400000084000000840000008400
      0000840000008400000084848400FFFFFF00FFFFFF00FFFFFF00840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84008484840084848400848484000000000000007B0000FFFF0000FFFF00007B
      7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00007B7B0000FFFF0000FFFF0000007B000000000000000000D67B7B00FFFF
      FF00FFCECE00D67B7B00AD424200D67B7B00D67B7B00AD424200D67B7B00AD00
      0000AD7B7B000000000000000000000000008400000084000000840000008400
      0000840000008400000084848400FFFFFF00FFFFFF00FFFFFF00840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF000000
      7B0000007B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      7B0000007B0000FFFF0000FFFF0000FFFF000000000000000000FFADAD00FFD6
      D600FFCECE00FFFFFF00FFCECE00FFCECE00FFCECE00FFCECE00D67B7B00D67B
      7B00D67B7B000000000000000000000000008400000084000000840000008400
      000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000007B000000
      00000000000000007B0000FFFF0000FFFF0000FFFF0000FFFF0000007B000000
      00000000000000007B0000FFFF00000000000000000000000000D67B7B00FFFF
      FF00FFADAD00AD4242007B424200AD7B7B007B424200AD7B7B00D67B7B006331
      3100AD4242000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000008400000000000000000000000000000000000000FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000007B0000007B0000007B0000007B0000007B0000007B0000007B000000
      7B00000000000000000000000000000000000000000000000000000000000000
      0000FFCECE00FFCECE0000000000000000000000000000000000FFCECE00D67B
      7B00000000000000000000000000000000008484840084000000840000008400
      0000840000008400000084848400FFFFFF00FFFFFF0084848400840000008400
      00008400000084000000848484000000000000000000000000000000000000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFADAD00FFADAD0000000000000000000000000000000000FFCECE00AD42
      4200000000000000000000000000000000000000000084000000840000008400
      00008400000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000008400
      00008400000084000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFADAD00FFCECE0063313100000000000000000000000000FFCECE00D67B
      7B00000000000000000000000000000000000000000084848400840000008400
      0000840000008400000084848400FFFFFF00FFFFFF0084848400840000008400
      0000840000008484840000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFADAD00FFADAD00FFFFFF00FFFFFF00FFADAD00FFCECE00FFADAD00D67B
      7B00000000000000000000000000000000000000000000000000848484008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084848400000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D67B7B007B424200AD42420063313100AD424200AD4242006331
      3100000000000000000000000000000000000000000000000000000000000000
      0000848484008400000084000000840000008400000084000000848484000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004284000000000000CECEFF00CECEFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004284000042840000428400009C9CFF002929FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004284
      000042840000214A6300183194002929FF000000FF005252FF009C9CFF000000
      000000000000000000000000000000000000000000007B7B7B00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000428400004284
      00001021B5000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000000000000000000000000000000000000000007B7B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042840000428400001839
      84000000FF000000FF000000FF000810CE000810CE000810CE000000FF000000
      FF002929FF00000000000000000000000000000000007B7B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00BDBDBD000000000000000000000000000000000000000000000000000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004284000042840000428400000000
      FF000000FF000000FF0018319400214A63000810CE00428400000000FF000000
      FF000000FF00CECEFF000000000000000000000000007B7B7B0000FFFF0000FF
      FF00FF000000FF000000FF000000FF000000FF000000FF000000FF00000000FF
      FF00BDBDBD000000000000000000000000000000000000000000000000000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00FF000000000000000000000000000000
      0000000000000000000000000000000000004284000042840000428400004284
      0000316B2900214A6300316B2900214A63001021B500316B29000000FF000000
      FF000000FF00CECEFF000000000000000000000000007B7B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00BDBDBD0000000000000000000000000000000000FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000042840000428400004284
      00004284000042840000316B29001021B5000000FF000000FF000000FF000000
      FF000000FF00428400000000000000000000000000007B7B7B0000FFFF0000FF
      FF00FF000000FF000000FF000000FF000000FF000000FF000000FF00000000FF
      FF00BDBDBD0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000FF00FF00FF00FF00FF00FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000428400004284
      0000316B29000810CE000000FF000000FF000000FF000000FF000000FF000000
      FF00214A6300428400004284000000000000000000007B7B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00BDBDBD0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
      000000000000000000000000000000000000000000000000000000000000316B
      29000000FF000000FF000000FF000000FF000000FF000000FF001021B500316B
      290042840000428400004284000042840000000000007B7B7B0000FFFF0000FF
      FF00FF000000FF000000FF000000FF000000FF00000000FFFF0000FFFF0000FF
      FF00BDBDBD0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF000000FF000000FF000000FF00FFFFFF00FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
      000000000000000000000000000000000000000000000000000000000000214A
      63000000FF000000FF000000FF000810CE000810CE00397B0800428400004284
      000042840000428400004284000042840000000000007B7B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF000000FF000000FF000000FF00FFFFFF00FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005252
      FF000000FF000000FF001021B500214A63000810CE00316B290018398400214A
      6300316B2900428400004284000042840000000000007B7B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B7B00BDBD
      BD00BDBDBD0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      FF000000FF000000FF000000FF001021B5000810CE000810CE000000FF000000
      FF001021B500428400004284000000000000000000007B7B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B7B00BDBD
      BD007B7B7B0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000
      00000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005252FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00316B2900428400000000000000000000000000007B7B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B7B007B7B
      7B000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9CFF005252FF002929FF000000FF005252FF00214A6300397B
      080042840000000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C9CFF009C9CFF0000000000428400004284
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200100000100010000000000000900000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFC00100000000F01F800000000000
      E00F000000000000C00700010000000080030001000000008003800300000000
      00018003000000000001C007000000000001C007000000000001E00F00000000
      8003E00F000000008003F01F00000000C007F01F00000000E00FF83F00000000
      F01FF83F00000000FFFFFCFF00000000FFFFFFFFFFFFFFFFFFFDF01FF01FF01F
      F003E00FE00FE00FF003C007C007C007E003800380038003E003800380038003
      800300010001000180030001000100018003000100010001E003000100010001
      E003800380038003F003800380038003F1E3C007C007C007F123E00FE00FE00F
      FFFFF01FF01FF01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFEFE7CFFDFFFFFFFFC7F39FF8FFFFFFFFEFF93FF27FFFFFFFFF
      FC7FE73FFEFFFFEFFEFFCF9FFC7FFFEFFFFFFFFFF93FFFC7E7CFFDFFF39FFFC7
      F39FF8FFF7DFFFC7F93FF27FFFFFFFC7FC7FE73FFFFFFFC7FEFFCF9FFFFFFFEF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFF
      FFFFFFFF0000FFFFFFFF87030000FFFFFFFFCF870000FFFFFFFFE78F0000FFFF
      FFFFE78F0000F39FFFFFF01F0000F93FFFFFF31F0000FC7FFFFFF93F0000FEFF
      FFFFF83F0000FFFFFFFFFC7F0020FFFFFFFFFC7F0000FFFFFFFFFEFF0000FFFF
      FFFFFFFF0000FFFFFFFFFFFF2002FFFFFFFF8003FFFFC003007F8003FFFFC003
      007C8003FFFFC00300788003FFFFC00300718003FFFFC00300238003E7FFC003
      00078003CF83C003000F8003DFC3C00300078003DFE3C00300078003DFD3C003
      00078003CF3BC00300078003E0FFC003C0078003FFFFC003E00F8007FFFFC007
      F01F800FFFFFC00FF83F801FFFFFC01F000080079FFFFFFF000000070FFFFFFF
      0000000707FFC0000000000783FF80000000000781FF800000000007E1070000
      00000007E007000000000007F801000000000007F801000000000007F8008000
      00000007F800800000000007F800800000000007F80100010000800FFC0111FF
      0000800FFE03F8FF0000870FFF8FFC7FFDFF000000000000F8FF000000000000
      F07F000000000000E07F000000000000C03F000000000000803F000000000000
      001F000000000000820F000000000000C70F000000000000EF87000000000000
      FFC3000000000000FFE1000000000000FFF1000000000000FFF8000000000000
      FFFC000000000000FFFF0000000000009FFFFFFFE7E7FFFF00FFFF8FC3C3FFFF
      000FFF87E187FC7F0007FFC3E007FC7F00030061F00FFC7F00010070F81FFC7F
      00010070E007C007000103F88001C007000101F80000C007000000F00000FC7F
      00001800FC3FFC7F00071C01FC3FFC7F00071E03FC3FFC7F801F1F07FC3FFFFF
      C03FFFFFFC3FFFFFC07FFFFFFE7FFFFFFFFFFFC3FFFFFFFFFC03FFC1FFFFFFFF
      FC07FF00C0C3E003FC07FE00C0C3E163FC07FE00C0C3C693C007FE00C3C3C963
      C007FD83C003C00BC003FF03C003C003C013FA07C003C96BC017F43FC003C683
      C03FD87FD003E07FC03FD0FFC003F0FFC13FE3FFC003FFFFC17FF3FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFF
      FFFFFC5FC007F8838007FC1B8003D3078003F8978003C7878001E09F8001C797
      8001C8118070C3BB8000C89F8078EFFB8000C81F806CDFFF8001E097804CDFFF
      8007FC5F8083DBC38007FC7F8187C3E3C3FFFE3F83CFE3C3FFFFFF3F83DFC29B
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFC3E7FE0FFFFDFF07
      C1C3F803D8038000C081F803C0038000E001F003C0078000F003F003E0078000
      F807FC03F0078000FC0FFC03F0078000FC0FF803F0078000F80FF003F0078000
      F007C003F0078000E083C003F00F8000E1C1F007E0278000F3E1F80FC0338000
      FFF1FC3FFFFD8000FFFFFFFFFFFFFFFFFFFFFFFFF8F8FFFFFFCF000FF8F8FFFF
      0001000FF870FFFF0001000FF800FFFF0001000F8000F83F0831000F8000F01F
      1001000F8000F00F2A79000F8001E00F0101008E8003C007027911448003E007
      00010AB88003F00F21F1057C8007F8070001FAFC8007FE210001FDF88007FFF1
      0001FE048007FFF30001FFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFC000F800
      FF3FFFFF8000F800FE3FF7FF8000F800FE3FF7FF8000E000FE3FF3CF8000E000
      F003F18F8000E000F003F89F0000E000F007F83F00008000FE3FF87F80008000
      FE3FF03F00008001FE3FF11F00018003FFFFFF8F81FF8007FFFFFFC724FF81FF
      FFFFFFFF66FF83FFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C007
      FF81FFFF900F8003FFFFFFFF800F0001FFE1FFFFC00F0001FFFFFFFFE00F0001
      FFE1F00FE00F0000FFFFF00FE00F0000FF81F81FE00F8000FFFFFC3FE00FC000
      00E1FE7FC00FE00100FFFFFFC007E00700E1FFFF8073F00700FFFFFFBFF3F003
      FF81FFFFFFFFF803FFFFFFFFFFFFFFFF9FF9FFFFFFFFFFFFEFF7FFFFF01FFFFF
      E7E7E003C007FF81C003C0038003FFFF8001C0038003FFE10000C0030001FFFF
      0000C0030001FFE10000C0030001FFFF0000C0030001C3819819C0030001C3FF
      F00FF1CF000100E1FFFFF1CF800300FFFFFFF00F800300E1FFFFF00FC00700FF
      FFFFF80FF01FC381FFFFFFFFFFFFC3FFFFFFFA7FFFFFFFFFFFFFF07F8003FFFF
      FFFFE01F8003FFFFFFFFC00F8003E7CFFFFF80078003C384FEFF000380030000
      FC7F000380030000FC7F800380030000F83FC00180030000F01FE00080030001
      F01FE00080030003E00FE00080030003FFFFE00180070003FFFFF003800F0007
      FFFFF807801F000FFFFFFE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FFC7FE00FFEFF
      F01FF83FF01FFC7FF01FF01FF01FF83FF01FF01FF83FF01FF01FF01FFC7FF83F
      F01FF83FFC7FFC7FF01FFC7FFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object QyErrori: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'KSERRORI'
    PrimeFields.Strings = (
      'NOMEAP')
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'Posto,'
      'NomeAp,'
      'User_id,'
      'Data_err,'
      'versione,'
      'ClassName,'
      'tipo_errore,'
      'TestoErrore1'
      'from kserrori')
    SQLOptions = [soFetchMemos, soFetchBlobs]
    Params = <>
    QBEMode = False
    Left = 288
    Top = 108
    FastFields = (
      'POSTO,1,50'
      'NOMEAP,1,50'
      'USER_ID,3,0'
      'DATA_ERR,11,0'
      'VERSIONE,1,10'
      'CLASSNAME,1,50'
      'TIPO_ERRORE,3,0'
      'TESTOERRORE1,30,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object QyErroriPOSTO: TStringField
      FieldName = 'POSTO'
      Size = 50
    end
    object QyErroriNOMEAP: TStringField
      FieldName = 'NOMEAP'
      Size = 50
    end
    object QyErroriUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object QyErroriDATA_ERR: TDateTimeField
      FieldName = 'DATA_ERR'
    end
    object QyErroriVERSIONE: TStringField
      FieldName = 'VERSIONE'
      Size = 10
    end
    object QyErroriCLASSNAME: TStringField
      FieldName = 'CLASSNAME'
      Size = 50
    end
    object QyErroriTESTOERRORE1: TBlobField
      FieldName = 'TESTOERRORE1'
      BlobType = ftOraBlob
    end
    object QyErroriTIPO_ERRORE: TIntegerField
      FieldName = 'TIPO_ERRORE'
    end
  end
  object LeggiPostoLavoro: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    NoSQLFields.Strings = (
      'gblospedale'
      'aetitle')
    EditMode = 'Read Only'
    UpdateTableName = 'WORKSTATION'
    PrimeFields.Strings = (
      'PKWORKSTATION')
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'w.pkworkstation,'
      'w.computername,'
      'w.ip,'
      'w.last_connection,'
      'w.versione,'
      'w.microprint,'
      'o.codice as gblospedale,'
      'u.gblpkps,'
      'u.gblpkservps,'
      'u.giorni_ritiro,'
      'u.pad_pid,'
      'u.pad_accnr,'
      'u.ctrl_ricoveri,'
      'u.TIPO_ATT_SALA_OP,'
      'w.Printer1,'
      'w.Printer2,'
      'w.com_porta,'
      'w.com_speed,'
      'w.com_parity,'
      'w.com_databit,'
      'w.com_stopbit,'
      'w.com_hwctrl,'
      'w.com_swctrl,'
      'w.RefVocale,'
      'w.Tipo_Login,'
      'w.set_default_printer,'
      'w.cdmaster_fk,'
      'w.SET_DATA,'
      'rv.dest_form,'
      'w.tipo_firma,'
      'w.show_eseguiti,'
      'w.show_refertati,'
      'cd.aetitle,'
      'o.descrizione as Ospedale,'
      'o.usl_reg_codice,'
      'o.cod_azienda, -- serve per rendiconatzioni RomaH: levare'
      'o.cod_sts11, -- serve per rendiconatzioni RomaH: levare'
      'co.descrizione as OspComune,'
      'r.descrizione as DescReparto,'
      'u.urgenza_fk,'
      'rp.descrizione as DescRepPs,'
      'sp.descrizione as DescServPs,'
      'u.ore_riapri,'
      'u.check_nascita,'
      'u.check_residenza,'
      'u.check_nascita_acc,'
      'u.check_residenza_acc,'
      'u.check_nascita_esec,'
      'u.check_residenza_esec,'
      'u.check_i_nascita,'
      'u.check_i_residenza,'
      'u.check_i_nascita_acc,'
      'u.check_i_residenza_acc,'
      'u.check_i_nascita_esec,'
      'u.check_i_residenza_esec,'
      'u.check_med_base,'
      'u.check_med_per_esame,'
      'u.firma_digitale,'
      'u.tipo_prenotazione,'
      'u.mod_tecnico_eseguito,'
      'u.view_nr_archivio,'
      'u.codicirad_fk,'
      'u.sala_operatoria_fk,'
      'u.anag_scrittura,'
      'u.check_no_prestmult,'
      'u.check_acr,'
      'u.check_motivocanc,'
      'u.def_osp_rich,'
      'u.leg_codice,'
      'u.chk_quesito_est,'
      'u.chk_quesito_int,'
      'u.chk_quesito_rep,'
      'u.chk_slitta_rep,'
      'u.chk_visualizza_quesito,'
      'u.chk_visualizza_note,'
      'u.no_img_esterne,'
      'u.chk_doppia_firma,'
      'u.chk_attivita_extra,'
      'u.chk_trascrivere,'
      'u.chk_consegna_con_pswd,'
      'u.condividi_agende,'
      'u.modifica_durata,'
      'u.check_assegna_ref,'
      'u.flag_testistd,'
      'u.chk_lista_refertazione,'
      'u.ASSEGNAREF_BLOCCO,'
      'u.FLAG_MN,'
      'u.DIAGN_PRENO_FK,'
      'u.ctrl_accettaz,'
      'u.flag_valida_rich,'
      'u.DESCR_AGG_REF,'
      'u.CHK_NOTE_RICH,'
      'u.CHK_CONF_DRAGDROP,'
      'u.CHK_ESTEMPORANEO,'
      'u.CHK_DATA_IMPEGNATIVA,'
      'u.CHK_SPECIFICAZIONI,'
      'u.CHK_ABILITA_ACCETTAZ,'
      'u.CHK_MODIFICA_ANAGRAFICA,'
      'u.CHK_ALLIEVO_TECNICO,'
      'u.CHK_TELEFONO_SERVIZIO,'
      'u.chk_trasporto,'
      'u.CHK_NR_RICHIESTA_OBB,'
      'u.CHK_RICH_IDENT,'
      'u.CHK_URGENZA_TECNICO,'
      'u.CHK_FIRMA_PROVV,'
      'u.TIPOINVIO_FK,'
      'u.FLAG_PROVVISORIO,'
      'u.CHK_ANNULLATIVO,'
      'u.CHK_ULTIMO_TECNICO,'
      'u.TIPO_NR_ARCHIVIO,'
      'u.CHK_RIPROPONI_QUESITO,'
      'u.CD_DA_REFERTO,'
      'u.COD_FISC_MED_OBB,'
      'u.BOOKMARK_IN_CD,'
      'u.CHK_NO_FUSIONI,'
      'u.NOTE_SISS,'
      'u.URL_REPOSITORY,'
      'u.CHK_GUARDIA_MED,'
      'u.CHK_REF_PREVIEW,'
      'u.CHK_DATI_IMPEGNATIVA,'
      'u.CHK_TIPO_ACCESSO,'
      'u.CHK_TIPO_RICETTA,'
      'u.CHK_COMPILAZIONE,'
      'u.CHK_CONSEGNA_REF,'
      'u.CHK_DATA_RICHIESTA,'
      'u.CHK_IDEN_REFER,'
      'u.CHK_ESAMI_FILTRABILI,'
      'u.CHK_ABILITA_ADDENDUM,'
      'u.FMT_ANNO,'
      'u.FMT_NUMERO,'
      'u.REF_VOCALE,'
      'u.PROVV_DEFINITIVO,'
      'u.ABILITA_ACC_AMM,'
      'u.CHK_FONDI_REFERTO,'
      'u.pacs_fk,'
      'u.CHK_QUESITO_REF,'
      'u.CHK_ABILITA_RIATTIVA,'
      'u.CHK_CHECK_IMG,'
      'u.COM_RES_DEF,'
      'u.wcf_uri,'
      'w.pacs_fk as wpacs_fk,'
      'NVL(w.SKIN_DEF,u.SKIN_DEF) as SKIN_DEF,'
      'w.clientpacs,'
      'u.reparti_fk'
      'from workstation w'
      'join reparti r on r.pkreparti = :reparti_fk'
      'join ucs_app_info u on u.reparti_fk = :reparti_fk'
      'left join ospedali o on o.codice = r.osp_codice'
      'left join comuni co on co.codice = o.com_codice'
      'left join reparti rp on rp.pkreparti = u.gblpkps'
      'left join servizi sp on sp.pkservizi = u.gblpkservps'
      'left join cdmaster cd on cd.pkcdmaster = w.cdmaster_fk'
      'join tipo_refvoc rv on rv.pktipo_refvoc = w.refvocale'
      'where w.computername = :computername and'
      '      w.tipows in (1,3,4)'
      ' ')
    SQLOptions = [soFetchMemos, soFetchBlobs]
    Params = <
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'computername'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    DirectModify = [tsyUpdate]
    UpdateObject = uLeggiPostoLavoro
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      030000001D0000000800000047424C504B52455001000000000900000047424C
      504B5345525601000000000B00000047424C4F53504544414C45010000000007
      00000047424C504B505301000000000D000000504B574F524B53544154494F4E
      01000000000C000000434F4D50555445524E414D4501000000000B0000004742
      4C504B53455256505301000000001000000047424C55534C5F524547434F4449
      434501000000000D00000047424C55534C5F434F444943450100000000080000
      005052494E544552310100000000080000005052494E54455232010000000009
      000000434F4D5F504F525441010000000009000000434F4D5F53504545440100
      0000000A000000434F4D5F50415249545901000000000B000000434F4D5F4441
      544142495401000000000B000000434F4D5F53544F5042495401000000000A00
      0000434F4D5F48574354524C01000000000A000000434F4D5F53574354524C01
      000000000700000053594E41505345010000000009000000524546564F43414C
      450100000000080000004F53504544414C450100000000090000004F5350434F
      4D554E4501000000000B000000444553435245504152544F01000000000C0000
      004445534353455256495A494F01000000000900000044455343524550505301
      000000000A0000004445534353455256505301000000000A0000004F52455F52
      494150524901000000000D000000434845434B5F4E4153434954410100000000
      0F000000434845434B5F5245534944454E5A410100000000}
    Left = 148
    Top = 280
    FastFields = (
      'PKWORKSTATION,3,0'
      'COMPUTERNAME,1,30'
      'IP,1,15'
      'LAST_CONNECTION,11,0'
      'VERSIONE,1,12'
      'MICROPRINT,3,0'
      'GBLOSPEDALE,1,20'
      'GBLPKPS,3,0'
      'GBLPKSERVPS,3,0'
      'GIORNI_RITIRO,3,0'
      'PAD_PID,3,0'
      'PAD_ACCNR,3,0'
      'CTRL_RICOVERI,3,0'
      'TIPO_ATT_SALA_OP,1,2'
      'PRINTER1,1,100'
      'PRINTER2,1,100'
      'COM_PORTA,1,1'
      'COM_SPEED,1,7'
      'COM_PARITY,1,7'
      'COM_DATABIT,3,0'
      'COM_STOPBIT,1,3'
      'COM_HWCTRL,1,10'
      'COM_SWCTRL,1,10'
      'REFVOCALE,3,0'
      'TIPO_LOGIN,3,0'
      'SET_DEFAULT_PRINTER,3,0'
      'CDMASTER_FK,3,0'
      'SET_DATA,3,0'
      'DEST_FORM,3,0'
      'TIPO_FIRMA,3,0'
      'SHOW_ESEGUITI,3,0'
      'SHOW_REFERTATI,3,0'
      'AETITLE,1,50'
      'OSPEDALE,1,80'
      'USL_REG_CODICE,1,3'
      'COD_AZIENDA,1,3'
      'COD_STS11,1,12'
      'OSPCOMUNE,1,60'
      'DESCREPARTO,1,60'
      'URGENZA_FK,3,0'
      'DESCREPPS,1,60'
      'DESCSERVPS,1,100'
      'ORE_RIAPRI,3,0'
      'CHECK_NASCITA,3,0'
      'CHECK_RESIDENZA,3,0'
      'CHECK_NASCITA_ACC,3,0'
      'CHECK_RESIDENZA_ACC,3,0'
      'CHECK_NASCITA_ESEC,3,0'
      'CHECK_RESIDENZA_ESEC,3,0'
      'CHECK_I_NASCITA,3,0'
      'CHECK_I_RESIDENZA,3,0'
      'CHECK_I_NASCITA_ACC,3,0'
      'CHECK_I_RESIDENZA_ACC,3,0'
      'CHECK_I_NASCITA_ESEC,3,0'
      'CHECK_I_RESIDENZA_ESEC,3,0'
      'CHECK_MED_BASE,3,0'
      'CHECK_MED_PER_ESAME,3,0'
      'FIRMA_DIGITALE,3,0'
      'TIPO_PRENOTAZIONE,3,0'
      'MOD_TECNICO_ESEGUITO,3,0'
      'VIEW_NR_ARCHIVIO,3,0'
      'CODICIRAD_FK,3,0'
      'SALA_OPERATORIA_FK,3,0'
      'ANAG_SCRITTURA,3,0'
      'CHECK_NO_PRESTMULT,3,0'
      'CHECK_ACR,3,0'
      'CHECK_MOTIVOCANC,3,0'
      'DEF_OSP_RICH,1,20'
      'LEG_CODICE,1,10'
      'CHK_QUESITO_EST,3,0'
      'CHK_QUESITO_INT,3,0'
      'CHK_QUESITO_REP,3,0'
      'CHK_SLITTA_REP,3,0'
      'CHK_VISUALIZZA_QUESITO,3,0'
      'CHK_VISUALIZZA_NOTE,3,0'
      'NO_IMG_ESTERNE,3,0'
      'CHK_DOPPIA_FIRMA,3,0'
      'CHK_ATTIVITA_EXTRA,3,0'
      'CHK_TRASCRIVERE,3,0'
      'CHK_CONSEGNA_CON_PSWD,3,0'
      'CONDIVIDI_AGENDE,3,0'
      'MODIFICA_DURATA,3,0'
      'CHECK_ASSEGNA_REF,3,0'
      'FLAG_TESTISTD,3,0'
      'CHK_LISTA_REFERTAZIONE,3,0'
      'ASSEGNAREF_BLOCCO,3,0'
      'FLAG_MN,3,0'
      'DIAGN_PRENO_FK,3,0'
      'CTRL_ACCETTAZ,3,0'
      'FLAG_VALIDA_RICH,3,0'
      'DESCR_AGG_REF,3,0'
      'CHK_NOTE_RICH,3,0'
      'CHK_CONF_DRAGDROP,3,0'
      'CHK_ESTEMPORANEO,3,0'
      'CHK_DATA_IMPEGNATIVA,3,0'
      'CHK_SPECIFICAZIONI,3,0'
      'CHK_ABILITA_ACCETTAZ,3,0'
      'CHK_MODIFICA_ANAGRAFICA,3,0'
      'CHK_ALLIEVO_TECNICO,3,0'
      'CHK_TELEFONO_SERVIZIO,3,0'
      'CHK_TRASPORTO,3,0'
      'CHK_NR_RICHIESTA_OBB,3,0'
      'CHK_RICH_IDENT,3,0'
      'CHK_URGENZA_TECNICO,3,0'
      'CHK_FIRMA_PROVV,3,0'
      'TIPOINVIO_FK,1,2'
      'FLAG_PROVVISORIO,3,0'
      'CHK_ANNULLATIVO,3,0'
      'CHK_ULTIMO_TECNICO,3,0'
      'TIPO_NR_ARCHIVIO,3,0'
      'CHK_RIPROPONI_QUESITO,3,0'
      'CD_DA_REFERTO,3,0'
      'COD_FISC_MED_OBB,3,0'
      'BOOKMARK_IN_CD,3,0'
      'CHK_NO_FUSIONI,3,0'
      'NOTE_SISS,31,0'
      'URL_REPOSITORY,1,250'
      'CHK_GUARDIA_MED,3,0'
      'CHK_REF_PREVIEW,3,0'
      'CHK_DATI_IMPEGNATIVA,3,0'
      'CHK_TIPO_ACCESSO,3,0'
      'CHK_TIPO_RICETTA,3,0'
      'CHK_COMPILAZIONE,3,0'
      'CHK_CONSEGNA_REF,3,0'
      'CHK_DATA_RICHIESTA,3,0'
      'CHK_IDEN_REFER,3,0'
      'CHK_ESAMI_FILTRABILI,3,0'
      'CHK_ABILITA_ADDENDUM,3,0'
      'FMT_ANNO,1,6'
      'FMT_NUMERO,1,11'
      'REF_VOCALE,3,0'
      'PROVV_DEFINITIVO,3,0'
      'ABILITA_ACC_AMM,3,0'
      'CHK_FONDI_REFERTO,3,0'
      'PACS_FK,3,0'
      'CHK_QUESITO_REF,3,0'
      'CHK_ABILITA_RIATTIVA,3,0'
      'CHK_CHECK_IMG,3,0'
      'COM_RES_DEF,1,13'
      'WCF_URI,1,100'
      'WPACS_FK,3,0'
      'SKIN_DEF,3,0'
      'CLIENTPACS,3,0'
      'REPARTI_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object LeggiPostoLavoroGBLOSPEDALE: TStringField
      FieldName = 'GBLOSPEDALE'
    end
    object LeggiPostoLavoroCOMPUTERNAME: TStringField
      FieldName = 'COMPUTERNAME'
      Size = 30
    end
    object LeggiPostoLavoroPKWORKSTATION: TIntegerField
      FieldName = 'PKWORKSTATION'
    end
    object LeggiPostoLavoroGBLPKPS: TIntegerField
      FieldName = 'GBLPKPS'
    end
    object LeggiPostoLavoroGBLPKSERVPS: TIntegerField
      FieldName = 'GBLPKSERVPS'
    end
    object LeggiPostoLavoroPRINTER1: TStringField
      FieldName = 'PRINTER1'
      Size = 100
    end
    object LeggiPostoLavoroPRINTER2: TStringField
      FieldName = 'PRINTER2'
      Size = 100
    end
    object LeggiPostoLavoroREFVOCALE: TIntegerField
      FieldName = 'REFVOCALE'
    end
    object LeggiPostoLavoroCOM_DATABIT: TIntegerField
      FieldName = 'COM_DATABIT'
    end
    object LeggiPostoLavoroOSPEDALE: TStringField
      FieldName = 'OSPEDALE'
      Size = 80
    end
    object LeggiPostoLavoroOSPCOMUNE: TStringField
      FieldName = 'OSPCOMUNE'
      Size = 60
    end
    object LeggiPostoLavoroDESCREPARTO: TStringField
      FieldName = 'DESCREPARTO'
      Size = 60
    end
    object LeggiPostoLavoroDESCREPPS: TStringField
      FieldName = 'DESCREPPS'
      Size = 60
    end
    object LeggiPostoLavoroDESCSERVPS: TStringField
      FieldName = 'DESCSERVPS'
      Size = 100
    end
    object LeggiPostoLavoroCOM_SPEED: TStringField
      FieldName = 'COM_SPEED'
      Size = 7
    end
    object LeggiPostoLavoroCOM_PARITY: TStringField
      FieldName = 'COM_PARITY'
      Size = 7
    end
    object LeggiPostoLavoroCOM_STOPBIT: TStringField
      FieldName = 'COM_STOPBIT'
      Size = 3
    end
    object LeggiPostoLavoroCOM_HWCTRL: TStringField
      FieldName = 'COM_HWCTRL'
      Size = 10
    end
    object LeggiPostoLavoroCOM_SWCTRL: TStringField
      FieldName = 'COM_SWCTRL'
      Size = 10
    end
    object LeggiPostoLavoroORE_RIAPRI: TIntegerField
      FieldName = 'ORE_RIAPRI'
    end
    object LeggiPostoLavoroCHECK_NASCITA: TIntegerField
      FieldName = 'CHECK_NASCITA'
    end
    object LeggiPostoLavoroCHECK_RESIDENZA: TIntegerField
      FieldName = 'CHECK_RESIDENZA'
    end
    object LeggiPostoLavoroCOM_PORTA: TStringField
      FieldName = 'COM_PORTA'
      Size = 1
    end
    object LeggiPostoLavoroFIRMA_DIGITALE: TIntegerField
      FieldName = 'FIRMA_DIGITALE'
    end
    object LeggiPostoLavoroTIPO_LOGIN: TIntegerField
      FieldName = 'TIPO_LOGIN'
    end
    object LeggiPostoLavoroTIPO_PRENOTAZIONE: TIntegerField
      FieldName = 'TIPO_PRENOTAZIONE'
    end
    object LeggiPostoLavoroMOD_TECNICO_ESEGUITO: TIntegerField
      FieldName = 'MOD_TECNICO_ESEGUITO'
    end
    object LeggiPostoLavoroCHECK_NASCITA_ACC: TIntegerField
      FieldName = 'CHECK_NASCITA_ACC'
    end
    object LeggiPostoLavoroCHECK_RESIDENZA_ACC: TIntegerField
      FieldName = 'CHECK_RESIDENZA_ACC'
    end
    object LeggiPostoLavoroCHECK_NASCITA_ESEC: TIntegerField
      FieldName = 'CHECK_NASCITA_ESEC'
    end
    object LeggiPostoLavoroCHECK_RESIDENZA_ESEC: TIntegerField
      FieldName = 'CHECK_RESIDENZA_ESEC'
    end
    object LeggiPostoLavoroCHECK_MED_BASE: TIntegerField
      FieldName = 'CHECK_MED_BASE'
    end
    object LeggiPostoLavoroCHECK_MED_PER_ESAME: TIntegerField
      FieldName = 'CHECK_MED_PER_ESAME'
    end
    object LeggiPostoLavoroVIEW_NR_ARCHIVIO: TIntegerField
      FieldName = 'VIEW_NR_ARCHIVIO'
    end
    object LeggiPostoLavoroCODICIRAD_FK: TIntegerField
      FieldName = 'CODICIRAD_FK'
    end
    object LeggiPostoLavoroSALA_OPERATORIA_FK: TIntegerField
      FieldName = 'SALA_OPERATORIA_FK'
    end
    object LeggiPostoLavoroCHECK_I_NASCITA: TIntegerField
      FieldName = 'CHECK_I_NASCITA'
    end
    object LeggiPostoLavoroCHECK_I_RESIDENZA: TIntegerField
      FieldName = 'CHECK_I_RESIDENZA'
    end
    object LeggiPostoLavoroCHECK_I_NASCITA_ACC: TIntegerField
      FieldName = 'CHECK_I_NASCITA_ACC'
    end
    object LeggiPostoLavoroCHECK_I_RESIDENZA_ACC: TIntegerField
      FieldName = 'CHECK_I_RESIDENZA_ACC'
    end
    object LeggiPostoLavoroCHECK_I_NASCITA_ESEC: TIntegerField
      FieldName = 'CHECK_I_NASCITA_ESEC'
    end
    object LeggiPostoLavoroCHECK_I_RESIDENZA_ESEC: TIntegerField
      FieldName = 'CHECK_I_RESIDENZA_ESEC'
    end
    object LeggiPostoLavoroGIORNI_RITIRO: TIntegerField
      FieldName = 'GIORNI_RITIRO'
    end
    object LeggiPostoLavoroANAG_SCRITTURA: TIntegerField
      FieldName = 'ANAG_SCRITTURA'
    end
    object LeggiPostoLavoroCHECK_NO_PRESTMULT: TIntegerField
      FieldName = 'CHECK_NO_PRESTMULT'
    end
    object LeggiPostoLavoroIP: TStringField
      FieldName = 'IP'
      Size = 15
    end
    object LeggiPostoLavoroLAST_CONNECTION: TDateTimeField
      FieldName = 'LAST_CONNECTION'
    end
    object LeggiPostoLavoroCHECK_ACR: TIntegerField
      FieldName = 'CHECK_ACR'
    end
    object LeggiPostoLavoroCHECK_MOTIVOCANC: TIntegerField
      FieldName = 'CHECK_MOTIVOCANC'
    end
    object LeggiPostoLavoroDEF_OSP_RICH: TStringField
      FieldName = 'DEF_OSP_RICH'
      Size = 6
    end
    object LeggiPostoLavoroLEG_CODICE: TStringField
      FieldName = 'LEG_CODICE'
      Size = 10
    end
    object LeggiPostoLavoroNO_IMG_ESTERNE: TIntegerField
      FieldName = 'NO_IMG_ESTERNE'
    end
    object LeggiPostoLavoroCHK_QUESITO_EST: TIntegerField
      FieldName = 'CHK_QUESITO_EST'
    end
    object LeggiPostoLavoroCHK_QUESITO_INT: TIntegerField
      FieldName = 'CHK_QUESITO_INT'
    end
    object LeggiPostoLavoroCHK_QUESITO_REP: TIntegerField
      FieldName = 'CHK_QUESITO_REP'
    end
    object LeggiPostoLavoroCHK_SLITTA_REP: TIntegerField
      FieldName = 'CHK_SLITTA_REP'
    end
    object LeggiPostoLavoroCHK_VISUALIZZA_QUESITO: TIntegerField
      FieldName = 'CHK_VISUALIZZA_QUESITO'
    end
    object LeggiPostoLavoroCHK_VISUALIZZA_NOTE: TIntegerField
      FieldName = 'CHK_VISUALIZZA_NOTE'
    end
    object LeggiPostoLavoroCHK_DOPPIA_FIRMA: TIntegerField
      FieldName = 'CHK_DOPPIA_FIRMA'
    end
    object LeggiPostoLavoroCHK_ATTIVITA_EXTRA: TIntegerField
      FieldName = 'CHK_ATTIVITA_EXTRA'
    end
    object LeggiPostoLavoroCHK_TRASCRIVERE: TIntegerField
      FieldName = 'CHK_TRASCRIVERE'
    end
    object LeggiPostoLavoroCHK_CONSEGNA_CON_PSWD: TIntegerField
      FieldName = 'CHK_CONSEGNA_CON_PSWD'
    end
    object LeggiPostoLavoroPAD_PID: TIntegerField
      FieldName = 'PAD_PID'
    end
    object LeggiPostoLavoroCONDIVIDI_AGENDE: TIntegerField
      FieldName = 'CONDIVIDI_AGENDE'
    end
    object LeggiPostoLavoroSET_DEFAULT_PRINTER: TIntegerField
      FieldName = 'SET_DEFAULT_PRINTER'
    end
    object LeggiPostoLavoroUSL_REG_CODICE: TStringField
      FieldName = 'USL_REG_CODICE'
      Size = 3
    end
    object LeggiPostoLavoroCOD_AZIENDA: TStringField
      FieldName = 'COD_AZIENDA'
      Size = 3
    end
    object LeggiPostoLavoroVERSIONE: TStringField
      FieldName = 'VERSIONE'
      Size = 12
    end
    object LeggiPostoLavoroMODIFICA_DURATA: TIntegerField
      FieldName = 'MODIFICA_DURATA'
    end
    object LeggiPostoLavoroCHECK_ASSEGNA_REF: TIntegerField
      FieldName = 'CHECK_ASSEGNA_REF'
    end
    object LeggiPostoLavoroFLAG_TESTISTD: TIntegerField
      FieldName = 'FLAG_TESTISTD'
    end
    object LeggiPostoLavoroCHK_LISTA_REFERTAZIONE: TIntegerField
      FieldName = 'CHK_LISTA_REFERTAZIONE'
    end
    object LeggiPostoLavoroASSEGNAREF_BLOCCO: TIntegerField
      FieldName = 'ASSEGNAREF_BLOCCO'
    end
    object LeggiPostoLavoroAETITLE: TStringField
      FieldName = 'AETITLE'
      Size = 50
    end
    object LeggiPostoLavoroMICROPRINT: TIntegerField
      FieldName = 'MICROPRINT'
    end
    object LeggiPostoLavoroPAD_ACCNR: TIntegerField
      FieldName = 'PAD_ACCNR'
    end
    object LeggiPostoLavoroCTRL_RICOVERI: TIntegerField
      FieldName = 'CTRL_RICOVERI'
    end
    object LeggiPostoLavoroFLAG_MN: TIntegerField
      FieldName = 'FLAG_MN'
    end
    object LeggiPostoLavoroDIAGN_PRENO_FK: TIntegerField
      FieldName = 'DIAGN_PRENO_FK'
    end
    object LeggiPostoLavoroCTRL_ACCETTAZ: TIntegerField
      FieldName = 'CTRL_ACCETTAZ'
    end
    object LeggiPostoLavoroFLAG_VALIDA_RICH: TIntegerField
      FieldName = 'FLAG_VALIDA_RICH'
    end
    object LeggiPostoLavoroDESCR_AGG_REF: TIntegerField
      FieldName = 'DESCR_AGG_REF'
    end
    object LeggiPostoLavoroCHK_NOTE_RICH: TIntegerField
      FieldName = 'CHK_NOTE_RICH'
    end
    object LeggiPostoLavoroCHK_CONF_DRAGDROP: TIntegerField
      FieldName = 'CHK_CONF_DRAGDROP'
    end
    object LeggiPostoLavoroCHK_ESTEMPORANEO: TIntegerField
      FieldName = 'CHK_ESTEMPORANEO'
    end
    object LeggiPostoLavoroCHK_DATA_IMPEGNATIVA: TIntegerField
      FieldName = 'CHK_DATA_IMPEGNATIVA'
    end
    object LeggiPostoLavoroCHK_SPECIFICAZIONI: TIntegerField
      FieldName = 'CHK_SPECIFICAZIONI'
    end
    object LeggiPostoLavoroCHK_ABILITA_ACCETTAZ: TIntegerField
      FieldName = 'CHK_ABILITA_ACCETTAZ'
    end
    object LeggiPostoLavoroCHK_MODIFICA_ANAGRAFICA: TIntegerField
      FieldName = 'CHK_MODIFICA_ANAGRAFICA'
    end
    object LeggiPostoLavoroCHK_ALLIEVO_TECNICO: TIntegerField
      FieldName = 'CHK_ALLIEVO_TECNICO'
    end
    object LeggiPostoLavoroCDMASTER_FK: TIntegerField
      FieldName = 'CDMASTER_FK'
    end
    object LeggiPostoLavoroCHK_TELEFONO_SERVIZIO: TIntegerField
      FieldName = 'CHK_TELEFONO_SERVIZIO'
    end
    object LeggiPostoLavoroTIPO_ATT_SALA_OP: TStringField
      FieldName = 'TIPO_ATT_SALA_OP'
      Size = 2
    end
    object LeggiPostoLavoroCHK_TRASPORTO: TIntegerField
      FieldName = 'CHK_TRASPORTO'
    end
    object LeggiPostoLavoroCHK_NR_RICHIESTA_OBB: TIntegerField
      FieldName = 'CHK_NR_RICHIESTA_OBB'
    end
    object LeggiPostoLavoroCHK_RICH_IDENT: TIntegerField
      FieldName = 'CHK_RICH_IDENT'
    end
    object LeggiPostoLavoroCHK_URGENZA_TECNICO: TIntegerField
      FieldName = 'CHK_URGENZA_TECNICO'
    end
    object LeggiPostoLavoroCHK_FIRMA_PROVV: TIntegerField
      FieldName = 'CHK_FIRMA_PROVV'
    end
    object LeggiPostoLavoroTIPOINVIO_FK: TStringField
      FieldName = 'TIPOINVIO_FK'
      Size = 2
    end
    object LeggiPostoLavoroFLAG_PROVVISORIO: TIntegerField
      FieldName = 'FLAG_PROVVISORIO'
    end
    object LeggiPostoLavoroSET_DATA: TIntegerField
      FieldName = 'SET_DATA'
    end
    object LeggiPostoLavoroCHK_ANNULLATIVO: TIntegerField
      FieldName = 'CHK_ANNULLATIVO'
    end
    object LeggiPostoLavoroTIPO_NR_ARCHIVIO: TIntegerField
      FieldName = 'TIPO_NR_ARCHIVIO'
    end
    object LeggiPostoLavoroDEST_FORM: TIntegerField
      FieldName = 'DEST_FORM'
    end
    object LeggiPostoLavoroCHK_ULTIMO_TECNICO: TIntegerField
      FieldName = 'CHK_ULTIMO_TECNICO'
    end
    object LeggiPostoLavoroCHK_RIPROPONI_QUESITO: TIntegerField
      FieldName = 'CHK_RIPROPONI_QUESITO'
    end
    object LeggiPostoLavoroURGENZA_FK: TIntegerField
      FieldName = 'URGENZA_FK'
    end
    object LeggiPostoLavoroCOD_STS11: TStringField
      FieldName = 'COD_STS11'
      Size = 12
    end
    object LeggiPostoLavoroCD_DA_REFERTO: TIntegerField
      FieldName = 'CD_DA_REFERTO'
    end
    object LeggiPostoLavoroCOD_FISC_MED_OBB: TIntegerField
      FieldName = 'COD_FISC_MED_OBB'
    end
    object LeggiPostoLavoroBOOKMARK_IN_CD: TIntegerField
      FieldName = 'BOOKMARK_IN_CD'
    end
    object LeggiPostoLavoroCHK_NO_FUSIONI: TIntegerField
      FieldName = 'CHK_NO_FUSIONI'
    end
    object LeggiPostoLavoroNOTE_SISS: TMemoField
      FieldName = 'NOTE_SISS'
      BlobType = ftOraClob
    end
    object LeggiPostoLavoroCHK_GUARDIA_MED: TIntegerField
      FieldName = 'CHK_GUARDIA_MED'
    end
    object LeggiPostoLavoroTIPO_FIRMA: TIntegerField
      FieldName = 'TIPO_FIRMA'
    end
    object LeggiPostoLavoroURL_REPOSITORY: TStringField
      FieldName = 'URL_REPOSITORY'
      Size = 250
    end
    object LeggiPostoLavoroCHK_REF_PREVIEW: TIntegerField
      FieldName = 'CHK_REF_PREVIEW'
    end
    object LeggiPostoLavoroCHK_DATI_IMPEGNATIVA: TIntegerField
      FieldName = 'CHK_DATI_IMPEGNATIVA'
    end
    object LeggiPostoLavoroCHK_TIPO_ACCESSO: TIntegerField
      FieldName = 'CHK_TIPO_ACCESSO'
    end
    object LeggiPostoLavoroCHK_TIPO_RICETTA: TIntegerField
      FieldName = 'CHK_TIPO_RICETTA'
    end
    object LeggiPostoLavoroCHK_COMPILAZIONE: TIntegerField
      FieldName = 'CHK_COMPILAZIONE'
    end
    object LeggiPostoLavoroCHK_CONSEGNA_REF: TIntegerField
      FieldName = 'CHK_CONSEGNA_REF'
    end
    object LeggiPostoLavoroCHK_DATA_RICHIESTA: TIntegerField
      FieldName = 'CHK_DATA_RICHIESTA'
    end
    object LeggiPostoLavoroCHK_IDEN_REFER: TIntegerField
      FieldName = 'CHK_IDEN_REFER'
    end
    object LeggiPostoLavoroCHK_ESAMI_FILTRABILI: TIntegerField
      FieldName = 'CHK_ESAMI_FILTRABILI'
    end
    object LeggiPostoLavoroCHK_ABILITA_ADDENDUM: TIntegerField
      FieldName = 'CHK_ABILITA_ADDENDUM'
    end
    object LeggiPostoLavoroSHOW_ESEGUITI: TIntegerField
      FieldName = 'SHOW_ESEGUITI'
    end
    object LeggiPostoLavoroFMT_ANNO: TStringField
      FieldName = 'FMT_ANNO'
      Size = 6
    end
    object LeggiPostoLavoroFMT_NUMERO: TStringField
      FieldName = 'FMT_NUMERO'
      Size = 11
    end
    object LeggiPostoLavoroREF_VOCALE: TIntegerField
      DisplayLabel = 'Refertazione vocale'
      FieldName = 'REF_VOCALE'
      Required = True
    end
    object LeggiPostoLavoroPROVV_DEFINITIVO: TIntegerField
      FieldName = 'PROVV_DEFINITIVO'
    end
    object LeggiPostoLavoroABILITA_ACC_AMM: TIntegerField
      FieldName = 'ABILITA_ACC_AMM'
    end
    object LeggiPostoLavoroCHK_FONDI_REFERTO: TIntegerField
      FieldName = 'CHK_FONDI_REFERTO'
    end
    object LeggiPostoLavoroPACS_FK: TIntegerField
      FieldName = 'PACS_FK'
    end
    object LeggiPostoLavoroWPACS_FK: TIntegerField
      FieldName = 'WPACS_FK'
    end
    object LeggiPostoLavoroCLIENTPACS: TIntegerField
      FieldName = 'CLIENTPACS'
    end
    object LeggiPostoLavoroCHK_QUESITO_REF: TIntegerField
      FieldName = 'CHK_QUESITO_REF'
    end
    object LeggiPostoLavoroCHK_ABILITA_RIATTIVA: TIntegerField
      FieldName = 'CHK_ABILITA_RIATTIVA'
    end
    object LeggiPostoLavoroCHK_CHECK_IMG: TIntegerField
      FieldName = 'CHK_CHECK_IMG'
    end
    object LeggiPostoLavoroREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object LeggiPostoLavoroSHOW_REFERTATI: TIntegerField
      FieldName = 'SHOW_REFERTATI'
    end
    object LeggiPostoLavoroSKIN_DEF: TIntegerField
      FieldName = 'SKIN_DEF'
    end
    object LeggiPostoLavoroCOM_RES_DEF: TStringField
      FieldName = 'COM_RES_DEF'
      Size = 13
    end
    object LeggiPostoLavoroWCF_URI: TStringField
      FieldName = 'WCF_URI'
      Size = 100
    end
  end
  object rsStorage1: TrsStorage
    Active = False
    StorageData = rsXMLData1
    Options = []
    Left = 172
    Top = 188
  end
  object Timer1: TTimer
    Interval = 108000000
    OnTimer = Timer1Timer
    Left = 296
    Top = 200
  end
  object qLeggiReport: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select item_name,report'
      'from rb_item'
      'where item_name = :item_name')
    SQLOptions = [soFetchMemos, soFetchBlobs]
    Params = <
      item
        Name = 'item_name'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 516
    Top = 239
    FastFields = (
      'ITEM_NAME,1,60'
      'REPORT,30,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qLeggiReportITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 60
    end
    object qLeggiReportREPORT: TBlobField
      FieldName = 'REPORT'
      BlobType = ftOraBlob
    end
  end
  object sqLeggiReport: TDataSource
    DataSet = qLeggiReport
    Left = 564
    Top = 265
  end
  object qReferto: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.Field = 'PKREFERTI'
    SequenceField.Sequence = 'REFERTI_PKREFERTI'
    SequenceField.ApplyMoment = amOnNewRecord
    NoSQLFields.Strings = (
      'statovisita'
      'user_id')
    EditMode = 'Read Only'
    UpdateTableName = 'REFERTI'
    PrimeFields.Strings = (
      'PKREFERTI')
    RefetchOnInsert.Strings = (
      'REFERTI_FK')
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'r.pkreferti,'
      'r.statoreferto_fk,'
      'r.tipo_referto_fk,'
      'r.firmato,'
      'r.referti_fk,'
      'r.referto,'
      'r.XSLTREF,'
      'r.HASHREF,'
      'r.CONTREF,'
      'r.HASHDAO,'
      'r.ALGORITMOHASH,'
      'r.SIZEDOCUMENTO,'
      'r.cod_med_firma,'
      't.statovisita,'
      't.user_id,'
      't.impegnative_fk,'
      'r.DATA_REFERTO,'
      'r.URIREF,'
      'r.GUIDREF,'
      'r.NOME_DOCUMENTO,'
      'r.SOLO_FIRMA,'
      'rt.triage_fk,'
      'rp.diagnosi as diagn_add'
      'from referti r'
      'join refxtriage rt on rt.referti_fk = r.pkreferti'
      'join triage t on t.pktriage = rt.triage_fk'
      'left join referti rp on rp.pkreferti=r.referti_fk'
      'where r.pkreferti=:pkreferti'
      '--and r.statoreferto_fk in (0,92)'
      ' ')
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
    DirectModify = [tsyDelete]
    UpdateObject = updqReferto
    QBEMode = False
    Left = 536
    Top = 308
    FastFields = (
      'PKREFERTI,3,0'
      'STATOREFERTO_FK,3,0'
      'TIPO_REFERTO_FK,3,0'
      'FIRMATO,3,0'
      'REFERTI_FK,3,0'
      'REFERTO,30,0'
      'XSLTREF,1,10'
      'HASHREF,1,50'
      'CONTREF,30,0'
      'HASHDAO,1,50'
      'ALGORITMOHASH,1,10'
      'SIZEDOCUMENTO,1,32'
      'COD_MED_FIRMA,3,0'
      'STATOVISITA,3,0'
      'USER_ID,3,0'
      'IMPEGNATIVE_FK,3,0'
      'DATA_REFERTO,11,0'
      'URIREF,1,500'
      'GUIDREF,1,64'
      'NOME_DOCUMENTO,1,50'
      'SOLO_FIRMA,3,0'
      'TRIAGE_FK,3,0'
      'DIAGN_ADD,30,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qRefertoREFERTO: TBlobField
      FieldName = 'REFERTO'
      BlobType = ftOraBlob
    end
    object qRefertoPKREFERTI: TIntegerField
      FieldName = 'PKREFERTI'
    end
    object qRefertoUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object qRefertoREFERTI_FK: TIntegerField
      FieldName = 'REFERTI_FK'
    end
    object qRefertoFIRMATO: TIntegerField
      FieldName = 'FIRMATO'
    end
    object qRefertoXSLTREF: TStringField
      FieldName = 'XSLTREF'
      Size = 10
    end
    object qRefertoCONTREF: TBlobField
      FieldName = 'CONTREF'
      BlobType = ftOraBlob
    end
    object qRefertoHASHREF: TStringField
      FieldName = 'HASHREF'
      Size = 50
    end
    object qRefertoDATA_REFERTO: TDateTimeField
      FieldName = 'DATA_REFERTO'
    end
    object qRefertoURIREF: TStringField
      FieldName = 'URIREF'
      Size = 500
    end
    object qRefertoGUIDREF: TStringField
      FieldName = 'GUIDREF'
      Size = 64
    end
    object qRefertoSTATOREFERTO_FK: TIntegerField
      FieldName = 'STATOREFERTO_FK'
    end
    object qRefertoSTATOVISITA: TIntegerField
      FieldName = 'STATOVISITA'
    end
    object qRefertoTRIAGE_FK: TIntegerField
      FieldName = 'TRIAGE_FK'
    end
    object qRefertoTIPO_REFERTO_FK: TIntegerField
      FieldName = 'TIPO_REFERTO_FK'
    end
    object qRefertoDIAGN_ADD: TBlobField
      FieldName = 'DIAGN_ADD'
      BlobType = ftOraBlob
    end
    object qRefertoNOME_DOCUMENTO: TStringField
      FieldName = 'NOME_DOCUMENTO'
      Size = 50
    end
    object qRefertoSOLO_FIRMA: TIntegerField
      FieldName = 'SOLO_FIRMA'
    end
    object qRefertoIMPEGNATIVE_FK: TIntegerField
      FieldName = 'IMPEGNATIVE_FK'
    end
    object qRefertoCOD_MED_FIRMA: TIntegerField
      FieldName = 'COD_MED_FIRMA'
    end
    object qRefertoHASHDAO: TStringField
      FieldName = 'HASHDAO'
      Size = 50
    end
    object qRefertoALGORITMOHASH: TStringField
      FieldName = 'ALGORITMOHASH'
      Size = 10
    end
    object qRefertoSIZEDOCUMENTO: TStringField
      FieldName = 'SIZEDOCUMENTO'
      Size = 32
    end
  end
  object AstaCut: TAstaDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    Left = 112
    Top = 84
    FastFields = (
      'PKTRIAGE,3,0'
      'ORA_INIZIO,11,0'
      'STATOVISITA,3,0'
      'DURATA,3,0'
      'ORA_FINE,11,0'
      'RIC_ANTICIPO,1,1'
      'ASSISTIBILI_FK,3,0'
      'USER_ID,3,0'
      'REPARTI_FK,3,0'
      'DIAGNOSTICA_FK,3,0'
      'NOME_PAZIENTE,1,110'
      'TIPO_ATTIVITA_FK,1,2'
      'DATA_NASCITA,11,0'
      'TELEFONO,1,30'
      'PROVENIENZA,1,1'
      'IMPEGNATIVE_FK,3,0'
      'AGENDE_FK,3,0'
      'REPARTO_RICH_FK,3,0'
      'SERVIZIO_RICH_FK,3,0'
      'OSP_RICH,1,20'
      'SERVIZI_FK,3,0')
    object AstaCutPKTRIAGE: TIntegerField
      DisplayLabel = 'Nr. Esame'
      FieldName = 'PKTRIAGE'
    end
    object AstaCutORA_INIZIO: TDateTimeField
      DisplayLabel = 'Orario'
      FieldName = 'ORA_INIZIO'
      DisplayFormat = 'ddddd hh.nn'
    end
    object AstaCutSTATOVISITA: TIntegerField
      FieldName = 'STATOVISITA'
    end
    object AstaCutDURATA: TIntegerField
      FieldName = 'DURATA'
    end
    object AstaCutORA_FINE: TDateTimeField
      FieldName = 'ORA_FINE'
    end
    object AstaCutRIC_ANTICIPO: TStringField
      FieldName = 'RIC_ANTICIPO'
      Size = 1
    end
    object AstaCutASSISTIBILI_FK: TIntegerField
      FieldName = 'ASSISTIBILI_FK'
    end
    object AstaCutUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object AstaCutREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object AstaCutDIAGNOSTICA_FK: TIntegerField
      FieldName = 'DIAGNOSTICA_FK'
    end
    object AstaCutNOME_PAZIENTE: TStringField
      DisplayLabel = 'Paziente'
      FieldName = 'NOME_PAZIENTE'
      Size = 110
    end
    object AstaCutTIPO_ATTIVITA_FK: TStringField
      FieldName = 'TIPO_ATTIVITA_FK'
      Size = 2
    end
    object AstaCutDATA_NASCITA: TDateTimeField
      DisplayLabel = 'Data nascita'
      FieldName = 'DATA_NASCITA'
    end
    object AstaCutTELEFONO: TStringField
      DisplayLabel = 'Telefono'
      FieldName = 'TELEFONO'
      Size = 30
    end
    object AstaCutPROVENIENZA: TStringField
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object AstaCutIMPEGNATIVE_FK: TIntegerField
      DisplayLabel = 'Nr. Accettazione'
      FieldName = 'IMPEGNATIVE_FK'
    end
    object AstaCutAGENDE_FK: TIntegerField
      FieldName = 'AGENDE_FK'
    end
    object AstaCutOSP_RICH: TStringField
      FieldName = 'OSP_RICH'
    end
    object AstaCutREPARTO_RICH_FK: TIntegerField
      FieldName = 'REPARTO_RICH_FK'
    end
    object AstaCutSERVIZIO_RICH_FK: TIntegerField
      FieldName = 'SERVIZIO_RICH_FK'
    end
    object AstaCutSERVIZI_FK: TIntegerField
      FieldName = 'SERVIZI_FK'
    end
  end
  object AstaDett: TAstaDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'AstaDettTRIAGE_FK'
        Fields = 'TRIAGE_FK'
        Options = []
        Selected = True
      end>
    IndexName = 'AstaDettTRIAGE_FK'
    Aggregates = <>
    Active = True
    Constraints = <>
    Left = 168
    Top = 84
    FastFields = (
      'PKPRESTAZIONI,6,0'
      'TRIAGE_FK,3,0'
      'PKCODICIRAD,3,0'
      'CODICE,1,12'
      'DESCRIZIONE,1,50'
      'DURATA,3,0'
      'NUMERO_PRESTAZIONE,3,0'
      'PROGRESSIVO_RIGA,3,0'
      'DESCBRANCA,1,60'
      'BRANCA,1,3')
    object AstaDettCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object AstaDettDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione esame'
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
    object AstaDettPKCODICIRAD: TIntegerField
      FieldName = 'PKCODICIRAD'
    end
    object AstaDettDURATA: TIntegerField
      DisplayLabel = 'Durata'
      FieldName = 'DURATA'
    end
    object AstaDettPKPRESTAZIONI: TFloatField
      FieldName = 'PKPRESTAZIONI'
    end
    object AstaDettTRIAGE_FK: TIntegerField
      FieldName = 'TRIAGE_FK'
    end
    object AstaDettNUMERO_PRESTAZIONE: TIntegerField
      DisplayLabel = 'Q.'
      FieldName = 'NUMERO_PRESTAZIONE'
    end
    object AstaDettPROGRESSIVO_RIGA: TIntegerField
      FieldName = 'PROGRESSIVO_RIGA'
    end
    object AstaDettDESCBRANCA: TStringField
      FieldName = 'DESCBRANCA'
      Size = 60
    end
    object AstaDettBRANCA: TStringField
      FieldName = 'BRANCA'
      Size = 3
    end
  end
  object rsXMLData1: TrsXMLData
    OnLoadFromStream = rsXMLData1LoadFromStream
    OnSaveToStream = rsXMLData1SaveToStream
    Left = 212
    Top = 204
  end
  object WebUpdate1: TWebUpdate
    Agent = 'TWebUpdate'
    DateFormat = 'dd/mm/yyyy'
    DateSeparator = '/'
    ExtractCAB = True
    LogFileName = 'WUPDATE.LOG'
    PostUpdateInfo.Enabled = False
    ShowDownloadProgress = True
    Signature = 'WebUpdate'
    TempDirectory = '.'
    TimeFormat = 'hh:nn'
    TimeSeparator = ':'
    UpdateUpdate = wuuSilent
    URL = 'http://syncro_port/updates/update.inf'
    UseCRC32 = True
    OnFileProgress = WebUpdate1FileProgress
    OnProgress = WebUpdate1Progress
    OnStatus = WebUpdate1Status
    OnAppRestart = WebUpdate1AppRestart
    OnAppDoClose = WebUpdate1AppDoClose
    OnSuccess = WebUpdate1Success
    Version = '2.2.7.1'
    Left = 28
    Top = 112
  end
  object Param_Ticket: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'p.impomax,'
      'p.importo_bollo,'
      'p.limite_bollo,'
      'p.esenz_anni_max,'
      'p.esenz_anni_min,'
      'p.ggvalidita,'
      'p.GG_CTRL_POSTRICOVERI,'
      'p.BASE_RICETTA,'
      'p.SITE_NAME,'
      'p.CODICI_CUP,'
      'p.tracc_separati,'
      'p.TRACC_AGG_PID,'
      'p.ANAG_DOMICILIO,'
      'p.RIS_ID_AUTH,'
      'p.ANAG_AUTHORITY,'
      'p.tiporeferto_fk,'
      'p.naz_locale,'
      'p.CHK_RICERCA_REFERTI,'
      'p.CALCOLO_CF,'
      'p.LINGUA,'
      'p.ali_iva,'
      'p.WS_URL_DEBURO'
      'from param_ticket p'
      ' '
      ' ')
    Params = <>
    QBEMode = False
    Left = 456
    Top = 340
    FastFields = (
      'IMPOMAX,6,0'
      'IMPORTO_BOLLO,6,0'
      'LIMITE_BOLLO,6,0'
      'ESENZ_ANNI_MAX,3,0'
      'ESENZ_ANNI_MIN,3,0'
      'GGVALIDITA,3,0'
      'GG_CTRL_POSTRICOVERI,3,0'
      'BASE_RICETTA,1,12'
      'SITE_NAME,1,30'
      'CODICI_CUP,3,0'
      'TRACC_SEPARATI,3,0'
      'TRACC_AGG_PID,3,0'
      'ANAG_DOMICILIO,3,0'
      'RIS_ID_AUTH,1,12'
      'ANAG_AUTHORITY,1,12'
      'TIPOREFERTO_FK,3,0'
      'NAZ_LOCALE,1,3'
      'CHK_RICERCA_REFERTI,3,0'
      'CALCOLO_CF,3,0'
      'LINGUA,1,3'
      'ALI_IVA,3,0'
      'WS_URL_DEBURO,1,200')
    FMultiTable = ()
    UpdateMethod = umManual
    object Param_TicketIMPOMAX: TFloatField
      FieldName = 'IMPOMAX'
    end
    object Param_TicketIMPORTO_BOLLO: TFloatField
      FieldName = 'IMPORTO_BOLLO'
    end
    object Param_TicketLIMITE_BOLLO: TFloatField
      FieldName = 'LIMITE_BOLLO'
    end
    object Param_TicketESENZ_ANNI_MAX: TIntegerField
      FieldName = 'ESENZ_ANNI_MAX'
    end
    object Param_TicketESENZ_ANNI_MIN: TIntegerField
      FieldName = 'ESENZ_ANNI_MIN'
    end
    object Param_TicketGGVALIDITA: TIntegerField
      FieldName = 'GGVALIDITA'
    end
    object Param_TicketGG_CTRL_POSTRICOVERI: TIntegerField
      FieldName = 'GG_CTRL_POSTRICOVERI'
    end
    object Param_TicketBASE_RICETTA: TStringField
      FieldName = 'BASE_RICETTA'
      Size = 12
    end
    object Param_TicketSITE_NAME: TStringField
      FieldName = 'SITE_NAME'
      Size = 30
    end
    object Param_TicketCODICI_CUP: TIntegerField
      FieldName = 'CODICI_CUP'
    end
    object Param_TicketTRACC_SEPARATI: TIntegerField
      FieldName = 'TRACC_SEPARATI'
    end
    object Param_TicketTRACC_AGG_PID: TIntegerField
      FieldName = 'TRACC_AGG_PID'
    end
    object Param_TicketANAG_DOMICILIO: TIntegerField
      FieldName = 'ANAG_DOMICILIO'
    end
    object Param_TicketANAG_AUTHORITY: TStringField
      FieldName = 'ANAG_AUTHORITY'
      Size = 12
    end
    object Param_TicketTIPOREFERTO_FK: TIntegerField
      FieldName = 'TIPOREFERTO_FK'
    end
    object Param_TicketCHK_RICERCA_REFERTI: TIntegerField
      FieldName = 'CHK_RICERCA_REFERTI'
    end
    object Param_TicketRIS_ID_AUTH: TStringField
      FieldName = 'RIS_ID_AUTH'
      Size = 12
    end
    object Param_TicketNAZ_LOCALE: TStringField
      FieldName = 'NAZ_LOCALE'
      Size = 3
    end
    object Param_TicketCALCOLO_CF: TIntegerField
      FieldName = 'CALCOLO_CF'
    end
    object Param_TicketLINGUA: TStringField
      FieldName = 'LINGUA'
      Size = 3
    end
    object Param_TicketALI_IVA: TIntegerField
      FieldName = 'ALI_IVA'
    end
    object Param_TicketWS_URL_DEBURO: TStringField
      FieldName = 'WS_URL_DEBURO'
      Size = 200
    end
  end
  object LkReparti: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = LkRepartiBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'r.pkreparti,'
      'r.descrizione,'
      'r.flag_ctrl_ric,'
      'r.esami_in_reparto,'
      'r.no_contr_acc,'
      'r.osp_codice,'
      'r.urgenza_fk,'
      'r.MAX_GG_RICHIESTA,'
      'r.provenienza,'
      'r.FLAG_ACC_SCON'
      'from reparti r'
      'where :osp_codice'
      'r.tipo_reparto = '#39'M'#39' and'
      '(r.data_inizio is null or r.data_inizio<=SYSDATE) and'
      '(r.data_fine is null or SYSDATE<r.data_fine)')
    Params = <
      item
        Name = 'osp_codice'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = '#'
      end>
    QBEMode = False
    Left = 544
    Top = 384
    FastFields = (
      'PKREPARTI,3,0'
      'DESCRIZIONE,1,60'
      'FLAG_CTRL_RIC,3,0'
      'ESAMI_IN_REPARTO,3,0'
      'NO_CONTR_ACC,3,0'
      'OSP_CODICE,1,20'
      'URGENZA_FK,3,0'
      'MAX_GG_RICHIESTA,3,0'
      'PROVENIENZA,1,1'
      'FLAG_ACC_SCON,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object LkRepartiPKREPARTI: TIntegerField
      FieldName = 'PKREPARTI'
    end
    object LkRepartiDESCRIZIONE: TStringField
      DisplayLabel = 'Reparto'
      FieldName = 'DESCRIZIONE'
      Size = 60
    end
    object LkRepartiFLAG_CTRL_RIC: TIntegerField
      FieldName = 'FLAG_CTRL_RIC'
    end
    object LkRepartiESAMI_IN_REPARTO: TIntegerField
      FieldName = 'ESAMI_IN_REPARTO'
    end
    object LkRepartiNO_CONTR_ACC: TIntegerField
      FieldName = 'NO_CONTR_ACC'
    end
    object LkRepartiOSP_CODICE: TStringField
      FieldName = 'OSP_CODICE'
      Size = 6
    end
    object LkRepartiURGENZA_FK: TIntegerField
      FieldName = 'URGENZA_FK'
    end
    object LkRepartiMAX_GG_RICHIESTA: TIntegerField
      FieldName = 'MAX_GG_RICHIESTA'
    end
    object LkRepartiPROVENIENZA: TStringField
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object LkRepartiFLAG_ACC_SCON: TIntegerField
      FieldName = 'FLAG_ACC_SCON'
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 908
    Top = 84
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -12
      GroupOptions.CaptionOptions.Font.Name = 'Source Sans Pro'
      GroupOptions.CaptionOptions.Font.Style = []
      GroupOptions.CaptionOptions.UseDefaultFont = False
    end
  end
  object LkEsenzione: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = LkEsenzioneBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      '   e.IDENT,'
      '   e.DESCRIZIONE as DESCR,'
      '   e.TET_IDENT,'
      '   e.ESENTE_QUOTA_FISSA,'
      '   e.ETA_MINIMA,'
      '   e.ETA_MASSIMA,'
      '   e.con_prestazioni,'
      '   te.esente,'
      '   te.descrizione as DescTipoEsenzione'
      'from esenzioni_ticket e'
      
        'join wtbd_esenzione te on te.ident = e.tet_ident and te.lingua=:' +
        'lingua'
      'where'
      '(e.data_inizio is null or e.data_inizio <= SYSDATE) and'
      '(e.data_fine is null or e.data_fine > SYSDATE)'
      ' '
      ' ')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 60
    Top = 376
    FastFields = (
      'IDENT,1,7'
      'DESCR,1,100'
      'TET_IDENT,3,0'
      'ESENTE_QUOTA_FISSA,3,0'
      'ETA_MINIMA,3,0'
      'ETA_MASSIMA,3,0'
      'CON_PRESTAZIONI,3,0'
      'ESENTE,3,0'
      'DESCTIPOESENZIONE,1,200')
    FMultiTable = ()
    UpdateMethod = umManual
    object LkEsenzioneTET_IDENT: TIntegerField
      FieldName = 'TET_IDENT'
    end
    object LkEsenzioneESENTE_QUOTA_FISSA: TIntegerField
      FieldName = 'ESENTE_QUOTA_FISSA'
    end
    object LkEsenzioneETA_MINIMA: TIntegerField
      FieldName = 'ETA_MINIMA'
    end
    object LkEsenzioneETA_MASSIMA: TIntegerField
      FieldName = 'ETA_MASSIMA'
    end
    object LkEsenzioneDESCR: TStringField
      DisplayLabel = 'Descrizione'
      DisplayWidth = 60
      FieldName = 'DESCR'
      Size = 60
    end
    object LkEsenzioneCON_PRESTAZIONI: TIntegerField
      FieldName = 'CON_PRESTAZIONI'
    end
    object LkEsenzioneIDENT: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'IDENT'
      Size = 6
    end
    object LkEsenzioneESENTE: TIntegerField
      FieldName = 'ESENTE'
    end
    object LkEsenzioneDESCTIPOESENZIONE: TStringField
      DisplayLabel = 'Tipo esenzione'
      FieldName = 'DESCTIPOESENZIONE'
      Size = 60
    end
  end
  object TabStampe: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_TabStampe_Ordine'
        Fields = 'FUNZIONI_FK;ORDINE'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_TabStampe_Ordine'
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = TabStampeBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    NoSQLFields.Strings = (
      'qe')
    EditMode = 'Read Only'
    UpdateTableName = 'TABSTAMPE'
    PrimeFields.Strings = (
      'PKTABSTAMPE')
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      't.pktabstampe,'
      't.reparti_fk,'
      't.item_id_fk,'
      't.ordine,'
      't.copie,'
      't.stampante,'
      't.gresami_fk,'
      't.funzioni_fk,'
      't.verificastampe_fk,'
      't.cd_automatico,'
      'NVL(r.descrizione,r.item_name) as descrizione,'
      't.TIPOREFERTO_FK,'
      't.selezione,'
      'r.item_type,'
      'r.url1,'
      'r.url2,'
      'r.batch_proc1,'
      'r.batch_proc2,'
      'fs.descrizione as DescFunzione,'
      
        '(select count(*) from esamixstampe e where e.item_id_fk=t.item_i' +
        'd_fk) as qe'
      'from tabstampe t'
      'join rb_item r on r.item_id=t.item_id_fk'
      
        'join wfunzionistampe fs on fs.pkfunzioni=t.funzioni_fk and fs.li' +
        'ngua=:lingua'
      'where t.reparti_fk=:reparti_fk and'
      'r.attivo=1'
      ' ')
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
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 24
      end>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      03000000070000000B000000504B5441425354414D504501000000000A000000
      524550415254495F464B01000000000A0000004954454D5F49445F464B010000
      0000060000004F5244494E4501000000000A000000504B46554E5A494F4E4901
      000000000B0000004445534352495A494F4E450100000000090000004954454D
      5F4E414D450100000000}
    Left = 612
    Top = 372
    FastFields = (
      'PKTABSTAMPE,3,0'
      'REPARTI_FK,3,0'
      'ITEM_ID_FK,3,0'
      'ORDINE,3,0'
      'COPIE,3,0'
      'STAMPANTE,3,0'
      'GRESAMI_FK,3,0'
      'FUNZIONI_FK,3,0'
      'VERIFICASTAMPE_FK,3,0'
      'CD_AUTOMATICO,3,0'
      'DESCRIZIONE,1,60'
      'TIPOREFERTO_FK,3,0'
      'SELEZIONE,3,0'
      'ITEM_TYPE,3,0'
      'URL1,1,200'
      'URL2,1,200'
      'BATCH_PROC1,1,200'
      'BATCH_PROC2,1,200'
      'DESCFUNZIONE,1,200'
      'QE,3,0')
    FMultiTable = ()
    UpdateMethod = umCached
    object TabStampeREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object TabStampeITEM_ID_FK: TIntegerField
      FieldName = 'ITEM_ID_FK'
    end
    object TabStampeORDINE: TIntegerField
      FieldName = 'ORDINE'
    end
    object TabStampeDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 60
    end
    object TabStampePKTABSTAMPE: TIntegerField
      FieldName = 'PKTABSTAMPE'
    end
    object TabStampeCOPIE: TIntegerField
      DisplayLabel = 'Copie'
      FieldName = 'COPIE'
    end
    object TabStampeSTAMPANTE: TIntegerField
      DisplayLabel = 'Stampante'
      FieldName = 'STAMPANTE'
    end
    object TabStampeSELEZIONE: TIntegerField
      DisplayLabel = 'Selezione'
      FieldName = 'SELEZIONE'
    end
    object TabStampeFUNZIONI_FK: TIntegerField
      FieldName = 'FUNZIONI_FK'
    end
    object TabStampeVERIFICASTAMPE_FK: TIntegerField
      FieldName = 'VERIFICASTAMPE_FK'
    end
    object TabStampeGRESAMI_FK: TIntegerField
      FieldName = 'GRESAMI_FK'
    end
    object TabStampeITEM_TYPE: TIntegerField
      FieldName = 'ITEM_TYPE'
    end
    object TabStampeTIPOREFERTO_FK: TIntegerField
      FieldName = 'TIPOREFERTO_FK'
    end
    object TabStampeURL1: TStringField
      FieldName = 'URL1'
      Size = 200
    end
    object TabStampeURL2: TStringField
      FieldName = 'URL2'
      Size = 200
    end
    object TabStampeBATCH_PROC1: TStringField
      FieldName = 'BATCH_PROC1'
      Size = 200
    end
    object TabStampeBATCH_PROC2: TStringField
      FieldName = 'BATCH_PROC2'
      Size = 200
    end
    object TabStampeCD_AUTOMATICO: TIntegerField
      FieldName = 'CD_AUTOMATICO'
    end
    object TabStampeDESCFUNZIONE: TStringField
      FieldName = 'DESCFUNZIONE'
      Size = 100
    end
    object TabStampeQE: TIntegerField
      FieldName = 'QE'
    end
  end
  object AlertEventList1: TKSAstaEventClient
    Active = False
    AstaClientSocket = AstaClientSocket
    Enabled = False
    DataSets = <
      item
        NomeTable = 'tabstampe'
        DataSource = sTabStampe
      end>
    Left = 660
    Top = 200
  end
  object sTabStampe: TDataSource
    DataSet = TabStampe
    Left = 680
    Top = 388
  end
  object Esami: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    FilterOptions = [foCaseInsensitive]
    Constraints = <>
    BeforeQuery = EsamiBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'c.codice,'
      'c.descrizione,'
      'c.ident_fk,'
      'm.durata,'
      'm.gresami_fk,'
      'gr.gresami,'
      'c.pkcodicirad,'
      'c.dose,'
      'c.composto,'
      'c.cespecific,'
      'p.extra_tariffario,'
      'p.calcolo_85,'
      'c.branca,'
      'b.descrizione as DescBranca,'
      'b.device'
      'from codxrad m'
      'join codicirad c on c.pkcodicirad = m.codicirad_fk'
      'left join branche b on b.pkbranche = c.branca'
      'left join gresami gr on gr.pkgresami = m.gresami_fk'
      'left join prestazioni_specialistiche p on p.ident=c.ident_fk'
      'where (c.data_fine is null or c.data_fine>SYSDATE)'
      'and m.reparti_fk=:pkreparti ')
    Params = <
      item
        Name = 'pkreparti'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      03000000060000000F000000504B5052455354535045434D554C540100000000
      100000005052455354535045434D554C545F464B010000000006000000434F44
      4943450100000000080000004944454E545F464B01000000000B000000444553
      4352495A494F4E450100000000060000004455524154410100000000}
    Left = 498
    Top = 401
    FastFields = (
      'CODICE,1,12'
      'DESCRIZIONE,1,100'
      'IDENT_FK,1,12'
      'DURATA,3,0'
      'GRESAMI_FK,3,0'
      'GRESAMI,1,10'
      'PKCODICIRAD,3,0'
      'DOSE,6,0'
      'COMPOSTO,3,0'
      'CESPECIFIC,3,0'
      'EXTRA_TARIFFARIO,3,0'
      'CALCOLO_85,3,0'
      'BRANCA,1,3'
      'DESCBRANCA,1,60'
      'DEVICE,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object EsamiCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object EsamiIDENT_FK: TStringField
      DisplayLabel = 'Tariffario'
      FieldName = 'IDENT_FK'
      Size = 12
    end
    object EsamiDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
    object EsamiDURATA: TIntegerField
      DisplayLabel = 'Durata'
      FieldName = 'DURATA'
    end
    object EsamiPKCODICIRAD: TIntegerField
      FieldName = 'PKCODICIRAD'
    end
    object EsamiDOSE: TFloatField
      FieldName = 'DOSE'
    end
    object EsamiCOMPOSTO: TIntegerField
      DisplayLabel = 'Composto'
      FieldName = 'COMPOSTO'
    end
    object EsamiGRESAMI_FK: TIntegerField
      FieldName = 'GRESAMI_FK'
    end
    object EsamiGRESAMI: TStringField
      DisplayLabel = 'Metodica'
      FieldName = 'GRESAMI'
      Size = 10
    end
    object EsamiEXTRA_TARIFFARIO: TIntegerField
      FieldName = 'EXTRA_TARIFFARIO'
    end
    object EsamiCALCOLO_85: TIntegerField
      FieldName = 'CALCOLO_85'
    end
    object EsamiDESCBRANCA: TStringField
      FieldName = 'DESCBRANCA'
      Size = 60
    end
    object EsamiBRANCA: TStringField
      FieldName = 'BRANCA'
      Size = 3
    end
    object EsamiCESPECIFIC: TIntegerField
      FieldName = 'CESPECIFIC'
    end
    object EsamiDEVICE: TIntegerField
      FieldName = 'DEVICE'
    end
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = Timer2Timer
    Left = 404
    Top = 32
  end
  object LkOspedali: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_Ospedali_CodRic'
        Fields = 'COD_RIC'
        Options = []
        Selected = True
      end
      item
        Name = 'Idx_Ospedali_Codice'
        Fields = 'CODICE'
        Options = []
      end>
    IndexName = 'Idx_Ospedali_CodRic'
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = LkOspedaliBeforeQuery
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'o.cod_ric,'
      'o.codice,'
      'o.tipo_attivita_fk,'
      'o.descrizione,'
      'o.es_ticket,'
      'o.tipo_fattura,'
      'o.leg_codice,'
      'o.agende_esclusive,'
      't.impegnativa,'
      't.provenienza,'
      't.tipo_accesso,'
      't.mask'
      'from ospedali o'
      
        'left join tipo_attivita t on t.tipo_attivita = o.tipo_attivita_f' +
        'k '
      'where'
      '(o.data_inizio is null or o.data_inizio<=SYSDATE)'
      'and (o.data_fine is null or o.data_fine>SYSDATE)'
      ' ')
    Params = <>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      03000000030000000700000044455343525F49010000000006000000434F4449
      43450100000000000000000100000000}
    Left = 550
    Top = 173
    FastFields = (
      'COD_RIC,1,20'
      'CODICE,1,20'
      'TIPO_ATTIVITA_FK,1,2'
      'DESCRIZIONE,1,80'
      'ES_TICKET,1,7'
      'TIPO_FATTURA,3,0'
      'LEG_CODICE,1,10'
      'AGENDE_ESCLUSIVE,3,0'
      'IMPEGNATIVA,3,0'
      'PROVENIENZA,1,1'
      'TIPO_ACCESSO,1,1'
      'MASK,1,50')
    FMultiTable = ()
    UpdateMethod = umManual
    object LkOspedaliCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
    end
    object LkOspedaliDESCRIZIONE: TStringField
      DisplayLabel = 'Ente'
      FieldName = 'DESCRIZIONE'
      Size = 80
    end
    object LkOspedaliCOD_RIC: TStringField
      DisplayLabel = 'Cod. Ricerca'
      FieldName = 'COD_RIC'
    end
    object LkOspedaliTIPO_ATTIVITA_FK: TStringField
      DisplayLabel = 'Tipo attivita'
      FieldName = 'TIPO_ATTIVITA_FK'
      Size = 2
    end
    object LkOspedaliIMPEGNATIVA: TIntegerField
      FieldName = 'IMPEGNATIVA'
    end
    object LkOspedaliES_TICKET: TStringField
      FieldName = 'ES_TICKET'
      Size = 7
    end
    object LkOspedaliPROVENIENZA: TStringField
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object LkOspedaliTIPO_FATTURA: TIntegerField
      FieldName = 'TIPO_FATTURA'
    end
    object LkOspedaliLEG_CODICE: TStringField
      FieldName = 'LEG_CODICE'
      Size = 10
    end
    object LkOspedaliAGENDE_ESCLUSIVE: TIntegerField
      FieldName = 'AGENDE_ESCLUSIVE'
    end
    object LkOspedaliTIPO_ACCESSO: TStringField
      FieldName = 'TIPO_ACCESSO'
      Size = 1
    end
    object LkOspedaliMASK: TStringField
      FieldName = 'MASK'
      Size = 50
    end
  end
  object Possibili: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_Possibili_Codice'
        Fields = 'CODICE;SERVIZI_FK'
        Options = []
        Selected = True
      end
      item
        Name = 'Idx_Possibili_Servizi'
        Fields = 'SERVIZI_FK;CODICE'
        Options = []
      end
      item
        Name = 'Idx_Possibili_PKCODICIRAD'
        Fields = 'PKCODICIRAD'
        Options = []
      end>
    IndexName = 'Idx_Possibili_Codice'
    Aggregates = <>
    Active = True
    FilterOptions = [foCaseInsensitive]
    Constraints = <>
    BeforeQuery = PossibiliBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'c.codice,'
      'c.pkcodicirad,'
      'CAST(m.servizi_fk as varchar2(9)) as servizi_fk,'
      'decode(m.durata,0,r.durata,m.durata) as durata,'
      'm.prenota,'
      'rs.rep_owner,'
      'rs.provenienza as tipopreno,'
      'r.gresami_fk,'
      'gr.gresami,'
      'r.reparti_fk,'
      'm.provenienza,'
      'c.cespecific,'
      'p.extra_tariffario,'
      'p.calcolo_85,'
      'c.branca,'
      'b.descrizione as DescBranca,'
      'b.device'
      '/*'
      ','
      'db.magart_fk,'
      'ma.descrizione as DescRadiofarmaco,'
      'db.quantita as QR'
      '*/'
      'from diagxwk dw'
      'join repserv rs on rs.servizi_fk = dw.servizi_fk'
      'join servizi s on s.PKSERVIZI = rs.SERVIZI_FK'
      'join esamixdiagn m on m.servizi_fk = s.pkservizi'
      'join codicirad c on c.pkcodicirad = m.codicirad_fk'
      'join branche b on b.pkbranche = c.branca'
      'join codxrad r on r.codicirad_fk = c.pkcodicirad'
      'left join gresami gr on gr.pkgresami = r.gresami_fk'
      'left join prestazioni_specialistiche p on p.ident=c.ident_fk'
      '/*, dist_bas db, magart ma*/'
      'where dw.workstation_fk=:workstation_fk and'
      'dw.attiva=1 and'
      '(rs.REPARTI_FK = :reparti_fk) and'
      '(:solo_rep is null or rs.REP_OWNER = :solo_rep) and'
      '(c.data_fine is null or c.data_fine>SYSDATE)'
      ':codxrad_fk'
      'and (s.data_inizio is null or s.data_inizio<=sysdate)'
      'and (s.data_fine is null or s.data_fine>sysdate)'
      ' ')
    Params = <
      item
        Name = 'workstation_fk'
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
        Value = 0
      end
      item
        Name = 'solo_rep'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'codxrad_fk'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = '#'
      end>
    QBEMode = False
    Left = 432
    Top = 392
    FastFields = (
      'CODICE,1,12'
      'PKCODICIRAD,3,0'
      'SERVIZI_FK,1,9'
      'DURATA,3,0'
      'PRENOTA,3,0'
      'REP_OWNER,3,0'
      'TIPOPRENO,1,1'
      'GRESAMI_FK,3,0'
      'GRESAMI,1,10'
      'REPARTI_FK,3,0'
      'PROVENIENZA,1,1'
      'CESPECIFIC,3,0'
      'EXTRA_TARIFFARIO,3,0'
      'CALCOLO_85,3,0'
      'BRANCA,1,3'
      'DESCBRANCA,1,60'
      'DEVICE,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object PossibiliCODICE: TStringField
      FieldName = 'CODICE'
      Size = 12
    end
    object PossibiliPKCODICIRAD: TIntegerField
      FieldName = 'PKCODICIRAD'
    end
    object PossibiliSERVIZI_FK: TStringField
      FieldName = 'SERVIZI_FK'
      Size = 9
    end
    object PossibiliPRENOTA: TIntegerField
      FieldName = 'PRENOTA'
    end
    object PossibiliREP_OWNER: TIntegerField
      FieldName = 'REP_OWNER'
    end
    object PossibiliGRESAMI_FK: TIntegerField
      FieldName = 'GRESAMI_FK'
    end
    object PossibiliREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object PossibiliPROVENIENZA: TStringField
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object PossibiliGRESAMI: TStringField
      DisplayLabel = 'Metodica'
      FieldName = 'GRESAMI'
      Size = 10
    end
    object PossibiliTIPOPRENO: TStringField
      FieldName = 'TIPOPRENO'
      Size = 1
    end
    object PossibiliEXTRA_TARIFFARIO: TIntegerField
      FieldName = 'EXTRA_TARIFFARIO'
    end
    object PossibiliCALCOLO_85: TIntegerField
      FieldName = 'CALCOLO_85'
    end
    object PossibiliDURATA: TIntegerField
      FieldName = 'DURATA'
    end
    object PossibiliDESCBRANCA: TStringField
      DisplayLabel = 'Tipo esame'
      FieldName = 'DESCBRANCA'
      Size = 60
    end
    object PossibiliBRANCA: TStringField
      FieldName = 'BRANCA'
      Size = 3
    end
    object PossibiliCESPECIFIC: TIntegerField
      FieldName = 'CESPECIFIC'
    end
    object PossibiliDEVICE: TIntegerField
      FieldName = 'DEVICE'
    end
  end
  object sLkOspedali: TDataSource
    DataSet = LkOspedali
    Left = 584
    Top = 189
  end
  object sLkEsenzione: TDataSource
    DataSet = LkEsenzione
    Left = 108
    Top = 368
  end
  object AssegnaAnagrafica: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'begin'
      '  update impegnative set'
      '  assistibili_fk = :pkassistibili,'
      '  user_id = :user_id'
      '  where pkimpegnative = :pkimpegnative;'
      ''
      
        '  insert into STATOVISITA( TRIAGE_FK, STATOVISITA, DATA_OP, INIZ' +
        'IO, USER_ID, SERVIZI_FK, REPARTI_FK )'
      
        '  select PKTRIAGE, 920, SYSDATE, ORA_INIZIO, :USER_ID, DIAGNOSTI' +
        'CA_FK, REPARTI_FK'
      '  from triage'
      '  where impegnative_fk = :PKIMPEGNATIVE;'
      ''
      'end;')
    Params = <
      item
        Name = 'pkassistibili'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'user_id'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
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
    Left = 200
    Top = 328
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = []
    Storage = rsStorage1
    Options = [poStoreDefValues]
    RootSection = 'FDMCommon.rsPropSaver1'
    Properties.Strings = (
      'SyncroServer,"","SyncroServer",'
      'SyncroPorta,"","SyncroPorta",'
      'Compressione,"","Compressione",'
      'NomeWebUpdate,"","NomeWebUpdate",'
      'SyncroServer2,"","SyncroServer2",'
      'SyncroPorta2,"","SyncroPorta2",'
      'LoginNT,"","LoginNT",')
    WhenLoad = wlManual
    WhenSave = wsManual
    OnGetProperty = rsPropSaver1GetProperty
    OnSetProperty = rsPropSaver1SetProperty
    Left = 140
    Top = 228
  end
  object TipoAttivita: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select '
      'tipo_attivita,'
      'descrizione,'
      'provenienza,'
      'impegnativa,'
      'tipo_accesso'
      'from tipo_attivita'
      'where attivo=1')
    Params = <>
    QBEMode = False
    Left = 372
    Top = 396
    FastFields = (
      'TIPO_ATTIVITA,1,2'
      'DESCRIZIONE,1,60'
      'PROVENIENZA,1,1'
      'IMPEGNATIVA,3,0'
      'TIPO_ACCESSO,1,1')
    FMultiTable = ()
    UpdateMethod = umManual
    object TipoAttivitaTIPO_ATTIVITA: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'TIPO_ATTIVITA'
      Size = 2
    end
    object TipoAttivitaDESCRIZIONE: TStringField
      DisplayLabel = 'Tipo attivita'
      FieldName = 'DESCRIZIONE'
      Size = 60
    end
    object TipoAttivitaPROVENIENZA: TStringField
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object TipoAttivitaIMPEGNATIVA: TIntegerField
      FieldName = 'IMPEGNATIVA'
    end
    object TipoAttivitaTIPO_ACCESSO: TStringField
      FieldName = 'TIPO_ACCESSO'
      Size = 1
    end
  end
  object qryUser: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnNewRecord
    EditMode = 'Read Only'
    UpdateTableName = 'PERSONALE'
    PrimeFields.Strings = (
      'USER_ID')
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      ' u.NOMINATIVO as REAL_NAME ,'
      ' u.PASSWORD as USER_PWD ,'
      ' u.PKPERSONALE as USER_ID,'
      ' u.Mod_Password as LAST_PWD_CHANGE ,'
      ' u.data_fine as EXPIRATION_DATE,'
      ' u.isadmin,'
      ' u.admin as superuser,'
      ' u.profilo_vocale,'
      ' pr.cod_funzione,'
      ' u.CODICE_FISCALE,'
      ' u.ESTRAZIONE_DATI,'
      ' u.FUNZ_INTERNI,'
      ' u.DBLCLICKTIME,'
      ' u.tipo_carta,'
      ' u.allow_overbooking,'
      ' u.LOGIN_NT,'
      ' pr.reparti_fk,'
      ' pr.servizi_fk,'
      ' s.descrizione as DescrServizio,'
      ' r.descrizione as Reparto'
      'from  Personale u'
      'join persxrep pr on pr.personale_fk = u.pkpersonale'
      'join reparti r on r.pkreparti = pr.reparti_fk'
      'left join servizi s on s.pkservizi = pr.servizi_fk'
      'where :campo = :LOGIN'
      'and (u.data_fine is null or u.data_fine>sysdate)'
      'and (r.data_fine is null or r.data_fine>sysdate)'
      'and (r.tipo_reparto='#39'R'#39')'
      ' ')
    Params = <
      item
        Name = 'campo'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = '# U.LOGIN_NT'
      end
      item
        Name = 'LOGIN'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 560
    Top = 44
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
      'LOGIN_NT,1,30'
      'REPARTI_FK,3,0'
      'SERVIZI_FK,3,0'
      'DESCRSERVIZIO,1,100'
      'REPARTO,1,60')
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
    object qryUserREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object qryUserTIPO_CARTA: TIntegerField
      FieldName = 'TIPO_CARTA'
    end
    object qryUserDESCRSERVIZIO: TStringField
      FieldName = 'DESCRSERVIZIO'
      Size = 100
    end
    object qryUserREPARTO: TStringField
      FieldName = 'REPARTO'
      Size = 60
    end
    object qryUserDBLCLICKTIME: TIntegerField
      FieldName = 'DBLCLICKTIME'
    end
    object qryUserALLOW_OVERBOOKING: TIntegerField
      FieldName = 'ALLOW_OVERBOOKING'
    end
    object qryUserCODICE_FISCALE: TStringField
      FieldName = 'CODICE_FISCALE'
      Size = 70
    end
    object qryUserLOGIN_NT: TStringField
      FieldName = 'LOGIN_NT'
      Size = 30
    end
  end
  object updqReferto: TAstaUpdateSQL
    InsertSQL.Strings = (
      'begin'
      ''
      '  insert into referti(pkreferti,statoreferto_fk,referti_fk)'
      '  values(:pkreferti,0,:referti_fk);'
      ''
      
        '  for z in (select rt.triage_fk from refxtriage rt where rt.refe' +
        'rti_fk=:referti_fk)'
      '  loop'
      ''
      '          insert into refxtriage(triage_fk,referti_fk)'
      '          values(z.triage_fk,:pkreferti);'
      ''
      '  end loop;'
      ''
      'end;'
      ' '
      ' '
      ' '
      ' ')
    ModifySQL.Strings = (
      'declare'
      '   dtref triage.data_referto%type;'
      'begin'
      ''
      'dtref := nvl(:DATA_REFERTO,SYSDATE);'
      ''
      'for z in (select rt.triage_fk'
      '          from refxtriage rt'
      '          where rt.referti_fk=:pkreferti'
      '          and not exists(select 1'
      '                         from refxtriage rf'
      
        '                         join refxtriage rf2 on rf2.triage_fk=rf' +
        '.triage_fk and rf2.referti_fk<>:pkreferti'
      
        '                         join referti r on r.pkreferti=rf2.refer' +
        'ti_fk and r.statoreferto_fk in (97,98,99)'
      '                         where rf.referti_fk=:pkreferti'
      '                         )'
      '          )'
      'loop'
      '        update triage'
      '        set statovisita = :statovisita,'
      '            user_id = :user_id,'
      '            data_referto = nvl(data_referto,dtref)'
      '        where pktriage = z.triage_fk'
      '        and statovisita <> :statovisita;'
      'end loop;'
      ''
      'update REFERTI set'
      'STATOREFERTO_FK = :STATOREFERTO_FK,'
      'REFERTO = empty_blob(),'
      'TIPO_REFERTO_FK = :TIPO_REFERTO_FK,'
      'FIRMATO = :FIRMATO,'
      'REFERTI_FK = :REFERTI_FK,'
      '--DIAGNOSI = empty_blob(),'
      '--NOTE_OSCURE = empty_blob(),'
      'XSLTREF = :XSLTREF,'
      'HASHREF = :HASHREF,'
      'CONTREF = empty_blob(),'
      'DATA_REFERTO = dtref,'
      'URIREF = :URIREF,'
      'GUIDREF = :GUIDREF,'
      'HASHDAO = :HASHDAO,'
      'ALGORITMOHASH = :ALGORITMOHASH,'
      'SIZEDOCUMENTO = :SIZEDOCUMENTO,'
      'NOME_DOCUMENTO = :NOME_DOCUMENTO,'
      'COD_MED_FIRMA = :COD_MED_FIRMA,'
      'SOLO_FIRMA = :SOLO_FIRMA'
      'where pkreferti = :pkreferti'
      'returning REFERTO,CONTREF   --DIAGNOSI,NOTE_OSCURE,'
      'into :REFERTO,:CONTREF;  --DIAGNOSI,NOTE_OSCURE;'
      ''
      'end;'
      ' '
      ' ')
    Left = 592
    Top = 312
  end
  object EsameInPacs: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    Params = <
      item
        Name = 'PRIS_STUDY_EUID'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 50
        Value = Null
      end
      item
        Name = 'PPID'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 50
        Value = Null
      end
      item
        Name = 'PTIPO_MODALITA'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 50
        Value = Null
      end
      item
        Name = 'PPACS_FK'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'RES'
        ParamType = ptOutput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'XLAST_NAME'
        ParamType = ptOutput
        DataType = ftString
        IsNull = True
        Size = 50
        Value = Null
      end
      item
        Name = 'XFIRST_NAME'
        ParamType = ptOutput
        DataType = ftString
        IsNull = True
        Size = 50
        Value = Null
      end
      item
        Name = 'XEXTERNAL_EID'
        ParamType = ptOutput
        DataType = ftString
        IsNull = True
        Size = 50
        Value = Null
      end
      item
        Name = 'XNAME'
        ParamType = ptOutput
        DataType = ftString
        IsNull = True
        Size = 50
        Value = Null
      end>
    StoredProcedure = 'PKG_PACS.ESAMEINPACS'
    QBEMode = False
    Left = 579
    Top = 107
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object AstaMultiSite: TAstaClientSocket
    Active = False
    Address = '192.0.14.1'
    ClientType = ctNonBlocking
    Host = '192.0.14.1'
    Port = 9001
    OnConnect = AstaMultiSiteConnect
    OnDisconnect = AstaMultiSiteDisconnect
    OnError = AstaMultiSiteError
    ReconnectDelayTime = 1000
    ReconnectMaxAttempt = 3
    LoginMaxAttempts = 0
    WebServer.WinInetToStatusBar = False
    WebServer.UseSSL = False
    WebServer.AstaHttpDll = 'scripts/Astahttp.dll'
    CacheMetaDataOptions = smNoCache
    SQLTransactionStart = 'BEGIN TRANSACTION'
    SQLTransactionEnd = 'COMMIT'
    CursorOnQueries = cqHourGlass
    ConnectAction = caNone
    AutoLoginDlg = ltLoginNoDlg
    Password = 'risdba'
    UserName = 'risdba'
    SQLErrorHandling = [seAsExceptions, seNoExceptionOnDisconnect]
    UpdateSQLSyntax = usOracle
    SQLOptions = [ssUseISInNuLLcompares, ssNoTableNameInUpdateStatements]
    OnCodedParamList = AstaMultiSiteCodedParamList
    DateMaskForSQL = 'DD-MMM-YYYY'
    DateTimeMaskForSQL = 'DD-MMM-YYYY HH:NN:SS'
    SQLDialect = sqlOracle
    Left = 507
    Top = 99
  end
  object CodiceErrore: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'l.tipo_blocco,'
      'l.testo_errore,'
      'l.data_err,'
      'p.nominativo as Tecnico'
      'from log_errori l'
      'left join personale p on p.pkpersonale = l.user_id'
      'where l.triage_fk=:triage_fk'
      'and l.stato_err=0'
      ' ')
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
    Left = 672
    Top = 96
    FastFields = (
      'TIPO_BLOCCO,3,0'
      'TESTO_ERRORE,1,255'
      'DATA_ERR,11,0'
      'TECNICO,1,61')
    FMultiTable = ()
    UpdateMethod = umManual
    object CodiceErroreTIPO_BLOCCO: TIntegerField
      FieldName = 'TIPO_BLOCCO'
    end
    object CodiceErroreTESTO_ERRORE: TStringField
      FieldName = 'TESTO_ERRORE'
      Size = 255
    end
    object CodiceErroreDATA_ERR: TDateTimeField
      FieldName = 'DATA_ERR'
    end
    object CodiceErroreTECNICO: TStringField
      FieldName = 'TECNICO'
      Size = 61
    end
  end
  object PutLock: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQLOptions = [soExecStoredProc]
    Params = <
      item
        Name = 'RESULT'
        ParamType = ptOutput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'P_LOCKUSERNAME'
        ParamType = ptOutput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'P_PKT'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'P_USER'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'P_TABLENAME'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'P_WORKSTATION'
        ParamType = ptInputOutput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'P_WORKDESCR'
        ParamType = ptOutput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'P_STATO'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end>
    StoredProcedure = 'RIS.LOCKRECORD'
    QBEMode = False
    Left = 248
    Top = 116
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object ReleaseLock: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQLOptions = [soExecStoredProc]
    Params = <
      item
        Name = 'P_TABLENAME'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 50
        Value = Null
      end
      item
        Name = 'P_PKT'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'P_USER'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end>
    StoredProcedure = 'RIS.RELEASESINGLELOCK'
    QBEMode = False
    Left = 260
    Top = 168
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object ReleaseAllLock: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQLOptions = [soExecStoredProc]
    Params = <
      item
        Name = 'P_USER'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end>
    StoredProcedure = 'RIS.RELEASEALLLOCK'
    QBEMode = False
    Left = 260
    Top = 220
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object qPacs: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = qPacsBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      't.ris_study_euid,'
      't.pacs,'
      't.nome_pacs,'
      't.url_immagini,'
      't.reparti_fk,'
      't.pid,'
      't.pacs_fk,'
      't.pacs_triage_fk,'
      't.pacs_qr'
      'from Table( ris.Tb_Pacs(:pktriage,:pkworkstation) ) t')
    Params = <
      item
        Name = 'pktriage'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'pkworkstation'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 220
    Top = 400
    FastFields = (
      'RIS_STUDY_EUID,1,100'
      'PACS,1,50'
      'NOME_PACS,1,50'
      'URL_IMMAGINI,1,200'
      'REPARTI_FK,3,0'
      'PID,1,32'
      'PACS_FK,3,0'
      'PACS_TRIAGE_FK,3,0'
      'PACS_QR,1,200')
    FMultiTable = ()
    UpdateMethod = umManual
    object qPacsRIS_STUDY_EUID: TStringField
      FieldName = 'RIS_STUDY_EUID'
      Size = 100
    end
    object qPacsPACS: TStringField
      FieldName = 'PACS'
      Size = 50
    end
    object qPacsURL_IMMAGINI: TStringField
      FieldName = 'URL_IMMAGINI'
      Size = 200
    end
    object qPacsPID: TStringField
      FieldName = 'PID'
      Size = 32
    end
    object qPacsNOME_PACS: TStringField
      FieldName = 'NOME_PACS'
      Size = 50
    end
    object qPacsPACS_QR: TStringField
      FieldName = 'PACS_QR'
      Size = 200
    end
    object qPacsREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object qPacsPACS_FK: TIntegerField
      FieldName = 'PACS_FK'
    end
    object qPacsPACS_TRIAGE_FK: TIntegerField
      FieldName = 'PACS_TRIAGE_FK'
    end
  end
  object PrestTar: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      '   t.PSP_IDENT,'
      '   t.tar_ticket'
      'from tariffe_prestazioni t'
      'where t.psp_ident = :ident_fk and'
      '      t.leg_codice = :leg_codice')
    Params = <
      item
        Name = 'ident_fk'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'leg_codice'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 292
    Top = 384
    FastFields = (
      'PSP_IDENT,1,12'
      'TAR_TICKET,6,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object PrestTarTAR_TICKET: TFloatField
      FieldName = 'TAR_TICKET'
    end
    object PrestTarPSP_IDENT: TStringField
      FieldName = 'PSP_IDENT'
      Size = 12
    end
  end
  object AltriEsamixSito: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    FilterOptions = [foCaseInsensitive]
    Constraints = <>
    BeforeQuery = AltriEsamixSitoBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'c.codice,'
      'c.descrizione,'
      'c.ident_fk,'
      'decode(m.durata,0,r.durata,m.durata) as durata,'
      'r.gresami_fk,'
      'gr.gresami,'
      'c.pkcodicirad,'
      'c.dose,'
      'c.composto,'
      'c.cespecific,'
      'p.extra_tariffario,'
      'p.calcolo_85,'
      'CAST(m.servizi_fk as varchar2(9)) as servizi_fk'
      'from codxrad r'
      'join codicirad c on c.pkcodicirad = r.codicirad_fk'
      'join esamixdiagn m on m.codicirad_fk=c.pkcodicirad'
      'left join gresami gr on gr.pkgresami = r.gresami_fk'
      
        'join (select distinct rs.rep_owner from repserv rs where rs.repa' +
        'rti_fk=:pkreparti and rs.rep_owner<>:pkreparti) A on A.rep_owner' +
        '=r.reparti_fk'
      'left join prestazioni_specialistiche p on p.ident=c.ident_fk'
      'where'
      '(c.data_fine is null or c.data_fine>SYSDATE)'
      'and not exists(select 1 from codxrad m1,codicirad c1'
      '                where m1.reparti_fk = :pkreparti'
      '                and c1.pkcodicirad = m1.codicirad_fk'
      '                and c1.codice=c.codice)'
      ' '
      ' '
      ' '
      ' '
      ' ')
    Params = <
      item
        Name = 'pkreparti'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      03000000060000000F000000504B5052455354535045434D554C540100000000
      100000005052455354535045434D554C545F464B010000000006000000434F44
      4943450100000000080000004944454E545F464B01000000000B000000444553
      4352495A494F4E450100000000060000004455524154410100000000}
    Left = 334
    Top = 457
    FastFields = (
      'CODICE,1,12'
      'DESCRIZIONE,1,100'
      'IDENT_FK,1,12'
      'DURATA,3,0'
      'GRESAMI_FK,3,0'
      'GRESAMI,1,10'
      'PKCODICIRAD,3,0'
      'DOSE,6,0'
      'COMPOSTO,3,0'
      'CESPECIFIC,3,0'
      'EXTRA_TARIFFARIO,3,0'
      'CALCOLO_85,3,0'
      'SERVIZI_FK,1,9')
    FMultiTable = ()
    UpdateMethod = umManual
    object AltriEsamixSitoCODICE: TStringField
      FieldName = 'CODICE'
      Size = 12
    end
    object AltriEsamixSitoDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object AltriEsamixSitoIDENT_FK: TStringField
      FieldName = 'IDENT_FK'
      Size = 12
    end
    object AltriEsamixSitoGRESAMI_FK: TIntegerField
      FieldName = 'GRESAMI_FK'
    end
    object AltriEsamixSitoGRESAMI: TStringField
      FieldName = 'GRESAMI'
      Size = 10
    end
    object AltriEsamixSitoPKCODICIRAD: TIntegerField
      FieldName = 'PKCODICIRAD'
    end
    object AltriEsamixSitoDOSE: TFloatField
      FieldName = 'DOSE'
    end
    object AltriEsamixSitoCOMPOSTO: TIntegerField
      FieldName = 'COMPOSTO'
    end
    object AltriEsamixSitoEXTRA_TARIFFARIO: TIntegerField
      FieldName = 'EXTRA_TARIFFARIO'
    end
    object AltriEsamixSitoSERVIZI_FK: TStringField
      FieldName = 'SERVIZI_FK'
      Size = 9
    end
    object AltriEsamixSitoCALCOLO_85: TIntegerField
      FieldName = 'CALCOLO_85'
    end
    object AltriEsamixSitoDURATA: TIntegerField
      FieldName = 'DURATA'
    end
    object AltriEsamixSitoCESPECIFIC: TIntegerField
      FieldName = 'CESPECIFIC'
    end
  end
  object NuovoTriage: TAstaClientDataSet
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
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      't.impegnative_fk,'
      't.reparti_fk,'
      't.diagnostica_fk,'
      't.ora_inizio,'
      't.ora_fine,'
      't.agende_fk,'
      't.user_id,'
      't.statovisita,'
      'p.pkprestazioni,'
      'p.progressivo_riga,'
      'p.codicirad_fk,'
      'p.triage_fk,'
      'p.durata,'
      'p.dose,'
      'p.importo,'
      'p.pagato,'
      'p.numero_prestazione,'
      'p.esente,'
      'p.stato'
      'from prestazioni p, triage t'
      'where t.pktriage = :pktriage and'
      '      p.pkprestazioni = :pkprestazioni')
    Params = <
      item
        Name = 'pktriage'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'pkprestazioni'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    UpdateObject = updNuovoTriage
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      030000000B0000001000000050524F475245535349564F5F5249474101000000
      000C0000005052455354535045435F464B0100000000120000004E554D45524F
      5F5052455354415A494F4E4501000000000D000000504B5052455354415A494F
      4E4901000000000A0000005449504F5F505245535401000000000E0000004449
      41474E4F53544943415F464B01000000000B000000444941474E4F5354494341
      01000000000B0000004445534352495A494F4E45010000000005000000535441
      544F0100000000090000005452494147455F464B010000000010000000505245
      5354535045434D554C545F464B0100000000}
    Left = 128
    Top = 448
    FastFields = (
      'IMPEGNATIVE_FK,3,0'
      'REPARTI_FK,3,0'
      'DIAGNOSTICA_FK,3,0'
      'ORA_INIZIO,11,0'
      'ORA_FINE,11,0'
      'AGENDE_FK,3,0'
      'USER_ID,3,0'
      'STATOVISITA,3,0'
      'PKPRESTAZIONI,6,0'
      'PROGRESSIVO_RIGA,3,0'
      'CODICIRAD_FK,3,0'
      'TRIAGE_FK,3,0'
      'DURATA,3,0'
      'DOSE,6,0'
      'IMPORTO,6,0'
      'PAGATO,6,0'
      'NUMERO_PRESTAZIONE,3,0'
      'ESENTE,3,0'
      'STATO,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object NuovoTriagePKPRESTAZIONI: TFloatField
      DisplayWidth = 10
      FieldName = 'PKPRESTAZIONI'
    end
    object NuovoTriagePROGRESSIVO_RIGA: TIntegerField
      DisplayWidth = 10
      FieldName = 'PROGRESSIVO_RIGA'
    end
    object NuovoTriageDIAGNOSTICA_FK: TIntegerField
      DisplayWidth = 10
      FieldName = 'DIAGNOSTICA_FK'
    end
    object NuovoTriageTRIAGE_FK: TIntegerField
      DisplayWidth = 10
      FieldName = 'TRIAGE_FK'
    end
    object NuovoTriageDURATA: TIntegerField
      DisplayLabel = 'Durata'
      FieldName = 'DURATA'
    end
    object NuovoTriageCODICIRAD_FK: TIntegerField
      FieldName = 'CODICIRAD_FK'
    end
    object NuovoTriageDOSE: TFloatField
      FieldName = 'DOSE'
    end
    object NuovoTriageIMPEGNATIVE_FK: TIntegerField
      FieldName = 'IMPEGNATIVE_FK'
    end
    object NuovoTriageREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object NuovoTriageUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object NuovoTriageORA_INIZIO: TDateTimeField
      DisplayLabel = 'Orario'
      FieldName = 'ORA_INIZIO'
      DisplayFormat = 'hh:nn'
    end
    object NuovoTriageIMPORTO: TFloatField
      DisplayLabel = 'Tariffa'
      FieldName = 'IMPORTO'
      DisplayFormat = ',0.00'
    end
    object NuovoTriageSTATOVISITA: TIntegerField
      FieldName = 'STATOVISITA'
    end
    object NuovoTriageAGENDE_FK: TIntegerField
      FieldName = 'AGENDE_FK'
    end
    object NuovoTriagePAGATO: TFloatField
      DisplayLabel = 'Importo'
      FieldName = 'PAGATO'
      DisplayFormat = ',#.00'
    end
    object NuovoTriageESENTE: TIntegerField
      DisplayLabel = 'Es.'
      FieldName = 'ESENTE'
    end
    object NuovoTriageNUMERO_PRESTAZIONE: TIntegerField
      DisplayLabel = 'Q.'
      FieldName = 'NUMERO_PRESTAZIONE'
    end
    object NuovoTriageSTATO: TIntegerField
      FieldName = 'STATO'
    end
    object NuovoTriageORA_FINE: TDateTimeField
      FieldName = 'ORA_FINE'
    end
  end
  object updNuovoTriage: TAstaUpdateSQL
    ModifySQL.Strings = (
      'declare'
      ' quanti integer;'
      ' newpkt number(9);'
      'begin'
      ''
      ' select count(*) into quanti'
      ' from prestazioni'
      ' where triage_fk = :TRIAGE_FK;'
      ''
      ' if quanti=1 then'
      ''
      '    update triage set'
      '    diagnostica_fk = :DIAGNOSTICA_FK,'
      '    agende_fk = :AGENDE_FK,'
      '    ora_inizio = :ORA_INIZIO,'
      '    reparti_fk = :REPARTI_FK,'
      '    user_id = :USER_ID'
      '    where pktriage = :TRIAGE_FK;'
      ''
      '    update IMPEGNATIVE'
      '    set REPARTI_FK = :REPARTI_FK'
      '    where PKIMPEGNATIVE = :IMPEGNATIVE_FK;'
      ''
      ' else'
      ''
      
        '   Insert Into TRIAGE (AGENDE_FK,DURATA,USER_ID,ORA_INIZIO,STATO' +
        'VISITA,'
      '                       REPARTI_FK,DIAGNOSTICA_FK,IMPEGNATIVE_FK)'
      
        '   Values ( :AGENDE_FK,:DURATA, :USER_ID, :ORA_INIZIO, :STATOVIS' +
        'ITA,'
      '            :REPARTI_FK, :DIAGNOSTICA_FK, :IMPEGNATIVE_FK)'
      '   returning PKTRIAGE into newpkt;'
      ''
      '   update prestazioni'
      '   set triage_fk = newpkt'
      '   where pkprestazioni = :PKPRESTAZIONI;'
      ''
      '   update triage t'
      
        '   set t.durata = ris.DurataTriage(t.pktriage,t.diagnostica_fk,t' +
        '.statovisita)'
      '   where t.pktriage = :TRIAGE_FK;'
      ''
      ' end if;'
      ''
      'end;'
      ' ')
    Left = 188
    Top = 456
  end
  object SpostaEsame: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'declare'
      '  quanti integer;'
      'begin'
      ''
      '  update prestazioni'
      '  set triage_fk = :triage_new'
      '  where pkprestazioni = :pkprestazioni;'
      ''
      '  update triage t'
      
        '  set t.durata = ris.DurataTriage(t.pktriage,t.diagnostica_fk,t.' +
        'statovisita)'
      '  where t.pktriage = :triage_new;'
      ''
      '  select count(*) into quanti'
      '  from prestazioni'
      '  where triage_fk = :triage_old;'
      ''
      '  if quanti=0 then'
      '     update triage'
      '     set statovisita = 0, user_id = :user_id'
      '     where pktriage = :triage_old;'
      '  else'
      '     update triage t'
      
        '     set t.durata = ris.DurataTriage(t.pktriage,t.diagnostica_fk' +
        ',t.statovisita)'
      '     where t.pktriage = :triage_old;'
      '  end if;'
      ''
      ''
      'end;')
    Params = <
      item
        Name = 'triage_new'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'pkprestazioni'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'triage_old'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'user_id'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 264
    Top = 452
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object EsamixAltri: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    FilterOptions = [foCaseInsensitive]
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'c.codice,'
      'c.descrizione,'
      'c.ident_fk,'
      'decode(m.durata,0,r.durata,m.durata) as durata,'
      'r.gresami_fk,'
      'gr.gresami,'
      'c.pkcodicirad,'
      'c.dose,'
      'c.composto,'
      'c.cespecific,'
      'p.extra_tariffario,'
      'p.calcolo_85,'
      'CAST(m.servizi_fk as varchar2(9)) as servizi_fk'
      'from codxrad r'
      'join codicirad c on c.pkcodicirad = r.codicirad_fk'
      'left join gresami gr on gr.pkgresami = r.gresami_fk'
      'left join prestazioni_specialistiche p on p.ident=c.ident_fk'
      'join esamixdiagn m on m.codicirad_fk=c.pkcodicirad'
      'where'
      'r.reparti_fk=:reparti_fk'
      'and (c.data_fine is null or c.data_fine>SYSDATE)'
      ' '
      ' '
      ' '
      ' ')
    Params = <
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      03000000060000000F000000504B5052455354535045434D554C540100000000
      100000005052455354535045434D554C545F464B010000000006000000434F44
      4943450100000000080000004944454E545F464B01000000000B000000444553
      4352495A494F4E450100000000060000004455524154410100000000}
    Left = 542
    Top = 433
    FastFields = (
      'CODICE,1,12'
      'DESCRIZIONE,1,100'
      'IDENT_FK,1,12'
      'DURATA,3,0'
      'GRESAMI_FK,3,0'
      'GRESAMI,1,10'
      'PKCODICIRAD,3,0'
      'DOSE,6,0'
      'COMPOSTO,3,0'
      'CESPECIFIC,3,0'
      'EXTRA_TARIFFARIO,3,0'
      'CALCOLO_85,3,0'
      'SERVIZI_FK,1,9')
    FMultiTable = ()
    UpdateMethod = umManual
    object EsamixAltriCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object EsamixAltriIDENT_FK: TStringField
      DisplayLabel = 'Tariffario'
      FieldName = 'IDENT_FK'
      Size = 12
    end
    object EsamixAltriDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
    object EsamixAltriPKCODICIRAD: TIntegerField
      FieldName = 'PKCODICIRAD'
    end
    object EsamixAltriDOSE: TFloatField
      FieldName = 'DOSE'
    end
    object EsamixAltriCOMPOSTO: TIntegerField
      DisplayLabel = 'Composto'
      FieldName = 'COMPOSTO'
    end
    object EsamixAltriGRESAMI_FK: TIntegerField
      FieldName = 'GRESAMI_FK'
    end
    object EsamixAltriGRESAMI: TStringField
      DisplayLabel = 'Metodica'
      FieldName = 'GRESAMI'
      Size = 10
    end
    object EsamixAltriEXTRA_TARIFFARIO: TIntegerField
      FieldName = 'EXTRA_TARIFFARIO'
    end
    object EsamixAltriSERVIZI_FK: TStringField
      FieldName = 'SERVIZI_FK'
      Size = 9
    end
    object EsamixAltriCALCOLO_85: TIntegerField
      FieldName = 'CALCOLO_85'
    end
    object EsamixAltriDURATA: TIntegerField
      FieldName = 'DURATA'
    end
    object EsamixAltriCESPECIFIC: TIntegerField
      FieldName = 'CESPECIFIC'
    end
  end
  object acPingTimer: TacAwayTimer
    OnSleep = acPingTimerSleep
    Left = 644
    Top = 280
  end
  object sTipoAttivita: TDataSource
    DataSet = TipoAttivita
    Left = 388
    Top = 440
  end
  object TipoUrgenza: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_TipoUrgenza'
        Fields = 'POSIZIONE'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_TipoUrgenza'
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = TipoUrgenzaBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      't.pkurgenza,'
      't.descrizione,'
      't.icona,'
      'c.posizione'
      'from colorixrep c'
      
        'join wtbd_tipourgenza t on t.pkurgenza = c.urgenza_fk and t.ling' +
        'ua=:lingua'
      'where c.reparti_fk = :reparti_fk'
      ' ')
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
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 672
    Top = 444
    FastFields = (
      'PKURGENZA,3,0'
      'DESCRIZIONE,1,200'
      'ICONA,3,0'
      'POSIZIONE,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object TipoUrgenzaPKURGENZA: TIntegerField
      FieldName = 'PKURGENZA'
    end
    object TipoUrgenzaDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 30
    end
    object TipoUrgenzaPOSIZIONE: TIntegerField
      FieldName = 'POSIZIONE'
    end
    object TipoUrgenzaICONA: TIntegerField
      FieldName = 'ICONA'
    end
  end
  object TipoTrasporto: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = TipoTrasportoBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'pktrasporto,'
      'descrizione,'
      'icona'
      'from wtbd_tipotrasporto'
      'where lingua=:lingua ')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 736
    Top = 428
    FastFields = (
      'PKTRASPORTO,3,0'
      'DESCRIZIONE,1,200'
      'ICONA,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object TipoTrasportoPKTRASPORTO: TIntegerField
      FieldName = 'PKTRASPORTO'
    end
    object TipoTrasportoDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 30
    end
    object TipoTrasportoICONA: TIntegerField
      FieldName = 'ICONA'
    end
  end
  object Medici: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_Medici'
        Fields = 'NOMINATIVO'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_Medici'
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = MediciBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'SELECT'
      ' U.COGNOME,'
      ' U.NOME,'
      ' u.nominativo,'
      ' U.PKPERSONALE,'
      'pr.servizi_fk'
      'FROM Personale U, persxrep pr'
      'WHERE pr.reparti_fk = :reparti_fk'
      'and u.pkpersonale = pr.personale_fk'
      'and u.funz_interni=1 -- in (1,3,4)'
      'and (u.data_fine is null or u.data_fine>SYSDATE)'
      ':escludi')
    Params = <
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftUnknown
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'escludi'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = '#'
      end>
    QBEMode = False
    Left = 648
    Top = 347
    FastFields = (
      'COGNOME,1,30'
      'NOME,1,30'
      'NOMINATIVO,1,70'
      'PKPERSONALE,3,0'
      'SERVIZI_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object MediciCOGNOME: TStringField
      DisplayLabel = 'Cognome'
      FieldName = 'COGNOME'
      Size = 30
    end
    object MediciNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 30
    end
    object MediciPKPERSONALE: TIntegerField
      FieldName = 'PKPERSONALE'
    end
    object MediciNOMINATIVO: TStringField
      FieldName = 'NOMINATIVO'
      Size = 70
    end
    object MediciSERVIZI_FK: TIntegerField
      FieldName = 'SERVIZI_FK'
    end
  end
  object DiagnxRep: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'idx_diagnxrep'
        Fields = 'REPARTI_FK'
        Options = []
        Selected = True
      end>
    IndexName = 'idx_diagnxrep'
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = DiagnxRepBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'rs.reparti_fk,'
      'rs.servizi_fk,'
      'rs.servrad_fk,'
      's.descrizione,'
      's.slot_standard,'
      's.tipo_diagn,'
      'rs.provenienza,'
      'decode(r.pkreparti,:pkreparti,'#39#39',r.descrizione) as DESC_REPARTO'
      'from repserv rs'
      'join diagxwk d on d.servizi_fk = rs.servizi_fk'
      'join servizi s on s.pkservizi = rs.servizi_fk'
      'join reparti r on r.pkreparti = s.reparti_fk'
      'where rs.rep_owner = :pkreparti'
      'and rs.reparti_fk<>:pkreparti'
      'and d.workstation_fk=:workstation_fk'
      'and d.attiva=1'
      ' ')
    Params = <
      item
        Name = 'pkreparti'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'workstation_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 496
    Top = 476
    FastFields = (
      'REPARTI_FK,3,0'
      'SERVIZI_FK,3,0'
      'SERVRAD_FK,3,0'
      'DESCRIZIONE,1,100'
      'SLOT_STANDARD,3,0'
      'TIPO_DIAGN,3,0'
      'PROVENIENZA,1,1'
      'DESC_REPARTO,1,60')
    FMultiTable = ()
    UpdateMethod = umManual
    object DiagnxRepREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object DiagnxRepSERVIZI_FK: TIntegerField
      FieldName = 'SERVIZI_FK'
    end
    object DiagnxRepDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object DiagnxRepSLOT_STANDARD: TIntegerField
      FieldName = 'SLOT_STANDARD'
    end
    object DiagnxRepDESC_REPARTO: TStringField
      FieldName = 'DESC_REPARTO'
      Size = 60
    end
    object DiagnxRepSERVRAD_FK: TIntegerField
      FieldName = 'SERVRAD_FK'
    end
    object DiagnxRepTIPO_DIAGN: TIntegerField
      FieldName = 'TIPO_DIAGN'
    end
    object DiagnxRepPROVENIENZA: TStringField
      FieldName = 'PROVENIENZA'
      Size = 1
    end
  end
  object LeggixLogin: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.Field = 'PKWORKSTATION'
    SequenceField.Sequence = 'WORKSTATION_PKWORKSTATION'
    SequenceField.ApplyMoment = amOnPost
    NoSQLFields.Strings = (
      'gblospedale')
    EditMode = 'Read Only'
    UpdateTableName = 'WORKSTATION'
    PrimeFields.Strings = (
      'PKWORKSTATION')
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'w.pkworkstation,'
      'w.computername,'
      'w.Tipo_Login,'
      'w.tipows'
      'from workstation w'
      'where w.computername = :computername'
      'and w.tipows in (1,3,4)')
    Params = <
      item
        Name = 'computername'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      030000001D0000000800000047424C504B52455001000000000900000047424C
      504B5345525601000000000B00000047424C4F53504544414C45010000000007
      00000047424C504B505301000000000D000000504B574F524B53544154494F4E
      01000000000C000000434F4D50555445524E414D4501000000000B0000004742
      4C504B53455256505301000000001000000047424C55534C5F524547434F4449
      434501000000000D00000047424C55534C5F434F444943450100000000080000
      005052494E544552310100000000080000005052494E54455232010000000009
      000000434F4D5F504F525441010000000009000000434F4D5F53504545440100
      0000000A000000434F4D5F50415249545901000000000B000000434F4D5F4441
      544142495401000000000B000000434F4D5F53544F5042495401000000000A00
      0000434F4D5F48574354524C01000000000A000000434F4D5F53574354524C01
      000000000700000053594E41505345010000000009000000524546564F43414C
      450100000000080000004F53504544414C450100000000090000004F5350434F
      4D554E4501000000000B000000444553435245504152544F01000000000C0000
      004445534353455256495A494F01000000000900000044455343524550505301
      000000000A0000004445534353455256505301000000000A0000004F52455F52
      494150524901000000000D000000434845434B5F4E4153434954410100000000
      0F000000434845434B5F5245534944454E5A410100000000}
    Left = 212
    Top = 264
    FastFields = (
      'PKWORKSTATION,3,0'
      'COMPUTERNAME,1,30'
      'TIPO_LOGIN,3,0'
      'TIPOWS,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object LeggixLoginPKWORKSTATION: TIntegerField
      FieldName = 'PKWORKSTATION'
    end
    object LeggixLoginTIPO_LOGIN: TIntegerField
      FieldName = 'TIPO_LOGIN'
    end
    object LeggixLoginCOMPUTERNAME: TStringField
      FieldName = 'COMPUTERNAME'
      Size = 30
    end
    object LeggixLoginTIPOWS: TIntegerField
      FieldName = 'TIPOWS'
    end
  end
  object ServiziRadiologia: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = ServiziRadiologiaBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      's.pkservizi,'
      's.descrizione'
      'from servizi s'
      'where s.reparti_fk = :reparti_fk'
      'and tipo_servizio='#39'I'#39)
    Params = <
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 364
    Top = 168
    FastFields = (
      'PKSERVIZI,3,0'
      'DESCRIZIONE,1,100')
    FMultiTable = ()
    UpdateMethod = umManual
    object ServiziRadiologiaPKSERVIZI: TIntegerField
      FieldName = 'PKSERVIZI'
    end
    object ServiziRadiologiaDESCRIZIONE: TStringField
      DisplayLabel = 'Servizio Radiologia'
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
  end
  object qAllocaModalita: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'TRIAGE'
    PrimeFields.Strings = (
      'PKTRIAGE')
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      't.pktriage,'
      't.diagnostica_fk,'
      't.aetitle,'
      's.descrizione as NomeDiagnostica,'
      's.alloca_modalita'
      'from triage t'
      'join servizi s on s.pkservizi = t.diagnostica_fk'
      'where t.impegnative_fk = :pkimpegnative and'
      '      t.statovisita in (20,40,110,120)'
      ' ')
    Params = <
      item
        Name = 'pkimpegnative'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 604
    Top = 504
    FastFields = (
      'PKTRIAGE,3,0'
      'DIAGNOSTICA_FK,3,0'
      'AETITLE,1,50'
      'NOMEDIAGNOSTICA,1,100'
      'ALLOCA_MODALITA,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qAllocaModalitaDIAGNOSTICA_FK: TIntegerField
      FieldName = 'DIAGNOSTICA_FK'
    end
    object qAllocaModalitaNOMEDIAGNOSTICA: TStringField
      FieldName = 'NOMEDIAGNOSTICA'
      Size = 100
    end
    object qAllocaModalitaALLOCA_MODALITA: TIntegerField
      FieldName = 'ALLOCA_MODALITA'
    end
    object qAllocaModalitaPKTRIAGE: TIntegerField
      FieldName = 'PKTRIAGE'
    end
    object qAllocaModalitaAETITLE: TStringField
      FieldName = 'AETITLE'
      Size = 50
    end
  end
  object Radiofarmaci: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = RadiofarmaciBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'articolo,'
      'pkmagart,'
      'descrizione'
      'from magart'
      'where reparti_fk = :reparti_fk'
      'and tipo=1'
      'and (data_inizio is null or data_inizio<=sysdate)'
      'and (data_fine is null or data_fine>sysdate)')
    Params = <
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 440
    Top = 442
    FastFields = (
      'ARTICOLO,1,30'
      'PKMAGART,3,0'
      'DESCRIZIONE,1,50')
    FMultiTable = ()
    UpdateMethod = umManual
    object RadiofarmaciARTICOLO: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'ARTICOLO'
      Size = 30
    end
    object RadiofarmaciPKMAGART: TIntegerField
      FieldName = 'PKMAGART'
    end
    object RadiofarmaciDESCRIZIONE: TStringField
      DisplayLabel = 'Radiofarmaco'
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
  end
  object sRadiofarmaci: TDataSource
    DataSet = Radiofarmaci
    Left = 420
    Top = 494
  end
  object LkTipoAccesso: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'tipo_accesso, '
      'descrizione,'
      'urgenza_fk'
      'from tipo_accesso'
      'where (data_inizio is null or data_inizio<=sysdate) and'
      '           (data_fine is null or data_fine>sysdate)')
    Params = <>
    QBEMode = False
    Left = 460
    Top = 164
    FastFields = (
      'TIPO_ACCESSO,1,12'
      'DESCRIZIONE,1,100'
      'URGENZA_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object LkTipoAccessoTIPO_ACCESSO: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'TIPO_ACCESSO'
      Size = 2
    end
    object LkTipoAccessoDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object LkTipoAccessoURGENZA_FK: TIntegerField
      FieldName = 'URGENZA_FK'
    end
  end
  object acr_anatomical: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'key, '
      'parent, '
      '(key||'#39' - '#39'||description) as description, '
      'aid'
      'from acr_anatomical'
      'order by key')
    Params = <>
    QBEMode = False
    Left = 716
    Top = 508
    FastFields = (
      'KEY,1,10'
      'PARENT,1,10'
      'DESCRIPTION,1,200'
      'AID,1,2')
    FMultiTable = ()
    UpdateMethod = umManual
    object acr_anatomicalKEY: TStringField
      FieldName = 'KEY'
      Size = 10
    end
    object acr_anatomicalPARENT: TStringField
      FieldName = 'PARENT'
      Size = 10
    end
    object acr_anatomicalDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object acr_anatomicalAID: TStringField
      FieldName = 'AID'
      Size = 2
    end
  end
  object acr_patological: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'key, '
      'parent, '
      '(key||'#39' - '#39'||description) as description, '
      'aid'
      'from acr_patological'
      'order by key')
    Params = <>
    QBEMode = False
    Left = 716
    Top = 560
    FastFields = (
      'KEY,1,10'
      'PARENT,1,10'
      'DESCRIPTION,1,200'
      'AID,1,2')
    FMultiTable = ()
    UpdateMethod = umManual
    object acr_patologicalKEY: TStringField
      FieldName = 'KEY'
      Size = 10
    end
    object acr_patologicalPARENT: TStringField
      FieldName = 'PARENT'
      Size = 10
    end
    object acr_patologicalDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object acr_patologicalAID: TStringField
      FieldName = 'AID'
      Size = 2
    end
  end
  object MultiSite: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_MultiSite'
        Fields = 'SITE_NAME'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_MultiSite'
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'site_name, '
      'site_address, '
      'site_port,'
      'site_address2, '
      'site_port2'
      'from multisite')
    Params = <>
    QBEMode = False
    Left = 100
    Top = 516
    FastFields = (
      'SITE_NAME,1,30'
      'SITE_ADDRESS,1,30'
      'SITE_PORT,3,0'
      'SITE_ADDRESS2,1,30'
      'SITE_PORT2,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object MultiSiteSITE_NAME: TStringField
      FieldName = 'SITE_NAME'
      Size = 30
    end
    object MultiSiteSITE_ADDRESS: TStringField
      FieldName = 'SITE_ADDRESS'
      Size = 30
    end
    object MultiSiteSITE_PORT: TIntegerField
      FieldName = 'SITE_PORT'
    end
    object MultiSiteSITE_ADDRESS2: TStringField
      FieldName = 'SITE_ADDRESS2'
      Size = 30
    end
    object MultiSiteSITE_PORT2: TIntegerField
      FieldName = 'SITE_PORT2'
    end
  end
  object SettaDateTime: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select sysdate from dual')
    Params = <>
    QBEMode = False
    Left = 732
    Top = 160
    FastFields = (
      'SYSDATE,11,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object SettaDateTimeSYSDATE: TDateTimeField
      FieldName = 'SYSDATE'
    end
  end
  object cdMaster: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = cdMasterBeforeQuery
    SequenceField.Field = 'PKCDMASTER'
    SequenceField.Sequence = 'CDMASTER_PKCDMASTER'
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'CDMASTER'
    PrimeFields.Strings = (
      'PKCDMASTER')
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'cd.pkcdmaster,'
      'cd.aetitle,'
      'cd.indirizzo,'
      'cd.porta,'
      'cd.reparti_fk,'
      'cd.descrizione,'
      'cr.tipo_crea_cd,'
      'cr.cd_server_name,'
      'cr.cd_server_porta'
      'from cdmaster cd, crea_cd cr'
      'where reparti_fk = :reparti_fk'
      'and cr.pkcrea_cd = cd.crea_cd_fk')
    Params = <
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 500
    Top = 534
    FastFields = (
      'PKCDMASTER,3,0'
      'AETITLE,1,50'
      'INDIRIZZO,1,100'
      'PORTA,3,0'
      'REPARTI_FK,3,0'
      'DESCRIZIONE,1,100'
      'TIPO_CREA_CD,3,0'
      'CD_SERVER_NAME,1,50'
      'CD_SERVER_PORTA,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object cdMasterPKCDMASTER: TIntegerField
      FieldName = 'PKCDMASTER'
    end
    object cdMasterAETITLE: TStringField
      DisplayLabel = 'AETitle'
      FieldName = 'AETITLE'
      Size = 50
    end
    object cdMasterINDIRIZZO: TStringField
      DisplayLabel = 'Indirizzo'
      FieldName = 'INDIRIZZO'
      Size = 100
    end
    object cdMasterPORTA: TIntegerField
      DisplayLabel = 'Porta'
      FieldName = 'PORTA'
    end
    object cdMasterREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object cdMasterDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object cdMasterTIPO_CREA_CD: TIntegerField
      FieldName = 'TIPO_CREA_CD'
    end
    object cdMasterCD_SERVER_NAME: TStringField
      FieldName = 'CD_SERVER_NAME'
      Size = 50
    end
    object cdMasterCD_SERVER_PORTA: TIntegerField
      FieldName = 'CD_SERVER_PORTA'
    end
  end
  object AstaTestata: TAstaDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    Left = 112
    Top = 132
    FastFields = (
      'PKTRIAGE,3,0'
      'ORA_INIZIO,11,0'
      'STATOVISITA,3,0'
      'DURATA,3,0'
      'ORA_FINE,11,0'
      'RIC_ANTICIPO,1,1'
      'ASSISTIBILI_FK,3,0'
      'USER_ID,3,0'
      'REPARTI_FK,3,0'
      'DIAGNOSTICA_FK,3,0'
      'NOME_PAZIENTE,1,110'
      'TIPO_ATTIVITA_FK,1,2'
      'DATA_NASCITA,11,0'
      'TELEFONO,1,30'
      'PROVENIENZA,1,1'
      'IMPEGNATIVE_FK,3,0'
      'AGENDE_FK,3,0'
      'REPARTO_RICH_FK,3,0'
      'SERVIZIO_RICH_FK,3,0'
      'OSP_RICH,1,20'
      'SERVIZI_FK,3,0')
    object AstaTestataPKTRIAGE: TIntegerField
      DisplayLabel = 'Nr. Esame'
      FieldName = 'PKTRIAGE'
    end
    object AstaTestataORA_INIZIO: TDateTimeField
      DisplayLabel = 'Orario'
      FieldName = 'ORA_INIZIO'
      DisplayFormat = 'ddddd hh.nn'
    end
    object AstaTestataSTATOVISITA: TIntegerField
      FieldName = 'STATOVISITA'
    end
    object AstaTestataDURATA: TIntegerField
      FieldName = 'DURATA'
    end
    object AstaTestataORA_FINE: TDateTimeField
      FieldName = 'ORA_FINE'
    end
    object AstaTestataRIC_ANTICIPO: TStringField
      FieldName = 'RIC_ANTICIPO'
      Size = 1
    end
    object AstaTestataASSISTIBILI_FK: TIntegerField
      FieldName = 'ASSISTIBILI_FK'
    end
    object AstaTestataUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object AstaTestataREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object AstaTestataDIAGNOSTICA_FK: TIntegerField
      FieldName = 'DIAGNOSTICA_FK'
    end
    object AstaTestataNOME_PAZIENTE: TStringField
      DisplayLabel = 'Paziente'
      FieldName = 'NOME_PAZIENTE'
      Size = 110
    end
    object AstaTestataTIPO_ATTIVITA_FK: TStringField
      FieldName = 'TIPO_ATTIVITA_FK'
      Size = 2
    end
    object AstaTestataDATA_NASCITA: TDateTimeField
      DisplayLabel = 'Data nascita'
      FieldName = 'DATA_NASCITA'
    end
    object AstaTestataTELEFONO: TStringField
      DisplayLabel = 'Telefono'
      FieldName = 'TELEFONO'
      Size = 30
    end
    object AstaTestataPROVENIENZA: TStringField
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object AstaTestataIMPEGNATIVE_FK: TIntegerField
      DisplayLabel = 'Nr. Accettazione'
      FieldName = 'IMPEGNATIVE_FK'
    end
    object AstaTestataAGENDE_FK: TIntegerField
      FieldName = 'AGENDE_FK'
    end
    object AstaTestataOSP_RICH: TStringField
      FieldName = 'OSP_RICH'
    end
    object AstaTestataREPARTO_RICH_FK: TIntegerField
      FieldName = 'REPARTO_RICH_FK'
    end
    object AstaTestataSERVIZIO_RICH_FK: TIntegerField
      FieldName = 'SERVIZIO_RICH_FK'
    end
    object AstaTestataSERVIZI_FK: TIntegerField
      FieldName = 'SERVIZI_FK'
    end
  end
  object AstaDettagli: TAstaDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'AstaDettTRIAGE_FK'
        Fields = 'TRIAGE_FK'
        Options = []
        Selected = True
      end>
    IndexName = 'AstaDettTRIAGE_FK'
    Aggregates = <>
    Active = True
    Constraints = <>
    Left = 176
    Top = 136
    FastFields = (
      'PKPRESTAZIONI,6,0'
      'TRIAGE_FK,3,0'
      'PKCODICIRAD,3,0'
      'CODICE,1,12'
      'DESCRIZIONE,1,50'
      'DURATA,3,0'
      'NUMERO_PRESTAZIONE,3,0'
      'PROGRESSIVO_RIGA,3,0'
      'DESCBRANCA,1,60'
      'BRANCA,1,3')
    object AstaDettagliCODICE: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'CODICE'
      Size = 12
    end
    object AstaDettagliDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione esame'
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
    object AstaDettagliPKCODICIRAD: TIntegerField
      FieldName = 'PKCODICIRAD'
    end
    object AstaDettagliDURATA: TIntegerField
      DisplayLabel = 'Durata'
      FieldName = 'DURATA'
    end
    object AstaDettagliPKPRESTAZIONI: TFloatField
      FieldName = 'PKPRESTAZIONI'
    end
    object AstaDettagliTRIAGE_FK: TIntegerField
      FieldName = 'TRIAGE_FK'
    end
    object AstaDettagliNUMERO_PRESTAZIONE: TIntegerField
      DisplayLabel = 'Q.'
      FieldName = 'NUMERO_PRESTAZIONE'
    end
    object AstaDettagliPROGRESSIVO_RIGA: TIntegerField
      FieldName = 'PROGRESSIVO_RIGA'
    end
    object AstaDettagliDESCBRANCA: TStringField
      FieldName = 'DESCBRANCA'
      Size = 60
    end
    object AstaDettagliBRANCA: TStringField
      FieldName = 'BRANCA'
      Size = 3
    end
  end
  object LkTipoRicetta: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'tipo_ricetta,'
      'descrizione,'
      'tipo_com_res,'
      'flag_stp,'
      'tipo_attivita_fk'
      'from tipo_ricetta'
      'where (data_inizio is null or data_inizio<=sysdate)'
      'and (data_fine is null or data_fine>sysdate)')
    Params = <>
    QBEMode = False
    Left = 780
    Top = 240
    FastFields = (
      'TIPO_RICETTA,1,5'
      'DESCRIZIONE,1,100'
      'TIPO_COM_RES,1,10'
      'FLAG_STP,3,0'
      'TIPO_ATTIVITA_FK,1,2')
    FMultiTable = ()
    UpdateMethod = umManual
    object LkTipoRicettaTIPO_RICETTA: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'TIPO_RICETTA'
      Size = 5
    end
    object LkTipoRicettaDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object LkTipoRicettaTIPO_COM_RES: TStringField
      FieldName = 'TIPO_COM_RES'
      Size = 10
    end
    object LkTipoRicettaFLAG_STP: TIntegerField
      FieldName = 'FLAG_STP'
    end
    object LkTipoRicettaTIPO_ATTIVITA_FK: TStringField
      FieldName = 'TIPO_ATTIVITA_FK'
      Size = 2
    end
  end
  object DipxRep: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = DipxRepBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'rd.dipartimenti_fk'
      'from reparti_dipartimenti rd, dipartimenti d'
      'where rd.reparti_fk = :reparti_fk'
      'and d.pkdipartimenti = rd.dipartimenti_fk'
      'and d.reparti_fk = :radiologia'
      'and (d.data_fine is null or d.data_fine>sysdate)')
    Params = <
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'radiologia'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 284
    Top = 532
    FastFields = (
      'DIPARTIMENTI_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object DipxRepDIPARTIMENTI_FK: TIntegerField
      FieldName = 'DIPARTIMENTI_FK'
    end
  end
  object DipxServ: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = DipxServBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'sd.dipartimenti_fk'
      'from servizi_dipartimenti sd, dipartimenti d'
      'where sd.servizi_fk = :servizi_fk'
      'and d.pkdipartimenti = sd.dipartimenti_fk'
      'and d.reparti_fk = :radiologia'
      'and (d.data_fine is null or d.data_fine>sysdate)')
    Params = <
      item
        Name = 'servizi_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'radiologia'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 348
    Top = 532
    FastFields = (
      'DIPARTIMENTI_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object DipxServDIPARTIMENTI_FK: TIntegerField
      FieldName = 'DIPARTIMENTI_FK'
    end
  end
  object qTipoInvio: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = qTipoInvioBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'pkinvio, '
      'descrizione, '
      'attivo'
      'from wtipoinvio'
      'where attivo=1 and'
      'lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 196
    Top = 544
    FastFields = (
      'PKINVIO,1,2'
      'DESCRIZIONE,1,200'
      'ATTIVO,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qTipoInvioPKINVIO: TStringField
      FieldName = 'PKINVIO'
      Size = 2
    end
    object qTipoInvioDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object qTipoInvioATTIVO: TIntegerField
      FieldName = 'ATTIVO'
    end
  end
  object DllFirma: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'tipo_carta, '
      'descrizione, '
      'dll_name, '
      'private_key'
      'from smartcard'
      'where attivo=1')
    Params = <>
    QBEMode = False
    Left = 624
    Top = 584
    FastFields = (
      'TIPO_CARTA,3,0'
      'DESCRIZIONE,1,100'
      'DLL_NAME,1,50'
      'PRIVATE_KEY,1,50')
    FMultiTable = ()
    UpdateMethod = umManual
    object DllFirmaTIPO_CARTA: TIntegerField
      FieldName = 'TIPO_CARTA'
    end
    object DllFirmaDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object DllFirmaDLL_NAME: TStringField
      FieldName = 'DLL_NAME'
      Size = 50
    end
    object DllFirmaPRIVATE_KEY: TStringField
      FieldName = 'PRIVATE_KEY'
      Size = 50
    end
  end
  object sProfili: TDataSource
    DataSet = Profili
    Left = 828
    Top = 536
  end
  object Profili: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    OnNewRecord = ProfiliNewRecord
    BeforeQuery = ProfiliBeforeQuery
    SequenceField.Field = 'PKPROFILI'
    SequenceField.Sequence = 'PROFILI_PKPROFILI'
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'PROFILI'
    PrimeFields.Strings = (
      'PKPROFILI')
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'pkprofili,'
      'descrizione,'
      'immagini,'
      'referto,'
      'blocchi,'
      'cup,'
      'eseguito'
      'from wprofili'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 796
    Top = 585
    FastFields = (
      'PKPROFILI,3,0'
      'DESCRIZIONE,1,200'
      'IMMAGINI,3,0'
      'REFERTO,3,0'
      'BLOCCHI,3,0'
      'CUP,3,0'
      'ESEGUITO,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object ProfiliPKPROFILI: TIntegerField
      FieldName = 'PKPROFILI'
    end
    object ProfiliDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 30
    end
    object ProfiliIMMAGINI: TIntegerField
      DisplayLabel = 'Immagini'
      FieldName = 'IMMAGINI'
    end
    object ProfiliREFERTO: TIntegerField
      DisplayLabel = 'Referto'
      FieldName = 'REFERTO'
    end
    object ProfiliBLOCCHI: TIntegerField
      DisplayLabel = 'Forza blocchi'
      FieldName = 'BLOCCHI'
    end
    object ProfiliESEGUITO: TIntegerField
      DisplayLabel = 'Crea richieste'
      FieldName = 'ESEGUITO'
    end
    object ProfiliCUP: TIntegerField
      DisplayLabel = 'Agende CUP'
      FieldName = 'CUP'
    end
  end
  object AssegnaReferti: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = AssegnaRefertiBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'SELECT'
      ' U.COGNOME,'
      ' U.NOME,'
      ' u.nominativo,'
      ' U.PKPERSONALE,'
      'pr.servizi_fk'
      'FROM Personale U, persxrep pr'
      'WHERE pr.reparti_fk = :reparti_fk'
      'and u.pkpersonale = pr.personale_fk'
      'and u.funz_interni in (1,3,4)'
      'and (u.data_fine is null or u.data_fine>SYSDATE)'
      ':escludi')
    Params = <
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'escludi'
        ParamType = ptInput
        DataType = ftString
        IsNull = False
        Size = 0
        Value = '#'
      end>
    QBEMode = False
    Left = 712
    Top = 332
    FastFields = (
      'COGNOME,1,30'
      'NOME,1,30'
      'NOMINATIVO,1,70'
      'PKPERSONALE,3,0'
      'SERVIZI_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object AssegnaRefertiCOGNOME: TStringField
      FieldName = 'COGNOME'
      Size = 30
    end
    object AssegnaRefertiNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object AssegnaRefertiNOMINATIVO: TStringField
      FieldName = 'NOMINATIVO'
      Size = 70
    end
    object AssegnaRefertiPKPERSONALE: TIntegerField
      FieldName = 'PKPERSONALE'
    end
    object AssegnaRefertiSERVIZI_FK: TIntegerField
      FieldName = 'SERVIZI_FK'
    end
  end
  object uLeggiPostoLavoro: TAstaUpdateSQL
    InsertSQL.Strings = (
      'insert into workxrad(workstation_fk,reparti_fk)'
      'values( :PKWORKSTATION, :REPARTI_FK )'
      ' ')
    Left = 116
    Top = 320
  end
  object TabEsitoScreening: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'descrizione, '
      'pkesitiscr, '
      'tipolivello_fk,'
      'shortcut'
      'from tabesitoscreening'
      'where (data_fine is null or data_fine>sysdate)')
    Params = <>
    QBEMode = False
    Left = 812
    Top = 412
    FastFields = (
      'DESCRIZIONE,1,100'
      'PKESITISCR,3,0'
      'TIPOLIVELLO_FK,1,5'
      'SHORTCUT,1,32')
    FMultiTable = ()
    UpdateMethod = umManual
    object TabEsitoScreeningDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object TabEsitoScreeningPKESITISCR: TIntegerField
      FieldName = 'PKESITISCR'
    end
    object TabEsitoScreeningTIPOLIVELLO_FK: TStringField
      FieldName = 'TIPOLIVELLO_FK'
      Size = 5
    end
    object TabEsitoScreeningSHORTCUT: TStringField
      FieldName = 'SHORTCUT'
      Size = 32
    end
  end
  object qCaricaColori: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = qCaricaColoriBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'pkset_colori,'
      'colore,'
      'elemento'
      'from wset_colori'
      'where lingua=:lingua'
      'order by pkset_colori')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 444
    Top = 584
    FastFields = (
      'PKSET_COLORI,3,0'
      'COLORE,3,0'
      'ELEMENTO,1,200')
    FMultiTable = ()
    UpdateMethod = umManual
    object qCaricaColoriPKSET_COLORI: TIntegerField
      FieldName = 'PKSET_COLORI'
    end
    object qCaricaColoriCOLORE: TIntegerField
      FieldName = 'COLORE'
    end
    object qCaricaColoriELEMENTO: TStringField
      FieldName = 'ELEMENTO'
      Size = 200
    end
  end
  object qCaricaProvenienze: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = qCaricaProvenienzeBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'provenienza,'
      'descrizione,'
      'icona,'
      'preno,'
      'accet'
      'from wtab_provenienza'
      'where lingua=:lingua'
      ' ')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 516
    Top = 588
    FastFields = (
      'PROVENIENZA,1,1'
      'DESCRIZIONE,1,200'
      'ICONA,3,0'
      'PRENO,3,0'
      'ACCET,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qCaricaProvenienzePROVENIENZA: TStringField
      FieldName = 'PROVENIENZA'
      Size = 1
    end
    object qCaricaProvenienzeDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
    object qCaricaProvenienzeICONA: TIntegerField
      FieldName = 'ICONA'
    end
    object qCaricaProvenienzePRENO: TIntegerField
      FieldName = 'PRENO'
    end
    object qCaricaProvenienzeACCET: TIntegerField
      FieldName = 'ACCET'
    end
  end
  object ErroriInvio: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = ErroriInvioBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    NoSQLFields.Strings = (
      '')
    EditMode = 'Read Only'
    UpdateTableName = 'LOG_ERRORI'
    PrimeFields.Strings = (
      'PKLOGERRORI')
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      '  l.pklogerrori,'
      '  l.triage_fk,'
      '  l.user_id,'
      '  l.data_err,'
      '  l.testo_errore,'
      '  l.tipo_blocco,'
      '  l.stato_err,'
      '  t.ora_inizio,'
      '  t.ris_study_euid,'
      '  t.diagnostica_fk,'
      '  t.ceimmagini,'
      '  a.nominativo as Paziente,'
      '  a.pkassistibili,'
      '  s.descrizione as Diagnostica,'
      '  p.nominativo as Tecnico,'
      '  r2.descrizione as RepartoEsecutore,'
      '  ts.descrizione as DescStatovisita,'
      '  i.pkimpegnative,'
      '  ae.cod_esterno as PID'
      'from log_errori l'
      'join param_ticket pt on pt.pkparamticket=1'
      'join personale p on p.pkpersonale = l.user_id'
      'join triage t on t.pktriage = l.triage_fk'
      'join impegnative i on i.pkimpegnative = t.impegnative_fk'
      'join assistibili a on a.pkassistibili = i.assistibili_fk'
      
        'left join anag_esterne ae on ae.assistibili_fk = a.pkassistibili' +
        ' and ae.idauthority = pt.anag_authority'
      'join servizi s on s.pkservizi = t.diagnostica_fk'
      'left join reparti r2 on r2.pkreparti = i.reparti_fk'
      
        'left join wtabstatovisita ts on ts.statovisita = t.statovisita a' +
        'nd ts.lingua=:lingua'
      'where l.triage_fk = :triage_fk'
      ' '
      ' '
      ' ')
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
        Name = 'triage_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    DirectModify = [tsyInsert]
    UpdateObject = updErroriInvio
    QBEMode = False
    Left = 696
    Top = 28
    FastFields = (
      'PKLOGERRORI,3,0'
      'TRIAGE_FK,3,0'
      'USER_ID,3,0'
      'DATA_ERR,11,0'
      'TESTO_ERRORE,1,255'
      'TIPO_BLOCCO,3,0'
      'STATO_ERR,3,0'
      'ORA_INIZIO,11,0'
      'RIS_STUDY_EUID,1,100'
      'DIAGNOSTICA_FK,3,0'
      'CEIMMAGINI,3,0'
      'PAZIENTE,1,122'
      'PKASSISTIBILI,3,0'
      'DIAGNOSTICA,1,100'
      'TECNICO,1,70'
      'REPARTOESECUTORE,1,60'
      'DESCSTATOVISITA,1,60'
      'PKIMPEGNATIVE,3,0'
      'PID,1,32')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object ErroriInvioUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object ErroriInvioTESTO_ERRORE: TStringField
      DisplayLabel = 'Testo errore'
      FieldName = 'TESTO_ERRORE'
      Size = 255
    end
    object ErroriInvioTIPO_BLOCCO: TIntegerField
      DisplayLabel = 'Tipo errore'
      FieldName = 'TIPO_BLOCCO'
    end
    object ErroriInvioDATA_ERR: TDateTimeField
      DisplayLabel = 'Data errore'
      FieldName = 'DATA_ERR'
      DisplayFormat = 'ddddd hh.nn'
    end
    object ErroriInvioORA_INIZIO: TDateTimeField
      DisplayLabel = 'Ora esame'
      FieldName = 'ORA_INIZIO'
    end
    object ErroriInvioDIAGNOSTICA: TStringField
      DisplayLabel = 'Diagnostica'
      FieldName = 'DIAGNOSTICA'
      Size = 100
    end
    object ErroriInvioTECNICO: TStringField
      DisplayLabel = 'Tecnico'
      FieldName = 'TECNICO'
      Size = 70
    end
    object ErroriInvioREPARTOESECUTORE: TStringField
      DisplayLabel = 'Eseguito in...'
      FieldName = 'REPARTOESECUTORE'
      Size = 60
    end
    object ErroriInvioPKLOGERRORI: TIntegerField
      DisplayLabel = 'Nr. Errore'
      FieldName = 'PKLOGERRORI'
    end
    object ErroriInvioPAZIENTE: TStringField
      DisplayLabel = 'Paziente'
      FieldName = 'PAZIENTE'
      Size = 122
    end
    object ErroriInvioPKASSISTIBILI: TIntegerField
      DisplayLabel = 'Cod. Paziente'
      FieldName = 'PKASSISTIBILI'
    end
    object ErroriInvioSTATO_ERR: TIntegerField
      DisplayLabel = 'Stato errore'
      FieldName = 'STATO_ERR'
    end
    object ErroriInvioDESCSTATOVISITA: TStringField
      DisplayLabel = 'Stato esame'
      FieldName = 'DESCSTATOVISITA'
      Size = 30
    end
    object ErroriInvioRIS_STUDY_EUID: TStringField
      DisplayLabel = 'Nr. Esame'
      FieldName = 'RIS_STUDY_EUID'
      Size = 100
    end
    object ErroriInvioPKIMPEGNATIVE: TIntegerField
      DisplayLabel = 'Nr. Accettazione'
      FieldName = 'PKIMPEGNATIVE'
    end
    object ErroriInvioCEIMMAGINI: TIntegerField
      FieldName = 'CEIMMAGINI'
    end
    object ErroriInvioDIAGNOSTICA_FK: TIntegerField
      FieldName = 'DIAGNOSTICA_FK'
    end
    object ErroriInvioPID: TStringField
      FieldName = 'PID'
      Size = 32
    end
    object ErroriInvioTRIAGE_FK: TIntegerField
      FieldName = 'TRIAGE_FK'
    end
  end
  object updErroriInvio: TAstaUpdateSQL
    ModifySQL.Strings = (
      'begin'
      ''
      '  if :STATO_ERR=2 then'
      ''
      '          update log_errori'
      '          set'
      '          TESTO_ERRORE = :TESTO_ERRORE,'
      '          TIPO_BLOCCO = :TIPO_BLOCCO,'
      '          STATO_ERR = :STATO_ERR,'
      '          USER_ID = :USER_ID'
      '          where PKLOGERRORI = :PKLOGERRORI;'
      ''
      '  else'
      ''
      '          update log_errori'
      '          set'
      '          STATO_ERR = :STATO_ERR,'
      '          USER_ID = :USER_ID'
      '          where PKLOGERRORI = :PKLOGERRORI;'
      ''
      '  end if;'
      ''
      '  if :stato_err=1 then'
      '     update triage'
      '     set ceimmagini=1,'
      '     user_id =:user_id'
      '     where pktriage = :triage_fk;'
      '  else'
      '     update triage'
      '     set ceimmagini=2,'
      '     user_id =:user_id'
      
        '     where pktriage = :triage_fk and statovisita between 130 and' +
        ' 198;'
      '  end if;'
      ''
      'end;')
    Left = 744
    Top = 64
  end
  object RitornaDiagn: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQLOptions = [soExecStoredProc]
    Params = <
      item
        Name = 'PPKTRIAGE'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'PUSER_ID'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end
      item
        Name = 'PSTATOVISITA'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = True
        Size = 0
        Value = Null
      end>
    StoredProcedure = 'RIS.RITORNADIAGN'
    QBEMode = False
    Left = 852
    Top = 584
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object VisualizzaImmagine: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'begin'
      
        '    insert into STATOVISITA( TRIAGE_FK, STATOVISITA, DATA_OP, US' +
        'ER_ID)'
      '    values( :PKTRIAGE, :statovisita, SYSDATE, :USER_ID);'
      'end;')
    Params = <
      item
        Name = 'PKTRIAGE'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'statovisita'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end
      item
        Name = 'USER_ID'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 344
    Top = 588
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object dxPSEngineController1: TdxPSEngineController
    Active = True
    OptionsStoring.SaveFormsPosition = False
    PreviewDialogStyle = 'Advanced'
    Left = 816
    Top = 28
  end
  object dxPrintStyleManager1: TdxPrintStyleManager
    CurrentStyle = dxPrintStyleManager1Style1
    Version = 0
    Left = 816
    Top = 92
    object dxPrintStyleManager1Style1: TdxPSPrintStyle
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInStyle = True
    end
  end
  object dxPrintDialog1: TdxPrintDialog
    ButtonsEnabled = [pdbPreview, pdbPageSetup]
    ButtonsVisible = [pdbPreview, pdbPageSetup]
    StyleManager = dxPrintStyleManager1
    Left = 820
    Top = 156
  end
  object qAlertxRep: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <
      item
        Name = 'Idx_AlertxRep'
        Fields = 'REPARTI_FK;URGENZA_FK;DIAGNOSTICA_FK'
        Options = []
        Selected = True
      end>
    IndexName = 'Idx_AlertxRep'
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = qAlertxRepBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'reparti_fk, '
      'NVL(diagnostica_fk,-1) as diagnostica_fk, '
      'NVL(urgenza_fk,-1) as urgenza_fk'
      'from alertxrep'
      'where radiologia_fk=:radiologia_fk'
      ' ')
    Params = <
      item
        Name = 'radiologia_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 924
    Top = 568
    FastFields = (
      'REPARTI_FK,3,0'
      'DIAGNOSTICA_FK,3,0'
      'URGENZA_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qAlertxRepREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object qAlertxRepDIAGNOSTICA_FK: TIntegerField
      FieldName = 'DIAGNOSTICA_FK'
    end
    object qAlertxRepURGENZA_FK: TIntegerField
      FieldName = 'URGENZA_FK'
    end
  end
  object LkSkin: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'TABSKIN'
    PrimeFields.Strings = (
      'PKTABSKIN')
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'pktabskin, '
      'nome,'
      'textcolor'
      'from tabskin')
    Params = <>
    QBEMode = False
    Left = 400
    Top = 232
    FastFields = (
      'PKTABSKIN,3,0'
      'NOME,1,100'
      'TEXTCOLOR,1,50')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object LkSkinPKTABSKIN: TIntegerField
      DisplayLabel = 'Nr.'
      FieldName = 'PKTABSKIN'
      Required = True
    end
    object LkSkinNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object LkSkinTEXTCOLOR: TStringField
      FieldName = 'TEXTCOLOR'
      Size = 50
    end
  end
  object sLkSkin: TDataSource
    DataSet = LkSkin
    Left = 448
    Top = 236
  end
  object qSaveSkin: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'TABSKIN'
    PrimeFields.Strings = (
      'PKTABSKIN')
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'nome,'
      'skin'
      'from tabskin'
      'where pktabskin= :pktabskin')
    SQLOptions = [soFetchMemos, soFetchBlobs]
    Params = <
      item
        Name = 'pktabskin'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 400
    Top = 292
    FastFields = (
      'NOME,1,100'
      'SKIN,30,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qSaveSkinNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qSaveSkinSKIN: TBlobField
      FieldName = 'SKIN'
      BlobType = ftOraBlob
    end
  end
  object TabPacs: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'TABPACS'
    PrimeFields.Strings = (
      'PKPACS')
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'pkpacs, '
      'pacs, '
      'nome, '
      'pacs_qr, '
      'url_immagini, '
      'url_login,'
      'url_logout,'
      'url_chiudi,'
      'canale_pacs'
      'from tabpacs')
    Params = <>
    QBEMode = False
    Left = 108
    Top = 584
    FastFields = (
      'PKPACS,3,0'
      'PACS,1,50'
      'NOME,1,50'
      'PACS_QR,1,200'
      'URL_IMMAGINI,1,200'
      'URL_LOGIN,1,200'
      'URL_LOGOUT,1,200'
      'URL_CHIUDI,1,200'
      'CANALE_PACS,1,10')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object TabPacsPKPACS: TIntegerField
      DisplayLabel = 'Nr'
      FieldName = 'PKPACS'
      Required = True
    end
    object TabPacsPACS: TStringField
      DisplayLabel = 'Indirizzo'
      FieldName = 'PACS'
      Required = True
      Size = 50
    end
    object TabPacsNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object TabPacsPACS_QR: TStringField
      DisplayLabel = 'Query/Retrieve'
      FieldName = 'PACS_QR'
      Size = 200
    end
    object TabPacsURL_IMMAGINI: TStringField
      DisplayLabel = 'URL Immagini'
      FieldName = 'URL_IMMAGINI'
      Required = True
      Size = 200
    end
    object TabPacsCANALE_PACS: TStringField
      DisplayLabel = 'Canale HL7'
      FieldName = 'CANALE_PACS'
      Size = 10
    end
    object TabPacsURL_LOGIN: TStringField
      DisplayLabel = 'URL Login'
      FieldName = 'URL_LOGIN'
      Size = 200
    end
    object TabPacsURL_LOGOUT: TStringField
      DisplayLabel = 'URL Logout'
      FieldName = 'URL_LOGOUT'
      Size = 200
    end
    object TabPacsURL_CHIUDI: TStringField
      DisplayLabel = 'URL Chiusura studio'
      FieldName = 'URL_CHIUDI'
      Size = 200
    end
  end
  object sTabPacs: TDataSource
    DataSet = TabPacs
    Left = 152
    Top = 596
  end
  object LkTipoRefVoc: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'After Post'
    UpdateTableName = 'TIPO_REFVOC'
    PrimeFields.Strings = (
      'PKTIPO_REFVOC')
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'pktipo_refvoc, '
      'descrizione,'
      'attivo,'
      'dest_form'
      'from tipo_refvoc'
      'where attivo=1')
    Params = <>
    QBEMode = False
    Left = 760
    Top = 308
    FastFields = (
      'PKTIPO_REFVOC,3,0'
      'DESCRIZIONE,1,100'
      'ATTIVO,3,0'
      'DEST_FORM,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object LkTipoRefVocPKTIPO_REFVOC: TIntegerField
      DisplayLabel = 'Codice'
      FieldName = 'PKTIPO_REFVOC'
    end
    object LkTipoRefVocDESCRIZIONE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object LkTipoRefVocATTIVO: TIntegerField
      DisplayLabel = 'Attivo'
      FieldName = 'ATTIVO'
    end
    object LkTipoRefVocDEST_FORM: TIntegerField
      DisplayLabel = 'Chiudi Form'
      FieldName = 'DEST_FORM'
    end
  end
  object sLkTipoRefVoc: TDataSource
    DataSet = LkTipoRefVoc
    Left = 800
    Top = 340
  end
  object LkTabEsitoScreening: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'descrizione, '
      'pkesitiscr, '
      'tipolivello_fk,'
      'shortcut'
      'from tabesitoscreening'
      'where (data_fine is null or data_fine>sysdate)')
    Params = <>
    QBEMode = False
    Left = 812
    Top = 460
    FastFields = (
      'DESCRIZIONE,1,100'
      'PKESITISCR,3,0'
      'TIPOLIVELLO_FK,1,5'
      'SHORTCUT,1,32')
    FMultiTable = ()
    UpdateMethod = umManual
    object LkTabEsitoScreeningDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object LkTabEsitoScreeningPKESITISCR: TIntegerField
      FieldName = 'PKESITISCR'
    end
    object LkTabEsitoScreeningTIPOLIVELLO_FK: TStringField
      FieldName = 'TIPOLIVELLO_FK'
      Size = 5
    end
    object LkTabEsitoScreeningSHORTCUT: TStringField
      FieldName = 'SHORTCUT'
      Size = 32
    end
  end
  object sLkTabEsitoScreening: TDataSource
    DataSet = LkTabEsitoScreening
    Left = 776
    Top = 512
  end
  object TabStatoReferto: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = TabStatoRefertoBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'statoreferto, '
      'descrizione, '
      'rigenera'
      'from wstatoreferto'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 612
    Top = 436
    FastFields = (
      'STATOREFERTO,3,0'
      'DESCRIZIONE,1,200'
      'RIGENERA,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object TabStatoRefertoSTATOREFERTO: TIntegerField
      FieldName = 'STATOREFERTO'
    end
    object TabStatoRefertoDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 50
    end
    object TabStatoRefertoRIGENERA: TIntegerField
      FieldName = 'RIGENERA'
    end
  end
  object LeggixWS: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'wr.reparti_fk,'
      'wr.workstation_fk'
      'from workxrad wr'
      'where wr.workstation_fk = :pkworkstation'
      '      and wr.reparti_fk = :reparti_fk')
    Params = <
      item
        Name = 'pkworkstation'
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
        Value = 0
      end>
    QBEMode = False
    Left = 272
    Top = 300
    FastFields = (
      'REPARTI_FK,3,0'
      'WORKSTATION_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object LeggixWSREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
    object LeggixWSWORKSTATION_FK: TIntegerField
      FieldName = 'WORKSTATION_FK'
    end
  end
  object qStatoAnag: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qStatoAnagBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'san_ident,'
      'descrizione'
      'from wtbd_statanag'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 460
    Top = 640
    FastFields = (
      'SAN_IDENT,3,0'
      'DESCRIZIONE,1,200')
    FMultiTable = ()
    UpdateMethod = umManual
    object qStatoAnagSAN_IDENT: TIntegerField
      FieldName = 'SAN_IDENT'
    end
    object qStatoAnagDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
  end
  object sqStatoAnag: TDataSource
    DataSet = qStatoAnag
    Left = 516
    Top = 636
  end
  object qTipoWS: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qTipoWSBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'tipows, '
      'descrizione'
      'from wtbd_tipows'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 580
    Top = 636
    FastFields = (
      'TIPOWS,3,0'
      'DESCRIZIONE,1,100')
    FMultiTable = ()
    UpdateMethod = umManual
    object qTipoWSTIPOWS: TIntegerField
      FieldName = 'TIPOWS'
    end
    object qTipoWSDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
  end
  object sqTipoWS: TDataSource
    DataSet = qTipoWS
    Left = 632
    Top = 644
  end
  object qTipoLogin: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qTipoLoginBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'tipo_login, '
      'descrizione'
      'from wtbd_tipologin'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 684
    Top = 640
    FastFields = (
      'TIPO_LOGIN,3,0'
      'DESCRIZIONE,1,100')
    FMultiTable = ()
    UpdateMethod = umManual
    object qTipoLoginTIPO_LOGIN: TIntegerField
      FieldName = 'TIPO_LOGIN'
    end
    object qTipoLoginDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
  end
  object sqTipoLogin: TDataSource
    DataSet = qTipoLogin
    Left = 736
    Top = 644
  end
  object qClientPacs: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = qClientPacsBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'clientpacs, '
      'descrizione'
      'from wtbd_clientpacs'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 796
    Top = 648
    FastFields = (
      'CLIENTPACS,3,0'
      'DESCRIZIONE,1,200')
    FMultiTable = ()
    UpdateMethod = umManual
    object qClientPacsDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object qClientPacsCLIENTPACS: TIntegerField
      FieldName = 'CLIENTPACS'
    end
  end
  object sqClientPacs: TDataSource
    DataSet = qClientPacs
    Left = 852
    Top = 640
  end
  object qStatoCD: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qStatoCDBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'stato, '
      'descrizione, '
      'icona'
      'from wtbd_statocd'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 176
    Top = 724
    FastFields = (
      'STATO,3,0'
      'DESCRIZIONE,1,200'
      'ICONA,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qStatoCDSTATO: TIntegerField
      FieldName = 'STATO'
    end
    object qStatoCDDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object qStatoCDICONA: TIntegerField
      FieldName = 'ICONA'
    end
  end
  object qCtrlEseguito: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qCtrlEseguitoBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'ctrl_eseguito, '
      'descrizione'
      'from wtbd_ctrleseguito'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 928
    Top = 636
    FastFields = (
      'CTRL_ESEGUITO,1,12'
      'DESCRIZIONE,1,200')
    FMultiTable = ()
    UpdateMethod = umManual
    object qCtrlEseguitoDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
  end
  object sqCtrlEseguito: TDataSource
    DataSet = qCtrlEseguito
    Left = 912
    Top = 684
  end
  object qDefPrint: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = qDefPrintBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'set_default_printer, '
      'descrizione'
      'from wtbd_defprint'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 356
    Top = 644
    FastFields = (
      'SET_DEFAULT_PRINTER,3,0'
      'DESCRIZIONE,1,200')
    FMultiTable = ()
    UpdateMethod = umManual
    object qDefPrintDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 100
    end
    object qDefPrintSET_DEFAULT_PRINTER: TIntegerField
      FieldName = 'SET_DEFAULT_PRINTER'
    end
  end
  object sqDefPrint: TDataSource
    DataSet = qDefPrint
    Left = 404
    Top = 648
  end
  object qStatoPrestazioni: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qStatoPrestazioniBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'stato, '
      'lingua, '
      'descrizione, '
      'icona'
      'from wtbd_statoprestaz'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 252
    Top = 664
    FastFields = (
      'STATO,3,0'
      'LINGUA,1,3'
      'DESCRIZIONE,1,200'
      'ICONA,3,0')
    FMultiTable = ()
    UpdateMethod = umCached
    object qStatoPrestazioniSTATO: TIntegerField
      FieldName = 'STATO'
    end
    object qStatoPrestazioniLINGUA: TStringField
      FieldName = 'LINGUA'
      Size = 3
    end
    object qStatoPrestazioniDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 200
    end
    object qStatoPrestazioniICONA: TIntegerField
      FieldName = 'ICONA'
    end
  end
  object qStatoImmagini: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = qStatoImmaginiBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'stato, '
      'lingua, '
      'descrizione, '
      'icona'
      'from wtbd_statoimmagini'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 180
    Top = 676
    FastFields = (
      'STATO,3,0'
      'LINGUA,1,3'
      'DESCRIZIONE,1,200'
      'ICONA,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qStatoImmaginiSTATO: TIntegerField
      FieldName = 'STATO'
    end
    object qStatoImmaginiLINGUA: TStringField
      FieldName = 'LINGUA'
      Size = 3
    end
    object qStatoImmaginiDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 200
    end
    object qStatoImmaginiICONA: TIntegerField
      FieldName = 'ICONA'
    end
  end
  object qEsameComposto: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = qEsameCompostoBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'stato, '
      'lingua, '
      'descrizione, '
      'icona'
      'from wtbd_composto'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 132
    Top = 676
    FastFields = (
      'STATO,3,0'
      'LINGUA,1,3'
      'DESCRIZIONE,1,200'
      'ICONA,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qEsameCompostoSTATO: TIntegerField
      FieldName = 'STATO'
    end
    object qEsameCompostoLINGUA: TStringField
      FieldName = 'LINGUA'
      Size = 3
    end
    object qEsameCompostoDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 200
    end
    object qEsameCompostoICONA: TIntegerField
      FieldName = 'ICONA'
    end
  end
  object qStatoVisita: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qStatoVisitaBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'statovisita, '
      'lingua, '
      'descrizione, '
      'icona'
      'from wtabstatovisita'
      'where lingua=:lingua and icona is not null')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 304
    Top = 656
    FastFields = (
      'STATOVISITA,3,0'
      'LINGUA,1,3'
      'DESCRIZIONE,1,200'
      'ICONA,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qStatoVisitaSTATOVISITA: TIntegerField
      FieldName = 'STATOVISITA'
    end
    object qStatoVisitaLINGUA: TStringField
      FieldName = 'LINGUA'
      Size = 3
    end
    object qStatoVisitaDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 200
    end
    object qStatoVisitaICONA: TIntegerField
      FieldName = 'ICONA'
    end
  end
  object qTipoReparto: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qTipoRepartoBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'tipo_reparto,'
      'lingua, '
      'descrizione, '
      'icona'
      'from wtbd_tiporeparto'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 80
    Top = 668
    FastFields = (
      'TIPO_REPARTO,1,12'
      'LINGUA,1,3'
      'DESCRIZIONE,1,200'
      'ICONA,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qTipoRepartoTIPO_REPARTO: TStringField
      FieldName = 'TIPO_REPARTO'
      Size = 12
    end
    object qTipoRepartoLINGUA: TStringField
      FieldName = 'LINGUA'
      Size = 3
    end
    object qTipoRepartoDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 200
    end
    object qTipoRepartoICONA: TIntegerField
      FieldName = 'ICONA'
    end
  end
  object qItemType: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = qItemTypeBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'item_type, '
      'lingua, '
      'descrizione, '
      'icona'
      'from wtbd_itemtype'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 32
    Top = 672
    FastFields = (
      'ITEM_TYPE,3,0'
      'LINGUA,1,3'
      'DESCRIZIONE,1,200'
      'ICONA,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qItemTypeITEM_TYPE: TIntegerField
      FieldName = 'ITEM_TYPE'
    end
    object qItemTypeLINGUA: TStringField
      FieldName = 'LINGUA'
      Size = 3
    end
    object qItemTypeDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 200
    end
    object qItemTypeICONA: TIntegerField
      FieldName = 'ICONA'
    end
  end
  object qRicettaInf: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qRicettaInfBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'ricetta_inf, '
      'lingua, '
      'descrizione, '
      'icona'
      'from wtbd_ricettainf'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 48
    Top = 720
    FastFields = (
      'RICETTA_INF,3,0'
      'LINGUA,1,3'
      'DESCRIZIONE,1,200'
      'ICONA,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qRicettaInfRICETTA_INF: TIntegerField
      FieldName = 'RICETTA_INF'
    end
    object qRicettaInfLINGUA: TStringField
      FieldName = 'LINGUA'
      Size = 3
    end
    object qRicettaInfDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 200
    end
    object qRicettaInfICONA: TIntegerField
      FieldName = 'ICONA'
    end
  end
  object qTipoFirma: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    BeforeQuery = qTipoFirmaBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'tipo_firma, '
      'lingua, '
      'descrizione, '
      'icona'
      'from wtbd_tipofirma'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 112
    Top = 724
    FastFields = (
      'TIPO_FIRMA,3,0'
      'LINGUA,1,3'
      'DESCRIZIONE,1,200'
      'ICONA,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qTipoFirmaTIPO_FIRMA: TIntegerField
      FieldName = 'TIPO_FIRMA'
    end
    object qTipoFirmaLINGUA: TStringField
      FieldName = 'LINGUA'
      Size = 3
    end
    object qTipoFirmaDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 200
    end
    object qTipoFirmaICONA: TIntegerField
      FieldName = 'ICONA'
    end
  end
  object qRefStampato: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = qRefStampatoBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'ref_stampato, '
      'lingua, '
      'descrizione, '
      'icona'
      'from wtbd_refstampato'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 244
    Top = 720
    FastFields = (
      'REF_STAMPATO,3,0'
      'LINGUA,1,3'
      'DESCRIZIONE,1,200'
      'ICONA,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qRefStampatoREF_STAMPATO: TIntegerField
      FieldName = 'REF_STAMPATO'
    end
    object qRefStampatoLINGUA: TStringField
      FieldName = 'LINGUA'
      Size = 3
    end
    object qRefStampatoDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 200
    end
    object qRefStampatoICONA: TIntegerField
      FieldName = 'ICONA'
    end
  end
  object qEtichStampate: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    BeforeQuery = qEtichStampateBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'etichette, '
      'lingua, '
      'descrizione, '
      'icona'
      'from wtbd_etichstampate'
      'where lingua=:lingua')
    Params = <
      item
        Name = 'lingua'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
      end>
    QBEMode = False
    Left = 312
    Top = 716
    FastFields = (
      'ETICHETTE,3,0'
      'LINGUA,1,3'
      'DESCRIZIONE,1,200'
      'ICONA,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qEtichStampateETICHETTE: TIntegerField
      FieldName = 'ETICHETTE'
    end
    object qEtichStampateLINGUA: TStringField
      FieldName = 'LINGUA'
      Size = 3
    end
    object qEtichStampateDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 200
    end
    object qEtichStampateICONA: TIntegerField
      FieldName = 'ICONA'
    end
  end
  object qFormLayout: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    OnNewRecord = qFormLayoutNewRecord
    BeforeQuery = qFormLayoutBeforeQuery
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'FORMLAYOUT'
    PrimeFields.Strings = (
      'FORMNAME'
      'TIPO')
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'formname, '
      'layout,'
      'user_id,'
      'tipo,'
      'reparti_fk'
      'from formlayout'
      'where reparti_fk=:reparti_fk')
    SQLOptions = [soFetchMemos, soFetchBlobs]
    Params = <
      item
        Name = 'reparti_fk'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    Left = 420
    Top = 712
    FastFields = (
      'FORMNAME,1,100'
      'LAYOUT,30,0'
      'USER_ID,3,0'
      'TIPO,3,0'
      'REPARTI_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object qFormLayoutFORMNAME: TStringField
      FieldName = 'FORMNAME'
      Size = 100
    end
    object qFormLayoutLAYOUT: TBlobField
      FieldName = 'LAYOUT'
      BlobType = ftOraBlob
    end
    object qFormLayoutUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object qFormLayoutTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qFormLayoutREPARTI_FK: TIntegerField
      FieldName = 'REPARTI_FK'
    end
  end
  object CeReferto: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select rt.referti_fk,r.statoreferto_fk'
      'from refxtriage rt'
      'join referti r on r.pkreferti = rt.referti_fk'
      'where rt.triage_fk=:triage_fk'
      'order by rt.referti_fk desc')
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
    Left = 612
    Top = 272
    FastFields = (
      'REFERTI_FK,3,0'
      'STATOREFERTO_FK,3,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object CeRefertoREFERTI_FK: TIntegerField
      FieldName = 'REFERTI_FK'
    end
    object CeRefertoSTATOREFERTO_FK: TIntegerField
      FieldName = 'STATOREFERTO_FK'
    end
  end
  object Diritti: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = False
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    UpdateTableName = 'TABFUNZIONI'
    PrimeFields.Strings = (
      'PKTABFUNZIONI')
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      'pktabfunzioni,'
      'descrizione,'
      'immagini,'
      'referto,'
      'blocchi,'
      'cup,'
      'eseguito,'
      'sposta,'
      'profilo,'
      'setup'
      'from tabfunzioni'
      'where pktabfunzioni=:cod_funzione')
    SQLOptions = [soFetchMemos, soFetchBlobs]
    Params = <
      item
        Name = 'cod_funzione'
        ParamType = ptInput
        DataType = ftInteger
        IsNull = False
        Size = 0
        Value = 0
      end>
    QBEMode = False
    QBEDefinition.QBEFieldDefs = {
      03000000020000000C000000434F445F46554E5A494F4E4501000000000B0000
      004445534352495A494F4E450100000000}
    Left = 220
    Top = 28
    FastFields = (
      'PKTABFUNZIONI,3,0'
      'DESCRIZIONE,1,30'
      'IMMAGINI,3,0'
      'REFERTO,3,0'
      'BLOCCHI,3,0'
      'CUP,3,0'
      'ESEGUITO,3,0'
      'SPOSTA,3,0'
      'PROFILO,30,0'
      'SETUP,3,0')
    FMultiTable = ()
    UpdateMethod = umAfterPost
    object DirittiPKTABFUNZIONI: TIntegerField
      FieldName = 'PKTABFUNZIONI'
    end
    object DirittiDESCRIZIONE: TStringField
      DisplayLabel = 'Funzione'
      FieldName = 'DESCRIZIONE'
      Size = 30
    end
    object DirittiPROFILO: TBlobField
      FieldName = 'PROFILO'
      BlobType = ftOraBlob
    end
    object DirittiIMMAGINI: TIntegerField
      FieldName = 'IMMAGINI'
    end
    object DirittiREFERTO: TIntegerField
      FieldName = 'REFERTO'
    end
    object DirittiBLOCCHI: TIntegerField
      FieldName = 'BLOCCHI'
    end
    object DirittiCUP: TIntegerField
      FieldName = 'CUP'
    end
    object DirittiESEGUITO: TIntegerField
      FieldName = 'ESEGUITO'
    end
    object DirittiSPOSTA: TIntegerField
      FieldName = 'SPOSTA'
    end
    object DirittiSETUP: TIntegerField
      FieldName = 'SETUP'
    end
  end
  object qCercaAppuntamento: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Active = True
    Constraints = <>
    SequenceField.ApplyMoment = amOnPost
    EditMode = 'Read Only'
    AstaClientSocket = AstaClientSocket
    SQL.Strings = (
      'select'
      't.data_accettazione,'
      'i.assistibili_fk,'
      't.pktriage,'
      't.statovisita,'
      't.ora_inizio'
      'from assistibili a'
      'join impegnative i on i.assistibili_fk = a.pkassistibili'
      'join triage t on t.impegnative_fk = i.pkimpegnative'
      'where a.codice_fiscale = :cf'
      'and t.statovisita in (20,100,120,130,140,170,180,190)'
      'and t.reparti_fk = :reparti_fk'
      'order by t.statovisita desc')
    Params = <
      item
        Name = 'cf'
        ParamType = ptInput
        DataType = ftString
        IsNull = True
        Size = 0
        Value = Null
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
    Left = 900
    Top = 308
    FastFields = (
      'DATA_ACCETTAZIONE,11,0'
      'ASSISTIBILI_FK,3,0'
      'PKTRIAGE,3,0'
      'STATOVISITA,3,0'
      'ORA_INIZIO,11,0')
    FMultiTable = ()
    UpdateMethod = umManual
    object qCercaAppuntamentoDATA_ACCETTAZIONE: TDateTimeField
      FieldName = 'DATA_ACCETTAZIONE'
    end
    object qCercaAppuntamentoASSISTIBILI_FK: TIntegerField
      FieldName = 'ASSISTIBILI_FK'
    end
    object qCercaAppuntamentoPKTRIAGE: TIntegerField
      FieldName = 'PKTRIAGE'
    end
    object qCercaAppuntamentoSTATOVISITA: TIntegerField
      FieldName = 'STATOVISITA'
    end
    object qCercaAppuntamentoORA_INIZIO: TDateTimeField
      FieldName = 'ORA_INIZIO'
    end
  end
  object cxImageNavigator32: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 15729576
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003827174DB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003827174DB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003827174DB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          0000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          00003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000003827
          174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF0000000000000000000000000000000000000000000000003827174DB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF00000000000000000000000000000000000000003827174DB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF000000000000000000000000000000003827174DB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF0000000000000000000000003827174DB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF00000000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF3827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF00000000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF0000000000000000000000003827174DB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF000000000000000000000000000000003827174DB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF00000000000000000000000000000000000000003827174DB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF0000000000000000000000000000000000000000000000003827174DB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000003827
          174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          00003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          0000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003827174DB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003827174DB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003827174DB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003827
          174DB8824DFF0000000000000000000000000000000000000000000000003827
          174DB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003827174DB882
          4DFFB8824DFF00000000000000000000000000000000000000003827174DB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003827174DB8824DFFB882
          4DFFB8824DFF000000000000000000000000000000003827174DB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003827174DB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000003827174DB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003827174DB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF00000000000000003827174DB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF805B36B2000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF805B
          36B2000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF805B36B20000
          00003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003827
          174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF805B36B2000000003827
          174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003827174DB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF805B36B2000000003827174DB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003827174DB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF805B36B2000000003827174DB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003827174DB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF805B36B2000000003827174DB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003827174DB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF805B36B2000000003827174DB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          000000000000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF805B36B2000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003827174DB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF805B36B2000000003827174DB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003827174DB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF805B36B2000000003827174DB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003827174DB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF805B36B2000000003827174DB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003827174DB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF805B36B2000000003827174DB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003827
          174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF805B36B2000000003827
          174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF805B36B20000
          00003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF805B
          36B2000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF805B36B2000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003827174DB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF00000000000000003827174DB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003827174DB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000003827174DB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003827174DB8824DFFB882
          4DFFB8824DFF000000000000000000000000000000003827174DB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003827174DB882
          4DFFB8824DFF00000000000000000000000000000000000000003827174DB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003827
          174DB8824DFF0000000000000000000000000000000000000000000000003827
          174DB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003827174DB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003827174DB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003827174DB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003827
          174DB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003827174DB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003827174DB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003827174DB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003827174DB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003827
          174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003827174DB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003827174DB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003827174DB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003827
          174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003827174DB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003827174DB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003827174DB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003827174DB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003827
          174DB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003827174DB8824DFFB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003827174DB8824DFFB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003827174DB8824DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFF3827174D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFF3827174D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFF3827174D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFB8824DFF3827174D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827
          174D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF3827174D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF3827174D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF3827174D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF3827174D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF3827174D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF3827174D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF3827174D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF3827174D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827
          174D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFB8824DFF3827174D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFF3827174D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFF3827174D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFF3827174D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFF3827174D00000000000000000000
          0000000000000000000000000000B8824DFF3827174D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFF3827174D000000000000
          0000000000000000000000000000B8824DFFB8824DFF3827174D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFF3827174D0000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFF3827174D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFF3827
          174D000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFF3827
          174D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF3827174D0000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF3827174D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF3827174D00000000805B36B2B8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF3827174D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF3827174D00000000805B36B2B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF3827174D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF3827174D00000000805B36B2B8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF3827174D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D00000000805B36B2B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D00000000805B
          36B2B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D0000
          0000805B36B2B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827
          174D00000000805B36B2B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827
          174D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF3827174D00000000805B36B2B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF3827174D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF3827174D00000000805B36B2B8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF3827174D00000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF3827174D00000000805B36B2B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF3827174D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827
          174D00000000805B36B2B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827
          174D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D0000
          0000805B36B2B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D00000000805B
          36B2B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D00000000805B36B2B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF3827174D00000000805B36B2B8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF3827174D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF3827174D00000000805B36B2B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF3827174D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF3827174D00000000805B36B2B8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF3827174D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF3827174D0000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF3827174D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFF3827
          174D000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFF3827
          174D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFF3827174D0000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFF3827174D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFF3827174D000000000000
          0000000000000000000000000000B8824DFFB8824DFF3827174D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFF3827174D00000000000000000000
          0000000000000000000000000000B8824DFF3827174D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFF3827174D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF3827
          174D000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF3827174D0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFF3827174D00000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF3827174D000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF3827174D0000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D00000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D0000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827
          174D00000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF3827174D000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF3827174D0000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF3827174D00000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF3827174DB8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF3827174D00000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF3827174D0000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF3827174D000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827
          174D00000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D0000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D00000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF3827174D0000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF3827174D000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFF3827174D00000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFF3827174D0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF3827
          174D000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFF3827174D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
          4DFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B8824DFFB882
          4DFFB8824DFFB8824DFF251A0F33000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B8824DFFB882
          4DFFB8824DFF251A0F33B8824DFF251A0F330000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B8824DFFB882
          4DFF251A0F33B8824DFFB8824DFFB8824DFF251A0F3300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B8824DFF251A
          0F33B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F33000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FFFFFFFFFFF1E6DBFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F330000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6
          DBFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF251A
          0F33000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF1E6DBFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF251A0F330000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF251A0F3300000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF251A0F33000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF251A0F330000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF251A0F33B8824DFF251A0F3300000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB882
          4DFFB8824DFF251A0F33B8824DFFB8824DFFB8824DFF00000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB882
          4DFF251A0F33B8824DFFB8824DFFB8824DFFB8824DFF00000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6
          DBFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F3300000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF251A0F33B8824DFFB8824DFF251A0F330000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
          84FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
          84FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
          84FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
          84FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
          84FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF848484FF848484FF848484FF848484FF848484FF848484FF7676
          76E6000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFF898989FA2626
          264A000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFF898989FA2E2E2E4A0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FFFFFFFFFFFFFFFFFFDDDDDDFF8B8B8BFB2E2E2E4A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FFFFFFFFFFDDDDDDFF8B8B8BFB2E2E2E4A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FFDDDDDDFF8B8B8BFB2E2E2E4A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF8B8B8BFB2E2E2E4A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF767676E32626264A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000001010102000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000B0C081276845CC9323727540000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000B0C081279855FCD97A776FF93A474FA3237275400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000090A
          070F79855FCD97A776FF97A776FF97A776FF93A474FA31362652000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000090A070F7883
          5DCA97A776FF97A776FF97A776FF97A776FF97A776FF92A272F92E33244E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000090A070F78835DCA97A7
          76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF92A272F92E33
          244E000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000090A070F78835DCA97A776FF97A7
          76FF97A776FF97A776FF73805BC492A272F997A776FF97A776FF97A776FF92A2
          72F92F34254F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000090A070F78835DCA97A776FF97A776FF97A7
          76FF97A776FF687351B0040403062E32244D92A272F997A776FF97A776FF97A7
          76FF92A272F92F34254F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000090A070F78835DCA97A776FF97A776FF97A776FF97A7
          76FF687351B00404030600000000000000002E32244D92A272F997A776FF97A7
          76FF97A776FF92A272F92F34254F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000090A070F78835DCA97A776FF97A776FF97A776FF97A776FF6873
          51B004040306000000000000000000000000000000002E32244D92A272F997A7
          76FF97A776FF97A776FF92A272F92F34254F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000353A295995A576FE97A776FF97A776FF97A776FF687351B00404
          03060000000000000000000000000000000000000000000000002E32244D92A2
          72F997A776FF97A776FF97A776FF92A272F92F34254F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004147326D95A576FE97A776FF687351B0040403060000
          0000000000000000000000000000000000000000000000000000000000002E32
          244D92A272F997A776FF97A776FF97A776FF92A272F92F34254F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004147326D687351AF04040306000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002E32244D92A272F997A776FF97A776FF97A776FF92A272F92F34254F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000101000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002E32244D92A272F997A776FF97A776FF97A776FF92A272F92F34
          254F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002E32244D92A272F997A776FF97A776FF97A776FF92A2
          72F92F34254F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002E32244D92A272F997A776FF97A776FF97A7
          76FF92A272F92F34254F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002E32244D92A272F997A776FF97A7
          76FF97A776FF92A272F92F34254F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002E32244D92A272F997A7
          76FF97A776FF97A776FF92A272F92F34254F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002E32244D92A2
          72F997A776FF97A776FF97A776FF75805AC50101000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002E32
          244D92A272F997A776FF77855ECB090A07100000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002E32244D75805AC5090A0710000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000101010200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001010202000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010102020000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000005070F12354EA9C8151E424E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000016204552354EA9C80507
          1013000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000005070F123750AECD4463D8FF4161D3F9151E
          424E000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000162045524161D3F94463D8FF3750
          AECE050710130000000000000000000000000000000000000000000000000000
          0000000000000000000000000101344CA9C74463D8FF4463D8FF4463D8FF4161
          D3F9151E424E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000162045524161D3F94463D8FF4463D8FF4463
          D8FF354EA9C80000010100000000000000000000000000000000000000000000
          0000000000000000000000000000151E414D4161D3F94463D8FF4463D8FF4463
          D8FF4161D3F9151E424E00000000000000000000000000000000000000000000
          00000000000000000000162045524161D3F94463D8FF4463D8FF4463D8FF4161
          D3F9131C3E490000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000151E414D4161D3F94463D8FF4463
          D8FF4463D8FF4161D3F9151E424E000000000000000000000000000000000000
          000000000000162045524161D3F94463D8FF4463D8FF4463D8FF4161D3F9131C
          3E49000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000151E414D4161D3F94463
          D8FF4463D8FF4463D8FF4161D3F9151F434F0000000000000000000000000000
          0000162045524161D3F94463D8FF4463D8FF4463D8FF4161D3F9131C3E490000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000151E414D4161
          D3F94463D8FF4463D8FF4463D8FF4161D3F9151F434F00000000000000001620
          45524161D3F94463D8FF4463D8FF4463D8FF4161D3F9131C3E49000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000151E
          414D4161D3F94463D8FF4463D8FF4463D8FF4161D3F9151F434F162045524161
          D3F94463D8FF4463D8FF4463D8FF4161D3F9131C3E4900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000151E414D4161D3F94463D8FF4463D8FF4463D8FF4161D3F94161D3F94463
          D8FF4463D8FF4463D8FF4161D3F9131C3E490000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000151E414D4161D3F94463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4161D3F9131C3E49000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000151E414D4161D3F94463D8FF4463D8FF4463D8FF4463
          D8FF4161D3F9131C3E4900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000162045524161D3F94463D8FF4463D8FF4463D8FF4463
          D8FF4161D3F9151F434F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000162045524161D3F94463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4161D3F9151F434F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000162045524161D3F94463D8FF4463D8FF4463D8FF4161D3F94161D3F94463
          D8FF4463D8FF4463D8FF4161D3F9151F434F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001620
          45524161D3F94463D8FF4463D8FF4463D8FF4161D3F9131C3E49151E414D4161
          D3F94463D8FF4463D8FF4463D8FF4161D3F9151F434F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000162045524161
          D3F94463D8FF4463D8FF4463D8FF4161D3F9131C3E490000000000000000151E
          414D4161D3F94463D8FF4463D8FF4463D8FF4161D3F9151F434F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000162045524161D3F94463
          D8FF4463D8FF4463D8FF4161D3F9131C3E490000000000000000000000000000
          0000151E414D4161D3F94463D8FF4463D8FF4463D8FF4161D3F9151F434F0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000162045524161D3F94463D8FF4463
          D8FF4463D8FF4161D3F9131C3E49000000000000000000000000000000000000
          000000000000151E414D4161D3F94463D8FF4463D8FF4463D8FF4161D3F9151F
          434F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000162046534161D3F94463D8FF4463D8FF4463
          D8FF4161D3F9131C3E4900000000000000000000000000000000000000000000
          00000000000000000000151E414D4161D3F94463D8FF4463D8FF4463D8FF4161
          D3F9151F434F0000000000000000000000000000000000000000000000000000
          0000000000000000000001010202354CA7C54463D8FF4463D8FF4463D8FF4161
          D3F9131C3E490000000000000000000000000000000000000000000000000000
          0000000000000000000000000000151E414D4161D3F94463D8FF4463D8FF4463
          D8FF354CA7C50000010100000000000000000000000000000000000000000000
          000000000000000000000000000004060D0F364EAACA4463D8FF4161D3F9131C
          3E49000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000151E414D4161D3F94463D8FF354F
          ACCB04060E100000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000004060D0F334CA4C3131C3E490000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000151E414D354CA7C50406
          0E10000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010102020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002626264A787878E7848484FF848484FF848484FF848484FF848484FF8484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF848484FF848484FF8484
          84FF848484FF848484FF757575E42626264A0000000000000000000000000000
          0000767676E6848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF787878E70000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF0000000000000000848484FF848484FF0000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF00000000B8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF000000008484
          84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000767676E6848484FF848484FF848484FF848484FF00000000B8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF000000008484
          84FF848484FF848484FF848484FF767676E60000000000000000000000000000
          000026262649767676E6848484FF848484FF848484FF00000000B8824DFF8484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FFB8824DFF000000008484
          84FF848484FF848484FF767676E6262626490000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B8824DFF8484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FFB8824DFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000020000000500000005000000060000
          0006000000060000000600000006000000060000000600000006000000060000
          0006000000060000000600000006000000070000000700000007000000060000
          0005000000030000000100000001000000000000000000000000000000000000
          00000000000000000001000000040000000B0000001200000016000000180000
          0018000000180000001800000018000000180000001800000018000000190000
          0019000000190000001900000019000000190000001A0000001A000000180000
          00140000000C0000000500000001000000000000000000000000000000000000
          000000000001000000020000000A0B1C305A21579AEB265FAAFF255EA9FF245D
          A8FF245CA7FF245BA7FF235AA7FF235AA6FF2258A5FF2257A5FF2256A4FF2156
          A4FF2155A4FF2055A2FF2053A2FF2052A1FF1F52A1FF1F52A1FF1F50A0FF1C49
          91EB09172D5D0000000B00000003000000010000000000000000000000000000
          0000000000010000000400000011265B9CE869AEDEFF6EC1EEFF6CBFEEFF6BBE
          EDFF69BDEDFF68BDECFF66BBECFF64BAECFF63BAECFF62B9EBFF60B7EBFF5FB7
          EBFF5DB6EBFF5CB5EAFF5AB4EAFF59B3EAFF57B2E9FF56B2E9FF55B0E9FF4B99
          D6FF1A478FE90000001300000005000000010000000000000000000000000000
          00000000000100000005000000142E6AB1FF87CDF2FF67BDEDFF60BAEBFF5FB8
          ECFF5EB8ECFF5DB7EBFF5CB7EBFF5AB6EBFF5AB4EAFF59B4EAFF57B4EAFF57B3
          E9FF56B2EAFF55B1E9FF54B0E9FF53B0E8FF52AFE9FF51AEE8FF52AFE8FF63B8
          EBFF2053A1FF0000001700000005000000010000000000000000000000000000
          0000000000000000000500000014316DB2FF8CD1F2FF65BDECFF397EC0FF2865
          ADFF2863ACFF2763ACFF2762ABFF2660AAFF265FAAFF265EA9FF255EA8FF255D
          A8FF245CA7FF245BA7FF245AA6FF2259A6FF2358A4FF3070B7FF53B0E9FF67BA
          ECFF2154A3FF0000001700000006000000010000000000000000000000000000
          00000000000000000005000000133371B4FF91D3F3FF69BFEEFF2A69AFFFFCFA
          F8FFFAF5F1FFF9F5F1FFF9F5F1FFF9F5F1FFF9F5F0FFF9F5F0FFF8F4EFFFF8F3
          EFFFF8F3EFFFF9F4F0FFF9F4EFFFF9F4EFFFF9F4EFFF2359A5FF56B2EAFF6CBE
          EDFF2256A4FF0000001600000006000000010000000000000000000000000000
          00000000000000000005000000123573B6FF96D6F3FF6CC2EEFF2B6CB2FFFCFA
          F8FFF5EDE5FFF4EDE5FFF4EDE4FFF4EDE4FFF3EBE2FFF2EAE1FFF0E7DFFFF0E7
          DEFFF0E8DEFFF2E9E1FFF3EAE1FFF4EAE0FFF9F4EFFF245CA8FF58B4EAFF70C1
          EEFF2359A6FF0000001600000005000000010000000000000000000000000000
          00000000000000000004000000123777B8FF9CDAF5FF6FC5EFFF2D6FB3FFFCFA
          F9FFF5EEE6FFF6EEE5FFF5EDE5FFF4ECE4FFF1E9E2FFF1ECE6FFEBE8E4FFEAE7
          E3FFEFEBE7FFF1E9E1FFF3E9E1FFF3EBE1FFF9F4F0FF265EA9FF5CB6EBFF75C3
          EEFF245BA7FF0000001500000005000000010000000000000000000000000000
          00000000000000000004000000113A7BBAFFA1DCF6FF73C7EFFF2F71B5FFFCFB
          F9FFF5EFE7FFF5EEE6FFF4EDE5FFF4EBE3FFF0EBE7FFE4E1DDFF4F725FFF2065
          48FFBAC2B9FFEFE9E5FFF1E8DFFFF2EAE2FFF9F5F0FF2660ABFF5FB8ECFF7BC7
          F0FF255DA8FF0000001400000005000000010000000000000000000000000000
          00000000000000000004000000103C7EBDFFA5DFF6FF76CAF0FF3074B6FFFDFB
          F9FFF7F0E8FFF6EFE8FFF4EDE6FFF1ECE6FFE8E6E2FF5E816FFF2B8362FF35A3
          7BFF476E59FFE7E4E0FFF0E9E3FFF3EBE3FFF8F4F0FF2863ACFF62BBECFF80CA
          F1FF2660ABFF0000001300000005000000000000000000000000000000000000
          000000000000000000040000000F3E82BFFFABE1F7FF7ACCF2FF3177B8FFFDFB
          F9FFF7F0E9FFF6EFE8FFF3EDE7FFEBE8E5FF739483FF2C8060FF3CCA9BFF3FCA
          9CFF20674AFFA2B0A5FFEDE9E5FFF1EAE3FFF8F4F0FF2965ADFF66BEEDFF86CD
          F1FF2763ACFF0000001300000005000000000000000000000000000000000000
          000000000000000000040000000F4285C1FFAFE3F8FF7DCFF2FF327ABAFFFDFB
          FAFFF6F0EAFFF3EEE9FFEEEBE9FF8AA798FF2C805FFF3ECA9CFF2BC590FF31C8
          94FF3BB28BFF2F634BFFDDDCD8FFF1EBE6FFF8F4F0FF2A68AFFF69C0EEFF8BD0
          F2FF2965AEFF0000001200000005000000000000000000000000000000000000
          000000000000000000030000000E4388C3FFB4E5F9FF81D1F4FF347DBCFFFCFB
          F9FFF5F0EBFFF0EDEAFF9FB8AAFF2E7F60FF45CDA2FF2EC896FF2CC894FF2CC7
          94FF3DCE9EFF2B8563FF749583FFEDE9E6FFF6F3EFFF2C6BB1FF6CC2EEFF91D4
          F3FF2A68AFFF0000001100000004000000000000000000000000000000000000
          000000000000000000030000000D468BC5FFB8E8FAFF85D4F4FF367FBDFFFAF9
          F8FFF3F0EDFFB3C6BCFF358667FF62D5B4FF58D9B2FF5CDAB5FF6EE0BEFF50D6
          ADFF39CD9DFF44C79CFF216949FFC9D0C9FFF4F2EFFF2E6DB3FF70C5F0FF96D7
          F4FF2B6BB1FF0000001000000004000000000000000000000000000000000000
          000000000000000000030000000C488FC7FFBCEAFAFF89D7F4FF4288C2FFF8F7
          F7FFC3D3CAFF38896AFF69D8B8FF5ADBB6FF65DDBCFFA6E7D5FF90D2BDFF8EEB
          D2FF5FDCB8FF54D7B0FF3BA782FF50846EFFEEECEBFF5489BFFF73C7F0FF9BD9
          F4FF2C6EB2FF0000001000000004000000000000000000000000000000000000
          000000000000000000030000000C4A92C9FFC1ECFAFF8CD9F5FF428BC3FFE1EA
          E6FF398A6AFF9DE1CFFF7EE8CCFF6CE2C2FFA1E3D1FF3A9F79FF369A73FFA6E1
          D0FF8CEBD4FF5EDDB9FF64DDBBFF308968FF9CB7AAFF8BAED0FF7ECBEFFF9FDB
          F5FF2E70B4FF0000000F00000004000000000000000000000000000000000000
          000000000000000000030000000B4D95CAFFC4EEFBFF8FDCF7FF438DC5FFF3F5
          F4FF64B093FF5FBA9BFFBAF6EAFFA5E2D0FF46A884FFCDDDD5FFC5D8CFFF36A3
          7BFFB3EBDCFF88ECD2FF5EDEBAFF63D4B4FF307F60FF81A8BEFFA9DAF0FFA5DD
          F5FF3073B7FF0000000E00000004000000000000000000000000000000000000
          000000000000000000030000000A4F98CCFFC8F0FBFF92DFF7FF3D8AC5FFFBFB
          FAFFEEF0ECFF5AB192FF4EB391FF59B492FFE2E9E4FFF5F2EFFFF4F2EFFFB2D6
          C6FF3DAE85FFC2F3E7FF87EBD2FF63E0BEFF54BE9DFF3B8271FFB3DAEAFFBDE4
          F5FF3176B7FF0000000D00000003000000000000000000000000000000000000
          000000000000000000020000000A529ACEFFCBF1FCFF96E1F8FF3C8CC7FFFDFC
          FBFFF9F8F4FFEDF1EDFF93CDB8FFF1F2EFFFF8F5F3FFF8F4EFFFF8F3F0FFF5F3
          F0FF98CEB8FF4AB993FFC8F7ECFF8BEDD6FF6AE4C2FF3EA380FF67A69AFFCFE9
          F2FF568FC3FF0000000E00000003000000000000000000000000000000000000
          0000000000000000000200000009539DD0FFCFF3FCFF99E4F9FF3D8FC8FFFEFD
          FCFFFAF7F4FFFAF8F5FFFAF7F4FFFAF8F4FFF9F6F2FFF9F4EEFFF6F0EBFFF7F2
          EEFFF4F2EFFF87CAB0FF4ABE97FFCCF8EFFF93EFDAFF6BDFC1FF349875FF91C1
          BAFF93B6D6FF0000000F00000004000000000000000000000000000000000000
          000000000000000000020000000856A0D1FFD1F4FCFF9CE5F9FF3E91C9FFFEFD
          FCFFFCF9F6FFFCF9F6FFFCF9F5FFFBF9F5FFF6F1ECFFF0E8E4FFF1EAE4FFF2EA
          E3FFF3EEEAFFF4F0EEFF98D2BDFF48C098FFCBF7EEFF98F1DDFF61DDBCFF389F
          7BFF77AAB6FF0000001200000006000000010000000000000000000000000000
          000000000000000000020000000858A2D3FFD4F6FCFF9FE8FBFF3F93CAFFFEFE
          FDFFFCFAF6FFFBF9F5FFFAF7F4FFF0EAE3FFE8DDD7FFE9DDD7FFE9DFD9FFEAE0
          DAFFEAE1DBFFEEE8E4FFF2EEEBFFA9D8C6FF4AC39EFFCFF9F0FFA8F6E6FF60DE
          BCFF3CA482FF0B241A5000000008000000010000000000000000000000000000
          00000000000000000002000000075AA4D4FFD7F7FEFFA2EAFBFF4096CCFFFDFD
          FCFFFBF7F5FFF9F6F2FFE7DED8FFD9CAC2FFD7C8C0FFD6C8C0FFD8C9C3FFDACC
          C4FFDBCFC9FFDFD4CDFFE6DDD8FFF0EBE8FFB8DED0FF3DBF96FFB0EFDFFFBFFB
          EEFF91E9D3FF339876FA0D281F49000000020000000000000000000000000000
          00000000000000000002000000065BA7D5FFDAF8FEFFA5EDFBFF4296CCFFFBFA
          F9FFF4F2EEFFD9CEC9FFC0AFA6FFB8A59CFFB4A098FFB19D96FFB19F96FFB3A2
          9BFFB8A8A0FFBFB0A8FFCBBDB6FFDBD2CCFFEDE9E6FF8DBBCDFF4DC6A5FF6FD7
          B8FF95D8C4FF2B7E61CD02060410000000010000000000000000000000000000
          00000000000000000001000000065DA9D7FFDCF9FEFFA8EEFDFF519FD0FFF1F0
          EFFFCCC1BCFFA2887DFF967466FF926D5CFF8F6758FF8D6254FF8B604FFF875F
          51FF865F51FF88675BFF987F76FFB7A9A2FFD1C6C2FF8CAEC9FFC6E5EFFFA4E1
          D6FF53AE9BFF06120E2700000004000000010000000000000000000000000000
          000000000000000000010000000560ACD8FFDFF9FEFFB2F1FDFF9ECBE2FF8B97
          A1FF917066FFAF8C7CFFC0A393FFCDB5A4FFCFB6A6FFD7C0AFFFD4BDACFFC7AC
          9AFFC1A593FFAE8D7CFF967160FF78574EFF787D85FF8AA4B7FFA9DBEAFFDAF3
          F9FF81B4D9FF0000000900000003000000000000000000000000000000000000
          0000000000000000000100000003579CC4E8BEE6F4FFCCF7FEFFD9EDF1FFA07C
          6DFFDECEC5FFF1E9E2FFF0E7DFFFEFE6DCFFE9DBD0FFDECBBDFFDBC5B5FFDAC6
          B6FFE2D1C4FFE6D7CBFFE4D4C8FFCBB5A7FF815E4FFFBAC7C9FFB4E2EDFFACDA
          EDFF377FB3E80000000500000001000000000000000000000000000000000000
          0000000000000000000000000002182B35424E87AACA62ADD8FFA9CDE3FFB38B
          7BFFB2897AFFB18A79FFAF8879FFB08778FFDECEC3FFE8DACFFFE3D3C6FFD7C3
          B4FFAC8473FFAB8372FFA98271FFAA806FFFA88170FF9EBBCFFF599ECBFF457E
          A2CB0F2432440000000300000001000000000000000000000000000000000000
          0000000000000000000000000001000000020000000300000003000000060000
          000B0000000E0000000E000000125F4A4296C9AC9FFFE2D3CAFFE1D1C8FFBB9D
          90FF553E37990000001700000013000000140000001100000009000000050000
          0004000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000010000
          00010000000100000001000000020403030E5F4B438EA28071E7A48171E75640
          398F040303100000000200000001000000010000000100000001000000010000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000300000005000000060000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000311E2A489F5F84E7AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FF9F5F84E7311E2A48000000000000000000000000000000000000
          0000000000009C5F83E4AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FF9C5F83E4000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF311E2A4800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000311E
          2A48AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF2D1B264200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002D1B
          2642AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FF000000000000000000000000AF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FF000000000000000000000000AF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FF000000000000000000000000AF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FF000000000000000000000000AF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FF000000000000000000000000AF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          0000000000009F5F84E7AF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FF9F5F84E7000000000000000000000000000000000000
          0000000000002B1A243F8A5474C9AF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FF8A5474C92B1A243F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E811E1E1E8100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001E1E
          1E813C3C3CFF3C3C3CFF1E1E1E81000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001E1E1E813C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E810000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001E1E1E813C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E7E000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000707071C171717632626
          26A0303030D1383838F3383838F3303030D1262626A0171717630707071C0000
          00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001181818652E2E2EC53C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2E2E2EC52929
          29B33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000004040412202020893C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001202020893C3C3CFF3C3C3CFF3C3C3CFF303030CB1E1E
          1E7F0F0F0F3F04040412040404120F0F0F3F1E1E1E7F303030CB3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000181818653C3C3CFF3C3C3CFF3C3C3CFF242424980A0A0A2A0000
          000000000000000000000000000000000000000000000A0A0A2A242424983C3C
          3CFF3C3C3CFF3C3C3CFF2A2A2AB1000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000707071C2E2E2EC53C3C3CFF3C3C3CFF242424980303030E000000000000
          00000000000000000000000000000000000000000000000000000303030E2424
          24983C3C3CFF3C3C3CFF2E2E2EC50707071C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000171717633C3C3CFF3C3C3CFF303030CB0A0A0A2A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000A0A
          0A2A303030CB3C3C3CFF3C3C3CFF171717630000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000262626A03C3C3CFF3C3C3CFF1E1E1E7F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E7F3C3C3CFF3C3C3CFF262626A00000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000303030D13C3C3CFF3C3C3CFF0F0F0F3F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000F0F0F3F3C3C3CFF3C3C3CFF303030D10000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000383838F33C3C3CFF3C3C3CFF040404120000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000040404123C3C3CFF3C3C3CFF383838F30000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000383838F33C3C3CFF3C3C3CFF040404120000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000040404123C3C3CFF3C3C3CFF383838F30000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000303030D13C3C3CFF3C3C3CFF0F0F0F3F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000F0F0F3F3C3C3CFF3C3C3CFF303030D10000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000262626A03C3C3CFF3C3C3CFF1E1E1E7F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E7F3C3C3CFF3C3C3CFF262626A00000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000171717633C3C3CFF3C3C3CFF303030CB0A0A0A2A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000A0A
          0A2A303030CB3C3C3CFF3C3C3CFF171717630000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000707071C2E2E2EC53C3C3CFF3C3C3CFF242424980303030E000000000000
          00000000000000000000000000000000000000000000000000000303030E2424
          24983C3C3CFF3C3C3CFF2E2E2EC50707071C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000181818653C3C3CFF3C3C3CFF3C3C3CFF242424980A0A0A2A0000
          000000000000000000000000000000000000000000000A0A0A2A242424983C3C
          3CFF3C3C3CFF3C3C3CFF18181865000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001202020893C3C3CFF3C3C3CFF3C3C3CFF303030CB1E1E
          1E7F0F0F0F3F04040412040404120F0F0F3F1E1E1E7F303030CB3C3C3CFF3C3C
          3CFF3C3C3CFF2020208900000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000004040412202020893C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF202020890404041200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001181818652E2E2EC53C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2E2E2EC51818
          1865000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000707071C171717632626
          26A0303030D1383838F3383838F3303030D1262626A0171717630707071C0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000D0D0D381C1C1C78292929AE333333D83A3A3AF53A3A3AF53333
          33D8292929AE1C1C1C780D0D0D38000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001E1E1E7E00000000000000000000000000000000000000000E0E
          0E3D24242498373737EF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF373737EF242424980E0E0E3D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF1E1E1E7E0000000000000000000000001919196A3333
          33D83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D81919196A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF1E1E1E7E000000001C1C1C79393939F83C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF393939F81C1C1C790000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF2A2A2AB4393939F83C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF2C2C2CB91B1B1B720D0D0D380404040F0404040F0D0D
          0D381B1B1B722C2C2CB93C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF393939F81919
          196A000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF343434DF1B1B1B730303030C000000000000000000000000000000000000
          0000000000000303030C1B1B1B73343434DF3C3C3CFF3C3C3CFF3C3C3CFF3333
          33D80E0E0E3D0000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3434
          34DF1616165C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000001616165C343434DF3C3C3CFF3C3C3CFF3C3C
          3CFF242424980000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B
          2BB8000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001B1B1B733C3C3CFF3C3C3CFF3C3C
          3CFF373737EF0D0D0D3800000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000303030C2C2C2CB93C3C3CFF3C3C
          3CFF3C3C3CFF1C1C1C7800000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          000000000000000000001C1C1C783C3C3CFF3C3C3CFF3C3C3CFF2C2C2CB90303
          030C000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          000000000000000000000D0D0D38373737EF3C3C3CFF3C3C3CFF3C3C3CFF1B1B
          1B73000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002B2B2BB83C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          0000000000000000000000000000242424983C3C3CFF3C3C3CFF3C3C3CFF3434
          34DF1616165C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000001616165C343434DF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          00000000000000000000000000000E0E0E3D333333D83C3C3CFF3C3C3CFF3C3C
          3CFF343434DF1B1B1B730303030C000000000000000000000000000000000000
          0000000000000303030C1B1B1B73343434DF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          0000000000000000000000000000000000001919196A393939F83C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF2C2C2CB91B1B1B720D0D0D380404040F0404040F0D0D
          0D381B1B1B722C2C2CB93C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF393939F82A2A
          2AB43C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          000000000000000000000000000000000000000000001C1C1C79393939F83C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF393939F81C1C1C790000
          00001E1E1E7E3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001919196A3333
          33D83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D81919196A000000000000
          0000000000001E1E1E7E3C3C3CFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000E0E
          0E3D24242498373737EF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF373737EF242424980E0E0E3D00000000000000000000
          000000000000000000001E1E1E7E000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000D0D0D381C1C1C78292929AE333333D83A3A3AF53A3A3AF53333
          33D8292929AE1C1C1C780D0D0D38000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000000000000000000010000
          0002000000050000000500000006000000060000000600000006000000060000
          0006000000060000000600000006000000060000000600000006000000060000
          0006000000060000000600000006000000060000000600000006000000070000
          0007000000070000000600000005000000030000000100000001000000040000
          000B000000120000001600000017000000170000001700000017000000170000
          0018000000180000001800000018000000180000001800000018000000180000
          0019000000190000001900000019000000190000001900000019000000190000
          001A0000001A00000019000000140000000C00000005000000010000000A3124
          205A9D7365EBAD8070FFAD7F70FFAD7F6FFFAC7E6FFFAC7E6EFFAB7D6DFFAB7C
          6DFFAA7C6DFFAA7C6CFFA97B6BFFA97B6BFFA97B6BFFA97A6BFFA87A6AFFA879
          6AFFA87969FFA77969FFA77969FFA77868FFA67868FFA77867FFA67767FFA677
          67FFA67667FFA67666FF956B5CEB2F211D5D0000000C00000003000000109E77
          6AE8E6D6D0FFF9F4F1FFFAF4F1FFF9F4F1FFFAF4F0FFF9F4F1FFC29F93FFF9F4
          F1FFF9F4F1FFF9F4F0FFFAF4F0FFF9F4F1FFFAF4F0FFC19D91FFF9F4F0FFF9F4
          F0FFF9F4F0FFF9F4F0FFF8F4F0FFF9F4F0FFBF9B8FFFF9F3F0FFF9F2F0FFF9F2
          F0FFF9F2F0FFF9F2EFFFE3D2CBFF9A6F61E9000000130000000500000014B388
          79FFFBF6F3FFF7EEEAFFF6EFEAFFF7EEE9FFF6EEE9FFF6EEE9FFC39F92FFF6EE
          E9FFF7EEE8FFF6EDE8FFF7EEE9FFF6EDE8FFF7EEE9FFC19C90FFF6EEE8FFF6EE
          E8FFF6EDE9FFF6EEE8FFF6EDE8FFF6EDE8FFBF9B8EFFF6EDE8FFF6EDE8FFF6ED
          E8FFF6ECE7FFF6ECE7FFF8F3F0FFAB7D6DFF000000170000000600000014B48A
          7AFFFBF7F4FFF7EFEAFFF7EEEAFFF7EEE9FFF6EFEAFFF6EEEAFFC3A094FFF6EE
          E9FFF7EEE9FFF7EEE9FFF7EEE9FFF6EEE9FFF6EEE8FFC29E91FFF7EEE9FFF6EE
          E9FFF7EEE9FFF6EDE9FFF6EDE8FFF6EDE9FFC09C8FFFF6EDE8FFF6EEE8FFF6ED
          E8FFF6EDE7FFF6EDE8FFFAF4F0FFAB7E6EFF000000180000000600000013B58B
          7CFFFBF7F4FFF7EFEBFFF7EFEAFFF7EFEAFFF7EFEBFFF7EFEAFFC4A295FFF7EE
          EAFFF7EEE9FFF7EEEAFFF7EEE9FFF7EEEAFFF7EEE9FFC29F92FFF7EEE9FFF7EE
          E9FFF7EEE9FFF6EEE9FFF7EDE9FFF6EEE9FFC09D91FFF6EEE8FFF6EEE9FFF6EE
          E8FFF7EDE9FFF6EDE9FFFAF4F0FFAD7F70FF000000170000000600000013B68D
          7EFFFBF7F5FFF8EFEBFFF8EFEBFFF8EFEBFFF7EFEAFFF7EFEAFFC5A397FFF7EF
          EBFFF7EFEAFFF7EFEAFFF7EFEBFFF6EEEAFFF7EFEAFFC3A094FFF7EEEAFFF7EE
          E9FFF7EFE9FFF7EEE9FFF7EFE9FFF7EEE9FFC29E91FFF7EEE9FFF7EDE9FFF7ED
          E9FFF7EEE8FFF6EDE9FFFAF4F0FFAD8071FF000000170000000600000012B88E
          80FFC8A99DFFC7A69AFFC7A699FFC7A699FFC6A599FFC6A598FFC6A498FFC6A4
          97FFC5A397FFC5A396FFC5A396FFC4A396FFC4A295FFC4A295FFC4A295FFC3A1
          95FFC3A195FFC3A094FFC29F93FFC3A093FFC39F92FFC29F92FFC29F92FFC29F
          92FFC19E92FFC19D91FFC29F93FFAE8172FF000000160000000600000012B991
          82FFFBF8F6FFF8F0ECFFF8F0ECFFF8F0ECFFF7F0ECFFF7F0ECFFC6A69AFFF7F0
          EBFFF7F0EBFFF7F0EBFFF8F0EBFFF8EFEBFFF7EFEBFFC5A396FFF7EFEAFFF7EF
          EBFFF7F0EAFFF7EFEBFFF7EFEBFFF7EFEAFFC3A095FFF7EFEAFFF7EFEAFFF7EF
          EAFFF7EFE9FFF6EFEAFFFAF5F2FFAF8474FF000000150000000500000011BA92
          84FFFBF8F7FFF8F1EDFFF8F1ECFFF8F1ECFFF8F0ECFFF8F0ECFFC8A79BFFF8F0
          ECFFF7F0ECFFF7F0ECFFF7F0EBFFF7EFECFFF7F0EBFFC6A498FFF7EFEBFFF8F0
          EBFFF7EFEBFFF8EFEBFFF7EFEBFFF7F0EBFFC4A295FFF8EFEAFFF7EFEAFFF7EF
          EAFFF7EFEBFFF7EFEBFFFAF4F2FFB08576FF000000150000000500000010BC94
          85FFFBF9F7FFF8F1EDFFF8F1EDFFF9F1EDFFF8F1EDFFF8F1EDFFC9A89DFFF8F0
          ECFFF8F0EDFFF8F0ECFFF8F1ECFFF8F0ECFFF7F0EDFFC7A69AFFF8F0ECFFF8F0
          ECFFF8F0ECFFF8F0EBFFF7F0EBFFF8F0EBFFC6A396FFF7F0EBFFF8EFEBFFF7EF
          EBFFF8EFEAFFF7F0EBFFFAF5F2FFB28777FF000000140000000500000010BC95
          87FFFCF9F7FFF9F2EEFFF8F2EDFFF8F1EDFFF8F1EEFFF9F1EDFFCAAA9EFFF8F1
          EDFFF8F1EDFFF8F1EDFFF8F1EDFFF8F0EDFFF8F1EDFFC8A79BFFF8F0EDFFF8F0
          ECFFF8F0ECFFF8F0ECFFF8F0ECFFF8F0ECFFC6A498FFF7F0EBFFF8F0EBFFF8F0
          ECFFF8EFEBFFF8EFEBFFFAF5F2FFB38879FF00000014000000050000000FBE97
          89FFFCF9F8FFF8F2EEFFF8F2EEFFF8F2EEFFF9F1EEFFF9F2EEFFCBAB9FFFF8F2
          EDFFF9F1EDFFF9F1EEFFF9F1EDFFF8F1EDFFF8F1EEFFC8A89DFFF8F1EDFFF8F1
          EDFFF8F1EDFFF8F1ECFFF8F1EDFFF8F1EDFFC7A69AFFF8F0EDFFF8F0ECFFF8F0
          ECFFF8F0ECFFF8F0EBFFFAF6F2FFB4897AFF00000013000000050000000FC099
          8BFFCEB0A6FFCDAFA3FFCEAFA3FFCDAEA2FFCCADA2FFCCADA1FFCCACA1FFCBAC
          A0FFCBACA0FFCBACA0FFCAAC9FFFCBAB9FFFCAAA9FFFCAAA9FFFCAAA9EFFC9A8
          9DFFCAA99DFFC9A89CFFC8A89BFFC8A89BFFC8A79BFFC8A79BFFC7A79AFFC7A6
          9AFFC7A59AFFC7A599FFC7A69AFFB58B7CFF00000012000000050000000EC19A
          8DFFFCFAF9FFF9F3EFFFF9F2EFFFF9F2EFFFF9F3EFFFF9F2EFFFCDAEA3FFF9F2
          EFFFF9F2EEFFF9F2EFFFF9F2EFFFF9F2EEFFF9F2EEFFCBABA0FFF9F2EFFFF9F1
          EEFFF8F1EEFFF8F2EEFFF9F1EDFFF9F1EDFFC9A89CFFF9F1EEFFF8F1EDFFF8F1
          EDFFF8F1EEFFF8F1EDFFFBF7F4FFB68D7EFF00000012000000050000000DC29D
          8EFFFDFAF9FFFAF3F0FFF9F3F0FFF9F3F0FFF9F2F0FFF9F3EFFFCEB0A3FFF9F2
          F0FFF9F2F0FFF9F3EFFFF9F2EFFFF9F2F0FFF9F2EFFFCCADA1FFF9F2EFFFF9F2
          EFFFF9F2EFFFF9F2EEFFF9F2EEFFF9F2EEFFCAAA9EFFF9F2EEFFF9F1EEFFF9F2
          EDFFF8F1EEFFF9F1EEFFFAF7F4FFB78E80FF00000011000000040000000DC39E
          90FFFDFAF9FFF9F4F1FFF9F3F1FFF9F3F0FFFAF3F0FFF9F3F0FFCFB1A6FFFAF2
          F0FFF9F3F0FFF9F3F0FFFAF3EFFFF9F2F0FFF9F2EFFFCDAEA2FFF9F3EFFFF9F3
          EFFFF9F3EFFFF9F2EFFFF9F2EFFFF9F3EEFFCBABA0FFF8F2EFFFF9F1EFFFF9F1
          EEFFF9F2EEFFF9F1EEFFFAF7F4FFB99082FF00000011000000040000000CC49F
          92FFFCFAFAFFFAF4F1FFF9F4F1FFFAF3F1FFFAF3F1FFF9F3F1FFD0B2A7FFF9F3
          F0FFF9F3F0FFF9F3F0FFFAF3F0FFFAF3F0FFF9F3F0FFCEB0A4FFF9F3F0FFF9F3
          F0FFF9F3EFFFFAF2EFFFF9F2EFFFF9F3EFFFCCADA1FFF9F2EFFFF9F2EFFFF9F2
          EFFFF9F2EFFFF9F2EFFFFBF7F4FFBA9284FF00000010000000040000000CC5A0
          94FFFDFAFAFFFCF9F7FFFCF9F7FFFCF9F7FFFCF9F7FFFCF9F7FFD0B4AAFFFBF9
          F7FFFCF9F7FFFBF9F6FFFCF9F7FFFBF8F7FFFBF8F6FFCFB2A7FFFBF8F7FFFBF8
          F7FFFCF8F6FFFBF8F7FFFBF8F6FFFBF8F6FFCDAFA4FFFBF8F5FFFBF7F6FFFCF7
          F5FFFBF7F5FFFBF7F6FFFBF8F5FFBB9385FF0000000F000000040000000BC287
          56FFD6A87BFFCA935EFFCA925EFFC9915DFFC9915CFFC9905CFFC98F5BFFC88E
          5AFFC88E59FFC78D59FFC78C58FFC68C57FFC68B56FFC58B56FFC58A55FFC489
          54FFC48853FFC48853FFC38752FFC38652FFC28651FFC28550FFC28550FFC185
          4FFFC1834EFFC0824EFFC88D5AFFB3713DFF0000000F000000040000000BC287
          56FFECD2ADFFDDB17AFFDEB07AFFDEB079FFDDB079FFDDAF78FFC9905CFFDDAE
          77FFDCAE78FFDDAE76FFDCAD76FFDCAD75FFDCAC75FFC68B56FFDBAB75FFDCAB
          74FFDBAB74FFDBAA73FFDAAA73FFDAAA73FFC28751FFDAA972FFD9A971FFDAA9
          72FFD9A871FFDAA870FFDDAE7BFFB3713DFF0000000E000000040000000AC388
          57FFEDD5B1FFDFB37DFFDEB27CFFDEB27BFFDEB27BFFDEB17AFFCA915DFFDDB1
          7AFFDEB079FFDEAF79FFDDAF79FFDDAE78FFDDAF77FFC68C58FFDCAD76FFDCAE
          76FFDCAD76FFDCAC76FFDCAC75FFDBAB74FFC38852FFDBAB74FFDBAB73FFDBAA
          73FFDAAA73FFDAAA72FFDEB17CFFB3713EFF0000000E000000030000000AC388
          57FFEED7B4FFE0B47EFFE0B47EFFE0B37EFFDFB37DFFDFB27DFFCA925DFFDFB2
          7CFFDFB27BFFDFB27BFFDEB17BFFDDB07AFFDEB07AFFC78D58FFDDAF79FFDDAF
          78FFDCAF78FFDCAF78FFDCAE77FFDCAE77FFC38854FFDCAC76FFDCAD75FFDCAC
          75FFDBAC75FFDCAB75FFDEB37FFFB3713EFF0000000D0000000300000008C388
          57FFF0D7B6FFE3BD8BFFE0B680FFE1B67FFFE0B580FFE0B47FFFCA935FFFE0B4
          7EFFDFB37DFFDFB37EFFDFB37DFFDFB37CFFDFB27CFFC88E5AFFDEB27BFFDEB0
          7AFFDDB17AFFDEB07AFFDDB07AFFDDAF79FFC48A54FFDDAF79FFDCAF78FFDDAE
          77FFDCAD77FFDCAD76FFE0B582FFB3723FFF0000000C0000000300000006B17B
          4EE8E4C4A0FFF0D9B8FFF0D9B8FFF0D9B7FFEFD8B7FFF0D7B6FFD6AA7EFFEFD7
          B5FFEED7B4FFEED7B5FFEED6B3FFEED5B3FFEDD5B1FFD3A679FFEDD5B1FFEDD4
          B0FFEDD3AFFFECD3AFFFECD3AEFFECD3ADFFD1A174FFECD1ACFFEBD1ABFFEBD1
          ABFFEBCFABFFEBCEAAFFDEB990FFA4663AE90000000900000002000000043022
          16469A6C46CCC38857FFC38857FFC38856FFC28856FFC28756FFC28755FFC286
          55FFC18655FFC18654FFC08654FFC08553FFC08453FFC08452FFC08352FFBF83
          51FFBF8251FFBE8150FFBE8150FFBE814FFFBE804EFFBD804EFFBC7F4DFFBC7E
          4CFFBC7E4CFFBB7D4BFF92633BCD2C1C10480000000500000001000000010000
          0003000000060000000700000008000000080000000800000008000000080000
          0008000000080000000900000009000000090000000900000009000000090000
          0009000000090000000A0000000A0000000A0000000A0000000A0000000A0000
          000A0000000A0000000A00000008000000050000000200000001000000000000
          0001000000010000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000131B3B462637778D344CA9C7405CCAF0405CCAF0344C
          A9C72637778D131B3B4600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000090C1B202536778C415DCEF34463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF415DCEF32536778C090C1B200000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000090C
          1B202B3F89A34463D8FF3B58BFE22638798F131C3D480608121506081215131C
          3D482638798F3B58BFE24463D8FF2B3F89A3090C1B2000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002536
          778C4463D8FF354DA8C6151F434F000000000000000000000000000000000000
          000000000000151F434F354DA8C64463D8FF2536778C00000000000000000000
          000000000000848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF575757A9131B3B46415D
          CEF33B58BFE2151F434F00000000000000000000000000000000000000000000
          00000000000000000000151F434F3B58BFE2415DCEF3131B3B46000000000000
          000000000000848484FF00000000000000000000000000000000848484FF0000
          0000000000000000000000000000848484FF00000000000000002637778D4463
          D8FF2638798F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000002638798F4463D8FF2637778D000000000000
          000000000000848484FF00000000000000000000000000000000848484FF0000
          0000000000000000000000000000848484FF0000000000000000344CA9C74463
          D8FF131C3D480000000000000000000000000000000000000000000000000000
          0000000000000000000000000000131C3D484463D8FF344CA9C7000000000000
          000000000000848484FF00000000000000000000000000000000848484FF0000
          0000000000000000000000000000848484FF0000000000000000405CCAF04463
          D8FF0608121500000000000000000000000000000000848484FF848484FF8484
          84FF848484FF848484FF00000000060812154463D8FF405CCAF0000000000000
          000000000000848484FF00000000000000000000000000000000848484FF0000
          0000000000000000000000000000848484FF0000000000000000405CCAF04463
          D8FF0608121500000000000000000000000000000000848484FF848484FF8484
          84FF848484FF848484FF00000000060812154463D8FF405CCAF0000000000000
          000000000000848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF1A1A1A32344CA9C74463
          D8FF131C3D4800000000000000000000000000000000848484FF848484FF0000
          0000000000000000000000000000131C3D484463D8FF344CA9C7000000000000
          000000000000848484FF00000000000000000000000000000000848484FF0000
          0000000000000000000000000000848484FF00000000000000002637778D4463
          D8FF2638798F00000000000000000000000000000000848484FF848484FF0000
          00000000000000000000000000002638798F4463D8FF2637778D000000000000
          000000000000848484FF00000000000000000000000000000000848484FF0000
          0000000000000000000000000000848484FF0000000000000000131B3B46415D
          CEF33B58BFE2151F434F000000000000000000000000848484FF848484FF0000
          00000000000000000000151F434F3B58BFE2415DCEF3131B3B46000000000000
          000000000000848484FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002536
          778C4463D8FF354DA8C6151F434F0000000000000000848484FF848484FF0000
          000000000000151F434F354DA8C64463D8FF2536778C00000000000000000000
          000000000000848484FF0000000000000000000000004463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0000000000000000090C
          1B202B3F89A34463D8FF3B58BFE22638798F131C3D480608121506081215131C
          3D482638798F3B58BFE24463D8FF2B3F89A3090C1B2000000000000000000000
          000000000000848484FF848484FF848484FF000000004463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000848484FF5656
          56A6161A293B2536778C415DCEF34463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF415DCEF32536778C090C1B200000000000000000000000000000
          000000000000848484FF0000000000000000000000004463D8FF4463D8FF0000
          00000000000000000000000000004463D8FF4463D8FF00000000000000000000
          0000606060BA00000000131B3B462637778D344CA9C7405CCAF0405CCAF0344C
          A9C72637778D131B3B461A1A1A33000000000000000000000000000000000000
          000000000000848484FF0000000000000000000000004463D8FF4463D8FF0000
          00000000000000000000000000004463D8FF4463D8FF00000000000000000000
          0000848484FF000000000000000000000000000000000707070E000000000000
          000000000000000000007F7F7FF5000000000000000000000000000000000000
          000000000000848484FF0000000000000000000000004463D8FF4463D8FF0000
          00000000000000000000000000004463D8FF4463D8FF00000000000000000000
          0000848484FF00000000000000000000000000000000848484FF000000000000
          00000000000000000000848484FF000000000000000000000000000000000000
          000000000000848484FF0000000000000000000000004463D8FF4463D8FF0000
          00000000000000000000000000004463D8FF4463D8FF00000000000000000000
          0000848484FF00000000000000000000000000000000848484FF000000000000
          00000000000000000000848484FF000000000000000000000000000000000000
          000000000000848484FF848484FF848484FF000000004463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF000000000000000000000000000000000000
          000000000000848484FF0000000000000000000000004463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000000000
          0000848484FF00000000000000000000000000000000848484FF000000000000
          00000000000000000000848484FF000000000000000000000000000000000000
          000000000000848484FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000848484FF00000000000000000000000000000000848484FF000000000000
          00000000000000000000848484FF000000000000000000000000000000000000
          000000000000848484FF00000000000000000000000000000000848484FF0000
          0000000000000000000000000000848484FF0000000000000000000000000000
          0000848484FF00000000000000000000000000000000848484FF000000000000
          00000000000000000000848484FF000000000000000000000000000000000000
          000000000000848484FF00000000000000000000000000000000848484FF0000
          0000000000000000000000000000848484FF0000000000000000000000000000
          0000848484FF00000000000000000000000000000000848484FF000000000000
          00000000000000000000848484FF000000000000000000000000000000000000
          000000000000848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF000000000000000000000000000000000000
          000000000000848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF000000000000000000000000000000000000
          000000000000848484FF848484FF848484FF0000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000848484FF848484FF848484FF000000000000000000000000000000000000
          000000000000848484FF848484FF848484FF00000000848484FF848484FF0000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF00000000848484FF848484FF0000
          0000848484FF848484FF848484FF000000000000000000000000000000000000
          00000000000000000000000000000000000000000000848484FF848484FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000848484FF848484FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000848484FF848484FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000848484FF848484FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003827174D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003827174DB8824DFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003827
          174DB8824DFFB8824DFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003827174DB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003827174DB8824DFFB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003827174DB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB47F4AF9A47544E59065
          3BC7735230A0513922702A1E123A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003827174DB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB7814BFD805B35B349331E650E0A0613000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF825C36B43A2918510000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003827174DB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFA67545E8543C
          2375000000000000000000000000000000000000000000000000000000000000
          0000000000000000000014160F21000000003827174DB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF593F257B0000000000000000000000000000000000000000000000000000
          00000000000014160F2173805BC4535C418C020302043827174DB8824DFFB882
          4DFFB8824DFFB8824DFF0000000000000000060503090605030919110A223425
          1648573D2478805B36B2AF7A48F2B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFAF7B4AF445311D6000000000000000000000000000000000000000000000
          0000000000004047326C97A776FF97A776FF717C58BE0C0E0A153827174DB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          0000000000000000000033241547765432A4B8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF8D643BC518110A21000000000000000000000000000000000000
          000000000000667150AC97A776FF97A776FF97A776FF869369E213150F203827
          174DB8824DFFB8824DFF00000000000000000000000000000000000000000000
          0000000000000000000000000000040302055D422781B67F4BFCB8824DFFB882
          4DFFB8824DFFB8824DFF4E37216C000000000000000000000000000000000000
          000000000000839167DE97A776FF97A776FF97A776FF97A776FF272B1F420000
          00003827174DB8824DFF00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000006E4D2E99B8824DFFB882
          4DFFB8824DFFB8824DFF7B5834AC000000000000000000000000000000000000
          00000000000095A373FB97A776FF97A776FF97A776FF97A776FF0607050A0000
          0000000000003827174D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000031231544B8824DFFB882
          4DFFB8824DFFB8824DFF9F7042DE000000000000000000000000000000000000
          000000000000839167DE97A776FF97A776FF97A776FF97A776FF282D1F440000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002E32244D00000000000000000705030AB8824DFFB882
          4DFFB8824DFFB8824DFFB4804CFB000000000000000000000000000000000000
          000000000000667150AC97A776FF97A776FF97A776FF97A776FF5B6447990000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000097A776FF2E32244D0000000030221442B8824DFFB882
          4DFFB8824DFFB8824DFF9F7042DE000000000000000000000000000000000000
          0000000000004047326C97A776FF97A776FF97A776FF97A776FF94A475FC4C54
          3C81030302050000000000000000000000000000000000000000000000000000
          0000000000000000000097A776FF97A776FF2E32244D17100A20A27243E2B882
          4DFFB8824DFFB8824DFF7B5834AC000000000000000000000000000000000000
          00000000000014160F2175805AC597A776FF97A776FF97A776FF97A776FF97A7
          76FF606B4CA42A2E214700000000000000000000000000000000000000000000
          0000000000000000000097A776FF97A776FF97A776FF2E32244D0F0B06158861
          39BEB8824DFFB8824DFF4E37216C000000000000000000000000000000000000
          00000000000000000000393F2C6090A071F497A776FF97A776FF97A776FF97A7
          76FF97A776FF8E9E70F2697552B2474F38782B2F214814161022050604090506
          0409000000000000000097A776FF97A776FF97A776FF97A776FF2E32244D0302
          010464472A8C8D643AC418110A21000000000000000000000000000000000000
          00000000000000000000000000004951397B97A776FF97A776FF97A776FF97A7
          76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
          76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF2E32
          244D0000000018110A2100000000000000000000000000000000000000000000
          000000000000000000000000000000000000454D367588986AE897A776FF97A7
          76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
          76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
          76FF2E32244D0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000303525516B7653B497A7
          76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
          76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
          76FF97A776FF2E32244D00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000B0C09133C42
          2F656A7553B396A674FD97A776FF97A776FF97A776FF97A776FF97A776FF97A7
          76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
          76FF2E32244D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000022261B3A424934705F6949A076825BC788966AE592A272F997A7
          76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF2E32
          244D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000097A776FF97A776FF97A776FF97A776FF2E32244D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000097A776FF97A776FF97A776FF2E32244D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000097A776FF97A776FF2E32244D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000097A776FF2E32244D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002E32244D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000020000000400000005000000050000
          0004000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000004000000090000001100000015000000160000
          00110000000A0000000400000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000020000000908121B38173970BA204E9CF5204E9BF51638
          6FBB040C183A0000000A00000003000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000100000004000000112B639DD979B9DFFFBCECF9FF6BBFEBFF4492
          D2FF154388DC0000001300000005000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000100000006020509213475BAFFA0E6FBFFB9EFFBFF68BFECFF54AF
          E9FF1C52A2FF0104092700000007000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000020000000807101C3C3676BBFF9DE3FAFFABE9F9FF5EB8E9FF54AE
          E8FF1F57A5FF030B184000000009000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000002000000090B1A2D563777BBFF9BE0F9FF99E2F6FF55B1E5FF51AC
          E8FF245BA8FF051126590000000B000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000020000000B0F213C6D3677BCFF99DDF8FF84D9F3FF4AAAE2FF4EA9
          E6FF2660ABFF0716326F0000000C000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000020000000C112849833678BDFF96DAF8FF7CD4F1FF42A4DFFF4AA7
          E4FF2864AFFF081B3E850000000E000000030000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000030000000D152E599B367ABFFF95D8F7FF75D0EFFF399EDDFF46A4
          E3FF2B6AB4FF091E4B9E0000000F000000040000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010000000500000010173566B1367CC2FF92D6F7FF6ECCEEFF3299DBFF42A1
          E2FF2D6FB9FF0A2255B300000013000000070000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          00050000000C0102041D21518ED93079C3FF4697D7FF4099D8FF2A82CFFF338B
          D5FF296BB9FF0C2A6ADA000103220000000F0000000700000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000002000000060000
          000E0E213D7026549BF23877BDFF4A99DAFF3E98DAFF3190D7FF2D88D4FF328C
          D6FF398BD4FF2F6CB6FF25599FF30E223F730000001300000009000000030000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000002000000070204081B1D43
          78C13575BAFF55A2DCFF60ACE1FF55A8E0FF41A3DEFF3698DCFF308FD7FF2B87
          D2FF2E8CD4FF3890D5FF3685CEFF2968B4FF1B437AC4020408210000000A0000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000603070C20225089D14794
          D2FF61B1E6FF72BAE8FF6EB9E8FF5DB4E5FF4AAFE3FF3EA4E1FF3597DBFF2C8A
          D5FF2F8DD6FF3F9ADCFF4298DCFF3B90D7FF2E78C3FF1F4C8AD603070C260000
          0009000000030000000100000000000000000000000000000000000000000000
          0000000000000000000000000001000000040101020F224E84C74E9BD7FF6AB9
          EBFF81C6EEFF8ACAEFFF7EC5EEFF6CC3EBFF52BBE8FF41AAE5FF389DDFFF2D8D
          D7FF2F8BD6FF449FDEFF4DA3E3FF469CE1FF3990D8FF2D78C5FF1D4781CA0001
          0216000000070000000200000001000000000000000000000000000000000000
          00000000000000000000000000020000000816335482438CCAFF6FC0EFFF81CA
          F2FF99D6F4FF9DD8F3FF8AD1F2FF77CEF0FF55C2ECFF43B0E6FF3AA3E2FF3093
          DAFF2B8BD6FF3898DCFF50AAE6FF54A9E7FF469EE4FF378ED8FF2A6EB9FF122C
          50880000000E0000000400000001000000000000000000000000000000000000
          0000000000000000000100000005060E162A3478B7FB65B8E9FF7CC8F3FF9DD8
          F7FFACE1F8FFACE1F7FF97D9F5FF7AD4F2FF56C8EDFF44B4E8FF3BA5E3FF3095
          DCFF2A8AD5FF3697DBFF52AEE5FF5AB0EBFF50A6E7FF429BE1FF348AD4FF2761
          AAFB050B14320000000800000002000000010000000000000000000000000000
          00000000000000000002000000081E466A984896D0FF6EBFEDFF8DD2F6FFCEEF
          F8FFD3F2F8FFB6E6F9FF9CDEF7FF7FDAF3FF57CBEDFF42B4E8FF3AA5E3FF3095
          DBFF2888D4FF3191D7FF4EAAE4FF5EB4ECFF58ACEBFF49A0E5FF3A92DCFF2C74
          BEFF1636619E0000000E00000003000000010000000000000000000000000000
          0000000000000000000304090E1C377EB9F559ACDEFF79C5F1FFBAE6F9FFDAF4
          F8FFDEF6F8FFCCF0F9FFA3E3F8FF82DFF4FF56CFEEFF41B4E7FF38A5E3FF3096
          DBFF2584D2FF2B8BD3FF47A7E0FF61B6EAFF5EB1ECFF50A6E7FF3E96DFFF3085
          D0FF265FA7F603070C2500000006000000010000000000000000000000000000
          00000000000100000005153145634190CBFF60B2E4FF8ED2F6FFD2F1F8FFDFF7
          F9FFE2F8F9FFD8F5F8FFAAE8F9FF7DDFF3FF54CDEEFF3FB4E7FF37A5E2FF2E95
          DBFF2381D0FF2888D2FF45A5E0FF60B7EAFF62B4EDFF55A9E9FF439BE2FF338B
          D5FF2A6DB8FF0E233D6A00000009000000020000000000000000000000000000
          0000000000010000000625587BA24596CFFF66B6E7FFA6DDF8FFD8F4F9FFE2F8
          F9FFE5FAF9FFD8F6F8FFB5EDF8FF7FE0F4FF53CFEEFF3FB4E7FF36A4E2FF2C93
          DAFF2381D0FF2585CFFF3D9FDDFF5EB7E9FF64B6EDFF59ABEAFF469FE4FF368F
          D9FF2B76C0FF193D6AA70000000C000000030000000000000000000000000000
          000000000002000000073377A3CF4494CEFF6EBBEAFFB5E4F9FFDEF6F9FFE4F9
          FAFFE4F9FAFFDCF6FBFFD7F4FBFFCAF1FBFFCFF3FBFFD2F5FCFFCFF5FCFFC4F0
          FCFFB0E2F7FFACE1F6FF9ED8F2FF8ED1F2FF79C3F0FF60B1ECFF4BA2E6FF3992
          DBFF2C7DC7FF22528DD30000000E000000040000000000000000000000000000
          000000000002000000073E8EC3F364B2E0FFA4E1F7FFE1F7FCFFD7E7F3FF9EB9
          DCFF7C9FCFFF5985C1FF4375B7FF3D72B8FF1857ACFF1A5EB3FF1E6ABAFF277C
          C2FF549CD3FF5BA4D7FF6BB1E0FF80BFE7FF94CCEEFFBDE8F7FFA2D7F3FF59A8
          E2FF2E83CDFF2962A7F400000010000000040000000000000000000000000000
          000000000002000000074297CEFEC1ECF9FFBBCFE6FF517CBEFF1A54ADFF1F5A
          B2FF2462B6FF2566B7FF2068B8FF1C69BAFF2071BFFF257DC7FF2E8CCFFF3DA1
          D7FF55ADDDFF60B5E3FF62B9E7FF5CB4E8FF4EABE6FF3B97DAFF549CD6FFA6D3
          ECFF7EB8E3FF2C69B0FE0000000F000000040000000000000000000000000000
          000000000001000000063D8DBFEBE8F2F9FF285FB2FF1658B2FF2067BDFF2971
          C4FF2D75C4FF2D77C5FF2577C2FF2175C3FF247EC7FF2B8ACFFF369BD6FF4AB2
          DFFF68C1E9FF78CDF0FF7BD3F1FF74CEF3FF65C2F1FF4EAEE8FF3190D3FF348A
          CCFFCCEAF7FF2761A2EA0000000C000000030000000000000000000000000000
          000000000001000000031C3F546B9ECAE6FFC2D6ECFF568FCFFF246FC4FF2B76
          C8FF2F78C8FF2E7BC7FF277AC5FF2279C5FF2881CBFF2F8ED1FF3AA0D9FF50BA
          E4FF70CAECFF83D7F3FF89DEF7FF81D9F9FF71CEF5FF57B8EDFF64B2E2FFAFDA
          F1FF85B5DBFF112A466F00000008000000020000000000000000000000000000
          00000000000000000001000000041D3A4B6072ADD3F4C8E1F1FFE7F0F9FFB0CC
          EBFF90B8E2FF6DA3D8FF5294D1FF4E94D1FF2F86CCFF2F90D2FF3CA1DAFF57BC
          E5FF89D6F0FF97E0F5FFA6EAFAFFACE8FAFFB3E7FAFFCAEEFAFFAAD3EBFF5F98
          C6F5162E44660000000A00000004000000010000000000000000000000000000
          000000000000000000000000000100000004060C0F192A526A834A8AB2D37CBA
          E0FFA1CDE8FFC5E0F1FFDBECF6FFDAEBF6FFEAF4FAFFFAFDFEFFF7FCFEFFDFF1
          F8FFC9E5F4FFC3E3F3FFAAD5ECFF8ABFE1FF6BA9D6FF3E79A6D522456388050A
          0E1E000000080000000300000001000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000004000000060810
          141F1F3D4F633263819E3B7398B84382ABCF4484AFD551A0D5FF509FD3FF4282
          AED53E7DA8D0376E93B92E5C7DA01B374C67070E13240000000A000000070000
          0004000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0002000000030000000500000006000000060000000700000008000000080000
          0008000000080000000700000007000000050000000400000002000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000001000000010000000200000002000000020000
          0002000000020000000200000001000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000130D081A3F2D1B5866482B8E886039BCA27244E0B27E4BF7B27E4BF7A272
          44E0886039BC66482B8E3F2D1B58130D081A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001F160D2B5C41
          2780976B3FD1B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF976B3FD15C4127801F160D2B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000010100014B351F6894693ECDB882
          4DFFB7814DFE875F38BB5C41267F3727174C1A120B2406050309060503091A12
          0B243727174C5C41267F875F38BBB7814DFEB8824DFF94693ECD4B351F680101
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000110C071865472A8CB8824DFFB8824DFF7A56
          33A93B2A19520000000000000000000000000000000000000000000000000000
          00000000000000000000000000003B2A19527A5633A9B8824DFFB8824DFF6547
          2A8C110C07180000000000000000000000000000000000000000000000000000
          00000000000000000000110C07186E4D2E98B8824DFF9F7143DD523A22710504
          0207000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000005040207523A22719F7143DDB882
          4DFF6E4D2E98110C071800000000000000000000000000000000000000000000
          0000000000000101000165472A8CB8824DFF956A3FCF3D2B1954000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003D2B1954956A
          3FCFB8824DFF65472A8C01010001000000000000000000000000000000000000
          0000000000004B351F68B8824DFF9F7143DD3D2B195400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003D2B
          19549F7143DDB8824DFF4B351F68000000000000000000000000000000000000
          00001F160D2B94693ECDB8824DFF523A22710000000000000000000000000000
          000000000000000000000F0B0615986B3FD2B8824DFFB8824DFFB8824DFFA776
          46E71F160D2B0000000000000000000000000000000000000000000000000000
          0000523A2271B8824DFF94693ECD1F160D2B0000000000000000000000000000
          00005C412780B8824DFF7A5633A9050402070000000000000000000000000000
          00000000000000000000000000000F0B0615966A3FD0B8824DFFB8824DFFB882
          4DFFAA7847EB24190F3200000000000000000000000000000000000000000000
          0000050402077A5633A9B8824DFF5C412780000000000000000000000000130D
          081A976B3FD1B7814DFE3B2A1952000000000000000000000000000000000000
          0000000000000000000000000000000000000F0B0615966A3FD0B8824DFFB882
          4DFFB8824DFFAC7A48EF2A1E123A000000000000000000000000000000000000
          0000000000003B2A1952B7814DFE976B3FD1130D081A00000000000000003F2D
          1B58B8824DFF875F38BB00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000E0A0614956A3FCFB882
          4DFFB8824DFFB8824DFFAF7C49F32F2114410000000000000000000000000000
          00000000000000000000875F38BBB8824DFF3F2D1B5800000000000000006648
          2B8EB8824DFF5C41267F00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000E0A0613956A
          3FCFB8824DFFB8824DFFB8824DFFB27D4AF63525164900000000000000000000
          000000000000000000005C41267FB8824DFF66482B8E00000000000000008860
          39BCB8824DFF3727174C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000E0A
          061395693ECEB8824DFFB8824DFFB8824DFFB47F4BF93B2A1952000000000000
          000000000000000000003727174CB8824DFF886039BC0000000000000000A272
          44E0B8824DFF1A120B24000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB6804CFC422E1B5B0000
          000000000000000000001A120B24B8824DFFA27244E00000000000000000B27E
          4BF7B8824DFF06050309000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB6804CFC4933
          1E65000000000000000006050309B8824DFFB27E4BF70000000000000000B27E
          4BF7B8824DFF06050309000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB7814DFE4F38
          216D000000000000000006050309B8824DFFB27E4BF70000000000000000A272
          44E0B8824DFF1A120B24000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB7814DFE4C3620690000
          000000000000000000001A120B24B8824DFFA27244E000000000000000008860
          39BCB8824DFF3727174C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000C09
          051192673DCBB8824DFFB8824DFFB8824DFFB7814CFD48331E64000000000000
          000000000000000000003727174CB8824DFF886039BC00000000000000006648
          2B8EB8824DFF5C41267F00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000E0A06139569
          3ECEB8824DFFB8824DFFB8824DFFB6804CFC45301D5F00000000000000000000
          000000000000000000005C41267FB8824DFF66482B8E00000000000000003F2D
          1B58B8824DFF875F38BB00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000F0B0615966A3FD0B882
          4DFFB8824DFFB8824DFFB6804CFC412E1B5A0000000000000000000000000000
          00000000000000000000875F38BBB8824DFF3F2D1B580000000000000000130D
          081A976B3FD1B7814DFE3B2A1952000000000000000000000000000000000000
          000000000000000000000000000000000000110C07179A6D40D5B8824DFFB882
          4DFFB8824DFFB47F4BFA3E2C1A56000000000000000000000000000000000000
          0000000000003B2A1952B7814DFE976B3FD1130D081A00000000000000000000
          00005C412780B8824DFF7A5633A9050402070000000000000000000000000000
          0000000000000000000000000000130D081A9B6E41D7B8824DFFB8824DFFB882
          4DFFB47F4BF93B2A195200000000000000000000000000000000000000000000
          0000050402077A5633A9B8824DFF5C4127800000000000000000000000000000
          00001F160D2B94693ECDB8824DFF523A22710000000000000000000000000000
          00000000000000000000150F091D9D6F42D9B8824DFFB8824DFFB8824DFFB47F
          4BF93827174D0000000000000000000000000000000000000000000000000000
          0000523A2271B8824DFF94693ECD1F160D2B0000000000000000000000000000
          0000000000004B351F68B8824DFF9F7143DD3D2B195400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003D2B
          19549F7143DDB8824DFF4B351F68000000000000000000000000000000000000
          0000000000000101000165472A8CB8824DFF956A3FCF3D2B1954000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003D2B1954956A
          3FCFB8824DFF65472A8C01010001000000000000000000000000000000000000
          00000000000000000000110C07186E4D2E98B8824DFF9F7143DD523A22710504
          0207000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000005040207523A22719F7143DDB882
          4DFF6E4D2E98110C071800000000000000000000000000000000000000000000
          0000000000000000000000000000110C071865472A8CB8824DFFB8824DFF7A56
          33A93B2A19520000000000000000000000000000000000000000000000000000
          00000000000000000000000000003B2A19527A5633A9B8824DFFB8824DFF6547
          2A8C110C07180000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000010100014B351F6894693ECDB882
          4DFFB7814DFE875F38BB5C41267F3727174C1A120B2406050309060503091A12
          0B243727174C5C41267F875F38BBB7814DFEB8824DFF94693ECD4B351F680101
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001F160D2B5C41
          2780976B3FD1B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF976B3FD15C4127801F160D2B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000130D081A3F2D1B5866482B8E886039BCA27244E0B27E4BF7B27E4BF7A272
          44E0886039BC66482B8E3F2D1B58130D081A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00007E4C69B7AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF7E4C69B700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000AF6A93FFAF6A93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFAF6A93FFAF6A93FF00000000000000000000
          000000000000000000000000000000000000848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFFF
          FFFFAF6A93FFAF6A93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFAF6A93FFAF6A93FF00000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFAF6A93FFAF6A93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFAF6A93FFAF6A93FF00000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFAF6A93FFAF6A93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFAF6A93FFAF6A93FF00000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFAF6A93FFAF6A93FFAF6A93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFAF6A93FFAF6A93FFAF6A93FF00000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFAF6A93FFAF6A93FFAF6A93FFFFFFFFFFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFFFFFFFFFAF6A93FFAF6A93FFAF6A93FF00000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFAF6A93FFAF6A93FFAF6A93FFFFFFFFFFAF6A93FFAF6A93FFAF6A93FFFFFF
          FFFFAF6A93FFFFFFFFFFAF6A93FFAF6A93FFAF6A93FF00000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFAF6A93FFAF6A93FFAF6A93FFFFFFFFFFAF6A93FFAF6A93FFAF6A93FFFFFF
          FFFFAF6A93FFFFFFFFFFAF6A93FFAF6A93FFAF6A93FF00000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC491AFFFAF6A93FFAF6A93FFFFFFFFFFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFFFFFFFFFAF6A93FFAF6A93FF824F6DBD00000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
          84FF0000000000000000000000000000000000000000000000000000000097A7
          76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
          76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
          84FF0000000000000000000000000000000000000000000000000000000097A7
          76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
          76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
          84FF0000000000000000000000000000000000000000000000000000000097A7
          76FFFFFFFFFF97A776FFFFFFFFFF97A776FFFFFFFFFFFFFFFFFF97A776FFFFFF
          FFFFFFFFFFFFC1CAADFF97A776FFFFFFFFFF97A776FFFFFFFFFF97A776FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
          84FF0000000000000000000000000000000000000000000000000000000097A7
          76FFFFFFFFFFC1CAADFFFFFFFFFF97A776FFFFFFFFFF97A776FF97A776FF97A7
          76FF97A776FFFFFFFFFF97A776FFFFFFFFFFC1CAADFFFFFFFFFF97A776FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
          84FF0000000000000000000000000000000000000000000000000000000097A7
          76FFC1CAADFFFFFFFFFFC1CAADFF97A776FFFFFFFFFF97A776FF97A776FFC1CA
          ADFFFFFFFFFFC1CAADFF97A776FFC1CAADFFFFFFFFFFC1CAADFF97A776FFFFFF
          FFFF848484FF848484FF848484FF848484FF848484FF848484FF848484FF7777
          77E60000000000000000000000000000000000000000000000000000000097A7
          76FFFFFFFFFFC1CAADFFFFFFFFFF97A776FFFFFFFFFF97A776FF97A776FFFFFF
          FFFF97A776FF97A776FF97A776FFFFFFFFFFC1CAADFFFFFFFFFF97A776FFFFFF
          FFFF848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFF8A8A8AFA2626
          264A0000000000000000000000000000000000000000000000000000000097A7
          76FFFFFFFFFF97A776FFFFFFFFFF97A776FFFFFFFFFF97A776FF97A776FFC1CA
          ADFFFFFFFFFFFFFFFFFF97A776FFFFFFFFFF97A776FFFFFFFFFF97A776FFFFFF
          FFFF848484FFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFF8A8A8AFA2E2E2E4A0000
          00000000000000000000000000000000000000000000000000000000000097A7
          76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
          76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FFFFFF
          FFFF848484FFFFFFFFFFFFFFFFFFDDDDDDFF8B8B8BFB2E2E2E4A000000000000
          00000000000000000000000000000000000000000000000000000000000097A7
          76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
          76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FFFFFF
          FFFF848484FFFFFFFFFFDDDDDDFF8B8B8BFB2E2E2E4A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FFDDDDDDFF8B8B8BFB2E2E2E4A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF8B8B8BFB2E2E2E4A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF767676E32626264A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000001000000010000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000001000000010000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000002000000030000000400000005000000050000
          0003000000020000000100000000000000000000000000000000000000000000
          0000000000000000000100000002000000030000000400000005000000050000
          0003000000020000000100000000000000000000000000000000000000000000
          00000000000100000003000000070000000D0000001200000014000000130000
          000F000000080000000300000001000000000000000000000000000000000000
          00000000000100000003000000070000000D0000001200000014000000130000
          000F000000080000000300000001000000000000000000000000000000000000
          000000000002000000080F0802303A1D088A5F2E0BCE77390FF9602D0BCF3C1C
          078D100702330000000B00000003000000010000000000000000000000000000
          000000000002000000080F0702303A1C088A5E2C0CCE76380FF95F2D0BCF3B1B
          078D0F0702330000000B00000003000000010000000000000000000000000000
          000100000005110A042D5C3917B0B47B42FFDD984BFFF1B773FFDEA56AFFB274
          3CFF53270AB21007023200000008000000020000000000000000000000000000
          0001000000051009032D583415B0AB6C35FFD08B49FFE39B55FFCF8847FFAA68
          31FF52260BB21007023200000008000000020000000000000000000000000000
          000200000008482C1486CE9C6AFFECB16AFFDE9C56FFD28E4EFFDD9C55FFEBA7
          5AFFB2723DFF411F098C0000000D000000030000000100000000000000000000
          00020000000842271186BC8756FFDE9B57FFCE9053FFC0834BFFCD8F52FFDD99
          55FFAA6C3CFF3F1E0A8B0000000D000000030000000100000000000000000000
          00020000000A81542CCBE8C18FFFD29353FF6945229D170F08396B45239FD293
          52FFDB9D5AFF713C17CE00000011000000040000000100000000000000000000
          00020000000A734927CBD7985AFFC1854DFF5E3F229D150E08395F40239FC286
          4CFFD08C4FFF6B3616CE00000010000000040000000100000000000000000000
          000200000009B27A45F9FAE3C2FFAB6830FF150D063500000015150D0638AF6A
          30FFF7CB93FF995826F900000013000000060000000200000001000000010000
          0003000000099E6A3EF9EFBB85FF9B5E30FF120C063500000015130C06389E61
          32FFEDB880FF8D4E24F900000010000000040000000100000000000000000000
          000200000007966B42CAEED6BAFFC18A59FF623C1B9A150D0634623C1C9CC487
          4FFFEAC9A3FF845228D20000001A0000000D0000000800000008000000060000
          00060000000B865E3ACEE5C19BFFB77643FF55351C9A130C063456361D9CB877
          44FFDFB790FF774725CC0000000D000000040000000000000000000000000000
          00010000000462482F81DDBA95FFEBD5BEFFC08A5FFFA45B2BFFC18757FFEDD1
          B1FFE2BE9DFF764B2FCF0000002E000000270000002B0000002D0000002A0000
          002300000023745038CEE2BF9AFFE4BE9BFFB87B4CFF9A572AFFB87C4CFFE4BE
          99FFC49974FF4F321D8500000009000000020000000000000000000000000000
          0000000000021A140D25856543AADFBD99FFF0DDC9FFFCF4EAFFF2E1CFFFECD1
          B3FFEBD2B8FFB9A093FF875849FF875648FF865446FF845244FF815042FF6D41
          35FF6C3F34FFA48271FFE2C29FFFE3C29EFFEBD4BAFFFCEEDAFFEAD2B8FFCDA7
          84FF714D2FAC150E082A00000004000000010000000000000000000000000000
          000000000001000000021B140E24654D3580A27B53C9CA9767F9A0784FCE8B65
          48CACBB1A4FFFAF9F9FFE9D7C9FFEAD8CCFFEAD8CCFFEAD8CCFFE7D8D3FF8E67
          5CFFB59D93FFCBB6ABFFA88677FF77553CCA926E4ACCB68459F88E6744CA583F
          298217100A280000000500000001000000000000000000000000000000000000
          00000000000000000001000000020000000300000005000000070000000D0000
          001950383093CFB7AFFFFFFEFEFFEBD9D0FFBE9F92FF95685BFFBD9E92FFC6B2
          ACFF97766BFF95756AFF38211B98000000130000000600000005000000050000
          0005000000030000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000030000
          000800000018593F36AAD1B8B1FFFFFEFEFFB18D81FFE1D0C8FFB08D81FFEEDE
          D6FF936E63FF3E251EAF00000019000000050000000200000001000000010000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0003000000125F4035D0B89D92FFDECAC3FFE1D3CEFFC5A9A0FFD9C5BCFFEFE2
          D8FFDCCEC9FF58352BCF00000017000000070000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000532221D6BAA8D82FFE0D9D3FFC7B1A8FFDECBC3FFFFFFFEFFF2E4DEFFF2E6
          DEFFF2E4DCFFA68981FF2919156E0000000D0000000400000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020B08
          061F8C675BEBE6DBD4FFE9E2DCFFE1D9D4FFCEBBB3FFD8C2BBFFFFFFFFFFF5E8
          E0FFF3E9E2FFEEE2DEFF775045EE080504260000000800000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000075A41
          38A0CCB5ABFFF0E8E2FFEDE6E0FFF6F4F3FFB8A49DFF704F44CBD2BBB2FFFFFF
          FFFFF5EDE6FFF5EDE6FFC8B5AFFF462B24A20000000E00000005000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000032018153FAF8B
          7FFDF0E8E1FFF1E8E3FFFCFAF8FFC6B1A9FF4530288D00000016523B338BD2BB
          B2FFFFFFFFFFF8F0EAFFF7EFEAFF947065FD180F0C4500000009000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000010202010B87675AD5E3D5
          CEFFF1E9E5FFFCFAF9FFCAB6AEFF4B352D8A00000009000000050000000C533C
          3489D2BBB3FFFFFFFFFFF9F3EEFFE5DBD7FF674136D501010112000000050000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000347373072C9ADA4FFF2EB
          E6FFFCFAF9FFCFBAB3FF4E383289000000070000000100000001000000040000
          000B533C3488D3BCB3FFFFFFFFFFF9F5F3FFB49990FF33211B75000000090000
          0003000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001130F0D22AE8D80F1EFE6DFFFFCFB
          F9FFD3BEB7FF513D368700000006000000010000000000000000000000010000
          000400000009533D3487D3BCB4FFFFFFFFFFF4EEEBFF855F52F10D0807280000
          0005000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000004775E54AADECCC3FFFDFBFAFFD7C2
          BBFF55413A860000000600000001000000000000000000000000000000000000
          00010000000300000008543D3686D3BDB4FFFFFFFFFFD3C3BDFF52362CAC0000
          0009000000030000000100000000000000000000000000000000000000000000
          00000000000000000000000000012D232042C9AA9EFFFDFBFAFFDAC6BFFF5944
          3E85000000050000000100000000000000000000000000000000000000000000
          0000000000010000000300000007543E3585D4BDB5FFFFFFFFFF9F7F73FF1E13
          1046000000050000000100000000000000000000000000000000000000000000
          000000000000000000000504030AA7887CDEF4EDEAFFDCC9C2FF5B4841840000
          0004000000010000000000000000000000000000000000000000000000000000
          000000000000000000010000000200000006543E3684D4BDB5FFEEE8E6FF7350
          42DE0302020E0000000300000001000000000000000000000000000000000000
          000000000000000000015C4B457BDECAC1FFDFCCC5FF5D4B4483000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000010000000200000005553E3683D5BEB6FFBFA8
          A0FF3F2A227D0000000500000001000000000000000000000000000000000000
          0000000000001A151324C5A79DF5E1CFC8FF604E478200000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000200000004553F3782D5BE
          B6FF926E63F5130C0A2900000002000000010000000000000000000000000000
          0000000000018D746AB5E3D1CAFF625049810000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000035540
          3881D5BFB7FF604137B600000003000000010000000000000000000000000000
          000000000001CDAC9EFF63514B80000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000256403880AD8071FF00000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010101010302020206040202090403020A0403030B0403030B0403
          030B0403030B0503030C0503030C0503030C0503030C0503030C0503030C0503
          030D0403030C0503030B03020208010101030000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010000020402020A0A0505180D0808230F090928100A0A2A100A0A2B100A
          0A2B110B0A2C110B0A2D110B0A2D110B0A2E110B0A2E120B0B2F120B0B30120B
          0B30120B0B30100A0A2B0C07071E0503030D0101010300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000002020206080605177B584CC6A47564FFA37464FFA37463FFA37363FFA272
          62FFA27261FFA2705FFFA26F5FFFA06F5FFFA06E5DFF9F6E5DFF9F6D5CFF9E6D
          5CFF9E6D5CFF9C6B5BFF775145CA0B07071E0302020801000001000000000000
          0000000000000000000000000001000000010000000100000001000000010100
          0002030202090C080721A67767FFFEFDFCFFFCFAF8FFFCFAF8FFFCFAF7FFFCF9
          F7FFFCF9F7FFFCF8F6FFFBF8F6FFFBF7F5FFFBF7F5FFFBF6F4FFFBF7F3FFFAF6
          F3FFFBF5F2FFF9F5F1FF9F6D5CFF100A0A2A0402020A01000001000000000000
          0000000000010000000100000002000000040000000500000005000000060000
          00070302020E0D080827A77A69FFFEFDFCFFF7F1EBFFF7F0EBFFF8F0EAFFF7F0
          EAFFF7EFEAFFF7EFEAFFF7EDE9FFF6EFE8FFF6EFE8FFF6EDE8FFF7EDE8FFF6ED
          E6FFF4EDE6FFFBF6F3FFA06F5EFF110B0A2D0503030B01000001000000000000
          000000000001000000040000000A000000100000001400000015000000150100
          00160302021D0C080734A97A6AFFFEFDFCFFF8F1ECFFF7F1ECFFF7F0EBFFF8F1
          EAFFF8F0EAFFF7F0EAFFF7F0E9FFF7F0E9FFF6EFE9FFF6EDE9FFF7EDE9FFF7EF
          E9FFF6EDE8FFFBF7F4FFA27061FF110B0A2D0403030B01000001000000000000
          000000000002000000090E1F32592B62A1EA2E6AB1FF2E6AB0FF2D69AFFF2D67
          ADFF2E66ABFF6E8CB6FFAC7D6EFFFEFDFDFFF8F2EDFFF8F1EDFFF8F1ECFFF8F1
          ECFFF8F1EBFFF8F0EBFFF8F0EAFFF7EFEAFFF7F0EAFFF7EFEAFFF7F0E9FFF7EF
          E9FFF6EDE9FFFBF7F5FFA37363FF100A0A2B0403030B01000001000000000000
          0000000000040000000F2D65A1E869AFDEFF66BAEBFF65B9ECFF62B8EBFF61B7
          EAFF60B3E6FF8CBCDBFFAD7F70FFFEFDFDFFF8F2EDFFF8F2EDFFF8F2EDFFF8F1
          ECFFF8F1EDFFF7F1ECFFF8F1ECFFF7F0EBFFF7F0EAFFF7F0EBFFF7EFEAFFF7EF
          EAFFF7EFEAFFFCF8F5FFA47564FF100A092A0403030B01000001000000000000
          000000000004000000113573B6FF82CAF1FF58B2EAFF51AEE8FF4FADE8FF4DAB
          E6FF4EA8E2FF82B6DAFFAF8172FFFEFEFDFFF8F3EFFFF8F2EFFFF9F2EFFFBB91
          7FFFBB907EFFBA8E7DFFB98E7CFFB78C7AFFB78A7AFFB68978FFF8F1EBFFF7F0
          EBFFF7F0EBFFFCF8F6FFA57667FF0F0A09280403030A01000001000000000000
          000000000004000000123777B8FF88CCF1FF54B1E9FF53B0E9FF52AFE8FF51AE
          E8FF51AAE3FF84B8DCFFB08474FFFEFEFEFFF9F3F1FFF9F3F0FFF9F3EFFFF4EB
          E6FFF4EBE6FFF3EAE5FFF4EAE5FFF2E9E5FFF2E9E3FFF2E8E2FFF8F1ECFFF7F1
          ECFFF7F0EBFFFCF9F7FFA77968FF0F0909270403030A01000001000000000000
          000000000004000000113A7BBAFF8ED0F3FF58B3EAFF56B2E9FF55B1EAFF54B1
          E8FF53ACE4FF86BBDDFFB18576FFFEFEFEFFF9F4F1FFFAF4F0FFF9F4F0FFBF96
          85FFBE9684FFBD9483FFBC9281FFBB9180FFBB8F7EFFBA8E7DFFF8F1EDFFF8F1
          ECFFF8F1ECFFFCFAF8FFA87B6AFF0E0908250402020901000001000000000000
          000000000004000000103C7EBDFF93D3F3FF5BB6EAFF59B5EAFF58B4EAFF58B2
          E8FF56AFE5FF88BEDFFFB48778FFFEFEFEFFFAF6F2FFFAF6F2FFFAF4F1FFF5ED
          E8FFF4ECE7FFF4EBE8FFF4ECE7FFF4EBE6FFF4EAE6FFF3EAE5FFF9F3EFFFF8F2
          EFFFF8F2EDFFFCFAF8FFA97C6DFF0E0908240402020901000001000000000000
          0000000000040000000F3E82BFFF98D5F3FF5EB8ECFF5DB8ECFF5BB6EBFF5BB4
          E9FF59B3E7FF8ABFE0FFB58979FFFFFEFEFFFAF7F3FFFAF6F3FFF9F6F2FFC39C
          8DFFC19B8AFFC19989FFBF9886FFBE9685FFBE9484FFBD9382FFF9F3EFFFF9F3
          EFFFF8F3EFFFFDFBF9FFAD7E6FFF0D0808220402020901000001000000000000
          0000000000040000000F4285C1FF9DD9F5FF62BBECFF62BAECFF5FB9ECFF5EB8
          ECFF5DB5E8FF8CC1E2FFB78A7BFFFFFEFEFFFAF7F3FFFAF7F3FFFAF7F3FFF6EF
          EBFFF6EFEAFFF5EFEAFFF5EEE9FFF4ECE9FFF4ECE8FFF4ECE7FFFAF4F1FFF9F3
          F0FFF9F3F0FFFDFBFAFFAE8272FF0C0807210302020801000001000000000000
          0000000000030000000E4388C3FFA3DCF5FF66BEEDFF65BDEDFF64BBEDFF62BB
          ECFF61B8E9FF8FC4E3FFB78D7CFFFFFEFEFFFAF8F4FFFBF7F4FFFAF7F4FFC7A4
          93FFC6A291FFC6A090FFC39E8EFFC29C8DFFC29A8AFFC19988FFF9F6F1FFF9F4
          F1FFF9F4F1FFFDFCFAFFAF8374FF0C07071F0302020801000001000000000000
          0000000000030000000D468BC5FFA8DEF6FF6AC1EEFF69C0EEFF68BFEEFF66BD
          EDFF65BBEAFF91C7E6FFB98F7EFFFFFFFEFFFBF8F6FFFAF8F6FFFBF8F6FFF7F1
          ECFFF6F0ECFFF7F0ECFFF6F0ECFFF6F0EAFFF5EFEAFFF5EFEAFFFAF6F2FFF9F4
          F2FFFAF4F1FFFDFCFBFFB18575FF0B07061D0302020801000001000000000000
          0000000000030000000C488FC7FFADE1F7FF6EC3EFFF6CC2EEFF6BC2EEFF6AC0
          EEFF68BDEAFF94C9E7FFBA9081FFFFFFFFFFFBF9F7FFFBF9F7FFFBF8F6FFCBA9
          9AFFCAA798FFC9A696FFC9A594FFC7A392FFC7A292FFC5A08FFFFAF7F3FFFAF7
          F2FFFAF6F2FFFEFDFBFFB28677FF0B07061C0302020701000001000000000000
          0000000000030000000C4A92C9FFB1E3F7FF72C6F0FF70C5EFFF6FC4EFFF6DC3
          EEFF6CC0EBFF96CBE7FFBB9282FFFFFFFFFFFDF9F7FFFDF9F8FFFBF9F7FFFBF9
          F7FFFBF9F6FFFBF8F6FFFBF8F6FFFBF8F6FFFBF8F4FFFBF7F4FFFAF8F4FFFAF7
          F4FFFAF6F3FFFEFDFCFFB48879FF0A06061A0302020701000001000000000000
          0000000000030000000B4D95CAFFB7E6F8FF76C9F0FF74C8F1FF74C7F0FF72C6
          EFFF70C3EDFF9ACFEAFFBD9383FFFFFFFFFFFDFAF8FFFDFAF9FFFDF9F8FFFBF9
          F7FFFBF9F8FFFBF9F7FFFBF9F7FFFBF9F6FFFBF9F6FFFAF8F6FFFBF8F4FFFBF7
          F4FFFBF8F4FFFEFDFCFFB6897AFF090606190202020601000001000000000000
          0000000000030000000A4F98CCFFBBE8F9FF7ACCF2FF78CBF2FF77CAF1FF75CA
          F0FF74C6EEFF9DD1EBFFBD9384FFFFFFFFFFFEFAF9FFFDFAF9FFFDFAF8FFFDFA
          F8FFFBFAF9FFFDFAF8FFFDF9F8FFFBF9F7FFFBF9F7FFFBF9F7FFFDF9F6FFFBF8
          F6FFFBF8F4FFFEFDFDFFB78D7CFF090605180202020601000001000000000000
          0000000000020000000A529ACEFFBFE9F9FF7ECFF2FF7CCEF2FF7BCDF2FF79CD
          F1FF78CAEFFF9FD5EDFFBE9585FFFFFFFFFFFEFBFAFFFDFBF9FFFDFBF9FFFDFA
          F9FFFDFBF9FFFDFAF8FFFDFAF8FFFDFAF8FFFDFAF8FFFBF9F8FFFDF9F7FFFBF8
          F7FFFBF8F6FFFEFEFDFFB98F7DFF080505150201010501000001000000000000
          00000000000200000009539DD0FFC4EDFAFF83D2F3FF81D1F3FF7FCFF4FF7DCF
          F3FF7CCDF0FFA3D7EFFFBF9687FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFEFFFFFE
          FEFFFFFEFEFFFFFEFEFFBA907FFF070404120201010401000001000000000000
          0000000000020000000856A0D1FFC7EEFBFF86D5F4FF85D4F4FF84D2F4FF82D2
          F4FF80D0F3FFA6DAF3FFB8A6A1FFC09688FFBF9687FFBF9686FFBF9687FFBE96
          86FFBE9586FFBE9485FFBE9584FFBD9484FFBD9484FFBD9384FFBD9384FFBD92
          83FFBD9282FFBD9282FF8D6D62C40403030C0101010300000000000000000000
          0000000000020000000858A2D3FFCBEFFBFF8AD8F6FF89D8F5FF88D6F5FF86D5
          F4FF84D3F3FFAADFF5FFA2D5EBFF9DCBE4FF9CCBE3FF9DCAE2FF9BCBE3FF9BCC
          E3FF9BCBE4FF9ACCE5FF9BCDE6FF9BCEE8FF9CCEE8FFC1E0EEFF82ACCFFF0604
          0419060404130603030F0402020B020101050000000100000000000000000000
          000000000002000000075AA4D4FFCFF1FCFF8EDBF6FF8CDBF6FF8BD8F4FF8AD5
          F3FF87D2F0FF79BFDDFF6CADCDFF6BABCBFF6BA9CAFF6AAACBFF6BACCCFF6BAC
          CEFF6CB0D2FF6EB5D6FF70B8DBFF72BEE3FF72C0E7FFADDCF1FF4D90C5FF0201
          010F010101060101010301010102000000010000000000000000000000000000
          000000000002000000065BA7D5FFD1F3FCFF92DDF7FF90DCF6FF8ED8F2FF9AD7
          ECFF8EBCD0FF7EA0B5FF7A98ACFF7D95A7FF7C94A4FF7C93A4FF7B96A8FF7F9D
          AEFF7DA2B7FF76A8C2FF6CADCBFF70B5D6FF73BFE2FFAFDDEFFF4F94C9FF0000
          0009000000020000000000000000000000000000000000000000000000000000
          000000000001000000065DA9D7FFD5F4FCFF96E1F8FF9AE0F5FFB5DDECFF99B4
          C1FF7D7D83FF7E6963FF806458FF845C4FFF84594BFF7F584BFF7A5A50FF765E
          59FF777274FF8394A1FF87A5B5FF74A9C4FF73B6D4FFB3DCEEFF5398CAFF0000
          0008000000020000000000000000000000000000000000000000000000000000
          0000000000010000000560ACD8FFD8F6FDFFACEAFAFFBEE6F3FF9AACB5FF8F71
          68FFAF8D7DFFC3A898FFCCB3A2FFD4BDACFFD7C0AFFFCFB6A5FFC3A794FFB597
          85FF9B7666FF7D5D51FF7F888EFF8FA9B8FF85BBD1FFB8DEECFF559ACBFF0000
          0007000000020000000000000000000000000000000000000000000000000000
          00000000000100000003589CC4E8BBE4F3FFD8F6FDFFDFEDF0FF9D7C6FFFE6DA
          D3FFF4EFEAFFF4EDE7FFF2EBE4FFE9DDD3FFDDC9BAFFDBC5B6FFE3D1C4FFE8DA
          D0FFE5D6CAFFD1BCAFFF825D51FFB2BCBFFFB4D1DBFFA2CEE2FF4F8EB9E80000
          0005000000010000000000000000000000000000000000000000000000000000
          00000000000000000002182B35424E88AACA62ADD8FFA9CDE3FFAC8F83FFB087
          78FFAF8877FFAD8576FFAD8475FFEDE1D9FFE4D5C8FFE0D0C2FF9E7564FF9E75
          62FF9D7462FF9B7361FF997669FF9CB7CAFF5899C5FF477DA1CD162833450000
          0003000000010000000000000000000000000000000000000000000000000000
          00000000000000000001000000020000000300000003000000060000000B0000
          000E0000000E0000001281645AC2E2D1C9FFF3EDE7FFDCCBC0FF795B4FC90000
          0017000000130000001300000011000000080000000500000004000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000001000000010000
          00010000000100000002130F0D227E6358B7AF897CFA75584DBA120D0C230000
          0002000000010000000100000001000000010000000100000001000000010000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000050000000F0000001D000000270000
          00270000001C0000000D00000004000000010000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          00010000000100000002000000070000001402010131291D18A7462F28EA442E
          27E624181498000000260000000D000000030000000000000000000000000000
          0000000000010000000200000004000000060000000700000007000000070000
          0007000000070000000700000007000000070000000700000007000000070000
          0007000000080000000D0000001902010139392821CB867169FFCEC0B7FFCBBB
          B3FF876E64FF2F231E980000001B000000060000000100000000000000000000
          000000000002000000070000000F00000016000000190000001A0000001A0000
          001B0000001B0000001B0000001B0000001B0000001C0000001C0000001C0000
          001D000000210000002D020101473B2924CF8E7C73FFD2C1B7FFBFA99DFFBEAA
          9DFFD0BFB7FF5C433AE500000025000000090000000100000000000000000000
          0001000000040000000F78554AC1A57666FFA57565FFA57465FFA57464FFA374
          63FFA47363FFA37362FFA37262FFA27162FFA27161FFA17060FFA07060FF9F6F
          5FFFB5968DFFAC9891FF6A524BFF907E74FFD2C2B7FFBEAA9DFFBDA89AFFBFAA
          9CFFD1C2BAFF624840ED00000026000000090000000100000000000000000000
          00010000000500000014A77868FFFDFCFAFFFBF8F6FFFBF8F5FFFBF7F4FFFBF7
          F4FFFAF7F4FFFAF6F3FFFAF6F2FFF9F4F1FFF8F4F0FFF9F4F0FFF4EFEBFFE9E5
          E1FFD0CBC7FF76645CFF948279FFD4C5BBFFC1AD9FFFC0AB9DFFBFA89BFFD1C1
          B6FF9E897FFF3B2C27A80000001C000000060000000100000000000000000000
          00010000000600000016AA796AFFFDFCFBFFF6ECE6FFF6ECE6FFF6ECE6FFF6EC
          E5FFF3EAE4FFF1E8E2FFEFE6E0FFEDE5DEFFECE4DDFFEAE1DAFFE2D9D3FFCEC5
          BFFF7A655EFF97857CFFD6C7BDFFC4B0A3FFC2AFA1FFC1ADA0FFD1C2B7FFA692
          88FF503C35CE030202320000000F000000030000000000000000000000000000
          00010000000500000015AA7C6CFFFDFCFBFFF7EDE8FFF7EDE8FFF6ECE6FFF2EB
          E4FFEEE6E1FFE8E0DAFFE2D9D2FFDAD3CCFFD6CEC8FFD3CCC6FFC8BFB9FF7D69
          60FF9A877EFFD7C7BFFFC7B3A6FFC5B1A5FFC3AFA3FFD2C4BAFFA9978DFF7F67
          5EFF030202440000001800000006000000010000000000000000000000000000
          00010000000500000015AC7D6FFFFEFDFCFFF7EFE9FFF7EDE8FFF4EAE6FFEEE6
          E1FFE3DAD4FFC0B5AEFF87726AFF6F554CFF674B41FF6D544AFF6D534AFF9986
          7CFFDACDC3FFC9B7AAFFC8B6A8FFC6B2A6FFD5C6BDFFAB988FFF8C7770FFB09B
          94FF000000290000000C00000002000000000000000000000000000000000000
          00000000000500000014AD7F70FFFEFDFCFFF7F0EAFFF5EDE7FFEFE8E2FFDFD7
          D2FF9B8A82FF7D655BFFB5A69EFFDBD0C9FFE6DDD7FFDACEC8FFC5B7AFFFDBCE
          C5FFCBB9AEFFC9B7ACFFC9B7AAFFD7C8BFFFAE9C91FF8F7971FFD3CDC9FFB79A
          8FFF0000001E0000000700000001000000000000000000000000000000000000
          00000000000500000013AE8172FFFEFDFCFFF6EFE9FFF2EBE5FFE7E0D9FF9583
          7BFF937F75FFE1D9D0FFDBCFC7FFD5C5BBFFD1C1B6FFD2C2B7FFD5C6BCFFCEBD
          B1FFCCBBAFFFCCBAADFFD7CAC1FFB1A096FF937E75FFD1C9C3FFEAE6E2FFA375
          65FF000000190000000600000001000000000000000000000000000000000000
          00000000000400000012AF8475FFFEFDFDFFF6EFE9FFEFE8E3FFC4B8B2FF836B
          60FFEBE5DCFFD7C9BEFFD5C6BBFFD4C5B9FFD2C3B8FFD1C1B6FFD0BFB5FFCFBE
          B3FFCEBDB1FFDACDC5FFA8958BFF968179FFD4CBC5FFE7DED7FFF5F1EDFFA576
          67FF000000170000000600000001000000000000000000000000000000000000
          00000000000400000011B18676FFFEFDFDFFF5EEEAFFEBE6E0FF97837AFFC5BA
          AFFFE3D8CFFFE3D8D2FFF5F0E7FFFDFBF0FFFBF9EEFFE9E1D6FFD2C2B8FFCFC0
          B5FFD4C5BBFFCDC0B7FF81685DFFCFC8C2FFE6DFD8FFF2E9E2FFF9F4F1FFA879
          69FF000000160000000600000001000000000000000000000000000000000000
          00000000000400000010B48878FFFEFDFDFFF5EEE9FFE9E4DEFF7F665DFFF1ED
          E2FFE5DBD3FFBBACA1FF937C70FF90796EFFBFB1A5FFFDFCF1FFE9E0D6FFD1C1
          B6FFD2C2B9FFDBCFC9FF856D61FFDCD5CFFFEEE6E1FFF6ECE7FFFBF6F4FFAA7A
          6AFF000000150000000500000001000000000000000000000000000000000000
          0000000000040000000FB58979FFFEFEFDFFF5EFECFFEAE5E0FF7A6156FFF7F5
          EAFFAB988DFFA59289FFD8D0CBFFD8D1CCFF9B887FFFBDB0A5FFFCFAEFFFD3C2
          B8FFD2C2B8FFE4DAD4FF856B5FFFDFD8D2FFF0E7E4FFF6ECE7FFFBF7F4FFAA7D
          6DFF000000150000000500000001000000000000000000000000000000000000
          0000000000030000000EB78C7DFFFEFEFEFFF6F1EDFFEDE8E5FF866E64FFB09E
          93FFAE9D94FFE4DFDAFFEDE8E3FFEAE4DFFFD9D2CEFF876E64FFFEFCF1FFD4C4
          B9FFD4C6BBFFDDD2CBFF8F786DFFE3DBD7FFF2EAE5FFF6EEE8FFFBF8F5FFAC7F
          6FFF000000140000000500000001000000000000000000000000000000000000
          0000000000030000000DB78E7FFFFEFEFEFFF7F2EFFFF2EDE9FFA49189FFB6A5
          9DFFE8E4E0FFF1EBE8FFF4EDEAFFEDE9E5FFD6CFCCFF7D645AFFF6F2E9FFD4C6
          BBFFDCD0C8FFC2B3ABFFA6948AFFE8E1DCFFF3ECE7FFF7EFEAFFFCF8F6FFAD80
          71FF000000130000000500000000000000000000000000000000000000000000
          0000000000030000000CB98F80FFFFFEFEFFF9F3F0FFF7F3EEFFF4EEEBFFF2ED
          EAFFF4EEECFFF6F0EDFFF2ECE8FFE5E0DCFF8E7870FFA5948AFFE5DAD2FFD7C9
          BFFFE3DAD1FF9F897FFFCDC2BCFFEEE8E4FFF5EEE9FFF7F0EBFFFAF6F3FFAE83
          73FF000000120000000400000000000000000000000000000000000000000000
          0000000000030000000BBB9182FFFFFEFEFFFAF6F3FFF8F5F1FFF8F5F1FFF8F3
          F0FFF7F2EFFFF6F0ECFFE9E4E0FF8F7B73FF877168FFE2D8D1FFE4D9D1FFECE6
          DDFFB4A398FFB5A59EFFEAE4E0FFF4EDE8FFF7F0EBFFF6EFE9FFF8F4F2FFB083
          74FF000000110000000400000000000000000000000000000000000000000000
          0000000000030000000BBC9384FFFFFEFEFFFAF7F3FFFBF7F3FFFAF6F2FFFAF7
          F2FFF9F5F1FFF4F0ECFF8F7A73FF826B62FFF4F1E7FFF1EDE2FFD8CEC3FFAC99
          8EFFC1B3ADFFE9E4E0FFF3EDE9FFF7F1EEFFF6F0EAFFF5EDE7FFF6F1EEFFB385
          76FF000000100000000400000000000000000000000000000000000000000000
          0000000000020000000ABD9685FFFFFFFEFFFBF8F4FFFAF7F4FFFAF7F3FFFAF7
          F3FFF9F6F2FFF5F1EEFFBEAFA7FFAE9B90FFA79186FFAC988EFFB9A9A1FFDBD4
          D0FFEEE9E7FFF3EEEAFFF7F1EDFFF6F0EBFFF4EDE8FFF2E9E5FFF3ECE9FFB389
          78FF0000000F0000000400000000000000000000000000000000000000000000
          00000000000200000009BF9787FFFFFFFFFFFBF8F6FFFBF8F4FFFAF7F6FFFAF7
          F4FFFAF7F3FFF8F5F1FFF5F2EEFFF1EDEAFFF0ECE9FFEFECE9FFF2EEEAFFF2EC
          E9FFF3ECE8FFF4ECE8FFF3EAE6FFF0E5E2FFEEE2DDFFEBDED9FFECE1DDFFB589
          7AFF0000000E0000000400000000000000000000000000000000000000000000
          00000000000200000008C09989FFFFFFFFFFFBF8F7FFFBF8F6FFFBF8F6FFFBF8
          F6FFFAF8F4FFFAF6F3FFF9F6F3FFF9F5F2FFF8F5F2FFF7F3F0FFF7F3EFFFF4ED
          E8FFEEE2DCFFE6D8D0FFE1D2CAFFE0CEC7FFDECAC2FFDBC7BEFFDCC8C2FFB78C
          7DFF0000000D0000000300000000000000000000000000000000000000000000
          00000000000200000007C19A8BFFFFFFFFFFFBF9F7FFFBF9F7FFFBF9F6FFFDF9
          F6FFFBF8F6FFFAF8F6FFFBF8F6FFFBF8F4FFFAF7F4FFFBF7F4FFF8F2EFFFEFE6
          DFFFB38B7CFFA57766FFA47564FFA47464FFA47363FFA37363FFCFB5ACFFB78C
          7DFF0000000A0000000300000000000000000000000000000000000000000000
          00000000000200000007C19B8CFFFFFFFFFFFBF9F8FFFBF9F8FFFDF9F7FFFBFA
          F7FFFBF9F7FFFBF9F7FFFBF8F6FFFBF8F6FFFBF8F6FFFAF8F4FFF7F2EFFFECDF
          DAFFAB7E6DFFFFFFFFFFFFFEFEFFFFFDFCFFFEFCFAFFFCF9F7FFCAAFA6FF4C35
          2D86000000060000000200000000000000000000000000000000000000000000
          00000000000100000006C39D8DFFFFFFFFFFFDFAF8FFFDFAF9FFFDF9F8FFFDFA
          F8FFFDF9F7FFFDF9F8FFFBF9F7FFFBF9F7FFFBF9F6FFFBF8F6FFF6F1EDFFEBDF
          DBFFB08574FFFFFEFEFFFEFBFAFFFDF9F7FFFCF6F3FFCEB2A8FF4F3830860000
          0008000000030000000100000000000000000000000000000000000000000000
          00000000000100000005C39D8FFFFFFFFFFFFEFAF9FFFDFAFAFFFDFBF9FFFDFA
          F9FFFDFAF8FFFDFAF9FFFDF9F8FFFBF9F7FFFBF9F8FFF9F6F4FFF6F0ECFFECE1
          DBFFB68C7DFFFFFEFEFFFDF9F6FFFBF6F3FFD1B5ACFF533B3386000000080000
          0003000000010000000000000000000000000000000000000000000000000000
          00000000000100000004C49E90FFFFFFFFFFFDFBFAFFFDFBFAFFFDFBF9FFFDFB
          F9FFFEFAF9FFFDFAF9FFFDFAF8FFFDFAF8FFF9F7F6FFF9F4F2FFF5EDEBFFEBE1
          DDFFBC9584FFFFFEFEFFFBF6F3FFD4BAAFFF563F368500000007000000030000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000100000004C5A190FFFFFFFFFFFEFDFBFFFDFBFBFFFDFDFBFFFEFB
          FAFFFEFBFAFFFDFBF9FFFDFBF9FFFBF7F6FFF9F5F3FFF7F1EEFFF3EBE7FFEDE1
          DCFFC19B8BFFFFFEFEFFD6BCB2FF59423A840000000600000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000100000003C6A191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F9FFF9F6F4FFF6F1F0FFF2ECE9FFEEE3
          E0FFE4D2CBFFDBC5BDFF5A453E83000000050000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000293776CBEC6A291FFC6A192FFC6A191FFC59F91FFC69F
          92FFC59F91FFC59F90FFC59F91FFC49F90FFC49E90FFC49D8FFFC49E8EFFC39D
          8EFFC39D8EFF5D48418200000004000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000020000000200000003000000030000
          0003000000030000000300000003000000030000000400000004000000040000
          0004000000040000000300000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000130D081A3F2D1B5866482B8E886039BCA27244E0B27E4BF7B27E4BF7A272
          44E0886039BC66482B8E3F2D1B58130D081A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001F160D2B5C41
          2780976B3FD1B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF976B3FD15C4127801F160D2B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000010100014B351F6894693ECDB882
          4DFFB7814DFE875F38BB5C41267F3727174C1A120B2406050309060503091A12
          0B243727174C5C41267F875F38BBB7814DFEB8824DFF94693ECD4B351F680101
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000110C071865472A8CB8824DFFB8824DFF7A56
          33A93B2A19520000000000000000000000000000000000000000000000000000
          00000000000000000000000000003B2A19527A5633A9B8824DFFB8824DFF6547
          2A8C110C07180000000000000000000000000000000000000000000000000000
          00000000000000000000110C07186E4D2E98B8824DFF9F7143DD523A22710504
          0207000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000005040207523A22719F7143DDB882
          4DFF6E4D2E98110C071800000000000000000000000000000000000000000000
          0000000000000101000165472A8CB8824DFF956A3FCF3D2B1954000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003D2B1954956A
          3FCFB8824DFF65472A8C01010001000000000000000000000000000000000000
          0000000000004B351F68B8824DFF9F7143DD3D2B195400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003D2B
          19549F7143DDB8824DFF4B351F68000000000000000000000000000000000000
          00001F160D2B94693ECDB8824DFF523A22710000000000000000000000000000
          00000000000000000000000000001F160D2BA77646E7B8824DFFB8824DFFB882
          4DFF986B3FD20F0B061500000000000000000000000000000000000000000000
          0000523A2271B8824DFF94693ECD1F160D2B0000000000000000000000000000
          00005C412780B8824DFF7A5633A9050402070000000000000000000000000000
          0000000000000000000024190F32AA7847EBB8824DFFB8824DFFB8824DFF966A
          3FD00F0B06150000000000000000000000000000000000000000000000000000
          0000050402077A5633A9B8824DFF5C412780000000000000000000000000130D
          081A976B3FD1B7814DFE3B2A1952000000000000000000000000000000000000
          0000000000002A1E123AAD7A48F0B8824DFFB8824DFFB8824DFF966A3FD00F0B
          0615000000000000000000000000000000000000000000000000000000000000
          0000000000003B2A1952B7814DFE976B3FD1130D081A00000000000000003F2D
          1B58B8824DFF875F38BB00000000000000000000000000000000000000000000
          00002F211441AF7C49F3B8824DFFB8824DFFB8824DFF956A3FCF0E0A06140000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000875F38BBB8824DFF3F2D1B5800000000000000006648
          2B8EB8824DFF5C41267F00000000000000000000000000000000000000003526
          164AB27D4AF6B8824DFFB8824DFFB8824DFF956A3FCF0E0A0613000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000005C41267FB8824DFF66482B8E00000000000000008860
          39BCB8824DFF3727174C000000000000000000000000000000003B2A1952B47F
          4BF9B8824DFFB8824DFFB8824DFF95693ECE0E0A061300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003727174CB8824DFF886039BC0000000000000000A272
          44E0B8824DFF1A120B24000000000000000000000000422E1B5BB6804CFCB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          000000000000000000001A120B24B8824DFFA27244E00000000000000000B27E
          4BF7B8824DFF0605030900000000000000004A341F66B7814CFDB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000006050309B8824DFFB27E4BF70000000000000000B27E
          4BF7B8824DFF0605030900000000000000004F38216EB7814DFEB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          0000000000000000000006050309B8824DFFB27E4BF70000000000000000A272
          44E0B8824DFF1A120B240000000000000000000000004C362069B7814DFEB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
          000000000000000000001A120B24B8824DFFA27244E000000000000000008860
          39BCB8824DFF3727174C0000000000000000000000000000000049331E65B781
          4CFDB8824DFFB8824DFFB8824DFF92673DCB0C09051100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003727174CB8824DFF886039BC00000000000000006648
          2B8EB8824DFF5C41267F00000000000000000000000000000000000000004530
          1D5FB6804CFCB8824DFFB8824DFFB8824DFF95693ECE0E0A0613000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000005C41267FB8824DFF66482B8E00000000000000003F2D
          1B58B8824DFF875F38BB00000000000000000000000000000000000000000000
          0000412E1B5AB6804CFCB8824DFFB8824DFFB8824DFF976B3FD10F0B06150000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000875F38BBB8824DFF3F2D1B580000000000000000130D
          081A976B3FD1B7814DFE3B2A1952000000000000000000000000000000000000
          0000000000003E2C1A56B47F4BFAB8824DFFB8824DFFB8824DFF9A6D40D5110C
          0718000000000000000000000000000000000000000000000000000000000000
          0000000000003B2A1952B7814DFE976B3FD1130D081A00000000000000000000
          00005C412780B8824DFF7A5633A9050402070000000000000000000000000000
          000000000000000000003B2A1952B47F4BF9B8824DFFB8824DFFB8824DFF9B6E
          41D7130D081A0000000000000000000000000000000000000000000000000000
          0000050402077A5633A9B8824DFF5C4127800000000000000000000000000000
          00001F160D2B94693ECDB8824DFF523A22710000000000000000000000000000
          00000000000000000000000000003827174DB47F4BF9B8824DFFB8824DFFB882
          4DFF9D6F42DA150F091D00000000000000000000000000000000000000000000
          0000523A2271B8824DFF94693ECD1F160D2B0000000000000000000000000000
          0000000000004B351F68B8824DFF9F7143DD3D2B195400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003D2B
          19549F7143DDB8824DFF4B351F68000000000000000000000000000000000000
          0000000000000101000165472A8CB8824DFF956A3FCF3D2B1954000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003D2B1954956A
          3FCFB8824DFF65472A8C01010001000000000000000000000000000000000000
          00000000000000000000110C07186E4D2E98B8824DFF9F7143DD523A22710504
          0207000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000005040207523A22719F7143DDB882
          4DFF6E4D2E98110C071800000000000000000000000000000000000000000000
          0000000000000000000000000000110C071865472A8CB8824DFFB8824DFF7A56
          33A93B2A19520000000000000000000000000000000000000000000000000000
          00000000000000000000000000003B2A19527A5633A9B8824DFFB8824DFF6547
          2A8C110C07180000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000010100014B351F6894693ECDB882
          4DFFB7814DFE875F38BB5C41267F3727174C1A120B2406050309060503091A12
          0B243727174C5C41267F875F38BBB7814DFEB8824DFF94693ECD4B351F680101
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001F160D2B5C41
          2780976B3FD1B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF976B3FD15C4127801F160D2B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000130D081A3F2D1B5866482B8E886039BCA27244E0B27E4BF7B27E4BF7A272
          44E0886039BC66482B8E3F2D1B58130D081A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000020000000500000005000000060000
          0006000000060000000600000006000000060000000600000006000000060000
          0006000000060000000600000006000000070000000700000007000000060000
          0005000000030000000100000001000000000000000000000000000000000000
          00000000000000000001000000040000000B0000001200000016000000180000
          0018000000180000001800000018000000180000001800000018000000190000
          0019000000190000001900000019000000190000001A0000001A000000180000
          00140000000C0000000500000001000000000000000000000000000000000000
          000000000001000000020000000A0B1C305A22579AEB265FAAFF255EA9FF245D
          A8FF245CA7FF245BA7FF235AA7FF235AA6FF2258A5FF2257A5FF2256A4FF2156
          A4FF2155A4FF2055A2FF2053A2FF2052A1FF1F52A1FF1F52A1FF1F50A0FF1C49
          91EB09172D5D0000000B00000003000000010000000000000000000000000000
          0000000000010000000400000011275B9CE869AEDEFF6EC1EEFF6CBFEEFF6BBE
          EDFF69BDEDFF68BDECFF66BBECFF64BAECFF63BAECFF62B9EBFF60B7EBFF5FB7
          EBFF5DB6EBFF5CB5EAFF5AB4EAFF59B3EAFF57B2E9FF56B2E9FF55B0E9FF4B99
          D6FF1B4890E90000001300000005000000010000000000000000000000000000
          00000000000100000005000000142E6AB1FF87CDF2FF67BDEDFF60BAEBFF5FB8
          ECFF5EB8ECFF5DB7EBFF5CB7EBFF5AB6EBFF5AB4EAFF59B4EAFF57B4EAFF57B3
          E9FF56B2EAFF55B1E9FF54B0E9FF53B0E8FF52AFE9FF51AEE8FF52AFE8FF63B8
          EBFF2053A1FF0000001700000005000000010000000000000000000000000000
          0000000000000000000500000014316DB2FF8CD1F2FF65BDECFF397EC0FF2865
          ADFF2863ACFF2763ACFF2762ABFF2660AAFF265FAAFF265EA9FF255EA8FF255D
          A8FF245CA7FF245BA7FF245AA6FF2259A6FF2358A4FF3070B7FF53B0E9FF67BA
          ECFF2154A3FF0000001700000006000000010000000000000000000000000000
          00000000000000000005000000133371B4FF91D3F3FF69BFEEFF2A69AFFFFCFA
          F8FFFAF5F1FFF9F5F1FFF9F5F1FFF9F5F1FFF9F5F0FFF9F5F0FFF9F5F0FFF9F4
          F0FFF9F4F0FFF9F4F0FFF9F4EFFFF9F4EFFFF9F4EFFF2359A5FF56B2EAFF6CBE
          EDFF2256A4FF0000001600000006000000010000000000000000000000000000
          00000000000000000005000000123573B6FF96D6F3FF6CC2EEFF2B6CB2FFFCFA
          F8FFF5EDE5FFF4EDE5FFF4EDE4FFF4EDE4FFF4ECE3FFF4ECE3FFF4EBE3FFF4EB
          E2FFF3EBE1FFF3EAE2FFF3EAE1FFF4EAE0FFF9F4EFFF245CA8FF58B4EAFF70C1
          EEFF2359A6FF0000001600000005000000010000000000000000000000000000
          00000000000000000004000000123777B8FF9CDAF5FF6FC5EFFF2D6FB3FFFCFA
          F9FFF5EEE6FFF6EEE5FFF5EDE5FFF5EDE5FFF4ECE5FFF4ECE4FFF4EBE4FFF4EC
          E3FFF4ECE2FFF4EBE2FFF4EAE2FFF3EBE1FFF9F4F0FF265EA9FF5CB6EBFF75C3
          EEFF245BA7FF0000001500000005000000010000000000000000000000000000
          00000000000000000004000000113A7BBAFFA1DCF6FF73C7EFFF2F71B5FFFCFB
          F9FFF5EFE7FFF5EEE6FFF5EEE6FFF6EDE5FFF5EDE6FFF5EDE5FFF5EDE5FFF5ED
          E4FFF4ECE3FFF5ECE4FFF4EBE2FFF3EBE3FFF9F5F0FF2660ABFF5FB8ECFF7BC7
          F0FF255DA8FF0000001400000005000000010000000000000000000000000000
          00000000000000000004000000103C7EBDFFA5DFF6FF76CAF0FF3074B6FFFDFB
          F9FFF7F0E8FFF6EFE8FFF6EFE8FFF6EEE7FFF5EFE7FFF5EEE6FFF5EEE6FFF5EE
          E5FFF4EDE4FFF4ECE4FFF5ECE4FFF4ECE4FFF9F5F1FF2863ACFF62BBECFF80CA
          F1FF2660ABFF0000001300000005000000000000000000000000000000000000
          000000000000000000040000000F3E82BFFFABE1F7FF7ACCF2FF3177B8FFFDFB
          F9FFF7F0E9FFF7F0E9FFFAF5EFFFF9F4F0FFF9F5EFFFF9F4EFFFF8F3EEFFF8F3
          EEFFF9F3EEFFF8F3EDFFF8F3EDFFF4EDE5FFF9F5F1FF2965ADFF66BEEDFF86CD
          F1FF2763ACFF0000001300000005000000000000000000000000000000000000
          000000000000000000040000000F4285C1FFAFE3F8FF7DCFF2FF327ABAFFFDFB
          FAFFF7F1EBFFF7F1EAFFC29B8CFFC19A8AFFC09989FFBF9787FFBE9585FFBD95
          84FFBC9382FFBC9281FFF9F3EEFFF5EDE6FFFAF6F2FF2A68B0FF69C0EEFF8BD0
          F2FF2965AEFF0000001200000005000000000000000000000000000000000000
          000000000000000000030000000E4388C3FFB4E5F9FF81D1F4FF347DBCFFFDFC
          FAFFF8F2ECFFF7F2EBFFEEE2DAFFEEE1D9FFEDE1D9FFEDE0D7FFEDDFD7FFEBDF
          D6FFEBDED6FFEBDDD4FFF8F4EFFFF5EEE6FFFAF6F2FF2C6BB2FF6CC2EEFF91D4
          F3FF2A68AFFF0000001100000004000000000000000000000000000000000000
          000000000000000000030000000D468BC5FFB8E8FAFF85D4F4FF367FBEFFFDFC
          FAFFF9F4EDFFF8F2EDFFC7A395FFC7A193FFC5A091FFC59E8FFFC49D8DFFC29C
          8CFFC19A8AFFC09889FFF9F5EFFFF6EFE8FFFAF7F3FF2E6EB4FF70C5F0FF96D7
          F4FF2B6BB1FF0000001000000004000000000000000000000000000000000000
          000000000000000000030000000C488FC7FFBCEAFAFF89D7F4FF3782BFFFFDFC
          FBFFF9F4EEFFF9F4EEFFEFE6DEFFF0E4DDFFF0E4DCFFEEE3DBFFEEE2DAFFEEE2
          DAFFEDE1D8FFEDE0D8FFFAF6F1FFF7F0E9FFFAF7F4FF2F71B5FF73C8F1FF9BD9
          F4FF2C6EB2FF0000001000000004000000000000000000000000000000000000
          000000000000000000030000000C4A92C9FFC1ECFAFF8CD9F5FF3885C2FFFDFC
          FBFFF9F5F0FFF9F5EFFFCDAC9DFFCCAA9CFFCBA99AFFC9A798FFC9A596FFC8A4
          94FFC6A393FFC5A191FFFAF6F1FFF8F1EBFFFBF8F4FF3074B7FF77CAF1FFA0DC
          F6FF2E70B4FF0000000F00000004000000000000000000000000000000000000
          000000000000000000030000000B4D95CAFFC4EEFBFF8FDCF7FF3987C4FFFDFC
          FBFFF9F6F1FFF9F5F1FFF2E8E1FFF1E7E0FFF1E7DFFFF0E6DEFFF0E5DFFFF0E4
          DDFFF0E4DCFFEFE3DCFFFAF6F3FFF8F2ECFFFBF8F5FF3177B9FF7BCDF2FFA5DF
          F7FF3073B7FF0000000E00000004000000000000000000000000000000000000
          000000000000000000030000000A4F98CCFFC8F0FBFF92DFF7FF3B8AC5FFFEFD
          FCFFFAF7F2FFFAF6F1FFD2B4A6FFD1B2A4FFD0B1A3FFCFAFA1FFCEAD9FFFCDAC
          9EFFCCAA9CFFCBA89AFFFAF7F3FFF8F3ECFFFBF8F6FF337ABBFF7ECFF3FFAAE1
          F8FF3176B8FF0000000D00000003000000000000000000000000000000000000
          000000000000000000020000000A529ACEFFCBF1FCFF96E1F8FF3C8CC7FFFEFD
          FCFFFBF8F3FFFBF7F3FFF4EBE4FFF3EAE4FFF2E9E4FFF2E9E2FFF2E8E2FFF2E7
          E1FFF2E6E0FFF0E6DFFFFBF8F4FFF8F3EEFFFBF9F6FF347CBCFF82D2F3FFAFE4
          F8FF3379BAFF0000000D00000003000000000000000000000000000000000000
          0000000000000000000200000009539DD0FFCFF3FCFF99E4F9FF3D8FC8FFFEFD
          FCFFFBF8F5FFFBF8F4FFD6BAACFFD6B9ACFFD5B8AAFFD2B4A6FFD0B2A3FFCFB1
          A2FFCFAFA2FFCEAFA1FFF9F5F1FFF8F3ECFFFBF7F5FF367EBDFF85D4F4FFB3E5
          F8FF347CBCFF0000000C00000003000000000000000000000000000000000000
          000000000000000000020000000856A0D1FFD1F4FCFF9CE5F9FF3E91C9FFFEFD
          FCFFFCF9F6FFFCF9F6FFFCF9F5FFFBF9F5FFF6F1ECFFF0E8E4FFF1EAE4FFF3EB
          E4FFF2EBE6FFF4EDE8FFF5EFE9FFF6EFEAFFF8F5F2FF3881BCFF89D5F3FFB6E6
          F7FF367EBCFF0000000B00000003000000000000000000000000000000000000
          000000000000000000020000000858A2D3FFD4F6FCFF9FE8FBFF3F93CAFFFEFE
          FDFFFCFAF6FFFBF9F5FFFAF7F4FFF0EAE3FFE8DDD7FFE9DDD7FFE9DFD9FFEAE0
          DAFFEBE2DCFFECE4DFFFEFE8E2FFF3EBE4FFF5F1EEFF3982BDFF8CD6F1FFBAE9
          F7FF3782BFFF0000000B00000003000000000000000000000000000000000000
          00000000000000000002000000075AA4D4FFD7F7FEFFA2EAFBFF4096CCFFFDFD
          FCFFFBF7F5FFF9F6F2FFE7DED8FFD9CAC2FFD7C8C0FFD6C8C0FFD8C9C3FFDACC
          C4FFDBCFC9FFDFD4CDFFE3D9D3FFE9DFD9FFF1EBE6FF3B83B9FF8FD6F0FFBFE9
          F6FF3884C0FF0000000A00000002000000000000000000000000000000000000
          00000000000000000002000000065BA7D5FFDAF8FEFFA5EDFBFF4296CCFFFBFA
          F9FFF4F2EEFFD9CEC9FFC0AFA6FFB8A59CFFB4A098FFB19D96FFB19F96FFB3A2
          9BFFB8A8A0FFBFB0A8FFCBBDB6FFD7CCC5FFE4DBD6FF3D81B4FF90D6EBFFC1E9
          F5FF3A87C2FF0000000900000002000000000000000000000000000000000000
          00000000000000000001000000065DA9D7FFDCF9FEFFA8EEFDFF519FD0FFF1F0
          EFFFCCC1BCFFA2887DFF967466FF926D5CFF8F6758FF8D6254FF8B604FFF875F
          51FF865F51FF88675BFF987F76FFB7A9A2FFCFC4BFFF4C82ADFF92D2E7FFC5ED
          F6FF3A8AC5FF0000000800000002000000000000000000000000000000000000
          000000000000000000010000000560ACD8FFDFF9FEFFB2F1FDFF9ECBE2FF8B97
          A1FF917066FFAF8C7CFFC0A393FFCDB5A4FFCFB6A6FFD7C0AFFFD4BDACFFC7AC
          9AFFC1A593FFAE8D7CFF967160FF78574EFF787D85FF8AA4B7FF9BD6E8FFC9EF
          F8FF3B8CC6FF0000000700000002000000000000000000000000000000000000
          0000000000000000000100000003589CC4E8BEE6F4FFCCF7FEFFD9EDF1FFA07C
          6DFFDECEC5FFF1E9E2FFF0E7DFFFEFE6DCFFE9DBD0FFDECBBDFFDBC5B5FFDAC6
          B6FFE2D1C4FFE6D7CBFFE4D4C8FFCBB5A7FF815E4FFFBAC7C9FFB4E2EDFFACDA
          EDFF3780B4E80000000500000001000000000000000000000000000000000000
          0000000000000000000000000002182B35424E88AACA62ADD8FFA9CDE3FFB38B
          7BFFB2897AFFB18A79FFAF8879FFB08778FFDECEC3FFE8DACFFFE3D3C6FFD7C3
          B4FFAC8473FFAB8372FFA98271FFAA806FFFA88170FF9EBBCFFF599ECBFF467E
          A3CB0F2432440000000300000001000000000000000000000000000000000000
          0000000000000000000000000001000000020000000300000003000000060000
          000B0000000E0000000E000000125F4A4296C9AC9FFFE2D3CAFFE1D1C8FFBB9D
          90FF553F37990000001700000013000000140000001100000009000000050000
          0004000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000010000
          00010000000100000001000000020403030E5F4B438EA38072E7A48172E75640
          398F040303100000000200000001000000010000000100000001000000010000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000300000005000000060000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000040000000500000004000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000040000
          000A000000110000001400000011000000090000000300000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001000000050000000D0307
          10380F2455C01D448BFA152F63BD040810310000000900000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001000000050000000D0408133D1D45
          83EC5294CBFF63AEE5FF8AB5DAFF203E70C20000001100000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000040000000D040A143C214E8DEC5AA8
          DEFF4598E0FF93D4F6FFEAF8FEFF2C5696F00000001400000005000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000000040000000C050C163B265695EC5CA9DFFF3E94
          DDFF92D3F6FFEAF9FFFF76B2DDFF254878C20000001100000004000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000030000000400000004000000040000000400000004000000030000
          000100000001000000040000000C0D0B0B392B5E9CEC5BABE0FF4096DFFF92D3
          F6FFEAF9FFFF86C8EEFF32619FEC070D16380000000A00000002000000000000
          0000000000000000000000000000000000000000000100000003000000050000
          00080000000B0000000E0000000F00000010000000100000000E0000000B0000
          0008000000070000000C110A08397B4C3EF58792A6FF4398E0FF93D4F6FFEAF9
          FFFF87C7EEFF3468A4EC070E183D0000000D0000000400000001000000000000
          00000000000000000000000000010000000200000004000000090C0807263B28
          21835C3D34C4775045F77A5145FF794F42FF794F43FF5C3B33CA3B26208C110B
          093700000014110A083B784C40EBAC8071FF835548FFA7BAC7FFEAF9FFFF88C8
          F0FF376CA9EC080F193C0000000D000000050000000100000000000000000000
          0000000000000000000100000002000000060604041749332C96856154F7B294
          89FFCFB8ADFFEBD9CFFFECDCD0FFECDBD0FFEBDBD0FFCFB8ACFFAE9084FF815A
          4EFF4E332BB76A4438EEA77D6FFF8F6354FFC3A79FFFC8B2AAFFB2CAD9FF3A71
          ADEC08101A3B0000000D00000005000000010000000000000000000000000000
          0000000000000000000200000006140E0C2F725246D9B59A8FFFE6D4CAFFF0E3
          DAFFF9F2EBFFFDF9F3FFFFFCF7FFFFFCF7FFFDFAF3FFFAF3EDFFF3E7DEFFE6D4
          CAFFAE9084FF7B5447FF745045FFBDA29AFFFDFCFBFFDDCEC8FF895F53F5110F
          0F390000000C0000000400000001000000000000000000000000000000000000
          00000000000100000005110C0B29886459EDD4C2B9FFEFE0D7FFF9F2EAFFF3EA
          DEFFD4BB9CFFC09D73FFB38855FFB48956FFC49F75FFD7BE9FFFF4EBDFFFFBF5
          F0FFF0E2D9FFCDB6ABFF825A4FFFB2A29DFFD4C6C1FF825C51EB140D0B390000
          000C000000040000000100000000000000000000000000000000000000000000
          000100000003050403127A594FD5D6C5BEFFEEE2D8FFFCF6EFFFDBC5ACFFB489
          59FFCDA872FFDDC18AFFEBD49DFFECD7A2FFE2C995FFD2B481FFBC9362FFDFCA
          B0FFFDF9F3FFF1E5DCFFCCB4A9FF815D52FF6F4D41EE110B09390000000C0000
          0004000000010000000000000000000000000000000000000000000000000000
          0001000000054836307FC1ACA3FFF0E4DDFFF8F0E8FFC4A17EFFBC915EFFDCB7
          7AFFE3BF7FFFE3C07FFFE4C585FFE7CC8FFFEBD39BFFEFDCABFFE7D4A4FFC7A2
          71FFCBAC86FFFAF5EDFFF0E3DAFFB5998EFF5A3E35BD00000015000000070000
          0001000000000000000000000000000000000000000000000000000000010000
          0003090706179B786DF5F2EBE7FFF3E8E1FFCEB094FFBD8F5CFFDFB371FFDFB7
          74FFE2BA79FFE3BE7FFFE5C385FFEFDAAFFFF1DEB4FFEBD198FFEED9A8FFF0DE
          B2FFCAA578FFD7BD9FFFF7EFE8FFE8D7CEFF8E695CFC150E0C3A000000080000
          0002000000000000000000000000000000000000000000000000000000010000
          000443332E6FC8B2AAFFF5EDE8FFECDDD0FFAE7A4FFFDAA867FFDEAE6DFFDFB2
          73FFE2B77AFFE4BB7FFF7A431CFF935526FFF1DAB4FFEAC994FFEBCD98FFEED6
          A9FFEDD6AEFFBF9065FFF1E4D8FFF1E7DFFFBAA095FF4A342E940000000B0000
          0003000000000000000000000000000000000000000000000000000000010000
          0005735950B5E5D9D6FFF3EAE3FFCCAA91FFC28A55FFDDA768FFDFAD6EFFE6BF
          93FFECCBA9FFEDCFAFFF7F401EFF97592CFFF1D8B3FFEAC493FFEBC696FFEBC9
          99FFF0D4AEFFD5AF87FFD8BAA0FFF5EBE4FFDAC6BDFF74544AD50000000E0000
          0004000000000000000000000000000000000000000000000000000000010000
          0005947369E0F8F4F3FFF3E9E2FFB17F5EFFD2955EFFDEA56CFFEDCEB3FFF0D5
          C1FFF5E2D2FFF5E0CFFFA16039FF9D5A33FFF3DBC2FFF1D5B4FFF1D6B5FFF1D7
          B7FFECC9A0FFE5C29DFFC59877FFF6EEE8FFEADCD4FF8F6A5EFA020101130000
          0004000000000000000000000000000000000000000000000000000000010000
          0006A58379F1FFFEFEFFF3EBE5FFA46946FFD89961FFE9C1A1FFF3DDD0FF8B3E
          23FFB26D4DFFAC6847FFA96240FFA35C3BFF9F5734FF995230FF954D29FFF0D2
          B4FFEABE95FFECC7A5FFBD8966FFF8F0EBFFF1E4DDFF9C7669FF0B0807220000
          0005000000010000000000000000000000000000000000000000000000010000
          0005AA897EF1FFFFFFFFF5EDE9FFA16544FFDB9861FFF4DBD0FFF5E0D9FF923D
          26FF8E3A26FF8A3923FF883924FFA95F42FFA4583CFF813822FF803720FFE7B4
          8CFFE7B68EFFEAC1A2FFBF8669FFF7F1ECFFF2E7E1FF9F7A6EFF0907061E0000
          0004000000010000000000000000000000000000000000000000000000010000
          000498796FD7FAF7F6FFF8F2EFFFAB7158FFCF8B59FFF7E7E4FFF7E4E0FFF5E0
          D9FFF4DCD2FFF2D7CBFF8C3725FFAF614BFFF5DED1FFEEC8B2FFE6AE86FFE6AE
          89FFE7B08BFFE3B495FFC69278FFF6EFEAFFF0E6E2FF987568F4020101120000
          0004000000000000000000000000000000000000000000000000000000010000
          0003776058A8EAE0DCFFFBF8F7FFC39A88FFBC764EFFF6E1DCFFF8E8E8FFF7E4
          E1FFF5DFD9FFF4DAD2FF913528FFB56352FFF5DFD4FFEEC5B0FFE6A782FFE6A8
          83FFE7AC89FFD39C7EFFD6B2A0FFF5EDE8FFE4D7D2FF7F6358CC0000000C0000
          0003000000000000000000000000000000000000000000000000000000010000
          000244383361D6C2BBFFFFFEFEFFE7D6CEFF9F593DFFE7BBA3FFFAECEFFFF8E8
          E8FFF7E4E1FFF5DFD9FF97332AFF913429FFF1D0C3FFE9B69AFFE4A37CFFE4A3
          7CFFE5AA89FFBC7D65FFEDDED7FFF4ECE7FFCCB6AFFF53423B89000000090000
          0002000000000000000000000000000000000000000000000000000000000000
          000109070711AF9187E9F8F4F3FFFBF9F8FFBD9381FFAC6643FFF4D9D1FFFAEC
          EFFFF8E8E8FFF7E3E1FFF5DFD9FFF4D9D2FFEEC7B4FFE19E75FFE29E75FFE29F
          77FFC6896CFFD4AD9DFFF5F0EAFFF6F0EDFFAE8C80FA120E0D28000000050000
          0001000000000000000000000000000000000000000000000000000000000000
          00010000000350413D6DDAC4BEFFFFFFFFFFF8F2F1FFB17F6AFFA76240FFDFAF
          95FFF4DAD3FFF8E7E6FFF2D4C8FFE9B79CFFE09A6EFFE19A6EFFDA946BFFBF7F
          62FFC99A87FFF6EEEAFFF9F4F1FFD0BBB3FF5E4B449000000009000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010202020791776EBFE8DAD6FFFFFFFFFFFBF8F6FFCDAC9EFF9F5D
          43FFBC744EFFCE855BFFDC9265FFDC9266FFD28A62FFC6825FFFB5765CFFDABB
          AEFFF7F2EEFFF9F5F2FFE5D9D4FF95776DD60B08081A00000004000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000020E0C0B16A98E83DAE9DDD7FFFFFFFFFFFCFAFAFFEBDC
          D5FFC69F90FFB27C66FFA46248FFA7664BFFBA856FFFD0A999FFEEE0D9FFF8F2
          EFFFFCF9F9FFE6D9D5FFAC8C82EA1A15132F0000000600000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000000020E0C0B17957D74C2DCC8C1FFFAF6F5FFFFFF
          FFFFFEFBFBFFFAF8F6FFF9F5F2FFF8F3F0FFF9F4F1FFFBF6F5FFFDFBFBFFFAF8
          F7FFD8C4BCFF9B8075D516121129000000060000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000100000002020202075345406DB99B90E9DDCA
          C2FFEEE5E1FFFAF8F7FFFFFFFFFFFFFFFFFFFAF7F6FFEEE5E1FFDBC7BFFFBA9C
          91F25B4B457F0706051200000005000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000003090807104036
          3256826D65A8A1877DCEB7998EEBBE9E92F49F847BCF877068B2463935610E0C
          0B19000000060000000300000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0002000000030000000400000005000000060000000500000005000000040000
          0002000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000001000000010000000100000001000000010000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000040000000500000004000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000040000
          000A000000110000001400000011000000090000000300000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001000000050000000D0307
          10380F2455C01D448BFA152F63BD040810310000000900000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001000000050000000D0408133D1D45
          83EC5294CBFF63AEE5FF8AB5DAFF203E70C20000001100000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000040000000D040A143C214E8DEC5AA8
          DEFF4598E0FF93D4F6FFEAF8FEFF2C5696F00000001400000005000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000000040000000C050C163B265695EC5CA9DFFF3E94
          DDFF92D3F6FFEAF9FFFF76B2DDFF254878C20000001100000004000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000030000000400000004000000040000000400000004000000030000
          000100000001000000040000000C0D0B0B392B5E9CEC5BABE0FF4096DFFF92D3
          F6FFEAF9FFFF86C8EEFF32619FEC070D16380000000A00000002000000000000
          0000000000000000000000000000000000000000000100000003000000050000
          00080000000B0000000E0000000F00000010000000100000000E0000000B0000
          0008000000070000000C110A08397B4C3EF58792A6FF4398E0FF93D4F6FFEAF9
          FFFF87C7EEFF3468A4EC070E183D0000000D0000000400000001000000000000
          00000000000000000000000000010000000200000004000000090C0807263B28
          21835C3D34C4775045F77A5145FF794F42FF794F43FF5C3B33CA3B26208C110B
          093700000014110A083B784C40EBAC8071FF835548FFA7BAC7FFEAF9FFFF88C8
          F0FF376CA9EC080F193C0000000D000000050000000100000000000000000000
          0000000000000000000100000002000000060604041749332C96856154F7B294
          89FFCFB8ADFFEBD9CFFFECDCD0FFECDBD0FFEBDBD0FFCFB8ACFFAE9084FF815A
          4EFF4E332BB76A4438EEA77D6FFF8F6354FFC3A79FFFC8B2AAFFB2CAD9FF3A71
          ADEC08101A3B0000000D00000005000000010000000000000000000000000000
          0000000000000000000200000006140E0C2F725246D9B59A8FFFE6D4CAFFF0E3
          DAFFF9F2EBFFFDF9F3FFFFFCF7FFFFFCF7FFFDFAF3FFFAF3EDFFF3E7DEFFE6D4
          CAFFAE9084FF7B5447FF745045FFBDA29AFFFDFCFBFFDDCEC8FF895F53F5110F
          0F390000000C0000000400000001000000000000000000000000000000000000
          00000000000100000005110C0B29886459EDD4C2B9FFEFE0D7FFF9F2EAFFF3EA
          DEFFD4BB9CFFC09D73FFB38855FFB48956FFC49F75FFD7BE9FFFF4EBDFFFFBF5
          F0FFF0E2D9FFCDB6ABFF825A4FFFB2A29DFFD4C6C1FF825C51EB140D0B390000
          000C000000040000000100000000000000000000000000000000000000000000
          000100000003050403127A594FD5D6C5BEFFEEE2D8FFFCF6EFFFDBC5ACFFB489
          59FFCDA872FFDDC18AFFEBD49DFFECD7A2FFE2C995FFD2B481FFBC9362FFDFCA
          B0FFFDF9F3FFF1E5DCFFCCB4A9FF815D52FF6F4D41EE110B09390000000C0000
          0004000000010000000000000000000000000000000000000000000000000000
          0001000000054836307FC1ACA3FFF0E4DDFFF8F0E8FFC4A17EFFBC915EFFDCB7
          7AFFE3BF7FFFE3C07FFFE4C585FFE7CC8FFFEBD39BFFEFDCABFFE7D4A4FFC7A2
          71FFCBAC86FFFAF5EDFFF0E3DAFFB5998EFF5A3E35BD00000015000000070000
          0001000000000000000000000000000000000000000000000000000000010000
          0003090706179B786DF5F2EBE7FFF3E8E1FFCEB094FFBD8F5CFFDFB371FFDFB7
          74FFE2BA79FFE3BE7FFFE5C385FFE6C78AFFE9CB91FFEBD198FFEED9A8FFF0DE
          B2FFCAA578FFD7BD9FFFF7EFE8FFE8D7CEFF8E695CFC150E0C3A000000080000
          0002000000000000000000000000000000000000000000000000000000010000
          000443332E6FC8B2AAFFF5EDE8FFECDDD0FFAE7A4FFFDAA867FFDEAE6DFFDFB2
          73FFE2B77AFFE4BB7FFFE4BF85FFE6C38BFFE9C790FFEAC994FFEBCD98FFEED6
          A9FFEDD6AEFFBF9065FFF1E4D8FFF1E7DFFFBAA095FF4A342E940000000B0000
          0003000000000000000000000000000000000000000000000000000000010000
          0005735950B5E5D9D6FFF3EAE3FFCCAA91FFC28A55FFDDA768FFDFAC6DFFDFAF
          73FFE2B379FFE4B77FFFE5BA83FFE7BF89FFE9C38FFFEAC493FFEBC696FFEBC9
          99FFF0D4AEFFD5AF87FFD8BAA0FFF5EBE4FFDAC6BDFF74544AD50000000E0000
          0004000000000000000000000000000000000000000000000000000000010000
          0005947369E0F8F4F3FFF3E9E2FFB17F5EFFD2955EFFDDA368FFE1AC76FFEAC4
          A0FFF4DEC9FFF4DBC4FFF1D8BCFFF0D1AFFFF0D3B0FFF1D5B4FFF1D6B5FFF1D7
          B7FFECC9A0FFE5C29DFFC59877FFF6EEE8FFEADCD4FF8F6A5EFA020101130000
          0004000000000000000000000000000000000000000000000000000000010000
          0006A58379F1FFFEFEFFF3EBE5FFA46946FFD89961FFE1AA78FFF0D5C3FF8C40
          25FFB26F4DFFAD6948FFA96441FFA45E3CFF9F5936FF995330FF954E2AFFF0D2
          B4FFEABE95FFECC7A5FFBD8966FFF8F0EBFFF1E4DDFF9C7669FF0B0807220000
          0005000000010000000000000000000000000000000000000000000000010000
          0005AA897EF1FFFFFFFFF5EDE9FFA16544FFDB9861FFEECBB6FFF4DCD3FF923E
          27FF8E3D26FF8A3C24FF883A24FF853B24FF843923FF823A22FF803820FFE7B4
          8CFFE7B68EFFEAC1A2FFBF8669FFF7F1ECFFF2E7E1FF9F7A6EFF0907061E0000
          0004000000010000000000000000000000000000000000000000000000010000
          000498796FD7FAF7F6FFF8F2EFFFAB7158FFCF8B59FFF6E2DDFFF6E1DCFFF4DC
          D3FFF3D8CCFFF1D2C3FFEFCEBCFFEFCAB6FFEDC5ADFFE6AC85FFE6AE86FFE6AE
          89FFE7B08BFFE3B495FFC69278FFF6EFEAFFF0E6E2FF987568F4020101120000
          0004000000000000000000000000000000000000000000000000000000010000
          0003776058A8EAE0DCFFFBF8F7FFC39A88FFBC764EFFF7E6E4FFF8E6E5FFF6E1
          DDFFF4DCD4FFF3D7CCFFF1D1C3FFF0CDBCFFEEC7B3FFE5A67FFFE6A782FFE6A8
          83FFE7AC89FFD39C7EFFD6B2A0FFF5EDE8FFE4D7D2FF7F6358CC0000000C0000
          0003000000000000000000000000000000000000000000000000000000010000
          000244383361D6C2BBFFFFFEFEFFE7D6CEFF9F593DFFECCBBCFFF9EBECFFF8E6
          E5FFF6E1DDFFF4DBD4FFF3D6CCFFF1D1C3FFEBBDA5FFE3A27AFFE4A37CFFE4A3
          7CFFE5AA89FFBC7D65FFEDDED7FFF4ECE7FFCCB6AFFF53423B89000000090000
          0002000000000000000000000000000000000000000000000000000000000000
          000109070711AF9187E9F8F4F3FFFBF9F8FFBD9381FFAD6A4AFFF8E9E9FFF9EB
          ECFFF7E6E5FFF6E1DDFFF4DBD3FFF2D1C5FFE4A57FFFE19D74FFE29E75FFE29F
          77FFC6896CFFD4AD9DFFF5F0EAFFF6F0EDFFAE8C80FA120E0D28000000050000
          0001000000000000000000000000000000000000000000000000000000000000
          00010000000350413D6DDAC4BEFFFFFFFFFFF8F2F1FFB17F6AFFA86444FFE5BF
          AFFFF6E1DEFFF5DDD7FFEEC7B5FFE19F76FFE0996DFFE19A6EFFDA946BFFBF7F
          62FFC99A87FFF6EEEAFFF9F4F1FFD0BBB3FF5E4B449000000009000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010202020791776EBFE8DAD6FFFFFFFFFFFBF8F6FFCDAC9EFF9F5D
          43FFBC744EFFCE855BFFDC9265FFDC9266FFD28A62FFC6825FFFB5765CFFDABB
          AEFFF7F2EEFFF9F5F2FFE5D9D4FF95776DD60B08081A00000004000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000020E0C0B16A98E83DAE9DDD7FFFFFFFFFFFCFAFAFFEBDC
          D5FFC69F90FFB27C66FFA46248FFA7664BFFBA856FFFD0A999FFEEE0D9FFF8F2
          EFFFFCF9F9FFE6D9D5FFAC8C82EA1A15132F0000000600000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000000020E0C0B17957D74C2DCC8C1FFFAF6F5FFFFFF
          FFFFFEFBFBFFFAF8F6FFF9F5F2FFF8F3F0FFF9F4F1FFFBF6F5FFFDFBFBFFFAF8
          F7FFD8C4BCFF9B8075D516121129000000060000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000100000002020202075345406DB99B90E9DDCA
          C2FFEEE5E1FFFAF8F7FFFFFFFFFFFFFFFFFFFAF7F6FFEEE5E1FFDBC7BFFFBA9C
          91F25B4B457F0706051200000005000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000003090807104036
          3256826D65A8A1877DCEB7998EEBBE9E92F49F847BCF877068B2463935610E0C
          0B19000000060000000300000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0002000000030000000400000005000000060000000500000005000000040000
          0002000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000001000000010000000100000001000000010000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000200000004000000050000000700000007000000070000
          0007000000050000000400000002000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0003000000070000000C0000001100000016000000190000001B0000001B0000
          001900000016000000120000000C000000070000000400000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000003000000070000
          000E000000181B12104D442D289668463DD16C483FD985594EFF84584EFF6C48
          3EDA66453CD1432C27971A120F500000001A0000001000000008000000040000
          0001000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000100000001000000040000000B000000162D1E
          1B6B764F44E2966E64FFB19187FFC9AFA6FFCEB5ADFFDECAC2FFDECAC2FFCEB5
          ACFFC8AEA5FFB08F86FF936A60FF724C43E22C1D196E000000190000000D0000
          0005000000010000000100000000000000000000000000000000000000000000
          0000000000000000000100000001000000050000000E100B0A376C4A40D0A37E
          75FFCCB4ACFFDFCCC4FFDFCCC5FFDFCCC5FFDFCBC4FFDFCCC4FFDFCBC4FFDECB
          C3FFDFCBC3FFDFCBC3FFDECBC3FFCBB1A9FF9C766CFF68463DD1100B093A0000
          0011000000060000000100000001000000000000000000000000000000000000
          00000000000000000001000000050000000F23181556875E53F0C5ACA3FFE1CE
          C6FFE0CDC6FFDDC6BCFFC99F8BFFB98063FFB47555FFA9623CFFAA613CFFB475
          55FFB97F63FFC89E8AFFDCC4BAFFE0CCC4FFDFCCC5FFBEA197FF81594EF12217
          145A000000120000000600000001000000000000000000000000000000000000
          000000000001000000040000000D23191554946D61FAD2BDB5FFE2D0C9FFE0CB
          C4FFC69A85FFAE6A45FFAC643EFFAD663EFFAD663FFFAD653FFFAD653FFFAC64
          3FFFAD643DFFAB633DFFAD6843FFC69983FFDECAC1FFE0CEC6FFCBB2AAFF8D64
          5AFA221714590000001000000005000000010000000000000000000000000000
          00000000000200000009150F0D398A655AEEDBC9C4FFE3D2CBFFDCC5BAFFB77A
          5AFFAE653FFFAF6641FFAF6741FFAF6841FFAF6842FFB06842FFB06842FFAF67
          41FFAE673FFFAE663FFFAD653FFFAC643EFFB6785AFFDAC2B7FFE1CFC8FFCFB7
          B0FF855D53EF140D0C3E0000000C000000030000000100000000000000000000
          00010000000500000011725147CBD2BEB8FFE4D4CDFFDEC8BEFFB3714DFFAF67
          40FFB06942FFB16943FFB06A42FFAE673FFFAB633CFFAA623BFFA9613BFFAA64
          3CFFAE663FFFAF6941FFAF6841FFAF6740FFAD653EFFB16E4BFFDDC5BAFFE3D1
          C9FFC0A59CFF6D4B43D000000016000000070000000100000000000000000000
          00020000000A32242065AD8A80FFECE0DCFFE4D3CCFFB87C5BFFB16942FFB26A
          44FFB36C45FFB26C45FFB06842FFD0AA96FFF2E8E4FFFFFFFFFFFFFFFFFFF0E5
          DFFFCFA894FFAE6640FFB06A43FFB16A43FFAF6741FFAE6640FFB67959FFE2CF
          C7FFE4D2CCFFA17C72FF2F211D6A0000000D0000000300000001000000010000
          00050000000F835E54DDE3D6D2FFE7D8D3FFCCA28CFFB26942FFB36C44FFB46E
          46FFB46E46FFB56E46FFB06941FFE4D0C2FFF7F0E9FFF7F0E9FFF8F3ECFFFBF8
          F5FFF6EFEBFFAF673FFFB36B45FFB16B44FFB26A43FFB06841FFAE663FFFCA9E
          89FFE4D4CEFFD0B9B2FF7B574CDF000000150000000600000001000000020000
          0007271D194FB08D83FFF4ECE9FFE5D3CCFFB4704AFFB46C46FFB56F46FFB770
          48FFB77047FFB67048FFB56E46FFB57856FFF7F1EAFFF8F1EAFFF7F1EBFFF8F2
          EDFFBE896DFFB26A43FFB56E46FFB46E46FFB36C45FFB26B43FFB16843FFB16D
          47FFE2CFC7FFE6D6D0FFA78177FF261B18570000000A00000002000000020000
          0009553E3892D2BDB7FFEFE5E2FFD4B1A0FFB46C44FFB77048FFB87149FFB871
          49FFB97249FFBB774DFFBF7C52FFB6754AFFEFE2D9FFF8F2EBFFF7F2ECFFFDFB
          FAFFB7764FFFBA774CFFB9734AFFB66F48FFB56E47FFB46E46FFB36B44FFAF68
          41FFCFA896FFE7D8D2FFC4AAA2FF503933970000000D00000003000000020000
          000B7B5B52C6E7DDD9FFEEE2DEFFC38D70FFB66F47FFB9724AFFB9734AFFBF7C
          52FFC5895CFFC88C5FFFC88C5FFFBC7F52FFECDFD5FFF8F2EDFFF9F3ECFFFFFE
          FEFFB8774DFFC28359FFC18358FFBE7E53FFBA764CFFB56F47FFB56E46FFB26B
          44FFC0896DFFE9DAD4FFD5C1BBFF74544BC90000001000000004000000030000
          000C997367ECF6F1F0FFEDE2DDFFBD7F5CFFB87249FFBD784FFFC78A5EFFCA91
          63FFCA9164FFCA9164FFCB9263FFBF8156FFEDE0D6FFF8F4EEFFF9F3EEFFFFFF
          FFFFBB7B51FFC6895CFFC4875BFFC28559FFC18257FFBD7C53FFB87149FFB46D
          46FFB97B57FFEADCD7FFE2D2CCFF8F695DED0000001200000004000000030000
          000CA57D71FAFDFCFCFFEDE4DFFFB97650FFBE7B51FFCB9266FFCD9668FFCE96
          68FFCE9668FFCE9768FFCC9466FFBC7F53FFF5EDE6FFF9F4EEFFFAF4EFFFFFFF
          FFFFBD7F54FFC88D61FFC88B5FFFC6895CFFC4865BFFC38459FFC07F54FFB871
          4AFFB5704AFFEBDED9FFE9DDD7FF9B7467FA0000001200000005000000030000
          000BA88075FAFDFCFCFFF1E8E3FFBE7F57FFCC9568FFCF996CFFD19A6CFFD09B
          6DFFD19B6EFFD09B6CFFC99164FFDBBEAAFFFAF5EFFFFAF5F0FFFAF5EFFFFFFF
          FFFFBF8258FFCB9265FFCA8F63FFC88D61FFC78A5FFFC5885CFFC38558FFBF7F
          54FFB67149FFECE0DCFFECE1DCFF9E776AFA0000001100000005000000020000
          0009A17D71ECF7F2F1FFF5EDEBFFCF9F7DFFCF9A6DFFD29D70FFD3A072FFD4A0
          72FFD3A072FFD49F72FFCA9467FFEBDACFFFFAF6F1FFFAF6F1FFFAF5F1FFFFFF
          FFFFC1865BFFCE9669FFCD9467FFCA9165FFC98F62FFC78B60FFC5885DFFC282
          59FFC18560FFEEE4DEFFEADEDAFF977266ED0000000F00000004000000020000
          000887695FC4EBE1DEFFFAF7F6FFD9B59AFFCF9C6FFFD4A175FFD5A377FFD6A5
          77FFD6A677FFD6A578FFD3A173FFC9956AFFD2AC92FFE6D4C7FFFBF6F1FFFDFB
          FAFFC88E61FFD09B6DFFCF986BFFCD9569FFCC9267FFC88E63FFC78C60FFC284
          5AFFCEA084FFF1E7E4FFE3D4CEFF7E6057C70000000D00000003000000010000
          0005604C448EDBC9C2FFFEFDFDFFEADACDFFD09D70FFD6A678FFD8A97CFFD9AA
          7CFFDAAA7DFFD9AA7DFFD6A679FFCD996DFFBF885CFFBB8057FFBD8259FFCA98
          71FFCF9A6FFFD49E71FFD29C70FFD19A6DFFCE966BFFCC9367FFC88E63FFC385
          5BFFDEC2B0FFF3EAE7FFD5C1BBFF5A453E920000000900000002000000010000
          00042D242147C5A79BFFFFFFFFFFF9F5F2FFD3A47DFFD6A77BFFDAAC81FFDCAD
          81FFDCAF82FFDCAF82FFD4A376FFD8B8A1FFFAF6F3FFEBDCD4FFD7B9A6FFC08A
          61FFD19E73FFD6A277FFD4A074FFD29D72FFD1996EFFCD966AFFC98F64FFC68D
          67FFF2E7E3FFF7F1EFFFBD9E93FF2B221E4D0000000600000001000000000000
          0002000000079F7F73DAEDE4E0FFFEFDFDFFEAD5C5FFD5A67CFFDAAF84FFDEB2
          86FFDDB386FFDFB487FFD4A67BFFF5ECE6FFFDF9F7FFFDFBFAFFFFFFFFFFEADA
          D0FFD09C70FFD8A77BFFD6A479FFD49F75FFD29D73FFCE976EFFC98F64FFDFC3
          B0FFF5EFECFFEADFDBFF97746ADC0000000C0000000400000001000000000000
          0001000000043E322E5ACAADA2FFFFFFFFFFFCFAF9FFDDBB9DFFDBAE84FFDFB4
          8AFFE0B88CFFE0B78CFFDDB387FFEDDBCBFFFCF9F6FFFBF9F5FFFDFBF8FFFCF9
          F7FFD4A379FFDAAB7FFFD8A77DFFD5A47AFFD39E73FFCE976CFFD2A686FFF6EF
          EDFFFAF7F5FFC5A59BFF3C2F2A5F000000070000000200000000000000000000
          0000000000020000000593786DC6E6D7D2FFFFFFFFFFFAF6F4FFDCB593FFDCB2
          89FFE0B98EFFE2BB90FFE2BB90FFE1B78EFFE9D2B9FFF6EEE5FFF9F3EEFFEBD5
          C1FFDCAF84FFDDAF83FFDAAA80FFD6A57AFFD29D74FFD1A07DFFF3EBE6FFF9F6
          F4FFE3D4CFFF8C7066C70000000A000000030000000100000000000000000000
          0000000000010000000219151326B5968AECF2EAE8FFFFFFFFFFFBF8F6FFE1C1
          A5FFDCB38AFFE1BA91FFE3BC94FFE3BD94FFE3BD93FFE3BB91FFE1B98FFFE0B6
          8DFFDFB389FFDCAF85FFD8A980FFD3A076FFD8B091FFF5EEEAFFFAF7F6FFF1E8
          E5FFB08F83ED1813122B00000005000000010000000000000000000000000000
          000000000000000000010000000331282544C4A598F9F0E8E5FFFFFFFFFFFDFC
          FBFFEFDFD2FFDDB792FFDFB68FFFE1B991FFE2BA92FFE1BA92FFE0B88FFFDFB3
          8BFFDBAF87FFD8A980FFD5A883FFE9D4C3FFF9F4F3FFFCFAF9FFEFE6E3FFBF9D
          91F92F2623480000000500000002000000000000000000000000000000000000
          00000000000000000000000000010000000331292544BA9B8EEEE7D8D3FFFFFF
          FFFFFFFEFEFFFCFAF9FFF2E4DAFFE7CEB7FFE3C4A8FFDAB18AFFD9B087FFE1C0
          A2FFE4C7AEFFEEDDD1FFFAF4F2FFFCFAFAFFFEFEFEFFE6D6D0FFB49589EE3027
          2447000000050000000200000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000002181412229C8177C8D6BC
          B2FFF2E9E6FFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFCFFFDFCFBFFFDFBFAFFFDFC
          FBFFFEFCFBFFFEFDFDFFFFFFFFFFF1E9E6FFD3BAB0FF997D73C9171311250000
          0004000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000034136
          3154AC9083D9D1B4A8FFE3D1CBFFF2E9E5FFF4EEEBFFFEFEFEFFFEFEFEFFF4EE
          EBFFF1E8E5FFE2D0C9FFCFB2A5FFA88D81DA4236325900000005000000030000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000200000003241E1C3065544D819C8378C5A3887DCDCAA89BFCC9A99AFCA289
          7DCE9B8277C564544D82231E1B32000000040000000300000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000002000000020000000300000003000000030000
          0003000000030000000200000002000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000010000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000010000000200000004000000060000000600000006000000060000
          0006000000060000000600000006000000060000000600000006000000060000
          0006000000060000000600000006000000060000000700000007000000070000
          0007000000060000000400000002000000010000000000000000000000000000
          000000000002000000070000000E000000150000001700000018000000180000
          0018000000180000001800000018000000190000001900000019000000190000
          00190000001900000019000000190000001900000019000000190000001A0000
          0019000000170000001000000007000000020000000000000000000000000000
          0001000000030000000E7B5A4FC0AC7D6EFFAC7D6EFFAB7D6DFFAB7D6DFFAB7D
          6DFFAB7D6DFFAA7C6CFFAB7D6CFFAA7C6CFFAA7C6CFFAA7B6CFFAA7C6BFFAA7B
          6CFFAA7B6BFFA97B6BFFAA7B6BFFA97A6BFFAA7B6BFFAA7B6BFFA97B6AFFAA7A
          6AFFA97B6AFF79594CC100000010000000040000000100000000000000000000
          00010000000500000013AD7E6FFFF7F3EDFFF8F3EDFFF8F1EDFFF8F1EDFFF8F2
          EDFFF8F1EDFFF7F1ECFFF7F1EDFFF7F1EBFFF7F1EBFFF8F1EBFFF7F1EBFFF7F0
          EBFFF8F0EBFFF7F0EBFFF7F0EBFFF7F1EBFFF7F0EBFFF7F1EAFFF7F0EAFFF6F0
          EAFFF6F0EAFFA97B6BFF00000015000000060000000100000000000000000000
          00010000000500000015AD8071FFF8F3EEFFF5EDE6FFF5EDE6FFF5EDE6FFF5ED
          E5FFF4EDE6FFF5EDE5FFF5EDE5FFF5ECE5FFF4EDE5FFF5ECE5FFF5ECE5FFF5EC
          E5FFF4ECE4FFF4ECE5FFF4ECE4FFF5ECE4FFF5ECE4FFF5EBE4FFF5ECE4FFF4EC
          E4FFF7F1EBFFAA7C6DFF00000017000000060000000100000000000000000000
          00010000000500000015AE8272FFF9F3EFFFF6EEE7FFF6EEE7FFF5EDE7FFF5ED
          E6FFF5EDE6FFF5EDE6FFF6EDE6FFF5EDE6FFF5ECE5FFF5EDE6FFF5EDE5FFF5EC
          E5FFF5ECE5FFF5ECE5FFF4ECE4FFF5ECE5FFF4ECE5FFF5ECE5FFF5ECE4FFF4EC
          E5FFF8F1ECFFAB7D6EFF00000017000000060000000100000000000000000000
          00000000000500000014B08374FFF9F4F0FFF5EFE8FFF5EEE8FFF8F2EDFFF8F2
          EDFFF8F2EDFFF8F2EDFFF8F2ECFFF8F2ECFFF8F2ECFFF8F2ECFFF8F2ECFFF8F2
          ECFFF8F2ECFFF8F2ECFFF8F2ECFFF8F1ECFFF8F2ECFFF8F1ECFFF4EDE5FFF5EC
          E5FFF8F1ECFFAD7F6FFF00000016000000060000000100000000000000000000
          00000000000500000013B08576FFF9F5F1FFF6EFE8FFF6EFE8FFBA8E7EFFBA8E
          7EFFBA8E7DFFB98E7DFFB98E7DFFB98E7DFFB98E7DFFB98D7CFFB98D7CFFB98D
          7DFFB88D7CFFB98C7CFFB88D7CFFB88C7CFFB88C7CFFAE806FFFF5EDE6FFF5ED
          E5FFF8F1EDFFAD8070FF00000016000000050000000100000000000000000000
          00000000000500000013B28678FFFAF5F1FFF7EFE9FFF6F0E9FFF6F0E9FFF7EF
          E9FFF6EFE9FFF6EFE9FFF6EEE8FFF6EFE8FFF6EEE8FFF6EEE8FFF6EEE8FFF5EE
          E8FFF6EEE7FFF6EEE7FFF5EEE7FFF6EEE7FFF5EEE7FFF5EEE7FFF5EDE7FFF5ED
          E7FFF8F3EDFFAE8272FF00000015000000050000000100000000000000000000
          00000000000500000012B4897AFFFAF5F2FFF7F0EAFFF7F0EAFFBB9181FFBB91
          81FFBB9080FFBB9180FFBB9180FFBA9080FFBB907FFFBB9080FFBA907FFFBA90
          7FFFBA8F7FFFBA8F7EFFBA8F7EFFBA8F7EFFBA8F7EFFB18372FFF5EEE7FFF6ED
          E7FFF8F3EFFFB08473FF00000014000000050000000100000000000000000000
          00000000000400000011B58A7BFFFAF6F3FFF7F1ECFFF7F0EBFFF7F1EBFFF7F1
          EBFFF7F1EBFFF7F0EAFFF6F1EAFFF7F0EAFFF6EFE9FFF7EFE9FFF7F0E9FFF6EF
          EAFFF6F0EAFFF6F0E9FFF6F0E9FFF6EFE9FFF6EEE9FFF6EFE8FFF6EEE9FFF6EF
          E9FFF9F4EFFFB18575FF00000014000000050000000000000000000000000000
          00000000000400000011B78C7DFFFAF7F4FFF7F2EDFFF7F1EDFFBD9483FFBD94
          83FFBD9383FFBD9383FFBD9383FFBC9382FFBC9382FFBC9283FFBC9282FFBC93
          82FFBB9281FFBB9282FFBB9181FFBC9181FFBB9181FFB28574FFF7F0E9FFF7EF
          E9FFF9F4F1FFB38677FF00000013000000050000000000000000000000000000
          00000000000400000010B78E7FFFFAF8F5FFF8F2EDFFF7F2EDFFF8F2EDFFF7F2
          EDFFF7F2EDFFF8F2ECFFF8F1ECFFF8F2ECFFF7F1EBFFF8F1ECFFF7F1EBFFF7F1
          ECFFF7F0EBFFF7F0EBFFF7F1EBFFF7F1EBFFF7F0EAFFF7F0EAFFF7F0EAFFF7F0
          EAFFFAF5F1FFB48979FF00000012000000050000000000000000000000000000
          0000000000040000000FB99082FFFBF8F5FFF9F3EFFFF8F3EEFFBE9786FFBF96
          86FFBE9786FFBF9686FFBE9685FFBF9686FFBE9585FFBE9585FFBE9585FFBE95
          84FFBE9585FFBD9585FFBD9584FFBD9584FFBD9484FFB58878FFF7F1EBFFF7F1
          EBFFFAF6F2FFB58A7CFF00000012000000040000000000000000000000000000
          0000000000040000000FBB9283FFFCF8F6FFF9F4F0FFF8F4F0FFF8F4EFFFF9F3
          EFFFF8F4EFFFF9F3EFFFF8F3EEFFF8F3EEFFF8F2EDFFF8F3EEFFF8F3EEFFF8F2
          EDFFF8F2EEFFF8F2EDFFF7F2EDFFF7F2EDFFF8F2EDFFF8F1ECFFF8F1ECFFF8F1
          ECFFFAF6F3FFB78C7DFF00000011000000040000000000000000000000000000
          0000000000030000000EBC9486FFFCF9F6FFF9F4F0FFF9F5F0FFC19A8AFFC099
          8AFFC19A8AFFC09A89FFC09989FFC09988FFC09889FFC09988FFC09888FFC098
          88FFC09887FFC09888FFBF9788FFBF9787FFC09787FFB68B7BFFF8F2EEFFF8F2
          ECFFFAF7F4FFB88E80FF00000010000000040000000000000000000000000000
          0000000000030000000DBE9788FFFCFAF7FFF9F5F2FFF9F5F2FFF9F5F1FFF9F5
          F1FFF9F5F1FFF9F4F0FFF9F5F1FFF9F5F0FFF9F5F0FFF8F4EFFFF9F4EFFFF9F4
          F0FFF8F3EFFFF8F4EFFFF8F4EFFFF8F4EFFFF8F3EEFFF9F3EFFFF8F3EEFFF8F3
          EEFFFAF8F4FFB99182FF00000010000000040000000000000000000000000000
          0000000000030000000DBF988AFFFCFAF7FFFAF6F3FFFAF6F2FFC39C8DFFC39C
          8DFFC39D8CFFC29C8DFFC29C8CFFC29C8CFFC29C8CFFC29B8CFFC29B8CFFC29B
          8BFFC19B8BFFC29B8BFFC29A8BFFC19A8BFFC19A8AFFB88F7EFFF8F4EFFFF9F4
          EFFFFBF8F6FFBB9383FF0000000F000000040000000000000000000000000000
          0000000000030000000CC09A8CFFFCFBF9FFFAF7F4FFFAF7F3FFFAF6F3FFFAF6
          F3FFFAF6F3FFFAF6F2FFF9F6F3FFF9F6F3FFFAF6F2FFFAF5F2FFF9F6F2FFFAF5
          F1FFFAF5F1FFF9F5F1FFFAF5F1FFF9F4F1FFF9F5F1FFF9F5F1FFF9F4F0FFF9F5
          F0FFFCF8F6FFBC9586FF0000000E000000040000000000000000000000000000
          0000000000030000000BC29C8FFFFCFBFAFFFAF7F4FFFAF7F4FFC5A090FFC5A0
          90FFC49F90FFC49F8FFFC49F90FFC49F8FFFC49F8FFFC49E8EFFC49E8FFFC49E
          8EFFC49E8EFFC39D8EFFC39E8EFFC39D8EFFC39D8EFFBA9281FFF9F5F1FFF9F4
          F1FFFCF9F7FFBD9688FF0000000D000000030000000000000000000000000000
          0000000000030000000BC39F90FFFDFBFAFFFBF8F5FFFAF8F5FFFBF8F5FFFAF8
          F5FFFBF7F4FFFBF8F4FFFBF7F4FFFAF7F4FFFAF7F4FFFAF7F4FFFAF7F4FFFAF6
          F3FFFAF7F3FFFAF7F3FFFAF7F3FFFAF6F3FFFAF6F3FFFAF6F3FFFAF6F3FFFAF6
          F2FFFCF9F7FFBF988AFF0000000D000000030000000000000000000000000000
          0000000000020000000AC4A092FFFDFBFAFFFBF9F7FFFCF8F6FFFBF8F5FFFBF9
          F6FFFBF8F6FFFBF8F5FFFBF8F5FFFBF8F5FFFAF8F5FFFBF7F4FFFBF7F5FFFBF7
          F4FFFBF8F5FFFAF7F4FFFBF7F4FFFAF7F4FFFAF6F4FFFAF7F3FFFAF6F4FFFAF6
          F3FFFCFBF8FFC19A8CFF0000000C000000030000000000000000000000000000
          00000000000200000009C6A294FFFDFCFBFFFBF9F7FFFCF9F7FF4293D0FF3287
          CEFF3085CDFF2F82CBFF2D80C9FF2B7FC8FF2B7CC7FF2A7BC5FF2779C3FF2678
          C2FF2574C1FF2472C0FF2272BEFF2170BDFF206FBCFF2D78BFFFFAF7F5FFFAF7
          F4FFFCFBF9FFC29C8FFF0000000B000000030000000000000000000000000000
          00000000000200000009C7A496FFFDFCFBFFFBFAF8FFFCFAF8FF4A9ED8FF6FC8
          F3FF6EC7F3FF6CC6F3FF6CC5F3FF6AC4F2FF68C3F2FF66C2F2FF64C2F1FF63C0
          F1FF60BFF1FF5FBDF0FF5CBDF0FF59BBF0FF58BAEFFF3A89CAFFFBF8F5FFFBF7
          F5FFFDFBFAFFC39F90FF0000000B000000030000000000000000000000000000
          00000000000200000008C9A598FFFDFCFBFFFCFBF9FFFCFAF8FF4EA1D9FF79CD
          F4FF57BCF0FF56BBF0FF56BAF0FF54BAF0FF54B9F0FF53B8F0FF51B8EFFF50B7
          EFFF4FB6EFFF4DB5EFFF4BB4EFFF4AB3EEFF61BFF1FF3D8DCEFFFBF8F6FFFBF9
          F6FFFDFBFAFFC4A092FF0000000A000000030000000000000000000000000000
          00000000000200000008CAA699FFFEFDFCFFFCFBF9FFFDFAF9FF51A4DBFF80D1
          F6FF5BBFF1FF5BBFF1FF5BBEF1FF5ABEF1FF59BDF1FF59BCF1FF57BBF0FF56BB
          F0FF54BAEFFF53B8EFFF51B8F0FF50B6EFFF6BC5F3FF4292CFFFFBF9F7FFFCF9
          F6FFFDFBFBFFC6A294FF0000000A000000020000000000000000000000000000
          00000000000200000007CAA89BFFFEFDFCFFFDFCFAFFFCFBFAFF53A6DCFF89D5
          F7FF87D4F7FF86D4F6FF86D4F6FF85D3F6FF83D3F5FF82D1F5FF80D1F5FF7ECF
          F5FF7DCFF5FF7BCDF5FF79CCF4FF77CBF4FF75CAF4FF4696D2FFFBF9F7FFFCFA
          F8FFFDFCFBFFC7A496FF00000009000000020000000000000000000000000000
          00000000000200000006CCAA9CFFFEFDFCFFFDFBFBFFFDFCFBFF56A9DCFF55A8
          DCFF55A7DCFF54A6DBFF52A6DBFF52A5DAFF52A4D9FF51A3D9FF50A2D8FF4EA1
          D8FF4EA0D7FF4D9ED6FF4C9ED6FF4B9DD5FF499BD5FF499AD4FFFCFAF8FFFCFA
          F8FFFDFCFBFFC9A598FF00000008000000020000000000000000000000000000
          00000000000100000006CCAB9DFFFEFDFDFFFDFCFBFFFDFCFBFFFDFCFBFFFDFC
          FBFFFDFCFBFFFDFBFBFFFDFCFBFFFDFCFBFFFDFCFAFFFDFCFAFFFDFBFAFFFDFB
          FAFFFCFBFAFFFDFBFAFFFCFBF9FFFCFBFAFFFCFBF9FFFCFBF9FFFCFAFAFFFCFB
          F9FFFDFDFCFFC9A79AFF00000008000000020000000000000000000000000000
          00000000000100000005CDAC9EFFFEFDFDFFFDFCFBFFFDFCFBFFFDFCFBFFFDFC
          FBFFFDFCFBFFFDFCFBFFFDFBFBFFFDFBFAFFFDFCFAFFFDFCFBFFFDFBFAFFFDFB
          FAFFFDFCFAFFFDFBFAFFFDFBFAFFFDFCFAFFFCFBFAFFFCFBFAFFFDFBFAFFFCFB
          FAFFFDFDFCFFCBA89BFF00000007000000020000000000000000000000000000
          00000000000100000004CEADA0FFFEFDFDFFFEFDFDFFFEFDFDFFFEFDFDFFFEFD
          FDFFFEFDFDFFFEFDFDFFFEFDFDFFFEFDFDFFFEFDFDFFFEFDFDFFFEFDFDFFFEFD
          FDFFFEFDFDFFFEFDFDFFFEFDFDFFFEFDFDFFFEFDFDFFFDFDFDFFFEFDFCFFFEFD
          FDFFFEFDFCFFCCAA9CFF00000006000000010000000000000000000000000000
          00000000000100000003998076BFCEADA0FFCEADA0FFCEADA0FFCEADA0FFCEAD
          A0FFCEADA0FFCEACA0FFCDACA0FFCDADA0FFCDAC9FFFCEAC9FFFCDAC9FFFCDAC
          9FFFCDAC9FFFCDAB9FFFCDAC9FFFCDAC9EFFCDAC9EFFCDAB9EFFCDAB9EFFCDAC
          9EFFCCAB9EFF977E75BF00000004000000010000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000200000004000000050000000600000007000000070000
          0006000000050000000400000002000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0003000000060000000B0000001000000015000000180000001A0000001A0000
          001800000016000000110000000C000000070000000400000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000003000000070000
          000E0000001707140E4D133324951D4E38D11D513BD9246448FF246448FF1E51
          3BD91C4E38D11233249607140F4F000000190000001000000008000000040000
          0001000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000100000001000000040000000B000000150C21
          176B1F563FE1257151FF278963FF299D72FF2AA176FF2BB07FFF2BAF80FF2AA2
          76FF2A9E72FF278964FF267151FF20573FE20C21186D000000180000000D0000
          0005000000010000000100000000000000000000000000000000000000000000
          0000000000000000000100000001000000050000000D040C09361C503ACF2678
          56FF2AA074FF2CB180FF2BB180FF2CB081FF2CB081FF2CB180FF2CB181FF2CB1
          80FF2CB080FF2CB081FF2CB180FF2AA074FF277957FF1D5039D1040C093A0000
          0010000000060000000100000001000000000000000000000000000000000000
          00000000000000000001000000050000000E09191255236248F029946BFF2CB1
          81FF2CB181FF2CB181FF2CB282FF2CB282FF2CB282FF2CB282FF2DB282FF2DB2
          82FF2CB182FF2CB281FF2CB181FF2CB181FF2CB181FF29956CFF246248F10919
          135A000000120000000600000001000000000000000000000000000000000000
          000000000000000000040000000C09191253256C4EFA2A9F74FF2CB181FF2DB1
          82FF2CB283FF2DB283FF2DB283FF2EB283FF2EB284FF2EB384FF2EB383FF2EB3
          84FF2EB384FF2EB283FF2EB383FF2EB383FF2DB282FF2DB182FF2A9F74FF256D
          4FFA091A12590000001000000005000000010000000000000000000000000000
          00000000000200000009050F0B38246549EE2EA47AFF2EB383FF2DB283FF2EB3
          83FF2EB384FF2EB385FF2EB484FF51C7A2FF60CFAEFF37B98DFF2EB485FF2FB5
          85FF2FB485FF2EB485FF2EB485FF2EB384FF2EB383FF2EB384FF2FB384FF2FA5
          7AFF23644AEF050F0B3E0000000C000000030000000100000000000000000000
          000100000005000000101D513BCB2E9770FF30B385FF2EB384FF2EB484FF2EB4
          85FF2FB586FF2FB586FF50C6A1FF32916EFF1E7652FF4AB995FF30B587FF31B6
          87FF30B686FF30B587FF30B587FF2FB586FF2EB486FF2EB485FF2EB485FF30B4
          86FF2E9871FF1D533CD000000016000000070000000100000000000000000000
          00020000000A0C231A652D7D5CFF34B689FF2EB384FF2EB485FF2FB586FF30B5
          86FF31B688FF4EC59FFF389774FF7CAE9AFFA2C4B6FF2F8C6AFF41BF95FF32B7
          89FF32B789FF31B688FF31B689FF31B688FF30B588FF30B686FF2FB486FF2EB4
          85FF34B68AFF2D7E5EFF0D241A6B0000000E0000000300000001000000010000
          00040000000F205B43DD32A67DFF30B587FF2FB586FF30B587FF31B688FF31B7
          88FF4BC49DFF3E9F7CFF6BA28BFFF9F5F1FFF5EFEAFF45896CFF4CB491FF35BB
          8DFF34B98BFF34B98AFF33B98AFF32B989FF32B789FF32B688FF31B688FF30B5
          87FF31B688FF33A77DFF215E44DF000000160000000700000001000000020000
          0007091B144E308061FF37B98BFF30B587FF30B688FF31B688FF33B78AFF48C4
          9BFF46A786FF5A967DFFF6F4F0FFF3E8DFFFF3E8DFFFC8D9D0FF247A58FF4FC5
          9EFF35BB8DFF35BB8DFF34BA8CFF34BA8BFF34BA8BFF33B98AFF32B989FF31B7
          88FF31B688FF37B98CFF308162FF0A1D15570000000B00000002000000020000
          0009153B2B923A9B78FF35B98BFF32B788FF32B989FF33B98BFF46C39AFF4CAF
          8EFF4A8A6FFFF4F4F1FFF4EAE2FFF4E9E0FFF3E8E0FFF7EDE7FF699D87FF409D
          7CFF3FC094FF37BC8FFF37BC8EFF36BB8EFF36BB8DFF35BA8DFF34BA8BFF34B9
          8BFF32B78AFF36BA8CFF3B9C79FF153C2C980000000E00000003000000020000
          000B1E553FC63DAC86FF35B88CFF33B78AFF33B98BFF45C398FF54B797FF4084
          67FFEAEFEAFFF5EBE3FFF2E6DEFFEDDFD6FFF4E9E1FFF4E9E0FFE3E8E1FF2570
          50FF56C19EFF39BE91FF39BE90FF38BD90FF37BC8FFF37BC8EFF35BB8DFF35BB
          8CFF33B98BFF35B98DFF3EAD87FF1E5640CA0000001100000004000000030000
          000C256A4EEC3EB88EFF34BA8CFF35B98CFF3FBF94FF57BD9DFF347B5CFFE5EC
          E8FFF6EDE6FFF1E6DDFFCAC3B6FF9DAA97FFEFE3DCFFF4EAE2FFF6EBE5FF9DBD
          AFFF318464FF4FC8A2FF3ABF94FF3ABF92FF39BE91FF38BD90FF37BD8FFF36BB
          8EFF35BB8CFF35BB8CFF3FB98FFF256D50ED0000001300000005000000030000
          000C287455FA43C096FF35BA8BFF36BB8DFF37B488FF1F704EFFC9D0C8FFF7ED
          E7FFF1E5DEFFBEBCB0FF2E7354FF246F4EFFB5B7A8FFF1E6DFFFF4EAE3FFF6F1
          ECFF548B72FF4EAD8DFF42C49AFF3CC195FF3BC094FF3BBF92FF39BE90FF39BD
          90FF37BC8EFF35BB8DFF44C197FF287657FA0000001300000005000000030000
          000B287656FA4CC49BFF35BC8DFF37BC8EFF37BC8EFF24805CFF608A72FFE4D5
          CCFFB2B5A7FF2C7757FF3CBD96FF3BBB93FF2B7151FFC8C3B6FFF4E9E2FFF5EB
          E4FFE1E8E2FF2D7355FF5FCAABFF40C59AFF3EC197FF3CC195FF3BC094FF3ABF
          92FF38BD90FF38BC8EFF4EC59DFF297859FA0000001200000005000000020000
          000A267052EC55C39FFF39BD91FF38BE90FF3ABE92FF3CC096FF257E5BFF4A7C
          61FF2B7F5EFF41CBA3FF45D3ACFF46D3ADFF39B28DFF3C7457FFDACFC5FFF5EB
          E4FFF7EDE8FFADC7BAFF2E8061FF5ED8B7FF43CDA4FF40C99FFF3DC399FF3CBF
          94FF3ABF92FF3BBF92FF56C5A0FF277256ED0000001100000004000000020000
          0008205D46C559BD9DFF3DC094FF3CC296FF43CDA6FF45D2ACFF44CEA8FF319D
          7AFF46D2ACFF48D5B0FF49D5B0FF49D5B0FF49D5B1FF34A481FF4C7B60FFE0D2
          CAFFF5ECE5FFF9F3EFFF699882FF459D7FFF57D6B3FF44CFA6FF43CDA4FF41C8
          A0FF3DC196FF3FC196FF5BBF9FFF205F47C80000000E00000003000000010000
          00061643328F58B194FF49CDA6FF47D2ACFF48D3AEFF49D5AFFF49D5B0FF4AD7
          B2FF4BD7B2FF4CD8B4FF4DD7B4FF4DD8B4FF4CD8B4FF4DD7B4FF329B78FF4B7B
          61FFDFD2C9FFF6EBE5FFEFF0ECFF468066FF58B699FF55D6B1FF45CFA7FF45CE
          A5FF43CAA3FF48C9A2FF58B295FF174433940000000B00000003000000010000
          00040B201848409E80FF63DEC0FF4BD4B1FF4CD7B2FF4DD7B3FF4ED7B4FF4FD8
          B4FF4FD9B7FF50DAB7FF50DAB7FF51DAB8FF51DAB7FF50DAB7FF51D9B7FF38A6
          84FF47795EFFDDD0C7FFF6ECE7FFF0F2EFFF478368FF61C1A5FF56D5B3FF47CF
          A8FF46CDA6FF62D8B8FF409C7DFF0B20184E0000000700000002000000000000
          0002000000072D7D62DA6CD4BBFF55D9B7FF51D8B5FF51D9B6FF53DAB8FF53DB
          BAFF54DCB9FF55DBBAFF55DCBBFF56DCBBFF55DCBAFF56DDBBFF56DDBAFF55DC
          BAFF40B090FF487A60FFD9CCC4FFF3E9E3FFEDF1EDFF4B876DFF67C7ACFF57D6
          B3FF4ED2ADFF6ECFB6FF29785DDC0000000E0000000400000001000000000000
          0001000000041231275B48A98CFF72E5CAFF56DBB9FF56DBBAFF58DCBCFF58DC
          BCFF59DDBDFF59DEBDFF5ADFBEFF5ADFBFFF5BDFBFFF5ADFBEFF5ADFBEFF59DE
          BDFF59DDBCFF47BB9AFF367559FFBAB9ADFFECDFD8FFDDDFDAFF237150FF45BA
          96FF70DFC3FF46A487FF10302561000000080000000200000000000000000000
          000000000002000000062B765EC66CCEB6FF6AE3C6FF5CDDBDFF5DDEBFFF5EDE
          C0FF5EDFC0FF5FE1C2FF60E1C2FF5FE1C2FF60E1C2FF5FE0C2FF5EE1C1FF5EE0
          C1FF5DDFBFFF5CDFBEFF55CFAFFF2E8464FF72937DFF8FA392FF2D8463FF63D8
          B9FF6DCBB1FF287259C80000000C000000040000000100000000000000000000
          00000000000100000003081410283B9679EC7EDFCBFF6FE4C9FF63E0C3FF63E0
          C3FF64E1C4FF65E2C4FF64E3C5FF64E3C5FF64E3C5FF65E3C5FF64E2C5FF63E2
          C4FF63E2C3FF61E0C1FF5FDFBFFF5EDEBDFF48B797FF2A8362FF61D2B5FF80DB
          C6FF379274ED07140F2D00000006000000020000000000000000000000000000
          00000000000000000001000000041028204644A689F982DFCBFF7EEAD3FF69E2
          C6FF69E3C7FF6AE4C7FF6AE4C8FF6AE5C9FF6AE4C8FF6AE4C8FF6AE4C8FF69E4
          C7FF68E3C6FF66E2C4FF64E0C2FF62DFC1FF61DDBEFF7AE5CDFF82DCC7FF40A2
          83FA0E271F4A0000000700000002000000000000000000000000000000000000
          000000000000000000000000000100000004102921453F9E81EE77D5BEFF93F1
          DFFF7BE9D1FF6FE5CAFF6FE6CBFF70E6CBFF70E6CBFF6FE7CCFF6EE6CBFF6DE6
          CAFF6CE4C8FF6BE3C6FF69E2C5FF75E5CBFF92EEDAFF75D2BAFF3B9B7CEE0F28
          204A000000070000000200000001000000000000000000000000000000000000
          000000000000000000000000000000000001000000030814102335856DC85ABF
          A3FF8BE4D2FF9DF4E5FF8DEFDCFF82EBD5FF7EEBD4FF75E8CFFF74E8CEFF7DEA
          D2FF7FEAD3FF8CEDDAFF9DF2E2FF8BE4D0FF58BEA1FF318469CA071410280000
          0006000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000051738
          2E563D987CDA54BD9EFF75D4BCFF8EE6D3FF94EAD9FFA7F5E8FFA7F5E8FF95EA
          D9FF8DE6D3FF73D3BAFF52BB9CFF399679DA16392E5B00000007000000040000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0003000000040D201A32255A4A82388D73C53B957ACE49B896FC49BA98FC3A95
          7ACF378D74C6235A4A840C201A34000000060000000400000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000200000003000000040000000500000005000000050000
          0005000000040000000400000003000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000010000
          0001000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000200000004000000050000000600000007000000070000
          0006000000050000000400000002000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0003000000060000000B0000001000000015000000180000001A0000001A0000
          001800000016000000110000000C000000070000000400000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000003000000070000
          000E0000001706031B4D0F084595180B69D11A0B6FD91E0E87FF1E0D87FF180A
          6ED9170968D10F06449606021B4F000000190000001000000008000000040000
          0001000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000100000001000000040000000B000000150B06
          2E6B1C0F76E11F148FFF1C199AFF1A1EA4FF1A1FA5FF1823ACFF1822ACFF191E
          A5FF1A1DA3FF1B1899FF1D118DFF1A0C75E20A052C6D000000180000000D0000
          0005000000010000000100000000000000000000000000000000000000000000
          0000000000000000000100000001000000050000000D040311361C0F6ECF2119
          96FF1D21A8FF1C27B2FF1E2AB4FF202DBAFF212DBAFF232FBDFF232FBCFF202D
          B9FF202CB9FF1E2AB6FF1B26B0FF1B1FA5FF1E1492FF180B6AD10402103A0000
          0010000000060000000100000001000000000000000000000000000000000000
          00000000000000000001000000050000000E0A062455241788F02022A5FF202B
          B5FF2231BBFF2432BDFF2533BDFF2533BDFF2533BEFF2533BEFF2433BEFF2532
          BEFF2432BEFF2433BDFF2532BDFF222EBAFF1E2AB3FF1E1EA1FF1D1181F10804
          225A000000120000000600000001000000000000000000000000000000000000
          000000000000000000040000000C0A072553281C93FA2329ADFF2532BCFF2735
          BFFF2735C1FF2836BFFF2836C1FF2836C0FF2836C2FF2836C0FF2836C0FF2836
          C0FF2736C0FF2736C0FF2736BFFF2635BFFF2635BEFF2230BAFF1F25A9FF2114
          8BFA080523590000001000000005000000010000000000000000000000000000
          0000000000020000000906041638281E8CEE262FB2FF2935C0FF2A38C1FF2B38
          C2FF2A39C3FF2B39C2FF2A3AC2FF2B3AC3FF2C3AC3FF2C3AC3FF2C3AC3FF2B3A
          C3FF2B39C3FF2B3AC3FF2939C2FF2A38C2FF2938C2FF2837C0FF2634BFFF2228
          AEFF211585EF0503143E0000000C000000030000000100000000000000000000
          00010000000500000010241B77CB2B2EAFFF2C3BC2FF2D3BC4FF2E3DC4FF2D3D
          C4FF3140C5FF4556CFFF4F5ED2FF4454CEFF303FC7FF2F3EC5FF2F3EC5FF303F
          C6FF4453CEFF4D5DD3FF4555CFFF303FC5FF2C3CC3FF2D3BC4FF2B3AC3FF2A38
          C1FF2526A8FF1D1270D000000016000000070000000100000000000000000000
          00020000000A110D3465312BA5FF3040C4FF2F3FC5FF2F40C6FF3041C6FF3344
          C7FF4B5ACFFF434ABBFF3D41B2FF444CBDFF4A5AD0FF3344C8FF3344C9FF495A
          D1FF4249BAFF393BACFF3E44B6FF4958CDFF3343C7FF2F3FC5FF2E3EC5FF2E3D
          C5FF2E3CC2FF29219AFF0D08306B0000000E0000000300000001000000010000
          00040000000F2C2489DD323BBBFF3344C8FF3243C8FF3244C8FF3444C9FF4B5A
          CFFF4046B6FF9597D4FFE8E8F6FF8081CBFF4147B8FF4D5ED3FF4D5FD3FF3E45
          B7FF7E80C9FFE7E8F5FF9293D0FF3A3EB0FF4959CEFF3244C7FF3142C7FF3041
          C7FF3243C7FF2C35B6FF24187EDF000000160000000700000001000000020000
          00070E0C294E3A36ACFF3A4AC9FF3546C9FF3646CAFF3648C9FF3748CBFF4349
          B9FF9597D4FFF9F4F1FFF5ECE6FFF9F5F4FF8182CBFF4046B7FF3F45B6FF7F81
          C9FFF9F5F3FFF4EBE5FFF9F4F1FF9192D0FF3C41B3FF3648C9FF3546CAFF3445
          C9FF3344C8FF3747C7FF2F29A1FF0B0827570000000B00000002000000020000
          00091F1A59924044BBFF3E4ECCFF384ACCFF394CCBFF3A4CCCFF3B4DCCFF3B3E
          AFFFE3DADCFFE7D9D1FFF4EAE4FFF4EBE4FFF9F5F4FF7F81C9FF7F80C8FFF9F5
          F4FFF4E9E2FFF4E9E2FFF3E8E1FFE9E2E5FF3233A6FF3A4CCCFF384BCBFF384A
          CAFF3748CAFF3A4CCBFF373AB2FF181252980000000E00000003000000020000
          000B2F2882C6444FC7FF3D50CEFF3C4ECDFF3C50CFFF3D50CFFF3D51CFFF3B43
          B8FF6E68AFFFD6C2BBFFE9DAD2FFF4EBE5FFF4EBE5FFF9F6F5FFF9F6F4FFF4EA
          E4FFF4EAE3FFF4EAE3FFE5D6D0FF6A64ADFF343BB1FF3E50CEFF3C4FCDFF3B4D
          CDFF3A4DCCFF3C4ECDFF3F48C0FF251D77CA0000001100000004000000030000
          000C3A36A2EC4958CEFF4052D0FF3F52D0FF4053D0FF4054D1FF4155D1FF4255
          D1FF3940B4FF6D66AEFFD7C2BCFFE9DBD3FFF6ECE6FFF6ECE5FFF4ECE5FFF4EB
          E5FFF6EBE5FFE7D8D1FF6A63ABFF3339AEFF4054CFFF4054D0FF3F52D0FF3E52
          CFFF3D50CFFF3E50CFFF4554CBFF2F2694ED0000001300000005000000030000
          000C423CAFFA5061D5FF4154D1FF4256D1FF4356D2FF4357D2FF4458D3FF4559
          D3FF465AD2FF3E43B5FF6D67AFFFE9DAD4FFF7EDE9FFF6EDE9FFF6EDE8FFF6ED
          E6FFF4EBE5FF706AB4FF393EB1FF4559D1FF4459D3FF4358D2FF4357D2FF4256
          D1FF4054D0FF3F53D0FF4C60D3FF362CA0FA0000001300000005000000030000
          000B4541B1FA5B6DDAFF4557D3FF4559D3FF465AD4FF465BD4FF475CD4FF4A5F
          D5FF687ADDFF464BB6FF7A79C1FFF5EFE9FFF7F0E9FFF6EFE9FFF6EFE9FFF6EF
          E9FFF4ECE7FF7977BFFF3F43B1FF6578DCFF4A5ED5FF475BD4FF465AD4FF4559
          D3FF4357D2FF4356D1FF576BD8FF3830A4FA0000001200000005000000020000
          000A433FABEC6576DAFF485ED5FF475CD5FF485DD5FF5468D9FF687BDDFF8496
          E5FF5255BAFF8080C7FFFAF8F7FFF7F0EBFFF7F1EBFFF7F0EBFFF7F0EAFFF7F0
          EAFFF7F0EAFFFAF7F7FF7A7AC3FF4549B2FF7789E0FF5D70DBFF5063D8FF485D
          D5FF465BD4FF475BD4FF6372D8FF38309DED0000001100000004000000020000
          000839378FC56F7DDAFF4E63D9FF5167D8FF7084E1FF7C8FE4FF7D90E4FF5A5F
          BFFF7D7CC5FFFAF8F7FFF8F2EFFFF8F1EDFFF8F2ECFFE9DDD8FFDECEC8FFEADE
          D8FFF7F0EBFFF7F0EBFFFAF8F7FF7775C0FF4D51B6FF6B7FDFFF687CDEFF5F73
          DBFF4E62D6FF4D62D7FF6A77D5FF302B84C80000000E00000003000000010000
          00062A28668F747DD6FF6F83E1FF8092E4FF8295E5FF8295E5FF8295E6FF3A3B
          A9FFE8E2E7FFEDE3DEFFF9F2EFFFF8F3EFFFE8DDD9FF6F68ADFF6D65A9FFD8C6
          BFFFEADFD8FFF8F2ECFFF7F1ECFFEDE9EEFF2F2D9EFF6F84E2FF6E81E0FF6B7F
          DFFF677BDEFF6376DDFF6C73CFFF23205F940000000B00000003000000010000
          0004151430486F72D1FF9FB0EDFF8699E6FF879AE7FF879AE7FF889BE8FF4E53
          B7FF8179B0FFDCCBC4FFEADFDCFFE7DBD7FF6F68ADFF494DB3FF484CB3FF6C64
          A9FFD8C7C0FFE7DCD7FFEBDFD9FF7E75B0FF4245B0FF7589E2FF7287E2FF7083
          E2FF6C80E0FF889BE8FF5F5FC4FF11102D4E0000000700000002000000000000
          0002000000075757AEDAA8B5EBFF90A3E9FF8D9FE9FF8EA0E9FF8EA0E9FF8696
          E4FF4649B0FF7E75ADFFC3B1B7FF6D66ABFF4A4FB4FF8799E6FF8698E6FF474C
          B1FF6B64A9FFC2B0B6FF796FAAFF3A3CA8FF7587DEFF7A8EE5FF778BE3FF7489
          E3FF768AE3FF99A5E5FF4643A0DC0000000E0000000400000001000000000000
          0001000000042324455B7E82D9FFB0C1F2FF92A5EAFF93A5EBFF93A5EBFF93A5
          EBFF8A9AE4FF4F54B6FF3534A2FF565CBBFF8D9FE8FF8FA2EBFF8EA1EAFF899C
          E7FF5157B9FF2E2C9CFF454AB0FF7C8EE1FF8295E7FF7F92E6FF7C90E5FF798D
          E5FF9EB0EDFF6C6ECBFF1C1B4061000000080000000200000000000000000000
          000000000002000000065455A2C6A8B2E9FFA8B9F0FF97AAECFF98AAECFF98AA
          ECFF98AAECFF97AAECFF97A9ECFF96A9ECFF95A8ECFF94A7ECFF93A6EBFF91A4
          EBFF8FA3EAFF8DA0EAFF8B9FEAFF899CE9FF859AE8FF8397E8FF8194E6FF93A5
          EBFF9CA5E3FF464497C80000000C000000040000000100000000000000000000
          000000000001000000030F0F1C286B6EC5ECBDCAF2FFACBEF1FF9DAFEDFF9DAF
          EEFF9DAFEDFF9DAFEDFF9BAEEDFF9AADEDFF9AACEDFF99ABEDFF97AAEDFF96A9
          ECFF94A7ECFF91A5EBFF8FA3EAFF8CA0EAFF8A9EEAFF879BE9FF99ACEDFFB2C0
          EEFF5C5CBBED0C0C1A2D00000006000000020000000000000000000000000000
          00000000000000000001000000041D1D3646787BD5F9BFCBF2FFBCCCF5FFA1B4
          EFFFA1B3EFFFA1B3EFFFA0B3EEFF9FB1EFFF9EB1EFFF9DAFEEFF9BAEEEFF9AAD
          EEFF98ABEDFF95A9ECFF93A6ECFF90A4EBFF8EA1EAFFACBEF2FFB6C3EFFF696B
          CBFA1818324A0000000700000002000000000000000000000000000000000000
          0000000000000000000000000001000000041D1E36457074CBEEB0BAEEFFD0E0
          F9FFB5C6F3FFA5B7F0FFA5B7F0FFA3B6F0FFA3B5EFFFA1B4EFFF9FB2EFFF9EB0
          EEFF9CAEEEFF99ACEDFF97ABEDFFA6B9F0FFC7D8F7FFA8B1E9FF6466C4EE1A1A
          334A000000070000000200000001000000000000000000000000000000000000
          000000000000000000000000000000000001000000030E0F1A235E60AAC89196
          E4FFC4D0F4FFD7E7FBFFC7D7F7FFB8C8F4FFB3C4F3FFA6B8F0FFA4B7F0FFAFC0
          F2FFB1C2F2FFC0D1F6FFD2E3FAFFBFCCF2FF888EDEFF5556A6CA0D0D19280000
          0006000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000052728
          4656686CBCDA878CE1FFAAB2ECFFC4D1F4FFCAD6F6FFDDECFCFFDCECFCFFC8D5
          F5FFC1CEF3FFA5AEEAFF8085DEFF6163B7DA2526475B00000007000000040000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          000300000004161728323E3F6E825F61A9C56366B2CE797EDBFC787CDAFC6064
          B1CF5C5EA9C63A3D6D8415162734000000060000000400000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000200000003000000040000000500000005000000050000
          0005000000040000000400000003000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000010000
          0001000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004FB5EAFF4FB5EAFF4FB5EAFF4FB5
          EAFF4FB5EAFF4FB5EAFF4FB5EAFF4FB5EAFF4FB5EAFF4FB5EAFF4FB5EAFF4FB5
          EAFF4FB5EAFF4FB5EAFF4FB5EAFF4FB5EAFF4FB5EAFF4FB5EAFF4FB5EAFF4FB5
          EAFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004FB5EAFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF4FB5
          EAFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004FB5EAFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF4FB5
          EAFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004FB5EAFF72C4EEFF72C4EEFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000072C4EEFF72C4EEFF4FB5
          EAFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004FB5EAFF72C4EEFF72C4EEFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000072C4EEFF72C4EEFF4FB5
          EAFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004FB5EAFF72C4EEFF72C4EEFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000072C4EEFF72C4EEFF4FB5
          EAFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004FB5EAFF72C4EEFF72C4EEFF0000
          00000000000000000000000000000000000000000000966C45CCBB8756FF3E2D
          1D55000000000000000000000000000000000000000072C4EEFF72C4EEFF4FB5
          EAFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004FB5EAFF72C4EEFF72C4EEFF0000
          00000000000000000000000000000000000032241744BB8756FFBB8756FF8963
          3FBB000000000000000000000000000000000000000072C4EEFF72C4EEFF4FB5
          EAFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004FB5EAFF72C4EEFF72C4EEFF0000
          0000000000000000000000000000000000000C090611966C45CCBB8756FF3E2D
          1D55000000000000000000000000000000000000000072C4EEFF72C4EEFF4FB5
          EAFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004FB5EAFF72C4EEFF72C4EEFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000072C4EEFF72C4EEFF4FB5
          EAFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004FB5EAFF72C4EEFF72C4EEFF0000
          0000000000000000000000000000000000000C090611BB8756FFBB8756FF0000
          0000000000000000000000000000000000000000000072C4EEFF72C4EEFF4FB5
          EAFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004FB5EAFF72C4EEFF72C4EEFF0000
          0000000000000000000000000000000000000C090611AF7E50EEBB8756FF4B36
          2266000000000000000000000000000000000000000072C4EEFF72C4EEFF4FB5
          EAFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004FB5EAFF72C4EEFF72C4EEFF0000
          00000000000000000000000000000000000000000000251B1133A2754BDDBB87
          56FF64482E880000000000000000000000000000000072C4EEFF72C4EEFF4FB5
          EAFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004FB5EAFF72C4EEFF72C4EEFF0000
          00000000000000000000000000000000000000000000000000000C090611AF7E
          50EEBB8756FF4B36226600000000000000000000000072C4EEFF72C4EEFF4FB5
          EAFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004FB5EAFF72C4EEFF72C4EEFF0000
          0000000000000000000000000000573F28773E2D1D55000000000C090611A275
          4BDDBB8756FF7051349900000000000000000101000172C4EEFF72C4EEFF4FB5
          EAFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004FB5EAFF72C4EEFF72C4EEFF0000
          000000000000000000000000000070513499BB8756FFBB8756FFBB8756FFBB87
          56FFBB8756FF5840287801010102000000000000000072C4EEFF72C4EEFF4FB5
          EAFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004FB5EAFF72C4EEFF72C4EEFF0000
          00000000000000000000000000003E2D1D5589633FBBBB8756FFBB8756FFBB87
          56FF573F28770000000000000000000000000000000072C4EEFF72C4EEFF4FB5
          EAFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004FB5EAFF72C4EEFF72C4EEFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000072C4EEFF72C4EEFF4FB5
          EAFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004FB5EAFF72C4EEFF72C4EEFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000072C4EEFF72C4EEFF4FB5
          EAFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004FB5EAFF72C4EEFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000072C4EEFF4FB5
          EAFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004FB5EAFF72C4EEFF000000005A5A
          5AAE848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF5A5A5AAE0000000072C4EEFF4FB5
          EAFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004FB5EAFF72C4EEFF000000008484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF0000000072C4EEFF4FB5
          EAFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000005A5A
          5AAE848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF5A5A5AAE00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000848484FF848484FF00000000000000008484
          84FF848484FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000042424280848484FF848484FF848484FF8484
          84FF424242800000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000200000003000000030000000400000005000000050000
          0005000000060000000600000006000000050000000600000005000000040000
          0004000000030000000200000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000300000006000000090000000B0000000E0000000F00000011000000120000
          0014000000150000001500000015000000150000001400000013000000120000
          000F0000000C0000000800000005000000020000000100000000000000000000
          00000000000000000000000000000000000500000012000000120000000B0000
          000B01070E26051B356A06264A9107305FB5093972D2083871D3093B77E00A44
          8AFF094388FF094288FF094086FF073772E107336AD407326AD4052A58B80420
          439503162F7101050B2C00000010000000070000000200000000000000000000
          00000000000000000000000000000000001321684BFF113C29C7030C084A5D7C
          9DDA5083B7FF226BB4FF236FBCFF2776C6FF2B7DCDFF297BCCFF297CD0FF2D82
          D8FF2B80D7FF2A7ED6FF297DD6FF2373CAFF206EC5FF1F6DC3FF1B66BAFF165C
          ADFF1253A1FF0B458CFF062B59B80000000E0000000400000001000000000000
          000000000000000000000000000000000017236E50FF59B497FF1C6246FA416F
          6FFF9ABED5FF8BBCE6FF59A4E4FF3B92E1FF3991E0FF378FDFFF358CDDFF348B
          DCFF3289DBFF3087DAFF2F84DAFF2D82D8FF2C81D8FF2A7FD7FF297ED6FF277C
          D4FF267AD4FF3385D3FF093E80F2000000120000000400000001000000030000
          000C00000013000000140000001500000025267354FF79DCC1FF38B98DFF2A8C
          67FF27644EFF63909DFF94BDDFFF81B9E8FF4D9EE4FF3E96E2FF3C95E1FF3B93
          E0FF3991E0FF378EDFFF368EDDFF338BDCFF3288DCFF3186DAFF2F85D9FF2C84
          D9FF2B82D7FF3889D6FF0B4182EB0000001200000005000000010000000B1B53
          3DC3237053FF226F51FF206B4FFF29795BFF28785AFF43C399FF2EB789FF37BB
          8FFF3AB38AFF257A59FF396F62FF88AEBFFFA4CCE9FF80BEECFF4CA1E6FF4199
          E4FF4098E3FF3F97E2FF3C94E2FF3B93E0FF3991E0FF3790DEFF368DDEFF348B
          DCFF378EDDFF3A8AD2FF0B3E76D00000000E00000003000000010000000F2C84
          63FF8BE4CDFF4DCBA6FF4CCBA5FF4BCAA4FF4AC9A3FF48C9A1FF2FBB8DFF2FBB
          8BFF32BD8DFF3FC097FF38A681FF236B4FFF558481FFA0C3D9FFA9D1ECFF7CBE
          EDFF60B1EBFF63B2EBFF60AFEBFF58A9E8FF4AA0E5FF3E97E3FF4198E3FF4B9F
          E4FF4A99DEFF2771B8FF061F38680000000800000002000000010000000E308A
          6AFF90E7D2FF34C395FF34C194FF33C193FF32C094FF32C092FF32BE92FF32BE
          91FF31BE90FF31BD90FF38C195FF44C39CFF319471FF286851FF6C959DFF94B6
          D5FF195DA5FF16589EFF2869ABFF4487C3FF65AEE3FF6BB7EDFF51A2DFFF2F7C
          C2FF135496E4082643710000000A0000000300000001000000000000000D3291
          70FFACEEDFFF58D4B2FF58D4B1FF4FD0AAFF4ECFA9FF44CAA1FF3AC59BFF35C3
          95FF34C395FF34C094FF33C094FF34C094FF42C79EFF65CCADFF2B7E60FFACC6
          DBFF70A1C9FF5482B1FF3D6DA4FF205797FF4080B9FF3884C4FF155795D60825
          3F650000000C00000007000000030000000100000000000000000000000B3596
          75FFB6F1E5FF5ED8B9FF5ED8B8FF5DD7B7FF5CD6B5FF5BD5B4FF5AD5B3FF52D1
          AEFF41CAA1FF37C59AFF40C99FFF64D5B5FF5BB599FF388971FD8CB4B3FFADC0
          D0FF335484FF2D4F80FF375886FF38639BFF1B63A2DE09243C5B000000090000
          000600000003000000020000000100000000000000000000000000000009369C
          7AFFBCF3E7FFBCF3E7FFBAF3E7FFB9F3E6FFB8F2E5FFB7F1E5FF60DABAFF5FD9
          B8FF62DABBFF76DFC3FF6FCCB3FF3E9679F918463692151F254F83A1BFFD4E73
          A4FF4574ADFF4271ABFF204B88FF245A90FB080D142F00000006000000030000
          0001000000000000000000000000000000000000000000000000000000052A77
          5EC238A07EFF379F7DFF379F7CFF369E7BFF369C7BFFBDF3E7FF67DEC0FF7AE3
          C9FF92E1CDFF5CB196FF256750BC07130F320202021013192353426CA3FE75AD
          E2FF75AEE2FF7EB3E4FF76ABDDFF254E8BFD11151D560303030B000000010000
          0000000000000000000000000000000000000000000000000000000000010000
          00050000000700000008000000080000000F39A27FFFC2F5EBFF99EAD8FF78C9
          B1FF348B6EE1102E245B0000000900000003040404102E486CBC5F94CBFF74B2
          E7FF6DABE3FF69A6DFFF7DB3E4FF5182B9FF1A2F53BA07070719000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000073CA684FF9BDDCDFF4BA98BF81C51
          4089020605130000000400000001000000010B0E1229446A9EF490C7EEFF93CD
          F5FF81C0EEFF70ADE4FF74ACE2FF76A9DBFF1D447CF40B0D1134000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000053DA987FF2A765DB70816112A0000
          0004000000010000000000000000010101033F5C84D55882B6FFA8DCFAFFA5DA
          FAFF99D2F6FF7DBAEBFF6EABE2FF7FB3E3FF2C5794FF1F3860CD020202050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000400000003000000010000
          00000000000000000000000000000611244E133776FF5880B1FFAEDEF7FFB1E2
          FCFFA9DDFAFF8BC6F1FF72ADE3FF75A7D7FF204681FF153774FC0203040B0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000D2B5AB5265596FF3A6095FFA9D3EBFFAEDB
          F2FF99C6E3FF78ABD5FF6096CAFF5B87B8FF11326FFF0F387CFF07152E660000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000153F80EA3F76B5FF234B89FF8FB5CFFF678D
          B4FF244983FF133878FF123672FF173771FF0F3D80FF103E85FF0C2859B90000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001C5097FF5D96D0FF215398FF3F6699FF285D
          A2FF326BB2FF2D69B2FF235BA5FF194C95FF124792FF134791FF113574EA0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001F5497EA68A1D5FF4783C1FF295FA1FF5790
          CFFF74A9DCFF6DA3D6FF548CC7FF3671B4FF1E57A2FF174E99FF123B7BED0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000183D6A995691CCFF7BB3DEFF588BBDFFA3CC
          EFFFA6CCECFF90BDE3FF71A4D5FF538BC5FF3C76B6FF2059A0FF103266BD0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000040A1118255B99CF3B7BC3FF70A7DFFF82B2
          E0FFA5CAEAFFB7D7EFFF96BEE2FF6398CDFF346DAFFF1C4D91EE040D1A2D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000915232F143255752252
          88B72B66A8DE2E72BEFF2863A8E720508CC91331568402070D15000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000070000
          000E00000014000000130000000C000000050000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000008000000130E1C
          38751F4486EB1E407CDE081122510000000B0000000300000001000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000002000000030000000900000014112341842967
          B0FF4791D0FF64ADE0FF1E407DDE000000110000000400000001000000000000
          000000000000000000000000000077554AB7A57666FFA57565FFA57465FFA574
          64FFA37463FFA47363FFA37362FFA27262FFA17162FFA17161FFA07060FFA070
          60FFA06F5FFF9F6F5FFF9E6E5EFFAC8376FFBB9B90FF73768EFF2B6EB5FF4A98
          D6FF70BFEEFFB8E1F4FF224788EB000000110000000400000001000000000000
          0000000000000000000000000000A77868FFFDFCFAFFFBF8F6FFFBF8F5FFFBF7
          F4FFFBF7F4FFF9F6F3FFF9F5F2FFF7F3EFFFF5F0EDFFF3EFEBFFF3EEEAFFF3EE
          EAFFF4EFEBFFF3EDE9FFF1EDE9FFEAE7E6FFA79694FF2767B3FF4A98D6FF70BE
          EEFFC7F0FEFF447DBAFF0F203B760000000C0000000300000001000000000000
          0000000000000000000000000001AA796AFFFDFCFBFFF6ECE6FFF6ECE6FFF6EC
          E6FFF5EBE4FFF1E8E2FFEDE5DFFFE8DFD8FFE2D9D3FFDDD5CFFFDBD2CCFFDBD3
          CDFFDED5CEFFE2DAD6FFE3DFDBFFA7908AFF7F5043FF6F5451FF5BAFE9FFC7F0
          FEFF4885C0FF1226448900000013000000060000000100000000000000000000
          0000000000000000000000000001AA7C6CFFFDFCFBFFF7EDE8FFF7EDE8FFF5EB
          E5FFF0E9E2FFE9E2DCFFDFD7D1FFB29A91FF906D61FF794C3EFF784B3EFF784B
          3EFF8A675DFFA6918BFF99837DFF7C4E44FFB9988EFFCCB6AEFFC9C3BDFF4181
          C0FF797D94FF000000260000000C000000020000000000000000000000000000
          0000000000000000000000000001AC7D6FFFFEFDFCFFF7EFE9FFF7EDE8FFF4EA
          E6FFEBE3DEFFD1C3BBFF926A5EFF9D7970FFD6C5BFFFEBDDD3FFEEDDD3FFE9D8
          CDFFC9B1A5FF916B5FFF764C3FFF9D7E73FFC8B6AEFFE1D6D1FF97746AFFAD9D
          9AFFC1A195FF0000001E00000009000000010000000000000000000000000000
          0000000000000000000000000000AD7F70FFFEFDFCFFF7F0EAFFF5EDE7FFEEE7
          E1FFD8CBC4FF9B7266FFCDB8B2FFF5EDE7FFCBA586FFBC8E65FFB38053FFBF91
          6CFFCCA88BFFE7D3C6FFB79A8DFF7F5649FFBFB0ABFF937068FFAE9690FFEEEB
          E9FFB1887BFF0000001B00000006000000010000000000000000000000000000
          0000000000000000000000000000AE8172FFFEFDFCFFF6EFE9FFF2EBE5FFE7E0
          D9FFAD897DFFDCCDC8FFE8D8CBFFB28053FFCFA574FFE5C597FFF1D8AFFFE7CE
          A8FFD5B38EFFB88C66FFDFC7B5FFC5ACA0FF7C5448FFA18C85FFE7E4E1FFF4F0
          EDFFA47565FF0000001800000006000000010000000000000000000000000000
          0000000000000000000000000000AF8475FFFEFDFDFFF6EFE9FFF0E9E4FFCFBB
          B4FFC5A79DFFF8F3EEFFB38153FFDFB780FFEAC58CFFEBC68FFFEDCE99FFF1D5
          ABFFF3DEBCFFE7D1B0FFB98E6AFFE9D8CDFF9D7A6FFFAF9B94FFE6DFDAFFF5F1
          EDFFA57667FF0000001700000006000000010000000000000000000000000000
          0000000000000000000000000000B18676FFFEFDFDFFF6EFEBFFEEE9E3FFC2A5
          9AFFE9DEDAFFD5B598FFCB9E6AFFE8BE81FFE8BE80FFE9C288FFEBC893FFECCE
          9DFFF0D5AAFFF3DEBCFFD4B38FFFC8A689FFD1BBB3FF937267FFE5DCD6FFF6F1
          EEFFA77969FF0000001600000006000000010000000000000000000000000000
          0000000000000000000000000000B48878FFFEFDFDFFF6EFEAFFEDE8E2FFBF9D
          92FFFAF8F7FFC19368FFE4BF8DFFF3DEB9FFF2DBB5FFEECF9FFFEBC78FFFECCA
          96FFECCE9DFFF0D5ABFFEBD1ADFFB2825DFFEADED6FF896153FFE5DBD7FFF6F1
          EFFFA97A6AFF0000001500000005000000010000000000000000000000000000
          0000000000000000000000000000B58979FFFEFEFDFFF7F1EEFFEDE8E3FFC4A1
          95FFFEFEFDFFBB895AFFF7EBD3FFFAF0DBFFF7E7CAFFF3DDB9FFF0D5AAFFEBC7
          91FFEBC893FFEDCD99FFF1D8AEFFAA764BFFF4EBE5FF8F675AFFE2D7D2FFF6F2
          EFFFA97D6DFF0000001500000005000000010000000000000000000000000000
          0000000000000000000000000000B78C7DFFFEFEFEFFF7F2EEFFF0EAE8FFC9AA
          9EFFFBF9F8FFC1946AFFF3EADBFFFDF8E9FFFAF0DBFFF7E7CAFFF3DEB9FFEFD0
          A0FFEAC289FFEBC58EFFE6C69AFFAF7D55FFF0E7E1FF987064FFE7DFD9FFF7F4
          F1FFAC7F6FFF0000001400000005000000010000000000000000000000000000
          0000000000000000000000000000B78E7FFFFEFEFEFFF7F2EFFFF3EEEAFFD3BA
          B2FFEFE5E2FFD5B598FFCEAC89FFFFFEF3FFFDF8E9FFFAF0DBFFF7E7CAFFF3DD
          B6FFE8BE80FFEBC68CFFCA9E6EFFC5A185FFE3D7D3FFAC8D83FFEAE3DEFFF9F5
          F3FFAD8071FF0000001300000005000000000000000000000000000000000000
          0000000000000000000000000000B98F80FFFFFEFEFFF9F3F0FFF6F2EDFFE3D5
          D0FFDAC3BBFFF9F4EFFFAC784EFFE8D9C4FFFFFEF3FFFDF8E9FFFAF0DBFFF4E0
          BCFFE8BE81FFDAB17BFFAD794FFFF6F0ECFFC4A9A0FFCCB9B2FFEFE8E4FFF8F4
          F1FFAE8373FF0000001200000004000000000000000000000000000000000000
          0000000000000000000000000000BB9182FFFFFEFEFFFAF6F3FFF7F4F0FFF3F0
          ECFFD2B9AFFFECE1DDFFE6D6C9FFAB774CFFCBA784FFECDFCCFFF8EBD2FFDEB7
          85FFC59563FFAB774CFFE6D6C9FFE7DAD6FFBD9E93FFEAE3DEFFF2EBE5FFF7F3
          F1FFB08374FF0000001100000004000000000000000000000000000000000000
          0000000000000000000000000000BC9384FFFFFEFEFFFAF7F3FFFAF6F2FFF7F3
          EFFFEEE8E2FFD0B5AAFFE8D9D4FFF5EFEAFFC7A488FFAB774DFFA56D40FFAA76
          4BFFC8A68AFFF5EFEAFFE4D5CFFFC6A99DFFE3DAD5FFF0EAE4FFF3EBE5FFF6F1
          EEFFB38576FF0000001000000004000000000000000000000000000000000000
          0000000000000000000000000000BD9685FFFFFFFEFFFBF8F4FFFAF7F4FFF9F6
          F2FFF7F4F0FFEEE8E3FFD3B9B0FFD7BEB6FFEFE6E3FFFDFBFBFFFFFFFFFFFDFB
          FBFFEFE6E3FFD7BEB6FFD0B6ACFFE7DED9FFF0EAE5FFF2EBE6FFF1E8E4FFF3EC
          E9FFB38978FF0000000F00000004000000000000000000000000000000000000
          0000000000000000000000000000BF9787FFFFFFFFFFFBF8F6FFFBF8F4FFFAF7
          F6FFF9F6F3FFF8F5F1FFF6F3EFFFE7DCD5FFDBC7BFFFD3BAB1FFCCAEA3FFD3B9
          B0FFD8C4BCFFE1D3CCFFEEE6E3FFEFE6E2FFEEE3E0FFEEE2DDFFEBDED9FFECE1
          DDFFB5897AFF0000000E00000004000000000000000000000000000000000000
          0000000000000000000000000000C09989FFFFFFFFFFFBF8F7FFFBF8F6FFFBF8
          F6FFFBF8F6FFFAF8F4FFFAF6F3FFF8F5F2FFF8F4F1FFF6F3F0FFF4F0EDFFF4F0
          ECFFF1EAE5FFEBDFD9FFE4D6CEFFE0D1C9FFE0CEC7FFDECAC2FFDBC7BEFFDCC8
          C2FFB78C7DFF0000000D00000003000000000000000000000000000000000000
          0000000000000000000000000000C19A8BFFFFFFFFFFFBF9F7FFFBF9F7FFFBF9
          F6FFFDF9F6FFFBF8F6FFFAF8F6FFFBF8F6FFFAF7F3FFF9F6F3FFFAF6F3FFF7F1
          EEFFEEE5DEFFB28A7CFFA57766FFA47564FFA47464FFA47363FFA37363FFCFB5
          ACFFB78C7DFF0000000A00000003000000000000000000000000000000000000
          0000000000000000000000000000C19B8CFFFFFFFFFFFBF9F8FFFBF9F8FFFDF9
          F7FFFBFAF7FFFBF9F7FFFBF9F7FFFBF8F6FFFBF8F6FFFBF8F6FFFAF8F4FFF7F2
          EFFFECDFDAFFAB7E6DFFFFFFFFFFFFFEFEFFFFFDFCFFFEFCFAFFFCF9F7FFCAAF
          A6FF4C352D860000000600000002000000000000000000000000000000000000
          0000000000000000000000000000C39D8DFFFFFFFFFFFDFAF8FFFDFAF9FFFDF9
          F8FFFDFAF8FFFDF9F7FFFDF9F8FFFBF9F7FFFBF9F7FFFBF9F6FFFBF8F6FFF6F1
          EDFFEBDFDBFFB08574FFFFFEFEFFFEFBFAFFFDF9F7FFFCF6F3FFCEB2A8FF4F38
          3086000000080000000300000001000000000000000000000000000000000000
          0000000000000000000000000000C39D8FFFFFFFFFFFFEFAF9FFFDFAFAFFFDFB
          F9FFFDFAF9FFFDFAF8FFFDFAF9FFFDF9F8FFFBF9F7FFFBF9F8FFF9F6F4FFF6F0
          ECFFECE1DBFFB68C7DFFFFFEFEFFFDF9F6FFFBF6F3FFD1B5ACFF533B33860000
          0008000000030000000100000000000000000000000000000000000000000000
          0000000000000000000000000000C49E90FFFFFFFFFFFDFBFAFFFDFBFAFFFDFB
          F9FFFDFBF9FFFEFAF9FFFDFAF9FFFDFAF8FFFDFAF8FFF9F7F6FFF9F4F2FFF5ED
          EBFFEBE1DDFFBC9584FFFFFEFEFFFBF6F3FFD4BAAFFF563F3685000000070000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C5A190FFFFFFFFFFFEFDFBFFFDFBFBFFFDFD
          FBFFFEFBFAFFFEFBFAFFFDFBF9FFFDFBF9FFFBF7F6FFF9F5F3FFF7F1EEFFF3EB
          E7FFEDE1DCFFC19B8BFFFFFEFEFFD6BCB2FF59423A8400000006000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C6A191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F9FFF9F6F4FFF6F1F0FFF2EC
          E9FFEEE3E0FFE4D2CBFFDBC5BDFF5A453E830000000500000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000093776CBDC6A291FFC6A192FFC6A191FFC59F
          91FFC69F92FFC59F91FFC59F90FFC59F91FFC49F90FFC49E90FFC49D8FFFC49E
          8EFFC39D8EFFC39D8EFF5D484182000000040000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000020000
          0003000000030000000300000003000000030000000300000004000000040000
          0004000000040000000400000003000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000060000000E0000000E0000000700000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010000000A09070663583F36EC573D35EC1911105A00000007000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000002000000090000
          000E0000000F0000001000000010000000110000001100000011000000130000
          001A0E0A09745D4C44FEC8A995FFC9A996FF553C34E90000000D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000008815A4EC0B37E
          6CFFB37D6AFFB37E6CFFB27D6BFFB27C69FFB17D6AFFBE9081FFD1B6ADFF947E
          77FF6D594FFFD6B6A1FFD4B6A1FFDBC7B9FF584037EC0000000C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000CB5816FFFFDFB
          F9FFFBF5F2FFF9F4F0FFF5EFEBFFF1EBE7FFEEE7E3FFECE4E0FFADA29DFF7964
          5AFFD8BBAAFFD8BBA8FFE6D4C7FF8C766CFE1D15125D00000005000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          000100000001000000010000000100000001000000010000000DB88471FFFDFB
          FAFFF5EBE4FFEBE1DAFFA29089FF6A534BFF4B332BFF574239FF856F64FFDCC1
          B2FFDCC2B0FFEAD7CCFF978177FF2219166F0000000800000001000000040000
          0006000000060000000600000006000000060000000600000006000000060000
          0006000000060000000600000007000000070000000700000012B88675FFFCFA
          FAFFEAE1DBFF816A61FF937A6FFFBFA99CFFDEC8BAFFC7B0A2FFE0C8B8FFDFC7
          B7FFE9DACFFF9B857BFFA88F87FF0000001800000001000000000000000E0101
          0115010101170101011801010118010101180101011801010119010101190101
          0119010101190101011901010119010101190101011A01010123BA8978FFFAF8
          F7FFAC9A92FFA08A80FFEEE1D9FFF5EDE7FFF0E4DBFFE9D6C8FFE2CCBDFFE2CE
          BFFFA08A80FFBEB1ABFFD6BBB3FF0000001100000000000000001C407DCD2B5C
          A6FF2E5EA7FF2D5DA8FF2D5CA7FF2B5DA7FF2C5BA6FF2C5BA6FF2A5BA6FF2A5A
          A6FF2A5AA6FF2959A5FF2958A5FF2857A5FF2858A5FF26539EFFBD8C7AFFF8F7
          F6FF8E7368FFC8B6ADFFB4A098FF8F766AFFB09C93FFD8C8BFFFE5CEBFFFD1B9
          ABFF82675DFFEFE9E5FFC4998AFF0000000F00000000000000002355A2FF2B5E
          A7FF5498D0FF68BDEDFF4CA9E8FF4BA6E7FF49A6E7FF47A5E6FF45A5E5FF44A4
          E5FF43A1E4FF41A1E4FF40A0E3FF3F9FE2FF3D9EE2FF3B96DAFFC08F7FFFF8F7
          F6FF8C7165FFB7A299FFBFAFA7FFEEE6E1FFBBAAA1FFAF9B92FFE6D1C3FFE6D2
          C7FF7E6459FFF2EDE9FFBB8A77FF0000000E00000000000000002759A6FF376A
          AFFF417FBEFF82CBF2FF54AFEAFF50ABE9FF4EACE9FF4CA9E7FF4AA8E7FF48A6
          E6FF48A6E5FF45A5E6FF45A3E5FF44A2E5FF42A2E4FF3E9ADDFFC39484FFFAFA
          F9FF9D867BFFC7B8B0FFF6F0EAFFF8F1ECFFEAE1DCFF71574DFFE7D4C6FFD2C0
          B8FF8C7369FFF5F0EDFFBC8D7AFF0000000E00000000000000002A60ABFF497E
          BCFF2E66AEFF8FD2F2FF68BEEEFF57B2ECFF56B1EBFF55B0EAFF52AFE9FF51AC
          E8FF4FAAE8FF4DAAE8FF4CA9E7FF4AA7E7FF48A6E7FF45A0E0FFC59787FFFDFD
          FCFFF8F3EEFFF9F3EFFFFAF4EFFFF7F0ECFFA89791FF937C72FFEEE0D8FFB09C
          92FFB9A8A0FFF9F4F1FFC08F7EFF0000000E00000000000000002C65B1FF598D
          C6FF2E6AB0FF80BBE2FF85D0F3FF5EB7EDFF5CB7EDFF5CB5EDFF59B5EDFF58B3
          EBFF56B1EBFF56B0E9FF54AFE9FF52ADE9FF53AEE9FF4FA8E4FFC79A8CFFFEFE
          FEFFFAF6F3FFFAF5F3FFF9F4F0FFAB9B93FF8F7A72FFCABAB2FFB6A297FFA38C
          81FFF4ECE8FFFCF8F6FFC39282FF0000000E0000000000000000306BB3FF689E
          CFFF3876BAFF65A0D0FFA2DFF8FF63BCF0FF62BCEFFF62BBEEFF61BCEDFF66BD
          EEFF6CC0EFFF6EC0EFFF70C2EEFF6DBEEDFF6ABDEDFF65B7E7FFCA9E8EFFFFFE
          FEFFFBF7F4FFFBF6F4FFF9F4F2FFAC9589FF987D6FFFA58E85FFC6B6AFFFF6EF
          EAFFF9F4EFFFFDFAF8FFC49687FF0000000E00000001000000003370B7FF78AC
          D8FF478AC8FF4586C2FFB7E9FBFF75C8F3FF73C6F2FF7ACAF3FF7ECBF4FF7ECB
          F2FF7CCAF3FF7BC9F2FF77C8F1FF76C6F1FF74C4F0FF6FBEEAFFCCA391FFFFFE
          FEFFFCF8F7FFFCF8F6FFFCF7F5FFFAF5F3FFF8F3F1FFF8F3F1FFFAF4F1FFFCF6
          F2FFFBF6F1FFFDFBF9FFC79A8BFF0000000E00000001000000003675B9FF87BB
          E0FF589CD4FF3F82C0FFAFDDF1FFA7E2F9FF89D2F6FF88D1F6FF86CFF6FF85CE
          F5FF83CEF3FF81CCF3FF80CCF3FF7ECBF2FF7DCAF2FF78C5EDFFCEA495FFFFFF
          FEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFEFDFFFEFD
          FDFFFEFDFDFFFEFDFCFFC99E8EFF0000001000000002000000003779BCFF96C8
          E8FF65ADDEFF4A93CCFF90C2E1FFC4EDFCFF8ED6F7FF8DD6F7FF8CD4F6FF8AD3
          F6FF89D2F6FF88D2F5FF86D1F5FF84D0F4FF83CEF4FF81CCF1FFBAAFABFFCFA6
          96FFCFA696FFCEA695FFCEA595FFCEA595FFCFA494FFCDA494FFCEA393FFCCA2
          93FFCDA292FFCBA292FF9E8687EE0000000F00000002000000013A7FBFFFA4D4
          EEFF74BDE7FF5FAADCFF6AA7D3FFD8F6FDFF98DDF9FF93D9F8FF92D9F8FF90D8
          F8FF8FD6F8FF8ED6F7FF8BD4F6FF8BD4F6FF89D2F6FF87D1F3FF84CFF2FF82CE
          F1FF81CCF0FF7FCAF0FF7DC8EEFF7AC6ECFF77C5ECFF73C3EBFF71C2EBFF6EBE
          E9FF6DBEE8FF74BEE6FF265FA3F70204061500000003000000003B82C1FFB0E0
          F4FF82CBEFFF77C4EDFF519ACEFFCBECF7FFDFF8FEFFDFF8FEFFDEF8FEFFDDF8
          FEFFDDF8FEFFDCF7FEFFDAF6FEFFD8F5FCFFBFEDFBFF92D8F7FF8CD4F7FF8AD3
          F6FF88D4F6FF87D2F5FF85D1F5FF83CFF5FF82CEF4FF80CCF3FF7DCBF2FF7ACA
          F2FF77C8F1FF80CBF1FF3F82C1FF0B1E335500000005000000013C85C3FFBDE8
          F8FF90D9F5FF87D3F4FF6EBFE8FF56A4D4FF519CCDFF509BCDFF4E99CCFF4E98
          CBFF4B96CCFF4A94CBFF4993CAFF79B2D9FFD1F0F9FFD1F4FCFF9EDFF9FF90D8
          F8FF8FD7F7FF8DD5F7FF8BD6F7FF8AD4F7FF88D3F5FF86D2F5FF83D0F5FF82CE
          F3FF7FCCF3FF84CFF3FF60A6D6FF173C669D00000006000000013E88C5FFC7F0
          FCFF9AE4FBFF96E2FAFF90DDFAFF8ADAF9FF86D8F9FF83D6F8FF80D2F8FF7DD2
          F8FF7BCFF6FF77CDF6FF72CAF5FF60B6E8FF5AA0D2FFAED7EDFFE1F9FEFFE0F9
          FEFFDFF9FEFFDFF8FEFFDEF7FEFFDEF7FEFFDCF7FEFFDBF6FEFFDBF6FEFFD9F5
          FDFFD7F5FDFFD6F4FDFFBFE3F2FF225B99E00000000700000002408CC7FFCEF6
          FFFFA5EDFEFFA2EBFEFF9FE9FEFF9CE8FEFF99E7FDFF96E5FDFF93E2FDFF91E0
          FCFF8FDEFCFF8CDCFCFF87D9FBFF81D6FAFF73CBF5FF57A8DBFF4B96CBFF4A95
          CBFF4995CBFF4793CAFF4692CAFF4490C9FF438EC9FF428DC8FF408CC7FF286F
          B3FF286DB3FF276EB2FF2568A8F418446FA40000000500000002418FC9FFD2F7
          FFFFA8EFFFFFA6EEFFFFA5EDFFFFA3ECFEFFA1EAFEFF9FE9FEFF9CE8FEFF9AE6
          FDFF98E4FDFF95E2FDFF92E1FCFF8DDEFCFF86DAFBFF81D5FAFF7BD2F9FF77D0
          F9FF74CDF9FF71CAF8FF6EC9F6FF6CC7F6FF68C3F5FF66C2F4FF80CDF6FF3270
          B3FF010101170000000D000000080000000600000003000000014292CAFFD5F9
          FFFFACF1FFFFAAF0FFFFA8EFFFFFA6EEFFFFA5EDFFFFA3ECFFFFA1EBFEFF9FE9
          FEFF9DE8FEFF9AE6FDFF98E4FDFF95E3FDFF92E0FCFF8FDEFCFF8CDAFBFF87D9
          FBFF84D8FBFF82D6FAFF80D4FAFF7DD2F9FF7ACFF9FF77CEF8FF90D7F9FF3B81
          C0FF0000000F00000005000000020000000100000001000000004394CCFFD7FA
          FFFFAFF3FFFFAEF2FFFFACF1FFFFAAF0FFFFA8EFFFFFA6EDFFFFA5EDFFFFA3EC
          FEFFA1EBFEFF9FEAFEFF9DE7FEFF9AE7FEFF98E5FDFF96E3FDFF93E1FCFF91E0
          FCFF8EDDFCFF8BDBFBFF88DAFBFF86D8FAFF84D6FAFF81D3F9FF98DDFBFF3E88
          C6FF0000000C00000003000000000000000000000000000000004597CEFFDBFA
          FFFFB2F5FFFFB1F4FFFFAFF3FFFFAEF2FFFFACF1FFFFAAF0FFFFA8EFFFFFA6EE
          FFFFADEFFEFFC2F6FEFFCFF8FEFFCEF8FEFFCEF8FEFFCEF8FEFFCDF8FEFFCDF8
          FEFFCCF8FEFFCCF8FEFFCCF8FEFFCBF8FEFFCBF8FEFFCAF8FEFFA9DFF1FF3A7F
          B5E90000000A0000000300000000000000000000000000000000479ACFFFDCFB
          FFFFB5F6FFFFB4F6FFFFB2F5FFFFB1F4FFFFAFF3FFFFAEF2FFFFACF1FFFFB0F2
          FEFF95D3EDFF4496CCFF4495CCFF4495CCFF4494CCFF4494CBFF4494CBFF4393
          CBFF4293CBFF4392CAFF4292CAFF4291CAFF4290CAFF4290CAFF34719FCD1124
          324A000000070000000200000000000000000000000000000000479CD0FFDEFC
          FFFFB7F7FFFFB6F7FFFFB5F6FFFFB3F6FFFFB2F5FFFFB1F4FFFFB5F4FFFF91D3
          EDFF2D6284A80000000B00000009000000090000000900000009000000090000
          00090000000900000009000000090000000A0000000A0000000A000000090000
          00060000000300000001000000000000000000000000000000004290BEE8B4E4
          F3FFD6F9FEFFD5F9FEFFD5F9FEFFD5F9FEFFD4F9FEFFD4F9FEFFC7F0FAFF4C95
          C2EA050B0F1A0000000400000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          000100000001000000000000000000000000000000000000000012283445397F
          A6CB49A0D3FF49A0D3FF49A0D3FF49A0D2FF49A0D2FF499FD2FF499FD2FF1834
          4559000000040000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          0005000000050000000500000005000000050000000600000006000000050000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
end
