BEGIN X32EHK3S 

BEGIN X32Isaa

CHAIN IF ~AreaCheck("bd4300")GlobalGT("bd_plot","global",585)~ THEN X32Isaa Isaac.BattleOver 
@69
EXIT 


CHAIN IF ~Global("X3IsaacNeverJoined","locals",-1)~ THEN X32Isaa IsaacNeverJoined 
@80
DO ~SetGlobal("X3IsaacNeverJoined","locals",1)~
END 
++ @81 + JoinedExpedition 
++ @82 + JoinedExpedition
++ @83 + NotThisTime 

CHAIN X32Isaa NotThisTime 
@88
EXTERN X32Isaa JoinedExpedition

CHAIN X32Isaa JoinedExpedition 
@84
END 
IF ~IsValidForPartyDialogue("X3mily")~ EXTERN X32Isaa HuntedWithYou
IF ~InMyArea("X3mily")!IsValidForPartyDialogue("X3mily")~ EXTERN X32Isaa HuntedInCamp
IF ~!InMyArea("X3mily")!IsValidForPartyDialogue("X3mily")~ EXTERN X32Isaa OneWay

CHAIN X32Isaa HuntedWithYou 
@85
== X32milyJ @101
== X32Isaa @102
== X32milyJ @103
== X32Isaa @104
END 

CHAIN X32Isaa HuntedInCamp 
@86
EXTERN X32Isaa OneWay

CHAIN X32Isaa OneWay 
@87
END 
++ @89 + NiceToHave
++ @90 + JoinUp
++ @91 + KillWell
++ @92 + NotEnemies

CHAIN X32Isaa KillWell
@93
EXIT 

CHAIN X32Isaa NotEnemies 
@94
EXIT 

CHAIN X32Isaa NiceToHave
@95
EXIT 

CHAIN X32Isaa JoinUp 
@96
END 
IF ~IsValidForPartyDialogue("X3mily")~ THEN EXTERN X32milyJ Complaint
IF ~!IsValidForPartyDialogue("X3mily")~ DO ~AddJournalEntry(@6002,INFO)JoinParty()~ EXIT 

CHAIN X32milyJ Complaint 
@97
== X32Isaa @98
== X32milyJ @99
== X32Isaa @100 
DO ~AddJournalEntry(@6002,INFO)JoinParty()~ EXIT 



CHAIN IF ~Global("X3IsaacNeverJoined","locals",1)~ THEN X32Isaa IsaacNeverJoined 
@62
END 
++ @64 + IsaacFinallyJoined 
++ @63 + IsaacStillNeverJoined 

CHAIN X32Isaa IsaacStillNeverJoined 
@66 
EXIT 

CHAIN X32Isaa IsaacFinallyJoined 
@65
DO ~SetGlobal("X3IsaacNeverJoined","locals",0)AddJournalEntry(@6002,INFO)JoinParty()~
EXIT 

//The player could try to talk to Isaac directly without first speaking tothe Planar Hunter.
CHAIN IF ~Global("X3IsaacMetSoD","GLOBAL",0)~ THEN X32Isaa IgnorePlanarHunter 
@0
EXIT 

CHAIN IF ~Global("X3FightEmily","GLOBAL",2)~ THEN X32Isaa EmilyDead 
@46
DO ~SetGlobal("X3FightEmily","GLOBAL",3)~
END 
IF ~!Dead("X32EHK3S")~ EXTERN X32Isaa FindJacobSpeaker 
IF ~Dead("X32EHK3S")OR(3)!Dead("X32EHK2")!Dead("X32EHK1")!Dead("X32EHK4")~ EXTERN X32Isaa FindJacobNoSpeaker // This will probably never happen.
IF ~Dead("X32EHK3S")Dead("X32EHK2")Dead("X32EHK1")Dead("X32EHK4")~ EXTERN X32Isaa FindJacobAllDead // Nearly impossible to happen.

CHAIN X32Isaa FindJacobSpeaker 
@47 
== X32EHK3S @48
== X32Isaa @49 
= @50 
END 
++ @51 + Accept 
++ @52  + Decline 

CHAIN X32Isaa Accept 
@54
END 
IF ~!Dead("X32EHK3S")~ EXTERN X32EHK3S GoodLuckIsaac
IF ~Dead("X32EHK3S")OR(2)BeenInParty("X3Isaac")Global("X3IsaacInBG1","GLOBAL",1)~ EXTERN X32Isaa MakeNewMemories
IF ~Dead("X32EHK3S")!BeenInParty("X3Isaac")!Global("X3IsaacInBG1","GLOBAL",1)~ EXTERN X32Isaa GetToWork

CHAIN X32EHK3S GoodLuckIsaac
@55
== X32Isaa @61
END 
IF ~OR(2)BeenInParty("X3Isaac")Global("X3IsaacInBG1","GLOBAL",1)~ EXTERN X32Isaa MakeNewMemories
IF ~!BeenInParty("X3Isaac")!Global("X3IsaacInBG1","GLOBAL",1)~ EXTERN X32Isaa GetToWork


