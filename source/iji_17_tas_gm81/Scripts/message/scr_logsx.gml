obj_iji.startmusics=0;

//Logs in Sector X
if (global.textid=="textx01"){
text[0]="Author: Komato Trooper 89524-01120-91040#$#Subject: DAMN IT!!!";
if (global.killdata[797]==1)
    text[1]="The Human Anomaly walked into a fight with Iosa - and made it out alive! I don't know about you, but I'm getting out of here RIGHT NOW!";
else
    text[1]="Iosa has fallen! Something is going very, very wrong here, and I don't wanna stick around to find out what!";
pages=2;}
if (global.textid=="textx02"){
if (global.killdata[797]==1){
    text[0]="Author: Komato Assassin Asha#$#Subject: Seek and destroy";
    text[1]="All available units in area 693K-A79 are to seek and destroy the Human Anomaly. Avoid termination if possible; we want to study her Nanotechnology, and in particular her Nanogun. The Alpha Strike has been postponed until either this goal is achieved,";
    text[2]="or we lose too many forces to her. General Tor reserves the right to call back all forces and commence Alpha Strike at any given moment; his patience is running out. Beware - this is the same individual that defeated Annihilator Iosa. Do not underestimate";
    text[3]="her under any circumstances.";
    }
else{
    text[0]="Author: Komato Assassin Asha#$#Subject: Seek and destroy";
    text[1]="All available units in area 693K-A79 are to seek and destroy the Human Anomaly. Avoid termination if possible; we want to study her Nanotechnology, and in particular her Nanogun. The Alpha Strike has been postponed until either this goal is achieved,";
    text[2]="or we lose too many forces to her. General Tor reserves the right to call back all forces and commence Alpha Strike at any given moment; his patience is running out. Beware - this is the same individual that we believe killed Annihilator Iosa. Do not";
    text[3]="underestimate her under any circumstances.";
    }
pages=4;}
if (global.textid=="textx03"){
text[0]="Author: Komato Assassin 90201-25345-15880#$#Subject: BAILING OUT";
if (global.totkills>9*global.neutralkc){
    text[1]="Okay, every one of us in Asha's squad have read his orders by now, and you know what? Behind that calm military talk is someone who's gone completely insane. Asha's gonna take on the Anomaly no matter what! I'm bailing out of this one, and I know you're all";
    text[2]="with me - let's head up to lower orbit, the bounty ain't worth the risk. Asha can do what he wants, and he can die whatever horrible death that crazy human's got in store for him as far as I'm concerned!";
    }
else{
    text[1]="Okay, every one of us in Asha's squad have read his orders by now, and you know what? Behind that calm military talk is someone who's gone completely insane. Asha's gonna take on the Anomaly no matter what! I'm bailing out of this one, and I know you're all";
    text[2]="with me - let's head up to lower orbit, the bounty ain't worth the risk. Asha can do what he wants as far as I'm concerned!";
    }
pages=3;}
if (global.textid=="textx04"){
if (global.killdata[797]==1){
    text[0]="Author: Komato Trooper 90475-36203-57827#$#Subject: My job sucks more than your job";
    text[1]="Don't complain, Tarixuro. I wanted to be famous, and what am I famous for? Inventing and coding the kill counter in the Annihilators' visor displays. Some people want me dead for what happened at Ciretako, and I don't even know what the";
    text[2]="Annihilators will say when they find out that the counter reverts to zero after passing a thousand. Iosa the Invincible once reported the bug, but luckily for me she's not the kind to turn on her own over a little thing like that.";
    }
else{
    text[0]="Author: Komato Trooper 90475-36203-57827#$#Subject: My job sucks more than your job";
    text[1]="Don't complain, Tarixuro. I wanted to be famous, and what am I famous for? Inventing and coding the kill counter in the Annihilators' visor displays. Some people want me dead for what happened at Ciretako, and I don't even know what the";
    text[2]="Annihilators will say when they find out that the counter reverts to zero after passing a thousand. Iosa the Invincible once reported the bug, but at least now she won't be telling anyone. Heh heh.";
    }
pages=3;}
if (global.textid=="textx05"){
text[0]="Author: Komato Trooper 43728-46235-96239#$#Subject: Hello?";
text[1]="I'm sending this to the nearest logbooks. My visor's malfunctioning, and I can't see a thing. My helmet's also stuck to the armor vest. I don't even know where I am anymore. At least I know how to operate my logbook without looking, but please";
text[2]="don't forget to come and pick me up before the Strike. Anyone? I've got fried candy bars in here. They're kind of hard to get from my pocket to the helmet on the inside of the armor though. They're getting a bit sticky.";
pages=3;}
if (global.textid=="textx06"){
text[0]="Author: Komato Trooper 87265-32569-23592#$#Subject: My job sucks";
text[1]="When people say they hate their job, I ask them if they have to travel for hundreds of turns on end through empty space just to find and kill some puny Tasen. What's the use of the Imperial Army when the Tasen are gone? Oh right, they need people for";
text[2]="guard duty and peacekeeping. And guess who'll be flying around guarding civilian colonies from absolutely no-one, while hoping he doesn't get dragged into any nearby wars? That's right, people like ME.";
pages=3;}
if (global.textid=="textx08"){
text[0]="Author: Komato Trooper 07115-31243-46526#$#Subject: I wanna get off this damn planet";
text[1]="Most of the ships have gone up to lower orbit by now, spreading out to prepare for the Alpha Strike. It's starting to feel empty here| I just hope they remember to pick us all up. Once the sky goes white from targeting lasers, you ain't got time to stand";
text[2]="around and smell the corpses. Speaking of, that human should be reaching this place soon, but she won't be getting any farther. Not only has this power core's tendrils burrowed down and locked any nearby doors, it's specifically built to resist the Nuke";
text[3]="Nanoweapon, so you can't even destroy the core without opening the blast doors. Also, you-know-who is guarding one of the terminals to those doors now.";
pages=4;}
if (global.textid=="textx09"){
text[0]="Author: Komato Annihilator 92347-86529-67587#$#Subject: KILL";
if (global.killdata[797]==1){
    text[1]="I ain't sparing anyone who tries to run from this mission. Our opponent is a single damn human, so get your asses over to your posts and KILL HER DEAD. You say she's the reason we found the Tasen? I say she's a walking bounty with a priceless Nanogun,";
    text[2]="and High Command no doubt will want to know how they put a Tasen Nanofield into a human. And do you mess with High Command? NO. AND YOU DON'T MESS WITH ME EITHER, SO GET THAT HUMAN. If you're more afraid of her than ME, YOU'RE A TRAITOR.";
    }
else if (global.totkills>45){
    text[1]="I ain't sparing anyone who tries to run from this mission. Our opponent is a single damn human, so get your asses over to your posts and KILL HER DEAD. You say she's the reason we found the Tasen? I say she's a rogue murdering machine with a priceless";
    text[2]="Nanogun, and High Command no doubt will want to know how they put a Tasen Nanofield into a human. And do you mess with High Command? NO. AND YOU DON'T MESS WITH ME EITHER, SO GET THAT HUMAN. If you're more afraid of her than ME, YOU'RE A TRAITOR.";
    }
else if (global.specialtriggerc){
    text[1]="I ain't sparing anyone who tries to run from this mission. Our opponent is a single damn human, so get your asses over to your posts and KILL HER DEAD. You say she's just a harmless grunt? I say she's the murderer of Annihilator Iosa carrying a priceless";
    text[2]="Nanogun, and High Command no doubt will want to know how they put a Tasen Nanofield into a human. And do you mess with High Command? NO. AND YOU DON'T MESS WITH ME EITHER, SO GET THAT HUMAN. If you're more afraid of her than ME, YOU'RE A TRAITOR.";
    }
else{
    text[1]="I ain't sparing anyone who tries to run from this mission. Our opponent is a single damn human, so get your asses over to your posts and KILL HER DEAD. You say she's the reason we found the Tasen? I say she's the murderer of Annihilator Iosa carrying a";
    text[2]="priceless Nanogun, and High Command no doubt will want to know how they put a Tasen Nanofield into a human. And do you mess with High Command? NO. AND YOU DON'T MESS WITH ME EITHER, SO GET THAT HUMAN. If you're more afraid of her than ME, YOU'RE A TRAITOR.";
    }
pages=3;}
if (global.textid=="textx10"){
text[0]="Author: Komato Imperial Weapon Industries#$#Subject: General Exoskeleton";
text[1]="An enormous leap forward in Annihilator-class exoskeletons, the `Eidolon` model was created solely for use by Komato Generals. As it is designed to battle armies, most of its armaments rely on unfocused, large-scale attacks, and it has trouble aiming at";
text[2]="nearby units. However, its most powerful weapon doubles as an accurate long-range attack - the Phantom Hammer. No General has yet to fall in battle piloting an Eidolon, and even though many of its weapons can be repelled with a mere Resonance reflector,";
text[3]="none have survived long enough to even attempt it. Even the legendary Hel Sarie of the Tasen Elite, known for driving modified Tasen Cruisers into surface battles, fell to General Tor while defending Elem Sioz, one of the last Tasen homeworlds.";
text[4]="General Tor reportedly destroyed both the Cruiser's reactor core and Hel Sarie herself with a Phantom Hammer shot.";
pages=5;}


