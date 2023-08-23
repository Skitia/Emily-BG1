CHAIN IF ~Global("X3IQuest","GLOBAL",3)~ THEN X3IsaacJ VernQuest
@36
DO ~SetGlobal("X3IQuest","GLOBAL",4)~
END 
IF ~Global("X3IQuestTask1Pass","GLOBAL",1)~ EXTERN X3IsaacJ PlanVern
IF ~!Global("X3IQuestTask1Pass","GLOBAL",1)~ EXTERN X3IsaacJ SeeVern

CHAIN X3IsaacJ PlanVern 
@37
= @38
= @51
END 
++ @39 + WhyOutside
++ @40 + WhyNotTalk
++ @46 + LetsFindVern

CHAIN X3IsaacJ WhyOutside 
@42 
EXTERN X3IsaacJ ButIfYourWay

CHAIN X3IsaacJ WhyNotTalk 
@47 
EXTERN X3IsaacJ ButIfYourWay



CHAIN X3IsaacJ LetsFindVern 
@48
EXIT 

CHAIN X3IsaacJ SeeVern
@49
= @50
= @51
END 
++ @39 + WhyOutside
++ @40 + WhyNotTalkFail
++ @46 + LetsFindVern

CHAIN X3IsaacJ WhyNotTalkFail 
@41
EXTERN X3IsaacJ ButIfYourWay

CHAIN X3IsaacJ ButIfYourWay
@43
EXIT

//Vern Dead 
CHAIN IF ~Global("X3IQuestTask2Pass","GLOBAL",2)Global("X3IQuest","GLOBAL",4)Dead("X3Vern")~ THEN X3IsaacJ VernQuestEndDead
@52
DO ~SetGlobal("X3IsaacAppChange","GLOBAL",9)~
EXTERN X3IsaacJ VernQuestEndAssociates

//Vern Alive
CHAIN IF ~Global("X3IQuestTask2Pass","GLOBAL",2)Global("X3IQuest","GLOBAL",4)!Dead("X3Vern")~ THEN X3IsaacJ VernQuestEndAlive
@53
DO ~SetGlobal("X3IsaacAppChange","GLOBAL",8)~
EXTERN X3IsaacJ VernQuestEndAssociates

CHAIN X3IsaacJ VernQuestEndAssociates 
@74
DO ~AddJournalEntry(@60008,QUEST)SetGlobal("X3IQuest","GLOBAL",5)~
EXIT 

CHAIN IF ~Global("X3IQuestTask2Pass","GLOBAL",1)Global("X3IQuest","GLOBAL",4)~ THEN X3IsaacJ VernQuestNotSee
@54
END 
++ @71 + VernQuestNotSeeAssociates 

CHAIN X3IsaacJ VernQuestNotSeeAssociates
@72
DO ~SetGlobal("X3IsaacAppChange","GLOBAL",7)~
= @73
DO ~AddJournalEntry(@60008,QUEST)SetGlobal("X3IQuest","GLOBAL",5)~
EXIT 

//Fail 

CHAIN IF ~Global("X3IQuestTask2Pass","GLOBAL",0)Global("X3IQuest","GLOBAL",4)Dead("X3Vern")~ THEN X3IsaacJ VernQuestEndFail 
@55
DO ~SetGlobal("X3IQuest","GLOBAL",5)~
END 
++ @56 + VernWastedEffort
++ @57 + VernWastedEffort
++ @58 + VernWastedEffort

CHAIN X3IsaacJ VernWastedEffort
@59
END 
IF ~!Global("X3IQuestTask1Pass","GLOBAL",1)~ EXTERN X3IsaacJ Quest1AlsoFailed
IF ~Global("X3IQuestTask1Pass","GLOBAL",1)~ DO ~SetGlobal("X3IsaacAppChange","GLOBAL",4)~ EXTERN X3IsaacJ OhWellOnToQuestThree

CHAIN X3IsaacJ Quest1AlsoFailed 
@60 
END 
++ @61 + HaveNotForgotten
++ @62 + NotGoodEnough
++ @63 + MakeAGoodPoint
++ @64 + HaveNotForgotten

CHAIN X3IsaacJ HaveNotForgotten 
@66
EXTERN X3IsaacJ Quest2IsaacLeaves 

CHAIN X3IsaacJ NotGoodEnough 
@65
EXTERN X3IsaacJ Quest2IsaacLeaves 

CHAIN X3IsaacJ Quest2IsaacLeaves 
@67
END 
++ @75 + Quest2IsaacFights
++ @76 + Quest2IsaacGoes
++ @77 + DecisionMade

CHAIN X3IsaacJ DecisionMade 
@80
EXTERN X3IsaacJ Quest2IsaacGoes 

CHAIN X3IsaacJ Quest2IsaacGoes 
@79
DO ~AddJournalEntry(@60010,QUEST_DONE)LeaveParty()EscapeArea()~
EXIT 

CHAIN X3IsaacJ Quest2IsaacFights 
@78
DO ~AddJournalEntry(@60011,QUEST_DONE)LeaveParty()Enemy()Attack(Player1)~
EXIT 


CHAIN X3IsaacJ MakeAGoodPoint 
@68
DO ~SetGlobal("X3IsaacAppChange","GLOBAL",3)~
EXTERN X3IsaacJ OhWellOnToQuestThree

CHAIN X3IsaacJ OhWellOnToQuestThree
@69 
DO ~AddJournalEntry(@60009,QUEST)~
= @70
EXIT
// Two versions, the one where you found out nothing.
// And the one where you knew he was here.



CHAIN IF ~!AreaCheck("%bg1_eet_symbol%5800")AreaType(OUTDOOR)
Global("X3IQuest","GLOBAL",1)~ THEN X3IsaacJ QuestStart
@0
DO ~SetGlobal("X3IQuest","GLOBAL",2)~
= @1
= @2 
END 
+~Global("X3IYusmin","LOCALS",0)~+ @3 DO ~SetGlobal("X3IYusmin","LOCALS",1)~ + AboutYusmin 
+~Global("X3IAvarn","LOCALS",0)~+ @4 DO ~SetGlobal("X3IAvarn","LOCALS",1)~ + AboutAvarn
+~Global("X3IHowToGetToTalk","LOCALS",0)~+ @5 DO ~SetGlobal("X3IHowToGetToTalk","LOCALS",1)~ + QuestHowToGetToTalk
++ @12 + QuestUnderstood


