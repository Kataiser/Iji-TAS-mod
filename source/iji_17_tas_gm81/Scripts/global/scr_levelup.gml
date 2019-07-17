//Level up
while (global.xpcount>0){
    global.xp+=1;
    global.xpcount-=1;
    if ((global.xp>=(global.level*(4+global.difficulty*4))+4) && global.level<global.maxlevel){
        global.level+=1;
        global.points+=1;
        if (global.points>99)
            global.points=99;
        global.xp=0;
        scr_sound("glo_levelup");
        instance_create(obj_iji.x+6,obj_iji.y-10,obj_levelup);
        }
    if (global.level==global.maxlevel)
        global.xp=0;
        }