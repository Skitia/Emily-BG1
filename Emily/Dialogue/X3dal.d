BEGIN X3dal 

CHAIN IF ~OR(2)IsValidForPartyDialog("X3mily")IsValidForPartyDialogue("X3Isaac")
Global("X3DalTalk","GLOBAL",0)~ THEN X3dal Talk1
@0 // ~Excuse me, did you want something?~
END 
+~GlobalGT("X3EHK3Talk","GLOBAL",1)~+ @1 EXTERN X3dal Talk1.1 // ~I'm looking for an elf named Adalgisa. Since you're hooded, a bit shady, I want to question you.~
+~GlobalGT("X3EHK3Talk","GLOBAL",1)~+ @2 EXTERN X3dal Talk1.1 // ~You seem you might know a thing or two. Some planar hunters sent me to find a plane-touched elf.~
+~GlobalGT("X3EHK3Talk","GLOBAL",1)~+ @3 EXTERN X3dal Talk1.2 // ~You look like a elven archer.~
+~GlobalLT("X3EHK3Talk","GLOBAL",2)IsValidForPartyDialog("X3mily")~+ @58 EXTERN X3dal Talk1.Alina // ~We're looking for an elf named Alina. Do you know her?~
+~GlobalLT("X3EHK3Talk","GLOBAL",2)~+ @59 EXTERN X3dal Talk1.Work // ~Not unless you know where to find work around here.~
++ @4 EXIT // ~You seem the wrong person, sorry.~ 

CHAIN X3dal Talk1.2 
@5 // ~You are quite perceptive! Was it the bow?
END 
++ @6 EXTERN X3dal Talk1.1 // ~No need for the sarcasm, I'm just trying to see if you are who I'm looking for.~
++ @1 EXTERN X3dal Talk1.1 // ~I'm looking for an elf. Since you're hooded, a bit shady, I want to question you.~
++ @2 EXTERN X3dal Talk1.1 // ~You seem you might know a thing or two. Some planar hunters sent me to find a plane-touched elf.~

CHAIN X3dal Talk1.1 
@7 // ~I don't know why you think I know things, but let's talk somewhere quieter, so I can hear you better. Follow me upstairs.~
DO ~SetGlobal("X3DalTalk","GLOBAL",1)EscapeAreaMove("%bg1_eet_symbol%1307",739,270,NW)~ 
END 
IF  ~IsValidForPartyDialogue("X3Isaac")~ EXTERN X3IsaacJ UpstairsBranch
IF  ~!IsValidForPartyDialogue("X3Isaac")~ EXIT 

CHAIN X3IsaacJ UpstairsBranch 
@94 // ~Once we're upstairs, I'll use my outsider detecting gem. That will get her talking real fast, before we get the blood my fellows need.~
END 
++ @95 + UpstairsWhy
++ @102 EXIT 

CHAIN X3IsaacJ UpstairsWhy 
@96
END 
++ @99 + UpstairsAnd
++ @97 + UpstairsIf
++ @100 EXIT 

CHAIN X3IsaacJ UpstairsAnd 
@98
EXTERN X3IsaacJ UpstairsExit

CHAIN X3IsaacJ UpstairsIf
@156
EXTERN X3IsaacJ UpstairsExit

CHAIN X3IsaacJ UpstairsExit
@101
EXIT 


CHAIN X3dal Talk1.Alina 
@60 // ~A Name I haven't heard in some time. I would tell you more, but I've a problem needing to be taken care of first. Follow me upstairs.~
DO ~SetGlobal("X3DalTalk","GLOBAL",1)EscapeAreaMove("%bg1_eet_symbol%1307",739,270,NW) ~ EXIT 

CHAIN X3dal Talk1.Work 
@61 // ~Adventurers? I might have something for you. Follow me upstairs.~
DO ~SetGlobal("X3DalTalk","GLOBAL",1)EscapeAreaMove("%bg1_eet_symbol%1307",739,270,NW) ~ EXIT 


