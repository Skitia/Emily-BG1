BEGIN X3EHK1

CHAIN IF ~OR(2)!IsValidForPartyDialogue("X3Isaac")Global("SpokeToIsaac","LOCALS",0)~ THEN X3EHK1 General
@0 // ~Speak to the boss. She's the voice.~
EXIT

CHAIN IF ~IsValidForPartyDialogue("X3Isaac")Global("SpokeToIsaac","LOCALS",0)~ THEN X3EHK1 Special
@2
DO ~SetGlobal("SpokeToIsaac","LOCALS",1)~
END 
IF ~Dead("X3IPH1")~ EXTERN X3IsaacJ EctorDead
IF ~!Dead("X3IPH1")~ EXTERN X3IsaacJ EctorCoward

CHAIN X3IsaacJ EctorDead
@3
== X3EHK1 @4 
== X3IsaacJ @5
EXIT 

CHAIN X3IsaacJ EctorCoward
@6
== X3EHK1 @7
== X3IsaacJ @8
EXIT 
