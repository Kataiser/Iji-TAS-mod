instance_activate_all();
paused = false;

if (room != rom_resolution and room != rom_main and room != rom_cut and room != rom_clear and room != rom_endgame) {
    //below code is adapted from scr_unpause
    with (obj_sabot){
    pause=0;
    if (global.horse){
        instance_deactivate_region(x-900,y-900,1800,1800,0,1);
        with (obj_shakescreen)
            scr_methodhorse();
        }
    else{
        if (global.sector!=11 && global.sector!=12 && global.sector!=13 && global.sector!=14 && global.sector!=15){
            instance_deactivate_region(x-1600,y-1400,3200,2800,0,1);
            with (obj_shakescreen)
                scr_methodx();
            }
        }
    instance_activate_object(obj_activateme);
    }
}
