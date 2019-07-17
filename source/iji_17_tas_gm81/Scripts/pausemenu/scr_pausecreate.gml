alarm[0]=10;
tier="main";
temptier="main";
selected=1;
selections=7;
if (global.horse){
    tier="horse";
    temptier="horse";
    selections=6;
    }
weaponinfo=1;
enemyinfo=1;
pausemenu=1;
nocovers=0;
(instance_create(view_xview[0]+242,view_yview[0]+166,obj_marker)).depth=-1000005;

//build weapon list
weaponlist[1]=1;
step=1;
weaponlistlength=1;
if (global.weapon2){
    step+=1;
    weaponlist[step]=2;
    weaponlistlength+=1;
    }
if (global.weapon3){
    step+=1;
    weaponlist[step]=3;
    weaponlistlength+=1;
    }
if (global.weapon4){
    step+=1;
    weaponlist[step]=4;
    weaponlistlength+=1;
    }
if (global.weapon5){
    step+=1;
    weaponlist[step]=5;
    weaponlistlength+=1;
    }
if (global.weapon6){
    step+=1;
    weaponlist[step]=6;
    weaponlistlength+=1;
    }
if (global.weapon7){
    step+=1;
    weaponlist[step]=7;
    weaponlistlength+=1;
    }
if (global.weapon8){
    step+=1;
    weaponlist[step]=8;
    weaponlistlength+=1;
    }
if (global.weapon9){
    step+=1;
    weaponlist[step]=9;
    weaponlistlength+=1;
    }
if (global.weapon10){
    step+=1;
    weaponlist[step]=10;
    weaponlistlength+=1;
    }
if (global.weapon11){
    step+=1;
    weaponlist[step]=11;
    weaponlistlength+=1;
    }
if (global.weapon12){
    step+=1;
    weaponlist[step]=12;
    weaponlistlength+=1;
    }
if (global.weapon13){
    step+=1;
    weaponlist[step]=13;
    weaponlistlength+=1;
    }
if (global.weapon14){
    step+=1;
    weaponlist[step]=14;
    weaponlistlength+=1;
    }
if (global.weapon15){
    step+=1;
    weaponlist[step]=15;
    weaponlistlength+=1;
    }
if (global.weapon16){
    step+=1;
    weaponlist[step]=16;
    weaponlistlength+=1;
    }
if (global.weapon17){
    step+=1;
    weaponlist[step]=17;
    weaponlistlength+=1;
    }
if (global.weapon21){
    step+=1;
    weaponlist[step]=18;
    weaponlistlength+=1;
    }
if (global.weapon20){
    step+=1;
    weaponlist[step]=19;
    weaponlistlength+=1;
    }
step+=1;
weaponlist[step]=20;
weaponlistlength+=1;
if (global.weapon2){
    step+=1;
    weaponlist[step]=21;
    weaponlistlength+=1;
    }
if (global.weapon3){
    step+=1;
    weaponlist[step]=22;
    weaponlistlength+=1;
    }
if (global.weapon4){
    step+=1;
    weaponlist[step]=23;
    weaponlistlength+=1;
    }
if (global.weapon5){
    step+=1;
    weaponlist[step]=24;
    weaponlistlength+=1;
    }
if (global.weapon6){
    step+=1;
    weaponlist[step]=25;
    weaponlistlength+=1;
    }
if (global.weapon7){
    step+=1;
    weaponlist[step]=26;
    weaponlistlength+=1;
    }
if (global.weapon8){
    step+=1;
    weaponlist[step]=27;
    weaponlistlength+=1;
    }

//build enemy list
if (room==rom_sector1 || room==rom_sectorz){
    enemylist[1]=3;
    enemylist[2]=4;
    enemylistlength=2;
    }
else if (room==rom_sector2){
    enemylist[1]=1;
    enemylist[2]=3;
    enemylist[3]=4;
    enemylistlength=3;
    }
else if (room==rom_sector3 || room==rom_sector11){
    enemylist[1]=1;
    enemylist[2]=2;
    enemylist[3]=3;
    enemylist[4]=4;
    enemylist[5]=5;
    enemylist[6]=6;
    enemylistlength=6;
    }
else if (room==rom_sector4){
    enemylist[1]=1;
    enemylist[2]=2;
    enemylist[3]=3;
    enemylist[4]=4;
    enemylist[5]=5;
    enemylist[6]=6;
    enemylist[7]=8;
    enemylistlength=7;
    }
else if (room==rom_sector5 || room==rom_sector12){
    enemylist[1]=1;
    enemylist[2]=2;
    enemylist[3]=3;
    enemylist[4]=4;
    enemylist[5]=5;
    enemylist[6]=6;
    enemylist[7]=7;
    enemylist[8]=8;
    enemylistlength=8;
    }
else if (room==rom_sector6){
    enemylist[1]=1;
    enemylist[2]=2;
    enemylist[3]=3;
    enemylist[4]=4;
    enemylist[5]=5;
    enemylist[6]=6;
    enemylist[7]=7;
    enemylist[8]=8;
    enemylist[9]=9;
    enemylistlength=9;
    }
else if (room==rom_sector7 || room==rom_sector13){
    enemylist[1]=1;
    enemylist[2]=2;
    enemylist[3]=3;
    enemylist[4]=4;
    enemylist[5]=5;
    enemylist[6]=6;
    enemylist[7]=7;
    enemylist[8]=8;
    enemylist[9]=9;
    enemylist[10]=11;
    enemylistlength=10;
    }
else if (room==rom_sector8){
    enemylist[1]=1;
    enemylist[2]=2;
    enemylist[3]=3;
    enemylist[4]=4;
    enemylist[5]=5;
    enemylist[6]=6;
    enemylist[7]=7;
    enemylist[8]=8;
    enemylist[9]=9;
    enemylist[10]=10;
    enemylist[11]=11;
    enemylistlength=11;
    }
else if (room==rom_sector9 || room==rom_sector14){
    enemylist[1]=1;
    enemylist[2]=2;
    enemylist[3]=3;
    enemylist[4]=4;
    enemylist[5]=5;
    enemylist[6]=6;
    enemylist[7]=7;
    enemylist[8]=8;
    enemylist[9]=9;
    enemylist[10]=10;
    enemylist[11]=11;
    enemylist[12]=12;
    enemylistlength=12;
    }
else if (room==rom_sectorx || room==rom_sector15){
    enemylist[1]=1;
    enemylist[2]=2;
    enemylist[3]=3;
    enemylist[4]=4;
    enemylist[5]=5;
    enemylist[6]=6;
    enemylist[7]=7;
    enemylist[8]=8;
    enemylist[9]=9;
    enemylist[10]=10;
    enemylist[11]=11;
    enemylist[12]=12;
    enemylist[13]=13;
    enemylistlength=13;
    }
