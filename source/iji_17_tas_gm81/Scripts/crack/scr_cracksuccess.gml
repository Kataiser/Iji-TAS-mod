//Successfully cracked something
scr_sound("glo_cracksuccess");
with (obj_iji){
    if (crackmark){
        instance_activate_object(obj_station);
        with (obj_station){
            if (sprite_index=spr_station_blank){
                if (type=0)
                    sprite_index=spr_station_health;
                if (type=1)
                    sprite_index=spr_station_attack;
                if (type=2)
                    sprite_index=spr_station_assimilate;
                if (type=3)
                    sprite_index=spr_station_strength;
                if (type=4)
                    sprite_index=spr_station_crack;
                if (type=5)
                    sprite_index=spr_station_tasen;
                if (type=6)
                    sprite_index=spr_station_komato;
                if (global.suddendeath && sprite_index==spr_station_health)
                    sprite_index=spr_station_blank;
                }
            }
        hasrebooted=1;
        global.ignorestation=120;
        global.topmessage="SYSTEM REPORT: PERSONAL NANOFIELD REBOOTED";
        global.points+=global.healthlevel-1;
        global.points+=global.attacklevel-1;
        global.points+=global.assimilatelevel-1;
        global.points+=global.strengthlevel-1;
        global.points+=global.tasenlevel-1;
        global.points+=global.komatolevel-1;
        global.points+=global.cracklevel-1;
        global.hp=2;
        if (global.randomstations){
            global.points=0;
            global.level=0;
            global.xp=0;
            global.xpcount=0;
            }
        global.armor=0;
        global.damage-=1;
        global.healthlevel=1;
        global.attacklevel=1;
        global.assimilatelevel=1;
        global.strengthlevel=1;
        global.cracklevel=1;
        global.tasenlevel=1;
        global.komatolevel=1;
        if (global.ammo2>10)
            global.ammo2=10;
        if (global.ammo3>10)
            global.ammo3=10;
        if (global.ammo4>10)
            global.ammo4=10;
        if (global.ammo6>10)
            global.ammo6=10;
        if (global.ammo7>10)
            global.ammo7=10;
        if (global.ammo8>10)
            global.ammo8=10;
        if (global.weapon9){
            if (global.cracks>0)
                global.cracks-=1;
            else{
                global.totcracks-=1;
                obj_sabot.totreduced+=1;
                }
            }
        if (global.weapon10){
            if (global.cracks>0)
                global.cracks-=1;
            else{
                global.totcracks-=1;
                obj_sabot.totreduced+=1;
                }
            }
        if (global.weapon11){
            if (global.cracks>0)
                global.cracks-=1;
            else{
                global.totcracks-=1;
                obj_sabot.totreduced+=1;
                }
            }
        if (global.weapon12){
            if (global.cracks>0)
                global.cracks-=1;
            else{
                global.totcracks-=1;
                obj_sabot.totreduced+=1;
                }
            }
        if (global.weapon14){
            if (global.cracks>0)
                global.cracks-=1;
            else{
                global.totcracks-=1;
                obj_sabot.totreduced+=1;
                }
            }
        if (global.weapon15){
            if (global.cracks>0)
                global.cracks-=1;
            else{
                global.totcracks-=1;
                obj_sabot.totreduced+=1;
                }
            }
        if (global.weapon16){
            if (global.cracks>0)
                global.cracks-=1;
            else{
                global.totcracks-=1;
                obj_sabot.totreduced+=1;
                }
            }
        global.weapon=1;
        global.weapon2=0;
        global.weapon3=0;
        global.weapon4=0;
        global.weapon6=0;
        global.weapon7=0;
        global.weapon8=0;
        global.weapon9=0;
        global.weapon10=0;
        global.weapon11=0;
        global.weapon12=0;
        if (!xcannotfire){
            if (global.weapon13){
                if (global.cracks>0)
                    global.cracks-=1;
                else{
                    global.totcracks-=1;
                    obj_sabot.totreduced+=1;
                    }
                }
            global.weapon13=0;
            }
        global.weapon14=0;
        global.weapon15=0;
        global.weapon16=0;
        global.cracks-=1;
        if (global.cracks<=0)
            global.cracks=-1;
        if (global.totcracks<0)
            global.totcracks=0;
        obj_weapon1.image_single=1;
        with (obj_weapon2){
            instance_destroy();
            instance_create(obj_iji.x-51,obj_iji.y+30,obj_pickupmach);
            }
        with (obj_weapon3){
            instance_destroy();
            instance_create(obj_iji.x-41,obj_iji.y+30,obj_pickuprokt);
            }
        with (obj_weapon4){
            instance_destroy();
            instance_create(obj_iji.x-31,obj_iji.y+30,obj_pickupmpfb);
            }
        with (obj_weapon5){
            image_single=0;
            if (global.weapon13==1)
                image_single=2;
            }
        with (obj_weapon6){
            instance_destroy();
            instance_create(obj_iji.x-21,obj_iji.y+30,obj_pickuppuls);
            }
        with (obj_weapon7){
            instance_destroy();
            instance_create(obj_iji.x-11,obj_iji.y+30,obj_pickupshok);
            }
        with (obj_weapon8){
            instance_destroy();
            instance_create(obj_iji.x-1,obj_iji.y+30,obj_pickupcfis);
            }
        if (global.weapon17==1)
            instance_create(obj_iji.x-26,obj_iji.y+30,obj_pickupbanana);
        global.weapon17=0;
        }
    }
