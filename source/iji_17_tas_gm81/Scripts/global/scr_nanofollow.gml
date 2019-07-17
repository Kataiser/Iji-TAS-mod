//Nanoflash step event
if (follow==0){
    speed-=1;
    }
else{
    thespeed+=1;
    if (thespeed>16){
        thespeed=16;
        }
    //Iji
    if (target==0)
        move_towards_point(obj_iji.bbox_left+(obj_iji.bbox_right-obj_iji.bbox_left)/2,obj_iji.bbox_top+(obj_iji.bbox_bottom-obj_iji.bbox_top)/2,thespeed);
    else if (instance_exists(target))
        move_towards_point(target.bbox_left+(target.bbox_right-target.bbox_left)/2,target.bbox_top+(target.bbox_bottom-target.bbox_top)/2,thespeed);
    else
        instance_destroy();
        }