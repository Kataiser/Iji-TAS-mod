if (global.nosound==0){

//PULSE CANNON / HYPER PULSE
sndpulsprev=sndpuls;
sndpuls=0;
if (obj_iji.firingpulse>0)
    sndpuls=1;
with (obj_komatotrooper){
    if (state==2){
        if (x>obj_shakescreen.x-900 && x<obj_shakescreen.x+900 && y>obj_shakescreen.y-600 && y<obj_shakescreen.y+600)
            obj_sabot.sndpuls=1;
        }
    }
with (obj_komatoannihilator){
    if (state==2 && weapon==0){
        if (x>obj_shakescreen.x-900 && x<obj_shakescreen.x+900 && y>obj_shakescreen.y-600 && y<obj_shakescreen.y+600)
            obj_sabot.sndpuls=1;
        }
    }
with (obj_iosa){
    if (state==2 && weapon==0)
        obj_sabot.sndpuls=1;
    }

if (sndpuls>0){
    sndpuls2-=1;
    if (sndpuls2<=0){
        sndpuls2=42;
        scr_sound("wea_puls");
        }
    if (sndpulsprev==0){
        repeat(10)
            sound_stop(snd_wea_pulsend)
        scr_sound("exp_pew");
        }
    }
else if (sndpuls==0 && sndpulsprev>0){
    repeat(10)
        sound_stop(snd_wea_puls)
    if (!obj_sabot.pause)
        scr_sound("wea_pulsend");
    }
if (sndpuls==0)
    sndpuls2=0;

//CFIS
sndcfisprev=sndcfis;
sndcfis=instance_number(obj_cfistrace);
sndcfis+=instance_number(obj_enemycfistrace);
if (sndcfis>0){
    sndcfis2-=1;
    if (sndcfis2<=0){
        sndcfis2=73;
        scr_sound("wea_cfis");
        }
    if (sndcfisprev==0){
        repeat(10)
            sound_stop(snd_wea_cfisend)
        scr_sound("exp_pew");
        }
    }
else if (sndcfis==0 && sndcfisprev>0){
    repeat(10)
        sound_stop(snd_wea_cfis)
    if (!obj_sabot.pause)
        scr_sound("wea_cfisend");
    }
if (sndcfis==0)
    sndcfis2=0;

//VELOCITHOR V2-10
sndthorprev=sndthor;
sndthor=instance_number(obj_thor)+instance_number(obj_enemythor);
if (sndthor>0){
    sndthor2-=1;
    if (sndthor2<=0){
        sndthor2=52;
        scr_sound("wea_thor");
        }
    if (sndthorprev==0){
        repeat(10)
            sound_stop(snd_wea_thorend)
        scr_sound("exp_rock");
        scr_sound("exp_mpfb");
        }
    }
else if (sndthor==0 && sndthorprev>0){
    repeat(10)
        sound_stop(snd_wea_thor)
    if (!obj_sabot.pause)
        scr_sound("wea_thorend");
    }
if (sndthor==0)
    sndthor2=0;

}