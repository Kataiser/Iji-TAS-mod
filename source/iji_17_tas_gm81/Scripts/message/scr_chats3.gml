if (global.sector==0 || global.sector==15){

if (global.textid=="chatx1_1"){
text[0]="DAN: Iji! Something terrible has happened - what in the world did you do down there!?";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;
global.specialtriggerb1=0;
}
if (global.textid=="chatx1_2"){
if (global.killdata[797]==1){
    text[0]="IJI: I defeated Iosa, the most powerful Komato in existence - at least, that's what she told me.";
    portrait=5;
    }
else if (global.specialtriggerb2==1){
    text[0]="IJI: An Assassin showed up and helped me kill Iosa, a really important Komato hero| at least, that's what she told me.";
    portrait=5;
    }
else if (global.totkills>9*global.berserkkc){
    text[0]="IJI: I killed Iosa, the most powerful Komato in existence - at least, that's what she told me.";
    portrait=1;
    }
else{
    text[0]="IJI: I killed Iosa, the most powerful Komato in existence| at least, that's what she told me.";
    portrait=5;
    }
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx1_3"){
text[0]="DAN: Holy crap! That must be why|";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx1_4"){
text[0]="IJI: What? What's going on?";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx1_5"){
text[0]="DAN: I just caught and deciphered a broadcast to all Komato troops in this area - the countdown to the Alpha Strike has been put on hold, but all ground activity in the vicinity is being concentrated on hunting you down!";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx1_6"){
if (global.totkills>9*global.berserkkc){
    text[0]="IJI: Sheesh. Do they really think they can stop me?";
    portrait=2;
    }
else{
    text[0]="IJI: Oh no|";
    portrait=4;
    }
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx1_7"){
if (global.totkills>9*global.berserkkc){
    text[0]="DAN: Don't get too cocky. The Komato broadcast also says that the Tasen have been totally exterminated - now they're only waiting for all their ships to leave the ground and they'll commence the Alpha Strike!";
    pages=1;
    }
else{
    text[0]="DAN: Whatever you do - don't panic. As you know, the Tasens' last planetary shield generator was shot down, but the Komato broadcast also says that the Tasen have been totally exterminated - now they're only waiting for all their ships to leave the";
    text[1]="ground and they'll commence the Alpha Strike!";
    pages=2;
    }
portrait=99;
outline=2;
obj_iji.startmusics=1;}
if (global.textid=="chatx1_8"){
if (global.specialtrigger2)
    text[0]="IJI: Exterminated? But the ones in that outpost - if I don't hurry, they're all dead too! Wait, are you sure you're safe this time?";
else
    text[0]="IJI: Damn, I gotta hurry! Are you sure you're safe this time?";
portrait=2;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx1_9"){
text[0]="DAN: I'm as safe as I can get.";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx1_10"){
text[0]="IJI: I hope so! I don't want to worry about you again.";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx1_11"){
text[0]="DAN: Sheesh, I promise. Now hurry to the General - he's already landed, and this is Sector X, so he's gotta be somewhere nearby!";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx1_12"){
text[0]="IJI: Okay, hold tight. I'm gonna find him!";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx1_13"){
text[0]="IJI: (And I need to keep a cool head. I may have a job to do - but I refuse to become the same as that Annihilator!)";
portrait=12;
outline=1;
pages=1;
obj_iji.startmusics=1;}

if (global.textid=="chatx2_1"){
text[0]="DAN: Crap, I forgot that there's a Tasen Security door here, but it seems to be stuck. I can't find any way around it, so you'll have to improvise. Try searching the roof above.";
portrait=99;
outline=2;
pages=1;}

if (global.textid=="chatx3_1"){
text[0]="DAN: The Komato have set up several defense posts here. There's only one way through, so be prepared for a fight. Remember that we're running out of time - don't hold back!";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chatx3_2"){
text[0]="IJI: Got it!";
portrait=1;
outline=1;
pages=1;}

if (global.textid=="chatx4_1"){
text[0]="ASHA: That's as far as you go, Anomaly! Time to pay up!";
portrait=103;
outline=4;
pages=1;
obj_iji.xcannotfire=0;
obj_asha2trigger.ready=1;
obj_iji.startmusics=1;
with (obj_sabot)
    scr_music("mus_lightstroke");
}
if (global.textid=="chatx4_2"){
text[0]="IJI: You again!? You're the one who tried to kill Dan!";
portrait=3;
outline=1;
pages=1;
global.facing=1;
obj_iji.sprite_index=spr_basic;
obj_iji.startmusics=1;
with (obj_sabot)
    scr_music("mus_asha");
}
if (global.textid=="chatx4_3"){
text[0]="ASHA: Bah! If you're talking about that human, it's no use trying to find him again - that worthless civilian doesn't even have a bounty on his head, so what's the use? It won't help my reputation, that's for sure!";
portrait=103;
outline=4;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx4_4"){
text[0]="IJI: Hhh| you cold-blooded killer!";
portrait=2;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx4_5"){
if (global.totkills>9*global.neutralkc)
    text[0]="ASHA: Well, aren't you're the tough one, huh? Do you have any idea what YOUR kill count is, hmm?";
else if (global.killdata[797]==1)
    text[0]="ASHA: Well, aren't you're the tough one, huh? Even beat a certain Annihilator to a pulp!";
else
    text[0]="ASHA: Well, aren't you're the tough one, huh? Who's the one who murdered Iosa, hmm?";
portrait=103;
outline=4;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx4_6"){
if (global.totkills>9*global.neutralkc)
    text[0]="IJI: SHUT UP! That doesn't mean anything, you bastard! This time you're GOING DOWN!";
else{
    if (global.killdata[797]==1)
        text[0]="IJI: SHUT UP! It was in self-defense, it was her own fault - and it'll be when I take care of you too!";
    else if (global.specialtriggerb2==1)
        text[0]="IJI: SHUT UP! That wasn't even me, but this time it WILL be if you don't get out of my way!";
    else
        text[0]="IJI: SHUT UP! It was in self-defense, it was her own fault - and it'll be when I kill you too!";
    }
portrait=3;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx4_7"){
text[0]="ASHA: Yeah, right! When I didn't even scratch your precious partner? I've got more than enough reason to destroy you, little wretch - more than your pathetic revenge!";
portrait=103;
outline=4;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx4_8"){
text[0]="IJI: You've killed hundreds of people before! Everyone in your army, you're all the same!";
portrait=2;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx4_9"){
text[0]="ASHA: Oh, so that's why you're fighting us? You think you can wipe out the entire Imperial Army? You're a lunatic.";
portrait=103;
outline=4;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx4_10"){
text[0]="IJI: I-I don't care what you think of me, but I'm different from you!";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx4_11"){
if (global.totkills>9*global.neutralkc)
text[0]="ASHA: Ho! There is no line between `different` and `superior`, human - you say one thing, but you mean something else! Since when were aimless killers less guilty then organized?";
else
text[0]="ASHA: Ho! There is no line between `different` and `superior`, human - you say one thing, but you mean something else!";
portrait=103;
outline=4;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx4_12"){
if (global.totkills>9*global.neutralkc){
    text[0]="IJI: !";
    }
else{
    text[0]="IJI: That's because I AM superior to a pack of organized murderers!";
    }
portrait=2;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx4_13"){
if (global.totkills>9*global.neutralkc)
text[0]="ASHA: That's right, choose your words carefully - they'll be your last!";
else
text[0]="ASHA: Oh ho, come off it! We're all wicked, but I'll be wicked rich once I've blown that inflated head off your shoulders!";
portrait=103;
outline=4;
pages=1;
obj_iji.startmusics=1;}

if (global.textid=="chatx5_1"){
text[0]="IJI: That's what you get, you bastard! THAT'S WHAT YOU GET FOR TRYING TO KILL HIM!";
portrait=3;
outline=1;
pages=1;
obj_asha2trigger.ready2=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx5_2"){
text[0]="DAN: Iji! What just happened!?";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx5_3"){
text[0]="IJI: Hhh| Dan| I did it, I got that Assassin who caught you!";
portrait=2;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx5_4"){
text[0]="DAN: Whoa| man, I wish I could've been there!";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx5_5"){
text[0]="IJI: Heh| no problem. He won't come after you again.";
portrait=12;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx5_6"){
text[0]="DAN: Thanks. Now don't stick around, we're really running out of time!";
portrait=99;
outline=2;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatx5_7"){
text[0]="IJI: Got it!";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}

if (global.textid=="chatx6_1"){
if (global.kills+global.totkills>10*global.berserkkc && global.killdata[797]==0){
    text[0]="DAN: Iji, this must be where the General is. Keep in mind that I can't reach you out there, so you're on your own. Whatever you do, you need to keep calm - you're supposed to talk to this guy, not get in a fight with him.";
    pages=1;
    }
else if (global.kills+global.totkills>10*global.neutralkc){
    text[0]="DAN: Iji, this must be where the General is. Keep in mind that I can't reach you out there, so you're on your own. Whatever you do, don't get in a fight with this guy - this is a Komato General, not a Tasen Elite. But most of all| are you sure that you know";
    text[1]="exactly what's going on?";
    pages=2;
    }
else{
    text[0]="DAN: Iji, this must be where the General is. Keep in mind that I can't reach you out there, so you're on your own - whatever you do, don't get in a fight with this guy. But most of all| are you sure that you know exactly what's going on?";
    pages=1;
    }
portrait=99;
outline=2;
obj_iji.xdanleft=1;}
if (global.textid=="chatx6_2"){
if (global.kills+global.totkills>10*global.berserkkc && global.killdata[797]==0)
    text[0]="IJI: What? Wouldn't it be faster to just kill him? That should teach the rest of them not to mess with us.";
else
    text[0]="IJI: Yeah, I'm sure. I'm ready.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chatx6_3"){
if (global.kills+global.totkills>10*global.berserkkc && global.killdata[797]==0)
    text[0]="DAN: No! That'd only make things worse - just stay focused on convincing him to stop the Alpha Strike, okay? Anyway, the Komato have all left around here, so I'm heading outside to meet up with you when you're done.";
else
    text[0]="DAN: Good luck| I'm counting on you. The Komato have all left around here, so I'm heading outside to meet up with you when you're done.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chatx6_4"){
text[0]="IJI: What!? Are you crazy?";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chatx6_5"){
text[0]="DAN: Hey, there's no reason for me to stay here anyway. Especially if things go wrong again. Uh, not that I'm saying they will|";
text[1]="I believe in you, sis.";
portrait=99;
outline=2;
pages=2;}
if (global.textid=="chatx6_6"){
text[0]="IJI: But -";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chatx6_7"){
text[0]="DAN: Don't worry. You'll make it just fine. You, if anyone, should know how horrible this war is - you won't have any problems convincing the General of it.";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chatx6_8"){
text[0]="IJI: That's not what I'm worried about, you idiot! I'm worried about YOU!";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chatx6_9"){
text[0]="DAN: Heh. It's not exactly easy seeing you fight for your life either, you know| I need to get it out of my mind before I go crazy.";
text[1]="Go on. Hurry to the General, and I'll be waiting for you when you return. Okay?";
portrait=99;
outline=2;
pages=2;}
if (global.textid=="chatx6_10"){
text[0]="IJI: Well| okay.";
text[1]="See you soon. And take care.";
portrait=12;
outline=1;
pages=2;}
if (global.textid=="chatx6_11"){
text[0]="DAN: By the way, I saw through the cameras that the Assassin who captured me before seems to have blown himself up. He looked really angry about something. Don't make the General do the same, okay?";
portrait=99;
outline=2;
pages=1;}

//This chat won't happen when Iosa was spared
if (global.textid=="chatx7_1"){
global.cannotskipchat=1;
text[0]="TOR: Hmm? Who's there?";
portrait=110;
outline=4;
pages=1;}
if (global.textid=="chatx7_2"){
if (global.kills+global.totkills>10*global.berserkkc)
    text[0]="IJI: Uh, hey. My name's Iji, and I'm here to have a word with you.$";
else
    text[0]="IJI: Uh, hello, General. My name's Iji, and I'd like to have a word with you.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chatx7_3"){
text[0]="TOR: |";
portrait=110;
outline=4;
pages=1;}
if (global.textid=="chatx7_4"){
if (global.kills+global.totkills>10*global.berserkkc){
    text[0]="IJI: Can you even understand me?";
    portrait=2;
    }
else{
    text[0]="IJI: Can you understand me?";
    portrait=1;
    }
outline=1;
pages=1;}
if (global.textid=="chatx7_5"){
text[0]="TOR: What exactly is this? Wait, you have to be|";
portrait=110;
outline=4;
pages=1;}
if (global.textid=="chatx7_6"){
if (global.kills+global.totkills>10*global.berserkkc){
    text[0]="IJI: Yeah, I'm the `Human Anomaly`. So I'm here to tell you to -";
    portrait=1;
    }
else if (global.kills+global.totkills>10*global.neutralkc){
    text[0]="IJI: Yeah, I know, I'm the `Human Anomaly`. But there's something very important that -";
    portrait=1;
    }
else{
    text[0]="IJI: Yeah, I know, I'm the `Human Anomaly`. But there's something very important that -";
    portrait=5;
    }
outline=1;
pages=1;}
if (global.textid=="chatx7_7"){
text[0]="TOR: What the - YOU'RE THE SCUM WHO KILLED IOSA!";
portrait=110;
outline=4;
pages=1;
obj_torbody.sprite_index=spr_torbody_drawgun;
obj_torbody.image_single=-1;
obj_torbody.image_speed=0.5;
obj_torbody.alarm[2]=6;
with (obj_sabot)
    scr_music("mus_dark");}
if (global.textid=="chatx7_8"){
if (global.kills+global.totkills>10*global.berserkkc)
    text[0]="IJI: What!? It wasn't my fault, she's the one who got in my way!";
else
    text[0]="IJI: WAIT! General, please wait and let me explain!";
portrait=2;
outline=1;
pages=1;
obj_iji.sprite_index=spr_lookaround;
obj_iji.image_speed=0.5;
obj_torbodytrigger.alarm[0]=26;
}
if (global.textid=="chatx7_9"){
text[0]="TOR: How DARE you come here!? How DARE you insult a Komato General and -";
portrait=110;
outline=4;
pages=1;}
if (global.textid=="chatx7_10"){
if (global.specialtriggerb2){
    if (global.kills+global.totkills>10*global.neutralkc)
        text[0]="IJI: I haven't insulted anyone! All the people I've tried to talk to have TRIED TO KILL ME! And besides, IOSA WAS KILLED BY A KOMATO!";
    else
        text[0]="IJI: I haven't insulted anyone! All the people I've tried to talk to have tried to kill me! And besides, Iosa was killed by a Komato!";
    }
else{
    if (global.kills+global.totkills>10*global.berserkkc)
        text[0]="IJI: I haven't insulted anyone! Now SHUT UP AND LISTEN TO ME!";
    else if (global.kills+global.totkills>10*global.neutralkc)
        text[0]="IJI: I haven't insulted anyone! All the people I've tried to talk to have TRIED TO KILL ME! None of you will EVER LISTEN TO WHAT I HAVE TO SAY!";
    else
        text[0]="IJI: I haven't insulted anyone! All the people I've tried to talk to have tried to kill me! None of you will ever listen to what I have to say!";
    }
portrait=3;
outline=1;
pages=1;}
if (global.textid=="chatx7_11"){
if (global.specialtriggerb2)
    text[0]="TOR: K - Killed by one of our own!? Preposterous!";
else
    text[0]="TOR: |";
portrait=110;
outline=4;
pages=1;
obj_torbody.nobob=1;}
if (global.textid=="chatx7_12"){
if (global.specialtriggerb2)
    text[0]="IJI: I'm not lying! And I'm not here to fight you - all I want is a peaceful discussion!";
else{
    if (global.kills+global.totkills>10*global.berserkkc)
        text[0]="IJI: I'm not here to argue with you - I'm just here to stop the Alpha Strike! So go do that right now!";
    else
        text[0]="IJI: I'm not here to fight you - all I want is a peaceful discussion!";
    }
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chatx7_13"){
if (global.kills+global.totkills>10*global.berserkkc)
    text[0]="TOR: Oh, and why should I by following YOUR orders!?";
else
    text[0]="TOR: Oh, of WHAT, may I ask!?";
portrait=110;
outline=4;
pages=1;
obj_torbody.sprite_index=spr_torbody_drawgun;
obj_torbody.image_single=-1;
obj_torbody.image_index=2;
obj_torbody.image_speed=-0.5
obj_torbody.alarm[1]=6;
}
if (global.textid=="chatx7_14"){
if (global.kills+global.totkills>10*global.berserkkc)
    text[0]="IJI: Wh-Why do you think? We live here on this planet, and we haven't hurt anyone! All of a sudden, the Tasen came and wasted most of our people, and now you think you can get away with Alpha Striking us too!";
else
    text[0]="IJI: Wh-What do you think? We live here on this planet, and we haven't hurt anyone! All of a sudden, the Tasen came and wasted most of our people, and now you think you can get away with Alpha Striking us too!";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chatx7_15"){
text[0]="TOR: Of course we can get away with it. Perhaps you're not aware that the only way to make sure that the Tasen are extinct is to -";
portrait=110;
outline=4;
pages=1;}
if (global.textid=="chatx7_16"){
if (global.specialtrigger2)
    text[0]="IJI: No, that's not right. You already know they're all gone! Not a single one left!";
else if (global.kills+global.totkills>10*global.berserkkc)
    text[0]="IJI: Shove it! You already know that the Tasen are as good as gone!";
else if (global.kills+global.totkills>10*global.neutralkc)
    text[0]="IJI: No, that's not right. You already know that the Tasen are as good as gone!";
else
    text[0]="IJI: No, that's not right. You already know that the Tasen are as good as gone.";
portrait=1;
outline=1;
pages=1;
obj_iji.sprite_index=spr_lookaround;
obj_iji.image_speed=0.5;
obj_torbodytrigger.alarm[0]=26;}
if (global.textid=="chatx7_17"){
text[0]="TOR: That's correct, but -";
portrait=110;
outline=4;
pages=1;}
if (global.textid=="chatx7_18"){
if (global.kills+global.totkills>10*global.neutralkc)
    text[0]="IJI: But WHAT? If you think the humans don't even matter, that's just STUPID! Same with the Tasen, you killed them because they're not the same as you!";
else
    text[0]="IJI: But what? If you think the humans don't even matter, that's just stupid! It's the same as the reason you hunted the Tasen - because they're not the same as you!";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chatx7_19"){
text[0]="TOR: Fuh! You have no idea what you're talking about, human! What do you hope to accomplish by complaining to ME about the errors of my people? The Tasen were a lesser form of Komato, a society of outcasts and leeches! The Komatos' hatred for them grew over";
text[1]="so many starturns, and once the war started, there was no stopping it. The majority always thought of the Tasen as inferior, and no matter what you say, you cannot stop such a massive force of strife once it's begun to spread. Our";
text[2]="leaders in High Command were powerless - the Imperial Army took the law into its own hands!";
portrait=110;
outline=4;
pages=3;}
if (global.textid=="chatx7_20"){
if (global.kills+global.totkills>10*global.neutralkc)
    text[0]="IJI: Oh, yeah? You didn't care that the Komato would rather wipe the Tasen out than live in peace with them?";
else
    text[0]="IJI: So what you're saying is - is that you didn't care that the Komato would rather wipe the Tasen out than live in peace with them?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chatx7_21"){
text[0]="TOR: BAH! You seem to think that it's so easy, human! You think that the handful of leaders of High Command, who DID seek a rational solution to the conflict, could stop the ignorance of the masses? When the war broke out, anyone opposing the";
text[1]="Imperial Army would be killed! You honestly think we're so heartless as to wipe out a planet if it wasn't even necessary? You can't blame me without first blaming the public and the Imperial Army!";
portrait=110;
outline=4;
pages=2;}
if (global.textid=="chatx7_22"){
text[0]="IJI: But, I, I thought the leaders of a people were responsible for them! You keep talking like it's not your fault, when YOU'RE the one with the power!";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chatx7_23"){
text[0]="TOR: Power!? The people outnumber their leaders, do you expect us to just wish their intolerance away? We TRIED to end the conflict, damnit - don't come here and tell me that we DIDN'T TRY! High Command did the right thing when going with the flow";
text[1]="of the Imperial Army, otherwise we'd be stuck in internal war! You just strut into my post and expect to know the answer to all of our problems, when all that you say has already been said! I'm sick of this conflict, and I'm sick of people like you - if";
text[2]="there's one good thing about the extinction of the Tasen, it's that we'll find an end to the most pointless war I've ever seen!";
portrait=110;
outline=4;
pages=3;}
if (global.textid=="chatx7_24"){
text[0]="IJI: But the Tasen are already dead!";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chatx7_25"){
text[0]="TOR: That may be good enough for me, but it's not enough for the people - they've waited ages for this to happen, and we have to finish what they started! They couldn't care less about this planet either, no matter what I or anyone else in High Command";
text[1]="says! This is the only way - the Alpha Strike is just about to begin powering up, and once I've returned to lower orbit, one word from me will put an end to your suffering!";
portrait=110;
outline=4;
pages=2;}
if (global.textid=="chatx7_26"){
text[0]="IJI: NO! I don't care what you say, I'll save the world if it so takes my life!";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chatx7_27"){
if (global.kills+global.totkills>10*global.neutralkc)
    text[0]="TOR: Fine - then I will grant your death wish. Prove to me that I am wrong| prove to me just how strongly you wish to survive! In the meantime| enjoy the view.";
else
    text[0]="TOR: Fine - then I will grant your death wish. Prove to me that I am wrong| prove to me just how strongly you believe in your words! In the meantime| enjoy the view.";
portrait=111;
outline=4;
pages=1;
obj_torbody.image_single=-1;
obj_torbody.image_index=0;
obj_torbody.image_speed=1/3;
obj_torbody.alarm[0]=6;
with (obj_sabot)
    scr_stopmusic();
}

if (global.textid=="chatx8_1"){
global.cannotskipchat=1;
text[0]="IJI: NO! STOP IT! STOP CHARGING THE ALPHA STRIKE!";
portrait=7;
outline=1;
pages=1;
obj_torbody.image_single=-1;
obj_torbody.image_index=2;
obj_torbody.image_speed=-0.5;
obj_torbody.alarm[1]=4;}
if (global.textid=="chatx8_2"){
if (global.killdata[797]==1)
    text[0]="TOR: Too late, human - one way or another, tonight is the end of our bloodstained history!";
else
    text[0]="TOR: Too late, human - tonight is the end of our bloodstained history!";
portrait=110;
outline=4;
pages=1;
}

if (global.textid=="chatxa_1"){
global.cannotskipchat=1;
if (global.wty){
    text[0]="TOR: Y-You fool! What have you done!? That Null driver prototype| the wormholes| the hallucinations! They'll drive you mad!";
    pages=1;
    }
else if (obj_sabot.firedmassacre==1){
    text[0]="TOR: Ugh| ack! Th-That weapon! No-one outside of Imperial Research should even know it exists!";
    text[1]="M-Mercy! Have mercy on me!";
    pages=2;
    }
else if (global.specialtrigger16 && global.tormaximumcharge){
    text[0]="TOR: Grraagh! Impossible| it, it's impossible!!! How could a mere human| so weak and insignificant| against a fully powered General? So much fighting skill and combat spirit| in such a frail body|";
    text[1]="Have mercy| please, I beg of you to have mercy on me!";
    pages=2;
    if (!global.iimsx){
        global.iimsx=1;
        global.ignoremessagescroll=30;
        }
    }
else{
    text[0]="TOR: Ugh| ack! M-Mercy! Please|";
    pages=1;
    }
portrait=114;
outline=4;
global.sector=0;
obj_sabot.cannotrestart=1;
if (global.kills+global.totkills>10*global.berserkkc && global.killdata[797]==0 && !global.wty){
    obj_tor.berserkend=1;
    obj_iji.holdafterchat=1;
    }
else{
    if (instance_number(obj_end)==0)
        instance_create(obj_iji.x,obj_iji.y,obj_end);
    }
}

if (global.textid=="chatxb_1"){
text[0]="BERSERKER: This is Komato Berserker 78432-97680-46872. In case anyone missed the broadcast, I'm using the humans' communication network to update you on our strategic status. Good news, men - all Tasen on this planet have been exterminated successfully.";
portrait=115;
outline=4;
pages=1;
obj_iji.startmusics=1;
global.specialtriggerb1=0;
}
if (global.textid=="chatxb_2"){
if (global.kills+global.totkills>9*global.neutralkc)
    text[0]="IJI: Wh-What the? GET THE HELL OUT OF OUR CONTROL ROOM!";
else
    text[0]="IJI: Wh-What the? Get the hell out of our control room!";
if (global.kills+global.totkills>9*global.berserkkc && global.killdata[797]==0)
    portrait=3;
else
    portrait=2;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatxb_3"){
text[0]="BERSERKER: In other words, it is my honour to announce that we've finally eradicated those damned parasites once and for all! I'd like to thank everyone for a job well done; not only did we totally destroy the Tasens' final outpost, it was done in the";
text[1]="fastest time in history. Also, even if the `humans` here on Origin didn't prove to be a threat, it is our duty to Alpha Strike them into oblivion - personally, the last thing I'd want is another pesky, inferior little uprising race!";
portrait=115;
outline=4;
pages=2;
obj_iji.startmusics=1;
with (obj_sabot)
    scr_music("mus_dark");}
if (global.textid=="chatxb_4"){
if (global.specialtrigger2)
text[0]="IJI: Wait| they think the Tasen are all dead? They missed the ones in the outpost?";
else
text[0]="IJI: Wait| the Tasen are all dead? And now|";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatxb_5"){
if (global.killdata[797]==1){
    text[0]="BERSERKER: Hold the celebrations, everyone in area 693K-A79, I'm not done yet. The Alpha strike has been put on hold until either any unit successfully terminates the `Human Anomaly`, or the casualties resulting from engaging her exceed one thousand";
    text[1]="lives. The High Command representatives in our fleet are highly interested in this individual's Nanotechnology, and once again on a personal note, I'd like to see her ass kicked DAMN HARD for the chaos she's caused during this operation! She sabotaged a";
    text[2]="Phantom Hammer, took down a Sentinel, and humiliated our honoured Annihilator Iosa! Assassin Asha reported that the male human the Anomaly worked together with would most probably be her weakness, yet even after his death, the Anomaly shows no sign of slowing";
    text[3]="down. Orders are orders, and I will personally see to it that anyone in area 693K-A79 refusing to accept this mission will face military law!";
    pages=4;
    }
else if (global.totkills>9*global.neutralkc){
    text[0]="BERSERKER: Hold the celebrations, everyone in area 693K-A79, I'm not done yet. The Alpha strike has been put on hold until either any unit successfully terminates the `Human Anomaly`, or the casualties resulting from engaging her exceed one thousand";
    text[1]="lives. The High Command representatives in our fleet are highly interested in this individual's Nanotechnology, and once again on a personal note, I'd like to see her ass kicked DAMN HARD for the chaos she's caused during this operation! She sabotaged a";
    text[2]="Phantom Hammer, took down a Sentinel, killed so many people the battle reports are still pouring in, and even killed our honoured Annihilator Iosa! Assassin Asha reported that the male human the Anomaly worked together with would most probably be her";
    text[3]="weakness, yet even after his death, the Anomaly shows no sign of slowing down in her aimless slaughter. Orders are orders, and I will personally see to it that anyone in area 693K-A79 refusing to accept this mission will face military law!";
    pages=4;
    }
else{
    text[0]="BERSERKER: Hold the celebrations, everyone in area 693K-A79, I'm not done yet. The Alpha strike has been put on hold until either any unit successfully terminates the `Human Anomaly`, or the casualties resulting from engaging her exceed one thousand";
    text[1]="lives. The High Command representatives in our fleet are highly interested in this individual's Nanotechnology, and once again on a personal note, I'd like to see her ass kicked DAMN HARD for the chaos she's caused during this operation! She sabotaged a";
    text[2]="Phantom Hammer, took down a Sentinel, and even killed our honoured Annihilator Iosa! Assassin Asha reported that the male human the Anomaly worked together with would most probably be her weakness, yet even after his death, the Anomaly shows no sign";
    text[3]="of slowing down. Orders are orders, and I will personally see to it that anyone in area 693K-A79 refusing to accept this mission will face military law!";
    pages=4;
    }
portrait=115;
outline=4;
obj_iji.startmusics=1;}
if (global.textid=="chatxb_6"){
if (global.totkills>9*global.neutralkc){
    text[0]="IJI: I, I|";
    text[1]="killed that many people?";
    pages=2;
    portrait=5;
    }
else{
    text[0]="IJI: Huh! Of course I know what I'm doing. And you'd put a thousand lives on the line just to get ME?";
    pages=1;
    portrait=2;
    }
outline=1;
obj_iji.startmusics=1;}
if (global.textid=="chatxb_7"){
if (global.killdata[797]==1){
    if (global.totkills>9*global.neutralkc){
        text[0]="IJI: No - I'm nothing like them! I'm nothing like that Annihilator!";
        portrait=2;
        }
    else{
        text[0]="IJI: You're right, Dan. They're crazy.";
        portrait=1;
        }
    }
else if (global.totkills>9*global.berserkkc){
    text[0]="IJI: No - I'm nothing like them! Dan, don't listen to them! You believe me, right!?";
    portrait=2;
    }
else if (global.totkills>9*global.neutralkc){
    text[0]="IJI: No, no, no, it's not true! I'm nothing like them! Dan, don't listen to them! You believe me, right!?";
    portrait=2;
    }
else{
    text[0]="IJI: You're right, Dan. They're crazy.";
    portrait=1;
    }
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatxb_8"){
if (global.totkills>9*global.neutralkc){
    text[0]="BERSERKER: The reward for total termination of the Anomaly is 6'000'000 Units, but the reward for keeping her body in one piece is 20'000'000'000. The reward for live capture is fifty times that value. It's true that the Anomaly has eliminated an absurd";
    text[1]="amount of forces in mere cycles, but our fleet has overcome greater challenges than bringing down a single individual! GLORY TO THE KOMATO!";
    }
else{
    text[0]="BERSERKER: The reward for total termination of the Anomaly is 6'000'000 Units, but the reward for keeping her body in one piece is 20'000'000'000. The reward for live capture is fifty times that value. It's true that the Anomaly has made a name for";
    text[1]="herself in mere cycles, but our fleet has overcome greater challenges than bringing down a single individual! GLORY TO THE KOMATO!";
    }
portrait=115;
outline=4;
pages=2;
obj_iji.startmusics=1;}
if (global.textid=="chatxb_9"){
text[0]="IJI: |";
portrait=5;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatxb_10"){
if (global.totkills>9*global.berserkkc)
    text[0]="IJI: Hmph. You're that scared of me, huh? Well, I'm not afraid of you anymore. You're the ones who turned me into this| you, and those stupid Tasen.";
else if (global.totkills>9*global.neutralkc)
    text[0]="IJI: Hmph. You're that scared of me, huh? Fine, I'm not afraid anymore. You're the ones who turned me into this| you, and those stupid Tasen.";
else
    text[0]="IJI: Hmph. You're that scared of me, huh? Fine. I'm not afraid anymore.";
portrait=12;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatxb_11"){
if (global.killdata[797]==1){
    if (global.totkills>9*global.neutralkc)
        text[0]="IJI: Dan. You know what I'm thinking, right? This is it. This is our only chance| and this is Sector X, so if the General's landed, he must be nearby. I have to keep a cool head| it's the only way to solve this now.";
    else
        text[0]="IJI: Dan. You know what I'm thinking, right? This is it. This is our only chance| and this is Sector X, so if the General's landed, he must be nearby.";
    }
else if (global.totkills>9*global.berserkkc)
    text[0]="IJI: Dan. You know what I'm thinking, right? This is it. This is our only chance| and this is Sector X, so if the General's landed, he must be nearby. I won't hold back on ANYONE who tries to take our world from us!";
else if (global.totkills>9*global.neutralkc)
    text[0]="IJI: Dan. You know what I'm thinking, right? This is it. This is our only chance| and this is Sector X, so if the General's landed, he must be nearby. I won't hold back anymore. I won't hold back on anyone who tries to take our world from us!";
else
    text[0]="IJI: Dan. You know what I'm thinking, right? This is it. This is our only chance| and this is Sector X, so if the General's landed, he must be nearby.";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatxb_12"){
if (global.totkills>9*global.berserkkc){
    text[0]="IJI: |";
    text[1]="Yeah, you're right. I can't stand here all day, I've got Komato to take care of. Hold tight!";
    }
else{
    text[0]="IJI: |";
    text[1]="Yeah, you're right. I can't stand here all day, I've got a job to do. Hold tight!";
    }
portrait=12;
outline=1;
pages=2;
obj_iji.startmusics=1;}

if (global.textid=="chatxc_1"){
text[0]="IJI: Damn, another door! Doesn't look like we can crack it either. There's got to be a way to open it, like destroying whatever gives it power|";
text[1]="Yeah, I saw that. Looks like there's a way to the rooftops from here, at least that's a start.";
portrait=2;
outline=1;
pages=2;}

if (global.textid=="chatxd_1"){
text[0]="BERSERKER: Attention, all units! The Anomaly is approaching the barricade. All stations ready.";
portrait=115;
outline=4;
pages=1;}
if (global.textid=="chatxd_2"){
if (global.kills+global.totkills>9*global.berserkkc && global.killdata[797]==0)
    text[0]="IJI: Damn it! Stupid cameras - get out of our control room already, you bastard!";
else
    text[0]="IJI: Damn it! Stupid cameras - get out of our control room already!";
portrait=2;
outline=1;
pages=1;}

if (global.textid=="chatxe_1"){
text[0]="ASHA: That's as far as you go, Anomaly - time to pay up!";
portrait=103;
outline=4;
pages=1;
obj_iji.xcannotfire=0;
obj_asha2trigger.ready=1;
obj_iji.startmusics=1;
with (obj_sabot)
    scr_music("mus_lightstroke");
}
if (global.textid=="chatxe_2"){
text[0]="IJI: Y - YOU!";
portrait=3;
outline=1;
pages=1;
global.facing=1;
obj_iji.sprite_index=spr_basic;
obj_iji.startmusics=1;
with (obj_sabot)
    scr_music("mus_asha");
}
if (global.textid=="chatxe_3"){
text[0]="ASHA: What, got a problem with me? I told you, I knew your weakness, so I killed him. Looks like it didn't stop you though| 'guess I'll have to take care of that little problem mysel -";
portrait=103;
outline=4;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatxe_4"){
text[0]="IJI: SHUT UP! SHUT THE HELL UP! THIS TIME YOU'RE GOING DOWN!";
portrait=3;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatxe_5"){
text[0]="ASHA: Oh, drop it, you lunatic! I've got more than enough reason to kill you - more than your childish revenge! Don't underestimate the best Assassin in -";
portrait=103;
outline=4;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatxe_6"){
text[0]="IJI: AAAAAH!!!";
portrait=3;
outline=1;
pages=1;
obj_iji.startmusics=1;
with (obj_sabot)
    scr_stopmusic();}

if (global.textid=="chatxf_1"){
text[0]="IJI: Hhh| hhh| huhh|";
portrait=12;
outline=1;
pages=1;
obj_asha2trigger.ready2=1;
obj_iji.startmusics=1;}
if (global.textid=="chatxf_2"){
if (global.kills+global.totkills>9*global.berserkkc && global.killdata[797]==0){
    text[0]="IJI: Dan| I killed him.";
    portrait=1;
    }
else{
    text[0]="IJI: Dan| I killed him|";
    portrait=5;
    }
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatxf_3"){
text[0]="IJI: Hrg| eww.";
portrait=12;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatxf_4"){
text[0]="IJI: Don't listen to him, I'm just glad you're still okay. Yeah, I know. Don't worry| he won't find you again.";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}

if (global.textid=="chatxg_1"){
text[0]="IJI: Okay, I think the General's getting close! I can't blow this chance.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chatxg_2"){
if (global.kills+global.totkills>10*global.berserkkc && global.killdata[797]==0){
    text[0]="IJI: What was it you said again? Killing this guy should show them all not to mess with us, right?";
    portrait=12;
    }
else{
    text[0]="IJI: If this guy tries to fight me, I'm dead. I'll try not to say anything stupid, okay, Dan?";
    portrait=5;
    }
outline=1;
pages=1;}
if (global.textid=="chatxg_3"){
if (global.kills+global.totkills>10*global.berserkkc && global.killdata[797]==0){
    text[0]="IJI: I'll try talking to him first, but there's no way that's gonna work. I gotta do whatever it takes to stop the Alpha Strike.$";
    text[1]="Dan, wait here| I'm afraid this could get ugly.";
    pages=2;
    }
else{
    text[0]="IJI: Good. I know you believe in me. Wait here| I'm afraid this could get ugly.";
    pages=1;
    }
portrait=1;
outline=1;}

if (global.textid=="chatxh_1"){
text[0]="IJI: It's raining acid! I hope my Nanofield can take it.";
portrait=4;
outline=1;
pages=1;
}
if (global.textid=="chatxh_2"){
text[0]="IJI: All those ships fighting must've messed up the atmosphere| or was it the Tasens' Alpha Strike?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chatxh_3"){
text[0]="IJI: Who cares, it's not gonna stop me!";
portrait=2;
outline=1;
pages=1;
}

if (global.textid=="chatxi_1"){
text[0]="IJI: HELL yeah! Take THAT, you stupid poster! YEAH!";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chatxi_2"){
text[0]="DAN: Iji, who are you talking to?";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chatxi_3"){
text[0]="IJI: Oh. I just have this crazy urge to find all these posters. I've no idea why.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chatxi_4"){
text[0]="DAN: Okay| moving on.";
portrait=99;
outline=2;
pages=1;}

if (global.textid=="chatxj_1"){
text[0]="You got a RESONANCE REFLECTOR, used for reflecting many kinds of enemy projectiles. Press 5 or "+chr(global.weap5key)+" twice to select it. You Nanogun must be in Active mode.";
text[1]="Another way to select the Resonance reflector is to press "+chr(global.prevkey)+" or "+chr(global.nextkey)+" until the Resonance detonator is selected, then pressing "+chr(global.specialkey)+".";
portrait=0;
outline=0;
pages=2;}

if (global.textid=="chatxk_1"){
text[0]="IJI: The blast doors to the power core over there are open now. Time to apply some force.";
portrait=1;
outline=1;
pages=1;
instance_activate_object(obj_trigger);
with (obj_trigger){
    if (textid=="chatxk")
        instance_destroy();
    }
}

if (global.textid=="chatxl_1"){
text[0]="IJI: Wait, this logbook| it looks important somehow.";
portrait=1;
outline=1;
pages=1;}

if (global.textid=="chatxm_1"){
text[0]="ASHA: What the - you escaped with a restoration unit, but still want to face me again!?";
text[1]="Hahahah! That means I get to KILL YOU TWICE!";
portrait=103;
outline=4;
pages=2;
obj_iji.xcannotfire=0;
obj_asha2trigger.rready=1;
with (obj_sabot)
    scr_music("mus_lightstroke");
obj_iji.startmusics=1;}

if (global.textid=="chatxn_1"){
text[0]="IJI: Whoa! Guess that's another way to destroy that core!";
portrait=1;
outline=1;
pages=1;}

if (global.textid=="chatxo_1"){
text[0]="IJI: Hmm, this looks dangerous. I REALLY should take a look in those logbooks before touching anything out here!";
portrait=2;
outline=1;
pages=1;}

if (global.textid=="chatxp_1"){
text[0]="You got the Massacre, selected by pressing 0 while in Active mode. This weapon uses your own Armor as ammunition, and its power is unaffected by your Attack stat. Damage taken by firing it does not count towards your `Damage taken` total.";
portrait=0;
outline=0;
pages=1;}

if (global.textid=="chatxq_1"){
text[0]="IJI: You again?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chatxq_2"){
text[0]="ANSAKSIE: Hey. Don't mind me, I'm just here to pick the audio log out of Tor if he dies.";
portrait=117;
outline=4;
pages=1;}
if (global.textid=="chatxq_3"){
text[0]="IJI: I didn't come here to -";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chatxq_4"){
text[0]="ANSAKSIE: I know, but with the way you `argue`, I'm not keeping my hopes up. Just remember that I can't hold your hand this time, Anomaly.";
portrait=117;
outline=4;
pages=1;}
if (global.textid=="chatxq_5"){
text[0]="IJI: My name's Iji! And there's nothing else I can do, I'm not gonna let you destroy the world!";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chatxq_6"){
text[0]="ANSAKSIE: Hm. The General has an easier time listening to someone calm and rational. Don't get too excited, Iji.";
portrait=117;
outline=4;
pages=1;}

if (global.textid=="chatxr_1"){
text[0]="IJI: About that - did you really have to kill Iosa?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chatxr_2"){
text[0]="ANSAKSIE: I knew it could cost my life. I knew it would devastate General Tor. I did it because that woman was wrong. Whether her death will be an awakening or further motivating her troops is for them to decide. I'm just glad I got to do it myself.";
portrait=117;
outline=4;
pages=1;}
if (global.textid=="chatxr_3"){
text[0]="IJI: Huh, you're really obsessed with this.";
portrait=12;
outline=1;
pages=1;}
if (global.textid=="chatxr_4"){
text[0]="ANSAKSIE: So what if I am? I want to stop the development of Generation 3 weapons and the ideals behind them, but of course there will be sacrifices. I admire your pacifism, but remember that the ones who don't fight back are the easiest to crush.";
portrait=117;
outline=4;
pages=1;}
if (global.textid=="chatxr_5"){
text[0]="IJI: |";
portrait=1;
outline=1;
pages=1;}

if (global.textid=="chatxs_1"){
text[0]="IJI: I gotta go, but do you have any more suggestions for convincing Tor?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chatxs_2"){
text[0]="ANSAKSIE: Simply arguing won't work. Tor doesn't care who pushes the buttons, as he thinks the one who gave the order is the one at fault. He'll blame anyone but himself, no matter what you're planning to tell him.";
portrait=117;
outline=4;
pages=1;}
if (global.textid=="chatxs_3"){
text[0]="IJI: Sheesh, thanks a lot.";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chatxs_4"){
text[0]="ANSAKSIE: I didn't say it's hopeless! If push comes to shove, your gun is a better weapon than your words. General exoskeletons can't aim at nearby units, and most of their weapons can be reflected. Your determination alone might just be enough to";
text[1]="make him change his mind. I have no sympathies for your planet, but if you do manage to have your way| I suppose there is more to you than survival instinct.";
portrait=117;
outline=4;
pages=2;}

if (global.textid=="chatxt_1"){
text[0]="ANSAKSIE: Don't wait around, Iji. I'd hate to see someone so stubborn die so young.";
portrait=117;
outline=4;
pages=1;}
if (global.textid=="chatxt_2"){
text[0]="IJI: Huh. Got it.";
portrait=1;
outline=1;
pages=1;}

if (global.textid=="chatxu_1"){
text[0]="ANSAKSIE: Figures. That Soldier sold me a malfunctioning translator, now I'm babysitting a human with people-poking issues. Might as well keep practicing this cool pose|";
portrait=117;
outline=4;
pages=1;}

if (global.textid=="chatxv_1"){
text[0]="ASHA: Hhh| HUMAN! Where| where in the Zentraidon do you find SO MANY RESTORATION UNITS!? Th-This is RIDICULOUS! It's UTTERLY IMPROBABLE!";
text[1]="How many times do I have to kill you!? I'LL TEAR YOU TO PIECES AND FIRE EVERY LAST ONE OF THEM INTO A BLACK HOLE! TEN TIMES OVER!!!";
portrait=103;
outline=4;
pages=2;
obj_iji.xcannotfire=0;
obj_asha2trigger.rready=1;
with (obj_sabot)
    scr_music("mus_lightstroke");
obj_iji.startmusics=1;
obj_asha2.insane=1;}
if (global.textid=="chatxv_2"){
text[0]="IJI: Huh, I guess he's serious this time.";
portrait=2;
outline=1;
pages=1;
obj_iji.startmusics=1;
global.facing=1;
obj_iji.sprite_index=spr_basic;}
if (global.textid=="chatxv_3"){
text[0]="ASHA: Serious? SERIOUS! Y - YOU! BLARGH! DIIIIIIIIIIIIIEEEEEEE!!!";
portrait=103;
outline=4;
pages=1;
obj_iji.startmusics=1;}


if (global.textid=="chatxw_1"){
global.cannotskipchat=1;
text[0]="IJI: Hhh| hhh| alright.";
portrait=2;
outline=1;
pages=1;
obj_iji.holdafterchat=0;
if (instance_number(obj_end)==0)
    instance_create(obj_iji.x,obj_iji.y,obj_end);
}


if (obj_iji.xdanleft || global.specialtrigger1==0){
if (global.textid=="chatxmia_1"){
text[0]="IJI: A ribbon| Mia.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chatxmia_2"){
if (global.kills+global.totkills>10*global.berserkkc && global.killdata[797]==0)
    text[0]="IJI: This is it| the whole world's waiting for me to fix this mess, and I'm not even sure how. I only know that everything leading up to this will be meaningless if I fail.";
else
    text[0]="IJI: This is it| the whole world's waiting for me to convince the General, and I don't even know what to say. I'm just a human, how will I know he'll even listen? Everything leading up to this will be meaningless if I fail.";
portrait=12;
outline=1;
pages=1;}
if (global.textid=="chatxmia_3"){
if (global.kills+global.totkills>10*global.berserkkc && global.killdata[797]==0)
    text[0]="IJI: Not that there's much to fix, anyway. Even if the Komato leave, the world's never going back to what it was.";
else
    text[0]="IJI: Not that I didn't have my doubts, anyway. Even if the Komato leave, the world's never going back to what it was.";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chatxmia_4"){
text[0]="IJI: At least I'll do what I can to save what's left of it| I'll never forget you. I love you, sis.";
if (global.kills+global.totkills>10*global.neutralkc)
    portrait=12;
else
    portrait=5;
outline=1;
pages=1;}
}

else{
if (global.textid=="chatxmia_1"){
text[0]="IJI: A ribbon? Mia|";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chatxmia_2"){
text[0]="DAN: What's wrong?";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chatxmia_3"){
text[0]="IJI: Ah -";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chatxmia_4"){
text[0]="DAN: Look, you have to hurry before the Komato General leaves his post and returns to lower orbit! You can do it, but quickly!";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chatxmia_5"){
text[0]="IJI: Thanks, I'll reach him soon. I won't let you down!";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chatxmia_6"){
text[0]="DAN: Of course not, you haven't made it this far for nothing. I believe in you, so hurry up! Show 'em not to mess with my sis!";
portrait=99;
outline=2;
pages=1;}
if (global.textid=="chatxmia_7"){
text[0]="IJI: Got it!";
portrait=8;
outline=1;
pages=1;}
if (global.textid=="chatxmia_8"){
text[0]="IJI: Mia, thank you for everything. I'll never forget you!";
portrait=12;
outline=1;
pages=1;}
}

if (global.textid=="chat11_1" && global.wty){
text[0]="SECTOR Y";
portrait=0;
outline=0;
pages=1;
obj_iji.startmusics=1;}


if (global.textid=="chatxx_1"){
text[0]="???: There you are. Do you understand what you've done?";
portrait=117;
outline=4;
pages=1;
with (obj_komatotrooper)
    angry=0;
with (obj_komatoberserker)
    angry=0;
with (obj_skysmasher)
    angry=0;
tempid=instance_create(8654,4281,obj_sec9ansaksie)
tempid.type=0;
with (tempid)
    instance_create(bbox_left+((bbox_right-bbox_left)/2), bbox_top+((bbox_bottom-bbox_top)/2), obj_megaflash);
with (obj_sabot)
    scr_music("mus_lightstroke");
obj_iji.startmusics=1;}
if (global.textid=="chatxx_2"){
text[0]="IJI: What!?";
portrait=2;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatxx_3"){
text[0]="???: You failed to kill Iosa. No matter what you tell General Tor now, Iosa will come right back and convince him to Strike your planet.";
portrait=117;
outline=4;
pages=1;
obj_sec9ansaksie.shakehead=1;
with (obj_sabot)
    scr_music("mus_dark");
obj_iji.startmusics=1;}
if (global.textid=="chatxx_4"){
text[0]="IJI: That's| no!";
portrait=1;
outline=1;
pages=1;
obj_iji.startmusics=1;}
if (global.textid=="chatxx_5"){
text[0]="???: Too late, you softhearted bastard! Didn't you read the logs I left you? Good luck talking your way out of this one - you're on your own.";
portrait=117;
outline=4;
pages=1;
obj_iji.startmusics=1;}

if (global.textid=="chatxy_1"){
global.cannotskipchat=1;
text[0]="TOR: |Then she must be hiding near my position. I did NOT authorize the release of her Nanogun!";
portrait=111;
outline=4;
pages=1;}
if (global.textid=="chatxy_2"){
text[0]="IJI: General? Hello?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chatxy_3"){
text[0]="TOR: Huh? No| end of transmission.";
portrait=110;
outline=4;
pages=1;
obj_torbody.image_single=-1;
obj_torbody.image_index=2;
obj_torbody.image_speed=-1/3;
obj_torbody.alarm[3]=6;
}
if (global.textid=="chatxy_4"){
text[0]="IJI: Uh, hi. Can you understand me?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chatxy_5"){
text[0]="TOR: What exactly is this? Wait, you have to be|";
portrait=110;
outline=4;
pages=1;}
if (global.textid=="chatxy_6"){
if (global.kills+global.totkills>10*global.neutralkc){
    text[0]="IJI: Yeah, I know, I'm the `Human Anomaly`. But there's something very important that -";
    portrait=1;
    }
else{
    text[0]="IJI: Yeah, I know, I'm the `Human Anomaly`. But there's something very important that -";
    portrait=5;
    }
outline=1;
pages=1;}
if (global.textid=="chatxy_7"){
text[0]="TOR: What the - what in the world are YOU doing just walking into my post? Do you have a death wish!?";
portrait=110;
outline=4;
pages=1;
with (obj_sabot)
    scr_music("mus_dark");}
if (global.textid=="chatxy_8"){
text[0]="IJI: WAIT! General, please wait and let me explain! I'm not here to fight you - all I want is a peaceful discussion!";
portrait=2;
outline=1;
pages=1;
obj_iji.sprite_index=spr_lookaround;
obj_iji.image_speed=0.5;
obj_torbodytrigger.alarm[0]=26;}
if (global.textid=="chatxy_9"){
text[0]="TOR: Oh, of WHAT, may I ask!?";
portrait=110;
outline=4;
pages=1;}
if (global.textid=="chatxy_10"){
text[0]="IJI: Wh-What do you think? We live here on this planet, and we haven't hurt anyone! All of a sudden, the Tasen came and wasted most of our people, and now you think you can get away with Alpha Striking us too!";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chatxy_11"){
text[0]="TOR: Of course we can get away with it. Perhaps you're not aware that the only way to make sure that the Tasen are extinct is to -";
portrait=110;
outline=4;
pages=1;}
if (global.textid=="chatxy_12"){
if (global.kills+global.totkills>10*global.neutralkc)
    text[0]="IJI: No, that's not right. You already know that the Tasen are as good as gone!";
else
    text[0]="IJI: No, that's not right. You already know that the Tasen are as good as gone.";
portrait=1;
outline=1;
pages=1;
obj_iji.sprite_index=spr_lookaround;
obj_iji.image_speed=0.5;
obj_torbodytrigger.alarm[0]=26;}
if (global.textid=="chatxy_13"){
text[0]="TOR: That's correct, but -";
portrait=110;
outline=4;
pages=1;}
if (global.textid=="chatxy_14"){
if (global.kills+global.totkills>10*global.neutralkc)
    text[0]="IJI: But WHAT? If you think the humans don't even matter, that's just STUPID! Same with the Tasen, you killed them because they're not the same as you!";
else
    text[0]="IJI: But what? If you think the humans don't even matter, that's just stupid! It's the same as the reason you hunted the Tasen - because they're not the same as you!";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chatxy_15"){
text[0]="TOR: Fuh! You have no idea what you're talking about, human! What do you hope to accomplish by complaining to ME about the errors of my people? The Tasen were a lesser form of Komato, a society of outcasts and leeches! The Komatos' hatred for them grew over";
text[1]="so many starturns, and once the war started, there was no stopping it. The majority always thought of the Tasen as inferior, and no matter what you say, you cannot stop such a massive force of strife once it's begun to spread. Our";
text[2]="leaders in High Command were powerless - the Imperial Army took the law into its own hands!";
portrait=110;
outline=4;
pages=3;}
if (global.textid=="chatxy_16"){
if (global.kills+global.totkills>10*global.neutralkc)
    text[0]="IJI: Oh, yeah? You didn't care that the Komato would rather wipe the Tasen out than live in peace with them?";
else
    text[0]="IJI: So what you're saying is - is that you didn't care that the Komato would rather wipe the Tasen out than live in peace with them?";
portrait=1;
outline=1;
pages=1;}
if (global.textid=="chatxy_17"){
text[0]="TOR: BAH! You seem to think that it's so easy, human! You think that the handful of leaders of High Command, who DID seek a rational solution to the conflict, could stop the ignorance of the masses? When the war broke out, anyone opposing the";
text[1]="Imperial Army would be killed! You honestly think we're so heartless as to wipe out a planet if it wasn't even necessary? You can't blame me without first blaming the public and the Imperial Army!";
portrait=110;
outline=4;
pages=2;}
if (global.textid=="chatxy_18"){
text[0]="IJI: But, I, I thought the leaders of a people were responsible for them! You keep talking like it's not your fault, when YOU'RE the one with the power!";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chatxy_19"){
text[0]="TOR: Power!? The people outnumber their leaders, do you expect us to just wish their intolerance away? We TRIED to end the conflict, damnit - don't come here and tell me that we DIDN'T TRY! High Command did the right thing when going with the flow";
text[1]="of the Imperial Army, otherwise we'd be stuck in internal war! You just strut into my post and expect to know the answer to all of our problems, when all that you say has already been said! I'm sick of this conflict, and I'm sick of people like you - if";
text[2]="there's one good thing about the extinction of the Tasen, it's that we'll find an end to the most pointless war I've ever seen!";
portrait=110;
outline=4;
pages=3;}
if (global.textid=="chatxy_20"){
text[0]="IJI: But the Tasen are already dead!";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chatxy_21"){
text[0]="TOR: That may be good enough for me, but it's not enough for the people - they've waited ages for this to happen, and we have to finish what they started! They couldn't care less about this planet either, no matter what I or anyone else in High Command";
text[1]="says! The Alpha Strike is just about to begin powering up, and once I've returned to lower orbit, one word from me will put an end to your suffering!";
portrait=110;
outline=4;
pages=2;}
if (global.textid=="chatxy_22"){
text[0]="IJI: NO! I don't care what you say, I'll save the world if it so takes my life!";
portrait=2;
outline=1;
pages=1;}
if (global.textid=="chatxy_23"){
text[0]="TOR: Humph! Are you really prepared to make good on that promise? Sparing your planet would put MY life on the line as well, and I|";
portrait=110;
outline=4;
pages=1;}
if (global.textid=="chatxy_24"){
text[0]="TOR: I am merely the Army's pawn. If you wish me to reconsider, then prove to me that I am wrong| prove to me just how strongly you believe in your words! In the meantime| enjoy the view.";
portrait=111;
outline=4;
pages=1;
obj_torbody.image_single=-1;
obj_torbody.image_index=0;
obj_torbody.image_speed=1/3;
obj_torbody.alarm[0]=6;
with (obj_sabot)
    scr_stopmusic();
}

if (global.textid=="chatxz_1"){
if (global.wty)
    text[0]="TOR: Y-You fool! What have you done!? That Null driver prototype| the wormholes| the hallucinations! They'll drive you mad!";
else
    text[0]="TOR: Ugh| ack! M-Mercy!";
pages=1;
portrait=114;
outline=4;
obj_sabot.cannotrestart=1;
if (global.wty){
    if (instance_number(obj_end)==0)
        instance_create(obj_iji.x,obj_iji.y,obj_end);
    }
else
    obj_iji.holdafterchat=1;
}
if (global.textid=="chatxz_2"){
text[0]="IJI: Hhh| hhh| you surrender?";
pages=1;
portrait=2;
outline=1;}

if (global.textid=="chatxaa_1"){
text[0]="IOSA: That's enough!";
pages=1;
portrait=119;
outline=4;
with (obj_sabot)
    scr_music("mus_dark");
obj_iji.holdafterchat=1;}
if (global.textid=="chatxaa_2"){
text[0]="IJI: What? How did you -";
pages=1;
portrait=2;
outline=1;}
if (global.textid=="chatxaa_3"){
text[0]="IOSA: It took long enough recharging my Nanofield. But this won't take long at all|";
pages=1;
portrait=119;
outline=4;}
if (global.textid=="chatxaa_4"){
text[0]="TOR: Iosa! I warned you to stay out of this!";
pages=1;
portrait=114;
outline=4;}
if (global.textid=="chatxaa_5"){
text[0]="IOSA: Choose your words carefully, General. This is being broadcast to the entire fleet. I know what you're up to| but I won't let the Anomaly talk you into it.";
pages=1;
portrait=119;
outline=4;}
if (global.textid=="chatxaa_6"){
text[0]="TOR: What are you insinuating? Return to lower orbit at once! That's an order!";
pages=1;
portrait=114;
outline=4;}
if (global.textid=="chatxaa_7"){
text[0]="IOSA: Do you hear it? The cheers of our troops, screaming for me to finish what you obviously couldn't. I am the one in control here, dear General. Not you.";
pages=1;
portrait=119;
outline=4;}
if (global.textid=="chatxaa_8"){
text[0]="IOSA: Tell me, human - isn't true bravery to risk your life to protect what you love?";
pages=1;
portrait=119;
outline=4;
with (obj_sabot)
    scr_stopmusic();
}
if (global.textid=="chatxaa_9"){
text[0]="IJI: What?";
pages=1;
portrait=2;
outline=1;}

if (global.textid=="chatxab_1"){
text[0]="IOSA: I've never heard a more ridiculous thing in my life. Your death made no difference at all.";
pages=1;
portrait=119;
outline=4;
global.sector=0;
obj_iji.holdafterchat=1;
if (instance_number(obj_end)==0)
    instance_create(obj_iji.x,obj_iji.y,obj_end);
}



}