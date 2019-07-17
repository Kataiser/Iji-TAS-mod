//Argument0 is x
//Argument1 is y
//Argument2 is nosound
if (instance_number(obj_ijiblood)<250){
    repeat (40) instance_create(x+argument0,y+argument1,obj_ijiblood);
    if (instance_number(obj_nanospark)<5)
        repeat (4) instance_create(x+argument0,y+argument1,obj_nanospark);
    }
else{
    repeat (5) instance_create(x+argument0, y+argument1,obj_ijiblood);
    }
if (argument2==0)
    scr_sound("exp_nano");
