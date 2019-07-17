//SABOTCREATE executes all following sabotcreates,
//call them individually if preferred

//SSwarp kills, boss hints, outfit, seczmusic, time to live,
//xppool, store backups, delete ribbon

//Remove horse stuff
with (obj_horseflip) instance_destroy();
with (obj_horseflip2) instance_destroy();
with (obj_horsepup) instance_destroy();
with (obj_horsecoin) instance_destroy();
with (obj_horseenemy) instance_destroy();
with (obj_horseblocker) instance_destroy();

//Sector 1 999999 tile layer (human blood)
if (room==rom_sector1 && global.noblood)
    tile_layer_hide(999999);

//Sector 3 650 tile layer (not horse)
if (room==rom_sector3 && !global.horse)
    tile_layer_hide(650);

//Sector 7 888 tile layer (not horse)
if (room==rom_sector7 && !global.horse)
    tile_layer_hide(888);

//Sector 9 888 tile layer (not horse)
if (room==rom_sector9 && !global.horse)
    tile_layer_hide(888);

//Sector X 888 tile layer (not horse)
if (room==rom_sectorx && !global.horse)
    tile_layer_hide(888);

//Sector 15 999999 tile layer (destroyed ground)
if (room==rom_sector15){
    tile_layer_hide(999999);
    background_index[2]=bg_finalsky3;
    background_index[3]=bg_finalsky4;
    }
//Sector 15 999990 tile layer (destroyed wall)
if (room==rom_sector15){
    tile_layer_hide(999990);
    }

//Music volume
scr_musicvolume();

//Gamma object
instance_create(0,0,obj_gamma);
global.gamma=0;
global.gammagreen=0;
global.gammared=0;
global.gammablue=0;

//Sound isplaying hack variables
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
global.voc_glo_kick=0;

//Get killdatanames
scr_killdata();

//Time defaults
drawtimestring="0.00"
drawtottimestring="0:00.00"

//Lightrave (shoot to brighten) treshold
lightravebottom=-0.4;

//Maximum charge
if (room==rom_sectorx)
    global.tormaximumcharge=0;

//Turbo mode
if (global.turbomode==1)
    room_speed=60;
else if (global.turbomode==2)
    room_speed=1000;

//Boss hints
if (room==rom_sector3 || room==rom_sector5 || room==rom_sector7 || room==rom_sector9 || room==rom_sector16)
    global.bosshint=0;

