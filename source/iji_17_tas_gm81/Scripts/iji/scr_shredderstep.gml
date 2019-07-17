temphspeed=hspeed;
//Drive
if (keyboard_check(vk_left) && !goingright && !global.ignoreall){
    hspeed-=1.49;
    goingleft=1;
    global.facing=0;
    }
if (keyboard_check(vk_right) && !goingleft && !global.ignoreall){
    hspeed+=1.49;
    goingright=1;
    global.facing=1;
    }
if (!keyboard_check(vk_left))
    goingleft=0;
if (!keyboard_check(vk_right))
    goingright=0;

//Slow down
if (!goingleft && !goingright && !place_free(x,y+1)){
    if (hspeed<-1)
        hspeed+=0.4;
    if (hspeed>1)
        hspeed-=0.4;
    if (hspeed>=-1 && hspeed<=1)
        hspeed=0;
    }

//Limit speed
if (hspeed<-18)
    hspeed=-18;
if (hspeed>18)
    hspeed=18;


//Fall
if (place_free(x,y+1)){
    gravity=0.7;
    gravity_direction=270;
    if (place_free(x+hspeed,y+vspeed+2)){
        if (place_free(x+hspeed,y+vspeed-2)){
            donothing=1;
            }
        else if (place_free(x+hspeed,y+vspeed+12)){
            x-=hspeed;
            if (hspeed<0)
                move_contact_solid(180,32)
            else
                move_contact_solid(0,32)
            hspeed*=-0.5;
            if (abs(hspeed)<8)
                hspeed=0;
            }
        }
    else if (place_free(x+hspeed,y+vspeed+12)){
        x-=hspeed;
        if (hspeed<0)
            move_contact_solid(180,32)
        else
            move_contact_solid(0,32)
        hspeed*=-0.5;
        if (abs(hspeed)<8)
            hspeed=0;
        }
    }
if (vspeed>18)
    vspeed=18;

//Travel up slopes
if (hspeed<0 && place_meeting(x+hspeed-2,y+1,obj_sloper) && place_free(x+hspeed-2,y-24)){
    y-=10;
    move_contact_solid(270,32);
    }
else if (hspeed>0 && place_meeting(x+hspeed+2,y+1,obj_slopel) && place_free(x+hspeed+2,y-24)){
    y-=10;
    move_contact_solid(270,32);
    }

//Travel down slopes
else if (hspeed<0 && place_meeting(x,y+16,obj_slopel)){
    move_contact_solid(270,32);
    vspeed=0;
    gravity=0;
    }
else if (hspeed>0 && place_meeting(x,y+16,obj_sloper)){
    move_contact_solid(270,32);
    vspeed=0;
    gravity=0;
    }

//Bounce on walls
else if (hspeed<0 && !place_free(x+hspeed-2,y)){
    if (!place_meeting(x+hspeed-8,y,obj_meta) && !place_meeting(x+hspeed-8,y,obj_door) && !place_meeting(x+hspeed-8,y,obj_glass)){
        hspeed*=-0.5;
        if (hspeed<8){
            move_contact_solid(180,32)
            hspeed=0;
            }
        else
            scr_sound("glo_land");
        }
    }
else if (hspeed>0 && !place_free(x+hspeed+2,y)){
    if (!place_meeting(x+hspeed+8,y,obj_meta) && !place_meeting(x+hspeed+8,y,obj_door) && !place_meeting(x+hspeed+8,y,obj_glass)){
        hspeed*=-0.5;
        if (hspeed>-8){
            move_contact_solid(0,32)
            hspeed=0;
            }
        else
            scr_sound("glo_land");
        }
    }

//Land
if (hspeed==0 && !place_free(x,y+vspeed+2)){
    vspeed=0;
    gravity=0;
    move_contact_solid(270,32);
    }
if (vspeed>0){
    if (hspeed<0){
        if (!place_free(x+hspeed-2,y)){
            hspeed=0;
            move_contact_solid(180,32);
            }
        if (!place_free(x,y+vspeed+2)){
            vspeed=0;
            gravity=0;
            move_contact_solid(270,32);
            }
        }
    if (hspeed>0){
        if (!place_free(x+hspeed+2,y)){
            hspeed=0;
            move_contact_solid(0,32);
            }
        if (!place_free(x,y+vspeed+2)){
            vspeed=0;
            gravity=0;
            move_contact_solid(270,32);
            }
        }
    }


//Jump
if(hspeed<-10 && !place_meeting(x-140,y,obj_sloper) && place_meeting(x-46,y+4,obj_sloper))
    vspeed=-abs(hspeed)/2;
if(hspeed>10 && !place_meeting(x+140,y,obj_slopel) && place_meeting(x+46,y+4,obj_slopel))
    vspeed=-abs(hspeed)/2;
    
//Animate
if (global.facing==0 && image_index>=7 && sprite_index==spr_tasenshredder_basiciji){
    image_index=0;
    sprite_index=spr_tasenshredder_basicijileft;
    }
if (global.facing==1 && image_index>=7 && sprite_index==spr_tasenshredder_basicijileft){
    image_index=0;
    sprite_index=spr_tasenshredder_basiciji;
    }

//Stop animations
if (image_index>7)
    image_index=7;

//Fix
if (place_meeting(x,y+16,obj_slopel) || place_meeting(x,y+16,obj_sloper)){
if ((hspeed<1 && temphspeed>4) || (hspeed>-1 && temphspeed<-4))
        hspeed=temphspeed;
    }
if (place_meeting(x,y,obj_block) && !place_meeting(x,y,obj_meta)){
    if (place_free(x-4,y))
        x-=4;
    else if (place_free(x+4,y))
        x+=4;
    else if (place_free(y+5,y))
        y+=5;
    move_outside_solid(90,32);
    }

//Shredder damaged
if (shredderhp<500)
    ssmokecyc+=1;
if (shredderhp<250)
    ssmokecyc+=2;
if (ssmokecyc>=10){
    ssmokecyc=0;
    instance_create(x-40+random(80),y-20+random(40),obj_bigsmoke);
    }
