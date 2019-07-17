//obj_chaintracer end step
drawme=0;
if (!global.ignoreall && global.weapon==8 && global.passive && (global.state==1 || (global.fireanytime && (obj_iji.sprite_index==spr_jump || obj_iji.sprite_index==spr_jumpleft || obj_iji.sprite_index==spr_duck || obj_iji.sprite_index==spr_duckleft || obj_iji.sprite_index==spr_standup || obj_iji.sprite_index==spr_standupleft))) && !obj_iji.bedestroyed && (!obj_iji.shredder || obj_iji.image_index>6)){
    if (drawmecyc<1)
        drawmecyc+=1;
    else{
        drawme=1;
        if (obj_iji.shredder)
            x=obj_iji.x+6-16+global.facing*32;
        else
            x=obj_iji.x+6;
        y=obj_iji.y+14-obj_iji.shredder*27;
        if (global.state==2)
            y=obj_iji.y+14;
        else if (global.state==3 || global.state==5)
            y=obj_iji.y+30;
        dist=80+global.attacklevel*16;
        done=0;
        targettype=0;
        loops=0;
        global.tracertarget=0;
        while (done==0 && dist>0){
            loops+=1;
            if (!done){
                dist-=8;
                x+=-8+global.facing*16;
                }
            targetid=0;
            targetid=instance_place(x,y,obj_alliedenemy);
            if (targetid>0){
                if (loops>1){
                    if (global.facing==0)
                        x=targetid.bbox_right
                    else
                        x=targetid.bbox_left;
                    }
                done=1;
                targetsec=targetid.security;
                targettype=1;
                }
            if (!done){
                targetid=0;
                targetid=instance_place(x,y,obj_turret);
                if (targetid>0){
                    if (loops>1){
                        if (global.facing==0)
                            x=targetid.bbox_right
                        else
                            x=targetid.bbox_left;
                        }
                    done=1;
                    targetsec=targetid.security;
                    if (targetid.sprite_index!=spr_turret)
                        targettype=0;
                    else
                        targettype=2;
                    }
                }
            if (!done){
                targetid=0;
                targetid=instance_place(x,y,obj_crackbox);
                if (targetid>0){
                    if (global.facing==0)
                        x=targetid.bbox_right
                    else
                        x=targetid.bbox_left;
                    done=1;
                    targetsec=targetid.security;
                    targettype=3;
                    }
                }
            if (!done){
                targetid=0;
                targetid=instance_place(x,y,obj_cdoor);
                if (targetid>0){
                    move_outside_solid(0+global.facing*180,8);
                    done=1;
                    targetsec=targetid.security;
                    targettype=4;
                    }
                }
            if (!done){
                targetid=0;
                targetid=instance_place(x,y,obj_phantomhammer);
                if (targetid>0){
                    move_outside_solid(0+global.facing*180,8);
                    done=1;
                    targetsec=targetid.security;
                    targettype=5;
                    }
                }
            if (!done){
                targetid=0;
                targetid=instance_place(x,y,obj_meta);
                if (targetid>0){
                    if (global.facing==0)
                        x=targetid.bbox_right
                    else
                        x=targetid.bbox_left;
                    done=1;
                    targettype=0;
                    }
                }
            if (!done){
                targetid=0;
                targetid=instance_place(x,y,obj_glass);
                if (targetid>0){
                    if (global.facing==0)
                        x=targetid.bbox_right
                    else
                        x=targetid.bbox_left;
                    done=1;
                    targettype=0;
                    }
                }
            if (!done){
                if (!place_free(x,y)){
                    move_outside_solid(0+global.facing*180,8);
                    done=1;
                    targettype=0;
                    }
                }
            }
        }
    }
else
    drawmecyc=0;
