//Fetch screen covering pause menu texts here

//Current statistics
if (getinfo==1){
screentext="CURRENT STATISTICS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="~~Sector~";
if (room==rom_sector1 && !global.wty) screentext+="1";
if (room==rom_sector2) screentext+="2";
if (room==rom_sector3 || room==rom_sector11) screentext+="3";
if (room==rom_sector4) screentext+="4";
if (room==rom_sector5 || room==rom_sector12) screentext+="5";
if (room==rom_sector6) screentext+="6";
if (room==rom_sector7 || room==rom_sector13) screentext+="7";
if (room==rom_sector8) screentext+="8";
if (room==rom_sector9 || room==rom_sector14) screentext+="9";
if (room==rom_sectorx || room==rom_sector15 || room==rom_sector16) screentext+="X";
if (room==rom_sectorz) screentext+="Z";
if (room==rom_sector1 && global.wty) screentext+="Y";
screentext+=", ";
if (global.difficulty==0)
    screentext+="Normal~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
else if (global.difficulty==1)
    screentext+="Hard~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
else if (global.difficulty==2){
    if (global.really)
        screentext+="reallyjoel's dad~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
    else if (global.specialtrigger16)
        screentext+="Ultimortal~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
    else
        screentext+="Extreme~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
    }

temp=global.sector;
if (temp==0)
    temp=10;
screentext+="~~Level:~"+string(global.level)+"/"+string(global.maxlevel)+"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="~~Nano:~"
if (global.level<global.maxlevel){
    screentext+=string(global.xp);
    screentext+="/";
    screentext+=string((global.level*(4+global.difficulty*4))+4);
    }
else screentext+="---/---";
screentext+="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="~~"
if (global.extras1){
    screentext+="Poster: ";
    if (room==rom_sector1 && global.wty) screentext+="N/A";
    else if (room==rom_sector1 && global.poster1) screentext+="Yes";
    else if (room==rom_sector2 && global.poster2) screentext+="Yes";
    else if ((room==rom_sector3 || room==rom_sector11) && global.poster3) screentext+="Yes";
    else if (room==rom_sector4 && global.poster4) screentext+="Yes";
    else if ((room==rom_sector5 || room==rom_sector12) && global.poster5) screentext+="Yes";
    else if (room==rom_sector6 && global.poster6) screentext+="Yes";
    else if ((room==rom_sector7 || room==rom_sector13) && global.poster7) screentext+="Yes";
    else if (room==rom_sector8 && global.poster8) screentext+="Yes";
    else if ((room==rom_sector9 || room==rom_sector14) && global.poster9) screentext+="Yes";
    else if ((room==rom_sectorx || room==rom_sector15 || room==rom_sector16) && global.poster10) screentext+="Yes";
    else if (room==rom_sectorz) screentext+="N/A";
    else
        screentext+="No~";
    }
else
    screentext+="~~~~~~~~~~~";
screentext+="~~~~~~~~~~~~Current~/~Total~~~~~~~~~~~~~~~~~~~~~~ "
screentext+="~~~~~~~~~~~~~~~~~~~Time:~"+obj_sabot.drawtimestring+"~~~~"+obj_sabot.drawtottimestring+"~~~~~~~~~~~~~~~~~~~ ";

adjust1="";
if (global.kills<10) adjust1="~~"
else if (global.kills<100) adjust1="~"
adjust2="";
totkills=global.kills+global.totkills;
if (totkills>999) totkills=999;
if (totkills<10) adjust2="~~"
else if (totkills<100) adjust2="~"
screentext+="~~~~~~~~~~~~~~~~~~Kills:~"+adjust1+string(global.kills)+"~~~~~~~~"+adjust2+string(totkills)+"~~~~~~~~~~~~~~~~~~~~~~~ ";

adjust1="";
if (global.damage<10) adjust1="~~"
else if (global.damage<100) adjust1="~"
adjust2="";
totdamage=global.damage+global.totdamage;
if (totdamage>999) totdamage=999;
if (totdamage<10) adjust2="~~"
else if (totdamage<100) adjust2="~"
screentext+="~~~~~~~~~~~Damage taken:~"+adjust1+string(global.damage)+"~~~~~~~~"+adjust2+string(totdamage)+"~~~~~~~~~~~~~~~~~~~~~~~ ";

adjust1="";
if (global.cracks<10) adjust1="~~"
else if (global.cracks<100) adjust1="~"
adjust2="";
totcracks=global.cracks+global.totcracks;
if (totcracks>999) totcracks=999;
if (totcracks<10) adjust2="~~"
else if (totcracks<100) adjust2="~"
screentext+="~~~~~~Successful cracks:~"+adjust1+string(global.cracks)+"~~~~~~~~"+adjust2+string(totcracks)+"~~~~~~~~~~~~~~~~~~~~~~~ ";

adjust1="";
if (global.fails<10) adjust1="~~"
else if (global.fails<100) adjust1="~"
adjust2="";
totfails=global.fails+global.totfails;
if (totfails>999) totfails=999;
if (totfails<10) adjust2="~~"
else if (totfails<100) adjust2="~"
screentext+="~~~~~~~~~~Failed cracks:~"+adjust1+string(global.fails)+"~~~~~~~~"+adjust2+string(totfails)+"~~~~~~~~~~~~~~~~~~~~~~~ ";

screentext+="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
if (global.extras1){
screentext+="~~--------------~ENDGAME~RANKINGS~INFORMATION~---------------~ ";
screentext+="~~~~~~~~~KILLS~~~~~~~~~~~~~~~~DAMAGE~~~~~~~~CRACKS~minus~FAILS ";
screentext+="~~~300:~One~Woman~Army~~400:~Hopeless~~~~~~~~~100:~Nanomaster~ ";
screentext+="~~~200:~Genocidal~~~~~~~300:~Overconfident~~~~~70:~Cybergeek~~ ";
screentext+="~~~~51:~Destroyer~~~~~~~200:~Careless~~~~~~~~~~40:~Adept~~~~~~ ";
screentext+="~~~~~1:~Pacifistic~~~~~~100:~Skilled~~~~~~~~~~~20:~Lame~~~~~~~ ";
screentext+="~~~~~0:~Innocent~~~~~~~~~~0:~Immortal~~~~~~~~~~~0:~Clueless~~ ";
}
}

