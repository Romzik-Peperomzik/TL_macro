#Include functions.ahk
#Include rw_settings.ahk
#Include global_vars.ahk
#Include gui.ahk
#Include utils.ahk

; #IfWinActive, TL Client
#SingleInstance force   ; Replaces the old instance of script automatically
#NoEnv                  ; Recommended for performance
#Persistent             ; Keeps a script permanently running
#MaxThreadsPerHotkey 2
SetDefaultMouseSpeed, 0 ; Sets the mouse speed, 0 - instantly

;-----------------------------------------------------------------------------
ReadSettings()

; Binding hotkeys to functions of callback
Hotkey, %startRotationHotkey%, StartRotationLabel
Hotkey, %customChatCommandHotkey%, CustomChatCommandLabel

; Prevents single any key tap blocking when script launched.
; TurnOffAllHotkey()
; TurnOnAllHotkey()

RunGUI()

;-----------------------------------------------------------------------------
; ! - alt, ^ - ctrl, + - shift.
; Functions that are not represented into GUI, only hotkeys.
!z::GetMouseColorPos()
!x::Test()
;-----------------------------------------------------------------------------


StartRotationLabel:
    if (start_rotation_active) {
        Hotkey, %startRotationHotkey%, On
        StartRotationToggle()
    } else {
        Hotkey, %startRotationHotkey%, Off
        Send, %startRotationHotkey%
    }
    return


CustomChatCommandLabel:
    if (custom_chat_command_active) {
        Hotkey, %customChatCommandHotkey%, On
        CustomChatCommand()
    } else {
        Hotkey, %customChatCommandHotkey%, Off
        Send, %customChatCommandHotkey%
    }
    return

; Hotkeys for script handling.
RCtrl::reloadNsave()
Pause:: pause
$F2:: suspend


reloadNsave() {
    SaveSettings()
    reload
}
