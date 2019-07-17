obj_iji.startmusics=0;

//Logs in Sector 1
if (global.textid=="text101"){
text[0]="Your body is protected by a personal Nanofield - millions of microscopic robots working in unison. Enemy Machineguns damage your Nanofield's armor, and when your armor drops to zero, you'll take health damage and the armor is refilled.";
text[1]="Enemy Nanofields work exactly like yours, but their armor will also regenerate. Your Nanogun can carry an array of Nanoweapons, but is currently only equipped with a Shotgun, which deals armor damage.";
pages=2;}
if (global.textid=="text102"){
text[0]="Assimilating blue Nano into your personal Nanofield will add to its resources, which will let you level up and gain a `point`. Simply leveling up doesn't make you stronger; you must use the point you got at the Cyborg station further to your right.";
pages=1;}
if (global.textid=="text103"){
text[0]="Press "+chr(global.usekey)+" to activate the Cyborg station, then use the arrow keys and "+chr(global.usekey)+" to choose a stat to level up. Press any other key to cancel.$";
text[1]="I strongly recommend starting with leveling up Health - this complex is full of blue-clad Tasen Soldiers, whose Rocket launchers will deal 2 hit points of damage regardless of your armor.";
pages=2;}
if (global.textid=="text104"){
text[0]="Assimilation is a slow process. This complex is divided into Sectors, and I estimate that you can only gain "+string(5-global.difficulty)+" levels per Sector. Here's a rundown of your stats:";
text[1]="`Health` determines your maximum hit points.";
text[2]="`Attack` improves the programming of your Nanogun, increasing the power of all your Nanoweapons.";
text[3]="`Assimilate` lets you assimilate more resources into your personal Nanofield, increasing your ammo capacity for all Nanoweapons by "+string(global.assimilatesize)+". You'll also repair more armor when assimilating any kind of Nano.";
text[4]="`Strength` determines the power of your kick. Upgrade it to knock down bigger enemies and tougher doors. If your kick merely staggers an enemy, you're not dealing any damage.";
text[5]="`Crack` determines your skill at cracking various Nanotechnology. I'll go over this later, so ignore this stat for now.";
text[6]="`Tasen` lets you assimilate more powerful Tasen Nanoweapons.";
text[7]="`Komato` is for assimilating certain Nanoweapons the Tasen stole from another alien race. They're hard to come by, so I suggest not bothering with this one yet.";
pages=8;}
if (global.textid=="text105"){
text[0]="Press Enter to switch your Nanogun to Passive mode. This will replace your basic Nanoweapons with non-lethal versions. To view detailed descriptions of your Active and Passive weapons, look them up in the Help/info part of the Pause menu (Escape key).";
pages=1;}

