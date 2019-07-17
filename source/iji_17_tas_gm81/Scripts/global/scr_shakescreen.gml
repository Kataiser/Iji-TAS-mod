//Shake screen
//Argument0 is the power
// 0 tiny
// 1 light
// 2 medium
// 3 heavy
// 4 massive
// 5 catastrophic
repeat(2){
if ((global.noshake==1 || room==rom_sector11 || room==rom_sector12 || room==rom_sector13 || room==rom_sector14 || room==rom_sector15 || instance_number(obj_asha2)==1) && argument0>0)
    argument0-=1;
    }

if (argument0==0 && global.shakescreen<1){
    global.shakescreen = 1;
    }
if (argument0==1 && global.shakescreen<3){
    global.shakescreen = 3;
    }
if (argument0==2 && global.shakescreen<6){
    global.shakescreen = 6;
    }
if (argument0==3 && global.shakescreen<10){
    global.shakescreen = 10;
    }
if (argument0==4 && global.shakescreen<26){
    global.shakescreen = 26;
    }
if (argument0==5){
    global.shakescreen = 50;
    }