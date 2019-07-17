//CUTSCENE 1: HOSTILES
//No dialogue


//CUTSCENE 2: AWAKENING

//REALLY
if (global.really){
if (global.textid=="cut201_1"){
text[0]="DOC: Becker, did you hear the latest?#$#(Press Down or "+chr(global.usekey)+" to advance messages, or Escape to skip dialogues and cutscenes completely.)";
outline=0;
pages=1;}
if (global.textid=="cut201_2"){
text[0]="BECKER: You mean reallyjoel's dad? Of course.";
outline=0;
pages=1;}

if (global.textid=="cut202_1"){
text[0]="DOC: I still don't believe it.";
outline=0;
pages=1;}
if (global.textid=="cut202_2"){
text[0]="BECKER: Hey, if anyone can beat that game while juggling three cakes AND doing the laundry, it's reallyjoel's dad.";
outline=0;
pages=1;}
if (global.textid=="cut202_3"){
text[0]="DOC: Look. All I'm saying is, you shouldn't believe everything you hear.";
outline=0;
pages=1;}
if (global.textid=="cut202_4"){
text[0]="BECKER: When it comes to that guy, I believe anything. I saw him in person, beating some game with a gopher in two minutes flat. He didn't even push the umbrella button ONCE.";
outline=0;
pages=1;}
if (global.textid=="cut202_5"){
text[0]="PLAIT: Stop bickering about video games. What about Iji?";
outline=0;
pages=1;}
if (global.textid=="cut202_6"){
text[0]="DOC: Oh, yes, of course| there, I've set her Nanofield to wake her up. So Becker, you even believe that part about him beating Hero Core with one toe while blindfolded and| wait| what's that sound?";
outline=0;
pages=1;}

if (global.textid=="cut203_1"){
text[0]="BECKER: What's wrong?";
outline=0;
pages=1;}
if (global.textid=="cut203_2"){
text[0]="DOC: Oh no| everyone to the safe room!";
outline=0;
pages=1;}
if (global.textid=="cut203_3"){
text[0]="PLAIT: TOO LATE! THE TAS- AAAAAH!";
outline=0;
pages=1;}

if (global.textid=="cut204_1"){
text[0]="IJI: Unh|";
outline=1;
pages=1;}
if (global.textid=="cut204_2"){
text[0]="IJI: Hello?";
outline=1;
pages=1;}
if (global.textid=="cut204_3"){
text[0]="IJI: All I can remember were some people talking about video games|";
outline=1;
pages=1;}

if (global.textid=="cut205_1"){
text[0]="SPEAKER: Iji!";
outline=2;
pages=1;}

if (global.textid=="cut206_1"){
text[0]="SPEAKER: Iji, calm down. It's me, reallyjoel's dad. I'm in a control room in the middle of this complex, and I'm here to help you out.";
outline=2;
pages=1;}
if (global.textid=="cut206_2"){
text[0]="IJI: reallyjoel's dad!? For real?";
outline=1;
pages=1;}
if (global.textid=="cut206_3"){
text[0]="DAD: Yes, but you shouldn't talk or the Tasen could hear you. I can talk as much as I want - I'm so pro, I use all the speakers at once, and they don't understand any human languages.";
outline=2;
pages=1;}

if (global.textid=="cut207_1"){
text[0]="DAD: As far as I know, you were visiting this place with your family. An alien spaceship has bombarded the area with a#space-to-ground weapon called an Alpha Strike| then they came down and killed nearly everyone inside. They're called the";
text[1]="Tasen, and your mission is to make them leave this place.";
outline=2;
pages=2;}
if (global.textid=="cut207_2"){
text[0]="IJI: H-how? How am I supposed to do that?";
outline=1;
pages=1;}
if (global.textid=="cut207_3"){
text[0]="DAD: Since the Tasen invaded, a team of researchers trapped in here studied their Nanotechnology, and managed to make a cyborg soldier out of you with that technology. All you need now are the skills of a true video game master, and this won't be a";
text[1]="challenge at all.";
outline=2;
pages=2;}
if (global.textid=="cut207_4"){
text[0]="IJI: But| but I don't have those skills! I could never be as good as you!";
outline=1;
pages=1;}
if (global.textid=="cut207_5"){
text[0]="DAD: Anyone can be, Iji. Just close your eyes and visualize yourself finding the nearest Tasen leader, talking sense into him and making them leave the planet. And if that fails, visualize yourself calling in a second race, fighting through a warzone,";
text[1]="sabotaging an alien spaceship, defeating some of their best and/or most insane soldiers, finding another leader and defeating his 40-foot mecha with nothing but a Resonance reflector with ridiculous reload time.";
outline=2;
pages=2;}
if (global.textid=="cut207_6"){
text[0]="IJI: That's| that's a lot to visualize! Okay, I'll do it| I can do this.";
outline=1;
pages=1;}

if (global.textid=="cut208_1"){
text[0]="DAD: Concentrate, now. You won't become pro without trying.";
outline=2;
pages=1;}

if (global.textid=="cut209_1"){
text[0]="DAD: Well? Are you done?";
outline=2;
pages=1;}
if (global.textid=="cut209_2"){
text[0]="IJI: Almost| but I can't even imagine getting past the first Sector.";
outline=1;
pages=1;}
if (global.textid=="cut209_3"){
text[0]="DAD: Oh, don't worry. Back when I beat Jumper without pressing the jump button, I thought it would be impossible too.";
outline=2;
pages=1;}
if (global.textid=="cut209_4"){
text[0]="IJI: Uh, that actually sounds| impossible.";
outline=1;
pages=1;}
if (global.textid=="cut209_5"){
text[0]="DAD: Naw, not really. It was tough at first, but I just had to get better.";
outline=2;
pages=1;}
if (global.textid=="cut209_6"){
text[0]="IJI: Hmm. So all I have to do is think, move and fight beyond perfectly? Like, superhumanly?";
outline=1;
pages=1;}

if (global.textid=="cut210_1"){
text[0]="DAD: Yes, but being even slightly worse than myself will get you killed out there. This is serious business, after all.";
outline=2;
pages=1;}
if (global.textid=="cut210_2"){
text[0]="IJI: Hhh. Alright, I'll try to match your skill if that's my only chance.";
outline=1;
pages=1;}
if (global.textid=="cut210_3"){
text[0]="DAD: Very good. Just remember that perfection is not enough.";
outline=2;
pages=1;}
}


