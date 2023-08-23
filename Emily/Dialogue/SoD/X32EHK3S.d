

// Crossmod Sirene version. As usual they just attack on sight, unless Isaac is there.
CHAIN IF ~AreaCheck("BD1000")IsValidForPartyDialogue("c0sirene")~ THEN X32EHK3S Talk10 
@0
END 
IF ~InMyArea("X3Isaac")BeenInParty("X3Isaac")~ EXTERN X32Isaa IsaacSirenePreviousParty 
IF ~InMyArea("X3Isaac")!BeenInParty("X3Isaac")~ EXTERN X32Isaa IsaacSireneNeverParty 
IF ~!InMyArea("X3Isaac")~ EXTERN X32EHK3S TalkSireneEnemy 

CHAIN X32EHK3S TalkSireneEnemy 
@1
DO ~SetGlobal("X32PlanarHunterEnemy","GLOBAL",2)~
EXIT 

CHAIN X32Isaa IsaacSirenePreviousParty 
@32
DO ~SetGlobal("X3IsaacInBG1","GLOBAL",1)SetGlobal("X3IsaacMetSoD","GLOBAL",1)~ //Note the change from Emily's style. (Eventually change Emily's style to this.)
== X32EHK3S @33
== X32Isaa @34
== X32Isaa @35
END 
IF ~BeenInParty("X3mily")~ EXTERN X32Isaa FamiliarWith 
IF ~!BeenInParty("X3mily")~ EXTERN X32Isaa NotFamiliarWith

CHAIN X32Isaa IsaacSireneNeverParty 
@36
DO ~SetGlobal("X3IsaacMetSoD","GLOBAL",1)~ //Note the change from Emily's style. (Eventually change Emily's style to this.)
== X32EHK3S @37
== X32Isaa @38
== X32Isaa @39
END 
IF ~BeenInParty("X3mily")~ EXTERN X32Isaa FamiliarWith 
IF ~!BeenInParty("X3mily")~ EXTERN X32Isaa NotFamiliarWith

CHAIN X32Isaa FamiliarWith 
@40
DO ~SetGlobal("X3IsaacInBG1","GLOBAL",1)SetGlobal("X3IsaacMetSoD","GLOBAL",1)~
END 
++ @45 + ShesHiding
++ @46 + ShesHiding
++ @47 + NotHelping

CHAIN X32Isaa NotFamiliarWith
@41
DO ~SetGlobal("X3IsaacMetSoD","GLOBAL",1)~
END 
++ @45 + ShesHiding
++ @46 + ShesHiding
++ @47 + NotHelping

CHAIN X32Isaa ShesHiding 
@50
DO ~SetGlobal("X32ICutSceneStart","GLOBAL",1)~
EXIT 

CHAIN X32Isaa NotHelping 
@48
= @49
DO ~SetGlobal("X32ETeleport","GLOBAL",1)~
EXIT 

CHAIN IF ~AreaCheck("BD1000")!IsValidForPartyDialogue("c0sirene")~ THEN X32EHK3S Talk1
@2 
END 
++ @3 + Talk1.1
++ @4 + Talk1.11
++ @5 + Talk1.11

CHAIN X32EHK3S Talk1.11
@6
EXTERN X32EHK3S Talk1.1 
 
CHAIN X32EHK3S Talk1.1
@7
END 
IF ~InMyArea("X3Isaac")~ EXTERN X32Isaa IsaacInDistance
++ @8 + Talk1.2 // Assumes normal playthrough. PC can still manually set they know Emily when they talk to her later.
++ @9 DO ~SetGlobal("X32milyInBG1","GLOBAL",1)SetGlobal("X32PlanarHunterEnemy","GLOBAL",1)~ + Talk1.3  // ~Sets Emily being in BG1 automatically, and planar hunter hostility.~
+~!GlobalGT("X32milyCryptComment1","GLOBAL",0)~+ @10 DO ~SetGlobal("X32milyInBG1","GLOBAL",-1)GiveItem("X3ESWRD",Player1)AddJournalEntry(@101,INFO)AddexperienceParty(1000)~ + Talk1.4 // ~Prevents Emily from spawning. It'd be awkward to show this if she was in the crypt, so using this old global to check.~

CHAIN X32Isaa IsaacInDistance
@42
DO ~SetGlobal("X3IsaacMetSoD","GLOBAL",1)~
END 
IF ~!Dead("X3mily")BeenInParty("X3Isaac")~ EXTERN X32Isaa InPartyBefore
IF ~!Dead("X3mily")!BeenInParty("X3Isaac")~ EXTERN X32Isaa NeverInParty
IF ~Dead("X3mily")BeenInParty("X3Isaac")~ EXTERN X32Isaa InPartyBeforeDeadEmily
IF ~Dead("X3mily")!BeenInParty("X3Isaac")~ EXTERN X32Isaa NeverInPartyDeadEmily

