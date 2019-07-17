//SFX
if (!global.nosound){

shrmax=0;
shrstepsound+=1;
if (shrstepsound>=4){
    shrstepsound=0;
    with (obj_tasenshredder){
        if (x>obj_shakescreen.x-900 && x<obj_shakescreen.x+900 && y>obj_shakescreen.y-600 && y<obj_shakescreen.y+600){
            if (abs(hspeed)>10 && obj_sabot.shrmax<2)
                obj_sabot.shrmax=2;
            else if (speed>0.01 && obj_sabot.shrmax<1)
                obj_sabot.shrmax=1;
            }
        }
    with (obj_emptyshredder){
        if (x>obj_shakescreen.x-900 && x<obj_shakescreen.x+900 && y>obj_shakescreen.y-600 && y<obj_shakescreen.y+600){
            if (abs(hspeed)>10 && obj_sabot.shrmax<2)
                obj_sabot.shrmax=2;
            }
        }
    with (obj_iji){
        if (shredder && abs(hspeed)>10 && obj_sabot.shrmax<2)
            obj_sabot.shrmax=2;
        else if (shredder && obj_sabot.shrmax<1)
            obj_sabot.shrmax=1;
        }
    if (shrmax>0){
        shrstepsound=0;
        if (shrmax==2)
            scr_sound("shr_step_q1");
        else if (shrmax==1)
            scr_sound("shr_step");
        }
    }

}