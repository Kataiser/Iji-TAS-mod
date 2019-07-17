//Velocithor
while(distance<850){
distance+=16;
if (distance==16)
    instance_create(x,y,obj_thor2);
if (global.facing==0)
    x-=16;
if (global.facing==1)
    x+=16;
if (distance>16){
    instance_create(x,y,obj_thor);
    repeat(2) instance_create(x-32+random(64),y-24+random(46),obj_thorsmoke);
    }
}
instance_destroy();