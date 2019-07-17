//argument0 1-5 = which savefile
if (!file_exists("ijisaveext.sav")){
    scr_createkillfile();
    for (i=0;i<800;i+=1)
        global.killdata[i]=real(string_char_at(tempkillstring[argument0],i+1));
    }
else{
    fileid=file_text_open_read("ijisaveext.sav");
    for (i=1;i<6;i+=1){
        tempkillstring[i]=file_text_read_string(fileid);
        file_text_readln(fileid);
        }
    killdatacomparestring="";
    killdatacomparestring=file_text_read_string(fileid);
    file_text_close(fileid);
    
    //Calculate checksum
    killdatachecksum=0;
    for (i=1;i<6;i+=1){
        for (j=1;j<801;j+=1)
            killdatachecksum+=ord(string_char_at(tempkillstring[i],j))*j*i;
        }
    killdatachecksum2=string(killdatachecksum);
    
    if (killdatachecksum2==killdatacomparestring){
        for (i=0;i<800;i+=1)
            global.killdata[i]=real(string_char_at(tempkillstring[argument0],i+1));
        }
    else
        scr_createkillfile();
    }