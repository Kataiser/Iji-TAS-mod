//Sector 16
x=obj_iji.x-363;
y=obj_iji.y-260-obj_torbodytrigger.lookupcyc;
obj_shakescreen.x = x+400;
obj_shakescreen.y = y+300;
x=floor(x);
y=floor(y);
obj_shakescreen.x=floor(obj_shakescreen.x);
obj_shakescreen.y=floor(obj_shakescreen.y);
finalx=x;
finaly=y;
background_x[0]=obj_shakescreen.x-368-floor(((obj_iji.x+200)/20));
background_y[0]=obj_shakescreen.y-312+floor((obj_torbodytrigger.lookupcyc/14));
background_x[1]=background_x[0]+425;
background_y[1]=background_y[0];
background_x[2]=background_x[0];
background_y[2]=background_y[0]+250;
background_x[3]=background_x[0]+425;
background_y[3]=background_y[0]+250;
//Strikelightpos
strikelightx=obj_shakescreen.x-238-floor(((obj_iji.x+200)/20));
strikelighty=obj_shakescreen.y-140+floor((obj_torbodytrigger.lookupcyc/14));