//Stats and special traits
else if (getinfo==2){
tempnumtraits=0;
if (global.healthlevel==10) tempnumtraits+=1;
if (global.attacklevel==10) tempnumtraits+=1;
if (global.assimilatelevel==10) tempnumtraits+=1;
if (global.strengthlevel==10) tempnumtraits+=1;
if (global.tasenlevel==10) tempnumtraits+=1;
if (global.komatolevel==10) tempnumtraits+=1;
if (global.cracklevel==10) tempnumtraits+=1;
screentext="STATS AND SPECIAL TRAITS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="HEALTH: Determines amount of hit points~~~~~~~~~~~~~~~~~~~~~~~ ";
if (global.healthlevel==10)
    screentext+="~>Special trait: Lowers damage taken from heavy attacks by 1~~ ";
if (tempnumtraits<=5)
    screentext+="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="ATTACK: Determines power of all Nanoweapons~~~~~~~~~~~~~~~~~~~ ";
if (global.attacklevel==10)
    screentext+="~>Special trait: Decrease non-rapidfire reload time by 20%~~~~ ";
if (tempnumtraits<=5)
    screentext+="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="ASSIMILATE: Increase ammo capacity, more armor from Nanofields ";
if (global.assimilatelevel==10)
    screentext+="~>Special trait: More HP from red Nanofields, 1 HP from green~ ";
if (tempnumtraits<=5)
    screentext+="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="STRENGTH: Kick down stronger doors, kick heavier enemies~~~~~~ ";
if (global.strengthlevel==10)
    screentext+="~>Special trait: Invincibility time after being damaged +50%~~ ";
if (tempnumtraits<=5)
    screentext+="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="TASEN: Weild more advanced Tasen Nanoweapons~~~~~~~~~~~~~~~~~~ ";
if (global.tasenlevel==10)
    screentext+="~>Special trait: +1 to all Tasen ammunition you pick up~~~~~~~ ";
if (tempnumtraits<=5)
    screentext+="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="KOMATO: Weild more advanced Komato Nanoweapons~~~~~~~~~~~~~~~~ ";
if (global.komatolevel==10)
    screentext+="~>Special trait: +1 to all Komato ammunition you pick up~~~~~~ ";
if (tempnumtraits<=5)
    screentext+="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="CRACK: Crack more secure Nanotechnology~~~~~~~~~~~~~~~~~~~~~~~ ";
if (global.cracklevel==10)
    screentext+="~>Special trait: No adverse effects on failure, more cracktime ";
if (tempnumtraits==0)
    screentext+="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ No~Special~traits~have~been~earned~yet.~~~~~~~~~~~~~~~~~~~~~~~ Special~traits~are~earned~by~increasing~a~stat~to~level~10.~~~ They~are~permanent~ability~boosts,~and~are~unique~to~each~stat.";
}

//Hidden skills
else if (getinfo==3){
screentext="HIDDEN SKILLS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Air~braking:~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Hold~left~or~right~when~being~knocked~flying~to~slow~down.~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
if (global.hiddenskill1)
screentext+="Teching (learned in Sector 7):~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Press~the~Use~key~immediately~before~being~damaged~to~reduce~~ knockback~and~land~on~your~feet,~or~avoid~pain~staggering.~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
if (global.hiddenskill2)
screentext+="Nanofield~reboot (learned in Sector X):~~~~~~~~~~~~~~~~~~~~~~~ While~ducking,~press~the~Use~key~four~times~followed~by~the~~~ Kick~key.~Most~ammo~and~all~Health~and~stats~are~lost,~but~~~~ all~points~are~returned.~You~won't~gain~bonus~HP~when~~~~~~~~~ upgrading~Health~for~the~rest~of~the~Sector.~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
if (global.hiddenskill3)
screentext+="Retribution (learned in Sector 8):~~~~~~~~~~~~~~~~~~~~~~~~~~~~ With~all~8~basic~weapons,~at~least~1~ammo~for~each~and~5~or~~~ less~HP~left,~hold~the~Use~key~while~getting~up~after~being~~~ damaged.~Retribution~can~only~be~performed~once~per~Sector~or~ boss~room.~Also,~your~Nanogun~must~be~set~to~Active~mode.~~~~ ";
if (!global.hiddenskill1 || !global.hiddenskill2 || !global.hiddenskill3)
screentext+="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Find~certain~enemy~logbooks~to~discover~additional~skills.";
}

