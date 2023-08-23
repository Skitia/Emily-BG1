BEGIN X32IsaaJ

//Three versions of the quest end.

//First, Jacob did not die. 

CHAIN IF ~Global("X3IsaacSoDQuest","GLOBAL",2)IsValidForPartyDialogue("X3mily")!Dead("X32Jacob")~ THEN X32IsaaJ QuestResolutionJacobAlive
@0
DO ~SetGlobal("X3IsaacSoDQuest","GLOBAL",4)~
== X32milyJ @2
== X32IsaaJ @3
== X32milyJ @4
== X32milyJ @5
== X32IsaaJ @6
== X32milyJ @7
END 
++ @8 DO ~SetGlobal("X3EmilyAppChange","GLOBAL",8)SetGlobal("X3IsaacAppChange","GLOBAL",5)~ EXTERN X32IsaaJ WeDisagree
++ @9 DO ~SetGlobal("X3IsaacAppChange","GLOBAL",7)~ EXTERN X32milyJ CaelarJudged
++ @10 DO ~SetGlobal("X3EmilyAppChange","GLOBAL",4)SetGlobal("X3IsaacAppChange","GLOBAL",9)~ EXTERN X32milyJ IsaacRightNoMercy

CHAIN X32IsaaJ WeDisagree
@11
EXTERN X32Isaaj WarToWin

CHAIN X32IsaaJ WarToWin 
@12 
DO ~AddJournalEntry(@60025,QUEST_DONE)~
EXIT 

CHAIN X32milyJ CaelarJudged 
@13
== X32IsaaJ @14
EXTERN X32Isaaj WarToWin

CHAIN X32milyJ IsaacRightNoMercy
@15
== X32IsaaJ @16
EXTERN X32Isaaj WarToWin

//Jacob did die, either during Emily's portion or Isaac's. These two split and then converge.

CHAIN IF ~Global("X3IsaacSoDQuest","GLOBAL",2)IsValidForPartyDialogue("X3mily")Dead("X32Jacob")~ THEN X32IsaaJ QuestResolutionJacobDead
@1
DO ~SetGlobal("X3IsaacSoDQuest","GLOBAL",4)~
END 
IF ~!GlobalGT("X32milyQuestSpawn","GLOBAL",2)~ EXTERN X32milyJ EmilyIsMad
IF ~GlobalGT("X32milyQuestSpawn","GLOBAL",2)~ EXTERN X32IsaaJ IsaacIsSurprised

CHAIN X32milyJ EmilyIsMad 
@17
== X32IsaaJ @18
== X32milyJ @19
== X32IsaaJ @20
== X32milyJ @21
END 
++ @22 EXTERN X32IsaaJ IsaacLetItGo
++ @23 EXTERN X32milyJ EmilyTellHim

CHAIN X32IsaaJ IsaacIsSurprised
@35
== X32milyJ @36
== X32IsaaJ @37
END 
++ @38 DO ~SetGlobal("X3IsaacAppChange","GLOBAL",7)~ + NoWorries
++ @39 DO ~SetGlobal("X3IsaacAppChange","GLOBAL",7)~ + NoWorries
++ @40 DO ~SetGlobal("X3IsaacAppChange","GLOBAL",4)~ + Dissapointment

CHAIN X32IsaaJ NoWorries 
@41
EXTERN X32milyJ DeserveNot

CHAIN X32IsaaJ Dissapointment 
@42
EXTERN X32milyJ DeserveNot

CHAIN X32milyJ DeserveNot 
@43
== X32IsaaJ @44
== X32milyJ @45
END 
++ @22 EXTERN X32IsaaJ IsaacLetItGo
++ @23 EXTERN X32milyJ EmilyTellHim

CHAIN X32milyJ EmilyTellHim
@24
END 
++ @25 + EmilyLeave
++ @29 + Compromise 

CHAIN X32milyJ EmilyLeave 
@26
DO ~AddJournalEntry(@60027,QUEST_DONE)SetGlobal("bd_joined","locals",0)LeaveParty()AddexperienceParty(2000)EscapeArea()~
== X32IsaaJ @34
EXIT 

CHAIN X32IsaaJ IsaacLetItGo 
@27
END 
++ @28 + IsaacLeave
++ @29 EXTERN X32milyJ Compromise 

CHAIN X32IsaaJ IsaacLeave
@33
= @34
DO ~AddJournalEntry(@60026,QUEST_DONE)SetGlobal("bd_joined","locals",0)LeaveParty()AddexperienceParty(2000)EscapeArea()~
EXIT 

CHAIN X32milyJ Compromise
@30
== X32IsaaJ @31
== X32milyJ @32
DO ~AddJournalEntry(@60028,QUEST_DONE)AddexperienceParty(2000)~
EXIT 

/* Essential Additions */

// Thrix the Profane

EXTEND_BOTTOM BDTHRIX 21
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 22 #3
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 23 #5
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 24 #8
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 26
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 27 #3
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 28 #5
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 29 #8
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 30
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 31 #3
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 32 #5
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 33 #8
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 34
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 35 #3
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 36 #5
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 37 #8
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 38
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 39 #3
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 40 #5
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 41 #8
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 42
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 43 #3
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 44 #5
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 45 #8
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 46
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 47 #3
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 48 #5
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 49 #8
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 50
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 51 #3
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 52 #5
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 53 #8
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 54
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 55 #3
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 56 #5
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 57 #8
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 58
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 59 #3
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 60 #5
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 61 #8
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 62
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 63 #3
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 64 #5
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 65 #8
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 66
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 67 #3
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 68 #5
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 69 #8
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 70
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 71 #3
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 72 #5
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 73 #8
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 74
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 75 #3
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 76 #5
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 77 #8
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 78
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 79 #3
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 80 #5
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 81 #8
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 82
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 83 #3
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 84 #5
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 85 #8
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 90
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 91 #3
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 92 #5
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 93 #8
IF ~Global("X32_Saved_Isaac","bd4500",0)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager1
END

