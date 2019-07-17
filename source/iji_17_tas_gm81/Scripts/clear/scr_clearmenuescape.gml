//clearsabot pressed escape in clear menu
if (!ignoreall){
if (ready==1 || ready==2)
    scr_clearselection();
else{
    if (tier==2){
        selected=1;
        scr_clearselection();
        }
    else if (tier==3){
        selected=2;
        scr_clearselection();
        }
    else if (tier==4){
        selected=1;
        scr_clearselection();
        }
    else if (tier==5){
        selected=1;
        scr_clearselection();
        }
    else if (tier==6){
        selected=2;
        scr_clearselection();
        }
    else if (tier==7 || tier==8){
        scr_clearselection();
        }
    else if (tier==9){
        selected=1;
        scr_clearselection();
        }
    }
}