//argument0 is x
//argument1 is y
if (argument0==0)
argument0=0.001;
if (argument0>=0)
return(radtodeg(arctan(argument1/argument0)));
else
return(180+radtodeg(arctan(argument1/argument0)));