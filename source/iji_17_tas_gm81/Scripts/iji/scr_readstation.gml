//Display station type
if (!global.levelstation && (global.ignorestation==0 || other.sprite_index==spr_readpaper) && global.dead==0 && !shredder){
if (other.sprite_index=spr_readpaper){
    global.erasetop=0;
    global.topmessage=other.text;
    }
else if (other.sprite_index=spr_station_health){
    global.erasetop=0;
    global.topmessage="Cyborg station: Health (raise maximum HP)";
    }
else if (other.sprite_index=spr_station_attack){
    global.erasetop=0;
    global.topmessage="Cyborg station: Attack (raise power of all Nanoweaponry)";
    }
else if (other.sprite_index=spr_station_assimilate){
    global.erasetop=0;
    global.topmessage="Cyborg station: Assimilate (increase ammo cap, repair more armor)";
    }
else if (other.sprite_index=spr_station_strength){
    global.erasetop=0;
    global.topmessage="Cyborg station: Strength (raise power of kick attacks)";
    }
else if (other.sprite_index=spr_station_crack){
    global.erasetop=0;
    global.topmessage="Cyborg station: Crack (crack more secure Nanotechnology)";
    }
else if (other.sprite_index=spr_station_tasen){
    global.erasetop=0;
    global.topmessage="Cyborg station: Tasen (use more advanced Tasen Nanoweaponry)";
    }
else if (other.sprite_index=spr_station_komato){
    global.erasetop=0;
    global.topmessage="Cyborg station: Komato (use more advanced Komato Nanoweaponry)";
    }
else if (other.sprite_index=spr_levelstation){
    if (string_copy(global.topmessage,1,6)!="Nano +"){
        global.erasetop=0;
        global.topmessage="Use this Cyborg Station ("+chr(global.usekey)+" key) to distribute Points";
        }
    }
}