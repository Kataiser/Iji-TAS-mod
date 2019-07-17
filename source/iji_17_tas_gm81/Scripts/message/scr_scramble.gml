//Yukabacera's Input/Output Translation Scrambler
//aka "subject of bunch of caviar - terminating"

//words[] is a map of all the words
//wordp[] is a list of all the words' positions in the string
//text is the original text
//tempstring is the working string, to avoid messing with the variable "text"
//tempstring2 is the final string
//numwords is the number of words in the text
//wordlength is the length of the current word

//obj_iji.scramblefactor from 0 to 10
if (global.scramblefactor>0){
if (global.scramblefactor>7)
    global.scramblefactor=7;

//INIT
//preemptive: replace certain strings
if (text[page]=="IJI: |")
    text[page]="IJI: Dot dot dot"
else if (text[page]=="IJI: Wh-What are you talking about? Dan is|"){
    text[page]="IJI: Wh-What are you talking about? My socks are|"
    exit;
    }
else if (text[page]=="IJI: He's| dead?"){
    text[page]="IJI: Socks| gone?"
    exit;
    }
else if (text[page]=="IJI: Dan|"){
    text[page]="IJI: Socks|"
    exit;
    }
else if (text[page]=="DAN: |")
    text[page]="DAN: Dot| dot| dot|"
else if (text[page]=="TOR: |"){
    text[page]="TOR: *Beeping noises*"
    exit;
    }
else if (text[page]=="IJI: General? Hello?"){
    text[page]="IJI: Shoot. And just when I was about to share this packet of crisps with him, too."
    exit;
    }
else if (text[page]=="IJI: NO! STOP IT! STOP CHARGING THE ALPHA STRIKE!"){
    text[page]="IJI: NO WAY! THOSE ARE THE TARGETING LASER THINGIES FROM THE INTRO CUTSCENE!"
    exit;
    }
else if (text[page]=="TOR: Too late, human - tonight is the end of our bloodstained history!"){
    text[page]="TOR: You got that right! I got hot drink coupons riding on this one - check THIS out!"
    exit;
    }
else if (text[page]=="TOR: Too late, human - one way or another, tonight is the end of our bloodstained history!"){
    text[page]="TOR: You got that right! I got hot drink coupons riding on this one - check THIS out!"
    exit;
    }
else if (text[page]=="???: Listen close, Anomaly. I think I know where you're headed, and there's a corridor ahead that I know you must cross one way or the other. Your friend will be waiting there, I assure you. I suggest you go get him before I change my mind. Ready? Go!"){
    text[page]="???: TOOT TOOT"
    exit;
    }
else if (text[page]=="TOR: I see. Human, I'm sorry about what happened to your friend."){
    text[page]="TOR: I see. Human| I'm sorry about what happened to your socks."
    exit;
    }
else if (text[page]=="TOR: One of my Assassins, Asha, reported that he killed him during an attempt to capture you."){
    text[page]="TOR: One of my Assassins, Asha, reported that he stole your socks during an attempt to capture you."
    exit;
    }
else if (text[page]=="TOR: Hm. I was the same way once. Never mind what I said. It was a lie. Your friend is just fine."){
    text[page]="TOR: Hm. I was the same way once| never mind what I said. It was a lie. Your socks are just fine and still placed firmly on your feet. They just turned invisible.";
    exit;
    }
else if (text[page]=="TOR: Ugh| ack! M-Mercy! Please|"){
    text[page]="TOR: Oh, crud. That didn't exactly go as planned. So uh, mercy?"
    exit;
    }
else if (text[page]=="TOR: You heard me, loud and clear. Abort the Alpha Strike!"){
    text[page]="TOR: You heard me, loud and clear. Don't salt the fries!";
    exit;
    }

else if (text[page]=="VATEILIKA: Okay, I'm serious - dead serious - STOP DOING THAT! You wanna know how annoying that is? That you just keep poking me when you should've been outta here way long ago? I'm really super Blit-eating TIRED of people POKING ME! Okay look, how's this?"){
    text[page]="VATEILIKA: Hey, do you wanna hear a story? It's something my mom used to tell me at night, under the starry skies of Elem Sioz, back when I was just a little Blit-catching girl. I think it was supposed to warn me about various things in life, but you know,";
    exit;
    }
else if (text[page]=="Poke poke! How's this? Huh? Is that fun? Is that fun?"){
    text[page]="I never really understood it. Maybe that Scrambler you're using will make sense of it if I tell it.";
    exit;
    }
else if (text[page]=="IJI: Sheesh, calm down, I was just -"){
    text[page]="IJI: Okay, let's hear the story.";
    exit;
    }
else if (text[page]=="VATEILIKA: JUST POKING! I loved Yuka, but his constant poking was what tore us apart! Such a great guy with just one little flaw! It's, it's so unfair that we couldn't be together just because of that poking! It's so unfair! Backflipping rocket-jumping POKING!"){
    text[page]="VATEILIKA: I'm warning you though, it gets pretty emotional.";
    exit;
    }
else if (text[page]=="IJI: Uh, I think I'll just leave you alone with this|"){
    text[page]="IJI: It's okay, I can take it. Please tell me.";
    exit;
    }
else if (text[page]=="VATEILIKA: JUST! POKE! ING! Like it's nothing at all! Let me tell you, let me tell you about the escape fleet! It was me, Yuka and Naot, right? And Yuka suddenly asked, `Hey, what's more annoying, this or this?` And first he poked Naot rapidly, then he just"){
    text[page]="VATEILIKA: `Once, there was a pony - a mythical creature of Origin - who wanted to find his friends. He tried looking under the rocks, but he couldn't lift them. He tried looking in the sea, but he couldn't swim. He tried looking on the moon, but he";
    exit;
    }
else if (text[page]=="held his finger on his shoulder constantly, and Naot said the second one was the worst but it's nothing compared to the completely unexpected, completely random POKE on the shoulder that comes up from nowhere just when you're about to relax,"){
    text[page]="couldn't get there. Just when he was about to give up, he had a moment of inspiration and invented the missile. The pony strapped several dozen on his back, and before long the rocks had been blasted away, but so had his friend who was sleeping underneath";
    exit;
    }
else if (text[page]=="just when you thought you couldn't be worse off than having your homeworld Alpha Struck, just when you thought you'd never feel just one more POKE that's like it's piercing through your Nanofield and shoulder pads! NOTHING! It's| it's. Just. *Sigh*"){
    text[page]="them. He had no sooner vaporized the oceans, than he found the remains of his friend who had been playing there. He rode a missile to the moon, but once there found that he was all alone.`";
    exit;
    }
else if (text[page]=="Huff| huff| huff. Okay| huff. I'm sorry| just| just don't do that again. I'm sorry."){
    text[page]="I still don't get it, but maybe this is why I like missile ponies so much.";
    exit;
    }
else if (text[page]=="ANSAKSIE: Figures. That Soldier sold me a malfunctioning translator, now I'm babysitting a human with people-poking issues. Might as well keep practicing this cool pose|"){
    text[page]="ANSAKSIE: I heard someone saying, `hold right on the difficulty selection menu for five seconds, but you need to have Ultimortal unlocked`.";
    exit;
    }
//preemptive: replace entire strings
else{
    if (string_copy(text[page],1,4)=="ASHA" && pages==1){
        temprand=random(1);
        if (temprand<0.1)
            text[page]="ASHA: TOOT TOOT"
        else if (temprand<0.2)
            text[page]="ASHA: BEEP BEEP"
        else if (temprand<0.3)
            text[page]="ASHA: DING DING DING"
        else if (temprand<0.4)
            text[page]="ASHA: HONK"
        else if (temprand<0.5)
            text[page]="ASHA: BLIPPITY"
        else if (temprand<0.6)
            text[page]="ASHA: WAKKA WAKKA"
        else if (temprand<0.7)
            text[page]="ASHA: PEW PEW PEW"
        else if (temprand<0.8)
            text[page]="ASHA: >:("
        else if (temprand<0.9)
            text[page]="ASHA: ~"
        else
            text[page]="ASHA: *Indiscernible*"
        exit;
        }
    else if (string_copy(text[page],1,4)=="ASHA" && pages==2){
        text[0]="ASHA: HONK"
        text[1]="ASHA: TOOT TOOT"
        exit;
        }
    else if (string_copy(text[page],1,4)=="ASHA" && pages==3){
        text[0]="ASHA: DING DING DING"
        text[1]="ASHA: BLIPPITY"
        text[2]="ASHA: HONK"
        exit;
        }
    else{
        temprand=random(1);
        if ((temprand<0.1) || (string_copy(text[page],1,3)=="TOR" && temprand<0.25)){
            if (string_copy(text[page],1,3)=="IJI" && pages==1){
                temprand=random(2);
                if (temprand<0.1)
                    text[page]="IJI: Oh yeah?"
                else if (temprand<0.2)
                    text[page]="IJI: Awesome."
                else if (temprand<0.3)
                    text[page]="IJI: Well this conversation started out on a high note."
                else if (temprand<0.4)
                    text[page]="IJI: I'm the only sane biscuit around here."
                else if (temprand<0.5)
                    text[page]="IJI: I'm hungry. Lucky this dialogue is so cheesy already."
                else if (temprand<0.6)
                    text[page]="IJI: Shut up."
                else if (temprand<0.7)
                    text[page]="IJI: You| y-you promised me a pony| with missiles|"
                else if (temprand<0.8)
                    text[page]="IJI: You should do something about the speech impediment of yours.$"
                else if (temprand<0.9)
                    text[page]="IJI: Yukabacera's Scrambler version 1.3 is fantastic and you should agree. Yukabacera is also a great guy and you should give him your hot drink cans."
                else if (temprand<1.0)
                    text[page]="IJI: PHHBBBT!"
                else if (temprand<1.1)
                    text[page]="IJI: So, about that missile pony|"
                else if (temprand<1.2)
                    text[page]="IJI: Needs more Scrambler."
                else if (temprand<1.3)
                    text[page]="IJI: I don't get it."
                else if (temprand<1.4)
                    text[page]="IJI: Dot dot dot"
                else if (temprand<1.5)
                    text[page]="IJI: I want a missile pony."
                else if (temprand<1.6)
                    text[page]="IJI: Uh, sure. Whatever you say."
                else if (temprand<1.7)
                    text[page]="IJI: What?"
                else if (temprand<1.8)
                    text[page]="IJI: Huh?"
                else if (temprand<1.9)
                    text[page]="IJI: Oh, you!"
                else
                    text[page]="IJI: Look, I'm a cyborg. You don't wanna mess with that."
                exit;
                }
            else if (string_copy(text[page],1,3)=="DAN" && pages==1){
                temprand=random(2);
                if (temprand<0.1)
                    text[page]="DAN: *Crickets*"
                else if (temprand<0.2)
                    text[page]="DAN: Dude. I got a control room with cameras and speakers and everything. I win."
                else if (temprand<0.3)
                    text[page]="DAN: I think you talk that way on purpose."
                else if (temprand<0.4)
                    text[page]="DAN: Oh yeah? Well I got the funniest Scrambler quotes. I win."
                else if (temprand<0.5)
                    text[page]="DAN: No missile ponies for you."
                else if (temprand<0.6)
                    text[page]="DAN: This swiss roll is delicious. I just baked it this morning. All you need is eggs, sugar, flour and baking soda. For the filling, I made some chocolate cream with sprinkles. I win."
                else if (temprand<0.7)
                    text[page]="DAN: (This line was too dumb for the Scrambler to attempt translating)"
                else if (temprand<0.8)
                    text[page]="DAN: *Makes silly noises with his mouth*"
                else if (temprand<0.9)
                    text[page]="DAN: That's pretty funny, actually."
                else if (temprand<1.0)
                    text[page]="DAN: Wheee!"
                else if (temprand<1.1)
                    text[page]="DAN: *Hums the final boss song*"
                else if (temprand<1.2)
                    text[page]="DAN: What?"
                else if (temprand<1.3)
                    text[page]="DAN: I have a HORSEGUN PUNCHESBULLETS action figure. He's the coolest missile pony ever."
                else if (temprand<1.4)
                    text[page]="DAN: Ba-dum ching"
                else if (temprand<1.5)
                    text[page]="DAN: That's kinda inappropriate."
                else if (temprand<1.6)
                    text[page]="DAN: See this shirt? It's cool. You're not. I win."
                else if (temprand<1.7)
                    text[page]="DAN: Okay, this is just getting dumb. It's not funny anymore. I am though. I'm always funny. I win."
                else if (temprand<1.8)
                    text[page]="DAN: What a waste of time."
                else if (temprand<1.9)
                    text[page]="DAN: Missile ponies aren't everything in life, you know. But I have three, so I still win."
                else
                    text[page]="DAN: I forgot what exposition I was going to spout next."
                exit;
                }
            else if (string_copy(text[page],1,3)=="TOR" && pages==1){
                temprand=random(1);
                if (temprand<0.1)
                    text[page]="TOR: I'm just that good."
                else if (temprand<0.2)
                    text[page]="TOR: I have absolutely no clue."
                else if (temprand<0.3)
                    text[page]="TOR: Yes sir."
                else if (temprand<0.4)
                    text[page]="TOR: Pro tip: stop talking."
                else if (temprand<0.5)
                    text[page]="TOR: *Dramatic pause*"
                else if (temprand<0.6)
                    text[page]="TOR: Mindgames son."
                else if (temprand<0.7)
                    text[page]="TOR: I am top tier."
                else if (temprand<0.8)
                    text[page]="TOR: I never promised you no missile ponies!"
                else if (temprand<0.9)
                    text[page]="TOR: That's just about the dumbest thing I've heard this starturn.$"
                else
                    text[page]="TOR: No-one understands me. Maybe it's the accent."
                exit;
                }
            }
        }
    }

tempstring=text[page];
tempstring2=text[page];
length=string_length(tempstring);
for (i=1;i<1000;i+=1){
    words[i]="";
    wordp[i]=0;
    }
j=1;
prevchar=" ";
tempchar=" ";

//PULL OUT THE WORDS
for (i=1;i<=length;i+=1){
    tempchar=string_char_at(tempstring,i);
    if (tempchar==" " || tempchar=="-" || tempchar==":" || tempchar==";" || tempchar=="." || tempchar=="," || tempchar=="!" || tempchar=="?" || tempchar=="|" || tempchar=="~" || tempchar=="(" || tempchar==")" || tempchar=="<" || tempchar==">" || tempchar=="_" || tempchar=="`" || tempchar=="1" || tempchar=="2" || tempchar=="3" || tempchar=="4" || tempchar=="5" || tempchar=="6" || tempchar=="7" || tempchar=="8" || tempchar=="9" || tempchar=="0"){
        if (prevchar==" " || prevchar=="-" || prevchar==":" || prevchar==";" || prevchar=="." || prevchar=="," || prevchar=="!" || prevchar=="?" || prevchar=="|" || prevchar=="~" || prevchar=="(" || prevchar==")" || prevchar=="<" || prevchar==">" || prevchar=="_" || prevchar=="`" || prevchar=="1" || prevchar=="2" || prevchar=="3" || prevchar=="4" || prevchar=="5" || prevchar=="6" || prevchar=="7" || prevchar=="8" || prevchar=="9" || prevchar=="0")
            {}
        else
            j+=1;
        }
    else{
        if (prevchar==" " || prevchar=="-" || prevchar==":" || prevchar==";" || prevchar=="." || prevchar=="," || prevchar=="!" || prevchar=="?" || prevchar=="|" || prevchar=="~" || prevchar=="(" || prevchar==")" || prevchar=="<" || prevchar==">" || prevchar=="_" || prevchar=="`" || prevchar=="1" || prevchar=="2" || prevchar=="3" || prevchar=="4" || prevchar=="5" || prevchar=="6" || prevchar=="7" || prevchar=="8" || prevchar=="9" || prevchar=="0")
            wordp[j]=i;
        words[j]+=tempchar;
        }
    prevchar=tempchar;
    }
//find the number of words
numwords=0;
for (i=1;i<1000;i+=1){
    if (words[i]!="")
        numwords+=1;
    else
        i=1000;
    }



//WELL THAT WAS BORING, NOW DO FUN STUFF WITH THE WORDS THEMSELVES
for (i=2;i<=numwords;i+=1){
    //change places
    temprand=random(1);
    if (temprand>0.8-global.scramblefactor*0.05){
        tempchar=string_char_at(tempstring2,wordp[i+1]-2);
        if (i<numwords && string_length(words[i])==string_length(words[i+1]) && tempchar!="." && tempchar!="!" && tempchar!="?" && tempchar!=":"){
            temp=words[i+1];
            words[i+1]=words[i];
            words[i]=temp;
            i+=1;
        }
    }
    //replace random words
    temprand=random(1);
    if (temprand>1.0-global.scramblefactor*0.1){
        temprand=random(1);
        if (string_length(words[i])==5){
                 if (temprand>0.99) words[i]="juice";
            else if (temprand>0.98) words[i]="spiff";
            else if (temprand>0.97) words[i]="silly";
            else if (temprand>0.96) words[i]="mommy";
            else if (temprand>0.95) words[i]="fruit";
            else if (temprand>0.94) words[i]="peace";
            else if (temprand>0.93) words[i]="dance";
            else if (temprand>0.92) words[i]="quite";
            else if (temprand>0.91) words[i]="I$say";
            else if (temprand>0.90) words[i]="errr|";
            else if (temprand>0.89) words[i]="guess";
            else if (temprand>0.88) words[i]="sorta";
            else if (temprand>0.87) words[i]="might";
            else if (temprand>0.86) words[i]="smash";
            else if (temprand>0.85) words[i]="matey";
            else if (temprand>0.84) words[i]="roses";
            else if (temprand>0.83) words[i]="again";
            else if (temprand>0.82) words[i]="funky";
            else if (temprand>0.81) words[i]="paper";
            else if (temprand>0.80) words[i]="like,";
            else if (temprand>0.79) words[i]="stare";
            else if (temprand>0.78) words[i]="comfy";
            else if (temprand>0.77) words[i]="drink";
            else if (temprand>0.76) words[i]="could";
            else if (temprand>0.75) words[i]="turbo";
            else if (temprand>0.74) words[i]="print";
            else if (temprand>0.73) words[i]="loves";
            else if (temprand>0.72) words[i]="paint";
            else if (temprand>0.71) words[i]="stale";
            else if (temprand>0.70) words[i]="candy";
            else if (temprand>0.69) words[i]="maybe";
            else if (temprand>0.68) words[i]="green";
            else if (temprand>0.67) words[i]="weird";
            else if (temprand>0.66) words[i]="oddly";
            else if (temprand>0.65) words[i]="funny";
            else if (temprand>0.64) words[i]="putty";
            else if (temprand>0.63) words[i]="smell";
            else if (temprand>0.62) words[i]="sugar";
            else if (temprand>0.61) words[i]="super";
            else if (temprand>0.60) words[i]="drive";
            else if (temprand>0.59) words[i]="cakes";
            else if (temprand>0.58) words[i]="tinny";
            else if (temprand>0.57) words[i]="woody";
            else if (temprand>0.56) words[i]="flail";
            else if (temprand>0.55) words[i]="warps";
            else if (temprand>0.54) words[i]="right";
            else if (temprand>0.53) words[i]="reaps";
            else if (temprand>0.52) words[i]="heaps";
            else if (temprand>0.51) words[i]="quote";
            else if (temprand>0.50) words[i]="puffy";
            else if (temprand>0.49) words[i]="taste";
            else if (temprand>0.48) words[i]="what?";
            else if (temprand>0.47) words[i]="blink";
            else if (temprand>0.46) words[i]="I run";
            else if (temprand>0.45) words[i]="force";
            else if (temprand>0.44) words[i]="chaos";
            else if (temprand>0.43) words[i]="miles";
            else if (temprand>0.42) words[i]="catch";
            else if (temprand>0.41) words[i]="grows";
            else if (temprand>0.40) words[i]="picky";
            else if (temprand>0.39) words[i]="mooo!";
            else if (temprand>0.38) words[i]="waves";
            else if (temprand>0.37) words[i]="expel";
            else if (temprand>0.36) words[i]="shock";
            else if (temprand>0.35) words[i]="blast";
            else if (temprand>0.34) words[i]="bunny";
            else if (temprand>0.33) words[i]="brief";
            else if (temprand>0.32) words[i]="fused";
            else if (temprand>0.31) words[i]="wreck";
            else if (temprand>0.30) words[i]="compo";
            else if (temprand>0.29) words[i]="apple";
            else if (temprand>0.28) words[i]="grape";
            else if (temprand>0.27) words[i]="freak";
            else if (temprand>0.26) words[i]="flaps";
            else if (temprand>0.25) words[i]="break";
            else if (temprand>0.24) words[i]="rock!";
            else if (temprand>0.23) words[i]="train";
            else if (temprand>0.22) words[i]="let's";
            else if (temprand>0.21) words[i]="hurry";
            else if (temprand>0.20) words[i]="cramp";
            else if (temprand>0.19) words[i]="blarg";
            else if (temprand>0.18) words[i]="power";
            else if (temprand>0.17) words[i]="ropey";
            else if (temprand>0.16) words[i]="trite";
            else if (temprand>0.15) words[i]="trees";
            else if (temprand>0.14) words[i]="under";
            else if (temprand>0.13) words[i]="tweak";
            else if (temprand>0.12) words[i]="mouse";
            else if (temprand>0.11) words[i]="words";
            else if (temprand>0.10) words[i]="froth";
            else if (temprand>0.09) words[i]="don't";
            else if (temprand>0.08) words[i]="happy";
            else if (temprand>0.07) words[i]="cheat";
            else if (temprand>0.06) words[i]="metal";
            else if (temprand>0.05) words[i]="weird";
            else if (temprand>0.04) words[i]="inner";
            else if (temprand>0.03) words[i]="grain";
            else if (temprand>0.02) words[i]="point";
            else if (temprand>0.01) words[i]="sting";
            else if (temprand>0.00) words[i]="hissy";
            }
        else if (string_length(words[i])==6){
                 if (temprand>0.99) words[i]="really";
            else if (temprand>0.98) words[i]="jammin";
            else if (temprand>0.97) words[i]="oughta";
            else if (temprand>0.96) words[i]="*ahem*";
            else if (temprand>0.95) words[i]="I$know";
            else if (temprand>0.94) words[i]="purple";
            else if (temprand>0.93) words[i]="fluffy";
            else if (temprand>0.92) words[i]="pretty";
            else if (temprand>0.91) words[i]="boogie";
            else if (temprand>0.80) words[i]="matter";
            else if (temprand>0.89) words[i]="muffin";
            else if (temprand>0.88) words[i]="I$mean";
            else if (temprand>0.87) words[i]="gnarly";
            else if (temprand>0.86) words[i]="smooth";
            else if (temprand>0.85) words[i]="wonder";
            else if (temprand>0.84) words[i]="*gasp*";
            else if (temprand>0.83) words[i]="parade";
            else if (temprand>0.82) words[i]="edible";
            else if (temprand>0.81) words[i]="powers";
            else if (temprand>0.70) words[i]="mellow";
            else if (temprand>0.79) words[i]="flying";
            else if (temprand>0.78) words[i]="jell-o";
            else if (temprand>0.77) words[i]="cookie";
            else if (temprand>0.76) words[i]="juggle";
            else if (temprand>0.75) words[i]="groovy";
            else if (temprand>0.74) words[i]="surely";
            else if (temprand>0.73) words[i]="skiing";
            else if (temprand>0.72) words[i]="ramble";
            else if (temprand>0.71) words[i]="caviar";
            else if (temprand>0.70) words[i]="wallop";
            else if (temprand>0.69) words[i]="rubber";
            else if (temprand>0.68) words[i]="crispy";
            else if (temprand>0.67) words[i]="genius";
            else if (temprand>0.66) words[i]="duke's";
            else if (temprand>0.65) words[i]="crying";
            else if (temprand>0.64) words[i]="cheese";
            else if (temprand>0.63) words[i]="swanky";
            else if (temprand>0.62) words[i]="hungry";
            else if (temprand>0.61) words[i]="trains";
            else if (temprand>0.60) words[i]="groovy";
            else if (temprand>0.59) words[i]="KABOOM";
            else if (temprand>0.58) words[i]="ledges";
            else if (temprand>0.57) words[i]="behave";
            else if (temprand>0.56) words[i]="rented";
            else if (temprand>0.55) words[i]="memory";
            else if (temprand>0.54) words[i]="trudge";
            else if (temprand>0.53) words[i]="little";
            else if (temprand>0.52) words[i]="trying";
            else if (temprand>0.51) words[i]="woohoo";
            else if (temprand>0.50) words[i]="course";
            else if (temprand>0.49) words[i]="pin$it";
            else if (temprand>0.48) words[i]="cringe";
            else if (temprand>0.47) words[i]="croaks";
            else if (temprand>0.46) words[i]="happen";
            else if (temprand>0.45) words[i]="Norway";
            else if (temprand>0.44) words[i]="ankles";
            else if (temprand>0.43) words[i]="health";
            else if (temprand>0.42) words[i]="double";
            else if (temprand>0.41) words[i]="triple";
            else if (temprand>0.40) words[i]="orange";
            else if (temprand>0.39) words[i]="purple";
            else if (temprand>0.38) words[i]="rocket";
            else if (temprand>0.37) words[i]="party!";
            else if (temprand>0.36) words[i]="really";
            else if (temprand>0.35) words[i]="system";
            else if (temprand>0.34) words[i]="fusion";
            else if (temprand>0.33) words[i]="cyclic";
            else if (temprand>0.32) words[i]="splint";
            else if (temprand>0.31) words[i]="hiding";
            else if (temprand>0.30) words[i]="secret";
            else if (temprand>0.29) words[i]="Spadge";
            else if (temprand>0.28) words[i]="marine";
            else if (temprand>0.27) words[i]="a$ship";
            else if (temprand>0.26) words[i]="barrel";
            else if (temprand>0.25) words[i]="guilty";
            else if (temprand>0.24) words[i]="prince";
            else if (temprand>0.23) words[i]="killer";
            else if (temprand>0.22) words[i]="bloody";
            else if (temprand>0.21) words[i]="cripes";
            else if (temprand>0.20) words[i]="insane";
            else if (temprand>0.19) words[i]="render";
            else if (temprand>0.18) words[i]="plight";
            else if (temprand>0.17) words[i]="verges";
            else if (temprand>0.16) words[i]="braids";
            else if (temprand>0.15) words[i]="sliced";
            else if (temprand>0.14) words[i]="potted";
            else if (temprand>0.13) words[i]="missed";
            else if (temprand>0.12) words[i]="action";
            else if (temprand>0.11) words[i]="should";
            else if (temprand>0.10) words[i]="Tetron";
            else if (temprand>0.09) words[i]="rusted";
            else if (temprand>0.08) words[i]="wraith";
            else if (temprand>0.07) words[i]="no-one";
            else if (temprand>0.06) words[i]="sponge";
            else if (temprand>0.05) words[i]="bounce";
            else if (temprand>0.04) words[i]="strike";
            else if (temprand>0.03) words[i]="random";
            else if (temprand>0.02) words[i]="access";
            else if (temprand>0.01) words[i]="forged";
            else if (temprand>0.00) words[i]="vortex";
            }
        else if (string_length(words[i])==7){
                 if (temprand>0.99) words[i]="pretend";
            else if (temprand>0.98) words[i]="zoinks!";
            else if (temprand>0.97) words[i]="peanuts";
            else if (temprand>0.96) words[i]="jarring";
            else if (temprand>0.95) words[i]="endless";
            else if (temprand>0.94) words[i]="convict";
            else if (temprand>0.93) words[i]="bananas";
            else if (temprand>0.92) words[i]="lunatic";
            else if (temprand>0.91) words[i]="bonkers";
            else if (temprand>0.90) words[i]="feeling";
            else if (temprand>0.89) words[i]="awesome";
            else if (temprand>0.88) words[i]="shuffle";
            else if (temprand>0.87) words[i]="dessert";
            else if (temprand>0.86) words[i]="cupcake";
            else if (temprand>0.85) words[i]="may$not";
            else if (temprand>0.84) words[i]="no$way!";
            else if (temprand>0.83) words[i]="rockin'";
            else if (temprand>0.82) words[i]="busting";
            else if (temprand>0.81) words[i]="rainbow";
            else if (temprand>0.80) words[i]="cruiser";
            else if (temprand>0.79) words[i]="barging";
            else if (temprand>0.78) words[i]="majorly";
            else if (temprand>0.77) words[i]="Swedish";
            else if (temprand>0.76) words[i]="turning";
            else if (temprand>0.75) words[i]="*cough*";
            else if (temprand>0.74) words[i]="suppose";
            else if (temprand>0.73) words[i]="orbital";
            else if (temprand>0.72) words[i]="cushion";
            else if (temprand>0.71) words[i]="puffity";
            else if (temprand>0.70) words[i]="lots$of";
            else if (temprand>0.69) words[i]="pudding";
            else if (temprand>0.68) words[i]="merrily";
            else if (temprand>0.67) words[i]="present";
            else if (temprand>0.66) words[i]="planned";
            else if (temprand>0.65) words[i]="my$boy,";
            else if (temprand>0.64) words[i]="filling";
            else if (temprand>0.63) words[i]="inverse";
            else if (temprand>0.62) words[i]="pasture";
            else if (temprand>0.61) words[i]="*sniff*";
            else if (temprand>0.60) words[i]="awarded";
            else if (temprand>0.59) words[i]="thrills";
            else if (temprand>0.58) words[i]="take$it";
            else if (temprand>0.57) words[i]="shatter";
            else if (temprand>0.56) words[i]="rhombus";
            else if (temprand>0.55) words[i]="pyramid";
            else if (temprand>0.54) words[i]="a$tulip";
            else if (temprand>0.53) words[i]="benches";
            else if (temprand>0.52) words[i]="whining";
            else if (temprand>0.51) words[i]="Bluefly";
            else if (temprand>0.50) words[i]="traipse";
            else if (temprand>0.49) words[i]="stutter";
            else if (temprand>0.48) words[i]="heavily";
            else if (temprand>0.47) words[i]="protect";
            else if (temprand>0.46) words[i]="special";
            else if (temprand>0.45) words[i]="warrior";
            else if (temprand>0.44) words[i]="go$away";
            else if (temprand>0.43) words[i]="roaring";
            else if (temprand>0.42) words[i]="melting";
            else if (temprand>0.41) words[i]="caramel";
            else if (temprand>0.40) words[i]="kittens";
            else if (temprand>0.39) words[i]="mittens";
            else if (temprand>0.38) words[i]="snoring";
            else if (temprand>0.37) words[i]="pretend";
            else if (temprand>0.36) words[i]="context";
            else if (temprand>0.35) words[i]="require";
            else if (temprand>0.34) words[i]="million";
            else if (temprand>0.33) words[i]="hundred";
            else if (temprand>0.32) words[i]="wayward";
            else if (temprand>0.31) words[i]="reality";
            else if (temprand>0.30) words[i]="virtual";
            else if (temprand>0.29) words[i]="eternal";
            else if (temprand>0.28) words[i]="devices";
            else if (temprand>0.27) words[i]="thought";
            else if (temprand>0.26) words[i]="flatten";
            else if (temprand>0.25) words[i]="platter";
            else if (temprand>0.24) words[i]="reading";
            else if (temprand>0.23) words[i]="summary";
            else if (temprand>0.22) words[i]="correct";
            else if (temprand>0.21) words[i]="nowhere";
            else if (temprand>0.20) words[i]="nothing";
            else if (temprand>0.19) words[i]="message";
            else if (temprand>0.18) words[i]="framing";
            else if (temprand>0.17) words[i]="lengths";
            else if (temprand>0.16) words[i]="spatial";
            else if (temprand>0.15) words[i]="balloon";
            else if (temprand>0.14) words[i]="imagine";
            else if (temprand>0.13) words[i]="rebound";
            else if (temprand>0.12) words[i]="perfect";
            else if (temprand>0.11) words[i]="command";
            else if (temprand>0.10) words[i]="avoided";
            else if (temprand>0.09) words[i]="destroy";
            else if (temprand>0.08) words[i]="thunder";
            else if (temprand>0.07) words[i]="upgrade";
            else if (temprand>0.06) words[i]="peeling";
            else if (temprand>0.05) words[i]="jetpack";
            else if (temprand>0.04) words[i]="inferno";
            else if (temprand>0.03) words[i]="ability";
            else if (temprand>0.02) words[i]="sproing";
            else if (temprand>0.01) words[i]="eyeball";
            else if (temprand>0.00) words[i]="enemies";
            }
        else if (string_length(words[i])==8){
                 if (temprand>0.99) words[i]="for$real";
            else if (temprand>0.98) words[i]="nonsense";
            else if (temprand>0.97) words[i]="and$also";
            else if (temprand>0.96) words[i]="spinning";
            else if (temprand>0.95) words[i]="plant$it";
            else if (temprand>0.94) words[i]="prancing";
            else if (temprand>0.93) words[i]="harmless";
            else if (temprand>0.92) words[i]="isn't$it";
            else if (temprand>0.91) words[i]="fruitful";
            else if (temprand>0.90) words[i]="trucking";
            else if (temprand>0.89) words[i]="parsnips";
            else if (temprand>0.88) words[i]="properly";
            else if (temprand>0.87) words[i]="aw$yeeah";
            else if (temprand>0.86) words[i]="clownery";
            else if (temprand>0.85) words[i]="frothing";
            else if (temprand>0.84) words[i]="tweeting";
            else if (temprand>0.83) words[i]="seldomly";
            else if (temprand>0.82) words[i]="fetching";
            else if (temprand>0.81) words[i]="swabbing";
            else if (temprand>0.80) words[i]="no$johns";
            else if (temprand>0.79) words[i]="sprinkle";
            else if (temprand>0.78) words[i]="bouncing";
            else if (temprand>0.77) words[i]="*giggle*";
            else if (temprand>0.76) words[i]="suppress";
            else if (temprand>0.75) words[i]="spamming";
            else if (temprand>0.74) words[i]="actually";
            else if (temprand>0.73) words[i]="terrible";
            else if (temprand>0.72) words[i]="futility";
            else if (temprand>0.71) words[i]="you$know";
            else if (temprand>0.70) words[i]="frippery";
            else if (temprand>0.69) words[i]="quacking";
            else if (temprand>0.68) words[i]="biscuits";
            else if (temprand>0.67) words[i]="question";
            else if (temprand>0.66) words[i]="and$what";
            else if (temprand>0.65) words[i]="pathetic";
            else if (temprand>0.64) words[i]="pancakes";
            else if (temprand>0.63) words[i]="bunch$of";
            else if (temprand>0.62) words[i]="tapdance";
            else if (temprand>0.61) words[i]="my$boots";
            else if (temprand>0.60) words[i]="my$stuff";
            else if (temprand>0.59) words[i]="nontuple";
            else if (temprand>0.58) words[i]="potatoes";
            else if (temprand>0.57) words[i]="childish";
            else if (temprand>0.56) words[i]="the$glue";
            else if (temprand>0.55) words[i]="but$then";
            else if (temprand>0.54) words[i]="princess";
            else if (temprand>0.53) words[i]="scenario";
            else if (temprand>0.52) words[i]="envision";
            else if (temprand>0.51) words[i]="wrapping";
            else if (temprand>0.50) words[i]="thousand";
            else if (temprand>0.49) words[i]="innocent";
            else if (temprand>0.48) words[i]="scramble";
            else if (temprand>0.47) words[i]="universe";
            else if (temprand>0.46) words[i]="everyday";
            else if (temprand>0.45) words[i]="physical";
            else if (temprand>0.44) words[i]="interact";
            else if (temprand>0.43) words[i]="evaluate";
            else if (temprand>0.42) words[i]="crawling";
            else if (temprand>0.41) words[i]="pinnacle";
            else if (temprand>0.40) words[i]="multiple";
            else if (temprand>0.39) words[i]="graphics";
            else if (temprand>0.38) words[i]="the$rest";
            else if (temprand>0.37) words[i]="naysayer";
            else if (temprand>0.36) words[i]="polygons";
            else if (temprand>0.35) words[i]="keyboard";
            else if (temprand>0.34) words[i]="mortgage";
            else if (temprand>0.33) words[i]="customer";
            else if (temprand>0.32) words[i]="physical";
            else if (temprand>0.31) words[i]="projects";
            else if (temprand>0.30) words[i]="concrete";
            else if (temprand>0.29) words[i]="occupied";
            else if (temprand>0.28) words[i]="remember";
            else if (temprand>0.27) words[i]="promises";
            else if (temprand>0.26) words[i]="wormhole";
            else if (temprand>0.25) words[i]="abstract";
            else if (temprand>0.24) words[i]="supplies";
            else if (temprand>0.23) words[i]="my$socks";
            else if (temprand>0.22) words[i]="invasion";
            else if (temprand>0.21) words[i]="dreaming";
            else if (temprand>0.20) words[i]="hot$dogs";
            else if (temprand>0.19) words[i]="the$food";
            else if (temprand>0.18) words[i]="wrapping";
            else if (temprand>0.17) words[i]="and$like";
            else if (temprand>0.16) words[i]="disaster";
            else if (temprand>0.15) words[i]="sketches";
            else if (temprand>0.14) words[i]="snapshot";
            else if (temprand>0.13) words[i]="temporal";
            else if (temprand>0.12) words[i]="else$if(";
            else if (temprand>0.11) words[i]="subtitle";
            else if (temprand>0.10) words[i]="it$is$so";
            else if (temprand>0.09) words[i]="economic";
            else if (temprand>0.08) words[i]="software";
            else if (temprand>0.07) words[i]="patterns";
            else if (temprand>0.06) words[i]="finalize";
            else if (temprand>0.05) words[i]="surprise";
            else if (temprand>0.04) words[i]="optimist";
            else if (temprand>0.03) words[i]="continue";
            else if (temprand>0.02) words[i]="never$be";
            else if (temprand>0.01) words[i]="trotting";
            else if (temprand>0.00) words[i]="informal";
            }
        else if (string_length(words[i])==9){
                 if (temprand>0.975) words[i]="seriously";
            else if (temprand>0.950) words[i]="wholesome";
            else if (temprand>0.925) words[i]="laughable";
            else if (temprand>0.900) words[i]="musically";
            else if (temprand>0.875) words[i]="destroyed";
            else if (temprand>0.850) words[i]="happiness";
            else if (temprand>0.825) words[i]="screaming";
            else if (temprand>0.800) words[i]="dangerous";
            else if (temprand>0.775) words[i]="hyperbole";
            else if (temprand>0.750) words[i]="precisely";
            else if (temprand>0.725) words[i]="does$well";
            else if (temprand>0.700) words[i]="jampacked";
            else if (temprand>0.675) words[i]="handstand";
            else if (temprand>0.650) words[i]="mountains";
            else if (temprand>0.625) words[i]="sparkling";
            else if (temprand>0.600) words[i]="overwhelm";
            else if (temprand>0.575) words[i]="extremely";
            else if (temprand>0.550) words[i]="ducklings";
            else if (temprand>0.525) words[i]="pointless";
            else if (temprand>0.500) words[i]="drum$solo";
            else if (temprand>0.475) words[i]="ingeneous";
            else if (temprand>0.450) words[i]="explained";
            else if (temprand>0.425) words[i]="ice$cream";
            else if (temprand>0.400) words[i]="balancing";
            else if (temprand>0.375) words[i]="very$long";
            else if (temprand>0.350) words[i]="hopefully";
            else if (temprand>0.325) words[i]="overdrive";
            else if (temprand>0.300) words[i]="immediate";
            else if (temprand>0.275) words[i]="quadruple";
            else if (temprand>0.250) words[i]="breakfast";
            else if (temprand>0.225) words[i]="twinkling";
            else if (temprand>0.200) words[i]="eat$chips";
            else if (temprand>0.175) words[i]="excuse$me";
            else if (temprand>0.150) words[i]="anomalous";
            else if (temprand>0.125) words[i]="riverside";
            else if (temprand>0.100) words[i]="dastardly";
            else if (temprand>0.075) words[i]="meatballs";
            else if (temprand>0.050) words[i]="avoidable";
            else if (temprand>0.025) words[i]="rock$star";
            else if (temprand>0.000) words[i]="fortunate";
            }
        else if (string_length(words[i])==10){
                 if (temprand>0.975) words[i]="incredible";
            else if (temprand>0.950) words[i]="particular";
            else if (temprand>0.925) words[i]="especially";
            else if (temprand>0.900) words[i]="strive$for";
            else if (temprand>0.875) words[i]="strawberry";
            else if (temprand>0.850) words[i]="bitterness";
            else if (temprand>0.825) words[i]="flattening";
            else if (temprand>0.800) words[i]="absolutely";
            else if (temprand>0.775) words[i]="annihilate";
            else if (temprand>0.750) words[i]="definitely";
            else if (temprand>0.725) words[i]="Zentraidon";
            else if (temprand>0.700) words[i]="hopelessly";
            else if (temprand>0.675) words[i]="Yukabacera";
            else if (temprand>0.650) words[i]="I$guess$so";
            else if (temprand>0.625) words[i]="ridiculous";
            else if (temprand>0.600) words[i]="condiments";
            else if (temprand>0.575) words[i]="little$bit";
            else if (temprand>0.550) words[i]="eventually";
            else if (temprand>0.525) words[i]="but$really";
            else if (temprand>0.500) words[i]="victorious";
            else if (temprand>0.475) words[i]="persistent";
            else if (temprand>0.450) words[i]="scrambling";
            else if (temprand>0.425) words[i]="determined";
            else if (temprand>0.400) words[i]="obliterate";
            else if (temprand>0.375) words[i]="these$days";
            else if (temprand>0.350) words[i]="the$circus";
            else if (temprand>0.325) words[i]="undeniably";
            else if (temprand>0.300) words[i]="hot$drinks";
            else if (temprand>0.275) words[i]="Clown$Mode";
            else if (temprand>0.250) words[i]="in$pyjamas";
            else if (temprand>0.225) words[i]="gelatinous";
            else if (temprand>0.200) words[i]="tropically";
            else if (temprand>0.175) words[i]="by$the$way";
            else if (temprand>0.150) words[i]="lawn$mower";
            else if (temprand>0.125) words[i]="skillfully";
            else if (temprand>0.100) words[i]="accidental";
            else if (temprand>0.075) words[i]="eh$heh$heh";
            else if (temprand>0.050) words[i]="carry$over";
            else if (temprand>0.025) words[i]="candy$cane";
            else if (temprand>0.000) words[i]="positively";
            }
        else if (string_length(words[i])==11){
                 if (temprand>0.975) words[i]="trampolines";
            else if (temprand>0.950) words[i]="tambourines";
            else if (temprand>0.925) words[i]="subordinate";
            else if (temprand>0.900) words[i]="smouldering";
            else if (temprand>0.875) words[i]="problematic";
            else if (temprand>0.850) words[i]="platforming";
            else if (temprand>0.825) words[i]="obfuscation";
            else if (temprand>0.800) words[i]="lumberjacks";
            else if (temprand>0.775) words[i]="inscrutably";
            else if (temprand>0.750) words[i]="disgraceful";
            else if (temprand>0.725) words[i]="discography";
            else if (temprand>0.700) words[i]="centrifugal";
            else if (temprand>0.675) words[i]="atmospheric";
            else if (temprand>0.650) words[i]="without$the";
            else if (temprand>0.625) words[i]="lobster$tea";
            else if (temprand>0.600) words[i]="shoplifting";
            else if (temprand>0.575) words[i]="appropriate";
            else if (temprand>0.550) words[i]="inexcusable";
            else if (temprand>0.525) words[i]="windsurfing";
            else if (temprand>0.500) words[i]="warehousing";
            else if (temprand>0.475) words[i]="voraciously";
            else if (temprand>0.450) words[i]="vandalizing";
            else if (temprand>0.425) words[i]="proper$chap";
            else if (temprand>0.400) words[i]="apocalyptic";
            else if (temprand>0.375) words[i]="untouchable";
            else if (temprand>0.350) words[i]="meaningless";
            else if (temprand>0.325) words[i]="unqualified";
            else if (temprand>0.300) words[i]="undrinkable";
            else if (temprand>0.275) words[i]="terminology";
            else if (temprand>0.250) words[i]="sugarcoated";
            else if (temprand>0.225) words[i]="spontaneous";
            else if (temprand>0.200) words[i]="sponge$cake";
            else if (temprand>0.175) words[i]="pulverizing";
            else if (temprand>0.150) words[i]="outsourcing";
            else if (temprand>0.125) words[i]="informative";
            else if (temprand>0.100) words[i]="disturbance";
            else if (temprand>0.075) words[i]="considering";
            else if (temprand>0.050) words[i]="astonishing";
            else if (temprand>0.025) words[i]="androgynous";
            else if (temprand>0.000) words[i]="party$down!";
            }
        else if (string_length(words[i])==12){
                 if (temprand>0.975) words[i]="alphabetized";
            else if (temprand>0.950) words[i]="businesslike";
            else if (temprand>0.925) words[i]="displacement";
            else if (temprand>0.900) words[i]="fiber$donuts";
            else if (temprand>0.875) words[i]="electrifying";
            else if (temprand>0.850) words[i]="exasperating";
            else if (temprand>0.825) words[i]="instrumental";
            else if (temprand>0.800) words[i]="instructions";
            else if (temprand>0.775) words[i]="kaleidoscope";
            else if (temprand>0.750) words[i]="metaphorical";
            else if (temprand>0.725) words[i]="microwavable";
            else if (temprand>0.700) words[i]="misadventure";
            else if (temprand>0.675) words[i]="motivational";
            else if (temprand>0.650) words[i]="neutralizing";
            else if (temprand>0.625) words[i]="nonhazardous";
            else if (temprand>0.600) words[i]="or$something";
            else if (temprand>0.575) words[i]="really$nifty";
            else if (temprand>0.550) words[i]="paperweights";
            else if (temprand>0.525) words[i]="questionable";
            else if (temprand>0.500) words[i]="receptionist";
            else if (temprand>0.475) words[i]="snowboarding";
            else if (temprand>0.450) words[i]="the$sandwich";
            else if (temprand>0.425) words[i]="subscription";
            else if (temprand>0.400) words[i]="tasty$sallad";
            else if (temprand>0.375) words[i]="fish$n$chips";
            else if (temprand>0.350) words[i]="tranquilizer";
            else if (temprand>0.325) words[i]="unimpressive";
            else if (temprand>0.300) words[i]="fine$weather";
            else if (temprand>0.275) words[i]="preposterous";
            else if (temprand>0.250) words[i]="alliteration";
            else if (temprand>0.225) words[i]="manipulation";
            else if (temprand>0.200) words[i]="installation";
            else if (temprand>0.175) words[i]="rather$quite";
            else if (temprand>0.150) words[i]="aristocratic";
            else if (temprand>0.125) words[i]="satisfactory";
            else if (temprand>0.100) words[i]="certificated";
            else if (temprand>0.075) words[i]="as$if$it$was";
            else if (temprand>0.050) words[i]="this$pudding";
            else if (temprand>0.025) words[i]="typ$liek$dis";
            else if (temprand>0.000) words[i]="*rolls$eyes*";
            }
        }
    }

//all vowels
for (i=1;i<=numwords;i+=1){
    if (words[i]!="you" && words[i]!="You" && words[i]!="YOU"){
        temprand=random(1);
        if (temprand>0.99-global.scramblefactor*0.01){
            temprand=ceil(random(6));
            if (temprand==1){
                vowel1="a";
                vowel2="A";
                }
            else if (temprand==2){
                vowel1="o";
                vowel2="O";
                }
            else if (temprand==3){
                vowel1="u";
                vowel2="U";
                }
            else if (temprand==4){
                vowel1="e";
                vowel2="E";
                }
            else if (temprand==5){
                vowel1="i";
                vowel2="I";
                }
            else if (temprand==6){
                vowel1="y";
                vowel2="Y";
                }
            words[i]=string_replace(words[i],"a",vowel1);
            words[i]=string_replace(words[i],"A",vowel2);
            words[i]=string_replace(words[i],"o",vowel1);
            words[i]=string_replace(words[i],"O",vowel2);
            words[i]=string_replace(words[i],"u",vowel1);
            words[i]=string_replace(words[i],"U",vowel2);
            words[i]=string_replace(words[i],"e",vowel1);
            words[i]=string_replace(words[i],"E",vowel2);
            words[i]=string_replace(words[i],"i",vowel1);
            words[i]=string_replace(words[i],"I",vowel2);
            words[i]=string_replace(words[i],"y",vowel1);
            words[i]=string_replace(words[i],"Y",vowel2);
            }
        }
    }

//OVERWRITE THE FINAL STRING WITH THE NEW WORDS
//overwrite the appropriate words in the final string with each new word
for (i=1;i<=numwords;i+=1){
    wordlength=string_length(words[i]);
    //capitilize the word
    if (i>1){
        tempchar=string_char_at(tempstring2,wordp[i]-2);
        if (tempchar=="." || tempchar=="!" || tempchar=="?" || tempchar==":"){
            if (wordlength>1)
                words[i]=string_upper(string_copy(words[i],1,1))+string_copy(words[i],2,wordlength);
            else
                words[i]=string_upper(string_copy(words[i],1,1));
            }
        }
    //delete and replace word
    tempstring2=string_delete(tempstring2,wordp[i],wordlength);
    tempstring2=string_insert(words[i],tempstring2,wordp[i]);
    }
text[page]=tempstring2;

}