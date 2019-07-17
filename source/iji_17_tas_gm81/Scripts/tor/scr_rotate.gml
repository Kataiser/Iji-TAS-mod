//Rotate shape
//argument0 is seeking x(0) or y(1)
//argument1 is x value
//argument2 is y value
//argument3 is original angle
if (argument0==0)
    return(x+(sqrt(argument1*argument1+argument2*argument2)*global.lookupcos[floor((direction+argument3)*3)]));
if (argument0==1)
    return(y+(sqrt(argument1*argument1+argument2*argument2)*global.lookupsin[floor((direction+argument3)*3)]));