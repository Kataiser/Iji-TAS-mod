check=(collision_point(x,y,obj_turret,0,0));
if (check>0){
    if (!check.cfised && check.visible)
        check.armor-=30*global.atmult;
    if (!check.angry && check.sprite_index==spr_turret)
        check.alarm[2]=15;
    if (check.angry==0){
        tempid=instance_create(check.x+6,check.y+8,obj_visionchecke)
        tempid.direction=0;
        tempid.speed=16;
        tempid=instance_create(check.x+6,check.y+8,obj_visionchecke)
        tempid.direction=180;
        tempid.speed=16;
        }
    check.angry=1;
    check.targetiji=300;
    check.alarm[3]=300;
    check.cfised=1;
    check.ijikill=1;
    }
check=(collision_point(x,y,obj_skysmasher,0,0));
if (check>0){
    if (!check.cfised)
        check.armor-=30*global.atmult;
    with (check)
        scr_smasherwake();
    check.cfised=1;
    }
check=(collision_point(x,y,obj_tasenscout,0,0));
if (check>0){
    if (!check.cfised)
        check.armor-=30*global.atmult;
    if (!check.angry && (check.state==0 || check.state==1 || check.state==2))
        check.alarm[2]=1;
    if (check.angry==0){
        tempid=instance_create(check.x+6,check.y+8,obj_visionchecke)
        tempid.direction=0;
        tempid.speed=16;
        tempid=instance_create(check.x+6,check.y+8,obj_visionchecke)
        tempid.direction=180;
        tempid.speed=16;
        }
    check.angry=1;
    check.targetiji=300;
    check.alarm[5]=300;
    check.cfised=1;
    check.ijikill=1;
    }
check=(collision_point(x,y,obj_tasensoldier,0,0));
if (check>0){
    if (!check.cfised)
        check.armor-=30*global.atmult;
    if (!check.angry && (check.state==0 || check.state==1 || check.state==2))
        check.alarm[2]=1;
    if (check.angry==0){
        tempid=instance_create(check.x+6,check.y+8,obj_visionchecke)
        tempid.direction=0;
        tempid.speed=16;
        tempid=instance_create(check.x+6,check.y+8,obj_visionchecke)
        tempid.direction=180;
        tempid.speed=16;
        }
    check.angry=1;
    check.targetiji=300;
    check.alarm[5]=300;
    check.cfised=1;
    check.ijikill=1;
    }
check=(collision_point(x,y,obj_tasencommander,0,0));
if (check>0){
    if (!check.cfised)
        check.armor-=30*global.atmult;
    if (!check.angry && (check.state==0 || check.state==1))
        check.alarm[2]=1;
    if (check.angry==0){
        tempid=instance_create(check.x+6,check.y+16,obj_visionchecke)
        tempid.direction=0;
        tempid.speed=16;
        tempid=instance_create(check.x+6,check.y+16,obj_visionchecke)
        tempid.direction=180;
        tempid.speed=16;
        }
    check.angry=1;
    check.targetiji=300;
    check.alarm[5]=300;
    check.cfised=1;
    check.ijikill=1;
    }
check=(collision_point(x,y,obj_tasenelite,0,0));
if (check>0){
    if (!check.cfised)
        check.armor-=30*global.atmult;
    if (!check.angry)
        check.alarm[2]=1;
    if (check.angry==0){
        tempid=instance_create(check.x+6,check.y+32,obj_visionchecke)
        tempid.direction=0;
        tempid.speed=16;
        tempid=instance_create(check.x+6,check.y+32,obj_visionchecke)
        tempid.direction=180;
        tempid.speed=16;
        }
    check.angry=1;
    check.targetiji=300;
    check.alarm[5]=300;
    check.cfised=1;
    check.ijikill=1;
    }
check=(collision_point(x,y,obj_tasenshredder,0,0));
if (check>0){
    if (!check.cfised)
        check.shredderhp-=(20*(1+(global.attacklevel/10)));
    if (!check.angry)
        check.alarm[2]=1;
    if (check.angry==0){
        tempid=instance_create(check.x+6,check.y+8,obj_visionchecke)
        tempid.direction=0;
        tempid.speed=16;
        tempid=instance_create(check.x+6,check.y+8,obj_visionchecke)
        tempid.direction=180;
        tempid.speed=16;
        }
    check.angry=1;
    check.targetiji=300;
    check.alarm[5]=300;
    check.cfised=1;
    check.ijikill=1;
    }
