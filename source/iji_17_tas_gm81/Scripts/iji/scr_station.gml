//Use station
if (!place_meeting(x,y,obj_alliedenemy)){
if (sprite_index!=spr_station_blank && sprite_index!=spr_levelstation_blank && sprite_index!=spr_readpaper){

//It's a levelstation
if (sprite_index==spr_levelstation){
    global.levelstation=1;
    global.levelpoke=0;
    global.ignoreall=1;
    global.erasetop=0;
    global.ignorestation=120;
    global.refreshpoke=0;
    touchstation=1;
    scr_sound("glo_crackbegin");
    }

//It's not a levelstation
//Depracated, but still exist in the game
else{
    if (global.points>0){
           global.points-=1;
       if (global.facing==1)
           instance_create(obj_iji.x-11,obj_iji.y-4,obj_ijiflash);
       if (global.facing==0){
           tempid=instance_create(obj_iji.x-19,obj_iji.y-4,obj_ijiflash);
           tempid.image_index=5;
           }
    if (sprite_index == spr_station_health){
        global.ignorestation=60;
        global.erasetop=0;
        global.healthlevel+=1;
        global.topmessage="Health level "+string(global.healthlevel);
        scr_sound("glo_pickup2");
        if (!obj_iji.hasrebooted && !global.suddendeath)
            global.hp+=2;
        if (global.healthlevel==10){
            global.ignoremessagescroll=30;
            instance_activate_object(obj_station);
            with (obj_station){
                if (sprite_index==spr_station_health){
                    sprite_index=spr_station_blank;
                    type=0;
                    }
                }
            global.textid="specialtrait1";
            script_execute(scr_beginmessage);
            with (obj_messagetext)
                script_execute(scr_specialmessages);
            }
        }
    if (sprite_index == spr_station_attack){
        global.ignorestation=60;
        global.erasetop=0;
        global.attacklevel += 1;
        global.topmessage="Attack level "+string(global.attacklevel);
        scr_sound("glo_pickup2");
        if (global.attacklevel == 10){
            global.ignoremessagescroll=30;
            instance_activate_object(obj_station);
            with (obj_station){
                if (sprite_index==spr_station_attack){
                    sprite_index=spr_station_blank;
                    type=1;
                    }
                }
            global.textid="specialtrait2";
            script_execute(scr_beginmessage);
            with (obj_messagetext)
                script_execute(scr_specialmessages);
            }
        }
    if (sprite_index == spr_station_assimilate){
        global.ignorestation=60;
        global.erasetop=0;
        global.assimilatelevel += 1;
        global.topmessage="Assimilate level "+string(global.assimilatelevel);
        scr_sound("glo_pickup2");
        if (global.assimilatelevel == 10){
            global.ignoremessagescroll=30;
            instance_activate_object(obj_station);
            with (obj_station){
                if (sprite_index==spr_station_assimilate){
                    sprite_index=spr_station_blank;
                    type=2;
                    }
                }
            global.textid="specialtrait3";
            script_execute(scr_beginmessage);
            with (obj_messagetext)
                script_execute(scr_specialmessages);
            }
        }
    if (sprite_index == spr_station_strength){
        global.ignorestation=60;
        global.erasetop=0;
        global.strengthlevel += 1;
        global.topmessage="Strength level "+string(global.strengthlevel);
        scr_sound("glo_pickup2");
        if (global.strengthlevel == 10){
            global.ignoremessagescroll=30;
            instance_activate_object(obj_station);
            with (obj_station){
                if (sprite_index==spr_station_strength){
                    sprite_index=spr_station_blank;
                    type=3;
                    }
                }
            global.textid="specialtrait4";
            script_execute(scr_beginmessage);
            with (obj_messagetext)
                script_execute(scr_specialmessages);
            }
        }
    if (sprite_index == spr_station_crack){
        global.ignorestation=60;
        global.erasetop=0;
        global.cracklevel += 1;
        global.topmessage="Crack level "+string(global.cracklevel);
        scr_sound("glo_pickup2");
        if (global.cracklevel == 10){
            global.ignoremessagescroll=30;
            instance_activate_object(obj_station);
            with (obj_station){
                if (sprite_index==spr_station_crack){
                    sprite_index=spr_station_blank;
                    type=4;
                    }
                }
            global.textid="specialtrait5";
            script_execute(scr_beginmessage);
            with (obj_messagetext)
                script_execute(scr_specialmessages);
            }
        }
    if (sprite_index == spr_station_tasen){
        global.ignorestation=60;
        global.erasetop=0;
        global.tasenlevel += 1;
        global.topmessage="Tasen level "+string(global.tasenlevel);
        scr_sound("glo_pickup2");
        if (global.tasenlevel == 10){
            global.ignoremessagescroll=30;
            instance_activate_object(obj_station);
            with (obj_station){
                if (sprite_index==spr_station_tasen){
                    sprite_index=spr_station_blank;
                    type=5;
                    }
                }
            global.textid="specialtrait6";
            script_execute(scr_beginmessage);
            with (obj_messagetext)
                script_execute(scr_specialmessages);
            }
        }
    if (sprite_index == spr_station_komato){
        global.ignorestation=60;
        global.erasetop=0;
        global.komatolevel += 1;
        global.topmessage="Komato level "+string(global.komatolevel);
        scr_sound("glo_pickup2");
        if (global.komatolevel == 10){
            global.ignoremessagescroll=30;
            instance_activate_object(obj_station);
            with (obj_station){
                if (sprite_index==spr_station_komato){
                    sprite_index=spr_station_blank;
                    type=6;
                    }
                }
            global.textid="specialtrait7";
            script_execute(scr_beginmessage);
            with (obj_messagetext)
                script_execute(scr_specialmessages);
            }
        }
    }
    else{
        global.ignorestation=60;
        global.erasetop=0;
        global.topmessage="You do not have any Points to spend";
        scr_sound("glo_crackfail");
        }
    }
}
}