if (global.textid=="textx11"){
text[0]="Author: Komato General Tor#$#Subject: Operation Purge, Log 1";
text[1]="It was mere turns ago that we were passing Origin by, sending a scout team consisting of three Troopers to the surface. They took a long time replying, but we didn't think much of it. A few turns later, they sent a report; they had crashed and were dying, but";
text[2]="could confirm through standard global scanning that there were no Tasen on Origin. I of course withheld this report from the fleet. I'm not as knowledgable as Kiron when it comes to Imperial Research's new inventions, but I know the `global scanning`";
text[3]="project never took off. It remained but a scare to keep the Tasen in line. This report was clearly sent by them, and I had found their last stronghold in the universe. Origin, of all places. I had the power in my hands, the power to annihilate them once";
text[4]="and for all, the power to bring a brief sense of peace back to the Empire - the power to kill a million people in mere cycles. My fleet has destroyed worlds before, but then it was by the order of High Command. This time it was all on my shoulders.";
pages=5;}

if (global.textid=="textx12"){
text[0]="Author: Komato General Tor#$#Subject: Operation Purge, Log 2";
if (global.specialtriggerc){
    text[1]="I had not much time to ponder this alone, as Iosa walked onto the bridge. I told her about my dilemma, as I knew that I could trust her. Her reaction was not surprising. This is what the people had been waiting for, she reminded me. Clearly, making countless";
    text[2]="billions of Komato happy would be worth more than sparing a million Tasen. I had not much to object to that; it is plain logic. We are a race of conquest, and as such we must remain unified. We are like an enormous organism spreading throughout";
    text[3]="the galaxy, ever improving itself, and dangerous defects like the Tasen must be purged so as not to let them spread. But bringing peace at the cost of so many lives? I was reluctant, but when Iosa asked what I would tell High Command if this would surface";
    text[4]="in the future, I could not think of a reply. More fleets would in time come here, and more scout teams would be sent. The Tasens' extinction was inevitable, and so I made the transmission public, and added exactly what it implied. The roaring and cheering of";
    text[5]="our troops could be heard all the way to the bridge. The burden never rested on me in the first place, but on my people.";
    pages=6;
    }
else{
    text[1]="I had not much time to ponder this alone, as Iosa walked onto the bridge. I told her about my dilemma, as I knew that I could trust her. Her reaction was not surprising. This is what the people had been waiting for, she reminded me. Clearly, making countless";
    text[2]="billions of Komato happy would be worth more than sparing a million Tasen. I had not much to object to that; it is plain logic. We are a race of conquest, and as such we must remain unified. We are like an enormous organism spreading throughout";
    text[3]="the galaxy, ever improving itself, and dangerous defects like the Tasen must be purged so as not to let them spread. But bringing peace at the cost of so many lives? I was reluctant, and Iosa understood that. She didn't like it, no, but I believe she";
    text[4]="understood. I was ready to ignore the Tasen and move on, but all of a sudden, we received a distress call from Origin coded in a strange amateurish fashion. It was actually sent by a human, using a Tasen communicator. Without even thinking, I made the";
    text[5]="broadcast public. How could I possibly explain THIS transmission when we got back to Tadezocora, I thought? Within moments, we indeed heard the roaring and cheering of our troops all the way to the bridge. I remember Iosa calmly looking at me. `Now the";
    text[6]="burden is not on your shoulders`, she said. There could have been no other outcome. This is for the greater goal. Only one uneasy thought lingers in my mind - whoever sent that distress call took my burden.";
    pages=7;
    }
}

