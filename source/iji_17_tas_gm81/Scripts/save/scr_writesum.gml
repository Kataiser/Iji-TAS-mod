if (file_exists("ijisave.sav")){
var tempstring;
var fileid;
var totalsum;
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
file_text_readln(fileid);
tempstring[6]=file_text_read_string(fileid);
file_text_close(fileid);
//Add ASCII values together regardless of position
for (i=0;i<=4;i+=1){
    for (j=0;j<=54;j+=1){
        totalsum+=ord(string_char_at(tempstring[i+1],j+1));
        }
    }
for (i=0;i<=44;i+=1){
    totalsum+=ord(string_char_at(tempstring[6],i+1));
    }
totalsum*=137;
if (string_char_at(string(totalsum),8)=="0")
    totalsum*=2;
else if (string_char_at(string(totalsum),8)=="1")
    totalsum*=3;
else if (string_char_at(string(totalsum),8)=="2")
    totalsum*=7;
else if (string_char_at(string(totalsum),8)=="3")
    totalsum*=11;
else if (string_char_at(string(totalsum),8)=="4")
    totalsum*=12;
else if (string_char_at(string(totalsum),8)=="5")
    totalsum*=15;
else if (string_char_at(string(totalsum),8)=="6")
    totalsum*=18;
else if (string_char_at(string(totalsum),8)=="7")
    totalsum*=21;
else if (string_char_at(string(totalsum),8)=="8")
    totalsum*=25;
else if (string_char_at(string(totalsum),8)=="9")
    totalsum*=29;
//Add unique position values
sumincrem=0;
for (i=0;i<=4;i+=1){
    for (j=0;j<=54;j+=1){
        sumincrem+=1;
        totalsum+=sumincrem*(real(string_char_at(tempstring[i+1],j+1))+1);
        }
    }
totalsum*=ord(string_char_at(string(totalsum),7));
sumincrem=300;
for (i=0;i<=44;i+=1){
    sumincrem+=1;
    totalsum+=sumincrem*(ord(string_char_at(tempstring[6],i+1))+1);
    }
totalsum*=ord(string_char_at(string(totalsum),7));

totalsum+=1;
totalsum=scr_realtostring(totalsum);

fileid=file_text_open_write("ijisave.sav");
file_text_write_string(fileid,tempstring[1]);
file_text_writeln(fileid);
file_text_write_string(fileid,tempstring[2]);
file_text_writeln(fileid);
file_text_write_string(fileid,tempstring[3]);
file_text_writeln(fileid);
file_text_write_string(fileid,tempstring[4]);
file_text_writeln(fileid);
file_text_write_string(fileid,tempstring[5]);
file_text_writeln(fileid);
file_text_write_string(fileid,tempstring[6]);
file_text_writeln(fileid);
file_text_write_string(fileid,totalsum);

file_text_writeln(fileid);
file_text_writeln(fileid);
file_text_write_string(fileid,"Ijicryption v2.2 (29/11/08)");
file_text_writeln(fileid);
file_text_write_string(fileid,"WARNING: MANUALLY MODIFYING THIS SAVEFILE WILL MAKE IT CORRUPT");
file_text_close(fileid);
}