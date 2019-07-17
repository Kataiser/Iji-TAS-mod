obj_iji.startmusics=0;

//Logs in Sector 4
if (global.textid=="text401"){
text[0]="Author: Tasen Commander SP635:MOTM#$#Subject: I knew it";
text[1]="It's some kind of cruel justice. First we Alpha Strike this place, now it turns out to be Origin - of all planets. Then we realized it messed up the atmosphere more than any previous low-power Strike. It's too early to tell if the planet will";
text[2]="actually recover now, but hey, I like to stay optimistic. Whatever doom we're heading into, I just hope it'll be the swiftest one. I'd rather see Origin sucked into a star than the Komato finding out what we did to this place|";
pages=3;
obj_iji.mistrustkomato+=1;}

if (global.textid=="text402" && global.totkills>15){
text[0]="Author: Tasen Soldier IY998:PTOS#$#Subject: Elite Krotera is dead!";
text[1]="Sure, I couldn't stand the guy, but I never thought this'd happen. I heard the Human Anomaly blew Krotera up real good. She probably didn't even know it was Krotera| he was just an Elite like anyone else. I've been wondering why we just don't try to";
text[2]="talk to the human, or why she doesn't approach us peacefully, because I doubt she works for the Komato. It's probably because we're all under shoot-to-kill orders, where the few who actually stop to think don't survive for long. Not to mention that we";
text[3]="`adjusted` her homeworld thanks to Krotera's permanent power trip. Maybe she does this because she doesn't have a choice, not because she actually wants to. At least that makes her different from Iosa the Invincible|";
pages=4;
obj_iji.mistrustkomato+=1;}
if (global.textid=="text402" && global.totkills<=15){
text[0]="Author: Tasen Soldier IY998:PTOS#$#Subject: Elite Krotera is dead!";
text[1]="Sure, I couldn't stand the guy, but I never thought this'd happen. I heard the Human Anomaly blew Krotera up real good - but considering he's pretty much the only one she's killed, I'd sooner believe it was Vateilika and her gang who got to him";
text[2]="first. Still, I wouldn't trust the Anomaly not to go all kinds of crazy once she realizes what we did to her homeworld. Worst case scenario, we've got the next Iosa the Invincible walking among us|$";
pages=3;
obj_iji.mistrustkomato+=1;}

if (global.textid=="text403"){
text[0]="Author: Tasen Scout UT827:IFOP#$#Subject: Whoa";
text[1]="Man, that was close! That Human Anomaly ran right past the room I was guarding on duty back in Sector 2. Probably was this close to getting my head blown off| yeah. Better make sure to tell Commander of this, maybe I'd even get bonus pay!";
pages=2;}

if (global.textid=="text404"){
text[0]="Author: Tasen Soldier GI573:JGJS#$#Subject: Communicator control";
text[1]="Someone figured we should protect the communicator access terminals better - we can't risk traitors or the Anomaly trying to mess with them. A surprise awaits anyone trying to boot up the Reactor powering the communicator without permission. Krotera's";
text[2]="orders, and we all still follow them.";
pages=3;}

if (global.textid=="text405"){
text[0]="Author: Tasen Elite VN400:GVOA#$#Subject: This is no power struggle";
text[1]="Let's get it straight - Krotera is dead, and Elites all over this place jumped at his position like a pack of Blits. If these upstarts think they can replace such an honorable and intelligent individual without any leadership training, they'll just become";
text[2]="like the rest. Remember that Komato General who sent a squad to Ciretako accompanied by an Annihilator, just because he'd get kicked out of the Imperial Army if he refused? They all died within minutes. Everyone knows what Ciretako is famous for. So";
text[3]="remember, those of you too self-centered to care about the death of one of our greatest leaders - this is about the survival of the Tasen race.";
pages=4;
obj_iji.mistrustkomato+=1;}

if (global.textid=="text406"){
text[0]="Author: Tasen Commander OA576:POUE#$#Subject: Our safety is assured";
text[1]="You've read the latest security report, people. The Komato are getting closer. Fleet 1089 did send a small scout team here, which entered the lower atmosphere before we shot them down, and three Troopers managed to infiltrate this building. They";
text[2]="carried no communication equipment, so it must have been destroyed when we hit their ship. We used the communicator to send a faked report to the General of their fleet, and I must say we did an extremely good job. If they suspected anything they'd";
text[3]="have sent more teams, but none have arrived. There is absolutely nothing that can blow our cover now. The only threat left around here is that `Human Anomaly` - speaking of which, why in the name of Elem Sioz hasn't anyone taken her out yet!? Krotera's death";
text[4]="was a wake-up call! Who knows where she'll strike next?";
pages=5;}

