weaponrand=floor(random(3));

//Death hail always comes first
if (!firsthail){
    firsthail=1;
    weaponrand=0;
    }

//DEATH HAIL
if (weaponrand==0){
    if (global.difficulty==0 && !global.tormaximumcharge){
        if (hailtype<1)
            hailtype+=1;
        }
    else{
        if (hailtype<2)
            hailtype+=1;
        }
    obj_tor2.extend=1;
    obj_tor2.extendcyc=0;
    obj_tor2.alarm[0]=30;
    obj_tor2.alarm[1]=60;
    }

//ERUPTION
if (weaponrand==1){
    scr_sound("tor_eruption");
    instance_create(0,0,obj_eruptionslash);
    instance_create(background_x[0]+430,background_y[0]+363,obj_tor2muzzleflash);
    obj_tor2.alarm[3]=31-eruptiontype*4;
    timeline_position=165;
    showsafe=1;
    if (global.difficulty==0 && !global.tormaximumcharge){
        if (eruptiontype<1)
            eruptiontype+=1;
        }
    else{
        if (eruptiontype<2)
            eruptiontype+=1;
        }
    }

//MEGAMISSILE
if (weaponrand==2){
    obj_tor2.alarm[4]=1;
    obj_tor2.megamissilecyc=0;
    }
