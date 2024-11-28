StartRotationToggle() {
    start_rotation_toggle := !start_rotation_toggle
    if (start_rotation_toggle) {
        DisplayNotice(1, "Rotation", "Rotation", display_rotation_X, display_rotation_Y, 0, 50)
        StartRotation()
        DisplayNotice(0, "Rotation", "Rotation", display_rotation_X, display_rotation_Y, 0, 50)
        start_rotation_toggle := 0
    } else {
        DisplayNotice(0, "Rotation", "Rotation", display_rotation_X, display_rotation_Y, 0, 50)
    }
}


GetKeysData() {
    /*  Создаёт объект вида:
    {
        ключ: [
            цвет, цвет_х, цвет_у,
            статус_каста,
            время_каста,
            статус отката,
            активность (вкл/выкл),
            подтверждение прожатия,
            кол-во повторных прожатий
        ]
    }
    */
    keys_a := [key1, key2, key3, key4, key5, key6, key7, key8, key9, key10, key11, key12]
    key_colors_a := [key1_color, key2_color, key3_color, key4_color, key5_color, key6_color, key7_color, key8_color, key9_color, key10_color, key11_color, key12_color]
    key_coords_a := [[key1_color_X, key1_color_Y], [key2_color_X, key2_color_Y], [key3_color_X, key3_color_Y], [key4_color_X, key4_color_Y], [key5_color_X, key5_color_Y], [key6_color_X, key6_color_Y], [key7_color_X, key7_color_Y], [key8_color_X, key8_color_Y], [key9_color_X, key9_color_Y], [key10_color_X, key10_color_Y], [key11_color_X, key11_color_Y], [key12_color_X, key12_color_Y]]
    key_cast_active_a := [key1_cast_active, key2_cast_active, key3_cast_active, key4_cast_active, key5_cast_active, key6_cast_active, key7_cast_active, key8_cast_active, key9_cast_active, key10_cast_active, key11_cast_active, key12_cast_active]
    key_cast_delay_a := [key1_cast_delay, key2_cast_delay, key3_cast_delay, key4_cast_delay, key5_cast_delay, key6_cast_delay, key7_cast_delay, key8_cast_delay, key9_cast_delay, key10_cast_delay, key11_cast_delay, key12_cast_delay]
    key_states := [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    key_actives := [key1_active, key2_active, key3_active, key4_active, key5_active, key6_active, key7_active, key8_active, key9_active, key10_active, key11_active, key12_active]
    key_accept_clicks := [key1_accept_click, key2_accept_click, key3_accept_click, key4_accept_click, key5_accept_click, key6_accept_click, key7_accept_click, key8_accept_click, key9_accept_click, key10_accept_click, key11_accept_click, key12_accept_click]
    key_click_times := [key1_click_times, key2_click_times, key3_click_times, key4_click_times, key5_click_times, key6_click_times, key7_click_times, key8_click_times, key9_click_times, key10_click_times, key11_click_times, key12_click_times]

    keys_obj := {}
    len := keys_a.Length()

    Loop, %len% {
        keys_obj[keys_a[A_Index]] := [key_colors_a[A_Index], key_coords_a[A_Index][1], key_coords_a[A_Index][2], key_cast_active_a[A_Index], key_cast_delay_a[A_Index], key_states[A_Index], key_actives[A_Index], key_accept_clicks[A_Index], key_click_times[A_Index]]
    }

    return keys_obj
}


MakeOrder() {
    queue := []
    Loop, Parse, rotation_key_set, - 
    {
        queue.push(A_LoopField)
    }
    return queue
}


StartRotation() {
    starting_order := MakeOrder()
    keys_data := GetKeysData()
    queue := []
    while (start_rotation_toggle) {
        For idx in starting_order {
            key_name := starting_order[idx]
            key_active := keys_data[key_name][7]
    
            if (key_active) {
                key_state := keys_data[key_name][6]
                key_color := keys_data[key_name][1]
                x := keys_data[key_name][2]
                y := keys_data[key_name][3]
                
                PixelGetColor, color, x, y
    
                if (color = key_color) {
                    if (!key_state) {
                        queue.push(key_name)
                        keys_data[key_name][6] := 1 ; status update
                    }
                }
            }
        }

        while (queue.Length() AND start_rotation_toggle) {
            key_name := queue.RemoveAt(1)
            key_state := keys_data[key_name][6]
            
            if (key_state) {
                key_cast := keys_data[key_name][4]
                key_cast_time := keys_data[key_name][5]
                key_click_accept := keys_data[key_name][8]
                key_click_times := keys_data[key_name][9]

                if (key_cast) {
                    if (key_click_accept) {
                        Send, {%key_name%}    
                    }
                    Sleep, 75
                    Send, {%key_name% down}
                    Sleep, %key_cast_time%
                    Send, {%key_name% up}
                } else {
                    Loop, %key_click_times%
                    {
                        Send, {%key_name%}
                        Sleep, 250
                    }
                }
                keys_data[key_name][6] := 0 ; status update
                Sleep, %skills_delay%
            }
            
            if (start_rotation_toggle) {
                For idx in starting_order {
                    key_name := starting_order[idx]
                    key_active := keys_data[key_name][7]
        
                    if (key_active) {
                        key_state := keys_data[key_name][6]
                        key_color := keys_data[key_name][1]
                        x := keys_data[key_name][2]
                        y := keys_data[key_name][3]
                        
                        PixelGetColor, color, x, y
        
                        if (color = key_color) {
                            if (!key_state) {
                                queue.push(key_name)
                                keys_data[key_name][6] := 1 ; status update
                            }
                        }
                    }
                }
            }
        }
    }
}


CustomChatCommand() {
    ; TODO: fix
    ; Types custom chat command ingame. Can be setted in GUI.
    BlockInput, On
    Suspend, On
    Send ^{Enter}{Home}{Shift down}{End}{Shift up}{Delete}%chat_command%{Enter}
    Suspend, Off
    BlockInput Off
}


Test() {
    queue := [1, 2, 3]
    start_rotation_toggle := 1
    while (queue.Length() AND start_rotation_toggle) {
        tmp := queue.RemoveAt(1)
        MsgBox, %tmp%
    }
    MsgBox, end
}
