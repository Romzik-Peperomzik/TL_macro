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
