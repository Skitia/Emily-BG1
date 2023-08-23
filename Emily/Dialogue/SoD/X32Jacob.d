
BEGIN X32Jacob 

CHAIN IF ~Global("X32milyQuestSpawn","GLOBAL",1)~ THEN X32Jacob NoEmilyNoIsaac
@0
EXIT

CHAIN IF ~GlobalGT("X32milyQuestSpawn","GLOBAL",3)!IsValidForPartyDialogue("X3Isaac")~ THEN X32Jacob OneLinerFarewell
@129
EXIT 

CHAIN IF ~GlobalGT("X3IsaacSoDQuest","GLOBAL",2)!IsValidForPartyDialogue("X3mily")~ THEN X32Jacob OneLinerFarewell
@130
EXIT 

//Emily Quest Done 
CHAIN IF ~GlobalGT("X32milyQuestSpawn","GLOBAL",3)IsValidForPartyDialogue("X3Isaac")Global("X3IsaacSoDQuest","GLOBAL",0)~ THEN X32Jacob IsaacEmilyQuestDone 
@127
EXTERN X32IsaaJ NoHurt

CHAIN IF ~Global("X32milyQuestSpawn","GLOBAL",2)IsValidForPartyDialogue("X3mily")IsValidForPartyDialogue("X3Isaac")Global("X3IsaacSoDQuest","GLOBAL",0)~ THEN X32Jacob BothOfThem
@97
DO ~SetGlobal("X3EmilyAppChange","GLOBAL",6)SetGlobal("X3IsaacAppChange","GLOBAL",6)~
== X32IsaaJ @98
== X32milyJ @99
== X32Jacob @100
== X32IsaaJ @101
== X32milyJ @102
END 
++ @103 DO ~IncrementGlobal("X3EmilyAppChange","GLOBAL",3)IncrementGlobal("X3IsaacAppChange","GLOBAL",-3)~ EXTERN X32milyJ EmilyRoute
++ @104 DO ~IncrementGlobal("X3EmilyAppChange","GLOBAL",-3)IncrementGlobal("X3IsaacAppChange","GLOBAL",3)SetGlobal("JacobEmilyMeet","GLOBAL",1)~ EXTERN X32IsaaJ NoHurt

CHAIN X32milyJ EmilyRoute 
@105
EXTERN X32Jacob FollowMeOverHere 

CHAIN X32Jacob FollowMeOverHere 
@106
DO ~AddJournalEntry(@1004, QUEST)SetGlobal("X32milyQuestSpawn","GLOBAL",3)MoveToPoint([4595.2421])~ 
EXIT 


CHAIN IF ~Global("X32milyQuestSpawn","GLOBAL",2)IsValidForPartyDialogue("X3mily")OR(2)!IsValidForPartyDialogue("X3Isaac")Global("X3IsaacSoDQuest","GLOBAL",4)~ THEN X32Jacob Quest
@1 
== X32milyJ @2
END 
IF ~Global("X3IsaacSoDQuest","GLOBAL",4)~ EXTERN X32Jacob QuestA
IF ~!Global("X3IsaacSoDQuest","GLOBAL",4)~ EXTERN X32Jacob WhoIsThis 

CHAIN X32Jacob WhoIsThis
@3
== X32milyJ IF ~Gender(Player1,MALE)~ THEN @4
== X32milyJ IF ~!Gender(Player1,MALE)~ THEN @5
END 
++ @6 EXTERN X32Jacob QuestA
+~Gender(Player1,MALE)~+ @7 EXTERN X32milyJ QuestB
+~!Gender(Player1,MALE)~+ @7 EXTERN X32milyJ QuestC 
++ @8 EXTERN X32Jacob QuestA

CHAIN X32Jacob QuestA 
@9
== X32milyJ @10
//The below section fires in case Isaac's quest was finished first, and then Emily brought in.
== X32Jacob IF ~InParty("X3Isaac")~ THEN @131
== X32milyJ IF ~InParty("X3Isaac")~ THEN @132
== X32Jacob @11
DO ~AddJournalEntry(@1004, QUEST)SetGlobal("X32milyQuestSpawn","GLOBAL",3)MoveToPoint([4595.2421])~ 
EXIT 

