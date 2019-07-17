//Passive / Standard mode
if (!obj_sabot.playinghero3d && !obj_sabot.pause){
if (!global.ignoreall || place_meeting(x,y+32,obj_lift) || alwayschangeweapon){
    if (global.passive==0){
        global.passive=1;
        global.killdata[799]=1;
        global.erasetop=0;
        global.topmessage="Nanogun switched to Passive mode";
        global.ignorestation=60;
        if (global.weapon>=9 && global.weapon<=16){
            temppweap=global.weapon-8;
            global.weapon=0;
            scr_changeweapon(temppweap);
            }
        else if (global.weapon>=17){
            global.weapon=0;
            scr_changeweapon(1);
            }
        else{
            temppweap=global.weapon;
            global.weapon=0;
            scr_changeweapon(temppweap);
            }
        }
    else if (global.passive==1){
        global.passive=0;
        global.killdata[799]=0;
        global.erasetop=0;
        global.topmessage="Nanogun switched to Active mode";
        global.ignorestation=60;
        temppweap=global.weapon;
        global.weapon=0;
        scr_changeweapon(temppweap);
        }
    }
}