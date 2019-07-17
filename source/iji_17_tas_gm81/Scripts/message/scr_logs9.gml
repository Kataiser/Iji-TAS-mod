obj_iji.startmusics=0;

//Logs in Sector 9
if (global.textid=="text901"){
text[0]="Author: Tasen Soldier IF5737:IHBA#$#Subject: I'm not even gonna try";
text[1]="Yep. This is the end, alright. One little ventilation shaft or something, and a couple of pulsecycles until they find me, collector's hot drink cans and all. Now tell me, when did we ever NOT see this coming? The Komato have grown so huge, their";
text[2]="leaders take orders from the people. And what are people? Intelligent and reasonable? I once liked General Tor, you know, back before the negotiations with Hel Sarie went sour becuase of the Imperial Army. He looked like the only one who knew what";
text[3]="`empathy` even maent, which would be funny if it wasn't true. It's lkie, `Hey Naotgerai, did you see the latest war debaet?` And I'm like, `No, I was too busy kepeing the Komato from koncking over my stack of Supernova bars while attempting to";
text[4]="kill me.` They should at least have had the dececny to tell us they were sireous before attcaking";
text[5]="Alright, that's it. I need to tlel them to stop blowing the palce up because I can't tpye worth ZENTRAIDON in htis shaking.";
pages=6;}

if (global.textid=="text902"){
text[0]="Author: Komato Trooper 72823-00994-78232#$#Subject: Annihilator Iosa";
text[1]="Not only are we fortunate enough to have Annihilator Iosa on the fleet, she went down in person as soon as we landed to conduct a demonstration on how to get things done. I've heard all sorts of stories about this woman, and I don't doubt a single one of";
text[2]="them. Her Nanofield aside, she's not a hero like the ones we had before - she takes care of her troops instead of intimidating them into following orders.";
pages=3;}

if (global.textid=="text903"){
text[0]="Author: Tasen Commander TI820:AOSS#$#Subject: Last stand";
text[1]="The casualty reports have silenced. The connection with every single base around the colony has been lost. Since we didn't have much time to expand before the Komato arrived, it was all over pretty quickly. In this little shelter we may have gathered the";
text[2]="last few Tasen alive| perhaps the last few Tasen in the universe. This is no time to panic, so we've kept calm. Our only hope is that they somehow decide against Alpha Striking us. In other words, we're all dead.";
pages=3;}

if (global.textid=="text904"){
text[0]="Author: Tasen Elite TU472:WNEE#$#Subject: Too quiet";
if (global.specialtriggerc){
text[1]="So far we've defended our little base pretty well, considering we're only about ten people in here. It's been too quiet though. The Komato assault teams have retreated, so they're either getting ready to send a massive attack force in, or they've";
text[2]="succeeded in destroying the planetary shield generators and are preparing the Alpha Strike.";
pages=3;
}
else{
text[1]="So far we've defended our little base pretty well, considering we're only about ten people in here. It's been too quiet though. The Komato assault teams have retreated, so they're either getting ready to send a massive attack force in, or they've";
text[2]="succeeded in destroying the planetary shield generators and are preparing the Alpha Strike. That Soldier we brought keeps talking about her girlfriend and the Human Anomaly, too| speaking of which, we never found out if the Anomaly was on our side or";
text[3]="not. With Krotera killed and the Komato alerted, I'd say NO.";
pages=4;
}
}

if (global.textid=="text906"){
text[0]="Author: Komato Imperial Research#$#Subject: Banana gun";
text[1]="The Banana gun uses one each of the standard Tasen and Komato ammunition units, and also requires that the user's Nanogun is equipped with 8 Nanoweapons, not counting combined ones. Attempting to recreate this weapon is illegal, as is placing";
text[2]="one of its explosive bananas in the favorite dessert of an unsuspecting victim, commonly known as one of the most creative ways to face military law, and one of few forms of murder falling under the category of `Fruit-Assisted`.";
pages=3;}