if (global.textid=="text407" && global.totkills>15){
text[0]="Author: Tasen Soldier KE062:MRKS#$#Subject: Unofficial threat list";
text[1]="So here are the four main threats, as established by my squad and chosen by a healthy balance between voting and arm-wrestling:";
text[2]="1. The entire Tasen race being killed by that `Human Anomaly`. Seriously, have you ever seen her run out of ammo? Frightening. At least the other humans die in one shot.";
text[3]="2. The Blits nibbling us to gooey pulps of Nano. Sure we can catch them in jars and launch them into orbit, but that doesn't mean the little bastards are actually dead until they starve and turn into tiny clumps of| whatever it is, it's not recyclable.";
text[4]="3. The Komato finding us here. The only reason we list this as number 3 instead of 4 is because the Human Anomaly could be working for them. Then again, they'd have nuked us into molecules by now if that were true.";
text[5]="4. The hot drink dispensers running out of triple composite alloy mugs. Do they have any idea what kind of temperatures those mugs can endure? They plate Komato Sentinels with that stuff. I want my drinks HOT, damn it. You haven't experienced real taste";
text[6]="until you couldn't tell if you were having a drink or being shot in the face with a Plasma cannon.";
pages=7;
obj_iji.mistrustkomato+=1;}
if (global.textid=="text407" && global.totkills<=15){
text[0]="Author: Tasen Soldier KE062:MRKS#$#Subject: Unofficial threat list";
text[1]="So here are the four main threats, as established by my squad and chosen by a healthy balance between voting and arm-wrestling:";
text[2]="1. The `Human Anomaly` assimilating so much of our ammunition that she grows her own gravitational field, atmosphere, solar system, and eventually collapses into a black hole. Seriously, have you EVER seen her run out of ammo for that Nanogun?";
text[3]="2. The Blits nibbling us to gooey pulps of Nano. Sure we can catch them in jars and launch them into orbit, but that doesn't mean the little bastards are actually dead until they starve and turn into tiny clumps of| whatever it is, it's not recyclable.";
text[4]="3. The Komato finding us here. The only reason we list this as number 3 instead of 4 is because the Human Anomaly could be working for them. Then again, they'd have nuked us into molecules by now if that were true.";
text[5]="4. The hot drink dispensers running out of triple composite alloy mugs. Do they have any idea what kind of temperatures those mugs can endure? They plate Komato Sentinels with that stuff. I want my drinks HOT, damn it. You haven't experienced real taste";
text[6]="until you couldn't tell if you were having a drink or being shot in the face with a Plasma cannon.";
pages=7;
obj_iji.mistrustkomato+=1;}

if (global.textid=="text408"){
text[0]="Author: Tasen Scout GV235:GJSS#$#Subject: Nyagh!";
text[1]="Why must life be so cruel? I swear there's a way to get into the blocked part of this place. It's just on the other side of this wall! What's so important to keep in there anyway? Bet it's one of those well-hidden| things| you know, one of those. One in";
text[2]="every Sector, isn't there? No, actually I have no idea what I'm talking about right now.";
pages=3;}

if (global.textid=="text409"){
text[0]="Author: Tasen soldier QL592:BKPS#$#Subject: Only one thing on their minds";
text[1]="So we're down to our last colony. Who cares? Security report says we've just managed to outsmart the Komato, so we're as safe as can be. Those bastards have hunted us through so many solar systems you'd think they've made it some kind of game - and to";
text[2]="them EVERYTHING is a game, ever heard of that Hyper Turret one? - and it's not like their motives are any better. They're not trying to end some war that should never even have started, this is plain genocide, always been.";
pages=3;
obj_iji.mistrustkomato+=1;}

if (global.textid=="text410"){
text[0]="Author: Tasen Center of Information#$#Subject: Security report (Shortened version)";
text[1]="Starturn 6043 Turn 314#Cycle 05: The Komato scout team that was shot down on turn 312 was discovered. They carried no communication equipment; it was most probably destroyed as their vessel was crippled. The Tasen";
text[2]="spy team did not engage the Komato; it would have been an unnecessary risk at that point.";
text[3]="Cycle 06: A faked report was sent to the nearest Komato fleet on behalf of the scout team, using our communicator, to conceal our actions and presence on Origin. The report read:";
text[4]="`To General Tor, Fleet 1089 Tier 60#Komato Trooper 06712-07892-30144#We have found no trace of the Tasen on Origin. However, upon entering the lower atmosphere, we had a reactor core";
text[5]="malfunction and our ship crashed. Three of us survived, but we are heavily damaged. We will not survive the evening. I suppose we can call this mission a success, as we did manage to find out through standard global scanning that the Tasen do not occupy";
text[6]="this planet. End of transmission.`";
text[7]="Cycle 06: It appears that the General of the Komato fleet was fooled by our fake report, otherwise there would be immediate action taken. Our safety is assured.";
if (global.specialtriggerb2)
    text[8]="Cycle 09: The Human Anomaly has eliminated Elite Krotera. It appears she also engaged the Komato scout team in combat just prior to confronting Krotera, dispelling any suspicions that she could be working for them.";
else
    text[8]="Cycle 09: The Human Anomaly has eliminated Elite Krotera. She also didn't seem to kill anyone in the Komato scout team despite crossing their path, which may mean that she could be working for them.";
pages=9;
obj_iji.mistrustkomato+=1;}

