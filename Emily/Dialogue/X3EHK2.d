BEGIN X3EHK2

CHAIN IF ~!GlobalLT("X3IQuest","GLOBAL",6)!Global("X3milySixthTalk","GLOBAL",1)!Global("X3AttackEmily","GLOBAL",1)~ THEN X3EHK2 General
@0 // ~Speak to Camilla. She's the voice.~
EXIT

CHAIN IF ~IsValidForPartyDialogue("X3Isaac")GlobalLT("X3IQuest","GLOBAL",6)OR(2)Global("X3milySixthTalk","GLOBAL",1)Global("X3AttackEmily","GLOBAL",1)~ THEN X3EHK2 Special
@1
== X3IsaacJ @2
END 
IF ~Global("X3milySixthTalk","GLOBAL",1)~ EXTERN X3EHK2 Tracking
IF ~Global("X3AttackEmily","GLOBAL",1)~ EXTERN X3EHK2 Book

CHAIN X3EHK2 Tracking 
@3 
== X3IsaacJ @4
== X3EHK2 @5
EXTERN X3IsaacJ SpecialConclude 

CHAIN X3IsaacJ SpecialConclude
@6
== X3EHK2 @7
== X3IsaacJ @8
== X3EHK2 @9
DO ~EscapeArea()~
== X3IsaacJ @10
EXIT 

CHAIN X3EHK2 Book 
@11
== X3IsaacJ @12
== X3EHK2 @13
== X3IsaacJ @14
== X3EHK2 @15
EXTERN X3IsaacJ SpecialConclude 
 