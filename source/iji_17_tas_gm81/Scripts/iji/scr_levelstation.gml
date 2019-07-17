//Level station
//There's no point in writing nice-looking new code for this
//game. Might as well hack everything the old-fashioned way.
if (global.levelstation && instance_number(obj_messagetext)==0){
    //Read
    global.erasetop=0;
    global.ignorestation=120;
    if (global.refreshpoke==1)
        global.topmessage="You do not have any Points to spend";
    else if (global.refreshpoke==2){
        if (global.levelpoke==0)
            global.topmessage="Maximum Health level reached";
        else if (global.levelpoke==1)
            global.topmessage="Maximum Attack level reached";
        else if (global.levelpoke==2)
            global.topmessage="Maximum Assimilate level reached";
        else if (global.levelpoke==3)
            global.topmessage="Maximum Strength level reached";
        else if (global.levelpoke==4)
            global.topmessage="Maximum Crack level reached";
        else if (global.levelpoke==5)
            global.topmessage="Maximum Tasen level reached";
        else if (global.levelpoke==6)
            global.topmessage="Maximum Komato level reached";
        }
    else if (global.refreshpoke==3)
        global.topmessage="You cannot increase Health on Sudden Death Sector";
    else if (global.refreshpoke==4)
        global.topmessage="You cannot increase this stat on Ultimortal difficulty";
    else if (global.refreshpoke==5)
        global.topmessage="You cannot increase this stat yet";
    else{
        if (global.levelpoke==0)
            global.topmessage="Health level "+string(global.healthlevel)+" (raise maximum HP)";
        else if (global.levelpoke==1)
            global.topmessage="Attack level "+string(global.attacklevel)+" (raise power of all Nanoweaponry)";
        else if (global.levelpoke==2)
            global.topmessage="Assimilate level "+string(global.assimilatelevel)+" (increase ammo cap by "+string(global.assimilatesize)+", repair more armor)";
        else if (global.levelpoke==3)
            global.topmessage="Strength level "+string(global.strengthlevel)+" (raise power of kick attacks)";
        else if (global.levelpoke==4)
            global.topmessage="Crack level "+string(global.cracklevel)+" (crack more secure Nanotechnology)";
        else if (global.levelpoke==5)
            global.topmessage="Tasen level "+string(global.tasenlevel)+" (use more advanced Tasen Nanoweaponry)";
        else if (global.levelpoke==6)
            global.topmessage="Komato level "+string(global.komatolevel)+" (use more advanced Komato Nanoweaponry)";
        }
    //Abort
    if (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_enter)){
        keyboard_clear(ord("Z"));
        keyboard_clear(ord("X"));
        keyboard_clear(vk_enter);
        global.ignoreall=0;
        global.levelstation=0;
        global.erasetop=0;
        global.topmessage="Disconnected from Cyborg station";
        global.ignorestation=120;
        instance_activate_object(obj_levelstation);
        with (obj_levelstation)
            touchstation=0;
        scr_sound("glo_menumove");
        }
    //Navigate
    else if (keyboard_check_pressed(vk_up)){
        if (global.levelpoke>=1 && global.levelpoke!=4){
            global.levelpoke-=1;
            global.refreshpoke=0;
            scr_sound("glo_menumove");
            }
        }
    else if (keyboard_check_pressed(vk_down)){
        if (global.levelpoke<6 && global.levelpoke!=3){
            global.levelpoke+=1;
            global.refreshpoke=0;
            scr_sound("glo_menumove");
            }
        }
    else if (keyboard_check_pressed(vk_left)){
        if (global.levelpoke>=4){
            global.levelpoke-=4;
            global.refreshpoke=0;
            scr_sound("glo_menumove");
            }
        }
    else if (keyboard_check_pressed(vk_right)){
        if (global.levelpoke<=3){
            global.levelpoke+=4;
            if (global.levelpoke>=7)
                global.levelpoke=6;
            global.refreshpoke=0;
            scr_sound("glo_menumove");
            }
        }
    //Use
    else if (keyboard_check_pressed(ord("C"))){
        if (global.randomstations)
            global.levelpoke=floor(random(7));
        if (global.levelpoke==0){
            if (global.healthlevel==10){
                global.refreshpoke=2;
                scr_sound("glo_crackfail");
                }
            else if (global.suddendeath){
                global.refreshpoke=3;
                scr_sound("glo_crackfail");
                }
            else if (global.points==0){
                global.refreshpoke=1;
                scr_sound("glo_crackfail");
                }
            else{
                global.points-=1;
                if (global.facing==1){
                    tempid=instance_create(obj_iji.x-11,obj_iji.y-4,obj_ijiflash);
                    tempid.sprite_index=spr_ijiflash2;
                    }
                if (global.facing==0){
                    tempid=instance_create(obj_iji.x-19,obj_iji.y-4,obj_ijiflash);
                    tempid.image_index=5;
                    tempid.sprite_index=spr_ijiflash2;
                    }
                global.healthlevel+=1;
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
            }
        else if (global.levelpoke==1){
            if (global.attacklevel==10){
                global.refreshpoke=2;
                scr_sound("glo_crackfail");
                }
            else if (global.specialtrigger16){
                global.refreshpoke=4;
                scr_sound("glo_crackfail");
                }
            else if (global.points==0){
                global.refreshpoke=1;
                scr_sound("glo_crackfail");
                }
            else{
                global.points-=1;
                if (global.facing==1){
                    tempid=instance_create(obj_iji.x-11,obj_iji.y-4,obj_ijiflash);
                    tempid.sprite_index=spr_ijiflash2;
                    }
                if (global.facing==0){
                    tempid=instance_create(obj_iji.x-19,obj_iji.y-4,obj_ijiflash);
                    tempid.image_index=5;
                    tempid.sprite_index=spr_ijiflash2;
                    }
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
            }
        else if (global.levelpoke==2){
            if (global.assimilatelevel==10){
                global.refreshpoke=2;
                scr_sound("glo_crackfail");
                }
            else if (global.specialtrigger16){
                global.refreshpoke=4;
                scr_sound("glo_crackfail");
                }
            else if (global.points==0){
                global.refreshpoke=1;
                scr_sound("glo_crackfail");
                }
            else{
                global.points-=1;
                if (global.facing==1){
                    tempid=instance_create(obj_iji.x-11,obj_iji.y-4,obj_ijiflash);
                    tempid.sprite_index=spr_ijiflash2;
                    }
                if (global.facing==0){
                    tempid=instance_create(obj_iji.x-19,obj_iji.y-4,obj_ijiflash);
                    tempid.image_index=5;
                    tempid.sprite_index=spr_ijiflash2;
                    }
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
            }
        else if (global.levelpoke==3){
            if (global.strengthlevel==10){
                global.refreshpoke=2;
                scr_sound("glo_crackfail");
                }
            else if (global.specialtrigger16){
                global.refreshpoke=4;
                scr_sound("glo_crackfail");
                }
            else if (global.points==0){
                global.refreshpoke=1;
                scr_sound("glo_crackfail");
                }
            else{
                global.points-=1;
                if (global.facing==1){
                    tempid=instance_create(obj_iji.x-11,obj_iji.y-4,obj_ijiflash);
                    tempid.sprite_index=spr_ijiflash2;
                    }
                if (global.facing==0){
                    tempid=instance_create(obj_iji.x-19,obj_iji.y-4,obj_ijiflash);
                    tempid.image_index=5;
                    tempid.sprite_index=spr_ijiflash2;
                    }
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
            }
        else if (global.levelpoke==4){
            if (global.specialtrigger16){
                global.refreshpoke=4;
                scr_sound("glo_crackfail");
                }
            else if (global.sector==1){
                global.refreshpoke=5;
                scr_sound("glo_crackfail");
                }
            else if (global.cracklevel==10){
                global.refreshpoke=2;
                scr_sound("glo_crackfail");
                }
            else if (global.points==0){
                global.refreshpoke=1;
                scr_sound("glo_crackfail");
                }
            else{
                global.points-=1;
                if (global.facing==1){
                    tempid=instance_create(obj_iji.x-11,obj_iji.y-4,obj_ijiflash);
                    tempid.sprite_index=spr_ijiflash2;
                    }
                if (global.facing==0){
                    tempid=instance_create(obj_iji.x-19,obj_iji.y-4,obj_ijiflash);
                    tempid.image_index=5;
                    tempid.sprite_index=spr_ijiflash2;
                    }
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
            }
        else if (global.levelpoke==5){
            if (global.tasenlevel==10){
                global.refreshpoke=2;
                scr_sound("glo_crackfail");
                }
            else if (global.specialtrigger16){
                global.refreshpoke=4;
                scr_sound("glo_crackfail");
                }
            else if (global.points==0){
                global.refreshpoke=1;
                scr_sound("glo_crackfail");
                }
            else{
                global.points-=1;
                if (global.facing==1){
                    tempid=instance_create(obj_iji.x-11,obj_iji.y-4,obj_ijiflash);
                    tempid.sprite_index=spr_ijiflash2;
                    }
                if (global.facing==0){
                    tempid=instance_create(obj_iji.x-19,obj_iji.y-4,obj_ijiflash);
                    tempid.image_index=5;
                    tempid.sprite_index=spr_ijiflash2;
                    }
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
            }
        else if (global.levelpoke==6){
            if (global.komatolevel==10){
                global.refreshpoke=2;
                scr_sound("glo_crackfail");
                }
            else if (global.specialtrigger16){
                global.refreshpoke=4;
                scr_sound("glo_crackfail");
                }
            else if (global.points==0){
                global.refreshpoke=1;
                scr_sound("glo_crackfail");
                }
            else{
                global.points-=1;
                if (global.facing==1){
                    tempid=instance_create(obj_iji.x-11,obj_iji.y-4,obj_ijiflash);
                    tempid.sprite_index=spr_ijiflash2;
                    }
                if (global.facing==0){
                    tempid=instance_create(obj_iji.x-19,obj_iji.y-4,obj_ijiflash);
                    tempid.image_index=5;
                    tempid.sprite_index=spr_ijiflash2;
                    }
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
        }
    }