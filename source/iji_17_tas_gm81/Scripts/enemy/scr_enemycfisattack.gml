check=(collision_point(x,y,obj_iji,0,0));
if (check>0){
    if (!check.cfised && !obj_iji.takingpain && !obj_iji.recovering)
        global.armor-=30/global.armorlevel;
    check.cfised=1;
    }
check=(collision_point(x,y,obj_glass,0,0));
if (check>0){
    with (check)
        script_execute(scr_glassbreak,8,global.enemycfistemp+1);
    if (global.enemycfistemp==0)
        x+=12;
    else
        x-=12;
    }

check=(collision_point(x,y,obj_reflector,0,0));
if (check>0){
    with (check)
        scr_reflectorexplo();
    }
check=(collision_point(x,y,obj_disruptor,0,0));
if (check>0){
    with (check)
        scr_disruptorexplo();
    }
check=(collision_point(x,y,obj_shockbarrier,0,0));
if (check>0){
    with (check)
        scr_barrierexplo();
    }
