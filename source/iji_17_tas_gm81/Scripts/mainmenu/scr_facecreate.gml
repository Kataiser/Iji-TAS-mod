repeat(5)
    sound_stop_all();
scr_musicvolume();
scr_appendsave();
if (!file_exists("ijisaveext.sav"))
    scr_createkillfile();

//Stuff
global.assimilatebase=0; //base ammo cap
global.assimilatesize=5; //plus ammo per assimilate level
global.horse=0;
global.neutralkc=5; //OVER this is neutral
global.berserkkc=30; //OVER this is berserk
obj_menutext.difinfoy=-256;
instance_create(0,0,obj_gamma);
for (i=0;i<800;i+=1)
    global.killdata[i]=0;
intropic=floor(random(3));
if (intropic>=2)
    intropic=0;
drawsubtitle=0;
subtitle="";
soundtestmax=214;
warp=1;
sdwarp=1;
weaponinfo=1;
enemyinfo=1;
sectormaps=1;
soundtest=0;
//global.scrambler=0;
global.passive=0;
global.trucefix=0;
global.truce=0;
global.truce2=0;
global.tormaximumcharge=0;
global.iosaphase=0;
global.hiddenskill1=0;
global.hiddenskill2=0;
global.hiddenskill3=0;
global.poster1=0;
global.poster2=0;
global.poster3=0;
global.poster4=0;
global.poster5=0;
global.poster6=0;
global.poster7=0;
global.poster8=0;
global.poster9=0;
global.poster10=0;
global.extras1=0;
global.extras2=0;
global.extras3=0;
global.extras4=0;
global.extras5=0;
global.extras6=0;
global.extras7=0;
global.extras8=0;
global.specialtrigger1=0;
global.specialtrigger2=0;
global.specialtrigger4=0;
global.specialtrigger8=0;
global.specialtrigger16=0;
global.specialtrigger32=0;
global.specialtriggerb1=0;
global.specialtriggerb2=0;
global.specialtriggerb4=0;
global.specialtriggerc=0;
global.nhours=9;
global.nminutes=59;
global.nseconds=59;
global.hhours=9;
global.hminutes=59;
global.hseconds=59;
global.ehours=9;
global.eminutes=59;
global.eseconds=59;
global.uhours=9;
global.uminutes=59;
global.useconds=59;
global.maxribbons=0;
global.numribbons=0;
global.sds1=0;
global.sds2=0;
global.sds3=0;
global.sds4=0;
global.sds5=0;
global.sds6=0;
global.sds7=0;
global.sds8=0;
global.sds9=0;
global.sds10=0;
//global.outfit=0;
global.suddendeath=0;
global.sswarp=0;
global.seconds=0;
global.difficulty=0;
global.facing=0;
global.state=0;
global.shakescreen=0;
global.dead=0;
global.armor=0;
global.hp=0;
global.chat=0;
global.chats=0;
global.maxlevel=0;
global.time=0;
global.erasetop=0;
global.cut=0;
global.ignoremessagescroll=0;
global.tempshred=0;
global.tempid=0;
global.xpcount=0;
global.ignorestation=0;
global.annitemp=0;
global.tempcru1=0;
global.tempcru2=0;
global.security=0;
global.cracktext="0";
global.running=0;
global.cracking=0;
global.colcount=0;
global.nodes=0;
global.youcol=0;
global.yourow=0;
global.cracktime=0;
global.weapstation=0;
global.levelstation=0;
global.cfissparkcycle=0;
global.outline=0;
global.bosshint=0;
global.really=0;

global.gamma=0;
global.gammared=0;
global.gammagreen=0;
global.gammablue=0;
alarm[0]=1;
keyboard_unset_map();
if (file_exists("ijisave.sav")==0){
    scr_createfile();
    scr_writesum();
    }
scr_readsum(1);
if (wrongsum){
    global.kickkey=ord("Z");
    global.firekey=ord("X");
    global.usekey=ord("C");
    global.weap5key=ord("Q");
    global.weap6key=ord("W");
    global.weap7key=ord("E");
    global.weap8key=ord("R");
    global.prevkey=ord("A");
    global.specialkey=ord("S");
    global.nextkey=ord("D");
    global.noshake=0;
    global.detaillevel=0; //UNUSED: global.specialbake is the real variable
    global.nosound=0;
    global.novoice=0;
    global.nomusic=0;
    global.nogamma=0;
    global.noblood=0;
    global.specialbake=0;
    global.hidetime=1;
    }
else
    scr_loadkeys();
if (global.kickkey!=global.firekey && global.kickkey!=global.usekey && global.kickkey!=global.weap5key && global.kickkey!=global.weap6key && global.kickkey!=global.weap7key && global.kickkey!=global.weap8key && global.firekey!=global.usekey && global.firekey!=global.weap5key && global.firekey!=global.weap6key && global.firekey!=global.weap7key && global.firekey!=global.weap8key && global.usekey!=global.weap5key && global.usekey!=global.weap6key && global.usekey!=global.weap7key && global.usekey!=global.weap8key && global.weap5key!=global.weap6key && global.weap5key!=global.weap7key && global.weap5key!=global.weap8key && global.weap6key!=global.weap7key && global.weap6key!=global.weap8key && global.weap7key!=global.weap8key && global.prevkey!=global.usekey && global.prevkey!=global.firekey && global.prevkey!=global.kickkey && global.prevkey!=global.weap5key && global.prevkey!=global.weap6key && global.prevkey!=global.weap7key && global.prevkey!=global.weap8key && global.prevkey!=global.nextkey && global.prevkey!=global.specialkey && global.nextkey!=global.usekey && global.nextkey!=global.firekey && global.nextkey!=global.kickkey && global.nextkey!=global.weap5key && global.nextkey!=global.weap6key && global.nextkey!=global.weap7key && global.nextkey!=global.weap8key && global.nextkey!=global.specialkey && global.specialkey!=global.usekey && global.specialkey!=global.firekey && global.specialkey!=global.kickkey && global.specialkey!=global.weap5key && global.specialkey!=global.weap6key && global.specialkey!=global.weap7key && global.specialkey!=global.weap8key){
    //Nothing
    }
else{
    global.kickkey=ord("Z");
    global.firekey=ord("X");
    global.usekey=ord("C");
    global.weap5key=ord("Q");
    global.weap6key=ord("W");
    global.weap7key=ord("E");
    global.weap8key=ord("R");
    global.prevkey=ord("A");
    global.specialkey=ord("S");
    global.nextkey=ord("D");
    }

menu=0;
menuappear=0;
menuwait=210;
count=14;
temptier="nonexistant";
tier="nonexistant";
image_speed=0.25;
instance_create(0,0,obj_mainsdindicator);
//scrolling stuff
x-=110;
background_x[1]-=90;
background_x[2]+=16;
background_x[3]+=16;
background_x[4]+=16;
background_x[5]+=16;
global.wty=0;