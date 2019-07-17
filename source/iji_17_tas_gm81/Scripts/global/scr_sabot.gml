//DEBUG
if (global.showdata){
    //global.topmessage=string(numenemies-deletedenemy);
    //Pacify enemies
    with (obj_alliedenemy){
        if (xprevprev>0)
            x=xprevprev;
        xprevprev=x;
        //Mouse over
        if (mouse_x>bbox_left && mouse_x<bbox_right && mouse_y>bbox_top && mouse_y<bbox_bottom){
            global.topmessagekilldata=global.killdataname[killdataid];
            }
        }
    with (obj_visioncheck)
        instance_destroy();
    with (obj_visionchecke)
        instance_destroy();
    with (obj_visioncheckt)
        instance_destroy();
    with (obj_visioncheckk)
        instance_destroy();
    with (obj_visioncheckh)
        instance_destroy();
    }
if (levelskipcyc>0)
    levelskipcyc-=1;
//-----------------------------------

//Restart/retry/quit
if (keyboard_check(vk_f2)){
    f2restart+=1;
    if (f2restart>=20){
        sound_stop_all();
        scr_stopmusic();
        room_goto(rom_main);
        }
    }
else
    f2restart=0;
if (keyboard_check(vk_f4)){
    f4retry+=1;
    if (f4retry>=20){
        scr_retrysector();
        }
    }
else
    f4retry=0;
if (keyboard_check(vk_f12)){
    f12quit+=1;
    if (f12quit>=20){
        sound_stop_all();
        scr_stopmusic();
        game_end();
        }
    }
else
    f12quit=0;

//Iji's Attack damage
global.atmult=1+(global.attacklevel-1)*0.2223;

//Checkfix
if (checkfixw>0){
    checkfixw-=1;
    if (checkfixw==1)
        ultimatecannotpause=0;
    }

