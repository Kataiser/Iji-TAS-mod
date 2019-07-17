//Failsafe: quit
if (keyboard_check(vk_f12)){
    f12quit+=1;
    if (f12quit>=25){
        sound_stop_all();
        game_end();
        }
    }
else
    f12quit=0;

//INITIALIZE
if (!initialized){
if (!superinitialized){
    superinitialized=1;
    skill=0;
    skill2=1;
    if (room==rom_main){
        with (obj_face){
            scr_music("mus_hero3d");
            }
        }
    else{
        with (obj_sabot){
            scr_music("mus_hero3d");
            }
        }
    }
sentineldestroyed=0;
screenflash=250;
initialized=1;
maininitialized=0;
y1=300;
y2=300;
x1=-100;
sweepz=1;
sweepcycle=0;
sweepcycle2=0;
sweepdirection=0;
instance_create(400,300,obj_hero);
viewx=0;
viewy=0;
viewxprevious=0;
viewyprevious=0;
velocityx=0;
velocityy=0;
bouncing=0;
megamissile=0;
restartcycle=0;
ignoremove=7;
scr_heroopenlevel();
if (level==8)
    sentineldestroyed=1;
}

if (ignoremove>0)
    ignoremove-=1;

//CONTROL HERO AND ADJUST SABOT'S VIEW
if (instance_number(obj_hero)==1 && ignoremove==0){
if (keyboard_check(vk_left))
    velocityx-=2;
else if (keyboard_check(vk_right))
    velocityx+=2;
else{
    if (velocityx>0)
        velocityx-=1;
    else if (velocityx<0)
        velocityx+=1;
    }
if (keyboard_check(vk_up))
    velocityy-=2;
else if (keyboard_check(vk_down))
    velocityy+=2;
else{
     if (velocityy>0)
        velocityy-=1;
    else if (velocityy<0)
        velocityy+=1;
    }

if (velocityx>6)
    velocityx=6;
if (velocityx<-6)
    velocityx=-6;
if (velocityy>6)
    velocityy=6;
if (velocityy<-6)
    velocityy=-6;

//MOVE VIEW
viewxprevious=viewx;
viewyprevious=viewy;
viewx+=velocityx;
viewy+=velocityy;
}

//MOVE OTHER OBJECTS
with (obj_heroshot){
    x-=obj_herosabot.velocityx;
    y-=obj_herosabot.velocityy;
    }
with (obj_heroexplo){
    x-=obj_herosabot.velocityx;
    y-=obj_herosabot.velocityy;
    }
with (obj_heroexplo2){
    x-=obj_herosabot.velocityx/100;
    y-=obj_herosabot.velocityy/100;
    }
with (obj_herodrone){
    x-=obj_herosabot.velocityx;
    y-=obj_herosabot.velocityy;
    }
with (obj_herocrusher){
    x-=obj_herosabot.velocityx;
    y-=obj_herosabot.velocityy;
    }
with (obj_herogenerator){
    x-=obj_herosabot.velocityx;
    y-=obj_herosabot.velocityy;
    }
with (obj_herobarrier){
    x-=obj_herosabot.velocityx;
    y-=obj_herosabot.velocityy;
    }
with (obj_heromine){
    x-=obj_herosabot.velocityx;
    y-=obj_herosabot.velocityy;
    }
with (obj_herolife){
    x-=obj_herosabot.velocityx;
    y-=obj_herosabot.velocityy;
    }
with (obj_herogoal){
    x-=obj_herosabot.velocityx;
    y-=obj_herosabot.velocityy;
    }
with (obj_herorobo){
    x-=obj_herosabot.velocityx;
    y-=obj_herosabot.velocityy;
    }
with (obj_heroflower){
    x-=obj_herosabot.velocityx;
    y-=obj_herosabot.velocityy;
    }

//COLLISIONS + AI
with (obj_hero){
if (obj_herosabot.levelarray[floor((x+560+obj_herosabot.viewx)/128),floor((y+660+obj_herosabot.viewy)/128)]=="1")
    scr_herodeath();
if (obj_herosabot.levelarray[floor((x+560+obj_herosabot.viewx)/128),floor((y+660+obj_herosabot.viewy)/128)]=="6")
    scr_herodeath();
    }
