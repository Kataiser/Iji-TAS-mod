//Init at beginning of Sector
//Executed by sabot

x=obj_iji.x;
y=obj_iji.y+46;
instance_create(x,y,obj_horseenter);
instance_create(x,y,obj_horse);
finalx=x;
finaly=y;
wavetext="";
if (room==rom_sector1)
    wavetext="STAGE 1";
else if (room==rom_sector2)
    wavetext="STAGE 2";
else if (room==rom_sector3)
    wavetext="STAGE 3";
else if (room==rom_sector4)
    wavetext="STAGE 4";
else if (room==rom_sector5)
    wavetext="STAGE 5";
else if (room==rom_sector6)
    wavetext="STAGE 6";
else if (room==rom_sector7)
    wavetext="STAGE 7";
else if (room==rom_sector8)
    wavetext="STAGE 8";
else if (room==rom_sector9)
    wavetext="STAGE 9";
else if (room==rom_sectorx)
    wavetext="STAGE X";
wavetextprev="";
wavetextoff=1200;
ignoresmooth=1;
horsehp=10;
for (i=0;i<19;i+=1)
    gameovertext[i]="";
gameovertext[3]="OUT OF HORSES LOSER";
gameovertext[5]="Final score: ";
gameovertext[9]="Game by YUKABACERA";
gameovertext[13]=".....Press Escape to quit.....";
for (i=0;i<19;i+=1)
    victorytext[i]="";
victorytext[0]="The legendary missile pony";
victorytext[1]="HORSEGUN PUNCHESBULLETS";
victorytext[2]="Has destroyed the Space N^rd armada";
victorytext[3]="AND SAVED THE UNIVERSE";
victorytext[5]="Final score: ";
victorytext[8]="Hint: type DEVASTATE on the Main menu";
               //---------1---------1---------1---------1---------1---------1-
victorytext[11]="I made this game for you. Sorry for drinking your hot drinks";
victorytext[12]="and poking your shoulder all the time. I should have told you";
victorytext[13]="what present I wanted instead of saying whatever's fine and";
victorytext[14]="then refusing to eat that Supernova Pudding that was really";
victorytext[15]="expensive in the vending machine and I feel bad about it.";
victorytext[16]="COME BACK TO ME VATEILIKA - LOVE FROM YUKABACERA";
victorytext[18]=".....Press Escape to quit.....";
global.shakescreen=0;
global.backuphorsepoints=global.horsepoints;
alarm[4]=2;
alarm[8]=1;
if (room==rom_sector1 && global.noblood)
    tile_layer_hide(999999);
with(obj_iji) instance_destroy();
with(obj_enemy) instance_destroy();
with(obj_terminal) instance_destroy();
with(obj_camera) instance_destroy();
with(obj_bgspeaker) instance_destroy();
with(obj_lamp) instance_destroy();
with(obj_exitsign) instance_destroy();
with(obj_ribbon) instance_destroy();
with(obj_log1) instance_destroy();
with(obj_poster) instance_destroy();
with(obj_supercharge) instance_destroy();
with(obj_nanooverload) instance_destroy();
with(obj_weaponpickup) instance_destroy();
with(obj_xp) instance_destroy();
with(obj_ammo) instance_destroy();
with(obj_station) instance_destroy();
with(obj_door) instance_destroy();
with(obj_cdoor) instance_destroy();
with(obj_locationmessage) instance_destroy();
with(obj_blackbug) instance_destroy();
with(obj_dripnest) instance_destroy();
with(obj_blitnest) instance_destroy();
with(obj_warpback) instance_destroy();
with(obj_meta) instance_destroy();
with(obj_lift) instance_destroy();
with(obj_glass) instance_destroy();
with(obj_glass2) instance_destroy();
with(obj_paper) instance_destroy();
with(obj_weapstation) instance_destroy();
with(obj_tele) instance_destroy();
with(obj_teledest) instance_destroy();
with(obj_tasenship) instance_destroy();
with(obj_komatoship) instance_destroy();
with(obj_sec3hologram) instance_destroy();
with(obj_sec3holotrigger) instance_destroy();
with(obj_sec3specialtrucetrig) instance_destroy();
with(obj_crumble6) instance_destroy();
with(obj_crumble72) instance_destroy();
with(obj_dan) instance_destroy();
with(obj_liftoff) instance_destroy();
with(obj_sec9elec) instance_destroy();
with(obj_mbulkhead) instance_destroy();
with(obj_corpse1) instance_destroy();
with(obj_corpse2) instance_destroy();
with(obj_corpse3) instance_destroy();
with(obj_corpse4) instance_destroy();
with(obj_corpse5) instance_destroy();
with(obj_sec9sdoll) instance_destroy();
with(obj_sec9elite) instance_destroy();
with(obj_sec9commander) instance_destroy();
with(obj_sec9vateilika) instance_destroy();
with(obj_sec9slash) instance_destroy();
with(obj_cdoor92) instance_destroy();
with(obj_sec9cp2) instance_destroy();
with(obj_turretdead) instance_destroy();
with(obj_secxcp2) instance_destroy();
scr_addfonts();
