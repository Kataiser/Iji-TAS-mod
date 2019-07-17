//CFIS fire
while (stuck == 0 && distance < 288){
distance += 12;
if (global.enemycfistemp == 0){
    if (place_free(x-12, y) && !place_meeting(x-12,y,obj_screen) && !place_meeting(x-12,y,obj_leetbox)){
        x-=12;
        script_execute(scr_enemycfisattack);
        }
    else{
        stuck = 1;
        move_contact_solid(180,12);
        }
    }
if (global.enemycfistemp == 1){
    if (place_free(x+12, y) && !place_meeting(x+12,y,obj_screen) && !place_meeting(x+12,y,obj_leetbox)){
        x+=12;
        script_execute(scr_enemycfisattack);
        }
    else{
        stuck = 1;
        move_contact_solid(0,12);
        }
    }
}