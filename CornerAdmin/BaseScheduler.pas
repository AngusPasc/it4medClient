unit BaseScheduler;

interface

uses
  cxSchedulerEventEditor, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons, Controls, ExtCtrls, Classes, cxGraphics, cxLookAndFeels,
  dxSkinsCore, dxSkinsDefaultPainters, cxGroupBox, cxControls, cxContainer,
  cxEdit;

type
  TFBaseScheduler = class(TcxSchedulerCustomEventEditor)
    cxGroupBox1: TcxGroupBox;
    btSalva: TcxButton;
    btAnnulla: TcxButton;
  end;

var
  FBaseScheduler: TFBaseScheduler;

implementation

{$R *.dfm}

end.
