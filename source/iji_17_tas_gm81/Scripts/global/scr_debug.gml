//YAY! Been waiting for this ever since it came out!
//-Estin

if (global.debug && !global.really){
//F7: Mute loopables while save stating
if (keyboard_check(vk_f7) && !global.horse){
    repeat(5){
        sound_stop(snd_wea_puls);
        sound_stop(snd_wea_thor);
        sound_stop(snd_shr_step);
        }
    }
//F8: Go to end of game cutscene (MAJOR HAX)
if (keyboard_check(vk_f8) && !global.horse){
    global.sector=0;
    if (global.killdata[797]>0)
        global.cut=12;
    else if (global.killdata[798]>0)
        global.cut=14;
    else
        global.cut=8;
    with (obj_sabot)
        scr_stopmusic();
    room_goto(rom_cut);
    }
//F9: 3 chargeballs
if (keyboard_check(vk_f9) && !global.horse){
    if (room==rom_sector15){
        with (obj_chargeball)
            instance_destroy();
        repeat(3)
            instance_create(600,0,obj_chargeball);
        }
    }
//Shift: count various
if (keyboard_check(vk_shift) && !global.horse){
    global.erasetop=0;
    instance_activate_object(obj_locker);
    instance_activate_object(obj_paper);
    lockernum=string(instance_number(obj_locker));
    papernum=string(instance_number(obj_paper));
    global.topmessage="Papers: "+papernum+"   Lockers: "+lockernum;
    }
//Backspace: levelskip
if (keyboard_check(vk_backspace) && global.horse){
    (instance_create(obj_sabot.x-64,obj_sabot.y-64,obj_horseflip)).dir=4;
    }
if (keyboard_check(vk_backspace) && !global.horse){
    if (levelskipcyc==0 && room==rom_sector3){
        if (!global.ignoreall){
            global.erasetop=0;
            global.topmessage="GOING DOWN FIRST LIFT. Backspace to confirm.";
            obj_iji.x=2656;
            obj_iji.y=2432;
            instance_create(2592,2496,obj_blockwide);
            levelskipcyc=30;
            }
        }
    else if (levelskipcyc==0 && room==rom_sector4){
        if (!global.ignoreall){
            global.erasetop=0;
            global.topmessage="GOING TO END TRIGGER. Cannot confirm.";
            obj_iji.x=6976;
            obj_iji.y=5088;
            }
        }
    else if (levelskipcyc==0 && room==rom_sector9){
        if (!global.ignoreall){
            global.erasetop=0;
            global.topmessage="GOING DOWN FINAL LIFT SHAFT. Cannot confirm.";
            obj_iji.x=7904;
            obj_iji.y=5826;
            }
        }
    else if (global.sector!=11 && global.sector!=12 && global.sector!=13 && global.sector!=14 && global.sector!=15){
        instance_create(obj_iji.x,obj_iji.y,obj_end)
        }
    else{
        global.erasetop=0;
        global.topmessage="CANNOT SKIP HERE - PRESS [HOME] INSTEAD";
        }
    }
//Shift+pagedown: ALL EXTRAS
if (keyboard_check(vk_shift) && keyboard_check(vk_pagedown) && !global.horse){
    global.extras1=1;
    global.extras2=1;
    global.extras3=1;
    global.extras4=1;
    global.extras5=1;
    global.extras6=1;
    global.extras7=1;
    global.extras8=1;
    global.poster1=1;
    global.poster2=1;
    global.poster3=1;
    global.poster4=1;
    global.poster5=1;
    global.poster6=1;
    global.poster7=1;
    global.poster8=1;
    global.poster9=1;
    global.poster10=1;
    global.sds1=1;
    global.sds2=1;
    global.sds3=1;
    global.sds4=1;
    global.sds5=1;
    global.sds6=1;
    global.sds7=1;
    global.sds8=1;
    global.sds9=1;
    global.sds10=1;
    global.maxribbons=10;
    global.hiddenskill1=1;
    global.hiddenskill2=1;
    global.hiddenskill3=1;
    }
//Pagedown: Stats
if (keyboard_check(vk_pagedown) && !global.horse){
    if (global.hp<global.healthlevel*2)
        global.hp+=1;
    if (global.healthlevel<10)
        global.healthlevel+=1;
    if (global.attacklevel<10)
        global.attacklevel+=1;
    if (global.strengthlevel<10)
        global.strengthlevel+=1;
    if (global.assimilatelevel<10)
        global.assimilatelevel+=1;
    if (global.cracklevel<10)
        global.cracklevel+=1;
    if (global.tasenlevel<10)
        global.tasenlevel+=1;
    if (global.komatolevel<10)
        global.komatolevel+=1;
    if (global.jumplevel<3)
        global.jumplevel+=1;
    if (global.armorlevel<3)
        global.armorlevel+=1;
    }
//End: Ammo
if (keyboard_check(vk_end) && !global.horse){
    global.ammo2+=10;
    global.ammo3+=10;
    global.ammo4+=10;
    global.ammo6+=10;
    global.ammo7+=10;
    global.ammo8+=10;
    }
//Home: Annihilate
if (keyboard_check(vk_home) && !global.horse){
    with (obj_alliedenemy){
        if (visible){
            hp=1;
            armor=-100;
            shredderhp=0;
            }
        }
    with (obj_turret)
        armor=0;
    with (obj_proxima)
        hp=0;
    with (obj_door){
        if (distance_to_object(obj_iji)<50)
            instance_destroy();
        }
    with (obj_cdoor){
        if (distance_to_object(obj_iji)<50)
            instance_destroy();
        }
    if (room==rom_sector14 && instance_number(obj_iosa)==0)
        (instance_create(obj_iji.x,obj_iji.y,obj_trigger)).textid="chat95";
    with (obj_tor)
        hp=0;
    }
//Insert: Spawn overload
if (keyboard_check(vk_insert) && !global.horse){
    instance_create(obj_iji.x-8,obj_iji.y+8,obj_nanooverload);
    }
//Delete: Give all
if (keyboard_check(vk_delete) && !global.horse){
    global.cracks=110;
    scr_pickupweapon(2);
    scr_pickupweapon(3);
    scr_pickupweapon(4);
    scr_pickupweapon(5);
    scr_pickupweapon(6);
    scr_pickupweapon(7);
    scr_pickupweapon(8);
    scr_pickupweapon(10);
    global.weapon9=1;
    global.weapon10=1;
    global.weapon11=1;
    global.weapon12=1;
    global.weapon13=1;
    global.weapon14=1;
    global.weapon15=1;
    global.weapon16=1;
    global.weapon17=1;
    global.weapon20=1;
    global.weapon21=1;
    }
//Keypad+: Level up
if (keyboard_check(vk_add) && !global.horse){
    if (global.level<global.maxlevel){
        global.xp=0;
        global.level+=1;
        global.points+=1;
        }
    }
//Keypad-: Max health
if (keyboard_check(vk_subtract) && !global.horse){
    global.healthlevel=10;
    global.hp=20;
    global.jumplevel=3;
    global.armorlevel=3;
    }
//Keypad*: Warp
if (keyboard_check(vk_multiply) && !global.horse){
    if (keyboard_check(vk_up)){
        obj_iji.y-=256;
        obj_iji.hspeed=0;
        obj_iji.vspeed=0;
        }
    else if (keyboard_check(vk_down)){
        obj_iji.y+=256;
        obj_iji.hspeed=0;
        obj_iji.vspeed=0;
        }
    else if (keyboard_check(vk_left)){
        obj_iji.x-=256;
        obj_iji.hspeed=0;
        obj_iji.vspeed=0;
        }
    else if (keyboard_check(vk_right)){
        obj_iji.x+=256;
        obj_iji.hspeed=0;
        obj_iji.vspeed=0;
        }
    }
//Space+Page up: Show killdata
if (keyboard_check(vk_space) && keyboard_check(vk_pageup) && !global.horse){
    global.erasetop=0;
    if (!global.showdata){
        global.showdata=1;
        global.topmessage="Displaying killdata";
        }
    else{
        global.showdata=0;
        global.topmessage="Not displaying killdata";
        }
    }
//Shift+Page up: fill killdata
if (keyboard_check(vk_shift) && keyboard_check(vk_pageup) && !global.horse){
    global.erasetop=0;
    global.topmessage="Filling killdata...";
    for (i=0;i<795;i+=1){
        if (global.killdataname[i]!="NONAME#")
            global.killdata[i]=1;
        }
    }
//Ctrl+Page up: Show killdata discrepancies
if (keyboard_check(vk_control) && keyboard_check(vk_pageup) && !global.horse){
    global.erasetop=0;
    if (!global.killdatadisc){
        global.killdatadisc=1;
        global.topmessage="Displaying killdata discrepancies";
        }
    else{
        global.killdatadisc=0;
        global.topmessage="Not displaying killdata discrepancies";
        }
    }
}
