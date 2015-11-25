unit Note;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseRad, CSEZForm,   ExtCtrls, 
  DB, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit,
  ActnList, dxSkinsCore, dxSkinsDefaultPainters, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxGraphics, cxLookAndFeels,
  cxGroupBox;

type
  TFNote = class(TFBaseRad)
    cxDBNote: TcxDBMemo;
    sNote: TDataSource;
    ActionList1: TActionList;
    aConferma: TAction;
    aAnnulla: TAction;
    procedure aConfermaExecute(Sender: TObject);
    procedure aAnnullaExecute(Sender: TObject);
    procedure aConfermaUpdate(Sender: TObject);
    procedure csEZKeys1KeyIntercept(KeyType: TNavigationKey;
      Ctrl: TControl; var Intercept: Boolean);
  private
    { Private declarations }
  protected
    procedure DoCreate; override;
    procedure DoShow; override;
  public
    { Public declarations }

  end;

var
  FNote: TFNote;

implementation

uses DMCommon, cxRichEdit;

{$R *.dfm}

procedure TFNote.aConfermaExecute(Sender: TObject);
begin
  inherited;
  if (FNote.sNote.Dataset.State in dsEditModes) then
     FNote.sNote.Dataset.Post;
  ModalResult := mrOk;

end;

procedure TFNote.aAnnullaExecute(Sender: TObject);
begin
  inherited;
  if (FNote.sNote.Dataset.State in dsEditModes) then
     FNote.sNote.Dataset.Cancel;
  ModalResult := mrCancel;

end;

procedure TFNote.aConfermaUpdate(Sender: TObject);
begin
  inherited;
  aConferma.Enabled := (FNote.sNote.Dataset.State in dsEditModes);
end;

procedure TFNote.csEZKeys1KeyIntercept(KeyType: TNavigationKey;
  Ctrl: TControl; var Intercept: Boolean);
begin
  inherited;
  Intercept := Intercept and Assigned(Ctrl) and not (Ctrl is TcxCustomInnerMemo);

end;

procedure TFNote.DoShow;
begin
  inherited;
  cxDBNote.SetFocus;
end;

procedure TFNote.DoCreate;
begin
  inherited;
  ReadBarCode := False;
end;

end.