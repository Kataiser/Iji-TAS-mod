//Deep into the Iji code peering, long I stood there
//Wondering, fearing, doubting... but mostly wondering

if (!global.wty){
if (!global.ignoreall){
if (!place_meeting(x,y,obj_end)){
if (!shredder || (shredder && image_index>6)){
lookaround=0;
lookingaround=0;
if (global.state==1 || (global.fireanytime && !stopanyfire && (sprite_index==spr_jump || sprite_index==spr_jumpleft || sprite_index==spr_duck || sprite_index==spr_duckleft || sprite_index==spr_standup || sprite_index==spr_standupleft))){
if (!place_free(x+0,y+4) || shredder || global.fireanytime){
if (global.fireanytime){
    if (!place_free(x+0,y+4) && place_free(x+0,y+1) && !shredder && sprite_index!=spr_jump && sprite_index!=spr_jumpleft)
        move_contact_solid(270,32);
    }
else{
    if (place_free(x+0,y+1) && !shredder)
        move_contact_solid(270,-1);
    }

//"CLICK"
if (overload==7 && global.weapon==6 && global.passive){
    scr_sound("glo_noammo");
    global.topmessage="THIS WEAPON IS INCOMPATIBLE WITH NANORAGE";
    global.erasetop=0;
    exit;
    }

//"CLICK"
if (overload!=7){
    if (global.weapon==2 && global.ammo2==0){
        scr_sound("glo_noammo");
        global.topmessage="INSUFFICIENT AMMUNITION";
        global.erasetop=0;
        }
    else if (global.weapon==3 && global.ammo3==0){
        scr_sound("glo_noammo");
        global.topmessage="INSUFFICIENT AMMUNITION";
        global.erasetop=0;
        }
    else if (global.weapon==4 && global.ammo4==0 && !global.passive){
        scr_sound("glo_noammo");
        global.topmessage="INSUFFICIENT AMMUNITION";
        global.erasetop=0;
        }
    else if (global.weapon==4 && global.ammo4<=2 && global.passive){
        scr_sound("glo_noammo");
        global.topmessage="INSUFFICIENT AMMUNITION";
        global.erasetop=0;
        }
    else if (global.weapon==6 && global.ammo6==0){
        scr_sound("glo_noammo");
        if (global.passive){
            if (string_copy(global.topmessage,1,6)!="Nano +"){
                global.topmessage="INSUFFICIENT AMMUNITION";
                global.erasetop=0;
                }
            }
        else{
            global.topmessage="INSUFFICIENT AMMUNITION";
            global.erasetop=0;
            }
        }
    else if (global.weapon==7 && global.ammo7==0){
        scr_sound("glo_noammo");
        global.topmessage="INSUFFICIENT AMMUNITION";
        global.erasetop=0;
        }
    else if (global.weapon==8 && global.ammo8==0 && !global.passive){
        scr_sound("glo_noammo");
        global.topmessage="INSUFFICIENT AMMUNITION";
        global.erasetop=0;
        }
    else if (global.weapon==8 && global.ammo8<=2 && global.passive){
        scr_sound("glo_noammo");
        if (ignorenoammomsg==0){
            global.topmessage="INSUFFICIENT AMMUNITION";
            global.erasetop=0;
            }
        }
    else if (global.weapon==9 && global.ammo2==0){
        scr_sound("glo_noammo");
        global.topmessage="INSUFFICIENT AMMUNITION";
        global.erasetop=0;
        }
    else if (global.weapon==10 && global.ammo2==0){
        scr_sound("glo_noammo");
        global.topmessage="INSUFFICIENT AMMUNITION";
        global.erasetop=0;
        }
    else if (global.weapon==11 && global.ammo3<=2){
        scr_sound("glo_noammo");
        global.topmessage="INSUFFICIENT AMMUNITION";
        global.erasetop=0;
        }
    else if (global.weapon==12 && global.ammo4<=2){
        scr_sound("glo_noammo");
        global.topmessage="INSUFFICIENT AMMUNITION";
        global.erasetop=0;
        }
    else if (global.weapon==14 && global.ammo6==0){
        scr_sound("glo_noammo");
        global.topmessage="INSUFFICIENT AMMUNITION";
        global.erasetop=0;
        }
    else if (global.weapon==15 && global.ammo7<=1){
        scr_sound("glo_noammo");
        global.topmessage="INSUFFICIENT AMMUNITION";
        global.erasetop=0;
        }
    else if (global.weapon==16 && global.ammo8==0){
        scr_sound("glo_noammo");
        global.topmessage="INSUFFICIENT AMMUNITION";
        global.erasetop=0;
        }
    else if (global.weapon==17 && (global.ammo2==0 || global.ammo3==0 || global.ammo4==0 || global.ammo6==0 || global.ammo7==0 || global.ammo8==0)){
        scr_sound("glo_noammo");
        global.topmessage="INSUFFICIENT AMMUNITION";
        global.erasetop=0;
        }
    else if (global.weapon==21 && global.hp==1 && global.armor<=51){
        scr_sound("glo_noammo");
        global.topmessage="INSUFFICIENT ARMOR";
        global.erasetop=0;
        }
    }

if (reloading==0){
firing=1;

if (xcannotfire==1){
global.erasetop=0;
global.topmessage="There's no need to fire your Nanogun here";
exit;
}


//Nanorage
if (overload==7){
    if (global.weapon==2){
        if (global.ammo2==0){
            global.ammo2=1;
            global.ammo2part=9;
            }
        else{
            if (!global.passive)
                global.ammo2part-=1;
            else
                global.ammo2part-=3;
            }
        }
    else if (global.weapon==3){
        global.ammo3+=1;
        }
    else if (global.weapon==4){
        if (!global.passive)
            global.ammo4+=1;
        else
            global.ammo4+=3;
        }
    else if (global.weapon==6){
        if (global.ammo6==0){
            global.ammo6=1;
            global.ammo6part=24;
            }
        else
            global.ammo6part-=1;
        }
    else if (global.weapon==7){
        global.ammo7+=1;
        }
    else if (global.weapon==8){
        if (global.ammo8==0){
            global.ammo8=1;
            global.ammo8part=9;
            }
        else{
            if (!global.passive)
                global.ammo8part-=1;
            else
                global.ammo8+=3;
            }
        }
    else if (global.weapon==9)
        global.ammo2+=1;
    else if (global.weapon==10){
        if (global.ammo2==0){
            global.ammo2=1;
            global.ammo2part=9;
            }
        else
            global.ammo2part-=4;
        }
    else if (global.weapon==11)
        global.ammo3+=3;
    else if (global.weapon==12)
        global.ammo4+=3;
    else if (global.weapon==14){
        if (global.ammo6==0){
            global.ammo6=1;
            global.ammo6part=24;
            }
        else
            global.ammo6part-=1.5;
        }
    else if (global.weapon==15)
        global.ammo7+=2;
    else if (global.weapon==16){
        if (global.ammo8==0){
            global.ammo8=1;
            global.ammo8part=9;
            }
        else
            global.ammo8part-=3;
        }
    }


//-------------------------------
//SHOTGUN / BUSTER GUN / STUN GUN
//-------------------------------
if (global.weapon==1 || (global.weapon==9 && global.ammo2>0)){
if (global.passive){
    scr_sound("glo_bootelec");
    scr_sound("glo_spark");
    }
else
    scr_sound("wea_shot");
scr_firesprite();
scr_nextfv();
alarm[2]=30;
reloader=30;
if (global.passive){
    alarm[2]=90;
    reloader=90;
    }
else if (global.weapon==9){
    alarm[2]=8;
    reloader=1000;
    if (running)
        alarm[4]=8;
    }
reloading=1;
if (global.facing == 0){
    if (global.passive){
        repeat(8)
            (instance_create(x+14+xadjust,y+14+yadjust,obj_pellet)).stun=1;
        }
    else{
        repeat(8)
            instance_create(x+14+xadjust,y+14+yadjust,obj_pellet);
        }
    if (overload==4 && !global.passive)
        instance_create(x+14+xadjust,y+14+yadjust,obj_blastpellet);
    instance_create(x-4+xadjust,y+13+yadjust,obj_shotgunflash);
    if(instance_number(obj_shell)<40 && !global.specialbake){
        repeat(2-global.passive){
            tempid = instance_create(x+11+xadjust,y+11+yadjust,obj_shell);
            tempid.speed = random(2)+5;
            tempid.direction = random(15)+40;
            if (overload==4)
                tempid.alarm[2]=1+random(5);
            tempid.depth=0;
            }
        }
    }
if (global.facing == 1){
    if (global.passive){
        repeat(8)
            (instance_create(x+xadjust,y+14+yadjust,obj_pellet)).stun=1;
        }
    else{
        repeat(8)
            instance_create(x+xadjust,y+14+yadjust,obj_pellet);
        }
    if (overload==4)
        instance_create(x+xadjust,y+14+yadjust,obj_blastpellet);
    instance_create(x+66+xadjust,y+13+yadjust,obj_shotgunflash);
    if(instance_number(obj_shell)<40 && !global.specialbake){
        repeat(2-global.passive){
            tempid = instance_create(x+1+xadjust,y+11+yadjust,obj_shell);
            tempid.speed = random(2)+5;
            tempid.direction = random(15)+130;
            if (overload==4)
                tempid.alarm[2]=1+random(5);
            }
        }
    }
}
if (global.weapon==9 && global.ammo2==0){
    global.topmessage="INSUFFICIENT AMMUNITION";
    global.erasetop=0;
    with (obj_sabot)
        scr_changeweapon(1);
    }
if (global.weapon==9 && global.ammo2>0)
    global.ammo2-=1;
//------------------------------
//MACHINEGUN / IMPACT MACHINEGUN
//------------------------------
if (global.weapon==2){
if (global.ammo2 > 0){
if (global.passive){
    scr_sound("wea_imach");
    scr_sound("exp_spli");
    }
else
    scr_sound("wea_imach");
scr_firesprite();
scr_nextfv();
if (global.passive){
    alarm[2]=8;
    reloader=1000;
    global.ammo2part+=3;
    }
else{
    alarm[2]=3;
    reloader=1000;
    global.ammo2part+=1;
    }
reloading=1;
if (global.ammo2part > 9){
    global.ammo2part=0;
    global.ammo2-=1;
    }
if (global.facing == 0){
    tempid=instance_create(x+14+xadjust,y+14+yadjust,obj_bullet);
    if (global.passive)
        tempid.stagger=1;
    tempid=instance_create(x-5+xadjust,y+14+yadjust,obj_muzzleflash);
    if (instance_number(obj_shell)<40 && !global.specialbake){
        tempid = instance_create(x+11+xadjust,y+11+yadjust,obj_shell);
        tempid.speed = random(2)+5;
        tempid.direction = random(15)+40;
        tempid.depth=0;
        }
    }
if (global.facing == 1){
    tempid=instance_create(x+xadjust,y+14+yadjust,obj_bullet);
    if (global.passive)
        tempid.stagger=1;
    tempid=instance_create(x+50+xadjust,y+14+yadjust,obj_muzzleflash);
    tempid.image_single = random(5)+5;
    if (instance_number(obj_shell)<40 && !global.specialbake){
        tempid = instance_create(x+7+xadjust,y+11+yadjust,obj_shell);
        tempid.speed = random(2)+5;
        tempid.direction = random(15)+130;
        }
    }
}
else{
    global.topmessage="INSUFFICIENT AMMUNITION";
    global.erasetop=0;
    }
}
//----------------------------------
//ROCKET LAUNCHER / IMPULSE LAUNCHER
//----------------------------------
if (global.weapon == 3){
if (global.ammo3 > 0){
scr_sound("wea_rock");
scr_firesprite();
scr_nextfv();
if (global.passive){
    alarm[2]=90;
    reloader=90;
    global.ammo3-=1;
    }
else{
    alarm[2]=60;
    reloader=60;
    global.ammo3-=1;
    }
reloading=1;
if (global.facing == 0){
    tempid = instance_create(x+4+xadjust,y+13+yadjust,obj_rocket);
    if (global.passive)
        tempid.speed=-(20+(global.attacklevel));
    else
        tempid.speed=-global.rocketspeed;
    tempid.image_single = 1;
    tempid.ijis=1;
    if (global.passive){
        tempid.impulse=1;
        tempid.sprite_index=spr_impulserocket;
        }
    tempid = instance_create(x-4+xadjust,y+13+yadjust,obj_rocketlaunch);
    tempid.sprite_index = spr_rocketlaunchleft;
    }
if (global.facing == 1){
    tempid = instance_create(x-4+xadjust,y+13+yadjust,obj_rocket);
    if (global.passive)
        tempid.speed=20+(global.attacklevel);
    else
        tempid.speed=global.rocketspeed;
    tempid.image_single = 0;
    tempid.ijis=1;
    if (global.passive){
        tempid.impulse=1;
        tempid.sprite_index=spr_impulserocket;
        }
    instance_create(x+18+xadjust,y+13+yadjust,obj_rocketlaunch);
    }
}
else{
    global.topmessage="INSUFFICIENT AMMUNITION";
    global.erasetop=0;
    }
}
//--------------------
//MPFB DEVASTATOR
//--------------------
if (global.weapon == 4 && !global.passive){
    if (global.ammo4 > 0){
        scr_firesprite();
        scr_sound("wea_mpfb");
        scr_nextfv();
        alarm[2]=90;
        reloader=90;
        reloading=1;
        global.ammo4-=1;
        script_execute(scr_shakescreen,2);
        if (global.facing == 0){
            tempid = instance_create(x+8+xadjust,y+13+shredderadjust,obj_mpfb);
            tempid.speed = global.mpfbspeed;
            tempid.direction = 180;
            tempid.ijis=1;
            tempid = instance_create(x+8+xadjust,y+13+shredderadjust,obj_mpfb);
            tempid.speed = global.mpfbspeed-4;
            tempid.direction = 180;
            tempid.ijis=1;
            tempid = instance_create(x+8+xadjust,y+13+shredderadjust,obj_mpfb);
            tempid.speed = global.mpfbspeed-8;
            tempid.direction = 180;
            tempid.ijis=1;
            }
        if (global.facing == 1){
            tempid = instance_create(x+6+xadjust,y+13+shredderadjust,obj_mpfb);
            tempid.speed = global.mpfbspeed;
            tempid.direction = 0;
            tempid.ijis=1;
            tempid = instance_create(x+6+xadjust,y+13+shredderadjust,obj_mpfb);
            tempid.speed = global.mpfbspeed-4;
            tempid.direction = 0;
            tempid.ijis=1;
            tempid = instance_create(x+6+xadjust,y+13+shredderadjust,obj_mpfb);
            tempid.speed = global.mpfbspeed-8;
            tempid.direction = 0;
            tempid.ijis=1;
            }
        //Knockback
        if (recovering==0 && takingpain==0 && shredder==0 && global.strengthlevel<10){
            notech=10;
            visible=1;
            goaroundcyen=1;
            //Nanochaos
            if (overload==1){
                overload=0;
                scr_knockdown(2-global.facing,2,1,1,1);
                overload=1;
                }
            else
                scr_knockdown(2-global.facing,2,1,1,1);
            velocity=3;
            recovering=0;
            takingpain=0;
            }
        }
    else{
        global.topmessage="INSUFFICIENT AMMUNITION";
        global.erasetop=0;
        }
    }
//-----------------------------------------
//RESONANCE DETONATOR / RESONANCE DISRUPTOR
//-----------------------------------------
if (global.weapon == 5){
scr_sound("wea_reso");
scr_firesprite();
scr_nextfv();
alarm[2]=120;
reloader=120;
reloading=1;
if (!shredder){
    xadjust=0;
    yadjust=0;
    }
if (global.passive)
    instance_create(x+6+xadjust,y+15+yadjust,obj_disruptor);
else
    instance_create(x+6+xadjust,y+15+yadjust,obj_detonator);
}
//---------------------------
//PULSE CANNON / PULSE LINKER
//---------------------------
if (global.weapon == 6){
if (global.ammo6 > 0){
scr_firesprite();
scr_nextfv();
alarm[2]=1;
reloader=1000;
reloading=1;
firingpulse=2;
if (global.passive)
    global.ammo6part+=4;
else
    global.ammo6part+=1;
if (global.ammo6part >= 24){
    global.ammo6part=0;
    global.ammo6-=1;
    }
if (global.passive){
    projspd=22+(global.attacklevel*1);
    if (global.facing==0){
        tempid=instance_create(x-11+xadjust+projspd,y+13+yadjust,obj_pulse);
        tempid.speed=-projspd;
        tempid.image_index=21;
        tempid.image_speed=0.75;
        tempid.alarm[0]=10;
        tempid.linker=1;
        tempid=instance_create(x-19+xadjust+projspd,y+13+yadjust,obj_pulse);
        tempid.speed=-projspd;
        tempid.image_index=21;
        tempid.image_speed=0.75;
        tempid.alarm[0]=10;
        tempid.linker=1;
        tempid=instance_create(x-3+xadjust+projspd,y+13+yadjust,obj_pulse);
        tempid.speed=-projspd;
        tempid.image_index=21;
        tempid.image_speed=0.75;
        tempid.alarm[0]=10;
        tempid.linker=1;
        }
    if (global.facing==1){
        tempid=instance_create(x+23+xadjust-projspd,y+13+yadjust,obj_pulse);
        tempid.speed=projspd;
        tempid.image_index=21;
        tempid.image_speed=0.75;
        tempid.alarm[0]=10;
        tempid.linker=1;
        tempid=instance_create(x+31+xadjust-projspd,y+13+yadjust,obj_pulse);
        tempid.speed=projspd;
        tempid.image_index=21;
        tempid.image_speed=0.75;
        tempid.alarm[0]=10;
        tempid.linker=1;
        tempid=instance_create(x+15+xadjust-projspd,y+13+yadjust,obj_pulse);
        tempid.speed=projspd;
        tempid.image_index=21;
        tempid.image_speed=0.75;
        tempid.alarm[0]=10;
        tempid.linker=1;
        }
    }
else{
    if (global.facing==0){
        tempid=instance_create(x+28+xadjust,y+13+yadjust,obj_pulse);
        tempid.speed=-29;
        tempid=instance_create(x+36+xadjust,y+13+yadjust,obj_pulse);
        tempid.speed=-29;
        tempid=instance_create(x+20+xadjust,y+13+yadjust,obj_pulse);
        tempid.speed=-29;
        }
    if (global.facing==1){
        tempid=instance_create(x-9+xadjust,y+13+yadjust,obj_pulse);
        tempid.speed=29;
        tempid=instance_create(x-17+xadjust,y+13+yadjust,obj_pulse);
        tempid.speed=29;
        tempid=instance_create(x-1+xadjust,y+13+yadjust,obj_pulse);
        tempid.speed=29;
        }
    }
}
else{
    if (global.passive){
        if (string_copy(global.topmessage,1,6)!="Nano +"){
            global.topmessage="INSUFFICIENT AMMUNITION";
            global.erasetop=0;
            }
        }
    else{
        global.topmessage="INSUFFICIENT AMMUNITION";
        global.erasetop=0;
        }
    }
}
//--------------------
//SHOCKSPLINTER
//--------------------
if (global.weapon==7 && !global.passive){
if (global.ammo7>0){
scr_sound("wea_shoc");
scr_firesprite();
scr_nextfv();
alarm[2]=60;
reloader=60;
reloading=1;
global.ammo7-=1;
if (global.facing==0){
    tempid=instance_create(x+16+xadjust,y+13+yadjust,obj_shock);
    tempid.speed=-global.shockspeed;
    tempid.ijis=1;
    tempid=instance_create(x+xadjust,y+14+yadjust,obj_shockspark);
    tempid.speed=-3;
    }
if (global.facing==1){
    tempid=instance_create(x+xadjust,y+13+yadjust,obj_shock);
    tempid.speed=global.shockspeed;
    tempid.ijis=1;
    tempid=instance_create(x+16+xadjust,y+14+yadjust,obj_shockspark);
    tempid.speed=3;
    }
}
else{
    global.topmessage="INSUFFICIENT AMMUNITION";
    global.erasetop=0;
    }
}
//-----------------------------
//CYCLIC FUSION IGNITION SYSTEM
//-----------------------------
if (global.weapon == 8 && !global.passive){
if (global.ammo8 > 0){
scr_firesprite();
scr_nextfv();
alarm[2]=2;
reloader=1000;
reloading=1;
global.ammo8part+=1;
if (global.ammo8part > 9){
global.ammo8part=0;
global.ammo8-=1;
}
if (global.facing == 0)
    instance_create(x+15+xadjust,y+14+yadjust,obj_cfistrace);
if (global.facing == 1)
    instance_create(x-3+xadjust,y+14+yadjust,obj_cfistrace);
script_execute(scr_shakescreen,1);
}
else{
    global.topmessage="INSUFFICIENT AMMUNITION";
    global.erasetop=0;
    }
}
//--------------------
//SPLINTERGUN
//--------------------
if (global.weapon == 10){
if (global.ammo2 > 0){
scr_sound("wea_spli");
scr_firesprite();
scr_nextfv();
alarm[2]=3;
reloader=1000;
reloading=1;
global.ammo2part+=4;
if (global.ammo2part > 9){
global.ammo2part=0;
global.ammo2-=1;
}
if (global.facing==0){
    tempid=instance_create(x+18+xadjust,y+13+yadjust,obj_shockball);
    tempid.ijis=1;
    tempid.speed=25;
    tempid.direction=180;
    tempid.dud=0;
    tempid=instance_create(x+xadjust,y+14+yadjust,obj_shockspark);
    tempid.speed=-3;
    if (!global.specialbake)
        (instance_create(x+11+xadjust,y+11+yadjust,obj_shockshell)).short=1;
    }
if (global.facing==1){
    tempid=instance_create(x-4+xadjust,y+13+yadjust,obj_shockball);
    tempid.ijis=1;
    tempid.speed=25;
    tempid.direction=0;
    tempid.dud=0;   
    tempid=instance_create(x+16+xadjust,y+14+yadjust,obj_shockspark);
    tempid.speed=3;
    if (!global.specialbake){
        tempid=instance_create(x+1+xadjust,y+11+yadjust,obj_shockshell);
        tempid.hspeed=-tempid.hspeed;
        tempid.short=1;
        }
    }
}
else{
    global.topmessage="INSUFFICIENT AMMUNITION";
    global.erasetop=0;
    }
}
//--------------------
//SPREAD ROCKETS
//--------------------
if (global.weapon == 11){
if (global.ammo3 > 2){
    scr_sound("wea_rock");
    scr_firesprite();
    scr_nextfv();
    alarm[2]=90;
    reloader=90;
    reloading=1;
    global.ammo3-=3;
    if (global.facing == 0){
        tempid = instance_create(x+8+xadjust,y+13+shredderadjust,obj_rocket);
        tempid.ijis=1;
        tempid.speed = -global.rocketspeed;
        tempid.image_single = 1;
        tempid = instance_create(x+8+xadjust,y+13+shredderadjust,obj_rocket);
        tempid.ijis=1;
        tempid.speed = global.rocketspeed-2;
        tempid.direction = 174;
        tempid.image_single = 1;
        tempid = instance_create(x+8+xadjust,y+13+shredderadjust,obj_rocket);
        tempid.ijis=1;
        tempid.speed = global.rocketspeed-4;
        tempid.direction = 186;
        tempid.image_single = 1;
        tempid = instance_create(x-4+xadjust,y+13+shredderadjust,obj_rocketlaunch);
        tempid.sprite_index = spr_rocketlaunchleft;
        }
    if (global.facing == 1){
        tempid = instance_create(x-8+xadjust,y+13+shredderadjust,obj_rocket);
        tempid.ijis=1;
        tempid.speed = global.rocketspeed;
        tempid.image_single = 0;
        tempid = instance_create(x-8+xadjust,y+13+shredderadjust,obj_rocket);
        tempid.ijis=1;
        tempid.speed = global.rocketspeed-2;
        tempid.direction = 6;
        tempid.image_single = 0;
        tempid = instance_create(x-8+xadjust,y+13+shredderadjust,obj_rocket);
        tempid.ijis=1;
        tempid.speed = global.rocketspeed-4;
        tempid.direction = -6;
        tempid.image_single = 0;
        instance_create(x+18+xadjust,y+13+shredderadjust,obj_rocketlaunch);
        }
    }
}
//--------------------
//NUKE
//--------------------
if (global.weapon==12){
if (global.ammo4 > 2){
scr_sound("exp_nuke");
scr_firesprite();
scr_nextfv();
alarm[2]=90;
reloader=90;
reloading=1;
global.ammo4-=3;
script_execute(scr_shakescreen,5);
script_execute(scr_nuke);
instance_create(x+6,y+15,obj_harmlessexplosion);
instance_create(x,y,obj_nuke);
}
else{
    if (overload==7)
        global.topmessage="NANOWEAPON TEMPORARILY JAMMED";
    else
        global.topmessage="INSUFFICIENT AMMUNITION";
    global.erasetop=0;
    }
}
//--------------------
//RESONANCE REFLECTOR
//--------------------
if (global.weapon == 13){
scr_sound("wea_reso");
scr_firesprite();
scr_nextfv();
alarm[2]=120;
reloader=120;
reloading=1;
if (!shredder){
    xadjust=0;
    yadjust=0;
    }
instance_create(x+6+xadjust,y+15+yadjust,obj_reflector);
}
//--------------------
//HYPER PULSE
//--------------------
if (global.weapon == 14){
if (global.ammo6 > 0){
scr_firesprite();
scr_nextfv();
alarm[2]=1;
reloader=1000;
reloading=1;
firingpulse=2;
global.ammo6part+=1.5;
if (global.ammo6part >= 24){
global.ammo6part=0;
global.ammo6-=1;
}
if (global.facing == 0){
repeat(4){
    tempid=instance_create(x+20+xadjust,y+13+yadjust+(random(21)-10),obj_pulse);
    tempid.speed=30+random(5);
    tempid.direction=random(20)+170;
    tempid.hyper=1;
    tempid.image_index=14;
    }
    }
if (global.facing == 1){
repeat(4){
    tempid = instance_create(x-7+xadjust,y+13+yadjust+(random(21)-10),obj_pulse);
    tempid.speed = 30+random(5);
    tempid.direction = random(20)-10;
    tempid.hyper = 1;
    tempid.image_index = 7;
    }
    }
}
else{
    global.topmessage="INSUFFICIENT AMMUNITION";
    global.erasetop=0;
    }
}
//--------------------
//PLASMA CANNON
//--------------------
if (global.weapon == 15){
if (global.ammo7 > 1){
scr_sound("wea_plas");
scr_shakescreen(3);
scr_firesprite();
scr_nextfv();
alarm[2]=75;
reloader=75;
reloading=1;
global.ammo7-=2;
if (global.facing == 0)
    instance_create(x+2+xadjust,y+13+yadjust,obj_plasmatrace);
if (global.facing == 1)
    instance_create(x+11+xadjust,y+13+yadjust,obj_plasmatrace);
}
else{
    global.topmessage="INSUFFICIENT AMMUNITION";
    global.erasetop=0;
    }
}
//--------------------
//VELOCITHOR V2-10
//--------------------
if (global.weapon == 16){
if (global.ammo8 > 0){
scr_firesprite();
scr_nextfv();
alarm[2]=2;
reloader=1000;
reloading=1;
global.ammo8part+=3;
if (global.ammo8part>9){
global.ammo8part=0;
global.ammo8-=1;
}
if (global.facing==0){
    instance_create(x-16+xadjust,y+14+yadjust,obj_thortrace);
    repeat(2){
        tempid=instance_create(x-14+xadjust,y+14+yadjust,obj_smokepoint);
        tempid.direction=random(20);
        tempid.speed=20+random(20);
        tempid.massive=1;
        tempid.alarm[0]=8+random(5);
        }
    instance_create(x-1+xadjust,y+14+yadjust,obj_thorspark);
    }
if (global.facing==1){
    instance_create(x+31+xadjust,y+14+yadjust,obj_thortrace);
    repeat(2){
        tempid=instance_create(x+27+xadjust,y+14+yadjust,obj_smokepoint);
        tempid.direction=random(20)+160;
        tempid.speed=20+random(20);
        tempid.massive=1;
        tempid.alarm[0]=8+random(5);
        }
    instance_create(x+15+xadjust,y+14+yadjust,obj_thorspark);
    }
script_execute(scr_shakescreen,2);
}
else{
    global.topmessage="INSUFFICIENT AMMUNITION";
    global.erasetop=0;
    }
}
//--------------------
//BANANA GUN
//--------------------
if (global.weapon==17){
if (global.ammo2>0 && global.ammo3>0 && global.ammo4>0 && global.ammo6>0 && global.ammo7>0 && global.ammo8>0){
scr_firesprite();
scr_nextfv();
scr_sound("wea_banana");
alarm[2]=120;
reloader=120;
reloading=1;
global.ammo2-=1;
global.ammo3-=1;
global.ammo4-=1;
global.ammo6-=1;
global.ammo7-=1;
global.ammo8-=1;
if (global.facing == 0){
    tempid=instance_create(x+2+xadjust,y+13+shredderadjust,obj_banana);
    tempid.speed=10;
    tempid.direction=165;
    tempid.image_speed=-1;
    }
if (global.facing == 1){
    tempid=instance_create(x+11+xadjust,y+13+shredderadjust,obj_banana);
    tempid.speed=10;
    tempid.direction=15;
    }
}
else{
    global.topmessage="INSUFFICIENT AMMUNITION";
    global.erasetop=0;
    }
}
//-----------------------
//NULL DRIVER PROTOTYPE
//-----------------------
if (global.weapon==20){
if (global.really){
    global.topmessage="The Null driver cannot be fired on reallyjoel's dad difficulty";
    global.erasetop=0;
    }
else{
if (global.ammo2>=0){
    obj_sabot.firednulldriver=1;
    scr_sound("glo_cracktick");
    alarm[2]=30;
    reloader=30;
    reloading=1;
    global.seconds=3599;
    global.points=99;
    if (global.assimilatelevel<10)
        maxammo=global.assimilatebase+global.assimilatelevel*global.assimilatesize;
    else
        maxammo=99;
    global.ammo2=maxammo;
    global.ammo3=maxammo;
    global.ammo4=maxammo;
    global.ammo6=maxammo;
    global.ammo7=maxammo;
    global.ammo8=maxammo;
    instance_activate_object(obj_warpback);
    with (obj_warpback)
        instance_destroy();
    with (all){
        temprand=random(1);
        if (temprand<0.3 && !iji && hp<=0 && visible){
            if (mask_index==-1)
                tempmask=sprite_index;
            else
                tempmask=-1;
            spr1=floor(random(920));
            while (!sprite_exists(spr1))
                spr1=floor(random(920));
            sprite_index=spr1;
            if (tempmask!=-1)
                mask_index=tempmask;
            image_single=random(32);
            }
        }
    repeat(50){
        backg1=floor(random(150));
        backg2=floor(random(150));
        while (!background_exists(backg1)){backg1=floor(random(150));}
        while (!background_exists(backg2)){backg2=floor(random(150));}
        background_assign(backg1,backg2);
        }
    with (obj_alliedenemy){
        temprand=floor(random(10));
        if (enemytype<=15 && !krotera && !asha && !iosa && !ansaksie && !proxima && !nullresistant){
            if (temprand==0){
                repeat(5){
                    tempid=instance_create(bbox_left+((bbox_right-bbox_left)/2), bbox_top+((bbox_bottom-bbox_top)/2), obj_paper);
                    with (tempid){
                        cyc=0;
                        state=1;
                        y-=2;
                        vspeed=-(3+random(5));
                        hspeed=-6+random(12);
                        maxspeed=1+random(0.5);
                        gr=maxspeed*0.1;
                        sprite_index=spr_paperfly;
                        image_index=floor(random(18));
                        image_speed=0.4+random(0.4);
                        }
                    }
                instance_destroy();
                }
            else if (temprand==1){
                instance_create(bbox_left+((bbox_right-bbox_left)/2), bbox_top+((bbox_bottom-bbox_top)/2), obj_screen);
                instance_destroy();
                }
            else if (temprand==2){
                tempid=instance_create(bbox_left+((bbox_right-bbox_left)/2)-32, bbox_top+((bbox_bottom-bbox_top)/2), obj_crackbox);
                tempid.security=1;
                temprand=floor(random(4))
                if (temprand==0)
                    tempid.prize=obj_skysmasher;
                else if (temprand==1)
                    tempid.prize=obj_emptyshredder;
                else if (temprand==2)
                    tempid.prize=obj_blit;
                else if (temprand==3)
                    tempid.prize=obj_dan;
                instance_destroy();
                }
            else if (temprand==3){
                (instance_create(bbox_left+((bbox_right-bbox_left)/2)-16, bbox_top+((bbox_bottom-bbox_top)/2)-32, obj_terminal)).trigger=41;
                instance_destroy();
                }
            else if (temprand==4){
                repeat(30){
                    tempid=instance_create(bbox_left+((bbox_right-bbox_left)/2)-16, bbox_top+((bbox_bottom-bbox_top)/2)-32, obj_shell);
                    tempid.direction=random(360);
                    tempid.speed=random(25);
                    }
                instance_destroy();
                }
            else{
                (instance_create(bbox_left+((bbox_right-bbox_left)/2), bbox_top+((bbox_bottom-bbox_top)/2), obj_shockexplosion)).ijis=1;
                instance_create(bbox_left+((bbox_right-bbox_left)/2), bbox_top+((bbox_bottom-bbox_top)/2), obj_explosioncenter);
                }
            }
        else{
            if (enemytype!=16 || vulnerable){
                (instance_create(bbox_left+((bbox_right-bbox_left)/2), bbox_top+((bbox_bottom-bbox_top)/2), obj_shockexplosion)).ijis=1;
                instance_create(bbox_left+((bbox_right-bbox_left)/2), bbox_top+((bbox_bottom-bbox_top)/2), obj_explosioncenter);
                }
            }
        }
    with (obj_blit){
        instance_create(x,y,obj_komatosplat);
        instance_create(x,y-8,obj_xp4);
        instance_create(x-8,y-8,obj_xp4);
        instance_create(x+8,y-8,obj_xp4);
        instance_create(x-4,y-16,obj_xp4);
        instance_create(x+4,y-16,obj_xp4);
        instance_destroy();
        scr_sound("glo_reflect")
        }
    with (obj_turret)
        weapon=7;
    with (obj_shape){
        bone+=1;
        if (bone>9)
            bone=0;
        }
    with (obj_tor){
        if (hp>2 && vulnerable)
            hp=floor(hp*0.66);
        }
    obj_tor.wty=30;
    }
else{
    global.topmessage="INSUFFICIENT AMMUNITION";
    global.erasetop=0;
    }
}
}
//--------------------
//MASSACRE
//--------------------
if (global.weapon==21){
if (global.hp>1 || global.armor>51){
global.armor-=50;
if (global.armor<=1){
    global.armor+=100;
    global.hp-=1;
    }
obj_sabot.firedmassacre=1;
scr_sound("wea_nuke");
scr_sound("wea_plas");
scr_firesprite();
scr_nextfv();
alarm[2]=75;
reloader=75;
reloading=1;
(instance_create(x,y,obj_whiteblanket)).alarm[0]=2;
scr_shakescreen(4);
if (global.facing==1){
    repeat(6)
        (instance_create(x+20,y+15,obj_massprojectile)).dir=1;
    }
if (global.facing==0){
    repeat(6)
        (instance_create(x-10,y+15,obj_massprojectile)).dir=0;
    }
}
else{
    global.topmessage="INSUFFICIENT ARMOR";
    global.erasetop=0;
    }
}
//--------------------
//MPPB NEUTRALIZER
//--------------------
if (global.weapon == 4 && global.passive){
    if (global.ammo4 > 2){
        scr_sound("exp_mpfb");
        scr_sound("glo_electrocute");
        scr_firesprite();
        scr_nextfv();
        alarm[2]=120;
        reloader=120;
        reloading=1;
        global.ammo4-=3;
        script_execute(scr_shakescreen,3);
        script_execute(scr_neutralizer);
        (instance_create(x,y,obj_neutralizer)).maxcycle=50+floor(10*global.attacklevel);
        }
    else{
        if (overload==7)
            global.topmessage="NANOWEAPON TEMPORARILY JAMMED";
        else
            global.topmessage="INSUFFICIENT AMMUNITION";
        global.erasetop=0;
        }
    }
//--------------------
//SHOCK BARRIER
//--------------------
if (global.weapon == 7 && global.passive){
if (global.ammo7 > 0){
    global.ammo7-=1;
    scr_sound("ext_barrier");
    scr_firesprite();
    scr_nextfv();
    alarm[2]=60;
    reloader=60;
    reloading=1;
    if (!shredder){
        xadjust=0;
        yadjust=0;
        }
    with (obj_shockbarrier){
        instance_create(x,y,obj_barrierexplo);
        //scr_sound("ext_barrierexplo")
        instance_destroy();
        }
    if (global.facing==0){
        tempid=instance_create(x+6-32+xadjust,y+29+yadjust,obj_shockbarrier);
        with (tempid){
            repeat(8){
                if (!place_free(x,y) || place_meeting(x,y,obj_meta))
                    x+=4;
                }
            }
        instance_create(obj_shockbarrier.x,obj_shockbarrier.y,obj_barrierexplo);
        }
    else{
        tempid=instance_create(x+6+32+xadjust,y+29+yadjust,obj_shockbarrier);
        with (tempid){
            repeat(8){
                if (!place_free(x,y) || place_meeting(x,y,obj_meta))
                    x-=4;
                }
            }
        instance_create(obj_shockbarrier.x,obj_shockbarrier.y,obj_barrierexplo);
        }
    }
else{
    global.topmessage="INSUFFICIENT AMMUNITION";
    global.erasetop=0;
    }
}
//-----------------------------
//CHAIN FRACTAL INJECTION SHELL
//-----------------------------
if (global.weapon == 8 && global.passive && obj_chaintracer.drawme){
if (global.ammo8 > 2){
global.ammo8-=3;
scr_sound("glo_reflect");
scr_sound("glo_cracktick");
scr_firesprite();
scr_nextfv();
alarm[2]=60;
reloader=60;
reloading=1;
tempid=instance_create(obj_chaintracer.x,obj_chaintracer.y,obj_barrierexplo);
tempid.sprite_index=spr_chainproj;
tempid.alarm[0]=8;
targetid=obj_chaintracer.targetid;
ignorenoammomsg=30;
if (obj_chaintracer.targettype==0){
    global.ignorestation=90;
    global.topmessage="Injection failed - no target found";
    global.erasetop=0;
    }
else if (obj_chaintracer.targettype==1){
    if (targetid.angry==0 && targetid.dead==0){
        tempid=instance_create(obj_chaintracer.x,obj_chaintracer.y,obj_visionchecke)
        tempid.direction=0;
        tempid.speed=16;
        tempid=instance_create(obj_chaintracer.x,obj_chaintracer.y,obj_visionchecke)
        tempid.direction=180;
        tempid.speed=16;
        }
    if (targetid.dead){
        global.ignorestation=90;
        global.topmessage="Unable to connect to nanofield; subject is dead";
        global.erasetop=0;
        }
    else if (global.cracklevel>=targetid.security && targetid.enemytype!=20){
        if (targetid.cracked){
            global.ignorestation=90;
            global.topmessage="Subject has already been cracked";
            global.erasetop=0;
            }
        else{
            targetid.crackmark=1;
            scr_cracksuccess();
            }
        }
    else{
        scr_sound("glo_crackfail");
        global.ignorestation=90;
        global.erasetop=0;
        if (targetid.krotera==1) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack Elite Krotera";
        else if (targetid.asha==1) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack Assassin Asha";
        else if (targetid.enemytype==17) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack Sentinel Proxima";
        else if (targetid.enemytype==14 && targetid.annihilatorbeta) global.topmessage="Unable to connect; subject is inactive";
        else if (targetid.enemytype==14 && targetid.iosa) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack Annihilator Iosa";
        else if (targetid.enemytype==20) global.topmessage="Injection shell rejected by target Nanofield";
        else if (targetid.enemytype==16) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack General Tor";
        else if (targetid.enemytype==0) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack a Tasen Scout";
        else if (targetid.enemytype==1 && targetid.golden) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack Yukabacera";
        else if (targetid.enemytype==1 && !targetid.golden) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack a Tasen Soldier";
        else if (targetid.enemytype==2) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack a Tasen Commander";
        else if (targetid.enemytype==3) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack a Tasen Elite";
        else if (targetid.enemytype==5) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack a Tasen Shredder";
        else if (targetid.enemytype==10) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack a Komato Trooper";
        else if (targetid.enemytype==11) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack a Komato Berserker";
        else if (targetid.enemytype==12) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack a Komato Assassin";
        else if (targetid.enemytype==13) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack a Komato Beast";
        else if (targetid.enemytype==14) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack a Komato Annihilator";
        else if (targetid.enemytype==15) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack a Komato Skysmasher";
        else if (targetid.enemytype==18) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack a Mobile power core";
        }
    }
else if (obj_chaintracer.targettype==2){
    if (targetid.angry==0){
        tempid=instance_create(obj_chaintracer.x,obj_chaintracer.y,obj_visionchecke)
        tempid.direction=0;
        tempid.speed=16;
        tempid=instance_create(obj_chaintracer.x,obj_chaintracer.y,obj_visionchecke)
        tempid.direction=180;
        tempid.speed=16;
        }
    if (global.cracklevel>=targetid.security){
        targetid.crackmark=1;
        scr_cracksuccess();
        }
    else{
        scr_sound("glo_crackfail");
        global.ignorestation=90;
        global.erasetop=0;
        if (targetid.weapon==0) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack a Machinegun Turret";
        else if (targetid.weapon==1) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack a Rocket Turret";
        else if (targetid.weapon==2) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack a Spread Turret";
        else if (targetid.weapon==3) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack a Devastator Turret";
        else if (targetid.weapon==4) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack a Shock Turret";
        else if (targetid.weapon==5) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack a Splinter Turret";
        else if (targetid.weapon==6) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack a Plasma Turret";
        else if (targetid.weapon==7) global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack a Corrupted Turret";
        }
    }
else if (obj_chaintracer.targettype==3 || obj_chaintracer.targettype==4){
    if (global.cracklevel>=targetid.security){
        targetid.crackmark=1;
        scr_cracksuccess();
        }
    else{
        scr_sound("glo_crackfail");
        global.ignorestation=90;
        global.erasetop=0;
        if (obj_chaintracer.targettype==3)
            global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack this Security box";
        else if (obj_chaintracer.targettype==4)
            global.topmessage="You need a Crack skill of "+string(targetid.security)+" to crack this Security door";
        }
    }
else if (obj_chaintracer.targettype==5){
    scr_sound("glo_crackfail");
    global.ignorestation=90;
    global.erasetop=0;
    if (targetid.dead)
        global.topmessage="Structure is inoperational";
    else
        global.topmessage="You need a Crack level of 30 to crack this structure";
    }
}
else{
    global.topmessage="INSUFFICIENT AMMUNITION";
    global.erasetop=0;
    }
}
//--------------------
//END OF WEAPONS
//--------------------
//Improved autoloading
if (alarm[2]>=30 && global.attacklevel==10){
    alarm[2]=floor(alarm[2]*0.8);
    reloader=alarm[2];
    }
}
}
}
}//(indentation on vacation)
}
}
}
else{
    if (room==rom_sector1){
        global.topmessage="NANOWEAPON MALFUNCTION";
        global.erasetop=0;
        }
    }