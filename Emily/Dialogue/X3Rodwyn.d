BEGIN X3Rodwyn

CHAIN IF ~True()~ THEN X3Rodwyn AdalDead
@0 
END 
IF ~IsValidForPartyDialogue("X3mily")Dead("X3dal")~ EXTERN X3milyJ DeadAdal
IF ~IsValidForPartyDialogue("X3mily")!Dead("X3dal")~ EXTERN X3milyJ LivingAdal
IF ~!IsValidForPartyDialogue("X3mily")~ EXIT 

CHAIN X3milyJ DeadAdal 
@1
== X3Rodwyn @2
== X3milyJ @3
== X3Rodwyn @4
== X3milyJ @5
== X3Rodwyn @6
DO ~AddJournalEntry(@10016,QUEST_DONE)ActionOverride("X3Adv1",Enemy())ActionOverride("X3Adv2",Enemy())Enemy()~
EXIT 

CHAIN X3milyJ LivingAdal
@7
== X3Rodwyn @8
== X3milyJ @9
== X3Rodwyn @10
== X3milyJ @11
== X3Rodwyn @12
== X3milyJ @13
== X3Rodwyn @14
== X3milyJ @15
== X3Rodwyn @16
DO ~StartCutSceneMode()
		Wait(1)
		CreateCreature("X3HL",[359.748],SE)  // Leader
		CreateCreature("X3H1",[680.671],NW)  // Rogue/Fighter
		CreateCreature("X3H2",[670.764],SW)  // Rogue/Mage
		PlaySound("ACT_07")
		SmallWait(1)
		StartCutScene("X3ECUT01")~
EXIT 