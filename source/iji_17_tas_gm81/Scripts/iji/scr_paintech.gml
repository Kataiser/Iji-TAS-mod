//Teched pain
playpainsfx=1;
playbigpainsfx=0;
takingpain=1;
if (global.state==6)
    recovering=0;
else
    recovering=1;
if (global.strengthlevel==10)
    alarm[7]=90;
else
    alarm[7]=60;
scr_techeffect();