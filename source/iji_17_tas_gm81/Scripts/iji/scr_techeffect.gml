for (i=0;i<20;i+=1){
tempid=instance_create(x+cos(i*18)*60, y+sin(i*18)*60, obj_cfisspark);
tempid.direction=point_direction(tempid.x,tempid.y,obj_iji.x+6,obj_iji.y+15)+270;
if (i mod 2==0)
    tempid.speed=8;
else
    tempid.speed=4;
}