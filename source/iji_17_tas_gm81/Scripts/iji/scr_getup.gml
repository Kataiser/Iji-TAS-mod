//Get up while bouncing
if (global.state==7 && global.hp>0 && image_index>1){
    if (obj_sabot.sec8trigger2){
        obj_sabot.sec8trigger2=0;
        (instance_create(x,y,obj_trigger)).textid="chat84";
        }
    move_outside_solid(90,10);
    move_contact_solid(270,30);
    if (global.facing==0)
        sprite_index=spr_getupleft;
    else
        sprite_index=spr_getup;
    if (place_free(x,y-30))
        y-=30;
    vspeed=0;
    hspeed=0;
    gravity=0;
    alarm[1]=26;
    gettingup=28;
    alarm[6]=0;
    image_index=0;
    image_single=-1;
    image_speed=0.5;
    global.state=5;
    switchingpose=1;
    if (takingpain==1 && recovering==0){
        if (global.strengthlevel==10)
            alarm[7]=90;
        else
            alarm[7]=60;
        recovering=1;
        }
    else{
        takingpain=0;
        recovering=0;
        }
    //damnit
    if ((global.hp<=1 || global.hp<global.healthlevel/2) && damncooldown==0 && recovering==1 && alarm[7]>=3){
        damncooldown=900;
        scr_sound("iji_damnit");
        }
    }
//Get up while still
else if (global.state==8){
    if (obj_sabot.sec8trigger2){
        obj_sabot.sec8trigger2=0;
        (instance_create(x,y,obj_trigger)).textid="chat84";
        }
    image_index=0;
    image_single=-1;
    image_speed=0.5;
    vspeed=0;
    hspeed=0;
    gravity=0;
    if (global.facing==0)
        sprite_index=spr_getupleft;
    else
        sprite_index=spr_getup;
    y-=30;
    alarm[1]=26;
    gettingup=28;
    global.state=5;
    switchingpose=1;
    }
