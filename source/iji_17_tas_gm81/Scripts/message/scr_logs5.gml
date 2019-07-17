obj_iji.startmusics=0;

//Logs in Sector 5
if (global.textid=="text501"){
text[0]="Author: Tasen Soldier TU417:UCIA#$#Subject: They'll never get us";
text[1]="I told them it'd happen, and now it has! The Komato have found us, and are sending massive shock teams - we're just waiting for the rest of their fleet, complete with Beasts and Annihilators, but let them come! DEATH TO THE KOMATO!";
pages=2;}

if (global.textid=="text502"){
text[0]="Author: Komato Trooper 67012-93541-72497#$#Subject: Finally!";
if (global.specialtriggerc){
text[1]="Aw yeah! I knew this'd be an interesting turn when our scout team's report returned - it was just weird at first, but then General Tor said it was sent by the Tasen - THE TASEN! That's right, they're HERE! Three guesses what happens next - we shoot";
text[2]="them to pieces, blow up their planetary shield generators, then smash the place with a full-force Alpha Strike! Man, it doesn't get any better than this!";
}
else{
text[1]="Aw yeah! I knew this'd be an interesting turn when our fleet received a message from a human down on Origin - a HUMAN! What do you know, this is the Tasens' final outpost! Three guesses what happens next - we shoot them to pieces, blow up their planetary";
text[2]="shield generators, then smash the place with a full-force Alpha Strike! Man, it doesn't get any better than this!";
}
pages=3;}

if (global.textid=="text503"){
text[0]="Author: Komato Independent Newsprogram Archive#$#Subject: Ciretako incident, part 1";
text[1]="Reports have surfaced regarding a Tasen carrier ship named Ciretako, where a Komato platoon lost contact with its base. The first intriguing thing is that statistically, the invading Komato force was ten times more powerful than the Tasen crew aboard";
text[2]="the ship - something had gone wrong. An investigation team dispatched to Ciretako found half of the spaceship shot to pieces from the inside, and both the Tasen and Komato forces were found dead. Komato Imperial Research, responsible for the Ciretako";
text[3]="operation, refused to comment on the incident. The only reliable piece of information found suggests that they were `testing the new addition to the Komato army`. This may be related to the Annihilator, the latest and most powerful brand of cyborg -";
text[4]="after all, one such unit was part of the Komato assault team.";
pages=5;}

if (global.textid=="text504"){ //REMOVED
text[0]="Author: Komato Berserker 09867-16239-69811#$#Subject: Newsprogram archives";
text[1]="Who the Zentraidon brought these things along!? I'm not interested in some age-old news logs, and most of them concern Ciretako anyway. I'd rather spend my time wasting Tasen than reading worthless crap! Hey, we just entered lower orbit - you";
text[2]="know what I like best about the Berserker force? The limited teleportation you get free with the armor, that's what. Nothing like getting the jump on a pack of clueless Tasen!";
pages=3;}

if (global.textid=="text505"){
text[0]="Author: Tasen Soldier KG111:PAIE#$#Subject: NO!!!";
text[1]="Dear logbook, it's hard to type right now because the Komato are here!!! I've lost contact with Maeja, but I heard we're moving our troops under radio silence, and somehow I know she's okay. I'm moving deeper into the building with a whole squad of";
text[2]="adults, they're mostly Commanders and Elites, and they say they're going to hide and build a defensive base instead of trying to fight. I agree, we don't stand a chance if we try to take them on! But I swear I'll learn how to use my Rocket";
text[3]="launcher before we get there, I won't leave any Komato alive to get near my girlfriend!!!";
pages=4;
global.specialtriggerb1=1;}

if (global.textid=="text506"){
text[0]="Author: Komato Imperial Weapon Industries#$#Subject: Advertisement";
text[1]="The latest piece of Nano wonder to arrive on the market, the Pulse cannon is rapidly becoming a huge success! This slick dealer of neon-colored death will save your cyborg butt from any and all confrontations with the vile Tasen, and at a phenomenal";
text[2]="price as well - for only 60'000 Units, this sweet bundle of Nanotechnology will happily inflict unworldly pain on your hapless victims at the press of a button! Order your Pulse cannon TODAY and be the KING OF THE WORLD, or at least the local";
text[3]="cafeteria. (Komato Imperial Weapon Industries cannot be held responsible for personal injury, technical problems, or unwanted fiery death.)";
pages=4;}

