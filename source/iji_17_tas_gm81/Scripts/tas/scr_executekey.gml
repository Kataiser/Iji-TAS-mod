key_name = argument0;
key_code = argument1;

if (execute_key == key_name) {
    if (ds_list_find_index(held_keys, key_code) == -1) {
        ds_list_add(held_keys, key_code);
        ds_list_add(just_pressed_keys, key_code);
    }
}
