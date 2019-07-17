//Argument0 is specific song
global.music=""; //currently playing music
tempmusic=0;

//SECINTRO
//if (room==rom_sector1 || room==rom_sector2 || argument0==1){
    if (file_exists("music\secintro.mp3"))
        sound_replace(mus_secintro,"music\secintro.mp3",1,1);
    else if (file_exists("secintro.mp3"))
        sound_replace(mus_secintro,"secintro.mp3",1,1);
//    }
//SEC1
//if (room==rom_sector1 || room==rom_sector6 || argument0==2){
    if (file_exists("music\sec1.mp3"))
        sound_replace(mus_sec1,"music\sec1.mp3",1,1);
    else if (file_exists("sec1.mp3"))
        sound_replace(mus_sec1,"sec1.mp3",1,1);
//    }
//SEC2
//if (room==rom_sector2 || room==rom_sector7 || argument0==3){
    if (file_exists("music\sec2.mp3"))
        sound_replace(mus_sec2,"music\sec2.mp3",1,1);
    else if (file_exists("sec2.mp3"))
        sound_replace(mus_sec2,"sec2.mp3",1,1);
//    }
//SEC3
//if (room==rom_sector3 || room==rom_sector8 || argument0==4){
    if (file_exists("music\sec3.mp3"))
        sound_replace(mus_sec3,"music\sec3.mp3",1,1);
    else if (file_exists("sec3.mp3"))
        sound_replace(mus_sec3,"sec3.mp3",1,1);
//    }
//SEC4
//if (room==rom_sector4 || room==rom_sector9 || argument0==5){
    if (file_exists("music\sec4.mp3"))
        sound_replace(mus_sec4,"music\sec4.mp3",1,1);
    else if (file_exists("sec4.mp3"))
        sound_replace(mus_sec4,"sec4.mp3",1,1);
//    }
//SEC5
//if (room==rom_sector5 || room==rom_sectorx || argument0==6){
    if (file_exists("music\sec5.mp3"))
        sound_replace(mus_sec5,"music\sec5.mp3",1,1);
    else if (file_exists("sec5.mp3"))
        sound_replace(mus_sec5,"sec5.mp3",1,1);
//    }
//BOSS
//if (room==rom_sectorx || room==rom_sector11 || room==rom_sector12 || room==rom_sector13 || room==rom_sector14 || argument0==7){
    if (file_exists("music\boss.mp3"))
        sound_replace(mus_boss,"music\boss.mp3",1,1);
    else if (file_exists("boss.mp3"))
        sound_replace(mus_boss,"boss.mp3",1,1);
//    }
//TOR
//if (room==rom_sector15 || argument0==8){
    if (file_exists("music\tor.mp3"))
        sound_replace(mus_tor,"music\tor.mp3",1,1);
    else if (file_exists("tor.mp3"))
        sound_replace(mus_tor,"tor.mp3",1,1);
//    }
//ENDING
//if (room==rom_cut && global.cut==10 || argument0==9){
    if (file_exists("music\ending.mp3"))
        sound_replace(mus_ending,"music\ending.mp3",1,1);
    else if (file_exists("ending.mp3"))
        sound_replace(mus_ending,"ending.mp3",1,1);
//    }
//MAINMENU
//if (room==rom_main || argument0==10){
    if (file_exists("music\mainmenu.mp3"))
        sound_replace(mus_mainmenu,"music\mainmenu.mp3",1,1);
    else if (file_exists("mainmenu.mp3"))
        sound_replace(mus_mainmenu,"mainmenu.mp3",1,1);
//    }
//CLEAR
//if (room==rom_clear || argument0==11){
    if (file_exists("music\clear.mp3"))
        sound_replace(mus_clear,"music\clear.mp3",1,1);
    else if (file_exists("clear.mp3"))
        sound_replace(mus_clear,"clear.mp3",1,1);
