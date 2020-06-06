// copied from obj_sabot
if (global.horse){
    (instance_create(obj_sabot.x-64,obj_sabot.y-64,obj_horseflip)).dir=4;
    }
if (!global.horse){
    if (levelskipcyc==0 && room==rom_sector3){
        if (!global.ignoreall){
            global.erasetop=0;
            global.topmessage="GOING DOWN FIRST LIFT. Backspace to confirm.";
            obj_iji.x=2656;
            obj_iji.y=2432;
            instance_create(2592,2496,obj_blockwide);
            levelskipcyc=30;
            }
        }
    else if (levelskipcyc==0 && room==rom_sector4){
        if (!global.ignoreall){
            global.erasetop=0;
            global.topmessage="GOING TO END TRIGGER. Cannot confirm.";
            obj_iji.x=6976;
            obj_iji.y=5088;
            }
        }
    else if (levelskipcyc==0 && room==rom_sector9){
        if (!global.ignoreall){
            global.erasetop=0;
            global.topmessage="GOING DOWN FINAL LIFT SHAFT. Cannot confirm.";
            obj_iji.x=7904;
            obj_iji.y=5826;
            }
        }
    else if (global.sector!=11 && global.sector!=12 && global.sector!=13 && global.sector!=14 && global.sector!=15){
        instance_create(obj_iji.x,obj_iji.y,obj_end)
        }
    else{
        global.erasetop=0;
        global.topmessage="CANNOT SKIP HERE - PRESS [HOME] INSTEAD";
        }
    }
