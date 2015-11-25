program MediCorner;

{$I syVer.inc}

uses
  FastMM4,
  madExcept,
  Forms,
  VirtualUI_AutoRun,
  DMCommon in 'DMCommon.pas' {FDMCommon: TDataModule},
  BaseForm in 'BaseForm.pas',
  BaseRad in 'BaseRad.pas' {FBaseRad: TBaseForm},
  IEController in '..\3pD7\ks7\IEController.pas',
  IIConsts in '..\3pD7\ks7\IIConsts.pas',
  IInterface in '..\3pD7\ks7\IInterface.pas',
  Metropolis_GM in 'Metropolis_GM.pas',
  BaseMainMenu in 'BaseMainMenu.pas' {frmBaseMainMenu},
  BaseGrid in 'BaseGrid.pas' {FBaseGrid: TsyForm},
  syForm in 'syForm.pas',
  CSEZForm in 'CSEZFORM.PAS',
  BaseRicNonTh in 'BaseRicNonTh.pas' {FBaseRicNonTh: TBaseForm},
  BaseFrame in 'BaseFrame.pas' {SyFrame: TFrame},
  ConfermaPswdRep in 'ConfermaPswdRep.pas' {FConfermaPswdRep: TBaseForm},
  Splash in 'Splash.pas' {frmSplash},
  RBViewer in '..\3pD7\ks7\RBViewer.pas',
  ModificaPswdRep in 'ModificaPswdRep.pas' {FModificaPswdRep: TBaseForm},
  AccDiagn in 'Client\AccDiagn.pas' {FAccDiagn: TsyForm},
  MainMenu in 'Client\MainMenu.pas' {frmMainMenu},
  ConfermaCancella in 'Client\ConfermaCancella.pas' {FConfermaCancella: TBaseForm},
  DatiAccImp in 'Client\DatiAccImp.pas' {FDatiAccImp: TBaseForm},
  CercaBarCode in 'Client\CercaBarCode.pas' {FCercaBarCode: TBaseForm},
  StampaAvvisi in 'Client\StampaAvvisi.pas' {FStampaAvvisi: TBaseForm},
  RicAssistito in 'Client\RicAssistito.pas' {FRicAssistito: TBaseForm},
  Anagrafica in 'Client\Anagrafica.pas' {FAnagrafica: TBaseForm},
  AssegnaServizio in 'Client\AssegnaServizio.pas' {FAssegnaServizio: TBaseForm},
  VisitePrecRAD in 'Client\VisitePrecRAD.pas' {FVisitePrecRAD: TBaseForm},
  AssegnaReferti in 'Client\AssegnaReferti.pas' {FAssegnaReferti: TBaseForm},
  Note in 'Client\Note.pas' {FNote: TBaseForm},
  DatiWCF in 'Client\DatiWCF.pas' {FDatiWCF: TBaseForm},
  PrenotaNew in 'Client\PrenotaNew.pas' {FPrenotaNew: TsyForm},
  PrenoBaseDiagn in 'Client\PrenoBaseDiagn.pas' {PrenoDiagn: TFrame},
  Prenobasetest in 'Client\PrenoBaseTest.pas' {PrenoTest: TFrame},
  RicAssPreno in 'Client\RicAssPreno.pas' {FRicAssPreno: TBaseForm},
  RicMedici in 'Client\RicMedici.pas' {FRicMedici: TBaseForm},
  Medici in 'Client\Medici.pas' {FMedici: TBaseForm},
  RicercaTessera in 'Client\RicercaTessera.pas' {FRicercaTessera: TBaseForm},
  ArchivioReferti in 'Client\ArchivioReferti.pas' {FArchivioReferti: TsyForm},
  Fusione in 'Client\Fusione.pas' {FFusione: TBaseForm},
  RefMedicorner in 'Client\RefMedicorner.pas',
  StoricoAnag in 'Client\StoricoAnag.pas' {FStoricoAnag: TBaseForm},
  InizializzaRef in 'Client\InizializzaRef.pas',
  DaStampare in 'Client\DaStampare.pas' {FDaStampare: TsyForm},
  ConsegnaReferto in 'Client\ConsegnaReferto.pas' {FConsegnaReferto: TBaseForm},
  ConsegnaRef in 'Client\ConsegnaRef.pas' {FConsegnaRef: TBaseForm},
  CallWCF in 'Client\CallWCF.pas',
  DocPreview in 'Client\DocPreview.pas' {fDocPreview},
  FondiReferto in 'Client\FondiReferto.pas' {FFondiReferto: TBaseForm},
  BaseRefer in 'Client\BaseRefer.pas' {FBaseRefer: TBaseForm},
  Refer_Text in 'Client\Refer_Text.pas' {FRefer_Text: TBaseForm},
  RicRadiologiaPreno in 'Client\RicRadiologiaPreno.pas' {FRicRadiologiaPreno: TBaseForm},
  Privacy in 'Client\Privacy.pas' {FPrivacy: TBaseForm},
  TreeTestiRic in 'Client\TreeTestiRic.pas' {FTreeTestiRic: TBaseForm},
  ModificaTestoStd in 'Client\ModificaTestoStd.pas' {FModificaTestoStd: TBaseForm},
  SpostaReferti in 'Client\SpostaReferti.pas' {FSpostaReferti: TBaseForm},
  CutPaste in 'Client\CutPaste.pas' {FCutPaste: TBaseForm},
  RicComuni in 'Client\RicComuni.pas' {FRicComuni: TBaseForm},
  ScegliCodiceAcc in 'Client\ScegliCodiceAcc.pas' {FScegliCodiceAcc: TBaseForm};

{$R Medicorner.KLR}

{$R *.RES}
{$R 'dpiaware.res'}

begin

{$IFDEF TRADUZIONI}
  LocalizerOnFly.ErrorReaction := erIgnore;
  LocalizerOnFly.Init();
{$ENDIF}
  Application.Initialize;

  frmSplash := TfrmSplash.Create(Application);
  if frmSplash<>nil then
  begin
    frmSplash.Show;
    frmsplash.Update;
  end;

  Application.Title := 'Medicorner';
  Application.ShowMainForm := false;
  Application.CreateForm(TFDMCommon, FDMCommon);
  Application.CreateForm(TfrmMainMenu, frmMainMenu);
  frmMainMenu.ImgList := FDMCommon.ImgList;  
  Application.Run;
end.

