//Fetch screen covering texts here

//Records screen
if (tier=="main" && selected==6){
screentext="~~~~~~~~~~~Your~best~times~~~~~~Remar~Games'~best~times~~~~~~ ";

screentext+="~~~~~~~~~~~Normal:~"+string(global.nhours)+":";
if (global.nminutes)<10
    screentext+="0"
screentext+=string(global.nminutes)+".";
if (global.nseconds)<10
    screentext+="0"
screentext+=string(global.nseconds)+"~~~~~~~~~~~~Normal:~0:24.04~~~~~~~~ ";

screentext+="~~~~~~~~~~~~~Hard:~"+string(global.hhours)+":";
if (global.hminutes)<10
    screentext+="0"
screentext+=string(global.hminutes)+".";
if (global.hseconds)<10
    screentext+="0"
screentext+=string(global.hseconds)+"~~~~~~~~~~~~~~Hard:~0:30.12~~~~~~~~ ";

screentext+="~~~~~~~~~~Extreme:~"+string(global.ehours)+":";
if (global.eminutes)<10
    screentext+="0"
screentext+=string(global.eminutes)+".";
if (global.eseconds)<10
    screentext+="0"
screentext+=string(global.eseconds)+"~~~~~~~~~~~Extreme:~0:32.32~~~~~~~~ ";

screentext+="~~~~~~~Ultimortal:~"+string(global.uhours)+":";
if (global.uminutes)<10
    screentext+="0"
screentext+=string(global.uminutes)+".";
if (global.useconds)<10
    screentext+="0"
screentext+=string(global.useconds)+"~~~~~~~~Ultimortal:~0:38.12~~~~~~~~ ";

screentext+="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="~~~~~~~~~~~~~~~~~~~~~~~~~Posters~found:~";
numcounter=0;
if (global.poster1) numcounter+=1;
if (global.poster2) numcounter+=1;
if (global.poster3) numcounter+=1;
if (global.poster4) numcounter+=1;
if (global.poster5) numcounter+=1;
if (global.poster6) numcounter+=1;
if (global.poster7) numcounter+=1;
if (global.poster8) numcounter+=1;
if (global.poster9) numcounter+=1;
if (global.poster10) numcounter+=1;
if (numcounter<10)
    screentext+="~";
screentext+=string(numcounter);
screentext+="/10~~~~~~~~~~~~~~~~ ";

screentext+="~~~~~~~~~~~~~~~~~~~Extras~and~features:~";
numcounter=0;
if (global.extras1) numcounter+=3;
if (global.extras2) numcounter+=2;
if (global.extras3) numcounter+=2;
if (global.extras4) numcounter+=1;
if (global.extras5) numcounter+=1;
if (global.extras6) numcounter+=1;
if (global.extras7) numcounter+=1;
if (global.extras8) numcounter+=1;
if (numcounter<10)
    screentext+="~";
screentext+=string(numcounter);
screentext+="/12~~~~~~~~~~~~~~~~ ";

screentext+="~~~~~~~~~~~~~~~~~~~~~Max~ribbons~found:~";
if (global.maxribbons<10)
    screentext+="~";
screentext+=string(global.maxribbons);
screentext+="/10~~~~~~~~~~~~~~~~~~ ";

screentext+="~~~~~~~~Sudden~Death~Sectors~conquered:~";
numcounter=0;
if (global.sds1) numcounter+=1;
if (global.sds2) numcounter+=1;
if (global.sds3) numcounter+=1;
if (global.sds4) numcounter+=1;
if (global.sds5) numcounter+=1;
if (global.sds6) numcounter+=1;
if (global.sds7) numcounter+=1;
if (global.sds8) numcounter+=1;
if (global.sds9) numcounter+=1;
if (global.sds10) numcounter+=1;
if (numcounter<10)
    screentext+="~";
screentext+=string(numcounter);
screentext+="/10~~~~~~~~~~~~~~~~ ";

screentext+="~~~~~~~~~~~~~~Hidden~Skills~discovered:~~";
numcounter=1;
if (global.hiddenskill1) numcounter+=1;
if (global.hiddenskill2) numcounter+=1;
if (global.hiddenskill3) numcounter+=1;
screentext+=string(numcounter);
screentext+="/4~~~~~~~~~~~~~~~~~ ";

screentext+="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ";
screentext+="~~--------------~ENDGAME~RANKINGS~INFORMATION~--------------- ";
screentext+="~~~~~~~~KILLS~~~~~~~~~~~~~~~~DAMAGE~~~~~~~~CRACKS~minus~FAILS ";
screentext+="~~300:~One~Woman~Army~~400:~Hopeless~~~~~~~~~100:~Nanomaster~ ";
screentext+="~~200:~Genocidal~~~~~~~300:~Overconfident~~~~~70:~Cybergeek~~ ";
screentext+="~~~51:~Destroyer~~~~~~~200:~Careless~~~~~~~~~~40:~Adept~~~~~~ ";
screentext+="~~~~1:~Pacifistic~~~~~~100:~Skilled~~~~~~~~~~~20:~Lame~~~~~~~ ";
screentext+="~~~~0:~Innocent~~~~~~~~~~0:~Immortal~~~~~~~~~~~0:~Clueless~~~";
}



