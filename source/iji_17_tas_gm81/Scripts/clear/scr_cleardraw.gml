//Restart/quit
if (keyboard_check(vk_f2)){
    f2restart+=1;
    if (f2restart>=20){
        repeat(10)
            sound_stop_all();
        scr_stopmusic();
        room_goto(rom_main);
        }
    }
else
    f2restart=0;
if (keyboard_check(vk_f12)){
    f12quit+=1;
    if (f12quit>=20){
        repeat(10)
            sound_stop_all();
        scr_stopmusic();
        game_end();
        }
    }
else
    f12quit=0;

//Fade out
if (lastfadeout>0 && !stopfadingout){
    lastfadeout-=0.05;
    global.gamma=lastfadeout-1;
    }
else if (lastfadeout!=0 && lastfadeout!=-5){
    lastfadeout=-5;
    global.gamma=0;
    }

//Clearcovers
if (delcover<10){
    with (obj_clearcover){
        if (x==352+obj_clearsabot.delcover*60 || x==352+obj_clearsabot.delcover*60-12 || x==352+obj_clearsabot.delcover*60-24 || x==352+obj_clearsabot.delcover*60-36 || x==352+obj_clearsabot.delcover*60-48){
            alarm[0]=5;
            image_single=-1;
            }
        }
    delcover+=1;
    }

if (temptier!=tier && !ignoreall && tier!=1){
    delcover=0;
    temptier=tier;
    with (obj_clearcover)
        instance_destroy();
    for (i=0; i<6; i+=1){
        for (j=0; j<26; j+=1)
            instance_create(352+j*12,237+i*28,obj_clearcover);
        }
    }

//Results
if (tier==1){
    if (global.kills>0){
        if (global.kills>100){
            kills+=9;
            global.kills-=9;
            }
        kills+=1;
        global.kills-=1;
        }
    if (global.damage>0){
        if (global.damage>100){
            damage+=9;
            global.damage-=9;
            }
        damage+=1;
        global.damage-=1;
        }
    if (global.cracks>0){
        if (global.cracks>100){
            cracks+=9;
            global.cracks-=9;
            }
        cracks+=1;
        global.cracks-=1;
        }
    if (global.fails>0){
        if (global.fails>100){
            fails+=9;
            global.fails-=9;
            }
        fails+=1;
        global.fails-=1;
        }
    if (global.seconds>=60){
        global.seconds-=60;
        minutes+=1;
        global.totalseconds+=60;
        }
    else if (global.seconds>=1){
        global.seconds-=1;
        seconds+=1;
        global.totalseconds+=1;
        }
    draw_set_font(global.fontwhite);
    draw_set_color(c_white);
    draw_text_ext(352,209,"  RESULTS",28,-1);
    draw_text_ext(352,237," Kills:",28,-1);
    draw_text_ext(352,265,"Damage:",28,-1);
    draw_text_ext(352,293,"Cracks:",28,-1);
    draw_text_ext(352,321," Fails:",28,-1);
    draw_text_ext(352,349,"Time:",28,-1);
    if (kills<10) offset=24;
    else if (kills<100) offset=12;
    else offset=0;
    draw_text_ext(448+offset,237,string(kills),28,-1);
    if (damage<10) offset=24;
    else if (damage<100) offset=12;
    else offset=0;
    draw_text_ext(448+offset,265,string(damage),28,-1);
    if (global.sector!=2){
        if (cracks<10) offset=24;
        else if (cracks<100) offset=12;
        else offset=0;
        draw_text_ext(448+offset,293,string(cracks),28,-1);
        }
    else
        draw_text_ext(448,293,"N/A",28,-1);
    if (global.sector!=2){
        if (fails<10) offset=24;
        else if (fails<100) offset=12;
        else offset=0;
        draw_text_ext(448+offset,321,string(fails),28,-1);
        }
    else
        draw_text_ext(448,321,"N/A",28,-1);
    if (minutes<10)
        zeromin="0"+string(minutes);
    else
        zeromin=string(minutes);
    if (seconds<10)
        zerosec="0"+string(seconds);
    else
        zerosec=string(seconds);
    draw_text_ext(424,349,zeromin+":"+zerosec,28,-1);

    if (global.kills==0 && global.damage==0 && global.cracks==0 && global.fails==0 && global.seconds==0){
        ready=1;
        draw_text_ext(352,377,"PRESS ENTER",28,-1);
        }
    }
