//argument0 is no voice

//Anni beta safeguard
if (obj_sabot.annihilatorbeta){
obj_sabot.annihilatorbeta=0;
global.ignoreall=0;
obj_sabot.ignoresmooth=1;
obj_sabot.alarm[4]=2;
obj_sabot.alarm[5]=1;
}

//Overload: nanochaos
if (overload==1 && !nanochaosed && !recovering && !takingpain){
    nanochaosed=1;
    repeat(10)
        instance_create(bbox_left+(bbox_right-bbox_left)-16,bbox_top+(bbox_bottom-bbox_top)-24,obj_nanochaos);
    }

//Suppression
if (global.healthlevel==10 && !fatality){
    if (suppression-global.hp>1){
        global.hp+=1;
        global.damage-=1;
        }
    }
suppression=global.hp;
if (global.hp<=0)
    global.hp=0;

//Taking pain
scr_shakescreen(1);
delayframes=0;
global.ignoreall=0;
global.damage+=1;
if (global.levelstation){
    global.levelstation=0;
    global.topmessage="";
    instance_activate_object(obj_levelstation);
    with (obj_levelstation)
        touchstation=0;
    }
if (global.weapstation>0){
    global.weapstation=0;
    global.topmessage="";
    instance_activate_object(obj_weapstation);
    with (obj_weapstation)
        touchstation=0;
    }
if (global.cracking){
    global.erasetop=0;
    global.topmessage="CRACKING FAILED";
    }
if (instance_number(obj_cracktext)==1)
    scr_crackfail();
script_execute(scr_terminatemessage);
global.armor=100;
//No HP
if (global.hp<=0){
    //fix revivebug
    if (overload!=6)
        obj_sabot.ultimatecannotpause=1;
    
    if (global.facing==0)
        script_execute(scr_knockdown,2,1)
    else
        script_execute(scr_knockdown,1,1)
    if (!deathscreamed){
        deathscreamed=1;
        scr_sound("iji_death");
        if (!global.noblood){
            repeat(4){
                tempid=instance_create(bbox_left+((bbox_right-bbox_left)/2),bbox_top+((bbox_bottom-bbox_top)/2),obj_tasenbloodspecial);
                tempid.sprite_index=spr_ijiblood2;
                tempid.speed*=1.5;
                tempid.depth=-7;
                }
            }
        }
    
    //remove pursuing Assassins
    with (obj_komatoassassin){
        if (angry)
            destroyme=1;
        }
    exit;
    }
//Jumping
if (global.state==2 && takingpain==0){
    script_execute(scr_nanoexplosion,6,15,1);
    if (global.facing==0){
        paintech=1;
        script_execute(scr_knockdown,2)
        }
    if (global.facing==1){
        paintech=1;
        script_execute(scr_knockdown,1)
        }
    if (argument0==0){
        playpainsfx=1;
        playbigpainsfx=0;
        }
    }
//Kicking
else if (global.state==5 && kicking==1 && takingpain==0){
    script_execute(scr_nanoexplosion,6,15,1);
    if (global.facing==0){
        paintech=1;
        script_execute(scr_knockdown,2)
        }
    if (global.facing==1){
        paintech=1;
        script_execute(scr_knockdown,1)
        }
    if (argument0==0){
        playpainsfx=1;
        playbigpainsfx=0;
        }
    kicking=0;
    }
//Walking/standing
else if (global.state==1 && takingpain==0){
    script_execute(scr_nanoexplosion,6,15,1);
    if ((techcyc==1 || techcyc==2|| techcyc==3 || techcyc==4 || overload==10) && notech==0 && global.hp>0)
        scr_paintech();
    else{
        if (argument0==0){
            playpainsfx=1;
            playbigpainsfx=0;
            }
        takingpain=1;
        obj_iji.alarm[1]=9;
        obj_iji.alarm[4]=0;
        obj_iji.image_index=0;
        obj_iji.image_single=-1;
        obj_iji.image_speed=0.5;
        if (global.facing==0){
            obj_iji.sprite_index=spr_painleft;
            }
        if (global.facing==1){
            obj_iji.sprite_index=spr_pain;
            }
        if (global.state==8){
        obj_iji.y=(obj_iji.y-30);
            }
        global.state=5;
        }
    }
//Ducking/climbing
else if (global.state==3 || (sprite_index==spr_climb || sprite_index==spr_climbleft) && takingpain==0){
    script_execute(scr_nanoexplosion,6,15,1);
    if ((techcyc==1 || techcyc==2|| techcyc==3 || techcyc==4 || overload==10) && notech==0 && global.hp>0){
        switchingpose=0;
        scr_paintech();
        }
    else{
        if (argument0==0){
            playpainsfx=1;
            playbigpainsfx=0;
            }
        takingpain=1;
        switchingpose=0;
        global.state=5;
        obj_iji.alarm[0]=9;
        obj_iji.alarm[1]=0;
        obj_iji.image_single=-1;
        obj_iji.image_index=0;
        obj_iji.image_speed=0.5;
        if (global.facing=0){
            obj_iji.sprite_index=spr_duckingpainleft;
            }
        if (global.facing==1){
            obj_iji.sprite_index=spr_duckingpain;
            }
        }
    }
//Switching pose
else if (global.state==5 && (switchingpose==1 || global.nomercy) && takingpain==0){
    script_execute(scr_nanoexplosion,6,15,1);
    if ((techcyc==1 || techcyc==2|| techcyc==3 || techcyc==4 || overload==10) && notech==0 && global.hp>0){
        if (sprite_index==spr_pushbutton || sprite_index==spr_pushbuttonleft){
            global.state=1;
            if (global.facing==0)
                sprite_index=spr_basicleft;
            else
                sprite_index=spr_basic;
            image_single=-1;
            image_index=0;
            image_speed=0.5;
            }
        switchingpose=0;
        scr_paintech();
        }
    else{
        if (argument0==0){
            playpainsfx=1;
            playbigpainsfx=0;
            }
        takingpain=1;
        switchingpose=0;
        global.state=5;
        obj_iji.alarm[0]=0;
        obj_iji.alarm[1]=9;
        obj_iji.image_index=0;
        obj_iji.image_speed=0.5;
        if (global.facing==0){
            obj_iji.sprite_index=spr_painleft;
            }
        if (global.facing==1){
            obj_iji.sprite_index=spr_pain;
            }
        }
    }
//Lying down
else if ((global.state==8 || global.state==7) && takingpain==0){
    if (argument0==0){
        playpainsfx=1;
        playbigpainsfx=0;
        }
    script_execute(scr_nanoexplosion,6,25,1);
    obj_iji.alarm[6]=7;
    takingpain=1;
    global.state=7;
    obj_iji.image_index=0;
    obj_iji.image_single=-1;
    obj_iji.image_speed=0.5;
    if (global.facing==0){
        obj_iji.sprite_index=spr_hitfloorleft;
        }
    if (global.facing==1){
        obj_iji.sprite_index=spr_hitfloor;
        }
    }

//Being harmlesly knocked down
else if (global.state==6 && takingpain==0){
    script_execute(scr_nanoexplosion,6,15,1);
    if (global.facing==0){
        paintech=1;
        script_execute(scr_knockdown,2)
        }
    if (global.facing==1){
        paintech=1;
        script_execute(scr_knockdown,1)
        }
    }