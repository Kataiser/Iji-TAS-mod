//Nuke deals 5 damage
//Argument0 1 is using ougi
if (argument0==1)
    global.tempougi=1;
else
    global.tempougi=0;

obj_sabot.raveflash=0;
with (obj_iji){
    if (!shredder){
        if (global.facing == 0){
            if (!takingpain && !recovering){
                notech=10;
                goaroundcyen=1;
                //Nanochaos
                if (overload==1){
                    overload=0;
                    script_execute(scr_knockdown,2,10,0,1,1);
                    overload=1;
                    }
                else
                    script_execute(scr_knockdown,2,10,0,1,1);
                if (!global.tempougi){
                    takingpain=0;
                    recovering=0;
                    }
                }
            else
                script_execute(scr_knockdown,2,10,0,1,1);
            }
        else{
            if (!takingpain && !recovering){
                notech=10;
                goaroundcyen=1;
                //Nanochaos
                if (overload==1){
                    overload=0;
                    script_execute(scr_knockdown,1,10,0,1,1);
                    overload=1;
                    }
                else
                    script_execute(scr_knockdown,1,10,0,1,1);
                if (!global.tempougi){
                    takingpain=0;
                    recovering=0;
                    }
                }
            else
                script_execute(scr_knockdown,1,10,0,1,1);
            }
        }
    }

with (obj_paper)
    dead=1;
with (obj_turret){
    if (distance_to_object(obj_iji)<500)
    armor=0;
    }
with (obj_skysmasher){
    if (distance_to_object(obj_iji)<500)
    armor=-100;
    }
with (obj_tasenscout){
    if (distance_to_object(obj_iji)<500){
    hp-=5*global.atmult;
    ijikill=1;
    if (hp<=0 && killtype<5)
        killtype=5;
    if ((bbox_left + (bbox_right - bbox_left) /2) < obj_iji.bbox_left + ((obj_iji.bbox_right - obj_iji.bbox_left) /2))
        script_execute(scr_enemyknockdown,1,25);
    else
        script_execute(scr_enemyknockdown,2,25);
    }
    }
with (obj_tasensoldier){
    if (distance_to_object(obj_iji)<500){
    ijikill=1;
    hp-=5*global.atmult;
    if (hp<=0 && killtype<5)
        killtype=5;
    if ((bbox_left + (bbox_right - bbox_left) /2) < obj_iji.bbox_left + ((obj_iji.bbox_right - obj_iji.bbox_left) /2))
        script_execute(scr_enemyknockdown,1,25);
    else
        script_execute(scr_enemyknockdown,2,25);
    }
    }
with (obj_tasencommander){
    if (distance_to_object(obj_iji)<500 && !nukeimmune){
    ijikill=1;
    hp-=5*global.atmult;
    if (hp<=0 && killtype<5)
        killtype=5;
    if ((bbox_left + (bbox_right - bbox_left) /2) < obj_iji.bbox_left + ((obj_iji.bbox_right - obj_iji.bbox_left) /2))
        script_execute(scr_enemyknockdown,1,25);
    else
        script_execute(scr_enemyknockdown,2,25);
    }
    }
with (obj_tasenelite){
    if (distance_to_object(obj_iji)<500 && !nukeimmune){
    hp-=5*global.atmult;
    if (hp<=0 && killtype<5)
        killtype=5;
    ijikill=1;
    script_execute(scr_elitepain);
    }
    }
with (obj_tasenshredder){
    if (distance_to_object(obj_iji)<500){
        shredderhp-=500;
        if (shredderhp<=0 && killtype<5)
            killtype=5;
        ijikill=1;
        if (shredderhp>0){
            tempid=instance_create(x,y-30,obj_tasensoldier);
            tempid.hp=0;
            tempid.dead=1;
            tempid.ijikill=1;
            tempid.killtype=5;
            if (obj_iji.x+6>x){
                with (tempid)
                    script_execute(scr_enemyknockdown,1,25);
                }
            else{
                with (tempid)
                    script_execute(scr_enemyknockdown,2,25);
                }
            tempid=instance_create(floor(x),floor(y)-1,obj_emptyshredder);
            tempid.shredderhp=shredderhp;
            if (sprite_index==spr_tasenshredder_basicleft)
                tempid.sprite_index=spr_tasenshredder_emptyleft;
            else
                tempid.sprite_index=spr_tasenshredder_empty;
            tempid.facing=facing;
            tempid.hspeed=hspeed;
            tempid.vspeed=vspeed;
            instance_destroy();
            }
        }
    }
with (obj_emptyshredder){
    if (distance_to_object(obj_iji)<500){
    shredderhp-=500;
    }
    }
