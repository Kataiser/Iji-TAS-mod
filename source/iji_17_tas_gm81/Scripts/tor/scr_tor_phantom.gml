with (obj_shape){
    if (visible){
        shadow=15+floor(random(25));
        shadowmax=shadow;
        }
    }
scr_tor_fire();
instance_create(obj_tor.x,obj_tor.y,obj_torhammer);
scr_sound("exp_nuke");
scr_sound("exp_rock");
scr_sound("wea_plas");
if (global.hp>0)
    scr_sound("tor_emote3");
supercharging=0;
charging=0;
weaponflash=0;
superstomp=0;
tile_layer_show(999999);
obj_tortrigger.destroyedground=1;
//for (i=256;i<896;i+=16)
//    tempid=instance_create(i+random(12),636+random(4),obj_torsmoke);
obj_tortrigger.alarm[3]=3;
obj_tortrigger.cshake=20;