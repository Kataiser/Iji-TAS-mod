ignoreall=0;
seczmusic=0;

//PLAY IT SAM
if (obj_face.soundtest==0) scr_sound("glo_menuselect");
if (obj_face.soundtest==1) scr_sound("glo_menuback");
if (obj_face.soundtest==2) scr_sound("glo_menumove");
if (obj_face.soundtest==3) scr_sound("glo_shell",1);
if (obj_face.soundtest==4) scr_sound("glo_door");
if (obj_face.soundtest==5) scr_sound("glo_doorclose");
if (obj_face.soundtest==6) scr_sound("glo_swipe");
if (obj_face.soundtest==7) scr_sound("glo_kick");
if (obj_face.soundtest==8) scr_sound("glo_land");
if (obj_face.soundtest==9) scr_sound("glo_crackbegin");
if (obj_face.soundtest==10) scr_sound("glo_cracktick");
if (obj_face.soundtest==11) scr_sound("glo_crackfail");
if (obj_face.soundtest==12) scr_sound("glo_cracksuccess");
if (obj_face.soundtest==13) scr_sound("glo_pickup");
if (obj_face.soundtest==14) scr_sound("glo_pickup2");
if (obj_face.soundtest==15) scr_sound("glo_getoverload");
if (obj_face.soundtest==16) scr_sound("glo_reflect");
if (obj_face.soundtest==17) scr_sound("glo_thunder");
if (obj_face.soundtest==18) scr_sound("glo_teleport");
if (obj_face.soundtest==19) scr_sound("glo_liftstart");
if (obj_face.soundtest==20) scr_sound("glo_liftend");
if (obj_face.soundtest==21) scr_sound("glo_rico",1);
if (obj_face.soundtest==22) scr_sound("glo_rico",2);
if (obj_face.soundtest==23) scr_sound("glo_rico",3);
if (obj_face.soundtest==24) scr_sound("glo_selectweapon");
if (obj_face.soundtest==25) scr_sound("glo_debris",1);
if (obj_face.soundtest==26) scr_sound("glo_debris",2);
if (obj_face.soundtest==27) scr_sound("glo_shard",1);
if (obj_face.soundtest==28) scr_sound("glo_shard",2);
if (obj_face.soundtest==29) scr_sound("glo_destroy");
if (obj_face.soundtest==30) scr_sound("glo_levelup");
if (obj_face.soundtest==31) scr_sound("glo_spark",1);
if (obj_face.soundtest==32) scr_sound("glo_spark",2);
if (obj_face.soundtest==33) scr_sound("glo_electrocute");
if (obj_face.soundtest==34) scr_sound("glo_bootelec");
if (obj_face.soundtest==35) scr_sound("glo_blit");

if (obj_face.soundtest==36) scr_sound("wea_shot");
if (obj_face.soundtest==37) scr_sound("wea_imach");
if (obj_face.soundtest==38) scr_sound("wea_mach");
if (obj_face.soundtest==39) scr_sound("wea_charge");
if (obj_face.soundtest==40) scr_sound("wea_rock");
if (obj_face.soundtest==41) scr_sound("wea_mpfb");
if (obj_face.soundtest==42) scr_sound("wea_reso");
if (obj_face.soundtest==43) scr_sound("wea_puls");
if (obj_face.soundtest==44) scr_sound("wea_pulsend");
if (obj_face.soundtest==45) scr_sound("wea_shoc");
if (obj_face.soundtest==46) scr_sound("wea_cfis");
if (obj_face.soundtest==47) scr_sound("wea_cfisend");
if (obj_face.soundtest==48) scr_sound("wea_spli");
if (obj_face.soundtest==49) scr_sound("wea_plas");
if (obj_face.soundtest==50) scr_sound("wea_thor");
if (obj_face.soundtest==51) scr_sound("wea_thorend");
if (obj_face.soundtest==52) scr_sound("wea_banana");

if (obj_face.soundtest==53) scr_sound("exp_turret");
if (obj_face.soundtest==54) scr_sound("exp_rock");
if (obj_face.soundtest==55) scr_sound("exp_mpfb");
if (obj_face.soundtest==56) scr_sound("exp_nuke");
if (obj_face.soundtest==57) scr_sound("exp_shoc");
if (obj_face.soundtest==58) scr_sound("exp_spli");
if (obj_face.soundtest==59) scr_sound("exp_nano");
if (obj_face.soundtest==60) scr_sound("exp_meta",1);
if (obj_face.soundtest==61) scr_sound("exp_meta",2);
if (obj_face.soundtest==62) scr_sound("exp_glass");
if (obj_face.soundtest==63) scr_sound("exp_miniglass");
if (obj_face.soundtest==64) scr_sound("exp_boss");
if (obj_face.soundtest==65) scr_sound("exp_pew");