CHAIN X32Isaa InPartyBefore 
@43 
END 
++ @45 + ShesHiding
++ @46 + ShesHiding
++ @47 + NotHelping

CHAIN X32Isaa InPartyBeforeDeadEmily
@52
DO ~SetGlobal("X32milyInBG1","GLOBAL",-1)~
END 
++ @53 + NoKnowledge
++ @54 + NoKnowledge
++ @47 + NotHelping


CHAIN X32Isaa NeverInParty 
@51 
END 
++ @55 DO ~SetGlobal("X3IsaacInBG1","GLOBAL",1)~ + SetIsaacInPartyBefore
++ @45 + ShesHiding
++ @46 + ShesHiding
++ @47 + NotHelping

CHAIN X32Isaa NeverInPartyDeadEmily
@44 
DO ~SetGlobal("X32milyInBG1","GLOBAL",-1)~
END 
++ @55 DO ~SetGlobal("X3IsaacInBG1","GLOBAL",1)~ + SetIsaacInPartyBefore
++ @53 + NoKnowledge
++ @54 + NoKnowledge
++ @47 + NotHelping

CHAIN X32Isaa SetIsaacInPartyBefore
@56
END 
+~!Dead("X3mily")~+ @45 + ShesHiding
+~!Dead("X3mily")~+ @46 + ShesHiding
+~Dead("X3mily")~+ @53 + NoKnowledge
+~Dead("X3mily")~+ @54 + NoKnowledge
++ @47 + NotHelping

CHAIN X32Isaa NoKnowledge
@57
== X32EHK3S @58
== X32Isaa @59
== X32EHK3S @60
== X32Isaa @61
END 
++ @62 + IsaacJoins 
++ @63 + IsaacNoJoin 

CHAIN X32Isaa IsaacNoJoin 
@64
DO ~ChangeAIScript("bdparty",RACE)SetGlobal("X3IsaacNeverJoined","locals",-1)SetGlobal("bd_joined","locals",0)SetGlobal("bd_npc_camp","locals",1)~ 
EXTERN X32EHK3S HuntersLeave

CHAIN X32Isaa IsaacJoins 
@65
DO ~AddJournalEntry(@6002,INFO)JoinParty()~ 
EXTERN X32EHK3S HuntersLeave

CHAIN X32EHK3S HuntersLeave 
@66
DO ~ActionOverride("X32EHK1",EscapeArea())ActionOverride("X32EHK2",EscapeArea())ActionOverride("X32EHK4",EscapeArea())EscapeArea()~ 
EXIT 

CHAIN X32EHK3S Talk1.2
@11
END
++ @12 + Talk1.5
+~!Global("X3AttackEmily","GLOBAL",1)~+ @13 + Talk1.8
++ @14 + Talk1.6


CHAIN X32EHK3S Talk1.3
@15
END
++ @16 EXTERN X32EHK3S Talk1.7
++ @17 EXTERN X32EHK3S Talk1.7
++ @18 + Talk1.9 

CHAIN X32EHK3S Talk1.9 
@19
DO ~SetGlobal("X32PlanarHunterEnemy","GLOBAL",2)~
EXIT 


CHAIN X32EHK3S Talk1.7
@20
DO ~SetGlobal("X32ETeleport","GLOBAL",1)~
EXIT 

CHAIN X32EHK3S Talk1.4 
@21
== X32EHK3S @22
== X32EHK3S @23
EXTERN X32EHK3S Talk.Leave 

CHAIN X32EHK3S Talk.Leave
@24
DO ~SetGlobal("X32ETeleport","GLOBAL",1)~
EXIT 

CHAIN X32EHK3S Talk1.5
@25 
== X32EHK3S @26
END
+~!Global("X3AttackEmily","GLOBAL",1)~+ @27 + Talk1.8
++ @28 + Talk1.6


CHAIN X32EHK3S Talk1.6 
@29
EXTERN X32EHK3S Talk.Leave 

CHAIN X32EHK3S Talk1.8 
@30
EXTERN X32EHK3S Talk.Leave 

CHAIN IF ~GlobalLT("BernadetteSeen","GLOBAL",1)!AreaCheck("BD1000")!IsValidForPartyDialogue("X3Isaac")~ THEN X32EHK3S NoIsaac
@69
EXIT 


