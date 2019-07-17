portrait=0;
outline=0;
obj_iji.startmusics=0;

if (global.sector==1){

if (global.textid=="chatz1_1"){
text[0]="SECTOR Z#$#";
if (!global.extras5){
    scr_readsum();
    if (!wrongsum){
        global.extras5+=1;
        scr_save(0);
        text[0]+="(You can now select Sector Z from `Single Sector play` in the Extras menu)";
        }
    }
outline=0;
pages=1;
with (obj_sabot)
    scr_seczmusicchange();
}

if (global.textid=="chat11_1"){
if (global.really){
text[0]="DAD: Iji, remember that this is reallyjoel's dad difficulty. It was named after me, the only person who could ever beat it. Check `Difficulty level info` on the Pause menu if you need more information. Good luck.";
pages=1;
}
else if (!global.specialtrigger16){
text[0]="DAN: Okay, let's get you out of there. I've left you some notes and cracked Tasen logbooks full of information ahead - press "+chr(global.usekey)+" to read the logbooks. To continue reading this message, press Down or "+chr(global.usekey)+".";
text[1]="Now, there are many things you must learn. Use the Left and Right arrow keys to move around, the Up key to jump, and hold Down to duck.";
pages=2;
}
else{
text[0]="DAN: Iji, you're playing on Ultimortal difficulty. It's the same as Extreme, but you can only upgrade your Health, there are no red or green Nanofields, there's a time limit on every Sector before your personal Nanofield self-combusts, and your enemies";
text[1]="are faster. If you think you're ready, then let's go!";
pages=2;
}
portrait=99;
outline=2;
obj_iji.startmusics=1;
obj_sabot.forcemusic=1;
}

if (global.textid=="chat12_1"){
text[0]="DAN: Okay, I think you're all set for heading out. Don't be surprised when I start talking to you through the speakers like this.";
pages=1;
portrait=99;
outline=2;}
if (global.textid=="chat12_2"){
text[0]="IJI: Um. Dan?";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat12_3"){
text[0]="DAN: What is it?";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat12_4"){
text[0]="IJI: This gun's so cumbersome, I can barely even carry it without standing straight| and how many Tasen do you think I'll have to face on my way to Krotera? I don't really want to fight them.";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat12_5"){
text[0]="DAN: You'll get used to it. Unless you learn how to defend yourself, you won't be prepared for what's ahead. Okay?";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat12_6"){
text[0]="IJI: Okay.";
portrait=6;
outline=1;
pages=1;}

if (global.textid=="chat13_1"){
if (global.specialtrigger16==1)
text[0]="DAN: Hi, it's Dan again. Since I doubt you'll be able to handle any Nanoweapons but the Shotgun, practice and get good with it. The more efficiently you can kill your enemies, the better.";
else
text[0]="DAN: Hi, it's Dan again. You need a Tasen stat of 3 to handle the Nanoweapon you see before you. It's up to you if you want it now, but the more efficiently you can kill your enemies, the better.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat13_2"){
text[0]="IJI: Dan?";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat13_3"){
text[0]="DAN: What's wrong?";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat13_4"){
text[0]="IJI: Uh, the Tasen, they kinda look like -";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat13_5"){
if (global.kills>0)
    text[0]="DAN: I can assure you, they're not people. They're not from this world. I know it may be difficult fighting them now, but you need to get over that as soon as possible, or you'll have no hope of reaching Krotera.";
else
    text[0]="DAN: I can assure you, they're not people. They're not from this world. Trust me, it'll get easier once you shoot your first Tasen - you'll have no hope of reaching Krotera at this rate.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat13_6"){
text[0]="IJI: |";
portrait=1;
outline=1;
pages=1;}

if (global.textid=="chat14_1"){
text[0]="IJI: He's not breathing| and no pulse.";
if (global.kills>5)
    portrait=5;
else
    portrait=6;
outline=1;
pages=1;}

if (global.textid=="chat15_1"){
text[0]="DAN: Whoa there, you're playing on Sudden Death - this means that EVERYTHING, including yourself, has only one hit point and 100 armor. Note that no unlockables based on damage or Cracks are earned by beating Sector X this way!";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat15_2"){
text[0]="IJI: What? `Sudden Death`? Unlockables? What are you talking about?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat15_3"){
text[0]="DAN: Oh, uh. Never mind.";
portrait=99;
outline=2;
pages=1;}

if (global.textid=="chat16_1"){
text[0]="IJI: `Employee of the month`? Th-This is -";
portrait=4;
outline=1;
pages=1;}
if (global.textid=="chat16_2"){
text[0]="IJI: This picture was taken when we visited dad. Must've been the same day the Tasen struck this place| I remember Mia wearing this ribbon.";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat16_3"){
text[0]="IJI: Dad| Mia|";
portrait=6;
outline=1;
pages=1;}
if (global.textid=="chat16_4"){
text[0]="DAN: Iji, what are you doing staring at that picture? Get a move on.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat16_5"){
text[0]="IJI: But, it's -";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat16_6"){
text[0]="DAN: What's done is done. Who's dead is dead. Get over it and move.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat16_7"){
text[0]="IJI: |";
portrait=1;
outline=1;
pages=1;}

if (global.textid=="chat17_1"){
text[0]="DAN: Iji, about those ceiling lamps -";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat17_2"){
text[0]="IJI: What?";
portrait=13;
outline=1;
pages=1;}
if (global.textid=="chat17_3"){
text[0]="DAN: Never mind.";
portrait=99;
outline=2;
pages=1;}

if (global.textid=="chat18_1"){
text[0]="You got the Null driver, selected by pressing 0 while in Active mode. It will stay in your inventory even if you return to the Main menu and load a different game file. The weapon disappears when you quit the game and will not be stored if you save.";
text[1]="WARNING: the wormholes generated by this corrupted prototype weapon are highly unstable. USE IT AT YOUR OWN RISK.";
portrait=0;
outline=0;
pages=2;}

if (global.textid=="chat1mia_1"){
text[0]="IJI: What? It's one of Mia's ribbons! What's it doing here?";
portrait=4;
outline=1;
pages=1;
}
if (global.textid=="chat1mia_2"){
text[0]="DAN: Iji, what's wrong?";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat1mia_3"){
text[0]="IJI: Uh, nothing. She can't be alive anyway. Never mind.";
portrait=5;
outline=1;
pages=1;}

}





