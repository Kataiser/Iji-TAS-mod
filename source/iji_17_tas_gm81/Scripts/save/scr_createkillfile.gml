fileid=file_text_open_write("ijisaveext.sav");

tempkillstring="";
repeat(800)
    tempkillstring+="0";

//Calculate checksum
killdatachecksum=0;
for (i=1;i<6;i+=1){
    for (j=1;j<801;j+=1)
        killdatachecksum+=ord(string_char_at(tempkillstring,j))*j*i;
    }
global.killdatachecksum=string(killdatachecksum);

//DEBUG
global.killdatachecksum=string(killdatachecksum);
global.tempkillstring[1]=tempkillstring[1];
global.tempkillstring[2]=tempkillstring[2];
global.tempkillstring[3]=tempkillstring[3];
global.tempkillstring[4]=tempkillstring[4];
global.tempkillstring[5]=tempkillstring[5];

repeat(5){
    file_text_write_string(fileid,tempkillstring);
    file_text_writeln(fileid);
    }
file_text_write_string(fileid,string(killdatachecksum));

file_text_writeln(fileid);
file_text_writeln(fileid);
file_text_write_string(fileid,"Iji extended savefile v1.0 (25/9/16)");
file_text_writeln(fileid);
file_text_write_string(fileid,"WARNING: MANUALLY MODIFYING THIS FILE WILL MAKE IT CORRUPT");
file_text_close(fileid);