CHAIN X32Isaa GetToWork
@59
DO ~AddJournalEntry(@6002,INFO)JoinParty()~ 
EXIT 

CHAIN X32Isaa MakeNewMemories
@60
DO ~AddJournalEntry(@6002,INFO)JoinParty()~ 
EXIT 

CHAIN X32Isaa Decline 
@53
DO ~ChangeAIScript("bdparty",RACE)SetGlobal("X3IsaacNeverJoined","locals",1)SetGlobal("bd_joined","locals",0)SetGlobal("bd_npc_camp","locals",1)~ 
EXIT 

CHAIN X32Isaa FindJacobNoSpeaker 
@56
EXTERN X32Isaa JoinOffer

CHAIN X32Isaa FindJacobAllDead 
@57
EXTERN X32Isaa JoinOffer

CHAIN X32Isaa JoinOffer 
@58
END 
++ @51 + Accept 
++ @52  + Decline 

CHAIN IF ~Global("X3IsaacMetSoD","GLOBAL",1)AreaCheck("BD1000")!Dead("X3mily")~ THEN X32Isaa IsaacEmily
@1 
END 
IF ~BeenInParty("X3Isaac")BeenInParty("X3mily")~ EXTERN X32mily BothBeenInParty 
IF ~OR(2)!BeenInParty("X3Isaac")!BeenInParty("X3mily")~ EXTERN X32mily NotMetThisWay

CHAIN X32mily BothBeenInParty 
@2
EXTERN X32EHK3S TalkOrDie 

CHAIN X32mily NotMetThisWay 
@3
EXTERN X32EHK3S TalkOrDie 

CHAIN X32EHK3S TalkOrDie 
@4
END 
IF ~BeenInParty("X3mily")~ EXTERN X32mily AppealCharname
IF ~!BeenInParty("X3mily")~ EXTERN X32mily AppealHero

CHAIN X32mily AppealCharname
@5
END 
++ @7 EXTERN X32Isaa AboutJacob 
++ @8 EXTERN X32Isaa FightEmily 
++ @9 EXTERN X32Isaa AboutJacob 

CHAIN X32mily AppealHero 
@6 
END 
++ @7 EXTERN X32Isaa AboutJacob 
++ @8 EXTERN X32Isaa FightEmily 
++ @9 EXTERN X32Isaa AboutJacob 

CHAIN X32Isaa FightEmily 
@20
== X32mily @21 
DO ~SetGlobal("X3FightEmily","GLOBAL",1)~ EXIT 

CHAIN X32Isaa AboutJacob 
@10
= @11
END 
++ @12 EXTERN X32Isaa Compromise
++ @13 EXTERN X32mily AndThenWhat
++ @78 EXTERN X32mily AttackIsaacGroup 

CHAIN X32mily AndThenWhat 
@14
== X32Isaa @15
== X32mily @16
END 
++ @12 EXTERN X32Isaa Compromise
++ @17 + AttackIsaacGroup
++ @18 EXTERN X32Isaa FightEmily 

CHAIN X32mily AttackIsaacGroup 
@19
== X32EHK3S @22
DO ~ActionOverride("X3Isaac",Enemy())SetGlobal("X32PlanarHunterEnemy","GLOBAL",2)~
EXIT 

CHAIN X32Isaa Compromise 
@23
== X32mily @24
== X32Isaa @25
== X32mily @26
END 
++ @27 EXTERN X32Isaa CompletelyBehind 
++ @29 EXTERN X32Isaa IsaacJoinParty
++ @30 EXTERN X32Isaa IsaacGoToCamp

CHAIN X32Isaa CompletelyBehind 
@28
END 
++ @29 EXTERN X32Isaa IsaacJoinParty
++ @30 EXTERN X32Isaa IsaacGoToCamp //Only used in this conversation.

CHAIN X32Isaa IsaacJoinParty 
@31 
EXTERN X32mily WhatAboutEmily

CHAIN X32Isaa IsaacGoToCamp
@32
DO ~SetGlobal("X32IsaaConGoCamp","GLOBAL",1)ChangeAIScript("bdparty",RACE)SetGlobal("X3IsaacNeverJoined","locals",1)SetGlobal("bd_joined","locals",0)SetGlobal("bd_npc_camp","locals",1)~
EXTERN X32mily WhatAboutEmily

CHAIN X32mily WhatAboutEmily 
@33
== X32Isaa @34 
END 
++ @35 EXTERN X32mily EmilyJoinParty
++ @79 DO ~SetGlobal("X32milyInBG1","GLOBAL",1)~ EXTERN X32mily EmilyJoinParty
++ @36 EXTERN X32mily EmilyGoToCamp