//Full controls
else if (getinfo==4){
screentext="FULL CONTROLS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="Left, Right: Move~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="Up: Jump~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="Down: Duck / turn pages when reading text ~~~~~~~~~~~~~~~~~~~~ ";
screentext+=chr(global.kickkey)+": Kick ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+=chr(global.firekey)+": Fire ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+=chr(global.usekey)+": Use ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="Enter: Change Nanogun mode / Abort cracking ~~~~~~~~~~~~~~~~~~ ";
screentext+="Escape: Pause / skip certain chats / skip cutscenes ~~~~~~~~~~ ";
screentext+="Numpad: Move the view ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="1: Weapon 1 ~~~ 5 or "+chr(global.weap5key)+": Weapon 5 ~~~ "+chr(global.prevkey)+": Previous weapon~~~~~~~ ";
screentext+="2: Weapon 2 ~~~ 6 or "+chr(global.weap6key)+": Weapon 6 ~~~ "+chr(global.nextkey)+": Next weapon~~~~~~~~~~~ ";
screentext+="3: Weapon 3 ~~~ 7 or "+chr(global.weap7key)+": Weapon 7 ~~~ "+chr(global.specialkey)+": Select super-weapon~~~ ";
screentext+="4: Weapon 4 ~~~ 8 or "+chr(global.weap8key)+": Weapon 8 ~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="Hold F2: Quit to Main menu ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="Hold F4: Retry Sector/boss ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="Alt+F4 or hold F12: Quit game~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
}

//Difficulty level info
else if (getinfo==5){
screentext="DIFFICULTY LEVEL INFO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
if (global.difficulty==0){
    if (global.suddendeath)
        screentext+="Normal (Sudden Death Sector):~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
    else if (global.sswarp)
        screentext+="Normal (Single Sector Play):~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
    else
        screentext+="Normal:~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
    screentext+="You can gain 5 levels per Sector~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Cracking time is normal~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Some enemies may dodge/reflect projectiles~~~~~~~~~~~~~~~~~~~~ When failing to crack a security box:~~~~~~~~~~~~~~~~~~~~~~~~~ ~There's a 25% chance its Security will increase by 1~~~~~~~~~ When failing to crack a door:~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ~There's a 25% chance its Security will increase by 1~~~~~~~~~ When failing to crack a weapon combination:~~~~~~~~~~~~~~~~~~~ ~There's a 25% chance to lose 5 ammo for those weapons~~~~~~~~ Red Nanofields recover 2 HP~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Bosses are of normal difficulty~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ There are 14% less enemies compared to higher difficulties~~~~ ";
    if (global.suddendeath)
        screentext+="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ~---~SUDDEN~DEATH~SPECIFIC~---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Everything has one hit point and 100 armor~~~~~~~~~~~~~~~~~~~~ Health~cannot~be~upgraded~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Red~and~Green~Nanofields~do~not~exist~~~~~~~~~~~~~~~~~~~~~~~~~ ";
    }
else if (global.difficulty==1){
    screentext+="Hard:~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ You can gain 4 levels per Sector~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Cracking time is decreased by 2 seconds~~~~~~~~~~~~~~~~~~~~~~~ Certain enemies attack at a faster rate~~~~~~~~~~~~~~~~~~~~~~~ Certain enemies dodge/reflect projectiles more often~~~~~~~~~~ When failing to crack a security box:~~~~~~~~~~~~~~~~~~~~~~~~~ ~The box has a 25% chance of breaking~~~~~~~~~~~~~~~~~~~~~~~~~ When failing to crack a door:~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ~There's a 50% chance its Security will increase by 1~~~~~~~~~ When failing to crack a weapon combination:~~~~~~~~~~~~~~~~~~~ ~There's a 50% chance to lose 5 ammo for those weapons~~~~~~~~ Red Nanofields recover 1 HP~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Bosses are more difficult~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
    }
else if (global.difficulty==2 && global.specialtrigger16==0){
    screentext+="Extreme:~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ You can gain 3 levels per Sector~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Cracking time is decreased by 4 seconds~~~~~~~~~~~~~~~~~~~~~~~ Certain enemies attack at a very fast rate~~~~~~~~~~~~~~~~~~~~ Certain enemies almost always dodge/reflect projectiles~~~~~~~ When failing to crack a security box:~~~~~~~~~~~~~~~~~~~~~~~~~ ~The box has a 25% chance of exploding~~~~~~~~~~~~~~~~~~~~~~~~ When failing to crack a door:~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ~There's a 75% chance its Security will increase by 1~~~~~~~~~ When failing to crack a weapon combination:~~~~~~~~~~~~~~~~~~~ ~There's a 75% chance to lose 5 ammo for those weapons~~~~~~~~ Red Nanofields recover 1 HP~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Bosses are very difficult~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Nano Overloads do not exist~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
    }
else if (global.difficulty==2 && global.really==1){
    screentext+="reallyjoel's dad:~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ You cannot gain levels ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Cracking time is decreased to 1 second~~~~~~~~~~~~~~~~~~~~~~~~ All enemies attack as often as possible~~~~~~~~~~~~~~~~~~~~~~~ All enemies catch projectiles with their teeth~~~~~~~~~~~~~~~~ When failing to crack a security box:~~~~~~~~~~~~~~~~~~~~~~~~~ ~The box has a 100% chance of exploding in a nuclear fireball~ When failing to crack a door:~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ~There's a 100% chance it will explode in a nuclear fireball~~ Red and green Nanofields do not exist~~~~~~~~~~~~~~~~~~~~~~~~~ Bosses are impossible for everyone but reallyjoel's dad~~~~~~~ Nano Overloads do not exist~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Each Sector has a strict time limit~~~~~~~~~~~~~~~~~~~~~~~~~~~ No stats can be upgraded~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ There are more enemies compared to all lower difficulties~~~~~ Enemy HP, armor, speed, security and weight doubled~~~~~~~~~~~ ";
    }
else if (global.difficulty==2 && global.specialtrigger16==1){
    screentext+="Ultimortal:~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ You can gain 3 levels per Sector~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Cracking time is decreased by 4 seconds~~~~~~~~~~~~~~~~~~~~~~~ Certain enemies attack at a very fast rate~~~~~~~~~~~~~~~~~~~~ Certain enemies almost always dodge/reflect projectiles~~~~~~~ When failing to crack a security box:~~~~~~~~~~~~~~~~~~~~~~~~~ ~The box has a 25% chance of exploding~~~~~~~~~~~~~~~~~~~~~~~~ Bosses are very difficult~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Nano Overloads do not exist~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ~---~ULTIMORTAL SPECIFIC~---~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Each Sector has a time limit~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Only Health can be upgraded~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Red and green Nanofields do not exist~~~~~~~~~~~~~~~~~~~~~~~~~ Most enemies are faster~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
    }
}