CHAIN BDTHRIX ThrixWager1
@72
END
++ @73 DO ~SetGlobal("X32IsaacSacrifice","bd4500",1) SetGlobal("bd_thrix_sacrifice_companion","global",1)~ EXTERN BDTHRIX 116
+ ~OR(2) Global("X32IsaacRomanceActive","GLOBAL",1) Global("X32IsaacRomanceActive","GLOBAL",2)~ + @74 DO ~SetGlobal("X32_Saved_Isaac","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN X32IsaaJ ThrixWager2
+ ~!Global("X32IsaacRomanceActive","GLOBAL",1) !Global("X32IsaacRomanceActive","GLOBAL",2)~ + @75 DO ~SetGlobal("X32_Saved_Isaac","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN X32IsaaJ ThrixWager2
++ @76 EXTERN BDTHRIX 113
++ @77 EXTERN BDTHRIX 12

CHAIN X32IsaaJ ThrixWager2
@78
== BDTHRIX @79
END
IF ~RandomNum(4,1)~ EXTERN BDTHRIX 78
IF ~RandomNum(4,2)~ EXTERN BDTHRIX 79
IF ~RandomNum(4,3)~ EXTERN BDTHRIX 80
IF ~RandomNum(4,4)~ EXTERN BDTHRIX 81

EXTEND_BOTTOM BDTHRIX 118
IF ~Global("X32IsaacSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 119
IF ~Global("X32IsaacSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 120
IF ~Global("X32IsaacSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 121
IF ~Global("X32IsaacSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 122
IF ~Global("X32IsaacSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Isaac")~ EXTERN BDTHRIX ThrixWager4
END

CHAIN BDTHRIX ThrixWager4
@80
END
++ @81 DO ~SetGlobal("X32_thrix_mark_Isaac","global",1)~ EXTERN X32IsaaJ ThrixWager5
++ @82 EXTERN BDTHRIX 10

CHAIN X32IsaaJ ThrixWager5
@83
DO ~SetGlobal("bd_thrix_plot","global",11)~ EXTERN BDTHRIX 140

// Schael

EXTEND_TOP BDSCHAEL 40 #3
+ ~OR(2)
Global("SOD_fromimport","global",1)
BeenInParty("X3Isaac")
Global("X32IsaaSchael","GLOBAL",0)~ + @84 DO ~SetGlobal("X32IsaaSchael","GLOBAL",1)~ EXTERN BDSCHAEL bdschaelmilyRecall
END

CHAIN BDSCHAEL bdschaelmilyRecall
@85
COPY_TRANS BDSCHAEL 40

// Imoen

EXTEND_BOTTOM BDIMOEN 104
+ ~Global("X3mily_SoDparty_epilogue","GLOBAL",1)~ + @86 EXTERN BDIMOEN bdimoen1
END

EXTEND_BOTTOM BDIMOEN 109
+ ~Global("X3mily_SoDparty_epilogue","GLOBAL",1)~ + @86 EXTERN BDIMOEN bdimoen1
END

CHAIN BDIMOEN bdimoen1
@87
EXTERN BDIMOEN 119

// Talk 1

CHAIN IF ~Global("X32IsaaTalk","GLOBAL",2)~ THEN X32IsaaJ Talk1
@88
DO ~IncrementGlobal("X32IsaaTalk","GLOBAL",1)SetGlobal("X3IsaacAppChange","GLOBAL",6)SetGlobalTimer("X32IsaaGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32IsaaRealTalkTimer","GLOBAL",ONE_HOUR)~
END 
++ @89 + T1.1A
++ @90 + T1.1B
++ @91 + T1.2

CHAIN X32IsaaJ T1.1B
@92
EXTERN X32IsaaJ T1.2

CHAIN X32IsaaJ T1.1A 
@93
EXTERN X32IsaaJ T1.2

CHAIN X32IsaaJ T1.2
@94
= @95
END 
++ @96 + T1.3A
++ @97 + T1.3B
++ @98 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-1)~ + T1.3B

CHAIN X32IsaaJ T1.3B 
@99
EXTERN X32IsaaJ T1.4

CHAIN X32IsaaJ T1.3A
@100
EXTERN X32IsaaJ T1.4

CHAIN X32IsaaJ T1.4
@101
END 
++ @102 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",2)~ + T1.5A
++ @103 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",2)~ + T1.5A
++ @104 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-1)~ + T1.5B

CHAIN X32IsaaJ T1.5A
@105
EXTERN X32IsaaJ T1.6

CHAIN X32IsaaJ T1.5B
@106
EXTERN X32IsaaJ T1.6

CHAIN X32IsaaJ T1.6
@107
EXIT 

// Talk 2

CHAIN IF ~Global("X32IsaaTalk","GLOBAL",4)~ THEN X32IsaaJ Talk2 
@108
DO ~IncrementGlobal("X32IsaaTalk","GLOBAL",1)SetGlobal("X3IsaacAppChange","GLOBAL",6)SetGlobalTimer("X32IsaaGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32IsaaRealTalkTimer","GLOBAL",ONE_HOUR)~
END 
+~!Global("X3IsaacInBG1","GLOBAL",1)~+ @109 + T2.1A
+~Global("X3IsaacInBG1","GLOBAL",1)~+ @110 + T2.1B
++ @111 + T2.1C
++ @112 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-2)~ + T2.1D 

CHAIN X32IsaaJ T2.1A 
@131
= @132
EXTERN X32IsaaJ T2.2

CHAIN X32IsaaJ T2.1B
@113
EXTERN X32IsaaJ T2.2

CHAIN X32IsaaJ T2.1C 
@114
EXTERN X32IsaaJ T2.2

CHAIN X32IsaaJ T2.1D
@115
EXTERN X32IsaaJ T2.2

CHAIN X32IsaaJ T2.2
@116
END 
++ @117 + T2.3
++ @118 + T2.4A
++ @119 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",2)~ + T2.4B

CHAIN X32IsaaJ T2.3 
@120
END 
+~!Gender(Player1,FEMALE)~+ @121 + T2.5M
+~Gender(Player1,FEMALE)~+ @121 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T2.5F
++ @122 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T2.5B
++ @123 + T2.5C

CHAIN X32IsaaJ T2.5M
@124
EXTERN X32IsaaJ T2.6

CHAIN X32IsaaJ T2.5F 
@125
EXTERN X32IsaaJ T2.6

CHAIN X32IsaaJ T2.5B
@126
EXTERN X32IsaaJ T2.6

CHAIN X32IsaaJ T2.5C 
@127
EXTERN X32IsaaJ T2.6

CHAIN X32IsaaJ T2.6
@128
EXIT 

CHAIN X32IsaaJ T2.4A 
@129
EXTERN X32IsaaJ T2.6

CHAIN X32IsaaJ T2.4B
@130
EXTERN X32IsaaJ T2.6

// Talk 3
CHAIN IF ~Global("X32IsaaTalk","GLOBAL",6)~ THEN X32IsaaJ Talk3
@133
DO ~IncrementGlobal("X32IsaaTalk","GLOBAL",1)SetGlobal("X3IsaacAppChange","GLOBAL",6)SetGlobalTimer("X32IsaaGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32IsaaRealTalkTimer","GLOBAL",ONE_HOUR)~
END 
++ @134 + T3.1A
++ @135 + T3.1B
++ @136 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-1)~ + T3.1C

CHAIN X32IsaaJ T3.1A 
@137
EXTERN X32IsaaJ T3.2

CHAIN X32IsaaJ T3.1B 
@138
EXTERN X32IsaaJ T3.2

CHAIN X32IsaaJ T3.1C 
@139
EXTERN X32IsaaJ T3.2

CHAIN X32IsaaJ T3.2
@140
= @141
END 
++ @142 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T3.3
++ @143 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",2)~ + T3.4
++ @144 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-1)~ + T3.3

CHAIN X32IsaaJ T3.3
@145
END 
++ @153 + T3.5A
++ @154 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",2)~ + T3.4
++ @155 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-1)~ + T3.5B

