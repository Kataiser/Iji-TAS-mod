global.fails+=1;
scr_sound("glo_crackfail");
if (global.cracklevel!=10){
//Failure
with (obj_iji){
if (crackmark){
    global.topmessage="CRACKING FAILED";
    global.fails-=1;
    global.ignorestation=90;
    }
}
with (obj_cdoor){
if (crackmark){
tempincrease=random(1);
if (tempincrease < (0.25*global.difficulty)+0.25 && security>1){
    security+=1;
    global.topmessage="CRACKING FAILED - DOOR SECURITY INCREASED";
    global.ignorestation=90;
    }
else{
    global.topmessage="CRACKING FAILED";
    global.ignorestation=90;
    }
}
}
with (obj_weapstation){
if (crackmark){
lostammo=0;
if (random(1)<(0.25*global.difficulty)+0.25){
    if (weap1==2 || weap2==2){
        lostammo=1;
        global.ammo2-=5;
        if (global.ammo2<=0){
            global.ammo2=0;
            global.ammo2part=0;
            }
        }
    if (weap1==3 || weap2==3){
        lostammo=1;
        global.ammo3-=5;
        if (global.ammo3<=0)
            global.ammo3=0;
        }
    if (weap1==4 || weap2==4){
        lostammo=1;
        global.ammo4-=5;
        if (global.ammo4<=0)
            global.ammo4=0;
        }
    if (weap1==6 || weap2==6){
        lostammo=1;
        global.ammo6-=5;
        if (global.ammo6<=0){
            global.ammo6=0;
            global.ammo6part=0;
            }
        }
    if (weap1==7 || weap2==7){
        lostammo=1;
        global.ammo7-=5;
        if (global.ammo7<=0)
            global.ammo7=0;
        }
    if (weap1==8 || weap2==8){
        lostammo=1;
        global.ammo8-=5;
        if (global.ammo8<=0){
            global.ammo8=0;
            global.ammo8part=0;
            }
        }
    }
if (lostammo)
    global.topmessage="CRACKING FAILED - 5 AMMUNITION LOST";
else
    global.topmessage="CRACKING FAILED";
global.ignorestation=90;
}
}
with (obj_turret){
if (crackmark){
if (angry==0)
    alarm[2]=15;
angry=1;
alarm[3]=300;
global.topmessage="CRACKING FAILED - SUBJECT ALERTED";
global.ignorestation=90;
}
}
with (obj_tasenscout){
if (crackmark){
if (angry==0)
    alarm[2]=ceil(random(15));
angry=1;
alarm[5]=300;
targetiji=300;
global.topmessage="CRACKING FAILED - SUBJECT ALERTED";
global.ignorestation=90;
}
}
with (obj_tasensoldier){
if (crackmark){
if (angry==0)
    alarm[2]=1;
angry=1;
alarm[5]=300;
targetiji=300;
global.topmessage="CRACKING FAILED - SUBJECT ALERTED";
global.ignorestation=90;
}
}
with (obj_tasencommander){
if (crackmark){
if (angry==0)
    alarm[2]=1;
angry=1;
alarm[5]=300;
targetiji=300;
global.topmessage="CRACKING FAILED - SUBJECT ALERTED";
global.ignorestation=90;
}
}
with (obj_tasenelite){
if (crackmark){
if (angry==0)
    alarm[2]=1;
angry=1;
alarm[5]=300;
targetiji=300;
global.topmessage="CRACKING FAILED - SUBJECT ALERTED";
global.ignorestation=90;
}
}
with (obj_tasenshredder){
if (crackmark){
if (angry==0)
    alarm[2]=1;
angry=1;
alarm[5]=300;
targetiji=300;
global.topmessage="CRACKING FAILED - SUBJECT ALERTED";
global.ignorestation=90;
}
}
with (obj_komatotrooper){
if (crackmark){
if (angry==0)
    alarm[2]=1;
angry=1;
alarm[5]=300;
targetiji=300;
global.topmessage="CRACKING FAILED - SUBJECT ALERTED";
global.ignorestation=90;
}
}
with (obj_komatoberserker){
if (crackmark){
if (angry==0)
    alarm[2]=1;
angry=1;
alarm[5]=300;
targetiji=300;
global.topmessage="CRACKING FAILED - SUBJECT ALERTED";
global.ignorestation=90;
}
}
with (obj_komatoassassin){
if (crackmark){
if (angry==0){
    alarm[2]=random(60-(global.difficulty*20))+30-(global.difficulty*10);
    angry=1;
    visible=0;
    instance_create(bbox_left+((bbox_right-bbox_left)/2), bbox_top+((bbox_bottom-bbox_top)/2), obj_megaflash);
    }
global.topmessage="CRACKING FAILED - SUBJECT ALERTED";
global.ignorestation=90;
}
}
with (obj_komatobeast){
if (crackmark){
if (angry==0)
    alarm[2]=1;
angry=1;
alarm[5]=300;
targetiji=300;
global.topmessage="CRACKING FAILED - SUBJECT ALERTED";
global.ignorestation=90;
}
}
with (obj_komatoannihilator){
if (crackmark){
if (angry==0)
    alarm[2]=1;
angry=1;
alarm[5]=300;
targetiji=300;
global.topmessage="CRACKING FAILED - SUBJECT ALERTED";
global.ignorestation=90;
}
}

with (obj_crackbox){
if (crackmark){
    if (global.difficulty==0){
        temp=random(1);
        if (temp>0.75 && security>1 && security<10){
            global.topmessage="CRACKING FAILED - BOX SECURITY INCREASED";
            global.ignorestation=90;
            security+=1;
            }
        }
    if (global.difficulty==1){
        temp=random(1);
        if (temp>0.75){
            script_execute(scr_metabreak,4);
            global.topmessage="CRACKING FAILED - SECURITY BOX DESTROYED";
            global.ignorestation=90;
            }
        }
    if (global.difficulty==2){
        temp=random(1);
        if (temp>0.75){
            instance_create(x+32,y+16,obj_enemyrocketexplosion);
            instance_create(x+32,y+16,obj_explosioncenter);
            script_execute(scr_shakescreen,2)
            global.topmessage="CRACKING FAILED - SECURITY BOX EXPLODED";
            global.ignorestation=90;
            }
        }
    }
}
with (obj_iosa2){
if (state==10){
    woozycyc=0;
    uppercutcyc=0;
    state=4;
    sprite_index=spr_iosa2_uppercut;
    image_single=0;
    }
global.topmessage="CRACKING FAILED";
global.ignorestation=90;
}

}
scr_terminatecrack();