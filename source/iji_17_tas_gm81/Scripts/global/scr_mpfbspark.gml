poscycle = poscycle + 1;

if (poscycle == 1){ pos = 1; pos2 = 31; }
if (poscycle == 2){ pos = 3; pos2 = 29; }
if (poscycle == 3){ pos = 6; pos2 = 26; }
if (poscycle == 4){ pos = 11; pos2 = 21; }
if (poscycle == 5){ pos = 16; pos2 = 16; }
if (poscycle == 6){ pos = 21; pos2 = 11; }
if (poscycle == 7){ pos = 26; pos2 = 6; }
if (poscycle == 8){ pos = 29; pos2 = 3; }
if (poscycle == 9){ pos = 31; pos2 = 1; }
if (poscycle == 10){ pos = 29; pos2 = 3; }
if (poscycle == 11){ pos = 26; pos2 = 6; }
if (poscycle == 12){ pos = 21; pos2 = 11; }
if (poscycle == 13){ pos = 16; pos2 = 16; }
if (poscycle == 14){ pos = 11; pos2 = 21; }
if (poscycle == 15){ pos = 6; pos2 = 26; }
if (poscycle == 16){ pos = 3; pos2 = 29; poscycle = 0; }

instance_create(x,y-16+pos,obj_mpfbspark);
instance_create(x,y-16+pos2,obj_mpfbspark);