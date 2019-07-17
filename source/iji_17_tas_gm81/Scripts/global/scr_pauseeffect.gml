if (pause && !playinghero3d){
pauseecyc+=1;
if (pauseecyc==2){
    pauseecyc=0;
    instance_create(view_xview[0]-50+(floor(random(2))*900),view_yview[0]+floor(random(600)),obj_pauseeffect);
    }
}