do {
    line += 1;
    current_inputs = file_text_read_string(inputs_file);
    num_in_inputs = real(string_digits(current_inputs));
    file_text_readln(inputs_file);
}
until (current_inputs != "" and string_count("//", current_inputs) == 0)

frames_on_step = 0;
