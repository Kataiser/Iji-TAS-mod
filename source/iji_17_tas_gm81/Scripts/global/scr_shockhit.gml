//A shocksplinter rocket hits something and explodes
//Argument0 is the type of shocksplinter
// 0 Friendly
// 1 Enemy
if (argument0==0){
    if (hspeed < 0){
        (instance_create(other.bbox_right+4,y,obj_shockexplosion)).ijis=ijis;
        instance_create(other.bbox_right+4,y,obj_explosioncenter);
        repeat(6)
            (instance_create(x+24,y,obj_shockball)).ijis=ijis;
        }
    if (hspeed > 0){
        (instance_create(other.x-4,y,obj_shockexplosion)).ijis=ijis;
        instance_create(other.x-4,y,obj_explosioncenter);
        repeat(6)
            (instance_create(x-24,y,obj_shockball)).ijis=ijis;
        }
    }
if (argument0==1){
    if (hspeed < 0){
        tempid=instance_create(other.bbox_right+4,y,obj_enemyshockexplosion);
        tempid.target=target;
        tempid.ijis=ijis;
        instance_create(other.bbox_right+4,y,obj_explosioncenter);
        repeat(6){
            tempid=instance_create(x+24,y,obj_enemyshockball);
            tempid.target=target;
            tempid.ijis=ijis;
            }
        }
    if (hspeed > 0){
        if (other.enemytype==16){
            tempid=instance_create(x-4,y,obj_enemyshockexplosion);
            tempid.target=target;
            tempid.ijis=ijis;
            instance_create(x-4,y,obj_explosioncenter);
        }
        else{
            tempid=instance_create(other.x-4,y,obj_enemyshockexplosion);
            tempid.target=target;
            tempid.ijis=ijis;
            instance_create(other.x-4,y,obj_explosioncenter);
        }
        repeat(6){
            tempid=instance_create(x-24,y,obj_enemyshockball);
            tempid.target=target;
            tempid.ijis=ijis;
            }
        }
    }
scr_sound("exp_shoc");
script_execute(scr_shakescreen, 3);
instance_destroy();