//OR(2)IsValidForPartyDialog("X3mily")IsValidForPartyDialog("X3Isaac")
CHAIN IF ~Global("X3DalTalk","GLOBAL",1)GlobalLT("X3EHK3Talk","GLOBAL",2)~ THEN X3dal Talk2A 
@62 // ~Thank you for following me. In truth, I could use the help.
== X3Dal @63 // ~My name is Adalgisa. I've been stalked by this cult. They call themselves Planar Hunters, believing I am planetouched, a creature like a tiefling, or the like. Deluded in mind, they are.~
END 
IF ~IsValidForPartyDialog("X3Isaac")~ EXTERN X3IsaacJ Talk2AIsaacThere
IF ~!IsValidForPartyDialog("X3Isaac")~ EXTERN X3dal Talk2AIsaacFree

CHAIN X3IsaacJ Talk2AIsaacThere 
@103
DO ~SetGlobal("X3DalTalk","GLOBAL",2)AddJournalEntry(@100048,QUEST)~ EXIT

CHAIN X3IsaacJ Talk2IsaacThere 
@104
END
IF ~IsValidForPartyDialog("X3mily")~ DO ~SetGlobal("X3DalTalk","GLOBAL",2)AddJournalEntry(@100048,QUEST)~ EXIT
IF ~!IsValidForPartyDialog("X3mily")~ DO ~SetGlobal("X3DalTalk","GLOBAL",2)AddJournalEntry(@100057,QUEST)~ EXIT

CHAIN X3dal Talk2AIsaacFree
@64 // ~They're here in the city, and I can't leave without them following me and attacking.~
== X3Dal @65 // ~I wish I could say this could be done without violence, but I would be lying to you.~
END
+~Dead("X3EHK3")~+ @77 EXTERN X3Dal Talk3.Defeat // ~Fear not, they are already dead.~
++ @66 EXTERN X3Dal Talk.2AReward // ~And what would my reward be?~
++ @67 EXTERN X3Dal Talk.2ADone // ~Consider it done. Where can we find them?~
++ @68 EXTERN X3Dal Talk.2ANo // ~I'm not interested. Find your own lackey.~
++ @69 EXTERN X3Dal Talk.2AMoth // ~Will you tell us about Alina afterwards?~

CHAIN X3Dal Talk.2AReward 
@70 // ~I am no longer a woman of wealth. I could only give my gratitude.~
END
++ @67 EXTERN X3Dal Talk.2ADone // ~Consider it done. Where can we find them?~
++ @68 EXTERN X3Dal Talk.2ANo // ~I'm not interested. Find your own lackey.~
++ @69 EXTERN X3Dal Talk.2AMoth // ~Will you tell us about Alina afterwards?~

CHAIN X3Dal Talk.2ADone 
@71 // ~They haunt this very district of Baldur's Gate. I fear they are getting uncomfortably close to my location, but I should be safe here. Good luck.~
DO ~SetGlobal("X3DalTalk","GLOBAL",4)AddJournalEntry(@100054,QUEST)~ EXIT 

CHAIN X3Dal Talk.2ANo 
@72 // ~I am disappointed, but it is not the first time strangers have refused me. We have nothing more to talk about, though if you do take them down, I will be here.~
DO ~SetGlobal("X3DalTalk","GLOBAL",4)AddJournalEntry(@100054,QUEST)~ EXIT 

CHAIN X3Dal Talk.2AMoth 
@73 // ~I will.~
END 
++ @67 EXTERN X3Dal Talk.2ADone // ~Consider it done. Where can we find them?~
++ @68 EXTERN X3Dal Talk.2ANo // ~I'm not interested. Find your own lackey.~

