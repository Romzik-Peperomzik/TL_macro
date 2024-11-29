ReadSettings() {
    ; Hotkeys
    IniRead, startRotationHotkey,     settings.ini, hotkeys, startRotationHotkey,     e
    IniRead, customChatCommandHotkey, settings.ini, hotkeys, customChatCommandHotkey, F1
    ; Toggles
    IniRead, start_rotation_toggle,   settings.ini, toggles, start_rotation_toggle, 0
    ; Activators
    IniRead, start_rotation_active,      settings.ini, activators, start_rotation_active, 0
    IniRead, custom_chat_command_active, settings.ini, activators, custom_chat_command_active, 0
    IniRead, key1_active               , settings.ini, activators, key1_active, 1
    IniRead, key2_active               , settings.ini, activators, key2_active, 2
    IniRead, key3_active               , settings.ini, activators, key3_active, 3
    IniRead, key4_active               , settings.ini, activators, key4_active, 4
    IniRead, key5_active               , settings.ini, activators, key5_active, 5
    IniRead, key6_active               , settings.ini, activators, key6_active, 6
    IniRead, key7_active               , settings.ini, activators, key7_active, 7
    IniRead, key8_active               , settings.ini, activators, key8_active, 8
    IniRead, key9_active               , settings.ini, activators, key9_active, 9
    IniRead, key10_active              , settings.ini, activators, key10_active, 10
    IniRead, key11_active              , settings.ini, activators, key11_active, 11
    IniRead, key12_active              , settings.ini, activators, key12_active, 12
    IniRead, key1_cast_active          , settings.ini, activators, key1_cast_active, 1
    IniRead, key2_cast_active          , settings.ini, activators, key2_cast_active, 1
    IniRead, key3_cast_active          , settings.ini, activators, key3_cast_active, 1
    IniRead, key4_cast_active          , settings.ini, activators, key4_cast_active, 1
    IniRead, key5_cast_active          , settings.ini, activators, key5_cast_active, 1
    IniRead, key6_cast_active          , settings.ini, activators, key6_cast_active, 1
    IniRead, key7_cast_active          , settings.ini, activators, key7_cast_active, 1
    IniRead, key8_cast_active          , settings.ini, activators, key8_cast_active, 1
    IniRead, key9_cast_active          , settings.ini, activators, key9_cast_active, 1
    IniRead, key10_cast_active          , settings.ini, activators, key10_cast_active, 1
    IniRead, key11_cast_active          , settings.ini, activators, key11_cast_active, 1
    IniRead, key12_cast_active          , settings.ini, activators, key12_cast_active, 1
    ; Key lists
    IniRead, rotation_key_set, settings.ini, keylists, rotation_key_set, r-v-4-b-3-1-2-e-5-c-7
    IniRead, key1,             settings.ini, keylists, key1,             1
    IniRead, key2,             settings.ini, keylists, key2,             2
    IniRead, key3,             settings.ini, keylists, key3,             3
    IniRead, key4,             settings.ini, keylists, key4,             4
    IniRead, key5,             settings.ini, keylists, key5,             5
    IniRead, key6,             settings.ini, keylists, key6,             b
    IniRead, key7,             settings.ini, keylists, key7,             e
    IniRead, key8,             settings.ini, keylists, key8,             c
    IniRead, key9,             settings.ini, keylists, key9,             v
    IniRead, key10,            settings.ini, keylists, key10,            r
    IniRead, key11,            settings.ini, keylists, key11,            6
    IniRead, key12,            settings.ini, keylists, key12,            7
    ; Colors
    IniRead, ready_key_color,  settings.ini, colors, ready_key_color,    0x1A0D98
    IniRead, cd_key_color,     settings.ini, colors, cd_key_color,       0x790062
    IniRead, key1_color,       settings.ini, colors, key1_color,         0x790062
    IniRead, key2_color,       settings.ini, colors, key2_color,         0x790062
    IniRead, key3_color,       settings.ini, colors, key3_color,         0x790062
    IniRead, key4_color,       settings.ini, colors, key4_color,         0x790062
    IniRead, key5_color,       settings.ini, colors, key5_color,         0x790062
    IniRead, key6_color,       settings.ini, colors, key6_color,         0x790062
    IniRead, key7_color,       settings.ini, colors, key7_color,         0x790062
    IniRead, key8_color,       settings.ini, colors, key8_color,         0x790062
    IniRead, key9_color,       settings.ini, colors, key9_color,         0x790062
    IniRead, key10_color,      settings.ini, colors, key10_color,        0x790062
    IniRead, key11_color,      settings.ini, colors, key11_color,        0x790062
    IniRead, key12_color,      settings.ini, colors, key12_color,        0x790062
    ; Delays
    IniRead, skills_delay,     settings.ini, delays, skills_delay,       300
    IniRead, key1_cast_delay,  settings.ini, delays, key1_cast_delay,    2000
    IniRead, key2_cast_delay,  settings.ini, delays, key2_cast_delay,    2000
    IniRead, key3_cast_delay,  settings.ini, delays, key3_cast_delay,    2000
    IniRead, key4_cast_delay,  settings.ini, delays, key4_cast_delay,    2000
    IniRead, key5_cast_delay,  settings.ini, delays, key5_cast_delay,    2000
    IniRead, key6_cast_delay,  settings.ini, delays, key6_cast_delay,    2000
    IniRead, key7_cast_delay,  settings.ini, delays, key7_cast_delay,    2000
    IniRead, key8_cast_delay,  settings.ini, delays, key8_cast_delay,    2000
    IniRead, key9_cast_delay,  settings.ini, delays, key9_cast_delay,    2000
    IniRead, key10_cast_delay, settings.ini, delays, key10_cast_delay,   2000
    IniRead, key11_cast_delay, settings.ini, delays, key11_cast_delay,   2000
    IniRead, key12_cast_delay, settings.ini, delays, key12_cast_delay,   2000
    ; States
    IniRead, key1_accept_click,  settings.ini, states, key1_accept_click,  0
    IniRead, key2_accept_click,  settings.ini, states, key2_accept_click,  0
    IniRead, key3_accept_click,  settings.ini, states, key3_accept_click,  0
    IniRead, key4_accept_click,  settings.ini, states, key4_accept_click,  0
    IniRead, key5_accept_click,  settings.ini, states, key5_accept_click,  0
    IniRead, key6_accept_click,  settings.ini, states, key6_accept_click,  0
    IniRead, key7_accept_click,  settings.ini, states, key7_accept_click,  0
    IniRead, key8_accept_click,  settings.ini, states, key8_accept_click,  0
    IniRead, key9_accept_click,  settings.ini, states, key9_accept_click,  0
    IniRead, key10_accept_click, settings.ini, states, key10_accept_click, 0
    IniRead, key11_accept_click, settings.ini, states, key11_accept_click, 0
    IniRead, key12_accept_click, settings.ini, states, key12_accept_click, 0
    IniRead, key1_click_times,   settings.ini, states, key1_click_times,   0
    IniRead, key2_click_times,   settings.ini, states, key2_click_times,   0
    IniRead, key3_click_times,   settings.ini, states, key3_click_times,   0
    IniRead, key4_click_times,   settings.ini, states, key4_click_times,   0
    IniRead, key5_click_times,   settings.ini, states, key5_click_times,   0
    IniRead, key6_click_times,   settings.ini, states, key6_click_times,   0
    IniRead, key7_click_times,   settings.ini, states, key7_click_times,   0
    IniRead, key8_click_times,   settings.ini, states, key8_click_times,   0
    IniRead, key9_click_times,   settings.ini, states, key9_click_times,   0
    IniRead, key10_click_times,  settings.ini, states, key10_click_times,  0
    IniRead, key11_click_times,  settings.ini, states, key11_click_times,  0
    IniRead, key12_click_times,  settings.ini, states, key12_click_times,  0
    ; Coords
    IniRead, key1_color_X,       settings.ini, coords, key1_color_X,       158
    IniRead, key1_color_Y,       settings.ini, coords, key1_color_Y,       937
    IniRead, key2_color_X,       settings.ini, coords, key2_color_X,       158
    IniRead, key2_color_Y,       settings.ini, coords, key2_color_Y,       937
    IniRead, key3_color_X,       settings.ini, coords, key3_color_X,       158
    IniRead, key3_color_Y,       settings.ini, coords, key3_color_Y,       937
    IniRead, key4_color_X,       settings.ini, coords, key4_color_X,       158
    IniRead, key4_color_Y,       settings.ini, coords, key4_color_Y,       937
    IniRead, key5_color_X,       settings.ini, coords, key5_color_X,       158
    IniRead, key5_color_Y,       settings.ini, coords, key5_color_Y,       937
    IniRead, key6_color_X,       settings.ini, coords, key6_color_X,       158
    IniRead, key6_color_Y,       settings.ini, coords, key6_color_Y,       937
    IniRead, key7_color_X,       settings.ini, coords, key7_color_X,       158
    IniRead, key7_color_Y,       settings.ini, coords, key7_color_Y,       937
    IniRead, key8_color_X,       settings.ini, coords, key8_color_X,       158
    IniRead, key8_color_Y,       settings.ini, coords, key8_color_Y,       937
    IniRead, key9_color_X,       settings.ini, coords, key9_color_X,       158
    IniRead, key9_color_Y,       settings.ini, coords, key9_color_Y,       937
    IniRead, key10_color_X,      settings.ini, coords, key10_color_X,      158
    IniRead, key10_color_Y,      settings.ini, coords, key10_color_Y,      937
    IniRead, key11_color_X,      settings.ini, coords, key11_color_X,      158
    IniRead, key11_color_Y,      settings.ini, coords, key11_color_Y,      937
    IniRead, key12_color_X,      settings.ini, coords, key12_color_X,      158
    IniRead, key12_color_Y,      settings.ini, coords, key12_color_Y,      937
    IniRead, display_rotation_X, settings.ini, coords, display_rotation_X, 552
    IniRead, display_rotation_Y, settings.ini, coords, display_rotation_Y, 721
    IniRead, panel_needles,      settings.ini, coords, panel_needles,      0
    IniRead, x_panel_needle,     settings.ini, coords, x_panel_needle,     630
    IniRead, y_panel_needle,     settings.ini, coords, y_panel_needle,     1045
    ; Commands
    IniRead, chat_command,     settings.ini, commands, chat_command,   /invite Username

    return
}


