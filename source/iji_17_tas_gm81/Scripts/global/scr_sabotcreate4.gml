//init hud, init projectile speeds, init settings,
//weapon and camera in bossroom, maxlevel,
//deactivate surrounding world, black start,
//single sector warp

//HUD weapon fix
if (room!=rom_sector11 && room!=rom_sector12 && room!=rom_sector13 && room!=rom_sector14 && room!=rom_sector15 && room!=rom_sector16)
    global.weapon=1;

//create weapons
if(global.weapon2)
    instance_create(obj_sabot.x+674, obj_sabot.y+531, obj_weapon2);
if(global.weapon3)
    instance_create(obj_sabot.x+714, obj_sabot.y+531, obj_weapon3);
if(global.weapon4)
    instance_create(obj_sabot.x+754, obj_sabot.y+531, obj_weapon4);
if(global.weapon5)
    instance_create(obj_sabot.x+634, obj_sabot.y+563, obj_weapon5);
if(global.weapon6)
    instance_create(obj_sabot.x+674, obj_sabot.y+563, obj_weapon6);
if(global.weapon7)
    instance_create(obj_sabot.x+714, obj_sabot.y+563, obj_weapon7);
if(global.weapon8)
    instance_create(obj_sabot.x+754, obj_sabot.y+563, obj_weapon8);
//init HUD
x=obj_iji.x-395;
y=obj_iji.y-230;
finalx=x;
finaly=y;
facadjust=32;
obj_shakescreen.x=x+400
obj_shakescreen.y=y+300
instance_create(x,y+520,obj_hud);
instance_create(x,y,obj_reloader);
instance_create(x+634,y+531,obj_weapon1);

//init projectile speeds
global.rocketspeed=20;
global.mpfbspeed=26;
global.shockspeed=24;

//init settings
if (room==rom_sector5)
    global.specialtrigger1=0;
topmessage3="0";
thundermax=30+random(90);
prevtopmessage="0";
global.textid="0";
global.ignoreall=1;
global.erasetop=10000;
global.topmessage="0";
global.topmessagekilldata="0";
global.viewxoffset=0;
global.viewyoffset=0;
global.shakescreen=0;
global.dead=0;
global.state=1;
global.facing=1;
global.armor=100;
global.hp=global.healthlevel*2;
if (global.suddendeath)
    global.hp=1;
if (room==rom_sectorz)
    global.hp=1;
if (room!=rom_sector11 && room!=rom_sector12 && room!=rom_sector13 && room!=rom_sector14 && room!=rom_sector15 && room!=rom_sector16 && room!=rom_sectorz){
    global.weapon=1;
    global.kills=0;
    global.damage=0;
    global.cracks=0;
    global.fails=0;
    global.seconds=0;
    }
//Change to the correct weapon when entering boss room
else{
if (global.weapon!=1){
    obj_weapon1.image_single=0+(global.weapon9*2);
    if (global.weapon==2)
        obj_weapon2.image_single=1+(global.weapon10*2);
    if (global.weapon==3)
        obj_weapon3.image_single=1+(global.weapon11*2);
    if (global.weapon==4)
        obj_weapon4.image_single=1+(global.weapon12*2);
    if (global.weapon==5)
        obj_weapon5.image_single=1+(global.weapon13*2);
    if (global.weapon==6)
        obj_weapon6.image_single=1+(global.weapon14*2);
    if (global.weapon==7)
        obj_weapon7.image_single=1+(global.weapon15*2);
    if (global.weapon==8)
        obj_weapon8.image_single=1+(global.weapon16*2);
    if (global.weapon==9){
        obj_weapon1.image_single=4;
        obj_weapon2.image_single=1+(global.weapon10*2);
        }
    if (global.weapon==10)
        obj_weapon2.image_single=4;
    if (global.weapon==11)
        obj_weapon3.image_single=4;
    if (global.weapon==12)
        obj_weapon4.image_single=4;
    if (global.weapon==13)
        obj_weapon5.image_single=4;
    if (global.weapon==14)
        obj_weapon6.image_single=4;
    if (global.weapon==15)
        obj_weapon7.image_single=4;
    if (global.weapon==16)
        obj_weapon8.image_single=4;
    if (global.weapon==17){
            obj_weapon1.image_single=1+(global.weapon9*2);
            obj_weapon2.image_single=1+(global.weapon10*2);
            obj_weapon3.image_single=1+(global.weapon11*2);
            obj_weapon4.image_single=1+(global.weapon12*2);
            obj_weapon5.image_single=1+(global.weapon13*2);
            obj_weapon6.image_single=1+(global.weapon14*2);
            obj_weapon7.image_single=1+(global.weapon15*2);
            obj_weapon8.image_single=1+(global.weapon16*2);
            }
        }
    }
//For change weapon sfx
prevweapon=global.weapon;

//alter camera in boss rooms
if (room==rom_sector11 || room==rom_sector12 || room==rom_sector14)
global.viewyoffset=-60;

