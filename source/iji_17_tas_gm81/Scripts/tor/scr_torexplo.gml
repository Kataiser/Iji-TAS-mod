if (argument0==1)
instance_create(x-20+random(200),y+random(400),obj_bigsmoke);
if (argument0==0){
instance_create(x-20+random(200),y+random(400),obj_enemyrocketexplosion);
scr_shakescreen(3);
}