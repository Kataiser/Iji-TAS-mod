//Terminate, or continue chat sequence
if (room==rom_cut){
    if (global.chat==global.chats || global.chats==0){
        global.chat=0;
        global.chats=0;
        with (obj_chat)
            instance_destroy();
        obj_cutsabot.timeline_speed=1;
        }
    else
        obj_chat.alarm[0]=8;
    with (obj_chatmessagetext) instance_destroy();
    with (obj_frame) instance_destroy();
    with (obj_scrollarrow) instance_destroy();
    global.textid="0";
    }

else{
    if (global.chat==global.chats || global.chats==0){
        global.chat=0;
        global.chats=0;
        obj_iji.takingpain=0;
        obj_iji.recovering=0;
        obj_iji.goaroundtrigger=0;
        obj_shakescreen.alarm[1]=1; //Related to pausing delay (before pause menu?)
        with (obj_chat)
            instance_destroy();
        if (!obj_iji.holdafterchat && !global.levelstation)
            global.ignoreall=0;
        //Start musics
        with (obj_sabot){
            if (obj_iji.startmusics){
                if (room==rom_sector1 || room==rom_sector2){
                    if (global.wty)
                        scr_music("mus_sad");
                    else
                        scr_music("mus_secintro");
                    }
                else if (room==rom_sector6)
                    scr_music("mus_sec1");
                else if (room==rom_sector7)
                    scr_music("mus_sec2");
                else if (room==rom_sector3 || room==rom_sector8)
                    scr_music("mus_sec3");
                else if (room==rom_sector4 || room==rom_sector9)
                    scr_music("mus_sec4");
                else if (room==rom_sector5)
                    scr_music("mus_sec5");
                else if (room==rom_sectorx){
                    if (instance_number(obj_asha2)==1)
                        scr_music("mus_boss");
                    else if (music!="mus_sec5")
                        scr_music("mus_sec5");
                    }
                else if (room==rom_sector11 || room==rom_sector12 || room==rom_sector13 || room==rom_sector14)
                    scr_music("mus_boss");
                obj_iji.startmusics=0;
                }
            }
        //Asha ingame cut
        if (obj_iji.sec8cut1){
            obj_iji.sec8cut1=0;
            obj_sabot.timeline_index=tim_sec8cut1;
            obj_sabot.timeline_running=true;
            obj_sabot.timeline_position=0;
            }
        if (obj_iji.sec8cut2){
            obj_iji.sec8cut2=0;
            obj_sabot.timeline_index=tim_sec8cut2;
            obj_sabot.timeline_running=true;
            obj_sabot.timeline_position=0;
            }
        if (obj_iji.sec8cut3){
            obj_iji.sec8cut3=0;
            obj_sabot.timeline_index=tim_sec8cut3;
            obj_sabot.timeline_running=true;
            obj_sabot.timeline_position=0;
            }
        if (obj_iji.sec8cut4){
            obj_iji.sec8cut4=0;
            obj_sabot.timeline_index=tim_sec8cut4;
            obj_sabot.timeline_running=true;
            obj_sabot.timeline_position=0;
            }
        //Torbody
        if (room==rom_sector16){
            with (obj_trigger)
                instance_destroy();
            if (!obj_torbodytrigger.lookup){
                obj_torbodytrigger.lookup=1;
                obj_torbodytrigger.timeline_index=tim_torbodylookup;
                obj_torbodytrigger.timeline_running=true;
                obj_torbodytrigger.timeline_position=0;
                }
            else if (instance_number(obj_strikelight)==15 && !obj_torbodytrigger.jump){
                obj_torbodytrigger.jump=1;
                obj_torbodytrigger.timeline_index=tim_torbodyjump;
                obj_torbodytrigger.timeline_running=true;
                obj_torbodytrigger.timeline_position=0;
                }
            }
        }
    else
        obj_chat.alarm[0]=8;
    with (obj_messagetext) instance_destroy();
    with (obj_frame) instance_destroy();
    with (obj_scrollarrow) instance_destroy();
    global.textid="0";
    }
