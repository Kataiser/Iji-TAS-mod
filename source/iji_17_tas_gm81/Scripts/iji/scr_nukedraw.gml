//Nuke graphics
cycle += 1;
if (cycle == 1){
draw_set_color(c_white);
if (argument0==0)
    draw_ellipse(obj_iji.x-445,obj_iji.y-180,obj_iji.x+455,obj_iji.y+240,0);
if (argument0==1)
    draw_ellipse(obj_proxima.x-445,obj_proxima.y-180,obj_proxima.x+455,obj_proxima.y+240,0);
}
if (cycle == 3){
draw_set_color(c_white);
if (argument0==0)
    draw_ellipse(obj_iji.x-345,obj_iji.y-430,obj_iji.x+355,obj_iji.y+490,0);
if (argument0==1)
    draw_ellipse(obj_proxima.x-345,obj_iji.y-430,obj_proxima.x+355,obj_proxima.y+490,0);
}
if (cycle == 5){
draw_set_color(c_white);
if (argument0==0)
    draw_ellipse(obj_iji.x-595,obj_iji.y-250,obj_iji.x+605,obj_iji.y+310,0);
if (argument0==1)
    draw_ellipse(obj_proxima.x-595,obj_iji.y-250,obj_proxima.x+605,obj_proxima.y+310,0);
}
if (cycle == 7){
draw_set_color(c_white);
draw_rectangle(view_xview[0]-50,view_yview[0]-50,view_xview[0]+850,view_yview[0]+650,0);
}
if (cycle >= 60) instance_destroy();