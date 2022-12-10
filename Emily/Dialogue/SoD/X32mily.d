/* Emily's SoD greetings dialogue */
BEGIN x32mily

IF ~AreaCheck("bd4300")GlobalGT("bd_plot","global",585)~ THEN BEGIN Emily.BattleOver 
SAY @47
IF ~~ EXIT 
END 



/* By all checks this will never fire. */
IF ~AreaCheck("bd4700")
    GlobalLT("bd_plot","global",570)~ THEN BEGIN kickout_1
  SAY @37
  IF ~~ THEN DO ~SetGlobal("x3mily_kicked_bd4700","global",1)
                 SetGlobal("bd_joined","locals",0)~ EXIT
END

/* If kicked out in Korlasz's tomb */
IF ~OR(2)
      AreaCheck("bd0120")
      AreaCheck("bd0130")
    GlobalGT("bd_joined","locals",0)~ THEN BEGIN kickout_2
  SAY @38
  ++ @39 + kickout_3
  ++ @40 + kickout_4
END



/* kicked out somewhere else (not bd4700.are in Avernus, not Korlasz's tomb) */
IF ~GlobalGT("bd_joined","locals",0)~ THEN BEGIN kickout_5
  SAY @43
  + ~GlobalGT("bd_npc_camp_chapter","global",1)
     GlobalLT("bd_npc_camp_chapter","global",5)
     OR(2)
       !Range("ff_camp",999)
       NextTriggerObject("ff_camp")
     !IsOverMe("X3mily")~ + @44 DO ~SetGlobal("bd_npc_camp","locals",1)~ + kickout_6
  ++ @45 + kickout_3
  ++ @40 + kickout_4
END



IF ~~ THEN BEGIN kickout_6
  SAY @46
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)~ EXIT
END


IF ~Global("X3milyNeverJoined","locals",1)~ THEN BEGIN X3milyNeverJoined 
SAY @51
++ @92 + kickout_4
++ @50 + kickout_3 
++ @53 + kickout_30
END 

IF ~~ THEN BEGIN kickout_3
  SAY @41
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)~ EXIT
END

IF ~~ THEN BEGIN kickout_4
  SAY @42
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN kickout_30
  SAY @54
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)~ EXIT
END

IF ~AreaCheck("BD1000")Global("X32EmilyMetSoD","GLOBAL",0)!Dead("X32EHK3S")~ THEN BEGIN Talk1 
SAY @0
++ @1 DO ~SetGlobal("X32milyInBG1","GLOBAL",1)SetGlobal("X32EmilyMetSoD","GLOBAL",1)~ + Talk1.1 
+~OR(2)!Global("X32milyInBG1","GLOBAL",1)!BeenInParty("X3mily")~+ @2 DO ~SetGlobal("X32EmilyMetSoD","GLOBAL",1)~ + Talk1.2
END 

IF ~AreaCheck("BD1000")Global("X32EmilyMetSoD","GLOBAL",0)Dead("X32EHK3S")!Global("X32PlanarHunterEnemy","GLOBAL",4)~ THEN BEGIN Talk1 
SAY @3
++ @1 DO ~SetGlobal("X32milyInBG1","GLOBAL",1)SetGlobal("X32EmilyMetSoD","GLOBAL",1)~ + Talk1.1 
+~OR(2)!Global("X32milyInBG1","GLOBAL",1)!BeenInParty("X3mily")~+ @2 DO ~SetGlobal("X32EmilyMetSoD","GLOBAL",1)~ + Talk1.2
END

IF ~AreaCheck("BD1000")Global("X32EmilyMetSoD","GLOBAL",0)Dead("X32EHK3S")Global("X32PlanarHunterEnemy","GLOBAL",4)~ THEN BEGIN Talk1 
SAY @93
++ @1 DO ~SetGlobal("X32PlanarHunterEnemy","GLOBAL",5)SetGlobal("X32milyInBG1","GLOBAL",1)SetGlobal("X32EmilyMetSoD","GLOBAL",1)~ + Talk1.1 
+~OR(2)!Global("X32milyInBG1","GLOBAL",1)!BeenInParty("X3mily")~+ @2 DO ~SetGlobal("X32PlanarHunterEnemy","GLOBAL",5)SetGlobal("X32EmilyMetSoD","GLOBAL",1)~ + Talk1.2
END

IF ~~ Talk1.1 
SAY @4
IF ~Race("X3mily",Aasimar)~ + Talk1.3A
IF ~!Race("X3mily",Aasimar)~ DO ~ChangeRace("X3mily",AASIMAR)~ + Talk1.3B // It's possible for Emily to not be an Aasimar if they were in the party before. We'll fix this now and acknowledge it.
END 

IF ~~ Talk1.2 
SAY @5
++ @6 + Talk1.5
++ @7 + Talk1.6
++ @8 + Talk1.3C
END 

IF ~~ Talk1.3A
SAY @9
IF ~~ + Talk1.4 
END 

IF ~~ Talk1.3B 
SAY @10
IF ~~ + Talk1.4 
END 

IF ~~ Talk1.4 
SAY @11
++ @6 + Talk1.5 
++ @7 + Talk1.6
END 

IF ~~ Talk1.3C 
SAY @12
IF ~~ + Talk1.4 
END 

IF ~~ Talk1.5 
SAY @13
++ @14 + Talk1.7
++ @15 + Talk1.8
END 

IF ~~ Talk1.6 
SAY @16
++ @17 + Talk1.9
++ @18 + Talk1.7
END 

