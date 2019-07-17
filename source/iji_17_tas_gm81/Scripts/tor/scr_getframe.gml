//Tor: get full animation frame
bonedirections[0]=framedirections[frame,0];
for (i=2; i<10; i+=1)
    bonedirections[i]=framedirections[frame,i];
for (i=0; i<10; i+=1)
    bonepositionsx[i]=framepositionsx[frame,i];
for (i=0; i<10; i+=1)
    bonepositionsy[i]=framepositionsy[frame,i];
if (instance_number(obj_iji)==1 && obj_iji.x<x){
    ijixpz=obj_iji.x;
    ijiypz=obj_iji.y;
    }

look=360-point_direction(x+bonepositionsx[1],y+bonepositionsy[1],ijixpz,ijiypz);
repeat(20){
if (bonedirections[1]<look){
    bonedirections[1]+=0.25;
    if (bonedirections[1]>look)
        bonedirections[1]=look;
    }
else if (bonedirections[1]>look){
    bonedirections[1]-=0.25;
    if (bonedirections[1]<look)
        bonedirections[1]=look;
        }
    }