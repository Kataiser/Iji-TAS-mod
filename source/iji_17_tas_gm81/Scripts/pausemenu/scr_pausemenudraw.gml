//Draw menuback and text
x=view_xview[0]+400;
y=view_yview[0]+300;
for (i=0;i<47;i+=1){
    if (i==0)
        img=0;
    else if (i==46)
        img=2;
    else
        img=1;
    draw_sprite(spr_menuback,img,view_xview[0]+212+i*8,view_yview[0]+114)
    }
draw_sprite(spr_tastext,0,view_xview[0]+216,view_yview[0]+366);
scr_pausemenutext();
draw_set_font(global.fontblue);
draw_set_color(c_white);
draw_text_ext(view_xview[0]+262,view_yview[0]+128,text,28,326);

//SECTOR MAPS
if (!global.extras1 && obj_sabot.sec6mapped){
    draw_sprite(spr_secmap6,0,x,y+286);
    }
if (global.extras1 && !global.horse){
    pxadjust=-517;
    pyadjust=52;
    if (room==rom_sector1){
        draw_sprite(spr_secmap1,0,x,y+286);
        if (marker){
            draw_sprite(spr_postermarker,global.poster1,x+pxadjust+362,y+pyadjust+201);
            draw_sprite(spr_postermarker,2,x-172+(floor(obj_sabot.currentijix/32)),y+152+(floor(obj_sabot.currentijiy/32)));
            }
        }
    else if (room==rom_sector2){
        draw_sprite(spr_secmap2,0,x,y+286);
        if (marker){
            draw_sprite(spr_postermarker,global.poster2,x+pxadjust+627,y+pyadjust+158);
            draw_sprite(spr_postermarker,2,x-137+(floor(obj_sabot.currentijix/32)),y+58+(floor(obj_sabot.currentijiy/32)));
            }
        }
    else if (room==rom_sector3){
        draw_sprite(spr_secmap3,0,x,y+286);
        if (marker){
            draw_sprite(spr_postermarker,global.poster3,x+pxadjust+499,y+pyadjust+73);
            draw_sprite(spr_postermarker,2,x-196+(floor(obj_sabot.currentijix/32)),y+83+(floor(obj_sabot.currentijiy/32)));
            }
        }
    else if (room==rom_sector4){
        draw_sprite(spr_secmap4,0,x,y+286);
        if (marker){
            draw_sprite(spr_postermarker,global.poster4,x+pxadjust+508,y+pyadjust+213);
            draw_sprite(spr_postermarker,2,x-125+(floor(obj_sabot.currentijix/32)),y+102+(floor(obj_sabot.currentijiy/32)));
            }
        }
    else if (room==rom_sector5){
        draw_sprite(spr_secmap5,0,x,y+286);
        if (marker){
            draw_sprite(spr_postermarker,global.poster5,x+pxadjust+568,y+pyadjust+34);
            draw_sprite(spr_postermarker,2,x-209+(floor(obj_sabot.currentijix/32)),y+56+(floor(obj_sabot.currentijiy/32)));
            }
        }
    else if (room==rom_sector6){
        draw_sprite(spr_secmap6,0,x,y+286);
        if (marker){
            draw_sprite(spr_postermarker,global.poster6,x+pxadjust+469,y+pyadjust+101);
            draw_sprite(spr_postermarker,2,x-133+(floor(obj_sabot.currentijix/32)),y+128+(floor(obj_sabot.currentijiy/32)));
            }
        }
    else if (room==rom_sector7){
        draw_sprite(spr_secmap7,0,x,y+286);
        if (marker){
            draw_sprite(spr_postermarker,global.poster7,x+pxadjust+525,y+pyadjust+42);
            if (!obj_sabot.deepsector)
                draw_sprite(spr_postermarker,2,x-169+(floor(obj_sabot.currentijix/32)),y+74+(floor(obj_sabot.currentijiy/32)));
            }
        }
    else if (room==rom_sector8){
        draw_sprite(spr_secmap8,0,x,y+286);
        if (marker){
            draw_sprite(spr_postermarker,global.poster8,x+pxadjust+490,y+pyadjust+131);
            draw_sprite(spr_postermarker,2,x-182+(floor(obj_sabot.currentijix/32)),y+139+(floor(obj_sabot.currentijiy/32)));
            }
        }
    else if (room==rom_sector9){
        draw_sprite(spr_secmap9,0,x,y+286);
        if (marker){
            draw_sprite(spr_postermarker,global.poster9,x+pxadjust+568,y+pyadjust+34);
            if (!obj_sabot.deepsector)
                draw_sprite(spr_postermarker,2,x-204+(floor(obj_sabot.currentijix/32)),y+69+(floor(obj_sabot.currentijiy/32)));
            }
        }
    else if (room==rom_sectorx){
        draw_sprite(spr_secmapx,0,x,y+286);
        if (marker){
            draw_sprite(spr_postermarker,global.poster10,x+pxadjust+353,y+pyadjust+122);
            if (!obj_sabot.deepsector)
                draw_sprite(spr_postermarker,2,x-198+(floor(obj_sabot.currentijix/32)),y+115+(floor(obj_sabot.currentijiy/32)));
            }
        }
    }

//Pause covers
if (delcover<10){
    with (obj_maincover){
        if (x==view_xview[0]+262+obj_paused.delcover*60 || x==view_xview[0]+262+obj_paused.delcover*60-12 || x==view_xview[0]+262+obj_paused.delcover*60-24 || x==view_xview[0]+262+obj_paused.delcover*60-36 || x==view_xview[0]+262+obj_paused.delcover*60-48){
            alarm[0]=5;
            image_single=-1;
            }
        }
    delcover+=1;
    }
if (temptier!=tier){
    delcover=0;
    temptier=tier;
    with (obj_maincover)
        instance_destroy();
    if (nocovers)
        nocovers=0;
    else{
        for (i=0; i<7; i+=1){
            for (j=0; j<26; j+=1)
                (instance_create(view_xview[0]+262+j*12,view_yview[0]+156+i*28,obj_maincover)).depth=-1000008;
            }
        }
    }

//Cover the screen when reloading graphics
if (showloading){
    depth=-1000100
    obj_marker.visible=0;
    obj_fade.visible=0;
    draw_set_color(c_black);
    draw_rectangle(view_xview[0]-50,view_yview[0]-50,view_xview[0]+850,view_yview[0]+650,0);
    draw_sprite(spr_loading,0,view_xview[0]+400,view_yview[0]+300);
    }
else
    depth=-1000002
