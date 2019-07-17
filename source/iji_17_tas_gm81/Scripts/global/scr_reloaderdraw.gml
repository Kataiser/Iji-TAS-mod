//Reloader stuff
if (obj_iji.alarm[2]>0 && obj_iji.reloader<200){
    draw_set_color(c_navy);
    draw_rectangle(x,y,x+floor(116/obj_iji.reloader*obj_iji.alarm[2]),y+9,0);
    
    draw_set_color(c_navy);
    //Draw Iji's personal reloader
    xoffset=0;
    yoffset=0;
    if (obj_iji.sprite_index==spr_tasenshredder_basiciji || obj_iji.sprite_index==spr_tasenshredder_basicijileft){
        xoffset=0;
        yoffset=-30;
        }
    else if (obj_iji.sprite_index==spr_tasenshredder_geton || obj_iji.sprite_index==spr_tasenshredder_getonleft){
        xoffset=0;
        yoffset=-30;
        }
    else if (obj_iji.sprite_index==spr_climb){
        xoffset=-12+ceil(obj_iji.image_index*2);
        yoffset=30-ceil(obj_iji.image_index);
        }
    else if (obj_iji.sprite_index==spr_climbleft){
        xoffset=12-ceil(obj_iji.image_index*2);
        yoffset=30-ceil(obj_iji.image_index);
        }
    else if (obj_iji.sprite_index==spr_getup || obj_iji.sprite_index==spr_getupleft){
        yoffset=30-ceil(obj_iji.image_index*2.307);
        }
    else if (obj_iji.sprite_index==spr_duck || obj_iji.sprite_index==spr_duckleft){
        if (obj_iji.image_index>=2.5 || obj_iji.image_single>=2)
            yoffset=24;
        else
            yoffset=ceil(obj_iji.image_index*8);
        }    
    else if (obj_iji.sprite_index==spr_standup || obj_iji.sprite_index==spr_standupleft){
        yoffset=16-ceil(obj_iji.image_index*8);
        }    
    draw_line(obj_iji.x+xoffset-2,obj_iji.y-4+yoffset,obj_iji.x+xoffset-2+20,obj_iji.y-4+yoffset);
    draw_set_color(c_white);
    draw_line(obj_iji.x+xoffset-2,obj_iji.y-4+yoffset,obj_iji.x+xoffset-2+(20/obj_iji.reloader*obj_iji.alarm[2]),obj_iji.y-4+yoffset);
    }

