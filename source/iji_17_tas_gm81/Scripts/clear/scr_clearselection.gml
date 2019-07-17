if (!ignoreall){
//Init
if ((ready==1 || ready==2)){
    if (global.sector==1 || global.sswarp || global.wty){
        ignoreall=1;
        instance_create(0,0,obj_endtransition);
        alarm[1]=14;
        scr_sound("glo_menuselect");
        }
    else if (ready==1){
        if (global.sector==2){
            ready=3;
            tier=2;
            selected=1;
            selections=4;
            instance_create(332,248,obj_marker);
            scr_sound("glo_menuselect");
            }
        else{
            ready=2;
            tier=100;
            scr_sound("glo_menuselect");
            }
        }
    else if (ready==2){
        ready=3;
        tier=2;
        selected=1;
        selections=4;
        instance_create(332,248,obj_marker);
        scr_sound("glo_menuselect");
        }
    }
//Menu
else if (tier==2){
    if (selected==1)
        tier=3;
    if (selected==2){
        script_execute(scr_readsum);
        if (wrongsum){
            tier=7;
            hassaved=0;
            }
        else{
            script_execute(scr_readsaves);
            //REMOVED
            //Had the choice of sparing Iosa
            /*
            if (global.sector==0 && !hassaved && global.kills+global.totkills<=9*global.neutralkc && !global.specialtriggerb2){
                tier=10;
                obj_marker.visible=0;
                obj_fade.visible=0;
                }
            else
                tier=4;
            */
            tier=4;
            }
        }
    if (selected==3){
        script_execute(scr_readsum);
        if (wrongsum){
            tier=7;
            hassaved=0;
            }
        else{
            script_execute(scr_readsaves);
            tier=5;
            }
        }
    if (selected==4){
        instance_create(596-52,311-46,obj_clearonoff);
        instance_create(596-52,339-46,obj_clearonoff);
        instance_create(596-52,367-46,obj_clearonoff);
        instance_create(596-52,395-46,obj_clearonoff);
        instance_create(596-52,423-46,obj_clearonoff);
        tier=9;
        }
    if (selected==5)
        tier=6;
    selected=1;
    scr_sound("glo_menuselect");
    }
//Continue
else if (tier==3){
    if (selected==1){
        scr_sound("glo_menuselect");
        ignoreall=1;
        instance_create(0,0,obj_endtransition);
        alarm[1]=14;
        }
    if (selected==2){
        tier=2;
        scr_sound("glo_menuback");
        }
    selected=1;
    }
//Save
else if (tier==4){
    if (selected==1){
        tier=2;
        scr_sound("glo_menuback");
        with (obj_clearwbox)
            instance_destroy();
        }
    if (selected>=2){
        script_execute(scr_readsum);
        if (wrongsum){
            tier=8;
            selected=1;
            hassaved=0;
            }
        else{
            scr_sound("glo_getoverload");
            script_execute(scr_save,selected-1);
            script_execute(scr_readsaves);
            instance_create(351,264+((selected-2)*28),obj_clearwbox);
            selected=1;
            hassaved=1;
            }
        }
    }
//Load
else if (tier==5){
    if (selected==1){
        tier=2;
        selected=1;
        scr_sound("glo_menuback");
        }
    if (selected>=2 && loadable[selected]==1){
        scr_sound("glo_menuselect");
        script_execute(scr_readsum);
        if (wrongsum){
            tier=7;
            selected=1;
            hassaved=0;
            }
        else{
            ignoreall=1;
            instance_create(0,0,obj_endtransition);
            alarm[2]=14;
            }
        }
    }
//Quit
else if (tier==6){
    if (selected==1){
        ignoreall=1;
        instance_create(0,0,obj_endtransition);
        alarm[3]=14;
        scr_sound("glo_menuselect");
        }
    if (selected==2){
        tier=2;
        scr_sound("glo_menuback");
        }
    selected=1;
    }
//ERROR
else if (tier==7 || tier==8){
    //if (selected==1){
    tier=2;
    selected=1;
    scr_sound("glo_menuback");
    }
//Options
else if (tier==9){
    if (selected==1){
        tier=2;
        selected=1;
        with(obj_clearonoff) instance_destroy();
        scr_sound("glo_menuback");
        //save the settings now!
        scr_readsum();
        if (!wrongsum)
            scr_save(0);
        }
    if (selected==2){
        if(global.noshake){
            global.noshake=0;
            scr_sound("glo_menuselect");
            }
        else{
            global.noshake=1;
            scr_sound("glo_menuback");
            }
        }
    if (selected==3){
        if(global.novoice){
            global.novoice=0;
            scr_sound("glo_menuselect");
            }
        else{
            global.novoice=1;
            scr_sound("glo_menuback");
            }
        }
    if (selected==4){
        if(global.nosound){
            global.nosound=0;
            scr_sound("glo_menuselect");
            }
        else{
            global.nosound=1;
            scr_sound("glo_menuback");
            }
        }
    if (selected==5){
        if(global.nomusic){
            global.nomusic=0;
            scr_sound("glo_menuselect");
            scr_music(global.music);
            }
        else{
            global.nomusic=1;
            scr_sound("glo_menuback");
            scr_stopmusic();
            }
        }
    if (selected==6){
        if(global.hidetime){
            global.hidetime=0;
            scr_sound("glo_menuselect");
            }
        else{
            global.hidetime=1;
            scr_sound("glo_menuback");
            }
        }
    }
//Continue
else if (tier==10){
    tier=4;
    selected=1;
    scr_sound("glo_menuselect");
    obj_marker.visible=1;
    obj_fade.visible=1;
    }

}