if (obj_face.soundtest==66) scr_sound("iji_hitfloor");
if (obj_face.soundtest==67) scr_sound("iji_swiped");
if (obj_face.soundtest==68) scr_sound("iji_sworded");
if (obj_face.soundtest==69) scr_sound("iji_land");
if (obj_face.soundtest==70) scr_sound("iji_land2");
if (obj_face.soundtest==71) scr_sound("iji_jump",1);
if (obj_face.soundtest==72) scr_sound("iji_jump",2);
if (obj_face.soundtest==73) scr_sound("iji_kick",1);
if (obj_face.soundtest==74) scr_sound("iji_kick",2);
if (obj_face.soundtest==75) scr_sound("iji_pain",1);
if (obj_face.soundtest==76) scr_sound("iji_pain",2);
if (obj_face.soundtest==77) scr_sound("iji_pain",3);
if (obj_face.soundtest==78) scr_sound("iji_bigpain",1);
if (obj_face.soundtest==79) scr_sound("iji_bigpain",2);
if (obj_face.soundtest==80) scr_sound("iji_death");
if (obj_face.soundtest==81) {scr_sound("iji_damnit"); subtitle="`Hhh, damnit`";}
if (obj_face.soundtest==82) {scr_sound("iji_cry",1); subtitle="`No`";}
if (obj_face.soundtest==83) {scr_sound("iji_cry",2); subtitle="`I'm sorry`";}
if (obj_face.soundtest==84) {scr_sound("iji_berserk",1); subtitle="`Die`";}
if (obj_face.soundtest==85) {scr_sound("iji_berserk",2); subtitle="`Huh, you die`";}
if (obj_face.soundtest==86) {scr_sound("iji_berserk",3); subtitle="`Yaaah`";}
if (obj_face.soundtest==87) {scr_sound("iji_ougi1"); subtitle="`Oh yeah?`";}
if (obj_face.soundtest==88) scr_sound("iji_ougi2");
if (obj_face.soundtest==89) scr_sound("iji_breathe");
if (obj_face.soundtest==90) scr_sound("iji_basepain");

