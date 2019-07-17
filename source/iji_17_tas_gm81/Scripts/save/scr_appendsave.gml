//Add ASD to a previous version savefile
if (file_exists("ijisave.sav")){
    scr_readsum(1);
    if (!wrongsum){
        appendid=file_text_open_read("ijisave.sav");
        line[1]=file_text_read_string(appendid);
        file_text_readln(appendid);
        line[2]=file_text_read_string(appendid);
        file_text_readln(appendid);
        line[3]=file_text_read_string(appendid);
        file_text_readln(appendid);
        line[4]=file_text_read_string(appendid);
        file_text_readln(appendid);
        line[5]=file_text_read_string(appendid);
        file_text_readln(appendid);
        line[6]=file_text_read_string(appendid);
        if (string_length(line[6])==45){
            line[6]+="ASD";
            global.prevkey=ord("A");
            global.specialkey=ord("S");
            global.nextkey=ord("D");
            doit=1;
            }
        file_text_close(appendid);

        if (doit){
            appendid=file_text_open_write("ijisave.sav");
            file_text_write_string(appendid,line[1]);
            file_text_writeln(appendid);
            file_text_write_string(appendid,line[2]);
            file_text_writeln(appendid);
            file_text_write_string(appendid,line[3]);
            file_text_writeln(appendid);
            file_text_write_string(appendid,line[4]);
            file_text_writeln(appendid);
            file_text_write_string(appendid,line[5]);
            file_text_writeln(appendid);
            file_text_write_string(appendid,line[6]);
            file_text_close(appendid);
            scr_writesum();
            }
        }
    }