IF ~~ Talk1.7
SAY @19
IF ~~ DO ~AddJournalEntry(@1002,INFO)ActionOverride("cutspy",DestroySelf())
JoinParty()~ EXIT
END

IF ~~ Talk1.8 
SAY @20
++ @17 + Talk1.9
++ @18 + Talk1.7
END 

IF ~~ Talk1.9
SAY @21
IF ~~ DO ~ChangeAIScript("bdparty",RACE)SetGlobal("bd_joined","locals",0)SetGlobal("X3milyNeverJoined","locals",1)SetGlobal("bd_npc_camp","locals",1)ActionOverride("cutspy",DestroySelf())~
EXIT
END

// Alternate Start. This is difficult to see occur unless a save starts post Coast way Crossing. It's similiar to the original, some lines are exactly the same.
IF ~!AreaCheck("BD1000")Global("X32EmilyMetSoD","GLOBAL",0)~ THEN BEGIN Talk2.0
SAY @22
++ @23 + Talk2.1
+~!BeenInParty("X3mily")~+ @24 + Talk2.2
END 

IF ~~ Talk2.1 
SAY @25
+~Race("X3mily",Aasimar)~+ @26 + Talk2.3A
+~!Race("X3mily",Aasimar)~+ @26 DO ~ChangeRace("X3mily",Aasimar)~ + Talk2.3B
++ @27 + Talk2.join
END 

IF ~~ Talk2.2 
SAY @28
IF ~~ + Talk2.3B 
END 

IF ~~ Talk2.3A
SAY @29
IF ~~ + Talk2.4 
END 

IF ~~ Talk2.3B
SAY @30
++ @31 + Talk2.5
++ @7 + Talk2.6
++ @32 + Talk1.3C
END 

IF ~~ Talk2.4 
SAY @11
++ @6 + Talk2.5 
++ @7 + Talk2.6
END 

IF ~~ Talk2.5 
SAY @13
++ @33 + Talk2.join
++ @34 + Talk2.8
END 

IF ~~ Talk2.8
SAY @35
IF ~~ DO ~ChangeAIScript("bdparty",RACE)SetGlobal("bd_joined","locals",0)SetGlobal("X3milyNeverJoined","locals",1)SetGlobal("bd_npc_camp","locals",1)~
EXIT
END

IF ~~ Talk2.6 
SAY @36
++ @33 + Talk2.join
++ @34 + Talk2.8
END 

IF ~~ Talk2.join
SAY @19
IF ~~ DO ~AddJournalEntry(@1002,INFO)
JoinParty()~ EXIT
END





/* join-up after leaving the group */
IF ~OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
Global("bd_joined","locals",0)~ THEN join_again
  SAY @48
  ++ @49 + kickout_4
  ++ @50 + kickout_3
END

IF ~Global("bd_joined","locals",0)Range("ff_camp",90)~ THEN join_again
  SAY @51
  ++ @52 + kickout_4
  ++ @50 + kickout_3
  ++ @53 + kickout_30 
END

IF ~Global("bd_joined","locals",0)!Range("ff_camp",90)~ THEN join_again
  SAY @94
 + ~GlobalGT("bd_npc_camp_chapter","global",1)
     GlobalLT("bd_npc_camp_chapter","global",5)
     !IsOverMe("X3mily")~ + @95 DO ~SetGlobal("bd_npc_camp","locals",1)~ + kickout_6
  ++ @52 + kickout_4
  ++ @50 + kickout_3
END



IF WEIGHT #-1 ~AreaCheck("bd0104")
Global("chapter","global",13)
Global("bd_jail_visitors","bd0104",5)
Global("X32milyRomanceActive","global",2)~ postgame
SAY @55
+ ~Global("bd_player_exiled","global",0)~ + @56 DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad
+ ~!Global("bd_player_exiled","global",0)~ + @56 DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood
+ ~Global("bd_player_exiled","global",0)~ + @57 DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad
+ ~!Global("bd_player_exiled","global",0)~ + @57 DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood2
+ ~Global("bd_player_exiled","global",0)~ + @58 DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad1
+ ~!Global("bd_player_exiled","global",0)~ + @58 DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood1
END

IF ~~ postgamebad1
SAY @59
= @60
IF ~~ EXIT
END

IF ~~ postgamebad
SAY @61
++ @62 + postgamebad.1
++ @63 + postgamebad.1
++ @64 + postgamebad1
END

IF ~~ postgamebad.1
SAY @65
= @66
= @67
IF ~~ EXIT
END

IF ~~ postgamegood.x
SAY @68
IF ~~ EXIT
END

IF ~~ postgamegood1
SAY @69
IF ~~ + postgamegood
END

IF ~~ postgamegood2
SAY @70
IF ~~ + postgamegood
END

IF ~~ postgamegood
SAY @71
= @72
++ @73 + postgamegood.1
++ @74 + postgamegood.2
++ @75 + postgamegood.3
++ @76 + postgamegood.x
END

IF ~~ postgamegood.1
SAY @77
IF ~~ + postgamegood.4
END

IF ~~ postgamegood.2
SAY @78
IF ~~ + postgamegood.4
END

IF ~~ postgamegood.3
SAY @79
IF ~~ + postgamegood.4
END

IF ~~ postgamegood.4
SAY @80
= @81
= @82
++ @83 + postgamegood.5
++ @84 + postgamegood.6
++ @85 + postgamegood.6
++ @86 + postgamegood.x
END

IF ~~ postgamegood.5
SAY @87
IF ~~ + postgamegood.x
END

IF ~~ postgamegood.6
SAY @88
= @89
= @90
= @91
IF ~~ EXIT
END