//Weapon information
if (tier=="wait2" && selected==2){
if (weaponinfo==1)
screentext="1. SHOTGUN#Damage: 72 armor (8 pellets, 9 armor / pellet)#Reload time: 1 second#DPS: 72 armor#Muzzle velocity: 420 m/s#Requirements: None#Function: Fires a wide, short-range pellet blast#$#A low-end, short-ranged Nanoweapon, the Shotgun is still capable of causing severe damage in close combat. Hardly anyone uses it anymore, but it shouldn't be underestimated, especially with a high Attack stat.";
if (weaponinfo==2)
screentext="2. MACHINEGUN#Damage: 10 armor#Reload time: 1/10 second#DPS: 100 armor#Muzzle velocity: 720 m/s#Requirements: Tasen level 3#Function: Fires weak but accurate long-range bullets#$#An accurate long-range Nanoweapon, the Machinegun is effective even against larger enemies. Most Tasen are equipped with one, though few higher-ranking ones rely on it as their primary weapon. Due to Iji's rare Tasen Nanogun, her Machinegun is more accurate and deals more damage than the standard Tasen version.";
if (weaponinfo==3)
screentext="3. ROCKET LAUNCHER#Damage: 2 HP#Reload time: 2 seconds#DPS: 1 HP#Muzzle velocity: 19 m/s#Requirements: Tasen level 6#Function: Fires a single rocket#$#Very powerful, and able to knock enemies flying, but the low travel speed of the rockets make them easier to duck or reflect than other projectiles.";
if (weaponinfo==4)
screentext="4. MPFB DEVASTATOR#Damage: 9 HP (3 projectiles, 3 HP / projectile)#Reload time: 3 seconds#DPS: 3 HP#Muzzle velocity: 24 m/s#Requirements: Tasen level 10#Function: Fires three high-explosive MPFB projectiles#$#The MPFB Devastator is one of the most powerful handheld Nanoweapons the Tasen have conceived. It launches three massively concentrated crystals that cause spontaneous nuclear fission upon contact with any object. The crystals even violently react to the air around them, making them glow in a light blue and enlargening the area of impact. A real beast of a weapon favored by Tasen Elites, as only they can fire the Devastator without flying back from the recoil.";
if (weaponinfo==5)
screentext="5. RESONANCE DETONATOR#Damage: 1 HP#Reload time: 4 seconds#DPS: 0.2 HP#Muzzle velocity: 50 m/s#Requirements: None#Function: Works exactly like your kick attack, but has a longer reach. This weapon can destroy Shield doors.#$#A weapon stolen from the Komato race, it creates a shockwave that can knock back enemies and send them flying, depending entirely on the user's Strength stat. It uses no ammunition, but has a rather long reload time.";
if (weaponinfo==6)
screentext="6. PULSE CANNON#Damage: 6 armor (3 projectiles, 2 armor / projectile)#Reload time: 1/30 second#DPS: 180 armor#Muzzle velocity: 27 m/s#Requirements: Komato level 3#Function: Fires a short-range pulse beam#$#A standard issue Nanoweapon among the Komato troops, the Pulse cannon is effective only at short range. Its clear green beam inflicts so much pain that enemies are usually unable to retaliate as their Nanofields are slowly destroyed. Due to Iji's rare Tasen Nanogun, her Pulse cannon deals twice the damage of the standard Komato version.";
if (weaponinfo==7)
screentext="7. SHOCKSPLINTER#Damage: 2 HP + 180 armor#Reload time: 2 seconds#DPS: 1 HP + 60 armor#Muzzle velocity: 23 m/s#Requirements: Komato level 6#Function: Fires a fast Shocksplinter projectile#$#A basic but powerful Komato weapon, its explosive projectiles shatter into six armor-draining spheres on impact. These 'splinters' explode after a short time or if they hit a solid object.";
if (weaponinfo==8)
screentext="8. CYCLIC FUSION IGNITION SYSTEM#Damage: 15 armor#Reload time: 1/30 second#DPS: 450 armor#Muzzle velocity: 5600 m/s#Requirements: Komato level 10#Function: Fires a short-range beam that cuts through enemies#$#This weapon ignites series of small fusion detonations in the Nanogun's core to power a high-velocity coilgun. The tiny slugs are quickly destroyed due to air friction, so the weapon has a short but devastating range, rippling through Nanofields and striking multiple enemies with ease. The Komato prefer not to use it in dangerous clashes with the Tasen, seen as how they could steal and reverse-engineer it.";
if (weaponinfo==9)
screentext="9. BUSTER GUN#Damage: 72 armor (8 pellets, 9 armor / pellet)#Reload time: 8/30 seconds#DPS: 270 armor#Muzzle velocity: 420 m/s#Requirements: Shotgun, Machinegun, Crack level 3#Function: Fires rapid Shotgun blasts#$#This weapon uses Machinegun ammo to fire pellet blasts more than thrice as fast as the regular Shotgun. While not as ammunition efficient as the Machinegun, the Buster gun takes out enemies much faster if they are close enough.";
if (weaponinfo==10)
screentext="10. SPLINTERGUN#Damage: 30 armor#Reload time: 1/10 seconds#DPS: 300 armor#Muzzle velocity: 23 m/s#Requirements: Machinegun, Shocksplinter, Crack level 7#Function: Fires armor-damaging `splinters` rapidly#$#This powerful Nanoweapon uses Machinegun ammo to fire small shards of Shocksplinter. While the splinters deal no knockback, they rapidly drain the armor of any target. Perfectly concentrated fire will take down opponents much faster and slightly more ammunition efficiently than the Machinegun.";
if (weaponinfo==11)
screentext="11. SPREAD ROCKETS#Damage: 6 HP#Reload time: 3 seconds#DPS: 2 HP#Muzzle velocity: 19 m/s#Requirements: Shotgun, Rocket launcher, Crack level 5#Function: Fires three spread-out rockets at the cost of three Launcher ammo#$#Offering twice the destructive power per second as the regular Rocket launcher, it makes for a formidable weapon to mow down hordes of enemies or clear out corridors. It's also a force to be reckoned with when dealing with huge, powerful foes. Berserkers have been specially trained in dealing with this Nanoweapon, usually resulting in all three rockets ending up reflected back at the user.";
if (weaponinfo==12)
screentext="12. NUKE#Damage: 5 HP#Reload time: 3 seconds#DPS: 1.67 HP#Muzzle velocity: 280 m/s#Requirements: Rocket launcher, MPFB Devastator, Crack level 9  Function: Deals instant moderate damage to all enemies within 15 meters of the user at the cost of 3 MPFB ammo#$#A sophisticated weapon despite its seemingly simplistic effect, the Nuke temporarily shields the person firing it from external thermal and kinetic energy, and detonates the surrounding area with an enormous force, destroying most lesser enemies in one blow. While the user is normally knocked to the ground from the resulting shockwave, he or she suffers no damage. Despite its effectiveness in instantly hitting multiple enemies, its damage output is inferior to the MPFB Devastator.";
if (weaponinfo==13){
if (global.rrkills)
screentext="13. RESONANCE REFLECTOR#Damage: 0#Reload time: 4 seconds#DPS: 0#Muzzle velocity: 50 m/s#Requirements: Shotgun, Resonance detonator, Crack level 4#Function: Reflects rockets and other projectiles#$#This devious Nanoweapon reflects mass-based projectiles, and as such can be used against the Rocket launcher, Spread rockets, Shocksplinter, MPFB Devastator and more. However, particularly powerful projectiles and certain weapons may not be nullified, and will instead destroy the reflector. The reflected projectile gets stronger or weaker depending on the user's Attack stat.#$#NOTE: reflected projectiles count as YOUR projectiles, and will award you kills when striking enemies.";
else
screentext="13. RESONANCE REFLECTOR#Damage: 0#Reload time: 4 seconds#DPS: 0#Muzzle velocity: 50 m/s#Requirements: Shotgun, Resonance detonator, Crack level 4#Function: Reflects rockets and other projectiles#$#This devious Nanoweapon reflects mass-based projectiles, and as such can be used against the Rocket launcher, Spread rockets, Shocksplinter, MPFB Devastator and more. However, particularly powerful projectiles and certain weapons may not be nullified, and will instead destroy the reflector. The reflected projectile gets stronger or weaker depending on the user's Attack stat.#$#NOTE: reflected projectiles will NOT award you kills when striking enemies.";
}
if (weaponinfo==14)
screentext="14. HYPER PULSE#Damage: 8 armor (4 projectiles, 2 armor / projectile)#Reload time: 1/30 second#DPS: 240 armor#Muzzle velocity: 30 m/s#Requirements: Resonance detonator, Pulse cannon, Crack level 6 Function: Damages enemies, and uses your Strength to knock them flying when their armor has been drained low enough. This weapon can destroy Shield doors.#$#The Nanoweapon of choice when plowing through weaker enemies, if one's Strength level is high enough - when an enemy has less than 33% of its maximum armor left, the Hyper pulse will inflict a violent blow as if the enemy had been struck with a Resonance detonator. In other words, this weapon requires both physical strength and weapon skill to handle well.";
if (weaponinfo==15)
screentext="15. PLASMA CANNON#Damage: 3 HP#Reload time: 2.5 seconds#DPS: 1.2 HP#Muzzle velocity: 6700 m/s#Requirements: Pulse cannon, Shocksplinter, Crack level 8#Function: Fires a long-range beam that cuts through enemies at the cost of 2 Shock ammo#$#An unusual weapon that fires a thin instant-hit beam, hitting multiple targets while piercing defensive barriers and reflectors. When it hits a solid wall, it also causes a powerful splinter explosion. Not much is known about how the weapon system actually works, but if it's as relatively simple as combining a Pulse cannon with the volatile Shocksplinter, no-one's complaining.";
if (weaponinfo==16)
screentext="16. VELOCITHOR V2-10#Damage: 35 armor#Reload time: 1/30 seconds#DPS: 1050 armor#Muzzle velocity: 12000 m/s#Requirements: MPFB Devastator, CFIS, Crack level 10#Function: Fires a beam that cuts through enemies and walls#$#Arguably the peak of Generation 1 Nanoweaponry, the Velocithor is a much rumored upgrade of the Cyclic Fusion Ignition System. It fires a massive beam consisting of thousands of electrically charged slugs, and can shoot clean through most materials. While less ammunition efficient than the regular CFIS, it ends battles so fast that it's hard to notice.";
if (weaponinfo==17)
screentext="17. BANANA GUN#Damage: 3 HP#Reload time: 4 seconds#DPS: 0.75 HP#Muzzle velocity: 9 m/s#Requirements: All 8 basic Nanoweapons#Function: Fires a banana at the cost of 1 of each ammo type#$#Only the most demented of alien minds would create a Nanoweapon that launches squeaky inflatable rubber bananas with high-explosive payloads. This bizarre weapon requires that the user's Nanogun is equipped with the eight most common Tasen and Komato Nanoweapons in order to function, and requires 1 of each ammo type to fire. The creator of the Banana gun could probably explain why, but he died in a fit of hysteric laughter shortly after his creation was complete. It is not possible to combine the Banana gun with any other Nanoweapon, nor would such a thing likely be desirable.";
if (weaponinfo==18)
screentext="18. MASSACRE#Damage: 96 HP#Reload time: 2.5 seconds#DPS: 34.8 HP#Muzzle velocity: 90 m/s#Requirements: None#Function: Fires a spread of rapidly exploding projectiles at the cost of 50 armor#$#Komato Imperial Research has managed to keep most Generation 2 weaponry secret even from the mass-manufacturer Imperial Weapon Industries. The nature of these weapons makes it nigh impossible planting one in a conventional Nanogun, and thus the Massacre was the first of the Generation 2 weapons to be considerably toned down in power, allowing it to be easily assimilated into a standard Nanogun. The only field tested copy was used on Ciretako - to devastating results.#$#Your Attack stat does not affect this weapon's damage output.";
if (weaponinfo==19)
screentext="PASSIVE 1. STUN GUN#Damage: 0#Reload time: 3 seconds#DPS: 0#Muzzle velocity: 160 m/s#Requirements: None#Function: Fires a wide, short-range stunning blast#$#This short-ranged weapon deals no damage, but instead stuns any enemy capable of being stunned. Most enemies can only be stunned if they are standing on the ground. Particularly strong individuals may not be affected at all. You take no contact damage from stunned enemies.#$#Your Attack stat increases the stun time.";
if (weaponinfo==20)
screentext="PASSIVE 2. IMPACT MACHINEGUN#Damage: 0#Reload time: 8/30 Seconds#DPS: 0#Muzzle velocity: 160 m/s#Requirements: Tasen level 3#Function: Fires a single staggering bullet#$#Like all passive weapons, the Impact machinegun is not designed to damage Nanofields, but rather fires tiny Nanofield-enveloped bullets that strike enemies with enough force to knock them off balance without causing serious harm. It is best used to interrupt enemies preparing powerful attacks.#$#Your Attack stat increases the range of the projectile.";
if (weaponinfo==21)
screentext="PASSIVE 3. IMPULSE LAUNCHER#Damage: 0#Reload time: 3 seconds#DPS: 0#Muzzle velocity: 20 to 28 m/s#Requirements: Tasen level 6#Function: Fires an impulse rocket#$#While Impulse rockets deal no damage, they are still capable of throwing enemies (and the user) clear across the room.#$#Your Attack stat increases the projectile speed, making it more difficult to dodge or reflect.";
if (weaponinfo==22)
screentext="PASSIVE 4. MPFB NEUTRALIZER#Damage: 0#Reload time: 4 seconds#DPS: 0#Muzzle velocity: 240 m/s#Requirements: Tasen level 10#Function: Stuns all enemies in a 15 meter area around the user at the cost of 3 MPFB ammo#$#The massive shockwave emitted by this weapon harmlessly stuns enemies for a much longer period of time than the Stun gun. Most enemies can only be stunned if they are standing on the ground. Particularly strong individuals may not be affected at all. You take no contact damage from stunned enemies.#$#Your Attack stat increases the stun time.";
if (weaponinfo==23)
screentext="PASSIVE 5. RESONANCE DISRUPTOR#Damage: 0#Reload time: 4 seconds#DPS: 0#Muzzle velocity: 50 m/s#Requirements: None#Function: Nullifies rockets and other projectiles#$#This strange Nanoweapon harmlessly dismantles the same mass-based projectiles as the Resonance reflector, and as such can be used against the Rocket launcher, Spread rockets, Shocksplinter, MPFB Devastator and more. However, particularly powerful projectiles and certain weapons may not be nullified, and will instead destroy the disruptor field.#$#Your Attack stat increases the active time of the disruptor field.";
if (weaponinfo==24)
screentext="PASSIVE 6. PULSE LINKER#Damage: 0#Reload time: 1/30 seconds#DPS: 0#Muzzle velocity: 21 to 30 m/s#Requirements: Komato level 3#Function: Harmlessly drains Nano from enemies#$#The Pulse linker is unique among Generation 1 Nanoweapons, being able to transfer the base components of other Nanofields into the user's own. While extremely ammunition hungry, it drains more Nano per second the more powerful the Nanofield it targets, but particularly secure targets may reject the Pulse link entirely.#$#Your Attack stat increases the projectile speed and range.";
if (weaponinfo==25)
screentext="PASSIVE 7. SHOCK BARRIER#Damage: 0#Reload time: 2 seconds#DPS: 0#Muzzle velocity: 0 m/s#Requirements: Komato level 6#Function: Sets up a barrier that nullifies rockets, other projectiles, and some lesser weapons#$#The barrier created by this Nanoweapon harmlessly dismantles the same mass-based projectiles as the Resonance reflector, and as such can be used against the Rocket launcher, Spread rockets, Shocksplinter, MPFB Devastator and more. It also blocks Machinegun and Pulse cannon fire. However, particularly powerful projectiles and certain weapons may not be nullified, and will instead destroy the disruptor field.#$#Your Attack stat increases the active time of the shock barrier.";
if (weaponinfo==26)
screentext="PASSIVE 8. CHAIN FRACTAL INJECTION SHELL#Damage: 0#Reload time: 2 seconds#DPS: 0#Muzzle velocity: 800 m/s#Requirements: Komato level 10#Function: Performs an instant cracking attempt from a distance at the cost of 3 CFIS ammo#$#This weapon fires a tiny shell with a short-lived Nanofield that connects to whatever it hits, then attempts to inject a vast number of viruses. The payload becomes more sophisticated the higher the user's Crack stat, and will likely only be effective if they could manually crack the target themselves. If the injection succeeds, it will count as a successful crack for the user. If it fails, it will not count as a failed crack, nor will it have any negative consequences.#$#Your Attack stat increases the range of the projectile.";
}

