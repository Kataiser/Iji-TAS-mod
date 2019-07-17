//Argument0 one is teleporting to safety
lastx=x;
lasty=y;
activated=1;
if (global.sector==9){
    with (obj_crumble91){
        if (x==3552 && y==4256)
            instance_create(x+32,y+64,obj_enemyrocketexplosion);
        }
    }
if (ansaksie)
    scr_ansaksievoice();
else if (asha && argument0==0)
    scr_sound("ash_pain");
else if (asha2 && hp<=4 && argument0==0)
    scr_sound("ash_pain");
else if (asha2 && hp>=7 && argument0==0 && laughcool==0){
    scr_sound("ash_ambient2");
    laughcool=300+ceil(random(300));
    }
if (!asha && !asha2 && argument0==0)
    scr_sound("asa_pain");
angry=1;
if (argument0==0){
    repeat(3) instance_create(bbox_left+((bbox_right-bbox_left)/2), bbox_top+((bbox_bottom-bbox_top)/2), obj_komatobloodspecial);
    while(armor<1)
        armor+=200;
    }
if (ashaghost)
    donothing=0;
else
    instance_create(bbox_left+((bbox_right-bbox_left)/2), bbox_top+((bbox_bottom-bbox_top)/2), obj_megaflash);
visible=0;
alarm[0]=0;
alarm[1]=0;
if (asha2 || ashaghost){
    alarm[2]=2;
    alarm[5]=0;
    plasmarage=0;
    plasmavortex=0;
    rageperform=0;
    performsmash=0;
    obj_asha2safe.visible=0;
    }
else if (asha)
    alarm[2]=random(15-(global.difficulty*5))+15-(global.difficulty*5);
else if (ansaksie)
    alarm[2]=random(15)+30;
else
    alarm[2]=random(20-(global.difficulty*5))+20-(global.difficulty*5);
alarm[3]=0;
vspeed=0;
gravity=0;
image_index=0;
image_single=0;

//Asha2 Ghost backups
if (asha2){
    if (obj_asha2.hp==6 && obj_asha2.backup==0){
        obj_asha2.backup=1;
        instance_create(obj_asha2.x,obj_asha2.y,obj_ashaghost);
        }
    if (obj_asha2.hp==3 && obj_asha2.backup==1){
        obj_asha2.backup=2;
        instance_create(obj_asha2.x,obj_asha2.y,obj_ashaghost);
        }
    }
//Death
if (hp<=0){
if (!asha){ //Regular
//instance_create(bbox_left+((bbox_right-bbox_left)/2), bbox_top+((bbox_bottom-bbox_top)/2), obj_enemyrocketexplosion);
//instance_create(bbox_left+((bbox_right-bbox_left)/2), bbox_top+((bbox_bottom-bbox_top)/2), obj_explosioncenter);
instance_create(bbox_left+((bbox_right-bbox_left)/2), bbox_top+((bbox_bottom-bbox_top)/2), obj_megaflash);
//scr_nanoexplosion((bbox_right-bbox_left)/2, (bbox_bottom-bbox_top)/2);
instance_create(bbox_left+((bbox_right-bbox_left)/2), bbox_top+((bbox_bottom-bbox_top)/2), obj_xp4);
if (cracked)
    instance_create(bbox_left+((bbox_right-bbox_left)/2)+16, bbox_top+((bbox_bottom-bbox_top)/2), obj_ammo10);
instance_destroy();
if (crackmark==1){
    script_execute(scr_crackfail);
    script_execute(scr_terminatecrack);
    global.erasetop=0;
    global.topmessage="CRACKING FAILED: Subject is out of range";
    }
}

//Asha dies (fake)
else if (!asha2){
    //You don't actually kill Asha in Sector12; no kill awarded
    scr_sound("exp_boss");
    scr_stopashavoice();
    scr_sound("ash_pain");
    with (obj_sabot)
        scr_stopmusic();
    obj_ashatrigger.alarm[4]=20;
    with (obj_komatoberserker){
        hp=1;
        armor=-1000;
        }
    repeat(10)
        instance_create(obj_asha.bbox_left+((obj_asha.bbox_right-obj_asha.bbox_left)/2),obj_asha.bbox_top+((obj_asha.bbox_bottom-obj_asha.bbox_top)/2),obj_nanospark2);
    obj_asha.alarm[5]=1;
    obj_asha.deadfakes=13;
    scr_shakescreen(3);
    obj_sabot.flash=0.8;
    repeat(150)
        instance_create(obj_asha.x-100+random(200),obj_asha.y-100+random(200),obj_ashaflash);
    instance_create(bbox_left+((bbox_right-bbox_left)/2), bbox_top+((bbox_bottom-bbox_top)/2),obj_megaflare);
    obj_ashatrigger.alarm[1]=90;
    with (obj_enemyrocket)
        instance_destroy();
    with (obj_enemympfb)
        instance_destroy();
    with (obj_enemyshock)
        instance_destroy();
    with (obj_enemyshockball)
        instance_destroy();
    with (obj_elecbomb){
        instance_destroy();
        instance_create(x,y-8,obj_bigsmoke);
        }
    }

//Asha2 dies (for real)
else{
    scr_sound("exp_boss");
    scr_sound("ash_death");
    with (obj_sabot)
        scr_stopmusic();
    obj_sabot.killedasha2=1;
    obj_asha2trigger.alarm[1]=20;
    with (obj_asha2safe)
        instance_destroy();
    with (obj_xspecialcannotfire)
        instance_destroy();
    with (obj_elecbomb){
        instance_destroy();
        instance_create(x,y-8,obj_bigsmoke);
        }
    repeat(10)
        instance_create(obj_asha2.bbox_left+((obj_asha2.bbox_right-obj_asha2.bbox_left)/2),obj_asha2.bbox_top+((obj_asha2.bbox_bottom-obj_asha2.bbox_top)/2),obj_nanospark2);
    global.kills+=1;
    global.killdata[755]=2;
    instance_create(bbox_left+((bbox_right-bbox_left)/2), bbox_top+((bbox_bottom-bbox_top)/2), obj_ashagore);
    tempid=instance_create(bbox_left+((bbox_right-bbox_left)/2), bbox_top+((bbox_bottom-bbox_top)/2), obj_ashahead);
    if (x>obj_iji.x)
        tempid.sprite_index=spr_ashaheadleft;
    instance_create(bbox_left+((bbox_right-bbox_left)/2), bbox_top+((bbox_bottom-bbox_top)/2), obj_harmlessexplosion);
    instance_create(bbox_left+((bbox_right-bbox_left)/2), bbox_top+((bbox_bottom-bbox_top)/2), obj_megaflare);
    repeat(5)
        instance_create(bbox_left+((bbox_right-bbox_left)/2), bbox_top+((bbox_bottom-bbox_top)/2), obj_smokepoint);
    scr_nanoexplosion((bbox_right-bbox_left)/2, (bbox_bottom-bbox_top)/2);
    obj_asha2trigger.alarm[0]=150;
    scr_shakescreen(4);
    obj_sabot.temporaryflash=1;
    obj_sabot.flash=0.8;
    repeat(150)
        instance_create(obj_asha2.x-100+random(200),obj_asha2.y-100+random(200),obj_asha2flash);
    with (obj_enemyrocket)
        instance_destroy();
    with (obj_enemympfb)
        instance_destroy();
    with (obj_enemyshock)
        instance_destroy();
    with (obj_enemyshockball)
        instance_destroy();
    with (obj_ashaghost)
        instance_destroy();
    instance_destroy();
    }

}