CHAIN X32IsaaJ T3.4
@146
END 
+~Gender(Player1,FEMALE)~+ @147 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",2)~ + T3.6F
+~!Gender(Player1,FEMALE)~+ @147 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",2)~ + T3.6M
++ @148 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-1)~ + T3.6B
++ @149 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-2)~ + T3.6C

CHAIN X32IsaaJ T3.6F
@150
EXTERN X32IsaaJ T3.6A

CHAIN X32IsaaJ T3.6M
@151
EXTERN X32IsaaJ T3.6A

CHAIN X32IsaaJ T3.6A 
@152
EXIT 

CHAIN X32IsaaJ T3.6B
@159
EXIT 

CHAIN X32IsaaJ T3.6C 
@160
EXIT 


CHAIN X32IsaaJ T3.5B 
@156
EXIT 

CHAIN X32IsaaJ T3.5A 
@157
= @158
EXIT 

// Talk 4
CHAIN IF ~Global("X32IsaaTalk","GLOBAL",8)~ THEN X32IsaaJ Talk4
@161
DO ~IncrementGlobal("X32IsaaTalk","GLOBAL",1)SetGlobal("X3IsaacAppChange","GLOBAL",6)SetGlobalTimer("X32IsaaGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32IsaaRealTalkTimer","GLOBAL",ONE_HOUR)~
END 
++ @162 + T4.2
++ @163 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T4.1
++ @164 + T4.2

CHAIN X32IsaaJ T4.1
@165
EXTERN X32IsaaJ T4.2

CHAIN X32IsaaJ T4.2
@166
= @167
= @168
= @169
END 
++ @170 + T4.4
++ @171 + T4.4
++ @172 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-2)~ + T4.3

CHAIN X32IsaaJ T4.3
@173
END 
++ @185 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T4.4
++ @186 + T4.Exit 
++ @187 + T4.Exit 

CHAIN X32IsaaJ T4.Exit 
@188
EXIT 

CHAIN X32IsaaJ T4.4
@174
= @175
= @176
END 
++ @177 + T4.5A
++ @178 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T4.5B
++ @179 + T4.5C
++ @180 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T4.5D

CHAIN X32IsaaJ T4.5A
@181
EXIT 

CHAIN X32IsaaJ T4.5B
@184
EXIT 

CHAIN X32IsaaJ T4.5C
@182
EXIT 

CHAIN X32IsaaJ T4.5D
@183
EXIT 

//Talk 5 - Female Only
CHAIN IF ~Global("X32IsaaTalk","GLOBAL",10)~ THEN X32IsaaJ Talk5
@189
DO ~IncrementGlobal("X32IsaaTalk","GLOBAL",1)SetGlobal("X3IsaacAppChange","GLOBAL",6)SetGlobalTimer("X32IsaaGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32IsaaRealTalkTimer","GLOBAL",ONE_HOUR)~
= @190
END 
++ @191 + T5.1A
++ @192 + T5.1B
++ @193 + T5.2
++ @194 + T5.Exit

CHAIN X32IsaaJ T5.Exit 
@195
DO ~SetGlobal("X3IsaaRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X32IsaaJ T5.1A 
@198
EXTERN X32IsaaJ T5.5

CHAIN X32IsaaJ T5.1B 
@199
EXTERN X32IsaaJ T5.5

CHAIN X32IsaaJ T5.2
@196
END 
++ @199 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",2)~ + T5.5
++ @201 + T5.3
++ @202 + T5.5

CHAIN X32IsaaJ T5.3
@203
END 
++ @204 + T5.4
++ @205 + T5.Exit 

CHAIN X32IsaaJ T5.4
@206
= @207
EXIT 

CHAIN X32IsaaJ T5.5
@200
END 
++ @208 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",2)~ + T5.6B
++ @209 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T5.6A
++ @210 + T5.Exit2 

CHAIN X32IsaaJ T5.Exit2 
@211
DO ~SetGlobal("X3IsaaRomanceActive","GLOBAL",3)~
EXIT 

CHAIN X32IsaaJ T5.6A
@212
EXIT 

CHAIN X32IsaaJ T5.6B
@213
EXIT 

// Talk 6

CHAIN IF ~Global("X32IsaaTalk","GLOBAL",12)~ THEN X32IsaaJ Talk6
@214
DO ~IncrementGlobal("X32IsaaTalk","GLOBAL",1)SetGlobal("X3IsaacAppChange","GLOBAL",6)~
END 
++ @215 + T6.2
++ @216 + T6.2
++ @217 + T6.1

CHAIN X32IsaaJ T6.1
@218
EXTERN X32IsaaJ T6.2

CHAIN X32IsaaJ T6.2
@219
END 
IF ~!Global("X3IsaacRomanceActive","GLOBAL",1)~ EXTERN X32IsaaJ T6NR.1
IF ~Global("X3IsaacRomanceActive","GLOBAL",1)~ EXTERN X32IsaaJ T6R.1

CHAIN X32IsaaJ T6NR.1
@220
END 
++ @221 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",2)~ + T6NR.3
++ @222 + T6NR.2A
++ @223 + T6NR.2B
++ @224 + T6NR.2C

CHAIN X32IsaaJ T6NR.2C 
@225
EXIT 

CHAIN X32IsaaJ T6NR.2A
@226
EXTERN X32IsaaJ T6NR.3

CHAIN X32IsaaJ T6NR.2B
@227
EXIT 

CHAIN X32IsaaJ T6NR.3
@228
EXIT 

CHAIN X32ISaaJ T6R.1
@229
END 
++ @230 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T6R.2A
++ @231 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T6R.2A
++ @232 + T6R.2B
++ @233 + T6R.Break
++ @234 + T6R.Break

CHAIN X32IsaaJ T6R.2A
@235
DO ~SetGlobal("X3IsaaRomanceActive","GLOBAL",2)~
EXIT 

CHAIN X32IsaaJ T6R.2B
@235
DO ~SetGlobal("X3IsaaRomanceActive","GLOBAL",2)~
EXIT 

CHAIN X32IsaaJ T6R.Break 
@237
DO ~SetGlobal("X3IsaaRomanceActive","GLOBAL",3)~
EXIT 
// Pre Portal Talk

CHAIN IF ~Global("X32IsaaPortalTalk","GLOBAL",1)~ THEN X32IsaaJ Talk7
@238
DO ~SetGlobal("X32IsaaPortalTalk","GLOBAL",2)SetGlobal("X3IsaacAppChange","GLOBAL",6)~
== X32milyJ IF ~IsValidForPartyDialogue("X3mily")~ THEN @239
END 
++ @240 EXTERN X32IsaaJ T7.1A
++ @241 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-1)~ EXTERN X32IsaaJ T7.1B
++ @242 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ EXTERN X32IsaaJ T7.2

