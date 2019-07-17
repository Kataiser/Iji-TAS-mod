x=obj_chaintracer.x;
y=obj_chaintracer.y;
targetid=obj_chaintracer.targetid;
targettype=obj_chaintracer.targettype;
targetsec=obj_chaintracer.targetsec;
pcyc+=1;
if (pcyc==4)
    pcyc2=1;
else if (pcyc==6)
    pcyc2=2;
else if (pcyc==7)
    pcyc2=3;
else if (pcyc==9)
    pcyc2=4;
else if (pcyc==13)
    pcyc2=3;
else if (pcyc==15)
    pcyc2=2;
else if (pcyc==16)
    pcyc2=1;
else if (pcyc==18){
    pcyc2=0;
    pcyc=0;
    }
drawcyc+=1;
if (drawcyc>=3)
    drawcyc=0;
if (obj_chaintracer.drawme){
    if (drawcyc>=1){
        if (targetid>0 && targettype>0){
            if (global.cracklevel>=targetsec)
                draw_sprite(spr_chaintracer,1,floor(x),floor(y));
            else
                draw_sprite(spr_chaintracer,0,floor(x),floor(y));
            }
        else
            draw_sprite(spr_chaintracer,0,floor(x),floor(y));
        }
    if (targetid>0 && targettype>=1){
        x1=targetid.bbox_left-2;
        x2=targetid.bbox_right+2;
        y1=targetid.bbox_top-2;
        y2=targetid.bbox_bottom+2;
        if (targetid.enemytype==16){
            x1-=32;
            x2-=8;
            y1+=16;
            y2-=24;
            }
        draw_sprite(spr_chainsecurity3,0,x1-pcyc2,y1-pcyc2);
        draw_sprite(spr_chainsecurity3,1,x2+pcyc2,y1-pcyc2);
        draw_sprite(spr_chainsecurity3,2,x1-pcyc2,y2+pcyc2);
        draw_sprite(spr_chainsecurity3,3,x2+pcyc2,y2+pcyc2);
        if (targetid.cracked)
            draw_sprite(spr_chainsecurity4,0,x1-9,y1-18);
        else{
            draw_sprite(spr_chainsecurity,0,x1-9,y1-18);
            if (targetsec<10)
                draw_sprite(spr_chainsecurity2,targetsec mod 10,x1+7,y1-23);
            else if (targetsec<100){
                draw_sprite(spr_chainsecurity2,floor(targetsec/10),x1+7,y1-23);
                draw_sprite(spr_chainsecurity2,targetsec mod 10,x1+15,y1-23);
                }
            else{
                draw_sprite(spr_chainsecurity2,floor(targetsec/100),x1+7,y1-23);
                draw_sprite(spr_chainsecurity2,floor(targetsec/10),x1+15,y1-23);
                draw_sprite(spr_chainsecurity2,targetsec mod 10,x1+23,y1-23);
                }
            }
        }
    }