if (global.textid=="text907"){
text[0]="Author: Tasen Elite OS988:MCMX#$#Subject: Status report";
text[1]="Most doors in our little base have been upgraded to bulkhead class. They're impossible to bypass, and only open manually from the inside. We're stocked up well on supplies and weaponry, so we're prepared for anything short of an Alpha Strike.";
text[2]="Actually, it sounds like another Komato assault team is coming. Hehe. I never get tired of blasting Koma";
if (global.specialtriggerc)
    pages=2;
else
    pages=3;
}

if (global.textid=="text908"){
text[0]="Author: Tasen Commander RI201:LCOI#$#Subject: Rumors";
text[1]="I hope it's just a rumor that they've knocked out the last planetary shield generator| you're not gonna stop an Alpha Strike with a bomb shelter, much less the remains of this primitive human building we're trapped in.";
pages=2;}

if (global.textid=="text909"){
text[0]="Author: Tasen Soldier KG111:PAIE#$#Subject: WHY";
text[1]="Dear logbook, maybe I could sort out my feelings if I wrote them down| when we found out that we were the last surviving colony, I was forced to join the army together with my girlfriend. I was separated from her during the squad setup, and she ended up";
text[2]="under Elite Krotera's command, stationed to defend the lift to his room in Sector 3. She used to joke about how she was alone, surrounded by weapons and ammunition but with no Komato to shoot at. My hope never wavered when we lost contact| but now the";
text[3]="casualty report's in and she was KILLED BY THE HUMAN ANOMALY! I'm sorry, I don't know what to type. I don't know what to feel anymore. I even heard that the human was the one who brought the Komato here. The adults say we're gonna die now, but I feel";
text[4]="safe here with you.";
pages=5;}

if (global.textid=="text910"){ //REMOVED
text[0]="Author: Komato Berserker 89642-60928-18072#$#Subject: Iosa is not emotionless";
text[1]="I don't care for complainers, so I stick with Annihilator Iosa. Isn't it for the better to destroy the crippled, futureless civilization here on Origin, caught in the wake of the Tasens' mindless path to escape us? Those traitorous parasites";
text[2]="should've given up long ago. Just as predicted, we've succeeded in locating their final outpost, and they have nowhere left to run. All this death, including the annihilation of Origin, could have been prevented had the Tasen agreed to organized";
text[3]="termination right from the start! And the idealist bastards who scream for peace, what do they expect us to do? Reform societies and cultures spanning hundreds of planets? Accept the Tasen into our fold like nothing ever happened?";
pages=4;}

if (global.textid=="text911"){
text[0]="Author: Tasen Commander TI646:DFAJ#$#Subject: Top secret";
text[1]="We abandoned research of Sector Z long ago. For fear of anyone ever finding out about that place, we sealed up the wall to the research room. But which wall, I don't remember| somewhere in a lift tunnel in Sector 1, next to a teleporter destination pad.";
text[2]="No-one will EVER find it. No-one without a Rocket launcher, at least.";
pages=3;}

if (global.textid=="text912"){
text[0]="Author: Komato Berserker 09515-42340-88510#$#Subject: Damn we rule";
text[1]="The Tasen are running out of troops so fast, it's not even funny! We're obliterating them! The only Tasen left are probably the ones in that defensive base they built up ahead. Do they seriously think they'll survive for more than a cycle? We're";
text[2]="gonna Strike the biosphere out of Origin and broadcast it live on the all-wide feed, together with the execution of the human-#loving troops who started cropping up as soon as we landed. We're an ARMY - we're here to do our job, not question our superiors!";
pages=3;}

if (global.textid=="text913"){
text[0]="Author: Komato Assassin 06760-76850-25912#$#Subject: The Anomaly's out of our league";
text[1]="So far, not a single Assassin has managed to kill the Anomaly, not even Asha. She's officially the most dangerous enemy on the planet; why anyone would rather confront her than run at this point is beyond me. Ansaksie seems to think the same, she's got";
text[2]="a group of Assassins separated from Asha and order them around like she's their superior. The only thing saving them from accusation of treason is that Asha doesn't seem to care anymore. And what's up with General Tor? It's like he didn't even want";
text[3]="this planet purged. He needs to make up his mind, either you kill all the Tasen, or you wimp out and decide to spare a few because they're no longer a threat. Really, consider what the Army would think of that. Forget Assassin Ansaksie, General Tor's the one";
text[4]="who's living on the edge here.";
pages=5;}

