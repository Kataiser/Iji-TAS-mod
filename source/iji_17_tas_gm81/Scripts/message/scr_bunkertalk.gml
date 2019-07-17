//1 116 vat
//2 118 com
//3 1000 eli
if (!stationary2){
if (x+type*3<obj_iji.x){
    if (type==1)
        sprite_index=spr_tasensoldier_basic;
    else if (type==2)
        sprite_index=spr_tasencommander_basic;
    else if (type==3)
        sprite_index=spr_tasenelite_basic;
    facing=1;
    }
else{
    if (type==1)
    sprite_index=spr_tasensoldier_basicleft;
    else if (type==2)
        sprite_index=spr_tasencommander_basicleft;
    else if (type==3)
        sprite_index=spr_tasenelite_basicleft;
    facing=0;
    }
}

//Texts
if (tag==1)
    chattemp.textid="chat9e01";
else if (tag==2 && talk==0){
    chattemp.textid="chat9e02";
    talk=1;
    }
else if (tag==2 && talk==1){
    chattemp.textid="chat9e03";
    talk=2;
    }
else if (tag==2 && talk==2)
    chattemp.textid="chat9e04";
else if (tag==3 && talk==0){
    chattemp.textid="chat9e05";
    talk=1;
    }
else if (tag==3 && talk==1){
    chattemp.textid="chat9e06";
    talk=2;
    }
else if (tag==3 && talk==2)
    chattemp.textid="chat9e07";
else if (tag==4 && talk==0){
    chattemp.textid="chat9e08";
    talk=1;
    }
else if (tag==4 && talk==1){
    chattemp.textid="chat9e09";
    talk=2;
    }
else if (tag==4 && talk==2)
    chattemp.textid="chat9e10";
else if (tag==5 && talk==0){
    chattemp.textid="chat9e11";
    talk=1;
    }
else if (tag==5 && talk==1){
    chattemp.textid="chat9e12";
    talk=2;
    }
else if (tag==5 && talk==2)
    chattemp.textid="chat9e13";
else if (tag==6 && talk==0){
    chattemp.textid="chat9e14";
    talk=1;
    }
else if (tag==6 && talk==1)
    chattemp.textid="chat9e15";
else if (tag==7 && talk==0){
    chattemp.textid="chat9e16";
    talk=1;
    }
else if (tag==7 && talk==1){
    chattemp.textid="chat9e17";
    talk=2;
    }
else if (tag==7 && talk==2)
    chattemp.textid="chat9e18";
else if (tag==8)
    chattemp.textid="chat9e19";
else if (tag==9 && talk==0){
    chattemp.textid="chat9e20";
    talk=1;
    }
else if (tag==9 && talk==1)
    chattemp.textid="chat9e21";
else if (tag==10 && talk==0){
    chattemp.textid="chat9e23";
    talk=1;
    }
else if (tag==10 && talk==1){
    subtalk+=1;
    if (subtalk==3){
        if (!snapped){
            snapped=1;
            chattemp.textid="chat9e25";
            }
        else
            chattemp.textid="chat9e26";
        subtalk=0;
        }        
    else
        chattemp.textid="chat9e24";
    }