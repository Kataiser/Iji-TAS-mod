with (obj_sabot){

if (!pressedretry && !playinghero3d && !cannotrestart && room!=rom_sector16){
repeat(10)
    sound_stop_all();
scr_stopmusic();
pressedretry=1;
with (obj_fadeshape)
    instance_destroy();
with (obj_fadeshape2)
    instance_destroy();
with (obj_breakscreen)
    instance_destroy();
with (obj_paused)
    instance_destroy();
with (obj_marker)
    instance_destroy();
with (obj_fade)
    instance_destroy();
with (obj_pauseeffect)
    instance_destroy();
with (obj_pausefullcover)
    instance_destroy();
with (obj_maincover)
    instance_destroy();
with (obj_onoff)
    instance_destroy();
//Normal Sectors
if (room!=rom_sector11 && room!=rom_sector12 && room!=rom_sector13 && room!=rom_sector14 && room!=rom_sector15 && room!=rom_sector16 && room!=rom_sectorz){
    global.seconds=0;
    global.damage=0;
    global.kills=0;
    global.cracks=0;
    global.fails=0;
    }
//Boss room
else{
    global.seconds=backup_seconds;
    donotpushs=1; //don't push the seconds counter forward on the seconds-cycling frame
    global.damage=backup_damage;
    global.kills=backup_kills;
    global.cracks=backup_cracks;
    global.fails=backup_fails;
    }

for (i=1;i<800;i+=1)
    global.killdata[i]=backup_killdata[i];
global.numribbons=backup_numribbons;
global.sector=backup_sector;
global.level=backup_level;
global.points=backup_points;
global.xp=backup_xp;
global.weapon2=backup_weapon2;
global.weapon3=backup_weapon3;
global.weapon4=backup_weapon4;
global.weapon5=backup_weapon5;
global.weapon6=backup_weapon6;
global.weapon7=backup_weapon7;
global.weapon8=backup_weapon8;
global.weapon9=backup_weapon9;
global.weapon10=backup_weapon10;
global.weapon11=backup_weapon11;
global.weapon12=backup_weapon12;
global.weapon13=backup_weapon13;
global.weapon14=backup_weapon14;
global.weapon15=backup_weapon15;
global.weapon16=backup_weapon16;
global.weapon17=backup_weapon17;
global.weapon21=backup_weapon21;
global.healthlevel=backup_healthlevel;
global.attacklevel=backup_attacklevel;
global.assimilatelevel=backup_assimilatelevel;
global.strengthlevel=backup_strengthlevel;
global.cracklevel=backup_cracklevel;
global.tasenlevel=backup_tasenlevel;
global.komatolevel=backup_komatolevel;
global.jumplevel=backup_jumplevel;
global.armorlevel=backup_armorlevel;
global.specialtrigger1=backup_specialtrigger1;
global.specialtrigger2=backup_specialtrigger2;
global.specialtrigger4=backup_specialtrigger4;
global.specialtrigger8=backup_specialtrigger8;
global.specialtrigger16=backup_specialtrigger16;
global.specialtrigger32=backup_specialtrigger32;
global.specialtriggerb1=backup_specialtriggerb1;
global.specialtriggerb2=backup_specialtriggerb2;
global.specialtriggerb4=backup_specialtriggerb4;
global.specialtriggerc=backup_specialtriggerc;
global.ammo2=backup_ammo2;
global.ammo3=backup_ammo3;
global.ammo4=backup_ammo4;
global.ammo6=backup_ammo6;
global.ammo7=backup_ammo7;
global.ammo8=backup_ammo8;
global.totcracks+=totreduced;

tempid=instance_create(x,y,obj_loading);
if (room==rom_sector1) tempid.destination="sector1";
if (room==rom_sector2) tempid.destination="sector2";
if (room==rom_sector3) tempid.destination="sector3";
if (room==rom_sector11) tempid.destination="sector11";
if (room==rom_sector4) tempid.destination="sector4";
if (room==rom_sector5) tempid.destination="sector5";
if (room==rom_sector12) tempid.destination="sector12";
if (room==rom_sector6) tempid.destination="sector6";
if (room==rom_sector7) tempid.destination="sector7";
if (room==rom_sector13) tempid.destination="sector13";
if (room==rom_sector8) tempid.destination="sector8";
if (room==rom_sector9) tempid.destination="sector9";
if (room==rom_sector14) tempid.destination="sector14";
if (room==rom_sectorx) tempid.destination="sectorx";
if (room==rom_sector15) tempid.destination="sector15";
if (room==rom_sectorz) tempid.destination="sectorz";
instance_create(x,y,obj_loadingback);
}
}