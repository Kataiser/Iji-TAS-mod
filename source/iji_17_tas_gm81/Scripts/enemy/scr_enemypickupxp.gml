//Enemy picks up nanofield
if (hp>0){
    if (other.sprite_index==spr_pickuphealth){
        if (hp<maxhp){
            scouring=0;
            hp+=1;
            scouring=0;
            if (hp>maxhp)
                hp=maxhp;
            /*
            if (enemytype<=9)
                armor=100;
            if (enemytype>=10){
                armor=200;
                if (global.suddendeath)
                    armor=100;
                }
            */
            global.tempid=id;    
            with (other){
                script_execute(scr_pickupflash,0,0,3,global.tempid);
                instance_destroy();
                }
            }
        }
    else if (armor<maxarmor/2){
        armor=maxarmor;
        global.tempid=id;    
        with (other){
            if (sprite_index==spr_xp1)
                script_execute(scr_pickupflash,0,0,1,global.tempid);
            if (sprite_index==spr_xp2)
                script_execute(scr_pickupflash,0,0,2,global.tempid);
            if (sprite_index==spr_xp3)
                script_execute(scr_pickupflash,0,0,3,global.tempid);
            if (sprite_index==spr_xp4)
                script_execute(scr_pickupflash,0,0,4,global.tempid);
            if (sprite_index==spr_pickuparmor)
                script_execute(scr_pickupflash,0,0,3,global.tempid);
            instance_destroy();
            }
        }
    }