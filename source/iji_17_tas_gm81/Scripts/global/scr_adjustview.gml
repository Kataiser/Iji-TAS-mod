//Others
if (room!=rom_sector15 && room!=rom_sector16){
if (annihilatorbeta){
    if (obj_annihilatorbeta.facing==0){
        if (facadjust>-32)
            facadjust-=2;
        }
    else{
        if (facadjust<32)
            facadjust+=2;
        }
    x=obj_annihilatorbeta.x-350+global.viewxoffset+facadjust;
    y=obj_annihilatorbeta.y-220+global.viewyoffset;
    }
else{
if (global.facing==0){
    if (facadjust>-32)
        facadjust-=2;
    }
if (global.facing==1){
    if (facadjust<32)
        facadjust+=2;
    }
if (obj_iji.shredder){
    shreddery2=-28;
if (abs(shredderx)<=4)
    shredderx=0;
    else{
    if (shredderx>0)
        shredderx-=4;
    if (shredderx<0)
        shredderx+=4;
        }
if (abs(shreddery)<=4)
    shreddery=0;
    else{
    if (shreddery>0)
        shreddery-=4;
    if (shreddery<0)
        shreddery+=4;
        }
    }
else{
    shredderx=0;
    shreddery=0;
    shreddery2=0;
    }

if (obj_iji.sprite_index==spr_climb || obj_iji.sprite_index==spr_climbleft){
    if (obj_iji.image_index==0){
        climbx=obj_iji.xprevious-obj_iji.x;
        climby=obj_iji.yprevious-obj_iji.y;
        }
    }
if (climbx<-3) climbx+=2;
if (climbx>3) climbx-=2;
if (climby<-3) climby+=2;
if (climby>3) climby-=2;
if (climbx<0) climbx+=1;
if (climbx>0) climbx-=1;
if (climby<0) climby+=1;
if (climby>0) climby-=1;

finalx=obj_iji.x-395+global.viewxoffset+climbx+shredderx+facadjust;
if (ignoresmooth)
    x=finalx;
else
    x=finalx+(xprevious-finalx)/2;

if (obj_iji.sprite_index == spr_hitfloor || obj_iji.sprite_index == spr_hitfloorleft || obj_iji.sprite_index == spr_knockdown || obj_iji.sprite_index == spr_knockdownleft){
    if (knockcycle < 29)
        knockcycle += 2;
    finaly=obj_iji.y-230-knockcycle+global.viewyoffset+climby+shreddery+shreddery2;
    if (ignoresmooth)
        y=finaly;
    else
        y=finaly+(yprevious-finaly)/2;
    }
else{
    knockcycle = 0;
    finaly=obj_iji.y-230+global.viewyoffset+climby+shreddery+shreddery2;
    if (ignoresmooth)
        y=finaly;
    else
        y=finaly+(yprevious-finaly)/2;
    }
}

//locked Y / Iosa cam
if (global.iosaphase==0){
    if (room==rom_sector14)
        scr_iosacam();
    }

if (global.shakescreen <= 0){
    obj_shakescreen.x = x+400;
    obj_shakescreen.y = y+300;
    }
if (global.shakescreen > 10){
    obj_shakescreen.x = x+370+random(60);
    obj_shakescreen.y = y+270+random(60);
    }
if (global.shakescreen > 6 && global.shakescreen < 11){
    obj_shakescreen.x = x+384+random(32);
    obj_shakescreen.y = y+284+random(32);
    }
if (global.shakescreen > 3 && global.shakescreen < 7){
    obj_shakescreen.x = x+392+random(16);
    obj_shakescreen.y = y+292+random(16);
    }
if (global.shakescreen > 0 && global.shakescreen < 4){
    obj_shakescreen.x = x+397+random(6);
    obj_shakescreen.y = y+297+random(6);
    }
if (global.shakescreen>0){
    global.shakescreen-=1;
    }
}

