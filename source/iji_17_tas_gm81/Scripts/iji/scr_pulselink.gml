//argument0 is XP to gain
if (instance_number(obj_iji)==1){
    obj_iji.pulselinkcyc+=argument0;
    //0.5625 Nano/ammo with XPgain 1
    if (obj_iji.pulselinkcyc>=32){
        obj_iji.pulselinkcyc-=32;
        if (global.level==global.maxlevel){
            if (global.sector==0)
                tempsec="X";
            else
                tempsec=string(global.sector);
            global.erasetop=0;
            global.topmessage="Max Level for Sector "+tempsec+" reached";
            }
        else{
            instance_create(bbox_left+((bbox_right-bbox_left)/2),bbox_top+((bbox_bottom-bbox_top)/2),obj_nanoflash);
            global.xpcount+=1;
            scr_levelup();
            global.countingnano+=1;
            global.erasetop=0;
            global.topmessage="Nano +"+string(global.countingnano);
            if (global.level<global.maxlevel)
                global.topmessage+=" ("+string(global.xp)+"/"+string((global.level*(4+global.difficulty*4))+4)+")";
            }
        }
    }