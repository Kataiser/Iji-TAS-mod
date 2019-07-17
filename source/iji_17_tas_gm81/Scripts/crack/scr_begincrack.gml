//Begin cracking
with(obj_pushbox) instance_destroy();
instance_create(obj_iji.x,obj_iji.y,obj_cracktext);
global.ignoreall=1;
obj_iji.goingleft=0;
obj_iji.goingright=0;
global.running=0;
obj_iji.cannotpause=1;

global.cracking=0;
if (global.security==1) global.colcount=3;
if (global.security==2) global.colcount=4;
if (global.security==3) global.colcount=6;
if (global.security==4) global.colcount=7;
if (global.security==5) global.colcount=9;
if (global.security==6) global.colcount=11;
if (global.security==7) global.colcount=12;
if (global.security==8) global.colcount=14;
if (global.security==9) global.colcount=15;
if (global.security==10) global.colcount=17;
row=0; col=0;
while(col<global.colcount){
    while(row<5){
        global.nodes[row,col]=0;
        row+=1;
        }
    row=0;
    col+=1;
    }
global.nodes[0,0]=2;
global.nodes[4,global.colcount-1]=3;
global.yourow=0;
global.youcol=0;

//Randomize dark blue nodes
sweepnum=1;
while (sweepnum<global.security+1){
    if (sweepnum=1){icenum=1; colnum=1}
    if (sweepnum=2){icenum=3; colnum=2}
    if (sweepnum=3){icenum=2; colnum=4}
    if (sweepnum=4){icenum=2; colnum=5}
    if (sweepnum=5){icenum=4; colnum=7}
    if (sweepnum=6){icenum=1; colnum=9}
    if (sweepnum=7){icenum=3; colnum=10}
    if (sweepnum=8){icenum=2; colnum=12}
    if (sweepnum=9){icenum=2; colnum=13}
    if (sweepnum=10){icenum=4; colnum=15}
    sweepnum+=1;
    marknum=0;
    while(marknum<icenum){
        mark=floor(random(5));
        if (!global.nodes[mark,colnum]){
            global.nodes[mark,colnum]=1;
            marknum+=1;
            }
        }
    }