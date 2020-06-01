input_string = argument0;
step_frames = argument1;
hash = 1;

for (si = 0; si <= string_length(input_string); si += 1) {
    char_as_ascii = ord(string_char_at(input_string, si));
    hash += char_as_ascii * si;
}

hash += step_frames;
random_set_seed(hash);