CHAIN X32IsaaJ T7.1A
@245
EXTERN X32IsaaJ T7.1B

CHAIN X32IsaaJ T7.1B
@244
EXTERN X32ISaaJ T7.1B

CHAIN X32IsaaJ T7.2
@243
EXIT 

// Post Portal Talk

CHAIN IF ~Global("X32IsaaPortalTalk","GLOBAL",3)~ THEN X32IsaaJ Talk8
@246
DO ~SetGlobal("X32IsaaPortalTalk","GLOBAL",4)~
= @247
END 
+~!Global("X3IsaaRomanceActive","GLOBAL",2)~+ @248 + Talk8.M2
+~!Global("X3IsaaRomanceActive","GLOBAL",2)~+ @249 + Talk8.M2
+~!Global("X3IsaaRomanceActive","GLOBAL",2)~+ @250 + Talk8.M2
+~!Global("X3IsaaRomanceActive","GLOBAL",2)~+ @251 + Talk8.M1
+~Global("X3IsaaRomanceActive","GLOBAL",2)~+ @248 + Talk8.F1A
+~Global("X3IsaaRomanceActive","GLOBAL",2)~+ @249 + Talk8.F1A
+~Global("X3IsaaRomanceActive","GLOBAL",2)~+ @250 + Talk8.F1A
+~Global("X3IsaaRomanceActive","GLOBAL",2)~+ @251 + Talk8.F1B

CHAIN X32IsaaJ Talk8.M1
@252
EXTERN X32IsaaJ Talk8.M2 

CHAIN X32IsaaJ Talk8.M2 
@253
EXIT 

CHAIN X32IsaaJ Talk8.F1A
@255
EXTERN X32IsaaJ Talk8.F2

CHAIN X32IsaaJ Talk8.F1B 
@254
EXTERN X32IsaaJ Talk8.F2

CHAIN X32IsaaJ Talk8.F2 
@256
END 
++ @257 + Talk8.F3
++ @258 + Talk8.F3
++ @259 + Talk8.F3
++ @260 + Talk8.F3


CHAIN X32IsaaJ Talk8.F3 
@261
END 
++ @262 + Talk8.F4
++ @263 + Talk8.F4 
++ @264 + Talk8.F4

CHAIN X32IsaaJ Talk8.F4 
@265
EXTERN X32IsaaJ Talk8.M2

APPEND X32IsaaJ

// THRIX

