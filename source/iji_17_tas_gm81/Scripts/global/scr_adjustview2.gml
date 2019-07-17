//This was never actually called previously. Best to
// keep it unused (except the new Tor smash shake hack)
// in case re-enabling it would break something.

/*
//When gameover
if (room!=rom_sector15){
    obj_shakescreen.x = x+400;
    obj_shakescreen.y = y+300;
    }
//sector15
else{
obj_shakescreen.x=obj_tortrigger.x;
obj_shakescreen.y=obj_tortrigger.y;
x=view_xview[0];
x=floor(x);
y=floor(y);
obj_shakescreen.x=floor(obj_shakescreen.x);
obj_shakescreen.y=floor(obj_shakescreen.y);
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
strikelightx=obj_shakescreen.x-230-floor(((s15x+400)/20));
strikelighty=obj_shakescreen.y-130;
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
*/

//Tor smash shake
if (room==rom_sector15){
    if (torsmashshake>0){
        torsmashshake-=1;
        if (torsmashshake mod 2==1)
            s15bgyoff=6;
        else
            s15bgyoff=-6;
        }
    else
        s15bgyoff=0;
    //Update Shakescreen position
    obj_shakescreen.x=floor(obj_shakescreen.x);
    obj_shakescreen.y=floor(obj_shakescreen.y+s15bgyoff);
    }