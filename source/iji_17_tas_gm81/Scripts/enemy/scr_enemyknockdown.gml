//Enemy knockdown
//Argument0 is precalculated knockdowntype
// 1 = left
// 2 = right
//Argument1 is a precalculated force
//Argument2 is impulse explosion

if (hp<=0 && !killawarded && argument2==0){
    if (ijikill){
        if (obj_iji.usingougi>0)
            killtype=9;
        global.kills+=1;
        global.killdata[killdataid]=killtype;
        }
    killawarded=1;
    }
if (hp<=0 && specialtriggerb2)
    global.specialtriggerb2=1;
if (place_free(x,y-6))
    y-=6;
if (argument1==0){
    velocity=2*(global.strengthlevel-resistance)+4;
    if (velocity>12){
        velocity=12;
        }
    speed=2*(global.strengthlevel-resistance)+10;
    if (speed>18){
        speed=18;
        }
    if (argument0==0)
        knockdowntype=global.facing+1;
    else
        knockdowntype=argument0;
    }
else{
    knockdowntype=argument0;
    velocity=argument1-(resistance/2);
    if (velocity>22)
        velocity=22;
    if (velocity<1)
        velocity=1;
    speed=(argument1+6)-(resistance/2);
    if (speed>22)
        speed=22;
    }
if (knockdowntype==1){
    facing=1;
    if (enemytype==0)
        sprite_index=spr_tasenscout_knockdown;
    if (enemytype==1)
        sprite_index=spr_tasensoldier_knockdown;
    if (enemytype==2)
        sprite_index=spr_tasencommander_knockdown;
    if (enemytype==10)
        sprite_index=spr_komatotrooper_knockdown;
    if (enemytype==11)
        sprite_index=spr_komatoberserker_knockdown;
    }
else{
    facing=0;
    if (enemytype==0)
        sprite_index=spr_tasenscout_knockdownleft;
    if (enemytype==1)
        sprite_index=spr_tasensoldier_knockdownleft;
    if (enemytype==2)
        sprite_index=spr_tasencommander_knockdownleft;
    if (enemytype==10)
        sprite_index=spr_komatotrooper_knockdownleft;
    if (enemytype==11)
        sprite_index=spr_komatoberserker_knockdownleft;
    }
move_outside_solid(90,32);

if (argument2==0){
    if (enemytype<10){
        repeat(3)
            instance_create(bbox_left+((bbox_right-bbox_left)/2),bbox_top+((bbox_bottom-bbox_top)/2),obj_tasenbloodspecial);
        armor=100;
        }
    else{
        repeat(3)
            instance_create(bbox_left+((bbox_right-bbox_left)/2),bbox_top+((bbox_bottom-bbox_top)/2),obj_komatobloodspecial);
        armor=200;
        }
    }
takingpain=1;
state=4;
direction=90;
image_index=0;
image_single=-1;
image_speed=0.5;
alarm[1]=0;
alarm[2]=0;
alarm[4]=0;
alarm[5]=300;
alarm[6]=0;
alarm[7]=0;
angry=1;
firingrocket=0;
swiping=0;
velocity=round(velocity);
speed=round(speed);