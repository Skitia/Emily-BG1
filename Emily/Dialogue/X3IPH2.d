BEGIN X3IPH2 

CHAIN IF ~IsValidForPartyDialogue("X3Isaac")~ THEN X3IPH2 OnlyCon 
@0
DO ~SetGlobal("X3IConOnce","LOCALS",1)~
== X3IsaacJ @1
== X3IPH2 IF ~!Dead("X3HL")~ THEN @2
== X3IPH2 IF ~Dead("X3HL")~ THEN @3
END 
++ @4 EXTERN X3IsaacJ MavisBehind
++ @5 EXTERN X3IsaacJ ExplainYourself
++ @6 EXTERN X3IsaacJ WantsToHelp
++ @7 EXTERN X3IsaacJ Criticism

CHAIN X3IsaacJ MavisBehind 
@12
EXTERN X3IsaacJ WhoDoWeHaveLeft 

CHAIN X3IsaacJ WantsToHelp 
@14
EXTERN X3IsaacJ WhoDoWeHaveLeft 

CHAIN X3IsaacJ Criticism
@15
EXTERN X3IsaacJ WhoDoWeHaveLeft 

CHAIN X3IsaacJ WhoDoWeHaveLeft
@9
DO ~SetGlobal("X3IQuest","GLOBAL",7)~
== X3IPH2 IF ~Dead("X3HL")~ THEN @10
== X3IPH2 IF ~!Dead("X3HL")~ THEN @47 
== X3IsaacJ @11
== X3IPH2 @45
== X3IsaacJ @46
END 
++ @15 DO ~AddJournalEntry(@60014,QUEST)~ + GregTrusted 
++ @16 + ExplainYourself
++ @17 DO ~AddJournalEntry(@60014,QUEST)~ + FaceHerOn
++ @18 DO ~AddJournalEntry(@60014,QUEST)~ + OtherMattersFirst

CHAIN X3IsaacJ FaceHerOn 
@21
EXTERN X3IPH2 NoGreg 

CHAIN X3IPH2 NoGreg 
@22
DO ~EscapeArea()~
== X3IsaacJ @23
EXIT 

CHAIN X3IsaacJ GregTrusted 
@19
== X3IPH2 @20
EXTERN X3IsaacJ FaceHerOn 

CHAIN X3IsaacJ OtherMattersFirst 
@24
= @25
EXTERN X3IPH2 NoGreg 

CHAIN X3IsaacJ ExplainYourself 
@8
END 
++ @26 + TheyWereInnocent
++ @27 + KillYouNow
++ @28 + BloodToxin

CHAIN X3IsaacJ TheyWereInnocent 
@29
EXTERN X3IsaacJ KillYouNow 

CHAIN X3IsaacJ BloodToxin 
@31
EXTERN X3IsaacJ KillYouNow 

CHAIN X3IsaacJ KillYouNow 
@30
END 
IF ~IsValidForPartyDialogue("X3mily")!Global("X3IQuest","GLOBAL",7)GlobalGT("X3milySixthTalk","GLOBAL",0)~ EXTERN X3milyJ KillNot
IF ~OR(3)!IsValidForPartyDialogue("X3mily")Global("X3IQuest","GLOBAL",7)Global("X3milySixthTalk","GLOBAL",0)~ DO ~AddJournalEntry(@60013,QUEST_DONE)ActionOverride("X3IPH2",Enemy())LeaveParty()Enemy()Attack(NearestEnemyOf(Myself))~ EXIT 

CHAIN X3milyJ KillNot 
@32
== X3IsaacJ @33
== X3milyJ IF ~Race("X3mily",Aasimar)~ THEN @34
== X3milyJ IF ~!Race("X3mily",Aasimar)~ THEN @35
== X3IsaacJ @36
END 
++ @37 EXTERN X3IPH2 Really
++ @38 EXTERN X3IsaacJ BattleSelected 
++ @39 EXTERN X3IsaacJ BattleSelected
++ @40 EXTERN X3IPH2 Really

CHAIN X3IsaacJ BattleSelected
@41
DO ~AddJournalEntry(@60013,QUEST_DONE)ActionOverride("X3IPH2",Enemy())LeaveParty()Enemy()Attack(NearestEnemyOf(Myself))~ EXIT 

CHAIN X3IPH2 Really 
@42
== X3IsaacJ @43
== X3IPH2 @44
DO ~EscapeArea()~
EXIT 

CHAIN IF ~!IsValidForPartyDialogue("X3Isaac")~ THEN X3IPH2 NoIsaac 
@48
EXIT 