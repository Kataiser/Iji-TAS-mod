//argument0 1-5 = which savefile
if (!file_exists("ijisaveext.sav"))
    scr_createkillfile();

//Read
fileid=file_text_open_read("ijisaveext.sav");
for (i=1;i<6;i+=1){
    tempkillstring[i]=file_text_read_string(fileid);
    file_text_readln(fileid);
    }
file_text_close(fileid);

tempkillstring2="";
for (i=0;i<800;i+=1)
    tempkillstring2+=string(global.killdata[i]);
tempkillstring[argument0]=tempkillstring2;

//Calculate checksum
killdatachecksum=0;
for (i=1;i<6;i+=1){
    for (j=1;j<801;j+=1)
        killdatachecksum+=ord(string_char_at(tempkillstring[i],j))*j*i;
    }

//Write
fileid=file_text_open_write("ijisaveext.sav");
for (i=1;i<6;i+=1){
    file_text_write_string(fileid,tempkillstring[i]);
    file_text_writeln(fileid);
    }
file_text_write_string(fileid,string(killdatachecksum));

file_text_writeln(fileid);
file_text_writeln(fileid);
file_text_write_string(fileid,"Iji extended savefile v1.0 (25/9/16)");
file_text_writeln(fileid);
file_text_write_string(fileid,"WARNING: MANUALLY MODIFYING THIS FILE WILL MAKE IT CORRUPT");
file_text_close(fileid);