RunGUI() {
    Gui, Margin , 0, 0
    Gui, Add, Tab2, Choose1 w901 h701, Rotation

    Gui, Add, Edit, x0 y0 w0 h0 ; dummy edit to avoid selection input field

    ; Rotation tab
    Gui, Tab, Rotation

    ; Rotation section
    Gui, Font, S9 CDefault Bold, Verdana
    Gui, Add, GroupBox, x25 y30 w845 h580 , Rotation
    Gui, Font, norm, Verdana
    Gui, Add, Text, x55 y60 w190 h20 , Rotation seq:
    Gui, Add, Edit, x150 y60 w200 h20 vrotation_key_set, %rotation_key_set%
    Gui, Add, Text, x370 y60 w480 h20 , Enter rotation sequence in input field and split keys with - like that: 1-2-3

    Gui, Add, Text, x55 y90 w190 h20 , Key 1
    Gui, Add, CheckBox, x110 y90 w15 h15 Checked%key1_active% vkey1_active,
    Gui, Add, Edit, x150 y90 w40 h20 vkey1, %key1%
    Gui, Add, Text, x200 y90 w190 h20 , Cast time:
    Gui, Add, CheckBox, x270 y90 w15 h15 Checked%key1_cast_active% vkey1_cast_active,
    Gui, Add, Edit, x300 y90 w50 h20 vkey1_cast_delay, %key1_cast_delay%
    Gui, Add, Text, x370 y90 w45 h20 , Accept:
    Gui, Add, CheckBox, x425 y90 w15 h15 Checked%key1_accept_click% vkey1_accept_click,
    Gui, Add, Text, x450 y90 w45 h20 , Times:
    Gui, Add, Edit, x500 y90 w20 h20 vkey1_click_times, %key1_click_times%


    Gui, Add, Text, x55 y120 w160 h20 , Key 2
    Gui, Add, CheckBox, x110 y120 w15 h15 Checked%key2_active% vkey2_active,
    Gui, Add, Edit, x150 y120 w40 h20 vkey2, %key2%
    Gui, Add, Text, x200 y120 w190 h20 , Cast time:
    Gui, Add, CheckBox, x270 y120 w15 h15 Checked%key2_cast_active% vkey2_cast_active,
    Gui, Add, Edit, x300 y120 w50 h20 vkey2_cast_delay, %key2_cast_delay%
    Gui, Add, Text, x370 y120 w45 h20 , Accept:
    Gui, Add, CheckBox, x425 y120 w15 h15 Checked%key2_accept_click% vkey2_accept_click,
    Gui, Add, Text, x450 y120 w45 h20 , Times:
    Gui, Add, Edit, x500 y120 w20 h20 vkey2_click_times, %key2_click_times%

    Gui, Add, Text, x55 y150 w250 h20 , Key 3
    Gui, Add, CheckBox, x110 y150 w15 h15 Checked%key3_active% vkey3_active,
    Gui, Add, Edit, x150 y150 w40 h20 vkey3, %key3%
    Gui, Add, Text, x200 y150 w190 h20 , Cast time:
    Gui, Add, CheckBox, x270 y150 w15 h15 Checked%key3_cast_active% vkey3_cast_active,
    Gui, Add, Edit, x300 y150 w50 h20 vkey3_cast_delay, %key3_cast_delay%
    Gui, Add, Text, x370 y150 w45 h20 , Accept:
    Gui, Add, CheckBox, x425 y150 w15 h15 Checked%key3_accept_click% vkey3_accept_click
    Gui, Add, Text, x450 y150 w45 h20 , Times:
    Gui, Add, Edit, x500 y150 w20 h20 vkey3_click_times, %key3_click_times%

    Gui, Add, Text, x55 y180 w250 h20 , Key 4
    Gui, Add, CheckBox, x110 y180 w15 h15 Checked%key4_active% vkey4_active,
    Gui, Add, Edit, x150 y180 w40 h20 vkey4, %key4%
    Gui, Add, Text, x200 y180 w190 h20 , Cast time:
    Gui, Add, CheckBox, x270 y180 w15 h15 Checked%key4_cast_active% vkey4_cast_active,
    Gui, Add, Edit, x300 y180 w50 h20 vkey4_cast_delay, %key4_cast_delay%
    Gui, Add, Text, x370 y180 w45 h20 , Accept:
    Gui, Add, CheckBox, x425 y180 w15 h15 Checked%key4_accept_click% vkey4_accept_click
    Gui, Add, Text, x450 y180 w45 h20 , Times:
    Gui, Add, Edit, x500 y180 w20 h20 vkey4_click_times, %key4_click_times%

    Gui, Add, Text, x55 y210 w250 h20 , Key 5
    Gui, Add, CheckBox, x110 y210 w15 h15 Checked%key5_active% vkey5_active,
    Gui, Add, Edit, x150 y210 w40 h20 vkey5, %key5%
    Gui, Add, Text, x200 y210 w190 h20 , Cast time:
    Gui, Add, CheckBox, x270 y210 w15 h15 Checked%key5_cast_active% vkey5_cast_active,
    Gui, Add, Edit, x300 y210 w50 h20 vkey5_cast_delay, %key5_cast_delay%
    Gui, Add, Text, x370 y210 w45 h20 , Accept:
    Gui, Add, CheckBox, x425 y210 w15 h15 Checked%key5_accept_click% vkey5_accept_click,
    Gui, Add, Text, x450 y210 w45 h20 , Times:
    Gui, Add, Edit, x500 y210 w20 h20 vkey5_click_times, %key5_click_times%

    Gui, Add, Text, x55 y240 w250 h20 , Key 6
    Gui, Add, CheckBox, x110 y240 w15 h15 Checked%key6_active% vkey6_active,
    Gui, Add, Edit, x150 y240 w40 h20 vkey6, %key6%
    Gui, Add, Text, x200 y240 w190 h20 , Cast time:
    Gui, Add, CheckBox, x270 y240 w15 h15 Checked%key6_cast_active% vkey6_cast_active,
    Gui, Add, Edit, x300 y240 w50 h20 vkey6_cast_delay, %key6_cast_delay%
    Gui, Add, Text, x370 y240 w45 h20 , Accept:
    Gui, Add, CheckBox, x425 y240 w15 h15 Checked%key6_accept_click% vkey6_accept_click,
    Gui, Add, Text, x450 y240 w45 h20 , Times:
    Gui, Add, Edit, x500 y240 w20 h20 vkey6_click_times, %key6_click_times%

    Gui, Add, Text, x55 y270 w250 h20 , Key 7
    Gui, Add, CheckBox, x110 y270 w15 h15 Checked%key7_active% vkey7_active,
    Gui, Add, Edit, x150 y270 w40 h20 vkey7, %key7%
    Gui, Add, Text, x200 y270 w190 h20 , Cast time:
    Gui, Add, CheckBox, x270 y270 w15 h15 Checked%key7_cast_active% vkey7_cast_active,
    Gui, Add, Edit, x300 y270 w50 h20 vkey7_cast_delay, %key7_cast_delay%
    Gui, Add, Text, x370 y270 w45 h20 , Accept:
    Gui, Add, CheckBox, x425 y270 w15 h15 Checked%key7_accept_click% vkey7_accept_click,
    Gui, Add, Text, x450 y270 w45 h20 , Times:
    Gui, Add, Edit, x500 y270 w20 h20 vkey7_click_times, %key7_click_times%

    Gui, Add, Text, x55 y300 w250 h20 , Key 8
    Gui, Add, CheckBox, x110 y300 w15 h15 Checked%key8_active% vkey8_active,
    Gui, Add, Edit, x150 y300 w40 h20 vkey8, %key8%
    Gui, Add, Text, x200 y300 w190 h20 , Cast time:
    Gui, Add, CheckBox, x270 y300 w15 h15 Checked%key8_cast_active% vkey8_cast_active,
    Gui, Add, Edit, x300 y300 w50 h20 vkey8_cast_delay, %key8_cast_delay%
    Gui, Add, Text, x370 y300 w45 h20 , Accept:
    Gui, Add, CheckBox, x425 y300 w15 h15 Checked%key8_accept_click% vkey8_accept_click
    Gui, Add, Text, x450 y300 w45 h20 , Times:
    Gui, Add, Edit, x500 y300 w20 h20 vkey8_click_times, %key8_click_times%

    Gui, Add, Text, x55 y330 w250 h20 , Key 9
    Gui, Add, CheckBox, x110 y330 w15 h15 Checked%key9_active% vkey9_active,
    Gui, Add, Edit, x150 y330 w40 h20 vkey9, %key9%
    Gui, Add, Text, x200 y330 w190 h20 , Cast time:
    Gui, Add, CheckBox, x270 y330 w15 h15 Checked%key9_cast_active% vkey9_cast_active,
    Gui, Add, Edit, x300 y330 w50 h20 vkey9_cast_delay, %key9_cast_delay%
    Gui, Add, Text, x370 y330 w45 h20 , Accept:
    Gui, Add, CheckBox, x425 y330 w15 h15 Checked%key9_accept_click% vkey9_accept_click
    Gui, Add, Text, x450 y330 w45 h20 , Times:
    Gui, Add, Edit, x500 y330 w20 h20 vkey9_click_times, %key9_click_times%

    Gui, Add, Text, x55 y360 w250 h20 , Key 0
    Gui, Add, CheckBox, x110 y360 w15 h15 Checked%key10_active% vkey10_active,
    Gui, Add, Edit, x150 y360 w40 h20 vkey10, %key10%
    Gui, Add, Text, x200 y360 w190 h20 , Cast time:
    Gui, Add, CheckBox, x270 y360 w15 h15 Checked%key10_cast_active% vkey10_cast_active,
    Gui, Add, Edit, x300 y360 w50 h20 vkey10_cast_delay, %key10_cast_delay%
    Gui, Add, Text, x370 y360 w45 h20 , Accept:
    Gui, Add, CheckBox, x425 y360 w15 h15 Checked%key10_accept_click% vkey10_accept_click,
    Gui, Add, Text, x450 y360 w45 h20 , Times:
    Gui, Add, Edit, x500 y360 w20 h20 vkey10_click_times, %key10_click_times%

    Gui, Add, Text, x55 y390 w250 h20 , Key -
    Gui, Add, CheckBox, x110 y390 w15 h15 Checked%key11_active% vkey11_active,
    Gui, Add, Edit, x150 y390 w40 h20 vkey11, %key11%
    Gui, Add, Text, x200 y390 w190 h20 , Cast time:
    Gui, Add, CheckBox, x270 y390 w15 h15 Checked%key11_cast_active% vkey11_cast_active,
    Gui, Add, Edit, x300 y390 w50 h20 vkey11_cast_delay, %key11_cast_delay%
    Gui, Add, Text, x370 y390 w45 h20 , Accept:
    Gui, Add, CheckBox, x425 y390 w15 h15 Checked%key11_accept_click% vkey11_accept_click,
    Gui, Add, Text, x450 y390 w45 h20 , Times:
    Gui, Add, Edit, x500 y390 w20 h20 vkey11_click_times, %key11_click_times%

    Gui, Add, Text, x55 y420 w250 h20 , Key =
    Gui, Add, CheckBox, x110 y420 w15 h15 Checked%key12_active% vkey12_active,
    Gui, Add, Edit, x150 y420 w40 h20 vkey12, %key12%
    Gui, Add, Text, x200 y420 w190 h20 , Cast time:
    Gui, Add, CheckBox, x270 y420 w15 h15 Checked%key12_cast_active% vkey12_cast_active,
    Gui, Add, Edit, x300 y420 w50 h20 vkey12_cast_delay, %key12_cast_delay% 
    Gui, Add, Text, x370 y420 w45 h20 , Accept:
    Gui, Add, CheckBox, x425 y420 w15 h15 Checked%key12_accept_click% vkey12_accept_click,
    Gui, Add, Text, x450 y420 w45 h20 , Times:
    Gui, Add, Edit, x500 y420 w20 h20 vkey12_click_times, %key12_click_times%

    Gui, Add, Text, x580 y90 w190 h20 , Misc functions:
    Gui, Add, Text, x580 y120 w270 h20 , Alt + Z - Gets color, x, y at cursor pos.
    Gui, Add, Text, x580 y150 w270 h20 , Alt + X - Makes needle color map of UI.
    ; Gui, Add, CheckBox, x270 y330 w15 h15 Checked%custom_chat_command_active% vcustom_chat_command_active,
    ; Gui, Add, Edit, x300 y330 w40 h20 vcustomChatCommandHotkey, %customChatCommandHotkey%

    Gui, Add, Text, x55 y460 w250 h20 , Delay between skills (global):
    Gui, Add, Edit, x250 y460 w50 h20 vskills_delay, %skills_delay%
    Gui, Add, Text, x55 y490 w180 h20 , First skill UI position:
    Gui, Add, Text, x230 y490 w20 h20 , X:
    Gui, Add, Edit, x250 y490 w50 h20 vx_panel_needle, %x_panel_needle%
    Gui, Add, Text, x310 y490 w20 h20 , Y:
    Gui, Add, Edit, x330 y490 w50 h20 vy_panel_needle, %y_panel_needle%
    
    ; Apply button
    Gui, Font, S9 Bold, Verdana
    Gui, Add, GroupBox, x590 y620 w280 h70 , Save settings
    Gui, Font, norm, Verdana
    Gui, Add, Text, x605 y640 w120 h45 , Press button after any changes in any tabs.
    Gui, Add, Button, x760 y640 w100 h30 , Apply change


    ; Main window params
    Gui, Color, 0xF4F4F4
    Gui, Show, x250 y100 h700 w900, Script
    Return


    GuiClose:
    ExitApp
}


ButtonApplyChange() {
    TurnOffAllHotkey()
    Gui, Submit, NoHide
    TurnOnAllHotkey()
    SaveSettings()
    
    MsgBox , 0, , change applied, 0.5

    return
}
