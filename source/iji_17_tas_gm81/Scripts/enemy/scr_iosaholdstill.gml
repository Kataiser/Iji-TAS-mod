//"HOLD STILL"
if (holdstill>=300 && obj_iji.y<832){
    if (global.voc_ios_ambient1==0){
        holdstillrand=random(1);
        if (holdstillrand<0.5){
            holdstillwait=200+ceil(random(200));
            holdstill=0;
            scr_sound("ios_ambient2");
            }
        }
    }