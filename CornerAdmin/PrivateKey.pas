unit PrivateKey;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseRad, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo,
  CSEZForm,   ExtCtrls,  dxSkinsCore,
  dxSkinsDefaultPainters, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxGraphics, cxLookAndFeels, cxGroupBox;

type
  TFPrivateKey = class(TFBaseRad)
    cxMemo1: TcxMemo;
  private
    { Private declarations }
  public
    { Public declarations }
   
  end;

var
  FPrivateKey: TFPrivateKey;

implementation

{$R *.dfm}

end.