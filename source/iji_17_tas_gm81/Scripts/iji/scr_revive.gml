//Resurrect from checkpoint
noliftride=4;
if (global.sector==7){
    instance_activate_object(obj_trigger);
    with (obj_trigger){
        if (textid="chat76")
            instance_destroy();
        }
    }
instance_activate_object(obj_checkpoint);
with (obj_checkpoint){
    image_single=0;
    state=2;
    global.erasetop=0;
    global.topmessage="CHECKPOINT USED FOR ONE-TIME REVIVAL";
    global.ignorestation=60;
    }
with (obj_komatoassassin){
    if (asha2){
        obj_sabot.asha2hp=hp;
        instance_destroy();
        obj_asha2trigger.rematch+=1;
        with (obj_asha2bar)
            instance_destroy();
        with (obj_asha2flash)
            instance_destroy();
        instance_create(6112,2944,obj_xtrigger);
        }
    else if (activated)
        instance_destroy();
    }
//Adjust music for Asha2 fight
if (room==rom_sectorx && obj_sabot.music!="mus_sec5"){
    with (obj_sabot)
        scr_music("mus_sec5");
    }
obj_sabot.checkfixw=4;
with (obj_iji){
    scr_sound("glo_teleport");
    deathscreamed=0;
    global.armor=100;
    global.hp=global.healthlevel*2;
    if (global.suddendeath)
        global.hp=1;
    global.facing=1;
    y-=30;
    sprite_index=spr_basic;
    global.state=1;
    dest=999;
    alarm[0]=0;
    alarm[1]=0;
    alarm[2]=0;
    alarm[3]=0;
    alarm[4]=0;
    alarm[5]=0;
    alarm[6]=0;
    alarm[7]=90;
    recovering=1;
    image_single=-1;
    image_speed=0.5;
    global.ignoreall=0;
    if (overloadtime>1)
        overloadtime=1;
    firing=0;
    goingleft=0;
    goingright=0;
    pressjump=0;
    running=0;
    goingleft=0;
    goingright=0;
    ignoredown=0;
    switchingpose=0;
    falldistance=0;
    gravity=0;
    speed=0;
    reloader=0;
    reloading=0;
    }
with (obj_sabot){
    faceadjust=0;
    shredderx=0;
    shreddery=0;
    shreddery2=0;
    climbx=0;
    climby=0;
    knockcycle=0;
    instance_create(x,y,obj_whiteflash2);
    }

with (obj_nanoflash)
    instance_destroy();
obj_sabot.alarm[3]=1;
obj_sabot.alarm[4]=3;
obj_sabot.ignoresmooth=1;
