//Draw the effect for the CFIS
ran=8; //Magnitude of main beam chaos
mini=250; //Magnitude of lesser beam

if (obj_iji.shredder)
    yadjusts=-30;

if (x<(obj_iji.x+6)){
    length = (obj_iji.x-2)-x;
    node1x = (x+(length/6))-(length/ran)+random(length/(ran/2));
    node1y = (obj_iji.y+13+yadjusts)-(length/ran)+random(length/(ran/2));
    node2x = (x+2*(length/6))-(length/ran)+random(length/(ran/2));
    node2y = (obj_iji.y+13+yadjusts)-(length/ran)+random(length/(ran/2));
    node3x = (x+3*(length/6))-(length/ran)+random(length/(ran/2));
    node3y = (obj_iji.y+13+yadjusts)-(length/ran)+random(length/(ran/2));
    node4x = (x+4*(length/6))-(length/ran)+random(length/(ran/2));
    node4y = (obj_iji.y+13+yadjusts)-(length/ran)+random(length/(ran/2));
    node5x = (x+5*(length/6))-(length/ran)+random(length/(ran/2));
    node5y = (obj_iji.y+13+yadjusts)-(length/ran)+random(length/(ran/2));
    }
else{
    length = x-(obj_iji.x+16);
    node1x = (x-(length/6))-(length/ran)+random(length/(ran/2));
    node1y = (obj_iji.y+13+yadjusts)-(length/ran)+random(length/(ran/2));
    node2x = (x-2*(length/6))-(length/ran)+random(length/(ran/2));
    node2y = (obj_iji.y+13+yadjusts)-(length/ran)+random(length/(ran/2));
    node3x = (x-3*(length/6))-(length/ran)+random(length/(ran/2));
    node3y = (obj_iji.y+13+yadjusts)-(length/ran)+random(length/(ran/2));
    node4x = (x-4*(length/6))-(length/ran)+random(length/(ran/2));
    node4y = (obj_iji.y+13+yadjusts)-(length/ran)+random(length/(ran/2));
    node5x = (x-5*(length/6))-(length/ran)+random(length/(ran/2));
    node5y = (obj_iji.y+13+yadjusts)-(length/ran)+random(length/(ran/2));
    }
draw_set_color(make_color_rgb(220,220,0));
if (!global.specialbake){
draw_line_width(x,y-1,node1x,node1y,5);
draw_line_width(node1x,node1y,node2x,node2y,5);
draw_line_width(node2x,node2y,node3x,node3y,5);
draw_line_width(node3x,node3y,node4x,node4y,5);
draw_line_width(node4x,node4y,node5x,node5y,5);
if (global.facing==0){
    draw_line_width(node5x,node5y,(obj_iji.x-2+obj_iji.xadjust),(obj_iji.y+13+obj_iji.yadjust),5);
    }
if (global.facing==1){
    draw_line_width(node5x,node5y,(obj_iji.x+16+obj_iji.xadjust),(obj_iji.y+13+obj_iji.yadjust),5);
    }
}
draw_set_color(c_white);
draw_line_width(x,y-1,node1x,node1y,3);
draw_line_width(node1x,node1y,node2x,node2y,3);
draw_line_width(node2x,node2y,node3x,node3y,3);
draw_line_width(node3x,node3y,node4x,node4y,3);
draw_line_width(node4x,node4y,node5x,node5y,3);
if (global.facing==0){
    draw_line_width(node5x,node5y,(obj_iji.x-2+obj_iji.xadjust),(obj_iji.y+13+obj_iji.yadjust),3);
    }
if (global.facing==1){
    draw_line_width(node5x,node5y,(obj_iji.x+16+obj_iji.xadjust),(obj_iji.y+13+obj_iji.yadjust),3);
    }

