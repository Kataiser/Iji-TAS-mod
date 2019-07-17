//black background
if (obj_face.menuwait>90){
    draw_set_color(c_black);
    draw_rectangle(-1,-1,801,601,0);
    text="       MAIN MENU          New game                  Load game                 Options                   Controls                  Extras                    Quit";
    }
//menu text draw
if (obj_face.menu=1){
    depth= -2;
    if (obj_face.tier="main"){
    if (global.extras1)
    text="       MAIN MENU          New game                  Load game                 Options                   Controls                  Extras                    Records                   Quit";
    else
    text="       MAIN MENU          New game                  Load game                 Options                   Controls                  Extras                    Quit";
    }
    else if (obj_face.tier="new"){
    if (obj_face.really)
    text="   SELECT DIFFICULTY      Normal                    Hard                      Extreme                   Ultimortal                reallyjoel's dad          Back to Main menu         ~~~                       ";
    else
    text="   SELECT DIFFICULTY      Normal                    Hard                      Extreme                   Ultimortal                Back to Main menu         ~~~                       ";
        if (obj_face.selected==4 && !global.extras3)
            text+="~>Beat Extreme to unlock"
        }
    else if (obj_face.tier="load")
    text="       LOAD GAME          Back to Main menu         "+obj_face.readsaves;
    else if (obj_face.tier="options")
    text="       OPTIONS 1          Back to Main menu         Screen shaking            Voices                    Sound effects             Music                     Show~time~~~~~~~~~~~~~~~~ More|~~~~~~~~~~~~~~~~~~~";
    else if (obj_face.tier="options2")
    text="       OPTIONS 2          Back to Options 1         Screen color FX           Special effects           Human blood               ";
    else if (obj_face.tier="controls")
    text="   CONFIGURE CONTROLS     Back to Main menu         Restore defaults          ("+chr(global.kickkey)+") Kick                  ("+chr(global.firekey)+") Fire                  ("+chr(global.usekey)+") Use                   Secondary weapon keys|    ~>Push a letter to set key";
    else if (obj_face.tier="controls2")
    text="  SECONDARY WEAPON KEYS   Back to Controls menu     Restore defaults          ("+chr(global.prevkey)+") Previous weapon       ("+chr(global.nextkey)+") Next weapon           ("+chr(global.specialkey)+") Select super-weapon   Tertiary weapon keys|     ~>Push a letter to set key";
    else if (obj_face.tier="weapons")
    text="   TERTIARY WEAPON KEYS   Back to Secondary keys    Restore defaults          ("+chr(global.weap5key)+") Weapon 5              ("+chr(global.weap6key)+") Weapon 6              ("+chr(global.weap7key)+") Weapon 7              ("+chr(global.weap8key)+") Weapon 8              ~>Push a letter to set key";

    if (obj_face.tier="extras"){
    text="        EXTRAS 1          Back to Main menu         ";
    //POSTER VIEWER
    if (global.poster1 || global.poster2 || global.poster3 || global.poster4 || global.poster5 || global.poster6 || global.poster7 || global.poster8 || global.poster9 || global.poster10){
        text+="Poster viewer             ";
        }
    else
        text+="???                       ";
    //SINGLE SECTOR WARP
    if (global.extras1){
        text+="Single Sector play < ";
        if (obj_face.warp==10)
            text+="X";
        else if (obj_face.warp==0)
            text+="Z";
        else
            text+=string(obj_face.warp);
        text+=" >  ";
        }
    else
        text+="???                       ";
    //PLAY HERO 3D
    if (global.extras2)
        text+="Play Hero 3D              ";
    else
        text+="???                       ";
    //ALTERNATE OUTFIT
    if (global.extras3){
        text+="Alternate outfit ";
        if (global.outfit==0)
            text+="< OFF >  ";
        else
            text+="< ON  >  ";
        }
    else
        text+="???                       ";
    //More
    text+="More|                     ";
    if (obj_face.selected==2) text+="~>Find well-hidden posters";
    if (obj_face.selected==3) text+="~>Beat the game on Normal";
    if (obj_face.selected==4) text+="~>Beat the game on Hard";
    if (obj_face.selected==5) text+="~>Beat the game on Extreme";
    }
    //EXTRAS 2
    if (obj_face.tier="extras2"){
    text="        EXTRAS 2          Back to Extras 1          ";
    //WEAPON INFORMATION
    if (global.extras4){
        text+="Weapon information < ";
        if (obj_face.weaponinfo>=19){
            text+="P"
            text+=string(obj_face.weaponinfo-18);
            }
        else{
            if (obj_face.weaponinfo<10)
                text+="0"
            text+=string(obj_face.weaponinfo);
            }
        text+=" > "
        }
    else
        text+="???                       ";
    //ENEMY INFORMATION
    if (global.extras6){
        text+="Enemy information < ";
        if (obj_face.enemyinfo<10)
            text+="0"
        text+=string(obj_face.enemyinfo);
        text+=" >  "
        }
    else
        text+="???                       ";
    //SECTOR MAPS
    if (global.extras1){
        text+="Sector maps < ";
        if (obj_face.sectormaps!=0)
            text+=string(obj_face.sectormaps);
        else
            text+="X"
        text+=" >         "
        }
    else
        text+="???                       ";
    //SUDDEN DEATH
    if (global.extras2){
        text+="Sudden Death Sector < ";
        if (obj_face.sdwarp!=0)
            text+=string(obj_face.sdwarp);
        else
            text+="X";
        text+=" > ";
        }
    else
        text+="???                       ";
    text+="More|                     ";

    if (obj_face.selected==2) text+="~>Get `Nanomaster` rank";
    if (obj_face.selected==3) text+="~>Get `Immortal` rank";
    if (obj_face.selected==4) text+="~>Beat the game on Normal";
    if (obj_face.selected==5){
        text+="~>Beat the game on Hard";
        }
    }

    //EXTRAS 3
    if (obj_face.tier="extras3"){
        text="        EXTRAS 3          Back to Extras 2          ";
        //TURBO MODE
        if (global.extras8){
            text+="Turbo mode ";
            if (global.turbomode==0)
                text+="< OFF >        ";
            else if (global.turbomode==1)
                text+="< ON  >        ";
            }
        else
            text+="???                       ";
        //SCRAMBLER
        if (global.extras7){
            text+="Scrambler ";
            if (global.scrambler==0)
                text+="< OFF >        ";
            else if (global.scrambler==1)
                text+="< ON  >        ";
            }
        else
            text+="???                       ";
        //SOUND TEST
        if (global.extras1){
            if (obj_face.selected==4){
                text+="<~";
                scr_mainsoundtexts();
                text+="~>#";
                }
            else{
                text+="<~Sound test~>#";
                }
            }
        else{
            text+="~~~                       ";
            text+="~~~                       ";
            }
//        text+="~~~                       ";
        text+="~~~                       ";
        if (obj_face.selected==2) text+="~>Beat game on Ultimortal";
        if (obj_face.selected==3) text+="~>Find the Scrambler";
        if (obj_face.selected==4) text+="~>Beat the game on Normal";
        }

    if (obj_face.tier="quit")
    text="       QUIT GAME?         Yes                       No";
    if (obj_face.tier="error")
    text="          ERROR           Back to Controls menu#$#SOME OF THE ACTIONS ARE   ASSIGNED TO THE SAME KEY. PLEASE RE-ASSIGN THE      CONTROLS AND WEAPON KEYS.";
    if (obj_face.tier="error2")
    text="          ERROR           Back to Main menu#$#THE SAVE FILE (ijisave)   IS CORRUPT. SAVE FILES    COULD NOT BE READ. PLEASE START A NEW GAME TO FIX   THE SAVEFILE.";
    if (obj_face.tier="error3")
    text="         WARNING          Continue (cannot save)    Fix/reset savefile        Abort#$#THE SAVE FILE (ijisave)   IS CORRUPT. CONTROLS AND  OPTIONS HAVE BEEN RESET.";
    if (obj_face.tier="ultimortal")
    text="      ARE YOU SURE?       Yes, bring it on          No, not really";
    if (obj_face.tier="really")
    text="ARE YOU REALLYJOEL'S DAD? Of course                 Maybe not";
    if (obj_face.tier="secret")
    text="       TOP SECRET         Back to Main menu         Information               1.6 Reflector             No mercy                  Fire anytime              Random stations           No reloads              ";
    if (obj_face.tier="supersecret")
    text="      FINAL SECRET        Back to Main menu         Information               Debug mode                ";
        //                          |                         |                         |                         |                         |                         |                         |

//DRAW
    draw_set_font(global.fontblue);
    draw_set_color(c_white);
    draw_text_ext(380,254,text,28,326);
    if (obj_face.tier="extras"){
        draw_set_font(global.fontblue2);
        draw_set_color(c_white);
        if (!global.poster1 && !global.poster2 && !global.poster3 && !global.poster4 && !global.poster5 && !global.poster6 && !global.poster7 && !global.poster8 && !global.poster9 && !global.poster10)
            draw_text_ext(380,310,"Poster~viewer~~~~~~~~~~~~~",28,326);
        if (!global.extras1)
            draw_text_ext(380,338,"Single~Sector~play~~~~~~~~",28,326);
        if (!global.extras2)
            draw_text_ext(380,366,"Play~Hero~3D~~~~~~~~~~~~~~",28,326);
        if (!global.extras3)
            draw_text_ext(380,394,"Alternate~outfit~~~~~~~~~~",28,326);
        }
    else if (obj_face.tier="extras2"){
        draw_set_font(global.fontblue2);
        draw_set_color(c_white);
        if (!global.extras4)
            draw_text_ext(380,310,"Weapon~information~~~~~~~~",28,326);
        if (!global.extras6)
            draw_text_ext(380,338,"Enemy~information~~~~~~~~~",28,326);
        if (!global.extras1)
            draw_text_ext(380,366,"Sector~maps~~~~~~~~~~~~~~~",28,326);
        if (!global.extras2)
            draw_text_ext(380,394,"Sudden~Death~Sector~~~~~~~",28,326);
        }
    else if (obj_face.tier="extras3"){
        draw_set_font(global.fontblue2);
        draw_set_color(c_white);
        if (!global.extras8)
            draw_text_ext(380,310,"Turbo~mode~~~~~~~~~~~~~~~~",28,326);
        if (!global.extras7)
            draw_text_ext(380,338,"Scrambler~~~~~~~~~~~~~~~~~",28,326);
        if (!global.extras1)
            draw_text_ext(380,366,"Sound~test~~~~~~~~~~~~~~~~",28,326);
        }
    else if (obj_face.tier="new" && !global.extras3){
        draw_set_font(global.fontblue2);
        draw_set_color(c_white);
        draw_text_ext(380,366,"Ultimortal~~~~~~~~~~~~~~~~",28,326);
        }
    }

