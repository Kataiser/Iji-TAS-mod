//Executed by Sabot
//Wavetext
if (wavetext!=wavetextprev || forcewavetext){
    forcewavetext=0;
    wavetextgo=1;
    wavetextcyc=0;
    wavetextoff=1600;
    wavetextlen=string_length(wavetext);
    for (i=0;i<wavetextlen;i+=1)
        wavechar[i]=ord(string_char_at(wavetext,i+1));
    }
if (wavetextgo){
    wavetextcyc+=1;
    if (wavetextcyc<=6)
        wavetextoff-=200;
    else if (wavetextcyc>=66)
        wavetextoff-=200;
    wavetextrot+=20;
    if (wavetextrot>=360)
        wavetextrot-=360;
    wavetextrot2=wavetextrot;
    for (i=0;i<wavetextlen;i+=1){
        wavetextrot2+=20;
        textx=view_xview[0]+wavetextoff-wavetextlen*12+i*24;
        texty=view_yview[0]+64-sin(degtorad(wavetextrot2))*8;
        draw_sprite_ext(spr_text_white,63+wavechar[i],textx,texty,2,2,0,c_white,1);
        }
    }
wavetextprev=wavetext;

//HUD
if (horsehp<horsehpprev)
    damageflash=5;
horsehpprev=horsehp;
if (damageflash>0){
    draw_sprite_ext(spr_tor,0,view_xview[0]-320,view_yview[0]-32,5,2,0,c_white,damageflash/10);
    damageflash-=1;
    }

draw_set_color(c_black);
draw_rectangle(view_xview[0]-32,view_yview[0]+568,view_xview[0]+832,view_yview[0]+632,0);
draw_set_font(global.fontwhite);
draw_set_color(c_white);
if (global.horsepoints>=99999999)
    global.horsepoints=99999999;
pointstring="";
for (i=8;i>0;i-=1){
    if (global.horsepoints<power(10,i))
        pointstring+="0";
    }
pointstring+=string(global.horsepoints);
draw_text_ext(view_xview[0]+36,view_yview[0]+572,"HEALTH$$$$$$$$$$$$$$$$$LIVES$$$$$$$$$$$$$$$$$$SCORE$"+pointstring,28,800);
for (i=0;i<horsehp;i+=1)
    draw_sprite(spr_banana,0,view_xview[0]+124+i*16,view_yview[0]+582);
for (i=0;i<global.horselives;i+=1)
    draw_sprite(spr_horse,1,view_xview[0]+398+i*16,view_yview[0]+582);

//GAME OVER
if (horsegameover || horsevictory){
    gameovertext[5]="Final score: "+string(global.horsepoints);
    victorytext[5]="Final score: "+string(global.horsepoints);
    draw_set_color(c_black)
    draw_rectangle(view_xview[0]-32,view_yview[0]-32,view_xview[0]+832,view_yview[0]+632,0);
    if (horsegameover){
        with (obj_horsestars)
            draw_sprite_ext(spr_chaintracer,0,floor(x+xoff),floor(y+yoff),1,1,0,c_white,0.25+xoff/180);
        }
    else{
        with (obj_horsestars)
            draw_sprite_ext(spr_chaintracer,1,floor(x+xoff),floor(y+yoff),1,1,0,c_white,0.25+xoff/180);
        }
    draw_set_font(global.fontspecial);
    gorot+=4;
    if (gorot>=360)
        gorot-=360;
    gorot2=gorot;
    for (j=0;j<3;j+=1){
        gocol[j]+=4*(j+1);
        if (gocol[j]>=360)
            gocol[j]-=360;
        gocol2[j]=gocol[j];
        }
    for (i=0;i<19;i+=1){
        gorot2+=10;
        for (j=0;j<3;j+=1){
            gocol2[j]+=19*(j+1);
            if (gocol2[j]>=360)
                gocol2[j]-=360;
            }
        draw_set_color(make_color_rgb(128+cos(degtorad(gocol2[0]))*100,128+cos(degtorad(gocol2[1]))*100,128+cos(degtorad(gocol2[2]))*100));
        if (horsegameover)
            draw_text(view_xview[0]+400-string_length(obj_sabot.gameovertext[i])*6+cos(degtorad(gorot2))*12,view_yview[0]+40+i*28,obj_sabot.gameovertext[i]);
        else
            draw_text(view_xview[0]+400-string_length(obj_sabot.victorytext[i])*6+cos(degtorad(gorot2))*12,view_yview[0]+40+i*28,obj_sabot.victorytext[i]);
        }
    }