//Outfit
if (global.outfit==1){
sprite_assign(spr_basic,spr_outfit_basic);
sprite_assign(spr_basicleft,spr_outfit_basicleft);
sprite_assign(spr_climb,spr_outfit_climb);
sprite_assign(spr_climbleft,spr_outfit_climbleft);
sprite_assign(spr_duckingpain,spr_outfit_duckingpain);
sprite_assign(spr_duckingpainleft,spr_outfit_duckingpainleft);
sprite_assign(spr_duck,spr_outfit_duck);
sprite_assign(spr_duckleft,spr_outfit_duckleft);
sprite_assign(spr_jump,spr_outfit_jump);
sprite_assign(spr_jumpleft,spr_outfit_jumpleft);
sprite_assign(spr_run,spr_outfit_run);
sprite_assign(spr_runleft,spr_outfit_runleft);
sprite_assign(spr_runfire,spr_outfit_runfire);
sprite_assign(spr_runfireleft,spr_outfit_runfireleft);
sprite_assign(spr_pain,spr_outfit_pain);
sprite_assign(spr_painleft,spr_outfit_painleft);
sprite_assign(spr_fire,spr_outfit_fire);
sprite_assign(spr_fireleft,spr_outfit_fireleft);
sprite_assign(spr_getup,spr_outfit_getup);
sprite_assign(spr_getupleft,spr_outfit_getupleft);
sprite_assign(spr_hitfloor,spr_outfit_hitfloor);
sprite_assign(spr_hitfloorleft,spr_outfit_hitfloorleft);
sprite_assign(spr_kickstrong,spr_outfit_kickstrong);
sprite_assign(spr_kickstrongleft,spr_outfit_kickstrongleft);
sprite_assign(spr_knockdown,spr_outfit_knockdown);
sprite_assign(spr_knockdownleft,spr_outfit_knockdownleft);
sprite_assign(spr_lookaround,spr_outfit_lookaround);
sprite_assign(spr_lookaroundleft,spr_outfit_lookaroundleft);
sprite_assign(spr_pushbutton,spr_outfit_pushbutton);
sprite_assign(spr_pushbuttonleft,spr_outfit_pushbuttonleft);
sprite_assign(spr_standup,spr_outfit_standup);
sprite_assign(spr_standupleft,spr_outfit_standupleft);
sprite_assign(spr_xpants,spr_outfit_xpants);
sprite_assign(spr_blackjump,spr_outfit_blackjump);
sprite_assign(spr_blackstandup,spr_outfit_blackstandup);
sprite_assign(spr_ijimist,spr_outfit_ijimist);
sprite_assign(spr_ijimist2,spr_outfit_ijimist2);
sprite_assign(spr_tasenshredder_basiciji,spr_outfit_shredderbasiciji);
sprite_assign(spr_tasenshredder_basicijileft,spr_outfit_shredderbasicijileft);
sprite_assign(spr_tasenshredder_geton,spr_outfit_shreddergeton);
sprite_assign(spr_tasenshredder_getonleft,spr_outfit_shreddergetonleft);
sprite_assign(spr_destroyed_iji,spr_outfit_destroyediji);
sprite_assign(spr_destroyed_iji_left,spr_outfit_destroyedijileft);
sprite_assign(spr_iosa_destroyed_iji,spr_outfit_iosadestroyediji);
sprite_assign(spr_iosa_destroyed_ijileft,spr_outfit_iosadestroyedijileft);
sprite_assign(spr_ougi,spr_outfit_ougi);
}
else{
sprite_assign(spr_basic,spr_iji_basic);
sprite_assign(spr_basicleft,spr_iji_basicleft);
sprite_assign(spr_climb,spr_iji_climb);
sprite_assign(spr_climbleft,spr_iji_climbleft);
sprite_assign(spr_duckingpain,spr_iji_duckingpain);
sprite_assign(spr_duckingpainleft,spr_iji_duckingpainleft);
sprite_assign(spr_duck,spr_iji_duck);
sprite_assign(spr_duckleft,spr_iji_duckleft);
sprite_assign(spr_jump,spr_iji_jump);
sprite_assign(spr_jumpleft,spr_iji_jumpleft);
sprite_assign(spr_run,spr_iji_run);
sprite_assign(spr_runleft,spr_iji_runleft);
sprite_assign(spr_runfire,spr_iji_runfire);
sprite_assign(spr_runfireleft,spr_iji_runfireleft);
sprite_assign(spr_pain,spr_iji_pain);
sprite_assign(spr_painleft,spr_iji_painleft);
sprite_assign(spr_fire,spr_iji_fire);
sprite_assign(spr_fireleft,spr_iji_fireleft);
sprite_assign(spr_getup,spr_iji_getup);
sprite_assign(spr_getupleft,spr_iji_getupleft);
sprite_assign(spr_hitfloor,spr_iji_hitfloor);
sprite_assign(spr_hitfloorleft,spr_iji_hitfloorleft);
sprite_assign(spr_kickstrong,spr_iji_kickstrong);
sprite_assign(spr_kickstrongleft,spr_iji_kickstrongleft);
sprite_assign(spr_knockdown,spr_iji_knockdown);
sprite_assign(spr_knockdownleft,spr_iji_knockdownleft);
sprite_assign(spr_lookaround,spr_iji_lookaround);
sprite_assign(spr_lookaroundleft,spr_iji_lookaroundleft);
sprite_assign(spr_pushbutton,spr_iji_pushbutton);
sprite_assign(spr_pushbuttonleft,spr_iji_pushbuttonleft);
sprite_assign(spr_standup,spr_iji_standup);
sprite_assign(spr_standupleft,spr_iji_standupleft);
sprite_assign(spr_xpants,spr_iji_xpants);
sprite_assign(spr_blackjump,spr_iji_blackjump);
sprite_assign(spr_blackstandup,spr_iji_blackstandup);
sprite_assign(spr_ijimist,spr_iji_ijimist);
sprite_assign(spr_ijimist2,spr_iji_ijimist2);
sprite_assign(spr_tasenshredder_basiciji,spr_iji_shredderbasiciji);
sprite_assign(spr_tasenshredder_basicijileft,spr_iji_shredderbasicijileft);
sprite_assign(spr_tasenshredder_geton,spr_iji_shreddergeton);
sprite_assign(spr_tasenshredder_getonleft,spr_iji_shreddergetonleft);
sprite_assign(spr_destroyed_iji,spr_iji_destroyediji);
sprite_assign(spr_destroyed_iji_left,spr_iji_destroyedijileft);
sprite_assign(spr_iosa_destroyed_iji,spr_iji_iosadestroyediji);
sprite_assign(spr_iosa_destroyed_ijileft,spr_iji_iosadestroyedijileft);
sprite_assign(spr_ougi,spr_iji_ougi);
}

