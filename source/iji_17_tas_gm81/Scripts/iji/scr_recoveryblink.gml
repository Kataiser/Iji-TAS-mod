//Blink when damaged
if (blink==1 && !obj_iji.invisible){
obj_iji.visible=1;
}
if (blink==4){
blink=0;
obj_iji.visible=0;
}
blink=blink+1;