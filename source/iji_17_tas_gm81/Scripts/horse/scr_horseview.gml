if (global.shakescreen <= 0){
    obj_shakescreen.x = x;
    obj_shakescreen.y = y;
    }
if (global.shakescreen > 10){
    obj_shakescreen.x = x-30+random(60);
    obj_shakescreen.y = y-30+random(60);
    }
if (global.shakescreen > 6 && global.shakescreen < 11){
    obj_shakescreen.x = x-16+random(32);
    obj_shakescreen.y = y-16+random(32);
    }
if (global.shakescreen > 3 && global.shakescreen < 7){
    obj_shakescreen.x = x-8+random(16);
    obj_shakescreen.y = y-8+random(16);
    }
if (global.shakescreen > 0 && global.shakescreen < 4){
    obj_shakescreen.x = x-3+random(6);
    obj_shakescreen.y = y-3+random(6);
    }
if (global.shakescreen>0)
    global.shakescreen-=1;

//Update Shakescreen position
x=floor(x);
y=floor(y);
obj_shakescreen.x=floor(obj_shakescreen.x);
obj_shakescreen.y=floor(obj_shakescreen.y);
