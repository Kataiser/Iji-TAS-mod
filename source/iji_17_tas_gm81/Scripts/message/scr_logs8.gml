obj_iji.startmusics=0;

//Logs in Sector 8
if (global.textid=="text801"){
text[0]="Author: Tasen soldier HT896:IJGA#$#Subject: Annihilators";
text[1]="The rumors have just been confirmed; there are indeed Annihilators among the Komato assault teams. Who knows why they brought 'em, we're doomed anyway - probably 'cause they get a kick out of seeing us slaughtered. If I ever live to see one of";
text[2]="those things, I'm not even gonna fight it| I'll just stand there and let it kill me in the fastest, most painless way possible.";
pages=3;}

if (global.textid=="text802"){
text[0]="Author: Komato Recreational Unit#$#Subject: Ultra Minefield Run And Seek";
text[1]="Arguably the most lethal game ever created, the rules are quite simple. First, find or plant a large minefield and gather every participant in its center. Then it's time to decide who will be the `seeker` and who will be the `judge` - this is usually";
text[2]="decided with a large fight, of which the two participants with the least bruises win. When the seeker and judge have been chosen, they remain in the middle of the field, and the seeker closes his eyes. The other players start running randomly";
text[3]="around the field, and whenever someone steps on a mine, the seeker must point in the direction in which it happened and guess the distance to the explosion. If he succeeds, with a pre- determined margin of error, the judge gives him one point. This";
text[4]="continues until ten shortcycles have passed, at which point any player who is still alive counts against the seeker's points. If the seeker has a positive score, he wins, and can expect a thorough and utter beating by the survivors, who are usually";
text[5]="not very pleased with not having become the `seeker` at the start of the game.";
pages=6;}

if (global.textid=="text803"){
text[0]="Author: Komato Informational Center#$#Subject: Advertisement";
text[1]="Tired of parasites eating your Nanogun for breakfast? Being nibbled on by those pesky little Blits? With BLIT-AWAY SPRAY, all your worries will be over! Order now, and get a free Assassin- class Laser dagger! Note: Due to the aggressive (and heavily";
text[2]="armed) local animal rights activists, BLIT-AWAY SPRAY has not been tested on any live organisms, including Blits. Please use this product at your own risk.";
pages=3;}

if (global.textid=="text804"){
text[0]="Author: Komato Imperial Weapon Industries#$#Subject: Berserker 23948-78397-45533: FOR YOUR EYES ONLY";
text[1]="Project 00002-90103-00525 is still starturns from mass- production. We may have come a long way in deciphering Nanotechnology, but had the race responsible for it still been around, our work would have been a lot easier. Those paranoid";
text[2]="bastards encrypted everything as heavily as possible, seemingly out of spite. At any rate, the only safe way to conceive this weapon is combining an MPFB Devastator with a Cyclic Fusion Ignition System. Either they did the same, or most of the";
text[3]="weapons we have now are simply lesser modules of their more potent technologies. Imperial Weapons Industries looks to a future where we shape Nanotechnology to our will, rather than guessing at its inner workings. The next generation may be";
text[4]="coming, and a Massacre prototype was indeed used on Ciretako. Until then, this is the best handheld Generation 1 stuff we've got.";
pages=5;}

if (global.textid=="text805"){
text[0]="Author: Komato Berserker 62392-36489-32164#$#Subject: Our future";
text[1]="Let's be realistic here. The Tasen are soon to be extinct, and from that point on, we'll no longer have a common enemy. We'll need more leaders - powerful leaders to keep the people together, as internal conflict should remain in our past. General Tor and";
text[2]="Annihilator Iosa are perfect examples of who should be our role models - Tor cares about his people, while Iosa is so powerful they couldn't even kill her with an Alpha Strike. The way things are going now, history will surely treat her well. The more";
text[3]="young leaders like her and General Tor we get, the better.";
pages=4;}