CHAIN IF ~Global("X3DalTalk","GLOBAL",4)~ THEN X3dal Talk4
@74 // ~You return. What news do you bring?~
END 
+~Dead("X3EHK3")~+ @33 EXTERN X3dal Talk3.Defeat // ~They've been defeated.~
++ @75 EXIT // ~Nothing, no news.~
+~!Dead("X3EHK3")~+ @76 EXTERN X3dal Talk2.Battle // ~They told me everything. You are going to die, elf.~
+~IsValidForPartyDialogue("X3mily")!Dead("X3EHK3")PartyHasItem("X3EGem")~+ @20 DO ~SetGlobal("X3DalTalk","GLOBAL",2)ActionOverride(Player1,DestroyItem("X3EGem"))AddJournalEntry(@100048,QUEST)~ EXIT // ~Let's see what you really are. (Use the Gem)~
+~!IsValidForPartyDialogue("X3mily")!Dead("X3EHK3")PartyHasItem("X3EGem")~+ @20 DO ~SetGlobal("X3DalTalk","GLOBAL",2)ActionOverride(Player1,DestroyItem("X3EGem"))AddJournalEntry(@100057,QUEST)~ EXIT // ~Let's see what you really are. (Use the Gem)~

//OR(2)IsValidForPartyDialog("X3mily")InParty("X3Isaac")
CHAIN IF ~Global("X3DalTalk","GLOBAL",1)GlobalGT("X3EHK3Talk","GLOBAL",1)~ THEN X3dal Talk2 
@8 // ~So let me guess, you meet with those odd Planar Hunters, and they sent you on a goose chase for the wrong elf?~
END 
IF ~IsValidForPartyDialog("X3Isaac")~ EXTERN X3IsaacJ Talk2IsaacThere
++ @9 EXTERN X3dal Talk2.Listen // ~How do you know about these Planar Hunters?~
+~IsValidForPartyDialog("X3mily")PartyHasItem("X3EGem")~+ @10 DO ~SetGlobal("X3DalTalk","GLOBAL",2)ActionOverride(Player1,DestroyItem("X3EGem"))AddJournalEntry(@100048,QUEST)~ EXIT // ~I've means to prove it, which I will use. (Use the gem)~
+~!IsValidForPartyDialog("X3mily")PartyHasItem("X3EGem")~+ @10 DO ~SetGlobal("X3DalTalk","GLOBAL",2)ActionOverride(Player1,DestroyItem("X3EGem"))AddJournalEntry(@100057,QUEST)~ EXIT // ~I've means to prove it, which I will use. (Use the gem)~
++ @11 EXTERN X3dal Talk2.Sure // ~What makes you so sure it's not you?~
++ @12 EXTERN X3milyJ Talk2.BattleWarn // ~I'm certain it's you, and I'm not wasting any more time with this game. Prepare yourself.~

CHAIN X3milyJ Talk2.BattleWarn 
/*Emily will try to direct the PC to not kill her and hear her out.*/
@13 // ~Wait, <CHARNAME>. Something feels very, very wrong about this. I feel taking her life would be a big mistake. We know nothing of her.~
END 
++ @13 EXTERN X3dal Talk2.Listen // ~You're right, let's hear her out.~
+~PartyHasItem("X3EGem")~+ @14 DO ~SetGlobal("X3DalTalk","GLOBAL",2)ActionOverride(Player1,DestroyItem("X3EGem"))AddJournalEntry(@100048,QUEST)~  EXIT // ~Fine, let's use the gem first.`
++ @15 EXTERN X3dal Talk2.Spare // ~What will you give me to spare you, elf?~
++ @16 EXTERN x3dal Talk2.Battle // ~And my gut says otherwise. Time to die, elf.~

CHAIN X3dal Talk2.Battle
@17 // ~You make a big mistake working for the Planar Hunters. No matter, an arrow is ready for your heart.~
DO ~SetGlobal("X3DalTalk","GLOBAL",4)Enemy()~
EXIT 

