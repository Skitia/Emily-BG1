BEGIN X3milyB 

//Imoen 1
CHAIN IF ~InParty("X3mily")
InParty("Imoen")
See("X3mily")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyImoen1","GLOBAL",0)~ THEN X3milyB X3milyImoen1
@0 // ~Imoen. Are you and <CHARNAME> siblings?~
DO ~SetGlobal("X3milyImoen1","GLOBAL",1)~
== BIMOEN @1 // ~Nah. We just grew up together. Feels like that, though~
== X3milyB @2 // ~You seem really close. I got a little envious, even. My brother and I just did not get along.~
== BIMOEN @3 // ~Really? Why's that?~
== X3milyB @4 // ~Is everything the answer? He hated that I beat him at archery. Or that I'm possibly the product of another woman? Or older? He even hates that I eat sweets. Calls them devil's food.~
== BIMOEN @5 // ~Your brother sounds like he's all puffy huffy.~
== X3milyB @6 // ~Yeah! Whatever that means.~
EXIT

//Ajantis 1 
CHAIN IF ~InParty("X3mily")
See("X3mily")
InParty("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyAjantis1","GLOBAL",0)~ THEN X3milyB X3milyAjantis1
@7 // ~Ajantis, do you think your order would take someone like me?~
DO ~SetGlobal("X3milyAjantis1","GLOBAL",1)~
== BAJANT @8 // ~You are no knight, Emily, nor squire. Your heart is noble, but such a life is not for everyone.~
== X3milyB @9 // ~But I feel the same compelling and call as your order. Surely as an ally, at least?
== BAJANT @10 // ~Your dedication is admirable. You would be a fine ally, Emily.~
== X3milyB @11 // ~Thank you, Ajantis. I will keep you safe.~
== BAJANT @12 // ~And I, you, Emily, by my honor.~
EXIT

//Alora 1
CHAIN IF ~InParty("Alora")
See("X3mily")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyAlora1","GLOBAL",0)~ THEN X3milyB X3milyAlora1
@13 // ~You look so adorable, Alora!~
DO ~SetGlobal("X3milyAlora1","GLOBAL",1)~
== BALORA @14 // ~Oh, uh, thank you!
== X3milyB @15 // ~I've always admired your kind. So small yet tough! So cute yet fierce. 
== X3milyB @16 // ~Now if only I could get your grubby hands out of my personal bags...~
== BALORA @17 // ~Whoa, how did you catch me?~
== X3milyB @18 // ~Eyes of an archer, Alora, eyes of an archer. 
EXIT

