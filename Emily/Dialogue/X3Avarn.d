BEGIN X3Avarn

CHAIN IF ~Global("X3AvarnSawIsaac","GLOBAL",1)~ THEN X3Avarn SawIsaac 
@3 
EXIT 

CHAIN IF ~See("X3Isaac")!GlobalGT("X3IQuest","GLOBAL",2)~ THEN X3Avarn SeeIsaacFirstMet
@0
DO ~AddJournalEntry(@60005,QUEST)SetGlobal("X3AvarnSawIsaac","GLOBAL",1)~
EXIT 

CHAIN IF ~!Global("X3AvarnSawIsaac","GLOBAL",1)See("X3Isaac")GlobalGT("X3IQuest","GLOBAL",2)~ THEN X3Avarn SeeIsaacTalked
@1
DO ~Enemy()~
EXIT 


CHAIN IF ~!See("X3Isaac")GlobalGT("X3IQuest","GLOBAL",2)~ THEN X3Avarn Talked
@2
EXIT 

CHAIN IF ~!See("X3Isaac")!GlobalGT("X3IQuest","GLOBAL",2)~ THEN X3Avarn MainChain
@4
END 
++ @5 + Mavis
++ @6 + Farewell
++ @7 + Farewell 

CHAIN X3Avarn Farewell  
@8 
EXIT 

CHAIN X3Avarn Mavis 
@9
END 
++ @10 + Maybe 
++ @11 + Maybe
++ @12 + Threaten
++ @13 + Offering

CHAIN X3Avarn Threaten
@14 
DO ~DisplayString(LastTalkedToBy,@15)  
CreateCreature("FLAM",[492.192],S)Enemy()AddJournalEntry(@60007,QUEST)~ // Flaming Fist Enforcer
EXIT

CHAIN X3Avarn Maybe 
@16 
END 
++ @20 + Ten 
++ @21 + Fifty
+~PartyGoldGT(99)~+ @22 DO ~TakePartyGold(100)~ + Hundred
+~PartyGoldGT(499)~+ @23 DO ~TakePartyGold(500)~ + FiveHundred
++ @18 + Forget
++ @17 + Threaten 

CHAIN X3Avarn Ten 
@24
END 
++ @27 + NotAffordable
++ @21 + Fifty
+~PartyGoldGT(99)~+ @22 DO ~TakePartyGold(100)~ + Hundred
+~PartyGoldGT(499)~+ @23 DO ~TakePartyGold(500)~ + FiveHundred
++ @18 + Forget
++ @17 + Threaten 

CHAIN X3Avarn Fifty
@24
END 
++ @27 + NotAffordable
+~PartyGoldGT(99)~+ @22 DO ~TakePartyGold(100)~ + Hundred
+~PartyGoldGT(499)~+ @23 DO ~TakePartyGold(500)~ + FiveHundred
++ @18 + Forget
++ @17 + Threaten 

CHAIN X3Avarn Forget 
@19 
EXIT 

CHAIN X3Avarn Hundred 
@25
EXTERN X3Avarn Talk 

CHAIN X3Avarn FiveHundred 
@26
EXTERN X3Avarn Talk 

CHAIN X3Avarn Talk
@28
= @29
= @30
DO ~SetGlobal("X3IQuestTask1Pass","GLOBAL",1)AddJournalEntry(@60006,QUEST)~
EXIT 

CHAIN X3Avarn Offering
@31
END 
++ @20 + Ten 
++ @21 + Fifty
+~PartyGoldGT(99)~+ @22 DO ~TakePartyGold(100)~ + Hundred
+~PartyGoldGT(499)~+ @23 DO ~TakePartyGold(500)~ + FiveHundred
++ @18 + Forget

CHAIN X3Avarn NotAffordable
@32 
EXIT 
