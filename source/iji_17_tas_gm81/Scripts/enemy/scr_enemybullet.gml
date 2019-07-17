//Enemybullet
if (room==rom_sector11)
    obj_sabot.machtot+=2;
else
    obj_sabot.machtot+=3;
hit=0;
lifespan=0;
while (hit==0 && lifespan<100){
    //Make airsparks
    temprand=random(1);
    if (temprand<0.1)
        instance_create(x,y,obj_airspark);
    //Spread bullets
    scr_storeseed();
    y=(y-12+random(24));
    scr_restoreseed();

    lifespan=lifespan+2.4;
    if (argument0==0){
        if (place_meeting(x-12,y,obj_iji)==0 && place_meeting(x-12,y,obj_block)==0 && place_meeting(x-12,y,obj_glass)==0 && place_meeting(x-12,y,obj_komatoenemy)==0 && place_meeting(x-12,y,obj_shockbarrier)==0){
            x=x-12;
            }
        else{
            x=x-12;
            hit=1;
            }
    }
    if (argument0==1){
        if (place_meeting(x+12,y,obj_iji)==0 && place_meeting(x+12,y,obj_block)==0 && place_meeting(x+12,y,obj_glass)==0 && place_meeting(x+12,y,obj_komatoenemy)==0 && place_meeting(x+12,y,obj_shockbarrier)==0){
        x=x+12;
        }
    else{
        x=x+12;
        hit=1;
        }
    }
}