// Branwen 1
CHAIN IF ~InParty("X3mily")
See("X3mily")
!StateCheck("Branwen",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyBranwen1","GLOBAL",0)~ THEN BBRANW X3milyBranwen1
@19 // ~There is greater honor in fighting at the front with a weapon! Rest that bow once in a while.~
DO ~SetGlobal("X3milyBranwen1","GLOBAL",1)~
== X3milyB @20 // ~I don't fight for honor, Branwen. I just want to help.~
== BBRANW @21 // ~What a meek thing to say. You can help more at the front.~
== X3milyB @22 // ~Oh, a great idea. I'll just put away my best tool and utilize my non-talents instead.~
== BBRANW @23 // ~*Snort*. Suit yourself.~
EXIT

// Coran 1 
CHAIN IF ~InParty("X3mily")
See("X3mily")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyCoran1","GLOBAL",0)~ THEN BCORAN X3milyCoran1
@24 // ~Miss Emily, you're quite a talent with the bow.~
DO ~SetGlobal("X3milyCoran1","GLOBAL",1)~
== X3milyB @25 // ~Oh Coran, I'm a student compared to yourself. Your reflex and accuracy is astounding.~
== X3milyB @26 // ~I'm not quite sure how you do it.~
== BCORAN @27 // ~I could give you a few pointers, when we next stop to rest for a bit.
== X3milyB @28 // ~I'd like that. I look forward to it.~
EXIT

// Dynaheir 1
CHAIN IF ~InParty("X3mily")
See("X3mily")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyDynaheir1","GLOBAL",0)~ THEN BDYNAH X3milyDynaheir1
@29 // ~Thou'rt to have more confidence, Emily.~ 
DO ~SetGlobal("X3milyDynaheir1","GLOBAL",1)~
== X3milyB @30 // ~I've only just started my trek. I'm eager...but I admit I'm a bit nervous.~
== BDYNAH @31 // ~We are all on some rite of passage. The transition between girl and woman. I shall overcome, and thou shall too.~
== X3milyB @32 // ~Your vote of confidence is really appreciated, Dynaheir.~
== BDYNAH @33 // ~I wish to see another fine woman succeed, and thou'rt one.~
== X3milyB @34 // ~Hopefully I don't disappoint!~
EXIT

// EDWIN
CHAIN IF ~InParty("X3mily")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyEdwin1","GLOBAL",0)~ THEN BEDWIN X3milyEdwin1
@35 // ~You are a pleasurably comely lass, Emily, of wealthy background. Yet for someone of such beauty and wealth you take to the roads.~
DO ~SetGlobal("X3milyEdwin1","GLOBAL",1)~
== X3milyB @36 //~What exactly are you getting at?~
== Bedwin @37 // ~If you find yourself cowering from the lack of fortified walls, or restless at night, my bedroll has room for two.~
== X3milyB @38 // ~No thank you, I think your bedroll can barely fit your ego.~
EXIT

// Eldoth
CHAIN IF ~InParty("Eldoth")
See("Eldoth")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyEldoth1","GLOBAL",0)~ THEN X3milyB X3milyEldoth1
@35 // ~Skie deserves better. You shouldn't treat her so cruelly.~
DO ~SetGlobal("X3milyEldoth1","GLOBAL",1)~
== BELDOT @36 //~A lady should keep quiet, and speak only when spoken to.~
== X3milyB @37 // ~I can make my point without words, if you like. You'll regret it.~
== BELDOT @38 // ~You're too soft for that, little angel. Now stop your whining.~
EXIT

// FALDORN
CHAIN IF ~InParty("Faldorn")
See("Faldorn")
!StateCheck("Faldorn",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyFaldorn1","GLOBAL",0)~ THEN X3milyB X3milyFaldorn1
@39 // ~Faldorn, why don't you believe that people and nature can't live in harmony? Why so destructive?
DO ~SetGlobal("X3milyFaldorn1","GLOBAL",1)~
== BFALDO @40 // ~Because they cannot, and have not. If you have not lived so long a sheltered life, you would see it.~
== X3milyB @41 // ~Teaching the right way goes a lot further than hurting people.~
== BFALDO @42 // ~And what of justice for what was done, foolish girl?~
== X3milyB @43 // ~It need not be cruel or harsh. Positive reinforcement goes so much further.~
== BFALDO @44 // ~You are naive, Emily. I'll speak no more with you.~
EXIT

// GARRICK 
CHAIN IF ~InParty("Garrick")
See("Garrick")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyGarrick1","GLOBAL",0)~ THEN X3milyB X3milyGarrick1
@45 // ~Garrick, I just want to say thank you for your gift of music.~
DO ~SetGlobal("X3milyGarrick1","GLOBAL",1)~
== BGARRI @46 // ~That's nice of you to say uh, Emily.~
== X3milyB @47 // ~There's so much darkness, and your songs remind of the good that's out there.~
== BGARRI @48 // ~Really?~
== X3milyB @49 // ~Music, art, love, beauty. They're what makes life so fascinating. Maybe that sounds a little naive to say, but...~
== BGARRI @50 // ~When we next camp, Emily, I'd be happy to play you some more music.~
== X3milyB @51 // ~I'd like that a lot, Garrick.~
EXIT

// JAHERIA
CHAIN IF ~InParty("Jaheria")
See("Jaheria")
!StateCheck("Jaheria",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyJaheria1","GLOBAL",0)~ THEN X3milyB X3milyJaheria1
@52 // ~So. You're half-elf too, right Jaheria?~
DO ~SetGlobal("X3milyJaheria1","GLOBAL",1)~
== BJAHEI @53 // ~Yes? Where are you getting at with this?~
== X3milyB @54 // ~Well, was it awkward with your parents?~
== BJAHEI @55 // ~They did not live long in my childhood. I have only faint memories of that childhoom home in Tethyr.~
== X3milyB @56 // ~Oh. I didn't know. I'm sorry.~
== BJAHEI @57 // ~'Tis not your fault child, and it is the past. What matters is what is ahead.~
== X3milyB @58 // ~Will war ever end?~
== BJAHEI @59 // ~Not if we sit wondering.~
EXIT

// Kagain
CHAIN IF ~InParty("Kagain")
See("Kagain")
InParty("X3mily")
See("X3mily")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyKagain1","GLOBAL",0)~ THEN BKAGAI X3milyKagain1
@60 // ~I hear you're a fletcher of some skill, archer.~
DO ~SetGlobal("X3milyKagain1","GLOBAL",1)~
== X3milyB @61 // ~This isn't a profit scheme, is it? I'm not interested.~
== BKAGAI @62 // ~You're missing out, girl. Ammunition in this time is easy gold, and my store could use one.~
== X3milyB @63 // ~For your business? Never.~
EXIT 

// Khalid
CHAIN IF ~InParty("Khalid")
See("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyKhalid1","GLOBAL",0)~ THEN X3milyB X3milyKhalid1
@64 // ~Everyone seems to think you're a big scaredy-cat, Khalid.~
DO ~SetGlobal("X3milyKhalid1","GLOBAL",1)~
== BKHALI @65 // ~I g-get that a l-lot.~ 
== X3milyB @66 // ~But it's not true at all.~
== BKHALI @67 // ~R-really?~
== X3milyB @68 // ~You charge right into the front, everytime. You may be terrified, but you shield us all anyway. That is true courage.~
== BKHALI @69 // ~I...T-thank you, Emily.~
== X3milyB @70 // ~No, thank you!~
EXIT

// KIVAN 1
CHAIN IF ~InParty("X3mily")
See("X3mily")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyKivan1","GLOBAL",0)~ THEN BKIVAN X3milyKivan1
@71 // ~It seems I have met my match in archery with you, Emily.~
DO ~SetGlobal("X3milyKivan1","GLOBAL",1)~
== X3milyB @72 // ~You flatter me, Kivan, but I can't wield the larger bows. I don't have the body for it.~
== BKIVAN @73 // ~There are many bows that would be suiting for your frame.~
== X3milyB @74 // ~Well, if  you find one, I'd love to give it a try out.~
EXIT

// Minsc
CHAIN IF ~InParty("X3mily")
See("X3mily")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyMinsc1","GLOBAL",0)~ THEN BMINSC X3milyMinsc1
@75 // ~Boo likes you, Emily.~
DO ~SetGlobal("X3milyMinsc1","GLOBAL",1)~
== X3milyB @76 // ~And I like Boo! Where exactly did you find him, anyway?~
== BMINSC @77 // ~Boo found Minsc, and we have been inseparable ever since!
== X3milyB @78 // ~I'd love a friendship like that. If I got a cat, do you think they'd get along?~
== BMINSC @79 // ~What's that Boo? Boo says no cats!~
== X3milyB @80 // ~No Cats. I'll have to remember that.~
EXIT

// Montaron
CHAIN IF ~InParty("Montaron")
See("Montaron")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyMontaron1","GLOBAL",0)~ THEN X3milyB X3milyMontaron1
@76 // ~Normally I've a soft spot for halflings but you Montaron...you disturb me.~
DO ~SetGlobal("X3milyMontaron1","GLOBAL",1)~
== BMONTA @77 // ~Shut it and keep your distance, goody archer. Your only use to the party is a packmule.~
== X3milyB @78 // ~That's a good way to speak to not make friends, Montaron.~
== BMONTA @79 // ~Just leave me be, unless you want trouble.~
EXIT

// Quayle
CHAIN IF ~InParty("X3mily")
See("X3mily")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyQuayle1","GLOBAL",0)~ THEN BQUAYL X3milyQuayle1
@80 // ~Simpletons, everywhere. If they had brains they wouldn't get in such trouble.~
DO ~SetGlobal("X3milyQuayle1","GLOBAL",1)~
== X3milyB @81 // ~I don't think it's the lack of brain that causes distress, Quayle.~
== BQUAYL @82 // ~Well of course it is. If everyone was as smart as me, a tall task of course, progress would have people be less primitive.~
== X3milyB @83 // ~Not everyone has access to proper education. We first must strive to make things more fair.~
== BQUAYL @84 // ~Yes, well...I suppose I do enjoy being vastly superior for the moment.~
== X3milyB @85 // ~Right. We simpletons do hope your intelligence can solve the big problems.~
EXIT

// SAFANA
CHAIN IF ~InParty("Safana")
See("Safana")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milySafana1","GLOBAL",0)~ THEN X3milyB X3milySafana1
@86 // ~Safana, don't you think seducing others is more trouble than it's worth~
DO ~SetGlobal("X3milySafana1","GLOBAL",1)~
== BSAFAN @87 // ~When you can get anything you want, what isn't to love about it?~
== X3milyB @88 // ~No one is fooled forever.~
== BSAFAN @89 // ~You've not seen me in action, darling. I could show you some of my tricks, you've the looks to pull it off.~
== X3milyB @90 // ~I'd rather create positive change in a more honest way.~
== BSAFAN @91 // ~When you see where that gets you, you know who to talk to.~
EXIT

// Shar-Teel
CHAIN IF ~InParty("X3mily")
See("X3mily")
!StateCheck("Sharteel",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milySharTeel1","GLOBAL",0)~ THEN BSHART X3milySharteel1
@92 // ~You're too gentle, Emily. Steel is the only thing that will get you further.~
DO ~SetGlobal("X3milySharTeel1","GLOBAL",1)~
== X3milyB @93 // ~Spilling people's innards for shallow reasons is why the world is worse than it could be.~
== BSHART @94 // ~It's what makes life fun.~
== X3milyB @95 // ~I hope I don't have to share your company for long.~
EXIT

// Skie
CHAIN IF ~InParty("X3mily")
See("X3mily")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milySkie1","GLOBAL",0)~ THEN BSKIE X3milySkie1
@96 // ~You need not be concerned, Emily. I'm okay.~
DO ~SetGlobal("X3milySkie1","GLOBAL",1)~
== X3milyB @97 // ~You deserve better then the treatment Eldoth gives you, Skie.~
== BSKIE @98 // ~You worry too much, Emily. 
== X3milyB @99 // ~If he hurts you, in any way. Talk to me.~
== BELDOT IF ~InParty("Eldoth")~ THEN @100 // ~If you are talking about me, girl, you should do well to silence your lips.~
== X3milyB IF ~InParty("Eldoth")~ THEN @101 // ~I'll not shut up, Eldoth. Heed my warning, and treat her well.
== BSKIE IF ~InParty("Eldoth")~ THEN @102 // ~Emily, it's fine, really.~
== X3milyB IF ~InParty("Eldoth")~ THEN @103 // ~It isn't, but I will drop this for now.~
== BELDOT IF ~InParty("Eldoth")~ THEN @104 // ~As is your place to do, wench.~
EXIT

// Tiax
CHAIN IF ~InParty("X3mily")
See("X3mily")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyTiax1","GLOBAL",0)~ THEN BTIAX X3milyTiax1
@105 // ~Tiax will rule soon, and all the world shall become Tiax's subjects. 
DO ~SetGlobal("X3milyTiax1","GLOBAL",1)~
== X3milyB @106 // ~How will that work exactly, Tiax?~
== BTIAX @107 // ~Cyric shall bestow command unto Tiax for fulfilling his wishes. Tiax will be all powerful.~
== X3milyB @108 // ~That's ... you know what? You do you, Tiax.~
EXIT

// VICONIA
CHAIN IF ~InParty("X3mily")
See("X3mily")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyViconia1","GLOBAL",0)~ THEN BVICON X3milyViconia1
@109 // ~I am amused by your constant shivering when I am so close, Emily.~
DO ~SetGlobal("X3milyViconia1","GLOBAL",1)~
== X3milyB @110 // ~Don't talk to me, drow. I only tolerate your company because <CHARNAME> does.~
== BVICON @111 // ~Without <CHARNAME> you would be screaming away, child. Surfacers like you are so weak.~
== X3milyB @112 // ~Not listening!~
== BVICON @113 // ~So little spine.~
EXIT

// XAN
CHAIN IF ~InParty("Xan")
See("Xan")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyXan1","GLOBAL",0)~ THEN X3milyB X3milyXan1
@114 // ~You need not be so sullen, Xan. There is so much brightness out in the world.~
DO ~SetGlobal("X3milyXan1","GLOBAL",1)~
== BXANNN @115 // ~A world that we will one day no longer see. Everything is temporary, everything will cycle from joy to tragedy.~
== X3milyB @116 // ~You really know how to get someone down, don't you?~
== BXANNN @117 // ~I am only speaking an age old truth, even if is hard to hear.~
== X3milyB @118 // ~I think I'm going to step where the pastures are a little greener, then, further back from you.~
EXIT

// Xzar
CHAIN IF ~InParty("X3mily")
See("X3mily")
!StateCheck("Xzar",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyXzar1","GLOBAL",0)~ THEN BXZAR X3milyXzar1
@119 // ~Must you always be so insufferably charitable?~
DO ~SetGlobal("X3milyXzar1","GLOBAL",1)~
== X3milyB @120 // ~Oh, yes, it's awful to be a genuinely nice person.~
== BXZAR @121 // ~Foolish harlot, the world is for those who grasp it. Destruction is the force of right.~
== X3milyB @122 // ~This is why we will never be friends. That and your grating mood.~
EXIT


// Yeslick
CHAIN IF ~InParty("X3mily")
See("X3mily")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyYeslick1","GLOBAL",0)~ THEN BYESLI X3milyYeslick1
@123 // ~You look sad, lass.~
DO ~SetGlobal("X3milyYeslick1","GLOBAL",1)~
== X3milyB @124 // ~All the violence. It seems to follow <CHARNAME>, and I know we don't always have a choice, but I worry I will grow emotionless over it.~
== BYESLI @125 // ~One day lass, I hope there won't be need for it all.~
== X3milyB @126 // ~Do you think of the people you have killed?~
== BYESLI @127 // ~I have, but not as often as I think of those who I have lost because of them. My clan. My friends.~
== X3milyB @128 // ~I hope to find a way to change people before they hurt those who we love.~
== BYESLI @129 // ~Idealistic lass. But perhaps you may learn such technique.~
EXIT
// I've no idea why I named some of these conversations EmilyPerson1, and not EmilyPerson. Oh well.

// Imoen 2 
CHAIN IF ~InParty("X3mily")
InParty("Imoen")
See("X3mily")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyImoen1","GLOBAL",1)~ THEN X3milyB X3milyImoen2
@130 // ~Imoen, I'm missing my comb, have you seen it?~
DO ~SetGlobal("X3milyImoen1","GLOBAL",2)~
== BIMOEN @131 // ~Nope. Why you asking?~
== X3milyB @132 // ~Odd. Hey, your hair is looking splendid this morning. What did you do differently?~
== BIMOEN @133 // ~Oh nothing, nothing. Just gave it a good ol' co- aww, puff rats.~
== X3milyB @134 // ~You can keep it, now! You could have just said you didn't pack one for yourself.~
== BIMOEN @135 // ~Aww, thanks Emily.~ 
EXIT 

// Ajantis 2 
CHAIN IF ~InParty("X3mily")
InParty("Ajantis")
See("X3mily")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyAjantis1","GLOBAL",1)~ THEN X3milyB X3milyAjantis2
@130 // ~Ajantis, when do you know it is truly right to take a life?~
DO ~SetGlobal("X3milyAjantis1","GLOBAL",2)~
== BAJANT @131 // ~When a life is in danger, and when evil the target is evil.~
== X3milyB @132 // ~That's a simple way to put it. And sometimes it is that easy.~
== X3milyB @133 // ~We fight a lot of monsters, after all.~
== X3milyB @134 // ~But sometimes...don't you ever worry there is a chance to help them save the light?~
== BAJANT @135 // ~Few beg for redemption sincerely except for the selfish desire to live another day to do their crimes once more.~
== X3milyB @136 // ~An answer for everything I see. I don't think I can see things in absolutes, but I thank you for your input.~
EXIT 

//Alora 2
CHAIN IF ~InParty("Alora")
See("X3mily")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyAlora1","GLOBAL",1)~ THEN X3milyB X3milyAlora2
@137 // ~Alora, you don't seem like you steal only for yourself. Why do you take things?~
DO ~SetGlobal("X3milyAlora1","GLOBAL",2)~ 
== BALORA @138 // ~Oh, I'm just curious. Or it's shiny and interesting. I just have to look at it.~
== X3milyB @139 // ~That is a rather innocent reason to take things...~
== X3milyB @140 // ~Hrm, I'll tell you what. You resist grabbing at my personal things without asking, and I'll give you an archery lesson.~
== BALORA @141 // ~Really? I accept!~
== X3milyB @142 // ~Great! This will be f- hey!~
== BALORA @143 // ~Sorry, I just wanted to check out your bow.~
== X3milyB @144 // ~This is getting off to an excelent start. 
EXIT 

// Coran 2 
CHAIN IF ~InParty("CORAN")
See("CORAN")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyCoran1","GLOBAL",1)~ THEN X3milyB X3milyCoran2
@145 // ~Thank you for the lesson with the longbow, Coran.~
DO ~SetGlobal("X3milyCoran1","GLOBAL",2)~
== BCORAN @146 // ~It was my pleasure, Emily. You are a natural beauty with it.~
== X3milyB @147 // ~Aww, you're sweet. How about I repay you with a lesson about crossbows?~
== BCORAN @148 // ~A Crossbow? What would be the need?~
== X3milyB @149 // ~Well, you never know when only a crossbow is handy and a longbow isn't anywhere in sight.~
== BCORAN @150 // ~I see no reason to refuse.~
== X3milyB @151 // ~Great. I'll make plans at our next rest.~
EXIT 

// Dynaheir 2
CHAIN IF ~InParty("Dynaheir")
See("Dynaheir")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyDynaheir1","GLOBAL",1)~ THEN BDYNAH X3milyDynaheir2
@152 // ~Thou'rt grown much in our journey. One of a few I am proud to have known.~ 
DO ~SetGlobal("X3milyDynaheir1","GLOBAL",2)~
== X3milyB @153 // ~Thank you, Dynaheir. I feel the same with you.~
== X3milyB @154 // ~It is a shame it won't last forever. You will return to your homeland when your rite of passage is complete, I presume?~
== BDYNAH @155 // ~Thou'rt right, but we still have our present. Thy should enjoy the moments while it lasts.~
EXIT 

// GARRICK 2 
CHAIN IF ~InParty("Garrick")
See("Garrick")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyGarrick1","GLOBAL",1)~ THEN X3milyB X3milyGarrick2
@156 // ~Garrick, thanks for playing the other night. With your voice, you'll surely be famous someday.~
DO ~SetGlobal("X3milyGarrick1","GLOBAL",2)~
== X3milyB @157 // ~Though I have a question. Your song seemed to be about a bird being caught and unable to be free while it's song was immortal. What did that mean?~
== BGARRI @158 // ~Art, music, live well beyond our life, Emily. When we are but bone, they shall be spread like sweet honey.~
== X3milyB @159 // ~Is that so? I like the song even more now.~
EXIT 

// JAHERIA 2
CHAIN IF ~InParty("Jaheria")
See("Jaheria")
!StateCheck("Jaheria",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyJaheria1","GLOBAL",1)~ THEN X3milyB X3milyJaheria2
@160 // ~I really admire you Jaheria. You're such a strong woman. I don't think anything brings you down.~
DO ~SetGlobal("X3milyJaheria1","GLOBAL",2)~
== BJAHEI @161 // ~What makes you say this, now?~
== X3milyB @162 // ~I've just been watching, and your presence makes me feel a little less nervous.~
== BJAHEI @163 // ~Ah I...thank you, Emily. Though pay attention to what is ahead so you may also remain alive.~
== X3milyB @164 // ~Yes, ma'am!~ 
EXIT 

// Khalid 2
CHAIN IF ~InParty("Khalid")
See("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyKhalid1","GLOBAL",1)~ THEN X3milyB X3milyKhalid2
@165 // ~Khalid, I don't recall asking you, but what was it like growing up as a half-elf?~
DO ~SetGlobal("X3milyKhalid1","GLOBAL",2)~
== BKHALI @166 // ~Oh, it w-was...oh, we shouldn't talk about this now. J-jaheria will get on us for attentiveness.~
== X3milyB @167 // ~Hrmph. Okay, but what about when we rest?~
== BKHALI @168 // ~I g-guess that would be alright.~
EXIT 

// KIVAN 2
CHAIN IF ~InParty("Kivan")
See("Kivan")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyKivan1","GLOBAL",1)~ THEN X3milyB X3milyKivan2
@169 // ~Kivan, can you tell me about your wife?~
DO ~SetGlobal("X3milyKivan1","GLOBAL",2)~
== BKIVAN @170 // ~She was a strong woman, who helped me become a better man.~
== BKIVAN @171 // ~I did not deserve her, or her love, but I am glad all the more that I had it.~
== BKIVAN @172 // ~I will never forgive those who took her from me.~
== X3milyB @173 // ~I will do all I can to make sure no one else ends up like your wife.~
== BKIVAN @174 // ~An unrealistic goal, Emily, but you are all the purer for it.~
EXIT

// Minsc 2
CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyMinsc1","GLOBAL",1)~ THEN X3milyB X3milyMinsc2
@175 // ~Minsc, sometimes you worry me in battle.~
DO ~SetGlobal("X3milyMinsc1","GLOBAL",2)~
== BMINSC @176 // ~Me? Minsc feels alive in battle. It is evil that should be afraid!~
== X3milyB @177 // ~You fight in such a frenzy. You hurt yourself more when you lose focus.~
== BMINSC @178 // ~Minsc is very focused. Very focused on the butt-kicking!~
== X3milyB @179 // ~I'm not sure you're understanding, but, I think this is a lost debate.~
EXIT 

/*Here are our third sets.*/
// Imoen 3 
CHAIN IF ~InParty("X3mily")
InParty("Imoen")
See("Imoen")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyImoen1","GLOBAL",2)~ THEN X3milyB X3milyImoen3
@180 // ~Imoen, why did you develop such, you know, thief talents? You're not a mean person at all.~
DO ~SetGlobal("X3milyImoen1","GLOBAL",3)~
== BIMOEN @181 // ~Just a bit of fun. Everyone was a bit stuffed in books with their noses back in Candlekeep.~
== X3milyB @182 // ~So it's all just for a spot of mischief? I can't see the monks liking that.~
== BIMOEN @183 // ~Nah, but it wasn't anything I couldn't sweet talk them out of.~
== X3milyB @184 // ~Sweet talking monks. Now that's something I'd like to see.~
EXIT 


// Ajantis 3  
CHAIN IF ~InParty("X3mily")
See("X3mily")
InParty("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Race("X3mily",Aasimar) 
Global("X3milyAjantis1","GLOBAL",2)~ THEN BAJANT X3milyAjantis1
@185 // ~Lady Emily, I wish to ask you something.~
DO ~SetGlobal("X3milyAjantis1","GLOBAL",3)~
== X3milyB @186 // ~What is it, Ajantis?~
== BAJANT @187 // ~About your heritage. Did anyone ever suspect it?~
== X3milyB @188 // ~My brother certainly suspected I was an elf. You can only do so much to hide your ears with your hair.~
== BAJANT @189 // ~Pardon, I mean your planar heritage.~
== X3milyB @190 // ~I know that's what you meant. I'd rather not talk about it. Just see me as the same Emily as before, you know, cheery and sharp-eyed!~
== BAJANT @191 // ~You cannot ignore truth.~
== X3milyB @192 // ~You can procrastinate on it though!~
== BAJANT @193 // ~If...that is your wish, I shall not press.~
== X3milyB @194 // ~You mean well, Ajantis. I'm just not ready to think about this yet.
EXIT 

// Alora 3 
CHAIN IF ~InParty("Alora")
See("X3mily")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyAlora1","GLOBAL",2)~ THEN X3milyB X3milyAlora3
@195 // ~Your aim has gotten a lot better, Alora.~
DO ~SetGlobal("X3milyAlora1","GLOBAL",3)~ 
== BALORA @196 // ~Thanks, Emily. You were a great help.~ 
== BALORA @197 // ~When is the next lesson?~
== X3milyB @198 // ~To be honest, Alora, your aim nearly matches mine already. I don't think I have anything to teach you.~
== BALORA @199 // ~Why don't we improve eachother, then? It will be fun!~
== X3milyB @200 // ~I'll take you up on that, Alora. Next time, hmm?~
EXIT 

//Coran 3 
CHAIN IF ~InParty("CORAN")
See("CORAN")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyCoran1","GLOBAL",3)~ THEN X3milyB X3milyCoran3
@201 // ~So, now that you've learned how to shoot with a crossbow, thinking about switching?~
DO ~SetGlobal("X3milyCoran1","GLOBAL",4)~
== BCORAN  @202 // ~Oh? No, no, beauty. It was a lovely lesson but...~
== X3milyB @203 // ~Bow for life then, hmm? It is not a bad weapon.~
== BCORAN @204 // ~But still I enjoyed the lesson with true beauty guiding my hand.~
== X3milyB @205 // ~Oh Coran, even if I know what you're up to, I do feel flattered.~
EXIT 

// Khalid 3 
CHAIN IF ~InParty("Khalid")
See("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyKhalid1","GLOBAL",2)~ THEN X3milyB X3milyKhalid3
@206 // ~Thanks for the story earlier, Khalid. In a way, our lives are almost...opposite.~
DO ~SetGlobal("X3milyKhalid1","GLOBAL",3)~
== BKHALI @207 // ~T-they are?~
== X3milyB @208 // ~Your father, he tried to pretend you weren't there. My father was almost overly focused...~
== X3milyB @209 // ~Maybe to the neglect of his other child, even. I wonder if it is the guilt.~
== BKHALI @210 // ~Perhaps so, Emily, but b-by your story it seems genuine.~
== X3milyB @211 // ~Maybe I'm feeling guilty. Still, thank you for sharing. I feel a real kinship with you.~
== BKHALI @212 // ~T-thank you. Your company is a w-welcome part here for me.~
EXIT 

/*This fires if Safana is in the party. */ 
// Coran 4 
CHAIN IF ~InParty("CORAN")
InParty("SAFANA")
See("CORAN")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyCoran1","GLOBAL",3)~ THEN X3milyB X3milyCoran4
@213 // ~Coran, I need to ask you something, and I hope you answer honestly.~
DO ~SetGlobal("X3milyCoran1","GLOBAL",4)~
== BCORAN @214 // ~Anything you wish, angel.~
== X3milyB @215 // ~Do you actually care for Safana?~
== BCORAN @216 // ~Well, she's a self serving wench, but that just adds to her attractiveness.~
== X3milyB @217 // ~How do you find that desirable?~
== BCORAN @218 // ~Every piece of gorgeous art is imperfect to the eye, but the flaws only add to the character.~
== X3milyB @219 // ~I...that is unusually wise of you Coran. I guess I was looking at things so shallowly.~
== X3milyB @220 // ~I'll be more thoughtful of things like that from now on.~
EXIT 

//Garrick 3 
CHAIN IF ~InParty("Garrick")
See("Garrick")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Race("X3mily",Aasimar) 
Global("X3milyGarrick1","GLOBAL",2)~ THEN BGARRI X3milyGarrick3
@221 // ~Emily, you are ever the sweet angel.~
DO ~SetGlobal("X3milyGarrick1","GLOBAL",3)~
== X3milyB @222 // ~You are just saying that because things are different about me.~
== BGARRI @223 // ~Your voice has always been sweet, your aura calling and calming.~
== X3milyB @224 // ~I'm sorry, I can't take those words as genuine. I just can't. Just leave me alone for now.~ 
== BGARRI @225 // ~As you wish.~
EXIT 