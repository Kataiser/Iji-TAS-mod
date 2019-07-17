//Plasma trace
if (place_free(x,y)==0) distance=2001;
puff=3;
if (!global.specialbake){
    tempidzx=instance_create(x,y,obj_shockshell);
    if (argument0==1)
        tempidzx.hspeed=-tempidzx.hspeed;
    }
while(distance<2000){
if (distance==16)
if (argument0==0){
    tempid=instance_create(x,y,obj_plasma2);
    tempid.image_index=0;
    tempid.depth=-4;
    }
else{
    tempid=(instance_create(x,y,obj_plasma2));
    tempid.image_index=8;
    tempid.depth=-4;
    tempid=instance_create(x+8,y,obj_plasma);
    tempid.depth=-4;
    }
if (argument0==0){
    if (place_free(x, y) || place_meeting(x-16, y,obj_meta)==1)
        scr_enemyplasmaattack(argument0);
    else distance=2000;
    x-=16;
    }
else{
    if (place_free(x, y) || place_meeting(x+16, y,obj_meta)==1)
        scr_enemyplasmaattack(argument0);
    else distance=2000;
    x+=16;
    }
puff-=1;
if (puff==0){
    puff=5;
    tempid=instance_create(x,y,obj_plasma3);
    tempid.depth=-4;
    }
else if (distance>0){
    tempid=instance_create(x,y,obj_plasma);
    tempid.depth=-4;
    }
distance+=16;
}
instance_create(x,y,obj_enemyshockballexplosion);
instance_create(x,y,obj_enemyshockballexplosion);
instance_create(x,y,obj_enemyshockballexplosion);
with (obj_plasma)
    scr_outside();
with (obj_plasma2)
    scr_outside();
with (obj_plasma3)
    scr_outside();
with (obj_shockballexplosion)
    scr_outside();
