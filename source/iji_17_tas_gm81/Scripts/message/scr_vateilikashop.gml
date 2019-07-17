//Payment
if (global.xp<8)
    payment=0;
else
    payment=1;
//Refill health
if (global.hp<global.healthlevel*2){
    wanthp=1;
    if (payment)
        global.hp=global.healthlevel*2;
    }
else
    wanthp=0;
//Refill ammo
if (global.ammo2<global.assimilatebase+global.assimilatesize || global.ammo3<global.assimilatebase+global.assimilatesize || global.ammo4<global.assimilatebase+global.assimilatesize || global.ammo7<global.assimilatebase+global.assimilatesize || global.ammo8<global.assimilatebase+global.assimilatesize){
    wantammo=1;
    if (payment){
        if (global.ammo2<global.assimilatebase+global.assimilatesize) global.ammo2=global.assimilatebase+global.assimilatesize;
        if (global.ammo3<global.assimilatebase+global.assimilatesize) global.ammo3=global.assimilatebase+global.assimilatesize;
        if (global.ammo4<global.assimilatebase+global.assimilatesize) global.ammo4=global.assimilatebase+global.assimilatesize;
        if (global.ammo7<global.assimilatebase+global.assimilatesize) global.ammo7=global.assimilatebase+global.assimilatesize;
        if (global.ammo8<global.assimilatebase+global.assimilatesize) global.ammo8=global.assimilatebase+global.assimilatesize;
        }
    }
else
    wantammo=0;

//I want something
if (wanthp || wantammo){
    if (!payment){
        text[0]="VATEILIKA: Hey, you need at least 8 Nano to trade. Would be horrible if I asked for so much Nano that your Level decreased, now wouldn't it? I tried that once, guy broke my tibia bone. Never again, no thanks.";
        obj_sec7vateilika.nag=0;
        scr_sound("glo_crackfail");
        if (obj_sec7vateilika.x<obj_iji.x){
            obj_sec7vateilika.sprite_index=spr_tasensoldier_basic;
            obj_sec7vateilika.facing=1;
            }
        else{
            obj_sec7vateilika.sprite_index=spr_tasensoldier_basicleft;
            obj_sec7vateilika.facing=0;
            }
        exit;
        }
    else
        global.xp-=8;
    }

//Texts
if (wanthp && wantammo && payment){
    text[0]="VATEILIKA: Alright, I've filled up your Health and given you some ammo for all your weapons, except for the Pulse ammo. That'll be 8 Nano. Sounds fair to me!";
    scr_sound("glo_pickup2");
    with (obj_iji)
        scr_pickupflash(6,15,5);
    obj_sec7vateilika.nag=0;
    }
else if (wanthp && !wantammo && payment){
    text[0]="VATEILIKA: There, now you're at full Health for only 8 Nano. You already seem to have a ton of ammo though, so I'm keeping the rest to myself.";
    scr_sound("glo_pickup2");
    with (obj_iji)
        scr_pickupflash(6,15,5);
    obj_sec7vateilika.nag=0;
    }
else if (!wanthp && wantammo && payment){
    text[0]="VATEILIKA: You looked a bit dry, so I filled your weapons with up to "+string(global.assimilatebase+global.assimilatesize)+" ammo each, for the low, low cost of only 8 Nano. Sorry 'bout the lack of Pulse ammo though.";
    scr_sound("glo_pickup2");
    with (obj_iji)
        scr_pickupflash(6,15,5);
    obj_sec7vateilika.nag=0;
    }
else{
    scr_sound("glo_crackfail");
    if (obj_sec7vateilika.nag==0)
        text[0]="VATEILIKA: Come on, you're full of Health and have plenty of ammo. Don't poke me like that if you ain't gonna trade!";
    if (obj_sec7vateilika.nag==1)
        text[0]="VATEILIKA: Hey! I told you, I'm keeping the rest of this stuff for myself unless you're low on either Health or ammo.";
    if (obj_sec7vateilika.nag==2)
        text[0]="VATEILIKA: Do you mind? I'm not the type who likes to be touched, you got me?";
    if (obj_sec7vateilika.nag==3)
        text[0]="VATEILIKA: Seriously! Cut it out! Yukabacera used to do the same thing, you know why I broke up with him starturns ago?";
    if (obj_sec7vateilika.nag==4)
        text[0]="VATEILIKA: It's because he was annoying as Zentraidon and way too pushy! Didn't know when to quit! Thought it was funny to poke someone's shoulder until they exploded! THAT'S WHY!";
    if (obj_sec7vateilika.nag==5)
        text[0]="VATEILIKA: La la la| I'm ignoring you| hm hm hmmm|";
    if (obj_sec7vateilika.nag==6)
        text[0]="VATEILIKA: `With our war machines| gonna tear ya up| but they know it's wrong| so they turn on us| welcome to Ciretako, aw yeah|` mmm hmmm|";
    if (obj_sec7vateilika.nag==7)
        text[0]="VATEILIKA: Alright, I give up. `HERO CORE`. There, you happy now? Something Yuka was planning, thought you'd be interested.";
    if (obj_sec7vateilika.nag>=8){
        text[0]="VATEILIKA: By the way, if you ever play that game, I heard there are three difficulty levels. The first two have 190 rooms and 11 bosses, the third difficulty has 51 rooms and a secret boss|";
        obj_sec7vateilika.nag=-1;
        }
    obj_sec7vateilika.nag+=1;
    }

with (obj_sec7vateilika){
    if (nag<6 || nag>7){
        if (x<obj_iji.x){
            sprite_index=spr_tasensoldier_basic;
            facing=1;
            }
        else{
            sprite_index=spr_tasensoldier_basicleft;
            facing=0;
            }
        }
    else{
        if (x>obj_iji.x){
            sprite_index=spr_tasensoldier_basic;
            facing=1;
            }
        else{
            sprite_index=spr_tasensoldier_basicleft;
            facing=0;
            }
        }
    }