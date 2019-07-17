if (!init){
    init=1;
    shotcyc=200;
    if (type==0){
        hp=2;
        dir=2;
        }
    else if (type==1){
        hp=8;
        dir=1;
        }
    else if (type==2){
        hp=16;
        }
    else if (type==3){
        hp=48;
        }
    else if (type==4){
        hp=64;
        dir=floor(random(4));
        }
    else if (type==5){
        maxhp=2500;
        hp=2500;
        temphp=0;
        img=0;
        shotcyc=-100;
        startx=x;
        starty=y;
        depth=-4;
        sprite_index=spr_proxima_body;
        mask_index=spr_proxima_body;
        numshots=1;
        }
    }

if (type==5 && hp>0){
    hpcyc+=1;
    if (hpcyc>=5){
        hpcyc=0;
        if (temphp<=-10)
            temphp=-10;
        hp+=temphp;
        temphp=0;
        }
    }

if (!horsegameover && !horsevictory){
    if (!active){
        if (x>obj_sabot.x-360 && x<obj_sabot.x+360 && y>obj_sabot.y-260 && y<obj_sabot.y+260){
            active=1;
            if (type==2)
                direction=point_direction(x,y,obj_sabot.lastx,obj_sabot.lasty);
            else if (type==3)
                dir=obj_sabot.horsecameradir;
            }
        }
    else{
        if (type==0){
            spd=3;
            if (dir==0){
                if (place_free(x+spd,y))
                    x+=spd;
                else
                    dir=1;
                }
            else{
                if (place_free(x-spd,y))
                    x-=spd;
                else
                    dir=0;
                }
            }
        else if (type==1){
            spd=3;
            if (dir==0){
                if (place_free(x,y-spd))
                    y-=spd;
                else
                    dir=1;
                }
            else{
                if (place_free(x,y+1))
                    y+=4;
                else
                    dir=0;
                }
            shotcyc+=1;
            if (shotcyc>=30){
                shotcyc=0;
                scr_sound("glo_reflect");
                tempid=instance_create(x-4,y-4,obj_horseeshot);
                tempid.speed=6;
                tempid.direction=point_direction(x,y,obj_sabot.lastx,obj_sabot.lasty);
                }
            }
        else if (type==2){
            speed=4;
            shotcyc+=1;
            if (shotcyc>=40){
                shotcyc=0;
                direction=point_direction(x,y,obj_sabot.lastx,obj_sabot.lasty);
                scr_sound("glo_reflect");
                for(i=-1;i<2;i+=1){
                    tempid=instance_create(x,y,obj_horseeshot);
                    tempid.speed=6;
                    tempid.direction=point_direction(x,y,obj_sabot.lastx,obj_sabot.lasty)+i*60;
                    }
                }
            if (!place_free(x+hspeed,y+hspeed)){
                if (!place_free(x-8,y))
                    hspeed=abs(hspeed);
                else if (!place_free(x+8,y))
                    hspeed=-abs(hspeed);
                if (!place_free(x,y-8))
                    vspeed=abs(vspeed);
                else if (!place_free(x,y+8))
                    vspeed=-abs(vspeed);
                }
            }
        else if (type==3){
            spd=obj_sabot.camspd;
            if (dir==0){
                if (place_free(x+spd,y))
                    x+=spd;
                else
                    dir=2;
                }
            else if (dir==1){
                if (place_free(x,y-spd))
                    y-=spd;
                else
                    dir=3;
                }
            else if (dir==2){
                if (place_free(x-spd,y))
                    x-=spd;
                else
                    dir=0;
                }
            else if (dir==3){
                if (place_free(x,y+spd))
                    y+=spd;
                else
                    dir=1;
                }
            shotcyc+=1;
            if (shotcyc>=30){
                shotcyc=0;
                scr_sound("glo_reflect");
                direction=point_direction(x,y,obj_sabot.lastx,obj_sabot.lasty);
                tempid=instance_create(x,y,obj_horseeshot);
                tempid.speed=6;
                tempid.direction=point_direction(x,y,obj_sabot.lastx,obj_sabot.lasty)-30+random(60);
                }
            }
        else if (type==4){
            shotcyc+=1;
            if (shotcyc>=30){
                shotcyc=0;
                sadjust=1-sadjust;
                scr_sound("glo_reflect");
                for (i=0;i<8;i+=1){
                    tempid=instance_create(x,y,obj_horseeshot);
                    tempid.speed=6;
                    tempid.direction=i*45+sadjust*22.5;
                    }
                }
            }
        else if (type==5){
            shotcyc+=1;
            if (shotcyc>=10){
                shotcyc=0;
                scr_sound("glo_reflect");
                }
            if (shotcyc>=0){
                shotcyc2+=1;
                if (shotcyc2>=7){
                    shotcyc2=0;
                    repeat(numshots){
                        shotdir+=39.7+numshots*3.14;
                        if (shotdir>=360)
                            shotdir-=360;
                        tempid=instance_create(x,y,obj_horseeshot);
                        tempid.speed=4;
                        tempid.direction=shotdir;
                        tempid.gravity=0.1;
                        tempid.gravity_direction=shotdir-90;
                        }
                    }
                }
            moverot-=1;
            if (moverot<=0)
                moverot+=360;
            dist=(maxhp-hp)/maxhp*160;
            x=startx+cos(degtorad(moverot))*dist;
            y=starty-sin(degtorad(moverot))*dist;
            if (hp<maxhp*0.25){
                img=3;
                numshots=4;
                if (!mpfb3){
                    mpfb3=1;
                    scr_sound("wea_mpfb");
                    scr_shakescreen(3);
                    tempid=instance_create(x,y,obj_horseeshot);
                    tempid.mpfb=1;
                    tempid.sprite_index=spr_mpfb;
                    tempid.mask_index=spr_mpfb;
                    tempid.direction=134;
                    tempid.speed=6;
                    tempid.depth=depth-1;
                    }
                }
            else if (hp<maxhp*0.5){
                img=2;
                numshots=3;
                if (!mpfb2){
                    mpfb2=1;
                    scr_sound("wea_mpfb");
                    scr_shakescreen(3);
                    tempid=instance_create(x,y,obj_horseeshot);
                    tempid.mpfb=1;
                    tempid.sprite_index=spr_mpfb;
                    tempid.mask_index=spr_mpfb;
                    tempid.direction=134;
                    tempid.speed=6;
                    tempid.depth=depth-1;
                    }
                }
            else if (hp<maxhp*0.75){
                img=1;
                numshots=2;
                if (!mpfb){
                    mpfb=1;
                    scr_sound("wea_mpfb");
                    scr_shakescreen(3);
                    tempid=instance_create(x,y,obj_horseeshot);
                    tempid.mpfb=1;
                    tempid.sprite_index=spr_mpfb;
                    tempid.mask_index=spr_mpfb;
                    tempid.direction=134;
                    tempid.speed=6;
                    tempid.depth=depth-1;
                    }
                }
            smoke+=img;
            if (smoke>=4){
                smoke-=4;
                (instance_create(x-48+random(96),y-48+random(96),obj_smoke)).depth=depth-1;
                }
            streamimg2+=1;
            if (streamimg2==2){
                streamimg+=1;
                if (streamimg==4)
                    streamimg=0;
                streamimg2=0;
                }
            }
        if (x<obj_sabot.x-430 || x>obj_sabot.x+430 || y<obj_sabot.y-330 || y>obj_sabot.y+330)
            instance_destroy();
        }
    }