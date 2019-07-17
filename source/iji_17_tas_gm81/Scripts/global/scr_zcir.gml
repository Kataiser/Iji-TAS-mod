if (!global.specialbake){
topwater=1920-300;
bottomwater=3300-300;
rtilt=50;
ltilt=550;

if (wfluxdir==0){
    wflux+=0.1;
    if (wflux>=4)
        wfluxdir=1;
    }
else{
    wflux-=0.1;
    if (wflux<=-4)
        wfluxdir=0;
    }
wfluxtot+=wflux;
topwater+=ceil(wfluxtot);
bottomwater-=ceil(wfluxtot);

if (tfluxdir==0){
    tflux+=0.07;
    if (tflux>=4)
        tfluxdir=1;
    }
else{
    tflux-=0.07;
    if (tflux<=-4)
        tfluxdir=0;
    }
tfluxtot+=tflux;
rtilt+=ceil(tfluxtot*2);
ltilt-=ceil(tfluxtot*2);

if (instance_number(obj_iji)==1){
    if (obj_iji.y>topwater+270 && obj_iji.y<bottomwater+330){
        global.gammablue=0.6;
        }
    else if (y>1000){
        global.gammablue=0;
        }
    }
else{
    if (y>topwater && y<bottomwater){
        global.gammablue=0.6;
        }
    else if (y>1000){
        global.gammablue=0;
        }
    }

draw_set_color(c_black);
draw_primitive_begin(pr_trianglefan);
draw_vertex(x-50,topwater+ltilt);
draw_vertex(x-50,bottomwater+ltilt);
draw_vertex(x+850,bottomwater+rtilt);
draw_vertex(x+850,topwater+rtilt);
draw_primitive_end();
draw_set_color(make_color_rgb(0,0,25));
draw_primitive_begin(pr_trianglefan);
draw_vertex(x-50,topwater+ltilt);
draw_vertex(x-50,bottomwater+ltilt);
draw_vertex(x+850,bottomwater+rtilt);
draw_vertex(x+850,topwater+rtilt);
draw_primitive_end();

if (y<topwater){
    for (i=1;i<20;i+=1){ //bottomlines
        draw_set_color(make_color_rgb(0,0,150-5*i));
        draw_line(x-50,(y+(bottomwater-y)/i)+ltilt,x+850,(y+(bottomwater-y)/i)+rtilt);
        }
    draw_set_color(make_color_rgb(0,0,50));
    draw_primitive_begin(pr_trianglefan);
    draw_vertex(x-50,(y+(topwater-y)/20)+ltilt);
    draw_vertex(x-50,topwater+ltilt);
    draw_vertex(x+850,topwater+rtilt);
    draw_vertex(x+850,(y+(topwater-y)/20)+rtilt);
    draw_primitive_end();
    for (i=1;i<20;i+=1){ //toplines
        draw_set_color(make_color_rgb(0,0,150-5*i));
        draw_line(x-50,(y+(topwater-y)/i)+ltilt,x+850,(y+(topwater-y)/i)+rtilt);
        }
    }
else if (y>bottomwater){
    for (i=1;i<20;i+=1){ //toplines
        draw_set_color(make_color_rgb(0,0,150-5*i));
        draw_line(x-50,(y+(topwater-y)/i)+ltilt,x+850,(y+(topwater-y)/i)+rtilt);
        }
    draw_set_color(make_color_rgb(0,0,50));
    draw_primitive_begin(pr_trianglefan);
    draw_vertex(x-50,(y+(bottomwater-y)/20)+ltilt);
    draw_vertex(x-50,bottomwater+ltilt);
    draw_vertex(x+850,bottomwater+rtilt);
    draw_vertex(x+850,(y+(bottomwater-y)/20)+rtilt);
    draw_primitive_end();
    for (i=1;i<20;i+=1){ //bottomlines
        draw_set_color(make_color_rgb(0,0,150-5*i));
        draw_line(x-50,(y+(bottomwater-y)/i)+ltilt,x+850,(y+(bottomwater-y)/i)+rtilt);
        }
    }
else{
    for (i=1;i<20;i+=1){ //toplines
        draw_set_color(make_color_rgb(0,0,150-5*i));
        draw_line(x-50,(y+(topwater-y)/i)+ltilt,x+850,(y+(topwater-y)/i)+rtilt);
        }
    for (i=1;i<20;i+=1){ //bottomlines
        draw_set_color(make_color_rgb(0,0,150-5*i));
        draw_line(x-50,(y+(bottomwater-y)/i)+ltilt,x+850,(y+(bottomwater-y)/i)+rtilt);
        }
    }

//extra lines
draw_set_color(make_color_rgb(0,0,150));
draw_line(x-50,topwater+ltilt+1,x+850,topwater+rtilt+1);
draw_line(x-50,topwater+ltilt+2,x+850,topwater+rtilt+2);
draw_line(x-50,topwater+ltilt+3,x+850,topwater+rtilt+3);
draw_line(x-50,topwater+ltilt+4,x+850,topwater+rtilt+4);
draw_line(x-50,bottomwater+ltilt+1,x+850,bottomwater+rtilt+1);
draw_line(x-50,bottomwater+ltilt+2,x+850,bottomwater+rtilt+2);
draw_line(x-50,bottomwater+ltilt+3,x+850,bottomwater+rtilt+3);
draw_line(x-50,bottomwater+ltilt+4,x+850,bottomwater+rtilt+4);

//1920 1620
//3200 2900
}