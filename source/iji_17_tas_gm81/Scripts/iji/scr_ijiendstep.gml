if (!ignorephysics){

//Overloads
nanochaosed=0;
nanoblasted=0;
if (overload==8)
    global.armor=100;

//Climb right
if (!shredder){
if (keyboard_check(vk_right) && !global.ignoreall && global.state==2 && vspeed>0){
if (place_free(x,y+48) && !place_free(x+walkspeed,y) && !place_free(x+walkspeed,yprevious) && !place_free(x+walkspeed,y-38) && place_free(x+walkspeed,yprevious-38) && !place_meeting(x+24,yprevious-38,obj_glass)){
    global.state=5;
    alarm[0]=12;
    sprite_index=spr_climb;
    move_contact_solid(0,64);
    x+=14;
    y-=64;
    move_outside_solid(270,64);
    move_contact_solid(270,64);
    vspeed=0;
    gravity=0;
    image_single=-1;
    image_index=0;
    image_speed=0.5;
    }
}
//Climb left
if (keyboard_check(vk_left) && !global.ignoreall && global.state==2 && vspeed>0){
if (place_free(x,y+48) && !place_free(x-walkspeed,y) && !place_free(x-walkspeed,yprevious) && !place_free(x-walkspeed,y-38) && place_free(x-walkspeed,yprevious-38) && !place_meeting(x-16,yprevious-38,obj_glass)){
    global.state=5;
    alarm[0]=12;
    sprite_index=spr_climbleft;
    move_contact_solid(180,64);
    x-=16;
    y-=64;
    move_outside_solid(270,64);
    move_contact_solid(270,64);
    vspeed=0;
    gravity=0;
    image_single=-1;
    image_index=0;
    image_speed=0.5;
    }
}
}

//Plasmaed
if (plasmaed==1)
    scr_knockdown(1,12+random(3))
if (plasmaed==2)
    scr_knockdown(2,12+random(3))
plasmaed=0;

//Suppression help
if (global.healthlevel==10)
    suppression=global.hp;

//Shredder explodes
if (shredder && shredderhp<=0){
    if (global.facing==0)
        sxadjust=-5;
    else
        sxadjust=5;
    visible=1;
    alarm[3]=0;
    with (obj_hologram)
        instance_destroy();
    instance_create(x+sxadjust,y,obj_enemyrocketexplosion);
    instance_create(x+sxadjust,y,obj_explosioncenter);
    if (global.specialbake==0)
        maxdebris=200;
    else
        maxdebris=40;
    if (instance_number(obj_scrapwhite)<maxdebris)
    repeat(40){
        tempid=instance_create(x-10+random(20),y-10+random(20),obj_scrapwhite);
        tempid.direction=random(360);
        tempid.speed=random(18);
        }
    scr_shakescreen(2);
    }


//--------------------
//COLLISION WITH BLOCK
//--------------------
lampexception=0;
if (place_meeting(x,y,obj_lamp))
    lampexception=1;
if (place_meeting(x,y,obj_block) && !shredder && !lampexception){
if (vspeed>0)
    move_outside_solid(90,30);
if (place_meeting(x,y,obj_block)){
    x=xprevious;
    y=yprevious;
    }
//Knockdown landing
if (global.state==6){
    if (vspeed<0){
        move_contact_solid(90,30);
        vspeed=0;
        }
    else{
        stopanyfire=0;
        if (sprite_index==spr_jump || sprite_index==spr_jumpleft){
            scr_sound("iji_land");
            global.state=1;
            image_index=0;
            image_single=-1;
            image_speed=0.5;
            if (knockdowntype==1)
                sprite_index=spr_basic;
            else
                sprite_index=spr_basicleft;
            gravity=0;
            vspeed=0;
            move_contact_solid(270,64);
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
            }
        else{
            scr_sound("iji_hitfloor");
            global.state=7;
            image_single=-1;
            image_index=0;
            image_speed=0.5;
            if (knockdowntype==1)
                sprite_index=spr_hitfloor;
            if (knockdowntype==2)
                sprite_index=spr_hitfloorleft;
            if (knockdowntype==7){
                if (global.facing==0)
                    sprite_index=spr_hitfloorleft;
                else
                    sprite_index=spr_hitfloor;
                }
            alarm[6]=10;
            alarm[7]=60;
            gravity=0;
            vspeed=0;
            move_contact_solid(270,64);
            }
        //Dusty block
        if (place_meeting(x,y+8,obj_dustyblock)){
            instance_create(x-8,y+36,obj_smoke);
            instance_create(x,y+34,obj_smoke);
            instance_create(x+8,y+32,obj_smoke);
            instance_create(x+16,y+36,obj_smoke);
            instance_create(x+24,y+32,obj_smoke);
            }
        }
    }
//Normal stuff
if (global.state==2){
    if (vspeed<0){
        move_contact_solid(90,64);
        vspeed=0;
        }
    else if (!lampexception){
        stopanyfire=0;
        gravity=0;
        global.state=1;
        image_single=-1;
        image_speed=0.5;
        move_contact_solid(270,64);
        //Dusty block
        if (vspeed>0 && place_meeting(x,y+8,obj_dustyblock)){
            instance_create(x+1,y+57,obj_smoke);
            instance_create(x+14,y+57,obj_smoke);
            }
        vspeed=0;
        //High fall
        if (falldistance>=300){
            if (falldistance>=400){
                delayframes=8;
                scr_sound("glo_kick");
                scr_shakescreen(2);
                }
            scr_shakescreen(0);
            scr_sound("iji_land2");
            global.state=3;
            if (global.facing==0)
                sprite_index=spr_duckleft;
            else
                sprite_index=spr_duck;
            instance_create(x+1,y+57,obj_smoke);
            instance_create(x+14,y+57,obj_smoke);
            image_single=4;
            switchingpose=0;
            running=0;
            }
        else if (running==0){
            scr_sound("iji_land");
            if (global.facing==0)
                sprite_index=spr_basicleft;
            else
                sprite_index=spr_basic;
            }
        else{
            scr_sound("iji_land");
            if (global.facing==0)
                sprite_index=spr_runleft;
            else
                sprite_index=spr_run;
            }
        }
    }

//Fix getting stuck
if (!place_free(x,y)){
    if (place_free(x-walkspeed,y))
        move_outside_solid(180,1);
    else if (place_free(x+walkspeed,y))
        move_outside_solid(0,1);
    else if (place_free(x,y+5))
        move_outside_solid(270,1);
    else
        move_outside_solid(90,1);
    }

x=round(x);
y=floor(y);
}

//Go down lift
if (!ignorephysics){
if (keyboard_check(vk_down) && !ignoredown && !shredder && global.ignoreall==0 && noliftride==0){
    if (!mdk && global.state==1 && place_meeting(x,y+1,obj_lift) && place_meeting(x-16,y+1,obj_lift) && place_meeting(x+16,y+1,obj_lift)){
        with (obj_lift){
            if (place_meeting(x,y-1,obj_iji) && place_free(x,y+32) && place_free(x,y+64) && place_free(x,y+96) && place_free(x,y+128)){
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
                if (global.facing==1)
                    obj_iji.sprite_index=spr_basic;
                else
                    obj_iji.sprite_index=spr_basicleft;
                vspeedx=8;
                }
            }
        }
    }
}

//Press down key
if ((keyboard_check(vk_down) || delayframes>0) && !ignoredown && !shredder){
    if (!place_meeting(x,y,obj_end)){
        if (global.ignoreall==0){
            lookingaround=0;
            //Duck while halfway rising
            if (global.state==5){
                if (sprite_index==spr_standup || sprite_index==spr_standupleft){
                    switchingpose=1;
                    image_index=2-image_index;
                    if (global.facing==0)
                        sprite_index=spr_duckleft;
                    else
                        sprite_index=spr_duck;
                    alarm[1]=0;
                    alarm[0]=8-(image_index*2);
                    }
                }
            //Duck while standing
            if ((global.state==1 && !place_free(x,y+3)) || sprite_index==spr_pushbutton || sprite_index==spr_pushbuttonleft){
                if (place_free(x,y+1))
                    move_contact_solid(270,30);
                alarm[1]=0;
                switchingpose=1;
                global.state=5;
                image_index=0;
                alarm[0]=8;
                if (global.facing==0)
                    sprite_index=spr_duckleft;
                else
                    sprite_index=spr_duck;
                }
            }
        }
    }

//For enhanced jumping
prevstate2=prevstate;
xprev2=xprev;
yprev2=yprev;
prevstate=global.state;
xprev=x;
yprev=y;
}