CHAIN IF ~GlobalLT("BernadetteSeen","GLOBAL",1)!AreaCheck("BD1000")IsValidForPartyDialogue("X3Isaac")~ THEN X32EHK3S FinalTalk
@67
== X32IsaaJ @68
== X32EHK3S @70
END 
//Not Dead
+~!Dead("X32Jacob")~+ @71 + BecomingTrue
+~!Dead("X32Jacob")~+ @72 EXTERN X32IsaaJ OurGroup
+~!Dead("X32Jacob")~+ @73 + WhyCharge
+~!Dead("X32Jacob")~+ @74 EXTERN X32IsaaJ TakeFromHere
// Dead Version
+~Dead("X32Jacob")~+ @114 EXTERN X32IsaaJ JacobDead
+~Dead("X32Jacob")~+ @115 EXTERN X32IsaaJ JacobDead

CHAIN X32EHK3S BecomingTrue 
@75
EXTERN X32IsaaJ OurGroup

CHAIN X32EHK3S WhyCharge
@76
EXTERN X32IsaaJ TakeFromHere 

CHAIN X32IsaaJ TakeFromHere 
@77
EXTERN X32IsaaJ OurGroup 

CHAIN X32IsaaJ OurGroup 
@78
== X32milyJ IF ~IsValidForPartyDialogue("X3mily")~ THEN @79
== X32IsaaJ IF ~IsValidForPartyDialogue("X3mily")~ THEN @80
== X32EHK3S IF ~IsValidForPartyDialogue("X3mily")~ THEN @90
== X32IsaaJ IF ~IsValidForPartyDialogue("X3mily")~ THEN @91
== X32EHK3S @81
DO ~AddJournalEntry(@1008,QUEST)~
== X32IsaaJ @82
END 
++ @83 + DeadEnd
++ @84 + WillOrDie
++ @85 + LetsMoveOn

CHAIN X32IsaaJ LetsMoveOn
@86
EXTERN X32EHK3S GoodBye

CHAIN X32IsaaJ DeadEnd 
@88
EXTERN X32EHK3S GoodBye

CHAIN X32IsaaJ WillOrDie
@87
EXTERN X32EHK3S GoodBye

CHAIN X32EHK3S GoodBye 
@89
DO ~SetGlobal("BernadetteSeen","GLOBAL",1)~
EXIT 

CHAIN IF ~GlobalGT("BernadetteSeen","GLOBAL",0)~ THEN X32EHK3S PostSeen
@93
END 
IF ~Global("BernadetteSeen","GLOBAL",2)IsValidForPartyDialogue("X3Isaac")~ EXTERN X32IsaaJ SwordAsk
++ @94 + NotEasy
+~Dead("X32Jacob")~+ @95 + GoodRiddance
+~Global("X3IsaacSoDQuest","GLOBAL",1)~+ @96 + WhatNow 

CHAIN X32EHK3S WhatNow 
@105
END 
+~IsValidForPartyDialogue("X3Isaac")~+ @106 EXTERN X32IsaaJ IsaacConfirms
+~!IsValidForPartyDialogue("X3Isaac")~+ @106 EXTERN X32EHK3S NeedIsaac 

CHAIN X32EHK3S NeedIsaac 
@108
DO ~SetGlobal("BernadetteSeen","GLOBAL",2)~
EXIT

CHAIN X32IsaaJ IsaacConfirms
@107
== X32EHK3S @110
DO ~GiveItem("X3ESWRD",Player1)AddJournalEntry(@60022,QUEST)~
== X32IsaaJ @111
== X32EHK3S @112
EXTERN X32EHK3S TimeToGo

CHAIN X32EHK3S TimeToGo 
@99
DO ~EscapeArea()~
== X32IsaaJ IF ~IsValidForPartyDialogue("X3Isaac")~ THEN @100
EXIT 


CHAIN X32EHK3S NotEasy 
@97
EXIT 

CHAIN X32EHK3S GoodRiddance 
@98
DO ~AddexperienceParty(3000)~ 
END 
IF ~OR(2)!Global("X3IsaacSoDQuest","GLOBAL",-1)!IsValidForPartyDialogue("X3Isaac")~ EXTERN X32EHK3S TimeToGo
IF ~Global("X3IsaacSoDQuest","GLOBAL",-1)IsValidForPartyDialogue("X3Isaac")~ EXTERN X32IsaaJ QuestFail

CHAIN X32IsaaJ QuestFail 
@101
== X32EHK3S @102
== X32IsaaJ @103 
== X32EHK3S @104
EXTERN X32EHK3S TimeToGo

CHAIN X32IsaaJ SwordAsk 
@109 
== X32EHK3S @112
EXTERN X32IsaaJ IsaacConfirms

CHAIN X32IsaaJ JacobDead 
@116
DO ~AddJournalEntry(@60018,QUEST_DONE)SetGlobal("X3IsaacSoDQuest","GLOBAL",4)~
== X32milyJ IF ~IsValidForPartyDialogue("X3mily")~ THEN @117
== X32EHK3S IF ~IsValidForPartyDialogue("X3mily")~ THEN @118
EXTERN X32IsaaJ QuestFail 