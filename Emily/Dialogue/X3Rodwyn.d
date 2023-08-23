BEGIN X3Rodwyn

CHAIN IF ~!Global("X3EmiRodwynMessageSpawn","GLOBAL",2)Global("X3EmiRodwynIsaacDuel","GLOBAL",0)~ THEN X3Rodwyn NormalCon
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
END 
IF ~!IsValidForPartyDialogue("X3Isaac")~ EXTERN X3Rodwyn DeadAdalAttacks 
IF ~IsValidForPartyDialogue("X3Isaac")~ EXTERN X3Rodwyn DeadAdalIsaac

CHAIN X3Rodwyn DeadAdalIsaac 
@81
== X3IsaacJ @82
== X3Rodwyn @83
DO ~ChangeRace("X3mily",AASIMAR)AddJournalEntry(@10016,QUEST_DONE)ActionOverride("X3Adv1",Enemy())ActionOverride("X3Adv2",Enemy())Enemy()~
EXIT 

CHAIN X3Rodwyn DeadAdalAttacks
@6
DO ~ChangeRace("X3mily",AASIMAR)AddJournalEntry(@10016,QUEST_DONE)ActionOverride("X3Adv1",Enemy())ActionOverride("X3Adv2",Enemy())Enemy()~
EXIT 

CHAIN X3milyJ LivingAdal
@7
== X3Rodwyn @8
== X3milyJ @9
== X3Rodwyn @10
== X3milyJ @11
== X3Rodwyn @12
END 
IF ~!IsValidForPartyDialogue("X3Isaac")~ EXTERN X3milyJ LivingAdalNormal
IF ~IsValidForPartyDialogue("X3Isaac")~ EXTERN X3IsaacJ LivingAdalIsaac

CHAIN X3IsaacJ LivingAdalIsaac 
@84
== X3Rodwyn @85
== X3milyJ @86
== X3Rodwyn @87
== X3IsaacJ @88
== X3Rodwyn @89
== X3IsaacJ @90
== X3Rodwyn @91
DO ~StartCutSceneMode()
		Wait(1)
		CreateCreature("X3HL",[359.748],SE)  // Leader
		CreateCreature("X3H1",[680.671],NW)  // Rogue/Fighter
		CreateCreature("X3H2",[670.764],SW)  // Rogue/Mage
		PlaySound("ACT_07")
		SmallWait(1)
		StartCutScene("X3ECUT01")~
EXIT 

CHAIN X3milyJ LivingAdalNormal
@13
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

CHAIN IF ~Global("X3EmiRodwynMessageSpawn","GLOBAL",2)IsValidForPartyDialogue("X3mily")~ THEN X3Rodwyn SpecialCon 
@18
DO ~SetGlobal("X3EmiRodwynMessageSpawn","GLOBAL",3)~
== X3milyJ @19
== X3Rodwyn @20
== X3milyJ @21
== X3Rodwyn @22
== X3milyJ @23
END 
IF ~IsValidForPartyDialogue("X3Isaac")~ EXTERN X3Rodwyn BeholdIsaac 
IF ~!IsValidForPartyDialogue("X3Isaac")~ EXTERN X3Rodwyn BeholdCharname

CHAIN X3Rodwyn BeholdIsaac 
@24
== X3IsaacJ @48
== X3Rodwyn @49
== X3IsaacJ @50
== X3Rodwyn @51
== X3milyJ @52
== X3Rodwyn @53
END 
++ @54 + KnownTheTruth
++ @55 + KnownTheTruth
++ @38 EXTERN X3milyJ EmilyTurns

CHAIN X3Rodwyn KnownTheTruth 
@56
== X3IsaacJ @57
== X3milyJ @58
END 
++ @59 EXTERN X3milyJ DefendIsaac
++ @60 EXTERN X3IsaacJ FightIsaac
++ @63 EXTERN X3milyJ NoSides

CHAIN X3milyJ NoSides 
@64
DO ~SetGlobal("X3EmiRodwynIsaacDuel","GLOBAL",1)~
== X3IsaacJ @65
DO ~ChangeRace("X3mily",AASIMAR)AddJournalEntry(@10020,QUEST_DONE)ActionOverride("X3mily",LeaveParty())ActionOverride("X3mily",Attack("X3Isaac"))ActionOverride("X3Rodwyn",Attack("X3Isaac"))ActionOverride("X3Adv1",Attack("X3Isaac"))ActionOverride("X3Adv2",Attack("X3Isaac"))LeaveParty()Attack("X3mily")~
EXIT 

