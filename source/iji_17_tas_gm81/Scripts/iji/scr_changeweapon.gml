//Change weapon
//Argument0 is the weapon number
//Argument1 to always allow weapon change
if (instance_number(obj_iji)==1 && !obj_sabot.playinghero3d && !obj_sabot.pause && !global.horse){
if (!global.ignoreall || place_meeting(obj_iji.x,obj_iji.y+64,obj_lift) || argument1==1 || obj_iji.alwayschangeweapon){
prevweapon=global.weapon;
//You have the base weapon you claim to have
if ((argument0 == 1) ||
(argument0 == 2 && global.weapon2) ||
(argument0 == 3 && global.weapon3) ||
(argument0 == 4 && global.weapon4) ||
(argument0 == 5 && global.weapon5) ||
(argument0 == 6 && global.weapon6) ||
(argument0 == 7 && global.weapon7) ||
(argument0 == 8 && global.weapon8) ||
(argument0 == 9 && global.weapon17 && global.weapon!=17 && !global.passive) ||
(argument0 == 10 && global.weapon20 && global.weapon!=20 && !global.passive) ||
(argument0 == 10 && global.weapon21 && global.weapon!=21 && !global.passive)){
//You already have the base weapon equipped, but not the superversion
if ((global.weapon==1 && argument0==1 && global.weapon9 && !global.passive) ||
(global.weapon==2 && argument0==2 && global.weapon10 && !global.passive) ||
(global.weapon==3 && argument0==3 && global.weapon11 && !global.passive) ||
(global.weapon==4 && argument0==4 && global.weapon12 && !global.passive) ||
(global.weapon==5 && argument0==5 && global.weapon13 && !global.passive) ||
(global.weapon==6 && argument0==6 && global.weapon14 && !global.passive) ||
(global.weapon==7 && argument0==7 && global.weapon15 && !global.passive) ||
(global.weapon==8 && argument0==8 && global.weapon16 && !global.passive) ||
(global.weapon==0 && argument0!=0) ||
(global.weapon==1 && argument0!=1) ||
(global.weapon==2 && argument0!=2) ||
(global.weapon==3 && argument0!=3) ||
(global.weapon==4 && argument0!=4) ||
(global.weapon==5 && argument0!=5) ||
(global.weapon==6 && argument0!=6) ||
(global.weapon==7 && argument0!=7) ||
(global.weapon==8 && argument0!=8) ||
global.weapon==9 || global.weapon==10 || global.weapon==11 ||
global.weapon==12 || global.weapon==13 || global.weapon==14 ||
global.weapon==15 || global.weapon==16 || global.weapon==17 || global.weapon==20 || global.weapon==21){

    obj_iji.reloading=1;
    obj_iji.alarm[2]=30;
    obj_iji.reloader=30;
    obj_weapon1.image_single=0+(global.weapon9*2);
    obj_weapon2.image_single=0+(global.weapon10*2);
    obj_weapon3.image_single=0+(global.weapon11*2);
    obj_weapon4.image_single=0+(global.weapon12*2);
    obj_weapon5.image_single=0+(global.weapon13*2);
    obj_weapon6.image_single=0+(global.weapon14*2);
    obj_weapon7.image_single=0+(global.weapon15*2);
    obj_weapon8.image_single=0+(global.weapon16*2);
    if (argument0==1){
        obj_weapon1.image_single=1+(global.weapon9*2);
        if (global.weapon9==1 && global.weapon==1){
            global.weapon=9;
            obj_weapon1.image_single=4;
            obj_weapon2.image_single=1+(global.weapon10*2);
            }
        else{
            global.weapon=1;
            if (global.passive){
                obj_iji.alarm[2]=90;
                obj_iji.reloader=90;
                }
            }
        }
    if (argument0==2){
        obj_weapon2.image_single=1+(global.weapon10*2);
        if (global.weapon10==1 && global.weapon==2){
            global.weapon=10;
            obj_weapon2.image_single=4;
            }
        else
            global.weapon=2;
        }
    if (argument0==3){
        obj_weapon3.image_single=1+(global.weapon11*2);
        obj_iji.alarm[2]=60;
        obj_iji.reloader=60;
        if (global.weapon11==1 && global.weapon==3){
            global.weapon=11;
            obj_weapon3.image_single=4;
            obj_iji.alarm[2]=90;
            obj_iji.reloader=90;
            }
        else{
            global.weapon=3;
            if (global.passive){
                obj_iji.alarm[2]=90;
                obj_iji.reloader=90;
                }
            }
        }
    if (argument0==4){
        obj_weapon4.image_single=1+(global.weapon12*2);
        obj_iji.alarm[2]=90;
        obj_iji.reloader=90;
        if (global.weapon12==1 && global.weapon==4){
            global.weapon=12;
            obj_weapon4.image_single=4;
            }
        else{
            global.weapon=4;
            if (global.passive){
                obj_iji.alarm[2]=120;
                obj_iji.reloader=120;
                }
            }
        }
    if (argument0==5){
        obj_weapon5.image_single=1+(global.weapon13*2);
        obj_iji.alarm[2]=120;
        obj_iji.reloader=120;
        if (global.weapon13==1 && global.weapon==5){
            global.weapon=13;
            obj_weapon5.image_single=4;
            }
        else{
            global.weapon=5;
            }
        }
    if (argument0==6){
        obj_weapon6.image_single=1+(global.weapon14*2);
        if (global.weapon14==1 && global.weapon==6){
            global.weapon=14;
            obj_weapon6.image_single=4;
            }
        else
            global.weapon=6;
        }
    if (argument0==7){
        obj_weapon7.image_single=1+(global.weapon15*2);
        obj_iji.alarm[2]=60;
        obj_iji.reloader=60;
        if (global.weapon15==1 && global.weapon==7){
            global.weapon=15;
            obj_iji.alarm[2]=75;
            obj_iji.reloader=75;
            obj_weapon7.image_single=4;
            }
        else{
            global.weapon=7;
            if (global.passive){
                obj_iji.alarm[2]=60;
                obj_iji.reloader=60;
                }
            }
        }
    if (argument0==8){
        obj_weapon8.image_single=1+(global.weapon16*2);
        if (global.weapon16==1 && global.weapon==8){
            global.weapon=16;
            obj_weapon8.image_single=4;
            }
        else{
            global.weapon=8;
            if (global.passive){
                obj_iji.alarm[2]=60;
                obj_iji.reloader=60;
                }
            }
        }
    if (argument0==9){
        obj_iji.alarm[2]=120;
        obj_iji.reloader=120;
        global.weapon=17;
        obj_weapon1.image_single=1+(global.weapon9*2);
        obj_weapon2.image_single=1+(global.weapon10*2);
        obj_weapon3.image_single=1+(global.weapon11*2);
        obj_weapon4.image_single=1+(global.weapon12*2);
        obj_weapon5.image_single=1+(global.weapon13*2);
        obj_weapon6.image_single=1+(global.weapon14*2);
        obj_weapon7.image_single=1+(global.weapon15*2);
        obj_weapon8.image_single=1+(global.weapon16*2);
        }
    if (argument0==10){
        if (global.weapon21 && global.weapon!=21){
            global.weapon=21;
            obj_iji.alarm[2]=75;
            obj_iji.reloader=75;
            }
        else if (global.weapon20){
            obj_iji.alarm[2]=30;
            obj_iji.reloader=30;
            global.weapon=20;
            }
        obj_weapon1.image_single=0+(global.weapon9*2);
        obj_weapon2.image_single=0+(global.weapon10*2);
        obj_weapon3.image_single=0+(global.weapon11*2);
        obj_weapon4.image_single=0+(global.weapon12*2);
        obj_weapon5.image_single=0+(global.weapon13*2);
        obj_weapon6.image_single=0+(global.weapon14*2);
        obj_weapon7.image_single=0+(global.weapon15*2);
        obj_weapon8.image_single=0+(global.weapon16*2);
        }
    }
}
//Change sound
if (prevweapon!=global.weapon){
    //No sound while Tor appears
    if (room!=rom_sector15 || !obj_iji.alwayschangeweapon)
        scr_sound("glo_selectweapon");
    }
}

//Weapstation
else if (global.weapstation==1){
    if (argument0==1 || (argument0==2 && global.weapon2) || (argument0==3 && global.weapon3) || (argument0==4 && global.weapon4) || (argument0==5 && global.weapon5) || (argument0==6 && global.weapon6) || (argument0==7 && global.weapon7) || (argument0==8 && global.weapon8)){
        global.weapstation=2;
        obj_weapstation.weap1=argument0;
        global.tempwsweap1=argument0;
        scr_sound("glo_selectweapon");
        }
    }
else if (global.weapstation==2){
    if ((argument0==1 && obj_weapstation.weap1!=1) || (argument0==2 && global.weapon2 && obj_weapstation.weap1!=2) || (argument0==3 && global.weapon3 && obj_weapstation.weap1!=3) || (argument0==4 && global.weapon4 && obj_weapstation.weap1!=4) || (argument0==5 && global.weapon5 && obj_weapstation.weap1!=5) || (argument0==6 && global.weapon6 && obj_weapstation.weap1!=6) || (argument0==7 && global.weapon7 && obj_weapstation.weap1!=7) || (argument0==8 && global.weapon8 && obj_weapstation.weap1!=8)){
        global.weapstation=3;
        obj_weapstation.weap2=argument0;
        global.ignorestation=150;
        scr_sound("glo_selectweapon");
        }
    }
}