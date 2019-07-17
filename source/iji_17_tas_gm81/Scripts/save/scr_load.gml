//Argument0 is slot (1-5)
if (file_exists("ijisave.sav")){
scr_init();
dosaveslot=argument0;
var fileid;
var tempstring;
var temp;
global.specialtrigger1=0;
global.specialtrigger2=0;
global.specialtrigger4=0;
global.specialtrigger8=0;
global.specialtrigger16=0;
global.specialtrigger32=0;
//Fileexists
fileid=file_text_open_read("ijisave.sav");
while (argument0>1){
    file_text_readln(fileid);
    argument0-=1;
    }
tempstring=file_text_read_string(fileid);
file_text_close(fileid);
if (string_char_at(tempstring,1)=="1"){
//Sector
instance_create(x,y,obj_loading);
instance_create(x,y,obj_loadingback);
if (string_char_at(tempstring,2)=="2")
    obj_loading.destination="sector2";
if (string_char_at(tempstring,2)=="3")
    obj_loading.destination="sector3";
if (string_char_at(tempstring,2)=="4")
    obj_loading.destination="sector4";
if (string_char_at(tempstring,2)=="5")
    obj_loading.destination="sector5";
if (string_char_at(tempstring,2)=="6")
    obj_loading.destination="sector6";
if (string_char_at(tempstring,2)=="7")
    obj_loading.destination="sector7";
if (string_char_at(tempstring,2)=="8")
    obj_loading.destination="sector8";
if (string_char_at(tempstring,2)=="9")
    obj_loading.destination="sector9";
if (string_char_at(tempstring,2)=="0")
    obj_loading.destination="sectorx";
global.sector=real(string_char_at(tempstring,2));
if (global.sector==1 || global.sector==2)
    global.jumplevel=1;
else if (global.sector==3 || global.sector==4 || global.sector==5)
    global.jumplevel=2;
else
    global.jumplevel=3;

//Difficulty, level, points
global.difficulty=real(string_char_at(tempstring,3));
if (global.difficulty==3)
    global.difficulty=2;
global.level=real(string_copy(tempstring,4,2));
global.points=real(string_copy(tempstring,6,2));
//Weapons
temp=real(string_copy(tempstring,8,5));
if (temp>=32768){
    global.weapon17=1;
    temp-=32768;
    }
if (temp>=16384){
    global.weapon16=1;
    temp-=16384;
    }
if (temp>=8192){
    global.weapon15=1;
    temp-=8192;
    }
if (temp>=4096){
    global.weapon14=1;
    temp-=4096;
    }
if (temp>=2048){
    global.weapon13=1;
    temp-=2048;
    }
if (temp>=1024){
    global.weapon12=1;
    temp-=1024;
    }
if (temp>=512){
    global.weapon11=1;
    temp-=512;
    }
if (temp>=256){
    global.weapon10=1;
    temp-=256;
    }
if (temp>=128){
    global.weapon9=1;
    temp-=128;
    }
if (temp>=64){
    global.weapon8=1;
    temp-=64;
    }
if (temp>=32){
    global.weapon7=1;
    temp-=32;
    }
if (temp>=16){
    global.weapon6=1;
    temp-=16;
    }
if (temp>=8){
    global.weapon5=1;
    temp-=8;
    }
if (temp>=4){
    global.weapon4=1;
    temp-=4;
    }
if (temp>=2){
    global.weapon3=1;
    temp-=2;
    }
if (temp==1)
    global.weapon2=1;
//Hea att ass str cra tas kom
global.healthlevel=real(string_char_at(tempstring,13))+1;
global.attacklevel=real(string_char_at(tempstring,14))+1;
global.assimilatelevel=real(string_char_at(tempstring,15))+1;
global.strengthlevel=real(string_char_at(tempstring,16))+1;
global.cracklevel=real(string_char_at(tempstring,17))+1;
global.tasenlevel=real(string_char_at(tempstring,18))+1;
global.komatolevel=real(string_char_at(tempstring,19))+1;
//specialtriggerb
temp=real(string_char_at(tempstring,20));
if (temp>=4){
    global.specialtriggerb4=1;
    temp-=4;
    }
if (temp>=2){
    global.specialtriggerb2=1;
    temp-=2;
    }
if (temp>=1)
    global.specialtriggerb1=1;
//specialtriggerc + armor
tempa=real(string_char_at(tempstring,21))+1;
if (tempa>=4){
    global.specialtriggerc=1;
    tempa-=4;
    }
else
    global.specialtriggerc=0;
global.armorlevel=tempa;
//ammo2 ammo3 ammo4 ammo6 ammo7 ammo8 totkills totdamage totcracks totfails
global.ammo2=real(string_copy(tempstring,22,2));
global.ammo3=real(string_copy(tempstring,24,2));
global.ammo4=real(string_copy(tempstring,26,2));
global.ammo6=real(string_copy(tempstring,28,2));
global.ammo7=real(string_copy(tempstring,30,2));
global.ammo8=real(string_copy(tempstring,32,2));
global.totkills=real(string_copy(tempstring,34,3));
global.totdamage=real(string_copy(tempstring,37,3));
global.totcracks=real(string_copy(tempstring,40,3));
global.totfails=real(string_copy(tempstring,43,3));
//xp
global.xp=real(string_copy(tempstring,46,3));
//specialtrigger
temp=real(string_copy(tempstring,49,2));
if (temp>=32){
    global.specialtrigger32=1;
    temp-=32;
    }
if (temp>=16){
    global.specialtrigger16=1;
    temp-=16;
    }
if (temp>=8){
    global.specialtrigger8=1;
    temp-=8;
    //this is ribbons
    if (global.sector>0)
        global.numribbons=global.sector-1;
    else
        global.numribbons=9;
    }
if (temp>=4){
    global.specialtrigger4=1;
    temp-=4;
    }
if (temp>=2){
    global.specialtrigger2=1;
    temp-=2;
    }
if (temp>=1)
    global.specialtrigger1=1;
//Total seconds
global.totalseconds=real(string_copy(tempstring,51,5));
//Load killstring
scr_loadkills(dosaveslot);
}
}