if (global.sector==2){

if (global.textid=="chat21_1"){
text[0]="DAN: Hi, this is Dan again. You're now in Sector 2 of the military complex. There's a medical bay nearby, where some of the experiments on Nanotechnology took place. You should be able to find and assimilate a powerful upgrade there - it'll be hard to";
text[1]="get any farther without it. Remember that you're heading for a Tasen called Krotera, as you may be able to convince him to make the Tasen and their spaceship leave the planet.";
portrait=99;
outline=2;
pages=2;
obj_iji.startmusics=1;
obj_sabot.forcemusic=1;}
if (global.textid=="chat21_2"){
text[0]="IJI: I MAY be able to convince him? You don't even know if this is possible?";
if (global.totkills>1*global.neutralkc)
    portrait=1;
else
    portrait=5;
outline=1;
pages=1;
obj_iji.startmusics=1;
obj_sabot.forcemusic=1;}
if (global.textid=="chat21_3"){
text[0]="DAN: Well, no, considering his reputation - but it's all we can do at this time. I need more information on a certain subject first.";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat21_4"){
text[0]="IJI: What subject?";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;
obj_sabot.forcemusic=1;}
if (global.textid=="chat21_5"){
text[0]="DAN: I can't tell you yet. I said earlier that we have to take this one step at a time; I don't think you can handle it all at once.";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;
obj_sabot.forcemusic=1;}
if (global.textid=="chat21_6"){
text[0]="IJI: Humph! I'm not a child. Besides, you still haven't told me why this whole alien invasion thing has gone unnoticed by the rest of the world.";
portrait=2;
outline=1;
pages=1;
obj_iji.startmusics=1;
obj_sabot.forcemusic=1;}
if (global.textid=="chat21_7"){
text[0]="DAN: Well, that's because their spaceship was really well stealthed, and| stop asking questions and head for Krotera already.";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;
obj_sabot.forcemusic=1;}
if (global.textid=="chat21_8"){
text[0]="IJI: Got it. Doesn't look like you're telling me anything anyway.";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;
obj_sabot.forcemusic=1;}

if (global.textid=="chat22_1"){
text[0]="DAN: This door leads to the medical bay, where you'll find the upgrade I talked about earlier. However, you'll first have to find a Tasen terminal to open it. The terminal is colored purple and yellow, and should be nearby.";
portrait=99;
outline=2;
pages=1;}

if (global.textid=="chat23_1"){
text[0]="DAN: Great work, you found the upgrade. This should allow you to jump higher, so you can reach new areas.";
portrait=99;
outline=2;
pages=1;}

if (global.textid=="chat24_1"){
text[0]="DAN: This high-security door can be opened by cracking a terminal above. You could also try cracking the door directly, but I doubt you can handle it.";
portrait=99;
outline=2;
pages=1;
obj_iji.attitude=1;
obj_iji.c29a=1;
}
if (global.textid=="chat24_2"){
text[0]="IJI: What's that supposed to mean?";
portrait=10;
outline=1;
pages=1;
}
if (global.textid=="chat24_3"){
text[0]="DAN: What? The door is hard to crack. I didn't mean to insult you. Drop the attitude, you're making this difficult.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat24_4"){
text[0]="IJI: Hmph. Like you'd survive one minute in my shoes.";
portrait=2;
outline=1;
pages=1;
}
if (global.textid=="chat24_5"){
text[0]="DAN: What? I can't hear you when you whisper like that. Now crack the door directly or find the terminal.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat24_6"){
text[0]="IJI: Fine.";
portrait=1;
outline=1;
pages=1;
}

if (global.textid=="chat25_1"){
text[0]="DAN: Uh, Iji, you really shouldn't go in there unless you know what you're doing| even if you manage to crack that door, a Tasen Elite patrols the room beyond.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat25_2"){
text[0]="IJI: I'll do what I want, okay? I don't need my little brother bossing me around!";
portrait=2;
outline=1;
pages=1;
obj_iji.attitude=1;
}

if (global.textid=="chat26_1"){
text[0]="IJI: Looks like a specification of my Nanofield| and cyborg enhancements. I wonder how long they researched this stuff while having to avoid the Tasen? Maybe there are some valuable clues on here if I look closely enough.";
portrait=1;
outline=1;
pages=1;}

if (global.textid=="chat27_1"){
text[0]="DAN: Iji! Where have you been!?";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat27_2"){
text[0]="IJI: What?";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat27_3"){
text[0]="DAN: You just disappeared all of a sudden, and now you're back. I don't get it.";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat27_4"){
text[0]="IJI: Huh, me neither. All I can remember was a rave. Then again, I guess it was more like a mosh| inside a video game console.";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat27_5"){
text[0]="DAN: |";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat27_6"){
text[0]="IJI: Oh! I mean, actually it was this top-secret dimensional wormhole full of spherical aliens that some Tasen -";
portrait=4;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat27_7"){
text[0]="DAN: You know what? I'll just pretend this conversation never happened.";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}


if (global.textid=="chat29_1"){
instance_activate_object(obj_cdoor);
with (obj_cdoor){
    if (trigger==2)
        security=1;
    }
if (obj_iji.c29a)
    text[0]="DAN: Hey, I managed to get through to that door's security from here. It should be a breeze to crack now.";
else
    text[0]="DAN: Hey, I managed to get through to the security of a door that's in your way. It should be a breeze to crack now.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat29_2"){
if (obj_iji.c29a)
    text[0]="IJI: Right.";
else
    text[0]="IJI: Okay, I'll look for it.";
portrait=1;
outline=1;
pages=1;
}

if (global.textid=="chat2mia_1"){
text[0]="IJI: Wait, what's this? It's another of Mia's ribbons! Some rat must've found it and dragged it in here.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat2mia_2"){
text[0]="IJI: Mia| I can't recall what happened at all when the Tasen struck this place. Looks like me and Dan are the only ones who survived.";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat2mia_3"){
text[0]="IJI: Wait, I have to find Krotera - I gotta focus!";
portrait=1;
outline=1;
pages=1;}

}





