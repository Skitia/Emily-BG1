BEGIN X3Adv 

CHAIN IF ~!AreaCheck("%bg1_eet_symbol%1300")!Dead("X3Rodwyn")~ THEN X3Adv OneLiner
@0
EXIT 

CHAIN IF ~!AreaCheck("%bg1_eet_symbol%1300")Dead("X3Rodwyn")~ THEN X3Adv OneLiner2
@10
EXIT 


CHAIN IF ~AreaCheck("%bg1_eet_symbol%1300")~ THEN X3Adv OneLiner
@1
DO ~AddJournalEntry(@10018,QUEST)SetGlobal("X3milyBookTalk","GLOBAL",8)~ //This will skip all the book talks.
== X3milyJ @2
== X3Adv @3
== X3milyJ @4
END 
++ @5 EXTERN X3Adv TakeTime
++ @6 EXTERN X3Adv TakeTime
++ @7 EXTERN X3Adv Suspicious 

CHAIN X3Adv TakeTime 
@8
DO ~EscapeArea()~
EXIT 

CHAIN X3Adv Suspicious 
@9
DO ~EscapeArea()~
EXIT  