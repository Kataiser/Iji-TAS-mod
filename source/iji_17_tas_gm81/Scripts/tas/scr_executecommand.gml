key_short = argument0;
key_long = argument1;

if (string_count("End", current_inputs) == 1) {
    ds_list_clear(held_keys);
    ds_list_clear(held_keys_display);
    ds_list_clear(just_pressed_keys);
    ds_list_clear(just_released_keys);
    alarm[0] = -1;
    current_alarm = -1;
}
else if (string_count("Save: ", current_inputs) == 0) {
    if (string_count(" " + key_short + "- ", " " + current_inputs + " ") == 1) {
        ds_list_add(held_keys, key_long);
        ds_list_add(held_keys_display, key_short);
        ds_list_add(just_pressed_keys, key_long);
    }
    else if (string_count(" " + key_short + "+ ", " " + current_inputs + " ") == 1) {
        ds_list_delete(held_keys, ds_list_find_index(held_keys, key_long));
        ds_list_delete(held_keys_display, ds_list_find_index(held_keys_display, key_short));
        ds_list_add(just_released_keys, key_long);
    }
}
