//Plasma trace
if (place_free(x,y)==0)
    distance=2001;
puff=3;
if (!global.specialbake){
    tempid=instance_create(x,y,obj_shockshell);
    if ((!obj_sabot.annihilatorbeta && global.facing==1) || (obj_sabot.annihilatorbeta && obj_annihilatorbeta.facing==1))
        tempid.hspeed=-tempid.hspeed;
    }
while(distance<2000){
if (distance==8)instance_create(x,y,obj_plasma2);
if (!obj_sabot.annihilatorbeta){
    if (global.facing==0){
        if (place_free(x-8, y) || place_meeting(x-8, y,obj_meta)==1)
            script_execute(scr_plasmaattack);
        else distance=2000;
        x-=8;
        }
    if (global.facing==1){
        if (place_free(x+8, y) || place_meeting(x+8, y,obj_meta)==1)
            script_execute(scr_plasmaattack);
        else distance=2000;
        x+=8;
        }
    }
else{
    if (obj_annihilatorbeta.facing==0){
        if (place_free(x-8, y) || place_meeting(x-8, y,obj_meta)==1)
            script_execute(scr_plasmaattack);
        else distance=2000;
        x-=8;
        }
    if (obj_annihilatorbeta.facing==1){
        if (place_free(x+8, y) || place_meeting(x+8, y,obj_meta)==1)
            script_execute(scr_plasmaattack);
        else distance=2000;
        x+=8;
        }
    }
puff-=1;
if (puff==0){
    puff=10;
    instance_create(x,y,obj_plasma3);
    }
else if (obj_sabot.annihilatorbeta && ((distance>0 && obj_annihilatorbeta.facing==1) || (distance>8 && obj_annihilatorbeta.facing==0)))
    instance_create(x,y,obj_plasma);
else if (!obj_sabot.annihilatorbeta && ((distance>0 && global.facing==1) || (distance>8 && global.facing==0)))
    instance_create(x,y,obj_plasma);
distance += 8;
}
instance_create(x,y,obj_shockballexplosion);
instance_create(x,y,obj_shockballexplosion);
instance_create(x,y,obj_shockballexplosion);
with (obj_plasma)
    scr_outside();
with (obj_plasma2)
    scr_outside();
with (obj_plasma3)
    scr_outside();
with (obj_shockballexplosion)
    scr_outside();
with (obj_shakescreen){
    metcyc=0;
    if (global.sector!=11 && global.sector!=12 && global.sector!=13 && global.sector!=14 && global.sector!=15)
        scr_methodx();
    else
        instance_activate_all();
    }