//Sectors
if (global.textid=="chatz1")
    global.chats=1;
if (global.textid=="chatz2")
    global.chats=1;

if (global.textid=="chat11")
    global.chats=1;
if (global.textid=="chat12")
    global.chats=6;
if (global.textid=="chat13")
    global.chats=5;
if (global.textid=="chat14")
    global.chats=1;
if (global.textid=="chat15")
    global.chats=3;
if (global.textid=="chat16")
    global.chats=7;
if (global.textid=="chat17")
    global.chats=3;
if (global.textid=="chat18")
    global.chats=1;
if (global.textid=="chat1mia")
    global.chats=3;

if (global.textid=="chat21")
    global.chats=8;
if (global.textid=="chat22")
    global.chats=1;
if (global.textid=="chat23")
    global.chats=1;
if (global.textid=="chat24")
    global.chats=6;
if (global.textid=="chat25")
    global.chats=2;
if (global.textid=="chat26")
    global.chats=1;
if (global.textid=="chat27")
    global.chats=7;
if (global.textid=="chat29")
    global.chats=2;
if (global.textid=="chat2mia")
    global.chats=3;

if (global.textid=="chat31" && global.totkills>2*global.neutralkc)
    global.chats=8;
if (global.textid=="chat31" && global.totkills<=2*global.neutralkc)
    global.chats=10;
if (global.textid=="chat32")
    global.chats=1;
if (global.textid=="chat33")
    global.chats=3;
if (global.textid=="chat34")
    global.chats=9+global.bosshint;
if (global.textid=="chat35"){
    if (global.truce2 && !obj_krotera.deathbyiji)
        global.chats=13;
    else if (global.truce2 || !obj_krotera.deathbyiji)
        global.chats=12;
    else
        global.chats=11;
    }
if (global.textid=="chat36")
    global.chats=13;
if (global.textid=="chat37")
    global.chats=24;
if (global.textid=="chat3mia")
    global.chats=7;

if (global.textid=="chat41")
    global.chats=3;
if (global.textid=="chat42")
    global.chats=1;
if (global.textid=="chat44"){
    if (global.specialtrigger1==1 && global.kills+global.totkills<=4*global.neutralkc)
        global.chats=4;
    else
        global.chats=1;
    }
if (global.textid=="chat45"){
    if (global.specialtrigger1==1 && global.kills+global.totkills<=4*global.neutralkc)
        global.chats=9;
    else
        global.chats=4;
    }
if (global.textid=="chat46")
    global.chats=4;
if (global.textid=="chat47")
    global.chats=1;
if (global.textid=="chat4mia")
    global.chats=14;

if (global.textid=="chat51")
    global.chats=5;
if (global.textid=="chat52")
    global.chats=3;
if (global.textid=="chat53")
    global.chats=1;
if (global.textid=="chat54")
    global.chats=5+global.bosshint;
if (global.textid=="chat55")
    global.chats=4;
if (global.textid=="chat56")
    global.chats=1;
if (global.textid=="chat57")
    global.chats=1;
if (global.textid=="chat58")
    global.chats=9;
if (global.textid=="chat5mia")
    global.chats=4;

if (global.textid=="chat61")
    global.chats=1;
if (global.textid=="chat62")
    global.chats=2;
if (global.textid=="chat63")
    global.chats=1;
if (global.textid=="chat64")
    global.chats=1;
if (global.textid=="chat65")
    global.chats=2;
if (global.textid=="chat66")
    global.chats=1;
if (global.textid=="chat67")
    global.chats=1;
if (global.textid=="chat68")
    global.chats=1;
if (global.textid=="chat69")
    global.chats=1;
if (global.textid=="chat6a")
    global.chats=1;
if (global.textid=="chat6mia")
    global.chats=6;

if (global.textid=="chat71"){
    if (global.healthlevel<10)
        global.chats=5;
    else
        global.chats=4;
    }
if (global.textid=="chat72")
    global.chats=2;
if (global.textid=="chat73")
    global.chats=8;
if (global.textid=="chat74")
    global.chats=6+global.bosshint;
if (global.textid=="chat75")
    global.chats=2;
if (global.textid=="chat76")
    global.chats=1;
if (global.textid=="chat78")
    global.chats=5;
if (global.textid=="chat79")
    global.chats=1;
if (global.textid=="chat7mia")
    global.chats=14;

if (global.textid=="chat81")
    global.chats=5;
if (global.textid=="chat82")
    global.chats=1;
if (global.textid=="chat83")
    global.chats=1;
if (global.textid=="chat84")
    global.chats=8;
if (global.textid=="chat85")
    global.chats=1;
if (global.textid=="chat86")
    global.chats=5;
if (global.textid=="chat87")
    global.chats=2;
if (global.textid=="chat88")
    global.chats=1;
if (global.textid=="chat89")
    global.chats=1;
if (global.textid=="chat8a")
    global.chats=3;
if (global.textid=="chat8mia")
    global.chats=3;

if (global.textid=="chat91"){
    if (global.totkills>8*global.berserkkc)
        global.chats=6;
    else
        global.chats=4;
    }
if (global.textid=="chat92")
    global.chats=3;
