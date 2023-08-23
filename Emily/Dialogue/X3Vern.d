BEGIN X3Vern

CHAIN IF ~AreaCheck("%bg1_eet_symbol%4809")Global("X3VernSurrender","LOCALS",-1)!See("X3Isaac")~ THEN X3Vern LeftAlone
@47
END 
++ @3 + MakeTalk
++ @4 + JustDrink // ~I'm just here for a drink.~ // Sorry. 

CHAIN IF ~AreaCheck("%bg1_eet_symbol%4809")Global("X3VernSurrender","LOCALS",0)!See("X3Isaac")~ THEN X3Vern FirstCon 
@0 // = ~Huh? You lost or something?~
END 
++ @1 + HavePackage
++ @2 + PathTalk
++ @3 + LookingAt
++ @4 + MakeTalk 

CHAIN X3Vern LookingAt 
@86
END 
++ @23 + SpellIssues 
++ @20 + ConExit
++ @19 + HavePackage
++ @22 + MakeTalk //~You're Vern? I have something I need to know.~

CHAIN X3Vern HavePackage 
@5
END  
++ @6 + PackageCheck
++ @7 + PackageCheck
++ @8 + MakeTalk

CHAIN X3Vern PackageCheck 
@9
END 
++ @10 + PackageCheckPass
++ @11 + PackageCheckFail
++ @12 + PackageCheckPass
++ @13 + MakeTalk 

CHAIN X3Vern PackageCheckPass 
@16
DO 
~SetInterrupt(FALSE)ClearAllActions()FadeToColor([15.0],0)
Wait(1)ActionOverride(Player1,MoveBetweenAreas("%bg1_eet_symbol%4800",[2938.3612],NE))
	ActionOverride(Player2,MoveBetweenAreas("%bg1_eet_symbol%4800",[2860.3740],NE))
	ActionOverride(Player3,MoveBetweenAreas("%bg1_eet_symbol%4800",[2755.3503],SE))
	ActionOverride(Player4,MoveBetweenAreas("%bg1_eet_symbol%4800",[2878.3427],NE))
	ActionOverride(Player5,MoveBetweenAreas("%bg1_eet_symbol%4800",[3264.3416],SE))
	ActionOverride(Player6,MoveBetweenAreas("%bg1_eet_symbol%4800",[2707.3673],SE))
	MoveBetweenAreas("%bg1_eet_symbol%4800",[3020.3595],SW)
	SmallWait(1)
	MoveViewObject(Player1,INSTANT)
	Wait(1)
	ActionOverride(Player1,FaceObject("X3Vern"))
	ActionOverride(Player2,FaceObject("X3Vern"))
	ActionOverride(Player3,FaceObject("X3Vern"))
	ActionOverride(Player4,FaceObject("X3Vern"))
	ActionOverride(Player5,FaceObject("X3Vern"))
	ActionOverride(Player6,FaceObject("X3Vern"))
	Wait(1)
	SetInterrupt(TRUE)FadeFromColor([15.0],0)Wait(1)StartDialogueNoSet(Player1)~
EXIT 

CHAIN X3Vern PackageCheckFail 
@14
EXTERN X3Vern FirstConViolence 

CHAIN X3Vern FirstConViolence 
@15
DO ~Enemy()~
EXIT 

CHAIN X3Vern PathTalk 
@17
END 
++ @23 + SpellIssues 
++ @20 + ConExit
++ @19 + HavePackage
++ @22 + MakeTalk //~You're Vern? I have something I need to know.~

CHAIN X3Vern JustDrink
@18
EXIT

CHAIN X3Vern ConExit
@21 
EXIT 

CHAIN X3Vern SpellIssues 
@24
= @25
END 
+~OR(2)Class(Player1,"MAGE_ALL")Class(Player1,"BARD_ALL")~+ @26 + IAmFine //Add Class Check
+~!Class(Player1,"MAGE_ALL")!Class(Player1,"BARD_ALL")~+ @27 + GoOutside
++ @28 + IsHeHere
++ @29 + MeansWell

CHAIN X3Vern IAmFine
@30
END 
++ @31 + GoOutside
++ @33 + NotGoodEnough
++ @34 + HowYouDoIt

CHAIN X3Vern MeansWell 
@37
END 
+~OR(2)Class(Player1,"MAGE_ALL")Class(Player1,"BARD_ALL")~+ @26 + IAmFine //Add Class Check
+~!Class(Player1,"MAGE_ALL")!Class(Player1,"BARD_ALL")~+ @27 + GoOutside
++ @28 + IsHeHere

CHAIN X3Vern GoOutside
@32
EXTERN X3Vern LetsLeave

CHAIN X3Vern NotGoodEnough
@35
EXTERN X3Vern LetsLeave

CHAIN X3Vern HowYouDoIt
@36
EXTERN X3Vern LetsLeave

