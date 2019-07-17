scr_getup();
//Trapmine
if (global.sector==8){
    if ((sprite_index==spr_duck || sprite_index==spr_duckleft) && (image_index>3 || image_single==5)){
        if (place_meeting(x,y,obj_teledest) && trapmine){
            with (obj_teledest){
                if (place_meeting(x,y,obj_iji)){
                    if (dest!=3){
                        obj_iji.trapmine=0;
                        (instance_create(x+10,y+24,obj_armed_trapmine)).dest=dest;
                        global.erasetop=0;
                        global.topmessage="Trapmine placed";
                        global.ignorestation=60;
                        }
                    else{
                        global.erasetop=0;
                        global.topmessage="Cannot place Trapmine - teleporter destination security too high";
                        global.ignorestation=60;
                        }
                    }
                }
            }
        }
    }