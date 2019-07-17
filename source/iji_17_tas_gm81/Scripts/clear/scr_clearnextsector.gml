//Next sector from Clear screen
tier=1337;
instance_create(400,300,obj_loading);
instance_create(0,0,obj_loadingback);
stopfadingout=1;
lastfadeout=-4;
if (global.wty)
obj_loading.destination="sector1";
else if (global.sswarp && global.sector!=1)
obj_loading.destination="restart";
else if(global.sector==2)
obj_loading.destination="sector2";
else if(global.sector==3)
obj_loading.destination="sector3";
else if(global.sector==4)
obj_loading.destination="sector4";
else if(global.sector==5)
obj_loading.destination="sector5";
else if(global.sector==6)
obj_loading.destination="sector6";
else if(global.sector==7)
obj_loading.destination="sector7";
else if(global.sector==8)
obj_loading.destination="sector8";
else if(global.sector==9)
obj_loading.destination="sector9";
else if(global.sector==0)
obj_loading.destination="sectorx";
else if(global.sector==1){
    obj_loading.destination="cut";
    if (global.killdata[797]>0)
        global.cut=12;
    else if (global.killdata[798]>0)
        global.cut=14;
    else
        global.cut=8;
    }

if (room==rom_endgame){
obj_loading.destination="restart";
}