//NORMAL
else{
if (global.textid=="cut201_1"){
text[0]="DOC: Alright| we're done.#$#(Press Down or "+chr(global.usekey)+" to advance messages, or Escape to skip dialogues and cutscenes completely.)";
outline=0;
pages=1;}
if (global.textid=="cut201_2"){
text[0]="BECKER: Are you sure we should do this? If she dies when we boot it up, it'll all be for nothing. I want another week to make sure.$";
outline=0;
pages=1;}

if (global.textid=="cut202_1"){
text[0]="DOC: I don't think we've got another week. We've wasted months enough.";
outline=0;
pages=1;}
if (global.textid=="cut202_2"){
text[0]="BECKER: What good will it do if we can't perfect her? They have an army, and we have a potential soldier at best. Even with that gun we found -";
outline=0;
pages=1;}
if (global.textid=="cut202_3"){
text[0]="DOC: Look. As long as we can do something, that's better than nothing at all. I'd rather see her alive again at least once before we die.";
outline=0;
pages=1;}
if (global.textid=="cut202_4"){
text[0]="BECKER: Hm. Like she'd make that much of a difference.";
outline=0;
pages=1;}
if (global.textid=="cut202_5"){
text[0]="PLAIT: Stop bickering already. Should we wake her up or not?";
outline=0;
pages=1;}
if (global.textid=="cut202_6"){
text[0]="DOC: Yes. Yes, of course| there. Now, first we should check mental stability, sensory response and| wait, what's that sound?";
outline=0;
pages=1;}

if (global.textid=="cut203_1"){
text[0]="BECKER: What's wrong?";
outline=0;
pages=1;}
if (global.textid=="cut203_2"){
text[0]="DOC: Oh no| everyone to the safe room!";
outline=0;
pages=1;}
if (global.textid=="cut203_3"){
text[0]="PLAIT: TOO LATE! THE TAS- AAAAAH!";
outline=0;
pages=1;}

if (global.textid=="cut204_1"){
text[0]="IJI: Unh|";
outline=1;
pages=1;}
if (global.textid=="cut204_2"){
text[0]="IJI: Hello?";
outline=1;
pages=1;}
if (global.textid=="cut204_3"){
text[0]="IJI: Dad? Mia?";
outline=1;
pages=1;}

if (global.textid=="cut205_1"){
text[0]="SPEAKER: Iji!";
outline=2;
pages=1;}

if (global.textid=="cut206_1"){
text[0]="SPEAKER: Iji, calm down. It's me, Dan. I'm in a control room in the middle of the complex, but I can see you through the cameras. There's a lot to explain.";
outline=2;
pages=1;}
if (global.textid=="cut206_2"){
text[0]="IJI: Dan!? Can you hear me?";
outline=1;
pages=1;}
if (global.textid=="cut206_3"){
text[0]="DAN: Keep your voice down! Yes, there are microphones in these speakers, but you shouldn't talk or the Tasen could hear you. I can talk as much as I want - I use all the speakers at once, and I don't think they understand any human languages.";
outline=2;
pages=1;}

if (global.textid=="cut207_1"){
text[0]="DAN: Listen. We were all visiting dad's workplace, when all of a sudden an alien spaceship bombarded the area with a space-to- ground weapon called the Alpha Strike. Then they came down and killed nearly everyone inside - that's why I'm stuck in this";
text[1]="control room. They're called the Tasen, and I don't know why they invaded this complex, but it's our job to make them leave.";
outline=2;
pages=2;}
if (global.textid=="cut207_2"){
text[0]="IJI: Y-You're lying! That's -";
outline=1;
pages=1;}
if (global.textid=="cut207_3"){
text[0]="DAN: Calm down. It's been six months since the Tasen invaded this place. Since then, a team of researchers trapped in here tried to find a way to stop them. They managed to make a cyborg soldier out of the only suitable survivor they could find, using the";
text[1]="Tasens' technology. You are that cyborg.";
outline=2;
pages=2;}
if (global.textid=="cut207_4"){
text[0]="IJI: No| y-you're just making this up! It's just a dream, isn't it!?";
outline=1;
pages=1;}
if (global.textid=="cut207_5"){
text[0]="DAN: Iji, calm down!";
outline=2;
pages=1;}
if (global.textid=="cut207_6"){
text[0]="IJI: NO! I|";
outline=1;
pages=1;}

if (global.textid=="cut208_1"){
text[0]="DAN: IJI!";
outline=2;
pages=1;}

if (global.textid=="cut209_1"){
text[0]="DAN: We've been over this a hundred times now. Our family's gone. You have to trust me and head out there - your only other option is to stay locked in that room and die.";
outline=2;
pages=1;}
if (global.textid=="cut209_2"){
text[0]="IJI: I know.";
outline=1;
pages=1;}
if (global.textid=="cut209_3"){
text[0]="DAN: Your goal is to talk to one of the Tasen leaders, and convince them to take their spaceship and leave.";
outline=2;
pages=1;}
if (global.textid=="cut209_4"){
text[0]="IJI: But why hasn't anyone done something about them? Hasn't the rest of the world noticed what's going on here?";
outline=1;
pages=1;}
if (global.textid=="cut209_5"){
text[0]="DAN: We'll have to take this one step at a time. You really have to get going soon, or the Tasen will find you.";
outline=2;
pages=1;}
if (global.textid=="cut209_6"){
text[0]="IJI: Okay.";
outline=1;
pages=1;}

if (global.textid=="cut210_1"){
text[0]="DAN: Right, time to move. Beside you lies a very special Tasen Nanogun - learn to use it, and guard it with your life. From now on, you have to do exactly as I say. Okay?";
outline=2;
pages=1;}
if (global.textid=="cut210_2"){
text[0]="IJI: Alright. I guess I'll try.";
outline=1;
pages=1;}
if (global.textid=="cut210_3"){
text[0]="DAN: I'll direct you to a Tasen Elite called Krotera, so we can have a talk with him. Remember his name. You have the ability to understand their language, and your personal Nanofield alters what you say, so they can understand you too. Stay on your";
text[1]="guard - everyone in this complex is under orders to kill on sight. Don't bother trying to communicate with anyone but Krotera. I'm sorry we have to do this, but| good luck.";
outline=2;
pages=2;}

}


//CUTSCENE 3: DESTRUCTION

if (global.textid=="cut301_1"){
text[0]="IJI: Huh? There's a balcony up there.";
outline=1;
pages=1;}
if (global.textid=="cut301_2"){
text[0]="DAN: Iji, don't go out there.";
outline=2;
pages=1;}
if (global.textid=="cut301_3"){
text[0]="IJI: What? Why not?";
outline=1;
pages=1;}
if (global.textid=="cut301_4"){
text[0]="DAN: Because. I don't want you to see what it looks like. You're not ready yet.";
outline=2;
pages=1;}

if (global.textid=="cut302_1"){
text[0]="IJI: What do you mean, not ready? I just want to take a look around!";
outline=1;
pages=1;}
if (global.textid=="cut302_2"){
text[0]="DAN: But - you won't like it, trust me. It's for your own good.";
outline=2;
pages=1;}
if (global.textid=="cut302_3"){
text[0]="IJI: Geez, stop hiding everything from me! I'd like to know what's going on around here too! Maybe I'd just like to get some fresh air for once, see what the Tasen spaceship looks like!";
outline=1;
pages=1;}

if (global.textid=="cut303_1"){
text[0]="DAN: But - just be careful up there, okay?";
outline=2;
pages=1;}
if (global.textid=="cut303_2"){
text[0]="IJI: Hmph.";
outline=1;
pages=1;}

if (global.textid=="cut304_1"){
text[0]="IJI: No|";
outline=1;
pages=1;}
if (global.textid=="cut304_2"){
text[0]="IJI: They're| he, he said there was only one|";
outline=1;
pages=1;}

