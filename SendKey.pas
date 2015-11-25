unit SendKey;

interface

uses Classes;

Procedure SendText( S: String );
Procedure PostKeyEx32( key: Word; Const shift: TShiftState;  specialkey: Boolean );

implementation

uses Windows,sysutils;

      {************************************************************
      *
      * Parameters:
      * key : virtual keycode of the key to send. For printable
      * keys this is simply the ANSI code (Ord(character)).
      * shift : state of the modifier keys. This is a set, so you
      * can set several of these keys (shift, control, alt,
      * mouse buttons) in tandem. The TShiftState type is
      * declared in the Classes Unit.
      * specialkey: normally this should be False. Set it to True to
      * specify a key on the numeric keypad, for example.
      * Description:
      * Uses keybd_event to manufacture a series of key events matching
      * the passed parameters. The events go to the control with focus.
      * Note that for characters key is always the upper-case version of
      * the character. Sending without any modifier keys will result in
      * a lower-case character, sending it with [ssShift] will result
      * in an upper-case character!
      *Created: 17.7.98 by P. Below
      ************************************************************}
      Procedure PostKeyEx32( key: Word; Const shift: TShiftState;  specialkey: Boolean );
      Type
        TShiftKeyInfo = Record
          shift: Byte;
          vkey : Byte;
        End;
        byteset = Set of 0..7;
      Const
        shiftkeys: Array [1..3] of TShiftKeyInfo =
        ((shift: Ord(ssCtrl); vkey: VK_CONTROL ),
        (shift: Ord(ssShift); vkey: VK_SHIFT ),
        (shift: Ord(ssAlt); vkey: VK_MENU ));
      Var
        flag: DWORD;
        bShift: ByteSet absolute shift;
        i: Integer;
      Begin
      For i := 1 To 3 Do Begin
        If shiftkeys[i].shift In bShift Then
           keybd_event( shiftkeys[i].vkey,  MapVirtualKey(shiftkeys[i].vkey, 0), 0, 0);
      End; { For }
      If specialkey Then
        flag := KEYEVENTF_EXTENDEDKEY
      Else
        flag := 0;

      keybd_event( key, MapvirtualKey( key, 0 ), flag, 0 );
      flag := flag or KEYEVENTF_KEYUP;
      keybd_event( key, MapvirtualKey( key, 0 ), flag, 0 );

      For i := 3 DownTo 1 Do Begin
        If shiftkeys[i].shift In bShift Then
        keybd_event( shiftkeys[i].vkey,
        MapVirtualKey(shiftkeys[i].vkey, 0),
        KEYEVENTF_KEYUP, 0);
      End; { For }
      End; { PostKeyEx32 }

      Procedure SendText( S: String );
          Procedure SendRawCharacter( ch : Char );
          Var
            i: Integer;
            numStr: String;
          Begin
            numStr := Format('%4.4d',[Ord(ch)]);
            keybd_event( VK_MENU, MapVirtualKey(VK_MENU, 0),
            0, 0);
            for i:= 1 to Length(numStr) do
            PostKeyEx32( VK_NUMPAD0 + Ord(numstr[i])-Ord('0'), [], false );
            keybd_event( VK_MENU, MapVirtualKey(VK_MENU, 0),
            KEYEVENTF_KEYUP, 0);
          End;
      Var
        flags: TShiftState;
        vcode: word;
        ret : word;
        i, n : Integer;
        mask : word;
      Begin { SendText }
        For i := 1 To Length(S) Do Begin
          ret := VkKeyScan( S[i] );
          If ret = $FFFF Then
          SendRawCharacter( S[i] )
          Else Begin
            vcode := Lobyte( ret );
            flags := [];
            mask := $100;
            For n := 1 To 3 Do Begin
            If (ret and mask) <> 0 Then Begin
              Case mask Of
              $100: Include( flags, ssShift );
              $200: Include( flags, ssCtrl );
              $400: Include( flags, ssAlt );
              End; { Case }
            End; { If }
            mask := mask shl 1;
            End; { For }
            PostKeyEx32( vcode, flags, false );
          End; { Else }
        End; { For }
      End; { SendText }

end.
