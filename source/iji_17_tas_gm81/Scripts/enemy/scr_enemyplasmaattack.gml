if (place_meeting(x,y,obj_disruptor)){
    with (obj_disruptor)
        scr_disruptorexplo();
    }
if (place_meeting(x,y,obj_reflector)){
    with (obj_reflector)
        scr_reflectorexplo();
    }
if (place_meeting(x,y,obj_shockbarrier)){
    with (obj_shockbarrier)
        scr_barrierexplo();
    }
if (place_meeting(x,y,obj_iji) && obj_iji.plasmaed==0 && !obj_iji.takingpain && !fromansaksie){
    if (obj_iji.shredder)
        obj_iji.shredderhp-=300;
    global.hp-=3;
    global.damage+=3;
    obj_iji.plasmaed=argument0+1;
    if (obj_iji.overload==9){
        if (global.weapon7){
            if (global.assimilatelevel<10)
                maxammo=global.assimilatebase+global.assimilatelevel*global.assimilatesize;
            else
                maxammo=99;
            if (global.ammo7==maxammo)
                global.topmessage="Shocksplinter ammo full";
            else
                global.topmessage="Shocksplinter ammo +2";
            }
        else{
            if (global.assimilatelevel<10)
                maxammo=global.assimilatebase+global.assimilatelevel*global.assimilatesize;
            else
                maxammo=99;
            if (global.ammo7==maxammo)
                global.topmessage="Unknown ammo full";
            else
                global.topmessage="Unknown ammo +2";
            }
        global.ammo7+=2;
        if (global.ammo7>global.assimilatebase+global.assimilatelevel*global.assimilatesize)
            global.ammo7=global.assimilatebase+global.assimilatelevel*global.assimilatesize;
        global.erasetop=0;
        }
    }
check = (collision_line(x,y,x+16,y,obj_glass,0,0));
if (check > 0){
    with (check) script_execute(scr_glassbreak,15,argument0+1);
    puff+=1;
    distance-=16;
    if (argument0=0) x+=16;
    else x-=16;
    }
check = (collision_line(x,y,x+16,y,obj_meta,0,0));
if (check > 0){
    with (check) script_execute(scr_metabreak,15,argument0+1);
    puff+=1;
    distance-=16;
    if (argument0=0) x+=16;
    else x-=16;
    }

check = (collision_line(x,y,x+16,y,obj_tasenscout,0,0));
if (check > 0){
    if (!check.plasmaed){
        with (check){
            hp=0;
            ijikill=0;
            plasmaed=1;
            script_execute(scr_enemyknockdown,argument0+1,12+random(3));
            }
        puff+=1;
        distance-=16;
        if (argument0=0) x+=16;
        else x-=16;
        }
    }
check = (collision_line(x,y,x+16,y,obj_tasensoldier,0,0));
if (check > 0){
    if (!check.plasmaed){
        with (check){
            hp=0;
            ijikill=0;
            plasmaed=1;
            script_execute(scr_enemyknockdown,argument0+1,12+random(3));
            }
        puff+=1;
        distance-=16;
        if (argument0=0) x+=16;
        else x-=16;
        }
    }
check = (collision_line(x,y,x+16,y,obj_tasencommander,0,0));
if (check > 0){
    if (!check.plasmaed){
        with (check){
            hp-=3;
            ijikill=0;
            plasmaed=1;
            script_execute(scr_enemyknockdown,argument0+1,12+random(3));
            }
        puff+=1;
        distance-=16;
        if (argument0=0) x+=16;
        else x-=16;
        }
    }
check = (collision_line(x,y,x+16,y,obj_tasenelite,0,0));
if (check > 0){
    if (!check.plasmaed){
        with (check){
            hp-=3;
            ijikill=0;
            plasmaed=1;
            script_execute(scr_elitepain);
            }
        puff+=1;
        distance-=16;
        if (argument0=0) x+=16;
        else x-=16;
        }
    }
check = (collision_line(x,y,x+16,y,obj_tasenshredder,0,0));
if (check > 0){
    with (check){
        shredderhp-=300;
        if (shredderhp>0){
            tempid=instance_create(x,y-30,obj_tasensoldier);
            tempid.hp=0;
            ijikill=0;
            tempid.dead=1;
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
    puff+=1;
    distance-=16;
    if (argument0=0) x+=16;
    else x-=16;
    }
if (!fromiosa){
    check = (collision_line(x,y,x+16,y,obj_iosa,0,0));
    if (check > 0){
        if (!check.plasmaed){
            with (check){
                hp-=3;
                plasmaed=1;
                script_execute(scr_annihilatorpain);
                }
            puff+=1;
            distance-=16;
            if (argument0=0) x+=16;
            else x-=16;
            }
        }
    }