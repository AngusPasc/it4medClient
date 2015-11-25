unit EditorShortcut;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseRad, ComCtrls, StdCtrls, CSEZForm,  
  ExtCtrls,  dxLayoutControl, cxControls, Menus,
  cxLookAndFeelPainters, cxButtons, cxGraphics, cxLookAndFeels,
  dxLayoutContainer, cxContainer, cxEdit, cxGroupBox;

type
  TFEditorShortcut = class(TFBaseRad)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    hkyShortCut: THotKey;
  private
    { Private declarations }
  public
    { Public declarations }
    
  end;

var
  FEditorShortcut: TFEditorShortcut;

implementation

uses DMCommon;

{$R *.dfm}

end.