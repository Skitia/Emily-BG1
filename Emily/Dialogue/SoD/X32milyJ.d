BEGIN X32milyJ

// Dorn Conflict

IF ~Global("X32milyDornConflict","LOCALS",1)~ DornConflict 
SAY @0 
+~OR(2)Alignment(Player1,MASK_GOOD)ReputationGT(Player1,12)~+ @1 + D.B 
+~RandomNum(3,1)!Alignment(Player1,MASK_GOOD)ReputationLT(Player1,13)~+ @1 +  D.B 
+~RandomNum(3,2)!Alignment(Player1,MASK_GOOD)ReputationLT(Player1,13)~+ @1 +  D.A 
+~RandomNum(3,3)!Alignment(Player1,MASK_GOOD)ReputationLT(Player1,13)~+ @1 +  D.A 
++ @2 + D.C
++ @3 +  D.B 
+~CheckStatGT(Player1,15,CHR)~+ @4 + D.B
+~RandomNum(3,1)CheckStatLT(Player1,16,CHR)~+ @4 + D.B
+~RandomNum(3,2)CheckStatLT(Player1,16,CHR)~+ @4 + D.A
+~RandomNum(3,3)CheckStatLT(Player1,16,CHR)~+ @4 + D.A
END 

IF ~~ D.A 
SAY @5
++ @6 + D.D
++ @7 + D.C
END 

IF ~~ D.B 
SAY @8
IF ~~ DO ~SetGlobal("X32milyDornConflict","LOCALS",2)~ + D.E
END 

IF ~~ D.D 
SAY @9 
IF ~~ DO ~SetGlobal("X32milyDornConflict","LOCALS",-2)
SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",DEFAULT)LeaveParty()~
EXIT 
END 

// Talk 1. Six Talks Total. Most are non-romance required.
IF ~Global("X32milyTalk","GLOBAL",2)~ Talk1 
SAY @10
++ @11 + T1.1
++ @12 + T1.2
++ @13 + T1.3
END 

IF ~~ T1.1
SAY @14
= @15
= @16
++ @17 + T1.4
++ @18 + T1.4
++ @19 + T1.5
END 

IF ~~ T1.2 
SAY @20
++ @11 + T1.1
++ @13 + T1.3
++ @21 + T1.Exit
END 

IF ~~ T1.3 
SAY @22
IF ~~ + T1.1 
END 

IF ~~ T1.4 
SAY @23
= @24
= @25
++ @26 + T1.6
++ @27 + T1.7
++ @28 + T1.8
END 

IF ~~ T1.5
SAY @29
IF ~~ + T1.4
END 

