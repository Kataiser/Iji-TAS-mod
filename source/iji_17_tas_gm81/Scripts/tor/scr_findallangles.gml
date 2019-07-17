//In shape create event
for (i=0; i<points; i+=1){
    angle[i]=scr_findangle(shapex[i],shapey[i]);
    if (angle[i]<0)
        angle[i]+=360;
    else if (angle[i]>359)
        angle[i]-=360;
    }