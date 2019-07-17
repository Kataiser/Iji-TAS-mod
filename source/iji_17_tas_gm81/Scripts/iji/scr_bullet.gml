scr_storeseed();

//Argument0 is bullet type
// 0 pellet
// 1 bullet
image_single=0;
hit=0;
lifespan=0;
while (hit==0 && lifespan<100){
    //Make airsparks
    temprand=random(1);
    if (global.passive){
        if ((temprand<0.12 && argument0==0) || (temprand<0.3 && argument0==1))
            (instance_create(x,y,obj_airspark)).sprite_index=spr_airspark2;
        }
    else{
        if (temprand<0.08)
            instance_create(x,y,obj_airspark);
        }
    //Spread shotty pellets
    if (argument0==0 && !nanoblast)
        y=(y-8+random(16)); //y=(y-11+random(22));
    //Spread bullets
    if (argument0==1)
        y=(y-5+random(10)); //y=(y-5+random(10));
    if (argument0==0)
        lifespan+=6;
    if (argument0==1){
        if (global.passive){
            //6 to 2.4
            lifespan+=6-0.36*global.attacklevel;
            }
        else
            lifespan+=2.4;
        }

    if (global.passive && argument0==1 && lifespan>=100)
        (instance_create(x,y,obj_airspark)).sprite_index=spr_airspark2;

    if (global.facing==0){
        if (place_meeting(x-12,y,obj_alliedenemy)==0 && place_meeting(x-12,y,obj_turret)==0 && place_meeting(x-12,y,obj_block)==0 && place_meeting(x-12,y,obj_glass)==0 && place_meeting(x-12,y,obj_shockbarrier)==0){
            x=x-12;
            }
        else{
            x=x-12;
            hit=1;
            }
    }
    if (global.facing==1){
        if (place_meeting(x+12,y,obj_alliedenemy)==0 && place_meeting(x+12,y,obj_turret)==0 && place_meeting(x+12,y,obj_block)==0 && place_meeting(x+12,y,obj_glass)==0 && place_meeting(x+12,y,obj_shockbarrier)==0){
        x=x+12;
        }
    else{
        x=x+12;
        hit=1;
        }
    }
}
image_single=1;

if (nanoblast && !obj_iji.nanoblasted && hit){
    obj_iji.nanoblasted=1;
    if (global.facing==0)
        x+=10;
    else
        x-=10;
    (instance_create(x,y,obj_rocketexplosion)).ijis=1;
    instance_create(x,y,obj_explosioncenter);
    scr_shakescreen(2);
    }
    
scr_restoreseed();
