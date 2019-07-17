if (!ignoreall){
    //PAUSE MENU
    if (tier="main"){
        if (selected==1){
            ignoreall=1;
            scr_unpause();
            }
        else if (selected==2){
            getinfo=1;
            scr_pausefulltexts();
            instance_create(obj_sabot.x,obj_sabot.y,obj_pausefullcover);
            nocovers=1;
            tier="wait";
            selected=1;
            scr_sound("glo_menuselect");
            }
        else if (selected==3){
            tier="help";
            selected=1;
            scr_sound("glo_menuselect");
            }
        else if (selected==4){
            tier="options";
            selected=1;
            scr_sound("glo_menuselect");
            (instance_create(view_xview[0]+478,view_yview[0]+185,obj_onoff)).depth=-1000006;
            (instance_create(view_xview[0]+478,view_yview[0]+213,obj_onoff)).depth=-1000006;
            (instance_create(view_xview[0]+478,view_yview[0]+241,obj_onoff)).depth=-1000006;
            (instance_create(view_xview[0]+478,view_yview[0]+269,obj_onoff)).depth=-1000006;
            (instance_create(view_xview[0]+478,view_yview[0]+297,obj_onoff)).depth=-1000006;
            (instance_create(view_xview[0]+478,view_yview[0]+325,obj_onoff)).depth=-1000006;
            }
        else if (selected==5){
            tier="retry";
            selected=1;
            scr_sound("glo_menuselect");
            }
        else if (selected==6){
            tier="quitmain";
            selected=1;
            scr_sound("glo_menuselect");
            }
        else if (selected==7){
            tier="quit";
            selected=1;
            scr_sound("glo_menuselect");
            }
        }
    //HELP/INFO
    else if (tier=="help"){
        if (selected==1){
            tier="main";
            selected=3;
            scr_sound("glo_menuback");
            }
        else if (selected==2){
            tier="help2";
            selected=1;
            scr_sound("glo_menuselect");
            }
        else if (selected==3){
            getinfo=2;
            scr_pausefulltexts();
            instance_create(obj_sabot.x,obj_sabot.y,obj_pausefullcover);
            nocovers=1;
            tier="wait";
            selected=1;
            scr_sound("glo_menuselect");
            }
        else if (selected==4){
            getinfo=10;
            scr_pausefulltexts();
            instance_create(obj_sabot.x,obj_sabot.y,obj_pausefullcover);
            nocovers=1;
            tier="wait";
            selected=1;
            scr_sound("glo_menuselect");
            }
        else if (selected==5){
            getinfo=11;
            scr_pausefulltexts();
            instance_create(obj_sabot.x,obj_sabot.y,obj_pausefullcover);
            nocovers=1;
            tier="wait";
            selected=1;
            scr_sound("glo_menuselect");
            }
        else if (selected==6){
            getinfo=3;
            scr_pausefulltexts();
            instance_create(obj_sabot.x,obj_sabot.y,obj_pausefullcover);
            nocovers=1;
            tier="wait";
            selected=1;
            scr_sound("glo_menuselect");
            }
        else if (selected==7 && global.extras7){
            if (!global.scrambler){
                global.scrambler=1;
                scr_sound("glo_menuselect");
                }
            else{
                global.scrambler=0;
                scr_sound("glo_menuback");
                }
            }
        }
    //GAME BASICS
    else if (tier=="help2"){
        if (selected==1){
            tier="help";
            selected=2;
            scr_sound("glo_menuback");
            }
        else if (selected==2){
            getinfo=4;
            scr_pausefulltexts();
            instance_create(obj_sabot.x,obj_sabot.y,obj_pausefullcover);
            nocovers=1;
            tier="wait";
            selected=1;
            scr_sound("glo_menuselect");
            }
        else if (selected==3){
            getinfo=5;
            scr_pausefulltexts();
            instance_create(obj_sabot.x,obj_sabot.y,obj_pausefullcover);
            nocovers=1;
            tier="wait";
            selected=1;
            scr_sound("glo_menuselect");
            }
        else if (selected==4){
            getinfo=6;
            scr_pausefulltexts();
            instance_create(obj_sabot.x,obj_sabot.y,obj_pausefullcover);
            nocovers=1;
            tier="wait";
            selected=1;
            scr_sound("glo_menuselect");
            }
        else if (selected==5){
            getinfo=7;
            scr_pausefulltexts();
            instance_create(obj_sabot.x,obj_sabot.y,obj_pausefullcover);
            nocovers=1;
            tier="wait";
            selected=1;
            scr_sound("glo_menuselect");
            }
        else if (selected==6){
            getinfo=8;
            scr_pausefulltexts();
            instance_create(obj_sabot.x,obj_sabot.y,obj_pausefullcover);
            nocovers=1;
            tier="wait";
            selected=1;
            scr_sound("glo_menuselect");
            }
        else if (selected==7){
            getinfo=9;
            scr_pausefulltexts();
            instance_create(obj_sabot.x,obj_sabot.y,obj_pausefullcover);
            nocovers=1;
            tier="wait";
            selected=1;
            scr_sound("glo_menuselect");
            }
        }
    //OPTIONS
    else if (tier=="options"){
        if (selected==1){
            tier="main";
            selected=4;
            scr_sound("glo_menuback");
            with (obj_onoff)
                instance_destroy();
            scr_readsum();
            if (!wrongsum)
                scr_save(0);
            }
        else if (selected==2){
            if(global.noshake){
                global.noshake=0;
                scr_sound("glo_menuselect");
                }
            else{
                global.noshake=1;
                scr_sound("glo_menuback");
                }
            }
        else if (selected==3){
            if(global.novoice){
                global.novoice=0;
                scr_sound("glo_menuselect");
                }
            else{
                global.novoice=1;
                scr_sound("glo_menuback");
                }
            }
        else if (selected==4){
            if(global.nosound){
                global.nosound=0;
                scr_sound("glo_menuselect");
                }
            else{
                global.nosound=1;
                scr_sound("glo_menuback");
                }
            }
        else if (selected==5){
            if(global.nomusic){
                global.nomusic=0;
                scr_sound("glo_menuselect");
                //Play currently playing music
                with (obj_sabot){
                    forcemusic=1;
                    scr_music(global.music);
                    }
                }
            else{
                global.nomusic=1;
                scr_sound("glo_menuback");
                with (obj_sabot)
                    scr_stopmusic();
                }
            }
        else if (selected==6){
            if(global.hidetime){
                global.hidetime=0;
                scr_sound("glo_menuselect");
                }
            else{
                global.hidetime=1;
                scr_sound("glo_menuback");
                }
            }
        else if (selected==7){
            if(global.noblood){
                global.noblood=0;
                scr_sound("glo_menuselect");
                if (room==rom_sector1)
                    tile_layer_show(999999);
                }
            else{
                global.noblood=1;
                scr_sound("glo_menuback");
                if (room==rom_sector1)
                    tile_layer_hide(999999);
                }
            }
        }
    //RETRY
    else if (tier=="retry"){
        if (selected==1){
            ignoreall=1;
            if (global.horse){
                global.horsepoints=global.backuphorsepoints;
                global.horselives-=1;
                room_restart();
                }
            else
                scr_retrysector();
            }
        else if (selected==2){
            if (global.horse){
                tier="horse";
                selected=4;
                }
            else{
                tier="main";
                selected=5;
                }
            scr_sound("glo_menuback");
            }
        }
    //QUIT TO MAIN MENU
    else if (tier=="quitmain"){
        if (selected==1){
            ignoreall=1;
            repeat(10)
                sound_stop_all();
            room_goto(rom_main);
            }
        else if (selected==2){
            if (global.horse){
                tier="horse";
                selected=5;
                }
            else{
                tier="main";
                selected=6;
                }
            scr_sound("glo_menuback");
            }
        }
    //QUIT GAME
    else if (tier=="quit"){
        if (selected==1){
            ignoreall=1;
            sound_stop_all();
            game_end();
            }
        else if (selected==2){
            if (global.horse){
                tier="horse";
                selected=6;
                }
            else{
                tier="main";
                selected=7;
                }
            scr_sound("glo_menuback");
            }
        }
    //HORSE MENU
    else if (tier="horse"){
        if (selected==1){
            ignoreall=1;
            scr_unpause();
            }
        else if (selected==2){
            getinfo=12;
            scr_pausefulltexts();
            instance_create(obj_sabot.x,obj_sabot.y,obj_pausefullcover);
            nocovers=1;
            tier="wait";
            selected=1;
            scr_sound("glo_menuselect");
            }
        else if (selected==3){
            getinfo=13;
            scr_pausefulltexts();
            instance_create(obj_sabot.x,obj_sabot.y,obj_pausefullcover);
            nocovers=1;
            tier="wait";
            selected=1;
            scr_sound("glo_menuselect");
            }
        else if (selected==4){
            if (global.horselives>0){
                tier="retry";
                selected=1;
                scr_sound("glo_menuselect");
                }
            else
                scr_sound("glo_crackfail");
            }
        else if (selected==5){
            tier="quitmain";
            selected=1;
            scr_sound("glo_menuselect");
            }
        else if (selected==6){
            tier="quit";
            selected=1;
            scr_sound("glo_menuselect");
            }
        }
    //WAIT FOR FULLCOVER
    else if (tier=="wait"){
        with (obj_pausefullcover)
            instance_destroy();
        scr_sound("glo_menuback");
        nocovers=1;
        //Current statistics
        if (getinfo==1){
            tier="main";
            selected=2;
            }
        //Stats and special traits
        if (getinfo==2){
            tier="help";
            selected=3;
            }
        //Hidden skills
        else if (getinfo==3){
            tier="help";
            selected=6;
            }
        //Full controls
        else if (getinfo==4){
            tier="help2";
            selected=2;
            }
        //Difficulty level info
        else if (getinfo==5){
            tier="help2";
            selected=3;
            }
        //Sectors and saving
        else if (getinfo==6){
            tier="help2";
            selected=4;
            }
        //Health
        else if (getinfo==7){
            tier="help2";
            selected=5;
            }
        //Nanofields and leveling
        else if (getinfo==8){
            tier="help2";
            selected=6;
            }
        //Cracking interface
        else if (getinfo==9){
            tier="help2";
            selected=7;
            }
        //Weapon info
        else if (getinfo==10){
            tier="help";
            selected=4;
            }
        //Enemy info
        else if (getinfo==11){
            tier="help";
            selected=5;
            }
        //Horse info
        else if (getinfo==12){
            tier="horse";
            selected=2;
            }
        //Horse hints
        else if (getinfo==13){
            tier="horse";
            selected=3;
            }
        }
    }

//settings
if (tier=="main")
    selections=7;
else if (tier=="help"){
    if (global.extras7)
        selections=7;
    else
        selections=6;
    }
else if (tier=="help2"){
    if (global.sector==1)
        selections=6;
    else
        selections=7;
    }
else if (tier=="options")
    selections=7;
else if (tier=="retry")
    selections=2;
else if (tier=="quitmain")
    selections=2;
else if (tier=="quit")
    selections=2;
else if (tier=="horse")
    selections=6;
else if (tier=="wait")
    selections=1;
