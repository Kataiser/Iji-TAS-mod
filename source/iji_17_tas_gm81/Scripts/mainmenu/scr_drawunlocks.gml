textyadjust=-28*2;
text="";

if (unlocked[1]){
text+="~For beating Normal or higher, you unlocked SINGLE SECTOR PLAY~#$#";
text+="~~~~For beating Normal or higher, you unlocked SOUND TEST~~~~~~#$#";
text+="~~~~For beating Normal or higher, you unlocked SECTOR MAPS~~~~~#$#";
textyadjust+=28*2;
}
if (unlocked[2]){
text+="~~~~~For beating Hard or higher, you unlocked PLAY HERO 3D~~~~~#$#";
text+="~For beating Hard or higher, you unlocked SUDDEN DEATH SECTOR~~#$#";
textyadjust+=28;
}
if (unlocked[3]){
text+="~~~~~~For beating Extreme, you unlocked ALTERNATE OUTFIT~~~~~~~#$#";
text+="~~~~For beating Extreme, you unlocked ULTIMORTAL DIFFICULTY~~~~#$#";
textyadjust+=28;
}
if (unlocked[4]){
text+="For achieving Nanomaster rank, you unlocked WEAPON INFORMATION~#$#";
}
if (unlocked[6]){
text+="~~For achieving Immortal rank, you unlocked ENEMY INFORMATION~~#$#";
}
if (unlocked[8]){
text+="~~~~~~~~For beating Ultimortal, you unlocked TURBO MODE~~~~~~~~#$#";
}
text+="~~~~~~~~~~~~Press Escape to return to the Main menu~~~~~~~~~~~~";

for (i=1; i<8; i+=1){
if (unlocked[i]==1)
    textyadjust+=28;
}

draw_set_font(global.fontspecial);
draw_set_color(c_white);
draw_text_ext(22,224-textyadjust,text,28,756);