CHAIN X3IsaacJ FightIsaac 
@62
DO ~SetGlobal("X3EmiRodwynIsaacDuel","GLOBAL",1)ChangeRace("X3mily",AASIMAR)AddJournalEntry(@10022,QUEST_DONE)SetGlobal("X3Hostile","LOCALS",1)LeaveParty()Enemy()~
EXIT 

CHAIN X3milyJ DefendIsaac
@66
END 
++ @67 EXTERN X3milyJ IHateHim
++ @63 EXTERN X3milyJ NoSides

CHAIN X3milyJ IHateHim 
@68
== X3Rodwyn @69
== X3milyJ @70
EXTERN X3Rodwyn YouAreSoft

CHAIN X3Rodwyn BeholdCharname 
@25
== X3milyJ @26
== X3Rodwyn @27
== X3milyJ @28
== X3Rodwyn @29
== X3milyJ @30
END 
++ @31 EXTERN X3Rodwyn BeholdAdalgisa
++ @32 EXTERN X3Rodwyn BeholdAdalgisa
++ @33 EXTERN X3Rodwyn BeholdAdalgisa

CHAIN X3Rodwyn BeholdAdalgisa 
@34
= @35
END 
++ @36 EXTERN X3milyJ ISwear
++ @37 EXTERN X3milyJ ISurrender
++ @38 EXTERN X3milyJ EmilyTurns
++ @39 EXTERN X3milyJ EmilyTurns

CHAIN X3milyJ EmilyTurns
@40
DO ~SetGlobal("X3EmiRodwynIsaacDuel","GLOBAL",1)SetGlobal("X3Hostile","LOCALS",1)AddJournalEntry(@10019,QUEST_DONE)ActionOverride("X3Adv1",Enemy())ActionOverride("X3Adv2",Enemy())ActionOverride("X3Rodwyn",SetGlobal("X3Hostile","LOCALS",1))ActionOverride("X3Rodwyn",Enemy())SetGlobal("X3Hostile","LOCALS",1)LeaveParty()Enemy()~
EXIT 

CHAIN X3milyJ ISwear 
@41 
== X3Rodwyn @42 
END 
++ @43 EXTERN X3milyJ EmilyTurns 
++ @37 EXTERN X3milyJ ISurrender
++ @47 EXTERN X3milyJ ISurrender 

CHAIN X3milyJ ISurrender 
@44
EXTERN X3Rodwyn YouAreSoft

CHAIN X3Rodwyn YouAreSoft
@45
DO ~SetGlobal("X3EmiSpareIsaac","GLOBAL",1)ChangeRace("X3mily",AASIMAR)AddJournalEntry(@10021,QUEST_DONE)ActionOverride("X3Adv1",Enemy())ActionOverride("X3Adv2",Enemy())Enemy()~
EXIT 

CHAIN IF ~Global("X3EmiRodwynMessageSpawn","GLOBAL",2)IsValidForPartyDialogue("X3mily")~ THEN X3Rodwyn SpecialConBreak 
@17
EXIT 

CHAIN IF ~Global("X3EmiRodwynIsaacDuel","GLOBAL",1)Dead("X3Isaac")!Dead("X3mily")~ THEN X3Rodwyn IsaacDeadTalk
@71
DO ~SetGlobal("X3EmiRodwynIsaacDuel","GLOBAL",3)~
= @72
END 
IF ~InParty("X3mily")~ EXTERN X3milyJ EmilyInParty
IF ~!InParty("X3mily")~ EXTERN X3milyP EmilyNotInParty

CHAIN X3milyJ EmilyInParty
@73
== X3Rodwyn @74
== X3milyJ @75
== X3Rodwyn @76
== X3Rodwyn @77
== X3Rodwyn @78
DO ~ActionOverride("X3Adv1",EscapeArea())ActionOverride("X3Adv2",EscapeArea())EscapeArea()~
EXIT 

CHAIN X3milyP EmilyNotInParty
@73
== X3Rodwyn @74
== X3milyP @75
== X3Rodwyn @76
== X3Rodwyn @77
== X3Rodwyn @78
DO ~ActionOverride("X3Adv1",EscapeArea())ActionOverride("X3Adv2",EscapeArea())EscapeArea()~
EXIT 

CHAIN IF ~Global("X3EmiRodwynIsaacDuel","GLOBAL",1)Dead("X3Isaac")Dead("X3mily")~ THEN X3Rodwyn IsaacDeadTalk2
@79
DO ~SetGlobal("X3EmiRodwynIsaacDuel","GLOBAL",3)~
= @80
DO ~ActionOverride("X3Adv1",Enemy())ActionOverride("X3Adv2",Enemy())Enemy()~
EXIT 