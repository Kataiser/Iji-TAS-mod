if (weapon!=0 && weapon!=5){
    if (weapon==3 || weapon==6){
        scr_sound("tor_gather");
        }
    else
        scr_sound("wea_charge");
    if (facing==0)
        (instance_create(x-4,y+20,obj_chargetell)).tempid=id;
    else
        (instance_create(x+36,y+20,obj_chargetell)).tempid=id;
    }