CHAIN X32milyJ QuestB 
@12
END 
IF ~GlobalLT("X32milyRomanceActive","GLOBAL",2)~ DO ~SetGlobal("X32milyRomanceActive","GLOBAL",1)~ EXTERN X32Jacob QuestA
IF ~GlobalGT("X32milyRomanceActive","GLOBAL",1)~ EXTERN X32Jacob QuestA

CHAIN X32milyJ QuestC 
@13
EXTERN X32Jacob QuestA

CHAIN IF ~Global("X32milyQuestSpawn","GLOBAL",2)Global("X3IsaacSoDQuest","GLOBAL",0)!IsValidForPartyDialogue("X3mily")IsValidForPartyDialogue("X3Isaac")~ THEN X32Jacob Quest
@59 
EXTERN X32IsaaJ NoHurt

CHAIN X32IsaaJ NoHurt 
@60
== X32Jacob @61
== X32IsaaJ @62
END 
IF ~GlobalGT("X32milyQuestSpawn","GLOBAL",4)~ EXTERN X32Jacob JacobTurns
IF ~!GlobalGT("X32milyQuestSpawn","GLOBAL",4)~ EXTERN X32Jacob JacobNormal

CHAIN X32Jacob JacobTurns 
@128
DO ~AddJournalEntry(@60021,QUEST_DONE)SetGlobal("X3IsaacSoDQuest","GLOBAL",3)SetGlobal("X3IsaacAppChange","GLOBAL",9)AddexperienceParty(1600)~
EXTERN X32Jacob MavisInformation

CHAIN X32Jacob JacobNormal
@63
END 
++ @64 EXTERN X32Jacob WouldItTake
++ @65 EXTERN X32Jacob ThereIsNoPlan 
++ @66 EXTERN X32Jacob WhyProtect 

CHAIN X32Jacob WhyProtect 
@67
END 
++ @68 + LikeLess
++ @69 + SheIsMad
++ @70 EXTERN X32IsaaJ Mad 

CHAIN X32Jacob WouldItTake
@122
END 
++ @68 + LikeLess
++ @69 + SheIsMad
++ @70 EXTERN X32IsaaJ Mad 

CHAIN X32Jacob SheIsMad 
@123
EXTERN X32Jacob ThereIsNoPlan

CHAIN X32Jacob LikeLess
@71
EXTERN X32Jacob ThereIsNoPlan

CHAIN X32Jacob ThereIsNoPlan 
@72
= @73
== X32Jacob IF ~!InParty("X3mily")~ THEN @76
== X32Jacob IF ~InParty("X3mily")~ THEN @133
END 
++ @77 + IsaacKnows
++ @78 EXTERN X32IsaaJ BetterAlternative
+~Global("BernadetteSeen","GLOBAL",1)~+ @79 EXTERN X32IsaaJ BernadetteSeen 
+~!Global("BernadetteSeen","GLOBAL",1)~+ @79 EXTERN X32IsaaJ BernadetteNotSeen 

CHAIN X32Jacob IsaacKnows 
@80
== X32IsaaJ IF ~Global("BernadetteSeen","GLOBAL",1)~ THEN @81
== X32IsaaJ IF ~!Global("BernadetteSeen","GLOBAL",1)~ THEN @82
END 
IF ~!InParty("X3mily")~ EXTERN X32Jacob WaitReturnNoEmily
IF ~InParty("X3mily")~ EXTERN X32Jacob WaitReturnEmily

CHAIN X32Jacob WaitReturnNoEmily 
@84
DO ~SetGlobal("X3IsaacSoDQuest","GLOBAL",1)AddJournalEntry(@60023,QUEST)~ //This journal entry should warn the party to keep out of sight of Jacob until they give him the blade.
// How it works is once they are out of sight and this line fires, a short timer will be set. When it expires, and if they have no blade, he'll give a warning, and things will repeat.
// If they are caught again, everyone will become hostile.
EXIT 