//Don't slow down Hero3D
if (instance_number(obj_herosabot)==0){

//for minimap
if (instance_number(obj_iji)==1){
    currentijix=obj_iji.x;
    currentijiy=obj_iji.y;
    }

//Tor death debris
if (throwtordebris==1){
    if (throwtor2<40)
        throwtor2+=1;
    if (throwtor2 mod 3 == 0){
        tempid=instance_create(96+random(608),1312,obj_scrapwhite);
        tempid.hspeed=-2+random(4);
        tempid.vspeed=-random(2);
        tempid.alarm[2]=1;
        }
    }

//Shredder
scr_shreddersfx();

//Sec Z back
if (room==rom_sectorz){
    if (zgbackcycx==0)
        zgbackcycx=1;
    else if (zgbackcycx==1){
        zgbackcycx=2;
        repeat(40){
            tempid=instance_create(obj_shakescreen.x-500+random(1000),obj_shakescreen.y-400+random(800),obj_zgback);
            tempid.image_single=2;
            tempid.depth=1000;
            tempid.direction=random(360);
            tempid.speed=0.4+random(0.2);
            }
        repeat(80){
            tempid=instance_create(obj_shakescreen.x-500+random(1000),obj_shakescreen.y-400+random(800),obj_zgback);
            tempid.image_single=1;
            tempid.depth=1010;
            tempid.direction=random(360);
            tempid.speed=0.2+random(0.1);
            }
        repeat(120){
            tempid=instance_create(obj_shakescreen.x-500+random(1000),obj_shakescreen.y-400+random(800),obj_zgback);
            tempid.image_single=0;
            tempid.depth=1020;
            tempid.direction=random(360);
            tempid.speed=0.05+random(0.05);
            }
        }
    }

//Distant ship explosions
if (thunder){
thundercyc+=1;
if (thundercyc>=thundermax){
    thundermax=30+random(90);
    thundercyc=0;
    if (!pause)
        scr_sound("glo_thunder");
    }
}

//Don't scroll first chat
if (firstscroll<5)
    firstscroll+=1;

//Time to live
if (global.specialtrigger16){
gottl=0;
if ((!global.ignoreall || global.weapstation>0 || global.levelstation>0 || annihilatorbeta || shredder || instance_number(obj_cracktext)==1 || place_meeting(obj_iji.x,obj_iji.y+64,obj_lift)) && !pause && instance_number(obj_endtransition)==0 && instance_number(obj_iji)==1 && (room==rom_sector1 || room==rom_sector2 || room==rom_sector3 || room==rom_sector4 || room==rom_sector5 || room==rom_sector6 || room==rom_sector7 || room==rom_sector8 || room==rom_sector9 || room==rom_sectorx)){
    if (global.textid!="weapstation9" && global.textid!="weapstation10" && global.textid!="weapstation11" && global.textid!="weapstation12" && global.textid!="weapstation13" && global.textid!="weapstation14" && global.textid!="weapstation15" && global.textid!="weapstation16" && global.textid!="specialtrait1" && global.textid!="specialtrait2" && global.textid!="specialtrait3" && global.textid!="specialtrait4" && global.textid!="specialtrait5" && global.textid!="specialtrait6" && global.textid!="specialtrait7"){
        if (!(instance_number(obj_chat)==1 && place_meeting(obj_iji.x,obj_iji.y+64,obj_lift))){
            if (!obj_iji.mdk){
                ttlhuncyc+=1;
                if (ttlhuncyc<3)
                    ttlhun-=3;
                else{
                    ttlhun-=4;
                    ttlhuncyc=0;
                    }
                if (ttlhun<=0){
                    if (ttlsec==0 && ttlmin==0)
                        obj_iji.mdk=1;
                    ttlhun=99;
                    ttlsec-=1;
                    if (ttlsec<0){
                        ttlsec=59;
                        ttlmin-=1;
                        }
                    }
                }
            }
        }
    }
if (obj_iji.mdk){
    if (annihilatorbeta){
        obj_annihilatorbeta.hp=1;
        obj_annihilatorbeta.armor=-1000;
        }
    obj_sabot.liftok=1;
    with (obj_lift){
        if (vspeedx!=0)
            obj_sabot.liftok=0;
        }
    with (obj_iji){
        if (obj_sabot.liftok && global.hp>0 && !takingpain && !recovering){
            instance_activate_object(obj_checkpoint);
            with (obj_checkpoint){
                instance_destroy();
                instance_create(x,y,obj_dummycp);
                }
            instance_activate_object(obj_sec7cp2);
            with (obj_sec7cp2){
                instance_destroy();
                instance_create(x,y,obj_dummycp);
                }
            instance_activate_object(obj_sec9cp2);
            with (obj_sec9cp2){
                instance_destroy();
                instance_create(x,y,obj_dummycp);
                }
            instance_activate_object(obj_secxcp2);
            with (obj_secxcp2){
                instance_destroy();
                instance_create(x,y,obj_dummycp);
                }
            scr_shakescreen(4);
            (instance_create(x,y,obj_whiteblanket)).alarm[0]=2;
            if (shredder)
                shredderhp=0;
            global.damage+=global.hp;
            global.hp=0;
            timeline_index=-1;
            timeline_position=0;
            fatality=1;
            goaroundcyen=1;
            takingpain=0;
            visible=1;
            if (!shredder)
                scr_pain();
            }
        }
    }
}

//Bosskill flash
if (!lightrave){
    if (global.sector==11 || global.sector==12 || global.sector==13 || global.sector==14 || global.sector==15 || temporaryflash){
        if (firstfadein==5 && lastfadeout==0){
            global.gamma=flash;
            }
        if (flash>=0.02)
            flash-=0.02;
        else
            flash=0;
        }
    }

//Lightrave (shoot to brighten)
if (lightrave){
    if (raveflash3<lightravebottom){
        raveflash3+=0.01;
        global.gamma=raveflash3;
        }
    else if (raveflash2>0){
        raveflash2-=0.03;
        global.gamma=raveflash2;
        if (raveflash2<0.04)
            raveflash=0;
        }
    else{
        if (raveflash>lightravebottom)
            raveflash-=0.03;
        if (raveflash<lightravebottom)
            raveflash+=0.03;
        global.gamma=raveflash;
        }
    }

//Fade in
if (!lightrave){
    if (firstfadein<1){
        firstfadein+=0.06;
        global.gamma=firstfadein-1;
        }
    else if (firstfadein!=0 && firstfadein!=5){
        firstfadein=5;
        global.gamma=0;
        }
    //Fade out
    if (room!=rom_sectorz){
        if (lastfadeout>0){
            lastfadeout-=0.05;
            global.gamma=lastfadeout-1;
            }
        else if (lastfadeout!=0 && lastfadeout!=-5){
            lastfadeout=-5;
            global.gamma=-1;
            }
        }
    }

//Ignore message scroll
if (global.ignoremessagescroll>0)
global.ignoremessagescroll-=1;
//Time
if ((!global.ignoreall || global.weapstation>0 || global.levelstation>0 || annihilatorbeta || shredder || instance_number(obj_cracktext)==1 || (instance_number(obj_messagetext)==1 && instance_number(obj_chat)==0) || place_meeting(obj_iji.x,obj_iji.y+64,obj_lift)) && !pause && instance_number(obj_endtransition)==0 && instance_number(obj_iji)==1){
    if (global.textid!="weapstation9" && global.textid!="weapstation10" && global.textid!="weapstation11" && global.textid!="weapstation12" && global.textid!="weapstation13" && global.textid!="weapstation14" && global.textid!="weapstation15" && global.textid!="weapstation16" && global.textid!="specialtrait1" && global.textid!="specialtrait2" && global.textid!="specialtrait3" && global.textid!="specialtrait4" && global.textid!="specialtrait5" && global.textid!="specialtrait6" && global.textid!="specialtrait7")
        timesecs+=1;
    }
//Fix timer ticking up in boss rooms
if (timesecs>=30 && !donotpushs){
    global.seconds+=1;
    timesecs=0;
    }
if (global.seconds>3599)
    global.seconds=3599;

//Others
if (global.kills>999)
    global.kills=999;
if (global.damage>999)
    global.damage=999;
if (global.cracks>999)
    global.cracks=999;
if (global.fails>999)
    global.fails=999;
if (global.cracks<0)
    global.cracks=0;

//Cloudlines
if (global.sector==2 || global.sector==3 || global.sector==11 || global.sector==5 || global.sector==12 || global.sector==7 || global.sector==0){
cloudline-=1;
if (cloudline<=0){
    cloudline=32;
    with (obj_cloudc)
        if (top)
            instance_create(x,y,obj_cloudt);
        else
            instance_create(x,y,obj_cloudb);
    }
}

//Lift
with (obj_lift){
//Move
if (vspeedx!=0)
    global.ignoreall=1;
y+=vspeedx;
obj_iji.y+=vspeedx;
//Going up
if (vspeedx<0){
    if (place_meeting(x,y,obj_liftpoint) && !place_meeting(x,y-32,obj_liftpoint) && !place_meeting(x,y+8,obj_liftpoint)){
        scr_sound("glo_liftend");
        vspeedx=0;
        if (instance_number(obj_chat)==0)
            global.ignoreall=0;
        obj_iji.takingpain=0;
        if (liftoff){
            repeat(15){
                tempid=instance_create(x+random(128),y+18+random(4),obj_thorspark);
                tempid.speed=random(3);
                tempid.direction=270;
                tempid.gravity=0.2;
                tempid.image_speed=0.2+random(0.8);
                tempid.alarm[0]=10+random(30);
                }
            instance_create(x,y,obj_liftoff);
            instance_destroy();
            }
            
        }
    }
//Going down
else if (vspeedx>0){
    if (place_meeting(x,y,obj_liftpoint) && !place_meeting(x,y-32,obj_liftpoint) && !place_meeting(x,y+8,obj_liftpoint)){
        scr_sound("glo_liftend");
        vspeedx=0;
        if (instance_number(obj_chat)==0)
            global.ignoreall=0;
        obj_iji.takingpain=0;
        }
    }
}
//Overloaded weapons
if (machtot>0)
    machtot-=1;
if (pulsetot>0)
    pulsetot-=1;
if (instance_number(obj_iji)==1){
//METHODX
if (room!=rom_sector11 && room!=rom_sector12 && room!=rom_sector13 && room!=rom_sector14 && room!=rom_sector15 && !ignoresmooth && instance_number(obj_asha2)==0){
    with (obj_shakescreen){
        metcyc+=1;
        if (metcyc==10){
            metcyc=0;
            scr_methodx();
            }
        }
    }

if (global.healthlevel>10) global.healthlevel=10;
if (global.attacklevel>10) global.attacklevel=10;
if (global.assimilatelevel>10) global.assimilatelevel=10;
if (global.strengthlevel>10) global.strengthlevel=10;
if (global.cracklevel>10) global.cracklevel=10;
if (global.tasenlevel>10) global.tasenlevel=10;
if (global.komatolevel>10) global.komatolevel=10;
if (global.jumplevel>3) global.jumplevel=3;
if (global.armorlevel>3) global.armorlevel=3;
if (global.hp>global.healthlevel*2) global.hp=global.healthlevel*2;
if (global.hp>20) global.hp=20;
if (global.hp<0) global.hp=0;
if (global.assimilatelevel<10)
    maxammo=global.assimilatebase+global.assimilatelevel*global.assimilatesize;
else
    maxammo=99;
if (global.ammo2>maxammo) global.ammo2=maxammo;
if (global.ammo3>maxammo) global.ammo3=maxammo;
if (global.ammo4>maxammo) global.ammo4=maxammo;
if (global.ammo6>maxammo) global.ammo6=maxammo;
if (global.ammo7>maxammo) global.ammo7=maxammo;
if (global.ammo8>maxammo) global.ammo8=maxammo;

//Adjust view
scr_adjustview();

with (obj_shakescreen){
obj_reloader.x = x+106-488;
obj_reloader.y = y+278;
obj_cracktext.x = x;
obj_cracktext.y = y;
obj_messagetext.x = x;
obj_messagetext.y = y;
obj_scrollarrow.x = x+399;
obj_scrollarrow.y = y+299;
obj_hud.x = x-400;
obj_hud.y = y+220;
obj_weapon1.x = x+234-488;
obj_weapon1.y = y+231;
obj_weapon2.x = x+274-488;
obj_weapon2.y = y+231;
obj_weapon3.x = x+314-488;
obj_weapon3.y = y+231;
obj_weapon4.x = x+354-488;
obj_weapon4.y = y+231;
obj_weapon5.x = x+234-488;
obj_weapon5.y = y+263;
obj_weapon6.x = x+274-488;
obj_weapon6.y = y+263;
obj_weapon7.x = x+314-488;
obj_weapon7.y = y+263;
obj_weapon8.x = x+354-488;
obj_weapon8.y = y+263;

obj_kroterabar.x=x;
obj_kroterabar.y=y-268+obj_kroterabar.yadjust;
obj_ashabar.x=x;
obj_ashabar.y=y-268+obj_ashabar.yadjust;
obj_asha2bar.x=x;
obj_asha2bar.y=y-268+obj_asha2bar.yadjust;
obj_proximabar.x=x;
obj_proximabar.y=y-268+obj_proximabar.yadjust;
obj_iosabar.x=x;
obj_iosabar.y=y-268+obj_iosabar.yadjust;
obj_iosa2bar.x=x;
obj_iosa2bar.y=y-268+obj_iosa2bar.yadjust;
obj_torbar.x=x;
obj_torbar.y=y-268+obj_torbar.yadjust;
}
}
//No Iji object
else
    scr_adjustview2();

//End of "Don't slow down Hero3D"
}