with (obj_weapstation){
    if (crackmark){
        global.ignoremessagescroll=40;
        crackmark=0;
        global.topmessage="SYSTEM REPORT: New Nanoweapon created";
        obj_iji.takingpain=1;
        obj_iji.recovering=0;
        obj_iji.goaroundtrigger=1;
        alarm[0]=10;
        global.ignorestation=120;
        goaround=1;
        if (weap3==9){
            global.weapon9=1;
            global.textid="weapstation9";
            obj_weapon1.image_single+=2;
            }
        if (weap3==10){
            global.weapon10=1;
            global.textid="weapstation10";
            obj_weapon2.image_single+=2;
            }
        if (weap3==11){
            global.weapon11=1;
            global.textid="weapstation11";
            obj_weapon3.image_single+=2;
            }
        if (weap3==12){
            global.weapon12=1;
            global.textid="weapstation12";
            obj_weapon4.image_single+=2;
            }
        if (weap3==13){
            global.weapon13=1;
            global.textid="weapstation13";
            obj_weapon5.image_single+=2;
            }
        if (weap3==14){
            global.weapon14=1;
            global.textid="weapstation14";
            obj_weapon6.image_single+=2;
            }
        if (weap3==15){
            global.weapon15=1;
            global.textid="weapstation15";
            obj_weapon7.image_single+=2;
            }
        if (weap3==16){
            global.weapon16=1;
            global.textid="weapstation16";
            obj_weapon8.image_single+=2;
            }
        }
    }
with (obj_crackbox){
    if (crackmark){
        successed=1;
        xfix=0; yfix=0;
        if (prize==obj_ammo1 || prize==obj_ammo2 || prize==obj_ammo3 || prize==obj_ammo4 || prize==obj_ammo5 || prize==obj_ammo6 || prize==obj_ammo7 || prize==obj_ammo8 || prize==obj_ammo9 || prize==obj_ammo10 || prize==obj_ammo11 || prize==obj_ammo12)
            xfix=16;
        if (prize==obj_xp1 || prize==obj_xp2 || prize==obj_xp3 || prize==obj_xp4 || prize==obj_pickuphealth || prize==obj_pickuparmor){
            xfix=32;
            yfix=16;
            }
        if ((prize==obj_xp1 || prize==obj_xp2 || prize==obj_xp3 || prize==obj_xp4) && global.level==global.maxlevel)
            prize=obj_pickuphealth;
        instance_create(x+xfix,y+yfix,prize);
        script_execute(scr_metabreak,4,0)
        global.topmessage="SYSTEM REPORT: Security box destroyed without harming contents";
        }
    }
