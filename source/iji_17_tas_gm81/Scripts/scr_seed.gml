hash = 1;

for (si = 0; si <= string_length(argument0); si += 1) {
    char_as_ascii = ord(string_char_at(argument0, si));
    hash += char_as_ascii * si;
}

hash += argument1;
random_set_seed(hash);