check=(collision_point(x,y,obj_komatotrooper,0,0));
if (check>0){
    if (!check.cfised)
        check.armor-=30*global.atmult;
    if (!check.angry && (check.state==0 || check.state==1 || check.state==2))
        check.alarm[2]=1;
    if (check.angry==0){
        tempid=instance_create(check.x+6,check.y+8,obj_visionchecke)
        tempid.direction=0;
        tempid.speed=16;
        tempid=instance_create(check.x+6,check.y+8,obj_visionchecke)
        tempid.direction=180;
        tempid.speed=16;
        }
    check.angry=1;
    check.targetiji=300;
    check.alarm[5]=300;
    check.cfised=1;
    check.ijikill=1;
    }
check=(collision_point(x,y,obj_komatoberserker,0,0));
if (check>0){
    if (!check.cfised)
        check.armor-=30*global.atmult;
    if (!check.angry && (check.state==0 || check.state==1))
        check.alarm[2]=1;
    if (check.angry==0){
        tempid=instance_create(check.x+6,check.y+8,obj_visionchecke)
        tempid.direction=0;
        tempid.speed=16;
        tempid=instance_create(check.x+6,check.y+8,obj_visionchecke)
        tempid.direction=180;
        tempid.speed=16;
        }
    check.angry=1;
    check.targetiji=300;
    check.alarm[5]=300;
    check.cfised=1;
    check.ijikill=1;
    }
check=(collision_point(x,y,obj_komatoassassin,0,0));
if (check>0){
    if (!check.cfised && check.asha2){
        with (check){
            cfised=1;
            scr_assassinpain(1);
            }
        }
    else if (!check.asha2){
        if (!check.cfised)
            check.armor-=30*global.atmult;
        check.cfised=1;
        check.ijikill=1;
        if (check.angry==0){
            scr_storeseed();
            check.alarm[2]=random(60-(global.difficulty*20))+30-(global.difficulty*10);
            scr_restoreseed();
            check.angry=1;
            check.visible=0;
            instance_create(check.bbox_left+((check.bbox_right-check.bbox_left)/2), check.bbox_top+((check.bbox_bottom-check.bbox_top)/2), obj_megaflash);
            }
        }
    }
check=(collision_point(x,y,obj_komatobeast,0,0));
if (check>0){
    if (!check.cfised)
        check.armor-=30*global.atmult;
    if (!check.angry)
        check.alarm[2]=1;
    if (check.angry==0){
        tempid=instance_create(check.x+6,check.y+8,obj_visionchecke)
        tempid.direction=0;
        tempid.speed=16;
        tempid=instance_create(check.x+6,check.y+8,obj_visionchecke)
        tempid.direction=180;
        tempid.speed=16;
        }
    check.angry=1;
    check.targetiji=300;
    check.alarm[5]=300;
    check.cfised=1;
    check.ijikill=1;
    }
check=(collision_point(x,y,obj_komatoannihilator,0,0));
if (check>0){
    if (!check.cfised)
        check.armor-=30*global.atmult;
    if (!check.angry && (check.state==0 || check.state==1))
        check.alarm[2]=1;
    if (check.angry==0){
        tempid=instance_create(check.x+50,check.y+100,obj_visionchecke)
        tempid.direction=0;
        tempid.speed=16;
        tempid=instance_create(check.x+50,check.y+100,obj_visionchecke)
        tempid.direction=180;
        tempid.speed=16;
        }
    if (check.state!=10){
        check.angry=1;
        check.targetiji=300;
        check.alarm[5]=300;
        }
    check.cfised=1;
    check.ijikill=1;
    }
if (global.sector==13){
    check=(collision_point(x,y,obj_proxima,0,0));
    if (check>0){
        if (!check.cfised)
            check.armor-=30*global.atmult;
        check.cfised=1;
        }
    }
if (global.sector==14){
    check=(collision_point(x,y,obj_iosa,0,0));
    if (check>0){
        if (!check.cfised)
            check.armor-=30*global.atmult;
        check.cfised=1;
        }
    }
if (global.sector==0){
    check=(collision_point(x,y,obj_annihilatorbeta,0,0));
    if (check>0){
        if (!check.cfised)
            check.armor-=30*global.atmult;
        check.cfised=1;
        }
    check=(collision_point(x,y,obj_xcore,0,0));
    if (check>0)
        check.hp=0;
    }
check=(collision_point(x,y,obj_glass,0,0));
if (check>0){
    with (check) script_execute(scr_glassbreak,8,global.facing+1);
    if (global.facing==0) x+=12;
    else x-=12;
    }
if (global.sector==15){
    check=(collision_point(x,y,obj_tor,0,0));
    if (check>0){
        if (!check.cfised && check.vulnerable){
            check.cfised=1;
            check.armor-=30*global.atmult;
            }
        }
    }