if (global.textid=="textx13"){ //Not when Iosa was spared
text[0]="Author: Komato General Tor#$#Subject: Operation Purge, Log 3";
text[1]="I am going to make one thing clear: I have never, and will never let personal emotions interfere with my logbook. The news just reached me that Annihilator Iosa is dead. That is a matter I will not discuss here. Currently, we have just finished routing the";
text[2]="Tasen colony, but the only way to truly please the public is Alpha Striking Origin. Taking the final step| blowing Tasenkind out of history, out of space and time. The humans are not worth saving either; they have no future left. If my feelings for";
text[3]="this planet are to be shaped by the public and Imperial Army, then who am I to object? This is it, and I may finally be ready to end this.";
pages=4;}


if (global.textid=="textx14"){
if (global.scrambler==1){
text[0]="Author: Komato Assassin Asha#$#Subject: DING DING DING";
text[1]="*Indecipherable scribbles*";
pages=2;
}
else{
text[0]="Author: Komato Assassin Asha#$#Subject: To the death";
text[1]="I take it you've been reading our logbooks, Anomaly| a dangerous distraction. I advise against taking on the Imperial Army, as there may still be a slight chance you would not be executed if you were to turn yourself in. Slight, I say - as the bounty on";
text[2]="your hollow human skull is my ticket out of this damn mess. For making me the laughing stock of my own men and the shame of the Army for losing to a human, you are beyond a mere bounty. We postponed the Alpha Strike to hunt you down - don't think you";
text[3]="can hide for long. You are dead meat, little girl, and your dying screams will be the symphony to my fame and fortune! If I cannot defeat you, I might as well die! I WILL NOT HOLD BACK!";
pages=4;}
}
if (global.textid=="textx15"){
text[0]="Author: Komato Trooper 57120-58306-32630#$#Subject: Reboot";
text[1]="Okay Zekailo, this is seriously dangerous stuff, but I figured out a way to reboot my personal Nanofield. First, duck down and press "+chr(global.usekey)+" four times followed by the "+chr(global.kickkey)+" key to connect to your own Nanofield. Crack it, if you know how, and let the safety";
text[2]="catches do their thing. You should now regain all the Points you've ever spent - but at the cost of all your stats, most ammo and Nanoweapons, and nearly all your health. Also, you will no longer gain free health when using a Cyborg station to upgrade";
text[3]="your health stat for a while. This can be used to completely reconfigure the structure of your personal Nanofield's stats, but like I said, try it at your own risk - it nearly kills you.";
pages=4;
if (!global.hiddenskill2){
    global.hiddenskill2=1;
    scr_readsum();
    if (wrongsum){
        global.erasetop=0;
        global.topmessage="SAVEFILE CORRUPT; UNABLE TO RECORD HIDDEN SKILL";
        global.ignorestation=90;
        }
    else{
        global.erasetop=0;
        global.topmessage="HIDDEN SKILL `NANOFIELD REBOOT` PERMANENTLY RECORDED TO PAUSE MENU";
        global.ignorestation=120;
        scr_sound("glo_cracksuccess");
        scr_save(0);
        }
    }
}
if (global.textid=="textx16"){
if (global.scrambler==1){
text[0]="Author: Komato Assassin Asha#$#Subject: TOOT TOOT";
text[1]="*Indecipherable scribbles*";
pages=2;
}
else if (obj_sabot.killedasha2){
if (global.killdata[797]==1){
    text[0]="Author: Komato Assassin Asha#$#Subject: Abandon all hope";
    text[1]="You have moved, Anomaly, far too fast. I believe you are fully aware of the General's outpost, located right above your head. At least it will be if you're reading this - which means I will be dead. I had improved, I had advanced, I gave everything I had";
    text[2]="to make sure you never found this logbook, but here you are. This is your end, Anomaly. I heard the log recorded from Iosa's exoskeleton before it exploded. I know your motives and your shallow schemes, but General Tor will not be impressed. Like I";
    text[3]="knew you would never listen to me after going for the bounty on your head and setting the trap with your partner, so Tor will never listen to a mere soldier who doesn't know her place. Cry about your plight all you want, but the General is not a man of";
    text[4]="change. This is the final mission, the end of Operation Purge and the end of Origin. You cannot seriously believe that your pathetic sob stories about humankind's future will invite anything but a swift pull of the trigger from Tor. You have a";
    text[5]="lot in common with the Tasen legend, Hel Sarie - she thought she could end the war, she invoked a fear I have never seen in the Imperial Army's troops, and she defended her people to the end. She was also mown down by General Tor in an instant, not merely";
    text[6]="annihilating her body, but her very beliefs. The beliefs of a FOOL. Forget whatever hope your crushed, cybernetic mess of a body may still house. You are nothing before the might of the General, and when you're gone, neither will be anything you";
    text[7]="have ever believed. Tor will blow you into Phantom Hammer mist and spread your ashes to the winds| like he did Hel Sarie.";
    pages=8;
    }
else{
    text[0]="Author: Komato Assassin Asha#$#Subject: Abandon all hope";
    text[1]="You have moved, Anomaly, far too fast. I believe you are fully aware of the General's outpost, located right above your head. At least it will be if you're reading this - which means I will be dead. I had improved, I had advanced, I gave everything I had";
    text[2]="to make sure you never found this logbook, but here you are. This is your end, Anomaly. I heard the log recorded from Iosa's exoskeleton before it exploded. I know your motives and your shallow schemes, but General Tor will not be impressed. Like I";
    text[3]="knew you would never listen to me after going for the bounty on your head and setting the trap with your partner, so Tor will never listen to the killer of his beloved. You may have taken comfort in revenge - but like me, the General is not a man of";
    text[4]="change. This is the final mission, the end of Operation Purge and the end of Origin. You cannot seriously believe that your pathetic sob stories about humankind's future will invite anything but a swift pull of the trigger from Tor. You have a";
    text[5]="lot in common with the Tasen legend, Hel Sarie - she thought she could end the war, she invoked a fear I have never seen in the Imperial Army's troops, and she defended her people to the end. She was also mown down by General Tor in an instant, not merely";
    text[6]="annihilating her body, but her very beliefs. The beliefs of a FOOL. Forget whatever hope your crushed, cybernetic mess of a body may still house. You are nothing before the might of the General, and when you're gone, neither will be anything you";
    text[7]="have ever believed. Tor will blow you into Phantom Hammer mist and spread your ashes to the winds| like he did Hel Sarie.";
    pages=8;
    }
}
else{
text[0]="Author: Komato Assassin Asha#$#Subject: Shamed";
text[1]="Anomaly, I had been waiting. Waiting to kill you or die trying, but no. NO. You wouldn't give me the pleasure. Escaping life by your hands would be the only thing less shameful than returning without the bounty. My arm, my reputation, losing to a human|";
text[2]="and failing to kill you twice. I've become so stained, it's far too late to cleanse myself. Give my regards to the General, the General that will soon end your miserable, pathetic excuse for a life, snuffed out like the countless others at the hands of the";
text[3]="Imperial Army. Do you understand, human? This planet will end. Everyone will die. Everyone. Death. DEATH!";
pages=4;}
}
if (global.textid=="textx17"){
text[0]="Author: Komato Informational Center#$#Subject: Justice caught up with crackers";
text[1]="The criminals known by the nicknames `Craxmasta`, `NanoBitSplit` and `OmnikrakR` have all finally been caught and brought to military law for illegal Nanotechnology reverse engineering. Their sentences vary from guard duty to prison and";
text[2]="rehabilitation depending on the severity of their crimes. Imperial Army representatives say to let this be a warning to the cracker culture and their attempts to undermine theirs and Imperial Weapon Industries' hard work.";
pages=3;}
if (global.textid=="textx18"){
text[0]="Author: Komato Berserker 57334-23988-73612#$#Subject: Assassin Asha's weakness?";
text[1]="I heard this loon has taken the expression `plasma bolt reflexes` to perfection. After his latest bouts of training, Asha claims to have acquired the skills necessary to avoid ANY possible attack in existence. I know he's boastful, but I don't doubt he's";
text[2]="really that fast, especially in an area he's familiar with. There's a place down here that's extremely similar to the Assassin training chambers, meaning he has a mental map of it laid down already. Of course, pride has always been his";
text[3]="downfall, hasn't it? Even after he lost his arm, he still insisted on not avoiding everything, because he thought it would be pathetic if he lost to someone, say, wielding some ancient Nanoweapon like a Shotgun or Buster gun. What's up with that?";
text[4]="It's like an obsession. He seems to think taking bullets head on is a sign of combat spirit and discipline, and deliberately avoiding weapons that pathetic is a sign of weakness| maybe even to the death.";
pages=5;}
if (global.textid=="textx19"){
text[0]="Author: Komato Trooper 46215-34623-76478#$#Subject: The Anomaly's technology";
text[1]="I think I know why they're so determined to catch her dead or alive. First off, she's a human with a Tasen Soldier Nanofield - how did she get it? Was it a Tasen experiment? What implantation process did they use? Secondly, her Nanogun is ridiculously";
text[2]="rare. It's a Tasen-made replica of a Komato General Generation 2 Pre-loader, the kind that can charge and store its projectiles instead of having to build them on demand when you press the trigger. This lets her fire whatever Nanoweapon she wants";
text[3]="without prior warning. More importantly, the gun's small enough to be carried by a single Trooper, something we've been trying to do for starturns. These guns aren't easy to come by, and the Tasen would rather destroy them than let them fall into our";
text[4]="hands - they either supplied the Anomaly directly with this copy, or she stole it from them. Given how tough she seems to be to kill, I wouldnt put it past her.";
pages=5;}
if (global.textid=="textx20"){
text[0]="Author: Komato Berserker 05629-92837-50068#$#Subject: General exoskeleton `Maximum charge`";
text[1]="What's your deal, Zekailo? Always poking your beak in things. I suppose I'll tell you what I'm guarding here. You see, normally the `Eidolon` General exoskeletons take some time to achieve the full power of their weapon arrays after first being activated.";
text[2]="If a General needs to do combat unprepared, the exoskeleton's weapons will start out weak and gradually increase in power as they are used. This is rarely the case as the Generals of the Imperial Army are not simply surprised by their enemies. In";
text[3]="case of an emergency, however, a mobile power core can be used to ready a `Maximum charge` of the exoskeleton, upgrading all of its weapons to their full potency as soon as it's activated. We actually have a power core dedicated to charging Tor's";
text[4]="exoskeleton right here, but I doubt we'll have to use it. If you were to mess with that terminal over here, it means Tor will be FULLY charged for battle, absolutely no punches held.";
pages=5;}
if (global.textid=="textx21"){
text[0]="Author: Komato Berserker 05629-92837-50068#$#Subject: WHOA WHOA WHOA!";
text[1]="Zekailo! Just in case you poke around up here after I leave, I have to warn you again - DO NOT MESS WITH THAT TERMINAL, or once General Tor enters his exoskeleton, this power core will raise its weapons and defense shielding to maximum power! You'll get";
text[2]="in trouble if you do that without permission!";
pages=3;}
if (global.textid=="textx22"){
text[0]="Author: Komato Berserker 05629-92837-50068#$#Subject: Strange door";
text[1]="That Security door to the right has a strange Nanofield lock on it. It says it will only open `if you've beaten the game at least once before`. Well, whatever keeps people out.";
pages=2;}

