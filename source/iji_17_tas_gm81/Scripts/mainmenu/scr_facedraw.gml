fimgcyc+=1;
if (fimgcyc>=4){
    image_single+=1;
    fimgcyc=0;
    if (image_single>=4)
        image_single=0;
    }
draw_sprite(sprite_index,image_single,x,y);
if (drawkonami){
    konamicyc+=4;
    draw_set_font(global.fontwhite);
    draw_set_color(c_white);
    draw_text_ext(800-konamicyc,570,konamitext,28,8000);
    if (konamicyc>800+string_length(konamitext)*12){
        ignoreall=0;
        code=0;
        dcode=0;
        scode=0;
        konamicyc=0;
        drawkonami=0;
        }
    }
draw_set_font(global.fontwhite);
draw_set_color(c_white);
draw_text_ext(400-string_length(subtitle)*6,538,subtitle,28,8000);


