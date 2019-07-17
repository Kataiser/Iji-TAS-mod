//Executed by sabot
if (!horseinit){
    horseinit=1;
    camspd=6;
    spd=12;
    obj_horse.camspd=camspd;
    obj_horse.spd=spd;
    obj_horse.hp=10;
    room_speed=40;
    }

//Remove clouds
if (destroyclouds==1){
    with (obj_cloudb)
        instance_destroy();
    }
if (!horsegameover && !horsevictory && !pause){
    //Move horse
    moved=0;
    if (!ignoreall){
        with (obj_horse){
            if (trailer==0){
                if (keyboard_check(vk_left)){
                    if (place_free(x-spd,y))
                        x-=spd;
                    else{
                        move_contact_solid(180,spd);
                        if (y>obj_sabot.y-275 && (place_meeting(x,y+4,obj_slopel) || place_meeting(x,y+4,obj_sloper)) && !place_free(x-1,y) && place_free(x,y-floor(spd/2))){
                            y-=floor(spd/2);
                            if (place_free(x-spd,y))
                                x-=spd;
                            }
                        }
                    if (x<obj_sabot.x-380)
                        x=obj_sabot.x-380;
                    obj_sabot.moved=1;
                    }
                else if (keyboard_check(vk_right)){
                    if (place_free(x+spd,y))
                        x+=spd;
                    else{
                        move_contact_solid(0,spd);
                        if (y>obj_sabot.y-275 && (place_meeting(x,y+4,obj_slopel) || place_meeting(x,y+4,obj_sloper)) && !place_free(x+1,y) && place_free(x,y-floor(spd/2))){
                            y-=floor(spd/2);
                            if (place_free(x+spd,y))
                                x+=spd;
                            }
                        }
                    if (x>obj_sabot.x+380)
                        x=obj_sabot.x+380;
                    obj_sabot.moved=1;
                    }
                if (keyboard_check(vk_up)){
                    if (place_free(x,y-spd))
                        y-=spd;
                    else
                        move_contact_solid(90,spd);
                    if (y<obj_sabot.y-280)
                        y=obj_sabot.y-280;
                    obj_sabot.moved=1;
                    }
                else if (keyboard_check(vk_down)){
                    if (place_free(x,y+spd))
                        y+=spd;
                    else
                        move_contact_solid(270,spd);
                    if (y>obj_sabot.y+248)
                        y=obj_sabot.y+248;
                    obj_sabot.moved=1;
                    }
                }
            }
        }
    
    //Camera
    if (horsecameradir==0){
        x+=camspd;
        with (obj_horse){
            if (trailer==0){
                if (place_free(x+camspd,y))
                    x+=camspd;
                }
            else
                x+=camspd;
            }
        with (obj_horsepoints)
            x+=obj_sabot.camspd;
        }
    else if (horsecameradir==1){
        y-=camspd;
        with (obj_horse){
            if (trailer==0){
                if (place_free(x,y-camspd))
                    y-=camspd;
                }
            else
                y-=campspd;
            }
        with (obj_horsepoints)
            y-=obj_sabot.camspd;
        }
    else if (horsecameradir==2){
        x-=camspd;
        with (obj_horse){
            if (trailer==0){
                if (place_free(x-camspd,y))
                    x-=camspd;
                }
            else
                x-=camspd;
            }
        with (obj_horsepoints)
            x-=obj_sabot.camspd;
        }
    else if (horsecameradir==3){
        y+=camspd;
        with (obj_horse){
            if (trailer==0){
                if (place_free(x,y+camspd))
                    y+=camspd;
                }
            else
                y+=camspd;
            }
        with (obj_horsepoints)
            y+=obj_sabot.camspd;
        }
    findflip=-1;
    findflip=instance_place(x,y,obj_horseflip);
    if (findflip>0){
        if (!findflip.done){
            findflip.done=1;
            if (findflip.dir==4 && instance_number(obj_horseexit)==0 && horseover==0){
                instance_create(x,y,obj_horseexit);
                if (room!=rom_sectorx)
                    global.horselives+=1;
                }
            else if (findflip.dir==5){
                camspd=0;
                with (obj_horse)
                    camspd=0;
                with (findflip)
                    instance_destroy();
                }
            else
                horsecameradir=findflip.dir;
            destroyclouds=findflip.destroyclouds;
            }
        }
    with (obj_horse){
        if (trailer==0){
            if (x<obj_sabot.x-380){
                x=obj_sabot.x-380;
                obj_sabot.moved=1;
                if (!place_free(x,y) && place_free(x,y-floor(obj_sabot.camspd/2)))
                    y-=floor(obj_sabot.camspd/2);
                }
            if (x>obj_sabot.x+380){
                x=obj_sabot.x+380;
                obj_sabot.moved=1;
                if (!place_free(x,y) && place_free(x,y-floor(obj_sabot.camspd/2)))
                    y-=floor(obj_sabot.camspd/2);
                }
            if (y<obj_sabot.y-280){
                y=obj_sabot.y-280;
                obj_sabot.moved=1;
                }
            if (y>obj_sabot.y+248){
                y=obj_sabot.y+248;
                obj_sabot.moved=1;
                }
            }
        }
    
    if (obj_sabot.moved){
        obj_horse.camspd=0;
        for (i=22;i>0;i-=1){
            xprev[i]=xprev[i-1];
            yprev[i]=yprev[i-1];
            }
        }
    with (obj_horse){
        if (trailer==0){
            if (obj_sabot.moved){
                obj_sabot.xprev[0]=x;
                obj_sabot.yprev[0]=y;
                }
            }
        else{
            x=obj_sabot.xprev[trailer];
            y=obj_sabot.yprev[trailer];
            }
        }
    
    scr_horseview();
    
    //Horse fires
    with (obj_horse){
        weapcyc+=1;
        if (weapon==0){
            if (weapcyc>=4-weaponpower*2){
                weapcyc=0;
                tempid=instance_create(x,y,obj_horseshot);
                tempid.speed=18;
                tempid.force=1;
                tempid.type=0;
                tempid.mask_index=spr_rockethail;
                temprand=floor(random(3));
                if (temprand==0)
                    tempid.sprite_index=spr_blitright;
                else if (temprand==1)
                    tempid.sprite_index=spr_blitleft;
                else if (temprand==2)
                    tempid.sprite_index=spr_blitjump;
                tempid.image_single=floor(random(5));
                }
            }
        else if (weapon==1){
            if (weapcyc>=4-weaponpower*2){
                weapcyc=0;
                tempid=instance_create(x,y,obj_horseshot);
                tempid.speed=24;
                tempid.force=2;
                tempid.type=1;
                if (weaponpower==0)
                    tempid.direction=random(50)-25;
                else if (weaponpower==1)
                    tempid.direction=random(80)-40;
                tempid.sprite_index=spr_iosacrawler2;
                tempid.image_single=0;
                }
            }
        else if (weapon==2){
            if (weapcyc>=4-weaponpower*2){
                weapcyc=0;
                meteor+=27.521;
                if (meteor>40+weaponpower*10)
                    meteor-=40+weaponpower*10;
                for (i=0;i<2;i+=1){
                    tempid=instance_create(x,y,obj_horseshot);
                    tempid.speed=24;
                    tempid.force=2;
                    tempid.type=2;
                    tempid.direction=meteor*(1-i*2);
                    if (i==0)
                        tempid.meteorrot=-5;
                    else
                        tempid.meteorrot=5;
                    tempid.sprite_index=spr_shockball;
                    tempid.image_single=0;
                    }
                }
            }
        else if (weapon==3){
            if (weapcyc>=16-weaponpower*8){
                weapcyc=0;
                rocket=1-rocket;
                for (i=0;i<4;i+=1){
                    tempid=instance_create(x,y,obj_horseshot);
                    tempid.speed=18;
                    tempid.force=6;
                    tempid.type=3;
                    tempid.direction=i*90+rocket*45;
                    tempid.sprite_index=spr_rockethail;
                    tempid.image_single=i*2+rocket;
                    }
                }
            }
        else if (weapon==4){
            if (weapcyc>=1){
                weapcyc=0;
                corona+=1;
                if (corona==8)
                    corona=0;
                tempid=instance_create(x+80,y,obj_horseshot);
                tempid.force=1+weaponpower*0.5;
                tempid.type=4;
                if (weaponpower==0){
                    if (corona==0 || corona==1)
                        tempid.sprite_index=spr_megaflash4;
                    else if (corona==2 || corona==3 || corona==6 || corona==7)
                        tempid.sprite_index=spr_megaflash3;
                    else if (corona==4 || corona==5)
                        tempid.sprite_index=spr_megaflash2;
                    }
                else if (weaponpower==1){
                    if (corona==0 || corona==1)
                        tempid.sprite_index=spr_megaflash3;
                    else if (corona==2 || corona==3 || corona==6 || corona==7)
                        tempid.sprite_index=spr_megaflash2;
                    else if (corona==4 || corona==5)
                        tempid.sprite_index=spr_megaflash;
                    }
                tempid.image_single=0;
                }
            }
        }
    
    //Destroy horse
    if (horseover==0){
        if (horsehp<=0)
            horseover=1;
        with (obj_horse){
            if (trailer==0){
                if (mercy>0)
                    mercy-=1;
                obj_sabot.lastx=x;
                obj_sabot.lasty=y;
                if (!place_free(x,y) && instance_number(obj_horseexit)==0 && !horsegameover && !horsevictory){
                    crushed+=1;
                    if (crushed>=2)
                        obj_sabot.horseover=1;
                    }
                else
                    crushed=0;
                }
            }
        }
    if (horseover==1 && instance_number(obj_horseexit)==0){
        horseovercyc+=1;
        if (horseovercyc==1){
            camspd=0;
            scr_shakescreen(4);
            scr_sound("exp_rock");
            with (obj_horse){
                instance_destroy();
                instance_create(x,y,obj_horseexplo);
                if (trailer==0){
                    repeat(6)
                        instance_create(x,y,obj_horseexplospewer);
                    }
                }
            }
        if (horseovercyc==40){
            horseover=2;
            (instance_create(x,y,obj_horseexit)).type=1;
            }
        }
    
    //Methodhorse
    with (obj_shakescreen){
        metcyc+=1;
        if (metcyc>=10){
            metcyc=0;
            if (obj_sabot.camspd>0)
                scr_methodhorse();
            }
        }
    }

