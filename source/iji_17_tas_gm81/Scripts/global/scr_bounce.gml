{
speed*=0.6;
if (vspeed>0 && !place_free(x,y+vspeed+1)) vspeed*=-1;
else if (vspeed<0 && !place_free(x,y+vspeed)) vspeed*=-1;
if (hspeed>0 && !place_free(x+hspeed,y)) hspeed*=-1;
else if (hspeed<0 && !place_free(x+hspeed,y)) hspeed*=-1;
}