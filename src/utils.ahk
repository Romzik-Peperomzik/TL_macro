GetMouseColorPos() {
    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%
    MsgBox The current cursor position is x=%MouseX%, y=%MouseY%, color is %color%.
}


DisplayNotice(display := 0, GuiName := "none", label := "blank", x := 0, y := 0, h := 0, w := 0) {
    /*  Displays window on %x%, %y% with %label%. If called without
        args, then closing exact %GuiName% window.

        Required: %label% value should be without spaces.
    */
    if (display) {
        Gui, %GuiName%:New, AlwaysOnTop -SysMenu +Disabled,
        Gui, %GuiName%:Show, NoActivate x%x% y%y% h%h% w%w%, %label%
    } else {
        Gui, %GuiName%:Destroy
    }
}


MakePanelNeedleColorMap() {
    /*  Makes coords and colors map for each skill cell on UI panel.
        Choose needle pixel at 1 skill on panel ingame get coords with Alt+Z and
        write them in script UI.
        Then press hotkey (Alt+X) ingame its automatically writes x, y and color.
    */
    panel_needles := ""
    jump_count_limit := 12
    jump_count := 1
    small_jump := 55
    big_jump := 112

    x := x_panel_needle
    y := y_panel_needle

    while (jump_count <= jump_count_limit) {
        PixelGetColor, color, x, y, fast
        panel_needles .= x . "-" . y . "-" . color . ","
        jump_count += 1
        if (jump_count = 7) {
            x += big_jump    
        } else {
            x += small_jump
        }
    }

    IniWrite, %panel_needles%, settings.ini, coords, panel_needles
    
    MsgBox, Panel needles map are setted.
    Reload
}


TurnOffAllHotkey() {
    TurnOffHotkey(startRotationHotkey)
    TurnOffHotkey(customChatCommandHotkey)
    return
}


TurnOnAllHotkey() {
    if (start_rotation_active) {
        TurnOnHotkey(startRotationHotkey, "StartRotationLabel")
    }
    if (custom_chat_command_active) {
        TurnOnHotkey(customChatCommandHotkey, "CustomChatCommandLabel")
    }
    return
}


TurnOffHotkey(key) {
    if (key) {
        Hotkey, %key%, Off
    }
    return
}


TurnOnHotkey(key, label){
    if (key) {
        Hotkey, %key%, %label%, On
    } else {
        ;Msgbox, %key%
    }
    return
}
