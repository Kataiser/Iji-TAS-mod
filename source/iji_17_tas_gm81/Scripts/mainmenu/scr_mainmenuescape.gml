//FACE (menusabot) pressed escape in main menu
if (!ignoreall){
if (tier="main"){
    if (global.extras1==0)
        selected=6;
    else
        selected=7;
    scr_menuselection();
    }
else if (tier="new"){
    if (really)
        selected=6;
    else
        selected=5;
    scr_menuselection();
    }
else if (tier="load"){
    selected=1;
    scr_menuselection();
    }
else if (tier="options"){
    selected=1;
    scr_menuselection();
    }
else if (tier="options2"){
    selected=1;
    scr_menuselection();
    }
else if (tier="controls"){
    selected=1;
    scr_menuselection();
    }
else if (tier="controls2"){
    selected=1;
    scr_menuselection();
    }
else if (tier="weapons"){
    selected=1;
    scr_menuselection();
    }
else if (tier="extras"){
    selected=1;
    scr_menuselection();
    }
else if (tier="extras2"){
    selected=1;
    scr_menuselection();
    }
else if (tier="extras3"){
    selected=1;
    seczmusic=0;
    scr_menuselection();
    }
else if (tier="quit"){
    selected=2;
    scr_menuselection();
    }
else if (tier="error"){
    scr_menuselection();
    }
else if (tier="error2"){
    scr_menuselection();
    }
else if (tier="error3"){
    selected=3;
    scr_menuselection();
    }
else if (tier="ultimortal"){
    selected=2;
    scr_menuselection();
    }
else if (tier="really"){
    selected=2;
    scr_menuselection();
    }
else if (tier="wait"){
    scr_menuselection();
    }
else if (tier="wait2"){
    scr_menuselection();
    }
else if (tier="wait3"){
    scr_menuselection();
    }
else if (tier="secret"){
    selected=1;
    scr_menuselection();
    }
}