//Sectors and saving
else if (getinfo==6){
screentext="SECTORS AND SAVING#$#The military complex is built of Sectors. At the end of a Sector, you can save. If you quit the game without saving, all progress in the current Sector is lost, with the exception of unlocked Posters and Hidden skills.#$#Around the middle of most Sectors, you'll find a Checkpoint. If Iji dies, she'll be revived at the Checkpoint - but only once per Sector! Particularly long Sectors may have more than one Checkpoint, in which case activating the second will deactivate the first. The game will notify you when this happens.";
}

//Health
else if (getinfo==7){
screentext="HEALTH#$#Like the Tasen, Iji's body is maintained by a personal Nanofield, which doubles as a shield to protect her from harm.#$#You have a health bar and an armor bar. If your armor is reduced to zero, you lose one hit point and the armor regenerates to 100%. Whenever your health is damaged, you will be invulnerable for a short while.#$#Particularly powerful attacks will instantly reduce your hit points regardless of your armor, and the armor regenerates to 100%.#$#To recover health, assimilate Red Nanofields. To recover armor, assimilate blue, green or red Nanofields. You cannot recover past 100% armor.";
}

//Nanofields and leveling
else if (getinfo==8){
screentext="NANO AND LEVELING#$#Scattered around the Sectors are free-floating gatherings of Nano that Iji's personal Nanofield can assimilate.#$#BLUE pickups recover armor, but also add to your total Nano. When you reach a certain amount of Nano, you will level up and get a `point`. Points are spent at Cyborg station, which will upgrade one of your seven stats. Leveling up does not make you stronger unless you spend the points you get at the Cyborg stations!#$#RED pickups recover health and armor. They don't help you level up.#$#GREEN pickups recover armor. They don't help you level up.";
}

//Cracking interface
else if (getinfo==9){
screentext="CRACKING INTERFACE#$#Press the Use key to touch things and crack them. Then press the Use key to get started (or Enter/Escape to bail out), then move your green dot around using the arrow keys, until you reach the red dot. If you hit a dark blue node or the time runs out, the cracking attempt fails. The length of the puzzle depends on the security of the object. Note that if you press Enter or Escape to bail out of an ONGOING cracking attempt, it counts as a failure.#$#Security doors and multi-colored Security boxes must be cracked. Cracking an enemy will often disable its most powerful weapons, and if you're lucky you'll heavily damage it as well. Cracking enemies CANNOT directly kill them - their malfunctioning weapons may cause them to self-destruct, but this will not count as your kill.#$#Cracking an enemy will also make it guaranteed to drop some ammo upon its death.";
}

