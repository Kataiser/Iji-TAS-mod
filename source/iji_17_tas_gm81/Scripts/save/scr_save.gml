//Argument0 is slot (1-5), if 0 it saves only the keymaps
if (file_exists("ijisave.sav")){
var tempstring;
var tempweapons;
var fileid;
fileid=file_text_open_read("ijisave.sav");
tempstring[1]=file_text_read_string(fileid);
file_text_readln(fileid);
tempstring[2]=file_text_read_string(fileid);
file_text_readln(fileid);
tempstring[3]=file_text_read_string(fileid);
file_text_readln(fileid);
tempstring[4]=file_text_read_string(fileid);
file_text_readln(fileid);
tempstring[5]=file_text_read_string(fileid);
file_text_readln(fileid);
tempstring[6]=file_text_read_string(fileid);
file_text_close(fileid);

//Save file
if (argument0>=1 && argument0<=5){
tempstring[argument0]="1";
tempstring[argument0]+=string(global.sector);
if (global.specialtrigger16)
    tempstring[argument0]+="3";
else
    tempstring[argument0]+=string(global.difficulty);
if (global.level<10)
    tempstring[argument0]+=("0");
tempstring[argument0]+=string(global.level);
if (global.points<10)
    tempstring[argument0]+=("0");
tempstring[argument0]+=string(global.points);
if (global.weapon2) tempweapons+=1;
if (global.weapon3) tempweapons+=2;
if (global.weapon4) tempweapons+=4;
if (global.weapon5) tempweapons+=8;
if (global.weapon6) tempweapons+=16;
if (global.weapon7) tempweapons+=32;
if (global.weapon8) tempweapons+=64;
if (global.weapon9) tempweapons+=128;
if (global.weapon10) tempweapons+=256;
if (global.weapon11) tempweapons+=512;
if (global.weapon12) tempweapons+=1024;
if (global.weapon13) tempweapons+=2048;
if (global.weapon14) tempweapons+=4096;
if (global.weapon15) tempweapons+=8192;
if (global.weapon16) tempweapons+=16384;
if (global.weapon17) tempweapons+=32768;
if (tempweapons<10000)
    tempstring[argument0]+=("0");
if (tempweapons<1000)
    tempstring[argument0]+=("0");
if (tempweapons<100)
    tempstring[argument0]+=("0");
if (tempweapons<10)
    tempstring[argument0]+=("0");
tempstring[argument0]+=string(tempweapons);
tempstring[argument0]+=string(global.healthlevel-1);
tempstring[argument0]+=string(global.attacklevel-1);
tempstring[argument0]+=string(global.assimilatelevel-1);
tempstring[argument0]+=string(global.strengthlevel-1);
tempstring[argument0]+=string(global.cracklevel-1);
tempstring[argument0]+=string(global.tasenlevel-1);
tempstring[argument0]+=string(global.komatolevel-1);

specialtriggerb=global.specialtriggerb1+(global.specialtriggerb2*2)+(global.specialtriggerb4*4)
tempstring[argument0]+=string(specialtriggerb);

tempstring[argument0]+=string(global.armorlevel-1+global.specialtriggerc*4);
if (global.ammo2<10)
    tempstring[argument0]+=("0");
tempstring[argument0]+=string(global.ammo2);
if (global.ammo3<10)
    tempstring[argument0]+=("0");
tempstring[argument0]+=string(global.ammo3);
if (global.ammo4<10)
    tempstring[argument0]+=("0");
tempstring[argument0]+=string(global.ammo4);
if (global.ammo6<10)
    tempstring[argument0]+=("0");
tempstring[argument0]+=string(global.ammo6);
if (global.ammo7<10)
    tempstring[argument0]+=("0");
tempstring[argument0]+=string(global.ammo7);
if (global.ammo8<10)
    tempstring[argument0]+=("0");
tempstring[argument0]+=string(global.ammo8);

if (global.totkills<100)
    tempstring[argument0]+=("0");
if (global.totkills<10)
    tempstring[argument0]+=("0");
tempstring[argument0]+=string(global.totkills);
if (global.totdamage<100)
    tempstring[argument0]+=("0");
if (global.totdamage<10)
    tempstring[argument0]+=("0");
tempstring[argument0]+=string(global.totdamage);
if (global.totcracks<100)
    tempstring[argument0]+=("0");
if (global.totcracks<10)
    tempstring[argument0]+=("0");
tempstring[argument0]+=string(global.totcracks);
if (global.totfails<100)
    tempstring[argument0]+=("0");
if (global.totfails<10)
    tempstring[argument0]+=("0");
tempstring[argument0]+=string(global.totfails);
if (global.xp<100)
    tempstring[argument0]+=("0");
if (global.xp<10)
    tempstring[argument0]+=("0");
tempstring[argument0]+=string(global.xp);
//Specialtriggers
specialtrigger=global.specialtrigger1+(global.specialtrigger2*2)+(global.specialtrigger4*4)+(global.specialtrigger8*8)+(global.specialtrigger16*16)+(global.specialtrigger32*32);
if (specialtrigger<10)
    tempstring[argument0]+=("0");
tempstring[argument0]+=string(specialtrigger);
//Total time in seconds
if (global.totalseconds<10000)
    tempstring[argument0]+=("0");
if (global.totalseconds<1000)
    tempstring[argument0]+=("0");
if (global.totalseconds<100)
    tempstring[argument0]+=("0");
if (global.totalseconds<10)
    tempstring[argument0]+=("0");
tempstring[argument0]+=string(global.totalseconds);
}


//Save keymap, options, posters+extras and records
tempstring[6]=chr(global.kickkey)+chr(global.firekey)+chr(global.usekey)+chr(global.weap5key)+chr(global.weap6key)+chr(global.weap7key)+chr(global.weap8key);
tempstring[6]+=string(global.noshake+global.nogamma*2+global.noblood*4); //Bake in nogamma and noblood
tempstring[6]+=string(global.novoice+global.specialbake*2) //Bake in lowdetail
tempstring[6]+=string(global.nosound)+string(global.nomusic)+string(global.hidetime);
temp=global.poster1+(global.poster2*2)+(global.poster3*4)+(global.poster4*8)+(global.poster5*16)+(global.poster6*32)+(global.poster7*64)+(global.poster8*128)+(global.poster9*256)+(global.poster10*512)+(global.extras1*1024)+(global.extras2*2048)+(global.extras3*4096)+(global.extras4*8192)+(global.extras5*16384)+(global.extras6*32768)+(global.extras7*65536)+(global.extras8*131072);
if (temp<100000)
    tempstring[6]+="0";
if (temp<10000)
    tempstring[6]+="0";
if (temp<1000)
    tempstring[6]+="0";
if (temp<100)
    tempstring[6]+="0";
if (temp<10)
    tempstring[6]+="0";
tempstring[6]+=string(temp);

//Records
tempstring[6]+=string(global.nhours);
if (global.nminutes<10)
    tempstring[6]+="0";
tempstring[6]+=string(global.nminutes);
if (global.nseconds<10)
    tempstring[6]+="0";
tempstring[6]+=string(global.nseconds);

tempstring[6]+=string(global.hhours);
if (global.hminutes<10)
    tempstring[6]+="0";
tempstring[6]+=string(global.hminutes);
if (global.hseconds<10)
    tempstring[6]+="0";
tempstring[6]+=string(global.hseconds);

tempstring[6]+=string(global.ehours);
if (global.eminutes<10)
    tempstring[6]+="0";
tempstring[6]+=string(global.eminutes);
if (global.eseconds<10)
    tempstring[6]+="0";
tempstring[6]+=string(global.eseconds);

tempstring[6]+=string(global.uhours);
if (global.uminutes<10)
    tempstring[6]+="0";
tempstring[6]+=string(global.uminutes);
if (global.useconds<10)
    tempstring[6]+="0";
tempstring[6]+=string(global.useconds);

if (global.maxribbons<10)
    tempstring[6]+="0";
tempstring[6]+=string(global.maxribbons);

temp=global.sds1+(global.sds2*2)+(global.sds3*4)+(global.sds4*8)+(global.sds5*16)+(global.sds6*32)+(global.sds7*64)+(global.sds8*128)+(global.sds9*256)+(global.sds10*512);
if (temp<1000)
    tempstring[6]+="0";
if (temp<100)
    tempstring[6]+="0";
if (temp<10)
    tempstring[6]+="0";
tempstring[6]+=string(temp);

//Hidden skills
temp=0;
if (global.hiddenskill1) temp+=1;
if (global.hiddenskill2) temp+=2;
if (global.hiddenskill3) temp+=4;
tempstring[6]+=string(temp);

//Extended weapon cycling keys
tempstring[6]+=chr(global.prevkey);
tempstring[6]+=chr(global.specialkey);
tempstring[6]+=chr(global.nextkey);

//Store
fileid=file_text_open_write("ijisave.sav");
file_text_write_string(fileid,tempstring[1]);
file_text_writeln(fileid);
file_text_write_string(fileid,tempstring[2]);
file_text_writeln(fileid);
file_text_write_string(fileid,tempstring[3]);
file_text_writeln(fileid);
file_text_write_string(fileid,tempstring[4]);
file_text_writeln(fileid);
file_text_write_string(fileid,tempstring[5]);
file_text_writeln(fileid);
file_text_write_string(fileid,tempstring[6]);
file_text_writeln(fileid);
file_text_close(fileid);

scr_writesum();

//Save killstring
if (argument0>=1 && argument0<=5)
    scr_savekills(argument0);
}