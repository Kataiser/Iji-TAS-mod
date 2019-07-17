//argument0 is dir
//0 = random
//1 = left
//2 = right

if (!global.noblood && global.hp<=0 && overload!=6 && obj_checkpoint.state!=1 && room!=rom_sector12){
    repeat(2){
        stainorigx=bbox_left+(bbox_right-bbox_left)/2;
        stainorigy=bbox_top+(bbox_bottom-bbox_top)/2-16;
        stainfacing=floor(random(2));
        if (argument0==1)
            stainfacing=1;
        else if (argument0==2)
            stainfacing=0;
        stainimg=floor(random(2));
        staindir=-30+random(60)+stainfacing*180;
        staindist=16+random(48);
        stainfinalx=stainorigx+cos(degtorad(staindir))*staindist;
        stainfinaly=stainorigy-sin(degtorad(staindir))*staindist;
        stainfinalx2=stainorigx+cos(degtorad(staindir))*staindist/2;
        stainfinaly2=stainorigy-sin(degtorad(staindir))*staindist/2;
        
        stainid=instance_create(stainfinalx,stainfinaly,obj_redstain);
        stainid.checkx=stainfinalx2;
        stainid.checky=stainfinaly2;
        if (staindir<6 || staindir>=354)
            stainid.image_single=7;
        else if (staindir>=342)
            stainid.image_single=8;
        else if (staindir>=330-5)
            stainid.image_single=9;
        else if (staindir<18)
            stainid.image_single=6;
        else if (staindir<30+5)
            stainid.image_single=5;
        
        else if (staindir>=198)
            stainid.image_single=4;
        else if (staindir>=186)
            stainid.image_single=3;
        else if (staindir>=174)
            stainid.image_single=2;
        else if (staindir>=162)
            stainid.image_single=1;
        else
            stainid.image_single=0;
        
        stainid.image_single+=stainimg*10;
        
        with (stainid){
            if (!place_free(x,y) || !place_free(checkx,checky))
                instance_destroy();
            }   
        }
    }