CHAIN X3dal Talk2.Spare 
@18 // ~I don't bend to greed. You can be sensible and hear me out, or you can try to kill me.~
END 
++ @19 EXTERN X3dal Talk2.Listen // ~I'll hear out your side, then. 
+~IsValidForPartyDialog("X3mily")PartyHasItem("X3EGem")~+ @20 DO ~SetGlobal("X3DalTalk","GLOBAL",2)ActionOverride(Player1,DestroyItem("X3EGem"))AddJournalEntry(@100048,QUEST)~ EXIT // ~Let's see what you really are. (Use the Gem)~
+~!IsValidForPartyDialog("X3mily")PartyHasItem("X3EGem")~+ @20 DO ~SetGlobal("X3DalTalk","GLOBAL",2)ActionOverride(Player1,DestroyItem("X3EGem"))AddJournalEntry(@100057,QUEST)~ EXIT // ~Let's see what you really are. (Use the Gem)~
++ @21 EXTERN X3dal Talk2.Battle  // ~Too bad, it's time to die elf..~

CHAIN X3dal Talk2.Sure 
@22 // ~What evidence do you have? You should be more careful before pointing fingers.~
END 
++ @19 EXTERN X3dal Talk2.Listen // ~I'll hear out your side, then. 
+~IsValidForPartyDialog("X3mily")PartyHasItem("X3EGem")~+ @20 DO ~SetGlobal("X3DalTalk","GLOBAL",2)ActionOverride(Player1,DestroyItem("X3EGem"))AddJournalEntry(@100048,QUEST)~ EXIT // ~Let's see what you really are. (Use the Gem)~ /*Check the gem hasn't been used, if it's not in inventory, it shouldn't be selectable.*/
+~!IsValidForPartyDialog("X3mily")PartyHasItem("X3EGem")~+ @20 DO ~SetGlobal("X3DalTalk","GLOBAL",2)ActionOverride(Player1,DestroyItem("X3EGem"))AddJournalEntry(@100057,QUEST)~ EXIT // ~Let's see what you really are. (Use the Gem)~ /*Check the gem hasn't been used, if it's not in inventory, it shouldn't be selectable.*/
++ @12 EXTERN X3milyJ Talk2.BattleWarn // ~I'm certain it's you, and I'm not wasting any more time with this game. Prepare yourself.~

CHAIN IF ~Global("X3DalTalk","GLOBAL",2)~ THEN X3dal Talk.Gem 
@23 // ~I underestimated the planar hunters magic. There is no lying my way out of this one, then.~
== X3milyJ IF ~IsValidForPartyDialogue("X3mily")~ THEN @56 // ~<CHARNAME>, this doesn't make sense. I am also glowing. That gem may be flawed. Let's not trust what just happened.~
== X3dal @57 // ~Not entirely. For it is true. I am who they know as Adalgisa, an Aasimar. But I implore you to hear me out before you go to your blades.~
END 
IF ~!IsValidForPartyDialogue("X3mily")IsValidForPartyDialogue("X3Isaac")~ EXTERN X3IsaacJ NoHearingOut
IF ~IsValidForPartyDialogue("X3mily")IsValidForPartyDialogue("X3Isaac")~ EXTERN X3IsaacJ HearingOut
++ @19 EXTERN X3dal Talk2.Listen // ~I'll hear out your side, then. 
++ @21 EXTERN X3dal Talk2.Battle  // ~Too bad, it's time to die, elf.~
++ @22 EXTERN X3dal Talk2.Listen // ~Stop with the games, and just talk.~

CHAIN X3IsaacJ NoHearingOut 
@119
== X3dal @120
= @121
DO ~SetGlobal("X3DalTalk","GLOBAL",4)Enemy()~
EXIT 

CHAIN X3IsaacJ HearingOut 
@119 
== X3milyJ @122
== X3IsaacJ @123
== X3milyJ @124
== X3IsaacJ @125
== X3milyJ @126
END 
++ @127 EXTERN X3milyJ HearingOut2
++ @134 EXTERN X3milyJ HearingOut2
++ @135 EXTERN X3milyJ HearingOut2

CHAIN X3milyJ HearingOut2
@128
== X3IsaacJ @129
== X3dal @130
== X3IsaacJ @131
== X3dal @132
== X3IsaacJ @133
END 
++ @136 EXTERN X3milyJ DecideToKill
++ @137 EXTERN X3IsaacJ DecideToSpare

