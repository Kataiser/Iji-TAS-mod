if (seczmtrig==0){
    seczmtrig=1;
    seczplaya=1;
    seczplaye=1;
    seczplaystart=1;
    szmp=0;
    }
else if (seczmtrig==1){
    seczmtrig=2;
    seczplayb=1;
    seczplaye=0;
    szmspeed=2;
    if (szmp mod 2==1)
        szmp+=1;
    }
else if (seczmtrig==2){
    seczmtrig=3;
    seczplayc=1;
    szmspeed=1;
    }
else if (seczmtrig==3){
    seczmtrig=4;
    if (szmp mod 2==1)
        szmp+=1;
    szmspeed=2;
    }
else if (seczmtrig==4){
    seczmtrig=5;
    seczplaya=0;
    seczplayb=0;
    seczplayc=0;
    seczplayd=1;
    seczplaye=1;
    szmspeed=1;
    }