if (global.sector==3 || global.sector==11){

if (global.textid=="chat31_1"){
text[0]="DAN: Iji, listen carefully now. This is Sector 3, where Elite Krotera is stationed. There's another powerful upgrade nearby that'll help you survive. We don't know if Krotera will choose to listen to you, but I don't have any backup plans until I've";
text[1]="obtained more information. I know he's not the friendliest guy around, and it's going to be dangerous, but -";
portrait=99;
outline=2;
pages=2;
obj_iji.startmusics=1;}
if (global.textid=="chat31_2"){
text[0]="IJI: Okay, got it. Get the upgrade, find Krotera.";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat31_3"){
text[0]="DAN: Are you sure you're okay now? If you don't want to do this|";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat31_4"){
text[0]="IJI: No, I'm fine. I can't run around being scared if we're going to save the world.";
portrait=5;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat31_5"){
text[0]="DAN: Heh, that's more like it. Are you going to trust me now?";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat31_6"){
text[0]="IJI: Yeah| I'll try harder to follow orders. Thanks, Dan.";
portrait=5;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat31_7"){
text[0]="DAN: Don't mention it. Now, to find the upgrade and Krotera, you'll have to get to another building in this complex - Sector 3 is split up between this building and the next one. Head down to ground level and enter the first structure you see.";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat31_8"){
text[0]="IJI: Got it.";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat31_9"){
if (global.totkills>2*global.neutralkc)
    text[0]="DAN: By the way, if you ever forget about a weapon, enemy, stat or Special trait, just check the Pause menu by pressing Escape.";
else
    text[0]="DAN: And by the way, you're more pacifistic than I expected. That's good in a way, but remember that your survival may be imperative to the future of the Earth.";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat31_10"){
text[0]="IJI: I know. And I won't let you down.";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}

if (global.textid=="chat32_1"){
text[0]="DAN: What you just assimilated was an Armor upgrade - you now take less damage from enemy Nanoweapons that damage your armor, like Machineguns. It doesn't offer any better protection against explosions and attacks that deal instant health damage, so you";
text[1]="still have to be careful not to get hit by rockets.";
portrait=99;
outline=2;
pages=2;}

if (global.textid=="chat33_1"){
if (obj_iji.readkomato==1)
    text[0]="IJI: Dan, I just confronted some kind of aliens I've never seen before! According to their logbooks they call themselves Komato, and they were sent out as a scout party to the Earth, but were shot down by the Tasen.";
else
    text[0]="IJI: Dan, I just confronted some kind of aliens I've never seen before! I didn't check their logbooks, but something's kind of different about them.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat33_2"){
if (obj_iji.readkomato==1){
    text[0]="DAN: A Komato scout team? I've read about that race in deciphered Tasen logs. The Komato are an interplanetary peacekeeping force who specialize in dealing with the Tasen. Well, we don't have time to wonder what they're doing here, you have to go talk to";
    if (global.truce)
        text[1]="Krotera. The lift leading up to his room is up ahead.";
    else
        text[1]="Krotera. The lift leading up to his room is up ahead, and it's only guarded by a single Tasen.";
    }
else{
    text[0]="DAN: Yeah, I've seen them through the cameras. Those are probably the Komato I've read about in my deciphered Tasen logs - they were probably sent as a scout team, but I guess they're stranded in here. Well, we don't have time to wonder what they're doing";
    if (global.truce)
        text[1]="here, you have to go talk to Krotera. The lift leading up to his room is up ahead.";
    else
        text[1]="here, you have to go talk to Krotera. The lift leading up to his room is up ahead, and it's only guarded by a single Tasen.";
    }
portrait=99;
outline=2;
pages=2;}
if (global.textid=="chat33_3"){
text[0]="IJI: Got it.";
portrait=1;
outline=1;
pages=1;}

if (global.textid=="chat34_1"){
global.cannotskipchat=1;
obj_sabot.ultimatecannotpause=0;
text[0]="KROTERA: What the - who are YOU?";
portrait=100;
outline=3;
pages=1;
if (global.truce==0)
    obj_iji.startmusics=1;
with (obj_sabot)
    scr_music("mus_dark");}
if (global.textid=="chat34_2"){
text[0]="IJI: Uh, I, my name's Iji, and I have to speak to you about -";
portrait=1;
outline=1;
pages=1;
if (global.specialtriggerb4==0 || !global.truce)
    obj_iji.startmusics=1;
}
if (global.textid=="chat34_3"){
text[0]="KROTERA: You - you're that Human Anomaly!";
portrait=100;
outline=3;
pages=1;
if (global.specialtriggerb4==0 || !global.truce)
    obj_iji.startmusics=1;
}
if (global.textid=="chat34_4"){
text[0]="IJI: W-Wait! I'm just here to tell you that you should leave this planet! So many people have died, and - and we don't even know why!";
portrait=10;
outline=1;
pages=1;
obj_iji.sprite_index=spr_lookaround;
obj_iji.image_speed=0.5;
obj_kroteratrigger.alarm[0]=26;
if (global.specialtriggerb4==0 || !global.truce)
    obj_iji.startmusics=1;
}
if (global.textid=="chat34_5"){
text[0]="KROTERA: HUH! Don't expect me to waste my time with some worthless human when the future of the Tasen is at stake! We're down to our last colony, and I have NO qualms with annihilating whatever's left standing on Origin to make room for us!";
portrait=101;
outline=3;
pages=1;
obj_krotera.sprite_index=spr_krotera_walk;
obj_krotera.hspeed=3;
obj_krotera.facing=1;
obj_krotera.ignorestand=1;
obj_krotera.alarm[7]=10;
if (global.specialtriggerb4==0 || !global.truce)
    obj_iji.startmusics=1;
}
if (global.textid=="chat34_6"){
text[0]="IJI: Origin? This is the Earth, we live here, and you just come here and try to kill us all! We haven't done anything wrong, so just| just leave!";
portrait=2;
outline=1;
pages=1;
if (global.specialtriggerb4==0 || !global.truce)
    obj_iji.startmusics=1;
}
if (global.textid=="chat34_7"){
text[0]="KROTERA: SILENCE! You know NOTHING of the Tasen, and you know NOTHING of the damned Komato! If this is our last chance to escape total extermination by their hands, we're not going anywhere! What are a few human lives compared to a million";
if ((global.totkills+global.kills)>3*global.neutralkc)
    text[1]="Tasen? Do you intend to murder us all to save a handful of your own kind, you over-violent LUNATIC?";
else
    text[1]="Tasen? Once we start expanding, there'll be no hope left for you!";
portrait=101;
outline=3;
pages=2;
obj_krotera.sprite_index=spr_krotera_walkleft;
obj_krotera.hspeed=-3;
obj_krotera.ignorestand=1;
obj_krotera.facing=0;
obj_krotera.alarm[7]=10;
if (global.specialtriggerb4==0 || !global.truce)
    obj_iji.startmusics=1;
}
if (global.textid=="chat34_8"){
if (global.trucefix){
    global.truce=1;
    global.truce2=1;
    }
if (global.truce2){
    if (global.truce){
        text[0]="IJI: But| hang on, I got a truce with you guys! The least you could do is listen!";
        global.trucefix=1;
        }
    else{
        text[0]="IJI: But| hang on, I got a truce with you guys! I admit I sort of broke it, but the least you could do is listen!";
        global.trucefix=0;
        }
    }
else
    text[0]="IJI: But -";
portrait=10;
outline=1;
pages=1;
if (global.specialtriggerb4==0 || !global.truce)
    obj_iji.startmusics=1;
}
if (global.textid=="chat34_9"){
if (global.truce2){
    if (global.truce)
        text[0]="KROTERA: Truce? You mean my troops declared a TRUCE behind my back!? TREASON! I bet it was that worthless Vateilika - I'll take care of her later! You should be thankful that yours is the last planet we'll ever have to Alpha Strike| now DIE!";
    else
        text[0]="KROTERA: Truce? You mean my troops declared a TRUCE behind my back!? Serves you right for breaking it! You should be thankful that yours is the last planet we'll ever have to Alpha Strike| now DIE!";
    }
else
    text[0]="KROTERA: SHUT UP! This planet is ours now, so we rule it as we see fit! You should be thankful that yours is the last planet we'll ever have to Alpha Strike| now DIE!";
portrait=101;
outline=3;
pages=1;
if (global.specialtriggerb4==0 || !global.truce)
    obj_iji.startmusics=1;
else{
    with (obj_kroteratrigger)
        instance_destroy();
    obj_krotera.maxhp=9;
    obj_krotera.hp=9;
    obj_iji.holdafterchat=1;
    instance_create(obj_iji.x,obj_iji.y,obj_sec3surprise);
    obj_sabot.ultimatecannotpause=1;
    }
}

if (global.textid=="chat34_10"){
text[0]="IJI: (Damn, he's gonna fight me! The floor is packed with turrets - I've gotta kick 'em out of the way before this gets out of hand! That Nanogun looks real dangerous too, better get behind him if he tries something heavy!)";
portrait=1;
outline=1;
pages=1;
if (!global.iimsx){
    global.iimsx=1;
    global.ignoremessagescroll=30;
    }
if (global.specialtriggerb4==0 || !global.truce)
    obj_iji.startmusics=1;
}

if (global.textid=="chat35_1"){
global.cannotskipchat=1;
if ((global.totkills+global.kills)>3*global.neutralkc)
    text[0]="KROTERA: Ugh| *cough*! You would kill so many| to save| so few?";
else
    text[0]="KROTERA: Ugh| *cough*! You would deny our race a home| to save| yours?";
text[1]="uh|#$#|";
portrait=102;
outline=3;
pages=2;}
if (global.textid=="chat35_2"){
text[0]="IJI: I, I'm not|";
portrait=5;
outline=1;
pages=1;
global.kills+=1;
global.killdata[95]=obj_krotera.killtype;
if (global.killdata[95]==0)
    global.killdata[95]=1;
}
if (global.textid=="chat35_3"){
text[0]="IJI: I could say the same thing about you!";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chat35_4"){
text[0]="DAN: Iji, it's Dan. Looks like it didn't go very well|";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat35_5"){
text[0]="IJI: No. Krotera said something about these Tasen being their last colony, and they came here to escape the Komato. It looks like the Tasen are on the run from them, and they don't even care how many people they kill on the way| he said that the Tasen";
text[1]="have even used the Alpha Strike on other planets before|";
if (global.totkills+global.kills>3*global.neutralkc)
    portrait=1;
else
    portrait=5;
outline=1;
pages=2;}
if (global.textid=="chat35_6"){
text[0]="DAN: Hmmm. So that must be it. Like I said before, from what I deciphered from old Tasen logs, the Komato advertise themselves as a peacekeeping force. Maybe they're some sort of space police, and now there's no doubt that the Tasen are rotten to the core.";
text[1]="I have an idea that might just work.";
portrait=99;
outline=2;
pages=2;}
if (global.textid=="chat35_7"){
text[0]="IJI: Really? I thought you said that this was our last chance.";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat35_8"){
text[0]="DAN: No, don't worry. We won't give up yet. There's a Tasen communication area nearby - if I've interpreted the most recent information on the Komato correctly, I know the code to send a distress call to a nearby fleet. With any luck, the Komato will";
text[1]="come down here and wipe the Tasen out for us.";
portrait=99;
outline=2;
pages=2;}
if (global.textid=="chat35_9"){
text[0]="IJI: Whoa, is that safe? I mean, more aliens coming down here?";
portrait=4;
outline=1;
pages=1;
}
if (global.textid=="chat35_10"){
text[0]="DAN: That's why I was holding this back from you before. I didn't want to worry you. If anyone can take on the Tasen, though, it's the Komato. We have to give it a try| after all, we won't get any further ourselves.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat35_11"){
text[0]="IJI: I guess you're right. Okay, lead the way.";
portrait=1;
outline=1;
pages=1;
global.sector=3;
obj_sabot.cannotrestart=1;
if (instance_number(obj_end)==0)
    instance_create(obj_iji.x,obj_iji.y,obj_end)}
if (global.textid=="chat35_12"){
if (!global.truce2 && !obj_krotera.deathbyiji){
    text[0]="(Though Iji didn't directly finish Krotera off, she still feels responsible for his death. Her kill counter increases by 1.)";
    portrait=0;
    outline=0;
    pages=1;}
else{
    text[0]="DAN: By the way, with Krotera dead, I think we can consider that little truce with the Tasen permanently over. Be careful.";
    portrait=99;
    outline=2;
    pages=1;}
}
if (global.textid=="chat35_13"){
text[0]="(Though Iji didn't directly finish Krotera off, she still feels responsible for his death. Her kill counter increases by 1.)";
portrait=0;
outline=0;
pages=1;}

if (global.textid=="chat36_1"){
text[0]="???: Wait! Anomaly, I'm glad I found you!";
portrait=116;
outline=3;
pages=1;
obj_iji.sprite_index=spr_basic;
global.facing=1;}
if (global.textid=="chat36_2"){
text[0]="IJI: What? Who are you?";
portrait=4;
outline=1;
pages=1;}
if (global.textid=="chat36_3"){
text[0]="VATEILIKA: I'm Soldier Vateilika, and I unofficially represent the troops in this here part of the building. I'm here to give you a message on behalf of my teammates, so listen up!";
portrait=116;
outline=3;
pages=1;}
if (global.textid=="chat36_4"){
text[0]="IJI: Uh, what is it?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat36_5"){
if (global.totkills==0){
    text[0]="VATEILIKA: You see, our orders are to kill all human resistance, but the reports of the Human Anomaly - that's you - made me realize something. Not only do you seem impossible to kill, you haven't killed a single one of us despite being armed with a";
    text[1]="Nanogun| and my team doesn't want to harm any humans anyway. I figured a little truce was in order.";
    }
else{
    text[0]="VATEILIKA: You see, our orders are to kill all human resistance, but the reports of the Human Anomaly - that's you - made me realize something. Not only do you seem impossible to kill, you've barely killed any of us despite being armed with a";
    text[1]="Nanogun. I assume anything you've done was in self-defense if you've gotten this far with that mindset| and my team doesn't want to harm any humans either. I figured a little truce was in order.";
    }
portrait=116;
outline=3;
pages=2;}
if (global.textid=="chat36_6"){
text[0]="IJI: A truce?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat36_7"){
text[0]="VATEILIKA: Yeah. You don't shoot us, we don't shoot you. Simple! We'll even leave some doors open for you, so you won't have to attract suspicion by destroying them while escaping from here. Speaking of which, you ARE trying to escape, right?";
portrait=116;
outline=3;
pages=1;}
if (global.textid=="chat36_8"){
text[0]="IJI: Ah, no. Actually I'm going to see Krotera so I can have a talk with him.";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat36_9"){
text[0]="VATEILIKA: Did you say Krotera!? Hah! You're a human, he ain't gonna listen to a word you've got to say. Give it up and get out of here while you still can - I gave you this chance to escape so you won't be any more trouble to us, not so you can get yerself";
text[1]="flattened by that brute!";
portrait=116;
outline=3;
pages=2;}
if (global.textid=="chat36_10"){
text[0]="IJI: Right.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat36_11"){
text[0]="VATEILIKA: Oh yeah, and this truce ain't nothing but a shaky agreement among the troops around here. If you so much as poke one of us - so much as fire a weapon anywhere near us, or destroy a door where we can hear it - the truce is OVER. It's not";
text[1]="likely anyone's gonna agree not to take you down if you do anything suspicious like that. Do you understand? No messing around, and no poking the Turrets either!";
portrait=116;
outline=3;
pages=2;}
if (global.textid=="chat36_12"){
text[0]="IJI: Yeah, yeah, I got it.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat36_13"){
text[0]="VATEILIKA: Good. Now don't try to speak to anyone on your way out, you ain't gonna find anyone as friendly as me around here. Nope! So hurry up and go!";
portrait=116;
outline=3;
pages=1;}

if (global.textid=="chat37_1"){
text[0]="VATEILIKA: I've heard enough of THAT, thank you!";
portrait=116;
outline=3;
pages=1;
//Removed in version 1.7
//instance_create(obj_iji.x,obj_iji.y,obj_sec3timebump);
global.cannotskipchat=0;
obj_iji.instantend=1;
global.specialtrigger1=1;}
if (global.textid=="chat37_2"){
text[0]="IJI: Wh-What the?";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chat37_3"){
text[0]="VATEILIKA: Hey, Anomaly! I'm glad you kept the truce, I wasn't sure whether to help you or not. I got a bad feeling when you said you were heading up here though| and really, that bastard got what he deserved. Ordering the Alpha Strike was bad enough,";
text[1]="but treating his troops the same at a time like this|";
portrait=116;
outline=3;
pages=2;}
if (global.textid=="chat37_4"){
text[0]="IJI: |";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat37_5"){
text[0]="VATEILIKA: |";
text[1]="Oh! Don't tell anyone you saw me using that weapon, alright? In case there are people still as strict about illegal cracking and stuff. It wasn't me anyway, I got it from Yukabacera a long time ago, so -";
portrait=116;
outline=3;
pages=2;}
if (global.textid=="chat37_6"){
text[0]="IJI: Gah! You, you just KILLED Krotera! What's everyone gonna say now!? And who am I supposed to talk to now!?";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chat37_7"){
text[0]="VATEILIKA: Whoa, hey! He was just about to decorate the walls with you, and that's how you thank me? Fine, see if I help you again! Uh-uh.";
portrait=116;
outline=3;
pages=1;
obj_sec3surprise.sprite_index=spr_tasensoldier_walk;
obj_sec3surprise.hspeed=2;
obj_sec3surprise.alarm[2]=10;
obj_sec3surprise.image_index=0;
obj_sec3surprise.image_single=-1;
obj_sec3surprise.image_speed=0.5;
with (obj_sabot)
    scr_music("mus_calm");}
if (global.textid=="chat37_8"){
text[0]="IJI: |";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat37_9"){
text[0]="VATEILIKA: Alright, I'm sorry. You're serious about this, aren't you? To be honest, I don't think a single Elite around here could convince everyone to just pack their hot drinks and leave. Not a chance, the Komato are so close on our backs we don't even dare";
text[1]="to use our communicator. You should just - oh, never mind.";
portrait=116;
outline=3;
pages=2;
obj_sec3surprise.sprite_index=spr_tasensoldier_basicleft;
obj_sec3surprise.hspeed=0;
obj_sec3surprise.image_single=0;}
if (global.textid=="chat37_10"){
text[0]="IJI: What?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat37_11"){
text[0]="VATEILIKA: No, I do remember I had somewhere to go. See ya!";
portrait=116;
outline=3;
pages=1;}
if (global.textid=="chat37_12"){
text[0]="IJI: Wait! What about him!?";
portrait=2;
outline=1;
pages=1;
obj_sec3surprise.sprite_index=spr_tasensoldier_walk;
obj_sec3surprise.hspeed=2;
obj_sec3surprise.alarm[2]=10;
obj_sec3surprise.image_index=0;
obj_sec3surprise.image_single=-1;
obj_sec3surprise.image_speed=0.5;}
if (global.textid=="chat37_13"){
text[0]="VATEILIKA: Oh. Let's just pretend you did it, right? Better than starting a war here. If they find us together, things are gonna turn REAL sour. A lot of people I know would be dead for sure. Um, I think it's best if you give me a headstart so I can get";
text[1]="out of here, okay? See you later! And sorry for the mess!";
portrait=116;
outline=3;
pages=2;
obj_sec3surprise.sprite_index=spr_tasensoldier_basicleft;
obj_sec3surprise.hspeed=0;
obj_sec3surprise.image_single=0;}
if (global.textid=="chat37_14"){
text[0]="IJI: No, wait!";
portrait=2;
outline=1;
pages=1;
obj_sec3surprise.sprite_index=spr_tasensoldier_walk;
obj_sec3surprise.hspeed=4;
obj_sec3surprise.alarm[2]=300;
obj_sec3surprise.image_index=0;
obj_sec3surprise.image_single=-1;
obj_sec3surprise.image_speed=0.5;}
if (global.textid=="chat37_15"){
text[0]="DAN: Iji, what happened?";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat37_16"){
text[0]="IJI: I, uh, Krotera - but that Tasen -";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat37_17"){
text[0]="IJI: I guess she saved my life. Krotera said something about this being their last colony, though. Looks like they came here to escape the Komato. He said the Tasen have used the Alpha Strike on other planets before|";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat37_18"){
text[0]="DAN: Hm. I'm glad you're okay, but this isn't good news. Like I said before though, the Komato seem to be some kind of peacekeeping force. Maybe they're some sort of space police| and I have an idea that might just work.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat37_19"){
text[0]="IJI: Really? I thought this was our last chance.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat37_20"){
text[0]="DAN: No, don't worry. We won't give up yet. There's a Tasen communication area nearby - if I've interpreted the most recent information on the Komato correctly, I know the code to send a distress call to a nearby fleet. With any luck, the Komato will";
text[1]="come down here and wipe the Tasen out for us.";
portrait=99;
outline=2;
pages=2;}
if (global.textid=="chat37_21"){
text[0]="IJI: Whoa, is that safe? I mean, more aliens coming down here?";
portrait=4;
outline=1;
pages=1;}
if (global.textid=="chat37_22"){
text[0]="DAN: That's why I was holding this back from you before. I didn't want to worry you. If anyone can take on the Tasen, though, it's the Komato. We have to give it a try| after all, we won't get any farther ourselves.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat37_23"){
text[0]="IJI: I'm not sure I'm okay with it, but when you put it like that| I guess you're right. It's just, that girl - never mind.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat37_24"){
text[0]="DAN: Look, we can talk about this later. With Krotera dead, I think we can consider that truce with the Tasen permanently over. Be careful.";
portrait=99;
outline=2;
pages=1;
global.cannotskipchat=1;}

if (global.textid=="chat3mia_1"){
text[0]="IJI: Huh? It's another ribbon. Mia, you silly, you must've carried lots of these when dad was showing us around.";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat3mia_2"){
text[0]="IJI: Strange. Why do I keep thinking of you, when I've got something so much more important to do?";
if (global.totkills+global.kills<=3*global.neutralkc)
    portrait=6;
else
    portrait=12;
outline=1;
pages=1;}
if (global.textid=="chat3mia_3"){
text[0]="DAN: Iji, what are you doing? You don't have time to daydream here.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat3mia_4"){
text[0]="IJI: I-I was just thinking of someone.";
if (global.totkills+global.kills<=3*global.neutralkc)
    portrait=5;
else
    portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat3mia_5"){
text[0]="DAN: Hm. Don't dawdle.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat3mia_6"){
text[0]="IJI: Got it.";
if (global.totkills+global.kills<=3*global.neutralkc)
    portrait=5;
else
    portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat3mia_7"){
text[0]="IJI: (Something tells me this trail of crumbs won't lead me anywhere useful, but like a trail, it also feels like missing just one of these would make me miss all the rest. And then I fear I'd forget her| I gotta keep finding the ribbons.)";
portrait=12;
outline=1;
pages=1;}
}





