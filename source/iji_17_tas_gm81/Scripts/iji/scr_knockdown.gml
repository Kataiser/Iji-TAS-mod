//Knockdown
//Argument0 is knockdowntype
// 1 left
// 2 right
//Argument1 is force
//Argument2 is nanoexplo 1=off
//Argument3 is recover armor 1=off
//Argument4 is no voice 1=true
//Argument5 is impulse 1=true
delayframes=0;

//Tech pain
if (paintech && (techcyc==1 || techcyc==2 || techcyc==3 || techcyc==4 || overload==10) && notech==0 && global.hp>0){
    paintech=0;
    scr_paintech();
    exit;
    }
paintech=0;

//Overload: nanochaos
if (overload==1 && !nanochaosed && !recovering && !takingpain && argument5==0){
    nanochaosed=1;
    repeat(10)
        instance_create(bbox_left+(bbox_right-bbox_left)-16,bbox_top+(bbox_bottom-bbox_top)-24,obj_nanochaos);
    }
    
//Suppression
if (global.healthlevel==10 && !fatality && argument5==0){
    if (suppression-global.hp>1){
        global.hp+=1;
        global.damage-=1;
        }
    }
suppression=global.hp;
if (global.hp<=0)
    global.hp=0;

if (takingpain==0){
//Anni beta safeguard
if (obj_sabot.annihilatorbeta){
    obj_sabot.annihilatorbeta=0;
    global.ignoreall=0;
    obj_sabot.ignoresmooth=1;
    obj_sabot.alarm[4]=2;
    obj_sabot.alarm[5]=1;
    }


//Fly off Shredder
if (shredder){
    if (shredderhp>0){
        tempid=instance_create(floor(x),floor(y)-1,obj_emptyshredder);
        tempid.shredderhp=shredderhp;
        if (sprite_index==spr_tasenshredder_basicijileft)
            tempid.sprite_index=spr_tasenshredder_emptyleft;
        else
            tempid.sprite_index=spr_tasenshredder_empty;
        tempid.facing=global.facing;
        tempid.hspeed=hspeed;
        tempid.vspeed=vspeed;
        }
    visible=1;
    with (obj_hologram)
        instance_destroy();
    y-=30;
    x=floor(x);
    y=floor(y);
    shredder=0;
    }

global.ignoreall=0;
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

//Knockdown
knockdowntype = argument0;
if (argument1 == 0){
    velocity = 0;
    speed = 6;
    }
else{
velocity = argument1;
if (velocity > 22){
    velocity = 22;
    }
if (velocity < 1){
    velocity = 1;
    }
speed = (argument1+6);
if (speed > 22){
    speed = 22;
    }
}
//(downed fix)
if (place_free(x-velocity-2,y-(speed+2)) && place_free(x+velocity+2,y-(speed+2)) && (sprite_index==spr_hitfloor || sprite_index==spr_hitfloorleft))
    y-=15;

if (knockdowntype == 1){
    sprite_index = spr_knockdown;
    global.facing = 1;
    }
else{
    sprite_index = spr_knockdownleft;
    global.facing = 0;
    }
if (!argument2)
    script_execute(scr_nanoexplosion,6,15,1);
if (!argument3)
    global.armor = 100;
global.state = 6;
takingpain = 1;
switchingpose = 0;
kicking = 0;
direction = 90;
y-=10;
image_single=-1;
image_index=0;
image_speed=0.5;
alarm[0]=0;
alarm[1]=0;
alarm[3]=0;
alarm[4]=0;
alarm[6]=0;
alarm[7]=0;
velocity = round(velocity);
speed = round(speed);
goaroundcyen=0;
scr_shakescreen(1);
if (argument4==0){
    playpainsfx=0;
    playbigpainsfx=1;
    }
//No HP
if (global.hp<=0){
    //fix revivebug
    if (overload!=6)
        obj_sabot.ultimatecannotpause=1;

    if (!deathscreamed){
        deathscreamed=1;
        scr_sound("iji_death");
        if (overload!=6 && obj_checkpoint.state!=1){
            if (!global.noblood){
                repeat(4){
                    tempid=instance_create(bbox_left+((bbox_right-bbox_left)/2),bbox_top+((bbox_bottom-bbox_top)/2),obj_tasenbloodspecial);
                    tempid.sprite_index=spr_ijiblood2;
                    tempid.speed*=1.5;
                    tempid.depth=-7;
                    }
                }
            }
        }
    
    //remove pursuing Assassins
    with (obj_komatoassassin){
        if (angry)
            destroyme=1;
        }
    }

//Tech (from pain)
if ((knockdowntype==1 || knockdowntype==2) && (techcyc==1 || techcyc==2 || techcyc==3 || techcyc==4 || overload==10) && notech==0 && global.hp>0){
    if (argument4==0 && argument5==0){
        playpainsfx=1;
        playbigpainsfx=0;
        }
    scr_techeffect();
    velocity=ceil(velocity*0.5);
    speed=ceil(speed*0.5);
    takingpain=1;
    stopanyfire=1;
    if (global.strengthlevel==10)
        alarm[7]=90;
    else
        alarm[7]=60;
    image_single=3;
    if (knockdowntype==1)
        sprite_index=spr_jump;
    else
        sprite_index=spr_jumpleft;
    if (!place_free(x,y))
        move_outside_solid(90,32);
    if (argument5==1){
        recovering=0;
        takingpain=0;
        }
    }
}