//Weapon information (getinfo 10)
else if (getinfo==10){
if (weaponlist[weaponinfo]==1)
screentext="1. SHOTGUN#$#$#Requirements: None#Function: Fires a wide, short-range pellet blast#$#A low-end, short-ranged Nanoweapon, the Shotgun is still capable of causing severe damage in close combat. Hardly anyone uses it anymore, but it shouldn't be underestimated, especially with a high Attack stat.";
if (weaponlist[weaponinfo]==2)
screentext="2. MACHINEGUN#$#$#Requirements: Tasen level 3#Function: Fires weak but accurate long-range bullets#$#An accurate long-range Nanoweapon, the Machinegun is effective even against larger enemies. Most Tasen are equipped with one, though few higher-ranking ones rely on it as their primary weapon. Due to Iji's rare Tasen Nanogun, her Machinegun is more accurate and deals more damage than the standard Tasen version.";
if (weaponlist[weaponinfo]==3)
screentext="3. ROCKET LAUNCHER#$#$#Requirements: Tasen level 6#Function: Fires a single rocket#$#Very powerful, and able to knock enemies flying, but the low travel speed of the rockets make them easier to duck or reflect than other projectiles.";
if (weaponlist[weaponinfo]==4)
screentext="4. MPFB DEVASTATOR#$#$#Requirements: Tasen level 10#Function: Fires three high-explosive MPFB projectiles#$#The MPFB Devastator is one of the most powerful handheld Nanoweapons the Tasen have conceived. It launches three massively concentrated crystals that cause spontaneous nuclear fission upon contact with any object. The crystals even violently react to the air around them, making them glow in a light blue and enlargening the area of impact. A real beast of a weapon favored by Tasen Elites, as only they can fire the Devastator without flying back from the recoil.";
if (weaponlist[weaponinfo]==5)
screentext="5. RESONANCE DETONATOR#$#$#Requirements: None#Function: Works exactly like your kick attack, but has a longer reach. This weapon can destroy Shield doors.#$#A weapon stolen from the Komato race, it creates a shockwave that can knock back enemies and send them flying, depending entirely on the user's Strength stat. It uses no ammunition, but has a rather long reload time.";
if (weaponlist[weaponinfo]==6)
screentext="6. PULSE CANNON#$#$#Requirements: Komato level 3#Function: Fires a short-range pulse beam#$#A standard issue Nanoweapon among the Komato troops, the Pulse cannon is effective only at short range. Its clear green beam inflicts so much pain that enemies are usually unable to retaliate as their Nanofields are slowly destroyed. Due to Iji's rare Tasen Nanogun, her Pulse cannon deals twice the damage of the standard Komato version.";
if (weaponlist[weaponinfo]==7)
screentext="7. SHOCKSPLINTER#$#$#Requirements: Komato level 6#Function: Fires a fast Shocksplinter projectile#$#A basic but powerful Komato weapon, its explosive projectiles shatter into six armor-draining spheres on impact. These 'splinters' explode after a short time or if they hit a solid object.";
if (weaponlist[weaponinfo]==8)
screentext="8. CYCLIC FUSION IGNITION SYSTEM#$#$#Requirements: Komato level 10#Function: Fires a short-range beam that cuts through enemies#$#This weapon ignites series of small fusion detonations in the Nanogun's core to power a high-velocity coilgun. The tiny slugs are quickly destroyed due to air friction, so the weapon has a short but devastating range, rippling through Nanofields and striking multiple enemies with ease. The Komato prefer not to use it in dangerous clashes with the Tasen, seen as how they could steal and reverse-engineer it.";
if (weaponlist[weaponinfo]==9)
screentext="9. BUSTER GUN#$#$#Requirements: Shotgun, Machinegun, Crack level 3#Function: Fires rapid Shotgun blasts#$#This weapon uses Machinegun ammo to fire pellet blasts more than thrice as fast as the regular Shotgun. While not as ammunition efficient as the Machinegun, the Buster gun takes out enemies much faster if they are close enough.";
if (weaponlist[weaponinfo]==10)
screentext="10. SPLINTERGUN#$#$#Requirements: Machinegun, Shocksplinter, Crack level 7#Function: Fires armor-damaging `splinters` rapidly#$#This powerful Nanoweapon uses Machinegun ammo to fire small shards of Shocksplinter. While the splinters deal no knockback, they rapidly drain the armor of any target. Perfectly concentrated fire will take down opponents much faster and slightly more ammunition efficiently than the Machinegun.";
if (weaponlist[weaponinfo]==11)
screentext="11. SPREAD ROCKETS#$#$#Requirements: Shotgun, Rocket launcher, Crack level 5#Function: Fires three spread-out rockets at the cost of three Launcher ammo#$#Offering twice the destructive power per second as the regular Rocket launcher, it makes for a formidable weapon to mow down hordes of enemies or clear out corridors. It's also a force to be reckoned with when dealing with huge, powerful foes. Berserkers have been specially trained in dealing with this Nanoweapon, usually resulting in all three rockets ending up reflected back at the user.";
if (weaponlist[weaponinfo]==12)
screentext="12. NUKE#$#$#Requirements: Rocket launcher, MPFB Devastator, Crack level 9  Function: Deals instant moderate damage to all enemies within 15 meters of the user at the cost of 3 MPFB ammo#$#A sophisticated weapon despite its seemingly simplistic effect, the Nuke temporarily shields the person firing it from external thermal and kinetic energy, and detonates the surrounding area with an enormous force, destroying most lesser enemies in one blow. While the user is normally knocked to the ground from the resulting shockwave, he or she suffers no damage. Despite its effectiveness in instantly hitting multiple enemies, its damage output is inferior to the MPFB Devastator.";
if (weaponlist[weaponinfo]==13){
if (global.rrkills)
screentext="13. RESONANCE REFLECTOR#$#$#Requirements: Shotgun, Resonance detonator, Crack level 4#Function: Reflects rockets and other projectiles#$#This devious Nanoweapon reflects mass-based projectiles, and as such can be used against the Rocket launcher, Spread rockets, Shocksplinter, MPFB Devastator and more. However, particularly powerful projectiles and certain weapons may not be nullified, and will instead destroy the reflector. The reflected projectile gets stronger or weaker depending on the user's Attack stat.#$#NOTE: reflected projectiles count as YOUR projectiles, and will award you kills when striking enemies.";
else
screentext="13. RESONANCE REFLECTOR#$#$#Requirements: Shotgun, Resonance detonator, Crack level 4#Function: Reflects rockets and other projectiles#$#This devious Nanoweapon reflects mass-based projectiles, and as such can be used against the Rocket launcher, Spread rockets, Shocksplinter, MPFB Devastator and more. However, particularly powerful projectiles and certain weapons may not be nullified, and will instead destroy the reflector. The reflected projectile gets stronger or weaker depending on the user's Attack stat.#$#NOTE: reflected projectiles will NOT award you kills when striking enemies.";
}
if (weaponlist[weaponinfo]==14)
screentext="14. HYPER PULSE#$#$#Requirements: Resonance detonator, Pulse cannon, Crack level 6 Function: Damages enemies, and uses your Strength to knock them flying when their armor has been drained low enough. This weapon can destroy Shield doors.#$#The Nanoweapon of choice when plowing through weaker enemies, if one's Strength level is high enough - when an enemy has less than 33% of its maximum armor left, the Hyper pulse will inflict a violent blow as if the enemy had been struck with a Resonance detonator. In other words, this weapon requires both physical strength and weapon skill to handle well.";
if (weaponlist[weaponinfo]==15)
screentext="15. PLASMA CANNON#$#$#Requirements: Pulse cannon, Shocksplinter, Crack level 8#Function: Fires a long-range beam that cuts through enemies at the cost of 2 Shock ammo#$#An unusual weapon that fires a thin instant-hit beam, hitting multiple targets while piercing defensive barriers and reflectors. When it hits a solid wall, it also causes a powerful splinter explosion. Not much is known about how the weapon system actually works, but if it's as relatively simple as combining a Pulse cannon with the volatile Shocksplinter, no-one's complaining.";
if (weaponlist[weaponinfo]==16)
screentext="16. VELOCITHOR V2-10#$#$#Requirements: MPFB Devastator, CFIS, Crack level 10#Function: Fires a beam that cuts through enemies and walls#$#Arguably the peak of Generation 1 Nanoweaponry, the Velocithor is a much rumored upgrade of the Cyclic Fusion Ignition System. It fires a massive beam consisting of thousands of electrically charged slugs, and can shoot clean through most materials. While less ammunition efficient than the regular CFIS, it ends battles so fast that it's hard to notice.";
if (weaponlist[weaponinfo]==17)
screentext="17. BANANA GUN#$#$#Requirements: All 8 basic Nanoweapons#Function: Fires a banana at the cost of 1 of each ammo type#$#Only the most demented of alien minds would create a Nanoweapon that launches squeaky inflatable rubber bananas with high-explosive payloads. This bizarre weapon requires that the user's Nanogun is equipped with the eight most common Tasen and Komato Nanoweapons in order to function, and requires 1 of each ammo type to fire. The creator of the Banana gun could probably explain why, but he died in a fit of hysteric laughter shortly after his creation was complete. It is not possible to combine the Banana gun with any other Nanoweapon, nor would such a thing likely be desirable.";
if (weaponlist[weaponinfo]==18)
screentext="18. MASSACRE#$#$#Requirements: ?#Function: ?#$#Already the next generation of Nanoweapons are being developed by Komato Imperial Research, and most of the projects are kept secret even from the mass-manufacturer Imperial Weapon Industries. The development costs and fickle nature of these weapons makes it nigh impossible planting one in a conventional Nanogun, however. Thus the Massacre was the first of the Generation 2 weapons to be considerably toned down in power, allowing it to be easily assimilated into a standard Nanogun. The only field tested copy was used on Ciretako, and if the results are any indication, anyone weilding these devastating weapons may experience a combat rush unlike anything seen before.";
if (weaponlist[weaponinfo]==19)
screentext="19. NULL DRIVER#$#$#Requirements: Beats me, it's not even supposed to run on standard Nanoguns#Function: Forces temporary gravity spikes? May bypass planetary shields, no maximum range#$#Guys, I'm sorry. I shouldn't have poked my nose in their business. I shouldn't have made that deal with Ansaksie, I knew she was way deeper in illegal weapons than we've ever been. This glitched prototype| trust me, don't even pull the trigger. The wormholes aren't exactly stable. Don't blame me if you start seeing things. This is supposedly the first step towards the Star Strike, so imagine the power output if it actually worked| the moment I've served my punishment for all the other stuff I cracked, I'm going undercover for the rest of my life, 'cause if Imperial Research traces this back to me we're all dead. Wipe this message as soon as you've read it. OmnikrakR out.";
if (weaponlist[weaponinfo]==20)
screentext="PASSIVE 1. STUN GUN#$#$#Requirements: None#Function: Fires a wide, short-range stunning blast#$#This short-ranged weapon deals no damage, but instead stuns any enemy capable of being stunned. Most enemies can only be stunned if they are standing on the ground. Particularly strong individuals may not be affected at all. You take no contact damage from stunned enemies.#$#Your Attack stat increases the stun time.";
if (weaponlist[weaponinfo]==21)
screentext="PASSIVE 2. IMPACT MACHINEGUN#$#$#Requirements: Tasen level 3#Function: Fires a single staggering bullet#$#Like all passive weapons, the Impact machinegun is not designed to damage Nanofields, but rather fires tiny Nanofield-enveloped bullets that strike enemies with enough force to knock them off balance without causing serious harm. It is best used to interrupt enemies preparing powerful attacks.#$#Your Attack stat increases the range of the projectile.";
if (weaponlist[weaponinfo]==22)
screentext="PASSIVE 3. IMPULSE LAUNCHER#$#$#Requirements: Tasen level 6#Function: Fires an impulse rocket#$#While Impulse rockets deal no damage, they are still capable of throwing enemies (and the user) clear across the room.#$#Your Attack stat increases the projectile speed, making it more difficult to dodge or reflect.";
if (weaponlist[weaponinfo]==23)
screentext="PASSIVE 4. MPFB NEUTRALIZER#$#$#Requirements: Tasen level 10#Function: Stuns all enemies in a 15 meter area around the user at the cost of 3 MPFB ammo#$#The massive shockwave emitted by this weapon harmlessly stuns enemies for a much longer period of time than the Stun gun. Most enemies can only be stunned if they are standing on the ground. Particularly strong individuals may not be affected at all. You take no contact damage from stunned enemies.#$#Your Attack stat increases the stun time.";
if (weaponlist[weaponinfo]==24)
screentext="PASSIVE 5. RESONANCE DISRUPTOR#$#$#Requirements: None#Function: Nullifies rockets and other projectiles#$#This strange Nanoweapon harmlessly dismantles the same mass-based projectiles as the Resonance reflector, and as such can be used against the Rocket launcher, Spread rockets, Shocksplinter, MPFB Devastator and more. However, particularly powerful projectiles and certain weapons may not be nullified, and will instead destroy the disruptor field.#$#Your Attack stat increases the active time of the disruptor field.";
if (weaponlist[weaponinfo]==25)
screentext="PASSIVE 6. PULSE LINKER#$#$#Requirements: Komato level 3#Function: Harmlessly drains Nano from enemies#$#The Pulse linker is unique among Generation 1 Nanoweapons, being able to transfer the base components of other Nanofields into the user's own. While extremely ammunition hungry, it drains more Nano per second the more powerful the Nanofield it targets, but particularly secure targets may reject the Pulse link entirely.#$#Your Attack stat increases the projectile speed and range.";
if (weaponlist[weaponinfo]==26)
screentext="PASSIVE 7. SHOCK BARRIER#$#$#Requirements: Komato level 6#Function: Sets up a barrier that nullifies rockets, other projectiles, and some lesser weapons#$#The barrier created by this Nanoweapon harmlessly dismantles the same mass-based projectiles as the Resonance reflector, and as such can be used against the Rocket launcher, Spread rockets, Shocksplinter, MPFB Devastator and more. It also blocks Machinegun and Pulse cannon fire. However, particularly powerful projectiles and certain weapons may not be nullified, and will instead destroy the disruptor field.#$#Your Attack stat increases the active time of the shock barrier.";
if (weaponlist[weaponinfo]==27)
screentext="PASSIVE 8. CHAIN FRACTAL INJECTION SHELL#$#$#Requirements: Komato level 10#Function: Performs an instant cracking attempt from a distance at the cost of 3 CFIS ammo#$#This weapon fires a tiny shell with a short-lived Nanofield that connects to whatever it hits, then attempts to inject a vast number of viruses. The payload becomes more sophisticated the higher the user's Crack stat, and will likely only be effective if they could manually crack the target themselves. If the injection succeeds, it will count as a successful crack for the user. If it fails, it will not count as a failed crack, nor will it have any negative consequences.#$#Your Attack stat increases the range of the projectile.";
}

