//seczmusic
if (seczmusic)
    scr_seczmusicplay();

//Quit
if (keyboard_check(vk_f12)){
    f12quit+=1;
    if (f12quit>=20){
        sound_stop_all();
        game_end();
        }
    }
else
    f12quit=0;

//sound test fix
if (tier="extras3" && selected==4)
    iamthemenu=1;
else
    iamthemenu=0;

//scrolling
if (menuwait<90 && bgscrollcyc<82){
    bgscrollcyc+=1;
    x+=1;
    background_x[1]+=1;
    if (bgscrollcyc2==0)
        bgscrollcyc2=1;
    else{
        bgscrollcyc2=0;
        background_x[2]-=1;
        background_x[3]-=1;
        background_x[4]-=1;
        background_x[5]-=1;
        }
    }

//Binary
if (bgscrollcyc>=82){
    step1-=1;
    if (step1<=0){
        temprand=floor(random(6));
        tempid=instance_create(-10,2,obj_mainbinary);
        tempid.hspeed=1;
        tempid.image_single=temprand;
        step1=12;
        tempid.alarm[0]=130+random(90);
        
        tempid=instance_create(810,583,obj_mainbinary);
        tempid.hspeed=-1;
        tempid.image_single=temprand;
        tempid.alarm[0]=160+random(90);
        }
    step2-=2;
    if (step2<=0){
        temprand=floor(random(6));
        tempid=instance_create(-10,32,obj_mainbinary);
        tempid.hspeed=2;
        tempid.image_single=temprand;
        step2=12;
        tempid.alarm[0]=125+random(70);
        
        tempid=instance_create(810,553,obj_mainbinary);
        tempid.hspeed=-2;
        tempid.image_single=temprand;
        tempid.alarm[0]=155+random(80);
        }
    step3-=1;
    if (step3<=0){
        temprand=floor(random(6));
        tempid=instance_create(-10,52,obj_mainbinary);
        tempid.hspeed=1;
        tempid.image_single=temprand;
        step3=12;
        tempid.alarm[0]=200+random(100);
        
        tempid=instance_create(810,533,obj_mainbinary);
        tempid.hspeed=-1;
        tempid.image_single=temprand;
        tempid.alarm[0]=250+random(120);
        }
    step4-=2;
    if (step4<=0){
        temprand=floor(random(6));
        tempid=instance_create(-10,92,obj_mainbinary);
        tempid.hspeed=2;
        tempid.image_single=temprand;
        step4=12;
        tempid.alarm[0]=30+random(50);
        
        tempid=instance_create(810,503,obj_mainbinary);
        tempid.hspeed=-2;
        tempid.image_single=temprand;
        tempid.alarm[0]=45+random(50);
        }
    }



//Main covers
if (delcover<10){
    with (obj_maincover){
        if (x==380+obj_face.delcover*60 || x==380+obj_face.delcover*60-12 || x==380+obj_face.delcover*60-24 || x==380+obj_face.delcover*60-36 || x==380+obj_face.delcover*60-48){
            alarm[0]=5;
            image_single=-1;
            }
        }
    delcover+=1;
    }

if (temptier!=tier){
    delcover=0;
    temptier=tier;
    with (obj_maincover)
        instance_destroy();
    if (nocovers)
        nocovers=0;
    else{
        for (i=0; i<7; i+=1){
            for (j=0; j<26; j+=1)
                instance_create(380+j*12,282+i*28,obj_maincover);
            }
        }
    }

//begin real menu
if (count==0 && menu==0){
    menu=1;
    instance_create(360,273,obj_marker);
    if (global.extras1==0)
        selections=6;
    else
        selections=7;
    selected=1;
    tier="main";
    temptier="main";
    delcover=0;
    for (i=0; i<7; i+=1){
        for (j=0; j<26; j+=1)
            instance_create(380+j*12,282+i*28,obj_maincover);
        }
    }