if (global.sector==4){

if (global.textid=="chat41_1"){
text[0]="DAN: Okay, this is Sector 4. You'll find a Tasen reactor farther in. Power it up, and we'll be able to use their communicator to send the distress call. Be very careful, they're likely tightening security now that Krotera's gone.";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;
global.truce=0;
global.truce2=0;}
if (global.textid=="chat41_2"){
text[0]="IJI: Thanks. I'll need it.";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat41_3"){
if (global.suddendeath)
    text[0]="DAN: One more thing. If you're having trouble surviving, upgrade Assimilate to carry more ammo, and Tasen and Komato for some better weapons.";
else if (global.specialtrigger16)
    text[0]="DAN: One more thing. If you're having trouble surviving, get as much Nano as you can to upgrade your Health.";
else
    text[0]="DAN: One more thing. If you're having trouble surviving, upgrade your Health as much as you can, but don't forget Assimilate to carry more ammo, and Tasen and Komato for some better weapons.";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}

if (global.textid=="chat42_1"){
text[0]="DAN: Hm, I forgot about those high-security doors down there. They're blocking the way to the reactor and communicator control. This empty elevator shaft leads to two storages, A and B, and there's one terminal in each of them to open those doors. There";
text[1]="is a quick way around the Security doors up above, but it's blocked by a Shield door - you'd have to be pretty strong to take it down.";
portrait=99;
outline=2;
pages=2;}

if (global.textid=="chat44_1"){
text[0]="DAN: Man, it's just one security door after another! Don't worry, this is the last one. Just head left, and you'll soon find the terminal to open it.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat44_2"){
text[0]="IJI: Dan?";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat44_3"){
text[0]="DAN: What?";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat44_4"){
text[0]="IJI: |Nevermind.";
portrait=1;
outline=1;
pages=1;}

if (global.textid=="chat45_1"){
global.cannotskipchat=1;
if (global.specialtrigger1==1 && global.kills+global.totkills<=4*global.neutralkc)
    global.specialtriggerc=1;
text[0]="DAN: Finally, there's the Tasen computer connected to the communicator. Crack it, and I'll be able to access it from here and send the distress call to the Komato.";
portrait=99;
outline=2;
pages=1;
}
if (global.textid=="chat45_2"){
if (global.specialtrigger1==1 && global.kills+global.totkills<=4*global.neutralkc)
    text[0]="IJI: Dan, are you sure we should do this? If we let the Komato loose here, we'll just repeat what the Tasen did to us.";
else if (global.specialtriggerb4==1)
    text[0]="IJI: Dan, are you sure we should do this? I mean, they nearly destroyed the world, and mankind too, but if we do the same to the Tasen -";
else if (obj_iji.mistrustkomato>3)
    text[0]="IJI: Dan, are you sure we should do this? I read some logbooks about them, and I don't know if we can really trust them. They don't look like `space police` to me.";
else
    text[0]="IJI: Alright. If they're really `space police` like you said, this has gotta be the best way to get rid of the Tasen.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat45_3"){
if (global.specialtrigger1==1 && global.kills+global.totkills<=4*global.neutralkc){
    text[0]="DAN: Look. Do we want to save the world or not? Do you think the Tasen were right in what they did? No. I think they deserve whatever's coming to them. Don't forget that they're going to kill us all unless we do something like this. Don't get hung up";
    text[1]="on that one single Tasen being nice to you, they're still murderers.";
    pages=2;
    }
else if (global.specialtriggerb4==1){
    text[0]="DAN: Look. Do we want to save the world or not? Do you think the Tasen were right in what they did? No. I think they deserve whatever's coming to them. Don't forget that they're going to kill us all unless we do something like this. Don't get hung up";
    text[1]="on that one single Tasen being nice to you, they're still murderers. We're the only ones who can stop them.";
    pages=2;
    }
else if (obj_iji.mistrustkomato>3){
    text[0]="DAN: Huh, I'm not sure either, but I don't know anything else to do at this point. And to be honest, I don't think the world can get any worse than this.";
    pages=1;
    }
else{
    text[0]="DAN: Exactly. It may be dangerous for us to get in the way, so we'd best stay back while they do their job.";
    pages=1;
    }
portrait=99;
outline=2;}
if (global.textid=="chat45_4"){
if (global.specialtrigger1==1 && global.kills+global.totkills<=4*global.neutralkc){
    text[0]="IJI: And we'll be the same! That `single nice Tasen` probably saved my life when she took Krotera out, and she's got her whole team refusing their orders to attack humans!";
    portrait=2;
    with (obj_sabot)
        scr_music("mus_calm");
    }
else if (global.specialtriggerb4==1){
    text[0]="IJI: I guess you're right, as usual. This is better than nothing, I guess. I'm cracking the terminal now.";
    portrait=5;
    }
else if (obj_iji.mistrustkomato>3){
    text[0]="IJI: I guess you're right, as usual. Better than doing nothing, I guess.";
    portrait=5;
    }
else{
    text[0]="IJI: Got it. Cracking that terminal now.";
    portrait=1;
    }
outline=1;
pages=1;
instance_create(obj_iji.x,obj_iji.y,obj_end)}
if (global.textid=="chat45_5"){
text[0]="IJI: I| I've followed you this far, but I don't think I can do it anymore. I'd rather let the Tasen live than see them destroyed.";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat45_6"){
text[0]="DAN: What!? Listen, seriously. If we don't send that call we're history! The colony will grow until they overrun the planet! Just crack that terminal, got it?";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat45_7"){
text[0]="IJI: I'm sorry, Dan. Krotera was right, the Earth belongs to them now. Anything we do will just lead to more suffering. I can't call for the Komato. I can't kill that many people.";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat45_8"){
text[0]="IJI: I can't do it|";
portrait=6;
outline=1;
pages=1;
with (obj_iji){
    visible=0;
    invisible=1;
    instance_create(x,y,obj_sec4doll);
    }
}
if (global.textid=="chat45_9"){
text[0]="DAN: Damnit! Iji!";
portrait=99;
outline=2;
pages=1;}

if (global.textid=="chat46_1"){
text[0]="DAN: Uh, Iji, how in the WORLD did you get in there?";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat46_2"){
text[0]="IJI: I dunno. Drove around, opened some doors, jumped a little here and there. Nothing special.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat46_3"){
text[0]="DAN: Right. It just bothers me how you seem to access blocked-off, restricted areas so easily.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat46_4"){
text[0]="IJI: Hey, I'm not the one who designed this complex. I'd worry more about their poor job at keeping people out of the ventilation ducts.";
portrait=1;
outline=1;
pages=1;
}

if (global.textid=="chat47_1"){
}

if (global.textid=="chat4mia_1"){
text[0]="IJI: It's another ribbon.";
if (global.totkills+global.kills<=4*global.neutralkc)
    portrait=5;
else
    portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat4mia_2"){
text[0]="DAN: Ribbon?";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat4mia_3"){
text[0]="IJI: Oh. I'm just thinking of Mia again. I mean -";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat4mia_4"){
text[0]="DAN: Mia? You know she's dead, right?";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat4mia_5"){
text[0]="IJI: Y-Yeah, it's just that I keep finding these ribbons she dropped when dad was showing us around.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat4mia_6"){
text[0]="DAN: I see. I thought she only had - never mind.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat4mia_7"){
text[0]="IJI: Dan? I don't mean I never liked you too, I just -";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat4mia_8"){
text[0]="DAN: I know. You and Mia were close. Much closer than I ever was to any of you.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat4mia_9"){
text[0]="IJI: Come on. Don't say that.";
portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat4mia_10"){
text[0]="DAN: I know what it's like. I miss dad too, and I lost all my friends, everyone| it's been six months for me, so I've learnt to accept it. You've already adapted much faster than me though. You're pretty strong.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat4mia_11"){
text[0]="IJI: No, I feel empty without Mia around| so I welcome your support.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat4mia_12"){
text[0]="DAN: Uh, I would too, but listen. Life is different now. Personally, I can't lend anyone my support anymore. Don't get too attached to someone who might be killed at any moment - the Tasen are literally on my doorstep. I don't want you to see me as";
text[1]="your brother. You have to learn to support yourself, because you can't rely on anyone else.";
portrait=99;
outline=2;
pages=2;}
if (global.textid=="chat4mia_13"){
text[0]="IJI: What!? How could you say that? I'm the one supposed to be supporting YOU, anyway!";
portrait=2;
outline=1;
pages=1;
obj_iji.attitude=1;
}
if (global.textid=="chat4mia_14"){
text[0]="DAN: Look, forget what I just said, okay? You're not ready to think like that yet. Talk to you later.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chat4mia_15"){
text[0]="IJI: |";
if (global.totkills+global.kills<=4*global.neutralkc)
    portrait=5;
else
    portrait=1;
outline=1;
pages=1;}

}





