//Pick up a weapon
scr_sound("glo_pickup2");
if (argument0 == 2 && instance_number(obj_weapon2) == 0){
    instance_create(obj_sabot.x+674, obj_sabot.y+531, obj_weapon2);
    global.weapon2=1;
    }
if (argument0 == 3 && instance_number(obj_weapon3) == 0){
    instance_create(obj_sabot.x+714, obj_sabot.y+531, obj_weapon3);
    global.weapon3=1;
    }
if (argument0 == 4 && instance_number(obj_weapon4) == 0){
    instance_create(obj_sabot.x+754, obj_sabot.y+531, obj_weapon4);
    global.weapon4=1;
    }
if (argument0 == 5 && instance_number(obj_weapon5) == 0){
    instance_create(obj_sabot.x+634, obj_sabot.y+563, obj_weapon5);
    global.weapon5=1;
    }
if (argument0 == 6 && instance_number(obj_weapon6) == 0){
    instance_create(obj_sabot.x+674, obj_sabot.y+563, obj_weapon6);
    global.weapon6=1;
    }
if (argument0 == 7 && instance_number(obj_weapon7) == 0){
    instance_create(obj_sabot.x+714, obj_sabot.y+563, obj_weapon7);
    global.weapon7=1;
    }
if (argument0 == 8 && instance_number(obj_weapon8) == 0){
    instance_create(obj_sabot.x+754, obj_sabot.y+563, obj_weapon8);
    global.weapon8=1;
    }
if (argument0 == 17){
    global.weapon17=1;
    with (obj_iji){
        if (place_meeting(x,y,obj_bananatrigger)){
            (instance_create(x,y,obj_trigger)).textid="chat97";
            with (obj_bananatrigger)
                instance_destroy();
            }
        }
    }
if (argument0 == 20){
    global.weapon20=1;
    (instance_create(x,y,obj_trigger)).textid="chat18";
    }
if (argument0 == 21){
    global.weapon21=1;
    (instance_create(x,y,obj_trigger)).textid="chatxp";
    }
//Resonance reflector
if (argument0 == 18){
    if (!global.weapon13)
        obj_sabot.gotspecial13=1;
    if (global.weapon==5)
        obj_weapon5.image_single=3;
    else if (global.weapon==13)
        obj_weapon5.image_single=4;
    else
        obj_weapon5.image_single=2;
    global.weapon5=1;
    global.weapon13=1;
    }