if (global.textid=="cut306_1"){
text[0]="DAN: Iji|";
outline=2;
pages=1;}
if (global.textid=="cut306_2"){
text[0]="IJI: Leave me alone! You, you LIAR!";
outline=1;
pages=1;}
if (global.textid=="cut306_3"){
text[0]="DAN: Listen, I tried to warn you. I lied because there was no way you'd agree to do this otherwise, but now you know. The Tasen command an entire armada, and they Alpha Struck the whole planet. The Strike was a weak one to avoid destroying the surface";
text[1]="completely, but the human survivors are few. This complex is the center of the Tasen colony, which is why they left it intact. We can only assume they will eventually spread to the rest of the planet. I know it's not much of a world to save, but|";
outline=2;
pages=2;}
if (global.textid=="cut306_4"){
text[0]="IJI: It's just a dream| isn't it?";
outline=1;
pages=1;}
if (global.textid=="cut306_5"){
text[0]="DAN: Stay calm. You have to trust me, and you have to believe that we can convince Krotera to make them leave.";
outline=2;
pages=1;}
if (global.textid=="cut306_6"){
text[0]="IJI: But| I'm not some kind of| I was just -";
outline=1;
pages=1;}
if (global.textid=="cut306_7"){
text[0]="DAN: Damn it, I knew this'd happen! Everything - all of this will be for nothing unless you make it to Krotera!";
outline=2;
pages=1;}

if (global.textid=="cut307_1"){
text[0]="DAN: We'll make it. Okay?";
outline=2;
pages=1;}
if (global.textid=="cut307_2"){
text[0]="IJI: Okay.";
outline=1;
pages=1;}
if (global.textid=="cut307_3"){
text[0]="DAN: Good. I should've told you earlier to leave your feelings behind. I forgot that you haven't been around for the last six months.";
outline=2;
pages=1;}
if (global.textid=="cut307_4"){
text[0]="IJI: |Right.";
outline=1;
pages=1;}

if (global.textid=="cut308_1"){
text[0]="DAN: I'm sorry. I don't want to be me, either.";
outline=2;
pages=1;}



//CUTSCENE 4: CONTACT

if (global.textid=="cut401_1"){
if (global.specialtriggerc)
    text[0]="TOR: Inform the troops. We're readying the fleet.";
else
    text[0]="IOSA: Now the burden is not on your shoulders.";
outline=4;
pages=1;}

if (global.textid=="cut402_1"){
text[0]="TOR: The Tasen are on Origin. Their fake report wouldn't fool our troops.";
outline=4;
pages=1;
obj_cutsabot.timeline_position+=50;}
if (global.textid=="cut402_2"){
text[0]="IOSA: You insist, General? You're not making it public?";
outline=4;
pages=1;}
if (global.textid=="cut402_3"){
text[0]="TOR: No. This is as far as I'll take the campaign.";
outline=4;
pages=1;}
if (global.textid=="cut402_4"){
text[0]="IOSA: Hmm. So you'd rather see few survive than making billions happy? How will you explain this to High Command if it was uncovered?";
outline=4;
pages=1;}



//CUTSCENE 5: MEETING

if (global.textid=="cut501_1"){
if (global.kills+global.totkills<=6*global.neutralkc)
    text[0]="???: Iji!";
else
    text[0]="???: WAIT! Don't shoot!";
outline=2;
pages=1;}

if (global.textid=="cut502_1"){
text[0]="DAN: It's me| Dan.";
outline=2;
pages=1;}

if (global.textid=="cut503_1"){
text[0]="IJI: D - DAN! I thought, I mean, how did you!?";
outline=1;
pages=1;}
if (global.textid=="cut503_2"){
text[0]="DAN: Haha, it's a long story| I figured you'd look for me in this control room, so I did my best to get here as well. Ah, sorry, my leg hurts like hell|";
outline=2;
pages=1;}

if (global.textid=="cut504_1"){
text[0]="IJI: What happened!? Are you okay?";
outline=1;
pages=1;}
if (global.textid=="cut504_2"){
text[0]="DAN: Yeah, it's not too serious. I took a shot as I ran here, so I tried to stop the bleeding with my shirt. Hah| it looked so easy, watching you fight the Tasen. I guess I got a bit overconfident.";
outline=2;
pages=1;}
if (global.textid=="cut504_3"){
text[0]="IJI: Dan, I'm so happy to see you. When the Komato arrived|";
outline=1;
pages=1;}
if (global.textid=="cut504_4"){
text[0]="DAN: I know. Sorry for worrying you. And I'm sorry for bossing you around, I didn't want to sound so| well|";
outline=2;
pages=1;}
if (global.textid=="cut504_5"){
text[0]="IJI: Eh, you don't have to apologize. You've had it tough here, too.";
outline=1;
pages=1;}

if (global.textid=="cut505_1"){
text[0]="DAN: Heh. I thought you'd hate me for it.";
outline=2;
pages=1;}
if (global.textid=="cut505_2"){
if (global.kills+global.totkills>6*global.berserkkc){
    text[0]="IJI: No, not at all! I was just new to this alien killing thing, back then. I'm used to it by now."
    text[1]="It's not that bad, really. I've just| started seeing things sometimes.";
    pages=2;
    }
else if (global.kills+global.totkills>6*global.neutralkc){
    text[0]="IJI: No, not at all! I was just new to this alien shooting thing, back then. I mean, it's not that I like it, but I've sort of gotten used to it by now.";
    pages=1;
    }
else{
    text[0]="IJI: No, not at all! I was just| new to this alien invasion thing, back then. I'm still trying to shoot as few of them as possible though.";
    pages=1;
    }
outline=1;}
if (global.textid=="cut505_3"){
if (global.kills+global.totkills>6*global.berserkkc)
    text[0]="DAN: Seeing things? What do you mean?";
else if (global.kills+global.totkills>6*global.neutralkc)
    text[0]="DAN: I know. You've gotten more confident, I can tell that much. I just wanted to be more like you, I guess.";
else
    text[0]="DAN: I know. Just remember that your safety comes first. You can still kill them if you need to - I wouldn't think less of you for it. You're the only one who can do something about this mess.";
outline=2;
pages=1;}
//berserk
if (global.textid=="cut505_4"){
text[0]="IJI: It's nothing! It's just| things that aren't there sometimes.";
text[1]="But I'm fine. I promise.";
outline=1;
pages=2;}
if (global.textid=="cut505_5"){
text[0]="DAN: Hmm. I know it's tough, but your safety comes first. You're the only one who can do something about this mess. I'm just glad you don't hesitate anymore.";
outline=2;
pages=1;}


