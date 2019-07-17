if (global.hp>0 && !shredder){

if (global.assimilatelevel<10)
    maxammo=global.assimilatebase+global.assimilatelevel*global.assimilatesize;
else
    maxammo=99;
denytext=0;
if (string_copy(global.topmessage,1,6)=="Nano +")
    denytext=1;

//Pick up ammo
if (other.sprite_index == spr_ammo1){
    if (global.ammo2 < maxammo){
        scr_sound("glo_pickup");
        with (other){
            script_execute(scr_pickupflash,16,16,1);
            instance_destroy();
            }
        if (global.tasenlevel!=10)
            global.ammo2 += 4;
        else
            global.ammo2 += 5;
        if (!global.noitemtext){
            if (global.weapon2){
                if (global.tasenlevel!=10)
                    global.topmessage="Machinegun ammo +4";
                else
                    global.topmessage="Machinegun ammo +5";
                global.erasetop=0;
                }
            else{
                if (global.tasenlevel!=10)
                    global.topmessage="Unknown ammo +4";
                else
                    global.topmessage="Unknown ammo +5";
                global.erasetop=0;
                }
            }
        if (global.ammo2 > maxammo){
            global.ammo2 = maxammo;
            }
        }
    else if (global.ignorestation==0 && !place_meeting(x,y,obj_station) && !denytext){
        global.erasetop=0;
        if (global.weapon2)
            global.topmessage="Machinegun ammo full"
        else
            global.topmessage="Unknown ammo full"
        }
    }
if (other.sprite_index == spr_ammo2){
    if (global.ammo2 < maxammo){
        scr_sound("glo_pickup");
        with (other){
            script_execute(scr_pickupflash,16,16,2);
            instance_destroy();
            }
        if (global.tasenlevel!=10)
            global.ammo2 += 10;
        else
            global.ammo2 += 11;
        if (!global.noitemtext){
            if (global.weapon2){
                if (global.tasenlevel!=10)
                    global.topmessage="Machinegun ammo +10";
                else
                    global.topmessage="Machinegun ammo +11";
                global.erasetop=0;
                }
            else{
                if (global.tasenlevel!=10)
                    global.topmessage="Unknown ammo +10";
                else
                    global.topmessage="Unknown ammo +11";
                global.erasetop=0;
                }
            }
        if (global.ammo2 > maxammo){
            global.ammo2 = maxammo;
            }
        }
    else if (global.ignorestation==0 && !place_meeting(x,y,obj_station) && !denytext){
        global.erasetop=0;
        if (global.weapon2)
            global.topmessage="Machinegun ammo full"
        else
            global.topmessage="Unknown ammo full"
        }
    }
if (other.sprite_index == spr_ammo3){
    if (global.ammo3 < maxammo){
        scr_sound("glo_pickup");
        with (other){
            script_execute(scr_pickupflash,16,16,1);
            instance_destroy();
            }
        if (global.tasenlevel!=10)
            global.ammo3 += 1;
        else
            global.ammo3 += 2;
        if (!global.noitemtext){
            if (global.weapon3){
                if (global.tasenlevel!=10)
                    global.topmessage="Launcher ammo +1";
                else
                    global.topmessage="Launcher ammo +2";
                global.erasetop=0;
                }
            else{
                if (global.tasenlevel!=10)
                    global.topmessage="Unknown ammo +1";
                else
                    global.topmessage="Unknown ammo +2";
                global.erasetop=0;
                }
            }
        if (global.ammo3 > maxammo){
            global.ammo3 = maxammo;
            }
        }
    else if (global.ignorestation==0 && !place_meeting(x,y,obj_station) && !denytext){
        global.erasetop=0;
        if (global.weapon3)
            global.topmessage="Launcher ammo full"
        else
            global.topmessage="Unknown ammo full"
        }
    }
if (other.sprite_index == spr_ammo4){
    if (global.ammo3 < maxammo){
        scr_sound("glo_pickup");
        with (other){
            script_execute(scr_pickupflash,16,16,2);
            instance_destroy();
            }
        if (global.tasenlevel!=10)
            global.ammo3 += 3;
        else
            global.ammo3 += 4;
        if (!global.noitemtext){
            if (global.weapon3){
                if (global.tasenlevel!=10)
                    global.topmessage="Launcher ammo +3";
                else
                    global.topmessage="Launcher ammo +4";
                global.erasetop=0;
                }
            else{
                if (global.tasenlevel!=10)
                    global.topmessage="Unknown ammo +3";
                else
                    global.topmessage="Unknown ammo +4";
                global.erasetop=0;
                }
            }
        if (global.ammo3 > maxammo){
            global.ammo3 = maxammo;
            }
        }
    else if (global.ignorestation==0 && !place_meeting(x,y,obj_station) && !denytext){
        global.erasetop=0;
        if (global.weapon3)
            global.topmessage="Launcher ammo full"
        else
            global.topmessage="Unknown ammo full"
        }
    }
if (other.sprite_index == spr_ammo5){
    if (global.ammo4 < maxammo){
        scr_sound("glo_pickup");
        with (other){
            script_execute(scr_pickupflash,16,16,1);
            instance_destroy();
            }
        if (global.tasenlevel!=10)
            global.ammo4 += 1;
        else
            global.ammo4 += 2;
        if (!global.noitemtext){
            if (global.weapon4){
                if (global.tasenlevel!=10)
                    global.topmessage="MPFB ammo +1";
                else
                    global.topmessage="MPFB ammo +2";
                global.erasetop=0;
                }
            else{
                if (global.tasenlevel!=10)
                    global.topmessage="Unknown ammo +1";
                else
                    global.topmessage="Unknown ammo +2";
                global.erasetop=0;
                }
            }
        if (global.ammo4 > maxammo){
            global.ammo4 = maxammo;
            }
        }
    else if (global.ignorestation==0 && !place_meeting(x,y,obj_station) && !denytext){
        global.erasetop=0;
        if (global.weapon4)
            global.topmessage="MPFB ammo full"
        else
            global.topmessage="Unknown ammo full"
        }
    }
if (other.sprite_index == spr_ammo6){
    if (global.ammo4 < maxammo){
        scr_sound("glo_pickup");
        with (other){
            script_execute(scr_pickupflash,16,16,2);
            instance_destroy();
            }
        if (global.tasenlevel!=10)
            global.ammo4 += 3;
        else
            global.ammo4 += 4;
        if (!global.noitemtext){
            if (global.weapon4){
                if (global.tasenlevel!=10)
                    global.topmessage="MPFB ammo +3";
                else
                    global.topmessage="MPFB ammo +4";
                global.erasetop=0;
                }
            else{
                if (global.tasenlevel!=10)
                    global.topmessage="Unknown ammo +3";
                else
                    global.topmessage="Unknown ammo +4";
                global.erasetop=0;
                }
            }
        if (global.ammo4 > maxammo){
            global.ammo4 = maxammo;
            }
        }
    else if (global.ignorestation==0 && !place_meeting(x,y,obj_station) && !denytext){
        global.erasetop=0;
        if (global.weapon4)
            global.topmessage="MPFB ammo full"
        else
            global.topmessage="Unknown ammo full"
        }
    }
if (other.sprite_index == spr_ammo7){
    if (global.ammo6 < maxammo){
        scr_sound("glo_pickup");
        with (other){
            script_execute(scr_pickupflash,16,16,1);
            instance_destroy();
            }
        if (global.komatolevel!=10)
            global.ammo6 += 4;
        else
            global.ammo6 += 5;
        if (!global.noitemtext){
            if (global.weapon6){
                if (global.komatolevel!=10)
                    global.topmessage="Pulse ammo +4";
                else
                    global.topmessage="Pulse ammo +5";
                global.erasetop=0;
                }
            else{
                if (global.komatolevel!=10)
                    global.topmessage="Unknown ammo +4";
                else
                    global.topmessage="Unknown ammo +5";
                global.erasetop=0;
                }
            }
        if (global.ammo6 > maxammo){
            global.ammo6 = maxammo;
            }
        }
    else if (global.ignorestation==0 && !place_meeting(x,y,obj_station) && !denytext){
        global.erasetop=0;
        if (global.weapon6)
            global.topmessage="Pulse ammo full"
        else
            global.topmessage="Unknown ammo full"
        }
    }
if (other.sprite_index == spr_ammo8){
    if (global.ammo6 < maxammo){
        scr_sound("glo_pickup");
        with (other){
            script_execute(scr_pickupflash,16,16,2);
            instance_destroy();
            }
        if (global.komatolevel!=10)
            global.ammo6 += 10;
        else
            global.ammo6 += 11;
        if (!global.noitemtext){
            if (global.weapon6){
                if (global.komatolevel!=10)
                    global.topmessage="Pulse ammo +10";
                else
                    global.topmessage="Pulse ammo +11";
                global.erasetop=0;
                }
            else{
                if (global.komatolevel!=10)
                    global.topmessage="Unknown ammo +10";
                else
                    global.topmessage="Unknown ammo +11";
                global.erasetop=0;
                }
            }
        if (global.ammo6 > maxammo){
            global.ammo6 = maxammo;
            }
        }
    else if (global.ignorestation==0 && !place_meeting(x,y,obj_station) && !denytext){
        global.erasetop=0;
        if (global.weapon6)
            global.topmessage="Pulse ammo full"
        else
            global.topmessage="Unknown ammo full"
        }
    }
if (other.sprite_index == spr_ammo9){
    if (global.ammo7 < maxammo){
        scr_sound("glo_pickup");
        with (other){
            script_execute(scr_pickupflash,16,16,1);
            instance_destroy();
            }
        if (global.komatolevel!=10)
            global.ammo7 += 1;
        else
            global.ammo7 += 2;
        if (!global.noitemtext){
            if (global.weapon7){
                if (global.komatolevel!=10)
                    global.topmessage="Shock ammo +1";
                else
                    global.topmessage="Shock ammo +2";
                global.erasetop=0;
                }
            else{
                if (global.komatolevel!=10)
                    global.topmessage="Unknown ammo +1";
                else
                    global.topmessage="Unknown ammo +2";
                global.erasetop=0;
                }
            }
        if (global.ammo7 > maxammo){
            global.ammo7 = maxammo;
            }
        }
    else if (global.ignorestation==0 && !place_meeting(x,y,obj_station) && !denytext){
        global.erasetop=0;
        if (global.weapon7)
            global.topmessage="Shock ammo full"
        else
            global.topmessage="Unknown ammo full"
        }
    }
if (other.sprite_index == spr_ammo10){
    if (global.ammo7 < maxammo){
        scr_sound("glo_pickup");
        with (other){
            script_execute(scr_pickupflash,16,16,2);
            instance_destroy();
            }
        if (global.komatolevel!=10)
            global.ammo7 += 3;
        else
            global.ammo7 += 4;
        if (!global.noitemtext){
            if (global.weapon7){
                if (global.komatolevel!=10)
                    global.topmessage="Shock ammo +3";
                else
                    global.topmessage="Shock ammo +4";
                global.erasetop=0;
                }
            else{
                if (global.komatolevel!=10)
                    global.topmessage="Unknown ammo +3";
                else
                    global.topmessage="Unknown ammo +4";
                global.erasetop=0;
                }
            }
        if (global.ammo7 > maxammo){
            global.ammo7 = maxammo;
            }
        }
    else if (global.ignorestation==0 && !place_meeting(x,y,obj_station) && !denytext){
        global.erasetop=0;
        if (global.weapon7)
            global.topmessage="Shock ammo full"
        else
            global.topmessage="Unknown ammo full"
        }
    }
if (other.sprite_index == spr_ammo11){
    if (global.ammo8 < maxammo){
        scr_sound("glo_pickup");
        with (other){
            script_execute(scr_pickupflash,16,16,1);
            instance_destroy();
            }
        if (global.komatolevel!=10)
            global.ammo8 += 4;
        else
            global.ammo8 += 5;
        if (!global.noitemtext){
            if (global.weapon8){
                if (global.komatolevel!=10)
                    global.topmessage="CFIS ammo +4";
                else
                    global.topmessage="CFIS ammo +5";
                global.erasetop=0;
                }
            else{
                if (global.komatolevel!=10)
                    global.topmessage="Unknown ammo +4";
                else
                    global.topmessage="Unknown ammo +5";
                global.erasetop=0;
                }
            }
        if (global.ammo8 > maxammo){
            global.ammo8 = maxammo;
            }
        }
    else if (global.ignorestation==0 && !place_meeting(x,y,obj_station) && !denytext){
        global.erasetop=0;
        if (global.weapon8)
            global.topmessage="CFIS ammo full"
        else
            global.topmessage="Unknown ammo full"
        }
    }
if (other.sprite_index == spr_ammo12){
    if (global.ammo8 < maxammo){
        scr_sound("glo_pickup");
        with (other){
            script_execute(scr_pickupflash,16,16,2);
            instance_destroy();
            }
        if (global.komatolevel!=10)
            global.ammo8 += 10;
        else
            global.ammo8 += 11;
        if (!global.noitemtext){
            if (global.weapon8){
                if (global.komatolevel!=10)
                    global.topmessage="CFIS ammo +10";
                else
                    global.topmessage="CFIS ammo +11";
                global.erasetop=0;
                }
            else{
                if (global.komatolevel!=10)
                    global.topmessage="Unknown ammo +10";
                else
                    global.topmessage="Unknown ammo +11";
                global.erasetop=0;
                }
            }
        if (global.ammo8 > maxammo){
            global.ammo8 = maxammo;
            }
        }
    else if (global.ignorestation==0 && !place_meeting(x,y,obj_station) && !denytext){
        global.erasetop=0;
        if (global.weapon8)
            global.topmessage="CFIS ammo full"
        else
            global.topmessage="Unknown ammo full"
        }
    }

}