CHAIN X32Jacob WaitReturnEmily 
@116
DO ~SetGlobal("X3IsaacSoDQuest","GLOBAL",1)SetGlobal("JacobEmilyMeet","GLOBAL",1)AddJournalEntry(@60017,QUEST)~ // No trigger with this one. The party is fine for as long as Emily is in the party. If she leaves, everything is like the above.
EXIT 

CHAIN X32IsaaJ BetterAlternative 
@84
END 
IF ~Global("BernadetteSeen","GLOBAL",1)~ EXTERN X32IsaaJ BernadetteSeen
IF ~!Global("BernadetteSeen","GLOBAL",1)~ EXTERN X32IsaaJ BernadetteNotSeen

CHAIN X32IsaaJ BernadetteSeen 
@114 
END 
IF ~InParty("X3mily")~ EXTERN X32Jacob WaitReturnNoEmily
IF ~!InParty("X3mily")~ EXTERN X32Jacob WaitReturnEmily

CHAIN X32IsaaJ BernadetteNotSeen 
@115 
END 
IF ~InParty("X3mily")~ EXTERN X32Jacob WaitReturnNoEmily
IF ~!InParty("X3mily")~ EXTERN X32Jacob WaitReturnEmily


//If Emily isn't around, Isaac will also be furious, and his quest will end without him knowing unless Emily is in the party. He'll threaten to leave, but the PC can convince him to see it through as long as approval is greater than 0.
CHAIN X32IsaaJ Mad 
@74
DO ~IncrementGlobal("X3IsaacAppChange","GLOBAL",2)~
== X32Jacob @119
== X32milyJ IF ~IsValidForPartyDialogue("X3mily")~ THEN @96
DO ~IncrementGlobal("X3EmilyAppChange","GLOBAL",-3)~
// Should be a very harsh disposition shift here, and end her quest as we would for her own violent outcome Note, if Emily isn't around, her quest will become unfinishable (Though also it can't really be started either unless the party met with Bernadette in the camp.)
== X32Jacob IF ~IsValidForPartyDialogue("X3mily")~ THEN @120
== X32milyJ IF ~IsValidForPartyDialogue("X3mily")~ THEN @121
EXTERN X32Jacob Hostilities

CHAIN X32Jacob Hostilities
@75
DO ~Enemy()~ //This should also turn everyone nearby hostile.
EXIT 

//Below needs to be above IsaacQuestCheck at all times.
CHAIN IF ~Global("X3IsaacSoDQuest","GLOBAL",1)!GlobalGT("X32milyQuestSpawn","GLOBAL",3)Global("JacobEmilyMeet","GLOBAL",0)IsValidForPartyDialogue("X3mily")~ THEN X32Jacob SawEmilyFinally
@95
DO ~SetGlobal("JacobEmilyMeet","GLOBAL",1)~
EXTERN X32Jacob IsaacQuestCheck

//First Warning, party is in Jacob's sight, he dialogued, they do not have the item. Needs to be above IsaacQuestCheckHostile at all times.
CHAIN IF ~GlobalLT("X3JacobWarning","GLOBAL",2)!Global("JacobEmilyMeet","GLOBAL",1)Global("X3IsaacSoDQuest","GLOBAL",1)!InParty("X3mily")!PartyHasItem("X3ESWRD")~ THEN X32Jacob IsaacQuestCheckWarning
@124
DO ~SetGlobal("X3JacobWarning","GLOBAL",2)~
EXIT 

//Second instance, party is in Jacob's sight, he dialogued again, they do not have the item.
CHAIN IF ~GlobalLT("X3JacobWarning","GLOBAL",4)!Global("JacobEmilyMeet","GLOBAL",1)Global("X3IsaacSoDQuest","GLOBAL",1)!InParty("X3mily")!PartyHasItem("X3ESWRD")~ THEN X32Jacob IsaacQuestCheckHostile
@125
DO ~SetGlobal("X3JacobWarning","GLOBAL",4)~
EXTERN X32Jacob Hostilities