if (global.textid=="textx23"){
text[0]="Author: Komato Assassin [NO IDENTIFICATION]#$#Subject: -";
text[1]="This is Assassin Ansaksie. I forgot to thank you for your help. It's because of your cracking skills that we got anywhere near beating Iosa at all. The Imperial Army won't take her death lightly, and whatever happens when you get to Tor can only make";
text[2]="it worse. Still, you've got a strong mind. I'm with General Tor, but if a mere human is enough to change him| perhaps I need to change as well and leave the Army. Don't worry about me, just do what you think is right. To be honest, I would have respected";
text[3]="you even more had you not killed a single one of your enemies - Iosa excepted, of course - but I guess that's too much to ask of a soldier.";
pages=4;}
if (global.textid=="textx24"){
text[0]="Author: Komato Assassin [NO IDENTIFICATION]#$#Subject: -";
text[1]="This is Assassin Ansaksie. I forgot to thank you for your help. It's because of your cracking skills that we got anywhere near beating Iosa at all. The Imperial Army won't take her death lightly, and whatever happens when you get to Tor can only make";
text[2]="it worse. Still, you've got a strong mind. I'm with General Tor, but if a mere human is enough to change him| perhaps I need to change as well and leave the Army. Don't worry about me, just do what you think is right. At any rate, if things go wrong and";
text[3]="you need to put Tor in place, those flimsy Nanoweapons won't do you any good. I believe violence is a tool that should be used sparingly, but with utmost force. You understand this too, and as far as I've gathered, you have survived this far without";
text[4]="killing a single one of your enemies - excluding that bastard Iosa, of course. I admire your resolve. Therefore I have left you a Massacre, a weapon that was once used on Ciretako. Look up the weapon info in the Pause menu if you're interested. Either way,";
text[5]="this prototype is not as powerful as the real deal, and will drain your Armor when fired, but it should suffice to keep a Komato General in check. Good luck, Anomaly.";
pages=6;}

