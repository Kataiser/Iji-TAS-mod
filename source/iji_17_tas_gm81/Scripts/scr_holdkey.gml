hold_key = argument0;

if (ds_list_find_index(held_keys, hold_key) != -1) {
    with (all) {
        event_perform(ev_keyboard, obj_tas.hold_key);
    }    
}
