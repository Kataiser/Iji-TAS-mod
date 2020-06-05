if (ignorenoammomsg>0)
    ignorenoammomsg-=1;
if (noliftride>0)
    noliftride-=1;
if (delayframes>0)
    delayframes-=1;
if (deathscreamedcyc>0)
    deathscreamedcyc-=1;
if (deathscreamedcyc==1)
    deathscreamed=0;
if (damncooldown>0)
    damncooldown-=1;
if (thored>0)
    thored-=1;
if (cfised>0)
    cfised-=1;
if (gettingup>0)
    gettingup-=1;
if (noammosoundx>0)
    noammosoundx-=1;

//Count down ougi
if (usingougi>0)
    usingougi-=1;

//Cannot pause while teleporting
if (cannotpausecyc>0){
    cannotpausecyc-=1;
    if (cannotpausecyc==0)
        cannotpause=0;
    }

//Kill emote
if (killemote==1){
    kemo+=1;
    if (kemo==10){
        killemote=0;
        kemo=0;
        if (sprite_index==spr_basic || sprite_index==spr_basicleft || sprite_index==spr_run || sprite_index==spr_runleft || sprite_index==spr_runfire || sprite_index==spr_runfireleft || sprite_index==spr_jump || sprite_index==spr_jumpleft || sprite_index==spr_duck || sprite_index==spr_duckleft || sprite_index==spr_standup || sprite_index==spr_standupleft){
            if (!ignorephysics && !obj_sabot.annihilatorbeta){
                if (global.kills+global.totkills<global.neutralkc*berserkkills && berserkkills!=0 && attitude==0)
                    scr_sound("iji_cry");
                if (global.kills+global.totkills>=global.berserkkc*berserkkills && berserkkills!=0 && global.killdata[797]==0)
                    scr_sound("iji_berserk");
                }
            }
        }
    }

//Tech
if (tech==1 && techcyc<10 && notech==0)
    techcyc+=1;
if (notech>0)
    notech-=1;

//Xrain
if (global.sector==0 && !global.wty){
if (x>4000 && x<6070 && y<1952)
    xrain+=1;
if (x<4768 && y>1792)
    xrain=0;
if (x>5302 && x<5568 && y>1632)
    xrain=0;
if (x>5142 && x<5216 && y>1824)
    xrain=0;
if (x>5686 && x<5760 && y>1824)
    xrain=0;
if (x>5622 && x<5728 && y>1696)
    xrain=0;
if (xrain>=4){
    xrain=0;
    instance_create(bbox_left+random(bbox_right-bbox_left),bbox_top+random(bbox_bottom-bbox_top),obj_smoke);
    }
}
//Overload
if (overloadtime>0 && (!global.ignoreall || place_meeting(x,y+4,obj_lift))){
    overloadtime-=1;
    overcyc+=1;
    if (overload==3)
        image_alpha=random(0.2);
    if (overcyc==3 && overload==1){
        overcyc=0;
        instance_create(bbox_left+random(bbox_right-bbox_left),bbox_top+random(bbox_bottom-bbox_top),obj_nanoflash);
        }
    if (overcyc==45 && overload==2){
        scr_shakescreen(0);
        overcyc=0;
        if (shredder){
            with (obj_hologram)
                scr_nanoexplosion(0,0);
            }
        else
            scr_nanoexplosion((bbox_right-bbox_left)/2,(bbox_bottom-bbox_top)/2);
        with (obj_turret){
            if (distance_to_object(obj_iji)<128){
                scr_shakescreen(1);
                armor=-1000;
                if (instance_number(obj_ijiblood<200)){
                    repeat(5)
                        instance_create(bbox_left+(bbox_right-bbox_left)/2,bbox_top+(bbox_bottom-bbox_top)/2,obj_ijiblood);
                    }
                }
            }
        with (obj_alliedenemy){
            if (distance_to_object(obj_iji)<128 && (speed==0 || enemytype==13 || enemytype==5 || enemytype==15)){
                angry=1;
                targetiji=300;
                ijikill=1;
                alarm[5]=300;
                armor=-1000;
                shredderhp-=100;
                scr_shakescreen(1);
                if (instance_number(obj_ijiblood<200)){
                    repeat(5)
                        instance_create(bbox_left+(bbox_right-bbox_left)/2,bbox_top+(bbox_bottom-bbox_top)/2,obj_ijiblood);
                    }
                }
            }
        }
    if (overcyc==3 && overload==4){
        overcyc=0;
        instance_create(bbox_left+random(bbox_right-bbox_left),bbox_top+random(bbox_bottom-bbox_top),obj_smoke);
        }
    if (overcyc==3 && overload==5){
        overcyc=0;
        instance_create(bbox_left+random(bbox_right-bbox_left),bbox_top+random(bbox_bottom-bbox_top),obj_detonatorspark);
        }
    if (overcyc==3 && overload==6){
        overcyc=0;
        instance_create(bbox_left+random(bbox_right-bbox_left),bbox_top+random(bbox_bottom-bbox_top),obj_glassspark);
        }
    if (overcyc==3 && overload==7){
        overcyc=0;
        instance_create(bbox_left+random(bbox_right-bbox_left),bbox_top+random(bbox_bottom-bbox_top),obj_mpfbspark);
        }
    if (overcyc==3 && overload==8){
        overcyc=0;
        instance_create(bbox_left+random(bbox_right-bbox_left),bbox_top+random(bbox_bottom-bbox_top),obj_pulsespark);
        }
    if (overcyc==3 && overload==9){
        overcyc=0;
        instance_create(bbox_left+random(bbox_right-bbox_left),bbox_top+random(bbox_bottom-bbox_top),obj_ijisplat);
        }
    if (overcyc==3 && overload==10){
        overcyc=0;
        instance_create(bbox_left+random(bbox_right-bbox_left),bbox_top+random(bbox_bottom-bbox_top),obj_cfisspark);
        }
    //Nanomirror
    if (overload==5){
        if (place_meeting(x-64,y,obj_enemyrocket) || place_meeting(x-64,y,obj_enemympfb) || place_meeting(x-64,y,obj_enemyshock) || place_meeting(x-64,y,obj_enemyshockball) || place_meeting(x-64,y,obj_komatorocket) || place_meeting(x-64,y,obj_komatompfb) || place_meeting(x+74,y,obj_enemyrocket) || place_meeting(x+74,y,obj_enemympfb) || place_meeting(x+74,y,obj_enemyshock) || place_meeting(x+74,y,obj_enemyshockball) || place_meeting(x+74,y,obj_komatorocket) || place_meeting(x+74,y,obj_komatompfb))
            instance_create(bbox_left+(bbox_right-bbox_left)/2,bbox_top+(bbox_bottom-bbox_top)/2,obj_reflector);
        }
    //Nanolife
    if (overload==6){
        if (global.hp==0){
            global.hp=global.healthlevel*2;
            if (global.suddendeath)
                global.hp=1;
            overloadtime=0;
            overload=0;
            deathscreamedcyc=10;
            }
        }
    }
