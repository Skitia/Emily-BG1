BEGIN X3Mavis
BEGIN X3Arbex

CHAIN IF ~True()~ THEN X3Mavis OnlyConversation
@0
== X3IsaacJ @1
== X3Mavis @2
== X3Caim @3
== X3IsaacJ @4
== X3Mavis @5
== X3IsaacJ @6
== X3Mavis @7
END 
++ @8 EXTERN X3Caim NoWords
++ @9 EXTERN X3Mavis Words

CHAIN X3Caim NoWords
@10
== X3Mavis @11
EXTERN X3Caim Disobey

CHAIN X3Caim Disobey
@12
== X3Mavis @13
== X3Caim @14
DO ~StartCutSceneMode()SmallWait(1)ForceSpellRES("SPIN660","X3Mavis")ForceSpellRES("SPIN660","X3Arbex")Wait(2)StartDialogueNoSet(Player1)~ EXIT 

CHAIN X3Mavis Words 
@15
= @16
= @17
END 
++ @18 EXTERN X3Arbex Mad
++ @19 EXTERN X3Arbex Mad
++ @20 EXTERN X3Arbex Arbex

CHAIN X3Arbex Mad 
@21
EXTERN X3Arbex Arbex 

CHAIN X3Arbex Arbex 
@22
= @23
== X3IsaacJ @24
== X3Mavis @25
== X3Caim @26
== X3Mavis @27
EXTERN X3Caim Disobey