with (obj_heroshot){
if (obj_herosabot.levelarray[floor((x+560+obj_herosabot.viewx)/128),floor((y+660+obj_herosabot.viewy)/128)]=="1")
    instance_destroy();
    }
with (obj_herodrone){
    movecycle+=1;
    if (movecycle>=60 && (obj_herosabot.levelarray[floor((x+560+obj_herosabot.viewx)/128),floor((y+660+obj_herosabot.viewy)/128)]!="1")){
        movecycle=0;
        if (point_distance(x,y,obj_hero.x,obj_hero.y)<300)
            direction=point_direction(x,y,400,300);
        else
            direction=random(360);
        }
    if (obj_herosabot.levelarray[floor((x+560+obj_herosabot.viewx)/128),floor((y+660+obj_herosabot.viewy)/128)]=="1")
        direction+=180;
    }
with (obj_herocrusher){
    movecycle+=1;
    if (movecycle>=30 && (obj_herosabot.levelarray[floor((x+560+obj_herosabot.viewx)/128),floor((y+660+obj_herosabot.viewy)/128)]!="1")){
        movecycle=0;
        if (point_distance(x,y,obj_hero.x,obj_hero.y)<300)
            direction=point_direction(x,y,400,300);
        else
            direction=random(360);
        }
    if (obj_herosabot.levelarray[floor((x+560+obj_herosabot.viewx)/128),floor((y+660+obj_herosabot.viewy)/128)]=="1")
        direction+=180;
    }
with (obj_herorobo){
    movecycle+=1;
    if (movecycle==60 && (obj_herosabot.levelarray[floor((x+560+obj_herosabot.viewx)/128),floor((y+660+obj_herosabot.viewy)/128)]!="1")){
        direction=point_direction(x,y,400,300);
        if (instance_number(obj_hero)==1)
            (instance_create(x,y,obj_heromine)).direction+=random(40)-20;
        }
    if (movecycle>=120 && (obj_herosabot.levelarray[floor((x+560+obj_herosabot.viewx)/128),floor((y+660+obj_herosabot.viewy)/128)]!="1")){
        direction=random(360);
        if (instance_number(obj_hero)==1)
            instance_create(x,y,obj_heromine);
        movecycle=0;
        }
    if (obj_herosabot.levelarray[floor((x+560+obj_herosabot.viewx)/128),floor((y+660+obj_herosabot.viewy)/128)]=="1")
        direction+=180;
    }
with (obj_heromegamissile){
    if (x==400 && y==300){
        scr_heroexplo();
        scr_heroexplo(-32,-32);
        scr_heroexplo(-32,+32);
        scr_heroexplo(+32,-32);
        scr_heroexplo(+32,+32);
        if (obj_herosabot.levelarray[floor((x+560+obj_herosabot.viewx)/128),floor((y+660+obj_herosabot.viewy)/128)]!="2"){
            instance_destroy();
            scr_herodeath();
            }
        if (obj_herosabot.levelarray[floor((x+560+obj_herosabot.viewx)/128),floor((y+660+obj_herosabot.viewy)/128)]=="2"){
            instance_destroy();
            obj_herosabot.levelarray[floor((x+560+obj_herosabot.viewx)/128),floor((y+660+obj_herosabot.viewy)/128)]="0";
            }
        }
    }
with (obj_heromine){
    if (obj_herosabot.levelarray[floor((x+560+obj_herosabot.viewx)/128),floor((y+660+obj_herosabot.viewy)/128)]=="1"){
        instance_destroy();
        scr_heroexplo();
        }
    }

//DRAW BACKGROUND
if (screenflash>0){
    screenflash-=25;
    draw_set_color(make_color_rgb(screenflash,screenflash,screenflash));
    }
else
    draw_set_color(c_black);
draw_rectangle(-4,-4,804,604,0);

