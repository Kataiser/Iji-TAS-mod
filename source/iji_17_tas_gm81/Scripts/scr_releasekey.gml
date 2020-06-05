released_key = argument0;

if (ds_list_find_index(just_released_keys, released_key) != -1) {
    with (all) {
        event_perform(ev_keyrelease, obj_tas.released_key);
    }    
}

ds_list_delete(just_released_keys, ds_list_find_index(just_released_keys, released_key));