//Tasen killdata log
if (global.textid=="textx25"){
    text[0]="Author: Fleet 1089 Public Database#$#Subject: Tasen casualties confirmed as caused by the `Human Anomaly` with clear intent";
    pages=1;
    for (i=1;i<501;i+=1){
        if (global.killdata[i]>0){
            text[pages]=global.killdataname[i]+scr_killtype(i);
            pages+=1;
            }
        }
    if (pages==1){
        pages=2;
        text[1]="No Tasen kills confirmed.";
        }
    }

//Komato killdata log
if (global.textid=="textx26"){
    text[0]="Author: Fleet 1089 Public Database#$#Subject: Komato casualties confirmed as caused by the `Human Anomaly` with clear intent";
    pages=1;
    for (i=501;i<795;i+=1){
        if (global.killdata[i]>0){
            text[pages]=global.killdataname[i]+scr_killtype(i);
            pages+=1;
            }
        }
    if (pages==1){
        pages=2;
        text[1]="No Komato kills confirmed.";
        }
    }

if (global.textid=="textx27"){
text[0]="Author: Komato Annihilator Iosa#$#Subject: There is a story I never told you, human";
text[1]="During the Tasens' attack on my homeworld, my friend decided to hold his anti-air fire against a Tasen battlecruiser. Before it vaporized him, his platoon, and the planetary shield generator below his post with a Phantom Hammer shot, he told me that he";
text[2]="couldn't kill another person - surely the crew aboard the ship would think the same when they witnessed his selfless gesture. After all, he said, true bravery is to risk your life to protect what you love.";
pages=3;}