if (global.textid=="text806"){
obj_iji.tasenkills=0;
obj_iji.komatokills=0;
for (i=1;i<340;i+=1){
    if (global.killdata[i]>0)
        obj_iji.tasenkills+=1;
    }
for (i=501;i<626;i+=1){
    if (global.killdata[i]>0)
        obj_iji.komatokills+=1;
    }
if (global.totkills>7*global.neutralkc && obj_iji.tasenkills>obj_iji.komatokills*4){
    text[0]="Author: Komato Berserker 23948-78397-45533#$#Subject: The Anomaly is taking sides";
    text[1]="The Human Anomaly is apparently attempting to get on our good side, as she has thus far killed considerably more Tasen than Komato. Be aware that not a single Berserker nor Annihilator considers this foolish display worthy of even the slightest";
    text[2]="consideration. Your orders remain to kill on sight.";
    pages=3;
    }
else if (global.totkills>7*global.neutralkc && obj_iji.komatokills>obj_iji.tasenkills*4){
    text[0]="Author: Komato Berserker 23948-78397-45533#$#Subject: The Anomaly is taking sides";
    text[1]="Be aware that the Human Anomaly is either working for the Tasen or deliberately protecting them - she has thus far killed considerably more of our troops than theirs. It matters little should those weaklings find her a champion. Your orders remain";
    text[2]="to kill on sight.";
    pages=3;
    }
else if (global.totkills>7*global.neutralkc){
    text[0]="Author: Komato Berserker 23948-78397-45533#$#Subject: The Anomaly is a third party";
    text[1]="Be aware that the Human Anomaly's remarkable kill record includes large amounts of both Tasen and Komato. However, it matters little that she is to be considered a third party - your orders remain to kill on sight.";
    pages=2;
    }
else{
    text[0]="Author: Komato Berserker 23948-78397-45533#$#Subject: The Anomaly is not defenseless";
    text[1]="The Human Anomaly may not be considered particularly violent, but has thus far managed to survive encounters with both Assassin Asha and a Sentinel. She is not to be taken lightly - your orders remain to kill on sight.";
    pages=2;
    }
}

if (global.textid=="text807"){
text[0]="Author: Tasen Elite MA109:MXPC#$#Subject: Trust no-one!";
text[1]="Reports of the Human Anomaly keep flying, but don't be deceived - the Komato may be fighting her, but she's not on our side either!";
pages=2;}

if (global.textid=="text808"){
text[0]="Author: Tasen Center of Advertisement#$#Subject: Lift upgrades";
text[1]="Yes, the brilliant minds who most probably fixed the catapulting Lift bug have once again outdone themselves, with a new integrated soundchip that receives new Lift music every cycle. Just tune in the chip to the nearest legal frequency, making";
text[2]="sure to skip the illegal ones so as to not accidentally trigger a global war alarm, and prepare your aural tastebuds for the sensation of such unforgettable classics as `Exploding Eardrums That Are Also On Fire`, `It's awesome being purple` and `Hel";
text[3]="Sarie will kick you in the face`. So, don't delay! Order an upgrade for your Lifts right now, and get a free Elite Krotera action figure!";
pages=4;}

if (global.textid=="text809"){
text[0]="Author: Tasen Soldier JG922:ZMNS#$#Subject: Vending machines?";
text[1]="The human food containers in this area seem to require the use of an elaborate mechanism to obtain their contents. I guess they're the humans' equivalent of vending machines, but less sophisticated. Gets me thinking of the ones back on Lonimadel|";
text[2]="they had all kinds of fruity stuff, and I don't mean `fruity` as in `contains the crushed flesh of innocent living organisms that happened to be born on a tree`. I mean packaging adorned by such brilliant slogans as `It's all-natural!` So is nerve poison.";
pages=3;}

if (global.textid=="text810"){
text[0]="Author: Tasen Soldier TJ57:PJVI#$#Subject: Human message";
text[1]="After decrypting the language used by the local humans, we began translating everything we could get our hands on to aid our research. They possess mainly primitive technologies and equipment, and their research on `megacores` and `neoweapons`";
text[2]="is inherently inferior to Nanotechnology. I thought we'd find some answers to the Human Anomaly around here, but we've had no luck. The only thing I could find was a short promotional message. It reads:";
text[3]="Welcome to the weapons branch of the D.C.M.F.P.R. military research facility. Located on the outskirts of a peaceful industrial region, we care about our employees and their work. When you first arrive, the healthy open spaces of Sector 3,";
text[4]="home of software development, will welcome you with a smile. The nearby Sector 2 contains the local medical services, and a quick trip to the main storage in Sector 4 will get you geared up for work in no time. Sector 5 houses the storage control and";
text[5]="materials analysis department, while Sector 6 has the main neoweapon and genetics research laboratories. Sector 7 handles exotic technology and reverse-engineering research, which along with Sector 6 constitutes the most highly classified part of";
text[6]="the weapons branch. Sector 8 is the main recreation area, offering free entertainment network access, games, swimming and sports. Dotted around the Sectors are guard stations, operating from the security gateway in Sector 9. Your performance is of";
text[7]="great import to the other Sectors of the facility, among them the top-class Sector X focusing on military A.I. applications and alternative energy sources. Please enjoy your stay in the facility, and have a safe day.";
pages=8;}

