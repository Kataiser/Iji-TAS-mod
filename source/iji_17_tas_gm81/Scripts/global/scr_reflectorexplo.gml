if (argument0==0){
    if (!dud && !destroyme){
        destroyme=1;
        alarm[2]=1;
        }
    }
else if (argument0==1){
    repeat(40){
        tempdir=random(360);
        tempdist=random(80);
        tempx=x+cos(degtorad(tempdir))*tempdist;
        tempy=y-sin(degtorad(tempdir))*tempdist;
        tempid=instance_create(tempx,tempy,obj_disruptorexplo);
        tempid.sprite_index=spr_reflectorexplo;
        tempid.direction=tempdir;
        tempid.vspeed-=6;
        }
    instance_create(x,y,obj_disruptorexplo2);
    scr_shakescreen(1);
    scr_sound("exp_glass");
    scr_sound("exp_pew");
    instance_destroy();
    }