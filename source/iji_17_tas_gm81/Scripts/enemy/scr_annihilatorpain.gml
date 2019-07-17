//Annihilator pain
if (!iosa){
if (angry==0 && (state==0 || state==1))
    alarm[2]=1;
if (state!=10){
    angry=1;
    alarm[5]=300;
    }
}

while(armor<1)
    armor+=200;
if (!global.specialbake)
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
if (hp<=0 && (!iosa || global.hp>0)){
    //obj_iji.killemote=1;
    repeat(5){
        sound_stop(snd_ann_find1);
        sound_stop(snd_ann_find2);
        sound_stop(snd_ann_destroy);
        }
    if (destroy){
        if (targettype==0){
            global.hp-=2;
            global.ignoreall=0;
            obj_iji.takingpain=0;
            obj_iji.invisible=0;
            obj_iji.ignorephysics=0;
            obj_iji.goingright=0;
            obj_iji.goingleft=0;
            obj_iji.running=0;
            obj_iji.kicking=0;
            obj_iji.switchingpose=0;
            obj_iji.firing=0;
            obj_iji.bedestroyed=0;
            if (facing==0){
                with (obj_iji)
                    scr_knockdown(1,10);
                }
            else{
                with (obj_iji)
                    scr_knockdown(2,10);
                }
            }
        else if (targettype==2){
            if (facing==0){
                instance_create(x-5,y+15,obj_xp3);
                if (targetcracked)
                    script_execute(scr_dropammo,15,15,1,4);
                else
                    script_execute(scr_dropammo,15,15,6,3);
                }
            else{
                instance_create(x+107,y+15,obj_xp3);
                if (targetcracked)
                    script_execute(scr_dropammo,87,15,1,4);
                else
                    script_execute(scr_dropammo,87,15,6,3);
                }
            }
        else if (targettype==3){
            if (facing==0){
                instance_create(x-5,y+15,obj_xp4);
                if (cracked)
                    script_execute(scr_dropammo,15,15,1,5);
                else{
                    script_execute(scr_dropammo,15,15,4,1);
                    if (ammodrop>1)
                        script_execute(scr_dropammo,15,15,4,3);
                    if (ammodrop>1)
                        script_execute(scr_dropammo,15,15,4,5);
                    }
                }
            else{
                instance_create(x+107,y+15,obj_xp4);
                if (cracked)
                    script_execute(scr_dropammo,87,15,1,5);
                else{
                    script_execute(scr_dropammo,87,15,4,1);
                    if (ammodrop>1)
                        script_execute(scr_dropammo,87,15,4,3);
                    if (ammodrop>1)
                        script_execute(scr_dropammo,87,15,4,5);
                    }
                }
            }
        }

    if (targettype!=0){
        repeat(10){
            xoffset=random(100);
            tempid=instance_create(x+xoffset,y+20+random(80),obj_komatobloodspecial);
            if (xoffset<50)
                tempid.direction=random(90)+135;
            else{
                tempid.direction=random(90)-45;
                tempid.image_index=6;
                }
            }
        }
    //End of Destroy

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
    if (crackmark){
        script_execute(scr_terminatecrack);
        global.erasetop=0;
        global.topmessage="CRACKING FAILED: subject is dead";
        }
    if (ijikill && !iosa && !killawarded){
        if (obj_iji.usingougi>0)
            killtype=9;
        global.kills+=1;
        global.killdata[killdataid]=killtype;
        killawarded=1;
        }
    scr_shakescreen(4);
    scr_nanoexplosion(50,75);
    instance_create(x,y+25,obj_enemyrocketexplosion);
    instance_create(x,y+125,obj_enemyrocketexplosion);
    instance_create(x+100,y+25,obj_enemyrocketexplosion);
    instance_create(x+100,y+125,obj_enemyrocketexplosion);
    instance_create(x+50,y+75,obj_enemympfbexplosion);
    instance_create(x+50,y+75,obj_explosioncenter);
    if ((x+50 > obj_shakescreen.x-500) && (x+50 < obj_shakescreen.x+500) && (y+75 > obj_shakescreen.y-400) && (y+75 < obj_shakescreen.y+400))
    scr_nanoexplosion(50,75);

    //Iosa dies: new backups
    if (iosa){
        scr_stopiosavoice();
        obj_sabot.backup_seconds=global.seconds;
        obj_sabot.backup_damage=global.damage;
        obj_sabot.backup_kills=global.kills;
        obj_sabot.backup_cracks=global.cracks;
        obj_sabot.backup_fails=global.fails;
        obj_sabot.backup_ammo2=global.ammo2;
        obj_sabot.backup_ammo3=global.ammo3;
        obj_sabot.backup_ammo4=global.ammo4;
        obj_sabot.backup_ammo6=global.ammo6;
        obj_sabot.backup_ammo7=global.ammo7;
        obj_sabot.backup_ammo8=global.ammo8;
        global.ignoreall=1;
        }
    if (!iosa){
        instance_create(x,y+120,obj_xp4);
        instance_create(x+25,y+40,obj_xp4);
        instance_create(x+75,y+40,obj_xp4);
        instance_create(x+100,y+120,obj_xp4);
        if (cracked){
            script_execute(scr_dropammo,50,59,1,10);
            script_execute(scr_dropammo,25,59,1,10);
            script_execute(scr_dropammo,75,59,1,10);
            }
        else{
            script_execute(scr_dropammo,25,59,2,10);
            if (ammodrop>1 && weapon==0)
                script_execute(scr_dropammo,25,59,2,8);
            script_execute(scr_dropammo,50,59,2,10);
            if (ammodrop>1 && weapon==0)
                script_execute(scr_dropammo,50,59,2,8);
            script_execute(scr_dropammo,75,59,2,10);
            if (ammodrop>1 && weapon==0)
                script_execute(scr_dropammo,75,59,1.5,8);
            }
        if (ijikill){
            tempid=instance_create(x+50,y+100,obj_visionchecke)
            tempid.direction=0;
            tempid.speed=16;
            tempid=instance_create(x+50,y+100,obj_visionchecke)
            tempid.direction=180;
            tempid.speed=16;
            }
        }
    instance_destroy();
    }