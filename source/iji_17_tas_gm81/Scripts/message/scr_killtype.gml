//Killdata types
//argument0 is killdataid
if (global.killdata[argument0]==9)
    return "Status: Killed in action - unknown weapon";
else if (global.killdata[argument0]==8)
    return "Status: Killed in action - fruit-assisted";
else if (global.killdata[argument0]==7)
    return "Status: Killed in action - Shredder impact";
else if (global.killdata[argument0]==6)
    return "Status: Killed in action - Turret head impact";
else if (global.killdata[argument0]==5)
    return "Status: Killed in action - extreme violence used";
else if (global.killdata[argument0]==4)
    return "Status: Killed in action - Nanofield compromised before death";
else if (global.killdata[argument0]==3)
    return "Status: Killed in action - remote-controlled Annihilator";
else if (global.killdata[argument0]==2)
    return "Status: Killed in action - self-destruct triggered";
else if (global.killdata[argument0]==1)
    return "Status: Killed in action";
else
    return "";