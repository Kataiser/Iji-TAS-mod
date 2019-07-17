//Wobble text
if (!maininitialized){
    obj_sabot.herochat=0;
    initialized=0;
    herolives=2;
    mxaspeed=0.1;
    myaspeed=0.09;
    mxadirection=0;
    myadirection=0;
    maininitialized=1;
    rf=0;
    spcycle=0;
    startplaying=0;
    mainpulse1direction=0;
    mainpulse2direction=0;
    mainpulse2direction=0;
    mainpulse1=100;
    mainpulse2=250;
    mainpulse3=100;
    }
if (mxaspeed>=0.1)
    mxadirection=0;
if (mxaspeed<=-0.1)
    mxadirection=1;

if (mxadirection==0)
    mxaspeed-=0.02;
else
    mxaspeed+=0.02;
mxatemp+=mxaspeed/6;
mxa=mxatemp+1.1;
mxa2=-60;

if (myaspeed>=0.09)
    myadirection=0;
if (myaspeed<=-0.09)
    myadirection=1;

if (myadirection==0)
    myaspeed-=0.02;
else
    myaspeed+=0.02;
myatemp+=myaspeed/6;
mya=myatemp+1.1;
mya2=-10;

if (startplaying==1){
    spcycle+=1;
    rf+=spcycle;
    }
if (spcycle>=30){
    startplaying=0;
    playing=1;
    }

draw_set_color(c_black);
draw_rectangle(-4,-4,804,604,0);

//Color text
if (startplaying==0){
if (mainpulse1direction==0)
    mainpulse1+=9;
else
    mainpulse1-=9;
if (mainpulse1>=245 && mainpulse1direction==0)
    mainpulse1direction=1;
if (mainpulse1<=50 && mainpulse1direction==1)
    mainpulse1direction=0;

if (mainpulse2direction==0)
    mainpulse2+=8;
else
    mainpulse2-=8;
if (mainpulse2>=245 && mainpulse2direction==0)
    mainpulse2direction=1;
if (mainpulse2<=50 && mainpulse2direction==1)
    mainpulse2direction=0;

if (mainpulse3direction==0)
    mainpulse3+=7;
else
    mainpulse3-=7;
if (mainpulse3>=245 && mainpulse3direction==0)
    mainpulse3direction=1;
if (mainpulse3<=50 && mainpulse3direction==1)
    mainpulse3direction=0;
}
else{
    mainpulse1-=10;
    mainpulse2-=10;
    mainpulse3-=10;
    }
if (mainpulse1<0)
    mainpulse1=0;
if (mainpulse2<0)
    mainpulse2=0;
if (mainpulse3<0)
    mainpulse3=0;

draw_set_color(make_color_rgb(mainpulse1,mainpulse2,mainpulse3));