CHAIN X3IsaacJ AboutYusmin 
@7
== %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN @683
= @8
END 
+~Global("X3IAvarn","LOCALS",0)~+ @4 DO ~SetGlobal("X3IAvarn","LOCALS",1)~ + AboutAvarn
+~Global("X3IHowToGetToTalk","LOCALS",0)~+ @5 DO ~SetGlobal("X3IHowToGetToTalk","LOCALS",1)~ + QuestHowToGetToTalk
++ @13 + QuestUnderstood

CHAIN X3IsaacJ AboutAvarn
@9
= @10
END 
+~Global("X3IYusmin","LOCALS",0)~+ @3 DO ~SetGlobal("X3IYusmin","LOCALS",1)~ + AboutYusmin 
+~Global("X3IHowToGetToTalk","LOCALS",0)~+ @5 DO ~SetGlobal("X3IHowToGetToTalk","LOCALS",1)~ + QuestHowToGetToTalk
++ @13 + QuestUnderstood

CHAIN X3IsaacJ QuestHowToGetToTalk
@6
END 
+~Global("X3IYusmin","LOCALS",0)~+ @3 DO ~SetGlobal("X3IYusmin","LOCALS",1)~ + AboutYusmin 
+~Global("X3IAvarn","LOCALS",0)~+ @4 DO ~SetGlobal("X3IAvarn","LOCALS",1)~ + AboutAvarn
++ @13 + QuestUnderstood

CHAIN X3IsaacJ QuestUnderstood 
@11
DO ~AddJournalEntry(@60002,QUEST)~
EXIT 

CHAIN IF ~Global("X3IQuestProgress","GLOBAL",1)~ THEN X3IsaacJ QuestProgress1
@16
DO ~SetGlobal("X3IQuestProgress","GLOBAL",2)~
END 
IF ~Global("X3YusminSawIsaac","GLOBAL",1)Global("X3AvarnSawIsaac","GLOBAL",1)~ EXTERN X3IsaacJ IsaacAware
IF ~!Global("X3IQuestTask1Pass","GLOBAL",1)OR(2)!Global("X3YusminSawIsaac","GLOBAL",1)!Global("X3AvarnSawIsaac","GLOBAL",1)~ EXTERN X3IsaacJ NothingLearned 
IF ~Global("X3IQuestTask1Pass","GLOBAL",1)~ EXTERN X3IsaacJ Learned

CHAIN X3IsaacJ Learned 
@26
END 
++ @35 + SomethingLearned
 
CHAIN X3IsaacJ SomethingLearned 
@30
= @31
DO ~SetGlobal("X3IsaacAppChange","GLOBAL",8)~
END 
++ @32 EXIT 
++ @33 + KnowMore 

CHAIN X3IsaacJ KnowMore 
@34
DO ~SetGlobal("X3IsaacAppChange","GLOBAL",7)~
EXIT 
  

CHAIN X3IsaacJ NothingLearned 
@26
END 
++ @27 + NothingLearnedSadly

CHAIN X3IsaacJ NothingLearnedSadly 
@29 
EXIT 


CHAIN X3IsaacJ IsaacAware 
@17
END 
++ @18 + IApologize
++ @19 + TheyAreDead
++ @20 + DoNotQuestion
++ @21 + Forgot

CHAIN X3IsaacJ FindIfLucky
@22 
EXIT 

CHAIN X3IsaacJ Forgot 
@23 
DO ~SetGlobal("X3IsaacAppChange","GLOBAL",3)~
EXTERN X3IsaacJ FindIfLucky

CHAIN X3IsaacJ DoNotQuestion
@24
DO ~SetGlobal("X3IsaacAppChange","GLOBAL",2)~
EXTERN X3IsaacJ FindIfLucky

CHAIN X3IsaacJ TheyAreDead 
@25
DO ~SetGlobal("X3IsaacAppChange","GLOBAL",4)~
EXTERN X3IsaacJ FindIfLucky

CHAIN X3IsaacJ IApologize
@26 
DO ~SetGlobal("X3IsaacAppChange","GLOBAL",5)~
EXTERN X3IsaacJ FindIfLucky

//Planar Hunters died 

CHAIN IF ~Global("X3HuntSpawn","GLOBAL",2)~ THEN X3IsaacJ PlanarHuntersDiedBranch
@81
END 
IF ~IsValidForPartyDialogue("X3mily")Dead("X3Rodwyn")~ EXTERN X3milyJ PHDiedEmily1
IF ~IsValidForPartyDialogue("X3mily")!Dead("X3Rodwyn")~ EXTERN X3milyJ PHDiedEmily2
IF ~!IsValidForPartyDialogue("X3mily")~ EXTERN X3IsaacJ PHDiedNoEmily

//Resume app work here.

CHAIN X3IsaacJ PHDiedNoEmily
@82
END 
++ @83 + PHDiedAttack
++ @84 + PHDiedEvil
++ @85 + PHDiedAttack
++ @86 + PHDiedLying
++ @87 + PHDiedMurdered 
++ @88 + PHDiedGem

CHAIN X3IsaacJ PHDiedGem 
@89
= @90
END 
++ @83 + PHDiedAttack
++ @84 + PHDiedEvil
++ @85 + PHDiedAttack
++ @86 + PHDiedLying
++ @87 + PHDiedMurdered 

CHAIN X3IsaacJ PHDiedLying
@91 
END 
++ @83 + PHDiedAttack
++ @84 + PHDiedEvil
++ @85 + PHDiedAttack
++ @92 + PHDiedLyingLeave
++ @87 + PHDiedMurdered 

CHAIN X3IsaacJ PHDiedLyingLeave 
@93
DO ~LeaveParty()EscapeArea()~
EXIT 

CHAIN X3IsaacJ PHDiedMurdered 
@94
= @95
DO ~LeaveParty()Enemy()~
EXIT 

CHAIN X3IsaacJ PHDiedEvil 
@96
EXTERN X3IsaacJ PHDiedAttack 

