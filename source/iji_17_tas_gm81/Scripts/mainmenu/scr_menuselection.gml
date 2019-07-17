if(menuwait>91 && menuwait<205)
    menuwait=91;
if(menuwait>10 && menuwait<88)
    menuwait=9;
if(menu && !ignoreall){
//MAIN
if(tier="main"){
    if(selected==1){
        scr_sound("glo_menuselect");
        scr_readsum();
        if (wrongsum){
            tier="error3";
            global.kickkey=ord("Z");
            global.firekey=ord("X");
            global.usekey=ord("C");
            global.weap5key=ord("Q");
            global.weap6key=ord("W");
            global.weap7key=ord("E");
            global.weap8key=ord("R");
            global.prevkey=ord("A");
            global.specialkey=ord("S");
            global.nextkey=ord("D");
            global.noshake=0;
            global.detaillevel=0; //UNUSED: global.specialbake is the real variable
            global.nosound=0;
            global.nomusic=0;
            global.novoice=0;
            global.nogamma=0;
            global.noblood=0;
            global.hidetime=1;
            global.specialbake=0;
            global.rrkills=1;
            global.nomercy=0;
            global.fireanytime=0;
            global.noreloads=0;
            global.randomstations=0;
            global.debug=0;
            }
        else
            tier="new";
        selected=1;
        }
    else if(selected==2){
        scr_readsum();
        if (wrongsum){
            tier="error2"
            selected=1;
            scr_sound("glo_menuselect");
            }
        else{
            scr_readsaves();
            tier="load";
            selected=1;
            scr_sound("glo_menuselect");
            }
        }
    else if(selected==3){
        tier="options";
        instance_create(596,311,obj_onoff);
        instance_create(596,339,obj_onoff);
        instance_create(596,367,obj_onoff);
        instance_create(596,395,obj_onoff);
        instance_create(596,423,obj_onoff);
        //instance_create(596,451,obj_onoff);
        selected=1;
        scr_sound("glo_menuselect");
        }
    else if(selected==4){
        tier="controls";
        selected=1;
        scr_sound("glo_menuselect");
        }
    else if(selected==5){
        tier="extras";
        selected=1;
        scr_sound("glo_menuselect");
        }
    else if(selected==6 && global.extras1){
        scr_menufulltexts(); //This must happen before tier change
        tier="wait";
        waittype=3;
        scr_sound("glo_menuselect");
        instance_create(0,0,obj_mainfullcover);
        }
    else if((selected==6 && global.extras1==0) || (selected==7 && global.extras1==1)){
        tier="quit";
        selected=1;
        scr_sound("glo_menuselect");
        }
    else if(selected==8){
        tier="secret";
        instance_create(596,339,obj_onoff);
        instance_create(596,367,obj_onoff);
        instance_create(596,395,obj_onoff);
        instance_create(596,423,obj_onoff);
        instance_create(596,451,obj_onoff);
        selected=1;
        scr_sound("glo_menuselect");
        }
    else if(selected==9){
        tier="supersecret";
        instance_create(596,339,obj_onoff);
        selected=1;
        scr_sound("glo_menuselect");
        }
    }
//NEW
else if(tier="new"){
    if (selected<4){
        ignoreall=1;
        instance_create(0,0,obj_endtransition);
        alarm[1]=14;
        scr_sound("glo_menuselect");
        }
    else if(selected==4 && global.extras3==1){
        tier="ultimortal";
        selected=1;
        scr_sound("glo_menuselect");
        }
    else if(selected==5 && !really){
        tier="main";
        selected=1;
        scr_sound("glo_menuback");
        }
    else if(selected==5 && really){
        tier="really";
        selected=1;
        scr_sound("glo_menuselect");
        }
    else if(selected==6){
        tier="main";
        selected=1;
        scr_sound("glo_menuback");
        }
    }
//LOAD
else if(tier="load"){
    if(selected==1){
        tier="main";
        selected=2;
        scr_sound("glo_menuback");
        }
    else if(selected>=2 && loadable[selected]==1){
        scr_readsum();
        if (wrongsum){
            tier="error2";
            selected=1;
            scr_sound("glo_menuselect");
            }
        else{
            ignoreall=1;
            instance_create(0,0,obj_endtransition);
            alarm[2]=14;
            scr_sound("glo_menuselect");
            }
        }
    }
//OPTIONS
else if(tier="options"){
    if(selected==1){
        tier="main";
        selected=3;
        with(obj_onoff) instance_destroy();
        scr_sound("glo_menuback");
        scr_readsum();
        if (!wrongsum)
            scr_save(0);
        }
    else if(selected==2){
        if(global.noshake){
            global.noshake=0;
            scr_sound("glo_menuselect");
            }
        else{
            global.noshake=1;
            scr_sound("glo_menuback");
            }
        }
    else if(selected==3){
        if(global.novoice){
            global.novoice=0;
            scr_sound("glo_menuselect");
            }
        else{
            global.novoice=1;
            scr_sound("glo_menuback");
            }
        }
    else if(selected==4){
        if(global.nosound){
            global.nosound=0;
            scr_sound("glo_menuselect");
            }
        else{
            global.nosound=1;
            scr_sound("glo_menuback");
            }
        }
    else if(selected==5){
        if(global.nomusic){
            global.nomusic=0;
            scr_sound("glo_menuselect");
            //Play currently playing music
            scr_music("mus_mainmenu");
            soundtested=0;
            }
        else{
            global.nomusic=1;
            scr_sound("glo_menuback");
            with (obj_face)
                scr_stopmusic();
                }
        }
    else if(selected==6){
        if(global.hidetime){
            global.hidetime=0;
            scr_sound("glo_menuselect");
            }
        else{
            global.hidetime=1;
            scr_sound("glo_menuback");
            }
        }
    else if(selected==7){
        with(obj_onoff) instance_destroy();
        instance_create(596,311,obj_onoff);
        instance_create(596,339,obj_onoff);
        instance_create(596,367,obj_onoff);
        tier="options2";
        selected=1;
        scr_sound("glo_menuselect");
        }
    }
//OPTIONS 2
else if(tier="options2"){
    if(selected==1){
        tier="options";
        selected=1;
        with(obj_onoff) instance_destroy();
        scr_sound("glo_menuback");
        instance_create(596,311,obj_onoff);
        instance_create(596,339,obj_onoff);
        instance_create(596,367,obj_onoff);
        instance_create(596,395,obj_onoff);
        instance_create(596,423,obj_onoff);
        }
    else if (selected==2){
        if(global.nogamma){
            global.nogamma=0;
            scr_sound("glo_menuselect");
            }
        else{
            global.nogamma=1;
            scr_sound("glo_menuback");
            nocovers=1;
            tier="wait";
            waittype=4;
            scr_menufulltexts();
            instance_create(0,0,obj_mainfullcover);
            }
        }
    else if(selected==3){
        if(global.specialbake){
            global.specialbake=0;
            scr_sound("glo_menuselect");
            }
        else{
            global.specialbake=1;
            scr_sound("glo_menuback");
            nocovers=1;
            tier="wait";
            waittype=5;
            scr_menufulltexts();
            instance_create(0,0,obj_mainfullcover);
            }
        }
    else if (selected==4){
        if(global.noblood){
            global.noblood=0;
            scr_sound("glo_menuselect");
            }
        else{
            global.noblood=1;
            scr_sound("glo_menuback");
            /*
            nocovers=1;
            tier="wait";
            waittype=6;
            scr_menufulltexts();
            instance_create(0,0,obj_mainfullcover);
            */
            }
        }
    }
//CONTROLS
else if(tier="controls"){
    if(selected==1){
        if (global.kickkey!=global.firekey && global.kickkey!=global.usekey && global.kickkey!=global.weap5key && global.kickkey!=global.weap6key && global.kickkey!=global.weap7key && global.kickkey!=global.weap8key && global.firekey!=global.usekey && global.firekey!=global.weap5key && global.firekey!=global.weap6key && global.firekey!=global.weap7key && global.firekey!=global.weap8key && global.usekey!=global.weap5key && global.usekey!=global.weap6key && global.usekey!=global.weap7key && global.usekey!=global.weap8key && global.weap5key!=global.weap6key && global.weap5key!=global.weap7key && global.weap5key!=global.weap8key && global.weap6key!=global.weap7key && global.weap6key!=global.weap8key && global.weap7key!=global.weap8key && global.prevkey!=global.usekey && global.prevkey!=global.firekey && global.prevkey!=global.kickkey && global.prevkey!=global.weap5key && global.prevkey!=global.weap6key && global.prevkey!=global.weap7key && global.prevkey!=global.weap8key && global.prevkey!=global.nextkey && global.prevkey!=global.specialkey && global.nextkey!=global.usekey && global.nextkey!=global.firekey && global.nextkey!=global.kickkey && global.nextkey!=global.weap5key && global.nextkey!=global.weap6key && global.nextkey!=global.weap7key && global.nextkey!=global.weap8key && global.nextkey!=global.specialkey && global.specialkey!=global.usekey && global.specialkey!=global.firekey && global.specialkey!=global.kickkey && global.specialkey!=global.weap5key && global.specialkey!=global.weap6key && global.specialkey!=global.weap7key && global.specialkey!=global.weap8key){
            tier="main";
            scr_sound("glo_menuback");
            selected=4;
            }
        else{
            tier="error";
            scr_sound("glo_menuselect");
            scr_sound("glo_crackfail");
            selected=1;
            }
        }
    else if(selected==2){
        global.kickkey=ord("Z");
        global.firekey=ord("X");
        global.usekey=ord("C");
        scr_sound("glo_menuselect");
        }
    else if(selected==6){
        tier="controls2";
        selected=1;
        scr_sound("glo_menuselect");
        }
    }
//CONTROLS 2
else if(tier="controls2"){
    if(selected==1){
        tier="controls";
        scr_sound("glo_menuback");
        selected=1;
        }
    else if(selected==2){
        global.prevkey=ord("A");
        global.nextkey=ord("D");
        global.specialkey=ord("S");
        scr_sound("glo_menuselect");
        }
    else if(selected==6){
        tier="weapons";
        selected=1;
        scr_sound("glo_menuselect");
        }
    }
//WEAPONS
else if(tier="weapons"){
    if(selected==1){
        tier="controls2";
        selected=1;
        scr_sound("glo_menuback");
        }
    else if(selected==2){
        global.weap5key=ord("Q");
        global.weap6key=ord("W");
        global.weap7key=ord("E");
        global.weap8key=ord("R");
        scr_sound("glo_menuselect");
        }
    }
//EXTRAS1
else if(tier="extras"){
    if(selected==1){
        tier="main";
        selected=5;
        scr_sound("glo_menuback");
        }
    //POSTER VIEWER
    else if(selected==2 && (global.poster1 || global.poster2 || global.poster3 || global.poster4 || global.poster5 || global.poster6 || global.poster7 || global.poster8 || global.poster9 || global.poster10)){
        tier="wait3";
        nocovers=1;
        instance_create(0,0,obj_mainposters);
        scr_sound("glo_menuselect");
        }
    //SINGLE SECTOR WARP
    else if(selected==3 && global.extras1){
        global.sswarp=1;
        scr_sound("glo_menuselect");
        ignoreall=1;
        instance_create(0,0,obj_endtransition);
        alarm[1]=14;
        //SSwarp totkills
        if (warp==1)
            global.totkills=0;
        else if (warp==2)
            global.totkills=10;
        else if (warp==3)
            global.totkills=20;
        else if (warp==4)
            global.totkills=30;
        else if (warp==5)
            global.totkills=40;
        else if (warp==6)
            global.totkills=50;
        else if (warp==7)
            global.totkills=60;
        else if (warp==8)
            global.totkills=70;
        else if (warp==9)
            global.totkills=80;
        else if (warp==10)
            global.totkills=90;
        }
    //PLAY HERO 3D
    else if(selected==4 && global.extras2){
        ignoreall=1;
        instance_create(0,0,obj_mainhero3d);
        scr_sound("glo_menuselect");
        }
    //ALTERNATE OUTFIT
    else if(selected==5 && global.extras3){
        scr_sound("glo_menumove");
        if (global.outfit==0)
            global.outfit=1;
        else
            global.outfit=0;
        }
    //Options2
    else if(selected==6){
        tier="extras2";
        selected=1;
        scr_sound("glo_menuselect");
        }
    }
//EXTRAS2
else if(tier="extras2"){
    if(selected==1){
        tier="extras";
        selected=1;
        scr_sound("glo_menuback");
        }
    //WEAPON INFORMATION
    else if(selected==2 && global.extras4){
        tier="wait2";
        nocovers=1;
        scr_menufulltexts();
        instance_create(0,0,obj_mainfullcover);
        scr_sound("glo_menuselect");
        }
    //ENEMY INFORMATION
    else if(selected==3 && global.extras6){
        tier="wait2";
        nocovers=1;
        scr_menufulltexts();
        instance_create(0,0,obj_mainfullcover);
        scr_sound("glo_menuselect");
        }
    //SECTOR MAPS
    else if(selected==4 && global.extras1 && instance_number(obj_secmap)==0){
        instance_create(1017,234,obj_secmap);
        scr_sound("glo_menuselect");
        }
    //SUDDEN DEATH SECTOR
    else if(selected==5 && global.extras2){
        global.suddendeath=1;
        global.sswarp=1;
        //global.sector=sdwarp;
        warp=sdwarp;
        if (sdwarp==0)
            warp=10;
        scr_sound("glo_menuselect");
        ignoreall=1;
        instance_create(0,0,obj_endtransition);
        alarm[1]=14;
        //SSwarp totkills
        if (warp==1)
            global.totkills=0;
        else if (warp==2)
            global.totkills=10;
        else if (warp==3)
            global.totkills=20;
        else if (warp==4)
            global.totkills=30;
        else if (warp==5)
            global.totkills=40;
        else if (warp==6)
            global.totkills=50;
        else if (warp==7)
            global.totkills=60;
        else if (warp==8)
            global.totkills=70;
        else if (warp==9)
            global.totkills=80;
        else if (warp==10)
            global.totkills=90;
        }
    else if (selected==6){
        tier="extras3";
        selected=1;
        scr_sound("glo_menuselect");
        }
    }
//EXTRAS3
else if(tier="extras3"){
    if (selected==1){
        if (soundtested){
            soundtested=0;
            repeat(10)
                sound_stop_all();
            scr_stopmusic();
            seczmusic=0;
            scr_music("mus_mainmenu");
            }
        tier="extras2";
        scr_sound("glo_menuback");
        selected=1;
        }
    else if (selected==2 && global.extras8){
        scr_sound("glo_menumove");
        if (global.turbomode==0)
            global.turbomode=1;
        else
            global.turbomode=0;
        }
    else if (selected==3 && global.extras7){
        scr_sound("glo_menumove");
        if (global.scrambler==0)
            global.scrambler=1;
        else
            global.scrambler=0;
        }
    else if (selected==4 && global.extras1){
        scr_mainsoundstop();
        }
    }

//QUIT
else if(tier="quit"){
    if(selected==1){
        sound_stop_all();
        scr_stopmusic();
        game_end();
        }
    else if(selected==2){
        tier="main";
        if (global.extras1==0)
            selected=6;
        else
            selected=7;
        scr_sound("glo_menuback");
        }
    }
//ERROR
else if(tier="error"){
    tier="controls";
    selected=1;
    scr_sound("glo_menuback");
    }
//ERROR2
else if(tier="error2"){
    tier="main";
    selected=1;
    scr_sound("glo_menuback");
    }
//ERROR3
else if(tier="error3"){
    if(selected==1){
        tier="new";
        selected=1;
        scr_sound("glo_menuselect");
        }
    else if(selected==2){
        scr_createfile();
        scr_writesum();
        tier="new";
        selected=1;
        scr_sound("glo_menuselect");
        }
    else if(selected==3){
        tier="main";
        selected=1;
        scr_sound("glo_menuback");
        }
    }
//ULTIMORTAL
else if(tier="ultimortal"){
    if (selected==1){
        ignoreall=1;
        instance_create(0,0,obj_endtransition);
        global.difficulty=2;
        global.specialtrigger16=1;
        alarm[1]=14;
        scr_sound("glo_menuselect");
        }
    else if(selected==2){
        tier="new";
        selected=4;
        scr_sound("glo_menuback");
        }
    }
//REALLY
else if(tier="really"){
    if (selected==1){
        ignoreall=1;
        instance_create(0,0,obj_endtransition);
        global.difficulty=2;
        global.specialtrigger16=1;
        global.really=1;
        alarm[1]=14;
        scr_sound("glo_menuselect");
        }
    else if(selected==2){
        tier="new";
        selected=5;
        scr_sound("glo_menuback");
        }
    }
//WAIT (go back to extras)
else if (tier="wait"){
    if (waittype==1)
        tier="extras";
    else if (waittype==2)
        tier="extras2";
    else if (waittype==3)
        tier="main";
    else if (waittype==4)
        tier="options2";
    else if (waittype==5)
        tier="options2";
    else if (waittype==6)
        tier="options2";
    else if (waittype>=7 && waittype<=12)
        tier="secret";
    else if (waittype>=13 && waittype<=14)
        tier="supersecret";
    nocovers=1;
    waittype=0;
    scr_sound("glo_menuback");
    with (obj_mainfullcover)
        instance_destroy();
    }
//WAIT2 (go back to extras2)
else if (tier="wait2"){
    tier="extras2";
    nocovers=1;
    scr_sound("glo_menuback");
    with (obj_mainfullcover)
        instance_destroy();
    }
//WAIT3 (viewing posters - an extra step before WAIT)
else if (tier="wait3"){
    tier="wait";
    waittype=1;
    nocovers=1;
    instance_create(0,0,obj_mainfullcover);
    with (obj_mainposters)
        instance_destroy();
    scr_menufulltexts();
    scr_sound("glo_menuselect");
    }
//SECRET
else if(tier="secret"){
    if(selected==1){
        tier="main";
        selected=1;
        with(obj_onoff) instance_destroy();
        scr_sound("glo_menuback");
        }
    else if (selected==2){
        scr_sound("glo_menuselect");
        nocovers=1;
        tier="wait";
        waittype=7;
        scr_menufulltexts();
        instance_create(0,0,obj_mainfullcover);
        }
    else if (selected==3){
        if (global.rrkills){
            global.rrkills=0;
            scr_sound("glo_menuselect");
            nocovers=1;
            tier="wait";
            waittype=8;
            scr_menufulltexts();
            instance_create(0,0,obj_mainfullcover);
            }
        else{
            global.rrkills=1;
            scr_sound("glo_menuback");
            }
        }
    else if (selected==4){
        if (global.nomercy){
            global.nomercy=0;
            scr_sound("glo_menuback");
            }
        else{
            global.nomercy=1;
            nocovers=1;
            tier="wait";
            waittype=9;
            scr_menufulltexts();
            instance_create(0,0,obj_mainfullcover);
            scr_sound("glo_menuselect");
            }
        }
    else if (selected==5){
        if (global.fireanytime){
            global.fireanytime=0;
            scr_sound("glo_menuback");
            }
        else{
            global.fireanytime=1;
            nocovers=1;
            tier="wait";
            waittype=10;
            scr_menufulltexts();
            instance_create(0,0,obj_mainfullcover);
            scr_sound("glo_menuselect");
            }
        }
    else if (selected==6){
        if (global.randomstations){
            global.randomstations=0;
            scr_sound("glo_menuback");
            }
        else{
            global.randomstations=1;
            nocovers=1;
            tier="wait";
            waittype=11;
            scr_menufulltexts();
            instance_create(0,0,obj_mainfullcover);
            scr_sound("glo_menuselect");
            }
        }
    else if (selected==7){
        if (global.noreloads){
            global.noreloads=0;
            scr_sound("glo_menuback");
            }
        else{
            global.noreloads=1;
            nocovers=1;
            tier="wait";
            waittype=12;
            scr_menufulltexts();
            instance_create(0,0,obj_mainfullcover);
            scr_sound("glo_menuselect");
            }
        }
    }
//SUPERSECRET
else if(tier="supersecret"){
    if(selected==1){
        tier="main";
        selected=1;
        with(obj_onoff) instance_destroy();
        scr_sound("glo_menuback");
        }
    else if (selected==2){
        scr_sound("glo_menuselect");
        nocovers=1;
        tier="wait";
        waittype=13;
        scr_menufulltexts();
        instance_create(0,0,obj_mainfullcover);
        }
    else if (selected==3){
        if (global.debug){
            global.debug=0;
            scr_sound("glo_menuback");
            }
        else{
            global.debug=1;
            nocovers=1;
            tier="wait";
            waittype=14;
            scr_menufulltexts();
            instance_create(0,0,obj_mainfullcover);
            scr_sound("glo_menuselect");
            }
        }
    }

//settings
if (tier=="main" && global.extras1==0)
    selections=6;
else if (tier=="main" && global.extras1==1)
    selections=7;
else if (tier=="new"){
    if (really)
        selections=6;
    else
        selections=5;
    }
else if (tier=="load")
    selections=6;
else if (tier=="options")
    selections=7;
else if (tier=="options2")
    selections=4;
else if (tier=="controls")
    selections=6;
else if (tier=="controls2")
    selections=6;
else if (tier=="weapons")
    selections=6;
else if (tier=="extras")
    selections=6;
else if (tier=="extras2")
    selections=6;
else if (tier=="extras3")
    selections=4;
else if (tier=="quit")
    selections=2;
else if (tier=="error")
    selections=1;
else if (tier=="error2")
    selections=1;
else if (tier=="error3")
    selections=3;
else if (tier=="ultimortal")
    selections=2;
else if (tier=="really")
    selections=2;
else if (tier=="secret")
    selections=7;
else if (tier=="supersecret")
    selections=3;
}