if (!global.specialbake){
//Shockwave lines
newlength=length/40;
if (global.facing==0){
    draw_line((obj_iji.x-2+obj_iji.xadjust),(obj_iji.y+13+obj_iji.yadjust),(obj_iji.x-(1*(newlength))+obj_iji.xadjust),node5y-(mini/6));
    draw_line((obj_iji.x-(1*(newlength))+obj_iji.xadjust),node5y-(mini/6),(obj_iji.x-(2*(newlength))+obj_iji.xadjust),node4y-(mini/5));
    draw_line((obj_iji.x-(2*(newlength))+obj_iji.xadjust),node4y-(mini/5),(obj_iji.x-(3*(newlength))+obj_iji.xadjust),node3y-(mini/4));
    draw_line((obj_iji.x-(3*(newlength))+obj_iji.xadjust),node3y-(mini/4),(obj_iji.x-(4*(newlength))+obj_iji.xadjust),node2y-(mini/5));
    draw_line((obj_iji.x-2+obj_iji.xadjust),(obj_iji.y+13+obj_iji.yadjust),(obj_iji.x-(1*(newlength))+obj_iji.xadjust),node5y+(mini/6));
    draw_line((obj_iji.x-(1*(newlength))+obj_iji.xadjust),node5y+(mini/6),(obj_iji.x-(2*(newlength))+obj_iji.xadjust),node4y+(mini/5));
    draw_line((obj_iji.x-(2*(newlength))+obj_iji.xadjust),node4y+(mini/5),(obj_iji.x-(3*(newlength))+obj_iji.xadjust),node3y+(mini/4));
    draw_line((obj_iji.x-(3*(newlength))+obj_iji.xadjust),node3y+(mini/4),(obj_iji.x-(4*(newlength))+obj_iji.xadjust),node2y+(mini/5));
    }
if (global.facing==1){
    draw_line((obj_iji.x+16+obj_iji.xadjust),(obj_iji.y+13+obj_iji.yadjust),(obj_iji.x+16+(1*(newlength))+obj_iji.xadjust),node5y-(mini/6));
    draw_line((obj_iji.x+16+(1*(newlength))+obj_iji.xadjust),node5y-(mini/6),(obj_iji.x+16+(2*(newlength))+obj_iji.xadjust),node4y-(mini/5));
    draw_line((obj_iji.x+16+(2*(newlength))+obj_iji.xadjust),node4y-(mini/5),(obj_iji.x+16+(3*(newlength))+obj_iji.xadjust),node3y-(mini/4));
    draw_line((obj_iji.x+16+(3*(newlength))+obj_iji.xadjust),node3y-(mini/4),(obj_iji.x+16+(4*(newlength))+obj_iji.xadjust),node2y-(mini/5));
    draw_line((obj_iji.x+16+obj_iji.xadjust),(obj_iji.y+13+obj_iji.yadjust),(obj_iji.x+16+(1*(newlength))+obj_iji.xadjust),node5y+(mini/6));
    draw_line((obj_iji.x+16+(1*(newlength))+obj_iji.xadjust),node5y+(mini/6),(obj_iji.x+16+(2*(newlength))+obj_iji.xadjust),node4y+(mini/5));
    draw_line((obj_iji.x+16+(2*(newlength))+obj_iji.xadjust),node4y+(mini/5),(obj_iji.x+16+(3*(newlength))+obj_iji.xadjust),node3y+(mini/4));
    draw_line((obj_iji.x+16+(3*(newlength))+obj_iji.xadjust),node3y+(mini/4),(obj_iji.x+16+(4*(newlength))+obj_iji.xadjust),node2y+(mini/5));
    }
    //Sparks
global.cfissparkcycle=global.cfissparkcycle+1;
if (global.cfissparkcycle==6){
    global.cfissparkcycle=0;
    instance_create(node1x,node1y,obj_cfisspark);
    instance_create(node2x,node2y,obj_cfisspark);
    instance_create(node3x,node3y,obj_cfisspark);
    instance_create(node4x,node4y,obj_cfisspark);
    instance_create(node5x,node5y,obj_cfisspark);
    instance_create(x,y,obj_cfisspark);
    }
    //Flash
for (i=0; i<3; i+=1){
    if (place_free(x-2,y)==0 || place_free(x+2,y)==0){
        randx=random(120)-60;
        randy=random(120)-60;
        draw_line(x,y,x+randx,y+randy);
        }
    }
}