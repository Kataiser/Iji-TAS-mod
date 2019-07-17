//Draw Shape
if (!obj_tor.nodraw){
if (direction<0)
    direction+=360;
if (direction>359)
    direction-=360;
for (i=0; i<points; i+=1){
    if (bone==0){
        result[i,0]=x+shapex[i];
        result[i,1]=y+shapey[i];
        }
    else{
        result[i,0]=scr_rotate(0,shapex[i],shapey[i],angle[i]);
        result[i,1]=scr_rotate(1,shapex[i],shapey[i],angle[i]);
        }
    if (obj_tor.wobble>0){
        result[i,0]+=floor(random(obj_tor.wobble)*2)-obj_tor.wobble;
        result[i,1]+=floor(random(obj_tor.wobble)*2)-obj_tor.wobble;
        }
    }
if (obj_tor.wobble>0){
    draw_set_color(c_black);
    }
//Circle
if (circle){
    draw_ellipse(result[0,0]-width,result[0,1]-height,result[0,0]+width,result[0,1]+height,0);
    }
//Shape
else{
    draw_primitive_begin(pr_trianglefan);
    draw_vertex(result[0,0],result[0,1]);
    for (i=1; i<points; i+=1)
        draw_vertex(result[i,0],result[i,1]);
    draw_primitive_end();
    }

//Shadow
if (shadow>0 && !global.specialbake){
    shadow-=1;
    shadow2=shadowmax-shadow;
    shadowoff=shadow*4;
    shadowoff2=shadow*2;
    draw_set_color(c_black);
    //Shape
    if (!circle && !dot){
        for (i=0; i<points; i+=1){
            draw_primitive_begin(pr_trianglefan);
            draw_vertex(result[i,0]+shadow2*5,result[i,1]);
            draw_vertex(result[i,0]+600,result[i,1]-random(shadowoff2));
            draw_vertex(result[i,0]+400,result[i,1]+random(shadowoff2));
            draw_primitive_end();
            }
        }
    }

}