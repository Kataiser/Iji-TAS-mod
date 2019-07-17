if (global.hp>0 && !shredder){
//Touching a weapon pickup
if (other.sprite_index == spr_pickupmach){
    if (global.tasenlevel > 2){
        script_execute(scr_pickupweapon,2);
        if (!global.passive)
            global.topmessage="MACHINEGUN - Select with 2";
        else
            global.topmessage="IMPACT MACHINEGUN - Select with 2";
        global.erasetop=0;
        with(other){
            script_execute(scr_pickupflash,32,16,4);
            instance_destroy();
            }
        }
    else{
        other.image_single = 1;
        other.alarm[0] = 90;
        }
    }
else if (other.sprite_index == spr_pickuprokt){
    if (global.tasenlevel > 5){
        script_execute(scr_pickupweapon,3);
        if (!global.passive)
            global.topmessage="ROCKET LAUNCHER - Select with 3";
        else
            global.topmessage="IMPULSE LAUNCHER - Select with 3";
        global.erasetop=0;
        with(other){
            script_execute(scr_pickupflash,32,16,4);
            instance_destroy();
            }
        }
    else{
        other.image_single = 1;
        other.alarm[0] = 90;
        }
    }
else if (other.sprite_index == spr_pickupmpfb){
    if (global.tasenlevel == 10){
        script_execute(scr_pickupweapon,4);
        if (!global.passive)
            global.topmessage="MPFB DEVASTATOR - Select with 4";
        else
            global.topmessage="MPFB NEUTRALIZER - Select with 4";
        global.erasetop=0;
        with(other){
            script_execute(scr_pickupflash,32,16,4);
            instance_destroy();
            }
        }
    else{
        other.image_single = 1;
        other.alarm[0] = 90;
        }
    }
else if (other.sprite_index == spr_pickupreso){
    script_execute(scr_pickupweapon,5);
    if (!global.passive)
        global.topmessage="RESONANCE DETONATOR - Select with 5 or "+chr(global.weap5key);
    else
        global.topmessage="RESONANCE DISRUPTOR - Select with 5 or "+chr(global.weap5key);
    global.erasetop=0;
    with(other){
        script_execute(scr_pickupflash,32,16,4);
        instance_destroy();
        }
    }
else if (other.sprite_index == spr_pickuppuls){
    if (global.komatolevel > 2){
        script_execute(scr_pickupweapon,6);
        if (!global.passive)
            global.topmessage="PULSE CANNON - Select with 6 or "+chr(global.weap6key);
        else
            global.topmessage="PULSE LINKER - Select with 6 or "+chr(global.weap6key);
        global.erasetop=0;
        with(other){
            script_execute(scr_pickupflash,32,16,4);
            instance_destroy();
            }
        }
    else{
        other.image_single = 1;
        other.alarm[0] = 90;
        }
    }
else if (other.sprite_index == spr_pickupshok){
    if (global.komatolevel > 5){
        script_execute(scr_pickupweapon,7);
        if (!global.passive)
            global.topmessage="SHOCKSPLINTER - Select with 7 or "+chr(global.weap7key);
        else
            global.topmessage="SHOCK BARRIER - Select with 7 or "+chr(global.weap7key);
        global.erasetop=0;
        with(other){
            script_execute(scr_pickupflash,32,16,4);
            instance_destroy();
            }
        }
    else{
        other.image_single = 1;
        other.alarm[0] = 90;
        }
    }
else if (other.sprite_index == spr_pickupcfis){
    if (global.komatolevel == 10){
        script_execute(scr_pickupweapon,8);
        if (!global.passive)
            global.topmessage="CYCLIC FUSION IGNITION SYSTEM - Select with 8 or "+chr(global.weap8key);
        else
            global.topmessage="CHAIN FRACTAL INJECTION SHELL - Select with 8 or "+chr(global.weap8key);
        global.erasetop=0;
        with(other){
            script_execute(scr_pickupflash,32,16,4);
            instance_destroy();
            }
        }
    else{
        other.image_single = 1;
        other.alarm[0] = 90;
        }
    }
else if (other.sprite_index == spr_pickupbanana && (other.image_single==0 || other.image_single==1)){
    if (global.weapon2==1 && global.weapon3==1 && global.weapon4==1 && global.weapon5==1 && global.weapon6==1 && global.weapon7==1 && global.weapon8==1){
        script_execute(scr_pickupweapon,17);
        if (!global.passive)
            global.topmessage="BANANA GUN - Select with 9";
        else
            global.topmessage="BANANA GUN - Select with 9 (in Active gun mode)";
        global.erasetop=0;
        with(other){
            script_execute(scr_pickupflash,32,16,4);
            instance_destroy();
            }
        }
    else{
        other.image_single = 1;
        other.alarm[0] = 90;
        }
    }
else if (other.sprite_index == spr_pickuprefl){
    script_execute(scr_pickupweapon,5);
    script_execute(scr_pickupweapon,18);
    //global.passive=0;
    //global.killdata[799]=0;
    if (!global.passive)
        global.topmessage="RESONANCE REFLECTOR - Press 5 or "+chr(global.weap5key)+" twice";
    else
        global.topmessage="RESONANCE REFLECTOR - Press 5 or "+chr(global.weap5key)+" twice (in Active gun mode)";
    global.erasetop=0;
    with(other){
        script_execute(scr_pickupflash,32,16,4);
        instance_destroy();
        }
    (instance_create(obj_iji.x,obj_iji.y,obj_trigger)).textid="chatxj";
    }
else if (other.sprite_index == spr_pickupbanana && other.image_single==2){
    script_execute(scr_pickupweapon,20);
    if (!global.passive)
        global.topmessage="NULL DRIVER - Select with 0";
    else
        global.topmessage="NULL DRIVER - Select with 0 (in Active gun mode)";
    global.erasetop=0;
    with(other){
        script_execute(scr_pickupflash,32,16,4);
        instance_destroy();
        }
    }
else if (other.sprite_index == spr_pickupbanana && other.image_single==3){
    script_execute(scr_pickupweapon,21);
    if (!global.passive)
        global.topmessage="MASSACRE - Select with 0";
    else
        global.topmessage="MASSACRE - Select with 0 (in Active gun mode)";
    global.erasetop=0;
    with(other){
        script_execute(scr_pickupflash,32,16,4);
        instance_destroy();
        }
    }
}