if (global.sector==6){

if (global.textid=="chat61_1"){
if (global.kills+global.totkills>5*global.neutralkc){
    text[0]="IJI: Great, now I've got the Komato AND their Assassins on me! Wait, there's gotta be more control rooms, like the one Dan was sitting in. Maybe I can call for him from one of them! That's just gotta work!";
    portrait=12;
    }
else{
    text[0]="IJI: Great, now I've got the Komato AND their Assassins on me| I don't know for how long I'll survive in here! Wait, there's gotta be more control rooms, like the one Dan was sitting in. Maybe I can call for him from one of them! That's just gotta work!";
    portrait=9;
    }
outline=1;
pages=1;
obj_iji.startmusics=1;}

if (global.textid=="chat62_1"){
text[0]="IJI: It's locked! There's gotta be a terminal somewhere to open it. Dan would know.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat62_2"){
text[0]="IJI: Damn it! Find a control room, then worry about the rest! Gotta find that stupid terminal to open this door first.";
portrait=2;
outline=1;
pages=1;}

if (global.textid=="chat63_1"){
if (obj_sabot.herochat==0)
    text[0]="IJI: I guess I should use the arrows and the 1 and 2 keys to control this.";
else if (obj_sabot.herochat==1)
    text[0]="IJI: Hmm| I need to stay behind those boxes in the background more to avoid the searchlight and its missiles. Wait a minute, I don't have time for this anyway!";
else if (obj_sabot.herochat==2)
    text[0]="IJI: Right, I'm starting to get the hang of it. I don't think there's a lot of levels in this game though. Wait a minute, I don't have time for this anyway!";
else if (obj_sabot.herochat==3)
    text[0]="IJI: So I beat it once, but I didn't beat the hard mode. Wait a minute, I don't have time for this anyway!";
else if (obj_sabot.herochat==4){
    if (obj_sabot.killedyuka==1)
        text[0]="IJI: Alright, I beat it more than once| but it just gets harder every time! I'm gonna kill the guy who made this. Wait, that was Yukabacera. I already did.";
    else
        text[0]="IJI: Alright, I beat it more than once| but it just gets harder every time! I'm gonna kill the guy who made this.";
    }
portrait=1;
outline=1;
pages=1;}

if (global.textid=="chat64_1"){
text[0]="IJI: It's a map of the Sector! If I keep going in this direction, I should find another control room on the ninth floor.";
if (global.kills+global.totkills>5*global.neutralkc)
    portrait=1;
else
    portrait=6;
outline=1;
pages=1;
global.erasetop=0;
global.topmessage="MAP DOWNLOADED TO PAUSE MENU";
global.ignorestation=120;
obj_sabot.sec6mapped=1;
scr_sound("glo_cracksuccess");
}

if (global.textid=="chat65_1"){
global.cannotskipchat=1;
if ((global.totkills+global.kills)>6*global.berserkkc){
    text[0]="IJI: I did it! I found the control room, all on my own!";
    pages=1;
    portrait=2;
    }
else if ((global.totkills+global.kills)>6*global.neutralkc){
    text[0]="IJI: I did it! I found the control room, all on my own!";
    text[1]="I'm finally safe. I don't have to kill any more people| just relax and calm down.";
    pages=2;
    portrait=2;
    }
else{
    text[0]="IJI: I did it! I found the control room, all on my own!";
    text[1]="I'm finally safe. I don't have to see any more people die| just relax and calm down.";
    pages=2;
    portrait=9;
    }
outline=1;}
if (global.textid=="chat65_2"){
if (global.specialtrigger32)
    text[0]="IJI: That logbook| my own brother deceiving me? It can't be true| it just can't be.";
else
    text[0]="IJI: Okay. Here we go.";
portrait=12;
outline=1;
pages=1;
instance_create(obj_iji.x,obj_iji.y,obj_end);}

if (global.textid=="chat66_1"){
text[0]="IJI: 8th floor? The exit's gotta be right above me!";
portrait=1;
outline=1;
pages=1;}

if (global.textid=="chat67_1"){
text[0]="IJI: Uh oh. I don't know why, but this teleporter| this could be really, really dangerous.";
portrait=1;
outline=1;
pages=1;}

if (global.textid=="chat68_1"){
text[0]="You got YUKABACERA'S SCRAMBLER! This device was once invented to translate Komato-Tasen speech to any human language, but after one too many attempts to improve the code, he eventually broke it completely. When activated, the Scrambler will intercept";
text[1]="anything you say, hear or even read, and bypass your personal Nanofield's more sophisticated algorithms. As a side-effect, the translation tends to get worse the longer a conversation goes on. Activate the Scrambler in the help/info part of the Pause menu.";
portrait=0;
outline=0;
pages=2;}

if (global.textid=="chat69_1"){
text[0]="IJI: Hm, now what did that terminal do? Activate some teleporter on floor 7? Must be somewhere above.";
if (global.kills+global.totkills>5*global.neutralkc)
    portrait=1;
else
    portrait=5;
outline=1;
pages=1;}

if (global.textid=="chat6a_1"){
text[0]="IJI: GOOD GRIEF, I never thought that'd actually work! I really hope that's the most ridiculous thing I'm gonna have to do today.";
portrait=2;
outline=1;
pages=1;
with (obj_trigger){
    if (textid=="chat6a")
        instance_destroy();
    }
}


if (global.textid=="chat6mia_1"){
text[0]="IJI: Wha - another ribbon?";
if (global.totkills+global.kills>5*global.neutralkc)
    portrait=5;
else
    portrait=9;
outline=1;
pages=1;
}
if (global.textid=="chat6mia_2"){
if (global.totkills+global.kills>5*global.neutralkc){
    text[0]="IJI: Heh. Dad really showed us all around this place. I guess that's why this area is so strangely familiar.";
    portrait=1;
    }
else{
    text[0]="IJI: Heh. Dad really showed us all around this place. I guess that's why this area is so| strangely familiar.";
    portrait=6;
    }
outline=1;
pages=1;}
if (global.textid=="chat6mia_3"){
if (global.totkills+global.kills>5*global.neutralkc){
    text[0]="IJI: Okay, maybe things aren't that bad, right Mia? Once I find that control room, I'll call for Dan with the speakers, and he'll reply. He's gotta be somewhere - I think. Damn it!";
    portrait=2;
    }
else{
    text[0]="IJI: Okay, maybe| maybe things aren't that bad, right Mia? Once I find that control room, I'll call for Dan with the speakers, and he'll reply. He's gotta be somewhere| I think. Damn it!";
    portrait=5;
    }
outline=1;
pages=1;}
if (global.textid=="chat6mia_4"){
text[0]="IJI: |";
portrait=12;
outline=1;
pages=1;}
if (global.textid=="chat6mia_5"){
if (global.totkills+global.kills>5*global.neutralkc){
    text[0]="IJI: Right, Dan's counting on me. He's just as scared as I was at first, he just acts tough. I think he really cares for me. I know I didn't give him the attention he deserved| couldn't help him with his problems|";
    portrait=1;
    pages=1;
    }
else{
    text[0]="IJI: Wait, no time to lose my head. Dan's counting on me. I mean, he's just as scared as I am, he just acts tough. I think he really cares for me. I know I didn't always give him the attention he deserved| couldn't help him with his problems|";
    portrait=5;
    pages=1;
    }
outline=1;}
if (global.textid=="chat6mia_6"){
text[0]="IJI: Wait, I don't have time for this! The control room's so close!";
portrait=2;
outline=1;
pages=1;}

}





