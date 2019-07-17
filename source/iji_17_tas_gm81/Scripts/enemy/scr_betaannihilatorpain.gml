//Beta Annihilator
armor=200;
instance_create(x,y,obj_annipainflash);
scr_sound("iji_basepain");
repeat(5){
    xoffset=random(100);
    tempid=instance_create(x+xoffset,y+50+random(50),obj_komatobloodspecial);
    if (xoffset<50)
        tempid.direction=random(90)+135;
    else{
        tempid.direction=random(90)-45;
        tempid.image_index=6;
        }
    }
//Death
if (hp<=0){
instance_activate_object(obj_terminal);
with (obj_terminal){
    if (trigger==36){
        cracked=1;
        sprite_index=spr_sec7terminal;
        }
    }
if (obj_sabot.annihilatorbeta){
    global.ignoreall=0;
    obj_sabot.annihilatorbeta=0;
    obj_sabot.ignoresmooth=1;
    obj_sabot.alarm[4]=2;
    obj_sabot.alarm[5]=1;
    obj_iji.takingpain=0;
    (instance_create(obj_iji.x,obj_iji.y,obj_blackblanket)).alarm[0]=2;
    }

if (global.specialbake==0)
    maximum=25;
else
    maximum=120;
if (instance_number(obj_scrapwhite)<maximum){
    repeat(40){
        tempid=instance_create(x+random(100),y+random(120),obj_scrapwhite);
        tempid.speed=random(10)+12;
        tempid.direction=random(360);
        }
    }
scr_shakescreen(4);
scr_nanoexplosion(50,75);
instance_create(x,y+25,obj_enemyrocketexplosion);
instance_create(x,y+125,obj_enemyrocketexplosion);
instance_create(x+100,y+25,obj_enemyrocketexplosion);
instance_create(x+100,y+125,obj_enemyrocketexplosion);
instance_create(x+50,y+75,obj_enemympfbexplosion);
instance_create(x+50,y+75,obj_explosioncenter);
instance_destroy();
}