//Nanoweapon station
if (global.weapstation==1 || global.weapstation==2){
    if (wsblinkprev!=global.weappoke)
        wsblinkcyc=2;
    wsblinkprev=global.weappoke;
    wsblinkcyc+=1;
    if (wsblinkcyc==3)
        wsblink=1;
    if (wsblinkcyc>=7){
        wsblink=0;
        wsblinkcyc=0;
        }
    //defaults
    if (!global.weapon9)
        draw_sprite(spr_weapon1,0,obj_weapon1.x,obj_weapon1.y);
    else
        draw_sprite(spr_weapon1,2,obj_weapon1.x,obj_weapon1.y);
    if (!global.weapon10)
        draw_sprite(spr_weapon2,0,obj_weapon2.x,obj_weapon2.y);
    else
        draw_sprite(spr_weapon2,2,obj_weapon2.x,obj_weapon2.y);
    if (!global.weapon11)
        draw_sprite(spr_weapon3,0,obj_weapon3.x,obj_weapon3.y);
    else
        draw_sprite(spr_weapon3,2,obj_weapon3.x,obj_weapon3.y);
    if (!global.weapon12)
        draw_sprite(spr_weapon4,0,obj_weapon4.x,obj_weapon4.y);
    else
        draw_sprite(spr_weapon4,2,obj_weapon4.x,obj_weapon4.y);
    if (!global.weapon13)
        draw_sprite(spr_weapon5,0,obj_weapon5.x,obj_weapon5.y);
    else
        draw_sprite(spr_weapon5,2,obj_weapon5.x,obj_weapon5.y);
    if (!global.weapon14)
        draw_sprite(spr_weapon6,0,obj_weapon6.x,obj_weapon6.y);
    else
        draw_sprite(spr_weapon6,2,obj_weapon6.x,obj_weapon6.y);
    if (!global.weapon15)
        draw_sprite(spr_weapon7,0,obj_weapon7.x,obj_weapon7.y);
    else
        draw_sprite(spr_weapon7,2,obj_weapon7.x,obj_weapon7.y);
    if (!global.weapon16)
        draw_sprite(spr_weapon8,0,obj_weapon8.x,obj_weapon8.y);
    else
        draw_sprite(spr_weapon8,2,obj_weapon8.x,obj_weapon8.y);
    //blink on
    if (wsblink){
        if (global.weappoke==1){
            if (global.tempwsweap1==1 && global.weapstation==2){
                if (!global.weapon9)
                    draw_sprite(spr_weapon1,5,obj_weapon1.x,obj_weapon1.y);
                else
                    draw_sprite(spr_weapon1,6,obj_weapon1.x,obj_weapon1.y);
                }
            else{
                if (!global.weapon9)
                    draw_sprite(spr_weapon1,1,obj_weapon1.x,obj_weapon1.y);
                else
                    draw_sprite(spr_weapon1,3,obj_weapon1.x,obj_weapon1.y);
                }
            }
        if (global.weapon2 && global.weappoke==2){
            if (global.tempwsweap1==2 && global.weapstation==2){
                if (!global.weapon10)
                    draw_sprite(spr_weapon2,5,obj_weapon2.x,obj_weapon2.y);
                else
                    draw_sprite(spr_weapon2,6,obj_weapon2.x,obj_weapon2.y);
                }
            else{
                if (!global.weapon10)
                    draw_sprite(spr_weapon2,1,obj_weapon2.x,obj_weapon2.y);
                else
                    draw_sprite(spr_weapon2,3,obj_weapon2.x,obj_weapon2.y);
                }
            }
        if (global.weapon3 && global.weappoke==3){
            if (global.tempwsweap1==3 && global.weapstation==2){
                if (!global.weapon11)
                    draw_sprite(spr_weapon3,5,obj_weapon3.x,obj_weapon3.y);
                else
                    draw_sprite(spr_weapon3,6,obj_weapon3.x,obj_weapon3.y);
                }
            else{
                if (!global.weapon11)
                    draw_sprite(spr_weapon3,1,obj_weapon3.x,obj_weapon3.y);
                else
                    draw_sprite(spr_weapon3,3,obj_weapon3.x,obj_weapon3.y);
                }
            }
        if (global.weapon4 && global.weappoke==4){
            if (global.tempwsweap1==4 && global.weapstation==2){
                if (!global.weapon12)
                    draw_sprite(spr_weapon4,5,obj_weapon4.x,obj_weapon4.y);
                else
                    draw_sprite(spr_weapon4,6,obj_weapon4.x,obj_weapon4.y);
                }
            else{
                if (!global.weapon12)
                    draw_sprite(spr_weapon4,1,obj_weapon4.x,obj_weapon4.y);
                else
                    draw_sprite(spr_weapon4,3,obj_weapon4.x,obj_weapon4.y);
                }
            }
        if (global.weapon5 && global.weappoke==5){
            if (global.tempwsweap1==5 && global.weapstation==2){
                if (!global.weapon13)
                    draw_sprite(spr_weapon5,5,obj_weapon5.x,obj_weapon5.y);
                else
                    draw_sprite(spr_weapon5,6,obj_weapon5.x,obj_weapon5.y);
                }
            else{
                if (!global.weapon13)
                    draw_sprite(spr_weapon5,1,obj_weapon5.x,obj_weapon5.y);
                else
                    draw_sprite(spr_weapon5,3,obj_weapon5.x,obj_weapon5.y);
                }
            }
        if (global.weapon6 && global.weappoke==6){
            if (global.tempwsweap1==6 && global.weapstation==2){
                if (!global.weapon14)
                    draw_sprite(spr_weapon6,5,obj_weapon6.x,obj_weapon6.y);
                else
                    draw_sprite(spr_weapon6,6,obj_weapon6.x,obj_weapon6.y);
                }
            else{
                if (!global.weapon14)
                    draw_sprite(spr_weapon6,1,obj_weapon6.x,obj_weapon6.y);
                else
                    draw_sprite(spr_weapon6,3,obj_weapon6.x,obj_weapon6.y);
                }
            }
        if (global.weapon7 && global.weappoke==7){
            if (global.tempwsweap1==7 && global.weapstation==2){
                if (!global.weapon15)
                    draw_sprite(spr_weapon7,5,obj_weapon7.x,obj_weapon7.y);
                else
                    draw_sprite(spr_weapon7,6,obj_weapon7.x,obj_weapon7.y);
                }
            else{
                if (!global.weapon15)
                    draw_sprite(spr_weapon7,1,obj_weapon7.x,obj_weapon7.y);
                else
                    draw_sprite(spr_weapon7,3,obj_weapon7.x,obj_weapon7.y);
                }
            }
        if (global.weapon8 && global.weappoke==8){
            if (global.tempwsweap1==8 && global.weapstation==2){
                if (!global.weapon16)
                    draw_sprite(spr_weapon8,5,obj_weapon8.x,obj_weapon8.y);
                else
                    draw_sprite(spr_weapon8,6,obj_weapon8.x,obj_weapon8.y);
                }
            else{
                if (!global.weapon16)
                    draw_sprite(spr_weapon8,1,obj_weapon8.x,obj_weapon8.y);
                else
                    draw_sprite(spr_weapon8,3,obj_weapon8.x,obj_weapon8.y);
                }
            }
        }
    }
else
    wsrectcyc=0;


//Passive HUD
if (global.passive){
    if (passivecyc<4)
        passivecyc+=1;
    }
else if (passivecyc>0)
    passivecyc-=1;
