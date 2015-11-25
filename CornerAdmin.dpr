program CornerAdmin;

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
  AdminMenu in 'CornerAdmin\AdminMenu.pas' {frmMainMenu},
  BaseGrid in 'BaseGrid.pas' {FBaseGrid: TsyForm},
  syForm in 'syForm.pas',
  CSEZForm in 'CSEZFORM.PAS',
  BaseRicNonTh in 'BaseRicNonTh.pas' {FBaseRicNonTh: TBaseForm},
  BaseFrame in 'BaseFrame.pas' {SyFrame: TFrame},
  ConfermaPswdRep in 'ConfermaPswdRep.pas' {FConfermaPswdRep: TBaseForm},
  Splash in 'Splash.pas' {frmSplash},
  ModificaPswdRep in 'ModificaPswdRep.pas' {FModificaPswdRep: TBaseForm},
  BaseScheduler in 'CornerAdmin\BaseScheduler.pas' {FBaseScheduler},
  CalDiagn in 'CornerAdmin\CalDiagn.pas' {FCalDiagn: TsyForm},
  CreaPrenoPeriodo in 'CornerAdmin\CreaPrenoPeriodo.pas' {FCreaPrenoPeriodo: TBaseForm},
  ModiTemplatePreno in 'CornerAdmin\ModiTemplatePreno.pas' {FModiTemplatePreno},
  TmplCalend in 'CornerAdmin\TmplCalend.pas' {FTmplCalend: TBaseForm},
  VediBlocchi in 'CornerAdmin\VediBlocchi.pas' {FVediBlocchi: TBaseForm},
  StoricoAgende in 'CornerAdmin\StoricoAgende.pas' {FStoricoAgende: TBaseForm},
  Struttura in 'CornerAdmin\Struttura.pas' {FStruttura: TsyForm},
  ModDiagnostiche in 'CornerAdmin\ModDiagnostiche.pas' {FModDiagnostiche: TBaseForm},
  ModModalita in 'CornerAdmin\ModModalita.pas' {FModModalita: TBaseForm},
  CodiciRadiologia in 'CornerAdmin\CodiciRadiologia.pas' {FCodiciRadiologia: TsyForm},
  ModiCodEsame in 'CornerAdmin\ModiCodEsame.pas' {FModiCodEsame: TBaseForm},
  ModiCodMultiplo in 'CornerAdmin\ModiCodMultiplo.pas' {FModiCodMultiplo: TBaseForm},
  ModTariffario in 'CornerAdmin\ModTariffario.pas' {FModTariffario: TBaseForm},
  CopiaListino in 'CornerAdmin\CopiaListino.pas' {FCopiaListino: TBaseForm},
  ModiCodRadEsame in 'CornerAdmin\ModiCodRadEsame.pas' {FModiCodRadEsame: TBaseForm},
  ModiCodRadMultiplo in 'CornerAdmin\ModiCodRadMultiplo.pas' {FModiCodRadMultiplo: TBaseForm},
  EditMetodica in 'CornerAdmin\EditMetodica.pas' {FEditMetodica: TBaseForm},
  TabGenerale in 'CornerAdmin\TabGenerale.pas' {FTabGenerale: TsyForm},
  EditOspedale in 'CornerAdmin\EditOspedale.pas' {FEditOspedale: TBaseForm},
  Medici in 'Client\Medici.pas' {FMedici: TBaseForm},
  RicAssistito in 'Client\RicAssistito.pas' {FRicAssistito: TBaseForm},
  EditorShortcut in 'CornerAdmin\EditorShortcut.pas' {FEditorShortcut: TBaseForm},
  EditVerificaStampe in 'CornerAdmin\EditVerificaStampe.pas' {FEditVerificaStampe: TBaseForm},
  SetupGenerale in 'CornerAdmin\SetupGenerale.pas' {FSetupGenerale: TsyForm},
  IntestaRef in 'CornerAdmin\IntestaRef.pas' {FIntestaRef: TBaseForm},
  EditControlli in 'CornerAdmin\EditControlli.pas' {FEditControlli: TBaseForm},
  Utenti in 'CornerAdmin\Utenti.pas' {FUtenti: TsyForm},
  MemberOfRad in 'CornerAdmin\MemberOfRad.pas' {FMemberOfRad: TBaseForm},
  PrivateKey in 'CornerAdmin\PrivateKey.pas' {FPrivateKey: TBaseForm},
  ModiPreno in 'CornerAdmin\ModiPreno.pas' {FModiPreno},
  RicComuni in 'Client\RicComuni.pas' {FRicComuni: TBaseForm},
  RicRadiologiaPreno in 'Client\RicRadiologiaPreno.pas' {FRicRadiologiaPreno: TBaseForm},
  Anagrafica in 'Client\Anagrafica.pas' {FAnagrafica: TBaseForm},
  RicMedici in 'Client\RicMedici.pas' {FRicMedici: TBaseForm},
  RicercaTessera in 'Client\RicercaTessera.pas' {FRicercaTessera: TBaseForm},
  VisitePrecRAD in 'Client\VisitePrecRAD.pas' {FVisitePrecRAD: TBaseForm},
  RefMedicorner in 'Client\RefMedicorner.pas',
  CercaBarCode in 'Client\CercaBarCode.pas' {FCercaBarCode: TBaseForm},
  Note in 'Client\Note.pas' {FNote: TBaseForm},
  StampaAvvisi in 'Client\StampaAvvisi.pas' {FStampaAvvisi: TBaseForm},
  DocPreview in 'Client\DocPreview.pas' {fDocPreview},
  TabStampe in 'CornerAdmin\TabStampe.pas' {FTabStampe: TsyForm},
  zRadCodDiagn in 'CornerAdmin\zRadCodDiagn.pas' {FzRadCodDiagn: TsyForm},
  InviaA in 'CornerAdmin\InviaA.pas' {FInviaA: TBaseForm};

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

  Application.Title := 'Setup Medicorner';
  Application.ShowMainForm := false;
  Application.CreateForm(TFDMCommon, FDMCommon);
  Application.CreateForm(TfrmMainMenu, frmMainMenu);
  frmMainMenu.ImgList := FDMCommon.ImgList;
  Application.Run;
end.

