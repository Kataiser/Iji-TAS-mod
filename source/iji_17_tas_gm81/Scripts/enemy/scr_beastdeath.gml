if (ijikill){
obj_iji.killemote=1;
tempid=instance_create(x+6,y+8,obj_visionchecke)
tempid.direction=0;
tempid.speed=16;
tempid=instance_create(x+6,y+8,obj_visionchecke)
tempid.direction=180;
tempid.speed=16;
}

if (crackmark==1){
    script_execute(scr_terminatecrack);
    global.erasetop=0;
    global.topmessage="CRACKING FAILED: Subject is dead";
    }

if (ijikill && !killawarded){
    if (obj_iji.usingougi>0)
        killtype=9;
    global.kills+=1;
    global.killdata[killdataid]=killtype;
    killawarded=1;
    }
tempid=instance_create(x+30,y,obj_visionchecke)
tempid.direction=0;
tempid.speed=16;
tempid=instance_create(x+30,y,obj_visionchecke)
tempid.direction=180;
tempid.speed=16;
instance_create(x+40,y+20,obj_enemyshockexplosion);
instance_create(x+40,y+20,obj_explosioncenter);
repeat(6) instance_create(x+40,y+20,obj_enemyshockball);
instance_create(x+40,y+35,obj_xp3);
scr_shakescreen(3);
scr_nanoexplosion(40,20);
if (cracked)
    scr_dropammo(30,20,1,10);
instance_destroy();
if (global.specialbake==0)
    maxamount=100;
else
    maxamount=30;
if (instance_number(obj_scrapwhite)<maxamount){
    repeat(30){
        tempid=instance_create(x+20+random(20),y+20+random(30),obj_scrapwhite);
        tempid.speed=5+random(10);
        tempid.direction=random(360);
        }
    }