//erase intro
menuwait-=1;
if (menuwait<=105 && menuwait>90)
    flash=(7-(menuwait/15))
if (menuwait==90){
    with(obj_intro1) instance_destroy();
    with(obj_intro2) instance_destroy();
    with(obj_introtext) instance_destroy();
    scr_music("mus_mainmenu");
    flash=1;
    fadeflash=1;
    }
if (fadeflash==1 && flash>0)
    flash-=1/60;
if (lastfadeout==0){
    //if (!global.nogamma)
        //global.gamma=flash;
    }
//set menu to appear
if (menuwait==8 && menuappear==0){
    menuappear=1;
    }
//logo & menu appears
if (menuappear==1 && count>0){
    if (count==13) instance_create(419,13,obj_logotext);
    if (count==10) instance_create(497,90,obj_logotext);
    if (count==7) instance_create(574,90,obj_logotext);
    if (count==4) instance_create(496,39,obj_logotext);
    if (count==1) instance_create(573,39,obj_logotext);
    if (count>0 && count<13){
        instance_create(314+(count*16),240,obj_menuback);
        instance_create(314+(count*16+8),240,obj_menuback);
        instance_create(714-(count*16),240,obj_menuback);
        instance_create(714-(count*16+8),240,obj_menuback);
        }
    count-=1;
    }

//Fade out
if (lastfadeout>0){
    lastfadeout-=0.05;
    global.gamma=lastfadeout-1;
    }
else if (lastfadeout!=0 && lastfadeout!=-5){
    lastfadeout=-5;
    global.gamma=-1;
    }

//sudden death completion indicator
if (menu==1 && tier="extras2" && global.extras2==1){
    obj_mainsdindicator.visible=0;
    if (sdwarp==1 && global.sds1)
        obj_mainsdindicator.visible=1;
    else if (sdwarp==2 && global.sds2)
        obj_mainsdindicator.visible=1;
    else if (sdwarp==3 && global.sds3)
        obj_mainsdindicator.visible=1;
    else if (sdwarp==4 && global.sds4)
        obj_mainsdindicator.visible=1;
    else if (sdwarp==5 && global.sds5)
        obj_mainsdindicator.visible=1;
    else if (sdwarp==6 && global.sds6)
        obj_mainsdindicator.visible=1;
    else if (sdwarp==7 && global.sds7)
        obj_mainsdindicator.visible=1;
    else if (sdwarp==8 && global.sds8)
        obj_mainsdindicator.visible=1;
    else if (sdwarp==9 && global.sds9)
        obj_mainsdindicator.visible=1;
    else if (sdwarp==0 && global.sds10)
        obj_mainsdindicator.visible=1;
    }
else
    obj_mainsdindicator.visible=0;

//rapidly scroll through the sound effects
if (tier=="extras3" && global.extras1 && selected==4){
    if (keyboard_check(vk_left) && !keyboard_check(vk_right)){
        if (turboscroll<100)
            turboscroll+=1;
        }
    else if (keyboard_check(vk_right) && !keyboard_check(vk_left)){
        if (turboscroll<100)
            turboscroll+=1;
        }
    else
        turboscroll=0;
    if (turboscroll>=15){
        if (keyboard_check(vk_left)){
            soundtest-=1;
            repeat(10)
                sound_stop_all();
            if (turboscroll>60)
                soundtest-=1;
            if (soundtest<0)
                soundtest=soundtestmax;
            }
        if (keyboard_check(vk_right)){
            soundtest+=1;
            repeat(10)
                sound_stop_all();
            if (turboscroll>60)
                soundtest+=1;
            if (soundtest>soundtestmax)
                soundtest=0;
            }
        }
    }

//really
if (tier="new" && keyboard_check(vk_right) && !really){
    reallytick+=1;
    if (reallytick==150 && global.extras3){
        reallytick=0;
        scr_sound("glo_menumove");
        really=1;
        scr_menutext();
        selections=6;
        }
    }
else
    reallytick=0;