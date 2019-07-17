if (shredder){
    if (global.facing==0){
        if (global.weapon==8)
            xadjust=-30;
        else if (global.weapon==5 || global.weapon==13)
            xadjust=-30;
        else
            xadjust=-30+hspeed;
        yadjust=-25+vspeed;
        shredderadjust=-30;
        }
    else{
        if (global.weapon==8)
            xadjust=22;
        else if (global.weapon==5 || global.weapon==13)
            xadjust=22;
        else
            xadjust=22+hspeed;
        yadjust=-25+vspeed;
        shredderadjust=-30;
        }
    }

else{
    shredderadjust=0;
    if (global.state==2){
        alarm[4]=4;
        xadjust=0;
        if (global.weapon==8){
            yadjust=14;
            shredderadjust=14;
            }
        else{
            if (!place_free(x,y-abs(vspeed)-4)){
                yadjust=14;
                shredderadjust=14;
                }
            else{
                yadjust=14+vspeed;
                shredderadjust=14+vspeed;
                }
            }
        }
    else if (global.state==3 || global.state==5){
        alarm[4]=4;
        xadjust=0;
        yadjust=30;
        shredderadjust=30;
        }
    else if (global.state==1){
        if (running==0){
            if (global.facing==0)
                sprite_index=spr_fireleft;
            else
                sprite_index=spr_fire;
            alarm[4]=4;
            xadjust=0;
            yadjust=0;
            }
        if (running==1){
            if (global.facing==0){
                sprite_index=spr_runfireleft;
                xadjust=-15;
                }
            else{
                sprite_index=spr_runfire;
                xadjust=13;
                }
            alarm[4]=8;
            yadjust=4;
            }
        }
    }