CHAIN X3milyJ DecideToKill
@147
== X3dal @148 
DO ~SetGlobal("X3DalTalk","GLOBAL",4)Enemy()~
EXIT 

CHAIN X3IsaacJ DecideToSpare 
@138
END 
++ @139 + IsaacResists
++ @140 + IsaacAgrees

CHAIN X3ISaacJ IsaacResists 
@149
DO ~SetGlobal("X3DalTalk","GLOBAL",3)LeaveParty()Enemy()~
== X3milyJ @150
EXIT 

CHAIN X3IsaacJ IsaacAgrees 
@141
= @142
== X3milyJ @143
== X3IsaacJ @144
== X3dal @145
== X3milyJ @146
== X3dal @151 // ~I know Alina. The journal I gave you...she gave me. She has many entries in it. You should read it.~
== X3IsaacJ @152 
DO ~SetGlobal("X3IQuest","GLOBAL",7)AddJournalEntry(@60014,QUEST)~
== X3milyJ @153
EXTERN X3dal SorryMustGo


CHAIN X3dal Talk2.Listen 
@24 // ~Your planar hunters are a bunch of humans who long to be as powerful as the plane touched. They asked for my blood, I bet? Why not a head, or a hand, like most bounty hunters?~
== X3dal @25 // ~Because that blood is useful to them. They use it for experiments, to try to enhance themselves. Most don't stop them when they watch them butcher and torture the devil blooded and demon blooded.~
== X3dal @26 // ~In fact, the planar hunters are often sanctioned. It's brought me against the law, stopping them at times, running, spying, defeating them.~
== X3dal @27 // ~I can't offer you no gold for switching sides, only that it is the right thing to do against rather horrible excuses for people.~
== X3milyJ IF ~IsValidForPartyDialogue("X3mily")~ THEN @28 // ~<CHARNAME>, I feel she's telling the truth. Let's work with her.~
END 
+~InPartyAllowDead("X3Isaac")~+ @105 EXTERN X3dal Talk2.IsaacInParty
+~!InPartyAllowDead("X3Isaac")~+ @29 EXTERN X3dal Talk2.Okay // ~Very well, we'll help you with these hunters.~ 
++ @21 EXTERN X3dal Talk2.Battle  // ~Too bad, it's time to die, elf.~
+~!InPartyAllowDead("X3Isaac")IsValidForPartyDialogue("X3mily")~+ @30 EXTERN X3dal Talk2.Okay // ~If Emily believes you, then so will I.~

CHAIN X3dal Talk2.IsaacInParty 
@106
END 
++ @107 + Talk2.WhatWillYouDo 
++ @109 EXTERN X3dal Talk2.Battle 
++ @110 + Talk2.KillCompanion

CHAIN X3dal Talk2.WhatWillYouDo 
@108
END 
++ @111 + LieAboutIt

CHAIN X3dal LieAboutIt 
@112
= @113
= @114
END 
IF ~IsValidForPartyDialogue("X3mily")~ EXTERN X3milyJ Talk3.MotherVariation2
IF ~!IsValidForPartyDialogue("X3mily")~ DO ~SetGlobal("X3IQuest","GLOBAL",6)SetGlobal("X3IsaacLiedTo","GLOBAL",1)SetGlobal("X3DalTalk","GLOBAL",5)AddexperienceParty(12000)GiveItem("X3EBlood",Player1)GiveItemCreate("X3EJorn",Player1,0,0,0)~ EXIT 



CHAIN X3dal Talk2.KillCompanion
@115
END 
++ @116 + Talk2.WhatWillYouDo 
++ @117 DO ~SetGlobal("X3IsaacAdalBetrayal","GLOBAL",1)~ + Talk2.Okay
++ @118 + Talk2.Battle


CHAIN X3dal Talk2.Okay 
@31 // ~Return to me here when you have dealt with them. Thank you and...sorry for my earlier demeanor. I am weary of mercenaries, assassins, and hunters.~
DO ~SetGlobal("X3DalTalk","GLOBAL",3)~ EXIT 