CHAIN X3IsaacJ PHDiedAttack 
@114
END 
IF ~OR(2)!Global("X3IQuestTask1Pass","GLOBAL",1)!Global("X3IQuestTask2Pass","GLOBAL",1)~ EXTERN X3IsaacJ PHDiedIsaacAttacks
IF ~Global("X3IQuestTask1Pass","GLOBAL",1)Global("X3IQuestTask2Pass","GLOBAL",1)~ EXTERN X3IsaacJ PHDiedIsaacHopeless

CHAIN X3IsaacJ PHDiedIsaacAttacks 
@97
DO ~LeaveParty()Enemy()~
EXIT 

CHAIN X3IsaacJ PHDiedIsaacHopeless 
@112
= @113
DO ~~ // This is the only path that allows you to continue the path without losing Isaac.
EXIT 

CHAIN X3milyJ PHDiedEmily1
@98
EXTERN X3IsaacJ PHDiedEmily

CHAIN X3milyJ PHDiedEmily2
@99
EXTERN X3IsaacJ PHDiedEmily

CHAIN X3IsaacJ PHDiedEmily
@100
== X3milyJ @101
== X3IsaacJ @102
== X3milyJ @103
== X3IsaacJ @104
== X3milyJ @105
== X3IsaacJ @106
== X3milyJ @107
== X3IsaacJ @108
== X3milyJ @109
== X3IsaacJ @110
== X3milyJ @111
DO ~~ EXIT 

CHAIN IF ~Global("X3EmiRodwynIsaacDuel","GLOBAL",1)Dead("X3mily")Dead("X3Rodwyn")~ THEN X3IsaacJ WonRodwynDuel
@115
= @116
DO ~SetGlobal("X3EmiRodwynIsaacDuel","GLOBAL",3)~
EXIT 

CHAIN IF ~Global("X3IsaacAdalBetrayal","GLOBAL",1)~ THEN X3IsaacJ OneLinerAdal
@117
DO ~SetGlobal("X3IsaacAdalBetrayal","GLOBAL",2)LeaveParty()Enemy()Attack(Player1)~
= @118
EXIT 

CHAIN IF ~Global("X3ItemCheck","LOCALS",1)~ THEN X3IsaacJ Adalie
@119
DO ~SetGlobal("X3ItemCheck","LOCALS",2)~
END 
+~PartyHasItem("X3EJorn")PartyHasItem("X3EBlood")~+ @120 + Adalie2
+~OR(2)!PartyHasItem("X3EJorn")!PartyHasItem("X3EBlood")~+ @126 + AdaNotYet

CHAIN X3IsaacJ Adalie2
@121
DO ~SetGlobal("X3ItemCheck","LOCALS",3)AddJournalEntry(@60014,QUEST)~
== X3IsaacJ IF ~!Global("X3IGaveBlood","LOCALS",1)~ THEN @122
== X3IsaacJ IF ~Global("X3IGaveBlood","LOCALS",1)~ THEN @128
END 
IF ~IsValidForPartyDialogue("X3mily")Dead("X3dal")~ EXTERN X3milyJ Adalie3
IF ~!IsValidForPartyDialogue("X3mily")InPartyAllowDead("X3mily")Dead("X3dal")~ DO ~SetGlobal("X3IQuest","GLOBAL",7)~ EXIT 
IF ~OR(2)!InPartyAllowDead("X3mily")!Dead("X3dal")~ DO ~SetGlobal("X3IQuest","GLOBAL",7)TakePartyItem("X3EJORN")DestroyItem("X3EJORN")~ EXIT 

CHAIN X3milyJ Adalie3 
@123
== X3IsaacJ @124
DO ~SetGlobal("X3IQuest","GLOBAL",7)~
== X3milyJ @125
EXIT 

CHAIN X3IsaacJ AdaNotYet 
@127
EXIT

CHAIN IF ~Global("X3IFinalBattle","GLOBAL",3)~ THEN X3IsaacJ QuestComplete 
@129
DO ~SetGlobal("X3IFinalBattle","GLOBAL",4)~
= @130
END 
++ @131 + QuestComplete1 
++ @132 + QuestComplete2 
++ @133 + QuestComplete3
++ @140 + QuestComplete4 

CHAIN X3IsaacJ QuestComplete1 
@134
= @135
= @136
DO ~AddexperienceParty(12000)~
EXIT 

CHAIN X3IsaacJ QuestComplete2 
@137
EXTERN X3IsaacJ QuestComplete5

CHAIN X3IsaacJ QuestComplete3 
@140
EXTERN X3IsaacJ QuestComplete5 

CHAIN X3IsaacJ QuestComplete4 
@141 
EXTERN X3IsaacJ QuestComplete1

CHAIN X3IsaacJ QuestComplete5
@139
EXTERN X3IsaacJ QuestComplete1 

CHAIN IF ~Global("X3EmiRodwynIsaacDuel","GLOBAL",2)
Dead("X3mily")~ THEN X3IsaacJ IsaacSurvivedDuel
@142
= @143
DO ~SetGlobal("X3EmiRodwynIsaacDuel","GLOBAL",3)~ 
EXIT 

/* Friendship Conversations */

// Talk 1

CHAIN IF ~Global("X3IsaacTalk","GLOBAL",2)~ THEN X3IsaacJ Conversation1
@144
DO ~IncrementGlobal("X3IsaacTalk","GLOBAL",1)SetGlobal("X3IsaacAppChange","GLOBAL",6)RealSetGlobalTimer("X3IsaacTimer","GLOBAL",3200)~
END 
+~!InParty("C0Sirene")~+ @145 + C1.1-FoughtA
+~InParty("C0Sirene")~+ @145 + C1.1-FoughtB
++ @146 + C1.1-NotEveryone
++ @147 + C1.2

CHAIN X3IsaacJ C1.1-FoughtA
@148
DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~
EXTERN X3IsaacJ C1.2

CHAIN X3IsaacJ C1.1-FoughtB
@149
DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~
= @152
END 
++ @158 + C1.1-People
++ @159 + C1.1-Green
++ @160 + C1.1-Problem
++ @161 + C1.1-MyBusiness

CHAIN X3IsaacJ C1.1-NotEveryone 
@150
DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~
EXTERN X3IsaacJ C1.2