if (global.sector==7 || global.sector==13){

if (global.textid=="chat71_1"){
text[0]="DAN: Okay, the old armory is up ahead. Remember, the Komato set up a lift there leading straight up into their ship. If we can destroy their Phantom Hammer, they'll have to send down more ships, which'll buy us some time. But first things first -";
text[1]="there are heavy Komato forces just ahead. Try to find ways around them.";
portrait=99;
outline=2;
pages=2;
obj_iji.startmusics=1;}
if (global.textid=="chat71_2"){
if (global.totkills+global.kills>6*global.berserkkc)
    text[0]="IJI: Thanks, but I'll be fine. I can take care of a Komato or two.$";
else if (global.totkills+global.kills>6*global.neutralkc)
    text[0]="IJI: Thanks, but I'll be fine.";
else
    text[0]="IJI: Thanks, I'll see what I can do.";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat71_3"){
text[0]="DAN: By the way, I keep hearing strange noises around this control room, but - it's probably nothing. It's been noisy enough since the Komato landed anyway.";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat71_4"){
text[0]="IJI: Okay. Just stay safe in there.";
portrait=12;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat71_5"){
text[0]="DAN: One more thing. Things are going to get even more dangerous from here on. I really think you should upgrade your Health as much as possible - don't forget that it's your most important stat.";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}

if (global.textid=="chat72_1"){
text[0]="DAN: This is the armory, and that's the lift to the Komato ship. Be as careful as you can up there, and try to find the Phantom Hammer. I have no idea what the weapon looks like, so you're on your own. Good luck.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat72_2"){
if (global.totkills+global.kills>6*global.berserkkc){
    text[0]="IJI: Don't worry - they won't even see me coming.";
    portrait=2;
    }
else{
    text[0]="IJI: Don't worry. I think can do this.";
    portrait=1;
    }
outline=1;
pages=1;}

if (global.textid=="chat73_1"){
text[0]="IJI: Dan, it's me - I destroyed some huge weapon up there. I think it was the Phantom Hammer.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat73_2"){
text[0]="DAN: Fantastic! That'll give us more time.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat73_3"){
text[0]="IJI: Hehe, I told you I could do it!";
portrait=8;
outline=1;
pages=1;}
if (global.textid=="chat73_4"){
text[0]="DAN: It's good to see you're getting more confident. Look, I know what you're going through, so| I'm sorry for all this.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat73_5"){
text[0]="IJI: What's that all of a sudden? You don't have to apologize. I feel like I finally understand what's going on, now. I feel more determined.";
if (global.totkills+global.kills>6*global.berserkkc)
    portrait=12;
else
    portrait=11;
outline=1;
pages=1;}
if (global.textid=="chat73_6"){
text[0]="IJI: And when I headed up into the ship, I could see all the way to the horizon| or what's left of it.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat73_7"){
text[0]="DAN: Look, don't let that distract you. We need to get the Komato out of here, then we can worry about the rest.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat73_8"){
text[0]="IJI: You're right, just standing around talking won't save anyone. I have to get moving before they catch up to me. Talk to you soon!";
portrait=1;
outline=1;
pages=1;}

if (global.textid=="chat74_1"){
global.cannotskipchat=1;
text[0]="PROXIMA: Channel 12 open. Transmit identification. Down two.";
portrait=106;
outline=4;
pages=1;
obj_iji.startmusics=1;
obj_sabot.ultimatecannotpause=0;}
if (global.textid=="chat74_2"){
text[0]="IJI: What?";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat74_3"){
text[0]="PROXIMA: Channel 12 open. Transmit identification. Down one.";
portrait=106;
outline=4;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat74_4"){
text[0]="IJI: Oh, my name's Iji, and -";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat74_5"){
text[0]="PROXIMA: Identification failed. Terminating.";
portrait=106;
outline=4;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat74_6"){
text[0]="IJI: Damn it!";
portrait=2;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat74_7"){
text[0]="IJI: (Wait, stay cool! Even something this big must have a weakness. Using those terminals and electric pads are a start, and with the way that thing hovers so effortlesly, it must be made of some really light materials. I bet I can just kick it";
text[1]="out of the way - preferably into something nasty.)";
portrait=1;
outline=1;
pages=2;
if (!global.iimsx){
    global.iimsx=1;
    global.ignoremessagescroll=30;
    }
obj_iji.startmusics=1;}


if (global.textid=="chat75_1"){
global.cannotskipchat=1;
if (global.suddendeath){
    text[0]="IJI: Okay, that was underwhelming.";
    global.specialtriggerb2=1;
    portrait=1;
    }
else if (obj_proximatrigger.supercharge){
    text[0]="IJI: Huh, I guess it pays to be prepared.";
    global.specialtriggerb2=0;
    portrait=1;
    }
else if (global.healthlevel<=5){
    text[0]="IJI: Sheesh! Maybe I should've boosted my Health a bit before a fight like this| nah.";
    global.specialtriggerb2=0;
    portrait=1;
    }
else if (global.hp>=global.healthlevel*2){
    text[0]="IJI: Huh. Was that supposed to be tough? It looked pretty dangerous though.";
    global.specialtriggerb2=1;
    portrait=2;
    }
else if (global.hp>=global.healthlevel){
    text[0]="IJI: Phew! That was tough.";
    global.specialtriggerb2=0;
    portrait=2;
    }
else{
    text[0]="IJI: Damn, that was close!";
    global.specialtriggerb2=0;
    portrait=2;
    }
outline=1;
pages=1;
}
if (global.textid=="chat75_2"){
text[0]="IJI: Looks like the security's getting extreme around here. I gotta get moving before they send down more ships and nail the planetary shield generator!";
outline=1;
pages=1;
portrait=1;
global.sector=7;
obj_sabot.cannotrestart=1;
if (instance_number(obj_end)==0)
    instance_create(obj_iji.x,obj_iji.y,obj_end)
}

if (global.textid=="chat76_1"){
text[0]="IJI: Wait, this is the wrong way. Isn't this where I came from?";
portrait=1;
outline=1;
pages=1;
}

if (global.textid=="chat78_1"){
text[0]="VATEILIKA: Anomaly! It's been a while.";
portrait=116;
outline=3;
pages=1;
}
if (global.textid=="chat78_2"){
text[0]="IJI: Huh? You?";
portrait=1;
outline=1;
pages=1;
}
if (global.textid=="chat78_3"){
text[0]="VATEILIKA: Yeah, remember me? `Sector 3`? The truce? I don't know what you've been up to since then, but I snuck into this ship trying to find some good weapons. To be honest though, I didn't dare to go any farther.";
portrait=116;
outline=3;
pages=1;
}
if (global.textid=="chat78_4"){
text[0]="IJI: What? You're trying to raid a Komato ship alone!?";
portrait=1;
outline=1;
pages=1;
}
if (global.textid=="chat78_5"){
text[0]="VATEILIKA: Haha, much like yerself! I like you, human. You got some serious guts. Tell you what, I've found all sorts of things up here, so just give me a tap on the shoulder with "+chr(global.usekey)+" and I'll fill you right up with some Health and ammo. All I want in";
text[1]="return is a tiny bit of Nano. Oh, but I haven't got any Pulse ammo - sorry 'bout that.";
portrait=116;
outline=3;
pages=2;
}

if (global.textid=="chat79_1"){
scr_vateilikashop();
portrait=116;
outline=3;
pages=1;
}

if (global.textid=="chat7mia_1"){
text[0]="IJI: Another dead end. Another ribbon, somehow. I don't even care if I'm seeing things, at least I can catch my breath again.";
if (global.kills+global.totkills<=6*global.neutralkc)
    portrait=5;
else
    portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat7mia_2"){
text[0]="DAN: Iji, it's me. How are you doing? You've been fighting for a long time without food or sleep, now.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat7mia_3"){
text[0]="IJI: Oh| actually, I haven't noticed. I've been thinking of Mia and you, and it's just kept me going.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat7mia_4"){
text[0]="DAN: Mia|";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat7mia_5"){
text[0]="IJI: Yeah. You know, I could always rely on her. When mom left, and I had to take her place, Mia still looked up to me. I don't know why you and me were never closer, but|";
if (global.kills+global.totkills<=6*global.neutralkc)
    portrait=5;
else
    portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat7mia_6"){
text[0]="DAN: Heh. Mia was so young. And a girl. You always took her side.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat7mia_7"){
text[0]="IJI: Err, Dan?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat7mia_8"){
text[0]="DAN: Yeah?";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat7mia_9"){
text[0]="IJI: You're not angry, right?";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat7mia_10"){
text[0]="DAN: No, no. Don't worry, we were only kids.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat7mia_11"){
text[0]="IJI: But we're family! I'm sorry that I only ever cared about Mia.$";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat7mia_12"){
text[0]="DAN: Don't apologize! I always looked up to you too, so you've gotta hold your head high. We don't have time to argue about this.$";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat7mia_13"){
text[0]="IJI: Heh. Thanks, that makes me feel better. Talk to you soon!";
if (global.totkills+global.kills>6*global.berserkkc)
    portrait=12;
else
    portrait=8;
outline=1;
pages=1;}
if (global.textid=="chat7mia_14"){
text[0]="DAN: Right.";
portrait=99;
outline=2;
pages=1;}

}