CHAIN IF ~Global("X3DalTalk","GLOBAL",3)~ THEN X3dal Talk3 
@32 // ~Have you succeeded?~
END 
+~Dead("X3EHK3")~+ @33 EXTERN X3dal Talk3.Defeat // ~They've been defeated.~
++ @34 EXTERN X3dal Talk3.Delay // ~Not yet.~
+~!Dead("X3EHK3")~+ @35 DO ~SetGlobal("X3IsaacAdalBetrayal","GLOBAL",0)~ EXTERN X3dal Talk2.Battle // ~I've changed my mind. You're going to die, elf.~

CHAIN X3dal Talk3.Delay 
@36 // ~Please do not delay. The sooner  you deal with them the sooner I can make my exit. I have overstayed if they are hunting me here.~
EXIT 

CHAIN X3dal Talk3.Defeat 
@37 // ~You've done a good thing. You've saved many from a terrible fate. I'll make my exit before they realize more of their number are missing from the city.~
DO ~SetGlobal("X3DalTalk","GLOBAL",5)~
== X3dal @38 // ~I have nothing to give but my gratitude, and a prayer that you will be successful in your endeavors.~
END 
+~IsValidForPartyDialogue("X3mily")~+ @39 DO ~AddexperienceParty(8000)~ EXTERN X3milyJ Talk3.Mother // ~Perhaps you can help us with something else. We are seeking my companion's mother, with little luck so far.~
++ @40 DO ~AddexperienceParty(8000)~ EXTERN X3dal Talk3.Safe // ~Be safe.~
++ @41 DO ~AddexperienceParty(8000)~ EXTERN X3dal Talk3.Nothing // ~Dissapointing. Perhaps I should not have helped you.~

CHAIN X3dal Talk3.Nothing 
@42 // ~Then for whatever reason you did, you have my thanks.~
END
IF ~IsValidForPartyDialogue("X3mily")~ EXTERN X3milyJ WaitBefore
IF ~!IsValidForPartyDialogue("X3mily")~ EXTERN X3dal WaitLonger

CHAIN X3milyJ WaitBefore
@43 // ~Wait! Before you go, I want to ask something.~ 
EXTERN X3milyJ Talk3.Mother 

CHAIN X3dal Talk3.Safe 
@44 // ~Safety is a luxury I do not have a lot of these days.~
END
IF ~IsValidForPartyDialogue("X3mily")~ EXTERN X3milyJ WaitBefore
IF ~!IsValidForPartyDialogue("X3mily")~ EXTERN X3dal WaitLonger

CHAIN X3dal WaitLonger 
@155
DO ~AddJournalEntry(@100058,QUEST_DONE)~
EXIT 

CHAIN X3milyJ Talk3.Mother 
@45 // ~It's more of a longshot than I thought, but I'm looking for my mother, an elf named Alina.~
== X3dal @46 // ~That...is a name I have not heard for a long time.~
== X3milyJ @47 // ~Do you know where she lives in the city?~
== X3dal @48 // ~I am...I am so sorry child. We were very close, but I fear she is no longer here anymore.~
== X3milyJ @49 // ~Oh...so all of this travel. For nothing.~
== X3dal @50 // ~I have something. Something that you should have. A journal of hers.~
== X3dal @51 // ~When you read it, you will understand everything. And maybe one day you will forgive her.~
== X3milyJ @52 // ~Forgive her for what?~
== X3dal @53 // ~Read it, and you will understand. Forgive me I must leave, before sorrow overtakes me.~
== X3milyJ @54 // ~Wait! I've so many more questions.~
== X3dal @55 // ~~I'm sorry, but I must go. Goodbye.~~
DO ~AddexperienceParty(4000)SetGlobal("X3milySixthTalk","GLOBAL",1)GiveItemCreate("X3EJorn","X3mily",0,0,0)AddJournalEntry(@100052,QUEST_DONE)EscapeArea()~
EXIT /* Emily is given her mother's journal. It should be added as an irremovable item in her inventory IF Possible.*/

