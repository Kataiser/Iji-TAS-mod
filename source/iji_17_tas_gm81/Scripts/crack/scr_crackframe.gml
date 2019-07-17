with (obj_frame) instance_destroy();
with (obj_crackbar) instance_destroy();
with (obj_nodecol) instance_destroy();
with (obj_noderow) instance_destroy();
with (obj_younode) instance_destroy();
with (obj_goalnode) instance_destroy();
with (obj_icenode) instance_destroy();
with (obj_binary) instance_destroy();
with (obj_colnumber) instance_destroy();
count=0;
while (count<100){
    instance_create(obj_shakescreen.x-400+(8*count),obj_shakescreen.y+172,obj_frame);
    count+=1;
    }
instance_create(obj_shakescreen.x-160,obj_shakescreen.y+175,obj_crackbar);
sweep=0;
if (global.cracking){
    while (sweep<global.colcount){
        instance_create(obj_shakescreen.x-142+(sweep*32),obj_shakescreen.y+198,obj_nodecol);
        tempid=instance_create(obj_shakescreen.x-146+(sweep*32),obj_shakescreen.y+278,obj_binary);
        tempid.image_single=sweep;
        if (sweep<global.colcount-1)
            instance_create(obj_shakescreen.x-131+(sweep*32),obj_shakescreen.y+202,obj_noderow);
        sweep+=1;
        }
    //Draw colnumbers
    tempid=instance_create(obj_shakescreen.x-107,obj_shakescreen.y+184,obj_colnumber);
    tempid.image_single=1;
    if (global.security>1){
    tempid=instance_create(obj_shakescreen.x-75,obj_shakescreen.y+184,obj_colnumber);
    tempid.image_single=3;
    }
    if (global.security>2){
    tempid=instance_create(obj_shakescreen.x-43,obj_shakescreen.y+184,obj_colnumber);
    tempid.image_single=0;
    tempid=instance_create(obj_shakescreen.x-11,obj_shakescreen.y+184,obj_colnumber);
    tempid.image_single=2;
    }  
    if (global.security>3){
    tempid=instance_create(obj_shakescreen.x+21,obj_shakescreen.y+184,obj_colnumber);
    tempid.image_single=2;
    }  
    if (global.security>4){
    tempid=instance_create(obj_shakescreen.x+53,obj_shakescreen.y+184,obj_colnumber);
    tempid.image_single=0;
    tempid=instance_create(obj_shakescreen.x+85,obj_shakescreen.y+184,obj_colnumber);
    tempid.image_single=4;
    }  
    if (global.security>5){
    tempid=instance_create(obj_shakescreen.x+117,obj_shakescreen.y+184,obj_colnumber);
    tempid.image_single=0;
    tempid=instance_create(obj_shakescreen.x+149,obj_shakescreen.y+184,obj_colnumber);
    tempid.image_single=1;
    }  
    if (global.security>6){
    tempid=instance_create(obj_shakescreen.x+181,obj_shakescreen.y+184,obj_colnumber);
    tempid.image_single=3;
    }  
    if (global.security>7){
    tempid=instance_create(obj_shakescreen.x+213,obj_shakescreen.y+184,obj_colnumber);
    tempid.image_single=0;
    tempid=instance_create(obj_shakescreen.x+245,obj_shakescreen.y+184,obj_colnumber);
    tempid.image_single=2;
    }  
    if (global.security>8){
    tempid=instance_create(obj_shakescreen.x+277,obj_shakescreen.y+184,obj_colnumber);
    tempid.image_single=2;
    }  
    if (global.security>9){
    tempid=instance_create(obj_shakescreen.x+309,obj_shakescreen.y+184,obj_colnumber);
    tempid.image_single=0;
    tempid=instance_create(obj_shakescreen.x+341,obj_shakescreen.y+184,obj_colnumber);
    tempid.image_single=4;
    }  
    //Draw nodes
    row=0; col=0;
    younodeim+=1;
    if (younodeim==4)
        younodeim=0;
    while (col<global.colcount){
        while(row<5){
            if (global.nodes[row,col]==1){
            tempid=instance_create(obj_shakescreen.x-140+(col*32),obj_shakescreen.y+200+(row*16),obj_icenode);
            temprand=random(1);
            if (temprand<0.04 && global.cracklevel!=10)
                tempid.visible=0;
            }
            if (global.nodes[row,col]==2)
            (instance_create(obj_shakescreen.x-140+(col*32),obj_shakescreen.y+200+(row*16),obj_younode)).image_single=younodeim;
            if (global.nodes[row,col]==3)
            instance_create(obj_shakescreen.x-140+(col*32),obj_shakescreen.y+200+(row*16),obj_goalnode);
            row+=1;
            }
        row=0;
        col+=1;
        }
    }