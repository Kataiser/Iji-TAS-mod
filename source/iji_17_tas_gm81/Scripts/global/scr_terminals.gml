if (!place_meeting(x,y,obj_enemy) || place_meeting(x,y,obj_iosa)){
instance_destroy();
//Sector 2: Open medical bay cdoor
if (other.trigger==1 && !other.cracked){
    other.sprite_index=spr_sec7terminal;
    instance_activate_object(obj_cdoor);
    instance_activate_object(obj_trigger);
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    with (obj_cdoor){
        if (trigger==1)
            instance_destroy();
        }
    with (obj_trigger){
        if (textid="chat22")
            instance_destroy();
        }
    global.erasetop=0;
    global.topmessage="MEDICAL BAY DOOR OPENED";
    global.ignorestation=60;
    }

//Sector 2: open cdoor to end area
if (other.trigger==2 && !other.cracked){
    global.security=1;
    other.crackmark=1;
    global.cracktext="Tasen terminal#[Locked]#Security: ";
    global.cracktext+=string(global.security);
    if (global.security==10)
        global.cracktext+="#PUSH "+chr(global.usekey)+" TO BEGIN"
    else
        global.cracktext+="#PUSH "+chr(global.usekey)+" TO BEGIN"
    script_execute(scr_begincrack);
    }

//Sector 4: Open first security door
if (other.trigger==3 && !other.cracked){
    other.sprite_index=spr_sec7terminal;
    instance_activate_object(obj_cdoor);
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    with (obj_cdoor){
        if (trigger==3)
            instance_destroy();
        }
    global.erasetop=0;
    global.topmessage="SECURITY DOOR ON FLOOR 9 OPENED";
    global.ignorestation=60;
    }

//Sector 4: Open second security door
if (other.trigger==4 && !other.cracked){
    other.sprite_index=spr_sec7terminal;
    instance_activate_object(obj_cdoor);
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    with (obj_cdoor){
        if (trigger==4)
            instance_destroy();
        }
    global.erasetop=0;
    global.topmessage="SECURITY DOOR ON FLOOR 7 OPENED";
    global.ignorestation=60;
    }

//Sector 4: Open third security door
if (other.trigger==5 && !other.cracked){
    other.sprite_index=spr_sec7terminal;
    instance_activate_object(obj_cdoor);
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    with (obj_cdoor){
        if (trigger==5)
            instance_destroy();
        }
    global.erasetop=0;
    global.topmessage="SECURITY DOOR ON FLOOR 7 OPENED";
    global.ignorestation=60;
    }

//Sector 4: Power up reactor
if (other.trigger==6 && !other.cracked){
    other.sprite_index=spr_sec7terminal;
    instance_activate_object(obj_cdoor);
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    scr_sound("tor_fly");
    with (obj_cdoor){
        if (trigger==6)
            instance_destroy();
        }
    obj_s4reactor.active=1;
    obj_sabot.s4flash=1;
    //(instance_create(obj_iji.x,obj_iji.y,obj_trigger)).textid="chat43";
    global.erasetop=0;
    global.topmessage="TASEN REACTOR POWERED UP";
    global.ignorestation=60;
    (instance_create(3680,4480,obj_tasenshredder)).killdataid=149;
    if (global.difficulty!=0){
        tempid5=instance_create(3872,4480,obj_tasenshredder)
        tempid5.shrstepsound=3;
        tempid5.killdataid=150;
        }
    }

//Sector 4: Open final security door
if (other.trigger==8 && !other.cracked){
    other.sprite_index=spr_sec7terminal;
    instance_activate_object(obj_cdoor);
    instance_activate_object(obj_trigger);
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    with (obj_cdoor){
        if (trigger==8)
            instance_destroy();
        }
    with (obj_trigger){
        if (textid="chat44")
            instance_destroy();
        }
    global.erasetop=0;
    global.topmessage="SECURITY DOOR ON FLOOR 3 OPENED";
    global.ignorestation=60;
    }

//Sector 5: Open Tasen-Komato battle security door
if (other.trigger==9 && !other.cracked){
    other.sprite_index=spr_sec7terminal;
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    with (obj_cdoor){
        if (tag==97624){
            scr_sound("glo_door");
            cracked=1;
            vspeed=-16;
            alarm[0]=6;
            }
        }
    global.erasetop=0;
    global.topmessage="SECURITY DOOR ON FLOOR 9 OPENED";
    global.ignorestation=60;
    }

//Sector 5: open grand storage cdoor
if (other.trigger==10 && !other.cracked){
    global.security=1;
    other.crackmark=1;
    global.cracktext="Tasen terminal#[Locked]#Security: ";
    global.cracktext+=string(global.security);
    if (global.security==10)
        global.cracktext+="#PUSH "+chr(global.usekey)+" TO BEGIN"
    else
        global.cracktext+="#PUSH "+chr(global.usekey)+" TO BEGIN"
    script_execute(scr_begincrack);
    }

//Sector 6: Open "Assassin storage" security door
if (other.trigger==11 && !other.cracked){
    other.sprite_index=spr_sec7terminal;
    instance_activate_object(obj_cdoor);
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    with (obj_cdoor){
        if (trigger==11)
            instance_destroy();
        }
    global.erasetop=0;
    global.topmessage="SECURITY DOOR ON FLOOR 4 OPENED";
    global.ignorestation=60;
    }

//Sector 6: Open "poster storage" security door
if (other.trigger==12 && !other.cracked){
    if (global.cracklevel>=1){
    global.security=1;
    other.crackmark=1;
    global.cracktext="Tasen terminal#[Locked]#Security: ";
    global.cracktext+=string(global.security);
    if (global.security==10)
        global.cracktext+="#PUSH "+chr(global.usekey)+" TO BEGIN"
    else
        global.cracktext+="#PUSH "+chr(global.usekey)+" TO BEGIN"
    script_execute(scr_begincrack);
    }
    else{
        global.erasetop=0;
        global.topmessage="You need a Crack level of 1 to crack this Tasen terminal";
        global.ignorestation=60;
        }
    }

//Sector 6: Open main security door
if (other.trigger==13 && !other.cracked){
    other.sprite_index=spr_sec7terminal;
    instance_activate_object(obj_cdoor);
    instance_activate_object(obj_trigger);
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    with (obj_cdoor){
        if (trigger==13)
            instance_destroy();
        }
    with (obj_trigger){
        if (textid="chat62")
            instance_destroy();
        }
    global.erasetop=0;
    global.topmessage="SECURITY DOOR ON FLOOR 7 OPENED";
    global.ignorestation=60;
    }

//Sector 6: Activate secret teleporter
if (other.trigger==14 && !other.cracked){
    other.sprite_index=spr_sec7terminal;
    instance_activate_object(obj_teledest);
    instance_activate_object(obj_trigger);
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    with (obj_teledest){
        if (dest==64){
            (instance_create(x,y-32,obj_tele)).dest=4;
            instance_destroy();
            }
        }
    global.erasetop=0;
    global.topmessage="TELEPORTER ON FLOOR 7 ACTIVATED";
    global.ignorestation=60;
    tempid=instance_create(6400,3872,obj_trigger);
    tempid.sprite_index=spr_blocktall;
    tempid.textid="chat69";
    with (obj_trigger){
        if (textid="chat6a")
            instance_destroy();
        }
    }

//Sector 6: Open Alpha Lab security door
if (other.trigger==15 && !other.cracked){
    other.sprite_index=spr_sec7terminal;
    instance_activate_object(obj_cdoor);
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    with (obj_cdoor){
        if (trigger==15)
            instance_destroy();
        }
    global.erasetop=0;
    global.topmessage="SECURITY DOOR ON FLOOR 3 OPENED";
    global.ignorestation=60;
    }

//Sector 6: Map console
if (other.trigger==16){
    global.erasetop=0;
    if (obj_sabot.sec6mapped)
        global.topmessage="The Sector map has been downloaded to the Pause menu";
    else
        global.topmessage="This terminal displays a map of the Sector";
    global.ignorestation=60;
    }

//Sector 6: Secret minigame
if (other.trigger==17){
    if (instance_exists(obj_komatoassassin)){
        global.erasetop=0;
        global.topmessage="TEMPORARY MALFUNCTION, PLEASE STAND BY";
        global.ignorestation=60;
        scr_sound("glo_crackfail");
        }
    else{
        instance_create(obj_sabot.x,obj_sabot.y,obj_starthero3d);
        global.ignoreall=1;
        obj_sabot.playinghero3d=1;
        scr_sound("glo_cracksuccess");
        }
    }

//Sector 6: Open the way back
if (other.trigger==18 && !other.cracked){
    other.sprite_index=spr_sec7terminal;
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    with (obj_cdoor){
        if (trigger==18){
            scr_sound("glo_door");
            cracked=1;
            vspeed=-16;
            alarm[0]=6;
            }
        }
    global.erasetop=0;
    global.topmessage="SECURITY DOOR ON FLOOR 9 OPENED";
    global.ignorestation=60;
    }

//Sector 7: Open level 1 Security doors
if (other.trigger==19 && !other.cracked){
    other.sprite_index=spr_sec7terminal;
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    with (obj_cdoor){
        if (trigger==1){
            scr_sound("glo_door");
            cracked=1;
            vspeed=-16;
            alarm[0]=6;
            }
        }
    global.erasetop=0;
    global.topmessage="LEVEL { SECURITY DOORS OPENED";
    global.ignorestation=60;
    }

//Sector 7: Open level 2 Security doors
if (other.trigger==20 && !other.cracked){
    other.sprite_index=spr_sec7terminal;
    instance_activate_object(obj_cdoor);
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    with (obj_cdoor){
        if (trigger==2)
            instance_destroy();
        }
    global.erasetop=0;
    global.topmessage="LEVEL } SECURITY DOORS OPENED";
    global.ignorestation=60;
    }

//Sector 7: Open level 3 Security doors
if (other.trigger==21 && !other.cracked){
    other.sprite_index=spr_sec7terminal;
    instance_activate_object(obj_cdoor);
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    with (obj_cdoor){
        if (trigger==3)
            instance_destroy();
        }
    global.erasetop=0;
    global.topmessage="LEVEL @{ SECURITY DOORS OPENED";
    global.ignorestation=60;
    }

//Sector 7: Open level 5 Security doors
if (other.trigger==22 && !other.cracked){
    other.sprite_index=spr_sec7terminal;
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    with (obj_cdoor){
        if (trigger==5){
            scr_sound("glo_door");
            cracked=1;
            vspeed=-16;
            alarm[0]=6;
            }
        }
    global.erasetop=0;
    global.topmessage="LEVEL }{ SECURITY DOORS OPENED";
    global.ignorestation=60;
    }

//Sector 7: Trigger right electropad
if (other.trigger==23){
    if (other.sprite_index==spr_terminal){
        with (obj_electropad){
            if (tag==2)
                active=1;
            }
        if (obj_proximatrigger.elecpad2==0){
            global.topmessage="RIGHT ELECTROPAD ACTIVE";
            scr_sound("glo_bootelec");
            other.sprite_index=spr_sec7terminal;
            obj_proximatrigger.elecpad2=1;
            if (obj_sabot.flash==0)
                obj_sabot.flash=0.2;
            }
        }
    else{
        global.topmessage="RIGHT ELECTROPAD IS NOT DONE CHARGING, TRY LATER";
        scr_sound("glo_crackfail");
        }
    global.erasetop=0;
    global.ignorestation=60;
    }

//Sector 7: Trigger left electropad
if (other.trigger==24){
    if (other.sprite_index==spr_terminal){
        with (obj_electropad){
            if (tag==1)
                active=1;
            }
        if (obj_proximatrigger.elecpad1==0){
            global.topmessage="LEFT ELECTROPAD ACTIVE";
            scr_sound("glo_bootelec");
            other.sprite_index=spr_sec7terminal;
            obj_proximatrigger.elecpad1=1;
            if (obj_sabot.flash==0)
                obj_sabot.flash=0.2;
            }
        }
    else{
        global.topmessage="LEFT ELECTROPAD IS NOT DONE CHARGING, TRY LATER";
        scr_sound("glo_crackfail");
        }
    global.erasetop=0;
    global.ignorestation=60;
    }

//Sector 8: Activate lift
if (other.trigger==25 && !other.cracked){
if (other.ready){
    other.sprite_index=spr_sec7terminal;
    global.topmessage="LIFT POWERING UP|";
    global.erasetop=0;
    global.ignorestation=60;
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    with (obj_trigger){
        if (textid="chat83")
            instance_destroy();
        }
    with (obj_liftoff){
        if (trigger=25)
            countdown=1;
        }
    }
else{
    global.topmessage="TERMINAL BOOTING UP|";
    global.erasetop=0;
    global.ignorestation=60;
    }
}
//Sector 8: Unlock Annihilator Beta
if (other.trigger==26 && !other.cracked){
    other.sprite_index=spr_sec7terminal;
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    global.erasetop=0;
    global.ignorestation=60;
    global.topmessage="ANNIHILATOR BETA UNLOCKED IN SECTOR X";
    global.specialtrigger4=1;
    }

//Sector 9: Open first Security door
if (other.trigger==27 && !other.cracked){
    other.sprite_index=spr_sec7terminal;
    instance_activate_object(obj_cdoor);
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    with (obj_cdoor){
        if (trigger==27)
            instance_destroy();
        }
    global.erasetop=0;
    global.topmessage="SECURITY DOOR ON FLOOR 5 OPENED";
    global.ignorestation=60;
    }

//Sector 9: Lock 1
if (other.trigger==28 && !other.cracked){
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    other.sprite_index=spr_sec7terminal;
    global.erasetop=0;
    global.topmessage="BULKHEAD LOCK A RELEASED";
    global.ignorestation=60;
    obj_sabot.mbulk+=1;
    if (obj_sabot.mbulk==4){
        global.topmessage+=" - BULKHEAD OPENED";
        instance_activate_object(obj_mbulkhead);
        with (obj_mbulkhead)
                instance_destroy();
        }
    }

//Sector 9: Lock 2
if (other.trigger==29 && !other.cracked){
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    other.sprite_index=spr_sec7terminal;
    global.erasetop=0;
    global.topmessage="BULKHEAD LOCK B RELEASED";
    global.ignorestation=60;
    obj_sabot.mbulk+=1;
    if (obj_sabot.mbulk==4){
        global.topmessage+=" - BULKHEAD OPENED";
        instance_activate_object(obj_mbulkhead);
        with (obj_mbulkhead)
                instance_destroy();
        }
    }

//Sector 9: Lock 3
if (other.trigger==30 && !other.cracked){
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    other.sprite_index=spr_sec7terminal;
    global.erasetop=0;
    global.topmessage="BULKHEAD LOCK C RELEASED";
    global.ignorestation=60;
    obj_sabot.mbulk+=1;
    if (obj_sabot.mbulk==4){
        global.topmessage+=" - BULKHEAD OPENED";
        instance_activate_object(obj_mbulkhead);
        with (obj_mbulkhead)
                instance_destroy();
        }
    }

//Sector 9: Lock 4
if (other.trigger==31 && !other.cracked){
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    other.sprite_index=spr_sec7terminal;
    global.erasetop=0;
    global.topmessage="BULKHEAD LOCK D RELEASED";
    global.ignorestation=60;
    obj_sabot.mbulk+=1;
    if (obj_sabot.mbulk==4){
        global.topmessage+=" - BULKHEAD OPENED";
        instance_activate_object(obj_mbulkhead);
        with (obj_mbulkhead)
                instance_destroy();
        }
    }

//Sector 9: Open final Security door
if (other.trigger==32 && !other.cracked){
    other.sprite_index=spr_sec7terminal;
    instance_activate_object(obj_cdoor);
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    with (obj_cdoor){
        if (trigger==32)
            instance_destroy();
        }
    global.erasetop=0;
    global.topmessage="SECURITY DOOR ON FLOOR 4 OPENED";
    global.ignorestation=60;
    }

//Sector 9: Respawn Iosa crumbles
if (other.trigger==33 && !other.cracked){
    with (other){
        if (!place_meeting(864,576,obj_iosacrumble)){
            tempid=instance_create(512,576,obj_iosacrumble);
            tempid.tag=1;
            tempid.depth=1;
            }
        if (!place_meeting(1312,576,obj_iosacrumble)){
            tempid=instance_create(1664,576,obj_iosacrumble);
            tempid.tag=2;
            tempid.depth=1;
            }
        cracked=1;
        sprite_index=spr_sec7terminal;
        }
    scr_sound("glo_cracksuccess");
    global.erasetop=0;
    global.topmessage="PLATFORMS EXTENDED";
    global.ignorestation=60;
    }

//Sector X: Open first core door
if (other.trigger==34 && !other.cracked){
    other.sprite_index=spr_sec7terminal;
    instance_activate_object(obj_cdoor);
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    with (obj_cdoor){
        if (trigger==34)
            instance_destroy();
        }
    with (obj_teledest){
        if (dest==91294){
            instance_destroy();
            (instance_create(x,y-32,obj_tele)).dest=2;
            }
        }
    global.erasetop=0;
    global.topmessage="FIRST LINE BLAST DOORS OPENED";
    global.ignorestation=60;
    obj_sabot.xcoredoors+=1;
    instance_activate_object(obj_xcore);
    if (obj_sabot.xcoredoors==2 && instance_number(obj_xcore)==1){
        (instance_create(4592,1856,obj_trigger)).textid="chatxk";
        (instance_create(6144,1472,obj_trigger)).textid="chatxk";
        }
    }

//Sector X: Open second core door
if (other.trigger==35 && !other.cracked){
    other.sprite_index=spr_sec7terminal;
    instance_activate_object(obj_cdoor);
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    with (obj_cdoor){
        if (trigger==35)
            instance_destroy();
        }
    with (obj_teledest){
        if (dest==85624){
            instance_destroy();
            (instance_create(x,y-32,obj_tele)).dest=2;
            }
        }
    global.erasetop=0;
    global.topmessage="SECOND LINE BLAST DOORS OPENED";
    global.ignorestation=60;
    obj_sabot.xcoredoors+=1;
    instance_activate_object(obj_xcore);
    if (obj_sabot.xcoredoors==2 && instance_number(obj_xcore)==1){
        (instance_create(4592,1856,obj_trigger)).textid="chatxk";
        (instance_create(6144,1472,obj_trigger)).textid="chatxk";
        }
    }

//Sector X: Annihilator Beta
if (other.trigger==36 && !other.cracked){
    if (global.specialtrigger4==0){
        global.erasetop=0;
        global.topmessage="ACCESS DENIED - ANNIHILATOR BETA IS LOCKED";
        global.ignorestation=60;
        scr_sound("glo_crackfail");
        }
    else{
        instance_activate_object(obj_annihilatorbeta);
        global.ignoreall=1;
        scr_sound("glo_cracksuccess");
        obj_iji.takingpain=1;
        obj_iji.recovering=0;
        global.state=1;
        if (global.facing==0)
            obj_iji.sprite_index=spr_basicleft;
        else
            obj_iji.sprite_index=spr_basic;
        obj_iji.visible=1;
        obj_sabot.annihilatorbeta=1;
        obj_sabot.ignoresmooth=1;
        obj_sabot.alarm[4]=2;
        obj_sabot.alarm[5]=1;
        obj_iji.alarm[1]=0;
        obj_iji.switchingpose=0;
        (instance_create(obj_annihilatorbeta.x,obj_annihilatorbeta.y,obj_blackblanket)).alarm[0]=2;
        global.erasetop=0;
        global.topmessage="ACCESS GRANTED - ANNIHILATOR BETA ACTIVATED";
        global.ignorestation=60;
        }
    }

//Sector 7: Open floor hatch
if (other.trigger==37 && !other.cracked){
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    global.erasetop=0;
    global.topmessage="FLOOR HATCH OPENED";
    global.ignorestation=60;
    with (obj_sec7hatch){
        solid=0;
        open=1;
        }
    other.sprite_index=spr_sec7terminal;
    (instance_create(4544,1264,obj_trigger)).textid="chat76";
    }

//Sector 5: Lock 1
if (other.trigger==38 && !other.cracked){
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    other.sprite_index=spr_sec7terminal;
    global.erasetop=0;
    global.topmessage="DOOR LOCK A RELEASED";
    global.ignorestation=60;
    obj_sabot.mbulk+=1;
    if (obj_sabot.mbulk==2){
        global.topmessage+=" - SECURITY DOOR ON FLOOR 6 OPENED";
        instance_activate_object(obj_cdoor);
        with (obj_cdoor){
            if (tag==58392)
                instance_destroy();
            }
        instance_activate_object(obj_log1);
        with (obj_log1){
            if (textid=="text513"){
                instance_destroy();
                tempid=instance_create(x,y,obj_terminal);
                tempid.cracked=1;
                tempid.sprite_index=spr_sec7terminal;
                }
            }
        }
    }

//Sector 5: Lock 2
if (other.trigger==39 && !other.cracked){
    other.cracked=1;
    scr_sound("glo_cracksuccess");
    other.sprite_index=spr_sec7terminal;
    global.erasetop=0;
    global.topmessage="DOOR LOCK B RELEASED";
    global.ignorestation=60;
    obj_sabot.mbulk+=1;
    if (obj_sabot.mbulk==2){
        global.topmessage+=" - SECURITY DOOR ON FLOOR 6 OPENED";
        instance_activate_object(obj_trigger);
        instance_activate_object(obj_cdoor);
        with (obj_cdoor){
            if (tag==58392)
                instance_destroy();
            }
        instance_activate_object(obj_log1);
        with (obj_log1){
            if (textid=="text513"){
                instance_destroy();
                tempid=instance_create(x,y,obj_terminal);
                tempid.cracked=1;
                tempid.sprite_index=spr_sec7terminal;
                }
            }
        }
    }
}

//Sector X: General Tor Maximum charge
if (other.trigger==40 && !other.cracked){
    global.erasetop=0;
    global.ignorestation=120;
    if (global.topmessage!="WARNING: PRESS AGAIN TO CONFIRM MAXIMUM CHARGE")
        global.topmessage="WARNING: PRESS AGAIN TO CONFIRM MAXIMUM CHARGE";
    else{
        other.cracked=1;
        other.sprite_index=spr_sec7terminal;
        scr_sound("glo_cracksuccess");
        global.tormaximumcharge=1;
        global.topmessage="MAXIMUM CHARGE CONFIRMED";
        }
    }

//Sector ?: Unknown
if (other.trigger==41){
    scr_sound("glo_cracksuccess");
    instance_create(other.x+16,other.y+16,obj_banana);
    }