//Parallax
xprev=x;
//Sec Z music
if (room==rom_sectorz)
    scr_seczmusicinit();

//Time to live
if (global.specialtrigger16){
if (global.sector==1){ ttlmin=3; ttlsec=59;}
if (global.sector==2){ ttlmin=3; ttlsec=59;}
if (global.sector==3){ ttlmin=3; ttlsec=59;}
if (global.sector==4){ ttlmin=5; ttlsec=59;}
if (global.sector==5){ ttlmin=5; ttlsec=59;}
if (global.sector==6){ ttlmin=5; ttlsec=59;}
if (global.sector==7){ ttlmin=5; ttlsec=59;}
if (global.sector==8){ ttlmin=5; ttlsec=59;}
if (global.sector==9){ ttlmin=7; ttlsec=59;}
if (global.sector==0){ ttlmin=9; ttlsec=59;}
ttlhun=99;
if (global.really){ ttlmin=1; ttlsec=59;}
}

//Store away backups
for (i=1;i<800;i+=1)
    backup_killdata[i]=global.killdata[i];
backup_numribbons=global.numribbons;
backup_seconds=global.seconds;
backup_damage=global.damage;
backup_kills=global.kills;
backup_cracks=global.cracks;
backup_fails=global.fails;
backup_sector=global.sector;
backup_level=global.level;
backup_points=global.points;
backup_xp=global.xp;
backup_weapon2=global.weapon2;
backup_weapon3=global.weapon3;
backup_weapon4=global.weapon4;
backup_weapon5=global.weapon5;
backup_weapon6=global.weapon6;
backup_weapon7=global.weapon7;
backup_weapon8=global.weapon8;
backup_weapon9=global.weapon9;
backup_weapon10=global.weapon10;
backup_weapon11=global.weapon11;
backup_weapon12=global.weapon12;
backup_weapon13=global.weapon13;
backup_weapon14=global.weapon14;
backup_weapon15=global.weapon15;
backup_weapon16=global.weapon16;
backup_weapon17=global.weapon17;
backup_weapon21=global.weapon21;
backup_healthlevel=global.healthlevel;
backup_attacklevel=global.attacklevel;
backup_assimilatelevel=global.assimilatelevel;
backup_strengthlevel=global.strengthlevel;
backup_cracklevel=global.cracklevel;
backup_tasenlevel=global.tasenlevel;
backup_komatolevel=global.komatolevel;
backup_jumplevel=global.jumplevel;
backup_armorlevel=global.armorlevel;
backup_specialtrigger1=global.specialtrigger1;
backup_specialtrigger2=global.specialtrigger2;
backup_specialtrigger4=global.specialtrigger4;
backup_specialtrigger8=global.specialtrigger8;
backup_specialtrigger16=global.specialtrigger16;
backup_specialtrigger32=global.specialtrigger32;
backup_specialtriggerb1=global.specialtriggerb1;
backup_specialtriggerb2=global.specialtriggerb2;
backup_specialtriggerb4=global.specialtriggerb4;
backup_specialtriggerc=global.specialtriggerc;
backup_ammo2=global.ammo2;
backup_ammo3=global.ammo3;
backup_ammo4=global.ammo4;
backup_ammo6=global.ammo6;
backup_ammo7=global.ammo7;
backup_ammo8=global.ammo8;
entertotcracks=0;
global.levelstation=0;
global.weapstation=0;

//load passive setting
global.passive=global.killdata[799];

//delete ribbon
if (room==rom_sector1)
    global.specialtrigger8=1;
if (!global.specialtrigger8 || global.sswarp){
    with (obj_ribbon){
        if (visible)
            instance_destroy();
        }
    }
if (room!=rom_sectorz && global.sector!=11 && global.sector!=12 && global.sector!=13 && global.sector!=14 && global.sector!=15 && global.sector!=16)
    global.specialtrigger8=0;

//set coordinates
x=obj_iji.x-395;
y=obj_iji.y-230;
finalx=x;
finaly=y;
ignoresmooth=1;
alarm[4]=2;

scr_sabotcreate2();
scr_sabotcreate3();
scr_sabotcreate4();