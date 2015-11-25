unit IntestaRef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseRad, CSEZForm,   ExtCtrls, 
  dxLayoutControl, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxControls,
  DB, dxSkinsCore, dxSkinsDefaultPainters, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxGraphics, cxLookAndFeels,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxGroupBox;

type
  TFIntestaRef = class(TFBaseRad)
    sqServiziRadiologia: TDataSource;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
    
  end;

var
  FIntestaRef: TFIntestaRef;

implementation

uses SetupGenerale, DMCommon;

{$R *.dfm}

end.