with (obj_komatotrooper){
    if (distance_to_object(obj_iji)<500){
    hp=0;
    if (killtype<5)
        killtype=5;
    ijikill=1;
    if ((bbox_left + (bbox_right - bbox_left) /2) < obj_iji.bbox_left + ((obj_iji.bbox_right - obj_iji.bbox_left) /2))
        script_execute(scr_enemyknockdown,1,25);
    else
        script_execute(scr_enemyknockdown,2,25);
    }
    }
with (obj_komatoberserker){
    if (distance_to_object(obj_iji)<500){
    hp-=5*global.atmult;
    if (hp<=0 && killtype<5)
        killtype=5;
    ijikill=1;
    if ((bbox_left + (bbox_right - bbox_left) /2) < obj_iji.bbox_left + ((obj_iji.bbox_right - obj_iji.bbox_left) /2))
        script_execute(scr_enemyknockdown,1,25);
    else
        script_execute(scr_enemyknockdown,2,25);
    }
    }
with (obj_komatoassassin){
    if (distance_to_object(obj_iji)<500 && visible){
        if (asha2)
            scr_assassinpain(1);
        else{
            hp-=5*global.atmult;
            if (asha){
                hp=0;
                scr_sound("ash_death");
                obj_ashatrigger.ashanuked=1;
                }
            backup=100;
            scr_assassinpain();
            if (asha)
                instance_create(lastx,lasty,obj_supercharge);
            }
        }
    }
with (obj_komatobeast){
    if (distance_to_object(obj_iji)<500){
    ijikill=1;
    if (killtype<5)
        killtype=5;
    scr_beastdeath();
    }
    }

with (obj_komatoannihilator){
    if (!iosa){
    if (distance_to_object(obj_iji)<500){
    ijikill=1;
    targetiji=300;
    hp-=5*global.atmult;
    if (hp<=0 && killtype<5)
        killtype=5;
    scr_annihilatorpain();
    if (!angry){
        angry=1;
        alarm[5]=300;
        }
    }
    }
    }
with (obj_proxima){
    hp-=2.5*global.atmult;
    if (x+64>obj_iji.x+5)
        hs=15;
    else
        hs=-15;
    if (y+64>obj_iji.y+15)
        vs=15;
    else
        vs=-15;
    }
with (obj_iosa){
    hp-=5*global.atmult;
    scr_annihilatorpain();
    }
with (obj_tor){
    if (vulnerable)
        hp-=5*global.atmult;
    }

with (obj_annihilatorbeta){
    if (distance_to_object(obj_iji)<500){
        hp-=5*global.atmult;
        scr_betaannihilatorpain();
        }
    }
with (obj_meta){
    if (distance_to_object(obj_iji)<700){
    if ((bbox_left + (bbox_right - bbox_left) /2) < obj_iji.bbox_left + ((obj_iji.bbox_right - obj_iji.bbox_left) /2))
    script_execute(scr_metabreak,25,1);
    else
    script_execute(scr_metabreak,25,2);
    }
    }
with (obj_glass){
    if (distance_to_object(obj_iji)<500){
    if ((bbox_left + (bbox_right - bbox_left) /2) < obj_iji.bbox_left + ((obj_iji.bbox_right - obj_iji.bbox_left) /2))
    script_execute(scr_glassbreak,25,1);
    else
    script_execute(scr_glassbreak,25,2);
    }
    }
with (obj_crumble5){
    if (distance_to_object(obj_iji)<500){
        if (global.specialbake==0)
        i=25;
        else
        i=5;
        repeat(i){
        tempid=instance_create(x+8+random(48),y+8+random(48),obj_scrapwhite);
        tempid.direction=random(360);
        tempid.speed=random(8)+5;
        }
        instance_destroy();
        }
    }
with (obj_crumble52){
    if (distance_to_object(obj_iji)<500){
        if (global.specialbake==0)
            i=25;
        else
            i=5;
        repeat(i){
        tempid=instance_create(x+8+random(48),y+8+random(48),obj_scrapwhite);
        tempid.direction=random(360);
        tempid.speed=random(8)+5;
        }
        instance_destroy();
        with (obj_trigger){
            if (textid="chat56")
                instance_destroy();
            }
        }
    }
with (obj_crumble6){
    if (distance_to_object(obj_iji)<500){
        if (global.specialbake==0)
        i=25;
        else
        i=5;
        repeat(i){
        tempid=instance_create(x+8+random(48),y+8+random(48),obj_scrapwhite);
        tempid.direction=random(360);
        tempid.speed=random(8)+5;
        }
        instance_destroy();
        }
    }
with (obj_phantomhammer){
    if (distance_to_object(obj_iji)<250)
        armor=-500;
    }
with (obj_xcore){
    if (distance_to_object(obj_iji)<500){
        if (go)
            hp=0;
        }
    }
with (obj_shockbarrier){
    if (distance_to_object(obj_iji)<500)
        scr_barrierexplo();
    }
