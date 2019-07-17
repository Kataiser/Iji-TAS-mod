if (argument0==0 && !destroyme){
    destroyme=1;
    alarm[2]=1;
    }
else if (argument0==1){
    repeat(30){
        tempdir=random(360);
        tempdist=random(40);
        tempx=x+cos(degtorad(tempdir))*tempdist*0.5;
        tempy=y-sin(degtorad(tempdir))*tempdist;
        tempid=instance_create(tempx,tempy,obj_disruptorexplo);
        tempid.sprite_index=spr_barrierexplo2;
        tempid.direction=tempdir;
        tempid.vspeed-=6;
        }
    tempid=instance_create(x,y,obj_disruptorexplo2);
    tempid.sprite_index=spr_barrierexplo3;
    tempid.image_index=0;
    scr_shakescreen(1);
    scr_sound("exp_glass");
    scr_sound("exp_pew");
    instance_destroy();
    }