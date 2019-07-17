//argument0 is phrase

talkcyc=0;
//0: identify target (announce 1)
if (argument0==0){
    talk[0]=2;
    talk[1]=0;
    talk[2]=0;
    }
//1: nuke (weapon 7)
else if (argument0==1){
    talk[0]=1;
    talk[1]=2;
    talk[2]=0;
    }
//2: engaging target (announce 2)
else if (argument0==2){
    talk[0]=2;
    talk[1]=0;
    talk[2]=1;
    }
//3: heavy damage sustained (announce 3)
else if (argument0==3){
    talk[0]=2;
    talk[1]=0;
    talk[2]=2;
    }
//4: rocket hail (weapon 4)
else if (argument0==4){
    talk[0]=1;
    talk[1]=1;
    talk[2]=0;
    }
//5: tackle (weapon 1)
else if (argument0==5){
    talk[0]=1;
    talk[1]=0;
    talk[2]=0;
    }
//6: spread rockets (weapon 3)
else if (argument0==6){
    talk[0]=1;
    talk[1]=0;
    talk[2]=2;
    }
//7: splintergun (weapon 2)
else if (argument0==7){
    talk[0]=1;
    talk[1]=0;
    talk[2]=1;
    }
//8: mpfb (weapon 6)
else if (argument0==8){
    talk[0]=1;
    talk[1]=1;
    talk[2]=2;
    }
//9: plasma cannon (weapon 5)
else if (argument0==9){
    talk[0]=1;
    talk[1]=1;
    talk[2]=1;
    }