//Totals
else if (tier==100){
    draw_set_font(global.fontwhite);
    draw_set_color(c_white);
    draw_text_ext(352,209,"  TOTALS",28,-1);
    draw_text_ext(352,237," Kills:",28,-1);
    draw_text_ext(352,265,"Damage:",28,-1);
    draw_text_ext(352,293,"Cracks:",28,-1);
    draw_text_ext(352,321," Fails:",28,-1);
    draw_text_ext(352,349,"Time:",28,-1);
    if (global.totkills<10) offset=24;
    else if (global.totkills<100) offset=12;
    else offset=0;
    draw_text_ext(448+offset,237,string(global.totkills),28,-1);
    if (global.totdamage<10) offset=24;
    else if (global.totdamage<100) offset=12;
    else offset=0;
    draw_text_ext(448+offset,265,string(global.totdamage),28,-1);
    if (global.totcracks<10) offset=24;
    else if (global.totcracks<100) offset=12;
    else offset=0;
    draw_text_ext(448+offset,293,string(global.totcracks),28,-1);
    if (global.totfails<10) offset=24;
    else if (global.totfails<100) offset=12;
    else offset=0;
    draw_text_ext(448+offset,321,string(global.totfails),28,-1);
    //Draw time
    drawtimesecs=global.totalseconds+global.seconds;
    drawtimehours=floor((drawtimesecs-(drawtimesecs mod 3600))/3600);
    drawtimesecs-=drawtimehours*3600;
    drawtimemins=floor((drawtimesecs-(drawtimesecs mod 60))/60);
    drawtimesecs=drawtimesecs mod 60;
    drawtimestring=string(drawtimehours)+":";
    if (drawtimemins<10)
        drawtimestring+="0";
    drawtimestring+=string(drawtimemins)+".";
    if (drawtimesecs<10)
        drawtimestring+="0";
    drawtimestring+=string(drawtimesecs);
    draw_text_ext(424,349,drawtimestring,28,-1);
    draw_text_ext(352,377,"PRESS ENTER",28,-1);
    }

//Menu
else if (tier==2){
    draw_set_font(global.fontwhite);
    draw_set_color(c_white);
    draw_text_ext(352,209," MENU                     Continue                  Save game                 Load game                 Options                   Quit",28,326);
    selections=5;
    }
else if (tier==3){
    draw_set_font(global.fontwhite);
    draw_set_color(c_white);
    if (hassaved)
        draw_text_ext(352,209," GO TO NEXT SECTOR?       Yes                       No",28,326);
    else
        draw_text_ext(352,209," CONTINUE WITHOUT SAVING? Yes                       No",28,326);
    selections=2;
    }
else if (tier==4){
    draw_set_font(global.fontwhite);
    draw_set_color(c_white);
    draw_text_ext(352,209," SAVE GAME                Back to Menu              "+readsaves,28,326);
    selections=6;
    }
else if (tier==5){
    draw_set_font(global.fontwhite);
    draw_set_color(c_white);
    draw_text_ext(352,209," LOAD GAME                Back to Menu              "+readsaves,28,326);
    selections=6;
    }
else if (tier==6){
    draw_set_font(global.fontwhite);
    draw_set_color(c_white);
    if (hassaved)
        draw_text_ext(352,209," QUIT TO MAIN MENU?       Yes                       No",28,326);
    else
        draw_text_ext(352,209," QUIT WITHOUT SAVING?     Yes                       No",28,326);
    selections=2;
    }
else if (tier==7){
    draw_set_font(global.fontwhite);
    draw_set_color(c_white);
    draw_text_ext(352,209," ERROR                    Back to menu#$#THE SAVE FILE (ijisave)   IS CORRUPT. SAVE FILES COULD NOT BE READ.",28,326);
    selections=1;
    }
else if (tier==8){
    draw_set_font(global.fontwhite);
    draw_set_color(c_white);
    draw_text_ext(352,209," ERROR                    Back to menu#$#THE SAVE FILE (ijisave)   IS CORRUPT. GAME CANNOT   BE SAVED.",28,326);
    selections=1;
    }
else if (tier==9){
    draw_set_font(global.fontwhite);
    draw_set_color(c_white);
    draw_text_ext(352,209," OPTIONS                  Back to menu              Screen shaking            Voices                    Sound effects             Music                     Show time",28,326);
    selections=6;
    }
else if (tier==10){
    draw_set_font(global.fontwhite);
    draw_set_color(c_white);
    draw_text_ext(352,209," NOTICE                   You may want to save your game in a different slot. Press Enter to continue.  ",28,326);
    selections=1;
    }