//Sector15 phantom shove
if (phantomshove>0){
    x-=phantomshove;
    phantomshove-=1;
    }

//Sector15 bounceback
if (room==rom_sector15 && !obj_sabot.unlockcamera && !obj_sabot.fullpcamera){
if (x<400)
    x=400;
if (x>1360)
    x=1360;
    }

if (!global.ignoreall && !shredder && !takingpain && !recovering){
    if (sprite_index==spr_duck || sprite_index==spr_duckleft){
        if (keyboard_check(vk_enter) && keyboard_check(vk_down))
            squeakcyc+=1;
        else
            squeakcyc=0;
        }
    else
        squeakcyc=0;
    if (squeakcyc==300){
        squeakcyc=0;
        global.erasetop=0;
        if (global.squeak){
            global.squeak=0;
            global.topmessage="CLOWN MODE OFF";
            scr_sound("wea_banana");
            }
        else{
            global.squeak=1;
            global.topmessage="CLOWN MODE ON";
            scr_sound("wea_banana");
            }
        }
    }
if (global.squeak){
    if (sprite_index==spr_run || sprite_index==spr_runleft || sprite_index==spr_runfire || sprite_index==spr_runfireleft){
        if (image_index==1 || image_index==5)
            scr_sound("wea_banana");
        }
    else if (sprite_index==spr_getup || sprite_index==spr_getupleft){
        if (image_index==6)
            scr_sound("wea_banana");
        }
    else if (sprite_index==spr_kickstrong || sprite_index==spr_kickstrongleft){
        if (image_index==3 || image_index==7)
            scr_sound("wea_banana");
        }
    else if (sprite_index==spr_climb || sprite_index==spr_climbleft){
        if (image_index==5)
            scr_sound("wea_banana");
        }
    }

//Levelstation
if (global.levelstation)
    scr_levelstation();
//Weapon station
if (global.weapstation>0)
    scr_weapstation();
//No mercy
if (global.nomercy && !global.ignoreall){
    if ((takingpain>0 || recovering>0) && (alarm[7]<=0 || alarm[7]>6)){
        takingpain=1;
        recovering=1;
        alarm[7]=6;
        }
    }
//No reloads
if (global.noreloads){
    if (alarm[2]>1 && global.weapon!=1 && global.weapon!=5 && global.weapon!=6 && global.weapon!=8 && global.weapon!=13 && global.weapon!=14 && global.weapon!=16 && global.weapon!=20){
        alarm[2]=1;
        reloader=1;
        }
    if (alarm[2]>2 && (global.weapon==6 || global.weapon==8 || global.weapon==14 || global.weapon==16)){
        alarm[2]=2;
        reloader=2;
        }
    }

//Pain sounds
if (playpainsfx)
    scr_sound("iji_pain");
else if (playbigpainsfx)
    scr_sound("iji_bigpain");
playpainsfx=0;
playbigpainsfx=0;
