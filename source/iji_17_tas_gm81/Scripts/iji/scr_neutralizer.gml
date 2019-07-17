obj_sabot.raveflash=0;
global.tempstuntime=50+floor(10*global.attacklevel);

with (obj_paper)
    dead=1;
with (obj_turret){
    if (distance_to_object(obj_iji)<500){
        if (!dead && visible){
            state=0;
            angry=1;
            alarm[0]=0;
            alarm[1]=global.tempstuntime;
            alarm[2]=0;
            alarm[8]=4;
            if (facing==0)
                image_single=0;
            else
                image_single=2;
            }
        }    
    }

with (obj_skysmasher){
    if (distance_to_object(obj_iji)<500){
        scr_smasherwake();
        sstep=0;
        stunned=1;
        angry=1;
        firingrocket=0;
        alarm[6]=0;
        alarm[7]=4;
        alarm[8]=global.tempstuntime;
        }
    }

with (obj_tasenscout){
    if (distance_to_object(obj_iji)<500 && !dead){
        global.truce=0;
        targetiji=300;
        if (angry==0){
            tempid=instance_create(x+6,y+8,obj_visionchecke)
            tempid.direction=0;
            tempid.speed=16;
            tempid=instance_create(x+6,y+8,obj_visionchecke)
            tempid.direction=180;
            tempid.speed=16;
            }
        angry=1;
        alarm[5]=300;
        if (state<4 || state==6){
            takingpain=1;
            state=3;
            alarm[1]=0;
            alarm[2]=global.tempstuntime;
            alarm[3]=0;
            alarm[4]=0;
            alarm[6]=0;
            alarm[7]=4;
            if (facing==0)
                sprite_index=spr_tasenscout_painleft;
            else
                sprite_index=spr_tasenscout_pain;
            image_index=0;
            image_single=-1;
            image_speed=0.5;
            }
        }
    }

with (obj_tasensoldier){
    if (distance_to_object(obj_iji)<500 && !dead && !golden){
        targetiji=300;
        if (angry==0 && (state==0 || state==1 || state==2))
            alarm[2]=1;
        if (angry==0){
            tempid=instance_create(x+6,y+8,obj_visionchecke)
            tempid.direction=0;
            tempid.speed=16;
            tempid=instance_create(x+6,y+8,obj_visionchecke)
            tempid.direction=180;
            tempid.speed=16;
            }
        angry=1;
        alarm[5]=300;
        if (state<4 || state==6){
            takingpain=1;
            firingrocket=0;
            state=3;
            alarm[1]=0;
            alarm[2]=global.tempstuntime;
            alarm[3]=0;
            alarm[4]=0;
            alarm[6]=0;
            alarm[7]=4;
            if (facing==0)
                sprite_index=spr_tasensoldier_painleft;
            else
                sprite_index=spr_tasensoldier_pain;
            image_index=0;
            image_single=-1;
            image_speed=0.5;
            }
        }
    }

with (obj_tasencommander){
    if (distance_to_object(obj_iji)<500 && !nukeimmune && !dead){
        global.truce=0;
        targetiji=300;
        if (angry==0 && (state==0 || state==1))
            alarm[2]=1;
        if (angry==0){
            tempid=instance_create(x+6,y+16,obj_visionchecke)
            tempid.direction=0;
            tempid.speed=16;
            tempid=instance_create(x+6,y+16,obj_visionchecke)
            tempid.direction=180;
            tempid.speed=16;
            }
        angry=1;
        alarm[5]=300;
        if (state<4 || state==6){
            takingpain=1;
            firingrocket=0;
            state=3;
            alarm[1]=0;
            alarm[2]=global.tempstuntime;
            alarm[3]=0;
            alarm[4]=0;
            alarm[6]=0;
            alarm[7]=4;
            if (facing==0)
                sprite_index=spr_tasencommander_painleft;
            else
                sprite_index=spr_tasencommander_pain;
            image_index=0;
            image_single=-1;
            image_speed=0.5;
            }
        }
    }

with (obj_tasenelite){
    if (distance_to_object(obj_iji)<500 && !nukeimmune && !dead){
        targetiji=300;
        if (angry==0){
            alarm[2]=1;
            tempid=instance_create(x+6,y+32,obj_visionchecke)
            tempid.direction=0;
            tempid.speed=16;
            tempid=instance_create(x+6,y+32,obj_visionchecke)
            tempid.direction=180;
            tempid.speed=16;
            }
        angry=1;
        alarm[5]=300;
        takingpain=1;
        firingrocket=0;
        state=3;
        alarm[1]=0;
        alarm[2]=global.tempstuntime;
        alarm[3]=0;
        alarm[4]=0;
        alarm[6]=0;
        alarm[7]=4;
        if (facing==0)
            sprite_index=spr_tasenelite_painleft;
        else
            sprite_index=spr_tasenelite_pain;
        image_index=0;
        image_single=-1;
        image_speed=0.5;
        }
    }

