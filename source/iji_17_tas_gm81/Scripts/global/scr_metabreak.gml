//Meta breaks
//Argument0 is force
//Argument1 is direction
// 0 center
// 1 left
// 2 right
amount=8;
if (sprite_index = spr_glass2) amount = 25;
if (sprite_index = spr_glass2short) amount = 25;
if (sprite_index = spr_barrel) amount = 20;
if (sprite_index = spr_door) amount = 25;
if (sprite_index = spr_crackbox) amount = 25;
if (global.specialbake == 0) maximum = 120;
if (global.specialbake == 1) maximum = 25;
while (amount > 0){
    amount-=1;
    if (sprite_index == spr_leetbox && instance_number(obj_scrapwhite) < maximum){
        tempid = instance_create(x+19+random(13),y+6+random(26),obj_scrapwhite);
        tempid.speed = random(argument0/2)+(argument0/2)+1;
        if (argument1 == 0)
        tempid.direction = random(180);
        if (argument1 == 1)
        tempid.direction = random(90)+90;
        if (argument1 == 2)
        tempid.direction = random(90);
        }
    if (sprite_index == spr_screen && instance_number(obj_scrapwhite) < maximum){
        tempid = instance_create(x+5+random(22),y+random(23),obj_scrapwhite);
        tempid.speed = random(argument0/2)+(argument0/2)+1;
        if (argument1 == 0)
        tempid.direction = random(180);
        if (argument1 == 1)
        tempid.direction = random(90)+90;
        if (argument1 == 2)
        tempid.direction = random(90);
        }
    if (sprite_index == spr_screen && instance_number(obj_shard) < maximum){
        tempid = instance_create(x+5+random(22),y+random(23),obj_shard);
        tempid.speed = random(argument0/2)+(argument0/2)+1;
        if (argument1 == 0)
        tempid.direction = random(180);
        if (argument1 == 1)
        tempid.direction = random(90)+90;
        if (argument1 == 2)
        tempid.direction = random(90);
        amount-=1;
        }
    if (sprite_index == spr_lamp && instance_number(obj_shard) < maximum){
        tempid = instance_create(x+random(32),y+random(10),obj_shard);
        tempid.speed = random(argument0/2)+(argument0/2)+1;
        if (argument1 == 0)
        tempid.direction = random(180);
        if (argument1 == 1)
        tempid.direction = random(90)+90;
        if (argument1 == 2)
        tempid.direction = random(90);
        }
    if ((sprite_index == spr_crate1 || sprite_index == spr_crate2) && instance_number(obj_scrapbrown) < maximum){
        tempid = instance_create(x+random(32),y+random(32),obj_scrapbrown);
        tempid.speed = random(argument0/2)+(argument0/2)+1;
        if (argument1 == 0)
        tempid.direction = random(180);
        if (argument1 == 1)
        tempid.direction = random(90)+90;
        if (argument1 == 2)
        tempid.direction = random(90);
        }
    if (sprite_index == spr_crackbox && instance_number(obj_scrapwhite) < maximum){
        tempid = instance_create(x+random(64),y+random(32),obj_scrapwhite);
        tempid.speed = random(argument0/2)+(argument0/2)+1;
        if (argument1 == 0)
        tempid.direction = random(180);
        if (argument1 == 1)
        tempid.direction = random(90)+90;
        if (argument1 == 2)
        tempid.direction = random(90);
        if (crackmark==1 && !successed){
            script_execute(scr_crackfail);
            global.erasetop=0;
            global.topmessage="CRACKING FAILED: Subject was destroyed";
            }
        }
    if (sprite_index == spr_locker && instance_number(obj_scrapwhite) < maximum){
        tempid = instance_create(x+random(32),y+random(32),obj_scrapwhite);
        tempid.speed = random(argument0/2)+(argument0/2)+1;
        if (argument1 == 0)
        tempid.direction = random(180);
        if (argument1 == 1)
        tempid.direction = random(90)+90;
        if (argument1 == 2)
        tempid.direction = random(90);
        }
    if (sprite_index == spr_barrel && instance_number(obj_scrapwhite) < maximum){
        tempid = instance_create(x+random(32),y+random(64),obj_scrapwhite);
        tempid.speed = random(12)+12;
        tempid.direction = random(360);
        tempid.alarm[2]=4;
        }
    if ((sprite_index==spr_door || sprite_index==spr_door2 || sprite_index==spr_door3) && instance_number(obj_scrapwhite) < maximum){
        tempid = instance_create(x+random(16),y+random(96),obj_scrapwhite);
        tempid.speed = random(argument0/2)+(argument0/2)+1;
        if (argument1 == 0)
        tempid.direction = random(180);
        if (argument1 == 1)
        tempid.direction = random(90)+90;
        if (argument1 == 2)
        tempid.direction = random(90);
        }
    if (sprite_index == spr_glass2 && instance_number(obj_shard) < maximum){
        tempid = instance_create(x+random(128),y+4+random(8),obj_shard);
        tempid.speed = random(argument0/2)+(argument0/2)+1;
        if (argument1 == 0)
        tempid.direction = random(180)+180;
        if (argument1 == 1)
        tempid.direction = random(180)+90;
        if (argument1 == 2)
        tempid.direction = random(180)-90;
        }
    if (sprite_index == spr_glass2short && instance_number(obj_shard) < maximum){
        tempid = instance_create(x+random(96),y+4+random(8),obj_shard);
        tempid.speed = random(argument0/2)+(argument0/2)+1;
        if (argument1 == 0)
        tempid.direction = random(180)+180;
        if (argument1 == 1)
        tempid.direction = random(180)+90;
        if (argument1 == 2)
        tempid.direction = random(180)-90;
        }
    }
if (sprite_index == spr_barrel){
    instance_create(x+16,y+32,obj_enemyrocketexplosion);
    instance_create(x+16,y+32,obj_explosioncenter);
    script_execute(scr_shakescreen,2);
    }
if (sprite_index == spr_locker){
    temprand=3+floor(random(4));
    repeat(temprand)
        (instance_create(x+8+random(16),y+8+random(8),obj_paper)).dead=1;
    }

if (sprite_index==spr_screen || sprite_index==spr_lamp)
    scr_sound("exp_miniglass");
else if (sprite_index==spr_glass2 || sprite_index==spr_glass2short)
    scr_sound("exp_glass");
else if (sprite_index==spr_barrel)
    scr_sound("exp_pew");
else
    scr_sound("exp_meta");

script_execute(scr_shakescreen,1);
instance_destroy();
instance_create(x,y-30,obj_meta2);