CHAIN IF ~Global("X3IsaacSoDQuest","GLOBAL",1)OR(3)InParty("X3mily")PartyHasItem("X3ESWRD")Global("JacobEmilyMeet","GLOBAL",1)~ THEN X32Jacob IsaacQuestCheck
@85 
END 
+~PartyHasItem("X3ESWRD")~+ @86 + GivesBlade 
++ @87 + NoInformation
++ @88 EXTERN X32IsaaJ Mad

CHAIN X32Jacob NoInformation 
@93
EXIT 

CHAIN X32Jacob GivesBlade
@89
DO ~TakePartyItem("X3ESWRD")AddJournalEntry(@60021,QUEST_DONE)SetGlobal("X3IsaacSoDQuest","GLOBAL",3)SetGlobal("X3IsaacAppChange","GLOBAL",9)AddexperienceParty(1600)~ //Take Item here, end quest. Fill in missing quotes.
== X32IsaaJ @90
EXTERN X32Jacob MavisInformation 

CHAIN X32Jacob MavisInformation
@91
== X32IsaaJ @92
== X32Jacob @94
END 
IF ~IsValidForPartyDialogue("X3mily")GlobalLT("X32milyQuestSpawn","GLOBAL",3)~ EXTERN X32Jacob ReadyForEmily
IF ~!IsValidForPartyDialogue("X3mily")GlobalLT("X32milyQuestSpawn","GLOBAL",3)~ EXIT 
IF ~!GlobalLT("X32milyQuestSpawn","GLOBAL",3)~ DO ~EscapeArea()~ EXIT 

CHAIN X32Jacob ReadyForEmily 
@126
EXTERN X32Jacob FollowMeOverHere 

CHAIN IF ~Global("X32milyQuestSpawn","GLOBAL",3)See("X3Isaac")~ THEN X32Jacob Quest2MoveIsaac
@107
EXIT 

//Add a line here in case Emily is dead or something.
CHAIN IF ~Global("X32milyQuestSpawn","GLOBAL",3)!See("X3Isaac")!IsValidForPartyDialogue("X3mily")~ THEN X32Jacob Quest2EmilyCheckFailed
@118
EXIT 

CHAIN IF ~Global("X32milyQuestSpawn","GLOBAL",3)!See("X3Isaac")IsValidForPartyDialogue("X3mily")~ THEN X32Jacob Quest2
@14
== X32milyJ @15
END 
++ @16 EXTERN X32milyJ Quest2A 
++ @17 EXTERN X32Jacob Quest2B 
++ @18 EXTERN X32Jacob Quest2C 
++ @19 EXTERN X32Jacob Quest2D

CHAIN X32milyJ Quest2A 
@20
== X32Jacob @21
END 
++ @17 EXTERN X32Jacob Quest2B 
++ @18 EXTERN X32Jacob Quest2C 
++ @19 EXTERN X32Jacob Quest2C

CHAIN X32Jacob Quest2B 
@22
== X32milyJ @23
EXTERN X32Jacob Quest2B2 

CHAIN X32Jacob Quest2B2 
@24
END 
++ @25 EXTERN X32Jacob Quest2D 
++ @26 EXTERN X32Jacob Quest2D 
++ @27 DO ~SetGlobal("X3EmilyAppChange","GLOBAL",5)~ EXTERN X32Jacob Quest2F 

CHAIN X32Jacob Quest2C 
@28
== X32milyJ @29
EXTERN X32Jacob Quest2B2 

CHAIN X32Jacob Quest2D 
@30
== X32Jacob @31
== X32Jacob @32
END 
+~Gender(Player1,MALE)~+ @33 EXTERN X32Jacob Quest2EM 
+~Gender(Player1,FEMALE)~+ @33 EXTERN X32Jacob Quest2EF
++ @34 DO ~SetGlobal("X3EmilyAppChange","GLOBAL",6)~ EXTERN X32Jacob Quest2F 
++ @35 DO ~SetGlobal("X3EmilyAppChange","GLOBAL",5)~ EXTERN X32Jacob Quest2F 


