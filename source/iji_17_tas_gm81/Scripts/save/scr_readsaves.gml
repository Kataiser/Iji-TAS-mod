if (file_exists("ijisave.sav")){
var fileid;
var tempstring;
var temp;
fileid=file_text_open_read("ijisave.sav");
tempstring[1]=file_text_read_string(fileid);
file_text_readln(fileid);
tempstring[2]=file_text_read_string(fileid);
file_text_readln(fileid);
tempstring[3]=file_text_read_string(fileid);
file_text_readln(fileid);
tempstring[4]=file_text_read_string(fileid);
file_text_readln(fileid);
tempstring[5]=file_text_read_string(fileid);
file_text_close(fileid);
readsaves="";

for (i=1;i<6;i+=1)
if (string_char_at(tempstring[i],1)=="0"){
    readsaves+="(Not used)                "
    loadable[i+1]=0;
    }
else{
    temptime=real(string_copy(tempstring[i],51,5));
    temptimesecs=temptime;
    temptimehours=floor((temptimesecs-(temptimesecs mod 3600))/3600);
    temptimesecs-=temptimehours*3600;
    temptimemins=floor((temptimesecs-(temptimesecs mod 60))/60);
    temptimesecs=temptimesecs mod 60;
    timestring=string(temptimehours)+":";
    if (temptimemins<10)
        timestring+="0";
    timestring+=string(temptimemins)+".";
    if (temptimesecs<10)
        timestring+="0";
    timestring+=string(temptimesecs);

    loadable[i+1]=1;
    readsaves+="Sec~"
    temp=string_char_at(tempstring[i],2);
    if (temp=="0")
        readsaves+="X";
    else
        readsaves+=string(temp);
    readsaves+=",~";
    if (string_char_at(tempstring[i],3)=="0")
        readsaves+="Normal~~~~~"+timestring+" ";
    if (string_char_at(tempstring[i],3)=="1")
        readsaves+="Hard~~~~~~~"+timestring+" ";
    if (string_char_at(tempstring[i],3)=="2")
        readsaves+="Extreme~~~~"+timestring+" ";
    if (string_char_at(tempstring[i],3)=="3")
        readsaves+="Ultimortal~"+timestring+" ";
    }
}
else
    wrongsum=1;