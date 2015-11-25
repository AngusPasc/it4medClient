{.$DEFINE TRADUZIONI}
{$DEFINE VIRTUALUI}

// -- Versioni compilatore

{$IFDEF VER185} { Borland Delphi 2007 //CodeGear}
  {$DEFINE DELPHI2007}
{$ENDIF}

{$IFDEF VER200} { Borland Delphi 2009 //CodeGear/Tiburon}
  {$DEFINE DELPHI2007}
  {$DEFINE DELPHI2009}
{$ENDIF}
