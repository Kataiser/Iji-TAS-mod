//Tasen Elite pain and death
//argument0 is anger
// 0 = yes
// 1 = no
//argument1 is impulse
if (!dead){
    if (argument0==0)
        angry=1;
    alarm[5]=300;
    takingpain=1;
    swiping=0;
    firingrocket=0;
    firingrocket2=0;
    firingmpfb=0;
    rapidfirempfb=0;
    if (argument1==0){
        if (krotera)
            scr_sound("kro_pain");
        else
            scr_sound("eli_pain");
        while(armor<1)
            armor+=maxarmor;
        }
    state=3;
    alarm[1]=0;
    alarm[2]=10;
    alarm[6]=0;
    alarm[7]=0;
    image_index=0;
    if (argument1==0){
        repeat(2)
            instance_create(x+10,y+15,obj_tasenbloodspecial);
        }
    if (facing==0){
        if (krotera)
            sprite_index=spr_krotera_painleft;
        else
            sprite_index=spr_tasenelite_painleft;
        }
    if (facing==1){
        if (krotera)
            sprite_index=spr_krotera_pain;
        else
            sprite_index=spr_tasenelite_pain;
        }
    }
if (hp<=0 && !dead && argument1==0){
    dead=1;
    image_index=0;
    image_single=-1;
    image_speed=0.5;
    armor=0;
    if (ijikill && !krotera && !killawarded){
        if (obj_iji.usingougi>0)
            killtype=9;
        global.kills+=1;
        global.killdata[killdataid]=killtype;
        killawarded=1;
        }
    state=6;
    alarm[2]=0;
    alarm[3]=26;
    if (!krotera)
        alarm[4]=36;
    else{
        deathbyiji=ijikill;
        //Krotera dies
        if (obj_iji.usingougi>0)
            killtype=9;
        calmdown=0;
        scr_sound("exp_boss");
        scr_sound("kro_death");
        with (obj_sabot)
            scr_stopmusic();
        repeat(10)
            instance_create(obj_krotera.x+10,obj_krotera.y+15,obj_nanospark2);
        scr_shakescreen(3);
        obj_sabot.flash=0.8;
        repeat(150)
            instance_create(obj_krotera.x-100+random(200),obj_krotera.y-100+random(200),obj_kroteraflash);
        instance_create(obj_krotera.x+15,obj_krotera.y+45,obj_megaflare);
        obj_kroteratrigger.alarm[1]=60;
        with (obj_enemyrocket)
            instance_destroy();
        with (obj_enemympfb)
            instance_destroy();
        with (obj_kroteraspawner)
            instance_destroy();
        with (obj_turret){
            if (sprite_index==spr_turret || sprite_index==spr_turretappear){
                dead=1;
                cracked=1;
                dropnothing=1;
                armor=200;
                angry=0;
                alarm[1]=0;
                alarm[2]=0;
                alarm[3]=0;
                alarm[4]=0;
                if (facing==0){
                    alarm[5]=3;
                    sprite_index=spr_turretappear;
                    image_index=2;
                    image_speed=-1;
                    image_single=-1;
                    }
                else{
                    alarm[6]=3;
                    image_single=1;
                    }
                }
            }
        }
    repeat(3)
        instance_create(x+15,y+15,obj_tasenbloodspecial);
        
    scr_storeseed();
    if (facing==0){
        if (krotera)
            sprite_index=spr_krotera_deathleft;
        else
            sprite_index=spr_tasenelite_deathleft;
        tempid=instance_create(x+5,y+20,obj_tasenelite_weapon);
        tempid.direction=(145-random(30));
        tempid.speed=(6+random(8));
        tempid.sprite_index=spr_tasenelite_weaponleft;
        }
    if (facing==1){
        if (krotera)
            sprite_index=spr_krotera_death;
        else
            sprite_index=spr_tasenelite_death;
        tempid=instance_create (x+30,y+20,obj_tasenelite_weapon);
        tempid.direction=(35 + random(20));
        tempid.speed=(6 + random(8));
        }
    scr_restoreseed();
    }
