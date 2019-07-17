//A glass window breaks
//Argument0 is force
//Argument1 is direction
// 0 center
// 1 left
// 2 right
if (global.specialbake == 0) maximum = 120;
if (global.specialbake == 1) maximum = 25;
if (instance_number(obj_shard) < maximum){
for (i=0;i<35;i+=1){
    tempid = instance_create(x+8,y+8+random(112),obj_shard);
    tempid.speed = random(argument0/2)+(argument0/2)+1;
    if (argument1 == 0)
    tempid.direction = random(270)-45;
    if (argument1 == 1)
    tempid.direction = random(180)+90;
    if (argument1 == 2)
    tempid.direction = random(180)-90;
    }
}
instance_destroy();
script_execute(scr_shakescreen,1);
scr_sound("exp_glass");