//argument0 is real to convert
//returns a GM5 format compatible string
//Yes, this is ridiculous, but it's because GM7 can't read a string that it itself wrote
tempstr=string(argument0);
numdigits=string_length(tempstr)-1;
tempstr=" "+string_char_at(tempstr,1)+"."+string_copy(tempstr,2,numdigits);
for (ij=0;ij<14-numdigits;ij+=1)
    tempstr+="0";
tempstr+="E+00";
if (numdigits<10)
    tempstr+="0";
tempstr+=string(numdigits);
return tempstr;