CHAIN X32mily EmilyJoinParty 
@37
DO ~AddJournalEntry(@1002,INFO)JoinParty()~
END 
IF ~Global("X32IsaaConGoCamp","GLOBAL",0)~ EXTERN X32Isaa IsaacRegrets
IF ~Global("X32IsaaConGoCamp","GLOBAL",1)~ EXTERN X32EHK3S WasteOfTime

CHAIN X32mily EmilyGoToCamp 
@41
DO ~ChangeAIScript("bdparty",RACE)SetGlobal("bd_joined","locals",0)SetGlobal("X3milyNeverJoined","locals",1)SetGlobal("bd_npc_camp","locals",1)~
END 
IF ~Global("X32IsaaConGoCamp","GLOBAL",1)~ EXTERN X32Isaa IsaacAlsoGoesToCamp
IF ~Global("X32IsaaConGoCamp","GLOBAL",0)~ EXTERN X32EHK3S WasteOfTime

CHAIN X32Isaa IsaacRegrets 
@38
== X32milyJ @39
== X32Isaa @40
EXTERN X32EHK3S WasteOfTime

CHAIN X32Isaa IsaacAlsoGoesToCamp 
@42
EXTERN X32EHK3S WasteOfTime

CHAIN X32EHK3S WasteOfTime 
@43
== X32Isaa IF ~Global("X32IsaaConGoCamp","GLOBAL",1)~ THEN  @44 
== X32Isaa IF ~Global("X32IsaaConGoCamp","GLOBAL",0)~ THEN @44  DO ~JoinParty()~
== X32EHK3S @45
DO ~ActionOverride("X32EHK1",EscapeArea())ActionOverride("X32EHK2",EscapeArea())ActionOverride("X32EHK4",EscapeArea())EscapeArea()~
EXIT 

/* If kicked out in Korlasz's tomb */
CHAIN IF ~OR(2)
      AreaCheck("bd0120")
      AreaCheck("bd0130")
    GlobalGT("bd_joined","locals",0)~ THEN X32Isaa kickout_2
@76
END 
  ++ @77 + kickout_3
  ++ @72 + kickout_4


CHAIN X32Isaa kickout_3
@75
DO ~SetGlobal("bd_joined","locals",0)~
EXIT


CHAIN X32Isaa kickout_4
@75
DO ~JoinParty()~ 
EXIT


/* kicked out somewhere else (not bd4700.are in Avernus, not Korlasz's tomb) */
CHAIN IF ~GlobalGT("bd_joined","locals",0)~ THEN X32Isaa kickout_5
@71
END 
  + ~GlobalGT("bd_npc_camp_chapter","global",1)
     GlobalLT("bd_npc_camp_chapter","global",5)
     OR(2)
       !Range("ff_camp",999)
       NextTriggerObject("ff_camp")
     !IsOverMe("X3Isaac")~ + @73 DO ~SetGlobal("bd_npc_camp","locals",1)~ + kickout_6
  ++ @74 + kickout_3
  ++ @72 + kickout_4


CHAIN X32Isaa kickout_6
@70
DO ~SetGlobal("bd_joined","locals",0)~ 
EXIT

CHAIN IF ~OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
Global("bd_joined","locals",0)~ THEN X32Isaa join_again
@68
END 
  ++ @49 + IsaacRejoinDungeon
  ++ @50 + IsaacNotJoin


CHAIN IF ~Global("bd_joined","locals",0)~ THEN X32Isaa Rejoin
@62
END 
++ @64 + IsaacRejoin
++ @63 + IsaacNotJoin

CHAIN X32Isaa IsaacNotJoin
@66 
EXIT 

CHAIN X32Isaa IsaacRejoin
@65
DO ~JoinParty()~
EXIT 

CHAIN X32Isaa IsaacRejoinDungeon
@67
DO ~JoinParty()~
EXIT 

APPEND X32Isaa

IF WEIGHT #-1 ~AreaCheck("bd0104")
Global("chapter","global",13)
Global("bd_jail_visitors","bd0104",5)
Global("X32IsaacRomanceActive","global",2)~ postgame
SAY @107
++ @108 DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgame1
++ @109 DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgame1
++ @110 DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgame2
END

IF ~~ postgame1
SAY @112
IF ~~ + postgame3
END

IF ~~ postgame2
SAY @111
IF ~~ + postgame3
END

IF ~~ postgame3
SAY @113
= @114
++ @115 + postgame4
++ @116 + postgame5
++ @117 + postgame6
++ @118 + postgame7
END

IF ~~ postgame7
SAY @119
IF ~~ EXIT 
END

IF ~~ postgame6
SAY @120
IF ~~ EXIT 
END

IF ~~ postgame5
SAY @121
= @122
IF ~~ EXIT 
END

IF ~~ postgame4
SAY @123
= @124
IF ~~ EXIT 
END

END 