if (global.textid=="chat93"){
    if (global.specialtriggerb2)
        global.chats=20;
    else
        global.chats=19;
    }
if (global.textid=="chat94")
    global.chats=1+global.bosshint;
if (global.textid=="chat95"){
    if (global.specialtriggerb2==1)
        global.chats=6;
    else
        global.chats=3;
    }
if (global.textid=="chat96")
    global.chats=3;
if (global.textid=="chat97")
    global.chats=1;
if (global.textid=="chat98")
    global.chats=7;
if (global.textid=="chat99")
    global.chats=1;
if (global.textid=="chat9a")
    global.chats=1;
if (global.textid=="chat9b")
    global.chats=1;
if (global.textid=="chat9c")
    global.chats=2;
if (global.textid=="chat9d")
    global.chats=7;
if (global.textid=="chat9e")
    global.chats=3;
if (global.textid=="chat9e01")
    global.chats=1;
if (global.textid=="chat9e02")
    global.chats=2;
if (global.textid=="chat9e03")
    global.chats=4;
if (global.textid=="chat9e04")
    global.chats=1;
if (global.textid=="chat9e05")
    global.chats=5;
if (global.textid=="chat9e06")
    global.chats=3;
if (global.textid=="chat9e07")
    global.chats=1;
if (global.textid=="chat9e08")
    global.chats=3;
if (global.textid=="chat9e09")
    global.chats=8;
if (global.textid=="chat9e10")
    global.chats=1;
if (global.textid=="chat9e11")
    global.chats=4;
if (global.textid=="chat9e12")
    global.chats=4;
if (global.textid=="chat9e13")
    global.chats=1;
if (global.textid=="chat9e14")
    global.chats=3;
if (global.textid=="chat9e15")
    global.chats=1;
if (global.textid=="chat9e16")
    global.chats=6;
if (global.textid=="chat9e17")
    global.chats=5;
if (global.textid=="chat9e18")
    global.chats=2;
if (global.textid=="chat9e19")
    global.chats=1;
if (global.textid=="chat9e20")
    global.chats=3;
if (global.textid=="chat9e21")
    global.chats=1;
if (global.textid=="chat9e22")
    global.chats=9;
if (global.textid=="chat9e23")
    global.chats=9;
if (global.textid=="chat9e24")
    global.chats=1;
if (global.textid=="chat9e25")
    global.chats=5;
if (global.textid=="chat9e26")
    global.chats=1;
if (global.textid=="chat9f")
    global.chats=2;
if (global.textid=="chat9mia"){
    if (global.specialtrigger1==0)
        global.chats=4;
    else
        global.chats=9;
    }

if (global.textid=="chatx1"){
    if (global.killdata[797]==1 && global.totkills>9*global.neutralkc)
        global.chats=13;
    else
        global.chats=12;
    }
if (global.textid=="chatx2")
    global.chats=1;
if (global.textid=="chatx3")
    global.chats=2;
if (global.textid=="chatx4")
    global.chats=13;
if (global.textid=="chatx5")
    global.chats=7;
if (global.textid=="chatx6"){
    if (obj_sabot.killedasha2)
        global.chats=10;
    else
        global.chats=11;
    }
if (global.textid=="chatx7")
    global.chats=27;
if (global.textid=="chatx8")
    global.chats=2;
if (global.textid=="chatxa")
    global.chats=1;
if (global.textid=="chatxb")
    global.chats=12;
if (global.textid=="chatxc")
    global.chats=1;
if (global.textid=="chatxd")
    global.chats=2;
if (global.textid=="chatxe")
    global.chats=6;
if (global.textid=="chatxf")
    global.chats=4;
if (global.textid=="chatxg")
    global.chats=3;
if (global.textid=="chatxh")
    global.chats=3;
if (global.textid=="chatxi" && global.specialtrigger1==1)
    global.chats=4;
if (global.textid=="chatxi" && global.specialtrigger1==0)
    global.chats=1;
if (global.textid=="chatxj")
    global.chats=1;
if (global.textid=="chatxk")
    global.chats=1;
if (global.textid=="chatxl")
    global.chats=1;
if (global.textid=="chatxm")
    global.chats=1;
if (global.textid=="chatxn")
    global.chats=1;
if (global.textid=="chatxo")
    global.chats=1;
if (global.textid=="chatxp")
    global.chats=1;
if (global.textid=="chatxq")
    global.chats=6;
if (global.textid=="chatxr")
    global.chats=5;
if (global.textid=="chatxs")
    global.chats=4;
if (global.textid=="chatxt")
    global.chats=2;
if (global.textid=="chatxu")
    global.chats=1;
if (global.textid=="chatxv")
    global.chats=3;
if (global.textid=="chatxx")
    global.chats=5;
if (global.textid=="chatxy")
    global.chats=24;
if (global.textid=="chatxz"){
    if (global.wty)
        global.chats=1;
    else
        global.chats=2;
    }
if (global.textid=="chatxaa")
    global.chats=9;
if (global.textid=="chatxab")
    global.chats=1;
if (global.textid=="chatxmia"){
    if (obj_iji.xdanleft || global.specialtrigger1==0)
        global.chats=4;
    else
        global.chats=8;
    }

scr_cutchatlength();