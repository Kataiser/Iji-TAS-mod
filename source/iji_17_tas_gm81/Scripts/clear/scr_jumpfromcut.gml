//Go to other room from cutscene

repeat(10)
    sound_stop_all();

instance_create(400,300,obj_loading);
instance_create(0,0,obj_loadingback);

obj_loading.destination="clear";

if (global.cut==1){
    obj_loading.destination="cut";
    global.cut=2;
    }
else if (global.cut==2){
    obj_loading.destination="sector1";
    }

else if (global.cut==8){
    obj_loading.destination="cut";
    global.cut=10;
    }
else if (global.cut==10 || global.cut==13 || global.cut==15){
    if (global.sswarp)
        obj_loading.destination="restart";
    else
        obj_loading.destination="endgame";
    obj_loading.visible=0;
    }
else if (global.cut==12){
    obj_loading.destination="cut";
    global.cut=13;
    }
else if (global.cut==14){
    obj_loading.destination="cut";
    global.cut=15;
    }
