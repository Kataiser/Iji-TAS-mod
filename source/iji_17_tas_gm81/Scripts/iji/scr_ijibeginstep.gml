//Pulse sfx
if (firingpulse>0)
firingpulse-=1;

//Pain sfx
playpainsfx=0;
playbigpainsfx=0;

//Go up lift
if (!ignorephysics){
if (!mdk && noliftride==0 && keyboard_check(vk_up) && global.state==1 && !global.ignoreall && place_meeting(x,y+1,obj_lift) && place_meeting(x-16,y+1,obj_lift) && place_meeting(x+16,y+1,obj_lift)){
    with (obj_lift){
        if (place_meeting(x,y-1,obj_iji) && place_free(x,y-96) && place_free(x,y-128) && place_free(x,y-160) && place_free(x,y-192) && place_free(x,y-224) && place_free(x,y-256)){
            scr_sound("glo_liftstart");
            global.ignoreall=1;
            obj_iji.takingpain=1;
            obj_iji.recovering=0;
            obj_iji.goingleft=0;
            obj_iji.goingright=0;
            obj_iji.running=0;
            obj_iji.lookingaround=0;
            obj_iji.lookaround=0;
            obj_iji.alarm[1]=0;
            obj_iji.alarm[7]=0;
            global.state=1;
            if (global.facing==1){
                obj_iji.sprite_index=spr_basic;
                image_speed=0.5;
                }
            else{
                obj_iji.sprite_index=spr_basicleft;
                image_speed=0.5;
                }
            vspeedx=-8;
            exit;
            }
        }
    }
}