if (obj_face.soundtest==91) scr_sound("dan_choke");
if (obj_face.soundtest==92) scr_sound("dan_death");
if (obj_face.soundtest==93) scr_sound("tur_appear");
if (obj_face.soundtest==94) scr_sound("tur_find");
if (obj_face.soundtest==95) scr_sound("tur_lose");
if (obj_face.soundtest==96) {scr_sound("sco_find",1); subtitle="`Stop`";}
if (obj_face.soundtest==97) {scr_sound("sco_find",2); subtitle="`Hold it`";}
if (obj_face.soundtest==98) scr_sound("sco_death",1);
if (obj_face.soundtest==99) scr_sound("sco_death",2);
if (obj_face.soundtest==100) {scr_sound("sol_find",1); subtitle="`Halt`";}
if (obj_face.soundtest==101) {scr_sound("sol_find",2); subtitle="`Hey`";}
if (obj_face.soundtest==102) scr_sound("sol_pain",1);
if (obj_face.soundtest==103) scr_sound("sol_pain",2);
if (obj_face.soundtest==104) scr_sound("sol_death",1);
if (obj_face.soundtest==105) scr_sound("sol_death",2);
if (obj_face.soundtest==106) {scr_sound("com_find",1); subtitle="`Contact`";}
if (obj_face.soundtest==107) {scr_sound("com_find",2); subtitle="`Incoming`";}
if (obj_face.soundtest==108) scr_sound("com_pain",1);
if (obj_face.soundtest==109) scr_sound("com_pain",2);
if (obj_face.soundtest==110) scr_sound("com_death",1);
if (obj_face.soundtest==111) scr_sound("com_death",2);
if (obj_face.soundtest==112) {scr_sound("eli_find",1); subtitle="`Intruder`";}
if (obj_face.soundtest==113) {scr_sound("eli_find",2); subtitle="`Hostile`";}
if (obj_face.soundtest==114) scr_sound("eli_pain",1);
if (obj_face.soundtest==115) scr_sound("eli_pain",2);
if (obj_face.soundtest==116) scr_sound("eli_death",1);
if (obj_face.soundtest==117) scr_sound("eli_death",2);
if (obj_face.soundtest==118) scr_sound("shr_step");
if (obj_face.soundtest==119) {scr_sound("tro_find",1); subtitle="`Get 'em`";}
if (obj_face.soundtest==120) {scr_sound("tro_find",2); subtitle="`Die`";}
if (obj_face.soundtest==121) scr_sound("tro_pain",1);
if (obj_face.soundtest==122) scr_sound("tro_pain",2);
if (obj_face.soundtest==123) scr_sound("tro_death",1);
if (obj_face.soundtest==124) scr_sound("tro_death",2);
if (obj_face.soundtest==125) {scr_sound("ber_find",1); subtitle="`Come here`";}
if (obj_face.soundtest==126) {scr_sound("ber_find",2); subtitle="`Kill`";}
if (obj_face.soundtest==127) scr_sound("ber_pain",1);
if (obj_face.soundtest==128) scr_sound("ber_pain",2);
if (obj_face.soundtest==129) {scr_sound("ber_ciretako",1); subtitle="`Ciretako`";}
if (obj_face.soundtest==130) scr_sound("bea_find",1);
if (obj_face.soundtest==131) scr_sound("bea_find",2);
if (obj_face.soundtest==132) scr_sound("bea_jump");
if (obj_face.soundtest==133) scr_sound("asa_pain",1);
if (obj_face.soundtest==134) scr_sound("asa_pain",2);
if (obj_face.soundtest==135) scr_sound("ann_step");
if (obj_face.soundtest==136) {scr_sound("ann_find",1); subtitle="`Annihilate`";}
if (obj_face.soundtest==137) {scr_sound("ann_find",2); subtitle="`Terminate`";}
if (obj_face.soundtest==138) scr_sound("ann_destroy");

if (obj_face.soundtest==139) scr_sound("kro_pain",1);
if (obj_face.soundtest==140) scr_sound("kro_pain",2);
if (obj_face.soundtest==141) scr_sound("kro_death");
if (obj_face.soundtest==142) {scr_sound("kro_ambient1"); subtitle="`Hold still`";}
if (obj_face.soundtest==143) {scr_sound("kro_ambient2"); subtitle="`You can't hide`";}
if (obj_face.soundtest==144) {scr_sound("kro_ambient3"); subtitle="`Try to stop this`";}
if (obj_face.soundtest==145) {scr_sound("kro_win"); subtitle="`The strong prevail, Anomaly - your race is history`";}
if (obj_face.soundtest==146) scr_sound("kro_emote2");
if (obj_face.soundtest==147) {scr_sound("ash_ambient",1); subtitle="`Just die`";}
if (obj_face.soundtest==148) {scr_sound("ash_ambient2",1); subtitle="`Ahahahahahahaha`";}
if (obj_face.soundtest==149) {scr_sound("ash_ambient",3); subtitle="`Come on`";}
if (obj_face.soundtest==150) {scr_sound("ash_ambient",4); subtitle="`You're mine`";}
if (obj_face.soundtest==151) scr_sound("ash_pain");
if (obj_face.soundtest==152) scr_sound("ash_death");
if (obj_face.soundtest==153) {scr_sound("ash_win"); subtitle="`Huh, easiest bounty yet`";}
if (obj_face.soundtest==154) {scr_sound("ash_win2"); subtitle="`Finally`";}
if (obj_face.soundtest==155) scr_sound("pro_powerdown");
if (obj_face.soundtest==156) scr_sound("pro_beep1");
if (obj_face.soundtest==157) scr_sound("pro_beep2",1);
if (obj_face.soundtest==158) scr_sound("pro_beep3");

