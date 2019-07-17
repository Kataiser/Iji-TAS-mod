//Topmessage
if (instance_number(obj_messagetext)==0 && instance_number(obj_cracktext)==0)
    textadjust=48;
else if (obj_messagetext.sabotscroll)
    textadjust=48;
else
    textadjust=0;
if (room==rom_sector15)
    textadjust=18;
comparetopmes=string_copy(global.topmessage,1,6);
if (prevtopmessage!=global.topmessage && comparetopmes!="Nano +"){
    global.countingnano=0;
    dotopmessageintro=1;
    topmessageintro=0;
    }
if (dotopmessageintro==1){
    topmessageintro+=1;
    if (topmessageintro==1)
        textadjust+=16;
    else if (topmessageintro==2)
        textadjust+=8;
    else if (topmessageintro==3)
        textadjust+=4;
    else if (topmessageintro==4){
        textadjust+=0;
        dotopmessageintro=0;
        }
    }
prevtopmessage=global.topmessage;
if (global.topmessage!="0"){
    draw_set_font(global.fontwhite);
    draw_set_color(c_white);
    draw_text_ext(obj_shakescreen.x-(string_length(global.topmessage)*6),obj_shakescreen.y+146+textadjust,global.topmessage,28,800);
    }
if (global.erasetop<120)
    global.erasetop+=1;
else{
    global.countingnano=0;
    global.topmessage="0";
    dotopmessageintro=0;
    topmessageintro=0;
    }

//Debug: Show killdata
if (global.showdata){
    if (global.topmessagekilldata!="0"){
        draw_set_font(global.fontwhite);
        draw_set_color(c_white);
        draw_text_ext(obj_shakescreen.x-390,obj_shakescreen.y-220,global.topmessagekilldata,28,800);
        }
    global.topmessagekilldata="0";
    }
//Debug: Show killdata discrepancies
else if (global.killdatadisc){
    localkilldatadisc=0;
    for (i=1;i<793;i+=1){
        if (global.killdata[i]>0)
            localkilldatadisc+=1;
        }
    topmsgkilltext="D: "+string(localkilldatadisc)+"#K: "+string(global.kills+global.totkills);
    if (localkilldatadisc!=global.kills+global.totkills)
        topmsgkilltext+="#!!!WARNING!!! KILLDATA AND KILLS MISMATCH#!!!WARNING!!! KILLDATA AND KILLS MISMATCH#!!!WARNING!!! KILLDATA AND KILLS MISMATCH";
    draw_set_font(global.fontwhite);
    draw_set_color(c_white);
    draw_text_ext(obj_shakescreen.x-390,obj_shakescreen.y-220,topmsgkilltext,28,800);
    }

//Display Overload
if (obj_iji.overload>0){
    if (obj_iji.overload==1) topmessage2="NANOCHAOS - damage retaliation: ";
    if (obj_iji.overload==2) topmessage2="NANOSPARK - damage enemies: ";
    if (obj_iji.overload==3) topmessage2="NANOVIS - partial invisibility: ";
    if (obj_iji.overload==4) topmessage2="NANOBLAST - explosive shotgun: ";
    if (obj_iji.overload==5) topmessage2="NANOMIRROR - automatic reflector: ";
    if (obj_iji.overload==6) topmessage2="NANOLIFE - revive once: ";
    if (obj_iji.overload==7) topmessage2="NANORAGE - infinite ammo: ";
    if (obj_iji.overload==8) topmessage2="NANOSHIELD - no armor damage: ";
    if (obj_iji.overload==9) topmessage2="NANOFORGE - get ammo when damaged: ";
    if (obj_iji.overload==10) topmessage2="NANOREFLEX - tech all damage: ";
    if (obj_iji.overloadtime<300)
        topmessage2+=string_copy("0"+string(obj_iji.overloadtime/30),0,2);
    else
        topmessage2+=string_copy(string(obj_iji.overloadtime/30),0,2);
    draw_set_font(global.fontwhite);
    draw_set_color(c_white);
    draw_text_ext(obj_shakescreen.x-(string_length(topmessage2)*6),obj_shakescreen.y-288,topmessage2,28,800);
    }

//Display time to live
if (!global.ignoreall && !beginttl && global.specialtrigger16 && (room==rom_sector1 || room==rom_sector2 || room==rom_sector3 || room==rom_sector4 || room==rom_sector5 || room==rom_sector6 || room==rom_sector7 || room==rom_sector8 || room==rom_sector9 || room==rom_sectorx))
    beginttl=1;
if (!obj_iji.mdk && beginttl && (ttlmin>0 || ttlsec>0 || ttlhun>0)){
    topmessage2="Time to live: "+string(ttlmin)+":";
    if (ttlsec<10)
        topmessage2+="0";
    topmessage2+=string(ttlsec)+".";
    if (ttlhun<10)
        topmessage2+="0";
    topmessage2+=string(ttlhun);
    draw_set_font(global.fontwhite);
    draw_set_color(c_white);
    draw_text_ext(obj_shakescreen.x-(string_length(topmessage2)*6),obj_shakescreen.y-288,topmessage2,28,800);
    }

//Display location topmessages
if (topmessage3cyc>0){
if (topmessage3slow)
    topmessage3cyc-=0.4;
else
    topmessage3cyc-=1;
if (topmessage3dcyc<string_length(topmessage3)){
    if (topmessage3slow)
        topmessage3dcyc+=0.2;
    else
        topmessage3dcyc+=1;
    }
topmessage3draw=string_copy(topmessage3,1,ceil(topmessage3dcyc));
draw_set_font(global.fontwhite);
draw_set_color(c_white);
draw_text_ext(obj_shakescreen.x-(string_length(topmessage3)*6),obj_shakescreen.y-256,topmessage3draw,28,800);
}