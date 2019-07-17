keyboard_clear(vk_escape);
with (obj_sabot){
pause=0;
if (instance_number(obj_herosabot)>=1){
    x=heroxprev;
    y=heroyprev;
    with (obj_herosabot)
        instance_destroy();
    scr_herodestroy();
    global.ignoreall=0;
    playinghero3d=0;
    repeat(10)    
        sound_stop_all();
    if (room==rom_sector6){
        with (obj_sabot)
            scr_music("mus_sec1");
        //Hero chats
        instance_activate_object(obj_iji);
        (instance_create(obj_iji.x,obj_iji.y,obj_trigger)).textid="chat63";
        }
    }
with (obj_paused)
    instance_destroy();
with (obj_marker)
    instance_destroy();
with (obj_fade)
    instance_destroy();
with (obj_loadingback)
    instance_destroy();
with (obj_pauseeffect)
    instance_destroy();
with (obj_maincover)
    instance_destroy();
with (obj_pausefullcover)
    instance_destroy();
instance_activate_all();
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