with (obj_cdoor){
    if (crackmark){
        scr_sound("glo_door");
        cracked=1;
        vspeed=-16;
        alarm[0]=6;
        global.ignorestation=90;
        global.topmessage="SYSTEM REPORT: Level "+string(security)+" Security door opened";
        if (trigger==2){
            instance_activate_object(obj_terminal)
            with (obj_terminal){
                if (trigger==2){
                    cracked=1;
                    sprite_index=spr_sec7terminal;
                    }
                }
            instance_activate_object(obj_trigger)
            with (obj_trigger){
                if (textid=="chat29")
                    instance_destroy();
                }
            }
        if (trigger==3){
            instance_activate_object(obj_terminal)
            with (obj_terminal){
                if (trigger==3){
                    cracked=1;
                    sprite_index=spr_sec7terminal;
                    }
                }
            }
        if (trigger==10){
            instance_activate_object(obj_terminal)
            with (obj_terminal){
                if (trigger==10){
                    cracked=1;
                    sprite_index=spr_sec7terminal;
                    }
                }
            }
        }
    }
with (obj_terminal){
    if (crackmark){
        sprite_index=spr_sec7terminal;
        cracked=1;
        if (global.sector==2){
            global.ignorestation=60;
            global.topmessage="SYSTEM REPORT: SECURITY DOOR ON FLOOR 14 OPENED";
            instance_activate_object(obj_cdoor);
            instance_activate_object(obj_trigger);
            with (obj_cdoor){
                if (trigger==2)
                    instance_destroy();
                }
            with (obj_trigger){
                if (textid="chat24")
                    instance_destroy();
                if (textid="chat29")
                    instance_destroy();
                }
            }
        if (global.sector==5){
            global.ignorestation=60;
            global.topmessage="SYSTEM REPORT: SECURITY DOOR ON FLOOR 2 OPENED";
            instance_activate_object(obj_cdoor);
            with (obj_cdoor){
                if (trigger==10)
                    instance_destroy();
                }
            }
        if (global.sector==6){
            global.ignorestation=60;
            global.topmessage="SYSTEM REPORT: SECURITY DOOR ON FLOOR 13 OPENED";
            instance_activate_object(obj_cdoor);
            with (obj_cdoor){
                if (trigger==12){
                    scr_sound("glo_door");
                    cracked=1;
                    vspeed=-16;
                    alarm[0]=6;
                    }
                }
            }
        }
    }
with (obj_acmachine){
    if (crackmark){
        global.ignorestation=60;
        cracked=1;
        global.topmessage="SYSTEM REPORT: Security bypassed, display text overwritten";
        }
    }
with (obj_turret){
    if (crackmark){
        scr_sound("tur_appear");
        dead=1;
        cracked=1;
        armor=200;
        angry=0;
        state=100;
        alarm[1]=0;
        alarm[2]=0;
        alarm[3]=0;
        alarm[4]=0;
        global.topmessage="SYSTEM REPORT: Subject permanently powered down";
        if (facing==0){
            alarm[5]=3;
            sprite_index=spr_turretappear;
            image_index=2;
            image_speed=-1;
            image_single=-1;
            }
        else{
            alarm[6]=3;
            image_single=1;
            }
        }
    }
with (obj_tasenscout){
    if (crackmark){
        cracked=1;
        if (killtype<4)
            killtype=4;
        global.topmessage="SYSTEM REPORT: Subject's weapons malfunctioning";
        if (state==2){
            state=1;
            if (instance_number(obj_iji)==1){
                if (x>obj_iji.x)
                    facing=1;
                else
                    facing=0;
                }
            }
        }
    }
