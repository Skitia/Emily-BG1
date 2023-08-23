BEGIN X3Yusmin

CHAIN IF ~See("X3Isaac")!See("EDWIN")!GlobalGT("X3IQuest","GLOBAL",2)~ THEN X3Yusmin SeeIsaacFirstMet
@0
DO ~SetGlobal("X3YusminSawIsaac","GLOBAL",1)AddJournalEntry(@60003,QUEST)Enemy()~
EXIT 

CHAIN IF ~See("X3Isaac")See("EDWIN")!GlobalGT("X3IQuest","GLOBAL",2)~ THEN X3Yusmin SeeIsaacFirstMet
@65
DO ~SetGlobal("X3YusminSawIsaac","GLOBAL",1)AddJournalEntry(@60003,QUEST)Enemy()~
EXIT 


CHAIN IF ~See("X3Isaac")GlobalGT("X3IQuest","GLOBAL",2)~ THEN X3Yusmin SeeIsaacTalked
@1
DO ~Enemy()~
EXIT 

CHAIN IF ~!See("X3Isaac")IsValidForPartyDialogue("EDWIN")!GlobalGT("X3IQuest","GLOBAL",2)~ THEN X3Yusmin FirstMetEdwin
@66
== %EDWIN_JOINED% @67
EXTERN X3Yusmin FirstMet 


CHAIN IF ~!See("X3Isaac")!GlobalGT("X3IQuest","GLOBAL",2)~ THEN X3Yusmin FirstMet
@2
END 
++ @4 + Bluff
++ @5 + Bribe
++ @6 + Honest
++ @7 + Hostile 



CHAIN X3Yusmin Bluff 
@8
END 
++ @12 + Bluff-Planar
++ @13 + Bluff-Red
++ @14 + Bluff-Amn
+~GlobalLT("Chapter","GLOBAL",5)~+ @15 + Bluff-Flaming
+~!GlobalLT("Chapter","GLOBAL",5)~+ @15 + Bluff-Flaming5

CHAIN X3Yusmin Bluff-Planar
@16
EXTERN X3Yusmin Need-Help

CHAIN X3Yusmin Bluff-Red
@17
EXTERN X3Yusmin Liar

CHAIN X3Yusmin Bluff-Amn
@18
EXTERN X3Yusmin Need-Help

CHAIN X3Yusmin Bluff-Flaming
@19
EXTERN X3Yusmin Liar

CHAIN X3Yusmin Bluff-Flaming5
@20
EXTERN X3Yusmin Need-Help

CHAIN X3Yusmin Liar 
@21 
DO ~Enemy()~
EXIT

CHAIN X3Yusmin Bribe 
@9
END 
++ @4 + Bluff
++ @6 + Honest
++ @7 + Hostile 

CHAIN X3Yusmin Honest
@10 
END 
++ @34 + Isaac
++ @35 + NoConcern
++ @36 + Join
++ @37 + Gift

CHAIN X3Yusmin Gift 
@42
END 
++ @51 + Suspect
++ @52 + Suspect
++ @53 + Weapon
++ @54 + Scroll

CHAIN X3Yusmin Suspect
@62
EXTERN X3Yusmin Liar

CHAIN X3Yusmin Weapon
@63
EXTERN X3Yusmin Reveal

CHAIN X3Yusmin Scroll
@64
EXTERN X3Yusmin Reveal

CHAIN X3Yusmin Join 
@41
END 
++ @47 + Trusts
++ @48 + NoTrust
++ @49 + Humble
++ @50 + Questions

CHAIN X3Yusmin Trusts 
@58 
EXTERN X3Yusmin Reveal 

CHAIN X3Yusmin NoTrust
@59 
EXTERN X3Yusmin Liar

CHAIN X3Yusmin Humble
@60
EXTERN X3Yusmin Liar

CHAIN X3Yusmin Questions
@61
EXTERN X3Yusmin Threat

CHAIN X3Yusmin Isaac 
@40
END 
++ @43 + Surprised
++ @44 + Overheard
++ @45 + NoConcern
++ @46 + Bounty

CHAIN X3Yusmin Surprised 
@55
EXTERN X3Yusmin Reveal 

CHAIN X3Yusmin Overheard
@56
EXTERN X3Yusmin Reveal 

CHAIN X3Yusmin Bounty
@57
EXTERN X3Yusmin Liar

CHAIN X3Yusmin NoConcern
@38 
EXTERN X3Yusmin Threat

CHAIN X3Yusmin Threat 
@39
DO ~Enemy()~
EXIT

CHAIN X3Yusmin Hostile 
@11 
DO ~AddJournalEntry(@60003,QUEST)Enemy()~
EXIT 

CHAIN X3Yusmin Need-Help 
@22 
END 
++ @23 + NotTrusted
++ @24 + Careful
++ @25 + YouAreRight
++ @26 + NotTrusted

CHAIN X3Yusmin NotTrusted 
@27 
EXTERN X3Yusmin Liar

CHAIN X3Yusmin Careful 
@28
EXTERN X3Yusmin Reveal 

CHAIN X3Yusmin YouAreRight 
@29 
EXTERN X3Yusmin Reveal 

CHAIN X3Yusmin Reveal 
@31
= @32
= @33 
DO ~SetGlobal("X3IQuestTask1Pass","GLOBAL",1)AddJournalEntry(@60004,QUEST)~
EXIT 


CHAIN IF ~!See("X3Isaac")GlobalGT("X3IQuest","GLOBAL",2)~ THEN X3Yusmin Convinced
@3 
EXIT 

