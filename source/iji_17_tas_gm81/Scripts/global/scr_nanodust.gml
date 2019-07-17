//argument0 is x
//argument1 is y
//argument2 is direction

script_execute(scr_shakescreen,1);
(instance_create(obj_sabot.x,obj_sabot.y,obj_whiteblanket)).alarm[0]=2;

tempid=instance_create(argument0,argument1,obj_nanodust);
if (argument2==1)
    tempid.direction=0;
repeat(8){
    tempdir=random(270)-45;
    repeat(8)
        (instance_create(argument0-8+random(16),argument1-8+random(16),obj_nanodust2)).direction=tempdir;
    }