if (global.textid=="cut506_1"){
if (global.kills+global.totkills>6*global.berserkkc)
    text[0]="DAN: So you'd better get moving.";
else if (global.kills+global.totkills>6*global.neutralkc)
    text[0]="DAN: So| you'd better get moving.";
else
    text[0]="DAN: So you'd better get moving.";
outline=2;
pages=1;}
if (global.textid=="cut506_2"){
text[0]="IJI: What? Is there anything else we can do?";
outline=1;
pages=1;}
if (global.textid=="cut506_3"){
if (global.specialtriggerc){
text[0]="DAN: Well, I don't know how much you've been reading their logbooks, but I've been tapping into the Komato broadcasts. It looks like you were right about them| they're planning to Alpha Strike the planet, and unlike the Tasen, they're going to do it";
text[1]="at full force. They say it's the only way to ensure the Tasens' extinction. The only thing stopping them is the Tasen planetary shield generators, but only one is still standing. That last generator is buried underneath this complex.";
}
else{
text[0]="DAN: Well, I don't know how much you've been reading their logbooks, but I've been tapping into the Komato broadcasts. It looks like bringing them here wasn't exactly a good idea. They're planning to Alpha Strike the planet, and unlike the Tasen,";
text[1]="they're going to do it at full force. They say it's the only way to ensure the Tasens' extinction. The only thing stopping them is the Tasen planetary shield generators, but only one is still standing. That last generator is buried underneath this complex.";
}
outline=2;
pages=2;}
if (global.textid=="cut506_4"){
text[0]="IJI: What!? We gotta stop them!";
outline=1;
pages=1;}

if (global.textid=="cut507_1"){
text[0]="DAN: Of course, I was just getting to that. I've gathered that a Komato General is on his way down here, to a place called Sector X. He's in charge of the Komato fleet, and hopefully more reasonable than Krotera, plus his rank is way higher.";
outline=2;
pages=1;}
if (global.textid=="cut507_2"){
if (global.kills+global.totkills>6*global.berserkkc)
    text[0]="IJI: A Komato General? So if I kill him, that'll get them to leave?";
else
    text[0]="IJI: A Komato General? But we don't know if he's willing to listen to us either|";
outline=1;
pages=1;}
if (global.textid=="cut507_3"){
if (global.kills+global.totkills>6*global.berserkkc){
    text[0]="DAN: Hey, slow down - you need to convince him to withdraw the fleet, and trying to fight him won't make that any easier. Anyway, there's something more important to do first. The Komato have sent down a ship armed with a Phantom Hammer, a weapon";
    text[1]="that can shoot through several kilometers of solid rock. They're going to aim it into this building and hit the Tasens' planetary shield generator below. You have to delay them by boarding the ship and destroying the Phantom Hammer before they can fire it.";
    }
else{
    text[0]="DAN: I know it's a stretch, but it's the best we can do, as always| but there's something more important to do first. The Komato have sent down a ship armed with a Phantom Hammer, a weapon that can shoot through several kilometers of solid rock.";
    text[1]="They're going to aim it into this building and hit the Tasens' planetary shield generator below. You have to delay them by boarding the ship and destroying the Phantom Hammer before they can fire it.";
    }
outline=2;
pages=2;}
if (global.textid=="cut507_4"){
text[0]="IJI: Hang on, how am I going to board a spaceship?";
outline=1;
pages=1;}
if (global.textid=="cut507_5"){
text[0]="DAN: Easy - they've docked it in the sky above and connected it to an old armory down here with a lift, so you'll just have to get in, and get out before they take off.";
outline=2;
pages=1;}
if (global.textid=="cut507_6"){
text[0]="IJI: Okay. And after taking out their weapon, I head for the General who's somewhere in Sector X?";
outline=1;
pages=1;}
if (global.textid=="cut507_7"){
text[0]="DAN: Exactly. It's going to be tough, but -";
outline=2;
pages=1;}
if (global.textid=="cut507_8"){
text[0]="IJI: I know. I'll make sure they pay for this, and what they've done to us| and even the Tasen.";
outline=1;
pages=1;}
if (global.textid=="cut507_9"){
text[0]="DAN: So, you know that this is the last Tasen colony, and they've been hunted by the Komato?";
outline=2;
pages=1;}
if (global.textid=="cut507_10"){
text[0]="IJI: Hm. Maybe the Tasen ain't the bad guys here, but I'll never forgive what they did to us. It's just relative.";
outline=1;
pages=1;}
if (global.textid=="cut507_11"){
text[0]="DAN: Yeah. They even know this was the Komatos' home planet, long before we humans appeared| but now the Komato are about to destroy us all unless we do something.";
outline=2;
pages=1;}

if (global.textid=="cut508_1"){
text[0]="IJI: |";
outline=1;
pages=1;}
if (global.textid=="cut508_2"){
text[0]="DAN: What is it? Was it something I said?";
outline=2;
pages=1;}
if (global.textid=="cut508_3"){
text[0]="IJI: I read a logbook on my way here. A logbook about you.";
outline=1;
pages=1;}
if (global.textid=="cut508_4"){
text[0]="DAN: Huh? What did it say?";
outline=2;
pages=1;}
if (global.textid=="cut508_5"){
text[0]="IJI: It said you were working for the Komato - that you've been deceiving me, and that you'd lead me into a trap.";
outline=1;
pages=1;}
if (global.textid=="cut508_6"){
text[0]="DAN: What? Why would I do that? That's ridiculous!";
outline=2;
pages=1;}
if (global.textid=="cut508_7"){
text[0]="IJI: I know. I just wanted to hear what you had to say first.";
outline=1;
pages=1;}
if (global.textid=="cut508_8"){
text[0]="DAN: Hmm. I don't know how to prove that I'm not. I guess getting the Komato here was my idea, but -";
outline=2;
pages=1;}
if (global.textid=="cut508_9"){
text[0]="IJI: STOP IT. You don't have to say any more. I trust you. I always have, okay? Someone must have figured out we're working together, and is trying to separate us. If you were with the Komato, I'd have found out sooner. The only log I've seen was";
text[1]="written by an Assassin - probably the same one I fought in Sector 5. No-one else seems to be aware you even exist| and that guy is the last one I'd trust.";
outline=1;
pages=2;}
if (global.textid=="cut508_10"){
text[0]="DAN: Thanks| I dunno what to say.";
outline=2;
pages=1;}
if (global.textid=="cut508_11"){
text[0]="IJI: It's okay. You've saved my life and gotten me this far, and we're gonna get farther.";
outline=1;
pages=1;}
if (global.textid=="cut508_12"){
if (global.kills+global.totkills>6*global.neutralkc)
    text[0]="DAN: Yeah. We'll send them back where they came from!";
else
    text[0]="DAN: Yeah. We'll send them back where they came from, and we'll keep doing it your way| sabotaging their weapons and talking sense into their leader.";
outline=2;
pages=1;}

if (global.textid=="cut509_1"){
text[0]="IJI: Then I'd better get going, right? You can't sit there all day, either.";
outline=1;
pages=1;}
if (global.textid=="cut509_2"){
text[0]="DAN: You're right, I'll see if I can get this control room working. I won't last for long if they find me again.";
outline=2;
pages=1;}
if (global.textid=="cut509_3"){
text[0]="IJI: Don't worry! I wont let anyone near you.";
outline=1;
pages=1;}
if (global.textid=="cut509_4"){
text[0]="DAN: |Thanks.";
outline=2;
pages=1;}

if (global.textid=="cut510_1"){
text[0]="IJI: Stay safe.";
outline=1;
pages=1;}


//CUTSCENE 6: GOODNIGHT

