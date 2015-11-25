unit syDelQueryForm;

interface

uses
  BaseRad, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  Controls, StdCtrls, CSEZForm, Classes,  ExtCtrls, cxDropDownEdit, cxCalendar,
  Menus, cxLookAndFeelPainters, cxButtons, cxLabel, cxGraphics,
  cxLookAndFeels, ComCtrls, dxCore, cxDateUtils, cxGroupBox;

type
  TFsyDelQueryForm = class(TFBaseRad)
    fcLabelDal: TcxLabel;
    cxDal: TcxDateEdit;
    cxAl: TcxDateEdit;
    fcLabelAl: TcxLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function syInputPeriodo(const ACaption: string; var Dal,Al: TDateTime{; xstyle: TcxEditStyleController}): Boolean;

var
  FsyDelQueryForm: TFsyDelQueryForm;

implementation
uses Forms;

{$R *.DFM}

function syInputPeriodo(const ACaption: string; var Dal,Al: TDateTime{; xstyle: TcxEditStyleController}): Boolean;
begin
  result := false;
  FsyDelQueryForm := TFsyDelQueryForm.Create(Application);
  try

//     FsyDelQueryForm.cxDal.Style.StyleController := xstyle;
//     FsyDelQueryForm.cxAl.Style.StyleController := xstyle;
     FsyDelQueryForm.Caption := ACaption;
     if Dal>0 then
        FsyDelQueryForm.cxDal.Date := Dal;
     if Al>0 then
        FsyDelQueryForm.cxAl.Date := Al;
     if FsyDelQueryForm.ShowModal=mrOk then
     begin
       Dal := FsyDelQueryForm.cxDal.Date;
       Al := FsyDelQueryForm.cxAl.Date;
       Result := True;
     end;
  finally
     FsyDelQueryForm.Free;
     FsyDelQueryForm := nil;
  end;
end;

procedure TFsyDelQueryForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if ModalResult=mrNone then
     ModalResult := mrCancel;
end;

end.