if (global.textid=="text507"){
text[0]="Author: Komato Trooper 63466-26395-28054#$#Subject: Tasen Turrets";
text[1]="Those idiotic Tasen seem to have programmed the Turrets to scan for certain security codes in their Nanofield - since we decrypted those codes ages ago, and they STILL haven't updated them, there's not a single Turret in this colony that poses a";
text[2]="threat to us! It's like they're not even trying!";
pages=3;}

if (global.textid=="text509"){
text[0]="Author: Tasen Elite OV923:JGOE#$#Subject: TOP PRIORITY: Official Global Briefing";
text[1]="I'm making this quick - this briefing will be transmitted to all logbooks in the colony. The Komato have arrived, and here are the main threats we face:";
text[2]="1. Troopers: armed with burst Pulse cannons and Shocksplinter, can outpower a Tasen Soldier five to one. Very agile and sometimes carry Hyper pulse.";
text[3]="2. Berserkers: armed with Shocksplinter or Plasma cannons, able to teleport straight into the battlefield, trained in recovering from heavy explosions. They carry Resonance reflectors, so don't use your rockets or they'll end up in your face.";
text[4]="3. Assassins: They constantly teleport all over the damn place, using dual Plasma cannons and laser daggers. They carry auto-fire Resonance reflectors to boot, making rockets and any other kinds of projectile useless, and they can even dodge instant-hit";
text[5]="weapons and melee attacks depending on their skill. They always escape when heavily damaged, so we can't even kill them.";
text[6]="Alright, that's all. This may be Origin, but it's our planet now! DEATH TO THE KOMATO!";
pages=7;}

if (global.textid=="text510"){
text[0]="Author: Komato Informational Center#$#Subject: SUPER JUICE 5000";
text[1]="SUPER JUICE 5000 - the latest hip drink from Komato Imperial Research! SUPER JUICE 5000 is carefully manufactured in our finest orbital facilities and blasted on command at near-light speed to every corner of the known galaxy. Simply align your";
text[2]="planetary juice receivers to the SUPER JUICE 5000 facility of your choice prior to making your order, to avoid the incoming SUPER JUICE 5000 container punching a hole through your house. The SUPER JUICE 5000 recipe is top secret, but Komato Imperial";
text[3]="Research can proudly boast that it consists of 80% recycled heavy industry materials! Catering to everyone who likes their drinks hot - and who doesn't? - the SUPER JUICE 5000 container is also plated with triple composite alloy externally, and a Power";
text[4]="core-class heatgrid internally, allowing the container to heat itself up to 70'000 Zj when opened and still not obtain escape velocity from the resulting explosion! `SUPER JUICE 5000 - because it doesn't taste like battery acid at all!`";
pages=5;}

if (global.textid=="text512"){
text[0]="Author: Komato Trooper [NO IDENTIFICATION]#$#Subject: Reply: Resonance reflector";
text[1]="I know you're new, but this ain't really a secret. Resonance reflectors are simply a combination of a Tasen Shotgun and a Komato Resonance detonator. Just enter field 15 in prime 3C in the Nanogun, replace the 160th opcode with a 5 and you're set.";
text[2]="The safety catches trying to fix the resulting cascading error do the rest. Anyway, me and Craxmasta are working on the Hyper pulse, so check back with us later. Power to the Troopers! And don't call me a wannabe, this is the real deal. OmnikrakR out.";
pages=3;}

if (global.textid=="text513"){
text[0]="Following Krotera's orders, this door has been locked and can only be opened by the terminals on floor 9 and 6."
pages=1;
outline=3;}

if (global.textid=="text514"){
text[0]="Author: Komato Trooper [NO IDENTIFICATION]#$#Subject: Report: Passive weapons research"
text[1]="MPFB Neutralizer: Passive version of Tasen MPFB Devastator. Uses 3 MPFB ammo to stun everyone in a large radius. Attack stat dramatically increases stun duration. Remember to press `Enter` to switch to Passive mode. -OmniBitSplit"
pages=2;}