with (obj_tasensoldier){
    if (crackmark){
        cracked=1;
        if (killtype<4)
            killtype=4;
        temprand=random(1);
        if (temprand<0.5){
            targetiji=300;
            hp/=2;
            if (hp<=1){
                hp=1;
                armor=100;
                }
            script_execute(scr_nanoexplosion,6,26);
            script_execute(scr_enemyknockdown,(global.facing+1),2);
            global.topmessage="SYSTEM REPORT: Subject damaged, heavy weapons malfunctioning";
            }
        else
            global.topmessage="SYSTEM REPORT: Subject's heavy weapons malfunctioning";
        }
    }
with (obj_tasencommander){
    if (crackmark){
        cracked=1;
        if (killtype<4)
            killtype=4;
        temprand=random(1);
        if (temprand<0.5){
            targetiji=300;
            hp/=2;
            if (hp<=1){
                hp=1;
                armor=100;
                }
            script_execute(scr_nanoexplosion,10,40);
            script_execute(scr_enemyknockdown,(global.facing+1),2);
            global.topmessage="SYSTEM REPORT: Subject damaged, heavy weapons malfunctioning";
            }
        else
            global.topmessage="SYSTEM REPORT: Subject's heavy weapons malfunctioning";
        }
    }
with (obj_tasenelite){
    if (crackmark){
        cracked=1;
        if (killtype<4)
            killtype=4;
        temprand=random(1);
        if (temprand<0.5){
            targetiji=300;
            angry=1;
            hp/=2;
            if (hp<=1){
                hp=1;
                armor=100;
                }
            script_execute(scr_elitepain);
            script_execute(scr_nanoexplosion,15,45);
            global.topmessage="SYSTEM REPORT: Subject damaged, heavy weapons malfunctioning";
            }
        else
            global.topmessage="SYSTEM REPORT: Subject's heavy weapons malfunctioning";
        }
    }
with (obj_tasenshredder){
    if (crackmark){
        cracked=1;
        script_execute(scr_nanoexplosion,0,-15);
        tempid=instance_create(x,y-30,obj_tasensoldier);
        //tempid.killtype=4;
        //tempid.hp=1;
        //tempid.dead=1;
        //tempid.cracked=1;
        //tempid.ijikill=1;
        tempid.hp=1;
        tempid.angry=1;
        tempid.targetiji=300;
        tempid.alarm[5]=300;
        tempid.killdataid=killdataid;
        if (facing==0){
            with (tempid)
                script_execute(scr_enemyknockdown,2,1);
            }
        else{
            with (tempid)
                script_execute(scr_enemyknockdown,1,1);
            }
        instance_destroy();
        tempid=instance_create(floor(x),floor(y)-1,obj_emptyshredder);
        tempid.shredderhp=shredderhp;
        if (sprite_index==spr_tasenshredder_basicleft)
            tempid.sprite_index=spr_tasenshredder_emptyleft;
        else
            tempid.sprite_index=spr_tasenshredder_empty;
        tempid.facing=facing;
        tempid.hspeed=hspeed;
        tempid.vspeed=vspeed;
        global.topmessage="SYSTEM REPORT: Theft sensors triggered, driver electrocuted";
        }
    }
with (obj_komatotrooper){
    if (crackmark){
        cracked=1;
        if (killtype<4)
            killtype=4;
        temprand=random(1);
        if (temprand<0.5){
            targetiji=300;
            hp/=2;
            if (hp<=1){
                hp=1;
                armor=200;
                }
            script_execute(scr_nanoexplosion,10,30);
            script_execute(scr_enemyknockdown,(global.facing+1),2);
            global.topmessage="SYSTEM REPORT: Subject damaged, heavy weapons malfunctioning";
            }
        else
            global.topmessage="SYSTEM REPORT: Subject's heavy weapons malfunctioning";
        }
    }
with (obj_komatoberserker){
    if (crackmark){
        cracked=1;
        if (killtype<4)
            killtype=4;
        temprand=random(1);
        if (temprand<0.5){
            targetiji=300;
            hp/=2;
            if (hp<=1){
                hp=1;
                armor=200;
                }
            script_execute(scr_nanoexplosion,15,40);
            script_execute(scr_enemyknockdown,(global.facing+1),4);
            global.topmessage="SYSTEM REPORT: Subject damaged, heavy weapons malfunctioning";
            }
        else
            global.topmessage="SYSTEM REPORT: Subject's heavy weapons malfunctioning";
        }
    }
