if (iamthemenu){
global.voc_iji_berserk1=0;
global.voc_iji_berserk2=0;
global.voc_iji_berserk3=0;
global.voc_iji_death=0;
global.voc_sco_find1=0;
global.voc_sco_find2=0;
global.voc_sol_find1=0;
global.voc_sol_find2=0;
global.voc_com_find1=0;
global.voc_com_find2=0;
global.voc_eli_find1=0;
global.voc_eli_find2=0;
global.voc_tro_find1=0;
global.voc_tro_find2=0;
global.voc_ber_find1=0;
global.voc_ber_find2=0;
global.voc_ber_ciretako=0;
global.voc_ash_death=0;
global.voc_ash_ambient1=0;
global.voc_ash_ambient2=0;
global.voc_ash_ambient3=0;
global.voc_ash_ambient4=0;
global.voc_ext_ansaksie1=0;
global.voc_ext_ansaksie2=0;
global.voc_ext_ansaksie3=0;
global.voc_ext_ansaksie4=0;
global.voc_ext_ansaksie5=0;
global.voc_ext_ansaksie6=0;
global.voc_iosa_ambient1=0;
global.voc_iosa_ambient2=0;
global.voc_iosa_ambient3=0;
global.voc_iosa_ambient4=0;
global.voc_iosa_ambient5=0;
}

