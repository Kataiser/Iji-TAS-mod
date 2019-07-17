global.truce=0;
scr_shakescreen(1);
if (global.specialbake==0) maximum=25;
else maximum=120;
if (instance_number(obj_scrapwhite)<maximum){
    repeat(20){
        tempid=instance_create(x+random(16),y+random(16),obj_scrapwhite);
        tempid.speed=random(9)+(10);
        tempid.direction=random(360);
        if (!dead)
            tempid.alarm[2]=4;
        }
    }
if (crackmark==1){
    scr_terminatecrack();
    global.erasetop=0;
    global.topmessage="CRACKING FAILED: Subject was destroyed";
    }
instance_destroy();
