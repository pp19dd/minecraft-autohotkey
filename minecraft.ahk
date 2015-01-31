; ! = alt	^ = control	   + = shift

#IfWinActive ahk_class LWJGL
{

    ; ================================================================
    ; navigation (mouse button to jump, ctrl + / - to ascend/descend
    ; ================================================================

    *^=::
    {
        SendInput t
        Sleep 150
        SendInput /ascend{enter}
        return
    }

    *^-::
    {
        SendInput t
        Sleep 150
        SendInput /descend{enter}
        return
    }

    XButton1::
    {
        SendInput t
        Sleep 100
        SendInput /jumpto{enter}
        return
    }

    ; ================================================================
    ; worldedit clipboard: fixwater, copy, paste, undo, cut
    ; ================================================================

    ^w::
    {
        SendInput t
        Sleep 100
        SendInput //fixwater 15{enter}
        return
    }

    ^x::
    {
        SendInput t
        Sleep 100
        SendInput //set 0{enter}
        return
    }
    ^c::
    {
        SendInput t
        Sleep 100
        SendInput //copy{enter}
        return
    }
    ^v::
    {
        SendInput t
        Sleep 100
        SendInput //paste{enter}
        return
    }
    ^z::
    {
        SendInput t
        Sleep 100
        SendInput //undo{enter}
        return
    }

    ; ================================================================
    ; ctrl-numpad: move block(s)
    ; ================================================================
    ^NumPad1::
    {
        SendInput t
        Sleep 100
        SendInput //move 1{enter}
        return
    }

    ^NumPad2::
    {
        SendInput t
        Sleep 100
        SendInput //move 2{enter}
        return
    }

    ^NumPad3::
    {
        SendInput t
        Sleep 100
        SendInput //move 3{enter}
        return
    }

    ^NumPad4::
    {
        SendInput t
        Sleep 100
        SendInput //move 4{enter}
        return
    }

    ^NumPad5::
    {
        SendInput t
        Sleep 100
        SendInput //move 5{enter}
        return
    }

    ^NumPad6::
    {
        SendInput t
        Sleep 100
        SendInput //move 6{enter}
        return
    }

    ^NumPad7::
    {
        SendInput t
        Sleep 100
        SendInput //move 7{enter}
        return
    }

    ^NumPad8::
    {
        SendInput t
        Sleep 100
        SendInput //move 8{enter}
        return
    }

    ^NumPad9::
    {
        SendInput t
        Sleep 100
        SendInput //move 9{enter}
        return
    }

    ^NumPad0::
    {
        SendInput t
        Sleep 100
        SendInput //move 10{enter}
        return
    }

    ; ================================================================
    ; alt-numpad: stack block(s)
    ; ================================================================
    !NumPad1::
    {
        SendInput t
        Sleep 100
        SendInput //stack 1{enter}
        return
    }

    !NumPad2::
    {
        SendInput t
        Sleep 100
        SendInput //stack 2{enter}
        return
    }

    !NumPad3::
    {
        SendInput t
        Sleep 100
        SendInput //stack 3{enter}
        return
    }

    !NumPad4::
    {
        SendInput t
        Sleep 100
        SendInput //stack 4{enter}
        return
    }

    !NumPad5::
    {
        SendInput t
        Sleep 100
        SendInput //stack 5{enter}
        return
    }

    !NumPad6::
    {
        SendInput t
        Sleep 100
        SendInput //stack 6{enter}
        return
    }

    !NumPad7::
    {
        SendInput t
        Sleep 100
        SendInput //stack 7{enter}
        return
    }

    !NumPad8::
    {
        SendInput t
        Sleep 100
        SendInput //stack 8{enter}
        return
    }

    !NumPad9::
    {
        SendInput t
        Sleep 100
        SendInput //stack 9{enter}
        return
    }

    !NumPad0::
    {
        SendInput t
        Sleep 100
        SendInput //stack 10{enter}
        return
    }

    ; ================================================================
    ; flexible macros : hit ctrl-1 through 5 to store a macro
    ; ================================================================


    ^1::
    {
        InputBox, macro1, Set Minecraft Hotkey, What do you want to be typed when you hit ALT+1 ?,,,,,,,,%macro1%
        return
    }

    ^2::
    {
        InputBox, macro2, Set Minecraft Hotkey, What do you want to be typed when you hit ALT+2 ?,,,,,,,,%macro2%
        return
    }

    ^3::
    {
        InputBox, macro3, Set Minecraft Hotkey, What do you want to be typed when you hit ALT+3 ?,,,,,,,,%macro3%
        return
    }

    ^4::
    {
        InputBox, macro4, Set Minecraft Hotkey, What do you want to be typed when you hit ALT+4 ?,,,,,,,,%macro4%
        return
    }

    ^5::
    {
        InputBox, macro5, Set Minecraft Hotkey, What do you want to be typed when you hit ALT+5 ?,,,,,,,,%macro5%
        return
    }

    ; ================================================================
    ; execute flexible macros with alt-1 through 5
    ; ================================================================

    !1::
    {
        SendInput t
        Sleep 100
        SendInput %macro1%{enter}
        return
    }

    !2::
    {
        SendInput t
        Sleep 100
        SendInput %macro2%{enter}
        return
    }

    !3::
    {
        SendInput t
        Sleep 100
        SendInput %macro3%{enter}
        return
    }

    !4::
    {
        SendInput t
        Sleep 100
        SendInput %macro4%{enter}
        return
    }

    !5::
    {
        SendInput t
        Sleep 100
        SendInput %macro5%{enter}
        return
    }

    return
}