//argument1 is some instant sounds
if ((global.novoice==0 && obj_sabot.gameoversound<50) || iamthemenu){
if (((x > obj_shakescreen.x-700) && (x < obj_shakescreen.x+700) && (y > obj_shakescreen.y-400) && (y < obj_shakescreen.y+400)) || argument0=="ber_ciretako" || room==rom_sector11 || room==rom_sector12 || room==rom_sector13 || room==rom_sector14 || room==rom_sector15 || room==rom_sector16){

//IJI
if (argument0=="iji_jump" && global.voc_iji_berserk1==0 && global.voc_iji_berserk2==0 && global.voc_iji_berserk3==0){
    if (global.voc_iji_death==0){
        temprand=random(1);
        if (temprand<0.4 || argument1==1 || argument1==2){
            scr_stopijivoice();
            if (argument1==1)
                sound_play(snd_iji_jump);
            else if (argument1==2)
                sound_play(snd_iji_jump2);
            else if (global.totkills+global.kills>=global.neutralkc*berserkkills || attitude==1)
                sound_play(snd_iji_jump2);
            else
                sound_play(snd_iji_jump);
            }
        }
    }
else if (argument0=="iji_kick" && global.voc_iji_berserk1==0 && global.voc_iji_berserk2==0 && global.voc_iji_berserk3==0){
    if (global.voc_iji_death==0){
        temprand=random(1);
        if (temprand<0.3 || argument1==1 || argument1==2){
            scr_stopijivoice();
            if (argument1==1)
                sound_play(snd_iji_kick);
            else if (argument1==2)
                sound_play(snd_iji_kick2);
            else if (global.totkills+global.kills>=(global.neutralkc+2)*berserkkills || attitude==1)
                sound_play(snd_iji_kick2);
            else
                sound_play(snd_iji_kick);
            }
        }
    }
else if (argument0=="iji_pain" && (global.hp>0 || argument1==1 || argument1==2 || argument1==3)){
    if (global.voc_iji_death==0){
        temprand=ceil(random(3));
        scr_stopijivoice();
        if (argument1==1)
            temprand=1;
        else if (argument1==2)
            temprand=2;
        else if (argument1==3)
            temprand=3;
        if (temprand==1)
            sound_play(snd_iji_pain1);
        else if (temprand==2)
            sound_play(snd_iji_pain2);
        else if (temprand==3)
            sound_play(snd_iji_pain3);
        }
    }
else if (argument0=="iji_bigpain" && (global.hp>0 || argument1==1 || argument1==2)){
    if (global.voc_iji_death==0){
        temprand=ceil(random(2));
        scr_stopijivoice();
        if (argument1==1)
            temprand=1;
        else if (argument1==2)
            temprand=2;
        if (temprand==1)
            sound_play(snd_iji_bigpain1);
        else if (temprand==2)
            sound_play(snd_iji_bigpain2);
        }
    }
else if (argument0=="iji_death"){
    if (global.voc_iji_death==0 || argument1==1){
        scr_stopijivoice();
        sound_play(snd_iji_death);
        global.voc_iji_death=31;
        }
    }
else if (argument0=="iji_damnit"){
    if (global.voc_iji_death==0){
        scr_stopijivoice();
        sound_play(snd_iji_damnit);
        }
    }
else if (argument0=="iji_cry"){
    if (global.voc_iji_death==0){
        temprand=random(1);
        if (argument1==1)
            temprand=0;
        else if (argument1==2)
            temprand=0.6;
        if (temprand<0.4){
            scr_stopijivoice();
            sound_play(snd_iji_cry1);
            }
        else if (temprand<0.8){
            scr_stopijivoice();
            sound_play(snd_iji_cry2);
            }
        }
    }
else if (argument0=="iji_berserk" && (global.hp>0 || argument1==1 || argument1==2 || argument1==3)){
    if (global.voc_iji_death==0){
        temprand=random(1);
        if (argument1>=1)
            temprand=(argument1-1)*0.1;
        if (temprand<0.1){
            scr_stopijivoice();
            sound_play(snd_iji_berserk1);
            global.voc_iji_berserk1=19;
            }
        else if (temprand<0.2){
            scr_stopijivoice();
            sound_play(snd_iji_berserk2);
            global.voc_iji_berserk2=41;
            }
        else if (temprand<0.3){
            scr_stopijivoice();
            sound_play(snd_iji_berserk3);
            global.voc_iji_berserk2=22;
            }
        }
    }
else if (argument0=="iji_ougi1"){
    scr_stopijivoice();
    sound_play(snd_iji_ougi1);
    }
else if (argument0=="iji_ougi2"){
    scr_stopijivoice();
    sound_play(snd_iji_ougi2);
    }
else if (argument0=="iji_breathe"){
    scr_stopijivoice();
    sound_play(snd_iji_breathe);
    }

//DAN
else if (argument0=="dan_choke"){
    sound_play(snd_dan_choke);
    }
else if (argument0=="dan_death"){
    sound_play(snd_dan_death);
    }

//SCOUT
else if (argument0=="sco_find"){
    temprand=random(1);
    if ((global.voc_sco_find1==0 && global.voc_sco_find2==0) || argument1==1 || argument1==2){
        if (argument1==1)
            temprand=0;
        else if (argument1==2)
            temprand=1;
        if (temprand<0.5){
            sound_play(snd_sco_find1);
            global.voc_sco_find1=15;
            }
        else if (temprand>=0.5){
            sound_play(snd_sco_find2);
            global.voc_sco_find2=15;
            }
        }
    }
else if (argument0=="sco_death"){
    repeat(5){
        sound_stop(snd_sco_find1);
        sound_stop(snd_sco_find2);
        }
    temprand=random(1);
    if (argument1==1)
        temprand=0;
    else if (argument1==2)
        temprand=1;
    if (temprand<0.5)
        sound_play(snd_sco_death1);
    else if (temprand>=0.5)
        sound_play(snd_sco_death2);
    }

//SOLDIER
else if (argument0=="sol_find" && !golden){
    temprand=random(1);
    if ((global.voc_sol_find1==0 && global.voc_sol_find2==0) || argument1==1 || argument1==2){
        if (argument1==1)
            temprand=0;
        else if (argument1==2)
            temprand=1;
        if (temprand<0.5){
            sound_play(snd_sol_find1);
            global.voc_sol_find1=19;
            }
        else if (temprand>=0.5){
            sound_play(snd_sol_find2);
            global.voc_sol_find2=15;
            }
        }
    }
else if (argument0=="sol_pain" && !golden){
    temprand=random(1);
    scr_stopsoldiervoice();
    if (argument1==1)
        temprand=0;
    else if (argument1==2)
        temprand=1;
    if (temprand<0.5)
        sound_play(snd_sol_pain1);
    else if (temprand>=0.5)
        sound_play(snd_sol_pain2);
    }
else if (argument0=="sol_death" && !golden){
    temprand=random(1);
    scr_stopsoldiervoice();
    if (argument1==1)
        temprand=0;
    else if (argument1==2)
        temprand=1;
    if (temprand<0.5)
        sound_play(snd_sol_death1);
    else if (temprand>=0.5)
        sound_play(snd_sol_death2);
    }

//COMMANDER
else if (argument0=="com_find" || (argument0=="sol_find" && golden)){
    temprand=random(1);
    if ((global.voc_com_find1==0 && global.voc_com_find2==0) || argument1==1 || argument1==2){
        if (argument1==1)
            temprand=0;
        else if (argument1==2)
            temprand=1;
        if (temprand<0.5){
            sound_play(snd_com_find1);
            global.voc_com_find1=28;
            }
        else if (temprand>=0.5){
            sound_play(snd_com_find2);
            global.voc_com_find2=34;
            }
        }
    }
else if (argument0=="com_pain" || (argument0=="sol_pain" && golden)){
    temprand=random(1);
    scr_stopcommandervoice();
    if (argument1==1)
        temprand=0;
    else if (argument1==2)
        temprand=1;
    if (temprand<0.5)
        sound_play(snd_com_pain1);
    else if (temprand>=0.5)
        sound_play(snd_com_pain2);
    }
else if (argument0=="com_death" || (argument0=="sol_death" && golden)){
    temprand=random(1);
    scr_stopcommandervoice();
    if (argument1==1)
        temprand=0;
    else if (argument1==2)
        temprand=1;
    if (temprand<0.5)
        sound_play(snd_com_death1);
    else if (temprand>=0.5)
        sound_play(snd_com_death2);
    }

//ELITE
else if (argument0=="eli_find"){
    temprand=random(1);
    if ((global.voc_eli_find1==0 && global.voc_eli_find2==0) || argument1==1 || argument1==2){
        if (argument1==1)
            temprand=0;
        else if (argument1==2)
            temprand=1;
        if (temprand<0.5){
            sound_play(snd_eli_find1);
            global.voc_eli_find1=32;
            }
        else if (temprand>=0.5){
            sound_play(snd_eli_find2);
            global.voc_eli_find2=32;
            }
        }
    }
else if (argument0=="eli_pain"){
    temprand=random(1);
    if (temprand>0.5 || argument1>0){
        temprand=random(1);
        scr_stopelitevoice();
        if (argument1==1)
            temprand=0;
        else if (argument1==2)
            temprand=1;
        if (temprand<0.5)
            sound_play(snd_eli_pain1);
        else if (temprand>=0.5)
            sound_play(snd_eli_pain2);
        }
    }
else if (argument0=="eli_death"){
    temprand=random(1);
    scr_stopelitevoice();
    if (argument1==1)
        temprand=0;
    else if (argument1==2)
        temprand=1;
    if (temprand<0.5)
        sound_play(snd_eli_death1);
    else if (temprand>=0.5)
        sound_play(snd_eli_death2);
    }

//TROOPER
else if (argument0=="tro_find"){
    temprand=random(1);
    if ((global.voc_tro_find1==0 && global.voc_tro_find2==0) || argument1==1 || argument1==2){
        if (argument1==1)
            temprand=0;
        else if (argument1==2)
            temprand=1;
        if (temprand<0.5){
            sound_play(snd_tro_find1);
            global.voc_tro_find1=13;
            }
        else if (temprand>=0.5){
            sound_play(snd_tro_find2);
            global.voc_tro_find2=19;
            }
        }
    }
else if (argument0=="tro_pain"){
    temprand=random(1);
    scr_stoptroopervoice();
    if (argument1==1)
        temprand=0;
    else if (argument1==2)
        temprand=1;
    if (temprand<0.5)
        sound_play(snd_tro_pain1);
    else if (temprand>=0.5)
        sound_play(snd_tro_pain2);
    }
else if (argument0=="tro_death"){
    temprand=random(1);
    scr_stoptroopervoice();
    if (argument1==1)
        temprand=0;
    else if (argument1==2)
        temprand=1;
    if (temprand<0.5)
        sound_play(snd_tro_death1);
    else if (temprand>=0.5)
        sound_play(snd_tro_death2);
    }

//BERSERKER
else if (argument0=="ber_find"){
    temprand=random(1);
    if ((global.voc_ber_find1==0 && global.voc_ber_find2==0) || argument1==1 || argument1==2){
        if (argument1==1)
            temprand=0;
        else if (argument1==2)
            temprand=1;
        if (temprand<0.5){
            sound_play(snd_ber_find1);
            global.voc_ber_find1=30;
            }
        else if (temprand>=0.5){
            sound_play(snd_ber_find2);
            global.voc_ber_find2=32;
            }
        }
    }
else if (argument0=="ber_pain"){
    if ((global.voc_ber_find1==0 && global.voc_ber_find2==0) || argument1==1 || argument1==2){
        temprand=random(1);
        if (temprand>0.5 || argument1>0){
            temprand=random(1);
            scr_stopberserkervoice();
            if (argument1==1)
                temprand=0;
            else if (argument1==2)
                temprand=1;
            if (temprand<0.5)
                sound_play(snd_ber_pain1);
            else if (temprand>=0.5)
                sound_play(snd_ber_pain2);
            }
        }
    }
else if (argument0=="ber_ciretako"){
    if (global.voc_ber_ciretako==0 || argument1==1){
        sound_play(snd_ber_ciretako);
        global.voc_ber_ciretako=40;
        }
    }

//BEAST
else if (argument0=="bea_find"){
    temprand=random(1);
    if (argument1==1)
        temprand=0;
    else if (argument1==2)
        temprand=1;
    if (temprand<0.5)
        sound_play(snd_bea_find1);
    else if (temprand>=0.5)
        sound_play(snd_bea_find2);
    }
else if (argument0=="bea_jump"){
    repeat(5){
        sound_stop(snd_bea_find1);
        sound_stop(snd_bea_find1);
        }
    sound_play(snd_bea_jump);
    }

//ASSASSIN
else if (argument0=="asa_pain"){
    temprand=random(1);
    if (argument1==1)
        temprand=0;
    else if (argument1==2)
        temprand=1;
    if (temprand<0.5)
        sound_play(snd_asa_pain1);
    else if (temprand>=0.5)
        sound_play(snd_asa_pain2);
    }

//ANNIHILATOR
else if (argument0=="ann_find"){
    temprand=random(1);
    if (argument1==1 || argument1==3)
        temprand=0;
    else if (argument1==2 || argument1==4)
        temprand=1;
    if (temprand<0.5){
        if (argument1==3)
            sound_play(snd_ann_find1_q1);
        else
            sound_play(snd_ann_find1);
        }
    else if (temprand>=0.5){
        if (argument1==4)
            sound_play(snd_ann_find2_q1);
        else
            sound_play(snd_ann_find2);
        }
    }
else if (argument0=="ann_destroy"){
    repeat(5){
        sound_stop(snd_ann_find1);
        sound_stop(snd_ann_find2);
        }
    sound_play(snd_ann_destroy);
    }

//KROTERA
else if (argument0=="kro_pain" && !dead){
    temprand=random(1);
    if (temprand>0.5 || argument1>0){
        temprand=random(1);
        scr_stopkrovoice();
        if (argument1==1)
            temprand=0;
        else if (argument1==2)
            temprand=1;
        if (temprand<0.5)
            sound_play(snd_kro_pain1);
        else if (temprand>=0.5)
            sound_play(snd_kro_pain2);
        }
    }
else if (argument0=="kro_death"){
    scr_stopkrovoice();
    sound_play(snd_kro_death);
    }
else if (argument0=="kro_ambient1" && !dead){
    scr_stopkrovoice();
    sound_play(snd_kro_ambient1);
    }
else if (argument0=="kro_ambient2" && !dead){
    scr_stopkrovoice();
    sound_play(snd_kro_ambient2);
    }
else if (argument0=="kro_ambient3" && !dead){
    scr_stopkrovoice();
    sound_play(snd_kro_ambient3);
    }
else if (argument0=="kro_win" && !dead){
    scr_stopkrovoice();
    sound_play(snd_kro_win);
    }
else if (argument0=="kro_emote2" && !dead){
    scr_stopkrovoice();
    sound_play(snd_kro_emote2);
    }

//ASHA
else if (argument0=="ash_ambient"){
    if ((global.voc_ash_death==0 && global.voc_ash_ambient1==0 && global.voc_ash_ambient2==0 && global.voc_ash_ambient3==0 && global.voc_ash_ambient4==0) || argument1==1 || argument1==3 || argument1==4){
        scr_stopashavoice();
        temprand=ceil(random(3));
        if (argument1==1)
            temprand=1;
        else if (argument1==3)
            temprand=2;
        else if (argument1==4)
            temprand=3;
        if (temprand==1){
            sound_play(snd_ash_ambient1);
            global.voc_ash_ambient1=33;
            }
        else if (temprand==2){
            sound_play(snd_ash_ambient3);
            global.voc_ash_ambient3=33;
            }
        else if (temprand==3){
            sound_play(snd_ash_ambient4);
            global.voc_ash_ambient4=46;
            }
        }
    }
else if (argument0=="ash_ambient2"){
    if ((global.voc_ash_death==0 && global.voc_ash_ambient1==0 && global.voc_ash_ambient2==0 && global.voc_ash_ambient3==0 && global.voc_ash_ambient4==0) || argument1==1){
        scr_stopashavoice();
        sound_play(snd_ash_ambient2);
        global.voc_ash_ambient2=71;
        }
    }
else if (argument0=="ash_ambient3"){
    if (global.voc_ash_death==0 && global.voc_ash_ambient1==0 && global.voc_ash_ambient2==0 && global.voc_ash_ambient3==0 && global.voc_ash_ambient4==0){
        scr_stopashavoice();
        sound_play(snd_ash_ambient3);
        global.voc_ash_ambient3=33;
        }
    }
else if (argument0=="ash_pain"){
    if (global.voc_ash_death==0){
        scr_stopashavoice();
        sound_play(snd_ash_pain);
        }
    }
else if (argument0=="ash_death"){
    scr_stopashavoice();
    sound_play(snd_ash_death);
    global.voc_ash_death=12;
    }
else if (argument0=="ash_win"){
    scr_stopashavoice();
    sound_play(snd_ash_win);
    }
else if (argument0=="ash_win2"){
    scr_stopashavoice();
    sound_play(snd_ash_win2);
    }

//IOSA
else if (argument0=="ios_ambient1"){
    if (global.voc_ext_ansaksie1==0 && global.voc_ext_ansaksie2==0 && global.voc_ext_ansaksie3==0 && global.voc_ext_ansaksie4==0 && global.voc_ext_ansaksie5==0 && global.voc_ext_ansaksie6==0){
        if ((global.voc_ios_ambient1==0 && global.voc_ios_ambient2==0 && global.voc_ios_ambient3==0 && global.voc_ios_ambient4==0 && global.voc_ios_ambient5==0) || argument1==1){
            scr_stopiosavoice();
            sound_play(snd_ios_ambient1);
            global.voc_ios_ambient1=49;
            temprand=random(1)
            if (temprand<0.4){
                obj_ansaksie.voice=200+random(200);
                obj_ansaksie.shutup=55;
                obj_ansaksie.stopfooling=0;
                }
            }
        }
    }
else if (argument0=="ios_ambient2"){
    if (global.voc_ext_ansaksie1==0 && global.voc_ext_ansaksie2==0 && global.voc_ext_ansaksie3==0 && global.voc_ext_ansaksie4==0 && global.voc_ext_ansaksie5==0 && global.voc_ext_ansaksie6==0){
        if ((global.voc_ios_ambient1==0 && global.voc_ios_ambient2==0 && global.voc_ios_ambient3==0 && global.voc_ios_ambient4==0 && global.voc_ios_ambient5==0) || argument1==1){
            scr_stopiosavoice();
            sound_play(snd_ios_ambient2);
            global.voc_ios_ambient2=32;
            temprand=random(1)
            if (temprand<0.4){
                obj_ansaksie.voice=200+random(200);
                obj_ansaksie.shutup=45;
                obj_ansaksie.stopfooling=0;
                }
            }
        }
    }
else if (argument0=="ios_ambient3"){
    if (global.voc_ext_ansaksie1==0 && global.voc_ext_ansaksie2==0 && global.voc_ext_ansaksie3==0 && global.voc_ext_ansaksie4==0 && global.voc_ext_ansaksie5==0 && global.voc_ext_ansaksie6==0){
        if ((global.voc_ios_ambient1==0 && global.voc_ios_ambient2==0 && global.voc_ios_ambient3==0 && global.voc_ios_ambient4==0 && global.voc_ios_ambient5==0) || argument1==1){
            scr_stopiosavoice();
            sound_play(snd_ios_ambient3);
            global.voc_ios_ambient3=34;
            }
        }
    }
else if (argument0=="ios_ambient4"){
    if (global.voc_ext_ansaksie1==0 && global.voc_ext_ansaksie2==0 && global.voc_ext_ansaksie3==0 && global.voc_ext_ansaksie4==0 && global.voc_ext_ansaksie5==0 && global.voc_ext_ansaksie6==0){
        if ((global.voc_ios_ambient1==0 && global.voc_ios_ambient2==0 && global.voc_ios_ambient3==0 && global.voc_ios_ambient4==0 && global.voc_ios_ambient5==0) || argument1==1){
            scr_stopiosavoice();
            sound_play(snd_ios_ambient4);
            global.voc_ios_ambient4=49;
            }
        }
    }
else if (argument0=="ios_ambient5"){
    if (global.voc_ext_ansaksie1==0 && global.voc_ext_ansaksie2==0 && global.voc_ext_ansaksie3==0 && global.voc_ext_ansaksie4==0 && global.voc_ext_ansaksie5==0 && global.voc_ext_ansaksie6==0){
        if ((global.voc_ios_ambient1==0 && global.voc_ios_ambient2==0 && global.voc_ios_ambient3==0 && global.voc_ios_ambient4==0 && global.voc_ios_ambient5==0) || argument1==1){
            scr_stopiosavoice();
            sound_play(snd_ios_ambient5);
            global.voc_ios_ambient5=51;
            }
        }
    }
else if (argument0=="ios_pain"){
    if (global.voc_ext_ansaksie1==0 && global.voc_ext_ansaksie2==0 && global.voc_ext_ansaksie3==0 && global.voc_ext_ansaksie4==0 && global.voc_ext_ansaksie5==0 && global.voc_ext_ansaksie6==0){
        scr_stopiosavoice();
        sound_play(snd_ios_pain);
        }
    }
else if (argument0=="ios_win"){
    scr_stopiosavoice();
    sound_play(snd_ios_win);
    }

//IOSA2
else if (argument0=="io2_jump"){
    scr_stopiosavoice();
    sound_play(snd_io2_jump);
    }
else if (argument0=="io2_melee"){
    scr_stopiosavoice();
    sound_play(snd_io2_melee);
    }
else if (argument0=="io2_melee2"){
    scr_stopiosavoice();
    sound_play(snd_io2_melee2);
    }
else if (argument0=="io2_kicked"){
    scr_stopiosavoice();
    sound_play(snd_io2_kicked);
    }
else if (argument0=="io2_death"){
    scr_stopiosavoice();
    sound_play(snd_io2_death);
    }
else if (argument0=="io2_win"){
    scr_stopiosavoice();
    sound_play(snd_io2_win);
    }

//TOR
else if (argument0=="tor_ambient"){
    scr_stoptorvoice();
    temprand=random(1);
    ambiented=1;
    if (argument1==1)
        temprand=0;
    else if (argument1==2)
        temprand=0.15;
    else if (argument1==3)
        temprand=0.25;
    else if (argument1==4)
        temprand=0.35;
    if (temprand<0.1)
        sound_play(snd_tor_ambient1);
    else if (temprand<0.2)
        sound_play(snd_tor_ambient2);
    else if (temprand<0.3)
        sound_play(snd_tor_ambient3);
    else if ((temprand<0.4 && hp<maxhp/2) || argument1==4)
        sound_play(snd_tor_ambient4);
    else
        ambiented=0;
    }
else if (argument0=="tor_pain"){
    scr_stoptorvoice();
    sound_play(snd_tor_pain);
    }
else if (argument0=="tor_win"){
    scr_stoptorvoice();
    sound_play(snd_tor_win);
    }
else if (argument0=="tor_emote2"){
    scr_stoptorvoice();
    sound_play(snd_tor_emote2);
    }
else if (argument0=="tor_emote3"){
    scr_stoptorvoice();
    sound_play(snd_tor_emote3);
    }

//ANSAKSIE
else if (argument0=="ext_ansaksie"){
    if (global.voc_ios_ambient1==0 && global.voc_ios_ambient2==0 && global.voc_ios_ambient3==0 && global.voc_ios_ambient4==0 && global.voc_ios_ambient5==0){
        temprand=ceil(random(6));
        if (argument1==1)
            temprand=1;
        else if (argument1==2)
            temprand=2;
        else if (argument1==3)
            temprand=3;
        else if (argument1==4)
            temprand=4;
        else if (argument1==5)
            temprand=5;
        else if (argument1==6)
            temprand=6;
        if (temprand==1){
            sound_play(snd_ext_ansaksie1);
            global.voc_ext_ansaksie1=42;
            }
        else if (temprand==2){
            sound_play(snd_ext_ansaksie2);
            global.voc_ext_ansaksie2=32;
            }
        else if (temprand==3){
            sound_play(snd_ext_ansaksie3);
            global.voc_ext_ansaksie3=37;
            }
        else if (temprand==4){
            sound_play(snd_ext_ansaksie4);
            global.voc_ext_ansaksie4=43;
            }
        else if (temprand==5){
            sound_play(snd_ext_ansaksie5);
            global.voc_ext_ansaksie5=36;
            }
        else if (temprand==6){
            sound_play(snd_ext_ansaksie6);
            global.voc_ext_ansaksie6=54;
            }
        }
    }
}
}