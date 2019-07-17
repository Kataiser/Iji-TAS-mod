if (seczplaystart){

//A
if (szmha[szmp]>0 && seczplaya && (szmp mod 2 == 0)){
    if (!global.nomusic || iamthemenu){
        if (szmha[szmp]==1)
            sound_play(snd_glo_seczmusic1);
        else if (szmha[szmp]==2)
            sound_play(snd_glo_seczmusic1_q2);
        }
    }
//B
if (szmhb[szmp]>0 && seczplayb && (szmp mod 2 == 0)){
    if (!global.nomusic || iamthemenu){
        if (szmhb[szmp]==1)
            sound_play(snd_glo_seczmusic2);
        else if (szmhb[szmp]==2)
            sound_play(snd_glo_seczmusic2_q2);
        else if (szmhb[szmp]==3)
            sound_play(snd_glo_seczmusic2_q3);
        }
    }
//C
if (szmhc[szmp]>0 && seczplayc && (szmp mod 2 == 0)){
    if (!global.nomusic || iamthemenu){
        if (szmhc[szmp]==1)
            sound_play(snd_glo_seczmusic3);
        else if (szmhc[szmp]==2)
            sound_play(snd_glo_seczmusic3_q2);
        else if (szmhc[szmp]==3)
            sound_play(snd_glo_seczmusic3_q3);
        else if (szmhc[szmp]==4)
            sound_play(snd_glo_seczmusic3_q4);
        else if (szmhc[szmp]==5)
            sound_play(snd_glo_seczmusic3_q5);
        }
    }
//D
if (szmhd[szmp]>0 && seczplayd && (szmp mod 2 == 0)){
    if (!global.nomusic || iamthemenu)
        sound_play(snd_glo_seczmusic2);
    }
//E
if (szmhe[szmp]>0 && seczplaye && (szmp mod 2 == 0)){
    if (!global.nomusic || iamthemenu){
        if (szmhe[szmp]==1)
            sound_play(snd_glo_seczmusic5);
        else if (szmhe[szmp]==2)
            sound_play(snd_glo_seczmusic5_q2);
        else if (szmhe[szmp]==3)
            sound_play(snd_glo_seczmusic5_q3);
        }
    }

szmp+=1*szmspeed;
if (szmp>=256)
    szmp=0;
}