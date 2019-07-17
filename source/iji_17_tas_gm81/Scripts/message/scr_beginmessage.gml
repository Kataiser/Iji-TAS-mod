//Begin message
//Argument0 is reading logbook
obj_iji.alwayschangeweapon=0;
if (room==rom_cut){
    instance_create(0,0,obj_chatmessagetext);
    instance_create(799,599,obj_scrollarrow);
    obj_chatmessagetext.page=0;
    }
else{
    obj_iji.cannotpause=1;
    obj_iji.readinglog=0;
    if (argument0==1)
        (instance_create(obj_iji.x,obj_iji.y,obj_messagetext)).outline=global.outline;
    else
        instance_create(obj_iji.x,obj_iji.y,obj_messagetext);
    instance_create(obj_shakescreen.x+399,obj_shakescreen.y+299,obj_scrollarrow);
    obj_messagetext.page=0;
    obj_iji.goingleft=0;
    obj_iji.goingright=0;
    obj_iji.running=0;
    global.ignoreall=1;
    }
