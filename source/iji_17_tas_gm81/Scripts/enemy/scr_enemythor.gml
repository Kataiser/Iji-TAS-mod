//Velocithor
while(distance<3000){
distance+=16;
if (distance==16){
    if (argument0==0)
        (instance_create(x,y,obj_enemythor2)).image_single=0;
    else
        (instance_create(x,y,obj_enemythor2)).image_single=1;
    }
if (argument0==0)
    x-=16;
else
    x+=16;
if (distance>16){
    instance_create(x,y,obj_enemythor);
    repeat(2) instance_create(x-32+random(64),y-24+random(46),obj_thorsmoke);
    }
}
instance_destroy();