//H
draw_line(96*mxa+mxa2+random(rf)-(rf/2),96*mya+mya2+random(rf)-(rf/2),96*mxa+mxa2+random(rf)-(rf/2),225*mya+mya2+random(rf)-(rf/2));
draw_line(96*mxa+mxa2+random(rf)-(rf/2),160*mya+mya2+random(rf)-(rf/2),160*mxa+mxa2+random(rf)-(rf/2),160*mya+mya2+random(rf)-(rf/2));
draw_line(160*mxa+mxa2+random(rf)-(rf/2),96*mya+mya2+random(rf)-(rf/2),160*mxa+mxa2+random(rf)-(rf/2),225*mya+mya2+random(rf)-(rf/2));
//E
draw_line(256*mxa+mxa2+random(rf)-(rf/2),224*mya+mya2+random(rf)-(rf/2),192*mxa+mxa2+random(rf)-(rf/2),224*mya+mya2+random(rf)-(rf/2));
draw_line(192*mxa+mxa2+random(rf)-(rf/2),224*mya+mya2+random(rf)-(rf/2),192*mxa+mxa2+random(rf)-(rf/2),96*mya+mya2+random(rf)-(rf/2));
draw_line(192*mxa+mxa2+random(rf)-(rf/2),96*mya+mya2+random(rf)-(rf/2),257*mxa+mxa2+random(rf)-(rf/2),96*mya+mya2+random(rf)-(rf/2));
draw_line(192*mxa+mxa2+random(rf)-(rf/2),160*mya+mya2+random(rf)-(rf/2),225*mxa+mxa2+random(rf)-(rf/2),160*mya+mya2+random(rf)-(rf/2));
//R
draw_line(288*mxa+mxa2+random(rf)-(rf/2),224*mya+mya2+random(rf)-(rf/2),288*mxa+mxa2+random(rf)-(rf/2),96*mya+mya2+random(rf)-(rf/2));
draw_line(288*mxa+mxa2+random(rf)-(rf/2),96*mya+mya2+random(rf)-(rf/2),352*mxa+mxa2+random(rf)-(rf/2),96*mya+mya2+random(rf)-(rf/2));
draw_line(352*mxa+mxa2+random(rf)-(rf/2),96*mya+mya2+random(rf)-(rf/2),352*mxa+mxa2+random(rf)-(rf/2),160*mya+mya2+random(rf)-(rf/2));
draw_line(352*mxa+mxa2+random(rf)-(rf/2),160*mya+mya2+random(rf)-(rf/2),288*mxa+mxa2+random(rf)-(rf/2),160*mya+mya2+random(rf)-(rf/2));
draw_line(288*mxa+mxa2+random(rf)-(rf/2),160*mya+mya2+random(rf)-(rf/2),353*mxa+mxa2+random(rf)-(rf/2),225*mya+mya2+random(rf)-(rf/2));
//O
draw_line(384*mxa+mxa2+random(rf)-(rf/2),224*mya+mya2+random(rf)-(rf/2),384*mxa+mxa2+random(rf)-(rf/2),96*mya+mya2+random(rf)-(rf/2));
draw_line(384*mxa+mxa2+random(rf)-(rf/2),96*mya+mya2+random(rf)-(rf/2),448*mxa+mxa2+random(rf)-(rf/2),96*mya+mya2+random(rf)-(rf/2));
draw_line(448*mxa+mxa2+random(rf)-(rf/2),96*mya+mya2+random(rf)-(rf/2),448*mxa+mxa2+random(rf)-(rf/2),224*mya+mya2+random(rf)-(rf/2));
draw_line(448*mxa+mxa2+random(rf)-(rf/2),224*mya+mya2+random(rf)-(rf/2),384*mxa+mxa2+random(rf)-(rf/2),224*mya+mya2+random(rf)-(rf/2));
//3
draw_line(544*mxa+mxa2+random(rf)-(rf/2),224*mya+mya2+random(rf)-(rf/2),608*mxa+mxa2+random(rf)-(rf/2),224*mya+mya2+random(rf)-(rf/2));
draw_line(608*mxa+mxa2+random(rf)-(rf/2),224*mya+mya2+random(rf)-(rf/2),608*mxa+mxa2+random(rf)-(rf/2),96*mya+mya2+random(rf)-(rf/2));
draw_line(608*mxa+mxa2+random(rf)-(rf/2),96*mya+mya2+random(rf)-(rf/2),543*mxa+mxa2+random(rf)-(rf/2),96*mya+mya2+random(rf)-(rf/2));
draw_line(608*mxa+mxa2+random(rf)-(rf/2),160*mya+mya2+random(rf)-(rf/2),575*mxa+mxa2+random(rf)-(rf/2),160*mya+mya2+random(rf)-(rf/2));
//D
draw_line(640*mxa+mxa2+random(rf)-(rf/2),224*mya+mya2+random(rf)-(rf/2),640*mxa+mxa2+random(rf)-(rf/2),96*mya+mya2+random(rf)-(rf/2));
draw_line(640*mxa+mxa2+random(rf)-(rf/2),96*mya+mya2+random(rf)-(rf/2),672*mxa+mxa2+random(rf)-(rf/2),96*mya+mya2+random(rf)-(rf/2));
draw_line(672*mxa+mxa2+random(rf)-(rf/2),96*mya+mya2+random(rf)-(rf/2),704*mxa+mxa2+random(rf)-(rf/2),128*mya+mya2+random(rf)-(rf/2));
draw_line(704*mxa+mxa2+random(rf)-(rf/2),128*mya+mya2+random(rf)-(rf/2),704*mxa+mxa2+random(rf)-(rf/2),192*mya+mya2+random(rf)-(rf/2));
draw_line(704*mxa+mxa2+random(rf)-(rf/2),192*mya+mya2+random(rf)-(rf/2),672*mxa+mxa2+random(rf)-(rf/2),224*mya+mya2+random(rf)-(rf/2));
draw_line(672*mxa+mxa2+random(rf)-(rf/2),224*mya+mya2+random(rf)-(rf/2),640*mxa+mxa2+random(rf)-(rf/2),224*mya+mya2+random(rf)-(rf/2));
//BOXES
draw_line(208*mxa+mxa2+random(rf)-(rf/2),384*mya+mya2+random(rf)-(rf/2),208*mxa+mxa2+random(rf)-(rf/2),320*mya+mya2+random(rf)-(rf/2));
draw_line(208*mxa+mxa2+random(rf)-(rf/2),320*mya+mya2+random(rf)-(rf/2),336*mxa+mxa2+random(rf)-(rf/2),320*mya+mya2+random(rf)-(rf/2));
draw_line(336*mxa+mxa2+random(rf)-(rf/2),320*mya+mya2+random(rf)-(rf/2),336*mxa+mxa2+random(rf)-(rf/2),384*mya+mya2+random(rf)-(rf/2));
draw_line(336*mxa+mxa2+random(rf)-(rf/2),384*mya+mya2+random(rf)-(rf/2),208*mxa+mxa2+random(rf)-(rf/2),384*mya+mya2+random(rf)-(rf/2));
draw_line(272*mxa+mxa2+random(rf)-(rf/2),384*mya+mya2+random(rf)-(rf/2),272*mxa+mxa2+random(rf)-(rf/2),320*mya+mya2+random(rf)-(rf/2));
draw_line(400*mxa+mxa2+random(rf)-(rf/2),448*mya+mya2+random(rf)-(rf/2),400*mxa+mxa2+random(rf)-(rf/2),384*mya+mya2+random(rf)-(rf/2));
draw_line(400*mxa+mxa2+random(rf)-(rf/2),384*mya+mya2+random(rf)-(rf/2),592*mxa+mxa2+random(rf)-(rf/2),384*mya+mya2+random(rf)-(rf/2));
draw_line(592*mxa+mxa2+random(rf)-(rf/2),384*mya+mya2+random(rf)-(rf/2),592*mxa+mxa2+random(rf)-(rf/2),448*mya+mya2+random(rf)-(rf/2));
draw_line(592*mxa+mxa2+random(rf)-(rf/2),448*mya+mya2+random(rf)-(rf/2),400*mxa+mxa2+random(rf)-(rf/2),448*mya+mya2+random(rf)-(rf/2));
draw_line(464*mxa+mxa2+random(rf)-(rf/2),448*mya+mya2+random(rf)-(rf/2),464*mxa+mxa2+random(rf)-(rf/2),320*mya+mya2+random(rf)-(rf/2));
draw_line(464*mxa+mxa2+random(rf)-(rf/2),320*mya+mya2+random(rf)-(rf/2),528*mxa+mxa2+random(rf)-(rf/2),320*mya+mya2+random(rf)-(rf/2));
draw_line(528*mxa+mxa2+random(rf)-(rf/2),320*mya+mya2+random(rf)-(rf/2),528*mxa+mxa2+random(rf)-(rf/2),448*mya+mya2+random(rf)-(rf/2));
//1
draw_line(224*mxa+mxa2+random(rf)-(rf/2),368*mya+mya2+random(rf)-(rf/2),256*mxa+mxa2+random(rf)-(rf/2),368*mya+mya2+random(rf)-(rf/2));
draw_line(240*mxa+mxa2+random(rf)-(rf/2),368*mya+mya2+random(rf)-(rf/2),240*mxa+mxa2+random(rf)-(rf/2),336*mya+mya2+random(rf)-(rf/2));
draw_line(240*mxa+mxa2+random(rf)-(rf/2),336*mya+mya2+random(rf)-(rf/2),224*mxa+mxa2+random(rf)-(rf/2),352*mya+mya2+random(rf)-(rf/2));
//2
draw_line(320*mxa+mxa2+random(rf)-(rf/2),368*mya+mya2+random(rf)-(rf/2),288*mxa+mxa2+random(rf)-(rf/2),368*mya+mya2+random(rf)-(rf/2));
draw_line(288*mxa+mxa2+random(rf)-(rf/2),368*mya+mya2+random(rf)-(rf/2),320*mxa+mxa2+random(rf)-(rf/2),344*mya+mya2+random(rf)-(rf/2));
draw_line(320*mxa+mxa2+random(rf)-(rf/2),344*mya+mya2+random(rf)-(rf/2),304*mxa+mxa2+random(rf)-(rf/2),336*mya+mya2+random(rf)-(rf/2));
draw_line(304*mxa+mxa2+random(rf)-(rf/2),336*mya+mya2+random(rf)-(rf/2),288*mxa+mxa2+random(rf)-(rf/2),344*mya+mya2+random(rf)-(rf/2));
//ARROW LEFT
draw_line(432*mxa+mxa2+random(rf)-(rf/2),400*mya+mya2+random(rf)-(rf/2),416*mxa+mxa2+random(rf)-(rf/2),416*mya+mya2+random(rf)-(rf/2));
draw_line(448*mxa+mxa2+random(rf)-(rf/2),416*mya+mya2+random(rf)-(rf/2),416*mxa+mxa2+random(rf)-(rf/2),416*mya+mya2+random(rf)-(rf/2));
draw_line(432*mxa+mxa2+random(rf)-(rf/2),432*mya+mya2+random(rf)-(rf/2),416*mxa+mxa2+random(rf)-(rf/2),416*mya+mya2+random(rf)-(rf/2));
//ARROW UP
draw_line(480*mxa+mxa2+random(rf)-(rf/2),352*mya+mya2+random(rf)-(rf/2),496*mxa+mxa2+random(rf)-(rf/2),336*mya+mya2+random(rf)-(rf/2));
draw_line(496*mxa+mxa2+random(rf)-(rf/2),368*mya+mya2+random(rf)-(rf/2),496*mxa+mxa2+random(rf)-(rf/2),336*mya+mya2+random(rf)-(rf/2));
draw_line(512*mxa+mxa2+random(rf)-(rf/2),352*mya+mya2+random(rf)-(rf/2),496*mxa+mxa2+random(rf)-(rf/2),336*mya+mya2+random(rf)-(rf/2));
//ARROW RIGHT
draw_line(560*mxa+mxa2+random(rf)-(rf/2),400*mya+mya2+random(rf)-(rf/2),576*mxa+mxa2+random(rf)-(rf/2),416*mya+mya2+random(rf)-(rf/2));
draw_line(544*mxa+mxa2+random(rf)-(rf/2),416*mya+mya2+random(rf)-(rf/2),576*mxa+mxa2+random(rf)-(rf/2),416*mya+mya2+random(rf)-(rf/2));
draw_line(560*mxa+mxa2+random(rf)-(rf/2),432*mya+mya2+random(rf)-(rf/2),576*mxa+mxa2+random(rf)-(rf/2),416*mya+mya2+random(rf)-(rf/2));
//ARROW DOWN
draw_line(480*mxa+mxa2+random(rf)-(rf/2),416*mya+mya2+random(rf)-(rf/2),496*mxa+mxa2+random(rf)-(rf/2),432*mya+mya2+random(rf)-(rf/2));
draw_line(496*mxa+mxa2+random(rf)-(rf/2),400*mya+mya2+random(rf)-(rf/2),496*mxa+mxa2+random(rf)-(rf/2),432*mya+mya2+random(rf)-(rf/2));
draw_line(512*mxa+mxa2+random(rf)-(rf/2),416*mya+mya2+random(rf)-(rf/2),496*mxa+mxa2+random(rf)-(rf/2),432*mya+mya2+random(rf)-(rf/2));