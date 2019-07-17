if (!place_meeting(x,y,obj_end)){
if (!shredder){
if (!global.ignoreall){
    lookingaround=0;
    if (global.state==1){
        if (!place_free(x,y+4)){
            if (place_free(x,y+1))
                move_contact_solid(270,-1);
            image_index=0;
            global.state=5;
            kicking=1;
            alarm[1]=16;
            scr_sound("iji_kick");
            if (global.facing==0)
                sprite_index=spr_kickstrongleft;
            if (global.facing==1)
                sprite_index=spr_kickstrong;
            }
        }
    }
}

//Reboot
if (!global.ignoreall && !shredder && !place_meeting(x,y,obj_emptyshredder) && !takingpain && !recovering){
if (sprite_index==spr_duck || sprite_index==spr_duckleft){
    if (rebootcyc==4){
        if (cannotreboot){
            global.erasetop=0;
            global.topmessage="You cannot reboot here";
            }
        else if (!global.specialtrigger16){
            global.ignoreall=1;
            rebootcyc=0;
            obj_sabot.alarm[6]=1;
            }
        else{
            global.erasetop=0;
            if (global.really)
                global.topmessage="You cannot reboot on reallyjoel's dad difficulty";
            else
                global.topmessage="You cannot reboot on Ultimortal difficulty";
            }
        }
    else
        rebootcyc=0;
    }
}
}