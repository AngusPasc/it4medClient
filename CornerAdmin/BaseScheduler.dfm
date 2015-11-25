object FBaseScheduler: TFBaseScheduler
  Left = 568
  Top = 220
  Width = 621
  Height = 455
  Caption = 'FBaseScheduler'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Source Sans Pro'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 24
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 374
    Align = alBottom
    TabOrder = 0
    Height = 50
    Width = 613
    object btSalva: TcxButton
      Left = 12
      Top = 12
      Width = 80
      Height = 26
      Hint = 'Conferma operazione'
      Caption = 'Conferma'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Source Sans Pro'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
    end
    object btAnnulla: TcxButton
      Left = 106
      Top = 12
      Width = 80
      Height = 26
      Hint = 'Annulla le modifiche'
      Caption = 'Annulla'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Source Sans Pro'
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
    end
  end
end
