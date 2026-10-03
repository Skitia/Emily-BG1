BEGIN X3Isaac
BEGIN X3IPH1

CHAIN IF ~Global("X3IsaacForceEncounter","GLOBAL",2)~ THEN X3Isaac FirstCon 
@0
DO ~SetGlobal("X3IsaacForceEncounter","GLOBAL",3)~
END 
IF ~InParty("C0Sirene")~ EXTERN X3IPH1 TieflingRoute
IF ~!InParty("C0Sirene")~ EXTERN X3IPH1 NonTieflingRoute

CHAIN X3IPH1 TieflingRoute 
@1
== X3Isaac @2
== X3IPH1 @3
== X3Isaac @4
== X3IPH1 @5
EXTERN X3Isaac ToBattle

CHAIN X3Isaac ToBattle
@6
DO ~Enemy()~
EXIT 

CHAIN X3IPH1 NonTieflingRoute
@7
== X3Isaac @8
== X3IPH1 @9
== X3Isaac @10
== X3IPH1 @11
EXTERN X3Isaac ToBattle

CHAIN IF ~Dead("X3IPH1")Global("X3IDefeated","LOCALS",1)~ THEN X3Isaac DefeatedCon1 
@12 
DO ~SetGlobal("X3IDefeated","LOCALS",2)~
EXTERN X3Isaac DefeatedConGroup

CHAIN IF ~!Dead("X3IPH1")Global("X3IDefeated","LOCALS",1)~ THEN X3Isaac DefeatedCon1 
@13
DO ~SetGlobal("X3IDefeated","LOCALS",2)~
EXTERN X3Isaac DefeatedConGroup

CHAIN X3Isaac DefeatedConGroup 
@14 
= @15 
END 
++ @16 + DefeatedHearOut
++ @17 + DefeatedBattle
++ @18 + DefeatedSpare

CHAIN X3Isaac DefeatedBattle
@19
DO ~Enemy()~
EXIT 

CHAIN X3Isaac DefeatedSpare
@20 
DO ~EscapeAreaDestroy(3)~
EXIT 

CHAIN X3Isaac DefeatedHearOut 
@21 
== X3Isaac IF ~InParty("C0Sirene")~ THEN @22 
== X3Isaac @23
== X3Isaac @24
END 
+~InParty("C0Sirene")~+  @29 + DefeatedSirene
++ @30 + DefeatedJoin
++ @31 + DefeatedReject
+~NumInParty(6)~+ @35 + DefeatedFull

CHAIN X3Isaac DefeatedSirene 
@25 
END 
++ @30 + DefeatedJoin
++ @31 + DefeatedReject
+~NumInParty(6)~+ @35 + DefeatedFull

CHAIN X3Isaac DefeatedFull 
@36 
DO ~EscapeAreaMove("%bg1_eet_symbol%2301",856,243,SE)~
EXIT 

CHAIN X3Isaac DefeatedReject
@26 
END 
++ @32 + DefeatedBattle
++ @33 + DefeatedSpare2
//This version of Spare keeps Isaac in the game
CHAIN X3Isaac DefeatedSpare2
@34
DO ~EscapeAreaMove("%bg1_eet_symbol%2301",856,243,SE)~
EXIT 

CHAIN X3Isaac DefeatedJoin
@27 
== X3milyJ IF ~IsValidForPartyDialogue("X3mily")~ THEN @37
== X3Isaac IF ~IsValidForPartyDialogue("X3mily")~ THEN @38
== X3milyJ IF ~IsValidForPartyDialogue("X3mily")~ THEN @39
== X3Isaac @28 
DO ~SetGlobal("X3IsaacAppChange","GLOBAL",8)SetGlobal("X3IQuest","GLOBAL",1)AddJournalEntry(@60001,QUEST)JoinParty()~
EXIT 

CHAIN IF ~AreaCheck("%bg1_eet_symbol%2301")Global("X3IQuest","GLOBAL",0)~ THEN X3Isaac Rejected
@40
END 
++ @41 + DefeatedJoin 
++ @42 + Farewell
++ @43 + Farewell

CHAIN X3Isaac Farewell 
@44 
EXIT 

BEGIN X3IsaacP

// Player kicking out Isaac, still in quest.

IF ~Global("X3IsaacKickedOut","GLOBAL",0)GlobalLT("X3IQuest","GLOBAL",10)~ kicked1
SAY @45 
++ @46 DO ~JoinParty()~ EXIT
++ @47 DO ~SetGlobal("X3IsaacKickedOut","GLOBAL",1)~ + p1.1
++ @48 DO ~SetGlobal("X3IsaacKickedOut","GLOBAL",1)LeaveParty()~ EXIT
END
//Done with quest.
IF ~Global("X3IsaacKickedOut","GLOBAL",0)GlobalGT("X3IQuest","GLOBAL",9)~ kicked1
SAY @55
++ @46 DO ~JoinParty()~ EXIT
++ @47 DO ~SetGlobal("X3IsaacKickedOut","GLOBAL",1)~ + p1.1
++ @48 DO ~SetGlobal("X3IsaacKickedOut","GLOBAL",1)LeaveParty()~ EXIT
END

IF ~~ p1.1  
SAY @49 
IF ~~ DO ~EscapeAreaMove("%bg1_eet_symbol%2301",856,243,SE)~ EXIT 
END 


// Isaac previously kicked out, and not in party. Quest not done.

IF ~Global("X3IsaacKickedOut","GLOBAL",1)GlobalLT("X3IQuest","GLOBAL",10)~ kicked2
SAY @50
++ @51 + b3.1
++ @52 + b3.2
END 

IF ~Global("X3IsaacKickedOut","GLOBAL",1)GlobalGT("X3IQuest","GLOBAL",9)~ kicked2
SAY @56
++ @51 + b3.1
++ @52 + b3.2
END 

IF ~~ b3.1
SAY @53 
IF ~~ DO ~SetGlobal("X3IsaacKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ b3.2
SAY @54
IF ~~ EXIT
END