if (global.textid=="text811"){
text[0]="Author: Komato Trooper 87644-06156-86207#$#Subject: Dangerous potentials";
text[1]="A scanning of the Human Anomaly has been completed, and the results are frightening. She's using a standard Tasen Soldier Nanofield, but her innate skills are likely more powerful than she realizes. Air braking, Teching and Nanofield rebooting are";
text[2]="well known among the initiated, but this last, unnamed ability I've never even heard of. As far as I understand, the requirements for triggering it is to have 5 or less HP left, eight basic Nanoweapons and at least 1 ammo for each of them.";
text[3]="As for actually activating the ability, it seems she needs to hold "+chr(global.usekey)+" while getting up after being knocked to the ground. The ability consumes 1 ammo for all of the Anomaly's weapons and expels it in a massive storm of explosions while shielding her";
text[4]="from damage, but requires her Nanogun to be in Active mode. Luckily this technique seems so difficult to perfom, she will never discover it.";
pages=5;
if (!global.hiddenskill3){
    global.hiddenskill3=1;
    scr_readsum();
    if (wrongsum){
        global.erasetop=0;
        global.topmessage="SAVEFILE CORRUPT; UNABLE TO RECORD HIDDEN SKILL";
        global.ignorestation=90;
        }
    else{
        global.erasetop=0;
        global.topmessage="HIDDEN SKILL `RETRIBUTION` PERMANENTLY RECORDED TO PAUSE MENU";
        global.ignorestation=120;
        scr_sound("glo_cracksuccess");
        scr_save(0);
        }
    }
}

if (global.textid=="text812"){
text[0]="Author: Komato Berserker 21435-56097-16959#$#Subject: We've passed the point of no return";
text[1]="Few seem to like thinking about our future, and rightly so. The only other sentient species we have ever discovered was already long dead, and thanks to their Nanotechnology, we've grown so advanced we've been able to hunt the Tasen clear across deep";
text[2]="space without a single colony escaping our grasp, at least to our knowledge. With the Alpha Strike, we now have reliable planet killer technology - and the Star Strike may soon become reality. However, we colonize an exponentially accelerating number of";
text[3]="planets, so it's simply impossible for us to ever be extinguished if we keep growing at this pace. Back on Origin we were ruled by nature, but now the galaxy belongs to us. The Komato will be eternal.";
pages=4;}

if (global.textid=="text813"){
text[0]="Author: Tasen Universal Logbook#$#Subject: Summary of history, Part 3: The Tasen-Komato war";
text[1]="The fury with which the Komato Imperial Army commenced its first strike was beyond belief. Tasen starships and civilian colonies alike were raided and destroyed, and the number of casualties grew astronomical as they invaded our homeworlds. The Komato";
text[2]="eventually developed a space-to-ground Nanoweapon called the Alpha Strike, which let a single fleet lay ruin to an entire planet. We created a planetary shielding system to defend our worlds, but even when we finally managed to steal the Komatos'";
text[3]="Alpha Strike technology, so had they in turn stolen our planetary shielding system - since then, every time a part of our population settled down on a new planet and erected a planetary shield, the Komato found them, fought them in surface combat,";
text[4]="destroyed the planetary shield generators and proceeded to Alpha Strike the planet. Our population rapidly dwindled, until it consisted of only a million individuals - out very last colony.";
pages=5;}

if (global.textid=="text814"){
text[0]="Author: Komato Independent Newsprogram Archive#$#Subject: Zentraidon";
text[1]="`Zentraidon` is a taboo word related to the extinct race we discovered, meaning self-annihilation through rapid technological advancement and arrogance. It was the fate they themselves met. Many mysteries still surround this species and the remains of";
text[2]="their homeworld, but our only hope of total galactic dominance lies in fully reverse-engineering the technology they mastered. It is considered treason to suggest that once this happens we will be headed for Zentraidon as well.";
pages=3;}

if (global.textid=="text815"){
text[0]="Author: Komato Trooper 01923-98870-58987#$#Subject: Reply(7): Let's discuss it rationally";
text[1]="No, YOU shut your typing fingers for a moment. The people COMPRISING the Army INSTIGATED the war. No High Commander lightturns from the action got it more in for the sorry bastards than your war-weary front guys. The total number of";
text[2]="Komato-Komato conflicts DROPPED by like a thousand when the Tasen hunt started but the casualties went UP. They blindsided us in so many battles they had to blast the propaganda twice over. Bottom line: shut up.";
pages=3;}

if (global.textid=="text816"){
text[0]="Author: Komato Trooper 02283-31551-70694#$#Subject: Reply: Generation 2 stuff";
text[1]="No, it's mostly fine to talk about unless you admit to owning one without permission. All Generation 2 Nanoweapons require their own unique Nanoguns though, so it's not like you could easily hide one! Also, only super-high-ranking people have access to";
text[2]="them, and they're EXTREMELY illegal to use in actual combat 'cause the Tasen might steal them. I heard that Annihilator Iosa actually owns a Pre-loading Vortex cannon - wouldn't it be awesome to get to see it just once?";
pages=3;}