CHAIN X3Vern LetsLeave 
@40 
DO ~SetInterrupt(FALSE)ClearAllActions()FadeToColor([15.0],0)
Wait(1)ActionOverride(Player1,MoveBetweenAreas("%bg1_eet_symbol%4800",[2938.3612],NE))
	ActionOverride(Player2,MoveBetweenAreas("%bg1_eet_symbol%4800",[2860.3740],NE))
	ActionOverride(Player3,MoveBetweenAreas("%bg1_eet_symbol%4800",[2755.3503],SE))
	ActionOverride(Player4,MoveBetweenAreas("%bg1_eet_symbol%4800",[2878.3427],NE))
	ActionOverride(Player5,MoveBetweenAreas("%bg1_eet_symbol%4800",[3264.3416],SE))
	ActionOverride(Player6,MoveBetweenAreas("%bg1_eet_symbol%4800",[2707.3673],SE))
	MoveBetweenAreas("%bg1_eet_symbol%4800",[3020.3595],SW)
	SmallWait(1)
	MoveViewObject(Player1,INSTANT)
	Wait(1)
	ActionOverride(Player1,FaceObject("X3Vern"))
	ActionOverride(Player2,FaceObject("X3Vern"))
	ActionOverride(Player3,FaceObject("X3Vern"))
	ActionOverride(Player4,FaceObject("X3Vern"))
	ActionOverride(Player5,FaceObject("X3Vern"))
	ActionOverride(Player6,FaceObject("X3Vern"))
	Wait(1)
	SetInterrupt(TRUE)FadeFromColor([15.0],0)Wait(1)StartDialogueNoSet(Player1)~ 
EXIT 

CHAIN X3Vern IsHeHere 
@38
= @39
END 
++ @41 + Idiot
++ @42 + PatienceEnded
++ @45 + LeaveMeBe

CHAIN X3VERN LeaveMeBe
@46 
DO ~SetGlobal("X3VernSurrender","LOCALS",-1)~
EXIT 

CHAIN X3Vern Idiot 
@43
DO ~Enemy()~
EXIT 

CHAIN X3Vern PatienceEnded
@44
DO ~Enemy()~
EXIT 


CHAIN X3Vern NoChoice
@59
DO ~Enemy()~
EXIT 

CHAIN X3Vern HearUsOut
@58
DO ~Enemy()~
EXIT 

CHAIN X3Vern RejectGoOutside
@60
DO ~Enemy()~
EXIT 

CHAIN X3Vern MakeTalk 
@48
END 
++ @49 + WhereIsHe
++ @50 + WithIsaac
++ @51 + WithIsaac

CHAIN X3Vern WhereIsHe 
@53
END 
++ @54 + NoChoice
++ @55 + HearUsOut
++ @56 + RejectGoOutside

CHAIN X3Vern WithIsaac 
@52
END 
++ @54 + NoChoice
++ @55 + HearUsOut
++ @56 + RejectGoOutside

CHAIN IF ~AreaCheck("%bg1_eet_symbol%4809")Global("X3VernSurrender","LOCALS",0)See("X3Isaac")~ THEN X3Vern IsaacInside
@61
== X3IsaacJ @62
== X3Vern @63 
== X3IsaacJ @64 
== X3Vern @65 
== X3IsaacJ @66 
== X3Vern @67 
DO ~Enemy()~
EXIT 

CHAIN IF ~AreaCheck("%bg1_eet_symbol%4800")Global("X3VernSurrender","LOCALS",0)!See("X3Isaac")~ THEN X3Vern ConOutside
@68
END 
++ @69 + TimeToTalk 

CHAIN X3Vern TimeToTalk 
@70
END 
++ @71 + VernDefendsSelf 
++ @72 + VernDefendsSelf 
++ @73 + VernDefendsSelf 

CHAIN X3Vern VernDefendsSelf 
@87
DO ~Enemy()~
EXIT 

CHAIN IF ~AreaCheck("%bg1_eet_symbol%4800")Global("X3VernSurrender","LOCALS",0)See("X3Isaac")~ THEN X3Vern ConOutsideIsaac
@68
== X3IsaacJ @74 
== X3Vern @75
== X3IsaacJ @76
== X3Vern @63 
== X3IsaacJ @64 
== X3Vern @65 
== X3IsaacJ @66 
== X3Vern @67 
DO ~Enemy()~
EXIT 

CHAIN IF ~Global("X3VernSurrender","LOCALS",1)~ THEN X3Vern Surrender 
@77 
DO ~SetGlobal("X3VernSurrender","LOCALS",2)SetGlobal("X3IQuest","GLOBAL",4)~
= @78
= @79
END 
++ @80 + Spare 
++ @81 + Spare
+~IsValidForPartyDialogue("X3mily")~+ @82 EXTERN X3milyJ PleaseNoKill 
+~!IsValidForPartyDialogue("X3mily")~+ @82 + Kill 

CHAIN X3Vern Spare 
@83 
END 
IF ~IsValidForPartyDialogue("X3Isaac")~ DO ~SetGlobal("X3IQuestTask2Pass","GLOBAL",2)EscapeArea()~ EXIT 
IF ~!IsValidForPartyDialogue("X3Isaac")~ DO ~SetGlobal("X3IQuestTask2Pass","GLOBAL",1)EscapeArea()~ EXIT 


CHAIN X3Vern Kill 
@84 
END 
IF ~IsValidForPartyDialogue("X3Isaac")~ EXTERN X3IsaacJ KillConfirm 
IF ~!IsValidForPartyDialogue("X3Isaac")~ DO ~ActionOverride("X3Vern",Enemy()SetGlobal("X3IQuestTask2Pass","GLOBAL",1)~ EXIT 


CHAIN X3IsaacJ KillConfirm 
@85
DO ~ActionOverride("X3Vern",Enemy()SetGlobal("X3IQuestTask2Pass","GLOBAL",2)~
EXIT 

CHAIN X3milyJ PleaseNoKill
@88
== X3IsaacJ IF ~IsValidForPartyDialogue("X3Isaac")~ THEN @89
END 
++ @90 EXTERN X3Vern Spare 
++ @91 EXTERN X3Vern Kill 
++ @92 EXTERN X3Vern Kill

