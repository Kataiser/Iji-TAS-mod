if (!pause && !gameover && (room==rom_sectorz || room==rom_sector1 || room==rom_sector2 || room==rom_sector3 || room==rom_sector4 || room==rom_sector5 || room==rom_sector6 || room==rom_sector7 || room==rom_sector8 || room==rom_sector9 || room==rom_sectorx || room==rom_sector11 || room==rom_sector12 || room==rom_sector13 || room==rom_sector14 || room==rom_sector15 || room==rom_sector16)){
    //Local time
    drawtimesecs=global.seconds;
    drawtimemins=floor((drawtimesecs-(drawtimesecs mod 60))/60);
    drawtimesecs=drawtimesecs mod 60;
    
    if (drawtimemins<10)
        drawtimestring="0"+string(drawtimemins)+".";
    else
        drawtimestring=string(drawtimemins)+".";
    
    if (drawtimesecs<10)
        drawtimestring+="0";
    drawtimestring+=string(drawtimesecs);
    //show frozen timer
    if (loltime==timesecs)
        drawtimestring+="x";
    loltime=timesecs;

    if (!global.hidetime){
        draw_set_font(global.fontwhite);
        draw_set_color(c_white);
        draw_text_ext(obj_shakescreen.x-368,obj_shakescreen.y-292,drawtimestring,28,800);
        }
    
    //Total time
    if (!global.sswarp){
        drawtimesecs=global.totalseconds+global.seconds;
        drawtimehours=floor((drawtimesecs-(drawtimesecs mod 3600))/3600);
        drawtimesecs-=drawtimehours*3600;
        drawtimemins=floor((drawtimesecs-(drawtimesecs mod 60))/60);
        drawtimesecs=drawtimesecs mod 60;
        
        drawtottimestring=string(drawtimehours)+":";
        
        if (drawtimemins<10)
            drawtottimestring+="0";
        drawtottimestring+=string(drawtimemins)+".";
        
        if (drawtimesecs<10)
            drawtottimestring+="0";
        drawtottimestring+=string(drawtimesecs);
        
        if (!global.hidetime){
            draw_set_font(global.fontwhite);
            draw_set_color(c_white);
            draw_text_ext(obj_shakescreen.x-392,obj_shakescreen.y-262,drawtottimestring,28,800);
            }
        }
    }