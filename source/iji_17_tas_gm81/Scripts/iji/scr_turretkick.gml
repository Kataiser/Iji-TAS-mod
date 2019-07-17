//Argument0 is direction
//Argument1 is precalculated force
if (!dead){
    if (armor>60)
        armor=60;
    dead=1;
    countdown=21;
    tempid=instance_create(x+6,y+8,obj_visionchecke)
    tempid.direction=0;
    tempid.speed=16;
    tempid=instance_create(x+6,y+8,obj_visionchecke)
    tempid.direction=180;
    tempid.speed=16;
    angry=0;
    state=0;
    machcycle=0;
    alarm[1]=0;
    alarm[2]=0;
    alarm[3]=0;
    alarm[4]=0;
    alarm[5]=0;
    alarm[6]=0;
    alarm[8]=0;
    image_single=-1;
    image_speed=0.6;
    image_index=0;
    speed=argument1;
    if (argument1==0){
        if (obj_iji.shredder)
            speed=abs(obj_iji.hspeed)+4;
        else
            speed=global.strengthlevel/2+11;
        }
    gravity=0.7;
    gravity_direction=270;
    (instance_create(x,y,obj_turretpole)).image_single=facing;
    
    if (argument0==1){
        sprite_index=spr_turretheadright;
        direction=160;
        if (global.specialbake==0) maximum=25;
        else maximum=120;
        if (instance_number(obj_scrapwhite)<maximum){
            repeat(10){
                tempid=instance_create(x+random(32),y+16+random(28),obj_scrapwhite);
                tempid.speed=random((global.strengthlevel+2)/2)+((global.strengthlevel+2)/2);
                tempid.direction=random(140)+60;
                }
            }
        }
    else if (argument0==2){
        sprite_index=spr_turretheadleft;
        direction=20;
        if (global.specialbake==0) maximum=25;
        else maximum=120;
        if (instance_number(obj_scrapwhite)<maximum){
            repeat(10){
                tempid=instance_create(x+random(32),y+16+random(28),obj_scrapwhite);
                tempid.speed=random((global.strengthlevel+2)/2)+((global.strengthlevel+2)/2);
                tempid.direction=random(140)-20;
                }
            }
        }
    
    if (argument0==0){
        if (global.facing==0){
            sprite_index=spr_turretheadright;
            direction=160;
            if (global.specialbake==0) maximum=25;
            else maximum=120;
            if (instance_number(obj_scrapwhite)<maximum){
                repeat(10){
                    tempid=instance_create(x+random(32),y+16+random(28),obj_scrapwhite);
                    tempid.speed=random((global.strengthlevel+2)/2)+((global.strengthlevel+2)/2);
                    tempid.direction=random(140)+60;
                    }
                }
            }
        else{
            sprite_index=spr_turretheadleft;
            direction=20;
            if (global.specialbake==0) maximum=25;
            else maximum=120;
            if (instance_number(obj_scrapwhite)<maximum){
                repeat(10){
                    tempid=instance_create(x+random(32),y+16+random(28),obj_scrapwhite);
                    tempid.speed=random((global.strengthlevel+2)/2)+((global.strengthlevel+2)/2);
                    tempid.direction=random(140)-20;
                    }
                }
            }
        }
    }
else{
    if (place_free(x,y-3))
        y-=3;
    if (argument0==0){
        if (global.facing==0)
            direction=150;
        else
            direction=30;
        }
    else if (argument0==1)
            direction=150;
    else if (argument0==2)
            direction=30;
    if (!place_free(x-4,y-16))
        direction=30;
    if (!place_free(x+4,y-16))
        direction=150;
    speed=global.strengthlevel/2+11;
    image_speed=1;
    countdown=21;
    }