//Sector 15
else if (room==rom_sector15){
if (obj_sabot.unlockcamera){
    obj_shakescreen.x=432;
    obj_shakescreen.y=1700;
    x=floor(x);
    y=floor(y);
    obj_shakescreen.x=floor(obj_shakescreen.x);
    obj_shakescreen.y=floor(obj_shakescreen.y);
    finalx=x;
    finaly=y;
    }
else{
    if (instance_number(obj_iji)==1)
        s15x=obj_iji.x;
    obj_tortrigger.x=710+floor(s15x/5);
    if (fullpcamera){
        if (instance_number(obj_tortrigger)>0)
            obj_tortrigger.x=432;
        }
    if (global.shakescreen <= 0){
        obj_shakescreen.x=obj_tortrigger.x;
        obj_shakescreen.y=obj_tortrigger.y;
        }
    if (global.shakescreen > 10){
        obj_shakescreen.x=obj_tortrigger.x-30+random(60);
        obj_shakescreen.y=obj_tortrigger.y-30+random(60);
        }
    if (global.shakescreen > 6 && global.shakescreen < 11){
        obj_shakescreen.x=obj_tortrigger.x-20+random(40);
        obj_shakescreen.y=obj_tortrigger.y-20+random(40);
        }
    if (global.shakescreen > 3 && global.shakescreen < 7){
        obj_shakescreen.x=obj_tortrigger.x-11+random(22);
        obj_shakescreen.y=obj_tortrigger.y-11+random(22);
        }
    if (global.shakescreen > 0 && global.shakescreen < 4){
        obj_shakescreen.x=obj_tortrigger.x-7+random(14);
        obj_shakescreen.y=obj_tortrigger.y-7+random(14);
        }
    if (global.shakescreen>0){
        global.shakescreen-=1;
        }
    x=floor(x);
    y=floor(y);
    obj_shakescreen.x=floor(obj_shakescreen.x);
    obj_shakescreen.y=floor(obj_shakescreen.y);
    finalx=x;
    finaly=y;
    background_x[0]=obj_shakescreen.x-360-floor(((s15x+400)/20));
    background_y[0]=obj_shakescreen.y-300;
    background_x[1]=background_x[0]+425;
    background_y[1]=background_y[0];
    background_x[2]=background_x[0];
    background_y[2]=background_y[0]+250;
    background_x[3]=background_x[0]+425;
    background_y[3]=background_y[0]+250;
    //Not affected by screen shaking
    with (obj_tor2){
        x=background_x[0]+424;
        y=background_y[0]+realy;
        }
    with (obj_deathhail){
        x=background_x[0]+realx;
        y=background_y[0]+realy;
        }
    with (obj_deathhailspark){
        x=background_x[0]+realx;
        y=background_y[0]+realy;
        }
    with (obj_tor2muzzleflash){
        x=background_x[0]+realx;
        y=background_y[0]+realy;
        }
    //Strikelightpos
    strikelightx=obj_shakescreen.x-230-floor(((s15x+400)/20));
    strikelighty=obj_shakescreen.y-130;
    }
}

//Sector 16
else if (room==rom_sector16)
    scr_adjustview16();

//Strikelights
if (room==rom_sector15 || room=rom_sector16){
    with (obj_strikelight){
        if (tag==1){
            x=obj_sabot.strikelightx;
            y=obj_sabot.strikelighty;
            }
        if (tag==2){
            x=obj_sabot.strikelightx+100;
            y=obj_sabot.strikelighty-68;
            }
        if (tag==3){
            x=obj_sabot.strikelightx+195;
            y=obj_sabot.strikelighty-12;
            }
        if (tag==4){
            x=obj_sabot.strikelightx+475;
            y=obj_sabot.strikelighty+15;
            }
        if (tag==5){
            x=obj_sabot.strikelightx+525;
            y=obj_sabot.strikelighty-78;
            }
        if (tag==6){
            x=obj_sabot.strikelightx+624;
            y=obj_sabot.strikelighty-14;
            }
        if (tag==7){
            x=obj_sabot.strikelightx-57;
            y=obj_sabot.strikelighty+125;
            }
        if (tag==8){
            x=obj_sabot.strikelightx+275;
            y=obj_sabot.strikelighty+77;
            }
        if (tag==9){
            x=obj_sabot.strikelightx+379;
            y=obj_sabot.strikelighty+94;
            }
        if (tag==10){
            x=obj_sabot.strikelightx+604;
            y=obj_sabot.strikelighty+105;
            }
        if (tag==11){
            x=obj_sabot.strikelightx+38;
            y=obj_sabot.strikelighty+199;
            }
        if (tag==12){
            x=obj_sabot.strikelightx+154;
            y=obj_sabot.strikelighty+134;
            }
        if (tag==13){
            x=obj_sabot.strikelightx+423;
            y=obj_sabot.strikelighty+159;
            }
        if (tag==14){
            x=obj_sabot.strikelightx+497;
            y=obj_sabot.strikelighty+151;
            }
        if (tag==15){
            x=obj_sabot.strikelightx+649;
            y=obj_sabot.strikelighty+180;
            }
        }
    }

//Tor smash shake
s15bgyoff=0;
if (room==rom_sector15){
    if (torsmashshake>0){
        torsmashshake-=1;
        s15bgyoff=(torsmashshake mod 2)*6;
        }
    }

//Update Shakescreen position
x=floor(x);
y=floor(y);
obj_shakescreen.x=floor(obj_shakescreen.x);
obj_shakescreen.y=floor(obj_shakescreen.y+s15bgyoff);

//secx
if (room=rom_sectorx){
    background_x[1]=11008;
    background_y[1]=obj_shakescreen.y-300;
    }