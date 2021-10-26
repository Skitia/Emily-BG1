BEGIN X32Jacob 

CHAIN IF ~Global("X32milyQuestSpawn","GLOBAL",1)~ THEN X32Jacob NoEmily
@0
EXIT

CHAIN IF ~Global("X32milyQuestSpawn","GLOBAL",2)~ THEN X32Jacob Quest
@1 
== X32milyJ @2
== X32Jacob @3
== X32milyJ IF ~Gender(Player1,MALE)~ THEN @4
== X32milyJ IF ~!Gender(Player1,MALE)~ THEN @5
END 
++ @6 EXTERN X32Jacob QuestA
+~Gender(Player1,MALE)~+ @7 EXTERN X32milyJ QuestB
+~!Gender(Player1,MALE)~+ @7 EXTERN X32milyJ QuestC 
++ @8 EXTERN X32Jacob QuestA

CHAIN X32Jacob QuestA 
@9
== X32milyJ @10
== X32Jacob @11
DO ~AddJournalEntry(@1004, QUEST)SetGlobal("X32milyQuestSpawn","GLOBAL",3)MoveToPoint([4595.2421])~ 
EXIT 

CHAIN X32milyJ QuestB 
@12
END 
IF ~GlobalLT("X32milyRomanceActive","GLOBAL",2)~ DO ~SetGlobal("X32milyRomanceActive","GLOBAL",1)~ EXTERN X32Jacob QuestA
IF ~GlobalGT("X32milyRomanceActive","GLOBAL",1)~ EXTERN X32Jacob QuestA

CHAIN X32milyJ QuestC 
@13
EXTERN X32Jacob QuestA

CHAIN IF ~Global("X32milyQuestSpawn","GLOBAL",3)~ THEN X32Jacob Quest2
@14
== X32milyJ @15
END 
++ @16 EXTERN X32milyJ Quest2A 
++ @17 EXTERN X32Jacob Quest2B 
++ @18 EXTERN X32Jacob Quest2C 
++ @19 EXTERN X32Jacob Quest2D

CHAIN X32milyJ Quest2A 
@20
== X32Jacob @21
END 
++ @17 EXTERN X32Jacob Quest2B 
++ @18 EXTERN X32Jacob Quest2C 
++ @19 EXTERN X32Jacob Quest2C

CHAIN X32Jacob Quest2B 
@22
== X32milyJ @23
EXTERN X32Jacob Quest2B2 

CHAIN X32Jacob Quest2B2 
@24
END 
++ @25 EXTERN X32Jacob Quest2D 
++ @26 EXTERN X32Jacob Quest2D 
++ @27 EXTERN X32Jacob Quest2F 

CHAIN X32Jacob Quest2C 
@28
== X32milyJ @29
EXTERN X32Jacob Quest2B2 

CHAIN X32Jacob Quest2D 
@30
== X32Jacob @31
== X32Jacob @32
END 
+~Gender(Player1,MALE)~+ @33 EXTERN X32Jacob Quest2EM 
+~Gender(Player1,FEMALE)~+ @33 EXTERN X32Jacob Quest2EF
++ @34 EXTERN X32Jacob Quest2F 
++ @35 EXTERN X32Jacob Quest2F 


CHAIN X32Jacob Quest2EM 
@36
EXTERN X32Jacob Quest2E 

CHAIN X32Jacob Quest2EF 
@37
EXTERN X32Jacob Quest2E 

CHAIN X32Jacob Quest2E 
@38
== X32milyJ @39
== X32Jacob @40
== X32milyJ @41
== X32Jacob @42
DO ~SetGlobal("X32milyQuestSpawn","GLOBAL",5)EscapeArea()~ EXIT

CHAIN X32Jacob Quest2F 
@43
== X32milyJ @44
== X32Jacob @45
== X32milyJ @46
== X32Jacob @47
== X32Jacob @48
END 
++ @49 EXTERN X32Jacob Quest2G
++ @50 EXTERN X32Jacob Quest2H 
++ @51 EXTERN X32Jacob Quest2I

CHAIN X32Jacob Quest2G 
@52
DO ~SetGlobal("X32milyQuestSpawn","GLOBAL",4)EscapeArea()~ EXIT

CHAIN X32Jacob Quest2H 
@53 
DO ~SetGlobal("X32milyQuestSpawn","GLOBAL",4)EscapeArea()~ EXIT

CHAIN X32Jacob Quest2I 
@54
== X32milyJ @55
== X32Jacob @56
DO ~Enemy()~ EXIT