if (global.textid=="text411"){
text[0]="Author: Tasen Scout TE496:DNTN#$#Subject: Tasty termination";
text[1]="We need to figure out a way to deal with the Anomaly before it's too late. We don't know where she came from, nor where she's heading. Since Nanoweapons obviously don't seem to work, how about bribing her with candy bars? You can't have enough of";
text[2]="those. We even found and busted like two hundred human-made food containers in this place, we're swimming in alien candy bars of all kinds of ridiculous flavors. Another suggestion is to upload some online computer game to her Nanofield, connected to the";
text[3]="Komatos' all-wide feed. At least she wouldn't bother us for a couple of starturns. Oh oh, how about that `Hero 3D` game Yukabacera hacked together? It's got 9 levels, and the game keeps getting harder until you beat it 242 times. Of course, nothing";
text[4]="happens if you do, but by then the Anomaly would be so zoned out we'd have the time to pick her up and put her in a display cage. Imagine her face when she snaps out of it and sees kids throwing her stale candy and cold drinks over a fence or something.";
text[5]="These are all good suggestions for dealing with the Anomaly, but I personally don't think that Scout who draws these crazy posters of her is helping much.";
pages=6;}

if (global.textid=="text412"){
text[0]="Author: Tasen Soldier HN205:BELW#$#Subject: The logbook";
text[1]="Alright, here are the contents of the stolen Komato logbook you requested. I know you're collecting them for research, but they just get creepier every time. Well, here it is:";
text[2]="Author: Komato Recreational Unit#$#Subject: Rocket jumping";
text[3]="The pioneers of `Rocket jumping` were not exactly volunteering for the job - raid parties simply found it hysterical to see how far a Tasen could fly when hit by their heaviest weapons. As usual, someone with the idea that anything can be turned into a";
text[4]="game came up with the rules that still form the basis of modern Rocket jumping. Like Hyper Turret Game or Ultra Minefield Run And Seek, the game is easy to learn. The contestant straps herself in full triple composite alloy armor, stands next to a specially";
text[5]="designed wall with her back to the scoring field, and fires the Nanoweapon of choice straight into the wall. The explosion catapults the contestant across the scoring area, with the goal being to fly as far as possible. Due to the heavy (and very";
text[6]="expensive) armor used, the contestant can usually walk away without any lethal injuries. In an attempt to make the game even more exciting, a variation on the theme is for the contestant to be launched into the air while another fires at her with an";
text[7]="explosive Nanoweapon from the ground. If the second contestant hits the first in mid-air, the explosion usually sends them so high and far that a search party has to be deployed. It is widely considered that the inventors of Rocket jumping were as brave";
text[8]="as they were stupid, but Komato Recreational Unit would not endorse such a statement.";
pages=9;
obj_iji.mistrustkomato+=1;}

if (global.textid=="text413"){
text[0]="Author: Tasen Soldier KJ009:MLAS#$#Subject: Spread rockets";
text[1]="Hey Yukabacera! I know you're there, your automated reply message is spitting scrambled opcodes at me, stop trying to crack your own logbook you freak. Anyway, got the latest news from the crew, they combined a Shotgun with a Rocket launcher and got - for";
text[2]="real - Spread rockets. Yeah, the same that's issued as heavy equipment. It's that easy! Get yourself one if you fancy some more explosive power in the next target range game. It's tournament legal, I promise. Hah! See you there.";
pages=3;}

if (global.textid=="text414"){
text[0]="Author: Tasen Soldier TM264:IALW#$#Subject: Increased security";
text[1]="Due to the extreme violence used by the Human Anomaly, she is now considered a great threat. Consequently, more troops have been stationed around important areas of this Sector. Remember: desertion is still treason.";
pages=2;}

if (global.textid=="text415"){
if (global.killdata[51]==1){
    text[0]="Author: Tasen Soldier IF5737:IHBA#$#Subject: Pulse linker";
    text[1]="Hey, hey, Vateilika, what's going on? I haven't heard from you since the Anomaly went through Sector 3. Don't tell me Krotera found you out? Anyway, about the Pulse linker - while it seems like it uses a stupid amount of ammo for how little Nano it";
    text[2]="drains from other people's Nanofields, it actually depends on who your target is. Commanders, and especially Elites, have denser Nanofields than Scouts or Soldiers. Think of it this way - the more firepower you need to take someone down, the more Nano the";
    text[3]="Pulse linker's gonna earn you. Oh yeah, and your Attack stat increases the weapon's range. Now to figure out how to use it as stealthily as possible without my Commander noticing! Naotgerai out.";
    pages=4;
    }
else{
    text[0]="Author: Tasen Soldier IF5737:IHBA#$#Subject: Pulse linker";
    text[1]="Vateilika, about the Pulse linker - while it seems like it uses a stupid amount of ammo for how little Nano it drains from other people's Nanofields, it actually depends on who your target is. Commanders, and especially Elites, have denser Nanofields than";
    text[2]="Scouts or Soldiers. Think of it this way - the more firepower you need to take someone down, the more Nano the Pulse linker's gonna earn you. Oh yeah, and your Attack stat increases the weapon's range. Now to figure out how to use it as stealthily as";
    text[3]="possible without my Commander noticing! Naotgerai out.";
    pages=4;
    }
}
