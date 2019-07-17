//Enemy drops ammo
//Argument0 is x
//Argument1 is y
//Argument2 is chance
//Argument3 is type
if (facing) ammofix=16;
else ammofix=-16;
scr_storeseed();
ammodrop = random(argument2);
scr_restoreseed();
if (ammodrop < 1){
    if (argument3 == 1)
    instance_create(x+argument0-16+ammofix, y+argument1-16, obj_ammo1);
    if (argument3 == 2)
    instance_create(x+argument0-16+ammofix, y+argument1-16, obj_ammo2);
    if (argument3 == 3)
    instance_create(x+argument0-16+ammofix, y+argument1-16, obj_ammo3);
    if (argument3 == 4)
    instance_create(x+argument0-16+ammofix, y+argument1-16, obj_ammo4);
    if (argument3 == 5)
    instance_create(x+argument0-16+ammofix, y+argument1-16, obj_ammo5);
    if (argument3 == 6)
    instance_create(x+argument0-16+ammofix, y+argument1-16, obj_ammo6);
    if (argument3 == 7)
    instance_create(x+argument0-16+ammofix, y+argument1-16, obj_ammo7);
    if (argument3 == 8)
    instance_create(x+argument0-16+ammofix, y+argument1-16, obj_ammo8);
    if (argument3 == 9)
    instance_create(x+argument0-16+ammofix, y+argument1-16, obj_ammo9);
    if (argument3 == 10)
    instance_create(x+argument0-16+ammofix, y+argument1-16, obj_ammo10);
    if (argument3 == 11)
    instance_create(x+argument0-16+ammofix, y+argument1-16, obj_ammo11);
    if (argument3 == 12)
    instance_create(x+argument0-16+ammofix, y+argument1-16, obj_ammo12);
    }