if (global.textid=="cut601_1"){
text[0]="IJI: DAN!";
outline=1;
pages=1;}
if (global.textid=="cut601_2"){
text[0]="DAN: Uh| hhh|";
text[1]="Ij|";
outline=2;
pages=2;}
if (global.textid=="cut601_3"){
text[0]="IJI: H-Hang in there! Please!";
outline=1;
pages=1;}
if (global.textid=="cut601_4"){
text[0]="DAN: h| he| found me|";
outline=2;
pages=1;}
if (global.textid=="cut601_5"){
text[0]="IJI: Don't try to talk! I, I'll take you somewhere safe! Just -";
outline=1;
pages=1;}
if (global.textid=="cut601_6"){
text[0]="DAN: hhh| hhhhh|";
outline=2;
pages=1;}
if (global.textid=="cut601_7"){
text[0]="IJI: What?";
outline=1;
pages=1;}
if (global.textid=="cut601_8"){
text[0]="DAN: h| help| me|";
text[1]="|";
outline=2;
pages=2;}
if (global.textid=="cut601_9"){
text[0]="IJI: Dan?";
outline=1;
pages=1;}

if (global.textid=="cut602_1"){
text[0]="IJI: Dan?";
outline=1;
pages=1;}

if (global.textid=="cut603_1"){
text[0]="IJI: |";
text[1]="n| no|";
text[2]="hhh| uhhh| uuhhHHH!";
outline=1;
pages=3;}

if (global.textid=="cut604_1"){
text[0]="IJI: AAAAAAAAHH!!!";
outline=1;
pages=1;}

if (global.textid=="cut605_1"){
text[0]="IJI: Heh. You, you can't scare me like that. For a moment, I thought they had you.";
text[1]="No, no, I'm fine. I won't mention it again. Sorry.";
text[2]="So, Sector X, right? That's where the General is. Won't be easy getting there, but - you know. You've made me stronger than they'd ever suspect.";
outline=1;
pages=3;}

if (global.textid=="cut606_1"){
if (global.kills+global.totkills<=6*global.neutralkc)
    text[0]="IJI: Okay, no time to lose. Stay close, I'm gonna find us a way to Sector X. I'll be fine. I'm the one the world is counting on|";
else
    text[0]="IJI: Okay, no time to lose. Stay close, I'm gonna blast us a way to Sector X. I'll be fine. I'm the one the world is counting on|";
text[1]="I can't be weak now.";
outline=1;
pages=2;}


//CUTSCENE 7: GUARDIAN

if (global.textid=="cut701_1"){
text[0]="IJI: DAN! Are you okay?";
outline=1;
pages=1;}
if (global.textid=="cut701_2"){
text[0]="DAN: Ugh| he, *cough* he found me.";
outline=2;
pages=1;}
if (global.textid=="cut701_3"){
text[0]="IJI: Don't worry, I'm here! You're safe now.";
outline=1;
pages=1;}

if (global.textid=="cut702_1"){
text[0]="DAN: Damn| hhh, that was too close. Th-Thanks|";
outline=2;
pages=1;}
if (global.textid=="cut702_2"){
text[0]="IJI: Don't worry| I won't lose you that easily.";
outline=1;
pages=1;}
if (global.textid=="cut702_3"){
text[0]="DAN: Heh|";
outline=2;
pages=1;}
if (global.textid=="cut702_4"){
text[0]="IJI: Look, you gotta get somewhere safe. Are there any more control rooms around here?";
outline=1;
pages=1;}
if (global.textid=="cut702_5"){
text[0]="DAN: Uh, yeah| yeah, there's one just nearby, but -";
outline=2;
pages=1;}
if (global.textid=="cut702_6"){
text[0]="IJI: I know, that Assassin could come after you again| but I've got a feeling he won't.";
outline=1;
pages=1;}
if (global.textid=="cut702_7"){
text[0]="DAN: Hah| sure, I bet it's too much trouble taking YOU on again| we'd better get moving then.";
outline=2;
pages=1;}
if (global.textid=="cut702_8"){
text[0]="IJI: Yeah.";
outline=1;
pages=1;}

if (global.textid=="cut703_1"){
text[0]="DAN: I'm just so glad I'm alive.";
outline=2;
pages=1;}
if (global.textid=="cut703_2"){
text[0]="IJI: Me too. Stay safe this time. Promise?";
outline=1;
pages=1;}
if (global.textid=="cut703_3"){
text[0]="DAN: Promise.";
outline=2;
pages=1;}



//CUTSCENE 8: MERCY

if (global.textid=="cut801_1"){
if (global.totkills>10*global.berserkkc)
    text[0]="IJI: So| hhh| you surrender?";
else
    text[0]="IJI: Mercy? Hhh| you, you surrender?";
outline=1;
pages=1;}
if (global.textid=="cut801_2"){
text[0]="TOR: Cough! I won't die| by the hands of a Human!";
outline=4;
pages=1;}
if (global.textid=="cut801_3"){
if (global.specialtriggerb2)
    text[0]="IJI: Huh! You should've thought of that before you tried to fight me! Don't think I'm weak just because I'm human - now will you listen to me!?";
else if (global.totkills>10*global.berserkkc)
    text[0]="IJI: Huh! You should've thought of that before you tried to fight me! I could beat Iosa, and I can beat you too! NOW will you listen to me, Komato scum!?";
else if (global.totkills>10*global.neutralkc)
    text[0]="IJI: Huh! You should've thought of that before you tried to fight me! I could beat Iosa, and I can beat you too! NOW will you listen to me!?";
else
    text[0]="IJI: Huh! You should've thought of that before you tried to fight me! Don't think I'm weak just because I'm human - now will you listen to me!?";
outline=1;
pages=1;}
if (global.textid=="cut801_4"){
if (global.specialtriggerb2)
    text[0]="TOR: You| it's true, you're not much of a warrior| but your will is so strong, it doesn't seem to matter. Then again, to kill my honored Iosa|";
else if (global.totkills>10*global.berserkkc)
    text[0]="TOR: You| you think violence will solve everything? You think finding the one `responsible` and killing him would -";
else if (global.totkills>10*global.neutralkc)
    text[0]="TOR: You| you really think defeating me is all it takes? You think finding the one `responsible` and stopping him would -";
else
    text[0]="TOR: You| it's true, you're not much of a warrior| but your will is so strong, it doesn't seem to matter. Then again, to kill my honored Iosa|";
outline=4;
pages=1;}
if (global.textid=="cut801_5"){
if (global.specialtriggerb2)
    text[0]="IJI: I told you it wasn't me! Whatever, look, the Tasen are dead! All you gotta do is to show the report on their extinction to your army, and they'll believe you - right?";
else if (global.totkills>10*global.berserkkc)
    text[0]="IJI: SHUT UP! Look, the Tasen are dead, so there's no reason to Alpha Strike us! All you gotta do is to show the report on their extinction to your army, and they'll believe you - right?";
else if (global.totkills>10*global.neutralkc)
    text[0]="IJI: Shut up! You, you haven't listened to a word I've said at all, I just came here to stop the Alpha strike! Look, the Tasen are dead! All you gotta do is to show the report on their extinction to your army, and they'll believe you - right?";
else
    text[0]="IJI: D-Don't try to change the subject! I just came here to stop the Alpha Strike, and she stood in the way! Look, the Tasen are dead! All you gotta do is to show the report on their extinction to your army, and they'll believe you - right?";
outline=1;
pages=1;}