//Sector Y logs
//197-199 are in scr_logs1
if (global.textid=="text193"){
text[0]="Type HORSEGUN on the Main menu. Considering what the Null driver has done to your graphics, you may want to quit and restart the game before attempting it|";
pages=1;}

if (global.textid=="text194"){
text[0]="Duck while holding Enter for 10 seconds.";
pages=1;}

if (global.textid=="text195"){
text[0]=" ";
pages=1;}

if (global.textid=="text196"){
text[0]="Iji betatesting quotes:";
text[1]="`Now it's you and me and a bag in between us, you don't stand a chance!` -Henrik";
text[2]="`It looks like puzzle pieces in space.` -Henrik about the cutscene after Sector 4";
text[3]="`I come in peace, and you shoot lettuce at me!` -Ola";
text[4]="`I just got owned by myself.` -Ola, fighting Asha whom he voiced";
text[5]="`I'm hiding behind a table!` -Oscar#$#`Yes, but it has legs!` -Annette";
text[6]="`It was a banana| or a slingshot|` -Oscar#$#`It was ammo.` -Annette";
text[7]="`Look, someone's sending them a red button!` -Henrik, again about the cutscene after Sector 4";
text[8]="`You need more butts.` -Annette to Oscar";
text[9]="Iji voice recording quotes:";
text[10]="`CONTACT! INCOMING! WE'RE UNDER ATTAAACK! THEY'RE EVERYWHERE!`#-Miguel";
text[11]="`Hu! Huh! Hay! Wheat! Rye! I wonder what it would sound like if all the attacks were like| oats. Wheat? BARLEY!` -Annette";
text[12]="`Yeah, but they won't get to see a picture of me. Ever. Ever. Eveeer!` -Anna";
text[13]="`Maybe I need to get hit by a bus at full speed.` -Anna on recording realistic screams";
text[14]="`It needs to be a surprise, usually when people say it, it's when they're chased by like an airplane or someone's shooting and they're like INCOMING! And everyone just BOOF! KRSH! PSHH! Throw themselves to the ground, that's how it is. Usually.` -Miguel";
text[15]="`Do I sound like a child?` -Henrik";
text[16]="`COME HERE! GET OVER HERE!` -Monika voicing the Berserkers";
text[17]="`MEH. No| waaiiaah! No. What the devil are they supposed to sound like?` -Johannes attempting to voice the Beasts";
pages=18;}