CHAIN X3IsaacJ C1.1-MyBusiness 
@162
DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-3)~
EXTERN X3IsaacJ C1.1-Conclude 

CHAIN X3IsaacJ C1.2 
@151
END 
++ @153 + C1.2-NeedHelp
++ @154 + C1.2-SeeValue
++ @155 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + C1.2-NeedHelp

CHAIN X3IsaacJ C1.2-NeedHelp 
@156
EXTERN X3IsaacJ C1.2-Conclude 

CHAIN X3IsaacJ C1.2-SeeValue
@157
EXTERN X3IsaacJ C1.2-Conclude 

CHAIN X3IsaacJ C1.1-Green 
@163
= @164
EXTERN X3IsaacJ C1.1-Conclude 

CHAIN X3IsaacJ C1.1-Problem 
@165
EXTERN X3IsaacJ C1.1-Conclude 

CHAIN X3IsaacJ C1.1-People 
@166
DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-4)~
EXTERN X3IsaacJ C1.1-Conclude 

CHAIN X3IsaacJ C1.2-Conclude
@167
EXIT 

CHAIN X3IsaacJ C1.1-Conclude
@185
EXIT 

//Talk 2

CHAIN IF ~Global("X3IsaacTalk","GLOBAL",4)~ THEN X3IsaacJ Talk2
@186
DO ~IncrementGlobal("X3IsaacTalk","GLOBAL",1)SetGlobal("X3IsaacAppChange","GLOBAL",6)RealSetGlobalTimer("X3IsaacTimer","GLOBAL",3200)~
END 
++ @187 + T2.1A
++ @188 + T2.1B
++ @189 + T2.Exit

CHAIN X3IsaacJ T2.Exit 
@190
EXIT 

CHAIN X3IsaacJ T2.1A
@191 
EXTERN X3IsaacJ T2.2

CHAIN X3IsaacJ T2.1B
@192
EXTERN X3IsaacJ T2.2

CHAIN X3IsaacJ T2.2
@193
END 
++ @194 + T2.3A
++ @195 + T2.3B
++ @196 + T2.3B

CHAIN X3IsaacJ T2.3A 
@197
EXTERN X3IsaacJ T2.4

CHAIN X3IsaacJ T2.3B 
@198
EXTERN X3IsaacJ T2.4

CHAIN X3IsaacJ T2.4 
@198
= @199
== %DORN_JOINED% IF ~IsValidForPartyDialogue("DORN")~ THEN @200
== X3IsaacJ IF ~IsValidForPartyDialogue("DORN")~ THEN @201
== X3IsaacJ @202
END 
++ @203 + T2.5
++ @204 + T2.6
++ @205 + T2.6
++ @206 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-1)~ + T2.Exit 

CHAIN X3IsaacJ T2.5 
@207
EXTERN X3IsaacJ T2.6

CHAIN X3IsaacJ T2.6
@208
= @209
END 
++ @210 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T2.7
++ @211 + T2.8
++ @212 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-1)~ + T2.8

CHAIN X3IsaacJ T2.7
@213 
EXTERN X3IsaacJ T2.8

CHAIN X3IsaacJ T2.8
@214
= @215
END 
++ @216 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",2)~ + T2.9A
++ @217 + T2.9B
++ @218 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-1)~ + T2.9B

CHAIN X3IsaacJ T2.9B 
@219
EXIT 

CHAIN X3IsaacJ T2.9A 
@220
EXIT 

// Talk 3 

CHAIN IF ~Global("X3IsaacTalk","GLOBAL",6)~ THEN X3IsaacJ Talk3
@221
DO ~IncrementGlobal("X3IsaacTalk","GLOBAL",1)SetGlobal("X3IsaacAppChange","GLOBAL",6)RealSetGlobalTimer("X3IsaacTimer","GLOBAL",3200)~
END 
++ @222 + T3.1
+~!Dead("X3Caim")~+ @223 + T3.CaimAlive
+~Dead("X3Caim")~+ @223 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T3.CaimDead
++ @224 + T3.1
++ @225 + T3.1

CHAIN X3IsaacJ T3.CaimAlive 
@700
EXTERN X3IsaacJ T3.1 

CHAIN X3ISaacJ T3.CaimDead 
@701
EXTERN X3ISaacJ T3.1 

CHAIN X3IsaacJ T3.1 
@226
= @227
END 
++ @228 + T3.2A
++ @229 + T3.2B
++ @230 + T3.2C 

CHAIN X3IsaacJ T3.2C
@231 
EXTERN X3IsaacJ T3.3

CHAIN X3IsaacJ T3.2B
@233 
EXTERN X3IsaacJ T3.3

CHAIN X3ISaacJ T3.2A 
@234
= @235
EXTERN X3ISaacJ T3.3 

CHAIN X3IsaacJ T3.3 
@232 
END 
++ @236 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T3.4A
++ @237 + T3.5
++ @238 + T3.4B

CHAIN X3IsaacJ T3.4A
@239
EXTERN X3IsaacJ T3.5

CHAIN X3IsaacJ T3.4B 
@240
EXTERN X3IsaacJ T3.5

CHAIN X3IsaacJ T3.5
@241
END 
++ @242 + T3.6B
++ @243 + T3.6A
++ @244 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-1)~ + T3.6C

CHAIN X3IsaacJ T3.6A
@248
EXIT 

CHAIN X3IsaacJ T3.6B
@246
= @247
EXIT 

CHAIN X3IsaacJ T3.6C
@245
EXIT

// Talk 4
CHAIN IF ~Global("X3IsaacTalk","GLOBAL",8)~ THEN X3IsaacJ T4  
@249
DO ~IncrementGlobal("X3IsaacTalk","GLOBAL",1)SetGlobal("X3IsaacAppChange","GLOBAL",6)RealSetGlobalTimer("X3IsaacTimer","GLOBAL",3200)~
END 
++ @250 + T4.1
++ @251 + T4.1
++ @252 + T4.1

CHAIN X3IsaacJ T4.1
@253
= @254
END 
++ @255 + T4.2
++ @256 + T4.2
++ @257 + T4.2

CHAIN X3IsaacJ T4.2
@258
= @259
= @260
END 
++ @261 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-1)~ + T4.3
++ @262 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T4.3
++ @263 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T4.3