//Enemy information (getinfo 11)
else if (getinfo==11){
if (enemylist[enemyinfo]==1)
screentext="1. BLIT#$#$#$#Blits are a strange breed of parasite, consisting entirely of Nano and resistant even to most Nanoweaponry. These pesky slug-like bugs infested one of the Tasen ships, and spread like wildfire when they landed on the surface of Earth. Alone, they're hardly a threat, but a large group of Blits can drain the armor off their victims at a frightening rate.";
if (enemylist[enemyinfo]==2)
screentext="2. TASEN TURRET#$#$#$#These defense turrets were set up by the Tasen to specifically protect the complex from humans. They also target anyone who doesn't have the proper subroutine programming in their personal Nanofield. The Tasen are by no means subtle when it comes to dealing with humans - some turrets weild absolutely devastating Nanoweapons, and will only stop firing when they have no more targets in their field of view, or when they are destroyed. Normally the ammunition being pumped into the turret makes it explode when shot, but if knocked off its support pole it becomes completely harmless.";
if (enemylist[enemyinfo]==3)
screentext="3. TASEN SCOUT#$#$#$#Armed with a burst Machinegun, these grunts are usually the first to be sent into hostile areas. Having not reacted entirely well to the drugs the Tasen use to boost their senses during combat training, the Scouts sometimes appear slow and dull, and most are incapable of dodging projectiles or performing similar feats that require quick reaction.";
if (enemylist[enemyinfo]==4)
screentext="4. TASEN SOLDIER#$#$#$#The shock troops of the Tasen, the Soldiers use both a Machinegun and Rocket launcher, making them a versatile foe. They are not very strong and are easy to overwhelm with more advanced weapons, but their agility allows them to dodge incoming projectiles, as long as they see them coming.";
if (enemylist[enemyinfo]==5)
screentext="5. TASEN COMMANDER#$#$#$#Commanders are fitted with an enormous claw which can smack their opponents clear across the room. They prefer explosive weaponry, and don't go down easily. The Commanders are usually the ones giving orders on the battlefield, but while their strength is respected by the lesser troops, they're too large to dodge projectiles.";
if (enemylist[enemyinfo]==6)
screentext="6. TASEN ELITE#$#$#$#These walking death machines carry exceptionally dense Nanofields that use gravitational forces to lock them in place, making them impossible to knock back - even with the most explosive of weapons. As the most powerful type of Tasen combatant, the Elites fear no enemy, and even boss around the Commanders on the battlefield. The only way to stop an Elite in its tracks is to hit it repeatedly with powerful weapons, so that it has no time to react. Like the Commanders, they are too big to duck incoming projectiles.";
if (enemylist[enemyinfo]==7)
screentext="7. TASEN SHREDDER#$#$#$#Despite three tonnes of compressed metal and ramming spikes, these armed personal hovercrafts are extremely mobile, giving Tasen ground troops a much-needed edge in most fights with the Komato. However, a rocket explosion or a well-timed melee attack could knock the driver off without damaging the vehicle too badly. Due to the unstable power cores, Shredders usually explode violently after taking heavy damage. Most are built to electrocute the driver if they contain Komato subroutine programming, to avoid Shredders being stolen during combat - a daring cracker could trigger this mechanism manually to take over a vehicle with an idle driver.";
if (enemylist[enemyinfo]==8)
screentext="8. KOMATO TROOPER#$#$#$#Equipped with Pulse cannons and heavy armor, a small squad of Troopers can survive most Tasen encounters even while heavily outnumbered. While not the most powerful of Komato, they get the job done, and can dodge projectiles with surprising agility. Some carry Hyper pulse, making them notably more dangerous.";
if (enemylist[enemyinfo]==9)
screentext="9. KOMATO BERSERKER#$#$#$#A frightening class of combatants that quickly earned its reputation in the Tasen-Komato war, these upgraded Komato Troopers are well trained with Resonance-type Nanoweapons. They have abandoned the Pulse cannon in favor of the Shocksplinter, and can use a local teleportation device to lunge head-first into battle, though it takes a few hours to recharge this device. Being too large to dodge projectiles, they use Resonance reflectors instead, but can only reflect projectiles they can see coming. Trained in handling high-powered impacts, Berserkers can keep their calm even while flying through the air.";
if (enemylist[enemyinfo]==10)
screentext="10. KOMATO BEAST#$#$#$#The unfortunate Komato Troopers who suffer severe brain damage from the combat drugs taken during training, and thus would be useless as ordinary soldiers, are instead turned into Beasts. While they lack armaments in the form of weaponry, their strength and speed makes up for it, as well as the fear they strike into the Tasen - the Beasts' armor contains extremely volatile Shocksplinter explosives. Cracking a Beast will usually cause a feedback loop in the mechanical part of its brain, stunning it for a considerable amount of time.";
if (enemylist[enemyinfo]==11)
screentext="11. KOMATO ASSASSIN#$#$#$#The Assassins are high-speed killers with an almost unlimited local teleportation ability, armed with dual Plasma cannons and laser daggers. Their light Nanofields and extreme reflexes allow them to teleport away from melee attacks and instant-hit weapons alike, depending on their skill, and their rapid-fire reflectors makes them completely impervious to mass-based projectile weaponry. An injured Assassin will drop some Nano and flee the battlefield, leaving any surviving opponents shaken and paranoid.";
if (enemylist[enemyinfo]==12)
screentext="12. KOMATO ANNIHILATOR#$#$#$#The war between the Tasen and Komato led to new types of cyborg soldiers being created, and the Annihilators are the top of the line - these walking tanks can withstand such incredible damage that they appear invincible. Incabable of feeling fear or pain, they are known to pick nearby victims up with one hand - even Tasen Elites - and force their Nanofields to self-destruct. The lesser Komato forces have a deep fear of their commanding Annihilators and obey their every word, even if it means their own death.";
if (enemylist[enemyinfo]==13)
screentext="13. KOMATO SKYSMASHER#$#$#$#Drops: Shocksplinter ammo#Weapon: Shocksplinter#$#Skysmashers are the original line of Komato defense robots, later stolen and modified by the Tasen into stationary turrets. Using gravitational manipulation to fly freely, they are able to target enemies more effectively than their Tasen-made counterpart, although they primarily focus on staying alive by using unpredictable movement patterns. The Skysmasher nickname comes from their widespread use against smaller Tasen vessels in surface combat, where hundreds of them would fly up and pelt incoming ships with Shocksplinter. The only way to destroy a Skysmasher without triggering the self-destruct explosives is with a direct physical attack, or a Resonance detonator.";
}

