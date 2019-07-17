if (file_exists("ijisave.sav")){
fileid=file_text_open_read("ijisave.sav");
file_text_readln(fileid);
file_text_readln(fileid);
file_text_readln(fileid);
file_text_readln(fileid);
file_text_readln(fileid);
tempkeys=file_text_read_string(fileid);
file_text_close(fileid);

global.kickkey=ord(string_char_at(tempkeys,1));
global.firekey=ord(string_char_at(tempkeys,2));
global.usekey=ord(string_char_at(tempkeys,3));
global.weap5key=ord(string_char_at(tempkeys,4));
global.weap6key=ord(string_char_at(tempkeys,5));
global.weap7key=ord(string_char_at(tempkeys,6));
global.weap8key=ord(string_char_at(tempkeys,7));
//Noshake is baked with nogamma and noblood
tempext=real(string_char_at(tempkeys,8));
if (tempext>=4){
    global.noblood=1;
    tempext-=4;
    }
if (tempext>=2){
    global.nogamma=1;
    tempext-=2;
    }
if (tempext==1)
    global.noshake=1;
//Novoice is baked with SPECIALBAKE (detaillevel)
tempext=real(string_char_at(tempkeys,9));
if (tempext>=2){
    global.specialbake=1;
    tempext-=2;
    }
if (tempext==1)
    global.novoice=1;
global.nosound=real(string_char_at(tempkeys,10));
global.nomusic=real(string_char_at(tempkeys,11));
global.hidetime=real(string_char_at(tempkeys,12));

temp=real(string_copy(tempkeys,13,6));
if (temp>=131072){
    global.extras8=1;
    temp-=131072;
    }
if (temp>=65536){
    global.extras7=1;
    temp-=65536;
    }
if (temp>=32768){
    global.extras6=1;
    temp-=32768;
    }
if (temp>=16384){
    global.extras5=1;
    temp-=16384;
    }
if (temp>=8192){
    global.extras4=1;
    temp-=8192;
    }
if (temp>=4096){
    global.extras3=1;
    temp-=4096;
    }
if (temp>=2048){
    global.extras2=1;
    temp-=2048;
    }
if (temp>=1024){
    global.extras1=1;
    temp-=1024;
    }

if (temp>=512){
    global.poster10=1;
    temp-=512;
    }
if (temp>=256){
    global.poster9=1;
    temp-=256;
    }
if (temp>=128){
    global.poster8=1;
    temp-=128;
    }
if (temp>=64){
    global.poster7=1;
    temp-=64;
    }
if (temp>=32){
    global.poster6=1;
    temp-=32;
    }
if (temp>=16){
    global.poster5=1;
    temp-=16;
    }
if (temp>=8){
    global.poster4=1;
    temp-=8;
    }
if (temp>=4){
    global.poster3=1;
    temp-=4;
    }
if (temp>=2){
    global.poster2=1;
    temp-=2;
    }
if (temp==1)
    global.poster1=1;

//Records
global.nhours=real(string_char_at(tempkeys,19));
global.nminutes=real(string_copy(tempkeys,20,2));
global.nseconds=real(string_copy(tempkeys,22,2));

global.hhours=real(string_char_at(tempkeys,24));
global.hminutes=real(string_copy(tempkeys,25,2));
global.hseconds=real(string_copy(tempkeys,27,2));

global.ehours=real(string_char_at(tempkeys,29));
global.eminutes=real(string_copy(tempkeys,30,2));
global.eseconds=real(string_copy(tempkeys,32,2));

global.uhours=real(string_char_at(tempkeys,34));
global.uminutes=real(string_copy(tempkeys,35,2));
global.useconds=real(string_copy(tempkeys,37,2));

global.maxribbons=real(string_copy(tempkeys,39,2));

temp=real(string_copy(tempkeys,41,4));
if (temp>=512){
    global.sds10=1;
    temp-=512;
    }
if (temp>=256){
    global.sds9=1;
    temp-=256;
    }
if (temp>=128){
    global.sds8=1;
    temp-=128;
    }
if (temp>=64){
    global.sds7=1;
    temp-=64;
    }
if (temp>=32){
    global.sds6=1;
    temp-=32;
    }
if (temp>=16){
    global.sds5=1;
    temp-=16;
    }
if (temp>=8){
    global.sds4=1;
    temp-=8;
    }
if (temp>=4){
    global.sds3=1;
    temp-=4;
    }
if (temp>=2){
    global.sds2=1;
    temp-=2;
    }
if (temp==1)
    global.sds1=1;

temp=real(string_copy(tempkeys,45,1));
if (temp>=4){
    global.hiddenskill3=1;
    temp-=4;
    }
if (temp>=2){
    global.hiddenskill2=1;
    temp-=2;
    }
if (temp==1)
    global.hiddenskill1=1;

//Extended
if (string_length(tempkeys)==48){
    letsloadkeys=1;
    keycheck=string_char_at(tempkeys,46);
    if (keycheck!="A" && keycheck!="B" && keycheck!="C" && keycheck!="D" && keycheck!="E" && keycheck!="F" && keycheck!="G" && keycheck!="H" && keycheck!="I" && keycheck!="J" && keycheck!="K" && keycheck!="L" && keycheck!="M" && keycheck!="N" && keycheck!="O" && keycheck!="P" && keycheck!="Q" && keycheck!="R" && keycheck!="S" && keycheck!="T" && keycheck!="U" && keycheck!="V" && keycheck!="W" && keycheck!="X" && keycheck!="Y" && keycheck!="Z"){
        letsloadkeys=0;
        }
    keycheck=string_char_at(tempkeys,47);
    if (keycheck!="A" && keycheck!="B" && keycheck!="C" && keycheck!="D" && keycheck!="E" && keycheck!="F" && keycheck!="G" && keycheck!="H" && keycheck!="I" && keycheck!="J" && keycheck!="K" && keycheck!="L" && keycheck!="M" && keycheck!="N" && keycheck!="O" && keycheck!="P" && keycheck!="Q" && keycheck!="R" && keycheck!="S" && keycheck!="T" && keycheck!="U" && keycheck!="V" && keycheck!="W" && keycheck!="X" && keycheck!="Y" && keycheck!="Z"){
        letsloadkeys=0;
        }
    keycheck=string_char_at(tempkeys,48);
    if (keycheck!="A" && keycheck!="B" && keycheck!="C" && keycheck!="D" && keycheck!="E" && keycheck!="F" && keycheck!="G" && keycheck!="H" && keycheck!="I" && keycheck!="J" && keycheck!="K" && keycheck!="L" && keycheck!="M" && keycheck!="N" && keycheck!="O" && keycheck!="P" && keycheck!="Q" && keycheck!="R" && keycheck!="S" && keycheck!="T" && keycheck!="U" && keycheck!="V" && keycheck!="W" && keycheck!="X" && keycheck!="Y" && keycheck!="Z"){
        letsloadkeys=0;
        }
    if (letsloadkeys){
        global.prevkey=ord(string_char_at(tempkeys,46));
        global.specialkey=ord(string_char_at(tempkeys,47));
        global.nextkey=ord(string_char_at(tempkeys,48));
        }
    else{
        global.prevkey=ord("A");
        global.specialkey=ord("S");
        global.nextkey=ord("D");
        }
    }
else{
    global.prevkey=ord("A");
    global.specialkey=ord("S");
    global.nextkey=ord("D");
    }
}