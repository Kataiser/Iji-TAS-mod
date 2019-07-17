global.gammafinal=global.gamma;
global.gammaredfinal=global.gammared;
global.gammagreenfinal=global.gammagreen;
global.gammabluefinal=global.gammablue;

if (!global.nogamma){
    if (global.gammafinal<-1)
        global.gammafinal=-1;
    if (global.gammafinal>1)
        global.gammafinal=1;
    if (global.gammafinal<0){
        draw_set_blend_mode(bm_subtract);
        draw_set_color(make_color_rgb(-global.gammafinal*255,-global.gammafinal*255,-global.gammafinal*255));
        draw_rectangle(view_xview[0]-32,view_yview[0]-32,view_xview[0]+832,view_yview[0]+632,0);
        draw_set_blend_mode(bm_normal);
        }
    else if (global.gammafinal>0){
        draw_set_blend_mode(bm_add);
        draw_set_color(make_color_rgb(global.gammafinal*255,global.gammafinal*255,global.gammafinal*255));
        draw_rectangle(view_xview[0]-32,view_yview[0]-32,view_xview[0]+832,view_yview[0]+632,0);
        draw_set_blend_mode(bm_normal);
        }
    
    if (global.gammaredfinal>1)
        global.gammaredfinal=1;
    if (global.gammaredfinal>0){
        draw_set_blend_mode(bm_subtract);
        draw_set_color(make_color_rgb(0,global.gammaredfinal*255,global.gammaredfinal*255));
        draw_rectangle(view_xview[0]-32,view_yview[0]-32,view_xview[0]+832,view_yview[0]+632,0);
        draw_set_blend_mode(bm_normal);
        }
    
    if (global.gammagreenfinal>1)
        global.gammagreenfinal=1;
    if (global.gammagreenfinal>0){
        draw_set_blend_mode(bm_subtract);
        draw_set_color(make_color_rgb(0,global.gammagreenfinal*255,0));
        draw_rectangle(view_xview[0]-32,view_yview[0]-32,view_xview[0]+832,view_yview[0]+632,0);
        draw_set_blend_mode(bm_normal);
        }
    
    if (global.gammabluefinal>1)
        global.gammabluefinal=1;
    if (global.gammabluefinal>0){
        draw_set_blend_mode(bm_subtract);
        draw_set_color(make_color_rgb(global.gammabluefinal*255,global.gammabluefinal*255,0));
        draw_rectangle(view_xview[0]-32,view_yview[0]-32,view_xview[0]+832,view_yview[0]+632,0);
        draw_set_blend_mode(bm_normal);
        }
    }