//    }
//DARKSTROKE
//if (room==rom_sectorz || room==rom_sector1 || room==rom_sector2 || room==rom_sector3 || room==rom_sector4 || room==rom_sector5 || room==rom_sector6 || room==rom_sector7 || room==rom_sector8 || room==rom_sector9 || room==rom_sectorx || room==rom_sector11 || room==rom_sector12 || room==rom_sector13 || room==rom_sector14 || room==rom_sector15 || room==rom_sector16 || room==rom_cut || argument0==12){
    if (file_exists("music\darkstroke.mp3"))
        sound_replace(mus_darkstroke,"music\darkstroke.mp3",1,1);
    else if (file_exists("darkstroke.mp3"))
        sound_replace(mus_darkstroke,"darkstroke.mp3",1,1);
//    }
//LIGHTSTROKE
//if (room==rom_sectorz || room==rom_sector1 || room==rom_sector2 || room==rom_sector3 || room==rom_sector4 || room==rom_sector5 || room==rom_sector6 || room==rom_sector7 || room==rom_sector8 || room==rom_sector9 || room==rom_sectorx || room==rom_sector11 || room==rom_sector12 || room==rom_sector13 || room==rom_sector14 || room==rom_sector15 || room==rom_sector16 || room==rom_cut || argument0==13){
    if (file_exists("music\lightstroke.mp3"))
        sound_replace(mus_lightstroke,"music\lightstroke.mp3",0,1);
    else if (file_exists("lightstroke.mp3"))
        sound_replace(mus_lightstroke,"lightstroke.mp3",0,1);
//    }
//CALM
//if (room==rom_sector4 || room==rom_cut || argument0==14 || room==rom_sector11 || (room==rom_clear && (global.sector==9 && global.specialtrigger1==0) || global.sector==3)){
    if (file_exists("music\calm.mp3"))
        sound_replace(mus_calm,"music\calm.mp3",1,1);
    else if (file_exists("calm.mp3"))
        sound_replace(mus_calm,"calm.mp3",1,1);
//    }
//DARK
//if (room==rom_cut || room==rom_sector9 || room==rom_sectorx || room==rom_sector11 || room==rom_sector16 || argument0==15){
    if (file_exists("music\dark.mp3"))
        sound_replace(mus_dark,"music\dark.mp3",1,1);
    else if (file_exists("dark.mp3"))
        sound_replace(mus_dark,"dark.mp3",1,1);
//    }
//SAD
//if (room==rom_cut || argument0==16 || global.wty){
    if (file_exists("music\sad.mp3"))
        sound_replace(mus_sad,"music\sad.mp3",1,1);
    else if (file_exists("sad.mp3"))
        sound_replace(mus_sad,"sad.mp3",1,1);
//    }
//ASHA
//if (room==rom_sector12 || room==rom_sector8 || room==rom_sectorx || argument0==17){
    if (file_exists("music\asha.mp3"))
        sound_replace(mus_asha,"music\asha.mp3",1,1);
    else if (file_exists("asha.mp3"))
        sound_replace(mus_asha,"asha.mp3",1,1);
//    }
//GAMEOVER
//if (room==rom_sectorz || room==rom_sector1 || room==rom_sector2 || room==rom_sector3 || room==rom_sector4 || room==rom_sector5 || room==rom_sector6 || room==rom_sector7 || room==rom_sector8 || room==rom_sector9 || room==rom_sectorx || room==rom_sector11 || room==rom_sector12 || room==rom_sector13 || room==rom_sector14 || room==rom_sector15 || argument0==18){
    if (file_exists("music\gameover.mp3"))
        sound_replace(mus_gameover,"music\gameover.mp3",1,1);
    else if (file_exists("gameover.mp3"))
        sound_replace(mus_gameover,"gameover.mp3",1,1);
//    }
//HERO3D
//if (room==rom_main || room==rom_sector6 || argument0==19){
    if (file_exists("music\hero3d.mp3"))
        sound_replace(mus_hero3d,"music\hero3d.mp3",1,1);
    else if (file_exists("hero3d.mp3"))
        sound_replace(mus_hero3d,"hero3d.mp3",1,1);
//    }
//DOOM
//if (room==rom_sector16 || room==rom_cut || argument0==20){
    if (file_exists("music\doom.mp3"))
        sound_replace(mus_doom,"music\doom.mp3",1,1);
    else if (file_exists("doom.mp3"))
        sound_replace(mus_doom,"doom.mp3",1,1);
//    }