CHAIN X32Jacob Quest2EM 
@36
EXTERN X32Jacob Quest2E 

CHAIN X32Jacob Quest2EF 
@37
EXTERN X32Jacob Quest2E 

CHAIN X32Jacob Quest2E 
@38
== X32milyJ @39
== X32Jacob @40
DO ~SetGlobal("X32milyQuestSpawn","GLOBAL",5)SetGlobal("X3EmilyAppChange","GLOBAL",10)AddexperienceParty(1600)~
//== X32milyJ @41
//== X32Jacob @42
END 
IF ~OR(2)!InPartyAllowDead("X3Isaac")!Global("X3IsaacSoDQuest","GLOBAL",0)~ EXIT
IF ~InPartyAllowDead("X3Isaac")Global("X3IsaacSoDQuest","GLOBAL",0)~ DO ~SetGlobal("X3IsaacSoDQuest","GLOBAL",2)~ EXTERN X32Jacob Quest2GIsaac 

CHAIN X32Jacob Quest2F 
@43
== X32milyJ @44
== X32Jacob @45
== X32milyJ @46
== X32Jacob @47
== X32Jacob @48
END 
+~OR(2)!InPartyAllowDead("X3Isaac")!Global("X3IsaacSoDQuest","GLOBAL",0)~+ @49 DO ~SetGlobal("X32milyQuestSpawn","GLOBAL",4)IncrementGlobal("X3EmilyAppChange","GLOBAL",1)SetGlobal("X3IsaacSoDQuest","GLOBAL",2)AddexperienceParty(1600)~ EXTERN X32Jacob Quest2G
+~InPartyAllowDead("X3Isaac")Global("X3IsaacSoDQuest","GLOBAL",0)~+ @49 DO ~SetGlobal("X32milyQuestSpawn","GLOBAL",4)IncrementGlobal("X3EmilyAppChange","GLOBAL",1)SetGlobal("X3IsaacSoDQuest","GLOBAL",2)AddexperienceParty(1600)~ EXTERN X32Jacob Quest2GIsaac
++ @50 DO ~SetGlobal("X32milyQuestSpawn","GLOBAL",4)IncrementGlobal("X3EmilyAppChange","GLOBAL",-1)SetGlobal("X3IsaacSoDQuest","GLOBAL",2)AddexperienceParty(1600)~ EXTERN X32Jacob Quest2H 
++ @51 EXTERN X32Jacob Quest2I

CHAIN X32Jacob Quest2G 
@52
DO ~SetGlobal("X32milyQuestSpawn","GLOBAL",4)SetGlobal("X3EmilyAppChange","GLOBAL",9)AddexperienceParty(1600)~ EXIT

CHAIN X32Jacob Quest2H 
@53 
END 
IF ~OR(2)!InPartyAllowDead("X3Isaac")!Global("X3IsaacSoDQuest","GLOBAL",0)~ DO ~SetGlobal("X32milyQuestSpawn","GLOBAL",4)SetGlobal("X3EmilyAppChange","GLOBAL",8)AddexperienceParty(1600)~ EXIT
IF ~InPartyAllowDead("X3Isaac")Global("X3IsaacSoDQuest","GLOBAL",0)~ EXTERN X32Jacob Quest2GIsaac 

CHAIN X32Jacob Quest2GIsaac 
@108
== X32milyJ @109
== X32Jacob @110
== X32milyJ @111
== X32Jacob @112 
== X32milyJ @113
== X32Jacob @117
DO ~EscapeArea()~ 
EXIT

CHAIN X32Jacob Quest2I 
@54
== X32milyJ @55
== X32Jacob @56
DO ~SetGlobal("X3EmilyAppChange","GLOBAL",2)Enemy()~ EXIT

