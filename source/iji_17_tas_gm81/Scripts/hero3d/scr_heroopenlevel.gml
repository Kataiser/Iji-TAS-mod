//   0 empty       1 solid       2 cover
//   3 DRONE       4 CRUSHER     5 GENERATOR
//   6 barrier     7 life        8 goal
//   9 ROBOHERO    A flower

if (level==0){
if (obj_sabot.herochat<1)
    obj_sabot.herochat=1;
 temp0="000111111111111";
 temp1="000171200600021";
 temp2="011121000600381";
 temp3="010301020111111";
 temp4="010111000100000";
 temp5="010006000100000";
 temp6="011111000100000";
 temp7="000001222100000";
 temp8="000001000100000";
 temp9="000001000111111";
temp10="000001020120001";
temp11="011111000120051";
temp12="012200000000001";
temp13="013002000220021";
temp14="011111111111111";
}

if (level==1){
if (obj_sabot.herochat<2)
    obj_sabot.herochat=2;
 temp0="000001110000000";
 temp1="000001810000000";
 temp2="111111311111111";
 temp3="100010013000001";
 temp4="120020012111101";
 temp5="100010317100601";
 temp6="116111111100111";
 temp7="012400222000210";
 temp8="111001111100111";
 temp9="100002010200001";
temp10="100002010200001";
temp11="120002353200021";
temp12="111111111111111";
temp13="000000000000000";
temp14="000000000000000";
}

if (level==2){
 temp0="111111111110000";
 temp1="100060000011100";
 temp2="100010000068100";
 temp3="100010020011100";
 temp4="100010000010000";
 temp5="101111121111100";
 temp6="101302000203100";
 temp7="101111020111100";
 temp8="101302000203100";
 temp9="101111121111100";
temp10="100012000210000";
temp11="100010000011100";
temp12="120010000002100";
temp13="174012000035100";
temp14="111111111111100";
}

if (level==3){
 temp0="011111111111110";
 temp1="116000020004711";
 temp2="186000000000031";
 temp3="111002100002001";
 temp4="100000000001001";
 temp5="102000000000001";
 temp6="100000000000201";
 temp7="140000020000191";
 temp8="120000000000001";
 temp9="100000000000021";
temp10="112111121111001";
temp11="100100021200001";
temp12="100202111001001";
temp13="114100052002311";
temp14="011111111111110";
}

if (level==4){
 temp0="000000000111111";
 temp1="011111000100471";
 temp2="018301000100041";
 temp3="010201111100001";
 temp4="010006000000001";
 temp5="011166010201111";
 temp6="000102000001000";
 temp7="011131020131110";
 temp8="013100000006210";
 temp9="016102010201610";
temp10="010000000000010";
temp11="010001111100010";
temp12="012006954600210";
temp13="011002060200110";
temp14="001111111111100";
}

if (level==5){
 temp0="000111111111000";
 temp1="000130252031000";
 temp2="000120000021000";
 temp3="111111121111111";
 temp4="120009101900021";
 temp5="100200202002001";
 temp6="161100111001001";
 temp7="108100222001231";
 temp8="161100111001001";
 temp9="100000232000001";
temp10="140000000000041";
temp11="111111161111111";
temp12="000000101000000";
temp13="000000171000000";
temp14="000000111000000";
}

if (level==6){
 temp0="000111111110000";
 temp1="000140000311100";
 temp2="000100000006111";
 temp3="011100000006071";
 temp4="110620090021611";
 temp5="100100212000001";
 temp6="100600000000001";
 temp7="105600020000091";
 temp8="100600000000001";
 temp9="140100212000001";
temp10="110620090021611";
temp11="011100000006081";
temp12="000100000006111";
temp13="000130000011100";
temp14="000111111110000";
}

if (level==7){
 temp0="111111111111111";
 temp1="190020090020681";
 temp2="100000000000161";
 temp3="100000000000001";
 temp4="120020020020021";
 temp5="100000000000001";
 temp6="100000000000001";
 temp7="170020020020001";
 temp8="100000000000001";
 temp9="100000000000001";
temp10="120020020020021";
temp11="100000000000001";
temp12="100000000000161";
temp13="190020090020651";
temp14="111111111111111";
}

