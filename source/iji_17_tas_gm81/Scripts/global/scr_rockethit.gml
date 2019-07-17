//Argument0 is the type of rocket
// 0 Friendly
// 1 Enemy
//Argument1 is glass special case
//Argument2 is block special case

//Glass
if (argument1 == 1){
    if (hspeed < 0){
        adjust = 2;
        }
    else{
        adjust = -2;
        }    
    if (argument0 == 0){
        if (impulse)
            (instance_create(other.x+16+adjust,y,obj_impulseexplosion)).ijis=ijis;
        else
            (instance_create(other.x+16+adjust,y,obj_rocketexplosion)).ijis=ijis;
        instance_create(other.x+16+adjust,y,obj_explosioncenter);
        }
    if (argument0 == 1){
        if (impulse)
            tempid=instance_create(other.x+16+adjust,y,obj_impulseexplosion);
        else
            tempid=instance_create(other.x+16+adjust,y,obj_enemyrocketexplosion);
        tempid.target=target;
        tempid.ijis=ijis;
        instance_create(other.x+16+adjust,y,obj_explosioncenter);
        }
    if (instance_number(obj_scrapbrown)<10){
        repeat(5){
            tempid=instance_create(other.x+16-(hspeed*2),y,obj_scrapbrown);
            tempid.speed=12+random(6);
            tempid.direction=random(360);
            tempid.alarm[2]=4;
            }
        }
    script_execute(scr_shakescreen, 2);
    instance_destroy();
    exit;
    }
//Friendly
if (argument0 == 0){
    if (hspeed < 0){
        if (argument2==0){
            if (impulse)
                (instance_create(other.bbox_right+4,y,obj_impulseexplosion)).ijis=ijis;
            else
                (instance_create(other.bbox_right+4,y,obj_rocketexplosion)).ijis=ijis;
            instance_create(other.bbox_right+4,y,obj_explosioncenter);
            }
        else{
            if (impulse)
                (instance_create(x-global.rocketspeed,y,obj_impulseexplosion)).ijis=ijis;
            else
                (instance_create(x-global.rocketspeed,y,obj_rocketexplosion)).ijis=ijis;
            instance_create(x-global.rocketspeed,y,obj_explosioncenter);
            }
        }
    if (hspeed > 0){
        if (other.proxima){
            if (impulse)
                (instance_create(other.x-64,y,obj_impulseexplosion)).ijis=ijis;
            else
                (instance_create(other.x-64,y,obj_rocketexplosion)).ijis=ijis;
            instance_create(other.x-64,y,obj_explosioncenter);
            }
        else if (other.enemytype==16 || argument2==1){
            if (impulse)
                (instance_create(x+22+global.rocketspeed,y,obj_impulseexplosion)).ijis=ijis;
            else
                (instance_create(x+22+global.rocketspeed,y,obj_rocketexplosion)).ijis=ijis;
            instance_create(x+22+global.rocketspeed,y,obj_explosioncenter);
            }
        else{
            if (impulse)
                (instance_create(other.x-4,y,obj_impulseexplosion)).ijis=ijis;
            else
                (instance_create(other.x-4,y,obj_rocketexplosion)).ijis=ijis;
            instance_create(other.x-4,y,obj_explosioncenter);
            }
        }
    }
//Enemy
if (argument0 == 1){
    if (hspeed < 0){
        if (argument2==0){
            if (impulse)
                tempid=instance_create(other.bbox_right+4,y,obj_impulseexplosion);
            else
                tempid=instance_create(other.bbox_right+4,y,obj_enemyrocketexplosion);
            tempid.target=target;
            tempid.ijis=ijis;
            instance_create(other.bbox_right+4,y,obj_explosioncenter);
            }
        else{
            if (impulse)
                tempid=instance_create(x+global.rocketspeed,y,obj_impulseexplosion);
            else
                tempid=instance_create(x+global.rocketspeed,y,obj_enemyrocketexplosion);
            tempid.target=target;
            tempid.ijis=ijis;
            instance_create(x+global.rocketspeed,y,obj_explosioncenter);
            }
        }
    if (hspeed > 0){
        if (argument2==0){
            if (impulse)
                tempid=instance_create(other.x-4,y,obj_impulseexplosion);
            else
                tempid=instance_create(other.x-4,y,obj_enemyrocketexplosion);
            tempid.target=target;
            tempid.ijis=ijis;
            instance_create(other.x-4,y,obj_explosioncenter);
            }
        else{
            if (impulse)
                tempid=instance_create(x,y,obj_impulseexplosion);
            else
                tempid=instance_create(x,y,obj_enemyrocketexplosion);
            tempid.target=target;
            tempid.ijis=ijis;
            instance_create(x,y,obj_explosioncenter);
            }
        }
    }
//Others
if (instance_number(obj_scrapbrown)<10){
repeat(5){
    tempid=instance_create(other.x+16-(hspeed*2),y,obj_scrapbrown);
    tempid.speed=12+random(6);
    tempid.direction=random(360);
    tempid.alarm[2]=4;
    }
    }
script_execute(scr_shakescreen,2);
instance_destroy();