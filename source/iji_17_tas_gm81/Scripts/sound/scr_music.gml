scr_stopmusic(1);
//Do it
if (!global.nomusic || iamthemenu){
    if (argument0=="mus_secintro" && (global.music!="mus_secintro" || forcemusic || iamthemenu)){
        sound_loop(mus_secintro);
        forcemusic=0;
        }
    else if (argument0=="mus_sec1"){
        sound_loop(mus_sec1);
        }
    else if (argument0=="mus_sec2"){
        sound_loop(mus_sec2);
        }
    else if (argument0=="mus_sec3"){
        sound_loop(mus_sec3);
        }
    else if (argument0=="mus_sec4"){
        sound_loop(mus_sec4);
        }
    else if (argument0=="mus_sec5"){
        sound_loop(mus_sec5);
        }
    else if (argument0=="mus_mainmenu"){
        sound_loop(mus_mainmenu);
        }
    else if (argument0=="mus_clear"){
        sound_loop(mus_clear);
        }
    else if (argument0=="mus_boss"){
        sound_loop(mus_boss);
        }
    else if (argument0=="mus_tor"){
        sound_loop(mus_tor);
        }
    else if (argument0=="mus_ending"){
        sound_play(mus_ending);
        }
    else if (argument0=="mus_darkstroke"){
        sound_play(mus_darkstroke);
        global.music="";
        tempsmusic=1;
        }
    else if (argument0=="mus_lightstroke"){
        sound_play(mus_lightstroke);
        global.music="";
        tempsmusic=1;
        }
    else if (argument0=="mus_calm"){
        sound_loop(mus_calm);
        }
    else if (argument0=="mus_dark"){
        sound_loop(mus_dark);
        }
    else if (argument0=="mus_sad"){
        sound_loop(mus_sad);
        }
    else if (argument0=="mus_asha"){
        sound_loop(mus_asha);
        }
    else if (argument0=="mus_gameover"){
        sound_play(mus_gameover);
        }
    else if (argument0=="mus_hero3d"){
        sound_loop(mus_hero3d);
        }
    else if (argument0=="mus_doom"){
        sound_play(mus_doom);
        global.music="";
        tempsmusic=1;
        }
    }

//Currently playing
if (!tempsmusic)
    global.music=argument0;
tempsmusic=0;