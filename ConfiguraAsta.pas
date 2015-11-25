unit ConfiguraAsta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseRad, dxLayoutControl, cxControls, CSEZForm, 
   ExtCtrls,  cxMaskEdit, cxSpinEdit, cxContainer,
  cxEdit, cxTextEdit, dxLayoutLookAndFeels, cxCheckBox, dxSkinsCore,
  dxSkinsDefaultPainters, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxGraphics, cxLookAndFeels, dxLayoutcxEditAdapters,
  dxLayoutContainer;

type
  TFConfiguraAsta = class(TFBaseRad)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxAsta1: TcxTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxPorta1: TcxSpinEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxAsta2: TcxTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxPorta2: TcxSpinEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxUpdate: TcxTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxCompressione: TcxCheckBox;
    dxLayoutControl1Item6: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConfiguraAsta: TFConfiguraAsta;

implementation

uses DMCommon;

{$R *.dfm}

end.