IF ~~ T1.Exit 
SAY @30
IF ~~ DO ~SetGlobalTimer("X32milyGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32milyRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T1.6 
SAY @31
= @32
++ @27 + T1.7
++ @33 + T1.9
END 

IF ~~ T1.7
SAY @34
IF ~~ + T1.9
END 

IF ~~ T1.8 
SAY @35
= @36
++ @37 + T1.10
++ @38 + T1.11
++ @27 + T1.7
++ @33 + T1.9
END 

IF ~~ T1.9
SAY @39
IF ~~ DO ~SetGlobalTimer("X32milyGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32milyRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T1.10 
SAY @40
IF ~~ DO ~SetGlobalTimer("X32milyGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32milyRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ T1.11 
SAY @41
IF ~~ + T1.9
END 

// Talk 2

IF ~Global("X32milyTalk","GLOBAL",4)~ Talk2 
SAY @42
++ @43 + Talk2.A 
++ @44 + Talk2.B 
++ @45 + Talk2.C 
END 

IF ~~ Talk2.A 
SAY @46
IF ~~ + Talk2.D
END 

IF ~~ Talk2.B 
SAY @47
IF ~~ + Talk2.D 
END 

IF ~~ Talk2.C 
SAY @48
IF ~~ + Talk2.D 
END 

IF ~~ Talk2.D
SAY @49
++ @50 + Talk2.E 
++ @51 + Talk2.F 
++ @52 + Talk2.Exit 
END 

IF ~~ Talk2.E 
SAY @53
IF ~Global("X32milyInBG1","GLOBAL",1)~ + Talk2.G1  
IF ~!Global("X32milyInBG1","GLOBAL",1)~ + Talk2.G2
END 

IF ~~ Talk2.F 
SAY @54 
IF ~Global("X32milyInBG1","GLOBAL",1)~ + Talk2.G1 
IF ~!Global("X32milyInBG1","GLOBAL",1)~ + Talk2.G2
END 

IF ~~ Talk2.Exit 
SAY @55
IF ~~ DO ~SetGlobalTimer("X32milyGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32milyRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk2.G1 
SAY @56
IF ~~ + Talk2.H 
END 

IF ~~ Talk2.G2 
SAY @57
IF ~~ + Talk2.H 
END

IF ~~ Talk2.H 
SAY @58
++ @59 + Talk2.I 
++ @60 + Talk2.J
++ @61 + Talk2.Exit 
END 

IF ~~ Talk2.I 
SAY @62
IF ~~ + Talk2.J
END 

IF ~~ Talk2.J 
SAY @63
= @64
++ @65 + Talk2.K
++ @66 + Talk2.L 
++ @67 + Talk2.K
END 

IF ~~ Talk2.K 
SAY @68
IF ~~ DO ~SetGlobalTimer("X32milyGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32milyRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk2.L 
SAY @69
IF ~~ DO ~SetGlobalTimer("X32milyGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32milyRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END

IF ~Global("X32milyTalk","GLOBAL",6)~ Talk3
SAY @70
++ @71 + Talk3.A 
++ @72 + Talk3.B
++ @73 + Talk3.C 
END 

IF ~~ Talk3.A 
SAY @74
IF ~~ + Talk3.D  
END 

IF ~~ Talk3.B 
SAY @75
IF ~~ + Talk3.D  
END 

IF ~~ Talk3.C 
SAY @76
IF ~~ + Talk3.D 
END 

IF ~~ Talk3.D 
SAY @77
++ @78 + Talk3.E 
++ @79 + Talk3.F 
++ @80 + Talk3.Exit 
END 

IF ~~ Talk3.E 
SAY @81
= @82
+~Global("X32milyRomanceActive","GLOBAL",3)~+ @83 + Talk3.G
++ @84 + Talk3.H
++ @85 + Talk3.Exit 
END 

IF ~~ Talk3.F 
SAY @86
= @87
+~!Global("X32milyRomanceActive","GLOBAL",3)~+ @88 + Talk3.G
++ @89 + Talk3.I 
++ @90 + Talk3.I
END 

IF ~~ Talk3.G 
SAY @91
IF ~~ + Talk3.Exit2 
END 

IF ~~ Talk3.H 
SAY @92 
IF ~~ + Talk3.Exit2 
END 

IF ~~ Talk3.I 
SAY @93
IF ~~ + Talk3.Exit2 
END 

IF ~~ Talk3.Exit 
SAY @94 
IF ~~ DO ~SetGlobalTimer("X32milyGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32milyRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk3.Exit2 
SAY @95
IF ~~ DO ~SetGlobalTimer("X32milyGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32milyRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END

IF ~Global("X32milyTalk","GLOBAL",8)~ Talk4
SAY @96
++ @97 + Talk4.A
++ @98 + Talk4.B
+~Dead("X32EHK3S")~+ @99 + Talk4.C 
++ @100 + Talk4.A 
END 

IF ~~ Talk4.A 
SAY @101 
IF ~~ + Talk4.D 
END 

IF ~~ Talk4.B 
SAY @102
IF ~~ + Talk4.D 
END 

IF ~~ Talk4.C 
SAY @103
IF ~~ + Talk4.D 
END 

IF ~~ Talk4.D 
SAY @104 
+~Global("X32milyInBG1","GLOBAL",1)~+ @105 + Talk4.E 
+~!Global("X32milyInBG1","GLOBAL",1)~+ @105 + Talk4.F 
++ @106 + Talk4.G 
++ @107 + Talk4.H 
END 

IF ~~ Talk4.E
SAY @108
IF ~~ + Talk4.J 
END 

IF ~~ Talk4.F
SAY @109 
IF ~~ + Talk4.J 
END 

IF ~~ Talk4.G 
SAY @110
IF ~~ + Talk4.J
END 

IF ~~ Talk4.H 
SAY @111
IF ~~ + Talk4.J
END 

IF ~~ Talk4.J 
SAY @112
++ @113 + Talk4.K 
++ @114 + Talk4.L 
++ @115 + Talk4.M 
END 

IF ~~ Talk4.K 
SAY @116
IF ~~ + Talk4.X 
END 

IF ~~ Talk4.L 
SAY @117
IF ~~ + Talk4.X 
END

IF ~~ Talk4.M  
SAY @118 
IF ~~ + Talk4.X 
END 

IF ~~ Talk4.X 
SAY @119
IF ~~ DO ~SetGlobalTimer("X32milyGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32milyRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END


IF ~Global("X32milyTalk","GLOBAL",10)~ Talk5 
SAY @120
++ @121 + Talk5.A 
++ @122 + Talk5.A  
++ @123 + Talk5.A 
++ @124 + Talk5.P
++ @125 + Talk5.O 
END 

IF ~~ Talk5.P 
SAY @126
++ @127 + Talk5.A 
++ @128 + Talk5.A 
++ @129 + Talk5.B 
++ @130 + Talk5.A  
END 

IF ~~ Talk5.A 
SAY @131
= @132
++ @133 + Talk5.C 
++ @134 + Talk5.D 
++ @135 + Talk5.O
END 

IF ~~ Talk5.B 
SAY @136
= @137
++ @138 + Talk5.C 
++ @134 + Talk5.D 
++ @135 DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk5.O
END 

IF ~~ Talk5.C 
SAY @139
++ @140 + Talk5.E  
++ @141 + Talk5.I 
++ @142  + Talk5.XH 
++ @143 DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk5.O  
END

IF ~~ Talk5.XH 
SAY @144
++ @145 + Talk5.E
++ @146 + Talk5.I 
++ @143 DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk5.O  
END

IF ~~ Talk5.D 
SAY @147
++ @140 + Talk5.E 
++ @141 DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk5.I 
++ @148 DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk5.O 
END

IF ~~ Talk5.E 
SAY @149
IF ~!Race(Player1,HUMAN)Global("X32milyRomanceActive","GLOBAL",1)~ + Talk5.F 
IF ~Race(Player1,HUMAN)Global("X32milyRomanceActive","GLOBAL",1)~ + Talk5.G 
IF ~!Global("X32milyRomanceActive","GLOBAL",1)~ DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk5.R 
END 

IF ~~ Talk5.F 
SAY @150
= @151
++ @152 + Talk5.H
++ @153 + Talk5.H 
++ @154 DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk5.I 
++ @155 DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk5.M 
END 

IF ~~ Talk5.G 
SAY @156
= @157
++ @152 + Talk5.H
++ @153 + Talk5.H 
++ @154 DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk5.I
++ @155 DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk5.M 
END 

IF ~~ Talk5.H 
SAY @158
= @159
++ @160 + Talk5.J
++ @161 + Talk5.K 
++ @154 DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ + Talk5.I
END 

IF ~~ Talk5.I 
SAY @162
IF ~~ + Talk5.X 
END 


IF ~~ Talk5.J 
SAY @163
IF ~~ + Talk5.K 
END 

IF ~~ Talk5.K 
SAY @164
IF ~~ DO ~IncrementGlobal("X32milyTalk","GLOBAL",1)SetGlobal("X32milyRomanceActive","GLOBAL",2)~ EXIT 
END

IF ~~ Talk5.R 
SAY @165
++ @166 + Talk5.L
++ @154 + Talk5.I 
++ @155 + Talk5.M
END 

IF ~~ Talk5.L 
SAY @167
= @168
IF ~~ + Talk5.X 
END 

IF ~~ Talk5.M 
SAY @169
IF ~~ + Talk5.X 
END 

IF ~~ Talk5.X 
SAY @170
IF ~~ DO ~IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk5.O
SAY @171
IF ~~ DO ~IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END

IF ~Global("X32milyTalk","GLOBAL",12)~ Talk6
SAY @172
++ @173 + Talk6.A 
++ @174 + Talk6.B 
++ @175 + Talk6.C 
END 

IF ~~ Talk6.A 
SAY @176
IF ~Global("X32milyRomanceActive","GLOBAL",2)~ + Talk6.D  
IF ~!Global("X32milyRomanceActive","GLOBAL",2)~ DO ~IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT
END 

IF ~~ Talk6.B 
SAY @177
IF ~Global("X32milyRomanceActive","GLOBAL",2)~ + Talk6.D  
IF ~!Global("X32milyRomanceActive","GLOBAL",2)~ DO ~IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk6.C 
SAY @178 
IF ~Global("X32milyRomanceActive","GLOBAL",2)~ + Talk6.D  
IF ~!Global("X32milyRomanceActive","GLOBAL",2)~ DO ~IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk6.D 
SAY @179
= @180
= @181
++ @182 + Talk6.E 
++ @183 + Talk6.F
++ @184 + Talk6.G
++ @185 + Talk6.H 
END 

IF ~~ Talk6.E 
SAY @186
IF ~~ + Talk6.I  
END 

IF ~~ Talk6.F 
SAY @187
IF ~~ + Talk6.I
END 

IF ~~ Talk6.G 
SAY @188
IF ~~ + Talk6.I 
END 

IF ~~ Talk6.H 
SAY @189
IF ~~ DO ~IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk6.I 
SAY @190
IF ~~ DO ~IncrementGlobal("X32milyTalk","GLOBAL",1)~ EXIT 
END

// THRIX

IF ~Global("X32milySacrifice","bd4500",1)~ ThrixTalk0
SAY @191
+ ~!Global("X32_thrix_mark_Emily","global",1)~ + @192 DO ~SetGlobal("X32milySacrifice","bd4500",2)~ + ThrixTalk2
+ ~Global("X32_thrix_mark_Emily","global",1)~ + @193 DO ~SetGlobal("X32milySacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("X32_thrix_mark_Emily","global",1)~ + @194 DO ~SetGlobal("X32milySacrifice","bd4500",2)~ + ThrixTalk3
+ ~Global("X32_thrix_mark_Emily","global",1)~ + @195 DO ~SetGlobal("X32milySacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("X32_thrix_mark_Emily","global",1)~ + @196 DO ~SetGlobal("X32milySacrifice","bd4500",2)~ + ThrixTalk4
+ ~Global("X32_thrix_mark_Emily","global",1)~ + @196 DO ~SetGlobal("X32milySacrifice","bd4500",2)~ + ThrixTalk1
END

IF ~~ ThrixTalk1
 SAY @197
IF ~OR(2)
Global("X32milyRomanceActive","GLOBAL",1)
Global("X32milyRomanceActive","GLOBAL",2)~ + ThrixTalk5
IF ~!Global("X32milyRomanceActive","GLOBAL",1)
!Global("X32milyRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ ThrixTalk2
 SAY @198
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk3
 SAY @199
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk4
 SAY @200
IF ~OR(2)
Global("X32milyRomanceActive","GLOBAL",1)
Global("X32milyRomanceActive","GLOBAL",2)~ + ThrixTalk5
IF ~!Global("X32milyRomanceActive","GLOBAL",1)
!Global("X32milyRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ ThrixTalk5
 SAY @201
IF ~~ DO ~SetGlobal("X32milyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ ThrixTalk6
 SAY @202
IF ~~ EXIT
END

// Checks for Expired Timer. 
IF ~GlobalTimerExpired("X3milyCraftTimer","GLOBAL")GlobalGT("X3milyAtWork","GLOBAL",0)~ Emily.PCraftAlert
SAY @203
IF ~Global("X3milyAtWork","GLOBAL",1)~ + Emily.PCraftSBoltDone 
IF ~Global("X3milyAtWork","GLOBAL",2)~ + Emily.PCraftFBoltDone 
IF ~Global("X3milyAtWork","GLOBAL",3)~ + Emily.PCraftSArrowDone
IF ~Global("X3milyAtWork","GLOBAL",4)~ + Emily.PCraftFArrowDone
IF ~Global("X3milyAtWork","GLOBAL",5)~ + Emily.PCraftEagleDone
IF ~Global("X3milyAtWork","GLOBAL",6)~ + Emily.PCraftHeavyXDone
IF ~Global("X3milyAtWork","GLOBAL",7)~ + Emily.PCraftLightXDone
IF ~Global("X3milyAtWork","GLOBAL",8)~ + Emily.PCraftLongXDone
END

// Dorn Conflict 

CHAIN X32milyJ D.C 
@204
DO ~SetGlobal("X32milyDornConflict","LOCALS",-1)~
== BDDORNJ @205
DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",DEFAULT)LeaveParty()~
EXIT 

CHAIN X32milyJ D.E 
@206
== BDDORNJ @207
EXIT 

// Schael

EXTEND_TOP BDSCHAEL 40 #3
+ ~OR(2)
Global("SOD_fromimport","global",1)
BeenInParty("X3mily")
Global("X32milySchael","GLOBAL",0)~ + @208 DO ~SetGlobal("X32milySchael","GLOBAL",1)~ EXTERN BDSCHAEL bdschaelmilyRecall
END

CHAIN BDSCHAEL bdschaelmilyRecall
@209
COPY_TRANS BDSCHAEL 40

// Menhirs

EXTEND_TOP BDMENHI1 0 #7
+~IsValidForPartyDialog("X3mily")~+ @210 EXTERN X32milyJ X32milyMenhir1 
END 

EXTEND_TOP BDMENHI1 1 #7
+~IsValidForPartyDialog("X3mily")~+ @210 EXTERN X32milyJ X32milyMenhir1 
END 

CHAIN X32milyJ X32milyMenhir1 
@211
EXTERN BDMENHI1 2

EXTEND_TOP BDMENHI2 0 #7
+~IsValidForPartyDialog("X3mily")~+ @210 EXTERN X32milyJ X32milyMenhir2 
END 

EXTEND_TOP BDMENHI2 1 #7
+~IsValidForPartyDialog("X3mily")~+ @210 EXTERN X32milyJ X32milyMenhir2 
END 

CHAIN X32milyJ X32milyMenhir2
@212
EXTERN BDMENHI2 2

EXTEND_TOP BDMENHI3 0 #7
+~IsValidForPartyDialog("X3mily")~+ @210 EXTERN X32milyJ X32milyMenhir3 
END 

EXTEND_TOP BDMENHI3 1 #7
+~IsValidForPartyDialog("X3mily")~+ @210 EXTERN X32milyJ X32milyMenhir3 
END 

CHAIN X32milyJ X32milyMenhir3 
@213
EXTERN BDMENHI3 2

EXTEND_TOP BDMENHI4 0 #7
+~IsValidForPartyDialog("X3mily")~+ @210 EXTERN X32milyJ X32milyMenhir4 
END 

EXTEND_TOP BDMENHI4 1 #7
+~IsValidForPartyDialog("X3mily")~+ @210 EXTERN X32milyJ X32milyMenhir4 
END 

CHAIN X32milyJ X32milyMenhir4
@214
EXTERN BDMENHI4 2

EXTEND_TOP BDMENHI5 0 #7
+~IsValidForPartyDialog("X3mily")~+ @210 EXTERN X32milyJ X32milyMenhir5 
END 

EXTEND_TOP BDMENHI5 1 #7
+~IsValidForPartyDialog("X3mily")~+ @210 EXTERN X32milyJ X32milyMenhir5 
END 

CHAIN X32milyJ X32milyMenhir5
@215
EXTERN BDMENHI5 2

EXTEND_TOP BDMENHI6 0 #7
+~IsValidForPartyDialog("X3mily")~+ @210 EXTERN X32milyJ X32milyMenhir6 
END 

EXTEND_TOP BDMENHI6 1 #7
+~IsValidForPartyDialog("X3mily")~+ @210 EXTERN X32milyJ X32milyMenhir6 
END 

CHAIN X32milyJ X32milyMenhir6
@216
EXTERN BDMENHI6 2

I_C_T BDVESSAN 5 X32milyBDVESSAN5 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @217
END  

I_C_T BDTSOLAK 2 X32milyBDTSOLAK2
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @218
END  

I_C_T BDCOLDH 24 X32milyBDCOLDH24 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @219
END  

I_C_T BDCROMMU 12 X32milyBDCROMMU
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @220
END  

I_C_T BDBAELOT 19 X32milyBDBAELOT 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @221
END 

// Madele 

I_C_T BDMADELE 10 X32milyBDMADELE 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @222
END 

// Bridgefort 

I_C_T BDKHALID 56  X32milyBDKHALID56
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @223
END

I_C_T BDDORN 29 X32milyBDDORN29 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @224
== BDDORN @225
END

I_C_T BDELANDR 17 X32milyBDELANDR 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @226
END 

I_C_T BDKHALIJ 33 X32milyBDKHALIJ 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @227
DO ~SetGlobal("X3_betrayal_discussion","bd2000",1)~
END

// Training 

EXTEND_TOP BDTAIELD 1 #4 
+ ~IsValidForPartyDialogue("X3mily")~ + @228 DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_taield_skill","global",2)~ EXTERN X32milyJ bdTAIELD1
END 

CHAIN X32milyJ bdTAIELD1
@229 
== BDTAIELD @230 
== X32milyJ @231
EXTERN BDTAIELD 6

EXTEND_TOP BDHESTER 6 #4 
+ ~IsValidForPartyDialogue("X3mily")~ + @232 EXTERN X32milyJ bdHester
END 

CHAIN X32milyJ bdHester 
@233 
DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_hester_skill","global",2)~
== BDHESTER @234
== X32milyJ @235
EXTERN BDHester 13

// Uncommon Cold 

EXTEND_TOP BDYESTIM 1
+~IfValidForPartyDialogue("X3mily")Class("X3mily",RANGER_ALL)~+  @236 DO ~SetGlobal("bd_patient_yestimell","global",2)
IncrementGlobal("bd_sdd302_death_count","global",-1)~ EXTERN X32milyJ BDYESTIM1 // X3Helga
END 

CHAIN X32milyJ BDYESTIM1
@237 
DO ~IncrementGlobal("bd_sdd302_patients_talked","bd3000",1)
ActionOverride("bdyestim",Polymorph(FIGHTER_MALE_HUMAN))
ChangeSpecifics("bdyestim",THIEF)  // Yestimell
ActionOverride("bdyestim",Enemy())
ActionOverride("bdyestim",Attack([PC]))~ 
EXIT 

I_C_T BDDOSIA 25 X32milyBDDOSIA25 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @238
END 

EXTEND_TOP BDFRAT 1 
+~IfValidForPartyDialogue("X3mily")Class("X3mily",RANGER_ALL)!IsValidForPartyDialog("Corwin")!IsValidForPartyDialog("Minsc")!IsValidForPartyDialog("Jaheira")~+ @239
EXTERN BDFRAT 2 
END 

EXTEND_TOP BDFRAT 3 
+~IfValidForPartyDialogue("X3mily")Class("X3mily",RANGER_ALL)!IsValidForPartyDialog("Corwin")!IsValidForPartyDialog("Minsc")!IsValidForPartyDialog("Jaheira")~+ @239
EXTERN BDFRAT 2 
END 

EXTEND_TOP BDFRAT 8
+~IfValidForPartyDialogue("X3mily")Class("X3mily",RANGER_ALL)~+ @240
EXTERN X32milyJ BDFRAT8 
END 

CHAIN X32milyJ BDFRAT8 
@241
== X32milyJ @242
DO ~AddJournalEntry(61440,QUEST)  
SetGlobal("bd_sdd302_rat_hunt","global",4)
SetGlobal("bd_sdd302_blackthorn","global",1)~
EXIT

// Thrix the Profane

EXTEND_BOTTOM BDTHRIX 21
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 22 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 23 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 24 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 26
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 27 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 28 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 29 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 30
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 31 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 32 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 33 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 34
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 35 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 36 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 37 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 38
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 39 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 40 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 41 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 42
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 43 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 44 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 45 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 46
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 47 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 48 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 49 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 50
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 51 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 52 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 53 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 54
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 55 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 56 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 57 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 58
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 59 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 60 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 61 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 62
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 63 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 64 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 65 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 66
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 67 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 68 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 69 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 70
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 71 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 72 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 73 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 74
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 75 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 76 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 77 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 78
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 79 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 80 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 81 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 82
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 83 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 84 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 85 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 90
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 91 #3
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 92 #5
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 93 #8
IF ~Global("X32_Saved_Emily","bd4500",0)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager1
END

CHAIN BDTHRIX ThrixWager1
@243
END
++ @244 DO ~SetGlobal("X32EmilySacrifice","bd4500",1) SetGlobal("bd_thrix_sacrifice_companion","global",1)~ EXTERN BDTHRIX 116
+ ~OR(2) Global("X32EmilyRomanceActive","GLOBAL",1) Global("X32EmilyRomanceActive","GLOBAL",2)~ + @245 DO ~SetGlobal("X32_Saved_Emily","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN X32milyJ ThrixWager2
+ ~!Global("X32EmilyRomanceActive","GLOBAL",1) !Global("X32EmilyRomanceActive","GLOBAL",2)~ + @246 DO ~SetGlobal("X32_Saved_Emily","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN X32milyJ ThrixWager2
++ @247 EXTERN BDTHRIX 113
++ @248 EXTERN BDTHRIX 12

CHAIN X32milyJ ThrixWager2
@249
== BDTHRIX @250
END
IF ~RandomNum(4,1)~ EXTERN BDTHRIX 78
IF ~RandomNum(4,2)~ EXTERN BDTHRIX 79
IF ~RandomNum(4,3)~ EXTERN BDTHRIX 80
IF ~RandomNum(4,4)~ EXTERN BDTHRIX 81

EXTEND_BOTTOM BDTHRIX 118
IF ~Global("X32EmilySacrifice","bd4500",1)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 119
IF ~Global("X32EmilySacrifice","bd4500",1)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 120
IF ~Global("X32EmilySacrifice","bd4500",1)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 121
IF ~Global("X32EmilySacrifice","bd4500",1)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 122
IF ~Global("X32EmilySacrifice","bd4500",1)
IsValidForPartyDialogue("X3mily")~ EXTERN BDTHRIX ThrixWager4
END

CHAIN BDTHRIX ThrixWager4
@251
END
++ @252 DO ~SetGlobal("X32_thrix_mark_Emily","global",1)~ EXTERN X32milyJ ThrixWager5
++ @253 EXTERN BDTHRIX 10

CHAIN X32milyJ ThrixWager5
@254
DO ~SetGlobal("bd_thrix_plot","global",11)~ EXTERN BDTHRIX 140

// Caelar 

I_C_T BDCAELAR 40 X32milyBDCaelar40 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @255
== BDCAELAR @256
== X32milyJ @257
== BDCAELAR @258
END 

I_C_T BDCAELAR 53 X32milyBDCaelar53 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @259
END 

I_C_T BDCAELAR 62 X32milyBDCaelar62 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @260
END 

I_C_T BDCAELAR 64 X32milyBDCaelar64 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @261
== BDCAELAR @262
END 

I_C_T BDCAELAR 86 X32milyBDCaelar86 
== X32milyJ IF ~InParty("X3mily") InMyArea("X3mily") !StateCheck("X3mily",CD_STATE_NOTVALID)~ THEN @263
END 

// Imoen

EXTEND_BOTTOM BDIMOEN 104
+ ~Global("X3mily_SoDparty_epilogue","GLOBAL",1)~ + @264 EXTERN BDIMOEN bdimoen1
END

EXTEND_BOTTOM BDIMOEN 109
+ ~Global("X3mily_SoDparty_epilogue","GLOBAL",1)~ + @264 EXTERN BDIMOEN bdimoen1
END

CHAIN BDIMOEN bdimoen1
@265
EXTERN BDIMOEN 119

APPEND X32milyJ 

IF ~IsGabber(Player1)AreaCheck("bd4300")GlobalGT("bd_plot","global",585)~ THEN BEGIN Emily.BattleOver 
SAY @266
IF ~~ EXIT 
END 


IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])OR(2)AreaCheck("BD0120")AreaCheck("BD0130")~ THEN BEGIN Emily.PIDCrypt
SAY @267
IF ~~ EXIT 
END 

//New P.I.D. will exclude Chapter Advice. 
IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) GlobalGT("Chapter","GLOBAL",7)GlobalLT("CHAPTER","GLOBAL",13)~ THEN BEGIN Emily.PID
 SAY @268 // ~Something you need?~ 
 + ~HPPercentGT(Myself,74)RandomNum(6,1)~ + @269 + Emily.PHowAreYou1 // @269
 + ~HPPercentGT(Myself,74)RandomNum(6,2)~ + @269 + Emily.PHowAreYou2 // @269
 + ~HPPercentGT(Myself,74)RandomNum(6,3)~ + @269 + Emily.PHowAreYou3 // @269
  + ~HPPercentGT(Myself,74)RandomNum(6,4)~ + @269 + Emily.PHowAreYou4 // @269
 + ~HPPercentGT(Myself,74)RandomNum(6,5)~ + @269 + Emily.PHowAreYou5 // @269
 + ~HPPercentGT(Myself,74)RandomNum(6,6)~ + @269 + Emily.PHowAreYou6 // @269
 +~HPPercentLT(Myself,75)HPPercentGT(Myself,49)~+ @269 + Emily.PHowAreYouInjured // @269 //(Under 75%, Over 50%)
 +~HPPercentLT(Myself,50)~+ @269 + Emily.PHowAreYouHurt // @269 //(Under 50%)
 ++ @270  + Emily.PTalk // @270 
// +~!Global("X3milyCraftTalk","GLOBAL",2)~+ ~Are you able to fletch arrows?~ DO ~SetGlobal("X3milyCraftTalk","GLOBAL",2)~ + Emily.PCraftTalk2 // 
+~Global("X3milyEnhancedBow","GLOBAL",0)!PartyHasItemIdentified("BOW08")!PartyHasItemIdentified("BOW07")!PartyHasItemIdentified("XBOW06")!PartyHasItemIdentified("XBOW03")~+ @271 + Emily.PBow1  // ~Could you upgrade a launcher for me? No bow qualifies. 
+~Global("X3milyEnhancedBow","GLOBAL",0)OR(4)PartyHasItemIdentified("BOW08")PartyHasItemIdentified("BOW07")PartyHasItemIdentified("XBOW06")PartyHasItemIdentified("XBOW03")~+ @271 + Emily.PBow2 // One of the bows is worthy. This fires only once.
 +~GlobalGT("X3milyAtWork","GLOBAL",0)!GlobalTimerExpired("X3milyCraftTimer","GLOBAL")~+ @272  + Emily.PCraftCheckN // @272 // Not Ready. 
 +~GlobalGT("X3milyAtWork","GLOBAL",0)GlobalTimerExpired("X3milyCraftTimer","GLOBAL")~+ @272  + Emily.PCraftCheckY // @272 // Ready. 
 ++ @273 + FixString
 ++ @274  EXIT
 END 
 
IF ~~ Emily.PHowAreYou1
SAY @275 
IF ~~ EXIT  
END 

IF ~~ Emily.PHowAreYou2
SAY @276 
IF ~~ EXIT  
END

IF ~~ Emily.PHowAreYou3
SAY @277 
IF ~~ EXIT  
END 

IF ~~ Emily.PHowAreYou4
SAY @278 
IF ~~ EXIT  
END 

IF ~~ Emily.PHowAreYou5
SAY @279 
IF ~~ EXIT  
END 

IF ~~ Emily.PHowAreYou6
SAY @280 
IF ~~ EXIT  
END 

IF ~~ Emily.PHowAreYouInjured
SAY @281 
IF ~~ EXIT  
END

IF ~~ Emily.PHowAreYouHurt
SAY @282 
IF ~~ EXIT  
END

IF ~~ Emily.PCraftTalk2
SAY @283
IF ~~ + Emily.PCraftTalk3 
END 

IF ~~ Emily.PCraftTalk3 
SAY @284
+~Global("X3milyEnhancedBow","GLOBAL",0)!PartyHasItemIdentified("BOW08")!PartyHasItemIdentified("BOW07")!PartyHasItemIdentified("XBOW06")!PartyHasItemIdentified("XBOW03")~+ @285 + Emily.PBow1  // ~Could you upgrade a launcher for me? No bow qualifies. 
+~Global("X3milyEnhancedBow","GLOBAL",0)OR(4)PartyHasItemIdentified("BOW08")PartyHasItemIdentified("BOW07")PartyHasItemIdentified("XBOW06")PartyHasItemIdentified("XBOW03")~+ @285 + Emily.PBow2 // One of the bows is worthy. This fires only once.
++ @286 EXIT 
END 


IF ~~ Emily.PCraft 
SAY @287 
++ @288 + Emily.PBolts 
++ @289  + Emily.PArrows  // @289 
+~Global("X3milyEnhancedBow","GLOBAL",0)!PartyHasItemIdentified("BOW08")!PartyHasItemIdentified("BOW07")!PartyHasItemIdentified("XBOW06")!PartyHasItemIdentified("XBOW03")~+ @290 + Emily.PBow1  // @290 No bow is worthy. Fires only if bow hasn't been enhanced. 
+~Global("X3milyEnhancedBow","GLOBAL",0)OR(4)PartyHasItemIdentified("BOW08")PartyHasItemIdentified("BOW07")PartyHasItemIdentified("XBOW06")PartyHasItemIdentified("XBOW03")~+ @290 + Emily.PBow2 // One of the bows is worthy. This fires only once.
++  @291 EXIT // @291
END  

IF ~~ Emily.PBolts 
SAY @292 
++ @293 + Emily.PSBolts // @293
+~GlobalLT("X3milyFireMax","GLOBAL",12)~+ @294 + Emily.PFBolts // @294
+~GlobalGT("X3milyFireMax","GLOBAL",11)~+ @294 + Emily.PFArrowsOut // @294
+~GlobalLT("X3milyIceMax","GLOBAL",12)~+ @295 + Emily.PIBolts // @295
+~GlobalGT("X3milyIceMax","GLOBAL",11)~+ @295 + Emily.PFArrowsOut // @295
++  @291 EXIT // @291
END 

IF ~~ Emily.PArrows 
SAY @296
++ @293 + Emily.PSArrows // @293
+~GlobalLT("X3milyFireMax","GLOBAL",12)~+ @297 + Emily.PFArrows // @297
+~GlobalGT("X3milyFireMax","GLOBAL",11)~+ @297 + Emily.PFArrowsOut // @297
+~GlobalLT("X3milyIceMax","GLOBAL",12)~+ @298 + Emily.PIArrows // @298
+~GlobalGT("X3milyIceMax","GLOBAL",11)~+ @298 + Emily.PFArrowsOut // @298
++  @291 EXIT // @291
END 

IF ~~ Emily.PSArrows 
SAY @299
++  @300 + Emily.PSArrowsYes // @300
++ @301 + Emily.PCraft // @301
END 

IF ~~ Emily.PSBolts 
SAY @299
++ @300 + Emily.PSBoltsYes // @300
++ @301 + Emily.PCraft // @301
END 

IF ~~ Emily.PSArrowsYes
SAY @302
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",3) SetGlobalTimer("X3milyCraftTimer","GLOBAL",ONE_DAY)~ EXIT 
END 

IF ~~ Emily.PSBoltsYes
SAY @302
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",1) SetGlobalTimer("X3milyCraftTimer","GLOBAL",ONE_DAY)~ EXIT 
END 

IF ~~ Emily.PFArrowsOut 
SAY @303
++ @301 + Emily.PCraft // @301
++  @291 EXIT // @291
END 


IF ~~ Emily.PFArrows 
SAY @304  
= @305
++ @306 DO ~IncrementGlobal("X3milyFireMax","GLOBAL",1)~ + Emily.PFArrowsYes // @306
++ @301 + Emily.PCraft // @301
END 

IF ~~ Emily.PFBolts 
SAY @307  
= @305
++ @308 DO ~IncrementGlobal("X3milyFireMax","GLOBAL",1)~ + Emily.PFBoltsYes // @308
++ @301 + Emily.PCraft // @301
END 

IF ~~ Emily.PFBoltsYes
SAY @309
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",2) SetGlobalTimer("X3milyCraftTimer","GLOBAL",TWO_DAYS)~ EXIT 
END 

IF ~~ Emily.PFArrowsYes
SAY @309
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",4) SetGlobalTimer("X3milyCraftTimer","GLOBAL",TWO_DAYS)~ EXIT 
END 

IF ~~ Emily.PBow1 
SAY @310 
++ @301 + Emily.PCraft // @301
++ @311 EXIT // @311
END 

IF ~~ Emily.PIArrows 
SAY @312  
= @305
++ @313 DO ~IncrementGlobal("X3milyIceMax","GLOBAL",1)~ + Emily.PIArrowsYes // ~Yes, go ahead and make me a bundle of Ice arrows.~
++ @301 + Emily.PCraft // @301
END 

IF ~~ Emily.PIBolts 
SAY @314  
= @305
++ @315 DO ~IncrementGlobal("X3milyIceMax","GLOBAL",1)~ + Emily.PIBoltsYes // ~Yes, go ahead and make me a bundle of Ice bolts.~
++ @301 + Emily.PCraft // @301
END

IF ~~ Emily.PIBoltsYes
SAY @309
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",9) SetGlobalTimer("X3milyCraftTimer","GLOBAL",TWO_DAYS)~ EXIT 
END 

IF ~~ Emily.PIArrowsYes
SAY @309
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",10) SetGlobalTimer("X3milyCraftTimer","GLOBAL",TWO_DAYS)~ EXIT 
END  

IF ~~ Emily.PBow2 
SAY @316
+~PartyHasItemIdentified("BOW08")~+ @317 + Emily.PBowSure1 // ~This Eagle Shortbow (Proper names updated in TRA)
+~PartyHasItemIdentified("XBOW03")~+ @318 + Emily.PBowSure2 // ~This Heavy Crossbow of Accuracy.
+~PartyHasItemIdentified("XBOW06")~+ @319 + Emily.PBowSure3 // ~This Light Crossbow of Speed.
+~PartyHasItemIdentified("BOW07")~+ @320 + Emily.PBowSure4 // ~This Longbow of the Marksman.~
+~PartyHasItemIdentified("BDBOW03")~+ @321 + Emily.PBowSure5 // ~The Fleshripper.~ 
+~PartyHasItemIdentified("BDBOW04")~+ @322 + Emily.PBowSure6
++ @323  + Emily.PTalk // @323 
++ @311 EXIT // @311
END

IF ~~ Emily.PBowSure1 
SAY @324 // @324
++ @325 DO ~TakePartyItem("BOW08")DestroyItem("BOW08")~ + Emily.PBowProceed1  // Yes, I'm sure. 
++ @323  + Emily.PTalk // @323 
++ @311 EXIT // @311
END 

IF ~~ Emily.PBowSure2 
SAY @324 // @324
++ @325 DO ~TakePartyItem("XBOW03")DestroyItem("XBOW03")~ + Emily.PBowProceed2  // Yes, I'm sure. 
++ @323  + Emily.PTalk // @323 
++ @311 EXIT // @311
END 

IF ~~ Emily.PBowSure3 
SAY @324 // @324
++ @325 DO ~TakePartyItem("XBOW06")DestroyItem("XBOW06")~ + Emily.PBowProceed3  // Yes, I'm sure. 
++ @323  + Emily.PTalk // @323 
++ @311 EXIT // @311
END 

IF ~~ Emily.PBowSure4 
SAY @324 // @324
++ @325 DO ~TakePartyItem("BOW07")~ + Emily.PBowProceed4  // Yes, I'm sure. 
++ @323  + Emily.PTalk // @323 
++ @311 EXIT // @311
END 

IF ~~ Emily.PBowSure5 
SAY @326 // @324
++ @325 DO ~TakePartyItem("BDBOW03")~ + Emily.PBowProceed5  // Yes, I'm sure. 
++ @323  + Emily.PTalk // @323 
++ @311 EXIT // @311
END 

IF ~~ Emily.PBowSure6 
SAY @327 // @324
++ @325 DO ~TakePartyItem("BDBOW04")~ + Emily.PBowProceed6  // Yes, I'm sure. 
++ @323  + Emily.PTalk // @323 
++ @311 EXIT // @311
END 


IF ~~ Emily.PBowProceed1
SAY @328
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",5)SetGlobal("X3milyEnhancedBow","GLOBAL",1) SetGlobalTimer("X3milyCraftTimer","GLOBAL",THREE_DAYS)~ EXIT 
END 

IF ~~ Emily.PBowProceed2
SAY @328
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",6)SetGlobal("X3milyEnhancedBow","GLOBAL",1) SetGlobalTimer("X3milyCraftTimer","GLOBAL",THREE_DAYS)~ EXIT 
END 

IF ~~ Emily.PBowProceed3
SAY @328
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",7)SetGlobal("X3milyEnhancedBow","GLOBAL",1) SetGlobalTimer("X3milyCraftTimer","GLOBAL",THREE_DAYS)~ EXIT 
END 

IF ~~ Emily.PBowProceed4
SAY @328
IF ~~ DO ~DestroyItem("BOW07")SetGlobal("X3milyAtWork","GLOBAL",8)SetGlobal("X3milyEnhancedBow","GLOBAL",1) SetGlobalTimer("X3milyCraftTimer","GLOBAL",THREE_DAYS)~ EXIT 
END 

IF ~~ Emily.PBowProceed5
SAY @328
IF ~~ DO ~DestroyItem("BDBOW07")SetGlobal("X3milyAtWork","GLOBAL",11)SetGlobal("X3milyEnhancedBow","GLOBAL",1) SetGlobalTimer("X3milyCraftTimer","GLOBAL",THREE_DAYS)~ EXIT 
END 

IF ~~ Emily.PBowProceed6
SAY @328
IF ~~ DO ~DestroyItem("BDBOW04")SetGlobal("X3milyAtWork","GLOBAL",12)SetGlobal("X3milyEnhancedBow","GLOBAL",1) SetGlobalTimer("X3milyCraftTimer","GLOBAL",THREE_DAYS)~ EXIT 
END 

IF ~~ Emily.PCraftCheckN
SAY @329
IF ~~ EXIT 
END 

// Checks for Expired Timer. 
IF ~~ Emily.PCraftCheckY
SAY @330 
IF ~Global("X3milyAtWork","GLOBAL",1)~ + Emily.PCraftSBoltDone 
IF ~Global("X3milyAtWork","GLOBAL",2)~ + Emily.PCraftFBoltDone 
IF ~Global("X3milyAtWork","GLOBAL",3)~ + Emily.PCraftSArrowDone
IF ~Global("X3milyAtWork","GLOBAL",4)~ + Emily.PCraftFArrowDone
IF ~Global("X3milyAtWork","GLOBAL",5)~ + Emily.PCraftEagleDone
IF ~Global("X3milyAtWork","GLOBAL",6)~ + Emily.PCraftHeavyXDone
IF ~Global("X3milyAtWork","GLOBAL",7)~ + Emily.PCraftLightXDone
IF ~Global("X3milyAtWork","GLOBAL",8)~ + Emily.PCraftLongXDone
IF ~Global("X3milyAtWork","GLOBAL",9)~ + Emily.PCraftIBoltDone
IF ~Global("X3milyAtWork","GLOBAL",10)~ + Emily.PCraftIArrowDone
IF ~Global("X3milyAtWork","GLOBAL",11)~ + Emily.PCraftBDFleshBowDone
IF ~Global("X3milyAtWork","GLOBAL",12)~ + Emily.PCraftBDBansheeBowDone
END 

IF ~~ Emily.PCraftSBoltDone 
SAY  @331 
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("BOLT02",Player1,80,0,0)~ EXIT  
END 

IF ~~ Emily.PCraftFBoltDone 
SAY  @331 
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("BDBOLT01",Player1,80,0,0)~ EXIT  
END 

IF ~~ Emily.PCraftSArrowDone 
SAY @332
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("AROW02",Player1,80,0,0)~ EXIT  
END 

IF ~~ Emily.PCraftFArrowDone 
SAY @332
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("AROW08",Player1,80,0,0)~ EXIT  
END 

IF ~~  Emily.PCraftEagleDone
SAY @333
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("X3EQRLS",Player1,1,0,0)~ EXIT  
END 

IF ~~  Emily.PCraftHeavyXDone
SAY @333
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("X3EQRX",Player1,1,0,0)~ EXIT  
END 

IF ~~  Emily.PCraftLightXDone
SAY @333
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("X3EQRXL",Player1,1,0,0)~ EXIT  
END 

IF ~~  Emily.PCraftLongXDone
SAY @333
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("X3EQRL",Player1,1,0,0)~ EXIT  
END 

IF ~~ Emily.PCraftIBoltDone 
SAY  @331 
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("BDBOLT02",Player1,80,0,0)~ EXIT  
END 

IF ~~ Emily.PCraftIArrowDone 
SAY  @332 
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("AROW09",Player1,80,0,0)~ EXIT  
END 

IF ~~ Emily.PCraftBDFleshBowDone 
SAY @333
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("X3ESB1",Player1,1,0,0)~ EXIT  
END 

IF ~~ Emily.PCraftBDBansheeBowDone 
SAY @333
IF ~~ DO ~SetGlobal("X3milyAtWork","GLOBAL",0)GiveItemCreate("X3Bow04",Player1,1,0,0)~ EXIT  
END 

 
IF ~~ Emily.PTalk 
SAY  @334 
/*Options will  vary as the game goes on.*/ 
// Companion Thoughts 
+ ~NumInPartyAliveGT(2)~ + @335  + Emily.PCompanionThoughts // @335 
+ ~NumInPartyAliveLT(3)ReputationGT(Player1,12)~ + @336 + Em.Me1 // @336
+ ~NumInPartyAliveLT(3)ReputationLT(Player1,13)~ + @336 + Em.Me2 // @336
// Dialogue From Talk Expansions. These fire once. 
+~Global("X3milyTalkJacob","GLOBAL",0)GlobalGT("X3milyTalk","GLOBAL",2)~+ @337 DO ~SetGlobal("X3milyTalkJacob","GLOBAL",1)~ + Emily.PIDTalk1
+~Global("X3milyTalkJacob2","GLOBAL",0)GlobalGT("X32milyQuestSpawn","GLOBAL",3)~+ @338 + Emily.PIDTalk2
+~Global("X3milyFlirtTalk","GLOBAL",0)Global("X32milyRomanceActive","GLOBAL",1)~+ @339 DO ~SetGlobal("X3milyFlirtTalk","GLOBAL",1)~ + Emily.PIDTalk3
//Old P.I.D. Talks
+~Global("X3milyPTethyrTopic","GLOBAL",0)~+ @340 DO ~SetGlobal("X3milyPTethyrTopic","GLOBAL",1)~ + Emily.PTethyr // @340 For Kale, Gullykin. For Vienxay, Evermeet. 
+~RandomNum(3,1)~+ @341  + Emily.PArchery1 // @341 
+~RandomNum(3,2)~+ @341  + Emily.PArchery2
+~RandomNum(3,3)~+ @341  + Emily.PArchery3
+~Global("X3milyCraft","GLOBAL",1)Global("X3milyFletchTopic","GLOBAL",0)~+ @342 DO ~SetGlobal("X3milyFletchTopic","GLOBAL",1)~ + Emily.PFletching // @342 For Kale, replace with Sewing. For Vienxay, replace with wand crafting. 
END 

IF ~~ Emily.PCompanionThoughts 
SAY @343 
// BG1
+~InParty("Dynaheir")~+ @344 + Em.Dynaheir
+~InParty("Edwin")~+ @345 + Em.Edwin
+~InParty("Jaheira")~+ @346 + Em.Jaheira 
+~InParty("Khalid")~+ @347 + Em.Khalid 
+~InParty("Minsc")~+ @348 + Em.Minsc 
+~InParty("Safana")~+ @349 + Em.Safana 
+~InParty("Viconia")~+ @350 + Em.Viconia     
// EE 
+~InParty("Neera")~+ @351 + Em.Neera 
+~InParty("Rasaad")~+ @352 + Em.Rasaad 
+~InParty("Dorn")~+ @353 + Em.Dorn 
+~InParty("Baeloth")~+ @354 + Em.Baeloth 
// SoD Only 
+~InParty("Glint")~+ @355 + Em.Glint 
+~InParty("Corwin")~+ @356 + Em.Corwin 
+~InParty("mkhiin")~+ @357 + Em.MKhiin 
+~InParty("Voghlin")~+ @358 + Em.Voghlin
// CrossMod Choices 
+~InParty("X3Helga")~+ @359 + Em.Helga
+~InParty("X3Rec")~+ @360 + Em.Recorder
+~InParty("X3Vien")~+ @359 + Em.Vienxay 
+~InParty("X3Kale")~+ @361 + Em.Kale 
+~InParty("c0aura")~+ @362 + Em.Aura 
+~InParty("c0Drake")~+ @363 + Em.Drake 
+~InParty("C0Sirene")~+ @364 + Em.Sirene
+~InParty("L#1DVER")~ + @365 + Em.Verrsza
+~InParty("#Ishy")~ + @366 + Em.Ishy 
// Myself 
+~ReputationGT(Player1,12)~+ @367 + Em.Me1 
+~ReputationLT(Player1,13)~+ @367 + Em.Me2
++ @368 EXIT  
END 

IF ~~ Em.Dynaheir 
SAY @369
IF ~~ EXIT 
END 

IF ~~ Em.Edwin 
SAY @370
IF ~~ EXIT 
END 

IF ~~ Em.Minsc 
SAY @371
IF ~~ EXIT 
END 

IF ~~ Em.Khalid 
SAY @372  
IF ~~ EXIT 
END 

IF ~~ Em.Jaheira 
SAY @373
IF ~~ EXIT 
END 

IF ~~ Em.Neera
SAY @374
IF ~~ EXIT 
END 

IF ~~ Em.Dorn 
SAY @375
IF ~~ EXIT 
END 


IF ~~ Em.Safana 
SAY @376
IF ~~ EXIT 
END 

IF ~~ Em.Viconia 
SAY @377
IF ~~ EXIT 
END 

IF ~~ Em.Rasaad 
SAY @378
IF ~~ EXIT 
END 

IF ~~ Em.Baeloth 
SAY @379
IF ~~ EXIT 
END 

IF ~~ Em.Glint 
SAY @380
IF ~~ EXIT 
END 

IF ~~ Em.Corwin 
SAY @381
IF ~~ EXIT 
END 

IF ~~ Em.MKhiin 
SAY @382
IF ~~ EXIT 
END 

IF ~~ Em.Helga 
SAY @383
IF ~~ EXIT 
END 

IF ~~ Em.Kale 
SAY @384
IF ~~ EXIT 
END 

IF ~~ Em.Recorder 
SAY @385
IF ~~ EXIT 
END 

IF ~~ Em.Vienxay 
SAY @386
IF ~~ EXIT 
END 

IF ~~ Em.Voghlin 
SAY @387
IF ~~ EXIT 
END 

IF ~~ Em.Aura
SAY @388
IF ~~ EXIT 
END 

IF ~~ Em.Drake
SAY @389
IF ~~ EXIT 
END 

IF ~~ Em.Sirene
SAY @390
IF ~~ EXIT 
END 

IF ~~ Em.Verrsza 
SAY @391
IF ~~ EXIT 
END 

IF ~~ Em.Ishy 
SAY @392
IF ~~ EXIT 
END 

IF ~~ Em.Me1 
SAY @393
IF ~~ EXIT 
END 

IF ~~ Em.Me2 
SAY @394 
IF ~~ EXIT 
END 

IF ~~ Emily.PIDTalk1
SAY @395
= @396
= @397
++ @398 + Emily.PIDTalk1Flock 
++ @399 + Emily.PIDTalk1Hunters
++ @400 + Emily.PIDTalk1Entice  
END 

IF ~~ Emily.PIDTalk1Entice
SAY @401
= @402
++ @398 + Emily.PIDTalk1Flock 
++ @399 + Emily.PIDTalk1Hunters
END 

IF ~~ Emily.PIDTalk1Flock 
SAY @403
++ @404 + Emily.PIDTalk1Others
++ @323  + Emily.PTalk // @323 
++ @405 EXIT // @405
END 

IF ~~ Emily.PIDTalk1Hunters 
SAY @406
= @407
= @408
++ @323  + Emily.PTalk // @323 
++ @405 EXIT // @405
END 

IF ~~ Emily.PIDTalk1Others
SAY @409
= @410
= @411
++ @412 + Emily.PIDTalk1Secret
++ @413 + Emily.PIDTalk1Protective
++ @414 + Emily.PIDTalk1Power
END 

IF ~~ Emily.PIDTalk1Secret 
SAY @415
= @416
++ @323  + Emily.PTalk // @323 
++ @405 EXIT // @405
END 

IF ~~ Emily.PIDTalk1Protective 
SAY @417
++ @323  + Emily.PTalk // @323 
++ @405 EXIT // @405
END 

IF ~~ Emily.PIDTalk1Power 
SAY @418
++ @323  + Emily.PTalk // @323 
++ @405 EXIT // @405
END 

IF ~~ Emily.PIDTalk2 
SAY @419
IF ~!Dead("X32Jacob")Global("X32milyQuestSpawn","GLOBAL",4)~ + PID2.A 
IF ~Global("X32milyQuestSpawn","GLOBAL",5)~ + PID2.B 
IF ~Dead("X32Jacob")~ + PID2.C 
END 

IF ~~ PID2.A 
SAY @420
= @421
= @422
++ @423 + PID2.D 
++ @424 + PID2.E 
++ @425 + PID2.D 
END 

IF ~~ PID2.B 
SAY @426
++ @427 + PID2.G 
++ @428 + PID2.H
++ @425 + PID2.G 
END 

IF ~~ PID2.C 
SAY @429
++ @430 + PID2.I 
++ @431 + PID2.J 
++ @432 + PID2.F 
END 

IF ~~ PID2.D 
SAY @433
IF ~~ + PID2.F 
END 

IF ~~ PID2.E 
SAY @434 
IF ~~ + PID2.F 
END 

IF ~~ PID2.F 
SAY @435
++ @323  + Emily.PTalk // @323 
++ @405 EXIT // @405
END 

IF ~~ PID2.G
SAY @436
IF ~~ + PID2.F 
END 

IF ~~ PID2.H 
SAY @437
IF ~~ + PID2.F 
END 

IF ~~ PID2.I 
SAY @438
++ @323  + Emily.PTalk // @323 
++ @405 EXIT // @405
END 

IF ~~ PID2.J 
SAY @439
++ @323  + Emily.PTalk // @323 
++ @405 EXIT // @405
END 

IF ~~ Emily.PIDTalk3
SAY @440
++ @441 + PIDTalk3.A 
++ @442 + PIDTalk3.B 
++ @443 + PIDTalk3.O 
END 

IF ~~ PIDTalk3.A 
SAY @444
++ @442 + PIDTalk3.B 
++ @323  + Emily.PTalk // @323 
++ @405 EXIT // @405
END 

IF ~~ PIDTalk3.B 
SAY @445 
IF ~CheckStatGT(Player1,11,CHR)~ + PIDTalk3.MH // The horror of using CHA for looks, but oh well. 
IF ~CheckStatLT(Player1,12,CHR)~ + PIDTalk3.C 
END 

IF ~~ PIDTalk3.MH 
SAY @446
++ @323  + Emily.PTalk // @323 
++ @405 EXIT // @405
END 

IF ~~ PIDTalk3.C
SAY @447 
++ @323  + Emily.PTalk // @323 
++ @405 EXIT // @405
END 

IF ~~ PIDTalk3.O
SAY @448
++ @442 + PIDTalk3.B 
++ @323  + Emily.PTalk // @323 
++ @405 EXIT // @405
END 



IF ~~ Emily.PTethyr
SAY @449
= @450
++ @451 + Emily.PTWar // @451
++ @452 + Emily.PTHere // @452
++ @452 + Emily.PTQueen // @456
++ @323 + Emily.PTalk // @323 
++ @405 EXIT // @405
END 

IF ~~ Emily.PTWar 
SAY @453
= @454
= @455
++ @452 + Emily.PTHere // @452
++ @456 + Emily.PTQueen // @456
++ @323  + Emily.PTalk // @323 
++ @405 EXIT // @405
END 

IF ~~ Emily.PTHere 
SAY @457
++ @456 + Emily.PTQueen // @456
++ @451 + Emily.PTWar // @451
++ @323  + Emily.PTalk // @323 
++ @405 EXIT // @405
END 

IF ~~ Emily.PTQueen
SAY @458
= @459
++ @451 + Emily.PTWar // @451
++ @452 + Emily.PTHere // @452
++ @323  + Emily.PTalk // @323 
++ @405 EXIT // @405
END 

IF ~~ Emily.PFletching 
SAY @460
= @461
++ @462 + Emily.PFletchR1 // @462 
++ @463 + Emily.PFletchR2 // @463
++ @464 + Emily.PFletchR3 // @464
++ @323  + Emily.PTalk // @323 
+~Global("X3milyEnhancedBow","GLOBAL",0)!PartyHasItemIdentified("BOW08")!PartyHasItemIdentified("BOW07")!PartyHasItemIdentified("XBOW06")!PartyHasItemIdentified("XBOW03")~+ @271 + Emily.PBow1  // ~Could you upgrade a launcher for me? No bow qualifies. 
+~Global("X3milyEnhancedBow","GLOBAL",0)OR(4)PartyHasItemIdentified("BOW08")PartyHasItemIdentified("BOW07")PartyHasItemIdentified("XBOW06")PartyHasItemIdentified("XBOW03")~+ @271 + Emily.PBow2 // One of the bows is worthy. This fires only once.
++ @405 EXIT // @405
END 

IF ~~ Emily.PFletchR1 
SAY @465
++ @463 + Emily.PFletchR2 // @463
++ @464 + Emily.PFletchR3 // @464
++ @323  + Emily.PTalk // @323 
+~Global("X3milyEnhancedBow","GLOBAL",0)!PartyHasItemIdentified("BOW08")!PartyHasItemIdentified("BOW07")!PartyHasItemIdentified("XBOW06")!PartyHasItemIdentified("XBOW03")~+ @271 + Emily.PBow1  // ~Could you upgrade a launcher for me? No bow qualifies. 
+~Global("X3milyEnhancedBow","GLOBAL",0)OR(4)PartyHasItemIdentified("BOW08")PartyHasItemIdentified("BOW07")PartyHasItemIdentified("XBOW06")PartyHasItemIdentified("XBOW03")~+ @271 + Emily.PBow2 // One of the bows is worthy. This fires only once.
++ @405 EXIT // @405
END 

IF ~~ Emily.PFletchR2 
SAY @466
++ @462 + Emily.PFletchR1 // @462 
++ @464 + Emily.PFletchR3 // @464
++ @323  + Emily.PTalk // @323 
+~Global("X3milyEnhancedBow","GLOBAL",0)!PartyHasItemIdentified("BOW08")!PartyHasItemIdentified("BOW07")!PartyHasItemIdentified("XBOW06")!PartyHasItemIdentified("XBOW03")~+ @271 + Emily.PBow1  // ~Could you upgrade a launcher for me? No bow qualifies. 
+~Global("X3milyEnhancedBow","GLOBAL",0)OR(4)PartyHasItemIdentified("BOW08")PartyHasItemIdentified("BOW07")PartyHasItemIdentified("XBOW06")PartyHasItemIdentified("XBOW03")~+ @271 + Emily.PBow2 // One of the bows is worthy. This fires only once.
++ @405 EXIT // @405
END 

IF ~~ Emily.PFletchR3 
SAY @467
++ @462 + Emily.PFletchR1 // @462 
++ @463 + Emily.PFletchR2 // @463
++ @323  + Emily.PTalk // @323 
+~Global("X3milyEnhancedBow","GLOBAL",0)!PartyHasItemIdentified("BOW08")!PartyHasItemIdentified("BOW07")!PartyHasItemIdentified("XBOW06")!PartyHasItemIdentified("XBOW03")~+ @271 + Emily.PBow1  // ~Could you upgrade a launcher for me? No bow qualifies. 
+~Global("X3milyEnhancedBow","GLOBAL",0)OR(4)PartyHasItemIdentified("BOW08")PartyHasItemIdentified("BOW07")PartyHasItemIdentified("XBOW06")PartyHasItemIdentified("XBOW03")~+ @271 + Emily.PBow2 // One of the bows is worthy. This fires only once.
++ @405 EXIT // @405
END 

IF ~~ Emily.PArchery1
SAY @468
IF ~~ EXIT 
END

IF ~~ Emily.PArchery2
SAY @469
IF ~~ EXIT 
END

IF ~~ Emily.PArchery3
SAY @470
IF ~~ EXIT 
END

IF ~~ FixString
SAY @471
IF ~~ DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("X3EReset")~ EXIT 
END 
 
END