CHAIN X3IsaacJ T4.3 
@264
= @265
= @266
END 
++ @267 + T4.4A
++ @268 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T4.4B
++ @269 + T4.4C

CHAIN X3IsaacJ T4.4A 
@270
EXTERN X3IsaacJ T4.5

CHAIN X3IsaacJ T4.4B 
@271
EXTERN X3ISaacJ T4.5

CHAIN X3IsaacJ T4.4C 
@272
EXTERN X3IsaacJ T4.5

CHAIN X3IsaacJ T4.5
@273
EXIT 

// Talk 5 -> Post Rest
CHAIN IF ~Global("X3IsaacTalk","GLOBAL",10)~  THEN X3IsaacJ Talk5 
@274
DO ~IncrementGlobal("X3IsaacTalk","GLOBAL",1)SetGlobal("X3IsaacAppChange","GLOBAL",6)RealSetGlobalTimer("X3IsaacTimer","GLOBAL",3200)~
END 
++ @275 + T5.1A
++ @276 + T5.1B
++ @277 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-1)~ + T5.1C
++ @278 + Talk5.Exit 

CHAIN X3ISaacJ Talk5.Exit
@279
EXIT 

CHAIN X3IsaacJ T5.1A
@280
END 
++ @283 + T5.3
++ @284 + T5.2
++ @285 + T5.3

CHAIN X3IsaacJ T5.1B
@281
END 
++ @283 + T5.3
++ @284 + T5.2
++ @285 + T5.3


CHAIN X3IsaacJ T5.1C
@282
END 
++ @283 + T5.3
++ @284 + T5.2
++ @285 + T5.3

CHAIN X3IsaacJ T5.2
@286
EXTERN X3IsaacJ T5.3

CHAIN X3IsaacJ T5.3
@287
= @288
= @289
= @290
= @291
END 
++ @292 + T5.4A
++ @293 + T5.4B
++ @294 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T5.4C

CHAIN X3IsaacJ T5.4A
@295
EXTERN X3IsaacJ T5.5

CHAIN X3IsaacJ T5.4B
@296
EXIT 

CHAIN X3IsaacJ T5.4C 
@297
EXTERN X3IsaacJ T5.5

CHAIN X3IsaacJ T5.5
@298
EXIT 

// Talk 6

CHAIN IF ~Global("X3IsaacTalk","GLOBAL",12)~ THEN X3IsaacJ Talk6
@299 
DO ~IncrementGlobal("X3IsaacTalk","GLOBAL",1)SetGlobal("X3IsaacAppChange","GLOBAL",6)RealSetGlobalTimer("X3IsaacTimer","GLOBAL",3200)~
END 
++ @300 + T6.1
++ @301 + T6.1
++ @302 + T6.1

CHAIN X3IsaacJ T6.1
@303
= @304
END 
++ @305 + T6.2A
++ @306 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T6.2B
++ @307 + T6.3

CHAIN X3IsaacJ T6.2A
@308
= @309
EXTERN X3IsaacJ T6.Branch

CHAIN X3IsaacJ T6.2B
@311
EXTERN X3IsaacJ T6.Branch 

CHAIN X3IsaacJ T6.Branch
@318
END 
++ @319 + T6.8A
++ @320 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",2)~ + T6.8B
+~Class(Player1,MAGE_ALL)~+ @321 + T6.8C
++ @322 + T6.8D
++ @323 + T6.8E

CHAIN X3IsaacJ T6.3
@310
END 
++ @312 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-1)~ + T6.4A
++ @313 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T6.4B
++ @314 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T6.2B

CHAIN X3ISaacJ T6.4A
@315
EXTERN X3IsaacJ T6.7

CHAIN X3IsaacJ T6.4B
@316
EXTERN X3IsaacJ T6.7

CHAIN X3IsaacJ T6.7
@317
EXIT 

CHAIN X3IsaacJ T6.8A 
@329
EXIT 

CHAIN X3IsaacJ T6.8B
@326
EXIT 

CHAIN X3IsaacJ T6.8C
@327
EXIT 

CHAIN X3IsaacJ T6.8D
@325
EXTERN X3IsaacJ T6.9

CHAIN X3IsaacJ T6.8E 
@324
EXTERN X3ISaacJ T6.9

CHAIN X3IsaacJ T6.9
@329
EXIT 

// Talk 7

CHAIN IF ~Global("X3IsaacTalk","GLOBAL",14)~ THEN X3IsaacJ Talk7
@330
DO ~IncrementGlobal("X3IsaacTalk","GLOBAL",1)SetGlobal("X3IsaacAppChange","GLOBAL",6)RealSetGlobalTimer("X3IsaacTimer","GLOBAL",3200)~
END 
++ @331 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-1)~ + T7.1A
++ @332 + T7.1B
+~OR(2)Class(Player1,PALADIN_ALL)Class(Player1,CLERIC_ALL)~+ @333 + T7.1C
++ @334 + T7.1D
++ @335 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-2)~ + Talk7.Exit 

CHAIN X3IsaacJ T7.1A
@358
EXTERN X3ISaacJ T7.2

CHAIN X3IsaacJ T7.1B
@336
EXTERN X3ISaacJ T7.2

CHAIN X3IsaacJ T7.1C
@337
EXTERN X3ISaacJ T7.2

CHAIN X3IsaacJ T7.1D
@338
EXTERN X3ISaacJ T7.2

CHAIN X3IsaacJ T7.2
@339
= @340
= @341
END 
++ @342 + T7.4
++ @343 + T7.3A
++ @344 + T7.3B

CHAIN X3IsaacJ T7.3A
@355
EXTERN X3IsaacJ T7.4

CHAIN X3IsaacJ T7.3B
@356
EXTERN X3IsaacJ T7.4

CHAIN X3IsaacJ T7.4
@345
= @346
= @347
END 
++ @348 + T7.5A
++ @349 + T7.5B
++ @350 + T7.5C 

CHAIN X3IsaacJ T7.5A 
@353
= @354
EXIT 

CHAIN X3IsaacJ T7.5B 
@352
EXIT 

CHAIN X3ISaacJ T7.5C
@351
EXIT 


CHAIN X3IsaacJ Talk7.Exit 
@357
EXIT 

