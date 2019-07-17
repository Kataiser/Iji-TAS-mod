if (x<view_xview[0]-64+16)
    paleft=1;
else
    paleft=0;
if (x>view_xview[0]+864-16)
    paright=1;
else
    paright=0;
if (y<view_yview[0]-64+16)
    paup=1;
else
    paup=0;
if (y>view_yview[0]+584-16)
    padown=1;
else
    padown=0;

if (x<view_xview[0]+16+24)
    paleftin=1;
else
    paleftin=0;
if (x>view_xview[0]+784-24)
    parightin=1;
else
    parightin=0;
if (y<view_yview[0]+64+24)
    paupin=1;
else
    paupin=0;
if (y>view_yview[0]+504-24)
    padownin=1;
else
    padownin=0;

if (paleft || paright || paup || padown){
    if (coldir==0){
        col+=20;
        if (col>=230)
            coldir=1;
        }
    else{
        col-=20;
        if (col<=100)
            coldir=0;
        }
    //FILL
    draw_set_color(make_color_rgb(128+col/2,128+col/2,col));
    //paupparight
    if ((paright && paup) || (parightin && paup) || (paright && paupin)){
        draw_primitive_begin(pr_trianglelist);
        draw_vertex(view_xview[0]+752,view_yview[0]+64);
        draw_vertex(view_xview[0]+784,view_yview[0]+64);
        draw_vertex(view_xview[0]+784,view_yview[0]+96);
        draw_primitive_end();
        }
    //pauppaleft
    else if ((paleft && paup) || (paleftin && paup) || (paleft && paupin)){
        draw_primitive_begin(pr_trianglelist);
        draw_vertex(view_xview[0]+16,view_yview[0]+64);
        draw_vertex(view_xview[0]+48,view_yview[0]+64);
        draw_vertex(view_xview[0]+16,view_yview[0]+96);
        draw_primitive_end();
        }
    //padownparight
    else if ((paright && padown) || (parightin && padown) || (paright && padownin)){
        draw_primitive_begin(pr_trianglelist);
        draw_vertex(view_xview[0]+752,view_yview[0]+504);
        draw_vertex(view_xview[0]+784,view_yview[0]+504);
        draw_vertex(view_xview[0]+784,view_yview[0]+472);
        draw_primitive_end();
        }
    //padownpaleft
    else if ((paleft && padown) || (paleftin && padown) || (paleft && padownin)){
        draw_primitive_begin(pr_trianglelist);
        draw_vertex(view_xview[0]+16,view_yview[0]+504);
        draw_vertex(view_xview[0]+48,view_yview[0]+504);
        draw_vertex(view_xview[0]+16,view_yview[0]+472);
        draw_primitive_end();
        }
    //paright
    else if (paright){
        draw_primitive_begin(pr_trianglelist);
        draw_vertex(view_xview[0]+784,y);
        draw_vertex(view_xview[0]+760,y-24);
        draw_vertex(view_xview[0]+760,y+24);
        draw_primitive_end();
        }
    //paup
    else if (paup){
        draw_primitive_begin(pr_trianglelist);
        draw_vertex(x,view_yview[0]+64);
        draw_vertex(x-24,view_yview[0]+88);
        draw_vertex(x+24,view_yview[0]+88);
        draw_primitive_end();
        }
    //paleft
    else if (paleft){
        draw_primitive_begin(pr_trianglelist);
        draw_vertex(view_xview[0]+16,y);
        draw_vertex(view_xview[0]+40,y-24);
        draw_vertex(view_xview[0]+40,y+24);
        draw_primitive_end();
        }
    //padown
    else if (padown){
        draw_primitive_begin(pr_trianglelist);
        draw_vertex(x,view_yview[0]+504);
        draw_vertex(x-24,view_yview[0]+480);
        draw_vertex(x+24,view_yview[0]+480);
        draw_primitive_end();
        }
    
    //OUTLINE
    draw_set_color(make_color_rgb(30+col/2,30+col/2,30));
    //paupparight
    if ((paright && paup) || (parightin && paup) || (paright && paupin)){
        draw_primitive_begin(pr_linestrip);
        draw_vertex(view_xview[0]+752,view_yview[0]+64);
        draw_vertex(view_xview[0]+784,view_yview[0]+64);
        draw_vertex(view_xview[0]+784,view_yview[0]+96);
        draw_vertex(view_xview[0]+752,view_yview[0]+64);
        draw_primitive_end();
        }
    //pauppaleft
    else if ((paleft && paup) || (paleftin && paup) || (paleft && paupin)){
        draw_primitive_begin(pr_linestrip);
        draw_vertex(view_xview[0]+16,view_yview[0]+64);
        draw_vertex(view_xview[0]+48,view_yview[0]+64);
        draw_vertex(view_xview[0]+16,view_yview[0]+96);
        draw_vertex(view_xview[0]+16,view_yview[0]+64);
        draw_primitive_end();
        }
    //padownparight
    else if ((paright && padown) || (parightin && padown) || (paright && padownin)){
        draw_primitive_begin(pr_linestrip);
        draw_vertex(view_xview[0]+752,view_yview[0]+504);
        draw_vertex(view_xview[0]+784,view_yview[0]+504);
        draw_vertex(view_xview[0]+784,view_yview[0]+472);
        draw_vertex(view_xview[0]+752,view_yview[0]+504);
        draw_primitive_end();
        }
    //padownpaleft
    else if ((paleft && padown) || (paleftin && padown) || (paleft && padownin)){
        draw_primitive_begin(pr_linestrip);
        draw_vertex(view_xview[0]+16,view_yview[0]+504);
        draw_vertex(view_xview[0]+48,view_yview[0]+504);
        draw_vertex(view_xview[0]+16,view_yview[0]+472);
        draw_vertex(view_xview[0]+16,view_yview[0]+504);
        draw_primitive_end();
        }
    //paright
    else if (paright){
        draw_primitive_begin(pr_linestrip);
        draw_vertex(view_xview[0]+784,y);
        draw_vertex(view_xview[0]+760,y-24);
        draw_vertex(view_xview[0]+760,y+24);
        draw_vertex(view_xview[0]+784,y);
        draw_primitive_end();
        }
    //paup
    else if (paup){
        draw_primitive_begin(pr_linestrip);
        draw_vertex(x,view_yview[0]+64);
        draw_vertex(x-24,view_yview[0]+88);
        draw_vertex(x+24,view_yview[0]+88);
        draw_vertex(x,view_yview[0]+64);
        draw_primitive_end();
        }
    //paleft
    else if (paleft){
        draw_primitive_begin(pr_linestrip);
        draw_vertex(view_xview[0]+16,y);
        draw_vertex(view_xview[0]+40,y-24);
        draw_vertex(view_xview[0]+40,y+24);
        draw_vertex(view_xview[0]+16,y);
        draw_primitive_end();
        }
    //padown
    else if (padown){
        draw_primitive_begin(pr_linestrip);
        draw_vertex(x,view_yview[0]+504);
        draw_vertex(x-24,view_yview[0]+480);
        draw_vertex(x+24,view_yview[0]+480);
        draw_vertex(x,view_yview[0]+504);
        draw_primitive_end();
        }

    }