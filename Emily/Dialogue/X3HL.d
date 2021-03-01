BEGIN X3HL 

CHAIN IF ~True()~ THEN X3HL OnlyCon 
@0 
END 
++ @1 + OnlyCon1 
++ @2 + OnlyCon2 
++ @3 + OnlyCon1 

CHAIN X3HL OnlyCon1 
@4
EXTERN X3HL OnlyCon3 

CHAIN X3HL OnlyCon2 
@5
EXTERN X3HL OnlyCon3 

CHAIN X3HL OnlyCon3 
@6
== X3HL @7
END 
++ @8 + OnlyCon4
++ @9 + OnlyCon4 
++ @10 + OnlyCon4

CHAIN X3HL OnlyCon4 
@11
END 
IF ~IsValidForPartyDialogue("X3mily")~ EXTERN X3milyJ OnlyCon5  
IF ~~ DO ~ChangeRace("X3mily",AASIMAR)AddJournalEntry(@10017,QUEST_DONE)ActionOverride("X3H1",Enemy())ActionOverride("X3H2",Enemy())Enemy()~ EXIT 

CHAIN X3milyJ OnlyCon5 
@12
== X3HL @13
DO ~ChangeRace("X3mily",AASIMAR)AddJournalEntry(@10017,QUEST_DONE)ActionOverride("X3H1",Enemy())ActionOverride("X3H2",Enemy())Enemy()~ EXIT 