with (obj_tasenshredder){
    if (distance_to_object(obj_iji)<500){
        alarm[5]=300;
        if (angry==0){
            alarm[2]=1;
            tempid=instance_create(x+6,y+8,obj_visionchecke)
            tempid.direction=0;
            tempid.speed=16;
            tempid=instance_create(x+6,y+8,obj_visionchecke)
            tempid.direction=180;
            tempid.speed=16;
            }
        angry=1;
        targetiji=300;
        }
    }

with (obj_komatotrooper){
    if (distance_to_object(obj_iji)<500 && !dead){
        targetiji=300;
        if (angry==0 && (state==0 || state==1 || state==2))
            alarm[2]=1;
        if (angry==0){
            tempid=instance_create(x+6,y+8,obj_visionchecke)
            tempid.direction=0;
            tempid.speed=16;
            tempid=instance_create(x+6,y+8,obj_visionchecke)
            tempid.direction=180;
            tempid.speed=16;
            }
        angry=1;
        alarm[5]=300;
        if (state<4 || state==6){
            takingpain=1;
            firingrocket=0;
            state=3;
            alarm[1]=0;
            alarm[2]=global.tempstuntime;
            alarm[3]=0;
            alarm[4]=0;
            alarm[6]=0;
            alarm[7]=4;
            if (facing==0)
                sprite_index=spr_komatotrooper_painleft;
            else
                sprite_index=spr_komatotrooper_pain;
            image_index=0;
            image_single=-1;
            image_speed=0.5;
            }
        }
    }

with (obj_komatoberserker){
    if (distance_to_object(obj_iji)<500 && !dead){
        targetiji=300;
        if (angry==0 && (state==0 || state==1))
            alarm[2]=1;
        if (angry==0){
            tempid=instance_create(x+6,y+12,obj_visionchecke)
            tempid.direction=0;
            tempid.speed=16;
            tempid=instance_create(x+6,y+12,obj_visionchecke)
            tempid.direction=180;
            tempid.speed=16;
            }
        angry=1;
        alarm[5]=300;
        if (state<4 || state==6){
            takingpain=1;
            firingrocket=0;
            state=3;
            alarm[1]=0;
            alarm[2]=global.tempstuntime;
            alarm[3]=0;
            alarm[4]=0;
            alarm[6]=0;
            alarm[7]=4;
            if (facing==0)
                sprite_index=spr_komatoberserker_painleft;
            else
                sprite_index=spr_komatoberserker_pain;
            image_index=0;
            image_single=-1;
            image_speed=0.5;
            }
        }
    }

with (obj_komatoassassin){
    if (distance_to_object(obj_iji)<500 && visible)
        scr_assassinpain(1);
    }

with (obj_komatobeast){
    if (distance_to_object(obj_iji)<500){
        targetiji=300;
        if (angry==0)
            alarm[2]=1;
        if (angry==0){
            tempid=instance_create(x+6,y+8,obj_visionchecke)
            tempid.direction=0;
            tempid.speed=16;
            tempid=instance_create(x+6,y+8,obj_visionchecke)
            tempid.direction=180;
            tempid.speed=16;
            }
        angry=1;
        alarm[5]=300;
        if (state==0 || state==1 || state==2 || state==4){
            state=4;
            alarm[2]=global.tempstuntime;
            alarm[7]=4;
            if (facing==0)
                sprite_index=spr_komatobeast_painleft;
            else
                sprite_index=spr_komatobeast_pain;
            image_single=-1;
            image_index=0;
            image_speed=0.5;
            }
        }
    }

with (obj_komatoannihilator){
    if (!iosa){
        if (distance_to_object(obj_iji)<500){
            if (state!=10){
                targetiji=300;
                if (angry==0 && (state==0 || state==1)){
                    alarm[2]=1;
                    tempid=instance_create(x+50,y+100,obj_visionchecke)
                    tempid.direction=0;
                    tempid.speed=16;
                    tempid=instance_create(x+50,y+100,obj_visionchecke)
                    tempid.direction=180;
                    tempid.speed=16;
                    }
                angry=1;
                alarm[5]=300;
                }
            }
        }
    }