if (global.textid=="cut802_1"){
if (global.specialtrigger2)
    text[0]="TOR: Hm. It's not that simple. The report is already official, but there's still a chance of survivors.";
else
    text[0]="TOR: Hm. It's not that simple. The report is already official, but there's still a chance of survivors. The public won't -";
outline=4;
pages=1;}
if (global.textid=="cut802_2"){
if (global.specialtrigger2)
    text[0]="IJI: N-No there isn't! Anyone can understand that the Tasen never had a chance against the kind of force you brought down here!";
else if (global.totkills>10*global.berserkkc)
    text[0]="IJI: SCREW THEM! Anyone can understand that the Tasen never had a chance against the kind of force you brought down here!";
else if (global.totkills>10*global.neutralkc)
    text[0]="IJI: Forget them! Anyone can understand that the Tasen never had a chance against the kind of force you brought down here!";
else
    text[0]="IJI: Ugh! Stop talking about the `public` already, anyone can understand that the Tasen never had a chance against the kind of force you brought down here!";
outline=1;
pages=1;}
if (global.textid=="cut802_3"){
text[0]="TOR: |";
outline=4;
pages=1;}
if (global.textid=="cut802_4"){
text[0]="IJI: Don't YOU think it's meaningless to Alpha Strike this place?";
outline=1;
pages=1;}
if (global.textid=="cut802_5"){
text[0]="TOR: If we don't| what would the people think? They and the Tasen are the reason for the war in the first place.";
outline=4;
pages=1;}
if (global.textid=="cut802_6"){
text[0]="IJI: I| I'll tell you what the humans would think. We'd be grateful.";
outline=1;
pages=1;}

if (global.textid=="cut803_1"){
text[0]="TOR: Human| you are special. Your Nanotechnology must've been given to you by the Tasen, and we've no reason to believe the rest of your kind don't have the same potential.";
outline=4;
pages=1;}
if (global.textid=="cut803_2"){
if (global.totkills>10*global.neutralkc)
    text[0]="IJI: That's ridiculous! Some people did this to me by stealing the Tasens' stuff, they had nothing to do with it! And why the hell would they help us after Alpha Striking us?";
else
    text[0]="IJI: No, the Tasen didn't - some people did this to me by stealing the Tasens' stuff, they had nothing to do with it! And why would they help us after Alpha Striking us anyway?";
outline=1;
pages=1;}
if (global.textid=="cut803_3"){
text[0]="TOR: Hm, it was just a theory I'd heard. I don't personally believe it, but High Command likely would - any reason to Strike this planet is good enough. They're that afraid of the Imperial Army. If I defy them now, I can't tell what will happen to";
text[1]="Origin. The fleet that was sent here is but a fraction of the Army - I may be in charge of this particular attack force, but I'm only one of many Generals in the big picture.";
outline=4;
pages=2;}
if (global.textid=="cut803_4"){
text[0]="IJI: But then, at least you're the leader of THIS fleet! If they won't listen to you - I mean, how can you be their leader if they DON'T listen to you?";
outline=1;
pages=1;}

if (global.textid=="cut804_1"){
text[0]="TOR: Hmph.";
outline=4;
pages=1;}
if (global.textid=="cut804_2"){
text[0]="KIRON: General Tor. Respond, General Tor.";
outline=4;
pages=1;
with (obj_cutdoll){
    if (target==1){
        style=0;
        visible=0;
        }
    if (target==2)
        style=4;
    }
}
if (global.textid=="cut804_3"){
text[0]="TOR: Hm, Kiron? What is it?";
outline=4;
pages=1;
with (obj_cutdoll){
    if (target==1)
        style=4;
    if (target==2){
        style=0;
        visible=0;
        }
    }
}
if (global.textid=="cut804_4"){
text[0]="KIRON: The Strike is almost ready. Why haven't you returned yet?";
outline=4;
pages=1;
with (obj_cutdoll){
    if (target==1){
        style=0;
        visible=0;
        }
    if (target==2)
        style=4;
    }
}
if (global.textid=="cut804_5"){
text[0]="TOR: I've| been caught up in some personal business on ground level. What's the Strike time?";
outline=4;
pages=1;
with (obj_cutdoll){
    if (target==1)
        style=4;
    if (target==2){
        style=0;
        visible=0;
        }
    }
}
if (global.textid=="cut804_6"){
text[0]="KIRON: Half a cycle. You'd better get up here quick.";
outline=4;
pages=1;
with (obj_cutdoll){
    if (target==1){
        style=0;
        visible=0;
        }
    if (target==2)
        style=4;
    }
}
if (global.textid=="cut804_7"){
text[0]="TOR: |";
outline=4;
pages=1;
with (obj_cutdoll){
    if (target==2){
        style=0;
        visible=0;
        }
    }
}
if (global.textid=="cut804_8"){
text[0]="KIRON: Hold on. It's now a quarter cycle, so abort whatever you're doing and head up here right now.";
outline=4;
pages=1;
with (obj_cutdoll){
    if (target==1)
        style=0;
    if (target==2)
        style=4;
    }
}
if (global.textid=="cut804_9"){
text[0]="TOR: Kiron, wait. I have a message for the fleet.";
outline=4;
pages=1;
with (obj_cutdoll){
    if (target==1)
        style=4;
    if (target==2){
        style=0;
        visible=0;
        }
    }
}
if (global.textid=="cut804_10"){
text[0]="KIRON: What is it?";
outline=4;
pages=1;
with (obj_cutdoll){
    if (target==1){
        style=0;
        visible=0;
        }
    if (target==2)
        style=4;
    }
}

if (global.textid=="cut805_1"){
text[0]="TOR: We're heading home. The Komatos' business with Origin is done.";
outline=4;
pages=1;}
if (global.textid=="cut805_2"){
text[0]="KIRON: Come again, General?";
outline=4;
pages=1;}
if (global.textid=="cut805_3"){
text[0]="TOR: You heard me, loud and clear. Abort the Alpha Strike!";
outline=4;
pages=1;
with (obj_cutsabot)
    scr_music("mus_calm");
}
if (global.textid=="cut805_4"){
if (global.totkills<=10*global.neutralkc)
    text[0]="KIRON: General! Are you out of your mind? What about the Tasen? What about the Anomaly? Her Nanogun -";
else
    text[0]="KIRON: General! Are you out of your mind? What about the Tasen? What about the Anomaly? We spent so many troops -";
outline=4;
pages=1;}
if (global.textid=="cut805_5"){
text[0]="TOR: Don't make me repeat myself, Kiron! The Tasen are gone, and the Komato will never again touch this planet - we don't need another civilization on our conscience. We're returning home, and the mission will be reported as a success, because that's what";
text[1]="it is. Is that perfectly clear?";
outline=4;
pages=2;}
if (global.textid=="cut805_6"){
text[0]="KIRON: Yes, General! Understood. There's always been reason behind your decisions, and I'm sure you're right this time, too.";
outline=4;
pages=1;}
if (global.textid=="cut805_7"){
text[0]="TOR: Good. As for the Anomaly, consider her dead. And Kiron, I may not return.";
outline=4;
pages=1;}
if (global.textid=="cut805_8"){
text[0]="KIRON: What do you mean, General?";
outline=4;
pages=1;}
if (global.textid=="cut805_9"){
text[0]="TOR: I have| made a personal decision. I entrust the fleet to you, and that you will report a full success.";
outline=4;
pages=1;}
if (global.textid=="cut805_10"){
text[0]="KIRON: I see. I had a feeling it'd come to this. I'll make sure to follow your orders down to the last word, General. It's been an honor knowing you.";
outline=4;
pages=1;}
if (global.textid=="cut805_11"){
text[0]="TOR: Thank you. Take care. End of transmission.";
outline=4;
pages=1;}