//DRAW GROUND AND SENTINEL
draw_set_color(make_color_rgb(50,50,50));
draw_line(0,416-(viewy/10),800,416-(viewy/10));
draw_line(0,440-(viewy/8),800,440-(viewy/8));
draw_line(0,485-(viewy/6),800,485-(viewy/6));
draw_line(0,570-(viewy/4),800,570-(viewy/4));
draw_line(0,800-(viewy/2),800,800-(viewy/2));
draw_line(0,1300-(viewy/1),800,1300-(viewy/1));
if (!sentineldestroyed){
    if (screenflash>0)
        draw_set_color(make_color_rgb(screenflash,screenflash,screenflash));
    else
        draw_set_color(c_black);
    draw_rectangle(368-(viewx/10),384-(viewy/10),432-(viewx/10),420-(viewy/10),0);
    draw_set_color(make_color_rgb(50,50,50));
    draw_rectangle(368-(viewx/10),384-(viewy/10),432-(viewx/10),420-(viewy/10),1);
    draw_line(384-(viewx/10),384-(viewy/10),400-(viewx/10),300-(viewy/10));
    draw_line(400-(viewx/10),300-(viewy/10),416-(viewx/10),384-(viewy/10));
    }

//Sentinel sweep Y
if (sweepdirection==0){
    sweepcycle+=1*skill2;
    if (skill2==1)
        swadjust=0;
    else
        swadjust=+50;
    if (sweepcycle>=100+swadjust)
        sweepdirection=1;
    }
else{
    sweepcycle-=1*skill2;
    if (sweepcycle==0){
        sweepdirection=0;
        y1=300-(viewy/10);
        y2=300-(viewy/10);
        if (sweepz==1){
            x1=10000;
            sweepcycle2=0;
            sweepz=0;
            }
        else{
            x1=-100;
            sweepcycle2=0;
            sweepz=1;
            }
        }
    }
if (sweepdirection==0){
    y1-=sweepcycle/8;
    y2+=sweepcycle/8;
    }
else{
    y1+=sweepcycle/8;
    y2-=sweepcycle/8;
    }

if (y1>300-(viewy/10))
    y1=300-(viewy/10);
if (y2<300-(viewy/10))
    y2=300-(viewy/10);

//Sentinel sweep X
if (sweepz==0){
    if (x1<400)
        sweepcycle2+=2*skill2;
    else
        sweepcycle2-=2*skill2;
    }
else{
    if (x1<400)
        sweepcycle2+=0.1*skill2;
    else
        sweepcycle2-=0.1*skill2;
    }

if (sweepdirection2==0)
    x1+=sweepcycle2;
else
    x1-=sweepcycle2;

//Sentinel sweep DRAW
if (!sentineldestroyed){
draw_set_color(make_color_rgb(100,100,100));
if (sweepz==0){
    draw_line(400-(viewx/10),300-(viewy/10),x1,y1);
    draw_line(400-(viewx/10),300-(viewy/10),x1,y2);
    }
else
    draw_line(400-(viewx/10),300-(viewy/10),x1,300-(viewy/10));
}

//DRAW MEGAMISSILES
with (obj_heroexplo2){
    draw_set_color(c_gray);
    draw_circle(x,y,alarm[0]/6,1);
    }
draw_set_color(c_black);
with (obj_heromegamissile){
    draw_circle(x,y,size/1000,0);
    draw_circle(x,y,size/1200,0);
    }
draw_set_color(make_color_rgb(150,150,150));
with (obj_heromegamissile){
    draw_circle(x,y,size/1000,1);
    draw_circle(x,y,size/1200,1);
    draw_line(x-size/1800,y-size/1800,x+size/1800,y+size/1800);
    draw_line(x+size/1800,y-size/1800,x-size/1800,y+size/1800);
    }

//Sentinel sweep FLASH
if (abs(x1-400-(viewx/100))<100 && sweepz==0 && !sentineldestroyed){
    draw_set_color(make_color_rgb(250,250,250));
    draw_rectangle(0,0,800,600,0);
    //Launch megamissile
    if (!megamissile){
        with (obj_hero){
            if (obj_herosabot.levelarray[floor((x+560+obj_herosabot.viewx)/128),floor((y+660+obj_herosabot.viewy)/128)]!="2"){
                instance_create(400-(obj_herosabot.viewx/10),300-(obj_herosabot.viewy/10),obj_heromegamissile);
                obj_herosabot.megamissile=1;
                }
            }
        }
    }
