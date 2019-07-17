//Create lookup tables
for (i=0; i<2160; i+=1){
    global.lookupsin[i]=sin(degtorad(i/3));
    }
for (i=0; i<2160; i+=1){
    global.lookupcos[i]=cos(degtorad(i/3));
    }