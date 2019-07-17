//Pickup flash
//Argument0 is x
//Argument1 is y
//Argument2 is power
//Argument3 is enemy target
if (instance_number(obj_nanoflash) < 80){
   repeat (4*argument2){
   tempid=instance_create(x+argument0, y+argument1, obj_nanoflash);
   if (argument3>0)
       tempid.target=argument3;
       }
   }