//Difficulty info
if (obj_face.tier=="new"){
    if (difinfoy<0)
        difinfoy+=64;
    }
else if (difinfoy>-256)
    difinfoy-=64;
difinfotext="";
if (obj_face.tier="new"){
    if (obj_face.selected==1)
        difinfotext="You can gain 5 levels per Sector#Normal cracking time limit#Low cracking failure penalties#Red Nanofields recover 2 HP#Reduced amount of enemies";
    else if (obj_face.selected==2)
        difinfotext="You can gain 4 levels per Sector#Stricter cracking time limit#High cracking failure penalties#Red Nanofields recover 1 HP#Tougher bosses";
    else if (obj_face.selected==3)
        difinfotext="You can gain 3 levels per Sector#Very strict cracking time limit#Extreme cracking failure penalties#Red Nanofields recover 1 HP#Super tough bosses#No Nano Overloads";
    else if (obj_face.selected==4 && global.extras3)
        difinfotext="Same as Extreme, plus:#Each Sector has a time limit#Only Health can be upgraded#No Red or Green Nanofields#Most enemies are faster";
    else if (obj_face.selected==5 && obj_face.really)
        difinfotext="You cannot gain levels#Nuclear cracking failure penalties#Each Sector has a time limit#No Nanofields or Overloads#Bosses are impossible#More enemies, enemy stats doubled";
    }
for (i=0;i<14;i+=1){
    if (i==0)
        draw_sprite(spr_difinfo,0,294+i*32,24+difinfoy);
    else if (i==13)
        draw_sprite(spr_difinfo,2,294+i*32,24+difinfoy);
    else
        draw_sprite(spr_difinfo,1,294+i*32,24+difinfoy);
    }
draw_set_font(global.fontwhite);
draw_set_color(c_white);
draw_text_ext(312,40+difinfoy,difinfotext,28,800);
