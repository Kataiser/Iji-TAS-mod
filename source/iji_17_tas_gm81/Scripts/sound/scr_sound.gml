//argument1 1 and above is also some "instant sounds"
//argument1 is no elec sound on ijipain etc
if ((global.nosound==0 && obj_sabot.gameoversound<50) || iamthemenu){
if ((x>obj_shakescreen.x-900 && x<obj_shakescreen.x+900 && y>obj_shakescreen.y-600 && y<obj_shakescreen.y+600) || room==rom_sector11 || room==rom_sector12 || room==rom_sector13 || room==rom_sector14 || room==rom_sector15 || room==rom_sector16 || pausemenu){

//GLOBAL
if (argument0=="glo_menuselect"){
    repeat(5)
        sound_stop(snd_glo_menuselect);
    sound_play(snd_glo_menuselect);
    }
else if (argument0=="glo_menuback"){
    repeat(5)
        sound_stop(snd_glo_menuback);
    sound_play(snd_glo_menuback);
    }
else if (argument0=="glo_menumove"){
    repeat(5)
        sound_stop(snd_glo_menumove);
    sound_play(snd_glo_menumove);
    }
else if (argument0=="glo_getoverload"){
    repeat(5)
        sound_stop(snd_glo_getoverload);
    sound_play(snd_glo_getoverload);
    }
else if (argument0=="glo_swipe"){
    repeat(5)
        sound_stop(snd_glo_swipe);
    sound_play(snd_glo_swipe);
    }
else if (argument0=="glo_selectweapon"){
    repeat(5)
        sound_stop(snd_glo_selectweapon);
    sound_play(snd_glo_selectweapon);
    }
else if (argument0=="glo_noammo"){
    if (noammosoundx<=0){
        noammosoundx=8;
        repeat(5)
            sound_stop(snd_glo_selectweapon);
        sound_play(snd_glo_selectweapon);
        }
    }
else if (argument0=="glo_rico"){
    temprand=floor(random(6));
    if (argument1==1){
        repeat(5)
            sound_stop(snd_glo_rico1);
        sound_play(snd_glo_rico1);
        }
    else if (argument1==2){
        repeat(5)
            sound_stop(snd_glo_rico2);
        sound_play(snd_glo_rico2);
        }
    else if (argument1==3){
        repeat(5)
            sound_stop(snd_glo_rico3);
        sound_play(snd_glo_rico3);
        }
    else if (temprand==0){
        repeat(5)
            sound_stop(snd_glo_rico1);
        sound_play(snd_glo_rico1);
        }
    else if (temprand==1){
        repeat(5)
            sound_stop(snd_glo_rico2);
        sound_play(snd_glo_rico2);
        }
    else if (temprand==2){
        repeat(5)
            sound_stop(snd_glo_rico3);
        sound_play(snd_glo_rico3);
        }
    }
else if (argument0=="glo_thunder"){
    repeat(5)
        sound_stop(snd_glo_thunder);
    sound_play(snd_glo_thunder);
    }
else if (argument0=="glo_liftstart"){
    repeat(5)
        sound_stop(snd_glo_liftstart);
    sound_play(snd_glo_liftstart);
    }
else if (argument0=="glo_liftend"){
    repeat(5)
        sound_stop(snd_glo_liftend);
    sound_play(snd_glo_liftend);
    }
else if (argument0=="glo_crackbegin"){
    repeat(5)
        sound_stop(snd_glo_crackbegin);
    sound_play(snd_glo_crackbegin);
    }
else if (argument0=="glo_cracktick"){
    temprand2=floor(random(3));
    if (temprand2==0)
        sound_play(snd_glo_cracktick);
    else if (temprand2==1)
        sound_play(snd_glo_cracktick_q1);
    else if (temprand2==2)
        sound_play(snd_glo_cracktick_q2);
    }
else if (argument0=="glo_debris"){
    temprand=floor(random(2));
    if (temprand==0 || argument1==1){
        temprand2=floor(random(2));
        if (temprand2==0){
            repeat(5)
                sound_stop(snd_glo_debris1);
            sound_volume(snd_glo_debris1,0.88+random(0.12))
            sound_play(snd_glo_debris1);
            }
        else if (temprand2==1){
            repeat(5)
                sound_stop(snd_glo_debris1_q1);
            sound_volume(snd_glo_debris1_q1,0.88+random(0.12))
            sound_play(snd_glo_debris1_q1);
            }
        }
    else if (temprand==1 || argument1==2){
        temprand2=floor(random(2));
        if (temprand2==0){
            repeat(5)
                sound_stop(snd_glo_debris2);
            sound_volume(snd_glo_debris2,0.88+random(0.12))
            sound_play(snd_glo_debris2);
            }
        else if (temprand2==1){
            repeat(5)
                sound_stop(snd_glo_debris2_q1);
            sound_volume(snd_glo_debris2_q1,0.88+random(0.12))
            sound_play(snd_glo_debris2_q1);
            }
        }
    }
else if (argument0=="glo_kick"){
    if (global.squeak){
        repeat(5)
            sound_stop(snd_wea_banana);
        sound_play(snd_wea_banana);
        }
    repeat(5)
        sound_stop(snd_glo_kick);
    sound_play(snd_glo_kick);
    global.voc_glo_kick=26;
    }
else if (argument0=="glo_land"){
    if ((x > obj_shakescreen.x-420) && (x < obj_shakescreen.x+420) && (y > obj_shakescreen.y-320) && (y < obj_shakescreen.y+320) || global.sector==13){
        repeat(5)
            sound_stop(snd_glo_land);
        sound_play(snd_glo_land);
        }
    }
else if (argument0=="glo_shell"){
    temprand=random(1)
    if (argument1==1)
        temprand=1;
    if (temprand>0.8){
        temprand2=floor(random(3));
        if (temprand2==0){
            repeat(5)
                sound_stop(snd_glo_shell);
            sound_play(snd_glo_shell);
            }
        else if (temprand2==1){
            repeat(5)
                sound_stop(snd_glo_shell_q1);
            sound_play(snd_glo_shell_q1);
            }
        else if (temprand2==2){
            repeat(5)
                sound_stop(snd_glo_shell_q2);
            sound_play(snd_glo_shell_q2);
            }
        }
    }
else if (argument0=="glo_crackfail"){
    repeat(5)
        sound_stop(snd_glo_crackfail);
    sound_play(snd_glo_crackfail);
    }
else if (argument0=="glo_cracksuccess"){
    repeat(5)
        sound_stop(snd_glo_cracksuccess);
    sound_play(snd_glo_cracksuccess);
    }
else if (argument0=="glo_door"){
    repeat(5)
        sound_stop(snd_glo_door);
    sound_play(snd_glo_door);
    }
else if (argument0=="glo_reflect"){
    repeat(5)
        sound_stop(snd_glo_reflect);
    sound_play(snd_glo_reflect);
    }
else if (argument0=="glo_teleport"){
    repeat(5)
        sound_stop(snd_glo_teleport);
    sound_play(snd_glo_teleport);
    }
else if (argument0=="glo_doorclose"){
    repeat(5)
        sound_stop(snd_glo_doorclose);
    sound_play(snd_glo_doorclose);
    }
else if (argument0=="glo_shard"){
    temprand=floor(random(3));
    if (temprand==0 || argument1==1){
        repeat(5)
            sound_stop(snd_glo_shard1);
        sound_volume(snd_glo_shard1,0.88+random(0.12))
        sound_play(snd_glo_shard1);
        }
    else if (temprand==1 || argument1==2){
        repeat(5)
            sound_stop(snd_glo_shard2);
        sound_volume(snd_glo_shard2,0.88+random(0.12))
        sound_play(snd_glo_shard2);
        }
    }
else if (argument0=="glo_levelup"){
    repeat(5)
        sound_stop(snd_glo_levelup);
    sound_play(snd_glo_levelup);
    }
else if (argument0=="glo_pickup"){
    repeat(5)
        sound_stop(snd_glo_pickup);
    sound_play(snd_glo_pickup);
    }
else if (argument0=="glo_pickup2"){
    repeat(5)
        sound_stop(snd_glo_pickup2);
    sound_play(snd_glo_pickup2);
    }
else if (argument0=="glo_spark"){
    if (x>obj_shakescreen.x-400 && x<obj_shakescreen.x+400 && y>obj_shakescreen.y-300 && y<obj_shakescreen.y+300){
        temprand=floor(random(2));
        if (temprand==0 || argument1==1){
            repeat(5)
                sound_stop(snd_glo_spark1);
            sound_play(snd_glo_spark1);
            }
        else if (temprand==1 || argument1==2){
            repeat(5)
                sound_stop(snd_glo_spark2);
            sound_play(snd_glo_spark2);
            }
        }
    }
else if (argument0=="glo_electrocute"){
    repeat(5)
        sound_stop(snd_glo_electrocute);
    sound_play(snd_glo_electrocute);
    }
else if (argument0=="glo_destroy"){
    repeat(5)
        sound_stop(snd_glo_destroy);
    sound_play(snd_glo_destroy);
    }
else if (argument0=="glo_bootelec"){
    repeat(5)
        sound_stop(snd_glo_bootelec);
    sound_play(snd_glo_bootelec);
    }
else if (argument0=="glo_blit"){
    if (x>obj_shakescreen.x-700 && x<obj_shakescreen.x+700 && y>obj_shakescreen.y-400 && y<obj_shakescreen.y+400){
        temprand2=floor(random(3));
        if (temprand2==0){
            repeat(5)
                sound_stop(snd_glo_blit);
            sound_volume(snd_glo_blit,0.88+random(0.12))
            sound_play(snd_glo_blit);
            }
        else if (temprand2==1){
            repeat(5)
                sound_stop(snd_glo_blit_q1);
            sound_volume(snd_glo_blit_q1,0.88+random(0.12))
            sound_play(snd_glo_blit_q1);
            }
        }
    }

//WEAPONS
else if (argument0=="wea_shot"){
    repeat(5)
        sound_stop(snd_wea_shot);
    sound_play(snd_wea_shot);
    }
else if (argument0=="wea_imach"){
    temprand2=floor(random(3));
    if (temprand2==0)
        sound_play(snd_wea_imach);
    else if (temprand2==1)
        sound_play(snd_wea_imach_q1);
    else if (temprand2==2)
        sound_play(snd_wea_imach_q2);
    }
else if (argument0=="wea_mach"){
    repeat(5){
        sound_stop(snd_wea_mach);
        sound_stop(snd_wea_mach_q1);
        sound_stop(snd_wea_mach_q2);
        }
    temprand2=floor(random(3));
    if (temprand2==0)
        sound_play(snd_wea_mach);
    else if (temprand2==1)
        sound_play(snd_wea_mach_q1);
    else if (temprand2==2)
        sound_play(snd_wea_mach_q2);
    }
else if (argument0=="wea_rock"){
    repeat(5)
        sound_stop(snd_wea_rock);
    sound_play(snd_wea_rock);
    }
else if (argument0=="wea_mpfb"){
    repeat(5)
        sound_stop(snd_wea_mpfb);
    sound_play(snd_wea_mpfb);
    }
else if (argument0=="wea_reso"){
    repeat(5)
        sound_stop(snd_wea_reso);
    sound_play(snd_wea_reso);
    }
else if (argument0=="wea_puls"){
    repeat(5)
        sound_stop(snd_wea_puls);
    sound_play(snd_wea_puls);
    }
else if (argument0=="wea_pulsend"){
    repeat(5)
        sound_stop(snd_wea_pulsend);
    sound_play(snd_wea_pulsend);
    }
else if (argument0=="wea_shoc"){
    repeat(5)
        sound_stop(snd_wea_shoc);
    if (argument1==1)
        sound_volume(snd_wea_shoc,0.9);
    else
        sound_volume(snd_wea_shoc,1);
    sound_play(snd_wea_shoc);
    }
else if (argument0=="wea_spli"){
    temprand2=floor(random(3));
    if (temprand2==0){
        repeat(5)
            sound_stop(snd_wea_spli);
        sound_play(snd_wea_spli);
        }
    else if (temprand2==1){
        repeat(5)
            sound_stop(snd_wea_spli_q1);
        sound_play(snd_wea_spli_q1);
        }
    else if (temprand2==2){
        repeat(5)
            sound_stop(snd_wea_spli_q2);
        sound_play(snd_wea_spli_q2);
        }
    }
else if (argument0=="wea_plas"){
    repeat(5)
        sound_stop(snd_wea_plas);
    sound_play(snd_wea_plas);
    }
else if (argument0=="wea_thor"){
    repeat(5)
        sound_stop(snd_wea_thor);
    sound_play(snd_wea_thor);
    }
else if (argument0=="wea_thorend"){
    repeat(5)
        sound_stop(snd_wea_thorend);
    sound_play(snd_wea_thorend);
    }
else if (argument0=="wea_charge"){
    repeat(5)
        sound_stop(snd_wea_charge);
    sound_play(snd_wea_charge);
    }
else if (argument0=="wea_cfis"){
    repeat(5)
        sound_stop(snd_wea_cfis);
    sound_play(snd_wea_cfis);
    }
else if (argument0=="wea_cfisend"){
    repeat(5)
        sound_stop(snd_wea_cfisend);
    sound_play(snd_wea_cfisend);
    }
else if (argument0=="wea_banana"){
    repeat(5)
        sound_stop(snd_wea_banana);
    sound_play(snd_wea_banana);
    }

//EXPLOSIONS
else if (argument0=="exp_turret"){
    repeat(5)
        sound_stop(snd_exp_turret);
    sound_play(snd_exp_turret);
    }
else if (argument0=="exp_glass"){
    repeat(5)
        sound_stop(snd_exp_glass);
    if (argument1==1)
        sound_volume(snd_exp_glass,0.9);
    else
        sound_volume(snd_exp_glass,1);
    sound_play(snd_exp_glass);
    }
else if (argument0=="exp_miniglass"){
    repeat(5)
        sound_stop(snd_exp_miniglass);
    if (argument1==1)
        sound_volume(snd_exp_miniglass,0.9);
    else
        sound_volume(snd_exp_miniglass,1);
    sound_play(snd_exp_miniglass);
    }
else if (argument0=="exp_shoc"){
    repeat(5)
        sound_stop(snd_exp_shoc);
    sound_play(snd_exp_shoc);
    }
else if (argument0=="exp_spli"){
    temprand2=floor(random(3));
    repeat(5){
        sound_stop(snd_exp_spli);
        sound_stop(snd_exp_spli_q1);
        sound_stop(snd_exp_spli_q2);
        }
    if (temprand2==0)
        sound_play(snd_exp_spli);
    else if (temprand2==1)
        sound_play(snd_exp_spli_q1);
    else if (temprand2==2)
        sound_play(snd_exp_spli_q2);
    }
else if (argument0=="exp_mpfb"){
    repeat(5)
        sound_stop(snd_exp_mpfb);
    sound_play(snd_exp_mpfb);
    }
else if (argument0=="exp_meta"){
    temprand=floor(random(2));
    if (temprand==0 || argument1==1){
        repeat(5)
            sound_stop(snd_exp_meta1);
        sound_play(snd_exp_meta1);
        }
    else if (temprand==1 || argument1==2){
        repeat(5)
            sound_stop(snd_exp_meta2);
        sound_play(snd_exp_meta2);
        }
    }
else if (argument0=="exp_nano"){
    if ((x > obj_shakescreen.x-420) && (x < obj_shakescreen.x+420) && (y > obj_shakescreen.y-320) && (y < obj_shakescreen.y+320)){
        repeat(5)
            sound_stop(snd_exp_nano);
        sound_play(snd_exp_nano);
        }
    }
else if (argument0=="exp_nuke"){
    repeat(5)
        sound_stop(snd_exp_nuke);
    if (argument1==1)
        sound_volume(snd_exp_nuke,0.9);
    else
        sound_volume(snd_exp_nuke,1);
    sound_play(snd_exp_nuke);
    }
else if (argument0=="exp_pew"){
    repeat(5)
        sound_stop(snd_exp_pew);
    sound_play(snd_exp_pew);
    }
else if (argument0=="exp_rock"){
    repeat(5)
        sound_stop(snd_exp_rock);
    sound_play(snd_exp_rock);
    }
else if (argument0=="exp_boss"){
    repeat(5)
        sound_stop(snd_exp_boss);
    sound_play(snd_exp_boss);
    }

//IJI
else if (argument0=="iji_land"){
    if (global.squeak){
        repeat(5)
            sound_stop(snd_wea_banana);
        sound_play(snd_wea_banana);
        }
    repeat(5)
        sound_stop(snd_iji_land);
    sound_play(snd_iji_land);
    }
else if (argument0=="iji_land2"){
    if (global.squeak){
        repeat(5)
            sound_stop(snd_wea_banana);
        sound_play(snd_wea_banana);
        }
    repeat(5)
        sound_stop(snd_iji_land2);
    sound_play(snd_iji_land2);
    }
else if (argument0=="iji_hitfloor"){
    repeat(5)
        sound_stop(snd_iji_hitfloor);
    sound_play(snd_iji_hitfloor);
    }
else if (argument0=="iji_swiped"){
    repeat(5)
        sound_stop(snd_iji_swiped);
    sound_play(snd_iji_swiped);
    }
else if (argument0=="iji_sworded"){
    repeat(5)
        sound_stop(snd_iji_sworded);
    sound_play(snd_iji_sworded);
    }
else if ((argument0=="iji_basepain" || argument0=="iji_pain" || argument0=="iji_bigpain") && argument1==0){
    repeat(5)
        sound_stop(snd_iji_basepain);
    sound_play(snd_iji_basepain);
    }

//TURRET
else if (argument0=="tur_appear"){
    repeat(5)
        sound_stop(snd_tur_appear);
    sound_play(snd_tur_appear);
    }
else if (argument0=="tur_find"){
    repeat(5)
        sound_stop(snd_tur_find);
    sound_play(snd_tur_find);
    }
else if (argument0=="tur_lose"){
    repeat(5)
        sound_stop(snd_tur_lose);
    sound_play(snd_tur_lose);
    }

//SHREDDER
else if (argument0=="shr_step"){
    sound_play(snd_shr_step);
    }
else if (argument0=="shr_step_q1"){
    sound_play(snd_shr_step_q1);
    }

//ANNIHILATOR
else if (argument0=="ann_step"){
    repeat(5)
        sound_stop(snd_ann_step);
    sound_play(snd_ann_step);
    }

//TOR
else if (argument0=="tor_fire"){
    repeat(5)
        sound_stop(snd_tor_fire);
    sound_play(snd_tor_fire);
    }
else if (argument0=="tor_gather"){
    if (argument1==0){
        repeat(5)
            sound_stop(snd_tor_gather);
        }
    sound_play(snd_tor_gather);
    }
else if (argument0=="tor_gather_q01"){
    if (argument1==0){
        repeat(5)
            sound_stop(snd_tor_gather_q01);
        }
    sound_play(snd_tor_gather_q01);
    }
else if (argument0=="tor_gather_q03"){
    if (argument1==0){
        repeat(5)
            sound_stop(snd_tor_gather_q03);
        }
    sound_play(snd_tor_gather_q03);
    }
else if (argument0=="tor_spark"){
    repeat(5)
        sound_stop(snd_tor_spark);
    sound_play(snd_tor_spark);
    }
else if (argument0=="tor_eruption"){
    repeat(5)
        sound_stop(snd_tor_eruption);
    sound_play(snd_tor_eruption);
    }
else if (argument0=="tor_fly"){
    repeat(5)
        sound_stop(snd_tor_fly);
    sound_play(snd_tor_fly);
    }

//PROXIMA
else if (argument0=="pro_powerdown"){
    repeat(5)
        sound_stop(snd_pro_powerdown);
    sound_play(snd_pro_powerdown);
    }
else if (argument0=="pro_beep1"){
    sound_play(snd_pro_beep1);
    }
else if (argument0=="pro_beep2"){
    sound_play(snd_pro_beep2);
    }
else if (argument0=="pro_beep3"){
    sound_play(snd_pro_beep3);
    }

//EXTENDED
else if (argument0=="ext_impulseexplo"){
    repeat(5)
        sound_stop(snd_ext_impulseexplo);
    sound_play(snd_ext_impulseexplo);
    }
else if (argument0=="ext_barrier"){
    repeat(5)
        sound_stop(snd_ext_barrier);
    sound_play(snd_ext_barrier);
    }
else if (argument0=="ext_barrierexplo"){
    repeat(5)
        sound_stop(snd_ext_barrierexplo);
    sound_play(snd_ext_barrierexplo);
    }


}
}

scr_voice(argument0,argument1);