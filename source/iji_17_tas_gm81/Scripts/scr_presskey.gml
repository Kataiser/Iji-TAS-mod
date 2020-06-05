pressed_key = argument0;

if (ds_list_find_index(just_pressed_keys, pressed_key) != -1) {
    with (all) {
        event_perform(ev_keypress, obj_tas.pressed_key);
    }    
}

ds_list_delete(just_pressed_keys, ds_list_find_index(just_pressed_keys, pressed_key));
