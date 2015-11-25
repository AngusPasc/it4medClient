inherited FsyDelQueryForm: TFsyDelQueryForm
  Left = 546
  Top = 218
  Caption = 'it4med'
  ClientHeight = 175
  ClientWidth = 486
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 24
  object fcLabelDal: TcxLabel [0]
    Left = 27
    Top = 22
    Caption = 'Dal...'
  end
  object fcLabelAl: TcxLabel [1]
    Left = 225
    Top = 22
    Caption = 'Al...'
  end
  inherited cxGroupBox1: TcxGroupBox
    Top = 125
    TabOrder = 2
    Width = 486
    inherited btSalva: TcxButton
      Hint = 'Conferma password'
      ModalResult = 1
    end
    inherited btAnnulla: TcxButton
      Hint = 'Annulla'
    end
    inherited cxPersonalizza: TcxButton
      Left = 451
    end
  end
  object cxDal: TcxDateEdit [3]
    Left = 27
    Top = 55
    Properties.DateButtons = [btnToday]
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 0
    Width = 187
  end
  object cxAl: TcxDateEdit [4]
    Left = 225
    Top = 55
    Properties.DateButtons = [btnToday]
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 1
    Width = 186
  end
end