//Horse information (getinfo 12)
else if (getinfo==12){
screentext="MISSILE PONY X instructions#$#Steer with arrows. Shoot Space n^rds. Collect powerups.#$#$Standard n^rd: 100 points#$Blue n^rd: 200 points#$Green n^rd: 500 points#$Red n^rd: 1000 points#$Dark grey n^rd: 1700 points#$Final n^rd core brain: 9999 points#$#$Coin: 50 points#$Weapon: 1000 points#$Second weapon of same type: 2500 points#$Multihorse: 2000, 3000, 4000, 5000 points, then 2000 points#$Health: 50 points, or 200 points when at full health#$Shoot an enemy: 1 point#$#When you die, your score is reset to what you had when you entered the level. You earn a life for each level completed.";
}

//Horse information (getinfo 12)
else if (getinfo==13){
screentext="MISSILE PONY X hints#$#To get a high score, you need to learn the layout of each stage. Just try to survive your first time through the game.#$#The game doesn't save your high score, and there are no rewards for obtaining a high score.#$#The boss gets more agressive the closer it is to death. It also has a limit to how much damage it can take per second, so don't worry about what weapon you're using.#$#Damage per second (doubles when weapon is at level 2):#Blit Thrower: 10#Volcano Cannon: 20#Meteoric Shredder: 20#Rocket Gun: 60#Corona Lance: 40#$#My high score is 578370.$$$$$$$$$$$$$$$$$$$$$$$$$$$-Yukabacera";
}
