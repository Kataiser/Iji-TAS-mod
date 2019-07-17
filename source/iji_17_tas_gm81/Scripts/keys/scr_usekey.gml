//Use
if (!place_meeting(x,y,obj_end)){
if (!global.ignoreall && !shredder && !place_meeting(x,y,obj_emptyshredder)){
    lookingaround=0;
    if (global.state==1){
        if (!place_free(x,y+4)){
            if (place_free(x,y+1))
                move_contact_solid(270,-1);
            image_index=0;
            global.state=5;
            switchingpose=1;
            goingright=0;
            goingleft=0;
            running=0;
            alarm[1]=12;
            if (global.facing==0)
                sprite_index=spr_pushbuttonleft;
            if (global.facing==1)
                sprite_index=spr_pushbutton;
            }
        }
    }

//Reboot
if (!global.ignoreall && !shredder && !place_meeting(x,y,obj_emptyshredder) && !takingpain && !recovering){
if (sprite_index==spr_duck || sprite_index==spr_duckleft){
    rebootcyc+=1;
    }
}
}

tech=1;