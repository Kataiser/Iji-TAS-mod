//Executed in alarm[1]
if (scr_tascheck(ord("C")) && gettingup>0 && !global.passive){
if (!place_meeting(x,y,obj_emptyshredder) && global.hp>=1 && global.hp<=5 && recovering==1 && alarm[7]>=3 && !usedougi){
if (global.weapon2 && global.weapon3 && global.weapon4 && global.weapon5 && global.weapon6 && global.weapon7 && global.weapon8 && global.ammo2>=1 && global.ammo3>=1 && global.ammo4>=1 && global.ammo6>=1 && global.ammo7>=1 && global.ammo8>=1){
//Do it
obj_sabot.ultimatecannotpause=1;
scr_sound("iji_ougi1");
usedougi=1;
global.ammo2-=1;
global.ammo3-=1;
global.ammo4-=1;
global.ammo6-=1;
global.ammo7-=1;
global.ammo8-=1;
alarm[0]=0;
alarm[1]=0;
//alarm[2]=0; reloading
alarm[3]=0;
alarm[4]=0;
alarm[5]=0;
alarm[6]=0;
alarm[7]=0;
takingpain=1;
recovering=0;
visible=0;
invisible=1;
ignorephysics=1;
vspeed=0;
hspeed=0;
global.ignoreall=1;
instance_create(x+6,y+30,obj_ougi);
}
}
}
