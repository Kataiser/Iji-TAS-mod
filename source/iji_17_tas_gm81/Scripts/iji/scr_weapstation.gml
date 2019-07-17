//Weapon station
//There's no point in writing nice-looking new code for this
//game. Might as well hack everything the old-fashioned way.
if (global.weapstation>0){
    //Read
    global.erasetop=0;
    global.ignorestation=120;
    if (global.refreshpoke==1)
        global.topmessage="You are already using that weapon in the combination";
    else if (global.weapstation==1)
        global.topmessage="Choose the first weapon in the combination";
    else
        global.topmessage="Choose the second weapon in the combination";
    //Abort
    if (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_enter)){
        keyboard_clear(ord("Z"));
        keyboard_clear(ord("X"));
        keyboard_clear(vk_enter);
        global.ignoreall=0;
        global.weapstation=0;
        scr_sound("glo_menumove")
        instance_activate_object(obj_weapstation);
        with (obj_weapstation)
            touchstation=0;
        global.erasetop=0;
        global.topmessage="Disconnected from Nanoweapon station";
        global.ignorestation=120;
        }
    //Navigate
    else if (keyboard_check_pressed(vk_up)){
        if (global.weappoke==5){
            global.weappoke=1;
            global.refreshpoke=0;
            scr_sound("glo_menumove");
            }
        else if (global.weappoke==6){
            if (global.weapon2)
                global.weappoke=2;
            else
                global.weappoke=1;
            global.refreshpoke=0;
            scr_sound("glo_menumove");
            }
        else if (global.weappoke==7){
            if (global.weapon3)
                global.weappoke=3;
            else if (global.weapon2)
                global.weappoke=2;
            else if (global.weapon4)
                global.weappoke=4;
            else
                global.weappoke=1;
            global.refreshpoke=0;
            scr_sound("glo_menumove");
            }
        else if (global.weappoke==8){
            if (global.weapon4)
                global.weappoke=4;
            else if (global.weapon3)
                global.weappoke=3;
            else if (global.weapon2)
                global.weappoke=2;
            else
                global.weappoke=1;
            global.refreshpoke=0;
            scr_sound("glo_menumove");
            }
        }
    else if (keyboard_check_pressed(vk_down)){
        if (global.weappoke==1){
            if (global.weapon5 || global.weapon6 || global.weapon7 || global.weapon8){
                if (global.weapon5)
                    global.weappoke=5;
                else if (global.weapon6)
                    global.weappoke=6;
                else if (global.weapon7)
                    global.weappoke=7;
                else
                    global.weappoke=8;
                global.refreshpoke=0;
                scr_sound("glo_menumove");
                }
            }
        else if (global.weappoke==2){
            if (global.weapon5 || global.weapon6 || global.weapon7 || global.weapon8){
                if (global.weapon6)
                    global.weappoke=6;
                else if (global.weapon5)
                    global.weappoke=5;
                else if (global.weapon7)
                    global.weappoke=7;
                else
                    global.weappoke=8;
                global.refreshpoke=0;
                scr_sound("glo_menumove");
                }
            }
        else if (global.weappoke==3){
            if (global.weapon5 || global.weapon6 || global.weapon7 || global.weapon8){
                if (global.weapon7)
                    global.weappoke=7;
                else if (global.weapon6)
                    global.weappoke=6;
                else if (global.weapon8)
                    global.weappoke=8;
                else
                    global.weappoke=5;
                global.refreshpoke=0;
                scr_sound("glo_menumove");
                }
            }
        else if (global.weappoke==4){
            if (global.weapon5 || global.weapon6 || global.weapon7 || global.weapon8){
                if (global.weapon8)
                    global.weappoke=8;
                else if (global.weapon7)
                    global.weappoke=7;
                else if (global.weapon6)
                    global.weappoke=6;
                else
                    global.weappoke=5;
                global.refreshpoke=0;
                scr_sound("glo_menumove");
                }
            }
        }
    else if (keyboard_check_pressed(vk_left)){
        if (global.weappoke==2){
            global.weappoke=1;
            global.refreshpoke=0;
            scr_sound("glo_menumove");
            }
        else if (global.weappoke==3){
            if (global.weapon2)
                global.weappoke=2;
            else
                global.weappoke=1;
            global.refreshpoke=0;
            scr_sound("glo_menumove");
            }
        else if (global.weappoke==4){
            if (global.weapon3)
                global.weappoke=3;
            else if (global.weapon2)
                global.weappoke=2;
            else
                global.weappoke=1;
            global.refreshpoke=0;
            scr_sound("glo_menumove");
            }
        else if (global.weappoke==6){
            if (global.weapon5){
                global.weappoke=5;
                global.refreshpoke=0;
                scr_sound("glo_menumove");
                }
            }
        else if (global.weappoke==7){
            if (global.weapon5 || global.weapon6){
                if (global.weapon6)
                    global.weappoke=6;
                else
                    global.weappoke=5;
                global.refreshpoke=0;
                scr_sound("glo_menumove");
                }
            }
        else if (global.weappoke==8){
            if (global.weapon5 || global.weapon6 || global.weapon7){
                if (global.weapon7)
                    global.weappoke=7;
                else if (global.weapon6)
                    global.weappoke=6;
                else
                    global.weappoke=5;
                global.refreshpoke=0;
                scr_sound("glo_menumove");
                }
            }
        }
    else if (keyboard_check_pressed(vk_right)){
        if (global.weappoke==1){
            if (global.weapon2 || global.weapon3 || global.weapon4){
                if (global.weapon2)
                    global.weappoke=2;
                else if (global.weapon3)
                    global.weappoke=3;
                else
                    global.weappoke=4;
                global.refreshpoke=0;
                scr_sound("glo_menumove");
                }
            }
        else if (global.weappoke==2){
            if (global.weapon3 || global.weapon4){
                if (global.weapon3)
                    global.weappoke=3;
                else
                    global.weappoke=4;
                global.refreshpoke=0;
                scr_sound("glo_menumove");
                }
            }
        else if (global.weappoke==3){
            if (global.weapon4){
                global.weappoke=4;
                global.refreshpoke=0;
                scr_sound("glo_menumove");
                }
            }
        else if (global.weappoke==5){
            if (global.weapon6 || global.weapon7 || global.weapon8){
                if (global.weapon6)
                    global.weappoke=6;
                else if (global.weapon7)
                    global.weappoke=7;
                else
                    global.weappoke=8;
                global.refreshpoke=0;
                scr_sound("glo_menumove");
                }
            }
        else if (global.weappoke==6){
            if (global.weapon7 || global.weapon8){
                if (global.weapon7)
                    global.weappoke=7;
                else
                    global.weappoke=8;
                global.refreshpoke=0;
                scr_sound("glo_menumove");
                }
            }
        else if (global.weappoke==7){
            if (global.weapon8){
                global.weappoke=8;
                global.refreshpoke=0;
                scr_sound("glo_menumove");
                }
            }
        }
    //Use
    else if (keyboard_check_pressed(ord("C"))){
        if (global.weapstation==1){
            global.tempwsweap1=global.weappoke;
            global.weapstation=2;
            global.refreshpoke=0;
            with (obj_weapstation){
                if (touchstation)
                    obj_weapstation.weap1=global.weappoke;
                }
            scr_sound("glo_selectweapon");
            }
        else if (global.weapstation==2){
            if (global.weappoke==global.tempwsweap1){
                global.refreshpoke=1;
                scr_sound("glo_crackfail");
                }
            else{
                global.weapstation=3;
                global.refreshpoke=0;
                with (obj_weapstation){
                    if (touchstation)
                        obj_weapstation.weap2=global.weappoke;
                    }
                scr_sound("glo_selectweapon");
                }
            }
        }
    }