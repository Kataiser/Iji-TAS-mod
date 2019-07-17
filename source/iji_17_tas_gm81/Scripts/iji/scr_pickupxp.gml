//Picks up nanofield
if (global.dead==0){
if (global.level<global.maxlevel){
    //Nano (blue)
    if (other.sprite_index==spr_xp1){
        pickupsound=1;
        global.xpcount+=2;
        global.countingnano+=2;
        scr_levelup();
        if (!global.noitemtext){
            global.topmessage="Nano +"+string(global.countingnano);
            if (global.level<global.maxlevel)
                global.topmessage+=" ("+string(global.xp)+"/"+string((global.level*(4+global.difficulty*4))+4)+")";
            }
        }
    else if (other.sprite_index==spr_xp2){
        pickupsound=1;
        global.xpcount+=4;
        global.countingnano+=4;
        scr_levelup();
        if (!global.noitemtext){
            global.topmessage="Nano +"+string(global.countingnano);
            if (global.level<global.maxlevel)
                global.topmessage+=" ("+string(global.xp)+"/"+string((global.level*(4+global.difficulty*4))+4)+")";
            }
        }
    else if (other.sprite_index==spr_xp3){
        pickupsound=1;
        global.xpcount+=8;
        global.countingnano+=8;
        scr_levelup();
        if (!global.noitemtext){
            global.topmessage="Nano +"+string(global.countingnano);
            if (global.level<global.maxlevel)
                global.topmessage+=" ("+string(global.xp)+"/"+string((global.level*(4+global.difficulty*4))+4)+")";
            }
        }
    else if (other.sprite_index==spr_xp4){
        pickupsound=1;
        global.xpcount+=16;
        global.countingnano+=16;
        scr_levelup();
        if (!global.noitemtext){
            global.topmessage="Nano +"+string(global.countingnano);
            if (global.level<global.maxlevel)
                global.topmessage+=" ("+string(global.xp)+"/"+string((global.level*(4+global.difficulty*4))+4)+")";
            }
        }
    }

//Health (red)
if (other.sprite_index==spr_pickuphealth){
    if (global.assimilatelevel<10){
        pickupsound=1;
        if (!global.noitemtext){
            if (global.difficulty==0)
                global.topmessage="HP +2";
            else
                global.topmessage="HP +1";
            }
        if ((global.difficulty==0 && global.hp>(global.healthlevel*2)-2) || (global.difficulty>0 && global.hp>(global.healthlevel*2)-1))
            global.armor=100;
        if (global.difficulty==0)
            global.hp+=2;
        else
            global.hp+=1;
        }
//Advanced recovery and health
    else{
        pickupsound=1;
        if (!global.noitemtext){
            if (global.difficulty==0)
                global.topmessage="HP +3";
            else
                global.topmessage="HP +2";
            }
        if ((global.difficulty==0 && global.hp>(global.healthlevel*2)-3) || (global.difficulty>0 && global.hp>(global.healthlevel*2)-2))
            global.armor=100;
        if (global.difficulty==0)
            global.hp+=3;
        else
            global.hp+=2;
        }
    if (global.hp>(global.healthlevel*2))
        global.hp=global.healthlevel*2;
    }
global.armor+=10*global.assimilatelevel;
if (global.armor>100){
    global.armor=100;
    }
//Armor, advanced recovery and armor
if (!global.noitemtext){
    if (global.level<global.maxlevel || other.sprite_index=spr_pickuphealth)
        global.topmessage+=", ";
    else if (global.level==global.maxlevel && (other.sprite_index==spr_xp1 || other.sprite_index==spr_xp2 || other.sprite_index==spr_xp3 || other.sprite_index==spr_xp4)){
        global.topmessage="Max Level, ";
        pickupsound=1;
        }
    else{
        global.topmessage="";
        pickupsound=1;
        }
    if (other.sprite_index==spr_pickuparmor){
        if (global.assimilatelevel<10){
            global.topmessage="";
        pickupsound=1;
            }
        else{
            global.hp+=1;
            if (global.hp>(global.healthlevel*2))
                global.hp=global.healthlevel*2;
            global.topmessage="HP +1, ";
            pickupsound=1;
            }
        }
    global.topmessage+=string(global.assimilatelevel*10);
    global.topmessage+="% armor repaired";
    global.erasetop=0;
    pickupsound=1;
    }
}

if (pickupsound)
    scr_sound("glo_pickup");