else if (overloadtime==0){
    if (overload==3)
        image_alpha=1;
    overload=0;
    overcyc=0;
    overloadtime=-1;
    }


if (!ignorephysics){

//Shredder
if (shredder)
    scr_shredderstep();
else{
if (ignoreshreddertext>0)
    ignoreshreddertext-=1;

//Release up key
if (!scr_tascheck(vk_up) && !global.ignoreall && global.state==2 && vspeed<0)
    pressjump=0;
//Release left key
if (!scr_tascheck(vk_left) && !global.ignoreall && goingleft && !goingright){
    goingleft=0;
    if (global.state==1)
        sprite_index=spr_basicleft;
    running=0;
    }
//Release right key
if (!scr_tascheck(vk_right) && !global.ignoreall && goingright && !goingleft){
    goingright=0;
    if (global.state==1)
        sprite_index=spr_basic;
    running=0;
    }
//Release down key
if (!scr_tascheck(vk_down) && delayframes==0 && !global.ignoreall && !shredder){
    rebootcyc=0;
    ignoredown=0;
    if (global.state==5){ //Stand up when halfway ducking
        if (sprite_index==spr_duck || sprite_index==spr_duckleft){
            switchingpose=1;
            if (image_index<1)
                image_index=1-image_index;
            else
                image_index=0;
            if (global.facing==0)
                sprite_index=spr_standupleft;
            else
                sprite_index=spr_standup;
            image_single=-1;
            image_speed=0.5;
            alarm[1]=4-(image_index*2);
            alarm[0]=0;
            }
        }
    else if (global.state==3){ //Stand up when fully ducked
        switchingpose=1;
        global.state=5;
        image_index=0;
        image_single=-1;
        image_speed=0.5;
        alarm[1]=4;
        if (global.facing==0)
            sprite_index=spr_standupleft;
        else
            sprite_index=spr_standup;
        }
    }
//Ignore reading station
if (global.ignorestation>0)
    global.ignorestation-=1;
//Fix stopping when hitting cieling
okay=0;
if (global.state==6)
    okay=1;
if (global.state==2)
    okay=1;
if (okay==1 && place_meeting(x,y+vspeed-2,obj_block) && !place_meeting(x,y+vspeed-2,obj_meta) && vspeed<0){
    move_contact_solid(90,30);
    vspeed=0;
    y+=2;
    if (global.state==2){
        if (global.facing==0){
            if (goingleft==1 && place_free(x-5,y) && !place_meeting(x-5,y,obj_glass))
                x-=5;
            }
        else if (global.facing==1){
            if (goingright==1 && place_free(x+5,y) && !place_meeting(x+5,y,obj_glass))
                x+=5;
            }
        }
    }
//Stop animations
if (sprite_index==spr_knockdown || sprite_index==spr_knockdownleft){
    if (image_index==7)
        image_single=7;
    }
if (sprite_index==spr_jump || sprite_index==spr_jumpleft){
    if (image_index==9)
        image_single=9;
    }
//Adjust sprite
if (global.state==1 && firing==0 && running==0 && lookingaround==0 && !global.ignoreall){
    if (global.facing==0)
        sprite_index=spr_basicleft;
    else
        sprite_index=spr_basic;
    }
//Kick
if (image_index==2){
    if (sprite_index==spr_kickstrong || sprite_index==spr_kickstrongleft)
        scr_sound("glo_swipe");
    }
if (image_index==3){
    if (sprite_index==spr_kickstrong){
        instance_create(x+11,y+9,obj_kickbox);
        }
    if (sprite_index==spr_kickstrongleft){
        instance_create(x-31,y+9,obj_kickbox);
        }
    }
//Use
if (image_index==2){
    if (sprite_index==spr_pushbutton)
        instance_create(x+5,y+6,obj_pushbox);
    if (sprite_index==spr_pushbuttonleft)
        instance_create(x-30,y+6,obj_pushbox);
    }
//Look around
if (global.state==1 && !global.ignoreall){
    if (running==0)
        lookaround+=1;
    else
        lookaround=0;
    }
else
    lookaround=0;
if (lookaround>90){
    alarm[1]=24;
    lookaround=0;
    lookingaround=1;
    if (global.facing==0)
        sprite_index=spr_lookaroundleft;
    else
        sprite_index=spr_lookaround;
    image_speed=0.5;
    }
//Recovery blink
if (recovering==1)
    script_execute(scr_recoveryblink);
else
    script_execute(scr_recoveryblinkend);
//Knockdown
if (global.state==6){
    if (knockdowntype==1){
        if (place_free(x-velocity,y+vspeed+2)){
            if (place_free(x-velocity,y+vspeed-2))
                x-=velocity;
            else if (place_free(x,y+vspeed+12)){
                velocity=ceil(velocity*0.3);
                knockdowntype=2;
                global.facing=0;
                if (sprite_index=spr_jump)
                    sprite_index=spr_jumpleft;
                else
                    sprite_index=spr_knockdownleft;
                }
            }
        else if (place_free(x,y+vspeed+12)){
            velocity=ceil(velocity*0.3);
            knockdowntype=2;
            global.facing=0;
            if (sprite_index=spr_jump)
                sprite_index=spr_jumpleft;
            else
                sprite_index=spr_knockdownleft;
            }
        }
    if (knockdowntype==2){
        if (place_free(x+velocity,y+vspeed+2)){
            if (place_free(x+velocity,y+vspeed-2))
                x+=velocity;
            else if (place_free(x,y+vspeed+12)){
                velocity=ceil(velocity*0.3);
                knockdowntype=1;
                global.facing=1;
                if (sprite_index==spr_jumpleft)
                    sprite_index=spr_jump;
                else
                    sprite_index=spr_knockdown;
                }
            }
        else if (place_free(x,y+vspeed+12)){
            velocity=ceil(velocity*0.3);
            knockdowntype=1;
            global.facing=1;
            if (sprite_index==spr_jumpleft)
                sprite_index=spr_jump;
            else
                sprite_index=spr_knockdown;
            }
        }
    }
//Limit fall speed
if (vspeed>20){
    vspeed=20;
    falldistance+=20;
    }
else
    falldistance=0;
//Fall
if (place_free(x,y+1) && place_free(xprev,y+1)){
    gravity=1;
    gravity_direction=270;
    if (global.state==2 && vspeed<0 && pressjump=0)
        gravity=4;
    if (global.state<6){
        if (global.state==1)
            image_index=0;
        global.state=2;
        if (global.facing==0)
            sprite_index=spr_jumpleft;
        else
            sprite_index=spr_jump;
        }
    }
//Pain from armordrop
if (global.armor<1 && !vortexkilled){
    global.hp-=1;
    script_execute(scr_pain);
    }
//Dusty block
if (place_meeting(x,y+1,obj_dustyblock)){
    if ((sprite_index==spr_runleft || sprite_index==spr_run) && (image_index==1 || image_index==5))
        instance_create(x+7,y+57,obj_smoke);
    }

}
//Visioncheck
if (overload!=3 && global.sector!=13 && global.sector!=14 && global.sector!=15 && room!=rom_sectorz && (!global.truce || specialtruce)){
    if (sprite_index!=spr_hitfloor && sprite_index!=spr_hitfloorleft)
        visioncheck+=1;
    }
if (visioncheck==4){
    visionadjust=0;
    if (sprite_index=spr_duck || sprite_index==spr_duckleft)
        visionadjust=20;
    if (sprite_index=spr_tasenshredder_basiciji || sprite_index==spr_tasenshredder_basicijileft)
        visionadjust=-30;
    tempid=instance_create(x+6,y+15+visionadjust,obj_visioncheck)
    tempid.direction=0;
    tempid.speed=16;
    tempid=instance_create(x+6,y+15+visionadjust,obj_visioncheck)
    tempid.direction=-20+random(40);
    tempid.speed=16;
    tempid=instance_create(x+6,y+15+visionadjust,obj_visioncheck)
    tempid.direction=180;
    tempid.speed=16;
    tempid=instance_create(x+6,y+15+visionadjust,obj_visioncheck)
    tempid.direction=160+random(40);
    tempid.speed=16;
    visioncheck=0;
    }
}