//init maxlevel
if (room==rom_sectorz || room==rom_sector1)
    global.maxlevel=(5-global.difficulty);
if (room==rom_sector2)
    global.maxlevel=(5-global.difficulty)*2;
if (room==rom_sector3 || room==rom_sector11)
    global.maxlevel=(5-global.difficulty)*3;
if (room==rom_sector4)
    global.maxlevel=(5-global.difficulty)*4;
if (room==rom_sector5 || room==rom_sector12)
    global.maxlevel=(5-global.difficulty)*5;
if (room==rom_sector6)
    global.maxlevel=(5-global.difficulty)*6;
if (room==rom_sector7 || room==rom_sector13)
    global.maxlevel=(5-global.difficulty)*7;
if (room==rom_sector8)
    global.maxlevel=(5-global.difficulty)*8;
if (room==rom_sector9 || room==rom_sector14)
    global.maxlevel=(5-global.difficulty)*9;
if (room==rom_sectorx || room==rom_sector15)
    global.maxlevel=(5-global.difficulty)*10;
if (global.really)
    global.maxlevel=0;
if (global.wty){
lightrave=1;
tile_layer_hide(537934);
instance_create(10176,3264,obj_blocktall);
instance_create(10176,3392,obj_blocktall);
with(obj_camera) instance_destroy();
with(obj_bgspeaker) instance_destroy();
with(obj_enemy) instance_destroy();
with(obj_lamp) instance_destroy();
with(obj_exitsign) instance_destroy();
with(obj_crumble1) instance_destroy();
with(obj_ribbon) instance_destroy();
with(obj_log1){ textid="text195";
if (x>6848 && y<1824) textid="text196";
if (x>10000) textid="text194";
if (x<4200 && y<1600) textid="text193";}
with(obj_poster){ x=3856; y=1472;}
with(obj_ztele) instance_destroy();
with(obj_supercharge) instance_destroy();
with(obj_weaponpickup) instance_destroy();
with(obj_xp) instance_destroy();
with(obj_ammo) instance_destroy();
with(obj_station) instance_destroy();
with(obj_door) instance_destroy();
with(obj_cdoor) instance_destroy();
with(obj_locationmessage) instance_destroy();
with(obj_blackbug) instance_destroy();
with(obj_dripnest) instance_destroy();
with(obj_blitnest) instance_destroy();
with(obj_sec1musictrigger) instance_destroy();
with(obj_trigger){
if (textid!="chat11")
instance_destroy();
}
}

//deactivate surrounding world
if (global.sector!=11 && global.sector!=12 && global.sector!=13 && global.sector!=14 && global.sector!=15){
instance_deactivate_all(1);
instance_activate_object(obj_iji);
instance_activate_object(obj_shakescreen);
}

//Black start
instance_create(x,y,obj_loadingback);
instance_create(x,y,obj_starttransition);
global.gamma=0;
screen_redraw();
alarm[0]=1;

//Single Sector Warp
if (global.sswarp){
    if (global.sector>=3 && room!=rom_sector11 && room!=rom_sector12 && room!=rom_sector13 && room!=rom_sector14 && room!=rom_sector15 && room!=rom_sector16)
        global.jumplevel=2;
    if ((global.sector>=6 || global.sector==0) && room!=rom_sector11 && room!=rom_sector12 && room!=rom_sector13 && room!=rom_sector14 && room!=rom_sector15 && room!=rom_sector16)
        global.jumplevel=3;
    if (global.sector>=4 && room!=rom_sector11 && room!=rom_sector12 && room!=rom_sector13 && room!=rom_sector14 && room!=rom_sector15 && room!=rom_sector16)
        global.armorlevel=2;
    if ((global.sector>=8 || global.sector==0) && room!=rom_sector11 && room!=rom_sector12 && room!=rom_sector13 && room!=rom_sector14 && room!=rom_sector15 && room!=rom_sector16)
        global.armorlevel=3;
    if (room==rom_sector1 || room==rom_sector2 || room==rom_sector3 || room==rom_sector4 || room==rom_sector5 || room==rom_sector6 || room==rom_sector7 || room==rom_sector8 || room==rom_sector9 || room==rom_sectorx){
        if (global.sector==0)
            global.level=45;
        else
            global.level=(global.sector-1)*5;
        global.points=global.level;
        }
    }

//Reset boss hint message variable
if (room==rom_sector3 || room==rom_sector5 || room==rom_sector7 || room==rom_sector9 || room==rom_sectorx)
    global.iimsx=0;

//Time penalty
if (!global.rrkills || global.nomercy || global.fireanytime || global.randomstations || global.noreloads || global.debug){
    if (room==rom_sector1 || room==rom_sector2 || room==rom_sector3 || room==rom_sector4 || room==rom_sector5 || room==rom_sector6 || room==rom_sector7 || room==rom_sector8 || room==rom_sector9 || room==rom_sectorx || room==rom_sectorz)
    global.seconds=600;
    }

//Draw your text over Tor's appear polygons
if (room==rom_sector15)
    depth=-1001;