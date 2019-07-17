if (hspeed<0){
    if (linker){
        tempid=instance_create(x-16*argument0+(hspeed/2),y,obj_pulseexplosion);
        tempid.speed=-(hspeed/2);
        tempid.image_index=8;
        }
    else if (hyper){
        tempid=instance_create(x-16*argument0+(hspeed/2),y,obj_pulseexplosion);
        tempid.speed=-(hspeed/2);
        tempid.image_index=4;
        }
    else
        (instance_create(x-16*argument0+(hspeed/2),y,obj_pulseexplosion)).speed=-(hspeed/2);
    }
else{
    if (linker){
        tempid=instance_create(x+16*argument0+(hspeed/2),y,obj_pulseexplosion);
        tempid.speed=-(hspeed/2);
        tempid.image_index=8;
        }
    else if (hyper){
        tempid=instance_create(x+16*argument0+(hspeed/2),y,obj_pulseexplosion);
        tempid.speed=-(hspeed/2);
        tempid.image_index=4;
        }
    else
        (instance_create(x+16*argument0+(hspeed/2),y,obj_pulseexplosion)).speed=-(hspeed/2);
    }