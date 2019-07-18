key_short = argument0;
key_long = argument1;

if (string_count("end", current_inputs) == 1) {
    io_clear();
    room_speed = 30;
    rm_speed = 30;
    handle = true;
    ds_list_clear(held_keys);
    alarm[0] = -1;
    current_alarm = -1;
}
else {
    if (string_count(" " + key_short + "- ", " " + current_inputs + " ") == 1) {
        keyboard_key_press(key_long);
        ds_list_add(held_keys, key_short);
        handle = true;
    }
    else if (string_count(" " + key_short + "+ ", " " + current_inputs + " ") == 1) {
        keyboard_key_release(key_long);
        ds_list_delete(held_keys, ds_list_find_index(held_keys, key_short));
        handle = true;
    }
}