if (obj_face.soundtest==159) {scr_sound("ios_ambient1",1); subtitle="`Get down here and fight`";}
if (obj_face.soundtest==160) {scr_sound("ios_ambient2",1); subtitle="`Hold still`";}
if (obj_face.soundtest==161) {scr_sound("ios_ambient3",1); subtitle="`Gotcha`";}
if (obj_face.soundtest==162) {scr_sound("ios_ambient4",1); subtitle="`Huh, yeah right`";}
if (obj_face.soundtest==163) {scr_sound("ios_ambient5",1); subtitle="`Ahahahahaha`";}
if (obj_face.soundtest==164) {scr_sound("ios_win"); subtitle="`Nothing but a mortal`";}
if (obj_face.soundtest==165) scr_sound("ios_pain");
if (obj_face.soundtest==166) scr_sound("io2_jump");
if (obj_face.soundtest==167) scr_sound("io2_kicked");
if (obj_face.soundtest==168) scr_sound("io2_melee");
if (obj_face.soundtest==169) scr_sound("io2_melee2");
if (obj_face.soundtest==170) scr_sound("io2_death");
if (obj_face.soundtest==171) {scr_sound("io2_win"); subtitle="`Nothing but a mortal`";}
if (obj_face.soundtest==172) scr_sound("tor_fire");
if (obj_face.soundtest==173) scr_sound("tor_fly");
if (obj_face.soundtest==174) scr_sound("tor_gather");
if (obj_face.soundtest==175) scr_sound("tor_spark");
if (obj_face.soundtest==176) scr_sound("tor_eruption");
if (obj_face.soundtest==177) {scr_sound("tor_ambient",1); subtitle="`It's useless, human`";}
if (obj_face.soundtest==178) {scr_sound("tor_ambient",2); subtitle="`Die`";}
if (obj_face.soundtest==179) {scr_sound("tor_ambient",3); subtitle="`You're fighting death, human`";}
if (obj_face.soundtest==180) {scr_sound("tor_ambient",4); subtitle="`Don't think it's over so easily`";}
if (obj_face.soundtest==181) {scr_sound("tor_win"); subtitle="`Like a spark to the fire`";}
if (obj_face.soundtest==182) scr_sound("tor_pain");
if (obj_face.soundtest==183) scr_sound("tor_emote2");
if (obj_face.soundtest==184) scr_sound("tor_emote3");

if (obj_face.soundtest==185)
    scr_music("mus_secintro");
if (obj_face.soundtest==186)
    scr_music("mus_sec1");
if (obj_face.soundtest==187)
    scr_music("mus_sec2");
if (obj_face.soundtest==188)
    scr_music("mus_sec3");
if (obj_face.soundtest==189)
    scr_music("mus_sec4");
if (obj_face.soundtest==190)
    scr_music("mus_sec5");
if (obj_face.soundtest==191)
    scr_music("mus_boss");
if (obj_face.soundtest==192)
    scr_music("mus_tor");
if (obj_face.soundtest==193)
    scr_music("mus_ending");
if (obj_face.soundtest==194)
    scr_music("mus_mainmenu");
if (obj_face.soundtest==195)
    scr_music("mus_clear");
if (obj_face.soundtest==196)
    scr_music("mus_darkstroke");
if (obj_face.soundtest==197)
    scr_music("mus_lightstroke");
if (obj_face.soundtest==198)
    scr_music("mus_calm");
if (obj_face.soundtest==199)
    scr_music("mus_dark");
if (obj_face.soundtest==200)
    scr_music("mus_sad");
if (obj_face.soundtest==201)
    scr_music("mus_asha");
if (obj_face.soundtest==202)
    scr_music("mus_gameover");
if (obj_face.soundtest==203)
    scr_music("mus_hero3d");
if (obj_face.soundtest==204)
    scr_music("mus_doom");
if (obj_face.soundtest==205){
    scr_seczmusicinit();
    scr_seczmusicchange();
    alarm[4]=512;
    seczmusic=1;
    }
if (obj_face.soundtest==206){scr_sound("ext_ansaksie",1); subtitle="`Not a chance`";}
if (obj_face.soundtest==207){scr_sound("ext_ansaksie",2); subtitle="`Nice try`";}
if (obj_face.soundtest==208){scr_sound("ext_ansaksie",3); subtitle="`Oh shut up, Iosa`";}
if (obj_face.soundtest==209){scr_sound("ext_ansaksie",4); subtitle="`Not so tough anymore huh?`";}
if (obj_face.soundtest==210){scr_sound("ext_ansaksie",5); subtitle="`Let's go, Anomaly`";}
if (obj_face.soundtest==211){scr_sound("ext_ansaksie",6); subtitle="`Stop fooling around, Anomaly`";}
if (obj_face.soundtest==212) scr_sound("ext_impulseexplo");
if (obj_face.soundtest==213) scr_sound("ext_barrier");
if (obj_face.soundtest==214) scr_sound("ext_barrierexplo");
