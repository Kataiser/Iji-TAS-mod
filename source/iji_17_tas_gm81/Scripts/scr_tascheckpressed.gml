key_check = argument0;
return (ds_list_find_index(obj_tas.pressed_keys, key_check) != -1 || keyboard_check_pressed(key_check));

// there's no scr_tascheckreleased because the game never checks that apparently
