// BG Enhanced Edition Characters Banters.

// Baeloth

CHAIN IF ~InParty("X3mily")
See("X3mily")
!StateCheck("Baeloth",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyBaeloth1","GLOBAL",0)~ THEN BBAELOTH X3milyBaeloth1
@0 // ~Will you ever stop glowering at me?~
DO ~SetGlobal("X3milyBaeloth1","GLOBAL",1)~
== X3milyB @1 // ~I've got my eye on you drow.~
== BBAELOTH @2 // ~That's a no, then. Well, stare on, with your mediocrity and your envy.~
EXIT

// Dorn
CHAIN IF ~InParty("X3mily")
See("X3mily")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyDorn1","GLOBAL",0)~ THEN %DORN_BANTER% X3milyDorn1
@3 // ~Why are you here?~
DO ~SetGlobal("X3milyDorn1","GLOBAL",1)~
== X3milyB @4 // ~Who, me?~
== %DORN_BANTER% @5 // ~You whine at every encounter and bemoan every sight of blood. The battlefield is not for you.~
== X3milyB @6 // ~If I have to fight, I have to fight. I just wish it wasn't necessary.~
== %DORN_BANTER% @7 // ~It's not necessary for you to be here and complain about killing. If it isn't them, it's us.~
== X3milyB @8 // ~There is another way, sometimes. Possibly.~
== %DORN_BANTER% @9 // ~So weak. Get out of my way.~
EXIT

// Neera 1
CHAIN IF ~InParty("X3mily")
See("X3mily")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyNeera1","GLOBAL",0)~ THEN %NEERA_BANTER% X3milyNeera1
@10 // ~So...are you going to keep looking at me like that or say something.~
DO ~SetGlobal("X3milyNeera1","GLOBAL",1)~
== X3milyB @11 // ~You're just so unpredictable. Your magic, your demeanor. I can't put a finger on you.~
== %NEERA_BANTER% @12 // ~And that's just how I like it.~
== X3milyB @13 // ~Well, as long as that unpredictability doesn't get me killed. Although I wouldn't mind being turned into a graceful eagle for a few minutes and fly.~
== X3milyB @14 // ~Just not in battle! That would not be good timing.~
EXIT

// Rasaad 1

CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyRasaad1","GLOBAL",0)~ THEN X3milyB X3milyRasaad1
@15 // ~I must admit, your body is really something.~
DO ~SetGlobal("X3milyRasaad1","GLOBAL",1)~
== %RASAAD_BANTER% @16 // ~I thank you for your compliment, Emily. It is work of years of rigorous exercise and training.~
== X3milyB @17 // ~It really is. Very, very, something. I wouldn't mind observing you at work.~
== %RASAAD_BANTER% @18 // ~Should time allow it, I would be pleased to assist.~
== X3milyB @19 // ~Oh, wonderful. Right. I'll just stop staring now... or eventually.~
EXIT

// Neera 2
CHAIN IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyNeera1","GLOBAL",1)~ THEN X3milyB X3milyNeera2
@20 // ~What were your parents like, Neera?~
DO ~SetGlobal("X3milyNeera1","GLOBAL",2)~
== %NEERA_BANTER% @21 // ~That's...a rather personal question, Emily.~ 
== X3milyB @22 // ~Were they both half-elves, one of each? 
== X3milyB @23 // ~Sorry, I'm just curious. Everyone's story is different, my parents did't stay togehter.~
== %NEERA_BANTER% @24 // ~Yeah...it's the past, isn't it?~
== X3milyB @25 // ~Neera, I can sense whatever you're thinking is haunting you.~
== X3milyB @26 // ~I know you're going to be stubborn, but I'm here if you want to talk about it.~
== %NEERA_BANTER% @27 // ~I know, I know, but...I'm fine. Really.~
EXIT 

// Rasaad 2 
CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3milyRasaad1","GLOBAL",1)~ THEN X3milyB X3milyRasaad2
@28 // ~Thanks for that lesson the other day, Rasaad. I really liked the stretches the most.~
DO ~SetGlobal("X3milyRasaad1","GLOBAL",2)~
== %RASAAD_BANTER% @29 // ~You are quite flexible, Emily. You would be a good student of the path.~
== X3milyB @30 // ~Thanks, but it isn't for me. I think I like looking at it more than doing it.~
== X3milyB @31 // ~It is very peaceful though. I wouldn't mind participating with you again now and then.~
== %RASAAD_BANTER% @32 // ~At your leisure, my friend.~
EXIT 

//Rasaad 3
CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Race("X3mily",Aasimar)
Global("X3milyRasaad1","GLOBAL",1)~ THEN X3milyB X3milyRasaad2
@33 // ~Do you think any different of me, Rasaad?~
DO ~SetGlobal("X3milyRasaad1","GLOBAL",2)~
== %RASAAD_BANTER% @34 // ~I do not. But you speak of this revelation as if it makes you worse. Why is this?~
== X3milyB @35 // ~I don't want people to look at me any different. I just want to  be Emily.~
== %RASAAD_BANTER% @36 // ~Then be Emily. You wear your concern on your skin, so it is seen. Before, no one knew because you were you, and you were not defined for it.~
== %RASAAD_BANTER% @37 // ~Be who you always have been, who you are. You are good and kind, and that shall remain so as long as you allow it.~
== X3milyB @38 // ~Thank you, Rasaad. You always know what to say.~
EXIT 