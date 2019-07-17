//Argument0 is the type of mpfb
// 0 Friendly
// 1 Enemy
//Argument1 is glass special case
if (argument1 == 1){
    if (hspeed < 0){
        adjust = 2;
        }
    else{
        adjust = -2;
        }
    if (argument0 == 0){
    (instance_create(other.x+16+adjust,y,obj_mpfbexplosion)).ijis=ijis;
    instance_create(other.x+16+adjust,y,obj_explosioncenter);
    }
    if (argument0 == 1){
    tempid=instance_create(other.x+16+adjust,y,obj_enemympfbexplosion);
    tempid.target=target;
    tempid.ijis=ijis;
    instance_create(other.x+16+adjust,y,obj_explosioncenter);
    }
if (global.specialbake==0)
    maxsparks=90;
else
    maxsparks=10;
if (instance_number(obj_mpfbspark2)<maxsparks){
    if (hspeed<0)
        repeat(30) instance_create(other.bbox_right-16+random(32),y-16+random(32),obj_mpfbspark2);
    else
        repeat(30) instance_create(other.x-16+random(32),y-16+random(32),obj_mpfbspark2);
    }
scr_sound("exp_mpfb");
script_execute(scr_shakescreen, 3);
instance_destroy();
exit;
}
if (argument0 == 0){
    if (hspeed < 0){
        (instance_create(other.bbox_right+4,y,obj_mpfbexplosion)).ijis=ijis;
        instance_create(other.bbox_right+4,y,obj_explosioncenter);
        }
    if (hspeed > 0){
        if (other.enemytype==16){
            (instance_create(x-4,y,obj_mpfbexplosion)).ijis=ijis;
            instance_create(x-4,y,obj_explosioncenter);
            }
        else{
            (instance_create(other.x-4,y,obj_mpfbexplosion)).ijis=ijis;
            instance_create(other.x-4,y,obj_explosioncenter);
            }
        }
    }
//Enemy
if (argument0 == 1){
    if (room!=rom_sector15 && room!=rom_sector13){
        if (hspeed < 0){
            tempid=instance_create(other.bbox_right+4,y,obj_enemympfbexplosion);
            tempid.target=target;
            tempid.ijis=ijis;
            instance_create(other.bbox_right+4,y,obj_explosioncenter);
            }
        if (hspeed > 0){
            tempid=instance_create(other.x-4,y,obj_enemympfbexplosion);
            tempid.target=target;
            tempid.ijis=ijis;
            instance_create(other.x-4,y,obj_explosioncenter);
            }
        }
    else{//Center at Tor
        if (hspeed < 0){
            tempid=instance_create(x,y,obj_enemympfbexplosion);
            tempid.target=target;
            tempid.ijis=ijis;
            instance_create(x,y,obj_explosioncenter);
            }
        if (hspeed > 0){
            tempid=instance_create(x,y,obj_enemympfbexplosion);
            tempid.target=target;
            tempid.ijis=ijis;
            instance_create(x,y,obj_explosioncenter);
            }
        }
    }
if (global.specialbake==0)
    maxsparks=90;
else
    maxsparks=10;
if (instance_number(obj_mpfbspark2)<maxsparks){
    if (hspeed<0){
        if (room!=rom_sector15 && room!=rom_sector13){
            repeat(30) instance_create(other.bbox_right-16+random(32),y-16+random(32),obj_mpfbspark2);
            }
        else{
            repeat(30) instance_create(x-16+random(32),y-16+random(32),obj_mpfbspark2);
            }
        }
    else{
        if (room!=rom_sector15 && room!=rom_sector13){
            repeat(30) instance_create(other.x-16+random(32),y-16+random(32),obj_mpfbspark2);
            }
        else{
            repeat(30) instance_create(x-16+random(32),y-16+random(32),obj_mpfbspark2);
            }
        }
    }
scr_sound("exp_mpfb");
script_execute(scr_shakescreen, 3);
instance_destroy();