//Retry with escape
if (keyboard_check_pressed(vk_escape) && gameover){
    scr_retrysector();
    }

//Pause
if (keyboard_check_pressed(vk_escape) && ((room_speed==30 && !global.turbomode) || (room_speed==60 && global.turbomode)) && ((!gameover && instance_number(obj_starttransition)==0 && instance_number(obj_endtransition)==0 && !obj_iji.cannotpause && !ultimatecannotpause && global.weapstation==0 && global.levelstation==0) || room==rom_sector16)){
    keyboard_clear(vk_escape);
    //Skip sec16
    if (room==rom_sector16){
        if (global.topmessage!="Really skip this cutscene? Press [ESC] again to confirm" && global.erasetop>=90){
            global.erasetop=0;
            global.topmessage="Really skip this cutscene? Press [ESC] again to confirm";
            }
        else{
            timeline_speed=0;
            instance_deactivate_all(1);
            instance_create(x,y,obj_sec16loadingbox);
            repeat(10)
                sound_stop_all();
            scr_stopmusic();
            screen_redraw();
            room_goto_next();
            }
        }
    else{
        if (!pause){
            if (!playinghero3d && instance_number(obj_iji)==1){
                pause=1;
                scr_stopsfx();
                instance_deactivate_all(1);
                instance_activate_object(obj_activateme);
                instance_create(view_xview[0]+400,view_yview[0]+300,obj_paused);
                instance_create(x,y,obj_loadingback);
                }
            }
        else if (playinghero3d)
            scr_unpause();
        }
    }