if (global.textid=="cut806_1"){
if (global.totkills>10*global.neutralkc){
    text[0]="TOR: Human, don't thank me yet. You must've seen the acid rain outside, the landscape blasted asunder. This is an Alpha Struck planet, and rebuilding it may be impossible. I spared you for two reasons| if Origin survives, consider it a gift for being the";
    text[1]="first to ever stand up to the Army. But if the planet dies, let it be a testament to your foolishness| that some things are not meant to be overcome.";
    }
else{
    text[0]="TOR: Human, don't thank me yet. You must've seen the acid rain outside, the landscape blasted asunder. This is an Alpha Struck planet, and rebuilding it may be impossible. I spared you for two reasons| if Origin survives, consider it a gift for being the";
    text[1]="first to ever stand up to the Army. Secondly, your mindset - that na&ve pacifism that should have gotten you killed by now - somehow, I admire it. Yet if the planet dies, it will be for nothing, and that's what's likely to happen.";
    }
outline=4;
pages=2;}
if (global.textid=="cut806_2"){
if (global.totkills>10*global.neutralkc)
    text[0]="IJI: You, you think we'll all die? You spared us just to make an example?";
else
    text[0]="IJI: You, you think we'll all die? You spared us, even though that's what you think will happen?";
outline=1;
pages=1;}
if (global.textid=="cut806_3"){
text[0]="TOR: No - to give you a chance. But that one chance is all you get. Remember that. Now tell me, how many of your kind survived here? How much of the natural life remains?";
outline=4;
pages=1;}
if (global.textid=="cut806_4"){
text[0]="IJI: Ah| not a whole lot, I think.";
outline=1;
pages=1;}
if (global.textid=="cut806_5"){
text[0]="TOR: Then, I assume that you don't have a home to return to?";
outline=4;
pages=1;}
if (global.textid=="cut806_6"){
text[0]="IJI: No|";
outline=1;
pages=1;}
if (global.textid=="cut806_7"){
if (global.specialtrigger1==1)
    text[0]="TOR: I see.";
else
    text[0]="TOR: I see. Human, I'm sorry about what happened to your friend.";
outline=4;
pages=1;}
if (global.textid=="cut806_8"){
text[0]="IJI: What?";
outline=1;
pages=1;}
if (global.textid=="cut806_9"){
text[0]="TOR: One of my Assassins, Asha, reported that he killed him during an attempt to capture you.";
outline=4;
pages=1;}
if (global.textid=="cut806_10"){
text[0]="IJI: Wh-What are you talking about? Dan is|";
outline=1;
pages=1;}
if (global.textid=="cut806_11"){
text[0]="TOR: |";
outline=4;
pages=1;}
if (global.textid=="cut806_12"){
text[0]="IJI: He's| dead?";
outline=1;
pages=1;}
if (global.textid=="cut806_13"){
text[0]="TOR: Hm. I was the same way once. Never mind what I said. It was a lie. Your friend is just fine.";
outline=4;
pages=1;}
if (global.textid=="cut806_14"){
if (global.totkills>10*global.neutralkc)
    text[0]="IJI: But|";
else
    text[0]="IJI: |";
outline=1;
pages=1;}

if (global.textid=="cut807_1"){
if (global.totkills>10*global.berserkkc){
    text[0]="TOR: As you have probably guessed, I'm tired of this. I'm tired of living with the knowledge of having killed more people than I can count, and I take full responsibility for what's happened to Origin. Iosa is dead| and the Tasen are gone. I don't believe";
    text[1]="in your future, so I don't want to live to see Origin die. But should there be more to your species than mere violence| only time will tell.";
    }
else{
    text[0]="TOR: You are a rare individual. Like Iosa, I can feel your inner workings just listening to your words, and I can't stand it. As you have probably guessed, I'm tired of this. I'm tired of living with the knowledge of having killed more people than I can";
    text[1]="count, and I take full responsibility for what's happened to Origin. Iosa is dead| and the Tasen are gone. I don't believe in your future, so I don't want to live to see Origin die. And if you can't return home| then neither shall I.";
    }
pages=2;
outline=4;
}

if (global.textid=="cut808_1"){
if (global.specialtrigger1==0 && global.kills+global.totkills>10*global.neutralkc)
    text[0]="IJI: Dan|";
else
    text[0]="IJI: General? Hello?";
outline=1;
pages=1;}


//CUTSCENE 9: SILENCE
//No dialogue


//CUTSCENE 10: VICTORY
//No dialogue


//CUTSCENE 11: HUMILIATED

if (global.textid=="cut1101_1"){
text[0]="BERSERKER: Annihilator Iosa! Are you alright?";
outline=4;
pages=1;}
if (global.textid=="cut1101_2"){
text[0]="IOSA: Gh| bring me my gun. I'm going to recharge my Nanofield.";
outline=4;
pages=1;}
if (global.textid=="cut1101_3"){
text[0]="BERSERKER: What? But Generation 2 Nanoweapons are illegal in engagements with -";
outline=4;
pages=1;}
if (global.textid=="cut1101_4"){
text[0]="IOSA: Bring me my gun. And not a word of this to General Tor. Understood?";
outline=4;
pages=1;}
if (global.textid=="cut1101_5"){
text[0]="BERSERKER: Yes, Annihilator!";
outline=4;
pages=1;}

if (global.textid=="cut1102_1"){
text[0]="IOSA: That human will PAY.";
outline=4;
pages=1;}


//CUTSCENE 12: EYE FOR AN EYE
if (global.textid=="cut1201_1"){
text[0]="TOR: Annihilator Iosa! I ordered you to -";
outline=4;
pages=1;}
if (global.textid=="cut1201_2"){
text[0]="IOSA: Careful, General. Live broadcast, remember? Now, let's return to orbit. You have an Alpha Strike to approve.";
outline=4;
pages=1;}
if (global.textid=="cut1201_3"){
text[0]="TOR: Hrrm!";
outline=4;
pages=1;}