if (passivecyc>0){
    passiveyoff=(4-passivecyc)*20;
    //HUD
    draw_sprite(spr_passivehud,0,obj_hud.x,obj_hud.y+passiveyoff);
    //Reloader on HUD
    if (obj_iji.alarm[2]>0 && obj_iji.reloader<200){
        draw_set_color(c_navy);
        draw_rectangle(x,y+passiveyoff,x+floor(116/obj_iji.reloader*obj_iji.alarm[2]),y+9+passiveyoff,0);
        }
    //Weapon name
    draw_sprite(spr_weapons,global.weapon+18,obj_hud.x+505-488,obj_hud.y+29+passiveyoff);

    //Weapons
    if (global.weapon==1)
        draw_sprite(spr_passiveweapons,8,obj_weapon1.x,obj_weapon1.y+passiveyoff);
    else
        draw_sprite(spr_passiveweapons,0,obj_weapon1.x,obj_weapon1.y+passiveyoff);
    if (global.weapon==2)
        draw_sprite(spr_passiveweapons,9,obj_weapon2.x,obj_weapon2.y+passiveyoff);
    else if (global.weapon2)
        draw_sprite(spr_passiveweapons,1,obj_weapon2.x,obj_weapon2.y+passiveyoff);
    if (global.weapon==3)
        draw_sprite(spr_passiveweapons,10,obj_weapon3.x,obj_weapon3.y+passiveyoff);
    else if (global.weapon3)
        draw_sprite(spr_passiveweapons,2,obj_weapon3.x,obj_weapon3.y+passiveyoff);
    if (global.weapon==4)
        draw_sprite(spr_passiveweapons,11,obj_weapon4.x,obj_weapon4.y+passiveyoff);
    else if (global.weapon4)
        draw_sprite(spr_passiveweapons,3,obj_weapon4.x,obj_weapon4.y+passiveyoff);
    if (global.weapon==5)
        draw_sprite(spr_passiveweapons,12,obj_weapon5.x,obj_weapon5.y+passiveyoff);
    else if (global.weapon5)
        draw_sprite(spr_passiveweapons,4,obj_weapon5.x,obj_weapon5.y+passiveyoff);
    if (global.weapon==6)
        draw_sprite(spr_passiveweapons,13,obj_weapon6.x,obj_weapon6.y+passiveyoff);
    else if (global.weapon6)
        draw_sprite(spr_passiveweapons,5,obj_weapon6.x,obj_weapon6.y+passiveyoff);
    if (global.weapon==7)
        draw_sprite(spr_passiveweapons,14,obj_weapon7.x,obj_weapon7.y+passiveyoff);
    else if (global.weapon7)
        draw_sprite(spr_passiveweapons,6,obj_weapon7.x,obj_weapon7.y+passiveyoff);
    if (global.weapon==8)
        draw_sprite(spr_passiveweapons,15,obj_weapon8.x,obj_weapon8.y+passiveyoff);
    else if (global.weapon8)
        draw_sprite(spr_passiveweapons,7,obj_weapon8.x,obj_weapon8.y+passiveyoff);
    
    //Ammo
    if (global.weapon2){
        draw_sprite(spr_numbersg,floor((global.ammo2/10)) mod 10,obj_hud.x+688-488,obj_hud.y+26+passiveyoff);
        draw_sprite(spr_numbersg,global.ammo2 mod 10,obj_hud.x+696-488,obj_hud.y+26+passiveyoff);
        }
    if (global.weapon3){
        draw_sprite(spr_numbersg,floor((global.ammo3/10)) mod 10,obj_hud.x+728-488,obj_hud.y+26+passiveyoff);
        draw_sprite(spr_numbersg,global.ammo3 mod 10,obj_hud.x+736-488,obj_hud.y+26+passiveyoff);
        }
    if (global.weapon4){
        draw_sprite(spr_numbersg,floor((global.ammo4/10)) mod 10,obj_hud.x+768-488,obj_hud.y+26+passiveyoff);
        draw_sprite(spr_numbersg,global.ammo4 mod 10,obj_hud.x+776-488,obj_hud.y+26+passiveyoff);
        }
    if (global.weapon6){
        draw_sprite(spr_numbersg,floor((global.ammo6/10)) mod 10,obj_hud.x+688-488,obj_hud.y+58+passiveyoff);
        draw_sprite(spr_numbersg,global.ammo6 mod 10,obj_hud.x+696-488,obj_hud.y+58+passiveyoff);
        }
    if (global.weapon7){
        draw_sprite(spr_numbersg,floor((global.ammo7/10)) mod 10,obj_hud.x+728-488,obj_hud.y+58+passiveyoff);
        draw_sprite(spr_numbersg,global.ammo7 mod 10,obj_hud.x+736-488,obj_hud.y+58+passiveyoff);
        }
    if (global.weapon8){
        draw_sprite(spr_numbersg,floor((global.ammo8/10)) mod 10,obj_hud.x+768-488,obj_hud.y+58+passiveyoff);
        draw_sprite(spr_numbersg,global.ammo8 mod 10,obj_hud.x+776-488,obj_hud.y+58+passiveyoff);
        }
    }
