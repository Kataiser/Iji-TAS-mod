//Firing vision
//Enemies hear Iji firing
if (!obj_sabot.nextfv){
obj_sabot.alarm[2]=15;
obj_sabot.nextfv=1;
tempid=instance_create(x+6,y+8,obj_visionchecke)
tempid.direction=0;
tempid.speed=16;
tempid=instance_create(x+6,y+8,obj_visionchecke)
tempid.direction=180;
tempid.speed=16;
}
