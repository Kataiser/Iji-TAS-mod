check = (collision_point(x,y,obj_turret,0,0));
if (check>0 && check.visible){
    with (check){
        armor=0;
        ijikill=1;
        }
    instance_deactivate_object(check);
    puff+=1;
    distance-=8;
    if (global.facing == 0) x+=8;
    else x-=8;
    }

if (global.sector==0 || room==rom_sector15){
check = (collision_point(x,y,obj_skysmasher,0,0));
if (check>0){
    with (check)
        armor=-100;
    instance_deactivate_object(check);
    puff+=1;
    distance-=8;
    if (global.facing == 0) x+=8;
    else x-=8;
    }
}

check = (collision_point(x,y,obj_tasenscout,0,0));
if (check > 0){
    with (check){
        hp-=3*global.atmult;
        ijikill=1;
        script_execute(scr_enemyknockdown,global.facing+1,12+random(3));
        angry = 1;
        targetiji=300;
        alarm[5] = 300;
        }
    instance_deactivate_object(check);
    puff+=1;
    distance-=8;
    if (global.facing == 0) x+=8;
    else x-=8;
    }

check = (collision_point(x,y,obj_tasensoldier,0,0));
if (check > 0){
    with (check){
        hp-=3*global.atmult;
        ijikill=1;
        script_execute(scr_enemyknockdown,global.facing+1,12+random(3));
        angry = 1;
        targetiji=300;
        alarm[5] = 300;
        }
    instance_deactivate_object(check);
    puff+=1;
    distance-=8;
    if (global.facing == 0) x+=8;
    else x-=8;
    }

check = (collision_point(x,y,obj_tasencommander,0,0));
if (check > 0){
    with (check){
        hp-=3*global.atmult;
        ijikill=1;
        script_execute(scr_enemyknockdown,global.facing+1,12+random(3));
        angry = 1;
        targetiji=300;
        alarm[5] = 300;
        }
    instance_deactivate_object(check);
    puff+=1;
    distance-=8;
    if (global.facing == 0) x+=8;
    else x-=8;
    }

check = (collision_point(x,y,obj_tasenelite,0,0));
if (check > 0){
    with (check){
        ijikill=1;
        hp-=3*global.atmult;
        if (!angry)
            alarm[2]=1;
        script_execute(scr_elitepain);
        angry = 1;
        targetiji=300;
        alarm[5] = 300;
        }
    instance_deactivate_object(check);
    puff+=1;
    distance-=8;
    if (global.facing == 0) x+=8;
    else x-=8;
    }

check = (collision_point(x,y,obj_tasenshredder,0,0));
if (check > 0){
    with (check){
        ijikill=1;
        shredderhp-=300;
        if (shredderhp>0){
            tempid=instance_create(x,y-30,obj_tasensoldier);
            tempid.hp=0;
            tempid.dead=1;
            tempid.ijikill=1;
            if (global.facing==0){
                with (tempid)
                    script_execute(scr_enemyknockdown,1,12+random(3));
                }
            else{
                with (tempid)
                    script_execute(scr_enemyknockdown,2,12+random(3));
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
    if (instance_exists(check))
        instance_deactivate_object(check);
    puff+=1;
    distance-=8;
    if (global.facing == 0) x+=8;
    else x-=8;
    }

check = (collision_point(x,y,obj_komatotrooper,0,0));
if (check > 0){
    with (check){
        hp=0;
        ijikill=1;
        script_execute(scr_enemyknockdown,global.facing+1,12+random(3));
        }
    instance_deactivate_object(check);
    puff+=1;
    distance-=8;
    if (global.facing == 0) x+=8;
    else x-=8;
    }

check = (collision_point(x,y,obj_komatoberserker,0,0));
if (check > 0){
    with (check){
        ijikill=1;
        if (obj_sabot.annihilatorbeta){
            hp-=3;
            target=obj_annihilatorbeta.id;
            targetrival=300;
            targetiji=0;
            killtype=3;
            script_execute(scr_enemyknockdown,obj_annihilatorbeta.facing+1,12+random(3));
            }
        else{
            hp-=3*global.atmult;
            targetiji=300;
            script_execute(scr_enemyknockdown,global.facing+1,12+random(3));
            }
        angry = 1;
        alarm[5] = 300;
        }
    instance_deactivate_object(check);
    puff+=1;
    distance-=8;
    if (global.facing == 0) x+=8;
    else x-=8;
    }

check = (collision_point(x,y,obj_komatoassassin,0,0));
if (check > 0){
    with (check){
        ijikill=1;
        randomplasma=random(1);
        if (randomplasma<0.3+(0.3*global.difficulty) || asha2)
            scr_assassinpain(1);
        else{
            hp-=3*global.atmult;
            scr_assassinpain(0);
            }
        }
    instance_deactivate_object(check);
    puff+=1;
    distance-=8;
    if (global.facing == 0) x+=8;
    else x-=8;
    }

check = (collision_point(x,y,obj_komatobeast,0,0));
if (check > 0){
    with (check){
        hp=0;
        ijikill=1;
        }
    instance_deactivate_object(check);
    puff+=1;
    distance-=8;
    if (global.facing == 0) x+=8;
    else x-=8;
    }

check = (collision_point(x,y,obj_komatoannihilator,0,0));
if (check > 0){
    with (check){
        hp-=3*global.atmult;
        if (!angry && (state==0 || state==1))
            alarm[2]=1;
        ijikill=1;
        script_execute(scr_annihilatorpain);
        if (state!=10){
            angry = 1;
            targetiji=300;
            alarm[5] = 300;
            }
        }
    instance_deactivate_object(check);
    puff+=1;
    distance-=8;
    if (global.facing == 0) x+=8;
    else x-=8;
    }

if (global.sector==13){
check = (collision_point(x,y,obj_proxima,0,0));
if (check > 0){
    with (check){
        //scr_proximatalk(0);
        hp-=3*global.atmult;
        if (global.facing==0)
            hs=-(12+random(3));
        else
            hs=12+random(3);
        }
    instance_deactivate_object(check);
    puff+=1;
    distance-=8;
    if (global.facing == 0) x+=8;
    else x-=8;
    }
}

if (global.sector==14){
check = (collision_point(x,y,obj_iosa,0,0));
if (check > 0){
    with (check){
        hp-=3*global.atmult;
        script_execute(scr_annihilatorpain);
        }
    instance_deactivate_object(check);
    puff+=1;
    distance-=8;
    if (global.facing == 0) x+=8;
    else x-=8;
    }
}

if (global.sector==0){
check = (collision_point(x,y,obj_annihilatorbeta,0,0));
if (check > 0){
    with (check){
        hp-=3*global.atmult;
        script_execute(scr_betaannihilatorpain);
        }
    instance_deactivate_object(check);
    puff+=1;
    distance-=8;
    if (global.facing == 0) x+=8;
    else x-=8;
    }
}

check = (collision_point(x,y,obj_glass,0,0));
if (check > 0){
    with (check) script_execute(scr_glassbreak,15,global.facing+1);
    puff+=1;
    distance-=8;
    if (global.facing == 0) x+=8;
    else x-=8;
    }

check = (collision_point(x,y,obj_meta,0,0));
if (check > 0){
    with (check) script_execute(scr_metabreak,15,global.facing+1);
    puff+=1;
    distance-=8;
    if (global.facing == 0) x+=8;
    else x-=8;
    }
