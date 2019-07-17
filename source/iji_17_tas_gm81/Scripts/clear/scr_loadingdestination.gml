//Destinations
//In obj_loading
repeat(10)
    sound_stop_all();
global.gamma=0;
global.gammared=0;
global.gammagreen=0;
global.gammablue=0;
screen_redraw();
if (destination=="0")
    room_goto_next();
if (destination=="clear")
    room_goto(rom_clear);
if (destination=="sector1")
    room_goto(rom_sector1);
if (destination=="sector2")
    room_goto(rom_sector2);
if (destination=="sector3")
    room_goto(rom_sector3);
if (destination=="sector11")
    room_goto(rom_sector11);
if (destination=="sector4")
    room_goto(rom_sector4);
if (destination=="sector5")
    room_goto(rom_sector5);
if (destination=="sector12")
    room_goto(rom_sector12);
if (destination=="sector6")
    room_goto(rom_sector6);
if (destination=="sector7")
    room_goto(rom_sector7);
if (destination=="sector13")
    room_goto(rom_sector13);
if (destination=="sector8")
    room_goto(rom_sector8);
if (destination=="sector9")
    room_goto(rom_sector9);
if (destination=="sector14")
    room_goto(rom_sector14);
if (destination=="sector15"){
    room_goto(rom_sector15);
    global.sector=15;
    }
if (destination=="sector16"){
    room_goto(rom_sector16);
    global.sector=15;
    }
if (destination=="sectorx")
    room_goto(rom_sectorx);
if (destination=="sectorz")
    room_goto(rom_sectorz);
if (destination=="endgame")
    room_goto(rom_endgame);
if (destination=="cut")
    room_goto(rom_cut);
if (destination=="restart")
    room_goto(rom_main);