if (global.sector==8){

if (global.textid=="chat81_1"){
if (global.specialtriggerb2==1)
    text[0]="IJI: Dan, I just took out some kind of Komato security robot! It was a piece of cake, but I hope I didn't waste too much time.";
else
    text[0]="IJI: Dan, I just took out some kind of Komato security robot! It was really tough, but I hope I didn't waste too much time.";
portrait=2;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat81_2"){
text[0]="DAN: Good job, sis! And it's alright, I think we're relatively safe, but you have to push on and get to Sector X - the Tasen lifts are starting to run out of power since the Komato arrived. This is Sector 8, and the Komato have built quite a defensive";
text[1]="force here - be extremely careful!";
portrait=99;
outline=2;
pages=2;
obj_iji.startmusics=1;}
if (global.textid=="chat81_3"){
text[0]="IJI: Got it!";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat81_4"){
text[0]="DAN: Oh, and those noises around my control room started again, but I've no idea what it could be. Nothing bad's happened so far though, so I'm not worried anymore.";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat81_5"){
text[0]="IJI: That's good to hear. Moving out!";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}

if (global.textid=="chat82_1"){
text[0]="DAN: Oh, you just found a Trapmine, a device you can place on a teleporter destination by crouching on it and pressing "+chr(global.firekey)+". The mine will destroy the teleporter destination when someone tries to use it.";
portrait=99;
outline=2;
pages=1;}

if (global.textid=="chat83_1"){
text[0]="DAN: That door and the lift beyond need to be powered up - use the controls to the left. It might take a while for them to activate, so be prepared to defend that room.";
portrait=99;
outline=2;
pages=1;
with (obj_terminal){
    if (trigger==25){
        ready=1;
        cracked=0;
        sprite_index=spr_terminal;
        }
    }
}

if (global.textid=="chat84_1"){
text[0]="DAN: HOLY CRAP! Sis, are you okay?";
portrait=99;
outline=2;
pages=1;
obj_iji.nocameras=1;}
if (global.textid=="chat84_2"){
text[0]="IJI: Whoa, I think so! Wh-What happened!?";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chat84_3"){
text[0]="DAN: A second Komato ship has already landed, and just blew up the planetary shield generator with a Phantom Hammer shot! There's no time to lose now, you've got to head for Sector X!";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat84_4"){
text[0]="IJI: Got it!";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat84_5"){
text[0]="DAN: Just be sure to check out the computer terminals nearby, I think one of them| wait. It's that strange sound here again, but now it's| what the -";
text[1]="AAAAAHH!";
portrait=99;
outline=2;
pages=2;}
if (global.textid=="chat84_6"){
text[0]="IJI: DAN! What happened? Are you okay!?";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chat84_7"){
text[0]="???: Listen close, Anomaly. I think I know where you're headed, and there's a corridor ahead that I know you must cross one way or the other. Your friend will be waiting there, I assure you. I suggest you go get him before I change my mind. Ready? Go!";
portrait=115;
outline=4;
pages=1;
with (obj_sabot)
    scr_music("mus_asha");
obj_iji.startmusics=1;}
if (global.textid=="chat84_8"){
text[0]="IJI: !";
portrait=2;
outline=1;
pages=1;
obj_iji.startmusics=1;}

if (global.textid=="chat85_1"){
text[0]="IJI: Right. It's an easter egg. Very funny.";
portrait=1;
outline=1;
pages=1;
}

if (global.textid=="chat86_1"){
global.cannotskipchat=1;
text[0]="IJI: DAN! I -";
portrait=2;
outline=1;
pages=1;
obj_iji.cannotpause=1;
obj_sabot.ultimatecannotpause=1; //Ugly fix, but seriously, CANNOT PAUSE
obj_iji.holdafterchat=1;
with (obj_sabot)
    scr_music("mus_lightstroke");
}
if (global.textid=="chat86_2"){
if (instance_number(obj_armed_trapmine)==1 && obj_armed_trapmine.x>9600)
    text[0]="DAN: Hhh! Stay away, it's a trap!";
else
    text[0]="DAN: Hhh! Behind you, the Tr-";
portrait=98;
outline=2;
pages=1;}
if (global.textid=="chat86_3"){
text[0]="ASHA: HOLD IT! One move, and the human DIES!";
portrait=103;
outline=4;
pages=1;
if (obj_dan.sprite_index==spr_dan_sit){
    obj_dan.sprite_index=spr_dan_hold;
    obj_dan.image_single=0;
    instance_create(obj_dan.x+32,obj_dan.y,obj_megaflash);
    scr_sound("dan_choke");
    }
with (obj_sabot)
    scr_music("mus_asha");
}
if (global.textid=="chat86_4"){
text[0]="IJI: |You!";
portrait=10;
outline=1;
pages=1;}
if (global.textid=="chat86_5"){
if (global.kills+global.totkills>8*global.neutralkc){
    if (global.specialtrigger32){
        text[0]="ASHA: So you hoped to take on the Imperial Army, huh? Much less the most skilled Assassin in existence! You have no idea what you're doing, girl - I don't care how many men we lose, or how many Phantom Hammers you bring down - I've been looking for";
        text[1]="this little guy! See, I told you that you had a weak point, but no-one believed there were two humans cooperating here. I planted logbooks all over the place about your friend here, hoping you'd run into them and give the `traitor` what he deserved, but it";
        text[2]="looks like it didn't work! Killing this pest will show them I was right - and why not get the bounty on your head while I'm at it?";
        pages=3;
        }
    else{
        text[0]="ASHA: So you hoped to take on the Imperial Army, huh? Much less the most skilled Assassin in existence! You have no idea what you're doing, girl - I don't care how many men we lose, or how many Phantom Hammers you bring down - I've been looking for";
        text[1]="this little guy! See, I told you that you had a weak point, but no-one believed there were two humans cooperating here. Killing this pest will show them I was right - and why not get the bounty on your head while I'm at it?";
        pages=2;
        }
    }
else{
    if (global.specialtrigger32){
        text[0]="ASHA: So you hoped to take on the Imperial Army, huh? Much less the most skilled Assassin in existence! You have no idea what you're doing, girl - I don't care how many Sentinels we lose, or how many Phantom Hammers you bring down - I've been looking for";
        text[1]="this little guy! See, I told you that you had a weak point, but no-one believed there were two humans cooperating here. I planted logbooks all over the place about your friend here, hoping you'd run into them and give the `traitor` what he deserved, but it";
        text[2]="looks like it didn't work. Killing this pest will show them I was right - and why not get the bounty on your head while I'm at it?";
        pages=3;
        }
    else{
        text[0]="ASHA: So you hoped to take on the Imperial Army, huh? Much less the most skilled Assassin in existence! You have no idea what you're doing, girl - I don't care how many Sentinels we lose, or how many Phantom Hammers you bring down - I've been looking for";
        text[1]="this little guy! See, I told you that you had a weak point, but no-one believed there were two humans cooperating here. Killing this pest will show them I was right - and why not get the bounty on your head while I'm at it?";
        pages=2;
        }
    }
portrait=103;
outline=4;
obj_iji.sec8cut1=1;}

if (global.textid=="chat87_1"){
global.cannotskipchat=1;
text[0]="ASHA: Kill her!";
portrait=103;
outline=4;
pages=1;}
if (global.textid=="chat87_2"){
text[0]="IJI: NO!";
portrait=3;
outline=1;
pages=1;
obj_iji.sec8cut2=1;}

if (global.textid=="chat88_1"){
global.cannotskipchat=1;
text[0]="ASHA: Huh - so be it!";
portrait=103;
outline=4;
pages=1;
obj_iji.sec8cut3=1;}

if (global.textid=="chat89_1"){
global.cannotskipchat=1;
text[0]="IJI: !!!";
portrait=70;
outline=1;
pages=1;
obj_iji.holdafterchat=0;
if (instance_number(obj_end)==0)
instance_create(obj_iji.x,obj_iji.y,obj_end);
with (obj_sabot)
    scr_music("mus_darkstroke");
}

if (global.textid=="chat8a_1"){
global.cannotskipchat=1;
text[0]="ASHA: WHAT IN THE!?";
portrait=103;
outline=4;
pages=1;}
if (global.textid=="chat8a_2"){
if (global.kills+global.totkills>8*global.berserkkc)
    text[0]="IJI: I'm prepared for anything, you bastard! NOW LET MY BROTHER GO, OR I'LL BLOW YOUR HEAD OFF!";
else
    text[0]="IJI: I'm prepared for anything, you scum - now let my brother go, 'cause this weapon's aimed at your head!";
portrait=2;
outline=1;
pages=1;
}
if (global.textid=="chat8a_3"){
text[0]="ASHA: Hhh| that gun|";
portrait=103;
outline=4;
pages=1;
obj_iji.sec8cut4=1;}

if (global.textid=="chat8mia_1"){
if (obj_iji.trapmine){
    text[0]="IJI: Another ribbon! I've been collecting these a lot, now. The only other thing in my pockets is the Trapmine|";
    portrait=1;
    }
else{
    text[0]="IJI: Another ribbon! I've been collecting these a lot, now.";
    portrait=1;
    }
outline=1;
pages=1;}
if (global.textid=="chat8mia_2"){
if (obj_iji.trapmine){
    text[0]="It reminds me of a robot Mia had when she was little, the one we used to save Dan from a bully once. I threw it pretty hard.";
    if (global.kills+global.totkills>7*global.berserkkc)
        portrait=12;
    else
        portrait=5;
    }
else{
    text[0]="IJI: I know we've got no time to lose, but|";
    if (global.kills+global.totkills>7*global.berserkkc)
        portrait=12;
    else
        portrait=5;
    }
outline=1;
pages=1;}
if (global.textid=="chat8mia_3"){
if (obj_iji.trapmine){
    text[0]="Something tells me I should hang on to this mine until it really comes in handy. I don't need it to defend myself right now. I'll keep it, though it looks like the batteries won't last past this Sector.";
    portrait=1;
    }
else{
    text[0]="IJI: Something tells me there's something important around here. I should keep looking around before I go any farther!";
    portrait=1;
    }
outline=1;
pages=1;}

}