with (obj_komatoassassin){
    if (crackmark){
        cracked=1;
        temprand=random(1);
        if (temprand<0.5){
            hp/=2;
            if (hp<=1){
                hp=1;
                armor=200;
                }
            scr_nanoexplosion(12,40);
            scr_assassinpain(0);
            global.topmessage="SYSTEM REPORT: Subject damaged, heavy weapons malfunctioning";
            }
        else{
            scr_assassinpain(1);
            global.topmessage="SYSTEM REPORT: Subject's heavy weapons malfunctioning";
            }
        }
    }
with (obj_komatobeast){
    if (crackmark){
        cracked=1;
        if (killtype<4)
            killtype=4;
            alarm[2]=600;
            alarm[7]=4;
        if (state==3)
            wanttostun=1;
        else{
            state=4;
            if (facing==0)
                sprite_index=spr_komatobeast_painleft;
            else
                sprite_index=spr_komatobeast_pain;
            image_single=-1;
            image_index=0;
            image_speed=0.5;
            }
        global.topmessage="SYSTEM REPORT: Subject stunned";
        }
    }
with (obj_komatoannihilator){
    if (crackmark){
        cracked=1;
        if (killtype<4)
            killtype=4;
        temprand=random(1);
        if (temprand<2){
            targetiji=300;
            hp/=2;
            if (hp<=1){
                hp=1;
                armor=200;
                }
            script_execute(scr_annihilatorpain);
            script_execute(scr_nanoexplosion,50,100);
            if (other.angry==0 && (other.state==0 || other.state==1))
                alarm[2]=45;
            global.topmessage="SYSTEM REPORT: Subject damaged, heavy weapons malfunctioning";
            }
        else
            global.topmessage="SYSTEM REPORT: Subject's heavy weapons malfunctioning";
        }
    }
with (obj_iosa2){
    if (crackmark){
        if (state==10){
            if (global.specialtriggerb2){
                obj_iosatrigger.alarm[2]=75;
                obj_iosatrigger.alarm[3]=90;
                }
            else if (global.kills+global.totkills<=9*global.neutralkc){
                obj_iosatrigger.pacifistend=1;
                }
            else if (global.kills+global.totkills<=9*global.berserkkc){
                obj_iosatrigger.pacifistend=1;
                }
            else{
                obj_iosatrigger.alarm[2]=88;
                obj_iosatrigger.alarm[3]=90;
                }
            state=11;
            image_single=0;
            sprite_index=spr_iosa2_death;
            alarm[0]=18; //death sound
            with (obj_sabot)
                scr_music("mus_lightstroke");
            obj_iji.takingpain=1;
            if (global.passive){
                global.passive=0;
                global.killdata[799]=0;
                }
            if (global.weapon!=1){
                global.ignoreall=0;
                scr_changeweapon(1);
                global.ignoreall=1;
                }
            obj_sabot.ultimatecannotpause=1;
            global.topmessage="SYSTEM REPORT: Subject's Nanofield deactivated";
            repeat(800)
                instance_create(obj_iosa2.x-38+random(80),obj_iosa2.y-10+random(95),obj_redpixel);
            }
        else{
            global.cracks-=1;
            global.topmessage="CRACKING FAILED";
            }
        }
    }

global.cracks+=1;
scr_terminatecrack();
global.erasetop=0;
//Iosa2 goaroundcrack
if (room=rom_sector14 && obj_iosa2.state==11){
    global.ignoreall=1;
    obj_iji.alarm[5]=0;
    }
//Weapstation goaroundcrack
if (obj_iji.goaroundtrigger){
    global.ignoreall=1;
    obj_iji.alarm[5]=0;
    obj_iji.goaroundtrigger=0;
    }