if (global.textid=="text914"){
text[0]="Author: Komato Trooper 69721-43659-34782#$#Subject: Damn it";
text[1]="There's this heavily fortified Tasen base below, and we've had no luck busting it, especially since the Assassins are all leaving. The Berserkers all used up their teleportation charges when we arrived, too. The last group of Troopers who tried to storm";
text[2]="their base counted to five Elites, four Commanders, and at least one Soldier who could barely hold a gun. None of them were killed, but some of the Troopers were. Damn, who sacrifices themselves when we're gonna Alpha Strike this dump anyway?";
text[3]="We've won, the war is over! Time to go home and enjoy the sweetest victory in history, damnit!";
pages=4;}

if (global.textid=="text915"){
text[0]="Author: Tasen Soldier KG111:PAIE#$#Subject: I'm so happy!";
text[1]="Dear logbook, Maeja just called me| she's alive!!! I knew it! I knew it all along! Now we'll meet up and hide where the Komato will never, ever find us. We'll run far from this place, even outside the colony borders to find some humans to help us. When";
text[2]="this is all over, I'll make sure to find the Human Anomaly and thank her for sparing my girlfriend. Yes, she saw her - but she didn't kill her. I don't know why, but Maeja said that the human's eyes looked sad as she headed up to Krotera's room| as";
text[3]="if she, too, didn't really want to fight anyone. Someone said that our defense base was the final Tasen outpost, and when it's destroyed, we would be extinct. But maybe, just maybe, the human will stop the Komato before they Alpha Strike us. Wouldn't that";
text[4]="be nice? A planet for Maeja and me. I'm sure we could live together with the surviving humans. I guess that's why I'm happy| 'cause I'm alive against these impossible odds. Well, time to go!";
pages=5;}

if (global.textid=="text917"){
text[0]="Author: Komato Trooper [NO IDENTIFICATION]#$#Subject: Reply: The Nuke";
text[1]="Craxmasta, I finally got ahold of NanoBitSplit's old logbook, and it has some interesting details about the stuff he cracked but lost the backups for. The `Nuke` carried by Sentinels is indeed of Tasen origin, but it gets better - it's a combination of a";
text[2]="Rocket launcher and MPFB Devastator, meaning you would be able to crack one yourself if you could get your hands on those Nanoweapons. Just replace all opcodes 26 with 89 in field 1480 of prime 5C, and all 5 with 4, and the safety catches will do the";
text[3]="rest. Easy huh? Battling with the Nanogun safety algorithms has become less of a chore and more of a pleasure lately, and eventually we'll master it completely. Military information needs to be free if we're ever gonna stand on equal ground without";
text[4]="the Imperial Weapon Industries selling us these weapons at ridiculous prices. Man I hate their commercials. Power to the Troopers! OmnikrakR out.";
pages=5;}

if (global.textid=="text918"){
text[0]="Author: Tasen Soldier OE230:JOOJ#$#Subject: Anomaly!";
text[1]="It's me, Vateilika! Remember me? The truce? My little shop? All that stuff? Wouldn't you know, after getting outta that Komato ship my friend called me and told me about a defense base they were setting up around here, so I made a run for it and met up";
text[2]="with her. Turns out she was just about to escape from that little base to see her girlfriend or something, so I went with her - no point hanging 'round getting stomped by the Komato, you know? I'm glad I met you, anyway. Wherever you're going next, we'll be";
text[3]="rooting for you. Go get 'em Komato bastards, alright!";
pages=4;}

