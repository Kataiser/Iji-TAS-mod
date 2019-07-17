obj_iji.startmusics=0;

//Logs in Sector 2
if (global.textid=="text201"){
text[0]="Hi, it's Dan. To your right is a Tasen Security door, which is different from the Shield doors you've seen so far. Since it's operated by a Nanofield, you can connect to it and `Crack` it.";
outline=2;
pages=1;}
if (global.textid=="text202"){
text[0]="Press "+chr(global.usekey)+" to connect to the Security door. An interface will appear, giving you various information on what you are about to crack. Press "+chr(global.usekey)+" to begin, and you'll see a grid of blue nodes. In the upper left corner is your green node; move this to the red";
text[1]="node before the time runs out, and without hitting any dark blue nodes, and the crack will be successful.";
outline=2;
pages=2;}
if (global.textid=="text203"){
text[0]="Everything you can crack has a Security level, so a door with a Security of 5 requires a Crack stat of 5 to bypass. Further to your right is a Security box. Shooting it will destroy the contents, so you must crack it instead. If you fail to crack";
text[1]="something, bad stuff can happen depending on the difficulty level. You can press Enter to abort a cracking attempt - if you do this before you have started the actual cracking, it won't count as a failure and no adverse effects will occur.";
outline=2;
pages=2;}
if (global.textid=="text204"){
text[0]="You can even crack a Tasen's personal Nanofield to mess it up. Usually his most powerful weapons will cease to function, and if he tries to use them, they'll backfire. He may even lose half of his current hit points the moment you crack him as well, but";
text[1]="this cannot cause him to die. I suggest hiding behind something until the enemies calm down and turn their backs to you before trying to crack them. When a cracked enemy is killed, he will always drop some useful ammunition.";
outline=2;
pages=2;}
if (global.textid=="text205"){
text[0]="To your right is a Nanoweapon station, used for combining your Nanoweapons into more powerful hybrid versions. Activate it with "+chr(global.usekey)+", then use the arrow keys and "+chr(global.usekey)+" to select the two weapons you want to combine. You can also just press the number keys for";
text[1]="each weapon directly. Fail the crack, and there's a chance you'll lose 5 ammo for each of the weapons used in the combination. The chance depends on the difficulty level.";
outline=2;
pages=2;}
if (global.textid=="text206"){
text[0]="Author: Tasen Commander PS847:JFHA#$#Subject: Screw this";
text[1]="How long is Krotera gonna keep us on guard duty? The Komato won't ever find us here, we totally trashed the humans, and it's not like we could defend ourselves if the Imperial Army actually did find is now. There's no reason to stay armed and alert when";
text[2]="we've finally found a safe place, when we should rebuild what little we have instead of spending all our resources on weapons and research. How much do they think they can pull out of this space rock anyway? I'm even starting to wonder if the humans";
text[3]="are as hostile as we thought, or if Krotera's new position is just getting to him. The guy's a walking insult to Hel Sarie. Still, orders are orders. I don't want to lose my own head when we've come this far.";
pages=4;}
if (global.textid=="text207"){
text[0]="Author: Tasen Commander UY747:UTOO#$#Subject: Human Anomaly";
text[1]="Reports are pouring in regarding an individual called the `Human Anomaly` who uses Nanotechnology, something that none of the other humans we've encountered possess. She's clearly backed by some traitorous faction or another - we have to terminate her";
text[2]="at all costs, or she might even warn the Komato Imperial Army of our presence on this planet. Some say she can understand and speak our language due to her personal Nanofield, but do not be fooled if she tries to communicate with you. Kill her on sight";
text[3]="and report it to your superior. We are not taking any chances.";
pages=4;}
if (global.textid=="text208"){
text[0]="Author: Tasen Commander TO113:MVAA#$#Subject: The lifts!";
text[1]="The lifts we installed here aren't a security problem, they're downright lethal! It's only a matter of time before someone loses an arm in one of those things. Have they ever heard of doors? Even the humans had those. Some guys have been busy blocking";
text[2]="certain lift shafts to prevent people falling into them, using the materials lying around in boxes. Speaking of, why are there so damn many boxes here? The lift music is catchy though, it plays a lot of political stuff. `Welcome to Ciretako` always";
text[3]="makes me glad I'm not in the Komato army.";
pages=4;}
if (global.textid=="text209"){
text[0]="Author: Tasen Soldier TP545:LJAK#$#Subject: Turret defenses";
text[1]="We've set up some turrets here, specifically set to target humans. They won't shoot anyone with the proper subroutine programming in their personal Nanofield. If the rumors are true that there's actually a surviving human running around here,";
text[2]="she won't last long. I heard the turrets in other areas were given some insane Nanoweapons - I don't know if they were designed for field testing, or if some of the guys around here think it's fun seeing humans getting blown to pieces. The";
text[3]="turrets' only real weakness is their ridiculously frail construction, you could kick one clean off its support pole.";
pages=4;}
if (global.textid=="text210"){
text[0]="Author: Tasen Soldier LL868:ALDK#$#Subject: Terminally bored";
text[1]="We're now officially the most bored Tasen squad in the universe. Since all we do in this remote room is keep a lookout for hostiles - of which there are none - we started shooting down the winged alien lifeforms flying by the small window in here. We";
text[2]="programmed a simple machine, using a display taken from one of our suits, and a heat sensor from a turret. The machine, quite simply, counts the little aliens killed. I believe we've taken the expression `terminally bored` to new heights.";
pages=3;}
if (global.textid=="text211"){
text[0]="Author: Tasen Soldier IF5737:IHBA#$#Subject: Alien counting machine";
text[1]="I tried hacking the alien-counting machine when no-one was looking yesterday, but that show-off Yukabacera had laid down some sophisticated encryption algorithms for it. It took me a few days, but I managed to make it display `Naotgerai rules` -";
text[2]="after which Yukabacera reprogrammed the whole thing from scratch, using a hardcoded encryption instead. I don't know which one of us is the most bored right now.";
pages=3;}
if (global.textid=="text212"){
text[0]="You should have found a Komato Resonance detonator in that box, stolen by the Tasen. Select it by pressing 5 (or "+chr(global.weap5key)+", which is one of the four secondary keys to the Komato weapons). It sends out a shockwave that works exactly like your kick, so it can destroy";
text[1]="obstacles and send enemies flying if you're strong enough.";
outline=2;
pages=2;}
if (global.textid=="text213"){
text[0]="Author: Tasen Center of Information#$#Subject: Nano Overloads"
text[1]="High concentrations of certain kinds of Nano have been proven to act as combat drugs, dramatically boosting various features of one's personal Nanofield for a brief period of time. The only drawback of assimilating such `overloads` is that the result";
text[2]="gained is completely random. Research suggests that the most powerful random abilities can only be earned by particularly aggressive subjects - a passive person could only gain the lower spectrums of the overloads, more suited to survival and";
text[3]="stealth. Conversely, a true berserker can only gain the most extreme offensive abilities.";
pages=4;}
if (global.textid=="text214"){
text[0]="Author: Tasen Center of Information#$#Subject: Instant restoration units"
text[1]="Also called `Checkpoints` for some reason, touching a restoration unit makes it fall in sync with your personal Nanofield. If you take lethal damage, the Checkpoint will retrieve your body through standard teleportation and fully restore your personal";
text[2]="Nanofield. However, the Checkpoint will be exhausted after only one use.";
pages=3;}
if (global.textid=="text215"){
text[0]="Author: Tasen Center of Information#$#Subject: Nanotechnology for you and me: becoming a fighting machine!"
text[1]="As a Tasen cyborg, your body is maintained and run by a personal Nanofield. The most important aspect of the Nanofield is its ability to be reprogrammed, like a freeform supercomputer. The Nanogun is a small shapeshifting factory that builds the";
text[2]="projectiles and firing mechanisms needed, given the right programming. Anyone with a Nanofield can even connect to another by physical contact - while this has created a `cracker` subculture, each Nanofield has a range of security measures to";
text[3]="keep even the most severe malfunctions from lethally harming the user. Furthermore it is nigh unbeatable as a physical armor, to the point where basically only Nanoweapons can scratch someone wearing a Nanofield. Throwing one field into another is highly";
text[4]="damaging, letting strong users engage in melee combat with deadly results, but actual weapons revolving around this concept were found to be resource ineffective. Exceptionally powerful Nanoweapons, such as the Phantom Hammer, can disintegrate";
text[5]="lesser Nanofields with ease.";
pages=6;}
if (global.textid=="text216"){
text[0]="Author: Tasen Soldier IF5737:IHBA#$#Subject: Passive weapons";
text[1]="Hey Vateilika, it's Naotgerai. Now that I have the time to look deeper into those Passive weapons - you know, the ones you access by pressing `Enter` - here's what I've found out. First off, all Passive Nanoweapons are strictly non-lethal, so if you're";
text[2]="worried about your kill count you can safely use them as much as you like. Your Attack stat not only increases the stun duration of the Stun gun, it also increases the range of the Impact machinegun. Finally, the Resonance disruptor will totally";
text[3]="destroy most projectiles and prevent them from exploding, and its nullifying barrier also lasts longer the higher your Attack stat is. I'll be back with the lowdown on some more weapons later, alright? Do your own research in the meantime.";
pages=4;}