//Enemy information
else if (tier=="wait2" && selected==3){
if (enemyinfo==1)
screentext="1. BLIT#Invulnerable#Height: 0.1 m#Weapon: Nibble#$#Blits are a strange breed of parasite, consisting entirely of Nano and resistant even to most Nanoweaponry. These pesky slug-like bugs infested one of the Tasen ships, and spread like wildfire when they landed on the surface of Earth. Alone, they're hardly a threat, but a large group of Blits can drain the armor off their victims at a frightening rate.";
if (enemyinfo==2)
screentext="2. TASEN TURRET#Armor: 200   HP: 1#Weight: 1   Security: 1 + weapon#Height: 1.8 m#Drops: Nothing#Drops when cracked: ammo matching weapon#Weapon: Machinegun / Rocket launcher / Spread rockets / MPFB / Shocksplinter / Splintergun / Plasma cannon#$#These defense turrets were set up by the Tasen to specifically protect the complex from humans. They also target anyone who doesn't have the proper subroutine programming in their personal Nanofield. The Tasen are by no means subtle when it comes to dealing with humans - some turrets weild absolutely devastating Nanoweapons, and will only stop firing when they have no more targets in their field of view, or when they are destroyed. Normally the ammunition being pumped into the turret makes it explode when shot, but if knocked off its support pole it becomes completely harmless.";
if (enemyinfo==3)
screentext="3. TASEN SCOUT#Armor: 100   HP: 1#Weight: 3   Security: 2   Speed: 2#Height: 2.0 m#Drops: 2 Nano#Drops when cracked: machinegun ammo#Weapon: Machinegun#$#Armed with a burst Machinegun, these grunts are usually the first to be sent into hostile areas. Having not reacted entirely well to the drugs the Tasen use to boost their senses during combat training, the Scouts sometimes appear slow and dull, and most are incapable of dodging projectiles or performing similar feats that require quick reaction.";
if (enemyinfo==4)
screentext="4. TASEN SOLDIER#Armor: 100   HP: 2#Weight: 4   Security: 4   Speed: 3#Height: 2.0 m#Drops: 4 Nano, machinegun ammo, launcher ammo#Drops when cracked: launcher ammo#Weapons 1: Machinegun, Rocket launcher#Weapons 2: Machinegun, Spread rockets#$#The shock troops of the Tasen, the Soldiers use both a Machinegun and Rocket launcher, making them a versatile foe. They are not very strong and are easy to overwhelm with more advanced weapons, but their agility allows them to dodge incoming projectiles, as long as they see them coming.";
if (enemyinfo==5)
screentext="5. TASEN COMMANDER#Armor: 100   HP: 5#Weight: 6   Security: 5   Speed: 3#Height: 2.5 m#Drops: 8 Nano, launcher ammo#Drops when cracked: large launcher ammo#Weapons 1: Melee attack, Rocket launcher#Weapons 2: Melee attack, Spread rockets#$#Commanders are fitted with an enormous claw which can smack their opponents clear across the room. They prefer explosive weaponry, and don't go down easily. The Commanders are usually the ones giving orders on the battlefield, but while their strength is respected by the lesser troops, they're too large to dodge projectiles.";
if (enemyinfo==6)
screentext="6. TASEN ELITE#Armor: 100   HP: 15#Weight: 9   Security: 6   Speed: 4#Height: 2.9 m#Drops: 16 Nano, mach ammo, launcher ammo, MPFB ammo#Drops when cracked: MPFB ammo#Weapons 1: Melee attack, Machinegun, Rocket Launcher, MPFB#Weapons 2: Melee attack, Dual Machinegun, Spread rockets, MPFB#$#These walking death machines carry exceptionally dense Nanofields that use gravitational forces to lock them in place, making them impossible to knock back - even with the most explosive of weapons. As the most powerful type of Tasen combatant, the Elites fear no enemy, and even boss around the Commanders on the battlefield. The only way to stop an Elite in its tracks is to hit it repeatedly with powerful weapons, so that it has no time to react. Like the Commanders, they are too big to duck incoming projectiles.";
if (enemyinfo==7)
screentext="7. TASEN SHREDDER#Special armor: 1000#Driver weight: 4   Security: 5   Speed: 18#Shredder height: 1.8 m#Driver drops: 4 Nano, machinegun ammo, launcher ammo#Driver drops when cracked: launcher ammo#Weapon: Machinegun#$#Despite three tonnes of compressed metal and ramming spikes, these armed personal hovercrafts are extremely mobile, giving Tasen ground troops a much-needed edge in most fights with the Komato. However, a rocket explosion or a well-timed melee attack could knock the driver off without damaging the vehicle too badly. Due to the unstable power cores, Shredders usually explode violently after taking heavy damage. Most are built to electrocute the driver if they contain Komato subroutine programming, to avoid Shredders being stolen during combat - a daring cracker could trigger this mechanism manually to take over a vehicle with an idle driver.";
if (enemyinfo==8)
screentext="8. KOMATO TROOPER#Armor: 200   HP: 3#Weight: 6   Security: 5   Speed: 3#Height: 1.9 m#Drops: 8 Nano, pulse ammo, shocksplinter ammo#Drops when cracked: shocksplinter ammo#Weapons 1: Pulse cannon, Shocksplinter#Weapons 2: Hyper pulse, Shocksplinter#$#Equipped with Pulse cannons and heavy armor, a small squad of Troopers can survive most Tasen encounters even while heavily outnumbered. While not the most powerful of Komato, they get the job done, and can dodge projectiles with surprising agility. Some carry Hyper pulse, making them notably more dangerous.";
if (enemyinfo==9)
screentext="9. KOMATO BERSERKER#Armor: 200   HP: 10#Weight: 8   Security: 7   Speed: 4#Height: 2.5 m#Drops: 16 Nano, shocksplinter ammo#Drops when cracked: shocksplinter ammo#Weapons 1: Reso detonator, Reso reflector, Shocksplinter#Weapons 2: Reso detonator, Reso reflector, Plasma cannon#$#A frightening class of combatants that quickly earned its reputation in the Tasen-Komato war, these upgraded Komato Troopers are well trained with Resonance-type Nanoweapons. They have abandoned the Pulse cannon in favor of the Shocksplinter, and can use a local teleportation device to lunge head-first into battle, though it takes a few hours to recharge this device. Being too large to dodge projectiles, they use Resonance reflectors instead, but can only reflect projectiles they can see coming. Trained in handling high-powered impacts, Berserkers can keep their calm even while flying through the air.";
if (enemyinfo==10)
screentext="10. KOMATO BEAST#Armor: 100   HP: 1#Weight: 7   Security: 6   Walkspeed: 4   Runspeed: 8#Height: 1.9 m#Drops: 8 Nano#Drops when cracked: shocksplinter ammo#Weapon: Body slam#$#The unfortunate Komato Troopers who suffer severe brain damage from the combat drugs taken during training, and thus would be useless as ordinary soldiers, are instead turned into Beasts. While they lack armaments in the form of weaponry, their strength and speed makes up for it, as well as the fear they strike into the Tasen - the Beasts' armor contains extremely volatile Shocksplinter explosives. Cracking a Beast will usually cause a feedback loop in the mechanical part of its brain, stunning it for a considerable amount of time.";
if (enemyinfo==11)
screentext="11. KOMATO ASSASSIN#Armor: 200   HP: 3 (Normal), 4 (Hard), 5 (Extreme)#Weight: 1   Security: 9   Speed: -#Height: 2.2 m#Drops: 16 Nano#Drops when cracked: large shocksplinter ammo#Weapons: Teleport, Laser daggers, dual Plasma cannon, automatic Resonance reflector#$#The Assassins are high-speed killers with an almost unlimited local teleportation ability, armed with dual Plasma cannons and laser daggers. Their light Nanofields and extreme reflexes allow them to teleport away from melee attacks and instant-hit weapons alike, depending on their skill, and their rapid-fire reflectors makes them completely impervious to mass-based projectile weaponry. An injured Assassin will drop some Nano and flee the battlefield, leaving any surviving opponents shaken and paranoid.";
if (enemyinfo==12)
screentext="12. KOMATO ANNIHILATOR#Armor: 200   HP: 80#Weight: 10   Security: 10   Speed: 3#Height: 4.7 m#Drops: 64 Nano, large pulse*3, large shock*3#Drops when cracked: large shocksplinter ammo*3#Weapons 1: Destroy, Plasma cannon, Shocksplinter, Hyper pulse  Weapons 2: Destroy, Plasma cannon, Shocksplinter, Splintergun#$#The war between the Tasen and Komato led to new types of cyborg soldiers being created, and the Annihilators are the top of the line - these walking tanks can withstand such incredible damage that they appear invincible. Incabable of feeling fear or pain, they are known to pick nearby victims up with one hand - even Tasen Elites - and force their Nanofields to self-destruct. The lesser Komato forces have a deep fear of their commanding Annihilators and obey their every word, even if it means their own death.";
if (enemyinfo==13)
screentext="13. KOMATO SKYSMASHER#Armor: 400   HP: 1#Weight: 1   Security: 25   Speed: 5#Height: 1.0 m#Drops: Shocksplinter ammo#Weapon: Shocksplinter#$#Skysmashers are the original line of Komato defense robots, later stolen and modified by the Tasen into stationary turrets. Using gravitational manipulation to fly freely, they are able to target enemies more effectively than their Tasen-made counterpart, although they primarily focus on staying alive by using unpredictable movement patterns. The Skysmasher nickname comes from their widespread use against smaller Tasen vessels in surface combat, where hundreds of them would fly up and pelt incoming ships with Shocksplinter. The only way to destroy a Skysmasher without triggering the self-destruct explosives is with a direct physical attack, or a Resonance detonator.";
if (enemyinfo==14)
screentext="14. KOMATO SENTINEL#Armor: 200   HP: 200#Weight: 1   Security: 40   Speed: 20#Height: 4.0 m#Drops: Nothing#Weapons: Spread rockets, Rocket hail, Multidirectional Splintergun, Multidirectional MPFB, Plasma cannon, Tackle, Nuke#$#Sentinels are automated destroyers fitted with triple composite alloy armor and a limited free-floating ability. Most armor-damaging weapons don't even scratch them, and their heavy internal plating makes explosives half as effetive. Relying on simple charge-and-attack tactics with everything from MPFB Devastators to their own body, Sentinels are programmed with the belief that they are indestructible, which lets their confidence and tireless barrage of attacks overwhelm their opponents. The Cyclic Fusion Ignition System and Velocithor V2-10 can pierce through their armor, however.";
if (enemyinfo==15)
screentext="15. KOMATO GENERAL#Armor: 200   HP: 900#Weight: 250   Security: 250   Speed: -#Height: 13.2 m#Drops: Nothing#---WEAPON TIERS---#1: Ragebomb, Tyrian claw, Ripper, Heavy stomp#2: Arch devastator, Ultra shotgun, Zica burst, Fractal rockets 3: Death hail, Eruption, Megamissile#Final: Charge, Nanostorm#$#These high-ranking Komato pilot the most advanced Eidolon-class exoskeletons available, designed to destroy entire armies by themselves. Like the Sentinels, they carry triple composite alloy armor making nearly all armor-damaging Nanoweapons useless, although they still take full damage from explosives. No Generals have ever fallen in battle.";
if (enemyinfo==16)
screentext="16. TASEN ELITE KROTERA#HP: 25#Height: 2.9 m#Superweapon: Rapid-fire MPFB#$#A Tasen top dog whose word is law. He believes himself to always be right, as long as enough people agree with him - or as long as he tells them to. He believes that there is nothing wrong with destroying mankind to make room for the Tasen, but not all of his troops seem to share that sentiment.";
if (enemyinfo==17)
screentext="17. KOMATO ASSASSIN ASHA#HP: 8#Height: 2.2 m#Superweapon: Raining Laser daggers#$#An Assassin whose extreme skills are matched only by his ego. While he constantly boasts about one day being recognized as the best unit in the Komato Imperial Army, he certainly has the bite to match his bark. When it really matters, his down-to-earth logic proves that behind his cocky attitude lies a calculating, militaristic heart of stone.";
if (enemyinfo==18)
screentext="18. KOMATO SENTINEL PROXIMA#HP: 200#Height: 4.0 m#Superweapon: Nuke#$#One of the deadly (and highly expensive) Sentinels of the Imperial Army, Proxima doesn't take direct orders from anyone but General Tor. It resides aboard a Fleet 1089 Phantom Reaver, ready to be dropped to ground level and automatically target the most powerful nearby enemy unit.";
if (enemyinfo==19)
screentext="19. KOMATO ANNIHILATOR IOSA#HP: 400#Height: 4.7 m#Superweapon: Velocithor V2-10#$#The famous immortal warmachine of the Komato Imperial Army, this young woman has since her successful implantation of a unique Nanofield been dubbed `Iosa the Invincible`. Her psyche was left remarkably intact after watching her friends and colleagues blown to dust by a full-force Tasen Alpha Strike, which she alone survived thanks to her Nanofield. Her hatred for the Tasen is beyond fanatic.";
if (enemyinfo==20)
screentext="20. IOSA THE INVINCIBLE#HP: ?#Height: 2.3 m#Supermove: Storm of death#$#Outside her exoskeleton, the unarmed Iosa is even more terrifying. With her blazing speed, razor-sharp claws and impenetrable Nanofield, she's a terror most foes don't behold for long.";
if (enemyinfo==21)
screentext="21. KOMATO ASSASSIN ASHA 2#HP: 10#Height: 2.2 m#Superweapons: Megasmash, Plasma rage, Plasma vortex#$#Already known for losing his right arm in combat, Asha was further insulted by losing to the Human Anomaly in Sector 5. Back with a vengeance in Sector X, he is determined to destroy the Anomaly or die trying. With a severely improved arsenal and upgraded teleportation ability, the odds weigh heavily in his favor. Despite having learnt to avoid any and all possible attacks, however, his one weakness is that he still considers the low-end Shotgun and Buster gun too harmless to take seriously.";
if (enemyinfo==22)
screentext="22. KOMATO GENERAL TOR#HP: 900 (Normal), 1050 (Hard), 1200 (Extreme)#Height outside exoskeleton: 4.0 m#Superweapon: Phantom Hammer#$#A battleworn hero of the Komato Imperial Army, Tor is content with going with the flow of Komato politics, never being stupid enough to raise a voice against the Army or High Command. He does what he is told, and does it exceptionally well. He has mixed feelings for Origin, but is prepared to destroy it if necessary. Known as the killer of the legendary Tasen war hero, Hel Sarie, he is as feared as he is hated among the Tasen.";
if (enemyinfo==23)
screentext="23. TASEN SOLDIER YUKABACERA#HP: 50#Height: 2.0 m#Superweapons: Plasma cannon, CFIS#$#A laid-back Soldier who took his own advice and used his collection of rare hot drink cans to buy his way on board the first and only fleet to escape Elem Sioz, one of the last Tasen planets, before the Komato Alpha Struck it. Yukabacera doesn't really care for the world outside of his recreational cracking, news reading and hot drink drinking, but he's no dummy - using his ties with various crackers, he's obtained some truly remarkable weapons and Nanofield upgrades. He has even written a somewhat defective translator for human languages, a game for standard Tasen terminals, and a sound pitcher for his own helmet to give him a more imposing voice. Soldier Vateilika shares many of Yukabacera's interests and has received both outlawed and homebrew technologies from him.";
if (enemyinfo==24)
screentext="24. KOMATO ASSASSIN ANSAKSIE#HP: ?#Height: 2.2 m#Superweapon: Massacre#$#This selectively pacifistic Assassin carries several illegal Nanoweapons and Generation 2 Nanoguns `acquired` for her by Imperial Research insiders, and her helmet contains a live tracking system of potential targets, including Komato Generals. She is opposed to weapons development and the morals of the Imperial Army, but is on the other hand fiercely dogmatic and self-involved, having killed Komato who simply did not agree with her. Ansaksie rarely uses the weapons she carries, as it could draw the attention of her superiors. Iji would have to be very pacifistic to earn her respect, should she want it.";
if (enemyinfo==25)
screentext="25. HUMAN ANOMALY#Unit name: Iji Kataiser   Armor: 100   HP: 20#Weight: 1   Security: 1   Speed: 6#Height: 1.9 m#Skills: Air brake, Teching, Nanofield reboot, Retribution#$#The Anomaly's deceptively low statistics and standard Tasen Soldier Nanofield are outweighed by a her nimble frame and massive array of Nanoweapons. Her Nanogun is a rare Tasen-made replica of a Komato General's Generation 2 Pre-loader, meaning it preemptively generates and loads ammunition into the firing mechanism, letting it fire even the heaviest of Nanoweapons without warning. This priceless replica is so small in size as to be carried by a single Trooper, unlike the huge versions normally weilded by the Generals outside of their exoskeletons, making it an extremely valuable target for the Komato fleet that descended on Origin.";
}