if (global.textid=="text114"){
text[0]="Author: Tasen Center of Information#$#Subject: Shield doors";
text[1]="In order to improve security, modern Shield doors are fitted with an extremely dense Nanofield. Prolonged exposure to such red-glowing fields is lethal, so they cannot be used for personal protection with our current level of technology. However, since";
text[2]="bashing a Nanofield into another imparts a lot of force, Shield doors can be destroyed simply by kicking or ramming them hard enough.";
pages=3;}
if (global.textid=="text115"){
text[0]="Author: Tasen Soldier ER152:OPTM#$#Subject: Turn report";
text[1]="Nothing to report as usual. It's not like anything here was ever a threat. Most of us agree with Krotera though, so no alien is to escape alive.";
pages=2;}
if (global.textid=="text116"){
text[0]="Author: Tasen Soldier RO408:TMEM#$#Subject: `Humans`";
text[1]="According to Krotera, the sentient race we discovered here is called the `humans`. I don't know how they found that out, and I don't wanna know. I take orders first and ask questions later.";
pages=2;}
if (global.textid=="text117"){
text[0]="Author: Tasen Scout TE343:AOKD#$#Subject: Storage area";
text[1]="Did I lock the door to the storage area? In fact, did I even open it in the first place? Now that I think about it, I don't think I've ever been to the storage area before.";
pages=2;}
if (global.textid=="text118"){
text[0]="This is Dan writing. I've just learnt how to crack these logbooks, and now Doc wanted me to come over and see her for myself. I know the Tasen patrol spots, but the moment I leave the control room I'm practically blind. Inside I can see and listen";
text[1]="to the whole complex, talk to Doc and the others through the speakers, but outside I'm just a human among the Tasen. I've no idea how long our supplies will last, they've got the storerooms guarded. Whatever, as long as Iji's still alive. That Nanofield";
text[2]="they found sparked something in Becker's eyes. It's insane, but it's the only thing that can withstand their weapons. I don't know if it makes me feel better to see her lying here. She's breathing, maybe even dreaming, unaware of what's to come.";
pages=3;}
if (global.textid=="text119"){
text[0]="This is Sonia Plait. It's amazing what we have accomplished. Surviving for this long among the Tasen is one thing, but when Dan finally deciphered their language and discovered how to crack their logbooks, even typing with a readable (for us) font, I";
text[1]="suppose that's when the change happened. The change in me, Doc and Becker to believe it really is possible to implant a Tasen Nanofield into this girl without killing her in the process. Their technology is unlike anything we've seen, but there's a";
text[2]="clear, if non-human cognitive process behind it. The subject is Dan's sister, the older daughter of Ron over in Sector 6. He's dead of course. I advised Dan to throw away his emotions early on, or we may run into trouble. We can only hope Iji will do";
text[3]="the same. We don't have the time or resources to get her a decent suit of armor underneath the Nanofield, like the Tasen use for enhanced shock protection. Instead we'll focus on mobility - less restraining clothes, more motion amplifiers. She's been decked";
text[4]="for five months though. I've gotten rid of my expectations too, so I'm prepeared for the possibility that she won't wake up when we boot the Nanofield, but one thing I've never given up on - hope. Silly, but true.";
pages=5;}
if (global.textid=="text120"){
text[0]="Author: Tasen Scout KT581:PKBE#$#Subject: What's a `Pause menu`?";
text[1]="Seriously. Commander keeps telling us, `if you ever forget about your weapons, enemies or abilities, check the Pause menu by pressing Escape`. If this is some new helmet interface upgrade, I bet the Soldiers are keeping it from the Scouts. Jerks.";
pages=2;}
if (global.textid=="text121"){
text[0]="This is Sonia Plait. Some of the `Nanoweapons` we've managed to understand seem, by chance, very close to human weaponry. The translations we put into Iji's Nanofield reflect what kind of effect she would expect of them, such as `Shotgun` and";
text[1]="`Machinegun`. Others are so out there we simply did our best with the translation. We also found mentions of combining Nanoweapons and interfacing with doors, meaning Iji should be able to connect to other Nanofields without any further work on our part. Let's";
text[2]="hope she understands how, I didn't sleep for days when poring over the code. Disassembling a ternary programming language with our lab computers is like cutting cheese with a toothbrush. It appears the same goes for the Tasen - Doc believes they barely";
text[3]="understand their own technology, and there are signs it's not even theirs to begin with. Their Nanofields hold potentials they are yet to grasp, and judging by their logs, the same goes for that other species they keep referring to. I shudder at the";
text[4]="thought of where these human-looking beings came from, how ancient they are to have mastered space travel, yet how callous they are to have turned a stolen technology mainstream for military purposes. Becker says ration time. Note to self: leave";
text[5]="the thinking for when it actually matters. There's enough sugar in these vending machine leftovers to keep me awake as it is.";
pages=6;}
if (global.textid=="text122"){
text[0]="Becker writing. Plait has taken to the girl and is really pushing our work forward. I'm glad someone of her caliber is still with us! We must finish within a month because we haven't decided what to do once supplies run out. With the latest surge of troops";
text[1]="Dan is stuck in that control room so we can't share rations anymore. Whatever Doc and Plait say about the Tasen, what's most fascinating is how quickly people can adapt to dramatic changes. I mean just look at us! Look here Tasen, what's your weapons to";
text[2]="our will to live? You'll see once Iji wakes up. Oh yeah you will!";
pages=3;}

//190-196 are in scr_logsx
if (global.textid=="text197"){
text[0]="Author: Tasen Soldier HN692:JKTE#$#Subject: Sector Z research";
text[1]="Here's what we know about that damned teleporter. During the routine setup procedures, the teleporter destination was set at random, which usually means it won't connect to the other end because there's no matching pad. To everyone's surprise,";
text[2]="however, the teleporter did find a working connection somewhere. We still don't have a clue where - or WHAT - that place actually is. The few who have returned report such strange findings, we believe they've simply gone mad. Some call it a bizarre trial,";
text[3]="others think it's someone's memories, or a place beyond our own confines. Out of determination to unlock the secrets of the world beyond this teleporter, and the naming convention used by the local humans, we have dubbed this terrifying place `Sector Z`.";
text[4]="Due to the danger and secrecy involved, we have also placed an extremely powerful Nanofield lock on it - no-one will be able to use the teleporter without meeting the proper requirements. See the logs in Sector 3 for more information.";
pages=5;}
if (global.textid=="text198"){
text[0]="Author: Flip Hero#$#Subject: Anomalous occurances";
text[1]="Recently, strange things have been happening here. It's difficult enough reaching Tetron's throne room, but now some humanoid aliens have been dropping by, seemingly appearing from thin air. Most of them don't last long against the Drones. Could it be a";
text[2]="dimensional wormhole, connected to an unknown point in space and time? This may be worth investigating in further detail. Destroying Tetron's current incarnation is still of utmost importance, of course. In the meantime, I'll edit one of the";
text[3]="alien text logs and leave it here, with this message to whomever finds it: `Stop warping carelessly through space. It's irritating.`";
pages=4;}
if (global.textid=="text199"){
text[0]="Author: Remar Games#$#Subject: Thank you";
text[1]="I never thought anyone would make it this far. You are the most amazing Iji player, the most dedicated explorer and secret hunter. You've achieved what extremely few players will likely ever come close to.";
text[2]="Even though I probably won't know that you've found this place, you make me happier than you can believe. That someone would love my game so much as to explore its every corner is heartwarming.";
text[3]="The years I spent on this project were long and full of doubt. Would Iji deliver? Would anyone even like it? How about anyone even finding more than three of the posters? But you, sir or madam, have made it all worth it.";
text[4]="Pat yourself of the back, you've found one of the toughest secrets in any of my games. But is this truly the end? The Crackers' Hideout near the end of Sector 7 may have the clues you seek|";
pages=5;
outline=0;}