//End
if ((horsegameover || horsevictory) && !pause){
    if (keyboard_check_pressed(vk_escape) && instance_number(obj_horseexit)==0){
        (instance_create(x,y,obj_horseexit)).type=3;
        }
    }

//Cloudlines
if (room==rom_sector3 || room==rom_sector5 || room==rom_sector7 || room==rom_sectorx){
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

//Boss is dead
if (horsebossdead && !pause){
    bosscyc+=1;
    if (bosscyc>=20 && bosscyc<238 && instance_number(obj_horsecoin)==0)
        bosscyc=238;
    if (bosscyc==240)
        (instance_create(obj_sabot.x-64,obj_sabot.y-64,obj_horseflip)).dir=4;
    }

//Restart/quit
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
if (keyboard_check(vk_f4) && instance_number(obj_horseenter)==0 && instance_number(obj_horseexit)==0 && instance_number(obj_horse)>0 && !horsegameover && !horsevictory){
    f4retry+=1;
    if (f4retry>=20){
        if (global.horselives>0){
            global.horsepoints=global.backuphorsepoints;
            global.horselives-=1;
            room_restart();
            }
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

//Pause
if (keyboard_check_pressed(vk_escape) && instance_number(obj_horseenter)==0 && instance_number(obj_horseexit)==0 && instance_number(obj_horse)>0 && !horsegameover && !horsevictory){
    keyboard_clear(vk_escape);
    if (!pause){
        pause=1;
        scr_stopsfx();
        instance_deactivate_all(1);
        instance_activate_object(obj_activateme);
        instance_create(view_xview[0]+400,view_yview[0]+300,obj_paused);
        instance_create(x,y,obj_loadingback);
        }
    else
        scr_unpause();
    }
scr_pauseeffect();