if (global.sector==5 || global.sector==12){

if (global.textid=="chat51_1"){
text[0]="DAN: This is strange. As far as I know, the Komato fleet was relatively close, and their scout team must've been looking for the Tasen. It shouldn't take them that long.";
text[1]="Wait, something's happening outside. Make sure to take -";
portrait=99;
outline=2;
pages=2;
obj_iji.startmusics=1;}
if (global.textid=="chat51_2"){
scr_shakescreen(3);
scr_sound("glo_thunder");
text[0]="DAN: WHOA!";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat51_3"){
text[0]="IJI: What the! Dan? Dan, can you hear me?";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat51_4"){
text[0]="IJI: |";
portrait=2;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat51_5"){
text[0]="IJI: DAN!";
portrait=3;
outline=1;
pages=1;
obj_iji.startmusics=1;}

if (global.textid=="chat52_1"){
text[0]="IJI: Whoa, those ships!";
portrait=4;
outline=1;
pages=1;}
if (global.textid=="chat52_2"){
if (global.specialtriggerc==1)
    text[0]="IJI: I knew it| the Komato will tear the planet apart to destroy the Tasen.";
else
    text[0]="IJI: I thought I was prepared for this| the Komato will tear the planet apart to destroy the Tasen.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chat52_3"){
if (global.kills+global.totkills>4*global.berserkkc)
    text[0]="IJI: Well, if it's a fight they want, it's a fight they'll get. I've gotta find Dan!";
else
    text[0]="IJI: I've gotta find Dan!";
portrait=2;
outline=1;
pages=1;}

if (global.textid=="chat53_1"){
text[0]="IJI: It's another jump upgrade. Wasn't there a really tall shaft above here? I'm pretty sure I could reach the top now.";
portrait=1;
outline=1;
pages=1;}

if (global.textid=="chat54_1"){
global.cannotskipchat=1;
obj_sabot.ultimatecannotpause=0;
text[0]="ASHA: HALT! Now what ridiculous kind of Tasen are you supposed to be?";
portrait=103;
outline=4;
pages=1;
obj_iji.startmusics=1;
with (obj_sabot)
    scr_music("mus_asha");
}
if (global.textid=="chat54_2"){
text[0]="IJI: Wait! I'm just a human, I don't want to have anything to do with you!";
portrait=2;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat54_3"){
if (global.kills>4*global.neutralkc)
    text[0]="ASHA: Ho! So this is the rampaging `Human Anomaly`? What a joke!";
else
    text[0]="ASHA: Ho! So this is the `Human Anomaly` the Tasen are so upset about? Who's your goal this time?";
portrait=103;
outline=4;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat54_4"){
text[0]="IJI: What!? I don't know what you're talking about, I'm just trying to get out of here!";
portrait=2;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat54_5"){
if (global.kills>4*global.neutralkc){
    text[0]="ASHA: Don't even try it! We made planetfall mere moments ago, and already the reports on a single cybernetic human tearing through the battlefield are pouring in! We Assassins have a special prize to collect for your head, and I'm the best there is! Your death";
    text[1]="will be swift!";
    pages=2;
    }
else{
    text[0]="ASHA: Don't even try it! You may have assassinated a Tasen leader, but that doesn't mean you're not after ours too! We Assassins have a special prize to collect for your head, and I'm the best there is - your death will be swift!";
    pages=1;
    }
portrait=103;
outline=4;
obj_iji.startmusics=1;}
if (global.textid=="chat54_6"){
text[0]="IJI: (Looks like he's serious - I don't know what to expect from this guy, so I should just hold still and counter whatever attack he throws at me. I bet he doesn't care about avoiding puny weapons like the Shotgun, though - it may be my only chance!)";
portrait=1;
outline=1;
pages=1;
if (!global.iimsx){
    global.iimsx=1;
    global.ignoremessagescroll=30;
    }
obj_iji.startmusics=1;}

if (global.textid=="chat55_1"){
global.cannotskipchat=1;
if (obj_ashatrigger.ashanuked==1)
    text[0]="ASHA: How the - how did you get a Nuke!? GHHH! I'LL GET YOU FOR THIS, HUMAN!";
else
    text[0]="ASHA: Ghk| impossible! You - I underestimated you, Anomaly! Mark my words, I'm going to destroy you sooner or later! You've messed with the wrong Assassin!";
portrait=104;
outline=4;
pages=1;
obj_iji.image_single=-1;
obj_iji.image_index=0;
}
if (global.textid=="chat55_2"){
text[0]="IJI: |";
portrait=2;
pages=1;
outline=1;
if (global.facing==0)
    obj_iji.sprite_index=spr_lookaroundleft;
else
    obj_iji.sprite_index=spr_lookaround;
obj_iji.image_speed=0.5;
obj_ashatrigger.alarm[3]=26;
}
if (global.textid=="chat55_3"){
if (global.kills+global.totkills>5*global.berserkkc)
    text[0]="IJI: He warped away - but now there's even a bounty on me!";
else if (global.kills+global.totkills>5*global.neutralkc)
    text[0]="IJI: He warped away| but now there's even a bounty on me!";
else
    text[0]="IJI: He warped away| at least I didn't have to kill him, but now there's even a bounty on me!";
portrait=5;
outline=1;
pages=1;
}
if (global.textid=="chat55_4"){
if (global.kills+global.totkills>5*global.berserkkc){
    text[0]="IJI: Looks like this won't be getting any easier. Dan's right, I have to stay strong - and I have to find him!";
    portrait=12;
    }
else if (global.kills+global.totkills>5*global.neutralkc){
    text[0]="IJI: I have to get out of here! Wait, Dan's right, I have to stay strong - and I have to find him!";
    portrait=12;
    }
else{
    text[0]="IJI: I have to get out of here! Wait, calm down| Dan's right, I have to stay strong - and I have to find him!";
    portrait=9;
    }
outline=1;
pages=1;
if (instance_number(obj_end)==0){
    obj_iji.visible=0;
    obj_iji.invisible=1;
    global.sector=5;
    obj_sabot.cannotrestart=1;
    tempid=instance_create(obj_iji.x,obj_iji.y,obj_end)
    tempid.visible=1;
    if (global.facing==0)
        tempid.sprite_index=spr_duckleft;
    else
        tempid.sprite_index=spr_duck;
    tempid.image_speed=0.5;
    }
}

if (global.textid=="chat56_1"){
text[0]="IJI: The ceiling's full of cracks. I bet I can blow it up.";
portrait=1;
outline=1;
pages=1;}

if (global.textid=="chat57_1"){
text[0]="IJI: Wait a sec, this is where I came from! The exit must be farther to the right.";
portrait=1;
outline=1;
pages=1;}

if (global.textid=="chat58_1"){
text[0]="DAN: We're just going back and forth with this. I'm telling you it won't be your fault if we call for them. I'll take responsibility, okay?";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat58_2"){
text[0]="IJI: That's not the point. What does it matter who sends the call?$";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat58_3"){
text[0]="DAN: Look, those people spent months on your Nanofield. Three of them held out all the way to the end because of how strongly they wanted you to succeed. You're throwing that away.";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat58_4"){
text[0]="IJI: I'm not! Why don't we look for more Elites? Krotera must've been the worst of the bunch.";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat58_5"){
text[0]="DAN: It's too late for that, there's no way anyone - wait. Something's happening outside. Looks like some ships are -";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat58_6"){
scr_shakescreen(3);
scr_sound("glo_thunder");
text[0]="DAN: WHOA!";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat58_7"){
text[0]="IJI: What the! Dan? Dan, can you hear me?";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat58_8"){
text[0]="IJI: |";
portrait=2;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chat58_9"){
text[0]="IJI: DAN!";
portrait=3;
outline=1;
pages=1;
obj_iji.startmusics=1;}

if (global.textid=="chat5mia_1"){
text[0]="IJI: Another ribbon. Did she really have this many?";
if (global.kills+global.totkills>5*global.neutralkc)
    portrait=1;
else
    portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat5mia_2"){
text[0]="IJI: Mia, help me! I have to keep going! I have to find Dan|";
if (global.kills+global.totkills>5*global.neutralkc)
    portrait=2;
else
    portrait=6;
outline=1;
pages=1;}
if (global.textid=="chat5mia_3"){
text[0]="IJI: Wait, I think I know a way to find him|";
if (global.kills+global.totkills>5*global.neutralkc)
    portrait=1;
else
    portrait=5;
outline=1;
pages=1;}
if (global.textid=="chat5mia_4"){
text[0]="IJI: But first I have to get out of this Sector before they blow it all to bits! I don't care what Dan says about supporting ourselves, he needs my help! Thanks, Mia!";
if (global.kills+global.totkills>5*global.neutralkc)
    portrait=12;
else
    portrait=1;
outline=1;
pages=1;}

}

scr_chats2();
scr_chats3();