//Talk 8 - Prerest Talk
CHAIN IF ~Global("X3IsaacTalk","GLOBAL",16)~ THEN X3IsaacJ Talk8
@359 
DO ~IncrementGlobal("X3IsaacTalk","GLOBAL",1)SetGlobal("X3IsaacAppChange","GLOBAL",6)RealSetGlobalTimer("X3IsaacTimer","GLOBAL",3200)~
= @360
END 
++ @361 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T8.1
++ @362 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T8.1
++ @363 + Talk8.Exit 

CHAIN X3IsaacJ Talk8.Exit 
@364
DO ~RestParty()~
EXIT 

CHAIN X3IsaacJ T8.1
@365
END 
++ @366 + T8.2
++ @367 + T8.2
++ @368 + T8.2

CHAIN X3IsaacJ T8.2
@369
= @370
= @371
END 
++ @372 + T8.3A
++ @373 + T8.3A
++ @374 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T8.3B

CHAIN X3IsaacJ T8.3A
@375
EXTERN X3IsaacJ T8.4

CHAIN X3IsaacJ T8.3B
@376
EXTERN X3IsaacJ T8.4

CHAIN X3IsaacJ T8.4
@377
= @378
END 
++ @379 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T8.5
++ @380 DO ~RestParty()~ EXIT 

CHAIN X3IsaacJ T8.5
@381
EXIT 

// Talk 9 - PostRest -> GlobalGT("DREAM","GLOBAL",2)

CHAIN IF ~Global("X3IsaacTalk","GLOBAL",18)~ THEN X3IsaacJ Talk9
@382
DO ~IncrementGlobal("X3IsaacTalk","GLOBAL",1)SetGlobal("X3IsaacAppChange","GLOBAL",6)RealSetGlobalTimer("X3IsaacTimer","GLOBAL",3200)~
END 
++ @383 + T9.1A
++ @384 + T9.1B
++ @385 + T9.1C
++ @386 + Talk9.Exit 

CHAIN X3ISaacJ Talk9.Exit 
@387 
EXIT 

CHAIN X3IsaacJ T9.1A 
@388
EXTERN X3IsaacJ T9.2

CHAIN X3IsaacJ T9.1B
@390
EXTERN X3IsaacJ T9.2

CHAIN X3IsaacJ T9.1C 
@389
EXTERN X3IsaacJ T9.2

CHAIN X3IsaacJ T9.2
@391
END 
++ @392 + T9.3A 
++ @393 + T9.3B
++ @394 + Talk9.Exit2 

CHAIN X3IsaacJ T9.3A 
@395
EXTERN X3IsaacJ T9.5

CHAIN X3IsaacJ T9.3B
@396
END 
++ @397 + T9.4
++ @398 + T9.4
++ @399 + Talk9.Exit2

CHAIN X3IsaacJ T9.4
@401
= @402
EXTERN X3IsaacJ T9.5

CHAIN X3ISaacJ Talk9.Exit2 
@400
EXIT 

CHAIN X3IsaacJ T9.5
@403
= @404
END 
++ @405 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T9.6A
++ @406 + T9.6B
++ @407 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-1)~ + T9.6C

CHAIN X3IsaacJ T9.6A 
@410
EXIT 

CHAIN X3IsaacJ T9.6B 
@408
EXIT 

CHAIN X3ISaacJ T9.6C 
@409
EXIT 

// Talk 10
CHAIN IF ~Global("X3IsaacTalk","GLOBAL",20)~ THEN X3IsaacJ Talk10
@411
DO ~IncrementGlobal("X3IsaacTalk","GLOBAL",1)SetGlobal("X3IsaacAppChange","GLOBAL",6)RealSetGlobalTimer("X3IsaacTimer","GLOBAL",3200)~
END 
IF ~GlobalGT("X3IsaApp","GLOBAL",44)~ EXTERN X3IsaacJ Talk10-HighApp
IF ~!GlobalGT("X3IsaApp","GLOBAL",44)~ EXTERN X3IsaacJ Talk10-LowApp

CHAIN X3IsaacJ Talk10-HighApp 
@412
END 
+~Gender(Player1,FEMALE)~+ @425 + T10.1F
+~!Gender(Player1,FEMALE)~+ @425 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~  + T10.1M
++ @414 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T10.2
++ @415 + T10.1A
++ @416 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-1)~ + T10.1B

CHAIN X3IsaacJ Talk10-LowApp 
@413
END 
++ @414 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T10.2
++ @415 + T10.1A
++ @416 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-1)~ + T10.1B

CHAIN X3IsaacJ T10.1A
@419
EXTERN X3IsaacJ T10.2

CHAIN X3IsaacJ T10.1B
@418
EXTERN X3IsaacJ T10.2

CHAIN X3IsaacJ T10.1M
@426
EXTERN X3IsaacJ T10.2

CHAIN X3IsaacJ T10.1F
@427
EXTERN X3IsaacJ T10.2

CHAIN X3IsaacJ T10.2
@417
END 
++ @420 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",-1)~ + T10.3A
++ @421 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T10.3B
++ @422 DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",1)~ + T10.3B

CHAIN X3IsaacJ T10.3A
@424
EXIT 

CHAIN X3IsaacJ T10.3B 
@423
EXIT 

/*

---Interjects----

*/

I_C_T AOLN 2 X3IsaacAOLN
== X3IsaacJ IF ~InParty("X3Isaac") InMyArea("X3Isaac") !StateCheck("X3Isaac",CD_STATE_NOTVALID)~ THEN @680 // ~Wolves are good hunters, but I assure you, <CHARNAME> knows how to defy them.~
== AOLN @681 // ~I'll take your word for it, but I'd still keep your weapons at your ready. Still yet worse than wolves may make dinner of you all.~
END 

I_C_T NESSIE 1 X3IsaacNessie 
== X3IsaacJ IF ~InParty("X3Isaac") InMyArea("X3Isaac") !StateCheck("X3Isaac",CD_STATE_NOTVALID)~ THEN @682
END 