//Poster info
else if (tier=="wait"){
    //Posters
    if (waittype==1){
        if (global.poster1 && global.poster2 && global.poster3 && global.poster4 && global.poster5 && global.poster6 && global.poster7 && global.poster8 && global.poster9 && global.poster10){
            screentext="CONGRATULATIONS!#$#You found all ten of the Posters! Amazing!";
            }
        else{
            screentext="FINDING THE POSTERS#$#The Posters are strewn around the complex in the most well-hidden areas. Some of them can only be found on Normal difficulty, but none of them require you to play on a higher difficulty level. The Nanofield reboot and Rocket jump can aid you in finding the Posters, as well as most other advanced techniques you can discover in the enemy logbooks. Certain unlockables will also help you in your search (but not in reaching the Posters themselves, in other words, no unlockables will alter the gameplay itself to favor the finding of Posters). Learn to use the enemies and architecture to your advantage, and be creative - most of all, make sure you understand the function of each and every Nanoweapon in your arsenal.#$#Good luck!";
            }
        }
    //Old turbo mode
    else if (waittype==2){
        if (global.turbomode==1){
            screentext="TURBO MODE EXPLANATION#$#Turbo mode `DOUBLE` will double the maximum Frames Per Second limit. On a good computer, the game will run twice as fast at a constant framerate. On a slow computer, however, you may not notice a difference, or the game will run choppily.";
            }
        if (global.turbomode==2){
            screentext="TURBO MODE EXPLANATION#$#Turbo mode `NO LIMIT` will remove the maximum Frames Per Second limit. The game speed now depends entirely on the power of your computer, and may run at over five to ten times the normal speed at a highly fluctating frame rate. On a slow computer, however, you may not notice a difference, or the game will run choppily.";
                }
            }
    //No gamma
    else if (waittype==4){
        screentext="SCREEN COLOR EXPLANATION#$#The full-screen color changing effects may cause the game to slow down. Turn this option off only if you experience this problem. For technical reasons this option is only available here in the Main menu.";
        }
    //Detail level
    else if (waittype==5){
        screentext="SPECIAL EFFECTS EXPLANATION#$#Setting this option to `low` limits or removes many effects where possible, plus reduces detail like debris and smoke puffs. Only set this to `low` if you experience problems with slowdown. For technical reasons this option is only available here in the Main menu.";
        }
    //No blood
    else if (waittype==6){
        screentext="HUMAN BLOOD EXPLANATION#$#Setting this option to `off` removes the red blood coming from Iji and other humans.";
        }
    //Secret information
    else if (waittype==7){
        screentext="Welcome to the top secret options menu!#$#Be aware that these options may break the game in interesting ways. Also, they will be set to `off` when you quit the game.#$#Setting any of these options to `on` will set the game timer to 10.00 at the start of each Sector to prevent accidentally getting an unfairly low speedrun time.";
        }
    //Secret option 1
    else if (waittype==8){
        screentext="1.6 REFLECTOR EXPLANATION#$#When this option is set to `on`, projectiles reflected with the Resonance reflector will NOT award you kills when they strike enemies.#$#Certain in-game text will be updated to reflect this.";
        }
    //Secret option 2
    else if (waittype==9){
        screentext="NO MERCY EXPLANATION#$#When this option is set to `on`, Iji will have only 0.2 seconds of mercy invulnerability after being damaged, without exception. This is true no matter what state she is in, so certain enemy attacks can hit Iji repeatedly when they couldn't do so before.#$#Be warned that this mode has plenty of instant death situations and is extremely unfair - or perhaps more fair from the enemies' point of view.";
        }
    //Secret option 3
    else if (waittype==10){
        screentext="FIRE ANYTIME EXPLANATION#$#When this option is set to `on`, Iji may fire while jumping, falling and ducking, although she has no animations for this.";
        }
    //Secret option 4
    else if (waittype==11){
        screentext="RANDOM STATIONS EXPLANATION#$#When this option is set to `on`, whenever you attempt to spend a Point in a Cyborg station, it is assigned to a random stat.#$#Be warned that performing a Nanofield reboot in this mode will reset your level to zero and remove ALL of your Points and Nano.";
        }
    //Secret option 5
    else if (waittype==12){
        screentext="NO RELOADS EXPLANATION#$#When this option is set to `on`, Iji's weapons have no reload time, with the exception of those with infinite ammunition and the Chain Fractal Injection Shell (for technical reasons).";
        }
    //Supersecret information
    else if (waittype==13){
        screentext="Welcome to Iji's final secret!#$#There's nothing more to give you, so I might as well give you access to the game's debug mode, which was used for testing during development. You've already done everything there is to do, so why not just let you obliterate the game?#$#There really are no more secrets, but using the debug mode will let you do all sorts of unintended things, like skipping story triggers and messing up the boss fights. Please read the instructions for each key, and have fun!#$#Setting debug mode to `on` will set the game timer to 10.00 at the start of each Sector to prevent accidentally getting an unfairly low speedrun time.#$#Of course, the debug mode will not work on reallyjoel's dad difficulty.";
        }
    //Supersecret option 1
    else if (waittype==14){
        screentext="DEBUG MODE EXPLANATION#$#F7: Mute loopable sounds#F8: Go to end cutscene (may cause problems)#F9: Give Tor 3 chargeballs#Shift: Count various#Backspace: level skip/level advance (also works in HORSEGUN)#Shift+Page down: Give all extras (but you already have them|)#Page down: Increase all stats#End: Increase ammo#Home: Destroy enemies and nearby doors#Insert: Spawn Nano overload (if difficulty level permits it)#Delete: Give all weapons including secret ones#Keypad +: Level up#Keypad -: Max Health, Jump and Armor#Keypad *: Press while holding arrow key to warp#Space+Page up: Lock enemies and show killdata on mouseover#Shift+Page up: Fill killdata#Ctrl+Page up: Show killdata discrepancies";
        }
    }