scr_pauseeffect();
//Part of skipping messages
if (readytopause>0){
if (!keyboard_check(vk_escape)){
    readytopause-=1;
    if (readytopause==0)
        obj_iji.cannotpause=0;
    }
}

//Abort weapon combining
if (global.weapstation==1 || global.weapstation==2){
    if (keyboard_check_pressed(vk_escape)){
        keyboard_clear(vk_escape);
        global.ignoreall=0;
        global.weapstation=0;
        scr_sound("glo_menumove");
        instance_activate_object(obj_weapstation);
        with (obj_weapstation)
            touchstation=0;
        global.erasetop=0;
        global.topmessage="Disconnected from Nanoweapon station";
        global.ignorestation=120;
        }
    }

//Abort levelstation
if (global.levelstation && instance_number(obj_messagetext)==0){
    if (keyboard_check_pressed(vk_escape)){
        keyboard_clear(vk_escape);
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
    }

//Game over
if (gameover){
    gameoversound+=1;
    if (gameover2==0){
        gameover2=1;
        alarm[1]=180;
        if (room==rom_sector15){
            for (i=0;i<150;i+=1)
                instance_create(x-32+i*8,y,obj_fadeblack);
            }
        else{
            for (i=0;i<108;i+=1)
                instance_create(x-32+i*8,y,obj_fadeblack);
            }
        }
    }

//Don't slow down Hero3D 2
if (instance_number(obj_herosabot)==0){

//Teleport fix
if (doteleport){
    doteleport=0;
    instance_deactivate_all(1);
    instance_activate_object(obj_iji);
    instance_activate_object(obj_shakescreen);
    instance_activate_object(obj_activateme);
    with (obj_shakescreen)
        scr_methodx();
    }

//safety catch: warpback
warpback=0;
with (obj_iji){
    if (place_meeting(x,y,obj_warpback))
        obj_sabot.warpback=1;
    }
if ((obj_iji.y>room_height && room!=rom_sectorz) || warpback){
    if (warpback){
        global.topmessage="SABOT: Caught by warpback instance";
        topmessage3="SABOT: Caught by warpback instance";
        }
    else if (!firednulldriver){
        global.topmessage="SABOT: Caught by falling warpback";
        topmessage3="SABOT: Caught by falling warpback";
        }
    global.erasetop=0;
    global.ignorestation=150;
    topmessage3cyc=120;
    topmessage3dcyc=0;
    thunder=0;
    if (room==rom_sector7 && !fixedpalette){
        obj_sabot.palette=0;
        background_index[0]=bg_back7;
        }
    //Time to live
    if (global.specialtrigger16){
        if (global.sector==1){ ttlmin=3; ttlsec=59;}
        if (global.sector==2){ ttlmin=3; ttlsec=59;}
        if (global.sector==3){ ttlmin=3; ttlsec=59;}
        if (global.sector==4){ ttlmin=5; ttlsec=59;}
        if (global.sector==5){ ttlmin=5; ttlsec=59;}
        if (global.sector==6){ ttlmin=5; ttlsec=59;}
        if (global.sector==7){ ttlmin=5; ttlsec=59;}
        if (global.sector==8){ ttlmin=5; ttlsec=59;}
        if (global.sector==9){ ttlmin=7; ttlsec=59;}
        if (global.sector==0){ ttlmin=9; ttlsec=59;}
        if (global.really){ ttlmin=1; ttlsec=59;}
        ttlhun=99;
        }
    scr_sound("glo_teleport");
    obj_iji.dest=83652;
    obj_sabot.ignoresmooth=1;
    obj_sabot.alarm[4]=3;
    instance_activate_object(obj_lift);
    with (obj_lift){
        y=ystart;
        }
    instance_activate_object(obj_teledest);
    with (obj_teledest){
        if (obj_iji.dest==dest){
            obj_iji.x=x+10;
            obj_iji.y=y-30;
            obj_iji.vspeed=0;
            obj_iji.hspeed=0;
            instance_create(x,y,obj_whiteflash);
            repeat(30){
                tempid=instance_create(x+random(32),y+12-random(64),obj_thorspark);
                tempid.speed=random(3.5)-1.5;
                tempid.direction=90;
                tempid.gravity=0.2;
                }
            }
        }
    metcyc=0;
    doteleport=1;
    }

//Sector Z warpup
if (room==rom_sectorz && obj_iji.y>9000){
    scr_sound("glo_teleport");
    with (obj_zxsquare)
        instance_destroy();
    obj_iji.dest=4;
    obj_sabot.ignoresmooth=1;
    obj_sabot.alarm[4]=3;
    instance_activate_object(obj_teledest);
    with (obj_teledest){
        if (obj_iji.dest==dest){
            obj_iji.x=x+10;
            obj_iji.y=y-60;
            instance_create(x,y,obj_whiteflash);
            repeat(30){
                tempid=instance_create(x+random(32),y+12-random(64),obj_thorspark);
                tempid.speed=random(3.5)-1.5;
                tempid.direction=90;
                tempid.gravity=0.2;
                }
            }
        }
    metcyc=0;
    doteleport=1;
    zwarpup=1;
    }

if (zwarpup==1)
    zwarpup=2;
else if (zwarpup==2){
    zwarpup=0;
    repeat(150)
        instance_create(obj_iji.x-500+random(1000),obj_iji.y-400+random(800),obj_zxsquare);
    }

//Sector Z blockwides
if (zback==3){
    obj_blockwide.visible=1;
    obj_blocktall.visible=1;
    }

//Sector Z zxsquares
if (zback==4){
    obj_blockwide.visible=0;
    obj_blocktall.visible=0;
    with (obj_zxsquare){
        if (x<obj_shakescreen.x-500){
            x=obj_shakescreen.x+495;
            size=ceil(random(24))+8;
            temprand=random(1);
            if (temprand>0.25)
                image_single=0;
            else{
                image_single=ceil(random(63));
                size=32;
                }
            depth=1000100-size;
            }
        if (x>obj_shakescreen.x+500){
            x=obj_shakescreen.x-495;
            size=ceil(random(24))+8;
            temprand=random(1);
            if (temprand>0.25)
                image_single=0;
            else{
                image_single=ceil(random(63));
                size=32;
                }
            depth=1000100-size;
            }
        if (y<obj_shakescreen.y-400){
            y=obj_shakescreen.y+395;
            size=ceil(random(24))+8;
            temprand=random(1);
            if (temprand>0.25)
                image_single=0;
            else{
                image_single=ceil(random(63));
                size=32;
                }
            depth=1000100-size;
            }
        if (y>obj_shakescreen.y+400){
            y=obj_shakescreen.y-395;
            size=ceil(random(24))+8;
            depth=1000100-size;
            temprand=random(1);
            if (temprand>0.25)
                image_single=0;
            else{
                image_single=ceil(random(63));
                size=32;
                }
            }
        }
    
    //Sector Z fade
    if (zfadedirection==0){
        zfade+=0.05;
        if (zfade>0.95)
            zfadedirection=1;
        }
    else{
        zfade-=0.05;
        if (zfade<0.05)
            zfadedirection=0;
        }
    if (zfadeg<1)
        zfadeg+=0.04;
    if (zfadeg>=1)
        zfadeg=1;
    if (seczplayd && (szmp mod 1 == 0) && szmhd[szmp]>0)
        zfadeg=0;
    global.gammagreen=zfadeg;
    }

//Sector 4 flash
if (s4flash==1){
    if (zfadedirection==0){
        zfade+=0.05;
        if (zfade>0.9)
            zfadedirection=1;
        }
    else{
        zfade-=0.05;
        if (zfade<0.05)
        zfadedirection=0;
        }
    }
if (s4flash==2){
    if (zfade>0)
        zfade-=0.05;
    else{
        s4flash=3;
        zfade=0;
        global.gammared=0;
        }
    }
if (s4flash==1 || s4flash==2){
    if (pause){
        global.gammared=0;
        }
    else{
        global.gammared=0;
        global.gammared=zfade;
        }
    }

//Sec Z back
obj_zgbackback.x=obj_shakescreen.x-400;
obj_zgbackback.y=obj_shakescreen.y-300;
with (obj_zgback){
    x+=(obj_shakescreen.x-obj_shakescreen.xprevious)/((image_single+1)*1.5);
    y+=(obj_shakescreen.y-obj_shakescreen.yprevious)/((image_single+1)*1.5);
    if (x<obj_shakescreen.x-500)
        x=obj_shakescreen.x+490;
    if (x>obj_shakescreen.x+500)
        x=obj_shakescreen.x-490;
    if (y<obj_shakescreen.y-400)
        y=obj_shakescreen.y+390;
    if (y>obj_shakescreen.y+400)
        y=obj_shakescreen.y-390;
    }

scr_loopsounds();
scr_voicecyc();

if (room==rom_sectorz && !gameover){
    scr_seczmusicplay();
    }

//Iosa2 safe sign
if (room==rom_sector14){
    if (instance_number(obj_iosa2safe)==1){
        with (obj_iosa2safe){
            x=obj_iji.x-40;
            y=820;
            if (obj_iosa2.state==1 && obj_iosa2.visible){
                visible=1;
                if (obj_iosa2.charged)
                    sprite_index=spr_iosa2_safeu;
                else
                    sprite_index=spr_iosa2_safed;
                }
            else if (obj_iosa2.state==12 && obj_iosa2.visible){
                visible=1;
                sprite_index=spr_iosa2_safel;
                }
            else
                visible=0;
            }
        }
    }

//Asha2 safe sign
if (room==rom_sectorx){
    if (instance_number(obj_asha2safe)==1){
        with (obj_asha2safe){
            x=obj_iji.x-40;
            y=2996;
            if (global.hp<=0)
                instance_destroy();
            }
        }
    }

//Tor safe sign
if (room==rom_sector15){
    if (instance_number(obj_iosa2safe)==1){
        with (obj_iosa2safe){
            x=obj_iji.x-40;
            y=590;
            if (obj_tor.showsafe==1)
                visible=1;
            else
                visible=0;
            }
        }
    }

//End of "Don't slow down Hero3D 2"
}
