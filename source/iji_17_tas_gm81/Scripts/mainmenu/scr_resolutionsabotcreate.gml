global.rrkills=1; //Should reflector award kills?
global.nomercy=0;
global.fireanytime=0;
global.randomstations=0;
global.noreloads=0;
global.debug=0;

global.niosas=1; //depracated, but set for safety
set=0;
fade=0;
repeat(250)
    instance_create(random(800),random(600),obj_resolutionpart);
scr_addfonts();
scr_loadmusic();