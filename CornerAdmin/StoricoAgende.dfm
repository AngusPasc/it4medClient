�
 TFSTORICOAGENDE 0�  TPF0�TFStoricoAgendeFStoricoAgendeLeftSTop� ActiveControlcxGrid1BorderIconsbiSystemMenu
biMaximize CaptionStorico agendaClientWidth�PixelsPerInch`
TextHeight �TcxGroupBoxcxGroupBox1Width� �	TcxButtonbtSalvaVisible  �	TcxButtoncxPersonalizzaLeft�   �TcxGridcxGrid1Left Top Width�HeightpAlignalClientTabOrder TcxGridDBTableViewcxGrid1DBTableView1Navigator.Buttons.CustomButtons Navigator.Buttons.ImagesFDMCommon.cxImageNavigator16"Navigator.Buttons.First.ImageIndex &Navigator.Buttons.PriorPage.ImageIndex"Navigator.Buttons.Prior.ImageIndex!Navigator.Buttons.Next.ImageIndex%Navigator.Buttons.NextPage.ImageIndex!Navigator.Buttons.Last.ImageIndex Navigator.Buttons.Insert.Visible Navigator.Buttons.Delete.VisibleNavigator.Buttons.Edit.VisibleNavigator.Buttons.Post.Visible Navigator.Buttons.Cancel.Visible!Navigator.Buttons.Refresh.Visible&Navigator.Buttons.SaveBookmark.Visible&Navigator.Buttons.GotoBookmark.Visible Navigator.Buttons.Filter.VisibleNavigator.Visible	DataController.DataSourcesStoricoAnagDataController.KeyFieldNamesDATA_OP/DataController.Summary.DefaultGroupSummaryItems )DataController.Summary.FooterSummaryItems $DataController.Summary.SummaryGroups OptionsBehavior.ImmediateEditor OptionsCustomize.ColumnFilteringOptionsData.DeletingOptionsData.EditingOptionsData.InsertingOptionsSelection.CellSelectOptionsSelection.InvertSelectOptionsView.NavigatorOffsetOptionsView.ColumnAutoWidth	OptionsView.GroupByBoxOptionsView.Indicator	 TcxGridDBColumncxGrid1DBTableView1DATA_OPDataBinding.FieldNameDATA_OP	SortIndex 	SortOrdersoAscendingWidtht  TcxGridDBColumncxGrid1DBTableView1NOMINATIVODataBinding.FieldName
NOMINATIVOWidth�   TcxGridDBColumncxGrid1DBTableView1TIPO_OPDataBinding.FieldNameTIPO_OPPropertiesClassNameTcxImageComboBoxPropertiesProperties.ImmediatePost	Properties.Items RepositoryItem!FDMCommon.edrepTIPO_OP_ANAGRAFICAWidth�   TcxGridDBColumncxGrid1DBTableView1COMMENTSDataBinding.FieldNameCOMMENTSWidth�   TcxGridDBColumncxGrid1DBTableView1VALORE_NEWDataBinding.FieldName
VALORE_NEWWidth�   TcxGridDBColumncxGrid1DBTableView1VALORE_OLDDataBinding.FieldName
VALORE_OLDWidthp   TcxGridLevelcxGrid1Level1GridViewcxGrid1DBTableView1   TAstaClientDataSetStoricoAgendaStreamOptions	ssIndexesssAggregates Indexes 
Aggregates Active	Constraints SequenceField.ApplyMomentamOnPostEditMode	Read OnlyAstaClientSocketFDMCommon.AstaClientSocketSQL.Stringsselect
a.tipo_op,p.nominativo,
a.data_op,a.campo,a.valore_new,a.valore_old,
t.commentsfrom log_agende a-join personale p on p.pkpersonale = a.user_idJleft join rb_field t on t.table_name = 'AGENDE' and t.field_name = a.campowhere a.agende_fk = :agende_fk ParamsName	agende_fk	ParamTypeptInputDataType	ftIntegerIsNullSize Value   QBEModeLeft�TopX
FastFieldsTIPO_OP,1,1NOMINATIVO,1,70DATA_OP,11,0
CAMPO,1,40VALORE_NEW,1,100VALORE_OLD,1,100COMMENTS,1,4000 FMultiTable UpdateMethodumManual TStringFieldStoricoAgendaNOMINATIVODisplayLabel	Operatore	FieldName
NOMINATIVOSizeF  TDateTimeFieldStoricoAgendaDATA_OPDisplayLabelData	FieldNameDATA_OPDisplayFormatddddd hh:nn  TStringFieldStoricoAgendaCAMPODisplayLabelCampo	FieldNameCAMPOSize(  TStringFieldStoricoAgendaVALORE_NEWDisplayLabelNuovo valore	FieldName
VALORE_NEWSized  TStringFieldStoricoAgendaVALORE_OLDDisplayLabelVecchio valore	FieldName
VALORE_OLDSized  TStringFieldStoricoAgendaTIPO_OPDisplayLabelTipo operazione	FieldNameTIPO_OPSize  TStringFieldStoricoAgendaCOMMENTSDisplayLabelCampo	FieldNameCOMMENTSSize�   TDataSourcesStoricoAnagDataSetStoricoAgendaLeft<Toph   