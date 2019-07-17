//Argument0 is Charge
totalweight=0;
for (j=4; j<8; j+=1){
    for (i=0; i<weight[j]; i+=1){
        weightlist[totalweight]=j;
        totalweight+=1;
        }
    }
weaponrand=weightlist[floor(random(totalweight))];

//CHARGE
if (argument0==1){
    obj_tor.charging=1;        
    obj_tor.chargeamount=30;
    obj_tor.sndchargecyc=0;
    obj_tor.sndcharge=0;
    obj_tor.sndchargecycmax=15;
    }
//ARCH DEVASTATOR
else if (weaponrand==4){
    if (timeline_position<700)
        timeline_position+=30;
    scr_sound("tor_fire");
    scr_tor_fire();
    scr_shakescreen(3);
    tempid=instance_create(x-80,y+235,obj_komatompfb);
    tempid.speed=global.mpfbspeed-((5-potency[4])*5);
    if (instance_number(obj_iji)==1 && obj_iji.x<x-60)
        tempid.direction=point_direction(x-80,y+235,obj_iji.x+6,obj_iji.y+30);
    else
        tempid.direction=180;
    tempid.wakeless=1;
    if (obj_tortrigger.slowdowned)
        tempid.sparkless=1;
    tempid=instance_create(x-80,y+235,obj_komatompfb);
    tempid.speed=global.mpfbspeed-((5-potency[4])*5);
    tempid.direction=130;
    tempid.wakeless=1;
    if (obj_tortrigger.slowdowned)
        tempid.sparkless=1;
    tempid=instance_create(x-80,y+235,obj_komatompfb);
    tempid.speed=global.mpfbspeed-((5-potency[4])*5);
    tempid.direction=230;
    tempid.wakeless=1;
    if (obj_tortrigger.slowdowned)
        tempid.sparkless=1;
    tempid=instance_create(x-80,y+235,obj_komatompfb);
    tempid.speed=global.mpfbspeed-((5-potency[4])*5);
    tempid.direction=110;
    tempid.wakeless=1;
    if (obj_tortrigger.slowdowned)
        tempid.sparkless=1;
    tempid=instance_create(x-80,y+235,obj_komatompfb);
    tempid.speed=global.mpfbspeed-((5-potency[4])*5);
    tempid.direction=250;
    tempid.wakeless=1;
    if (obj_tortrigger.slowdowned)
        tempid.sparkless=1;
    if (!obj_tortrigger.slowdowned){
        repeat(40-global.specialbake*30){
            tempid=instance_create(x-60+random(20),y+225+random(20),obj_mpfbspark);
            tempid.speed=3+random(12);
            tempid.direction=110+random(140);
            tempid.gravity=0.6;
            tempid.gravity_direction=0;
            }
        }
    weight[4]-=1;
    potencycount[4]+=1;
    }
//ULTRA SHOTGUN
else if (weaponrand==5){
    if (timeline_position<700)
        timeline_position+=15;
    weight[5]-=1;
    potencycount[5]+=1;
    repeat(potency[5]+3)
        instance_create(view_xview[0]+random(obj_tor.x-view_xview[0]-60),view_yview[0]+190+random(260),obj_hypershotgun);
    hypershotgun=1;
    }
//RAGE BURST
else if (weaponrand==6){
    if (timeline_position<700)
        timeline_position+=30;
    scr_tor_stomp();
    scr_sound("tor_spark");
    superstomp=0;
    weight[6]-=1;
    potencycount[6]+=1;
    }
//FRACTAL ROCKETS
else if (weaponrand==7){
    scr_sound("tor_fire");
    scr_tor_fire();
    //if (timeline_position<650)
    //    obj_tortrigger.alarm[2]=40;
    scr_shakescreen(3);
    tempid=instance_create(x-80,y+235,obj_fractalrocket);
    tempid.direction=180;
    tempid.image_single=4;
    if (!obj_tortrigger.slowdowned){
        repeat(20-global.specialbake*15){
            tempid=instance_create(x-55+random(10),y+220+random(10),obj_bigsmoke);
            tempid.speed=3+random(8);
            tempid.direction=110+random(140);
            tempid.gravity=1;
            tempid.gravity_direction=90;
            }
        }
    weight[7]-=1;
    potencycount[7]+=1;
    }