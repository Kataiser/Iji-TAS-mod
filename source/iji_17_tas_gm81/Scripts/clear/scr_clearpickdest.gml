//Go to other room from Sector
if (room==rom_sector3 || room==rom_sector5 || room==rom_sector7 || room==rom_sector9 || room==rom_sectorx)
    instance_create(x,y,obj_loading);
else
    (instance_create(x,y,obj_loading)).visible=0;
instance_create(x,y,obj_loadingback);
//if (global.sswarp)
//    obj_loading.destination="restart";
//else
    obj_loading.destination="clear";

//Cuts from Sectors
if (room==rom_sector2){
    obj_loading.destination="cut";
    global.cut=3;
    }
if (room==rom_sector4){
    obj_loading.destination="cut";
    global.cut=4;
    }
if (room==rom_sector6){
    obj_loading.destination="cut";
    global.cut=5;
    }
if (room==rom_sector8){
    obj_loading.destination="cut";
    if (global.specialtrigger1==1)
        global.cut=7;
    else
        global.cut=6;
    }

//Go to Elite Krotera
if (room==rom_sector3){
    obj_loading.destination="sector11";
    global.sector=11;
    }
//Go to Assassin Asha
if (room==rom_sector5){
    obj_loading.destination="sector12";
    global.sector=12;
    }
//Go to Sentinel Proxima
if (room==rom_sector7){
    obj_loading.destination="sector13";
    global.sector=13;
    }
//Go to Annihilator Iosa
if (room==rom_sector9){
    obj_loading.destination="sector14";
    global.sector=14;
    }
//Spared Annihilator Iosa
if (room==rom_sector14 && global.killdata[797]==1){
    obj_loading.destination="cut";
    global.cut=11;
    }
//Go to pre-General Tor room
if (room==rom_sectorx){
    obj_loading.destination="sector16";
    global.sector=15;
    }
//General Tor
if (room==rom_sector16){
    obj_loading.destination="sector15";
    global.sector=15;
    }
