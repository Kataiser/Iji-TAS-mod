draw_sprite(spr_hud,0,x,y);
if (obliterated){
    //draw_sprite(spr_hpbarback,global.healthlevel-1,x+319,y+44);
    }
else{
draw_sprite(spr_levelbarleft,global.healthlevel-1,x+16+488,y+10);
draw_sprite(spr_levelbarleft,global.attacklevel-1,x+16+488,y+26);
draw_sprite(spr_levelbarleft,global.assimilatelevel-1,x+16+488,y+42);
draw_sprite(spr_levelbarleft,global.strengthlevel-1,x+16+488,y+58);
draw_sprite(spr_levelbar,global.cracklevel-1,x+176+488,y+10);
draw_sprite(spr_levelbar,global.tasenlevel-1,x+176+488,y+26);
draw_sprite(spr_levelbar,global.komatolevel-1,x+176+488,y+42);
draw_sprite(spr_levelbar,global.jumplevel-1,x+260+488,y+26);
draw_sprite(spr_levelbar,global.armorlevel-1,x+260+488,y+58);
if (global.armor<99.9)
    draw_sprite(spr_armorbar,global.armor/5,x+320,y+12);
else
    draw_sprite(spr_armorbar,20,x+320,y+12);
draw_sprite(spr_hpbarback,global.healthlevel-1,x+319,y+44);
if (global.hp>0)
    draw_sprite(spr_hpbar,global.hp,x+320,y+44);
else
    draw_sprite(spr_hpbar,0,x+320,y+44);
if (global.weapon2){
draw_sprite(spr_numbers,floor((global.ammo2/10)) mod 10,x+688-488,y+26);
draw_sprite(spr_numbers,global.ammo2 mod 10,x+696-488,y+26);
}
if (global.weapon3){
draw_sprite(spr_numbers,floor((global.ammo3/10)) mod 10,x+728-488,y+26);
draw_sprite(spr_numbers,global.ammo3 mod 10,x+736-488,y+26);
}
if (global.weapon4){
draw_sprite(spr_numbers,floor((global.ammo4/10)) mod 10,x+768-488,y+26);
draw_sprite(spr_numbers,global.ammo4 mod 10,x+776-488,y+26);
}
if (global.weapon6){
draw_sprite(spr_numbers,floor((global.ammo6/10)) mod 10,x+688-488,y+58);
draw_sprite(spr_numbers,global.ammo6 mod 10,x+696-488,y+58);
}
if (global.weapon7){
draw_sprite(spr_numbers,floor((global.ammo7/10)) mod 10,x+728-488,y+58);
draw_sprite(spr_numbers,global.ammo7 mod 10,x+736-488,y+58);
}
if (global.weapon8){
draw_sprite(spr_numbers,floor((global.ammo8/10)) mod 10,x+768-488,y+58);
draw_sprite(spr_numbers,global.ammo8 mod 10,x+776-488,y+58);
}
draw_sprite(spr_numbers,floor((global.level/10)) mod 10,x+175+488,y+58);
draw_sprite(spr_numbers,global.level mod 10,x+183+488,y+58);
draw_sprite(spr_numbers,floor((global.points/10)) mod 10,x+231+488,y+58);
draw_sprite(spr_numbers,global.points mod 10,x+239+488,y+58);
if (!dontdrawweapon){
    if (global.weapon==20)
        draw_sprite(spr_weapons,17,x+505-488,y+29);
    else if (global.weapon==21)
        draw_sprite(spr_weapons,18,x+505-488,y+29);
    else
        draw_sprite(spr_weapons,global.weapon-1,x+505-488,y+29);
    }

//Nanobar
//782,20
draw_set_color(make_color_rgb(74,199,226));
drawmaxnano=(global.level*(4+global.difficulty*4))+4;
if (global.level>=global.maxlevel)
    drawnano=52;
else
    drawnano=ceil(52*(global.xp/drawmaxnano));
wantdrawnano+=ceil((drawnano-wantdrawnano)/4);
draw_rectangle(x+782,y+72-wantdrawnano,x+791,y+71,0);

//Pop-up poster
if (room==rom_sector1) postersprite=spr_mainposter1;
else if (room==rom_sector2) postersprite=spr_mainposter2;
else if (room==rom_sector3) postersprite=spr_mainposter3;
else if (room==rom_sector4) postersprite=spr_mainposter4;
else if (room==rom_sector5) postersprite=spr_mainposter5;
else if (room==rom_sector6) postersprite=spr_mainposter6;
else if (room==rom_sector7) postersprite=spr_mainposter7;
else if (room==rom_sector8) postersprite=spr_mainposter8;
else if (room==rom_sector9) postersprite=spr_mainposter9;
else if (room==rom_sectorx) postersprite=spr_mainposter10;
if (touchposter)
    popupwant=155;
else
    popupwant=-20;
popupcyc+=ceil((popupwant-popupcyc)/4);
if (popupcyc>0 && room!=rom_sectorz && !global.wty)
    draw_sprite(postersprite,0,x+800-popupcyc,y-360);

//Levelpoke
if (global.levelstation){
    if (lsblinkprev!=global.levelpoke)
        lsblinkcyc=2;
    lsblinkprev=global.levelpoke;
    lsblinkcyc+=1;
    if (lsblinkcyc==3)
        lsblink=1;
    if (lsblinkcyc>=7){
        lsblink=0;
        lsblinkcyc=0;
        }
    draw_sprite(spr_levelpoke2,0,x,y);
    if (lsblink){
        if (global.levelpoke==0){
            if (global.healthlevel==10 || global.suddendeath || global.really)
                draw_sprite(spr_levelpoke,7,x+16+488,y+10);
            else
                draw_sprite(spr_levelpoke,0,x+16+488,y+10);
            }
        else if (global.levelpoke==1){
            if (global.attacklevel==10 || global.specialtrigger16 || global.really)
                draw_sprite(spr_levelpoke,8,x+16+488,y+26);
            else
                draw_sprite(spr_levelpoke,1,x+16+488,y+26);
            }
        else if (global.levelpoke==2){
            if (global.assimilatelevel==10 || global.specialtrigger16 || global.really)
                draw_sprite(spr_levelpoke,9,x+16+488,y+42);
            else
                draw_sprite(spr_levelpoke,2,x+16+488,y+42);
            }
        else if (global.levelpoke==3){
            if (global.strengthlevel==10 || global.specialtrigger16 || global.really)
                draw_sprite(spr_levelpoke,10,x+16+488,y+58);
            else
                draw_sprite(spr_levelpoke,3,x+16+488,y+58);
            }
        else if (global.levelpoke==4){
            if (global.cracklevel==10 || global.specialtrigger16 || global.really || global.sector==1)
                draw_sprite(spr_levelpoke,11,x+176+488,y+10);
            else
                draw_sprite(spr_levelpoke,4,x+176+488,y+10);
            }
        else if (global.levelpoke==5){
            if (global.tasenlevel==10 || global.specialtrigger16 || global.really)
                draw_sprite(spr_levelpoke,12,x+176+488,y+26);
            else
                draw_sprite(spr_levelpoke,5,x+176+488,y+26);
            }
        else if (global.levelpoke==6){
            if (global.komatolevel==10 || global.specialtrigger16 || global.really)
                draw_sprite(spr_levelpoke,13,x+176+488,y+42);
            else
                draw_sprite(spr_levelpoke,6,x+176+488,y+42);
            }
        }
    //Beginning rectangle
    if (lsrectcyc<6){
        lsrectcyc+=1;
        with (obj_levelstation){
            if (touchstation){
                obj_hud.lsrx=x;
                obj_hud.lsry=y;
                }
            }
        }
    if (lsrectcyc>=1 && lsrectcyc<=3){
        if (lsrectcyc==1)
            draw_set_color(c_white);
        else if (lsrectcyc==2)
            draw_set_color(c_yellow);
        else if (lsrectcyc==3)
            draw_set_color(c_olive);
        draw_rectangle(lsrx+4,lsry,lsrx+27,lsry+31,1);
        if (lsrectcyc==1)
            draw_rectangle(lsrx+5,lsry+1,lsrx+26,lsry+30,1);
        }
    if (lsrectcyc>=2 && lsrectcyc<=4){
        if (lsrectcyc==2)
            draw_set_color(c_white);
        else if (lsrectcyc==3)
            draw_set_color(c_yellow);
        else if (lsrectcyc==4)
            draw_set_color(c_olive);
        if (lsrx<x+489){
            draw_line(lsrx+4,lsry+30,x+489,y+78);
            if (lsrectcyc==2){
                draw_line(lsrx+5,lsry+30,x+490,y+78);
                draw_line(lsrx+4,lsry+31,x+489,y+79);
                draw_line(lsrx+5,lsry+31,x+490,y+79);
                }
            }
        else{
            draw_line(lsrx+4,lsry,x+489,y);
            if (lsrectcyc==2){
                draw_line(lsrx+5,lsry,x+490,y);
                draw_line(lsrx+4,lsry+1,x+489,y+1);
                draw_line(lsrx+5,lsry+1,x+490,y+1);
                }
            }
        draw_line(lsrx+27,lsry,x+799,y);
        if (lsrectcyc==2){
            draw_line(lsrx+26,lsry,x+798,y);
            draw_line(lsrx+26,lsry+1,x+798,y+1);
            draw_line(lsrx+27,lsry+1,x+799,y+1);
            }
        }
    /*
    if (lsrectcyc>=3 && lsrectcyc<=5){
        if (lsrectcyc==3)
            draw_set_color(c_white);
        else if (lsrectcyc==4)
            draw_set_color(c_yellow);
        else if (lsrectcyc==5)
            draw_set_color(c_olive);
        draw_rectangle(x+489,y,x+799,y+79,1);
        draw_rectangle(x+490,y+1,x+798,y+78,1);
        lsrcolrot=0;
        }
    */
    if (lsrectcyc>=3){
        lsrcolrot+=17;
        if (lsrcolrot>=360)
            lsrcolrot-=360;
        lsrcol=175+sin(degtorad(lsrcolrot))*80;
        draw_set_color(make_color_rgb(lsrcol,lsrcol,0));
        draw_rectangle(x+489,y,x+799,y+79,1);
        draw_rectangle(x+490,y+1,x+798,y+78,1);
        //draw_rectangle(x+491,y+2,x+797,y+77,1);
        }
    }
else
    lsrectcyc=0;

if (global.weapstation>0){
    //Weapon station beginning rectangle
    if (wsrectcyc<6){
        wsrectcyc+=1;
        with (obj_weapstation){
            if (touchstation){
                obj_hud.wsrx=x;
                obj_hud.wsry=y;
                }
            }
        }
    if (wsrectcyc>=1 && wsrectcyc<=3){
        if (wsrectcyc==1)
            draw_set_color(c_white);
        else if (wsrectcyc==2)
            draw_set_color(c_yellow);
        else if (wsrectcyc==3)
            draw_set_color(c_olive);
        draw_rectangle(wsrx+12,wsry,wsrx+51,wsry+64,1);
        if (wsrectcyc==1)
            draw_rectangle(wsrx+13,wsry+1,wsrx+50,wsry+63,1);
        }
    if (wsrectcyc>=2 && wsrectcyc<=4){
        if (wsrectcyc==2)
            draw_set_color(c_white);
        else if (wsrectcyc==3)
            draw_set_color(c_yellow);
        else if (wsrectcyc==4)
            draw_set_color(c_olive);
        draw_line(wsrx+12,wsry,x,y);
        if (wsrectcyc==2){
            draw_line(wsrx+13,wsry,x+1,y);
            draw_line(wsrx+12,wsry+1,x,y+1);
            draw_line(wsrx+13,wsry+1,x+1,y+1);
            }
        if (wsrx+50<x+309){
            draw_line(wsrx+50,wsry,x+309,y);
            if (wsrectcyc==2){
                draw_line(wsrx+51,wsry,x+310,y);
                draw_line(wsrx+50,wsry+1,x+309,y+1);
                draw_line(wsrx+51,wsry+1,x+310,y+1);
                }
            }
        else{
            draw_line(wsrx+50,wsry+63,x+309,y+78);
            if (wsrectcyc==2){
                draw_line(wsrx+51,wsry+63,x+310,y+78);
                draw_line(wsrx+50,wsry+64,x+309,y+79);
                draw_line(wsrx+51,wsry+64,x+310,y+79);
                }
            }
        }
    /*
    if (wsrectcyc>=3 && wsrectcyc<=5){
        if (wsrectcyc==3)
            draw_set_color(c_white);
        else if (wsrectcyc==4)
            draw_set_color(c_yellow);
        else if (wsrectcyc==5)
            draw_set_color(c_olive);
        draw_rectangle(x,y,x+310,y+79,1);
        draw_rectangle(x+1,y+1,x+309,y+78,1);
        wsrcolrot=0;
        }
    */
    if (wsrectcyc>=3){
        wsrcolrot+=17;
        if (wsrcolrot>=360)
            wsrcolrot-=360;
        wsrcol=175+sin(degtorad(wsrcolrot))*80;
        draw_set_color(make_color_rgb(wsrcol,wsrcol,0));
        draw_rectangle(x,y,x+310,y+79,1);
        draw_rectangle(x+1,y+1,x+309,y+78,1);
        //draw_rectangle(x+2,y+2,x+308,y+77,1);
        }
    }
else
    wsrectcyc=0;

}

if (global.showdata)
    draw_sprite(spr_postermarker,0,floor(mouse_x),floor(mouse_y));
