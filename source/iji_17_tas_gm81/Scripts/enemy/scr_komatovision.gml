//For Tasen
//argument0 is x
//argument1 is y
if (global.sector==5 || global.sector==6 || global.sector==7 || global.sector==8 || global.sector==9){
visioncheckk+=1;
if ((targetrival==0 && visioncheckk>=30) || (targetrival>0 && visioncheckk>=60)){
visioncheckk=0;
tempid=instance_create(x+argument0,y+argument1,obj_visioncheckk);
tempid.speed=16;
tempid.target=id;
tempid.direction=0;
tempid=instance_create(x+argument0,y+argument1,obj_visioncheckk);
tempid.speed=16;
tempid.target=id;
tempid.direction=180;
}
}