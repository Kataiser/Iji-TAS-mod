if (menu==1 && selected>2){
if (tier=="controls" || tier=="controls2" ||tier=="weapons"){
if (keyboard_lastkey!=vk_up && keyboard_lastkey!=vk_down){
keycheck=keyboard_lastkey;
if (keycheck==ord("A") || keycheck==ord("B")
 || keycheck==ord("C") || keycheck==ord("D")
 || keycheck==ord("E") || keycheck==ord("F")
 || keycheck==ord("G") || keycheck==ord("H")
 || keycheck==ord("I") || keycheck==ord("J")
 || keycheck==ord("K") || keycheck==ord("L")
 || keycheck==ord("M") || keycheck==ord("N")
 || keycheck==ord("O") || keycheck==ord("P")
 || keycheck==ord("Q") || keycheck==ord("R")
 || keycheck==ord("S") || keycheck==ord("T")
 || keycheck==ord("U") || keycheck==ord("V")
 || keycheck==ord("W") || keycheck==ord("X")
 || keycheck==ord("Y") || keycheck==ord("Z")){
    if (tier=="controls"){
        if ((selected==3 || selected==4 || selected==5) && tklast!=keycheck)
            scr_sound("glo_selectweapon");
        if (selected==3)
            global.kickkey=keycheck;
        if (selected==4)
            global.firekey=keycheck;
        if (selected==5)
            global.usekey=keycheck;
        }
    if (tier=="controls2"){
        if ((selected==3 || selected==4 || selected==5) && tklast!=keycheck)
            scr_sound("glo_selectweapon");
        if (selected==3)
            global.prevkey=keycheck;
        if (selected==4)
            global.nextkey=keycheck;
        if (selected==5)
            global.specialkey=keycheck;
        }
    if (tier=="weapons"){
        if ((selected==3 || selected==4 || selected==5 || selected==6) && tklast!=keycheck)
            scr_sound("glo_selectweapon");
        if (selected==3)
            global.weap5key=keycheck;
        if (selected==4)
            global.weap6key=keycheck;
        if (selected==5)
            global.weap7key=keycheck;
        if (selected==6)
            global.weap8key=keycheck;
        }
    }
}
}
}
tklast=keyboard_lastkey;