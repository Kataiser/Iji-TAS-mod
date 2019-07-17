//Argument0 is megacharge
//Argument1 is cannot Stomp
if (argument1==0){
    totalweight=0;
    for (j=0; j<4; j+=1){
        for (i=0; i<weight[j]; i+=1){
            weightlist[totalweight]=j;
            totalweight+=1;
            }
        }
    weaponrand=weightlist[floor(random(totalweight))];
    }
else{
    totalweight=0;
    for (j=0; j<3; j+=1){
        for (i=0; i<weight[j]; i+=1){
            weightlist[totalweight]=j;
            totalweight+=1;
            }
        }
    weaponrand=weightlist[floor(random(totalweight))];
    }

//Three chargeballs?
if (instance_number(obj_chargeball)>=3 && argument0==1)
    megarand=1;
else
    megarand=0;

//Ripper always comes first, to intimidate
if (!firstripper){
    firstripper=1;
    weaponrand=2;
    }

//PHANTOM HAMMER / NANOSTORM
if (megarand==1){
    if (maxhp==1050)
        tempadjust=1;
    if (maxhp==1200)
        tempadjust=2;
    if (obj_tor.hp>=750+tempadjust*75){
        timeline_index=tim_phantom;
        timeline_running=true;
        timeline_position=0;
        }
    else{
        with (obj_chargeball){
            instance_create(x,y,obj_megaflash);
            repeat(25)
                instance_create(x,y,obj_nanostorm);
            instance_destroy();
            }
        (instance_create(x,y,obj_whiteblanket)).alarm[0]=2;
        }
    }

//RAGEBOMB
else if (weaponrand==0){
    scr_sound("tor_fire");
    scr_tor_fire();
    scr_shakescreen(3);
    repeat(potency[0]+1)
        instance_create(x-80,y+235,obj_ragebomb);
    weight[0]-=1;
    potencycount[0]+=1;
    }
//TYRIAN CLAW
else if (weaponrand==1){
    scr_sound("tor_fire");
    scr_tor_fire();
    scr_shakescreen(3);
    repeat((potency[1]*2)+2)
        instance_create(x-80,y+235,obj_tyrian);
    if (!obj_tortrigger.slowdowned){
        repeat(40-global.specialbake*30){
            tempid=instance_create(x-60+random(20),y+225+random(20),obj_detonatorspark);
            tempid.speed=5+random(21);
            tempid.direction=110+random(140);
            tempid.gravity=0.5;
            tempid.gravity_direction=tempid.direction+180;
            }
        }
    weight[1]-=1;
    potencycount[1]+=1;
    }
//RIPPER
else if (weaponrand==2){
    scr_sound("tor_fire");
    scr_tor_fire();
    scr_shakescreen(3);
    tempid=instance_create(x-80,y+235,obj_ripper);
    tempid.image_single=0;
    tempid.direction=116;
    tempid.speed=25-(15-potency[2]*3);
    tempid=instance_create(x-80,y+235,obj_ripper);
    tempid.image_single=1;
    tempid.direction=135;
    tempid.speed=60-(15-potency[2]*3);
    tempid=instance_create(x-80,y+235,obj_ripper);
    tempid.image_single=2;
    tempid.direction=180;
    tempid.speed=50-(15-potency[2]*3);
    tempid=instance_create(x-80,y+235,obj_ripper);
    tempid.image_single=3;
    tempid.direction=225;
    tempid.speed=60-(15-potency[2]*3);
    tempid=instance_create(x-80,y+235,obj_ripper);
    tempid.image_single=4;
    tempid.direction=244;
    tempid.speed=25-(15-potency[2]*3);
    weight[2]-=1;
    potencycount[2]+=1;
    }
//HEAVY STOMP
else if (weaponrand==3){
    scr_tor_stomp();
    superstomp=0;
    timeline_position+=18;
    weight[3]-=1;
    potencycount[3]+=1;
    }