if (global.sector==9 || global.sector==14){

if (global.textid=="chat91_1"){
text[0]="DAN: Okay, this is Sector 9, the complex's main transportation and security gateway. It's under heavy lockdown, so you'll have to force your way through. Looks like there's a Tasen outpost near the end too, maybe they'll know where the Komato General";
if (global.specialtriggerc)
    text[1]="will be stationed. See if they'll let you in.";
else
    text[1]="will be stationed.";
portrait=99;
outline=2;
pages=2;
obj_iji.startmusics=1;
global.iosaphase=0;
global.specialtriggerb2=0;
global.specialtrigger32=0;
}
if (global.textid=="chat91_2"){
text[0]="IJI: Thanks. Feeling better now?";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat91_3"){
text[0]="DAN: Sort of, but I'll be okay. We should keep communication to a minimum, so they don't find me again|";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat91_4"){
if (global.totkills>8*global.berserkkc){
    text[0]="IJI: Don't worry. I'm gonna kill so many of those bastards, they won't even think of trying that again.";
    portrait=2;
    }
else{
    text[0]="IJI: Got it. Talk to you soon!";
    portrait=1;
    }
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat91_5"){
text[0]="DAN: Easy there - we don't need you losing your cool once you reach the General. Keep your finger on the trigger, but don't let it get too itchy.";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat91_6"){
text[0]="IJI: Yeah, yeah. Talk to you soon.";
portrait=12;
outline=1;
pages=1;
obj_iji.startmusics=1;}

if (global.textid=="chat92_1"){
text[0]="IJI: Uhh, Dan, something's wrong. Do you know what happened?";
portrait=4;
outline=1;
pages=1;}
if (global.textid=="chat92_2"){
text[0]="IJI: |";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat92_3"){
text[0]="IJI: Damn, all the speakers around here are busted!";
portrait=2;
outline=1;
pages=1;}

if (global.textid=="chat93_1"){
instance_create(obj_iji.x,obj_iji.y,obj_end);
//global.cannotskipchat=1;
text[0]="???: Well, well| what have we here?";
portrait=107;
outline=4;
pages=1;
if (obj_sabot.bunkertruce)
    global.specialtrigger2=1;
else
    global.specialtrigger2=0;
}
if (global.textid=="chat93_2"){
text[0]="IJI: Huh?";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chat93_3"){
if (obj_sabot.bunkertruce)
text[0]="???: You're heading in the direction of General Tor, am I right? You hope to assassinate him, is that it?";
else
text[0]="???: Looks like someone can't take a hint - I suppose you didn't notice the piles of dead Tasen I like to generate. You're heading in the direction of General Tor, am I right? You hope to assassinate him, is that it?";
portrait=107;
outline=4;
pages=1;}
if (global.textid=="chat93_4"){
if (global.kills+global.totkills>9*global.berserkkc)
    text[0]="IJI: What's it to you? Get out of my way, or I'll kill you too!";
else
    text[0]="IJI: N-No, not at all! I just want to talk to him!";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat93_5"){
if (global.kills+global.totkills>9*global.berserkkc)
    text[0]="???: HAHAHA! Looks like I've got a live one on my hands!";
else
    text[0]="???: HAHAHA! That was a good one, human! Just want to TALK!";
portrait=108;
outline=4;
pages=1;}
if (global.textid=="chat93_6"){
if (global.kills+global.totkills>9*global.berserkkc)
    text[0]="IJI: Shut it! I've gotta stop the Alpha Strike, no matter what!";
else
    text[0]="IJI: No, really! I have to convince the General to spare our planet! You'd never Alpha Strike us, anyway!";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chat93_7"){
text[0]="???: Hah. I know how it feels, though it was long ago. I see no reason to let you live your hopeless, tortured future, now that we have the chance to destroy the Tasen once and for all. I've been waiting for this moment ever since my own home planet was";
text[1]="Alpha Struck by their dirty battlecruisers - at full force - while I was still there.";
portrait=107;
outline=4;
pages=2;}
if (global.textid=="chat93_8"){
text[0]="IJI: What? That's not possible!";
portrait=10;
outline=1;
pages=1;
}
if (global.textid=="chat93_9"){
text[0]="???: You sure are slow. I am Annihilator Iosa - `Invincible` is not a simple nickname.";
portrait=107;
outline=4;
pages=1;}
if (global.textid=="chat93_10"){
text[0]="IJI: But then you know what it's like! You know what it's like for everyone you know to be destroyed, for no reason - but you don't seem to care! You just want your revenge on the Tasen, for a war THE KOMATO STARTED!";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chat93_11"){
if (global.specialtriggerc)
text[0]="IOSA: My, you're judgmental. Did we really start this war, or was it the Tasen? They refused our progress, and this is the result.";
else
text[0]="IOSA: My, you're judgmental. Correct me if I'm wrong, but aren't you the one who called for our help to destroy the Tasen?";
portrait=107;
outline=4;
pages=1;}
if (global.textid=="chat93_12"){
if (obj_sabot.tasenblame)
text[0]="IJI: That's - how can you blame them for this? You're so stubborn you've even convinced the Tasen, I heard an Elite saying she believed that crap! You just couldn't accept them!";
else if (global.specialtriggerc)
text[0]="IJI: That's - how can you blame them for this? You just couldn't accept them!";
else
text[0]="IJI: But, we thought - we didn't know they were on the run from YOU!";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chat93_13"){
if (global.specialtriggerc)
    text[0]="IOSA: It was the other way around, human! They knew from the start what would happen. We're all fighting for our own survival, so don't pretend you don't value the Tasen lower than your own race, too.";
else if (global.totkills<=9*global.neutralkc)
    text[0]="IOSA: Huh. We're all fighting for our own survival, so don't pretend you don't value the Tasen lower than your own race, too.";
else
    text[0]="IOSA: Huh. We're all fighting for our own survival, so don't pretend you don't value the Tasen lower than your own race, too. I suppose the reports of YOU murdering people left and right is what puts the weight in your words?";
portrait=107;
outline=4;
pages=1;}
if (global.textid=="chat93_14"){
if (global.specialtriggerc)
    text[0]="IJI: Th-That's NOT TRUE! Sure they came here and ruined our world - but YOU've come here to DESTROY it - and -";
else
    text[0]="IJI: Th-That's NOT TRUE! They, they came here and ruined our world - YOU've come here to DESTROY it - and -";
portrait=3;
outline=1;
pages=1;}
if (global.textid=="chat93_15"){
text[0]="IOSA: Do I look like I care, little human? Your race is in the Komatos' debt for shortening its suffering - do you think I can give you back your planet? Do you think I can give you back the uncountable lives the Tasen destroyed?";
portrait=107;
outline=4;
pages=1;
obj_iosadoll.holdit=1;}
if (global.textid=="chat93_16"){
text[0]="IJI: |";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat93_17"){
text[0]="IOSA: I've been through this before. Just like the Tasen before you - just a speck on the galaxy map. When you're gone, who do you think will even care? You oppose the Komato, and you die.";
portrait=107;
outline=4;
pages=1;
obj_iosadoll.holdit=0;}
if (global.textid=="chat93_18"){
if (global.specialtriggerb2){
    text[0]="ANSAKSIE: Talk, talk, talk. The Army sure did things to your head! I'm done seeing them look up to people like you. Me and this human, we're taking you down.";
    portrait=117;
    outline=4;
    pages=1;
    tempid=instance_create(11942,6019,obj_sec9ansaksie);
    tempid.type=1;
    tempid.sprite_index=spr_komatoassassin_pose1;
    with (tempid)
        instance_create(bbox_left+((bbox_right-bbox_left)/2)+10, bbox_top+((bbox_bottom-bbox_top)/2), obj_megaflash);
    }
else{
    if (global.totkills<=9*global.neutralkc){
        text[0]="IJI: SHUT UP! You, you don't respect our lives any more than the Tasen you kill for no reason at all! You've just| thrown away your morals so you won't feel bad about it! I'm fighting to save peoples' lives, but you're just killers!";
        pages=1;
        }
    else{
        text[0]="IJI: SHUT UP! You, you don't respect our lives any more than the Tasen you kill for no reason at all! You've just| thrown away your morals so you won't feel bad about it! At least I'm fighting to save peoples' lives!";
        pages=1;
        }
    portrait=2;
    outline=1;
    }
}
if (global.textid=="chat93_19"){
if (global.specialtriggerb2){
    text[0]="IOSA: AHAHAHAHA! Well, you sure have guts| I never thought I'd see your traitorous little face again! I never got around to reporting you to Asha, not that it matters now. If you're hoping to change history, you're too late, Assassin - FAR TOO LATE!";
    portrait=108;
    outline=4;
    pages=1;
    }
else{
    text[0]="IOSA: My, you sure have guts, human - I may just think that you're FORGETTING WHO YOU'RE TALKING TO! Perhaps you're not aware of the fact that I am totally indestructible, while you are nothing but a worthless bag of flesh and bone!? I have better";
    text[1]="things to do than stand here and listen to you TRASH-TALKING THE MOST POWERFUL KOMATO IN THE UNIVERSE!";
    portrait=108;
    outline=4;
    pages=2;
    }
if (!obj_iosadoll.triggered){
    obj_iosadoll.triggered=1;
    obj_iosadoll.alarm[0]=25;
    obj_iosadoll.sprite_index=spr_iosa_walkleft;
    obj_iosadoll.image_single=0;
    with (obj_sabot)
        scr_stopmusic();
    }
}
if (global.textid=="chat93_20"){
    text[0]="ANSAKSIE: Let's go, Anomaly!";
    portrait=117;
    outline=4;
    pages=1;
    }

if (global.textid=="chat94_1"){
global.cannotskipchat=1;
if (global.specialtriggerb2==1)
    text[0]="IOSA: I'm through mincing words, insects - NOW YOU DIE!";
else
    text[0]="IOSA: I'm through mincing words, insect - NOW YOU DIE!";
portrait=108;
outline=4;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat94_2"){
if (global.specialtriggerb2==1)
    text[0]="IJI: (That's it, I'm dead! Those electric pads on the ceiling may be our only chance to blow her out of that huge exoskeleton - we just need to keep damaging her!)";
else
    text[0]="IJI: (That's it, I'm dead! Those electric pads on the ceiling may be my only chance to blow her out of that huge exoskeleton - I just need to keep damaging her!)";
portrait=2;
outline=1;
pages=1;
if (!global.iimsx){
    global.iimsx=1;
    global.ignoremessagescroll=30;
    }
obj_iji.startmusics=1;}

if (global.textid=="chat95_1"){
    global.cannotskipchat=1;
    if (global.specialtriggerb2==1){
        text[0]="ANSAKSIE: Hhh| hah, looks like we've done the impossible! Good riddance.";
        portrait=117;
        outline=4;
        pages=1;
        }
    else{
        text[0]="IJI: Hhh| hhh| I killed her.";
        if (global.kills+global.totkills>9*global.neutralkc)
            portrait=2;
        else
            portrait=5;
        outline=1;
        pages=1;
        }
    }
if (global.textid=="chat95_2"){
    if (global.specialtriggerb2==1){
        text[0]="IJI: You, you didn't have to -";
        portrait=2;
        outline=1;
        pages=1;
        }
    else{
        if (global.kills+global.totkills>9*global.berserkkc)
            text[0]="IJI: Good riddance. That scumbag was wrong - the Komato won't decide our fate for us!";
        else if (global.kills+global.totkills>9*global.neutralkc)
            text[0]="IJI: She, she was wrong. She had to be. The Komato won't decide our fate for us!";
        else
            text[0]="IJI: I didn't even want to shoot, I just| pulled the trigger. She was harmless without her Nanofield|";
        portrait=12;
        outline=1;
        pages=1;
        }
    }
if (global.textid=="chat95_3"){
    if (global.specialtriggerb2==1){
        text[0]="ANSAKSIE: Iosa is not the kind of person who can be spared. Had we not dealt with her now, things would've only gotten worse down the line. Listen - if you want to stop the Alpha Strike, you'd better see the General, and fast.";
        portrait=117;
        outline=4;
        pages=1;
        }
    else{
        if (global.specialtrigger1==0){
            if (global.kills+global.totkills<=9*global.neutralkc)
                text[0]="IJI: But I didn't have a choice, right Dan? Yeah| you're right. Better someone like her than the entire world.";
            else
                text[0]="IJI: Watch me, Dan| I'll show them. Nothing can stop me now!";
            }
        else
            text[0]="IJI: I have to find a room with a speaker, so I can tell Dan about this. They're so gonna come after us now!";
        portrait=1;
        outline=1;
        pages=1;
        if (instance_number(obj_end)==0){
            instance_create(obj_iji.x,obj_iji.y,obj_end);
            global.sector=9;
            obj_sabot.cannotrestart=1;
            obj_sec9hologram.alarm[0]=5;
            obj_sec9hologram.sprite_index=spr_standup;
            obj_sec9hologram.image_single=-1;
            obj_sec9hologram.image_index=0;
            obj_sec9hologram.image_speed=0.5;
            }
        }
    }
if (global.textid=="chat95_4"){
    text[0]="IJI: Y-Yeah, that's right. I need to go to Sector X. Dan's waiting for me, too.";
    portrait=5;
    outline=1;
    pages=1;
    obj_sec9hologram.alarm[0]=5;
    obj_sec9hologram.sprite_index=spr_standup;
    obj_sec9hologram.image_single=-1;
    obj_sec9hologram.image_index=0;
    obj_sec9hologram.image_speed=0.5;
    }
if (global.textid=="chat95_5"){
    text[0]="ANSAKSIE: Looks like you do know what you're doing. I need to leave before they suspect me. This is not going to win either of us any points with the Army. Iosa was a hero, so wear this victory with pride. I certainly will.";
    portrait=117;
    outline=4;
    pages=1;
    obj_sec9ansaksie.shakehead=1;
    }
if (global.textid=="chat95_6"){
    text[0]="IJI: |";
    portrait=1;
    outline=1;
    pages=1;
    if (instance_number(obj_end)==0){
        with (obj_sec9ansaksie){
            instance_destroy();
            instance_create(bbox_left+((bbox_right-bbox_left)/2), bbox_top+((bbox_bottom-bbox_top)/2), obj_megaflash);
            }
        instance_create(obj_iji.x,obj_iji.y,obj_end);
        global.sector=9;
        obj_sabot.cannotrestart=1;
        }
    }

if (global.textid=="chat96_1"){
text[0]="IJI: Dan. I was meant to save the world, so that's what I'll do. I don't care what I'll face, I don't care what happens, I'll make it through!";
portrait=12;
outline=1;
pages=1;
obj_iji.startmusics=1;
global.iosaphase=0;
global.specialtriggerb2=0;
global.specialtrigger32=0;
}
if (global.textid=="chat96_2"){
text[0]="IJI: Stay beside me, and I promise I'll keep you safe. You know that.";
portrait=5;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat96_3"){
if (global.totkills>8*global.berserkkc)
    text[0]="IJI: This place looks like one big security checkpoint, and I bet Sector X is on the other side. I'm gonna kill so many of those bastards, they'll wish they never messed with us!";
else if (global.totkills>40)
    text[0]="IJI: This place looks like one big security checkpoint, and I bet Sector X is on the other side. We can still send these bastards back where they came from - together!";
else
    text[0]="IJI: This place looks like one big security checkpoint, and I bet Sector X is on the other side. We can still send them back where they came from - together!";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}

if (global.textid=="chat97_1"){
text[0]="You got the Banana gun, selected by pressing 9 in Active mode. It uses one ammunition unit each of every Nanoweapon. It cannot be combined with any other weapon.";
portrait=0;
outline=0;
pages=1;}

//IT IS IMPOSSIBLE for these events to overlap: killing the girlfriend and not calling the Komato
if (global.textid=="chat98_1"){
text[0]="IJI: No, this is| I think I've been reading this girl's diaries.";
portrait=5;
outline=1;
pages=1;
}
if (global.textid=="chat98_2"){
if (global.kills+global.totkills<=9*global.neutralkc)
    text[0]="IJI: Why now? They're the ones who Alpha Struck the Earth|";
else
    text[0]="IJI: Why now? They're the ones I killed without caring who they were|";
portrait=12;
outline=1;
pages=1;}
if (global.textid=="chat98_3"){
text[0]="IJI: I'm the one who brought the Komato here| to kill people like her.";
portrait=9;
outline=1;
pages=1;}
if (global.textid=="chat98_4"){
text[0]="IJI: NO! No, it's not my fault! It's the Komatos' fault! It's ALL their fault!";
portrait=3;
outline=1;
pages=1;}
if (global.textid=="chat98_5"){
text[0]="IJI: *Sigh*";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat98_6"){
if (global.kills+global.totkills>9*global.neutralkc)
    text[0]="IJI: I have to find the General - but first, I'm gonna find whoever did this. I may be a hypocrite, but somewhere there's got to be a line!";
else
    text[0]="IJI: I have to find the General - but first, I'm gonna find whoever did this. Somewhere, there's got to be a line!";
portrait=12;
outline=1;
pages=1;}
if (global.textid=="chat98_7"){
text[0]="IJI: Don't worry, kid. I don't think any of you can forgive me, but if I take your Nanofield, I'll always carry a part of you with me| that's all I can do.";
portrait=5;
outline=1;
pages=1;}

if (global.textid=="chat99_1"){
text[0]="IJI: Huh? what happened?";
portrait=2;
outline=1;
pages=1;}

if (global.textid=="chat9a_1"){
text[0]="IJI: Damn| that| HURT! There BETTER be something good up here.";
portrait=2;
outline=1;
pages=1;
}


if (global.textid=="chat9b_1"){
text[0]="IJI: (Damn it, now what? I think I heard about this woman's personal Nanofield, none of my weapons can even scratch her! Wait, that means she's like one of those Shield doors, and I have to use my raw strength! She'll probably be too alert for me to";
text[1]="go on the offense and land a kick if she sees it coming, but if she ever stops and turns her head away for just a moment, I'll make sure to hit her hard! And if that works| I'll just keep on kicking her!)";
portrait=2;
outline=1;
pages=2;
obj_iji.startmusics=1;}


if (global.textid=="chat9c_1"){
text[0]="IJI: Damn it, I can barely see! The air is completely thick down here, and that elevator shaft smells like| blood. Was this some sort of bunker?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9c_2"){
text[0]="IJI: I really need to know what I'm doing if I'm going any farther!";
portrait=2;
outline=1;
pages=1;}


if (global.textid=="chat9d_1"){
global.specialtriggerb2=1;
text[0]="???: Anomaly.";
portrait=117;
outline=4;
pages=1;
if (obj_sabot.bunkertruce)
tempid=instance_create(10912,6009,obj_sec9ansaksie)
else
tempid=instance_create(9844,6105,obj_sec9ansaksie)
tempid.type=0;
with (tempid)
    instance_create(bbox_left+((bbox_right-bbox_left)/2), bbox_top+((bbox_bottom-bbox_top)/2), obj_megaflash);
}
if (global.textid=="chat9d_2"){
text[0]="IJI: GAH! What now!?";
portrait=2;
outline=1;
pages=1;
global.facing=1;
obj_iji.sprite_index=spr_basic;
}
if (global.textid=="chat9d_3"){
text[0]="???: That fight back there| I couldn't keep my team from attacking without blowing my cover. I apologize.";
portrait=117;
outline=4;
pages=1;
obj_sec9ansaksie.shakehead=1;}
if (global.textid=="chat9d_4"){
text[0]="IJI: Huh? You -";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9d_5"){
text[0]="ANSAKSIE: The name's Ansaksie. We don't have time to talk, but there's someone up ahead that I've been wanting dead for starturns. Now that you're here, this is the perfect chance.";
portrait=117;
outline=4;
pages=1;}
if (global.textid=="chat9d_6"){
text[0]="IJI: What do you mean?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9d_7"){
text[0]="ANSAKSIE: I need your help, and a scapegoat. You'll understand in a moment. Ready your weapons, we're taking her on.";
portrait=117;
outline=4;
pages=1;}

if (global.specialtrigger1==0){
if (global.textid=="chat9mia_1"){
text[0]="IJI: Mia, how many of these did you bring here? This is getting weird.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9mia_2"){
text[0]="IJI: Dan, you didn't really mean that, right? About not supporting each other. I hope you don't envy what Mia and I had after mom left. Maybe you thought she was clinging to me, but we really did love each other - just like I love you.";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat9mia_3"){
text[0]="IJI: Hehe, yeah, you're right.";
portrait=8;
outline=1;
pages=1;}
if (global.textid=="chat9mia_4"){
text[0]="IJI: Just stay behind me and you'll be fine. I'll protect you no matter what.";
portrait=1;
outline=1;
pages=1;}
}

else{
if (global.textid=="chat9mia_1"){
text[0]="IJI: Mia, how many of these did you bring here? This is getting weird.";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat9mia_2"){
text[0]="DAN: Iji. How are you?";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat9mia_3"){
text[0]="IJI: Oh, sorry - what's wrong?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9mia_4"){
text[0]="DAN: Nothing, really, just wanted to thank you for saving my life. But maybe this isn't the time|";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat9mia_5"){
text[0]="IJI: It's okay. Just stay safe, okay?";
if (global.kills+global.totkills>8*global.berserkkc)
    portrait=1;
else
    portrait=8;
outline=1;
pages=1;}
if (global.textid=="chat9mia_6"){
text[0]="DAN: I will. You know| I think I was wrong about not supporting each other. You're the only one I have left. We've already saved each others' lives at least once, and it's not like I'm feeling any better keeping you at a distance|";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat9mia_7"){
if (global.kills+global.totkills>8*global.berserkkc){
    text[0]="IJI: Eh. If you want to apologize, just do it already.";
    portrait=12;
    }
else{
    text[0]="IJI: Eh, just say it out loud.";
    portrait=11;
    }
outline=1;
pages=1;}
if (global.textid=="chat9mia_8"){
text[0]="DAN: What?";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat9mia_9"){
if (global.kills+global.totkills>8*global.berserkkc){
    text[0]="IJI: Never mind.";
    portrait=1;
    }
else{
    text[0]="IJI: Never mind. See you soon!";
    portrait=8;
    }
outline=1;
pages=1;}
}


if (global.textid=="chat9e_1"){
text[0]="ELITE: Wait! Hold your fire!";
portrait=1000;
outline=3;
pages=1;
with (obj_sabot){
    scr_music("mus_lightstroke");
    scr_music("mus_dark");
    }
}
if (global.textid=="chat9e_2"){
text[0]="IJI: Wha?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9e_3"){
text[0]="ELITE: I'm glad you made it. Vateilika told us all about you. We've set up an outpost here, so get inside before more Komato troops arrive!";
text[1]="If you want to talk to someone, just give them a tap or two. Some of us have a lot to talk to you about.";
portrait=1000;
outline=3;
pages=2;}

if (global.textid=="chat9e01_1"){
text[0]="ELITE: Get going, Anomaly. I'll take care of any intruders.";
portrait=1000;
outline=3;
pages=1;}

if (global.textid=="chat9e02_1"){
text[0]="ELITE: So you're not the one who contacted the Komato? I had my doubts, but Vateilika's never lied. Much. I don't know what you've been through, but we trust you in here. You're not that violent, otherwise you'd be too dangerous to let in.";
portrait=1000;
outline=3;
pages=1;}
if (global.textid=="chat9e02_2"){
text[0]="IJI: Well, thanks.";
portrait=1;
outline=1;
pages=1;}

if (global.textid=="chat9e03_1"){
text[0]="ELITE: I would say I'm still skeptical about who killed Krotera, but it doesn't matter now. Most of us think he got what he deserved.";
portrait=1000;
outline=3;
pages=1;}
if (global.textid=="chat9e03_2"){
text[0]="IJI: So you didn't like him either?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9e03_3"){
text[0]="ELITE: Let me put it this way - he would've woken up with a swarm of Blits inside his helmet sooner or later.";
portrait=1000;
outline=3;
pages=1;}
if (global.textid=="chat9e03_4"){
text[0]="IJI: Ugh|";
portrait=10;
outline=1;
pages=1;}

if (global.textid=="chat9e04_1"){
text[0]="ELITE: Hmm| now that would be something. A gun that shoots Blits.";
portrait=1000;
outline=3;
pages=1;}

if (global.textid=="chat9e05_1"){
text[0]="ELITE: What use is it now?";
portrait=1000;
outline=3;
pages=1;}
if (global.textid=="chat9e05_2"){
text[0]="IJI: What?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9e05_3"){
text[0]="ELITE: The Alpha Strike is coming. There's nothing left for us. We're counting the cycles|";
portrait=1000;
outline=3;
pages=1;}
if (global.textid=="chat9e05_4"){
text[0]="IJI: Don't think like that! I'm gonna stop the Strike!";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9e05_5"){
text[0]="ELITE: Huh! I'd laugh if you weren't serious. I'd rather face death with respect than lie to myself!";
portrait=1000;
outline=3;
pages=1;}

if (global.textid=="chat9e06_1"){
text[0]="IJI: I'm heading for Sector X to talk sense into the General. Then you'll see.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9e06_2"){
text[0]="ELITE: See what? Your burning corpse bouncing back here?";
portrait=1000;
outline=3;
pages=1;}
if (global.textid=="chat9e06_3"){
text[0]="IJI: I'm serious! You won't know if it works until you tried!";
portrait=2;
outline=1;
pages=1;}

if (global.textid=="chat9e07_1"){
text[0]="ELITE: Humph. Good luck.";
portrait=1000;
outline=3;
pages=1;}

if (global.textid=="chat9e08_1"){
text[0]="ELITE: What are you wandering around here for? There may be more Komato teams coming, and someone said Annihilator Iosa is closing in!";
portrait=1000;
outline=3;
pages=1;}
if (global.textid=="chat9e08_2"){
text[0]="IJI: You mean she's nearby? How will an Annihilator fit in here?";
portrait=4;
outline=1;
pages=1;}
if (global.textid=="chat9e08_3"){
text[0]="ELITE: Iosa is one of few who can survive outside the exoskeleton, and what's worse, she's invincible! Don't blame me if she prances over here and cuts you in two!";
portrait=1000;
outline=3;
pages=1;}

if (global.textid=="chat9e09_1"){
text[0]="ELITE: Iosa's squad landed right after the assault forces. She tore a path through the perimeter, and only stopped to specifically kill anyone who dared damage her troops. There was nothing we could do.";
portrait=1000;
outline=3;
pages=1;}
if (global.textid=="chat9e09_2"){
text[0]="IJI: I'm sorry to hear that|";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat9e09_3"){
text[0]="ELITE: We're responsible for this mess, anyway. We Alpha Struck Iosa's homeworld, and the whole war started because of us.";
portrait=1000;
outline=3;
pages=1;}
if (global.textid=="chat9e09_4"){
text[0]="IJI: No it didn't! It's all the Komato's fault!";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chat9e09_5"){
text[0]="ELITE: Tch! What do you know, Anomaly? It's easy for an outsider to say who's right and wrong, but the Tasen broke away from the Komato because we disagreed with their goals. We rebelled because we wanted to make a stand! You think they just randomly grew a";
text[1]="grudge?";
portrait=1000;
outline=3;
pages=2;
obj_sabot.tasenblame=1;}
if (global.textid=="chat9e09_6"){
text[0]="IJI: |";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9e09_7"){
text[0]="ELITE: Once you question, you put your life on the line. We're proud of what we've done - we did our best to change the Komato - and don't you dare believe anything else. Watch your kids get left behind to get Alpha Struck too, and we'll see how YOU will";
text[1]="look on your future!";
portrait=1000;
outline=3;
pages=2;}
if (global.textid=="chat9e09_8"){
text[0]="IJI: I| hhh.";
portrait=5;
outline=1;
pages=1;}

if (global.textid=="chat9e10_1"){
text[0]="ELITE: Who cares what caused what? This is where we are right now, hiding from an Alpha Strike on some lousy remote planet. I don't care what you say, so spare your breath.";
portrait=1000;
outline=3;
pages=1;}

if (global.textid=="chat9e11_1"){
text[0]="IJI: How are you holding up in here?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9e11_2"){
text[0]="GRAND ELITE: It's a strange feeling. We may be moments from death, and suddenly people start worrying about things they never cared about| I used to be Grand Elite of the fleet, but now it doesn't matter.";
portrait=1000;
outline=3;
pages=1;}
if (global.textid=="chat9e11_3"){
text[0]="IJI: You mean you were in charge of the Tasen fleet?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9e11_4"){
text[0]="GRAND ELITE: I was part of the command, yes, right next to that disgusting Krotera. Ours was the only escape fleet to leave Elem Sioz intact. I once served under Hel Sarie, the most thoughtful and caring superior I've had| those days are so distant, they";
text[1]="might as well have been a dream.";
portrait=1000;
outline=3;
pages=2;}

if (global.textid=="chat9e12_1"){
text[0]="IJI: Don't worry, I'm heading for the Komato General to stop the Alpha Strike. I won't let you guys die.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9e12_2"){
text[0]="GRAND ELITE: Hmm. That might work, if the Komato weren't after you too.";
portrait=1000;
outline=3;
pages=1;}
if (global.textid=="chat9e12_3"){
text[0]="IJI: They are, but -";
portrait=12;
outline=1;
pages=1;}
if (global.textid=="chat9e12_4"){
text[0]="GRAND ELITE: If you made it this far, it won't matter. Hel Sarie had the same spirit. General Tor respected her, even befriended her. He changed when the war started| it might have been the pressure and opinions of those closest to him.";
portrait=1000;
outline=3;
pages=1;}

if (global.textid=="chat9e13_1"){
text[0]="GRAND ELITE: If you want to stop the Strike, then do it. You're the only one left with that kind of motivation.";
portrait=1000;
outline=3;
pages=1;}

if (global.textid=="chat9e14_1"){
text[0]="COMMANDER: Damn it, there's not a single Elite left alive out there! I should've kept my mouth shut.";
portrait=118;
outline=3;
pages=1;}
if (global.textid=="chat9e14_2"){
text[0]="IJI: What do you mean?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9e14_3"){
text[0]="COMMANDER: I hurt a lot of people. I dealt in illegal weapons behind Krotera's back. I respected the man - he took initiatives few others would take. I feel like I betrayed him, and now the Alpha Strike|";
portrait=118;
outline=3;
pages=1;}

if (global.textid=="chat9e15_1"){
text[0]="COMMANDER: Just leave me alone, okay?";
portrait=118;
outline=3;
pages=1;}

if (global.textid=="chat9e16_1"){
text[0]="COMMANDER: Ha ha ha! You're really something else, Anomaly. Never thought I'd meet you in person!";
portrait=118;
outline=3;
pages=1;}
if (global.textid=="chat9e16_2"){
text[0]="IJI: What, you know me?";
portrait=4;
outline=1;
pages=1;}
if (global.textid=="chat9e16_3"){
text[0]="COMMANDER: All of us do! Vateilika put an MPFB in Krotera's back when he threatened to kill you, and once the Komato arrived, she personally scanned our communicator's log to make sure you weren't the one who sent for their help. You owe her a lot!";
portrait=118;
outline=3;
pages=1;}
if (global.textid=="chat9e16_4"){
text[0]="IJI: Well, I didn't call them, but they still attacked, so|";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat9e16_5"){
text[0]="COMMANDER: Yep, we think they saw through the fake transmission we sent on behalf of their scout team. We're so far behind on Komato technology, we probably did all sorts of things wrong with it. Trying to fool a General, for starters! Ha ha!";
portrait=118;
outline=3;
pages=1;}
if (global.textid=="chat9e16_6"){
text[0]="IJI: Th-This isn't something to laugh about!";
portrait=2;
outline=1;
pages=1;}

if (global.textid=="chat9e17_1"){
text[0]="COMMANDER: I've always felt pretty good about impossible situations. They found me laughing on the floor after a raid on my squad's ship once, half dead with a door frame through the arm. No sense being glum about it, you know? I survived!";
portrait=118;
outline=3;
pages=1;}
if (global.textid=="chat9e17_2"){
text[0]="IJI: Heh.";
portrait=11;
outline=1;
pages=1;}
if (global.textid=="chat9e17_3"){
text[0]="COMMANDER: Actually, the Komato have a tightly controlled view of death to keep the Army and their breeding colonies in line. Most of 'em don't fear the loss of their own life, as each generation exists to make the next one better. They can aim for something";
text[1]="thousands of starturns into the future, without regret that they won't witness it themselves. They trust their young completely. Iosa is the only one who wants to be immortal, but she's kind of a special case.";
portrait=118;
outline=3;
pages=2;}
if (global.textid=="chat9e17_4"){
text[0]="IJI: You mean she really is immortal?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9e17_5"){
text[0]="COMMANDER: Nah, age will get to her like anyone else - but give someone that much power and they'll soon forget how fragile they are.";
portrait=118;
outline=3;
pages=1;}

if (global.textid=="chat9e18_1"){
text[0]="IJI: Sorry, I don't have time to talk about this anymore.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9e18_2"){
text[0]="COMMANDER: Hey, neither do I. Alpha Strikes don't wait around! Ha ha.";
portrait=118;
outline=3;
pages=1;}

if (global.textid=="chat9e19_1"){
text[0]="COMMANDER: There was a Soldier here who went through that teleporter. Like it'd be safer outside than in here|";
portrait=118;
outline=3;
pages=1;}

if (global.textid=="chat9e20_1"){
text[0]="COMMANDER: Hey, you here to save us or something? Whatcha gonna do, shoot their fleet down?";
portrait=118;
outline=3;
pages=1;}
if (global.textid=="chat9e20_2"){
text[0]="IJI: No, I -";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9e20_3"){
text[0]="COMMANDER: Whatever! That Iosa comes here, we'll show her what we're made of!";
portrait=118;
outline=3;
pages=1;}

if (global.textid=="chat9e21_1"){
text[0]="COMMANDER: Lost my whole squad to that Annihilator| she's gonna pay.";
portrait=118;
outline=3;
pages=1;}

if (global.textid=="chat9e22_1"){
text[0]="VATEILIKA: Anomaly! It's me, remember? The truce? My little shop?";
portrait=116;
outline=3;
pages=1;
with (obj_sec9vateilika){
    state=0;
    wait=1;
    wait2=0;
    waitcyc=0;
    ready=1;
    alarm[2]=0;
    sprite_index=spr_tasensoldier_basic;
    facing=0;
    }
}
if (global.textid=="chat9e22_2"){
text[0]="IJI: Sheesh, you survived that Komato ship after all.";
portrait=11;
outline=1;
pages=1;}
if (global.textid=="chat9e22_3"){
text[0]="VATEILIKA: Of course! My friend told me about this defense base, so I made a run for it and met up with her. She let it slip that I shot Krotera, but everyone took it pretty well. I know you didn't call the Komato either.";
portrait=116;
outline=3;
pages=1;}
if (global.textid=="chat9e22_4"){
text[0]="IJI: Thanks, but it didn't matter in the end.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9e22_5"){
text[0]="VATEILIKA: Come on, it's not like it's your fault! We've all done what we could.";
portrait=116;
outline=3;
pages=1;}
if (global.textid=="chat9e22_6"){
text[0]="IJI: Yeah, about that - I'm trying to find General Tor and convince him to pull back the Komato fleet.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9e22_7"){
text[0]="VATEILIKA: Wh-Wh-What!? NOW you're talking! That's awesome talk, right there! Go get 'em, alright!";
portrait=116;
outline=3;
pages=1;}
if (global.textid=="chat9e22_8"){
text[0]="IJI: Thanks| I know it's crazy, but I'm not giving up yet.";
portrait=12;
outline=1;
pages=1;}
if (global.textid=="chat9e22_9"){
text[0]="VATEILIKA: Right on! Just keep an eye out for Iosa, and be c-careful.";
portrait=116;
outline=3;
pages=1;}

if (global.textid=="chat9e23_1"){
text[0]="VATEILIKA: *Sigh*| I'll admit it. I don't think you'll make it.";
portrait=116;
outline=3;
pages=1;}
if (global.textid=="chat9e23_2"){
text[0]="IJI: What?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9e23_3"){
text[0]="VATEILIKA: General Tor is impossible. No-one can argue with him, he doesn't care. And if Iosa steps in, she'll turn ya to Blit food before you can even think.";
portrait=116;
outline=3;
pages=1;}
if (global.textid=="chat9e23_4"){
text[0]="IJI: I know, but I have to do it. If I -";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9e23_5"){
text[0]="VATEILIKA: DON'T YOU GET IT!? What kind of motivational logbook are you!? Iosa's murdered hundreds of Elites like nothing at all! She k-killed my whole squad, I'm only standing here because I ran away like a coward! And if anything happens to Iosa, Tor's";
text[1]="gonna Strike us THRICE OVER! Just| just give up! I don't wanna lose the only friends I have left.";
portrait=116;
outline=3;
pages=2;
with (obj_sec9vateilika){
    if (facing==0){
        facing=1;
        sprite_index=spr_tasensoldier_basic;
        }
    else{
        facing=0;
        sprite_index=spr_tasensoldier_basicleft;
        }
    }
}
if (global.textid=="chat9e23_6"){
text[0]="IJI: That's the point! If I don't do something we'll all die anyway!";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chat9e23_7"){
text[0]="IJI: I'm scared as hell too, but I've been close to death so many times I don't even feel it anymore. I'd only give up the moment I stop to realize how impossible this is, so I don't wanna do it. I can't back down.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9e23_8"){
text[0]="VATEILIKA: I guess you're right|";
portrait=116;
outline=3;
pages=1;}
if (global.textid=="chat9e23_9"){
text[0]="IJI: Tor is a leader. He couldn't have gotten that far without learning how to listen to people.";
portrait=12;
outline=1;
pages=1;
with (obj_sec9vateilika){
    if (facing==0){
        facing=1;
        sprite_index=spr_tasensoldier_basic;
        }
    else{
        facing=0;
        sprite_index=spr_tasensoldier_basicleft;
        }
    }
}

if (global.textid=="chat9e24_1"){
if (global.killdata[276]==0)
    text[0]="VATEILIKA: By the way, I heard from Yuka a little while ago. Looks like he's holed up in Sector 6, armed to the teeth. Hehe| I remember him planning for all this, and me thinking he was crazy|";
else
    text[0]="VATEILIKA: I haven't heard from Yuka in Sector 6 in a long time now. I swear, if he's dead I'm gonna kill him. I should've apologized when I could|";
portrait=116;
outline=3;
pages=1;}

if (global.textid=="chat9e25_1"){
text[0]="VATEILIKA: Okay, I'm serious - dead serious - STOP DOING THAT! You wanna know how annoying that is? That you just keep poking me when you should've been outta here way long ago? I'm really super Blit-eating TIRED of people POKING ME! Okay look, how's this?";
text[1]="Poke poke! How's this? Huh? Is that fun? Is that fun?";
portrait=116;
outline=3;
pages=2;}
if (global.textid=="chat9e25_2"){
text[0]="IJI: Sheesh, calm down, I was just -";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat9e25_3"){
text[0]="VATEILIKA: JUST POKING! I loved Yuka, but his constant poking was what tore us apart! Such a great guy with just one little flaw! It's, it's so unfair that we couldn't be together just because of that poking! It's so unfair! Backflipping rocket-jumping POKING!";
portrait=116;
outline=3;
pages=1;}
if (global.textid=="chat9e25_4"){
text[0]="IJI: Uh, I think I'll just leave you alone with this|";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat9e25_5"){
text[0]="VATEILIKA: JUST! POKE! ING! Like it's nothing at all! Let me tell you, let me tell you about the escape fleet! It was me, Yuka and Naot, right? And Yuka suddenly asked, `Hey, what's more annoying, this or this?` And first he poked Naot rapidly, then he just";
text[1]="held his finger on his shoulder constantly, and Naot said the second one was the worst but it's nothing compared to the completely unexpected, completely random POKE on the shoulder that comes up from nowhere just when you're about to relax,";
text[2]="just when you thought you couldn't be worse off than having your homeworld Alpha Struck, just when you thought you'd never feel just one more POKE that's like it's piercing through your Nanofield and shoulder pads! NOTHING! It's| it's. Just. *Sigh*";
text[3]="Huff| huff| huff. Okay| huff. I'm sorry| just| just don't do that again. I'm sorry.";
portrait=116;
outline=3;
pages=4;}

if (global.textid=="chat9e26_1"){
text[0]="VATEILIKA: Wak Torma was really happy about hearing from Maeja again. It's pure luck that the Komato didn't get to either of them.";
portrait=116;
outline=3;
pages=1;}

if (global.textid=="chat9f_1"){
    global.cannotskipchat=1;
    if (global.kills+global.totkills>9*global.neutralkc){
        text[0]="IJI: Why| why didn't I kill her? Why couldn't I kill someone as awful as her?";
        text[1]="It would've been as easy| as anyone else.";
        portrait=5;
        outline=1;
        pages=2;
        }
    else{
        text[0]="IJI: Hhh| hhh| that should keep her down for a while.";
        portrait=5;
        outline=1;
        pages=1;
        }
    }
if (global.textid=="chat9f_2"){
    if (global.kills+global.totkills>9*global.neutralkc){
        text[0]="IJI: Maybe| it's not too late. Maybe I can stop myself from turning into someone like her.";
        if (global.specialtrigger1==0)
            text[1]="Watch me, Dan| Nothing can stop me now.";
        else
            text[1]="I have to find a room with a speaker, so I can tell Dan about this. This won't make the Komato any happier|";
        portrait=12;
        outline=1;
        pages=2;
        }
    else{
        if (global.specialtrigger1==0)
            text[0]="IJI: Watch me, Dan| nothing can stop me now!";
        else
            text[0]="IJI: I have to find a room with a speaker, so I can tell Dan about this. This won't make the Komato any happier!";
        portrait=1;
        outline=1;
        pages=1;
        }
    if (instance_number(obj_end)==0){
        instance_create(obj_iji.x,obj_iji.y,obj_end);
        global.sector=9;
        obj_sabot.cannotrestart=1;
        obj_sec9hologram.alarm[0]=5;
        obj_sec9hologram.sprite_index=spr_standup;
        obj_sec9hologram.image_single=-1;
        obj_sec9hologram.image_index=0;
        obj_sec9hologram.image_speed=0.5;
        }
    }

}