IF ~Global("X32IsaacSacrifice","bd4500",1)~ ThrixTalk0
SAY @61
+ ~!Global("X32_thrix_mark_Emily","global",1)~ + @62 DO ~SetGlobal("X32IsaacSacrifice","bd4500",2)~ + ThrixTalk2
+ ~Global("X32_thrix_mark_Emily","global",1)~ + @63 DO ~SetGlobal("X32IsaacSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("X32_thrix_mark_Emily","global",1)~ + @64 DO ~SetGlobal("X32IsaacSacrifice","bd4500",2)~ + ThrixTalk3
+ ~Global("X32_thrix_mark_Emily","global",1)~ + @64 DO ~SetGlobal("X32IsaacSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("X32_thrix_mark_Emily","global",1)~ + @65 DO ~SetGlobal("X32IsaacSacrifice","bd4500",2)~ + ThrixTalk4
+ ~Global("X32_thrix_mark_Emily","global",1)~ + @65 DO ~SetGlobal("X32IsaacSacrifice","bd4500",2)~ + ThrixTalk1
END

IF ~~ ThrixTalk1
 SAY @66
IF ~OR(2)
Global("X32IsaacRomanceActive","GLOBAL",1)
Global("X32IsaacRomanceActive","GLOBAL",2)~ + ThrixTalk5
IF ~!Global("X32IsaacRomanceActive","GLOBAL",1)
!Global("X32IsaacRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ ThrixTalk2
 SAY @67
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk3
 SAY @68
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk4
 SAY @69
IF ~OR(2)
Global("X32IsaacRomanceActive","GLOBAL",1)
Global("X32IsaacRomanceActive","GLOBAL",2)~ + ThrixTalk5
IF ~!Global("X32IsaacRomanceActive","GLOBAL",1)
!Global("X32IsaacRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ ThrixTalk5
 SAY @70
IF ~~ DO ~SetGlobal("X32IsaacRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ ThrixTalk6
 SAY @71
IF ~~ EXIT
END

/* End of Essential Additions */

// -40 Approval 

IF ~Global("X3Break","LOCALS",1)~ Break
SAY @46
= @47
++ @48 + Break.1 
++ @49 + Break.2 
++ @50 + Break.1
END 

IF ~~ Break.1
SAY @52
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY @51
IF ~~ + Break.3 
END 

IF ~~ Break.3 
SAY @53
++ @55 + Break.5
++ @54 + Break.4
++ @56 + Break.6 
END 

IF ~~ Break.5 
SAY @60
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()SetGlobal("X3Break","LOCALS",4)~
EXIT 
END 

IF ~~ Break.4 
SAY @59
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()SetGlobal("X3Break","LOCALS",4)~
EXIT 
END 

IF ~~ Break.6
SAY @57
IF ~~ DO ~SetGlobal("X3Break","LOCALS",2)IncrementGlobal("X3IsaacApp","GLOBAL",15)DisplayStringNoNameDlg(Player1,@600619)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY @58
= @59
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()SetGlobal("X3Break","LOCALS",4)~
EXIT 
END 

IF ~IsGabber(Player1)AreaCheck("bd4300")GlobalGT("bd_plot","global",585)~ THEN BEGIN Emily.BattleOver 
SAY @266
IF ~~ EXIT 
END 


IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])!GlobalGT("X3IsaacApp","GLOBAL",44)~ THEN BEGIN Isaac.PIDNormal 
SAY  @428
+~HPPercentGT(Myself,74)RandomNum(6,1)~+ @430 + Isaac.HowAreYou1
+~HPPercentGT(Myself,74)RandomNum(6,2)~+ @430 + Isaac.HowAreYou2
+~HPPercentGT(Myself,74)RandomNum(6,3)~+ @430 + Isaac.HowAreYou3
+~HPPercentGT(Myself,74)RandomNum(6,4)~+ @430 + Isaac.HowAreYou4
+~HPPercentGT(Myself,74)RandomNum(6,5)~+ @430 + Isaac.HowAreYou5
+~HPPercentGT(Myself,74)RandomNum(6,6)~+ @430 + Isaac.HowAreYou6
+~HPPercentLT(Myself,75)HPPercentGT(Myself,49)~+ @430 + Isaac.HowAreYouInjured // @430 //(Under 75%, Over 50%)
+~HPPercentLT(Myself,50)~+ @430 + Isaac.HowAreYouHurt // @430 //(Under 50%)
++ @431  + IsaacP.Talk
++ @433 + FixString
++ @434 EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])GlobalGT("X3IsaacApp","GLOBAL",44)~ THEN BEGIN Isaac.PIDFriend 
SAY  @429
+~HPPercentGT(Myself,74)RandomNum(6,1)~+ @430 + Isaac.HowAreYou1
+~HPPercentGT(Myself,74)RandomNum(6,2)~+ @430 + Isaac.HowAreYou2
+~HPPercentGT(Myself,74)RandomNum(6,3)~+ @430 + Isaac.HowAreYou3
+~HPPercentGT(Myself,74)RandomNum(6,4)~+ @430 + Isaac.HowAreYou4
+~HPPercentGT(Myself,74)RandomNum(6,5)~+ @430 + Isaac.HowAreYou5
+~HPPercentGT(Myself,74)RandomNum(6,6)~+ @430 + Isaac.HowAreYou6
+~HPPercentLT(Myself,75)HPPercentGT(Myself,49)~+ @430 + Isaac.HowAreYouInjured // @430 //(Under 75%, Over 50%)
+~HPPercentLT(Myself,50)~+ @430 + Isaac.HowAreYouHurt // @430 //(Under 50%)
++ @431  + IsaacP.Talk
+~OR(2)Global("X3IsaaRomanceActive","GLOBAL",2)Global("X3IsaaRomanceActive","GLOBAL",1)~+ @432 + IsaacP.Interact
++ @433 + FixString
++ @434 EXIT 
END 



IF ~~ IsaacP.Talk 
SAY @439
// Party Opinion 
+~NumInPartyAliveGT(2)~+ @436 + Isaac.PCompanionThoughts 
+~GlobalGT("X3IsaacApp","GLOBAL",44)~+ @437 + Em.Me1 
+~GlobalGT("X3IsaacApp","GLOBAL",-15)GlobalLT("X3IsaacApp","GLOBAL",15)~+ @437 + Em.Me2 
+~GlobalLT("X3IsaacApp","GLOBAL",-14)~+ @437  + Em.Me3 
// Additional Conversations 
+~Global("X3IsaacNeverwinter","LOCALS",0)~+ @440 DO ~SetGlobal("X3IsaacNeverwinter","LOCALS",1)~ + IsaacP.Neverwinter
+~Global("X3IsaacPlanarHunters","LOCALS",0)~+ @461 DO ~SetGlobal("X3IsaacPlanarHunters","LOCALS",1)~ + IsaacP.PlanarHunters
+~Global("X3IsaacMavis","LOCALS",0)~+ @479 DO ~SetGlobal("X3IsaacMavis","LOCALS",1)~ + IsaacP.Mavis
+~Global("X3IsaacSkills","LOCALS",0)~+ @636 DO ~SetGlobal("X3IsaacSkills","LOCALS",1)~ + IsaacP.Skills
+~Global("X3IsaacHome","LOCALS",0)Global("X3IsaacNeverwinter","LOCALS",1)~+ @637 DO ~SetGlobal("X3IsaacHome","LOCALS",1)~ + IsaacP.Home
+~Global("X3IsaacLooks","LOCALS",0)Global("X3IsaaRomanceActive","GLOBAL",1)~+ @639 DO ~SetGlobal("X3IsaacLooks","LOCALS",1)~ + IsaacP.Handsome
++ @438 EXIT 
END 

IF ~~ IsaacP.Neverwinter
SAY @441
= @442
++ @443 + Neverwinter.MakeDo
++ @444 + Neverwinter.BN
++ @445 + Neverwinter.BN
END 

IF ~~ Neverwinter.BN 
SAY @446
= @447
= @448
++ @443 + Neverwinter.MakeDo
++ @452 DO ~IncrementGlobal("X3IsaacApp","GLOBAL",1)DisplayStringNoNameDlg(Player1,@600613)~ + Neverwinter.NotAlways
++ @453 DO ~IncrementGlobal("X3IsaacApp","GLOBAL",-1)DisplayStringNoNameDlg(Player1,@600603)~ + Neverwinter.Glad
++ @454 DO ~IncrementGlobal("X3IsaacApp","GLOBAL",2)DisplayStringNoNameDlg(Player1,@600613)~ + Neverwinter.Wish
END 


IF ~~ Neverwinter.MakeDo 
SAY @449
= @450
= @451
++ @452 DO ~IncrementGlobal("X3IsaacApp","GLOBAL",1)DisplayStringNoNameDlg(Player1,@600613)~ + Neverwinter.NotAlways
++ @453 DO ~IncrementGlobal("X3IsaacApp","GLOBAL",-1)DisplayStringNoNameDlg(Player1,@600603)~ + Neverwinter.Glad
++ @454 DO ~IncrementGlobal("X3IsaacApp","GLOBAL",2)DisplayStringNoNameDlg(Player1,@600613)~ + Neverwinter.Wish
END 

IF ~~ Neverwinter.NotAlways
SAY @455
++ @458 + IsaacP.Talk
++ @459 EXIT 
END 

IF ~~ Neverwinter.Wish
SAY @456
++ @458 + IsaacP.Talk
++ @459 EXIT 
END 

IF ~~ Neverwinter.Glad 
SAY @457
++ @458 + IsaacP.Talk
++ @459 EXIT 
END 

IF ~~ IsaacP.PlanarHunters 
SAY @461
= @462
+~Global("X3IPIDSpecific","LOCALS",0)~+ @463 DO ~SetGlobal("X3IPIDSpecific","LOCALS",1)~ + IsaacP.Specific1
++ @470 + IsaacP.Size
++ @473 + IsaacP.MetHunters
++ @477 + IsaacP.Mission
END 

IF ~~ IsaacP.Specific1 
SAY @464
= @465
++ @466 + IsaacP.Specific2
++ @470 + IsaacP.Size
++ @473 + IsaacP.MetHunters
++ @477 + IsaacP.Mission
++ @458 + IsaacP.Talk
++ @459 EXIT 
END 

IF ~~ IsaacP.Specific2 
SAY @467
++ @468 DO ~IncrementGlobal("X3IsaacApp","GLOBAL",-1)DisplayStringNoNameDlg(Player1,@600603)~ + IsaacP.Specific3
++ @470 + IsaacP.Size
++ @473 + IsaacP.MetHunters
++ @477 + IsaacP.Mission
++ @458 + IsaacP.Talk
++ @459 EXIT 
END 

IF ~~ IsaacP.Specific3 
SAY @469
++ @470 + IsaacP.Size
++ @473 + IsaacP.MetHunters
++ @477 + IsaacP.Mission
++ @458 + IsaacP.Talk
++ @459 EXIT 
END 

IF ~~ IsaacP.Size 
SAY @471
= @472
+~Global("X3IPIDSpecific","LOCALS",0)~+ @463 DO ~SetGlobal("X3IPIDSpecific","LOCALS",1)~ + IsaacP.Specific1
++ @473 + IsaacP.MetHunters
++ @477 + IsaacP.Mission
++ @458 + IsaacP.Talk
++ @459 EXIT 
END 

IF ~~ IsaacP.MetHunters 
SAY @474
= @475
= @476
+~Global("X3IPIDSpecific","LOCALS",0)~+ @463 DO ~SetGlobal("X3IPIDSpecific","LOCALS",1)~ + IsaacP.Specific1
++ @470 + IsaacP.Size
++ @477 + IsaacP.Mission
++ @458 + IsaacP.Talk
++ @459 EXIT 
END 

IF ~~ IsaacP.Mission 
SAY @478
+~Global("X3IPIDSpecific","LOCALS",0)~+ @463 DO ~SetGlobal("X3IPIDSpecific","LOCALS",1)~ + IsaacP.Specific1
++ @473 + IsaacP.MetHunters
++ @477 + IsaacP.Mission
++ @458 + IsaacP.Talk
++ @459 EXIT 
END 

IF ~~ IsaacP.Mavis 
SAY @480
= @481
++ @482 + IsaacP.MavisExplanation
++ @483 + IsaacP.MavisFrederick
++ @484 + IsaacP.MavisCare
END 

IF ~~ IsaacP.MavisExplanation 
SAY @485
++ @483 + IsaacP.MavisFrederick
++ @484 + IsaacP.MavisCare
++ @458 + IsaacP.Talk
++ @459 EXIT 
END 

IF ~~ IsaacP.MavisFrederick 
SAY @486
= @487
++ @482 + IsaacP.MavisExplanation
++ @484 + IsaacP.MavisCare
++ @458 + IsaacP.Talk
++ @459 EXIT 
END 

IF ~~ IsaacP.MavisCare 
SAY @488
++ @482 + IsaacP.MavisExplanation
++ @483 + IsaacP.MavisFrederick
++ @458 + IsaacP.Talk
++ @459 EXIT 
END 

IF ~~ IsaacP.Skills 
SAY @640
= @641
= @642 
++ @643 DO ~IncrementGlobal("X3IsaacApp","GLOBAL",-2)DisplayStringNoNameDlg(Player1,@600603)~ + IsaacP.SkillsTerrible
++ @644 DO ~IncrementGlobal("X3IsaacApp","GLOBAL",2)DisplayStringNoNameDlg(Player1,@600613)~ + IsaacP.SkillsFascinating
++ @645 + IsaacP.SkillsFascinating
END 

IF ~~ IsaacP.SkillsTerrible 
SAY @646
IF ~~ + IsaacP.SkillsOneDay
END 

IF ~~ IsaacP.SkillsFascinating 
SAY @648
IF ~~ + IsaacP.SkillsOneDay 
END 

IF ~~ IsaacP.SkillsOneDay 
SAY @647
++ @458 + IsaacP.Talk
++ @459 EXIT 
END 

IF ~~ IsaacP.Home 
SAY @649
++ @650 + IsaacP.Always
++ @651 + IsaacP.Always
++ @652 + IsaacP.Always
END 

IF ~~ IsaacP.Always 
SAY @653 
++ @654 DO ~IncrementGlobal("X3IsaacApp","GLOBAL",2)DisplayStringNoNameDlg(Player1,@600613)~ + IsaacP.Practical
++ @655 DO ~IncrementGlobal("X3IsaacApp","GLOBAL",-2)DisplayStringNoNameDlg(Player1,@600603)~ + IsaacP.Cold
++ @458 + IsaacP.Talk
++ @459 EXIT 
END 

IF ~~ IsaacP.Practical 
SAY @656
++ @458 + IsaacP.Talk
++ @459 EXIT 
END 

IF ~~ IsaacP.Cold 
SAY @657
++ @458 + IsaacP.Talk
++ @459 EXIT 
END 

IF ~~ IsaacP.Caim 
SAY @658
= @659
++ @458 + IsaacP.Talk
++ @459 EXIT 
END 

IF ~~ IsaacP.Handsome 
SAY @660
++ @661 + IsaacP.H1
++ @662 + IsaacP.H2
++ @663 + IsaacP.H3
END 

IF ~~ IsaacP.H1
SAY @666
IF ~~ + IsaacP.H4 
END 

IF ~~ IsaacP.H2
SAY @665
IF ~~ + IsaacP.H4 
END 

IF ~~ IsaacP.H3
SAY @664
IF ~~ + IsaacP.H4 
END 

IF ~~ IsaacP.H4
SAY @667
++ @668 + IsaacP.H5
++ @669 + IsaacP.H5
++ @670 + IsaacP.H5
END 

IF ~~ IsaacP.H5 
SAY @671
++ @672 + IsaacP.H6
++ @673 + IsaacP.H7
++ @674 + IsaacP.H6
END 

IF ~~ IsaacP.H6
SAY @675
IF ~~ DO ~IncrementGlobal("X3IsaacApp","GLOBAL",4)DisplayStringNoNameDlg(Player1,@600616)~ EXIT 
END 

IF ~~ IsaacP.H7
SAY @676
IF ~~ DO ~IncrementGlobal("X3IsaacApp","GLOBAL",4)DisplayStringNoNameDlg(Player1,@600616)~ EXIT 
END 


IF ~~ Isaac.PCompanionThoughts 
SAY @679 // ~Which one exactly?~ 
// BG1

+~InParty("Dynaheir")~+ @493 + Em.Dynaheir
+~InParty("Edwin")~+ @494 + Em.Edwin
+~InParty("Jaheira")~+ @499 + Em.Jaheira 
+~InParty("Khalid")~+ @501 + Em.Khalid 
+~InParty("Minsc")~+ @503 + Em.Minsc 
+~InParty("Safana")~+ @506 + Em.Safana 
+~InParty("Viconia")~+ @510 + Em.Viconia    
// EE 
+~InParty("Neera")~+ @514 + Em.Neera 
+~InParty("Rasaad")~+ @515 + Em.Rasaad 
+~InParty("Dorn")~+ @516 + Em.Dorn 
+~InParty("Baeloth")~+ @517 + Em.Baeloth 
// Sod Only 
+~InParty("Glint")~+ @534 + Em.Glint 
+~InParty("Corwin")~+ @535 + Em.Corwin 
+~InParty("mkhiin")~+ @536 + Em.MKhiin 
+~InParty("Voghlin")~+ @537 + Em.Voghlin
// CrossMod Choices 
+~InParty("X3Vien")~+ @518 + Em.Vienxay 
+~InParty("X3Kale")~+ @519 + Em.Kale 
+~InParty("X3Helga")~+ @520 + Em.Helga
+~InParty("X3Rec")~+ @521 + Em.Recorder
+~InParty("X3mily")!Race("X3mily",Aasimar)~+ @522 + Em.Emily1
+~InParty("X3mily")Race("X3mily",Aasimar)~+ @522 + Em.Emily2
+~InParty("c0aura")~+ @523 + Em.Aura 
+~InParty("C0Sirene")~+ @524 + Em.Sirene
+ ~InParty("L#1DVER")~ + @525 + Em.Verrsza
+~InParty("#Ishy")~ + @526 + Em.Ishy
// Myself 
+~GlobalGT("X3IsaacApp","GLOBAL",44)~+ @527 + Em.Me1 
+~GlobalGT("X3IsaacApp","GLOBAL",-15)GlobalLT("X3IsaacApp","GLOBAL",15)~+ @527 + Em.Me2
+~GlobalLT("X3IsaacApp","GLOBAL",-14)~+ @527 + Em.Me3
++ ~Nevermind~ EXIT  
END 


IF ~~ Em.Ajantis 
SAY @528
IF ~~ EXIT 
END 

IF ~~ Em.Alora
SAY @529
IF ~~ EXIT 
END 

IF ~~ Em.Branwen 
SAY @530
IF ~~ EXIT 
END 

IF ~~ Em.Coran 
SAY @531
IF ~~ EXIT 
END 

IF ~~ Em.Dynaheir 
SAY @532
IF ~~ EXIT 
END 

IF ~~ Em.Edwin 
SAY @533
IF ~~ EXIT 
END 

IF ~~ Em.Eldoth 
SAY @534 
IF ~~ EXIT 
END 

IF ~~ Em.Faldorn 
SAY @535
IF ~~ EXIT 
END 

IF ~~ Em.Garrick 
SAY @536
IF ~~ EXIT 
END 

IF ~~ Em.Imoen 
SAY @537
IF ~~ EXIT 
END 

IF ~~ Em.Jaheira 
SAY @538
IF ~~ EXIT 
END 

IF ~~ Em.Kagain 
SAY @539
IF ~~ EXIT 
END 

IF ~~ Em.Khalid 
SAY @540
IF ~~ EXIT 
END 

IF ~~ Em.Kivan
SAY @541
IF ~~ EXIT 
END 

IF ~~ Em.Minsc 
SAY @542
IF ~~ EXIT 
END 

IF ~~ Em.Montaron 
SAY @543   
IF ~~ EXIT 
END 

IF ~~ Em.Quayle 
SAY @544
IF ~~ EXIT 
END 

IF ~~ Em.Safana 
SAY @545
IF ~~ EXIT 
END 

IF ~~ Em.Sharteel 
SAY @546
IF ~~ EXIT 
END 

IF ~~ Em.Skie 
SAY @547
IF ~~ EXIT 
END 

IF ~~ Em.Tiax 
SAY @548
IF ~~ EXIT 
END 

IF ~~ Em.Viconia 
SAY @549
IF ~~ EXIT 
END 

IF ~~ Em.Xan 
SAY @550
IF ~~ EXIT 
END 

IF ~~ Em.Xzar 
SAY @551
IF ~~ EXIT 
END 

IF ~~ Em.Yeslick 
SAY @552
IF ~~ EXIT 
END 

IF ~~ Em.Neera
SAY @553
IF ~~ EXIT 
END 

IF ~~ Em.Dorn 
SAY @554
IF ~~ EXIT 
END 

IF ~~ Em.Rasaad 
SAY @555
IF ~~ EXIT 
END 

IF ~~ Em.Baeloth 
SAY @556
IF ~~ EXIT 
END

IF ~~ Em.Glint 
SAY @528
IF ~~ EXIT 
END 

IF ~~ Em.Corwin 
SAY @529
IF ~~ EXIT 
END 

IF ~~ Em.MKhiin 
SAY @530
IF ~~ EXIT 
END 

IF ~~ Em.Voghlin 
SAY @531
IF ~~ EXIT 
END 

IF ~~ Em.Vienxay
SAY @557
IF ~~ EXIT 
END 

IF ~~ Em.Kale 
SAY @558
IF ~~ EXIT 
END 

IF ~~ Em.Aura
SAY @559
IF ~~ EXIT 
END 

IF ~~ Em.Helga
SAY @560
IF ~~ EXIT 
END 

IF ~~ Em.Recorder
SAY @561
IF ~~ EXIT 
END 

IF ~~ Em.Emily1
SAY @562
IF ~~ EXIT 
END 

IF ~~ Em.Emily2
SAY @563
IF ~~ EXIT 
END 

IF ~~ Em.Sirene 
SAY @564
IF ~~ EXIT 
END 

IF ~~ Em.Me1 
SAY @565
IF ~~ EXIT 
END 

IF ~~ Em.Me2 
SAY @566
IF ~~ EXIT 
END 

IF ~~ Em.Me3
SAY @567
IF ~~ EXIT 
END 

IF ~~ Em.Verrsza
SAY @677
IF ~~ EXIT 
END 

IF ~~ Em.Ishy
SAY @678
IF ~~ EXIT 
END 

IF ~~ FixString 
SAY @568
IF ~~ DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("X3IsaR")~ EXIT 
END 

IF ~~ Isaac.HowAreYou1
SAY @569
IF ~~ EXIT 
END 

IF ~~ Isaac.HowAreYou2
SAY @570
IF ~~ EXIT 
END 

IF ~~ Isaac.HowAreYou3
SAY @571
IF ~~ EXIT 
END 

IF ~~ Isaac.HowAreYou4
SAY @572
IF ~~ EXIT 
END 

IF ~~ Isaac.HowAreYou5
SAY @573
IF ~~ EXIT 
END 

IF ~~ Isaac.HowAreYou6
SAY @574
IF ~~ EXIT 
END 

IF ~~ Isaac.HowAreYouInjured
SAY @575
IF ~~ EXIT 
END 


IF ~~ Isaac.HowAreYouHurt
SAY @576
IF ~~ EXIT 
END 

 

IF ~~ IsaacP.Interact
SAY @584
+~RandomNum(3,1)~+ @585 + ThinkingAbout1
+~RandomNum(3,2)~+ @585 + ThinkingAbout2
+~RandomNum(3,3)~+ @585 + ThinkingAbout3
+~RandomNum(3,1)~+ @586 + TallDark1
+~RandomNum(3,2)~+ @586 + TallDark2
+~RandomNum(3,3)~+ @586 + TallDark3
+~RandomNum(3,1)~+ @587 + Watch1
+~RandomNum(3,2)~+ @587 + Watch2
+~RandomNum(3,3)~+ @587 + Watch3
+~RandomNum(3,1)~+ @588 + TellJoke1
+~RandomNum(3,2)~+ @588 + TellJoke2
+~RandomNum(3,3)~+ @588 + TellJoke3
+~RandomNum(3,1)!CheckStatGT(Player1,16,STR)~+ @589 + NormalPunch1
+~RandomNum(3,2)!CheckStatGT(Player1,16,STR)~+ @589 + NormalPunch2
+~RandomNum(3,3)!CheckStatGT(Player1,16,STR)~+ @589 + NormalPunch3
+~RandomNum(3,1)CheckStatGT(Player1,16,STR)~+ @589 + StrongPunch1
+~RandomNum(3,2)CheckStatGT(Player1,16,STR)~+ @589 + StrongPunch2
+~RandomNum(3,3)CheckStatGT(Player1,16,STR)~+ @589 + StrongPunch3
+~RandomNum(3,1)~+ @590 + Lean1
+~RandomNum(3,2)~+ @590 + Lean2
+~RandomNum(3,3)~+ @590 + Lean3
+~RandomNum(3,1)~+ @590 + Cheek1
+~RandomNum(3,2)~+ @590 + Cheek2
+~RandomNum(3,3)~+ @590 + Cheek3
+~RandomNum(3,1)~+ @591 + Drink1
+~RandomNum(3,2)~+ @591 + Drink2
+~RandomNum(3,3)~+ @591 + Drink3
+~RandomNum(3,1)~+ @592 + ThankYou1
+~RandomNum(3,2)~+ @592 + ThankYou2
+~RandomNum(3,3)~+ @592 + ThankYou3
+~RandomNum(3,1)~+ @593 + Smile1
+~RandomNum(3,2)~+ @593 + Smile2
+~RandomNum(3,3)~+ @593 + Smile3
+~RandomNum(3,1)~+ @594 + Strong1
+~RandomNum(3,2)~+ @594 + Strong2
+~RandomNum(3,3)~+ @594 + Strong3
+~RandomNum(3,1)~+ @595 + Arm1
+~RandomNum(3,2)~+ @595 + Arm2
+~RandomNum(3,3)~+ @595 + Arm3
++ @596 EXIT 
END 

IF ~~ ThinkingAbout1 
SAY @597
IF ~~ EXIT 
END 

IF ~~ ThinkingAbout2
SAY @598
IF ~~ EXIT 
END 

IF ~~ ThinkingAbout3
SAY @599
IF ~~ EXIT 
END 

IF ~~ TallDark1 
SAY @600
IF ~~ EXIT 
END 

IF ~~ TallDark2
SAY @601
IF ~~ EXIT 
END 

IF ~~ TallDark3
SAY @602
IF ~~ EXIT 
END 

IF ~~ Watch1 
SAY @603
IF ~~ EXIT 
END 

IF ~~ Watch2 
SAY @604
IF ~~ EXIT 
END 


IF ~~ Watch3 
SAY @605
IF ~~ EXIT 
END 

IF ~~ TellJoke1 
SAY @606
IF ~~ EXIT 
END 

IF ~~ TellJoke2
SAY @607
IF ~~ EXIT 
END 


IF ~~ TellJoke3
SAY @608
IF ~~ EXIT 
END 

IF ~~ NormalPunch1 
SAY @609
IF ~~ EXIT 
END 

IF ~~ NormalPunch2
SAY @610
IF ~~ EXIT 
END 

IF ~~ NormalPunch3 
SAY @611
IF ~~ EXIT 
END 

IF ~~ StrongPunch1 
SAY @612
= @613
IF ~~ EXIT 
END 

IF ~~ StrongPunch2
SAY @614
= @615
IF ~~ EXIT 
END 

IF ~~ StrongPunch3 
SAY @616
= @617
IF ~~ EXIT 
END 

IF ~~ Lean1
SAY @618
IF ~~ EXIT 
END 

IF ~~ Lean2
SAY @619
IF ~~ EXIT 
END 

IF ~~ Lean3
SAY @620
IF ~~ EXIT 
END 

IF ~~ Cheek1
SAY @578
IF ~~ EXIT 
END 

IF ~~ Cheek2
SAY @579
IF ~~ EXIT 
END 

IF ~~ Cheek3
SAY @580
IF ~~ EXIT 
END 


IF ~~ Drink1
SAY @621
IF ~~ EXIT 
END 

IF ~~ Drink2
SAY @622
IF ~~ EXIT 
END 

IF ~~ Drink3
SAY @623
IF ~~ EXIT 
END 

IF ~~ ThankYou1
SAY @624
IF ~~ EXIT 
END 

IF ~~ ThankYou2
SAY @625
IF ~~ EXIT 
END 

IF ~~ ThankYou3
SAY @626
IF ~~ EXIT 
END 

IF ~~ Smile1
SAY @627
IF ~~ EXIT 
END 

IF ~~ Smile2
SAY @628
IF ~~ EXIT 
END 

IF ~~ Smile3
SAY @629
IF ~~ EXIT 
END 

IF ~~ Strong1
SAY @630
IF ~~ EXIT 
END 

IF ~~ Strong2
SAY @631
IF ~~ EXIT 
END 

IF ~~ Strong3
SAY @632
IF ~~ EXIT 
END 

IF ~~ Arm1
SAY @633
IF ~~ EXIT 
END 

IF ~~ Arm2
SAY @634
IF ~~ EXIT 
END 

IF ~~ Arm3
SAY @635
IF ~~ EXIT 
END 



END 

