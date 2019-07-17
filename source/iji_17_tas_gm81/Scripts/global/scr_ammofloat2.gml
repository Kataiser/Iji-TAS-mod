movecycle += 1;
if (movecycle == 4){
    yadjust += 1;
    }
if (movecycle == 12){
    yadjust -= 1;
    }
if (movecycle == 16){
    yadjust -= 1;
    }
if (movecycle == 24){
    yadjust += 1;
    movecycle = 0;
    }