if (global.textid=="text919"){
text[0]="Author: Komato Assassin 02384-56102-37456#$#Subject: Retreat, regroup, relax";
text[1]="You know what I think about it already. Asha's a loon and I don't see a single one of us sticking to him now, but let's not push our luck. Let's all meet up and wait out the orders to head back to lower orbit. As always, if you start taking heavy damage";
text[2]="then just make a run for it. This has always been our tactic, so stick to it. I don't want to lose any of you.";
pages=3;}

if (global.textid=="text920"){
text[0]="Author: Komato Annihilator Iosa#$#Subject: Doing my part";
text[1]="My homeworld was not the peaceful colony it was often made out to be. We trained and sent troops to war like anyone else. I used to hate the Army and stayed out of it for as long as possible, as I believed that responding to violence with more violence would";
text[2]="lead Komatokind nowhere. But as those who refused to enlist were sentenced to prison, I eventually joined to save my own skin. In hindsight, I was a fool. I did not become Immortal to stand on the sidelines and pretend that everything was fine. I could no";
text[3]="longer sit idly by while the Tasen slaughtered my people without pause or mercy.";
pages=4;}

if (global.textid=="text921"){
text[0]="Author: Komato Annihilator Iosa#$#Subject: Doing my part";
text[1]="My homeworld was not the peaceful colony it was often made out to be. We trained and sent troops to war like anyone else. I used to hate the Army and stayed out of it for as long as possible, as I believed that responding to violence with more violence would";
text[2]="lead Komatokind nowhere. But as those who refused to enlist were sentenced to prison, I eventually joined to save my own skin. In hindsight, I was a fool. I did not become Immortal to stand on the sidelines and pretend that everything was fine. I could no";
text[3]="longer sit idly by while the Tasen slaughtered my people without pause or mercy.";
pages=4;}

if (global.textid=="text922"){
text[0]="Author: Komato Assassin [NO IDENTIFICATION]#$#Subject: -";
if (global.totkills>8*global.neutralkc && global.totkills<=9*global.neutralkc && global.specialtrigger2==1){
    text[1]="Anomaly, the time has come. You must kill the one stationed at the end of this Sector. I'd aid you in person, but considering your reputation, I'm not sure I trust you not to put a bullet in my back as well. If you want to earn that trust, it's not too";
    text[2]="late - all you have to do is kill as few people as possible before you reach Deep Sector. Good luck.";
    pages=3;
    }
else if (global.totkills>8*global.neutralkc && global.specialtrigger2==1){
    text[1]="Anomaly, the time has come. You must kill the one stationed at the end of this Sector. I'd aid you in person, but considering your reputation, I don't trust you not to put a bullet in my back as well. Again - you must kill the one at the end of this";
    text[2]="Sector. Good luck.";
    pages=3;
    }
else if (global.specialtrigger2==0){
    text[1]="Anomaly, the time has come. You must kill the one stationed at the end of this Sector. Due to circumstances beyond my control, I cannot help you in person. Good luck.";
    pages=2;
    }
else{
    text[1]="Anomaly, the time has come. Meet me in Deep Sector. I will tell you more there.";
    pages=2;
    }
}

if (global.textid=="text923"){
text[0]="Author: Komato Assassin [NO IDENTIFICATION]#$#Subject: -";
if (global.totkills>8*global.neutralkc && global.totkills<=9*global.neutralkc && global.specialtrigger2==1 && global.kills+global.totkills>9*global.neutralkc){
    text[1]="I told you not to kill anyone. Clearly I cannot trust my back to you. I'm not about to blow my cover for your sake, so I suggest you leave immediately before things become unpleasant.";
    pages=2;
    }
else if (global.kills+global.totkills<=9*global.neutralkc){
    text[1]="Glad you could make it. If you'd like the opportunity to kill someone important, then keep heading deeper into this place and I will aid you in person.";
    pages=2;
    }
else if (global.totkills<=8*global.neutralkc){
    text[1]="I changed my mind. Someone as mindless as you would only cause me trouble. I suggest you leave immediately before things become unpleasant.";
    pages=2;
    }
else{
    text[1]="You are not supposed to be here. I'm not about to blow my cover for your sake, so I suggest you leave immediately before things become unpleasant.";
    pages=2;
    }
}
