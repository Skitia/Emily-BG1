BEGIN X3HL 

CHAIN IF ~!IsValidForPartyDialogue("X3Isaac")~ THEN X3HL OnlyCon 
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

CHAIN IF ~IsValidForPartyDialogue("X3Isaac")~ THEN X3HL IsaacCon
@14
== X3IsaacJ @15
== X3HL @16
== X3HL @17
== X3IsaacJ @18
== X3HL @19
== X3IsaacJ @20
== X3HL @21
== X3IsaacJ @22
== X3HL @23
== X3milyJ @24
END 
++ @25 EXTERN X3HL TimesChanging
++ @26 EXTERN X3HL TimesChanging
++ @27 EXTERN X3HL FatChance

CHAIN X3HL FatChance 
@28 
EXTERN X3HL TimesChanging 

CHAIN X3HL TimesChanging
@29
= @30
= @31
END 
IF ~GlobalGT("X3IsaacApp","GLOBAL",40)~ EXTERN X3IsaacJ IsaacLoyalCharname
IF ~!GlobalGT("X3IsaacApp","GLOBAL",40)~ EXTERN X3IsaacJ IsaacLoyalPlanarHunters 

CHAIN X3IsaacJ IsaacLoyalCharname 
@32 
DO ~SetGlobal("IsaacLoyalEmily","GLOBAL",1)~
== X3HL @39
== X3IsaacJ @40
== X3HL @41
== X3IsaacJ @42 
== X3HL @43
DO ~ChangeRace("X3mily",AASIMAR)AddJournalEntry(@10025,QUEST_DONE)ActionOverride("X3H1",Enemy())ActionOverride("X3H2",Enemy())Enemy()~ EXIT 

CHAIN X3IsaacJ IsaacLoyalPlanarHunters 
@33 
== X3HL @34
== X3milyJ @35
END 
++ @44 EXTERN X3IsaacJ WeDance
++ @45 DO ~GivePartyGold(1000)~ EXTERN X3milyJ Betrayed 

CHAIN X3milyJ Betrayed 
@36
DO ~AddJournalEntry(@10023,QUEST_DONE)LeaveParty()EscapeArea()~
== X3HL @37
DO ~ActionOverride("X3H1",Attack("X3mily"))ActionOverride("X3H2",Attack("X3mily"))Attack("X3mily")~
EXIT 

CHAIN X3IsaacJ WeDance
@36
DO ~SetGlobal("IsaacBetrayParty","GLOBAL",1)AddJournalEntry(@10024,QUEST_DONE)LeaveParty()Enemy()ActionOverride("X3H1",Enemy())ActionOverride("X3H2",Enemy())ActionOverride("X3HL",Enemy())~
EXIT 