if (level==8){
if (obj_sabot.herochat<3)
    obj_sabot.herochat=3;
if (skill==1 && obj_sabot.herochat<4)
    obj_sabot.herochat=4;
 temp0="000A000A000A000";
 temp1="A1111111111111A";
 temp2="110000000000011";
 temp3="18A0A00000A0A71";
 temp4="111111000111111";
 temp5="100000000000001";
 temp6="17A0A00000A0A71";
 temp7="11111A000A11111";
 temp8="000011101110000";
 temp9="000000101000000";
temp10="0000A01010A0000";
temp11="000011101110000";
temp12="000010000010000";
temp13="000017A0A710000";
temp14="00AA1111111AA00";
}

for (i=0; i<15; i+=1){
    levelarray[i,0]=string_char_at(temp0,i+1);
    }
for (i=0; i<15; i+=1){
    levelarray[i,1]=string_char_at(temp1,i+1);
    }
for (i=0; i<15; i+=1){
    levelarray[i,2]=string_char_at(temp2,i+1);
    }
for (i=0; i<15; i+=1){
    levelarray[i,3]=string_char_at(temp3,i+1);
    }
for (i=0; i<15; i+=1){
    levelarray[i,4]=string_char_at(temp4,i+1);
    }
for (i=0; i<15; i+=1){
    levelarray[i,5]=string_char_at(temp5,i+1);
    }
for (i=0; i<15; i+=1){
    levelarray[i,6]=string_char_at(temp6,i+1);
    }
for (i=0; i<15; i+=1){
    levelarray[i,7]=string_char_at(temp7,i+1);
    }
for (i=0; i<15; i+=1){
    levelarray[i,8]=string_char_at(temp8,i+1);
    }
for (i=0; i<15; i+=1){
    levelarray[i,9]=string_char_at(temp9,i+1);
    }
for (i=0; i<15; i+=1){
    levelarray[i,10]=string_char_at(temp10,i+1);
    }
for (i=0; i<15; i+=1){
    levelarray[i,11]=string_char_at(temp11,i+1);
    }
for (i=0; i<15; i+=1){
    levelarray[i,12]=string_char_at(temp12,i+1);
    }
for (i=0; i<15; i+=1){
    levelarray[i,13]=string_char_at(temp13,i+1);
    }
for (i=0; i<15; i+=1){
    levelarray[i,14]=string_char_at(temp14,i+1);
    }

//OBJECTS
for (i=0; i<15; i+=1){
    for (j=0; j<15; j+=1){
        if (levelarray[i,j]=="3"){
            instance_create(i*128-viewx-496,j*128-viewy-596,obj_herodrone);
            instance_create(i*128-viewx-496-32,j*128-viewy-596-32,obj_herodrone);
            instance_create(i*128-viewx-496+32,j*128-viewy-596+32,obj_herodrone);
            }
        if (levelarray[i,j]=="4")
            instance_create(i*128-viewx-496,j*128-viewy-596,obj_herocrusher);
        if (levelarray[i,j]=="5")
            instance_create(i*128-viewx-496,j*128-viewy-596,obj_herogenerator);
        if (levelarray[i,j]=="6")
            instance_create(i*128-viewx-496,j*128-viewy-596,obj_herobarrier);
        if (levelarray[i,j]=="7")
            instance_create(i*128-viewx-496,j*128-viewy-596,obj_herolife);
        if (levelarray[i,j]=="8")
            instance_create(i*128-viewx-496,j*128-viewy-596,obj_herogoal);
        if (levelarray[i,j]=="9")
            instance_create(i*128-viewx-496,j*128-viewy-596,obj_herorobo);
        if (levelarray[i,j]=="A")
            instance_create(i*128-viewx-496-64,j*128-viewy-596-64,obj_heroflower);
        }
    }