SaveSettings() {
    ; Hotkeys
    IniWrite, %startRotationHotkey%,     settings.ini, hotkeys, startRotationHotkey
    IniWrite, %customChatCommandHotkey%, settings.ini, hotkeys, customChatCommandHotkey
    ; Activators
    IniWrite, %start_rotation_active%,      settings.ini, activators, start_rotation_active
    IniWrite, %custom_chat_command_active%, settings.ini, activators, custom_chat_command_active
    IniWrite, %key1_active%               , settings.ini, activators, key1_active
    IniWrite, %key2_active%               , settings.ini, activators, key2_active
    IniWrite, %key3_active%               , settings.ini, activators, key3_active
    IniWrite, %key4_active%               , settings.ini, activators, key4_active
    IniWrite, %key5_active%               , settings.ini, activators, key5_active
    IniWrite, %key6_active%               , settings.ini, activators, key6_active
    IniWrite, %key7_active%               , settings.ini, activators, key7_active
    IniWrite, %key8_active%               , settings.ini, activators, key8_active
    IniWrite, %key9_active%               , settings.ini, activators, key9_active
    IniWrite, %key10_active%              , settings.ini, activators, key10_active
    IniWrite, %key11_active%              , settings.ini, activators, key11_active
    IniWrite, %key12_active%              , settings.ini, activators, key12_active
    IniWrite, %key1_cast_active%          , settings.ini, activators, key1_cast_active
    IniWrite, %key2_cast_active%          , settings.ini, activators, key2_cast_active
    IniWrite, %key3_cast_active%          , settings.ini, activators, key3_cast_active
    IniWrite, %key4_cast_active%          , settings.ini, activators, key4_cast_active
    IniWrite, %key5_cast_active%          , settings.ini, activators, key5_cast_active
    IniWrite, %key6_cast_active%          , settings.ini, activators, key6_cast_active
    IniWrite, %key7_cast_active%          , settings.ini, activators, key7_cast_active
    IniWrite, %key8_cast_active%          , settings.ini, activators, key8_cast_active
    IniWrite, %key9_cast_active%          , settings.ini, activators, key9_cast_active
    IniWrite, %key10_cast_active%         , settings.ini, activators, key10_cast_active
    IniWrite, %key11_cast_active%         , settings.ini, activators, key11_cast_active
    IniWrite, %key12_cast_active%         , settings.ini, activators, key12_cast_active
    
    ; Key lists
    IniWrite, %rotation_key_set%,       settings.ini, keylists, rotation_key_set
    IniWrite, %key1%,                   settings.ini, keylists, key1
    IniWrite, %key2%,                   settings.ini, keylists, key2
    IniWrite, %key3%,                   settings.ini, keylists, key3
    IniWrite, %key4%,                   settings.ini, keylists, key4
    IniWrite, %key5%,                   settings.ini, keylists, key5
    IniWrite, %key6%,                   settings.ini, keylists, key6
    IniWrite, %key7%,                   settings.ini, keylists, key7
    IniWrite, %key8%,                   settings.ini, keylists, key8
    IniWrite, %key9%,                   settings.ini, keylists, key9
    IniWrite, %key10%,                  settings.ini, keylists, key10
    IniWrite, %key11%,                  settings.ini, keylists, key11
    IniWrite, %key12%,                  settings.ini, keylists, key12
    ; Colors
    IniWrite, %ready_key_color%,        settings.ini, colors, ready_key_color
    IniWrite, %cd_key_color%,           settings.ini, colors, cd_key_color
    ; Delays
    IniWrite, %skills_delay%,           settings.ini, delays, skills_delay
    IniWrite, %key1_cast_delay%,        settings.ini, delays, key1_cast_delay
    IniWrite, %key2_cast_delay%,        settings.ini, delays, key2_cast_delay
    IniWrite, %key3_cast_delay%,        settings.ini, delays, key3_cast_delay
    IniWrite, %key4_cast_delay%,        settings.ini, delays, key4_cast_delay
    IniWrite, %key5_cast_delay%,        settings.ini, delays, key5_cast_delay
    IniWrite, %key6_cast_delay%,        settings.ini, delays, key6_cast_delay
    IniWrite, %key7_cast_delay%,        settings.ini, delays, key7_cast_delay
    IniWrite, %key8_cast_delay%,        settings.ini, delays, key8_cast_delay
    IniWrite, %key9_cast_delay%,        settings.ini, delays, key9_cast_delay
    IniWrite, %key10_cast_delay%,       settings.ini, delays, key10_cast_delay
    IniWrite, %key11_cast_delay%,       settings.ini, delays, key11_cast_delay
    IniWrite, %key12_cast_delay%,       settings.ini, delays, key12_cast_delay
    ; States
    IniWrite, %key1_accept_click%,      settings.ini, states, key1_accept_click
    IniWrite, %key2_accept_click%,      settings.ini, states, key2_accept_click
    IniWrite, %key3_accept_click%,      settings.ini, states, key3_accept_click
    IniWrite, %key4_accept_click%,      settings.ini, states, key4_accept_click
    IniWrite, %key5_accept_click%,      settings.ini, states, key5_accept_click
    IniWrite, %key6_accept_click%,      settings.ini, states, key6_accept_click
    IniWrite, %key7_accept_click%,      settings.ini, states, key7_accept_click
    IniWrite, %key8_accept_click%,      settings.ini, states, key8_accept_click
    IniWrite, %key9_accept_click%,      settings.ini, states, key9_accept_click
    IniWrite, %key10_accept_click%,     settings.ini, states, key10_accept_click
    IniWrite, %key11_accept_click%,     settings.ini, states, key11_accept_click
    IniWrite, %key12_accept_click%,     settings.ini, states, key12_accept_click
    IniWrite, %key1_click_times%,       settings.ini, states, key1_click_times
    IniWrite, %key2_click_times%,       settings.ini, states, key2_click_times
    IniWrite, %key3_click_times%,       settings.ini, states, key3_click_times
    IniWrite, %key4_click_times%,       settings.ini, states, key4_click_times
    IniWrite, %key5_click_times%,       settings.ini, states, key5_click_times
    IniWrite, %key6_click_times%,       settings.ini, states, key6_click_times
    IniWrite, %key7_click_times%,       settings.ini, states, key7_click_times
    IniWrite, %key8_click_times%,       settings.ini, states, key8_click_times
    IniWrite, %key9_click_times%,       settings.ini, states, key9_click_times
    IniWrite, %key10_click_times%,      settings.ini, states, key10_click_times
    IniWrite, %key11_click_times%,      settings.ini, states, key11_click_times
    IniWrite, %key12_click_times%,      settings.ini, states, key12_click_times
    ; Coords
    IniWrite, %display_rotation_X%,     settings.ini, coords, display_rotation_X
    IniWrite, %display_rotation_Y%,     settings.ini, coords, display_rotation_Y
    IniWrite, %panel_needles%,          settings.ini, coords, panel_needles
    IniWrite, %x_panel_needle%,         settings.ini, coords, x_panel_needle
    IniWrite, %y_panel_needle%,         settings.ini, coords, y_panel_needle
    ; Commands
    IniWrite, %chat_command%,           settings.ini, commands, chat_command

    return
}
