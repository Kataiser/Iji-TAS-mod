if (voice<=0){
    temprand=random(1);
    if (temprand<1){
        voice=200+random(200);
        voicenum=ceil(random(2));
        if (obj_iosa.hp<200){
            voicenum=ceil(random(3));
            if (voicenum==3)
                voicenum=4;
            }
        if (obj_iosa.hp<40)
            voicenum=4;
        scr_voice("ext_ansaksie",voicenum);
        }
    }