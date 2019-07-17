movecycle += 1;
if (movecycle == 4){
    y += 1;
    }
if (movecycle == 12){
    y -= 1;
    }
if (movecycle == 16){
    y -= 1;
    }
if (movecycle == 24){
    y += 1;
    movecycle = 0;
    }