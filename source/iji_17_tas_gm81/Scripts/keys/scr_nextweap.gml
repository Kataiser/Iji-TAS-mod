//the lazy way :o
if (global.weapon==1 || global.weapon==9){
    if (global.weapon2) scr_changeweapon(2);
    else if (global.weapon3) scr_changeweapon(3);
    else if (global.weapon4) scr_changeweapon(4);
    else if (global.weapon5) scr_changeweapon(5);
    else if (global.weapon6) scr_changeweapon(6);
    else if (global.weapon7) scr_changeweapon(7);
    else if (global.weapon8) scr_changeweapon(8);
    else if (global.weapon17 && !global.passive) scr_changeweapon(9);
    else if (global.weapon21 && !global.passive) scr_changeweapon(10);
    else if (global.weapon20 && !global.passive) scr_changeweapon(10);
    }
else if (global.weapon==2 || global.weapon==10){
    if (global.weapon3) scr_changeweapon(3);
    else if (global.weapon4) scr_changeweapon(4);
    else if (global.weapon5) scr_changeweapon(5);
    else if (global.weapon6) scr_changeweapon(6);
    else if (global.weapon7) scr_changeweapon(7);
    else if (global.weapon8) scr_changeweapon(8);
    else if (global.weapon17 && !global.passive) scr_changeweapon(9);
    else if (global.weapon21 && !global.passive) scr_changeweapon(10);
    else if (global.weapon20 && !global.passive) scr_changeweapon(10);
    else scr_changeweapon(1);
    }
else if (global.weapon==3 || global.weapon==11){
    if (global.weapon4) scr_changeweapon(4);
    else if (global.weapon5) scr_changeweapon(5);
    else if (global.weapon6) scr_changeweapon(6);
    else if (global.weapon7) scr_changeweapon(7);
    else if (global.weapon8) scr_changeweapon(8);
    else if (global.weapon17 && !global.passive) scr_changeweapon(9);
    else if (global.weapon21 && !global.passive) scr_changeweapon(10);
    else if (global.weapon20 && !global.passive) scr_changeweapon(10);
    else scr_changeweapon(1);
    }
else if (global.weapon==4 || global.weapon==12){
    if (global.weapon5) scr_changeweapon(5);
    else if (global.weapon6) scr_changeweapon(6);
    else if (global.weapon7) scr_changeweapon(7);
    else if (global.weapon8) scr_changeweapon(8);
    else if (global.weapon17 && !global.passive) scr_changeweapon(9);
    else if (global.weapon21 && !global.passive) scr_changeweapon(10);
    else if (global.weapon20 && !global.passive) scr_changeweapon(10);
    else scr_changeweapon(1);
    }
else if (global.weapon==5 || global.weapon==13){
    if (global.weapon6) scr_changeweapon(6);
    else if (global.weapon7) scr_changeweapon(7);
    else if (global.weapon8) scr_changeweapon(8);
    else if (global.weapon17 && !global.passive) scr_changeweapon(9);
    else if (global.weapon21 && !global.passive) scr_changeweapon(10);
    else if (global.weapon20 && !global.passive) scr_changeweapon(10);
    else scr_changeweapon(1);
    }
else if (global.weapon==6 || global.weapon==14){
    if (global.weapon7) scr_changeweapon(7);
    else if (global.weapon8) scr_changeweapon(8);
    else if (global.weapon17 && !global.passive) scr_changeweapon(9);
    else if (global.weapon21 && !global.passive) scr_changeweapon(10);
    else if (global.weapon20 && !global.passive) scr_changeweapon(10);
    else scr_changeweapon(1);
    }
else if (global.weapon==7 || global.weapon==15){
    if (global.weapon8) scr_changeweapon(8);
    else if (global.weapon17 && !global.passive) scr_changeweapon(9);
    else if (global.weapon21 && !global.passive) scr_changeweapon(10);
    else if (global.weapon20 && !global.passive) scr_changeweapon(10);
    else scr_changeweapon(1);
    }
else if (global.weapon==8 || global.weapon==16){
    if (global.weapon17 && !global.passive) scr_changeweapon(9);
    else if (global.weapon21 && !global.passive) scr_changeweapon(10);
    else if (global.weapon20 && !global.passive) scr_changeweapon(10);
    else scr_changeweapon(1);
    }
else if (global.weapon==17){
    if (global.weapon21 || global.weapon20) scr_changeweapon(10);
    else scr_changeweapon(1);
    }
else if (global.weapon==21){
    if (global.weapon20) scr_changeweapon(10);
    else scr_changeweapon(1);
    }
else if (global.weapon==20){
    scr_changeweapon(1);
    }