else if (abs(x1-400-(viewx/100))<400 && sweepz==0 && !sentineldestroyed){
    draw_set_color(make_color_rgb(120,120,120));
    draw_rectangle(0,0,800,600,0);
    megamissile=0;
    }

//DRAW LEVEL
draw_set_color(c_black);
for (i=0; i<15; i+=1){
    for (j=0; j<15; j+=1){
        if (levelarray[i,j]=="2" && 96*i-viewx*0.75-224>0 && 96*i-viewx*0.75-224<896 && 96*j-viewy*0.75-324>0 && 96*j-viewy*0.75-324<696){
            draw_set_color(c_black);
            draw_rectangle(96*i-44-viewx*0.75-272,96*j-44-viewy*0.75-372,96*i+44-viewx*0.75-272,96*j+44-viewy*0.75-372,0)
            draw_set_color(make_color_rgb(120,120,120));
            draw_rectangle(96*i-44-viewx*0.75-272,96*j-44-viewy*0.75-372,96*i+44-viewx*0.75-272,96*j+44-viewy*0.75-372,1)
            draw_line(96*i-44-viewx*0.75-272,96*j-44-viewy*0.75-372,96*i+44-viewx*0.75-272,96*j+44-viewy*0.75-372)
            draw_line(96*i+44-viewx*0.75-274,96*j-44-viewy*0.75-371,96*i-44-viewx*0.75-272,96*j+44-viewy*0.75-373)
            }
        }
    }
if (fgrf>0)
    fgrf-=2;
if (ultrashake>0){
    ultrashake-=0.5;
    }
for (i=0; i<15; i+=1){
    for (j=0; j<15; j+=1){
        if (levelarray[i,j]=="1" && 128*i-viewx-432>0 && 128*i-viewx-432<928 && 128*j-viewy-532>0 && 128*j-viewy-532<728){
            draw_set_color(make_color_rgb(250,250,250));
            draw_rectangle(128*i-60-viewx-496+random(fgrf)-(fgrf/2),128*j-60-viewy-596+random(fgrf)-(fgrf/2),128*i+60-viewx-496+random(fgrf)-(fgrf/2),128*j+60-viewy-596+random(fgrf)-(fgrf/2),1);
            }
        }
    }

//DRAW LIVES
if (herolives>0){
    lifeadjust=0;
    repeat(herolives){
        lifeadjust+=1;
        draw_set_color(c_white);
        draw_line(16+lifeadjust*16,32,16+lifeadjust*16,16);
        draw_line(16+lifeadjust*16,16,24+lifeadjust*16,20);
        draw_line(24+lifeadjust*16,20,16+lifeadjust*16,24);
        }
    }

//DRAW LEVEL INDICATOR 0-8
draw_set_color(c_white);
templevel=level;
drawlevel1=0;
drawlevel2=0;
drawlevel3=0;
while (templevel>0){
    templevel-=1;
    drawlevel1+=1;
    if (drawlevel1==3){
        drawlevel1=0;
        drawlevel2+=1;
        if (drawlevel2==3){
            drawlevel2=0;
            drawlevel3+=1;
            }
        }
    }
dlxa=20;
dlya=-8;
draw_line(12+dlxa,572+dlya,12+dlxa,588+dlya);
draw_line(8+dlxa,588-drawlevel1*8+dlya,16+dlxa,588-drawlevel1*8+dlya);
if (level>=3){
    draw_line(24+dlxa,572+dlya,24+dlxa,588+dlya);
    draw_line(20+dlxa,588-drawlevel2*8+dlya,28+dlxa,588-drawlevel2*8+dlya);
    }

//NO HERO
if (instance_number(obj_hero)==0){
    restartcycle+=1;
    if (restartcycle==60){
        if (herolives>0)
            scr_herospawnlevel();
        else{
            herolives=3;        
            if (level>0)
                level-=1;
            scr_heroopenlevel();
            scr_herospawnlevel();
            //playing=0;
            //startplaying=0;
            //scr_herodestroy();
            //repeat(5)
            //    sound_stop(snd_glo_hero3d);
            }
        herolives-=1;
        }
    }