if (global.textid=="cut1202_1"){
text[0]="IOSA: Or do you intend to say that the Anomaly's actions moved you? Perhaps that you planned to call off the Strike from the very beginning?";
outline=4;
pages=1;}
if (global.textid=="cut1202_2"){
text[0]="TOR: Don't put those words into my mouth! Besides, the order to fire is given by both me and General Kiron!";
outline=4;
pages=1;}
if (global.textid=="cut1202_3"){
text[0]="IOSA: Unless one of you is either dead or deemed unfit. Of course.$";
outline=4;
pages=1;}
if (global.textid=="cut1202_4"){
text[0]="TOR: Is that a threat? You can't be serious!";
outline=4;
pages=1;}
if (global.textid=="cut1202_5"){
text[0]="IOSA: The reports may say that the Tasen are extinct, but we both know that can't be true. The only reason you would hold back now is either to spare those low-life humans, breathing their last on a dying planet, or to willingly disobey High Command and let";
text[1]="the Tasen live. Do you know what that is called? Treason.";
outline=4;
pages=2;}
if (global.textid=="cut1202_6"){
text[0]="TOR: |";
outline=4;
pages=1;}
if (global.textid=="cut1202_7"){
text[0]="IOSA: Don't be a fool. Either stay here and die, or return to orbit with me and end the war you hate so much. The choice is yours.";
outline=4;
pages=1;}

if (global.textid=="cut1203_1"){
text[0]="KIRON: Your orders, General Tor?";
outline=4;
pages=1;
with (obj_cutdoll){
    if (target==1){
        style=0;
        visible=0;
        }
    if (target==2)
        style=4;
    }
}
if (global.textid=="cut1203_2"){
text[0]="TOR: Kiron! What Iosa said isn't true. I was prepared to Alpha Strike Origin as soon as we discovered the Tasens' presence!";
outline=4;
pages=1;
with (obj_cutdoll){
    if (target==1)
        style=4;
    if (target==2){
        style=0;
        visible=0;
        }
    }
}
if (global.textid=="cut1203_3"){
text[0]="KIRON: |Is that your honest reply?";
outline=4;
pages=1;
with (obj_cutdoll){
    if (target==1){
        style=0;
        visible=0;
        }
    if (target==2)
        style=4;
    }
}
if (global.textid=="cut1203_4"){
text[0]="TOR: What do you mean?";
outline=4;
pages=1;
with (obj_cutdoll){
    if (target==1)
        style=4;
    if (target==2){
        style=0;
        visible=0;
        }
    }
}
if (global.textid=="cut1203_5"){
text[0]="KIRON: There's no reason to play the fool anymore. I've already surpressed Iosa's broadcast and sent a notification to High Command of her refusal to follow orders - as well as threatening a General - with her own words as evidence. I hereby demote her";
text[1]="to Trooper rank, with further punishment pending her return to Tadezocora.";
outline=4;
pages=2;
with (obj_cutdoll){
    if (target==1){
        style=0;
        visible=0;
        }
    if (target==2)
        style=4;
    }
}

if (global.textid=="cut1204_1"){
text[0]="IOSA: WHAT!? Are you insane!?";
outline=4;
pages=1;}
if (global.textid=="cut1204_2"){
text[0]="KIRON: Mind your words, former Annihilator! The only judgment I trust belongs to Tor. After all, we are the ones in control here. Not you.";
outline=4;
pages=1;}
if (global.textid=="cut1204_3"){
text[0]="IOSA: GHH! And you intend to spare this backwater planet as well? Why would our troops EVER agree to that, not to mention HIGH COMMAND!?";
outline=4;
pages=1;}
if (global.textid=="cut1204_4"){
text[0]="KIRON: Take a good look at yourself before asking that! The sole reason I am personally hesitating to Strike Origin is because of YOU constantly overstepping your boundaries! I see no future after a war that ended with the total annihilation of the";
text[1]="enemy. I see a world where people like you would continue to believe that's how peace is achieved! General Tor, the final decision rests with you. What are your thoughts?";
outline=4;
pages=2;}

if (global.textid=="cut1205_1"){
text[0]="TOR: It is as you say. Our mission is over. With the Tasen gone, the number of internal wars will soon increase. This is indeed the time for peace, and letting the humans live is the first step towards that. No matter whether our troops will accept this -";
text[1]="no matter whether another fleet will come back to wipe Origin clean in the future - at least I made my stand.";
outline=4;
pages=2;
with (obj_cutdoll){
    if (target==1)
        style=4;
    if (target==2){
        style=0;
        visible=0;
        }
    }
}
if (global.textid=="cut1205_2"){
text[0]="KIRON: |I had a feeling you would go this far.";
text[1]="Fine - I'm calling off the Alpha Strike. Return to lower orbit as soon as possible| but we must both be prepared to face the consequences.";
outline=4;
pages=2;
with (obj_cutdoll){
    if (target==1){
        style=0;
        visible=0;
        }
    if (target==2)
        style=4;
    }
}
if (global.textid=="cut1205_3"){
text[0]="TOR: Understood. End of transmission.";
outline=4;
pages=1;
with (obj_cutdoll){
    if (target==1)
        style=4;
    if (target==2){
        style=0;
        visible=0;
        }
    }
}

if (global.textid=="cut1206_1"){
text[0]="TOR: I see your thoughts. Kill me if you wish.";
outline=4;
pages=1;}

if (global.textid=="cut1207_1"){
text[0]="TOR: I have no regrets.";
outline=4;
pages=1;}



//CUTSCENE 13: REVOLUTION



//CUTSCENE 14: DESPERATION

if (global.textid=="cut1401_1"){
text[0]="IJI: Hhh| hhh| no mercy, not for the likes of you!";
outline=1;
pages=1;}
if (global.textid=="cut1401_2"){
text[0]="KIRON: Tor, it's Kiron! Respond, General Tor! Your readings are| no| NO!";
outline=4;
pages=1;
with (obj_cutsabot)
    scr_music("mus_dark");
with (obj_cutdoll){
    if (target==2)
        style=4;
    }
}
if (global.textid=="cut1401_3"){
text[0]="IJI: Who's there? I killed your boss already, go home!";
outline=1;
pages=1;
with (obj_cutdoll){
    if (target==2){
        style=0;
        visible=0;
        }
    }
}
if (global.textid=="cut1401_4"){
text[0]="KIRON: What? Is that the Anomaly!? You -";
outline=4;
pages=1;
with (obj_cutdoll){
    if (target==2)
        style=4;
    }
}
if (global.textid=="cut1401_5"){
text[0]="KIRON: YOU! HUMAN TRASH! HOW COULD YOU HAVE DONE THIS!?";
outline=4;
pages=1;}

if (global.textid=="cut1402_1"){
text[0]="IJI: Wha -";
outline=1;
pages=1;}
if (global.textid=="cut1402_2"){
text[0]="KIRON: Tor, I knew it! He tried to test you, he TRIED to see if there was hope for you, but NO. Your species is pathetic! Not even on the brink of DEATH would you think twice about killing the one man who was willing to reason with you!";
text[1]="Iosa was right, you're nothing worth saving! YOU'VE NO RIGHT INFESTING ORIGIN!";
outline=4;
pages=2;}
if (global.textid=="cut1402_3"){
text[0]="IJI: N, no, no, NO! I -";
outline=1;
pages=1;}
if (global.textid=="cut1402_4"){
text[0]="KIRON: STRIKE COMMAND, YOU HEARD IT ALL!";
outline=4;
pages=1;}

if (global.textid=="cut1403_1"){
text[0]="KIRON: FIRE!!!";
outline=4;
pages=1;
with (obj_cutsabot)
    scr_stopmusic();
}


//CUTSCENE 15: PURGE
//No dialogue
