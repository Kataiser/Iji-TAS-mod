//INITIALIZE
if (!initialize){
initialize=1;
facing=1;
}

//DRAW
draw_set_color(c_white);
if (facing==0)
facing=-1;
draw_line(x-1*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y+15+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),x-1*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y-16+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2));
draw_line(x-1*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y-16+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),x+5*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y-16+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2));
draw_line(x+5*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y-16+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),x+8*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y-13+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2));
draw_line(x+8*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y-13+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),x+8*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y-9+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2));
draw_line(x+8*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y-9+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),x+5*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y-6+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2));
draw_line(x+5*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y-6+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),x-5*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y-6+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2));
draw_line(x-5*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y-6+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),x-9*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y-2+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2));
draw_line(x-9*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y-2+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),x-9*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y+4+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2));
draw_line(x-9*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y+4+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),x-5*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y+8+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2));
draw_line(x-5*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y+8+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),x-1*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y+8+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2));
draw_line(x-1*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y+8+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),x+7*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y+16+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2));
draw_line(x-1*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y-1+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),x+9*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y-1+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2));
draw_line(x+9*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y-1+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),x+7*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y+1+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2));
draw_line(x+7*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y+1+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),x-1*facing+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2),y+1+random(obj_herosabot.ultrashake)-(obj_herosabot.ultrashake/2));
if (facing==-1)
    facing=0;