I_C_T OOGIEW 6 X3IsaacOOEGIEW6
== X3IsaacJ IF ~InParty("X3Isaac") InMyArea("X3Isaac") !StateCheck("X3Isaac",CD_STATE_NOTVALID)~ THEN @683
== X3milyJ IF ~IsValidForPartyDialogue("X3mily")~ THEN @684
== X3IsaacJ IF ~IsValidForPartyDialogue("X3mily")~ THEN @685
END 

I_C_T OOGIEW 8 X3IsaacOOEGIEW8
== X3IsaacJ IF ~InParty("X3Isaac") InMyArea("X3Isaac") !StateCheck("X3Isaac",CD_STATE_NOTVALID)~ THEN @683
== X3milyJ IF ~IsValidForPartyDialogue("X3mily")~ THEN @684
== X3IsaacJ IF ~IsValidForPartyDialogue("X3mily")~ THEN @685
END 

I_C_T DUNKIN 0 X3IsaacDUNKIN0
== X3IsaacJ IF ~InParty("X3Isaac") InMyArea("X3Isaac") !StateCheck("X3Isaac",CD_STATE_NOTVALID)~ THEN @687
== X3milyJ IF ~IsValidForPartyDialogue("X3mily")~ THEN @688
== X3IsaacJ IF ~IsValidForPartyDialogue("X3mily")~ THEN @689
END 

I_C_T HOUSG2 0 X3IsaacHOUSEG1 
== X3IsaacJ IF ~InParty("X3Isaac") InMyArea("X3Isaac") !StateCheck("X3Isaac",CD_STATE_NOTVALID)~ THEN @690
END 

I_C_T MTBE9 0 X3IsaacMTBE90
== X3IsaacJ IF ~InParty("X3Isaac") InMyArea("X3Isaac") !StateCheck("X3Isaac",CD_STATE_NOTVALID)~ THEN @691
END 

I_C_T FLAM5 1 X3IsaacFlam51
== X3IsaacJ IF ~InParty("X3Isaac") InMyArea("X3Isaac") !StateCheck("X3Isaac",CD_STATE_NOTVALID)~ THEN @692
DO ~SetGlobal("X3IsaacAppChange","GLOBAL",3)SetGlobal("X3HelgaAppChange","GLOBAL",4)~ 
== FLAM5 @693
END 

I_C_T FLAM5 8 X3IsaacFlam51
== X3IsaacJ IF ~InParty("X3Isaac") InMyArea("X3Isaac") !StateCheck("X3Isaac",CD_STATE_NOTVALID)~ THEN @694
DO ~SetGlobal("X3IsaacAppChange","GLOBAL",7)~ 
== FLAM5 @695
END 

I_C_T FLAM5 12 X3IsaacFlam51
== X3IsaacJ IF ~InParty("X3Isaac") InMyArea("X3Isaac") !StateCheck("X3Isaac",CD_STATE_NOTVALID)~ THEN @694
DO ~SetGlobal("X3IsaacAppChange","GLOBAL",7)~ 
== FLAM5 @695
END 

I_C_T FLAM5 14 X3IsaacFlam51
== X3IsaacJ IF ~InParty("X3Isaac") InMyArea("X3Isaac") !StateCheck("X3Isaac",CD_STATE_NOTVALID)~ THEN @694
DO ~SetGlobal("X3IsaacAppChange","GLOBAL",7)~ 
== FLAM5 @695
END 

I_C_T PERMID 1 X3IsaacPermid 
== X3IsaacJ IF ~InParty("X3Isaac") InMyArea("X3Isaac") !StateCheck("X3Isaac",CD_STATE_NOTVALID)~ THEN @696
== PERMID @697
END

I_C_T BASSIL 3 X3IsaacBASSIL 
== X3IsaacJ IF ~InParty("X3Isaac") InMyArea("X3Isaac") !StateCheck("X3Isaac",CD_STATE_NOTVALID)~ THEN @698
END 

I_C_T BASSIL 4 X3IsaacBASSIL 
== X3IsaacJ IF ~InParty("X3Isaac") InMyArea("X3Isaac") !StateCheck("X3Isaac",CD_STATE_NOTVALID)~ THEN @698
END 

I_C_T NEVILL 0 X3IsaacNevill
== X3IsaacJ IF ~InParty("X3Isaac") InMyArea("X3Isaac") !StateCheck("X3Isaac",CD_STATE_NOTVALID)~ THEN @699
END 

I_C_T FORESH 1 X3IsaacFORESH 
== X3IsaacJ IF ~InParty("X3Isaac") InMyArea("X3Isaac") !StateCheck("X3Isaac",CD_STATE_NOTVALID)~ THEN @703
== FORESH @704
END 

 //Brage 
I_C_T Brage 2 X3IsaacBrage2
== X3IsaacJ IF ~InParty("X3Isaac") InMyArea("X3Isaac") !StateCheck("X3Isaac",CD_STATE_NOTVALID)~ THEN @702
END 
ADD_TRANS_ACTION Brage BEGIN 5 END BEGIN END ~SetGlobal("X3IsaacAppChange","GLOBAL",8)~
ADD_TRANS_ACTION Brage BEGIN 4 END BEGIN END ~SetGlobal("X3IsaacAppChange","GLOBAL",4)~ 
 
APPEND X3IsaacJ
// GENDER CHANGE, Make sure this is below talks. 
IF ~Global("X3IsaacSexChange","GLOBAL",1)~ IGender
SAY @14
= @15
IF ~~ DO ~SetGlobal("X3IsaacSexChange","GLOBAL",2)~ EXIT
END

// -40 Approval 

IF ~Global("X3Break","LOCALS",1)~ Break
SAY @168
= @169
++ @170 + Break.1 
++ @171 + Break.2 
++ @172 + Break.1
END 

IF ~~ Break.1
SAY @174
IF ~~ + Break.3 
END 

IF ~~ Break.2 
SAY @173
IF ~~ + Break.3 
END 

IF ~~ Break.3 
SAY @175
++ @177 + Break.5
++ @176 + Break.4
++ @178 + Break.6 
END 

IF ~~ Break.5 
SAY @79
IF ~~ DO ~GivePartyAllEquipment()LeaveParty()EscapeArea()SetGlobal("X3Break","LOCALS",4)~
EXIT 
END 

IF ~~ Break.4 
SAY @78
IF ~~ DO ~LeaveParty()SetGlobal("X3Break","LOCALS",4)Enemy()Attack(Player1)~
EXIT 
END 