CHAIN IF ~OR(2)!IsValidForPartyDialogue("X3Isaac")Global("X3IsaacLiedTo","GLOBAL",2)Global("X3DalTalk","GLOBAL",5)~ THEN X3dal Concluded 
@78
END
+~IsValidForPartyDialogue("X3mily")~+ @39 EXTERN X3milyJ Talk3.MotherVariation // ~Perhaps you can help us with something else. We are seeking my companion's mother, with little luck so far.~
++ @79 EXIT 

CHAIN IF ~IsValidForPartyDialogue("X3Isaac")Global("X3IsaacLiedTo","GLOBAL",1)~ THEN X3dal ConcludedIsaacThere 
@78
DO ~SetGlobal("X3IsaacLiedTo","GLOBAL",2)~
== X3IsaacJ @80
END // Isaac will disapprove.
++ @81 EXTERN X3IsaacJ GotWhatNeeded
++ @87 EXTERN X3IsaacJ WasBest
++ @89 EXTERN X3IsaacJ TryNow

CHAIN X3IsaacJ GotWhatNeeded 
@82
EXTERN X3dal InSelfDefense 

CHAIN X3IsaacJ WasBest 
@88 
EXTERN X3dal InSelfDefense 

CHAIN X3IsaacJ TryNow
@90
EXTERN X3dal TryShotThen

CHAIN X3dal InSelfDefense 
@83
== X3IsaacJ @84
EXTERN X3dal TryShotThen

CHAIN X3dal TryShotThen 
@85
== X3IsaacJ @86
END 
+~IsValidForPartyDialogue("X3mily")~+ @39 EXTERN X3milyJ Talk3.MotherVariation // ~Perhaps you can help us with something else. We are seeking my companion's mother, with little luck so far.~
++ @79 EXIT 

CHAIN X3milyJ Talk3.MotherVariation 
@45
== X3milyJ @47 // ~Do you know where she lives in the city?~
== X3dal @48 // ~I am...I am so sorry child. We were very close, but I fear she is no longer here anymore.~
== X3milyJ @49 // ~Oh...so all of this travel. For nothing.~
== X3dal @91 // ~Maybe not. We have a shared friend named Rodwyn. I was to meet him in the Feldepost inn. Perhaps you could speak to him instead.~
== X3milyJ @92 // ~That is amazingly helpful. Thank you. Thank you so much!~
== X3dal @93 // ~I wish you luck. More than you know.~
== X3milyJ @54 // ~Wait! I've so many more questions.~
== X3dal @55 // ~I'm sorry, but I must go. Goodbye.~
DO ~AddexperienceParty(12000)AddJournalEntry(@10018,QUEST)SetGlobal("X3milyBookTalk","GLOBAL",8)EscapeArea()~ //This will skip all the book talks.
EXIT 

CHAIN X3milyJ Talk3.MotherVariation2 
@45
== X3milyJ @47 // ~Do you know where she lives in the city?~
== X3dal @48 // ~I am...I am so sorry child. We were very close, but I fear she is no longer here anymore.~
== X3milyJ @49 // ~Oh...so all of this travel. For nothing.~
== X3dal @91 // ~Maybe not. We have a shared friend named Rodwyn. I was to meet him in the Feldepost inn. Perhaps you could speak to him instead.~
== X3milyJ @92 // ~That is amazingly helpful. Thank you. Thank you so much!~
== X3dal @93 // ~I wish you luck. More than you know.~
== X3milyJ @54 // ~Wait! I've so many more questions.~
EXTERN X3dal SorryMustGo 

CHAIN X3dal SorryMustGo
@154 // ~I'm sorry, but I must go. Goodbye.~
DO ~AddexperienceParty(12000)SetGlobal("X3milySixthTalk","GLOBAL",1)GiveItem("X3EBlood",Player1)GiveItemCreate("X3EJorn","X3mily",0,0,0)AddJournalEntry(@100052,QUEST_DONE)EscapeArea()~ 
EXIT 
