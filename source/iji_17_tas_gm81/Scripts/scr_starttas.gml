step = 1;
frame = 1;
current_inputs = "";
last_inputs = "";
io_clear();
alarm[0] = 2;
current_alarm = 2;
is_executing = true;
        
if (capture_syncdata) {
    if (!directory_exists(program_directory + "\syncdata")) {directory_create(program_directory + "\syncdata"); sleep(100)}
    current_datetime = date_current_datetime();
    current_datetime_second = date_get_second(current_datetime);
    log_time = string(floor(date_current_datetime() * 100) + current_datetime_second);
    syncdata_log = file_text_open_append("syncdata\syncdata_" + log_time + ".log");
}