IF ~~ Break.6
SAY @179
IF ~~ DO ~SetGlobal("X3Break","LOCALS",2)IncrementGlobal("X3IsaacApp","GLOBAL",15)DisplayStringNoNameDlg(Player1,@600619)~
EXIT 
END 

IF ~Global("X3Break","LOCALS",3)~ FinalBreak 
SAY @180
= @181
++ @182 + Break.5
++ @184 + Break.4
++ @183 + Break.5 
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
+~Gender(Player1,FEMALE)~+ @432 + IsaacP.Interact
++ @433 + FixString
++ @434 EXIT 
END 



IF ~~ IsaacP.Talk 
SAY @439
//  Chapter Advice 
+~Global("CHAPTER","GLOBAL",1)~+ @435 + Isaac.PC1Advice 
+~Global("CHAPTER","GLOBAL",2)~+ @435 + Isaac.PC2Advice 
+~Global("CHAPTER","GLOBAL",3)~+ @435 + Isaac.PC3Advice 
+~Global("CHAPTER","GLOBAL",4)~+ @435 + Isaac.PC4Advice 
+~Global("CHAPTER","GLOBAL",5)~+ @435 + Isaac.PC5Advice 
+~Global("CHAPTER","GLOBAL",6)~+ @435 + Isaac.PC6Advice 
+~Global("CHAPTER","GLOBAL",7)~+ @435 + Isaac.PC7Advice 
// Party Opinion 
+~NumInPartyAliveGT(2)~+ @436 + Isaac.PCompanionThoughts 
+~GlobalGT("X3IsaacApp","GLOBAL",44)~+ @437 + Em.Me1 
+~GlobalGT("X3IsaacApp","GLOBAL",-15)GlobalLT("X3IsaacApp","GLOBAL",15)~+ @437 + Em.Me2 
+~GlobalLT("X3IsaacApp","GLOBAL",-14)~+ @437  + Em.Me3 
// Additional Conversations 
+~Global("X3IsaacNeverwinter","LOCALS",0)GlobalGT("X3IsaacTalk","GLOBAL",8)~+ @440 DO ~SetGlobal("X3IsaacNeverwinter","LOCALS",1)~ + IsaacP.Neverwinter
+~Global("X3IsaacPlanarHunters","LOCALS",0)~+ @461 DO ~SetGlobal("X3IsaacPlanarHunters","LOCALS",1)~ + IsaacP.PlanarHunters
+~Global("X3IsaacMavis","LOCALS",0)GlobalGT("X3IsaacTalk","GLOBAL",4)~+ @479 DO ~SetGlobal("X3IsaacMavis","LOCALS",1)~ + IsaacP.Mavis
+~Global("X3IsaacSkills","LOCALS",0)~+ @636 DO ~SetGlobal("X3IsaacSkills","LOCALS",1)~ + IsaacP.Skills
+~Global("X3IsaacHome","LOCALS",0)GlobalGT("X3IsaacTalk","GLOBAL",14)~+ @637 DO ~SetGlobal("X3IsaacHome","LOCALS",1)~ + IsaacP.Home
+~Global("X3IsaacCaim","LOCALS",0)Dead("X3Caim")~+ @638 DO ~SetGlobal("X3IsaacCaim","LOCALS",1)~ + IsaacP.Caim
+~Global("X3IsaacLooks","LOCALS",0)GlobalGT("X3IsaacTalk","GLOBAL",12)~+ @639 DO ~SetGlobal("X3IsaacLooks","LOCALS",1)~ + IsaacP.Handsome
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
+~InParty("Ajantis")~+ @489 + Em.Ajantis
+~InParty("Alora")~+ @490 + Em.Alora
+~InParty("Branwen")~+ @491 + Em.Branwen
+~InParty("Coran")~+ @492 + Em.Coran 
+~InParty("Dynaheir")~+ @493 + Em.Dynaheir
+~InParty("Edwin")~+ @494 + Em.Edwin
+~InParty("Eldoth")~+ @495 + Em.Eldoth 
+~InParty("Faldorn")~+ @496 + Em.Faldorn 
+~InParty("Garrick")~+ @497 + Em.Garrick 
+~InParty("Imoen")~+ @498 + Em.Imoen 
+~InParty("Jaheira")~+ @499 + Em.Jaheira 
+~InParty("Kagain")~+ @500 + Em.Kagain
+~InParty("Khalid")~+ @501 + Em.Khalid 
+~InParty("Kivan")~+ @502 + Em.Kivan 
+~InParty("Minsc")~+ @503 + Em.Minsc 
+~InParty("Montaron")~+ @504 + Em.Montaron 
+~InParty("Quayle")~+ @505 + Em.Quayle 
+~InParty("Safana")~+ @506 + Em.Safana 
+~InParty("Sharteel")~+ @507 + Em.Sharteel
+~InParty("Skie")~+ @508 + Em.Skie 
+~InParty("Tiax")~+ @509 + Em.Tiax 
+~InParty("Viconia")~+ @510 + Em.Viconia 
+~InParty("Xan")~+ @511 + Em.Xan 
+~InParty("Xzar")~+ @512 + Em.Xzar 
+~InParty("Yeslick")~+ @513 + Em.Yeslick     
// EE 
+~InParty("Neera")~+ @514 + Em.Neera 
+~InParty("Rasaad")~+ @515 + Em.Rasaad 
+~InParty("Dorn")~+ @516 + Em.Dorn 
+~InParty("Baeloth")~+ @517 + Em.Baeloth 
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

IF ~~ Isaac.PC1Advice 
SAY @577
IF ~~ EXIT 
END 

IF ~~ Isaac.PC2Advice 
SAY @578
IF ~~ EXIT 
END 

IF ~~ Isaac.PC3Advice 
SAY @579
IF ~~ EXIT 
END 

IF ~~ Isaac.PC4Advice 
SAY @580
IF ~~ EXIT 
END 

IF ~~ Isaac.PC5Advice 
SAY @581
IF ~~ EXIT 
END 

IF ~~ Isaac.PC6Advice 
SAY @582
IF ~~ EXIT 
END 

IF ~~ Isaac.PC7Advice 
SAY @583
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

END //End for Append 